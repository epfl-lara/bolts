; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700522 () Bool)

(assert start!700522)

(declare-fun b!7223987 () Bool)

(assert (=> b!7223987 true))

(declare-fun b!7223988 () Bool)

(assert (=> b!7223988 true))

(assert (=> b!7223988 true))

(declare-fun res!2931708 () Bool)

(declare-fun e!4330569 () Bool)

(assert (=> start!700522 (=> (not res!2931708) (not e!4330569))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37072 0))(
  ( (C!37073 (val!28484 Int)) )
))
(declare-datatypes ((Regex!18399 0))(
  ( (ElementMatch!18399 (c!1340227 C!37072)) (Concat!27244 (regOne!37310 Regex!18399) (regTwo!37310 Regex!18399)) (EmptyExpr!18399) (Star!18399 (reg!18728 Regex!18399)) (EmptyLang!18399) (Union!18399 (regOne!37311 Regex!18399) (regTwo!37311 Regex!18399)) )
))
(declare-datatypes ((List!69915 0))(
  ( (Nil!69791) (Cons!69791 (h!76239 Regex!18399) (t!383944 List!69915)) )
))
(declare-datatypes ((Context!14702 0))(
  ( (Context!14703 (exprs!7851 List!69915)) )
))
(declare-fun z!3517 () (InoxSet Context!14702))

(declare-fun c!10544 () Context!14702)

(assert (=> start!700522 (= res!2931708 (= z!3517 (store ((as const (Array Context!14702 Bool)) false) c!10544 true)))))

(assert (=> start!700522 e!4330569))

(declare-fun condSetEmpty!53522 () Bool)

(assert (=> start!700522 (= condSetEmpty!53522 (= z!3517 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53522 () Bool)

(assert (=> start!700522 setRes!53522))

(declare-fun e!4330568 () Bool)

(declare-fun inv!89019 (Context!14702) Bool)

(assert (=> start!700522 (and (inv!89019 c!10544) e!4330568)))

(declare-fun e!4330566 () Bool)

(assert (=> start!700522 e!4330566))

(declare-fun b!7223984 () Bool)

(declare-fun res!2931709 () Bool)

(assert (=> b!7223984 (=> (not res!2931709) (not e!4330569))))

(declare-fun isEmpty!40293 (List!69915) Bool)

(assert (=> b!7223984 (= res!2931709 (not (isEmpty!40293 (exprs!7851 c!10544))))))

(declare-fun b!7223985 () Bool)

(declare-fun e!4330571 () Bool)

(assert (=> b!7223985 (= e!4330569 e!4330571)))

(declare-fun res!2931707 () Bool)

(assert (=> b!7223985 (=> (not res!2931707) (not e!4330571))))

(declare-fun lt!2571752 () C!37072)

(declare-fun derivationStepZipperUp!2361 (Context!14702 C!37072) (InoxSet Context!14702))

(assert (=> b!7223985 (= res!2931707 (= (derivationStepZipperUp!2361 c!10544 lt!2571752) ((as const (Array Context!14702 Bool)) false)))))

(declare-fun lt!2571750 () (InoxSet Context!14702))

(declare-fun derivationStepZipper!3256 ((InoxSet Context!14702) C!37072) (InoxSet Context!14702))

(assert (=> b!7223985 (= lt!2571750 (derivationStepZipper!3256 z!3517 lt!2571752))))

(declare-datatypes ((List!69916 0))(
  ( (Nil!69792) (Cons!69792 (h!76240 C!37072) (t!383945 List!69916)) )
))
(declare-fun s!7961 () List!69916)

(declare-fun head!14767 (List!69916) C!37072)

(assert (=> b!7223985 (= lt!2571752 (head!14767 s!7961))))

(declare-fun setIsEmpty!53522 () Bool)

(assert (=> setIsEmpty!53522 setRes!53522))

(declare-fun b!7223986 () Bool)

(declare-fun res!2931703 () Bool)

(assert (=> b!7223986 (=> (not res!2931703) (not e!4330569))))

(declare-fun head!14768 (List!69915) Regex!18399)

(assert (=> b!7223986 (= res!2931703 (= (head!14768 (exprs!7851 c!10544)) EmptyLang!18399))))

(declare-fun e!4330565 () Bool)

(assert (=> b!7223987 (= e!4330571 e!4330565)))

(declare-fun res!2931705 () Bool)

(assert (=> b!7223987 (=> (not res!2931705) (not e!4330565))))

(declare-fun lt!2571751 () Context!14702)

(declare-fun lambda!438317 () Int)

(declare-fun flatMap!2694 ((InoxSet Context!14702) Int) (InoxSet Context!14702))

(assert (=> b!7223987 (= res!2931705 (select (flatMap!2694 z!3517 lambda!438317) lt!2571751))))

(declare-datatypes ((List!69917 0))(
  ( (Nil!69793) (Cons!69793 (h!76241 Context!14702) (t!383946 List!69917)) )
))
(declare-fun head!14769 (List!69917) Context!14702)

(declare-fun toList!11334 ((InoxSet Context!14702)) List!69917)

(assert (=> b!7223987 (= lt!2571751 (head!14769 (toList!11334 lt!2571750)))))

(declare-fun lambda!438318 () Int)

(declare-fun exists!4102 ((InoxSet Context!14702) Int) Bool)

(assert (=> b!7223988 (= e!4330565 (not (not (exists!4102 z!3517 lambda!438318))))))

(declare-fun empty!3071 () Context!14702)

(declare-fun flatMapPost!88 ((InoxSet Context!14702) Int Context!14702) Context!14702)

(assert (=> b!7223988 (= (flatMapPost!88 z!3517 lambda!438317 lt!2571751) empty!3071)))

(assert (=> b!7223988 true))

(declare-fun e!4330570 () Bool)

(assert (=> b!7223988 (and (inv!89019 empty!3071) e!4330570)))

(declare-fun b!7223989 () Bool)

(declare-fun tp!2030662 () Bool)

(assert (=> b!7223989 (= e!4330568 tp!2030662)))

(declare-fun b!7223990 () Bool)

(declare-fun res!2931706 () Bool)

(assert (=> b!7223990 (=> (not res!2931706) (not e!4330565))))

(assert (=> b!7223990 (= res!2931706 (select lt!2571750 lt!2571751))))

(declare-fun b!7223991 () Bool)

(declare-fun res!2931710 () Bool)

(assert (=> b!7223991 (=> (not res!2931710) (not e!4330569))))

(declare-fun isEmpty!40294 (List!69916) Bool)

(assert (=> b!7223991 (= res!2931710 (not (isEmpty!40294 s!7961)))))

(declare-fun b!7223992 () Bool)

(declare-fun res!2931704 () Bool)

(assert (=> b!7223992 (=> (not res!2931704) (not e!4330571))))

(assert (=> b!7223992 (= res!2931704 (not (= lt!2571750 ((as const (Array Context!14702 Bool)) false))))))

(declare-fun setElem!53522 () Context!14702)

(declare-fun setNonEmpty!53522 () Bool)

(declare-fun e!4330567 () Bool)

(declare-fun tp!2030661 () Bool)

(assert (=> setNonEmpty!53522 (= setRes!53522 (and tp!2030661 (inv!89019 setElem!53522) e!4330567))))

(declare-fun setRest!53522 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53522 (= z!3517 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53522 true) setRest!53522))))

(declare-fun b!7223993 () Bool)

(declare-fun tp!2030658 () Bool)

(assert (=> b!7223993 (= e!4330570 tp!2030658)))

(declare-fun b!7223994 () Bool)

(declare-fun tp!2030659 () Bool)

(assert (=> b!7223994 (= e!4330567 tp!2030659)))

(declare-fun b!7223995 () Bool)

(declare-fun tp_is_empty!46355 () Bool)

(declare-fun tp!2030660 () Bool)

(assert (=> b!7223995 (= e!4330566 (and tp_is_empty!46355 tp!2030660))))

(assert (= (and start!700522 res!2931708) b!7223984))

(assert (= (and b!7223984 res!2931709) b!7223986))

(assert (= (and b!7223986 res!2931703) b!7223991))

(assert (= (and b!7223991 res!2931710) b!7223985))

(assert (= (and b!7223985 res!2931707) b!7223992))

(assert (= (and b!7223992 res!2931704) b!7223987))

(assert (= (and b!7223987 res!2931705) b!7223990))

(assert (= (and b!7223990 res!2931706) b!7223988))

(assert (= b!7223988 b!7223993))

(assert (= (and start!700522 condSetEmpty!53522) setIsEmpty!53522))

(assert (= (and start!700522 (not condSetEmpty!53522)) setNonEmpty!53522))

(assert (= setNonEmpty!53522 b!7223994))

(assert (= start!700522 b!7223989))

(get-info :version)

(assert (= (and start!700522 ((_ is Cons!69792) s!7961)) b!7223995))

(declare-fun m!7894426 () Bool)

(assert (=> b!7223986 m!7894426))

(declare-fun m!7894428 () Bool)

(assert (=> start!700522 m!7894428))

(declare-fun m!7894430 () Bool)

(assert (=> start!700522 m!7894430))

(declare-fun m!7894432 () Bool)

(assert (=> b!7223990 m!7894432))

(declare-fun m!7894434 () Bool)

(assert (=> setNonEmpty!53522 m!7894434))

(declare-fun m!7894436 () Bool)

(assert (=> b!7223984 m!7894436))

(declare-fun m!7894438 () Bool)

(assert (=> b!7223985 m!7894438))

(declare-fun m!7894440 () Bool)

(assert (=> b!7223985 m!7894440))

(declare-fun m!7894442 () Bool)

(assert (=> b!7223985 m!7894442))

(declare-fun m!7894444 () Bool)

(assert (=> b!7223987 m!7894444))

(declare-fun m!7894446 () Bool)

(assert (=> b!7223987 m!7894446))

(declare-fun m!7894448 () Bool)

(assert (=> b!7223987 m!7894448))

(assert (=> b!7223987 m!7894448))

(declare-fun m!7894450 () Bool)

(assert (=> b!7223987 m!7894450))

(declare-fun m!7894452 () Bool)

(assert (=> b!7223988 m!7894452))

(declare-fun m!7894454 () Bool)

(assert (=> b!7223988 m!7894454))

(declare-fun m!7894456 () Bool)

(assert (=> b!7223988 m!7894456))

(declare-fun m!7894458 () Bool)

(assert (=> b!7223991 m!7894458))

(check-sat (not setNonEmpty!53522) (not start!700522) (not b!7223994) (not b!7223986) (not b!7223987) tp_is_empty!46355 (not b!7223984) (not b!7223991) (not b!7223993) (not b!7223989) (not b!7223988) (not b!7223985) (not b!7223995))
(check-sat)
(get-model)

(declare-fun d!2243872 () Bool)

(declare-fun choose!55452 ((InoxSet Context!14702) Int) (InoxSet Context!14702))

(assert (=> d!2243872 (= (flatMap!2694 z!3517 lambda!438317) (choose!55452 z!3517 lambda!438317))))

(declare-fun bs!1901615 () Bool)

(assert (= bs!1901615 d!2243872))

(declare-fun m!7894460 () Bool)

(assert (=> bs!1901615 m!7894460))

(assert (=> b!7223987 d!2243872))

(declare-fun d!2243876 () Bool)

(assert (=> d!2243876 (= (head!14769 (toList!11334 lt!2571750)) (h!76241 (toList!11334 lt!2571750)))))

(assert (=> b!7223987 d!2243876))

(declare-fun d!2243878 () Bool)

(declare-fun e!4330583 () Bool)

(assert (=> d!2243878 e!4330583))

(declare-fun res!2931716 () Bool)

(assert (=> d!2243878 (=> (not res!2931716) (not e!4330583))))

(declare-fun lt!2571755 () List!69917)

(declare-fun noDuplicate!2912 (List!69917) Bool)

(assert (=> d!2243878 (= res!2931716 (noDuplicate!2912 lt!2571755))))

(declare-fun choose!55453 ((InoxSet Context!14702)) List!69917)

(assert (=> d!2243878 (= lt!2571755 (choose!55453 lt!2571750))))

(assert (=> d!2243878 (= (toList!11334 lt!2571750) lt!2571755)))

(declare-fun b!7224019 () Bool)

(declare-fun content!14341 (List!69917) (InoxSet Context!14702))

(assert (=> b!7224019 (= e!4330583 (= (content!14341 lt!2571755) lt!2571750))))

(assert (= (and d!2243878 res!2931716) b!7224019))

(declare-fun m!7894468 () Bool)

(assert (=> d!2243878 m!7894468))

(declare-fun m!7894470 () Bool)

(assert (=> d!2243878 m!7894470))

(declare-fun m!7894472 () Bool)

(assert (=> b!7224019 m!7894472))

(assert (=> b!7223987 d!2243878))

(declare-fun d!2243884 () Bool)

(declare-fun lt!2571758 () Bool)

(declare-fun exists!4104 (List!69917 Int) Bool)

(assert (=> d!2243884 (= lt!2571758 (exists!4104 (toList!11334 z!3517) lambda!438318))))

(declare-fun choose!55454 ((InoxSet Context!14702) Int) Bool)

(assert (=> d!2243884 (= lt!2571758 (choose!55454 z!3517 lambda!438318))))

(assert (=> d!2243884 (= (exists!4102 z!3517 lambda!438318) lt!2571758)))

(declare-fun bs!1901621 () Bool)

(assert (= bs!1901621 d!2243884))

(declare-fun m!7894480 () Bool)

(assert (=> bs!1901621 m!7894480))

(assert (=> bs!1901621 m!7894480))

(declare-fun m!7894482 () Bool)

(assert (=> bs!1901621 m!7894482))

(declare-fun m!7894484 () Bool)

(assert (=> bs!1901621 m!7894484))

(assert (=> b!7223988 d!2243884))

(declare-fun bs!1901629 () Bool)

(declare-fun d!2243894 () Bool)

(assert (= bs!1901629 (and d!2243894 b!7223988)))

(declare-fun lambda!438332 () Int)

(assert (=> bs!1901629 (not (= lambda!438332 lambda!438318))))

(assert (=> d!2243894 true))

(assert (=> d!2243894 true))

(declare-fun order!28745 () Int)

(declare-fun order!28743 () Int)

(declare-fun dynLambda!28422 (Int Int) Int)

(declare-fun dynLambda!28423 (Int Int) Int)

(assert (=> d!2243894 (< (dynLambda!28422 order!28743 lambda!438317) (dynLambda!28423 order!28745 lambda!438332))))

(assert (=> d!2243894 (= (select (flatMap!2694 z!3517 lambda!438317) lt!2571751) (exists!4102 z!3517 lambda!438332))))

(declare-fun lt!2571767 () Context!14702)

(declare-fun choose!55455 ((InoxSet Context!14702) Int Context!14702) Context!14702)

(assert (=> d!2243894 (= lt!2571767 (choose!55455 z!3517 lambda!438317 lt!2571751))))

(assert (=> d!2243894 (= (flatMapPost!88 z!3517 lambda!438317 lt!2571751) lt!2571767)))

(declare-fun bs!1901630 () Bool)

(assert (= bs!1901630 d!2243894))

(assert (=> bs!1901630 m!7894444))

(assert (=> bs!1901630 m!7894446))

(declare-fun m!7894506 () Bool)

(assert (=> bs!1901630 m!7894506))

(declare-fun m!7894508 () Bool)

(assert (=> bs!1901630 m!7894508))

(assert (=> b!7223988 d!2243894))

(declare-fun d!2243908 () Bool)

(declare-fun lambda!438335 () Int)

(declare-fun forall!17221 (List!69915 Int) Bool)

(assert (=> d!2243908 (= (inv!89019 empty!3071) (forall!17221 (exprs!7851 empty!3071) lambda!438335))))

(declare-fun bs!1901631 () Bool)

(assert (= bs!1901631 d!2243908))

(declare-fun m!7894512 () Bool)

(assert (=> bs!1901631 m!7894512))

(assert (=> b!7223988 d!2243908))

(declare-fun bs!1901632 () Bool)

(declare-fun d!2243910 () Bool)

(assert (= bs!1901632 (and d!2243910 d!2243908)))

(declare-fun lambda!438336 () Int)

(assert (=> bs!1901632 (= lambda!438336 lambda!438335)))

(assert (=> d!2243910 (= (inv!89019 c!10544) (forall!17221 (exprs!7851 c!10544) lambda!438336))))

(declare-fun bs!1901633 () Bool)

(assert (= bs!1901633 d!2243910))

(declare-fun m!7894514 () Bool)

(assert (=> bs!1901633 m!7894514))

(assert (=> start!700522 d!2243910))

(declare-fun bs!1901634 () Bool)

(declare-fun d!2243912 () Bool)

(assert (= bs!1901634 (and d!2243912 d!2243908)))

(declare-fun lambda!438337 () Int)

(assert (=> bs!1901634 (= lambda!438337 lambda!438335)))

(declare-fun bs!1901635 () Bool)

(assert (= bs!1901635 (and d!2243912 d!2243910)))

(assert (=> bs!1901635 (= lambda!438337 lambda!438336)))

(assert (=> d!2243912 (= (inv!89019 setElem!53522) (forall!17221 (exprs!7851 setElem!53522) lambda!438337))))

(declare-fun bs!1901636 () Bool)

(assert (= bs!1901636 d!2243912))

(declare-fun m!7894516 () Bool)

(assert (=> bs!1901636 m!7894516))

(assert (=> setNonEmpty!53522 d!2243912))

(declare-fun d!2243914 () Bool)

(assert (=> d!2243914 (= (head!14768 (exprs!7851 c!10544)) (h!76239 (exprs!7851 c!10544)))))

(assert (=> b!7223986 d!2243914))

(declare-fun d!2243916 () Bool)

(assert (=> d!2243916 (= (isEmpty!40294 s!7961) ((_ is Nil!69792) s!7961))))

(assert (=> b!7223991 d!2243916))

(declare-fun d!2243918 () Bool)

(assert (=> d!2243918 (= (isEmpty!40293 (exprs!7851 c!10544)) ((_ is Nil!69791) (exprs!7851 c!10544)))))

(assert (=> b!7223984 d!2243918))

(declare-fun bm!657434 () Bool)

(declare-fun call!657439 () (InoxSet Context!14702))

(declare-fun derivationStepZipperDown!2533 (Regex!18399 Context!14702 C!37072) (InoxSet Context!14702))

(assert (=> bm!657434 (= call!657439 (derivationStepZipperDown!2533 (h!76239 (exprs!7851 c!10544)) (Context!14703 (t!383944 (exprs!7851 c!10544))) lt!2571752))))

(declare-fun d!2243920 () Bool)

(declare-fun c!1340241 () Bool)

(declare-fun e!4330604 () Bool)

(assert (=> d!2243920 (= c!1340241 e!4330604)))

(declare-fun res!2931722 () Bool)

(assert (=> d!2243920 (=> (not res!2931722) (not e!4330604))))

(assert (=> d!2243920 (= res!2931722 ((_ is Cons!69791) (exprs!7851 c!10544)))))

(declare-fun e!4330606 () (InoxSet Context!14702))

(assert (=> d!2243920 (= (derivationStepZipperUp!2361 c!10544 lt!2571752) e!4330606)))

(declare-fun b!7224056 () Bool)

(declare-fun e!4330605 () (InoxSet Context!14702))

(assert (=> b!7224056 (= e!4330605 call!657439)))

(declare-fun b!7224057 () Bool)

(assert (=> b!7224057 (= e!4330606 ((_ map or) call!657439 (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 c!10544))) lt!2571752)))))

(declare-fun b!7224058 () Bool)

(declare-fun nullable!7806 (Regex!18399) Bool)

(assert (=> b!7224058 (= e!4330604 (nullable!7806 (h!76239 (exprs!7851 c!10544))))))

(declare-fun b!7224059 () Bool)

(assert (=> b!7224059 (= e!4330606 e!4330605)))

(declare-fun c!1340240 () Bool)

(assert (=> b!7224059 (= c!1340240 ((_ is Cons!69791) (exprs!7851 c!10544)))))

(declare-fun b!7224060 () Bool)

(assert (=> b!7224060 (= e!4330605 ((as const (Array Context!14702 Bool)) false))))

(assert (= (and d!2243920 res!2931722) b!7224058))

(assert (= (and d!2243920 c!1340241) b!7224057))

(assert (= (and d!2243920 (not c!1340241)) b!7224059))

(assert (= (and b!7224059 c!1340240) b!7224056))

(assert (= (and b!7224059 (not c!1340240)) b!7224060))

(assert (= (or b!7224057 b!7224056) bm!657434))

(declare-fun m!7894518 () Bool)

(assert (=> bm!657434 m!7894518))

(declare-fun m!7894520 () Bool)

(assert (=> b!7224057 m!7894520))

(declare-fun m!7894522 () Bool)

(assert (=> b!7224058 m!7894522))

(assert (=> b!7223985 d!2243920))

(declare-fun bs!1901637 () Bool)

(declare-fun d!2243922 () Bool)

(assert (= bs!1901637 (and d!2243922 b!7223987)))

(declare-fun lambda!438340 () Int)

(assert (=> bs!1901637 (= lambda!438340 lambda!438317)))

(assert (=> d!2243922 true))

(assert (=> d!2243922 (= (derivationStepZipper!3256 z!3517 lt!2571752) (flatMap!2694 z!3517 lambda!438340))))

(declare-fun bs!1901638 () Bool)

(assert (= bs!1901638 d!2243922))

(declare-fun m!7894524 () Bool)

(assert (=> bs!1901638 m!7894524))

(assert (=> b!7223985 d!2243922))

(declare-fun d!2243924 () Bool)

(assert (=> d!2243924 (= (head!14767 s!7961) (h!76240 s!7961))))

(assert (=> b!7223985 d!2243924))

(declare-fun condSetEmpty!53528 () Bool)

(assert (=> setNonEmpty!53522 (= condSetEmpty!53528 (= setRest!53522 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53528 () Bool)

(assert (=> setNonEmpty!53522 (= tp!2030661 setRes!53528)))

(declare-fun setIsEmpty!53528 () Bool)

(assert (=> setIsEmpty!53528 setRes!53528))

(declare-fun e!4330609 () Bool)

(declare-fun setElem!53528 () Context!14702)

(declare-fun tp!2030686 () Bool)

(declare-fun setNonEmpty!53528 () Bool)

(assert (=> setNonEmpty!53528 (= setRes!53528 (and tp!2030686 (inv!89019 setElem!53528) e!4330609))))

(declare-fun setRest!53528 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53528 (= setRest!53522 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53528 true) setRest!53528))))

(declare-fun b!7224065 () Bool)

(declare-fun tp!2030687 () Bool)

(assert (=> b!7224065 (= e!4330609 tp!2030687)))

(assert (= (and setNonEmpty!53522 condSetEmpty!53528) setIsEmpty!53528))

(assert (= (and setNonEmpty!53522 (not condSetEmpty!53528)) setNonEmpty!53528))

(assert (= setNonEmpty!53528 b!7224065))

(declare-fun m!7894526 () Bool)

(assert (=> setNonEmpty!53528 m!7894526))

(declare-fun b!7224070 () Bool)

(declare-fun e!4330612 () Bool)

(declare-fun tp!2030692 () Bool)

(declare-fun tp!2030693 () Bool)

(assert (=> b!7224070 (= e!4330612 (and tp!2030692 tp!2030693))))

(assert (=> b!7223994 (= tp!2030659 e!4330612)))

(assert (= (and b!7223994 ((_ is Cons!69791) (exprs!7851 setElem!53522))) b!7224070))

(declare-fun b!7224075 () Bool)

(declare-fun e!4330615 () Bool)

(declare-fun tp!2030696 () Bool)

(assert (=> b!7224075 (= e!4330615 (and tp_is_empty!46355 tp!2030696))))

(assert (=> b!7223995 (= tp!2030660 e!4330615)))

(assert (= (and b!7223995 ((_ is Cons!69792) (t!383945 s!7961))) b!7224075))

(declare-fun b!7224076 () Bool)

(declare-fun e!4330616 () Bool)

(declare-fun tp!2030697 () Bool)

(declare-fun tp!2030698 () Bool)

(assert (=> b!7224076 (= e!4330616 (and tp!2030697 tp!2030698))))

(assert (=> b!7223993 (= tp!2030658 e!4330616)))

(assert (= (and b!7223993 ((_ is Cons!69791) (exprs!7851 empty!3071))) b!7224076))

(declare-fun b!7224077 () Bool)

(declare-fun e!4330617 () Bool)

(declare-fun tp!2030699 () Bool)

(declare-fun tp!2030700 () Bool)

(assert (=> b!7224077 (= e!4330617 (and tp!2030699 tp!2030700))))

(assert (=> b!7223989 (= tp!2030662 e!4330617)))

(assert (= (and b!7223989 ((_ is Cons!69791) (exprs!7851 c!10544))) b!7224077))

(check-sat (not b!7224070) (not d!2243912) (not b!7224077) (not b!7224065) (not bm!657434) (not setNonEmpty!53528) (not d!2243872) (not d!2243894) (not d!2243908) (not d!2243910) (not b!7224019) (not d!2243922) (not b!7224075) (not b!7224057) (not b!7224058) (not d!2243878) (not b!7224076) tp_is_empty!46355 (not d!2243884))
(check-sat)
(get-model)

(declare-fun d!2243966 () Bool)

(declare-fun nullableFct!3059 (Regex!18399) Bool)

(assert (=> d!2243966 (= (nullable!7806 (h!76239 (exprs!7851 c!10544))) (nullableFct!3059 (h!76239 (exprs!7851 c!10544))))))

(declare-fun bs!1901656 () Bool)

(assert (= bs!1901656 d!2243966))

(declare-fun m!7894602 () Bool)

(assert (=> bs!1901656 m!7894602))

(assert (=> b!7224058 d!2243966))

(declare-fun d!2243968 () Bool)

(declare-fun res!2931760 () Bool)

(declare-fun e!4330689 () Bool)

(assert (=> d!2243968 (=> res!2931760 e!4330689)))

(assert (=> d!2243968 (= res!2931760 ((_ is Nil!69791) (exprs!7851 empty!3071)))))

(assert (=> d!2243968 (= (forall!17221 (exprs!7851 empty!3071) lambda!438335) e!4330689)))

(declare-fun b!7224189 () Bool)

(declare-fun e!4330690 () Bool)

(assert (=> b!7224189 (= e!4330689 e!4330690)))

(declare-fun res!2931761 () Bool)

(assert (=> b!7224189 (=> (not res!2931761) (not e!4330690))))

(declare-fun dynLambda!28425 (Int Regex!18399) Bool)

(assert (=> b!7224189 (= res!2931761 (dynLambda!28425 lambda!438335 (h!76239 (exprs!7851 empty!3071))))))

(declare-fun b!7224190 () Bool)

(assert (=> b!7224190 (= e!4330690 (forall!17221 (t!383944 (exprs!7851 empty!3071)) lambda!438335))))

(assert (= (and d!2243968 (not res!2931760)) b!7224189))

(assert (= (and b!7224189 res!2931761) b!7224190))

(declare-fun b_lambda!276523 () Bool)

(assert (=> (not b_lambda!276523) (not b!7224189)))

(declare-fun m!7894604 () Bool)

(assert (=> b!7224189 m!7894604))

(declare-fun m!7894606 () Bool)

(assert (=> b!7224190 m!7894606))

(assert (=> d!2243908 d!2243968))

(declare-fun bm!657454 () Bool)

(declare-fun call!657459 () (InoxSet Context!14702))

(assert (=> bm!657454 (= call!657459 (derivationStepZipperDown!2533 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) lt!2571752))))

(declare-fun d!2243970 () Bool)

(declare-fun c!1340265 () Bool)

(declare-fun e!4330691 () Bool)

(assert (=> d!2243970 (= c!1340265 e!4330691)))

(declare-fun res!2931762 () Bool)

(assert (=> d!2243970 (=> (not res!2931762) (not e!4330691))))

(assert (=> d!2243970 (= res!2931762 ((_ is Cons!69791) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))

(declare-fun e!4330693 () (InoxSet Context!14702))

(assert (=> d!2243970 (= (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 c!10544))) lt!2571752) e!4330693)))

(declare-fun b!7224191 () Bool)

(declare-fun e!4330692 () (InoxSet Context!14702))

(assert (=> b!7224191 (= e!4330692 call!657459)))

(declare-fun b!7224192 () Bool)

(assert (=> b!7224192 (= e!4330693 ((_ map or) call!657459 (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) lt!2571752)))))

(declare-fun b!7224193 () Bool)

(assert (=> b!7224193 (= e!4330691 (nullable!7806 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun b!7224194 () Bool)

(assert (=> b!7224194 (= e!4330693 e!4330692)))

(declare-fun c!1340264 () Bool)

(assert (=> b!7224194 (= c!1340264 ((_ is Cons!69791) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))

(declare-fun b!7224195 () Bool)

(assert (=> b!7224195 (= e!4330692 ((as const (Array Context!14702 Bool)) false))))

(assert (= (and d!2243970 res!2931762) b!7224193))

(assert (= (and d!2243970 c!1340265) b!7224192))

(assert (= (and d!2243970 (not c!1340265)) b!7224194))

(assert (= (and b!7224194 c!1340264) b!7224191))

(assert (= (and b!7224194 (not c!1340264)) b!7224195))

(assert (= (or b!7224192 b!7224191) bm!657454))

(declare-fun m!7894608 () Bool)

(assert (=> bm!657454 m!7894608))

(declare-fun m!7894610 () Bool)

(assert (=> b!7224192 m!7894610))

(declare-fun m!7894612 () Bool)

(assert (=> b!7224193 m!7894612))

(assert (=> b!7224057 d!2243970))

(declare-fun bs!1901657 () Bool)

(declare-fun d!2243972 () Bool)

(assert (= bs!1901657 (and d!2243972 b!7223988)))

(declare-fun lambda!438350 () Int)

(assert (=> bs!1901657 (not (= lambda!438350 lambda!438318))))

(declare-fun bs!1901658 () Bool)

(assert (= bs!1901658 (and d!2243972 d!2243894)))

(assert (=> bs!1901658 (not (= lambda!438350 lambda!438332))))

(assert (=> d!2243972 true))

(assert (=> d!2243972 (< (dynLambda!28423 order!28745 lambda!438318) (dynLambda!28423 order!28745 lambda!438350))))

(declare-fun forall!17223 (List!69917 Int) Bool)

(assert (=> d!2243972 (= (exists!4104 (toList!11334 z!3517) lambda!438318) (not (forall!17223 (toList!11334 z!3517) lambda!438350)))))

(declare-fun bs!1901659 () Bool)

(assert (= bs!1901659 d!2243972))

(assert (=> bs!1901659 m!7894480))

(declare-fun m!7894614 () Bool)

(assert (=> bs!1901659 m!7894614))

(assert (=> d!2243884 d!2243972))

(declare-fun d!2243974 () Bool)

(declare-fun e!4330694 () Bool)

(assert (=> d!2243974 e!4330694))

(declare-fun res!2931763 () Bool)

(assert (=> d!2243974 (=> (not res!2931763) (not e!4330694))))

(declare-fun lt!2571773 () List!69917)

(assert (=> d!2243974 (= res!2931763 (noDuplicate!2912 lt!2571773))))

(assert (=> d!2243974 (= lt!2571773 (choose!55453 z!3517))))

(assert (=> d!2243974 (= (toList!11334 z!3517) lt!2571773)))

(declare-fun b!7224198 () Bool)

(assert (=> b!7224198 (= e!4330694 (= (content!14341 lt!2571773) z!3517))))

(assert (= (and d!2243974 res!2931763) b!7224198))

(declare-fun m!7894616 () Bool)

(assert (=> d!2243974 m!7894616))

(declare-fun m!7894618 () Bool)

(assert (=> d!2243974 m!7894618))

(declare-fun m!7894620 () Bool)

(assert (=> b!7224198 m!7894620))

(assert (=> d!2243884 d!2243974))

(declare-fun d!2243976 () Bool)

(declare-fun res!2931766 () Bool)

(assert (=> d!2243976 (= res!2931766 (exists!4104 (toList!11334 z!3517) lambda!438318))))

(assert (=> d!2243976 true))

(assert (=> d!2243976 (= (choose!55454 z!3517 lambda!438318) res!2931766)))

(declare-fun bs!1901660 () Bool)

(assert (= bs!1901660 d!2243976))

(assert (=> bs!1901660 m!7894480))

(assert (=> bs!1901660 m!7894480))

(assert (=> bs!1901660 m!7894482))

(assert (=> d!2243884 d!2243976))

(declare-fun d!2243978 () Bool)

(assert (=> d!2243978 (= (flatMap!2694 z!3517 lambda!438340) (choose!55452 z!3517 lambda!438340))))

(declare-fun bs!1901661 () Bool)

(assert (= bs!1901661 d!2243978))

(declare-fun m!7894622 () Bool)

(assert (=> bs!1901661 m!7894622))

(assert (=> d!2243922 d!2243978))

(declare-fun bs!1901662 () Bool)

(declare-fun d!2243980 () Bool)

(assert (= bs!1901662 (and d!2243980 d!2243908)))

(declare-fun lambda!438351 () Int)

(assert (=> bs!1901662 (= lambda!438351 lambda!438335)))

(declare-fun bs!1901663 () Bool)

(assert (= bs!1901663 (and d!2243980 d!2243910)))

(assert (=> bs!1901663 (= lambda!438351 lambda!438336)))

(declare-fun bs!1901664 () Bool)

(assert (= bs!1901664 (and d!2243980 d!2243912)))

(assert (=> bs!1901664 (= lambda!438351 lambda!438337)))

(assert (=> d!2243980 (= (inv!89019 setElem!53528) (forall!17221 (exprs!7851 setElem!53528) lambda!438351))))

(declare-fun bs!1901665 () Bool)

(assert (= bs!1901665 d!2243980))

(declare-fun m!7894624 () Bool)

(assert (=> bs!1901665 m!7894624))

(assert (=> setNonEmpty!53528 d!2243980))

(declare-fun d!2243982 () Bool)

(declare-fun c!1340268 () Bool)

(assert (=> d!2243982 (= c!1340268 ((_ is Nil!69793) lt!2571755))))

(declare-fun e!4330697 () (InoxSet Context!14702))

(assert (=> d!2243982 (= (content!14341 lt!2571755) e!4330697)))

(declare-fun b!7224203 () Bool)

(assert (=> b!7224203 (= e!4330697 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224204 () Bool)

(assert (=> b!7224204 (= e!4330697 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 lt!2571755) true) (content!14341 (t!383946 lt!2571755))))))

(assert (= (and d!2243982 c!1340268) b!7224203))

(assert (= (and d!2243982 (not c!1340268)) b!7224204))

(declare-fun m!7894626 () Bool)

(assert (=> b!7224204 m!7894626))

(declare-fun m!7894628 () Bool)

(assert (=> b!7224204 m!7894628))

(assert (=> b!7224019 d!2243982))

(declare-fun d!2243984 () Bool)

(declare-fun res!2931771 () Bool)

(declare-fun e!4330702 () Bool)

(assert (=> d!2243984 (=> res!2931771 e!4330702)))

(assert (=> d!2243984 (= res!2931771 ((_ is Nil!69793) lt!2571755))))

(assert (=> d!2243984 (= (noDuplicate!2912 lt!2571755) e!4330702)))

(declare-fun b!7224209 () Bool)

(declare-fun e!4330703 () Bool)

(assert (=> b!7224209 (= e!4330702 e!4330703)))

(declare-fun res!2931772 () Bool)

(assert (=> b!7224209 (=> (not res!2931772) (not e!4330703))))

(declare-fun contains!20734 (List!69917 Context!14702) Bool)

(assert (=> b!7224209 (= res!2931772 (not (contains!20734 (t!383946 lt!2571755) (h!76241 lt!2571755))))))

(declare-fun b!7224210 () Bool)

(assert (=> b!7224210 (= e!4330703 (noDuplicate!2912 (t!383946 lt!2571755)))))

(assert (= (and d!2243984 (not res!2931771)) b!7224209))

(assert (= (and b!7224209 res!2931772) b!7224210))

(declare-fun m!7894630 () Bool)

(assert (=> b!7224209 m!7894630))

(declare-fun m!7894632 () Bool)

(assert (=> b!7224210 m!7894632))

(assert (=> d!2243878 d!2243984))

(declare-fun d!2243986 () Bool)

(declare-fun e!4330710 () Bool)

(assert (=> d!2243986 e!4330710))

(declare-fun res!2931778 () Bool)

(assert (=> d!2243986 (=> (not res!2931778) (not e!4330710))))

(declare-fun res!2931777 () List!69917)

(assert (=> d!2243986 (= res!2931778 (noDuplicate!2912 res!2931777))))

(declare-fun e!4330711 () Bool)

(assert (=> d!2243986 e!4330711))

(assert (=> d!2243986 (= (choose!55453 lt!2571750) res!2931777)))

(declare-fun b!7224218 () Bool)

(declare-fun e!4330712 () Bool)

(declare-fun tp!2030756 () Bool)

(assert (=> b!7224218 (= e!4330712 tp!2030756)))

(declare-fun tp!2030757 () Bool)

(declare-fun b!7224217 () Bool)

(assert (=> b!7224217 (= e!4330711 (and (inv!89019 (h!76241 res!2931777)) e!4330712 tp!2030757))))

(declare-fun b!7224219 () Bool)

(assert (=> b!7224219 (= e!4330710 (= (content!14341 res!2931777) lt!2571750))))

(assert (= b!7224217 b!7224218))

(assert (= (and d!2243986 ((_ is Cons!69793) res!2931777)) b!7224217))

(assert (= (and d!2243986 res!2931778) b!7224219))

(declare-fun m!7894634 () Bool)

(assert (=> d!2243986 m!7894634))

(declare-fun m!7894636 () Bool)

(assert (=> b!7224217 m!7894636))

(declare-fun m!7894638 () Bool)

(assert (=> b!7224219 m!7894638))

(assert (=> d!2243878 d!2243986))

(declare-fun d!2243988 () Bool)

(declare-fun res!2931779 () Bool)

(declare-fun e!4330713 () Bool)

(assert (=> d!2243988 (=> res!2931779 e!4330713)))

(assert (=> d!2243988 (= res!2931779 ((_ is Nil!69791) (exprs!7851 setElem!53522)))))

(assert (=> d!2243988 (= (forall!17221 (exprs!7851 setElem!53522) lambda!438337) e!4330713)))

(declare-fun b!7224220 () Bool)

(declare-fun e!4330714 () Bool)

(assert (=> b!7224220 (= e!4330713 e!4330714)))

(declare-fun res!2931780 () Bool)

(assert (=> b!7224220 (=> (not res!2931780) (not e!4330714))))

(assert (=> b!7224220 (= res!2931780 (dynLambda!28425 lambda!438337 (h!76239 (exprs!7851 setElem!53522))))))

(declare-fun b!7224221 () Bool)

(assert (=> b!7224221 (= e!4330714 (forall!17221 (t!383944 (exprs!7851 setElem!53522)) lambda!438337))))

(assert (= (and d!2243988 (not res!2931779)) b!7224220))

(assert (= (and b!7224220 res!2931780) b!7224221))

(declare-fun b_lambda!276525 () Bool)

(assert (=> (not b_lambda!276525) (not b!7224220)))

(declare-fun m!7894640 () Bool)

(assert (=> b!7224220 m!7894640))

(declare-fun m!7894642 () Bool)

(assert (=> b!7224221 m!7894642))

(assert (=> d!2243912 d!2243988))

(declare-fun b!7224244 () Bool)

(declare-fun e!4330727 () (InoxSet Context!14702))

(declare-fun call!657476 () (InoxSet Context!14702))

(declare-fun call!657477 () (InoxSet Context!14702))

(assert (=> b!7224244 (= e!4330727 ((_ map or) call!657476 call!657477))))

(declare-fun b!7224245 () Bool)

(declare-fun c!1340283 () Bool)

(assert (=> b!7224245 (= c!1340283 ((_ is Star!18399) (h!76239 (exprs!7851 c!10544))))))

(declare-fun e!4330729 () (InoxSet Context!14702))

(declare-fun e!4330732 () (InoxSet Context!14702))

(assert (=> b!7224245 (= e!4330729 e!4330732)))

(declare-fun d!2243990 () Bool)

(declare-fun c!1340281 () Bool)

(assert (=> d!2243990 (= c!1340281 (and ((_ is ElementMatch!18399) (h!76239 (exprs!7851 c!10544))) (= (c!1340227 (h!76239 (exprs!7851 c!10544))) lt!2571752)))))

(declare-fun e!4330731 () (InoxSet Context!14702))

(assert (=> d!2243990 (= (derivationStepZipperDown!2533 (h!76239 (exprs!7851 c!10544)) (Context!14703 (t!383944 (exprs!7851 c!10544))) lt!2571752) e!4330731)))

(declare-fun bm!657467 () Bool)

(declare-fun call!657475 () (InoxSet Context!14702))

(declare-fun call!657472 () (InoxSet Context!14702))

(assert (=> bm!657467 (= call!657475 call!657472)))

(declare-fun b!7224246 () Bool)

(declare-fun e!4330730 () Bool)

(assert (=> b!7224246 (= e!4330730 (nullable!7806 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))

(declare-fun b!7224247 () Bool)

(assert (=> b!7224247 (= e!4330731 e!4330727)))

(declare-fun c!1340280 () Bool)

(assert (=> b!7224247 (= c!1340280 ((_ is Union!18399) (h!76239 (exprs!7851 c!10544))))))

(declare-fun b!7224248 () Bool)

(assert (=> b!7224248 (= e!4330731 (store ((as const (Array Context!14702 Bool)) false) (Context!14703 (t!383944 (exprs!7851 c!10544))) true))))

(declare-fun bm!657468 () Bool)

(declare-fun call!657474 () List!69915)

(declare-fun call!657473 () List!69915)

(assert (=> bm!657468 (= call!657474 call!657473)))

(declare-fun b!7224249 () Bool)

(assert (=> b!7224249 (= e!4330732 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340282 () Bool)

(declare-fun c!1340279 () Bool)

(declare-fun bm!657469 () Bool)

(assert (=> bm!657469 (= call!657477 (derivationStepZipperDown!2533 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) lt!2571752))))

(declare-fun b!7224250 () Bool)

(assert (=> b!7224250 (= c!1340279 e!4330730)))

(declare-fun res!2931783 () Bool)

(assert (=> b!7224250 (=> (not res!2931783) (not e!4330730))))

(assert (=> b!7224250 (= res!2931783 ((_ is Concat!27244) (h!76239 (exprs!7851 c!10544))))))

(declare-fun e!4330728 () (InoxSet Context!14702))

(assert (=> b!7224250 (= e!4330727 e!4330728)))

(declare-fun bm!657470 () Bool)

(declare-fun $colon$colon!2855 (List!69915 Regex!18399) List!69915)

(assert (=> bm!657470 (= call!657473 ($colon$colon!2855 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))) (ite (or c!1340279 c!1340282) (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (h!76239 (exprs!7851 c!10544)))))))

(declare-fun b!7224251 () Bool)

(assert (=> b!7224251 (= e!4330728 e!4330729)))

(assert (=> b!7224251 (= c!1340282 ((_ is Concat!27244) (h!76239 (exprs!7851 c!10544))))))

(declare-fun b!7224252 () Bool)

(assert (=> b!7224252 (= e!4330732 call!657475)))

(declare-fun bm!657471 () Bool)

(assert (=> bm!657471 (= call!657476 (derivationStepZipperDown!2533 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) lt!2571752))))

(declare-fun b!7224253 () Bool)

(assert (=> b!7224253 (= e!4330728 ((_ map or) call!657476 call!657472))))

(declare-fun b!7224254 () Bool)

(assert (=> b!7224254 (= e!4330729 call!657475)))

(declare-fun bm!657472 () Bool)

(assert (=> bm!657472 (= call!657472 call!657477)))

(assert (= (and d!2243990 c!1340281) b!7224248))

(assert (= (and d!2243990 (not c!1340281)) b!7224247))

(assert (= (and b!7224247 c!1340280) b!7224244))

(assert (= (and b!7224247 (not c!1340280)) b!7224250))

(assert (= (and b!7224250 res!2931783) b!7224246))

(assert (= (and b!7224250 c!1340279) b!7224253))

(assert (= (and b!7224250 (not c!1340279)) b!7224251))

(assert (= (and b!7224251 c!1340282) b!7224254))

(assert (= (and b!7224251 (not c!1340282)) b!7224245))

(assert (= (and b!7224245 c!1340283) b!7224252))

(assert (= (and b!7224245 (not c!1340283)) b!7224249))

(assert (= (or b!7224254 b!7224252) bm!657468))

(assert (= (or b!7224254 b!7224252) bm!657467))

(assert (= (or b!7224253 bm!657467) bm!657472))

(assert (= (or b!7224253 bm!657468) bm!657470))

(assert (= (or b!7224244 b!7224253) bm!657471))

(assert (= (or b!7224244 bm!657472) bm!657469))

(declare-fun m!7894644 () Bool)

(assert (=> bm!657469 m!7894644))

(declare-fun m!7894646 () Bool)

(assert (=> b!7224246 m!7894646))

(declare-fun m!7894648 () Bool)

(assert (=> bm!657471 m!7894648))

(declare-fun m!7894650 () Bool)

(assert (=> bm!657470 m!7894650))

(declare-fun m!7894652 () Bool)

(assert (=> b!7224248 m!7894652))

(assert (=> bm!657434 d!2243990))

(declare-fun d!2243992 () Bool)

(declare-fun res!2931784 () Bool)

(declare-fun e!4330733 () Bool)

(assert (=> d!2243992 (=> res!2931784 e!4330733)))

(assert (=> d!2243992 (= res!2931784 ((_ is Nil!69791) (exprs!7851 c!10544)))))

(assert (=> d!2243992 (= (forall!17221 (exprs!7851 c!10544) lambda!438336) e!4330733)))

(declare-fun b!7224255 () Bool)

(declare-fun e!4330734 () Bool)

(assert (=> b!7224255 (= e!4330733 e!4330734)))

(declare-fun res!2931785 () Bool)

(assert (=> b!7224255 (=> (not res!2931785) (not e!4330734))))

(assert (=> b!7224255 (= res!2931785 (dynLambda!28425 lambda!438336 (h!76239 (exprs!7851 c!10544))))))

(declare-fun b!7224256 () Bool)

(assert (=> b!7224256 (= e!4330734 (forall!17221 (t!383944 (exprs!7851 c!10544)) lambda!438336))))

(assert (= (and d!2243992 (not res!2931784)) b!7224255))

(assert (= (and b!7224255 res!2931785) b!7224256))

(declare-fun b_lambda!276527 () Bool)

(assert (=> (not b_lambda!276527) (not b!7224255)))

(declare-fun m!7894654 () Bool)

(assert (=> b!7224255 m!7894654))

(declare-fun m!7894656 () Bool)

(assert (=> b!7224256 m!7894656))

(assert (=> d!2243910 d!2243992))

(assert (=> d!2243894 d!2243872))

(declare-fun d!2243994 () Bool)

(declare-fun lt!2571774 () Bool)

(assert (=> d!2243994 (= lt!2571774 (exists!4104 (toList!11334 z!3517) lambda!438332))))

(assert (=> d!2243994 (= lt!2571774 (choose!55454 z!3517 lambda!438332))))

(assert (=> d!2243994 (= (exists!4102 z!3517 lambda!438332) lt!2571774)))

(declare-fun bs!1901666 () Bool)

(assert (= bs!1901666 d!2243994))

(assert (=> bs!1901666 m!7894480))

(assert (=> bs!1901666 m!7894480))

(declare-fun m!7894658 () Bool)

(assert (=> bs!1901666 m!7894658))

(declare-fun m!7894660 () Bool)

(assert (=> bs!1901666 m!7894660))

(assert (=> d!2243894 d!2243994))

(declare-fun bs!1901667 () Bool)

(declare-fun d!2243996 () Bool)

(assert (= bs!1901667 (and d!2243996 b!7223988)))

(declare-fun lambda!438354 () Int)

(assert (=> bs!1901667 (not (= lambda!438354 lambda!438318))))

(declare-fun bs!1901668 () Bool)

(assert (= bs!1901668 (and d!2243996 d!2243894)))

(assert (=> bs!1901668 (= lambda!438354 lambda!438332)))

(declare-fun bs!1901669 () Bool)

(assert (= bs!1901669 (and d!2243996 d!2243972)))

(assert (=> bs!1901669 (not (= lambda!438354 lambda!438350))))

(assert (=> d!2243996 true))

(assert (=> d!2243996 true))

(assert (=> d!2243996 (< (dynLambda!28422 order!28743 lambda!438317) (dynLambda!28423 order!28745 lambda!438354))))

(assert (=> d!2243996 (= (select (flatMap!2694 z!3517 lambda!438317) lt!2571751) (exists!4102 z!3517 lambda!438354))))

(declare-fun _$3!498 () Context!14702)

(declare-fun e!4330737 () Bool)

(assert (=> d!2243996 (and (inv!89019 _$3!498) e!4330737)))

(assert (=> d!2243996 (= (choose!55455 z!3517 lambda!438317 lt!2571751) _$3!498)))

(declare-fun b!7224260 () Bool)

(declare-fun tp!2030760 () Bool)

(assert (=> b!7224260 (= e!4330737 tp!2030760)))

(assert (= d!2243996 b!7224260))

(assert (=> d!2243996 m!7894444))

(assert (=> d!2243996 m!7894446))

(declare-fun m!7894662 () Bool)

(assert (=> d!2243996 m!7894662))

(declare-fun m!7894664 () Bool)

(assert (=> d!2243996 m!7894664))

(assert (=> d!2243894 d!2243996))

(declare-fun d!2243998 () Bool)

(assert (=> d!2243998 true))

(declare-fun setRes!53535 () Bool)

(assert (=> d!2243998 setRes!53535))

(declare-fun condSetEmpty!53535 () Bool)

(declare-fun res!2931788 () (InoxSet Context!14702))

(assert (=> d!2243998 (= condSetEmpty!53535 (= res!2931788 ((as const (Array Context!14702 Bool)) false)))))

(assert (=> d!2243998 (= (choose!55452 z!3517 lambda!438317) res!2931788)))

(declare-fun setIsEmpty!53535 () Bool)

(assert (=> setIsEmpty!53535 setRes!53535))

(declare-fun setNonEmpty!53535 () Bool)

(declare-fun tp!2030766 () Bool)

(declare-fun e!4330740 () Bool)

(declare-fun setElem!53535 () Context!14702)

(assert (=> setNonEmpty!53535 (= setRes!53535 (and tp!2030766 (inv!89019 setElem!53535) e!4330740))))

(declare-fun setRest!53535 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53535 (= res!2931788 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53535 true) setRest!53535))))

(declare-fun b!7224263 () Bool)

(declare-fun tp!2030765 () Bool)

(assert (=> b!7224263 (= e!4330740 tp!2030765)))

(assert (= (and d!2243998 condSetEmpty!53535) setIsEmpty!53535))

(assert (= (and d!2243998 (not condSetEmpty!53535)) setNonEmpty!53535))

(assert (= setNonEmpty!53535 b!7224263))

(declare-fun m!7894666 () Bool)

(assert (=> setNonEmpty!53535 m!7894666))

(assert (=> d!2243872 d!2243998))

(declare-fun e!4330743 () Bool)

(assert (=> b!7224076 (= tp!2030697 e!4330743)))

(declare-fun b!7224277 () Bool)

(declare-fun tp!2030778 () Bool)

(declare-fun tp!2030777 () Bool)

(assert (=> b!7224277 (= e!4330743 (and tp!2030778 tp!2030777))))

(declare-fun b!7224276 () Bool)

(declare-fun tp!2030779 () Bool)

(assert (=> b!7224276 (= e!4330743 tp!2030779)))

(declare-fun b!7224275 () Bool)

(declare-fun tp!2030780 () Bool)

(declare-fun tp!2030781 () Bool)

(assert (=> b!7224275 (= e!4330743 (and tp!2030780 tp!2030781))))

(declare-fun b!7224274 () Bool)

(assert (=> b!7224274 (= e!4330743 tp_is_empty!46355)))

(assert (= (and b!7224076 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 empty!3071)))) b!7224274))

(assert (= (and b!7224076 ((_ is Concat!27244) (h!76239 (exprs!7851 empty!3071)))) b!7224275))

(assert (= (and b!7224076 ((_ is Star!18399) (h!76239 (exprs!7851 empty!3071)))) b!7224276))

(assert (= (and b!7224076 ((_ is Union!18399) (h!76239 (exprs!7851 empty!3071)))) b!7224277))

(declare-fun b!7224278 () Bool)

(declare-fun e!4330744 () Bool)

(declare-fun tp!2030782 () Bool)

(declare-fun tp!2030783 () Bool)

(assert (=> b!7224278 (= e!4330744 (and tp!2030782 tp!2030783))))

(assert (=> b!7224076 (= tp!2030698 e!4330744)))

(assert (= (and b!7224076 ((_ is Cons!69791) (t!383944 (exprs!7851 empty!3071)))) b!7224278))

(declare-fun e!4330745 () Bool)

(assert (=> b!7224077 (= tp!2030699 e!4330745)))

(declare-fun b!7224282 () Bool)

(declare-fun tp!2030785 () Bool)

(declare-fun tp!2030784 () Bool)

(assert (=> b!7224282 (= e!4330745 (and tp!2030785 tp!2030784))))

(declare-fun b!7224281 () Bool)

(declare-fun tp!2030786 () Bool)

(assert (=> b!7224281 (= e!4330745 tp!2030786)))

(declare-fun b!7224280 () Bool)

(declare-fun tp!2030787 () Bool)

(declare-fun tp!2030788 () Bool)

(assert (=> b!7224280 (= e!4330745 (and tp!2030787 tp!2030788))))

(declare-fun b!7224279 () Bool)

(assert (=> b!7224279 (= e!4330745 tp_is_empty!46355)))

(assert (= (and b!7224077 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 c!10544)))) b!7224279))

(assert (= (and b!7224077 ((_ is Concat!27244) (h!76239 (exprs!7851 c!10544)))) b!7224280))

(assert (= (and b!7224077 ((_ is Star!18399) (h!76239 (exprs!7851 c!10544)))) b!7224281))

(assert (= (and b!7224077 ((_ is Union!18399) (h!76239 (exprs!7851 c!10544)))) b!7224282))

(declare-fun b!7224283 () Bool)

(declare-fun e!4330746 () Bool)

(declare-fun tp!2030789 () Bool)

(declare-fun tp!2030790 () Bool)

(assert (=> b!7224283 (= e!4330746 (and tp!2030789 tp!2030790))))

(assert (=> b!7224077 (= tp!2030700 e!4330746)))

(assert (= (and b!7224077 ((_ is Cons!69791) (t!383944 (exprs!7851 c!10544)))) b!7224283))

(declare-fun b!7224284 () Bool)

(declare-fun e!4330747 () Bool)

(declare-fun tp!2030791 () Bool)

(declare-fun tp!2030792 () Bool)

(assert (=> b!7224284 (= e!4330747 (and tp!2030791 tp!2030792))))

(assert (=> b!7224065 (= tp!2030687 e!4330747)))

(assert (= (and b!7224065 ((_ is Cons!69791) (exprs!7851 setElem!53528))) b!7224284))

(declare-fun condSetEmpty!53536 () Bool)

(assert (=> setNonEmpty!53528 (= condSetEmpty!53536 (= setRest!53528 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53536 () Bool)

(assert (=> setNonEmpty!53528 (= tp!2030686 setRes!53536)))

(declare-fun setIsEmpty!53536 () Bool)

(assert (=> setIsEmpty!53536 setRes!53536))

(declare-fun setElem!53536 () Context!14702)

(declare-fun e!4330748 () Bool)

(declare-fun tp!2030793 () Bool)

(declare-fun setNonEmpty!53536 () Bool)

(assert (=> setNonEmpty!53536 (= setRes!53536 (and tp!2030793 (inv!89019 setElem!53536) e!4330748))))

(declare-fun setRest!53536 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53536 (= setRest!53528 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53536 true) setRest!53536))))

(declare-fun b!7224285 () Bool)

(declare-fun tp!2030794 () Bool)

(assert (=> b!7224285 (= e!4330748 tp!2030794)))

(assert (= (and setNonEmpty!53528 condSetEmpty!53536) setIsEmpty!53536))

(assert (= (and setNonEmpty!53528 (not condSetEmpty!53536)) setNonEmpty!53536))

(assert (= setNonEmpty!53536 b!7224285))

(declare-fun m!7894668 () Bool)

(assert (=> setNonEmpty!53536 m!7894668))

(declare-fun e!4330749 () Bool)

(assert (=> b!7224070 (= tp!2030692 e!4330749)))

(declare-fun b!7224289 () Bool)

(declare-fun tp!2030796 () Bool)

(declare-fun tp!2030795 () Bool)

(assert (=> b!7224289 (= e!4330749 (and tp!2030796 tp!2030795))))

(declare-fun b!7224288 () Bool)

(declare-fun tp!2030797 () Bool)

(assert (=> b!7224288 (= e!4330749 tp!2030797)))

(declare-fun b!7224287 () Bool)

(declare-fun tp!2030798 () Bool)

(declare-fun tp!2030799 () Bool)

(assert (=> b!7224287 (= e!4330749 (and tp!2030798 tp!2030799))))

(declare-fun b!7224286 () Bool)

(assert (=> b!7224286 (= e!4330749 tp_is_empty!46355)))

(assert (= (and b!7224070 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 setElem!53522)))) b!7224286))

(assert (= (and b!7224070 ((_ is Concat!27244) (h!76239 (exprs!7851 setElem!53522)))) b!7224287))

(assert (= (and b!7224070 ((_ is Star!18399) (h!76239 (exprs!7851 setElem!53522)))) b!7224288))

(assert (= (and b!7224070 ((_ is Union!18399) (h!76239 (exprs!7851 setElem!53522)))) b!7224289))

(declare-fun b!7224290 () Bool)

(declare-fun e!4330750 () Bool)

(declare-fun tp!2030800 () Bool)

(declare-fun tp!2030801 () Bool)

(assert (=> b!7224290 (= e!4330750 (and tp!2030800 tp!2030801))))

(assert (=> b!7224070 (= tp!2030693 e!4330750)))

(assert (= (and b!7224070 ((_ is Cons!69791) (t!383944 (exprs!7851 setElem!53522)))) b!7224290))

(declare-fun b!7224291 () Bool)

(declare-fun e!4330751 () Bool)

(declare-fun tp!2030802 () Bool)

(assert (=> b!7224291 (= e!4330751 (and tp_is_empty!46355 tp!2030802))))

(assert (=> b!7224075 (= tp!2030696 e!4330751)))

(assert (= (and b!7224075 ((_ is Cons!69792) (t!383945 (t!383945 s!7961)))) b!7224291))

(declare-fun b_lambda!276529 () Bool)

(assert (= b_lambda!276525 (or d!2243912 b_lambda!276529)))

(declare-fun bs!1901670 () Bool)

(declare-fun d!2244000 () Bool)

(assert (= bs!1901670 (and d!2244000 d!2243912)))

(declare-fun validRegex!9493 (Regex!18399) Bool)

(assert (=> bs!1901670 (= (dynLambda!28425 lambda!438337 (h!76239 (exprs!7851 setElem!53522))) (validRegex!9493 (h!76239 (exprs!7851 setElem!53522))))))

(declare-fun m!7894670 () Bool)

(assert (=> bs!1901670 m!7894670))

(assert (=> b!7224220 d!2244000))

(declare-fun b_lambda!276531 () Bool)

(assert (= b_lambda!276527 (or d!2243910 b_lambda!276531)))

(declare-fun bs!1901671 () Bool)

(declare-fun d!2244002 () Bool)

(assert (= bs!1901671 (and d!2244002 d!2243910)))

(assert (=> bs!1901671 (= (dynLambda!28425 lambda!438336 (h!76239 (exprs!7851 c!10544))) (validRegex!9493 (h!76239 (exprs!7851 c!10544))))))

(declare-fun m!7894672 () Bool)

(assert (=> bs!1901671 m!7894672))

(assert (=> b!7224255 d!2244002))

(declare-fun b_lambda!276533 () Bool)

(assert (= b_lambda!276523 (or d!2243908 b_lambda!276533)))

(declare-fun bs!1901672 () Bool)

(declare-fun d!2244004 () Bool)

(assert (= bs!1901672 (and d!2244004 d!2243908)))

(assert (=> bs!1901672 (= (dynLambda!28425 lambda!438335 (h!76239 (exprs!7851 empty!3071))) (validRegex!9493 (h!76239 (exprs!7851 empty!3071))))))

(declare-fun m!7894674 () Bool)

(assert (=> bs!1901672 m!7894674))

(assert (=> b!7224189 d!2244004))

(check-sat (not b!7224219) (not b!7224218) (not b!7224221) (not b!7224263) (not b!7224217) (not b!7224193) (not b!7224256) tp_is_empty!46355 (not b_lambda!276533) (not d!2243974) (not d!2243994) (not b_lambda!276529) (not b!7224290) (not d!2243980) (not b!7224281) (not b!7224280) (not bs!1901671) (not b!7224260) (not b!7224277) (not b!7224198) (not b!7224209) (not b_lambda!276531) (not d!2243978) (not b!7224287) (not bs!1901672) (not b!7224288) (not b!7224284) (not b!7224210) (not b!7224275) (not bm!657469) (not b!7224190) (not b!7224192) (not d!2243986) (not b!7224283) (not b!7224276) (not d!2243976) (not b!7224285) (not setNonEmpty!53535) (not bs!1901670) (not bm!657471) (not b!7224278) (not b!7224291) (not setNonEmpty!53536) (not bm!657470) (not bm!657454) (not d!2243996) (not b!7224289) (not b!7224282) (not b!7224246) (not d!2243972) (not d!2243966) (not b!7224204))
(check-sat)
(get-model)

(assert (=> d!2243996 d!2243872))

(declare-fun d!2244042 () Bool)

(declare-fun lt!2571778 () Bool)

(assert (=> d!2244042 (= lt!2571778 (exists!4104 (toList!11334 z!3517) lambda!438354))))

(assert (=> d!2244042 (= lt!2571778 (choose!55454 z!3517 lambda!438354))))

(assert (=> d!2244042 (= (exists!4102 z!3517 lambda!438354) lt!2571778)))

(declare-fun bs!1901685 () Bool)

(assert (= bs!1901685 d!2244042))

(assert (=> bs!1901685 m!7894480))

(assert (=> bs!1901685 m!7894480))

(declare-fun m!7894754 () Bool)

(assert (=> bs!1901685 m!7894754))

(declare-fun m!7894756 () Bool)

(assert (=> bs!1901685 m!7894756))

(assert (=> d!2243996 d!2244042))

(declare-fun bs!1901688 () Bool)

(declare-fun d!2244046 () Bool)

(assert (= bs!1901688 (and d!2244046 d!2243908)))

(declare-fun lambda!438358 () Int)

(assert (=> bs!1901688 (= lambda!438358 lambda!438335)))

(declare-fun bs!1901690 () Bool)

(assert (= bs!1901690 (and d!2244046 d!2243910)))

(assert (=> bs!1901690 (= lambda!438358 lambda!438336)))

(declare-fun bs!1901692 () Bool)

(assert (= bs!1901692 (and d!2244046 d!2243912)))

(assert (=> bs!1901692 (= lambda!438358 lambda!438337)))

(declare-fun bs!1901693 () Bool)

(assert (= bs!1901693 (and d!2244046 d!2243980)))

(assert (=> bs!1901693 (= lambda!438358 lambda!438351)))

(assert (=> d!2244046 (= (inv!89019 _$3!498) (forall!17221 (exprs!7851 _$3!498) lambda!438358))))

(declare-fun bs!1901695 () Bool)

(assert (= bs!1901695 d!2244046))

(declare-fun m!7894758 () Bool)

(assert (=> bs!1901695 m!7894758))

(assert (=> d!2243996 d!2244046))

(declare-fun b!7224378 () Bool)

(declare-fun e!4330816 () (InoxSet Context!14702))

(declare-fun call!657507 () (InoxSet Context!14702))

(declare-fun call!657508 () (InoxSet Context!14702))

(assert (=> b!7224378 (= e!4330816 ((_ map or) call!657507 call!657508))))

(declare-fun b!7224379 () Bool)

(declare-fun c!1340310 () Bool)

(assert (=> b!7224379 (= c!1340310 ((_ is Star!18399) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun e!4330818 () (InoxSet Context!14702))

(declare-fun e!4330821 () (InoxSet Context!14702))

(assert (=> b!7224379 (= e!4330818 e!4330821)))

(declare-fun c!1340308 () Bool)

(declare-fun d!2244048 () Bool)

(assert (=> d!2244048 (= c!1340308 (and ((_ is ElementMatch!18399) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (= (c!1340227 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) lt!2571752)))))

(declare-fun e!4330820 () (InoxSet Context!14702))

(assert (=> d!2244048 (= (derivationStepZipperDown!2533 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) lt!2571752) e!4330820)))

(declare-fun bm!657498 () Bool)

(declare-fun call!657506 () (InoxSet Context!14702))

(declare-fun call!657503 () (InoxSet Context!14702))

(assert (=> bm!657498 (= call!657506 call!657503)))

(declare-fun e!4330819 () Bool)

(declare-fun b!7224380 () Bool)

(assert (=> b!7224380 (= e!4330819 (nullable!7806 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224381 () Bool)

(assert (=> b!7224381 (= e!4330820 e!4330816)))

(declare-fun c!1340307 () Bool)

(assert (=> b!7224381 (= c!1340307 ((_ is Union!18399) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun b!7224382 () Bool)

(assert (=> b!7224382 (= e!4330820 (store ((as const (Array Context!14702 Bool)) false) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) true))))

(declare-fun bm!657499 () Bool)

(declare-fun call!657505 () List!69915)

(declare-fun call!657504 () List!69915)

(assert (=> bm!657499 (= call!657505 call!657504)))

(declare-fun b!7224383 () Bool)

(assert (=> b!7224383 (= e!4330821 ((as const (Array Context!14702 Bool)) false))))

(declare-fun bm!657500 () Bool)

(declare-fun c!1340309 () Bool)

(declare-fun c!1340306 () Bool)

(assert (=> bm!657500 (= call!657508 (derivationStepZipperDown!2533 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))) (ite (or c!1340307 c!1340306) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657505)) lt!2571752))))

(declare-fun b!7224384 () Bool)

(assert (=> b!7224384 (= c!1340306 e!4330819)))

(declare-fun res!2931832 () Bool)

(assert (=> b!7224384 (=> (not res!2931832) (not e!4330819))))

(assert (=> b!7224384 (= res!2931832 ((_ is Concat!27244) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun e!4330817 () (InoxSet Context!14702))

(assert (=> b!7224384 (= e!4330816 e!4330817)))

(declare-fun bm!657501 () Bool)

(assert (=> bm!657501 (= call!657504 ($colon$colon!2855 (exprs!7851 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474))) (ite (or c!1340306 c!1340309) (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224385 () Bool)

(assert (=> b!7224385 (= e!4330817 e!4330818)))

(assert (=> b!7224385 (= c!1340309 ((_ is Concat!27244) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun b!7224386 () Bool)

(assert (=> b!7224386 (= e!4330821 call!657506)))

(declare-fun bm!657502 () Bool)

(assert (=> bm!657502 (= call!657507 (derivationStepZipperDown!2533 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))) (ite c!1340307 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657504)) lt!2571752))))

(declare-fun b!7224387 () Bool)

(assert (=> b!7224387 (= e!4330817 ((_ map or) call!657507 call!657503))))

(declare-fun b!7224388 () Bool)

(assert (=> b!7224388 (= e!4330818 call!657506)))

(declare-fun bm!657503 () Bool)

(assert (=> bm!657503 (= call!657503 call!657508)))

(assert (= (and d!2244048 c!1340308) b!7224382))

(assert (= (and d!2244048 (not c!1340308)) b!7224381))

(assert (= (and b!7224381 c!1340307) b!7224378))

(assert (= (and b!7224381 (not c!1340307)) b!7224384))

(assert (= (and b!7224384 res!2931832) b!7224380))

(assert (= (and b!7224384 c!1340306) b!7224387))

(assert (= (and b!7224384 (not c!1340306)) b!7224385))

(assert (= (and b!7224385 c!1340309) b!7224388))

(assert (= (and b!7224385 (not c!1340309)) b!7224379))

(assert (= (and b!7224379 c!1340310) b!7224386))

(assert (= (and b!7224379 (not c!1340310)) b!7224383))

(assert (= (or b!7224388 b!7224386) bm!657499))

(assert (= (or b!7224388 b!7224386) bm!657498))

(assert (= (or b!7224387 bm!657498) bm!657503))

(assert (= (or b!7224387 bm!657499) bm!657501))

(assert (= (or b!7224378 b!7224387) bm!657502))

(assert (= (or b!7224378 bm!657503) bm!657500))

(declare-fun m!7894766 () Bool)

(assert (=> bm!657500 m!7894766))

(declare-fun m!7894768 () Bool)

(assert (=> b!7224380 m!7894768))

(declare-fun m!7894772 () Bool)

(assert (=> bm!657502 m!7894772))

(declare-fun m!7894774 () Bool)

(assert (=> bm!657501 m!7894774))

(declare-fun m!7894776 () Bool)

(assert (=> b!7224382 m!7894776))

(assert (=> bm!657469 d!2244048))

(declare-fun bm!657504 () Bool)

(declare-fun call!657509 () (InoxSet Context!14702))

(assert (=> bm!657504 (= call!657509 (derivationStepZipperDown!2533 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) lt!2571752))))

(declare-fun d!2244056 () Bool)

(declare-fun c!1340312 () Bool)

(declare-fun e!4330822 () Bool)

(assert (=> d!2244056 (= c!1340312 e!4330822)))

(declare-fun res!2931833 () Bool)

(assert (=> d!2244056 (=> (not res!2931833) (not e!4330822))))

(assert (=> d!2244056 (= res!2931833 ((_ is Cons!69791) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun e!4330824 () (InoxSet Context!14702))

(assert (=> d!2244056 (= (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) lt!2571752) e!4330824)))

(declare-fun b!7224389 () Bool)

(declare-fun e!4330823 () (InoxSet Context!14702))

(assert (=> b!7224389 (= e!4330823 call!657509)))

(declare-fun b!7224390 () Bool)

(assert (=> b!7224390 (= e!4330824 ((_ map or) call!657509 (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) lt!2571752)))))

(declare-fun b!7224391 () Bool)

(assert (=> b!7224391 (= e!4330822 (nullable!7806 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224392 () Bool)

(assert (=> b!7224392 (= e!4330824 e!4330823)))

(declare-fun c!1340311 () Bool)

(assert (=> b!7224392 (= c!1340311 ((_ is Cons!69791) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224393 () Bool)

(assert (=> b!7224393 (= e!4330823 ((as const (Array Context!14702 Bool)) false))))

(assert (= (and d!2244056 res!2931833) b!7224391))

(assert (= (and d!2244056 c!1340312) b!7224390))

(assert (= (and d!2244056 (not c!1340312)) b!7224392))

(assert (= (and b!7224392 c!1340311) b!7224389))

(assert (= (and b!7224392 (not c!1340311)) b!7224393))

(assert (= (or b!7224390 b!7224389) bm!657504))

(declare-fun m!7894782 () Bool)

(assert (=> bm!657504 m!7894782))

(declare-fun m!7894784 () Bool)

(assert (=> b!7224390 m!7894784))

(declare-fun m!7894786 () Bool)

(assert (=> b!7224391 m!7894786))

(assert (=> b!7224192 d!2244056))

(declare-fun b!7224394 () Bool)

(declare-fun e!4330825 () (InoxSet Context!14702))

(declare-fun call!657514 () (InoxSet Context!14702))

(declare-fun call!657515 () (InoxSet Context!14702))

(assert (=> b!7224394 (= e!4330825 ((_ map or) call!657514 call!657515))))

(declare-fun b!7224395 () Bool)

(declare-fun c!1340317 () Bool)

(assert (=> b!7224395 (= c!1340317 ((_ is Star!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun e!4330827 () (InoxSet Context!14702))

(declare-fun e!4330830 () (InoxSet Context!14702))

(assert (=> b!7224395 (= e!4330827 e!4330830)))

(declare-fun d!2244060 () Bool)

(declare-fun c!1340315 () Bool)

(assert (=> d!2244060 (= c!1340315 (and ((_ is ElementMatch!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (= (c!1340227 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) lt!2571752)))))

(declare-fun e!4330829 () (InoxSet Context!14702))

(assert (=> d!2244060 (= (derivationStepZipperDown!2533 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) lt!2571752) e!4330829)))

(declare-fun bm!657505 () Bool)

(declare-fun call!657513 () (InoxSet Context!14702))

(declare-fun call!657510 () (InoxSet Context!14702))

(assert (=> bm!657505 (= call!657513 call!657510)))

(declare-fun b!7224396 () Bool)

(declare-fun e!4330828 () Bool)

(assert (=> b!7224396 (= e!4330828 (nullable!7806 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))

(declare-fun b!7224397 () Bool)

(assert (=> b!7224397 (= e!4330829 e!4330825)))

(declare-fun c!1340314 () Bool)

(assert (=> b!7224397 (= c!1340314 ((_ is Union!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun b!7224398 () Bool)

(assert (=> b!7224398 (= e!4330829 (store ((as const (Array Context!14702 Bool)) false) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) true))))

(declare-fun bm!657506 () Bool)

(declare-fun call!657512 () List!69915)

(declare-fun call!657511 () List!69915)

(assert (=> bm!657506 (= call!657512 call!657511)))

(declare-fun b!7224399 () Bool)

(assert (=> b!7224399 (= e!4330830 ((as const (Array Context!14702 Bool)) false))))

(declare-fun bm!657507 () Bool)

(declare-fun c!1340316 () Bool)

(declare-fun c!1340313 () Bool)

(assert (=> bm!657507 (= call!657515 (derivationStepZipperDown!2533 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (ite (or c!1340314 c!1340313) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657512)) lt!2571752))))

(declare-fun b!7224400 () Bool)

(assert (=> b!7224400 (= c!1340313 e!4330828)))

(declare-fun res!2931834 () Bool)

(assert (=> b!7224400 (=> (not res!2931834) (not e!4330828))))

(assert (=> b!7224400 (= res!2931834 ((_ is Concat!27244) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun e!4330826 () (InoxSet Context!14702))

(assert (=> b!7224400 (= e!4330825 e!4330826)))

(declare-fun bm!657508 () Bool)

(assert (=> bm!657508 (= call!657511 ($colon$colon!2855 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (ite (or c!1340313 c!1340316) (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))

(declare-fun b!7224401 () Bool)

(assert (=> b!7224401 (= e!4330826 e!4330827)))

(assert (=> b!7224401 (= c!1340316 ((_ is Concat!27244) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun b!7224402 () Bool)

(assert (=> b!7224402 (= e!4330830 call!657513)))

(declare-fun bm!657509 () Bool)

(assert (=> bm!657509 (= call!657514 (derivationStepZipperDown!2533 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (ite c!1340314 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657511)) lt!2571752))))

(declare-fun b!7224403 () Bool)

(assert (=> b!7224403 (= e!4330826 ((_ map or) call!657514 call!657510))))

(declare-fun b!7224404 () Bool)

(assert (=> b!7224404 (= e!4330827 call!657513)))

(declare-fun bm!657510 () Bool)

(assert (=> bm!657510 (= call!657510 call!657515)))

(assert (= (and d!2244060 c!1340315) b!7224398))

(assert (= (and d!2244060 (not c!1340315)) b!7224397))

(assert (= (and b!7224397 c!1340314) b!7224394))

(assert (= (and b!7224397 (not c!1340314)) b!7224400))

(assert (= (and b!7224400 res!2931834) b!7224396))

(assert (= (and b!7224400 c!1340313) b!7224403))

(assert (= (and b!7224400 (not c!1340313)) b!7224401))

(assert (= (and b!7224401 c!1340316) b!7224404))

(assert (= (and b!7224401 (not c!1340316)) b!7224395))

(assert (= (and b!7224395 c!1340317) b!7224402))

(assert (= (and b!7224395 (not c!1340317)) b!7224399))

(assert (= (or b!7224404 b!7224402) bm!657506))

(assert (= (or b!7224404 b!7224402) bm!657505))

(assert (= (or b!7224403 bm!657505) bm!657510))

(assert (= (or b!7224403 bm!657506) bm!657508))

(assert (= (or b!7224394 b!7224403) bm!657509))

(assert (= (or b!7224394 bm!657510) bm!657507))

(declare-fun m!7894790 () Bool)

(assert (=> bm!657507 m!7894790))

(declare-fun m!7894792 () Bool)

(assert (=> b!7224396 m!7894792))

(declare-fun m!7894796 () Bool)

(assert (=> bm!657509 m!7894796))

(declare-fun m!7894800 () Bool)

(assert (=> bm!657508 m!7894800))

(declare-fun m!7894802 () Bool)

(assert (=> b!7224398 m!7894802))

(assert (=> bm!657454 d!2244060))

(declare-fun d!2244066 () Bool)

(declare-fun res!2931835 () Bool)

(declare-fun e!4330832 () Bool)

(assert (=> d!2244066 (=> res!2931835 e!4330832)))

(assert (=> d!2244066 (= res!2931835 ((_ is Nil!69791) (exprs!7851 setElem!53528)))))

(assert (=> d!2244066 (= (forall!17221 (exprs!7851 setElem!53528) lambda!438351) e!4330832)))

(declare-fun b!7224407 () Bool)

(declare-fun e!4330833 () Bool)

(assert (=> b!7224407 (= e!4330832 e!4330833)))

(declare-fun res!2931836 () Bool)

(assert (=> b!7224407 (=> (not res!2931836) (not e!4330833))))

(assert (=> b!7224407 (= res!2931836 (dynLambda!28425 lambda!438351 (h!76239 (exprs!7851 setElem!53528))))))

(declare-fun b!7224408 () Bool)

(assert (=> b!7224408 (= e!4330833 (forall!17221 (t!383944 (exprs!7851 setElem!53528)) lambda!438351))))

(assert (= (and d!2244066 (not res!2931835)) b!7224407))

(assert (= (and b!7224407 res!2931836) b!7224408))

(declare-fun b_lambda!276543 () Bool)

(assert (=> (not b_lambda!276543) (not b!7224407)))

(declare-fun m!7894804 () Bool)

(assert (=> b!7224407 m!7894804))

(declare-fun m!7894806 () Bool)

(assert (=> b!7224408 m!7894806))

(assert (=> d!2243980 d!2244066))

(declare-fun d!2244068 () Bool)

(assert (=> d!2244068 (= ($colon$colon!2855 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))) (ite (or c!1340279 c!1340282) (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (h!76239 (exprs!7851 c!10544)))) (Cons!69791 (ite (or c!1340279 c!1340282) (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (h!76239 (exprs!7851 c!10544))) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))

(assert (=> bm!657470 d!2244068))

(declare-fun d!2244072 () Bool)

(declare-fun c!1340319 () Bool)

(assert (=> d!2244072 (= c!1340319 ((_ is Nil!69793) res!2931777))))

(declare-fun e!4330834 () (InoxSet Context!14702))

(assert (=> d!2244072 (= (content!14341 res!2931777) e!4330834)))

(declare-fun b!7224409 () Bool)

(assert (=> b!7224409 (= e!4330834 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224410 () Bool)

(assert (=> b!7224410 (= e!4330834 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 res!2931777) true) (content!14341 (t!383946 res!2931777))))))

(assert (= (and d!2244072 c!1340319) b!7224409))

(assert (= (and d!2244072 (not c!1340319)) b!7224410))

(declare-fun m!7894808 () Bool)

(assert (=> b!7224410 m!7894808))

(declare-fun m!7894810 () Bool)

(assert (=> b!7224410 m!7894810))

(assert (=> b!7224219 d!2244072))

(declare-fun d!2244074 () Bool)

(declare-fun c!1340320 () Bool)

(assert (=> d!2244074 (= c!1340320 ((_ is Nil!69793) (t!383946 lt!2571755)))))

(declare-fun e!4330835 () (InoxSet Context!14702))

(assert (=> d!2244074 (= (content!14341 (t!383946 lt!2571755)) e!4330835)))

(declare-fun b!7224411 () Bool)

(assert (=> b!7224411 (= e!4330835 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224412 () Bool)

(assert (=> b!7224412 (= e!4330835 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 (t!383946 lt!2571755)) true) (content!14341 (t!383946 (t!383946 lt!2571755)))))))

(assert (= (and d!2244074 c!1340320) b!7224411))

(assert (= (and d!2244074 (not c!1340320)) b!7224412))

(declare-fun m!7894812 () Bool)

(assert (=> b!7224412 m!7894812))

(declare-fun m!7894814 () Bool)

(assert (=> b!7224412 m!7894814))

(assert (=> b!7224204 d!2244074))

(declare-fun bs!1901713 () Bool)

(declare-fun d!2244076 () Bool)

(assert (= bs!1901713 (and d!2244076 d!2243980)))

(declare-fun lambda!438361 () Int)

(assert (=> bs!1901713 (= lambda!438361 lambda!438351)))

(declare-fun bs!1901714 () Bool)

(assert (= bs!1901714 (and d!2244076 d!2243910)))

(assert (=> bs!1901714 (= lambda!438361 lambda!438336)))

(declare-fun bs!1901715 () Bool)

(assert (= bs!1901715 (and d!2244076 d!2244046)))

(assert (=> bs!1901715 (= lambda!438361 lambda!438358)))

(declare-fun bs!1901716 () Bool)

(assert (= bs!1901716 (and d!2244076 d!2243912)))

(assert (=> bs!1901716 (= lambda!438361 lambda!438337)))

(declare-fun bs!1901717 () Bool)

(assert (= bs!1901717 (and d!2244076 d!2243908)))

(assert (=> bs!1901717 (= lambda!438361 lambda!438335)))

(assert (=> d!2244076 (= (inv!89019 (h!76241 res!2931777)) (forall!17221 (exprs!7851 (h!76241 res!2931777)) lambda!438361))))

(declare-fun bs!1901718 () Bool)

(assert (= bs!1901718 d!2244076))

(declare-fun m!7894816 () Bool)

(assert (=> bs!1901718 m!7894816))

(assert (=> b!7224217 d!2244076))

(declare-fun c!1340329 () Bool)

(declare-fun bm!657523 () Bool)

(declare-fun call!657529 () Bool)

(declare-fun c!1340328 () Bool)

(assert (=> bm!657523 (= call!657529 (validRegex!9493 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun b!7224458 () Bool)

(declare-fun e!4330879 () Bool)

(declare-fun e!4330880 () Bool)

(assert (=> b!7224458 (= e!4330879 e!4330880)))

(assert (=> b!7224458 (= c!1340328 ((_ is Union!18399) (h!76239 (exprs!7851 c!10544))))))

(declare-fun b!7224459 () Bool)

(declare-fun e!4330874 () Bool)

(declare-fun e!4330875 () Bool)

(assert (=> b!7224459 (= e!4330874 e!4330875)))

(declare-fun res!2931872 () Bool)

(assert (=> b!7224459 (=> (not res!2931872) (not e!4330875))))

(declare-fun call!657530 () Bool)

(assert (=> b!7224459 (= res!2931872 call!657530)))

(declare-fun b!7224460 () Bool)

(declare-fun e!4330877 () Bool)

(assert (=> b!7224460 (= e!4330877 call!657530)))

(declare-fun b!7224461 () Bool)

(declare-fun res!2931870 () Bool)

(assert (=> b!7224461 (=> (not res!2931870) (not e!4330877))))

(declare-fun call!657528 () Bool)

(assert (=> b!7224461 (= res!2931870 call!657528)))

(assert (=> b!7224461 (= e!4330880 e!4330877)))

(declare-fun b!7224462 () Bool)

(declare-fun res!2931868 () Bool)

(assert (=> b!7224462 (=> res!2931868 e!4330874)))

(assert (=> b!7224462 (= res!2931868 (not ((_ is Concat!27244) (h!76239 (exprs!7851 c!10544)))))))

(assert (=> b!7224462 (= e!4330880 e!4330874)))

(declare-fun b!7224463 () Bool)

(declare-fun e!4330876 () Bool)

(assert (=> b!7224463 (= e!4330876 call!657529)))

(declare-fun b!7224464 () Bool)

(assert (=> b!7224464 (= e!4330875 call!657528)))

(declare-fun bm!657524 () Bool)

(assert (=> bm!657524 (= call!657528 call!657529)))

(declare-fun d!2244078 () Bool)

(declare-fun res!2931871 () Bool)

(declare-fun e!4330878 () Bool)

(assert (=> d!2244078 (=> res!2931871 e!4330878)))

(assert (=> d!2244078 (= res!2931871 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 c!10544))))))

(assert (=> d!2244078 (= (validRegex!9493 (h!76239 (exprs!7851 c!10544))) e!4330878)))

(declare-fun b!7224465 () Bool)

(assert (=> b!7224465 (= e!4330879 e!4330876)))

(declare-fun res!2931869 () Bool)

(assert (=> b!7224465 (= res!2931869 (not (nullable!7806 (reg!18728 (h!76239 (exprs!7851 c!10544))))))))

(assert (=> b!7224465 (=> (not res!2931869) (not e!4330876))))

(declare-fun bm!657525 () Bool)

(assert (=> bm!657525 (= call!657530 (validRegex!9493 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun b!7224466 () Bool)

(assert (=> b!7224466 (= e!4330878 e!4330879)))

(assert (=> b!7224466 (= c!1340329 ((_ is Star!18399) (h!76239 (exprs!7851 c!10544))))))

(assert (= (and d!2244078 (not res!2931871)) b!7224466))

(assert (= (and b!7224466 c!1340329) b!7224465))

(assert (= (and b!7224466 (not c!1340329)) b!7224458))

(assert (= (and b!7224465 res!2931869) b!7224463))

(assert (= (and b!7224458 c!1340328) b!7224461))

(assert (= (and b!7224458 (not c!1340328)) b!7224462))

(assert (= (and b!7224461 res!2931870) b!7224460))

(assert (= (and b!7224462 (not res!2931868)) b!7224459))

(assert (= (and b!7224459 res!2931872) b!7224464))

(assert (= (or b!7224461 b!7224464) bm!657524))

(assert (= (or b!7224460 b!7224459) bm!657525))

(assert (= (or b!7224463 bm!657524) bm!657523))

(declare-fun m!7894826 () Bool)

(assert (=> bm!657523 m!7894826))

(declare-fun m!7894828 () Bool)

(assert (=> b!7224465 m!7894828))

(declare-fun m!7894830 () Bool)

(assert (=> bm!657525 m!7894830))

(assert (=> bs!1901671 d!2244078))

(declare-fun d!2244084 () Bool)

(assert (=> d!2244084 (= (nullable!7806 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (nullableFct!3059 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun bs!1901719 () Bool)

(assert (= bs!1901719 d!2244084))

(declare-fun m!7894832 () Bool)

(assert (=> bs!1901719 m!7894832))

(assert (=> b!7224193 d!2244084))

(assert (=> d!2243976 d!2243972))

(assert (=> d!2243976 d!2243974))

(declare-fun d!2244086 () Bool)

(declare-fun res!2931874 () Bool)

(declare-fun e!4330887 () Bool)

(assert (=> d!2244086 (=> res!2931874 e!4330887)))

(assert (=> d!2244086 (= res!2931874 ((_ is Nil!69791) (t!383944 (exprs!7851 c!10544))))))

(assert (=> d!2244086 (= (forall!17221 (t!383944 (exprs!7851 c!10544)) lambda!438336) e!4330887)))

(declare-fun b!7224478 () Bool)

(declare-fun e!4330888 () Bool)

(assert (=> b!7224478 (= e!4330887 e!4330888)))

(declare-fun res!2931875 () Bool)

(assert (=> b!7224478 (=> (not res!2931875) (not e!4330888))))

(assert (=> b!7224478 (= res!2931875 (dynLambda!28425 lambda!438336 (h!76239 (t!383944 (exprs!7851 c!10544)))))))

(declare-fun b!7224479 () Bool)

(assert (=> b!7224479 (= e!4330888 (forall!17221 (t!383944 (t!383944 (exprs!7851 c!10544))) lambda!438336))))

(assert (= (and d!2244086 (not res!2931874)) b!7224478))

(assert (= (and b!7224478 res!2931875) b!7224479))

(declare-fun b_lambda!276547 () Bool)

(assert (=> (not b_lambda!276547) (not b!7224478)))

(declare-fun m!7894840 () Bool)

(assert (=> b!7224478 m!7894840))

(declare-fun m!7894842 () Bool)

(assert (=> b!7224479 m!7894842))

(assert (=> b!7224256 d!2244086))

(declare-fun b!7224489 () Bool)

(declare-fun e!4330896 () (InoxSet Context!14702))

(declare-fun call!657544 () (InoxSet Context!14702))

(declare-fun call!657545 () (InoxSet Context!14702))

(assert (=> b!7224489 (= e!4330896 ((_ map or) call!657544 call!657545))))

(declare-fun b!7224490 () Bool)

(declare-fun c!1340341 () Bool)

(assert (=> b!7224490 (= c!1340341 ((_ is Star!18399) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun e!4330898 () (InoxSet Context!14702))

(declare-fun e!4330901 () (InoxSet Context!14702))

(assert (=> b!7224490 (= e!4330898 e!4330901)))

(declare-fun c!1340339 () Bool)

(declare-fun d!2244088 () Bool)

(assert (=> d!2244088 (= c!1340339 (and ((_ is ElementMatch!18399) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (= (c!1340227 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) lt!2571752)))))

(declare-fun e!4330900 () (InoxSet Context!14702))

(assert (=> d!2244088 (= (derivationStepZipperDown!2533 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) lt!2571752) e!4330900)))

(declare-fun bm!657535 () Bool)

(declare-fun call!657543 () (InoxSet Context!14702))

(declare-fun call!657540 () (InoxSet Context!14702))

(assert (=> bm!657535 (= call!657543 call!657540)))

(declare-fun b!7224491 () Bool)

(declare-fun e!4330899 () Bool)

(assert (=> b!7224491 (= e!4330899 (nullable!7806 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun b!7224492 () Bool)

(assert (=> b!7224492 (= e!4330900 e!4330896)))

(declare-fun c!1340338 () Bool)

(assert (=> b!7224492 (= c!1340338 ((_ is Union!18399) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun b!7224493 () Bool)

(assert (=> b!7224493 (= e!4330900 (store ((as const (Array Context!14702 Bool)) false) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) true))))

(declare-fun bm!657536 () Bool)

(declare-fun call!657542 () List!69915)

(declare-fun call!657541 () List!69915)

(assert (=> bm!657536 (= call!657542 call!657541)))

(declare-fun b!7224494 () Bool)

(assert (=> b!7224494 (= e!4330901 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340337 () Bool)

(declare-fun bm!657537 () Bool)

(declare-fun c!1340340 () Bool)

(assert (=> bm!657537 (= call!657545 (derivationStepZipperDown!2533 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))) (ite (or c!1340338 c!1340337) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657542)) lt!2571752))))

(declare-fun b!7224495 () Bool)

(assert (=> b!7224495 (= c!1340337 e!4330899)))

(declare-fun res!2931881 () Bool)

(assert (=> b!7224495 (=> (not res!2931881) (not e!4330899))))

(assert (=> b!7224495 (= res!2931881 ((_ is Concat!27244) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun e!4330897 () (InoxSet Context!14702))

(assert (=> b!7224495 (= e!4330896 e!4330897)))

(declare-fun bm!657538 () Bool)

(assert (=> bm!657538 (= call!657541 ($colon$colon!2855 (exprs!7851 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473))) (ite (or c!1340337 c!1340340) (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun b!7224496 () Bool)

(assert (=> b!7224496 (= e!4330897 e!4330898)))

(assert (=> b!7224496 (= c!1340340 ((_ is Concat!27244) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun b!7224497 () Bool)

(assert (=> b!7224497 (= e!4330901 call!657543)))

(declare-fun bm!657539 () Bool)

(assert (=> bm!657539 (= call!657544 (derivationStepZipperDown!2533 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) (ite c!1340338 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657541)) lt!2571752))))

(declare-fun b!7224498 () Bool)

(assert (=> b!7224498 (= e!4330897 ((_ map or) call!657544 call!657540))))

(declare-fun b!7224499 () Bool)

(assert (=> b!7224499 (= e!4330898 call!657543)))

(declare-fun bm!657540 () Bool)

(assert (=> bm!657540 (= call!657540 call!657545)))

(assert (= (and d!2244088 c!1340339) b!7224493))

(assert (= (and d!2244088 (not c!1340339)) b!7224492))

(assert (= (and b!7224492 c!1340338) b!7224489))

(assert (= (and b!7224492 (not c!1340338)) b!7224495))

(assert (= (and b!7224495 res!2931881) b!7224491))

(assert (= (and b!7224495 c!1340337) b!7224498))

(assert (= (and b!7224495 (not c!1340337)) b!7224496))

(assert (= (and b!7224496 c!1340340) b!7224499))

(assert (= (and b!7224496 (not c!1340340)) b!7224490))

(assert (= (and b!7224490 c!1340341) b!7224497))

(assert (= (and b!7224490 (not c!1340341)) b!7224494))

(assert (= (or b!7224499 b!7224497) bm!657536))

(assert (= (or b!7224499 b!7224497) bm!657535))

(assert (= (or b!7224498 bm!657535) bm!657540))

(assert (= (or b!7224498 bm!657536) bm!657538))

(assert (= (or b!7224489 b!7224498) bm!657539))

(assert (= (or b!7224489 bm!657540) bm!657537))

(declare-fun m!7894856 () Bool)

(assert (=> bm!657537 m!7894856))

(declare-fun m!7894860 () Bool)

(assert (=> b!7224491 m!7894860))

(declare-fun m!7894864 () Bool)

(assert (=> bm!657539 m!7894864))

(declare-fun m!7894866 () Bool)

(assert (=> bm!657538 m!7894866))

(declare-fun m!7894868 () Bool)

(assert (=> b!7224493 m!7894868))

(assert (=> bm!657471 d!2244088))

(declare-fun d!2244098 () Bool)

(declare-fun lt!2571782 () Bool)

(assert (=> d!2244098 (= lt!2571782 (select (content!14341 (t!383946 lt!2571755)) (h!76241 lt!2571755)))))

(declare-fun e!4330926 () Bool)

(assert (=> d!2244098 (= lt!2571782 e!4330926)))

(declare-fun res!2931890 () Bool)

(assert (=> d!2244098 (=> (not res!2931890) (not e!4330926))))

(assert (=> d!2244098 (= res!2931890 ((_ is Cons!69793) (t!383946 lt!2571755)))))

(assert (=> d!2244098 (= (contains!20734 (t!383946 lt!2571755) (h!76241 lt!2571755)) lt!2571782)))

(declare-fun b!7224555 () Bool)

(declare-fun e!4330925 () Bool)

(assert (=> b!7224555 (= e!4330926 e!4330925)))

(declare-fun res!2931891 () Bool)

(assert (=> b!7224555 (=> res!2931891 e!4330925)))

(assert (=> b!7224555 (= res!2931891 (= (h!76241 (t!383946 lt!2571755)) (h!76241 lt!2571755)))))

(declare-fun b!7224556 () Bool)

(assert (=> b!7224556 (= e!4330925 (contains!20734 (t!383946 (t!383946 lt!2571755)) (h!76241 lt!2571755)))))

(assert (= (and d!2244098 res!2931890) b!7224555))

(assert (= (and b!7224555 (not res!2931891)) b!7224556))

(assert (=> d!2244098 m!7894628))

(declare-fun m!7894876 () Bool)

(assert (=> d!2244098 m!7894876))

(declare-fun m!7894878 () Bool)

(assert (=> b!7224556 m!7894878))

(assert (=> b!7224209 d!2244098))

(declare-fun d!2244100 () Bool)

(declare-fun res!2931892 () Bool)

(declare-fun e!4330929 () Bool)

(assert (=> d!2244100 (=> res!2931892 e!4330929)))

(assert (=> d!2244100 (= res!2931892 ((_ is Nil!69791) (t!383944 (exprs!7851 empty!3071))))))

(assert (=> d!2244100 (= (forall!17221 (t!383944 (exprs!7851 empty!3071)) lambda!438335) e!4330929)))

(declare-fun b!7224559 () Bool)

(declare-fun e!4330930 () Bool)

(assert (=> b!7224559 (= e!4330929 e!4330930)))

(declare-fun res!2931893 () Bool)

(assert (=> b!7224559 (=> (not res!2931893) (not e!4330930))))

(assert (=> b!7224559 (= res!2931893 (dynLambda!28425 lambda!438335 (h!76239 (t!383944 (exprs!7851 empty!3071)))))))

(declare-fun b!7224560 () Bool)

(assert (=> b!7224560 (= e!4330930 (forall!17221 (t!383944 (t!383944 (exprs!7851 empty!3071))) lambda!438335))))

(assert (= (and d!2244100 (not res!2931892)) b!7224559))

(assert (= (and b!7224559 res!2931893) b!7224560))

(declare-fun b_lambda!276549 () Bool)

(assert (=> (not b_lambda!276549) (not b!7224559)))

(declare-fun m!7894880 () Bool)

(assert (=> b!7224559 m!7894880))

(declare-fun m!7894882 () Bool)

(assert (=> b!7224560 m!7894882))

(assert (=> b!7224190 d!2244100))

(declare-fun bs!1901721 () Bool)

(declare-fun d!2244102 () Bool)

(assert (= bs!1901721 (and d!2244102 d!2243980)))

(declare-fun lambda!438362 () Int)

(assert (=> bs!1901721 (= lambda!438362 lambda!438351)))

(declare-fun bs!1901722 () Bool)

(assert (= bs!1901722 (and d!2244102 d!2243910)))

(assert (=> bs!1901722 (= lambda!438362 lambda!438336)))

(declare-fun bs!1901723 () Bool)

(assert (= bs!1901723 (and d!2244102 d!2244046)))

(assert (=> bs!1901723 (= lambda!438362 lambda!438358)))

(declare-fun bs!1901724 () Bool)

(assert (= bs!1901724 (and d!2244102 d!2243912)))

(assert (=> bs!1901724 (= lambda!438362 lambda!438337)))

(declare-fun bs!1901725 () Bool)

(assert (= bs!1901725 (and d!2244102 d!2244076)))

(assert (=> bs!1901725 (= lambda!438362 lambda!438361)))

(declare-fun bs!1901726 () Bool)

(assert (= bs!1901726 (and d!2244102 d!2243908)))

(assert (=> bs!1901726 (= lambda!438362 lambda!438335)))

(assert (=> d!2244102 (= (inv!89019 setElem!53535) (forall!17221 (exprs!7851 setElem!53535) lambda!438362))))

(declare-fun bs!1901727 () Bool)

(assert (= bs!1901727 d!2244102))

(declare-fun m!7894886 () Bool)

(assert (=> bs!1901727 m!7894886))

(assert (=> setNonEmpty!53535 d!2244102))

(declare-fun d!2244104 () Bool)

(declare-fun res!2931894 () Bool)

(declare-fun e!4330937 () Bool)

(assert (=> d!2244104 (=> res!2931894 e!4330937)))

(assert (=> d!2244104 (= res!2931894 ((_ is Nil!69793) (t!383946 lt!2571755)))))

(assert (=> d!2244104 (= (noDuplicate!2912 (t!383946 lt!2571755)) e!4330937)))

(declare-fun b!7224573 () Bool)

(declare-fun e!4330938 () Bool)

(assert (=> b!7224573 (= e!4330937 e!4330938)))

(declare-fun res!2931895 () Bool)

(assert (=> b!7224573 (=> (not res!2931895) (not e!4330938))))

(assert (=> b!7224573 (= res!2931895 (not (contains!20734 (t!383946 (t!383946 lt!2571755)) (h!76241 (t!383946 lt!2571755)))))))

(declare-fun b!7224574 () Bool)

(assert (=> b!7224574 (= e!4330938 (noDuplicate!2912 (t!383946 (t!383946 lt!2571755))))))

(assert (= (and d!2244104 (not res!2931894)) b!7224573))

(assert (= (and b!7224573 res!2931895) b!7224574))

(declare-fun m!7894890 () Bool)

(assert (=> b!7224573 m!7894890))

(declare-fun m!7894892 () Bool)

(assert (=> b!7224574 m!7894892))

(assert (=> b!7224210 d!2244104))

(declare-fun c!1340342 () Bool)

(declare-fun bm!657541 () Bool)

(declare-fun call!657547 () Bool)

(declare-fun c!1340343 () Bool)

(assert (=> bm!657541 (= call!657547 (validRegex!9493 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))))))

(declare-fun b!7224579 () Bool)

(declare-fun e!4330945 () Bool)

(declare-fun e!4330946 () Bool)

(assert (=> b!7224579 (= e!4330945 e!4330946)))

(assert (=> b!7224579 (= c!1340342 ((_ is Union!18399) (h!76239 (exprs!7851 empty!3071))))))

(declare-fun b!7224580 () Bool)

(declare-fun e!4330940 () Bool)

(declare-fun e!4330941 () Bool)

(assert (=> b!7224580 (= e!4330940 e!4330941)))

(declare-fun res!2931900 () Bool)

(assert (=> b!7224580 (=> (not res!2931900) (not e!4330941))))

(declare-fun call!657548 () Bool)

(assert (=> b!7224580 (= res!2931900 call!657548)))

(declare-fun b!7224581 () Bool)

(declare-fun e!4330943 () Bool)

(assert (=> b!7224581 (= e!4330943 call!657548)))

(declare-fun b!7224582 () Bool)

(declare-fun res!2931898 () Bool)

(assert (=> b!7224582 (=> (not res!2931898) (not e!4330943))))

(declare-fun call!657546 () Bool)

(assert (=> b!7224582 (= res!2931898 call!657546)))

(assert (=> b!7224582 (= e!4330946 e!4330943)))

(declare-fun b!7224583 () Bool)

(declare-fun res!2931896 () Bool)

(assert (=> b!7224583 (=> res!2931896 e!4330940)))

(assert (=> b!7224583 (= res!2931896 (not ((_ is Concat!27244) (h!76239 (exprs!7851 empty!3071)))))))

(assert (=> b!7224583 (= e!4330946 e!4330940)))

(declare-fun b!7224584 () Bool)

(declare-fun e!4330942 () Bool)

(assert (=> b!7224584 (= e!4330942 call!657547)))

(declare-fun b!7224585 () Bool)

(assert (=> b!7224585 (= e!4330941 call!657546)))

(declare-fun bm!657542 () Bool)

(assert (=> bm!657542 (= call!657546 call!657547)))

(declare-fun d!2244106 () Bool)

(declare-fun res!2931899 () Bool)

(declare-fun e!4330944 () Bool)

(assert (=> d!2244106 (=> res!2931899 e!4330944)))

(assert (=> d!2244106 (= res!2931899 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 empty!3071))))))

(assert (=> d!2244106 (= (validRegex!9493 (h!76239 (exprs!7851 empty!3071))) e!4330944)))

(declare-fun b!7224586 () Bool)

(assert (=> b!7224586 (= e!4330945 e!4330942)))

(declare-fun res!2931897 () Bool)

(assert (=> b!7224586 (= res!2931897 (not (nullable!7806 (reg!18728 (h!76239 (exprs!7851 empty!3071))))))))

(assert (=> b!7224586 (=> (not res!2931897) (not e!4330942))))

(declare-fun bm!657543 () Bool)

(assert (=> bm!657543 (= call!657548 (validRegex!9493 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))))))

(declare-fun b!7224587 () Bool)

(assert (=> b!7224587 (= e!4330944 e!4330945)))

(assert (=> b!7224587 (= c!1340343 ((_ is Star!18399) (h!76239 (exprs!7851 empty!3071))))))

(assert (= (and d!2244106 (not res!2931899)) b!7224587))

(assert (= (and b!7224587 c!1340343) b!7224586))

(assert (= (and b!7224587 (not c!1340343)) b!7224579))

(assert (= (and b!7224586 res!2931897) b!7224584))

(assert (= (and b!7224579 c!1340342) b!7224582))

(assert (= (and b!7224579 (not c!1340342)) b!7224583))

(assert (= (and b!7224582 res!2931898) b!7224581))

(assert (= (and b!7224583 (not res!2931896)) b!7224580))

(assert (= (and b!7224580 res!2931900) b!7224585))

(assert (= (or b!7224582 b!7224585) bm!657542))

(assert (= (or b!7224581 b!7224580) bm!657543))

(assert (= (or b!7224584 bm!657542) bm!657541))

(declare-fun m!7894894 () Bool)

(assert (=> bm!657541 m!7894894))

(declare-fun m!7894896 () Bool)

(assert (=> b!7224586 m!7894896))

(declare-fun m!7894898 () Bool)

(assert (=> bm!657543 m!7894898))

(assert (=> bs!1901672 d!2244106))

(declare-fun bs!1901728 () Bool)

(declare-fun d!2244108 () Bool)

(assert (= bs!1901728 (and d!2244108 d!2243910)))

(declare-fun lambda!438363 () Int)

(assert (=> bs!1901728 (= lambda!438363 lambda!438336)))

(declare-fun bs!1901729 () Bool)

(assert (= bs!1901729 (and d!2244108 d!2244046)))

(assert (=> bs!1901729 (= lambda!438363 lambda!438358)))

(declare-fun bs!1901730 () Bool)

(assert (= bs!1901730 (and d!2244108 d!2243912)))

(assert (=> bs!1901730 (= lambda!438363 lambda!438337)))

(declare-fun bs!1901731 () Bool)

(assert (= bs!1901731 (and d!2244108 d!2244076)))

(assert (=> bs!1901731 (= lambda!438363 lambda!438361)))

(declare-fun bs!1901732 () Bool)

(assert (= bs!1901732 (and d!2244108 d!2243908)))

(assert (=> bs!1901732 (= lambda!438363 lambda!438335)))

(declare-fun bs!1901733 () Bool)

(assert (= bs!1901733 (and d!2244108 d!2244102)))

(assert (=> bs!1901733 (= lambda!438363 lambda!438362)))

(declare-fun bs!1901734 () Bool)

(assert (= bs!1901734 (and d!2244108 d!2243980)))

(assert (=> bs!1901734 (= lambda!438363 lambda!438351)))

(assert (=> d!2244108 (= (inv!89019 setElem!53536) (forall!17221 (exprs!7851 setElem!53536) lambda!438363))))

(declare-fun bs!1901735 () Bool)

(assert (= bs!1901735 d!2244108))

(declare-fun m!7894902 () Bool)

(assert (=> bs!1901735 m!7894902))

(assert (=> setNonEmpty!53536 d!2244108))

(declare-fun d!2244110 () Bool)

(declare-fun res!2931901 () Bool)

(declare-fun e!4330956 () Bool)

(assert (=> d!2244110 (=> res!2931901 e!4330956)))

(assert (=> d!2244110 (= res!2931901 ((_ is Nil!69793) res!2931777))))

(assert (=> d!2244110 (= (noDuplicate!2912 res!2931777) e!4330956)))

(declare-fun b!7224615 () Bool)

(declare-fun e!4330957 () Bool)

(assert (=> b!7224615 (= e!4330956 e!4330957)))

(declare-fun res!2931902 () Bool)

(assert (=> b!7224615 (=> (not res!2931902) (not e!4330957))))

(assert (=> b!7224615 (= res!2931902 (not (contains!20734 (t!383946 res!2931777) (h!76241 res!2931777))))))

(declare-fun b!7224616 () Bool)

(assert (=> b!7224616 (= e!4330957 (noDuplicate!2912 (t!383946 res!2931777)))))

(assert (= (and d!2244110 (not res!2931901)) b!7224615))

(assert (= (and b!7224615 res!2931902) b!7224616))

(declare-fun m!7894904 () Bool)

(assert (=> b!7224615 m!7894904))

(declare-fun m!7894906 () Bool)

(assert (=> b!7224616 m!7894906))

(assert (=> d!2243986 d!2244110))

(declare-fun bs!1901736 () Bool)

(declare-fun d!2244112 () Bool)

(assert (= bs!1901736 (and d!2244112 b!7223988)))

(declare-fun lambda!438364 () Int)

(assert (=> bs!1901736 (not (= lambda!438364 lambda!438318))))

(declare-fun bs!1901737 () Bool)

(assert (= bs!1901737 (and d!2244112 d!2243894)))

(assert (=> bs!1901737 (not (= lambda!438364 lambda!438332))))

(declare-fun bs!1901738 () Bool)

(assert (= bs!1901738 (and d!2244112 d!2243972)))

(assert (=> bs!1901738 (= (= lambda!438332 lambda!438318) (= lambda!438364 lambda!438350))))

(declare-fun bs!1901740 () Bool)

(assert (= bs!1901740 (and d!2244112 d!2243996)))

(assert (=> bs!1901740 (not (= lambda!438364 lambda!438354))))

(assert (=> d!2244112 true))

(assert (=> d!2244112 (< (dynLambda!28423 order!28745 lambda!438332) (dynLambda!28423 order!28745 lambda!438364))))

(assert (=> d!2244112 (= (exists!4104 (toList!11334 z!3517) lambda!438332) (not (forall!17223 (toList!11334 z!3517) lambda!438364)))))

(declare-fun bs!1901743 () Bool)

(assert (= bs!1901743 d!2244112))

(assert (=> bs!1901743 m!7894480))

(declare-fun m!7894912 () Bool)

(assert (=> bs!1901743 m!7894912))

(assert (=> d!2243994 d!2244112))

(assert (=> d!2243994 d!2243974))

(declare-fun d!2244120 () Bool)

(declare-fun res!2931903 () Bool)

(assert (=> d!2244120 (= res!2931903 (exists!4104 (toList!11334 z!3517) lambda!438332))))

(assert (=> d!2244120 true))

(assert (=> d!2244120 (= (choose!55454 z!3517 lambda!438332) res!2931903)))

(declare-fun bs!1901746 () Bool)

(assert (= bs!1901746 d!2244120))

(assert (=> bs!1901746 m!7894480))

(assert (=> bs!1901746 m!7894480))

(assert (=> bs!1901746 m!7894658))

(assert (=> d!2243994 d!2244120))

(declare-fun d!2244126 () Bool)

(declare-fun res!2931908 () Bool)

(declare-fun e!4330966 () Bool)

(assert (=> d!2244126 (=> res!2931908 e!4330966)))

(assert (=> d!2244126 (= res!2931908 ((_ is Nil!69793) (toList!11334 z!3517)))))

(assert (=> d!2244126 (= (forall!17223 (toList!11334 z!3517) lambda!438350) e!4330966)))

(declare-fun b!7224625 () Bool)

(declare-fun e!4330967 () Bool)

(assert (=> b!7224625 (= e!4330966 e!4330967)))

(declare-fun res!2931909 () Bool)

(assert (=> b!7224625 (=> (not res!2931909) (not e!4330967))))

(declare-fun dynLambda!28426 (Int Context!14702) Bool)

(assert (=> b!7224625 (= res!2931909 (dynLambda!28426 lambda!438350 (h!76241 (toList!11334 z!3517))))))

(declare-fun b!7224626 () Bool)

(assert (=> b!7224626 (= e!4330967 (forall!17223 (t!383946 (toList!11334 z!3517)) lambda!438350))))

(assert (= (and d!2244126 (not res!2931908)) b!7224625))

(assert (= (and b!7224625 res!2931909) b!7224626))

(declare-fun b_lambda!276563 () Bool)

(assert (=> (not b_lambda!276563) (not b!7224625)))

(declare-fun m!7894920 () Bool)

(assert (=> b!7224625 m!7894920))

(declare-fun m!7894922 () Bool)

(assert (=> b!7224626 m!7894922))

(assert (=> d!2243972 d!2244126))

(declare-fun b!7224641 () Bool)

(declare-fun e!4330982 () Bool)

(declare-fun e!4330983 () Bool)

(assert (=> b!7224641 (= e!4330982 e!4330983)))

(declare-fun c!1340346 () Bool)

(assert (=> b!7224641 (= c!1340346 ((_ is Union!18399) (h!76239 (exprs!7851 c!10544))))))

(declare-fun bm!657548 () Bool)

(declare-fun call!657554 () Bool)

(assert (=> bm!657548 (= call!657554 (nullable!7806 (ite c!1340346 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun b!7224642 () Bool)

(declare-fun e!4330981 () Bool)

(declare-fun call!657553 () Bool)

(assert (=> b!7224642 (= e!4330981 call!657553)))

(declare-fun b!7224643 () Bool)

(declare-fun e!4330985 () Bool)

(assert (=> b!7224643 (= e!4330983 e!4330985)))

(declare-fun res!2931923 () Bool)

(assert (=> b!7224643 (= res!2931923 call!657553)))

(assert (=> b!7224643 (=> (not res!2931923) (not e!4330985))))

(declare-fun b!7224644 () Bool)

(declare-fun e!4330980 () Bool)

(declare-fun e!4330984 () Bool)

(assert (=> b!7224644 (= e!4330980 e!4330984)))

(declare-fun res!2931920 () Bool)

(assert (=> b!7224644 (=> (not res!2931920) (not e!4330984))))

(assert (=> b!7224644 (= res!2931920 (and (not ((_ is EmptyLang!18399) (h!76239 (exprs!7851 c!10544)))) (not ((_ is ElementMatch!18399) (h!76239 (exprs!7851 c!10544))))))))

(declare-fun d!2244128 () Bool)

(declare-fun res!2931924 () Bool)

(assert (=> d!2244128 (=> res!2931924 e!4330980)))

(assert (=> d!2244128 (= res!2931924 ((_ is EmptyExpr!18399) (h!76239 (exprs!7851 c!10544))))))

(assert (=> d!2244128 (= (nullableFct!3059 (h!76239 (exprs!7851 c!10544))) e!4330980)))

(declare-fun b!7224645 () Bool)

(assert (=> b!7224645 (= e!4330985 call!657554)))

(declare-fun b!7224646 () Bool)

(assert (=> b!7224646 (= e!4330983 e!4330981)))

(declare-fun res!2931922 () Bool)

(assert (=> b!7224646 (= res!2931922 call!657554)))

(assert (=> b!7224646 (=> res!2931922 e!4330981)))

(declare-fun bm!657549 () Bool)

(assert (=> bm!657549 (= call!657553 (nullable!7806 (ite c!1340346 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun b!7224647 () Bool)

(assert (=> b!7224647 (= e!4330984 e!4330982)))

(declare-fun res!2931921 () Bool)

(assert (=> b!7224647 (=> res!2931921 e!4330982)))

(assert (=> b!7224647 (= res!2931921 ((_ is Star!18399) (h!76239 (exprs!7851 c!10544))))))

(assert (= (and d!2244128 (not res!2931924)) b!7224644))

(assert (= (and b!7224644 res!2931920) b!7224647))

(assert (= (and b!7224647 (not res!2931921)) b!7224641))

(assert (= (and b!7224641 c!1340346) b!7224646))

(assert (= (and b!7224641 (not c!1340346)) b!7224643))

(assert (= (and b!7224646 (not res!2931922)) b!7224642))

(assert (= (and b!7224643 res!2931923) b!7224645))

(assert (= (or b!7224642 b!7224643) bm!657549))

(assert (= (or b!7224646 b!7224645) bm!657548))

(declare-fun m!7894924 () Bool)

(assert (=> bm!657548 m!7894924))

(declare-fun m!7894926 () Bool)

(assert (=> bm!657549 m!7894926))

(assert (=> d!2243966 d!2244128))

(declare-fun d!2244130 () Bool)

(assert (=> d!2244130 (= (nullable!7806 (regOne!37310 (h!76239 (exprs!7851 c!10544)))) (nullableFct!3059 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))

(declare-fun bs!1901747 () Bool)

(assert (= bs!1901747 d!2244130))

(declare-fun m!7894928 () Bool)

(assert (=> bs!1901747 m!7894928))

(assert (=> b!7224246 d!2244130))

(declare-fun d!2244132 () Bool)

(declare-fun res!2931925 () Bool)

(declare-fun e!4330986 () Bool)

(assert (=> d!2244132 (=> res!2931925 e!4330986)))

(assert (=> d!2244132 (= res!2931925 ((_ is Nil!69793) lt!2571773))))

(assert (=> d!2244132 (= (noDuplicate!2912 lt!2571773) e!4330986)))

(declare-fun b!7224648 () Bool)

(declare-fun e!4330987 () Bool)

(assert (=> b!7224648 (= e!4330986 e!4330987)))

(declare-fun res!2931926 () Bool)

(assert (=> b!7224648 (=> (not res!2931926) (not e!4330987))))

(assert (=> b!7224648 (= res!2931926 (not (contains!20734 (t!383946 lt!2571773) (h!76241 lt!2571773))))))

(declare-fun b!7224649 () Bool)

(assert (=> b!7224649 (= e!4330987 (noDuplicate!2912 (t!383946 lt!2571773)))))

(assert (= (and d!2244132 (not res!2931925)) b!7224648))

(assert (= (and b!7224648 res!2931926) b!7224649))

(declare-fun m!7894930 () Bool)

(assert (=> b!7224648 m!7894930))

(declare-fun m!7894932 () Bool)

(assert (=> b!7224649 m!7894932))

(assert (=> d!2243974 d!2244132))

(declare-fun d!2244134 () Bool)

(declare-fun e!4330988 () Bool)

(assert (=> d!2244134 e!4330988))

(declare-fun res!2931928 () Bool)

(assert (=> d!2244134 (=> (not res!2931928) (not e!4330988))))

(declare-fun res!2931927 () List!69917)

(assert (=> d!2244134 (= res!2931928 (noDuplicate!2912 res!2931927))))

(declare-fun e!4330989 () Bool)

(assert (=> d!2244134 e!4330989))

(assert (=> d!2244134 (= (choose!55453 z!3517) res!2931927)))

(declare-fun b!7224651 () Bool)

(declare-fun e!4330990 () Bool)

(declare-fun tp!2030929 () Bool)

(assert (=> b!7224651 (= e!4330990 tp!2030929)))

(declare-fun tp!2030930 () Bool)

(declare-fun b!7224650 () Bool)

(assert (=> b!7224650 (= e!4330989 (and (inv!89019 (h!76241 res!2931927)) e!4330990 tp!2030930))))

(declare-fun b!7224652 () Bool)

(assert (=> b!7224652 (= e!4330988 (= (content!14341 res!2931927) z!3517))))

(assert (= b!7224650 b!7224651))

(assert (= (and d!2244134 ((_ is Cons!69793) res!2931927)) b!7224650))

(assert (= (and d!2244134 res!2931928) b!7224652))

(declare-fun m!7894934 () Bool)

(assert (=> d!2244134 m!7894934))

(declare-fun m!7894936 () Bool)

(assert (=> b!7224650 m!7894936))

(declare-fun m!7894938 () Bool)

(assert (=> b!7224652 m!7894938))

(assert (=> d!2243974 d!2244134))

(declare-fun d!2244136 () Bool)

(assert (=> d!2244136 true))

(declare-fun setRes!53540 () Bool)

(assert (=> d!2244136 setRes!53540))

(declare-fun condSetEmpty!53540 () Bool)

(declare-fun res!2931929 () (InoxSet Context!14702))

(assert (=> d!2244136 (= condSetEmpty!53540 (= res!2931929 ((as const (Array Context!14702 Bool)) false)))))

(assert (=> d!2244136 (= (choose!55452 z!3517 lambda!438340) res!2931929)))

(declare-fun setIsEmpty!53540 () Bool)

(assert (=> setIsEmpty!53540 setRes!53540))

(declare-fun setNonEmpty!53540 () Bool)

(declare-fun e!4330991 () Bool)

(declare-fun tp!2030932 () Bool)

(declare-fun setElem!53540 () Context!14702)

(assert (=> setNonEmpty!53540 (= setRes!53540 (and tp!2030932 (inv!89019 setElem!53540) e!4330991))))

(declare-fun setRest!53540 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53540 (= res!2931929 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53540 true) setRest!53540))))

(declare-fun b!7224653 () Bool)

(declare-fun tp!2030931 () Bool)

(assert (=> b!7224653 (= e!4330991 tp!2030931)))

(assert (= (and d!2244136 condSetEmpty!53540) setIsEmpty!53540))

(assert (= (and d!2244136 (not condSetEmpty!53540)) setNonEmpty!53540))

(assert (= setNonEmpty!53540 b!7224653))

(declare-fun m!7894940 () Bool)

(assert (=> setNonEmpty!53540 m!7894940))

(assert (=> d!2243978 d!2244136))

(declare-fun d!2244138 () Bool)

(declare-fun c!1340347 () Bool)

(assert (=> d!2244138 (= c!1340347 ((_ is Nil!69793) lt!2571773))))

(declare-fun e!4330992 () (InoxSet Context!14702))

(assert (=> d!2244138 (= (content!14341 lt!2571773) e!4330992)))

(declare-fun b!7224654 () Bool)

(assert (=> b!7224654 (= e!4330992 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224655 () Bool)

(assert (=> b!7224655 (= e!4330992 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 lt!2571773) true) (content!14341 (t!383946 lt!2571773))))))

(assert (= (and d!2244138 c!1340347) b!7224654))

(assert (= (and d!2244138 (not c!1340347)) b!7224655))

(declare-fun m!7894942 () Bool)

(assert (=> b!7224655 m!7894942))

(declare-fun m!7894944 () Bool)

(assert (=> b!7224655 m!7894944))

(assert (=> b!7224198 d!2244138))

(declare-fun call!657556 () Bool)

(declare-fun bm!657550 () Bool)

(declare-fun c!1340348 () Bool)

(declare-fun c!1340349 () Bool)

(assert (=> bm!657550 (= call!657556 (validRegex!9493 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))))))

(declare-fun b!7224656 () Bool)

(declare-fun e!4330998 () Bool)

(declare-fun e!4330999 () Bool)

(assert (=> b!7224656 (= e!4330998 e!4330999)))

(assert (=> b!7224656 (= c!1340348 ((_ is Union!18399) (h!76239 (exprs!7851 setElem!53522))))))

(declare-fun b!7224657 () Bool)

(declare-fun e!4330993 () Bool)

(declare-fun e!4330994 () Bool)

(assert (=> b!7224657 (= e!4330993 e!4330994)))

(declare-fun res!2931934 () Bool)

(assert (=> b!7224657 (=> (not res!2931934) (not e!4330994))))

(declare-fun call!657557 () Bool)

(assert (=> b!7224657 (= res!2931934 call!657557)))

(declare-fun b!7224658 () Bool)

(declare-fun e!4330996 () Bool)

(assert (=> b!7224658 (= e!4330996 call!657557)))

(declare-fun b!7224659 () Bool)

(declare-fun res!2931932 () Bool)

(assert (=> b!7224659 (=> (not res!2931932) (not e!4330996))))

(declare-fun call!657555 () Bool)

(assert (=> b!7224659 (= res!2931932 call!657555)))

(assert (=> b!7224659 (= e!4330999 e!4330996)))

(declare-fun b!7224660 () Bool)

(declare-fun res!2931930 () Bool)

(assert (=> b!7224660 (=> res!2931930 e!4330993)))

(assert (=> b!7224660 (= res!2931930 (not ((_ is Concat!27244) (h!76239 (exprs!7851 setElem!53522)))))))

(assert (=> b!7224660 (= e!4330999 e!4330993)))

(declare-fun b!7224661 () Bool)

(declare-fun e!4330995 () Bool)

(assert (=> b!7224661 (= e!4330995 call!657556)))

(declare-fun b!7224662 () Bool)

(assert (=> b!7224662 (= e!4330994 call!657555)))

(declare-fun bm!657551 () Bool)

(assert (=> bm!657551 (= call!657555 call!657556)))

(declare-fun d!2244140 () Bool)

(declare-fun res!2931933 () Bool)

(declare-fun e!4330997 () Bool)

(assert (=> d!2244140 (=> res!2931933 e!4330997)))

(assert (=> d!2244140 (= res!2931933 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 setElem!53522))))))

(assert (=> d!2244140 (= (validRegex!9493 (h!76239 (exprs!7851 setElem!53522))) e!4330997)))

(declare-fun b!7224663 () Bool)

(assert (=> b!7224663 (= e!4330998 e!4330995)))

(declare-fun res!2931931 () Bool)

(assert (=> b!7224663 (= res!2931931 (not (nullable!7806 (reg!18728 (h!76239 (exprs!7851 setElem!53522))))))))

(assert (=> b!7224663 (=> (not res!2931931) (not e!4330995))))

(declare-fun bm!657552 () Bool)

(assert (=> bm!657552 (= call!657557 (validRegex!9493 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))))))

(declare-fun b!7224664 () Bool)

(assert (=> b!7224664 (= e!4330997 e!4330998)))

(assert (=> b!7224664 (= c!1340349 ((_ is Star!18399) (h!76239 (exprs!7851 setElem!53522))))))

(assert (= (and d!2244140 (not res!2931933)) b!7224664))

(assert (= (and b!7224664 c!1340349) b!7224663))

(assert (= (and b!7224664 (not c!1340349)) b!7224656))

(assert (= (and b!7224663 res!2931931) b!7224661))

(assert (= (and b!7224656 c!1340348) b!7224659))

(assert (= (and b!7224656 (not c!1340348)) b!7224660))

(assert (= (and b!7224659 res!2931932) b!7224658))

(assert (= (and b!7224660 (not res!2931930)) b!7224657))

(assert (= (and b!7224657 res!2931934) b!7224662))

(assert (= (or b!7224659 b!7224662) bm!657551))

(assert (= (or b!7224658 b!7224657) bm!657552))

(assert (= (or b!7224661 bm!657551) bm!657550))

(declare-fun m!7894946 () Bool)

(assert (=> bm!657550 m!7894946))

(declare-fun m!7894948 () Bool)

(assert (=> b!7224663 m!7894948))

(declare-fun m!7894950 () Bool)

(assert (=> bm!657552 m!7894950))

(assert (=> bs!1901670 d!2244140))

(declare-fun d!2244142 () Bool)

(declare-fun res!2931935 () Bool)

(declare-fun e!4331000 () Bool)

(assert (=> d!2244142 (=> res!2931935 e!4331000)))

(assert (=> d!2244142 (= res!2931935 ((_ is Nil!69791) (t!383944 (exprs!7851 setElem!53522))))))

(assert (=> d!2244142 (= (forall!17221 (t!383944 (exprs!7851 setElem!53522)) lambda!438337) e!4331000)))

(declare-fun b!7224665 () Bool)

(declare-fun e!4331001 () Bool)

(assert (=> b!7224665 (= e!4331000 e!4331001)))

(declare-fun res!2931936 () Bool)

(assert (=> b!7224665 (=> (not res!2931936) (not e!4331001))))

(assert (=> b!7224665 (= res!2931936 (dynLambda!28425 lambda!438337 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))

(declare-fun b!7224666 () Bool)

(assert (=> b!7224666 (= e!4331001 (forall!17221 (t!383944 (t!383944 (exprs!7851 setElem!53522))) lambda!438337))))

(assert (= (and d!2244142 (not res!2931935)) b!7224665))

(assert (= (and b!7224665 res!2931936) b!7224666))

(declare-fun b_lambda!276565 () Bool)

(assert (=> (not b_lambda!276565) (not b!7224665)))

(declare-fun m!7894952 () Bool)

(assert (=> b!7224665 m!7894952))

(declare-fun m!7894954 () Bool)

(assert (=> b!7224666 m!7894954))

(assert (=> b!7224221 d!2244142))

(declare-fun e!4331002 () Bool)

(assert (=> b!7224276 (= tp!2030779 e!4331002)))

(declare-fun b!7224670 () Bool)

(declare-fun tp!2030934 () Bool)

(declare-fun tp!2030933 () Bool)

(assert (=> b!7224670 (= e!4331002 (and tp!2030934 tp!2030933))))

(declare-fun b!7224669 () Bool)

(declare-fun tp!2030935 () Bool)

(assert (=> b!7224669 (= e!4331002 tp!2030935)))

(declare-fun b!7224668 () Bool)

(declare-fun tp!2030936 () Bool)

(declare-fun tp!2030937 () Bool)

(assert (=> b!7224668 (= e!4331002 (and tp!2030936 tp!2030937))))

(declare-fun b!7224667 () Bool)

(assert (=> b!7224667 (= e!4331002 tp_is_empty!46355)))

(assert (= (and b!7224276 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (exprs!7851 empty!3071))))) b!7224667))

(assert (= (and b!7224276 ((_ is Concat!27244) (reg!18728 (h!76239 (exprs!7851 empty!3071))))) b!7224668))

(assert (= (and b!7224276 ((_ is Star!18399) (reg!18728 (h!76239 (exprs!7851 empty!3071))))) b!7224669))

(assert (= (and b!7224276 ((_ is Union!18399) (reg!18728 (h!76239 (exprs!7851 empty!3071))))) b!7224670))

(declare-fun e!4331003 () Bool)

(assert (=> b!7224287 (= tp!2030798 e!4331003)))

(declare-fun b!7224674 () Bool)

(declare-fun tp!2030939 () Bool)

(declare-fun tp!2030938 () Bool)

(assert (=> b!7224674 (= e!4331003 (and tp!2030939 tp!2030938))))

(declare-fun b!7224673 () Bool)

(declare-fun tp!2030940 () Bool)

(assert (=> b!7224673 (= e!4331003 tp!2030940)))

(declare-fun b!7224672 () Bool)

(declare-fun tp!2030941 () Bool)

(declare-fun tp!2030942 () Bool)

(assert (=> b!7224672 (= e!4331003 (and tp!2030941 tp!2030942))))

(declare-fun b!7224671 () Bool)

(assert (=> b!7224671 (= e!4331003 tp_is_empty!46355)))

(assert (= (and b!7224287 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224671))

(assert (= (and b!7224287 ((_ is Concat!27244) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224672))

(assert (= (and b!7224287 ((_ is Star!18399) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224673))

(assert (= (and b!7224287 ((_ is Union!18399) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224674))

(declare-fun e!4331004 () Bool)

(assert (=> b!7224287 (= tp!2030799 e!4331004)))

(declare-fun b!7224678 () Bool)

(declare-fun tp!2030944 () Bool)

(declare-fun tp!2030943 () Bool)

(assert (=> b!7224678 (= e!4331004 (and tp!2030944 tp!2030943))))

(declare-fun b!7224677 () Bool)

(declare-fun tp!2030945 () Bool)

(assert (=> b!7224677 (= e!4331004 tp!2030945)))

(declare-fun b!7224676 () Bool)

(declare-fun tp!2030946 () Bool)

(declare-fun tp!2030947 () Bool)

(assert (=> b!7224676 (= e!4331004 (and tp!2030946 tp!2030947))))

(declare-fun b!7224675 () Bool)

(assert (=> b!7224675 (= e!4331004 tp_is_empty!46355)))

(assert (= (and b!7224287 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224675))

(assert (= (and b!7224287 ((_ is Concat!27244) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224676))

(assert (= (and b!7224287 ((_ is Star!18399) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224677))

(assert (= (and b!7224287 ((_ is Union!18399) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522))))) b!7224678))

(declare-fun e!4331005 () Bool)

(assert (=> b!7224275 (= tp!2030780 e!4331005)))

(declare-fun b!7224682 () Bool)

(declare-fun tp!2030949 () Bool)

(declare-fun tp!2030948 () Bool)

(assert (=> b!7224682 (= e!4331005 (and tp!2030949 tp!2030948))))

(declare-fun b!7224681 () Bool)

(declare-fun tp!2030950 () Bool)

(assert (=> b!7224681 (= e!4331005 tp!2030950)))

(declare-fun b!7224680 () Bool)

(declare-fun tp!2030951 () Bool)

(declare-fun tp!2030952 () Bool)

(assert (=> b!7224680 (= e!4331005 (and tp!2030951 tp!2030952))))

(declare-fun b!7224679 () Bool)

(assert (=> b!7224679 (= e!4331005 tp_is_empty!46355)))

(assert (= (and b!7224275 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224679))

(assert (= (and b!7224275 ((_ is Concat!27244) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224680))

(assert (= (and b!7224275 ((_ is Star!18399) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224681))

(assert (= (and b!7224275 ((_ is Union!18399) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224682))

(declare-fun e!4331006 () Bool)

(assert (=> b!7224275 (= tp!2030781 e!4331006)))

(declare-fun b!7224686 () Bool)

(declare-fun tp!2030954 () Bool)

(declare-fun tp!2030953 () Bool)

(assert (=> b!7224686 (= e!4331006 (and tp!2030954 tp!2030953))))

(declare-fun b!7224685 () Bool)

(declare-fun tp!2030955 () Bool)

(assert (=> b!7224685 (= e!4331006 tp!2030955)))

(declare-fun b!7224684 () Bool)

(declare-fun tp!2030956 () Bool)

(declare-fun tp!2030957 () Bool)

(assert (=> b!7224684 (= e!4331006 (and tp!2030956 tp!2030957))))

(declare-fun b!7224683 () Bool)

(assert (=> b!7224683 (= e!4331006 tp_is_empty!46355)))

(assert (= (and b!7224275 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224683))

(assert (= (and b!7224275 ((_ is Concat!27244) (regTwo!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224684))

(assert (= (and b!7224275 ((_ is Star!18399) (regTwo!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224685))

(assert (= (and b!7224275 ((_ is Union!18399) (regTwo!37310 (h!76239 (exprs!7851 empty!3071))))) b!7224686))

(declare-fun b!7224687 () Bool)

(declare-fun e!4331007 () Bool)

(declare-fun tp!2030958 () Bool)

(declare-fun tp!2030959 () Bool)

(assert (=> b!7224687 (= e!4331007 (and tp!2030958 tp!2030959))))

(assert (=> b!7224218 (= tp!2030756 e!4331007)))

(assert (= (and b!7224218 ((_ is Cons!69791) (exprs!7851 (h!76241 res!2931777)))) b!7224687))

(declare-fun e!4331008 () Bool)

(assert (=> b!7224289 (= tp!2030796 e!4331008)))

(declare-fun b!7224691 () Bool)

(declare-fun tp!2030961 () Bool)

(declare-fun tp!2030960 () Bool)

(assert (=> b!7224691 (= e!4331008 (and tp!2030961 tp!2030960))))

(declare-fun b!7224690 () Bool)

(declare-fun tp!2030962 () Bool)

(assert (=> b!7224690 (= e!4331008 tp!2030962)))

(declare-fun b!7224689 () Bool)

(declare-fun tp!2030963 () Bool)

(declare-fun tp!2030964 () Bool)

(assert (=> b!7224689 (= e!4331008 (and tp!2030963 tp!2030964))))

(declare-fun b!7224688 () Bool)

(assert (=> b!7224688 (= e!4331008 tp_is_empty!46355)))

(assert (= (and b!7224289 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224688))

(assert (= (and b!7224289 ((_ is Concat!27244) (regOne!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224689))

(assert (= (and b!7224289 ((_ is Star!18399) (regOne!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224690))

(assert (= (and b!7224289 ((_ is Union!18399) (regOne!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224691))

(declare-fun e!4331009 () Bool)

(assert (=> b!7224289 (= tp!2030795 e!4331009)))

(declare-fun b!7224695 () Bool)

(declare-fun tp!2030966 () Bool)

(declare-fun tp!2030965 () Bool)

(assert (=> b!7224695 (= e!4331009 (and tp!2030966 tp!2030965))))

(declare-fun b!7224694 () Bool)

(declare-fun tp!2030967 () Bool)

(assert (=> b!7224694 (= e!4331009 tp!2030967)))

(declare-fun b!7224693 () Bool)

(declare-fun tp!2030968 () Bool)

(declare-fun tp!2030969 () Bool)

(assert (=> b!7224693 (= e!4331009 (and tp!2030968 tp!2030969))))

(declare-fun b!7224692 () Bool)

(assert (=> b!7224692 (= e!4331009 tp_is_empty!46355)))

(assert (= (and b!7224289 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224692))

(assert (= (and b!7224289 ((_ is Concat!27244) (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224693))

(assert (= (and b!7224289 ((_ is Star!18399) (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224694))

(assert (= (and b!7224289 ((_ is Union!18399) (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))))) b!7224695))

(declare-fun e!4331010 () Bool)

(assert (=> b!7224277 (= tp!2030778 e!4331010)))

(declare-fun b!7224699 () Bool)

(declare-fun tp!2030971 () Bool)

(declare-fun tp!2030970 () Bool)

(assert (=> b!7224699 (= e!4331010 (and tp!2030971 tp!2030970))))

(declare-fun b!7224698 () Bool)

(declare-fun tp!2030972 () Bool)

(assert (=> b!7224698 (= e!4331010 tp!2030972)))

(declare-fun b!7224697 () Bool)

(declare-fun tp!2030973 () Bool)

(declare-fun tp!2030974 () Bool)

(assert (=> b!7224697 (= e!4331010 (and tp!2030973 tp!2030974))))

(declare-fun b!7224696 () Bool)

(assert (=> b!7224696 (= e!4331010 tp_is_empty!46355)))

(assert (= (and b!7224277 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224696))

(assert (= (and b!7224277 ((_ is Concat!27244) (regOne!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224697))

(assert (= (and b!7224277 ((_ is Star!18399) (regOne!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224698))

(assert (= (and b!7224277 ((_ is Union!18399) (regOne!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224699))

(declare-fun e!4331011 () Bool)

(assert (=> b!7224277 (= tp!2030777 e!4331011)))

(declare-fun b!7224703 () Bool)

(declare-fun tp!2030976 () Bool)

(declare-fun tp!2030975 () Bool)

(assert (=> b!7224703 (= e!4331011 (and tp!2030976 tp!2030975))))

(declare-fun b!7224702 () Bool)

(declare-fun tp!2030977 () Bool)

(assert (=> b!7224702 (= e!4331011 tp!2030977)))

(declare-fun b!7224701 () Bool)

(declare-fun tp!2030978 () Bool)

(declare-fun tp!2030979 () Bool)

(assert (=> b!7224701 (= e!4331011 (and tp!2030978 tp!2030979))))

(declare-fun b!7224700 () Bool)

(assert (=> b!7224700 (= e!4331011 tp_is_empty!46355)))

(assert (= (and b!7224277 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224700))

(assert (= (and b!7224277 ((_ is Concat!27244) (regTwo!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224701))

(assert (= (and b!7224277 ((_ is Star!18399) (regTwo!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224702))

(assert (= (and b!7224277 ((_ is Union!18399) (regTwo!37311 (h!76239 (exprs!7851 empty!3071))))) b!7224703))

(declare-fun b!7224711 () Bool)

(declare-fun e!4331017 () Bool)

(declare-fun tp!2030984 () Bool)

(assert (=> b!7224711 (= e!4331017 tp!2030984)))

(declare-fun e!4331016 () Bool)

(declare-fun tp!2030985 () Bool)

(declare-fun b!7224710 () Bool)

(assert (=> b!7224710 (= e!4331016 (and (inv!89019 (h!76241 (t!383946 res!2931777))) e!4331017 tp!2030985))))

(assert (=> b!7224217 (= tp!2030757 e!4331016)))

(assert (= b!7224710 b!7224711))

(assert (= (and b!7224217 ((_ is Cons!69793) (t!383946 res!2931777))) b!7224710))

(declare-fun m!7894956 () Bool)

(assert (=> b!7224710 m!7894956))

(declare-fun b!7224712 () Bool)

(declare-fun e!4331018 () Bool)

(declare-fun tp!2030986 () Bool)

(declare-fun tp!2030987 () Bool)

(assert (=> b!7224712 (= e!4331018 (and tp!2030986 tp!2030987))))

(assert (=> b!7224260 (= tp!2030760 e!4331018)))

(assert (= (and b!7224260 ((_ is Cons!69791) (exprs!7851 _$3!498))) b!7224712))

(declare-fun e!4331019 () Bool)

(assert (=> b!7224288 (= tp!2030797 e!4331019)))

(declare-fun b!7224716 () Bool)

(declare-fun tp!2030989 () Bool)

(declare-fun tp!2030988 () Bool)

(assert (=> b!7224716 (= e!4331019 (and tp!2030989 tp!2030988))))

(declare-fun b!7224715 () Bool)

(declare-fun tp!2030990 () Bool)

(assert (=> b!7224715 (= e!4331019 tp!2030990)))

(declare-fun b!7224714 () Bool)

(declare-fun tp!2030991 () Bool)

(declare-fun tp!2030992 () Bool)

(assert (=> b!7224714 (= e!4331019 (and tp!2030991 tp!2030992))))

(declare-fun b!7224713 () Bool)

(assert (=> b!7224713 (= e!4331019 tp_is_empty!46355)))

(assert (= (and b!7224288 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (exprs!7851 setElem!53522))))) b!7224713))

(assert (= (and b!7224288 ((_ is Concat!27244) (reg!18728 (h!76239 (exprs!7851 setElem!53522))))) b!7224714))

(assert (= (and b!7224288 ((_ is Star!18399) (reg!18728 (h!76239 (exprs!7851 setElem!53522))))) b!7224715))

(assert (= (and b!7224288 ((_ is Union!18399) (reg!18728 (h!76239 (exprs!7851 setElem!53522))))) b!7224716))

(declare-fun e!4331020 () Bool)

(assert (=> b!7224284 (= tp!2030791 e!4331020)))

(declare-fun b!7224720 () Bool)

(declare-fun tp!2030994 () Bool)

(declare-fun tp!2030993 () Bool)

(assert (=> b!7224720 (= e!4331020 (and tp!2030994 tp!2030993))))

(declare-fun b!7224719 () Bool)

(declare-fun tp!2030995 () Bool)

(assert (=> b!7224719 (= e!4331020 tp!2030995)))

(declare-fun b!7224718 () Bool)

(declare-fun tp!2030996 () Bool)

(declare-fun tp!2030997 () Bool)

(assert (=> b!7224718 (= e!4331020 (and tp!2030996 tp!2030997))))

(declare-fun b!7224717 () Bool)

(assert (=> b!7224717 (= e!4331020 tp_is_empty!46355)))

(assert (= (and b!7224284 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 setElem!53528)))) b!7224717))

(assert (= (and b!7224284 ((_ is Concat!27244) (h!76239 (exprs!7851 setElem!53528)))) b!7224718))

(assert (= (and b!7224284 ((_ is Star!18399) (h!76239 (exprs!7851 setElem!53528)))) b!7224719))

(assert (= (and b!7224284 ((_ is Union!18399) (h!76239 (exprs!7851 setElem!53528)))) b!7224720))

(declare-fun b!7224721 () Bool)

(declare-fun e!4331021 () Bool)

(declare-fun tp!2030998 () Bool)

(declare-fun tp!2030999 () Bool)

(assert (=> b!7224721 (= e!4331021 (and tp!2030998 tp!2030999))))

(assert (=> b!7224284 (= tp!2030792 e!4331021)))

(assert (= (and b!7224284 ((_ is Cons!69791) (t!383944 (exprs!7851 setElem!53528)))) b!7224721))

(declare-fun e!4331022 () Bool)

(assert (=> b!7224278 (= tp!2030782 e!4331022)))

(declare-fun b!7224725 () Bool)

(declare-fun tp!2031001 () Bool)

(declare-fun tp!2031000 () Bool)

(assert (=> b!7224725 (= e!4331022 (and tp!2031001 tp!2031000))))

(declare-fun b!7224724 () Bool)

(declare-fun tp!2031002 () Bool)

(assert (=> b!7224724 (= e!4331022 tp!2031002)))

(declare-fun b!7224723 () Bool)

(declare-fun tp!2031003 () Bool)

(declare-fun tp!2031004 () Bool)

(assert (=> b!7224723 (= e!4331022 (and tp!2031003 tp!2031004))))

(declare-fun b!7224722 () Bool)

(assert (=> b!7224722 (= e!4331022 tp_is_empty!46355)))

(assert (= (and b!7224278 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 empty!3071))))) b!7224722))

(assert (= (and b!7224278 ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 empty!3071))))) b!7224723))

(assert (= (and b!7224278 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 empty!3071))))) b!7224724))

(assert (= (and b!7224278 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 empty!3071))))) b!7224725))

(declare-fun b!7224726 () Bool)

(declare-fun e!4331023 () Bool)

(declare-fun tp!2031005 () Bool)

(declare-fun tp!2031006 () Bool)

(assert (=> b!7224726 (= e!4331023 (and tp!2031005 tp!2031006))))

(assert (=> b!7224278 (= tp!2030783 e!4331023)))

(assert (= (and b!7224278 ((_ is Cons!69791) (t!383944 (t!383944 (exprs!7851 empty!3071))))) b!7224726))

(declare-fun b!7224727 () Bool)

(declare-fun e!4331024 () Bool)

(declare-fun tp!2031007 () Bool)

(declare-fun tp!2031008 () Bool)

(assert (=> b!7224727 (= e!4331024 (and tp!2031007 tp!2031008))))

(assert (=> b!7224263 (= tp!2030765 e!4331024)))

(assert (= (and b!7224263 ((_ is Cons!69791) (exprs!7851 setElem!53535))) b!7224727))

(declare-fun condSetEmpty!53541 () Bool)

(assert (=> setNonEmpty!53535 (= condSetEmpty!53541 (= setRest!53535 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53541 () Bool)

(assert (=> setNonEmpty!53535 (= tp!2030766 setRes!53541)))

(declare-fun setIsEmpty!53541 () Bool)

(assert (=> setIsEmpty!53541 setRes!53541))

(declare-fun e!4331025 () Bool)

(declare-fun setNonEmpty!53541 () Bool)

(declare-fun setElem!53541 () Context!14702)

(declare-fun tp!2031009 () Bool)

(assert (=> setNonEmpty!53541 (= setRes!53541 (and tp!2031009 (inv!89019 setElem!53541) e!4331025))))

(declare-fun setRest!53541 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53541 (= setRest!53535 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53541 true) setRest!53541))))

(declare-fun b!7224728 () Bool)

(declare-fun tp!2031010 () Bool)

(assert (=> b!7224728 (= e!4331025 tp!2031010)))

(assert (= (and setNonEmpty!53535 condSetEmpty!53541) setIsEmpty!53541))

(assert (= (and setNonEmpty!53535 (not condSetEmpty!53541)) setNonEmpty!53541))

(assert (= setNonEmpty!53541 b!7224728))

(declare-fun m!7894958 () Bool)

(assert (=> setNonEmpty!53541 m!7894958))

(declare-fun e!4331026 () Bool)

(assert (=> b!7224290 (= tp!2030800 e!4331026)))

(declare-fun b!7224732 () Bool)

(declare-fun tp!2031012 () Bool)

(declare-fun tp!2031011 () Bool)

(assert (=> b!7224732 (= e!4331026 (and tp!2031012 tp!2031011))))

(declare-fun b!7224731 () Bool)

(declare-fun tp!2031013 () Bool)

(assert (=> b!7224731 (= e!4331026 tp!2031013)))

(declare-fun b!7224730 () Bool)

(declare-fun tp!2031014 () Bool)

(declare-fun tp!2031015 () Bool)

(assert (=> b!7224730 (= e!4331026 (and tp!2031014 tp!2031015))))

(declare-fun b!7224729 () Bool)

(assert (=> b!7224729 (= e!4331026 tp_is_empty!46355)))

(assert (= (and b!7224290 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 setElem!53522))))) b!7224729))

(assert (= (and b!7224290 ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 setElem!53522))))) b!7224730))

(assert (= (and b!7224290 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 setElem!53522))))) b!7224731))

(assert (= (and b!7224290 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 setElem!53522))))) b!7224732))

(declare-fun b!7224733 () Bool)

(declare-fun e!4331027 () Bool)

(declare-fun tp!2031016 () Bool)

(declare-fun tp!2031017 () Bool)

(assert (=> b!7224733 (= e!4331027 (and tp!2031016 tp!2031017))))

(assert (=> b!7224290 (= tp!2030801 e!4331027)))

(assert (= (and b!7224290 ((_ is Cons!69791) (t!383944 (t!383944 (exprs!7851 setElem!53522))))) b!7224733))

(declare-fun condSetEmpty!53542 () Bool)

(assert (=> setNonEmpty!53536 (= condSetEmpty!53542 (= setRest!53536 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53542 () Bool)

(assert (=> setNonEmpty!53536 (= tp!2030793 setRes!53542)))

(declare-fun setIsEmpty!53542 () Bool)

(assert (=> setIsEmpty!53542 setRes!53542))

(declare-fun tp!2031018 () Bool)

(declare-fun setNonEmpty!53542 () Bool)

(declare-fun setElem!53542 () Context!14702)

(declare-fun e!4331028 () Bool)

(assert (=> setNonEmpty!53542 (= setRes!53542 (and tp!2031018 (inv!89019 setElem!53542) e!4331028))))

(declare-fun setRest!53542 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53542 (= setRest!53536 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53542 true) setRest!53542))))

(declare-fun b!7224734 () Bool)

(declare-fun tp!2031019 () Bool)

(assert (=> b!7224734 (= e!4331028 tp!2031019)))

(assert (= (and setNonEmpty!53536 condSetEmpty!53542) setIsEmpty!53542))

(assert (= (and setNonEmpty!53536 (not condSetEmpty!53542)) setNonEmpty!53542))

(assert (= setNonEmpty!53542 b!7224734))

(declare-fun m!7894960 () Bool)

(assert (=> setNonEmpty!53542 m!7894960))

(declare-fun b!7224735 () Bool)

(declare-fun e!4331029 () Bool)

(declare-fun tp!2031020 () Bool)

(assert (=> b!7224735 (= e!4331029 (and tp_is_empty!46355 tp!2031020))))

(assert (=> b!7224291 (= tp!2030802 e!4331029)))

(assert (= (and b!7224291 ((_ is Cons!69792) (t!383945 (t!383945 (t!383945 s!7961))))) b!7224735))

(declare-fun e!4331030 () Bool)

(assert (=> b!7224280 (= tp!2030787 e!4331030)))

(declare-fun b!7224739 () Bool)

(declare-fun tp!2031022 () Bool)

(declare-fun tp!2031021 () Bool)

(assert (=> b!7224739 (= e!4331030 (and tp!2031022 tp!2031021))))

(declare-fun b!7224738 () Bool)

(declare-fun tp!2031023 () Bool)

(assert (=> b!7224738 (= e!4331030 tp!2031023)))

(declare-fun b!7224737 () Bool)

(declare-fun tp!2031024 () Bool)

(declare-fun tp!2031025 () Bool)

(assert (=> b!7224737 (= e!4331030 (and tp!2031024 tp!2031025))))

(declare-fun b!7224736 () Bool)

(assert (=> b!7224736 (= e!4331030 tp_is_empty!46355)))

(assert (= (and b!7224280 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) b!7224736))

(assert (= (and b!7224280 ((_ is Concat!27244) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) b!7224737))

(assert (= (and b!7224280 ((_ is Star!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) b!7224738))

(assert (= (and b!7224280 ((_ is Union!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) b!7224739))

(declare-fun e!4331031 () Bool)

(assert (=> b!7224280 (= tp!2030788 e!4331031)))

(declare-fun b!7224743 () Bool)

(declare-fun tp!2031027 () Bool)

(declare-fun tp!2031026 () Bool)

(assert (=> b!7224743 (= e!4331031 (and tp!2031027 tp!2031026))))

(declare-fun b!7224742 () Bool)

(declare-fun tp!2031028 () Bool)

(assert (=> b!7224742 (= e!4331031 tp!2031028)))

(declare-fun b!7224741 () Bool)

(declare-fun tp!2031029 () Bool)

(declare-fun tp!2031030 () Bool)

(assert (=> b!7224741 (= e!4331031 (and tp!2031029 tp!2031030))))

(declare-fun b!7224740 () Bool)

(assert (=> b!7224740 (= e!4331031 tp_is_empty!46355)))

(assert (= (and b!7224280 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))) b!7224740))

(assert (= (and b!7224280 ((_ is Concat!27244) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))) b!7224741))

(assert (= (and b!7224280 ((_ is Star!18399) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))) b!7224742))

(assert (= (and b!7224280 ((_ is Union!18399) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))) b!7224743))

(declare-fun e!4331032 () Bool)

(assert (=> b!7224281 (= tp!2030786 e!4331032)))

(declare-fun b!7224747 () Bool)

(declare-fun tp!2031032 () Bool)

(declare-fun tp!2031031 () Bool)

(assert (=> b!7224747 (= e!4331032 (and tp!2031032 tp!2031031))))

(declare-fun b!7224746 () Bool)

(declare-fun tp!2031033 () Bool)

(assert (=> b!7224746 (= e!4331032 tp!2031033)))

(declare-fun b!7224745 () Bool)

(declare-fun tp!2031034 () Bool)

(declare-fun tp!2031035 () Bool)

(assert (=> b!7224745 (= e!4331032 (and tp!2031034 tp!2031035))))

(declare-fun b!7224744 () Bool)

(assert (=> b!7224744 (= e!4331032 tp_is_empty!46355)))

(assert (= (and b!7224281 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (exprs!7851 c!10544))))) b!7224744))

(assert (= (and b!7224281 ((_ is Concat!27244) (reg!18728 (h!76239 (exprs!7851 c!10544))))) b!7224745))

(assert (= (and b!7224281 ((_ is Star!18399) (reg!18728 (h!76239 (exprs!7851 c!10544))))) b!7224746))

(assert (= (and b!7224281 ((_ is Union!18399) (reg!18728 (h!76239 (exprs!7851 c!10544))))) b!7224747))

(declare-fun b!7224748 () Bool)

(declare-fun e!4331033 () Bool)

(declare-fun tp!2031036 () Bool)

(declare-fun tp!2031037 () Bool)

(assert (=> b!7224748 (= e!4331033 (and tp!2031036 tp!2031037))))

(assert (=> b!7224285 (= tp!2030794 e!4331033)))

(assert (= (and b!7224285 ((_ is Cons!69791) (exprs!7851 setElem!53536))) b!7224748))

(declare-fun e!4331034 () Bool)

(assert (=> b!7224282 (= tp!2030785 e!4331034)))

(declare-fun b!7224752 () Bool)

(declare-fun tp!2031039 () Bool)

(declare-fun tp!2031038 () Bool)

(assert (=> b!7224752 (= e!4331034 (and tp!2031039 tp!2031038))))

(declare-fun b!7224751 () Bool)

(declare-fun tp!2031040 () Bool)

(assert (=> b!7224751 (= e!4331034 tp!2031040)))

(declare-fun b!7224750 () Bool)

(declare-fun tp!2031041 () Bool)

(declare-fun tp!2031042 () Bool)

(assert (=> b!7224750 (= e!4331034 (and tp!2031041 tp!2031042))))

(declare-fun b!7224749 () Bool)

(assert (=> b!7224749 (= e!4331034 tp_is_empty!46355)))

(assert (= (and b!7224282 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (exprs!7851 c!10544))))) b!7224749))

(assert (= (and b!7224282 ((_ is Concat!27244) (regOne!37311 (h!76239 (exprs!7851 c!10544))))) b!7224750))

(assert (= (and b!7224282 ((_ is Star!18399) (regOne!37311 (h!76239 (exprs!7851 c!10544))))) b!7224751))

(assert (= (and b!7224282 ((_ is Union!18399) (regOne!37311 (h!76239 (exprs!7851 c!10544))))) b!7224752))

(declare-fun e!4331035 () Bool)

(assert (=> b!7224282 (= tp!2030784 e!4331035)))

(declare-fun b!7224756 () Bool)

(declare-fun tp!2031044 () Bool)

(declare-fun tp!2031043 () Bool)

(assert (=> b!7224756 (= e!4331035 (and tp!2031044 tp!2031043))))

(declare-fun b!7224755 () Bool)

(declare-fun tp!2031045 () Bool)

(assert (=> b!7224755 (= e!4331035 tp!2031045)))

(declare-fun b!7224754 () Bool)

(declare-fun tp!2031046 () Bool)

(declare-fun tp!2031047 () Bool)

(assert (=> b!7224754 (= e!4331035 (and tp!2031046 tp!2031047))))

(declare-fun b!7224753 () Bool)

(assert (=> b!7224753 (= e!4331035 tp_is_empty!46355)))

(assert (= (and b!7224282 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (exprs!7851 c!10544))))) b!7224753))

(assert (= (and b!7224282 ((_ is Concat!27244) (regTwo!37311 (h!76239 (exprs!7851 c!10544))))) b!7224754))

(assert (= (and b!7224282 ((_ is Star!18399) (regTwo!37311 (h!76239 (exprs!7851 c!10544))))) b!7224755))

(assert (= (and b!7224282 ((_ is Union!18399) (regTwo!37311 (h!76239 (exprs!7851 c!10544))))) b!7224756))

(declare-fun e!4331036 () Bool)

(assert (=> b!7224283 (= tp!2030789 e!4331036)))

(declare-fun b!7224760 () Bool)

(declare-fun tp!2031049 () Bool)

(declare-fun tp!2031048 () Bool)

(assert (=> b!7224760 (= e!4331036 (and tp!2031049 tp!2031048))))

(declare-fun b!7224759 () Bool)

(declare-fun tp!2031050 () Bool)

(assert (=> b!7224759 (= e!4331036 tp!2031050)))

(declare-fun b!7224758 () Bool)

(declare-fun tp!2031051 () Bool)

(declare-fun tp!2031052 () Bool)

(assert (=> b!7224758 (= e!4331036 (and tp!2031051 tp!2031052))))

(declare-fun b!7224757 () Bool)

(assert (=> b!7224757 (= e!4331036 tp_is_empty!46355)))

(assert (= (and b!7224283 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 c!10544))))) b!7224757))

(assert (= (and b!7224283 ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 c!10544))))) b!7224758))

(assert (= (and b!7224283 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 c!10544))))) b!7224759))

(assert (= (and b!7224283 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 c!10544))))) b!7224760))

(declare-fun b!7224761 () Bool)

(declare-fun e!4331037 () Bool)

(declare-fun tp!2031053 () Bool)

(declare-fun tp!2031054 () Bool)

(assert (=> b!7224761 (= e!4331037 (and tp!2031053 tp!2031054))))

(assert (=> b!7224283 (= tp!2030790 e!4331037)))

(assert (= (and b!7224283 ((_ is Cons!69791) (t!383944 (t!383944 (exprs!7851 c!10544))))) b!7224761))

(declare-fun b_lambda!276567 () Bool)

(assert (= b_lambda!276563 (or d!2243972 b_lambda!276567)))

(declare-fun bs!1901748 () Bool)

(declare-fun d!2244144 () Bool)

(assert (= bs!1901748 (and d!2244144 d!2243972)))

(assert (=> bs!1901748 (= (dynLambda!28426 lambda!438350 (h!76241 (toList!11334 z!3517))) (not (dynLambda!28426 lambda!438318 (h!76241 (toList!11334 z!3517)))))))

(declare-fun b_lambda!276577 () Bool)

(assert (=> (not b_lambda!276577) (not bs!1901748)))

(declare-fun m!7894962 () Bool)

(assert (=> bs!1901748 m!7894962))

(assert (=> b!7224625 d!2244144))

(declare-fun b_lambda!276569 () Bool)

(assert (= b_lambda!276547 (or d!2243910 b_lambda!276569)))

(declare-fun bs!1901749 () Bool)

(declare-fun d!2244146 () Bool)

(assert (= bs!1901749 (and d!2244146 d!2243910)))

(assert (=> bs!1901749 (= (dynLambda!28425 lambda!438336 (h!76239 (t!383944 (exprs!7851 c!10544)))) (validRegex!9493 (h!76239 (t!383944 (exprs!7851 c!10544)))))))

(declare-fun m!7894964 () Bool)

(assert (=> bs!1901749 m!7894964))

(assert (=> b!7224478 d!2244146))

(declare-fun b_lambda!276571 () Bool)

(assert (= b_lambda!276565 (or d!2243912 b_lambda!276571)))

(declare-fun bs!1901750 () Bool)

(declare-fun d!2244148 () Bool)

(assert (= bs!1901750 (and d!2244148 d!2243912)))

(assert (=> bs!1901750 (= (dynLambda!28425 lambda!438337 (h!76239 (t!383944 (exprs!7851 setElem!53522)))) (validRegex!9493 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))

(declare-fun m!7894966 () Bool)

(assert (=> bs!1901750 m!7894966))

(assert (=> b!7224665 d!2244148))

(declare-fun b_lambda!276573 () Bool)

(assert (= b_lambda!276543 (or d!2243980 b_lambda!276573)))

(declare-fun bs!1901751 () Bool)

(declare-fun d!2244150 () Bool)

(assert (= bs!1901751 (and d!2244150 d!2243980)))

(assert (=> bs!1901751 (= (dynLambda!28425 lambda!438351 (h!76239 (exprs!7851 setElem!53528))) (validRegex!9493 (h!76239 (exprs!7851 setElem!53528))))))

(declare-fun m!7894968 () Bool)

(assert (=> bs!1901751 m!7894968))

(assert (=> b!7224407 d!2244150))

(declare-fun b_lambda!276575 () Bool)

(assert (= b_lambda!276549 (or d!2243908 b_lambda!276575)))

(declare-fun bs!1901752 () Bool)

(declare-fun d!2244152 () Bool)

(assert (= bs!1901752 (and d!2244152 d!2243908)))

(assert (=> bs!1901752 (= (dynLambda!28425 lambda!438335 (h!76239 (t!383944 (exprs!7851 empty!3071)))) (validRegex!9493 (h!76239 (t!383944 (exprs!7851 empty!3071)))))))

(declare-fun m!7894970 () Bool)

(assert (=> bs!1901752 m!7894970))

(assert (=> b!7224559 d!2244152))

(check-sat (not b!7224759) (not bm!657549) (not b_lambda!276533) (not b!7224615) (not b!7224720) (not b!7224739) (not b!7224734) (not b!7224755) (not d!2244134) (not b!7224573) (not b!7224743) (not b_lambda!276577) (not b!7224682) (not bm!657539) (not b!7224747) (not b!7224756) (not b!7224721) (not b!7224689) (not b_lambda!276529) (not b!7224712) (not b!7224669) (not b!7224412) (not b!7224686) (not b!7224741) (not bm!657552) (not bm!657508) (not b!7224723) (not b!7224750) (not b!7224752) (not b!7224574) (not b!7224674) (not bm!657541) (not bm!657523) (not b_lambda!276531) (not d!2244084) (not b!7224690) (not b!7224465) (not b!7224695) (not b!7224616) (not b!7224691) (not b!7224698) (not d!2244130) (not b!7224491) (not bm!657537) (not bs!1901752) (not d!2244046) (not d!2244102) (not b!7224737) (not b!7224716) (not b!7224670) (not b!7224724) (not b!7224408) (not b!7224668) (not b!7224655) (not b!7224648) (not b!7224742) (not setNonEmpty!53540) (not b!7224760) (not bm!657550) (not b!7224649) (not d!2244042) (not bm!657501) (not b!7224479) (not b!7224685) (not d!2244076) (not b!7224556) (not b_lambda!276571) (not b!7224684) (not b!7224676) (not b!7224697) (not d!2244112) (not b!7224732) (not b!7224754) (not b!7224751) (not b!7224681) (not bs!1901750) (not bm!657509) (not b!7224410) (not b!7224687) (not bm!657500) (not b!7224694) (not b!7224727) (not b!7224693) (not b!7224711) (not b!7224666) (not b!7224748) (not b!7224626) (not setNonEmpty!53542) (not b!7224728) (not b!7224680) (not b!7224730) (not bm!657548) (not bm!657543) (not b!7224745) (not b!7224718) (not d!2244120) (not b!7224738) (not bm!657502) (not b_lambda!276569) (not bm!657504) (not b!7224719) (not b!7224391) (not b!7224701) (not b!7224761) (not bs!1901751) (not b!7224380) (not b!7224396) (not setNonEmpty!53541) (not b_lambda!276567) (not b_lambda!276575) (not b!7224703) (not b!7224725) (not b!7224677) (not b!7224699) (not b!7224726) (not bm!657538) (not d!2244108) (not bm!657525) (not b!7224653) (not b!7224702) (not b!7224735) tp_is_empty!46355 (not bs!1901749) (not b!7224586) (not b!7224733) (not b!7224746) (not b!7224390) (not b!7224651) (not b!7224560) (not b!7224672) (not b!7224715) (not b!7224652) (not bm!657507) (not b_lambda!276573) (not b!7224650) (not b!7224731) (not b!7224673) (not b!7224714) (not b!7224663) (not b!7224678) (not b!7224758) (not b!7224710) (not d!2244098))
(check-sat)
(get-model)

(declare-fun b_lambda!276581 () Bool)

(assert (= b_lambda!276577 (or b!7223988 b_lambda!276581)))

(declare-fun bs!1901754 () Bool)

(declare-fun d!2244156 () Bool)

(assert (= bs!1901754 (and d!2244156 b!7223988)))

(assert (=> bs!1901754 (= (dynLambda!28426 lambda!438318 (h!76241 (toList!11334 z!3517))) (select (derivationStepZipperUp!2361 (h!76241 (toList!11334 z!3517)) lt!2571752) lt!2571751))))

(declare-fun m!7894976 () Bool)

(assert (=> bs!1901754 m!7894976))

(declare-fun m!7894978 () Bool)

(assert (=> bs!1901754 m!7894978))

(assert (=> bs!1901748 d!2244156))

(check-sat (not b!7224759) (not bm!657549) (not b_lambda!276533) (not b!7224615) (not b!7224720) (not b!7224739) (not b!7224734) (not b!7224755) (not d!2244134) (not b!7224573) (not b!7224743) (not b!7224682) (not bm!657539) (not b!7224747) (not b!7224756) (not b!7224721) (not b!7224689) (not bs!1901754) (not b_lambda!276529) (not b!7224712) (not b!7224669) (not b!7224412) (not b!7224686) (not b!7224741) (not bm!657552) (not bm!657508) (not b!7224723) (not b!7224750) (not b!7224752) (not b!7224574) (not b!7224674) (not bm!657541) (not bm!657523) (not b_lambda!276531) (not d!2244084) (not b!7224690) (not b!7224465) (not b!7224695) (not b!7224616) (not b!7224691) (not b!7224698) (not d!2244130) (not b!7224491) (not bm!657537) (not bs!1901752) (not d!2244046) (not d!2244102) (not b!7224737) (not b!7224716) (not b!7224670) (not b!7224724) (not b!7224408) (not b!7224668) (not b!7224655) (not b!7224648) (not b!7224742) (not setNonEmpty!53540) (not b!7224760) (not bm!657550) (not b!7224649) (not d!2244042) (not bm!657501) (not b!7224479) (not b!7224685) (not d!2244076) (not b!7224556) (not b_lambda!276571) (not b!7224684) (not b!7224676) (not b!7224697) (not d!2244112) (not b!7224732) (not b!7224754) (not b!7224751) (not b!7224681) (not bs!1901750) (not bm!657509) (not b!7224410) (not b!7224687) (not bm!657500) (not b!7224694) (not b!7224727) (not b!7224693) (not b!7224711) (not b!7224666) (not b!7224748) (not b!7224626) (not setNonEmpty!53542) (not b!7224728) (not b!7224680) (not b!7224730) (not bm!657548) (not bm!657543) (not b!7224745) (not b!7224718) (not d!2244120) (not b!7224738) (not bm!657502) (not b_lambda!276569) (not bm!657504) (not b!7224719) (not b!7224391) (not b!7224701) (not b!7224761) (not bs!1901751) (not b!7224380) (not b!7224396) (not setNonEmpty!53541) (not b_lambda!276567) (not b_lambda!276575) (not b!7224703) (not b!7224725) (not b!7224677) (not b!7224699) (not b!7224726) (not bm!657538) (not d!2244108) (not bm!657525) (not b!7224653) (not b!7224702) (not b!7224735) tp_is_empty!46355 (not bs!1901749) (not b!7224586) (not b!7224733) (not b_lambda!276581) (not b!7224746) (not b!7224390) (not b!7224651) (not b!7224560) (not b!7224672) (not b!7224715) (not b!7224652) (not bm!657507) (not b_lambda!276573) (not b!7224650) (not b!7224731) (not b!7224673) (not b!7224714) (not b!7224663) (not b!7224678) (not b!7224758) (not b!7224710) (not d!2244098))
(check-sat)
(get-model)

(declare-fun d!2244158 () Bool)

(declare-fun res!2931937 () Bool)

(declare-fun e!4331038 () Bool)

(assert (=> d!2244158 (=> res!2931937 e!4331038)))

(assert (=> d!2244158 (= res!2931937 ((_ is Nil!69793) res!2931927))))

(assert (=> d!2244158 (= (noDuplicate!2912 res!2931927) e!4331038)))

(declare-fun b!7224762 () Bool)

(declare-fun e!4331039 () Bool)

(assert (=> b!7224762 (= e!4331038 e!4331039)))

(declare-fun res!2931938 () Bool)

(assert (=> b!7224762 (=> (not res!2931938) (not e!4331039))))

(assert (=> b!7224762 (= res!2931938 (not (contains!20734 (t!383946 res!2931927) (h!76241 res!2931927))))))

(declare-fun b!7224763 () Bool)

(assert (=> b!7224763 (= e!4331039 (noDuplicate!2912 (t!383946 res!2931927)))))

(assert (= (and d!2244158 (not res!2931937)) b!7224762))

(assert (= (and b!7224762 res!2931938) b!7224763))

(declare-fun m!7894980 () Bool)

(assert (=> b!7224762 m!7894980))

(declare-fun m!7894982 () Bool)

(assert (=> b!7224763 m!7894982))

(assert (=> d!2244134 d!2244158))

(declare-fun d!2244160 () Bool)

(declare-fun res!2931939 () Bool)

(declare-fun e!4331040 () Bool)

(assert (=> d!2244160 (=> res!2931939 e!4331040)))

(assert (=> d!2244160 (= res!2931939 ((_ is Nil!69791) (exprs!7851 (h!76241 res!2931777))))))

(assert (=> d!2244160 (= (forall!17221 (exprs!7851 (h!76241 res!2931777)) lambda!438361) e!4331040)))

(declare-fun b!7224764 () Bool)

(declare-fun e!4331041 () Bool)

(assert (=> b!7224764 (= e!4331040 e!4331041)))

(declare-fun res!2931940 () Bool)

(assert (=> b!7224764 (=> (not res!2931940) (not e!4331041))))

(assert (=> b!7224764 (= res!2931940 (dynLambda!28425 lambda!438361 (h!76239 (exprs!7851 (h!76241 res!2931777)))))))

(declare-fun b!7224765 () Bool)

(assert (=> b!7224765 (= e!4331041 (forall!17221 (t!383944 (exprs!7851 (h!76241 res!2931777))) lambda!438361))))

(assert (= (and d!2244160 (not res!2931939)) b!7224764))

(assert (= (and b!7224764 res!2931940) b!7224765))

(declare-fun b_lambda!276583 () Bool)

(assert (=> (not b_lambda!276583) (not b!7224764)))

(declare-fun m!7894984 () Bool)

(assert (=> b!7224764 m!7894984))

(declare-fun m!7894986 () Bool)

(assert (=> b!7224765 m!7894986))

(assert (=> d!2244076 d!2244160))

(declare-fun d!2244162 () Bool)

(declare-fun res!2931941 () Bool)

(declare-fun e!4331042 () Bool)

(assert (=> d!2244162 (=> res!2931941 e!4331042)))

(assert (=> d!2244162 (= res!2931941 ((_ is Nil!69791) (t!383944 (t!383944 (exprs!7851 setElem!53522)))))))

(assert (=> d!2244162 (= (forall!17221 (t!383944 (t!383944 (exprs!7851 setElem!53522))) lambda!438337) e!4331042)))

(declare-fun b!7224766 () Bool)

(declare-fun e!4331043 () Bool)

(assert (=> b!7224766 (= e!4331042 e!4331043)))

(declare-fun res!2931942 () Bool)

(assert (=> b!7224766 (=> (not res!2931942) (not e!4331043))))

(assert (=> b!7224766 (= res!2931942 (dynLambda!28425 lambda!438337 (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522))))))))

(declare-fun b!7224767 () Bool)

(assert (=> b!7224767 (= e!4331043 (forall!17221 (t!383944 (t!383944 (t!383944 (exprs!7851 setElem!53522)))) lambda!438337))))

(assert (= (and d!2244162 (not res!2931941)) b!7224766))

(assert (= (and b!7224766 res!2931942) b!7224767))

(declare-fun b_lambda!276585 () Bool)

(assert (=> (not b_lambda!276585) (not b!7224766)))

(declare-fun m!7894988 () Bool)

(assert (=> b!7224766 m!7894988))

(declare-fun m!7894990 () Bool)

(assert (=> b!7224767 m!7894990))

(assert (=> b!7224666 d!2244162))

(declare-fun b!7224768 () Bool)

(declare-fun e!4331044 () (InoxSet Context!14702))

(declare-fun call!657562 () (InoxSet Context!14702))

(declare-fun call!657563 () (InoxSet Context!14702))

(assert (=> b!7224768 (= e!4331044 ((_ map or) call!657562 call!657563))))

(declare-fun b!7224769 () Bool)

(declare-fun c!1340354 () Bool)

(assert (=> b!7224769 (= c!1340354 ((_ is Star!18399) (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun e!4331046 () (InoxSet Context!14702))

(declare-fun e!4331049 () (InoxSet Context!14702))

(assert (=> b!7224769 (= e!4331046 e!4331049)))

(declare-fun d!2244164 () Bool)

(declare-fun c!1340352 () Bool)

(assert (=> d!2244164 (= c!1340352 (and ((_ is ElementMatch!18399) (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) (= (c!1340227 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) lt!2571752)))))

(declare-fun e!4331048 () (InoxSet Context!14702))

(assert (=> d!2244164 (= (derivationStepZipperDown!2533 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) (ite c!1340338 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657541)) lt!2571752) e!4331048)))

(declare-fun bm!657553 () Bool)

(declare-fun call!657561 () (InoxSet Context!14702))

(declare-fun call!657558 () (InoxSet Context!14702))

(assert (=> bm!657553 (= call!657561 call!657558)))

(declare-fun e!4331047 () Bool)

(declare-fun b!7224770 () Bool)

(assert (=> b!7224770 (= e!4331047 (nullable!7806 (regOne!37310 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224771 () Bool)

(assert (=> b!7224771 (= e!4331048 e!4331044)))

(declare-fun c!1340351 () Bool)

(assert (=> b!7224771 (= c!1340351 ((_ is Union!18399) (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun b!7224772 () Bool)

(assert (=> b!7224772 (= e!4331048 (store ((as const (Array Context!14702 Bool)) false) (ite c!1340338 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657541)) true))))

(declare-fun bm!657554 () Bool)

(declare-fun call!657560 () List!69915)

(declare-fun call!657559 () List!69915)

(assert (=> bm!657554 (= call!657560 call!657559)))

(declare-fun b!7224773 () Bool)

(assert (=> b!7224773 (= e!4331049 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340353 () Bool)

(declare-fun bm!657555 () Bool)

(declare-fun c!1340350 () Bool)

(assert (=> bm!657555 (= call!657563 (derivationStepZipperDown!2533 (ite c!1340351 (regTwo!37311 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340350 (regTwo!37310 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340353 (regOne!37310 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))) (ite (or c!1340351 c!1340350) (ite c!1340338 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657541)) (Context!14703 call!657560)) lt!2571752))))

(declare-fun b!7224774 () Bool)

(assert (=> b!7224774 (= c!1340350 e!4331047)))

(declare-fun res!2931943 () Bool)

(assert (=> b!7224774 (=> (not res!2931943) (not e!4331047))))

(assert (=> b!7224774 (= res!2931943 ((_ is Concat!27244) (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun e!4331045 () (InoxSet Context!14702))

(assert (=> b!7224774 (= e!4331044 e!4331045)))

(declare-fun bm!657556 () Bool)

(assert (=> bm!657556 (= call!657559 ($colon$colon!2855 (exprs!7851 (ite c!1340338 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657541))) (ite (or c!1340350 c!1340353) (regTwo!37310 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224775 () Bool)

(assert (=> b!7224775 (= e!4331045 e!4331046)))

(assert (=> b!7224775 (= c!1340353 ((_ is Concat!27244) (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun b!7224776 () Bool)

(assert (=> b!7224776 (= e!4331049 call!657561)))

(declare-fun bm!657557 () Bool)

(assert (=> bm!657557 (= call!657562 (derivationStepZipperDown!2533 (ite c!1340351 (regOne!37311 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340338 (regOne!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))) (ite c!1340351 (ite c!1340338 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657541)) (Context!14703 call!657559)) lt!2571752))))

(declare-fun b!7224777 () Bool)

(assert (=> b!7224777 (= e!4331045 ((_ map or) call!657562 call!657558))))

(declare-fun b!7224778 () Bool)

(assert (=> b!7224778 (= e!4331046 call!657561)))

(declare-fun bm!657558 () Bool)

(assert (=> bm!657558 (= call!657558 call!657563)))

(assert (= (and d!2244164 c!1340352) b!7224772))

(assert (= (and d!2244164 (not c!1340352)) b!7224771))

(assert (= (and b!7224771 c!1340351) b!7224768))

(assert (= (and b!7224771 (not c!1340351)) b!7224774))

(assert (= (and b!7224774 res!2931943) b!7224770))

(assert (= (and b!7224774 c!1340350) b!7224777))

(assert (= (and b!7224774 (not c!1340350)) b!7224775))

(assert (= (and b!7224775 c!1340353) b!7224778))

(assert (= (and b!7224775 (not c!1340353)) b!7224769))

(assert (= (and b!7224769 c!1340354) b!7224776))

(assert (= (and b!7224769 (not c!1340354)) b!7224773))

(assert (= (or b!7224778 b!7224776) bm!657554))

(assert (= (or b!7224778 b!7224776) bm!657553))

(assert (= (or b!7224777 bm!657553) bm!657558))

(assert (= (or b!7224777 bm!657554) bm!657556))

(assert (= (or b!7224768 b!7224777) bm!657557))

(assert (= (or b!7224768 bm!657558) bm!657555))

(declare-fun m!7894992 () Bool)

(assert (=> bm!657555 m!7894992))

(declare-fun m!7894994 () Bool)

(assert (=> b!7224770 m!7894994))

(declare-fun m!7894996 () Bool)

(assert (=> bm!657557 m!7894996))

(declare-fun m!7894998 () Bool)

(assert (=> bm!657556 m!7894998))

(declare-fun m!7895000 () Bool)

(assert (=> b!7224772 m!7895000))

(assert (=> bm!657539 d!2244164))

(declare-fun d!2244166 () Bool)

(declare-fun res!2931944 () Bool)

(declare-fun e!4331050 () Bool)

(assert (=> d!2244166 (=> res!2931944 e!4331050)))

(assert (=> d!2244166 (= res!2931944 ((_ is Nil!69791) (t!383944 (exprs!7851 setElem!53528))))))

(assert (=> d!2244166 (= (forall!17221 (t!383944 (exprs!7851 setElem!53528)) lambda!438351) e!4331050)))

(declare-fun b!7224779 () Bool)

(declare-fun e!4331051 () Bool)

(assert (=> b!7224779 (= e!4331050 e!4331051)))

(declare-fun res!2931945 () Bool)

(assert (=> b!7224779 (=> (not res!2931945) (not e!4331051))))

(assert (=> b!7224779 (= res!2931945 (dynLambda!28425 lambda!438351 (h!76239 (t!383944 (exprs!7851 setElem!53528)))))))

(declare-fun b!7224780 () Bool)

(assert (=> b!7224780 (= e!4331051 (forall!17221 (t!383944 (t!383944 (exprs!7851 setElem!53528))) lambda!438351))))

(assert (= (and d!2244166 (not res!2931944)) b!7224779))

(assert (= (and b!7224779 res!2931945) b!7224780))

(declare-fun b_lambda!276587 () Bool)

(assert (=> (not b_lambda!276587) (not b!7224779)))

(declare-fun m!7895002 () Bool)

(assert (=> b!7224779 m!7895002))

(declare-fun m!7895004 () Bool)

(assert (=> b!7224780 m!7895004))

(assert (=> b!7224408 d!2244166))

(declare-fun b!7224781 () Bool)

(declare-fun e!4331054 () Bool)

(declare-fun e!4331055 () Bool)

(assert (=> b!7224781 (= e!4331054 e!4331055)))

(declare-fun c!1340355 () Bool)

(assert (=> b!7224781 (= c!1340355 ((_ is Union!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))

(declare-fun bm!657559 () Bool)

(declare-fun call!657565 () Bool)

(assert (=> bm!657559 (= call!657565 (nullable!7806 (ite c!1340355 (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun b!7224782 () Bool)

(declare-fun e!4331053 () Bool)

(declare-fun call!657564 () Bool)

(assert (=> b!7224782 (= e!4331053 call!657564)))

(declare-fun b!7224783 () Bool)

(declare-fun e!4331057 () Bool)

(assert (=> b!7224783 (= e!4331055 e!4331057)))

(declare-fun res!2931949 () Bool)

(assert (=> b!7224783 (= res!2931949 call!657564)))

(assert (=> b!7224783 (=> (not res!2931949) (not e!4331057))))

(declare-fun b!7224784 () Bool)

(declare-fun e!4331052 () Bool)

(declare-fun e!4331056 () Bool)

(assert (=> b!7224784 (= e!4331052 e!4331056)))

(declare-fun res!2931946 () Bool)

(assert (=> b!7224784 (=> (not res!2931946) (not e!4331056))))

(assert (=> b!7224784 (= res!2931946 (and (not ((_ is EmptyLang!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (not ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun d!2244168 () Bool)

(declare-fun res!2931950 () Bool)

(assert (=> d!2244168 (=> res!2931950 e!4331052)))

(assert (=> d!2244168 (= res!2931950 ((_ is EmptyExpr!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))

(assert (=> d!2244168 (= (nullableFct!3059 (regOne!37310 (h!76239 (exprs!7851 c!10544)))) e!4331052)))

(declare-fun b!7224785 () Bool)

(assert (=> b!7224785 (= e!4331057 call!657565)))

(declare-fun b!7224786 () Bool)

(assert (=> b!7224786 (= e!4331055 e!4331053)))

(declare-fun res!2931948 () Bool)

(assert (=> b!7224786 (= res!2931948 call!657565)))

(assert (=> b!7224786 (=> res!2931948 e!4331053)))

(declare-fun bm!657560 () Bool)

(assert (=> bm!657560 (= call!657564 (nullable!7806 (ite c!1340355 (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun b!7224787 () Bool)

(assert (=> b!7224787 (= e!4331056 e!4331054)))

(declare-fun res!2931947 () Bool)

(assert (=> b!7224787 (=> res!2931947 e!4331054)))

(assert (=> b!7224787 (= res!2931947 ((_ is Star!18399) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))

(assert (= (and d!2244168 (not res!2931950)) b!7224784))

(assert (= (and b!7224784 res!2931946) b!7224787))

(assert (= (and b!7224787 (not res!2931947)) b!7224781))

(assert (= (and b!7224781 c!1340355) b!7224786))

(assert (= (and b!7224781 (not c!1340355)) b!7224783))

(assert (= (and b!7224786 (not res!2931948)) b!7224782))

(assert (= (and b!7224783 res!2931949) b!7224785))

(assert (= (or b!7224782 b!7224783) bm!657560))

(assert (= (or b!7224786 b!7224785) bm!657559))

(declare-fun m!7895006 () Bool)

(assert (=> bm!657559 m!7895006))

(declare-fun m!7895008 () Bool)

(assert (=> bm!657560 m!7895008))

(assert (=> d!2244130 d!2244168))

(declare-fun d!2244170 () Bool)

(declare-fun res!2931951 () Bool)

(declare-fun e!4331058 () Bool)

(assert (=> d!2244170 (=> res!2931951 e!4331058)))

(assert (=> d!2244170 (= res!2931951 ((_ is Nil!69793) (t!383946 (toList!11334 z!3517))))))

(assert (=> d!2244170 (= (forall!17223 (t!383946 (toList!11334 z!3517)) lambda!438350) e!4331058)))

(declare-fun b!7224788 () Bool)

(declare-fun e!4331059 () Bool)

(assert (=> b!7224788 (= e!4331058 e!4331059)))

(declare-fun res!2931952 () Bool)

(assert (=> b!7224788 (=> (not res!2931952) (not e!4331059))))

(assert (=> b!7224788 (= res!2931952 (dynLambda!28426 lambda!438350 (h!76241 (t!383946 (toList!11334 z!3517)))))))

(declare-fun b!7224789 () Bool)

(assert (=> b!7224789 (= e!4331059 (forall!17223 (t!383946 (t!383946 (toList!11334 z!3517))) lambda!438350))))

(assert (= (and d!2244170 (not res!2931951)) b!7224788))

(assert (= (and b!7224788 res!2931952) b!7224789))

(declare-fun b_lambda!276589 () Bool)

(assert (=> (not b_lambda!276589) (not b!7224788)))

(declare-fun m!7895010 () Bool)

(assert (=> b!7224788 m!7895010))

(declare-fun m!7895012 () Bool)

(assert (=> b!7224789 m!7895012))

(assert (=> b!7224626 d!2244170))

(declare-fun b!7224790 () Bool)

(declare-fun e!4331060 () (InoxSet Context!14702))

(declare-fun call!657570 () (InoxSet Context!14702))

(declare-fun call!657571 () (InoxSet Context!14702))

(assert (=> b!7224790 (= e!4331060 ((_ map or) call!657570 call!657571))))

(declare-fun b!7224791 () Bool)

(declare-fun c!1340360 () Bool)

(assert (=> b!7224791 (= c!1340360 ((_ is Star!18399) (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun e!4331062 () (InoxSet Context!14702))

(declare-fun e!4331065 () (InoxSet Context!14702))

(assert (=> b!7224791 (= e!4331062 e!4331065)))

(declare-fun c!1340358 () Bool)

(declare-fun d!2244172 () Bool)

(assert (=> d!2244172 (= c!1340358 (and ((_ is ElementMatch!18399) (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (= (c!1340227 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) lt!2571752)))))

(declare-fun e!4331064 () (InoxSet Context!14702))

(assert (=> d!2244172 (= (derivationStepZipperDown!2533 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (ite c!1340314 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657511)) lt!2571752) e!4331064)))

(declare-fun bm!657561 () Bool)

(declare-fun call!657569 () (InoxSet Context!14702))

(declare-fun call!657566 () (InoxSet Context!14702))

(assert (=> bm!657561 (= call!657569 call!657566)))

(declare-fun b!7224792 () Bool)

(declare-fun e!4331063 () Bool)

(assert (=> b!7224792 (= e!4331063 (nullable!7806 (regOne!37310 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224793 () Bool)

(assert (=> b!7224793 (= e!4331064 e!4331060)))

(declare-fun c!1340357 () Bool)

(assert (=> b!7224793 (= c!1340357 ((_ is Union!18399) (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224794 () Bool)

(assert (=> b!7224794 (= e!4331064 (store ((as const (Array Context!14702 Bool)) false) (ite c!1340314 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657511)) true))))

(declare-fun bm!657562 () Bool)

(declare-fun call!657568 () List!69915)

(declare-fun call!657567 () List!69915)

(assert (=> bm!657562 (= call!657568 call!657567)))

(declare-fun b!7224795 () Bool)

(assert (=> b!7224795 (= e!4331065 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340356 () Bool)

(declare-fun bm!657563 () Bool)

(declare-fun c!1340359 () Bool)

(assert (=> bm!657563 (= call!657571 (derivationStepZipperDown!2533 (ite c!1340357 (regTwo!37311 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (ite c!1340356 (regTwo!37310 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (ite c!1340359 (regOne!37310 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (reg!18728 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))) (ite (or c!1340357 c!1340356) (ite c!1340314 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657511)) (Context!14703 call!657568)) lt!2571752))))

(declare-fun b!7224796 () Bool)

(assert (=> b!7224796 (= c!1340356 e!4331063)))

(declare-fun res!2931953 () Bool)

(assert (=> b!7224796 (=> (not res!2931953) (not e!4331063))))

(assert (=> b!7224796 (= res!2931953 ((_ is Concat!27244) (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun e!4331061 () (InoxSet Context!14702))

(assert (=> b!7224796 (= e!4331060 e!4331061)))

(declare-fun bm!657564 () Bool)

(assert (=> bm!657564 (= call!657567 ($colon$colon!2855 (exprs!7851 (ite c!1340314 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657511))) (ite (or c!1340356 c!1340359) (regTwo!37310 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224797 () Bool)

(assert (=> b!7224797 (= e!4331061 e!4331062)))

(assert (=> b!7224797 (= c!1340359 ((_ is Concat!27244) (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224798 () Bool)

(assert (=> b!7224798 (= e!4331065 call!657569)))

(declare-fun bm!657565 () Bool)

(assert (=> bm!657565 (= call!657570 (derivationStepZipperDown!2533 (ite c!1340357 (regOne!37311 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (regOne!37310 (ite c!1340314 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (ite c!1340357 (ite c!1340314 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657511)) (Context!14703 call!657567)) lt!2571752))))

(declare-fun b!7224799 () Bool)

(assert (=> b!7224799 (= e!4331061 ((_ map or) call!657570 call!657566))))

(declare-fun b!7224800 () Bool)

(assert (=> b!7224800 (= e!4331062 call!657569)))

(declare-fun bm!657566 () Bool)

(assert (=> bm!657566 (= call!657566 call!657571)))

(assert (= (and d!2244172 c!1340358) b!7224794))

(assert (= (and d!2244172 (not c!1340358)) b!7224793))

(assert (= (and b!7224793 c!1340357) b!7224790))

(assert (= (and b!7224793 (not c!1340357)) b!7224796))

(assert (= (and b!7224796 res!2931953) b!7224792))

(assert (= (and b!7224796 c!1340356) b!7224799))

(assert (= (and b!7224796 (not c!1340356)) b!7224797))

(assert (= (and b!7224797 c!1340359) b!7224800))

(assert (= (and b!7224797 (not c!1340359)) b!7224791))

(assert (= (and b!7224791 c!1340360) b!7224798))

(assert (= (and b!7224791 (not c!1340360)) b!7224795))

(assert (= (or b!7224800 b!7224798) bm!657562))

(assert (= (or b!7224800 b!7224798) bm!657561))

(assert (= (or b!7224799 bm!657561) bm!657566))

(assert (= (or b!7224799 bm!657562) bm!657564))

(assert (= (or b!7224790 b!7224799) bm!657565))

(assert (= (or b!7224790 bm!657566) bm!657563))

(declare-fun m!7895014 () Bool)

(assert (=> bm!657563 m!7895014))

(declare-fun m!7895016 () Bool)

(assert (=> b!7224792 m!7895016))

(declare-fun m!7895018 () Bool)

(assert (=> bm!657565 m!7895018))

(declare-fun m!7895020 () Bool)

(assert (=> bm!657564 m!7895020))

(declare-fun m!7895022 () Bool)

(assert (=> b!7224794 m!7895022))

(assert (=> bm!657509 d!2244172))

(declare-fun bm!657567 () Bool)

(declare-fun call!657573 () Bool)

(declare-fun c!1340361 () Bool)

(declare-fun c!1340362 () Bool)

(assert (=> bm!657567 (= call!657573 (validRegex!9493 (ite c!1340362 (reg!18728 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) (ite c!1340361 (regOne!37311 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) (regTwo!37310 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071))))))))))))

(declare-fun b!7224801 () Bool)

(declare-fun e!4331071 () Bool)

(declare-fun e!4331072 () Bool)

(assert (=> b!7224801 (= e!4331071 e!4331072)))

(assert (=> b!7224801 (= c!1340361 ((_ is Union!18399) (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))))))

(declare-fun b!7224802 () Bool)

(declare-fun e!4331066 () Bool)

(declare-fun e!4331067 () Bool)

(assert (=> b!7224802 (= e!4331066 e!4331067)))

(declare-fun res!2931958 () Bool)

(assert (=> b!7224802 (=> (not res!2931958) (not e!4331067))))

(declare-fun call!657574 () Bool)

(assert (=> b!7224802 (= res!2931958 call!657574)))

(declare-fun b!7224803 () Bool)

(declare-fun e!4331069 () Bool)

(assert (=> b!7224803 (= e!4331069 call!657574)))

(declare-fun b!7224804 () Bool)

(declare-fun res!2931956 () Bool)

(assert (=> b!7224804 (=> (not res!2931956) (not e!4331069))))

(declare-fun call!657572 () Bool)

(assert (=> b!7224804 (= res!2931956 call!657572)))

(assert (=> b!7224804 (= e!4331072 e!4331069)))

(declare-fun b!7224805 () Bool)

(declare-fun res!2931954 () Bool)

(assert (=> b!7224805 (=> res!2931954 e!4331066)))

(assert (=> b!7224805 (= res!2931954 (not ((_ is Concat!27244) (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071))))))))))

(assert (=> b!7224805 (= e!4331072 e!4331066)))

(declare-fun b!7224806 () Bool)

(declare-fun e!4331068 () Bool)

(assert (=> b!7224806 (= e!4331068 call!657573)))

(declare-fun b!7224807 () Bool)

(assert (=> b!7224807 (= e!4331067 call!657572)))

(declare-fun bm!657568 () Bool)

(assert (=> bm!657568 (= call!657572 call!657573)))

(declare-fun d!2244174 () Bool)

(declare-fun res!2931957 () Bool)

(declare-fun e!4331070 () Bool)

(assert (=> d!2244174 (=> res!2931957 e!4331070)))

(assert (=> d!2244174 (= res!2931957 ((_ is ElementMatch!18399) (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))))))

(assert (=> d!2244174 (= (validRegex!9493 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) e!4331070)))

(declare-fun b!7224808 () Bool)

(assert (=> b!7224808 (= e!4331071 e!4331068)))

(declare-fun res!2931955 () Bool)

(assert (=> b!7224808 (= res!2931955 (not (nullable!7806 (reg!18728 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))))))))

(assert (=> b!7224808 (=> (not res!2931955) (not e!4331068))))

(declare-fun bm!657569 () Bool)

(assert (=> bm!657569 (= call!657574 (validRegex!9493 (ite c!1340361 (regTwo!37311 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) (regOne!37310 (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))))))))

(declare-fun b!7224809 () Bool)

(assert (=> b!7224809 (= e!4331070 e!4331071)))

(assert (=> b!7224809 (= c!1340362 ((_ is Star!18399) (ite c!1340343 (reg!18728 (h!76239 (exprs!7851 empty!3071))) (ite c!1340342 (regOne!37311 (h!76239 (exprs!7851 empty!3071))) (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))))))

(assert (= (and d!2244174 (not res!2931957)) b!7224809))

(assert (= (and b!7224809 c!1340362) b!7224808))

(assert (= (and b!7224809 (not c!1340362)) b!7224801))

(assert (= (and b!7224808 res!2931955) b!7224806))

(assert (= (and b!7224801 c!1340361) b!7224804))

(assert (= (and b!7224801 (not c!1340361)) b!7224805))

(assert (= (and b!7224804 res!2931956) b!7224803))

(assert (= (and b!7224805 (not res!2931954)) b!7224802))

(assert (= (and b!7224802 res!2931958) b!7224807))

(assert (= (or b!7224804 b!7224807) bm!657568))

(assert (= (or b!7224803 b!7224802) bm!657569))

(assert (= (or b!7224806 bm!657568) bm!657567))

(declare-fun m!7895024 () Bool)

(assert (=> bm!657567 m!7895024))

(declare-fun m!7895026 () Bool)

(assert (=> b!7224808 m!7895026))

(declare-fun m!7895028 () Bool)

(assert (=> bm!657569 m!7895028))

(assert (=> bm!657541 d!2244174))

(declare-fun bm!657570 () Bool)

(declare-fun c!1340364 () Bool)

(declare-fun c!1340363 () Bool)

(declare-fun call!657576 () Bool)

(assert (=> bm!657570 (= call!657576 (validRegex!9493 (ite c!1340364 (reg!18728 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) (ite c!1340363 (regOne!37311 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) (regTwo!37310 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))))))))

(declare-fun b!7224810 () Bool)

(declare-fun e!4331078 () Bool)

(declare-fun e!4331079 () Bool)

(assert (=> b!7224810 (= e!4331078 e!4331079)))

(assert (=> b!7224810 (= c!1340363 ((_ is Union!18399) (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))))))

(declare-fun b!7224811 () Bool)

(declare-fun e!4331073 () Bool)

(declare-fun e!4331074 () Bool)

(assert (=> b!7224811 (= e!4331073 e!4331074)))

(declare-fun res!2931963 () Bool)

(assert (=> b!7224811 (=> (not res!2931963) (not e!4331074))))

(declare-fun call!657577 () Bool)

(assert (=> b!7224811 (= res!2931963 call!657577)))

(declare-fun b!7224812 () Bool)

(declare-fun e!4331076 () Bool)

(assert (=> b!7224812 (= e!4331076 call!657577)))

(declare-fun b!7224813 () Bool)

(declare-fun res!2931961 () Bool)

(assert (=> b!7224813 (=> (not res!2931961) (not e!4331076))))

(declare-fun call!657575 () Bool)

(assert (=> b!7224813 (= res!2931961 call!657575)))

(assert (=> b!7224813 (= e!4331079 e!4331076)))

(declare-fun b!7224814 () Bool)

(declare-fun res!2931959 () Bool)

(assert (=> b!7224814 (=> res!2931959 e!4331073)))

(assert (=> b!7224814 (= res!2931959 (not ((_ is Concat!27244) (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))))))

(assert (=> b!7224814 (= e!4331079 e!4331073)))

(declare-fun b!7224815 () Bool)

(declare-fun e!4331075 () Bool)

(assert (=> b!7224815 (= e!4331075 call!657576)))

(declare-fun b!7224816 () Bool)

(assert (=> b!7224816 (= e!4331074 call!657575)))

(declare-fun bm!657571 () Bool)

(assert (=> bm!657571 (= call!657575 call!657576)))

(declare-fun d!2244176 () Bool)

(declare-fun res!2931962 () Bool)

(declare-fun e!4331077 () Bool)

(assert (=> d!2244176 (=> res!2931962 e!4331077)))

(assert (=> d!2244176 (= res!2931962 ((_ is ElementMatch!18399) (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))))))

(assert (=> d!2244176 (= (validRegex!9493 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) e!4331077)))

(declare-fun b!7224817 () Bool)

(assert (=> b!7224817 (= e!4331078 e!4331075)))

(declare-fun res!2931960 () Bool)

(assert (=> b!7224817 (= res!2931960 (not (nullable!7806 (reg!18728 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))))))))

(assert (=> b!7224817 (=> (not res!2931960) (not e!4331075))))

(declare-fun bm!657572 () Bool)

(assert (=> bm!657572 (= call!657577 (validRegex!9493 (ite c!1340363 (regTwo!37311 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))) (regOne!37310 (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))))))))

(declare-fun b!7224818 () Bool)

(assert (=> b!7224818 (= e!4331077 e!4331078)))

(assert (=> b!7224818 (= c!1340364 ((_ is Star!18399) (ite c!1340348 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522))) (regOne!37310 (h!76239 (exprs!7851 setElem!53522))))))))

(assert (= (and d!2244176 (not res!2931962)) b!7224818))

(assert (= (and b!7224818 c!1340364) b!7224817))

(assert (= (and b!7224818 (not c!1340364)) b!7224810))

(assert (= (and b!7224817 res!2931960) b!7224815))

(assert (= (and b!7224810 c!1340363) b!7224813))

(assert (= (and b!7224810 (not c!1340363)) b!7224814))

(assert (= (and b!7224813 res!2931961) b!7224812))

(assert (= (and b!7224814 (not res!2931959)) b!7224811))

(assert (= (and b!7224811 res!2931963) b!7224816))

(assert (= (or b!7224813 b!7224816) bm!657571))

(assert (= (or b!7224812 b!7224811) bm!657572))

(assert (= (or b!7224815 bm!657571) bm!657570))

(declare-fun m!7895030 () Bool)

(assert (=> bm!657570 m!7895030))

(declare-fun m!7895032 () Bool)

(assert (=> b!7224817 m!7895032))

(declare-fun m!7895034 () Bool)

(assert (=> bm!657572 m!7895034))

(assert (=> bm!657552 d!2244176))

(declare-fun b!7224819 () Bool)

(declare-fun e!4331080 () (InoxSet Context!14702))

(declare-fun call!657582 () (InoxSet Context!14702))

(declare-fun call!657583 () (InoxSet Context!14702))

(assert (=> b!7224819 (= e!4331080 ((_ map or) call!657582 call!657583))))

(declare-fun c!1340369 () Bool)

(declare-fun b!7224820 () Bool)

(assert (=> b!7224820 (= c!1340369 ((_ is Star!18399) (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))))

(declare-fun e!4331082 () (InoxSet Context!14702))

(declare-fun e!4331085 () (InoxSet Context!14702))

(assert (=> b!7224820 (= e!4331082 e!4331085)))

(declare-fun c!1340367 () Bool)

(declare-fun d!2244178 () Bool)

(assert (=> d!2244178 (= c!1340367 (and ((_ is ElementMatch!18399) (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) (= (c!1340227 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) lt!2571752)))))

(declare-fun e!4331084 () (InoxSet Context!14702))

(assert (=> d!2244178 (= (derivationStepZipperDown!2533 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))) (ite (or c!1340307 c!1340306) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657505)) lt!2571752) e!4331084)))

(declare-fun bm!657573 () Bool)

(declare-fun call!657581 () (InoxSet Context!14702))

(declare-fun call!657578 () (InoxSet Context!14702))

(assert (=> bm!657573 (= call!657581 call!657578)))

(declare-fun b!7224821 () Bool)

(declare-fun e!4331083 () Bool)

(assert (=> b!7224821 (= e!4331083 (nullable!7806 (regOne!37310 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))))))

(declare-fun b!7224822 () Bool)

(assert (=> b!7224822 (= e!4331084 e!4331080)))

(declare-fun c!1340366 () Bool)

(assert (=> b!7224822 (= c!1340366 ((_ is Union!18399) (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))))

(declare-fun b!7224823 () Bool)

(assert (=> b!7224823 (= e!4331084 (store ((as const (Array Context!14702 Bool)) false) (ite (or c!1340307 c!1340306) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657505)) true))))

(declare-fun bm!657574 () Bool)

(declare-fun call!657580 () List!69915)

(declare-fun call!657579 () List!69915)

(assert (=> bm!657574 (= call!657580 call!657579)))

(declare-fun b!7224824 () Bool)

(assert (=> b!7224824 (= e!4331085 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340365 () Bool)

(declare-fun bm!657575 () Bool)

(declare-fun c!1340368 () Bool)

(assert (=> bm!657575 (= call!657583 (derivationStepZipperDown!2533 (ite c!1340366 (regTwo!37311 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) (ite c!1340365 (regTwo!37310 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) (ite c!1340368 (regOne!37310 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) (reg!18728 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))))) (ite (or c!1340366 c!1340365) (ite (or c!1340307 c!1340306) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657505)) (Context!14703 call!657580)) lt!2571752))))

(declare-fun b!7224825 () Bool)

(assert (=> b!7224825 (= c!1340365 e!4331083)))

(declare-fun res!2931964 () Bool)

(assert (=> b!7224825 (=> (not res!2931964) (not e!4331083))))

(assert (=> b!7224825 (= res!2931964 ((_ is Concat!27244) (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))))

(declare-fun e!4331081 () (InoxSet Context!14702))

(assert (=> b!7224825 (= e!4331080 e!4331081)))

(declare-fun bm!657576 () Bool)

(assert (=> bm!657576 (= call!657579 ($colon$colon!2855 (exprs!7851 (ite (or c!1340307 c!1340306) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657505))) (ite (or c!1340365 c!1340368) (regTwo!37310 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))))))

(declare-fun b!7224826 () Bool)

(assert (=> b!7224826 (= e!4331081 e!4331082)))

(assert (=> b!7224826 (= c!1340368 ((_ is Concat!27244) (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))))

(declare-fun b!7224827 () Bool)

(assert (=> b!7224827 (= e!4331085 call!657581)))

(declare-fun bm!657577 () Bool)

(assert (=> bm!657577 (= call!657582 (derivationStepZipperDown!2533 (ite c!1340366 (regOne!37311 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))) (regOne!37310 (ite c!1340307 (regTwo!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340306 (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340309 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (reg!18728 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))) (ite c!1340366 (ite (or c!1340307 c!1340306) (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657505)) (Context!14703 call!657579)) lt!2571752))))

(declare-fun b!7224828 () Bool)

(assert (=> b!7224828 (= e!4331081 ((_ map or) call!657582 call!657578))))

(declare-fun b!7224829 () Bool)

(assert (=> b!7224829 (= e!4331082 call!657581)))

(declare-fun bm!657578 () Bool)

(assert (=> bm!657578 (= call!657578 call!657583)))

(assert (= (and d!2244178 c!1340367) b!7224823))

(assert (= (and d!2244178 (not c!1340367)) b!7224822))

(assert (= (and b!7224822 c!1340366) b!7224819))

(assert (= (and b!7224822 (not c!1340366)) b!7224825))

(assert (= (and b!7224825 res!2931964) b!7224821))

(assert (= (and b!7224825 c!1340365) b!7224828))

(assert (= (and b!7224825 (not c!1340365)) b!7224826))

(assert (= (and b!7224826 c!1340368) b!7224829))

(assert (= (and b!7224826 (not c!1340368)) b!7224820))

(assert (= (and b!7224820 c!1340369) b!7224827))

(assert (= (and b!7224820 (not c!1340369)) b!7224824))

(assert (= (or b!7224829 b!7224827) bm!657574))

(assert (= (or b!7224829 b!7224827) bm!657573))

(assert (= (or b!7224828 bm!657573) bm!657578))

(assert (= (or b!7224828 bm!657574) bm!657576))

(assert (= (or b!7224819 b!7224828) bm!657577))

(assert (= (or b!7224819 bm!657578) bm!657575))

(declare-fun m!7895036 () Bool)

(assert (=> bm!657575 m!7895036))

(declare-fun m!7895038 () Bool)

(assert (=> b!7224821 m!7895038))

(declare-fun m!7895040 () Bool)

(assert (=> bm!657577 m!7895040))

(declare-fun m!7895042 () Bool)

(assert (=> bm!657576 m!7895042))

(declare-fun m!7895044 () Bool)

(assert (=> b!7224823 m!7895044))

(assert (=> bm!657500 d!2244178))

(declare-fun bs!1901755 () Bool)

(declare-fun d!2244180 () Bool)

(assert (= bs!1901755 (and d!2244180 d!2244108)))

(declare-fun lambda!438365 () Int)

(assert (=> bs!1901755 (= lambda!438365 lambda!438363)))

(declare-fun bs!1901756 () Bool)

(assert (= bs!1901756 (and d!2244180 d!2243910)))

(assert (=> bs!1901756 (= lambda!438365 lambda!438336)))

(declare-fun bs!1901757 () Bool)

(assert (= bs!1901757 (and d!2244180 d!2244046)))

(assert (=> bs!1901757 (= lambda!438365 lambda!438358)))

(declare-fun bs!1901758 () Bool)

(assert (= bs!1901758 (and d!2244180 d!2243912)))

(assert (=> bs!1901758 (= lambda!438365 lambda!438337)))

(declare-fun bs!1901759 () Bool)

(assert (= bs!1901759 (and d!2244180 d!2244076)))

(assert (=> bs!1901759 (= lambda!438365 lambda!438361)))

(declare-fun bs!1901760 () Bool)

(assert (= bs!1901760 (and d!2244180 d!2243908)))

(assert (=> bs!1901760 (= lambda!438365 lambda!438335)))

(declare-fun bs!1901761 () Bool)

(assert (= bs!1901761 (and d!2244180 d!2244102)))

(assert (=> bs!1901761 (= lambda!438365 lambda!438362)))

(declare-fun bs!1901762 () Bool)

(assert (= bs!1901762 (and d!2244180 d!2243980)))

(assert (=> bs!1901762 (= lambda!438365 lambda!438351)))

(assert (=> d!2244180 (= (inv!89019 (h!76241 res!2931927)) (forall!17221 (exprs!7851 (h!76241 res!2931927)) lambda!438365))))

(declare-fun bs!1901763 () Bool)

(assert (= bs!1901763 d!2244180))

(declare-fun m!7895046 () Bool)

(assert (=> bs!1901763 m!7895046))

(assert (=> b!7224650 d!2244180))

(assert (=> d!2244120 d!2244112))

(assert (=> d!2244120 d!2243974))

(declare-fun bm!657579 () Bool)

(declare-fun call!657585 () Bool)

(declare-fun c!1340371 () Bool)

(declare-fun c!1340370 () Bool)

(assert (=> bm!657579 (= call!657585 (validRegex!9493 (ite c!1340371 (reg!18728 (h!76239 (t!383944 (exprs!7851 setElem!53522)))) (ite c!1340370 (regOne!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522))))))))))

(declare-fun b!7224830 () Bool)

(declare-fun e!4331091 () Bool)

(declare-fun e!4331092 () Bool)

(assert (=> b!7224830 (= e!4331091 e!4331092)))

(assert (=> b!7224830 (= c!1340370 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))

(declare-fun b!7224831 () Bool)

(declare-fun e!4331086 () Bool)

(declare-fun e!4331087 () Bool)

(assert (=> b!7224831 (= e!4331086 e!4331087)))

(declare-fun res!2931969 () Bool)

(assert (=> b!7224831 (=> (not res!2931969) (not e!4331087))))

(declare-fun call!657586 () Bool)

(assert (=> b!7224831 (= res!2931969 call!657586)))

(declare-fun b!7224832 () Bool)

(declare-fun e!4331089 () Bool)

(assert (=> b!7224832 (= e!4331089 call!657586)))

(declare-fun b!7224833 () Bool)

(declare-fun res!2931967 () Bool)

(assert (=> b!7224833 (=> (not res!2931967) (not e!4331089))))

(declare-fun call!657584 () Bool)

(assert (=> b!7224833 (= res!2931967 call!657584)))

(assert (=> b!7224833 (= e!4331092 e!4331089)))

(declare-fun b!7224834 () Bool)

(declare-fun res!2931965 () Bool)

(assert (=> b!7224834 (=> res!2931965 e!4331086)))

(assert (=> b!7224834 (= res!2931965 (not ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 setElem!53522))))))))

(assert (=> b!7224834 (= e!4331092 e!4331086)))

(declare-fun b!7224835 () Bool)

(declare-fun e!4331088 () Bool)

(assert (=> b!7224835 (= e!4331088 call!657585)))

(declare-fun b!7224836 () Bool)

(assert (=> b!7224836 (= e!4331087 call!657584)))

(declare-fun bm!657580 () Bool)

(assert (=> bm!657580 (= call!657584 call!657585)))

(declare-fun d!2244182 () Bool)

(declare-fun res!2931968 () Bool)

(declare-fun e!4331090 () Bool)

(assert (=> d!2244182 (=> res!2931968 e!4331090)))

(assert (=> d!2244182 (= res!2931968 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))

(assert (=> d!2244182 (= (validRegex!9493 (h!76239 (t!383944 (exprs!7851 setElem!53522)))) e!4331090)))

(declare-fun b!7224837 () Bool)

(assert (=> b!7224837 (= e!4331091 e!4331088)))

(declare-fun res!2931966 () Bool)

(assert (=> b!7224837 (= res!2931966 (not (nullable!7806 (reg!18728 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))))

(assert (=> b!7224837 (=> (not res!2931966) (not e!4331088))))

(declare-fun bm!657581 () Bool)

(assert (=> bm!657581 (= call!657586 (validRegex!9493 (ite c!1340370 (regTwo!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))) (regOne!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))))

(declare-fun b!7224838 () Bool)

(assert (=> b!7224838 (= e!4331090 e!4331091)))

(assert (=> b!7224838 (= c!1340371 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 setElem!53522)))))))

(assert (= (and d!2244182 (not res!2931968)) b!7224838))

(assert (= (and b!7224838 c!1340371) b!7224837))

(assert (= (and b!7224838 (not c!1340371)) b!7224830))

(assert (= (and b!7224837 res!2931966) b!7224835))

(assert (= (and b!7224830 c!1340370) b!7224833))

(assert (= (and b!7224830 (not c!1340370)) b!7224834))

(assert (= (and b!7224833 res!2931967) b!7224832))

(assert (= (and b!7224834 (not res!2931965)) b!7224831))

(assert (= (and b!7224831 res!2931969) b!7224836))

(assert (= (or b!7224833 b!7224836) bm!657580))

(assert (= (or b!7224832 b!7224831) bm!657581))

(assert (= (or b!7224835 bm!657580) bm!657579))

(declare-fun m!7895048 () Bool)

(assert (=> bm!657579 m!7895048))

(declare-fun m!7895050 () Bool)

(assert (=> b!7224837 m!7895050))

(declare-fun m!7895052 () Bool)

(assert (=> bm!657581 m!7895052))

(assert (=> bs!1901750 d!2244182))

(assert (=> d!2244098 d!2244074))

(declare-fun d!2244184 () Bool)

(declare-fun res!2931970 () Bool)

(declare-fun e!4331093 () Bool)

(assert (=> d!2244184 (=> res!2931970 e!4331093)))

(assert (=> d!2244184 (= res!2931970 ((_ is Nil!69793) (toList!11334 z!3517)))))

(assert (=> d!2244184 (= (forall!17223 (toList!11334 z!3517) lambda!438364) e!4331093)))

(declare-fun b!7224839 () Bool)

(declare-fun e!4331094 () Bool)

(assert (=> b!7224839 (= e!4331093 e!4331094)))

(declare-fun res!2931971 () Bool)

(assert (=> b!7224839 (=> (not res!2931971) (not e!4331094))))

(assert (=> b!7224839 (= res!2931971 (dynLambda!28426 lambda!438364 (h!76241 (toList!11334 z!3517))))))

(declare-fun b!7224840 () Bool)

(assert (=> b!7224840 (= e!4331094 (forall!17223 (t!383946 (toList!11334 z!3517)) lambda!438364))))

(assert (= (and d!2244184 (not res!2931970)) b!7224839))

(assert (= (and b!7224839 res!2931971) b!7224840))

(declare-fun b_lambda!276591 () Bool)

(assert (=> (not b_lambda!276591) (not b!7224839)))

(declare-fun m!7895054 () Bool)

(assert (=> b!7224839 m!7895054))

(declare-fun m!7895056 () Bool)

(assert (=> b!7224840 m!7895056))

(assert (=> d!2244112 d!2244184))

(declare-fun d!2244186 () Bool)

(declare-fun lt!2571783 () Bool)

(assert (=> d!2244186 (= lt!2571783 (select (content!14341 (t!383946 (t!383946 lt!2571755))) (h!76241 lt!2571755)))))

(declare-fun e!4331096 () Bool)

(assert (=> d!2244186 (= lt!2571783 e!4331096)))

(declare-fun res!2931972 () Bool)

(assert (=> d!2244186 (=> (not res!2931972) (not e!4331096))))

(assert (=> d!2244186 (= res!2931972 ((_ is Cons!69793) (t!383946 (t!383946 lt!2571755))))))

(assert (=> d!2244186 (= (contains!20734 (t!383946 (t!383946 lt!2571755)) (h!76241 lt!2571755)) lt!2571783)))

(declare-fun b!7224841 () Bool)

(declare-fun e!4331095 () Bool)

(assert (=> b!7224841 (= e!4331096 e!4331095)))

(declare-fun res!2931973 () Bool)

(assert (=> b!7224841 (=> res!2931973 e!4331095)))

(assert (=> b!7224841 (= res!2931973 (= (h!76241 (t!383946 (t!383946 lt!2571755))) (h!76241 lt!2571755)))))

(declare-fun b!7224842 () Bool)

(assert (=> b!7224842 (= e!4331095 (contains!20734 (t!383946 (t!383946 (t!383946 lt!2571755))) (h!76241 lt!2571755)))))

(assert (= (and d!2244186 res!2931972) b!7224841))

(assert (= (and b!7224841 (not res!2931973)) b!7224842))

(assert (=> d!2244186 m!7894814))

(declare-fun m!7895058 () Bool)

(assert (=> d!2244186 m!7895058))

(declare-fun m!7895060 () Bool)

(assert (=> b!7224842 m!7895060))

(assert (=> b!7224556 d!2244186))

(declare-fun d!2244188 () Bool)

(declare-fun lt!2571784 () Bool)

(assert (=> d!2244188 (= lt!2571784 (select (content!14341 (t!383946 (t!383946 lt!2571755))) (h!76241 (t!383946 lt!2571755))))))

(declare-fun e!4331098 () Bool)

(assert (=> d!2244188 (= lt!2571784 e!4331098)))

(declare-fun res!2931974 () Bool)

(assert (=> d!2244188 (=> (not res!2931974) (not e!4331098))))

(assert (=> d!2244188 (= res!2931974 ((_ is Cons!69793) (t!383946 (t!383946 lt!2571755))))))

(assert (=> d!2244188 (= (contains!20734 (t!383946 (t!383946 lt!2571755)) (h!76241 (t!383946 lt!2571755))) lt!2571784)))

(declare-fun b!7224843 () Bool)

(declare-fun e!4331097 () Bool)

(assert (=> b!7224843 (= e!4331098 e!4331097)))

(declare-fun res!2931975 () Bool)

(assert (=> b!7224843 (=> res!2931975 e!4331097)))

(assert (=> b!7224843 (= res!2931975 (= (h!76241 (t!383946 (t!383946 lt!2571755))) (h!76241 (t!383946 lt!2571755))))))

(declare-fun b!7224844 () Bool)

(assert (=> b!7224844 (= e!4331097 (contains!20734 (t!383946 (t!383946 (t!383946 lt!2571755))) (h!76241 (t!383946 lt!2571755))))))

(assert (= (and d!2244188 res!2931974) b!7224843))

(assert (= (and b!7224843 (not res!2931975)) b!7224844))

(assert (=> d!2244188 m!7894814))

(declare-fun m!7895062 () Bool)

(assert (=> d!2244188 m!7895062))

(declare-fun m!7895064 () Bool)

(assert (=> b!7224844 m!7895064))

(assert (=> b!7224573 d!2244188))

(declare-fun bs!1901764 () Bool)

(declare-fun d!2244190 () Bool)

(assert (= bs!1901764 (and d!2244190 d!2244108)))

(declare-fun lambda!438366 () Int)

(assert (=> bs!1901764 (= lambda!438366 lambda!438363)))

(declare-fun bs!1901765 () Bool)

(assert (= bs!1901765 (and d!2244190 d!2243910)))

(assert (=> bs!1901765 (= lambda!438366 lambda!438336)))

(declare-fun bs!1901766 () Bool)

(assert (= bs!1901766 (and d!2244190 d!2244046)))

(assert (=> bs!1901766 (= lambda!438366 lambda!438358)))

(declare-fun bs!1901767 () Bool)

(assert (= bs!1901767 (and d!2244190 d!2243912)))

(assert (=> bs!1901767 (= lambda!438366 lambda!438337)))

(declare-fun bs!1901768 () Bool)

(assert (= bs!1901768 (and d!2244190 d!2244180)))

(assert (=> bs!1901768 (= lambda!438366 lambda!438365)))

(declare-fun bs!1901769 () Bool)

(assert (= bs!1901769 (and d!2244190 d!2244076)))

(assert (=> bs!1901769 (= lambda!438366 lambda!438361)))

(declare-fun bs!1901770 () Bool)

(assert (= bs!1901770 (and d!2244190 d!2243908)))

(assert (=> bs!1901770 (= lambda!438366 lambda!438335)))

(declare-fun bs!1901771 () Bool)

(assert (= bs!1901771 (and d!2244190 d!2244102)))

(assert (=> bs!1901771 (= lambda!438366 lambda!438362)))

(declare-fun bs!1901772 () Bool)

(assert (= bs!1901772 (and d!2244190 d!2243980)))

(assert (=> bs!1901772 (= lambda!438366 lambda!438351)))

(assert (=> d!2244190 (= (inv!89019 setElem!53541) (forall!17221 (exprs!7851 setElem!53541) lambda!438366))))

(declare-fun bs!1901773 () Bool)

(assert (= bs!1901773 d!2244190))

(declare-fun m!7895066 () Bool)

(assert (=> bs!1901773 m!7895066))

(assert (=> setNonEmpty!53541 d!2244190))

(declare-fun d!2244192 () Bool)

(assert (=> d!2244192 (= (nullable!7806 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) (nullableFct!3059 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun bs!1901774 () Bool)

(assert (= bs!1901774 d!2244192))

(declare-fun m!7895068 () Bool)

(assert (=> bs!1901774 m!7895068))

(assert (=> b!7224491 d!2244192))

(declare-fun bm!657582 () Bool)

(declare-fun c!1340373 () Bool)

(declare-fun call!657588 () Bool)

(declare-fun c!1340372 () Bool)

(assert (=> bm!657582 (= call!657588 (validRegex!9493 (ite c!1340373 (reg!18728 (h!76239 (exprs!7851 setElem!53528))) (ite c!1340372 (regOne!37311 (h!76239 (exprs!7851 setElem!53528))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53528)))))))))

(declare-fun b!7224845 () Bool)

(declare-fun e!4331104 () Bool)

(declare-fun e!4331105 () Bool)

(assert (=> b!7224845 (= e!4331104 e!4331105)))

(assert (=> b!7224845 (= c!1340372 ((_ is Union!18399) (h!76239 (exprs!7851 setElem!53528))))))

(declare-fun b!7224846 () Bool)

(declare-fun e!4331099 () Bool)

(declare-fun e!4331100 () Bool)

(assert (=> b!7224846 (= e!4331099 e!4331100)))

(declare-fun res!2931980 () Bool)

(assert (=> b!7224846 (=> (not res!2931980) (not e!4331100))))

(declare-fun call!657589 () Bool)

(assert (=> b!7224846 (= res!2931980 call!657589)))

(declare-fun b!7224847 () Bool)

(declare-fun e!4331102 () Bool)

(assert (=> b!7224847 (= e!4331102 call!657589)))

(declare-fun b!7224848 () Bool)

(declare-fun res!2931978 () Bool)

(assert (=> b!7224848 (=> (not res!2931978) (not e!4331102))))

(declare-fun call!657587 () Bool)

(assert (=> b!7224848 (= res!2931978 call!657587)))

(assert (=> b!7224848 (= e!4331105 e!4331102)))

(declare-fun b!7224849 () Bool)

(declare-fun res!2931976 () Bool)

(assert (=> b!7224849 (=> res!2931976 e!4331099)))

(assert (=> b!7224849 (= res!2931976 (not ((_ is Concat!27244) (h!76239 (exprs!7851 setElem!53528)))))))

(assert (=> b!7224849 (= e!4331105 e!4331099)))

(declare-fun b!7224850 () Bool)

(declare-fun e!4331101 () Bool)

(assert (=> b!7224850 (= e!4331101 call!657588)))

(declare-fun b!7224851 () Bool)

(assert (=> b!7224851 (= e!4331100 call!657587)))

(declare-fun bm!657583 () Bool)

(assert (=> bm!657583 (= call!657587 call!657588)))

(declare-fun d!2244194 () Bool)

(declare-fun res!2931979 () Bool)

(declare-fun e!4331103 () Bool)

(assert (=> d!2244194 (=> res!2931979 e!4331103)))

(assert (=> d!2244194 (= res!2931979 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 setElem!53528))))))

(assert (=> d!2244194 (= (validRegex!9493 (h!76239 (exprs!7851 setElem!53528))) e!4331103)))

(declare-fun b!7224852 () Bool)

(assert (=> b!7224852 (= e!4331104 e!4331101)))

(declare-fun res!2931977 () Bool)

(assert (=> b!7224852 (= res!2931977 (not (nullable!7806 (reg!18728 (h!76239 (exprs!7851 setElem!53528))))))))

(assert (=> b!7224852 (=> (not res!2931977) (not e!4331101))))

(declare-fun bm!657584 () Bool)

(assert (=> bm!657584 (= call!657589 (validRegex!9493 (ite c!1340372 (regTwo!37311 (h!76239 (exprs!7851 setElem!53528))) (regOne!37310 (h!76239 (exprs!7851 setElem!53528))))))))

(declare-fun b!7224853 () Bool)

(assert (=> b!7224853 (= e!4331103 e!4331104)))

(assert (=> b!7224853 (= c!1340373 ((_ is Star!18399) (h!76239 (exprs!7851 setElem!53528))))))

(assert (= (and d!2244194 (not res!2931979)) b!7224853))

(assert (= (and b!7224853 c!1340373) b!7224852))

(assert (= (and b!7224853 (not c!1340373)) b!7224845))

(assert (= (and b!7224852 res!2931977) b!7224850))

(assert (= (and b!7224845 c!1340372) b!7224848))

(assert (= (and b!7224845 (not c!1340372)) b!7224849))

(assert (= (and b!7224848 res!2931978) b!7224847))

(assert (= (and b!7224849 (not res!2931976)) b!7224846))

(assert (= (and b!7224846 res!2931980) b!7224851))

(assert (= (or b!7224848 b!7224851) bm!657583))

(assert (= (or b!7224847 b!7224846) bm!657584))

(assert (= (or b!7224850 bm!657583) bm!657582))

(declare-fun m!7895070 () Bool)

(assert (=> bm!657582 m!7895070))

(declare-fun m!7895072 () Bool)

(assert (=> b!7224852 m!7895072))

(declare-fun m!7895074 () Bool)

(assert (=> bm!657584 m!7895074))

(assert (=> bs!1901751 d!2244194))

(declare-fun b!7224854 () Bool)

(declare-fun e!4331106 () (InoxSet Context!14702))

(declare-fun call!657594 () (InoxSet Context!14702))

(declare-fun call!657595 () (InoxSet Context!14702))

(assert (=> b!7224854 (= e!4331106 ((_ map or) call!657594 call!657595))))

(declare-fun b!7224855 () Bool)

(declare-fun c!1340378 () Bool)

(assert (=> b!7224855 (= c!1340378 ((_ is Star!18399) (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun e!4331108 () (InoxSet Context!14702))

(declare-fun e!4331111 () (InoxSet Context!14702))

(assert (=> b!7224855 (= e!4331108 e!4331111)))

(declare-fun d!2244196 () Bool)

(declare-fun c!1340376 () Bool)

(assert (=> d!2244196 (= c!1340376 (and ((_ is ElementMatch!18399) (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) (= (c!1340227 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) lt!2571752)))))

(declare-fun e!4331110 () (InoxSet Context!14702))

(assert (=> d!2244196 (= (derivationStepZipperDown!2533 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))) (ite c!1340307 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657504)) lt!2571752) e!4331110)))

(declare-fun bm!657585 () Bool)

(declare-fun call!657593 () (InoxSet Context!14702))

(declare-fun call!657590 () (InoxSet Context!14702))

(assert (=> bm!657585 (= call!657593 call!657590)))

(declare-fun e!4331109 () Bool)

(declare-fun b!7224856 () Bool)

(assert (=> b!7224856 (= e!4331109 (nullable!7806 (regOne!37310 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7224857 () Bool)

(assert (=> b!7224857 (= e!4331110 e!4331106)))

(declare-fun c!1340375 () Bool)

(assert (=> b!7224857 (= c!1340375 ((_ is Union!18399) (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224858 () Bool)

(assert (=> b!7224858 (= e!4331110 (store ((as const (Array Context!14702 Bool)) false) (ite c!1340307 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657504)) true))))

(declare-fun bm!657586 () Bool)

(declare-fun call!657592 () List!69915)

(declare-fun call!657591 () List!69915)

(assert (=> bm!657586 (= call!657592 call!657591)))

(declare-fun b!7224859 () Bool)

(assert (=> b!7224859 (= e!4331111 ((as const (Array Context!14702 Bool)) false))))

(declare-fun bm!657587 () Bool)

(declare-fun c!1340377 () Bool)

(declare-fun c!1340374 () Bool)

(assert (=> bm!657587 (= call!657595 (derivationStepZipperDown!2533 (ite c!1340375 (regTwo!37311 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) (ite c!1340374 (regTwo!37310 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) (ite c!1340377 (regOne!37310 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) (reg!18728 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))) (ite (or c!1340375 c!1340374) (ite c!1340307 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657504)) (Context!14703 call!657592)) lt!2571752))))

(declare-fun b!7224860 () Bool)

(assert (=> b!7224860 (= c!1340374 e!4331109)))

(declare-fun res!2931981 () Bool)

(assert (=> b!7224860 (=> (not res!2931981) (not e!4331109))))

(assert (=> b!7224860 (= res!2931981 ((_ is Concat!27244) (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun e!4331107 () (InoxSet Context!14702))

(assert (=> b!7224860 (= e!4331106 e!4331107)))

(declare-fun bm!657588 () Bool)

(assert (=> bm!657588 (= call!657591 ($colon$colon!2855 (exprs!7851 (ite c!1340307 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657504))) (ite (or c!1340374 c!1340377) (regTwo!37310 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7224861 () Bool)

(assert (=> b!7224861 (= e!4331107 e!4331108)))

(assert (=> b!7224861 (= c!1340377 ((_ is Concat!27244) (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224862 () Bool)

(assert (=> b!7224862 (= e!4331111 call!657593)))

(declare-fun bm!657589 () Bool)

(assert (=> bm!657589 (= call!657594 (derivationStepZipperDown!2533 (ite c!1340375 (regOne!37311 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))))) (regOne!37310 (ite c!1340307 (regOne!37311 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))) (ite c!1340375 (ite c!1340307 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)) (Context!14703 call!657504)) (Context!14703 call!657591)) lt!2571752))))

(declare-fun b!7224863 () Bool)

(assert (=> b!7224863 (= e!4331107 ((_ map or) call!657594 call!657590))))

(declare-fun b!7224864 () Bool)

(assert (=> b!7224864 (= e!4331108 call!657593)))

(declare-fun bm!657590 () Bool)

(assert (=> bm!657590 (= call!657590 call!657595)))

(assert (= (and d!2244196 c!1340376) b!7224858))

(assert (= (and d!2244196 (not c!1340376)) b!7224857))

(assert (= (and b!7224857 c!1340375) b!7224854))

(assert (= (and b!7224857 (not c!1340375)) b!7224860))

(assert (= (and b!7224860 res!2931981) b!7224856))

(assert (= (and b!7224860 c!1340374) b!7224863))

(assert (= (and b!7224860 (not c!1340374)) b!7224861))

(assert (= (and b!7224861 c!1340377) b!7224864))

(assert (= (and b!7224861 (not c!1340377)) b!7224855))

(assert (= (and b!7224855 c!1340378) b!7224862))

(assert (= (and b!7224855 (not c!1340378)) b!7224859))

(assert (= (or b!7224864 b!7224862) bm!657586))

(assert (= (or b!7224864 b!7224862) bm!657585))

(assert (= (or b!7224863 bm!657585) bm!657590))

(assert (= (or b!7224863 bm!657586) bm!657588))

(assert (= (or b!7224854 b!7224863) bm!657589))

(assert (= (or b!7224854 bm!657590) bm!657587))

(declare-fun m!7895082 () Bool)

(assert (=> bm!657587 m!7895082))

(declare-fun m!7895084 () Bool)

(assert (=> b!7224856 m!7895084))

(declare-fun m!7895086 () Bool)

(assert (=> bm!657589 m!7895086))

(declare-fun m!7895088 () Bool)

(assert (=> bm!657588 m!7895088))

(declare-fun m!7895090 () Bool)

(assert (=> b!7224858 m!7895090))

(assert (=> bm!657502 d!2244196))

(declare-fun d!2244204 () Bool)

(declare-fun c!1340381 () Bool)

(assert (=> d!2244204 (= c!1340381 ((_ is Nil!69793) (t!383946 (t!383946 lt!2571755))))))

(declare-fun e!4331117 () (InoxSet Context!14702))

(assert (=> d!2244204 (= (content!14341 (t!383946 (t!383946 lt!2571755))) e!4331117)))

(declare-fun b!7224872 () Bool)

(assert (=> b!7224872 (= e!4331117 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224873 () Bool)

(assert (=> b!7224873 (= e!4331117 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 (t!383946 (t!383946 lt!2571755))) true) (content!14341 (t!383946 (t!383946 (t!383946 lt!2571755))))))))

(assert (= (and d!2244204 c!1340381) b!7224872))

(assert (= (and d!2244204 (not c!1340381)) b!7224873))

(declare-fun m!7895092 () Bool)

(assert (=> b!7224873 m!7895092))

(declare-fun m!7895094 () Bool)

(assert (=> b!7224873 m!7895094))

(assert (=> b!7224412 d!2244204))

(declare-fun d!2244206 () Bool)

(assert (=> d!2244206 (= (nullable!7806 (reg!18728 (h!76239 (exprs!7851 empty!3071)))) (nullableFct!3059 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))))

(declare-fun bs!1901776 () Bool)

(assert (= bs!1901776 d!2244206))

(declare-fun m!7895096 () Bool)

(assert (=> bs!1901776 m!7895096))

(assert (=> b!7224586 d!2244206))

(declare-fun d!2244208 () Bool)

(assert (=> d!2244208 (= (nullable!7806 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (nullableFct!3059 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))

(declare-fun bs!1901777 () Bool)

(assert (= bs!1901777 d!2244208))

(declare-fun m!7895098 () Bool)

(assert (=> bs!1901777 m!7895098))

(assert (=> b!7224396 d!2244208))

(declare-fun d!2244210 () Bool)

(declare-fun res!2931985 () Bool)

(declare-fun e!4331118 () Bool)

(assert (=> d!2244210 (=> res!2931985 e!4331118)))

(assert (=> d!2244210 (= res!2931985 ((_ is Nil!69793) (t!383946 res!2931777)))))

(assert (=> d!2244210 (= (noDuplicate!2912 (t!383946 res!2931777)) e!4331118)))

(declare-fun b!7224874 () Bool)

(declare-fun e!4331119 () Bool)

(assert (=> b!7224874 (= e!4331118 e!4331119)))

(declare-fun res!2931986 () Bool)

(assert (=> b!7224874 (=> (not res!2931986) (not e!4331119))))

(assert (=> b!7224874 (= res!2931986 (not (contains!20734 (t!383946 (t!383946 res!2931777)) (h!76241 (t!383946 res!2931777)))))))

(declare-fun b!7224875 () Bool)

(assert (=> b!7224875 (= e!4331119 (noDuplicate!2912 (t!383946 (t!383946 res!2931777))))))

(assert (= (and d!2244210 (not res!2931985)) b!7224874))

(assert (= (and b!7224874 res!2931986) b!7224875))

(declare-fun m!7895104 () Bool)

(assert (=> b!7224874 m!7895104))

(declare-fun m!7895106 () Bool)

(assert (=> b!7224875 m!7895106))

(assert (=> b!7224616 d!2244210))

(declare-fun d!2244212 () Bool)

(declare-fun res!2931987 () Bool)

(declare-fun e!4331120 () Bool)

(assert (=> d!2244212 (=> res!2931987 e!4331120)))

(assert (=> d!2244212 (= res!2931987 ((_ is Nil!69793) (t!383946 lt!2571773)))))

(assert (=> d!2244212 (= (noDuplicate!2912 (t!383946 lt!2571773)) e!4331120)))

(declare-fun b!7224876 () Bool)

(declare-fun e!4331121 () Bool)

(assert (=> b!7224876 (= e!4331120 e!4331121)))

(declare-fun res!2931988 () Bool)

(assert (=> b!7224876 (=> (not res!2931988) (not e!4331121))))

(assert (=> b!7224876 (= res!2931988 (not (contains!20734 (t!383946 (t!383946 lt!2571773)) (h!76241 (t!383946 lt!2571773)))))))

(declare-fun b!7224877 () Bool)

(assert (=> b!7224877 (= e!4331121 (noDuplicate!2912 (t!383946 (t!383946 lt!2571773))))))

(assert (= (and d!2244212 (not res!2931987)) b!7224876))

(assert (= (and b!7224876 res!2931988) b!7224877))

(declare-fun m!7895110 () Bool)

(assert (=> b!7224876 m!7895110))

(declare-fun m!7895112 () Bool)

(assert (=> b!7224877 m!7895112))

(assert (=> b!7224649 d!2244212))

(declare-fun d!2244216 () Bool)

(declare-fun res!2931989 () Bool)

(declare-fun e!4331122 () Bool)

(assert (=> d!2244216 (=> res!2931989 e!4331122)))

(assert (=> d!2244216 (= res!2931989 ((_ is Nil!69791) (exprs!7851 setElem!53536)))))

(assert (=> d!2244216 (= (forall!17221 (exprs!7851 setElem!53536) lambda!438363) e!4331122)))

(declare-fun b!7224878 () Bool)

(declare-fun e!4331123 () Bool)

(assert (=> b!7224878 (= e!4331122 e!4331123)))

(declare-fun res!2931990 () Bool)

(assert (=> b!7224878 (=> (not res!2931990) (not e!4331123))))

(assert (=> b!7224878 (= res!2931990 (dynLambda!28425 lambda!438363 (h!76239 (exprs!7851 setElem!53536))))))

(declare-fun b!7224879 () Bool)

(assert (=> b!7224879 (= e!4331123 (forall!17221 (t!383944 (exprs!7851 setElem!53536)) lambda!438363))))

(assert (= (and d!2244216 (not res!2931989)) b!7224878))

(assert (= (and b!7224878 res!2931990) b!7224879))

(declare-fun b_lambda!276593 () Bool)

(assert (=> (not b_lambda!276593) (not b!7224878)))

(declare-fun m!7895114 () Bool)

(assert (=> b!7224878 m!7895114))

(declare-fun m!7895116 () Bool)

(assert (=> b!7224879 m!7895116))

(assert (=> d!2244108 d!2244216))

(declare-fun call!657598 () Bool)

(declare-fun c!1340382 () Bool)

(declare-fun bm!657592 () Bool)

(declare-fun c!1340383 () Bool)

(assert (=> bm!657592 (= call!657598 (validRegex!9493 (ite c!1340383 (reg!18728 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340382 (regOne!37311 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regTwo!37310 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224880 () Bool)

(declare-fun e!4331129 () Bool)

(declare-fun e!4331130 () Bool)

(assert (=> b!7224880 (= e!4331129 e!4331130)))

(assert (=> b!7224880 (= c!1340382 ((_ is Union!18399) (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun b!7224881 () Bool)

(declare-fun e!4331124 () Bool)

(declare-fun e!4331125 () Bool)

(assert (=> b!7224881 (= e!4331124 e!4331125)))

(declare-fun res!2931995 () Bool)

(assert (=> b!7224881 (=> (not res!2931995) (not e!4331125))))

(declare-fun call!657599 () Bool)

(assert (=> b!7224881 (= res!2931995 call!657599)))

(declare-fun b!7224882 () Bool)

(declare-fun e!4331127 () Bool)

(assert (=> b!7224882 (= e!4331127 call!657599)))

(declare-fun b!7224883 () Bool)

(declare-fun res!2931993 () Bool)

(assert (=> b!7224883 (=> (not res!2931993) (not e!4331127))))

(declare-fun call!657597 () Bool)

(assert (=> b!7224883 (= res!2931993 call!657597)))

(assert (=> b!7224883 (= e!4331130 e!4331127)))

(declare-fun b!7224884 () Bool)

(declare-fun res!2931991 () Bool)

(assert (=> b!7224884 (=> res!2931991 e!4331124)))

(assert (=> b!7224884 (= res!2931991 (not ((_ is Concat!27244) (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))

(assert (=> b!7224884 (= e!4331130 e!4331124)))

(declare-fun b!7224885 () Bool)

(declare-fun e!4331126 () Bool)

(assert (=> b!7224885 (= e!4331126 call!657598)))

(declare-fun b!7224886 () Bool)

(assert (=> b!7224886 (= e!4331125 call!657597)))

(declare-fun bm!657593 () Bool)

(assert (=> bm!657593 (= call!657597 call!657598)))

(declare-fun d!2244218 () Bool)

(declare-fun res!2931994 () Bool)

(declare-fun e!4331128 () Bool)

(assert (=> d!2244218 (=> res!2931994 e!4331128)))

(assert (=> d!2244218 (= res!2931994 ((_ is ElementMatch!18399) (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(assert (=> d!2244218 (= (validRegex!9493 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) e!4331128)))

(declare-fun b!7224887 () Bool)

(assert (=> b!7224887 (= e!4331129 e!4331126)))

(declare-fun res!2931992 () Bool)

(assert (=> b!7224887 (= res!2931992 (not (nullable!7806 (reg!18728 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))

(assert (=> b!7224887 (=> (not res!2931992) (not e!4331126))))

(declare-fun bm!657594 () Bool)

(assert (=> bm!657594 (= call!657599 (validRegex!9493 (ite c!1340382 (regTwo!37311 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (regOne!37310 (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))

(declare-fun b!7224888 () Bool)

(assert (=> b!7224888 (= e!4331128 e!4331129)))

(assert (=> b!7224888 (= c!1340383 ((_ is Star!18399) (ite c!1340328 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(assert (= (and d!2244218 (not res!2931994)) b!7224888))

(assert (= (and b!7224888 c!1340383) b!7224887))

(assert (= (and b!7224888 (not c!1340383)) b!7224880))

(assert (= (and b!7224887 res!2931992) b!7224885))

(assert (= (and b!7224880 c!1340382) b!7224883))

(assert (= (and b!7224880 (not c!1340382)) b!7224884))

(assert (= (and b!7224883 res!2931993) b!7224882))

(assert (= (and b!7224884 (not res!2931991)) b!7224881))

(assert (= (and b!7224881 res!2931995) b!7224886))

(assert (= (or b!7224883 b!7224886) bm!657593))

(assert (= (or b!7224882 b!7224881) bm!657594))

(assert (= (or b!7224885 bm!657593) bm!657592))

(declare-fun m!7895118 () Bool)

(assert (=> bm!657592 m!7895118))

(declare-fun m!7895120 () Bool)

(assert (=> b!7224887 m!7895120))

(declare-fun m!7895122 () Bool)

(assert (=> bm!657594 m!7895122))

(assert (=> bm!657525 d!2244218))

(declare-fun d!2244220 () Bool)

(declare-fun res!2931996 () Bool)

(declare-fun e!4331131 () Bool)

(assert (=> d!2244220 (=> res!2931996 e!4331131)))

(assert (=> d!2244220 (= res!2931996 ((_ is Nil!69791) (exprs!7851 setElem!53535)))))

(assert (=> d!2244220 (= (forall!17221 (exprs!7851 setElem!53535) lambda!438362) e!4331131)))

(declare-fun b!7224889 () Bool)

(declare-fun e!4331132 () Bool)

(assert (=> b!7224889 (= e!4331131 e!4331132)))

(declare-fun res!2931997 () Bool)

(assert (=> b!7224889 (=> (not res!2931997) (not e!4331132))))

(assert (=> b!7224889 (= res!2931997 (dynLambda!28425 lambda!438362 (h!76239 (exprs!7851 setElem!53535))))))

(declare-fun b!7224890 () Bool)

(assert (=> b!7224890 (= e!4331132 (forall!17221 (t!383944 (exprs!7851 setElem!53535)) lambda!438362))))

(assert (= (and d!2244220 (not res!2931996)) b!7224889))

(assert (= (and b!7224889 res!2931997) b!7224890))

(declare-fun b_lambda!276595 () Bool)

(assert (=> (not b_lambda!276595) (not b!7224889)))

(declare-fun m!7895124 () Bool)

(assert (=> b!7224889 m!7895124))

(declare-fun m!7895126 () Bool)

(assert (=> b!7224890 m!7895126))

(assert (=> d!2244102 d!2244220))

(declare-fun d!2244222 () Bool)

(assert (=> d!2244222 (= (nullable!7806 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (nullableFct!3059 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun bs!1901786 () Bool)

(assert (= bs!1901786 d!2244222))

(declare-fun m!7895128 () Bool)

(assert (=> bs!1901786 m!7895128))

(assert (=> b!7224391 d!2244222))

(declare-fun b!7224891 () Bool)

(declare-fun e!4331135 () Bool)

(declare-fun e!4331136 () Bool)

(assert (=> b!7224891 (= e!4331135 e!4331136)))

(declare-fun c!1340384 () Bool)

(assert (=> b!7224891 (= c!1340384 ((_ is Union!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun bm!657595 () Bool)

(declare-fun call!657601 () Bool)

(assert (=> bm!657595 (= call!657601 (nullable!7806 (ite c!1340384 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224892 () Bool)

(declare-fun e!4331134 () Bool)

(declare-fun call!657600 () Bool)

(assert (=> b!7224892 (= e!4331134 call!657600)))

(declare-fun b!7224893 () Bool)

(declare-fun e!4331138 () Bool)

(assert (=> b!7224893 (= e!4331136 e!4331138)))

(declare-fun res!2932001 () Bool)

(assert (=> b!7224893 (= res!2932001 call!657600)))

(assert (=> b!7224893 (=> (not res!2932001) (not e!4331138))))

(declare-fun b!7224894 () Bool)

(declare-fun e!4331133 () Bool)

(declare-fun e!4331137 () Bool)

(assert (=> b!7224894 (= e!4331133 e!4331137)))

(declare-fun res!2931998 () Bool)

(assert (=> b!7224894 (=> (not res!2931998) (not e!4331137))))

(assert (=> b!7224894 (= res!2931998 (and (not ((_ is EmptyLang!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (not ((_ is ElementMatch!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun d!2244224 () Bool)

(declare-fun res!2932002 () Bool)

(assert (=> d!2244224 (=> res!2932002 e!4331133)))

(assert (=> d!2244224 (= res!2932002 ((_ is EmptyExpr!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(assert (=> d!2244224 (= (nullableFct!3059 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) e!4331133)))

(declare-fun b!7224895 () Bool)

(assert (=> b!7224895 (= e!4331138 call!657601)))

(declare-fun b!7224896 () Bool)

(assert (=> b!7224896 (= e!4331136 e!4331134)))

(declare-fun res!2932000 () Bool)

(assert (=> b!7224896 (= res!2932000 call!657601)))

(assert (=> b!7224896 (=> res!2932000 e!4331134)))

(declare-fun bm!657596 () Bool)

(assert (=> bm!657596 (= call!657600 (nullable!7806 (ite c!1340384 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224897 () Bool)

(assert (=> b!7224897 (= e!4331137 e!4331135)))

(declare-fun res!2931999 () Bool)

(assert (=> b!7224897 (=> res!2931999 e!4331135)))

(assert (=> b!7224897 (= res!2931999 ((_ is Star!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))

(assert (= (and d!2244224 (not res!2932002)) b!7224894))

(assert (= (and b!7224894 res!2931998) b!7224897))

(assert (= (and b!7224897 (not res!2931999)) b!7224891))

(assert (= (and b!7224891 c!1340384) b!7224896))

(assert (= (and b!7224891 (not c!1340384)) b!7224893))

(assert (= (and b!7224896 (not res!2932000)) b!7224892))

(assert (= (and b!7224893 res!2932001) b!7224895))

(assert (= (or b!7224892 b!7224893) bm!657596))

(assert (= (or b!7224896 b!7224895) bm!657595))

(declare-fun m!7895132 () Bool)

(assert (=> bm!657595 m!7895132))

(declare-fun m!7895134 () Bool)

(assert (=> bm!657596 m!7895134))

(assert (=> d!2244084 d!2244224))

(declare-fun c!1340385 () Bool)

(declare-fun bm!657597 () Bool)

(declare-fun call!657603 () Bool)

(declare-fun c!1340386 () Bool)

(assert (=> bm!657597 (= call!657603 (validRegex!9493 (ite c!1340386 (reg!18728 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) (ite c!1340385 (regOne!37311 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) (regTwo!37310 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522))))))))))))

(declare-fun b!7224900 () Bool)

(declare-fun e!4331146 () Bool)

(declare-fun e!4331147 () Bool)

(assert (=> b!7224900 (= e!4331146 e!4331147)))

(assert (=> b!7224900 (= c!1340385 ((_ is Union!18399) (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))))))

(declare-fun b!7224901 () Bool)

(declare-fun e!4331141 () Bool)

(declare-fun e!4331142 () Bool)

(assert (=> b!7224901 (= e!4331141 e!4331142)))

(declare-fun res!2932009 () Bool)

(assert (=> b!7224901 (=> (not res!2932009) (not e!4331142))))

(declare-fun call!657604 () Bool)

(assert (=> b!7224901 (= res!2932009 call!657604)))

(declare-fun b!7224902 () Bool)

(declare-fun e!4331144 () Bool)

(assert (=> b!7224902 (= e!4331144 call!657604)))

(declare-fun b!7224903 () Bool)

(declare-fun res!2932007 () Bool)

(assert (=> b!7224903 (=> (not res!2932007) (not e!4331144))))

(declare-fun call!657602 () Bool)

(assert (=> b!7224903 (= res!2932007 call!657602)))

(assert (=> b!7224903 (= e!4331147 e!4331144)))

(declare-fun b!7224904 () Bool)

(declare-fun res!2932005 () Bool)

(assert (=> b!7224904 (=> res!2932005 e!4331141)))

(assert (=> b!7224904 (= res!2932005 (not ((_ is Concat!27244) (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522))))))))))

(assert (=> b!7224904 (= e!4331147 e!4331141)))

(declare-fun b!7224905 () Bool)

(declare-fun e!4331143 () Bool)

(assert (=> b!7224905 (= e!4331143 call!657603)))

(declare-fun b!7224906 () Bool)

(assert (=> b!7224906 (= e!4331142 call!657602)))

(declare-fun bm!657598 () Bool)

(assert (=> bm!657598 (= call!657602 call!657603)))

(declare-fun d!2244228 () Bool)

(declare-fun res!2932008 () Bool)

(declare-fun e!4331145 () Bool)

(assert (=> d!2244228 (=> res!2932008 e!4331145)))

(assert (=> d!2244228 (= res!2932008 ((_ is ElementMatch!18399) (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))))))

(assert (=> d!2244228 (= (validRegex!9493 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) e!4331145)))

(declare-fun b!7224907 () Bool)

(assert (=> b!7224907 (= e!4331146 e!4331143)))

(declare-fun res!2932006 () Bool)

(assert (=> b!7224907 (= res!2932006 (not (nullable!7806 (reg!18728 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))))))))

(assert (=> b!7224907 (=> (not res!2932006) (not e!4331143))))

(declare-fun bm!657599 () Bool)

(assert (=> bm!657599 (= call!657604 (validRegex!9493 (ite c!1340385 (regTwo!37311 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) (regOne!37310 (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))))))))

(declare-fun b!7224908 () Bool)

(assert (=> b!7224908 (= e!4331145 e!4331146)))

(assert (=> b!7224908 (= c!1340386 ((_ is Star!18399) (ite c!1340349 (reg!18728 (h!76239 (exprs!7851 setElem!53522))) (ite c!1340348 (regOne!37311 (h!76239 (exprs!7851 setElem!53522))) (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))))))

(assert (= (and d!2244228 (not res!2932008)) b!7224908))

(assert (= (and b!7224908 c!1340386) b!7224907))

(assert (= (and b!7224908 (not c!1340386)) b!7224900))

(assert (= (and b!7224907 res!2932006) b!7224905))

(assert (= (and b!7224900 c!1340385) b!7224903))

(assert (= (and b!7224900 (not c!1340385)) b!7224904))

(assert (= (and b!7224903 res!2932007) b!7224902))

(assert (= (and b!7224904 (not res!2932005)) b!7224901))

(assert (= (and b!7224901 res!2932009) b!7224906))

(assert (= (or b!7224903 b!7224906) bm!657598))

(assert (= (or b!7224902 b!7224901) bm!657599))

(assert (= (or b!7224905 bm!657598) bm!657597))

(declare-fun m!7895140 () Bool)

(assert (=> bm!657597 m!7895140))

(declare-fun m!7895142 () Bool)

(assert (=> b!7224907 m!7895142))

(declare-fun m!7895144 () Bool)

(assert (=> bm!657599 m!7895144))

(assert (=> bm!657550 d!2244228))

(declare-fun d!2244232 () Bool)

(declare-fun res!2932012 () Bool)

(declare-fun e!4331150 () Bool)

(assert (=> d!2244232 (=> res!2932012 e!4331150)))

(assert (=> d!2244232 (= res!2932012 ((_ is Nil!69791) (exprs!7851 _$3!498)))))

(assert (=> d!2244232 (= (forall!17221 (exprs!7851 _$3!498) lambda!438358) e!4331150)))

(declare-fun b!7224911 () Bool)

(declare-fun e!4331151 () Bool)

(assert (=> b!7224911 (= e!4331150 e!4331151)))

(declare-fun res!2932013 () Bool)

(assert (=> b!7224911 (=> (not res!2932013) (not e!4331151))))

(assert (=> b!7224911 (= res!2932013 (dynLambda!28425 lambda!438358 (h!76239 (exprs!7851 _$3!498))))))

(declare-fun b!7224912 () Bool)

(assert (=> b!7224912 (= e!4331151 (forall!17221 (t!383944 (exprs!7851 _$3!498)) lambda!438358))))

(assert (= (and d!2244232 (not res!2932012)) b!7224911))

(assert (= (and b!7224911 res!2932013) b!7224912))

(declare-fun b_lambda!276599 () Bool)

(assert (=> (not b_lambda!276599) (not b!7224911)))

(declare-fun m!7895146 () Bool)

(assert (=> b!7224911 m!7895146))

(declare-fun m!7895148 () Bool)

(assert (=> b!7224912 m!7895148))

(assert (=> d!2244046 d!2244232))

(declare-fun bm!657600 () Bool)

(declare-fun call!657605 () (InoxSet Context!14702))

(assert (=> bm!657600 (= call!657605 (derivationStepZipperDown!2533 (h!76239 (exprs!7851 (h!76241 (toList!11334 z!3517)))) (Context!14703 (t!383944 (exprs!7851 (h!76241 (toList!11334 z!3517))))) lt!2571752))))

(declare-fun d!2244234 () Bool)

(declare-fun c!1340388 () Bool)

(declare-fun e!4331152 () Bool)

(assert (=> d!2244234 (= c!1340388 e!4331152)))

(declare-fun res!2932014 () Bool)

(assert (=> d!2244234 (=> (not res!2932014) (not e!4331152))))

(assert (=> d!2244234 (= res!2932014 ((_ is Cons!69791) (exprs!7851 (h!76241 (toList!11334 z!3517)))))))

(declare-fun e!4331154 () (InoxSet Context!14702))

(assert (=> d!2244234 (= (derivationStepZipperUp!2361 (h!76241 (toList!11334 z!3517)) lt!2571752) e!4331154)))

(declare-fun b!7224913 () Bool)

(declare-fun e!4331153 () (InoxSet Context!14702))

(assert (=> b!7224913 (= e!4331153 call!657605)))

(declare-fun b!7224914 () Bool)

(assert (=> b!7224914 (= e!4331154 ((_ map or) call!657605 (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 (h!76241 (toList!11334 z!3517))))) lt!2571752)))))

(declare-fun b!7224915 () Bool)

(assert (=> b!7224915 (= e!4331152 (nullable!7806 (h!76239 (exprs!7851 (h!76241 (toList!11334 z!3517))))))))

(declare-fun b!7224916 () Bool)

(assert (=> b!7224916 (= e!4331154 e!4331153)))

(declare-fun c!1340387 () Bool)

(assert (=> b!7224916 (= c!1340387 ((_ is Cons!69791) (exprs!7851 (h!76241 (toList!11334 z!3517)))))))

(declare-fun b!7224917 () Bool)

(assert (=> b!7224917 (= e!4331153 ((as const (Array Context!14702 Bool)) false))))

(assert (= (and d!2244234 res!2932014) b!7224915))

(assert (= (and d!2244234 c!1340388) b!7224914))

(assert (= (and d!2244234 (not c!1340388)) b!7224916))

(assert (= (and b!7224916 c!1340387) b!7224913))

(assert (= (and b!7224916 (not c!1340387)) b!7224917))

(assert (= (or b!7224914 b!7224913) bm!657600))

(declare-fun m!7895154 () Bool)

(assert (=> bm!657600 m!7895154))

(declare-fun m!7895158 () Bool)

(assert (=> b!7224914 m!7895158))

(declare-fun m!7895162 () Bool)

(assert (=> b!7224915 m!7895162))

(assert (=> bs!1901754 d!2244234))

(declare-fun b!7224920 () Bool)

(declare-fun e!4331157 () (InoxSet Context!14702))

(declare-fun call!657610 () (InoxSet Context!14702))

(declare-fun call!657611 () (InoxSet Context!14702))

(assert (=> b!7224920 (= e!4331157 ((_ map or) call!657610 call!657611))))

(declare-fun c!1340393 () Bool)

(declare-fun b!7224921 () Bool)

(assert (=> b!7224921 (= c!1340393 ((_ is Star!18399) (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))

(declare-fun e!4331159 () (InoxSet Context!14702))

(declare-fun e!4331162 () (InoxSet Context!14702))

(assert (=> b!7224921 (= e!4331159 e!4331162)))

(declare-fun d!2244240 () Bool)

(declare-fun c!1340391 () Bool)

(assert (=> d!2244240 (= c!1340391 (and ((_ is ElementMatch!18399) (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (= (c!1340227 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) lt!2571752)))))

(declare-fun e!4331161 () (InoxSet Context!14702))

(assert (=> d!2244240 (= (derivationStepZipperDown!2533 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (ite (or c!1340314 c!1340313) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657512)) lt!2571752) e!4331161)))

(declare-fun bm!657601 () Bool)

(declare-fun call!657609 () (InoxSet Context!14702))

(declare-fun call!657606 () (InoxSet Context!14702))

(assert (=> bm!657601 (= call!657609 call!657606)))

(declare-fun b!7224922 () Bool)

(declare-fun e!4331160 () Bool)

(assert (=> b!7224922 (= e!4331160 (nullable!7806 (regOne!37310 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))))

(declare-fun b!7224923 () Bool)

(assert (=> b!7224923 (= e!4331161 e!4331157)))

(declare-fun c!1340390 () Bool)

(assert (=> b!7224923 (= c!1340390 ((_ is Union!18399) (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7224924 () Bool)

(assert (=> b!7224924 (= e!4331161 (store ((as const (Array Context!14702 Bool)) false) (ite (or c!1340314 c!1340313) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657512)) true))))

(declare-fun bm!657602 () Bool)

(declare-fun call!657608 () List!69915)

(declare-fun call!657607 () List!69915)

(assert (=> bm!657602 (= call!657608 call!657607)))

(declare-fun b!7224925 () Bool)

(assert (=> b!7224925 (= e!4331162 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340392 () Bool)

(declare-fun bm!657603 () Bool)

(declare-fun c!1340389 () Bool)

(assert (=> bm!657603 (= call!657611 (derivationStepZipperDown!2533 (ite c!1340390 (regTwo!37311 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (ite c!1340389 (regTwo!37310 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (ite c!1340392 (regOne!37310 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (reg!18728 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))) (ite (or c!1340390 c!1340389) (ite (or c!1340314 c!1340313) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657512)) (Context!14703 call!657608)) lt!2571752))))

(declare-fun b!7224926 () Bool)

(assert (=> b!7224926 (= c!1340389 e!4331160)))

(declare-fun res!2932017 () Bool)

(assert (=> b!7224926 (=> (not res!2932017) (not e!4331160))))

(assert (=> b!7224926 (= res!2932017 ((_ is Concat!27244) (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))

(declare-fun e!4331158 () (InoxSet Context!14702))

(assert (=> b!7224926 (= e!4331157 e!4331158)))

(declare-fun bm!657604 () Bool)

(assert (=> bm!657604 (= call!657607 ($colon$colon!2855 (exprs!7851 (ite (or c!1340314 c!1340313) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657512))) (ite (or c!1340389 c!1340392) (regTwo!37310 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))))

(declare-fun b!7224927 () Bool)

(assert (=> b!7224927 (= e!4331158 e!4331159)))

(assert (=> b!7224927 (= c!1340392 ((_ is Concat!27244) (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7224928 () Bool)

(assert (=> b!7224928 (= e!4331162 call!657609)))

(declare-fun bm!657605 () Bool)

(assert (=> bm!657605 (= call!657610 (derivationStepZipperDown!2533 (ite c!1340390 (regOne!37311 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (regOne!37310 (ite c!1340314 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340313 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (ite c!1340316 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))) (ite c!1340390 (ite (or c!1340314 c!1340313) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (Context!14703 call!657512)) (Context!14703 call!657607)) lt!2571752))))

(declare-fun b!7224929 () Bool)

(assert (=> b!7224929 (= e!4331158 ((_ map or) call!657610 call!657606))))

(declare-fun b!7224930 () Bool)

(assert (=> b!7224930 (= e!4331159 call!657609)))

(declare-fun bm!657606 () Bool)

(assert (=> bm!657606 (= call!657606 call!657611)))

(assert (= (and d!2244240 c!1340391) b!7224924))

(assert (= (and d!2244240 (not c!1340391)) b!7224923))

(assert (= (and b!7224923 c!1340390) b!7224920))

(assert (= (and b!7224923 (not c!1340390)) b!7224926))

(assert (= (and b!7224926 res!2932017) b!7224922))

(assert (= (and b!7224926 c!1340389) b!7224929))

(assert (= (and b!7224926 (not c!1340389)) b!7224927))

(assert (= (and b!7224927 c!1340392) b!7224930))

(assert (= (and b!7224927 (not c!1340392)) b!7224921))

(assert (= (and b!7224921 c!1340393) b!7224928))

(assert (= (and b!7224921 (not c!1340393)) b!7224925))

(assert (= (or b!7224930 b!7224928) bm!657602))

(assert (= (or b!7224930 b!7224928) bm!657601))

(assert (= (or b!7224929 bm!657601) bm!657606))

(assert (= (or b!7224929 bm!657602) bm!657604))

(assert (= (or b!7224920 b!7224929) bm!657605))

(assert (= (or b!7224920 bm!657606) bm!657603))

(declare-fun m!7895174 () Bool)

(assert (=> bm!657603 m!7895174))

(declare-fun m!7895176 () Bool)

(assert (=> b!7224922 m!7895176))

(declare-fun m!7895178 () Bool)

(assert (=> bm!657605 m!7895178))

(declare-fun m!7895184 () Bool)

(assert (=> bm!657604 m!7895184))

(declare-fun m!7895186 () Bool)

(assert (=> b!7224924 m!7895186))

(assert (=> bm!657507 d!2244240))

(declare-fun d!2244250 () Bool)

(assert (=> d!2244250 (= ($colon$colon!2855 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (ite (or c!1340313 c!1340316) (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))) (Cons!69791 (ite (or c!1340313 c!1340316) (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))

(assert (=> bm!657508 d!2244250))

(declare-fun c!1340396 () Bool)

(declare-fun bm!657607 () Bool)

(declare-fun c!1340395 () Bool)

(declare-fun call!657613 () Bool)

(assert (=> bm!657607 (= call!657613 (validRegex!9493 (ite c!1340396 (reg!18728 (h!76239 (t!383944 (exprs!7851 c!10544)))) (ite c!1340395 (regOne!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 c!10544))))))))))

(declare-fun b!7224939 () Bool)

(declare-fun e!4331175 () Bool)

(declare-fun e!4331176 () Bool)

(assert (=> b!7224939 (= e!4331175 e!4331176)))

(assert (=> b!7224939 (= c!1340395 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 c!10544)))))))

(declare-fun b!7224940 () Bool)

(declare-fun e!4331170 () Bool)

(declare-fun e!4331171 () Bool)

(assert (=> b!7224940 (= e!4331170 e!4331171)))

(declare-fun res!2932028 () Bool)

(assert (=> b!7224940 (=> (not res!2932028) (not e!4331171))))

(declare-fun call!657614 () Bool)

(assert (=> b!7224940 (= res!2932028 call!657614)))

(declare-fun b!7224941 () Bool)

(declare-fun e!4331173 () Bool)

(assert (=> b!7224941 (= e!4331173 call!657614)))

(declare-fun b!7224942 () Bool)

(declare-fun res!2932026 () Bool)

(assert (=> b!7224942 (=> (not res!2932026) (not e!4331173))))

(declare-fun call!657612 () Bool)

(assert (=> b!7224942 (= res!2932026 call!657612)))

(assert (=> b!7224942 (= e!4331176 e!4331173)))

(declare-fun b!7224943 () Bool)

(declare-fun res!2932024 () Bool)

(assert (=> b!7224943 (=> res!2932024 e!4331170)))

(assert (=> b!7224943 (= res!2932024 (not ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 c!10544))))))))

(assert (=> b!7224943 (= e!4331176 e!4331170)))

(declare-fun b!7224944 () Bool)

(declare-fun e!4331172 () Bool)

(assert (=> b!7224944 (= e!4331172 call!657613)))

(declare-fun b!7224945 () Bool)

(assert (=> b!7224945 (= e!4331171 call!657612)))

(declare-fun bm!657608 () Bool)

(assert (=> bm!657608 (= call!657612 call!657613)))

(declare-fun d!2244252 () Bool)

(declare-fun res!2932027 () Bool)

(declare-fun e!4331174 () Bool)

(assert (=> d!2244252 (=> res!2932027 e!4331174)))

(assert (=> d!2244252 (= res!2932027 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 c!10544)))))))

(assert (=> d!2244252 (= (validRegex!9493 (h!76239 (t!383944 (exprs!7851 c!10544)))) e!4331174)))

(declare-fun b!7224946 () Bool)

(assert (=> b!7224946 (= e!4331175 e!4331172)))

(declare-fun res!2932025 () Bool)

(assert (=> b!7224946 (= res!2932025 (not (nullable!7806 (reg!18728 (h!76239 (t!383944 (exprs!7851 c!10544)))))))))

(assert (=> b!7224946 (=> (not res!2932025) (not e!4331172))))

(declare-fun bm!657609 () Bool)

(assert (=> bm!657609 (= call!657614 (validRegex!9493 (ite c!1340395 (regTwo!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))) (regOne!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))))))

(declare-fun b!7224947 () Bool)

(assert (=> b!7224947 (= e!4331174 e!4331175)))

(assert (=> b!7224947 (= c!1340396 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 c!10544)))))))

(assert (= (and d!2244252 (not res!2932027)) b!7224947))

(assert (= (and b!7224947 c!1340396) b!7224946))

(assert (= (and b!7224947 (not c!1340396)) b!7224939))

(assert (= (and b!7224946 res!2932025) b!7224944))

(assert (= (and b!7224939 c!1340395) b!7224942))

(assert (= (and b!7224939 (not c!1340395)) b!7224943))

(assert (= (and b!7224942 res!2932026) b!7224941))

(assert (= (and b!7224943 (not res!2932024)) b!7224940))

(assert (= (and b!7224940 res!2932028) b!7224945))

(assert (= (or b!7224942 b!7224945) bm!657608))

(assert (= (or b!7224941 b!7224940) bm!657609))

(assert (= (or b!7224944 bm!657608) bm!657607))

(declare-fun m!7895192 () Bool)

(assert (=> bm!657607 m!7895192))

(declare-fun m!7895194 () Bool)

(assert (=> b!7224946 m!7895194))

(declare-fun m!7895196 () Bool)

(assert (=> bm!657609 m!7895196))

(assert (=> bs!1901749 d!2244252))

(declare-fun bs!1901789 () Bool)

(declare-fun d!2244256 () Bool)

(assert (= bs!1901789 (and d!2244256 d!2243996)))

(declare-fun lambda!438368 () Int)

(assert (=> bs!1901789 (not (= lambda!438368 lambda!438354))))

(declare-fun bs!1901790 () Bool)

(assert (= bs!1901790 (and d!2244256 b!7223988)))

(assert (=> bs!1901790 (not (= lambda!438368 lambda!438318))))

(declare-fun bs!1901791 () Bool)

(assert (= bs!1901791 (and d!2244256 d!2243894)))

(assert (=> bs!1901791 (not (= lambda!438368 lambda!438332))))

(declare-fun bs!1901792 () Bool)

(assert (= bs!1901792 (and d!2244256 d!2244112)))

(assert (=> bs!1901792 (= (= lambda!438354 lambda!438332) (= lambda!438368 lambda!438364))))

(declare-fun bs!1901793 () Bool)

(assert (= bs!1901793 (and d!2244256 d!2243972)))

(assert (=> bs!1901793 (= (= lambda!438354 lambda!438318) (= lambda!438368 lambda!438350))))

(assert (=> d!2244256 true))

(assert (=> d!2244256 (< (dynLambda!28423 order!28745 lambda!438354) (dynLambda!28423 order!28745 lambda!438368))))

(assert (=> d!2244256 (= (exists!4104 (toList!11334 z!3517) lambda!438354) (not (forall!17223 (toList!11334 z!3517) lambda!438368)))))

(declare-fun bs!1901794 () Bool)

(assert (= bs!1901794 d!2244256))

(assert (=> bs!1901794 m!7894480))

(declare-fun m!7895198 () Bool)

(assert (=> bs!1901794 m!7895198))

(assert (=> d!2244042 d!2244256))

(assert (=> d!2244042 d!2243974))

(declare-fun d!2244258 () Bool)

(declare-fun res!2932034 () Bool)

(assert (=> d!2244258 (= res!2932034 (exists!4104 (toList!11334 z!3517) lambda!438354))))

(assert (=> d!2244258 true))

(assert (=> d!2244258 (= (choose!55454 z!3517 lambda!438354) res!2932034)))

(declare-fun bs!1901795 () Bool)

(assert (= bs!1901795 d!2244258))

(assert (=> bs!1901795 m!7894480))

(assert (=> bs!1901795 m!7894480))

(assert (=> bs!1901795 m!7894754))

(assert (=> d!2244042 d!2244258))

(declare-fun d!2244260 () Bool)

(assert (=> d!2244260 (= (nullable!7806 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))) (nullableFct!3059 (regOne!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun bs!1901796 () Bool)

(assert (= bs!1901796 d!2244260))

(declare-fun m!7895204 () Bool)

(assert (=> bs!1901796 m!7895204))

(assert (=> b!7224380 d!2244260))

(declare-fun c!1340399 () Bool)

(declare-fun bm!657613 () Bool)

(declare-fun call!657619 () Bool)

(declare-fun c!1340400 () Bool)

(assert (=> bm!657613 (= call!657619 (validRegex!9493 (ite c!1340400 (reg!18728 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) (ite c!1340399 (regOne!37311 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) (regTwo!37310 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224957 () Bool)

(declare-fun e!4331189 () Bool)

(declare-fun e!4331190 () Bool)

(assert (=> b!7224957 (= e!4331189 e!4331190)))

(assert (=> b!7224957 (= c!1340399 ((_ is Union!18399) (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))))))

(declare-fun b!7224958 () Bool)

(declare-fun e!4331184 () Bool)

(declare-fun e!4331185 () Bool)

(assert (=> b!7224958 (= e!4331184 e!4331185)))

(declare-fun res!2932039 () Bool)

(assert (=> b!7224958 (=> (not res!2932039) (not e!4331185))))

(declare-fun call!657620 () Bool)

(assert (=> b!7224958 (= res!2932039 call!657620)))

(declare-fun b!7224959 () Bool)

(declare-fun e!4331187 () Bool)

(assert (=> b!7224959 (= e!4331187 call!657620)))

(declare-fun b!7224960 () Bool)

(declare-fun res!2932037 () Bool)

(assert (=> b!7224960 (=> (not res!2932037) (not e!4331187))))

(declare-fun call!657618 () Bool)

(assert (=> b!7224960 (= res!2932037 call!657618)))

(assert (=> b!7224960 (= e!4331190 e!4331187)))

(declare-fun b!7224961 () Bool)

(declare-fun res!2932035 () Bool)

(assert (=> b!7224961 (=> res!2932035 e!4331184)))

(assert (=> b!7224961 (= res!2932035 (not ((_ is Concat!27244) (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))))))))

(assert (=> b!7224961 (= e!4331190 e!4331184)))

(declare-fun b!7224962 () Bool)

(declare-fun e!4331186 () Bool)

(assert (=> b!7224962 (= e!4331186 call!657619)))

(declare-fun b!7224963 () Bool)

(assert (=> b!7224963 (= e!4331185 call!657618)))

(declare-fun bm!657614 () Bool)

(assert (=> bm!657614 (= call!657618 call!657619)))

(declare-fun d!2244262 () Bool)

(declare-fun res!2932038 () Bool)

(declare-fun e!4331188 () Bool)

(assert (=> d!2244262 (=> res!2932038 e!4331188)))

(assert (=> d!2244262 (= res!2932038 ((_ is ElementMatch!18399) (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))))))

(assert (=> d!2244262 (= (validRegex!9493 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) e!4331188)))

(declare-fun b!7224964 () Bool)

(assert (=> b!7224964 (= e!4331189 e!4331186)))

(declare-fun res!2932036 () Bool)

(assert (=> b!7224964 (= res!2932036 (not (nullable!7806 (reg!18728 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))))))))

(assert (=> b!7224964 (=> (not res!2932036) (not e!4331186))))

(declare-fun bm!657615 () Bool)

(assert (=> bm!657615 (= call!657620 (validRegex!9493 (ite c!1340399 (regTwo!37311 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) (regOne!37310 (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))))))))

(declare-fun b!7224965 () Bool)

(assert (=> b!7224965 (= e!4331188 e!4331189)))

(assert (=> b!7224965 (= c!1340400 ((_ is Star!18399) (ite c!1340329 (reg!18728 (h!76239 (exprs!7851 c!10544))) (ite c!1340328 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))))))

(assert (= (and d!2244262 (not res!2932038)) b!7224965))

(assert (= (and b!7224965 c!1340400) b!7224964))

(assert (= (and b!7224965 (not c!1340400)) b!7224957))

(assert (= (and b!7224964 res!2932036) b!7224962))

(assert (= (and b!7224957 c!1340399) b!7224960))

(assert (= (and b!7224957 (not c!1340399)) b!7224961))

(assert (= (and b!7224960 res!2932037) b!7224959))

(assert (= (and b!7224961 (not res!2932035)) b!7224958))

(assert (= (and b!7224958 res!2932039) b!7224963))

(assert (= (or b!7224960 b!7224963) bm!657614))

(assert (= (or b!7224959 b!7224958) bm!657615))

(assert (= (or b!7224962 bm!657614) bm!657613))

(declare-fun m!7895210 () Bool)

(assert (=> bm!657613 m!7895210))

(declare-fun m!7895212 () Bool)

(assert (=> b!7224964 m!7895212))

(declare-fun m!7895214 () Bool)

(assert (=> bm!657615 m!7895214))

(assert (=> bm!657523 d!2244262))

(declare-fun d!2244268 () Bool)

(declare-fun c!1340401 () Bool)

(assert (=> d!2244268 (= c!1340401 ((_ is Nil!69793) (t!383946 res!2931777)))))

(declare-fun e!4331191 () (InoxSet Context!14702))

(assert (=> d!2244268 (= (content!14341 (t!383946 res!2931777)) e!4331191)))

(declare-fun b!7224966 () Bool)

(assert (=> b!7224966 (= e!4331191 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224967 () Bool)

(assert (=> b!7224967 (= e!4331191 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 (t!383946 res!2931777)) true) (content!14341 (t!383946 (t!383946 res!2931777)))))))

(assert (= (and d!2244268 c!1340401) b!7224966))

(assert (= (and d!2244268 (not c!1340401)) b!7224967))

(declare-fun m!7895216 () Bool)

(assert (=> b!7224967 m!7895216))

(declare-fun m!7895218 () Bool)

(assert (=> b!7224967 m!7895218))

(assert (=> b!7224410 d!2244268))

(declare-fun bs!1901803 () Bool)

(declare-fun d!2244270 () Bool)

(assert (= bs!1901803 (and d!2244270 d!2244108)))

(declare-fun lambda!438370 () Int)

(assert (=> bs!1901803 (= lambda!438370 lambda!438363)))

(declare-fun bs!1901805 () Bool)

(assert (= bs!1901805 (and d!2244270 d!2243910)))

(assert (=> bs!1901805 (= lambda!438370 lambda!438336)))

(declare-fun bs!1901807 () Bool)

(assert (= bs!1901807 (and d!2244270 d!2244046)))

(assert (=> bs!1901807 (= lambda!438370 lambda!438358)))

(declare-fun bs!1901808 () Bool)

(assert (= bs!1901808 (and d!2244270 d!2243912)))

(assert (=> bs!1901808 (= lambda!438370 lambda!438337)))

(declare-fun bs!1901810 () Bool)

(assert (= bs!1901810 (and d!2244270 d!2244190)))

(assert (=> bs!1901810 (= lambda!438370 lambda!438366)))

(declare-fun bs!1901811 () Bool)

(assert (= bs!1901811 (and d!2244270 d!2244180)))

(assert (=> bs!1901811 (= lambda!438370 lambda!438365)))

(declare-fun bs!1901813 () Bool)

(assert (= bs!1901813 (and d!2244270 d!2244076)))

(assert (=> bs!1901813 (= lambda!438370 lambda!438361)))

(declare-fun bs!1901814 () Bool)

(assert (= bs!1901814 (and d!2244270 d!2243908)))

(assert (=> bs!1901814 (= lambda!438370 lambda!438335)))

(declare-fun bs!1901815 () Bool)

(assert (= bs!1901815 (and d!2244270 d!2244102)))

(assert (=> bs!1901815 (= lambda!438370 lambda!438362)))

(declare-fun bs!1901816 () Bool)

(assert (= bs!1901816 (and d!2244270 d!2243980)))

(assert (=> bs!1901816 (= lambda!438370 lambda!438351)))

(assert (=> d!2244270 (= (inv!89019 setElem!53540) (forall!17221 (exprs!7851 setElem!53540) lambda!438370))))

(declare-fun bs!1901818 () Bool)

(assert (= bs!1901818 d!2244270))

(declare-fun m!7895222 () Bool)

(assert (=> bs!1901818 m!7895222))

(assert (=> setNonEmpty!53540 d!2244270))

(declare-fun d!2244274 () Bool)

(assert (=> d!2244274 (= (nullable!7806 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))) (nullableFct!3059 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))))

(declare-fun bs!1901819 () Bool)

(assert (= bs!1901819 d!2244274))

(declare-fun m!7895224 () Bool)

(assert (=> bs!1901819 m!7895224))

(assert (=> b!7224663 d!2244274))

(declare-fun d!2244276 () Bool)

(declare-fun res!2932040 () Bool)

(declare-fun e!4331192 () Bool)

(assert (=> d!2244276 (=> res!2932040 e!4331192)))

(assert (=> d!2244276 (= res!2932040 ((_ is Nil!69791) (t!383944 (t!383944 (exprs!7851 c!10544)))))))

(assert (=> d!2244276 (= (forall!17221 (t!383944 (t!383944 (exprs!7851 c!10544))) lambda!438336) e!4331192)))

(declare-fun b!7224968 () Bool)

(declare-fun e!4331193 () Bool)

(assert (=> b!7224968 (= e!4331192 e!4331193)))

(declare-fun res!2932041 () Bool)

(assert (=> b!7224968 (=> (not res!2932041) (not e!4331193))))

(assert (=> b!7224968 (= res!2932041 (dynLambda!28425 lambda!438336 (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544))))))))

(declare-fun b!7224969 () Bool)

(assert (=> b!7224969 (= e!4331193 (forall!17221 (t!383944 (t!383944 (t!383944 (exprs!7851 c!10544)))) lambda!438336))))

(assert (= (and d!2244276 (not res!2932040)) b!7224968))

(assert (= (and b!7224968 res!2932041) b!7224969))

(declare-fun b_lambda!276607 () Bool)

(assert (=> (not b_lambda!276607) (not b!7224968)))

(declare-fun m!7895226 () Bool)

(assert (=> b!7224968 m!7895226))

(declare-fun m!7895228 () Bool)

(assert (=> b!7224969 m!7895228))

(assert (=> b!7224479 d!2244276))

(declare-fun d!2244278 () Bool)

(declare-fun res!2932043 () Bool)

(declare-fun e!4331200 () Bool)

(assert (=> d!2244278 (=> res!2932043 e!4331200)))

(assert (=> d!2244278 (= res!2932043 ((_ is Nil!69791) (t!383944 (t!383944 (exprs!7851 empty!3071)))))))

(assert (=> d!2244278 (= (forall!17221 (t!383944 (t!383944 (exprs!7851 empty!3071))) lambda!438335) e!4331200)))

(declare-fun b!7224981 () Bool)

(declare-fun e!4331201 () Bool)

(assert (=> b!7224981 (= e!4331200 e!4331201)))

(declare-fun res!2932044 () Bool)

(assert (=> b!7224981 (=> (not res!2932044) (not e!4331201))))

(assert (=> b!7224981 (= res!2932044 (dynLambda!28425 lambda!438335 (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071))))))))

(declare-fun b!7224982 () Bool)

(assert (=> b!7224982 (= e!4331201 (forall!17221 (t!383944 (t!383944 (t!383944 (exprs!7851 empty!3071)))) lambda!438335))))

(assert (= (and d!2244278 (not res!2932043)) b!7224981))

(assert (= (and b!7224981 res!2932044) b!7224982))

(declare-fun b_lambda!276609 () Bool)

(assert (=> (not b_lambda!276609) (not b!7224981)))

(declare-fun m!7895230 () Bool)

(assert (=> b!7224981 m!7895230))

(declare-fun m!7895232 () Bool)

(assert (=> b!7224982 m!7895232))

(assert (=> b!7224560 d!2244278))

(declare-fun d!2244280 () Bool)

(assert (=> d!2244280 (= ($colon$colon!2855 (exprs!7851 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474))) (ite (or c!1340306 c!1340309) (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544)))))))) (Cons!69791 (ite (or c!1340306 c!1340309) (regTwo!37310 (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (ite c!1340280 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (ite c!1340279 (regTwo!37310 (h!76239 (exprs!7851 c!10544))) (ite c!1340282 (regOne!37310 (h!76239 (exprs!7851 c!10544))) (reg!18728 (h!76239 (exprs!7851 c!10544))))))) (exprs!7851 (ite (or c!1340280 c!1340279) (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657474)))))))

(assert (=> bm!657501 d!2244280))

(declare-fun d!2244282 () Bool)

(declare-fun c!1340407 () Bool)

(assert (=> d!2244282 (= c!1340407 ((_ is Nil!69793) res!2931927))))

(declare-fun e!4331202 () (InoxSet Context!14702))

(assert (=> d!2244282 (= (content!14341 res!2931927) e!4331202)))

(declare-fun b!7224983 () Bool)

(assert (=> b!7224983 (= e!4331202 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7224984 () Bool)

(assert (=> b!7224984 (= e!4331202 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 res!2931927) true) (content!14341 (t!383946 res!2931927))))))

(assert (= (and d!2244282 c!1340407) b!7224983))

(assert (= (and d!2244282 (not c!1340407)) b!7224984))

(declare-fun m!7895234 () Bool)

(assert (=> b!7224984 m!7895234))

(declare-fun m!7895236 () Bool)

(assert (=> b!7224984 m!7895236))

(assert (=> b!7224652 d!2244282))

(declare-fun d!2244284 () Bool)

(declare-fun res!2932045 () Bool)

(declare-fun e!4331203 () Bool)

(assert (=> d!2244284 (=> res!2932045 e!4331203)))

(assert (=> d!2244284 (= res!2932045 ((_ is Nil!69793) (t!383946 (t!383946 lt!2571755))))))

(assert (=> d!2244284 (= (noDuplicate!2912 (t!383946 (t!383946 lt!2571755))) e!4331203)))

(declare-fun b!7224985 () Bool)

(declare-fun e!4331204 () Bool)

(assert (=> b!7224985 (= e!4331203 e!4331204)))

(declare-fun res!2932046 () Bool)

(assert (=> b!7224985 (=> (not res!2932046) (not e!4331204))))

(assert (=> b!7224985 (= res!2932046 (not (contains!20734 (t!383946 (t!383946 (t!383946 lt!2571755))) (h!76241 (t!383946 (t!383946 lt!2571755))))))))

(declare-fun b!7224986 () Bool)

(assert (=> b!7224986 (= e!4331204 (noDuplicate!2912 (t!383946 (t!383946 (t!383946 lt!2571755)))))))

(assert (= (and d!2244284 (not res!2932045)) b!7224985))

(assert (= (and b!7224985 res!2932046) b!7224986))

(declare-fun m!7895238 () Bool)

(assert (=> b!7224985 m!7895238))

(declare-fun m!7895240 () Bool)

(assert (=> b!7224986 m!7895240))

(assert (=> b!7224574 d!2244284))

(declare-fun b!7224987 () Bool)

(declare-fun e!4331205 () (InoxSet Context!14702))

(declare-fun call!657631 () (InoxSet Context!14702))

(declare-fun call!657632 () (InoxSet Context!14702))

(assert (=> b!7224987 (= e!4331205 ((_ map or) call!657631 call!657632))))

(declare-fun b!7224988 () Bool)

(declare-fun c!1340412 () Bool)

(assert (=> b!7224988 (= c!1340412 ((_ is Star!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun e!4331207 () (InoxSet Context!14702))

(declare-fun e!4331210 () (InoxSet Context!14702))

(assert (=> b!7224988 (= e!4331207 e!4331210)))

(declare-fun d!2244286 () Bool)

(declare-fun c!1340410 () Bool)

(assert (=> d!2244286 (= c!1340410 (and ((_ is ElementMatch!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (= (c!1340227 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) lt!2571752)))))

(declare-fun e!4331209 () (InoxSet Context!14702))

(assert (=> d!2244286 (= (derivationStepZipperDown!2533 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) lt!2571752) e!4331209)))

(declare-fun bm!657622 () Bool)

(declare-fun call!657630 () (InoxSet Context!14702))

(declare-fun call!657627 () (InoxSet Context!14702))

(assert (=> bm!657622 (= call!657630 call!657627)))

(declare-fun b!7224989 () Bool)

(declare-fun e!4331208 () Bool)

(assert (=> b!7224989 (= e!4331208 (nullable!7806 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7224990 () Bool)

(assert (=> b!7224990 (= e!4331209 e!4331205)))

(declare-fun c!1340409 () Bool)

(assert (=> b!7224990 (= c!1340409 ((_ is Union!18399) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224991 () Bool)

(assert (=> b!7224991 (= e!4331209 (store ((as const (Array Context!14702 Bool)) false) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) true))))

(declare-fun bm!657623 () Bool)

(declare-fun call!657629 () List!69915)

(declare-fun call!657628 () List!69915)

(assert (=> bm!657623 (= call!657629 call!657628)))

(declare-fun b!7224992 () Bool)

(assert (=> b!7224992 (= e!4331210 ((as const (Array Context!14702 Bool)) false))))

(declare-fun c!1340411 () Bool)

(declare-fun c!1340408 () Bool)

(declare-fun bm!657624 () Bool)

(assert (=> bm!657624 (= call!657632 (derivationStepZipperDown!2533 (ite c!1340409 (regTwo!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (ite c!1340408 (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (ite c!1340411 (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (reg!18728 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))) (ite (or c!1340409 c!1340408) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (Context!14703 call!657629)) lt!2571752))))

(declare-fun b!7224993 () Bool)

(assert (=> b!7224993 (= c!1340408 e!4331208)))

(declare-fun res!2932047 () Bool)

(assert (=> b!7224993 (=> (not res!2932047) (not e!4331208))))

(assert (=> b!7224993 (= res!2932047 ((_ is Concat!27244) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun e!4331206 () (InoxSet Context!14702))

(assert (=> b!7224993 (= e!4331205 e!4331206)))

(declare-fun bm!657625 () Bool)

(assert (=> bm!657625 (= call!657628 ($colon$colon!2855 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (ite (or c!1340408 c!1340411) (regTwo!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7224994 () Bool)

(assert (=> b!7224994 (= e!4331206 e!4331207)))

(assert (=> b!7224994 (= c!1340411 ((_ is Concat!27244) (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))

(declare-fun b!7224995 () Bool)

(assert (=> b!7224995 (= e!4331210 call!657630)))

(declare-fun bm!657626 () Bool)

(assert (=> bm!657626 (= call!657631 (derivationStepZipperDown!2533 (ite c!1340409 (regOne!37311 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (regOne!37310 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))) (ite c!1340409 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) (Context!14703 call!657628)) lt!2571752))))

(declare-fun b!7224996 () Bool)

(assert (=> b!7224996 (= e!4331206 ((_ map or) call!657631 call!657627))))

(declare-fun b!7224997 () Bool)

(assert (=> b!7224997 (= e!4331207 call!657630)))

(declare-fun bm!657627 () Bool)

(assert (=> bm!657627 (= call!657627 call!657632)))

(assert (= (and d!2244286 c!1340410) b!7224991))

(assert (= (and d!2244286 (not c!1340410)) b!7224990))

(assert (= (and b!7224990 c!1340409) b!7224987))

(assert (= (and b!7224990 (not c!1340409)) b!7224993))

(assert (= (and b!7224993 res!2932047) b!7224989))

(assert (= (and b!7224993 c!1340408) b!7224996))

(assert (= (and b!7224993 (not c!1340408)) b!7224994))

(assert (= (and b!7224994 c!1340411) b!7224997))

(assert (= (and b!7224994 (not c!1340411)) b!7224988))

(assert (= (and b!7224988 c!1340412) b!7224995))

(assert (= (and b!7224988 (not c!1340412)) b!7224992))

(assert (= (or b!7224997 b!7224995) bm!657623))

(assert (= (or b!7224997 b!7224995) bm!657622))

(assert (= (or b!7224996 bm!657622) bm!657627))

(assert (= (or b!7224996 bm!657623) bm!657625))

(assert (= (or b!7224987 b!7224996) bm!657626))

(assert (= (or b!7224987 bm!657627) bm!657624))

(declare-fun m!7895242 () Bool)

(assert (=> bm!657624 m!7895242))

(declare-fun m!7895244 () Bool)

(assert (=> b!7224989 m!7895244))

(declare-fun m!7895246 () Bool)

(assert (=> bm!657626 m!7895246))

(declare-fun m!7895248 () Bool)

(assert (=> bm!657625 m!7895248))

(declare-fun m!7895250 () Bool)

(assert (=> b!7224991 m!7895250))

(assert (=> bm!657504 d!2244286))

(declare-fun d!2244288 () Bool)

(assert (=> d!2244288 (= (nullable!7806 (ite c!1340346 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))) (nullableFct!3059 (ite c!1340346 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regTwo!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun bs!1901820 () Bool)

(assert (= bs!1901820 d!2244288))

(declare-fun m!7895252 () Bool)

(assert (=> bs!1901820 m!7895252))

(assert (=> bm!657548 d!2244288))

(declare-fun bm!657628 () Bool)

(declare-fun call!657634 () Bool)

(declare-fun c!1340414 () Bool)

(declare-fun c!1340413 () Bool)

(assert (=> bm!657628 (= call!657634 (validRegex!9493 (ite c!1340414 (reg!18728 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) (ite c!1340413 (regOne!37311 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) (regTwo!37310 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))))))))

(declare-fun b!7224998 () Bool)

(declare-fun e!4331216 () Bool)

(declare-fun e!4331217 () Bool)

(assert (=> b!7224998 (= e!4331216 e!4331217)))

(assert (=> b!7224998 (= c!1340413 ((_ is Union!18399) (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))))))

(declare-fun b!7224999 () Bool)

(declare-fun e!4331211 () Bool)

(declare-fun e!4331212 () Bool)

(assert (=> b!7224999 (= e!4331211 e!4331212)))

(declare-fun res!2932052 () Bool)

(assert (=> b!7224999 (=> (not res!2932052) (not e!4331212))))

(declare-fun call!657635 () Bool)

(assert (=> b!7224999 (= res!2932052 call!657635)))

(declare-fun b!7225000 () Bool)

(declare-fun e!4331214 () Bool)

(assert (=> b!7225000 (= e!4331214 call!657635)))

(declare-fun b!7225001 () Bool)

(declare-fun res!2932050 () Bool)

(assert (=> b!7225001 (=> (not res!2932050) (not e!4331214))))

(declare-fun call!657633 () Bool)

(assert (=> b!7225001 (= res!2932050 call!657633)))

(assert (=> b!7225001 (= e!4331217 e!4331214)))

(declare-fun b!7225002 () Bool)

(declare-fun res!2932048 () Bool)

(assert (=> b!7225002 (=> res!2932048 e!4331211)))

(assert (=> b!7225002 (= res!2932048 (not ((_ is Concat!27244) (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))))))

(assert (=> b!7225002 (= e!4331217 e!4331211)))

(declare-fun b!7225003 () Bool)

(declare-fun e!4331213 () Bool)

(assert (=> b!7225003 (= e!4331213 call!657634)))

(declare-fun b!7225004 () Bool)

(assert (=> b!7225004 (= e!4331212 call!657633)))

(declare-fun bm!657629 () Bool)

(assert (=> bm!657629 (= call!657633 call!657634)))

(declare-fun d!2244290 () Bool)

(declare-fun res!2932051 () Bool)

(declare-fun e!4331215 () Bool)

(assert (=> d!2244290 (=> res!2932051 e!4331215)))

(assert (=> d!2244290 (= res!2932051 ((_ is ElementMatch!18399) (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))))))

(assert (=> d!2244290 (= (validRegex!9493 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) e!4331215)))

(declare-fun b!7225005 () Bool)

(assert (=> b!7225005 (= e!4331216 e!4331213)))

(declare-fun res!2932049 () Bool)

(assert (=> b!7225005 (= res!2932049 (not (nullable!7806 (reg!18728 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))))))))

(assert (=> b!7225005 (=> (not res!2932049) (not e!4331213))))

(declare-fun bm!657630 () Bool)

(assert (=> bm!657630 (= call!657635 (validRegex!9493 (ite c!1340413 (regTwo!37311 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))) (regOne!37310 (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))))))))

(declare-fun b!7225006 () Bool)

(assert (=> b!7225006 (= e!4331215 e!4331216)))

(assert (=> b!7225006 (= c!1340414 ((_ is Star!18399) (ite c!1340342 (regTwo!37311 (h!76239 (exprs!7851 empty!3071))) (regOne!37310 (h!76239 (exprs!7851 empty!3071))))))))

(assert (= (and d!2244290 (not res!2932051)) b!7225006))

(assert (= (and b!7225006 c!1340414) b!7225005))

(assert (= (and b!7225006 (not c!1340414)) b!7224998))

(assert (= (and b!7225005 res!2932049) b!7225003))

(assert (= (and b!7224998 c!1340413) b!7225001))

(assert (= (and b!7224998 (not c!1340413)) b!7225002))

(assert (= (and b!7225001 res!2932050) b!7225000))

(assert (= (and b!7225002 (not res!2932048)) b!7224999))

(assert (= (and b!7224999 res!2932052) b!7225004))

(assert (= (or b!7225001 b!7225004) bm!657629))

(assert (= (or b!7225000 b!7224999) bm!657630))

(assert (= (or b!7225003 bm!657629) bm!657628))

(declare-fun m!7895264 () Bool)

(assert (=> bm!657628 m!7895264))

(declare-fun m!7895266 () Bool)

(assert (=> b!7225005 m!7895266))

(declare-fun m!7895268 () Bool)

(assert (=> bm!657630 m!7895268))

(assert (=> bm!657543 d!2244290))

(declare-fun d!2244294 () Bool)

(assert (=> d!2244294 (= (nullable!7806 (reg!18728 (h!76239 (exprs!7851 c!10544)))) (nullableFct!3059 (reg!18728 (h!76239 (exprs!7851 c!10544)))))))

(declare-fun bs!1901821 () Bool)

(assert (= bs!1901821 d!2244294))

(declare-fun m!7895270 () Bool)

(assert (=> bs!1901821 m!7895270))

(assert (=> b!7224465 d!2244294))

(declare-fun d!2244296 () Bool)

(declare-fun lt!2571786 () Bool)

(assert (=> d!2244296 (= lt!2571786 (select (content!14341 (t!383946 lt!2571773)) (h!76241 lt!2571773)))))

(declare-fun e!4331226 () Bool)

(assert (=> d!2244296 (= lt!2571786 e!4331226)))

(declare-fun res!2932058 () Bool)

(assert (=> d!2244296 (=> (not res!2932058) (not e!4331226))))

(assert (=> d!2244296 (= res!2932058 ((_ is Cons!69793) (t!383946 lt!2571773)))))

(assert (=> d!2244296 (= (contains!20734 (t!383946 lt!2571773) (h!76241 lt!2571773)) lt!2571786)))

(declare-fun b!7225016 () Bool)

(declare-fun e!4331225 () Bool)

(assert (=> b!7225016 (= e!4331226 e!4331225)))

(declare-fun res!2932059 () Bool)

(assert (=> b!7225016 (=> res!2932059 e!4331225)))

(assert (=> b!7225016 (= res!2932059 (= (h!76241 (t!383946 lt!2571773)) (h!76241 lt!2571773)))))

(declare-fun b!7225017 () Bool)

(assert (=> b!7225017 (= e!4331225 (contains!20734 (t!383946 (t!383946 lt!2571773)) (h!76241 lt!2571773)))))

(assert (= (and d!2244296 res!2932058) b!7225016))

(assert (= (and b!7225016 (not res!2932059)) b!7225017))

(assert (=> d!2244296 m!7894944))

(declare-fun m!7895272 () Bool)

(assert (=> d!2244296 m!7895272))

(declare-fun m!7895274 () Bool)

(assert (=> b!7225017 m!7895274))

(assert (=> b!7224648 d!2244296))

(declare-fun bm!657634 () Bool)

(declare-fun call!657639 () (InoxSet Context!14702))

(assert (=> bm!657634 (= call!657639 (derivationStepZipperDown!2533 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))) (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))) lt!2571752))))

(declare-fun d!2244298 () Bool)

(declare-fun c!1340418 () Bool)

(declare-fun e!4331227 () Bool)

(assert (=> d!2244298 (= c!1340418 e!4331227)))

(declare-fun res!2932060 () Bool)

(assert (=> d!2244298 (=> (not res!2932060) (not e!4331227))))

(assert (=> d!2244298 (= res!2932060 ((_ is Cons!69791) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))))

(declare-fun e!4331229 () (InoxSet Context!14702))

(assert (=> d!2244298 (= (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))) lt!2571752) e!4331229)))

(declare-fun b!7225018 () Bool)

(declare-fun e!4331228 () (InoxSet Context!14702))

(assert (=> b!7225018 (= e!4331228 call!657639)))

(declare-fun b!7225019 () Bool)

(assert (=> b!7225019 (= e!4331229 ((_ map or) call!657639 (derivationStepZipperUp!2361 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))) lt!2571752)))))

(declare-fun b!7225020 () Bool)

(assert (=> b!7225020 (= e!4331227 (nullable!7806 (h!76239 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544)))))))))))))))

(declare-fun b!7225021 () Bool)

(assert (=> b!7225021 (= e!4331229 e!4331228)))

(declare-fun c!1340417 () Bool)

(assert (=> b!7225021 (= c!1340417 ((_ is Cons!69791) (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 (Context!14703 (t!383944 (exprs!7851 c!10544))))))))))))))

(declare-fun b!7225022 () Bool)

(assert (=> b!7225022 (= e!4331228 ((as const (Array Context!14702 Bool)) false))))

(assert (= (and d!2244298 res!2932060) b!7225020))

(assert (= (and d!2244298 c!1340418) b!7225019))

(assert (= (and d!2244298 (not c!1340418)) b!7225021))

(assert (= (and b!7225021 c!1340417) b!7225018))

(assert (= (and b!7225021 (not c!1340417)) b!7225022))

(assert (= (or b!7225019 b!7225018) bm!657634))

(declare-fun m!7895276 () Bool)

(assert (=> bm!657634 m!7895276))

(declare-fun m!7895278 () Bool)

(assert (=> b!7225019 m!7895278))

(declare-fun m!7895282 () Bool)

(assert (=> b!7225020 m!7895282))

(assert (=> b!7224390 d!2244298))

(declare-fun d!2244300 () Bool)

(declare-fun lt!2571787 () Bool)

(assert (=> d!2244300 (= lt!2571787 (select (content!14341 (t!383946 res!2931777)) (h!76241 res!2931777)))))

(declare-fun e!4331231 () Bool)

(assert (=> d!2244300 (= lt!2571787 e!4331231)))

(declare-fun res!2932061 () Bool)

(assert (=> d!2244300 (=> (not res!2932061) (not e!4331231))))

(assert (=> d!2244300 (= res!2932061 ((_ is Cons!69793) (t!383946 res!2931777)))))

(assert (=> d!2244300 (= (contains!20734 (t!383946 res!2931777) (h!76241 res!2931777)) lt!2571787)))

(declare-fun b!7225023 () Bool)

(declare-fun e!4331230 () Bool)

(assert (=> b!7225023 (= e!4331231 e!4331230)))

(declare-fun res!2932062 () Bool)

(assert (=> b!7225023 (=> res!2932062 e!4331230)))

(assert (=> b!7225023 (= res!2932062 (= (h!76241 (t!383946 res!2931777)) (h!76241 res!2931777)))))

(declare-fun b!7225024 () Bool)

(assert (=> b!7225024 (= e!4331230 (contains!20734 (t!383946 (t!383946 res!2931777)) (h!76241 res!2931777)))))

(assert (= (and d!2244300 res!2932061) b!7225023))

(assert (= (and b!7225023 (not res!2932062)) b!7225024))

(assert (=> d!2244300 m!7894810))

(declare-fun m!7895288 () Bool)

(assert (=> d!2244300 m!7895288))

(declare-fun m!7895290 () Bool)

(assert (=> b!7225024 m!7895290))

(assert (=> b!7224615 d!2244300))

(declare-fun d!2244304 () Bool)

(declare-fun c!1340421 () Bool)

(assert (=> d!2244304 (= c!1340421 ((_ is Nil!69793) (t!383946 lt!2571773)))))

(declare-fun e!4331239 () (InoxSet Context!14702))

(assert (=> d!2244304 (= (content!14341 (t!383946 lt!2571773)) e!4331239)))

(declare-fun b!7225034 () Bool)

(assert (=> b!7225034 (= e!4331239 ((as const (Array Context!14702 Bool)) false))))

(declare-fun b!7225035 () Bool)

(assert (=> b!7225035 (= e!4331239 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) (h!76241 (t!383946 lt!2571773)) true) (content!14341 (t!383946 (t!383946 lt!2571773)))))))

(assert (= (and d!2244304 c!1340421) b!7225034))

(assert (= (and d!2244304 (not c!1340421)) b!7225035))

(declare-fun m!7895292 () Bool)

(assert (=> b!7225035 m!7895292))

(declare-fun m!7895294 () Bool)

(assert (=> b!7225035 m!7895294))

(assert (=> b!7224655 d!2244304))

(declare-fun bs!1901822 () Bool)

(declare-fun d!2244306 () Bool)

(assert (= bs!1901822 (and d!2244306 d!2244108)))

(declare-fun lambda!438371 () Int)

(assert (=> bs!1901822 (= lambda!438371 lambda!438363)))

(declare-fun bs!1901823 () Bool)

(assert (= bs!1901823 (and d!2244306 d!2244270)))

(assert (=> bs!1901823 (= lambda!438371 lambda!438370)))

(declare-fun bs!1901824 () Bool)

(assert (= bs!1901824 (and d!2244306 d!2243910)))

(assert (=> bs!1901824 (= lambda!438371 lambda!438336)))

(declare-fun bs!1901825 () Bool)

(assert (= bs!1901825 (and d!2244306 d!2244046)))

(assert (=> bs!1901825 (= lambda!438371 lambda!438358)))

(declare-fun bs!1901826 () Bool)

(assert (= bs!1901826 (and d!2244306 d!2243912)))

(assert (=> bs!1901826 (= lambda!438371 lambda!438337)))

(declare-fun bs!1901827 () Bool)

(assert (= bs!1901827 (and d!2244306 d!2244190)))

(assert (=> bs!1901827 (= lambda!438371 lambda!438366)))

(declare-fun bs!1901828 () Bool)

(assert (= bs!1901828 (and d!2244306 d!2244180)))

(assert (=> bs!1901828 (= lambda!438371 lambda!438365)))

(declare-fun bs!1901829 () Bool)

(assert (= bs!1901829 (and d!2244306 d!2244076)))

(assert (=> bs!1901829 (= lambda!438371 lambda!438361)))

(declare-fun bs!1901830 () Bool)

(assert (= bs!1901830 (and d!2244306 d!2243908)))

(assert (=> bs!1901830 (= lambda!438371 lambda!438335)))

(declare-fun bs!1901831 () Bool)

(assert (= bs!1901831 (and d!2244306 d!2244102)))

(assert (=> bs!1901831 (= lambda!438371 lambda!438362)))

(declare-fun bs!1901832 () Bool)

(assert (= bs!1901832 (and d!2244306 d!2243980)))

(assert (=> bs!1901832 (= lambda!438371 lambda!438351)))

(assert (=> d!2244306 (= (inv!89019 setElem!53542) (forall!17221 (exprs!7851 setElem!53542) lambda!438371))))

(declare-fun bs!1901833 () Bool)

(assert (= bs!1901833 d!2244306))

(declare-fun m!7895302 () Bool)

(assert (=> bs!1901833 m!7895302))

(assert (=> setNonEmpty!53542 d!2244306))

(declare-fun bs!1901834 () Bool)

(declare-fun d!2244310 () Bool)

(assert (= bs!1901834 (and d!2244310 d!2244306)))

(declare-fun lambda!438372 () Int)

(assert (=> bs!1901834 (= lambda!438372 lambda!438371)))

(declare-fun bs!1901835 () Bool)

(assert (= bs!1901835 (and d!2244310 d!2244108)))

(assert (=> bs!1901835 (= lambda!438372 lambda!438363)))

(declare-fun bs!1901836 () Bool)

(assert (= bs!1901836 (and d!2244310 d!2244270)))

(assert (=> bs!1901836 (= lambda!438372 lambda!438370)))

(declare-fun bs!1901837 () Bool)

(assert (= bs!1901837 (and d!2244310 d!2243910)))

(assert (=> bs!1901837 (= lambda!438372 lambda!438336)))

(declare-fun bs!1901838 () Bool)

(assert (= bs!1901838 (and d!2244310 d!2244046)))

(assert (=> bs!1901838 (= lambda!438372 lambda!438358)))

(declare-fun bs!1901839 () Bool)

(assert (= bs!1901839 (and d!2244310 d!2243912)))

(assert (=> bs!1901839 (= lambda!438372 lambda!438337)))

(declare-fun bs!1901840 () Bool)

(assert (= bs!1901840 (and d!2244310 d!2244190)))

(assert (=> bs!1901840 (= lambda!438372 lambda!438366)))

(declare-fun bs!1901841 () Bool)

(assert (= bs!1901841 (and d!2244310 d!2244180)))

(assert (=> bs!1901841 (= lambda!438372 lambda!438365)))

(declare-fun bs!1901842 () Bool)

(assert (= bs!1901842 (and d!2244310 d!2244076)))

(assert (=> bs!1901842 (= lambda!438372 lambda!438361)))

(declare-fun bs!1901843 () Bool)

(assert (= bs!1901843 (and d!2244310 d!2243908)))

(assert (=> bs!1901843 (= lambda!438372 lambda!438335)))

(declare-fun bs!1901844 () Bool)

(assert (= bs!1901844 (and d!2244310 d!2244102)))

(assert (=> bs!1901844 (= lambda!438372 lambda!438362)))

(declare-fun bs!1901845 () Bool)

(assert (= bs!1901845 (and d!2244310 d!2243980)))

(assert (=> bs!1901845 (= lambda!438372 lambda!438351)))

(assert (=> d!2244310 (= (inv!89019 (h!76241 (t!383946 res!2931777))) (forall!17221 (exprs!7851 (h!76241 (t!383946 res!2931777))) lambda!438372))))

(declare-fun bs!1901846 () Bool)

(assert (= bs!1901846 d!2244310))

(declare-fun m!7895304 () Bool)

(assert (=> bs!1901846 m!7895304))

(assert (=> b!7224710 d!2244310))

(declare-fun d!2244312 () Bool)

(assert (=> d!2244312 (= (nullable!7806 (ite c!1340346 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (nullableFct!3059 (ite c!1340346 (regTwo!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))

(declare-fun bs!1901847 () Bool)

(assert (= bs!1901847 d!2244312))

(declare-fun m!7895310 () Bool)

(assert (=> bs!1901847 m!7895310))

(assert (=> bm!657549 d!2244312))

(declare-fun c!1340424 () Bool)

(declare-fun bm!657641 () Bool)

(declare-fun call!657647 () Bool)

(declare-fun c!1340425 () Bool)

(assert (=> bm!657641 (= call!657647 (validRegex!9493 (ite c!1340425 (reg!18728 (h!76239 (t!383944 (exprs!7851 empty!3071)))) (ite c!1340424 (regOne!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 empty!3071))))))))))

(declare-fun b!7225047 () Bool)

(declare-fun e!4331254 () Bool)

(declare-fun e!4331255 () Bool)

(assert (=> b!7225047 (= e!4331254 e!4331255)))

(assert (=> b!7225047 (= c!1340424 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 empty!3071)))))))

(declare-fun b!7225048 () Bool)

(declare-fun e!4331247 () Bool)

(declare-fun e!4331248 () Bool)

(assert (=> b!7225048 (= e!4331247 e!4331248)))

(declare-fun res!2932079 () Bool)

(assert (=> b!7225048 (=> (not res!2932079) (not e!4331248))))

(declare-fun call!657648 () Bool)

(assert (=> b!7225048 (= res!2932079 call!657648)))

(declare-fun b!7225049 () Bool)

(declare-fun e!4331251 () Bool)

(assert (=> b!7225049 (= e!4331251 call!657648)))

(declare-fun b!7225050 () Bool)

(declare-fun res!2932077 () Bool)

(assert (=> b!7225050 (=> (not res!2932077) (not e!4331251))))

(declare-fun call!657646 () Bool)

(assert (=> b!7225050 (= res!2932077 call!657646)))

(assert (=> b!7225050 (= e!4331255 e!4331251)))

(declare-fun b!7225051 () Bool)

(declare-fun res!2932073 () Bool)

(assert (=> b!7225051 (=> res!2932073 e!4331247)))

(assert (=> b!7225051 (= res!2932073 (not ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 empty!3071))))))))

(assert (=> b!7225051 (= e!4331255 e!4331247)))

(declare-fun b!7225052 () Bool)

(declare-fun e!4331250 () Bool)

(assert (=> b!7225052 (= e!4331250 call!657647)))

(declare-fun b!7225053 () Bool)

(assert (=> b!7225053 (= e!4331248 call!657646)))

(declare-fun bm!657642 () Bool)

(assert (=> bm!657642 (= call!657646 call!657647)))

(declare-fun d!2244314 () Bool)

(declare-fun res!2932078 () Bool)

(declare-fun e!4331253 () Bool)

(assert (=> d!2244314 (=> res!2932078 e!4331253)))

(assert (=> d!2244314 (= res!2932078 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 empty!3071)))))))

(assert (=> d!2244314 (= (validRegex!9493 (h!76239 (t!383944 (exprs!7851 empty!3071)))) e!4331253)))

(declare-fun b!7225054 () Bool)

(assert (=> b!7225054 (= e!4331254 e!4331250)))

(declare-fun res!2932074 () Bool)

(assert (=> b!7225054 (= res!2932074 (not (nullable!7806 (reg!18728 (h!76239 (t!383944 (exprs!7851 empty!3071)))))))))

(assert (=> b!7225054 (=> (not res!2932074) (not e!4331250))))

(declare-fun bm!657643 () Bool)

(assert (=> bm!657643 (= call!657648 (validRegex!9493 (ite c!1340424 (regTwo!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))) (regOne!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))))))

(declare-fun b!7225055 () Bool)

(assert (=> b!7225055 (= e!4331253 e!4331254)))

(assert (=> b!7225055 (= c!1340425 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 empty!3071)))))))

(assert (= (and d!2244314 (not res!2932078)) b!7225055))

(assert (= (and b!7225055 c!1340425) b!7225054))

(assert (= (and b!7225055 (not c!1340425)) b!7225047))

(assert (= (and b!7225054 res!2932074) b!7225052))

(assert (= (and b!7225047 c!1340424) b!7225050))

(assert (= (and b!7225047 (not c!1340424)) b!7225051))

(assert (= (and b!7225050 res!2932077) b!7225049))

(assert (= (and b!7225051 (not res!2932073)) b!7225048))

(assert (= (and b!7225048 res!2932079) b!7225053))

(assert (= (or b!7225050 b!7225053) bm!657642))

(assert (= (or b!7225049 b!7225048) bm!657643))

(assert (= (or b!7225052 bm!657642) bm!657641))

(declare-fun m!7895318 () Bool)

(assert (=> bm!657641 m!7895318))

(declare-fun m!7895320 () Bool)

(assert (=> b!7225054 m!7895320))

(declare-fun m!7895322 () Bool)

(assert (=> bm!657643 m!7895322))

(assert (=> bs!1901752 d!2244314))

(declare-fun b!7225063 () Bool)

(declare-fun e!4331262 () (InoxSet Context!14702))

(declare-fun call!657655 () (InoxSet Context!14702))

(declare-fun call!657656 () (InoxSet Context!14702))

(assert (=> b!7225063 (= e!4331262 ((_ map or) call!657655 call!657656))))

(declare-fun c!1340431 () Bool)

(declare-fun b!7225064 () Bool)

(assert (=> b!7225064 (= c!1340431 ((_ is Star!18399) (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun e!4331264 () (InoxSet Context!14702))

(declare-fun e!4331267 () (InoxSet Context!14702))

(assert (=> b!7225064 (= e!4331264 e!4331267)))

(declare-fun c!1340429 () Bool)

(declare-fun d!2244320 () Bool)

(assert (=> d!2244320 (= c!1340429 (and ((_ is ElementMatch!18399) (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) (= (c!1340227 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) lt!2571752)))))

(declare-fun e!4331266 () (InoxSet Context!14702))

(assert (=> d!2244320 (= (derivationStepZipperDown!2533 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))) (ite (or c!1340338 c!1340337) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657542)) lt!2571752) e!4331266)))

(declare-fun bm!657646 () Bool)

(declare-fun call!657654 () (InoxSet Context!14702))

(declare-fun call!657651 () (InoxSet Context!14702))

(assert (=> bm!657646 (= call!657654 call!657651)))

(declare-fun e!4331265 () Bool)

(declare-fun b!7225065 () Bool)

(assert (=> b!7225065 (= e!4331265 (nullable!7806 (regOne!37310 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7225066 () Bool)

(assert (=> b!7225066 (= e!4331266 e!4331262)))

(declare-fun c!1340428 () Bool)

(assert (=> b!7225066 (= c!1340428 ((_ is Union!18399) (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun b!7225067 () Bool)

(assert (=> b!7225067 (= e!4331266 (store ((as const (Array Context!14702 Bool)) false) (ite (or c!1340338 c!1340337) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657542)) true))))

(declare-fun bm!657647 () Bool)

(declare-fun call!657653 () List!69915)

(declare-fun call!657652 () List!69915)

(assert (=> bm!657647 (= call!657653 call!657652)))

(declare-fun b!7225068 () Bool)

(assert (=> b!7225068 (= e!4331267 ((as const (Array Context!14702 Bool)) false))))

(declare-fun bm!657648 () Bool)

(declare-fun c!1340430 () Bool)

(declare-fun c!1340427 () Bool)

(assert (=> bm!657648 (= call!657656 (derivationStepZipperDown!2533 (ite c!1340428 (regTwo!37311 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) (ite c!1340427 (regTwo!37310 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) (ite c!1340430 (regOne!37310 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) (reg!18728 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))))) (ite (or c!1340428 c!1340427) (ite (or c!1340338 c!1340337) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657542)) (Context!14703 call!657653)) lt!2571752))))

(declare-fun b!7225069 () Bool)

(assert (=> b!7225069 (= c!1340427 e!4331265)))

(declare-fun res!2932085 () Bool)

(assert (=> b!7225069 (=> (not res!2932085) (not e!4331265))))

(assert (=> b!7225069 (= res!2932085 ((_ is Concat!27244) (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun e!4331263 () (InoxSet Context!14702))

(assert (=> b!7225069 (= e!4331262 e!4331263)))

(declare-fun bm!657649 () Bool)

(assert (=> bm!657649 (= call!657652 ($colon$colon!2855 (exprs!7851 (ite (or c!1340338 c!1340337) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657542))) (ite (or c!1340427 c!1340430) (regTwo!37310 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))))))

(declare-fun b!7225070 () Bool)

(assert (=> b!7225070 (= e!4331263 e!4331264)))

(assert (=> b!7225070 (= c!1340430 ((_ is Concat!27244) (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))))))

(declare-fun b!7225071 () Bool)

(assert (=> b!7225071 (= e!4331267 call!657654)))

(declare-fun bm!657650 () Bool)

(assert (=> bm!657650 (= call!657655 (derivationStepZipperDown!2533 (ite c!1340428 (regOne!37311 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))))))) (regOne!37310 (ite c!1340338 (regTwo!37311 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340337 (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340340 (regOne!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (reg!18728 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))))))) (ite c!1340428 (ite (or c!1340338 c!1340337) (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)) (Context!14703 call!657542)) (Context!14703 call!657652)) lt!2571752))))

(declare-fun b!7225072 () Bool)

(assert (=> b!7225072 (= e!4331263 ((_ map or) call!657655 call!657651))))

(declare-fun b!7225073 () Bool)

(assert (=> b!7225073 (= e!4331264 call!657654)))

(declare-fun bm!657651 () Bool)

(assert (=> bm!657651 (= call!657651 call!657656)))

(assert (= (and d!2244320 c!1340429) b!7225067))

(assert (= (and d!2244320 (not c!1340429)) b!7225066))

(assert (= (and b!7225066 c!1340428) b!7225063))

(assert (= (and b!7225066 (not c!1340428)) b!7225069))

(assert (= (and b!7225069 res!2932085) b!7225065))

(assert (= (and b!7225069 c!1340427) b!7225072))

(assert (= (and b!7225069 (not c!1340427)) b!7225070))

(assert (= (and b!7225070 c!1340430) b!7225073))

(assert (= (and b!7225070 (not c!1340430)) b!7225064))

(assert (= (and b!7225064 c!1340431) b!7225071))

(assert (= (and b!7225064 (not c!1340431)) b!7225068))

(assert (= (or b!7225073 b!7225071) bm!657647))

(assert (= (or b!7225073 b!7225071) bm!657646))

(assert (= (or b!7225072 bm!657646) bm!657651))

(assert (= (or b!7225072 bm!657647) bm!657649))

(assert (= (or b!7225063 b!7225072) bm!657650))

(assert (= (or b!7225063 bm!657651) bm!657648))

(declare-fun m!7895330 () Bool)

(assert (=> bm!657648 m!7895330))

(declare-fun m!7895332 () Bool)

(assert (=> b!7225065 m!7895332))

(declare-fun m!7895334 () Bool)

(assert (=> bm!657650 m!7895334))

(declare-fun m!7895336 () Bool)

(assert (=> bm!657649 m!7895336))

(declare-fun m!7895338 () Bool)

(assert (=> b!7225067 m!7895338))

(assert (=> bm!657537 d!2244320))

(declare-fun d!2244330 () Bool)

(assert (=> d!2244330 (= ($colon$colon!2855 (exprs!7851 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473))) (ite (or c!1340337 c!1340340) (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) (Cons!69791 (ite (or c!1340337 c!1340340) (regTwo!37310 (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (ite c!1340280 (regOne!37311 (h!76239 (exprs!7851 c!10544))) (regOne!37310 (h!76239 (exprs!7851 c!10544))))) (exprs!7851 (ite c!1340280 (Context!14703 (t!383944 (exprs!7851 c!10544))) (Context!14703 call!657473)))))))

(assert (=> bm!657538 d!2244330))

(declare-fun e!4331274 () Bool)

(assert (=> b!7224719 (= tp!2030995 e!4331274)))

(declare-fun b!7225088 () Bool)

(declare-fun tp!2031056 () Bool)

(declare-fun tp!2031055 () Bool)

(assert (=> b!7225088 (= e!4331274 (and tp!2031056 tp!2031055))))

(declare-fun b!7225087 () Bool)

(declare-fun tp!2031057 () Bool)

(assert (=> b!7225087 (= e!4331274 tp!2031057)))

(declare-fun b!7225086 () Bool)

(declare-fun tp!2031058 () Bool)

(declare-fun tp!2031059 () Bool)

(assert (=> b!7225086 (= e!4331274 (and tp!2031058 tp!2031059))))

(declare-fun b!7225085 () Bool)

(assert (=> b!7225085 (= e!4331274 tp_is_empty!46355)))

(assert (= (and b!7224719 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (exprs!7851 setElem!53528))))) b!7225085))

(assert (= (and b!7224719 ((_ is Concat!27244) (reg!18728 (h!76239 (exprs!7851 setElem!53528))))) b!7225086))

(assert (= (and b!7224719 ((_ is Star!18399) (reg!18728 (h!76239 (exprs!7851 setElem!53528))))) b!7225087))

(assert (= (and b!7224719 ((_ is Union!18399) (reg!18728 (h!76239 (exprs!7851 setElem!53528))))) b!7225088))

(declare-fun e!4331275 () Bool)

(assert (=> b!7224760 (= tp!2031049 e!4331275)))

(declare-fun b!7225092 () Bool)

(declare-fun tp!2031061 () Bool)

(declare-fun tp!2031060 () Bool)

(assert (=> b!7225092 (= e!4331275 (and tp!2031061 tp!2031060))))

(declare-fun b!7225091 () Bool)

(declare-fun tp!2031062 () Bool)

(assert (=> b!7225091 (= e!4331275 tp!2031062)))

(declare-fun b!7225090 () Bool)

(declare-fun tp!2031063 () Bool)

(declare-fun tp!2031064 () Bool)

(assert (=> b!7225090 (= e!4331275 (and tp!2031063 tp!2031064))))

(declare-fun b!7225089 () Bool)

(assert (=> b!7225089 (= e!4331275 tp_is_empty!46355)))

(assert (= (and b!7224760 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225089))

(assert (= (and b!7224760 ((_ is Concat!27244) (regOne!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225090))

(assert (= (and b!7224760 ((_ is Star!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225091))

(assert (= (and b!7224760 ((_ is Union!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225092))

(declare-fun e!4331276 () Bool)

(assert (=> b!7224760 (= tp!2031048 e!4331276)))

(declare-fun b!7225096 () Bool)

(declare-fun tp!2031066 () Bool)

(declare-fun tp!2031065 () Bool)

(assert (=> b!7225096 (= e!4331276 (and tp!2031066 tp!2031065))))

(declare-fun b!7225095 () Bool)

(declare-fun tp!2031067 () Bool)

(assert (=> b!7225095 (= e!4331276 tp!2031067)))

(declare-fun b!7225094 () Bool)

(declare-fun tp!2031068 () Bool)

(declare-fun tp!2031069 () Bool)

(assert (=> b!7225094 (= e!4331276 (and tp!2031068 tp!2031069))))

(declare-fun b!7225093 () Bool)

(assert (=> b!7225093 (= e!4331276 tp_is_empty!46355)))

(assert (= (and b!7224760 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225093))

(assert (= (and b!7224760 ((_ is Concat!27244) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225094))

(assert (= (and b!7224760 ((_ is Star!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225095))

(assert (= (and b!7224760 ((_ is Union!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225096))

(declare-fun e!4331277 () Bool)

(assert (=> b!7224731 (= tp!2031013 e!4331277)))

(declare-fun b!7225100 () Bool)

(declare-fun tp!2031071 () Bool)

(declare-fun tp!2031070 () Bool)

(assert (=> b!7225100 (= e!4331277 (and tp!2031071 tp!2031070))))

(declare-fun b!7225099 () Bool)

(declare-fun tp!2031072 () Bool)

(assert (=> b!7225099 (= e!4331277 tp!2031072)))

(declare-fun b!7225098 () Bool)

(declare-fun tp!2031073 () Bool)

(declare-fun tp!2031074 () Bool)

(assert (=> b!7225098 (= e!4331277 (and tp!2031073 tp!2031074))))

(declare-fun b!7225097 () Bool)

(assert (=> b!7225097 (= e!4331277 tp_is_empty!46355)))

(assert (= (and b!7224731 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225097))

(assert (= (and b!7224731 ((_ is Concat!27244) (reg!18728 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225098))

(assert (= (and b!7224731 ((_ is Star!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225099))

(assert (= (and b!7224731 ((_ is Union!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225100))

(declare-fun e!4331278 () Bool)

(assert (=> b!7224751 (= tp!2031040 e!4331278)))

(declare-fun b!7225104 () Bool)

(declare-fun tp!2031076 () Bool)

(declare-fun tp!2031075 () Bool)

(assert (=> b!7225104 (= e!4331278 (and tp!2031076 tp!2031075))))

(declare-fun b!7225103 () Bool)

(declare-fun tp!2031077 () Bool)

(assert (=> b!7225103 (= e!4331278 tp!2031077)))

(declare-fun b!7225102 () Bool)

(declare-fun tp!2031078 () Bool)

(declare-fun tp!2031079 () Bool)

(assert (=> b!7225102 (= e!4331278 (and tp!2031078 tp!2031079))))

(declare-fun b!7225101 () Bool)

(assert (=> b!7225101 (= e!4331278 tp_is_empty!46355)))

(assert (= (and b!7224751 ((_ is ElementMatch!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225101))

(assert (= (and b!7224751 ((_ is Concat!27244) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225102))

(assert (= (and b!7224751 ((_ is Star!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225103))

(assert (= (and b!7224751 ((_ is Union!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225104))

(declare-fun e!4331279 () Bool)

(assert (=> b!7224712 (= tp!2030986 e!4331279)))

(declare-fun b!7225108 () Bool)

(declare-fun tp!2031081 () Bool)

(declare-fun tp!2031080 () Bool)

(assert (=> b!7225108 (= e!4331279 (and tp!2031081 tp!2031080))))

(declare-fun b!7225107 () Bool)

(declare-fun tp!2031082 () Bool)

(assert (=> b!7225107 (= e!4331279 tp!2031082)))

(declare-fun b!7225106 () Bool)

(declare-fun tp!2031083 () Bool)

(declare-fun tp!2031084 () Bool)

(assert (=> b!7225106 (= e!4331279 (and tp!2031083 tp!2031084))))

(declare-fun b!7225105 () Bool)

(assert (=> b!7225105 (= e!4331279 tp_is_empty!46355)))

(assert (= (and b!7224712 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 _$3!498)))) b!7225105))

(assert (= (and b!7224712 ((_ is Concat!27244) (h!76239 (exprs!7851 _$3!498)))) b!7225106))

(assert (= (and b!7224712 ((_ is Star!18399) (h!76239 (exprs!7851 _$3!498)))) b!7225107))

(assert (= (and b!7224712 ((_ is Union!18399) (h!76239 (exprs!7851 _$3!498)))) b!7225108))

(declare-fun b!7225109 () Bool)

(declare-fun e!4331280 () Bool)

(declare-fun tp!2031085 () Bool)

(declare-fun tp!2031086 () Bool)

(assert (=> b!7225109 (= e!4331280 (and tp!2031085 tp!2031086))))

(assert (=> b!7224712 (= tp!2030987 e!4331280)))

(assert (= (and b!7224712 ((_ is Cons!69791) (t!383944 (exprs!7851 _$3!498)))) b!7225109))

(declare-fun e!4331281 () Bool)

(assert (=> b!7224680 (= tp!2030951 e!4331281)))

(declare-fun b!7225113 () Bool)

(declare-fun tp!2031088 () Bool)

(declare-fun tp!2031087 () Bool)

(assert (=> b!7225113 (= e!4331281 (and tp!2031088 tp!2031087))))

(declare-fun b!7225112 () Bool)

(declare-fun tp!2031089 () Bool)

(assert (=> b!7225112 (= e!4331281 tp!2031089)))

(declare-fun b!7225111 () Bool)

(declare-fun tp!2031090 () Bool)

(declare-fun tp!2031091 () Bool)

(assert (=> b!7225111 (= e!4331281 (and tp!2031090 tp!2031091))))

(declare-fun b!7225110 () Bool)

(assert (=> b!7225110 (= e!4331281 tp_is_empty!46355)))

(assert (= (and b!7224680 ((_ is ElementMatch!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225110))

(assert (= (and b!7224680 ((_ is Concat!27244) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225111))

(assert (= (and b!7224680 ((_ is Star!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225112))

(assert (= (and b!7224680 ((_ is Union!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225113))

(declare-fun e!4331282 () Bool)

(assert (=> b!7224680 (= tp!2030952 e!4331282)))

(declare-fun b!7225117 () Bool)

(declare-fun tp!2031093 () Bool)

(declare-fun tp!2031092 () Bool)

(assert (=> b!7225117 (= e!4331282 (and tp!2031093 tp!2031092))))

(declare-fun b!7225116 () Bool)

(declare-fun tp!2031094 () Bool)

(assert (=> b!7225116 (= e!4331282 tp!2031094)))

(declare-fun b!7225115 () Bool)

(declare-fun tp!2031095 () Bool)

(declare-fun tp!2031096 () Bool)

(assert (=> b!7225115 (= e!4331282 (and tp!2031095 tp!2031096))))

(declare-fun b!7225114 () Bool)

(assert (=> b!7225114 (= e!4331282 tp_is_empty!46355)))

(assert (= (and b!7224680 ((_ is ElementMatch!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225114))

(assert (= (and b!7224680 ((_ is Concat!27244) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225115))

(assert (= (and b!7224680 ((_ is Star!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225116))

(assert (= (and b!7224680 ((_ is Union!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225117))

(declare-fun e!4331283 () Bool)

(assert (=> b!7224727 (= tp!2031007 e!4331283)))

(declare-fun b!7225121 () Bool)

(declare-fun tp!2031098 () Bool)

(declare-fun tp!2031097 () Bool)

(assert (=> b!7225121 (= e!4331283 (and tp!2031098 tp!2031097))))

(declare-fun b!7225120 () Bool)

(declare-fun tp!2031099 () Bool)

(assert (=> b!7225120 (= e!4331283 tp!2031099)))

(declare-fun b!7225119 () Bool)

(declare-fun tp!2031100 () Bool)

(declare-fun tp!2031101 () Bool)

(assert (=> b!7225119 (= e!4331283 (and tp!2031100 tp!2031101))))

(declare-fun b!7225118 () Bool)

(assert (=> b!7225118 (= e!4331283 tp_is_empty!46355)))

(assert (= (and b!7224727 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 setElem!53535)))) b!7225118))

(assert (= (and b!7224727 ((_ is Concat!27244) (h!76239 (exprs!7851 setElem!53535)))) b!7225119))

(assert (= (and b!7224727 ((_ is Star!18399) (h!76239 (exprs!7851 setElem!53535)))) b!7225120))

(assert (= (and b!7224727 ((_ is Union!18399) (h!76239 (exprs!7851 setElem!53535)))) b!7225121))

(declare-fun b!7225122 () Bool)

(declare-fun e!4331284 () Bool)

(declare-fun tp!2031102 () Bool)

(declare-fun tp!2031103 () Bool)

(assert (=> b!7225122 (= e!4331284 (and tp!2031102 tp!2031103))))

(assert (=> b!7224727 (= tp!2031008 e!4331284)))

(assert (= (and b!7224727 ((_ is Cons!69791) (t!383944 (exprs!7851 setElem!53535)))) b!7225122))

(declare-fun e!4331285 () Bool)

(assert (=> b!7224682 (= tp!2030949 e!4331285)))

(declare-fun b!7225126 () Bool)

(declare-fun tp!2031105 () Bool)

(declare-fun tp!2031104 () Bool)

(assert (=> b!7225126 (= e!4331285 (and tp!2031105 tp!2031104))))

(declare-fun b!7225125 () Bool)

(declare-fun tp!2031106 () Bool)

(assert (=> b!7225125 (= e!4331285 tp!2031106)))

(declare-fun b!7225124 () Bool)

(declare-fun tp!2031107 () Bool)

(declare-fun tp!2031108 () Bool)

(assert (=> b!7225124 (= e!4331285 (and tp!2031107 tp!2031108))))

(declare-fun b!7225123 () Bool)

(assert (=> b!7225123 (= e!4331285 tp_is_empty!46355)))

(assert (= (and b!7224682 ((_ is ElementMatch!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225123))

(assert (= (and b!7224682 ((_ is Concat!27244) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225124))

(assert (= (and b!7224682 ((_ is Star!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225125))

(assert (= (and b!7224682 ((_ is Union!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225126))

(declare-fun e!4331286 () Bool)

(assert (=> b!7224682 (= tp!2030948 e!4331286)))

(declare-fun b!7225130 () Bool)

(declare-fun tp!2031110 () Bool)

(declare-fun tp!2031109 () Bool)

(assert (=> b!7225130 (= e!4331286 (and tp!2031110 tp!2031109))))

(declare-fun b!7225129 () Bool)

(declare-fun tp!2031111 () Bool)

(assert (=> b!7225129 (= e!4331286 tp!2031111)))

(declare-fun b!7225128 () Bool)

(declare-fun tp!2031112 () Bool)

(declare-fun tp!2031113 () Bool)

(assert (=> b!7225128 (= e!4331286 (and tp!2031112 tp!2031113))))

(declare-fun b!7225127 () Bool)

(assert (=> b!7225127 (= e!4331286 tp_is_empty!46355)))

(assert (= (and b!7224682 ((_ is ElementMatch!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225127))

(assert (= (and b!7224682 ((_ is Concat!27244) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225128))

(assert (= (and b!7224682 ((_ is Star!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225129))

(assert (= (and b!7224682 ((_ is Union!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225130))

(declare-fun e!4331287 () Bool)

(assert (=> b!7224673 (= tp!2030940 e!4331287)))

(declare-fun b!7225134 () Bool)

(declare-fun tp!2031115 () Bool)

(declare-fun tp!2031114 () Bool)

(assert (=> b!7225134 (= e!4331287 (and tp!2031115 tp!2031114))))

(declare-fun b!7225133 () Bool)

(declare-fun tp!2031116 () Bool)

(assert (=> b!7225133 (= e!4331287 tp!2031116)))

(declare-fun b!7225132 () Bool)

(declare-fun tp!2031117 () Bool)

(declare-fun tp!2031118 () Bool)

(assert (=> b!7225132 (= e!4331287 (and tp!2031117 tp!2031118))))

(declare-fun b!7225131 () Bool)

(assert (=> b!7225131 (= e!4331287 tp_is_empty!46355)))

(assert (= (and b!7224673 ((_ is ElementMatch!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225131))

(assert (= (and b!7224673 ((_ is Concat!27244) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225132))

(assert (= (and b!7224673 ((_ is Star!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225133))

(assert (= (and b!7224673 ((_ is Union!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225134))

(declare-fun e!4331288 () Bool)

(assert (=> b!7224697 (= tp!2030973 e!4331288)))

(declare-fun b!7225138 () Bool)

(declare-fun tp!2031120 () Bool)

(declare-fun tp!2031119 () Bool)

(assert (=> b!7225138 (= e!4331288 (and tp!2031120 tp!2031119))))

(declare-fun b!7225137 () Bool)

(declare-fun tp!2031121 () Bool)

(assert (=> b!7225137 (= e!4331288 tp!2031121)))

(declare-fun b!7225136 () Bool)

(declare-fun tp!2031122 () Bool)

(declare-fun tp!2031123 () Bool)

(assert (=> b!7225136 (= e!4331288 (and tp!2031122 tp!2031123))))

(declare-fun b!7225135 () Bool)

(assert (=> b!7225135 (= e!4331288 tp_is_empty!46355)))

(assert (= (and b!7224697 ((_ is ElementMatch!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225135))

(assert (= (and b!7224697 ((_ is Concat!27244) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225136))

(assert (= (and b!7224697 ((_ is Star!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225137))

(assert (= (and b!7224697 ((_ is Union!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225138))

(declare-fun e!4331289 () Bool)

(assert (=> b!7224697 (= tp!2030974 e!4331289)))

(declare-fun b!7225142 () Bool)

(declare-fun tp!2031125 () Bool)

(declare-fun tp!2031124 () Bool)

(assert (=> b!7225142 (= e!4331289 (and tp!2031125 tp!2031124))))

(declare-fun b!7225141 () Bool)

(declare-fun tp!2031126 () Bool)

(assert (=> b!7225141 (= e!4331289 tp!2031126)))

(declare-fun b!7225140 () Bool)

(declare-fun tp!2031127 () Bool)

(declare-fun tp!2031128 () Bool)

(assert (=> b!7225140 (= e!4331289 (and tp!2031127 tp!2031128))))

(declare-fun b!7225139 () Bool)

(assert (=> b!7225139 (= e!4331289 tp_is_empty!46355)))

(assert (= (and b!7224697 ((_ is ElementMatch!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225139))

(assert (= (and b!7224697 ((_ is Concat!27244) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225140))

(assert (= (and b!7224697 ((_ is Star!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225141))

(assert (= (and b!7224697 ((_ is Union!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225142))

(declare-fun e!4331290 () Bool)

(assert (=> b!7224761 (= tp!2031053 e!4331290)))

(declare-fun b!7225146 () Bool)

(declare-fun tp!2031130 () Bool)

(declare-fun tp!2031129 () Bool)

(assert (=> b!7225146 (= e!4331290 (and tp!2031130 tp!2031129))))

(declare-fun b!7225145 () Bool)

(declare-fun tp!2031131 () Bool)

(assert (=> b!7225145 (= e!4331290 tp!2031131)))

(declare-fun b!7225144 () Bool)

(declare-fun tp!2031132 () Bool)

(declare-fun tp!2031133 () Bool)

(assert (=> b!7225144 (= e!4331290 (and tp!2031132 tp!2031133))))

(declare-fun b!7225143 () Bool)

(assert (=> b!7225143 (= e!4331290 tp_is_empty!46355)))

(assert (= (and b!7224761 ((_ is ElementMatch!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544)))))) b!7225143))

(assert (= (and b!7224761 ((_ is Concat!27244) (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544)))))) b!7225144))

(assert (= (and b!7224761 ((_ is Star!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544)))))) b!7225145))

(assert (= (and b!7224761 ((_ is Union!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544)))))) b!7225146))

(declare-fun b!7225147 () Bool)

(declare-fun e!4331291 () Bool)

(declare-fun tp!2031134 () Bool)

(declare-fun tp!2031135 () Bool)

(assert (=> b!7225147 (= e!4331291 (and tp!2031134 tp!2031135))))

(assert (=> b!7224761 (= tp!2031054 e!4331291)))

(assert (= (and b!7224761 ((_ is Cons!69791) (t!383944 (t!383944 (t!383944 (exprs!7851 c!10544)))))) b!7225147))

(declare-fun e!4331292 () Bool)

(assert (=> b!7224699 (= tp!2030971 e!4331292)))

(declare-fun b!7225151 () Bool)

(declare-fun tp!2031137 () Bool)

(declare-fun tp!2031136 () Bool)

(assert (=> b!7225151 (= e!4331292 (and tp!2031137 tp!2031136))))

(declare-fun b!7225150 () Bool)

(declare-fun tp!2031138 () Bool)

(assert (=> b!7225150 (= e!4331292 tp!2031138)))

(declare-fun b!7225149 () Bool)

(declare-fun tp!2031139 () Bool)

(declare-fun tp!2031140 () Bool)

(assert (=> b!7225149 (= e!4331292 (and tp!2031139 tp!2031140))))

(declare-fun b!7225148 () Bool)

(assert (=> b!7225148 (= e!4331292 tp_is_empty!46355)))

(assert (= (and b!7224699 ((_ is ElementMatch!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225148))

(assert (= (and b!7224699 ((_ is Concat!27244) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225149))

(assert (= (and b!7224699 ((_ is Star!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225150))

(assert (= (and b!7224699 ((_ is Union!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225151))

(declare-fun e!4331293 () Bool)

(assert (=> b!7224699 (= tp!2030970 e!4331293)))

(declare-fun b!7225155 () Bool)

(declare-fun tp!2031142 () Bool)

(declare-fun tp!2031141 () Bool)

(assert (=> b!7225155 (= e!4331293 (and tp!2031142 tp!2031141))))

(declare-fun b!7225154 () Bool)

(declare-fun tp!2031143 () Bool)

(assert (=> b!7225154 (= e!4331293 tp!2031143)))

(declare-fun b!7225153 () Bool)

(declare-fun tp!2031144 () Bool)

(declare-fun tp!2031145 () Bool)

(assert (=> b!7225153 (= e!4331293 (and tp!2031144 tp!2031145))))

(declare-fun b!7225152 () Bool)

(assert (=> b!7225152 (= e!4331293 tp_is_empty!46355)))

(assert (= (and b!7224699 ((_ is ElementMatch!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225152))

(assert (= (and b!7224699 ((_ is Concat!27244) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225153))

(assert (= (and b!7224699 ((_ is Star!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225154))

(assert (= (and b!7224699 ((_ is Union!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225155))

(declare-fun e!4331294 () Bool)

(assert (=> b!7224690 (= tp!2030962 e!4331294)))

(declare-fun b!7225159 () Bool)

(declare-fun tp!2031147 () Bool)

(declare-fun tp!2031146 () Bool)

(assert (=> b!7225159 (= e!4331294 (and tp!2031147 tp!2031146))))

(declare-fun b!7225158 () Bool)

(declare-fun tp!2031148 () Bool)

(assert (=> b!7225158 (= e!4331294 tp!2031148)))

(declare-fun b!7225157 () Bool)

(declare-fun tp!2031149 () Bool)

(declare-fun tp!2031150 () Bool)

(assert (=> b!7225157 (= e!4331294 (and tp!2031149 tp!2031150))))

(declare-fun b!7225156 () Bool)

(assert (=> b!7225156 (= e!4331294 tp_is_empty!46355)))

(assert (= (and b!7224690 ((_ is ElementMatch!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225156))

(assert (= (and b!7224690 ((_ is Concat!27244) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225157))

(assert (= (and b!7224690 ((_ is Star!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225158))

(assert (= (and b!7224690 ((_ is Union!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225159))

(declare-fun e!4331302 () Bool)

(assert (=> b!7224745 (= tp!2031034 e!4331302)))

(declare-fun b!7225172 () Bool)

(declare-fun tp!2031152 () Bool)

(declare-fun tp!2031151 () Bool)

(assert (=> b!7225172 (= e!4331302 (and tp!2031152 tp!2031151))))

(declare-fun b!7225171 () Bool)

(declare-fun tp!2031153 () Bool)

(assert (=> b!7225171 (= e!4331302 tp!2031153)))

(declare-fun b!7225170 () Bool)

(declare-fun tp!2031154 () Bool)

(declare-fun tp!2031155 () Bool)

(assert (=> b!7225170 (= e!4331302 (and tp!2031154 tp!2031155))))

(declare-fun b!7225169 () Bool)

(assert (=> b!7225169 (= e!4331302 tp_is_empty!46355)))

(assert (= (and b!7224745 ((_ is ElementMatch!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225169))

(assert (= (and b!7224745 ((_ is Concat!27244) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225170))

(assert (= (and b!7224745 ((_ is Star!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225171))

(assert (= (and b!7224745 ((_ is Union!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225172))

(declare-fun e!4331303 () Bool)

(assert (=> b!7224745 (= tp!2031035 e!4331303)))

(declare-fun b!7225176 () Bool)

(declare-fun tp!2031157 () Bool)

(declare-fun tp!2031156 () Bool)

(assert (=> b!7225176 (= e!4331303 (and tp!2031157 tp!2031156))))

(declare-fun b!7225175 () Bool)

(declare-fun tp!2031158 () Bool)

(assert (=> b!7225175 (= e!4331303 tp!2031158)))

(declare-fun b!7225174 () Bool)

(declare-fun tp!2031159 () Bool)

(declare-fun tp!2031160 () Bool)

(assert (=> b!7225174 (= e!4331303 (and tp!2031159 tp!2031160))))

(declare-fun b!7225173 () Bool)

(assert (=> b!7225173 (= e!4331303 tp_is_empty!46355)))

(assert (= (and b!7224745 ((_ is ElementMatch!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225173))

(assert (= (and b!7224745 ((_ is Concat!27244) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225174))

(assert (= (and b!7224745 ((_ is Star!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225175))

(assert (= (and b!7224745 ((_ is Union!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225176))

(declare-fun b!7225178 () Bool)

(declare-fun e!4331305 () Bool)

(declare-fun tp!2031161 () Bool)

(assert (=> b!7225178 (= e!4331305 tp!2031161)))

(declare-fun tp!2031162 () Bool)

(declare-fun e!4331304 () Bool)

(declare-fun b!7225177 () Bool)

(assert (=> b!7225177 (= e!4331304 (and (inv!89019 (h!76241 (t!383946 res!2931927))) e!4331305 tp!2031162))))

(assert (=> b!7224650 (= tp!2030930 e!4331304)))

(assert (= b!7225177 b!7225178))

(assert (= (and b!7224650 ((_ is Cons!69793) (t!383946 res!2931927))) b!7225177))

(declare-fun m!7895350 () Bool)

(assert (=> b!7225177 m!7895350))

(declare-fun b!7225179 () Bool)

(declare-fun e!4331306 () Bool)

(declare-fun tp!2031163 () Bool)

(declare-fun tp!2031164 () Bool)

(assert (=> b!7225179 (= e!4331306 (and tp!2031163 tp!2031164))))

(assert (=> b!7224653 (= tp!2030931 e!4331306)))

(assert (= (and b!7224653 ((_ is Cons!69791) (exprs!7851 setElem!53540))) b!7225179))

(declare-fun e!4331307 () Bool)

(assert (=> b!7224738 (= tp!2031023 e!4331307)))

(declare-fun b!7225183 () Bool)

(declare-fun tp!2031166 () Bool)

(declare-fun tp!2031165 () Bool)

(assert (=> b!7225183 (= e!4331307 (and tp!2031166 tp!2031165))))

(declare-fun b!7225182 () Bool)

(declare-fun tp!2031167 () Bool)

(assert (=> b!7225182 (= e!4331307 tp!2031167)))

(declare-fun b!7225181 () Bool)

(declare-fun tp!2031168 () Bool)

(declare-fun tp!2031169 () Bool)

(assert (=> b!7225181 (= e!4331307 (and tp!2031168 tp!2031169))))

(declare-fun b!7225180 () Bool)

(assert (=> b!7225180 (= e!4331307 tp_is_empty!46355)))

(assert (= (and b!7224738 ((_ is ElementMatch!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225180))

(assert (= (and b!7224738 ((_ is Concat!27244) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225181))

(assert (= (and b!7224738 ((_ is Star!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225182))

(assert (= (and b!7224738 ((_ is Union!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225183))

(declare-fun e!4331308 () Bool)

(assert (=> b!7224747 (= tp!2031032 e!4331308)))

(declare-fun b!7225187 () Bool)

(declare-fun tp!2031171 () Bool)

(declare-fun tp!2031170 () Bool)

(assert (=> b!7225187 (= e!4331308 (and tp!2031171 tp!2031170))))

(declare-fun b!7225186 () Bool)

(declare-fun tp!2031172 () Bool)

(assert (=> b!7225186 (= e!4331308 tp!2031172)))

(declare-fun b!7225185 () Bool)

(declare-fun tp!2031173 () Bool)

(declare-fun tp!2031174 () Bool)

(assert (=> b!7225185 (= e!4331308 (and tp!2031173 tp!2031174))))

(declare-fun b!7225184 () Bool)

(assert (=> b!7225184 (= e!4331308 tp_is_empty!46355)))

(assert (= (and b!7224747 ((_ is ElementMatch!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225184))

(assert (= (and b!7224747 ((_ is Concat!27244) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225185))

(assert (= (and b!7224747 ((_ is Star!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225186))

(assert (= (and b!7224747 ((_ is Union!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225187))

(declare-fun e!4331309 () Bool)

(assert (=> b!7224747 (= tp!2031031 e!4331309)))

(declare-fun b!7225191 () Bool)

(declare-fun tp!2031176 () Bool)

(declare-fun tp!2031175 () Bool)

(assert (=> b!7225191 (= e!4331309 (and tp!2031176 tp!2031175))))

(declare-fun b!7225190 () Bool)

(declare-fun tp!2031177 () Bool)

(assert (=> b!7225190 (= e!4331309 tp!2031177)))

(declare-fun b!7225189 () Bool)

(declare-fun tp!2031178 () Bool)

(declare-fun tp!2031179 () Bool)

(assert (=> b!7225189 (= e!4331309 (and tp!2031178 tp!2031179))))

(declare-fun b!7225188 () Bool)

(assert (=> b!7225188 (= e!4331309 tp_is_empty!46355)))

(assert (= (and b!7224747 ((_ is ElementMatch!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225188))

(assert (= (and b!7224747 ((_ is Concat!27244) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225189))

(assert (= (and b!7224747 ((_ is Star!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225190))

(assert (= (and b!7224747 ((_ is Union!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225191))

(declare-fun condSetEmpty!53543 () Bool)

(assert (=> setNonEmpty!53541 (= condSetEmpty!53543 (= setRest!53541 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53543 () Bool)

(assert (=> setNonEmpty!53541 (= tp!2031009 setRes!53543)))

(declare-fun setIsEmpty!53543 () Bool)

(assert (=> setIsEmpty!53543 setRes!53543))

(declare-fun setElem!53543 () Context!14702)

(declare-fun e!4331310 () Bool)

(declare-fun tp!2031180 () Bool)

(declare-fun setNonEmpty!53543 () Bool)

(assert (=> setNonEmpty!53543 (= setRes!53543 (and tp!2031180 (inv!89019 setElem!53543) e!4331310))))

(declare-fun setRest!53543 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53543 (= setRest!53541 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53543 true) setRest!53543))))

(declare-fun b!7225192 () Bool)

(declare-fun tp!2031181 () Bool)

(assert (=> b!7225192 (= e!4331310 tp!2031181)))

(assert (= (and setNonEmpty!53541 condSetEmpty!53543) setIsEmpty!53543))

(assert (= (and setNonEmpty!53541 (not condSetEmpty!53543)) setNonEmpty!53543))

(assert (= setNonEmpty!53543 b!7225192))

(declare-fun m!7895358 () Bool)

(assert (=> setNonEmpty!53543 m!7895358))

(declare-fun e!4331317 () Bool)

(assert (=> b!7224739 (= tp!2031022 e!4331317)))

(declare-fun b!7225207 () Bool)

(declare-fun tp!2031183 () Bool)

(declare-fun tp!2031182 () Bool)

(assert (=> b!7225207 (= e!4331317 (and tp!2031183 tp!2031182))))

(declare-fun b!7225206 () Bool)

(declare-fun tp!2031184 () Bool)

(assert (=> b!7225206 (= e!4331317 tp!2031184)))

(declare-fun b!7225205 () Bool)

(declare-fun tp!2031185 () Bool)

(declare-fun tp!2031186 () Bool)

(assert (=> b!7225205 (= e!4331317 (and tp!2031185 tp!2031186))))

(declare-fun b!7225204 () Bool)

(assert (=> b!7225204 (= e!4331317 tp_is_empty!46355)))

(assert (= (and b!7224739 ((_ is ElementMatch!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225204))

(assert (= (and b!7224739 ((_ is Concat!27244) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225205))

(assert (= (and b!7224739 ((_ is Star!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225206))

(assert (= (and b!7224739 ((_ is Union!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225207))

(declare-fun e!4331318 () Bool)

(assert (=> b!7224739 (= tp!2031021 e!4331318)))

(declare-fun b!7225211 () Bool)

(declare-fun tp!2031188 () Bool)

(declare-fun tp!2031187 () Bool)

(assert (=> b!7225211 (= e!4331318 (and tp!2031188 tp!2031187))))

(declare-fun b!7225210 () Bool)

(declare-fun tp!2031189 () Bool)

(assert (=> b!7225210 (= e!4331318 tp!2031189)))

(declare-fun b!7225209 () Bool)

(declare-fun tp!2031190 () Bool)

(declare-fun tp!2031191 () Bool)

(assert (=> b!7225209 (= e!4331318 (and tp!2031190 tp!2031191))))

(declare-fun b!7225208 () Bool)

(assert (=> b!7225208 (= e!4331318 tp_is_empty!46355)))

(assert (= (and b!7224739 ((_ is ElementMatch!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225208))

(assert (= (and b!7224739 ((_ is Concat!27244) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225209))

(assert (= (and b!7224739 ((_ is Star!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225210))

(assert (= (and b!7224739 ((_ is Union!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225211))

(declare-fun e!4331319 () Bool)

(assert (=> b!7224756 (= tp!2031044 e!4331319)))

(declare-fun b!7225215 () Bool)

(declare-fun tp!2031193 () Bool)

(declare-fun tp!2031192 () Bool)

(assert (=> b!7225215 (= e!4331319 (and tp!2031193 tp!2031192))))

(declare-fun b!7225214 () Bool)

(declare-fun tp!2031194 () Bool)

(assert (=> b!7225214 (= e!4331319 tp!2031194)))

(declare-fun b!7225213 () Bool)

(declare-fun tp!2031195 () Bool)

(declare-fun tp!2031196 () Bool)

(assert (=> b!7225213 (= e!4331319 (and tp!2031195 tp!2031196))))

(declare-fun b!7225212 () Bool)

(assert (=> b!7225212 (= e!4331319 tp_is_empty!46355)))

(assert (= (and b!7224756 ((_ is ElementMatch!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225212))

(assert (= (and b!7224756 ((_ is Concat!27244) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225213))

(assert (= (and b!7224756 ((_ is Star!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225214))

(assert (= (and b!7224756 ((_ is Union!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225215))

(declare-fun e!4331320 () Bool)

(assert (=> b!7224756 (= tp!2031043 e!4331320)))

(declare-fun b!7225219 () Bool)

(declare-fun tp!2031198 () Bool)

(declare-fun tp!2031197 () Bool)

(assert (=> b!7225219 (= e!4331320 (and tp!2031198 tp!2031197))))

(declare-fun b!7225218 () Bool)

(declare-fun tp!2031199 () Bool)

(assert (=> b!7225218 (= e!4331320 tp!2031199)))

(declare-fun b!7225217 () Bool)

(declare-fun tp!2031200 () Bool)

(declare-fun tp!2031201 () Bool)

(assert (=> b!7225217 (= e!4331320 (and tp!2031200 tp!2031201))))

(declare-fun b!7225216 () Bool)

(assert (=> b!7225216 (= e!4331320 tp_is_empty!46355)))

(assert (= (and b!7224756 ((_ is ElementMatch!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225216))

(assert (= (and b!7224756 ((_ is Concat!27244) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225217))

(assert (= (and b!7224756 ((_ is Star!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225218))

(assert (= (and b!7224756 ((_ is Union!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225219))

(declare-fun e!4331321 () Bool)

(assert (=> b!7224715 (= tp!2030990 e!4331321)))

(declare-fun b!7225223 () Bool)

(declare-fun tp!2031203 () Bool)

(declare-fun tp!2031202 () Bool)

(assert (=> b!7225223 (= e!4331321 (and tp!2031203 tp!2031202))))

(declare-fun b!7225222 () Bool)

(declare-fun tp!2031204 () Bool)

(assert (=> b!7225222 (= e!4331321 tp!2031204)))

(declare-fun b!7225221 () Bool)

(declare-fun tp!2031205 () Bool)

(declare-fun tp!2031206 () Bool)

(assert (=> b!7225221 (= e!4331321 (and tp!2031205 tp!2031206))))

(declare-fun b!7225220 () Bool)

(assert (=> b!7225220 (= e!4331321 tp_is_empty!46355)))

(assert (= (and b!7224715 ((_ is ElementMatch!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225220))

(assert (= (and b!7224715 ((_ is Concat!27244) (reg!18728 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225221))

(assert (= (and b!7224715 ((_ is Star!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225222))

(assert (= (and b!7224715 ((_ is Union!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225223))

(declare-fun e!4331322 () Bool)

(assert (=> b!7224676 (= tp!2030946 e!4331322)))

(declare-fun b!7225227 () Bool)

(declare-fun tp!2031208 () Bool)

(declare-fun tp!2031207 () Bool)

(assert (=> b!7225227 (= e!4331322 (and tp!2031208 tp!2031207))))

(declare-fun b!7225226 () Bool)

(declare-fun tp!2031209 () Bool)

(assert (=> b!7225226 (= e!4331322 tp!2031209)))

(declare-fun b!7225225 () Bool)

(declare-fun tp!2031210 () Bool)

(declare-fun tp!2031211 () Bool)

(assert (=> b!7225225 (= e!4331322 (and tp!2031210 tp!2031211))))

(declare-fun b!7225224 () Bool)

(assert (=> b!7225224 (= e!4331322 tp_is_empty!46355)))

(assert (= (and b!7224676 ((_ is ElementMatch!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225224))

(assert (= (and b!7224676 ((_ is Concat!27244) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225225))

(assert (= (and b!7224676 ((_ is Star!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225226))

(assert (= (and b!7224676 ((_ is Union!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225227))

(declare-fun e!4331323 () Bool)

(assert (=> b!7224676 (= tp!2030947 e!4331323)))

(declare-fun b!7225231 () Bool)

(declare-fun tp!2031213 () Bool)

(declare-fun tp!2031212 () Bool)

(assert (=> b!7225231 (= e!4331323 (and tp!2031213 tp!2031212))))

(declare-fun b!7225230 () Bool)

(declare-fun tp!2031214 () Bool)

(assert (=> b!7225230 (= e!4331323 tp!2031214)))

(declare-fun b!7225229 () Bool)

(declare-fun tp!2031215 () Bool)

(declare-fun tp!2031216 () Bool)

(assert (=> b!7225229 (= e!4331323 (and tp!2031215 tp!2031216))))

(declare-fun b!7225228 () Bool)

(assert (=> b!7225228 (= e!4331323 tp_is_empty!46355)))

(assert (= (and b!7224676 ((_ is ElementMatch!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225228))

(assert (= (and b!7224676 ((_ is Concat!27244) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225229))

(assert (= (and b!7224676 ((_ is Star!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225230))

(assert (= (and b!7224676 ((_ is Union!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225231))

(declare-fun e!4331324 () Bool)

(assert (=> b!7224723 (= tp!2031003 e!4331324)))

(declare-fun b!7225235 () Bool)

(declare-fun tp!2031218 () Bool)

(declare-fun tp!2031217 () Bool)

(assert (=> b!7225235 (= e!4331324 (and tp!2031218 tp!2031217))))

(declare-fun b!7225234 () Bool)

(declare-fun tp!2031219 () Bool)

(assert (=> b!7225234 (= e!4331324 tp!2031219)))

(declare-fun b!7225233 () Bool)

(declare-fun tp!2031220 () Bool)

(declare-fun tp!2031221 () Bool)

(assert (=> b!7225233 (= e!4331324 (and tp!2031220 tp!2031221))))

(declare-fun b!7225232 () Bool)

(assert (=> b!7225232 (= e!4331324 tp_is_empty!46355)))

(assert (= (and b!7224723 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225232))

(assert (= (and b!7224723 ((_ is Concat!27244) (regOne!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225233))

(assert (= (and b!7224723 ((_ is Star!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225234))

(assert (= (and b!7224723 ((_ is Union!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225235))

(declare-fun e!4331325 () Bool)

(assert (=> b!7224723 (= tp!2031004 e!4331325)))

(declare-fun b!7225239 () Bool)

(declare-fun tp!2031223 () Bool)

(declare-fun tp!2031222 () Bool)

(assert (=> b!7225239 (= e!4331325 (and tp!2031223 tp!2031222))))

(declare-fun b!7225238 () Bool)

(declare-fun tp!2031224 () Bool)

(assert (=> b!7225238 (= e!4331325 tp!2031224)))

(declare-fun b!7225237 () Bool)

(declare-fun tp!2031225 () Bool)

(declare-fun tp!2031226 () Bool)

(assert (=> b!7225237 (= e!4331325 (and tp!2031225 tp!2031226))))

(declare-fun b!7225236 () Bool)

(assert (=> b!7225236 (= e!4331325 tp_is_empty!46355)))

(assert (= (and b!7224723 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225236))

(assert (= (and b!7224723 ((_ is Concat!27244) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225237))

(assert (= (and b!7224723 ((_ is Star!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225238))

(assert (= (and b!7224723 ((_ is Union!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225239))

(declare-fun e!4331326 () Bool)

(assert (=> b!7224685 (= tp!2030955 e!4331326)))

(declare-fun b!7225243 () Bool)

(declare-fun tp!2031228 () Bool)

(declare-fun tp!2031227 () Bool)

(assert (=> b!7225243 (= e!4331326 (and tp!2031228 tp!2031227))))

(declare-fun b!7225242 () Bool)

(declare-fun tp!2031229 () Bool)

(assert (=> b!7225242 (= e!4331326 tp!2031229)))

(declare-fun b!7225241 () Bool)

(declare-fun tp!2031230 () Bool)

(declare-fun tp!2031231 () Bool)

(assert (=> b!7225241 (= e!4331326 (and tp!2031230 tp!2031231))))

(declare-fun b!7225240 () Bool)

(assert (=> b!7225240 (= e!4331326 tp_is_empty!46355)))

(assert (= (and b!7224685 ((_ is ElementMatch!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225240))

(assert (= (and b!7224685 ((_ is Concat!27244) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225241))

(assert (= (and b!7224685 ((_ is Star!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225242))

(assert (= (and b!7224685 ((_ is Union!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225243))

(declare-fun e!4331327 () Bool)

(assert (=> b!7224693 (= tp!2030968 e!4331327)))

(declare-fun b!7225247 () Bool)

(declare-fun tp!2031233 () Bool)

(declare-fun tp!2031232 () Bool)

(assert (=> b!7225247 (= e!4331327 (and tp!2031233 tp!2031232))))

(declare-fun b!7225246 () Bool)

(declare-fun tp!2031234 () Bool)

(assert (=> b!7225246 (= e!4331327 tp!2031234)))

(declare-fun b!7225245 () Bool)

(declare-fun tp!2031235 () Bool)

(declare-fun tp!2031236 () Bool)

(assert (=> b!7225245 (= e!4331327 (and tp!2031235 tp!2031236))))

(declare-fun b!7225244 () Bool)

(assert (=> b!7225244 (= e!4331327 tp_is_empty!46355)))

(assert (= (and b!7224693 ((_ is ElementMatch!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225244))

(assert (= (and b!7224693 ((_ is Concat!27244) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225245))

(assert (= (and b!7224693 ((_ is Star!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225246))

(assert (= (and b!7224693 ((_ is Union!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225247))

(declare-fun e!4331328 () Bool)

(assert (=> b!7224693 (= tp!2030969 e!4331328)))

(declare-fun b!7225251 () Bool)

(declare-fun tp!2031238 () Bool)

(declare-fun tp!2031237 () Bool)

(assert (=> b!7225251 (= e!4331328 (and tp!2031238 tp!2031237))))

(declare-fun b!7225250 () Bool)

(declare-fun tp!2031239 () Bool)

(assert (=> b!7225250 (= e!4331328 tp!2031239)))

(declare-fun b!7225249 () Bool)

(declare-fun tp!2031240 () Bool)

(declare-fun tp!2031241 () Bool)

(assert (=> b!7225249 (= e!4331328 (and tp!2031240 tp!2031241))))

(declare-fun b!7225248 () Bool)

(assert (=> b!7225248 (= e!4331328 tp_is_empty!46355)))

(assert (= (and b!7224693 ((_ is ElementMatch!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225248))

(assert (= (and b!7224693 ((_ is Concat!27244) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225249))

(assert (= (and b!7224693 ((_ is Star!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225250))

(assert (= (and b!7224693 ((_ is Union!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225251))

(declare-fun e!4331329 () Bool)

(assert (=> b!7224702 (= tp!2030977 e!4331329)))

(declare-fun b!7225255 () Bool)

(declare-fun tp!2031243 () Bool)

(declare-fun tp!2031242 () Bool)

(assert (=> b!7225255 (= e!4331329 (and tp!2031243 tp!2031242))))

(declare-fun b!7225254 () Bool)

(declare-fun tp!2031244 () Bool)

(assert (=> b!7225254 (= e!4331329 tp!2031244)))

(declare-fun b!7225253 () Bool)

(declare-fun tp!2031245 () Bool)

(declare-fun tp!2031246 () Bool)

(assert (=> b!7225253 (= e!4331329 (and tp!2031245 tp!2031246))))

(declare-fun b!7225252 () Bool)

(assert (=> b!7225252 (= e!4331329 tp_is_empty!46355)))

(assert (= (and b!7224702 ((_ is ElementMatch!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225252))

(assert (= (and b!7224702 ((_ is Concat!27244) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225253))

(assert (= (and b!7224702 ((_ is Star!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225254))

(assert (= (and b!7224702 ((_ is Union!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225255))

(declare-fun e!4331330 () Bool)

(assert (=> b!7224678 (= tp!2030944 e!4331330)))

(declare-fun b!7225259 () Bool)

(declare-fun tp!2031248 () Bool)

(declare-fun tp!2031247 () Bool)

(assert (=> b!7225259 (= e!4331330 (and tp!2031248 tp!2031247))))

(declare-fun b!7225258 () Bool)

(declare-fun tp!2031249 () Bool)

(assert (=> b!7225258 (= e!4331330 tp!2031249)))

(declare-fun b!7225257 () Bool)

(declare-fun tp!2031250 () Bool)

(declare-fun tp!2031251 () Bool)

(assert (=> b!7225257 (= e!4331330 (and tp!2031250 tp!2031251))))

(declare-fun b!7225256 () Bool)

(assert (=> b!7225256 (= e!4331330 tp_is_empty!46355)))

(assert (= (and b!7224678 ((_ is ElementMatch!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225256))

(assert (= (and b!7224678 ((_ is Concat!27244) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225257))

(assert (= (and b!7224678 ((_ is Star!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225258))

(assert (= (and b!7224678 ((_ is Union!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225259))

(declare-fun e!4331331 () Bool)

(assert (=> b!7224678 (= tp!2030943 e!4331331)))

(declare-fun b!7225263 () Bool)

(declare-fun tp!2031253 () Bool)

(declare-fun tp!2031252 () Bool)

(assert (=> b!7225263 (= e!4331331 (and tp!2031253 tp!2031252))))

(declare-fun b!7225262 () Bool)

(declare-fun tp!2031254 () Bool)

(assert (=> b!7225262 (= e!4331331 tp!2031254)))

(declare-fun b!7225261 () Bool)

(declare-fun tp!2031255 () Bool)

(declare-fun tp!2031256 () Bool)

(assert (=> b!7225261 (= e!4331331 (and tp!2031255 tp!2031256))))

(declare-fun b!7225260 () Bool)

(assert (=> b!7225260 (= e!4331331 tp_is_empty!46355)))

(assert (= (and b!7224678 ((_ is ElementMatch!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225260))

(assert (= (and b!7224678 ((_ is Concat!27244) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225261))

(assert (= (and b!7224678 ((_ is Star!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225262))

(assert (= (and b!7224678 ((_ is Union!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225263))

(declare-fun e!4331332 () Bool)

(assert (=> b!7224725 (= tp!2031001 e!4331332)))

(declare-fun b!7225267 () Bool)

(declare-fun tp!2031258 () Bool)

(declare-fun tp!2031257 () Bool)

(assert (=> b!7225267 (= e!4331332 (and tp!2031258 tp!2031257))))

(declare-fun b!7225266 () Bool)

(declare-fun tp!2031259 () Bool)

(assert (=> b!7225266 (= e!4331332 tp!2031259)))

(declare-fun b!7225265 () Bool)

(declare-fun tp!2031260 () Bool)

(declare-fun tp!2031261 () Bool)

(assert (=> b!7225265 (= e!4331332 (and tp!2031260 tp!2031261))))

(declare-fun b!7225264 () Bool)

(assert (=> b!7225264 (= e!4331332 tp_is_empty!46355)))

(assert (= (and b!7224725 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225264))

(assert (= (and b!7224725 ((_ is Concat!27244) (regOne!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225265))

(assert (= (and b!7224725 ((_ is Star!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225266))

(assert (= (and b!7224725 ((_ is Union!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225267))

(declare-fun e!4331333 () Bool)

(assert (=> b!7224725 (= tp!2031000 e!4331333)))

(declare-fun b!7225271 () Bool)

(declare-fun tp!2031263 () Bool)

(declare-fun tp!2031262 () Bool)

(assert (=> b!7225271 (= e!4331333 (and tp!2031263 tp!2031262))))

(declare-fun b!7225270 () Bool)

(declare-fun tp!2031264 () Bool)

(assert (=> b!7225270 (= e!4331333 tp!2031264)))

(declare-fun b!7225269 () Bool)

(declare-fun tp!2031265 () Bool)

(declare-fun tp!2031266 () Bool)

(assert (=> b!7225269 (= e!4331333 (and tp!2031265 tp!2031266))))

(declare-fun b!7225268 () Bool)

(assert (=> b!7225268 (= e!4331333 tp_is_empty!46355)))

(assert (= (and b!7224725 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225268))

(assert (= (and b!7224725 ((_ is Concat!27244) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225269))

(assert (= (and b!7224725 ((_ is Star!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225270))

(assert (= (and b!7224725 ((_ is Union!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225271))

(declare-fun e!4331334 () Bool)

(assert (=> b!7224669 (= tp!2030935 e!4331334)))

(declare-fun b!7225275 () Bool)

(declare-fun tp!2031268 () Bool)

(declare-fun tp!2031267 () Bool)

(assert (=> b!7225275 (= e!4331334 (and tp!2031268 tp!2031267))))

(declare-fun b!7225274 () Bool)

(declare-fun tp!2031269 () Bool)

(assert (=> b!7225274 (= e!4331334 tp!2031269)))

(declare-fun b!7225273 () Bool)

(declare-fun tp!2031270 () Bool)

(declare-fun tp!2031271 () Bool)

(assert (=> b!7225273 (= e!4331334 (and tp!2031270 tp!2031271))))

(declare-fun b!7225272 () Bool)

(assert (=> b!7225272 (= e!4331334 tp_is_empty!46355)))

(assert (= (and b!7224669 ((_ is ElementMatch!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225272))

(assert (= (and b!7224669 ((_ is Concat!27244) (reg!18728 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225273))

(assert (= (and b!7224669 ((_ is Star!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225274))

(assert (= (and b!7224669 ((_ is Union!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225275))

(declare-fun e!4331335 () Bool)

(assert (=> b!7224695 (= tp!2030966 e!4331335)))

(declare-fun b!7225279 () Bool)

(declare-fun tp!2031273 () Bool)

(declare-fun tp!2031272 () Bool)

(assert (=> b!7225279 (= e!4331335 (and tp!2031273 tp!2031272))))

(declare-fun b!7225278 () Bool)

(declare-fun tp!2031274 () Bool)

(assert (=> b!7225278 (= e!4331335 tp!2031274)))

(declare-fun b!7225277 () Bool)

(declare-fun tp!2031275 () Bool)

(declare-fun tp!2031276 () Bool)

(assert (=> b!7225277 (= e!4331335 (and tp!2031275 tp!2031276))))

(declare-fun b!7225276 () Bool)

(assert (=> b!7225276 (= e!4331335 tp_is_empty!46355)))

(assert (= (and b!7224695 ((_ is ElementMatch!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225276))

(assert (= (and b!7224695 ((_ is Concat!27244) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225277))

(assert (= (and b!7224695 ((_ is Star!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225278))

(assert (= (and b!7224695 ((_ is Union!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225279))

(declare-fun e!4331336 () Bool)

(assert (=> b!7224695 (= tp!2030965 e!4331336)))

(declare-fun b!7225283 () Bool)

(declare-fun tp!2031278 () Bool)

(declare-fun tp!2031277 () Bool)

(assert (=> b!7225283 (= e!4331336 (and tp!2031278 tp!2031277))))

(declare-fun b!7225282 () Bool)

(declare-fun tp!2031279 () Bool)

(assert (=> b!7225282 (= e!4331336 tp!2031279)))

(declare-fun b!7225281 () Bool)

(declare-fun tp!2031280 () Bool)

(declare-fun tp!2031281 () Bool)

(assert (=> b!7225281 (= e!4331336 (and tp!2031280 tp!2031281))))

(declare-fun b!7225280 () Bool)

(assert (=> b!7225280 (= e!4331336 tp_is_empty!46355)))

(assert (= (and b!7224695 ((_ is ElementMatch!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225280))

(assert (= (and b!7224695 ((_ is Concat!27244) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225281))

(assert (= (and b!7224695 ((_ is Star!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225282))

(assert (= (and b!7224695 ((_ is Union!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225283))

(declare-fun b!7225284 () Bool)

(declare-fun e!4331337 () Bool)

(declare-fun tp!2031282 () Bool)

(declare-fun tp!2031283 () Bool)

(assert (=> b!7225284 (= e!4331337 (and tp!2031282 tp!2031283))))

(assert (=> b!7224734 (= tp!2031019 e!4331337)))

(assert (= (and b!7224734 ((_ is Cons!69791) (exprs!7851 setElem!53542))) b!7225284))

(declare-fun b!7225285 () Bool)

(declare-fun e!4331338 () Bool)

(declare-fun tp!2031284 () Bool)

(declare-fun tp!2031285 () Bool)

(assert (=> b!7225285 (= e!4331338 (and tp!2031284 tp!2031285))))

(assert (=> b!7224711 (= tp!2030984 e!4331338)))

(assert (= (and b!7224711 ((_ is Cons!69791) (exprs!7851 (h!76241 (t!383946 res!2931777))))) b!7225285))

(declare-fun e!4331339 () Bool)

(assert (=> b!7224741 (= tp!2031029 e!4331339)))

(declare-fun b!7225289 () Bool)

(declare-fun tp!2031287 () Bool)

(declare-fun tp!2031286 () Bool)

(assert (=> b!7225289 (= e!4331339 (and tp!2031287 tp!2031286))))

(declare-fun b!7225288 () Bool)

(declare-fun tp!2031288 () Bool)

(assert (=> b!7225288 (= e!4331339 tp!2031288)))

(declare-fun b!7225287 () Bool)

(declare-fun tp!2031289 () Bool)

(declare-fun tp!2031290 () Bool)

(assert (=> b!7225287 (= e!4331339 (and tp!2031289 tp!2031290))))

(declare-fun b!7225286 () Bool)

(assert (=> b!7225286 (= e!4331339 tp_is_empty!46355)))

(assert (= (and b!7224741 ((_ is ElementMatch!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225286))

(assert (= (and b!7224741 ((_ is Concat!27244) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225287))

(assert (= (and b!7224741 ((_ is Star!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225288))

(assert (= (and b!7224741 ((_ is Union!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225289))

(declare-fun e!4331340 () Bool)

(assert (=> b!7224741 (= tp!2031030 e!4331340)))

(declare-fun b!7225293 () Bool)

(declare-fun tp!2031292 () Bool)

(declare-fun tp!2031291 () Bool)

(assert (=> b!7225293 (= e!4331340 (and tp!2031292 tp!2031291))))

(declare-fun b!7225292 () Bool)

(declare-fun tp!2031293 () Bool)

(assert (=> b!7225292 (= e!4331340 tp!2031293)))

(declare-fun b!7225291 () Bool)

(declare-fun tp!2031294 () Bool)

(declare-fun tp!2031295 () Bool)

(assert (=> b!7225291 (= e!4331340 (and tp!2031294 tp!2031295))))

(declare-fun b!7225290 () Bool)

(assert (=> b!7225290 (= e!4331340 tp_is_empty!46355)))

(assert (= (and b!7224741 ((_ is ElementMatch!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225290))

(assert (= (and b!7224741 ((_ is Concat!27244) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225291))

(assert (= (and b!7224741 ((_ is Star!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225292))

(assert (= (and b!7224741 ((_ is Union!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225293))

(declare-fun e!4331341 () Bool)

(assert (=> b!7224758 (= tp!2031051 e!4331341)))

(declare-fun b!7225297 () Bool)

(declare-fun tp!2031297 () Bool)

(declare-fun tp!2031296 () Bool)

(assert (=> b!7225297 (= e!4331341 (and tp!2031297 tp!2031296))))

(declare-fun b!7225296 () Bool)

(declare-fun tp!2031298 () Bool)

(assert (=> b!7225296 (= e!4331341 tp!2031298)))

(declare-fun b!7225295 () Bool)

(declare-fun tp!2031299 () Bool)

(declare-fun tp!2031300 () Bool)

(assert (=> b!7225295 (= e!4331341 (and tp!2031299 tp!2031300))))

(declare-fun b!7225294 () Bool)

(assert (=> b!7225294 (= e!4331341 tp_is_empty!46355)))

(assert (= (and b!7224758 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225294))

(assert (= (and b!7224758 ((_ is Concat!27244) (regOne!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225295))

(assert (= (and b!7224758 ((_ is Star!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225296))

(assert (= (and b!7224758 ((_ is Union!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225297))

(declare-fun e!4331342 () Bool)

(assert (=> b!7224758 (= tp!2031052 e!4331342)))

(declare-fun b!7225301 () Bool)

(declare-fun tp!2031302 () Bool)

(declare-fun tp!2031301 () Bool)

(assert (=> b!7225301 (= e!4331342 (and tp!2031302 tp!2031301))))

(declare-fun b!7225300 () Bool)

(declare-fun tp!2031303 () Bool)

(assert (=> b!7225300 (= e!4331342 tp!2031303)))

(declare-fun b!7225299 () Bool)

(declare-fun tp!2031304 () Bool)

(declare-fun tp!2031305 () Bool)

(assert (=> b!7225299 (= e!4331342 (and tp!2031304 tp!2031305))))

(declare-fun b!7225298 () Bool)

(assert (=> b!7225298 (= e!4331342 tp_is_empty!46355)))

(assert (= (and b!7224758 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225298))

(assert (= (and b!7224758 ((_ is Concat!27244) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225299))

(assert (= (and b!7224758 ((_ is Star!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225300))

(assert (= (and b!7224758 ((_ is Union!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225301))

(declare-fun e!4331343 () Bool)

(assert (=> b!7224743 (= tp!2031027 e!4331343)))

(declare-fun b!7225305 () Bool)

(declare-fun tp!2031307 () Bool)

(declare-fun tp!2031306 () Bool)

(assert (=> b!7225305 (= e!4331343 (and tp!2031307 tp!2031306))))

(declare-fun b!7225304 () Bool)

(declare-fun tp!2031308 () Bool)

(assert (=> b!7225304 (= e!4331343 tp!2031308)))

(declare-fun b!7225303 () Bool)

(declare-fun tp!2031309 () Bool)

(declare-fun tp!2031310 () Bool)

(assert (=> b!7225303 (= e!4331343 (and tp!2031309 tp!2031310))))

(declare-fun b!7225302 () Bool)

(assert (=> b!7225302 (= e!4331343 tp_is_empty!46355)))

(assert (= (and b!7224743 ((_ is ElementMatch!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225302))

(assert (= (and b!7224743 ((_ is Concat!27244) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225303))

(assert (= (and b!7224743 ((_ is Star!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225304))

(assert (= (and b!7224743 ((_ is Union!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225305))

(declare-fun e!4331344 () Bool)

(assert (=> b!7224743 (= tp!2031026 e!4331344)))

(declare-fun b!7225309 () Bool)

(declare-fun tp!2031312 () Bool)

(declare-fun tp!2031311 () Bool)

(assert (=> b!7225309 (= e!4331344 (and tp!2031312 tp!2031311))))

(declare-fun b!7225308 () Bool)

(declare-fun tp!2031313 () Bool)

(assert (=> b!7225308 (= e!4331344 tp!2031313)))

(declare-fun b!7225307 () Bool)

(declare-fun tp!2031314 () Bool)

(declare-fun tp!2031315 () Bool)

(assert (=> b!7225307 (= e!4331344 (and tp!2031314 tp!2031315))))

(declare-fun b!7225306 () Bool)

(assert (=> b!7225306 (= e!4331344 tp_is_empty!46355)))

(assert (= (and b!7224743 ((_ is ElementMatch!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225306))

(assert (= (and b!7224743 ((_ is Concat!27244) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225307))

(assert (= (and b!7224743 ((_ is Star!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225308))

(assert (= (and b!7224743 ((_ is Union!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225309))

(declare-fun e!4331345 () Bool)

(assert (=> b!7224726 (= tp!2031005 e!4331345)))

(declare-fun b!7225313 () Bool)

(declare-fun tp!2031317 () Bool)

(declare-fun tp!2031316 () Bool)

(assert (=> b!7225313 (= e!4331345 (and tp!2031317 tp!2031316))))

(declare-fun b!7225312 () Bool)

(declare-fun tp!2031318 () Bool)

(assert (=> b!7225312 (= e!4331345 tp!2031318)))

(declare-fun b!7225311 () Bool)

(declare-fun tp!2031319 () Bool)

(declare-fun tp!2031320 () Bool)

(assert (=> b!7225311 (= e!4331345 (and tp!2031319 tp!2031320))))

(declare-fun b!7225310 () Bool)

(assert (=> b!7225310 (= e!4331345 tp_is_empty!46355)))

(assert (= (and b!7224726 ((_ is ElementMatch!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071)))))) b!7225310))

(assert (= (and b!7224726 ((_ is Concat!27244) (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071)))))) b!7225311))

(assert (= (and b!7224726 ((_ is Star!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071)))))) b!7225312))

(assert (= (and b!7224726 ((_ is Union!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071)))))) b!7225313))

(declare-fun b!7225314 () Bool)

(declare-fun e!4331346 () Bool)

(declare-fun tp!2031321 () Bool)

(declare-fun tp!2031322 () Bool)

(assert (=> b!7225314 (= e!4331346 (and tp!2031321 tp!2031322))))

(assert (=> b!7224726 (= tp!2031006 e!4331346)))

(assert (= (and b!7224726 ((_ is Cons!69791) (t!383944 (t!383944 (t!383944 (exprs!7851 empty!3071)))))) b!7225314))

(declare-fun b!7225315 () Bool)

(declare-fun e!4331351 () Bool)

(declare-fun tp!2031323 () Bool)

(assert (=> b!7225315 (= e!4331351 (and tp_is_empty!46355 tp!2031323))))

(assert (=> b!7224735 (= tp!2031020 e!4331351)))

(assert (= (and b!7224735 ((_ is Cons!69792) (t!383945 (t!383945 (t!383945 (t!383945 s!7961)))))) b!7225315))

(declare-fun e!4331354 () Bool)

(assert (=> b!7224759 (= tp!2031050 e!4331354)))

(declare-fun b!7225330 () Bool)

(declare-fun tp!2031325 () Bool)

(declare-fun tp!2031324 () Bool)

(assert (=> b!7225330 (= e!4331354 (and tp!2031325 tp!2031324))))

(declare-fun b!7225329 () Bool)

(declare-fun tp!2031326 () Bool)

(assert (=> b!7225329 (= e!4331354 tp!2031326)))

(declare-fun b!7225328 () Bool)

(declare-fun tp!2031327 () Bool)

(declare-fun tp!2031328 () Bool)

(assert (=> b!7225328 (= e!4331354 (and tp!2031327 tp!2031328))))

(declare-fun b!7225327 () Bool)

(assert (=> b!7225327 (= e!4331354 tp_is_empty!46355)))

(assert (= (and b!7224759 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225327))

(assert (= (and b!7224759 ((_ is Concat!27244) (reg!18728 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225328))

(assert (= (and b!7224759 ((_ is Star!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225329))

(assert (= (and b!7224759 ((_ is Union!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 c!10544)))))) b!7225330))

(declare-fun e!4331355 () Bool)

(assert (=> b!7224718 (= tp!2030996 e!4331355)))

(declare-fun b!7225334 () Bool)

(declare-fun tp!2031330 () Bool)

(declare-fun tp!2031329 () Bool)

(assert (=> b!7225334 (= e!4331355 (and tp!2031330 tp!2031329))))

(declare-fun b!7225333 () Bool)

(declare-fun tp!2031331 () Bool)

(assert (=> b!7225333 (= e!4331355 tp!2031331)))

(declare-fun b!7225332 () Bool)

(declare-fun tp!2031332 () Bool)

(declare-fun tp!2031333 () Bool)

(assert (=> b!7225332 (= e!4331355 (and tp!2031332 tp!2031333))))

(declare-fun b!7225331 () Bool)

(assert (=> b!7225331 (= e!4331355 tp_is_empty!46355)))

(assert (= (and b!7224718 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225331))

(assert (= (and b!7224718 ((_ is Concat!27244) (regOne!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225332))

(assert (= (and b!7224718 ((_ is Star!18399) (regOne!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225333))

(assert (= (and b!7224718 ((_ is Union!18399) (regOne!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225334))

(declare-fun e!4331356 () Bool)

(assert (=> b!7224718 (= tp!2030997 e!4331356)))

(declare-fun b!7225338 () Bool)

(declare-fun tp!2031335 () Bool)

(declare-fun tp!2031334 () Bool)

(assert (=> b!7225338 (= e!4331356 (and tp!2031335 tp!2031334))))

(declare-fun b!7225337 () Bool)

(declare-fun tp!2031336 () Bool)

(assert (=> b!7225337 (= e!4331356 tp!2031336)))

(declare-fun b!7225336 () Bool)

(declare-fun tp!2031337 () Bool)

(declare-fun tp!2031338 () Bool)

(assert (=> b!7225336 (= e!4331356 (and tp!2031337 tp!2031338))))

(declare-fun b!7225335 () Bool)

(assert (=> b!7225335 (= e!4331356 tp_is_empty!46355)))

(assert (= (and b!7224718 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225335))

(assert (= (and b!7224718 ((_ is Concat!27244) (regTwo!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225336))

(assert (= (and b!7224718 ((_ is Star!18399) (regTwo!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225337))

(assert (= (and b!7224718 ((_ is Union!18399) (regTwo!37310 (h!76239 (exprs!7851 setElem!53528))))) b!7225338))

(declare-fun e!4331357 () Bool)

(assert (=> b!7224750 (= tp!2031041 e!4331357)))

(declare-fun b!7225342 () Bool)

(declare-fun tp!2031340 () Bool)

(declare-fun tp!2031339 () Bool)

(assert (=> b!7225342 (= e!4331357 (and tp!2031340 tp!2031339))))

(declare-fun b!7225341 () Bool)

(declare-fun tp!2031341 () Bool)

(assert (=> b!7225341 (= e!4331357 tp!2031341)))

(declare-fun b!7225340 () Bool)

(declare-fun tp!2031342 () Bool)

(declare-fun tp!2031343 () Bool)

(assert (=> b!7225340 (= e!4331357 (and tp!2031342 tp!2031343))))

(declare-fun b!7225339 () Bool)

(assert (=> b!7225339 (= e!4331357 tp_is_empty!46355)))

(assert (= (and b!7224750 ((_ is ElementMatch!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225339))

(assert (= (and b!7224750 ((_ is Concat!27244) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225340))

(assert (= (and b!7224750 ((_ is Star!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225341))

(assert (= (and b!7224750 ((_ is Union!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225342))

(declare-fun e!4331358 () Bool)

(assert (=> b!7224750 (= tp!2031042 e!4331358)))

(declare-fun b!7225346 () Bool)

(declare-fun tp!2031345 () Bool)

(declare-fun tp!2031344 () Bool)

(assert (=> b!7225346 (= e!4331358 (and tp!2031345 tp!2031344))))

(declare-fun b!7225345 () Bool)

(declare-fun tp!2031346 () Bool)

(assert (=> b!7225345 (= e!4331358 tp!2031346)))

(declare-fun b!7225344 () Bool)

(declare-fun tp!2031347 () Bool)

(declare-fun tp!2031348 () Bool)

(assert (=> b!7225344 (= e!4331358 (and tp!2031347 tp!2031348))))

(declare-fun b!7225343 () Bool)

(assert (=> b!7225343 (= e!4331358 tp_is_empty!46355)))

(assert (= (and b!7224750 ((_ is ElementMatch!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225343))

(assert (= (and b!7224750 ((_ is Concat!27244) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225344))

(assert (= (and b!7224750 ((_ is Star!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225345))

(assert (= (and b!7224750 ((_ is Union!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225346))

(declare-fun e!4331359 () Bool)

(assert (=> b!7224720 (= tp!2030994 e!4331359)))

(declare-fun b!7225350 () Bool)

(declare-fun tp!2031350 () Bool)

(declare-fun tp!2031349 () Bool)

(assert (=> b!7225350 (= e!4331359 (and tp!2031350 tp!2031349))))

(declare-fun b!7225349 () Bool)

(declare-fun tp!2031351 () Bool)

(assert (=> b!7225349 (= e!4331359 tp!2031351)))

(declare-fun b!7225348 () Bool)

(declare-fun tp!2031352 () Bool)

(declare-fun tp!2031353 () Bool)

(assert (=> b!7225348 (= e!4331359 (and tp!2031352 tp!2031353))))

(declare-fun b!7225347 () Bool)

(assert (=> b!7225347 (= e!4331359 tp_is_empty!46355)))

(assert (= (and b!7224720 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225347))

(assert (= (and b!7224720 ((_ is Concat!27244) (regOne!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225348))

(assert (= (and b!7224720 ((_ is Star!18399) (regOne!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225349))

(assert (= (and b!7224720 ((_ is Union!18399) (regOne!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225350))

(declare-fun e!4331360 () Bool)

(assert (=> b!7224720 (= tp!2030993 e!4331360)))

(declare-fun b!7225354 () Bool)

(declare-fun tp!2031355 () Bool)

(declare-fun tp!2031354 () Bool)

(assert (=> b!7225354 (= e!4331360 (and tp!2031355 tp!2031354))))

(declare-fun b!7225353 () Bool)

(declare-fun tp!2031356 () Bool)

(assert (=> b!7225353 (= e!4331360 tp!2031356)))

(declare-fun b!7225352 () Bool)

(declare-fun tp!2031357 () Bool)

(declare-fun tp!2031358 () Bool)

(assert (=> b!7225352 (= e!4331360 (and tp!2031357 tp!2031358))))

(declare-fun b!7225351 () Bool)

(assert (=> b!7225351 (= e!4331360 tp_is_empty!46355)))

(assert (= (and b!7224720 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225351))

(assert (= (and b!7224720 ((_ is Concat!27244) (regTwo!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225352))

(assert (= (and b!7224720 ((_ is Star!18399) (regTwo!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225353))

(assert (= (and b!7224720 ((_ is Union!18399) (regTwo!37311 (h!76239 (exprs!7851 setElem!53528))))) b!7225354))

(declare-fun e!4331361 () Bool)

(assert (=> b!7224752 (= tp!2031039 e!4331361)))

(declare-fun b!7225358 () Bool)

(declare-fun tp!2031360 () Bool)

(declare-fun tp!2031359 () Bool)

(assert (=> b!7225358 (= e!4331361 (and tp!2031360 tp!2031359))))

(declare-fun b!7225357 () Bool)

(declare-fun tp!2031361 () Bool)

(assert (=> b!7225357 (= e!4331361 tp!2031361)))

(declare-fun b!7225356 () Bool)

(declare-fun tp!2031362 () Bool)

(declare-fun tp!2031363 () Bool)

(assert (=> b!7225356 (= e!4331361 (and tp!2031362 tp!2031363))))

(declare-fun b!7225355 () Bool)

(assert (=> b!7225355 (= e!4331361 tp_is_empty!46355)))

(assert (= (and b!7224752 ((_ is ElementMatch!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225355))

(assert (= (and b!7224752 ((_ is Concat!27244) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225356))

(assert (= (and b!7224752 ((_ is Star!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225357))

(assert (= (and b!7224752 ((_ is Union!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225358))

(declare-fun e!4331362 () Bool)

(assert (=> b!7224752 (= tp!2031038 e!4331362)))

(declare-fun b!7225362 () Bool)

(declare-fun tp!2031365 () Bool)

(declare-fun tp!2031364 () Bool)

(assert (=> b!7225362 (= e!4331362 (and tp!2031365 tp!2031364))))

(declare-fun b!7225361 () Bool)

(declare-fun tp!2031366 () Bool)

(assert (=> b!7225361 (= e!4331362 tp!2031366)))

(declare-fun b!7225360 () Bool)

(declare-fun tp!2031367 () Bool)

(declare-fun tp!2031368 () Bool)

(assert (=> b!7225360 (= e!4331362 (and tp!2031367 tp!2031368))))

(declare-fun b!7225359 () Bool)

(assert (=> b!7225359 (= e!4331362 tp_is_empty!46355)))

(assert (= (and b!7224752 ((_ is ElementMatch!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225359))

(assert (= (and b!7224752 ((_ is Concat!27244) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225360))

(assert (= (and b!7224752 ((_ is Star!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225361))

(assert (= (and b!7224752 ((_ is Union!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225362))

(declare-fun e!4331363 () Bool)

(assert (=> b!7224730 (= tp!2031014 e!4331363)))

(declare-fun b!7225366 () Bool)

(declare-fun tp!2031370 () Bool)

(declare-fun tp!2031369 () Bool)

(assert (=> b!7225366 (= e!4331363 (and tp!2031370 tp!2031369))))

(declare-fun b!7225365 () Bool)

(declare-fun tp!2031371 () Bool)

(assert (=> b!7225365 (= e!4331363 tp!2031371)))

(declare-fun b!7225364 () Bool)

(declare-fun tp!2031372 () Bool)

(declare-fun tp!2031373 () Bool)

(assert (=> b!7225364 (= e!4331363 (and tp!2031372 tp!2031373))))

(declare-fun b!7225363 () Bool)

(assert (=> b!7225363 (= e!4331363 tp_is_empty!46355)))

(assert (= (and b!7224730 ((_ is ElementMatch!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225363))

(assert (= (and b!7224730 ((_ is Concat!27244) (regOne!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225364))

(assert (= (and b!7224730 ((_ is Star!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225365))

(assert (= (and b!7224730 ((_ is Union!18399) (regOne!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225366))

(declare-fun e!4331364 () Bool)

(assert (=> b!7224730 (= tp!2031015 e!4331364)))

(declare-fun b!7225370 () Bool)

(declare-fun tp!2031375 () Bool)

(declare-fun tp!2031374 () Bool)

(assert (=> b!7225370 (= e!4331364 (and tp!2031375 tp!2031374))))

(declare-fun b!7225369 () Bool)

(declare-fun tp!2031376 () Bool)

(assert (=> b!7225369 (= e!4331364 tp!2031376)))

(declare-fun b!7225368 () Bool)

(declare-fun tp!2031377 () Bool)

(declare-fun tp!2031378 () Bool)

(assert (=> b!7225368 (= e!4331364 (and tp!2031377 tp!2031378))))

(declare-fun b!7225367 () Bool)

(assert (=> b!7225367 (= e!4331364 tp_is_empty!46355)))

(assert (= (and b!7224730 ((_ is ElementMatch!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225367))

(assert (= (and b!7224730 ((_ is Concat!27244) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225368))

(assert (= (and b!7224730 ((_ is Star!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225369))

(assert (= (and b!7224730 ((_ is Union!18399) (regTwo!37310 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225370))

(declare-fun e!4331365 () Bool)

(assert (=> b!7224732 (= tp!2031012 e!4331365)))

(declare-fun b!7225374 () Bool)

(declare-fun tp!2031380 () Bool)

(declare-fun tp!2031379 () Bool)

(assert (=> b!7225374 (= e!4331365 (and tp!2031380 tp!2031379))))

(declare-fun b!7225373 () Bool)

(declare-fun tp!2031381 () Bool)

(assert (=> b!7225373 (= e!4331365 tp!2031381)))

(declare-fun b!7225372 () Bool)

(declare-fun tp!2031382 () Bool)

(declare-fun tp!2031383 () Bool)

(assert (=> b!7225372 (= e!4331365 (and tp!2031382 tp!2031383))))

(declare-fun b!7225371 () Bool)

(assert (=> b!7225371 (= e!4331365 tp_is_empty!46355)))

(assert (= (and b!7224732 ((_ is ElementMatch!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225371))

(assert (= (and b!7224732 ((_ is Concat!27244) (regOne!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225372))

(assert (= (and b!7224732 ((_ is Star!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225373))

(assert (= (and b!7224732 ((_ is Union!18399) (regOne!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225374))

(declare-fun e!4331366 () Bool)

(assert (=> b!7224732 (= tp!2031011 e!4331366)))

(declare-fun b!7225378 () Bool)

(declare-fun tp!2031385 () Bool)

(declare-fun tp!2031384 () Bool)

(assert (=> b!7225378 (= e!4331366 (and tp!2031385 tp!2031384))))

(declare-fun b!7225377 () Bool)

(declare-fun tp!2031386 () Bool)

(assert (=> b!7225377 (= e!4331366 tp!2031386)))

(declare-fun b!7225376 () Bool)

(declare-fun tp!2031387 () Bool)

(declare-fun tp!2031388 () Bool)

(assert (=> b!7225376 (= e!4331366 (and tp!2031387 tp!2031388))))

(declare-fun b!7225375 () Bool)

(assert (=> b!7225375 (= e!4331366 tp_is_empty!46355)))

(assert (= (and b!7224732 ((_ is ElementMatch!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225375))

(assert (= (and b!7224732 ((_ is Concat!27244) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225376))

(assert (= (and b!7224732 ((_ is Star!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225377))

(assert (= (and b!7224732 ((_ is Union!18399) (regTwo!37311 (h!76239 (t!383944 (exprs!7851 setElem!53522)))))) b!7225378))

(declare-fun e!4331367 () Bool)

(assert (=> b!7224681 (= tp!2030950 e!4331367)))

(declare-fun b!7225382 () Bool)

(declare-fun tp!2031390 () Bool)

(declare-fun tp!2031389 () Bool)

(assert (=> b!7225382 (= e!4331367 (and tp!2031390 tp!2031389))))

(declare-fun b!7225381 () Bool)

(declare-fun tp!2031391 () Bool)

(assert (=> b!7225381 (= e!4331367 tp!2031391)))

(declare-fun b!7225380 () Bool)

(declare-fun tp!2031392 () Bool)

(declare-fun tp!2031393 () Bool)

(assert (=> b!7225380 (= e!4331367 (and tp!2031392 tp!2031393))))

(declare-fun b!7225379 () Bool)

(assert (=> b!7225379 (= e!4331367 tp_is_empty!46355)))

(assert (= (and b!7224681 ((_ is ElementMatch!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225379))

(assert (= (and b!7224681 ((_ is Concat!27244) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225380))

(assert (= (and b!7224681 ((_ is Star!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225381))

(assert (= (and b!7224681 ((_ is Union!18399) (reg!18728 (regOne!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225382))

(declare-fun e!4331375 () Bool)

(assert (=> b!7224698 (= tp!2030972 e!4331375)))

(declare-fun b!7225395 () Bool)

(declare-fun tp!2031395 () Bool)

(declare-fun tp!2031394 () Bool)

(assert (=> b!7225395 (= e!4331375 (and tp!2031395 tp!2031394))))

(declare-fun b!7225394 () Bool)

(declare-fun tp!2031396 () Bool)

(assert (=> b!7225394 (= e!4331375 tp!2031396)))

(declare-fun b!7225393 () Bool)

(declare-fun tp!2031397 () Bool)

(declare-fun tp!2031398 () Bool)

(assert (=> b!7225393 (= e!4331375 (and tp!2031397 tp!2031398))))

(declare-fun b!7225392 () Bool)

(assert (=> b!7225392 (= e!4331375 tp_is_empty!46355)))

(assert (= (and b!7224698 ((_ is ElementMatch!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225392))

(assert (= (and b!7224698 ((_ is Concat!27244) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225393))

(assert (= (and b!7224698 ((_ is Star!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225394))

(assert (= (and b!7224698 ((_ is Union!18399) (reg!18728 (regOne!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225395))

(declare-fun e!4331376 () Bool)

(assert (=> b!7224672 (= tp!2030941 e!4331376)))

(declare-fun b!7225399 () Bool)

(declare-fun tp!2031400 () Bool)

(declare-fun tp!2031399 () Bool)

(assert (=> b!7225399 (= e!4331376 (and tp!2031400 tp!2031399))))

(declare-fun b!7225398 () Bool)

(declare-fun tp!2031401 () Bool)

(assert (=> b!7225398 (= e!4331376 tp!2031401)))

(declare-fun b!7225397 () Bool)

(declare-fun tp!2031402 () Bool)

(declare-fun tp!2031403 () Bool)

(assert (=> b!7225397 (= e!4331376 (and tp!2031402 tp!2031403))))

(declare-fun b!7225396 () Bool)

(assert (=> b!7225396 (= e!4331376 tp_is_empty!46355)))

(assert (= (and b!7224672 ((_ is ElementMatch!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225396))

(assert (= (and b!7224672 ((_ is Concat!27244) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225397))

(assert (= (and b!7224672 ((_ is Star!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225398))

(assert (= (and b!7224672 ((_ is Union!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225399))

(declare-fun e!4331377 () Bool)

(assert (=> b!7224672 (= tp!2030942 e!4331377)))

(declare-fun b!7225403 () Bool)

(declare-fun tp!2031405 () Bool)

(declare-fun tp!2031404 () Bool)

(assert (=> b!7225403 (= e!4331377 (and tp!2031405 tp!2031404))))

(declare-fun b!7225402 () Bool)

(declare-fun tp!2031406 () Bool)

(assert (=> b!7225402 (= e!4331377 tp!2031406)))

(declare-fun b!7225401 () Bool)

(declare-fun tp!2031407 () Bool)

(declare-fun tp!2031408 () Bool)

(assert (=> b!7225401 (= e!4331377 (and tp!2031407 tp!2031408))))

(declare-fun b!7225400 () Bool)

(assert (=> b!7225400 (= e!4331377 tp_is_empty!46355)))

(assert (= (and b!7224672 ((_ is ElementMatch!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225400))

(assert (= (and b!7224672 ((_ is Concat!27244) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225401))

(assert (= (and b!7224672 ((_ is Star!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225402))

(assert (= (and b!7224672 ((_ is Union!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225403))

(declare-fun e!4331378 () Bool)

(assert (=> b!7224674 (= tp!2030939 e!4331378)))

(declare-fun b!7225407 () Bool)

(declare-fun tp!2031410 () Bool)

(declare-fun tp!2031409 () Bool)

(assert (=> b!7225407 (= e!4331378 (and tp!2031410 tp!2031409))))

(declare-fun b!7225406 () Bool)

(declare-fun tp!2031411 () Bool)

(assert (=> b!7225406 (= e!4331378 tp!2031411)))

(declare-fun b!7225405 () Bool)

(declare-fun tp!2031412 () Bool)

(declare-fun tp!2031413 () Bool)

(assert (=> b!7225405 (= e!4331378 (and tp!2031412 tp!2031413))))

(declare-fun b!7225404 () Bool)

(assert (=> b!7225404 (= e!4331378 tp_is_empty!46355)))

(assert (= (and b!7224674 ((_ is ElementMatch!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225404))

(assert (= (and b!7224674 ((_ is Concat!27244) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225405))

(assert (= (and b!7224674 ((_ is Star!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225406))

(assert (= (and b!7224674 ((_ is Union!18399) (regOne!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225407))

(declare-fun e!4331379 () Bool)

(assert (=> b!7224674 (= tp!2030938 e!4331379)))

(declare-fun b!7225411 () Bool)

(declare-fun tp!2031415 () Bool)

(declare-fun tp!2031414 () Bool)

(assert (=> b!7225411 (= e!4331379 (and tp!2031415 tp!2031414))))

(declare-fun b!7225410 () Bool)

(declare-fun tp!2031416 () Bool)

(assert (=> b!7225410 (= e!4331379 tp!2031416)))

(declare-fun b!7225409 () Bool)

(declare-fun tp!2031417 () Bool)

(declare-fun tp!2031418 () Bool)

(assert (=> b!7225409 (= e!4331379 (and tp!2031417 tp!2031418))))

(declare-fun b!7225408 () Bool)

(assert (=> b!7225408 (= e!4331379 tp_is_empty!46355)))

(assert (= (and b!7224674 ((_ is ElementMatch!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225408))

(assert (= (and b!7224674 ((_ is Concat!27244) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225409))

(assert (= (and b!7224674 ((_ is Star!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225410))

(assert (= (and b!7224674 ((_ is Union!18399) (regTwo!37311 (regOne!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225411))

(declare-fun e!4331380 () Bool)

(assert (=> b!7224721 (= tp!2030998 e!4331380)))

(declare-fun b!7225415 () Bool)

(declare-fun tp!2031420 () Bool)

(declare-fun tp!2031419 () Bool)

(assert (=> b!7225415 (= e!4331380 (and tp!2031420 tp!2031419))))

(declare-fun b!7225414 () Bool)

(declare-fun tp!2031421 () Bool)

(assert (=> b!7225414 (= e!4331380 tp!2031421)))

(declare-fun b!7225413 () Bool)

(declare-fun tp!2031422 () Bool)

(declare-fun tp!2031423 () Bool)

(assert (=> b!7225413 (= e!4331380 (and tp!2031422 tp!2031423))))

(declare-fun b!7225412 () Bool)

(assert (=> b!7225412 (= e!4331380 tp_is_empty!46355)))

(assert (= (and b!7224721 ((_ is ElementMatch!18399) (h!76239 (t!383944 (exprs!7851 setElem!53528))))) b!7225412))

(assert (= (and b!7224721 ((_ is Concat!27244) (h!76239 (t!383944 (exprs!7851 setElem!53528))))) b!7225413))

(assert (= (and b!7224721 ((_ is Star!18399) (h!76239 (t!383944 (exprs!7851 setElem!53528))))) b!7225414))

(assert (= (and b!7224721 ((_ is Union!18399) (h!76239 (t!383944 (exprs!7851 setElem!53528))))) b!7225415))

(declare-fun b!7225416 () Bool)

(declare-fun e!4331381 () Bool)

(declare-fun tp!2031424 () Bool)

(declare-fun tp!2031425 () Bool)

(assert (=> b!7225416 (= e!4331381 (and tp!2031424 tp!2031425))))

(assert (=> b!7224721 (= tp!2030999 e!4331381)))

(assert (= (and b!7224721 ((_ is Cons!69791) (t!383944 (t!383944 (exprs!7851 setElem!53528))))) b!7225416))

(declare-fun e!4331382 () Bool)

(assert (=> b!7224689 (= tp!2030963 e!4331382)))

(declare-fun b!7225420 () Bool)

(declare-fun tp!2031427 () Bool)

(declare-fun tp!2031426 () Bool)

(assert (=> b!7225420 (= e!4331382 (and tp!2031427 tp!2031426))))

(declare-fun b!7225419 () Bool)

(declare-fun tp!2031428 () Bool)

(assert (=> b!7225419 (= e!4331382 tp!2031428)))

(declare-fun b!7225418 () Bool)

(declare-fun tp!2031429 () Bool)

(declare-fun tp!2031430 () Bool)

(assert (=> b!7225418 (= e!4331382 (and tp!2031429 tp!2031430))))

(declare-fun b!7225417 () Bool)

(assert (=> b!7225417 (= e!4331382 tp_is_empty!46355)))

(assert (= (and b!7224689 ((_ is ElementMatch!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225417))

(assert (= (and b!7224689 ((_ is Concat!27244) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225418))

(assert (= (and b!7224689 ((_ is Star!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225419))

(assert (= (and b!7224689 ((_ is Union!18399) (regOne!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225420))

(declare-fun e!4331390 () Bool)

(assert (=> b!7224689 (= tp!2030964 e!4331390)))

(declare-fun b!7225429 () Bool)

(declare-fun tp!2031432 () Bool)

(declare-fun tp!2031431 () Bool)

(assert (=> b!7225429 (= e!4331390 (and tp!2031432 tp!2031431))))

(declare-fun b!7225428 () Bool)

(declare-fun tp!2031433 () Bool)

(assert (=> b!7225428 (= e!4331390 tp!2031433)))

(declare-fun b!7225426 () Bool)

(declare-fun tp!2031434 () Bool)

(declare-fun tp!2031435 () Bool)

(assert (=> b!7225426 (= e!4331390 (and tp!2031434 tp!2031435))))

(declare-fun b!7225424 () Bool)

(assert (=> b!7225424 (= e!4331390 tp_is_empty!46355)))

(assert (= (and b!7224689 ((_ is ElementMatch!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225424))

(assert (= (and b!7224689 ((_ is Concat!27244) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225426))

(assert (= (and b!7224689 ((_ is Star!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225428))

(assert (= (and b!7224689 ((_ is Union!18399) (regTwo!37310 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225429))

(declare-fun condSetEmpty!53544 () Bool)

(assert (=> setNonEmpty!53540 (= condSetEmpty!53544 (= setRest!53540 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53544 () Bool)

(assert (=> setNonEmpty!53540 (= tp!2030932 setRes!53544)))

(declare-fun setIsEmpty!53544 () Bool)

(assert (=> setIsEmpty!53544 setRes!53544))

(declare-fun tp!2031436 () Bool)

(declare-fun setNonEmpty!53544 () Bool)

(declare-fun e!4331391 () Bool)

(declare-fun setElem!53544 () Context!14702)

(assert (=> setNonEmpty!53544 (= setRes!53544 (and tp!2031436 (inv!89019 setElem!53544) e!4331391))))

(declare-fun setRest!53544 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53544 (= setRest!53540 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53544 true) setRest!53544))))

(declare-fun b!7225434 () Bool)

(declare-fun tp!2031437 () Bool)

(assert (=> b!7225434 (= e!4331391 tp!2031437)))

(assert (= (and setNonEmpty!53540 condSetEmpty!53544) setIsEmpty!53544))

(assert (= (and setNonEmpty!53540 (not condSetEmpty!53544)) setNonEmpty!53544))

(assert (= setNonEmpty!53544 b!7225434))

(declare-fun m!7895390 () Bool)

(assert (=> setNonEmpty!53544 m!7895390))

(declare-fun e!4331392 () Bool)

(assert (=> b!7224691 (= tp!2030961 e!4331392)))

(declare-fun b!7225438 () Bool)

(declare-fun tp!2031439 () Bool)

(declare-fun tp!2031438 () Bool)

(assert (=> b!7225438 (= e!4331392 (and tp!2031439 tp!2031438))))

(declare-fun b!7225437 () Bool)

(declare-fun tp!2031440 () Bool)

(assert (=> b!7225437 (= e!4331392 tp!2031440)))

(declare-fun b!7225436 () Bool)

(declare-fun tp!2031441 () Bool)

(declare-fun tp!2031442 () Bool)

(assert (=> b!7225436 (= e!4331392 (and tp!2031441 tp!2031442))))

(declare-fun b!7225435 () Bool)

(assert (=> b!7225435 (= e!4331392 tp_is_empty!46355)))

(assert (= (and b!7224691 ((_ is ElementMatch!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225435))

(assert (= (and b!7224691 ((_ is Concat!27244) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225436))

(assert (= (and b!7224691 ((_ is Star!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225437))

(assert (= (and b!7224691 ((_ is Union!18399) (regOne!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225438))

(declare-fun e!4331393 () Bool)

(assert (=> b!7224691 (= tp!2030960 e!4331393)))

(declare-fun b!7225442 () Bool)

(declare-fun tp!2031444 () Bool)

(declare-fun tp!2031443 () Bool)

(assert (=> b!7225442 (= e!4331393 (and tp!2031444 tp!2031443))))

(declare-fun b!7225441 () Bool)

(declare-fun tp!2031445 () Bool)

(assert (=> b!7225441 (= e!4331393 tp!2031445)))

(declare-fun b!7225440 () Bool)

(declare-fun tp!2031446 () Bool)

(declare-fun tp!2031447 () Bool)

(assert (=> b!7225440 (= e!4331393 (and tp!2031446 tp!2031447))))

(declare-fun b!7225439 () Bool)

(assert (=> b!7225439 (= e!4331393 tp_is_empty!46355)))

(assert (= (and b!7224691 ((_ is ElementMatch!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225439))

(assert (= (and b!7224691 ((_ is Concat!27244) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225440))

(assert (= (and b!7224691 ((_ is Star!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225441))

(assert (= (and b!7224691 ((_ is Union!18399) (regTwo!37311 (regOne!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225442))

(declare-fun e!4331394 () Bool)

(assert (=> b!7224733 (= tp!2031016 e!4331394)))

(declare-fun b!7225446 () Bool)

(declare-fun tp!2031449 () Bool)

(declare-fun tp!2031448 () Bool)

(assert (=> b!7225446 (= e!4331394 (and tp!2031449 tp!2031448))))

(declare-fun b!7225445 () Bool)

(declare-fun tp!2031450 () Bool)

(assert (=> b!7225445 (= e!4331394 tp!2031450)))

(declare-fun b!7225444 () Bool)

(declare-fun tp!2031451 () Bool)

(declare-fun tp!2031452 () Bool)

(assert (=> b!7225444 (= e!4331394 (and tp!2031451 tp!2031452))))

(declare-fun b!7225443 () Bool)

(assert (=> b!7225443 (= e!4331394 tp_is_empty!46355)))

(assert (= (and b!7224733 ((_ is ElementMatch!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522)))))) b!7225443))

(assert (= (and b!7224733 ((_ is Concat!27244) (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522)))))) b!7225444))

(assert (= (and b!7224733 ((_ is Star!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522)))))) b!7225445))

(assert (= (and b!7224733 ((_ is Union!18399) (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522)))))) b!7225446))

(declare-fun b!7225447 () Bool)

(declare-fun e!4331395 () Bool)

(declare-fun tp!2031453 () Bool)

(declare-fun tp!2031454 () Bool)

(assert (=> b!7225447 (= e!4331395 (and tp!2031453 tp!2031454))))

(assert (=> b!7224733 (= tp!2031017 e!4331395)))

(assert (= (and b!7224733 ((_ is Cons!69791) (t!383944 (t!383944 (t!383944 (exprs!7851 setElem!53522)))))) b!7225447))

(declare-fun e!4331396 () Bool)

(assert (=> b!7224746 (= tp!2031033 e!4331396)))

(declare-fun b!7225451 () Bool)

(declare-fun tp!2031456 () Bool)

(declare-fun tp!2031455 () Bool)

(assert (=> b!7225451 (= e!4331396 (and tp!2031456 tp!2031455))))

(declare-fun b!7225450 () Bool)

(declare-fun tp!2031457 () Bool)

(assert (=> b!7225450 (= e!4331396 tp!2031457)))

(declare-fun b!7225449 () Bool)

(declare-fun tp!2031458 () Bool)

(declare-fun tp!2031459 () Bool)

(assert (=> b!7225449 (= e!4331396 (and tp!2031458 tp!2031459))))

(declare-fun b!7225448 () Bool)

(assert (=> b!7225448 (= e!4331396 tp_is_empty!46355)))

(assert (= (and b!7224746 ((_ is ElementMatch!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225448))

(assert (= (and b!7224746 ((_ is Concat!27244) (reg!18728 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225449))

(assert (= (and b!7224746 ((_ is Star!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225450))

(assert (= (and b!7224746 ((_ is Union!18399) (reg!18728 (reg!18728 (h!76239 (exprs!7851 c!10544)))))) b!7225451))

(declare-fun e!4331397 () Bool)

(assert (=> b!7224737 (= tp!2031024 e!4331397)))

(declare-fun b!7225455 () Bool)

(declare-fun tp!2031461 () Bool)

(declare-fun tp!2031460 () Bool)

(assert (=> b!7225455 (= e!4331397 (and tp!2031461 tp!2031460))))

(declare-fun b!7225454 () Bool)

(declare-fun tp!2031462 () Bool)

(assert (=> b!7225454 (= e!4331397 tp!2031462)))

(declare-fun b!7225453 () Bool)

(declare-fun tp!2031463 () Bool)

(declare-fun tp!2031464 () Bool)

(assert (=> b!7225453 (= e!4331397 (and tp!2031463 tp!2031464))))

(declare-fun b!7225452 () Bool)

(assert (=> b!7225452 (= e!4331397 tp_is_empty!46355)))

(assert (= (and b!7224737 ((_ is ElementMatch!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225452))

(assert (= (and b!7224737 ((_ is Concat!27244) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225453))

(assert (= (and b!7224737 ((_ is Star!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225454))

(assert (= (and b!7224737 ((_ is Union!18399) (regOne!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225455))

(declare-fun e!4331398 () Bool)

(assert (=> b!7224737 (= tp!2031025 e!4331398)))

(declare-fun b!7225459 () Bool)

(declare-fun tp!2031466 () Bool)

(declare-fun tp!2031465 () Bool)

(assert (=> b!7225459 (= e!4331398 (and tp!2031466 tp!2031465))))

(declare-fun b!7225458 () Bool)

(declare-fun tp!2031467 () Bool)

(assert (=> b!7225458 (= e!4331398 tp!2031467)))

(declare-fun b!7225457 () Bool)

(declare-fun tp!2031468 () Bool)

(declare-fun tp!2031469 () Bool)

(assert (=> b!7225457 (= e!4331398 (and tp!2031468 tp!2031469))))

(declare-fun b!7225456 () Bool)

(assert (=> b!7225456 (= e!4331398 tp_is_empty!46355)))

(assert (= (and b!7224737 ((_ is ElementMatch!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225456))

(assert (= (and b!7224737 ((_ is Concat!27244) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225457))

(assert (= (and b!7224737 ((_ is Star!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225458))

(assert (= (and b!7224737 ((_ is Union!18399) (regTwo!37310 (regOne!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225459))

(declare-fun e!4331399 () Bool)

(assert (=> b!7224754 (= tp!2031046 e!4331399)))

(declare-fun b!7225463 () Bool)

(declare-fun tp!2031471 () Bool)

(declare-fun tp!2031470 () Bool)

(assert (=> b!7225463 (= e!4331399 (and tp!2031471 tp!2031470))))

(declare-fun b!7225462 () Bool)

(declare-fun tp!2031472 () Bool)

(assert (=> b!7225462 (= e!4331399 tp!2031472)))

(declare-fun b!7225461 () Bool)

(declare-fun tp!2031473 () Bool)

(declare-fun tp!2031474 () Bool)

(assert (=> b!7225461 (= e!4331399 (and tp!2031473 tp!2031474))))

(declare-fun b!7225460 () Bool)

(assert (=> b!7225460 (= e!4331399 tp_is_empty!46355)))

(assert (= (and b!7224754 ((_ is ElementMatch!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225460))

(assert (= (and b!7224754 ((_ is Concat!27244) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225461))

(assert (= (and b!7224754 ((_ is Star!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225462))

(assert (= (and b!7224754 ((_ is Union!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225463))

(declare-fun e!4331400 () Bool)

(assert (=> b!7224754 (= tp!2031047 e!4331400)))

(declare-fun b!7225467 () Bool)

(declare-fun tp!2031476 () Bool)

(declare-fun tp!2031475 () Bool)

(assert (=> b!7225467 (= e!4331400 (and tp!2031476 tp!2031475))))

(declare-fun b!7225466 () Bool)

(declare-fun tp!2031477 () Bool)

(assert (=> b!7225466 (= e!4331400 tp!2031477)))

(declare-fun b!7225465 () Bool)

(declare-fun tp!2031478 () Bool)

(declare-fun tp!2031479 () Bool)

(assert (=> b!7225465 (= e!4331400 (and tp!2031478 tp!2031479))))

(declare-fun b!7225464 () Bool)

(assert (=> b!7225464 (= e!4331400 tp_is_empty!46355)))

(assert (= (and b!7224754 ((_ is ElementMatch!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225464))

(assert (= (and b!7224754 ((_ is Concat!27244) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225465))

(assert (= (and b!7224754 ((_ is Star!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225466))

(assert (= (and b!7224754 ((_ is Union!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225467))

(declare-fun b!7225468 () Bool)

(declare-fun e!4331401 () Bool)

(declare-fun tp!2031480 () Bool)

(declare-fun tp!2031481 () Bool)

(assert (=> b!7225468 (= e!4331401 (and tp!2031480 tp!2031481))))

(assert (=> b!7224651 (= tp!2030929 e!4331401)))

(assert (= (and b!7224651 ((_ is Cons!69791) (exprs!7851 (h!76241 res!2931927)))) b!7225468))

(declare-fun e!4331402 () Bool)

(assert (=> b!7224714 (= tp!2030991 e!4331402)))

(declare-fun b!7225472 () Bool)

(declare-fun tp!2031483 () Bool)

(declare-fun tp!2031482 () Bool)

(assert (=> b!7225472 (= e!4331402 (and tp!2031483 tp!2031482))))

(declare-fun b!7225471 () Bool)

(declare-fun tp!2031484 () Bool)

(assert (=> b!7225471 (= e!4331402 tp!2031484)))

(declare-fun b!7225470 () Bool)

(declare-fun tp!2031485 () Bool)

(declare-fun tp!2031486 () Bool)

(assert (=> b!7225470 (= e!4331402 (and tp!2031485 tp!2031486))))

(declare-fun b!7225469 () Bool)

(assert (=> b!7225469 (= e!4331402 tp_is_empty!46355)))

(assert (= (and b!7224714 ((_ is ElementMatch!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225469))

(assert (= (and b!7224714 ((_ is Concat!27244) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225470))

(assert (= (and b!7224714 ((_ is Star!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225471))

(assert (= (and b!7224714 ((_ is Union!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225472))

(declare-fun e!4331403 () Bool)

(assert (=> b!7224714 (= tp!2030992 e!4331403)))

(declare-fun b!7225476 () Bool)

(declare-fun tp!2031488 () Bool)

(declare-fun tp!2031487 () Bool)

(assert (=> b!7225476 (= e!4331403 (and tp!2031488 tp!2031487))))

(declare-fun b!7225475 () Bool)

(declare-fun tp!2031489 () Bool)

(assert (=> b!7225475 (= e!4331403 tp!2031489)))

(declare-fun b!7225474 () Bool)

(declare-fun tp!2031490 () Bool)

(declare-fun tp!2031491 () Bool)

(assert (=> b!7225474 (= e!4331403 (and tp!2031490 tp!2031491))))

(declare-fun b!7225473 () Bool)

(assert (=> b!7225473 (= e!4331403 tp_is_empty!46355)))

(assert (= (and b!7224714 ((_ is ElementMatch!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225473))

(assert (= (and b!7224714 ((_ is Concat!27244) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225474))

(assert (= (and b!7224714 ((_ is Star!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225475))

(assert (= (and b!7224714 ((_ is Union!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225476))

(declare-fun e!4331404 () Bool)

(assert (=> b!7224755 (= tp!2031045 e!4331404)))

(declare-fun b!7225480 () Bool)

(declare-fun tp!2031493 () Bool)

(declare-fun tp!2031492 () Bool)

(assert (=> b!7225480 (= e!4331404 (and tp!2031493 tp!2031492))))

(declare-fun b!7225479 () Bool)

(declare-fun tp!2031494 () Bool)

(assert (=> b!7225479 (= e!4331404 tp!2031494)))

(declare-fun b!7225478 () Bool)

(declare-fun tp!2031495 () Bool)

(declare-fun tp!2031496 () Bool)

(assert (=> b!7225478 (= e!4331404 (and tp!2031495 tp!2031496))))

(declare-fun b!7225477 () Bool)

(assert (=> b!7225477 (= e!4331404 tp_is_empty!46355)))

(assert (= (and b!7224755 ((_ is ElementMatch!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225477))

(assert (= (and b!7224755 ((_ is Concat!27244) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225478))

(assert (= (and b!7224755 ((_ is Star!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225479))

(assert (= (and b!7224755 ((_ is Union!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 c!10544)))))) b!7225480))

(declare-fun e!4331405 () Bool)

(assert (=> b!7224684 (= tp!2030956 e!4331405)))

(declare-fun b!7225484 () Bool)

(declare-fun tp!2031498 () Bool)

(declare-fun tp!2031497 () Bool)

(assert (=> b!7225484 (= e!4331405 (and tp!2031498 tp!2031497))))

(declare-fun b!7225483 () Bool)

(declare-fun tp!2031499 () Bool)

(assert (=> b!7225483 (= e!4331405 tp!2031499)))

(declare-fun b!7225482 () Bool)

(declare-fun tp!2031500 () Bool)

(declare-fun tp!2031501 () Bool)

(assert (=> b!7225482 (= e!4331405 (and tp!2031500 tp!2031501))))

(declare-fun b!7225481 () Bool)

(assert (=> b!7225481 (= e!4331405 tp_is_empty!46355)))

(assert (= (and b!7224684 ((_ is ElementMatch!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225481))

(assert (= (and b!7224684 ((_ is Concat!27244) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225482))

(assert (= (and b!7224684 ((_ is Star!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225483))

(assert (= (and b!7224684 ((_ is Union!18399) (regOne!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225484))

(declare-fun e!4331406 () Bool)

(assert (=> b!7224684 (= tp!2030957 e!4331406)))

(declare-fun b!7225488 () Bool)

(declare-fun tp!2031503 () Bool)

(declare-fun tp!2031502 () Bool)

(assert (=> b!7225488 (= e!4331406 (and tp!2031503 tp!2031502))))

(declare-fun b!7225487 () Bool)

(declare-fun tp!2031504 () Bool)

(assert (=> b!7225487 (= e!4331406 tp!2031504)))

(declare-fun b!7225486 () Bool)

(declare-fun tp!2031505 () Bool)

(declare-fun tp!2031506 () Bool)

(assert (=> b!7225486 (= e!4331406 (and tp!2031505 tp!2031506))))

(declare-fun b!7225485 () Bool)

(assert (=> b!7225485 (= e!4331406 tp_is_empty!46355)))

(assert (= (and b!7224684 ((_ is ElementMatch!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225485))

(assert (= (and b!7224684 ((_ is Concat!27244) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225486))

(assert (= (and b!7224684 ((_ is Star!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225487))

(assert (= (and b!7224684 ((_ is Union!18399) (regTwo!37310 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225488))

(declare-fun b!7225489 () Bool)

(declare-fun e!4331407 () Bool)

(declare-fun tp!2031507 () Bool)

(declare-fun tp!2031508 () Bool)

(assert (=> b!7225489 (= e!4331407 (and tp!2031507 tp!2031508))))

(assert (=> b!7224728 (= tp!2031010 e!4331407)))

(assert (= (and b!7224728 ((_ is Cons!69791) (exprs!7851 setElem!53541))) b!7225489))

(declare-fun e!4331408 () Bool)

(assert (=> b!7224701 (= tp!2030978 e!4331408)))

(declare-fun b!7225493 () Bool)

(declare-fun tp!2031510 () Bool)

(declare-fun tp!2031509 () Bool)

(assert (=> b!7225493 (= e!4331408 (and tp!2031510 tp!2031509))))

(declare-fun b!7225492 () Bool)

(declare-fun tp!2031511 () Bool)

(assert (=> b!7225492 (= e!4331408 tp!2031511)))

(declare-fun b!7225491 () Bool)

(declare-fun tp!2031512 () Bool)

(declare-fun tp!2031513 () Bool)

(assert (=> b!7225491 (= e!4331408 (and tp!2031512 tp!2031513))))

(declare-fun b!7225490 () Bool)

(assert (=> b!7225490 (= e!4331408 tp_is_empty!46355)))

(assert (= (and b!7224701 ((_ is ElementMatch!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225490))

(assert (= (and b!7224701 ((_ is Concat!27244) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225491))

(assert (= (and b!7224701 ((_ is Star!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225492))

(assert (= (and b!7224701 ((_ is Union!18399) (regOne!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225493))

(declare-fun e!4331409 () Bool)

(assert (=> b!7224701 (= tp!2030979 e!4331409)))

(declare-fun b!7225497 () Bool)

(declare-fun tp!2031515 () Bool)

(declare-fun tp!2031514 () Bool)

(assert (=> b!7225497 (= e!4331409 (and tp!2031515 tp!2031514))))

(declare-fun b!7225496 () Bool)

(declare-fun tp!2031516 () Bool)

(assert (=> b!7225496 (= e!4331409 tp!2031516)))

(declare-fun b!7225495 () Bool)

(declare-fun tp!2031517 () Bool)

(declare-fun tp!2031518 () Bool)

(assert (=> b!7225495 (= e!4331409 (and tp!2031517 tp!2031518))))

(declare-fun b!7225494 () Bool)

(assert (=> b!7225494 (= e!4331409 tp_is_empty!46355)))

(assert (= (and b!7224701 ((_ is ElementMatch!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225494))

(assert (= (and b!7224701 ((_ is Concat!27244) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225495))

(assert (= (and b!7224701 ((_ is Star!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225496))

(assert (= (and b!7224701 ((_ is Union!18399) (regTwo!37310 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225497))

(declare-fun e!4331412 () Bool)

(assert (=> b!7224716 (= tp!2030989 e!4331412)))

(declare-fun b!7225503 () Bool)

(declare-fun tp!2031520 () Bool)

(declare-fun tp!2031519 () Bool)

(assert (=> b!7225503 (= e!4331412 (and tp!2031520 tp!2031519))))

(declare-fun b!7225502 () Bool)

(declare-fun tp!2031521 () Bool)

(assert (=> b!7225502 (= e!4331412 tp!2031521)))

(declare-fun b!7225501 () Bool)

(declare-fun tp!2031522 () Bool)

(declare-fun tp!2031523 () Bool)

(assert (=> b!7225501 (= e!4331412 (and tp!2031522 tp!2031523))))

(declare-fun b!7225500 () Bool)

(assert (=> b!7225500 (= e!4331412 tp_is_empty!46355)))

(assert (= (and b!7224716 ((_ is ElementMatch!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225500))

(assert (= (and b!7224716 ((_ is Concat!27244) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225501))

(assert (= (and b!7224716 ((_ is Star!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225502))

(assert (= (and b!7224716 ((_ is Union!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225503))

(declare-fun e!4331413 () Bool)

(assert (=> b!7224716 (= tp!2030988 e!4331413)))

(declare-fun b!7225507 () Bool)

(declare-fun tp!2031525 () Bool)

(declare-fun tp!2031524 () Bool)

(assert (=> b!7225507 (= e!4331413 (and tp!2031525 tp!2031524))))

(declare-fun b!7225506 () Bool)

(declare-fun tp!2031526 () Bool)

(assert (=> b!7225506 (= e!4331413 tp!2031526)))

(declare-fun b!7225505 () Bool)

(declare-fun tp!2031527 () Bool)

(declare-fun tp!2031528 () Bool)

(assert (=> b!7225505 (= e!4331413 (and tp!2031527 tp!2031528))))

(declare-fun b!7225504 () Bool)

(assert (=> b!7225504 (= e!4331413 tp_is_empty!46355)))

(assert (= (and b!7224716 ((_ is ElementMatch!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225504))

(assert (= (and b!7224716 ((_ is Concat!27244) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225505))

(assert (= (and b!7224716 ((_ is Star!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225506))

(assert (= (and b!7224716 ((_ is Union!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 setElem!53522)))))) b!7225507))

(declare-fun e!4331414 () Bool)

(assert (=> b!7224748 (= tp!2031036 e!4331414)))

(declare-fun b!7225511 () Bool)

(declare-fun tp!2031530 () Bool)

(declare-fun tp!2031529 () Bool)

(assert (=> b!7225511 (= e!4331414 (and tp!2031530 tp!2031529))))

(declare-fun b!7225510 () Bool)

(declare-fun tp!2031531 () Bool)

(assert (=> b!7225510 (= e!4331414 tp!2031531)))

(declare-fun b!7225509 () Bool)

(declare-fun tp!2031532 () Bool)

(declare-fun tp!2031533 () Bool)

(assert (=> b!7225509 (= e!4331414 (and tp!2031532 tp!2031533))))

(declare-fun b!7225508 () Bool)

(assert (=> b!7225508 (= e!4331414 tp_is_empty!46355)))

(assert (= (and b!7224748 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 setElem!53536)))) b!7225508))

(assert (= (and b!7224748 ((_ is Concat!27244) (h!76239 (exprs!7851 setElem!53536)))) b!7225509))

(assert (= (and b!7224748 ((_ is Star!18399) (h!76239 (exprs!7851 setElem!53536)))) b!7225510))

(assert (= (and b!7224748 ((_ is Union!18399) (h!76239 (exprs!7851 setElem!53536)))) b!7225511))

(declare-fun b!7225512 () Bool)

(declare-fun e!4331415 () Bool)

(declare-fun tp!2031534 () Bool)

(declare-fun tp!2031535 () Bool)

(assert (=> b!7225512 (= e!4331415 (and tp!2031534 tp!2031535))))

(assert (=> b!7224748 (= tp!2031037 e!4331415)))

(assert (= (and b!7224748 ((_ is Cons!69791) (t!383944 (exprs!7851 setElem!53536)))) b!7225512))

(declare-fun e!4331416 () Bool)

(assert (=> b!7224668 (= tp!2030936 e!4331416)))

(declare-fun b!7225516 () Bool)

(declare-fun tp!2031537 () Bool)

(declare-fun tp!2031536 () Bool)

(assert (=> b!7225516 (= e!4331416 (and tp!2031537 tp!2031536))))

(declare-fun b!7225515 () Bool)

(declare-fun tp!2031538 () Bool)

(assert (=> b!7225515 (= e!4331416 tp!2031538)))

(declare-fun b!7225514 () Bool)

(declare-fun tp!2031539 () Bool)

(declare-fun tp!2031540 () Bool)

(assert (=> b!7225514 (= e!4331416 (and tp!2031539 tp!2031540))))

(declare-fun b!7225513 () Bool)

(assert (=> b!7225513 (= e!4331416 tp_is_empty!46355)))

(assert (= (and b!7224668 ((_ is ElementMatch!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225513))

(assert (= (and b!7224668 ((_ is Concat!27244) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225514))

(assert (= (and b!7224668 ((_ is Star!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225515))

(assert (= (and b!7224668 ((_ is Union!18399) (regOne!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225516))

(declare-fun e!4331417 () Bool)

(assert (=> b!7224668 (= tp!2030937 e!4331417)))

(declare-fun b!7225520 () Bool)

(declare-fun tp!2031542 () Bool)

(declare-fun tp!2031541 () Bool)

(assert (=> b!7225520 (= e!4331417 (and tp!2031542 tp!2031541))))

(declare-fun b!7225519 () Bool)

(declare-fun tp!2031543 () Bool)

(assert (=> b!7225519 (= e!4331417 tp!2031543)))

(declare-fun b!7225518 () Bool)

(declare-fun tp!2031544 () Bool)

(declare-fun tp!2031545 () Bool)

(assert (=> b!7225518 (= e!4331417 (and tp!2031544 tp!2031545))))

(declare-fun b!7225517 () Bool)

(assert (=> b!7225517 (= e!4331417 tp_is_empty!46355)))

(assert (= (and b!7224668 ((_ is ElementMatch!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225517))

(assert (= (and b!7224668 ((_ is Concat!27244) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225518))

(assert (= (and b!7224668 ((_ is Star!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225519))

(assert (= (and b!7224668 ((_ is Union!18399) (regTwo!37310 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225520))

(declare-fun e!4331418 () Bool)

(assert (=> b!7224686 (= tp!2030954 e!4331418)))

(declare-fun b!7225524 () Bool)

(declare-fun tp!2031547 () Bool)

(declare-fun tp!2031546 () Bool)

(assert (=> b!7225524 (= e!4331418 (and tp!2031547 tp!2031546))))

(declare-fun b!7225523 () Bool)

(declare-fun tp!2031548 () Bool)

(assert (=> b!7225523 (= e!4331418 tp!2031548)))

(declare-fun b!7225522 () Bool)

(declare-fun tp!2031549 () Bool)

(declare-fun tp!2031550 () Bool)

(assert (=> b!7225522 (= e!4331418 (and tp!2031549 tp!2031550))))

(declare-fun b!7225521 () Bool)

(assert (=> b!7225521 (= e!4331418 tp_is_empty!46355)))

(assert (= (and b!7224686 ((_ is ElementMatch!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225521))

(assert (= (and b!7224686 ((_ is Concat!27244) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225522))

(assert (= (and b!7224686 ((_ is Star!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225523))

(assert (= (and b!7224686 ((_ is Union!18399) (regOne!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225524))

(declare-fun e!4331419 () Bool)

(assert (=> b!7224686 (= tp!2030953 e!4331419)))

(declare-fun b!7225528 () Bool)

(declare-fun tp!2031552 () Bool)

(declare-fun tp!2031551 () Bool)

(assert (=> b!7225528 (= e!4331419 (and tp!2031552 tp!2031551))))

(declare-fun b!7225527 () Bool)

(declare-fun tp!2031553 () Bool)

(assert (=> b!7225527 (= e!4331419 tp!2031553)))

(declare-fun b!7225526 () Bool)

(declare-fun tp!2031554 () Bool)

(declare-fun tp!2031555 () Bool)

(assert (=> b!7225526 (= e!4331419 (and tp!2031554 tp!2031555))))

(declare-fun b!7225525 () Bool)

(assert (=> b!7225525 (= e!4331419 tp_is_empty!46355)))

(assert (= (and b!7224686 ((_ is ElementMatch!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225525))

(assert (= (and b!7224686 ((_ is Concat!27244) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225526))

(assert (= (and b!7224686 ((_ is Star!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225527))

(assert (= (and b!7224686 ((_ is Union!18399) (regTwo!37311 (regTwo!37310 (h!76239 (exprs!7851 empty!3071)))))) b!7225528))

(declare-fun e!4331420 () Bool)

(assert (=> b!7224677 (= tp!2030945 e!4331420)))

(declare-fun b!7225532 () Bool)

(declare-fun tp!2031557 () Bool)

(declare-fun tp!2031556 () Bool)

(assert (=> b!7225532 (= e!4331420 (and tp!2031557 tp!2031556))))

(declare-fun b!7225531 () Bool)

(declare-fun tp!2031558 () Bool)

(assert (=> b!7225531 (= e!4331420 tp!2031558)))

(declare-fun b!7225530 () Bool)

(declare-fun tp!2031559 () Bool)

(declare-fun tp!2031560 () Bool)

(assert (=> b!7225530 (= e!4331420 (and tp!2031559 tp!2031560))))

(declare-fun b!7225529 () Bool)

(assert (=> b!7225529 (= e!4331420 tp_is_empty!46355)))

(assert (= (and b!7224677 ((_ is ElementMatch!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225529))

(assert (= (and b!7224677 ((_ is Concat!27244) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225530))

(assert (= (and b!7224677 ((_ is Star!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225531))

(assert (= (and b!7224677 ((_ is Union!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 setElem!53522)))))) b!7225532))

(declare-fun e!4331421 () Bool)

(assert (=> b!7224724 (= tp!2031002 e!4331421)))

(declare-fun b!7225536 () Bool)

(declare-fun tp!2031562 () Bool)

(declare-fun tp!2031561 () Bool)

(assert (=> b!7225536 (= e!4331421 (and tp!2031562 tp!2031561))))

(declare-fun b!7225535 () Bool)

(declare-fun tp!2031563 () Bool)

(assert (=> b!7225535 (= e!4331421 tp!2031563)))

(declare-fun b!7225534 () Bool)

(declare-fun tp!2031564 () Bool)

(declare-fun tp!2031565 () Bool)

(assert (=> b!7225534 (= e!4331421 (and tp!2031564 tp!2031565))))

(declare-fun b!7225533 () Bool)

(assert (=> b!7225533 (= e!4331421 tp_is_empty!46355)))

(assert (= (and b!7224724 ((_ is ElementMatch!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225533))

(assert (= (and b!7224724 ((_ is Concat!27244) (reg!18728 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225534))

(assert (= (and b!7224724 ((_ is Star!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225535))

(assert (= (and b!7224724 ((_ is Union!18399) (reg!18728 (h!76239 (t!383944 (exprs!7851 empty!3071)))))) b!7225536))

(declare-fun e!4331422 () Bool)

(assert (=> b!7224703 (= tp!2030976 e!4331422)))

(declare-fun b!7225540 () Bool)

(declare-fun tp!2031567 () Bool)

(declare-fun tp!2031566 () Bool)

(assert (=> b!7225540 (= e!4331422 (and tp!2031567 tp!2031566))))

(declare-fun b!7225539 () Bool)

(declare-fun tp!2031568 () Bool)

(assert (=> b!7225539 (= e!4331422 tp!2031568)))

(declare-fun b!7225538 () Bool)

(declare-fun tp!2031569 () Bool)

(declare-fun tp!2031570 () Bool)

(assert (=> b!7225538 (= e!4331422 (and tp!2031569 tp!2031570))))

(declare-fun b!7225537 () Bool)

(assert (=> b!7225537 (= e!4331422 tp_is_empty!46355)))

(assert (= (and b!7224703 ((_ is ElementMatch!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225537))

(assert (= (and b!7224703 ((_ is Concat!27244) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225538))

(assert (= (and b!7224703 ((_ is Star!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225539))

(assert (= (and b!7224703 ((_ is Union!18399) (regOne!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225540))

(declare-fun e!4331423 () Bool)

(assert (=> b!7224703 (= tp!2030975 e!4331423)))

(declare-fun b!7225544 () Bool)

(declare-fun tp!2031572 () Bool)

(declare-fun tp!2031571 () Bool)

(assert (=> b!7225544 (= e!4331423 (and tp!2031572 tp!2031571))))

(declare-fun b!7225543 () Bool)

(declare-fun tp!2031573 () Bool)

(assert (=> b!7225543 (= e!4331423 tp!2031573)))

(declare-fun b!7225542 () Bool)

(declare-fun tp!2031574 () Bool)

(declare-fun tp!2031575 () Bool)

(assert (=> b!7225542 (= e!4331423 (and tp!2031574 tp!2031575))))

(declare-fun b!7225541 () Bool)

(assert (=> b!7225541 (= e!4331423 tp_is_empty!46355)))

(assert (= (and b!7224703 ((_ is ElementMatch!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225541))

(assert (= (and b!7224703 ((_ is Concat!27244) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225542))

(assert (= (and b!7224703 ((_ is Star!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225543))

(assert (= (and b!7224703 ((_ is Union!18399) (regTwo!37311 (regTwo!37311 (h!76239 (exprs!7851 empty!3071)))))) b!7225544))

(declare-fun e!4331424 () Bool)

(assert (=> b!7224694 (= tp!2030967 e!4331424)))

(declare-fun b!7225548 () Bool)

(declare-fun tp!2031577 () Bool)

(declare-fun tp!2031576 () Bool)

(assert (=> b!7225548 (= e!4331424 (and tp!2031577 tp!2031576))))

(declare-fun b!7225547 () Bool)

(declare-fun tp!2031578 () Bool)

(assert (=> b!7225547 (= e!4331424 tp!2031578)))

(declare-fun b!7225546 () Bool)

(declare-fun tp!2031579 () Bool)

(declare-fun tp!2031580 () Bool)

(assert (=> b!7225546 (= e!4331424 (and tp!2031579 tp!2031580))))

(declare-fun b!7225545 () Bool)

(assert (=> b!7225545 (= e!4331424 tp_is_empty!46355)))

(assert (= (and b!7224694 ((_ is ElementMatch!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225545))

(assert (= (and b!7224694 ((_ is Concat!27244) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225546))

(assert (= (and b!7224694 ((_ is Star!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225547))

(assert (= (and b!7224694 ((_ is Union!18399) (reg!18728 (regTwo!37311 (h!76239 (exprs!7851 setElem!53522)))))) b!7225548))

(declare-fun condSetEmpty!53545 () Bool)

(assert (=> setNonEmpty!53542 (= condSetEmpty!53545 (= setRest!53542 ((as const (Array Context!14702 Bool)) false)))))

(declare-fun setRes!53545 () Bool)

(assert (=> setNonEmpty!53542 (= tp!2031018 setRes!53545)))

(declare-fun setIsEmpty!53545 () Bool)

(assert (=> setIsEmpty!53545 setRes!53545))

(declare-fun setNonEmpty!53545 () Bool)

(declare-fun e!4331425 () Bool)

(declare-fun setElem!53545 () Context!14702)

(declare-fun tp!2031581 () Bool)

(assert (=> setNonEmpty!53545 (= setRes!53545 (and tp!2031581 (inv!89019 setElem!53545) e!4331425))))

(declare-fun setRest!53545 () (InoxSet Context!14702))

(assert (=> setNonEmpty!53545 (= setRest!53542 ((_ map or) (store ((as const (Array Context!14702 Bool)) false) setElem!53545 true) setRest!53545))))

(declare-fun b!7225549 () Bool)

(declare-fun tp!2031582 () Bool)

(assert (=> b!7225549 (= e!4331425 tp!2031582)))

(assert (= (and setNonEmpty!53542 condSetEmpty!53545) setIsEmpty!53545))

(assert (= (and setNonEmpty!53542 (not condSetEmpty!53545)) setNonEmpty!53545))

(assert (= setNonEmpty!53545 b!7225549))

(declare-fun m!7895406 () Bool)

(assert (=> setNonEmpty!53545 m!7895406))

(declare-fun e!4331426 () Bool)

(assert (=> b!7224670 (= tp!2030934 e!4331426)))

(declare-fun b!7225553 () Bool)

(declare-fun tp!2031584 () Bool)

(declare-fun tp!2031583 () Bool)

(assert (=> b!7225553 (= e!4331426 (and tp!2031584 tp!2031583))))

(declare-fun b!7225552 () Bool)

(declare-fun tp!2031585 () Bool)

(assert (=> b!7225552 (= e!4331426 tp!2031585)))

(declare-fun b!7225551 () Bool)

(declare-fun tp!2031586 () Bool)

(declare-fun tp!2031587 () Bool)

(assert (=> b!7225551 (= e!4331426 (and tp!2031586 tp!2031587))))

(declare-fun b!7225550 () Bool)

(assert (=> b!7225550 (= e!4331426 tp_is_empty!46355)))

(assert (= (and b!7224670 ((_ is ElementMatch!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225550))

(assert (= (and b!7224670 ((_ is Concat!27244) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225551))

(assert (= (and b!7224670 ((_ is Star!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225552))

(assert (= (and b!7224670 ((_ is Union!18399) (regOne!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225553))

(declare-fun e!4331427 () Bool)

(assert (=> b!7224670 (= tp!2030933 e!4331427)))

(declare-fun b!7225557 () Bool)

(declare-fun tp!2031589 () Bool)

(declare-fun tp!2031588 () Bool)

(assert (=> b!7225557 (= e!4331427 (and tp!2031589 tp!2031588))))

(declare-fun b!7225556 () Bool)

(declare-fun tp!2031590 () Bool)

(assert (=> b!7225556 (= e!4331427 tp!2031590)))

(declare-fun b!7225555 () Bool)

(declare-fun tp!2031591 () Bool)

(declare-fun tp!2031592 () Bool)

(assert (=> b!7225555 (= e!4331427 (and tp!2031591 tp!2031592))))

(declare-fun b!7225554 () Bool)

(assert (=> b!7225554 (= e!4331427 tp_is_empty!46355)))

(assert (= (and b!7224670 ((_ is ElementMatch!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225554))

(assert (= (and b!7224670 ((_ is Concat!27244) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225555))

(assert (= (and b!7224670 ((_ is Star!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225556))

(assert (= (and b!7224670 ((_ is Union!18399) (regTwo!37311 (reg!18728 (h!76239 (exprs!7851 empty!3071)))))) b!7225557))

(declare-fun b!7225561 () Bool)

(declare-fun e!4331430 () Bool)

(declare-fun tp!2031593 () Bool)

(assert (=> b!7225561 (= e!4331430 tp!2031593)))

(declare-fun b!7225560 () Bool)

(declare-fun e!4331429 () Bool)

(declare-fun tp!2031594 () Bool)

(assert (=> b!7225560 (= e!4331429 (and (inv!89019 (h!76241 (t!383946 (t!383946 res!2931777)))) e!4331430 tp!2031594))))

(assert (=> b!7224710 (= tp!2030985 e!4331429)))

(assert (= b!7225560 b!7225561))

(assert (= (and b!7224710 ((_ is Cons!69793) (t!383946 (t!383946 res!2931777)))) b!7225560))

(declare-fun m!7895410 () Bool)

(assert (=> b!7225560 m!7895410))

(declare-fun e!4331431 () Bool)

(assert (=> b!7224687 (= tp!2030958 e!4331431)))

(declare-fun b!7225565 () Bool)

(declare-fun tp!2031596 () Bool)

(declare-fun tp!2031595 () Bool)

(assert (=> b!7225565 (= e!4331431 (and tp!2031596 tp!2031595))))

(declare-fun b!7225564 () Bool)

(declare-fun tp!2031597 () Bool)

(assert (=> b!7225564 (= e!4331431 tp!2031597)))

(declare-fun b!7225563 () Bool)

(declare-fun tp!2031598 () Bool)

(declare-fun tp!2031599 () Bool)

(assert (=> b!7225563 (= e!4331431 (and tp!2031598 tp!2031599))))

(declare-fun b!7225562 () Bool)

(assert (=> b!7225562 (= e!4331431 tp_is_empty!46355)))

(assert (= (and b!7224687 ((_ is ElementMatch!18399) (h!76239 (exprs!7851 (h!76241 res!2931777))))) b!7225562))

(assert (= (and b!7224687 ((_ is Concat!27244) (h!76239 (exprs!7851 (h!76241 res!2931777))))) b!7225563))

(assert (= (and b!7224687 ((_ is Star!18399) (h!76239 (exprs!7851 (h!76241 res!2931777))))) b!7225564))

(assert (= (and b!7224687 ((_ is Union!18399) (h!76239 (exprs!7851 (h!76241 res!2931777))))) b!7225565))

(declare-fun b!7225566 () Bool)

(declare-fun e!4331432 () Bool)

(declare-fun tp!2031600 () Bool)

(declare-fun tp!2031601 () Bool)

(assert (=> b!7225566 (= e!4331432 (and tp!2031600 tp!2031601))))

(assert (=> b!7224687 (= tp!2030959 e!4331432)))

(assert (= (and b!7224687 ((_ is Cons!69791) (t!383944 (exprs!7851 (h!76241 res!2931777))))) b!7225566))

(declare-fun e!4331435 () Bool)

(assert (=> b!7224742 (= tp!2031028 e!4331435)))

(declare-fun b!7225572 () Bool)

(declare-fun tp!2031603 () Bool)

(declare-fun tp!2031602 () Bool)

(assert (=> b!7225572 (= e!4331435 (and tp!2031603 tp!2031602))))

(declare-fun b!7225571 () Bool)

(declare-fun tp!2031604 () Bool)

(assert (=> b!7225571 (= e!4331435 tp!2031604)))

(declare-fun b!7225570 () Bool)

(declare-fun tp!2031605 () Bool)

(declare-fun tp!2031606 () Bool)

(assert (=> b!7225570 (= e!4331435 (and tp!2031605 tp!2031606))))

(declare-fun b!7225569 () Bool)

(assert (=> b!7225569 (= e!4331435 tp_is_empty!46355)))

(assert (= (and b!7224742 ((_ is ElementMatch!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225569))

(assert (= (and b!7224742 ((_ is Concat!27244) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225570))

(assert (= (and b!7224742 ((_ is Star!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225571))

(assert (= (and b!7224742 ((_ is Union!18399) (reg!18728 (regTwo!37310 (h!76239 (exprs!7851 c!10544)))))) b!7225572))

(declare-fun b_lambda!276613 () Bool)

(assert (= b_lambda!276593 (or d!2244108 b_lambda!276613)))

(declare-fun bs!1901881 () Bool)

(declare-fun d!2244362 () Bool)

(assert (= bs!1901881 (and d!2244362 d!2244108)))

(assert (=> bs!1901881 (= (dynLambda!28425 lambda!438363 (h!76239 (exprs!7851 setElem!53536))) (validRegex!9493 (h!76239 (exprs!7851 setElem!53536))))))

(declare-fun m!7895420 () Bool)

(assert (=> bs!1901881 m!7895420))

(assert (=> b!7224878 d!2244362))

(declare-fun b_lambda!276615 () Bool)

(assert (= b_lambda!276599 (or d!2244046 b_lambda!276615)))

(declare-fun bs!1901882 () Bool)

(declare-fun d!2244364 () Bool)

(assert (= bs!1901882 (and d!2244364 d!2244046)))

(assert (=> bs!1901882 (= (dynLambda!28425 lambda!438358 (h!76239 (exprs!7851 _$3!498))) (validRegex!9493 (h!76239 (exprs!7851 _$3!498))))))

(declare-fun m!7895422 () Bool)

(assert (=> bs!1901882 m!7895422))

(assert (=> b!7224911 d!2244364))

(declare-fun b_lambda!276617 () Bool)

(assert (= b_lambda!276609 (or d!2243908 b_lambda!276617)))

(declare-fun bs!1901883 () Bool)

(declare-fun d!2244366 () Bool)

(assert (= bs!1901883 (and d!2244366 d!2243908)))

(assert (=> bs!1901883 (= (dynLambda!28425 lambda!438335 (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071))))) (validRegex!9493 (h!76239 (t!383944 (t!383944 (exprs!7851 empty!3071))))))))

(declare-fun m!7895424 () Bool)

(assert (=> bs!1901883 m!7895424))

(assert (=> b!7224981 d!2244366))

(declare-fun b_lambda!276619 () Bool)

(assert (= b_lambda!276595 (or d!2244102 b_lambda!276619)))

(declare-fun bs!1901884 () Bool)

(declare-fun d!2244368 () Bool)

(assert (= bs!1901884 (and d!2244368 d!2244102)))

(assert (=> bs!1901884 (= (dynLambda!28425 lambda!438362 (h!76239 (exprs!7851 setElem!53535))) (validRegex!9493 (h!76239 (exprs!7851 setElem!53535))))))

(declare-fun m!7895426 () Bool)

(assert (=> bs!1901884 m!7895426))

(assert (=> b!7224889 d!2244368))

(declare-fun b_lambda!276621 () Bool)

(assert (= b_lambda!276589 (or d!2243972 b_lambda!276621)))

(declare-fun bs!1901885 () Bool)

(declare-fun d!2244370 () Bool)

(assert (= bs!1901885 (and d!2244370 d!2243972)))

(assert (=> bs!1901885 (= (dynLambda!28426 lambda!438350 (h!76241 (t!383946 (toList!11334 z!3517)))) (not (dynLambda!28426 lambda!438318 (h!76241 (t!383946 (toList!11334 z!3517))))))))

(declare-fun b_lambda!276633 () Bool)

(assert (=> (not b_lambda!276633) (not bs!1901885)))

(declare-fun m!7895428 () Bool)

(assert (=> bs!1901885 m!7895428))

(assert (=> b!7224788 d!2244370))

(declare-fun b_lambda!276623 () Bool)

(assert (= b_lambda!276587 (or d!2243980 b_lambda!276623)))

(declare-fun bs!1901886 () Bool)

(declare-fun d!2244372 () Bool)

(assert (= bs!1901886 (and d!2244372 d!2243980)))

(assert (=> bs!1901886 (= (dynLambda!28425 lambda!438351 (h!76239 (t!383944 (exprs!7851 setElem!53528)))) (validRegex!9493 (h!76239 (t!383944 (exprs!7851 setElem!53528)))))))

(declare-fun m!7895430 () Bool)

(assert (=> bs!1901886 m!7895430))

(assert (=> b!7224779 d!2244372))

(declare-fun b_lambda!276625 () Bool)

(assert (= b_lambda!276591 (or d!2244112 b_lambda!276625)))

(declare-fun bs!1901887 () Bool)

(declare-fun d!2244374 () Bool)

(assert (= bs!1901887 (and d!2244374 d!2244112)))

(assert (=> bs!1901887 (= (dynLambda!28426 lambda!438364 (h!76241 (toList!11334 z!3517))) (not (dynLambda!28426 lambda!438332 (h!76241 (toList!11334 z!3517)))))))

(declare-fun b_lambda!276635 () Bool)

(assert (=> (not b_lambda!276635) (not bs!1901887)))

(declare-fun m!7895432 () Bool)

(assert (=> bs!1901887 m!7895432))

(assert (=> b!7224839 d!2244374))

(declare-fun b_lambda!276627 () Bool)

(assert (= b_lambda!276583 (or d!2244076 b_lambda!276627)))

(declare-fun bs!1901888 () Bool)

(declare-fun d!2244376 () Bool)

(assert (= bs!1901888 (and d!2244376 d!2244076)))

(assert (=> bs!1901888 (= (dynLambda!28425 lambda!438361 (h!76239 (exprs!7851 (h!76241 res!2931777)))) (validRegex!9493 (h!76239 (exprs!7851 (h!76241 res!2931777)))))))

(declare-fun m!7895434 () Bool)

(assert (=> bs!1901888 m!7895434))

(assert (=> b!7224764 d!2244376))

(declare-fun b_lambda!276629 () Bool)

(assert (= b_lambda!276585 (or d!2243912 b_lambda!276629)))

(declare-fun bs!1901889 () Bool)

(declare-fun d!2244378 () Bool)

(assert (= bs!1901889 (and d!2244378 d!2243912)))

(assert (=> bs!1901889 (= (dynLambda!28425 lambda!438337 (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522))))) (validRegex!9493 (h!76239 (t!383944 (t!383944 (exprs!7851 setElem!53522))))))))

(declare-fun m!7895436 () Bool)

(assert (=> bs!1901889 m!7895436))

(assert (=> b!7224766 d!2244378))

(declare-fun b_lambda!276631 () Bool)

(assert (= b_lambda!276607 (or d!2243910 b_lambda!276631)))

(declare-fun bs!1901890 () Bool)

(declare-fun d!2244380 () Bool)

(assert (= bs!1901890 (and d!2244380 d!2243910)))

(assert (=> bs!1901890 (= (dynLambda!28425 lambda!438336 (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544))))) (validRegex!9493 (h!76239 (t!383944 (t!383944 (exprs!7851 c!10544))))))))

(declare-fun m!7895440 () Bool)

(assert (=> bs!1901890 m!7895440))

(assert (=> b!7224968 d!2244380))

(check-sat (not b!7225141) (not b!7225181) (not b!7225100) (not b!7225345) (not b!7225395) (not b!7225281) (not b_lambda!276533) (not b!7225249) (not bs!1901883) (not bm!657565) (not bm!657609) (not b!7225475) (not bm!657577) (not b!7225241) (not b!7224837) (not b!7225340) (not b!7225157) (not b!7225054) (not b!7225096) (not b!7225474) (not b!7225444) (not b!7225357) (not b!7225528) (not b!7225251) (not b!7225535) (not b!7225479) (not b!7225337) (not b!7225466) (not b!7225115) (not b!7225121) (not d!2244296) (not b!7225277) (not b!7224844) (not b!7225124) (not b!7225065) (not b!7225247) (not b!7225411) (not b!7225296) (not bm!657615) (not b!7225215) (not b!7224842) (not b!7225108) (not b!7225172) (not b!7225516) (not b!7225534) (not b!7225531) (not b!7225519) (not bm!657643) (not b!7225122) (not b!7225397) (not b!7225497) (not b_lambda!276619) (not b!7225230) (not b!7225087) (not b!7225505) (not b!7225571) (not b!7225274) (not bm!657587) (not bs!1901884) (not b!7225436) (not b!7225338) (not b!7225305) (not b_lambda!276613) (not d!2244270) (not b!7225437) (not bm!657634) (not b!7225233) (not b!7225376) (not b!7225300) (not b!7224877) (not b!7225111) (not b!7225292) (not setNonEmpty!53545) (not b!7225502) (not b!7225271) (not b_lambda!276615) (not b_lambda!276529) (not b!7225094) (not b!7225255) (not b!7225565) (not b!7224817) (not bm!657595) (not d!2244186) (not b!7224767) (not b!7225329) (not d!2244180) (not b!7225112) (not b!7224765) (not b!7225407) (not b!7224914) (not b!7225090) (not b!7225242) (not b!7225207) (not b!7225189) (not b!7225174) (not b!7225353) (not b!7225564) (not b!7225238) (not b!7225557) (not b!7225254) (not d!2244300) (not b!7225507) (not b!7225284) (not b!7224770) (not bm!657559) (not b!7225144) (not b!7225311) (not bm!657555) (not b!7225314) (not b!7225095) (not b!7224792) (not b!7224887) (not b!7225205) (not b!7225217) (not b!7225295) (not b!7225341) (not b!7225434) (not b_lambda!276531) (not d!2244258) (not b!7225377) (not b!7224762) (not b!7225116) (not b!7224989) (not b!7224840) (not b!7225214) (not b!7225221) (not b!7225250) (not b!7225419) (not b!7225426) (not b!7225307) (not b!7225352) (not bm!657628) (not b!7224915) (not b!7225190) (not bm!657560) (not b!7225301) (not b!7224821) (not b!7225171) (not b!7225366) (not b!7225273) (not b!7225496) (not b!7225530) (not b!7224969) (not b_lambda!276617) (not d!2244260) (not b!7225263) (not b!7225313) (not b!7225344) (not b!7225245) (not bm!657589) (not bm!657599) (not b!7225492) (not b!7225370) (not b!7225488) (not d!2244206) (not b!7225514) (not b!7225262) (not b!7225553) (not b!7224763) (not b!7225440) (not b!7225401) (not b!7224964) (not bm!657603) (not b!7225253) (not b!7224967) (not b!7225501) (not b!7225369) (not b!7225446) (not bm!657630) (not b!7224879) (not b!7225372) (not bm!657626) (not b!7225261) (not b!7225336) (not b!7225450) (not b_lambda!276635) (not bm!657625) (not b!7224874) (not b!7225035) (not b!7225362) (not b!7224875) (not b!7225332) (not bm!657607) (not b!7225349) (not b!7225512) (not b!7224856) (not b!7225257) (not b!7225138) (not b!7225361) (not b!7225151) (not b!7225354) (not b!7225546) (not bm!657592) (not b!7225527) (not b!7224982) (not b!7225409) (not b!7225346) (not b!7225483) (not b!7225458) (not b!7225374) (not b!7225185) (not bm!657584) (not bm!657605) (not bm!657567) (not b!7225380) (not b!7225106) (not b!7225451) (not b!7225227) (not b!7225420) (not b!7225234) (not b!7225487) (not d!2244208) (not b!7225542) (not b!7225539) (not bm!657597) (not b_lambda!276629) (not b!7225523) (not b!7225146) (not bm!657556) (not d!2244288) (not b!7225183) (not b!7225330) (not b!7225309) (not b!7225154) (not b!7224890) (not b!7225278) (not b!7225438) (not b!7225225) (not b!7225103) (not b_lambda!276571) (not b!7225119) (not bm!657582) (not bs!1901890) (not b!7225222) (not b!7224986) (not b_lambda!276631) (not b!7225555) (not b!7225308) (not b!7225465) (not b!7225128) (not b!7225552) (not b!7225540) (not b!7225549) (not b!7225394) (not d!2244190) (not b!7225304) (not b!7225092) (not setNonEmpty!53543) (not b!7225551) (not setNonEmpty!53544) (not b!7225342) (not d!2244256) (not b!7225328) (not b!7225489) (not b!7225442) (not b!7225429) (not b!7225468) (not b!7225358) (not b!7225506) (not b!7225270) (not b!7225113) (not b!7225364) (not bm!657575) (not b!7225478) (not b!7225211) (not b!7225283) (not b!7225126) (not b!7225459) (not b!7225289) (not b!7225275) (not d!2244274) (not b!7225445) (not b!7225418) (not b!7225243) (not b!7225482) (not b!7225267) (not b!7225416) (not b!7224789) (not b!7225132) (not b!7225453) (not b!7224780) (not b!7225360) (not b!7225223) (not b!7225191) (not b!7225104) (not b!7225088) (not bm!657569) (not b!7225182) (not b!7225117) (not b!7225543) (not b!7225471) (not b!7225017) (not bm!657576) (not b!7225493) (not b!7225524) (not d!2244310) (not bm!657641) (not b!7225133) (not b!7225178) (not b_lambda!276623) (not b!7225213) (not b!7225098) (not b!7225153) (not b!7225486) (not bm!657581) (not b!7225186) (not b_lambda!276633) (not b!7225269) (not bs!1901889) (not b!7225484) (not b!7224907) (not b!7225158) (not b!7225020) (not b!7225218) (not b!7224946) (not b!7225231) (not b!7225491) (not b!7225428) (not b!7225518) (not b!7225176) (not b!7225149) (not b!7225470) (not bm!657594) (not b!7225476) (not b!7225019) (not b!7225536) (not b!7225315) (not bm!657579) (not b!7225312) (not bs!1901881) (not b!7225472) (not b_lambda!276621) (not b!7225467) (not bm!657564) (not b!7225368) (not bm!657557) (not b!7225155) (not b!7225159) (not b!7225109) (not b_lambda!276569) (not b!7225142) (not d!2244312) (not b!7224985) (not bm!657600) (not b!7225393) (not bm!657572) (not d!2244192) (not b!7224873) (not bs!1901886) (not b!7225373) (not b!7225572) (not b!7225405) (not b!7225509) (not b!7225356) (not b!7225303) (not b_lambda!276567) (not b!7225566) (not b!7225235) (not b!7225288) (not b!7225024) (not b_lambda!276575) (not b!7225563) (not b!7225266) (not b!7225299) (not b!7225447) (not b!7225556) (not b!7225461) (not b!7225210) (not b!7225511) (not b!7225150) (not b!7224808) (not b!7224852) (not b!7225086) (not bs!1901882) (not b!7225350) (not b!7225229) (not b!7225187) (not b_lambda!276627) (not b!7225560) (not b!7225102) (not b!7225179) (not b!7224922) (not b!7224912) (not b!7225515) (not bm!657596) (not b!7225259) (not b!7225293) (not b!7225291) (not b!7225402) (not b!7225297) (not b!7225206) (not b!7225120) (not b!7225480) (not d!2244294) (not b!7225449) tp_is_empty!46355 (not b!7225510) (not b!7225130) (not b!7224876) (not b!7225348) (not b!7225548) (not b!7225226) (not b!7225125) (not b!7225538) (not bm!657588) (not bm!657648) (not b!7225134) (not b!7225099) (not b!7225414) (not b!7225136) (not b!7225382) (not bm!657604) (not b!7225378) (not b!7225570) (not b!7225239) (not b!7225441) (not b!7225107) (not b!7225410) (not b!7225455) (not b_lambda!276581) (not b!7225463) (not b!7225258) (not b!7225365) (not b!7225282) (not d!2244306) (not b!7225403) (not b!7224984) (not b!7225145) (not b!7225192) (not bs!1901888) (not b!7225398) (not bm!657563) (not b!7225140) (not d!2244222) (not b!7225265) (not b!7225544) (not b!7225005) (not b!7225334) (not b!7225209) (not b!7225219) (not b!7225246) (not b!7225177) (not b!7225147) (not b!7225462) (not b!7225170) (not b!7225381) (not b_lambda!276573) (not b!7225129) (not bm!657649) (not b!7225413) (not b!7225406) (not b!7225454) (not b!7225547) (not bm!657650) (not b!7225137) (not b!7225333) (not b!7225237) (not b!7225415) (not b!7225279) (not b!7225503) (not b!7225526) (not b!7225399) (not b!7225520) (not bm!657613) (not b!7225457) (not b!7225175) (not b!7225091) (not b!7225532) (not b!7225522) (not bm!657570) (not b!7225287) (not bm!657624) (not d!2244188) (not b_lambda!276625) (not b!7225561) (not b!7225495) (not b!7225285))
(check-sat)

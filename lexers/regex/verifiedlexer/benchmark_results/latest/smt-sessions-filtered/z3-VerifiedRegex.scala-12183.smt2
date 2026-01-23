; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!685898 () Bool)

(assert start!685898)

(declare-fun b!7065610 () Bool)

(assert (=> b!7065610 true))

(declare-fun b!7065603 () Bool)

(assert (=> b!7065603 true))

(declare-fun b!7065612 () Bool)

(assert (=> b!7065612 true))

(declare-fun bs!1879706 () Bool)

(declare-fun b!7065626 () Bool)

(assert (= bs!1879706 (and b!7065626 b!7065610)))

(declare-fun lambda!423617 () Int)

(declare-fun lambda!423613 () Int)

(assert (=> bs!1879706 (not (= lambda!423617 lambda!423613))))

(declare-fun bs!1879707 () Bool)

(declare-fun b!7065609 () Bool)

(assert (= bs!1879707 (and b!7065609 b!7065610)))

(declare-fun lambda!423618 () Int)

(declare-datatypes ((C!35496 0))(
  ( (C!35497 (val!27450 Int)) )
))
(declare-datatypes ((List!68365 0))(
  ( (Nil!68241) (Cons!68241 (h!74689 C!35496) (t!382146 List!68365)) )
))
(declare-datatypes ((tuple2!68228 0))(
  ( (tuple2!68229 (_1!37417 List!68365) (_2!37417 List!68365)) )
))
(declare-fun lt!2540580 () tuple2!68228)

(declare-fun s!7408 () List!68365)

(assert (=> bs!1879707 (= (= (_1!37417 lt!2540580) s!7408) (= lambda!423618 lambda!423613))))

(declare-fun bs!1879708 () Bool)

(assert (= bs!1879708 (and b!7065609 b!7065626)))

(assert (=> bs!1879708 (not (= lambda!423618 lambda!423617))))

(assert (=> b!7065609 true))

(declare-fun setIsEmpty!50097 () Bool)

(declare-fun setRes!50097 () Bool)

(assert (=> setIsEmpty!50097 setRes!50097))

(declare-fun b!7065601 () Bool)

(declare-fun e!4247758 () Bool)

(declare-fun e!4247751 () Bool)

(assert (=> b!7065601 (= e!4247758 e!4247751)))

(declare-fun res!2885096 () Bool)

(assert (=> b!7065601 (=> res!2885096 e!4247751)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17613 0))(
  ( (ElementMatch!17613 (c!1317466 C!35496)) (Concat!26458 (regOne!35738 Regex!17613) (regTwo!35738 Regex!17613)) (EmptyExpr!17613) (Star!17613 (reg!17942 Regex!17613)) (EmptyLang!17613) (Union!17613 (regOne!35739 Regex!17613) (regTwo!35739 Regex!17613)) )
))
(declare-datatypes ((List!68366 0))(
  ( (Nil!68242) (Cons!68242 (h!74690 Regex!17613) (t!382147 List!68366)) )
))
(declare-datatypes ((Context!13218 0))(
  ( (Context!13219 (exprs!7109 List!68366)) )
))
(declare-fun lt!2540558 () (InoxSet Context!13218))

(declare-fun matchZipper!3153 ((InoxSet Context!13218) List!68365) Bool)

(assert (=> b!7065601 (= res!2885096 (not (matchZipper!3153 lt!2540558 (t!382146 s!7408))))))

(declare-fun lambda!423615 () Int)

(declare-fun lt!2540552 () List!68366)

(declare-datatypes ((Unit!161920 0))(
  ( (Unit!161921) )
))
(declare-fun lt!2540577 () Unit!161920)

(declare-fun ct2!306 () Context!13218)

(declare-fun lemmaConcatPreservesForall!924 (List!68366 List!68366 Int) Unit!161920)

(assert (=> b!7065601 (= lt!2540577 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun b!7065602 () Bool)

(declare-fun e!4247748 () Unit!161920)

(declare-fun Unit!161922 () Unit!161920)

(assert (=> b!7065602 (= e!4247748 Unit!161922)))

(declare-fun lt!2540549 () (InoxSet Context!13218))

(declare-fun lt!2540521 () Context!13218)

(assert (=> b!7065602 (= lt!2540549 (store ((as const (Array Context!13218 Bool)) false) lt!2540521 true))))

(declare-fun lambda!423616 () Int)

(declare-fun lt!2540545 () Unit!161920)

(declare-fun lemmaFlatMapOnSingletonSet!2048 ((InoxSet Context!13218) Context!13218 Int) Unit!161920)

(assert (=> b!7065602 (= lt!2540545 (lemmaFlatMapOnSingletonSet!2048 lt!2540549 lt!2540521 lambda!423616))))

(declare-fun flatMap!2539 ((InoxSet Context!13218) Int) (InoxSet Context!13218))

(declare-fun derivationStepZipperUp!2197 (Context!13218 C!35496) (InoxSet Context!13218))

(assert (=> b!7065602 (= (flatMap!2539 lt!2540549 lambda!423616) (derivationStepZipperUp!2197 lt!2540521 (h!74689 s!7408)))))

(declare-fun lt!2540539 () (InoxSet Context!13218))

(declare-fun lt!2540570 () Context!13218)

(declare-fun derivationStepZipperDown!2247 (Regex!17613 Context!13218 C!35496) (InoxSet Context!13218))

(assert (=> b!7065602 (= lt!2540539 (derivationStepZipperDown!2247 (h!74690 (exprs!7109 lt!2540521)) lt!2540570 (h!74689 s!7408)))))

(declare-fun lt!2540555 () (InoxSet Context!13218))

(assert (=> b!7065602 (= lt!2540555 (derivationStepZipperUp!2197 lt!2540570 (h!74689 s!7408)))))

(declare-fun lt!2540572 () List!68365)

(declare-fun tail!13774 (List!68365) List!68365)

(assert (=> b!7065602 (= lt!2540572 (tail!13774 (_1!37417 lt!2540580)))))

(declare-fun lt!2540581 () Unit!161920)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1626 ((InoxSet Context!13218) (InoxSet Context!13218) List!68365) Unit!161920)

(assert (=> b!7065602 (= lt!2540581 (lemmaZipperConcatMatchesSameAsBothZippers!1626 lt!2540539 lt!2540555 lt!2540572))))

(declare-fun res!2885101 () Bool)

(assert (=> b!7065602 (= res!2885101 (matchZipper!3153 lt!2540539 lt!2540572))))

(declare-fun e!4247749 () Bool)

(assert (=> b!7065602 (=> res!2885101 e!4247749)))

(assert (=> b!7065602 (= (matchZipper!3153 ((_ map or) lt!2540539 lt!2540555) lt!2540572) e!4247749)))

(declare-fun lt!2540573 () Unit!161920)

(declare-fun lt!2540574 () (InoxSet Context!13218))

(assert (=> b!7065602 (= lt!2540573 (lemmaFlatMapOnSingletonSet!2048 lt!2540574 lt!2540570 lambda!423616))))

(assert (=> b!7065602 (= (flatMap!2539 lt!2540574 lambda!423616) (derivationStepZipperUp!2197 lt!2540570 (h!74689 s!7408)))))

(declare-fun lt!2540535 () Unit!161920)

(declare-fun call!642087 () Unit!161920)

(assert (=> b!7065602 (= lt!2540535 call!642087)))

(declare-fun call!642086 () Bool)

(assert (=> b!7065602 call!642086))

(declare-fun e!4247745 () Bool)

(declare-fun e!4247753 () Bool)

(assert (=> b!7065603 (= e!4247745 e!4247753)))

(declare-fun res!2885093 () Bool)

(assert (=> b!7065603 (=> res!2885093 e!4247753)))

(declare-fun lt!2540540 () Context!13218)

(declare-fun z1!570 () (InoxSet Context!13218))

(declare-fun lt!2540523 () Context!13218)

(assert (=> b!7065603 (= res!2885093 (or (not (= lt!2540540 lt!2540523)) (not (select z1!570 lt!2540521))))))

(declare-fun ++!15723 (List!68366 List!68366) List!68366)

(assert (=> b!7065603 (= lt!2540540 (Context!13219 (++!15723 (exprs!7109 lt!2540521) (exprs!7109 ct2!306))))))

(declare-fun lt!2540553 () Unit!161920)

(assert (=> b!7065603 (= lt!2540553 (lemmaConcatPreservesForall!924 (exprs!7109 lt!2540521) (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lambda!423614 () Int)

(declare-fun mapPost2!442 ((InoxSet Context!13218) Int Context!13218) Context!13218)

(assert (=> b!7065603 (= lt!2540521 (mapPost2!442 z1!570 lambda!423614 lt!2540523))))

(declare-fun b!7065604 () Bool)

(declare-fun e!4247752 () Bool)

(declare-fun tp!1941513 () Bool)

(assert (=> b!7065604 (= e!4247752 tp!1941513)))

(declare-fun b!7065605 () Bool)

(declare-fun e!4247755 () Bool)

(declare-fun tp_is_empty!44451 () Bool)

(declare-fun tp!1941515 () Bool)

(assert (=> b!7065605 (= e!4247755 (and tp_is_empty!44451 tp!1941515))))

(declare-fun b!7065606 () Bool)

(declare-fun e!4247759 () Bool)

(assert (=> b!7065606 (= e!4247759 (not (matchZipper!3153 lt!2540558 (t!382146 s!7408))))))

(declare-fun lt!2540534 () Unit!161920)

(assert (=> b!7065606 (= lt!2540534 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun b!7065607 () Bool)

(assert (=> b!7065607 (= e!4247749 (matchZipper!3153 lt!2540555 lt!2540572))))

(declare-fun b!7065608 () Bool)

(declare-fun e!4247760 () Bool)

(assert (=> b!7065608 (= e!4247760 e!4247758)))

(declare-fun res!2885098 () Bool)

(assert (=> b!7065608 (=> res!2885098 e!4247758)))

(assert (=> b!7065608 (= res!2885098 e!4247759)))

(declare-fun res!2885097 () Bool)

(assert (=> b!7065608 (=> (not res!2885097) (not e!4247759))))

(declare-fun lt!2540530 () Bool)

(declare-fun lt!2540586 () Bool)

(assert (=> b!7065608 (= res!2885097 (not (= lt!2540530 lt!2540586)))))

(declare-fun lt!2540529 () (InoxSet Context!13218))

(assert (=> b!7065608 (= lt!2540530 (matchZipper!3153 lt!2540529 (t!382146 s!7408)))))

(declare-fun lt!2540582 () Unit!161920)

(assert (=> b!7065608 (= lt!2540582 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540525 () (InoxSet Context!13218))

(declare-fun e!4247757 () Bool)

(assert (=> b!7065608 (= (matchZipper!3153 lt!2540525 (t!382146 s!7408)) e!4247757)))

(declare-fun res!2885110 () Bool)

(assert (=> b!7065608 (=> res!2885110 e!4247757)))

(assert (=> b!7065608 (= res!2885110 lt!2540586)))

(declare-fun lt!2540520 () (InoxSet Context!13218))

(assert (=> b!7065608 (= lt!2540586 (matchZipper!3153 lt!2540520 (t!382146 s!7408)))))

(declare-fun lt!2540571 () Unit!161920)

(assert (=> b!7065608 (= lt!2540571 (lemmaZipperConcatMatchesSameAsBothZippers!1626 lt!2540520 lt!2540558 (t!382146 s!7408)))))

(declare-fun lt!2540542 () Unit!161920)

(assert (=> b!7065608 (= lt!2540542 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540532 () Unit!161920)

(assert (=> b!7065608 (= lt!2540532 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun e!4247743 () Bool)

(assert (=> b!7065609 (= e!4247743 true)))

(declare-fun lt!2540569 () Bool)

(assert (=> b!7065609 (= lt!2540569 (matchZipper!3153 z1!570 (_1!37417 lt!2540580)))))

(declare-datatypes ((List!68367 0))(
  ( (Nil!68243) (Cons!68243 (h!74691 Context!13218) (t!382148 List!68367)) )
))
(declare-fun lt!2540537 () List!68367)

(declare-fun content!13742 (List!68367) (InoxSet Context!13218))

(assert (=> b!7065609 (matchZipper!3153 (content!13742 lt!2540537) (_1!37417 lt!2540580))))

(declare-fun lt!2540551 () Unit!161920)

(declare-fun lemmaExistsMatchingContextThenMatchingString!42 (List!68367 List!68365) Unit!161920)

(assert (=> b!7065609 (= lt!2540551 (lemmaExistsMatchingContextThenMatchingString!42 lt!2540537 (_1!37417 lt!2540580)))))

(declare-fun exists!3636 ((InoxSet Context!13218) Int) Bool)

(assert (=> b!7065609 (exists!3636 z1!570 lambda!423618)))

(declare-fun lt!2540584 () Unit!161920)

(declare-fun lemmaContainsThenExists!145 ((InoxSet Context!13218) Context!13218 Int) Unit!161920)

(assert (=> b!7065609 (= lt!2540584 (lemmaContainsThenExists!145 z1!570 lt!2540521 lambda!423618))))

(declare-fun lt!2540556 () Unit!161920)

(assert (=> b!7065609 (= lt!2540556 e!4247748)))

(declare-fun c!1317465 () Bool)

(declare-fun isEmpty!39821 (List!68365) Bool)

(assert (=> b!7065609 (= c!1317465 (isEmpty!39821 (_1!37417 lt!2540580)))))

(declare-fun bm!642081 () Bool)

(declare-fun lt!2540561 () (InoxSet Context!13218))

(declare-fun lt!2540533 () (InoxSet Context!13218))

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!62 ((InoxSet Context!13218) (InoxSet Context!13218) List!68365 List!68365 List!68365 List!68365 List!68365) Unit!161920)

(assert (=> bm!642081 (= call!642087 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!62 (ite c!1317465 lt!2540561 lt!2540549) lt!2540533 (_1!37417 lt!2540580) (_2!37417 lt!2540580) s!7408 Nil!68241 s!7408))))

(declare-fun bm!642082 () Bool)

(declare-datatypes ((Option!16946 0))(
  ( (None!16945) (Some!16945 (v!53239 tuple2!68228)) )
))
(declare-fun call!642088 () Option!16946)

(declare-fun findConcatSeparationZippers!462 ((InoxSet Context!13218) (InoxSet Context!13218) List!68365 List!68365 List!68365) Option!16946)

(assert (=> bm!642082 (= call!642088 (findConcatSeparationZippers!462 (ite c!1317465 lt!2540561 lt!2540549) lt!2540533 Nil!68241 s!7408 s!7408))))

(declare-fun b!7065611 () Bool)

(assert (=> b!7065611 (= e!4247757 (matchZipper!3153 lt!2540558 (t!382146 s!7408)))))

(declare-fun e!4247754 () Bool)

(declare-fun e!4247744 () Bool)

(assert (=> b!7065612 (= e!4247754 e!4247744)))

(declare-fun res!2885089 () Bool)

(assert (=> b!7065612 (=> res!2885089 e!4247744)))

(declare-fun lt!2540546 () (InoxSet Context!13218))

(declare-fun derivationStepZipper!3063 ((InoxSet Context!13218) C!35496) (InoxSet Context!13218))

(assert (=> b!7065612 (= res!2885089 (not (= (derivationStepZipper!3063 lt!2540546 (h!74689 s!7408)) lt!2540529)))))

(assert (=> b!7065612 (= (flatMap!2539 lt!2540546 lambda!423616) (derivationStepZipperUp!2197 lt!2540540 (h!74689 s!7408)))))

(declare-fun lt!2540527 () Unit!161920)

(assert (=> b!7065612 (= lt!2540527 (lemmaFlatMapOnSingletonSet!2048 lt!2540546 lt!2540540 lambda!423616))))

(assert (=> b!7065612 (= lt!2540529 (derivationStepZipperUp!2197 lt!2540540 (h!74689 s!7408)))))

(declare-fun lt!2540568 () Unit!161920)

(assert (=> b!7065612 (= lt!2540568 (lemmaConcatPreservesForall!924 (exprs!7109 lt!2540521) (exprs!7109 ct2!306) lambda!423615))))

(declare-fun b!7065613 () Bool)

(declare-fun res!2885106 () Bool)

(assert (=> b!7065613 (=> res!2885106 e!4247744)))

(declare-fun isEmpty!39822 (List!68366) Bool)

(assert (=> b!7065613 (= res!2885106 (isEmpty!39822 (exprs!7109 lt!2540521)))))

(declare-fun b!7065614 () Bool)

(declare-fun e!4247741 () Bool)

(declare-fun tp!1941514 () Bool)

(assert (=> b!7065614 (= e!4247741 tp!1941514)))

(declare-fun b!7065615 () Bool)

(assert (=> b!7065615 (= e!4247753 e!4247754)))

(declare-fun res!2885090 () Bool)

(assert (=> b!7065615 (=> res!2885090 e!4247754)))

(declare-fun lt!2540541 () (InoxSet Context!13218))

(assert (=> b!7065615 (= res!2885090 (not (= lt!2540546 lt!2540541)))))

(assert (=> b!7065615 (= lt!2540546 (store ((as const (Array Context!13218 Bool)) false) lt!2540540 true))))

(declare-fun lt!2540583 () Unit!161920)

(assert (=> b!7065615 (= lt!2540583 (lemmaConcatPreservesForall!924 (exprs!7109 lt!2540521) (exprs!7109 ct2!306) lambda!423615))))

(declare-fun b!7065616 () Bool)

(declare-fun e!4247747 () Bool)

(assert (=> b!7065616 (= e!4247744 e!4247747)))

(declare-fun res!2885100 () Bool)

(assert (=> b!7065616 (=> res!2885100 e!4247747)))

(declare-fun nullable!7296 (Regex!17613) Bool)

(assert (=> b!7065616 (= res!2885100 (not (nullable!7296 (h!74690 (exprs!7109 lt!2540521)))))))

(assert (=> b!7065616 (= lt!2540570 (Context!13219 lt!2540552))))

(declare-fun tail!13775 (List!68366) List!68366)

(assert (=> b!7065616 (= lt!2540552 (tail!13775 (exprs!7109 lt!2540521)))))

(declare-fun b!7065617 () Bool)

(declare-fun e!4247742 () Bool)

(assert (=> b!7065617 (= e!4247742 e!4247743)))

(declare-fun res!2885103 () Bool)

(assert (=> b!7065617 (=> res!2885103 e!4247743)))

(assert (=> b!7065617 (= res!2885103 (not (matchZipper!3153 lt!2540574 (_1!37417 lt!2540580))))))

(declare-fun lt!2540559 () Option!16946)

(declare-fun get!23903 (Option!16946) tuple2!68228)

(assert (=> b!7065617 (= lt!2540580 (get!23903 lt!2540559))))

(declare-fun isDefined!13647 (Option!16946) Bool)

(assert (=> b!7065617 (isDefined!13647 lt!2540559)))

(assert (=> b!7065617 (= lt!2540559 (findConcatSeparationZippers!462 lt!2540574 lt!2540533 Nil!68241 s!7408 s!7408))))

(assert (=> b!7065617 (= lt!2540533 (store ((as const (Array Context!13218 Bool)) false) ct2!306 true))))

(declare-fun lt!2540536 () Unit!161920)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!450 ((InoxSet Context!13218) Context!13218 List!68365) Unit!161920)

(assert (=> b!7065617 (= lt!2540536 (lemmaConcatZipperMatchesStringThenFindConcatDefined!450 lt!2540574 ct2!306 s!7408))))

(declare-fun b!7065618 () Bool)

(assert (=> b!7065618 (= e!4247747 e!4247760)))

(declare-fun res!2885094 () Bool)

(assert (=> b!7065618 (=> res!2885094 e!4247760)))

(assert (=> b!7065618 (= res!2885094 (not (= lt!2540529 lt!2540525)))))

(assert (=> b!7065618 (= lt!2540525 ((_ map or) lt!2540520 lt!2540558))))

(declare-fun lt!2540575 () Context!13218)

(assert (=> b!7065618 (= lt!2540558 (derivationStepZipperUp!2197 lt!2540575 (h!74689 s!7408)))))

(assert (=> b!7065618 (= lt!2540520 (derivationStepZipperDown!2247 (h!74690 (exprs!7109 lt!2540521)) lt!2540575 (h!74689 s!7408)))))

(assert (=> b!7065618 (= lt!2540575 (Context!13219 (++!15723 lt!2540552 (exprs!7109 ct2!306))))))

(declare-fun lt!2540538 () Unit!161920)

(assert (=> b!7065618 (= lt!2540538 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540543 () Unit!161920)

(assert (=> b!7065618 (= lt!2540543 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun b!7065619 () Bool)

(declare-fun e!4247746 () Bool)

(assert (=> b!7065619 (= e!4247751 e!4247746)))

(declare-fun res!2885108 () Bool)

(assert (=> b!7065619 (=> res!2885108 e!4247746)))

(declare-fun lt!2540548 () (InoxSet Context!13218))

(assert (=> b!7065619 (= res!2885108 (not (= (derivationStepZipper!3063 lt!2540548 (h!74689 s!7408)) lt!2540558)))))

(declare-fun lt!2540524 () Unit!161920)

(assert (=> b!7065619 (= lt!2540524 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540550 () Unit!161920)

(assert (=> b!7065619 (= lt!2540550 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(assert (=> b!7065619 (= (flatMap!2539 lt!2540548 lambda!423616) (derivationStepZipperUp!2197 lt!2540575 (h!74689 s!7408)))))

(declare-fun lt!2540576 () Unit!161920)

(assert (=> b!7065619 (= lt!2540576 (lemmaFlatMapOnSingletonSet!2048 lt!2540548 lt!2540575 lambda!423616))))

(assert (=> b!7065619 (= lt!2540548 (store ((as const (Array Context!13218 Bool)) false) lt!2540575 true))))

(declare-fun lt!2540587 () Unit!161920)

(assert (=> b!7065619 (= lt!2540587 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540560 () Unit!161920)

(assert (=> b!7065619 (= lt!2540560 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun b!7065620 () Bool)

(declare-fun res!2885092 () Bool)

(assert (=> b!7065620 (=> res!2885092 e!4247743)))

(declare-fun ++!15724 (List!68365 List!68365) List!68365)

(assert (=> b!7065620 (= res!2885092 (not (= (++!15724 (_1!37417 lt!2540580) (_2!37417 lt!2540580)) s!7408)))))

(declare-fun b!7065621 () Bool)

(declare-fun res!2885112 () Bool)

(assert (=> b!7065621 (=> res!2885112 e!4247745)))

(declare-fun lt!2540578 () (InoxSet Context!13218))

(assert (=> b!7065621 (= res!2885112 (not (select lt!2540578 lt!2540523)))))

(declare-fun b!7065622 () Bool)

(declare-fun res!2885102 () Bool)

(assert (=> b!7065622 (=> res!2885102 e!4247743)))

(assert (=> b!7065622 (= res!2885102 (not (matchZipper!3153 lt!2540533 (_2!37417 lt!2540580))))))

(declare-fun b!7065623 () Bool)

(declare-fun e!4247756 () Bool)

(assert (=> b!7065623 (= e!4247756 e!4247742)))

(declare-fun res!2885104 () Bool)

(assert (=> b!7065623 (=> res!2885104 e!4247742)))

(declare-fun lt!2540526 () Int)

(declare-fun contextDepthTotal!549 (Context!13218) Int)

(assert (=> b!7065623 (= res!2885104 (<= lt!2540526 (contextDepthTotal!549 lt!2540570)))))

(declare-fun lt!2540566 () Int)

(assert (=> b!7065623 (<= lt!2540526 lt!2540566)))

(declare-fun zipperDepthTotal!578 (List!68367) Int)

(assert (=> b!7065623 (= lt!2540566 (zipperDepthTotal!578 lt!2540537))))

(assert (=> b!7065623 (= lt!2540526 (contextDepthTotal!549 lt!2540521))))

(declare-fun lt!2540565 () Unit!161920)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!116 (List!68367 Context!13218) Unit!161920)

(assert (=> b!7065623 (= lt!2540565 (lemmaTotalDepthZipperLargerThanOfAnyContext!116 lt!2540537 lt!2540521))))

(declare-fun toList!10954 ((InoxSet Context!13218)) List!68367)

(assert (=> b!7065623 (= lt!2540537 (toList!10954 z1!570))))

(declare-fun lt!2540544 () Unit!161920)

(assert (=> b!7065623 (= lt!2540544 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540564 () Unit!161920)

(assert (=> b!7065623 (= lt!2540564 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540547 () Unit!161920)

(assert (=> b!7065623 (= lt!2540547 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(assert (=> b!7065623 (= (flatMap!2539 lt!2540574 lambda!423616) (derivationStepZipperUp!2197 lt!2540570 (h!74689 s!7408)))))

(declare-fun lt!2540585 () Unit!161920)

(assert (=> b!7065623 (= lt!2540585 (lemmaFlatMapOnSingletonSet!2048 lt!2540574 lt!2540570 lambda!423616))))

(declare-fun map!15952 ((InoxSet Context!13218) Int) (InoxSet Context!13218))

(assert (=> b!7065623 (= (map!15952 lt!2540574 lambda!423614) (store ((as const (Array Context!13218 Bool)) false) (Context!13219 (++!15723 lt!2540552 (exprs!7109 ct2!306))) true))))

(declare-fun lt!2540522 () Unit!161920)

(assert (=> b!7065623 (= lt!2540522 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun lt!2540579 () Unit!161920)

(declare-fun lemmaMapOnSingletonSet!430 ((InoxSet Context!13218) Context!13218 Int) Unit!161920)

(assert (=> b!7065623 (= lt!2540579 (lemmaMapOnSingletonSet!430 lt!2540574 lt!2540570 lambda!423614))))

(assert (=> b!7065623 (= lt!2540574 (store ((as const (Array Context!13218 Bool)) false) lt!2540570 true))))

(declare-fun b!7065624 () Bool)

(declare-fun res!2885099 () Bool)

(assert (=> b!7065624 (=> res!2885099 e!4247744)))

(get-info :version)

(assert (=> b!7065624 (= res!2885099 (not ((_ is Cons!68242) (exprs!7109 lt!2540521))))))

(declare-fun b!7065625 () Bool)

(assert (=> b!7065625 (= e!4247746 e!4247756)))

(declare-fun res!2885091 () Bool)

(assert (=> b!7065625 (=> res!2885091 e!4247756)))

(assert (=> b!7065625 (= res!2885091 (not (matchZipper!3153 lt!2540548 s!7408)))))

(declare-fun lt!2540531 () Unit!161920)

(assert (=> b!7065625 (= lt!2540531 (lemmaConcatPreservesForall!924 lt!2540552 (exprs!7109 ct2!306) lambda!423615))))

(declare-fun setElem!50097 () Context!13218)

(declare-fun setNonEmpty!50097 () Bool)

(declare-fun tp!1941516 () Bool)

(declare-fun inv!86891 (Context!13218) Bool)

(assert (=> setNonEmpty!50097 (= setRes!50097 (and tp!1941516 (inv!86891 setElem!50097) e!4247752))))

(declare-fun setRest!50097 () (InoxSet Context!13218))

(assert (=> setNonEmpty!50097 (= z1!570 ((_ map or) (store ((as const (Array Context!13218 Bool)) false) setElem!50097 true) setRest!50097))))

(declare-fun Unit!161923 () Unit!161920)

(assert (=> b!7065626 (= e!4247748 Unit!161923)))

(declare-fun lt!2540557 () Context!13218)

(declare-fun getWitness!1697 ((InoxSet Context!13218) Int) Context!13218)

(assert (=> b!7065626 (= lt!2540557 (getWitness!1697 lt!2540574 lambda!423617))))

(declare-fun lt!2540562 () Unit!161920)

(assert (=> b!7065626 (= lt!2540562 (lemmaContainsThenExists!145 lt!2540574 lt!2540570 lambda!423617))))

(assert (=> b!7065626 (exists!3636 lt!2540574 lambda!423617)))

(assert (=> b!7065626 (= lt!2540561 (store ((as const (Array Context!13218 Bool)) false) lt!2540521 true))))

(declare-fun lt!2540528 () Unit!161920)

(assert (=> b!7065626 (= lt!2540528 (lemmaContainsThenExists!145 lt!2540561 lt!2540521 lambda!423617))))

(assert (=> b!7065626 (exists!3636 lt!2540561 lambda!423617)))

(declare-fun lt!2540563 () Unit!161920)

(assert (=> b!7065626 (= lt!2540563 call!642087)))

(assert (=> b!7065626 call!642086))

(declare-fun b!7065627 () Bool)

(declare-fun res!2885095 () Bool)

(assert (=> b!7065627 (=> res!2885095 e!4247742)))

(assert (=> b!7065627 (= res!2885095 (>= (zipperDepthTotal!578 (Cons!68243 lt!2540570 Nil!68243)) lt!2540566))))

(declare-fun bm!642083 () Bool)

(assert (=> bm!642083 (= call!642086 (isDefined!13647 call!642088))))

(declare-fun e!4247750 () Bool)

(assert (=> b!7065610 (= e!4247750 (not e!4247745))))

(declare-fun res!2885109 () Bool)

(assert (=> b!7065610 (=> res!2885109 e!4247745)))

(assert (=> b!7065610 (= res!2885109 (not (matchZipper!3153 lt!2540541 s!7408)))))

(assert (=> b!7065610 (= lt!2540541 (store ((as const (Array Context!13218 Bool)) false) lt!2540523 true))))

(assert (=> b!7065610 (= lt!2540523 (getWitness!1697 lt!2540578 lambda!423613))))

(declare-fun lt!2540567 () List!68367)

(declare-fun exists!3637 (List!68367 Int) Bool)

(assert (=> b!7065610 (exists!3637 lt!2540567 lambda!423613)))

(declare-fun lt!2540554 () Unit!161920)

(declare-fun lemmaZipperMatchesExistsMatchingContext!534 (List!68367 List!68365) Unit!161920)

(assert (=> b!7065610 (= lt!2540554 (lemmaZipperMatchesExistsMatchingContext!534 lt!2540567 s!7408))))

(assert (=> b!7065610 (= lt!2540567 (toList!10954 lt!2540578))))

(declare-fun res!2885105 () Bool)

(assert (=> start!685898 (=> (not res!2885105) (not e!4247750))))

(assert (=> start!685898 (= res!2885105 (matchZipper!3153 lt!2540578 s!7408))))

(declare-fun appendTo!734 ((InoxSet Context!13218) Context!13218) (InoxSet Context!13218))

(assert (=> start!685898 (= lt!2540578 (appendTo!734 z1!570 ct2!306))))

(assert (=> start!685898 e!4247750))

(declare-fun condSetEmpty!50097 () Bool)

(assert (=> start!685898 (= condSetEmpty!50097 (= z1!570 ((as const (Array Context!13218 Bool)) false)))))

(assert (=> start!685898 setRes!50097))

(assert (=> start!685898 (and (inv!86891 ct2!306) e!4247741)))

(assert (=> start!685898 e!4247755))

(declare-fun b!7065628 () Bool)

(declare-fun res!2885111 () Bool)

(assert (=> b!7065628 (=> (not res!2885111) (not e!4247750))))

(assert (=> b!7065628 (= res!2885111 ((_ is Cons!68241) s!7408))))

(declare-fun b!7065629 () Bool)

(declare-fun res!2885107 () Bool)

(assert (=> b!7065629 (=> res!2885107 e!4247758)))

(assert (=> b!7065629 (= res!2885107 (not lt!2540530))))

(assert (= (and start!685898 res!2885105) b!7065628))

(assert (= (and b!7065628 res!2885111) b!7065610))

(assert (= (and b!7065610 (not res!2885109)) b!7065621))

(assert (= (and b!7065621 (not res!2885112)) b!7065603))

(assert (= (and b!7065603 (not res!2885093)) b!7065615))

(assert (= (and b!7065615 (not res!2885090)) b!7065612))

(assert (= (and b!7065612 (not res!2885089)) b!7065624))

(assert (= (and b!7065624 (not res!2885099)) b!7065613))

(assert (= (and b!7065613 (not res!2885106)) b!7065616))

(assert (= (and b!7065616 (not res!2885100)) b!7065618))

(assert (= (and b!7065618 (not res!2885094)) b!7065608))

(assert (= (and b!7065608 (not res!2885110)) b!7065611))

(assert (= (and b!7065608 res!2885097) b!7065606))

(assert (= (and b!7065608 (not res!2885098)) b!7065629))

(assert (= (and b!7065629 (not res!2885107)) b!7065601))

(assert (= (and b!7065601 (not res!2885096)) b!7065619))

(assert (= (and b!7065619 (not res!2885108)) b!7065625))

(assert (= (and b!7065625 (not res!2885091)) b!7065623))

(assert (= (and b!7065623 (not res!2885104)) b!7065627))

(assert (= (and b!7065627 (not res!2885095)) b!7065617))

(assert (= (and b!7065617 (not res!2885103)) b!7065622))

(assert (= (and b!7065622 (not res!2885102)) b!7065620))

(assert (= (and b!7065620 (not res!2885092)) b!7065609))

(assert (= (and b!7065609 c!1317465) b!7065626))

(assert (= (and b!7065609 (not c!1317465)) b!7065602))

(assert (= (and b!7065602 (not res!2885101)) b!7065607))

(assert (= (or b!7065626 b!7065602) bm!642081))

(assert (= (or b!7065626 b!7065602) bm!642082))

(assert (= (or b!7065626 b!7065602) bm!642083))

(assert (= (and start!685898 condSetEmpty!50097) setIsEmpty!50097))

(assert (= (and start!685898 (not condSetEmpty!50097)) setNonEmpty!50097))

(assert (= setNonEmpty!50097 b!7065604))

(assert (= start!685898 b!7065614))

(assert (= (and start!685898 ((_ is Cons!68241) s!7408)) b!7065605))

(declare-fun m!7788638 () Bool)

(assert (=> bm!642081 m!7788638))

(declare-fun m!7788640 () Bool)

(assert (=> b!7065603 m!7788640))

(declare-fun m!7788642 () Bool)

(assert (=> b!7065603 m!7788642))

(declare-fun m!7788644 () Bool)

(assert (=> b!7065603 m!7788644))

(declare-fun m!7788646 () Bool)

(assert (=> b!7065603 m!7788646))

(declare-fun m!7788648 () Bool)

(assert (=> b!7065626 m!7788648))

(declare-fun m!7788650 () Bool)

(assert (=> b!7065626 m!7788650))

(declare-fun m!7788652 () Bool)

(assert (=> b!7065626 m!7788652))

(declare-fun m!7788654 () Bool)

(assert (=> b!7065626 m!7788654))

(declare-fun m!7788656 () Bool)

(assert (=> b!7065626 m!7788656))

(declare-fun m!7788658 () Bool)

(assert (=> b!7065626 m!7788658))

(declare-fun m!7788660 () Bool)

(assert (=> b!7065610 m!7788660))

(declare-fun m!7788662 () Bool)

(assert (=> b!7065610 m!7788662))

(declare-fun m!7788664 () Bool)

(assert (=> b!7065610 m!7788664))

(declare-fun m!7788666 () Bool)

(assert (=> b!7065610 m!7788666))

(declare-fun m!7788668 () Bool)

(assert (=> b!7065610 m!7788668))

(declare-fun m!7788670 () Bool)

(assert (=> b!7065610 m!7788670))

(declare-fun m!7788672 () Bool)

(assert (=> b!7065611 m!7788672))

(assert (=> b!7065606 m!7788672))

(declare-fun m!7788674 () Bool)

(assert (=> b!7065606 m!7788674))

(assert (=> b!7065601 m!7788672))

(assert (=> b!7065601 m!7788674))

(declare-fun m!7788676 () Bool)

(assert (=> bm!642082 m!7788676))

(declare-fun m!7788678 () Bool)

(assert (=> b!7065622 m!7788678))

(assert (=> b!7065612 m!7788644))

(declare-fun m!7788680 () Bool)

(assert (=> b!7065612 m!7788680))

(declare-fun m!7788682 () Bool)

(assert (=> b!7065612 m!7788682))

(declare-fun m!7788684 () Bool)

(assert (=> b!7065612 m!7788684))

(declare-fun m!7788686 () Bool)

(assert (=> b!7065612 m!7788686))

(declare-fun m!7788688 () Bool)

(assert (=> b!7065609 m!7788688))

(declare-fun m!7788690 () Bool)

(assert (=> b!7065609 m!7788690))

(declare-fun m!7788692 () Bool)

(assert (=> b!7065609 m!7788692))

(declare-fun m!7788694 () Bool)

(assert (=> b!7065609 m!7788694))

(declare-fun m!7788696 () Bool)

(assert (=> b!7065609 m!7788696))

(declare-fun m!7788698 () Bool)

(assert (=> b!7065609 m!7788698))

(assert (=> b!7065609 m!7788690))

(declare-fun m!7788700 () Bool)

(assert (=> b!7065609 m!7788700))

(declare-fun m!7788702 () Bool)

(assert (=> b!7065613 m!7788702))

(declare-fun m!7788704 () Bool)

(assert (=> b!7065607 m!7788704))

(declare-fun m!7788706 () Bool)

(assert (=> b!7065602 m!7788706))

(declare-fun m!7788708 () Bool)

(assert (=> b!7065602 m!7788708))

(declare-fun m!7788710 () Bool)

(assert (=> b!7065602 m!7788710))

(declare-fun m!7788712 () Bool)

(assert (=> b!7065602 m!7788712))

(declare-fun m!7788714 () Bool)

(assert (=> b!7065602 m!7788714))

(declare-fun m!7788716 () Bool)

(assert (=> b!7065602 m!7788716))

(declare-fun m!7788718 () Bool)

(assert (=> b!7065602 m!7788718))

(declare-fun m!7788720 () Bool)

(assert (=> b!7065602 m!7788720))

(declare-fun m!7788722 () Bool)

(assert (=> b!7065602 m!7788722))

(declare-fun m!7788724 () Bool)

(assert (=> b!7065602 m!7788724))

(declare-fun m!7788726 () Bool)

(assert (=> b!7065602 m!7788726))

(assert (=> b!7065602 m!7788656))

(declare-fun m!7788728 () Bool)

(assert (=> b!7065619 m!7788728))

(declare-fun m!7788730 () Bool)

(assert (=> b!7065619 m!7788730))

(assert (=> b!7065619 m!7788674))

(assert (=> b!7065619 m!7788674))

(declare-fun m!7788732 () Bool)

(assert (=> b!7065619 m!7788732))

(declare-fun m!7788734 () Bool)

(assert (=> b!7065619 m!7788734))

(assert (=> b!7065619 m!7788674))

(declare-fun m!7788736 () Bool)

(assert (=> b!7065619 m!7788736))

(assert (=> b!7065619 m!7788674))

(declare-fun m!7788738 () Bool)

(assert (=> b!7065616 m!7788738))

(declare-fun m!7788740 () Bool)

(assert (=> b!7065616 m!7788740))

(declare-fun m!7788742 () Bool)

(assert (=> b!7065608 m!7788742))

(declare-fun m!7788744 () Bool)

(assert (=> b!7065608 m!7788744))

(assert (=> b!7065608 m!7788674))

(assert (=> b!7065608 m!7788674))

(assert (=> b!7065608 m!7788674))

(declare-fun m!7788746 () Bool)

(assert (=> b!7065608 m!7788746))

(declare-fun m!7788748 () Bool)

(assert (=> b!7065608 m!7788748))

(declare-fun m!7788750 () Bool)

(assert (=> b!7065617 m!7788750))

(declare-fun m!7788752 () Bool)

(assert (=> b!7065617 m!7788752))

(declare-fun m!7788754 () Bool)

(assert (=> b!7065617 m!7788754))

(declare-fun m!7788756 () Bool)

(assert (=> b!7065617 m!7788756))

(declare-fun m!7788758 () Bool)

(assert (=> b!7065617 m!7788758))

(declare-fun m!7788760 () Bool)

(assert (=> b!7065617 m!7788760))

(declare-fun m!7788762 () Bool)

(assert (=> b!7065621 m!7788762))

(declare-fun m!7788764 () Bool)

(assert (=> start!685898 m!7788764))

(declare-fun m!7788766 () Bool)

(assert (=> start!685898 m!7788766))

(declare-fun m!7788768 () Bool)

(assert (=> start!685898 m!7788768))

(declare-fun m!7788770 () Bool)

(assert (=> setNonEmpty!50097 m!7788770))

(declare-fun m!7788772 () Bool)

(assert (=> b!7065625 m!7788772))

(assert (=> b!7065625 m!7788674))

(assert (=> b!7065623 m!7788714))

(declare-fun m!7788774 () Bool)

(assert (=> b!7065623 m!7788774))

(declare-fun m!7788776 () Bool)

(assert (=> b!7065623 m!7788776))

(declare-fun m!7788778 () Bool)

(assert (=> b!7065623 m!7788778))

(declare-fun m!7788780 () Bool)

(assert (=> b!7065623 m!7788780))

(assert (=> b!7065623 m!7788674))

(declare-fun m!7788782 () Bool)

(assert (=> b!7065623 m!7788782))

(assert (=> b!7065623 m!7788674))

(assert (=> b!7065623 m!7788674))

(declare-fun m!7788784 () Bool)

(assert (=> b!7065623 m!7788784))

(assert (=> b!7065623 m!7788706))

(declare-fun m!7788786 () Bool)

(assert (=> b!7065623 m!7788786))

(declare-fun m!7788788 () Bool)

(assert (=> b!7065623 m!7788788))

(assert (=> b!7065623 m!7788674))

(declare-fun m!7788790 () Bool)

(assert (=> b!7065623 m!7788790))

(declare-fun m!7788792 () Bool)

(assert (=> b!7065623 m!7788792))

(assert (=> b!7065623 m!7788722))

(declare-fun m!7788794 () Bool)

(assert (=> b!7065615 m!7788794))

(assert (=> b!7065615 m!7788644))

(declare-fun m!7788796 () Bool)

(assert (=> b!7065620 m!7788796))

(assert (=> b!7065618 m!7788728))

(assert (=> b!7065618 m!7788792))

(assert (=> b!7065618 m!7788674))

(assert (=> b!7065618 m!7788674))

(declare-fun m!7788798 () Bool)

(assert (=> b!7065618 m!7788798))

(declare-fun m!7788800 () Bool)

(assert (=> b!7065627 m!7788800))

(declare-fun m!7788802 () Bool)

(assert (=> bm!642083 m!7788802))

(check-sat (not b!7065616) (not b!7065623) (not setNonEmpty!50097) (not b!7065607) (not b!7065615) (not b!7065605) (not b!7065611) (not b!7065627) (not b!7065613) tp_is_empty!44451 (not b!7065612) (not b!7065610) (not b!7065618) (not b!7065625) (not bm!642081) (not b!7065603) (not b!7065602) (not start!685898) (not b!7065620) (not b!7065601) (not b!7065604) (not b!7065609) (not bm!642083) (not b!7065617) (not b!7065619) (not b!7065626) (not b!7065622) (not b!7065614) (not bm!642082) (not b!7065606) (not b!7065608))
(check-sat)

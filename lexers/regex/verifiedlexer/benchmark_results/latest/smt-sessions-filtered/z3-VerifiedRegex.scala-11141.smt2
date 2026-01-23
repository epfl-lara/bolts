; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577774 () Bool)

(assert start!577774)

(declare-fun b!5550380 () Bool)

(assert (=> b!5550380 true))

(assert (=> b!5550380 true))

(declare-fun lambda!297628 () Int)

(declare-fun lambda!297627 () Int)

(assert (=> b!5550380 (not (= lambda!297628 lambda!297627))))

(assert (=> b!5550380 true))

(assert (=> b!5550380 true))

(declare-fun b!5550382 () Bool)

(assert (=> b!5550382 true))

(declare-fun b!5550372 () Bool)

(declare-fun res!2359480 () Bool)

(declare-fun e!3428330 () Bool)

(assert (=> b!5550372 (=> res!2359480 e!3428330)))

(declare-datatypes ((C!31328 0))(
  ( (C!31329 (val!25366 Int)) )
))
(declare-datatypes ((Regex!15529 0))(
  ( (ElementMatch!15529 (c!971473 C!31328)) (Concat!24374 (regOne!31570 Regex!15529) (regTwo!31570 Regex!15529)) (EmptyExpr!15529) (Star!15529 (reg!15858 Regex!15529)) (EmptyLang!15529) (Union!15529 (regOne!31571 Regex!15529) (regTwo!31571 Regex!15529)) )
))
(declare-fun r!7292 () Regex!15529)

(declare-datatypes ((List!62886 0))(
  ( (Nil!62762) (Cons!62762 (h!69210 Regex!15529) (t!376149 List!62886)) )
))
(declare-datatypes ((Context!9826 0))(
  ( (Context!9827 (exprs!5413 List!62886)) )
))
(declare-datatypes ((List!62887 0))(
  ( (Nil!62763) (Cons!62763 (h!69211 Context!9826) (t!376150 List!62887)) )
))
(declare-fun zl!343 () List!62887)

(declare-fun generalisedUnion!1392 (List!62886) Regex!15529)

(declare-fun unfocusZipperList!957 (List!62887) List!62886)

(assert (=> b!5550372 (= res!2359480 (not (= r!7292 (generalisedUnion!1392 (unfocusZipperList!957 zl!343)))))))

(declare-fun b!5550373 () Bool)

(declare-fun res!2359482 () Bool)

(assert (=> b!5550373 (=> res!2359482 e!3428330)))

(declare-fun generalisedConcat!1144 (List!62886) Regex!15529)

(assert (=> b!5550373 (= res!2359482 (not (= r!7292 (generalisedConcat!1144 (exprs!5413 (h!69211 zl!343))))))))

(declare-fun b!5550374 () Bool)

(declare-fun e!3428329 () Bool)

(assert (=> b!5550374 (= e!3428329 true)))

(declare-fun lt!2250160 () Int)

(declare-fun lt!2250154 () Context!9826)

(declare-fun zipperDepth!204 (List!62887) Int)

(assert (=> b!5550374 (= lt!2250160 (zipperDepth!204 (Cons!62763 lt!2250154 Nil!62763)))))

(declare-fun lt!2250159 () Int)

(declare-fun lt!2250165 () Context!9826)

(assert (=> b!5550374 (= lt!2250159 (zipperDepth!204 (Cons!62763 lt!2250165 Nil!62763)))))

(declare-fun res!2359477 () Bool)

(declare-fun e!3428325 () Bool)

(assert (=> start!577774 (=> (not res!2359477) (not e!3428325))))

(declare-fun validRegex!7265 (Regex!15529) Bool)

(assert (=> start!577774 (= res!2359477 (validRegex!7265 r!7292))))

(assert (=> start!577774 e!3428325))

(declare-fun e!3428326 () Bool)

(assert (=> start!577774 e!3428326))

(declare-fun condSetEmpty!36901 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9826))

(assert (=> start!577774 (= condSetEmpty!36901 (= z!1189 ((as const (Array Context!9826 Bool)) false)))))

(declare-fun setRes!36901 () Bool)

(assert (=> start!577774 setRes!36901))

(declare-fun e!3428324 () Bool)

(assert (=> start!577774 e!3428324))

(declare-fun e!3428321 () Bool)

(assert (=> start!577774 e!3428321))

(declare-fun b!5550375 () Bool)

(declare-fun e!3428319 () Bool)

(declare-fun tp!1531527 () Bool)

(assert (=> b!5550375 (= e!3428319 tp!1531527)))

(declare-fun b!5550376 () Bool)

(declare-fun res!2359485 () Bool)

(assert (=> b!5550376 (=> res!2359485 e!3428330)))

(get-info :version)

(assert (=> b!5550376 (= res!2359485 (or ((_ is EmptyExpr!15529) r!7292) ((_ is EmptyLang!15529) r!7292) ((_ is ElementMatch!15529) r!7292) ((_ is Union!15529) r!7292) (not ((_ is Concat!24374) r!7292))))))

(declare-fun b!5550377 () Bool)

(declare-fun res!2359483 () Bool)

(assert (=> b!5550377 (=> res!2359483 e!3428330)))

(declare-fun isEmpty!34553 (List!62887) Bool)

(assert (=> b!5550377 (= res!2359483 (not (isEmpty!34553 (t!376150 zl!343))))))

(declare-fun b!5550378 () Bool)

(declare-fun tp!1531531 () Bool)

(assert (=> b!5550378 (= e!3428326 tp!1531531)))

(declare-fun b!5550379 () Bool)

(declare-fun e!3428323 () Bool)

(declare-fun e!3428327 () Bool)

(assert (=> b!5550379 (= e!3428323 e!3428327)))

(declare-fun res!2359484 () Bool)

(assert (=> b!5550379 (=> res!2359484 e!3428327)))

(declare-fun lt!2250163 () (InoxSet Context!9826))

(declare-fun lt!2250152 () (InoxSet Context!9826))

(assert (=> b!5550379 (= res!2359484 (not (= lt!2250163 lt!2250152)))))

(declare-datatypes ((List!62888 0))(
  ( (Nil!62764) (Cons!62764 (h!69212 C!31328) (t!376151 List!62888)) )
))
(declare-fun s!2326 () List!62888)

(declare-fun lt!2250155 () Context!9826)

(declare-fun derivationStepZipperDown!871 (Regex!15529 Context!9826 C!31328) (InoxSet Context!9826))

(assert (=> b!5550379 (= lt!2250152 (derivationStepZipperDown!871 r!7292 lt!2250155 (h!69212 s!2326)))))

(assert (=> b!5550379 (= lt!2250155 (Context!9827 Nil!62762))))

(declare-fun derivationStepZipperUp!797 (Context!9826 C!31328) (InoxSet Context!9826))

(assert (=> b!5550379 (= lt!2250163 (derivationStepZipperUp!797 lt!2250154 (h!69212 s!2326)))))

(declare-fun lt!2250143 () List!62886)

(assert (=> b!5550379 (= lt!2250154 (Context!9827 lt!2250143))))

(assert (=> b!5550379 (= lt!2250143 (Cons!62762 r!7292 Nil!62762))))

(declare-fun lt!2250147 () (InoxSet Context!9826))

(declare-fun derivationStepZipper!1634 ((InoxSet Context!9826) C!31328) (InoxSet Context!9826))

(assert (=> b!5550379 (= lt!2250147 (derivationStepZipper!1634 z!1189 (h!69212 s!2326)))))

(assert (=> b!5550380 (= e!3428330 e!3428323)))

(declare-fun res!2359474 () Bool)

(assert (=> b!5550380 (=> res!2359474 e!3428323)))

(declare-fun lt!2250164 () Bool)

(declare-fun lt!2250167 () Bool)

(assert (=> b!5550380 (= res!2359474 (or (not (= lt!2250164 lt!2250167)) ((_ is Nil!62764) s!2326)))))

(declare-fun Exists!2629 (Int) Bool)

(assert (=> b!5550380 (= (Exists!2629 lambda!297627) (Exists!2629 lambda!297628))))

(declare-datatypes ((Unit!155518 0))(
  ( (Unit!155519) )
))
(declare-fun lt!2250149 () Unit!155518)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1258 (Regex!15529 Regex!15529 List!62888) Unit!155518)

(assert (=> b!5550380 (= lt!2250149 (lemmaExistCutMatchRandMatchRSpecEquivalent!1258 (regOne!31570 r!7292) (regTwo!31570 r!7292) s!2326))))

(assert (=> b!5550380 (= lt!2250167 (Exists!2629 lambda!297627))))

(declare-datatypes ((tuple2!65252 0))(
  ( (tuple2!65253 (_1!35929 List!62888) (_2!35929 List!62888)) )
))
(declare-datatypes ((Option!15538 0))(
  ( (None!15537) (Some!15537 (v!51576 tuple2!65252)) )
))
(declare-fun isDefined!12241 (Option!15538) Bool)

(declare-fun findConcatSeparation!1952 (Regex!15529 Regex!15529 List!62888 List!62888 List!62888) Option!15538)

(assert (=> b!5550380 (= lt!2250167 (isDefined!12241 (findConcatSeparation!1952 (regOne!31570 r!7292) (regTwo!31570 r!7292) Nil!62764 s!2326 s!2326)))))

(declare-fun lt!2250153 () Unit!155518)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1716 (Regex!15529 Regex!15529 List!62888) Unit!155518)

(assert (=> b!5550380 (= lt!2250153 (lemmaFindConcatSeparationEquivalentToExists!1716 (regOne!31570 r!7292) (regTwo!31570 r!7292) s!2326))))

(declare-fun b!5550381 () Bool)

(declare-fun res!2359486 () Bool)

(assert (=> b!5550381 (=> res!2359486 e!3428329)))

(declare-fun lt!2250142 () (InoxSet Context!9826))

(declare-fun lt!2250144 () Regex!15529)

(assert (=> b!5550381 (= res!2359486 (or (not (= lt!2250147 lt!2250142)) (not (= lt!2250144 r!7292)) (not (= (exprs!5413 (h!69211 zl!343)) lt!2250143))))))

(declare-fun e!3428320 () Bool)

(assert (=> b!5550382 (= e!3428327 e!3428320)))

(declare-fun res!2359478 () Bool)

(assert (=> b!5550382 (=> res!2359478 e!3428320)))

(assert (=> b!5550382 (= res!2359478 (not (= lt!2250147 lt!2250152)))))

(declare-fun lambda!297629 () Int)

(declare-fun flatMap!1142 ((InoxSet Context!9826) Int) (InoxSet Context!9826))

(assert (=> b!5550382 (= (flatMap!1142 z!1189 lambda!297629) (derivationStepZipperUp!797 (h!69211 zl!343) (h!69212 s!2326)))))

(declare-fun lt!2250157 () Unit!155518)

(declare-fun lemmaFlatMapOnSingletonSet!674 ((InoxSet Context!9826) Context!9826 Int) Unit!155518)

(assert (=> b!5550382 (= lt!2250157 (lemmaFlatMapOnSingletonSet!674 z!1189 (h!69211 zl!343) lambda!297629))))

(declare-fun b!5550383 () Bool)

(declare-fun tp!1531523 () Bool)

(declare-fun tp!1531525 () Bool)

(assert (=> b!5550383 (= e!3428326 (and tp!1531523 tp!1531525))))

(declare-fun b!5550384 () Bool)

(declare-fun res!2359479 () Bool)

(assert (=> b!5550384 (=> res!2359479 e!3428330)))

(assert (=> b!5550384 (= res!2359479 (not ((_ is Cons!62762) (exprs!5413 (h!69211 zl!343)))))))

(declare-fun b!5550385 () Bool)

(declare-fun e!3428322 () Bool)

(declare-fun tp!1531529 () Bool)

(assert (=> b!5550385 (= e!3428322 tp!1531529)))

(declare-fun b!5550386 () Bool)

(declare-fun tp_is_empty!40311 () Bool)

(assert (=> b!5550386 (= e!3428326 tp_is_empty!40311)))

(declare-fun b!5550387 () Bool)

(declare-fun e!3428328 () Bool)

(assert (=> b!5550387 (= e!3428325 e!3428328)))

(declare-fun res!2359476 () Bool)

(assert (=> b!5550387 (=> (not res!2359476) (not e!3428328))))

(assert (=> b!5550387 (= res!2359476 (= r!7292 lt!2250144))))

(declare-fun unfocusZipper!1271 (List!62887) Regex!15529)

(assert (=> b!5550387 (= lt!2250144 (unfocusZipper!1271 zl!343))))

(declare-fun b!5550388 () Bool)

(declare-fun res!2359475 () Bool)

(assert (=> b!5550388 (=> res!2359475 e!3428323)))

(declare-fun isEmpty!34554 (List!62886) Bool)

(assert (=> b!5550388 (= res!2359475 (not (isEmpty!34554 (t!376149 (exprs!5413 (h!69211 zl!343))))))))

(declare-fun tp!1531530 () Bool)

(declare-fun b!5550389 () Bool)

(declare-fun inv!82069 (Context!9826) Bool)

(assert (=> b!5550389 (= e!3428324 (and (inv!82069 (h!69211 zl!343)) e!3428319 tp!1531530))))

(declare-fun b!5550390 () Bool)

(declare-fun tp!1531526 () Bool)

(declare-fun tp!1531528 () Bool)

(assert (=> b!5550390 (= e!3428326 (and tp!1531526 tp!1531528))))

(declare-fun b!5550391 () Bool)

(assert (=> b!5550391 (= e!3428328 (not e!3428330))))

(declare-fun res!2359481 () Bool)

(assert (=> b!5550391 (=> res!2359481 e!3428330)))

(assert (=> b!5550391 (= res!2359481 (not ((_ is Cons!62763) zl!343)))))

(declare-fun matchRSpec!2632 (Regex!15529 List!62888) Bool)

(assert (=> b!5550391 (= lt!2250164 (matchRSpec!2632 r!7292 s!2326))))

(declare-fun matchR!7714 (Regex!15529 List!62888) Bool)

(assert (=> b!5550391 (= lt!2250164 (matchR!7714 r!7292 s!2326))))

(declare-fun lt!2250162 () Unit!155518)

(declare-fun mainMatchTheorem!2632 (Regex!15529 List!62888) Unit!155518)

(assert (=> b!5550391 (= lt!2250162 (mainMatchTheorem!2632 r!7292 s!2326))))

(declare-fun b!5550392 () Bool)

(assert (=> b!5550392 (= e!3428320 e!3428329)))

(declare-fun res!2359472 () Bool)

(assert (=> b!5550392 (=> res!2359472 e!3428329)))

(declare-fun nullable!5561 (Regex!15529) Bool)

(assert (=> b!5550392 (= res!2359472 (nullable!5561 (regOne!31570 r!7292)))))

(declare-fun lt!2250158 () (InoxSet Context!9826))

(assert (=> b!5550392 (= lt!2250158 (derivationStepZipperDown!871 (regTwo!31570 r!7292) lt!2250155 (h!69212 s!2326)))))

(declare-fun lt!2250150 () Context!9826)

(assert (=> b!5550392 (= lt!2250142 (derivationStepZipperDown!871 (regOne!31570 r!7292) lt!2250150 (h!69212 s!2326)))))

(declare-fun lt!2250156 () (InoxSet Context!9826))

(assert (=> b!5550392 (= (flatMap!1142 lt!2250156 lambda!297629) (derivationStepZipperUp!797 lt!2250150 (h!69212 s!2326)))))

(declare-fun lt!2250151 () Unit!155518)

(assert (=> b!5550392 (= lt!2250151 (lemmaFlatMapOnSingletonSet!674 lt!2250156 lt!2250150 lambda!297629))))

(declare-fun lt!2250148 () (InoxSet Context!9826))

(assert (=> b!5550392 (= (flatMap!1142 lt!2250148 lambda!297629) (derivationStepZipperUp!797 lt!2250165 (h!69212 s!2326)))))

(declare-fun lt!2250145 () Unit!155518)

(assert (=> b!5550392 (= lt!2250145 (lemmaFlatMapOnSingletonSet!674 lt!2250148 lt!2250165 lambda!297629))))

(declare-fun lt!2250166 () (InoxSet Context!9826))

(assert (=> b!5550392 (= lt!2250166 (derivationStepZipperUp!797 lt!2250150 (h!69212 s!2326)))))

(declare-fun lt!2250161 () (InoxSet Context!9826))

(assert (=> b!5550392 (= lt!2250161 (derivationStepZipperUp!797 lt!2250165 (h!69212 s!2326)))))

(assert (=> b!5550392 (= lt!2250156 (store ((as const (Array Context!9826 Bool)) false) lt!2250150 true))))

(declare-fun lt!2250146 () List!62886)

(assert (=> b!5550392 (= lt!2250150 (Context!9827 lt!2250146))))

(assert (=> b!5550392 (= lt!2250148 (store ((as const (Array Context!9826 Bool)) false) lt!2250165 true))))

(assert (=> b!5550392 (= lt!2250165 (Context!9827 (Cons!62762 (regOne!31570 r!7292) lt!2250146)))))

(assert (=> b!5550392 (= lt!2250146 (Cons!62762 (regTwo!31570 r!7292) Nil!62762))))

(declare-fun b!5550393 () Bool)

(declare-fun res!2359473 () Bool)

(assert (=> b!5550393 (=> (not res!2359473) (not e!3428325))))

(declare-fun toList!9313 ((InoxSet Context!9826)) List!62887)

(assert (=> b!5550393 (= res!2359473 (= (toList!9313 z!1189) zl!343))))

(declare-fun b!5550394 () Bool)

(declare-fun tp!1531524 () Bool)

(assert (=> b!5550394 (= e!3428321 (and tp_is_empty!40311 tp!1531524))))

(declare-fun setElem!36901 () Context!9826)

(declare-fun setNonEmpty!36901 () Bool)

(declare-fun tp!1531522 () Bool)

(assert (=> setNonEmpty!36901 (= setRes!36901 (and tp!1531522 (inv!82069 setElem!36901) e!3428322))))

(declare-fun setRest!36901 () (InoxSet Context!9826))

(assert (=> setNonEmpty!36901 (= z!1189 ((_ map or) (store ((as const (Array Context!9826 Bool)) false) setElem!36901 true) setRest!36901))))

(declare-fun setIsEmpty!36901 () Bool)

(assert (=> setIsEmpty!36901 setRes!36901))

(assert (= (and start!577774 res!2359477) b!5550393))

(assert (= (and b!5550393 res!2359473) b!5550387))

(assert (= (and b!5550387 res!2359476) b!5550391))

(assert (= (and b!5550391 (not res!2359481)) b!5550377))

(assert (= (and b!5550377 (not res!2359483)) b!5550373))

(assert (= (and b!5550373 (not res!2359482)) b!5550384))

(assert (= (and b!5550384 (not res!2359479)) b!5550372))

(assert (= (and b!5550372 (not res!2359480)) b!5550376))

(assert (= (and b!5550376 (not res!2359485)) b!5550380))

(assert (= (and b!5550380 (not res!2359474)) b!5550388))

(assert (= (and b!5550388 (not res!2359475)) b!5550379))

(assert (= (and b!5550379 (not res!2359484)) b!5550382))

(assert (= (and b!5550382 (not res!2359478)) b!5550392))

(assert (= (and b!5550392 (not res!2359472)) b!5550381))

(assert (= (and b!5550381 (not res!2359486)) b!5550374))

(assert (= (and start!577774 ((_ is ElementMatch!15529) r!7292)) b!5550386))

(assert (= (and start!577774 ((_ is Concat!24374) r!7292)) b!5550383))

(assert (= (and start!577774 ((_ is Star!15529) r!7292)) b!5550378))

(assert (= (and start!577774 ((_ is Union!15529) r!7292)) b!5550390))

(assert (= (and start!577774 condSetEmpty!36901) setIsEmpty!36901))

(assert (= (and start!577774 (not condSetEmpty!36901)) setNonEmpty!36901))

(assert (= setNonEmpty!36901 b!5550385))

(assert (= b!5550389 b!5550375))

(assert (= (and start!577774 ((_ is Cons!62763) zl!343)) b!5550389))

(assert (= (and start!577774 ((_ is Cons!62764) s!2326)) b!5550394))

(declare-fun m!6544508 () Bool)

(assert (=> b!5550374 m!6544508))

(declare-fun m!6544510 () Bool)

(assert (=> b!5550374 m!6544510))

(declare-fun m!6544512 () Bool)

(assert (=> b!5550382 m!6544512))

(declare-fun m!6544514 () Bool)

(assert (=> b!5550382 m!6544514))

(declare-fun m!6544516 () Bool)

(assert (=> b!5550382 m!6544516))

(declare-fun m!6544518 () Bool)

(assert (=> b!5550379 m!6544518))

(declare-fun m!6544520 () Bool)

(assert (=> b!5550379 m!6544520))

(declare-fun m!6544522 () Bool)

(assert (=> b!5550379 m!6544522))

(declare-fun m!6544524 () Bool)

(assert (=> b!5550387 m!6544524))

(declare-fun m!6544526 () Bool)

(assert (=> b!5550392 m!6544526))

(declare-fun m!6544528 () Bool)

(assert (=> b!5550392 m!6544528))

(declare-fun m!6544530 () Bool)

(assert (=> b!5550392 m!6544530))

(declare-fun m!6544532 () Bool)

(assert (=> b!5550392 m!6544532))

(declare-fun m!6544534 () Bool)

(assert (=> b!5550392 m!6544534))

(declare-fun m!6544536 () Bool)

(assert (=> b!5550392 m!6544536))

(declare-fun m!6544538 () Bool)

(assert (=> b!5550392 m!6544538))

(declare-fun m!6544540 () Bool)

(assert (=> b!5550392 m!6544540))

(declare-fun m!6544542 () Bool)

(assert (=> b!5550392 m!6544542))

(declare-fun m!6544544 () Bool)

(assert (=> b!5550392 m!6544544))

(declare-fun m!6544546 () Bool)

(assert (=> b!5550392 m!6544546))

(declare-fun m!6544548 () Bool)

(assert (=> b!5550393 m!6544548))

(declare-fun m!6544550 () Bool)

(assert (=> b!5550389 m!6544550))

(declare-fun m!6544552 () Bool)

(assert (=> b!5550388 m!6544552))

(declare-fun m!6544554 () Bool)

(assert (=> b!5550377 m!6544554))

(declare-fun m!6544556 () Bool)

(assert (=> setNonEmpty!36901 m!6544556))

(declare-fun m!6544558 () Bool)

(assert (=> b!5550380 m!6544558))

(declare-fun m!6544560 () Bool)

(assert (=> b!5550380 m!6544560))

(declare-fun m!6544562 () Bool)

(assert (=> b!5550380 m!6544562))

(declare-fun m!6544564 () Bool)

(assert (=> b!5550380 m!6544564))

(assert (=> b!5550380 m!6544562))

(declare-fun m!6544566 () Bool)

(assert (=> b!5550380 m!6544566))

(assert (=> b!5550380 m!6544558))

(declare-fun m!6544568 () Bool)

(assert (=> b!5550380 m!6544568))

(declare-fun m!6544570 () Bool)

(assert (=> b!5550372 m!6544570))

(assert (=> b!5550372 m!6544570))

(declare-fun m!6544572 () Bool)

(assert (=> b!5550372 m!6544572))

(declare-fun m!6544574 () Bool)

(assert (=> b!5550373 m!6544574))

(declare-fun m!6544576 () Bool)

(assert (=> start!577774 m!6544576))

(declare-fun m!6544578 () Bool)

(assert (=> b!5550391 m!6544578))

(declare-fun m!6544580 () Bool)

(assert (=> b!5550391 m!6544580))

(declare-fun m!6544582 () Bool)

(assert (=> b!5550391 m!6544582))

(check-sat (not b!5550385) (not b!5550392) (not b!5550387) (not b!5550375) (not b!5550394) (not b!5550388) (not start!577774) (not b!5550377) (not b!5550379) (not b!5550383) (not b!5550389) (not b!5550373) (not b!5550390) (not b!5550374) (not b!5550382) (not b!5550391) (not b!5550372) (not b!5550393) (not b!5550380) (not b!5550378) tp_is_empty!40311 (not setNonEmpty!36901))
(check-sat)

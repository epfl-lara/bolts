; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573838 () Bool)

(assert start!573838)

(declare-fun setNonEmpty!36339 () Bool)

(declare-fun setRes!36339 () Bool)

(declare-datatypes ((C!31184 0))(
  ( (C!31185 (val!25294 Int)) )
))
(declare-datatypes ((Regex!15457 0))(
  ( (ElementMatch!15457 (c!958671 C!31184)) (Concat!24302 (regOne!31426 Regex!15457) (regTwo!31426 Regex!15457)) (EmptyExpr!15457) (Star!15457 (reg!15786 Regex!15457)) (EmptyLang!15457) (Union!15457 (regOne!31427 Regex!15457) (regTwo!31427 Regex!15457)) )
))
(declare-datatypes ((List!62670 0))(
  ( (Nil!62546) (Cons!62546 (h!68994 Regex!15457) (t!375901 List!62670)) )
))
(declare-datatypes ((Context!9682 0))(
  ( (Context!9683 (exprs!5341 List!62670)) )
))
(declare-fun setElem!36339 () Context!9682)

(declare-fun e!3397206 () Bool)

(declare-fun tp!1509578 () Bool)

(declare-fun inv!81889 (Context!9682) Bool)

(assert (=> setNonEmpty!36339 (= setRes!36339 (and tp!1509578 (inv!81889 setElem!36339) e!3397206))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9682))

(declare-fun setRest!36339 () (InoxSet Context!9682))

(assert (=> setNonEmpty!36339 (= z!1189 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) setElem!36339 true) setRest!36339))))

(declare-fun b!5490422 () Bool)

(declare-fun res!2341803 () Bool)

(declare-fun e!3397205 () Bool)

(assert (=> b!5490422 (=> res!2341803 e!3397205)))

(declare-datatypes ((List!62671 0))(
  ( (Nil!62547) (Cons!62547 (h!68995 Context!9682) (t!375902 List!62671)) )
))
(declare-fun zl!343 () List!62671)

(declare-fun isEmpty!34345 (List!62671) Bool)

(assert (=> b!5490422 (= res!2341803 (not (isEmpty!34345 (t!375902 zl!343))))))

(declare-fun b!5490423 () Bool)

(declare-fun r!7292 () Regex!15457)

(declare-fun generalisedConcat!1072 (List!62670) Regex!15457)

(assert (=> b!5490423 (= e!3397205 (= r!7292 (generalisedConcat!1072 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun setIsEmpty!36339 () Bool)

(assert (=> setIsEmpty!36339 setRes!36339))

(declare-fun b!5490424 () Bool)

(declare-fun e!3397210 () Bool)

(assert (=> b!5490424 (= e!3397210 (not e!3397205))))

(declare-fun res!2341802 () Bool)

(assert (=> b!5490424 (=> res!2341802 e!3397205)))

(get-info :version)

(assert (=> b!5490424 (= res!2341802 (not ((_ is Cons!62547) zl!343)))))

(declare-datatypes ((List!62672 0))(
  ( (Nil!62548) (Cons!62548 (h!68996 C!31184) (t!375903 List!62672)) )
))
(declare-fun s!2326 () List!62672)

(declare-fun matchR!7642 (Regex!15457 List!62672) Bool)

(declare-fun matchRSpec!2560 (Regex!15457 List!62672) Bool)

(assert (=> b!5490424 (= (matchR!7642 r!7292 s!2326) (matchRSpec!2560 r!7292 s!2326))))

(declare-datatypes ((Unit!155374 0))(
  ( (Unit!155375) )
))
(declare-fun lt!2242419 () Unit!155374)

(declare-fun mainMatchTheorem!2560 (Regex!15457 List!62672) Unit!155374)

(assert (=> b!5490424 (= lt!2242419 (mainMatchTheorem!2560 r!7292 s!2326))))

(declare-fun b!5490425 () Bool)

(declare-fun e!3397209 () Bool)

(declare-fun tp!1509577 () Bool)

(assert (=> b!5490425 (= e!3397209 tp!1509577)))

(declare-fun e!3397204 () Bool)

(declare-fun b!5490426 () Bool)

(declare-fun tp!1509575 () Bool)

(assert (=> b!5490426 (= e!3397204 (and (inv!81889 (h!68995 zl!343)) e!3397209 tp!1509575))))

(declare-fun b!5490427 () Bool)

(declare-fun e!3397208 () Bool)

(declare-fun tp_is_empty!40167 () Bool)

(assert (=> b!5490427 (= e!3397208 tp_is_empty!40167)))

(declare-fun b!5490428 () Bool)

(declare-fun tp!1509573 () Bool)

(assert (=> b!5490428 (= e!3397206 tp!1509573)))

(declare-fun res!2341801 () Bool)

(assert (=> start!573838 (=> (not res!2341801) (not e!3397210))))

(declare-fun validRegex!7193 (Regex!15457) Bool)

(assert (=> start!573838 (= res!2341801 (validRegex!7193 r!7292))))

(assert (=> start!573838 e!3397210))

(assert (=> start!573838 e!3397208))

(declare-fun condSetEmpty!36339 () Bool)

(assert (=> start!573838 (= condSetEmpty!36339 (= z!1189 ((as const (Array Context!9682 Bool)) false)))))

(assert (=> start!573838 setRes!36339))

(assert (=> start!573838 e!3397204))

(declare-fun e!3397207 () Bool)

(assert (=> start!573838 e!3397207))

(declare-fun b!5490429 () Bool)

(declare-fun tp!1509572 () Bool)

(declare-fun tp!1509570 () Bool)

(assert (=> b!5490429 (= e!3397208 (and tp!1509572 tp!1509570))))

(declare-fun b!5490430 () Bool)

(declare-fun tp!1509571 () Bool)

(declare-fun tp!1509579 () Bool)

(assert (=> b!5490430 (= e!3397208 (and tp!1509571 tp!1509579))))

(declare-fun b!5490431 () Bool)

(declare-fun res!2341804 () Bool)

(assert (=> b!5490431 (=> (not res!2341804) (not e!3397210))))

(declare-fun toList!9241 ((InoxSet Context!9682)) List!62671)

(assert (=> b!5490431 (= res!2341804 (= (toList!9241 z!1189) zl!343))))

(declare-fun b!5490432 () Bool)

(declare-fun tp!1509576 () Bool)

(assert (=> b!5490432 (= e!3397208 tp!1509576)))

(declare-fun b!5490433 () Bool)

(declare-fun res!2341800 () Bool)

(assert (=> b!5490433 (=> (not res!2341800) (not e!3397210))))

(declare-fun unfocusZipper!1199 (List!62671) Regex!15457)

(assert (=> b!5490433 (= res!2341800 (= r!7292 (unfocusZipper!1199 zl!343)))))

(declare-fun b!5490434 () Bool)

(declare-fun tp!1509574 () Bool)

(assert (=> b!5490434 (= e!3397207 (and tp_is_empty!40167 tp!1509574))))

(assert (= (and start!573838 res!2341801) b!5490431))

(assert (= (and b!5490431 res!2341804) b!5490433))

(assert (= (and b!5490433 res!2341800) b!5490424))

(assert (= (and b!5490424 (not res!2341802)) b!5490422))

(assert (= (and b!5490422 (not res!2341803)) b!5490423))

(assert (= (and start!573838 ((_ is ElementMatch!15457) r!7292)) b!5490427))

(assert (= (and start!573838 ((_ is Concat!24302) r!7292)) b!5490430))

(assert (= (and start!573838 ((_ is Star!15457) r!7292)) b!5490432))

(assert (= (and start!573838 ((_ is Union!15457) r!7292)) b!5490429))

(assert (= (and start!573838 condSetEmpty!36339) setIsEmpty!36339))

(assert (= (and start!573838 (not condSetEmpty!36339)) setNonEmpty!36339))

(assert (= setNonEmpty!36339 b!5490428))

(assert (= b!5490426 b!5490425))

(assert (= (and start!573838 ((_ is Cons!62547) zl!343)) b!5490426))

(assert (= (and start!573838 ((_ is Cons!62548) s!2326)) b!5490434))

(declare-fun m!6503612 () Bool)

(assert (=> b!5490431 m!6503612))

(declare-fun m!6503614 () Bool)

(assert (=> b!5490433 m!6503614))

(declare-fun m!6503616 () Bool)

(assert (=> b!5490423 m!6503616))

(declare-fun m!6503618 () Bool)

(assert (=> b!5490422 m!6503618))

(declare-fun m!6503620 () Bool)

(assert (=> start!573838 m!6503620))

(declare-fun m!6503622 () Bool)

(assert (=> b!5490424 m!6503622))

(declare-fun m!6503624 () Bool)

(assert (=> b!5490424 m!6503624))

(declare-fun m!6503626 () Bool)

(assert (=> b!5490424 m!6503626))

(declare-fun m!6503628 () Bool)

(assert (=> setNonEmpty!36339 m!6503628))

(declare-fun m!6503630 () Bool)

(assert (=> b!5490426 m!6503630))

(check-sat (not setNonEmpty!36339) (not start!573838) (not b!5490422) (not b!5490425) (not b!5490432) (not b!5490426) (not b!5490424) (not b!5490434) (not b!5490429) (not b!5490430) (not b!5490431) (not b!5490423) (not b!5490428) (not b!5490433) tp_is_empty!40167)
(check-sat)
(get-model)

(declare-fun d!1741718 () Bool)

(declare-fun e!3397213 () Bool)

(assert (=> d!1741718 e!3397213))

(declare-fun res!2341807 () Bool)

(assert (=> d!1741718 (=> (not res!2341807) (not e!3397213))))

(declare-fun lt!2242422 () List!62671)

(declare-fun noDuplicate!1467 (List!62671) Bool)

(assert (=> d!1741718 (= res!2341807 (noDuplicate!1467 lt!2242422))))

(declare-fun choose!41756 ((InoxSet Context!9682)) List!62671)

(assert (=> d!1741718 (= lt!2242422 (choose!41756 z!1189))))

(assert (=> d!1741718 (= (toList!9241 z!1189) lt!2242422)))

(declare-fun b!5490437 () Bool)

(declare-fun content!11229 (List!62671) (InoxSet Context!9682))

(assert (=> b!5490437 (= e!3397213 (= (content!11229 lt!2242422) z!1189))))

(assert (= (and d!1741718 res!2341807) b!5490437))

(declare-fun m!6503632 () Bool)

(assert (=> d!1741718 m!6503632))

(declare-fun m!6503634 () Bool)

(assert (=> d!1741718 m!6503634))

(declare-fun m!6503636 () Bool)

(assert (=> b!5490437 m!6503636))

(assert (=> b!5490431 d!1741718))

(declare-fun d!1741720 () Bool)

(declare-fun lambda!294021 () Int)

(declare-fun forall!14650 (List!62670 Int) Bool)

(assert (=> d!1741720 (= (inv!81889 (h!68995 zl!343)) (forall!14650 (exprs!5341 (h!68995 zl!343)) lambda!294021))))

(declare-fun bs!1267194 () Bool)

(assert (= bs!1267194 d!1741720))

(declare-fun m!6503646 () Bool)

(assert (=> bs!1267194 m!6503646))

(assert (=> b!5490426 d!1741720))

(declare-fun bs!1267195 () Bool)

(declare-fun d!1741726 () Bool)

(assert (= bs!1267195 (and d!1741726 d!1741720)))

(declare-fun lambda!294022 () Int)

(assert (=> bs!1267195 (= lambda!294022 lambda!294021)))

(assert (=> d!1741726 (= (inv!81889 setElem!36339) (forall!14650 (exprs!5341 setElem!36339) lambda!294022))))

(declare-fun bs!1267196 () Bool)

(assert (= bs!1267196 d!1741726))

(declare-fun m!6503648 () Bool)

(assert (=> bs!1267196 m!6503648))

(assert (=> setNonEmpty!36339 d!1741726))

(declare-fun bs!1267198 () Bool)

(declare-fun d!1741728 () Bool)

(assert (= bs!1267198 (and d!1741728 d!1741720)))

(declare-fun lambda!294026 () Int)

(assert (=> bs!1267198 (= lambda!294026 lambda!294021)))

(declare-fun bs!1267199 () Bool)

(assert (= bs!1267199 (and d!1741728 d!1741726)))

(assert (=> bs!1267199 (= lambda!294026 lambda!294022)))

(declare-fun e!3397271 () Bool)

(assert (=> d!1741728 e!3397271))

(declare-fun res!2341837 () Bool)

(assert (=> d!1741728 (=> (not res!2341837) (not e!3397271))))

(declare-fun lt!2242431 () Regex!15457)

(assert (=> d!1741728 (= res!2341837 (validRegex!7193 lt!2242431))))

(declare-fun e!3397270 () Regex!15457)

(assert (=> d!1741728 (= lt!2242431 e!3397270)))

(declare-fun c!958701 () Bool)

(declare-fun e!3397269 () Bool)

(assert (=> d!1741728 (= c!958701 e!3397269)))

(declare-fun res!2341836 () Bool)

(assert (=> d!1741728 (=> (not res!2341836) (not e!3397269))))

(assert (=> d!1741728 (= res!2341836 ((_ is Cons!62546) (exprs!5341 (h!68995 zl!343))))))

(assert (=> d!1741728 (forall!14650 (exprs!5341 (h!68995 zl!343)) lambda!294026)))

(assert (=> d!1741728 (= (generalisedConcat!1072 (exprs!5341 (h!68995 zl!343))) lt!2242431)))

(declare-fun b!5490518 () Bool)

(declare-fun e!3397273 () Bool)

(assert (=> b!5490518 (= e!3397271 e!3397273)))

(declare-fun c!958698 () Bool)

(declare-fun isEmpty!34347 (List!62670) Bool)

(assert (=> b!5490518 (= c!958698 (isEmpty!34347 (exprs!5341 (h!68995 zl!343))))))

(declare-fun b!5490519 () Bool)

(declare-fun isEmptyExpr!1048 (Regex!15457) Bool)

(assert (=> b!5490519 (= e!3397273 (isEmptyExpr!1048 lt!2242431))))

(declare-fun b!5490520 () Bool)

(assert (=> b!5490520 (= e!3397270 (h!68994 (exprs!5341 (h!68995 zl!343))))))

(declare-fun b!5490521 () Bool)

(assert (=> b!5490521 (= e!3397269 (isEmpty!34347 (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5490522 () Bool)

(declare-fun e!3397268 () Regex!15457)

(assert (=> b!5490522 (= e!3397268 EmptyExpr!15457)))

(declare-fun b!5490523 () Bool)

(declare-fun e!3397272 () Bool)

(declare-fun head!11754 (List!62670) Regex!15457)

(assert (=> b!5490523 (= e!3397272 (= lt!2242431 (head!11754 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5490524 () Bool)

(declare-fun isConcat!571 (Regex!15457) Bool)

(assert (=> b!5490524 (= e!3397272 (isConcat!571 lt!2242431))))

(declare-fun b!5490525 () Bool)

(assert (=> b!5490525 (= e!3397268 (Concat!24302 (h!68994 (exprs!5341 (h!68995 zl!343))) (generalisedConcat!1072 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5490526 () Bool)

(assert (=> b!5490526 (= e!3397270 e!3397268)))

(declare-fun c!958699 () Bool)

(assert (=> b!5490526 (= c!958699 ((_ is Cons!62546) (exprs!5341 (h!68995 zl!343))))))

(declare-fun b!5490527 () Bool)

(assert (=> b!5490527 (= e!3397273 e!3397272)))

(declare-fun c!958700 () Bool)

(declare-fun tail!10849 (List!62670) List!62670)

(assert (=> b!5490527 (= c!958700 (isEmpty!34347 (tail!10849 (exprs!5341 (h!68995 zl!343)))))))

(assert (= (and d!1741728 res!2341836) b!5490521))

(assert (= (and d!1741728 c!958701) b!5490520))

(assert (= (and d!1741728 (not c!958701)) b!5490526))

(assert (= (and b!5490526 c!958699) b!5490525))

(assert (= (and b!5490526 (not c!958699)) b!5490522))

(assert (= (and d!1741728 res!2341837) b!5490518))

(assert (= (and b!5490518 c!958698) b!5490519))

(assert (= (and b!5490518 (not c!958698)) b!5490527))

(assert (= (and b!5490527 c!958700) b!5490523))

(assert (= (and b!5490527 (not c!958700)) b!5490524))

(declare-fun m!6503676 () Bool)

(assert (=> b!5490518 m!6503676))

(declare-fun m!6503678 () Bool)

(assert (=> b!5490523 m!6503678))

(declare-fun m!6503680 () Bool)

(assert (=> b!5490521 m!6503680))

(declare-fun m!6503682 () Bool)

(assert (=> d!1741728 m!6503682))

(declare-fun m!6503684 () Bool)

(assert (=> d!1741728 m!6503684))

(declare-fun m!6503686 () Bool)

(assert (=> b!5490525 m!6503686))

(declare-fun m!6503688 () Bool)

(assert (=> b!5490524 m!6503688))

(declare-fun m!6503690 () Bool)

(assert (=> b!5490527 m!6503690))

(assert (=> b!5490527 m!6503690))

(declare-fun m!6503692 () Bool)

(assert (=> b!5490527 m!6503692))

(declare-fun m!6503694 () Bool)

(assert (=> b!5490519 m!6503694))

(assert (=> b!5490423 d!1741728))

(declare-fun d!1741734 () Bool)

(assert (=> d!1741734 (= (isEmpty!34345 (t!375902 zl!343)) ((_ is Nil!62547) (t!375902 zl!343)))))

(assert (=> b!5490422 d!1741734))

(declare-fun bm!404795 () Bool)

(declare-fun call!404802 () Bool)

(declare-fun call!404800 () Bool)

(assert (=> bm!404795 (= call!404802 call!404800)))

(declare-fun b!5490588 () Bool)

(declare-fun res!2341875 () Bool)

(declare-fun e!3397311 () Bool)

(assert (=> b!5490588 (=> res!2341875 e!3397311)))

(assert (=> b!5490588 (= res!2341875 (not ((_ is Concat!24302) r!7292)))))

(declare-fun e!3397309 () Bool)

(assert (=> b!5490588 (= e!3397309 e!3397311)))

(declare-fun b!5490589 () Bool)

(declare-fun e!3397312 () Bool)

(declare-fun call!404801 () Bool)

(assert (=> b!5490589 (= e!3397312 call!404801)))

(declare-fun b!5490590 () Bool)

(declare-fun e!3397313 () Bool)

(assert (=> b!5490590 (= e!3397313 call!404801)))

(declare-fun b!5490591 () Bool)

(declare-fun res!2341876 () Bool)

(assert (=> b!5490591 (=> (not res!2341876) (not e!3397312))))

(assert (=> b!5490591 (= res!2341876 call!404802)))

(assert (=> b!5490591 (= e!3397309 e!3397312)))

(declare-fun b!5490592 () Bool)

(declare-fun e!3397315 () Bool)

(assert (=> b!5490592 (= e!3397315 call!404800)))

(declare-fun d!1741736 () Bool)

(declare-fun res!2341873 () Bool)

(declare-fun e!3397310 () Bool)

(assert (=> d!1741736 (=> res!2341873 e!3397310)))

(assert (=> d!1741736 (= res!2341873 ((_ is ElementMatch!15457) r!7292))))

(assert (=> d!1741736 (= (validRegex!7193 r!7292) e!3397310)))

(declare-fun b!5490593 () Bool)

(declare-fun e!3397314 () Bool)

(assert (=> b!5490593 (= e!3397314 e!3397315)))

(declare-fun res!2341874 () Bool)

(declare-fun nullable!5500 (Regex!15457) Bool)

(assert (=> b!5490593 (= res!2341874 (not (nullable!5500 (reg!15786 r!7292))))))

(assert (=> b!5490593 (=> (not res!2341874) (not e!3397315))))

(declare-fun b!5490594 () Bool)

(assert (=> b!5490594 (= e!3397311 e!3397313)))

(declare-fun res!2341872 () Bool)

(assert (=> b!5490594 (=> (not res!2341872) (not e!3397313))))

(assert (=> b!5490594 (= res!2341872 call!404802)))

(declare-fun b!5490595 () Bool)

(assert (=> b!5490595 (= e!3397314 e!3397309)))

(declare-fun c!958715 () Bool)

(assert (=> b!5490595 (= c!958715 ((_ is Union!15457) r!7292))))

(declare-fun b!5490596 () Bool)

(assert (=> b!5490596 (= e!3397310 e!3397314)))

(declare-fun c!958716 () Bool)

(assert (=> b!5490596 (= c!958716 ((_ is Star!15457) r!7292))))

(declare-fun bm!404796 () Bool)

(assert (=> bm!404796 (= call!404801 (validRegex!7193 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))

(declare-fun bm!404797 () Bool)

(assert (=> bm!404797 (= call!404800 (validRegex!7193 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))

(assert (= (and d!1741736 (not res!2341873)) b!5490596))

(assert (= (and b!5490596 c!958716) b!5490593))

(assert (= (and b!5490596 (not c!958716)) b!5490595))

(assert (= (and b!5490593 res!2341874) b!5490592))

(assert (= (and b!5490595 c!958715) b!5490591))

(assert (= (and b!5490595 (not c!958715)) b!5490588))

(assert (= (and b!5490591 res!2341876) b!5490589))

(assert (= (and b!5490588 (not res!2341875)) b!5490594))

(assert (= (and b!5490594 res!2341872) b!5490590))

(assert (= (or b!5490589 b!5490590) bm!404796))

(assert (= (or b!5490591 b!5490594) bm!404795))

(assert (= (or b!5490592 bm!404795) bm!404797))

(declare-fun m!6503710 () Bool)

(assert (=> b!5490593 m!6503710))

(declare-fun m!6503712 () Bool)

(assert (=> bm!404796 m!6503712))

(declare-fun m!6503714 () Bool)

(assert (=> bm!404797 m!6503714))

(assert (=> start!573838 d!1741736))

(declare-fun d!1741740 () Bool)

(declare-fun lt!2242437 () Regex!15457)

(assert (=> d!1741740 (validRegex!7193 lt!2242437)))

(declare-fun generalisedUnion!1319 (List!62670) Regex!15457)

(declare-fun unfocusZipperList!884 (List!62671) List!62670)

(assert (=> d!1741740 (= lt!2242437 (generalisedUnion!1319 (unfocusZipperList!884 zl!343)))))

(assert (=> d!1741740 (= (unfocusZipper!1199 zl!343) lt!2242437)))

(declare-fun bs!1267200 () Bool)

(assert (= bs!1267200 d!1741740))

(declare-fun m!6503716 () Bool)

(assert (=> bs!1267200 m!6503716))

(declare-fun m!6503718 () Bool)

(assert (=> bs!1267200 m!6503718))

(assert (=> bs!1267200 m!6503718))

(declare-fun m!6503720 () Bool)

(assert (=> bs!1267200 m!6503720))

(assert (=> b!5490433 d!1741740))

(declare-fun b!5490668 () Bool)

(declare-fun e!3397356 () Bool)

(declare-fun lt!2242440 () Bool)

(assert (=> b!5490668 (= e!3397356 (not lt!2242440))))

(declare-fun b!5490669 () Bool)

(declare-fun res!2341918 () Bool)

(declare-fun e!3397361 () Bool)

(assert (=> b!5490669 (=> (not res!2341918) (not e!3397361))))

(declare-fun call!404811 () Bool)

(assert (=> b!5490669 (= res!2341918 (not call!404811))))

(declare-fun b!5490670 () Bool)

(declare-fun res!2341919 () Bool)

(declare-fun e!3397359 () Bool)

(assert (=> b!5490670 (=> res!2341919 e!3397359)))

(assert (=> b!5490670 (= res!2341919 (not ((_ is ElementMatch!15457) r!7292)))))

(assert (=> b!5490670 (= e!3397356 e!3397359)))

(declare-fun b!5490671 () Bool)

(declare-fun res!2341914 () Bool)

(declare-fun e!3397355 () Bool)

(assert (=> b!5490671 (=> res!2341914 e!3397355)))

(declare-fun isEmpty!34349 (List!62672) Bool)

(declare-fun tail!10851 (List!62672) List!62672)

(assert (=> b!5490671 (= res!2341914 (not (isEmpty!34349 (tail!10851 s!2326))))))

(declare-fun b!5490672 () Bool)

(declare-fun head!11756 (List!62672) C!31184)

(assert (=> b!5490672 (= e!3397355 (not (= (head!11756 s!2326) (c!958671 r!7292))))))

(declare-fun b!5490673 () Bool)

(declare-fun e!3397358 () Bool)

(assert (=> b!5490673 (= e!3397358 (nullable!5500 r!7292))))

(declare-fun bm!404806 () Bool)

(assert (=> bm!404806 (= call!404811 (isEmpty!34349 s!2326))))

(declare-fun d!1741742 () Bool)

(declare-fun e!3397357 () Bool)

(assert (=> d!1741742 e!3397357))

(declare-fun c!958736 () Bool)

(assert (=> d!1741742 (= c!958736 ((_ is EmptyExpr!15457) r!7292))))

(assert (=> d!1741742 (= lt!2242440 e!3397358)))

(declare-fun c!958735 () Bool)

(assert (=> d!1741742 (= c!958735 (isEmpty!34349 s!2326))))

(assert (=> d!1741742 (validRegex!7193 r!7292)))

(assert (=> d!1741742 (= (matchR!7642 r!7292 s!2326) lt!2242440)))

(declare-fun b!5490674 () Bool)

(declare-fun res!2341912 () Bool)

(assert (=> b!5490674 (=> (not res!2341912) (not e!3397361))))

(assert (=> b!5490674 (= res!2341912 (isEmpty!34349 (tail!10851 s!2326)))))

(declare-fun b!5490675 () Bool)

(assert (=> b!5490675 (= e!3397361 (= (head!11756 s!2326) (c!958671 r!7292)))))

(declare-fun b!5490676 () Bool)

(declare-fun e!3397360 () Bool)

(assert (=> b!5490676 (= e!3397360 e!3397355)))

(declare-fun res!2341913 () Bool)

(assert (=> b!5490676 (=> res!2341913 e!3397355)))

(assert (=> b!5490676 (= res!2341913 call!404811)))

(declare-fun b!5490677 () Bool)

(assert (=> b!5490677 (= e!3397357 (= lt!2242440 call!404811))))

(declare-fun b!5490678 () Bool)

(assert (=> b!5490678 (= e!3397359 e!3397360)))

(declare-fun res!2341915 () Bool)

(assert (=> b!5490678 (=> (not res!2341915) (not e!3397360))))

(assert (=> b!5490678 (= res!2341915 (not lt!2242440))))

(declare-fun b!5490679 () Bool)

(declare-fun derivativeStep!4341 (Regex!15457 C!31184) Regex!15457)

(assert (=> b!5490679 (= e!3397358 (matchR!7642 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (tail!10851 s!2326)))))

(declare-fun b!5490680 () Bool)

(declare-fun res!2341916 () Bool)

(assert (=> b!5490680 (=> res!2341916 e!3397359)))

(assert (=> b!5490680 (= res!2341916 e!3397361)))

(declare-fun res!2341917 () Bool)

(assert (=> b!5490680 (=> (not res!2341917) (not e!3397361))))

(assert (=> b!5490680 (= res!2341917 lt!2242440)))

(declare-fun b!5490681 () Bool)

(assert (=> b!5490681 (= e!3397357 e!3397356)))

(declare-fun c!958737 () Bool)

(assert (=> b!5490681 (= c!958737 ((_ is EmptyLang!15457) r!7292))))

(assert (= (and d!1741742 c!958735) b!5490673))

(assert (= (and d!1741742 (not c!958735)) b!5490679))

(assert (= (and d!1741742 c!958736) b!5490677))

(assert (= (and d!1741742 (not c!958736)) b!5490681))

(assert (= (and b!5490681 c!958737) b!5490668))

(assert (= (and b!5490681 (not c!958737)) b!5490670))

(assert (= (and b!5490670 (not res!2341919)) b!5490680))

(assert (= (and b!5490680 res!2341917) b!5490669))

(assert (= (and b!5490669 res!2341918) b!5490674))

(assert (= (and b!5490674 res!2341912) b!5490675))

(assert (= (and b!5490680 (not res!2341916)) b!5490678))

(assert (= (and b!5490678 res!2341915) b!5490676))

(assert (= (and b!5490676 (not res!2341913)) b!5490671))

(assert (= (and b!5490671 (not res!2341914)) b!5490672))

(assert (= (or b!5490677 b!5490669 b!5490676) bm!404806))

(declare-fun m!6503722 () Bool)

(assert (=> b!5490675 m!6503722))

(declare-fun m!6503724 () Bool)

(assert (=> b!5490674 m!6503724))

(assert (=> b!5490674 m!6503724))

(declare-fun m!6503726 () Bool)

(assert (=> b!5490674 m!6503726))

(declare-fun m!6503728 () Bool)

(assert (=> d!1741742 m!6503728))

(assert (=> d!1741742 m!6503620))

(assert (=> b!5490671 m!6503724))

(assert (=> b!5490671 m!6503724))

(assert (=> b!5490671 m!6503726))

(assert (=> bm!404806 m!6503728))

(assert (=> b!5490672 m!6503722))

(assert (=> b!5490679 m!6503722))

(assert (=> b!5490679 m!6503722))

(declare-fun m!6503730 () Bool)

(assert (=> b!5490679 m!6503730))

(assert (=> b!5490679 m!6503724))

(assert (=> b!5490679 m!6503730))

(assert (=> b!5490679 m!6503724))

(declare-fun m!6503732 () Bool)

(assert (=> b!5490679 m!6503732))

(declare-fun m!6503734 () Bool)

(assert (=> b!5490673 m!6503734))

(assert (=> b!5490424 d!1741742))

(declare-fun b!5490772 () Bool)

(assert (=> b!5490772 true))

(assert (=> b!5490772 true))

(declare-fun bs!1267207 () Bool)

(declare-fun b!5490781 () Bool)

(assert (= bs!1267207 (and b!5490781 b!5490772)))

(declare-fun lambda!294039 () Int)

(declare-fun lambda!294038 () Int)

(assert (=> bs!1267207 (not (= lambda!294039 lambda!294038))))

(assert (=> b!5490781 true))

(assert (=> b!5490781 true))

(declare-fun e!3397404 () Bool)

(declare-fun call!404816 () Bool)

(assert (=> b!5490772 (= e!3397404 call!404816)))

(declare-fun b!5490773 () Bool)

(declare-fun e!3397403 () Bool)

(assert (=> b!5490773 (= e!3397403 (= s!2326 (Cons!62548 (c!958671 r!7292) Nil!62548)))))

(declare-fun b!5490774 () Bool)

(declare-fun e!3397407 () Bool)

(declare-fun e!3397405 () Bool)

(assert (=> b!5490774 (= e!3397407 e!3397405)))

(declare-fun c!958747 () Bool)

(assert (=> b!5490774 (= c!958747 ((_ is Star!15457) r!7292))))

(declare-fun b!5490775 () Bool)

(declare-fun c!958746 () Bool)

(assert (=> b!5490775 (= c!958746 ((_ is ElementMatch!15457) r!7292))))

(declare-fun e!3397406 () Bool)

(assert (=> b!5490775 (= e!3397406 e!3397403)))

(declare-fun b!5490776 () Bool)

(declare-fun e!3397409 () Bool)

(assert (=> b!5490776 (= e!3397407 e!3397409)))

(declare-fun res!2341936 () Bool)

(assert (=> b!5490776 (= res!2341936 (matchRSpec!2560 (regOne!31427 r!7292) s!2326))))

(assert (=> b!5490776 (=> res!2341936 e!3397409)))

(declare-fun bm!404811 () Bool)

(declare-fun call!404817 () Bool)

(assert (=> bm!404811 (= call!404817 (isEmpty!34349 s!2326))))

(declare-fun bm!404812 () Bool)

(declare-fun Exists!2567 (Int) Bool)

(assert (=> bm!404812 (= call!404816 (Exists!2567 (ite c!958747 lambda!294038 lambda!294039)))))

(declare-fun b!5490778 () Bool)

(assert (=> b!5490778 (= e!3397409 (matchRSpec!2560 (regTwo!31427 r!7292) s!2326))))

(declare-fun b!5490779 () Bool)

(declare-fun e!3397408 () Bool)

(assert (=> b!5490779 (= e!3397408 call!404817)))

(declare-fun b!5490780 () Bool)

(declare-fun res!2341937 () Bool)

(assert (=> b!5490780 (=> res!2341937 e!3397404)))

(assert (=> b!5490780 (= res!2341937 call!404817)))

(assert (=> b!5490780 (= e!3397405 e!3397404)))

(assert (=> b!5490781 (= e!3397405 call!404816)))

(declare-fun b!5490782 () Bool)

(declare-fun c!958748 () Bool)

(assert (=> b!5490782 (= c!958748 ((_ is Union!15457) r!7292))))

(assert (=> b!5490782 (= e!3397403 e!3397407)))

(declare-fun d!1741744 () Bool)

(declare-fun c!958749 () Bool)

(assert (=> d!1741744 (= c!958749 ((_ is EmptyExpr!15457) r!7292))))

(assert (=> d!1741744 (= (matchRSpec!2560 r!7292 s!2326) e!3397408)))

(declare-fun b!5490777 () Bool)

(assert (=> b!5490777 (= e!3397408 e!3397406)))

(declare-fun res!2341938 () Bool)

(assert (=> b!5490777 (= res!2341938 (not ((_ is EmptyLang!15457) r!7292)))))

(assert (=> b!5490777 (=> (not res!2341938) (not e!3397406))))

(assert (= (and d!1741744 c!958749) b!5490779))

(assert (= (and d!1741744 (not c!958749)) b!5490777))

(assert (= (and b!5490777 res!2341938) b!5490775))

(assert (= (and b!5490775 c!958746) b!5490773))

(assert (= (and b!5490775 (not c!958746)) b!5490782))

(assert (= (and b!5490782 c!958748) b!5490776))

(assert (= (and b!5490782 (not c!958748)) b!5490774))

(assert (= (and b!5490776 (not res!2341936)) b!5490778))

(assert (= (and b!5490774 c!958747) b!5490780))

(assert (= (and b!5490774 (not c!958747)) b!5490781))

(assert (= (and b!5490780 (not res!2341937)) b!5490772))

(assert (= (or b!5490772 b!5490781) bm!404812))

(assert (= (or b!5490779 b!5490780) bm!404811))

(declare-fun m!6503756 () Bool)

(assert (=> b!5490776 m!6503756))

(assert (=> bm!404811 m!6503728))

(declare-fun m!6503758 () Bool)

(assert (=> bm!404812 m!6503758))

(declare-fun m!6503760 () Bool)

(assert (=> b!5490778 m!6503760))

(assert (=> b!5490424 d!1741744))

(declare-fun d!1741754 () Bool)

(assert (=> d!1741754 (= (matchR!7642 r!7292 s!2326) (matchRSpec!2560 r!7292 s!2326))))

(declare-fun lt!2242449 () Unit!155374)

(declare-fun choose!41759 (Regex!15457 List!62672) Unit!155374)

(assert (=> d!1741754 (= lt!2242449 (choose!41759 r!7292 s!2326))))

(assert (=> d!1741754 (validRegex!7193 r!7292)))

(assert (=> d!1741754 (= (mainMatchTheorem!2560 r!7292 s!2326) lt!2242449)))

(declare-fun bs!1267208 () Bool)

(assert (= bs!1267208 d!1741754))

(assert (=> bs!1267208 m!6503622))

(assert (=> bs!1267208 m!6503624))

(declare-fun m!6503762 () Bool)

(assert (=> bs!1267208 m!6503762))

(assert (=> bs!1267208 m!6503620))

(assert (=> b!5490424 d!1741754))

(declare-fun b!5490794 () Bool)

(declare-fun e!3397415 () Bool)

(declare-fun tp!1509642 () Bool)

(assert (=> b!5490794 (= e!3397415 tp!1509642)))

(declare-fun b!5490793 () Bool)

(declare-fun e!3397414 () Bool)

(declare-fun tp!1509643 () Bool)

(assert (=> b!5490793 (= e!3397414 (and (inv!81889 (h!68995 (t!375902 zl!343))) e!3397415 tp!1509643))))

(assert (=> b!5490426 (= tp!1509575 e!3397414)))

(assert (= b!5490793 b!5490794))

(assert (= (and b!5490426 ((_ is Cons!62547) (t!375902 zl!343))) b!5490793))

(declare-fun m!6503764 () Bool)

(assert (=> b!5490793 m!6503764))

(declare-fun b!5490799 () Bool)

(declare-fun e!3397418 () Bool)

(declare-fun tp!1509648 () Bool)

(declare-fun tp!1509649 () Bool)

(assert (=> b!5490799 (= e!3397418 (and tp!1509648 tp!1509649))))

(assert (=> b!5490425 (= tp!1509577 e!3397418)))

(assert (= (and b!5490425 ((_ is Cons!62546) (exprs!5341 (h!68995 zl!343)))) b!5490799))

(declare-fun condSetEmpty!36345 () Bool)

(assert (=> setNonEmpty!36339 (= condSetEmpty!36345 (= setRest!36339 ((as const (Array Context!9682 Bool)) false)))))

(declare-fun setRes!36345 () Bool)

(assert (=> setNonEmpty!36339 (= tp!1509578 setRes!36345)))

(declare-fun setIsEmpty!36345 () Bool)

(assert (=> setIsEmpty!36345 setRes!36345))

(declare-fun setNonEmpty!36345 () Bool)

(declare-fun tp!1509655 () Bool)

(declare-fun setElem!36345 () Context!9682)

(declare-fun e!3397421 () Bool)

(assert (=> setNonEmpty!36345 (= setRes!36345 (and tp!1509655 (inv!81889 setElem!36345) e!3397421))))

(declare-fun setRest!36345 () (InoxSet Context!9682))

(assert (=> setNonEmpty!36345 (= setRest!36339 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) setElem!36345 true) setRest!36345))))

(declare-fun b!5490804 () Bool)

(declare-fun tp!1509654 () Bool)

(assert (=> b!5490804 (= e!3397421 tp!1509654)))

(assert (= (and setNonEmpty!36339 condSetEmpty!36345) setIsEmpty!36345))

(assert (= (and setNonEmpty!36339 (not condSetEmpty!36345)) setNonEmpty!36345))

(assert (= setNonEmpty!36345 b!5490804))

(declare-fun m!6503766 () Bool)

(assert (=> setNonEmpty!36345 m!6503766))

(declare-fun e!3397424 () Bool)

(assert (=> b!5490432 (= tp!1509576 e!3397424)))

(declare-fun b!5490818 () Bool)

(declare-fun tp!1509670 () Bool)

(declare-fun tp!1509669 () Bool)

(assert (=> b!5490818 (= e!3397424 (and tp!1509670 tp!1509669))))

(declare-fun b!5490817 () Bool)

(declare-fun tp!1509667 () Bool)

(assert (=> b!5490817 (= e!3397424 tp!1509667)))

(declare-fun b!5490816 () Bool)

(declare-fun tp!1509668 () Bool)

(declare-fun tp!1509666 () Bool)

(assert (=> b!5490816 (= e!3397424 (and tp!1509668 tp!1509666))))

(declare-fun b!5490815 () Bool)

(assert (=> b!5490815 (= e!3397424 tp_is_empty!40167)))

(assert (= (and b!5490432 ((_ is ElementMatch!15457) (reg!15786 r!7292))) b!5490815))

(assert (= (and b!5490432 ((_ is Concat!24302) (reg!15786 r!7292))) b!5490816))

(assert (= (and b!5490432 ((_ is Star!15457) (reg!15786 r!7292))) b!5490817))

(assert (= (and b!5490432 ((_ is Union!15457) (reg!15786 r!7292))) b!5490818))

(declare-fun b!5490823 () Bool)

(declare-fun e!3397427 () Bool)

(declare-fun tp!1509673 () Bool)

(assert (=> b!5490823 (= e!3397427 (and tp_is_empty!40167 tp!1509673))))

(assert (=> b!5490434 (= tp!1509574 e!3397427)))

(assert (= (and b!5490434 ((_ is Cons!62548) (t!375903 s!2326))) b!5490823))

(declare-fun b!5490824 () Bool)

(declare-fun e!3397428 () Bool)

(declare-fun tp!1509674 () Bool)

(declare-fun tp!1509675 () Bool)

(assert (=> b!5490824 (= e!3397428 (and tp!1509674 tp!1509675))))

(assert (=> b!5490428 (= tp!1509573 e!3397428)))

(assert (= (and b!5490428 ((_ is Cons!62546) (exprs!5341 setElem!36339))) b!5490824))

(declare-fun e!3397429 () Bool)

(assert (=> b!5490430 (= tp!1509571 e!3397429)))

(declare-fun b!5490828 () Bool)

(declare-fun tp!1509680 () Bool)

(declare-fun tp!1509679 () Bool)

(assert (=> b!5490828 (= e!3397429 (and tp!1509680 tp!1509679))))

(declare-fun b!5490827 () Bool)

(declare-fun tp!1509677 () Bool)

(assert (=> b!5490827 (= e!3397429 tp!1509677)))

(declare-fun b!5490826 () Bool)

(declare-fun tp!1509678 () Bool)

(declare-fun tp!1509676 () Bool)

(assert (=> b!5490826 (= e!3397429 (and tp!1509678 tp!1509676))))

(declare-fun b!5490825 () Bool)

(assert (=> b!5490825 (= e!3397429 tp_is_empty!40167)))

(assert (= (and b!5490430 ((_ is ElementMatch!15457) (regOne!31426 r!7292))) b!5490825))

(assert (= (and b!5490430 ((_ is Concat!24302) (regOne!31426 r!7292))) b!5490826))

(assert (= (and b!5490430 ((_ is Star!15457) (regOne!31426 r!7292))) b!5490827))

(assert (= (and b!5490430 ((_ is Union!15457) (regOne!31426 r!7292))) b!5490828))

(declare-fun e!3397430 () Bool)

(assert (=> b!5490430 (= tp!1509579 e!3397430)))

(declare-fun b!5490832 () Bool)

(declare-fun tp!1509685 () Bool)

(declare-fun tp!1509684 () Bool)

(assert (=> b!5490832 (= e!3397430 (and tp!1509685 tp!1509684))))

(declare-fun b!5490831 () Bool)

(declare-fun tp!1509682 () Bool)

(assert (=> b!5490831 (= e!3397430 tp!1509682)))

(declare-fun b!5490830 () Bool)

(declare-fun tp!1509683 () Bool)

(declare-fun tp!1509681 () Bool)

(assert (=> b!5490830 (= e!3397430 (and tp!1509683 tp!1509681))))

(declare-fun b!5490829 () Bool)

(assert (=> b!5490829 (= e!3397430 tp_is_empty!40167)))

(assert (= (and b!5490430 ((_ is ElementMatch!15457) (regTwo!31426 r!7292))) b!5490829))

(assert (= (and b!5490430 ((_ is Concat!24302) (regTwo!31426 r!7292))) b!5490830))

(assert (= (and b!5490430 ((_ is Star!15457) (regTwo!31426 r!7292))) b!5490831))

(assert (= (and b!5490430 ((_ is Union!15457) (regTwo!31426 r!7292))) b!5490832))

(declare-fun e!3397431 () Bool)

(assert (=> b!5490429 (= tp!1509572 e!3397431)))

(declare-fun b!5490836 () Bool)

(declare-fun tp!1509690 () Bool)

(declare-fun tp!1509689 () Bool)

(assert (=> b!5490836 (= e!3397431 (and tp!1509690 tp!1509689))))

(declare-fun b!5490835 () Bool)

(declare-fun tp!1509687 () Bool)

(assert (=> b!5490835 (= e!3397431 tp!1509687)))

(declare-fun b!5490834 () Bool)

(declare-fun tp!1509688 () Bool)

(declare-fun tp!1509686 () Bool)

(assert (=> b!5490834 (= e!3397431 (and tp!1509688 tp!1509686))))

(declare-fun b!5490833 () Bool)

(assert (=> b!5490833 (= e!3397431 tp_is_empty!40167)))

(assert (= (and b!5490429 ((_ is ElementMatch!15457) (regOne!31427 r!7292))) b!5490833))

(assert (= (and b!5490429 ((_ is Concat!24302) (regOne!31427 r!7292))) b!5490834))

(assert (= (and b!5490429 ((_ is Star!15457) (regOne!31427 r!7292))) b!5490835))

(assert (= (and b!5490429 ((_ is Union!15457) (regOne!31427 r!7292))) b!5490836))

(declare-fun e!3397432 () Bool)

(assert (=> b!5490429 (= tp!1509570 e!3397432)))

(declare-fun b!5490840 () Bool)

(declare-fun tp!1509695 () Bool)

(declare-fun tp!1509694 () Bool)

(assert (=> b!5490840 (= e!3397432 (and tp!1509695 tp!1509694))))

(declare-fun b!5490839 () Bool)

(declare-fun tp!1509692 () Bool)

(assert (=> b!5490839 (= e!3397432 tp!1509692)))

(declare-fun b!5490838 () Bool)

(declare-fun tp!1509693 () Bool)

(declare-fun tp!1509691 () Bool)

(assert (=> b!5490838 (= e!3397432 (and tp!1509693 tp!1509691))))

(declare-fun b!5490837 () Bool)

(assert (=> b!5490837 (= e!3397432 tp_is_empty!40167)))

(assert (= (and b!5490429 ((_ is ElementMatch!15457) (regTwo!31427 r!7292))) b!5490837))

(assert (= (and b!5490429 ((_ is Concat!24302) (regTwo!31427 r!7292))) b!5490838))

(assert (= (and b!5490429 ((_ is Star!15457) (regTwo!31427 r!7292))) b!5490839))

(assert (= (and b!5490429 ((_ is Union!15457) (regTwo!31427 r!7292))) b!5490840))

(check-sat (not b!5490523) (not bm!404806) (not b!5490831) (not b!5490840) (not b!5490672) (not b!5490518) (not d!1741726) (not b!5490832) (not b!5490776) (not bm!404797) (not b!5490835) (not d!1741754) (not bm!404812) (not b!5490834) (not b!5490527) (not d!1741720) (not d!1741742) (not b!5490593) (not b!5490817) (not b!5490674) (not b!5490793) (not b!5490824) (not b!5490525) (not b!5490828) (not d!1741740) (not b!5490804) (not b!5490437) (not d!1741718) (not b!5490799) (not b!5490671) (not bm!404796) tp_is_empty!40167 (not b!5490830) (not b!5490524) (not setNonEmpty!36345) (not b!5490839) (not b!5490838) (not bm!404811) (not b!5490818) (not b!5490673) (not d!1741728) (not b!5490827) (not b!5490675) (not b!5490794) (not b!5490816) (not b!5490521) (not b!5490826) (not b!5490519) (not b!5490679) (not b!5490823) (not b!5490778) (not b!5490836))
(check-sat)
(get-model)

(declare-fun d!1741756 () Bool)

(declare-fun nullableFct!1642 (Regex!15457) Bool)

(assert (=> d!1741756 (= (nullable!5500 (reg!15786 r!7292)) (nullableFct!1642 (reg!15786 r!7292)))))

(declare-fun bs!1267209 () Bool)

(assert (= bs!1267209 d!1741756))

(declare-fun m!6503768 () Bool)

(assert (=> bs!1267209 m!6503768))

(assert (=> b!5490593 d!1741756))

(declare-fun d!1741758 () Bool)

(declare-fun choose!41760 (Int) Bool)

(assert (=> d!1741758 (= (Exists!2567 (ite c!958747 lambda!294038 lambda!294039)) (choose!41760 (ite c!958747 lambda!294038 lambda!294039)))))

(declare-fun bs!1267210 () Bool)

(assert (= bs!1267210 d!1741758))

(declare-fun m!6503770 () Bool)

(assert (=> bs!1267210 m!6503770))

(assert (=> bm!404812 d!1741758))

(declare-fun bs!1267211 () Bool)

(declare-fun b!5490841 () Bool)

(assert (= bs!1267211 (and b!5490841 b!5490772)))

(declare-fun lambda!294040 () Int)

(assert (=> bs!1267211 (= (and (= (reg!15786 (regTwo!31427 r!7292)) (reg!15786 r!7292)) (= (regTwo!31427 r!7292) r!7292)) (= lambda!294040 lambda!294038))))

(declare-fun bs!1267212 () Bool)

(assert (= bs!1267212 (and b!5490841 b!5490781)))

(assert (=> bs!1267212 (not (= lambda!294040 lambda!294039))))

(assert (=> b!5490841 true))

(assert (=> b!5490841 true))

(declare-fun bs!1267213 () Bool)

(declare-fun b!5490850 () Bool)

(assert (= bs!1267213 (and b!5490850 b!5490772)))

(declare-fun lambda!294041 () Int)

(assert (=> bs!1267213 (not (= lambda!294041 lambda!294038))))

(declare-fun bs!1267214 () Bool)

(assert (= bs!1267214 (and b!5490850 b!5490781)))

(assert (=> bs!1267214 (= (and (= (regOne!31426 (regTwo!31427 r!7292)) (regOne!31426 r!7292)) (= (regTwo!31426 (regTwo!31427 r!7292)) (regTwo!31426 r!7292))) (= lambda!294041 lambda!294039))))

(declare-fun bs!1267215 () Bool)

(assert (= bs!1267215 (and b!5490850 b!5490841)))

(assert (=> bs!1267215 (not (= lambda!294041 lambda!294040))))

(assert (=> b!5490850 true))

(assert (=> b!5490850 true))

(declare-fun e!3397434 () Bool)

(declare-fun call!404818 () Bool)

(assert (=> b!5490841 (= e!3397434 call!404818)))

(declare-fun b!5490842 () Bool)

(declare-fun e!3397433 () Bool)

(assert (=> b!5490842 (= e!3397433 (= s!2326 (Cons!62548 (c!958671 (regTwo!31427 r!7292)) Nil!62548)))))

(declare-fun b!5490843 () Bool)

(declare-fun e!3397437 () Bool)

(declare-fun e!3397435 () Bool)

(assert (=> b!5490843 (= e!3397437 e!3397435)))

(declare-fun c!958751 () Bool)

(assert (=> b!5490843 (= c!958751 ((_ is Star!15457) (regTwo!31427 r!7292)))))

(declare-fun b!5490844 () Bool)

(declare-fun c!958750 () Bool)

(assert (=> b!5490844 (= c!958750 ((_ is ElementMatch!15457) (regTwo!31427 r!7292)))))

(declare-fun e!3397436 () Bool)

(assert (=> b!5490844 (= e!3397436 e!3397433)))

(declare-fun b!5490845 () Bool)

(declare-fun e!3397439 () Bool)

(assert (=> b!5490845 (= e!3397437 e!3397439)))

(declare-fun res!2341939 () Bool)

(assert (=> b!5490845 (= res!2341939 (matchRSpec!2560 (regOne!31427 (regTwo!31427 r!7292)) s!2326))))

(assert (=> b!5490845 (=> res!2341939 e!3397439)))

(declare-fun bm!404813 () Bool)

(declare-fun call!404819 () Bool)

(assert (=> bm!404813 (= call!404819 (isEmpty!34349 s!2326))))

(declare-fun bm!404814 () Bool)

(assert (=> bm!404814 (= call!404818 (Exists!2567 (ite c!958751 lambda!294040 lambda!294041)))))

(declare-fun b!5490847 () Bool)

(assert (=> b!5490847 (= e!3397439 (matchRSpec!2560 (regTwo!31427 (regTwo!31427 r!7292)) s!2326))))

(declare-fun b!5490848 () Bool)

(declare-fun e!3397438 () Bool)

(assert (=> b!5490848 (= e!3397438 call!404819)))

(declare-fun b!5490849 () Bool)

(declare-fun res!2341940 () Bool)

(assert (=> b!5490849 (=> res!2341940 e!3397434)))

(assert (=> b!5490849 (= res!2341940 call!404819)))

(assert (=> b!5490849 (= e!3397435 e!3397434)))

(assert (=> b!5490850 (= e!3397435 call!404818)))

(declare-fun b!5490851 () Bool)

(declare-fun c!958752 () Bool)

(assert (=> b!5490851 (= c!958752 ((_ is Union!15457) (regTwo!31427 r!7292)))))

(assert (=> b!5490851 (= e!3397433 e!3397437)))

(declare-fun d!1741760 () Bool)

(declare-fun c!958753 () Bool)

(assert (=> d!1741760 (= c!958753 ((_ is EmptyExpr!15457) (regTwo!31427 r!7292)))))

(assert (=> d!1741760 (= (matchRSpec!2560 (regTwo!31427 r!7292) s!2326) e!3397438)))

(declare-fun b!5490846 () Bool)

(assert (=> b!5490846 (= e!3397438 e!3397436)))

(declare-fun res!2341941 () Bool)

(assert (=> b!5490846 (= res!2341941 (not ((_ is EmptyLang!15457) (regTwo!31427 r!7292))))))

(assert (=> b!5490846 (=> (not res!2341941) (not e!3397436))))

(assert (= (and d!1741760 c!958753) b!5490848))

(assert (= (and d!1741760 (not c!958753)) b!5490846))

(assert (= (and b!5490846 res!2341941) b!5490844))

(assert (= (and b!5490844 c!958750) b!5490842))

(assert (= (and b!5490844 (not c!958750)) b!5490851))

(assert (= (and b!5490851 c!958752) b!5490845))

(assert (= (and b!5490851 (not c!958752)) b!5490843))

(assert (= (and b!5490845 (not res!2341939)) b!5490847))

(assert (= (and b!5490843 c!958751) b!5490849))

(assert (= (and b!5490843 (not c!958751)) b!5490850))

(assert (= (and b!5490849 (not res!2341940)) b!5490841))

(assert (= (or b!5490841 b!5490850) bm!404814))

(assert (= (or b!5490848 b!5490849) bm!404813))

(declare-fun m!6503772 () Bool)

(assert (=> b!5490845 m!6503772))

(assert (=> bm!404813 m!6503728))

(declare-fun m!6503774 () Bool)

(assert (=> bm!404814 m!6503774))

(declare-fun m!6503776 () Bool)

(assert (=> b!5490847 m!6503776))

(assert (=> b!5490778 d!1741760))

(declare-fun bm!404815 () Bool)

(declare-fun call!404822 () Bool)

(declare-fun call!404820 () Bool)

(assert (=> bm!404815 (= call!404822 call!404820)))

(declare-fun b!5490852 () Bool)

(declare-fun res!2341945 () Bool)

(declare-fun e!3397442 () Bool)

(assert (=> b!5490852 (=> res!2341945 e!3397442)))

(assert (=> b!5490852 (= res!2341945 (not ((_ is Concat!24302) lt!2242431)))))

(declare-fun e!3397440 () Bool)

(assert (=> b!5490852 (= e!3397440 e!3397442)))

(declare-fun b!5490853 () Bool)

(declare-fun e!3397443 () Bool)

(declare-fun call!404821 () Bool)

(assert (=> b!5490853 (= e!3397443 call!404821)))

(declare-fun b!5490854 () Bool)

(declare-fun e!3397444 () Bool)

(assert (=> b!5490854 (= e!3397444 call!404821)))

(declare-fun b!5490855 () Bool)

(declare-fun res!2341946 () Bool)

(assert (=> b!5490855 (=> (not res!2341946) (not e!3397443))))

(assert (=> b!5490855 (= res!2341946 call!404822)))

(assert (=> b!5490855 (= e!3397440 e!3397443)))

(declare-fun b!5490856 () Bool)

(declare-fun e!3397446 () Bool)

(assert (=> b!5490856 (= e!3397446 call!404820)))

(declare-fun d!1741762 () Bool)

(declare-fun res!2341943 () Bool)

(declare-fun e!3397441 () Bool)

(assert (=> d!1741762 (=> res!2341943 e!3397441)))

(assert (=> d!1741762 (= res!2341943 ((_ is ElementMatch!15457) lt!2242431))))

(assert (=> d!1741762 (= (validRegex!7193 lt!2242431) e!3397441)))

(declare-fun b!5490857 () Bool)

(declare-fun e!3397445 () Bool)

(assert (=> b!5490857 (= e!3397445 e!3397446)))

(declare-fun res!2341944 () Bool)

(assert (=> b!5490857 (= res!2341944 (not (nullable!5500 (reg!15786 lt!2242431))))))

(assert (=> b!5490857 (=> (not res!2341944) (not e!3397446))))

(declare-fun b!5490858 () Bool)

(assert (=> b!5490858 (= e!3397442 e!3397444)))

(declare-fun res!2341942 () Bool)

(assert (=> b!5490858 (=> (not res!2341942) (not e!3397444))))

(assert (=> b!5490858 (= res!2341942 call!404822)))

(declare-fun b!5490859 () Bool)

(assert (=> b!5490859 (= e!3397445 e!3397440)))

(declare-fun c!958754 () Bool)

(assert (=> b!5490859 (= c!958754 ((_ is Union!15457) lt!2242431))))

(declare-fun b!5490860 () Bool)

(assert (=> b!5490860 (= e!3397441 e!3397445)))

(declare-fun c!958755 () Bool)

(assert (=> b!5490860 (= c!958755 ((_ is Star!15457) lt!2242431))))

(declare-fun bm!404816 () Bool)

(assert (=> bm!404816 (= call!404821 (validRegex!7193 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))))))

(declare-fun bm!404817 () Bool)

(assert (=> bm!404817 (= call!404820 (validRegex!7193 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))))))

(assert (= (and d!1741762 (not res!2341943)) b!5490860))

(assert (= (and b!5490860 c!958755) b!5490857))

(assert (= (and b!5490860 (not c!958755)) b!5490859))

(assert (= (and b!5490857 res!2341944) b!5490856))

(assert (= (and b!5490859 c!958754) b!5490855))

(assert (= (and b!5490859 (not c!958754)) b!5490852))

(assert (= (and b!5490855 res!2341946) b!5490853))

(assert (= (and b!5490852 (not res!2341945)) b!5490858))

(assert (= (and b!5490858 res!2341942) b!5490854))

(assert (= (or b!5490853 b!5490854) bm!404816))

(assert (= (or b!5490855 b!5490858) bm!404815))

(assert (= (or b!5490856 bm!404815) bm!404817))

(declare-fun m!6503778 () Bool)

(assert (=> b!5490857 m!6503778))

(declare-fun m!6503780 () Bool)

(assert (=> bm!404816 m!6503780))

(declare-fun m!6503782 () Bool)

(assert (=> bm!404817 m!6503782))

(assert (=> d!1741728 d!1741762))

(declare-fun d!1741764 () Bool)

(declare-fun res!2341951 () Bool)

(declare-fun e!3397451 () Bool)

(assert (=> d!1741764 (=> res!2341951 e!3397451)))

(assert (=> d!1741764 (= res!2341951 ((_ is Nil!62546) (exprs!5341 (h!68995 zl!343))))))

(assert (=> d!1741764 (= (forall!14650 (exprs!5341 (h!68995 zl!343)) lambda!294026) e!3397451)))

(declare-fun b!5490865 () Bool)

(declare-fun e!3397452 () Bool)

(assert (=> b!5490865 (= e!3397451 e!3397452)))

(declare-fun res!2341952 () Bool)

(assert (=> b!5490865 (=> (not res!2341952) (not e!3397452))))

(declare-fun dynLambda!24455 (Int Regex!15457) Bool)

(assert (=> b!5490865 (= res!2341952 (dynLambda!24455 lambda!294026 (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5490866 () Bool)

(assert (=> b!5490866 (= e!3397452 (forall!14650 (t!375901 (exprs!5341 (h!68995 zl!343))) lambda!294026))))

(assert (= (and d!1741764 (not res!2341951)) b!5490865))

(assert (= (and b!5490865 res!2341952) b!5490866))

(declare-fun b_lambda!208387 () Bool)

(assert (=> (not b_lambda!208387) (not b!5490865)))

(declare-fun m!6503784 () Bool)

(assert (=> b!5490865 m!6503784))

(declare-fun m!6503786 () Bool)

(assert (=> b!5490866 m!6503786))

(assert (=> d!1741728 d!1741764))

(declare-fun bs!1267216 () Bool)

(declare-fun d!1741766 () Bool)

(assert (= bs!1267216 (and d!1741766 d!1741720)))

(declare-fun lambda!294042 () Int)

(assert (=> bs!1267216 (= lambda!294042 lambda!294021)))

(declare-fun bs!1267217 () Bool)

(assert (= bs!1267217 (and d!1741766 d!1741726)))

(assert (=> bs!1267217 (= lambda!294042 lambda!294022)))

(declare-fun bs!1267218 () Bool)

(assert (= bs!1267218 (and d!1741766 d!1741728)))

(assert (=> bs!1267218 (= lambda!294042 lambda!294026)))

(assert (=> d!1741766 (= (inv!81889 (h!68995 (t!375902 zl!343))) (forall!14650 (exprs!5341 (h!68995 (t!375902 zl!343))) lambda!294042))))

(declare-fun bs!1267219 () Bool)

(assert (= bs!1267219 d!1741766))

(declare-fun m!6503788 () Bool)

(assert (=> bs!1267219 m!6503788))

(assert (=> b!5490793 d!1741766))

(declare-fun d!1741768 () Bool)

(assert (=> d!1741768 (= (isEmpty!34349 s!2326) ((_ is Nil!62548) s!2326))))

(assert (=> bm!404811 d!1741768))

(declare-fun d!1741770 () Bool)

(declare-fun c!958758 () Bool)

(assert (=> d!1741770 (= c!958758 ((_ is Nil!62547) lt!2242422))))

(declare-fun e!3397455 () (InoxSet Context!9682))

(assert (=> d!1741770 (= (content!11229 lt!2242422) e!3397455)))

(declare-fun b!5490871 () Bool)

(assert (=> b!5490871 (= e!3397455 ((as const (Array Context!9682 Bool)) false))))

(declare-fun b!5490872 () Bool)

(assert (=> b!5490872 (= e!3397455 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) (h!68995 lt!2242422) true) (content!11229 (t!375902 lt!2242422))))))

(assert (= (and d!1741770 c!958758) b!5490871))

(assert (= (and d!1741770 (not c!958758)) b!5490872))

(declare-fun m!6503790 () Bool)

(assert (=> b!5490872 m!6503790))

(declare-fun m!6503792 () Bool)

(assert (=> b!5490872 m!6503792))

(assert (=> b!5490437 d!1741770))

(declare-fun d!1741772 () Bool)

(assert (=> d!1741772 (= (isEmpty!34347 (tail!10849 (exprs!5341 (h!68995 zl!343)))) ((_ is Nil!62546) (tail!10849 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> b!5490527 d!1741772))

(declare-fun d!1741774 () Bool)

(assert (=> d!1741774 (= (tail!10849 (exprs!5341 (h!68995 zl!343))) (t!375901 (exprs!5341 (h!68995 zl!343))))))

(assert (=> b!5490527 d!1741774))

(declare-fun d!1741776 () Bool)

(declare-fun res!2341953 () Bool)

(declare-fun e!3397456 () Bool)

(assert (=> d!1741776 (=> res!2341953 e!3397456)))

(assert (=> d!1741776 (= res!2341953 ((_ is Nil!62546) (exprs!5341 setElem!36339)))))

(assert (=> d!1741776 (= (forall!14650 (exprs!5341 setElem!36339) lambda!294022) e!3397456)))

(declare-fun b!5490873 () Bool)

(declare-fun e!3397457 () Bool)

(assert (=> b!5490873 (= e!3397456 e!3397457)))

(declare-fun res!2341954 () Bool)

(assert (=> b!5490873 (=> (not res!2341954) (not e!3397457))))

(assert (=> b!5490873 (= res!2341954 (dynLambda!24455 lambda!294022 (h!68994 (exprs!5341 setElem!36339))))))

(declare-fun b!5490874 () Bool)

(assert (=> b!5490874 (= e!3397457 (forall!14650 (t!375901 (exprs!5341 setElem!36339)) lambda!294022))))

(assert (= (and d!1741776 (not res!2341953)) b!5490873))

(assert (= (and b!5490873 res!2341954) b!5490874))

(declare-fun b_lambda!208389 () Bool)

(assert (=> (not b_lambda!208389) (not b!5490873)))

(declare-fun m!6503794 () Bool)

(assert (=> b!5490873 m!6503794))

(declare-fun m!6503796 () Bool)

(assert (=> b!5490874 m!6503796))

(assert (=> d!1741726 d!1741776))

(declare-fun d!1741778 () Bool)

(assert (=> d!1741778 (= (head!11754 (exprs!5341 (h!68995 zl!343))) (h!68994 (exprs!5341 (h!68995 zl!343))))))

(assert (=> b!5490523 d!1741778))

(declare-fun b!5490875 () Bool)

(declare-fun e!3397459 () Bool)

(declare-fun lt!2242450 () Bool)

(assert (=> b!5490875 (= e!3397459 (not lt!2242450))))

(declare-fun b!5490876 () Bool)

(declare-fun res!2341961 () Bool)

(declare-fun e!3397464 () Bool)

(assert (=> b!5490876 (=> (not res!2341961) (not e!3397464))))

(declare-fun call!404823 () Bool)

(assert (=> b!5490876 (= res!2341961 (not call!404823))))

(declare-fun b!5490877 () Bool)

(declare-fun res!2341962 () Bool)

(declare-fun e!3397462 () Bool)

(assert (=> b!5490877 (=> res!2341962 e!3397462)))

(assert (=> b!5490877 (= res!2341962 (not ((_ is ElementMatch!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326)))))))

(assert (=> b!5490877 (= e!3397459 e!3397462)))

(declare-fun b!5490878 () Bool)

(declare-fun res!2341957 () Bool)

(declare-fun e!3397458 () Bool)

(assert (=> b!5490878 (=> res!2341957 e!3397458)))

(assert (=> b!5490878 (= res!2341957 (not (isEmpty!34349 (tail!10851 (tail!10851 s!2326)))))))

(declare-fun b!5490879 () Bool)

(assert (=> b!5490879 (= e!3397458 (not (= (head!11756 (tail!10851 s!2326)) (c!958671 (derivativeStep!4341 r!7292 (head!11756 s!2326))))))))

(declare-fun b!5490880 () Bool)

(declare-fun e!3397461 () Bool)

(assert (=> b!5490880 (= e!3397461 (nullable!5500 (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun bm!404818 () Bool)

(assert (=> bm!404818 (= call!404823 (isEmpty!34349 (tail!10851 s!2326)))))

(declare-fun d!1741780 () Bool)

(declare-fun e!3397460 () Bool)

(assert (=> d!1741780 e!3397460))

(declare-fun c!958760 () Bool)

(assert (=> d!1741780 (= c!958760 ((_ is EmptyExpr!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(assert (=> d!1741780 (= lt!2242450 e!3397461)))

(declare-fun c!958759 () Bool)

(assert (=> d!1741780 (= c!958759 (isEmpty!34349 (tail!10851 s!2326)))))

(assert (=> d!1741780 (validRegex!7193 (derivativeStep!4341 r!7292 (head!11756 s!2326)))))

(assert (=> d!1741780 (= (matchR!7642 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (tail!10851 s!2326)) lt!2242450)))

(declare-fun b!5490881 () Bool)

(declare-fun res!2341955 () Bool)

(assert (=> b!5490881 (=> (not res!2341955) (not e!3397464))))

(assert (=> b!5490881 (= res!2341955 (isEmpty!34349 (tail!10851 (tail!10851 s!2326))))))

(declare-fun b!5490882 () Bool)

(assert (=> b!5490882 (= e!3397464 (= (head!11756 (tail!10851 s!2326)) (c!958671 (derivativeStep!4341 r!7292 (head!11756 s!2326)))))))

(declare-fun b!5490883 () Bool)

(declare-fun e!3397463 () Bool)

(assert (=> b!5490883 (= e!3397463 e!3397458)))

(declare-fun res!2341956 () Bool)

(assert (=> b!5490883 (=> res!2341956 e!3397458)))

(assert (=> b!5490883 (= res!2341956 call!404823)))

(declare-fun b!5490884 () Bool)

(assert (=> b!5490884 (= e!3397460 (= lt!2242450 call!404823))))

(declare-fun b!5490885 () Bool)

(assert (=> b!5490885 (= e!3397462 e!3397463)))

(declare-fun res!2341958 () Bool)

(assert (=> b!5490885 (=> (not res!2341958) (not e!3397463))))

(assert (=> b!5490885 (= res!2341958 (not lt!2242450))))

(declare-fun b!5490886 () Bool)

(assert (=> b!5490886 (= e!3397461 (matchR!7642 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))) (tail!10851 (tail!10851 s!2326))))))

(declare-fun b!5490887 () Bool)

(declare-fun res!2341959 () Bool)

(assert (=> b!5490887 (=> res!2341959 e!3397462)))

(assert (=> b!5490887 (= res!2341959 e!3397464)))

(declare-fun res!2341960 () Bool)

(assert (=> b!5490887 (=> (not res!2341960) (not e!3397464))))

(assert (=> b!5490887 (= res!2341960 lt!2242450)))

(declare-fun b!5490888 () Bool)

(assert (=> b!5490888 (= e!3397460 e!3397459)))

(declare-fun c!958761 () Bool)

(assert (=> b!5490888 (= c!958761 ((_ is EmptyLang!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(assert (= (and d!1741780 c!958759) b!5490880))

(assert (= (and d!1741780 (not c!958759)) b!5490886))

(assert (= (and d!1741780 c!958760) b!5490884))

(assert (= (and d!1741780 (not c!958760)) b!5490888))

(assert (= (and b!5490888 c!958761) b!5490875))

(assert (= (and b!5490888 (not c!958761)) b!5490877))

(assert (= (and b!5490877 (not res!2341962)) b!5490887))

(assert (= (and b!5490887 res!2341960) b!5490876))

(assert (= (and b!5490876 res!2341961) b!5490881))

(assert (= (and b!5490881 res!2341955) b!5490882))

(assert (= (and b!5490887 (not res!2341959)) b!5490885))

(assert (= (and b!5490885 res!2341958) b!5490883))

(assert (= (and b!5490883 (not res!2341956)) b!5490878))

(assert (= (and b!5490878 (not res!2341957)) b!5490879))

(assert (= (or b!5490884 b!5490876 b!5490883) bm!404818))

(assert (=> b!5490882 m!6503724))

(declare-fun m!6503798 () Bool)

(assert (=> b!5490882 m!6503798))

(assert (=> b!5490881 m!6503724))

(declare-fun m!6503800 () Bool)

(assert (=> b!5490881 m!6503800))

(assert (=> b!5490881 m!6503800))

(declare-fun m!6503802 () Bool)

(assert (=> b!5490881 m!6503802))

(assert (=> d!1741780 m!6503724))

(assert (=> d!1741780 m!6503726))

(assert (=> d!1741780 m!6503730))

(declare-fun m!6503804 () Bool)

(assert (=> d!1741780 m!6503804))

(assert (=> b!5490878 m!6503724))

(assert (=> b!5490878 m!6503800))

(assert (=> b!5490878 m!6503800))

(assert (=> b!5490878 m!6503802))

(assert (=> bm!404818 m!6503724))

(assert (=> bm!404818 m!6503726))

(assert (=> b!5490879 m!6503724))

(assert (=> b!5490879 m!6503798))

(assert (=> b!5490886 m!6503724))

(assert (=> b!5490886 m!6503798))

(assert (=> b!5490886 m!6503730))

(assert (=> b!5490886 m!6503798))

(declare-fun m!6503806 () Bool)

(assert (=> b!5490886 m!6503806))

(assert (=> b!5490886 m!6503724))

(assert (=> b!5490886 m!6503800))

(assert (=> b!5490886 m!6503806))

(assert (=> b!5490886 m!6503800))

(declare-fun m!6503808 () Bool)

(assert (=> b!5490886 m!6503808))

(assert (=> b!5490880 m!6503730))

(declare-fun m!6503810 () Bool)

(assert (=> b!5490880 m!6503810))

(assert (=> b!5490679 d!1741780))

(declare-fun b!5490909 () Bool)

(declare-fun e!3397477 () Regex!15457)

(declare-fun e!3397479 () Regex!15457)

(assert (=> b!5490909 (= e!3397477 e!3397479)))

(declare-fun c!958774 () Bool)

(assert (=> b!5490909 (= c!958774 ((_ is Star!15457) r!7292))))

(declare-fun b!5490910 () Bool)

(declare-fun e!3397475 () Regex!15457)

(declare-fun call!404833 () Regex!15457)

(assert (=> b!5490910 (= e!3397475 (Union!15457 (Concat!24302 call!404833 (regTwo!31426 r!7292)) EmptyLang!15457))))

(declare-fun b!5490911 () Bool)

(declare-fun call!404832 () Regex!15457)

(declare-fun call!404834 () Regex!15457)

(assert (=> b!5490911 (= e!3397477 (Union!15457 call!404832 call!404834))))

(declare-fun b!5490912 () Bool)

(assert (=> b!5490912 (= e!3397475 (Union!15457 (Concat!24302 call!404832 (regTwo!31426 r!7292)) call!404833))))

(declare-fun c!958773 () Bool)

(declare-fun bm!404827 () Bool)

(assert (=> bm!404827 (= call!404832 (derivativeStep!4341 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)) (head!11756 s!2326)))))

(declare-fun bm!404828 () Bool)

(declare-fun call!404835 () Regex!15457)

(assert (=> bm!404828 (= call!404835 call!404834)))

(declare-fun b!5490913 () Bool)

(assert (=> b!5490913 (= c!958773 ((_ is Union!15457) r!7292))))

(declare-fun e!3397476 () Regex!15457)

(assert (=> b!5490913 (= e!3397476 e!3397477)))

(declare-fun b!5490914 () Bool)

(assert (=> b!5490914 (= e!3397479 (Concat!24302 call!404835 r!7292))))

(declare-fun b!5490915 () Bool)

(declare-fun e!3397478 () Regex!15457)

(assert (=> b!5490915 (= e!3397478 e!3397476)))

(declare-fun c!958772 () Bool)

(assert (=> b!5490915 (= c!958772 ((_ is ElementMatch!15457) r!7292))))

(declare-fun d!1741782 () Bool)

(declare-fun lt!2242453 () Regex!15457)

(assert (=> d!1741782 (validRegex!7193 lt!2242453)))

(assert (=> d!1741782 (= lt!2242453 e!3397478)))

(declare-fun c!958776 () Bool)

(assert (=> d!1741782 (= c!958776 (or ((_ is EmptyExpr!15457) r!7292) ((_ is EmptyLang!15457) r!7292)))))

(assert (=> d!1741782 (validRegex!7193 r!7292)))

(assert (=> d!1741782 (= (derivativeStep!4341 r!7292 (head!11756 s!2326)) lt!2242453)))

(declare-fun b!5490916 () Bool)

(assert (=> b!5490916 (= e!3397478 EmptyLang!15457)))

(declare-fun bm!404829 () Bool)

(declare-fun c!958775 () Bool)

(assert (=> bm!404829 (= call!404834 (derivativeStep!4341 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))) (head!11756 s!2326)))))

(declare-fun bm!404830 () Bool)

(assert (=> bm!404830 (= call!404833 call!404835)))

(declare-fun b!5490917 () Bool)

(assert (=> b!5490917 (= c!958775 (nullable!5500 (regOne!31426 r!7292)))))

(assert (=> b!5490917 (= e!3397479 e!3397475)))

(declare-fun b!5490918 () Bool)

(assert (=> b!5490918 (= e!3397476 (ite (= (head!11756 s!2326) (c!958671 r!7292)) EmptyExpr!15457 EmptyLang!15457))))

(assert (= (and d!1741782 c!958776) b!5490916))

(assert (= (and d!1741782 (not c!958776)) b!5490915))

(assert (= (and b!5490915 c!958772) b!5490918))

(assert (= (and b!5490915 (not c!958772)) b!5490913))

(assert (= (and b!5490913 c!958773) b!5490911))

(assert (= (and b!5490913 (not c!958773)) b!5490909))

(assert (= (and b!5490909 c!958774) b!5490914))

(assert (= (and b!5490909 (not c!958774)) b!5490917))

(assert (= (and b!5490917 c!958775) b!5490912))

(assert (= (and b!5490917 (not c!958775)) b!5490910))

(assert (= (or b!5490912 b!5490910) bm!404830))

(assert (= (or b!5490914 bm!404830) bm!404828))

(assert (= (or b!5490911 bm!404828) bm!404829))

(assert (= (or b!5490911 b!5490912) bm!404827))

(assert (=> bm!404827 m!6503722))

(declare-fun m!6503812 () Bool)

(assert (=> bm!404827 m!6503812))

(declare-fun m!6503814 () Bool)

(assert (=> d!1741782 m!6503814))

(assert (=> d!1741782 m!6503620))

(assert (=> bm!404829 m!6503722))

(declare-fun m!6503816 () Bool)

(assert (=> bm!404829 m!6503816))

(declare-fun m!6503818 () Bool)

(assert (=> b!5490917 m!6503818))

(assert (=> b!5490679 d!1741782))

(declare-fun d!1741784 () Bool)

(assert (=> d!1741784 (= (head!11756 s!2326) (h!68996 s!2326))))

(assert (=> b!5490679 d!1741784))

(declare-fun d!1741786 () Bool)

(assert (=> d!1741786 (= (tail!10851 s!2326) (t!375903 s!2326))))

(assert (=> b!5490679 d!1741786))

(declare-fun bs!1267220 () Bool)

(declare-fun d!1741788 () Bool)

(assert (= bs!1267220 (and d!1741788 d!1741720)))

(declare-fun lambda!294043 () Int)

(assert (=> bs!1267220 (= lambda!294043 lambda!294021)))

(declare-fun bs!1267221 () Bool)

(assert (= bs!1267221 (and d!1741788 d!1741726)))

(assert (=> bs!1267221 (= lambda!294043 lambda!294022)))

(declare-fun bs!1267222 () Bool)

(assert (= bs!1267222 (and d!1741788 d!1741728)))

(assert (=> bs!1267222 (= lambda!294043 lambda!294026)))

(declare-fun bs!1267223 () Bool)

(assert (= bs!1267223 (and d!1741788 d!1741766)))

(assert (=> bs!1267223 (= lambda!294043 lambda!294042)))

(declare-fun e!3397483 () Bool)

(assert (=> d!1741788 e!3397483))

(declare-fun res!2341964 () Bool)

(assert (=> d!1741788 (=> (not res!2341964) (not e!3397483))))

(declare-fun lt!2242454 () Regex!15457)

(assert (=> d!1741788 (= res!2341964 (validRegex!7193 lt!2242454))))

(declare-fun e!3397482 () Regex!15457)

(assert (=> d!1741788 (= lt!2242454 e!3397482)))

(declare-fun c!958780 () Bool)

(declare-fun e!3397481 () Bool)

(assert (=> d!1741788 (= c!958780 e!3397481)))

(declare-fun res!2341963 () Bool)

(assert (=> d!1741788 (=> (not res!2341963) (not e!3397481))))

(assert (=> d!1741788 (= res!2341963 ((_ is Cons!62546) (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> d!1741788 (forall!14650 (t!375901 (exprs!5341 (h!68995 zl!343))) lambda!294043)))

(assert (=> d!1741788 (= (generalisedConcat!1072 (t!375901 (exprs!5341 (h!68995 zl!343)))) lt!2242454)))

(declare-fun b!5490919 () Bool)

(declare-fun e!3397485 () Bool)

(assert (=> b!5490919 (= e!3397483 e!3397485)))

(declare-fun c!958777 () Bool)

(assert (=> b!5490919 (= c!958777 (isEmpty!34347 (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5490920 () Bool)

(assert (=> b!5490920 (= e!3397485 (isEmptyExpr!1048 lt!2242454))))

(declare-fun b!5490921 () Bool)

(assert (=> b!5490921 (= e!3397482 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5490922 () Bool)

(assert (=> b!5490922 (= e!3397481 (isEmpty!34347 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5490923 () Bool)

(declare-fun e!3397480 () Regex!15457)

(assert (=> b!5490923 (= e!3397480 EmptyExpr!15457)))

(declare-fun b!5490924 () Bool)

(declare-fun e!3397484 () Bool)

(assert (=> b!5490924 (= e!3397484 (= lt!2242454 (head!11754 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5490925 () Bool)

(assert (=> b!5490925 (= e!3397484 (isConcat!571 lt!2242454))))

(declare-fun b!5490926 () Bool)

(assert (=> b!5490926 (= e!3397480 (Concat!24302 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))) (generalisedConcat!1072 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))))))))

(declare-fun b!5490927 () Bool)

(assert (=> b!5490927 (= e!3397482 e!3397480)))

(declare-fun c!958778 () Bool)

(assert (=> b!5490927 (= c!958778 ((_ is Cons!62546) (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5490928 () Bool)

(assert (=> b!5490928 (= e!3397485 e!3397484)))

(declare-fun c!958779 () Bool)

(assert (=> b!5490928 (= c!958779 (isEmpty!34347 (tail!10849 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(assert (= (and d!1741788 res!2341963) b!5490922))

(assert (= (and d!1741788 c!958780) b!5490921))

(assert (= (and d!1741788 (not c!958780)) b!5490927))

(assert (= (and b!5490927 c!958778) b!5490926))

(assert (= (and b!5490927 (not c!958778)) b!5490923))

(assert (= (and d!1741788 res!2341964) b!5490919))

(assert (= (and b!5490919 c!958777) b!5490920))

(assert (= (and b!5490919 (not c!958777)) b!5490928))

(assert (= (and b!5490928 c!958779) b!5490924))

(assert (= (and b!5490928 (not c!958779)) b!5490925))

(assert (=> b!5490919 m!6503680))

(declare-fun m!6503820 () Bool)

(assert (=> b!5490924 m!6503820))

(declare-fun m!6503822 () Bool)

(assert (=> b!5490922 m!6503822))

(declare-fun m!6503824 () Bool)

(assert (=> d!1741788 m!6503824))

(declare-fun m!6503826 () Bool)

(assert (=> d!1741788 m!6503826))

(declare-fun m!6503828 () Bool)

(assert (=> b!5490926 m!6503828))

(declare-fun m!6503830 () Bool)

(assert (=> b!5490925 m!6503830))

(declare-fun m!6503832 () Bool)

(assert (=> b!5490928 m!6503832))

(assert (=> b!5490928 m!6503832))

(declare-fun m!6503834 () Bool)

(assert (=> b!5490928 m!6503834))

(declare-fun m!6503836 () Bool)

(assert (=> b!5490920 m!6503836))

(assert (=> b!5490525 d!1741788))

(declare-fun d!1741790 () Bool)

(assert (=> d!1741790 (= (isConcat!571 lt!2242431) ((_ is Concat!24302) lt!2242431))))

(assert (=> b!5490524 d!1741790))

(declare-fun bm!404831 () Bool)

(declare-fun call!404838 () Bool)

(declare-fun call!404836 () Bool)

(assert (=> bm!404831 (= call!404838 call!404836)))

(declare-fun b!5490929 () Bool)

(declare-fun res!2341968 () Bool)

(declare-fun e!3397488 () Bool)

(assert (=> b!5490929 (=> res!2341968 e!3397488)))

(assert (=> b!5490929 (= res!2341968 (not ((_ is Concat!24302) lt!2242437)))))

(declare-fun e!3397486 () Bool)

(assert (=> b!5490929 (= e!3397486 e!3397488)))

(declare-fun b!5490930 () Bool)

(declare-fun e!3397489 () Bool)

(declare-fun call!404837 () Bool)

(assert (=> b!5490930 (= e!3397489 call!404837)))

(declare-fun b!5490931 () Bool)

(declare-fun e!3397490 () Bool)

(assert (=> b!5490931 (= e!3397490 call!404837)))

(declare-fun b!5490932 () Bool)

(declare-fun res!2341969 () Bool)

(assert (=> b!5490932 (=> (not res!2341969) (not e!3397489))))

(assert (=> b!5490932 (= res!2341969 call!404838)))

(assert (=> b!5490932 (= e!3397486 e!3397489)))

(declare-fun b!5490933 () Bool)

(declare-fun e!3397492 () Bool)

(assert (=> b!5490933 (= e!3397492 call!404836)))

(declare-fun d!1741792 () Bool)

(declare-fun res!2341966 () Bool)

(declare-fun e!3397487 () Bool)

(assert (=> d!1741792 (=> res!2341966 e!3397487)))

(assert (=> d!1741792 (= res!2341966 ((_ is ElementMatch!15457) lt!2242437))))

(assert (=> d!1741792 (= (validRegex!7193 lt!2242437) e!3397487)))

(declare-fun b!5490934 () Bool)

(declare-fun e!3397491 () Bool)

(assert (=> b!5490934 (= e!3397491 e!3397492)))

(declare-fun res!2341967 () Bool)

(assert (=> b!5490934 (= res!2341967 (not (nullable!5500 (reg!15786 lt!2242437))))))

(assert (=> b!5490934 (=> (not res!2341967) (not e!3397492))))

(declare-fun b!5490935 () Bool)

(assert (=> b!5490935 (= e!3397488 e!3397490)))

(declare-fun res!2341965 () Bool)

(assert (=> b!5490935 (=> (not res!2341965) (not e!3397490))))

(assert (=> b!5490935 (= res!2341965 call!404838)))

(declare-fun b!5490936 () Bool)

(assert (=> b!5490936 (= e!3397491 e!3397486)))

(declare-fun c!958781 () Bool)

(assert (=> b!5490936 (= c!958781 ((_ is Union!15457) lt!2242437))))

(declare-fun b!5490937 () Bool)

(assert (=> b!5490937 (= e!3397487 e!3397491)))

(declare-fun c!958782 () Bool)

(assert (=> b!5490937 (= c!958782 ((_ is Star!15457) lt!2242437))))

(declare-fun bm!404832 () Bool)

(assert (=> bm!404832 (= call!404837 (validRegex!7193 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))))))

(declare-fun bm!404833 () Bool)

(assert (=> bm!404833 (= call!404836 (validRegex!7193 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))))))

(assert (= (and d!1741792 (not res!2341966)) b!5490937))

(assert (= (and b!5490937 c!958782) b!5490934))

(assert (= (and b!5490937 (not c!958782)) b!5490936))

(assert (= (and b!5490934 res!2341967) b!5490933))

(assert (= (and b!5490936 c!958781) b!5490932))

(assert (= (and b!5490936 (not c!958781)) b!5490929))

(assert (= (and b!5490932 res!2341969) b!5490930))

(assert (= (and b!5490929 (not res!2341968)) b!5490935))

(assert (= (and b!5490935 res!2341965) b!5490931))

(assert (= (or b!5490930 b!5490931) bm!404832))

(assert (= (or b!5490932 b!5490935) bm!404831))

(assert (= (or b!5490933 bm!404831) bm!404833))

(declare-fun m!6503838 () Bool)

(assert (=> b!5490934 m!6503838))

(declare-fun m!6503840 () Bool)

(assert (=> bm!404832 m!6503840))

(declare-fun m!6503842 () Bool)

(assert (=> bm!404833 m!6503842))

(assert (=> d!1741740 d!1741792))

(declare-fun bs!1267224 () Bool)

(declare-fun d!1741794 () Bool)

(assert (= bs!1267224 (and d!1741794 d!1741766)))

(declare-fun lambda!294046 () Int)

(assert (=> bs!1267224 (= lambda!294046 lambda!294042)))

(declare-fun bs!1267225 () Bool)

(assert (= bs!1267225 (and d!1741794 d!1741728)))

(assert (=> bs!1267225 (= lambda!294046 lambda!294026)))

(declare-fun bs!1267226 () Bool)

(assert (= bs!1267226 (and d!1741794 d!1741726)))

(assert (=> bs!1267226 (= lambda!294046 lambda!294022)))

(declare-fun bs!1267227 () Bool)

(assert (= bs!1267227 (and d!1741794 d!1741720)))

(assert (=> bs!1267227 (= lambda!294046 lambda!294021)))

(declare-fun bs!1267228 () Bool)

(assert (= bs!1267228 (and d!1741794 d!1741788)))

(assert (=> bs!1267228 (= lambda!294046 lambda!294043)))

(declare-fun b!5490958 () Bool)

(declare-fun e!3397505 () Bool)

(declare-fun e!3397510 () Bool)

(assert (=> b!5490958 (= e!3397505 e!3397510)))

(declare-fun c!958794 () Bool)

(assert (=> b!5490958 (= c!958794 (isEmpty!34347 (unfocusZipperList!884 zl!343)))))

(declare-fun b!5490959 () Bool)

(declare-fun e!3397508 () Bool)

(declare-fun lt!2242457 () Regex!15457)

(declare-fun isUnion!488 (Regex!15457) Bool)

(assert (=> b!5490959 (= e!3397508 (isUnion!488 lt!2242457))))

(declare-fun b!5490960 () Bool)

(declare-fun isEmptyLang!1058 (Regex!15457) Bool)

(assert (=> b!5490960 (= e!3397510 (isEmptyLang!1058 lt!2242457))))

(declare-fun b!5490961 () Bool)

(declare-fun e!3397507 () Regex!15457)

(assert (=> b!5490961 (= e!3397507 EmptyLang!15457)))

(assert (=> d!1741794 e!3397505))

(declare-fun res!2341974 () Bool)

(assert (=> d!1741794 (=> (not res!2341974) (not e!3397505))))

(assert (=> d!1741794 (= res!2341974 (validRegex!7193 lt!2242457))))

(declare-fun e!3397506 () Regex!15457)

(assert (=> d!1741794 (= lt!2242457 e!3397506)))

(declare-fun c!958793 () Bool)

(declare-fun e!3397509 () Bool)

(assert (=> d!1741794 (= c!958793 e!3397509)))

(declare-fun res!2341975 () Bool)

(assert (=> d!1741794 (=> (not res!2341975) (not e!3397509))))

(assert (=> d!1741794 (= res!2341975 ((_ is Cons!62546) (unfocusZipperList!884 zl!343)))))

(assert (=> d!1741794 (forall!14650 (unfocusZipperList!884 zl!343) lambda!294046)))

(assert (=> d!1741794 (= (generalisedUnion!1319 (unfocusZipperList!884 zl!343)) lt!2242457)))

(declare-fun b!5490962 () Bool)

(assert (=> b!5490962 (= e!3397510 e!3397508)))

(declare-fun c!958791 () Bool)

(assert (=> b!5490962 (= c!958791 (isEmpty!34347 (tail!10849 (unfocusZipperList!884 zl!343))))))

(declare-fun b!5490963 () Bool)

(assert (=> b!5490963 (= e!3397508 (= lt!2242457 (head!11754 (unfocusZipperList!884 zl!343))))))

(declare-fun b!5490964 () Bool)

(assert (=> b!5490964 (= e!3397509 (isEmpty!34347 (t!375901 (unfocusZipperList!884 zl!343))))))

(declare-fun b!5490965 () Bool)

(assert (=> b!5490965 (= e!3397506 (h!68994 (unfocusZipperList!884 zl!343)))))

(declare-fun b!5490966 () Bool)

(assert (=> b!5490966 (= e!3397507 (Union!15457 (h!68994 (unfocusZipperList!884 zl!343)) (generalisedUnion!1319 (t!375901 (unfocusZipperList!884 zl!343)))))))

(declare-fun b!5490967 () Bool)

(assert (=> b!5490967 (= e!3397506 e!3397507)))

(declare-fun c!958792 () Bool)

(assert (=> b!5490967 (= c!958792 ((_ is Cons!62546) (unfocusZipperList!884 zl!343)))))

(assert (= (and d!1741794 res!2341975) b!5490964))

(assert (= (and d!1741794 c!958793) b!5490965))

(assert (= (and d!1741794 (not c!958793)) b!5490967))

(assert (= (and b!5490967 c!958792) b!5490966))

(assert (= (and b!5490967 (not c!958792)) b!5490961))

(assert (= (and d!1741794 res!2341974) b!5490958))

(assert (= (and b!5490958 c!958794) b!5490960))

(assert (= (and b!5490958 (not c!958794)) b!5490962))

(assert (= (and b!5490962 c!958791) b!5490963))

(assert (= (and b!5490962 (not c!958791)) b!5490959))

(declare-fun m!6503844 () Bool)

(assert (=> b!5490959 m!6503844))

(assert (=> b!5490963 m!6503718))

(declare-fun m!6503846 () Bool)

(assert (=> b!5490963 m!6503846))

(assert (=> b!5490962 m!6503718))

(declare-fun m!6503848 () Bool)

(assert (=> b!5490962 m!6503848))

(assert (=> b!5490962 m!6503848))

(declare-fun m!6503850 () Bool)

(assert (=> b!5490962 m!6503850))

(declare-fun m!6503852 () Bool)

(assert (=> b!5490960 m!6503852))

(declare-fun m!6503854 () Bool)

(assert (=> b!5490964 m!6503854))

(assert (=> b!5490958 m!6503718))

(declare-fun m!6503856 () Bool)

(assert (=> b!5490958 m!6503856))

(declare-fun m!6503858 () Bool)

(assert (=> d!1741794 m!6503858))

(assert (=> d!1741794 m!6503718))

(declare-fun m!6503860 () Bool)

(assert (=> d!1741794 m!6503860))

(declare-fun m!6503862 () Bool)

(assert (=> b!5490966 m!6503862))

(assert (=> d!1741740 d!1741794))

(declare-fun bs!1267231 () Bool)

(declare-fun d!1741796 () Bool)

(assert (= bs!1267231 (and d!1741796 d!1741766)))

(declare-fun lambda!294050 () Int)

(assert (=> bs!1267231 (= lambda!294050 lambda!294042)))

(declare-fun bs!1267233 () Bool)

(assert (= bs!1267233 (and d!1741796 d!1741728)))

(assert (=> bs!1267233 (= lambda!294050 lambda!294026)))

(declare-fun bs!1267234 () Bool)

(assert (= bs!1267234 (and d!1741796 d!1741726)))

(assert (=> bs!1267234 (= lambda!294050 lambda!294022)))

(declare-fun bs!1267235 () Bool)

(assert (= bs!1267235 (and d!1741796 d!1741720)))

(assert (=> bs!1267235 (= lambda!294050 lambda!294021)))

(declare-fun bs!1267236 () Bool)

(assert (= bs!1267236 (and d!1741796 d!1741794)))

(assert (=> bs!1267236 (= lambda!294050 lambda!294046)))

(declare-fun bs!1267237 () Bool)

(assert (= bs!1267237 (and d!1741796 d!1741788)))

(assert (=> bs!1267237 (= lambda!294050 lambda!294043)))

(declare-fun lt!2242461 () List!62670)

(assert (=> d!1741796 (forall!14650 lt!2242461 lambda!294050)))

(declare-fun e!3397519 () List!62670)

(assert (=> d!1741796 (= lt!2242461 e!3397519)))

(declare-fun c!958801 () Bool)

(assert (=> d!1741796 (= c!958801 ((_ is Cons!62547) zl!343))))

(assert (=> d!1741796 (= (unfocusZipperList!884 zl!343) lt!2242461)))

(declare-fun b!5490982 () Bool)

(assert (=> b!5490982 (= e!3397519 (Cons!62546 (generalisedConcat!1072 (exprs!5341 (h!68995 zl!343))) (unfocusZipperList!884 (t!375902 zl!343))))))

(declare-fun b!5490983 () Bool)

(assert (=> b!5490983 (= e!3397519 Nil!62546)))

(assert (= (and d!1741796 c!958801) b!5490982))

(assert (= (and d!1741796 (not c!958801)) b!5490983))

(declare-fun m!6503864 () Bool)

(assert (=> d!1741796 m!6503864))

(assert (=> b!5490982 m!6503616))

(declare-fun m!6503866 () Bool)

(assert (=> b!5490982 m!6503866))

(assert (=> d!1741740 d!1741796))

(declare-fun bs!1267239 () Bool)

(declare-fun b!5490984 () Bool)

(assert (= bs!1267239 (and b!5490984 b!5490772)))

(declare-fun lambda!294051 () Int)

(assert (=> bs!1267239 (= (and (= (reg!15786 (regOne!31427 r!7292)) (reg!15786 r!7292)) (= (regOne!31427 r!7292) r!7292)) (= lambda!294051 lambda!294038))))

(declare-fun bs!1267240 () Bool)

(assert (= bs!1267240 (and b!5490984 b!5490781)))

(assert (=> bs!1267240 (not (= lambda!294051 lambda!294039))))

(declare-fun bs!1267241 () Bool)

(assert (= bs!1267241 (and b!5490984 b!5490841)))

(assert (=> bs!1267241 (= (and (= (reg!15786 (regOne!31427 r!7292)) (reg!15786 (regTwo!31427 r!7292))) (= (regOne!31427 r!7292) (regTwo!31427 r!7292))) (= lambda!294051 lambda!294040))))

(declare-fun bs!1267242 () Bool)

(assert (= bs!1267242 (and b!5490984 b!5490850)))

(assert (=> bs!1267242 (not (= lambda!294051 lambda!294041))))

(assert (=> b!5490984 true))

(assert (=> b!5490984 true))

(declare-fun bs!1267243 () Bool)

(declare-fun b!5490993 () Bool)

(assert (= bs!1267243 (and b!5490993 b!5490850)))

(declare-fun lambda!294052 () Int)

(assert (=> bs!1267243 (= (and (= (regOne!31426 (regOne!31427 r!7292)) (regOne!31426 (regTwo!31427 r!7292))) (= (regTwo!31426 (regOne!31427 r!7292)) (regTwo!31426 (regTwo!31427 r!7292)))) (= lambda!294052 lambda!294041))))

(declare-fun bs!1267244 () Bool)

(assert (= bs!1267244 (and b!5490993 b!5490841)))

(assert (=> bs!1267244 (not (= lambda!294052 lambda!294040))))

(declare-fun bs!1267245 () Bool)

(assert (= bs!1267245 (and b!5490993 b!5490772)))

(assert (=> bs!1267245 (not (= lambda!294052 lambda!294038))))

(declare-fun bs!1267246 () Bool)

(assert (= bs!1267246 (and b!5490993 b!5490781)))

(assert (=> bs!1267246 (= (and (= (regOne!31426 (regOne!31427 r!7292)) (regOne!31426 r!7292)) (= (regTwo!31426 (regOne!31427 r!7292)) (regTwo!31426 r!7292))) (= lambda!294052 lambda!294039))))

(declare-fun bs!1267247 () Bool)

(assert (= bs!1267247 (and b!5490993 b!5490984)))

(assert (=> bs!1267247 (not (= lambda!294052 lambda!294051))))

(assert (=> b!5490993 true))

(assert (=> b!5490993 true))

(declare-fun e!3397521 () Bool)

(declare-fun call!404839 () Bool)

(assert (=> b!5490984 (= e!3397521 call!404839)))

(declare-fun b!5490985 () Bool)

(declare-fun e!3397520 () Bool)

(assert (=> b!5490985 (= e!3397520 (= s!2326 (Cons!62548 (c!958671 (regOne!31427 r!7292)) Nil!62548)))))

(declare-fun b!5490986 () Bool)

(declare-fun e!3397524 () Bool)

(declare-fun e!3397522 () Bool)

(assert (=> b!5490986 (= e!3397524 e!3397522)))

(declare-fun c!958803 () Bool)

(assert (=> b!5490986 (= c!958803 ((_ is Star!15457) (regOne!31427 r!7292)))))

(declare-fun b!5490987 () Bool)

(declare-fun c!958802 () Bool)

(assert (=> b!5490987 (= c!958802 ((_ is ElementMatch!15457) (regOne!31427 r!7292)))))

(declare-fun e!3397523 () Bool)

(assert (=> b!5490987 (= e!3397523 e!3397520)))

(declare-fun b!5490988 () Bool)

(declare-fun e!3397526 () Bool)

(assert (=> b!5490988 (= e!3397524 e!3397526)))

(declare-fun res!2341978 () Bool)

(assert (=> b!5490988 (= res!2341978 (matchRSpec!2560 (regOne!31427 (regOne!31427 r!7292)) s!2326))))

(assert (=> b!5490988 (=> res!2341978 e!3397526)))

(declare-fun bm!404834 () Bool)

(declare-fun call!404840 () Bool)

(assert (=> bm!404834 (= call!404840 (isEmpty!34349 s!2326))))

(declare-fun bm!404835 () Bool)

(assert (=> bm!404835 (= call!404839 (Exists!2567 (ite c!958803 lambda!294051 lambda!294052)))))

(declare-fun b!5490990 () Bool)

(assert (=> b!5490990 (= e!3397526 (matchRSpec!2560 (regTwo!31427 (regOne!31427 r!7292)) s!2326))))

(declare-fun b!5490991 () Bool)

(declare-fun e!3397525 () Bool)

(assert (=> b!5490991 (= e!3397525 call!404840)))

(declare-fun b!5490992 () Bool)

(declare-fun res!2341979 () Bool)

(assert (=> b!5490992 (=> res!2341979 e!3397521)))

(assert (=> b!5490992 (= res!2341979 call!404840)))

(assert (=> b!5490992 (= e!3397522 e!3397521)))

(assert (=> b!5490993 (= e!3397522 call!404839)))

(declare-fun b!5490994 () Bool)

(declare-fun c!958804 () Bool)

(assert (=> b!5490994 (= c!958804 ((_ is Union!15457) (regOne!31427 r!7292)))))

(assert (=> b!5490994 (= e!3397520 e!3397524)))

(declare-fun d!1741802 () Bool)

(declare-fun c!958805 () Bool)

(assert (=> d!1741802 (= c!958805 ((_ is EmptyExpr!15457) (regOne!31427 r!7292)))))

(assert (=> d!1741802 (= (matchRSpec!2560 (regOne!31427 r!7292) s!2326) e!3397525)))

(declare-fun b!5490989 () Bool)

(assert (=> b!5490989 (= e!3397525 e!3397523)))

(declare-fun res!2341980 () Bool)

(assert (=> b!5490989 (= res!2341980 (not ((_ is EmptyLang!15457) (regOne!31427 r!7292))))))

(assert (=> b!5490989 (=> (not res!2341980) (not e!3397523))))

(assert (= (and d!1741802 c!958805) b!5490991))

(assert (= (and d!1741802 (not c!958805)) b!5490989))

(assert (= (and b!5490989 res!2341980) b!5490987))

(assert (= (and b!5490987 c!958802) b!5490985))

(assert (= (and b!5490987 (not c!958802)) b!5490994))

(assert (= (and b!5490994 c!958804) b!5490988))

(assert (= (and b!5490994 (not c!958804)) b!5490986))

(assert (= (and b!5490988 (not res!2341978)) b!5490990))

(assert (= (and b!5490986 c!958803) b!5490992))

(assert (= (and b!5490986 (not c!958803)) b!5490993))

(assert (= (and b!5490992 (not res!2341979)) b!5490984))

(assert (= (or b!5490984 b!5490993) bm!404835))

(assert (= (or b!5490991 b!5490992) bm!404834))

(declare-fun m!6503888 () Bool)

(assert (=> b!5490988 m!6503888))

(assert (=> bm!404834 m!6503728))

(declare-fun m!6503890 () Bool)

(assert (=> bm!404835 m!6503890))

(declare-fun m!6503892 () Bool)

(assert (=> b!5490990 m!6503892))

(assert (=> b!5490776 d!1741802))

(declare-fun d!1741816 () Bool)

(assert (=> d!1741816 (= (isEmpty!34347 (t!375901 (exprs!5341 (h!68995 zl!343)))) ((_ is Nil!62546) (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> b!5490521 d!1741816))

(declare-fun bs!1267248 () Bool)

(declare-fun d!1741818 () Bool)

(assert (= bs!1267248 (and d!1741818 d!1741766)))

(declare-fun lambda!294053 () Int)

(assert (=> bs!1267248 (= lambda!294053 lambda!294042)))

(declare-fun bs!1267249 () Bool)

(assert (= bs!1267249 (and d!1741818 d!1741728)))

(assert (=> bs!1267249 (= lambda!294053 lambda!294026)))

(declare-fun bs!1267250 () Bool)

(assert (= bs!1267250 (and d!1741818 d!1741726)))

(assert (=> bs!1267250 (= lambda!294053 lambda!294022)))

(declare-fun bs!1267251 () Bool)

(assert (= bs!1267251 (and d!1741818 d!1741720)))

(assert (=> bs!1267251 (= lambda!294053 lambda!294021)))

(declare-fun bs!1267252 () Bool)

(assert (= bs!1267252 (and d!1741818 d!1741796)))

(assert (=> bs!1267252 (= lambda!294053 lambda!294050)))

(declare-fun bs!1267253 () Bool)

(assert (= bs!1267253 (and d!1741818 d!1741794)))

(assert (=> bs!1267253 (= lambda!294053 lambda!294046)))

(declare-fun bs!1267254 () Bool)

(assert (= bs!1267254 (and d!1741818 d!1741788)))

(assert (=> bs!1267254 (= lambda!294053 lambda!294043)))

(assert (=> d!1741818 (= (inv!81889 setElem!36345) (forall!14650 (exprs!5341 setElem!36345) lambda!294053))))

(declare-fun bs!1267255 () Bool)

(assert (= bs!1267255 d!1741818))

(declare-fun m!6503898 () Bool)

(assert (=> bs!1267255 m!6503898))

(assert (=> setNonEmpty!36345 d!1741818))

(declare-fun d!1741824 () Bool)

(assert (=> d!1741824 (= (isEmpty!34347 (exprs!5341 (h!68995 zl!343))) ((_ is Nil!62546) (exprs!5341 (h!68995 zl!343))))))

(assert (=> b!5490518 d!1741824))

(declare-fun d!1741826 () Bool)

(assert (=> d!1741826 (= (isEmpty!34349 (tail!10851 s!2326)) ((_ is Nil!62548) (tail!10851 s!2326)))))

(assert (=> b!5490674 d!1741826))

(assert (=> b!5490674 d!1741786))

(assert (=> d!1741754 d!1741742))

(assert (=> d!1741754 d!1741744))

(declare-fun d!1741828 () Bool)

(assert (=> d!1741828 (= (matchR!7642 r!7292 s!2326) (matchRSpec!2560 r!7292 s!2326))))

(assert (=> d!1741828 true))

(declare-fun _$88!3703 () Unit!155374)

(assert (=> d!1741828 (= (choose!41759 r!7292 s!2326) _$88!3703)))

(declare-fun bs!1267256 () Bool)

(assert (= bs!1267256 d!1741828))

(assert (=> bs!1267256 m!6503622))

(assert (=> bs!1267256 m!6503624))

(assert (=> d!1741754 d!1741828))

(assert (=> d!1741754 d!1741736))

(assert (=> d!1741742 d!1741768))

(assert (=> d!1741742 d!1741736))

(declare-fun d!1741832 () Bool)

(assert (=> d!1741832 (= (isEmptyExpr!1048 lt!2242431) ((_ is EmptyExpr!15457) lt!2242431))))

(assert (=> b!5490519 d!1741832))

(assert (=> b!5490675 d!1741784))

(assert (=> b!5490672 d!1741784))

(declare-fun bm!404838 () Bool)

(declare-fun call!404845 () Bool)

(declare-fun call!404843 () Bool)

(assert (=> bm!404838 (= call!404845 call!404843)))

(declare-fun b!5491012 () Bool)

(declare-fun res!2341987 () Bool)

(declare-fun e!3397539 () Bool)

(assert (=> b!5491012 (=> res!2341987 e!3397539)))

(assert (=> b!5491012 (= res!2341987 (not ((_ is Concat!24302) (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))

(declare-fun e!3397537 () Bool)

(assert (=> b!5491012 (= e!3397537 e!3397539)))

(declare-fun b!5491013 () Bool)

(declare-fun e!3397540 () Bool)

(declare-fun call!404844 () Bool)

(assert (=> b!5491013 (= e!3397540 call!404844)))

(declare-fun b!5491014 () Bool)

(declare-fun e!3397541 () Bool)

(assert (=> b!5491014 (= e!3397541 call!404844)))

(declare-fun b!5491015 () Bool)

(declare-fun res!2341988 () Bool)

(assert (=> b!5491015 (=> (not res!2341988) (not e!3397540))))

(assert (=> b!5491015 (= res!2341988 call!404845)))

(assert (=> b!5491015 (= e!3397537 e!3397540)))

(declare-fun b!5491016 () Bool)

(declare-fun e!3397543 () Bool)

(assert (=> b!5491016 (= e!3397543 call!404843)))

(declare-fun d!1741836 () Bool)

(declare-fun res!2341985 () Bool)

(declare-fun e!3397538 () Bool)

(assert (=> d!1741836 (=> res!2341985 e!3397538)))

(assert (=> d!1741836 (= res!2341985 ((_ is ElementMatch!15457) (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))

(assert (=> d!1741836 (= (validRegex!7193 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) e!3397538)))

(declare-fun b!5491017 () Bool)

(declare-fun e!3397542 () Bool)

(assert (=> b!5491017 (= e!3397542 e!3397543)))

(declare-fun res!2341986 () Bool)

(assert (=> b!5491017 (= res!2341986 (not (nullable!5500 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))

(assert (=> b!5491017 (=> (not res!2341986) (not e!3397543))))

(declare-fun b!5491018 () Bool)

(assert (=> b!5491018 (= e!3397539 e!3397541)))

(declare-fun res!2341984 () Bool)

(assert (=> b!5491018 (=> (not res!2341984) (not e!3397541))))

(assert (=> b!5491018 (= res!2341984 call!404845)))

(declare-fun b!5491019 () Bool)

(assert (=> b!5491019 (= e!3397542 e!3397537)))

(declare-fun c!958813 () Bool)

(assert (=> b!5491019 (= c!958813 ((_ is Union!15457) (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))

(declare-fun b!5491020 () Bool)

(assert (=> b!5491020 (= e!3397538 e!3397542)))

(declare-fun c!958814 () Bool)

(assert (=> b!5491020 (= c!958814 ((_ is Star!15457) (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))

(declare-fun bm!404839 () Bool)

(assert (=> bm!404839 (= call!404844 (validRegex!7193 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))

(declare-fun bm!404840 () Bool)

(assert (=> bm!404840 (= call!404843 (validRegex!7193 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))

(assert (= (and d!1741836 (not res!2341985)) b!5491020))

(assert (= (and b!5491020 c!958814) b!5491017))

(assert (= (and b!5491020 (not c!958814)) b!5491019))

(assert (= (and b!5491017 res!2341986) b!5491016))

(assert (= (and b!5491019 c!958813) b!5491015))

(assert (= (and b!5491019 (not c!958813)) b!5491012))

(assert (= (and b!5491015 res!2341988) b!5491013))

(assert (= (and b!5491012 (not res!2341987)) b!5491018))

(assert (= (and b!5491018 res!2341984) b!5491014))

(assert (= (or b!5491013 b!5491014) bm!404839))

(assert (= (or b!5491015 b!5491018) bm!404838))

(assert (= (or b!5491016 bm!404838) bm!404840))

(declare-fun m!6503900 () Bool)

(assert (=> b!5491017 m!6503900))

(declare-fun m!6503902 () Bool)

(assert (=> bm!404839 m!6503902))

(declare-fun m!6503904 () Bool)

(assert (=> bm!404840 m!6503904))

(assert (=> bm!404796 d!1741836))

(assert (=> bm!404806 d!1741768))

(declare-fun d!1741838 () Bool)

(assert (=> d!1741838 (= (nullable!5500 r!7292) (nullableFct!1642 r!7292))))

(declare-fun bs!1267260 () Bool)

(assert (= bs!1267260 d!1741838))

(declare-fun m!6503906 () Bool)

(assert (=> bs!1267260 m!6503906))

(assert (=> b!5490673 d!1741838))

(declare-fun bm!404841 () Bool)

(declare-fun call!404848 () Bool)

(declare-fun call!404846 () Bool)

(assert (=> bm!404841 (= call!404848 call!404846)))

(declare-fun b!5491021 () Bool)

(declare-fun res!2341992 () Bool)

(declare-fun e!3397546 () Bool)

(assert (=> b!5491021 (=> res!2341992 e!3397546)))

(assert (=> b!5491021 (= res!2341992 (not ((_ is Concat!24302) (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))

(declare-fun e!3397544 () Bool)

(assert (=> b!5491021 (= e!3397544 e!3397546)))

(declare-fun b!5491022 () Bool)

(declare-fun e!3397547 () Bool)

(declare-fun call!404847 () Bool)

(assert (=> b!5491022 (= e!3397547 call!404847)))

(declare-fun b!5491023 () Bool)

(declare-fun e!3397548 () Bool)

(assert (=> b!5491023 (= e!3397548 call!404847)))

(declare-fun b!5491024 () Bool)

(declare-fun res!2341993 () Bool)

(assert (=> b!5491024 (=> (not res!2341993) (not e!3397547))))

(assert (=> b!5491024 (= res!2341993 call!404848)))

(assert (=> b!5491024 (= e!3397544 e!3397547)))

(declare-fun b!5491025 () Bool)

(declare-fun e!3397550 () Bool)

(assert (=> b!5491025 (= e!3397550 call!404846)))

(declare-fun d!1741840 () Bool)

(declare-fun res!2341990 () Bool)

(declare-fun e!3397545 () Bool)

(assert (=> d!1741840 (=> res!2341990 e!3397545)))

(assert (=> d!1741840 (= res!2341990 ((_ is ElementMatch!15457) (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))

(assert (=> d!1741840 (= (validRegex!7193 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) e!3397545)))

(declare-fun b!5491026 () Bool)

(declare-fun e!3397549 () Bool)

(assert (=> b!5491026 (= e!3397549 e!3397550)))

(declare-fun res!2341991 () Bool)

(assert (=> b!5491026 (= res!2341991 (not (nullable!5500 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))

(assert (=> b!5491026 (=> (not res!2341991) (not e!3397550))))

(declare-fun b!5491027 () Bool)

(assert (=> b!5491027 (= e!3397546 e!3397548)))

(declare-fun res!2341989 () Bool)

(assert (=> b!5491027 (=> (not res!2341989) (not e!3397548))))

(assert (=> b!5491027 (= res!2341989 call!404848)))

(declare-fun b!5491028 () Bool)

(assert (=> b!5491028 (= e!3397549 e!3397544)))

(declare-fun c!958815 () Bool)

(assert (=> b!5491028 (= c!958815 ((_ is Union!15457) (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))

(declare-fun b!5491029 () Bool)

(assert (=> b!5491029 (= e!3397545 e!3397549)))

(declare-fun c!958816 () Bool)

(assert (=> b!5491029 (= c!958816 ((_ is Star!15457) (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))

(declare-fun bm!404842 () Bool)

(assert (=> bm!404842 (= call!404847 (validRegex!7193 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))

(declare-fun bm!404843 () Bool)

(assert (=> bm!404843 (= call!404846 (validRegex!7193 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))

(assert (= (and d!1741840 (not res!2341990)) b!5491029))

(assert (= (and b!5491029 c!958816) b!5491026))

(assert (= (and b!5491029 (not c!958816)) b!5491028))

(assert (= (and b!5491026 res!2341991) b!5491025))

(assert (= (and b!5491028 c!958815) b!5491024))

(assert (= (and b!5491028 (not c!958815)) b!5491021))

(assert (= (and b!5491024 res!2341993) b!5491022))

(assert (= (and b!5491021 (not res!2341992)) b!5491027))

(assert (= (and b!5491027 res!2341989) b!5491023))

(assert (= (or b!5491022 b!5491023) bm!404842))

(assert (= (or b!5491024 b!5491027) bm!404841))

(assert (= (or b!5491025 bm!404841) bm!404843))

(declare-fun m!6503908 () Bool)

(assert (=> b!5491026 m!6503908))

(declare-fun m!6503910 () Bool)

(assert (=> bm!404842 m!6503910))

(declare-fun m!6503912 () Bool)

(assert (=> bm!404843 m!6503912))

(assert (=> bm!404797 d!1741840))

(declare-fun d!1741842 () Bool)

(declare-fun res!2342002 () Bool)

(declare-fun e!3397559 () Bool)

(assert (=> d!1741842 (=> res!2342002 e!3397559)))

(assert (=> d!1741842 (= res!2342002 ((_ is Nil!62547) lt!2242422))))

(assert (=> d!1741842 (= (noDuplicate!1467 lt!2242422) e!3397559)))

(declare-fun b!5491038 () Bool)

(declare-fun e!3397560 () Bool)

(assert (=> b!5491038 (= e!3397559 e!3397560)))

(declare-fun res!2342003 () Bool)

(assert (=> b!5491038 (=> (not res!2342003) (not e!3397560))))

(declare-fun contains!19764 (List!62671 Context!9682) Bool)

(assert (=> b!5491038 (= res!2342003 (not (contains!19764 (t!375902 lt!2242422) (h!68995 lt!2242422))))))

(declare-fun b!5491039 () Bool)

(assert (=> b!5491039 (= e!3397560 (noDuplicate!1467 (t!375902 lt!2242422)))))

(assert (= (and d!1741842 (not res!2342002)) b!5491038))

(assert (= (and b!5491038 res!2342003) b!5491039))

(declare-fun m!6503920 () Bool)

(assert (=> b!5491038 m!6503920))

(declare-fun m!6503922 () Bool)

(assert (=> b!5491039 m!6503922))

(assert (=> d!1741718 d!1741842))

(declare-fun d!1741846 () Bool)

(declare-fun e!3397576 () Bool)

(assert (=> d!1741846 e!3397576))

(declare-fun res!2342015 () Bool)

(assert (=> d!1741846 (=> (not res!2342015) (not e!3397576))))

(declare-fun res!2342016 () List!62671)

(assert (=> d!1741846 (= res!2342015 (noDuplicate!1467 res!2342016))))

(declare-fun e!3397577 () Bool)

(assert (=> d!1741846 e!3397577))

(assert (=> d!1741846 (= (choose!41756 z!1189) res!2342016)))

(declare-fun b!5491058 () Bool)

(declare-fun e!3397578 () Bool)

(declare-fun tp!1509700 () Bool)

(assert (=> b!5491058 (= e!3397578 tp!1509700)))

(declare-fun b!5491057 () Bool)

(declare-fun tp!1509701 () Bool)

(assert (=> b!5491057 (= e!3397577 (and (inv!81889 (h!68995 res!2342016)) e!3397578 tp!1509701))))

(declare-fun b!5491059 () Bool)

(assert (=> b!5491059 (= e!3397576 (= (content!11229 res!2342016) z!1189))))

(assert (= b!5491057 b!5491058))

(assert (= (and d!1741846 ((_ is Cons!62547) res!2342016)) b!5491057))

(assert (= (and d!1741846 res!2342015) b!5491059))

(declare-fun m!6503928 () Bool)

(assert (=> d!1741846 m!6503928))

(declare-fun m!6503930 () Bool)

(assert (=> b!5491057 m!6503930))

(declare-fun m!6503932 () Bool)

(assert (=> b!5491059 m!6503932))

(assert (=> d!1741718 d!1741846))

(declare-fun d!1741856 () Bool)

(declare-fun res!2342017 () Bool)

(declare-fun e!3397579 () Bool)

(assert (=> d!1741856 (=> res!2342017 e!3397579)))

(assert (=> d!1741856 (= res!2342017 ((_ is Nil!62546) (exprs!5341 (h!68995 zl!343))))))

(assert (=> d!1741856 (= (forall!14650 (exprs!5341 (h!68995 zl!343)) lambda!294021) e!3397579)))

(declare-fun b!5491060 () Bool)

(declare-fun e!3397580 () Bool)

(assert (=> b!5491060 (= e!3397579 e!3397580)))

(declare-fun res!2342018 () Bool)

(assert (=> b!5491060 (=> (not res!2342018) (not e!3397580))))

(assert (=> b!5491060 (= res!2342018 (dynLambda!24455 lambda!294021 (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5491061 () Bool)

(assert (=> b!5491061 (= e!3397580 (forall!14650 (t!375901 (exprs!5341 (h!68995 zl!343))) lambda!294021))))

(assert (= (and d!1741856 (not res!2342017)) b!5491060))

(assert (= (and b!5491060 res!2342018) b!5491061))

(declare-fun b_lambda!208393 () Bool)

(assert (=> (not b_lambda!208393) (not b!5491060)))

(declare-fun m!6503940 () Bool)

(assert (=> b!5491060 m!6503940))

(declare-fun m!6503942 () Bool)

(assert (=> b!5491061 m!6503942))

(assert (=> d!1741720 d!1741856))

(assert (=> b!5490671 d!1741826))

(assert (=> b!5490671 d!1741786))

(declare-fun b!5491062 () Bool)

(declare-fun e!3397581 () Bool)

(declare-fun tp!1509702 () Bool)

(declare-fun tp!1509703 () Bool)

(assert (=> b!5491062 (= e!3397581 (and tp!1509702 tp!1509703))))

(assert (=> b!5490794 (= tp!1509642 e!3397581)))

(assert (= (and b!5490794 ((_ is Cons!62546) (exprs!5341 (h!68995 (t!375902 zl!343))))) b!5491062))

(declare-fun e!3397582 () Bool)

(assert (=> b!5490799 (= tp!1509648 e!3397582)))

(declare-fun b!5491066 () Bool)

(declare-fun tp!1509708 () Bool)

(declare-fun tp!1509707 () Bool)

(assert (=> b!5491066 (= e!3397582 (and tp!1509708 tp!1509707))))

(declare-fun b!5491065 () Bool)

(declare-fun tp!1509705 () Bool)

(assert (=> b!5491065 (= e!3397582 tp!1509705)))

(declare-fun b!5491064 () Bool)

(declare-fun tp!1509706 () Bool)

(declare-fun tp!1509704 () Bool)

(assert (=> b!5491064 (= e!3397582 (and tp!1509706 tp!1509704))))

(declare-fun b!5491063 () Bool)

(assert (=> b!5491063 (= e!3397582 tp_is_empty!40167)))

(assert (= (and b!5490799 ((_ is ElementMatch!15457) (h!68994 (exprs!5341 (h!68995 zl!343))))) b!5491063))

(assert (= (and b!5490799 ((_ is Concat!24302) (h!68994 (exprs!5341 (h!68995 zl!343))))) b!5491064))

(assert (= (and b!5490799 ((_ is Star!15457) (h!68994 (exprs!5341 (h!68995 zl!343))))) b!5491065))

(assert (= (and b!5490799 ((_ is Union!15457) (h!68994 (exprs!5341 (h!68995 zl!343))))) b!5491066))

(declare-fun b!5491067 () Bool)

(declare-fun e!3397583 () Bool)

(declare-fun tp!1509709 () Bool)

(declare-fun tp!1509710 () Bool)

(assert (=> b!5491067 (= e!3397583 (and tp!1509709 tp!1509710))))

(assert (=> b!5490799 (= tp!1509649 e!3397583)))

(assert (= (and b!5490799 ((_ is Cons!62546) (t!375901 (exprs!5341 (h!68995 zl!343))))) b!5491067))

(declare-fun b!5491069 () Bool)

(declare-fun e!3397585 () Bool)

(declare-fun tp!1509711 () Bool)

(assert (=> b!5491069 (= e!3397585 tp!1509711)))

(declare-fun tp!1509712 () Bool)

(declare-fun e!3397584 () Bool)

(declare-fun b!5491068 () Bool)

(assert (=> b!5491068 (= e!3397584 (and (inv!81889 (h!68995 (t!375902 (t!375902 zl!343)))) e!3397585 tp!1509712))))

(assert (=> b!5490793 (= tp!1509643 e!3397584)))

(assert (= b!5491068 b!5491069))

(assert (= (and b!5490793 ((_ is Cons!62547) (t!375902 (t!375902 zl!343)))) b!5491068))

(declare-fun m!6503946 () Bool)

(assert (=> b!5491068 m!6503946))

(declare-fun e!3397593 () Bool)

(assert (=> b!5490836 (= tp!1509690 e!3397593)))

(declare-fun b!5491085 () Bool)

(declare-fun tp!1509717 () Bool)

(declare-fun tp!1509716 () Bool)

(assert (=> b!5491085 (= e!3397593 (and tp!1509717 tp!1509716))))

(declare-fun b!5491083 () Bool)

(declare-fun tp!1509714 () Bool)

(assert (=> b!5491083 (= e!3397593 tp!1509714)))

(declare-fun b!5491081 () Bool)

(declare-fun tp!1509715 () Bool)

(declare-fun tp!1509713 () Bool)

(assert (=> b!5491081 (= e!3397593 (and tp!1509715 tp!1509713))))

(declare-fun b!5491079 () Bool)

(assert (=> b!5491079 (= e!3397593 tp_is_empty!40167)))

(assert (= (and b!5490836 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 r!7292)))) b!5491079))

(assert (= (and b!5490836 ((_ is Concat!24302) (regOne!31427 (regOne!31427 r!7292)))) b!5491081))

(assert (= (and b!5490836 ((_ is Star!15457) (regOne!31427 (regOne!31427 r!7292)))) b!5491083))

(assert (= (and b!5490836 ((_ is Union!15457) (regOne!31427 (regOne!31427 r!7292)))) b!5491085))

(declare-fun e!3397594 () Bool)

(assert (=> b!5490836 (= tp!1509689 e!3397594)))

(declare-fun b!5491091 () Bool)

(declare-fun tp!1509722 () Bool)

(declare-fun tp!1509721 () Bool)

(assert (=> b!5491091 (= e!3397594 (and tp!1509722 tp!1509721))))

(declare-fun b!5491090 () Bool)

(declare-fun tp!1509719 () Bool)

(assert (=> b!5491090 (= e!3397594 tp!1509719)))

(declare-fun b!5491089 () Bool)

(declare-fun tp!1509720 () Bool)

(declare-fun tp!1509718 () Bool)

(assert (=> b!5491089 (= e!3397594 (and tp!1509720 tp!1509718))))

(declare-fun b!5491088 () Bool)

(assert (=> b!5491088 (= e!3397594 tp_is_empty!40167)))

(assert (= (and b!5490836 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 r!7292)))) b!5491088))

(assert (= (and b!5490836 ((_ is Concat!24302) (regTwo!31427 (regOne!31427 r!7292)))) b!5491089))

(assert (= (and b!5490836 ((_ is Star!15457) (regTwo!31427 (regOne!31427 r!7292)))) b!5491090))

(assert (= (and b!5490836 ((_ is Union!15457) (regTwo!31427 (regOne!31427 r!7292)))) b!5491091))

(declare-fun e!3397595 () Bool)

(assert (=> b!5490827 (= tp!1509677 e!3397595)))

(declare-fun b!5491095 () Bool)

(declare-fun tp!1509727 () Bool)

(declare-fun tp!1509726 () Bool)

(assert (=> b!5491095 (= e!3397595 (and tp!1509727 tp!1509726))))

(declare-fun b!5491094 () Bool)

(declare-fun tp!1509724 () Bool)

(assert (=> b!5491094 (= e!3397595 tp!1509724)))

(declare-fun b!5491093 () Bool)

(declare-fun tp!1509725 () Bool)

(declare-fun tp!1509723 () Bool)

(assert (=> b!5491093 (= e!3397595 (and tp!1509725 tp!1509723))))

(declare-fun b!5491092 () Bool)

(assert (=> b!5491092 (= e!3397595 tp_is_empty!40167)))

(assert (= (and b!5490827 ((_ is ElementMatch!15457) (reg!15786 (regOne!31426 r!7292)))) b!5491092))

(assert (= (and b!5490827 ((_ is Concat!24302) (reg!15786 (regOne!31426 r!7292)))) b!5491093))

(assert (= (and b!5490827 ((_ is Star!15457) (reg!15786 (regOne!31426 r!7292)))) b!5491094))

(assert (= (and b!5490827 ((_ is Union!15457) (reg!15786 (regOne!31426 r!7292)))) b!5491095))

(declare-fun e!3397596 () Bool)

(assert (=> b!5490828 (= tp!1509680 e!3397596)))

(declare-fun b!5491099 () Bool)

(declare-fun tp!1509732 () Bool)

(declare-fun tp!1509731 () Bool)

(assert (=> b!5491099 (= e!3397596 (and tp!1509732 tp!1509731))))

(declare-fun b!5491098 () Bool)

(declare-fun tp!1509729 () Bool)

(assert (=> b!5491098 (= e!3397596 tp!1509729)))

(declare-fun b!5491097 () Bool)

(declare-fun tp!1509730 () Bool)

(declare-fun tp!1509728 () Bool)

(assert (=> b!5491097 (= e!3397596 (and tp!1509730 tp!1509728))))

(declare-fun b!5491096 () Bool)

(assert (=> b!5491096 (= e!3397596 tp_is_empty!40167)))

(assert (= (and b!5490828 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31426 r!7292)))) b!5491096))

(assert (= (and b!5490828 ((_ is Concat!24302) (regOne!31427 (regOne!31426 r!7292)))) b!5491097))

(assert (= (and b!5490828 ((_ is Star!15457) (regOne!31427 (regOne!31426 r!7292)))) b!5491098))

(assert (= (and b!5490828 ((_ is Union!15457) (regOne!31427 (regOne!31426 r!7292)))) b!5491099))

(declare-fun e!3397597 () Bool)

(assert (=> b!5490828 (= tp!1509679 e!3397597)))

(declare-fun b!5491103 () Bool)

(declare-fun tp!1509737 () Bool)

(declare-fun tp!1509736 () Bool)

(assert (=> b!5491103 (= e!3397597 (and tp!1509737 tp!1509736))))

(declare-fun b!5491102 () Bool)

(declare-fun tp!1509734 () Bool)

(assert (=> b!5491102 (= e!3397597 tp!1509734)))

(declare-fun b!5491101 () Bool)

(declare-fun tp!1509735 () Bool)

(declare-fun tp!1509733 () Bool)

(assert (=> b!5491101 (= e!3397597 (and tp!1509735 tp!1509733))))

(declare-fun b!5491100 () Bool)

(assert (=> b!5491100 (= e!3397597 tp_is_empty!40167)))

(assert (= (and b!5490828 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31426 r!7292)))) b!5491100))

(assert (= (and b!5490828 ((_ is Concat!24302) (regTwo!31427 (regOne!31426 r!7292)))) b!5491101))

(assert (= (and b!5490828 ((_ is Star!15457) (regTwo!31427 (regOne!31426 r!7292)))) b!5491102))

(assert (= (and b!5490828 ((_ is Union!15457) (regTwo!31427 (regOne!31426 r!7292)))) b!5491103))

(declare-fun b!5491104 () Bool)

(declare-fun e!3397598 () Bool)

(declare-fun tp!1509738 () Bool)

(declare-fun tp!1509739 () Bool)

(assert (=> b!5491104 (= e!3397598 (and tp!1509738 tp!1509739))))

(assert (=> b!5490804 (= tp!1509654 e!3397598)))

(assert (= (and b!5490804 ((_ is Cons!62546) (exprs!5341 setElem!36345))) b!5491104))

(declare-fun e!3397599 () Bool)

(assert (=> b!5490834 (= tp!1509688 e!3397599)))

(declare-fun b!5491108 () Bool)

(declare-fun tp!1509744 () Bool)

(declare-fun tp!1509743 () Bool)

(assert (=> b!5491108 (= e!3397599 (and tp!1509744 tp!1509743))))

(declare-fun b!5491107 () Bool)

(declare-fun tp!1509741 () Bool)

(assert (=> b!5491107 (= e!3397599 tp!1509741)))

(declare-fun b!5491106 () Bool)

(declare-fun tp!1509742 () Bool)

(declare-fun tp!1509740 () Bool)

(assert (=> b!5491106 (= e!3397599 (and tp!1509742 tp!1509740))))

(declare-fun b!5491105 () Bool)

(assert (=> b!5491105 (= e!3397599 tp_is_empty!40167)))

(assert (= (and b!5490834 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31427 r!7292)))) b!5491105))

(assert (= (and b!5490834 ((_ is Concat!24302) (regOne!31426 (regOne!31427 r!7292)))) b!5491106))

(assert (= (and b!5490834 ((_ is Star!15457) (regOne!31426 (regOne!31427 r!7292)))) b!5491107))

(assert (= (and b!5490834 ((_ is Union!15457) (regOne!31426 (regOne!31427 r!7292)))) b!5491108))

(declare-fun e!3397600 () Bool)

(assert (=> b!5490834 (= tp!1509686 e!3397600)))

(declare-fun b!5491112 () Bool)

(declare-fun tp!1509749 () Bool)

(declare-fun tp!1509748 () Bool)

(assert (=> b!5491112 (= e!3397600 (and tp!1509749 tp!1509748))))

(declare-fun b!5491111 () Bool)

(declare-fun tp!1509746 () Bool)

(assert (=> b!5491111 (= e!3397600 tp!1509746)))

(declare-fun b!5491110 () Bool)

(declare-fun tp!1509747 () Bool)

(declare-fun tp!1509745 () Bool)

(assert (=> b!5491110 (= e!3397600 (and tp!1509747 tp!1509745))))

(declare-fun b!5491109 () Bool)

(assert (=> b!5491109 (= e!3397600 tp_is_empty!40167)))

(assert (= (and b!5490834 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31427 r!7292)))) b!5491109))

(assert (= (and b!5490834 ((_ is Concat!24302) (regTwo!31426 (regOne!31427 r!7292)))) b!5491110))

(assert (= (and b!5490834 ((_ is Star!15457) (regTwo!31426 (regOne!31427 r!7292)))) b!5491111))

(assert (= (and b!5490834 ((_ is Union!15457) (regTwo!31426 (regOne!31427 r!7292)))) b!5491112))

(declare-fun e!3397601 () Bool)

(assert (=> b!5490826 (= tp!1509678 e!3397601)))

(declare-fun b!5491116 () Bool)

(declare-fun tp!1509754 () Bool)

(declare-fun tp!1509753 () Bool)

(assert (=> b!5491116 (= e!3397601 (and tp!1509754 tp!1509753))))

(declare-fun b!5491115 () Bool)

(declare-fun tp!1509751 () Bool)

(assert (=> b!5491115 (= e!3397601 tp!1509751)))

(declare-fun b!5491114 () Bool)

(declare-fun tp!1509752 () Bool)

(declare-fun tp!1509750 () Bool)

(assert (=> b!5491114 (= e!3397601 (and tp!1509752 tp!1509750))))

(declare-fun b!5491113 () Bool)

(assert (=> b!5491113 (= e!3397601 tp_is_empty!40167)))

(assert (= (and b!5490826 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31426 r!7292)))) b!5491113))

(assert (= (and b!5490826 ((_ is Concat!24302) (regOne!31426 (regOne!31426 r!7292)))) b!5491114))

(assert (= (and b!5490826 ((_ is Star!15457) (regOne!31426 (regOne!31426 r!7292)))) b!5491115))

(assert (= (and b!5490826 ((_ is Union!15457) (regOne!31426 (regOne!31426 r!7292)))) b!5491116))

(declare-fun e!3397602 () Bool)

(assert (=> b!5490826 (= tp!1509676 e!3397602)))

(declare-fun b!5491120 () Bool)

(declare-fun tp!1509759 () Bool)

(declare-fun tp!1509758 () Bool)

(assert (=> b!5491120 (= e!3397602 (and tp!1509759 tp!1509758))))

(declare-fun b!5491119 () Bool)

(declare-fun tp!1509756 () Bool)

(assert (=> b!5491119 (= e!3397602 tp!1509756)))

(declare-fun b!5491118 () Bool)

(declare-fun tp!1509757 () Bool)

(declare-fun tp!1509755 () Bool)

(assert (=> b!5491118 (= e!3397602 (and tp!1509757 tp!1509755))))

(declare-fun b!5491117 () Bool)

(assert (=> b!5491117 (= e!3397602 tp_is_empty!40167)))

(assert (= (and b!5490826 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31426 r!7292)))) b!5491117))

(assert (= (and b!5490826 ((_ is Concat!24302) (regTwo!31426 (regOne!31426 r!7292)))) b!5491118))

(assert (= (and b!5490826 ((_ is Star!15457) (regTwo!31426 (regOne!31426 r!7292)))) b!5491119))

(assert (= (and b!5490826 ((_ is Union!15457) (regTwo!31426 (regOne!31426 r!7292)))) b!5491120))

(declare-fun e!3397603 () Bool)

(assert (=> b!5490835 (= tp!1509687 e!3397603)))

(declare-fun b!5491124 () Bool)

(declare-fun tp!1509764 () Bool)

(declare-fun tp!1509763 () Bool)

(assert (=> b!5491124 (= e!3397603 (and tp!1509764 tp!1509763))))

(declare-fun b!5491123 () Bool)

(declare-fun tp!1509761 () Bool)

(assert (=> b!5491123 (= e!3397603 tp!1509761)))

(declare-fun b!5491122 () Bool)

(declare-fun tp!1509762 () Bool)

(declare-fun tp!1509760 () Bool)

(assert (=> b!5491122 (= e!3397603 (and tp!1509762 tp!1509760))))

(declare-fun b!5491121 () Bool)

(assert (=> b!5491121 (= e!3397603 tp_is_empty!40167)))

(assert (= (and b!5490835 ((_ is ElementMatch!15457) (reg!15786 (regOne!31427 r!7292)))) b!5491121))

(assert (= (and b!5490835 ((_ is Concat!24302) (reg!15786 (regOne!31427 r!7292)))) b!5491122))

(assert (= (and b!5490835 ((_ is Star!15457) (reg!15786 (regOne!31427 r!7292)))) b!5491123))

(assert (= (and b!5490835 ((_ is Union!15457) (reg!15786 (regOne!31427 r!7292)))) b!5491124))

(declare-fun condSetEmpty!36346 () Bool)

(assert (=> setNonEmpty!36345 (= condSetEmpty!36346 (= setRest!36345 ((as const (Array Context!9682 Bool)) false)))))

(declare-fun setRes!36346 () Bool)

(assert (=> setNonEmpty!36345 (= tp!1509655 setRes!36346)))

(declare-fun setIsEmpty!36346 () Bool)

(assert (=> setIsEmpty!36346 setRes!36346))

(declare-fun setElem!36346 () Context!9682)

(declare-fun tp!1509766 () Bool)

(declare-fun e!3397604 () Bool)

(declare-fun setNonEmpty!36346 () Bool)

(assert (=> setNonEmpty!36346 (= setRes!36346 (and tp!1509766 (inv!81889 setElem!36346) e!3397604))))

(declare-fun setRest!36346 () (InoxSet Context!9682))

(assert (=> setNonEmpty!36346 (= setRest!36345 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) setElem!36346 true) setRest!36346))))

(declare-fun b!5491125 () Bool)

(declare-fun tp!1509765 () Bool)

(assert (=> b!5491125 (= e!3397604 tp!1509765)))

(assert (= (and setNonEmpty!36345 condSetEmpty!36346) setIsEmpty!36346))

(assert (= (and setNonEmpty!36345 (not condSetEmpty!36346)) setNonEmpty!36346))

(assert (= setNonEmpty!36346 b!5491125))

(declare-fun m!6503962 () Bool)

(assert (=> setNonEmpty!36346 m!6503962))

(declare-fun e!3397605 () Bool)

(assert (=> b!5490817 (= tp!1509667 e!3397605)))

(declare-fun b!5491129 () Bool)

(declare-fun tp!1509771 () Bool)

(declare-fun tp!1509770 () Bool)

(assert (=> b!5491129 (= e!3397605 (and tp!1509771 tp!1509770))))

(declare-fun b!5491128 () Bool)

(declare-fun tp!1509768 () Bool)

(assert (=> b!5491128 (= e!3397605 tp!1509768)))

(declare-fun b!5491127 () Bool)

(declare-fun tp!1509769 () Bool)

(declare-fun tp!1509767 () Bool)

(assert (=> b!5491127 (= e!3397605 (and tp!1509769 tp!1509767))))

(declare-fun b!5491126 () Bool)

(assert (=> b!5491126 (= e!3397605 tp_is_empty!40167)))

(assert (= (and b!5490817 ((_ is ElementMatch!15457) (reg!15786 (reg!15786 r!7292)))) b!5491126))

(assert (= (and b!5490817 ((_ is Concat!24302) (reg!15786 (reg!15786 r!7292)))) b!5491127))

(assert (= (and b!5490817 ((_ is Star!15457) (reg!15786 (reg!15786 r!7292)))) b!5491128))

(assert (= (and b!5490817 ((_ is Union!15457) (reg!15786 (reg!15786 r!7292)))) b!5491129))

(declare-fun e!3397606 () Bool)

(assert (=> b!5490818 (= tp!1509670 e!3397606)))

(declare-fun b!5491133 () Bool)

(declare-fun tp!1509776 () Bool)

(declare-fun tp!1509775 () Bool)

(assert (=> b!5491133 (= e!3397606 (and tp!1509776 tp!1509775))))

(declare-fun b!5491132 () Bool)

(declare-fun tp!1509773 () Bool)

(assert (=> b!5491132 (= e!3397606 tp!1509773)))

(declare-fun b!5491131 () Bool)

(declare-fun tp!1509774 () Bool)

(declare-fun tp!1509772 () Bool)

(assert (=> b!5491131 (= e!3397606 (and tp!1509774 tp!1509772))))

(declare-fun b!5491130 () Bool)

(assert (=> b!5491130 (= e!3397606 tp_is_empty!40167)))

(assert (= (and b!5490818 ((_ is ElementMatch!15457) (regOne!31427 (reg!15786 r!7292)))) b!5491130))

(assert (= (and b!5490818 ((_ is Concat!24302) (regOne!31427 (reg!15786 r!7292)))) b!5491131))

(assert (= (and b!5490818 ((_ is Star!15457) (regOne!31427 (reg!15786 r!7292)))) b!5491132))

(assert (= (and b!5490818 ((_ is Union!15457) (regOne!31427 (reg!15786 r!7292)))) b!5491133))

(declare-fun e!3397607 () Bool)

(assert (=> b!5490818 (= tp!1509669 e!3397607)))

(declare-fun b!5491137 () Bool)

(declare-fun tp!1509781 () Bool)

(declare-fun tp!1509780 () Bool)

(assert (=> b!5491137 (= e!3397607 (and tp!1509781 tp!1509780))))

(declare-fun b!5491136 () Bool)

(declare-fun tp!1509778 () Bool)

(assert (=> b!5491136 (= e!3397607 tp!1509778)))

(declare-fun b!5491135 () Bool)

(declare-fun tp!1509779 () Bool)

(declare-fun tp!1509777 () Bool)

(assert (=> b!5491135 (= e!3397607 (and tp!1509779 tp!1509777))))

(declare-fun b!5491134 () Bool)

(assert (=> b!5491134 (= e!3397607 tp_is_empty!40167)))

(assert (= (and b!5490818 ((_ is ElementMatch!15457) (regTwo!31427 (reg!15786 r!7292)))) b!5491134))

(assert (= (and b!5490818 ((_ is Concat!24302) (regTwo!31427 (reg!15786 r!7292)))) b!5491135))

(assert (= (and b!5490818 ((_ is Star!15457) (regTwo!31427 (reg!15786 r!7292)))) b!5491136))

(assert (= (and b!5490818 ((_ is Union!15457) (regTwo!31427 (reg!15786 r!7292)))) b!5491137))

(declare-fun e!3397608 () Bool)

(assert (=> b!5490831 (= tp!1509682 e!3397608)))

(declare-fun b!5491141 () Bool)

(declare-fun tp!1509786 () Bool)

(declare-fun tp!1509785 () Bool)

(assert (=> b!5491141 (= e!3397608 (and tp!1509786 tp!1509785))))

(declare-fun b!5491140 () Bool)

(declare-fun tp!1509783 () Bool)

(assert (=> b!5491140 (= e!3397608 tp!1509783)))

(declare-fun b!5491139 () Bool)

(declare-fun tp!1509784 () Bool)

(declare-fun tp!1509782 () Bool)

(assert (=> b!5491139 (= e!3397608 (and tp!1509784 tp!1509782))))

(declare-fun b!5491138 () Bool)

(assert (=> b!5491138 (= e!3397608 tp_is_empty!40167)))

(assert (= (and b!5490831 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31426 r!7292)))) b!5491138))

(assert (= (and b!5490831 ((_ is Concat!24302) (reg!15786 (regTwo!31426 r!7292)))) b!5491139))

(assert (= (and b!5490831 ((_ is Star!15457) (reg!15786 (regTwo!31426 r!7292)))) b!5491140))

(assert (= (and b!5490831 ((_ is Union!15457) (reg!15786 (regTwo!31426 r!7292)))) b!5491141))

(declare-fun e!3397609 () Bool)

(assert (=> b!5490832 (= tp!1509685 e!3397609)))

(declare-fun b!5491145 () Bool)

(declare-fun tp!1509791 () Bool)

(declare-fun tp!1509790 () Bool)

(assert (=> b!5491145 (= e!3397609 (and tp!1509791 tp!1509790))))

(declare-fun b!5491144 () Bool)

(declare-fun tp!1509788 () Bool)

(assert (=> b!5491144 (= e!3397609 tp!1509788)))

(declare-fun b!5491143 () Bool)

(declare-fun tp!1509789 () Bool)

(declare-fun tp!1509787 () Bool)

(assert (=> b!5491143 (= e!3397609 (and tp!1509789 tp!1509787))))

(declare-fun b!5491142 () Bool)

(assert (=> b!5491142 (= e!3397609 tp_is_empty!40167)))

(assert (= (and b!5490832 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31426 r!7292)))) b!5491142))

(assert (= (and b!5490832 ((_ is Concat!24302) (regOne!31427 (regTwo!31426 r!7292)))) b!5491143))

(assert (= (and b!5490832 ((_ is Star!15457) (regOne!31427 (regTwo!31426 r!7292)))) b!5491144))

(assert (= (and b!5490832 ((_ is Union!15457) (regOne!31427 (regTwo!31426 r!7292)))) b!5491145))

(declare-fun e!3397610 () Bool)

(assert (=> b!5490832 (= tp!1509684 e!3397610)))

(declare-fun b!5491149 () Bool)

(declare-fun tp!1509796 () Bool)

(declare-fun tp!1509795 () Bool)

(assert (=> b!5491149 (= e!3397610 (and tp!1509796 tp!1509795))))

(declare-fun b!5491148 () Bool)

(declare-fun tp!1509793 () Bool)

(assert (=> b!5491148 (= e!3397610 tp!1509793)))

(declare-fun b!5491147 () Bool)

(declare-fun tp!1509794 () Bool)

(declare-fun tp!1509792 () Bool)

(assert (=> b!5491147 (= e!3397610 (and tp!1509794 tp!1509792))))

(declare-fun b!5491146 () Bool)

(assert (=> b!5491146 (= e!3397610 tp_is_empty!40167)))

(assert (= (and b!5490832 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31426 r!7292)))) b!5491146))

(assert (= (and b!5490832 ((_ is Concat!24302) (regTwo!31427 (regTwo!31426 r!7292)))) b!5491147))

(assert (= (and b!5490832 ((_ is Star!15457) (regTwo!31427 (regTwo!31426 r!7292)))) b!5491148))

(assert (= (and b!5490832 ((_ is Union!15457) (regTwo!31427 (regTwo!31426 r!7292)))) b!5491149))

(declare-fun e!3397611 () Bool)

(assert (=> b!5490816 (= tp!1509668 e!3397611)))

(declare-fun b!5491153 () Bool)

(declare-fun tp!1509801 () Bool)

(declare-fun tp!1509800 () Bool)

(assert (=> b!5491153 (= e!3397611 (and tp!1509801 tp!1509800))))

(declare-fun b!5491152 () Bool)

(declare-fun tp!1509798 () Bool)

(assert (=> b!5491152 (= e!3397611 tp!1509798)))

(declare-fun b!5491151 () Bool)

(declare-fun tp!1509799 () Bool)

(declare-fun tp!1509797 () Bool)

(assert (=> b!5491151 (= e!3397611 (and tp!1509799 tp!1509797))))

(declare-fun b!5491150 () Bool)

(assert (=> b!5491150 (= e!3397611 tp_is_empty!40167)))

(assert (= (and b!5490816 ((_ is ElementMatch!15457) (regOne!31426 (reg!15786 r!7292)))) b!5491150))

(assert (= (and b!5490816 ((_ is Concat!24302) (regOne!31426 (reg!15786 r!7292)))) b!5491151))

(assert (= (and b!5490816 ((_ is Star!15457) (regOne!31426 (reg!15786 r!7292)))) b!5491152))

(assert (= (and b!5490816 ((_ is Union!15457) (regOne!31426 (reg!15786 r!7292)))) b!5491153))

(declare-fun e!3397612 () Bool)

(assert (=> b!5490816 (= tp!1509666 e!3397612)))

(declare-fun b!5491157 () Bool)

(declare-fun tp!1509806 () Bool)

(declare-fun tp!1509805 () Bool)

(assert (=> b!5491157 (= e!3397612 (and tp!1509806 tp!1509805))))

(declare-fun b!5491156 () Bool)

(declare-fun tp!1509803 () Bool)

(assert (=> b!5491156 (= e!3397612 tp!1509803)))

(declare-fun b!5491155 () Bool)

(declare-fun tp!1509804 () Bool)

(declare-fun tp!1509802 () Bool)

(assert (=> b!5491155 (= e!3397612 (and tp!1509804 tp!1509802))))

(declare-fun b!5491154 () Bool)

(assert (=> b!5491154 (= e!3397612 tp_is_empty!40167)))

(assert (= (and b!5490816 ((_ is ElementMatch!15457) (regTwo!31426 (reg!15786 r!7292)))) b!5491154))

(assert (= (and b!5490816 ((_ is Concat!24302) (regTwo!31426 (reg!15786 r!7292)))) b!5491155))

(assert (= (and b!5490816 ((_ is Star!15457) (regTwo!31426 (reg!15786 r!7292)))) b!5491156))

(assert (= (and b!5490816 ((_ is Union!15457) (regTwo!31426 (reg!15786 r!7292)))) b!5491157))

(declare-fun e!3397613 () Bool)

(assert (=> b!5490824 (= tp!1509674 e!3397613)))

(declare-fun b!5491161 () Bool)

(declare-fun tp!1509811 () Bool)

(declare-fun tp!1509810 () Bool)

(assert (=> b!5491161 (= e!3397613 (and tp!1509811 tp!1509810))))

(declare-fun b!5491160 () Bool)

(declare-fun tp!1509808 () Bool)

(assert (=> b!5491160 (= e!3397613 tp!1509808)))

(declare-fun b!5491159 () Bool)

(declare-fun tp!1509809 () Bool)

(declare-fun tp!1509807 () Bool)

(assert (=> b!5491159 (= e!3397613 (and tp!1509809 tp!1509807))))

(declare-fun b!5491158 () Bool)

(assert (=> b!5491158 (= e!3397613 tp_is_empty!40167)))

(assert (= (and b!5490824 ((_ is ElementMatch!15457) (h!68994 (exprs!5341 setElem!36339)))) b!5491158))

(assert (= (and b!5490824 ((_ is Concat!24302) (h!68994 (exprs!5341 setElem!36339)))) b!5491159))

(assert (= (and b!5490824 ((_ is Star!15457) (h!68994 (exprs!5341 setElem!36339)))) b!5491160))

(assert (= (and b!5490824 ((_ is Union!15457) (h!68994 (exprs!5341 setElem!36339)))) b!5491161))

(declare-fun b!5491162 () Bool)

(declare-fun e!3397614 () Bool)

(declare-fun tp!1509812 () Bool)

(declare-fun tp!1509813 () Bool)

(assert (=> b!5491162 (= e!3397614 (and tp!1509812 tp!1509813))))

(assert (=> b!5490824 (= tp!1509675 e!3397614)))

(assert (= (and b!5490824 ((_ is Cons!62546) (t!375901 (exprs!5341 setElem!36339)))) b!5491162))

(declare-fun e!3397615 () Bool)

(assert (=> b!5490838 (= tp!1509693 e!3397615)))

(declare-fun b!5491166 () Bool)

(declare-fun tp!1509818 () Bool)

(declare-fun tp!1509817 () Bool)

(assert (=> b!5491166 (= e!3397615 (and tp!1509818 tp!1509817))))

(declare-fun b!5491165 () Bool)

(declare-fun tp!1509815 () Bool)

(assert (=> b!5491165 (= e!3397615 tp!1509815)))

(declare-fun b!5491164 () Bool)

(declare-fun tp!1509816 () Bool)

(declare-fun tp!1509814 () Bool)

(assert (=> b!5491164 (= e!3397615 (and tp!1509816 tp!1509814))))

(declare-fun b!5491163 () Bool)

(assert (=> b!5491163 (= e!3397615 tp_is_empty!40167)))

(assert (= (and b!5490838 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31427 r!7292)))) b!5491163))

(assert (= (and b!5490838 ((_ is Concat!24302) (regOne!31426 (regTwo!31427 r!7292)))) b!5491164))

(assert (= (and b!5490838 ((_ is Star!15457) (regOne!31426 (regTwo!31427 r!7292)))) b!5491165))

(assert (= (and b!5490838 ((_ is Union!15457) (regOne!31426 (regTwo!31427 r!7292)))) b!5491166))

(declare-fun e!3397616 () Bool)

(assert (=> b!5490838 (= tp!1509691 e!3397616)))

(declare-fun b!5491170 () Bool)

(declare-fun tp!1509823 () Bool)

(declare-fun tp!1509822 () Bool)

(assert (=> b!5491170 (= e!3397616 (and tp!1509823 tp!1509822))))

(declare-fun b!5491169 () Bool)

(declare-fun tp!1509820 () Bool)

(assert (=> b!5491169 (= e!3397616 tp!1509820)))

(declare-fun b!5491168 () Bool)

(declare-fun tp!1509821 () Bool)

(declare-fun tp!1509819 () Bool)

(assert (=> b!5491168 (= e!3397616 (and tp!1509821 tp!1509819))))

(declare-fun b!5491167 () Bool)

(assert (=> b!5491167 (= e!3397616 tp_is_empty!40167)))

(assert (= (and b!5490838 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31427 r!7292)))) b!5491167))

(assert (= (and b!5490838 ((_ is Concat!24302) (regTwo!31426 (regTwo!31427 r!7292)))) b!5491168))

(assert (= (and b!5490838 ((_ is Star!15457) (regTwo!31426 (regTwo!31427 r!7292)))) b!5491169))

(assert (= (and b!5490838 ((_ is Union!15457) (regTwo!31426 (regTwo!31427 r!7292)))) b!5491170))

(declare-fun b!5491171 () Bool)

(declare-fun e!3397617 () Bool)

(declare-fun tp!1509824 () Bool)

(assert (=> b!5491171 (= e!3397617 (and tp_is_empty!40167 tp!1509824))))

(assert (=> b!5490823 (= tp!1509673 e!3397617)))

(assert (= (and b!5490823 ((_ is Cons!62548) (t!375903 (t!375903 s!2326)))) b!5491171))

(declare-fun e!3397618 () Bool)

(assert (=> b!5490830 (= tp!1509683 e!3397618)))

(declare-fun b!5491175 () Bool)

(declare-fun tp!1509829 () Bool)

(declare-fun tp!1509828 () Bool)

(assert (=> b!5491175 (= e!3397618 (and tp!1509829 tp!1509828))))

(declare-fun b!5491174 () Bool)

(declare-fun tp!1509826 () Bool)

(assert (=> b!5491174 (= e!3397618 tp!1509826)))

(declare-fun b!5491173 () Bool)

(declare-fun tp!1509827 () Bool)

(declare-fun tp!1509825 () Bool)

(assert (=> b!5491173 (= e!3397618 (and tp!1509827 tp!1509825))))

(declare-fun b!5491172 () Bool)

(assert (=> b!5491172 (= e!3397618 tp_is_empty!40167)))

(assert (= (and b!5490830 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31426 r!7292)))) b!5491172))

(assert (= (and b!5490830 ((_ is Concat!24302) (regOne!31426 (regTwo!31426 r!7292)))) b!5491173))

(assert (= (and b!5490830 ((_ is Star!15457) (regOne!31426 (regTwo!31426 r!7292)))) b!5491174))

(assert (= (and b!5490830 ((_ is Union!15457) (regOne!31426 (regTwo!31426 r!7292)))) b!5491175))

(declare-fun e!3397619 () Bool)

(assert (=> b!5490830 (= tp!1509681 e!3397619)))

(declare-fun b!5491179 () Bool)

(declare-fun tp!1509834 () Bool)

(declare-fun tp!1509833 () Bool)

(assert (=> b!5491179 (= e!3397619 (and tp!1509834 tp!1509833))))

(declare-fun b!5491178 () Bool)

(declare-fun tp!1509831 () Bool)

(assert (=> b!5491178 (= e!3397619 tp!1509831)))

(declare-fun b!5491177 () Bool)

(declare-fun tp!1509832 () Bool)

(declare-fun tp!1509830 () Bool)

(assert (=> b!5491177 (= e!3397619 (and tp!1509832 tp!1509830))))

(declare-fun b!5491176 () Bool)

(assert (=> b!5491176 (= e!3397619 tp_is_empty!40167)))

(assert (= (and b!5490830 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31426 r!7292)))) b!5491176))

(assert (= (and b!5490830 ((_ is Concat!24302) (regTwo!31426 (regTwo!31426 r!7292)))) b!5491177))

(assert (= (and b!5490830 ((_ is Star!15457) (regTwo!31426 (regTwo!31426 r!7292)))) b!5491178))

(assert (= (and b!5490830 ((_ is Union!15457) (regTwo!31426 (regTwo!31426 r!7292)))) b!5491179))

(declare-fun e!3397620 () Bool)

(assert (=> b!5490839 (= tp!1509692 e!3397620)))

(declare-fun b!5491183 () Bool)

(declare-fun tp!1509839 () Bool)

(declare-fun tp!1509838 () Bool)

(assert (=> b!5491183 (= e!3397620 (and tp!1509839 tp!1509838))))

(declare-fun b!5491182 () Bool)

(declare-fun tp!1509836 () Bool)

(assert (=> b!5491182 (= e!3397620 tp!1509836)))

(declare-fun b!5491181 () Bool)

(declare-fun tp!1509837 () Bool)

(declare-fun tp!1509835 () Bool)

(assert (=> b!5491181 (= e!3397620 (and tp!1509837 tp!1509835))))

(declare-fun b!5491180 () Bool)

(assert (=> b!5491180 (= e!3397620 tp_is_empty!40167)))

(assert (= (and b!5490839 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31427 r!7292)))) b!5491180))

(assert (= (and b!5490839 ((_ is Concat!24302) (reg!15786 (regTwo!31427 r!7292)))) b!5491181))

(assert (= (and b!5490839 ((_ is Star!15457) (reg!15786 (regTwo!31427 r!7292)))) b!5491182))

(assert (= (and b!5490839 ((_ is Union!15457) (reg!15786 (regTwo!31427 r!7292)))) b!5491183))

(declare-fun e!3397621 () Bool)

(assert (=> b!5490840 (= tp!1509695 e!3397621)))

(declare-fun b!5491187 () Bool)

(declare-fun tp!1509844 () Bool)

(declare-fun tp!1509843 () Bool)

(assert (=> b!5491187 (= e!3397621 (and tp!1509844 tp!1509843))))

(declare-fun b!5491186 () Bool)

(declare-fun tp!1509841 () Bool)

(assert (=> b!5491186 (= e!3397621 tp!1509841)))

(declare-fun b!5491185 () Bool)

(declare-fun tp!1509842 () Bool)

(declare-fun tp!1509840 () Bool)

(assert (=> b!5491185 (= e!3397621 (and tp!1509842 tp!1509840))))

(declare-fun b!5491184 () Bool)

(assert (=> b!5491184 (= e!3397621 tp_is_empty!40167)))

(assert (= (and b!5490840 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 r!7292)))) b!5491184))

(assert (= (and b!5490840 ((_ is Concat!24302) (regOne!31427 (regTwo!31427 r!7292)))) b!5491185))

(assert (= (and b!5490840 ((_ is Star!15457) (regOne!31427 (regTwo!31427 r!7292)))) b!5491186))

(assert (= (and b!5490840 ((_ is Union!15457) (regOne!31427 (regTwo!31427 r!7292)))) b!5491187))

(declare-fun e!3397622 () Bool)

(assert (=> b!5490840 (= tp!1509694 e!3397622)))

(declare-fun b!5491191 () Bool)

(declare-fun tp!1509849 () Bool)

(declare-fun tp!1509848 () Bool)

(assert (=> b!5491191 (= e!3397622 (and tp!1509849 tp!1509848))))

(declare-fun b!5491190 () Bool)

(declare-fun tp!1509846 () Bool)

(assert (=> b!5491190 (= e!3397622 tp!1509846)))

(declare-fun b!5491189 () Bool)

(declare-fun tp!1509847 () Bool)

(declare-fun tp!1509845 () Bool)

(assert (=> b!5491189 (= e!3397622 (and tp!1509847 tp!1509845))))

(declare-fun b!5491188 () Bool)

(assert (=> b!5491188 (= e!3397622 tp_is_empty!40167)))

(assert (= (and b!5490840 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 r!7292)))) b!5491188))

(assert (= (and b!5490840 ((_ is Concat!24302) (regTwo!31427 (regTwo!31427 r!7292)))) b!5491189))

(assert (= (and b!5490840 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 r!7292)))) b!5491190))

(assert (= (and b!5490840 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 r!7292)))) b!5491191))

(declare-fun b_lambda!208395 () Bool)

(assert (= b_lambda!208393 (or d!1741720 b_lambda!208395)))

(declare-fun bs!1267265 () Bool)

(declare-fun d!1741866 () Bool)

(assert (= bs!1267265 (and d!1741866 d!1741720)))

(assert (=> bs!1267265 (= (dynLambda!24455 lambda!294021 (h!68994 (exprs!5341 (h!68995 zl!343)))) (validRegex!7193 (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun m!6503964 () Bool)

(assert (=> bs!1267265 m!6503964))

(assert (=> b!5491060 d!1741866))

(declare-fun b_lambda!208397 () Bool)

(assert (= b_lambda!208387 (or d!1741728 b_lambda!208397)))

(declare-fun bs!1267266 () Bool)

(declare-fun d!1741868 () Bool)

(assert (= bs!1267266 (and d!1741868 d!1741728)))

(assert (=> bs!1267266 (= (dynLambda!24455 lambda!294026 (h!68994 (exprs!5341 (h!68995 zl!343)))) (validRegex!7193 (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> bs!1267266 m!6503964))

(assert (=> b!5490865 d!1741868))

(declare-fun b_lambda!208399 () Bool)

(assert (= b_lambda!208389 (or d!1741726 b_lambda!208399)))

(declare-fun bs!1267267 () Bool)

(declare-fun d!1741870 () Bool)

(assert (= bs!1267267 (and d!1741870 d!1741726)))

(assert (=> bs!1267267 (= (dynLambda!24455 lambda!294022 (h!68994 (exprs!5341 setElem!36339))) (validRegex!7193 (h!68994 (exprs!5341 setElem!36339))))))

(declare-fun m!6503966 () Bool)

(assert (=> bs!1267267 m!6503966))

(assert (=> b!5490873 d!1741870))

(check-sat (not b!5491111) (not d!1741828) (not b!5490962) (not bm!404843) (not b!5490881) (not b!5491189) (not d!1741782) (not b!5491099) (not b!5491139) (not b!5491098) (not b!5491131) (not b!5491128) (not b!5491123) (not b!5491093) (not b!5491067) (not bm!404817) (not b!5490874) (not b!5490924) (not b!5491165) (not b!5490963) (not b!5491157) (not b!5491135) (not b!5491156) (not b!5491090) (not d!1741838) (not bm!404818) (not b!5490845) (not bm!404833) (not bm!404835) (not b!5491162) (not b!5490866) (not b!5491026) (not b_lambda!208397) (not b!5491103) (not b!5491118) (not b!5491064) (not b!5491137) (not bs!1267266) (not b!5491170) (not b!5491112) (not d!1741758) (not b!5491038) (not bm!404827) (not b!5491153) (not b!5491116) (not b!5491145) (not b!5491039) (not bm!404839) (not b!5491108) (not d!1741766) (not b!5490925) (not b!5491161) (not b!5490878) (not b!5490847) (not b!5491058) (not bm!404816) (not b!5491181) (not bm!404832) (not b!5491068) (not b!5491191) (not bs!1267265) (not b!5491095) (not bs!1267267) (not d!1741846) (not b!5491152) (not b!5491136) (not b!5491174) (not b!5491061) (not b!5491106) (not b!5491160) (not b_lambda!208395) (not bm!404813) (not b!5491069) (not bm!404842) (not b!5491177) (not b!5491059) (not b!5491132) (not b!5491169) (not b!5491017) (not b!5491143) (not b!5491171) (not b!5491066) (not b!5491089) (not b!5490934) tp_is_empty!40167 (not b!5491164) (not b!5491173) (not b!5491101) (not b!5491114) (not b!5491120) (not b!5491168) (not b!5491065) (not d!1741794) (not b!5491129) (not b!5491147) (not b!5491057) (not b!5491182) (not b!5491141) (not d!1741788) (not b!5490988) (not b!5490882) (not b!5490886) (not b!5491149) (not b!5491144) (not d!1741818) (not b!5491187) (not b!5491122) (not b!5490928) (not b!5490920) (not bm!404834) (not b!5491127) (not b!5490926) (not b!5491148) (not b!5491062) (not b!5490919) (not b!5491110) (not b!5491081) (not b!5491151) (not b!5491185) (not b!5490917) (not b!5490966) (not b!5490880) (not b!5490982) (not b!5491159) (not b!5491115) (not b!5490990) (not b!5491104) (not b!5490960) (not b!5491155) (not b!5491179) (not b!5491124) (not bm!404840) (not bm!404814) (not b!5491190) (not b!5491091) (not b!5491178) (not b!5490964) (not b!5490922) (not b!5491097) (not b!5490857) (not b!5491183) (not d!1741780) (not b!5490879) (not b!5490958) (not b!5491125) (not b!5490959) (not b!5491083) (not b!5491107) (not b!5491133) (not bm!404829) (not b!5491119) (not b!5491186) (not b!5491166) (not b!5491085) (not d!1741796) (not setNonEmpty!36346) (not b!5491175) (not b!5491094) (not b!5491102) (not b!5490872) (not b!5491140) (not d!1741756) (not b_lambda!208399))
(check-sat)
(get-model)

(assert (=> bm!404834 d!1741768))

(declare-fun bs!1267305 () Bool)

(declare-fun d!1741904 () Bool)

(assert (= bs!1267305 (and d!1741904 d!1741766)))

(declare-fun lambda!294066 () Int)

(assert (=> bs!1267305 (= lambda!294066 lambda!294042)))

(declare-fun bs!1267306 () Bool)

(assert (= bs!1267306 (and d!1741904 d!1741728)))

(assert (=> bs!1267306 (= lambda!294066 lambda!294026)))

(declare-fun bs!1267307 () Bool)

(assert (= bs!1267307 (and d!1741904 d!1741726)))

(assert (=> bs!1267307 (= lambda!294066 lambda!294022)))

(declare-fun bs!1267308 () Bool)

(assert (= bs!1267308 (and d!1741904 d!1741720)))

(assert (=> bs!1267308 (= lambda!294066 lambda!294021)))

(declare-fun bs!1267309 () Bool)

(assert (= bs!1267309 (and d!1741904 d!1741796)))

(assert (=> bs!1267309 (= lambda!294066 lambda!294050)))

(declare-fun bs!1267310 () Bool)

(assert (= bs!1267310 (and d!1741904 d!1741794)))

(assert (=> bs!1267310 (= lambda!294066 lambda!294046)))

(declare-fun bs!1267311 () Bool)

(assert (= bs!1267311 (and d!1741904 d!1741818)))

(assert (=> bs!1267311 (= lambda!294066 lambda!294053)))

(declare-fun bs!1267312 () Bool)

(assert (= bs!1267312 (and d!1741904 d!1741788)))

(assert (=> bs!1267312 (= lambda!294066 lambda!294043)))

(declare-fun b!5491431 () Bool)

(declare-fun e!3397741 () Bool)

(declare-fun e!3397746 () Bool)

(assert (=> b!5491431 (= e!3397741 e!3397746)))

(declare-fun c!958865 () Bool)

(assert (=> b!5491431 (= c!958865 (isEmpty!34347 (t!375901 (unfocusZipperList!884 zl!343))))))

(declare-fun b!5491432 () Bool)

(declare-fun e!3397744 () Bool)

(declare-fun lt!2242472 () Regex!15457)

(assert (=> b!5491432 (= e!3397744 (isUnion!488 lt!2242472))))

(declare-fun b!5491433 () Bool)

(assert (=> b!5491433 (= e!3397746 (isEmptyLang!1058 lt!2242472))))

(declare-fun b!5491434 () Bool)

(declare-fun e!3397743 () Regex!15457)

(assert (=> b!5491434 (= e!3397743 EmptyLang!15457)))

(assert (=> d!1741904 e!3397741))

(declare-fun res!2342067 () Bool)

(assert (=> d!1741904 (=> (not res!2342067) (not e!3397741))))

(assert (=> d!1741904 (= res!2342067 (validRegex!7193 lt!2242472))))

(declare-fun e!3397742 () Regex!15457)

(assert (=> d!1741904 (= lt!2242472 e!3397742)))

(declare-fun c!958864 () Bool)

(declare-fun e!3397745 () Bool)

(assert (=> d!1741904 (= c!958864 e!3397745)))

(declare-fun res!2342068 () Bool)

(assert (=> d!1741904 (=> (not res!2342068) (not e!3397745))))

(assert (=> d!1741904 (= res!2342068 ((_ is Cons!62546) (t!375901 (unfocusZipperList!884 zl!343))))))

(assert (=> d!1741904 (forall!14650 (t!375901 (unfocusZipperList!884 zl!343)) lambda!294066)))

(assert (=> d!1741904 (= (generalisedUnion!1319 (t!375901 (unfocusZipperList!884 zl!343))) lt!2242472)))

(declare-fun b!5491435 () Bool)

(assert (=> b!5491435 (= e!3397746 e!3397744)))

(declare-fun c!958862 () Bool)

(assert (=> b!5491435 (= c!958862 (isEmpty!34347 (tail!10849 (t!375901 (unfocusZipperList!884 zl!343)))))))

(declare-fun b!5491436 () Bool)

(assert (=> b!5491436 (= e!3397744 (= lt!2242472 (head!11754 (t!375901 (unfocusZipperList!884 zl!343)))))))

(declare-fun b!5491437 () Bool)

(assert (=> b!5491437 (= e!3397745 (isEmpty!34347 (t!375901 (t!375901 (unfocusZipperList!884 zl!343)))))))

(declare-fun b!5491438 () Bool)

(assert (=> b!5491438 (= e!3397742 (h!68994 (t!375901 (unfocusZipperList!884 zl!343))))))

(declare-fun b!5491439 () Bool)

(assert (=> b!5491439 (= e!3397743 (Union!15457 (h!68994 (t!375901 (unfocusZipperList!884 zl!343))) (generalisedUnion!1319 (t!375901 (t!375901 (unfocusZipperList!884 zl!343))))))))

(declare-fun b!5491440 () Bool)

(assert (=> b!5491440 (= e!3397742 e!3397743)))

(declare-fun c!958863 () Bool)

(assert (=> b!5491440 (= c!958863 ((_ is Cons!62546) (t!375901 (unfocusZipperList!884 zl!343))))))

(assert (= (and d!1741904 res!2342068) b!5491437))

(assert (= (and d!1741904 c!958864) b!5491438))

(assert (= (and d!1741904 (not c!958864)) b!5491440))

(assert (= (and b!5491440 c!958863) b!5491439))

(assert (= (and b!5491440 (not c!958863)) b!5491434))

(assert (= (and d!1741904 res!2342067) b!5491431))

(assert (= (and b!5491431 c!958865) b!5491433))

(assert (= (and b!5491431 (not c!958865)) b!5491435))

(assert (= (and b!5491435 c!958862) b!5491436))

(assert (= (and b!5491435 (not c!958862)) b!5491432))

(declare-fun m!6504056 () Bool)

(assert (=> b!5491432 m!6504056))

(declare-fun m!6504058 () Bool)

(assert (=> b!5491436 m!6504058))

(declare-fun m!6504060 () Bool)

(assert (=> b!5491435 m!6504060))

(assert (=> b!5491435 m!6504060))

(declare-fun m!6504062 () Bool)

(assert (=> b!5491435 m!6504062))

(declare-fun m!6504064 () Bool)

(assert (=> b!5491433 m!6504064))

(declare-fun m!6504066 () Bool)

(assert (=> b!5491437 m!6504066))

(assert (=> b!5491431 m!6503854))

(declare-fun m!6504068 () Bool)

(assert (=> d!1741904 m!6504068))

(declare-fun m!6504070 () Bool)

(assert (=> d!1741904 m!6504070))

(declare-fun m!6504072 () Bool)

(assert (=> b!5491439 m!6504072))

(assert (=> b!5490966 d!1741904))

(declare-fun bm!404871 () Bool)

(declare-fun call!404878 () Bool)

(declare-fun call!404876 () Bool)

(assert (=> bm!404871 (= call!404878 call!404876)))

(declare-fun b!5491441 () Bool)

(declare-fun res!2342072 () Bool)

(declare-fun e!3397749 () Bool)

(assert (=> b!5491441 (=> res!2342072 e!3397749)))

(assert (=> b!5491441 (= res!2342072 (not ((_ is Concat!24302) (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))))

(declare-fun e!3397747 () Bool)

(assert (=> b!5491441 (= e!3397747 e!3397749)))

(declare-fun b!5491442 () Bool)

(declare-fun e!3397750 () Bool)

(declare-fun call!404877 () Bool)

(assert (=> b!5491442 (= e!3397750 call!404877)))

(declare-fun b!5491443 () Bool)

(declare-fun e!3397751 () Bool)

(assert (=> b!5491443 (= e!3397751 call!404877)))

(declare-fun b!5491444 () Bool)

(declare-fun res!2342073 () Bool)

(assert (=> b!5491444 (=> (not res!2342073) (not e!3397750))))

(assert (=> b!5491444 (= res!2342073 call!404878)))

(assert (=> b!5491444 (= e!3397747 e!3397750)))

(declare-fun b!5491445 () Bool)

(declare-fun e!3397753 () Bool)

(assert (=> b!5491445 (= e!3397753 call!404876)))

(declare-fun d!1741906 () Bool)

(declare-fun res!2342070 () Bool)

(declare-fun e!3397748 () Bool)

(assert (=> d!1741906 (=> res!2342070 e!3397748)))

(assert (=> d!1741906 (= res!2342070 ((_ is ElementMatch!15457) (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))

(assert (=> d!1741906 (= (validRegex!7193 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))) e!3397748)))

(declare-fun b!5491446 () Bool)

(declare-fun e!3397752 () Bool)

(assert (=> b!5491446 (= e!3397752 e!3397753)))

(declare-fun res!2342071 () Bool)

(assert (=> b!5491446 (= res!2342071 (not (nullable!5500 (reg!15786 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))))

(assert (=> b!5491446 (=> (not res!2342071) (not e!3397753))))

(declare-fun b!5491447 () Bool)

(assert (=> b!5491447 (= e!3397749 e!3397751)))

(declare-fun res!2342069 () Bool)

(assert (=> b!5491447 (=> (not res!2342069) (not e!3397751))))

(assert (=> b!5491447 (= res!2342069 call!404878)))

(declare-fun b!5491448 () Bool)

(assert (=> b!5491448 (= e!3397752 e!3397747)))

(declare-fun c!958866 () Bool)

(assert (=> b!5491448 (= c!958866 ((_ is Union!15457) (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))

(declare-fun b!5491449 () Bool)

(assert (=> b!5491449 (= e!3397748 e!3397752)))

(declare-fun c!958867 () Bool)

(assert (=> b!5491449 (= c!958867 ((_ is Star!15457) (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))

(declare-fun bm!404872 () Bool)

(assert (=> bm!404872 (= call!404877 (validRegex!7193 (ite c!958866 (regTwo!31427 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))) (regTwo!31426 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))))

(declare-fun bm!404873 () Bool)

(assert (=> bm!404873 (= call!404876 (validRegex!7193 (ite c!958867 (reg!15786 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))) (ite c!958866 (regOne!31427 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))) (regOne!31426 (ite c!958814 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (ite c!958813 (regOne!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regOne!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))))))

(assert (= (and d!1741906 (not res!2342070)) b!5491449))

(assert (= (and b!5491449 c!958867) b!5491446))

(assert (= (and b!5491449 (not c!958867)) b!5491448))

(assert (= (and b!5491446 res!2342071) b!5491445))

(assert (= (and b!5491448 c!958866) b!5491444))

(assert (= (and b!5491448 (not c!958866)) b!5491441))

(assert (= (and b!5491444 res!2342073) b!5491442))

(assert (= (and b!5491441 (not res!2342072)) b!5491447))

(assert (= (and b!5491447 res!2342069) b!5491443))

(assert (= (or b!5491442 b!5491443) bm!404872))

(assert (= (or b!5491444 b!5491447) bm!404871))

(assert (= (or b!5491445 bm!404871) bm!404873))

(declare-fun m!6504074 () Bool)

(assert (=> b!5491446 m!6504074))

(declare-fun m!6504076 () Bool)

(assert (=> bm!404872 m!6504076))

(declare-fun m!6504078 () Bool)

(assert (=> bm!404873 m!6504078))

(assert (=> bm!404840 d!1741906))

(declare-fun bs!1267313 () Bool)

(declare-fun b!5491450 () Bool)

(assert (= bs!1267313 (and b!5491450 b!5490850)))

(declare-fun lambda!294067 () Int)

(assert (=> bs!1267313 (not (= lambda!294067 lambda!294041))))

(declare-fun bs!1267314 () Bool)

(assert (= bs!1267314 (and b!5491450 b!5490841)))

(assert (=> bs!1267314 (= (and (= (reg!15786 (regOne!31427 (regTwo!31427 r!7292))) (reg!15786 (regTwo!31427 r!7292))) (= (regOne!31427 (regTwo!31427 r!7292)) (regTwo!31427 r!7292))) (= lambda!294067 lambda!294040))))

(declare-fun bs!1267315 () Bool)

(assert (= bs!1267315 (and b!5491450 b!5490993)))

(assert (=> bs!1267315 (not (= lambda!294067 lambda!294052))))

(declare-fun bs!1267316 () Bool)

(assert (= bs!1267316 (and b!5491450 b!5490772)))

(assert (=> bs!1267316 (= (and (= (reg!15786 (regOne!31427 (regTwo!31427 r!7292))) (reg!15786 r!7292)) (= (regOne!31427 (regTwo!31427 r!7292)) r!7292)) (= lambda!294067 lambda!294038))))

(declare-fun bs!1267317 () Bool)

(assert (= bs!1267317 (and b!5491450 b!5490781)))

(assert (=> bs!1267317 (not (= lambda!294067 lambda!294039))))

(declare-fun bs!1267318 () Bool)

(assert (= bs!1267318 (and b!5491450 b!5490984)))

(assert (=> bs!1267318 (= (and (= (reg!15786 (regOne!31427 (regTwo!31427 r!7292))) (reg!15786 (regOne!31427 r!7292))) (= (regOne!31427 (regTwo!31427 r!7292)) (regOne!31427 r!7292))) (= lambda!294067 lambda!294051))))

(assert (=> b!5491450 true))

(assert (=> b!5491450 true))

(declare-fun bs!1267319 () Bool)

(declare-fun b!5491459 () Bool)

(assert (= bs!1267319 (and b!5491459 b!5490850)))

(declare-fun lambda!294068 () Int)

(assert (=> bs!1267319 (= (and (= (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))) (regOne!31426 (regTwo!31427 r!7292))) (= (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regTwo!31427 r!7292)))) (= lambda!294068 lambda!294041))))

(declare-fun bs!1267320 () Bool)

(assert (= bs!1267320 (and b!5491459 b!5490841)))

(assert (=> bs!1267320 (not (= lambda!294068 lambda!294040))))

(declare-fun bs!1267321 () Bool)

(assert (= bs!1267321 (and b!5491459 b!5490993)))

(assert (=> bs!1267321 (= (and (= (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))) (regOne!31426 (regOne!31427 r!7292))) (= (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regOne!31427 r!7292)))) (= lambda!294068 lambda!294052))))

(declare-fun bs!1267322 () Bool)

(assert (= bs!1267322 (and b!5491459 b!5490772)))

(assert (=> bs!1267322 (not (= lambda!294068 lambda!294038))))

(declare-fun bs!1267323 () Bool)

(assert (= bs!1267323 (and b!5491459 b!5491450)))

(assert (=> bs!1267323 (not (= lambda!294068 lambda!294067))))

(declare-fun bs!1267324 () Bool)

(assert (= bs!1267324 (and b!5491459 b!5490781)))

(assert (=> bs!1267324 (= (and (= (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))) (regOne!31426 r!7292)) (= (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))) (regTwo!31426 r!7292))) (= lambda!294068 lambda!294039))))

(declare-fun bs!1267325 () Bool)

(assert (= bs!1267325 (and b!5491459 b!5490984)))

(assert (=> bs!1267325 (not (= lambda!294068 lambda!294051))))

(assert (=> b!5491459 true))

(assert (=> b!5491459 true))

(declare-fun e!3397755 () Bool)

(declare-fun call!404879 () Bool)

(assert (=> b!5491450 (= e!3397755 call!404879)))

(declare-fun b!5491451 () Bool)

(declare-fun e!3397754 () Bool)

(assert (=> b!5491451 (= e!3397754 (= s!2326 (Cons!62548 (c!958671 (regOne!31427 (regTwo!31427 r!7292))) Nil!62548)))))

(declare-fun b!5491452 () Bool)

(declare-fun e!3397758 () Bool)

(declare-fun e!3397756 () Bool)

(assert (=> b!5491452 (= e!3397758 e!3397756)))

(declare-fun c!958869 () Bool)

(assert (=> b!5491452 (= c!958869 ((_ is Star!15457) (regOne!31427 (regTwo!31427 r!7292))))))

(declare-fun b!5491453 () Bool)

(declare-fun c!958868 () Bool)

(assert (=> b!5491453 (= c!958868 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 r!7292))))))

(declare-fun e!3397757 () Bool)

(assert (=> b!5491453 (= e!3397757 e!3397754)))

(declare-fun b!5491454 () Bool)

(declare-fun e!3397760 () Bool)

(assert (=> b!5491454 (= e!3397758 e!3397760)))

(declare-fun res!2342074 () Bool)

(assert (=> b!5491454 (= res!2342074 (matchRSpec!2560 (regOne!31427 (regOne!31427 (regTwo!31427 r!7292))) s!2326))))

(assert (=> b!5491454 (=> res!2342074 e!3397760)))

(declare-fun bm!404874 () Bool)

(declare-fun call!404880 () Bool)

(assert (=> bm!404874 (= call!404880 (isEmpty!34349 s!2326))))

(declare-fun bm!404875 () Bool)

(assert (=> bm!404875 (= call!404879 (Exists!2567 (ite c!958869 lambda!294067 lambda!294068)))))

(declare-fun b!5491456 () Bool)

(assert (=> b!5491456 (= e!3397760 (matchRSpec!2560 (regTwo!31427 (regOne!31427 (regTwo!31427 r!7292))) s!2326))))

(declare-fun b!5491457 () Bool)

(declare-fun e!3397759 () Bool)

(assert (=> b!5491457 (= e!3397759 call!404880)))

(declare-fun b!5491458 () Bool)

(declare-fun res!2342075 () Bool)

(assert (=> b!5491458 (=> res!2342075 e!3397755)))

(assert (=> b!5491458 (= res!2342075 call!404880)))

(assert (=> b!5491458 (= e!3397756 e!3397755)))

(assert (=> b!5491459 (= e!3397756 call!404879)))

(declare-fun b!5491460 () Bool)

(declare-fun c!958870 () Bool)

(assert (=> b!5491460 (= c!958870 ((_ is Union!15457) (regOne!31427 (regTwo!31427 r!7292))))))

(assert (=> b!5491460 (= e!3397754 e!3397758)))

(declare-fun d!1741908 () Bool)

(declare-fun c!958871 () Bool)

(assert (=> d!1741908 (= c!958871 ((_ is EmptyExpr!15457) (regOne!31427 (regTwo!31427 r!7292))))))

(assert (=> d!1741908 (= (matchRSpec!2560 (regOne!31427 (regTwo!31427 r!7292)) s!2326) e!3397759)))

(declare-fun b!5491455 () Bool)

(assert (=> b!5491455 (= e!3397759 e!3397757)))

(declare-fun res!2342076 () Bool)

(assert (=> b!5491455 (= res!2342076 (not ((_ is EmptyLang!15457) (regOne!31427 (regTwo!31427 r!7292)))))))

(assert (=> b!5491455 (=> (not res!2342076) (not e!3397757))))

(assert (= (and d!1741908 c!958871) b!5491457))

(assert (= (and d!1741908 (not c!958871)) b!5491455))

(assert (= (and b!5491455 res!2342076) b!5491453))

(assert (= (and b!5491453 c!958868) b!5491451))

(assert (= (and b!5491453 (not c!958868)) b!5491460))

(assert (= (and b!5491460 c!958870) b!5491454))

(assert (= (and b!5491460 (not c!958870)) b!5491452))

(assert (= (and b!5491454 (not res!2342074)) b!5491456))

(assert (= (and b!5491452 c!958869) b!5491458))

(assert (= (and b!5491452 (not c!958869)) b!5491459))

(assert (= (and b!5491458 (not res!2342075)) b!5491450))

(assert (= (or b!5491450 b!5491459) bm!404875))

(assert (= (or b!5491457 b!5491458) bm!404874))

(declare-fun m!6504080 () Bool)

(assert (=> b!5491454 m!6504080))

(assert (=> bm!404874 m!6503728))

(declare-fun m!6504082 () Bool)

(assert (=> bm!404875 m!6504082))

(declare-fun m!6504084 () Bool)

(assert (=> b!5491456 m!6504084))

(assert (=> b!5490845 d!1741908))

(declare-fun b!5491461 () Bool)

(declare-fun e!3397762 () Bool)

(declare-fun lt!2242473 () Bool)

(assert (=> b!5491461 (= e!3397762 (not lt!2242473))))

(declare-fun b!5491462 () Bool)

(declare-fun res!2342083 () Bool)

(declare-fun e!3397767 () Bool)

(assert (=> b!5491462 (=> (not res!2342083) (not e!3397767))))

(declare-fun call!404881 () Bool)

(assert (=> b!5491462 (= res!2342083 (not call!404881))))

(declare-fun b!5491463 () Bool)

(declare-fun res!2342084 () Bool)

(declare-fun e!3397765 () Bool)

(assert (=> b!5491463 (=> res!2342084 e!3397765)))

(assert (=> b!5491463 (= res!2342084 (not ((_ is ElementMatch!15457) (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))))))))

(assert (=> b!5491463 (= e!3397762 e!3397765)))

(declare-fun b!5491464 () Bool)

(declare-fun res!2342079 () Bool)

(declare-fun e!3397761 () Bool)

(assert (=> b!5491464 (=> res!2342079 e!3397761)))

(assert (=> b!5491464 (= res!2342079 (not (isEmpty!34349 (tail!10851 (tail!10851 (tail!10851 s!2326))))))))

(declare-fun b!5491465 () Bool)

(assert (=> b!5491465 (= e!3397761 (not (= (head!11756 (tail!10851 (tail!10851 s!2326))) (c!958671 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326)))))))))

(declare-fun b!5491466 () Bool)

(declare-fun e!3397764 () Bool)

(assert (=> b!5491466 (= e!3397764 (nullable!5500 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326)))))))

(declare-fun bm!404876 () Bool)

(assert (=> bm!404876 (= call!404881 (isEmpty!34349 (tail!10851 (tail!10851 s!2326))))))

(declare-fun d!1741910 () Bool)

(declare-fun e!3397763 () Bool)

(assert (=> d!1741910 e!3397763))

(declare-fun c!958873 () Bool)

(assert (=> d!1741910 (= c!958873 ((_ is EmptyExpr!15457) (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326)))))))

(assert (=> d!1741910 (= lt!2242473 e!3397764)))

(declare-fun c!958872 () Bool)

(assert (=> d!1741910 (= c!958872 (isEmpty!34349 (tail!10851 (tail!10851 s!2326))))))

(assert (=> d!1741910 (validRegex!7193 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))))))

(assert (=> d!1741910 (= (matchR!7642 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))) (tail!10851 (tail!10851 s!2326))) lt!2242473)))

(declare-fun b!5491467 () Bool)

(declare-fun res!2342077 () Bool)

(assert (=> b!5491467 (=> (not res!2342077) (not e!3397767))))

(assert (=> b!5491467 (= res!2342077 (isEmpty!34349 (tail!10851 (tail!10851 (tail!10851 s!2326)))))))

(declare-fun b!5491468 () Bool)

(assert (=> b!5491468 (= e!3397767 (= (head!11756 (tail!10851 (tail!10851 s!2326))) (c!958671 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))))))))

(declare-fun b!5491469 () Bool)

(declare-fun e!3397766 () Bool)

(assert (=> b!5491469 (= e!3397766 e!3397761)))

(declare-fun res!2342078 () Bool)

(assert (=> b!5491469 (=> res!2342078 e!3397761)))

(assert (=> b!5491469 (= res!2342078 call!404881)))

(declare-fun b!5491470 () Bool)

(assert (=> b!5491470 (= e!3397763 (= lt!2242473 call!404881))))

(declare-fun b!5491471 () Bool)

(assert (=> b!5491471 (= e!3397765 e!3397766)))

(declare-fun res!2342080 () Bool)

(assert (=> b!5491471 (=> (not res!2342080) (not e!3397766))))

(assert (=> b!5491471 (= res!2342080 (not lt!2242473))))

(declare-fun b!5491472 () Bool)

(assert (=> b!5491472 (= e!3397764 (matchR!7642 (derivativeStep!4341 (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))) (head!11756 (tail!10851 (tail!10851 s!2326)))) (tail!10851 (tail!10851 (tail!10851 s!2326)))))))

(declare-fun b!5491473 () Bool)

(declare-fun res!2342081 () Bool)

(assert (=> b!5491473 (=> res!2342081 e!3397765)))

(assert (=> b!5491473 (= res!2342081 e!3397767)))

(declare-fun res!2342082 () Bool)

(assert (=> b!5491473 (=> (not res!2342082) (not e!3397767))))

(assert (=> b!5491473 (= res!2342082 lt!2242473)))

(declare-fun b!5491474 () Bool)

(assert (=> b!5491474 (= e!3397763 e!3397762)))

(declare-fun c!958874 () Bool)

(assert (=> b!5491474 (= c!958874 ((_ is EmptyLang!15457) (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326)))))))

(assert (= (and d!1741910 c!958872) b!5491466))

(assert (= (and d!1741910 (not c!958872)) b!5491472))

(assert (= (and d!1741910 c!958873) b!5491470))

(assert (= (and d!1741910 (not c!958873)) b!5491474))

(assert (= (and b!5491474 c!958874) b!5491461))

(assert (= (and b!5491474 (not c!958874)) b!5491463))

(assert (= (and b!5491463 (not res!2342084)) b!5491473))

(assert (= (and b!5491473 res!2342082) b!5491462))

(assert (= (and b!5491462 res!2342083) b!5491467))

(assert (= (and b!5491467 res!2342077) b!5491468))

(assert (= (and b!5491473 (not res!2342081)) b!5491471))

(assert (= (and b!5491471 res!2342080) b!5491469))

(assert (= (and b!5491469 (not res!2342078)) b!5491464))

(assert (= (and b!5491464 (not res!2342079)) b!5491465))

(assert (= (or b!5491470 b!5491462 b!5491469) bm!404876))

(assert (=> b!5491468 m!6503800))

(declare-fun m!6504086 () Bool)

(assert (=> b!5491468 m!6504086))

(assert (=> b!5491467 m!6503800))

(declare-fun m!6504088 () Bool)

(assert (=> b!5491467 m!6504088))

(assert (=> b!5491467 m!6504088))

(declare-fun m!6504090 () Bool)

(assert (=> b!5491467 m!6504090))

(assert (=> d!1741910 m!6503800))

(assert (=> d!1741910 m!6503802))

(assert (=> d!1741910 m!6503806))

(declare-fun m!6504092 () Bool)

(assert (=> d!1741910 m!6504092))

(assert (=> b!5491464 m!6503800))

(assert (=> b!5491464 m!6504088))

(assert (=> b!5491464 m!6504088))

(assert (=> b!5491464 m!6504090))

(assert (=> bm!404876 m!6503800))

(assert (=> bm!404876 m!6503802))

(assert (=> b!5491465 m!6503800))

(assert (=> b!5491465 m!6504086))

(assert (=> b!5491472 m!6503800))

(assert (=> b!5491472 m!6504086))

(assert (=> b!5491472 m!6503806))

(assert (=> b!5491472 m!6504086))

(declare-fun m!6504094 () Bool)

(assert (=> b!5491472 m!6504094))

(assert (=> b!5491472 m!6503800))

(assert (=> b!5491472 m!6504088))

(assert (=> b!5491472 m!6504094))

(assert (=> b!5491472 m!6504088))

(declare-fun m!6504096 () Bool)

(assert (=> b!5491472 m!6504096))

(assert (=> b!5491466 m!6503806))

(declare-fun m!6504098 () Bool)

(assert (=> b!5491466 m!6504098))

(assert (=> b!5490886 d!1741910))

(declare-fun b!5491475 () Bool)

(declare-fun e!3397770 () Regex!15457)

(declare-fun e!3397772 () Regex!15457)

(assert (=> b!5491475 (= e!3397770 e!3397772)))

(declare-fun c!958877 () Bool)

(assert (=> b!5491475 (= c!958877 ((_ is Star!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun b!5491476 () Bool)

(declare-fun call!404883 () Regex!15457)

(declare-fun e!3397768 () Regex!15457)

(assert (=> b!5491476 (= e!3397768 (Union!15457 (Concat!24302 call!404883 (regTwo!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326)))) EmptyLang!15457))))

(declare-fun b!5491477 () Bool)

(declare-fun call!404882 () Regex!15457)

(declare-fun call!404884 () Regex!15457)

(assert (=> b!5491477 (= e!3397770 (Union!15457 call!404882 call!404884))))

(declare-fun b!5491478 () Bool)

(assert (=> b!5491478 (= e!3397768 (Union!15457 (Concat!24302 call!404882 (regTwo!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326)))) call!404883))))

(declare-fun bm!404877 () Bool)

(declare-fun c!958876 () Bool)

(assert (=> bm!404877 (= call!404882 (derivativeStep!4341 (ite c!958876 (regOne!31427 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (regOne!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326)))) (head!11756 (tail!10851 s!2326))))))

(declare-fun bm!404878 () Bool)

(declare-fun call!404885 () Regex!15457)

(assert (=> bm!404878 (= call!404885 call!404884)))

(declare-fun b!5491479 () Bool)

(assert (=> b!5491479 (= c!958876 ((_ is Union!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun e!3397769 () Regex!15457)

(assert (=> b!5491479 (= e!3397769 e!3397770)))

(declare-fun b!5491480 () Bool)

(assert (=> b!5491480 (= e!3397772 (Concat!24302 call!404885 (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun b!5491481 () Bool)

(declare-fun e!3397771 () Regex!15457)

(assert (=> b!5491481 (= e!3397771 e!3397769)))

(declare-fun c!958875 () Bool)

(assert (=> b!5491481 (= c!958875 ((_ is ElementMatch!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun d!1741912 () Bool)

(declare-fun lt!2242474 () Regex!15457)

(assert (=> d!1741912 (validRegex!7193 lt!2242474)))

(assert (=> d!1741912 (= lt!2242474 e!3397771)))

(declare-fun c!958879 () Bool)

(assert (=> d!1741912 (= c!958879 (or ((_ is EmptyExpr!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))) ((_ is EmptyLang!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326)))))))

(assert (=> d!1741912 (validRegex!7193 (derivativeStep!4341 r!7292 (head!11756 s!2326)))))

(assert (=> d!1741912 (= (derivativeStep!4341 (derivativeStep!4341 r!7292 (head!11756 s!2326)) (head!11756 (tail!10851 s!2326))) lt!2242474)))

(declare-fun b!5491482 () Bool)

(assert (=> b!5491482 (= e!3397771 EmptyLang!15457)))

(declare-fun c!958878 () Bool)

(declare-fun bm!404879 () Bool)

(assert (=> bm!404879 (= call!404884 (derivativeStep!4341 (ite c!958876 (regTwo!31427 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (ite c!958877 (reg!15786 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (ite c!958878 (regTwo!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (regOne!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326)))))) (head!11756 (tail!10851 s!2326))))))

(declare-fun bm!404880 () Bool)

(assert (=> bm!404880 (= call!404883 call!404885)))

(declare-fun b!5491483 () Bool)

(assert (=> b!5491483 (= c!958878 (nullable!5500 (regOne!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326)))))))

(assert (=> b!5491483 (= e!3397772 e!3397768)))

(declare-fun b!5491484 () Bool)

(assert (=> b!5491484 (= e!3397769 (ite (= (head!11756 (tail!10851 s!2326)) (c!958671 (derivativeStep!4341 r!7292 (head!11756 s!2326)))) EmptyExpr!15457 EmptyLang!15457))))

(assert (= (and d!1741912 c!958879) b!5491482))

(assert (= (and d!1741912 (not c!958879)) b!5491481))

(assert (= (and b!5491481 c!958875) b!5491484))

(assert (= (and b!5491481 (not c!958875)) b!5491479))

(assert (= (and b!5491479 c!958876) b!5491477))

(assert (= (and b!5491479 (not c!958876)) b!5491475))

(assert (= (and b!5491475 c!958877) b!5491480))

(assert (= (and b!5491475 (not c!958877)) b!5491483))

(assert (= (and b!5491483 c!958878) b!5491478))

(assert (= (and b!5491483 (not c!958878)) b!5491476))

(assert (= (or b!5491478 b!5491476) bm!404880))

(assert (= (or b!5491480 bm!404880) bm!404878))

(assert (= (or b!5491477 bm!404878) bm!404879))

(assert (= (or b!5491477 b!5491478) bm!404877))

(assert (=> bm!404877 m!6503798))

(declare-fun m!6504100 () Bool)

(assert (=> bm!404877 m!6504100))

(declare-fun m!6504102 () Bool)

(assert (=> d!1741912 m!6504102))

(assert (=> d!1741912 m!6503730))

(assert (=> d!1741912 m!6503804))

(assert (=> bm!404879 m!6503798))

(declare-fun m!6504104 () Bool)

(assert (=> bm!404879 m!6504104))

(declare-fun m!6504106 () Bool)

(assert (=> b!5491483 m!6504106))

(assert (=> b!5490886 d!1741912))

(declare-fun d!1741914 () Bool)

(assert (=> d!1741914 (= (head!11756 (tail!10851 s!2326)) (h!68996 (tail!10851 s!2326)))))

(assert (=> b!5490886 d!1741914))

(declare-fun d!1741916 () Bool)

(assert (=> d!1741916 (= (tail!10851 (tail!10851 s!2326)) (t!375903 (tail!10851 s!2326)))))

(assert (=> b!5490886 d!1741916))

(declare-fun d!1741918 () Bool)

(declare-fun res!2342085 () Bool)

(declare-fun e!3397773 () Bool)

(assert (=> d!1741918 (=> res!2342085 e!3397773)))

(assert (=> d!1741918 (= res!2342085 ((_ is Nil!62546) (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> d!1741918 (= (forall!14650 (t!375901 (exprs!5341 (h!68995 zl!343))) lambda!294026) e!3397773)))

(declare-fun b!5491485 () Bool)

(declare-fun e!3397774 () Bool)

(assert (=> b!5491485 (= e!3397773 e!3397774)))

(declare-fun res!2342086 () Bool)

(assert (=> b!5491485 (=> (not res!2342086) (not e!3397774))))

(assert (=> b!5491485 (= res!2342086 (dynLambda!24455 lambda!294026 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5491486 () Bool)

(assert (=> b!5491486 (= e!3397774 (forall!14650 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))) lambda!294026))))

(assert (= (and d!1741918 (not res!2342085)) b!5491485))

(assert (= (and b!5491485 res!2342086) b!5491486))

(declare-fun b_lambda!208411 () Bool)

(assert (=> (not b_lambda!208411) (not b!5491485)))

(declare-fun m!6504108 () Bool)

(assert (=> b!5491485 m!6504108))

(declare-fun m!6504110 () Bool)

(assert (=> b!5491486 m!6504110))

(assert (=> b!5490866 d!1741918))

(declare-fun d!1741920 () Bool)

(assert (=> d!1741920 (= (isEmpty!34347 (t!375901 (unfocusZipperList!884 zl!343))) ((_ is Nil!62546) (t!375901 (unfocusZipperList!884 zl!343))))))

(assert (=> b!5490964 d!1741920))

(declare-fun d!1741922 () Bool)

(assert (=> d!1741922 (= (nullable!5500 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))) (nullableFct!1642 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))

(declare-fun bs!1267326 () Bool)

(assert (= bs!1267326 d!1741922))

(declare-fun m!6504112 () Bool)

(assert (=> bs!1267326 m!6504112))

(assert (=> b!5491026 d!1741922))

(declare-fun d!1741924 () Bool)

(assert (=> d!1741924 (= (isEmptyLang!1058 lt!2242457) ((_ is EmptyLang!15457) lt!2242457))))

(assert (=> b!5490960 d!1741924))

(declare-fun d!1741926 () Bool)

(assert (=> d!1741926 true))

(assert (=> d!1741926 true))

(declare-fun res!2342089 () Bool)

(assert (=> d!1741926 (= (choose!41760 (ite c!958747 lambda!294038 lambda!294039)) res!2342089)))

(assert (=> d!1741758 d!1741926))

(declare-fun d!1741928 () Bool)

(declare-fun lt!2242477 () Bool)

(assert (=> d!1741928 (= lt!2242477 (select (content!11229 (t!375902 lt!2242422)) (h!68995 lt!2242422)))))

(declare-fun e!3397780 () Bool)

(assert (=> d!1741928 (= lt!2242477 e!3397780)))

(declare-fun res!2342094 () Bool)

(assert (=> d!1741928 (=> (not res!2342094) (not e!3397780))))

(assert (=> d!1741928 (= res!2342094 ((_ is Cons!62547) (t!375902 lt!2242422)))))

(assert (=> d!1741928 (= (contains!19764 (t!375902 lt!2242422) (h!68995 lt!2242422)) lt!2242477)))

(declare-fun b!5491491 () Bool)

(declare-fun e!3397779 () Bool)

(assert (=> b!5491491 (= e!3397780 e!3397779)))

(declare-fun res!2342095 () Bool)

(assert (=> b!5491491 (=> res!2342095 e!3397779)))

(assert (=> b!5491491 (= res!2342095 (= (h!68995 (t!375902 lt!2242422)) (h!68995 lt!2242422)))))

(declare-fun b!5491492 () Bool)

(assert (=> b!5491492 (= e!3397779 (contains!19764 (t!375902 (t!375902 lt!2242422)) (h!68995 lt!2242422)))))

(assert (= (and d!1741928 res!2342094) b!5491491))

(assert (= (and b!5491491 (not res!2342095)) b!5491492))

(assert (=> d!1741928 m!6503792))

(declare-fun m!6504114 () Bool)

(assert (=> d!1741928 m!6504114))

(declare-fun m!6504116 () Bool)

(assert (=> b!5491492 m!6504116))

(assert (=> b!5491038 d!1741928))

(declare-fun d!1741930 () Bool)

(assert (=> d!1741930 (= (isConcat!571 lt!2242454) ((_ is Concat!24302) lt!2242454))))

(assert (=> b!5490925 d!1741930))

(declare-fun d!1741932 () Bool)

(assert (=> d!1741932 (= (isEmpty!34347 (tail!10849 (unfocusZipperList!884 zl!343))) ((_ is Nil!62546) (tail!10849 (unfocusZipperList!884 zl!343))))))

(assert (=> b!5490962 d!1741932))

(declare-fun d!1741934 () Bool)

(assert (=> d!1741934 (= (tail!10849 (unfocusZipperList!884 zl!343)) (t!375901 (unfocusZipperList!884 zl!343)))))

(assert (=> b!5490962 d!1741934))

(declare-fun d!1741936 () Bool)

(assert (=> d!1741936 (= (isEmpty!34347 (unfocusZipperList!884 zl!343)) ((_ is Nil!62546) (unfocusZipperList!884 zl!343)))))

(assert (=> b!5490958 d!1741936))

(assert (=> b!5490882 d!1741914))

(declare-fun bm!404881 () Bool)

(declare-fun call!404888 () Bool)

(declare-fun call!404886 () Bool)

(assert (=> bm!404881 (= call!404888 call!404886)))

(declare-fun b!5491493 () Bool)

(declare-fun res!2342099 () Bool)

(declare-fun e!3397783 () Bool)

(assert (=> b!5491493 (=> res!2342099 e!3397783)))

(assert (=> b!5491493 (= res!2342099 (not ((_ is Concat!24302) (h!68994 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun e!3397781 () Bool)

(assert (=> b!5491493 (= e!3397781 e!3397783)))

(declare-fun b!5491494 () Bool)

(declare-fun e!3397784 () Bool)

(declare-fun call!404887 () Bool)

(assert (=> b!5491494 (= e!3397784 call!404887)))

(declare-fun b!5491495 () Bool)

(declare-fun e!3397785 () Bool)

(assert (=> b!5491495 (= e!3397785 call!404887)))

(declare-fun b!5491496 () Bool)

(declare-fun res!2342100 () Bool)

(assert (=> b!5491496 (=> (not res!2342100) (not e!3397784))))

(assert (=> b!5491496 (= res!2342100 call!404888)))

(assert (=> b!5491496 (= e!3397781 e!3397784)))

(declare-fun b!5491497 () Bool)

(declare-fun e!3397787 () Bool)

(assert (=> b!5491497 (= e!3397787 call!404886)))

(declare-fun d!1741938 () Bool)

(declare-fun res!2342097 () Bool)

(declare-fun e!3397782 () Bool)

(assert (=> d!1741938 (=> res!2342097 e!3397782)))

(assert (=> d!1741938 (= res!2342097 ((_ is ElementMatch!15457) (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> d!1741938 (= (validRegex!7193 (h!68994 (exprs!5341 (h!68995 zl!343)))) e!3397782)))

(declare-fun b!5491498 () Bool)

(declare-fun e!3397786 () Bool)

(assert (=> b!5491498 (= e!3397786 e!3397787)))

(declare-fun res!2342098 () Bool)

(assert (=> b!5491498 (= res!2342098 (not (nullable!5500 (reg!15786 (h!68994 (exprs!5341 (h!68995 zl!343)))))))))

(assert (=> b!5491498 (=> (not res!2342098) (not e!3397787))))

(declare-fun b!5491499 () Bool)

(assert (=> b!5491499 (= e!3397783 e!3397785)))

(declare-fun res!2342096 () Bool)

(assert (=> b!5491499 (=> (not res!2342096) (not e!3397785))))

(assert (=> b!5491499 (= res!2342096 call!404888)))

(declare-fun b!5491500 () Bool)

(assert (=> b!5491500 (= e!3397786 e!3397781)))

(declare-fun c!958880 () Bool)

(assert (=> b!5491500 (= c!958880 ((_ is Union!15457) (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun b!5491501 () Bool)

(assert (=> b!5491501 (= e!3397782 e!3397786)))

(declare-fun c!958881 () Bool)

(assert (=> b!5491501 (= c!958881 ((_ is Star!15457) (h!68994 (exprs!5341 (h!68995 zl!343)))))))

(declare-fun bm!404882 () Bool)

(assert (=> bm!404882 (= call!404887 (validRegex!7193 (ite c!958880 (regTwo!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))) (regTwo!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))))))

(declare-fun bm!404883 () Bool)

(assert (=> bm!404883 (= call!404886 (validRegex!7193 (ite c!958881 (reg!15786 (h!68994 (exprs!5341 (h!68995 zl!343)))) (ite c!958880 (regOne!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))) (regOne!31426 (h!68994 (exprs!5341 (h!68995 zl!343))))))))))

(assert (= (and d!1741938 (not res!2342097)) b!5491501))

(assert (= (and b!5491501 c!958881) b!5491498))

(assert (= (and b!5491501 (not c!958881)) b!5491500))

(assert (= (and b!5491498 res!2342098) b!5491497))

(assert (= (and b!5491500 c!958880) b!5491496))

(assert (= (and b!5491500 (not c!958880)) b!5491493))

(assert (= (and b!5491496 res!2342100) b!5491494))

(assert (= (and b!5491493 (not res!2342099)) b!5491499))

(assert (= (and b!5491499 res!2342096) b!5491495))

(assert (= (or b!5491494 b!5491495) bm!404882))

(assert (= (or b!5491496 b!5491499) bm!404881))

(assert (= (or b!5491497 bm!404881) bm!404883))

(declare-fun m!6504118 () Bool)

(assert (=> b!5491498 m!6504118))

(declare-fun m!6504120 () Bool)

(assert (=> bm!404882 m!6504120))

(declare-fun m!6504122 () Bool)

(assert (=> bm!404883 m!6504122))

(assert (=> bs!1267266 d!1741938))

(declare-fun bm!404884 () Bool)

(declare-fun call!404891 () Bool)

(declare-fun call!404889 () Bool)

(assert (=> bm!404884 (= call!404891 call!404889)))

(declare-fun b!5491502 () Bool)

(declare-fun res!2342104 () Bool)

(declare-fun e!3397790 () Bool)

(assert (=> b!5491502 (=> res!2342104 e!3397790)))

(assert (=> b!5491502 (= res!2342104 (not ((_ is Concat!24302) (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437)))))))

(declare-fun e!3397788 () Bool)

(assert (=> b!5491502 (= e!3397788 e!3397790)))

(declare-fun b!5491503 () Bool)

(declare-fun e!3397791 () Bool)

(declare-fun call!404890 () Bool)

(assert (=> b!5491503 (= e!3397791 call!404890)))

(declare-fun b!5491504 () Bool)

(declare-fun e!3397792 () Bool)

(assert (=> b!5491504 (= e!3397792 call!404890)))

(declare-fun b!5491505 () Bool)

(declare-fun res!2342105 () Bool)

(assert (=> b!5491505 (=> (not res!2342105) (not e!3397791))))

(assert (=> b!5491505 (= res!2342105 call!404891)))

(assert (=> b!5491505 (= e!3397788 e!3397791)))

(declare-fun b!5491506 () Bool)

(declare-fun e!3397794 () Bool)

(assert (=> b!5491506 (= e!3397794 call!404889)))

(declare-fun d!1741940 () Bool)

(declare-fun res!2342102 () Bool)

(declare-fun e!3397789 () Bool)

(assert (=> d!1741940 (=> res!2342102 e!3397789)))

(assert (=> d!1741940 (= res!2342102 ((_ is ElementMatch!15457) (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))))))

(assert (=> d!1741940 (= (validRegex!7193 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))) e!3397789)))

(declare-fun b!5491507 () Bool)

(declare-fun e!3397793 () Bool)

(assert (=> b!5491507 (= e!3397793 e!3397794)))

(declare-fun res!2342103 () Bool)

(assert (=> b!5491507 (= res!2342103 (not (nullable!5500 (reg!15786 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))))))))

(assert (=> b!5491507 (=> (not res!2342103) (not e!3397794))))

(declare-fun b!5491508 () Bool)

(assert (=> b!5491508 (= e!3397790 e!3397792)))

(declare-fun res!2342101 () Bool)

(assert (=> b!5491508 (=> (not res!2342101) (not e!3397792))))

(assert (=> b!5491508 (= res!2342101 call!404891)))

(declare-fun b!5491509 () Bool)

(assert (=> b!5491509 (= e!3397793 e!3397788)))

(declare-fun c!958882 () Bool)

(assert (=> b!5491509 (= c!958882 ((_ is Union!15457) (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))))))

(declare-fun b!5491510 () Bool)

(assert (=> b!5491510 (= e!3397789 e!3397793)))

(declare-fun c!958883 () Bool)

(assert (=> b!5491510 (= c!958883 ((_ is Star!15457) (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))))))

(declare-fun bm!404885 () Bool)

(assert (=> bm!404885 (= call!404890 (validRegex!7193 (ite c!958882 (regTwo!31427 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))) (regTwo!31426 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))))))))

(declare-fun bm!404886 () Bool)

(assert (=> bm!404886 (= call!404889 (validRegex!7193 (ite c!958883 (reg!15786 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))) (ite c!958882 (regOne!31427 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437))) (regOne!31426 (ite c!958781 (regTwo!31427 lt!2242437) (regTwo!31426 lt!2242437)))))))))

(assert (= (and d!1741940 (not res!2342102)) b!5491510))

(assert (= (and b!5491510 c!958883) b!5491507))

(assert (= (and b!5491510 (not c!958883)) b!5491509))

(assert (= (and b!5491507 res!2342103) b!5491506))

(assert (= (and b!5491509 c!958882) b!5491505))

(assert (= (and b!5491509 (not c!958882)) b!5491502))

(assert (= (and b!5491505 res!2342105) b!5491503))

(assert (= (and b!5491502 (not res!2342104)) b!5491508))

(assert (= (and b!5491508 res!2342101) b!5491504))

(assert (= (or b!5491503 b!5491504) bm!404885))

(assert (= (or b!5491505 b!5491508) bm!404884))

(assert (= (or b!5491506 bm!404884) bm!404886))

(declare-fun m!6504124 () Bool)

(assert (=> b!5491507 m!6504124))

(declare-fun m!6504126 () Bool)

(assert (=> bm!404885 m!6504126))

(declare-fun m!6504128 () Bool)

(assert (=> bm!404886 m!6504128))

(assert (=> bm!404832 d!1741940))

(declare-fun d!1741942 () Bool)

(declare-fun res!2342106 () Bool)

(declare-fun e!3397795 () Bool)

(assert (=> d!1741942 (=> res!2342106 e!3397795)))

(assert (=> d!1741942 (= res!2342106 ((_ is Nil!62546) (t!375901 (exprs!5341 setElem!36339))))))

(assert (=> d!1741942 (= (forall!14650 (t!375901 (exprs!5341 setElem!36339)) lambda!294022) e!3397795)))

(declare-fun b!5491511 () Bool)

(declare-fun e!3397796 () Bool)

(assert (=> b!5491511 (= e!3397795 e!3397796)))

(declare-fun res!2342107 () Bool)

(assert (=> b!5491511 (=> (not res!2342107) (not e!3397796))))

(assert (=> b!5491511 (= res!2342107 (dynLambda!24455 lambda!294022 (h!68994 (t!375901 (exprs!5341 setElem!36339)))))))

(declare-fun b!5491512 () Bool)

(assert (=> b!5491512 (= e!3397796 (forall!14650 (t!375901 (t!375901 (exprs!5341 setElem!36339))) lambda!294022))))

(assert (= (and d!1741942 (not res!2342106)) b!5491511))

(assert (= (and b!5491511 res!2342107) b!5491512))

(declare-fun b_lambda!208413 () Bool)

(assert (=> (not b_lambda!208413) (not b!5491511)))

(declare-fun m!6504130 () Bool)

(assert (=> b!5491511 m!6504130))

(declare-fun m!6504132 () Bool)

(assert (=> b!5491512 m!6504132))

(assert (=> b!5490874 d!1741942))

(assert (=> b!5490879 d!1741914))

(declare-fun bm!404887 () Bool)

(declare-fun call!404894 () Bool)

(declare-fun call!404892 () Bool)

(assert (=> bm!404887 (= call!404894 call!404892)))

(declare-fun b!5491513 () Bool)

(declare-fun res!2342111 () Bool)

(declare-fun e!3397799 () Bool)

(assert (=> b!5491513 (=> res!2342111 e!3397799)))

(assert (=> b!5491513 (= res!2342111 (not ((_ is Concat!24302) (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431)))))))

(declare-fun e!3397797 () Bool)

(assert (=> b!5491513 (= e!3397797 e!3397799)))

(declare-fun b!5491514 () Bool)

(declare-fun e!3397800 () Bool)

(declare-fun call!404893 () Bool)

(assert (=> b!5491514 (= e!3397800 call!404893)))

(declare-fun b!5491515 () Bool)

(declare-fun e!3397801 () Bool)

(assert (=> b!5491515 (= e!3397801 call!404893)))

(declare-fun b!5491516 () Bool)

(declare-fun res!2342112 () Bool)

(assert (=> b!5491516 (=> (not res!2342112) (not e!3397800))))

(assert (=> b!5491516 (= res!2342112 call!404894)))

(assert (=> b!5491516 (= e!3397797 e!3397800)))

(declare-fun b!5491517 () Bool)

(declare-fun e!3397803 () Bool)

(assert (=> b!5491517 (= e!3397803 call!404892)))

(declare-fun d!1741944 () Bool)

(declare-fun res!2342109 () Bool)

(declare-fun e!3397798 () Bool)

(assert (=> d!1741944 (=> res!2342109 e!3397798)))

(assert (=> d!1741944 (= res!2342109 ((_ is ElementMatch!15457) (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))))))

(assert (=> d!1741944 (= (validRegex!7193 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))) e!3397798)))

(declare-fun b!5491518 () Bool)

(declare-fun e!3397802 () Bool)

(assert (=> b!5491518 (= e!3397802 e!3397803)))

(declare-fun res!2342110 () Bool)

(assert (=> b!5491518 (= res!2342110 (not (nullable!5500 (reg!15786 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))))))))

(assert (=> b!5491518 (=> (not res!2342110) (not e!3397803))))

(declare-fun b!5491519 () Bool)

(assert (=> b!5491519 (= e!3397799 e!3397801)))

(declare-fun res!2342108 () Bool)

(assert (=> b!5491519 (=> (not res!2342108) (not e!3397801))))

(assert (=> b!5491519 (= res!2342108 call!404894)))

(declare-fun b!5491520 () Bool)

(assert (=> b!5491520 (= e!3397802 e!3397797)))

(declare-fun c!958884 () Bool)

(assert (=> b!5491520 (= c!958884 ((_ is Union!15457) (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))))))

(declare-fun b!5491521 () Bool)

(assert (=> b!5491521 (= e!3397798 e!3397802)))

(declare-fun c!958885 () Bool)

(assert (=> b!5491521 (= c!958885 ((_ is Star!15457) (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))))))

(declare-fun bm!404888 () Bool)

(assert (=> bm!404888 (= call!404893 (validRegex!7193 (ite c!958884 (regTwo!31427 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))) (regTwo!31426 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))))))))

(declare-fun bm!404889 () Bool)

(assert (=> bm!404889 (= call!404892 (validRegex!7193 (ite c!958885 (reg!15786 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))) (ite c!958884 (regOne!31427 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431))) (regOne!31426 (ite c!958754 (regTwo!31427 lt!2242431) (regTwo!31426 lt!2242431)))))))))

(assert (= (and d!1741944 (not res!2342109)) b!5491521))

(assert (= (and b!5491521 c!958885) b!5491518))

(assert (= (and b!5491521 (not c!958885)) b!5491520))

(assert (= (and b!5491518 res!2342110) b!5491517))

(assert (= (and b!5491520 c!958884) b!5491516))

(assert (= (and b!5491520 (not c!958884)) b!5491513))

(assert (= (and b!5491516 res!2342112) b!5491514))

(assert (= (and b!5491513 (not res!2342111)) b!5491519))

(assert (= (and b!5491519 res!2342108) b!5491515))

(assert (= (or b!5491514 b!5491515) bm!404888))

(assert (= (or b!5491516 b!5491519) bm!404887))

(assert (= (or b!5491517 bm!404887) bm!404889))

(declare-fun m!6504134 () Bool)

(assert (=> b!5491518 m!6504134))

(declare-fun m!6504136 () Bool)

(assert (=> bm!404888 m!6504136))

(declare-fun m!6504138 () Bool)

(assert (=> bm!404889 m!6504138))

(assert (=> bm!404816 d!1741944))

(declare-fun d!1741946 () Bool)

(assert (=> d!1741946 (= (nullable!5500 (reg!15786 lt!2242437)) (nullableFct!1642 (reg!15786 lt!2242437)))))

(declare-fun bs!1267327 () Bool)

(assert (= bs!1267327 d!1741946))

(declare-fun m!6504140 () Bool)

(assert (=> bs!1267327 m!6504140))

(assert (=> b!5490934 d!1741946))

(assert (=> b!5490919 d!1741816))

(declare-fun bm!404894 () Bool)

(declare-fun call!404899 () Bool)

(declare-fun c!958888 () Bool)

(assert (=> bm!404894 (= call!404899 (nullable!5500 (ite c!958888 (regOne!31427 r!7292) (regOne!31426 r!7292))))))

(declare-fun b!5491536 () Bool)

(declare-fun e!3397820 () Bool)

(declare-fun e!3397817 () Bool)

(assert (=> b!5491536 (= e!3397820 e!3397817)))

(declare-fun res!2342123 () Bool)

(assert (=> b!5491536 (= res!2342123 call!404899)))

(assert (=> b!5491536 (=> res!2342123 e!3397817)))

(declare-fun b!5491537 () Bool)

(declare-fun e!3397819 () Bool)

(assert (=> b!5491537 (= e!3397819 e!3397820)))

(assert (=> b!5491537 (= c!958888 ((_ is Union!15457) r!7292))))

(declare-fun b!5491539 () Bool)

(declare-fun e!3397816 () Bool)

(declare-fun call!404900 () Bool)

(assert (=> b!5491539 (= e!3397816 call!404900)))

(declare-fun bm!404895 () Bool)

(assert (=> bm!404895 (= call!404900 (nullable!5500 (ite c!958888 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))

(declare-fun b!5491540 () Bool)

(assert (=> b!5491540 (= e!3397817 call!404900)))

(declare-fun b!5491538 () Bool)

(declare-fun e!3397818 () Bool)

(declare-fun e!3397821 () Bool)

(assert (=> b!5491538 (= e!3397818 e!3397821)))

(declare-fun res!2342125 () Bool)

(assert (=> b!5491538 (=> (not res!2342125) (not e!3397821))))

(assert (=> b!5491538 (= res!2342125 (and (not ((_ is EmptyLang!15457) r!7292)) (not ((_ is ElementMatch!15457) r!7292))))))

(declare-fun d!1741948 () Bool)

(declare-fun res!2342126 () Bool)

(assert (=> d!1741948 (=> res!2342126 e!3397818)))

(assert (=> d!1741948 (= res!2342126 ((_ is EmptyExpr!15457) r!7292))))

(assert (=> d!1741948 (= (nullableFct!1642 r!7292) e!3397818)))

(declare-fun b!5491541 () Bool)

(assert (=> b!5491541 (= e!3397821 e!3397819)))

(declare-fun res!2342127 () Bool)

(assert (=> b!5491541 (=> res!2342127 e!3397819)))

(assert (=> b!5491541 (= res!2342127 ((_ is Star!15457) r!7292))))

(declare-fun b!5491542 () Bool)

(assert (=> b!5491542 (= e!3397820 e!3397816)))

(declare-fun res!2342124 () Bool)

(assert (=> b!5491542 (= res!2342124 call!404899)))

(assert (=> b!5491542 (=> (not res!2342124) (not e!3397816))))

(assert (= (and d!1741948 (not res!2342126)) b!5491538))

(assert (= (and b!5491538 res!2342125) b!5491541))

(assert (= (and b!5491541 (not res!2342127)) b!5491537))

(assert (= (and b!5491537 c!958888) b!5491536))

(assert (= (and b!5491537 (not c!958888)) b!5491542))

(assert (= (and b!5491536 (not res!2342123)) b!5491540))

(assert (= (and b!5491542 res!2342124) b!5491539))

(assert (= (or b!5491540 b!5491539) bm!404895))

(assert (= (or b!5491536 b!5491542) bm!404894))

(declare-fun m!6504142 () Bool)

(assert (=> bm!404894 m!6504142))

(declare-fun m!6504144 () Bool)

(assert (=> bm!404895 m!6504144))

(assert (=> d!1741838 d!1741948))

(declare-fun d!1741950 () Bool)

(declare-fun res!2342128 () Bool)

(declare-fun e!3397822 () Bool)

(assert (=> d!1741950 (=> res!2342128 e!3397822)))

(assert (=> d!1741950 (= res!2342128 ((_ is Nil!62546) (exprs!5341 setElem!36345)))))

(assert (=> d!1741950 (= (forall!14650 (exprs!5341 setElem!36345) lambda!294053) e!3397822)))

(declare-fun b!5491543 () Bool)

(declare-fun e!3397823 () Bool)

(assert (=> b!5491543 (= e!3397822 e!3397823)))

(declare-fun res!2342129 () Bool)

(assert (=> b!5491543 (=> (not res!2342129) (not e!3397823))))

(assert (=> b!5491543 (= res!2342129 (dynLambda!24455 lambda!294053 (h!68994 (exprs!5341 setElem!36345))))))

(declare-fun b!5491544 () Bool)

(assert (=> b!5491544 (= e!3397823 (forall!14650 (t!375901 (exprs!5341 setElem!36345)) lambda!294053))))

(assert (= (and d!1741950 (not res!2342128)) b!5491543))

(assert (= (and b!5491543 res!2342129) b!5491544))

(declare-fun b_lambda!208415 () Bool)

(assert (=> (not b_lambda!208415) (not b!5491543)))

(declare-fun m!6504146 () Bool)

(assert (=> b!5491543 m!6504146))

(declare-fun m!6504148 () Bool)

(assert (=> b!5491544 m!6504148))

(assert (=> d!1741818 d!1741950))

(assert (=> bm!404818 d!1741826))

(declare-fun bm!404896 () Bool)

(declare-fun call!404901 () Bool)

(declare-fun c!958889 () Bool)

(assert (=> bm!404896 (= call!404901 (nullable!5500 (ite c!958889 (regOne!31427 (reg!15786 r!7292)) (regOne!31426 (reg!15786 r!7292)))))))

(declare-fun b!5491545 () Bool)

(declare-fun e!3397828 () Bool)

(declare-fun e!3397825 () Bool)

(assert (=> b!5491545 (= e!3397828 e!3397825)))

(declare-fun res!2342130 () Bool)

(assert (=> b!5491545 (= res!2342130 call!404901)))

(assert (=> b!5491545 (=> res!2342130 e!3397825)))

(declare-fun b!5491546 () Bool)

(declare-fun e!3397827 () Bool)

(assert (=> b!5491546 (= e!3397827 e!3397828)))

(assert (=> b!5491546 (= c!958889 ((_ is Union!15457) (reg!15786 r!7292)))))

(declare-fun b!5491548 () Bool)

(declare-fun e!3397824 () Bool)

(declare-fun call!404902 () Bool)

(assert (=> b!5491548 (= e!3397824 call!404902)))

(declare-fun bm!404897 () Bool)

(assert (=> bm!404897 (= call!404902 (nullable!5500 (ite c!958889 (regTwo!31427 (reg!15786 r!7292)) (regTwo!31426 (reg!15786 r!7292)))))))

(declare-fun b!5491549 () Bool)

(assert (=> b!5491549 (= e!3397825 call!404902)))

(declare-fun b!5491547 () Bool)

(declare-fun e!3397826 () Bool)

(declare-fun e!3397829 () Bool)

(assert (=> b!5491547 (= e!3397826 e!3397829)))

(declare-fun res!2342132 () Bool)

(assert (=> b!5491547 (=> (not res!2342132) (not e!3397829))))

(assert (=> b!5491547 (= res!2342132 (and (not ((_ is EmptyLang!15457) (reg!15786 r!7292))) (not ((_ is ElementMatch!15457) (reg!15786 r!7292)))))))

(declare-fun d!1741952 () Bool)

(declare-fun res!2342133 () Bool)

(assert (=> d!1741952 (=> res!2342133 e!3397826)))

(assert (=> d!1741952 (= res!2342133 ((_ is EmptyExpr!15457) (reg!15786 r!7292)))))

(assert (=> d!1741952 (= (nullableFct!1642 (reg!15786 r!7292)) e!3397826)))

(declare-fun b!5491550 () Bool)

(assert (=> b!5491550 (= e!3397829 e!3397827)))

(declare-fun res!2342134 () Bool)

(assert (=> b!5491550 (=> res!2342134 e!3397827)))

(assert (=> b!5491550 (= res!2342134 ((_ is Star!15457) (reg!15786 r!7292)))))

(declare-fun b!5491551 () Bool)

(assert (=> b!5491551 (= e!3397828 e!3397824)))

(declare-fun res!2342131 () Bool)

(assert (=> b!5491551 (= res!2342131 call!404901)))

(assert (=> b!5491551 (=> (not res!2342131) (not e!3397824))))

(assert (= (and d!1741952 (not res!2342133)) b!5491547))

(assert (= (and b!5491547 res!2342132) b!5491550))

(assert (= (and b!5491550 (not res!2342134)) b!5491546))

(assert (= (and b!5491546 c!958889) b!5491545))

(assert (= (and b!5491546 (not c!958889)) b!5491551))

(assert (= (and b!5491545 (not res!2342130)) b!5491549))

(assert (= (and b!5491551 res!2342131) b!5491548))

(assert (= (or b!5491549 b!5491548) bm!404897))

(assert (= (or b!5491545 b!5491551) bm!404896))

(declare-fun m!6504150 () Bool)

(assert (=> bm!404896 m!6504150))

(declare-fun m!6504152 () Bool)

(assert (=> bm!404897 m!6504152))

(assert (=> d!1741756 d!1741952))

(declare-fun d!1741954 () Bool)

(assert (=> d!1741954 (= (Exists!2567 (ite c!958751 lambda!294040 lambda!294041)) (choose!41760 (ite c!958751 lambda!294040 lambda!294041)))))

(declare-fun bs!1267328 () Bool)

(assert (= bs!1267328 d!1741954))

(declare-fun m!6504154 () Bool)

(assert (=> bs!1267328 m!6504154))

(assert (=> bm!404814 d!1741954))

(declare-fun bs!1267329 () Bool)

(declare-fun b!5491552 () Bool)

(assert (= bs!1267329 (and b!5491552 b!5490850)))

(declare-fun lambda!294069 () Int)

(assert (=> bs!1267329 (not (= lambda!294069 lambda!294041))))

(declare-fun bs!1267330 () Bool)

(assert (= bs!1267330 (and b!5491552 b!5490841)))

(assert (=> bs!1267330 (= (and (= (reg!15786 (regTwo!31427 (regOne!31427 r!7292))) (reg!15786 (regTwo!31427 r!7292))) (= (regTwo!31427 (regOne!31427 r!7292)) (regTwo!31427 r!7292))) (= lambda!294069 lambda!294040))))

(declare-fun bs!1267331 () Bool)

(assert (= bs!1267331 (and b!5491552 b!5490993)))

(assert (=> bs!1267331 (not (= lambda!294069 lambda!294052))))

(declare-fun bs!1267332 () Bool)

(assert (= bs!1267332 (and b!5491552 b!5490772)))

(assert (=> bs!1267332 (= (and (= (reg!15786 (regTwo!31427 (regOne!31427 r!7292))) (reg!15786 r!7292)) (= (regTwo!31427 (regOne!31427 r!7292)) r!7292)) (= lambda!294069 lambda!294038))))

(declare-fun bs!1267333 () Bool)

(assert (= bs!1267333 (and b!5491552 b!5491450)))

(assert (=> bs!1267333 (= (and (= (reg!15786 (regTwo!31427 (regOne!31427 r!7292))) (reg!15786 (regOne!31427 (regTwo!31427 r!7292)))) (= (regTwo!31427 (regOne!31427 r!7292)) (regOne!31427 (regTwo!31427 r!7292)))) (= lambda!294069 lambda!294067))))

(declare-fun bs!1267334 () Bool)

(assert (= bs!1267334 (and b!5491552 b!5491459)))

(assert (=> bs!1267334 (not (= lambda!294069 lambda!294068))))

(declare-fun bs!1267335 () Bool)

(assert (= bs!1267335 (and b!5491552 b!5490781)))

(assert (=> bs!1267335 (not (= lambda!294069 lambda!294039))))

(declare-fun bs!1267336 () Bool)

(assert (= bs!1267336 (and b!5491552 b!5490984)))

(assert (=> bs!1267336 (= (and (= (reg!15786 (regTwo!31427 (regOne!31427 r!7292))) (reg!15786 (regOne!31427 r!7292))) (= (regTwo!31427 (regOne!31427 r!7292)) (regOne!31427 r!7292))) (= lambda!294069 lambda!294051))))

(assert (=> b!5491552 true))

(assert (=> b!5491552 true))

(declare-fun bs!1267337 () Bool)

(declare-fun b!5491561 () Bool)

(assert (= bs!1267337 (and b!5491561 b!5490850)))

(declare-fun lambda!294070 () Int)

(assert (=> bs!1267337 (= (and (= (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))) (regOne!31426 (regTwo!31427 r!7292))) (= (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))) (regTwo!31426 (regTwo!31427 r!7292)))) (= lambda!294070 lambda!294041))))

(declare-fun bs!1267338 () Bool)

(assert (= bs!1267338 (and b!5491561 b!5490841)))

(assert (=> bs!1267338 (not (= lambda!294070 lambda!294040))))

(declare-fun bs!1267339 () Bool)

(assert (= bs!1267339 (and b!5491561 b!5490993)))

(assert (=> bs!1267339 (= (and (= (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))) (regOne!31426 (regOne!31427 r!7292))) (= (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))) (regTwo!31426 (regOne!31427 r!7292)))) (= lambda!294070 lambda!294052))))

(declare-fun bs!1267340 () Bool)

(assert (= bs!1267340 (and b!5491561 b!5490772)))

(assert (=> bs!1267340 (not (= lambda!294070 lambda!294038))))

(declare-fun bs!1267341 () Bool)

(assert (= bs!1267341 (and b!5491561 b!5491450)))

(assert (=> bs!1267341 (not (= lambda!294070 lambda!294067))))

(declare-fun bs!1267342 () Bool)

(assert (= bs!1267342 (and b!5491561 b!5491552)))

(assert (=> bs!1267342 (not (= lambda!294070 lambda!294069))))

(declare-fun bs!1267343 () Bool)

(assert (= bs!1267343 (and b!5491561 b!5491459)))

(assert (=> bs!1267343 (= (and (= (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292)))) (= (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) (= lambda!294070 lambda!294068))))

(declare-fun bs!1267344 () Bool)

(assert (= bs!1267344 (and b!5491561 b!5490781)))

(assert (=> bs!1267344 (= (and (= (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))) (regOne!31426 r!7292)) (= (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))) (regTwo!31426 r!7292))) (= lambda!294070 lambda!294039))))

(declare-fun bs!1267345 () Bool)

(assert (= bs!1267345 (and b!5491561 b!5490984)))

(assert (=> bs!1267345 (not (= lambda!294070 lambda!294051))))

(assert (=> b!5491561 true))

(assert (=> b!5491561 true))

(declare-fun e!3397831 () Bool)

(declare-fun call!404903 () Bool)

(assert (=> b!5491552 (= e!3397831 call!404903)))

(declare-fun b!5491553 () Bool)

(declare-fun e!3397830 () Bool)

(assert (=> b!5491553 (= e!3397830 (= s!2326 (Cons!62548 (c!958671 (regTwo!31427 (regOne!31427 r!7292))) Nil!62548)))))

(declare-fun b!5491554 () Bool)

(declare-fun e!3397834 () Bool)

(declare-fun e!3397832 () Bool)

(assert (=> b!5491554 (= e!3397834 e!3397832)))

(declare-fun c!958891 () Bool)

(assert (=> b!5491554 (= c!958891 ((_ is Star!15457) (regTwo!31427 (regOne!31427 r!7292))))))

(declare-fun b!5491555 () Bool)

(declare-fun c!958890 () Bool)

(assert (=> b!5491555 (= c!958890 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 r!7292))))))

(declare-fun e!3397833 () Bool)

(assert (=> b!5491555 (= e!3397833 e!3397830)))

(declare-fun b!5491556 () Bool)

(declare-fun e!3397836 () Bool)

(assert (=> b!5491556 (= e!3397834 e!3397836)))

(declare-fun res!2342135 () Bool)

(assert (=> b!5491556 (= res!2342135 (matchRSpec!2560 (regOne!31427 (regTwo!31427 (regOne!31427 r!7292))) s!2326))))

(assert (=> b!5491556 (=> res!2342135 e!3397836)))

(declare-fun bm!404898 () Bool)

(declare-fun call!404904 () Bool)

(assert (=> bm!404898 (= call!404904 (isEmpty!34349 s!2326))))

(declare-fun bm!404899 () Bool)

(assert (=> bm!404899 (= call!404903 (Exists!2567 (ite c!958891 lambda!294069 lambda!294070)))))

(declare-fun b!5491558 () Bool)

(assert (=> b!5491558 (= e!3397836 (matchRSpec!2560 (regTwo!31427 (regTwo!31427 (regOne!31427 r!7292))) s!2326))))

(declare-fun b!5491559 () Bool)

(declare-fun e!3397835 () Bool)

(assert (=> b!5491559 (= e!3397835 call!404904)))

(declare-fun b!5491560 () Bool)

(declare-fun res!2342136 () Bool)

(assert (=> b!5491560 (=> res!2342136 e!3397831)))

(assert (=> b!5491560 (= res!2342136 call!404904)))

(assert (=> b!5491560 (= e!3397832 e!3397831)))

(assert (=> b!5491561 (= e!3397832 call!404903)))

(declare-fun b!5491562 () Bool)

(declare-fun c!958892 () Bool)

(assert (=> b!5491562 (= c!958892 ((_ is Union!15457) (regTwo!31427 (regOne!31427 r!7292))))))

(assert (=> b!5491562 (= e!3397830 e!3397834)))

(declare-fun d!1741956 () Bool)

(declare-fun c!958893 () Bool)

(assert (=> d!1741956 (= c!958893 ((_ is EmptyExpr!15457) (regTwo!31427 (regOne!31427 r!7292))))))

(assert (=> d!1741956 (= (matchRSpec!2560 (regTwo!31427 (regOne!31427 r!7292)) s!2326) e!3397835)))

(declare-fun b!5491557 () Bool)

(assert (=> b!5491557 (= e!3397835 e!3397833)))

(declare-fun res!2342137 () Bool)

(assert (=> b!5491557 (= res!2342137 (not ((_ is EmptyLang!15457) (regTwo!31427 (regOne!31427 r!7292)))))))

(assert (=> b!5491557 (=> (not res!2342137) (not e!3397833))))

(assert (= (and d!1741956 c!958893) b!5491559))

(assert (= (and d!1741956 (not c!958893)) b!5491557))

(assert (= (and b!5491557 res!2342137) b!5491555))

(assert (= (and b!5491555 c!958890) b!5491553))

(assert (= (and b!5491555 (not c!958890)) b!5491562))

(assert (= (and b!5491562 c!958892) b!5491556))

(assert (= (and b!5491562 (not c!958892)) b!5491554))

(assert (= (and b!5491556 (not res!2342135)) b!5491558))

(assert (= (and b!5491554 c!958891) b!5491560))

(assert (= (and b!5491554 (not c!958891)) b!5491561))

(assert (= (and b!5491560 (not res!2342136)) b!5491552))

(assert (= (or b!5491552 b!5491561) bm!404899))

(assert (= (or b!5491559 b!5491560) bm!404898))

(declare-fun m!6504156 () Bool)

(assert (=> b!5491556 m!6504156))

(assert (=> bm!404898 m!6503728))

(declare-fun m!6504158 () Bool)

(assert (=> bm!404899 m!6504158))

(declare-fun m!6504160 () Bool)

(assert (=> b!5491558 m!6504160))

(assert (=> b!5490990 d!1741956))

(declare-fun d!1741958 () Bool)

(declare-fun c!958894 () Bool)

(assert (=> d!1741958 (= c!958894 ((_ is Nil!62547) res!2342016))))

(declare-fun e!3397837 () (InoxSet Context!9682))

(assert (=> d!1741958 (= (content!11229 res!2342016) e!3397837)))

(declare-fun b!5491563 () Bool)

(assert (=> b!5491563 (= e!3397837 ((as const (Array Context!9682 Bool)) false))))

(declare-fun b!5491564 () Bool)

(assert (=> b!5491564 (= e!3397837 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) (h!68995 res!2342016) true) (content!11229 (t!375902 res!2342016))))))

(assert (= (and d!1741958 c!958894) b!5491563))

(assert (= (and d!1741958 (not c!958894)) b!5491564))

(declare-fun m!6504162 () Bool)

(assert (=> b!5491564 m!6504162))

(declare-fun m!6504164 () Bool)

(assert (=> b!5491564 m!6504164))

(assert (=> b!5491059 d!1741958))

(assert (=> d!1741780 d!1741826))

(declare-fun bm!404900 () Bool)

(declare-fun call!404907 () Bool)

(declare-fun call!404905 () Bool)

(assert (=> bm!404900 (= call!404907 call!404905)))

(declare-fun b!5491565 () Bool)

(declare-fun res!2342141 () Bool)

(declare-fun e!3397840 () Bool)

(assert (=> b!5491565 (=> res!2342141 e!3397840)))

(assert (=> b!5491565 (= res!2342141 (not ((_ is Concat!24302) (derivativeStep!4341 r!7292 (head!11756 s!2326)))))))

(declare-fun e!3397838 () Bool)

(assert (=> b!5491565 (= e!3397838 e!3397840)))

(declare-fun b!5491566 () Bool)

(declare-fun e!3397841 () Bool)

(declare-fun call!404906 () Bool)

(assert (=> b!5491566 (= e!3397841 call!404906)))

(declare-fun b!5491567 () Bool)

(declare-fun e!3397842 () Bool)

(assert (=> b!5491567 (= e!3397842 call!404906)))

(declare-fun b!5491568 () Bool)

(declare-fun res!2342142 () Bool)

(assert (=> b!5491568 (=> (not res!2342142) (not e!3397841))))

(assert (=> b!5491568 (= res!2342142 call!404907)))

(assert (=> b!5491568 (= e!3397838 e!3397841)))

(declare-fun b!5491569 () Bool)

(declare-fun e!3397844 () Bool)

(assert (=> b!5491569 (= e!3397844 call!404905)))

(declare-fun d!1741960 () Bool)

(declare-fun res!2342139 () Bool)

(declare-fun e!3397839 () Bool)

(assert (=> d!1741960 (=> res!2342139 e!3397839)))

(assert (=> d!1741960 (= res!2342139 ((_ is ElementMatch!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(assert (=> d!1741960 (= (validRegex!7193 (derivativeStep!4341 r!7292 (head!11756 s!2326))) e!3397839)))

(declare-fun b!5491570 () Bool)

(declare-fun e!3397843 () Bool)

(assert (=> b!5491570 (= e!3397843 e!3397844)))

(declare-fun res!2342140 () Bool)

(assert (=> b!5491570 (= res!2342140 (not (nullable!5500 (reg!15786 (derivativeStep!4341 r!7292 (head!11756 s!2326))))))))

(assert (=> b!5491570 (=> (not res!2342140) (not e!3397844))))

(declare-fun b!5491571 () Bool)

(assert (=> b!5491571 (= e!3397840 e!3397842)))

(declare-fun res!2342138 () Bool)

(assert (=> b!5491571 (=> (not res!2342138) (not e!3397842))))

(assert (=> b!5491571 (= res!2342138 call!404907)))

(declare-fun b!5491572 () Bool)

(assert (=> b!5491572 (= e!3397843 e!3397838)))

(declare-fun c!958895 () Bool)

(assert (=> b!5491572 (= c!958895 ((_ is Union!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun b!5491573 () Bool)

(assert (=> b!5491573 (= e!3397839 e!3397843)))

(declare-fun c!958896 () Bool)

(assert (=> b!5491573 (= c!958896 ((_ is Star!15457) (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun bm!404901 () Bool)

(assert (=> bm!404901 (= call!404906 (validRegex!7193 (ite c!958895 (regTwo!31427 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (regTwo!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326))))))))

(declare-fun bm!404902 () Bool)

(assert (=> bm!404902 (= call!404905 (validRegex!7193 (ite c!958896 (reg!15786 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (ite c!958895 (regOne!31427 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (regOne!31426 (derivativeStep!4341 r!7292 (head!11756 s!2326)))))))))

(assert (= (and d!1741960 (not res!2342139)) b!5491573))

(assert (= (and b!5491573 c!958896) b!5491570))

(assert (= (and b!5491573 (not c!958896)) b!5491572))

(assert (= (and b!5491570 res!2342140) b!5491569))

(assert (= (and b!5491572 c!958895) b!5491568))

(assert (= (and b!5491572 (not c!958895)) b!5491565))

(assert (= (and b!5491568 res!2342142) b!5491566))

(assert (= (and b!5491565 (not res!2342141)) b!5491571))

(assert (= (and b!5491571 res!2342138) b!5491567))

(assert (= (or b!5491566 b!5491567) bm!404901))

(assert (= (or b!5491568 b!5491571) bm!404900))

(assert (= (or b!5491569 bm!404900) bm!404902))

(declare-fun m!6504166 () Bool)

(assert (=> b!5491570 m!6504166))

(declare-fun m!6504168 () Bool)

(assert (=> bm!404901 m!6504168))

(declare-fun m!6504170 () Bool)

(assert (=> bm!404902 m!6504170))

(assert (=> d!1741780 d!1741960))

(declare-fun d!1741962 () Bool)

(assert (=> d!1741962 (= (nullable!5500 (reg!15786 lt!2242431)) (nullableFct!1642 (reg!15786 lt!2242431)))))

(declare-fun bs!1267346 () Bool)

(assert (= bs!1267346 d!1741962))

(declare-fun m!6504172 () Bool)

(assert (=> bs!1267346 m!6504172))

(assert (=> b!5490857 d!1741962))

(declare-fun bm!404903 () Bool)

(declare-fun call!404910 () Bool)

(declare-fun call!404908 () Bool)

(assert (=> bm!404903 (= call!404910 call!404908)))

(declare-fun b!5491574 () Bool)

(declare-fun res!2342146 () Bool)

(declare-fun e!3397847 () Bool)

(assert (=> b!5491574 (=> res!2342146 e!3397847)))

(assert (=> b!5491574 (= res!2342146 (not ((_ is Concat!24302) lt!2242457)))))

(declare-fun e!3397845 () Bool)

(assert (=> b!5491574 (= e!3397845 e!3397847)))

(declare-fun b!5491575 () Bool)

(declare-fun e!3397848 () Bool)

(declare-fun call!404909 () Bool)

(assert (=> b!5491575 (= e!3397848 call!404909)))

(declare-fun b!5491576 () Bool)

(declare-fun e!3397849 () Bool)

(assert (=> b!5491576 (= e!3397849 call!404909)))

(declare-fun b!5491577 () Bool)

(declare-fun res!2342147 () Bool)

(assert (=> b!5491577 (=> (not res!2342147) (not e!3397848))))

(assert (=> b!5491577 (= res!2342147 call!404910)))

(assert (=> b!5491577 (= e!3397845 e!3397848)))

(declare-fun b!5491578 () Bool)

(declare-fun e!3397851 () Bool)

(assert (=> b!5491578 (= e!3397851 call!404908)))

(declare-fun d!1741964 () Bool)

(declare-fun res!2342144 () Bool)

(declare-fun e!3397846 () Bool)

(assert (=> d!1741964 (=> res!2342144 e!3397846)))

(assert (=> d!1741964 (= res!2342144 ((_ is ElementMatch!15457) lt!2242457))))

(assert (=> d!1741964 (= (validRegex!7193 lt!2242457) e!3397846)))

(declare-fun b!5491579 () Bool)

(declare-fun e!3397850 () Bool)

(assert (=> b!5491579 (= e!3397850 e!3397851)))

(declare-fun res!2342145 () Bool)

(assert (=> b!5491579 (= res!2342145 (not (nullable!5500 (reg!15786 lt!2242457))))))

(assert (=> b!5491579 (=> (not res!2342145) (not e!3397851))))

(declare-fun b!5491580 () Bool)

(assert (=> b!5491580 (= e!3397847 e!3397849)))

(declare-fun res!2342143 () Bool)

(assert (=> b!5491580 (=> (not res!2342143) (not e!3397849))))

(assert (=> b!5491580 (= res!2342143 call!404910)))

(declare-fun b!5491581 () Bool)

(assert (=> b!5491581 (= e!3397850 e!3397845)))

(declare-fun c!958897 () Bool)

(assert (=> b!5491581 (= c!958897 ((_ is Union!15457) lt!2242457))))

(declare-fun b!5491582 () Bool)

(assert (=> b!5491582 (= e!3397846 e!3397850)))

(declare-fun c!958898 () Bool)

(assert (=> b!5491582 (= c!958898 ((_ is Star!15457) lt!2242457))))

(declare-fun bm!404904 () Bool)

(assert (=> bm!404904 (= call!404909 (validRegex!7193 (ite c!958897 (regTwo!31427 lt!2242457) (regTwo!31426 lt!2242457))))))

(declare-fun bm!404905 () Bool)

(assert (=> bm!404905 (= call!404908 (validRegex!7193 (ite c!958898 (reg!15786 lt!2242457) (ite c!958897 (regOne!31427 lt!2242457) (regOne!31426 lt!2242457)))))))

(assert (= (and d!1741964 (not res!2342144)) b!5491582))

(assert (= (and b!5491582 c!958898) b!5491579))

(assert (= (and b!5491582 (not c!958898)) b!5491581))

(assert (= (and b!5491579 res!2342145) b!5491578))

(assert (= (and b!5491581 c!958897) b!5491577))

(assert (= (and b!5491581 (not c!958897)) b!5491574))

(assert (= (and b!5491577 res!2342147) b!5491575))

(assert (= (and b!5491574 (not res!2342146)) b!5491580))

(assert (= (and b!5491580 res!2342143) b!5491576))

(assert (= (or b!5491575 b!5491576) bm!404904))

(assert (= (or b!5491577 b!5491580) bm!404903))

(assert (= (or b!5491578 bm!404903) bm!404905))

(declare-fun m!6504174 () Bool)

(assert (=> b!5491579 m!6504174))

(declare-fun m!6504176 () Bool)

(assert (=> bm!404904 m!6504176))

(declare-fun m!6504178 () Bool)

(assert (=> bm!404905 m!6504178))

(assert (=> d!1741794 d!1741964))

(declare-fun d!1741966 () Bool)

(declare-fun res!2342148 () Bool)

(declare-fun e!3397852 () Bool)

(assert (=> d!1741966 (=> res!2342148 e!3397852)))

(assert (=> d!1741966 (= res!2342148 ((_ is Nil!62546) (unfocusZipperList!884 zl!343)))))

(assert (=> d!1741966 (= (forall!14650 (unfocusZipperList!884 zl!343) lambda!294046) e!3397852)))

(declare-fun b!5491583 () Bool)

(declare-fun e!3397853 () Bool)

(assert (=> b!5491583 (= e!3397852 e!3397853)))

(declare-fun res!2342149 () Bool)

(assert (=> b!5491583 (=> (not res!2342149) (not e!3397853))))

(assert (=> b!5491583 (= res!2342149 (dynLambda!24455 lambda!294046 (h!68994 (unfocusZipperList!884 zl!343))))))

(declare-fun b!5491584 () Bool)

(assert (=> b!5491584 (= e!3397853 (forall!14650 (t!375901 (unfocusZipperList!884 zl!343)) lambda!294046))))

(assert (= (and d!1741966 (not res!2342148)) b!5491583))

(assert (= (and b!5491583 res!2342149) b!5491584))

(declare-fun b_lambda!208417 () Bool)

(assert (=> (not b_lambda!208417) (not b!5491583)))

(declare-fun m!6504180 () Bool)

(assert (=> b!5491583 m!6504180))

(declare-fun m!6504182 () Bool)

(assert (=> b!5491584 m!6504182))

(assert (=> d!1741794 d!1741966))

(declare-fun bs!1267347 () Bool)

(declare-fun d!1741968 () Bool)

(assert (= bs!1267347 (and d!1741968 d!1741766)))

(declare-fun lambda!294071 () Int)

(assert (=> bs!1267347 (= lambda!294071 lambda!294042)))

(declare-fun bs!1267348 () Bool)

(assert (= bs!1267348 (and d!1741968 d!1741728)))

(assert (=> bs!1267348 (= lambda!294071 lambda!294026)))

(declare-fun bs!1267349 () Bool)

(assert (= bs!1267349 (and d!1741968 d!1741726)))

(assert (=> bs!1267349 (= lambda!294071 lambda!294022)))

(declare-fun bs!1267350 () Bool)

(assert (= bs!1267350 (and d!1741968 d!1741720)))

(assert (=> bs!1267350 (= lambda!294071 lambda!294021)))

(declare-fun bs!1267351 () Bool)

(assert (= bs!1267351 (and d!1741968 d!1741904)))

(assert (=> bs!1267351 (= lambda!294071 lambda!294066)))

(declare-fun bs!1267352 () Bool)

(assert (= bs!1267352 (and d!1741968 d!1741796)))

(assert (=> bs!1267352 (= lambda!294071 lambda!294050)))

(declare-fun bs!1267353 () Bool)

(assert (= bs!1267353 (and d!1741968 d!1741794)))

(assert (=> bs!1267353 (= lambda!294071 lambda!294046)))

(declare-fun bs!1267354 () Bool)

(assert (= bs!1267354 (and d!1741968 d!1741818)))

(assert (=> bs!1267354 (= lambda!294071 lambda!294053)))

(declare-fun bs!1267355 () Bool)

(assert (= bs!1267355 (and d!1741968 d!1741788)))

(assert (=> bs!1267355 (= lambda!294071 lambda!294043)))

(assert (=> d!1741968 (= (inv!81889 (h!68995 (t!375902 (t!375902 zl!343)))) (forall!14650 (exprs!5341 (h!68995 (t!375902 (t!375902 zl!343)))) lambda!294071))))

(declare-fun bs!1267356 () Bool)

(assert (= bs!1267356 d!1741968))

(declare-fun m!6504184 () Bool)

(assert (=> bs!1267356 m!6504184))

(assert (=> b!5491068 d!1741968))

(declare-fun d!1741970 () Bool)

(declare-fun res!2342150 () Bool)

(declare-fun e!3397854 () Bool)

(assert (=> d!1741970 (=> res!2342150 e!3397854)))

(assert (=> d!1741970 (= res!2342150 ((_ is Nil!62547) res!2342016))))

(assert (=> d!1741970 (= (noDuplicate!1467 res!2342016) e!3397854)))

(declare-fun b!5491585 () Bool)

(declare-fun e!3397855 () Bool)

(assert (=> b!5491585 (= e!3397854 e!3397855)))

(declare-fun res!2342151 () Bool)

(assert (=> b!5491585 (=> (not res!2342151) (not e!3397855))))

(assert (=> b!5491585 (= res!2342151 (not (contains!19764 (t!375902 res!2342016) (h!68995 res!2342016))))))

(declare-fun b!5491586 () Bool)

(assert (=> b!5491586 (= e!3397855 (noDuplicate!1467 (t!375902 res!2342016)))))

(assert (= (and d!1741970 (not res!2342150)) b!5491585))

(assert (= (and b!5491585 res!2342151) b!5491586))

(declare-fun m!6504186 () Bool)

(assert (=> b!5491585 m!6504186))

(declare-fun m!6504188 () Bool)

(assert (=> b!5491586 m!6504188))

(assert (=> d!1741846 d!1741970))

(assert (=> bm!404813 d!1741768))

(declare-fun bs!1267357 () Bool)

(declare-fun d!1741972 () Bool)

(assert (= bs!1267357 (and d!1741972 d!1741766)))

(declare-fun lambda!294072 () Int)

(assert (=> bs!1267357 (= lambda!294072 lambda!294042)))

(declare-fun bs!1267358 () Bool)

(assert (= bs!1267358 (and d!1741972 d!1741728)))

(assert (=> bs!1267358 (= lambda!294072 lambda!294026)))

(declare-fun bs!1267359 () Bool)

(assert (= bs!1267359 (and d!1741972 d!1741726)))

(assert (=> bs!1267359 (= lambda!294072 lambda!294022)))

(declare-fun bs!1267360 () Bool)

(assert (= bs!1267360 (and d!1741972 d!1741968)))

(assert (=> bs!1267360 (= lambda!294072 lambda!294071)))

(declare-fun bs!1267361 () Bool)

(assert (= bs!1267361 (and d!1741972 d!1741720)))

(assert (=> bs!1267361 (= lambda!294072 lambda!294021)))

(declare-fun bs!1267362 () Bool)

(assert (= bs!1267362 (and d!1741972 d!1741904)))

(assert (=> bs!1267362 (= lambda!294072 lambda!294066)))

(declare-fun bs!1267363 () Bool)

(assert (= bs!1267363 (and d!1741972 d!1741796)))

(assert (=> bs!1267363 (= lambda!294072 lambda!294050)))

(declare-fun bs!1267364 () Bool)

(assert (= bs!1267364 (and d!1741972 d!1741794)))

(assert (=> bs!1267364 (= lambda!294072 lambda!294046)))

(declare-fun bs!1267365 () Bool)

(assert (= bs!1267365 (and d!1741972 d!1741818)))

(assert (=> bs!1267365 (= lambda!294072 lambda!294053)))

(declare-fun bs!1267366 () Bool)

(assert (= bs!1267366 (and d!1741972 d!1741788)))

(assert (=> bs!1267366 (= lambda!294072 lambda!294043)))

(assert (=> d!1741972 (= (inv!81889 (h!68995 res!2342016)) (forall!14650 (exprs!5341 (h!68995 res!2342016)) lambda!294072))))

(declare-fun bs!1267367 () Bool)

(assert (= bs!1267367 d!1741972))

(declare-fun m!6504190 () Bool)

(assert (=> bs!1267367 m!6504190))

(assert (=> b!5491057 d!1741972))

(declare-fun bm!404906 () Bool)

(declare-fun call!404913 () Bool)

(declare-fun call!404911 () Bool)

(assert (=> bm!404906 (= call!404913 call!404911)))

(declare-fun b!5491587 () Bool)

(declare-fun res!2342155 () Bool)

(declare-fun e!3397858 () Bool)

(assert (=> b!5491587 (=> res!2342155 e!3397858)))

(assert (=> b!5491587 (= res!2342155 (not ((_ is Concat!24302) (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))))

(declare-fun e!3397856 () Bool)

(assert (=> b!5491587 (= e!3397856 e!3397858)))

(declare-fun b!5491588 () Bool)

(declare-fun e!3397859 () Bool)

(declare-fun call!404912 () Bool)

(assert (=> b!5491588 (= e!3397859 call!404912)))

(declare-fun b!5491589 () Bool)

(declare-fun e!3397860 () Bool)

(assert (=> b!5491589 (= e!3397860 call!404912)))

(declare-fun b!5491590 () Bool)

(declare-fun res!2342156 () Bool)

(assert (=> b!5491590 (=> (not res!2342156) (not e!3397859))))

(assert (=> b!5491590 (= res!2342156 call!404913)))

(assert (=> b!5491590 (= e!3397856 e!3397859)))

(declare-fun b!5491591 () Bool)

(declare-fun e!3397862 () Bool)

(assert (=> b!5491591 (= e!3397862 call!404911)))

(declare-fun d!1741974 () Bool)

(declare-fun res!2342153 () Bool)

(declare-fun e!3397857 () Bool)

(assert (=> d!1741974 (=> res!2342153 e!3397857)))

(assert (=> d!1741974 (= res!2342153 ((_ is ElementMatch!15457) (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))

(assert (=> d!1741974 (= (validRegex!7193 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))) e!3397857)))

(declare-fun b!5491592 () Bool)

(declare-fun e!3397861 () Bool)

(assert (=> b!5491592 (= e!3397861 e!3397862)))

(declare-fun res!2342154 () Bool)

(assert (=> b!5491592 (= res!2342154 (not (nullable!5500 (reg!15786 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))))

(assert (=> b!5491592 (=> (not res!2342154) (not e!3397862))))

(declare-fun b!5491593 () Bool)

(assert (=> b!5491593 (= e!3397858 e!3397860)))

(declare-fun res!2342152 () Bool)

(assert (=> b!5491593 (=> (not res!2342152) (not e!3397860))))

(assert (=> b!5491593 (= res!2342152 call!404913)))

(declare-fun b!5491594 () Bool)

(assert (=> b!5491594 (= e!3397861 e!3397856)))

(declare-fun c!958899 () Bool)

(assert (=> b!5491594 (= c!958899 ((_ is Union!15457) (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))

(declare-fun b!5491595 () Bool)

(assert (=> b!5491595 (= e!3397857 e!3397861)))

(declare-fun c!958900 () Bool)

(assert (=> b!5491595 (= c!958900 ((_ is Star!15457) (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))

(declare-fun bm!404907 () Bool)

(assert (=> bm!404907 (= call!404912 (validRegex!7193 (ite c!958899 (regTwo!31427 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))) (regTwo!31426 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))))

(declare-fun bm!404908 () Bool)

(assert (=> bm!404908 (= call!404911 (validRegex!7193 (ite c!958900 (reg!15786 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))) (ite c!958899 (regOne!31427 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))) (regOne!31426 (ite c!958816 (reg!15786 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (ite c!958815 (regOne!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regOne!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))))))

(assert (= (and d!1741974 (not res!2342153)) b!5491595))

(assert (= (and b!5491595 c!958900) b!5491592))

(assert (= (and b!5491595 (not c!958900)) b!5491594))

(assert (= (and b!5491592 res!2342154) b!5491591))

(assert (= (and b!5491594 c!958899) b!5491590))

(assert (= (and b!5491594 (not c!958899)) b!5491587))

(assert (= (and b!5491590 res!2342156) b!5491588))

(assert (= (and b!5491587 (not res!2342155)) b!5491593))

(assert (= (and b!5491593 res!2342152) b!5491589))

(assert (= (or b!5491588 b!5491589) bm!404907))

(assert (= (or b!5491590 b!5491593) bm!404906))

(assert (= (or b!5491591 bm!404906) bm!404908))

(declare-fun m!6504192 () Bool)

(assert (=> b!5491592 m!6504192))

(declare-fun m!6504194 () Bool)

(assert (=> bm!404907 m!6504194))

(declare-fun m!6504196 () Bool)

(assert (=> bm!404908 m!6504196))

(assert (=> bm!404843 d!1741974))

(declare-fun d!1741976 () Bool)

(assert (=> d!1741976 (= (isEmpty!34347 (tail!10849 (t!375901 (exprs!5341 (h!68995 zl!343))))) ((_ is Nil!62546) (tail!10849 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(assert (=> b!5490928 d!1741976))

(declare-fun d!1741978 () Bool)

(assert (=> d!1741978 (= (tail!10849 (t!375901 (exprs!5341 (h!68995 zl!343)))) (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> b!5490928 d!1741978))

(declare-fun bm!404909 () Bool)

(declare-fun call!404916 () Bool)

(declare-fun call!404914 () Bool)

(assert (=> bm!404909 (= call!404916 call!404914)))

(declare-fun b!5491596 () Bool)

(declare-fun res!2342160 () Bool)

(declare-fun e!3397865 () Bool)

(assert (=> b!5491596 (=> res!2342160 e!3397865)))

(assert (=> b!5491596 (= res!2342160 (not ((_ is Concat!24302) (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))

(declare-fun e!3397863 () Bool)

(assert (=> b!5491596 (= e!3397863 e!3397865)))

(declare-fun b!5491597 () Bool)

(declare-fun e!3397866 () Bool)

(declare-fun call!404915 () Bool)

(assert (=> b!5491597 (= e!3397866 call!404915)))

(declare-fun b!5491598 () Bool)

(declare-fun e!3397867 () Bool)

(assert (=> b!5491598 (= e!3397867 call!404915)))

(declare-fun b!5491599 () Bool)

(declare-fun res!2342161 () Bool)

(assert (=> b!5491599 (=> (not res!2342161) (not e!3397866))))

(assert (=> b!5491599 (= res!2342161 call!404916)))

(assert (=> b!5491599 (= e!3397863 e!3397866)))

(declare-fun b!5491600 () Bool)

(declare-fun e!3397869 () Bool)

(assert (=> b!5491600 (= e!3397869 call!404914)))

(declare-fun d!1741980 () Bool)

(declare-fun res!2342158 () Bool)

(declare-fun e!3397864 () Bool)

(assert (=> d!1741980 (=> res!2342158 e!3397864)))

(assert (=> d!1741980 (= res!2342158 ((_ is ElementMatch!15457) (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))

(assert (=> d!1741980 (= (validRegex!7193 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))) e!3397864)))

(declare-fun b!5491601 () Bool)

(declare-fun e!3397868 () Bool)

(assert (=> b!5491601 (= e!3397868 e!3397869)))

(declare-fun res!2342159 () Bool)

(assert (=> b!5491601 (= res!2342159 (not (nullable!5500 (reg!15786 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))))

(assert (=> b!5491601 (=> (not res!2342159) (not e!3397869))))

(declare-fun b!5491602 () Bool)

(assert (=> b!5491602 (= e!3397865 e!3397867)))

(declare-fun res!2342157 () Bool)

(assert (=> b!5491602 (=> (not res!2342157) (not e!3397867))))

(assert (=> b!5491602 (= res!2342157 call!404916)))

(declare-fun b!5491603 () Bool)

(assert (=> b!5491603 (= e!3397868 e!3397863)))

(declare-fun c!958901 () Bool)

(assert (=> b!5491603 (= c!958901 ((_ is Union!15457) (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))

(declare-fun b!5491604 () Bool)

(assert (=> b!5491604 (= e!3397864 e!3397868)))

(declare-fun c!958902 () Bool)

(assert (=> b!5491604 (= c!958902 ((_ is Star!15457) (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))

(declare-fun bm!404910 () Bool)

(assert (=> bm!404910 (= call!404915 (validRegex!7193 (ite c!958901 (regTwo!31427 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))) (regTwo!31426 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))))))))

(declare-fun bm!404911 () Bool)

(assert (=> bm!404911 (= call!404914 (validRegex!7193 (ite c!958902 (reg!15786 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))) (ite c!958901 (regOne!31427 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))))) (regOne!31426 (ite c!958813 (regTwo!31427 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292))) (regTwo!31426 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))))))

(assert (= (and d!1741980 (not res!2342158)) b!5491604))

(assert (= (and b!5491604 c!958902) b!5491601))

(assert (= (and b!5491604 (not c!958902)) b!5491603))

(assert (= (and b!5491601 res!2342159) b!5491600))

(assert (= (and b!5491603 c!958901) b!5491599))

(assert (= (and b!5491603 (not c!958901)) b!5491596))

(assert (= (and b!5491599 res!2342161) b!5491597))

(assert (= (and b!5491596 (not res!2342160)) b!5491602))

(assert (= (and b!5491602 res!2342157) b!5491598))

(assert (= (or b!5491597 b!5491598) bm!404910))

(assert (= (or b!5491599 b!5491602) bm!404909))

(assert (= (or b!5491600 bm!404909) bm!404911))

(declare-fun m!6504198 () Bool)

(assert (=> b!5491601 m!6504198))

(declare-fun m!6504200 () Bool)

(assert (=> bm!404910 m!6504200))

(declare-fun m!6504202 () Bool)

(assert (=> bm!404911 m!6504202))

(assert (=> bm!404839 d!1741980))

(assert (=> d!1741828 d!1741742))

(assert (=> d!1741828 d!1741744))

(declare-fun bs!1267368 () Bool)

(declare-fun d!1741982 () Bool)

(assert (= bs!1267368 (and d!1741982 d!1741766)))

(declare-fun lambda!294073 () Int)

(assert (=> bs!1267368 (= lambda!294073 lambda!294042)))

(declare-fun bs!1267369 () Bool)

(assert (= bs!1267369 (and d!1741982 d!1741728)))

(assert (=> bs!1267369 (= lambda!294073 lambda!294026)))

(declare-fun bs!1267370 () Bool)

(assert (= bs!1267370 (and d!1741982 d!1741726)))

(assert (=> bs!1267370 (= lambda!294073 lambda!294022)))

(declare-fun bs!1267371 () Bool)

(assert (= bs!1267371 (and d!1741982 d!1741968)))

(assert (=> bs!1267371 (= lambda!294073 lambda!294071)))

(declare-fun bs!1267372 () Bool)

(assert (= bs!1267372 (and d!1741982 d!1741720)))

(assert (=> bs!1267372 (= lambda!294073 lambda!294021)))

(declare-fun bs!1267373 () Bool)

(assert (= bs!1267373 (and d!1741982 d!1741904)))

(assert (=> bs!1267373 (= lambda!294073 lambda!294066)))

(declare-fun bs!1267374 () Bool)

(assert (= bs!1267374 (and d!1741982 d!1741796)))

(assert (=> bs!1267374 (= lambda!294073 lambda!294050)))

(declare-fun bs!1267375 () Bool)

(assert (= bs!1267375 (and d!1741982 d!1741794)))

(assert (=> bs!1267375 (= lambda!294073 lambda!294046)))

(declare-fun bs!1267376 () Bool)

(assert (= bs!1267376 (and d!1741982 d!1741972)))

(assert (=> bs!1267376 (= lambda!294073 lambda!294072)))

(declare-fun bs!1267377 () Bool)

(assert (= bs!1267377 (and d!1741982 d!1741818)))

(assert (=> bs!1267377 (= lambda!294073 lambda!294053)))

(declare-fun bs!1267378 () Bool)

(assert (= bs!1267378 (and d!1741982 d!1741788)))

(assert (=> bs!1267378 (= lambda!294073 lambda!294043)))

(assert (=> d!1741982 (= (inv!81889 setElem!36346) (forall!14650 (exprs!5341 setElem!36346) lambda!294073))))

(declare-fun bs!1267379 () Bool)

(assert (= bs!1267379 d!1741982))

(declare-fun m!6504204 () Bool)

(assert (=> bs!1267379 m!6504204))

(assert (=> setNonEmpty!36346 d!1741982))

(declare-fun d!1741984 () Bool)

(assert (=> d!1741984 (= (head!11754 (unfocusZipperList!884 zl!343)) (h!68994 (unfocusZipperList!884 zl!343)))))

(assert (=> b!5490963 d!1741984))

(declare-fun bm!404912 () Bool)

(declare-fun call!404919 () Bool)

(declare-fun call!404917 () Bool)

(assert (=> bm!404912 (= call!404919 call!404917)))

(declare-fun b!5491605 () Bool)

(declare-fun res!2342165 () Bool)

(declare-fun e!3397872 () Bool)

(assert (=> b!5491605 (=> res!2342165 e!3397872)))

(assert (=> b!5491605 (= res!2342165 (not ((_ is Concat!24302) lt!2242454)))))

(declare-fun e!3397870 () Bool)

(assert (=> b!5491605 (= e!3397870 e!3397872)))

(declare-fun b!5491606 () Bool)

(declare-fun e!3397873 () Bool)

(declare-fun call!404918 () Bool)

(assert (=> b!5491606 (= e!3397873 call!404918)))

(declare-fun b!5491607 () Bool)

(declare-fun e!3397874 () Bool)

(assert (=> b!5491607 (= e!3397874 call!404918)))

(declare-fun b!5491608 () Bool)

(declare-fun res!2342166 () Bool)

(assert (=> b!5491608 (=> (not res!2342166) (not e!3397873))))

(assert (=> b!5491608 (= res!2342166 call!404919)))

(assert (=> b!5491608 (= e!3397870 e!3397873)))

(declare-fun b!5491609 () Bool)

(declare-fun e!3397876 () Bool)

(assert (=> b!5491609 (= e!3397876 call!404917)))

(declare-fun d!1741986 () Bool)

(declare-fun res!2342163 () Bool)

(declare-fun e!3397871 () Bool)

(assert (=> d!1741986 (=> res!2342163 e!3397871)))

(assert (=> d!1741986 (= res!2342163 ((_ is ElementMatch!15457) lt!2242454))))

(assert (=> d!1741986 (= (validRegex!7193 lt!2242454) e!3397871)))

(declare-fun b!5491610 () Bool)

(declare-fun e!3397875 () Bool)

(assert (=> b!5491610 (= e!3397875 e!3397876)))

(declare-fun res!2342164 () Bool)

(assert (=> b!5491610 (= res!2342164 (not (nullable!5500 (reg!15786 lt!2242454))))))

(assert (=> b!5491610 (=> (not res!2342164) (not e!3397876))))

(declare-fun b!5491611 () Bool)

(assert (=> b!5491611 (= e!3397872 e!3397874)))

(declare-fun res!2342162 () Bool)

(assert (=> b!5491611 (=> (not res!2342162) (not e!3397874))))

(assert (=> b!5491611 (= res!2342162 call!404919)))

(declare-fun b!5491612 () Bool)

(assert (=> b!5491612 (= e!3397875 e!3397870)))

(declare-fun c!958903 () Bool)

(assert (=> b!5491612 (= c!958903 ((_ is Union!15457) lt!2242454))))

(declare-fun b!5491613 () Bool)

(assert (=> b!5491613 (= e!3397871 e!3397875)))

(declare-fun c!958904 () Bool)

(assert (=> b!5491613 (= c!958904 ((_ is Star!15457) lt!2242454))))

(declare-fun bm!404913 () Bool)

(assert (=> bm!404913 (= call!404918 (validRegex!7193 (ite c!958903 (regTwo!31427 lt!2242454) (regTwo!31426 lt!2242454))))))

(declare-fun bm!404914 () Bool)

(assert (=> bm!404914 (= call!404917 (validRegex!7193 (ite c!958904 (reg!15786 lt!2242454) (ite c!958903 (regOne!31427 lt!2242454) (regOne!31426 lt!2242454)))))))

(assert (= (and d!1741986 (not res!2342163)) b!5491613))

(assert (= (and b!5491613 c!958904) b!5491610))

(assert (= (and b!5491613 (not c!958904)) b!5491612))

(assert (= (and b!5491610 res!2342164) b!5491609))

(assert (= (and b!5491612 c!958903) b!5491608))

(assert (= (and b!5491612 (not c!958903)) b!5491605))

(assert (= (and b!5491608 res!2342166) b!5491606))

(assert (= (and b!5491605 (not res!2342165)) b!5491611))

(assert (= (and b!5491611 res!2342162) b!5491607))

(assert (= (or b!5491606 b!5491607) bm!404913))

(assert (= (or b!5491608 b!5491611) bm!404912))

(assert (= (or b!5491609 bm!404912) bm!404914))

(declare-fun m!6504206 () Bool)

(assert (=> b!5491610 m!6504206))

(declare-fun m!6504208 () Bool)

(assert (=> bm!404913 m!6504208))

(declare-fun m!6504210 () Bool)

(assert (=> bm!404914 m!6504210))

(assert (=> d!1741788 d!1741986))

(declare-fun d!1741988 () Bool)

(declare-fun res!2342167 () Bool)

(declare-fun e!3397877 () Bool)

(assert (=> d!1741988 (=> res!2342167 e!3397877)))

(assert (=> d!1741988 (= res!2342167 ((_ is Nil!62546) (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> d!1741988 (= (forall!14650 (t!375901 (exprs!5341 (h!68995 zl!343))) lambda!294043) e!3397877)))

(declare-fun b!5491614 () Bool)

(declare-fun e!3397878 () Bool)

(assert (=> b!5491614 (= e!3397877 e!3397878)))

(declare-fun res!2342168 () Bool)

(assert (=> b!5491614 (=> (not res!2342168) (not e!3397878))))

(assert (=> b!5491614 (= res!2342168 (dynLambda!24455 lambda!294043 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5491615 () Bool)

(assert (=> b!5491615 (= e!3397878 (forall!14650 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))) lambda!294043))))

(assert (= (and d!1741988 (not res!2342167)) b!5491614))

(assert (= (and b!5491614 res!2342168) b!5491615))

(declare-fun b_lambda!208419 () Bool)

(assert (=> (not b_lambda!208419) (not b!5491614)))

(declare-fun m!6504212 () Bool)

(assert (=> b!5491614 m!6504212))

(declare-fun m!6504214 () Bool)

(assert (=> b!5491615 m!6504214))

(assert (=> d!1741788 d!1741988))

(declare-fun bs!1267380 () Bool)

(declare-fun d!1741990 () Bool)

(assert (= bs!1267380 (and d!1741990 d!1741766)))

(declare-fun lambda!294074 () Int)

(assert (=> bs!1267380 (= lambda!294074 lambda!294042)))

(declare-fun bs!1267381 () Bool)

(assert (= bs!1267381 (and d!1741990 d!1741728)))

(assert (=> bs!1267381 (= lambda!294074 lambda!294026)))

(declare-fun bs!1267382 () Bool)

(assert (= bs!1267382 (and d!1741990 d!1741726)))

(assert (=> bs!1267382 (= lambda!294074 lambda!294022)))

(declare-fun bs!1267383 () Bool)

(assert (= bs!1267383 (and d!1741990 d!1741720)))

(assert (=> bs!1267383 (= lambda!294074 lambda!294021)))

(declare-fun bs!1267384 () Bool)

(assert (= bs!1267384 (and d!1741990 d!1741904)))

(assert (=> bs!1267384 (= lambda!294074 lambda!294066)))

(declare-fun bs!1267385 () Bool)

(assert (= bs!1267385 (and d!1741990 d!1741796)))

(assert (=> bs!1267385 (= lambda!294074 lambda!294050)))

(declare-fun bs!1267386 () Bool)

(assert (= bs!1267386 (and d!1741990 d!1741794)))

(assert (=> bs!1267386 (= lambda!294074 lambda!294046)))

(declare-fun bs!1267387 () Bool)

(assert (= bs!1267387 (and d!1741990 d!1741972)))

(assert (=> bs!1267387 (= lambda!294074 lambda!294072)))

(declare-fun bs!1267388 () Bool)

(assert (= bs!1267388 (and d!1741990 d!1741818)))

(assert (=> bs!1267388 (= lambda!294074 lambda!294053)))

(declare-fun bs!1267389 () Bool)

(assert (= bs!1267389 (and d!1741990 d!1741788)))

(assert (=> bs!1267389 (= lambda!294074 lambda!294043)))

(declare-fun bs!1267390 () Bool)

(assert (= bs!1267390 (and d!1741990 d!1741982)))

(assert (=> bs!1267390 (= lambda!294074 lambda!294073)))

(declare-fun bs!1267391 () Bool)

(assert (= bs!1267391 (and d!1741990 d!1741968)))

(assert (=> bs!1267391 (= lambda!294074 lambda!294071)))

(declare-fun e!3397882 () Bool)

(assert (=> d!1741990 e!3397882))

(declare-fun res!2342170 () Bool)

(assert (=> d!1741990 (=> (not res!2342170) (not e!3397882))))

(declare-fun lt!2242478 () Regex!15457)

(assert (=> d!1741990 (= res!2342170 (validRegex!7193 lt!2242478))))

(declare-fun e!3397881 () Regex!15457)

(assert (=> d!1741990 (= lt!2242478 e!3397881)))

(declare-fun c!958908 () Bool)

(declare-fun e!3397880 () Bool)

(assert (=> d!1741990 (= c!958908 e!3397880)))

(declare-fun res!2342169 () Bool)

(assert (=> d!1741990 (=> (not res!2342169) (not e!3397880))))

(assert (=> d!1741990 (= res!2342169 ((_ is Cons!62546) (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(assert (=> d!1741990 (forall!14650 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))) lambda!294074)))

(assert (=> d!1741990 (= (generalisedConcat!1072 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))) lt!2242478)))

(declare-fun b!5491616 () Bool)

(declare-fun e!3397884 () Bool)

(assert (=> b!5491616 (= e!3397882 e!3397884)))

(declare-fun c!958905 () Bool)

(assert (=> b!5491616 (= c!958905 (isEmpty!34347 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5491617 () Bool)

(assert (=> b!5491617 (= e!3397884 (isEmptyExpr!1048 lt!2242478))))

(declare-fun b!5491618 () Bool)

(assert (=> b!5491618 (= e!3397881 (h!68994 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5491619 () Bool)

(assert (=> b!5491619 (= e!3397880 (isEmpty!34347 (t!375901 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))))))))

(declare-fun b!5491620 () Bool)

(declare-fun e!3397879 () Regex!15457)

(assert (=> b!5491620 (= e!3397879 EmptyExpr!15457)))

(declare-fun b!5491621 () Bool)

(declare-fun e!3397883 () Bool)

(assert (=> b!5491621 (= e!3397883 (= lt!2242478 (head!11754 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))))))))

(declare-fun b!5491622 () Bool)

(assert (=> b!5491622 (= e!3397883 (isConcat!571 lt!2242478))))

(declare-fun b!5491623 () Bool)

(assert (=> b!5491623 (= e!3397879 (Concat!24302 (h!68994 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))) (generalisedConcat!1072 (t!375901 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))))

(declare-fun b!5491624 () Bool)

(assert (=> b!5491624 (= e!3397881 e!3397879)))

(declare-fun c!958906 () Bool)

(assert (=> b!5491624 (= c!958906 ((_ is Cons!62546) (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5491625 () Bool)

(assert (=> b!5491625 (= e!3397884 e!3397883)))

(declare-fun c!958907 () Bool)

(assert (=> b!5491625 (= c!958907 (isEmpty!34347 (tail!10849 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))))))))

(assert (= (and d!1741990 res!2342169) b!5491619))

(assert (= (and d!1741990 c!958908) b!5491618))

(assert (= (and d!1741990 (not c!958908)) b!5491624))

(assert (= (and b!5491624 c!958906) b!5491623))

(assert (= (and b!5491624 (not c!958906)) b!5491620))

(assert (= (and d!1741990 res!2342170) b!5491616))

(assert (= (and b!5491616 c!958905) b!5491617))

(assert (= (and b!5491616 (not c!958905)) b!5491625))

(assert (= (and b!5491625 c!958907) b!5491621))

(assert (= (and b!5491625 (not c!958907)) b!5491622))

(assert (=> b!5491616 m!6503822))

(declare-fun m!6504216 () Bool)

(assert (=> b!5491621 m!6504216))

(declare-fun m!6504218 () Bool)

(assert (=> b!5491619 m!6504218))

(declare-fun m!6504220 () Bool)

(assert (=> d!1741990 m!6504220))

(declare-fun m!6504222 () Bool)

(assert (=> d!1741990 m!6504222))

(declare-fun m!6504224 () Bool)

(assert (=> b!5491623 m!6504224))

(declare-fun m!6504226 () Bool)

(assert (=> b!5491622 m!6504226))

(declare-fun m!6504228 () Bool)

(assert (=> b!5491625 m!6504228))

(assert (=> b!5491625 m!6504228))

(declare-fun m!6504230 () Bool)

(assert (=> b!5491625 m!6504230))

(declare-fun m!6504232 () Bool)

(assert (=> b!5491617 m!6504232))

(assert (=> b!5490926 d!1741990))

(declare-fun d!1741992 () Bool)

(assert (=> d!1741992 (= (nullable!5500 (regOne!31426 r!7292)) (nullableFct!1642 (regOne!31426 r!7292)))))

(declare-fun bs!1267392 () Bool)

(assert (= bs!1267392 d!1741992))

(declare-fun m!6504234 () Bool)

(assert (=> bs!1267392 m!6504234))

(assert (=> b!5490917 d!1741992))

(declare-fun bs!1267393 () Bool)

(declare-fun b!5491626 () Bool)

(assert (= bs!1267393 (and b!5491626 b!5490850)))

(declare-fun lambda!294075 () Int)

(assert (=> bs!1267393 (not (= lambda!294075 lambda!294041))))

(declare-fun bs!1267394 () Bool)

(assert (= bs!1267394 (and b!5491626 b!5490841)))

(assert (=> bs!1267394 (= (and (= (reg!15786 (regOne!31427 (regOne!31427 r!7292))) (reg!15786 (regTwo!31427 r!7292))) (= (regOne!31427 (regOne!31427 r!7292)) (regTwo!31427 r!7292))) (= lambda!294075 lambda!294040))))

(declare-fun bs!1267395 () Bool)

(assert (= bs!1267395 (and b!5491626 b!5490993)))

(assert (=> bs!1267395 (not (= lambda!294075 lambda!294052))))

(declare-fun bs!1267396 () Bool)

(assert (= bs!1267396 (and b!5491626 b!5490772)))

(assert (=> bs!1267396 (= (and (= (reg!15786 (regOne!31427 (regOne!31427 r!7292))) (reg!15786 r!7292)) (= (regOne!31427 (regOne!31427 r!7292)) r!7292)) (= lambda!294075 lambda!294038))))

(declare-fun bs!1267397 () Bool)

(assert (= bs!1267397 (and b!5491626 b!5491561)))

(assert (=> bs!1267397 (not (= lambda!294075 lambda!294070))))

(declare-fun bs!1267398 () Bool)

(assert (= bs!1267398 (and b!5491626 b!5491450)))

(assert (=> bs!1267398 (= (and (= (reg!15786 (regOne!31427 (regOne!31427 r!7292))) (reg!15786 (regOne!31427 (regTwo!31427 r!7292)))) (= (regOne!31427 (regOne!31427 r!7292)) (regOne!31427 (regTwo!31427 r!7292)))) (= lambda!294075 lambda!294067))))

(declare-fun bs!1267399 () Bool)

(assert (= bs!1267399 (and b!5491626 b!5491552)))

(assert (=> bs!1267399 (= (and (= (reg!15786 (regOne!31427 (regOne!31427 r!7292))) (reg!15786 (regTwo!31427 (regOne!31427 r!7292)))) (= (regOne!31427 (regOne!31427 r!7292)) (regTwo!31427 (regOne!31427 r!7292)))) (= lambda!294075 lambda!294069))))

(declare-fun bs!1267400 () Bool)

(assert (= bs!1267400 (and b!5491626 b!5491459)))

(assert (=> bs!1267400 (not (= lambda!294075 lambda!294068))))

(declare-fun bs!1267401 () Bool)

(assert (= bs!1267401 (and b!5491626 b!5490781)))

(assert (=> bs!1267401 (not (= lambda!294075 lambda!294039))))

(declare-fun bs!1267402 () Bool)

(assert (= bs!1267402 (and b!5491626 b!5490984)))

(assert (=> bs!1267402 (= (and (= (reg!15786 (regOne!31427 (regOne!31427 r!7292))) (reg!15786 (regOne!31427 r!7292))) (= (regOne!31427 (regOne!31427 r!7292)) (regOne!31427 r!7292))) (= lambda!294075 lambda!294051))))

(assert (=> b!5491626 true))

(assert (=> b!5491626 true))

(declare-fun bs!1267403 () Bool)

(declare-fun b!5491635 () Bool)

(assert (= bs!1267403 (and b!5491635 b!5490850)))

(declare-fun lambda!294076 () Int)

(assert (=> bs!1267403 (= (and (= (regOne!31426 (regOne!31427 (regOne!31427 r!7292))) (regOne!31426 (regTwo!31427 r!7292))) (= (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))) (regTwo!31426 (regTwo!31427 r!7292)))) (= lambda!294076 lambda!294041))))

(declare-fun bs!1267404 () Bool)

(assert (= bs!1267404 (and b!5491635 b!5490841)))

(assert (=> bs!1267404 (not (= lambda!294076 lambda!294040))))

(declare-fun bs!1267405 () Bool)

(assert (= bs!1267405 (and b!5491635 b!5491626)))

(assert (=> bs!1267405 (not (= lambda!294076 lambda!294075))))

(declare-fun bs!1267406 () Bool)

(assert (= bs!1267406 (and b!5491635 b!5490993)))

(assert (=> bs!1267406 (= (and (= (regOne!31426 (regOne!31427 (regOne!31427 r!7292))) (regOne!31426 (regOne!31427 r!7292))) (= (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))) (regTwo!31426 (regOne!31427 r!7292)))) (= lambda!294076 lambda!294052))))

(declare-fun bs!1267407 () Bool)

(assert (= bs!1267407 (and b!5491635 b!5490772)))

(assert (=> bs!1267407 (not (= lambda!294076 lambda!294038))))

(declare-fun bs!1267408 () Bool)

(assert (= bs!1267408 (and b!5491635 b!5491561)))

(assert (=> bs!1267408 (= (and (= (regOne!31426 (regOne!31427 (regOne!31427 r!7292))) (regOne!31426 (regTwo!31427 (regOne!31427 r!7292)))) (= (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))) (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))))) (= lambda!294076 lambda!294070))))

(declare-fun bs!1267409 () Bool)

(assert (= bs!1267409 (and b!5491635 b!5491450)))

(assert (=> bs!1267409 (not (= lambda!294076 lambda!294067))))

(declare-fun bs!1267410 () Bool)

(assert (= bs!1267410 (and b!5491635 b!5491552)))

(assert (=> bs!1267410 (not (= lambda!294076 lambda!294069))))

(declare-fun bs!1267411 () Bool)

(assert (= bs!1267411 (and b!5491635 b!5491459)))

(assert (=> bs!1267411 (= (and (= (regOne!31426 (regOne!31427 (regOne!31427 r!7292))) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292)))) (= (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) (= lambda!294076 lambda!294068))))

(declare-fun bs!1267412 () Bool)

(assert (= bs!1267412 (and b!5491635 b!5490781)))

(assert (=> bs!1267412 (= (and (= (regOne!31426 (regOne!31427 (regOne!31427 r!7292))) (regOne!31426 r!7292)) (= (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))) (regTwo!31426 r!7292))) (= lambda!294076 lambda!294039))))

(declare-fun bs!1267413 () Bool)

(assert (= bs!1267413 (and b!5491635 b!5490984)))

(assert (=> bs!1267413 (not (= lambda!294076 lambda!294051))))

(assert (=> b!5491635 true))

(assert (=> b!5491635 true))

(declare-fun e!3397886 () Bool)

(declare-fun call!404920 () Bool)

(assert (=> b!5491626 (= e!3397886 call!404920)))

(declare-fun b!5491627 () Bool)

(declare-fun e!3397885 () Bool)

(assert (=> b!5491627 (= e!3397885 (= s!2326 (Cons!62548 (c!958671 (regOne!31427 (regOne!31427 r!7292))) Nil!62548)))))

(declare-fun b!5491628 () Bool)

(declare-fun e!3397889 () Bool)

(declare-fun e!3397887 () Bool)

(assert (=> b!5491628 (= e!3397889 e!3397887)))

(declare-fun c!958910 () Bool)

(assert (=> b!5491628 (= c!958910 ((_ is Star!15457) (regOne!31427 (regOne!31427 r!7292))))))

(declare-fun b!5491629 () Bool)

(declare-fun c!958909 () Bool)

(assert (=> b!5491629 (= c!958909 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 r!7292))))))

(declare-fun e!3397888 () Bool)

(assert (=> b!5491629 (= e!3397888 e!3397885)))

(declare-fun b!5491630 () Bool)

(declare-fun e!3397891 () Bool)

(assert (=> b!5491630 (= e!3397889 e!3397891)))

(declare-fun res!2342171 () Bool)

(assert (=> b!5491630 (= res!2342171 (matchRSpec!2560 (regOne!31427 (regOne!31427 (regOne!31427 r!7292))) s!2326))))

(assert (=> b!5491630 (=> res!2342171 e!3397891)))

(declare-fun bm!404915 () Bool)

(declare-fun call!404921 () Bool)

(assert (=> bm!404915 (= call!404921 (isEmpty!34349 s!2326))))

(declare-fun bm!404916 () Bool)

(assert (=> bm!404916 (= call!404920 (Exists!2567 (ite c!958910 lambda!294075 lambda!294076)))))

(declare-fun b!5491632 () Bool)

(assert (=> b!5491632 (= e!3397891 (matchRSpec!2560 (regTwo!31427 (regOne!31427 (regOne!31427 r!7292))) s!2326))))

(declare-fun b!5491633 () Bool)

(declare-fun e!3397890 () Bool)

(assert (=> b!5491633 (= e!3397890 call!404921)))

(declare-fun b!5491634 () Bool)

(declare-fun res!2342172 () Bool)

(assert (=> b!5491634 (=> res!2342172 e!3397886)))

(assert (=> b!5491634 (= res!2342172 call!404921)))

(assert (=> b!5491634 (= e!3397887 e!3397886)))

(assert (=> b!5491635 (= e!3397887 call!404920)))

(declare-fun b!5491636 () Bool)

(declare-fun c!958911 () Bool)

(assert (=> b!5491636 (= c!958911 ((_ is Union!15457) (regOne!31427 (regOne!31427 r!7292))))))

(assert (=> b!5491636 (= e!3397885 e!3397889)))

(declare-fun d!1741994 () Bool)

(declare-fun c!958912 () Bool)

(assert (=> d!1741994 (= c!958912 ((_ is EmptyExpr!15457) (regOne!31427 (regOne!31427 r!7292))))))

(assert (=> d!1741994 (= (matchRSpec!2560 (regOne!31427 (regOne!31427 r!7292)) s!2326) e!3397890)))

(declare-fun b!5491631 () Bool)

(assert (=> b!5491631 (= e!3397890 e!3397888)))

(declare-fun res!2342173 () Bool)

(assert (=> b!5491631 (= res!2342173 (not ((_ is EmptyLang!15457) (regOne!31427 (regOne!31427 r!7292)))))))

(assert (=> b!5491631 (=> (not res!2342173) (not e!3397888))))

(assert (= (and d!1741994 c!958912) b!5491633))

(assert (= (and d!1741994 (not c!958912)) b!5491631))

(assert (= (and b!5491631 res!2342173) b!5491629))

(assert (= (and b!5491629 c!958909) b!5491627))

(assert (= (and b!5491629 (not c!958909)) b!5491636))

(assert (= (and b!5491636 c!958911) b!5491630))

(assert (= (and b!5491636 (not c!958911)) b!5491628))

(assert (= (and b!5491630 (not res!2342171)) b!5491632))

(assert (= (and b!5491628 c!958910) b!5491634))

(assert (= (and b!5491628 (not c!958910)) b!5491635))

(assert (= (and b!5491634 (not res!2342172)) b!5491626))

(assert (= (or b!5491626 b!5491635) bm!404916))

(assert (= (or b!5491633 b!5491634) bm!404915))

(declare-fun m!6504236 () Bool)

(assert (=> b!5491630 m!6504236))

(assert (=> bm!404915 m!6503728))

(declare-fun m!6504238 () Bool)

(assert (=> bm!404916 m!6504238))

(declare-fun m!6504240 () Bool)

(assert (=> b!5491632 m!6504240))

(assert (=> b!5490988 d!1741994))

(declare-fun bm!404917 () Bool)

(declare-fun call!404924 () Bool)

(declare-fun call!404922 () Bool)

(assert (=> bm!404917 (= call!404924 call!404922)))

(declare-fun b!5491637 () Bool)

(declare-fun res!2342177 () Bool)

(declare-fun e!3397894 () Bool)

(assert (=> b!5491637 (=> res!2342177 e!3397894)))

(assert (=> b!5491637 (= res!2342177 (not ((_ is Concat!24302) (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437))))))))

(declare-fun e!3397892 () Bool)

(assert (=> b!5491637 (= e!3397892 e!3397894)))

(declare-fun b!5491638 () Bool)

(declare-fun e!3397895 () Bool)

(declare-fun call!404923 () Bool)

(assert (=> b!5491638 (= e!3397895 call!404923)))

(declare-fun b!5491639 () Bool)

(declare-fun e!3397896 () Bool)

(assert (=> b!5491639 (= e!3397896 call!404923)))

(declare-fun b!5491640 () Bool)

(declare-fun res!2342178 () Bool)

(assert (=> b!5491640 (=> (not res!2342178) (not e!3397895))))

(assert (=> b!5491640 (= res!2342178 call!404924)))

(assert (=> b!5491640 (= e!3397892 e!3397895)))

(declare-fun b!5491641 () Bool)

(declare-fun e!3397898 () Bool)

(assert (=> b!5491641 (= e!3397898 call!404922)))

(declare-fun d!1741996 () Bool)

(declare-fun res!2342175 () Bool)

(declare-fun e!3397893 () Bool)

(assert (=> d!1741996 (=> res!2342175 e!3397893)))

(assert (=> d!1741996 (= res!2342175 ((_ is ElementMatch!15457) (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))))))

(assert (=> d!1741996 (= (validRegex!7193 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))) e!3397893)))

(declare-fun b!5491642 () Bool)

(declare-fun e!3397897 () Bool)

(assert (=> b!5491642 (= e!3397897 e!3397898)))

(declare-fun res!2342176 () Bool)

(assert (=> b!5491642 (= res!2342176 (not (nullable!5500 (reg!15786 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))))))))

(assert (=> b!5491642 (=> (not res!2342176) (not e!3397898))))

(declare-fun b!5491643 () Bool)

(assert (=> b!5491643 (= e!3397894 e!3397896)))

(declare-fun res!2342174 () Bool)

(assert (=> b!5491643 (=> (not res!2342174) (not e!3397896))))

(assert (=> b!5491643 (= res!2342174 call!404924)))

(declare-fun b!5491644 () Bool)

(assert (=> b!5491644 (= e!3397897 e!3397892)))

(declare-fun c!958913 () Bool)

(assert (=> b!5491644 (= c!958913 ((_ is Union!15457) (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))))))

(declare-fun b!5491645 () Bool)

(assert (=> b!5491645 (= e!3397893 e!3397897)))

(declare-fun c!958914 () Bool)

(assert (=> b!5491645 (= c!958914 ((_ is Star!15457) (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))))))

(declare-fun bm!404918 () Bool)

(assert (=> bm!404918 (= call!404923 (validRegex!7193 (ite c!958913 (regTwo!31427 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))) (regTwo!31426 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))))))))

(declare-fun bm!404919 () Bool)

(assert (=> bm!404919 (= call!404922 (validRegex!7193 (ite c!958914 (reg!15786 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))) (ite c!958913 (regOne!31427 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437)))) (regOne!31426 (ite c!958782 (reg!15786 lt!2242437) (ite c!958781 (regOne!31427 lt!2242437) (regOne!31426 lt!2242437))))))))))

(assert (= (and d!1741996 (not res!2342175)) b!5491645))

(assert (= (and b!5491645 c!958914) b!5491642))

(assert (= (and b!5491645 (not c!958914)) b!5491644))

(assert (= (and b!5491642 res!2342176) b!5491641))

(assert (= (and b!5491644 c!958913) b!5491640))

(assert (= (and b!5491644 (not c!958913)) b!5491637))

(assert (= (and b!5491640 res!2342178) b!5491638))

(assert (= (and b!5491637 (not res!2342177)) b!5491643))

(assert (= (and b!5491643 res!2342174) b!5491639))

(assert (= (or b!5491638 b!5491639) bm!404918))

(assert (= (or b!5491640 b!5491643) bm!404917))

(assert (= (or b!5491641 bm!404917) bm!404919))

(declare-fun m!6504242 () Bool)

(assert (=> b!5491642 m!6504242))

(declare-fun m!6504244 () Bool)

(assert (=> bm!404918 m!6504244))

(declare-fun m!6504246 () Bool)

(assert (=> bm!404919 m!6504246))

(assert (=> bm!404833 d!1741996))

(declare-fun d!1741998 () Bool)

(assert (=> d!1741998 (= (head!11754 (t!375901 (exprs!5341 (h!68995 zl!343)))) (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> b!5490924 d!1741998))

(assert (=> b!5490982 d!1741728))

(declare-fun bs!1267414 () Bool)

(declare-fun d!1742000 () Bool)

(assert (= bs!1267414 (and d!1742000 d!1741766)))

(declare-fun lambda!294077 () Int)

(assert (=> bs!1267414 (= lambda!294077 lambda!294042)))

(declare-fun bs!1267415 () Bool)

(assert (= bs!1267415 (and d!1742000 d!1741728)))

(assert (=> bs!1267415 (= lambda!294077 lambda!294026)))

(declare-fun bs!1267416 () Bool)

(assert (= bs!1267416 (and d!1742000 d!1741726)))

(assert (=> bs!1267416 (= lambda!294077 lambda!294022)))

(declare-fun bs!1267417 () Bool)

(assert (= bs!1267417 (and d!1742000 d!1741990)))

(assert (=> bs!1267417 (= lambda!294077 lambda!294074)))

(declare-fun bs!1267418 () Bool)

(assert (= bs!1267418 (and d!1742000 d!1741720)))

(assert (=> bs!1267418 (= lambda!294077 lambda!294021)))

(declare-fun bs!1267419 () Bool)

(assert (= bs!1267419 (and d!1742000 d!1741904)))

(assert (=> bs!1267419 (= lambda!294077 lambda!294066)))

(declare-fun bs!1267420 () Bool)

(assert (= bs!1267420 (and d!1742000 d!1741796)))

(assert (=> bs!1267420 (= lambda!294077 lambda!294050)))

(declare-fun bs!1267421 () Bool)

(assert (= bs!1267421 (and d!1742000 d!1741794)))

(assert (=> bs!1267421 (= lambda!294077 lambda!294046)))

(declare-fun bs!1267422 () Bool)

(assert (= bs!1267422 (and d!1742000 d!1741972)))

(assert (=> bs!1267422 (= lambda!294077 lambda!294072)))

(declare-fun bs!1267423 () Bool)

(assert (= bs!1267423 (and d!1742000 d!1741818)))

(assert (=> bs!1267423 (= lambda!294077 lambda!294053)))

(declare-fun bs!1267424 () Bool)

(assert (= bs!1267424 (and d!1742000 d!1741788)))

(assert (=> bs!1267424 (= lambda!294077 lambda!294043)))

(declare-fun bs!1267425 () Bool)

(assert (= bs!1267425 (and d!1742000 d!1741982)))

(assert (=> bs!1267425 (= lambda!294077 lambda!294073)))

(declare-fun bs!1267426 () Bool)

(assert (= bs!1267426 (and d!1742000 d!1741968)))

(assert (=> bs!1267426 (= lambda!294077 lambda!294071)))

(declare-fun lt!2242479 () List!62670)

(assert (=> d!1742000 (forall!14650 lt!2242479 lambda!294077)))

(declare-fun e!3397899 () List!62670)

(assert (=> d!1742000 (= lt!2242479 e!3397899)))

(declare-fun c!958915 () Bool)

(assert (=> d!1742000 (= c!958915 ((_ is Cons!62547) (t!375902 zl!343)))))

(assert (=> d!1742000 (= (unfocusZipperList!884 (t!375902 zl!343)) lt!2242479)))

(declare-fun b!5491646 () Bool)

(assert (=> b!5491646 (= e!3397899 (Cons!62546 (generalisedConcat!1072 (exprs!5341 (h!68995 (t!375902 zl!343)))) (unfocusZipperList!884 (t!375902 (t!375902 zl!343)))))))

(declare-fun b!5491647 () Bool)

(assert (=> b!5491647 (= e!3397899 Nil!62546)))

(assert (= (and d!1742000 c!958915) b!5491646))

(assert (= (and d!1742000 (not c!958915)) b!5491647))

(declare-fun m!6504248 () Bool)

(assert (=> d!1742000 m!6504248))

(declare-fun m!6504250 () Bool)

(assert (=> b!5491646 m!6504250))

(declare-fun m!6504252 () Bool)

(assert (=> b!5491646 m!6504252))

(assert (=> b!5490982 d!1742000))

(declare-fun d!1742002 () Bool)

(assert (=> d!1742002 (= (nullable!5500 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))) (nullableFct!1642 (reg!15786 (ite c!958715 (regTwo!31427 r!7292) (regTwo!31426 r!7292)))))))

(declare-fun bs!1267427 () Bool)

(assert (= bs!1267427 d!1742002))

(declare-fun m!6504254 () Bool)

(assert (=> bs!1267427 m!6504254))

(assert (=> b!5491017 d!1742002))

(declare-fun b!5491648 () Bool)

(declare-fun e!3397902 () Regex!15457)

(declare-fun e!3397904 () Regex!15457)

(assert (=> b!5491648 (= e!3397902 e!3397904)))

(declare-fun c!958918 () Bool)

(assert (=> b!5491648 (= c!958918 ((_ is Star!15457) (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))))))

(declare-fun call!404926 () Regex!15457)

(declare-fun b!5491649 () Bool)

(declare-fun e!3397900 () Regex!15457)

(assert (=> b!5491649 (= e!3397900 (Union!15457 (Concat!24302 call!404926 (regTwo!31426 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))) EmptyLang!15457))))

(declare-fun b!5491650 () Bool)

(declare-fun call!404925 () Regex!15457)

(declare-fun call!404927 () Regex!15457)

(assert (=> b!5491650 (= e!3397902 (Union!15457 call!404925 call!404927))))

(declare-fun b!5491651 () Bool)

(assert (=> b!5491651 (= e!3397900 (Union!15457 (Concat!24302 call!404925 (regTwo!31426 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))) call!404926))))

(declare-fun bm!404920 () Bool)

(declare-fun c!958917 () Bool)

(assert (=> bm!404920 (= call!404925 (derivativeStep!4341 (ite c!958917 (regOne!31427 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))) (regOne!31426 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))) (head!11756 s!2326)))))

(declare-fun bm!404921 () Bool)

(declare-fun call!404928 () Regex!15457)

(assert (=> bm!404921 (= call!404928 call!404927)))

(declare-fun b!5491652 () Bool)

(assert (=> b!5491652 (= c!958917 ((_ is Union!15457) (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))))))

(declare-fun e!3397901 () Regex!15457)

(assert (=> b!5491652 (= e!3397901 e!3397902)))

(declare-fun b!5491653 () Bool)

(assert (=> b!5491653 (= e!3397904 (Concat!24302 call!404928 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))))))

(declare-fun b!5491654 () Bool)

(declare-fun e!3397903 () Regex!15457)

(assert (=> b!5491654 (= e!3397903 e!3397901)))

(declare-fun c!958916 () Bool)

(assert (=> b!5491654 (= c!958916 ((_ is ElementMatch!15457) (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))))))

(declare-fun d!1742004 () Bool)

(declare-fun lt!2242480 () Regex!15457)

(assert (=> d!1742004 (validRegex!7193 lt!2242480)))

(assert (=> d!1742004 (= lt!2242480 e!3397903)))

(declare-fun c!958920 () Bool)

(assert (=> d!1742004 (= c!958920 (or ((_ is EmptyExpr!15457) (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))) ((_ is EmptyLang!15457) (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))))))

(assert (=> d!1742004 (validRegex!7193 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))))

(assert (=> d!1742004 (= (derivativeStep!4341 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))) (head!11756 s!2326)) lt!2242480)))

(declare-fun b!5491655 () Bool)

(assert (=> b!5491655 (= e!3397903 EmptyLang!15457)))

(declare-fun bm!404922 () Bool)

(declare-fun c!958919 () Bool)

(assert (=> bm!404922 (= call!404927 (derivativeStep!4341 (ite c!958917 (regTwo!31427 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))) (ite c!958918 (reg!15786 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))) (ite c!958919 (regTwo!31426 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292))))) (regOne!31426 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))))) (head!11756 s!2326)))))

(declare-fun bm!404923 () Bool)

(assert (=> bm!404923 (= call!404926 call!404928)))

(declare-fun b!5491656 () Bool)

(assert (=> b!5491656 (= c!958919 (nullable!5500 (regOne!31426 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))))))

(assert (=> b!5491656 (= e!3397904 e!3397900)))

(declare-fun b!5491657 () Bool)

(assert (=> b!5491657 (= e!3397901 (ite (= (head!11756 s!2326) (c!958671 (ite c!958773 (regTwo!31427 r!7292) (ite c!958774 (reg!15786 r!7292) (ite c!958775 (regTwo!31426 r!7292) (regOne!31426 r!7292)))))) EmptyExpr!15457 EmptyLang!15457))))

(assert (= (and d!1742004 c!958920) b!5491655))

(assert (= (and d!1742004 (not c!958920)) b!5491654))

(assert (= (and b!5491654 c!958916) b!5491657))

(assert (= (and b!5491654 (not c!958916)) b!5491652))

(assert (= (and b!5491652 c!958917) b!5491650))

(assert (= (and b!5491652 (not c!958917)) b!5491648))

(assert (= (and b!5491648 c!958918) b!5491653))

(assert (= (and b!5491648 (not c!958918)) b!5491656))

(assert (= (and b!5491656 c!958919) b!5491651))

(assert (= (and b!5491656 (not c!958919)) b!5491649))

(assert (= (or b!5491651 b!5491649) bm!404923))

(assert (= (or b!5491653 bm!404923) bm!404921))

(assert (= (or b!5491650 bm!404921) bm!404922))

(assert (= (or b!5491650 b!5491651) bm!404920))

(assert (=> bm!404920 m!6503722))

(declare-fun m!6504256 () Bool)

(assert (=> bm!404920 m!6504256))

(declare-fun m!6504258 () Bool)

(assert (=> d!1742004 m!6504258))

(declare-fun m!6504260 () Bool)

(assert (=> d!1742004 m!6504260))

(assert (=> bm!404922 m!6503722))

(declare-fun m!6504262 () Bool)

(assert (=> bm!404922 m!6504262))

(declare-fun m!6504264 () Bool)

(assert (=> b!5491656 m!6504264))

(assert (=> bm!404829 d!1742004))

(declare-fun d!1742006 () Bool)

(declare-fun res!2342179 () Bool)

(declare-fun e!3397905 () Bool)

(assert (=> d!1742006 (=> res!2342179 e!3397905)))

(assert (=> d!1742006 (= res!2342179 ((_ is Nil!62547) (t!375902 lt!2242422)))))

(assert (=> d!1742006 (= (noDuplicate!1467 (t!375902 lt!2242422)) e!3397905)))

(declare-fun b!5491658 () Bool)

(declare-fun e!3397906 () Bool)

(assert (=> b!5491658 (= e!3397905 e!3397906)))

(declare-fun res!2342180 () Bool)

(assert (=> b!5491658 (=> (not res!2342180) (not e!3397906))))

(assert (=> b!5491658 (= res!2342180 (not (contains!19764 (t!375902 (t!375902 lt!2242422)) (h!68995 (t!375902 lt!2242422)))))))

(declare-fun b!5491659 () Bool)

(assert (=> b!5491659 (= e!3397906 (noDuplicate!1467 (t!375902 (t!375902 lt!2242422))))))

(assert (= (and d!1742006 (not res!2342179)) b!5491658))

(assert (= (and b!5491658 res!2342180) b!5491659))

(declare-fun m!6504266 () Bool)

(assert (=> b!5491658 m!6504266))

(declare-fun m!6504268 () Bool)

(assert (=> b!5491659 m!6504268))

(assert (=> b!5491039 d!1742006))

(declare-fun bm!404924 () Bool)

(declare-fun call!404931 () Bool)

(declare-fun call!404929 () Bool)

(assert (=> bm!404924 (= call!404931 call!404929)))

(declare-fun b!5491660 () Bool)

(declare-fun res!2342184 () Bool)

(declare-fun e!3397909 () Bool)

(assert (=> b!5491660 (=> res!2342184 e!3397909)))

(assert (=> b!5491660 (= res!2342184 (not ((_ is Concat!24302) (h!68994 (exprs!5341 setElem!36339)))))))

(declare-fun e!3397907 () Bool)

(assert (=> b!5491660 (= e!3397907 e!3397909)))

(declare-fun b!5491661 () Bool)

(declare-fun e!3397910 () Bool)

(declare-fun call!404930 () Bool)

(assert (=> b!5491661 (= e!3397910 call!404930)))

(declare-fun b!5491662 () Bool)

(declare-fun e!3397911 () Bool)

(assert (=> b!5491662 (= e!3397911 call!404930)))

(declare-fun b!5491663 () Bool)

(declare-fun res!2342185 () Bool)

(assert (=> b!5491663 (=> (not res!2342185) (not e!3397910))))

(assert (=> b!5491663 (= res!2342185 call!404931)))

(assert (=> b!5491663 (= e!3397907 e!3397910)))

(declare-fun b!5491664 () Bool)

(declare-fun e!3397913 () Bool)

(assert (=> b!5491664 (= e!3397913 call!404929)))

(declare-fun d!1742008 () Bool)

(declare-fun res!2342182 () Bool)

(declare-fun e!3397908 () Bool)

(assert (=> d!1742008 (=> res!2342182 e!3397908)))

(assert (=> d!1742008 (= res!2342182 ((_ is ElementMatch!15457) (h!68994 (exprs!5341 setElem!36339))))))

(assert (=> d!1742008 (= (validRegex!7193 (h!68994 (exprs!5341 setElem!36339))) e!3397908)))

(declare-fun b!5491665 () Bool)

(declare-fun e!3397912 () Bool)

(assert (=> b!5491665 (= e!3397912 e!3397913)))

(declare-fun res!2342183 () Bool)

(assert (=> b!5491665 (= res!2342183 (not (nullable!5500 (reg!15786 (h!68994 (exprs!5341 setElem!36339))))))))

(assert (=> b!5491665 (=> (not res!2342183) (not e!3397913))))

(declare-fun b!5491666 () Bool)

(assert (=> b!5491666 (= e!3397909 e!3397911)))

(declare-fun res!2342181 () Bool)

(assert (=> b!5491666 (=> (not res!2342181) (not e!3397911))))

(assert (=> b!5491666 (= res!2342181 call!404931)))

(declare-fun b!5491667 () Bool)

(assert (=> b!5491667 (= e!3397912 e!3397907)))

(declare-fun c!958921 () Bool)

(assert (=> b!5491667 (= c!958921 ((_ is Union!15457) (h!68994 (exprs!5341 setElem!36339))))))

(declare-fun b!5491668 () Bool)

(assert (=> b!5491668 (= e!3397908 e!3397912)))

(declare-fun c!958922 () Bool)

(assert (=> b!5491668 (= c!958922 ((_ is Star!15457) (h!68994 (exprs!5341 setElem!36339))))))

(declare-fun bm!404925 () Bool)

(assert (=> bm!404925 (= call!404930 (validRegex!7193 (ite c!958921 (regTwo!31427 (h!68994 (exprs!5341 setElem!36339))) (regTwo!31426 (h!68994 (exprs!5341 setElem!36339))))))))

(declare-fun bm!404926 () Bool)

(assert (=> bm!404926 (= call!404929 (validRegex!7193 (ite c!958922 (reg!15786 (h!68994 (exprs!5341 setElem!36339))) (ite c!958921 (regOne!31427 (h!68994 (exprs!5341 setElem!36339))) (regOne!31426 (h!68994 (exprs!5341 setElem!36339)))))))))

(assert (= (and d!1742008 (not res!2342182)) b!5491668))

(assert (= (and b!5491668 c!958922) b!5491665))

(assert (= (and b!5491668 (not c!958922)) b!5491667))

(assert (= (and b!5491665 res!2342183) b!5491664))

(assert (= (and b!5491667 c!958921) b!5491663))

(assert (= (and b!5491667 (not c!958921)) b!5491660))

(assert (= (and b!5491663 res!2342185) b!5491661))

(assert (= (and b!5491660 (not res!2342184)) b!5491666))

(assert (= (and b!5491666 res!2342181) b!5491662))

(assert (= (or b!5491661 b!5491662) bm!404925))

(assert (= (or b!5491663 b!5491666) bm!404924))

(assert (= (or b!5491664 bm!404924) bm!404926))

(declare-fun m!6504270 () Bool)

(assert (=> b!5491665 m!6504270))

(declare-fun m!6504272 () Bool)

(assert (=> bm!404925 m!6504272))

(declare-fun m!6504274 () Bool)

(assert (=> bm!404926 m!6504274))

(assert (=> bs!1267267 d!1742008))

(declare-fun d!1742010 () Bool)

(assert (=> d!1742010 (= (isEmpty!34349 (tail!10851 (tail!10851 s!2326))) ((_ is Nil!62548) (tail!10851 (tail!10851 s!2326))))))

(assert (=> b!5490881 d!1742010))

(assert (=> b!5490881 d!1741916))

(declare-fun d!1742012 () Bool)

(assert (=> d!1742012 (= (isEmptyExpr!1048 lt!2242454) ((_ is EmptyExpr!15457) lt!2242454))))

(assert (=> b!5490920 d!1742012))

(declare-fun d!1742014 () Bool)

(declare-fun c!958923 () Bool)

(assert (=> d!1742014 (= c!958923 ((_ is Nil!62547) (t!375902 lt!2242422)))))

(declare-fun e!3397914 () (InoxSet Context!9682))

(assert (=> d!1742014 (= (content!11229 (t!375902 lt!2242422)) e!3397914)))

(declare-fun b!5491669 () Bool)

(assert (=> b!5491669 (= e!3397914 ((as const (Array Context!9682 Bool)) false))))

(declare-fun b!5491670 () Bool)

(assert (=> b!5491670 (= e!3397914 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) (h!68995 (t!375902 lt!2242422)) true) (content!11229 (t!375902 (t!375902 lt!2242422)))))))

(assert (= (and d!1742014 c!958923) b!5491669))

(assert (= (and d!1742014 (not c!958923)) b!5491670))

(declare-fun m!6504276 () Bool)

(assert (=> b!5491670 m!6504276))

(declare-fun m!6504278 () Bool)

(assert (=> b!5491670 m!6504278))

(assert (=> b!5490872 d!1742014))

(declare-fun d!1742016 () Bool)

(assert (=> d!1742016 (= (isUnion!488 lt!2242457) ((_ is Union!15457) lt!2242457))))

(assert (=> b!5490959 d!1742016))

(declare-fun d!1742018 () Bool)

(assert (=> d!1742018 (= (isEmpty!34347 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))) ((_ is Nil!62546) (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(assert (=> b!5490922 d!1742018))

(declare-fun bm!404927 () Bool)

(declare-fun call!404934 () Bool)

(declare-fun call!404932 () Bool)

(assert (=> bm!404927 (= call!404934 call!404932)))

(declare-fun b!5491671 () Bool)

(declare-fun res!2342189 () Bool)

(declare-fun e!3397917 () Bool)

(assert (=> b!5491671 (=> res!2342189 e!3397917)))

(assert (=> b!5491671 (= res!2342189 (not ((_ is Concat!24302) lt!2242453)))))

(declare-fun e!3397915 () Bool)

(assert (=> b!5491671 (= e!3397915 e!3397917)))

(declare-fun b!5491672 () Bool)

(declare-fun e!3397918 () Bool)

(declare-fun call!404933 () Bool)

(assert (=> b!5491672 (= e!3397918 call!404933)))

(declare-fun b!5491673 () Bool)

(declare-fun e!3397919 () Bool)

(assert (=> b!5491673 (= e!3397919 call!404933)))

(declare-fun b!5491674 () Bool)

(declare-fun res!2342190 () Bool)

(assert (=> b!5491674 (=> (not res!2342190) (not e!3397918))))

(assert (=> b!5491674 (= res!2342190 call!404934)))

(assert (=> b!5491674 (= e!3397915 e!3397918)))

(declare-fun b!5491675 () Bool)

(declare-fun e!3397921 () Bool)

(assert (=> b!5491675 (= e!3397921 call!404932)))

(declare-fun d!1742020 () Bool)

(declare-fun res!2342187 () Bool)

(declare-fun e!3397916 () Bool)

(assert (=> d!1742020 (=> res!2342187 e!3397916)))

(assert (=> d!1742020 (= res!2342187 ((_ is ElementMatch!15457) lt!2242453))))

(assert (=> d!1742020 (= (validRegex!7193 lt!2242453) e!3397916)))

(declare-fun b!5491676 () Bool)

(declare-fun e!3397920 () Bool)

(assert (=> b!5491676 (= e!3397920 e!3397921)))

(declare-fun res!2342188 () Bool)

(assert (=> b!5491676 (= res!2342188 (not (nullable!5500 (reg!15786 lt!2242453))))))

(assert (=> b!5491676 (=> (not res!2342188) (not e!3397921))))

(declare-fun b!5491677 () Bool)

(assert (=> b!5491677 (= e!3397917 e!3397919)))

(declare-fun res!2342186 () Bool)

(assert (=> b!5491677 (=> (not res!2342186) (not e!3397919))))

(assert (=> b!5491677 (= res!2342186 call!404934)))

(declare-fun b!5491678 () Bool)

(assert (=> b!5491678 (= e!3397920 e!3397915)))

(declare-fun c!958924 () Bool)

(assert (=> b!5491678 (= c!958924 ((_ is Union!15457) lt!2242453))))

(declare-fun b!5491679 () Bool)

(assert (=> b!5491679 (= e!3397916 e!3397920)))

(declare-fun c!958925 () Bool)

(assert (=> b!5491679 (= c!958925 ((_ is Star!15457) lt!2242453))))

(declare-fun bm!404928 () Bool)

(assert (=> bm!404928 (= call!404933 (validRegex!7193 (ite c!958924 (regTwo!31427 lt!2242453) (regTwo!31426 lt!2242453))))))

(declare-fun bm!404929 () Bool)

(assert (=> bm!404929 (= call!404932 (validRegex!7193 (ite c!958925 (reg!15786 lt!2242453) (ite c!958924 (regOne!31427 lt!2242453) (regOne!31426 lt!2242453)))))))

(assert (= (and d!1742020 (not res!2342187)) b!5491679))

(assert (= (and b!5491679 c!958925) b!5491676))

(assert (= (and b!5491679 (not c!958925)) b!5491678))

(assert (= (and b!5491676 res!2342188) b!5491675))

(assert (= (and b!5491678 c!958924) b!5491674))

(assert (= (and b!5491678 (not c!958924)) b!5491671))

(assert (= (and b!5491674 res!2342190) b!5491672))

(assert (= (and b!5491671 (not res!2342189)) b!5491677))

(assert (= (and b!5491677 res!2342186) b!5491673))

(assert (= (or b!5491672 b!5491673) bm!404928))

(assert (= (or b!5491674 b!5491677) bm!404927))

(assert (= (or b!5491675 bm!404927) bm!404929))

(declare-fun m!6504280 () Bool)

(assert (=> b!5491676 m!6504280))

(declare-fun m!6504282 () Bool)

(assert (=> bm!404928 m!6504282))

(declare-fun m!6504284 () Bool)

(assert (=> bm!404929 m!6504284))

(assert (=> d!1741782 d!1742020))

(assert (=> d!1741782 d!1741736))

(declare-fun d!1742022 () Bool)

(assert (=> d!1742022 (= (nullable!5500 (derivativeStep!4341 r!7292 (head!11756 s!2326))) (nullableFct!1642 (derivativeStep!4341 r!7292 (head!11756 s!2326))))))

(declare-fun bs!1267428 () Bool)

(assert (= bs!1267428 d!1742022))

(assert (=> bs!1267428 m!6503730))

(declare-fun m!6504286 () Bool)

(assert (=> bs!1267428 m!6504286))

(assert (=> b!5490880 d!1742022))

(declare-fun bm!404930 () Bool)

(declare-fun call!404937 () Bool)

(declare-fun call!404935 () Bool)

(assert (=> bm!404930 (= call!404937 call!404935)))

(declare-fun b!5491680 () Bool)

(declare-fun res!2342194 () Bool)

(declare-fun e!3397924 () Bool)

(assert (=> b!5491680 (=> res!2342194 e!3397924)))

(assert (=> b!5491680 (= res!2342194 (not ((_ is Concat!24302) (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431))))))))

(declare-fun e!3397922 () Bool)

(assert (=> b!5491680 (= e!3397922 e!3397924)))

(declare-fun b!5491681 () Bool)

(declare-fun e!3397925 () Bool)

(declare-fun call!404936 () Bool)

(assert (=> b!5491681 (= e!3397925 call!404936)))

(declare-fun b!5491682 () Bool)

(declare-fun e!3397926 () Bool)

(assert (=> b!5491682 (= e!3397926 call!404936)))

(declare-fun b!5491683 () Bool)

(declare-fun res!2342195 () Bool)

(assert (=> b!5491683 (=> (not res!2342195) (not e!3397925))))

(assert (=> b!5491683 (= res!2342195 call!404937)))

(assert (=> b!5491683 (= e!3397922 e!3397925)))

(declare-fun b!5491684 () Bool)

(declare-fun e!3397928 () Bool)

(assert (=> b!5491684 (= e!3397928 call!404935)))

(declare-fun d!1742024 () Bool)

(declare-fun res!2342192 () Bool)

(declare-fun e!3397923 () Bool)

(assert (=> d!1742024 (=> res!2342192 e!3397923)))

(assert (=> d!1742024 (= res!2342192 ((_ is ElementMatch!15457) (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))))))

(assert (=> d!1742024 (= (validRegex!7193 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))) e!3397923)))

(declare-fun b!5491685 () Bool)

(declare-fun e!3397927 () Bool)

(assert (=> b!5491685 (= e!3397927 e!3397928)))

(declare-fun res!2342193 () Bool)

(assert (=> b!5491685 (= res!2342193 (not (nullable!5500 (reg!15786 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))))))))

(assert (=> b!5491685 (=> (not res!2342193) (not e!3397928))))

(declare-fun b!5491686 () Bool)

(assert (=> b!5491686 (= e!3397924 e!3397926)))

(declare-fun res!2342191 () Bool)

(assert (=> b!5491686 (=> (not res!2342191) (not e!3397926))))

(assert (=> b!5491686 (= res!2342191 call!404937)))

(declare-fun b!5491687 () Bool)

(assert (=> b!5491687 (= e!3397927 e!3397922)))

(declare-fun c!958926 () Bool)

(assert (=> b!5491687 (= c!958926 ((_ is Union!15457) (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))))))

(declare-fun b!5491688 () Bool)

(assert (=> b!5491688 (= e!3397923 e!3397927)))

(declare-fun c!958927 () Bool)

(assert (=> b!5491688 (= c!958927 ((_ is Star!15457) (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))))))

(declare-fun bm!404931 () Bool)

(assert (=> bm!404931 (= call!404936 (validRegex!7193 (ite c!958926 (regTwo!31427 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))) (regTwo!31426 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))))))))

(declare-fun bm!404932 () Bool)

(assert (=> bm!404932 (= call!404935 (validRegex!7193 (ite c!958927 (reg!15786 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))) (ite c!958926 (regOne!31427 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431)))) (regOne!31426 (ite c!958755 (reg!15786 lt!2242431) (ite c!958754 (regOne!31427 lt!2242431) (regOne!31426 lt!2242431))))))))))

(assert (= (and d!1742024 (not res!2342192)) b!5491688))

(assert (= (and b!5491688 c!958927) b!5491685))

(assert (= (and b!5491688 (not c!958927)) b!5491687))

(assert (= (and b!5491685 res!2342193) b!5491684))

(assert (= (and b!5491687 c!958926) b!5491683))

(assert (= (and b!5491687 (not c!958926)) b!5491680))

(assert (= (and b!5491683 res!2342195) b!5491681))

(assert (= (and b!5491680 (not res!2342194)) b!5491686))

(assert (= (and b!5491686 res!2342191) b!5491682))

(assert (= (or b!5491681 b!5491682) bm!404931))

(assert (= (or b!5491683 b!5491686) bm!404930))

(assert (= (or b!5491684 bm!404930) bm!404932))

(declare-fun m!6504288 () Bool)

(assert (=> b!5491685 m!6504288))

(declare-fun m!6504290 () Bool)

(assert (=> bm!404931 m!6504290))

(declare-fun m!6504292 () Bool)

(assert (=> bm!404932 m!6504292))

(assert (=> bm!404817 d!1742024))

(declare-fun b!5491689 () Bool)

(declare-fun e!3397931 () Regex!15457)

(declare-fun e!3397933 () Regex!15457)

(assert (=> b!5491689 (= e!3397931 e!3397933)))

(declare-fun c!958930 () Bool)

(assert (=> b!5491689 (= c!958930 ((_ is Star!15457) (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))))))

(declare-fun e!3397929 () Regex!15457)

(declare-fun b!5491690 () Bool)

(declare-fun call!404939 () Regex!15457)

(assert (=> b!5491690 (= e!3397929 (Union!15457 (Concat!24302 call!404939 (regTwo!31426 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))) EmptyLang!15457))))

(declare-fun b!5491691 () Bool)

(declare-fun call!404938 () Regex!15457)

(declare-fun call!404940 () Regex!15457)

(assert (=> b!5491691 (= e!3397931 (Union!15457 call!404938 call!404940))))

(declare-fun b!5491692 () Bool)

(assert (=> b!5491692 (= e!3397929 (Union!15457 (Concat!24302 call!404938 (regTwo!31426 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))) call!404939))))

(declare-fun bm!404933 () Bool)

(declare-fun c!958929 () Bool)

(assert (=> bm!404933 (= call!404938 (derivativeStep!4341 (ite c!958929 (regOne!31427 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))) (regOne!31426 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (head!11756 s!2326)))))

(declare-fun bm!404934 () Bool)

(declare-fun call!404941 () Regex!15457)

(assert (=> bm!404934 (= call!404941 call!404940)))

(declare-fun b!5491693 () Bool)

(assert (=> b!5491693 (= c!958929 ((_ is Union!15457) (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))))))

(declare-fun e!3397930 () Regex!15457)

(assert (=> b!5491693 (= e!3397930 e!3397931)))

(declare-fun b!5491694 () Bool)

(assert (=> b!5491694 (= e!3397933 (Concat!24302 call!404941 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))))))

(declare-fun b!5491695 () Bool)

(declare-fun e!3397932 () Regex!15457)

(assert (=> b!5491695 (= e!3397932 e!3397930)))

(declare-fun c!958928 () Bool)

(assert (=> b!5491695 (= c!958928 ((_ is ElementMatch!15457) (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))))))

(declare-fun d!1742026 () Bool)

(declare-fun lt!2242481 () Regex!15457)

(assert (=> d!1742026 (validRegex!7193 lt!2242481)))

(assert (=> d!1742026 (= lt!2242481 e!3397932)))

(declare-fun c!958932 () Bool)

(assert (=> d!1742026 (= c!958932 (or ((_ is EmptyExpr!15457) (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))) ((_ is EmptyLang!15457) (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))

(assert (=> d!1742026 (validRegex!7193 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))))

(assert (=> d!1742026 (= (derivativeStep!4341 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)) (head!11756 s!2326)) lt!2242481)))

(declare-fun b!5491696 () Bool)

(assert (=> b!5491696 (= e!3397932 EmptyLang!15457)))

(declare-fun c!958931 () Bool)

(declare-fun bm!404935 () Bool)

(assert (=> bm!404935 (= call!404940 (derivativeStep!4341 (ite c!958929 (regTwo!31427 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))) (ite c!958930 (reg!15786 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))) (ite c!958931 (regTwo!31426 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292))) (regOne!31426 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))))) (head!11756 s!2326)))))

(declare-fun bm!404936 () Bool)

(assert (=> bm!404936 (= call!404939 call!404941)))

(declare-fun b!5491697 () Bool)

(assert (=> b!5491697 (= c!958931 (nullable!5500 (regOne!31426 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))

(assert (=> b!5491697 (= e!3397933 e!3397929)))

(declare-fun b!5491698 () Bool)

(assert (=> b!5491698 (= e!3397930 (ite (= (head!11756 s!2326) (c!958671 (ite c!958773 (regOne!31427 r!7292) (regOne!31426 r!7292)))) EmptyExpr!15457 EmptyLang!15457))))

(assert (= (and d!1742026 c!958932) b!5491696))

(assert (= (and d!1742026 (not c!958932)) b!5491695))

(assert (= (and b!5491695 c!958928) b!5491698))

(assert (= (and b!5491695 (not c!958928)) b!5491693))

(assert (= (and b!5491693 c!958929) b!5491691))

(assert (= (and b!5491693 (not c!958929)) b!5491689))

(assert (= (and b!5491689 c!958930) b!5491694))

(assert (= (and b!5491689 (not c!958930)) b!5491697))

(assert (= (and b!5491697 c!958931) b!5491692))

(assert (= (and b!5491697 (not c!958931)) b!5491690))

(assert (= (or b!5491692 b!5491690) bm!404936))

(assert (= (or b!5491694 bm!404936) bm!404934))

(assert (= (or b!5491691 bm!404934) bm!404935))

(assert (= (or b!5491691 b!5491692) bm!404933))

(assert (=> bm!404933 m!6503722))

(declare-fun m!6504294 () Bool)

(assert (=> bm!404933 m!6504294))

(declare-fun m!6504296 () Bool)

(assert (=> d!1742026 m!6504296))

(declare-fun m!6504298 () Bool)

(assert (=> d!1742026 m!6504298))

(assert (=> bm!404935 m!6503722))

(declare-fun m!6504300 () Bool)

(assert (=> bm!404935 m!6504300))

(declare-fun m!6504302 () Bool)

(assert (=> b!5491697 m!6504302))

(assert (=> bm!404827 d!1742026))

(declare-fun d!1742028 () Bool)

(declare-fun res!2342196 () Bool)

(declare-fun e!3397934 () Bool)

(assert (=> d!1742028 (=> res!2342196 e!3397934)))

(assert (=> d!1742028 (= res!2342196 ((_ is Nil!62546) lt!2242461))))

(assert (=> d!1742028 (= (forall!14650 lt!2242461 lambda!294050) e!3397934)))

(declare-fun b!5491699 () Bool)

(declare-fun e!3397935 () Bool)

(assert (=> b!5491699 (= e!3397934 e!3397935)))

(declare-fun res!2342197 () Bool)

(assert (=> b!5491699 (=> (not res!2342197) (not e!3397935))))

(assert (=> b!5491699 (= res!2342197 (dynLambda!24455 lambda!294050 (h!68994 lt!2242461)))))

(declare-fun b!5491700 () Bool)

(assert (=> b!5491700 (= e!3397935 (forall!14650 (t!375901 lt!2242461) lambda!294050))))

(assert (= (and d!1742028 (not res!2342196)) b!5491699))

(assert (= (and b!5491699 res!2342197) b!5491700))

(declare-fun b_lambda!208421 () Bool)

(assert (=> (not b_lambda!208421) (not b!5491699)))

(declare-fun m!6504304 () Bool)

(assert (=> b!5491699 m!6504304))

(declare-fun m!6504306 () Bool)

(assert (=> b!5491700 m!6504306))

(assert (=> d!1741796 d!1742028))

(assert (=> b!5490878 d!1742010))

(assert (=> b!5490878 d!1741916))

(assert (=> bs!1267265 d!1741938))

(declare-fun bs!1267429 () Bool)

(declare-fun b!5491701 () Bool)

(assert (= bs!1267429 (and b!5491701 b!5490841)))

(declare-fun lambda!294078 () Int)

(assert (=> bs!1267429 (= (and (= (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))) (reg!15786 (regTwo!31427 r!7292))) (= (regTwo!31427 (regTwo!31427 r!7292)) (regTwo!31427 r!7292))) (= lambda!294078 lambda!294040))))

(declare-fun bs!1267430 () Bool)

(assert (= bs!1267430 (and b!5491701 b!5491626)))

(assert (=> bs!1267430 (= (and (= (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))) (reg!15786 (regOne!31427 (regOne!31427 r!7292)))) (= (regTwo!31427 (regTwo!31427 r!7292)) (regOne!31427 (regOne!31427 r!7292)))) (= lambda!294078 lambda!294075))))

(declare-fun bs!1267431 () Bool)

(assert (= bs!1267431 (and b!5491701 b!5490993)))

(assert (=> bs!1267431 (not (= lambda!294078 lambda!294052))))

(declare-fun bs!1267432 () Bool)

(assert (= bs!1267432 (and b!5491701 b!5490772)))

(assert (=> bs!1267432 (= (and (= (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))) (reg!15786 r!7292)) (= (regTwo!31427 (regTwo!31427 r!7292)) r!7292)) (= lambda!294078 lambda!294038))))

(declare-fun bs!1267433 () Bool)

(assert (= bs!1267433 (and b!5491701 b!5491561)))

(assert (=> bs!1267433 (not (= lambda!294078 lambda!294070))))

(declare-fun bs!1267434 () Bool)

(assert (= bs!1267434 (and b!5491701 b!5491450)))

(assert (=> bs!1267434 (= (and (= (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))) (reg!15786 (regOne!31427 (regTwo!31427 r!7292)))) (= (regTwo!31427 (regTwo!31427 r!7292)) (regOne!31427 (regTwo!31427 r!7292)))) (= lambda!294078 lambda!294067))))

(declare-fun bs!1267435 () Bool)

(assert (= bs!1267435 (and b!5491701 b!5491552)))

(assert (=> bs!1267435 (= (and (= (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))) (reg!15786 (regTwo!31427 (regOne!31427 r!7292)))) (= (regTwo!31427 (regTwo!31427 r!7292)) (regTwo!31427 (regOne!31427 r!7292)))) (= lambda!294078 lambda!294069))))

(declare-fun bs!1267436 () Bool)

(assert (= bs!1267436 (and b!5491701 b!5491459)))

(assert (=> bs!1267436 (not (= lambda!294078 lambda!294068))))

(declare-fun bs!1267437 () Bool)

(assert (= bs!1267437 (and b!5491701 b!5490850)))

(assert (=> bs!1267437 (not (= lambda!294078 lambda!294041))))

(declare-fun bs!1267438 () Bool)

(assert (= bs!1267438 (and b!5491701 b!5491635)))

(assert (=> bs!1267438 (not (= lambda!294078 lambda!294076))))

(declare-fun bs!1267439 () Bool)

(assert (= bs!1267439 (and b!5491701 b!5490781)))

(assert (=> bs!1267439 (not (= lambda!294078 lambda!294039))))

(declare-fun bs!1267440 () Bool)

(assert (= bs!1267440 (and b!5491701 b!5490984)))

(assert (=> bs!1267440 (= (and (= (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))) (reg!15786 (regOne!31427 r!7292))) (= (regTwo!31427 (regTwo!31427 r!7292)) (regOne!31427 r!7292))) (= lambda!294078 lambda!294051))))

(assert (=> b!5491701 true))

(assert (=> b!5491701 true))

(declare-fun bs!1267441 () Bool)

(declare-fun b!5491710 () Bool)

(assert (= bs!1267441 (and b!5491710 b!5490841)))

(declare-fun lambda!294079 () Int)

(assert (=> bs!1267441 (not (= lambda!294079 lambda!294040))))

(declare-fun bs!1267442 () Bool)

(assert (= bs!1267442 (and b!5491710 b!5491626)))

(assert (=> bs!1267442 (not (= lambda!294079 lambda!294075))))

(declare-fun bs!1267443 () Bool)

(assert (= bs!1267443 (and b!5491710 b!5490993)))

(assert (=> bs!1267443 (= (and (= (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regOne!31426 (regOne!31427 r!7292))) (= (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regOne!31427 r!7292)))) (= lambda!294079 lambda!294052))))

(declare-fun bs!1267444 () Bool)

(assert (= bs!1267444 (and b!5491710 b!5490772)))

(assert (=> bs!1267444 (not (= lambda!294079 lambda!294038))))

(declare-fun bs!1267445 () Bool)

(assert (= bs!1267445 (and b!5491710 b!5491561)))

(assert (=> bs!1267445 (= (and (= (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regOne!31426 (regTwo!31427 (regOne!31427 r!7292)))) (= (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))))) (= lambda!294079 lambda!294070))))

(declare-fun bs!1267446 () Bool)

(assert (= bs!1267446 (and b!5491710 b!5491450)))

(assert (=> bs!1267446 (not (= lambda!294079 lambda!294067))))

(declare-fun bs!1267447 () Bool)

(assert (= bs!1267447 (and b!5491710 b!5491552)))

(assert (=> bs!1267447 (not (= lambda!294079 lambda!294069))))

(declare-fun bs!1267448 () Bool)

(assert (= bs!1267448 (and b!5491710 b!5491459)))

(assert (=> bs!1267448 (= (and (= (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292)))) (= (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) (= lambda!294079 lambda!294068))))

(declare-fun bs!1267449 () Bool)

(assert (= bs!1267449 (and b!5491710 b!5491701)))

(assert (=> bs!1267449 (not (= lambda!294079 lambda!294078))))

(declare-fun bs!1267450 () Bool)

(assert (= bs!1267450 (and b!5491710 b!5490850)))

(assert (=> bs!1267450 (= (and (= (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regOne!31426 (regTwo!31427 r!7292))) (= (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regTwo!31427 r!7292)))) (= lambda!294079 lambda!294041))))

(declare-fun bs!1267451 () Bool)

(assert (= bs!1267451 (and b!5491710 b!5491635)))

(assert (=> bs!1267451 (= (and (= (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regOne!31426 (regOne!31427 (regOne!31427 r!7292)))) (= (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))))) (= lambda!294079 lambda!294076))))

(declare-fun bs!1267452 () Bool)

(assert (= bs!1267452 (and b!5491710 b!5490781)))

(assert (=> bs!1267452 (= (and (= (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regOne!31426 r!7292)) (= (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))) (regTwo!31426 r!7292))) (= lambda!294079 lambda!294039))))

(declare-fun bs!1267453 () Bool)

(assert (= bs!1267453 (and b!5491710 b!5490984)))

(assert (=> bs!1267453 (not (= lambda!294079 lambda!294051))))

(assert (=> b!5491710 true))

(assert (=> b!5491710 true))

(declare-fun e!3397937 () Bool)

(declare-fun call!404942 () Bool)

(assert (=> b!5491701 (= e!3397937 call!404942)))

(declare-fun b!5491702 () Bool)

(declare-fun e!3397936 () Bool)

(assert (=> b!5491702 (= e!3397936 (= s!2326 (Cons!62548 (c!958671 (regTwo!31427 (regTwo!31427 r!7292))) Nil!62548)))))

(declare-fun b!5491703 () Bool)

(declare-fun e!3397940 () Bool)

(declare-fun e!3397938 () Bool)

(assert (=> b!5491703 (= e!3397940 e!3397938)))

(declare-fun c!958934 () Bool)

(assert (=> b!5491703 (= c!958934 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 r!7292))))))

(declare-fun b!5491704 () Bool)

(declare-fun c!958933 () Bool)

(assert (=> b!5491704 (= c!958933 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 r!7292))))))

(declare-fun e!3397939 () Bool)

(assert (=> b!5491704 (= e!3397939 e!3397936)))

(declare-fun b!5491705 () Bool)

(declare-fun e!3397942 () Bool)

(assert (=> b!5491705 (= e!3397940 e!3397942)))

(declare-fun res!2342198 () Bool)

(assert (=> b!5491705 (= res!2342198 (matchRSpec!2560 (regOne!31427 (regTwo!31427 (regTwo!31427 r!7292))) s!2326))))

(assert (=> b!5491705 (=> res!2342198 e!3397942)))

(declare-fun bm!404937 () Bool)

(declare-fun call!404943 () Bool)

(assert (=> bm!404937 (= call!404943 (isEmpty!34349 s!2326))))

(declare-fun bm!404938 () Bool)

(assert (=> bm!404938 (= call!404942 (Exists!2567 (ite c!958934 lambda!294078 lambda!294079)))))

(declare-fun b!5491707 () Bool)

(assert (=> b!5491707 (= e!3397942 (matchRSpec!2560 (regTwo!31427 (regTwo!31427 (regTwo!31427 r!7292))) s!2326))))

(declare-fun b!5491708 () Bool)

(declare-fun e!3397941 () Bool)

(assert (=> b!5491708 (= e!3397941 call!404943)))

(declare-fun b!5491709 () Bool)

(declare-fun res!2342199 () Bool)

(assert (=> b!5491709 (=> res!2342199 e!3397937)))

(assert (=> b!5491709 (= res!2342199 call!404943)))

(assert (=> b!5491709 (= e!3397938 e!3397937)))

(assert (=> b!5491710 (= e!3397938 call!404942)))

(declare-fun b!5491711 () Bool)

(declare-fun c!958935 () Bool)

(assert (=> b!5491711 (= c!958935 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 r!7292))))))

(assert (=> b!5491711 (= e!3397936 e!3397940)))

(declare-fun d!1742030 () Bool)

(declare-fun c!958936 () Bool)

(assert (=> d!1742030 (= c!958936 ((_ is EmptyExpr!15457) (regTwo!31427 (regTwo!31427 r!7292))))))

(assert (=> d!1742030 (= (matchRSpec!2560 (regTwo!31427 (regTwo!31427 r!7292)) s!2326) e!3397941)))

(declare-fun b!5491706 () Bool)

(assert (=> b!5491706 (= e!3397941 e!3397939)))

(declare-fun res!2342200 () Bool)

(assert (=> b!5491706 (= res!2342200 (not ((_ is EmptyLang!15457) (regTwo!31427 (regTwo!31427 r!7292)))))))

(assert (=> b!5491706 (=> (not res!2342200) (not e!3397939))))

(assert (= (and d!1742030 c!958936) b!5491708))

(assert (= (and d!1742030 (not c!958936)) b!5491706))

(assert (= (and b!5491706 res!2342200) b!5491704))

(assert (= (and b!5491704 c!958933) b!5491702))

(assert (= (and b!5491704 (not c!958933)) b!5491711))

(assert (= (and b!5491711 c!958935) b!5491705))

(assert (= (and b!5491711 (not c!958935)) b!5491703))

(assert (= (and b!5491705 (not res!2342198)) b!5491707))

(assert (= (and b!5491703 c!958934) b!5491709))

(assert (= (and b!5491703 (not c!958934)) b!5491710))

(assert (= (and b!5491709 (not res!2342199)) b!5491701))

(assert (= (or b!5491701 b!5491710) bm!404938))

(assert (= (or b!5491708 b!5491709) bm!404937))

(declare-fun m!6504308 () Bool)

(assert (=> b!5491705 m!6504308))

(assert (=> bm!404937 m!6503728))

(declare-fun m!6504310 () Bool)

(assert (=> bm!404938 m!6504310))

(declare-fun m!6504312 () Bool)

(assert (=> b!5491707 m!6504312))

(assert (=> b!5490847 d!1742030))

(declare-fun d!1742032 () Bool)

(declare-fun res!2342201 () Bool)

(declare-fun e!3397943 () Bool)

(assert (=> d!1742032 (=> res!2342201 e!3397943)))

(assert (=> d!1742032 (= res!2342201 ((_ is Nil!62546) (exprs!5341 (h!68995 (t!375902 zl!343)))))))

(assert (=> d!1742032 (= (forall!14650 (exprs!5341 (h!68995 (t!375902 zl!343))) lambda!294042) e!3397943)))

(declare-fun b!5491712 () Bool)

(declare-fun e!3397944 () Bool)

(assert (=> b!5491712 (= e!3397943 e!3397944)))

(declare-fun res!2342202 () Bool)

(assert (=> b!5491712 (=> (not res!2342202) (not e!3397944))))

(assert (=> b!5491712 (= res!2342202 (dynLambda!24455 lambda!294042 (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343))))))))

(declare-fun b!5491713 () Bool)

(assert (=> b!5491713 (= e!3397944 (forall!14650 (t!375901 (exprs!5341 (h!68995 (t!375902 zl!343)))) lambda!294042))))

(assert (= (and d!1742032 (not res!2342201)) b!5491712))

(assert (= (and b!5491712 res!2342202) b!5491713))

(declare-fun b_lambda!208423 () Bool)

(assert (=> (not b_lambda!208423) (not b!5491712)))

(declare-fun m!6504314 () Bool)

(assert (=> b!5491712 m!6504314))

(declare-fun m!6504316 () Bool)

(assert (=> b!5491713 m!6504316))

(assert (=> d!1741766 d!1742032))

(declare-fun bm!404939 () Bool)

(declare-fun call!404946 () Bool)

(declare-fun call!404944 () Bool)

(assert (=> bm!404939 (= call!404946 call!404944)))

(declare-fun b!5491714 () Bool)

(declare-fun res!2342206 () Bool)

(declare-fun e!3397947 () Bool)

(assert (=> b!5491714 (=> res!2342206 e!3397947)))

(assert (=> b!5491714 (= res!2342206 (not ((_ is Concat!24302) (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))

(declare-fun e!3397945 () Bool)

(assert (=> b!5491714 (= e!3397945 e!3397947)))

(declare-fun b!5491715 () Bool)

(declare-fun e!3397948 () Bool)

(declare-fun call!404945 () Bool)

(assert (=> b!5491715 (= e!3397948 call!404945)))

(declare-fun b!5491716 () Bool)

(declare-fun e!3397949 () Bool)

(assert (=> b!5491716 (= e!3397949 call!404945)))

(declare-fun b!5491717 () Bool)

(declare-fun res!2342207 () Bool)

(assert (=> b!5491717 (=> (not res!2342207) (not e!3397948))))

(assert (=> b!5491717 (= res!2342207 call!404946)))

(assert (=> b!5491717 (= e!3397945 e!3397948)))

(declare-fun b!5491718 () Bool)

(declare-fun e!3397951 () Bool)

(assert (=> b!5491718 (= e!3397951 call!404944)))

(declare-fun d!1742034 () Bool)

(declare-fun res!2342204 () Bool)

(declare-fun e!3397946 () Bool)

(assert (=> d!1742034 (=> res!2342204 e!3397946)))

(assert (=> d!1742034 (= res!2342204 ((_ is ElementMatch!15457) (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))

(assert (=> d!1742034 (= (validRegex!7193 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))) e!3397946)))

(declare-fun b!5491719 () Bool)

(declare-fun e!3397950 () Bool)

(assert (=> b!5491719 (= e!3397950 e!3397951)))

(declare-fun res!2342205 () Bool)

(assert (=> b!5491719 (= res!2342205 (not (nullable!5500 (reg!15786 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))))

(assert (=> b!5491719 (=> (not res!2342205) (not e!3397951))))

(declare-fun b!5491720 () Bool)

(assert (=> b!5491720 (= e!3397947 e!3397949)))

(declare-fun res!2342203 () Bool)

(assert (=> b!5491720 (=> (not res!2342203) (not e!3397949))))

(assert (=> b!5491720 (= res!2342203 call!404946)))

(declare-fun b!5491721 () Bool)

(assert (=> b!5491721 (= e!3397950 e!3397945)))

(declare-fun c!958937 () Bool)

(assert (=> b!5491721 (= c!958937 ((_ is Union!15457) (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))

(declare-fun b!5491722 () Bool)

(assert (=> b!5491722 (= e!3397946 e!3397950)))

(declare-fun c!958938 () Bool)

(assert (=> b!5491722 (= c!958938 ((_ is Star!15457) (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))

(declare-fun bm!404940 () Bool)

(assert (=> bm!404940 (= call!404945 (validRegex!7193 (ite c!958937 (regTwo!31427 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))) (regTwo!31426 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))))))))

(declare-fun bm!404941 () Bool)

(assert (=> bm!404941 (= call!404944 (validRegex!7193 (ite c!958938 (reg!15786 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))) (ite c!958937 (regOne!31427 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))))) (regOne!31426 (ite c!958815 (regTwo!31427 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292)))) (regTwo!31426 (ite c!958716 (reg!15786 r!7292) (ite c!958715 (regOne!31427 r!7292) (regOne!31426 r!7292))))))))))))

(assert (= (and d!1742034 (not res!2342204)) b!5491722))

(assert (= (and b!5491722 c!958938) b!5491719))

(assert (= (and b!5491722 (not c!958938)) b!5491721))

(assert (= (and b!5491719 res!2342205) b!5491718))

(assert (= (and b!5491721 c!958937) b!5491717))

(assert (= (and b!5491721 (not c!958937)) b!5491714))

(assert (= (and b!5491717 res!2342207) b!5491715))

(assert (= (and b!5491714 (not res!2342206)) b!5491720))

(assert (= (and b!5491720 res!2342203) b!5491716))

(assert (= (or b!5491715 b!5491716) bm!404940))

(assert (= (or b!5491717 b!5491720) bm!404939))

(assert (= (or b!5491718 bm!404939) bm!404941))

(declare-fun m!6504318 () Bool)

(assert (=> b!5491719 m!6504318))

(declare-fun m!6504320 () Bool)

(assert (=> bm!404940 m!6504320))

(declare-fun m!6504322 () Bool)

(assert (=> bm!404941 m!6504322))

(assert (=> bm!404842 d!1742034))

(declare-fun d!1742036 () Bool)

(declare-fun res!2342208 () Bool)

(declare-fun e!3397952 () Bool)

(assert (=> d!1742036 (=> res!2342208 e!3397952)))

(assert (=> d!1742036 (= res!2342208 ((_ is Nil!62546) (t!375901 (exprs!5341 (h!68995 zl!343)))))))

(assert (=> d!1742036 (= (forall!14650 (t!375901 (exprs!5341 (h!68995 zl!343))) lambda!294021) e!3397952)))

(declare-fun b!5491723 () Bool)

(declare-fun e!3397953 () Bool)

(assert (=> b!5491723 (= e!3397952 e!3397953)))

(declare-fun res!2342209 () Bool)

(assert (=> b!5491723 (=> (not res!2342209) (not e!3397953))))

(assert (=> b!5491723 (= res!2342209 (dynLambda!24455 lambda!294021 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun b!5491724 () Bool)

(assert (=> b!5491724 (= e!3397953 (forall!14650 (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))) lambda!294021))))

(assert (= (and d!1742036 (not res!2342208)) b!5491723))

(assert (= (and b!5491723 res!2342209) b!5491724))

(declare-fun b_lambda!208425 () Bool)

(assert (=> (not b_lambda!208425) (not b!5491723)))

(declare-fun m!6504324 () Bool)

(assert (=> b!5491723 m!6504324))

(declare-fun m!6504326 () Bool)

(assert (=> b!5491724 m!6504326))

(assert (=> b!5491061 d!1742036))

(declare-fun d!1742038 () Bool)

(assert (=> d!1742038 (= (Exists!2567 (ite c!958803 lambda!294051 lambda!294052)) (choose!41760 (ite c!958803 lambda!294051 lambda!294052)))))

(declare-fun bs!1267454 () Bool)

(assert (= bs!1267454 d!1742038))

(declare-fun m!6504328 () Bool)

(assert (=> bs!1267454 m!6504328))

(assert (=> bm!404835 d!1742038))

(declare-fun e!3397954 () Bool)

(assert (=> b!5491148 (= tp!1509793 e!3397954)))

(declare-fun b!5491728 () Bool)

(declare-fun tp!1510008 () Bool)

(declare-fun tp!1510007 () Bool)

(assert (=> b!5491728 (= e!3397954 (and tp!1510008 tp!1510007))))

(declare-fun b!5491727 () Bool)

(declare-fun tp!1510005 () Bool)

(assert (=> b!5491727 (= e!3397954 tp!1510005)))

(declare-fun b!5491726 () Bool)

(declare-fun tp!1510006 () Bool)

(declare-fun tp!1510004 () Bool)

(assert (=> b!5491726 (= e!3397954 (and tp!1510006 tp!1510004))))

(declare-fun b!5491725 () Bool)

(assert (=> b!5491725 (= e!3397954 tp_is_empty!40167)))

(assert (= (and b!5491148 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31427 (regTwo!31426 r!7292))))) b!5491725))

(assert (= (and b!5491148 ((_ is Concat!24302) (reg!15786 (regTwo!31427 (regTwo!31426 r!7292))))) b!5491726))

(assert (= (and b!5491148 ((_ is Star!15457) (reg!15786 (regTwo!31427 (regTwo!31426 r!7292))))) b!5491727))

(assert (= (and b!5491148 ((_ is Union!15457) (reg!15786 (regTwo!31427 (regTwo!31426 r!7292))))) b!5491728))

(declare-fun e!3397955 () Bool)

(assert (=> b!5491062 (= tp!1509702 e!3397955)))

(declare-fun b!5491732 () Bool)

(declare-fun tp!1510013 () Bool)

(declare-fun tp!1510012 () Bool)

(assert (=> b!5491732 (= e!3397955 (and tp!1510013 tp!1510012))))

(declare-fun b!5491731 () Bool)

(declare-fun tp!1510010 () Bool)

(assert (=> b!5491731 (= e!3397955 tp!1510010)))

(declare-fun b!5491730 () Bool)

(declare-fun tp!1510011 () Bool)

(declare-fun tp!1510009 () Bool)

(assert (=> b!5491730 (= e!3397955 (and tp!1510011 tp!1510009))))

(declare-fun b!5491729 () Bool)

(assert (=> b!5491729 (= e!3397955 tp_is_empty!40167)))

(assert (= (and b!5491062 ((_ is ElementMatch!15457) (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343)))))) b!5491729))

(assert (= (and b!5491062 ((_ is Concat!24302) (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343)))))) b!5491730))

(assert (= (and b!5491062 ((_ is Star!15457) (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343)))))) b!5491731))

(assert (= (and b!5491062 ((_ is Union!15457) (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343)))))) b!5491732))

(declare-fun b!5491733 () Bool)

(declare-fun e!3397956 () Bool)

(declare-fun tp!1510014 () Bool)

(declare-fun tp!1510015 () Bool)

(assert (=> b!5491733 (= e!3397956 (and tp!1510014 tp!1510015))))

(assert (=> b!5491062 (= tp!1509703 e!3397956)))

(assert (= (and b!5491062 ((_ is Cons!62546) (t!375901 (exprs!5341 (h!68995 (t!375902 zl!343)))))) b!5491733))

(declare-fun e!3397957 () Bool)

(assert (=> b!5491190 (= tp!1509846 e!3397957)))

(declare-fun b!5491737 () Bool)

(declare-fun tp!1510020 () Bool)

(declare-fun tp!1510019 () Bool)

(assert (=> b!5491737 (= e!3397957 (and tp!1510020 tp!1510019))))

(declare-fun b!5491736 () Bool)

(declare-fun tp!1510017 () Bool)

(assert (=> b!5491736 (= e!3397957 tp!1510017)))

(declare-fun b!5491735 () Bool)

(declare-fun tp!1510018 () Bool)

(declare-fun tp!1510016 () Bool)

(assert (=> b!5491735 (= e!3397957 (and tp!1510018 tp!1510016))))

(declare-fun b!5491734 () Bool)

(assert (=> b!5491734 (= e!3397957 tp_is_empty!40167)))

(assert (= (and b!5491190 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))))) b!5491734))

(assert (= (and b!5491190 ((_ is Concat!24302) (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))))) b!5491735))

(assert (= (and b!5491190 ((_ is Star!15457) (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))))) b!5491736))

(assert (= (and b!5491190 ((_ is Union!15457) (reg!15786 (regTwo!31427 (regTwo!31427 r!7292))))) b!5491737))

(declare-fun e!3397958 () Bool)

(assert (=> b!5491139 (= tp!1509784 e!3397958)))

(declare-fun b!5491741 () Bool)

(declare-fun tp!1510025 () Bool)

(declare-fun tp!1510024 () Bool)

(assert (=> b!5491741 (= e!3397958 (and tp!1510025 tp!1510024))))

(declare-fun b!5491740 () Bool)

(declare-fun tp!1510022 () Bool)

(assert (=> b!5491740 (= e!3397958 tp!1510022)))

(declare-fun b!5491739 () Bool)

(declare-fun tp!1510023 () Bool)

(declare-fun tp!1510021 () Bool)

(assert (=> b!5491739 (= e!3397958 (and tp!1510023 tp!1510021))))

(declare-fun b!5491738 () Bool)

(assert (=> b!5491738 (= e!3397958 tp_is_empty!40167)))

(assert (= (and b!5491139 ((_ is ElementMatch!15457) (regOne!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491738))

(assert (= (and b!5491139 ((_ is Concat!24302) (regOne!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491739))

(assert (= (and b!5491139 ((_ is Star!15457) (regOne!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491740))

(assert (= (and b!5491139 ((_ is Union!15457) (regOne!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491741))

(declare-fun e!3397959 () Bool)

(assert (=> b!5491139 (= tp!1509782 e!3397959)))

(declare-fun b!5491745 () Bool)

(declare-fun tp!1510030 () Bool)

(declare-fun tp!1510029 () Bool)

(assert (=> b!5491745 (= e!3397959 (and tp!1510030 tp!1510029))))

(declare-fun b!5491744 () Bool)

(declare-fun tp!1510027 () Bool)

(assert (=> b!5491744 (= e!3397959 tp!1510027)))

(declare-fun b!5491743 () Bool)

(declare-fun tp!1510028 () Bool)

(declare-fun tp!1510026 () Bool)

(assert (=> b!5491743 (= e!3397959 (and tp!1510028 tp!1510026))))

(declare-fun b!5491742 () Bool)

(assert (=> b!5491742 (= e!3397959 tp_is_empty!40167)))

(assert (= (and b!5491139 ((_ is ElementMatch!15457) (regTwo!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491742))

(assert (= (and b!5491139 ((_ is Concat!24302) (regTwo!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491743))

(assert (= (and b!5491139 ((_ is Star!15457) (regTwo!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491744))

(assert (= (and b!5491139 ((_ is Union!15457) (regTwo!31426 (reg!15786 (regTwo!31426 r!7292))))) b!5491745))

(declare-fun e!3397960 () Bool)

(assert (=> b!5491181 (= tp!1509837 e!3397960)))

(declare-fun b!5491749 () Bool)

(declare-fun tp!1510035 () Bool)

(declare-fun tp!1510034 () Bool)

(assert (=> b!5491749 (= e!3397960 (and tp!1510035 tp!1510034))))

(declare-fun b!5491748 () Bool)

(declare-fun tp!1510032 () Bool)

(assert (=> b!5491748 (= e!3397960 tp!1510032)))

(declare-fun b!5491747 () Bool)

(declare-fun tp!1510033 () Bool)

(declare-fun tp!1510031 () Bool)

(assert (=> b!5491747 (= e!3397960 (and tp!1510033 tp!1510031))))

(declare-fun b!5491746 () Bool)

(assert (=> b!5491746 (= e!3397960 tp_is_empty!40167)))

(assert (= (and b!5491181 ((_ is ElementMatch!15457) (regOne!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491746))

(assert (= (and b!5491181 ((_ is Concat!24302) (regOne!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491747))

(assert (= (and b!5491181 ((_ is Star!15457) (regOne!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491748))

(assert (= (and b!5491181 ((_ is Union!15457) (regOne!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491749))

(declare-fun e!3397961 () Bool)

(assert (=> b!5491181 (= tp!1509835 e!3397961)))

(declare-fun b!5491753 () Bool)

(declare-fun tp!1510040 () Bool)

(declare-fun tp!1510039 () Bool)

(assert (=> b!5491753 (= e!3397961 (and tp!1510040 tp!1510039))))

(declare-fun b!5491752 () Bool)

(declare-fun tp!1510037 () Bool)

(assert (=> b!5491752 (= e!3397961 tp!1510037)))

(declare-fun b!5491751 () Bool)

(declare-fun tp!1510038 () Bool)

(declare-fun tp!1510036 () Bool)

(assert (=> b!5491751 (= e!3397961 (and tp!1510038 tp!1510036))))

(declare-fun b!5491750 () Bool)

(assert (=> b!5491750 (= e!3397961 tp_is_empty!40167)))

(assert (= (and b!5491181 ((_ is ElementMatch!15457) (regTwo!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491750))

(assert (= (and b!5491181 ((_ is Concat!24302) (regTwo!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491751))

(assert (= (and b!5491181 ((_ is Star!15457) (regTwo!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491752))

(assert (= (and b!5491181 ((_ is Union!15457) (regTwo!31426 (reg!15786 (regTwo!31427 r!7292))))) b!5491753))

(declare-fun e!3397962 () Bool)

(assert (=> b!5491165 (= tp!1509815 e!3397962)))

(declare-fun b!5491757 () Bool)

(declare-fun tp!1510045 () Bool)

(declare-fun tp!1510044 () Bool)

(assert (=> b!5491757 (= e!3397962 (and tp!1510045 tp!1510044))))

(declare-fun b!5491756 () Bool)

(declare-fun tp!1510042 () Bool)

(assert (=> b!5491756 (= e!3397962 tp!1510042)))

(declare-fun b!5491755 () Bool)

(declare-fun tp!1510043 () Bool)

(declare-fun tp!1510041 () Bool)

(assert (=> b!5491755 (= e!3397962 (and tp!1510043 tp!1510041))))

(declare-fun b!5491754 () Bool)

(assert (=> b!5491754 (= e!3397962 tp_is_empty!40167)))

(assert (= (and b!5491165 ((_ is ElementMatch!15457) (reg!15786 (regOne!31426 (regTwo!31427 r!7292))))) b!5491754))

(assert (= (and b!5491165 ((_ is Concat!24302) (reg!15786 (regOne!31426 (regTwo!31427 r!7292))))) b!5491755))

(assert (= (and b!5491165 ((_ is Star!15457) (reg!15786 (regOne!31426 (regTwo!31427 r!7292))))) b!5491756))

(assert (= (and b!5491165 ((_ is Union!15457) (reg!15786 (regOne!31426 (regTwo!31427 r!7292))))) b!5491757))

(declare-fun e!3397963 () Bool)

(assert (=> b!5491112 (= tp!1509749 e!3397963)))

(declare-fun b!5491761 () Bool)

(declare-fun tp!1510050 () Bool)

(declare-fun tp!1510049 () Bool)

(assert (=> b!5491761 (= e!3397963 (and tp!1510050 tp!1510049))))

(declare-fun b!5491760 () Bool)

(declare-fun tp!1510047 () Bool)

(assert (=> b!5491760 (= e!3397963 tp!1510047)))

(declare-fun b!5491759 () Bool)

(declare-fun tp!1510048 () Bool)

(declare-fun tp!1510046 () Bool)

(assert (=> b!5491759 (= e!3397963 (and tp!1510048 tp!1510046))))

(declare-fun b!5491758 () Bool)

(assert (=> b!5491758 (= e!3397963 tp_is_empty!40167)))

(assert (= (and b!5491112 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491758))

(assert (= (and b!5491112 ((_ is Concat!24302) (regOne!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491759))

(assert (= (and b!5491112 ((_ is Star!15457) (regOne!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491760))

(assert (= (and b!5491112 ((_ is Union!15457) (regOne!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491761))

(declare-fun e!3397964 () Bool)

(assert (=> b!5491112 (= tp!1509748 e!3397964)))

(declare-fun b!5491765 () Bool)

(declare-fun tp!1510055 () Bool)

(declare-fun tp!1510054 () Bool)

(assert (=> b!5491765 (= e!3397964 (and tp!1510055 tp!1510054))))

(declare-fun b!5491764 () Bool)

(declare-fun tp!1510052 () Bool)

(assert (=> b!5491764 (= e!3397964 tp!1510052)))

(declare-fun b!5491763 () Bool)

(declare-fun tp!1510053 () Bool)

(declare-fun tp!1510051 () Bool)

(assert (=> b!5491763 (= e!3397964 (and tp!1510053 tp!1510051))))

(declare-fun b!5491762 () Bool)

(assert (=> b!5491762 (= e!3397964 tp_is_empty!40167)))

(assert (= (and b!5491112 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491762))

(assert (= (and b!5491112 ((_ is Concat!24302) (regTwo!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491763))

(assert (= (and b!5491112 ((_ is Star!15457) (regTwo!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491764))

(assert (= (and b!5491112 ((_ is Union!15457) (regTwo!31427 (regTwo!31426 (regOne!31427 r!7292))))) b!5491765))

(declare-fun e!3397965 () Bool)

(assert (=> b!5491141 (= tp!1509786 e!3397965)))

(declare-fun b!5491769 () Bool)

(declare-fun tp!1510060 () Bool)

(declare-fun tp!1510059 () Bool)

(assert (=> b!5491769 (= e!3397965 (and tp!1510060 tp!1510059))))

(declare-fun b!5491768 () Bool)

(declare-fun tp!1510057 () Bool)

(assert (=> b!5491768 (= e!3397965 tp!1510057)))

(declare-fun b!5491767 () Bool)

(declare-fun tp!1510058 () Bool)

(declare-fun tp!1510056 () Bool)

(assert (=> b!5491767 (= e!3397965 (and tp!1510058 tp!1510056))))

(declare-fun b!5491766 () Bool)

(assert (=> b!5491766 (= e!3397965 tp_is_empty!40167)))

(assert (= (and b!5491141 ((_ is ElementMatch!15457) (regOne!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491766))

(assert (= (and b!5491141 ((_ is Concat!24302) (regOne!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491767))

(assert (= (and b!5491141 ((_ is Star!15457) (regOne!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491768))

(assert (= (and b!5491141 ((_ is Union!15457) (regOne!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491769))

(declare-fun e!3397966 () Bool)

(assert (=> b!5491141 (= tp!1509785 e!3397966)))

(declare-fun b!5491773 () Bool)

(declare-fun tp!1510065 () Bool)

(declare-fun tp!1510064 () Bool)

(assert (=> b!5491773 (= e!3397966 (and tp!1510065 tp!1510064))))

(declare-fun b!5491772 () Bool)

(declare-fun tp!1510062 () Bool)

(assert (=> b!5491772 (= e!3397966 tp!1510062)))

(declare-fun b!5491771 () Bool)

(declare-fun tp!1510063 () Bool)

(declare-fun tp!1510061 () Bool)

(assert (=> b!5491771 (= e!3397966 (and tp!1510063 tp!1510061))))

(declare-fun b!5491770 () Bool)

(assert (=> b!5491770 (= e!3397966 tp_is_empty!40167)))

(assert (= (and b!5491141 ((_ is ElementMatch!15457) (regTwo!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491770))

(assert (= (and b!5491141 ((_ is Concat!24302) (regTwo!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491771))

(assert (= (and b!5491141 ((_ is Star!15457) (regTwo!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491772))

(assert (= (and b!5491141 ((_ is Union!15457) (regTwo!31427 (reg!15786 (regTwo!31426 r!7292))))) b!5491773))

(declare-fun e!3397967 () Bool)

(assert (=> b!5491155 (= tp!1509804 e!3397967)))

(declare-fun b!5491777 () Bool)

(declare-fun tp!1510070 () Bool)

(declare-fun tp!1510069 () Bool)

(assert (=> b!5491777 (= e!3397967 (and tp!1510070 tp!1510069))))

(declare-fun b!5491776 () Bool)

(declare-fun tp!1510067 () Bool)

(assert (=> b!5491776 (= e!3397967 tp!1510067)))

(declare-fun b!5491775 () Bool)

(declare-fun tp!1510068 () Bool)

(declare-fun tp!1510066 () Bool)

(assert (=> b!5491775 (= e!3397967 (and tp!1510068 tp!1510066))))

(declare-fun b!5491774 () Bool)

(assert (=> b!5491774 (= e!3397967 tp_is_empty!40167)))

(assert (= (and b!5491155 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491774))

(assert (= (and b!5491155 ((_ is Concat!24302) (regOne!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491775))

(assert (= (and b!5491155 ((_ is Star!15457) (regOne!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491776))

(assert (= (and b!5491155 ((_ is Union!15457) (regOne!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491777))

(declare-fun e!3397968 () Bool)

(assert (=> b!5491155 (= tp!1509802 e!3397968)))

(declare-fun b!5491781 () Bool)

(declare-fun tp!1510075 () Bool)

(declare-fun tp!1510074 () Bool)

(assert (=> b!5491781 (= e!3397968 (and tp!1510075 tp!1510074))))

(declare-fun b!5491780 () Bool)

(declare-fun tp!1510072 () Bool)

(assert (=> b!5491780 (= e!3397968 tp!1510072)))

(declare-fun b!5491779 () Bool)

(declare-fun tp!1510073 () Bool)

(declare-fun tp!1510071 () Bool)

(assert (=> b!5491779 (= e!3397968 (and tp!1510073 tp!1510071))))

(declare-fun b!5491778 () Bool)

(assert (=> b!5491778 (= e!3397968 tp_is_empty!40167)))

(assert (= (and b!5491155 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491778))

(assert (= (and b!5491155 ((_ is Concat!24302) (regTwo!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491779))

(assert (= (and b!5491155 ((_ is Star!15457) (regTwo!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491780))

(assert (= (and b!5491155 ((_ is Union!15457) (regTwo!31426 (regTwo!31426 (reg!15786 r!7292))))) b!5491781))

(declare-fun e!3397969 () Bool)

(assert (=> b!5491099 (= tp!1509732 e!3397969)))

(declare-fun b!5491785 () Bool)

(declare-fun tp!1510080 () Bool)

(declare-fun tp!1510079 () Bool)

(assert (=> b!5491785 (= e!3397969 (and tp!1510080 tp!1510079))))

(declare-fun b!5491784 () Bool)

(declare-fun tp!1510077 () Bool)

(assert (=> b!5491784 (= e!3397969 tp!1510077)))

(declare-fun b!5491783 () Bool)

(declare-fun tp!1510078 () Bool)

(declare-fun tp!1510076 () Bool)

(assert (=> b!5491783 (= e!3397969 (and tp!1510078 tp!1510076))))

(declare-fun b!5491782 () Bool)

(assert (=> b!5491782 (= e!3397969 tp_is_empty!40167)))

(assert (= (and b!5491099 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491782))

(assert (= (and b!5491099 ((_ is Concat!24302) (regOne!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491783))

(assert (= (and b!5491099 ((_ is Star!15457) (regOne!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491784))

(assert (= (and b!5491099 ((_ is Union!15457) (regOne!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491785))

(declare-fun e!3397970 () Bool)

(assert (=> b!5491099 (= tp!1509731 e!3397970)))

(declare-fun b!5491789 () Bool)

(declare-fun tp!1510085 () Bool)

(declare-fun tp!1510084 () Bool)

(assert (=> b!5491789 (= e!3397970 (and tp!1510085 tp!1510084))))

(declare-fun b!5491788 () Bool)

(declare-fun tp!1510082 () Bool)

(assert (=> b!5491788 (= e!3397970 tp!1510082)))

(declare-fun b!5491787 () Bool)

(declare-fun tp!1510083 () Bool)

(declare-fun tp!1510081 () Bool)

(assert (=> b!5491787 (= e!3397970 (and tp!1510083 tp!1510081))))

(declare-fun b!5491786 () Bool)

(assert (=> b!5491786 (= e!3397970 tp_is_empty!40167)))

(assert (= (and b!5491099 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491786))

(assert (= (and b!5491099 ((_ is Concat!24302) (regTwo!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491787))

(assert (= (and b!5491099 ((_ is Star!15457) (regTwo!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491788))

(assert (= (and b!5491099 ((_ is Union!15457) (regTwo!31427 (regOne!31427 (regOne!31426 r!7292))))) b!5491789))

(declare-fun e!3397971 () Bool)

(assert (=> b!5491090 (= tp!1509719 e!3397971)))

(declare-fun b!5491793 () Bool)

(declare-fun tp!1510090 () Bool)

(declare-fun tp!1510089 () Bool)

(assert (=> b!5491793 (= e!3397971 (and tp!1510090 tp!1510089))))

(declare-fun b!5491792 () Bool)

(declare-fun tp!1510087 () Bool)

(assert (=> b!5491792 (= e!3397971 tp!1510087)))

(declare-fun b!5491791 () Bool)

(declare-fun tp!1510088 () Bool)

(declare-fun tp!1510086 () Bool)

(assert (=> b!5491791 (= e!3397971 (and tp!1510088 tp!1510086))))

(declare-fun b!5491790 () Bool)

(assert (=> b!5491790 (= e!3397971 tp_is_empty!40167)))

(assert (= (and b!5491090 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31427 (regOne!31427 r!7292))))) b!5491790))

(assert (= (and b!5491090 ((_ is Concat!24302) (reg!15786 (regTwo!31427 (regOne!31427 r!7292))))) b!5491791))

(assert (= (and b!5491090 ((_ is Star!15457) (reg!15786 (regTwo!31427 (regOne!31427 r!7292))))) b!5491792))

(assert (= (and b!5491090 ((_ is Union!15457) (reg!15786 (regTwo!31427 (regOne!31427 r!7292))))) b!5491793))

(declare-fun e!3397972 () Bool)

(assert (=> b!5491157 (= tp!1509806 e!3397972)))

(declare-fun b!5491797 () Bool)

(declare-fun tp!1510095 () Bool)

(declare-fun tp!1510094 () Bool)

(assert (=> b!5491797 (= e!3397972 (and tp!1510095 tp!1510094))))

(declare-fun b!5491796 () Bool)

(declare-fun tp!1510092 () Bool)

(assert (=> b!5491796 (= e!3397972 tp!1510092)))

(declare-fun b!5491795 () Bool)

(declare-fun tp!1510093 () Bool)

(declare-fun tp!1510091 () Bool)

(assert (=> b!5491795 (= e!3397972 (and tp!1510093 tp!1510091))))

(declare-fun b!5491794 () Bool)

(assert (=> b!5491794 (= e!3397972 tp_is_empty!40167)))

(assert (= (and b!5491157 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491794))

(assert (= (and b!5491157 ((_ is Concat!24302) (regOne!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491795))

(assert (= (and b!5491157 ((_ is Star!15457) (regOne!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491796))

(assert (= (and b!5491157 ((_ is Union!15457) (regOne!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491797))

(declare-fun e!3397973 () Bool)

(assert (=> b!5491157 (= tp!1509805 e!3397973)))

(declare-fun b!5491801 () Bool)

(declare-fun tp!1510100 () Bool)

(declare-fun tp!1510099 () Bool)

(assert (=> b!5491801 (= e!3397973 (and tp!1510100 tp!1510099))))

(declare-fun b!5491800 () Bool)

(declare-fun tp!1510097 () Bool)

(assert (=> b!5491800 (= e!3397973 tp!1510097)))

(declare-fun b!5491799 () Bool)

(declare-fun tp!1510098 () Bool)

(declare-fun tp!1510096 () Bool)

(assert (=> b!5491799 (= e!3397973 (and tp!1510098 tp!1510096))))

(declare-fun b!5491798 () Bool)

(assert (=> b!5491798 (= e!3397973 tp_is_empty!40167)))

(assert (= (and b!5491157 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491798))

(assert (= (and b!5491157 ((_ is Concat!24302) (regTwo!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491799))

(assert (= (and b!5491157 ((_ is Star!15457) (regTwo!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491800))

(assert (= (and b!5491157 ((_ is Union!15457) (regTwo!31427 (regTwo!31426 (reg!15786 r!7292))))) b!5491801))

(declare-fun e!3397974 () Bool)

(assert (=> b!5491110 (= tp!1509747 e!3397974)))

(declare-fun b!5491805 () Bool)

(declare-fun tp!1510105 () Bool)

(declare-fun tp!1510104 () Bool)

(assert (=> b!5491805 (= e!3397974 (and tp!1510105 tp!1510104))))

(declare-fun b!5491804 () Bool)

(declare-fun tp!1510102 () Bool)

(assert (=> b!5491804 (= e!3397974 tp!1510102)))

(declare-fun b!5491803 () Bool)

(declare-fun tp!1510103 () Bool)

(declare-fun tp!1510101 () Bool)

(assert (=> b!5491803 (= e!3397974 (and tp!1510103 tp!1510101))))

(declare-fun b!5491802 () Bool)

(assert (=> b!5491802 (= e!3397974 tp_is_empty!40167)))

(assert (= (and b!5491110 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491802))

(assert (= (and b!5491110 ((_ is Concat!24302) (regOne!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491803))

(assert (= (and b!5491110 ((_ is Star!15457) (regOne!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491804))

(assert (= (and b!5491110 ((_ is Union!15457) (regOne!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491805))

(declare-fun e!3397975 () Bool)

(assert (=> b!5491110 (= tp!1509745 e!3397975)))

(declare-fun b!5491809 () Bool)

(declare-fun tp!1510110 () Bool)

(declare-fun tp!1510109 () Bool)

(assert (=> b!5491809 (= e!3397975 (and tp!1510110 tp!1510109))))

(declare-fun b!5491808 () Bool)

(declare-fun tp!1510107 () Bool)

(assert (=> b!5491808 (= e!3397975 tp!1510107)))

(declare-fun b!5491807 () Bool)

(declare-fun tp!1510108 () Bool)

(declare-fun tp!1510106 () Bool)

(assert (=> b!5491807 (= e!3397975 (and tp!1510108 tp!1510106))))

(declare-fun b!5491806 () Bool)

(assert (=> b!5491806 (= e!3397975 tp_is_empty!40167)))

(assert (= (and b!5491110 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491806))

(assert (= (and b!5491110 ((_ is Concat!24302) (regTwo!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491807))

(assert (= (and b!5491110 ((_ is Star!15457) (regTwo!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491808))

(assert (= (and b!5491110 ((_ is Union!15457) (regTwo!31426 (regTwo!31426 (regOne!31427 r!7292))))) b!5491809))

(declare-fun e!3397976 () Bool)

(assert (=> b!5491067 (= tp!1509709 e!3397976)))

(declare-fun b!5491813 () Bool)

(declare-fun tp!1510115 () Bool)

(declare-fun tp!1510114 () Bool)

(assert (=> b!5491813 (= e!3397976 (and tp!1510115 tp!1510114))))

(declare-fun b!5491812 () Bool)

(declare-fun tp!1510112 () Bool)

(assert (=> b!5491812 (= e!3397976 tp!1510112)))

(declare-fun b!5491811 () Bool)

(declare-fun tp!1510113 () Bool)

(declare-fun tp!1510111 () Bool)

(assert (=> b!5491811 (= e!3397976 (and tp!1510113 tp!1510111))))

(declare-fun b!5491810 () Bool)

(assert (=> b!5491810 (= e!3397976 tp_is_empty!40167)))

(assert (= (and b!5491067 ((_ is ElementMatch!15457) (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))))) b!5491810))

(assert (= (and b!5491067 ((_ is Concat!24302) (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))))) b!5491811))

(assert (= (and b!5491067 ((_ is Star!15457) (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))))) b!5491812))

(assert (= (and b!5491067 ((_ is Union!15457) (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343)))))) b!5491813))

(declare-fun b!5491814 () Bool)

(declare-fun e!3397977 () Bool)

(declare-fun tp!1510116 () Bool)

(declare-fun tp!1510117 () Bool)

(assert (=> b!5491814 (= e!3397977 (and tp!1510116 tp!1510117))))

(assert (=> b!5491067 (= tp!1509710 e!3397977)))

(assert (= (and b!5491067 ((_ is Cons!62546) (t!375901 (t!375901 (exprs!5341 (h!68995 zl!343)))))) b!5491814))

(declare-fun e!3397978 () Bool)

(assert (=> b!5491097 (= tp!1509730 e!3397978)))

(declare-fun b!5491818 () Bool)

(declare-fun tp!1510122 () Bool)

(declare-fun tp!1510121 () Bool)

(assert (=> b!5491818 (= e!3397978 (and tp!1510122 tp!1510121))))

(declare-fun b!5491817 () Bool)

(declare-fun tp!1510119 () Bool)

(assert (=> b!5491817 (= e!3397978 tp!1510119)))

(declare-fun b!5491816 () Bool)

(declare-fun tp!1510120 () Bool)

(declare-fun tp!1510118 () Bool)

(assert (=> b!5491816 (= e!3397978 (and tp!1510120 tp!1510118))))

(declare-fun b!5491815 () Bool)

(assert (=> b!5491815 (= e!3397978 tp_is_empty!40167)))

(assert (= (and b!5491097 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491815))

(assert (= (and b!5491097 ((_ is Concat!24302) (regOne!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491816))

(assert (= (and b!5491097 ((_ is Star!15457) (regOne!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491817))

(assert (= (and b!5491097 ((_ is Union!15457) (regOne!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491818))

(declare-fun e!3397979 () Bool)

(assert (=> b!5491097 (= tp!1509728 e!3397979)))

(declare-fun b!5491822 () Bool)

(declare-fun tp!1510127 () Bool)

(declare-fun tp!1510126 () Bool)

(assert (=> b!5491822 (= e!3397979 (and tp!1510127 tp!1510126))))

(declare-fun b!5491821 () Bool)

(declare-fun tp!1510124 () Bool)

(assert (=> b!5491821 (= e!3397979 tp!1510124)))

(declare-fun b!5491820 () Bool)

(declare-fun tp!1510125 () Bool)

(declare-fun tp!1510123 () Bool)

(assert (=> b!5491820 (= e!3397979 (and tp!1510125 tp!1510123))))

(declare-fun b!5491819 () Bool)

(assert (=> b!5491819 (= e!3397979 tp_is_empty!40167)))

(assert (= (and b!5491097 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491819))

(assert (= (and b!5491097 ((_ is Concat!24302) (regTwo!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491820))

(assert (= (and b!5491097 ((_ is Star!15457) (regTwo!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491821))

(assert (= (and b!5491097 ((_ is Union!15457) (regTwo!31426 (regOne!31427 (regOne!31426 r!7292))))) b!5491822))

(declare-fun e!3397980 () Bool)

(assert (=> b!5491137 (= tp!1509781 e!3397980)))

(declare-fun b!5491826 () Bool)

(declare-fun tp!1510132 () Bool)

(declare-fun tp!1510131 () Bool)

(assert (=> b!5491826 (= e!3397980 (and tp!1510132 tp!1510131))))

(declare-fun b!5491825 () Bool)

(declare-fun tp!1510129 () Bool)

(assert (=> b!5491825 (= e!3397980 tp!1510129)))

(declare-fun b!5491824 () Bool)

(declare-fun tp!1510130 () Bool)

(declare-fun tp!1510128 () Bool)

(assert (=> b!5491824 (= e!3397980 (and tp!1510130 tp!1510128))))

(declare-fun b!5491823 () Bool)

(assert (=> b!5491823 (= e!3397980 tp_is_empty!40167)))

(assert (= (and b!5491137 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491823))

(assert (= (and b!5491137 ((_ is Concat!24302) (regOne!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491824))

(assert (= (and b!5491137 ((_ is Star!15457) (regOne!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491825))

(assert (= (and b!5491137 ((_ is Union!15457) (regOne!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491826))

(declare-fun e!3397981 () Bool)

(assert (=> b!5491137 (= tp!1509780 e!3397981)))

(declare-fun b!5491830 () Bool)

(declare-fun tp!1510137 () Bool)

(declare-fun tp!1510136 () Bool)

(assert (=> b!5491830 (= e!3397981 (and tp!1510137 tp!1510136))))

(declare-fun b!5491829 () Bool)

(declare-fun tp!1510134 () Bool)

(assert (=> b!5491829 (= e!3397981 tp!1510134)))

(declare-fun b!5491828 () Bool)

(declare-fun tp!1510135 () Bool)

(declare-fun tp!1510133 () Bool)

(assert (=> b!5491828 (= e!3397981 (and tp!1510135 tp!1510133))))

(declare-fun b!5491827 () Bool)

(assert (=> b!5491827 (= e!3397981 tp_is_empty!40167)))

(assert (= (and b!5491137 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491827))

(assert (= (and b!5491137 ((_ is Concat!24302) (regTwo!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491828))

(assert (= (and b!5491137 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491829))

(assert (= (and b!5491137 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 (reg!15786 r!7292))))) b!5491830))

(declare-fun e!3397982 () Bool)

(assert (=> b!5491179 (= tp!1509834 e!3397982)))

(declare-fun b!5491834 () Bool)

(declare-fun tp!1510142 () Bool)

(declare-fun tp!1510141 () Bool)

(assert (=> b!5491834 (= e!3397982 (and tp!1510142 tp!1510141))))

(declare-fun b!5491833 () Bool)

(declare-fun tp!1510139 () Bool)

(assert (=> b!5491833 (= e!3397982 tp!1510139)))

(declare-fun b!5491832 () Bool)

(declare-fun tp!1510140 () Bool)

(declare-fun tp!1510138 () Bool)

(assert (=> b!5491832 (= e!3397982 (and tp!1510140 tp!1510138))))

(declare-fun b!5491831 () Bool)

(assert (=> b!5491831 (= e!3397982 tp_is_empty!40167)))

(assert (= (and b!5491179 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491831))

(assert (= (and b!5491179 ((_ is Concat!24302) (regOne!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491832))

(assert (= (and b!5491179 ((_ is Star!15457) (regOne!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491833))

(assert (= (and b!5491179 ((_ is Union!15457) (regOne!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491834))

(declare-fun e!3397983 () Bool)

(assert (=> b!5491179 (= tp!1509833 e!3397983)))

(declare-fun b!5491838 () Bool)

(declare-fun tp!1510147 () Bool)

(declare-fun tp!1510146 () Bool)

(assert (=> b!5491838 (= e!3397983 (and tp!1510147 tp!1510146))))

(declare-fun b!5491837 () Bool)

(declare-fun tp!1510144 () Bool)

(assert (=> b!5491837 (= e!3397983 tp!1510144)))

(declare-fun b!5491836 () Bool)

(declare-fun tp!1510145 () Bool)

(declare-fun tp!1510143 () Bool)

(assert (=> b!5491836 (= e!3397983 (and tp!1510145 tp!1510143))))

(declare-fun b!5491835 () Bool)

(assert (=> b!5491835 (= e!3397983 tp_is_empty!40167)))

(assert (= (and b!5491179 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491835))

(assert (= (and b!5491179 ((_ is Concat!24302) (regTwo!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491836))

(assert (= (and b!5491179 ((_ is Star!15457) (regTwo!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491837))

(assert (= (and b!5491179 ((_ is Union!15457) (regTwo!31427 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491838))

(declare-fun e!3397984 () Bool)

(assert (=> b!5491128 (= tp!1509768 e!3397984)))

(declare-fun b!5491842 () Bool)

(declare-fun tp!1510152 () Bool)

(declare-fun tp!1510151 () Bool)

(assert (=> b!5491842 (= e!3397984 (and tp!1510152 tp!1510151))))

(declare-fun b!5491841 () Bool)

(declare-fun tp!1510149 () Bool)

(assert (=> b!5491841 (= e!3397984 tp!1510149)))

(declare-fun b!5491840 () Bool)

(declare-fun tp!1510150 () Bool)

(declare-fun tp!1510148 () Bool)

(assert (=> b!5491840 (= e!3397984 (and tp!1510150 tp!1510148))))

(declare-fun b!5491839 () Bool)

(assert (=> b!5491839 (= e!3397984 tp_is_empty!40167)))

(assert (= (and b!5491128 ((_ is ElementMatch!15457) (reg!15786 (reg!15786 (reg!15786 r!7292))))) b!5491839))

(assert (= (and b!5491128 ((_ is Concat!24302) (reg!15786 (reg!15786 (reg!15786 r!7292))))) b!5491840))

(assert (= (and b!5491128 ((_ is Star!15457) (reg!15786 (reg!15786 (reg!15786 r!7292))))) b!5491841))

(assert (= (and b!5491128 ((_ is Union!15457) (reg!15786 (reg!15786 (reg!15786 r!7292))))) b!5491842))

(declare-fun e!3397985 () Bool)

(assert (=> b!5491124 (= tp!1509764 e!3397985)))

(declare-fun b!5491846 () Bool)

(declare-fun tp!1510157 () Bool)

(declare-fun tp!1510156 () Bool)

(assert (=> b!5491846 (= e!3397985 (and tp!1510157 tp!1510156))))

(declare-fun b!5491845 () Bool)

(declare-fun tp!1510154 () Bool)

(assert (=> b!5491845 (= e!3397985 tp!1510154)))

(declare-fun b!5491844 () Bool)

(declare-fun tp!1510155 () Bool)

(declare-fun tp!1510153 () Bool)

(assert (=> b!5491844 (= e!3397985 (and tp!1510155 tp!1510153))))

(declare-fun b!5491843 () Bool)

(assert (=> b!5491843 (= e!3397985 tp_is_empty!40167)))

(assert (= (and b!5491124 ((_ is ElementMatch!15457) (regOne!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491843))

(assert (= (and b!5491124 ((_ is Concat!24302) (regOne!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491844))

(assert (= (and b!5491124 ((_ is Star!15457) (regOne!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491845))

(assert (= (and b!5491124 ((_ is Union!15457) (regOne!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491846))

(declare-fun e!3397986 () Bool)

(assert (=> b!5491124 (= tp!1509763 e!3397986)))

(declare-fun b!5491850 () Bool)

(declare-fun tp!1510162 () Bool)

(declare-fun tp!1510161 () Bool)

(assert (=> b!5491850 (= e!3397986 (and tp!1510162 tp!1510161))))

(declare-fun b!5491849 () Bool)

(declare-fun tp!1510159 () Bool)

(assert (=> b!5491849 (= e!3397986 tp!1510159)))

(declare-fun b!5491848 () Bool)

(declare-fun tp!1510160 () Bool)

(declare-fun tp!1510158 () Bool)

(assert (=> b!5491848 (= e!3397986 (and tp!1510160 tp!1510158))))

(declare-fun b!5491847 () Bool)

(assert (=> b!5491847 (= e!3397986 tp_is_empty!40167)))

(assert (= (and b!5491124 ((_ is ElementMatch!15457) (regTwo!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491847))

(assert (= (and b!5491124 ((_ is Concat!24302) (regTwo!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491848))

(assert (= (and b!5491124 ((_ is Star!15457) (regTwo!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491849))

(assert (= (and b!5491124 ((_ is Union!15457) (regTwo!31427 (reg!15786 (regOne!31427 r!7292))))) b!5491850))

(declare-fun e!3397987 () Bool)

(assert (=> b!5491115 (= tp!1509751 e!3397987)))

(declare-fun b!5491854 () Bool)

(declare-fun tp!1510167 () Bool)

(declare-fun tp!1510166 () Bool)

(assert (=> b!5491854 (= e!3397987 (and tp!1510167 tp!1510166))))

(declare-fun b!5491853 () Bool)

(declare-fun tp!1510164 () Bool)

(assert (=> b!5491853 (= e!3397987 tp!1510164)))

(declare-fun b!5491852 () Bool)

(declare-fun tp!1510165 () Bool)

(declare-fun tp!1510163 () Bool)

(assert (=> b!5491852 (= e!3397987 (and tp!1510165 tp!1510163))))

(declare-fun b!5491851 () Bool)

(assert (=> b!5491851 (= e!3397987 tp_is_empty!40167)))

(assert (= (and b!5491115 ((_ is ElementMatch!15457) (reg!15786 (regOne!31426 (regOne!31426 r!7292))))) b!5491851))

(assert (= (and b!5491115 ((_ is Concat!24302) (reg!15786 (regOne!31426 (regOne!31426 r!7292))))) b!5491852))

(assert (= (and b!5491115 ((_ is Star!15457) (reg!15786 (regOne!31426 (regOne!31426 r!7292))))) b!5491853))

(assert (= (and b!5491115 ((_ is Union!15457) (reg!15786 (regOne!31426 (regOne!31426 r!7292))))) b!5491854))

(declare-fun e!3397988 () Bool)

(assert (=> b!5491153 (= tp!1509801 e!3397988)))

(declare-fun b!5491858 () Bool)

(declare-fun tp!1510172 () Bool)

(declare-fun tp!1510171 () Bool)

(assert (=> b!5491858 (= e!3397988 (and tp!1510172 tp!1510171))))

(declare-fun b!5491857 () Bool)

(declare-fun tp!1510169 () Bool)

(assert (=> b!5491857 (= e!3397988 tp!1510169)))

(declare-fun b!5491856 () Bool)

(declare-fun tp!1510170 () Bool)

(declare-fun tp!1510168 () Bool)

(assert (=> b!5491856 (= e!3397988 (and tp!1510170 tp!1510168))))

(declare-fun b!5491855 () Bool)

(assert (=> b!5491855 (= e!3397988 tp_is_empty!40167)))

(assert (= (and b!5491153 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491855))

(assert (= (and b!5491153 ((_ is Concat!24302) (regOne!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491856))

(assert (= (and b!5491153 ((_ is Star!15457) (regOne!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491857))

(assert (= (and b!5491153 ((_ is Union!15457) (regOne!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491858))

(declare-fun e!3397989 () Bool)

(assert (=> b!5491153 (= tp!1509800 e!3397989)))

(declare-fun b!5491862 () Bool)

(declare-fun tp!1510177 () Bool)

(declare-fun tp!1510176 () Bool)

(assert (=> b!5491862 (= e!3397989 (and tp!1510177 tp!1510176))))

(declare-fun b!5491861 () Bool)

(declare-fun tp!1510174 () Bool)

(assert (=> b!5491861 (= e!3397989 tp!1510174)))

(declare-fun b!5491860 () Bool)

(declare-fun tp!1510175 () Bool)

(declare-fun tp!1510173 () Bool)

(assert (=> b!5491860 (= e!3397989 (and tp!1510175 tp!1510173))))

(declare-fun b!5491859 () Bool)

(assert (=> b!5491859 (= e!3397989 tp_is_empty!40167)))

(assert (= (and b!5491153 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491859))

(assert (= (and b!5491153 ((_ is Concat!24302) (regTwo!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491860))

(assert (= (and b!5491153 ((_ is Star!15457) (regTwo!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491861))

(assert (= (and b!5491153 ((_ is Union!15457) (regTwo!31427 (regOne!31426 (reg!15786 r!7292))))) b!5491862))

(declare-fun e!3397990 () Bool)

(assert (=> b!5491144 (= tp!1509788 e!3397990)))

(declare-fun b!5491866 () Bool)

(declare-fun tp!1510182 () Bool)

(declare-fun tp!1510181 () Bool)

(assert (=> b!5491866 (= e!3397990 (and tp!1510182 tp!1510181))))

(declare-fun b!5491865 () Bool)

(declare-fun tp!1510179 () Bool)

(assert (=> b!5491865 (= e!3397990 tp!1510179)))

(declare-fun b!5491864 () Bool)

(declare-fun tp!1510180 () Bool)

(declare-fun tp!1510178 () Bool)

(assert (=> b!5491864 (= e!3397990 (and tp!1510180 tp!1510178))))

(declare-fun b!5491863 () Bool)

(assert (=> b!5491863 (= e!3397990 tp_is_empty!40167)))

(assert (= (and b!5491144 ((_ is ElementMatch!15457) (reg!15786 (regOne!31427 (regTwo!31426 r!7292))))) b!5491863))

(assert (= (and b!5491144 ((_ is Concat!24302) (reg!15786 (regOne!31427 (regTwo!31426 r!7292))))) b!5491864))

(assert (= (and b!5491144 ((_ is Star!15457) (reg!15786 (regOne!31427 (regTwo!31426 r!7292))))) b!5491865))

(assert (= (and b!5491144 ((_ is Union!15457) (reg!15786 (regOne!31427 (regTwo!31426 r!7292))))) b!5491866))

(declare-fun e!3397991 () Bool)

(assert (=> b!5491186 (= tp!1509841 e!3397991)))

(declare-fun b!5491870 () Bool)

(declare-fun tp!1510187 () Bool)

(declare-fun tp!1510186 () Bool)

(assert (=> b!5491870 (= e!3397991 (and tp!1510187 tp!1510186))))

(declare-fun b!5491869 () Bool)

(declare-fun tp!1510184 () Bool)

(assert (=> b!5491869 (= e!3397991 tp!1510184)))

(declare-fun b!5491868 () Bool)

(declare-fun tp!1510185 () Bool)

(declare-fun tp!1510183 () Bool)

(assert (=> b!5491868 (= e!3397991 (and tp!1510185 tp!1510183))))

(declare-fun b!5491867 () Bool)

(assert (=> b!5491867 (= e!3397991 tp_is_empty!40167)))

(assert (= (and b!5491186 ((_ is ElementMatch!15457) (reg!15786 (regOne!31427 (regTwo!31427 r!7292))))) b!5491867))

(assert (= (and b!5491186 ((_ is Concat!24302) (reg!15786 (regOne!31427 (regTwo!31427 r!7292))))) b!5491868))

(assert (= (and b!5491186 ((_ is Star!15457) (reg!15786 (regOne!31427 (regTwo!31427 r!7292))))) b!5491869))

(assert (= (and b!5491186 ((_ is Union!15457) (reg!15786 (regOne!31427 (regTwo!31427 r!7292))))) b!5491870))

(declare-fun e!3397992 () Bool)

(assert (=> b!5491135 (= tp!1509779 e!3397992)))

(declare-fun b!5491874 () Bool)

(declare-fun tp!1510192 () Bool)

(declare-fun tp!1510191 () Bool)

(assert (=> b!5491874 (= e!3397992 (and tp!1510192 tp!1510191))))

(declare-fun b!5491873 () Bool)

(declare-fun tp!1510189 () Bool)

(assert (=> b!5491873 (= e!3397992 tp!1510189)))

(declare-fun b!5491872 () Bool)

(declare-fun tp!1510190 () Bool)

(declare-fun tp!1510188 () Bool)

(assert (=> b!5491872 (= e!3397992 (and tp!1510190 tp!1510188))))

(declare-fun b!5491871 () Bool)

(assert (=> b!5491871 (= e!3397992 tp_is_empty!40167)))

(assert (= (and b!5491135 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491871))

(assert (= (and b!5491135 ((_ is Concat!24302) (regOne!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491872))

(assert (= (and b!5491135 ((_ is Star!15457) (regOne!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491873))

(assert (= (and b!5491135 ((_ is Union!15457) (regOne!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491874))

(declare-fun e!3397993 () Bool)

(assert (=> b!5491135 (= tp!1509777 e!3397993)))

(declare-fun b!5491878 () Bool)

(declare-fun tp!1510197 () Bool)

(declare-fun tp!1510196 () Bool)

(assert (=> b!5491878 (= e!3397993 (and tp!1510197 tp!1510196))))

(declare-fun b!5491877 () Bool)

(declare-fun tp!1510194 () Bool)

(assert (=> b!5491877 (= e!3397993 tp!1510194)))

(declare-fun b!5491876 () Bool)

(declare-fun tp!1510195 () Bool)

(declare-fun tp!1510193 () Bool)

(assert (=> b!5491876 (= e!3397993 (and tp!1510195 tp!1510193))))

(declare-fun b!5491875 () Bool)

(assert (=> b!5491875 (= e!3397993 tp_is_empty!40167)))

(assert (= (and b!5491135 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491875))

(assert (= (and b!5491135 ((_ is Concat!24302) (regTwo!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491876))

(assert (= (and b!5491135 ((_ is Star!15457) (regTwo!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491877))

(assert (= (and b!5491135 ((_ is Union!15457) (regTwo!31426 (regTwo!31427 (reg!15786 r!7292))))) b!5491878))

(declare-fun e!3397994 () Bool)

(assert (=> b!5491177 (= tp!1509832 e!3397994)))

(declare-fun b!5491882 () Bool)

(declare-fun tp!1510202 () Bool)

(declare-fun tp!1510201 () Bool)

(assert (=> b!5491882 (= e!3397994 (and tp!1510202 tp!1510201))))

(declare-fun b!5491881 () Bool)

(declare-fun tp!1510199 () Bool)

(assert (=> b!5491881 (= e!3397994 tp!1510199)))

(declare-fun b!5491880 () Bool)

(declare-fun tp!1510200 () Bool)

(declare-fun tp!1510198 () Bool)

(assert (=> b!5491880 (= e!3397994 (and tp!1510200 tp!1510198))))

(declare-fun b!5491879 () Bool)

(assert (=> b!5491879 (= e!3397994 tp_is_empty!40167)))

(assert (= (and b!5491177 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491879))

(assert (= (and b!5491177 ((_ is Concat!24302) (regOne!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491880))

(assert (= (and b!5491177 ((_ is Star!15457) (regOne!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491881))

(assert (= (and b!5491177 ((_ is Union!15457) (regOne!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491882))

(declare-fun e!3397995 () Bool)

(assert (=> b!5491177 (= tp!1509830 e!3397995)))

(declare-fun b!5491886 () Bool)

(declare-fun tp!1510207 () Bool)

(declare-fun tp!1510206 () Bool)

(assert (=> b!5491886 (= e!3397995 (and tp!1510207 tp!1510206))))

(declare-fun b!5491885 () Bool)

(declare-fun tp!1510204 () Bool)

(assert (=> b!5491885 (= e!3397995 tp!1510204)))

(declare-fun b!5491884 () Bool)

(declare-fun tp!1510205 () Bool)

(declare-fun tp!1510203 () Bool)

(assert (=> b!5491884 (= e!3397995 (and tp!1510205 tp!1510203))))

(declare-fun b!5491883 () Bool)

(assert (=> b!5491883 (= e!3397995 tp_is_empty!40167)))

(assert (= (and b!5491177 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491883))

(assert (= (and b!5491177 ((_ is Concat!24302) (regTwo!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491884))

(assert (= (and b!5491177 ((_ is Star!15457) (regTwo!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491885))

(assert (= (and b!5491177 ((_ is Union!15457) (regTwo!31426 (regTwo!31426 (regTwo!31426 r!7292))))) b!5491886))

(declare-fun e!3397996 () Bool)

(assert (=> b!5491170 (= tp!1509823 e!3397996)))

(declare-fun b!5491890 () Bool)

(declare-fun tp!1510212 () Bool)

(declare-fun tp!1510211 () Bool)

(assert (=> b!5491890 (= e!3397996 (and tp!1510212 tp!1510211))))

(declare-fun b!5491889 () Bool)

(declare-fun tp!1510209 () Bool)

(assert (=> b!5491889 (= e!3397996 tp!1510209)))

(declare-fun b!5491888 () Bool)

(declare-fun tp!1510210 () Bool)

(declare-fun tp!1510208 () Bool)

(assert (=> b!5491888 (= e!3397996 (and tp!1510210 tp!1510208))))

(declare-fun b!5491887 () Bool)

(assert (=> b!5491887 (= e!3397996 tp_is_empty!40167)))

(assert (= (and b!5491170 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491887))

(assert (= (and b!5491170 ((_ is Concat!24302) (regOne!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491888))

(assert (= (and b!5491170 ((_ is Star!15457) (regOne!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491889))

(assert (= (and b!5491170 ((_ is Union!15457) (regOne!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491890))

(declare-fun e!3397997 () Bool)

(assert (=> b!5491170 (= tp!1509822 e!3397997)))

(declare-fun b!5491894 () Bool)

(declare-fun tp!1510217 () Bool)

(declare-fun tp!1510216 () Bool)

(assert (=> b!5491894 (= e!3397997 (and tp!1510217 tp!1510216))))

(declare-fun b!5491893 () Bool)

(declare-fun tp!1510214 () Bool)

(assert (=> b!5491893 (= e!3397997 tp!1510214)))

(declare-fun b!5491892 () Bool)

(declare-fun tp!1510215 () Bool)

(declare-fun tp!1510213 () Bool)

(assert (=> b!5491892 (= e!3397997 (and tp!1510215 tp!1510213))))

(declare-fun b!5491891 () Bool)

(assert (=> b!5491891 (= e!3397997 tp_is_empty!40167)))

(assert (= (and b!5491170 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491891))

(assert (= (and b!5491170 ((_ is Concat!24302) (regTwo!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491892))

(assert (= (and b!5491170 ((_ is Star!15457) (regTwo!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491893))

(assert (= (and b!5491170 ((_ is Union!15457) (regTwo!31427 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491894))

(declare-fun e!3397998 () Bool)

(assert (=> b!5491122 (= tp!1509762 e!3397998)))

(declare-fun b!5491898 () Bool)

(declare-fun tp!1510222 () Bool)

(declare-fun tp!1510221 () Bool)

(assert (=> b!5491898 (= e!3397998 (and tp!1510222 tp!1510221))))

(declare-fun b!5491897 () Bool)

(declare-fun tp!1510219 () Bool)

(assert (=> b!5491897 (= e!3397998 tp!1510219)))

(declare-fun b!5491896 () Bool)

(declare-fun tp!1510220 () Bool)

(declare-fun tp!1510218 () Bool)

(assert (=> b!5491896 (= e!3397998 (and tp!1510220 tp!1510218))))

(declare-fun b!5491895 () Bool)

(assert (=> b!5491895 (= e!3397998 tp_is_empty!40167)))

(assert (= (and b!5491122 ((_ is ElementMatch!15457) (regOne!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491895))

(assert (= (and b!5491122 ((_ is Concat!24302) (regOne!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491896))

(assert (= (and b!5491122 ((_ is Star!15457) (regOne!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491897))

(assert (= (and b!5491122 ((_ is Union!15457) (regOne!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491898))

(declare-fun e!3397999 () Bool)

(assert (=> b!5491122 (= tp!1509760 e!3397999)))

(declare-fun b!5491902 () Bool)

(declare-fun tp!1510227 () Bool)

(declare-fun tp!1510226 () Bool)

(assert (=> b!5491902 (= e!3397999 (and tp!1510227 tp!1510226))))

(declare-fun b!5491901 () Bool)

(declare-fun tp!1510224 () Bool)

(assert (=> b!5491901 (= e!3397999 tp!1510224)))

(declare-fun b!5491900 () Bool)

(declare-fun tp!1510225 () Bool)

(declare-fun tp!1510223 () Bool)

(assert (=> b!5491900 (= e!3397999 (and tp!1510225 tp!1510223))))

(declare-fun b!5491899 () Bool)

(assert (=> b!5491899 (= e!3397999 tp_is_empty!40167)))

(assert (= (and b!5491122 ((_ is ElementMatch!15457) (regTwo!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491899))

(assert (= (and b!5491122 ((_ is Concat!24302) (regTwo!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491900))

(assert (= (and b!5491122 ((_ is Star!15457) (regTwo!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491901))

(assert (= (and b!5491122 ((_ is Union!15457) (regTwo!31426 (reg!15786 (regOne!31427 r!7292))))) b!5491902))

(declare-fun e!3398000 () Bool)

(assert (=> b!5491160 (= tp!1509808 e!3398000)))

(declare-fun b!5491906 () Bool)

(declare-fun tp!1510232 () Bool)

(declare-fun tp!1510231 () Bool)

(assert (=> b!5491906 (= e!3398000 (and tp!1510232 tp!1510231))))

(declare-fun b!5491905 () Bool)

(declare-fun tp!1510229 () Bool)

(assert (=> b!5491905 (= e!3398000 tp!1510229)))

(declare-fun b!5491904 () Bool)

(declare-fun tp!1510230 () Bool)

(declare-fun tp!1510228 () Bool)

(assert (=> b!5491904 (= e!3398000 (and tp!1510230 tp!1510228))))

(declare-fun b!5491903 () Bool)

(assert (=> b!5491903 (= e!3398000 tp_is_empty!40167)))

(assert (= (and b!5491160 ((_ is ElementMatch!15457) (reg!15786 (h!68994 (exprs!5341 setElem!36339))))) b!5491903))

(assert (= (and b!5491160 ((_ is Concat!24302) (reg!15786 (h!68994 (exprs!5341 setElem!36339))))) b!5491904))

(assert (= (and b!5491160 ((_ is Star!15457) (reg!15786 (h!68994 (exprs!5341 setElem!36339))))) b!5491905))

(assert (= (and b!5491160 ((_ is Union!15457) (reg!15786 (h!68994 (exprs!5341 setElem!36339))))) b!5491906))

(declare-fun e!3398001 () Bool)

(assert (=> b!5491151 (= tp!1509799 e!3398001)))

(declare-fun b!5491910 () Bool)

(declare-fun tp!1510237 () Bool)

(declare-fun tp!1510236 () Bool)

(assert (=> b!5491910 (= e!3398001 (and tp!1510237 tp!1510236))))

(declare-fun b!5491909 () Bool)

(declare-fun tp!1510234 () Bool)

(assert (=> b!5491909 (= e!3398001 tp!1510234)))

(declare-fun b!5491908 () Bool)

(declare-fun tp!1510235 () Bool)

(declare-fun tp!1510233 () Bool)

(assert (=> b!5491908 (= e!3398001 (and tp!1510235 tp!1510233))))

(declare-fun b!5491907 () Bool)

(assert (=> b!5491907 (= e!3398001 tp_is_empty!40167)))

(assert (= (and b!5491151 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491907))

(assert (= (and b!5491151 ((_ is Concat!24302) (regOne!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491908))

(assert (= (and b!5491151 ((_ is Star!15457) (regOne!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491909))

(assert (= (and b!5491151 ((_ is Union!15457) (regOne!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491910))

(declare-fun e!3398002 () Bool)

(assert (=> b!5491151 (= tp!1509797 e!3398002)))

(declare-fun b!5491914 () Bool)

(declare-fun tp!1510242 () Bool)

(declare-fun tp!1510241 () Bool)

(assert (=> b!5491914 (= e!3398002 (and tp!1510242 tp!1510241))))

(declare-fun b!5491913 () Bool)

(declare-fun tp!1510239 () Bool)

(assert (=> b!5491913 (= e!3398002 tp!1510239)))

(declare-fun b!5491912 () Bool)

(declare-fun tp!1510240 () Bool)

(declare-fun tp!1510238 () Bool)

(assert (=> b!5491912 (= e!3398002 (and tp!1510240 tp!1510238))))

(declare-fun b!5491911 () Bool)

(assert (=> b!5491911 (= e!3398002 tp_is_empty!40167)))

(assert (= (and b!5491151 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491911))

(assert (= (and b!5491151 ((_ is Concat!24302) (regTwo!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491912))

(assert (= (and b!5491151 ((_ is Star!15457) (regTwo!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491913))

(assert (= (and b!5491151 ((_ is Union!15457) (regTwo!31426 (regOne!31426 (reg!15786 r!7292))))) b!5491914))

(declare-fun e!3398003 () Bool)

(assert (=> b!5491065 (= tp!1509705 e!3398003)))

(declare-fun b!5491918 () Bool)

(declare-fun tp!1510247 () Bool)

(declare-fun tp!1510246 () Bool)

(assert (=> b!5491918 (= e!3398003 (and tp!1510247 tp!1510246))))

(declare-fun b!5491917 () Bool)

(declare-fun tp!1510244 () Bool)

(assert (=> b!5491917 (= e!3398003 tp!1510244)))

(declare-fun b!5491916 () Bool)

(declare-fun tp!1510245 () Bool)

(declare-fun tp!1510243 () Bool)

(assert (=> b!5491916 (= e!3398003 (and tp!1510245 tp!1510243))))

(declare-fun b!5491915 () Bool)

(assert (=> b!5491915 (= e!3398003 tp_is_empty!40167)))

(assert (= (and b!5491065 ((_ is ElementMatch!15457) (reg!15786 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5491915))

(assert (= (and b!5491065 ((_ is Concat!24302) (reg!15786 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5491916))

(assert (= (and b!5491065 ((_ is Star!15457) (reg!15786 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5491917))

(assert (= (and b!5491065 ((_ is Union!15457) (reg!15786 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5491918))

(declare-fun e!3398004 () Bool)

(assert (=> b!5491095 (= tp!1509727 e!3398004)))

(declare-fun b!5491922 () Bool)

(declare-fun tp!1510252 () Bool)

(declare-fun tp!1510251 () Bool)

(assert (=> b!5491922 (= e!3398004 (and tp!1510252 tp!1510251))))

(declare-fun b!5491921 () Bool)

(declare-fun tp!1510249 () Bool)

(assert (=> b!5491921 (= e!3398004 tp!1510249)))

(declare-fun b!5491920 () Bool)

(declare-fun tp!1510250 () Bool)

(declare-fun tp!1510248 () Bool)

(assert (=> b!5491920 (= e!3398004 (and tp!1510250 tp!1510248))))

(declare-fun b!5491919 () Bool)

(assert (=> b!5491919 (= e!3398004 tp_is_empty!40167)))

(assert (= (and b!5491095 ((_ is ElementMatch!15457) (regOne!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491919))

(assert (= (and b!5491095 ((_ is Concat!24302) (regOne!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491920))

(assert (= (and b!5491095 ((_ is Star!15457) (regOne!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491921))

(assert (= (and b!5491095 ((_ is Union!15457) (regOne!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491922))

(declare-fun e!3398005 () Bool)

(assert (=> b!5491095 (= tp!1509726 e!3398005)))

(declare-fun b!5491926 () Bool)

(declare-fun tp!1510257 () Bool)

(declare-fun tp!1510256 () Bool)

(assert (=> b!5491926 (= e!3398005 (and tp!1510257 tp!1510256))))

(declare-fun b!5491925 () Bool)

(declare-fun tp!1510254 () Bool)

(assert (=> b!5491925 (= e!3398005 tp!1510254)))

(declare-fun b!5491924 () Bool)

(declare-fun tp!1510255 () Bool)

(declare-fun tp!1510253 () Bool)

(assert (=> b!5491924 (= e!3398005 (and tp!1510255 tp!1510253))))

(declare-fun b!5491923 () Bool)

(assert (=> b!5491923 (= e!3398005 tp_is_empty!40167)))

(assert (= (and b!5491095 ((_ is ElementMatch!15457) (regTwo!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491923))

(assert (= (and b!5491095 ((_ is Concat!24302) (regTwo!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491924))

(assert (= (and b!5491095 ((_ is Star!15457) (regTwo!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491925))

(assert (= (and b!5491095 ((_ is Union!15457) (regTwo!31427 (reg!15786 (regOne!31426 r!7292))))) b!5491926))

(declare-fun e!3398006 () Bool)

(assert (=> b!5491168 (= tp!1509821 e!3398006)))

(declare-fun b!5491930 () Bool)

(declare-fun tp!1510262 () Bool)

(declare-fun tp!1510261 () Bool)

(assert (=> b!5491930 (= e!3398006 (and tp!1510262 tp!1510261))))

(declare-fun b!5491929 () Bool)

(declare-fun tp!1510259 () Bool)

(assert (=> b!5491929 (= e!3398006 tp!1510259)))

(declare-fun b!5491928 () Bool)

(declare-fun tp!1510260 () Bool)

(declare-fun tp!1510258 () Bool)

(assert (=> b!5491928 (= e!3398006 (and tp!1510260 tp!1510258))))

(declare-fun b!5491927 () Bool)

(assert (=> b!5491927 (= e!3398006 tp_is_empty!40167)))

(assert (= (and b!5491168 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491927))

(assert (= (and b!5491168 ((_ is Concat!24302) (regOne!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491928))

(assert (= (and b!5491168 ((_ is Star!15457) (regOne!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491929))

(assert (= (and b!5491168 ((_ is Union!15457) (regOne!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491930))

(declare-fun e!3398007 () Bool)

(assert (=> b!5491168 (= tp!1509819 e!3398007)))

(declare-fun b!5491934 () Bool)

(declare-fun tp!1510267 () Bool)

(declare-fun tp!1510266 () Bool)

(assert (=> b!5491934 (= e!3398007 (and tp!1510267 tp!1510266))))

(declare-fun b!5491933 () Bool)

(declare-fun tp!1510264 () Bool)

(assert (=> b!5491933 (= e!3398007 tp!1510264)))

(declare-fun b!5491932 () Bool)

(declare-fun tp!1510265 () Bool)

(declare-fun tp!1510263 () Bool)

(assert (=> b!5491932 (= e!3398007 (and tp!1510265 tp!1510263))))

(declare-fun b!5491931 () Bool)

(assert (=> b!5491931 (= e!3398007 tp_is_empty!40167)))

(assert (= (and b!5491168 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491931))

(assert (= (and b!5491168 ((_ is Concat!24302) (regTwo!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491932))

(assert (= (and b!5491168 ((_ is Star!15457) (regTwo!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491933))

(assert (= (and b!5491168 ((_ is Union!15457) (regTwo!31426 (regTwo!31426 (regTwo!31427 r!7292))))) b!5491934))

(declare-fun e!3398008 () Bool)

(assert (=> b!5491108 (= tp!1509744 e!3398008)))

(declare-fun b!5491938 () Bool)

(declare-fun tp!1510272 () Bool)

(declare-fun tp!1510271 () Bool)

(assert (=> b!5491938 (= e!3398008 (and tp!1510272 tp!1510271))))

(declare-fun b!5491937 () Bool)

(declare-fun tp!1510269 () Bool)

(assert (=> b!5491937 (= e!3398008 tp!1510269)))

(declare-fun b!5491936 () Bool)

(declare-fun tp!1510270 () Bool)

(declare-fun tp!1510268 () Bool)

(assert (=> b!5491936 (= e!3398008 (and tp!1510270 tp!1510268))))

(declare-fun b!5491935 () Bool)

(assert (=> b!5491935 (= e!3398008 tp_is_empty!40167)))

(assert (= (and b!5491108 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491935))

(assert (= (and b!5491108 ((_ is Concat!24302) (regOne!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491936))

(assert (= (and b!5491108 ((_ is Star!15457) (regOne!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491937))

(assert (= (and b!5491108 ((_ is Union!15457) (regOne!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491938))

(declare-fun e!3398009 () Bool)

(assert (=> b!5491108 (= tp!1509743 e!3398009)))

(declare-fun b!5491942 () Bool)

(declare-fun tp!1510277 () Bool)

(declare-fun tp!1510276 () Bool)

(assert (=> b!5491942 (= e!3398009 (and tp!1510277 tp!1510276))))

(declare-fun b!5491941 () Bool)

(declare-fun tp!1510274 () Bool)

(assert (=> b!5491941 (= e!3398009 tp!1510274)))

(declare-fun b!5491940 () Bool)

(declare-fun tp!1510275 () Bool)

(declare-fun tp!1510273 () Bool)

(assert (=> b!5491940 (= e!3398009 (and tp!1510275 tp!1510273))))

(declare-fun b!5491939 () Bool)

(assert (=> b!5491939 (= e!3398009 tp_is_empty!40167)))

(assert (= (and b!5491108 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491939))

(assert (= (and b!5491108 ((_ is Concat!24302) (regTwo!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491940))

(assert (= (and b!5491108 ((_ is Star!15457) (regTwo!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491941))

(assert (= (and b!5491108 ((_ is Union!15457) (regTwo!31427 (regOne!31426 (regOne!31427 r!7292))))) b!5491942))

(declare-fun e!3398010 () Bool)

(assert (=> b!5491102 (= tp!1509734 e!3398010)))

(declare-fun b!5491946 () Bool)

(declare-fun tp!1510282 () Bool)

(declare-fun tp!1510281 () Bool)

(assert (=> b!5491946 (= e!3398010 (and tp!1510282 tp!1510281))))

(declare-fun b!5491945 () Bool)

(declare-fun tp!1510279 () Bool)

(assert (=> b!5491945 (= e!3398010 tp!1510279)))

(declare-fun b!5491944 () Bool)

(declare-fun tp!1510280 () Bool)

(declare-fun tp!1510278 () Bool)

(assert (=> b!5491944 (= e!3398010 (and tp!1510280 tp!1510278))))

(declare-fun b!5491943 () Bool)

(assert (=> b!5491943 (= e!3398010 tp_is_empty!40167)))

(assert (= (and b!5491102 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31427 (regOne!31426 r!7292))))) b!5491943))

(assert (= (and b!5491102 ((_ is Concat!24302) (reg!15786 (regTwo!31427 (regOne!31426 r!7292))))) b!5491944))

(assert (= (and b!5491102 ((_ is Star!15457) (reg!15786 (regTwo!31427 (regOne!31426 r!7292))))) b!5491945))

(assert (= (and b!5491102 ((_ is Union!15457) (reg!15786 (regTwo!31427 (regOne!31426 r!7292))))) b!5491946))

(declare-fun e!3398011 () Bool)

(assert (=> b!5491093 (= tp!1509725 e!3398011)))

(declare-fun b!5491950 () Bool)

(declare-fun tp!1510287 () Bool)

(declare-fun tp!1510286 () Bool)

(assert (=> b!5491950 (= e!3398011 (and tp!1510287 tp!1510286))))

(declare-fun b!5491949 () Bool)

(declare-fun tp!1510284 () Bool)

(assert (=> b!5491949 (= e!3398011 tp!1510284)))

(declare-fun b!5491948 () Bool)

(declare-fun tp!1510285 () Bool)

(declare-fun tp!1510283 () Bool)

(assert (=> b!5491948 (= e!3398011 (and tp!1510285 tp!1510283))))

(declare-fun b!5491947 () Bool)

(assert (=> b!5491947 (= e!3398011 tp_is_empty!40167)))

(assert (= (and b!5491093 ((_ is ElementMatch!15457) (regOne!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491947))

(assert (= (and b!5491093 ((_ is Concat!24302) (regOne!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491948))

(assert (= (and b!5491093 ((_ is Star!15457) (regOne!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491949))

(assert (= (and b!5491093 ((_ is Union!15457) (regOne!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491950))

(declare-fun e!3398012 () Bool)

(assert (=> b!5491093 (= tp!1509723 e!3398012)))

(declare-fun b!5491954 () Bool)

(declare-fun tp!1510292 () Bool)

(declare-fun tp!1510291 () Bool)

(assert (=> b!5491954 (= e!3398012 (and tp!1510292 tp!1510291))))

(declare-fun b!5491953 () Bool)

(declare-fun tp!1510289 () Bool)

(assert (=> b!5491953 (= e!3398012 tp!1510289)))

(declare-fun b!5491952 () Bool)

(declare-fun tp!1510290 () Bool)

(declare-fun tp!1510288 () Bool)

(assert (=> b!5491952 (= e!3398012 (and tp!1510290 tp!1510288))))

(declare-fun b!5491951 () Bool)

(assert (=> b!5491951 (= e!3398012 tp_is_empty!40167)))

(assert (= (and b!5491093 ((_ is ElementMatch!15457) (regTwo!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491951))

(assert (= (and b!5491093 ((_ is Concat!24302) (regTwo!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491952))

(assert (= (and b!5491093 ((_ is Star!15457) (regTwo!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491953))

(assert (= (and b!5491093 ((_ is Union!15457) (regTwo!31426 (reg!15786 (regOne!31426 r!7292))))) b!5491954))

(declare-fun b!5491956 () Bool)

(declare-fun e!3398014 () Bool)

(declare-fun tp!1510293 () Bool)

(assert (=> b!5491956 (= e!3398014 tp!1510293)))

(declare-fun tp!1510294 () Bool)

(declare-fun b!5491955 () Bool)

(declare-fun e!3398013 () Bool)

(assert (=> b!5491955 (= e!3398013 (and (inv!81889 (h!68995 (t!375902 (t!375902 (t!375902 zl!343))))) e!3398014 tp!1510294))))

(assert (=> b!5491068 (= tp!1509712 e!3398013)))

(assert (= b!5491955 b!5491956))

(assert (= (and b!5491068 ((_ is Cons!62547) (t!375902 (t!375902 (t!375902 zl!343))))) b!5491955))

(declare-fun m!6504330 () Bool)

(assert (=> b!5491955 m!6504330))

(declare-fun e!3398015 () Bool)

(assert (=> b!5491133 (= tp!1509776 e!3398015)))

(declare-fun b!5491960 () Bool)

(declare-fun tp!1510299 () Bool)

(declare-fun tp!1510298 () Bool)

(assert (=> b!5491960 (= e!3398015 (and tp!1510299 tp!1510298))))

(declare-fun b!5491959 () Bool)

(declare-fun tp!1510296 () Bool)

(assert (=> b!5491959 (= e!3398015 tp!1510296)))

(declare-fun b!5491958 () Bool)

(declare-fun tp!1510297 () Bool)

(declare-fun tp!1510295 () Bool)

(assert (=> b!5491958 (= e!3398015 (and tp!1510297 tp!1510295))))

(declare-fun b!5491957 () Bool)

(assert (=> b!5491957 (= e!3398015 tp_is_empty!40167)))

(assert (= (and b!5491133 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491957))

(assert (= (and b!5491133 ((_ is Concat!24302) (regOne!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491958))

(assert (= (and b!5491133 ((_ is Star!15457) (regOne!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491959))

(assert (= (and b!5491133 ((_ is Union!15457) (regOne!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491960))

(declare-fun e!3398016 () Bool)

(assert (=> b!5491133 (= tp!1509775 e!3398016)))

(declare-fun b!5491964 () Bool)

(declare-fun tp!1510304 () Bool)

(declare-fun tp!1510303 () Bool)

(assert (=> b!5491964 (= e!3398016 (and tp!1510304 tp!1510303))))

(declare-fun b!5491963 () Bool)

(declare-fun tp!1510301 () Bool)

(assert (=> b!5491963 (= e!3398016 tp!1510301)))

(declare-fun b!5491962 () Bool)

(declare-fun tp!1510302 () Bool)

(declare-fun tp!1510300 () Bool)

(assert (=> b!5491962 (= e!3398016 (and tp!1510302 tp!1510300))))

(declare-fun b!5491961 () Bool)

(assert (=> b!5491961 (= e!3398016 tp_is_empty!40167)))

(assert (= (and b!5491133 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491961))

(assert (= (and b!5491133 ((_ is Concat!24302) (regTwo!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491962))

(assert (= (and b!5491133 ((_ is Star!15457) (regTwo!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491963))

(assert (= (and b!5491133 ((_ is Union!15457) (regTwo!31427 (regOne!31427 (reg!15786 r!7292))))) b!5491964))

(declare-fun b!5491966 () Bool)

(declare-fun e!3398018 () Bool)

(declare-fun tp!1510305 () Bool)

(assert (=> b!5491966 (= e!3398018 tp!1510305)))

(declare-fun tp!1510306 () Bool)

(declare-fun e!3398017 () Bool)

(declare-fun b!5491965 () Bool)

(assert (=> b!5491965 (= e!3398017 (and (inv!81889 (h!68995 (t!375902 res!2342016))) e!3398018 tp!1510306))))

(assert (=> b!5491057 (= tp!1509701 e!3398017)))

(assert (= b!5491965 b!5491966))

(assert (= (and b!5491057 ((_ is Cons!62547) (t!375902 res!2342016))) b!5491965))

(declare-fun m!6504332 () Bool)

(assert (=> b!5491965 m!6504332))

(declare-fun e!3398019 () Bool)

(assert (=> b!5491175 (= tp!1509829 e!3398019)))

(declare-fun b!5491970 () Bool)

(declare-fun tp!1510311 () Bool)

(declare-fun tp!1510310 () Bool)

(assert (=> b!5491970 (= e!3398019 (and tp!1510311 tp!1510310))))

(declare-fun b!5491969 () Bool)

(declare-fun tp!1510308 () Bool)

(assert (=> b!5491969 (= e!3398019 tp!1510308)))

(declare-fun b!5491968 () Bool)

(declare-fun tp!1510309 () Bool)

(declare-fun tp!1510307 () Bool)

(assert (=> b!5491968 (= e!3398019 (and tp!1510309 tp!1510307))))

(declare-fun b!5491967 () Bool)

(assert (=> b!5491967 (= e!3398019 tp_is_empty!40167)))

(assert (= (and b!5491175 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491967))

(assert (= (and b!5491175 ((_ is Concat!24302) (regOne!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491968))

(assert (= (and b!5491175 ((_ is Star!15457) (regOne!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491969))

(assert (= (and b!5491175 ((_ is Union!15457) (regOne!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491970))

(declare-fun e!3398020 () Bool)

(assert (=> b!5491175 (= tp!1509828 e!3398020)))

(declare-fun b!5491974 () Bool)

(declare-fun tp!1510316 () Bool)

(declare-fun tp!1510315 () Bool)

(assert (=> b!5491974 (= e!3398020 (and tp!1510316 tp!1510315))))

(declare-fun b!5491973 () Bool)

(declare-fun tp!1510313 () Bool)

(assert (=> b!5491973 (= e!3398020 tp!1510313)))

(declare-fun b!5491972 () Bool)

(declare-fun tp!1510314 () Bool)

(declare-fun tp!1510312 () Bool)

(assert (=> b!5491972 (= e!3398020 (and tp!1510314 tp!1510312))))

(declare-fun b!5491971 () Bool)

(assert (=> b!5491971 (= e!3398020 tp_is_empty!40167)))

(assert (= (and b!5491175 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491971))

(assert (= (and b!5491175 ((_ is Concat!24302) (regTwo!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491972))

(assert (= (and b!5491175 ((_ is Star!15457) (regTwo!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491973))

(assert (= (and b!5491175 ((_ is Union!15457) (regTwo!31427 (regOne!31426 (regTwo!31426 r!7292))))) b!5491974))

(declare-fun e!3398021 () Bool)

(assert (=> b!5491120 (= tp!1509759 e!3398021)))

(declare-fun b!5491978 () Bool)

(declare-fun tp!1510321 () Bool)

(declare-fun tp!1510320 () Bool)

(assert (=> b!5491978 (= e!3398021 (and tp!1510321 tp!1510320))))

(declare-fun b!5491977 () Bool)

(declare-fun tp!1510318 () Bool)

(assert (=> b!5491977 (= e!3398021 tp!1510318)))

(declare-fun b!5491976 () Bool)

(declare-fun tp!1510319 () Bool)

(declare-fun tp!1510317 () Bool)

(assert (=> b!5491976 (= e!3398021 (and tp!1510319 tp!1510317))))

(declare-fun b!5491975 () Bool)

(assert (=> b!5491975 (= e!3398021 tp_is_empty!40167)))

(assert (= (and b!5491120 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491975))

(assert (= (and b!5491120 ((_ is Concat!24302) (regOne!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491976))

(assert (= (and b!5491120 ((_ is Star!15457) (regOne!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491977))

(assert (= (and b!5491120 ((_ is Union!15457) (regOne!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491978))

(declare-fun e!3398022 () Bool)

(assert (=> b!5491120 (= tp!1509758 e!3398022)))

(declare-fun b!5491982 () Bool)

(declare-fun tp!1510326 () Bool)

(declare-fun tp!1510325 () Bool)

(assert (=> b!5491982 (= e!3398022 (and tp!1510326 tp!1510325))))

(declare-fun b!5491981 () Bool)

(declare-fun tp!1510323 () Bool)

(assert (=> b!5491981 (= e!3398022 tp!1510323)))

(declare-fun b!5491980 () Bool)

(declare-fun tp!1510324 () Bool)

(declare-fun tp!1510322 () Bool)

(assert (=> b!5491980 (= e!3398022 (and tp!1510324 tp!1510322))))

(declare-fun b!5491979 () Bool)

(assert (=> b!5491979 (= e!3398022 tp_is_empty!40167)))

(assert (= (and b!5491120 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491979))

(assert (= (and b!5491120 ((_ is Concat!24302) (regTwo!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491980))

(assert (= (and b!5491120 ((_ is Star!15457) (regTwo!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491981))

(assert (= (and b!5491120 ((_ is Union!15457) (regTwo!31427 (regTwo!31426 (regOne!31426 r!7292))))) b!5491982))

(declare-fun e!3398023 () Bool)

(assert (=> b!5491106 (= tp!1509742 e!3398023)))

(declare-fun b!5491986 () Bool)

(declare-fun tp!1510331 () Bool)

(declare-fun tp!1510330 () Bool)

(assert (=> b!5491986 (= e!3398023 (and tp!1510331 tp!1510330))))

(declare-fun b!5491985 () Bool)

(declare-fun tp!1510328 () Bool)

(assert (=> b!5491985 (= e!3398023 tp!1510328)))

(declare-fun b!5491984 () Bool)

(declare-fun tp!1510329 () Bool)

(declare-fun tp!1510327 () Bool)

(assert (=> b!5491984 (= e!3398023 (and tp!1510329 tp!1510327))))

(declare-fun b!5491983 () Bool)

(assert (=> b!5491983 (= e!3398023 tp_is_empty!40167)))

(assert (= (and b!5491106 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491983))

(assert (= (and b!5491106 ((_ is Concat!24302) (regOne!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491984))

(assert (= (and b!5491106 ((_ is Star!15457) (regOne!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491985))

(assert (= (and b!5491106 ((_ is Union!15457) (regOne!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491986))

(declare-fun e!3398024 () Bool)

(assert (=> b!5491106 (= tp!1509740 e!3398024)))

(declare-fun b!5491990 () Bool)

(declare-fun tp!1510336 () Bool)

(declare-fun tp!1510335 () Bool)

(assert (=> b!5491990 (= e!3398024 (and tp!1510336 tp!1510335))))

(declare-fun b!5491989 () Bool)

(declare-fun tp!1510333 () Bool)

(assert (=> b!5491989 (= e!3398024 tp!1510333)))

(declare-fun b!5491988 () Bool)

(declare-fun tp!1510334 () Bool)

(declare-fun tp!1510332 () Bool)

(assert (=> b!5491988 (= e!3398024 (and tp!1510334 tp!1510332))))

(declare-fun b!5491987 () Bool)

(assert (=> b!5491987 (= e!3398024 tp_is_empty!40167)))

(assert (= (and b!5491106 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491987))

(assert (= (and b!5491106 ((_ is Concat!24302) (regTwo!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491988))

(assert (= (and b!5491106 ((_ is Star!15457) (regTwo!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491989))

(assert (= (and b!5491106 ((_ is Union!15457) (regTwo!31426 (regOne!31426 (regOne!31427 r!7292))))) b!5491990))

(declare-fun e!3398025 () Bool)

(assert (=> b!5491164 (= tp!1509816 e!3398025)))

(declare-fun b!5491994 () Bool)

(declare-fun tp!1510341 () Bool)

(declare-fun tp!1510340 () Bool)

(assert (=> b!5491994 (= e!3398025 (and tp!1510341 tp!1510340))))

(declare-fun b!5491993 () Bool)

(declare-fun tp!1510338 () Bool)

(assert (=> b!5491993 (= e!3398025 tp!1510338)))

(declare-fun b!5491992 () Bool)

(declare-fun tp!1510339 () Bool)

(declare-fun tp!1510337 () Bool)

(assert (=> b!5491992 (= e!3398025 (and tp!1510339 tp!1510337))))

(declare-fun b!5491991 () Bool)

(assert (=> b!5491991 (= e!3398025 tp_is_empty!40167)))

(assert (= (and b!5491164 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491991))

(assert (= (and b!5491164 ((_ is Concat!24302) (regOne!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491992))

(assert (= (and b!5491164 ((_ is Star!15457) (regOne!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491993))

(assert (= (and b!5491164 ((_ is Union!15457) (regOne!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491994))

(declare-fun e!3398026 () Bool)

(assert (=> b!5491164 (= tp!1509814 e!3398026)))

(declare-fun b!5491998 () Bool)

(declare-fun tp!1510346 () Bool)

(declare-fun tp!1510345 () Bool)

(assert (=> b!5491998 (= e!3398026 (and tp!1510346 tp!1510345))))

(declare-fun b!5491997 () Bool)

(declare-fun tp!1510343 () Bool)

(assert (=> b!5491997 (= e!3398026 tp!1510343)))

(declare-fun b!5491996 () Bool)

(declare-fun tp!1510344 () Bool)

(declare-fun tp!1510342 () Bool)

(assert (=> b!5491996 (= e!3398026 (and tp!1510344 tp!1510342))))

(declare-fun b!5491995 () Bool)

(assert (=> b!5491995 (= e!3398026 tp_is_empty!40167)))

(assert (= (and b!5491164 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491995))

(assert (= (and b!5491164 ((_ is Concat!24302) (regTwo!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491996))

(assert (= (and b!5491164 ((_ is Star!15457) (regTwo!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491997))

(assert (= (and b!5491164 ((_ is Union!15457) (regTwo!31426 (regOne!31426 (regTwo!31427 r!7292))))) b!5491998))

(declare-fun e!3398027 () Bool)

(assert (=> b!5491111 (= tp!1509746 e!3398027)))

(declare-fun b!5492002 () Bool)

(declare-fun tp!1510351 () Bool)

(declare-fun tp!1510350 () Bool)

(assert (=> b!5492002 (= e!3398027 (and tp!1510351 tp!1510350))))

(declare-fun b!5492001 () Bool)

(declare-fun tp!1510348 () Bool)

(assert (=> b!5492001 (= e!3398027 tp!1510348)))

(declare-fun b!5492000 () Bool)

(declare-fun tp!1510349 () Bool)

(declare-fun tp!1510347 () Bool)

(assert (=> b!5492000 (= e!3398027 (and tp!1510349 tp!1510347))))

(declare-fun b!5491999 () Bool)

(assert (=> b!5491999 (= e!3398027 tp_is_empty!40167)))

(assert (= (and b!5491111 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31426 (regOne!31427 r!7292))))) b!5491999))

(assert (= (and b!5491111 ((_ is Concat!24302) (reg!15786 (regTwo!31426 (regOne!31427 r!7292))))) b!5492000))

(assert (= (and b!5491111 ((_ is Star!15457) (reg!15786 (regTwo!31426 (regOne!31427 r!7292))))) b!5492001))

(assert (= (and b!5491111 ((_ is Union!15457) (reg!15786 (regTwo!31426 (regOne!31427 r!7292))))) b!5492002))

(declare-fun e!3398028 () Bool)

(assert (=> b!5491149 (= tp!1509796 e!3398028)))

(declare-fun b!5492006 () Bool)

(declare-fun tp!1510356 () Bool)

(declare-fun tp!1510355 () Bool)

(assert (=> b!5492006 (= e!3398028 (and tp!1510356 tp!1510355))))

(declare-fun b!5492005 () Bool)

(declare-fun tp!1510353 () Bool)

(assert (=> b!5492005 (= e!3398028 tp!1510353)))

(declare-fun b!5492004 () Bool)

(declare-fun tp!1510354 () Bool)

(declare-fun tp!1510352 () Bool)

(assert (=> b!5492004 (= e!3398028 (and tp!1510354 tp!1510352))))

(declare-fun b!5492003 () Bool)

(assert (=> b!5492003 (= e!3398028 tp_is_empty!40167)))

(assert (= (and b!5491149 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492003))

(assert (= (and b!5491149 ((_ is Concat!24302) (regOne!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492004))

(assert (= (and b!5491149 ((_ is Star!15457) (regOne!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492005))

(assert (= (and b!5491149 ((_ is Union!15457) (regOne!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492006))

(declare-fun e!3398029 () Bool)

(assert (=> b!5491149 (= tp!1509795 e!3398029)))

(declare-fun b!5492010 () Bool)

(declare-fun tp!1510361 () Bool)

(declare-fun tp!1510360 () Bool)

(assert (=> b!5492010 (= e!3398029 (and tp!1510361 tp!1510360))))

(declare-fun b!5492009 () Bool)

(declare-fun tp!1510358 () Bool)

(assert (=> b!5492009 (= e!3398029 tp!1510358)))

(declare-fun b!5492008 () Bool)

(declare-fun tp!1510359 () Bool)

(declare-fun tp!1510357 () Bool)

(assert (=> b!5492008 (= e!3398029 (and tp!1510359 tp!1510357))))

(declare-fun b!5492007 () Bool)

(assert (=> b!5492007 (= e!3398029 tp_is_empty!40167)))

(assert (= (and b!5491149 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492007))

(assert (= (and b!5491149 ((_ is Concat!24302) (regTwo!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492008))

(assert (= (and b!5491149 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492009))

(assert (= (and b!5491149 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492010))

(declare-fun e!3398030 () Bool)

(assert (=> b!5491191 (= tp!1509849 e!3398030)))

(declare-fun b!5492014 () Bool)

(declare-fun tp!1510366 () Bool)

(declare-fun tp!1510365 () Bool)

(assert (=> b!5492014 (= e!3398030 (and tp!1510366 tp!1510365))))

(declare-fun b!5492013 () Bool)

(declare-fun tp!1510363 () Bool)

(assert (=> b!5492013 (= e!3398030 tp!1510363)))

(declare-fun b!5492012 () Bool)

(declare-fun tp!1510364 () Bool)

(declare-fun tp!1510362 () Bool)

(assert (=> b!5492012 (= e!3398030 (and tp!1510364 tp!1510362))))

(declare-fun b!5492011 () Bool)

(assert (=> b!5492011 (= e!3398030 tp_is_empty!40167)))

(assert (= (and b!5491191 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492011))

(assert (= (and b!5491191 ((_ is Concat!24302) (regOne!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492012))

(assert (= (and b!5491191 ((_ is Star!15457) (regOne!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492013))

(assert (= (and b!5491191 ((_ is Union!15457) (regOne!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492014))

(declare-fun e!3398031 () Bool)

(assert (=> b!5491191 (= tp!1509848 e!3398031)))

(declare-fun b!5492018 () Bool)

(declare-fun tp!1510371 () Bool)

(declare-fun tp!1510370 () Bool)

(assert (=> b!5492018 (= e!3398031 (and tp!1510371 tp!1510370))))

(declare-fun b!5492017 () Bool)

(declare-fun tp!1510368 () Bool)

(assert (=> b!5492017 (= e!3398031 tp!1510368)))

(declare-fun b!5492016 () Bool)

(declare-fun tp!1510369 () Bool)

(declare-fun tp!1510367 () Bool)

(assert (=> b!5492016 (= e!3398031 (and tp!1510369 tp!1510367))))

(declare-fun b!5492015 () Bool)

(assert (=> b!5492015 (= e!3398031 tp_is_empty!40167)))

(assert (= (and b!5491191 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492015))

(assert (= (and b!5491191 ((_ is Concat!24302) (regTwo!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492016))

(assert (= (and b!5491191 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492017))

(assert (= (and b!5491191 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492018))

(declare-fun e!3398032 () Bool)

(assert (=> b!5491140 (= tp!1509783 e!3398032)))

(declare-fun b!5492022 () Bool)

(declare-fun tp!1510376 () Bool)

(declare-fun tp!1510375 () Bool)

(assert (=> b!5492022 (= e!3398032 (and tp!1510376 tp!1510375))))

(declare-fun b!5492021 () Bool)

(declare-fun tp!1510373 () Bool)

(assert (=> b!5492021 (= e!3398032 tp!1510373)))

(declare-fun b!5492020 () Bool)

(declare-fun tp!1510374 () Bool)

(declare-fun tp!1510372 () Bool)

(assert (=> b!5492020 (= e!3398032 (and tp!1510374 tp!1510372))))

(declare-fun b!5492019 () Bool)

(assert (=> b!5492019 (= e!3398032 tp_is_empty!40167)))

(assert (= (and b!5491140 ((_ is ElementMatch!15457) (reg!15786 (reg!15786 (regTwo!31426 r!7292))))) b!5492019))

(assert (= (and b!5491140 ((_ is Concat!24302) (reg!15786 (reg!15786 (regTwo!31426 r!7292))))) b!5492020))

(assert (= (and b!5491140 ((_ is Star!15457) (reg!15786 (reg!15786 (regTwo!31426 r!7292))))) b!5492021))

(assert (= (and b!5491140 ((_ is Union!15457) (reg!15786 (reg!15786 (regTwo!31426 r!7292))))) b!5492022))

(declare-fun e!3398033 () Bool)

(assert (=> b!5491182 (= tp!1509836 e!3398033)))

(declare-fun b!5492026 () Bool)

(declare-fun tp!1510381 () Bool)

(declare-fun tp!1510380 () Bool)

(assert (=> b!5492026 (= e!3398033 (and tp!1510381 tp!1510380))))

(declare-fun b!5492025 () Bool)

(declare-fun tp!1510378 () Bool)

(assert (=> b!5492025 (= e!3398033 tp!1510378)))

(declare-fun b!5492024 () Bool)

(declare-fun tp!1510379 () Bool)

(declare-fun tp!1510377 () Bool)

(assert (=> b!5492024 (= e!3398033 (and tp!1510379 tp!1510377))))

(declare-fun b!5492023 () Bool)

(assert (=> b!5492023 (= e!3398033 tp_is_empty!40167)))

(assert (= (and b!5491182 ((_ is ElementMatch!15457) (reg!15786 (reg!15786 (regTwo!31427 r!7292))))) b!5492023))

(assert (= (and b!5491182 ((_ is Concat!24302) (reg!15786 (reg!15786 (regTwo!31427 r!7292))))) b!5492024))

(assert (= (and b!5491182 ((_ is Star!15457) (reg!15786 (reg!15786 (regTwo!31427 r!7292))))) b!5492025))

(assert (= (and b!5491182 ((_ is Union!15457) (reg!15786 (reg!15786 (regTwo!31427 r!7292))))) b!5492026))

(declare-fun e!3398034 () Bool)

(assert (=> b!5491131 (= tp!1509774 e!3398034)))

(declare-fun b!5492030 () Bool)

(declare-fun tp!1510386 () Bool)

(declare-fun tp!1510385 () Bool)

(assert (=> b!5492030 (= e!3398034 (and tp!1510386 tp!1510385))))

(declare-fun b!5492029 () Bool)

(declare-fun tp!1510383 () Bool)

(assert (=> b!5492029 (= e!3398034 tp!1510383)))

(declare-fun b!5492028 () Bool)

(declare-fun tp!1510384 () Bool)

(declare-fun tp!1510382 () Bool)

(assert (=> b!5492028 (= e!3398034 (and tp!1510384 tp!1510382))))

(declare-fun b!5492027 () Bool)

(assert (=> b!5492027 (= e!3398034 tp_is_empty!40167)))

(assert (= (and b!5491131 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492027))

(assert (= (and b!5491131 ((_ is Concat!24302) (regOne!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492028))

(assert (= (and b!5491131 ((_ is Star!15457) (regOne!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492029))

(assert (= (and b!5491131 ((_ is Union!15457) (regOne!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492030))

(declare-fun e!3398035 () Bool)

(assert (=> b!5491131 (= tp!1509772 e!3398035)))

(declare-fun b!5492034 () Bool)

(declare-fun tp!1510391 () Bool)

(declare-fun tp!1510390 () Bool)

(assert (=> b!5492034 (= e!3398035 (and tp!1510391 tp!1510390))))

(declare-fun b!5492033 () Bool)

(declare-fun tp!1510388 () Bool)

(assert (=> b!5492033 (= e!3398035 tp!1510388)))

(declare-fun b!5492032 () Bool)

(declare-fun tp!1510389 () Bool)

(declare-fun tp!1510387 () Bool)

(assert (=> b!5492032 (= e!3398035 (and tp!1510389 tp!1510387))))

(declare-fun b!5492031 () Bool)

(assert (=> b!5492031 (= e!3398035 tp_is_empty!40167)))

(assert (= (and b!5491131 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492031))

(assert (= (and b!5491131 ((_ is Concat!24302) (regTwo!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492032))

(assert (= (and b!5491131 ((_ is Star!15457) (regTwo!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492033))

(assert (= (and b!5491131 ((_ is Union!15457) (regTwo!31426 (regOne!31427 (reg!15786 r!7292))))) b!5492034))

(declare-fun e!3398036 () Bool)

(assert (=> b!5491173 (= tp!1509827 e!3398036)))

(declare-fun b!5492038 () Bool)

(declare-fun tp!1510396 () Bool)

(declare-fun tp!1510395 () Bool)

(assert (=> b!5492038 (= e!3398036 (and tp!1510396 tp!1510395))))

(declare-fun b!5492037 () Bool)

(declare-fun tp!1510393 () Bool)

(assert (=> b!5492037 (= e!3398036 tp!1510393)))

(declare-fun b!5492036 () Bool)

(declare-fun tp!1510394 () Bool)

(declare-fun tp!1510392 () Bool)

(assert (=> b!5492036 (= e!3398036 (and tp!1510394 tp!1510392))))

(declare-fun b!5492035 () Bool)

(assert (=> b!5492035 (= e!3398036 tp_is_empty!40167)))

(assert (= (and b!5491173 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492035))

(assert (= (and b!5491173 ((_ is Concat!24302) (regOne!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492036))

(assert (= (and b!5491173 ((_ is Star!15457) (regOne!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492037))

(assert (= (and b!5491173 ((_ is Union!15457) (regOne!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492038))

(declare-fun e!3398037 () Bool)

(assert (=> b!5491173 (= tp!1509825 e!3398037)))

(declare-fun b!5492042 () Bool)

(declare-fun tp!1510401 () Bool)

(declare-fun tp!1510400 () Bool)

(assert (=> b!5492042 (= e!3398037 (and tp!1510401 tp!1510400))))

(declare-fun b!5492041 () Bool)

(declare-fun tp!1510398 () Bool)

(assert (=> b!5492041 (= e!3398037 tp!1510398)))

(declare-fun b!5492040 () Bool)

(declare-fun tp!1510399 () Bool)

(declare-fun tp!1510397 () Bool)

(assert (=> b!5492040 (= e!3398037 (and tp!1510399 tp!1510397))))

(declare-fun b!5492039 () Bool)

(assert (=> b!5492039 (= e!3398037 tp_is_empty!40167)))

(assert (= (and b!5491173 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492039))

(assert (= (and b!5491173 ((_ is Concat!24302) (regTwo!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492040))

(assert (= (and b!5491173 ((_ is Star!15457) (regTwo!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492041))

(assert (= (and b!5491173 ((_ is Union!15457) (regTwo!31426 (regOne!31426 (regTwo!31426 r!7292))))) b!5492042))

(declare-fun condSetEmpty!36348 () Bool)

(assert (=> setNonEmpty!36346 (= condSetEmpty!36348 (= setRest!36346 ((as const (Array Context!9682 Bool)) false)))))

(declare-fun setRes!36348 () Bool)

(assert (=> setNonEmpty!36346 (= tp!1509766 setRes!36348)))

(declare-fun setIsEmpty!36348 () Bool)

(assert (=> setIsEmpty!36348 setRes!36348))

(declare-fun setElem!36348 () Context!9682)

(declare-fun e!3398038 () Bool)

(declare-fun setNonEmpty!36348 () Bool)

(declare-fun tp!1510403 () Bool)

(assert (=> setNonEmpty!36348 (= setRes!36348 (and tp!1510403 (inv!81889 setElem!36348) e!3398038))))

(declare-fun setRest!36348 () (InoxSet Context!9682))

(assert (=> setNonEmpty!36348 (= setRest!36346 ((_ map or) (store ((as const (Array Context!9682 Bool)) false) setElem!36348 true) setRest!36348))))

(declare-fun b!5492043 () Bool)

(declare-fun tp!1510402 () Bool)

(assert (=> b!5492043 (= e!3398038 tp!1510402)))

(assert (= (and setNonEmpty!36346 condSetEmpty!36348) setIsEmpty!36348))

(assert (= (and setNonEmpty!36346 (not condSetEmpty!36348)) setNonEmpty!36348))

(assert (= setNonEmpty!36348 b!5492043))

(declare-fun m!6504334 () Bool)

(assert (=> setNonEmpty!36348 m!6504334))

(declare-fun e!3398039 () Bool)

(assert (=> b!5491166 (= tp!1509818 e!3398039)))

(declare-fun b!5492047 () Bool)

(declare-fun tp!1510408 () Bool)

(declare-fun tp!1510407 () Bool)

(assert (=> b!5492047 (= e!3398039 (and tp!1510408 tp!1510407))))

(declare-fun b!5492046 () Bool)

(declare-fun tp!1510405 () Bool)

(assert (=> b!5492046 (= e!3398039 tp!1510405)))

(declare-fun b!5492045 () Bool)

(declare-fun tp!1510406 () Bool)

(declare-fun tp!1510404 () Bool)

(assert (=> b!5492045 (= e!3398039 (and tp!1510406 tp!1510404))))

(declare-fun b!5492044 () Bool)

(assert (=> b!5492044 (= e!3398039 tp_is_empty!40167)))

(assert (= (and b!5491166 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492044))

(assert (= (and b!5491166 ((_ is Concat!24302) (regOne!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492045))

(assert (= (and b!5491166 ((_ is Star!15457) (regOne!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492046))

(assert (= (and b!5491166 ((_ is Union!15457) (regOne!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492047))

(declare-fun e!3398040 () Bool)

(assert (=> b!5491166 (= tp!1509817 e!3398040)))

(declare-fun b!5492051 () Bool)

(declare-fun tp!1510413 () Bool)

(declare-fun tp!1510412 () Bool)

(assert (=> b!5492051 (= e!3398040 (and tp!1510413 tp!1510412))))

(declare-fun b!5492050 () Bool)

(declare-fun tp!1510410 () Bool)

(assert (=> b!5492050 (= e!3398040 tp!1510410)))

(declare-fun b!5492049 () Bool)

(declare-fun tp!1510411 () Bool)

(declare-fun tp!1510409 () Bool)

(assert (=> b!5492049 (= e!3398040 (and tp!1510411 tp!1510409))))

(declare-fun b!5492048 () Bool)

(assert (=> b!5492048 (= e!3398040 tp_is_empty!40167)))

(assert (= (and b!5491166 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492048))

(assert (= (and b!5491166 ((_ is Concat!24302) (regTwo!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492049))

(assert (= (and b!5491166 ((_ is Star!15457) (regTwo!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492050))

(assert (= (and b!5491166 ((_ is Union!15457) (regTwo!31427 (regOne!31426 (regTwo!31427 r!7292))))) b!5492051))

(declare-fun e!3398041 () Bool)

(assert (=> b!5491118 (= tp!1509757 e!3398041)))

(declare-fun b!5492055 () Bool)

(declare-fun tp!1510418 () Bool)

(declare-fun tp!1510417 () Bool)

(assert (=> b!5492055 (= e!3398041 (and tp!1510418 tp!1510417))))

(declare-fun b!5492054 () Bool)

(declare-fun tp!1510415 () Bool)

(assert (=> b!5492054 (= e!3398041 tp!1510415)))

(declare-fun b!5492053 () Bool)

(declare-fun tp!1510416 () Bool)

(declare-fun tp!1510414 () Bool)

(assert (=> b!5492053 (= e!3398041 (and tp!1510416 tp!1510414))))

(declare-fun b!5492052 () Bool)

(assert (=> b!5492052 (= e!3398041 tp_is_empty!40167)))

(assert (= (and b!5491118 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492052))

(assert (= (and b!5491118 ((_ is Concat!24302) (regOne!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492053))

(assert (= (and b!5491118 ((_ is Star!15457) (regOne!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492054))

(assert (= (and b!5491118 ((_ is Union!15457) (regOne!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492055))

(declare-fun e!3398042 () Bool)

(assert (=> b!5491118 (= tp!1509755 e!3398042)))

(declare-fun b!5492059 () Bool)

(declare-fun tp!1510423 () Bool)

(declare-fun tp!1510422 () Bool)

(assert (=> b!5492059 (= e!3398042 (and tp!1510423 tp!1510422))))

(declare-fun b!5492058 () Bool)

(declare-fun tp!1510420 () Bool)

(assert (=> b!5492058 (= e!3398042 tp!1510420)))

(declare-fun b!5492057 () Bool)

(declare-fun tp!1510421 () Bool)

(declare-fun tp!1510419 () Bool)

(assert (=> b!5492057 (= e!3398042 (and tp!1510421 tp!1510419))))

(declare-fun b!5492056 () Bool)

(assert (=> b!5492056 (= e!3398042 tp_is_empty!40167)))

(assert (= (and b!5491118 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492056))

(assert (= (and b!5491118 ((_ is Concat!24302) (regTwo!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492057))

(assert (= (and b!5491118 ((_ is Star!15457) (regTwo!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492058))

(assert (= (and b!5491118 ((_ is Union!15457) (regTwo!31426 (regTwo!31426 (regOne!31426 r!7292))))) b!5492059))

(declare-fun e!3398043 () Bool)

(assert (=> b!5491098 (= tp!1509729 e!3398043)))

(declare-fun b!5492063 () Bool)

(declare-fun tp!1510428 () Bool)

(declare-fun tp!1510427 () Bool)

(assert (=> b!5492063 (= e!3398043 (and tp!1510428 tp!1510427))))

(declare-fun b!5492062 () Bool)

(declare-fun tp!1510425 () Bool)

(assert (=> b!5492062 (= e!3398043 tp!1510425)))

(declare-fun b!5492061 () Bool)

(declare-fun tp!1510426 () Bool)

(declare-fun tp!1510424 () Bool)

(assert (=> b!5492061 (= e!3398043 (and tp!1510426 tp!1510424))))

(declare-fun b!5492060 () Bool)

(assert (=> b!5492060 (= e!3398043 tp_is_empty!40167)))

(assert (= (and b!5491098 ((_ is ElementMatch!15457) (reg!15786 (regOne!31427 (regOne!31426 r!7292))))) b!5492060))

(assert (= (and b!5491098 ((_ is Concat!24302) (reg!15786 (regOne!31427 (regOne!31426 r!7292))))) b!5492061))

(assert (= (and b!5491098 ((_ is Star!15457) (reg!15786 (regOne!31427 (regOne!31426 r!7292))))) b!5492062))

(assert (= (and b!5491098 ((_ is Union!15457) (reg!15786 (regOne!31427 (regOne!31426 r!7292))))) b!5492063))

(declare-fun e!3398044 () Bool)

(assert (=> b!5491089 (= tp!1509720 e!3398044)))

(declare-fun b!5492067 () Bool)

(declare-fun tp!1510433 () Bool)

(declare-fun tp!1510432 () Bool)

(assert (=> b!5492067 (= e!3398044 (and tp!1510433 tp!1510432))))

(declare-fun b!5492066 () Bool)

(declare-fun tp!1510430 () Bool)

(assert (=> b!5492066 (= e!3398044 tp!1510430)))

(declare-fun b!5492065 () Bool)

(declare-fun tp!1510431 () Bool)

(declare-fun tp!1510429 () Bool)

(assert (=> b!5492065 (= e!3398044 (and tp!1510431 tp!1510429))))

(declare-fun b!5492064 () Bool)

(assert (=> b!5492064 (= e!3398044 tp_is_empty!40167)))

(assert (= (and b!5491089 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492064))

(assert (= (and b!5491089 ((_ is Concat!24302) (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492065))

(assert (= (and b!5491089 ((_ is Star!15457) (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492066))

(assert (= (and b!5491089 ((_ is Union!15457) (regOne!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492067))

(declare-fun e!3398045 () Bool)

(assert (=> b!5491089 (= tp!1509718 e!3398045)))

(declare-fun b!5492071 () Bool)

(declare-fun tp!1510438 () Bool)

(declare-fun tp!1510437 () Bool)

(assert (=> b!5492071 (= e!3398045 (and tp!1510438 tp!1510437))))

(declare-fun b!5492070 () Bool)

(declare-fun tp!1510435 () Bool)

(assert (=> b!5492070 (= e!3398045 tp!1510435)))

(declare-fun b!5492069 () Bool)

(declare-fun tp!1510436 () Bool)

(declare-fun tp!1510434 () Bool)

(assert (=> b!5492069 (= e!3398045 (and tp!1510436 tp!1510434))))

(declare-fun b!5492068 () Bool)

(assert (=> b!5492068 (= e!3398045 tp_is_empty!40167)))

(assert (= (and b!5491089 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492068))

(assert (= (and b!5491089 ((_ is Concat!24302) (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492069))

(assert (= (and b!5491089 ((_ is Star!15457) (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492070))

(assert (= (and b!5491089 ((_ is Union!15457) (regTwo!31426 (regTwo!31427 (regOne!31427 r!7292))))) b!5492071))

(declare-fun e!3398046 () Bool)

(assert (=> b!5491156 (= tp!1509803 e!3398046)))

(declare-fun b!5492075 () Bool)

(declare-fun tp!1510443 () Bool)

(declare-fun tp!1510442 () Bool)

(assert (=> b!5492075 (= e!3398046 (and tp!1510443 tp!1510442))))

(declare-fun b!5492074 () Bool)

(declare-fun tp!1510440 () Bool)

(assert (=> b!5492074 (= e!3398046 tp!1510440)))

(declare-fun b!5492073 () Bool)

(declare-fun tp!1510441 () Bool)

(declare-fun tp!1510439 () Bool)

(assert (=> b!5492073 (= e!3398046 (and tp!1510441 tp!1510439))))

(declare-fun b!5492072 () Bool)

(assert (=> b!5492072 (= e!3398046 tp_is_empty!40167)))

(assert (= (and b!5491156 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31426 (reg!15786 r!7292))))) b!5492072))

(assert (= (and b!5491156 ((_ is Concat!24302) (reg!15786 (regTwo!31426 (reg!15786 r!7292))))) b!5492073))

(assert (= (and b!5491156 ((_ is Star!15457) (reg!15786 (regTwo!31426 (reg!15786 r!7292))))) b!5492074))

(assert (= (and b!5491156 ((_ is Union!15457) (reg!15786 (regTwo!31426 (reg!15786 r!7292))))) b!5492075))

(declare-fun e!3398047 () Bool)

(assert (=> b!5491147 (= tp!1509794 e!3398047)))

(declare-fun b!5492079 () Bool)

(declare-fun tp!1510448 () Bool)

(declare-fun tp!1510447 () Bool)

(assert (=> b!5492079 (= e!3398047 (and tp!1510448 tp!1510447))))

(declare-fun b!5492078 () Bool)

(declare-fun tp!1510445 () Bool)

(assert (=> b!5492078 (= e!3398047 tp!1510445)))

(declare-fun b!5492077 () Bool)

(declare-fun tp!1510446 () Bool)

(declare-fun tp!1510444 () Bool)

(assert (=> b!5492077 (= e!3398047 (and tp!1510446 tp!1510444))))

(declare-fun b!5492076 () Bool)

(assert (=> b!5492076 (= e!3398047 tp_is_empty!40167)))

(assert (= (and b!5491147 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492076))

(assert (= (and b!5491147 ((_ is Concat!24302) (regOne!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492077))

(assert (= (and b!5491147 ((_ is Star!15457) (regOne!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492078))

(assert (= (and b!5491147 ((_ is Union!15457) (regOne!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492079))

(declare-fun e!3398048 () Bool)

(assert (=> b!5491147 (= tp!1509792 e!3398048)))

(declare-fun b!5492083 () Bool)

(declare-fun tp!1510453 () Bool)

(declare-fun tp!1510452 () Bool)

(assert (=> b!5492083 (= e!3398048 (and tp!1510453 tp!1510452))))

(declare-fun b!5492082 () Bool)

(declare-fun tp!1510450 () Bool)

(assert (=> b!5492082 (= e!3398048 tp!1510450)))

(declare-fun b!5492081 () Bool)

(declare-fun tp!1510451 () Bool)

(declare-fun tp!1510449 () Bool)

(assert (=> b!5492081 (= e!3398048 (and tp!1510451 tp!1510449))))

(declare-fun b!5492080 () Bool)

(assert (=> b!5492080 (= e!3398048 tp_is_empty!40167)))

(assert (= (and b!5491147 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492080))

(assert (= (and b!5491147 ((_ is Concat!24302) (regTwo!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492081))

(assert (= (and b!5491147 ((_ is Star!15457) (regTwo!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492082))

(assert (= (and b!5491147 ((_ is Union!15457) (regTwo!31426 (regTwo!31427 (regTwo!31426 r!7292))))) b!5492083))

(declare-fun e!3398049 () Bool)

(assert (=> b!5491189 (= tp!1509847 e!3398049)))

(declare-fun b!5492087 () Bool)

(declare-fun tp!1510458 () Bool)

(declare-fun tp!1510457 () Bool)

(assert (=> b!5492087 (= e!3398049 (and tp!1510458 tp!1510457))))

(declare-fun b!5492086 () Bool)

(declare-fun tp!1510455 () Bool)

(assert (=> b!5492086 (= e!3398049 tp!1510455)))

(declare-fun b!5492085 () Bool)

(declare-fun tp!1510456 () Bool)

(declare-fun tp!1510454 () Bool)

(assert (=> b!5492085 (= e!3398049 (and tp!1510456 tp!1510454))))

(declare-fun b!5492084 () Bool)

(assert (=> b!5492084 (= e!3398049 tp_is_empty!40167)))

(assert (= (and b!5491189 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492084))

(assert (= (and b!5491189 ((_ is Concat!24302) (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492085))

(assert (= (and b!5491189 ((_ is Star!15457) (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492086))

(assert (= (and b!5491189 ((_ is Union!15457) (regOne!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492087))

(declare-fun e!3398050 () Bool)

(assert (=> b!5491189 (= tp!1509845 e!3398050)))

(declare-fun b!5492091 () Bool)

(declare-fun tp!1510463 () Bool)

(declare-fun tp!1510462 () Bool)

(assert (=> b!5492091 (= e!3398050 (and tp!1510463 tp!1510462))))

(declare-fun b!5492090 () Bool)

(declare-fun tp!1510460 () Bool)

(assert (=> b!5492090 (= e!3398050 tp!1510460)))

(declare-fun b!5492089 () Bool)

(declare-fun tp!1510461 () Bool)

(declare-fun tp!1510459 () Bool)

(assert (=> b!5492089 (= e!3398050 (and tp!1510461 tp!1510459))))

(declare-fun b!5492088 () Bool)

(assert (=> b!5492088 (= e!3398050 tp_is_empty!40167)))

(assert (= (and b!5491189 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492088))

(assert (= (and b!5491189 ((_ is Concat!24302) (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492089))

(assert (= (and b!5491189 ((_ is Star!15457) (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492090))

(assert (= (and b!5491189 ((_ is Union!15457) (regTwo!31426 (regTwo!31427 (regTwo!31427 r!7292))))) b!5492091))

(declare-fun e!3398051 () Bool)

(assert (=> b!5491091 (= tp!1509722 e!3398051)))

(declare-fun b!5492095 () Bool)

(declare-fun tp!1510468 () Bool)

(declare-fun tp!1510467 () Bool)

(assert (=> b!5492095 (= e!3398051 (and tp!1510468 tp!1510467))))

(declare-fun b!5492094 () Bool)

(declare-fun tp!1510465 () Bool)

(assert (=> b!5492094 (= e!3398051 tp!1510465)))

(declare-fun b!5492093 () Bool)

(declare-fun tp!1510466 () Bool)

(declare-fun tp!1510464 () Bool)

(assert (=> b!5492093 (= e!3398051 (and tp!1510466 tp!1510464))))

(declare-fun b!5492092 () Bool)

(assert (=> b!5492092 (= e!3398051 tp_is_empty!40167)))

(assert (= (and b!5491091 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492092))

(assert (= (and b!5491091 ((_ is Concat!24302) (regOne!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492093))

(assert (= (and b!5491091 ((_ is Star!15457) (regOne!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492094))

(assert (= (and b!5491091 ((_ is Union!15457) (regOne!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492095))

(declare-fun e!3398052 () Bool)

(assert (=> b!5491091 (= tp!1509721 e!3398052)))

(declare-fun b!5492099 () Bool)

(declare-fun tp!1510473 () Bool)

(declare-fun tp!1510472 () Bool)

(assert (=> b!5492099 (= e!3398052 (and tp!1510473 tp!1510472))))

(declare-fun b!5492098 () Bool)

(declare-fun tp!1510470 () Bool)

(assert (=> b!5492098 (= e!3398052 tp!1510470)))

(declare-fun b!5492097 () Bool)

(declare-fun tp!1510471 () Bool)

(declare-fun tp!1510469 () Bool)

(assert (=> b!5492097 (= e!3398052 (and tp!1510471 tp!1510469))))

(declare-fun b!5492096 () Bool)

(assert (=> b!5492096 (= e!3398052 tp_is_empty!40167)))

(assert (= (and b!5491091 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492096))

(assert (= (and b!5491091 ((_ is Concat!24302) (regTwo!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492097))

(assert (= (and b!5491091 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492098))

(assert (= (and b!5491091 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 (regOne!31427 r!7292))))) b!5492099))

(declare-fun e!3398053 () Bool)

(assert (=> b!5491123 (= tp!1509761 e!3398053)))

(declare-fun b!5492103 () Bool)

(declare-fun tp!1510478 () Bool)

(declare-fun tp!1510477 () Bool)

(assert (=> b!5492103 (= e!3398053 (and tp!1510478 tp!1510477))))

(declare-fun b!5492102 () Bool)

(declare-fun tp!1510475 () Bool)

(assert (=> b!5492102 (= e!3398053 tp!1510475)))

(declare-fun b!5492101 () Bool)

(declare-fun tp!1510476 () Bool)

(declare-fun tp!1510474 () Bool)

(assert (=> b!5492101 (= e!3398053 (and tp!1510476 tp!1510474))))

(declare-fun b!5492100 () Bool)

(assert (=> b!5492100 (= e!3398053 tp_is_empty!40167)))

(assert (= (and b!5491123 ((_ is ElementMatch!15457) (reg!15786 (reg!15786 (regOne!31427 r!7292))))) b!5492100))

(assert (= (and b!5491123 ((_ is Concat!24302) (reg!15786 (reg!15786 (regOne!31427 r!7292))))) b!5492101))

(assert (= (and b!5491123 ((_ is Star!15457) (reg!15786 (reg!15786 (regOne!31427 r!7292))))) b!5492102))

(assert (= (and b!5491123 ((_ is Union!15457) (reg!15786 (reg!15786 (regOne!31427 r!7292))))) b!5492103))

(declare-fun e!3398054 () Bool)

(assert (=> b!5491162 (= tp!1509812 e!3398054)))

(declare-fun b!5492107 () Bool)

(declare-fun tp!1510483 () Bool)

(declare-fun tp!1510482 () Bool)

(assert (=> b!5492107 (= e!3398054 (and tp!1510483 tp!1510482))))

(declare-fun b!5492106 () Bool)

(declare-fun tp!1510480 () Bool)

(assert (=> b!5492106 (= e!3398054 tp!1510480)))

(declare-fun b!5492105 () Bool)

(declare-fun tp!1510481 () Bool)

(declare-fun tp!1510479 () Bool)

(assert (=> b!5492105 (= e!3398054 (and tp!1510481 tp!1510479))))

(declare-fun b!5492104 () Bool)

(assert (=> b!5492104 (= e!3398054 tp_is_empty!40167)))

(assert (= (and b!5491162 ((_ is ElementMatch!15457) (h!68994 (t!375901 (exprs!5341 setElem!36339))))) b!5492104))

(assert (= (and b!5491162 ((_ is Concat!24302) (h!68994 (t!375901 (exprs!5341 setElem!36339))))) b!5492105))

(assert (= (and b!5491162 ((_ is Star!15457) (h!68994 (t!375901 (exprs!5341 setElem!36339))))) b!5492106))

(assert (= (and b!5491162 ((_ is Union!15457) (h!68994 (t!375901 (exprs!5341 setElem!36339))))) b!5492107))

(declare-fun b!5492108 () Bool)

(declare-fun e!3398055 () Bool)

(declare-fun tp!1510484 () Bool)

(declare-fun tp!1510485 () Bool)

(assert (=> b!5492108 (= e!3398055 (and tp!1510484 tp!1510485))))

(assert (=> b!5491162 (= tp!1509813 e!3398055)))

(assert (= (and b!5491162 ((_ is Cons!62546) (t!375901 (t!375901 (exprs!5341 setElem!36339))))) b!5492108))

(declare-fun e!3398056 () Bool)

(assert (=> b!5491114 (= tp!1509752 e!3398056)))

(declare-fun b!5492112 () Bool)

(declare-fun tp!1510490 () Bool)

(declare-fun tp!1510489 () Bool)

(assert (=> b!5492112 (= e!3398056 (and tp!1510490 tp!1510489))))

(declare-fun b!5492111 () Bool)

(declare-fun tp!1510487 () Bool)

(assert (=> b!5492111 (= e!3398056 tp!1510487)))

(declare-fun b!5492110 () Bool)

(declare-fun tp!1510488 () Bool)

(declare-fun tp!1510486 () Bool)

(assert (=> b!5492110 (= e!3398056 (and tp!1510488 tp!1510486))))

(declare-fun b!5492109 () Bool)

(assert (=> b!5492109 (= e!3398056 tp_is_empty!40167)))

(assert (= (and b!5491114 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492109))

(assert (= (and b!5491114 ((_ is Concat!24302) (regOne!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492110))

(assert (= (and b!5491114 ((_ is Star!15457) (regOne!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492111))

(assert (= (and b!5491114 ((_ is Union!15457) (regOne!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492112))

(declare-fun e!3398057 () Bool)

(assert (=> b!5491114 (= tp!1509750 e!3398057)))

(declare-fun b!5492116 () Bool)

(declare-fun tp!1510495 () Bool)

(declare-fun tp!1510494 () Bool)

(assert (=> b!5492116 (= e!3398057 (and tp!1510495 tp!1510494))))

(declare-fun b!5492115 () Bool)

(declare-fun tp!1510492 () Bool)

(assert (=> b!5492115 (= e!3398057 tp!1510492)))

(declare-fun b!5492114 () Bool)

(declare-fun tp!1510493 () Bool)

(declare-fun tp!1510491 () Bool)

(assert (=> b!5492114 (= e!3398057 (and tp!1510493 tp!1510491))))

(declare-fun b!5492113 () Bool)

(assert (=> b!5492113 (= e!3398057 tp_is_empty!40167)))

(assert (= (and b!5491114 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492113))

(assert (= (and b!5491114 ((_ is Concat!24302) (regTwo!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492114))

(assert (= (and b!5491114 ((_ is Star!15457) (regTwo!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492115))

(assert (= (and b!5491114 ((_ is Union!15457) (regTwo!31426 (regOne!31426 (regOne!31426 r!7292))))) b!5492116))

(declare-fun e!3398058 () Bool)

(assert (=> b!5491104 (= tp!1509738 e!3398058)))

(declare-fun b!5492120 () Bool)

(declare-fun tp!1510500 () Bool)

(declare-fun tp!1510499 () Bool)

(assert (=> b!5492120 (= e!3398058 (and tp!1510500 tp!1510499))))

(declare-fun b!5492119 () Bool)

(declare-fun tp!1510497 () Bool)

(assert (=> b!5492119 (= e!3398058 tp!1510497)))

(declare-fun b!5492118 () Bool)

(declare-fun tp!1510498 () Bool)

(declare-fun tp!1510496 () Bool)

(assert (=> b!5492118 (= e!3398058 (and tp!1510498 tp!1510496))))

(declare-fun b!5492117 () Bool)

(assert (=> b!5492117 (= e!3398058 tp_is_empty!40167)))

(assert (= (and b!5491104 ((_ is ElementMatch!15457) (h!68994 (exprs!5341 setElem!36345)))) b!5492117))

(assert (= (and b!5491104 ((_ is Concat!24302) (h!68994 (exprs!5341 setElem!36345)))) b!5492118))

(assert (= (and b!5491104 ((_ is Star!15457) (h!68994 (exprs!5341 setElem!36345)))) b!5492119))

(assert (= (and b!5491104 ((_ is Union!15457) (h!68994 (exprs!5341 setElem!36345)))) b!5492120))

(declare-fun b!5492121 () Bool)

(declare-fun e!3398059 () Bool)

(declare-fun tp!1510501 () Bool)

(declare-fun tp!1510502 () Bool)

(assert (=> b!5492121 (= e!3398059 (and tp!1510501 tp!1510502))))

(assert (=> b!5491104 (= tp!1509739 e!3398059)))

(assert (= (and b!5491104 ((_ is Cons!62546) (t!375901 (exprs!5341 setElem!36345)))) b!5492121))

(declare-fun e!3398060 () Bool)

(assert (=> b!5491129 (= tp!1509771 e!3398060)))

(declare-fun b!5492125 () Bool)

(declare-fun tp!1510507 () Bool)

(declare-fun tp!1510506 () Bool)

(assert (=> b!5492125 (= e!3398060 (and tp!1510507 tp!1510506))))

(declare-fun b!5492124 () Bool)

(declare-fun tp!1510504 () Bool)

(assert (=> b!5492124 (= e!3398060 tp!1510504)))

(declare-fun b!5492123 () Bool)

(declare-fun tp!1510505 () Bool)

(declare-fun tp!1510503 () Bool)

(assert (=> b!5492123 (= e!3398060 (and tp!1510505 tp!1510503))))

(declare-fun b!5492122 () Bool)

(assert (=> b!5492122 (= e!3398060 tp_is_empty!40167)))

(assert (= (and b!5491129 ((_ is ElementMatch!15457) (regOne!31427 (reg!15786 (reg!15786 r!7292))))) b!5492122))

(assert (= (and b!5491129 ((_ is Concat!24302) (regOne!31427 (reg!15786 (reg!15786 r!7292))))) b!5492123))

(assert (= (and b!5491129 ((_ is Star!15457) (regOne!31427 (reg!15786 (reg!15786 r!7292))))) b!5492124))

(assert (= (and b!5491129 ((_ is Union!15457) (regOne!31427 (reg!15786 (reg!15786 r!7292))))) b!5492125))

(declare-fun e!3398061 () Bool)

(assert (=> b!5491129 (= tp!1509770 e!3398061)))

(declare-fun b!5492129 () Bool)

(declare-fun tp!1510512 () Bool)

(declare-fun tp!1510511 () Bool)

(assert (=> b!5492129 (= e!3398061 (and tp!1510512 tp!1510511))))

(declare-fun b!5492128 () Bool)

(declare-fun tp!1510509 () Bool)

(assert (=> b!5492128 (= e!3398061 tp!1510509)))

(declare-fun b!5492127 () Bool)

(declare-fun tp!1510510 () Bool)

(declare-fun tp!1510508 () Bool)

(assert (=> b!5492127 (= e!3398061 (and tp!1510510 tp!1510508))))

(declare-fun b!5492126 () Bool)

(assert (=> b!5492126 (= e!3398061 tp_is_empty!40167)))

(assert (= (and b!5491129 ((_ is ElementMatch!15457) (regTwo!31427 (reg!15786 (reg!15786 r!7292))))) b!5492126))

(assert (= (and b!5491129 ((_ is Concat!24302) (regTwo!31427 (reg!15786 (reg!15786 r!7292))))) b!5492127))

(assert (= (and b!5491129 ((_ is Star!15457) (regTwo!31427 (reg!15786 (reg!15786 r!7292))))) b!5492128))

(assert (= (and b!5491129 ((_ is Union!15457) (regTwo!31427 (reg!15786 (reg!15786 r!7292))))) b!5492129))

(declare-fun b!5492130 () Bool)

(declare-fun e!3398062 () Bool)

(declare-fun tp!1510513 () Bool)

(assert (=> b!5492130 (= e!3398062 (and tp_is_empty!40167 tp!1510513))))

(assert (=> b!5491171 (= tp!1509824 e!3398062)))

(assert (= (and b!5491171 ((_ is Cons!62548) (t!375903 (t!375903 (t!375903 s!2326))))) b!5492130))

(declare-fun e!3398063 () Bool)

(assert (=> b!5491116 (= tp!1509754 e!3398063)))

(declare-fun b!5492134 () Bool)

(declare-fun tp!1510518 () Bool)

(declare-fun tp!1510517 () Bool)

(assert (=> b!5492134 (= e!3398063 (and tp!1510518 tp!1510517))))

(declare-fun b!5492133 () Bool)

(declare-fun tp!1510515 () Bool)

(assert (=> b!5492133 (= e!3398063 tp!1510515)))

(declare-fun b!5492132 () Bool)

(declare-fun tp!1510516 () Bool)

(declare-fun tp!1510514 () Bool)

(assert (=> b!5492132 (= e!3398063 (and tp!1510516 tp!1510514))))

(declare-fun b!5492131 () Bool)

(assert (=> b!5492131 (= e!3398063 tp_is_empty!40167)))

(assert (= (and b!5491116 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492131))

(assert (= (and b!5491116 ((_ is Concat!24302) (regOne!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492132))

(assert (= (and b!5491116 ((_ is Star!15457) (regOne!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492133))

(assert (= (and b!5491116 ((_ is Union!15457) (regOne!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492134))

(declare-fun e!3398064 () Bool)

(assert (=> b!5491116 (= tp!1509753 e!3398064)))

(declare-fun b!5492138 () Bool)

(declare-fun tp!1510523 () Bool)

(declare-fun tp!1510522 () Bool)

(assert (=> b!5492138 (= e!3398064 (and tp!1510523 tp!1510522))))

(declare-fun b!5492137 () Bool)

(declare-fun tp!1510520 () Bool)

(assert (=> b!5492137 (= e!3398064 tp!1510520)))

(declare-fun b!5492136 () Bool)

(declare-fun tp!1510521 () Bool)

(declare-fun tp!1510519 () Bool)

(assert (=> b!5492136 (= e!3398064 (and tp!1510521 tp!1510519))))

(declare-fun b!5492135 () Bool)

(assert (=> b!5492135 (= e!3398064 tp_is_empty!40167)))

(assert (= (and b!5491116 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492135))

(assert (= (and b!5491116 ((_ is Concat!24302) (regTwo!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492136))

(assert (= (and b!5491116 ((_ is Star!15457) (regTwo!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492137))

(assert (= (and b!5491116 ((_ is Union!15457) (regTwo!31427 (regOne!31426 (regOne!31426 r!7292))))) b!5492138))

(declare-fun e!3398065 () Bool)

(assert (=> b!5491185 (= tp!1509842 e!3398065)))

(declare-fun b!5492142 () Bool)

(declare-fun tp!1510528 () Bool)

(declare-fun tp!1510527 () Bool)

(assert (=> b!5492142 (= e!3398065 (and tp!1510528 tp!1510527))))

(declare-fun b!5492141 () Bool)

(declare-fun tp!1510525 () Bool)

(assert (=> b!5492141 (= e!3398065 tp!1510525)))

(declare-fun b!5492140 () Bool)

(declare-fun tp!1510526 () Bool)

(declare-fun tp!1510524 () Bool)

(assert (=> b!5492140 (= e!3398065 (and tp!1510526 tp!1510524))))

(declare-fun b!5492139 () Bool)

(assert (=> b!5492139 (= e!3398065 tp_is_empty!40167)))

(assert (= (and b!5491185 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492139))

(assert (= (and b!5491185 ((_ is Concat!24302) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492140))

(assert (= (and b!5491185 ((_ is Star!15457) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492141))

(assert (= (and b!5491185 ((_ is Union!15457) (regOne!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492142))

(declare-fun e!3398066 () Bool)

(assert (=> b!5491185 (= tp!1509840 e!3398066)))

(declare-fun b!5492146 () Bool)

(declare-fun tp!1510533 () Bool)

(declare-fun tp!1510532 () Bool)

(assert (=> b!5492146 (= e!3398066 (and tp!1510533 tp!1510532))))

(declare-fun b!5492145 () Bool)

(declare-fun tp!1510530 () Bool)

(assert (=> b!5492145 (= e!3398066 tp!1510530)))

(declare-fun b!5492144 () Bool)

(declare-fun tp!1510531 () Bool)

(declare-fun tp!1510529 () Bool)

(assert (=> b!5492144 (= e!3398066 (and tp!1510531 tp!1510529))))

(declare-fun b!5492143 () Bool)

(assert (=> b!5492143 (= e!3398066 tp_is_empty!40167)))

(assert (= (and b!5491185 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492143))

(assert (= (and b!5491185 ((_ is Concat!24302) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492144))

(assert (= (and b!5491185 ((_ is Star!15457) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492145))

(assert (= (and b!5491185 ((_ is Union!15457) (regTwo!31426 (regOne!31427 (regTwo!31427 r!7292))))) b!5492146))

(declare-fun e!3398067 () Bool)

(assert (=> b!5491169 (= tp!1509820 e!3398067)))

(declare-fun b!5492150 () Bool)

(declare-fun tp!1510538 () Bool)

(declare-fun tp!1510537 () Bool)

(assert (=> b!5492150 (= e!3398067 (and tp!1510538 tp!1510537))))

(declare-fun b!5492149 () Bool)

(declare-fun tp!1510535 () Bool)

(assert (=> b!5492149 (= e!3398067 tp!1510535)))

(declare-fun b!5492148 () Bool)

(declare-fun tp!1510536 () Bool)

(declare-fun tp!1510534 () Bool)

(assert (=> b!5492148 (= e!3398067 (and tp!1510536 tp!1510534))))

(declare-fun b!5492147 () Bool)

(assert (=> b!5492147 (= e!3398067 tp_is_empty!40167)))

(assert (= (and b!5491169 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31426 (regTwo!31427 r!7292))))) b!5492147))

(assert (= (and b!5491169 ((_ is Concat!24302) (reg!15786 (regTwo!31426 (regTwo!31427 r!7292))))) b!5492148))

(assert (= (and b!5491169 ((_ is Star!15457) (reg!15786 (regTwo!31426 (regTwo!31427 r!7292))))) b!5492149))

(assert (= (and b!5491169 ((_ is Union!15457) (reg!15786 (regTwo!31426 (regTwo!31427 r!7292))))) b!5492150))

(declare-fun e!3398068 () Bool)

(assert (=> b!5491145 (= tp!1509791 e!3398068)))

(declare-fun b!5492154 () Bool)

(declare-fun tp!1510543 () Bool)

(declare-fun tp!1510542 () Bool)

(assert (=> b!5492154 (= e!3398068 (and tp!1510543 tp!1510542))))

(declare-fun b!5492153 () Bool)

(declare-fun tp!1510540 () Bool)

(assert (=> b!5492153 (= e!3398068 tp!1510540)))

(declare-fun b!5492152 () Bool)

(declare-fun tp!1510541 () Bool)

(declare-fun tp!1510539 () Bool)

(assert (=> b!5492152 (= e!3398068 (and tp!1510541 tp!1510539))))

(declare-fun b!5492151 () Bool)

(assert (=> b!5492151 (= e!3398068 tp_is_empty!40167)))

(assert (= (and b!5491145 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492151))

(assert (= (and b!5491145 ((_ is Concat!24302) (regOne!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492152))

(assert (= (and b!5491145 ((_ is Star!15457) (regOne!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492153))

(assert (= (and b!5491145 ((_ is Union!15457) (regOne!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492154))

(declare-fun e!3398069 () Bool)

(assert (=> b!5491145 (= tp!1509790 e!3398069)))

(declare-fun b!5492158 () Bool)

(declare-fun tp!1510548 () Bool)

(declare-fun tp!1510547 () Bool)

(assert (=> b!5492158 (= e!3398069 (and tp!1510548 tp!1510547))))

(declare-fun b!5492157 () Bool)

(declare-fun tp!1510545 () Bool)

(assert (=> b!5492157 (= e!3398069 tp!1510545)))

(declare-fun b!5492156 () Bool)

(declare-fun tp!1510546 () Bool)

(declare-fun tp!1510544 () Bool)

(assert (=> b!5492156 (= e!3398069 (and tp!1510546 tp!1510544))))

(declare-fun b!5492155 () Bool)

(assert (=> b!5492155 (= e!3398069 tp_is_empty!40167)))

(assert (= (and b!5491145 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492155))

(assert (= (and b!5491145 ((_ is Concat!24302) (regTwo!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492156))

(assert (= (and b!5491145 ((_ is Star!15457) (regTwo!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492157))

(assert (= (and b!5491145 ((_ is Union!15457) (regTwo!31427 (regOne!31427 (regTwo!31426 r!7292))))) b!5492158))

(declare-fun e!3398070 () Bool)

(assert (=> b!5491187 (= tp!1509844 e!3398070)))

(declare-fun b!5492162 () Bool)

(declare-fun tp!1510553 () Bool)

(declare-fun tp!1510552 () Bool)

(assert (=> b!5492162 (= e!3398070 (and tp!1510553 tp!1510552))))

(declare-fun b!5492161 () Bool)

(declare-fun tp!1510550 () Bool)

(assert (=> b!5492161 (= e!3398070 tp!1510550)))

(declare-fun b!5492160 () Bool)

(declare-fun tp!1510551 () Bool)

(declare-fun tp!1510549 () Bool)

(assert (=> b!5492160 (= e!3398070 (and tp!1510551 tp!1510549))))

(declare-fun b!5492159 () Bool)

(assert (=> b!5492159 (= e!3398070 tp_is_empty!40167)))

(assert (= (and b!5491187 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492159))

(assert (= (and b!5491187 ((_ is Concat!24302) (regOne!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492160))

(assert (= (and b!5491187 ((_ is Star!15457) (regOne!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492161))

(assert (= (and b!5491187 ((_ is Union!15457) (regOne!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492162))

(declare-fun e!3398071 () Bool)

(assert (=> b!5491187 (= tp!1509843 e!3398071)))

(declare-fun b!5492166 () Bool)

(declare-fun tp!1510558 () Bool)

(declare-fun tp!1510557 () Bool)

(assert (=> b!5492166 (= e!3398071 (and tp!1510558 tp!1510557))))

(declare-fun b!5492165 () Bool)

(declare-fun tp!1510555 () Bool)

(assert (=> b!5492165 (= e!3398071 tp!1510555)))

(declare-fun b!5492164 () Bool)

(declare-fun tp!1510556 () Bool)

(declare-fun tp!1510554 () Bool)

(assert (=> b!5492164 (= e!3398071 (and tp!1510556 tp!1510554))))

(declare-fun b!5492163 () Bool)

(assert (=> b!5492163 (= e!3398071 tp_is_empty!40167)))

(assert (= (and b!5491187 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492163))

(assert (= (and b!5491187 ((_ is Concat!24302) (regTwo!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492164))

(assert (= (and b!5491187 ((_ is Star!15457) (regTwo!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492165))

(assert (= (and b!5491187 ((_ is Union!15457) (regTwo!31427 (regOne!31427 (regTwo!31427 r!7292))))) b!5492166))

(declare-fun e!3398072 () Bool)

(assert (=> b!5491136 (= tp!1509778 e!3398072)))

(declare-fun b!5492170 () Bool)

(declare-fun tp!1510563 () Bool)

(declare-fun tp!1510562 () Bool)

(assert (=> b!5492170 (= e!3398072 (and tp!1510563 tp!1510562))))

(declare-fun b!5492169 () Bool)

(declare-fun tp!1510560 () Bool)

(assert (=> b!5492169 (= e!3398072 tp!1510560)))

(declare-fun b!5492168 () Bool)

(declare-fun tp!1510561 () Bool)

(declare-fun tp!1510559 () Bool)

(assert (=> b!5492168 (= e!3398072 (and tp!1510561 tp!1510559))))

(declare-fun b!5492167 () Bool)

(assert (=> b!5492167 (= e!3398072 tp_is_empty!40167)))

(assert (= (and b!5491136 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31427 (reg!15786 r!7292))))) b!5492167))

(assert (= (and b!5491136 ((_ is Concat!24302) (reg!15786 (regTwo!31427 (reg!15786 r!7292))))) b!5492168))

(assert (= (and b!5491136 ((_ is Star!15457) (reg!15786 (regTwo!31427 (reg!15786 r!7292))))) b!5492169))

(assert (= (and b!5491136 ((_ is Union!15457) (reg!15786 (regTwo!31427 (reg!15786 r!7292))))) b!5492170))

(declare-fun e!3398073 () Bool)

(assert (=> b!5491178 (= tp!1509831 e!3398073)))

(declare-fun b!5492174 () Bool)

(declare-fun tp!1510568 () Bool)

(declare-fun tp!1510567 () Bool)

(assert (=> b!5492174 (= e!3398073 (and tp!1510568 tp!1510567))))

(declare-fun b!5492173 () Bool)

(declare-fun tp!1510565 () Bool)

(assert (=> b!5492173 (= e!3398073 tp!1510565)))

(declare-fun b!5492172 () Bool)

(declare-fun tp!1510566 () Bool)

(declare-fun tp!1510564 () Bool)

(assert (=> b!5492172 (= e!3398073 (and tp!1510566 tp!1510564))))

(declare-fun b!5492171 () Bool)

(assert (=> b!5492171 (= e!3398073 tp_is_empty!40167)))

(assert (= (and b!5491178 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31426 (regTwo!31426 r!7292))))) b!5492171))

(assert (= (and b!5491178 ((_ is Concat!24302) (reg!15786 (regTwo!31426 (regTwo!31426 r!7292))))) b!5492172))

(assert (= (and b!5491178 ((_ is Star!15457) (reg!15786 (regTwo!31426 (regTwo!31426 r!7292))))) b!5492173))

(assert (= (and b!5491178 ((_ is Union!15457) (reg!15786 (regTwo!31426 (regTwo!31426 r!7292))))) b!5492174))

(declare-fun e!3398074 () Bool)

(assert (=> b!5491127 (= tp!1509769 e!3398074)))

(declare-fun b!5492178 () Bool)

(declare-fun tp!1510573 () Bool)

(declare-fun tp!1510572 () Bool)

(assert (=> b!5492178 (= e!3398074 (and tp!1510573 tp!1510572))))

(declare-fun b!5492177 () Bool)

(declare-fun tp!1510570 () Bool)

(assert (=> b!5492177 (= e!3398074 tp!1510570)))

(declare-fun b!5492176 () Bool)

(declare-fun tp!1510571 () Bool)

(declare-fun tp!1510569 () Bool)

(assert (=> b!5492176 (= e!3398074 (and tp!1510571 tp!1510569))))

(declare-fun b!5492175 () Bool)

(assert (=> b!5492175 (= e!3398074 tp_is_empty!40167)))

(assert (= (and b!5491127 ((_ is ElementMatch!15457) (regOne!31426 (reg!15786 (reg!15786 r!7292))))) b!5492175))

(assert (= (and b!5491127 ((_ is Concat!24302) (regOne!31426 (reg!15786 (reg!15786 r!7292))))) b!5492176))

(assert (= (and b!5491127 ((_ is Star!15457) (regOne!31426 (reg!15786 (reg!15786 r!7292))))) b!5492177))

(assert (= (and b!5491127 ((_ is Union!15457) (regOne!31426 (reg!15786 (reg!15786 r!7292))))) b!5492178))

(declare-fun e!3398075 () Bool)

(assert (=> b!5491127 (= tp!1509767 e!3398075)))

(declare-fun b!5492182 () Bool)

(declare-fun tp!1510578 () Bool)

(declare-fun tp!1510577 () Bool)

(assert (=> b!5492182 (= e!3398075 (and tp!1510578 tp!1510577))))

(declare-fun b!5492181 () Bool)

(declare-fun tp!1510575 () Bool)

(assert (=> b!5492181 (= e!3398075 tp!1510575)))

(declare-fun b!5492180 () Bool)

(declare-fun tp!1510576 () Bool)

(declare-fun tp!1510574 () Bool)

(assert (=> b!5492180 (= e!3398075 (and tp!1510576 tp!1510574))))

(declare-fun b!5492179 () Bool)

(assert (=> b!5492179 (= e!3398075 tp_is_empty!40167)))

(assert (= (and b!5491127 ((_ is ElementMatch!15457) (regTwo!31426 (reg!15786 (reg!15786 r!7292))))) b!5492179))

(assert (= (and b!5491127 ((_ is Concat!24302) (regTwo!31426 (reg!15786 (reg!15786 r!7292))))) b!5492180))

(assert (= (and b!5491127 ((_ is Star!15457) (regTwo!31426 (reg!15786 (reg!15786 r!7292))))) b!5492181))

(assert (= (and b!5491127 ((_ is Union!15457) (regTwo!31426 (reg!15786 (reg!15786 r!7292))))) b!5492182))

(declare-fun e!3398076 () Bool)

(assert (=> b!5491064 (= tp!1509706 e!3398076)))

(declare-fun b!5492186 () Bool)

(declare-fun tp!1510583 () Bool)

(declare-fun tp!1510582 () Bool)

(assert (=> b!5492186 (= e!3398076 (and tp!1510583 tp!1510582))))

(declare-fun b!5492185 () Bool)

(declare-fun tp!1510580 () Bool)

(assert (=> b!5492185 (= e!3398076 tp!1510580)))

(declare-fun b!5492184 () Bool)

(declare-fun tp!1510581 () Bool)

(declare-fun tp!1510579 () Bool)

(assert (=> b!5492184 (= e!3398076 (and tp!1510581 tp!1510579))))

(declare-fun b!5492183 () Bool)

(assert (=> b!5492183 (= e!3398076 tp_is_empty!40167)))

(assert (= (and b!5491064 ((_ is ElementMatch!15457) (regOne!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492183))

(assert (= (and b!5491064 ((_ is Concat!24302) (regOne!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492184))

(assert (= (and b!5491064 ((_ is Star!15457) (regOne!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492185))

(assert (= (and b!5491064 ((_ is Union!15457) (regOne!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492186))

(declare-fun e!3398077 () Bool)

(assert (=> b!5491064 (= tp!1509704 e!3398077)))

(declare-fun b!5492190 () Bool)

(declare-fun tp!1510588 () Bool)

(declare-fun tp!1510587 () Bool)

(assert (=> b!5492190 (= e!3398077 (and tp!1510588 tp!1510587))))

(declare-fun b!5492189 () Bool)

(declare-fun tp!1510585 () Bool)

(assert (=> b!5492189 (= e!3398077 tp!1510585)))

(declare-fun b!5492188 () Bool)

(declare-fun tp!1510586 () Bool)

(declare-fun tp!1510584 () Bool)

(assert (=> b!5492188 (= e!3398077 (and tp!1510586 tp!1510584))))

(declare-fun b!5492187 () Bool)

(assert (=> b!5492187 (= e!3398077 tp_is_empty!40167)))

(assert (= (and b!5491064 ((_ is ElementMatch!15457) (regTwo!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492187))

(assert (= (and b!5491064 ((_ is Concat!24302) (regTwo!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492188))

(assert (= (and b!5491064 ((_ is Star!15457) (regTwo!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492189))

(assert (= (and b!5491064 ((_ is Union!15457) (regTwo!31426 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492190))

(declare-fun e!3398078 () Bool)

(assert (=> b!5491103 (= tp!1509737 e!3398078)))

(declare-fun b!5492194 () Bool)

(declare-fun tp!1510593 () Bool)

(declare-fun tp!1510592 () Bool)

(assert (=> b!5492194 (= e!3398078 (and tp!1510593 tp!1510592))))

(declare-fun b!5492193 () Bool)

(declare-fun tp!1510590 () Bool)

(assert (=> b!5492193 (= e!3398078 tp!1510590)))

(declare-fun b!5492192 () Bool)

(declare-fun tp!1510591 () Bool)

(declare-fun tp!1510589 () Bool)

(assert (=> b!5492192 (= e!3398078 (and tp!1510591 tp!1510589))))

(declare-fun b!5492191 () Bool)

(assert (=> b!5492191 (= e!3398078 tp_is_empty!40167)))

(assert (= (and b!5491103 ((_ is ElementMatch!15457) (regOne!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492191))

(assert (= (and b!5491103 ((_ is Concat!24302) (regOne!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492192))

(assert (= (and b!5491103 ((_ is Star!15457) (regOne!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492193))

(assert (= (and b!5491103 ((_ is Union!15457) (regOne!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492194))

(declare-fun e!3398079 () Bool)

(assert (=> b!5491103 (= tp!1509736 e!3398079)))

(declare-fun b!5492198 () Bool)

(declare-fun tp!1510598 () Bool)

(declare-fun tp!1510597 () Bool)

(assert (=> b!5492198 (= e!3398079 (and tp!1510598 tp!1510597))))

(declare-fun b!5492197 () Bool)

(declare-fun tp!1510595 () Bool)

(assert (=> b!5492197 (= e!3398079 tp!1510595)))

(declare-fun b!5492196 () Bool)

(declare-fun tp!1510596 () Bool)

(declare-fun tp!1510594 () Bool)

(assert (=> b!5492196 (= e!3398079 (and tp!1510596 tp!1510594))))

(declare-fun b!5492195 () Bool)

(assert (=> b!5492195 (= e!3398079 tp_is_empty!40167)))

(assert (= (and b!5491103 ((_ is ElementMatch!15457) (regTwo!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492195))

(assert (= (and b!5491103 ((_ is Concat!24302) (regTwo!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492196))

(assert (= (and b!5491103 ((_ is Star!15457) (regTwo!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492197))

(assert (= (and b!5491103 ((_ is Union!15457) (regTwo!31427 (regTwo!31427 (regOne!31426 r!7292))))) b!5492198))

(declare-fun e!3398080 () Bool)

(assert (=> b!5491094 (= tp!1509724 e!3398080)))

(declare-fun b!5492202 () Bool)

(declare-fun tp!1510603 () Bool)

(declare-fun tp!1510602 () Bool)

(assert (=> b!5492202 (= e!3398080 (and tp!1510603 tp!1510602))))

(declare-fun b!5492201 () Bool)

(declare-fun tp!1510600 () Bool)

(assert (=> b!5492201 (= e!3398080 tp!1510600)))

(declare-fun b!5492200 () Bool)

(declare-fun tp!1510601 () Bool)

(declare-fun tp!1510599 () Bool)

(assert (=> b!5492200 (= e!3398080 (and tp!1510601 tp!1510599))))

(declare-fun b!5492199 () Bool)

(assert (=> b!5492199 (= e!3398080 tp_is_empty!40167)))

(assert (= (and b!5491094 ((_ is ElementMatch!15457) (reg!15786 (reg!15786 (regOne!31426 r!7292))))) b!5492199))

(assert (= (and b!5491094 ((_ is Concat!24302) (reg!15786 (reg!15786 (regOne!31426 r!7292))))) b!5492200))

(assert (= (and b!5491094 ((_ is Star!15457) (reg!15786 (reg!15786 (regOne!31426 r!7292))))) b!5492201))

(assert (= (and b!5491094 ((_ is Union!15457) (reg!15786 (reg!15786 (regOne!31426 r!7292))))) b!5492202))

(declare-fun e!3398081 () Bool)

(assert (=> b!5491085 (= tp!1509717 e!3398081)))

(declare-fun b!5492206 () Bool)

(declare-fun tp!1510608 () Bool)

(declare-fun tp!1510607 () Bool)

(assert (=> b!5492206 (= e!3398081 (and tp!1510608 tp!1510607))))

(declare-fun b!5492205 () Bool)

(declare-fun tp!1510605 () Bool)

(assert (=> b!5492205 (= e!3398081 tp!1510605)))

(declare-fun b!5492204 () Bool)

(declare-fun tp!1510606 () Bool)

(declare-fun tp!1510604 () Bool)

(assert (=> b!5492204 (= e!3398081 (and tp!1510606 tp!1510604))))

(declare-fun b!5492203 () Bool)

(assert (=> b!5492203 (= e!3398081 tp_is_empty!40167)))

(assert (= (and b!5491085 ((_ is ElementMatch!15457) (regOne!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492203))

(assert (= (and b!5491085 ((_ is Concat!24302) (regOne!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492204))

(assert (= (and b!5491085 ((_ is Star!15457) (regOne!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492205))

(assert (= (and b!5491085 ((_ is Union!15457) (regOne!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492206))

(declare-fun e!3398082 () Bool)

(assert (=> b!5491085 (= tp!1509716 e!3398082)))

(declare-fun b!5492210 () Bool)

(declare-fun tp!1510613 () Bool)

(declare-fun tp!1510612 () Bool)

(assert (=> b!5492210 (= e!3398082 (and tp!1510613 tp!1510612))))

(declare-fun b!5492209 () Bool)

(declare-fun tp!1510610 () Bool)

(assert (=> b!5492209 (= e!3398082 tp!1510610)))

(declare-fun b!5492208 () Bool)

(declare-fun tp!1510611 () Bool)

(declare-fun tp!1510609 () Bool)

(assert (=> b!5492208 (= e!3398082 (and tp!1510611 tp!1510609))))

(declare-fun b!5492207 () Bool)

(assert (=> b!5492207 (= e!3398082 tp_is_empty!40167)))

(assert (= (and b!5491085 ((_ is ElementMatch!15457) (regTwo!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492207))

(assert (= (and b!5491085 ((_ is Concat!24302) (regTwo!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492208))

(assert (= (and b!5491085 ((_ is Star!15457) (regTwo!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492209))

(assert (= (and b!5491085 ((_ is Union!15457) (regTwo!31427 (regOne!31427 (regOne!31427 r!7292))))) b!5492210))

(declare-fun e!3398083 () Bool)

(assert (=> b!5491161 (= tp!1509811 e!3398083)))

(declare-fun b!5492214 () Bool)

(declare-fun tp!1510618 () Bool)

(declare-fun tp!1510617 () Bool)

(assert (=> b!5492214 (= e!3398083 (and tp!1510618 tp!1510617))))

(declare-fun b!5492213 () Bool)

(declare-fun tp!1510615 () Bool)

(assert (=> b!5492213 (= e!3398083 tp!1510615)))

(declare-fun b!5492212 () Bool)

(declare-fun tp!1510616 () Bool)

(declare-fun tp!1510614 () Bool)

(assert (=> b!5492212 (= e!3398083 (and tp!1510616 tp!1510614))))

(declare-fun b!5492211 () Bool)

(assert (=> b!5492211 (= e!3398083 tp_is_empty!40167)))

(assert (= (and b!5491161 ((_ is ElementMatch!15457) (regOne!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492211))

(assert (= (and b!5491161 ((_ is Concat!24302) (regOne!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492212))

(assert (= (and b!5491161 ((_ is Star!15457) (regOne!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492213))

(assert (= (and b!5491161 ((_ is Union!15457) (regOne!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492214))

(declare-fun e!3398084 () Bool)

(assert (=> b!5491161 (= tp!1509810 e!3398084)))

(declare-fun b!5492218 () Bool)

(declare-fun tp!1510623 () Bool)

(declare-fun tp!1510622 () Bool)

(assert (=> b!5492218 (= e!3398084 (and tp!1510623 tp!1510622))))

(declare-fun b!5492217 () Bool)

(declare-fun tp!1510620 () Bool)

(assert (=> b!5492217 (= e!3398084 tp!1510620)))

(declare-fun b!5492216 () Bool)

(declare-fun tp!1510621 () Bool)

(declare-fun tp!1510619 () Bool)

(assert (=> b!5492216 (= e!3398084 (and tp!1510621 tp!1510619))))

(declare-fun b!5492215 () Bool)

(assert (=> b!5492215 (= e!3398084 tp_is_empty!40167)))

(assert (= (and b!5491161 ((_ is ElementMatch!15457) (regTwo!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492215))

(assert (= (and b!5491161 ((_ is Concat!24302) (regTwo!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492216))

(assert (= (and b!5491161 ((_ is Star!15457) (regTwo!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492217))

(assert (= (and b!5491161 ((_ is Union!15457) (regTwo!31427 (h!68994 (exprs!5341 setElem!36339))))) b!5492218))

(declare-fun e!3398085 () Bool)

(assert (=> b!5491152 (= tp!1509798 e!3398085)))

(declare-fun b!5492222 () Bool)

(declare-fun tp!1510628 () Bool)

(declare-fun tp!1510627 () Bool)

(assert (=> b!5492222 (= e!3398085 (and tp!1510628 tp!1510627))))

(declare-fun b!5492221 () Bool)

(declare-fun tp!1510625 () Bool)

(assert (=> b!5492221 (= e!3398085 tp!1510625)))

(declare-fun b!5492220 () Bool)

(declare-fun tp!1510626 () Bool)

(declare-fun tp!1510624 () Bool)

(assert (=> b!5492220 (= e!3398085 (and tp!1510626 tp!1510624))))

(declare-fun b!5492219 () Bool)

(assert (=> b!5492219 (= e!3398085 tp_is_empty!40167)))

(assert (= (and b!5491152 ((_ is ElementMatch!15457) (reg!15786 (regOne!31426 (reg!15786 r!7292))))) b!5492219))

(assert (= (and b!5491152 ((_ is Concat!24302) (reg!15786 (regOne!31426 (reg!15786 r!7292))))) b!5492220))

(assert (= (and b!5491152 ((_ is Star!15457) (reg!15786 (regOne!31426 (reg!15786 r!7292))))) b!5492221))

(assert (= (and b!5491152 ((_ is Union!15457) (reg!15786 (regOne!31426 (reg!15786 r!7292))))) b!5492222))

(declare-fun e!3398086 () Bool)

(assert (=> b!5491066 (= tp!1509708 e!3398086)))

(declare-fun b!5492226 () Bool)

(declare-fun tp!1510633 () Bool)

(declare-fun tp!1510632 () Bool)

(assert (=> b!5492226 (= e!3398086 (and tp!1510633 tp!1510632))))

(declare-fun b!5492225 () Bool)

(declare-fun tp!1510630 () Bool)

(assert (=> b!5492225 (= e!3398086 tp!1510630)))

(declare-fun b!5492224 () Bool)

(declare-fun tp!1510631 () Bool)

(declare-fun tp!1510629 () Bool)

(assert (=> b!5492224 (= e!3398086 (and tp!1510631 tp!1510629))))

(declare-fun b!5492223 () Bool)

(assert (=> b!5492223 (= e!3398086 tp_is_empty!40167)))

(assert (= (and b!5491066 ((_ is ElementMatch!15457) (regOne!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492223))

(assert (= (and b!5491066 ((_ is Concat!24302) (regOne!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492224))

(assert (= (and b!5491066 ((_ is Star!15457) (regOne!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492225))

(assert (= (and b!5491066 ((_ is Union!15457) (regOne!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492226))

(declare-fun e!3398087 () Bool)

(assert (=> b!5491066 (= tp!1509707 e!3398087)))

(declare-fun b!5492230 () Bool)

(declare-fun tp!1510638 () Bool)

(declare-fun tp!1510637 () Bool)

(assert (=> b!5492230 (= e!3398087 (and tp!1510638 tp!1510637))))

(declare-fun b!5492229 () Bool)

(declare-fun tp!1510635 () Bool)

(assert (=> b!5492229 (= e!3398087 tp!1510635)))

(declare-fun b!5492228 () Bool)

(declare-fun tp!1510636 () Bool)

(declare-fun tp!1510634 () Bool)

(assert (=> b!5492228 (= e!3398087 (and tp!1510636 tp!1510634))))

(declare-fun b!5492227 () Bool)

(assert (=> b!5492227 (= e!3398087 tp_is_empty!40167)))

(assert (= (and b!5491066 ((_ is ElementMatch!15457) (regTwo!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492227))

(assert (= (and b!5491066 ((_ is Concat!24302) (regTwo!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492228))

(assert (= (and b!5491066 ((_ is Star!15457) (regTwo!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492229))

(assert (= (and b!5491066 ((_ is Union!15457) (regTwo!31427 (h!68994 (exprs!5341 (h!68995 zl!343)))))) b!5492230))

(declare-fun e!3398088 () Bool)

(assert (=> b!5491143 (= tp!1509789 e!3398088)))

(declare-fun b!5492234 () Bool)

(declare-fun tp!1510643 () Bool)

(declare-fun tp!1510642 () Bool)

(assert (=> b!5492234 (= e!3398088 (and tp!1510643 tp!1510642))))

(declare-fun b!5492233 () Bool)

(declare-fun tp!1510640 () Bool)

(assert (=> b!5492233 (= e!3398088 tp!1510640)))

(declare-fun b!5492232 () Bool)

(declare-fun tp!1510641 () Bool)

(declare-fun tp!1510639 () Bool)

(assert (=> b!5492232 (= e!3398088 (and tp!1510641 tp!1510639))))

(declare-fun b!5492231 () Bool)

(assert (=> b!5492231 (= e!3398088 tp_is_empty!40167)))

(assert (= (and b!5491143 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492231))

(assert (= (and b!5491143 ((_ is Concat!24302) (regOne!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492232))

(assert (= (and b!5491143 ((_ is Star!15457) (regOne!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492233))

(assert (= (and b!5491143 ((_ is Union!15457) (regOne!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492234))

(declare-fun e!3398089 () Bool)

(assert (=> b!5491143 (= tp!1509787 e!3398089)))

(declare-fun b!5492238 () Bool)

(declare-fun tp!1510648 () Bool)

(declare-fun tp!1510647 () Bool)

(assert (=> b!5492238 (= e!3398089 (and tp!1510648 tp!1510647))))

(declare-fun b!5492237 () Bool)

(declare-fun tp!1510645 () Bool)

(assert (=> b!5492237 (= e!3398089 tp!1510645)))

(declare-fun b!5492236 () Bool)

(declare-fun tp!1510646 () Bool)

(declare-fun tp!1510644 () Bool)

(assert (=> b!5492236 (= e!3398089 (and tp!1510646 tp!1510644))))

(declare-fun b!5492235 () Bool)

(assert (=> b!5492235 (= e!3398089 tp_is_empty!40167)))

(assert (= (and b!5491143 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492235))

(assert (= (and b!5491143 ((_ is Concat!24302) (regTwo!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492236))

(assert (= (and b!5491143 ((_ is Star!15457) (regTwo!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492237))

(assert (= (and b!5491143 ((_ is Union!15457) (regTwo!31426 (regOne!31427 (regTwo!31426 r!7292))))) b!5492238))

(declare-fun e!3398090 () Bool)

(assert (=> b!5491107 (= tp!1509741 e!3398090)))

(declare-fun b!5492242 () Bool)

(declare-fun tp!1510653 () Bool)

(declare-fun tp!1510652 () Bool)

(assert (=> b!5492242 (= e!3398090 (and tp!1510653 tp!1510652))))

(declare-fun b!5492241 () Bool)

(declare-fun tp!1510650 () Bool)

(assert (=> b!5492241 (= e!3398090 tp!1510650)))

(declare-fun b!5492240 () Bool)

(declare-fun tp!1510651 () Bool)

(declare-fun tp!1510649 () Bool)

(assert (=> b!5492240 (= e!3398090 (and tp!1510651 tp!1510649))))

(declare-fun b!5492239 () Bool)

(assert (=> b!5492239 (= e!3398090 tp_is_empty!40167)))

(assert (= (and b!5491107 ((_ is ElementMatch!15457) (reg!15786 (regOne!31426 (regOne!31427 r!7292))))) b!5492239))

(assert (= (and b!5491107 ((_ is Concat!24302) (reg!15786 (regOne!31426 (regOne!31427 r!7292))))) b!5492240))

(assert (= (and b!5491107 ((_ is Star!15457) (reg!15786 (regOne!31426 (regOne!31427 r!7292))))) b!5492241))

(assert (= (and b!5491107 ((_ is Union!15457) (reg!15786 (regOne!31426 (regOne!31427 r!7292))))) b!5492242))

(declare-fun e!3398091 () Bool)

(assert (=> b!5491101 (= tp!1509735 e!3398091)))

(declare-fun b!5492246 () Bool)

(declare-fun tp!1510658 () Bool)

(declare-fun tp!1510657 () Bool)

(assert (=> b!5492246 (= e!3398091 (and tp!1510658 tp!1510657))))

(declare-fun b!5492245 () Bool)

(declare-fun tp!1510655 () Bool)

(assert (=> b!5492245 (= e!3398091 tp!1510655)))

(declare-fun b!5492244 () Bool)

(declare-fun tp!1510656 () Bool)

(declare-fun tp!1510654 () Bool)

(assert (=> b!5492244 (= e!3398091 (and tp!1510656 tp!1510654))))

(declare-fun b!5492243 () Bool)

(assert (=> b!5492243 (= e!3398091 tp_is_empty!40167)))

(assert (= (and b!5491101 ((_ is ElementMatch!15457) (regOne!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492243))

(assert (= (and b!5491101 ((_ is Concat!24302) (regOne!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492244))

(assert (= (and b!5491101 ((_ is Star!15457) (regOne!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492245))

(assert (= (and b!5491101 ((_ is Union!15457) (regOne!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492246))

(declare-fun e!3398092 () Bool)

(assert (=> b!5491101 (= tp!1509733 e!3398092)))

(declare-fun b!5492250 () Bool)

(declare-fun tp!1510663 () Bool)

(declare-fun tp!1510662 () Bool)

(assert (=> b!5492250 (= e!3398092 (and tp!1510663 tp!1510662))))

(declare-fun b!5492249 () Bool)

(declare-fun tp!1510660 () Bool)

(assert (=> b!5492249 (= e!3398092 tp!1510660)))

(declare-fun b!5492248 () Bool)

(declare-fun tp!1510661 () Bool)

(declare-fun tp!1510659 () Bool)

(assert (=> b!5492248 (= e!3398092 (and tp!1510661 tp!1510659))))

(declare-fun b!5492247 () Bool)

(assert (=> b!5492247 (= e!3398092 tp_is_empty!40167)))

(assert (= (and b!5491101 ((_ is ElementMatch!15457) (regTwo!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492247))

(assert (= (and b!5491101 ((_ is Concat!24302) (regTwo!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492248))

(assert (= (and b!5491101 ((_ is Star!15457) (regTwo!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492249))

(assert (= (and b!5491101 ((_ is Union!15457) (regTwo!31426 (regTwo!31427 (regOne!31426 r!7292))))) b!5492250))

(declare-fun e!3398093 () Bool)

(assert (=> b!5491083 (= tp!1509714 e!3398093)))

(declare-fun b!5492254 () Bool)

(declare-fun tp!1510668 () Bool)

(declare-fun tp!1510667 () Bool)

(assert (=> b!5492254 (= e!3398093 (and tp!1510668 tp!1510667))))

(declare-fun b!5492253 () Bool)

(declare-fun tp!1510665 () Bool)

(assert (=> b!5492253 (= e!3398093 tp!1510665)))

(declare-fun b!5492252 () Bool)

(declare-fun tp!1510666 () Bool)

(declare-fun tp!1510664 () Bool)

(assert (=> b!5492252 (= e!3398093 (and tp!1510666 tp!1510664))))

(declare-fun b!5492251 () Bool)

(assert (=> b!5492251 (= e!3398093 tp_is_empty!40167)))

(assert (= (and b!5491083 ((_ is ElementMatch!15457) (reg!15786 (regOne!31427 (regOne!31427 r!7292))))) b!5492251))

(assert (= (and b!5491083 ((_ is Concat!24302) (reg!15786 (regOne!31427 (regOne!31427 r!7292))))) b!5492252))

(assert (= (and b!5491083 ((_ is Star!15457) (reg!15786 (regOne!31427 (regOne!31427 r!7292))))) b!5492253))

(assert (= (and b!5491083 ((_ is Union!15457) (reg!15786 (regOne!31427 (regOne!31427 r!7292))))) b!5492254))

(declare-fun e!3398094 () Bool)

(assert (=> b!5491159 (= tp!1509809 e!3398094)))

(declare-fun b!5492258 () Bool)

(declare-fun tp!1510673 () Bool)

(declare-fun tp!1510672 () Bool)

(assert (=> b!5492258 (= e!3398094 (and tp!1510673 tp!1510672))))

(declare-fun b!5492257 () Bool)

(declare-fun tp!1510670 () Bool)

(assert (=> b!5492257 (= e!3398094 tp!1510670)))

(declare-fun b!5492256 () Bool)

(declare-fun tp!1510671 () Bool)

(declare-fun tp!1510669 () Bool)

(assert (=> b!5492256 (= e!3398094 (and tp!1510671 tp!1510669))))

(declare-fun b!5492255 () Bool)

(assert (=> b!5492255 (= e!3398094 tp_is_empty!40167)))

(assert (= (and b!5491159 ((_ is ElementMatch!15457) (regOne!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492255))

(assert (= (and b!5491159 ((_ is Concat!24302) (regOne!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492256))

(assert (= (and b!5491159 ((_ is Star!15457) (regOne!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492257))

(assert (= (and b!5491159 ((_ is Union!15457) (regOne!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492258))

(declare-fun e!3398095 () Bool)

(assert (=> b!5491159 (= tp!1509807 e!3398095)))

(declare-fun b!5492262 () Bool)

(declare-fun tp!1510678 () Bool)

(declare-fun tp!1510677 () Bool)

(assert (=> b!5492262 (= e!3398095 (and tp!1510678 tp!1510677))))

(declare-fun b!5492261 () Bool)

(declare-fun tp!1510675 () Bool)

(assert (=> b!5492261 (= e!3398095 tp!1510675)))

(declare-fun b!5492260 () Bool)

(declare-fun tp!1510676 () Bool)

(declare-fun tp!1510674 () Bool)

(assert (=> b!5492260 (= e!3398095 (and tp!1510676 tp!1510674))))

(declare-fun b!5492259 () Bool)

(assert (=> b!5492259 (= e!3398095 tp_is_empty!40167)))

(assert (= (and b!5491159 ((_ is ElementMatch!15457) (regTwo!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492259))

(assert (= (and b!5491159 ((_ is Concat!24302) (regTwo!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492260))

(assert (= (and b!5491159 ((_ is Star!15457) (regTwo!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492261))

(assert (= (and b!5491159 ((_ is Union!15457) (regTwo!31426 (h!68994 (exprs!5341 setElem!36339))))) b!5492262))

(declare-fun e!3398096 () Bool)

(assert (=> b!5491183 (= tp!1509839 e!3398096)))

(declare-fun b!5492266 () Bool)

(declare-fun tp!1510683 () Bool)

(declare-fun tp!1510682 () Bool)

(assert (=> b!5492266 (= e!3398096 (and tp!1510683 tp!1510682))))

(declare-fun b!5492265 () Bool)

(declare-fun tp!1510680 () Bool)

(assert (=> b!5492265 (= e!3398096 tp!1510680)))

(declare-fun b!5492264 () Bool)

(declare-fun tp!1510681 () Bool)

(declare-fun tp!1510679 () Bool)

(assert (=> b!5492264 (= e!3398096 (and tp!1510681 tp!1510679))))

(declare-fun b!5492263 () Bool)

(assert (=> b!5492263 (= e!3398096 tp_is_empty!40167)))

(assert (= (and b!5491183 ((_ is ElementMatch!15457) (regOne!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492263))

(assert (= (and b!5491183 ((_ is Concat!24302) (regOne!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492264))

(assert (= (and b!5491183 ((_ is Star!15457) (regOne!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492265))

(assert (= (and b!5491183 ((_ is Union!15457) (regOne!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492266))

(declare-fun e!3398097 () Bool)

(assert (=> b!5491183 (= tp!1509838 e!3398097)))

(declare-fun b!5492270 () Bool)

(declare-fun tp!1510688 () Bool)

(declare-fun tp!1510687 () Bool)

(assert (=> b!5492270 (= e!3398097 (and tp!1510688 tp!1510687))))

(declare-fun b!5492269 () Bool)

(declare-fun tp!1510685 () Bool)

(assert (=> b!5492269 (= e!3398097 tp!1510685)))

(declare-fun b!5492268 () Bool)

(declare-fun tp!1510686 () Bool)

(declare-fun tp!1510684 () Bool)

(assert (=> b!5492268 (= e!3398097 (and tp!1510686 tp!1510684))))

(declare-fun b!5492267 () Bool)

(assert (=> b!5492267 (= e!3398097 tp_is_empty!40167)))

(assert (= (and b!5491183 ((_ is ElementMatch!15457) (regTwo!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492267))

(assert (= (and b!5491183 ((_ is Concat!24302) (regTwo!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492268))

(assert (= (and b!5491183 ((_ is Star!15457) (regTwo!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492269))

(assert (= (and b!5491183 ((_ is Union!15457) (regTwo!31427 (reg!15786 (regTwo!31427 r!7292))))) b!5492270))

(declare-fun e!3398098 () Bool)

(assert (=> b!5491132 (= tp!1509773 e!3398098)))

(declare-fun b!5492274 () Bool)

(declare-fun tp!1510693 () Bool)

(declare-fun tp!1510692 () Bool)

(assert (=> b!5492274 (= e!3398098 (and tp!1510693 tp!1510692))))

(declare-fun b!5492273 () Bool)

(declare-fun tp!1510690 () Bool)

(assert (=> b!5492273 (= e!3398098 tp!1510690)))

(declare-fun b!5492272 () Bool)

(declare-fun tp!1510691 () Bool)

(declare-fun tp!1510689 () Bool)

(assert (=> b!5492272 (= e!3398098 (and tp!1510691 tp!1510689))))

(declare-fun b!5492271 () Bool)

(assert (=> b!5492271 (= e!3398098 tp_is_empty!40167)))

(assert (= (and b!5491132 ((_ is ElementMatch!15457) (reg!15786 (regOne!31427 (reg!15786 r!7292))))) b!5492271))

(assert (= (and b!5491132 ((_ is Concat!24302) (reg!15786 (regOne!31427 (reg!15786 r!7292))))) b!5492272))

(assert (= (and b!5491132 ((_ is Star!15457) (reg!15786 (regOne!31427 (reg!15786 r!7292))))) b!5492273))

(assert (= (and b!5491132 ((_ is Union!15457) (reg!15786 (regOne!31427 (reg!15786 r!7292))))) b!5492274))

(declare-fun e!3398099 () Bool)

(assert (=> b!5491174 (= tp!1509826 e!3398099)))

(declare-fun b!5492278 () Bool)

(declare-fun tp!1510698 () Bool)

(declare-fun tp!1510697 () Bool)

(assert (=> b!5492278 (= e!3398099 (and tp!1510698 tp!1510697))))

(declare-fun b!5492277 () Bool)

(declare-fun tp!1510695 () Bool)

(assert (=> b!5492277 (= e!3398099 tp!1510695)))

(declare-fun b!5492276 () Bool)

(declare-fun tp!1510696 () Bool)

(declare-fun tp!1510694 () Bool)

(assert (=> b!5492276 (= e!3398099 (and tp!1510696 tp!1510694))))

(declare-fun b!5492275 () Bool)

(assert (=> b!5492275 (= e!3398099 tp_is_empty!40167)))

(assert (= (and b!5491174 ((_ is ElementMatch!15457) (reg!15786 (regOne!31426 (regTwo!31426 r!7292))))) b!5492275))

(assert (= (and b!5491174 ((_ is Concat!24302) (reg!15786 (regOne!31426 (regTwo!31426 r!7292))))) b!5492276))

(assert (= (and b!5491174 ((_ is Star!15457) (reg!15786 (regOne!31426 (regTwo!31426 r!7292))))) b!5492277))

(assert (= (and b!5491174 ((_ is Union!15457) (reg!15786 (regOne!31426 (regTwo!31426 r!7292))))) b!5492278))

(declare-fun b!5492279 () Bool)

(declare-fun e!3398100 () Bool)

(declare-fun tp!1510699 () Bool)

(declare-fun tp!1510700 () Bool)

(assert (=> b!5492279 (= e!3398100 (and tp!1510699 tp!1510700))))

(assert (=> b!5491125 (= tp!1509765 e!3398100)))

(assert (= (and b!5491125 ((_ is Cons!62546) (exprs!5341 setElem!36346))) b!5492279))

(declare-fun e!3398101 () Bool)

(assert (=> b!5491119 (= tp!1509756 e!3398101)))

(declare-fun b!5492283 () Bool)

(declare-fun tp!1510705 () Bool)

(declare-fun tp!1510704 () Bool)

(assert (=> b!5492283 (= e!3398101 (and tp!1510705 tp!1510704))))

(declare-fun b!5492282 () Bool)

(declare-fun tp!1510702 () Bool)

(assert (=> b!5492282 (= e!3398101 tp!1510702)))

(declare-fun b!5492281 () Bool)

(declare-fun tp!1510703 () Bool)

(declare-fun tp!1510701 () Bool)

(assert (=> b!5492281 (= e!3398101 (and tp!1510703 tp!1510701))))

(declare-fun b!5492280 () Bool)

(assert (=> b!5492280 (= e!3398101 tp_is_empty!40167)))

(assert (= (and b!5491119 ((_ is ElementMatch!15457) (reg!15786 (regTwo!31426 (regOne!31426 r!7292))))) b!5492280))

(assert (= (and b!5491119 ((_ is Concat!24302) (reg!15786 (regTwo!31426 (regOne!31426 r!7292))))) b!5492281))

(assert (= (and b!5491119 ((_ is Star!15457) (reg!15786 (regTwo!31426 (regOne!31426 r!7292))))) b!5492282))

(assert (= (and b!5491119 ((_ is Union!15457) (reg!15786 (regTwo!31426 (regOne!31426 r!7292))))) b!5492283))

(declare-fun b!5492284 () Bool)

(declare-fun e!3398102 () Bool)

(declare-fun tp!1510706 () Bool)

(declare-fun tp!1510707 () Bool)

(assert (=> b!5492284 (= e!3398102 (and tp!1510706 tp!1510707))))

(assert (=> b!5491069 (= tp!1509711 e!3398102)))

(assert (= (and b!5491069 ((_ is Cons!62546) (exprs!5341 (h!68995 (t!375902 (t!375902 zl!343)))))) b!5492284))

(declare-fun b!5492285 () Bool)

(declare-fun e!3398103 () Bool)

(declare-fun tp!1510708 () Bool)

(declare-fun tp!1510709 () Bool)

(assert (=> b!5492285 (= e!3398103 (and tp!1510708 tp!1510709))))

(assert (=> b!5491058 (= tp!1509700 e!3398103)))

(assert (= (and b!5491058 ((_ is Cons!62546) (exprs!5341 (h!68995 res!2342016)))) b!5492285))

(declare-fun e!3398104 () Bool)

(assert (=> b!5491081 (= tp!1509715 e!3398104)))

(declare-fun b!5492289 () Bool)

(declare-fun tp!1510714 () Bool)

(declare-fun tp!1510713 () Bool)

(assert (=> b!5492289 (= e!3398104 (and tp!1510714 tp!1510713))))

(declare-fun b!5492288 () Bool)

(declare-fun tp!1510711 () Bool)

(assert (=> b!5492288 (= e!3398104 tp!1510711)))

(declare-fun b!5492287 () Bool)

(declare-fun tp!1510712 () Bool)

(declare-fun tp!1510710 () Bool)

(assert (=> b!5492287 (= e!3398104 (and tp!1510712 tp!1510710))))

(declare-fun b!5492286 () Bool)

(assert (=> b!5492286 (= e!3398104 tp_is_empty!40167)))

(assert (= (and b!5491081 ((_ is ElementMatch!15457) (regOne!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492286))

(assert (= (and b!5491081 ((_ is Concat!24302) (regOne!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492287))

(assert (= (and b!5491081 ((_ is Star!15457) (regOne!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492288))

(assert (= (and b!5491081 ((_ is Union!15457) (regOne!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492289))

(declare-fun e!3398105 () Bool)

(assert (=> b!5491081 (= tp!1509713 e!3398105)))

(declare-fun b!5492293 () Bool)

(declare-fun tp!1510719 () Bool)

(declare-fun tp!1510718 () Bool)

(assert (=> b!5492293 (= e!3398105 (and tp!1510719 tp!1510718))))

(declare-fun b!5492292 () Bool)

(declare-fun tp!1510716 () Bool)

(assert (=> b!5492292 (= e!3398105 tp!1510716)))

(declare-fun b!5492291 () Bool)

(declare-fun tp!1510717 () Bool)

(declare-fun tp!1510715 () Bool)

(assert (=> b!5492291 (= e!3398105 (and tp!1510717 tp!1510715))))

(declare-fun b!5492290 () Bool)

(assert (=> b!5492290 (= e!3398105 tp_is_empty!40167)))

(assert (= (and b!5491081 ((_ is ElementMatch!15457) (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492290))

(assert (= (and b!5491081 ((_ is Concat!24302) (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492291))

(assert (= (and b!5491081 ((_ is Star!15457) (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492292))

(assert (= (and b!5491081 ((_ is Union!15457) (regTwo!31426 (regOne!31427 (regOne!31427 r!7292))))) b!5492293))

(declare-fun b_lambda!208427 () Bool)

(assert (= b_lambda!208413 (or d!1741726 b_lambda!208427)))

(declare-fun bs!1267455 () Bool)

(declare-fun d!1742040 () Bool)

(assert (= bs!1267455 (and d!1742040 d!1741726)))

(assert (=> bs!1267455 (= (dynLambda!24455 lambda!294022 (h!68994 (t!375901 (exprs!5341 setElem!36339)))) (validRegex!7193 (h!68994 (t!375901 (exprs!5341 setElem!36339)))))))

(declare-fun m!6504336 () Bool)

(assert (=> bs!1267455 m!6504336))

(assert (=> b!5491511 d!1742040))

(declare-fun b_lambda!208429 () Bool)

(assert (= b_lambda!208425 (or d!1741720 b_lambda!208429)))

(declare-fun bs!1267456 () Bool)

(declare-fun d!1742042 () Bool)

(assert (= bs!1267456 (and d!1742042 d!1741720)))

(assert (=> bs!1267456 (= (dynLambda!24455 lambda!294021 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))) (validRegex!7193 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(declare-fun m!6504338 () Bool)

(assert (=> bs!1267456 m!6504338))

(assert (=> b!5491723 d!1742042))

(declare-fun b_lambda!208431 () Bool)

(assert (= b_lambda!208421 (or d!1741796 b_lambda!208431)))

(declare-fun bs!1267457 () Bool)

(declare-fun d!1742044 () Bool)

(assert (= bs!1267457 (and d!1742044 d!1741796)))

(assert (=> bs!1267457 (= (dynLambda!24455 lambda!294050 (h!68994 lt!2242461)) (validRegex!7193 (h!68994 lt!2242461)))))

(declare-fun m!6504340 () Bool)

(assert (=> bs!1267457 m!6504340))

(assert (=> b!5491699 d!1742044))

(declare-fun b_lambda!208433 () Bool)

(assert (= b_lambda!208419 (or d!1741788 b_lambda!208433)))

(declare-fun bs!1267458 () Bool)

(declare-fun d!1742046 () Bool)

(assert (= bs!1267458 (and d!1742046 d!1741788)))

(assert (=> bs!1267458 (= (dynLambda!24455 lambda!294043 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))) (validRegex!7193 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(assert (=> bs!1267458 m!6504338))

(assert (=> b!5491614 d!1742046))

(declare-fun b_lambda!208435 () Bool)

(assert (= b_lambda!208415 (or d!1741818 b_lambda!208435)))

(declare-fun bs!1267459 () Bool)

(declare-fun d!1742048 () Bool)

(assert (= bs!1267459 (and d!1742048 d!1741818)))

(assert (=> bs!1267459 (= (dynLambda!24455 lambda!294053 (h!68994 (exprs!5341 setElem!36345))) (validRegex!7193 (h!68994 (exprs!5341 setElem!36345))))))

(declare-fun m!6504342 () Bool)

(assert (=> bs!1267459 m!6504342))

(assert (=> b!5491543 d!1742048))

(declare-fun b_lambda!208437 () Bool)

(assert (= b_lambda!208423 (or d!1741766 b_lambda!208437)))

(declare-fun bs!1267460 () Bool)

(declare-fun d!1742050 () Bool)

(assert (= bs!1267460 (and d!1742050 d!1741766)))

(assert (=> bs!1267460 (= (dynLambda!24455 lambda!294042 (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343))))) (validRegex!7193 (h!68994 (exprs!5341 (h!68995 (t!375902 zl!343))))))))

(declare-fun m!6504344 () Bool)

(assert (=> bs!1267460 m!6504344))

(assert (=> b!5491712 d!1742050))

(declare-fun b_lambda!208439 () Bool)

(assert (= b_lambda!208417 (or d!1741794 b_lambda!208439)))

(declare-fun bs!1267461 () Bool)

(declare-fun d!1742052 () Bool)

(assert (= bs!1267461 (and d!1742052 d!1741794)))

(assert (=> bs!1267461 (= (dynLambda!24455 lambda!294046 (h!68994 (unfocusZipperList!884 zl!343))) (validRegex!7193 (h!68994 (unfocusZipperList!884 zl!343))))))

(declare-fun m!6504346 () Bool)

(assert (=> bs!1267461 m!6504346))

(assert (=> b!5491583 d!1742052))

(declare-fun b_lambda!208441 () Bool)

(assert (= b_lambda!208411 (or d!1741728 b_lambda!208441)))

(declare-fun bs!1267462 () Bool)

(declare-fun d!1742054 () Bool)

(assert (= bs!1267462 (and d!1742054 d!1741728)))

(assert (=> bs!1267462 (= (dynLambda!24455 lambda!294026 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))) (validRegex!7193 (h!68994 (t!375901 (exprs!5341 (h!68995 zl!343))))))))

(assert (=> bs!1267462 m!6504338))

(assert (=> b!5491485 d!1742054))

(check-sat (not b!5492153) (not bm!404874) (not b!5491464) (not b!5492182) (not b!5491724) (not b!5492180) (not bm!404888) (not b!5492176) (not b!5491926) (not b!5492028) (not b!5491804) (not b!5492016) (not b!5491857) (not b!5492144) (not b!5491558) (not b!5491544) (not b!5492165) (not d!1741922) (not b!5492108) (not bm!404883) (not b!5492054) (not b!5492091) (not b!5491988) (not b!5492040) (not b!5491950) (not b!5492069) (not b!5491756) (not b!5492116) (not b!5491615) (not b!5492066) (not b!5492083) (not bm!404910) (not b!5491737) (not b!5492032) (not b!5491850) (not b!5492124) (not b!5491797) (not b!5491732) (not b!5491964) (not b!5491824) (not b!5491872) (not b!5492058) (not b!5492161) (not b!5491472) (not bs!1267458) (not b!5491813) (not b!5491771) (not b!5492041) (not b!5492102) (not b!5491948) (not b!5492034) (not b!5492260) (not b!5491748) (not b!5492086) (not b!5492074) (not b!5491922) (not b!5491757) (not b!5492168) (not b!5492283) (not b!5491586) (not b!5491585) (not b!5492059) (not b!5492002) (not b!5492209) (not bm!404907) (not b!5492000) (not b!5492256) (not b!5492132) (not b!5492257) (not b!5491909) (not b!5491658) (not b!5491670) (not b!5491518) (not b!5491966) (not b!5491896) (not b!5491755) (not b!5491745) (not b!5492134) (not b!5492184) (not b!5491454) (not b_lambda!208435) (not b!5491700) (not b!5492222) (not bm!404899) (not b!5491917) (not b!5492210) (not d!1741928) (not bm!404914) (not b!5491969) (not b!5491877) (not b!5491825) (not b!5491727) (not b!5492287) (not d!1742000) (not b!5492129) (not b!5491777) (not bm!404920) (not b!5491981) (not b!5491828) (not b!5492293) (not b!5492024) (not b!5491932) (not b!5492099) (not b_lambda!208397) (not b!5491821) (not b!5492106) (not b!5492237) (not b!5492273) (not b!5491846) (not b!5491579) (not d!1741910) (not b!5491803) (not b!5492270) (not b!5491435) (not b!5491801) (not b!5491869) (not b!5491953) (not b!5492149) (not bm!404882) (not b!5492200) (not b!5492082) (not b!5491874) (not bm!404885) (not b!5492097) (not b!5492236) (not b!5492070) (not b!5491761) (not b!5491726) (not b!5491954) (not b!5492053) (not bm!404896) (not b!5492202) (not b!5491910) (not b!5491764) (not b!5492017) (not b!5492036) (not b!5491905) (not b!5492181) (not b!5491849) (not b!5491955) (not b!5492010) (not bm!404908) (not b!5491456) (not b!5491741) (not b!5492206) (not b!5491908) (not b!5491854) (not b!5491897) (not b!5491465) (not b!5491791) (not b!5492067) (not b!5492158) (not bm!404911) (not b!5492089) (not b!5492196) (not b!5491795) (not bm!404928) (not b!5491856) (not b!5492018) (not b!5491861) (not b!5491882) (not b!5491921) (not b!5491834) (not b!5492093) (not b!5491888) (not b!5491956) (not b!5492261) (not b!5491730) (not b!5492110) (not b!5491621) (not bm!404894) (not b!5491483) (not b!5491753) (not b!5492169) (not b!5491845) (not b!5491818) (not b!5492115) (not b!5491759) (not b!5491990) (not b!5491986) (not b!5491924) (not b!5491740) (not b!5492127) (not bm!404886) (not b!5492095) (not b!5492225) (not bm!404915) (not b!5491837) (not b!5492226) (not b!5491775) (not b!5491747) (not b!5492051) (not b!5491437) (not bm!404895) (not b!5491841) (not b!5492282) (not bm!404940) (not b!5491512) (not b_lambda!208433) (not b!5491996) (not b!5492111) (not b!5491985) (not b!5492279) (not b!5492278) (not b!5492121) (not b!5491989) (not b!5492105) (not b!5492014) (not b!5491807) (not b!5491619) (not b!5492174) (not b!5492057) (not b!5491904) (not d!1742022) (not b!5492006) (not b!5492285) (not b!5491984) (not b!5492119) (not b!5492218) (not b!5491760) (not b!5492217) (not b!5492061) (not bm!404922) (not b!5491468) (not b!5491800) (not b!5491925) (not b!5491809) (not b!5491433) (not b!5492288) (not b!5492087) (not d!1741992) (not b!5491736) (not b!5491880) (not d!1741972) (not b!5491431) (not b!5491838) (not b!5492133) (not b!5491960) (not b!5492233) (not b!5492128) (not b!5491941) (not b!5491814) (not b!5491866) (not b!5492020) (not b!5492033) (not bm!404933) (not b!5491992) (not b!5492268) (not b!5491467) (not b!5491769) (not b!5491656) (not b!5492172) (not b!5492043) (not bm!404941) (not b!5492166) (not b!5492188) (not b!5491844) (not b!5492150) (not b!5492022) (not b!5492094) (not b!5491901) (not b!5491486) (not b!5491632) (not b!5492173) (not b!5491870) (not b!5491833) (not b!5491788) (not b!5492232) (not b_lambda!208395) (not bs!1267457) (not b!5491659) (not b!5491685) (not b!5491962) (not b!5492009) (not b_lambda!208431) (not b!5491892) (not b!5491900) (not b!5492205) (not b!5491799) (not b!5492118) (not b!5492277) (not b!5492123) (not b!5492242) (not b!5492224) (not b!5491811) (not b!5491893) (not b!5491876) (not b!5491959) (not b!5491820) (not b!5491676) (not bs!1267462) (not b!5492055) (not b!5491873) (not b!5491898) (not b!5491918) (not bm!404889) (not bm!404913) (not bm!404937) (not b!5491601) (not b!5491933) (not b!5491902) (not b!5492013) (not b!5492245) (not b!5492046) (not b!5492154) (not d!1741954) (not b!5491977) (not b!5492221) (not b!5491862) (not b!5491507) (not b!5491916) (not bs!1267455) (not d!1742026) (not b!5492212) (not b!5491789) (not b!5491934) (not b!5491864) (not b!5492178) (not b!5491622) (not b!5492177) tp_is_empty!40167 (not b!5492008) (not b!5491617) (not b!5491906) (not b!5492065) (not b!5492241) (not b!5491792) (not b!5491913) (not b!5492130) (not b!5492262) (not b!5492228) (not b!5491940) (not b!5491728) (not d!1742038) (not b!5491952) (not b!5492050) (not b!5491968) (not b!5491822) (not bm!404929) (not b!5492234) (not bs!1267456) (not bs!1267459) (not b!5492244) (not b!5491498) (not b_lambda!208427) (not b!5492026) (not b!5491974) (not b!5491772) (not b!5491894) (not b!5492078) (not b!5492073) (not b!5491707) (not bm!404931) (not b!5491783) (not b!5492189) (not b!5491780) (not b!5492071) (not d!1741982) (not b!5491623) (not b!5492252) (not b!5491705) (not b!5491610) (not bm!404902) (not b!5491616) (not b_lambda!208439) (not b!5491765) (not b!5491767) (not b!5491773) (not bm!404875) (not d!1741904) (not d!1741990) (not b!5492170) (not b!5492142) (not b!5492162) (not bm!404905) (not b!5492164) (not bm!404901) (not b!5492029) (not b!5491938) (not b!5492214) (not b!5491829) (not b!5492281) (not b!5492157) (not b!5492201) (not b!5492101) (not b!5492185) (not b!5492085) (not b!5492291) (not b!5492145) (not b!5492075) (not b!5492230) (not b!5491914) (not b!5492025) (not b!5492047) (not b!5491817) (not b!5491878) (not b!5491785) (not b!5491665) (not b!5491439) (not b!5492213) (not b!5491937) (not b!5491812) (not b!5492254) (not b!5491751) (not bm!404926) (not bm!404925) (not b!5491739) (not b!5491944) (not b!5492138) (not b!5491432) (not b!5491853) (not b!5492005) (not b!5492258) (not b!5492062) (not bm!404877) (not b!5492146) (not b!5492049) (not b!5492042) (not b!5492140) (not b!5492190) (not b!5491749) (not b!5492265) (not b!5492248) (not b!5491796) (not b!5491752) (not b!5491998) (not b!5492238) (not b!5491805) (not b!5492112) (not b!5491646) (not d!1742004) (not b!5491978) (not bm!404932) (not b!5491556) (not b!5491886) (not setNonEmpty!36348) (not bs!1267460) (not b!5492292) (not b!5491858) (not b!5492137) (not b!5491980) (not bm!404919) (not b!5491719) (not bm!404872) (not b!5492284) (not d!1741946) (not b!5492216) (not b!5492021) (not bm!404904) (not b!5491942) (not b!5491832) (not b!5491564) (not b!5492198) (not b!5492276) (not b!5491881) (not b!5491776) (not b!5492001) (not b!5492192) (not b!5492156) (not b!5491936) (not b!5491884) (not b!5491890) (not b!5492152) (not b!5491972) (not b!5491997) (not b!5491920) (not b!5492103) (not b!5492250) (not d!1741968) (not b!5492098) (not b!5492186) (not b!5491970) (not b!5492264) (not b!5491830) (not b!5492079) (not b!5491965) (not bm!404897) (not b!5491784) (not b!5491808) (not b!5491584) (not b!5491768) (not b!5492148) (not b!5491787) (not b!5491842) (not b!5492249) (not bm!404918) (not bm!404879) (not b!5491865) (not b!5491885) (not b!5491492) (not b!5491744) (not b!5491781) (not b!5492197) (not b!5491973) (not b!5491848) (not b!5491570) (not b!5492204) (not b!5491889) (not bm!404916) (not b!5491466) (not b!5492030) (not b!5491436) (not b!5492269) (not b!5492272) (not b!5492004) (not b!5492136) (not b!5491994) (not b!5492274) (not b!5491949) (not b!5492114) (not b!5492220) (not b!5492125) (not b_lambda!208429) (not b!5491946) (not b!5491993) (not b!5492012) (not b!5491958) (not b!5491836) (not b!5491982) (not d!1741912) (not b!5492120) (not b!5492266) (not b!5491963) (not b!5491735) (not b!5491929) (not bm!404938) (not b!5492246) (not bm!404935) (not b!5492090) (not b!5491779) (not d!1741962) (not b!5491928) (not b!5491868) (not b!5491840) (not b_lambda!208441) (not b!5491816) (not b!5491713) (not d!1742002) (not b!5492208) (not b!5491592) (not b!5491642) (not b!5492077) (not b!5492141) (not b!5492063) (not b!5492045) (not bm!404898) (not b!5491930) (not b!5491976) (not b!5491860) (not b!5492038) (not b!5491852) (not b!5492240) (not b!5491697) (not b!5491625) (not b!5491630) (not b!5491733) (not b!5491826) (not b!5492081) (not b!5491945) (not bm!404876) (not b!5491912) (not b!5491763) (not b_lambda!208399) (not b!5491743) (not b!5492229) (not b!5492160) (not b!5492289) (not b!5492193) (not bs!1267461) (not b!5492194) (not b_lambda!208437) (not b!5492107) (not bm!404873) (not b!5492253) (not b!5491793) (not b!5492037) (not b!5491446) (not b!5491731))
(check-sat)

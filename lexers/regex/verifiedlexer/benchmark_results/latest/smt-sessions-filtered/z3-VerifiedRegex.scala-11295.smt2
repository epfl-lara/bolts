; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595928 () Bool)

(assert start!595928)

(declare-fun e!3569425 () Bool)

(declare-fun b!5815685 () Bool)

(declare-datatypes ((C!31944 0))(
  ( (C!31945 (val!25674 Int)) )
))
(declare-datatypes ((Regex!15837 0))(
  ( (ElementMatch!15837 (c!1030737 C!31944)) (Concat!24682 (regOne!32186 Regex!15837) (regTwo!32186 Regex!15837)) (EmptyExpr!15837) (Star!15837 (reg!16166 Regex!15837)) (EmptyLang!15837) (Union!15837 (regOne!32187 Regex!15837) (regTwo!32187 Regex!15837)) )
))
(declare-datatypes ((List!63810 0))(
  ( (Nil!63686) (Cons!63686 (h!70134 Regex!15837) (t!377165 List!63810)) )
))
(declare-datatypes ((Context!10442 0))(
  ( (Context!10443 (exprs!5721 List!63810)) )
))
(declare-datatypes ((List!63811 0))(
  ( (Nil!63687) (Cons!63687 (h!70135 Context!10442) (t!377166 List!63811)) )
))
(declare-fun zl!343 () List!63811)

(declare-fun tp!1604490 () Bool)

(declare-fun e!3569420 () Bool)

(declare-fun inv!82839 (Context!10442) Bool)

(assert (=> b!5815685 (= e!3569420 (and (inv!82839 (h!70135 zl!343)) e!3569425 tp!1604490))))

(declare-fun b!5815686 () Bool)

(declare-fun e!3569422 () Bool)

(declare-fun tp!1604485 () Bool)

(assert (=> b!5815686 (= e!3569422 tp!1604485)))

(declare-fun b!5815687 () Bool)

(declare-fun e!3569423 () Bool)

(declare-fun tp_is_empty!40927 () Bool)

(assert (=> b!5815687 (= e!3569423 tp_is_empty!40927)))

(declare-fun b!5815688 () Bool)

(declare-fun e!3569421 () Bool)

(declare-fun e!3569419 () Bool)

(assert (=> b!5815688 (= e!3569421 (not e!3569419))))

(declare-fun res!2452514 () Bool)

(assert (=> b!5815688 (=> res!2452514 e!3569419)))

(get-info :version)

(assert (=> b!5815688 (= res!2452514 (not ((_ is Cons!63687) zl!343)))))

(declare-fun r!7292 () Regex!15837)

(declare-datatypes ((List!63812 0))(
  ( (Nil!63688) (Cons!63688 (h!70136 C!31944) (t!377167 List!63812)) )
))
(declare-fun s!2326 () List!63812)

(declare-fun matchR!8022 (Regex!15837 List!63812) Bool)

(declare-fun matchRSpec!2940 (Regex!15837 List!63812) Bool)

(assert (=> b!5815688 (= (matchR!8022 r!7292 s!2326) (matchRSpec!2940 r!7292 s!2326))))

(declare-datatypes ((Unit!156934 0))(
  ( (Unit!156935) )
))
(declare-fun lt!2301360 () Unit!156934)

(declare-fun mainMatchTheorem!2940 (Regex!15837 List!63812) Unit!156934)

(assert (=> b!5815688 (= lt!2301360 (mainMatchTheorem!2940 r!7292 s!2326))))

(declare-fun b!5815689 () Bool)

(declare-fun res!2452515 () Bool)

(assert (=> b!5815689 (=> (not res!2452515) (not e!3569421))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10442))

(declare-fun toList!9621 ((InoxSet Context!10442)) List!63811)

(assert (=> b!5815689 (= res!2452515 (= (toList!9621 z!1189) zl!343))))

(declare-fun b!5815690 () Bool)

(declare-fun res!2452518 () Bool)

(assert (=> b!5815690 (=> (not res!2452518) (not e!3569421))))

(declare-fun unfocusZipper!1579 (List!63811) Regex!15837)

(assert (=> b!5815690 (= res!2452518 (= r!7292 (unfocusZipper!1579 zl!343)))))

(declare-fun setNonEmpty!39190 () Bool)

(declare-fun setElem!39190 () Context!10442)

(declare-fun tp!1604487 () Bool)

(declare-fun setRes!39190 () Bool)

(assert (=> setNonEmpty!39190 (= setRes!39190 (and tp!1604487 (inv!82839 setElem!39190) e!3569422))))

(declare-fun setRest!39190 () (InoxSet Context!10442))

(assert (=> setNonEmpty!39190 (= z!1189 ((_ map or) (store ((as const (Array Context!10442 Bool)) false) setElem!39190 true) setRest!39190))))

(declare-fun b!5815691 () Bool)

(declare-fun res!2452513 () Bool)

(assert (=> b!5815691 (=> res!2452513 e!3569419)))

(declare-fun generalisedConcat!1452 (List!63810) Regex!15837)

(assert (=> b!5815691 (= res!2452513 (not (= r!7292 (generalisedConcat!1452 (exprs!5721 (h!70135 zl!343))))))))

(declare-fun b!5815692 () Bool)

(declare-fun res!2452517 () Bool)

(assert (=> b!5815692 (=> res!2452517 e!3569419)))

(declare-fun isEmpty!35606 (List!63811) Bool)

(assert (=> b!5815692 (= res!2452517 (not (isEmpty!35606 (t!377166 zl!343))))))

(declare-fun setIsEmpty!39190 () Bool)

(assert (=> setIsEmpty!39190 setRes!39190))

(declare-fun res!2452516 () Bool)

(assert (=> start!595928 (=> (not res!2452516) (not e!3569421))))

(declare-fun validRegex!7573 (Regex!15837) Bool)

(assert (=> start!595928 (= res!2452516 (validRegex!7573 r!7292))))

(assert (=> start!595928 e!3569421))

(assert (=> start!595928 e!3569423))

(declare-fun condSetEmpty!39190 () Bool)

(assert (=> start!595928 (= condSetEmpty!39190 (= z!1189 ((as const (Array Context!10442 Bool)) false)))))

(assert (=> start!595928 setRes!39190))

(assert (=> start!595928 e!3569420))

(declare-fun e!3569424 () Bool)

(assert (=> start!595928 e!3569424))

(declare-fun b!5815693 () Bool)

(declare-fun tp!1604483 () Bool)

(declare-fun tp!1604486 () Bool)

(assert (=> b!5815693 (= e!3569423 (and tp!1604483 tp!1604486))))

(declare-fun b!5815694 () Bool)

(declare-fun tp!1604488 () Bool)

(assert (=> b!5815694 (= e!3569425 tp!1604488)))

(declare-fun b!5815695 () Bool)

(assert (=> b!5815695 (= e!3569419 (or ((_ is Cons!63686) (exprs!5721 (h!70135 zl!343))) (= r!7292 EmptyExpr!15837)))))

(declare-fun b!5815696 () Bool)

(declare-fun tp!1604491 () Bool)

(declare-fun tp!1604484 () Bool)

(assert (=> b!5815696 (= e!3569423 (and tp!1604491 tp!1604484))))

(declare-fun b!5815697 () Bool)

(declare-fun tp!1604492 () Bool)

(assert (=> b!5815697 (= e!3569423 tp!1604492)))

(declare-fun b!5815698 () Bool)

(declare-fun tp!1604489 () Bool)

(assert (=> b!5815698 (= e!3569424 (and tp_is_empty!40927 tp!1604489))))

(assert (= (and start!595928 res!2452516) b!5815689))

(assert (= (and b!5815689 res!2452515) b!5815690))

(assert (= (and b!5815690 res!2452518) b!5815688))

(assert (= (and b!5815688 (not res!2452514)) b!5815692))

(assert (= (and b!5815692 (not res!2452517)) b!5815691))

(assert (= (and b!5815691 (not res!2452513)) b!5815695))

(assert (= (and start!595928 ((_ is ElementMatch!15837) r!7292)) b!5815687))

(assert (= (and start!595928 ((_ is Concat!24682) r!7292)) b!5815696))

(assert (= (and start!595928 ((_ is Star!15837) r!7292)) b!5815697))

(assert (= (and start!595928 ((_ is Union!15837) r!7292)) b!5815693))

(assert (= (and start!595928 condSetEmpty!39190) setIsEmpty!39190))

(assert (= (and start!595928 (not condSetEmpty!39190)) setNonEmpty!39190))

(assert (= setNonEmpty!39190 b!5815686))

(assert (= b!5815685 b!5815694))

(assert (= (and start!595928 ((_ is Cons!63687) zl!343)) b!5815685))

(assert (= (and start!595928 ((_ is Cons!63688) s!2326)) b!5815698))

(declare-fun m!6753364 () Bool)

(assert (=> b!5815691 m!6753364))

(declare-fun m!6753366 () Bool)

(assert (=> start!595928 m!6753366))

(declare-fun m!6753368 () Bool)

(assert (=> b!5815690 m!6753368))

(declare-fun m!6753370 () Bool)

(assert (=> setNonEmpty!39190 m!6753370))

(declare-fun m!6753372 () Bool)

(assert (=> b!5815692 m!6753372))

(declare-fun m!6753374 () Bool)

(assert (=> b!5815688 m!6753374))

(declare-fun m!6753376 () Bool)

(assert (=> b!5815688 m!6753376))

(declare-fun m!6753378 () Bool)

(assert (=> b!5815688 m!6753378))

(declare-fun m!6753380 () Bool)

(assert (=> b!5815685 m!6753380))

(declare-fun m!6753382 () Bool)

(assert (=> b!5815689 m!6753382))

(check-sat (not b!5815694) (not b!5815691) (not b!5815696) (not start!595928) (not setNonEmpty!39190) (not b!5815689) (not b!5815685) (not b!5815688) tp_is_empty!40927 (not b!5815686) (not b!5815698) (not b!5815690) (not b!5815697) (not b!5815693) (not b!5815692))
(check-sat)
(get-model)

(declare-fun d!1831058 () Bool)

(declare-fun lt!2301363 () Regex!15837)

(assert (=> d!1831058 (validRegex!7573 lt!2301363)))

(declare-fun generalisedUnion!1699 (List!63810) Regex!15837)

(declare-fun unfocusZipperList!1264 (List!63811) List!63810)

(assert (=> d!1831058 (= lt!2301363 (generalisedUnion!1699 (unfocusZipperList!1264 zl!343)))))

(assert (=> d!1831058 (= (unfocusZipper!1579 zl!343) lt!2301363)))

(declare-fun bs!1372744 () Bool)

(assert (= bs!1372744 d!1831058))

(declare-fun m!6753384 () Bool)

(assert (=> bs!1372744 m!6753384))

(declare-fun m!6753386 () Bool)

(assert (=> bs!1372744 m!6753386))

(assert (=> bs!1372744 m!6753386))

(declare-fun m!6753388 () Bool)

(assert (=> bs!1372744 m!6753388))

(assert (=> b!5815690 d!1831058))

(declare-fun d!1831060 () Bool)

(declare-fun e!3569428 () Bool)

(assert (=> d!1831060 e!3569428))

(declare-fun res!2452521 () Bool)

(assert (=> d!1831060 (=> (not res!2452521) (not e!3569428))))

(declare-fun lt!2301366 () List!63811)

(declare-fun noDuplicate!1727 (List!63811) Bool)

(assert (=> d!1831060 (= res!2452521 (noDuplicate!1727 lt!2301366))))

(declare-fun choose!44203 ((InoxSet Context!10442)) List!63811)

(assert (=> d!1831060 (= lt!2301366 (choose!44203 z!1189))))

(assert (=> d!1831060 (= (toList!9621 z!1189) lt!2301366)))

(declare-fun b!5815701 () Bool)

(declare-fun content!11685 (List!63811) (InoxSet Context!10442))

(assert (=> b!5815701 (= e!3569428 (= (content!11685 lt!2301366) z!1189))))

(assert (= (and d!1831060 res!2452521) b!5815701))

(declare-fun m!6753390 () Bool)

(assert (=> d!1831060 m!6753390))

(declare-fun m!6753392 () Bool)

(assert (=> d!1831060 m!6753392))

(declare-fun m!6753394 () Bool)

(assert (=> b!5815701 m!6753394))

(assert (=> b!5815689 d!1831060))

(declare-fun d!1831064 () Bool)

(declare-fun lambda!318011 () Int)

(declare-fun forall!14940 (List!63810 Int) Bool)

(assert (=> d!1831064 (= (inv!82839 (h!70135 zl!343)) (forall!14940 (exprs!5721 (h!70135 zl!343)) lambda!318011))))

(declare-fun bs!1372745 () Bool)

(assert (= bs!1372745 d!1831064))

(declare-fun m!6753408 () Bool)

(assert (=> bs!1372745 m!6753408))

(assert (=> b!5815685 d!1831064))

(declare-fun bs!1372746 () Bool)

(declare-fun d!1831072 () Bool)

(assert (= bs!1372746 (and d!1831072 d!1831064)))

(declare-fun lambda!318012 () Int)

(assert (=> bs!1372746 (= lambda!318012 lambda!318011)))

(assert (=> d!1831072 (= (inv!82839 setElem!39190) (forall!14940 (exprs!5721 setElem!39190) lambda!318012))))

(declare-fun bs!1372747 () Bool)

(assert (= bs!1372747 d!1831072))

(declare-fun m!6753410 () Bool)

(assert (=> bs!1372747 m!6753410))

(assert (=> setNonEmpty!39190 d!1831072))

(declare-fun bs!1372748 () Bool)

(declare-fun d!1831074 () Bool)

(assert (= bs!1372748 (and d!1831074 d!1831064)))

(declare-fun lambda!318015 () Int)

(assert (=> bs!1372748 (= lambda!318015 lambda!318011)))

(declare-fun bs!1372749 () Bool)

(assert (= bs!1372749 (and d!1831074 d!1831072)))

(assert (=> bs!1372749 (= lambda!318015 lambda!318012)))

(declare-fun b!5815752 () Bool)

(declare-fun e!3569469 () Bool)

(declare-fun lt!2301372 () Regex!15837)

(declare-fun head!12276 (List!63810) Regex!15837)

(assert (=> b!5815752 (= e!3569469 (= lt!2301372 (head!12276 (exprs!5721 (h!70135 zl!343)))))))

(declare-fun e!3569466 () Bool)

(assert (=> d!1831074 e!3569466))

(declare-fun res!2452545 () Bool)

(assert (=> d!1831074 (=> (not res!2452545) (not e!3569466))))

(assert (=> d!1831074 (= res!2452545 (validRegex!7573 lt!2301372))))

(declare-fun e!3569467 () Regex!15837)

(assert (=> d!1831074 (= lt!2301372 e!3569467)))

(declare-fun c!1030754 () Bool)

(declare-fun e!3569468 () Bool)

(assert (=> d!1831074 (= c!1030754 e!3569468)))

(declare-fun res!2452544 () Bool)

(assert (=> d!1831074 (=> (not res!2452544) (not e!3569468))))

(assert (=> d!1831074 (= res!2452544 ((_ is Cons!63686) (exprs!5721 (h!70135 zl!343))))))

(assert (=> d!1831074 (forall!14940 (exprs!5721 (h!70135 zl!343)) lambda!318015)))

(assert (=> d!1831074 (= (generalisedConcat!1452 (exprs!5721 (h!70135 zl!343))) lt!2301372)))

(declare-fun b!5815753 () Bool)

(declare-fun e!3569470 () Bool)

(declare-fun isEmptyExpr!1306 (Regex!15837) Bool)

(assert (=> b!5815753 (= e!3569470 (isEmptyExpr!1306 lt!2301372))))

(declare-fun b!5815754 () Bool)

(assert (=> b!5815754 (= e!3569467 (h!70134 (exprs!5721 (h!70135 zl!343))))))

(declare-fun b!5815755 () Bool)

(declare-fun isConcat!829 (Regex!15837) Bool)

(assert (=> b!5815755 (= e!3569469 (isConcat!829 lt!2301372))))

(declare-fun b!5815756 () Bool)

(declare-fun e!3569465 () Regex!15837)

(assert (=> b!5815756 (= e!3569465 (Concat!24682 (h!70134 (exprs!5721 (h!70135 zl!343))) (generalisedConcat!1452 (t!377165 (exprs!5721 (h!70135 zl!343))))))))

(declare-fun b!5815757 () Bool)

(assert (=> b!5815757 (= e!3569465 EmptyExpr!15837)))

(declare-fun b!5815758 () Bool)

(assert (=> b!5815758 (= e!3569466 e!3569470)))

(declare-fun c!1030753 () Bool)

(declare-fun isEmpty!35607 (List!63810) Bool)

(assert (=> b!5815758 (= c!1030753 (isEmpty!35607 (exprs!5721 (h!70135 zl!343))))))

(declare-fun b!5815759 () Bool)

(assert (=> b!5815759 (= e!3569468 (isEmpty!35607 (t!377165 (exprs!5721 (h!70135 zl!343)))))))

(declare-fun b!5815760 () Bool)

(assert (=> b!5815760 (= e!3569470 e!3569469)))

(declare-fun c!1030752 () Bool)

(declare-fun tail!11371 (List!63810) List!63810)

(assert (=> b!5815760 (= c!1030752 (isEmpty!35607 (tail!11371 (exprs!5721 (h!70135 zl!343)))))))

(declare-fun b!5815761 () Bool)

(assert (=> b!5815761 (= e!3569467 e!3569465)))

(declare-fun c!1030755 () Bool)

(assert (=> b!5815761 (= c!1030755 ((_ is Cons!63686) (exprs!5721 (h!70135 zl!343))))))

(assert (= (and d!1831074 res!2452544) b!5815759))

(assert (= (and d!1831074 c!1030754) b!5815754))

(assert (= (and d!1831074 (not c!1030754)) b!5815761))

(assert (= (and b!5815761 c!1030755) b!5815756))

(assert (= (and b!5815761 (not c!1030755)) b!5815757))

(assert (= (and d!1831074 res!2452545) b!5815758))

(assert (= (and b!5815758 c!1030753) b!5815753))

(assert (= (and b!5815758 (not c!1030753)) b!5815760))

(assert (= (and b!5815760 c!1030752) b!5815752))

(assert (= (and b!5815760 (not c!1030752)) b!5815755))

(declare-fun m!6753412 () Bool)

(assert (=> b!5815753 m!6753412))

(declare-fun m!6753414 () Bool)

(assert (=> b!5815759 m!6753414))

(declare-fun m!6753416 () Bool)

(assert (=> b!5815760 m!6753416))

(assert (=> b!5815760 m!6753416))

(declare-fun m!6753418 () Bool)

(assert (=> b!5815760 m!6753418))

(declare-fun m!6753420 () Bool)

(assert (=> d!1831074 m!6753420))

(declare-fun m!6753422 () Bool)

(assert (=> d!1831074 m!6753422))

(declare-fun m!6753424 () Bool)

(assert (=> b!5815756 m!6753424))

(declare-fun m!6753426 () Bool)

(assert (=> b!5815752 m!6753426))

(declare-fun m!6753428 () Bool)

(assert (=> b!5815755 m!6753428))

(declare-fun m!6753430 () Bool)

(assert (=> b!5815758 m!6753430))

(assert (=> b!5815691 d!1831074))

(declare-fun d!1831076 () Bool)

(assert (=> d!1831076 (= (isEmpty!35606 (t!377166 zl!343)) ((_ is Nil!63687) (t!377166 zl!343)))))

(assert (=> b!5815692 d!1831076))

(declare-fun b!5815780 () Bool)

(declare-fun e!3569487 () Bool)

(declare-fun e!3569488 () Bool)

(assert (=> b!5815780 (= e!3569487 e!3569488)))

(declare-fun c!1030760 () Bool)

(assert (=> b!5815780 (= c!1030760 ((_ is Star!15837) r!7292))))

(declare-fun b!5815781 () Bool)

(declare-fun res!2452556 () Bool)

(declare-fun e!3569485 () Bool)

(assert (=> b!5815781 (=> (not res!2452556) (not e!3569485))))

(declare-fun call!454241 () Bool)

(assert (=> b!5815781 (= res!2452556 call!454241)))

(declare-fun e!3569489 () Bool)

(assert (=> b!5815781 (= e!3569489 e!3569485)))

(declare-fun b!5815782 () Bool)

(declare-fun call!454240 () Bool)

(assert (=> b!5815782 (= e!3569485 call!454240)))

(declare-fun d!1831078 () Bool)

(declare-fun res!2452560 () Bool)

(assert (=> d!1831078 (=> res!2452560 e!3569487)))

(assert (=> d!1831078 (= res!2452560 ((_ is ElementMatch!15837) r!7292))))

(assert (=> d!1831078 (= (validRegex!7573 r!7292) e!3569487)))

(declare-fun bm!454235 () Bool)

(declare-fun c!1030761 () Bool)

(assert (=> bm!454235 (= call!454241 (validRegex!7573 (ite c!1030761 (regOne!32187 r!7292) (regOne!32186 r!7292))))))

(declare-fun b!5815783 () Bool)

(declare-fun e!3569490 () Bool)

(assert (=> b!5815783 (= e!3569488 e!3569490)))

(declare-fun res!2452558 () Bool)

(declare-fun nullable!5858 (Regex!15837) Bool)

(assert (=> b!5815783 (= res!2452558 (not (nullable!5858 (reg!16166 r!7292))))))

(assert (=> b!5815783 (=> (not res!2452558) (not e!3569490))))

(declare-fun call!454242 () Bool)

(declare-fun bm!454236 () Bool)

(assert (=> bm!454236 (= call!454242 (validRegex!7573 (ite c!1030760 (reg!16166 r!7292) (ite c!1030761 (regTwo!32187 r!7292) (regTwo!32186 r!7292)))))))

(declare-fun b!5815784 () Bool)

(assert (=> b!5815784 (= e!3569490 call!454242)))

(declare-fun b!5815785 () Bool)

(declare-fun res!2452559 () Bool)

(declare-fun e!3569486 () Bool)

(assert (=> b!5815785 (=> res!2452559 e!3569486)))

(assert (=> b!5815785 (= res!2452559 (not ((_ is Concat!24682) r!7292)))))

(assert (=> b!5815785 (= e!3569489 e!3569486)))

(declare-fun bm!454237 () Bool)

(assert (=> bm!454237 (= call!454240 call!454242)))

(declare-fun b!5815786 () Bool)

(declare-fun e!3569491 () Bool)

(assert (=> b!5815786 (= e!3569491 call!454240)))

(declare-fun b!5815787 () Bool)

(assert (=> b!5815787 (= e!3569486 e!3569491)))

(declare-fun res!2452557 () Bool)

(assert (=> b!5815787 (=> (not res!2452557) (not e!3569491))))

(assert (=> b!5815787 (= res!2452557 call!454241)))

(declare-fun b!5815788 () Bool)

(assert (=> b!5815788 (= e!3569488 e!3569489)))

(assert (=> b!5815788 (= c!1030761 ((_ is Union!15837) r!7292))))

(assert (= (and d!1831078 (not res!2452560)) b!5815780))

(assert (= (and b!5815780 c!1030760) b!5815783))

(assert (= (and b!5815780 (not c!1030760)) b!5815788))

(assert (= (and b!5815783 res!2452558) b!5815784))

(assert (= (and b!5815788 c!1030761) b!5815781))

(assert (= (and b!5815788 (not c!1030761)) b!5815785))

(assert (= (and b!5815781 res!2452556) b!5815782))

(assert (= (and b!5815785 (not res!2452559)) b!5815787))

(assert (= (and b!5815787 res!2452557) b!5815786))

(assert (= (or b!5815782 b!5815786) bm!454237))

(assert (= (or b!5815781 b!5815787) bm!454235))

(assert (= (or b!5815784 bm!454237) bm!454236))

(declare-fun m!6753432 () Bool)

(assert (=> bm!454235 m!6753432))

(declare-fun m!6753434 () Bool)

(assert (=> b!5815783 m!6753434))

(declare-fun m!6753436 () Bool)

(assert (=> bm!454236 m!6753436))

(assert (=> start!595928 d!1831078))

(declare-fun b!5815817 () Bool)

(declare-fun e!3569509 () Bool)

(declare-fun lt!2301375 () Bool)

(declare-fun call!454245 () Bool)

(assert (=> b!5815817 (= e!3569509 (= lt!2301375 call!454245))))

(declare-fun b!5815818 () Bool)

(declare-fun e!3569507 () Bool)

(declare-fun head!12277 (List!63812) C!31944)

(assert (=> b!5815818 (= e!3569507 (not (= (head!12277 s!2326) (c!1030737 r!7292))))))

(declare-fun b!5815819 () Bool)

(declare-fun res!2452583 () Bool)

(declare-fun e!3569511 () Bool)

(assert (=> b!5815819 (=> (not res!2452583) (not e!3569511))))

(assert (=> b!5815819 (= res!2452583 (not call!454245))))

(declare-fun bm!454240 () Bool)

(declare-fun isEmpty!35608 (List!63812) Bool)

(assert (=> bm!454240 (= call!454245 (isEmpty!35608 s!2326))))

(declare-fun b!5815820 () Bool)

(declare-fun e!3569510 () Bool)

(assert (=> b!5815820 (= e!3569510 (nullable!5858 r!7292))))

(declare-fun d!1831080 () Bool)

(assert (=> d!1831080 e!3569509))

(declare-fun c!1030768 () Bool)

(assert (=> d!1831080 (= c!1030768 ((_ is EmptyExpr!15837) r!7292))))

(assert (=> d!1831080 (= lt!2301375 e!3569510)))

(declare-fun c!1030770 () Bool)

(assert (=> d!1831080 (= c!1030770 (isEmpty!35608 s!2326))))

(assert (=> d!1831080 (validRegex!7573 r!7292)))

(assert (=> d!1831080 (= (matchR!8022 r!7292 s!2326) lt!2301375)))

(declare-fun b!5815821 () Bool)

(declare-fun res!2452578 () Bool)

(declare-fun e!3569506 () Bool)

(assert (=> b!5815821 (=> res!2452578 e!3569506)))

(assert (=> b!5815821 (= res!2452578 (not ((_ is ElementMatch!15837) r!7292)))))

(declare-fun e!3569512 () Bool)

(assert (=> b!5815821 (= e!3569512 e!3569506)))

(declare-fun b!5815822 () Bool)

(declare-fun e!3569508 () Bool)

(assert (=> b!5815822 (= e!3569506 e!3569508)))

(declare-fun res!2452577 () Bool)

(assert (=> b!5815822 (=> (not res!2452577) (not e!3569508))))

(assert (=> b!5815822 (= res!2452577 (not lt!2301375))))

(declare-fun b!5815823 () Bool)

(declare-fun res!2452580 () Bool)

(assert (=> b!5815823 (=> res!2452580 e!3569507)))

(declare-fun tail!11372 (List!63812) List!63812)

(assert (=> b!5815823 (= res!2452580 (not (isEmpty!35608 (tail!11372 s!2326))))))

(declare-fun b!5815824 () Bool)

(declare-fun res!2452582 () Bool)

(assert (=> b!5815824 (=> res!2452582 e!3569506)))

(assert (=> b!5815824 (= res!2452582 e!3569511)))

(declare-fun res!2452579 () Bool)

(assert (=> b!5815824 (=> (not res!2452579) (not e!3569511))))

(assert (=> b!5815824 (= res!2452579 lt!2301375)))

(declare-fun b!5815825 () Bool)

(assert (=> b!5815825 (= e!3569508 e!3569507)))

(declare-fun res!2452584 () Bool)

(assert (=> b!5815825 (=> res!2452584 e!3569507)))

(assert (=> b!5815825 (= res!2452584 call!454245)))

(declare-fun b!5815826 () Bool)

(declare-fun res!2452581 () Bool)

(assert (=> b!5815826 (=> (not res!2452581) (not e!3569511))))

(assert (=> b!5815826 (= res!2452581 (isEmpty!35608 (tail!11372 s!2326)))))

(declare-fun b!5815827 () Bool)

(declare-fun derivativeStep!4601 (Regex!15837 C!31944) Regex!15837)

(assert (=> b!5815827 (= e!3569510 (matchR!8022 (derivativeStep!4601 r!7292 (head!12277 s!2326)) (tail!11372 s!2326)))))

(declare-fun b!5815828 () Bool)

(assert (=> b!5815828 (= e!3569511 (= (head!12277 s!2326) (c!1030737 r!7292)))))

(declare-fun b!5815829 () Bool)

(assert (=> b!5815829 (= e!3569512 (not lt!2301375))))

(declare-fun b!5815830 () Bool)

(assert (=> b!5815830 (= e!3569509 e!3569512)))

(declare-fun c!1030769 () Bool)

(assert (=> b!5815830 (= c!1030769 ((_ is EmptyLang!15837) r!7292))))

(assert (= (and d!1831080 c!1030770) b!5815820))

(assert (= (and d!1831080 (not c!1030770)) b!5815827))

(assert (= (and d!1831080 c!1030768) b!5815817))

(assert (= (and d!1831080 (not c!1030768)) b!5815830))

(assert (= (and b!5815830 c!1030769) b!5815829))

(assert (= (and b!5815830 (not c!1030769)) b!5815821))

(assert (= (and b!5815821 (not res!2452578)) b!5815824))

(assert (= (and b!5815824 res!2452579) b!5815819))

(assert (= (and b!5815819 res!2452583) b!5815826))

(assert (= (and b!5815826 res!2452581) b!5815828))

(assert (= (and b!5815824 (not res!2452582)) b!5815822))

(assert (= (and b!5815822 res!2452577) b!5815825))

(assert (= (and b!5815825 (not res!2452584)) b!5815823))

(assert (= (and b!5815823 (not res!2452580)) b!5815818))

(assert (= (or b!5815817 b!5815819 b!5815825) bm!454240))

(declare-fun m!6753438 () Bool)

(assert (=> b!5815827 m!6753438))

(assert (=> b!5815827 m!6753438))

(declare-fun m!6753440 () Bool)

(assert (=> b!5815827 m!6753440))

(declare-fun m!6753442 () Bool)

(assert (=> b!5815827 m!6753442))

(assert (=> b!5815827 m!6753440))

(assert (=> b!5815827 m!6753442))

(declare-fun m!6753444 () Bool)

(assert (=> b!5815827 m!6753444))

(declare-fun m!6753446 () Bool)

(assert (=> d!1831080 m!6753446))

(assert (=> d!1831080 m!6753366))

(assert (=> b!5815818 m!6753438))

(assert (=> bm!454240 m!6753446))

(assert (=> b!5815828 m!6753438))

(declare-fun m!6753448 () Bool)

(assert (=> b!5815820 m!6753448))

(assert (=> b!5815826 m!6753442))

(assert (=> b!5815826 m!6753442))

(declare-fun m!6753450 () Bool)

(assert (=> b!5815826 m!6753450))

(assert (=> b!5815823 m!6753442))

(assert (=> b!5815823 m!6753442))

(assert (=> b!5815823 m!6753450))

(assert (=> b!5815688 d!1831080))

(declare-fun b!5815865 () Bool)

(assert (=> b!5815865 true))

(assert (=> b!5815865 true))

(declare-fun bs!1372750 () Bool)

(declare-fun b!5815866 () Bool)

(assert (= bs!1372750 (and b!5815866 b!5815865)))

(declare-fun lambda!318021 () Int)

(declare-fun lambda!318020 () Int)

(assert (=> bs!1372750 (not (= lambda!318021 lambda!318020))))

(assert (=> b!5815866 true))

(assert (=> b!5815866 true))

(declare-fun b!5815863 () Bool)

(declare-fun e!3569537 () Bool)

(assert (=> b!5815863 (= e!3569537 (matchRSpec!2940 (regTwo!32187 r!7292) s!2326))))

(declare-fun b!5815864 () Bool)

(declare-fun e!3569536 () Bool)

(declare-fun e!3569534 () Bool)

(assert (=> b!5815864 (= e!3569536 e!3569534)))

(declare-fun c!1030781 () Bool)

(assert (=> b!5815864 (= c!1030781 ((_ is Star!15837) r!7292))))

(declare-fun bm!454245 () Bool)

(declare-fun call!454250 () Bool)

(declare-fun Exists!2936 (Int) Bool)

(assert (=> bm!454245 (= call!454250 (Exists!2936 (ite c!1030781 lambda!318020 lambda!318021)))))

(declare-fun e!3569532 () Bool)

(assert (=> b!5815865 (= e!3569532 call!454250)))

(assert (=> b!5815866 (= e!3569534 call!454250)))

(declare-fun b!5815867 () Bool)

(assert (=> b!5815867 (= e!3569536 e!3569537)))

(declare-fun res!2452601 () Bool)

(assert (=> b!5815867 (= res!2452601 (matchRSpec!2940 (regOne!32187 r!7292) s!2326))))

(assert (=> b!5815867 (=> res!2452601 e!3569537)))

(declare-fun b!5815869 () Bool)

(declare-fun e!3569531 () Bool)

(assert (=> b!5815869 (= e!3569531 (= s!2326 (Cons!63688 (c!1030737 r!7292) Nil!63688)))))

(declare-fun b!5815870 () Bool)

(declare-fun e!3569533 () Bool)

(declare-fun call!454251 () Bool)

(assert (=> b!5815870 (= e!3569533 call!454251)))

(declare-fun bm!454246 () Bool)

(assert (=> bm!454246 (= call!454251 (isEmpty!35608 s!2326))))

(declare-fun d!1831082 () Bool)

(declare-fun c!1030779 () Bool)

(assert (=> d!1831082 (= c!1030779 ((_ is EmptyExpr!15837) r!7292))))

(assert (=> d!1831082 (= (matchRSpec!2940 r!7292 s!2326) e!3569533)))

(declare-fun b!5815868 () Bool)

(declare-fun c!1030780 () Bool)

(assert (=> b!5815868 (= c!1030780 ((_ is ElementMatch!15837) r!7292))))

(declare-fun e!3569535 () Bool)

(assert (=> b!5815868 (= e!3569535 e!3569531)))

(declare-fun b!5815871 () Bool)

(assert (=> b!5815871 (= e!3569533 e!3569535)))

(declare-fun res!2452603 () Bool)

(assert (=> b!5815871 (= res!2452603 (not ((_ is EmptyLang!15837) r!7292)))))

(assert (=> b!5815871 (=> (not res!2452603) (not e!3569535))))

(declare-fun b!5815872 () Bool)

(declare-fun res!2452602 () Bool)

(assert (=> b!5815872 (=> res!2452602 e!3569532)))

(assert (=> b!5815872 (= res!2452602 call!454251)))

(assert (=> b!5815872 (= e!3569534 e!3569532)))

(declare-fun b!5815873 () Bool)

(declare-fun c!1030782 () Bool)

(assert (=> b!5815873 (= c!1030782 ((_ is Union!15837) r!7292))))

(assert (=> b!5815873 (= e!3569531 e!3569536)))

(assert (= (and d!1831082 c!1030779) b!5815870))

(assert (= (and d!1831082 (not c!1030779)) b!5815871))

(assert (= (and b!5815871 res!2452603) b!5815868))

(assert (= (and b!5815868 c!1030780) b!5815869))

(assert (= (and b!5815868 (not c!1030780)) b!5815873))

(assert (= (and b!5815873 c!1030782) b!5815867))

(assert (= (and b!5815873 (not c!1030782)) b!5815864))

(assert (= (and b!5815867 (not res!2452601)) b!5815863))

(assert (= (and b!5815864 c!1030781) b!5815872))

(assert (= (and b!5815864 (not c!1030781)) b!5815866))

(assert (= (and b!5815872 (not res!2452602)) b!5815865))

(assert (= (or b!5815865 b!5815866) bm!454245))

(assert (= (or b!5815870 b!5815872) bm!454246))

(declare-fun m!6753452 () Bool)

(assert (=> b!5815863 m!6753452))

(declare-fun m!6753454 () Bool)

(assert (=> bm!454245 m!6753454))

(declare-fun m!6753456 () Bool)

(assert (=> b!5815867 m!6753456))

(assert (=> bm!454246 m!6753446))

(assert (=> b!5815688 d!1831082))

(declare-fun d!1831084 () Bool)

(assert (=> d!1831084 (= (matchR!8022 r!7292 s!2326) (matchRSpec!2940 r!7292 s!2326))))

(declare-fun lt!2301378 () Unit!156934)

(declare-fun choose!44204 (Regex!15837 List!63812) Unit!156934)

(assert (=> d!1831084 (= lt!2301378 (choose!44204 r!7292 s!2326))))

(assert (=> d!1831084 (validRegex!7573 r!7292)))

(assert (=> d!1831084 (= (mainMatchTheorem!2940 r!7292 s!2326) lt!2301378)))

(declare-fun bs!1372751 () Bool)

(assert (= bs!1372751 d!1831084))

(assert (=> bs!1372751 m!6753374))

(assert (=> bs!1372751 m!6753376))

(declare-fun m!6753458 () Bool)

(assert (=> bs!1372751 m!6753458))

(assert (=> bs!1372751 m!6753366))

(assert (=> b!5815688 d!1831084))

(declare-fun b!5815882 () Bool)

(declare-fun e!3569540 () Bool)

(declare-fun tp!1604497 () Bool)

(declare-fun tp!1604498 () Bool)

(assert (=> b!5815882 (= e!3569540 (and tp!1604497 tp!1604498))))

(assert (=> b!5815694 (= tp!1604488 e!3569540)))

(assert (= (and b!5815694 ((_ is Cons!63686) (exprs!5721 (h!70135 zl!343)))) b!5815882))

(declare-fun b!5815892 () Bool)

(declare-fun e!3569546 () Bool)

(declare-fun tp!1604503 () Bool)

(assert (=> b!5815892 (= e!3569546 tp!1604503)))

(declare-fun tp!1604504 () Bool)

(declare-fun b!5815891 () Bool)

(declare-fun e!3569545 () Bool)

(assert (=> b!5815891 (= e!3569545 (and (inv!82839 (h!70135 (t!377166 zl!343))) e!3569546 tp!1604504))))

(assert (=> b!5815685 (= tp!1604490 e!3569545)))

(assert (= b!5815891 b!5815892))

(assert (= (and b!5815685 ((_ is Cons!63687) (t!377166 zl!343))) b!5815891))

(declare-fun m!6753460 () Bool)

(assert (=> b!5815891 m!6753460))

(declare-fun condSetEmpty!39193 () Bool)

(assert (=> setNonEmpty!39190 (= condSetEmpty!39193 (= setRest!39190 ((as const (Array Context!10442 Bool)) false)))))

(declare-fun setRes!39193 () Bool)

(assert (=> setNonEmpty!39190 (= tp!1604487 setRes!39193)))

(declare-fun setIsEmpty!39193 () Bool)

(assert (=> setIsEmpty!39193 setRes!39193))

(declare-fun tp!1604510 () Bool)

(declare-fun setElem!39193 () Context!10442)

(declare-fun e!3569561 () Bool)

(declare-fun setNonEmpty!39193 () Bool)

(assert (=> setNonEmpty!39193 (= setRes!39193 (and tp!1604510 (inv!82839 setElem!39193) e!3569561))))

(declare-fun setRest!39193 () (InoxSet Context!10442))

(assert (=> setNonEmpty!39193 (= setRest!39190 ((_ map or) (store ((as const (Array Context!10442 Bool)) false) setElem!39193 true) setRest!39193))))

(declare-fun b!5815915 () Bool)

(declare-fun tp!1604509 () Bool)

(assert (=> b!5815915 (= e!3569561 tp!1604509)))

(assert (= (and setNonEmpty!39190 condSetEmpty!39193) setIsEmpty!39193))

(assert (= (and setNonEmpty!39190 (not condSetEmpty!39193)) setNonEmpty!39193))

(assert (= setNonEmpty!39193 b!5815915))

(declare-fun m!6753462 () Bool)

(assert (=> setNonEmpty!39193 m!6753462))

(declare-fun b!5815916 () Bool)

(declare-fun e!3569562 () Bool)

(declare-fun tp!1604511 () Bool)

(declare-fun tp!1604512 () Bool)

(assert (=> b!5815916 (= e!3569562 (and tp!1604511 tp!1604512))))

(assert (=> b!5815686 (= tp!1604485 e!3569562)))

(assert (= (and b!5815686 ((_ is Cons!63686) (exprs!5721 setElem!39190))) b!5815916))

(declare-fun e!3569565 () Bool)

(assert (=> b!5815697 (= tp!1604492 e!3569565)))

(declare-fun b!5815929 () Bool)

(declare-fun tp!1604523 () Bool)

(assert (=> b!5815929 (= e!3569565 tp!1604523)))

(declare-fun b!5815927 () Bool)

(assert (=> b!5815927 (= e!3569565 tp_is_empty!40927)))

(declare-fun b!5815930 () Bool)

(declare-fun tp!1604525 () Bool)

(declare-fun tp!1604527 () Bool)

(assert (=> b!5815930 (= e!3569565 (and tp!1604525 tp!1604527))))

(declare-fun b!5815928 () Bool)

(declare-fun tp!1604526 () Bool)

(declare-fun tp!1604524 () Bool)

(assert (=> b!5815928 (= e!3569565 (and tp!1604526 tp!1604524))))

(assert (= (and b!5815697 ((_ is ElementMatch!15837) (reg!16166 r!7292))) b!5815927))

(assert (= (and b!5815697 ((_ is Concat!24682) (reg!16166 r!7292))) b!5815928))

(assert (= (and b!5815697 ((_ is Star!15837) (reg!16166 r!7292))) b!5815929))

(assert (= (and b!5815697 ((_ is Union!15837) (reg!16166 r!7292))) b!5815930))

(declare-fun e!3569566 () Bool)

(assert (=> b!5815696 (= tp!1604491 e!3569566)))

(declare-fun b!5815933 () Bool)

(declare-fun tp!1604528 () Bool)

(assert (=> b!5815933 (= e!3569566 tp!1604528)))

(declare-fun b!5815931 () Bool)

(assert (=> b!5815931 (= e!3569566 tp_is_empty!40927)))

(declare-fun b!5815934 () Bool)

(declare-fun tp!1604530 () Bool)

(declare-fun tp!1604532 () Bool)

(assert (=> b!5815934 (= e!3569566 (and tp!1604530 tp!1604532))))

(declare-fun b!5815932 () Bool)

(declare-fun tp!1604531 () Bool)

(declare-fun tp!1604529 () Bool)

(assert (=> b!5815932 (= e!3569566 (and tp!1604531 tp!1604529))))

(assert (= (and b!5815696 ((_ is ElementMatch!15837) (regOne!32186 r!7292))) b!5815931))

(assert (= (and b!5815696 ((_ is Concat!24682) (regOne!32186 r!7292))) b!5815932))

(assert (= (and b!5815696 ((_ is Star!15837) (regOne!32186 r!7292))) b!5815933))

(assert (= (and b!5815696 ((_ is Union!15837) (regOne!32186 r!7292))) b!5815934))

(declare-fun e!3569567 () Bool)

(assert (=> b!5815696 (= tp!1604484 e!3569567)))

(declare-fun b!5815937 () Bool)

(declare-fun tp!1604533 () Bool)

(assert (=> b!5815937 (= e!3569567 tp!1604533)))

(declare-fun b!5815935 () Bool)

(assert (=> b!5815935 (= e!3569567 tp_is_empty!40927)))

(declare-fun b!5815938 () Bool)

(declare-fun tp!1604535 () Bool)

(declare-fun tp!1604537 () Bool)

(assert (=> b!5815938 (= e!3569567 (and tp!1604535 tp!1604537))))

(declare-fun b!5815936 () Bool)

(declare-fun tp!1604536 () Bool)

(declare-fun tp!1604534 () Bool)

(assert (=> b!5815936 (= e!3569567 (and tp!1604536 tp!1604534))))

(assert (= (and b!5815696 ((_ is ElementMatch!15837) (regTwo!32186 r!7292))) b!5815935))

(assert (= (and b!5815696 ((_ is Concat!24682) (regTwo!32186 r!7292))) b!5815936))

(assert (= (and b!5815696 ((_ is Star!15837) (regTwo!32186 r!7292))) b!5815937))

(assert (= (and b!5815696 ((_ is Union!15837) (regTwo!32186 r!7292))) b!5815938))

(declare-fun b!5815943 () Bool)

(declare-fun e!3569570 () Bool)

(declare-fun tp!1604540 () Bool)

(assert (=> b!5815943 (= e!3569570 (and tp_is_empty!40927 tp!1604540))))

(assert (=> b!5815698 (= tp!1604489 e!3569570)))

(assert (= (and b!5815698 ((_ is Cons!63688) (t!377167 s!2326))) b!5815943))

(declare-fun e!3569571 () Bool)

(assert (=> b!5815693 (= tp!1604483 e!3569571)))

(declare-fun b!5815946 () Bool)

(declare-fun tp!1604541 () Bool)

(assert (=> b!5815946 (= e!3569571 tp!1604541)))

(declare-fun b!5815944 () Bool)

(assert (=> b!5815944 (= e!3569571 tp_is_empty!40927)))

(declare-fun b!5815947 () Bool)

(declare-fun tp!1604543 () Bool)

(declare-fun tp!1604545 () Bool)

(assert (=> b!5815947 (= e!3569571 (and tp!1604543 tp!1604545))))

(declare-fun b!5815945 () Bool)

(declare-fun tp!1604544 () Bool)

(declare-fun tp!1604542 () Bool)

(assert (=> b!5815945 (= e!3569571 (and tp!1604544 tp!1604542))))

(assert (= (and b!5815693 ((_ is ElementMatch!15837) (regOne!32187 r!7292))) b!5815944))

(assert (= (and b!5815693 ((_ is Concat!24682) (regOne!32187 r!7292))) b!5815945))

(assert (= (and b!5815693 ((_ is Star!15837) (regOne!32187 r!7292))) b!5815946))

(assert (= (and b!5815693 ((_ is Union!15837) (regOne!32187 r!7292))) b!5815947))

(declare-fun e!3569572 () Bool)

(assert (=> b!5815693 (= tp!1604486 e!3569572)))

(declare-fun b!5815950 () Bool)

(declare-fun tp!1604546 () Bool)

(assert (=> b!5815950 (= e!3569572 tp!1604546)))

(declare-fun b!5815948 () Bool)

(assert (=> b!5815948 (= e!3569572 tp_is_empty!40927)))

(declare-fun b!5815951 () Bool)

(declare-fun tp!1604548 () Bool)

(declare-fun tp!1604550 () Bool)

(assert (=> b!5815951 (= e!3569572 (and tp!1604548 tp!1604550))))

(declare-fun b!5815949 () Bool)

(declare-fun tp!1604549 () Bool)

(declare-fun tp!1604547 () Bool)

(assert (=> b!5815949 (= e!3569572 (and tp!1604549 tp!1604547))))

(assert (= (and b!5815693 ((_ is ElementMatch!15837) (regTwo!32187 r!7292))) b!5815948))

(assert (= (and b!5815693 ((_ is Concat!24682) (regTwo!32187 r!7292))) b!5815949))

(assert (= (and b!5815693 ((_ is Star!15837) (regTwo!32187 r!7292))) b!5815950))

(assert (= (and b!5815693 ((_ is Union!15837) (regTwo!32187 r!7292))) b!5815951))

(check-sat (not b!5815826) (not b!5815951) (not b!5815823) (not bm!454236) (not b!5815930) (not b!5815755) (not b!5815753) (not setNonEmpty!39193) (not bm!454235) (not b!5815818) (not b!5815828) (not b!5815760) (not b!5815758) (not d!1831060) (not d!1831080) (not b!5815943) (not b!5815936) (not b!5815892) (not b!5815915) (not d!1831058) (not b!5815820) (not b!5815929) (not d!1831064) (not b!5815950) (not b!5815937) (not b!5815882) (not d!1831072) (not b!5815947) (not b!5815756) (not b!5815701) (not bm!454245) (not b!5815783) tp_is_empty!40927 (not b!5815949) (not b!5815891) (not b!5815946) (not d!1831084) (not b!5815945) (not d!1831074) (not b!5815867) (not b!5815752) (not b!5815827) (not b!5815938) (not bm!454246) (not b!5815863) (not b!5815759) (not b!5815916) (not bm!454240) (not b!5815928) (not b!5815933) (not b!5815934) (not b!5815932))
(check-sat)

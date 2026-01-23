; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661840 () Bool)

(assert start!661840)

(declare-fun b!6856039 () Bool)

(assert (=> b!6856039 true))

(declare-fun b!6856019 () Bool)

(assert (=> b!6856019 true))

(declare-fun b!6856018 () Bool)

(declare-fun e!4133742 () Bool)

(declare-fun tp!1880095 () Bool)

(assert (=> b!6856018 (= e!4133742 tp!1880095)))

(declare-fun e!4133744 () Bool)

(declare-fun e!4133741 () Bool)

(assert (=> b!6856019 (= e!4133744 e!4133741)))

(declare-fun res!2797722 () Bool)

(assert (=> b!6856019 (=> res!2797722 e!4133741)))

(declare-datatypes ((C!33632 0))(
  ( (C!33633 (val!26518 Int)) )
))
(declare-datatypes ((Regex!16681 0))(
  ( (ElementMatch!16681 (c!1276127 C!33632)) (Concat!25526 (regOne!33874 Regex!16681) (regTwo!33874 Regex!16681)) (EmptyExpr!16681) (Star!16681 (reg!17010 Regex!16681)) (EmptyLang!16681) (Union!16681 (regOne!33875 Regex!16681) (regTwo!33875 Regex!16681)) )
))
(declare-datatypes ((List!66342 0))(
  ( (Nil!66218) (Cons!66218 (h!72666 Regex!16681) (t!380085 List!66342)) )
))
(declare-datatypes ((Context!12130 0))(
  ( (Context!12131 (exprs!6565 List!66342)) )
))
(declare-datatypes ((List!66343 0))(
  ( (Nil!66219) (Cons!66219 (h!72667 Context!12130) (t!380086 List!66343)) )
))
(declare-fun zl!343 () List!66343)

(declare-fun lambda!387559 () Int)

(declare-fun exists!2788 (List!66343 Int) Bool)

(assert (=> b!6856019 (= res!2797722 (not (exists!2788 zl!343 lambda!387559)))))

(assert (=> b!6856019 (exists!2788 zl!343 lambda!387559)))

(declare-datatypes ((Unit!160101 0))(
  ( (Unit!160102) )
))
(declare-fun lt!2456627 () Unit!160101)

(declare-fun lt!2456625 () Regex!16681)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!36 (List!66343 Regex!16681) Unit!160101)

(assert (=> b!6856019 (= lt!2456627 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!36 zl!343 lt!2456625))))

(declare-fun res!2797729 () Bool)

(declare-fun e!4133745 () Bool)

(assert (=> start!661840 (=> (not res!2797729) (not e!4133745))))

(declare-fun r!7292 () Regex!16681)

(declare-fun validRegex!8417 (Regex!16681) Bool)

(assert (=> start!661840 (= res!2797729 (validRegex!8417 r!7292))))

(assert (=> start!661840 e!4133745))

(declare-fun e!4133736 () Bool)

(assert (=> start!661840 e!4133736))

(declare-fun condSetEmpty!47119 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12130))

(assert (=> start!661840 (= condSetEmpty!47119 (= z!1189 ((as const (Array Context!12130 Bool)) false)))))

(declare-fun setRes!47119 () Bool)

(assert (=> start!661840 setRes!47119))

(declare-fun e!4133746 () Bool)

(assert (=> start!661840 e!4133746))

(declare-fun e!4133740 () Bool)

(assert (=> start!661840 e!4133740))

(declare-fun b!6856020 () Bool)

(declare-fun res!2797725 () Bool)

(assert (=> b!6856020 (=> (not res!2797725) (not e!4133745))))

(declare-fun toList!10465 ((InoxSet Context!12130)) List!66343)

(assert (=> b!6856020 (= res!2797725 (= (toList!10465 z!1189) zl!343))))

(declare-fun b!6856021 () Bool)

(declare-fun e!4133735 () Bool)

(assert (=> b!6856021 (= e!4133735 e!4133744)))

(declare-fun res!2797726 () Bool)

(assert (=> b!6856021 (=> res!2797726 e!4133744)))

(declare-fun lt!2456629 () List!66342)

(declare-fun contains!20335 (List!66342 Regex!16681) Bool)

(assert (=> b!6856021 (= res!2797726 (not (contains!20335 lt!2456629 lt!2456625)))))

(declare-fun lambda!387558 () Int)

(declare-fun getWitness!957 (List!66342 Int) Regex!16681)

(assert (=> b!6856021 (= lt!2456625 (getWitness!957 lt!2456629 lambda!387558))))

(declare-fun b!6856022 () Bool)

(declare-fun res!2797724 () Bool)

(assert (=> b!6856022 (=> res!2797724 e!4133744)))

(assert (=> b!6856022 (= res!2797724 (not (validRegex!8417 lt!2456625)))))

(declare-fun setIsEmpty!47119 () Bool)

(assert (=> setIsEmpty!47119 setRes!47119))

(declare-fun b!6856023 () Bool)

(declare-fun e!4133737 () Bool)

(assert (=> b!6856023 (= e!4133745 (not e!4133737))))

(declare-fun res!2797723 () Bool)

(assert (=> b!6856023 (=> res!2797723 e!4133737)))

(declare-fun e!4133743 () Bool)

(assert (=> b!6856023 (= res!2797723 e!4133743)))

(declare-fun res!2797733 () Bool)

(assert (=> b!6856023 (=> (not res!2797733) (not e!4133743))))

(get-info :version)

(assert (=> b!6856023 (= res!2797733 ((_ is Cons!66219) zl!343))))

(declare-fun lt!2456622 () Bool)

(declare-datatypes ((List!66344 0))(
  ( (Nil!66220) (Cons!66220 (h!72668 C!33632) (t!380087 List!66344)) )
))
(declare-fun s!2326 () List!66344)

(declare-fun matchRSpec!3782 (Regex!16681 List!66344) Bool)

(assert (=> b!6856023 (= lt!2456622 (matchRSpec!3782 r!7292 s!2326))))

(declare-fun matchR!8864 (Regex!16681 List!66344) Bool)

(assert (=> b!6856023 (= lt!2456622 (matchR!8864 r!7292 s!2326))))

(declare-fun lt!2456624 () Unit!160101)

(declare-fun mainMatchTheorem!3782 (Regex!16681 List!66344) Unit!160101)

(assert (=> b!6856023 (= lt!2456624 (mainMatchTheorem!3782 r!7292 s!2326))))

(declare-fun b!6856024 () Bool)

(declare-fun res!2797732 () Bool)

(assert (=> b!6856024 (=> res!2797732 e!4133735)))

(declare-fun exists!2789 (List!66342 Int) Bool)

(assert (=> b!6856024 (= res!2797732 (not (exists!2789 lt!2456629 lambda!387558)))))

(declare-fun b!6856025 () Bool)

(declare-fun e!4133738 () Bool)

(assert (=> b!6856025 (= e!4133741 e!4133738)))

(declare-fun res!2797721 () Bool)

(assert (=> b!6856025 (=> res!2797721 e!4133738)))

(declare-fun lt!2456634 () Int)

(declare-fun lt!2456632 () List!66343)

(declare-fun zipperDepthTotal!436 (List!66343) Int)

(assert (=> b!6856025 (= res!2797721 (<= lt!2456634 (zipperDepthTotal!436 lt!2456632)))))

(declare-fun lt!2456633 () Context!12130)

(assert (=> b!6856025 (= lt!2456632 (Cons!66219 lt!2456633 Nil!66219))))

(declare-fun lt!2456626 () Int)

(assert (=> b!6856025 (< lt!2456626 lt!2456634)))

(assert (=> b!6856025 (= lt!2456634 (zipperDepthTotal!436 zl!343))))

(declare-fun contextDepthTotal!408 (Context!12130) Int)

(assert (=> b!6856025 (= lt!2456626 (contextDepthTotal!408 lt!2456633))))

(declare-fun lt!2456630 () Unit!160101)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!40 (List!66343 Context!12130) Unit!160101)

(assert (=> b!6856025 (= lt!2456630 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!40 zl!343 lt!2456633))))

(declare-fun getWitness!958 (List!66343 Int) Context!12130)

(assert (=> b!6856025 (= lt!2456633 (getWitness!958 zl!343 lambda!387559))))

(declare-fun b!6856026 () Bool)

(declare-fun tp!1880094 () Bool)

(declare-fun tp!1880090 () Bool)

(assert (=> b!6856026 (= e!4133736 (and tp!1880094 tp!1880090))))

(declare-fun b!6856027 () Bool)

(declare-fun tp!1880091 () Bool)

(assert (=> b!6856027 (= e!4133736 tp!1880091)))

(declare-fun b!6856028 () Bool)

(declare-fun isEmpty!38585 (List!66343) Bool)

(assert (=> b!6856028 (= e!4133743 (isEmpty!38585 (t!380086 zl!343)))))

(declare-fun b!6856029 () Bool)

(declare-fun tp_is_empty!42615 () Bool)

(declare-fun tp!1880093 () Bool)

(assert (=> b!6856029 (= e!4133740 (and tp_is_empty!42615 tp!1880093))))

(declare-fun b!6856030 () Bool)

(declare-fun res!2797728 () Bool)

(assert (=> b!6856030 (=> (not res!2797728) (not e!4133745))))

(declare-fun unfocusZipper!2423 (List!66343) Regex!16681)

(assert (=> b!6856030 (= res!2797728 (= r!7292 (unfocusZipper!2423 zl!343)))))

(declare-fun b!6856031 () Bool)

(declare-fun res!2797727 () Bool)

(assert (=> b!6856031 (=> res!2797727 e!4133737)))

(assert (=> b!6856031 (= res!2797727 (isEmpty!38585 (t!380086 zl!343)))))

(declare-fun b!6856032 () Bool)

(declare-fun res!2797731 () Bool)

(assert (=> b!6856032 (=> res!2797731 e!4133744)))

(assert (=> b!6856032 (= res!2797731 (not (matchR!8864 lt!2456625 s!2326)))))

(declare-fun b!6856033 () Bool)

(declare-fun tp!1880092 () Bool)

(declare-fun tp!1880086 () Bool)

(assert (=> b!6856033 (= e!4133736 (and tp!1880092 tp!1880086))))

(declare-fun b!6856034 () Bool)

(declare-fun tp!1880088 () Bool)

(declare-fun inv!84949 (Context!12130) Bool)

(assert (=> b!6856034 (= e!4133746 (and (inv!84949 (h!72667 zl!343)) e!4133742 tp!1880088))))

(declare-fun b!6856035 () Bool)

(assert (=> b!6856035 (= e!4133736 tp_is_empty!42615)))

(declare-fun b!6856036 () Bool)

(assert (=> b!6856036 (= e!4133738 (select z!1189 lt!2456633))))

(declare-fun lt!2456623 () (InoxSet Context!12130))

(declare-fun matchZipper!2647 ((InoxSet Context!12130) List!66344) Bool)

(assert (=> b!6856036 (matchZipper!2647 lt!2456623 s!2326)))

(declare-fun lt!2456628 () Unit!160101)

(declare-fun theoremZipperRegexEquiv!957 ((InoxSet Context!12130) List!66343 Regex!16681 List!66344) Unit!160101)

(assert (=> b!6856036 (= lt!2456628 (theoremZipperRegexEquiv!957 lt!2456623 lt!2456632 lt!2456625 s!2326))))

(assert (=> b!6856036 (= lt!2456623 (store ((as const (Array Context!12130 Bool)) false) lt!2456633 true))))

(declare-fun b!6856037 () Bool)

(declare-fun e!4133739 () Bool)

(declare-fun tp!1880087 () Bool)

(assert (=> b!6856037 (= e!4133739 tp!1880087)))

(declare-fun b!6856038 () Bool)

(declare-fun res!2797734 () Bool)

(assert (=> b!6856038 (=> res!2797734 e!4133737)))

(assert (=> b!6856038 (= res!2797734 (or (not ((_ is Cons!66219) zl!343)) ((_ is Nil!66220) s!2326) (not (= zl!343 (Cons!66219 (h!72667 zl!343) (t!380086 zl!343))))))))

(assert (=> b!6856039 (= e!4133737 e!4133735)))

(declare-fun res!2797730 () Bool)

(assert (=> b!6856039 (=> res!2797730 e!4133735)))

(assert (=> b!6856039 (= res!2797730 (not lt!2456622))))

(assert (=> b!6856039 (= lt!2456622 (exists!2789 lt!2456629 lambda!387558))))

(declare-fun lt!2456631 () Unit!160101)

(declare-fun matchRGenUnionSpec!320 (Regex!16681 List!66342 List!66344) Unit!160101)

(assert (=> b!6856039 (= lt!2456631 (matchRGenUnionSpec!320 r!7292 lt!2456629 s!2326))))

(declare-fun unfocusZipperList!2098 (List!66343) List!66342)

(assert (=> b!6856039 (= lt!2456629 (unfocusZipperList!2098 zl!343))))

(declare-fun setNonEmpty!47119 () Bool)

(declare-fun setElem!47119 () Context!12130)

(declare-fun tp!1880089 () Bool)

(assert (=> setNonEmpty!47119 (= setRes!47119 (and tp!1880089 (inv!84949 setElem!47119) e!4133739))))

(declare-fun setRest!47119 () (InoxSet Context!12130))

(assert (=> setNonEmpty!47119 (= z!1189 ((_ map or) (store ((as const (Array Context!12130 Bool)) false) setElem!47119 true) setRest!47119))))

(assert (= (and start!661840 res!2797729) b!6856020))

(assert (= (and b!6856020 res!2797725) b!6856030))

(assert (= (and b!6856030 res!2797728) b!6856023))

(assert (= (and b!6856023 res!2797733) b!6856028))

(assert (= (and b!6856023 (not res!2797723)) b!6856038))

(assert (= (and b!6856038 (not res!2797734)) b!6856031))

(assert (= (and b!6856031 (not res!2797727)) b!6856039))

(assert (= (and b!6856039 (not res!2797730)) b!6856024))

(assert (= (and b!6856024 (not res!2797732)) b!6856021))

(assert (= (and b!6856021 (not res!2797726)) b!6856022))

(assert (= (and b!6856022 (not res!2797724)) b!6856032))

(assert (= (and b!6856032 (not res!2797731)) b!6856019))

(assert (= (and b!6856019 (not res!2797722)) b!6856025))

(assert (= (and b!6856025 (not res!2797721)) b!6856036))

(assert (= (and start!661840 ((_ is ElementMatch!16681) r!7292)) b!6856035))

(assert (= (and start!661840 ((_ is Concat!25526) r!7292)) b!6856033))

(assert (= (and start!661840 ((_ is Star!16681) r!7292)) b!6856027))

(assert (= (and start!661840 ((_ is Union!16681) r!7292)) b!6856026))

(assert (= (and start!661840 condSetEmpty!47119) setIsEmpty!47119))

(assert (= (and start!661840 (not condSetEmpty!47119)) setNonEmpty!47119))

(assert (= setNonEmpty!47119 b!6856037))

(assert (= b!6856034 b!6856018))

(assert (= (and start!661840 ((_ is Cons!66219) zl!343)) b!6856034))

(assert (= (and start!661840 ((_ is Cons!66220) s!2326)) b!6856029))

(declare-fun m!7592498 () Bool)

(assert (=> b!6856022 m!7592498))

(declare-fun m!7592500 () Bool)

(assert (=> b!6856021 m!7592500))

(declare-fun m!7592502 () Bool)

(assert (=> b!6856021 m!7592502))

(declare-fun m!7592504 () Bool)

(assert (=> b!6856024 m!7592504))

(declare-fun m!7592506 () Bool)

(assert (=> b!6856019 m!7592506))

(assert (=> b!6856019 m!7592506))

(declare-fun m!7592508 () Bool)

(assert (=> b!6856019 m!7592508))

(declare-fun m!7592510 () Bool)

(assert (=> start!661840 m!7592510))

(declare-fun m!7592512 () Bool)

(assert (=> b!6856030 m!7592512))

(declare-fun m!7592514 () Bool)

(assert (=> b!6856020 m!7592514))

(declare-fun m!7592516 () Bool)

(assert (=> b!6856031 m!7592516))

(declare-fun m!7592518 () Bool)

(assert (=> b!6856032 m!7592518))

(declare-fun m!7592520 () Bool)

(assert (=> setNonEmpty!47119 m!7592520))

(declare-fun m!7592522 () Bool)

(assert (=> b!6856034 m!7592522))

(declare-fun m!7592524 () Bool)

(assert (=> b!6856023 m!7592524))

(declare-fun m!7592526 () Bool)

(assert (=> b!6856023 m!7592526))

(declare-fun m!7592528 () Bool)

(assert (=> b!6856023 m!7592528))

(declare-fun m!7592530 () Bool)

(assert (=> b!6856025 m!7592530))

(declare-fun m!7592532 () Bool)

(assert (=> b!6856025 m!7592532))

(declare-fun m!7592534 () Bool)

(assert (=> b!6856025 m!7592534))

(declare-fun m!7592536 () Bool)

(assert (=> b!6856025 m!7592536))

(declare-fun m!7592538 () Bool)

(assert (=> b!6856025 m!7592538))

(assert (=> b!6856039 m!7592504))

(declare-fun m!7592540 () Bool)

(assert (=> b!6856039 m!7592540))

(declare-fun m!7592542 () Bool)

(assert (=> b!6856039 m!7592542))

(assert (=> b!6856028 m!7592516))

(declare-fun m!7592544 () Bool)

(assert (=> b!6856036 m!7592544))

(declare-fun m!7592546 () Bool)

(assert (=> b!6856036 m!7592546))

(declare-fun m!7592548 () Bool)

(assert (=> b!6856036 m!7592548))

(declare-fun m!7592550 () Bool)

(assert (=> b!6856036 m!7592550))

(check-sat (not b!6856026) (not start!661840) (not setNonEmpty!47119) (not b!6856024) (not b!6856021) (not b!6856029) (not b!6856027) (not b!6856033) (not b!6856031) (not b!6856028) (not b!6856034) (not b!6856020) tp_is_empty!42615 (not b!6856018) (not b!6856037) (not b!6856039) (not b!6856032) (not b!6856023) (not b!6856036) (not b!6856030) (not b!6856022) (not b!6856025) (not b!6856019))
(check-sat)
(get-model)

(declare-fun bs!1832658 () Bool)

(declare-fun d!2154586 () Bool)

(assert (= bs!1832658 (and d!2154586 b!6856039)))

(declare-fun lambda!387562 () Int)

(assert (=> bs!1832658 (not (= lambda!387562 lambda!387558))))

(assert (=> d!2154586 true))

(declare-fun order!27665 () Int)

(declare-fun dynLambda!26469 (Int Int) Int)

(assert (=> d!2154586 (< (dynLambda!26469 order!27665 lambda!387558) (dynLambda!26469 order!27665 lambda!387562))))

(declare-fun forall!15860 (List!66342 Int) Bool)

(assert (=> d!2154586 (= (exists!2789 lt!2456629 lambda!387558) (not (forall!15860 lt!2456629 lambda!387562)))))

(declare-fun bs!1832659 () Bool)

(assert (= bs!1832659 d!2154586))

(declare-fun m!7592552 () Bool)

(assert (=> bs!1832659 m!7592552))

(assert (=> b!6856024 d!2154586))

(declare-fun d!2154588 () Bool)

(declare-fun c!1276132 () Bool)

(declare-fun isEmpty!38587 (List!66344) Bool)

(assert (=> d!2154588 (= c!1276132 (isEmpty!38587 s!2326))))

(declare-fun e!4133751 () Bool)

(assert (=> d!2154588 (= (matchZipper!2647 lt!2456623 s!2326) e!4133751)))

(declare-fun b!6856054 () Bool)

(declare-fun nullableZipper!2356 ((InoxSet Context!12130)) Bool)

(assert (=> b!6856054 (= e!4133751 (nullableZipper!2356 lt!2456623))))

(declare-fun b!6856055 () Bool)

(declare-fun derivationStepZipper!2603 ((InoxSet Context!12130) C!33632) (InoxSet Context!12130))

(declare-fun head!13738 (List!66344) C!33632)

(declare-fun tail!12812 (List!66344) List!66344)

(assert (=> b!6856055 (= e!4133751 (matchZipper!2647 (derivationStepZipper!2603 lt!2456623 (head!13738 s!2326)) (tail!12812 s!2326)))))

(assert (= (and d!2154588 c!1276132) b!6856054))

(assert (= (and d!2154588 (not c!1276132)) b!6856055))

(declare-fun m!7592556 () Bool)

(assert (=> d!2154588 m!7592556))

(declare-fun m!7592558 () Bool)

(assert (=> b!6856054 m!7592558))

(declare-fun m!7592560 () Bool)

(assert (=> b!6856055 m!7592560))

(assert (=> b!6856055 m!7592560))

(declare-fun m!7592562 () Bool)

(assert (=> b!6856055 m!7592562))

(declare-fun m!7592564 () Bool)

(assert (=> b!6856055 m!7592564))

(assert (=> b!6856055 m!7592562))

(assert (=> b!6856055 m!7592564))

(declare-fun m!7592566 () Bool)

(assert (=> b!6856055 m!7592566))

(assert (=> b!6856036 d!2154588))

(declare-fun d!2154594 () Bool)

(assert (=> d!2154594 (= (matchR!8864 lt!2456625 s!2326) (matchZipper!2647 lt!2456623 s!2326))))

(declare-fun lt!2456640 () Unit!160101)

(declare-fun choose!51069 ((InoxSet Context!12130) List!66343 Regex!16681 List!66344) Unit!160101)

(assert (=> d!2154594 (= lt!2456640 (choose!51069 lt!2456623 lt!2456632 lt!2456625 s!2326))))

(assert (=> d!2154594 (validRegex!8417 lt!2456625)))

(assert (=> d!2154594 (= (theoremZipperRegexEquiv!957 lt!2456623 lt!2456632 lt!2456625 s!2326) lt!2456640)))

(declare-fun bs!1832662 () Bool)

(assert (= bs!1832662 d!2154594))

(assert (=> bs!1832662 m!7592518))

(assert (=> bs!1832662 m!7592546))

(declare-fun m!7592582 () Bool)

(assert (=> bs!1832662 m!7592582))

(assert (=> bs!1832662 m!7592498))

(assert (=> b!6856036 d!2154594))

(declare-fun d!2154598 () Bool)

(declare-fun lt!2456643 () Int)

(assert (=> d!2154598 (>= lt!2456643 0)))

(declare-fun e!4133791 () Int)

(assert (=> d!2154598 (= lt!2456643 e!4133791)))

(declare-fun c!1276150 () Bool)

(assert (=> d!2154598 (= c!1276150 ((_ is Cons!66219) lt!2456632))))

(assert (=> d!2154598 (= (zipperDepthTotal!436 lt!2456632) lt!2456643)))

(declare-fun b!6856130 () Bool)

(assert (=> b!6856130 (= e!4133791 (+ (contextDepthTotal!408 (h!72667 lt!2456632)) (zipperDepthTotal!436 (t!380086 lt!2456632))))))

(declare-fun b!6856131 () Bool)

(assert (=> b!6856131 (= e!4133791 0)))

(assert (= (and d!2154598 c!1276150) b!6856130))

(assert (= (and d!2154598 (not c!1276150)) b!6856131))

(declare-fun m!7592584 () Bool)

(assert (=> b!6856130 m!7592584))

(declare-fun m!7592586 () Bool)

(assert (=> b!6856130 m!7592586))

(assert (=> b!6856025 d!2154598))

(declare-fun b!6856191 () Bool)

(declare-fun lt!2456652 () Unit!160101)

(declare-fun Unit!160105 () Unit!160101)

(assert (=> b!6856191 (= lt!2456652 Unit!160105)))

(assert (=> b!6856191 false))

(declare-fun e!4133829 () Context!12130)

(declare-fun head!13740 (List!66343) Context!12130)

(assert (=> b!6856191 (= e!4133829 (head!13740 zl!343))))

(declare-fun d!2154600 () Bool)

(declare-fun e!4133831 () Bool)

(assert (=> d!2154600 e!4133831))

(declare-fun res!2797801 () Bool)

(assert (=> d!2154600 (=> (not res!2797801) (not e!4133831))))

(declare-fun lt!2456653 () Context!12130)

(declare-fun dynLambda!26471 (Int Context!12130) Bool)

(assert (=> d!2154600 (= res!2797801 (dynLambda!26471 lambda!387559 lt!2456653))))

(declare-fun e!4133828 () Context!12130)

(assert (=> d!2154600 (= lt!2456653 e!4133828)))

(declare-fun c!1276167 () Bool)

(declare-fun e!4133830 () Bool)

(assert (=> d!2154600 (= c!1276167 e!4133830)))

(declare-fun res!2797800 () Bool)

(assert (=> d!2154600 (=> (not res!2797800) (not e!4133830))))

(assert (=> d!2154600 (= res!2797800 ((_ is Cons!66219) zl!343))))

(assert (=> d!2154600 (exists!2788 zl!343 lambda!387559)))

(assert (=> d!2154600 (= (getWitness!958 zl!343 lambda!387559) lt!2456653)))

(declare-fun b!6856192 () Bool)

(assert (=> b!6856192 (= e!4133828 e!4133829)))

(declare-fun c!1276166 () Bool)

(assert (=> b!6856192 (= c!1276166 ((_ is Cons!66219) zl!343))))

(declare-fun b!6856193 () Bool)

(assert (=> b!6856193 (= e!4133828 (h!72667 zl!343))))

(declare-fun b!6856194 () Bool)

(assert (=> b!6856194 (= e!4133830 (dynLambda!26471 lambda!387559 (h!72667 zl!343)))))

(declare-fun b!6856195 () Bool)

(declare-fun contains!20337 (List!66343 Context!12130) Bool)

(assert (=> b!6856195 (= e!4133831 (contains!20337 zl!343 lt!2456653))))

(declare-fun b!6856196 () Bool)

(assert (=> b!6856196 (= e!4133829 (getWitness!958 (t!380086 zl!343) lambda!387559))))

(assert (= (and d!2154600 res!2797800) b!6856194))

(assert (= (and d!2154600 c!1276167) b!6856193))

(assert (= (and d!2154600 (not c!1276167)) b!6856192))

(assert (= (and b!6856192 c!1276166) b!6856196))

(assert (= (and b!6856192 (not c!1276166)) b!6856191))

(assert (= (and d!2154600 res!2797801) b!6856195))

(declare-fun b_lambda!258955 () Bool)

(assert (=> (not b_lambda!258955) (not d!2154600)))

(declare-fun b_lambda!258957 () Bool)

(assert (=> (not b_lambda!258957) (not b!6856194)))

(declare-fun m!7592602 () Bool)

(assert (=> b!6856194 m!7592602))

(declare-fun m!7592604 () Bool)

(assert (=> b!6856195 m!7592604))

(declare-fun m!7592606 () Bool)

(assert (=> d!2154600 m!7592606))

(assert (=> d!2154600 m!7592506))

(declare-fun m!7592608 () Bool)

(assert (=> b!6856191 m!7592608))

(declare-fun m!7592610 () Bool)

(assert (=> b!6856196 m!7592610))

(assert (=> b!6856025 d!2154600))

(declare-fun d!2154610 () Bool)

(declare-fun lt!2456654 () Int)

(assert (=> d!2154610 (>= lt!2456654 0)))

(declare-fun e!4133839 () Int)

(assert (=> d!2154610 (= lt!2456654 e!4133839)))

(declare-fun c!1276170 () Bool)

(assert (=> d!2154610 (= c!1276170 ((_ is Cons!66219) zl!343))))

(assert (=> d!2154610 (= (zipperDepthTotal!436 zl!343) lt!2456654)))

(declare-fun b!6856206 () Bool)

(assert (=> b!6856206 (= e!4133839 (+ (contextDepthTotal!408 (h!72667 zl!343)) (zipperDepthTotal!436 (t!380086 zl!343))))))

(declare-fun b!6856207 () Bool)

(assert (=> b!6856207 (= e!4133839 0)))

(assert (= (and d!2154610 c!1276170) b!6856206))

(assert (= (and d!2154610 (not c!1276170)) b!6856207))

(declare-fun m!7592618 () Bool)

(assert (=> b!6856206 m!7592618))

(declare-fun m!7592620 () Bool)

(assert (=> b!6856206 m!7592620))

(assert (=> b!6856025 d!2154610))

(declare-fun d!2154614 () Bool)

(declare-fun lt!2456660 () Int)

(assert (=> d!2154614 (>= lt!2456660 0)))

(declare-fun e!4133844 () Int)

(assert (=> d!2154614 (= lt!2456660 e!4133844)))

(declare-fun c!1276176 () Bool)

(assert (=> d!2154614 (= c!1276176 ((_ is Cons!66218) (exprs!6565 lt!2456633)))))

(assert (=> d!2154614 (= (contextDepthTotal!408 lt!2456633) lt!2456660)))

(declare-fun b!6856218 () Bool)

(declare-fun regexDepthTotal!253 (Regex!16681) Int)

(assert (=> b!6856218 (= e!4133844 (+ (regexDepthTotal!253 (h!72666 (exprs!6565 lt!2456633))) (contextDepthTotal!408 (Context!12131 (t!380085 (exprs!6565 lt!2456633))))))))

(declare-fun b!6856219 () Bool)

(assert (=> b!6856219 (= e!4133844 1)))

(assert (= (and d!2154614 c!1276176) b!6856218))

(assert (= (and d!2154614 (not c!1276176)) b!6856219))

(declare-fun m!7592628 () Bool)

(assert (=> b!6856218 m!7592628))

(declare-fun m!7592630 () Bool)

(assert (=> b!6856218 m!7592630))

(assert (=> b!6856025 d!2154614))

(declare-fun d!2154620 () Bool)

(assert (=> d!2154620 (< (contextDepthTotal!408 lt!2456633) (zipperDepthTotal!436 zl!343))))

(declare-fun lt!2456665 () Unit!160101)

(declare-fun choose!51073 (List!66343 Context!12130) Unit!160101)

(assert (=> d!2154620 (= lt!2456665 (choose!51073 zl!343 lt!2456633))))

(assert (=> d!2154620 (contains!20337 zl!343 lt!2456633)))

(assert (=> d!2154620 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!40 zl!343 lt!2456633) lt!2456665)))

(declare-fun bs!1832669 () Bool)

(assert (= bs!1832669 d!2154620))

(assert (=> bs!1832669 m!7592530))

(assert (=> bs!1832669 m!7592532))

(declare-fun m!7592638 () Bool)

(assert (=> bs!1832669 m!7592638))

(declare-fun m!7592640 () Bool)

(assert (=> bs!1832669 m!7592640))

(assert (=> b!6856025 d!2154620))

(declare-fun b!6856309 () Bool)

(declare-fun e!4133902 () Bool)

(declare-fun lt!2456692 () Bool)

(declare-fun call!624552 () Bool)

(assert (=> b!6856309 (= e!4133902 (= lt!2456692 call!624552))))

(declare-fun b!6856310 () Bool)

(declare-fun e!4133906 () Bool)

(declare-fun e!4133904 () Bool)

(assert (=> b!6856310 (= e!4133906 e!4133904)))

(declare-fun res!2797850 () Bool)

(assert (=> b!6856310 (=> (not res!2797850) (not e!4133904))))

(assert (=> b!6856310 (= res!2797850 (not lt!2456692))))

(declare-fun b!6856311 () Bool)

(declare-fun res!2797846 () Bool)

(declare-fun e!4133901 () Bool)

(assert (=> b!6856311 (=> res!2797846 e!4133901)))

(assert (=> b!6856311 (= res!2797846 (not (isEmpty!38587 (tail!12812 s!2326))))))

(declare-fun b!6856312 () Bool)

(declare-fun e!4133905 () Bool)

(assert (=> b!6856312 (= e!4133902 e!4133905)))

(declare-fun c!1276206 () Bool)

(assert (=> b!6856312 (= c!1276206 ((_ is EmptyLang!16681) lt!2456625))))

(declare-fun b!6856313 () Bool)

(assert (=> b!6856313 (= e!4133904 e!4133901)))

(declare-fun res!2797849 () Bool)

(assert (=> b!6856313 (=> res!2797849 e!4133901)))

(assert (=> b!6856313 (= res!2797849 call!624552)))

(declare-fun b!6856314 () Bool)

(declare-fun res!2797848 () Bool)

(declare-fun e!4133900 () Bool)

(assert (=> b!6856314 (=> (not res!2797848) (not e!4133900))))

(assert (=> b!6856314 (= res!2797848 (isEmpty!38587 (tail!12812 s!2326)))))

(declare-fun b!6856315 () Bool)

(declare-fun e!4133903 () Bool)

(declare-fun nullable!6642 (Regex!16681) Bool)

(assert (=> b!6856315 (= e!4133903 (nullable!6642 lt!2456625))))

(declare-fun b!6856316 () Bool)

(assert (=> b!6856316 (= e!4133901 (not (= (head!13738 s!2326) (c!1276127 lt!2456625))))))

(declare-fun b!6856317 () Bool)

(assert (=> b!6856317 (= e!4133900 (= (head!13738 s!2326) (c!1276127 lt!2456625)))))

(declare-fun b!6856318 () Bool)

(assert (=> b!6856318 (= e!4133905 (not lt!2456692))))

(declare-fun b!6856319 () Bool)

(declare-fun res!2797845 () Bool)

(assert (=> b!6856319 (=> res!2797845 e!4133906)))

(assert (=> b!6856319 (= res!2797845 e!4133900)))

(declare-fun res!2797844 () Bool)

(assert (=> b!6856319 (=> (not res!2797844) (not e!4133900))))

(assert (=> b!6856319 (= res!2797844 lt!2456692)))

(declare-fun d!2154624 () Bool)

(assert (=> d!2154624 e!4133902))

(declare-fun c!1276208 () Bool)

(assert (=> d!2154624 (= c!1276208 ((_ is EmptyExpr!16681) lt!2456625))))

(assert (=> d!2154624 (= lt!2456692 e!4133903)))

(declare-fun c!1276207 () Bool)

(assert (=> d!2154624 (= c!1276207 (isEmpty!38587 s!2326))))

(assert (=> d!2154624 (validRegex!8417 lt!2456625)))

(assert (=> d!2154624 (= (matchR!8864 lt!2456625 s!2326) lt!2456692)))

(declare-fun b!6856320 () Bool)

(declare-fun res!2797851 () Bool)

(assert (=> b!6856320 (=> res!2797851 e!4133906)))

(assert (=> b!6856320 (= res!2797851 (not ((_ is ElementMatch!16681) lt!2456625)))))

(assert (=> b!6856320 (= e!4133905 e!4133906)))

(declare-fun b!6856321 () Bool)

(declare-fun derivativeStep!5325 (Regex!16681 C!33632) Regex!16681)

(assert (=> b!6856321 (= e!4133903 (matchR!8864 (derivativeStep!5325 lt!2456625 (head!13738 s!2326)) (tail!12812 s!2326)))))

(declare-fun b!6856322 () Bool)

(declare-fun res!2797847 () Bool)

(assert (=> b!6856322 (=> (not res!2797847) (not e!4133900))))

(assert (=> b!6856322 (= res!2797847 (not call!624552))))

(declare-fun bm!624547 () Bool)

(assert (=> bm!624547 (= call!624552 (isEmpty!38587 s!2326))))

(assert (= (and d!2154624 c!1276207) b!6856315))

(assert (= (and d!2154624 (not c!1276207)) b!6856321))

(assert (= (and d!2154624 c!1276208) b!6856309))

(assert (= (and d!2154624 (not c!1276208)) b!6856312))

(assert (= (and b!6856312 c!1276206) b!6856318))

(assert (= (and b!6856312 (not c!1276206)) b!6856320))

(assert (= (and b!6856320 (not res!2797851)) b!6856319))

(assert (= (and b!6856319 res!2797844) b!6856322))

(assert (= (and b!6856322 res!2797847) b!6856314))

(assert (= (and b!6856314 res!2797848) b!6856317))

(assert (= (and b!6856319 (not res!2797845)) b!6856310))

(assert (= (and b!6856310 res!2797850) b!6856313))

(assert (= (and b!6856313 (not res!2797849)) b!6856311))

(assert (= (and b!6856311 (not res!2797846)) b!6856316))

(assert (= (or b!6856309 b!6856322 b!6856313) bm!624547))

(declare-fun m!7592692 () Bool)

(assert (=> b!6856315 m!7592692))

(assert (=> b!6856314 m!7592564))

(assert (=> b!6856314 m!7592564))

(declare-fun m!7592694 () Bool)

(assert (=> b!6856314 m!7592694))

(assert (=> b!6856321 m!7592560))

(assert (=> b!6856321 m!7592560))

(declare-fun m!7592696 () Bool)

(assert (=> b!6856321 m!7592696))

(assert (=> b!6856321 m!7592564))

(assert (=> b!6856321 m!7592696))

(assert (=> b!6856321 m!7592564))

(declare-fun m!7592698 () Bool)

(assert (=> b!6856321 m!7592698))

(assert (=> d!2154624 m!7592556))

(assert (=> d!2154624 m!7592498))

(assert (=> b!6856317 m!7592560))

(assert (=> b!6856311 m!7592564))

(assert (=> b!6856311 m!7592564))

(assert (=> b!6856311 m!7592694))

(assert (=> bm!624547 m!7592556))

(assert (=> b!6856316 m!7592560))

(assert (=> b!6856032 d!2154624))

(declare-fun b!6856358 () Bool)

(declare-fun res!2797871 () Bool)

(declare-fun e!4133939 () Bool)

(assert (=> b!6856358 (=> res!2797871 e!4133939)))

(assert (=> b!6856358 (= res!2797871 (not ((_ is Concat!25526) lt!2456625)))))

(declare-fun e!4133937 () Bool)

(assert (=> b!6856358 (= e!4133937 e!4133939)))

(declare-fun b!6856359 () Bool)

(declare-fun e!4133936 () Bool)

(declare-fun e!4133933 () Bool)

(assert (=> b!6856359 (= e!4133936 e!4133933)))

(declare-fun c!1276218 () Bool)

(assert (=> b!6856359 (= c!1276218 ((_ is Star!16681) lt!2456625))))

(declare-fun b!6856360 () Bool)

(declare-fun e!4133934 () Bool)

(declare-fun call!624561 () Bool)

(assert (=> b!6856360 (= e!4133934 call!624561)))

(declare-fun b!6856361 () Bool)

(declare-fun e!4133935 () Bool)

(declare-fun call!624559 () Bool)

(assert (=> b!6856361 (= e!4133935 call!624559)))

(declare-fun b!6856362 () Bool)

(declare-fun res!2797872 () Bool)

(declare-fun e!4133938 () Bool)

(assert (=> b!6856362 (=> (not res!2797872) (not e!4133938))))

(declare-fun call!624560 () Bool)

(assert (=> b!6856362 (= res!2797872 call!624560)))

(assert (=> b!6856362 (= e!4133937 e!4133938)))

(declare-fun b!6856363 () Bool)

(assert (=> b!6856363 (= e!4133938 call!624559)))

(declare-fun b!6856364 () Bool)

(assert (=> b!6856364 (= e!4133933 e!4133937)))

(declare-fun c!1276219 () Bool)

(assert (=> b!6856364 (= c!1276219 ((_ is Union!16681) lt!2456625))))

(declare-fun b!6856365 () Bool)

(assert (=> b!6856365 (= e!4133939 e!4133935)))

(declare-fun res!2797873 () Bool)

(assert (=> b!6856365 (=> (not res!2797873) (not e!4133935))))

(assert (=> b!6856365 (= res!2797873 call!624560)))

(declare-fun b!6856366 () Bool)

(assert (=> b!6856366 (= e!4133933 e!4133934)))

(declare-fun res!2797869 () Bool)

(assert (=> b!6856366 (= res!2797869 (not (nullable!6642 (reg!17010 lt!2456625))))))

(assert (=> b!6856366 (=> (not res!2797869) (not e!4133934))))

(declare-fun bm!624554 () Bool)

(assert (=> bm!624554 (= call!624561 (validRegex!8417 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))))))

(declare-fun d!2154644 () Bool)

(declare-fun res!2797870 () Bool)

(assert (=> d!2154644 (=> res!2797870 e!4133936)))

(assert (=> d!2154644 (= res!2797870 ((_ is ElementMatch!16681) lt!2456625))))

(assert (=> d!2154644 (= (validRegex!8417 lt!2456625) e!4133936)))

(declare-fun bm!624555 () Bool)

(assert (=> bm!624555 (= call!624560 (validRegex!8417 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))))))

(declare-fun bm!624556 () Bool)

(assert (=> bm!624556 (= call!624559 call!624561)))

(assert (= (and d!2154644 (not res!2797870)) b!6856359))

(assert (= (and b!6856359 c!1276218) b!6856366))

(assert (= (and b!6856359 (not c!1276218)) b!6856364))

(assert (= (and b!6856366 res!2797869) b!6856360))

(assert (= (and b!6856364 c!1276219) b!6856362))

(assert (= (and b!6856364 (not c!1276219)) b!6856358))

(assert (= (and b!6856362 res!2797872) b!6856363))

(assert (= (and b!6856358 (not res!2797871)) b!6856365))

(assert (= (and b!6856365 res!2797873) b!6856361))

(assert (= (or b!6856363 b!6856361) bm!624556))

(assert (= (or b!6856362 b!6856365) bm!624555))

(assert (= (or b!6856360 bm!624556) bm!624554))

(declare-fun m!7592722 () Bool)

(assert (=> b!6856366 m!7592722))

(declare-fun m!7592724 () Bool)

(assert (=> bm!624554 m!7592724))

(declare-fun m!7592726 () Bool)

(assert (=> bm!624555 m!7592726))

(assert (=> b!6856022 d!2154644))

(declare-fun bs!1832691 () Bool)

(declare-fun d!2154656 () Bool)

(assert (= bs!1832691 (and d!2154656 b!6856039)))

(declare-fun lambda!387593 () Int)

(assert (=> bs!1832691 (not (= lambda!387593 lambda!387558))))

(declare-fun bs!1832692 () Bool)

(assert (= bs!1832692 (and d!2154656 d!2154586)))

(assert (=> bs!1832692 (not (= lambda!387593 lambda!387562))))

(assert (=> d!2154656 (= (inv!84949 (h!72667 zl!343)) (forall!15860 (exprs!6565 (h!72667 zl!343)) lambda!387593))))

(declare-fun bs!1832693 () Bool)

(assert (= bs!1832693 d!2154656))

(declare-fun m!7592734 () Bool)

(assert (=> bs!1832693 m!7592734))

(assert (=> b!6856034 d!2154656))

(declare-fun b!6856464 () Bool)

(assert (=> b!6856464 true))

(assert (=> b!6856464 true))

(declare-fun bs!1832698 () Bool)

(declare-fun b!6856460 () Bool)

(assert (= bs!1832698 (and b!6856460 b!6856464)))

(declare-fun lambda!387599 () Int)

(declare-fun lambda!387598 () Int)

(assert (=> bs!1832698 (not (= lambda!387599 lambda!387598))))

(assert (=> b!6856460 true))

(assert (=> b!6856460 true))

(declare-fun b!6856457 () Bool)

(declare-fun e!4133988 () Bool)

(declare-fun e!4133987 () Bool)

(assert (=> b!6856457 (= e!4133988 e!4133987)))

(declare-fun c!1276231 () Bool)

(assert (=> b!6856457 (= c!1276231 ((_ is Star!16681) r!7292))))

(declare-fun b!6856459 () Bool)

(declare-fun e!4133986 () Bool)

(assert (=> b!6856459 (= e!4133986 (= s!2326 (Cons!66220 (c!1276127 r!7292) Nil!66220)))))

(declare-fun call!624566 () Bool)

(assert (=> b!6856460 (= e!4133987 call!624566)))

(declare-fun bm!624561 () Bool)

(declare-fun call!624567 () Bool)

(assert (=> bm!624561 (= call!624567 (isEmpty!38587 s!2326))))

(declare-fun b!6856461 () Bool)

(declare-fun res!2797893 () Bool)

(declare-fun e!4133985 () Bool)

(assert (=> b!6856461 (=> res!2797893 e!4133985)))

(assert (=> b!6856461 (= res!2797893 call!624567)))

(assert (=> b!6856461 (= e!4133987 e!4133985)))

(declare-fun b!6856462 () Bool)

(declare-fun e!4133983 () Bool)

(assert (=> b!6856462 (= e!4133983 call!624567)))

(declare-fun b!6856463 () Bool)

(declare-fun c!1276232 () Bool)

(assert (=> b!6856463 (= c!1276232 ((_ is ElementMatch!16681) r!7292))))

(declare-fun e!4133989 () Bool)

(assert (=> b!6856463 (= e!4133989 e!4133986)))

(assert (=> b!6856464 (= e!4133985 call!624566)))

(declare-fun b!6856465 () Bool)

(declare-fun e!4133984 () Bool)

(assert (=> b!6856465 (= e!4133988 e!4133984)))

(declare-fun res!2797894 () Bool)

(assert (=> b!6856465 (= res!2797894 (matchRSpec!3782 (regOne!33875 r!7292) s!2326))))

(assert (=> b!6856465 (=> res!2797894 e!4133984)))

(declare-fun b!6856466 () Bool)

(assert (=> b!6856466 (= e!4133983 e!4133989)))

(declare-fun res!2797892 () Bool)

(assert (=> b!6856466 (= res!2797892 (not ((_ is EmptyLang!16681) r!7292)))))

(assert (=> b!6856466 (=> (not res!2797892) (not e!4133989))))

(declare-fun b!6856458 () Bool)

(assert (=> b!6856458 (= e!4133984 (matchRSpec!3782 (regTwo!33875 r!7292) s!2326))))

(declare-fun d!2154658 () Bool)

(declare-fun c!1276230 () Bool)

(assert (=> d!2154658 (= c!1276230 ((_ is EmptyExpr!16681) r!7292))))

(assert (=> d!2154658 (= (matchRSpec!3782 r!7292 s!2326) e!4133983)))

(declare-fun bm!624562 () Bool)

(declare-fun Exists!3741 (Int) Bool)

(assert (=> bm!624562 (= call!624566 (Exists!3741 (ite c!1276231 lambda!387598 lambda!387599)))))

(declare-fun b!6856467 () Bool)

(declare-fun c!1276233 () Bool)

(assert (=> b!6856467 (= c!1276233 ((_ is Union!16681) r!7292))))

(assert (=> b!6856467 (= e!4133986 e!4133988)))

(assert (= (and d!2154658 c!1276230) b!6856462))

(assert (= (and d!2154658 (not c!1276230)) b!6856466))

(assert (= (and b!6856466 res!2797892) b!6856463))

(assert (= (and b!6856463 c!1276232) b!6856459))

(assert (= (and b!6856463 (not c!1276232)) b!6856467))

(assert (= (and b!6856467 c!1276233) b!6856465))

(assert (= (and b!6856467 (not c!1276233)) b!6856457))

(assert (= (and b!6856465 (not res!2797894)) b!6856458))

(assert (= (and b!6856457 c!1276231) b!6856461))

(assert (= (and b!6856457 (not c!1276231)) b!6856460))

(assert (= (and b!6856461 (not res!2797893)) b!6856464))

(assert (= (or b!6856464 b!6856460) bm!624562))

(assert (= (or b!6856462 b!6856461) bm!624561))

(assert (=> bm!624561 m!7592556))

(declare-fun m!7592750 () Bool)

(assert (=> b!6856465 m!7592750))

(declare-fun m!7592752 () Bool)

(assert (=> b!6856458 m!7592752))

(declare-fun m!7592754 () Bool)

(assert (=> bm!624562 m!7592754))

(assert (=> b!6856023 d!2154658))

(declare-fun b!6856472 () Bool)

(declare-fun e!4133992 () Bool)

(declare-fun lt!2456707 () Bool)

(declare-fun call!624568 () Bool)

(assert (=> b!6856472 (= e!4133992 (= lt!2456707 call!624568))))

(declare-fun b!6856473 () Bool)

(declare-fun e!4133996 () Bool)

(declare-fun e!4133994 () Bool)

(assert (=> b!6856473 (= e!4133996 e!4133994)))

(declare-fun res!2797901 () Bool)

(assert (=> b!6856473 (=> (not res!2797901) (not e!4133994))))

(assert (=> b!6856473 (= res!2797901 (not lt!2456707))))

(declare-fun b!6856474 () Bool)

(declare-fun res!2797897 () Bool)

(declare-fun e!4133991 () Bool)

(assert (=> b!6856474 (=> res!2797897 e!4133991)))

(assert (=> b!6856474 (= res!2797897 (not (isEmpty!38587 (tail!12812 s!2326))))))

(declare-fun b!6856475 () Bool)

(declare-fun e!4133995 () Bool)

(assert (=> b!6856475 (= e!4133992 e!4133995)))

(declare-fun c!1276234 () Bool)

(assert (=> b!6856475 (= c!1276234 ((_ is EmptyLang!16681) r!7292))))

(declare-fun b!6856476 () Bool)

(assert (=> b!6856476 (= e!4133994 e!4133991)))

(declare-fun res!2797900 () Bool)

(assert (=> b!6856476 (=> res!2797900 e!4133991)))

(assert (=> b!6856476 (= res!2797900 call!624568)))

(declare-fun b!6856477 () Bool)

(declare-fun res!2797899 () Bool)

(declare-fun e!4133990 () Bool)

(assert (=> b!6856477 (=> (not res!2797899) (not e!4133990))))

(assert (=> b!6856477 (= res!2797899 (isEmpty!38587 (tail!12812 s!2326)))))

(declare-fun b!6856478 () Bool)

(declare-fun e!4133993 () Bool)

(assert (=> b!6856478 (= e!4133993 (nullable!6642 r!7292))))

(declare-fun b!6856479 () Bool)

(assert (=> b!6856479 (= e!4133991 (not (= (head!13738 s!2326) (c!1276127 r!7292))))))

(declare-fun b!6856480 () Bool)

(assert (=> b!6856480 (= e!4133990 (= (head!13738 s!2326) (c!1276127 r!7292)))))

(declare-fun b!6856481 () Bool)

(assert (=> b!6856481 (= e!4133995 (not lt!2456707))))

(declare-fun b!6856482 () Bool)

(declare-fun res!2797896 () Bool)

(assert (=> b!6856482 (=> res!2797896 e!4133996)))

(assert (=> b!6856482 (= res!2797896 e!4133990)))

(declare-fun res!2797895 () Bool)

(assert (=> b!6856482 (=> (not res!2797895) (not e!4133990))))

(assert (=> b!6856482 (= res!2797895 lt!2456707)))

(declare-fun d!2154668 () Bool)

(assert (=> d!2154668 e!4133992))

(declare-fun c!1276236 () Bool)

(assert (=> d!2154668 (= c!1276236 ((_ is EmptyExpr!16681) r!7292))))

(assert (=> d!2154668 (= lt!2456707 e!4133993)))

(declare-fun c!1276235 () Bool)

(assert (=> d!2154668 (= c!1276235 (isEmpty!38587 s!2326))))

(assert (=> d!2154668 (validRegex!8417 r!7292)))

(assert (=> d!2154668 (= (matchR!8864 r!7292 s!2326) lt!2456707)))

(declare-fun b!6856483 () Bool)

(declare-fun res!2797902 () Bool)

(assert (=> b!6856483 (=> res!2797902 e!4133996)))

(assert (=> b!6856483 (= res!2797902 (not ((_ is ElementMatch!16681) r!7292)))))

(assert (=> b!6856483 (= e!4133995 e!4133996)))

(declare-fun b!6856484 () Bool)

(assert (=> b!6856484 (= e!4133993 (matchR!8864 (derivativeStep!5325 r!7292 (head!13738 s!2326)) (tail!12812 s!2326)))))

(declare-fun b!6856485 () Bool)

(declare-fun res!2797898 () Bool)

(assert (=> b!6856485 (=> (not res!2797898) (not e!4133990))))

(assert (=> b!6856485 (= res!2797898 (not call!624568))))

(declare-fun bm!624563 () Bool)

(assert (=> bm!624563 (= call!624568 (isEmpty!38587 s!2326))))

(assert (= (and d!2154668 c!1276235) b!6856478))

(assert (= (and d!2154668 (not c!1276235)) b!6856484))

(assert (= (and d!2154668 c!1276236) b!6856472))

(assert (= (and d!2154668 (not c!1276236)) b!6856475))

(assert (= (and b!6856475 c!1276234) b!6856481))

(assert (= (and b!6856475 (not c!1276234)) b!6856483))

(assert (= (and b!6856483 (not res!2797902)) b!6856482))

(assert (= (and b!6856482 res!2797895) b!6856485))

(assert (= (and b!6856485 res!2797898) b!6856477))

(assert (= (and b!6856477 res!2797899) b!6856480))

(assert (= (and b!6856482 (not res!2797896)) b!6856473))

(assert (= (and b!6856473 res!2797901) b!6856476))

(assert (= (and b!6856476 (not res!2797900)) b!6856474))

(assert (= (and b!6856474 (not res!2797897)) b!6856479))

(assert (= (or b!6856472 b!6856485 b!6856476) bm!624563))

(declare-fun m!7592756 () Bool)

(assert (=> b!6856478 m!7592756))

(assert (=> b!6856477 m!7592564))

(assert (=> b!6856477 m!7592564))

(assert (=> b!6856477 m!7592694))

(assert (=> b!6856484 m!7592560))

(assert (=> b!6856484 m!7592560))

(declare-fun m!7592758 () Bool)

(assert (=> b!6856484 m!7592758))

(assert (=> b!6856484 m!7592564))

(assert (=> b!6856484 m!7592758))

(assert (=> b!6856484 m!7592564))

(declare-fun m!7592760 () Bool)

(assert (=> b!6856484 m!7592760))

(assert (=> d!2154668 m!7592556))

(assert (=> d!2154668 m!7592510))

(assert (=> b!6856480 m!7592560))

(assert (=> b!6856474 m!7592564))

(assert (=> b!6856474 m!7592564))

(assert (=> b!6856474 m!7592694))

(assert (=> bm!624563 m!7592556))

(assert (=> b!6856479 m!7592560))

(assert (=> b!6856023 d!2154668))

(declare-fun d!2154670 () Bool)

(assert (=> d!2154670 (= (matchR!8864 r!7292 s!2326) (matchRSpec!3782 r!7292 s!2326))))

(declare-fun lt!2456710 () Unit!160101)

(declare-fun choose!51074 (Regex!16681 List!66344) Unit!160101)

(assert (=> d!2154670 (= lt!2456710 (choose!51074 r!7292 s!2326))))

(assert (=> d!2154670 (validRegex!8417 r!7292)))

(assert (=> d!2154670 (= (mainMatchTheorem!3782 r!7292 s!2326) lt!2456710)))

(declare-fun bs!1832699 () Bool)

(assert (= bs!1832699 d!2154670))

(assert (=> bs!1832699 m!7592526))

(assert (=> bs!1832699 m!7592524))

(declare-fun m!7592762 () Bool)

(assert (=> bs!1832699 m!7592762))

(assert (=> bs!1832699 m!7592510))

(assert (=> b!6856023 d!2154670))

(declare-fun d!2154672 () Bool)

(declare-fun lt!2456713 () Regex!16681)

(assert (=> d!2154672 (validRegex!8417 lt!2456713)))

(declare-fun generalisedUnion!2517 (List!66342) Regex!16681)

(assert (=> d!2154672 (= lt!2456713 (generalisedUnion!2517 (unfocusZipperList!2098 zl!343)))))

(assert (=> d!2154672 (= (unfocusZipper!2423 zl!343) lt!2456713)))

(declare-fun bs!1832700 () Bool)

(assert (= bs!1832700 d!2154672))

(declare-fun m!7592764 () Bool)

(assert (=> bs!1832700 m!7592764))

(assert (=> bs!1832700 m!7592542))

(assert (=> bs!1832700 m!7592542))

(declare-fun m!7592766 () Bool)

(assert (=> bs!1832700 m!7592766))

(assert (=> b!6856030 d!2154672))

(declare-fun d!2154674 () Bool)

(declare-fun e!4133999 () Bool)

(assert (=> d!2154674 e!4133999))

(declare-fun res!2797905 () Bool)

(assert (=> d!2154674 (=> (not res!2797905) (not e!4133999))))

(declare-fun lt!2456716 () List!66343)

(declare-fun noDuplicate!2445 (List!66343) Bool)

(assert (=> d!2154674 (= res!2797905 (noDuplicate!2445 lt!2456716))))

(declare-fun choose!51075 ((InoxSet Context!12130)) List!66343)

(assert (=> d!2154674 (= lt!2456716 (choose!51075 z!1189))))

(assert (=> d!2154674 (= (toList!10465 z!1189) lt!2456716)))

(declare-fun b!6856488 () Bool)

(declare-fun content!12989 (List!66343) (InoxSet Context!12130))

(assert (=> b!6856488 (= e!4133999 (= (content!12989 lt!2456716) z!1189))))

(assert (= (and d!2154674 res!2797905) b!6856488))

(declare-fun m!7592768 () Bool)

(assert (=> d!2154674 m!7592768))

(declare-fun m!7592770 () Bool)

(assert (=> d!2154674 m!7592770))

(declare-fun m!7592772 () Bool)

(assert (=> b!6856488 m!7592772))

(assert (=> b!6856020 d!2154674))

(declare-fun bs!1832701 () Bool)

(declare-fun d!2154676 () Bool)

(assert (= bs!1832701 (and d!2154676 b!6856039)))

(declare-fun lambda!387600 () Int)

(assert (=> bs!1832701 (not (= lambda!387600 lambda!387558))))

(declare-fun bs!1832702 () Bool)

(assert (= bs!1832702 (and d!2154676 d!2154586)))

(assert (=> bs!1832702 (not (= lambda!387600 lambda!387562))))

(declare-fun bs!1832703 () Bool)

(assert (= bs!1832703 (and d!2154676 d!2154656)))

(assert (=> bs!1832703 (= lambda!387600 lambda!387593)))

(assert (=> d!2154676 (= (inv!84949 setElem!47119) (forall!15860 (exprs!6565 setElem!47119) lambda!387600))))

(declare-fun bs!1832704 () Bool)

(assert (= bs!1832704 d!2154676))

(declare-fun m!7592774 () Bool)

(assert (=> bs!1832704 m!7592774))

(assert (=> setNonEmpty!47119 d!2154676))

(declare-fun d!2154678 () Bool)

(assert (=> d!2154678 (= (isEmpty!38585 (t!380086 zl!343)) ((_ is Nil!66219) (t!380086 zl!343)))))

(assert (=> b!6856031 d!2154678))

(declare-fun d!2154680 () Bool)

(declare-fun lt!2456719 () Bool)

(declare-fun content!12990 (List!66342) (InoxSet Regex!16681))

(assert (=> d!2154680 (= lt!2456719 (select (content!12990 lt!2456629) lt!2456625))))

(declare-fun e!4134004 () Bool)

(assert (=> d!2154680 (= lt!2456719 e!4134004)))

(declare-fun res!2797911 () Bool)

(assert (=> d!2154680 (=> (not res!2797911) (not e!4134004))))

(assert (=> d!2154680 (= res!2797911 ((_ is Cons!66218) lt!2456629))))

(assert (=> d!2154680 (= (contains!20335 lt!2456629 lt!2456625) lt!2456719)))

(declare-fun b!6856493 () Bool)

(declare-fun e!4134005 () Bool)

(assert (=> b!6856493 (= e!4134004 e!4134005)))

(declare-fun res!2797910 () Bool)

(assert (=> b!6856493 (=> res!2797910 e!4134005)))

(assert (=> b!6856493 (= res!2797910 (= (h!72666 lt!2456629) lt!2456625))))

(declare-fun b!6856494 () Bool)

(assert (=> b!6856494 (= e!4134005 (contains!20335 (t!380085 lt!2456629) lt!2456625))))

(assert (= (and d!2154680 res!2797911) b!6856493))

(assert (= (and b!6856493 (not res!2797910)) b!6856494))

(declare-fun m!7592776 () Bool)

(assert (=> d!2154680 m!7592776))

(declare-fun m!7592778 () Bool)

(assert (=> d!2154680 m!7592778))

(declare-fun m!7592780 () Bool)

(assert (=> b!6856494 m!7592780))

(assert (=> b!6856021 d!2154680))

(declare-fun d!2154682 () Bool)

(declare-fun e!4134015 () Bool)

(assert (=> d!2154682 e!4134015))

(declare-fun res!2797916 () Bool)

(assert (=> d!2154682 (=> (not res!2797916) (not e!4134015))))

(declare-fun lt!2456725 () Regex!16681)

(declare-fun dynLambda!26473 (Int Regex!16681) Bool)

(assert (=> d!2154682 (= res!2797916 (dynLambda!26473 lambda!387558 lt!2456725))))

(declare-fun e!4134014 () Regex!16681)

(assert (=> d!2154682 (= lt!2456725 e!4134014)))

(declare-fun c!1276242 () Bool)

(declare-fun e!4134017 () Bool)

(assert (=> d!2154682 (= c!1276242 e!4134017)))

(declare-fun res!2797917 () Bool)

(assert (=> d!2154682 (=> (not res!2797917) (not e!4134017))))

(assert (=> d!2154682 (= res!2797917 ((_ is Cons!66218) lt!2456629))))

(assert (=> d!2154682 (exists!2789 lt!2456629 lambda!387558)))

(assert (=> d!2154682 (= (getWitness!957 lt!2456629 lambda!387558) lt!2456725)))

(declare-fun b!6856507 () Bool)

(declare-fun lt!2456724 () Unit!160101)

(declare-fun Unit!160106 () Unit!160101)

(assert (=> b!6856507 (= lt!2456724 Unit!160106)))

(assert (=> b!6856507 false))

(declare-fun e!4134016 () Regex!16681)

(declare-fun head!13741 (List!66342) Regex!16681)

(assert (=> b!6856507 (= e!4134016 (head!13741 lt!2456629))))

(declare-fun b!6856508 () Bool)

(assert (=> b!6856508 (= e!4134016 (getWitness!957 (t!380085 lt!2456629) lambda!387558))))

(declare-fun b!6856509 () Bool)

(assert (=> b!6856509 (= e!4134014 (h!72666 lt!2456629))))

(declare-fun b!6856510 () Bool)

(assert (=> b!6856510 (= e!4134017 (dynLambda!26473 lambda!387558 (h!72666 lt!2456629)))))

(declare-fun b!6856511 () Bool)

(assert (=> b!6856511 (= e!4134015 (contains!20335 lt!2456629 lt!2456725))))

(declare-fun b!6856512 () Bool)

(assert (=> b!6856512 (= e!4134014 e!4134016)))

(declare-fun c!1276241 () Bool)

(assert (=> b!6856512 (= c!1276241 ((_ is Cons!66218) lt!2456629))))

(assert (= (and d!2154682 res!2797917) b!6856510))

(assert (= (and d!2154682 c!1276242) b!6856509))

(assert (= (and d!2154682 (not c!1276242)) b!6856512))

(assert (= (and b!6856512 c!1276241) b!6856508))

(assert (= (and b!6856512 (not c!1276241)) b!6856507))

(assert (= (and d!2154682 res!2797916) b!6856511))

(declare-fun b_lambda!258975 () Bool)

(assert (=> (not b_lambda!258975) (not d!2154682)))

(declare-fun b_lambda!258977 () Bool)

(assert (=> (not b_lambda!258977) (not b!6856510)))

(declare-fun m!7592782 () Bool)

(assert (=> b!6856511 m!7592782))

(declare-fun m!7592784 () Bool)

(assert (=> d!2154682 m!7592784))

(assert (=> d!2154682 m!7592504))

(declare-fun m!7592786 () Bool)

(assert (=> b!6856510 m!7592786))

(declare-fun m!7592788 () Bool)

(assert (=> b!6856507 m!7592788))

(declare-fun m!7592790 () Bool)

(assert (=> b!6856508 m!7592790))

(assert (=> b!6856021 d!2154682))

(declare-fun b!6856513 () Bool)

(declare-fun res!2797920 () Bool)

(declare-fun e!4134024 () Bool)

(assert (=> b!6856513 (=> res!2797920 e!4134024)))

(assert (=> b!6856513 (= res!2797920 (not ((_ is Concat!25526) r!7292)))))

(declare-fun e!4134022 () Bool)

(assert (=> b!6856513 (= e!4134022 e!4134024)))

(declare-fun b!6856514 () Bool)

(declare-fun e!4134021 () Bool)

(declare-fun e!4134018 () Bool)

(assert (=> b!6856514 (= e!4134021 e!4134018)))

(declare-fun c!1276243 () Bool)

(assert (=> b!6856514 (= c!1276243 ((_ is Star!16681) r!7292))))

(declare-fun b!6856515 () Bool)

(declare-fun e!4134019 () Bool)

(declare-fun call!624571 () Bool)

(assert (=> b!6856515 (= e!4134019 call!624571)))

(declare-fun b!6856516 () Bool)

(declare-fun e!4134020 () Bool)

(declare-fun call!624569 () Bool)

(assert (=> b!6856516 (= e!4134020 call!624569)))

(declare-fun b!6856517 () Bool)

(declare-fun res!2797921 () Bool)

(declare-fun e!4134023 () Bool)

(assert (=> b!6856517 (=> (not res!2797921) (not e!4134023))))

(declare-fun call!624570 () Bool)

(assert (=> b!6856517 (= res!2797921 call!624570)))

(assert (=> b!6856517 (= e!4134022 e!4134023)))

(declare-fun b!6856518 () Bool)

(assert (=> b!6856518 (= e!4134023 call!624569)))

(declare-fun b!6856519 () Bool)

(assert (=> b!6856519 (= e!4134018 e!4134022)))

(declare-fun c!1276244 () Bool)

(assert (=> b!6856519 (= c!1276244 ((_ is Union!16681) r!7292))))

(declare-fun b!6856520 () Bool)

(assert (=> b!6856520 (= e!4134024 e!4134020)))

(declare-fun res!2797922 () Bool)

(assert (=> b!6856520 (=> (not res!2797922) (not e!4134020))))

(assert (=> b!6856520 (= res!2797922 call!624570)))

(declare-fun b!6856521 () Bool)

(assert (=> b!6856521 (= e!4134018 e!4134019)))

(declare-fun res!2797918 () Bool)

(assert (=> b!6856521 (= res!2797918 (not (nullable!6642 (reg!17010 r!7292))))))

(assert (=> b!6856521 (=> (not res!2797918) (not e!4134019))))

(declare-fun bm!624564 () Bool)

(assert (=> bm!624564 (= call!624571 (validRegex!8417 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))))))

(declare-fun d!2154684 () Bool)

(declare-fun res!2797919 () Bool)

(assert (=> d!2154684 (=> res!2797919 e!4134021)))

(assert (=> d!2154684 (= res!2797919 ((_ is ElementMatch!16681) r!7292))))

(assert (=> d!2154684 (= (validRegex!8417 r!7292) e!4134021)))

(declare-fun bm!624565 () Bool)

(assert (=> bm!624565 (= call!624570 (validRegex!8417 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))))))

(declare-fun bm!624566 () Bool)

(assert (=> bm!624566 (= call!624569 call!624571)))

(assert (= (and d!2154684 (not res!2797919)) b!6856514))

(assert (= (and b!6856514 c!1276243) b!6856521))

(assert (= (and b!6856514 (not c!1276243)) b!6856519))

(assert (= (and b!6856521 res!2797918) b!6856515))

(assert (= (and b!6856519 c!1276244) b!6856517))

(assert (= (and b!6856519 (not c!1276244)) b!6856513))

(assert (= (and b!6856517 res!2797921) b!6856518))

(assert (= (and b!6856513 (not res!2797920)) b!6856520))

(assert (= (and b!6856520 res!2797922) b!6856516))

(assert (= (or b!6856518 b!6856516) bm!624566))

(assert (= (or b!6856517 b!6856520) bm!624565))

(assert (= (or b!6856515 bm!624566) bm!624564))

(declare-fun m!7592792 () Bool)

(assert (=> b!6856521 m!7592792))

(declare-fun m!7592794 () Bool)

(assert (=> bm!624564 m!7592794))

(declare-fun m!7592796 () Bool)

(assert (=> bm!624565 m!7592796))

(assert (=> start!661840 d!2154684))

(declare-fun bs!1832705 () Bool)

(declare-fun d!2154686 () Bool)

(assert (= bs!1832705 (and d!2154686 b!6856019)))

(declare-fun lambda!387603 () Int)

(assert (=> bs!1832705 (not (= lambda!387603 lambda!387559))))

(assert (=> d!2154686 true))

(declare-fun order!27671 () Int)

(declare-fun dynLambda!26474 (Int Int) Int)

(assert (=> d!2154686 (< (dynLambda!26474 order!27671 lambda!387559) (dynLambda!26474 order!27671 lambda!387603))))

(declare-fun forall!15862 (List!66343 Int) Bool)

(assert (=> d!2154686 (= (exists!2788 zl!343 lambda!387559) (not (forall!15862 zl!343 lambda!387603)))))

(declare-fun bs!1832706 () Bool)

(assert (= bs!1832706 d!2154686))

(declare-fun m!7592798 () Bool)

(assert (=> bs!1832706 m!7592798))

(assert (=> b!6856019 d!2154686))

(declare-fun bs!1832707 () Bool)

(declare-fun d!2154688 () Bool)

(assert (= bs!1832707 (and d!2154688 b!6856019)))

(declare-fun lambda!387606 () Int)

(assert (=> bs!1832707 (= lambda!387606 lambda!387559)))

(declare-fun bs!1832708 () Bool)

(assert (= bs!1832708 (and d!2154688 d!2154686)))

(assert (=> bs!1832708 (not (= lambda!387606 lambda!387603))))

(assert (=> d!2154688 true))

(assert (=> d!2154688 (exists!2788 zl!343 lambda!387606)))

(declare-fun lt!2456728 () Unit!160101)

(declare-fun choose!51076 (List!66343 Regex!16681) Unit!160101)

(assert (=> d!2154688 (= lt!2456728 (choose!51076 zl!343 lt!2456625))))

(assert (=> d!2154688 (contains!20335 (unfocusZipperList!2098 zl!343) lt!2456625)))

(assert (=> d!2154688 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!36 zl!343 lt!2456625) lt!2456728)))

(declare-fun bs!1832709 () Bool)

(assert (= bs!1832709 d!2154688))

(declare-fun m!7592800 () Bool)

(assert (=> bs!1832709 m!7592800))

(declare-fun m!7592802 () Bool)

(assert (=> bs!1832709 m!7592802))

(assert (=> bs!1832709 m!7592542))

(assert (=> bs!1832709 m!7592542))

(declare-fun m!7592804 () Bool)

(assert (=> bs!1832709 m!7592804))

(assert (=> b!6856019 d!2154688))

(assert (=> b!6856039 d!2154586))

(declare-fun bs!1832710 () Bool)

(declare-fun d!2154690 () Bool)

(assert (= bs!1832710 (and d!2154690 b!6856039)))

(declare-fun lambda!387611 () Int)

(assert (=> bs!1832710 (not (= lambda!387611 lambda!387558))))

(declare-fun bs!1832711 () Bool)

(assert (= bs!1832711 (and d!2154690 d!2154586)))

(assert (=> bs!1832711 (not (= lambda!387611 lambda!387562))))

(declare-fun bs!1832712 () Bool)

(assert (= bs!1832712 (and d!2154690 d!2154656)))

(assert (=> bs!1832712 (= lambda!387611 lambda!387593)))

(declare-fun bs!1832713 () Bool)

(assert (= bs!1832713 (and d!2154690 d!2154676)))

(assert (=> bs!1832713 (= lambda!387611 lambda!387600)))

(declare-fun lambda!387612 () Int)

(assert (=> bs!1832713 (not (= lambda!387612 lambda!387600))))

(declare-fun bs!1832714 () Bool)

(assert (= bs!1832714 d!2154690))

(assert (=> bs!1832714 (not (= lambda!387612 lambda!387611))))

(assert (=> bs!1832710 (= lambda!387612 lambda!387558)))

(assert (=> bs!1832712 (not (= lambda!387612 lambda!387593))))

(assert (=> bs!1832711 (not (= lambda!387612 lambda!387562))))

(assert (=> d!2154690 true))

(assert (=> d!2154690 (= (matchR!8864 r!7292 s!2326) (exists!2789 lt!2456629 lambda!387612))))

(declare-fun lt!2456731 () Unit!160101)

(declare-fun choose!51077 (Regex!16681 List!66342 List!66344) Unit!160101)

(assert (=> d!2154690 (= lt!2456731 (choose!51077 r!7292 lt!2456629 s!2326))))

(assert (=> d!2154690 (forall!15860 lt!2456629 lambda!387611)))

(assert (=> d!2154690 (= (matchRGenUnionSpec!320 r!7292 lt!2456629 s!2326) lt!2456731)))

(assert (=> bs!1832714 m!7592526))

(declare-fun m!7592806 () Bool)

(assert (=> bs!1832714 m!7592806))

(declare-fun m!7592808 () Bool)

(assert (=> bs!1832714 m!7592808))

(declare-fun m!7592810 () Bool)

(assert (=> bs!1832714 m!7592810))

(assert (=> b!6856039 d!2154690))

(declare-fun bs!1832715 () Bool)

(declare-fun d!2154692 () Bool)

(assert (= bs!1832715 (and d!2154692 d!2154676)))

(declare-fun lambda!387615 () Int)

(assert (=> bs!1832715 (= lambda!387615 lambda!387600)))

(declare-fun bs!1832716 () Bool)

(assert (= bs!1832716 (and d!2154692 d!2154690)))

(assert (=> bs!1832716 (= lambda!387615 lambda!387611)))

(declare-fun bs!1832717 () Bool)

(assert (= bs!1832717 (and d!2154692 b!6856039)))

(assert (=> bs!1832717 (not (= lambda!387615 lambda!387558))))

(declare-fun bs!1832718 () Bool)

(assert (= bs!1832718 (and d!2154692 d!2154656)))

(assert (=> bs!1832718 (= lambda!387615 lambda!387593)))

(declare-fun bs!1832719 () Bool)

(assert (= bs!1832719 (and d!2154692 d!2154586)))

(assert (=> bs!1832719 (not (= lambda!387615 lambda!387562))))

(assert (=> bs!1832716 (not (= lambda!387615 lambda!387612))))

(declare-fun lt!2456734 () List!66342)

(assert (=> d!2154692 (forall!15860 lt!2456734 lambda!387615)))

(declare-fun e!4134029 () List!66342)

(assert (=> d!2154692 (= lt!2456734 e!4134029)))

(declare-fun c!1276249 () Bool)

(assert (=> d!2154692 (= c!1276249 ((_ is Cons!66219) zl!343))))

(assert (=> d!2154692 (= (unfocusZipperList!2098 zl!343) lt!2456734)))

(declare-fun b!6856530 () Bool)

(declare-fun generalisedConcat!2270 (List!66342) Regex!16681)

(assert (=> b!6856530 (= e!4134029 (Cons!66218 (generalisedConcat!2270 (exprs!6565 (h!72667 zl!343))) (unfocusZipperList!2098 (t!380086 zl!343))))))

(declare-fun b!6856531 () Bool)

(assert (=> b!6856531 (= e!4134029 Nil!66218)))

(assert (= (and d!2154692 c!1276249) b!6856530))

(assert (= (and d!2154692 (not c!1276249)) b!6856531))

(declare-fun m!7592812 () Bool)

(assert (=> d!2154692 m!7592812))

(declare-fun m!7592814 () Bool)

(assert (=> b!6856530 m!7592814))

(declare-fun m!7592816 () Bool)

(assert (=> b!6856530 m!7592816))

(assert (=> b!6856039 d!2154692))

(assert (=> b!6856028 d!2154678))

(declare-fun condSetEmpty!47125 () Bool)

(assert (=> setNonEmpty!47119 (= condSetEmpty!47125 (= setRest!47119 ((as const (Array Context!12130 Bool)) false)))))

(declare-fun setRes!47125 () Bool)

(assert (=> setNonEmpty!47119 (= tp!1880089 setRes!47125)))

(declare-fun setIsEmpty!47125 () Bool)

(assert (=> setIsEmpty!47125 setRes!47125))

(declare-fun e!4134032 () Bool)

(declare-fun setElem!47125 () Context!12130)

(declare-fun tp!1880159 () Bool)

(declare-fun setNonEmpty!47125 () Bool)

(assert (=> setNonEmpty!47125 (= setRes!47125 (and tp!1880159 (inv!84949 setElem!47125) e!4134032))))

(declare-fun setRest!47125 () (InoxSet Context!12130))

(assert (=> setNonEmpty!47125 (= setRest!47119 ((_ map or) (store ((as const (Array Context!12130 Bool)) false) setElem!47125 true) setRest!47125))))

(declare-fun b!6856536 () Bool)

(declare-fun tp!1880158 () Bool)

(assert (=> b!6856536 (= e!4134032 tp!1880158)))

(assert (= (and setNonEmpty!47119 condSetEmpty!47125) setIsEmpty!47125))

(assert (= (and setNonEmpty!47119 (not condSetEmpty!47125)) setNonEmpty!47125))

(assert (= setNonEmpty!47125 b!6856536))

(declare-fun m!7592818 () Bool)

(assert (=> setNonEmpty!47125 m!7592818))

(declare-fun b!6856541 () Bool)

(declare-fun e!4134035 () Bool)

(declare-fun tp!1880162 () Bool)

(assert (=> b!6856541 (= e!4134035 (and tp_is_empty!42615 tp!1880162))))

(assert (=> b!6856029 (= tp!1880093 e!4134035)))

(assert (= (and b!6856029 ((_ is Cons!66220) (t!380087 s!2326))) b!6856541))

(declare-fun b!6856553 () Bool)

(declare-fun e!4134038 () Bool)

(declare-fun tp!1880174 () Bool)

(declare-fun tp!1880173 () Bool)

(assert (=> b!6856553 (= e!4134038 (and tp!1880174 tp!1880173))))

(declare-fun b!6856555 () Bool)

(declare-fun tp!1880175 () Bool)

(declare-fun tp!1880177 () Bool)

(assert (=> b!6856555 (= e!4134038 (and tp!1880175 tp!1880177))))

(declare-fun b!6856552 () Bool)

(assert (=> b!6856552 (= e!4134038 tp_is_empty!42615)))

(declare-fun b!6856554 () Bool)

(declare-fun tp!1880176 () Bool)

(assert (=> b!6856554 (= e!4134038 tp!1880176)))

(assert (=> b!6856026 (= tp!1880094 e!4134038)))

(assert (= (and b!6856026 ((_ is ElementMatch!16681) (regOne!33875 r!7292))) b!6856552))

(assert (= (and b!6856026 ((_ is Concat!25526) (regOne!33875 r!7292))) b!6856553))

(assert (= (and b!6856026 ((_ is Star!16681) (regOne!33875 r!7292))) b!6856554))

(assert (= (and b!6856026 ((_ is Union!16681) (regOne!33875 r!7292))) b!6856555))

(declare-fun b!6856557 () Bool)

(declare-fun e!4134039 () Bool)

(declare-fun tp!1880179 () Bool)

(declare-fun tp!1880178 () Bool)

(assert (=> b!6856557 (= e!4134039 (and tp!1880179 tp!1880178))))

(declare-fun b!6856559 () Bool)

(declare-fun tp!1880180 () Bool)

(declare-fun tp!1880182 () Bool)

(assert (=> b!6856559 (= e!4134039 (and tp!1880180 tp!1880182))))

(declare-fun b!6856556 () Bool)

(assert (=> b!6856556 (= e!4134039 tp_is_empty!42615)))

(declare-fun b!6856558 () Bool)

(declare-fun tp!1880181 () Bool)

(assert (=> b!6856558 (= e!4134039 tp!1880181)))

(assert (=> b!6856026 (= tp!1880090 e!4134039)))

(assert (= (and b!6856026 ((_ is ElementMatch!16681) (regTwo!33875 r!7292))) b!6856556))

(assert (= (and b!6856026 ((_ is Concat!25526) (regTwo!33875 r!7292))) b!6856557))

(assert (= (and b!6856026 ((_ is Star!16681) (regTwo!33875 r!7292))) b!6856558))

(assert (= (and b!6856026 ((_ is Union!16681) (regTwo!33875 r!7292))) b!6856559))

(declare-fun b!6856561 () Bool)

(declare-fun e!4134040 () Bool)

(declare-fun tp!1880184 () Bool)

(declare-fun tp!1880183 () Bool)

(assert (=> b!6856561 (= e!4134040 (and tp!1880184 tp!1880183))))

(declare-fun b!6856563 () Bool)

(declare-fun tp!1880185 () Bool)

(declare-fun tp!1880187 () Bool)

(assert (=> b!6856563 (= e!4134040 (and tp!1880185 tp!1880187))))

(declare-fun b!6856560 () Bool)

(assert (=> b!6856560 (= e!4134040 tp_is_empty!42615)))

(declare-fun b!6856562 () Bool)

(declare-fun tp!1880186 () Bool)

(assert (=> b!6856562 (= e!4134040 tp!1880186)))

(assert (=> b!6856027 (= tp!1880091 e!4134040)))

(assert (= (and b!6856027 ((_ is ElementMatch!16681) (reg!17010 r!7292))) b!6856560))

(assert (= (and b!6856027 ((_ is Concat!25526) (reg!17010 r!7292))) b!6856561))

(assert (= (and b!6856027 ((_ is Star!16681) (reg!17010 r!7292))) b!6856562))

(assert (= (and b!6856027 ((_ is Union!16681) (reg!17010 r!7292))) b!6856563))

(declare-fun b!6856568 () Bool)

(declare-fun e!4134043 () Bool)

(declare-fun tp!1880192 () Bool)

(declare-fun tp!1880193 () Bool)

(assert (=> b!6856568 (= e!4134043 (and tp!1880192 tp!1880193))))

(assert (=> b!6856037 (= tp!1880087 e!4134043)))

(assert (= (and b!6856037 ((_ is Cons!66218) (exprs!6565 setElem!47119))) b!6856568))

(declare-fun b!6856576 () Bool)

(declare-fun e!4134049 () Bool)

(declare-fun tp!1880198 () Bool)

(assert (=> b!6856576 (= e!4134049 tp!1880198)))

(declare-fun tp!1880199 () Bool)

(declare-fun b!6856575 () Bool)

(declare-fun e!4134048 () Bool)

(assert (=> b!6856575 (= e!4134048 (and (inv!84949 (h!72667 (t!380086 zl!343))) e!4134049 tp!1880199))))

(assert (=> b!6856034 (= tp!1880088 e!4134048)))

(assert (= b!6856575 b!6856576))

(assert (= (and b!6856034 ((_ is Cons!66219) (t!380086 zl!343))) b!6856575))

(declare-fun m!7592820 () Bool)

(assert (=> b!6856575 m!7592820))

(declare-fun b!6856577 () Bool)

(declare-fun e!4134050 () Bool)

(declare-fun tp!1880200 () Bool)

(declare-fun tp!1880201 () Bool)

(assert (=> b!6856577 (= e!4134050 (and tp!1880200 tp!1880201))))

(assert (=> b!6856018 (= tp!1880095 e!4134050)))

(assert (= (and b!6856018 ((_ is Cons!66218) (exprs!6565 (h!72667 zl!343)))) b!6856577))

(declare-fun b!6856579 () Bool)

(declare-fun e!4134051 () Bool)

(declare-fun tp!1880203 () Bool)

(declare-fun tp!1880202 () Bool)

(assert (=> b!6856579 (= e!4134051 (and tp!1880203 tp!1880202))))

(declare-fun b!6856581 () Bool)

(declare-fun tp!1880204 () Bool)

(declare-fun tp!1880206 () Bool)

(assert (=> b!6856581 (= e!4134051 (and tp!1880204 tp!1880206))))

(declare-fun b!6856578 () Bool)

(assert (=> b!6856578 (= e!4134051 tp_is_empty!42615)))

(declare-fun b!6856580 () Bool)

(declare-fun tp!1880205 () Bool)

(assert (=> b!6856580 (= e!4134051 tp!1880205)))

(assert (=> b!6856033 (= tp!1880092 e!4134051)))

(assert (= (and b!6856033 ((_ is ElementMatch!16681) (regOne!33874 r!7292))) b!6856578))

(assert (= (and b!6856033 ((_ is Concat!25526) (regOne!33874 r!7292))) b!6856579))

(assert (= (and b!6856033 ((_ is Star!16681) (regOne!33874 r!7292))) b!6856580))

(assert (= (and b!6856033 ((_ is Union!16681) (regOne!33874 r!7292))) b!6856581))

(declare-fun b!6856583 () Bool)

(declare-fun e!4134052 () Bool)

(declare-fun tp!1880208 () Bool)

(declare-fun tp!1880207 () Bool)

(assert (=> b!6856583 (= e!4134052 (and tp!1880208 tp!1880207))))

(declare-fun b!6856585 () Bool)

(declare-fun tp!1880209 () Bool)

(declare-fun tp!1880211 () Bool)

(assert (=> b!6856585 (= e!4134052 (and tp!1880209 tp!1880211))))

(declare-fun b!6856582 () Bool)

(assert (=> b!6856582 (= e!4134052 tp_is_empty!42615)))

(declare-fun b!6856584 () Bool)

(declare-fun tp!1880210 () Bool)

(assert (=> b!6856584 (= e!4134052 tp!1880210)))

(assert (=> b!6856033 (= tp!1880086 e!4134052)))

(assert (= (and b!6856033 ((_ is ElementMatch!16681) (regTwo!33874 r!7292))) b!6856582))

(assert (= (and b!6856033 ((_ is Concat!25526) (regTwo!33874 r!7292))) b!6856583))

(assert (= (and b!6856033 ((_ is Star!16681) (regTwo!33874 r!7292))) b!6856584))

(assert (= (and b!6856033 ((_ is Union!16681) (regTwo!33874 r!7292))) b!6856585))

(declare-fun b_lambda!258979 () Bool)

(assert (= b_lambda!258955 (or b!6856019 b_lambda!258979)))

(declare-fun bs!1832720 () Bool)

(declare-fun d!2154694 () Bool)

(assert (= bs!1832720 (and d!2154694 b!6856019)))

(assert (=> bs!1832720 (= (dynLambda!26471 lambda!387559 lt!2456653) (= (generalisedConcat!2270 (exprs!6565 lt!2456653)) lt!2456625))))

(declare-fun m!7592822 () Bool)

(assert (=> bs!1832720 m!7592822))

(assert (=> d!2154600 d!2154694))

(declare-fun b_lambda!258981 () Bool)

(assert (= b_lambda!258977 (or b!6856039 b_lambda!258981)))

(declare-fun bs!1832721 () Bool)

(declare-fun d!2154696 () Bool)

(assert (= bs!1832721 (and d!2154696 b!6856039)))

(declare-fun res!2797925 () Bool)

(declare-fun e!4134053 () Bool)

(assert (=> bs!1832721 (=> (not res!2797925) (not e!4134053))))

(assert (=> bs!1832721 (= res!2797925 (validRegex!8417 (h!72666 lt!2456629)))))

(assert (=> bs!1832721 (= (dynLambda!26473 lambda!387558 (h!72666 lt!2456629)) e!4134053)))

(declare-fun b!6856586 () Bool)

(assert (=> b!6856586 (= e!4134053 (matchR!8864 (h!72666 lt!2456629) s!2326))))

(assert (= (and bs!1832721 res!2797925) b!6856586))

(declare-fun m!7592824 () Bool)

(assert (=> bs!1832721 m!7592824))

(declare-fun m!7592826 () Bool)

(assert (=> b!6856586 m!7592826))

(assert (=> b!6856510 d!2154696))

(declare-fun b_lambda!258983 () Bool)

(assert (= b_lambda!258957 (or b!6856019 b_lambda!258983)))

(declare-fun bs!1832722 () Bool)

(declare-fun d!2154698 () Bool)

(assert (= bs!1832722 (and d!2154698 b!6856019)))

(assert (=> bs!1832722 (= (dynLambda!26471 lambda!387559 (h!72667 zl!343)) (= (generalisedConcat!2270 (exprs!6565 (h!72667 zl!343))) lt!2456625))))

(assert (=> bs!1832722 m!7592814))

(assert (=> b!6856194 d!2154698))

(declare-fun b_lambda!258985 () Bool)

(assert (= b_lambda!258975 (or b!6856039 b_lambda!258985)))

(declare-fun bs!1832723 () Bool)

(declare-fun d!2154700 () Bool)

(assert (= bs!1832723 (and d!2154700 b!6856039)))

(declare-fun res!2797926 () Bool)

(declare-fun e!4134054 () Bool)

(assert (=> bs!1832723 (=> (not res!2797926) (not e!4134054))))

(assert (=> bs!1832723 (= res!2797926 (validRegex!8417 lt!2456725))))

(assert (=> bs!1832723 (= (dynLambda!26473 lambda!387558 lt!2456725) e!4134054)))

(declare-fun b!6856587 () Bool)

(assert (=> b!6856587 (= e!4134054 (matchR!8864 lt!2456725 s!2326))))

(assert (= (and bs!1832723 res!2797926) b!6856587))

(declare-fun m!7592828 () Bool)

(assert (=> bs!1832723 m!7592828))

(declare-fun m!7592830 () Bool)

(assert (=> b!6856587 m!7592830))

(assert (=> d!2154682 d!2154700))

(check-sat (not d!2154672) (not b_lambda!258985) (not b!6856316) (not b!6856218) (not b!6856130) (not bs!1832723) (not d!2154674) (not b!6856553) (not bm!624555) (not d!2154682) (not b!6856586) (not d!2154688) (not b!6856484) (not b!6856587) (not b!6856580) (not b!6856196) (not d!2154588) (not b!6856054) (not b!6856314) (not b!6856541) (not b!6856521) (not b!6856583) (not b!6856474) (not b!6856478) (not b!6856581) (not b!6856488) (not b!6856585) (not b!6856555) (not b!6856480) (not d!2154668) (not b!6856558) (not d!2154690) (not b!6856366) (not bm!624561) (not b!6856508) (not bm!624563) (not bm!624562) (not b!6856317) (not b!6856554) (not bs!1832720) (not d!2154680) (not b!6856315) (not b!6856191) (not bm!624564) (not b!6856530) tp_is_empty!42615 (not d!2154620) (not b!6856465) (not b!6856494) (not d!2154656) (not b!6856321) (not b!6856557) (not d!2154594) (not b!6856575) (not b!6856563) (not d!2154692) (not b!6856584) (not b_lambda!258981) (not b!6856458) (not b!6856477) (not b!6856311) (not d!2154586) (not bs!1832722) (not b!6856536) (not b!6856559) (not d!2154600) (not bm!624547) (not b!6856577) (not setNonEmpty!47125) (not d!2154670) (not d!2154676) (not b!6856206) (not b!6856055) (not b!6856479) (not b!6856579) (not b_lambda!258979) (not bs!1832721) (not b!6856561) (not bm!624554) (not b!6856576) (not b!6856195) (not b!6856507) (not b!6856511) (not b!6856568) (not d!2154686) (not b!6856562) (not d!2154624) (not bm!624565) (not b_lambda!258983))
(check-sat)
(get-model)

(declare-fun d!2154816 () Bool)

(declare-fun choose!51079 (Int) Bool)

(assert (=> d!2154816 (= (Exists!3741 (ite c!1276231 lambda!387598 lambda!387599)) (choose!51079 (ite c!1276231 lambda!387598 lambda!387599)))))

(declare-fun bs!1832825 () Bool)

(assert (= bs!1832825 d!2154816))

(declare-fun m!7593120 () Bool)

(assert (=> bs!1832825 m!7593120))

(assert (=> bm!624562 d!2154816))

(declare-fun d!2154820 () Bool)

(declare-fun e!4134277 () Bool)

(assert (=> d!2154820 e!4134277))

(declare-fun res!2798051 () Bool)

(assert (=> d!2154820 (=> (not res!2798051) (not e!4134277))))

(declare-fun lt!2456769 () Regex!16681)

(assert (=> d!2154820 (= res!2798051 (dynLambda!26473 lambda!387558 lt!2456769))))

(declare-fun e!4134276 () Regex!16681)

(assert (=> d!2154820 (= lt!2456769 e!4134276)))

(declare-fun c!1276362 () Bool)

(declare-fun e!4134279 () Bool)

(assert (=> d!2154820 (= c!1276362 e!4134279)))

(declare-fun res!2798052 () Bool)

(assert (=> d!2154820 (=> (not res!2798052) (not e!4134279))))

(assert (=> d!2154820 (= res!2798052 ((_ is Cons!66218) (t!380085 lt!2456629)))))

(assert (=> d!2154820 (exists!2789 (t!380085 lt!2456629) lambda!387558)))

(assert (=> d!2154820 (= (getWitness!957 (t!380085 lt!2456629) lambda!387558) lt!2456769)))

(declare-fun b!6856929 () Bool)

(declare-fun lt!2456768 () Unit!160101)

(declare-fun Unit!160108 () Unit!160101)

(assert (=> b!6856929 (= lt!2456768 Unit!160108)))

(assert (=> b!6856929 false))

(declare-fun e!4134278 () Regex!16681)

(assert (=> b!6856929 (= e!4134278 (head!13741 (t!380085 lt!2456629)))))

(declare-fun b!6856930 () Bool)

(assert (=> b!6856930 (= e!4134278 (getWitness!957 (t!380085 (t!380085 lt!2456629)) lambda!387558))))

(declare-fun b!6856931 () Bool)

(assert (=> b!6856931 (= e!4134276 (h!72666 (t!380085 lt!2456629)))))

(declare-fun b!6856932 () Bool)

(assert (=> b!6856932 (= e!4134279 (dynLambda!26473 lambda!387558 (h!72666 (t!380085 lt!2456629))))))

(declare-fun b!6856933 () Bool)

(assert (=> b!6856933 (= e!4134277 (contains!20335 (t!380085 lt!2456629) lt!2456769))))

(declare-fun b!6856934 () Bool)

(assert (=> b!6856934 (= e!4134276 e!4134278)))

(declare-fun c!1276361 () Bool)

(assert (=> b!6856934 (= c!1276361 ((_ is Cons!66218) (t!380085 lt!2456629)))))

(assert (= (and d!2154820 res!2798052) b!6856932))

(assert (= (and d!2154820 c!1276362) b!6856931))

(assert (= (and d!2154820 (not c!1276362)) b!6856934))

(assert (= (and b!6856934 c!1276361) b!6856930))

(assert (= (and b!6856934 (not c!1276361)) b!6856929))

(assert (= (and d!2154820 res!2798051) b!6856933))

(declare-fun b_lambda!259007 () Bool)

(assert (=> (not b_lambda!259007) (not d!2154820)))

(declare-fun b_lambda!259009 () Bool)

(assert (=> (not b_lambda!259009) (not b!6856932)))

(declare-fun m!7593122 () Bool)

(assert (=> b!6856933 m!7593122))

(declare-fun m!7593124 () Bool)

(assert (=> d!2154820 m!7593124))

(declare-fun m!7593126 () Bool)

(assert (=> d!2154820 m!7593126))

(declare-fun m!7593128 () Bool)

(assert (=> b!6856932 m!7593128))

(declare-fun m!7593132 () Bool)

(assert (=> b!6856929 m!7593132))

(declare-fun m!7593134 () Bool)

(assert (=> b!6856930 m!7593134))

(assert (=> b!6856508 d!2154820))

(declare-fun b!6856949 () Bool)

(declare-fun e!4134289 () Bool)

(declare-fun lt!2456771 () Bool)

(declare-fun call!624623 () Bool)

(assert (=> b!6856949 (= e!4134289 (= lt!2456771 call!624623))))

(declare-fun b!6856950 () Bool)

(declare-fun e!4134293 () Bool)

(declare-fun e!4134291 () Bool)

(assert (=> b!6856950 (= e!4134293 e!4134291)))

(declare-fun res!2798067 () Bool)

(assert (=> b!6856950 (=> (not res!2798067) (not e!4134291))))

(assert (=> b!6856950 (= res!2798067 (not lt!2456771))))

(declare-fun b!6856951 () Bool)

(declare-fun res!2798063 () Bool)

(declare-fun e!4134288 () Bool)

(assert (=> b!6856951 (=> res!2798063 e!4134288)))

(assert (=> b!6856951 (= res!2798063 (not (isEmpty!38587 (tail!12812 s!2326))))))

(declare-fun b!6856952 () Bool)

(declare-fun e!4134292 () Bool)

(assert (=> b!6856952 (= e!4134289 e!4134292)))

(declare-fun c!1276366 () Bool)

(assert (=> b!6856952 (= c!1276366 ((_ is EmptyLang!16681) (h!72666 lt!2456629)))))

(declare-fun b!6856953 () Bool)

(assert (=> b!6856953 (= e!4134291 e!4134288)))

(declare-fun res!2798066 () Bool)

(assert (=> b!6856953 (=> res!2798066 e!4134288)))

(assert (=> b!6856953 (= res!2798066 call!624623)))

(declare-fun b!6856954 () Bool)

(declare-fun res!2798065 () Bool)

(declare-fun e!4134286 () Bool)

(assert (=> b!6856954 (=> (not res!2798065) (not e!4134286))))

(assert (=> b!6856954 (= res!2798065 (isEmpty!38587 (tail!12812 s!2326)))))

(declare-fun b!6856955 () Bool)

(declare-fun e!4134290 () Bool)

(assert (=> b!6856955 (= e!4134290 (nullable!6642 (h!72666 lt!2456629)))))

(declare-fun b!6856956 () Bool)

(assert (=> b!6856956 (= e!4134288 (not (= (head!13738 s!2326) (c!1276127 (h!72666 lt!2456629)))))))

(declare-fun b!6856957 () Bool)

(assert (=> b!6856957 (= e!4134286 (= (head!13738 s!2326) (c!1276127 (h!72666 lt!2456629))))))

(declare-fun b!6856958 () Bool)

(assert (=> b!6856958 (= e!4134292 (not lt!2456771))))

(declare-fun b!6856959 () Bool)

(declare-fun res!2798062 () Bool)

(assert (=> b!6856959 (=> res!2798062 e!4134293)))

(assert (=> b!6856959 (= res!2798062 e!4134286)))

(declare-fun res!2798061 () Bool)

(assert (=> b!6856959 (=> (not res!2798061) (not e!4134286))))

(assert (=> b!6856959 (= res!2798061 lt!2456771)))

(declare-fun d!2154824 () Bool)

(assert (=> d!2154824 e!4134289))

(declare-fun c!1276368 () Bool)

(assert (=> d!2154824 (= c!1276368 ((_ is EmptyExpr!16681) (h!72666 lt!2456629)))))

(assert (=> d!2154824 (= lt!2456771 e!4134290)))

(declare-fun c!1276367 () Bool)

(assert (=> d!2154824 (= c!1276367 (isEmpty!38587 s!2326))))

(assert (=> d!2154824 (validRegex!8417 (h!72666 lt!2456629))))

(assert (=> d!2154824 (= (matchR!8864 (h!72666 lt!2456629) s!2326) lt!2456771)))

(declare-fun b!6856960 () Bool)

(declare-fun res!2798068 () Bool)

(assert (=> b!6856960 (=> res!2798068 e!4134293)))

(assert (=> b!6856960 (= res!2798068 (not ((_ is ElementMatch!16681) (h!72666 lt!2456629))))))

(assert (=> b!6856960 (= e!4134292 e!4134293)))

(declare-fun b!6856961 () Bool)

(assert (=> b!6856961 (= e!4134290 (matchR!8864 (derivativeStep!5325 (h!72666 lt!2456629) (head!13738 s!2326)) (tail!12812 s!2326)))))

(declare-fun b!6856962 () Bool)

(declare-fun res!2798064 () Bool)

(assert (=> b!6856962 (=> (not res!2798064) (not e!4134286))))

(assert (=> b!6856962 (= res!2798064 (not call!624623))))

(declare-fun bm!624618 () Bool)

(assert (=> bm!624618 (= call!624623 (isEmpty!38587 s!2326))))

(assert (= (and d!2154824 c!1276367) b!6856955))

(assert (= (and d!2154824 (not c!1276367)) b!6856961))

(assert (= (and d!2154824 c!1276368) b!6856949))

(assert (= (and d!2154824 (not c!1276368)) b!6856952))

(assert (= (and b!6856952 c!1276366) b!6856958))

(assert (= (and b!6856952 (not c!1276366)) b!6856960))

(assert (= (and b!6856960 (not res!2798068)) b!6856959))

(assert (= (and b!6856959 res!2798061) b!6856962))

(assert (= (and b!6856962 res!2798064) b!6856954))

(assert (= (and b!6856954 res!2798065) b!6856957))

(assert (= (and b!6856959 (not res!2798062)) b!6856950))

(assert (= (and b!6856950 res!2798067) b!6856953))

(assert (= (and b!6856953 (not res!2798066)) b!6856951))

(assert (= (and b!6856951 (not res!2798063)) b!6856956))

(assert (= (or b!6856949 b!6856962 b!6856953) bm!624618))

(declare-fun m!7593140 () Bool)

(assert (=> b!6856955 m!7593140))

(assert (=> b!6856954 m!7592564))

(assert (=> b!6856954 m!7592564))

(assert (=> b!6856954 m!7592694))

(assert (=> b!6856961 m!7592560))

(assert (=> b!6856961 m!7592560))

(declare-fun m!7593144 () Bool)

(assert (=> b!6856961 m!7593144))

(assert (=> b!6856961 m!7592564))

(assert (=> b!6856961 m!7593144))

(assert (=> b!6856961 m!7592564))

(declare-fun m!7593146 () Bool)

(assert (=> b!6856961 m!7593146))

(assert (=> d!2154824 m!7592556))

(assert (=> d!2154824 m!7592824))

(assert (=> b!6856957 m!7592560))

(assert (=> b!6856951 m!7592564))

(assert (=> b!6856951 m!7592564))

(assert (=> b!6856951 m!7592694))

(assert (=> bm!624618 m!7592556))

(assert (=> b!6856956 m!7592560))

(assert (=> b!6856586 d!2154824))

(declare-fun bs!1832830 () Bool)

(declare-fun d!2154828 () Bool)

(assert (= bs!1832830 (and d!2154828 b!6856019)))

(declare-fun lambda!387640 () Int)

(assert (=> bs!1832830 (not (= lambda!387640 lambda!387559))))

(declare-fun bs!1832831 () Bool)

(assert (= bs!1832831 (and d!2154828 d!2154686)))

(assert (=> bs!1832831 (= (= lambda!387606 lambda!387559) (= lambda!387640 lambda!387603))))

(declare-fun bs!1832832 () Bool)

(assert (= bs!1832832 (and d!2154828 d!2154688)))

(assert (=> bs!1832832 (not (= lambda!387640 lambda!387606))))

(assert (=> d!2154828 true))

(assert (=> d!2154828 (< (dynLambda!26474 order!27671 lambda!387606) (dynLambda!26474 order!27671 lambda!387640))))

(assert (=> d!2154828 (= (exists!2788 zl!343 lambda!387606) (not (forall!15862 zl!343 lambda!387640)))))

(declare-fun bs!1832833 () Bool)

(assert (= bs!1832833 d!2154828))

(declare-fun m!7593154 () Bool)

(assert (=> bs!1832833 m!7593154))

(assert (=> d!2154688 d!2154828))

(declare-fun bs!1832839 () Bool)

(declare-fun d!2154832 () Bool)

(assert (= bs!1832839 (and d!2154832 b!6856019)))

(declare-fun lambda!387646 () Int)

(assert (=> bs!1832839 (= lambda!387646 lambda!387559)))

(declare-fun bs!1832841 () Bool)

(assert (= bs!1832841 (and d!2154832 d!2154686)))

(assert (=> bs!1832841 (not (= lambda!387646 lambda!387603))))

(declare-fun bs!1832843 () Bool)

(assert (= bs!1832843 (and d!2154832 d!2154688)))

(assert (=> bs!1832843 (= lambda!387646 lambda!387606)))

(declare-fun bs!1832845 () Bool)

(assert (= bs!1832845 (and d!2154832 d!2154828)))

(assert (=> bs!1832845 (not (= lambda!387646 lambda!387640))))

(assert (=> d!2154832 true))

(assert (=> d!2154832 (exists!2788 zl!343 lambda!387646)))

(assert (=> d!2154832 true))

(declare-fun _$46!2044 () Unit!160101)

(assert (=> d!2154832 (= (choose!51076 zl!343 lt!2456625) _$46!2044)))

(declare-fun bs!1832848 () Bool)

(assert (= bs!1832848 d!2154832))

(declare-fun m!7593158 () Bool)

(assert (=> bs!1832848 m!7593158))

(assert (=> d!2154688 d!2154832))

(declare-fun d!2154836 () Bool)

(declare-fun lt!2456772 () Bool)

(assert (=> d!2154836 (= lt!2456772 (select (content!12990 (unfocusZipperList!2098 zl!343)) lt!2456625))))

(declare-fun e!4134301 () Bool)

(assert (=> d!2154836 (= lt!2456772 e!4134301)))

(declare-fun res!2798075 () Bool)

(assert (=> d!2154836 (=> (not res!2798075) (not e!4134301))))

(assert (=> d!2154836 (= res!2798075 ((_ is Cons!66218) (unfocusZipperList!2098 zl!343)))))

(assert (=> d!2154836 (= (contains!20335 (unfocusZipperList!2098 zl!343) lt!2456625) lt!2456772)))

(declare-fun b!6856972 () Bool)

(declare-fun e!4134302 () Bool)

(assert (=> b!6856972 (= e!4134301 e!4134302)))

(declare-fun res!2798074 () Bool)

(assert (=> b!6856972 (=> res!2798074 e!4134302)))

(assert (=> b!6856972 (= res!2798074 (= (h!72666 (unfocusZipperList!2098 zl!343)) lt!2456625))))

(declare-fun b!6856973 () Bool)

(assert (=> b!6856973 (= e!4134302 (contains!20335 (t!380085 (unfocusZipperList!2098 zl!343)) lt!2456625))))

(assert (= (and d!2154836 res!2798075) b!6856972))

(assert (= (and b!6856972 (not res!2798074)) b!6856973))

(assert (=> d!2154836 m!7592542))

(declare-fun m!7593164 () Bool)

(assert (=> d!2154836 m!7593164))

(declare-fun m!7593168 () Bool)

(assert (=> d!2154836 m!7593168))

(declare-fun m!7593172 () Bool)

(assert (=> b!6856973 m!7593172))

(assert (=> d!2154688 d!2154836))

(assert (=> d!2154688 d!2154692))

(declare-fun bs!1832852 () Bool)

(declare-fun d!2154842 () Bool)

(assert (= bs!1832852 (and d!2154842 d!2154676)))

(declare-fun lambda!387648 () Int)

(assert (=> bs!1832852 (= lambda!387648 lambda!387600)))

(declare-fun bs!1832853 () Bool)

(assert (= bs!1832853 (and d!2154842 d!2154690)))

(assert (=> bs!1832853 (= lambda!387648 lambda!387611)))

(declare-fun bs!1832854 () Bool)

(assert (= bs!1832854 (and d!2154842 b!6856039)))

(assert (=> bs!1832854 (not (= lambda!387648 lambda!387558))))

(declare-fun bs!1832855 () Bool)

(assert (= bs!1832855 (and d!2154842 d!2154656)))

(assert (=> bs!1832855 (= lambda!387648 lambda!387593)))

(declare-fun bs!1832856 () Bool)

(assert (= bs!1832856 (and d!2154842 d!2154586)))

(assert (=> bs!1832856 (not (= lambda!387648 lambda!387562))))

(assert (=> bs!1832853 (not (= lambda!387648 lambda!387612))))

(declare-fun bs!1832857 () Bool)

(assert (= bs!1832857 (and d!2154842 d!2154692)))

(assert (=> bs!1832857 (= lambda!387648 lambda!387615)))

(assert (=> d!2154842 (= (inv!84949 (h!72667 (t!380086 zl!343))) (forall!15860 (exprs!6565 (h!72667 (t!380086 zl!343))) lambda!387648))))

(declare-fun bs!1832858 () Bool)

(assert (= bs!1832858 d!2154842))

(declare-fun m!7593178 () Bool)

(assert (=> bs!1832858 m!7593178))

(assert (=> b!6856575 d!2154842))

(declare-fun b!6856986 () Bool)

(declare-fun lt!2456774 () Unit!160101)

(declare-fun Unit!160109 () Unit!160101)

(assert (=> b!6856986 (= lt!2456774 Unit!160109)))

(assert (=> b!6856986 false))

(declare-fun e!4134309 () Context!12130)

(assert (=> b!6856986 (= e!4134309 (head!13740 (t!380086 zl!343)))))

(declare-fun d!2154846 () Bool)

(declare-fun e!4134312 () Bool)

(assert (=> d!2154846 e!4134312))

(declare-fun res!2798079 () Bool)

(assert (=> d!2154846 (=> (not res!2798079) (not e!4134312))))

(declare-fun lt!2456775 () Context!12130)

(assert (=> d!2154846 (= res!2798079 (dynLambda!26471 lambda!387559 lt!2456775))))

(declare-fun e!4134308 () Context!12130)

(assert (=> d!2154846 (= lt!2456775 e!4134308)))

(declare-fun c!1276376 () Bool)

(declare-fun e!4134311 () Bool)

(assert (=> d!2154846 (= c!1276376 e!4134311)))

(declare-fun res!2798078 () Bool)

(assert (=> d!2154846 (=> (not res!2798078) (not e!4134311))))

(assert (=> d!2154846 (= res!2798078 ((_ is Cons!66219) (t!380086 zl!343)))))

(assert (=> d!2154846 (exists!2788 (t!380086 zl!343) lambda!387559)))

(assert (=> d!2154846 (= (getWitness!958 (t!380086 zl!343) lambda!387559) lt!2456775)))

(declare-fun b!6856987 () Bool)

(assert (=> b!6856987 (= e!4134308 e!4134309)))

(declare-fun c!1276375 () Bool)

(assert (=> b!6856987 (= c!1276375 ((_ is Cons!66219) (t!380086 zl!343)))))

(declare-fun b!6856988 () Bool)

(assert (=> b!6856988 (= e!4134308 (h!72667 (t!380086 zl!343)))))

(declare-fun b!6856989 () Bool)

(assert (=> b!6856989 (= e!4134311 (dynLambda!26471 lambda!387559 (h!72667 (t!380086 zl!343))))))

(declare-fun b!6856990 () Bool)

(assert (=> b!6856990 (= e!4134312 (contains!20337 (t!380086 zl!343) lt!2456775))))

(declare-fun b!6856991 () Bool)

(assert (=> b!6856991 (= e!4134309 (getWitness!958 (t!380086 (t!380086 zl!343)) lambda!387559))))

(assert (= (and d!2154846 res!2798078) b!6856989))

(assert (= (and d!2154846 c!1276376) b!6856988))

(assert (= (and d!2154846 (not c!1276376)) b!6856987))

(assert (= (and b!6856987 c!1276375) b!6856991))

(assert (= (and b!6856987 (not c!1276375)) b!6856986))

(assert (= (and d!2154846 res!2798079) b!6856990))

(declare-fun b_lambda!259011 () Bool)

(assert (=> (not b_lambda!259011) (not d!2154846)))

(declare-fun b_lambda!259013 () Bool)

(assert (=> (not b_lambda!259013) (not b!6856989)))

(declare-fun m!7593180 () Bool)

(assert (=> b!6856989 m!7593180))

(declare-fun m!7593182 () Bool)

(assert (=> b!6856990 m!7593182))

(declare-fun m!7593184 () Bool)

(assert (=> d!2154846 m!7593184))

(declare-fun m!7593186 () Bool)

(assert (=> d!2154846 m!7593186))

(declare-fun m!7593188 () Bool)

(assert (=> b!6856986 m!7593188))

(declare-fun m!7593190 () Bool)

(assert (=> b!6856991 m!7593190))

(assert (=> b!6856196 d!2154846))

(declare-fun bs!1832859 () Bool)

(declare-fun b!6857015 () Bool)

(assert (= bs!1832859 (and b!6857015 b!6856464)))

(declare-fun lambda!387649 () Int)

(assert (=> bs!1832859 (= (and (= (reg!17010 (regOne!33875 r!7292)) (reg!17010 r!7292)) (= (regOne!33875 r!7292) r!7292)) (= lambda!387649 lambda!387598))))

(declare-fun bs!1832860 () Bool)

(assert (= bs!1832860 (and b!6857015 b!6856460)))

(assert (=> bs!1832860 (not (= lambda!387649 lambda!387599))))

(assert (=> b!6857015 true))

(assert (=> b!6857015 true))

(declare-fun bs!1832861 () Bool)

(declare-fun b!6857011 () Bool)

(assert (= bs!1832861 (and b!6857011 b!6856464)))

(declare-fun lambda!387650 () Int)

(assert (=> bs!1832861 (not (= lambda!387650 lambda!387598))))

(declare-fun bs!1832862 () Bool)

(assert (= bs!1832862 (and b!6857011 b!6856460)))

(assert (=> bs!1832862 (= (and (= (regOne!33874 (regOne!33875 r!7292)) (regOne!33874 r!7292)) (= (regTwo!33874 (regOne!33875 r!7292)) (regTwo!33874 r!7292))) (= lambda!387650 lambda!387599))))

(declare-fun bs!1832863 () Bool)

(assert (= bs!1832863 (and b!6857011 b!6857015)))

(assert (=> bs!1832863 (not (= lambda!387650 lambda!387649))))

(assert (=> b!6857011 true))

(assert (=> b!6857011 true))

(declare-fun b!6857008 () Bool)

(declare-fun e!4134322 () Bool)

(declare-fun e!4134321 () Bool)

(assert (=> b!6857008 (= e!4134322 e!4134321)))

(declare-fun c!1276378 () Bool)

(assert (=> b!6857008 (= c!1276378 ((_ is Star!16681) (regOne!33875 r!7292)))))

(declare-fun b!6857010 () Bool)

(declare-fun e!4134320 () Bool)

(assert (=> b!6857010 (= e!4134320 (= s!2326 (Cons!66220 (c!1276127 (regOne!33875 r!7292)) Nil!66220)))))

(declare-fun call!624627 () Bool)

(assert (=> b!6857011 (= e!4134321 call!624627)))

(declare-fun bm!624622 () Bool)

(declare-fun call!624628 () Bool)

(assert (=> bm!624622 (= call!624628 (isEmpty!38587 s!2326))))

(declare-fun b!6857012 () Bool)

(declare-fun res!2798081 () Bool)

(declare-fun e!4134319 () Bool)

(assert (=> b!6857012 (=> res!2798081 e!4134319)))

(assert (=> b!6857012 (= res!2798081 call!624628)))

(assert (=> b!6857012 (= e!4134321 e!4134319)))

(declare-fun b!6857013 () Bool)

(declare-fun e!4134317 () Bool)

(assert (=> b!6857013 (= e!4134317 call!624628)))

(declare-fun b!6857014 () Bool)

(declare-fun c!1276379 () Bool)

(assert (=> b!6857014 (= c!1276379 ((_ is ElementMatch!16681) (regOne!33875 r!7292)))))

(declare-fun e!4134323 () Bool)

(assert (=> b!6857014 (= e!4134323 e!4134320)))

(assert (=> b!6857015 (= e!4134319 call!624627)))

(declare-fun b!6857016 () Bool)

(declare-fun e!4134318 () Bool)

(assert (=> b!6857016 (= e!4134322 e!4134318)))

(declare-fun res!2798082 () Bool)

(assert (=> b!6857016 (= res!2798082 (matchRSpec!3782 (regOne!33875 (regOne!33875 r!7292)) s!2326))))

(assert (=> b!6857016 (=> res!2798082 e!4134318)))

(declare-fun b!6857017 () Bool)

(assert (=> b!6857017 (= e!4134317 e!4134323)))

(declare-fun res!2798080 () Bool)

(assert (=> b!6857017 (= res!2798080 (not ((_ is EmptyLang!16681) (regOne!33875 r!7292))))))

(assert (=> b!6857017 (=> (not res!2798080) (not e!4134323))))

(declare-fun b!6857009 () Bool)

(assert (=> b!6857009 (= e!4134318 (matchRSpec!3782 (regTwo!33875 (regOne!33875 r!7292)) s!2326))))

(declare-fun d!2154848 () Bool)

(declare-fun c!1276377 () Bool)

(assert (=> d!2154848 (= c!1276377 ((_ is EmptyExpr!16681) (regOne!33875 r!7292)))))

(assert (=> d!2154848 (= (matchRSpec!3782 (regOne!33875 r!7292) s!2326) e!4134317)))

(declare-fun bm!624623 () Bool)

(assert (=> bm!624623 (= call!624627 (Exists!3741 (ite c!1276378 lambda!387649 lambda!387650)))))

(declare-fun b!6857018 () Bool)

(declare-fun c!1276380 () Bool)

(assert (=> b!6857018 (= c!1276380 ((_ is Union!16681) (regOne!33875 r!7292)))))

(assert (=> b!6857018 (= e!4134320 e!4134322)))

(assert (= (and d!2154848 c!1276377) b!6857013))

(assert (= (and d!2154848 (not c!1276377)) b!6857017))

(assert (= (and b!6857017 res!2798080) b!6857014))

(assert (= (and b!6857014 c!1276379) b!6857010))

(assert (= (and b!6857014 (not c!1276379)) b!6857018))

(assert (= (and b!6857018 c!1276380) b!6857016))

(assert (= (and b!6857018 (not c!1276380)) b!6857008))

(assert (= (and b!6857016 (not res!2798082)) b!6857009))

(assert (= (and b!6857008 c!1276378) b!6857012))

(assert (= (and b!6857008 (not c!1276378)) b!6857011))

(assert (= (and b!6857012 (not res!2798081)) b!6857015))

(assert (= (or b!6857015 b!6857011) bm!624623))

(assert (= (or b!6857013 b!6857012) bm!624622))

(assert (=> bm!624622 m!7592556))

(declare-fun m!7593196 () Bool)

(assert (=> b!6857016 m!7593196))

(declare-fun m!7593198 () Bool)

(assert (=> b!6857009 m!7593198))

(declare-fun m!7593200 () Bool)

(assert (=> bm!624623 m!7593200))

(assert (=> b!6856465 d!2154848))

(declare-fun b!6857079 () Bool)

(declare-fun res!2798085 () Bool)

(declare-fun e!4134348 () Bool)

(assert (=> b!6857079 (=> res!2798085 e!4134348)))

(assert (=> b!6857079 (= res!2798085 (not ((_ is Concat!25526) lt!2456713)))))

(declare-fun e!4134345 () Bool)

(assert (=> b!6857079 (= e!4134345 e!4134348)))

(declare-fun b!6857080 () Bool)

(declare-fun e!4134344 () Bool)

(declare-fun e!4134341 () Bool)

(assert (=> b!6857080 (= e!4134344 e!4134341)))

(declare-fun c!1276381 () Bool)

(assert (=> b!6857080 (= c!1276381 ((_ is Star!16681) lt!2456713))))

(declare-fun b!6857081 () Bool)

(declare-fun e!4134342 () Bool)

(declare-fun call!624631 () Bool)

(assert (=> b!6857081 (= e!4134342 call!624631)))

(declare-fun b!6857082 () Bool)

(declare-fun e!4134343 () Bool)

(declare-fun call!624629 () Bool)

(assert (=> b!6857082 (= e!4134343 call!624629)))

(declare-fun b!6857083 () Bool)

(declare-fun res!2798086 () Bool)

(declare-fun e!4134347 () Bool)

(assert (=> b!6857083 (=> (not res!2798086) (not e!4134347))))

(declare-fun call!624630 () Bool)

(assert (=> b!6857083 (= res!2798086 call!624630)))

(assert (=> b!6857083 (= e!4134345 e!4134347)))

(declare-fun b!6857084 () Bool)

(assert (=> b!6857084 (= e!4134347 call!624629)))

(declare-fun b!6857085 () Bool)

(assert (=> b!6857085 (= e!4134341 e!4134345)))

(declare-fun c!1276382 () Bool)

(assert (=> b!6857085 (= c!1276382 ((_ is Union!16681) lt!2456713))))

(declare-fun b!6857086 () Bool)

(assert (=> b!6857086 (= e!4134348 e!4134343)))

(declare-fun res!2798087 () Bool)

(assert (=> b!6857086 (=> (not res!2798087) (not e!4134343))))

(assert (=> b!6857086 (= res!2798087 call!624630)))

(declare-fun b!6857087 () Bool)

(assert (=> b!6857087 (= e!4134341 e!4134342)))

(declare-fun res!2798083 () Bool)

(assert (=> b!6857087 (= res!2798083 (not (nullable!6642 (reg!17010 lt!2456713))))))

(assert (=> b!6857087 (=> (not res!2798083) (not e!4134342))))

(declare-fun bm!624624 () Bool)

(assert (=> bm!624624 (= call!624631 (validRegex!8417 (ite c!1276381 (reg!17010 lt!2456713) (ite c!1276382 (regTwo!33875 lt!2456713) (regTwo!33874 lt!2456713)))))))

(declare-fun d!2154850 () Bool)

(declare-fun res!2798084 () Bool)

(assert (=> d!2154850 (=> res!2798084 e!4134344)))

(assert (=> d!2154850 (= res!2798084 ((_ is ElementMatch!16681) lt!2456713))))

(assert (=> d!2154850 (= (validRegex!8417 lt!2456713) e!4134344)))

(declare-fun bm!624625 () Bool)

(assert (=> bm!624625 (= call!624630 (validRegex!8417 (ite c!1276382 (regOne!33875 lt!2456713) (regOne!33874 lt!2456713))))))

(declare-fun bm!624626 () Bool)

(assert (=> bm!624626 (= call!624629 call!624631)))

(assert (= (and d!2154850 (not res!2798084)) b!6857080))

(assert (= (and b!6857080 c!1276381) b!6857087))

(assert (= (and b!6857080 (not c!1276381)) b!6857085))

(assert (= (and b!6857087 res!2798083) b!6857081))

(assert (= (and b!6857085 c!1276382) b!6857083))

(assert (= (and b!6857085 (not c!1276382)) b!6857079))

(assert (= (and b!6857083 res!2798086) b!6857084))

(assert (= (and b!6857079 (not res!2798085)) b!6857086))

(assert (= (and b!6857086 res!2798087) b!6857082))

(assert (= (or b!6857084 b!6857082) bm!624626))

(assert (= (or b!6857083 b!6857086) bm!624625))

(assert (= (or b!6857081 bm!624626) bm!624624))

(declare-fun m!7593202 () Bool)

(assert (=> b!6857087 m!7593202))

(declare-fun m!7593204 () Bool)

(assert (=> bm!624624 m!7593204))

(declare-fun m!7593206 () Bool)

(assert (=> bm!624625 m!7593206))

(assert (=> d!2154672 d!2154850))

(declare-fun bs!1832874 () Bool)

(declare-fun d!2154852 () Bool)

(assert (= bs!1832874 (and d!2154852 d!2154676)))

(declare-fun lambda!387653 () Int)

(assert (=> bs!1832874 (= lambda!387653 lambda!387600)))

(declare-fun bs!1832875 () Bool)

(assert (= bs!1832875 (and d!2154852 d!2154690)))

(assert (=> bs!1832875 (= lambda!387653 lambda!387611)))

(declare-fun bs!1832876 () Bool)

(assert (= bs!1832876 (and d!2154852 d!2154842)))

(assert (=> bs!1832876 (= lambda!387653 lambda!387648)))

(declare-fun bs!1832877 () Bool)

(assert (= bs!1832877 (and d!2154852 b!6856039)))

(assert (=> bs!1832877 (not (= lambda!387653 lambda!387558))))

(declare-fun bs!1832878 () Bool)

(assert (= bs!1832878 (and d!2154852 d!2154656)))

(assert (=> bs!1832878 (= lambda!387653 lambda!387593)))

(declare-fun bs!1832879 () Bool)

(assert (= bs!1832879 (and d!2154852 d!2154586)))

(assert (=> bs!1832879 (not (= lambda!387653 lambda!387562))))

(assert (=> bs!1832875 (not (= lambda!387653 lambda!387612))))

(declare-fun bs!1832880 () Bool)

(assert (= bs!1832880 (and d!2154852 d!2154692)))

(assert (=> bs!1832880 (= lambda!387653 lambda!387615)))

(declare-fun b!6857140 () Bool)

(declare-fun e!4134377 () Regex!16681)

(declare-fun e!4134373 () Regex!16681)

(assert (=> b!6857140 (= e!4134377 e!4134373)))

(declare-fun c!1276392 () Bool)

(assert (=> b!6857140 (= c!1276392 ((_ is Cons!66218) (unfocusZipperList!2098 zl!343)))))

(declare-fun b!6857141 () Bool)

(assert (=> b!6857141 (= e!4134373 (Union!16681 (h!72666 (unfocusZipperList!2098 zl!343)) (generalisedUnion!2517 (t!380085 (unfocusZipperList!2098 zl!343)))))))

(declare-fun b!6857142 () Bool)

(declare-fun e!4134375 () Bool)

(declare-fun lt!2456778 () Regex!16681)

(declare-fun isEmptyLang!2020 (Regex!16681) Bool)

(assert (=> b!6857142 (= e!4134375 (isEmptyLang!2020 lt!2456778))))

(declare-fun b!6857143 () Bool)

(declare-fun e!4134376 () Bool)

(assert (=> b!6857143 (= e!4134375 e!4134376)))

(declare-fun c!1276394 () Bool)

(declare-fun isEmpty!38589 (List!66342) Bool)

(declare-fun tail!12814 (List!66342) List!66342)

(assert (=> b!6857143 (= c!1276394 (isEmpty!38589 (tail!12814 (unfocusZipperList!2098 zl!343))))))

(declare-fun b!6857144 () Bool)

(assert (=> b!6857144 (= e!4134376 (= lt!2456778 (head!13741 (unfocusZipperList!2098 zl!343))))))

(declare-fun e!4134374 () Bool)

(assert (=> d!2154852 e!4134374))

(declare-fun res!2798094 () Bool)

(assert (=> d!2154852 (=> (not res!2798094) (not e!4134374))))

(assert (=> d!2154852 (= res!2798094 (validRegex!8417 lt!2456778))))

(assert (=> d!2154852 (= lt!2456778 e!4134377)))

(declare-fun c!1276393 () Bool)

(declare-fun e!4134372 () Bool)

(assert (=> d!2154852 (= c!1276393 e!4134372)))

(declare-fun res!2798095 () Bool)

(assert (=> d!2154852 (=> (not res!2798095) (not e!4134372))))

(assert (=> d!2154852 (= res!2798095 ((_ is Cons!66218) (unfocusZipperList!2098 zl!343)))))

(assert (=> d!2154852 (forall!15860 (unfocusZipperList!2098 zl!343) lambda!387653)))

(assert (=> d!2154852 (= (generalisedUnion!2517 (unfocusZipperList!2098 zl!343)) lt!2456778)))

(declare-fun b!6857145 () Bool)

(assert (=> b!6857145 (= e!4134374 e!4134375)))

(declare-fun c!1276391 () Bool)

(assert (=> b!6857145 (= c!1276391 (isEmpty!38589 (unfocusZipperList!2098 zl!343)))))

(declare-fun b!6857146 () Bool)

(assert (=> b!6857146 (= e!4134377 (h!72666 (unfocusZipperList!2098 zl!343)))))

(declare-fun b!6857147 () Bool)

(assert (=> b!6857147 (= e!4134372 (isEmpty!38589 (t!380085 (unfocusZipperList!2098 zl!343))))))

(declare-fun b!6857148 () Bool)

(assert (=> b!6857148 (= e!4134373 EmptyLang!16681)))

(declare-fun b!6857149 () Bool)

(declare-fun isUnion!1450 (Regex!16681) Bool)

(assert (=> b!6857149 (= e!4134376 (isUnion!1450 lt!2456778))))

(assert (= (and d!2154852 res!2798095) b!6857147))

(assert (= (and d!2154852 c!1276393) b!6857146))

(assert (= (and d!2154852 (not c!1276393)) b!6857140))

(assert (= (and b!6857140 c!1276392) b!6857141))

(assert (= (and b!6857140 (not c!1276392)) b!6857148))

(assert (= (and d!2154852 res!2798094) b!6857145))

(assert (= (and b!6857145 c!1276391) b!6857142))

(assert (= (and b!6857145 (not c!1276391)) b!6857143))

(assert (= (and b!6857143 c!1276394) b!6857144))

(assert (= (and b!6857143 (not c!1276394)) b!6857149))

(declare-fun m!7593224 () Bool)

(assert (=> b!6857142 m!7593224))

(declare-fun m!7593226 () Bool)

(assert (=> d!2154852 m!7593226))

(assert (=> d!2154852 m!7592542))

(declare-fun m!7593228 () Bool)

(assert (=> d!2154852 m!7593228))

(assert (=> b!6857145 m!7592542))

(declare-fun m!7593230 () Bool)

(assert (=> b!6857145 m!7593230))

(assert (=> b!6857143 m!7592542))

(declare-fun m!7593232 () Bool)

(assert (=> b!6857143 m!7593232))

(assert (=> b!6857143 m!7593232))

(declare-fun m!7593234 () Bool)

(assert (=> b!6857143 m!7593234))

(declare-fun m!7593236 () Bool)

(assert (=> b!6857149 m!7593236))

(declare-fun m!7593238 () Bool)

(assert (=> b!6857147 m!7593238))

(declare-fun m!7593240 () Bool)

(assert (=> b!6857141 m!7593240))

(assert (=> b!6857144 m!7592542))

(declare-fun m!7593242 () Bool)

(assert (=> b!6857144 m!7593242))

(assert (=> d!2154672 d!2154852))

(assert (=> d!2154672 d!2154692))

(declare-fun d!2154874 () Bool)

(assert (=> d!2154874 (= (head!13738 s!2326) (h!72668 s!2326))))

(assert (=> b!6856316 d!2154874))

(declare-fun bs!1832881 () Bool)

(declare-fun d!2154876 () Bool)

(assert (= bs!1832881 (and d!2154876 d!2154832)))

(declare-fun lambda!387656 () Int)

(assert (=> bs!1832881 (not (= lambda!387656 lambda!387646))))

(declare-fun bs!1832882 () Bool)

(assert (= bs!1832882 (and d!2154876 d!2154828)))

(assert (=> bs!1832882 (not (= lambda!387656 lambda!387640))))

(declare-fun bs!1832883 () Bool)

(assert (= bs!1832883 (and d!2154876 b!6856019)))

(assert (=> bs!1832883 (not (= lambda!387656 lambda!387559))))

(declare-fun bs!1832884 () Bool)

(assert (= bs!1832884 (and d!2154876 d!2154688)))

(assert (=> bs!1832884 (not (= lambda!387656 lambda!387606))))

(declare-fun bs!1832885 () Bool)

(assert (= bs!1832885 (and d!2154876 d!2154686)))

(assert (=> bs!1832885 (not (= lambda!387656 lambda!387603))))

(declare-fun exists!2790 ((InoxSet Context!12130) Int) Bool)

(assert (=> d!2154876 (= (nullableZipper!2356 lt!2456623) (exists!2790 lt!2456623 lambda!387656))))

(declare-fun bs!1832886 () Bool)

(assert (= bs!1832886 d!2154876))

(declare-fun m!7593244 () Bool)

(assert (=> bs!1832886 m!7593244))

(assert (=> b!6856054 d!2154876))

(declare-fun d!2154878 () Bool)

(declare-fun res!2798100 () Bool)

(declare-fun e!4134382 () Bool)

(assert (=> d!2154878 (=> res!2798100 e!4134382)))

(assert (=> d!2154878 (= res!2798100 ((_ is Nil!66218) (exprs!6565 (h!72667 zl!343))))))

(assert (=> d!2154878 (= (forall!15860 (exprs!6565 (h!72667 zl!343)) lambda!387593) e!4134382)))

(declare-fun b!6857154 () Bool)

(declare-fun e!4134383 () Bool)

(assert (=> b!6857154 (= e!4134382 e!4134383)))

(declare-fun res!2798101 () Bool)

(assert (=> b!6857154 (=> (not res!2798101) (not e!4134383))))

(assert (=> b!6857154 (= res!2798101 (dynLambda!26473 lambda!387593 (h!72666 (exprs!6565 (h!72667 zl!343)))))))

(declare-fun b!6857155 () Bool)

(assert (=> b!6857155 (= e!4134383 (forall!15860 (t!380085 (exprs!6565 (h!72667 zl!343))) lambda!387593))))

(assert (= (and d!2154878 (not res!2798100)) b!6857154))

(assert (= (and b!6857154 res!2798101) b!6857155))

(declare-fun b_lambda!259039 () Bool)

(assert (=> (not b_lambda!259039) (not b!6857154)))

(declare-fun m!7593246 () Bool)

(assert (=> b!6857154 m!7593246))

(declare-fun m!7593248 () Bool)

(assert (=> b!6857155 m!7593248))

(assert (=> d!2154656 d!2154878))

(declare-fun d!2154880 () Bool)

(declare-fun res!2798106 () Bool)

(declare-fun e!4134388 () Bool)

(assert (=> d!2154880 (=> res!2798106 e!4134388)))

(assert (=> d!2154880 (= res!2798106 ((_ is Nil!66219) zl!343))))

(assert (=> d!2154880 (= (forall!15862 zl!343 lambda!387603) e!4134388)))

(declare-fun b!6857160 () Bool)

(declare-fun e!4134389 () Bool)

(assert (=> b!6857160 (= e!4134388 e!4134389)))

(declare-fun res!2798107 () Bool)

(assert (=> b!6857160 (=> (not res!2798107) (not e!4134389))))

(assert (=> b!6857160 (= res!2798107 (dynLambda!26471 lambda!387603 (h!72667 zl!343)))))

(declare-fun b!6857161 () Bool)

(assert (=> b!6857161 (= e!4134389 (forall!15862 (t!380086 zl!343) lambda!387603))))

(assert (= (and d!2154880 (not res!2798106)) b!6857160))

(assert (= (and b!6857160 res!2798107) b!6857161))

(declare-fun b_lambda!259041 () Bool)

(assert (=> (not b_lambda!259041) (not b!6857160)))

(declare-fun m!7593250 () Bool)

(assert (=> b!6857160 m!7593250))

(declare-fun m!7593252 () Bool)

(assert (=> b!6857161 m!7593252))

(assert (=> d!2154686 d!2154880))

(declare-fun d!2154882 () Bool)

(assert (=> d!2154882 (= (isEmpty!38587 (tail!12812 s!2326)) ((_ is Nil!66220) (tail!12812 s!2326)))))

(assert (=> b!6856314 d!2154882))

(declare-fun d!2154884 () Bool)

(assert (=> d!2154884 (= (tail!12812 s!2326) (t!380087 s!2326))))

(assert (=> b!6856314 d!2154884))

(declare-fun b!6857162 () Bool)

(declare-fun e!4134392 () Bool)

(declare-fun lt!2456779 () Bool)

(declare-fun call!624632 () Bool)

(assert (=> b!6857162 (= e!4134392 (= lt!2456779 call!624632))))

(declare-fun b!6857163 () Bool)

(declare-fun e!4134396 () Bool)

(declare-fun e!4134394 () Bool)

(assert (=> b!6857163 (= e!4134396 e!4134394)))

(declare-fun res!2798114 () Bool)

(assert (=> b!6857163 (=> (not res!2798114) (not e!4134394))))

(assert (=> b!6857163 (= res!2798114 (not lt!2456779))))

(declare-fun b!6857164 () Bool)

(declare-fun res!2798110 () Bool)

(declare-fun e!4134391 () Bool)

(assert (=> b!6857164 (=> res!2798110 e!4134391)))

(assert (=> b!6857164 (= res!2798110 (not (isEmpty!38587 (tail!12812 s!2326))))))

(declare-fun b!6857165 () Bool)

(declare-fun e!4134395 () Bool)

(assert (=> b!6857165 (= e!4134392 e!4134395)))

(declare-fun c!1276397 () Bool)

(assert (=> b!6857165 (= c!1276397 ((_ is EmptyLang!16681) lt!2456725))))

(declare-fun b!6857166 () Bool)

(assert (=> b!6857166 (= e!4134394 e!4134391)))

(declare-fun res!2798113 () Bool)

(assert (=> b!6857166 (=> res!2798113 e!4134391)))

(assert (=> b!6857166 (= res!2798113 call!624632)))

(declare-fun b!6857167 () Bool)

(declare-fun res!2798112 () Bool)

(declare-fun e!4134390 () Bool)

(assert (=> b!6857167 (=> (not res!2798112) (not e!4134390))))

(assert (=> b!6857167 (= res!2798112 (isEmpty!38587 (tail!12812 s!2326)))))

(declare-fun b!6857168 () Bool)

(declare-fun e!4134393 () Bool)

(assert (=> b!6857168 (= e!4134393 (nullable!6642 lt!2456725))))

(declare-fun b!6857169 () Bool)

(assert (=> b!6857169 (= e!4134391 (not (= (head!13738 s!2326) (c!1276127 lt!2456725))))))

(declare-fun b!6857170 () Bool)

(assert (=> b!6857170 (= e!4134390 (= (head!13738 s!2326) (c!1276127 lt!2456725)))))

(declare-fun b!6857171 () Bool)

(assert (=> b!6857171 (= e!4134395 (not lt!2456779))))

(declare-fun b!6857172 () Bool)

(declare-fun res!2798109 () Bool)

(assert (=> b!6857172 (=> res!2798109 e!4134396)))

(assert (=> b!6857172 (= res!2798109 e!4134390)))

(declare-fun res!2798108 () Bool)

(assert (=> b!6857172 (=> (not res!2798108) (not e!4134390))))

(assert (=> b!6857172 (= res!2798108 lt!2456779)))

(declare-fun d!2154886 () Bool)

(assert (=> d!2154886 e!4134392))

(declare-fun c!1276399 () Bool)

(assert (=> d!2154886 (= c!1276399 ((_ is EmptyExpr!16681) lt!2456725))))

(assert (=> d!2154886 (= lt!2456779 e!4134393)))

(declare-fun c!1276398 () Bool)

(assert (=> d!2154886 (= c!1276398 (isEmpty!38587 s!2326))))

(assert (=> d!2154886 (validRegex!8417 lt!2456725)))

(assert (=> d!2154886 (= (matchR!8864 lt!2456725 s!2326) lt!2456779)))

(declare-fun b!6857173 () Bool)

(declare-fun res!2798115 () Bool)

(assert (=> b!6857173 (=> res!2798115 e!4134396)))

(assert (=> b!6857173 (= res!2798115 (not ((_ is ElementMatch!16681) lt!2456725)))))

(assert (=> b!6857173 (= e!4134395 e!4134396)))

(declare-fun b!6857174 () Bool)

(assert (=> b!6857174 (= e!4134393 (matchR!8864 (derivativeStep!5325 lt!2456725 (head!13738 s!2326)) (tail!12812 s!2326)))))

(declare-fun b!6857175 () Bool)

(declare-fun res!2798111 () Bool)

(assert (=> b!6857175 (=> (not res!2798111) (not e!4134390))))

(assert (=> b!6857175 (= res!2798111 (not call!624632))))

(declare-fun bm!624627 () Bool)

(assert (=> bm!624627 (= call!624632 (isEmpty!38587 s!2326))))

(assert (= (and d!2154886 c!1276398) b!6857168))

(assert (= (and d!2154886 (not c!1276398)) b!6857174))

(assert (= (and d!2154886 c!1276399) b!6857162))

(assert (= (and d!2154886 (not c!1276399)) b!6857165))

(assert (= (and b!6857165 c!1276397) b!6857171))

(assert (= (and b!6857165 (not c!1276397)) b!6857173))

(assert (= (and b!6857173 (not res!2798115)) b!6857172))

(assert (= (and b!6857172 res!2798108) b!6857175))

(assert (= (and b!6857175 res!2798111) b!6857167))

(assert (= (and b!6857167 res!2798112) b!6857170))

(assert (= (and b!6857172 (not res!2798109)) b!6857163))

(assert (= (and b!6857163 res!2798114) b!6857166))

(assert (= (and b!6857166 (not res!2798113)) b!6857164))

(assert (= (and b!6857164 (not res!2798110)) b!6857169))

(assert (= (or b!6857162 b!6857175 b!6857166) bm!624627))

(declare-fun m!7593254 () Bool)

(assert (=> b!6857168 m!7593254))

(assert (=> b!6857167 m!7592564))

(assert (=> b!6857167 m!7592564))

(assert (=> b!6857167 m!7592694))

(assert (=> b!6857174 m!7592560))

(assert (=> b!6857174 m!7592560))

(declare-fun m!7593256 () Bool)

(assert (=> b!6857174 m!7593256))

(assert (=> b!6857174 m!7592564))

(assert (=> b!6857174 m!7593256))

(assert (=> b!6857174 m!7592564))

(declare-fun m!7593258 () Bool)

(assert (=> b!6857174 m!7593258))

(assert (=> d!2154886 m!7592556))

(assert (=> d!2154886 m!7592828))

(assert (=> b!6857170 m!7592560))

(assert (=> b!6857164 m!7592564))

(assert (=> b!6857164 m!7592564))

(assert (=> b!6857164 m!7592694))

(assert (=> bm!624627 m!7592556))

(assert (=> b!6857169 m!7592560))

(assert (=> b!6856587 d!2154886))

(declare-fun bs!1832887 () Bool)

(declare-fun d!2154888 () Bool)

(assert (= bs!1832887 (and d!2154888 d!2154676)))

(declare-fun lambda!387659 () Int)

(assert (=> bs!1832887 (= lambda!387659 lambda!387600)))

(declare-fun bs!1832888 () Bool)

(assert (= bs!1832888 (and d!2154888 d!2154690)))

(assert (=> bs!1832888 (= lambda!387659 lambda!387611)))

(declare-fun bs!1832889 () Bool)

(assert (= bs!1832889 (and d!2154888 d!2154842)))

(assert (=> bs!1832889 (= lambda!387659 lambda!387648)))

(declare-fun bs!1832890 () Bool)

(assert (= bs!1832890 (and d!2154888 b!6856039)))

(assert (=> bs!1832890 (not (= lambda!387659 lambda!387558))))

(declare-fun bs!1832891 () Bool)

(assert (= bs!1832891 (and d!2154888 d!2154656)))

(assert (=> bs!1832891 (= lambda!387659 lambda!387593)))

(declare-fun bs!1832892 () Bool)

(assert (= bs!1832892 (and d!2154888 d!2154586)))

(assert (=> bs!1832892 (not (= lambda!387659 lambda!387562))))

(declare-fun bs!1832893 () Bool)

(assert (= bs!1832893 (and d!2154888 d!2154852)))

(assert (=> bs!1832893 (= lambda!387659 lambda!387653)))

(assert (=> bs!1832888 (not (= lambda!387659 lambda!387612))))

(declare-fun bs!1832894 () Bool)

(assert (= bs!1832894 (and d!2154888 d!2154692)))

(assert (=> bs!1832894 (= lambda!387659 lambda!387615)))

(declare-fun e!4134409 () Bool)

(assert (=> d!2154888 e!4134409))

(declare-fun res!2798121 () Bool)

(assert (=> d!2154888 (=> (not res!2798121) (not e!4134409))))

(declare-fun lt!2456782 () Regex!16681)

(assert (=> d!2154888 (= res!2798121 (validRegex!8417 lt!2456782))))

(declare-fun e!4134413 () Regex!16681)

(assert (=> d!2154888 (= lt!2456782 e!4134413)))

(declare-fun c!1276411 () Bool)

(declare-fun e!4134412 () Bool)

(assert (=> d!2154888 (= c!1276411 e!4134412)))

(declare-fun res!2798120 () Bool)

(assert (=> d!2154888 (=> (not res!2798120) (not e!4134412))))

(assert (=> d!2154888 (= res!2798120 ((_ is Cons!66218) (exprs!6565 lt!2456653)))))

(assert (=> d!2154888 (forall!15860 (exprs!6565 lt!2456653) lambda!387659)))

(assert (=> d!2154888 (= (generalisedConcat!2270 (exprs!6565 lt!2456653)) lt!2456782)))

(declare-fun b!6857196 () Bool)

(assert (=> b!6857196 (= e!4134413 (h!72666 (exprs!6565 lt!2456653)))))

(declare-fun b!6857197 () Bool)

(assert (=> b!6857197 (= e!4134412 (isEmpty!38589 (t!380085 (exprs!6565 lt!2456653))))))

(declare-fun b!6857198 () Bool)

(declare-fun e!4134414 () Regex!16681)

(assert (=> b!6857198 (= e!4134414 (Concat!25526 (h!72666 (exprs!6565 lt!2456653)) (generalisedConcat!2270 (t!380085 (exprs!6565 lt!2456653)))))))

(declare-fun b!6857199 () Bool)

(declare-fun e!4134411 () Bool)

(declare-fun e!4134410 () Bool)

(assert (=> b!6857199 (= e!4134411 e!4134410)))

(declare-fun c!1276410 () Bool)

(assert (=> b!6857199 (= c!1276410 (isEmpty!38589 (tail!12814 (exprs!6565 lt!2456653))))))

(declare-fun b!6857200 () Bool)

(assert (=> b!6857200 (= e!4134409 e!4134411)))

(declare-fun c!1276408 () Bool)

(assert (=> b!6857200 (= c!1276408 (isEmpty!38589 (exprs!6565 lt!2456653)))))

(declare-fun b!6857201 () Bool)

(declare-fun isEmptyExpr!2010 (Regex!16681) Bool)

(assert (=> b!6857201 (= e!4134411 (isEmptyExpr!2010 lt!2456782))))

(declare-fun b!6857202 () Bool)

(assert (=> b!6857202 (= e!4134414 EmptyExpr!16681)))

(declare-fun b!6857203 () Bool)

(declare-fun isConcat!1533 (Regex!16681) Bool)

(assert (=> b!6857203 (= e!4134410 (isConcat!1533 lt!2456782))))

(declare-fun b!6857204 () Bool)

(assert (=> b!6857204 (= e!4134410 (= lt!2456782 (head!13741 (exprs!6565 lt!2456653))))))

(declare-fun b!6857205 () Bool)

(assert (=> b!6857205 (= e!4134413 e!4134414)))

(declare-fun c!1276409 () Bool)

(assert (=> b!6857205 (= c!1276409 ((_ is Cons!66218) (exprs!6565 lt!2456653)))))

(assert (= (and d!2154888 res!2798120) b!6857197))

(assert (= (and d!2154888 c!1276411) b!6857196))

(assert (= (and d!2154888 (not c!1276411)) b!6857205))

(assert (= (and b!6857205 c!1276409) b!6857198))

(assert (= (and b!6857205 (not c!1276409)) b!6857202))

(assert (= (and d!2154888 res!2798121) b!6857200))

(assert (= (and b!6857200 c!1276408) b!6857201))

(assert (= (and b!6857200 (not c!1276408)) b!6857199))

(assert (= (and b!6857199 c!1276410) b!6857204))

(assert (= (and b!6857199 (not c!1276410)) b!6857203))

(declare-fun m!7593260 () Bool)

(assert (=> b!6857197 m!7593260))

(declare-fun m!7593262 () Bool)

(assert (=> b!6857198 m!7593262))

(declare-fun m!7593264 () Bool)

(assert (=> b!6857199 m!7593264))

(assert (=> b!6857199 m!7593264))

(declare-fun m!7593266 () Bool)

(assert (=> b!6857199 m!7593266))

(declare-fun m!7593268 () Bool)

(assert (=> b!6857201 m!7593268))

(declare-fun m!7593270 () Bool)

(assert (=> d!2154888 m!7593270))

(declare-fun m!7593272 () Bool)

(assert (=> d!2154888 m!7593272))

(declare-fun m!7593274 () Bool)

(assert (=> b!6857200 m!7593274))

(declare-fun m!7593276 () Bool)

(assert (=> b!6857203 m!7593276))

(declare-fun m!7593278 () Bool)

(assert (=> b!6857204 m!7593278))

(assert (=> bs!1832720 d!2154888))

(assert (=> d!2154682 d!2154586))

(assert (=> b!6856311 d!2154882))

(assert (=> b!6856311 d!2154884))

(declare-fun d!2154890 () Bool)

(declare-fun nullableFct!2526 (Regex!16681) Bool)

(assert (=> d!2154890 (= (nullable!6642 (reg!17010 lt!2456625)) (nullableFct!2526 (reg!17010 lt!2456625)))))

(declare-fun bs!1832895 () Bool)

(assert (= bs!1832895 d!2154890))

(declare-fun m!7593280 () Bool)

(assert (=> bs!1832895 m!7593280))

(assert (=> b!6856366 d!2154890))

(declare-fun b!6857206 () Bool)

(declare-fun res!2798124 () Bool)

(declare-fun e!4134421 () Bool)

(assert (=> b!6857206 (=> res!2798124 e!4134421)))

(assert (=> b!6857206 (= res!2798124 (not ((_ is Concat!25526) lt!2456725)))))

(declare-fun e!4134419 () Bool)

(assert (=> b!6857206 (= e!4134419 e!4134421)))

(declare-fun b!6857207 () Bool)

(declare-fun e!4134418 () Bool)

(declare-fun e!4134415 () Bool)

(assert (=> b!6857207 (= e!4134418 e!4134415)))

(declare-fun c!1276412 () Bool)

(assert (=> b!6857207 (= c!1276412 ((_ is Star!16681) lt!2456725))))

(declare-fun b!6857208 () Bool)

(declare-fun e!4134416 () Bool)

(declare-fun call!624635 () Bool)

(assert (=> b!6857208 (= e!4134416 call!624635)))

(declare-fun b!6857209 () Bool)

(declare-fun e!4134417 () Bool)

(declare-fun call!624633 () Bool)

(assert (=> b!6857209 (= e!4134417 call!624633)))

(declare-fun b!6857210 () Bool)

(declare-fun res!2798125 () Bool)

(declare-fun e!4134420 () Bool)

(assert (=> b!6857210 (=> (not res!2798125) (not e!4134420))))

(declare-fun call!624634 () Bool)

(assert (=> b!6857210 (= res!2798125 call!624634)))

(assert (=> b!6857210 (= e!4134419 e!4134420)))

(declare-fun b!6857211 () Bool)

(assert (=> b!6857211 (= e!4134420 call!624633)))

(declare-fun b!6857212 () Bool)

(assert (=> b!6857212 (= e!4134415 e!4134419)))

(declare-fun c!1276413 () Bool)

(assert (=> b!6857212 (= c!1276413 ((_ is Union!16681) lt!2456725))))

(declare-fun b!6857213 () Bool)

(assert (=> b!6857213 (= e!4134421 e!4134417)))

(declare-fun res!2798126 () Bool)

(assert (=> b!6857213 (=> (not res!2798126) (not e!4134417))))

(assert (=> b!6857213 (= res!2798126 call!624634)))

(declare-fun b!6857214 () Bool)

(assert (=> b!6857214 (= e!4134415 e!4134416)))

(declare-fun res!2798122 () Bool)

(assert (=> b!6857214 (= res!2798122 (not (nullable!6642 (reg!17010 lt!2456725))))))

(assert (=> b!6857214 (=> (not res!2798122) (not e!4134416))))

(declare-fun bm!624628 () Bool)

(assert (=> bm!624628 (= call!624635 (validRegex!8417 (ite c!1276412 (reg!17010 lt!2456725) (ite c!1276413 (regTwo!33875 lt!2456725) (regTwo!33874 lt!2456725)))))))

(declare-fun d!2154892 () Bool)

(declare-fun res!2798123 () Bool)

(assert (=> d!2154892 (=> res!2798123 e!4134418)))

(assert (=> d!2154892 (= res!2798123 ((_ is ElementMatch!16681) lt!2456725))))

(assert (=> d!2154892 (= (validRegex!8417 lt!2456725) e!4134418)))

(declare-fun bm!624629 () Bool)

(assert (=> bm!624629 (= call!624634 (validRegex!8417 (ite c!1276413 (regOne!33875 lt!2456725) (regOne!33874 lt!2456725))))))

(declare-fun bm!624630 () Bool)

(assert (=> bm!624630 (= call!624633 call!624635)))

(assert (= (and d!2154892 (not res!2798123)) b!6857207))

(assert (= (and b!6857207 c!1276412) b!6857214))

(assert (= (and b!6857207 (not c!1276412)) b!6857212))

(assert (= (and b!6857214 res!2798122) b!6857208))

(assert (= (and b!6857212 c!1276413) b!6857210))

(assert (= (and b!6857212 (not c!1276413)) b!6857206))

(assert (= (and b!6857210 res!2798125) b!6857211))

(assert (= (and b!6857206 (not res!2798124)) b!6857213))

(assert (= (and b!6857213 res!2798126) b!6857209))

(assert (= (or b!6857211 b!6857209) bm!624630))

(assert (= (or b!6857210 b!6857213) bm!624629))

(assert (= (or b!6857208 bm!624630) bm!624628))

(declare-fun m!7593282 () Bool)

(assert (=> b!6857214 m!7593282))

(declare-fun m!7593284 () Bool)

(assert (=> bm!624628 m!7593284))

(declare-fun m!7593286 () Bool)

(assert (=> bm!624629 m!7593286))

(assert (=> bs!1832723 d!2154892))

(assert (=> b!6856480 d!2154874))

(assert (=> d!2154600 d!2154686))

(declare-fun b!6857215 () Bool)

(declare-fun res!2798129 () Bool)

(declare-fun e!4134428 () Bool)

(assert (=> b!6857215 (=> res!2798129 e!4134428)))

(assert (=> b!6857215 (= res!2798129 (not ((_ is Concat!25526) (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292)))))))

(declare-fun e!4134426 () Bool)

(assert (=> b!6857215 (= e!4134426 e!4134428)))

(declare-fun b!6857216 () Bool)

(declare-fun e!4134425 () Bool)

(declare-fun e!4134422 () Bool)

(assert (=> b!6857216 (= e!4134425 e!4134422)))

(declare-fun c!1276414 () Bool)

(assert (=> b!6857216 (= c!1276414 ((_ is Star!16681) (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))))))

(declare-fun b!6857217 () Bool)

(declare-fun e!4134423 () Bool)

(declare-fun call!624638 () Bool)

(assert (=> b!6857217 (= e!4134423 call!624638)))

(declare-fun b!6857218 () Bool)

(declare-fun e!4134424 () Bool)

(declare-fun call!624636 () Bool)

(assert (=> b!6857218 (= e!4134424 call!624636)))

(declare-fun b!6857219 () Bool)

(declare-fun res!2798130 () Bool)

(declare-fun e!4134427 () Bool)

(assert (=> b!6857219 (=> (not res!2798130) (not e!4134427))))

(declare-fun call!624637 () Bool)

(assert (=> b!6857219 (= res!2798130 call!624637)))

(assert (=> b!6857219 (= e!4134426 e!4134427)))

(declare-fun b!6857220 () Bool)

(assert (=> b!6857220 (= e!4134427 call!624636)))

(declare-fun b!6857221 () Bool)

(assert (=> b!6857221 (= e!4134422 e!4134426)))

(declare-fun c!1276415 () Bool)

(assert (=> b!6857221 (= c!1276415 ((_ is Union!16681) (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))))))

(declare-fun b!6857222 () Bool)

(assert (=> b!6857222 (= e!4134428 e!4134424)))

(declare-fun res!2798131 () Bool)

(assert (=> b!6857222 (=> (not res!2798131) (not e!4134424))))

(assert (=> b!6857222 (= res!2798131 call!624637)))

(declare-fun b!6857223 () Bool)

(assert (=> b!6857223 (= e!4134422 e!4134423)))

(declare-fun res!2798127 () Bool)

(assert (=> b!6857223 (= res!2798127 (not (nullable!6642 (reg!17010 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))))))))

(assert (=> b!6857223 (=> (not res!2798127) (not e!4134423))))

(declare-fun bm!624631 () Bool)

(assert (=> bm!624631 (= call!624638 (validRegex!8417 (ite c!1276414 (reg!17010 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))) (ite c!1276415 (regTwo!33875 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))) (regTwo!33874 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292)))))))))

(declare-fun d!2154894 () Bool)

(declare-fun res!2798128 () Bool)

(assert (=> d!2154894 (=> res!2798128 e!4134425)))

(assert (=> d!2154894 (= res!2798128 ((_ is ElementMatch!16681) (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))))))

(assert (=> d!2154894 (= (validRegex!8417 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))) e!4134425)))

(declare-fun bm!624632 () Bool)

(assert (=> bm!624632 (= call!624637 (validRegex!8417 (ite c!1276415 (regOne!33875 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))) (regOne!33874 (ite c!1276244 (regOne!33875 r!7292) (regOne!33874 r!7292))))))))

(declare-fun bm!624633 () Bool)

(assert (=> bm!624633 (= call!624636 call!624638)))

(assert (= (and d!2154894 (not res!2798128)) b!6857216))

(assert (= (and b!6857216 c!1276414) b!6857223))

(assert (= (and b!6857216 (not c!1276414)) b!6857221))

(assert (= (and b!6857223 res!2798127) b!6857217))

(assert (= (and b!6857221 c!1276415) b!6857219))

(assert (= (and b!6857221 (not c!1276415)) b!6857215))

(assert (= (and b!6857219 res!2798130) b!6857220))

(assert (= (and b!6857215 (not res!2798129)) b!6857222))

(assert (= (and b!6857222 res!2798131) b!6857218))

(assert (= (or b!6857220 b!6857218) bm!624633))

(assert (= (or b!6857219 b!6857222) bm!624632))

(assert (= (or b!6857217 bm!624633) bm!624631))

(declare-fun m!7593288 () Bool)

(assert (=> b!6857223 m!7593288))

(declare-fun m!7593290 () Bool)

(assert (=> bm!624631 m!7593290))

(declare-fun m!7593292 () Bool)

(assert (=> bm!624632 m!7593292))

(assert (=> bm!624565 d!2154894))

(declare-fun d!2154896 () Bool)

(assert (=> d!2154896 (= (nullable!6642 r!7292) (nullableFct!2526 r!7292))))

(declare-fun bs!1832896 () Bool)

(assert (= bs!1832896 d!2154896))

(declare-fun m!7593294 () Bool)

(assert (=> bs!1832896 m!7593294))

(assert (=> b!6856478 d!2154896))

(assert (=> d!2154690 d!2154668))

(declare-fun bs!1832897 () Bool)

(declare-fun d!2154898 () Bool)

(assert (= bs!1832897 (and d!2154898 d!2154676)))

(declare-fun lambda!387660 () Int)

(assert (=> bs!1832897 (not (= lambda!387660 lambda!387600))))

(declare-fun bs!1832898 () Bool)

(assert (= bs!1832898 (and d!2154898 d!2154690)))

(assert (=> bs!1832898 (not (= lambda!387660 lambda!387611))))

(declare-fun bs!1832899 () Bool)

(assert (= bs!1832899 (and d!2154898 d!2154842)))

(assert (=> bs!1832899 (not (= lambda!387660 lambda!387648))))

(declare-fun bs!1832900 () Bool)

(assert (= bs!1832900 (and d!2154898 b!6856039)))

(assert (=> bs!1832900 (not (= lambda!387660 lambda!387558))))

(declare-fun bs!1832901 () Bool)

(assert (= bs!1832901 (and d!2154898 d!2154656)))

(assert (=> bs!1832901 (not (= lambda!387660 lambda!387593))))

(declare-fun bs!1832902 () Bool)

(assert (= bs!1832902 (and d!2154898 d!2154586)))

(assert (=> bs!1832902 (= (= lambda!387612 lambda!387558) (= lambda!387660 lambda!387562))))

(declare-fun bs!1832903 () Bool)

(assert (= bs!1832903 (and d!2154898 d!2154888)))

(assert (=> bs!1832903 (not (= lambda!387660 lambda!387659))))

(declare-fun bs!1832904 () Bool)

(assert (= bs!1832904 (and d!2154898 d!2154852)))

(assert (=> bs!1832904 (not (= lambda!387660 lambda!387653))))

(assert (=> bs!1832898 (not (= lambda!387660 lambda!387612))))

(declare-fun bs!1832905 () Bool)

(assert (= bs!1832905 (and d!2154898 d!2154692)))

(assert (=> bs!1832905 (not (= lambda!387660 lambda!387615))))

(assert (=> d!2154898 true))

(assert (=> d!2154898 (< (dynLambda!26469 order!27665 lambda!387612) (dynLambda!26469 order!27665 lambda!387660))))

(assert (=> d!2154898 (= (exists!2789 lt!2456629 lambda!387612) (not (forall!15860 lt!2456629 lambda!387660)))))

(declare-fun bs!1832906 () Bool)

(assert (= bs!1832906 d!2154898))

(declare-fun m!7593296 () Bool)

(assert (=> bs!1832906 m!7593296))

(assert (=> d!2154690 d!2154898))

(declare-fun bs!1832907 () Bool)

(declare-fun d!2154900 () Bool)

(assert (= bs!1832907 (and d!2154900 d!2154676)))

(declare-fun lambda!387663 () Int)

(assert (=> bs!1832907 (not (= lambda!387663 lambda!387600))))

(declare-fun bs!1832908 () Bool)

(assert (= bs!1832908 (and d!2154900 d!2154898)))

(assert (=> bs!1832908 (not (= lambda!387663 lambda!387660))))

(declare-fun bs!1832909 () Bool)

(assert (= bs!1832909 (and d!2154900 d!2154690)))

(assert (=> bs!1832909 (not (= lambda!387663 lambda!387611))))

(declare-fun bs!1832910 () Bool)

(assert (= bs!1832910 (and d!2154900 d!2154842)))

(assert (=> bs!1832910 (not (= lambda!387663 lambda!387648))))

(declare-fun bs!1832911 () Bool)

(assert (= bs!1832911 (and d!2154900 b!6856039)))

(assert (=> bs!1832911 (= lambda!387663 lambda!387558)))

(declare-fun bs!1832912 () Bool)

(assert (= bs!1832912 (and d!2154900 d!2154656)))

(assert (=> bs!1832912 (not (= lambda!387663 lambda!387593))))

(declare-fun bs!1832913 () Bool)

(assert (= bs!1832913 (and d!2154900 d!2154586)))

(assert (=> bs!1832913 (not (= lambda!387663 lambda!387562))))

(declare-fun bs!1832914 () Bool)

(assert (= bs!1832914 (and d!2154900 d!2154888)))

(assert (=> bs!1832914 (not (= lambda!387663 lambda!387659))))

(declare-fun bs!1832915 () Bool)

(assert (= bs!1832915 (and d!2154900 d!2154852)))

(assert (=> bs!1832915 (not (= lambda!387663 lambda!387653))))

(assert (=> bs!1832909 (= lambda!387663 lambda!387612)))

(declare-fun bs!1832916 () Bool)

(assert (= bs!1832916 (and d!2154900 d!2154692)))

(assert (=> bs!1832916 (not (= lambda!387663 lambda!387615))))

(assert (=> d!2154900 true))

(assert (=> d!2154900 (= (matchR!8864 r!7292 s!2326) (exists!2789 lt!2456629 lambda!387663))))

(assert (=> d!2154900 true))

(declare-fun _$85!209 () Unit!160101)

(assert (=> d!2154900 (= (choose!51077 r!7292 lt!2456629 s!2326) _$85!209)))

(declare-fun bs!1832917 () Bool)

(assert (= bs!1832917 d!2154900))

(assert (=> bs!1832917 m!7592526))

(declare-fun m!7593298 () Bool)

(assert (=> bs!1832917 m!7593298))

(assert (=> d!2154690 d!2154900))

(declare-fun d!2154902 () Bool)

(declare-fun res!2798134 () Bool)

(declare-fun e!4134431 () Bool)

(assert (=> d!2154902 (=> res!2798134 e!4134431)))

(assert (=> d!2154902 (= res!2798134 ((_ is Nil!66218) lt!2456629))))

(assert (=> d!2154902 (= (forall!15860 lt!2456629 lambda!387611) e!4134431)))

(declare-fun b!6857226 () Bool)

(declare-fun e!4134432 () Bool)

(assert (=> b!6857226 (= e!4134431 e!4134432)))

(declare-fun res!2798135 () Bool)

(assert (=> b!6857226 (=> (not res!2798135) (not e!4134432))))

(assert (=> b!6857226 (= res!2798135 (dynLambda!26473 lambda!387611 (h!72666 lt!2456629)))))

(declare-fun b!6857227 () Bool)

(assert (=> b!6857227 (= e!4134432 (forall!15860 (t!380085 lt!2456629) lambda!387611))))

(assert (= (and d!2154902 (not res!2798134)) b!6857226))

(assert (= (and b!6857226 res!2798135) b!6857227))

(declare-fun b_lambda!259043 () Bool)

(assert (=> (not b_lambda!259043) (not b!6857226)))

(declare-fun m!7593300 () Bool)

(assert (=> b!6857226 m!7593300))

(declare-fun m!7593302 () Bool)

(assert (=> b!6857227 m!7593302))

(assert (=> d!2154690 d!2154902))

(assert (=> b!6856474 d!2154882))

(assert (=> b!6856474 d!2154884))

(declare-fun d!2154904 () Bool)

(assert (=> d!2154904 (= (nullable!6642 (reg!17010 r!7292)) (nullableFct!2526 (reg!17010 r!7292)))))

(declare-fun bs!1832918 () Bool)

(assert (= bs!1832918 d!2154904))

(declare-fun m!7593304 () Bool)

(assert (=> bs!1832918 m!7593304))

(assert (=> b!6856521 d!2154904))

(declare-fun d!2154906 () Bool)

(assert (=> d!2154906 (= (isEmpty!38587 s!2326) ((_ is Nil!66220) s!2326))))

(assert (=> d!2154624 d!2154906))

(assert (=> d!2154624 d!2154644))

(declare-fun d!2154908 () Bool)

(declare-fun res!2798136 () Bool)

(declare-fun e!4134433 () Bool)

(assert (=> d!2154908 (=> res!2798136 e!4134433)))

(assert (=> d!2154908 (= res!2798136 ((_ is Nil!66218) lt!2456734))))

(assert (=> d!2154908 (= (forall!15860 lt!2456734 lambda!387615) e!4134433)))

(declare-fun b!6857228 () Bool)

(declare-fun e!4134434 () Bool)

(assert (=> b!6857228 (= e!4134433 e!4134434)))

(declare-fun res!2798137 () Bool)

(assert (=> b!6857228 (=> (not res!2798137) (not e!4134434))))

(assert (=> b!6857228 (= res!2798137 (dynLambda!26473 lambda!387615 (h!72666 lt!2456734)))))

(declare-fun b!6857229 () Bool)

(assert (=> b!6857229 (= e!4134434 (forall!15860 (t!380085 lt!2456734) lambda!387615))))

(assert (= (and d!2154908 (not res!2798136)) b!6857228))

(assert (= (and b!6857228 res!2798137) b!6857229))

(declare-fun b_lambda!259045 () Bool)

(assert (=> (not b_lambda!259045) (not b!6857228)))

(declare-fun m!7593306 () Bool)

(assert (=> b!6857228 m!7593306))

(declare-fun m!7593308 () Bool)

(assert (=> b!6857229 m!7593308))

(assert (=> d!2154692 d!2154908))

(assert (=> d!2154594 d!2154624))

(assert (=> d!2154594 d!2154588))

(declare-fun d!2154910 () Bool)

(assert (=> d!2154910 (= (matchR!8864 lt!2456625 s!2326) (matchZipper!2647 lt!2456623 s!2326))))

(assert (=> d!2154910 true))

(declare-fun _$44!1808 () Unit!160101)

(assert (=> d!2154910 (= (choose!51069 lt!2456623 lt!2456632 lt!2456625 s!2326) _$44!1808)))

(declare-fun bs!1832919 () Bool)

(assert (= bs!1832919 d!2154910))

(assert (=> bs!1832919 m!7592518))

(assert (=> bs!1832919 m!7592546))

(assert (=> d!2154594 d!2154910))

(assert (=> d!2154594 d!2154644))

(assert (=> d!2154668 d!2154906))

(assert (=> d!2154668 d!2154684))

(declare-fun d!2154912 () Bool)

(assert (=> d!2154912 (= (head!13741 lt!2456629) (h!72666 lt!2456629))))

(assert (=> b!6856507 d!2154912))

(declare-fun b!6857230 () Bool)

(declare-fun e!4134437 () Bool)

(declare-fun lt!2456783 () Bool)

(declare-fun call!624639 () Bool)

(assert (=> b!6857230 (= e!4134437 (= lt!2456783 call!624639))))

(declare-fun b!6857231 () Bool)

(declare-fun e!4134441 () Bool)

(declare-fun e!4134439 () Bool)

(assert (=> b!6857231 (= e!4134441 e!4134439)))

(declare-fun res!2798144 () Bool)

(assert (=> b!6857231 (=> (not res!2798144) (not e!4134439))))

(assert (=> b!6857231 (= res!2798144 (not lt!2456783))))

(declare-fun b!6857232 () Bool)

(declare-fun res!2798140 () Bool)

(declare-fun e!4134436 () Bool)

(assert (=> b!6857232 (=> res!2798140 e!4134436)))

(assert (=> b!6857232 (= res!2798140 (not (isEmpty!38587 (tail!12812 (tail!12812 s!2326)))))))

(declare-fun b!6857233 () Bool)

(declare-fun e!4134440 () Bool)

(assert (=> b!6857233 (= e!4134437 e!4134440)))

(declare-fun c!1276416 () Bool)

(assert (=> b!6857233 (= c!1276416 ((_ is EmptyLang!16681) (derivativeStep!5325 lt!2456625 (head!13738 s!2326))))))

(declare-fun b!6857234 () Bool)

(assert (=> b!6857234 (= e!4134439 e!4134436)))

(declare-fun res!2798143 () Bool)

(assert (=> b!6857234 (=> res!2798143 e!4134436)))

(assert (=> b!6857234 (= res!2798143 call!624639)))

(declare-fun b!6857235 () Bool)

(declare-fun res!2798142 () Bool)

(declare-fun e!4134435 () Bool)

(assert (=> b!6857235 (=> (not res!2798142) (not e!4134435))))

(assert (=> b!6857235 (= res!2798142 (isEmpty!38587 (tail!12812 (tail!12812 s!2326))))))

(declare-fun b!6857236 () Bool)

(declare-fun e!4134438 () Bool)

(assert (=> b!6857236 (= e!4134438 (nullable!6642 (derivativeStep!5325 lt!2456625 (head!13738 s!2326))))))

(declare-fun b!6857237 () Bool)

(assert (=> b!6857237 (= e!4134436 (not (= (head!13738 (tail!12812 s!2326)) (c!1276127 (derivativeStep!5325 lt!2456625 (head!13738 s!2326))))))))

(declare-fun b!6857238 () Bool)

(assert (=> b!6857238 (= e!4134435 (= (head!13738 (tail!12812 s!2326)) (c!1276127 (derivativeStep!5325 lt!2456625 (head!13738 s!2326)))))))

(declare-fun b!6857239 () Bool)

(assert (=> b!6857239 (= e!4134440 (not lt!2456783))))

(declare-fun b!6857240 () Bool)

(declare-fun res!2798139 () Bool)

(assert (=> b!6857240 (=> res!2798139 e!4134441)))

(assert (=> b!6857240 (= res!2798139 e!4134435)))

(declare-fun res!2798138 () Bool)

(assert (=> b!6857240 (=> (not res!2798138) (not e!4134435))))

(assert (=> b!6857240 (= res!2798138 lt!2456783)))

(declare-fun d!2154914 () Bool)

(assert (=> d!2154914 e!4134437))

(declare-fun c!1276418 () Bool)

(assert (=> d!2154914 (= c!1276418 ((_ is EmptyExpr!16681) (derivativeStep!5325 lt!2456625 (head!13738 s!2326))))))

(assert (=> d!2154914 (= lt!2456783 e!4134438)))

(declare-fun c!1276417 () Bool)

(assert (=> d!2154914 (= c!1276417 (isEmpty!38587 (tail!12812 s!2326)))))

(assert (=> d!2154914 (validRegex!8417 (derivativeStep!5325 lt!2456625 (head!13738 s!2326)))))

(assert (=> d!2154914 (= (matchR!8864 (derivativeStep!5325 lt!2456625 (head!13738 s!2326)) (tail!12812 s!2326)) lt!2456783)))

(declare-fun b!6857241 () Bool)

(declare-fun res!2798145 () Bool)

(assert (=> b!6857241 (=> res!2798145 e!4134441)))

(assert (=> b!6857241 (= res!2798145 (not ((_ is ElementMatch!16681) (derivativeStep!5325 lt!2456625 (head!13738 s!2326)))))))

(assert (=> b!6857241 (= e!4134440 e!4134441)))

(declare-fun b!6857242 () Bool)

(assert (=> b!6857242 (= e!4134438 (matchR!8864 (derivativeStep!5325 (derivativeStep!5325 lt!2456625 (head!13738 s!2326)) (head!13738 (tail!12812 s!2326))) (tail!12812 (tail!12812 s!2326))))))

(declare-fun b!6857243 () Bool)

(declare-fun res!2798141 () Bool)

(assert (=> b!6857243 (=> (not res!2798141) (not e!4134435))))

(assert (=> b!6857243 (= res!2798141 (not call!624639))))

(declare-fun bm!624634 () Bool)

(assert (=> bm!624634 (= call!624639 (isEmpty!38587 (tail!12812 s!2326)))))

(assert (= (and d!2154914 c!1276417) b!6857236))

(assert (= (and d!2154914 (not c!1276417)) b!6857242))

(assert (= (and d!2154914 c!1276418) b!6857230))

(assert (= (and d!2154914 (not c!1276418)) b!6857233))

(assert (= (and b!6857233 c!1276416) b!6857239))

(assert (= (and b!6857233 (not c!1276416)) b!6857241))

(assert (= (and b!6857241 (not res!2798145)) b!6857240))

(assert (= (and b!6857240 res!2798138) b!6857243))

(assert (= (and b!6857243 res!2798141) b!6857235))

(assert (= (and b!6857235 res!2798142) b!6857238))

(assert (= (and b!6857240 (not res!2798139)) b!6857231))

(assert (= (and b!6857231 res!2798144) b!6857234))

(assert (= (and b!6857234 (not res!2798143)) b!6857232))

(assert (= (and b!6857232 (not res!2798140)) b!6857237))

(assert (= (or b!6857230 b!6857243 b!6857234) bm!624634))

(assert (=> b!6857236 m!7592696))

(declare-fun m!7593310 () Bool)

(assert (=> b!6857236 m!7593310))

(assert (=> b!6857235 m!7592564))

(declare-fun m!7593312 () Bool)

(assert (=> b!6857235 m!7593312))

(assert (=> b!6857235 m!7593312))

(declare-fun m!7593314 () Bool)

(assert (=> b!6857235 m!7593314))

(assert (=> b!6857242 m!7592564))

(declare-fun m!7593316 () Bool)

(assert (=> b!6857242 m!7593316))

(assert (=> b!6857242 m!7592696))

(assert (=> b!6857242 m!7593316))

(declare-fun m!7593318 () Bool)

(assert (=> b!6857242 m!7593318))

(assert (=> b!6857242 m!7592564))

(assert (=> b!6857242 m!7593312))

(assert (=> b!6857242 m!7593318))

(assert (=> b!6857242 m!7593312))

(declare-fun m!7593320 () Bool)

(assert (=> b!6857242 m!7593320))

(assert (=> d!2154914 m!7592564))

(assert (=> d!2154914 m!7592694))

(assert (=> d!2154914 m!7592696))

(declare-fun m!7593322 () Bool)

(assert (=> d!2154914 m!7593322))

(assert (=> b!6857238 m!7592564))

(assert (=> b!6857238 m!7593316))

(assert (=> b!6857232 m!7592564))

(assert (=> b!6857232 m!7593312))

(assert (=> b!6857232 m!7593312))

(assert (=> b!6857232 m!7593314))

(assert (=> bm!624634 m!7592564))

(assert (=> bm!624634 m!7592694))

(assert (=> b!6857237 m!7592564))

(assert (=> b!6857237 m!7593316))

(assert (=> b!6856321 d!2154914))

(declare-fun b!6857264 () Bool)

(declare-fun e!4134453 () Regex!16681)

(declare-fun call!624649 () Regex!16681)

(assert (=> b!6857264 (= e!4134453 (Union!16681 (Concat!25526 call!624649 (regTwo!33874 lt!2456625)) EmptyLang!16681))))

(declare-fun call!624650 () Regex!16681)

(declare-fun c!1276430 () Bool)

(declare-fun c!1276431 () Bool)

(declare-fun bm!624643 () Bool)

(declare-fun c!1276429 () Bool)

(assert (=> bm!624643 (= call!624650 (derivativeStep!5325 (ite c!1276430 (regTwo!33875 lt!2456625) (ite c!1276431 (reg!17010 lt!2456625) (ite c!1276429 (regTwo!33874 lt!2456625) (regOne!33874 lt!2456625)))) (head!13738 s!2326)))))

(declare-fun bm!624644 () Bool)

(declare-fun call!624651 () Regex!16681)

(assert (=> bm!624644 (= call!624651 call!624650)))

(declare-fun b!6857265 () Bool)

(assert (=> b!6857265 (= c!1276430 ((_ is Union!16681) lt!2456625))))

(declare-fun e!4134455 () Regex!16681)

(declare-fun e!4134456 () Regex!16681)

(assert (=> b!6857265 (= e!4134455 e!4134456)))

(declare-fun call!624648 () Regex!16681)

(declare-fun bm!624645 () Bool)

(assert (=> bm!624645 (= call!624648 (derivativeStep!5325 (ite c!1276430 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625)) (head!13738 s!2326)))))

(declare-fun d!2154916 () Bool)

(declare-fun lt!2456786 () Regex!16681)

(assert (=> d!2154916 (validRegex!8417 lt!2456786)))

(declare-fun e!4134452 () Regex!16681)

(assert (=> d!2154916 (= lt!2456786 e!4134452)))

(declare-fun c!1276433 () Bool)

(assert (=> d!2154916 (= c!1276433 (or ((_ is EmptyExpr!16681) lt!2456625) ((_ is EmptyLang!16681) lt!2456625)))))

(assert (=> d!2154916 (validRegex!8417 lt!2456625)))

(assert (=> d!2154916 (= (derivativeStep!5325 lt!2456625 (head!13738 s!2326)) lt!2456786)))

(declare-fun b!6857266 () Bool)

(declare-fun e!4134454 () Regex!16681)

(assert (=> b!6857266 (= e!4134454 (Concat!25526 call!624651 lt!2456625))))

(declare-fun b!6857267 () Bool)

(assert (=> b!6857267 (= e!4134453 (Union!16681 (Concat!25526 call!624648 (regTwo!33874 lt!2456625)) call!624649))))

(declare-fun b!6857268 () Bool)

(assert (=> b!6857268 (= e!4134455 (ite (= (head!13738 s!2326) (c!1276127 lt!2456625)) EmptyExpr!16681 EmptyLang!16681))))

(declare-fun b!6857269 () Bool)

(assert (=> b!6857269 (= e!4134452 EmptyLang!16681)))

(declare-fun b!6857270 () Bool)

(assert (=> b!6857270 (= e!4134452 e!4134455)))

(declare-fun c!1276432 () Bool)

(assert (=> b!6857270 (= c!1276432 ((_ is ElementMatch!16681) lt!2456625))))

(declare-fun b!6857271 () Bool)

(assert (=> b!6857271 (= c!1276429 (nullable!6642 (regOne!33874 lt!2456625)))))

(assert (=> b!6857271 (= e!4134454 e!4134453)))

(declare-fun b!6857272 () Bool)

(assert (=> b!6857272 (= e!4134456 e!4134454)))

(assert (=> b!6857272 (= c!1276431 ((_ is Star!16681) lt!2456625))))

(declare-fun bm!624646 () Bool)

(assert (=> bm!624646 (= call!624649 call!624651)))

(declare-fun b!6857273 () Bool)

(assert (=> b!6857273 (= e!4134456 (Union!16681 call!624648 call!624650))))

(assert (= (and d!2154916 c!1276433) b!6857269))

(assert (= (and d!2154916 (not c!1276433)) b!6857270))

(assert (= (and b!6857270 c!1276432) b!6857268))

(assert (= (and b!6857270 (not c!1276432)) b!6857265))

(assert (= (and b!6857265 c!1276430) b!6857273))

(assert (= (and b!6857265 (not c!1276430)) b!6857272))

(assert (= (and b!6857272 c!1276431) b!6857266))

(assert (= (and b!6857272 (not c!1276431)) b!6857271))

(assert (= (and b!6857271 c!1276429) b!6857267))

(assert (= (and b!6857271 (not c!1276429)) b!6857264))

(assert (= (or b!6857267 b!6857264) bm!624646))

(assert (= (or b!6857266 bm!624646) bm!624644))

(assert (= (or b!6857273 bm!624644) bm!624643))

(assert (= (or b!6857273 b!6857267) bm!624645))

(assert (=> bm!624643 m!7592560))

(declare-fun m!7593324 () Bool)

(assert (=> bm!624643 m!7593324))

(assert (=> bm!624645 m!7592560))

(declare-fun m!7593326 () Bool)

(assert (=> bm!624645 m!7593326))

(declare-fun m!7593328 () Bool)

(assert (=> d!2154916 m!7593328))

(assert (=> d!2154916 m!7592498))

(declare-fun m!7593330 () Bool)

(assert (=> b!6857271 m!7593330))

(assert (=> b!6856321 d!2154916))

(assert (=> b!6856321 d!2154874))

(assert (=> b!6856321 d!2154884))

(declare-fun d!2154918 () Bool)

(declare-fun c!1276436 () Bool)

(assert (=> d!2154918 (= c!1276436 ((_ is Nil!66219) lt!2456716))))

(declare-fun e!4134459 () (InoxSet Context!12130))

(assert (=> d!2154918 (= (content!12989 lt!2456716) e!4134459)))

(declare-fun b!6857278 () Bool)

(assert (=> b!6857278 (= e!4134459 ((as const (Array Context!12130 Bool)) false))))

(declare-fun b!6857279 () Bool)

(assert (=> b!6857279 (= e!4134459 ((_ map or) (store ((as const (Array Context!12130 Bool)) false) (h!72667 lt!2456716) true) (content!12989 (t!380086 lt!2456716))))))

(assert (= (and d!2154918 c!1276436) b!6857278))

(assert (= (and d!2154918 (not c!1276436)) b!6857279))

(declare-fun m!7593332 () Bool)

(assert (=> b!6857279 m!7593332))

(declare-fun m!7593334 () Bool)

(assert (=> b!6857279 m!7593334))

(assert (=> b!6856488 d!2154918))

(assert (=> bm!624547 d!2154906))

(declare-fun d!2154920 () Bool)

(declare-fun lt!2456789 () Bool)

(assert (=> d!2154920 (= lt!2456789 (select (content!12989 zl!343) lt!2456653))))

(declare-fun e!4134464 () Bool)

(assert (=> d!2154920 (= lt!2456789 e!4134464)))

(declare-fun res!2798150 () Bool)

(assert (=> d!2154920 (=> (not res!2798150) (not e!4134464))))

(assert (=> d!2154920 (= res!2798150 ((_ is Cons!66219) zl!343))))

(assert (=> d!2154920 (= (contains!20337 zl!343 lt!2456653) lt!2456789)))

(declare-fun b!6857284 () Bool)

(declare-fun e!4134465 () Bool)

(assert (=> b!6857284 (= e!4134464 e!4134465)))

(declare-fun res!2798151 () Bool)

(assert (=> b!6857284 (=> res!2798151 e!4134465)))

(assert (=> b!6857284 (= res!2798151 (= (h!72667 zl!343) lt!2456653))))

(declare-fun b!6857285 () Bool)

(assert (=> b!6857285 (= e!4134465 (contains!20337 (t!380086 zl!343) lt!2456653))))

(assert (= (and d!2154920 res!2798150) b!6857284))

(assert (= (and b!6857284 (not res!2798151)) b!6857285))

(declare-fun m!7593336 () Bool)

(assert (=> d!2154920 m!7593336))

(declare-fun m!7593338 () Bool)

(assert (=> d!2154920 m!7593338))

(declare-fun m!7593340 () Bool)

(assert (=> b!6857285 m!7593340))

(assert (=> b!6856195 d!2154920))

(declare-fun d!2154922 () Bool)

(declare-fun lt!2456790 () Int)

(assert (=> d!2154922 (>= lt!2456790 0)))

(declare-fun e!4134466 () Int)

(assert (=> d!2154922 (= lt!2456790 e!4134466)))

(declare-fun c!1276437 () Bool)

(assert (=> d!2154922 (= c!1276437 ((_ is Cons!66218) (exprs!6565 (h!72667 lt!2456632))))))

(assert (=> d!2154922 (= (contextDepthTotal!408 (h!72667 lt!2456632)) lt!2456790)))

(declare-fun b!6857286 () Bool)

(assert (=> b!6857286 (= e!4134466 (+ (regexDepthTotal!253 (h!72666 (exprs!6565 (h!72667 lt!2456632)))) (contextDepthTotal!408 (Context!12131 (t!380085 (exprs!6565 (h!72667 lt!2456632)))))))))

(declare-fun b!6857287 () Bool)

(assert (=> b!6857287 (= e!4134466 1)))

(assert (= (and d!2154922 c!1276437) b!6857286))

(assert (= (and d!2154922 (not c!1276437)) b!6857287))

(declare-fun m!7593342 () Bool)

(assert (=> b!6857286 m!7593342))

(declare-fun m!7593344 () Bool)

(assert (=> b!6857286 m!7593344))

(assert (=> b!6856130 d!2154922))

(declare-fun d!2154924 () Bool)

(declare-fun lt!2456791 () Int)

(assert (=> d!2154924 (>= lt!2456791 0)))

(declare-fun e!4134467 () Int)

(assert (=> d!2154924 (= lt!2456791 e!4134467)))

(declare-fun c!1276438 () Bool)

(assert (=> d!2154924 (= c!1276438 ((_ is Cons!66219) (t!380086 lt!2456632)))))

(assert (=> d!2154924 (= (zipperDepthTotal!436 (t!380086 lt!2456632)) lt!2456791)))

(declare-fun b!6857288 () Bool)

(assert (=> b!6857288 (= e!4134467 (+ (contextDepthTotal!408 (h!72667 (t!380086 lt!2456632))) (zipperDepthTotal!436 (t!380086 (t!380086 lt!2456632)))))))

(declare-fun b!6857289 () Bool)

(assert (=> b!6857289 (= e!4134467 0)))

(assert (= (and d!2154924 c!1276438) b!6857288))

(assert (= (and d!2154924 (not c!1276438)) b!6857289))

(declare-fun m!7593346 () Bool)

(assert (=> b!6857288 m!7593346))

(declare-fun m!7593348 () Bool)

(assert (=> b!6857288 m!7593348))

(assert (=> b!6856130 d!2154924))

(assert (=> d!2154620 d!2154614))

(assert (=> d!2154620 d!2154610))

(declare-fun d!2154926 () Bool)

(assert (=> d!2154926 (< (contextDepthTotal!408 lt!2456633) (zipperDepthTotal!436 zl!343))))

(assert (=> d!2154926 true))

(declare-fun _$54!210 () Unit!160101)

(assert (=> d!2154926 (= (choose!51073 zl!343 lt!2456633) _$54!210)))

(declare-fun bs!1832920 () Bool)

(assert (= bs!1832920 d!2154926))

(assert (=> bs!1832920 m!7592530))

(assert (=> bs!1832920 m!7592532))

(assert (=> d!2154620 d!2154926))

(declare-fun d!2154928 () Bool)

(declare-fun lt!2456792 () Bool)

(assert (=> d!2154928 (= lt!2456792 (select (content!12989 zl!343) lt!2456633))))

(declare-fun e!4134468 () Bool)

(assert (=> d!2154928 (= lt!2456792 e!4134468)))

(declare-fun res!2798152 () Bool)

(assert (=> d!2154928 (=> (not res!2798152) (not e!4134468))))

(assert (=> d!2154928 (= res!2798152 ((_ is Cons!66219) zl!343))))

(assert (=> d!2154928 (= (contains!20337 zl!343 lt!2456633) lt!2456792)))

(declare-fun b!6857290 () Bool)

(declare-fun e!4134469 () Bool)

(assert (=> b!6857290 (= e!4134468 e!4134469)))

(declare-fun res!2798153 () Bool)

(assert (=> b!6857290 (=> res!2798153 e!4134469)))

(assert (=> b!6857290 (= res!2798153 (= (h!72667 zl!343) lt!2456633))))

(declare-fun b!6857291 () Bool)

(assert (=> b!6857291 (= e!4134469 (contains!20337 (t!380086 zl!343) lt!2456633))))

(assert (= (and d!2154928 res!2798152) b!6857290))

(assert (= (and b!6857290 (not res!2798153)) b!6857291))

(assert (=> d!2154928 m!7593336))

(declare-fun m!7593350 () Bool)

(assert (=> d!2154928 m!7593350))

(declare-fun m!7593352 () Bool)

(assert (=> b!6857291 m!7593352))

(assert (=> d!2154620 d!2154928))

(declare-fun d!2154930 () Bool)

(declare-fun c!1276440 () Bool)

(assert (=> d!2154930 (= c!1276440 (isEmpty!38587 (tail!12812 s!2326)))))

(declare-fun e!4134470 () Bool)

(assert (=> d!2154930 (= (matchZipper!2647 (derivationStepZipper!2603 lt!2456623 (head!13738 s!2326)) (tail!12812 s!2326)) e!4134470)))

(declare-fun b!6857292 () Bool)

(assert (=> b!6857292 (= e!4134470 (nullableZipper!2356 (derivationStepZipper!2603 lt!2456623 (head!13738 s!2326))))))

(declare-fun b!6857293 () Bool)

(assert (=> b!6857293 (= e!4134470 (matchZipper!2647 (derivationStepZipper!2603 (derivationStepZipper!2603 lt!2456623 (head!13738 s!2326)) (head!13738 (tail!12812 s!2326))) (tail!12812 (tail!12812 s!2326))))))

(assert (= (and d!2154930 c!1276440) b!6857292))

(assert (= (and d!2154930 (not c!1276440)) b!6857293))

(assert (=> d!2154930 m!7592564))

(assert (=> d!2154930 m!7592694))

(assert (=> b!6857292 m!7592562))

(declare-fun m!7593354 () Bool)

(assert (=> b!6857292 m!7593354))

(assert (=> b!6857293 m!7592564))

(assert (=> b!6857293 m!7593316))

(assert (=> b!6857293 m!7592562))

(assert (=> b!6857293 m!7593316))

(declare-fun m!7593356 () Bool)

(assert (=> b!6857293 m!7593356))

(assert (=> b!6857293 m!7592564))

(assert (=> b!6857293 m!7593312))

(assert (=> b!6857293 m!7593356))

(assert (=> b!6857293 m!7593312))

(declare-fun m!7593358 () Bool)

(assert (=> b!6857293 m!7593358))

(assert (=> b!6856055 d!2154930))

(declare-fun d!2154932 () Bool)

(assert (=> d!2154932 true))

(declare-fun lambda!387666 () Int)

(declare-fun flatMap!2138 ((InoxSet Context!12130) Int) (InoxSet Context!12130))

(assert (=> d!2154932 (= (derivationStepZipper!2603 lt!2456623 (head!13738 s!2326)) (flatMap!2138 lt!2456623 lambda!387666))))

(declare-fun bs!1832921 () Bool)

(assert (= bs!1832921 d!2154932))

(declare-fun m!7593360 () Bool)

(assert (=> bs!1832921 m!7593360))

(assert (=> b!6856055 d!2154932))

(assert (=> b!6856055 d!2154874))

(assert (=> b!6856055 d!2154884))

(declare-fun b!6857296 () Bool)

(declare-fun res!2798156 () Bool)

(declare-fun e!4134477 () Bool)

(assert (=> b!6857296 (=> res!2798156 e!4134477)))

(assert (=> b!6857296 (= res!2798156 (not ((_ is Concat!25526) (h!72666 lt!2456629))))))

(declare-fun e!4134475 () Bool)

(assert (=> b!6857296 (= e!4134475 e!4134477)))

(declare-fun b!6857297 () Bool)

(declare-fun e!4134474 () Bool)

(declare-fun e!4134471 () Bool)

(assert (=> b!6857297 (= e!4134474 e!4134471)))

(declare-fun c!1276443 () Bool)

(assert (=> b!6857297 (= c!1276443 ((_ is Star!16681) (h!72666 lt!2456629)))))

(declare-fun b!6857298 () Bool)

(declare-fun e!4134472 () Bool)

(declare-fun call!624654 () Bool)

(assert (=> b!6857298 (= e!4134472 call!624654)))

(declare-fun b!6857299 () Bool)

(declare-fun e!4134473 () Bool)

(declare-fun call!624652 () Bool)

(assert (=> b!6857299 (= e!4134473 call!624652)))

(declare-fun b!6857300 () Bool)

(declare-fun res!2798157 () Bool)

(declare-fun e!4134476 () Bool)

(assert (=> b!6857300 (=> (not res!2798157) (not e!4134476))))

(declare-fun call!624653 () Bool)

(assert (=> b!6857300 (= res!2798157 call!624653)))

(assert (=> b!6857300 (= e!4134475 e!4134476)))

(declare-fun b!6857301 () Bool)

(assert (=> b!6857301 (= e!4134476 call!624652)))

(declare-fun b!6857302 () Bool)

(assert (=> b!6857302 (= e!4134471 e!4134475)))

(declare-fun c!1276444 () Bool)

(assert (=> b!6857302 (= c!1276444 ((_ is Union!16681) (h!72666 lt!2456629)))))

(declare-fun b!6857303 () Bool)

(assert (=> b!6857303 (= e!4134477 e!4134473)))

(declare-fun res!2798158 () Bool)

(assert (=> b!6857303 (=> (not res!2798158) (not e!4134473))))

(assert (=> b!6857303 (= res!2798158 call!624653)))

(declare-fun b!6857304 () Bool)

(assert (=> b!6857304 (= e!4134471 e!4134472)))

(declare-fun res!2798154 () Bool)

(assert (=> b!6857304 (= res!2798154 (not (nullable!6642 (reg!17010 (h!72666 lt!2456629)))))))

(assert (=> b!6857304 (=> (not res!2798154) (not e!4134472))))

(declare-fun bm!624647 () Bool)

(assert (=> bm!624647 (= call!624654 (validRegex!8417 (ite c!1276443 (reg!17010 (h!72666 lt!2456629)) (ite c!1276444 (regTwo!33875 (h!72666 lt!2456629)) (regTwo!33874 (h!72666 lt!2456629))))))))

(declare-fun d!2154934 () Bool)

(declare-fun res!2798155 () Bool)

(assert (=> d!2154934 (=> res!2798155 e!4134474)))

(assert (=> d!2154934 (= res!2798155 ((_ is ElementMatch!16681) (h!72666 lt!2456629)))))

(assert (=> d!2154934 (= (validRegex!8417 (h!72666 lt!2456629)) e!4134474)))

(declare-fun bm!624648 () Bool)

(assert (=> bm!624648 (= call!624653 (validRegex!8417 (ite c!1276444 (regOne!33875 (h!72666 lt!2456629)) (regOne!33874 (h!72666 lt!2456629)))))))

(declare-fun bm!624649 () Bool)

(assert (=> bm!624649 (= call!624652 call!624654)))

(assert (= (and d!2154934 (not res!2798155)) b!6857297))

(assert (= (and b!6857297 c!1276443) b!6857304))

(assert (= (and b!6857297 (not c!1276443)) b!6857302))

(assert (= (and b!6857304 res!2798154) b!6857298))

(assert (= (and b!6857302 c!1276444) b!6857300))

(assert (= (and b!6857302 (not c!1276444)) b!6857296))

(assert (= (and b!6857300 res!2798157) b!6857301))

(assert (= (and b!6857296 (not res!2798156)) b!6857303))

(assert (= (and b!6857303 res!2798158) b!6857299))

(assert (= (or b!6857301 b!6857299) bm!624649))

(assert (= (or b!6857300 b!6857303) bm!624648))

(assert (= (or b!6857298 bm!624649) bm!624647))

(declare-fun m!7593362 () Bool)

(assert (=> b!6857304 m!7593362))

(declare-fun m!7593364 () Bool)

(assert (=> bm!624647 m!7593364))

(declare-fun m!7593366 () Bool)

(assert (=> bm!624648 m!7593366))

(assert (=> bs!1832721 d!2154934))

(declare-fun b!6857305 () Bool)

(declare-fun e!4134480 () Bool)

(declare-fun lt!2456793 () Bool)

(declare-fun call!624655 () Bool)

(assert (=> b!6857305 (= e!4134480 (= lt!2456793 call!624655))))

(declare-fun b!6857306 () Bool)

(declare-fun e!4134484 () Bool)

(declare-fun e!4134482 () Bool)

(assert (=> b!6857306 (= e!4134484 e!4134482)))

(declare-fun res!2798165 () Bool)

(assert (=> b!6857306 (=> (not res!2798165) (not e!4134482))))

(assert (=> b!6857306 (= res!2798165 (not lt!2456793))))

(declare-fun b!6857307 () Bool)

(declare-fun res!2798161 () Bool)

(declare-fun e!4134479 () Bool)

(assert (=> b!6857307 (=> res!2798161 e!4134479)))

(assert (=> b!6857307 (= res!2798161 (not (isEmpty!38587 (tail!12812 (tail!12812 s!2326)))))))

(declare-fun b!6857308 () Bool)

(declare-fun e!4134483 () Bool)

(assert (=> b!6857308 (= e!4134480 e!4134483)))

(declare-fun c!1276445 () Bool)

(assert (=> b!6857308 (= c!1276445 ((_ is EmptyLang!16681) (derivativeStep!5325 r!7292 (head!13738 s!2326))))))

(declare-fun b!6857309 () Bool)

(assert (=> b!6857309 (= e!4134482 e!4134479)))

(declare-fun res!2798164 () Bool)

(assert (=> b!6857309 (=> res!2798164 e!4134479)))

(assert (=> b!6857309 (= res!2798164 call!624655)))

(declare-fun b!6857310 () Bool)

(declare-fun res!2798163 () Bool)

(declare-fun e!4134478 () Bool)

(assert (=> b!6857310 (=> (not res!2798163) (not e!4134478))))

(assert (=> b!6857310 (= res!2798163 (isEmpty!38587 (tail!12812 (tail!12812 s!2326))))))

(declare-fun b!6857311 () Bool)

(declare-fun e!4134481 () Bool)

(assert (=> b!6857311 (= e!4134481 (nullable!6642 (derivativeStep!5325 r!7292 (head!13738 s!2326))))))

(declare-fun b!6857312 () Bool)

(assert (=> b!6857312 (= e!4134479 (not (= (head!13738 (tail!12812 s!2326)) (c!1276127 (derivativeStep!5325 r!7292 (head!13738 s!2326))))))))

(declare-fun b!6857313 () Bool)

(assert (=> b!6857313 (= e!4134478 (= (head!13738 (tail!12812 s!2326)) (c!1276127 (derivativeStep!5325 r!7292 (head!13738 s!2326)))))))

(declare-fun b!6857314 () Bool)

(assert (=> b!6857314 (= e!4134483 (not lt!2456793))))

(declare-fun b!6857315 () Bool)

(declare-fun res!2798160 () Bool)

(assert (=> b!6857315 (=> res!2798160 e!4134484)))

(assert (=> b!6857315 (= res!2798160 e!4134478)))

(declare-fun res!2798159 () Bool)

(assert (=> b!6857315 (=> (not res!2798159) (not e!4134478))))

(assert (=> b!6857315 (= res!2798159 lt!2456793)))

(declare-fun d!2154936 () Bool)

(assert (=> d!2154936 e!4134480))

(declare-fun c!1276447 () Bool)

(assert (=> d!2154936 (= c!1276447 ((_ is EmptyExpr!16681) (derivativeStep!5325 r!7292 (head!13738 s!2326))))))

(assert (=> d!2154936 (= lt!2456793 e!4134481)))

(declare-fun c!1276446 () Bool)

(assert (=> d!2154936 (= c!1276446 (isEmpty!38587 (tail!12812 s!2326)))))

(assert (=> d!2154936 (validRegex!8417 (derivativeStep!5325 r!7292 (head!13738 s!2326)))))

(assert (=> d!2154936 (= (matchR!8864 (derivativeStep!5325 r!7292 (head!13738 s!2326)) (tail!12812 s!2326)) lt!2456793)))

(declare-fun b!6857316 () Bool)

(declare-fun res!2798166 () Bool)

(assert (=> b!6857316 (=> res!2798166 e!4134484)))

(assert (=> b!6857316 (= res!2798166 (not ((_ is ElementMatch!16681) (derivativeStep!5325 r!7292 (head!13738 s!2326)))))))

(assert (=> b!6857316 (= e!4134483 e!4134484)))

(declare-fun b!6857317 () Bool)

(assert (=> b!6857317 (= e!4134481 (matchR!8864 (derivativeStep!5325 (derivativeStep!5325 r!7292 (head!13738 s!2326)) (head!13738 (tail!12812 s!2326))) (tail!12812 (tail!12812 s!2326))))))

(declare-fun b!6857318 () Bool)

(declare-fun res!2798162 () Bool)

(assert (=> b!6857318 (=> (not res!2798162) (not e!4134478))))

(assert (=> b!6857318 (= res!2798162 (not call!624655))))

(declare-fun bm!624650 () Bool)

(assert (=> bm!624650 (= call!624655 (isEmpty!38587 (tail!12812 s!2326)))))

(assert (= (and d!2154936 c!1276446) b!6857311))

(assert (= (and d!2154936 (not c!1276446)) b!6857317))

(assert (= (and d!2154936 c!1276447) b!6857305))

(assert (= (and d!2154936 (not c!1276447)) b!6857308))

(assert (= (and b!6857308 c!1276445) b!6857314))

(assert (= (and b!6857308 (not c!1276445)) b!6857316))

(assert (= (and b!6857316 (not res!2798166)) b!6857315))

(assert (= (and b!6857315 res!2798159) b!6857318))

(assert (= (and b!6857318 res!2798162) b!6857310))

(assert (= (and b!6857310 res!2798163) b!6857313))

(assert (= (and b!6857315 (not res!2798160)) b!6857306))

(assert (= (and b!6857306 res!2798165) b!6857309))

(assert (= (and b!6857309 (not res!2798164)) b!6857307))

(assert (= (and b!6857307 (not res!2798161)) b!6857312))

(assert (= (or b!6857305 b!6857318 b!6857309) bm!624650))

(assert (=> b!6857311 m!7592758))

(declare-fun m!7593368 () Bool)

(assert (=> b!6857311 m!7593368))

(assert (=> b!6857310 m!7592564))

(assert (=> b!6857310 m!7593312))

(assert (=> b!6857310 m!7593312))

(assert (=> b!6857310 m!7593314))

(assert (=> b!6857317 m!7592564))

(assert (=> b!6857317 m!7593316))

(assert (=> b!6857317 m!7592758))

(assert (=> b!6857317 m!7593316))

(declare-fun m!7593370 () Bool)

(assert (=> b!6857317 m!7593370))

(assert (=> b!6857317 m!7592564))

(assert (=> b!6857317 m!7593312))

(assert (=> b!6857317 m!7593370))

(assert (=> b!6857317 m!7593312))

(declare-fun m!7593372 () Bool)

(assert (=> b!6857317 m!7593372))

(assert (=> d!2154936 m!7592564))

(assert (=> d!2154936 m!7592694))

(assert (=> d!2154936 m!7592758))

(declare-fun m!7593374 () Bool)

(assert (=> d!2154936 m!7593374))

(assert (=> b!6857313 m!7592564))

(assert (=> b!6857313 m!7593316))

(assert (=> b!6857307 m!7592564))

(assert (=> b!6857307 m!7593312))

(assert (=> b!6857307 m!7593312))

(assert (=> b!6857307 m!7593314))

(assert (=> bm!624650 m!7592564))

(assert (=> bm!624650 m!7592694))

(assert (=> b!6857312 m!7592564))

(assert (=> b!6857312 m!7593316))

(assert (=> b!6856484 d!2154936))

(declare-fun b!6857319 () Bool)

(declare-fun e!4134486 () Regex!16681)

(declare-fun call!624657 () Regex!16681)

(assert (=> b!6857319 (= e!4134486 (Union!16681 (Concat!25526 call!624657 (regTwo!33874 r!7292)) EmptyLang!16681))))

(declare-fun call!624658 () Regex!16681)

(declare-fun bm!624651 () Bool)

(declare-fun c!1276449 () Bool)

(declare-fun c!1276450 () Bool)

(declare-fun c!1276448 () Bool)

(assert (=> bm!624651 (= call!624658 (derivativeStep!5325 (ite c!1276449 (regTwo!33875 r!7292) (ite c!1276450 (reg!17010 r!7292) (ite c!1276448 (regTwo!33874 r!7292) (regOne!33874 r!7292)))) (head!13738 s!2326)))))

(declare-fun bm!624652 () Bool)

(declare-fun call!624659 () Regex!16681)

(assert (=> bm!624652 (= call!624659 call!624658)))

(declare-fun b!6857320 () Bool)

(assert (=> b!6857320 (= c!1276449 ((_ is Union!16681) r!7292))))

(declare-fun e!4134488 () Regex!16681)

(declare-fun e!4134489 () Regex!16681)

(assert (=> b!6857320 (= e!4134488 e!4134489)))

(declare-fun call!624656 () Regex!16681)

(declare-fun bm!624653 () Bool)

(assert (=> bm!624653 (= call!624656 (derivativeStep!5325 (ite c!1276449 (regOne!33875 r!7292) (regOne!33874 r!7292)) (head!13738 s!2326)))))

(declare-fun d!2154938 () Bool)

(declare-fun lt!2456794 () Regex!16681)

(assert (=> d!2154938 (validRegex!8417 lt!2456794)))

(declare-fun e!4134485 () Regex!16681)

(assert (=> d!2154938 (= lt!2456794 e!4134485)))

(declare-fun c!1276452 () Bool)

(assert (=> d!2154938 (= c!1276452 (or ((_ is EmptyExpr!16681) r!7292) ((_ is EmptyLang!16681) r!7292)))))

(assert (=> d!2154938 (validRegex!8417 r!7292)))

(assert (=> d!2154938 (= (derivativeStep!5325 r!7292 (head!13738 s!2326)) lt!2456794)))

(declare-fun b!6857321 () Bool)

(declare-fun e!4134487 () Regex!16681)

(assert (=> b!6857321 (= e!4134487 (Concat!25526 call!624659 r!7292))))

(declare-fun b!6857322 () Bool)

(assert (=> b!6857322 (= e!4134486 (Union!16681 (Concat!25526 call!624656 (regTwo!33874 r!7292)) call!624657))))

(declare-fun b!6857323 () Bool)

(assert (=> b!6857323 (= e!4134488 (ite (= (head!13738 s!2326) (c!1276127 r!7292)) EmptyExpr!16681 EmptyLang!16681))))

(declare-fun b!6857324 () Bool)

(assert (=> b!6857324 (= e!4134485 EmptyLang!16681)))

(declare-fun b!6857325 () Bool)

(assert (=> b!6857325 (= e!4134485 e!4134488)))

(declare-fun c!1276451 () Bool)

(assert (=> b!6857325 (= c!1276451 ((_ is ElementMatch!16681) r!7292))))

(declare-fun b!6857326 () Bool)

(assert (=> b!6857326 (= c!1276448 (nullable!6642 (regOne!33874 r!7292)))))

(assert (=> b!6857326 (= e!4134487 e!4134486)))

(declare-fun b!6857327 () Bool)

(assert (=> b!6857327 (= e!4134489 e!4134487)))

(assert (=> b!6857327 (= c!1276450 ((_ is Star!16681) r!7292))))

(declare-fun bm!624654 () Bool)

(assert (=> bm!624654 (= call!624657 call!624659)))

(declare-fun b!6857328 () Bool)

(assert (=> b!6857328 (= e!4134489 (Union!16681 call!624656 call!624658))))

(assert (= (and d!2154938 c!1276452) b!6857324))

(assert (= (and d!2154938 (not c!1276452)) b!6857325))

(assert (= (and b!6857325 c!1276451) b!6857323))

(assert (= (and b!6857325 (not c!1276451)) b!6857320))

(assert (= (and b!6857320 c!1276449) b!6857328))

(assert (= (and b!6857320 (not c!1276449)) b!6857327))

(assert (= (and b!6857327 c!1276450) b!6857321))

(assert (= (and b!6857327 (not c!1276450)) b!6857326))

(assert (= (and b!6857326 c!1276448) b!6857322))

(assert (= (and b!6857326 (not c!1276448)) b!6857319))

(assert (= (or b!6857322 b!6857319) bm!624654))

(assert (= (or b!6857321 bm!624654) bm!624652))

(assert (= (or b!6857328 bm!624652) bm!624651))

(assert (= (or b!6857328 b!6857322) bm!624653))

(assert (=> bm!624651 m!7592560))

(declare-fun m!7593376 () Bool)

(assert (=> bm!624651 m!7593376))

(assert (=> bm!624653 m!7592560))

(declare-fun m!7593378 () Bool)

(assert (=> bm!624653 m!7593378))

(declare-fun m!7593380 () Bool)

(assert (=> d!2154938 m!7593380))

(assert (=> d!2154938 m!7592510))

(declare-fun m!7593382 () Bool)

(assert (=> b!6857326 m!7593382))

(assert (=> b!6856484 d!2154938))

(assert (=> b!6856484 d!2154874))

(assert (=> b!6856484 d!2154884))

(assert (=> d!2154588 d!2154906))

(assert (=> bm!624563 d!2154906))

(assert (=> b!6856317 d!2154874))

(declare-fun b!6857329 () Bool)

(declare-fun res!2798169 () Bool)

(declare-fun e!4134496 () Bool)

(assert (=> b!6857329 (=> res!2798169 e!4134496)))

(assert (=> b!6857329 (= res!2798169 (not ((_ is Concat!25526) (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625)))))))

(declare-fun e!4134494 () Bool)

(assert (=> b!6857329 (= e!4134494 e!4134496)))

(declare-fun b!6857330 () Bool)

(declare-fun e!4134493 () Bool)

(declare-fun e!4134490 () Bool)

(assert (=> b!6857330 (= e!4134493 e!4134490)))

(declare-fun c!1276453 () Bool)

(assert (=> b!6857330 (= c!1276453 ((_ is Star!16681) (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))))))

(declare-fun b!6857331 () Bool)

(declare-fun e!4134491 () Bool)

(declare-fun call!624662 () Bool)

(assert (=> b!6857331 (= e!4134491 call!624662)))

(declare-fun b!6857332 () Bool)

(declare-fun e!4134492 () Bool)

(declare-fun call!624660 () Bool)

(assert (=> b!6857332 (= e!4134492 call!624660)))

(declare-fun b!6857333 () Bool)

(declare-fun res!2798170 () Bool)

(declare-fun e!4134495 () Bool)

(assert (=> b!6857333 (=> (not res!2798170) (not e!4134495))))

(declare-fun call!624661 () Bool)

(assert (=> b!6857333 (= res!2798170 call!624661)))

(assert (=> b!6857333 (= e!4134494 e!4134495)))

(declare-fun b!6857334 () Bool)

(assert (=> b!6857334 (= e!4134495 call!624660)))

(declare-fun b!6857335 () Bool)

(assert (=> b!6857335 (= e!4134490 e!4134494)))

(declare-fun c!1276454 () Bool)

(assert (=> b!6857335 (= c!1276454 ((_ is Union!16681) (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))))))

(declare-fun b!6857336 () Bool)

(assert (=> b!6857336 (= e!4134496 e!4134492)))

(declare-fun res!2798171 () Bool)

(assert (=> b!6857336 (=> (not res!2798171) (not e!4134492))))

(assert (=> b!6857336 (= res!2798171 call!624661)))

(declare-fun b!6857337 () Bool)

(assert (=> b!6857337 (= e!4134490 e!4134491)))

(declare-fun res!2798167 () Bool)

(assert (=> b!6857337 (= res!2798167 (not (nullable!6642 (reg!17010 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))))))))

(assert (=> b!6857337 (=> (not res!2798167) (not e!4134491))))

(declare-fun bm!624655 () Bool)

(assert (=> bm!624655 (= call!624662 (validRegex!8417 (ite c!1276453 (reg!17010 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))) (ite c!1276454 (regTwo!33875 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))) (regTwo!33874 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625)))))))))

(declare-fun d!2154940 () Bool)

(declare-fun res!2798168 () Bool)

(assert (=> d!2154940 (=> res!2798168 e!4134493)))

(assert (=> d!2154940 (= res!2798168 ((_ is ElementMatch!16681) (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))))))

(assert (=> d!2154940 (= (validRegex!8417 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))) e!4134493)))

(declare-fun bm!624656 () Bool)

(assert (=> bm!624656 (= call!624661 (validRegex!8417 (ite c!1276454 (regOne!33875 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))) (regOne!33874 (ite c!1276219 (regOne!33875 lt!2456625) (regOne!33874 lt!2456625))))))))

(declare-fun bm!624657 () Bool)

(assert (=> bm!624657 (= call!624660 call!624662)))

(assert (= (and d!2154940 (not res!2798168)) b!6857330))

(assert (= (and b!6857330 c!1276453) b!6857337))

(assert (= (and b!6857330 (not c!1276453)) b!6857335))

(assert (= (and b!6857337 res!2798167) b!6857331))

(assert (= (and b!6857335 c!1276454) b!6857333))

(assert (= (and b!6857335 (not c!1276454)) b!6857329))

(assert (= (and b!6857333 res!2798170) b!6857334))

(assert (= (and b!6857329 (not res!2798169)) b!6857336))

(assert (= (and b!6857336 res!2798171) b!6857332))

(assert (= (or b!6857334 b!6857332) bm!624657))

(assert (= (or b!6857333 b!6857336) bm!624656))

(assert (= (or b!6857331 bm!624657) bm!624655))

(declare-fun m!7593384 () Bool)

(assert (=> b!6857337 m!7593384))

(declare-fun m!7593386 () Bool)

(assert (=> bm!624655 m!7593386))

(declare-fun m!7593388 () Bool)

(assert (=> bm!624656 m!7593388))

(assert (=> bm!624555 d!2154940))

(declare-fun d!2154942 () Bool)

(assert (=> d!2154942 (= (head!13740 zl!343) (h!72667 zl!343))))

(assert (=> b!6856191 d!2154942))

(declare-fun d!2154944 () Bool)

(assert (=> d!2154944 (= (nullable!6642 lt!2456625) (nullableFct!2526 lt!2456625))))

(declare-fun bs!1832922 () Bool)

(assert (= bs!1832922 d!2154944))

(declare-fun m!7593390 () Bool)

(assert (=> bs!1832922 m!7593390))

(assert (=> b!6856315 d!2154944))

(assert (=> bm!624561 d!2154906))

(declare-fun bs!1832923 () Bool)

(declare-fun d!2154946 () Bool)

(assert (= bs!1832923 (and d!2154946 d!2154676)))

(declare-fun lambda!387667 () Int)

(assert (=> bs!1832923 (= lambda!387667 lambda!387600)))

(declare-fun bs!1832924 () Bool)

(assert (= bs!1832924 (and d!2154946 d!2154898)))

(assert (=> bs!1832924 (not (= lambda!387667 lambda!387660))))

(declare-fun bs!1832925 () Bool)

(assert (= bs!1832925 (and d!2154946 d!2154690)))

(assert (=> bs!1832925 (= lambda!387667 lambda!387611)))

(declare-fun bs!1832926 () Bool)

(assert (= bs!1832926 (and d!2154946 d!2154900)))

(assert (=> bs!1832926 (not (= lambda!387667 lambda!387663))))

(declare-fun bs!1832927 () Bool)

(assert (= bs!1832927 (and d!2154946 d!2154842)))

(assert (=> bs!1832927 (= lambda!387667 lambda!387648)))

(declare-fun bs!1832928 () Bool)

(assert (= bs!1832928 (and d!2154946 b!6856039)))

(assert (=> bs!1832928 (not (= lambda!387667 lambda!387558))))

(declare-fun bs!1832929 () Bool)

(assert (= bs!1832929 (and d!2154946 d!2154656)))

(assert (=> bs!1832929 (= lambda!387667 lambda!387593)))

(declare-fun bs!1832930 () Bool)

(assert (= bs!1832930 (and d!2154946 d!2154586)))

(assert (=> bs!1832930 (not (= lambda!387667 lambda!387562))))

(declare-fun bs!1832931 () Bool)

(assert (= bs!1832931 (and d!2154946 d!2154888)))

(assert (=> bs!1832931 (= lambda!387667 lambda!387659)))

(declare-fun bs!1832932 () Bool)

(assert (= bs!1832932 (and d!2154946 d!2154852)))

(assert (=> bs!1832932 (= lambda!387667 lambda!387653)))

(assert (=> bs!1832925 (not (= lambda!387667 lambda!387612))))

(declare-fun bs!1832933 () Bool)

(assert (= bs!1832933 (and d!2154946 d!2154692)))

(assert (=> bs!1832933 (= lambda!387667 lambda!387615)))

(assert (=> d!2154946 (= (inv!84949 setElem!47125) (forall!15860 (exprs!6565 setElem!47125) lambda!387667))))

(declare-fun bs!1832934 () Bool)

(assert (= bs!1832934 d!2154946))

(declare-fun m!7593392 () Bool)

(assert (=> bs!1832934 m!7593392))

(assert (=> setNonEmpty!47125 d!2154946))

(assert (=> b!6856479 d!2154874))

(declare-fun bs!1832935 () Bool)

(declare-fun b!6857345 () Bool)

(assert (= bs!1832935 (and b!6857345 b!6856464)))

(declare-fun lambda!387668 () Int)

(assert (=> bs!1832935 (= (and (= (reg!17010 (regTwo!33875 r!7292)) (reg!17010 r!7292)) (= (regTwo!33875 r!7292) r!7292)) (= lambda!387668 lambda!387598))))

(declare-fun bs!1832936 () Bool)

(assert (= bs!1832936 (and b!6857345 b!6856460)))

(assert (=> bs!1832936 (not (= lambda!387668 lambda!387599))))

(declare-fun bs!1832937 () Bool)

(assert (= bs!1832937 (and b!6857345 b!6857015)))

(assert (=> bs!1832937 (= (and (= (reg!17010 (regTwo!33875 r!7292)) (reg!17010 (regOne!33875 r!7292))) (= (regTwo!33875 r!7292) (regOne!33875 r!7292))) (= lambda!387668 lambda!387649))))

(declare-fun bs!1832938 () Bool)

(assert (= bs!1832938 (and b!6857345 b!6857011)))

(assert (=> bs!1832938 (not (= lambda!387668 lambda!387650))))

(assert (=> b!6857345 true))

(assert (=> b!6857345 true))

(declare-fun bs!1832939 () Bool)

(declare-fun b!6857341 () Bool)

(assert (= bs!1832939 (and b!6857341 b!6857345)))

(declare-fun lambda!387669 () Int)

(assert (=> bs!1832939 (not (= lambda!387669 lambda!387668))))

(declare-fun bs!1832940 () Bool)

(assert (= bs!1832940 (and b!6857341 b!6857015)))

(assert (=> bs!1832940 (not (= lambda!387669 lambda!387649))))

(declare-fun bs!1832941 () Bool)

(assert (= bs!1832941 (and b!6857341 b!6856464)))

(assert (=> bs!1832941 (not (= lambda!387669 lambda!387598))))

(declare-fun bs!1832942 () Bool)

(assert (= bs!1832942 (and b!6857341 b!6856460)))

(assert (=> bs!1832942 (= (and (= (regOne!33874 (regTwo!33875 r!7292)) (regOne!33874 r!7292)) (= (regTwo!33874 (regTwo!33875 r!7292)) (regTwo!33874 r!7292))) (= lambda!387669 lambda!387599))))

(declare-fun bs!1832943 () Bool)

(assert (= bs!1832943 (and b!6857341 b!6857011)))

(assert (=> bs!1832943 (= (and (= (regOne!33874 (regTwo!33875 r!7292)) (regOne!33874 (regOne!33875 r!7292))) (= (regTwo!33874 (regTwo!33875 r!7292)) (regTwo!33874 (regOne!33875 r!7292)))) (= lambda!387669 lambda!387650))))

(assert (=> b!6857341 true))

(assert (=> b!6857341 true))

(declare-fun b!6857338 () Bool)

(declare-fun e!4134502 () Bool)

(declare-fun e!4134501 () Bool)

(assert (=> b!6857338 (= e!4134502 e!4134501)))

(declare-fun c!1276456 () Bool)

(assert (=> b!6857338 (= c!1276456 ((_ is Star!16681) (regTwo!33875 r!7292)))))

(declare-fun b!6857340 () Bool)

(declare-fun e!4134500 () Bool)

(assert (=> b!6857340 (= e!4134500 (= s!2326 (Cons!66220 (c!1276127 (regTwo!33875 r!7292)) Nil!66220)))))

(declare-fun call!624663 () Bool)

(assert (=> b!6857341 (= e!4134501 call!624663)))

(declare-fun bm!624658 () Bool)

(declare-fun call!624664 () Bool)

(assert (=> bm!624658 (= call!624664 (isEmpty!38587 s!2326))))

(declare-fun b!6857342 () Bool)

(declare-fun res!2798173 () Bool)

(declare-fun e!4134499 () Bool)

(assert (=> b!6857342 (=> res!2798173 e!4134499)))

(assert (=> b!6857342 (= res!2798173 call!624664)))

(assert (=> b!6857342 (= e!4134501 e!4134499)))

(declare-fun b!6857343 () Bool)

(declare-fun e!4134497 () Bool)

(assert (=> b!6857343 (= e!4134497 call!624664)))

(declare-fun b!6857344 () Bool)

(declare-fun c!1276457 () Bool)

(assert (=> b!6857344 (= c!1276457 ((_ is ElementMatch!16681) (regTwo!33875 r!7292)))))

(declare-fun e!4134503 () Bool)

(assert (=> b!6857344 (= e!4134503 e!4134500)))

(assert (=> b!6857345 (= e!4134499 call!624663)))

(declare-fun b!6857346 () Bool)

(declare-fun e!4134498 () Bool)

(assert (=> b!6857346 (= e!4134502 e!4134498)))

(declare-fun res!2798174 () Bool)

(assert (=> b!6857346 (= res!2798174 (matchRSpec!3782 (regOne!33875 (regTwo!33875 r!7292)) s!2326))))

(assert (=> b!6857346 (=> res!2798174 e!4134498)))

(declare-fun b!6857347 () Bool)

(assert (=> b!6857347 (= e!4134497 e!4134503)))

(declare-fun res!2798172 () Bool)

(assert (=> b!6857347 (= res!2798172 (not ((_ is EmptyLang!16681) (regTwo!33875 r!7292))))))

(assert (=> b!6857347 (=> (not res!2798172) (not e!4134503))))

(declare-fun b!6857339 () Bool)

(assert (=> b!6857339 (= e!4134498 (matchRSpec!3782 (regTwo!33875 (regTwo!33875 r!7292)) s!2326))))

(declare-fun d!2154948 () Bool)

(declare-fun c!1276455 () Bool)

(assert (=> d!2154948 (= c!1276455 ((_ is EmptyExpr!16681) (regTwo!33875 r!7292)))))

(assert (=> d!2154948 (= (matchRSpec!3782 (regTwo!33875 r!7292) s!2326) e!4134497)))

(declare-fun bm!624659 () Bool)

(assert (=> bm!624659 (= call!624663 (Exists!3741 (ite c!1276456 lambda!387668 lambda!387669)))))

(declare-fun b!6857348 () Bool)

(declare-fun c!1276458 () Bool)

(assert (=> b!6857348 (= c!1276458 ((_ is Union!16681) (regTwo!33875 r!7292)))))

(assert (=> b!6857348 (= e!4134500 e!4134502)))

(assert (= (and d!2154948 c!1276455) b!6857343))

(assert (= (and d!2154948 (not c!1276455)) b!6857347))

(assert (= (and b!6857347 res!2798172) b!6857344))

(assert (= (and b!6857344 c!1276457) b!6857340))

(assert (= (and b!6857344 (not c!1276457)) b!6857348))

(assert (= (and b!6857348 c!1276458) b!6857346))

(assert (= (and b!6857348 (not c!1276458)) b!6857338))

(assert (= (and b!6857346 (not res!2798174)) b!6857339))

(assert (= (and b!6857338 c!1276456) b!6857342))

(assert (= (and b!6857338 (not c!1276456)) b!6857341))

(assert (= (and b!6857342 (not res!2798173)) b!6857345))

(assert (= (or b!6857345 b!6857341) bm!624659))

(assert (= (or b!6857343 b!6857342) bm!624658))

(assert (=> bm!624658 m!7592556))

(declare-fun m!7593394 () Bool)

(assert (=> b!6857346 m!7593394))

(declare-fun m!7593396 () Bool)

(assert (=> b!6857339 m!7593396))

(declare-fun m!7593398 () Bool)

(assert (=> bm!624659 m!7593398))

(assert (=> b!6856458 d!2154948))

(declare-fun b!6857349 () Bool)

(declare-fun res!2798177 () Bool)

(declare-fun e!4134510 () Bool)

(assert (=> b!6857349 (=> res!2798177 e!4134510)))

(assert (=> b!6857349 (= res!2798177 (not ((_ is Concat!25526) (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625))))))))

(declare-fun e!4134508 () Bool)

(assert (=> b!6857349 (= e!4134508 e!4134510)))

(declare-fun b!6857350 () Bool)

(declare-fun e!4134507 () Bool)

(declare-fun e!4134504 () Bool)

(assert (=> b!6857350 (= e!4134507 e!4134504)))

(declare-fun c!1276459 () Bool)

(assert (=> b!6857350 (= c!1276459 ((_ is Star!16681) (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))))))

(declare-fun b!6857351 () Bool)

(declare-fun e!4134505 () Bool)

(declare-fun call!624667 () Bool)

(assert (=> b!6857351 (= e!4134505 call!624667)))

(declare-fun b!6857352 () Bool)

(declare-fun e!4134506 () Bool)

(declare-fun call!624665 () Bool)

(assert (=> b!6857352 (= e!4134506 call!624665)))

(declare-fun b!6857353 () Bool)

(declare-fun res!2798178 () Bool)

(declare-fun e!4134509 () Bool)

(assert (=> b!6857353 (=> (not res!2798178) (not e!4134509))))

(declare-fun call!624666 () Bool)

(assert (=> b!6857353 (= res!2798178 call!624666)))

(assert (=> b!6857353 (= e!4134508 e!4134509)))

(declare-fun b!6857354 () Bool)

(assert (=> b!6857354 (= e!4134509 call!624665)))

(declare-fun b!6857355 () Bool)

(assert (=> b!6857355 (= e!4134504 e!4134508)))

(declare-fun c!1276460 () Bool)

(assert (=> b!6857355 (= c!1276460 ((_ is Union!16681) (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))))))

(declare-fun b!6857356 () Bool)

(assert (=> b!6857356 (= e!4134510 e!4134506)))

(declare-fun res!2798179 () Bool)

(assert (=> b!6857356 (=> (not res!2798179) (not e!4134506))))

(assert (=> b!6857356 (= res!2798179 call!624666)))

(declare-fun b!6857357 () Bool)

(assert (=> b!6857357 (= e!4134504 e!4134505)))

(declare-fun res!2798175 () Bool)

(assert (=> b!6857357 (= res!2798175 (not (nullable!6642 (reg!17010 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))))))))

(assert (=> b!6857357 (=> (not res!2798175) (not e!4134505))))

(declare-fun bm!624660 () Bool)

(assert (=> bm!624660 (= call!624667 (validRegex!8417 (ite c!1276459 (reg!17010 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))) (ite c!1276460 (regTwo!33875 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))) (regTwo!33874 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625))))))))))

(declare-fun d!2154950 () Bool)

(declare-fun res!2798176 () Bool)

(assert (=> d!2154950 (=> res!2798176 e!4134507)))

(assert (=> d!2154950 (= res!2798176 ((_ is ElementMatch!16681) (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))))))

(assert (=> d!2154950 (= (validRegex!8417 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))) e!4134507)))

(declare-fun bm!624661 () Bool)

(assert (=> bm!624661 (= call!624666 (validRegex!8417 (ite c!1276460 (regOne!33875 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))) (regOne!33874 (ite c!1276218 (reg!17010 lt!2456625) (ite c!1276219 (regTwo!33875 lt!2456625) (regTwo!33874 lt!2456625)))))))))

(declare-fun bm!624662 () Bool)

(assert (=> bm!624662 (= call!624665 call!624667)))

(assert (= (and d!2154950 (not res!2798176)) b!6857350))

(assert (= (and b!6857350 c!1276459) b!6857357))

(assert (= (and b!6857350 (not c!1276459)) b!6857355))

(assert (= (and b!6857357 res!2798175) b!6857351))

(assert (= (and b!6857355 c!1276460) b!6857353))

(assert (= (and b!6857355 (not c!1276460)) b!6857349))

(assert (= (and b!6857353 res!2798178) b!6857354))

(assert (= (and b!6857349 (not res!2798177)) b!6857356))

(assert (= (and b!6857356 res!2798179) b!6857352))

(assert (= (or b!6857354 b!6857352) bm!624662))

(assert (= (or b!6857353 b!6857356) bm!624661))

(assert (= (or b!6857351 bm!624662) bm!624660))

(declare-fun m!7593400 () Bool)

(assert (=> b!6857357 m!7593400))

(declare-fun m!7593402 () Bool)

(assert (=> bm!624660 m!7593402))

(declare-fun m!7593404 () Bool)

(assert (=> bm!624661 m!7593404))

(assert (=> bm!624554 d!2154950))

(declare-fun bs!1832944 () Bool)

(declare-fun d!2154952 () Bool)

(assert (= bs!1832944 (and d!2154952 d!2154676)))

(declare-fun lambda!387670 () Int)

(assert (=> bs!1832944 (= lambda!387670 lambda!387600)))

(declare-fun bs!1832945 () Bool)

(assert (= bs!1832945 (and d!2154952 d!2154898)))

(assert (=> bs!1832945 (not (= lambda!387670 lambda!387660))))

(declare-fun bs!1832946 () Bool)

(assert (= bs!1832946 (and d!2154952 d!2154690)))

(assert (=> bs!1832946 (= lambda!387670 lambda!387611)))

(declare-fun bs!1832947 () Bool)

(assert (= bs!1832947 (and d!2154952 d!2154900)))

(assert (=> bs!1832947 (not (= lambda!387670 lambda!387663))))

(declare-fun bs!1832948 () Bool)

(assert (= bs!1832948 (and d!2154952 d!2154842)))

(assert (=> bs!1832948 (= lambda!387670 lambda!387648)))

(declare-fun bs!1832949 () Bool)

(assert (= bs!1832949 (and d!2154952 b!6856039)))

(assert (=> bs!1832949 (not (= lambda!387670 lambda!387558))))

(declare-fun bs!1832950 () Bool)

(assert (= bs!1832950 (and d!2154952 d!2154946)))

(assert (=> bs!1832950 (= lambda!387670 lambda!387667)))

(declare-fun bs!1832951 () Bool)

(assert (= bs!1832951 (and d!2154952 d!2154656)))

(assert (=> bs!1832951 (= lambda!387670 lambda!387593)))

(declare-fun bs!1832952 () Bool)

(assert (= bs!1832952 (and d!2154952 d!2154586)))

(assert (=> bs!1832952 (not (= lambda!387670 lambda!387562))))

(declare-fun bs!1832953 () Bool)

(assert (= bs!1832953 (and d!2154952 d!2154888)))

(assert (=> bs!1832953 (= lambda!387670 lambda!387659)))

(declare-fun bs!1832954 () Bool)

(assert (= bs!1832954 (and d!2154952 d!2154852)))

(assert (=> bs!1832954 (= lambda!387670 lambda!387653)))

(assert (=> bs!1832946 (not (= lambda!387670 lambda!387612))))

(declare-fun bs!1832955 () Bool)

(assert (= bs!1832955 (and d!2154952 d!2154692)))

(assert (=> bs!1832955 (= lambda!387670 lambda!387615)))

(declare-fun e!4134511 () Bool)

(assert (=> d!2154952 e!4134511))

(declare-fun res!2798181 () Bool)

(assert (=> d!2154952 (=> (not res!2798181) (not e!4134511))))

(declare-fun lt!2456795 () Regex!16681)

(assert (=> d!2154952 (= res!2798181 (validRegex!8417 lt!2456795))))

(declare-fun e!4134515 () Regex!16681)

(assert (=> d!2154952 (= lt!2456795 e!4134515)))

(declare-fun c!1276464 () Bool)

(declare-fun e!4134514 () Bool)

(assert (=> d!2154952 (= c!1276464 e!4134514)))

(declare-fun res!2798180 () Bool)

(assert (=> d!2154952 (=> (not res!2798180) (not e!4134514))))

(assert (=> d!2154952 (= res!2798180 ((_ is Cons!66218) (exprs!6565 (h!72667 zl!343))))))

(assert (=> d!2154952 (forall!15860 (exprs!6565 (h!72667 zl!343)) lambda!387670)))

(assert (=> d!2154952 (= (generalisedConcat!2270 (exprs!6565 (h!72667 zl!343))) lt!2456795)))

(declare-fun b!6857358 () Bool)

(assert (=> b!6857358 (= e!4134515 (h!72666 (exprs!6565 (h!72667 zl!343))))))

(declare-fun b!6857359 () Bool)

(assert (=> b!6857359 (= e!4134514 (isEmpty!38589 (t!380085 (exprs!6565 (h!72667 zl!343)))))))

(declare-fun b!6857360 () Bool)

(declare-fun e!4134516 () Regex!16681)

(assert (=> b!6857360 (= e!4134516 (Concat!25526 (h!72666 (exprs!6565 (h!72667 zl!343))) (generalisedConcat!2270 (t!380085 (exprs!6565 (h!72667 zl!343))))))))

(declare-fun b!6857361 () Bool)

(declare-fun e!4134513 () Bool)

(declare-fun e!4134512 () Bool)

(assert (=> b!6857361 (= e!4134513 e!4134512)))

(declare-fun c!1276463 () Bool)

(assert (=> b!6857361 (= c!1276463 (isEmpty!38589 (tail!12814 (exprs!6565 (h!72667 zl!343)))))))

(declare-fun b!6857362 () Bool)

(assert (=> b!6857362 (= e!4134511 e!4134513)))

(declare-fun c!1276461 () Bool)

(assert (=> b!6857362 (= c!1276461 (isEmpty!38589 (exprs!6565 (h!72667 zl!343))))))

(declare-fun b!6857363 () Bool)

(assert (=> b!6857363 (= e!4134513 (isEmptyExpr!2010 lt!2456795))))

(declare-fun b!6857364 () Bool)

(assert (=> b!6857364 (= e!4134516 EmptyExpr!16681)))

(declare-fun b!6857365 () Bool)

(assert (=> b!6857365 (= e!4134512 (isConcat!1533 lt!2456795))))

(declare-fun b!6857366 () Bool)

(assert (=> b!6857366 (= e!4134512 (= lt!2456795 (head!13741 (exprs!6565 (h!72667 zl!343)))))))

(declare-fun b!6857367 () Bool)

(assert (=> b!6857367 (= e!4134515 e!4134516)))

(declare-fun c!1276462 () Bool)

(assert (=> b!6857367 (= c!1276462 ((_ is Cons!66218) (exprs!6565 (h!72667 zl!343))))))

(assert (= (and d!2154952 res!2798180) b!6857359))

(assert (= (and d!2154952 c!1276464) b!6857358))

(assert (= (and d!2154952 (not c!1276464)) b!6857367))

(assert (= (and b!6857367 c!1276462) b!6857360))

(assert (= (and b!6857367 (not c!1276462)) b!6857364))

(assert (= (and d!2154952 res!2798181) b!6857362))

(assert (= (and b!6857362 c!1276461) b!6857363))

(assert (= (and b!6857362 (not c!1276461)) b!6857361))

(assert (= (and b!6857361 c!1276463) b!6857366))

(assert (= (and b!6857361 (not c!1276463)) b!6857365))

(declare-fun m!7593406 () Bool)

(assert (=> b!6857359 m!7593406))

(declare-fun m!7593408 () Bool)

(assert (=> b!6857360 m!7593408))

(declare-fun m!7593410 () Bool)

(assert (=> b!6857361 m!7593410))

(assert (=> b!6857361 m!7593410))

(declare-fun m!7593412 () Bool)

(assert (=> b!6857361 m!7593412))

(declare-fun m!7593414 () Bool)

(assert (=> b!6857363 m!7593414))

(declare-fun m!7593416 () Bool)

(assert (=> d!2154952 m!7593416))

(declare-fun m!7593418 () Bool)

(assert (=> d!2154952 m!7593418))

(declare-fun m!7593420 () Bool)

(assert (=> b!6857362 m!7593420))

(declare-fun m!7593422 () Bool)

(assert (=> b!6857365 m!7593422))

(declare-fun m!7593424 () Bool)

(assert (=> b!6857366 m!7593424))

(assert (=> bs!1832722 d!2154952))

(assert (=> b!6856477 d!2154882))

(assert (=> b!6856477 d!2154884))

(declare-fun d!2154954 () Bool)

(declare-fun res!2798186 () Bool)

(declare-fun e!4134521 () Bool)

(assert (=> d!2154954 (=> res!2798186 e!4134521)))

(assert (=> d!2154954 (= res!2798186 ((_ is Nil!66219) lt!2456716))))

(assert (=> d!2154954 (= (noDuplicate!2445 lt!2456716) e!4134521)))

(declare-fun b!6857372 () Bool)

(declare-fun e!4134522 () Bool)

(assert (=> b!6857372 (= e!4134521 e!4134522)))

(declare-fun res!2798187 () Bool)

(assert (=> b!6857372 (=> (not res!2798187) (not e!4134522))))

(assert (=> b!6857372 (= res!2798187 (not (contains!20337 (t!380086 lt!2456716) (h!72667 lt!2456716))))))

(declare-fun b!6857373 () Bool)

(assert (=> b!6857373 (= e!4134522 (noDuplicate!2445 (t!380086 lt!2456716)))))

(assert (= (and d!2154954 (not res!2798186)) b!6857372))

(assert (= (and b!6857372 res!2798187) b!6857373))

(declare-fun m!7593426 () Bool)

(assert (=> b!6857372 m!7593426))

(declare-fun m!7593428 () Bool)

(assert (=> b!6857373 m!7593428))

(assert (=> d!2154674 d!2154954))

(declare-fun d!2154956 () Bool)

(declare-fun e!4134529 () Bool)

(assert (=> d!2154956 e!4134529))

(declare-fun res!2798192 () Bool)

(assert (=> d!2154956 (=> (not res!2798192) (not e!4134529))))

(declare-fun res!2798193 () List!66343)

(assert (=> d!2154956 (= res!2798192 (noDuplicate!2445 res!2798193))))

(declare-fun e!4134530 () Bool)

(assert (=> d!2154956 e!4134530))

(assert (=> d!2154956 (= (choose!51075 z!1189) res!2798193)))

(declare-fun b!6857381 () Bool)

(declare-fun e!4134531 () Bool)

(declare-fun tp!1880371 () Bool)

(assert (=> b!6857381 (= e!4134531 tp!1880371)))

(declare-fun b!6857380 () Bool)

(declare-fun tp!1880370 () Bool)

(assert (=> b!6857380 (= e!4134530 (and (inv!84949 (h!72667 res!2798193)) e!4134531 tp!1880370))))

(declare-fun b!6857382 () Bool)

(assert (=> b!6857382 (= e!4134529 (= (content!12989 res!2798193) z!1189))))

(assert (= b!6857380 b!6857381))

(assert (= (and d!2154956 ((_ is Cons!66219) res!2798193)) b!6857380))

(assert (= (and d!2154956 res!2798192) b!6857382))

(declare-fun m!7593430 () Bool)

(assert (=> d!2154956 m!7593430))

(declare-fun m!7593432 () Bool)

(assert (=> b!6857380 m!7593432))

(declare-fun m!7593434 () Bool)

(assert (=> b!6857382 m!7593434))

(assert (=> d!2154674 d!2154956))

(declare-fun d!2154958 () Bool)

(declare-fun res!2798194 () Bool)

(declare-fun e!4134532 () Bool)

(assert (=> d!2154958 (=> res!2798194 e!4134532)))

(assert (=> d!2154958 (= res!2798194 ((_ is Nil!66218) (exprs!6565 setElem!47119)))))

(assert (=> d!2154958 (= (forall!15860 (exprs!6565 setElem!47119) lambda!387600) e!4134532)))

(declare-fun b!6857383 () Bool)

(declare-fun e!4134533 () Bool)

(assert (=> b!6857383 (= e!4134532 e!4134533)))

(declare-fun res!2798195 () Bool)

(assert (=> b!6857383 (=> (not res!2798195) (not e!4134533))))

(assert (=> b!6857383 (= res!2798195 (dynLambda!26473 lambda!387600 (h!72666 (exprs!6565 setElem!47119))))))

(declare-fun b!6857384 () Bool)

(assert (=> b!6857384 (= e!4134533 (forall!15860 (t!380085 (exprs!6565 setElem!47119)) lambda!387600))))

(assert (= (and d!2154958 (not res!2798194)) b!6857383))

(assert (= (and b!6857383 res!2798195) b!6857384))

(declare-fun b_lambda!259047 () Bool)

(assert (=> (not b_lambda!259047) (not b!6857383)))

(declare-fun m!7593436 () Bool)

(assert (=> b!6857383 m!7593436))

(declare-fun m!7593438 () Bool)

(assert (=> b!6857384 m!7593438))

(assert (=> d!2154676 d!2154958))

(assert (=> b!6856530 d!2154952))

(declare-fun bs!1832956 () Bool)

(declare-fun d!2154960 () Bool)

(assert (= bs!1832956 (and d!2154960 d!2154676)))

(declare-fun lambda!387671 () Int)

(assert (=> bs!1832956 (= lambda!387671 lambda!387600)))

(declare-fun bs!1832957 () Bool)

(assert (= bs!1832957 (and d!2154960 d!2154898)))

(assert (=> bs!1832957 (not (= lambda!387671 lambda!387660))))

(declare-fun bs!1832958 () Bool)

(assert (= bs!1832958 (and d!2154960 d!2154690)))

(assert (=> bs!1832958 (= lambda!387671 lambda!387611)))

(declare-fun bs!1832959 () Bool)

(assert (= bs!1832959 (and d!2154960 d!2154900)))

(assert (=> bs!1832959 (not (= lambda!387671 lambda!387663))))

(declare-fun bs!1832960 () Bool)

(assert (= bs!1832960 (and d!2154960 d!2154842)))

(assert (=> bs!1832960 (= lambda!387671 lambda!387648)))

(declare-fun bs!1832961 () Bool)

(assert (= bs!1832961 (and d!2154960 b!6856039)))

(assert (=> bs!1832961 (not (= lambda!387671 lambda!387558))))

(declare-fun bs!1832962 () Bool)

(assert (= bs!1832962 (and d!2154960 d!2154946)))

(assert (=> bs!1832962 (= lambda!387671 lambda!387667)))

(declare-fun bs!1832963 () Bool)

(assert (= bs!1832963 (and d!2154960 d!2154656)))

(assert (=> bs!1832963 (= lambda!387671 lambda!387593)))

(declare-fun bs!1832964 () Bool)

(assert (= bs!1832964 (and d!2154960 d!2154888)))

(assert (=> bs!1832964 (= lambda!387671 lambda!387659)))

(declare-fun bs!1832965 () Bool)

(assert (= bs!1832965 (and d!2154960 d!2154852)))

(assert (=> bs!1832965 (= lambda!387671 lambda!387653)))

(assert (=> bs!1832958 (not (= lambda!387671 lambda!387612))))

(declare-fun bs!1832966 () Bool)

(assert (= bs!1832966 (and d!2154960 d!2154692)))

(assert (=> bs!1832966 (= lambda!387671 lambda!387615)))

(declare-fun bs!1832967 () Bool)

(assert (= bs!1832967 (and d!2154960 d!2154586)))

(assert (=> bs!1832967 (not (= lambda!387671 lambda!387562))))

(declare-fun bs!1832968 () Bool)

(assert (= bs!1832968 (and d!2154960 d!2154952)))

(assert (=> bs!1832968 (= lambda!387671 lambda!387670)))

(declare-fun lt!2456796 () List!66342)

(assert (=> d!2154960 (forall!15860 lt!2456796 lambda!387671)))

(declare-fun e!4134534 () List!66342)

(assert (=> d!2154960 (= lt!2456796 e!4134534)))

(declare-fun c!1276465 () Bool)

(assert (=> d!2154960 (= c!1276465 ((_ is Cons!66219) (t!380086 zl!343)))))

(assert (=> d!2154960 (= (unfocusZipperList!2098 (t!380086 zl!343)) lt!2456796)))

(declare-fun b!6857385 () Bool)

(assert (=> b!6857385 (= e!4134534 (Cons!66218 (generalisedConcat!2270 (exprs!6565 (h!72667 (t!380086 zl!343)))) (unfocusZipperList!2098 (t!380086 (t!380086 zl!343)))))))

(declare-fun b!6857386 () Bool)

(assert (=> b!6857386 (= e!4134534 Nil!66218)))

(assert (= (and d!2154960 c!1276465) b!6857385))

(assert (= (and d!2154960 (not c!1276465)) b!6857386))

(declare-fun m!7593440 () Bool)

(assert (=> d!2154960 m!7593440))

(declare-fun m!7593442 () Bool)

(assert (=> b!6857385 m!7593442))

(declare-fun m!7593444 () Bool)

(assert (=> b!6857385 m!7593444))

(assert (=> b!6856530 d!2154960))

(declare-fun d!2154962 () Bool)

(declare-fun lt!2456797 () Int)

(assert (=> d!2154962 (>= lt!2456797 0)))

(declare-fun e!4134535 () Int)

(assert (=> d!2154962 (= lt!2456797 e!4134535)))

(declare-fun c!1276466 () Bool)

(assert (=> d!2154962 (= c!1276466 ((_ is Cons!66218) (exprs!6565 (h!72667 zl!343))))))

(assert (=> d!2154962 (= (contextDepthTotal!408 (h!72667 zl!343)) lt!2456797)))

(declare-fun b!6857387 () Bool)

(assert (=> b!6857387 (= e!4134535 (+ (regexDepthTotal!253 (h!72666 (exprs!6565 (h!72667 zl!343)))) (contextDepthTotal!408 (Context!12131 (t!380085 (exprs!6565 (h!72667 zl!343)))))))))

(declare-fun b!6857388 () Bool)

(assert (=> b!6857388 (= e!4134535 1)))

(assert (= (and d!2154962 c!1276466) b!6857387))

(assert (= (and d!2154962 (not c!1276466)) b!6857388))

(declare-fun m!7593446 () Bool)

(assert (=> b!6857387 m!7593446))

(declare-fun m!7593448 () Bool)

(assert (=> b!6857387 m!7593448))

(assert (=> b!6856206 d!2154962))

(declare-fun d!2154964 () Bool)

(declare-fun lt!2456798 () Int)

(assert (=> d!2154964 (>= lt!2456798 0)))

(declare-fun e!4134536 () Int)

(assert (=> d!2154964 (= lt!2456798 e!4134536)))

(declare-fun c!1276467 () Bool)

(assert (=> d!2154964 (= c!1276467 ((_ is Cons!66219) (t!380086 zl!343)))))

(assert (=> d!2154964 (= (zipperDepthTotal!436 (t!380086 zl!343)) lt!2456798)))

(declare-fun b!6857389 () Bool)

(assert (=> b!6857389 (= e!4134536 (+ (contextDepthTotal!408 (h!72667 (t!380086 zl!343))) (zipperDepthTotal!436 (t!380086 (t!380086 zl!343)))))))

(declare-fun b!6857390 () Bool)

(assert (=> b!6857390 (= e!4134536 0)))

(assert (= (and d!2154964 c!1276467) b!6857389))

(assert (= (and d!2154964 (not c!1276467)) b!6857390))

(declare-fun m!7593450 () Bool)

(assert (=> b!6857389 m!7593450))

(declare-fun m!7593452 () Bool)

(assert (=> b!6857389 m!7593452))

(assert (=> b!6856206 d!2154964))

(declare-fun b!6857391 () Bool)

(declare-fun res!2798198 () Bool)

(declare-fun e!4134543 () Bool)

(assert (=> b!6857391 (=> res!2798198 e!4134543)))

(assert (=> b!6857391 (= res!2798198 (not ((_ is Concat!25526) (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292))))))))

(declare-fun e!4134541 () Bool)

(assert (=> b!6857391 (= e!4134541 e!4134543)))

(declare-fun b!6857392 () Bool)

(declare-fun e!4134540 () Bool)

(declare-fun e!4134537 () Bool)

(assert (=> b!6857392 (= e!4134540 e!4134537)))

(declare-fun c!1276468 () Bool)

(assert (=> b!6857392 (= c!1276468 ((_ is Star!16681) (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))))))

(declare-fun b!6857393 () Bool)

(declare-fun e!4134538 () Bool)

(declare-fun call!624670 () Bool)

(assert (=> b!6857393 (= e!4134538 call!624670)))

(declare-fun b!6857394 () Bool)

(declare-fun e!4134539 () Bool)

(declare-fun call!624668 () Bool)

(assert (=> b!6857394 (= e!4134539 call!624668)))

(declare-fun b!6857395 () Bool)

(declare-fun res!2798199 () Bool)

(declare-fun e!4134542 () Bool)

(assert (=> b!6857395 (=> (not res!2798199) (not e!4134542))))

(declare-fun call!624669 () Bool)

(assert (=> b!6857395 (= res!2798199 call!624669)))

(assert (=> b!6857395 (= e!4134541 e!4134542)))

(declare-fun b!6857396 () Bool)

(assert (=> b!6857396 (= e!4134542 call!624668)))

(declare-fun b!6857397 () Bool)

(assert (=> b!6857397 (= e!4134537 e!4134541)))

(declare-fun c!1276469 () Bool)

(assert (=> b!6857397 (= c!1276469 ((_ is Union!16681) (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))))))

(declare-fun b!6857398 () Bool)

(assert (=> b!6857398 (= e!4134543 e!4134539)))

(declare-fun res!2798200 () Bool)

(assert (=> b!6857398 (=> (not res!2798200) (not e!4134539))))

(assert (=> b!6857398 (= res!2798200 call!624669)))

(declare-fun b!6857399 () Bool)

(assert (=> b!6857399 (= e!4134537 e!4134538)))

(declare-fun res!2798196 () Bool)

(assert (=> b!6857399 (= res!2798196 (not (nullable!6642 (reg!17010 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))))))))

(assert (=> b!6857399 (=> (not res!2798196) (not e!4134538))))

(declare-fun bm!624663 () Bool)

(assert (=> bm!624663 (= call!624670 (validRegex!8417 (ite c!1276468 (reg!17010 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))) (ite c!1276469 (regTwo!33875 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))) (regTwo!33874 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292))))))))))

(declare-fun d!2154966 () Bool)

(declare-fun res!2798197 () Bool)

(assert (=> d!2154966 (=> res!2798197 e!4134540)))

(assert (=> d!2154966 (= res!2798197 ((_ is ElementMatch!16681) (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))))))

(assert (=> d!2154966 (= (validRegex!8417 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))) e!4134540)))

(declare-fun bm!624664 () Bool)

(assert (=> bm!624664 (= call!624669 (validRegex!8417 (ite c!1276469 (regOne!33875 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))) (regOne!33874 (ite c!1276243 (reg!17010 r!7292) (ite c!1276244 (regTwo!33875 r!7292) (regTwo!33874 r!7292)))))))))

(declare-fun bm!624665 () Bool)

(assert (=> bm!624665 (= call!624668 call!624670)))

(assert (= (and d!2154966 (not res!2798197)) b!6857392))

(assert (= (and b!6857392 c!1276468) b!6857399))

(assert (= (and b!6857392 (not c!1276468)) b!6857397))

(assert (= (and b!6857399 res!2798196) b!6857393))

(assert (= (and b!6857397 c!1276469) b!6857395))

(assert (= (and b!6857397 (not c!1276469)) b!6857391))

(assert (= (and b!6857395 res!2798199) b!6857396))

(assert (= (and b!6857391 (not res!2798198)) b!6857398))

(assert (= (and b!6857398 res!2798200) b!6857394))

(assert (= (or b!6857396 b!6857394) bm!624665))

(assert (= (or b!6857395 b!6857398) bm!624664))

(assert (= (or b!6857393 bm!624665) bm!624663))

(declare-fun m!7593454 () Bool)

(assert (=> b!6857399 m!7593454))

(declare-fun m!7593456 () Bool)

(assert (=> bm!624663 m!7593456))

(declare-fun m!7593458 () Bool)

(assert (=> bm!624664 m!7593458))

(assert (=> bm!624564 d!2154966))

(declare-fun d!2154968 () Bool)

(declare-fun lt!2456799 () Bool)

(assert (=> d!2154968 (= lt!2456799 (select (content!12990 (t!380085 lt!2456629)) lt!2456625))))

(declare-fun e!4134544 () Bool)

(assert (=> d!2154968 (= lt!2456799 e!4134544)))

(declare-fun res!2798202 () Bool)

(assert (=> d!2154968 (=> (not res!2798202) (not e!4134544))))

(assert (=> d!2154968 (= res!2798202 ((_ is Cons!66218) (t!380085 lt!2456629)))))

(assert (=> d!2154968 (= (contains!20335 (t!380085 lt!2456629) lt!2456625) lt!2456799)))

(declare-fun b!6857400 () Bool)

(declare-fun e!4134545 () Bool)

(assert (=> b!6857400 (= e!4134544 e!4134545)))

(declare-fun res!2798201 () Bool)

(assert (=> b!6857400 (=> res!2798201 e!4134545)))

(assert (=> b!6857400 (= res!2798201 (= (h!72666 (t!380085 lt!2456629)) lt!2456625))))

(declare-fun b!6857401 () Bool)

(assert (=> b!6857401 (= e!4134545 (contains!20335 (t!380085 (t!380085 lt!2456629)) lt!2456625))))

(assert (= (and d!2154968 res!2798202) b!6857400))

(assert (= (and b!6857400 (not res!2798201)) b!6857401))

(declare-fun m!7593460 () Bool)

(assert (=> d!2154968 m!7593460))

(declare-fun m!7593462 () Bool)

(assert (=> d!2154968 m!7593462))

(declare-fun m!7593464 () Bool)

(assert (=> b!6857401 m!7593464))

(assert (=> b!6856494 d!2154968))

(declare-fun d!2154970 () Bool)

(declare-fun res!2798203 () Bool)

(declare-fun e!4134546 () Bool)

(assert (=> d!2154970 (=> res!2798203 e!4134546)))

(assert (=> d!2154970 (= res!2798203 ((_ is Nil!66218) lt!2456629))))

(assert (=> d!2154970 (= (forall!15860 lt!2456629 lambda!387562) e!4134546)))

(declare-fun b!6857402 () Bool)

(declare-fun e!4134547 () Bool)

(assert (=> b!6857402 (= e!4134546 e!4134547)))

(declare-fun res!2798204 () Bool)

(assert (=> b!6857402 (=> (not res!2798204) (not e!4134547))))

(assert (=> b!6857402 (= res!2798204 (dynLambda!26473 lambda!387562 (h!72666 lt!2456629)))))

(declare-fun b!6857403 () Bool)

(assert (=> b!6857403 (= e!4134547 (forall!15860 (t!380085 lt!2456629) lambda!387562))))

(assert (= (and d!2154970 (not res!2798203)) b!6857402))

(assert (= (and b!6857402 res!2798204) b!6857403))

(declare-fun b_lambda!259049 () Bool)

(assert (=> (not b_lambda!259049) (not b!6857402)))

(declare-fun m!7593466 () Bool)

(assert (=> b!6857402 m!7593466))

(declare-fun m!7593468 () Bool)

(assert (=> b!6857403 m!7593468))

(assert (=> d!2154586 d!2154970))

(declare-fun d!2154972 () Bool)

(declare-fun c!1276472 () Bool)

(assert (=> d!2154972 (= c!1276472 ((_ is Nil!66218) lt!2456629))))

(declare-fun e!4134550 () (InoxSet Regex!16681))

(assert (=> d!2154972 (= (content!12990 lt!2456629) e!4134550)))

(declare-fun b!6857408 () Bool)

(assert (=> b!6857408 (= e!4134550 ((as const (Array Regex!16681 Bool)) false))))

(declare-fun b!6857409 () Bool)

(assert (=> b!6857409 (= e!4134550 ((_ map or) (store ((as const (Array Regex!16681 Bool)) false) (h!72666 lt!2456629) true) (content!12990 (t!380085 lt!2456629))))))

(assert (= (and d!2154972 c!1276472) b!6857408))

(assert (= (and d!2154972 (not c!1276472)) b!6857409))

(declare-fun m!7593470 () Bool)

(assert (=> b!6857409 m!7593470))

(assert (=> b!6857409 m!7593460))

(assert (=> d!2154680 d!2154972))

(assert (=> d!2154670 d!2154668))

(assert (=> d!2154670 d!2154658))

(declare-fun d!2154974 () Bool)

(assert (=> d!2154974 (= (matchR!8864 r!7292 s!2326) (matchRSpec!3782 r!7292 s!2326))))

(assert (=> d!2154974 true))

(declare-fun _$88!5714 () Unit!160101)

(assert (=> d!2154974 (= (choose!51074 r!7292 s!2326) _$88!5714)))

(declare-fun bs!1832969 () Bool)

(assert (= bs!1832969 d!2154974))

(assert (=> bs!1832969 m!7592526))

(assert (=> bs!1832969 m!7592524))

(assert (=> d!2154670 d!2154974))

(assert (=> d!2154670 d!2154684))

(declare-fun d!2154976 () Bool)

(declare-fun lt!2456800 () Bool)

(assert (=> d!2154976 (= lt!2456800 (select (content!12990 lt!2456629) lt!2456725))))

(declare-fun e!4134551 () Bool)

(assert (=> d!2154976 (= lt!2456800 e!4134551)))

(declare-fun res!2798206 () Bool)

(assert (=> d!2154976 (=> (not res!2798206) (not e!4134551))))

(assert (=> d!2154976 (= res!2798206 ((_ is Cons!66218) lt!2456629))))

(assert (=> d!2154976 (= (contains!20335 lt!2456629 lt!2456725) lt!2456800)))

(declare-fun b!6857410 () Bool)

(declare-fun e!4134552 () Bool)

(assert (=> b!6857410 (= e!4134551 e!4134552)))

(declare-fun res!2798205 () Bool)

(assert (=> b!6857410 (=> res!2798205 e!4134552)))

(assert (=> b!6857410 (= res!2798205 (= (h!72666 lt!2456629) lt!2456725))))

(declare-fun b!6857411 () Bool)

(assert (=> b!6857411 (= e!4134552 (contains!20335 (t!380085 lt!2456629) lt!2456725))))

(assert (= (and d!2154976 res!2798206) b!6857410))

(assert (= (and b!6857410 (not res!2798205)) b!6857411))

(assert (=> d!2154976 m!7592776))

(declare-fun m!7593472 () Bool)

(assert (=> d!2154976 m!7593472))

(declare-fun m!7593474 () Bool)

(assert (=> b!6857411 m!7593474))

(assert (=> b!6856511 d!2154976))

(declare-fun b!6857428 () Bool)

(declare-fun e!4134563 () Int)

(declare-fun e!4134561 () Int)

(assert (=> b!6857428 (= e!4134563 e!4134561)))

(declare-fun c!1276483 () Bool)

(assert (=> b!6857428 (= c!1276483 ((_ is Star!16681) (h!72666 (exprs!6565 lt!2456633))))))

(declare-fun bm!624672 () Bool)

(declare-fun call!624678 () Int)

(declare-fun c!1276484 () Bool)

(assert (=> bm!624672 (= call!624678 (regexDepthTotal!253 (ite c!1276484 (regTwo!33875 (h!72666 (exprs!6565 lt!2456633))) (regTwo!33874 (h!72666 (exprs!6565 lt!2456633))))))))

(declare-fun b!6857429 () Bool)

(assert (=> b!6857429 (= e!4134563 1)))

(declare-fun bm!624673 () Bool)

(declare-fun call!624677 () Int)

(declare-fun call!624679 () Int)

(assert (=> bm!624673 (= call!624677 call!624679)))

(declare-fun bm!624674 () Bool)

(assert (=> bm!624674 (= call!624679 (regexDepthTotal!253 (ite c!1276483 (reg!17010 (h!72666 (exprs!6565 lt!2456633))) (ite c!1276484 (regOne!33875 (h!72666 (exprs!6565 lt!2456633))) (regOne!33874 (h!72666 (exprs!6565 lt!2456633)))))))))

(declare-fun b!6857430 () Bool)

(declare-fun e!4134562 () Int)

(assert (=> b!6857430 (= e!4134562 (+ 1 call!624677 call!624678))))

(declare-fun d!2154978 () Bool)

(declare-fun lt!2456803 () Int)

(assert (=> d!2154978 (> lt!2456803 0)))

(assert (=> d!2154978 (= lt!2456803 e!4134563)))

(declare-fun c!1276481 () Bool)

(assert (=> d!2154978 (= c!1276481 ((_ is ElementMatch!16681) (h!72666 (exprs!6565 lt!2456633))))))

(assert (=> d!2154978 (= (regexDepthTotal!253 (h!72666 (exprs!6565 lt!2456633))) lt!2456803)))

(declare-fun b!6857431 () Bool)

(declare-fun e!4134564 () Int)

(assert (=> b!6857431 (= e!4134562 e!4134564)))

(declare-fun c!1276482 () Bool)

(assert (=> b!6857431 (= c!1276482 ((_ is Concat!25526) (h!72666 (exprs!6565 lt!2456633))))))

(declare-fun b!6857432 () Bool)

(assert (=> b!6857432 (= e!4134564 1)))

(declare-fun b!6857433 () Bool)

(assert (=> b!6857433 (= c!1276484 ((_ is Union!16681) (h!72666 (exprs!6565 lt!2456633))))))

(assert (=> b!6857433 (= e!4134561 e!4134562)))

(declare-fun b!6857434 () Bool)

(assert (=> b!6857434 (= e!4134561 (+ 1 call!624679))))

(declare-fun b!6857435 () Bool)

(assert (=> b!6857435 (= e!4134564 (+ 1 call!624677 call!624678))))

(assert (= (and d!2154978 c!1276481) b!6857429))

(assert (= (and d!2154978 (not c!1276481)) b!6857428))

(assert (= (and b!6857428 c!1276483) b!6857434))

(assert (= (and b!6857428 (not c!1276483)) b!6857433))

(assert (= (and b!6857433 c!1276484) b!6857430))

(assert (= (and b!6857433 (not c!1276484)) b!6857431))

(assert (= (and b!6857431 c!1276482) b!6857435))

(assert (= (and b!6857431 (not c!1276482)) b!6857432))

(assert (= (or b!6857430 b!6857435) bm!624672))

(assert (= (or b!6857430 b!6857435) bm!624673))

(assert (= (or b!6857434 bm!624673) bm!624674))

(declare-fun m!7593476 () Bool)

(assert (=> bm!624672 m!7593476))

(declare-fun m!7593478 () Bool)

(assert (=> bm!624674 m!7593478))

(assert (=> b!6856218 d!2154978))

(declare-fun d!2154980 () Bool)

(declare-fun lt!2456804 () Int)

(assert (=> d!2154980 (>= lt!2456804 0)))

(declare-fun e!4134565 () Int)

(assert (=> d!2154980 (= lt!2456804 e!4134565)))

(declare-fun c!1276485 () Bool)

(assert (=> d!2154980 (= c!1276485 ((_ is Cons!66218) (exprs!6565 (Context!12131 (t!380085 (exprs!6565 lt!2456633))))))))

(assert (=> d!2154980 (= (contextDepthTotal!408 (Context!12131 (t!380085 (exprs!6565 lt!2456633)))) lt!2456804)))

(declare-fun b!6857436 () Bool)

(assert (=> b!6857436 (= e!4134565 (+ (regexDepthTotal!253 (h!72666 (exprs!6565 (Context!12131 (t!380085 (exprs!6565 lt!2456633)))))) (contextDepthTotal!408 (Context!12131 (t!380085 (exprs!6565 (Context!12131 (t!380085 (exprs!6565 lt!2456633)))))))))))

(declare-fun b!6857437 () Bool)

(assert (=> b!6857437 (= e!4134565 1)))

(assert (= (and d!2154980 c!1276485) b!6857436))

(assert (= (and d!2154980 (not c!1276485)) b!6857437))

(declare-fun m!7593480 () Bool)

(assert (=> b!6857436 m!7593480))

(declare-fun m!7593482 () Bool)

(assert (=> b!6857436 m!7593482))

(assert (=> b!6856218 d!2154980))

(declare-fun b!6857439 () Bool)

(declare-fun e!4134566 () Bool)

(declare-fun tp!1880373 () Bool)

(declare-fun tp!1880372 () Bool)

(assert (=> b!6857439 (= e!4134566 (and tp!1880373 tp!1880372))))

(declare-fun b!6857441 () Bool)

(declare-fun tp!1880374 () Bool)

(declare-fun tp!1880376 () Bool)

(assert (=> b!6857441 (= e!4134566 (and tp!1880374 tp!1880376))))

(declare-fun b!6857438 () Bool)

(assert (=> b!6857438 (= e!4134566 tp_is_empty!42615)))

(declare-fun b!6857440 () Bool)

(declare-fun tp!1880375 () Bool)

(assert (=> b!6857440 (= e!4134566 tp!1880375)))

(assert (=> b!6856554 (= tp!1880176 e!4134566)))

(assert (= (and b!6856554 ((_ is ElementMatch!16681) (reg!17010 (regOne!33875 r!7292)))) b!6857438))

(assert (= (and b!6856554 ((_ is Concat!25526) (reg!17010 (regOne!33875 r!7292)))) b!6857439))

(assert (= (and b!6856554 ((_ is Star!16681) (reg!17010 (regOne!33875 r!7292)))) b!6857440))

(assert (= (and b!6856554 ((_ is Union!16681) (reg!17010 (regOne!33875 r!7292)))) b!6857441))

(declare-fun b!6857443 () Bool)

(declare-fun e!4134567 () Bool)

(declare-fun tp!1880378 () Bool)

(declare-fun tp!1880377 () Bool)

(assert (=> b!6857443 (= e!4134567 (and tp!1880378 tp!1880377))))

(declare-fun b!6857445 () Bool)

(declare-fun tp!1880379 () Bool)

(declare-fun tp!1880381 () Bool)

(assert (=> b!6857445 (= e!4134567 (and tp!1880379 tp!1880381))))

(declare-fun b!6857442 () Bool)

(assert (=> b!6857442 (= e!4134567 tp_is_empty!42615)))

(declare-fun b!6857444 () Bool)

(declare-fun tp!1880380 () Bool)

(assert (=> b!6857444 (= e!4134567 tp!1880380)))

(assert (=> b!6856555 (= tp!1880175 e!4134567)))

(assert (= (and b!6856555 ((_ is ElementMatch!16681) (regOne!33875 (regOne!33875 r!7292)))) b!6857442))

(assert (= (and b!6856555 ((_ is Concat!25526) (regOne!33875 (regOne!33875 r!7292)))) b!6857443))

(assert (= (and b!6856555 ((_ is Star!16681) (regOne!33875 (regOne!33875 r!7292)))) b!6857444))

(assert (= (and b!6856555 ((_ is Union!16681) (regOne!33875 (regOne!33875 r!7292)))) b!6857445))

(declare-fun b!6857447 () Bool)

(declare-fun e!4134568 () Bool)

(declare-fun tp!1880383 () Bool)

(declare-fun tp!1880382 () Bool)

(assert (=> b!6857447 (= e!4134568 (and tp!1880383 tp!1880382))))

(declare-fun b!6857449 () Bool)

(declare-fun tp!1880384 () Bool)

(declare-fun tp!1880386 () Bool)

(assert (=> b!6857449 (= e!4134568 (and tp!1880384 tp!1880386))))

(declare-fun b!6857446 () Bool)

(assert (=> b!6857446 (= e!4134568 tp_is_empty!42615)))

(declare-fun b!6857448 () Bool)

(declare-fun tp!1880385 () Bool)

(assert (=> b!6857448 (= e!4134568 tp!1880385)))

(assert (=> b!6856555 (= tp!1880177 e!4134568)))

(assert (= (and b!6856555 ((_ is ElementMatch!16681) (regTwo!33875 (regOne!33875 r!7292)))) b!6857446))

(assert (= (and b!6856555 ((_ is Concat!25526) (regTwo!33875 (regOne!33875 r!7292)))) b!6857447))

(assert (= (and b!6856555 ((_ is Star!16681) (regTwo!33875 (regOne!33875 r!7292)))) b!6857448))

(assert (= (and b!6856555 ((_ is Union!16681) (regTwo!33875 (regOne!33875 r!7292)))) b!6857449))

(declare-fun b!6857451 () Bool)

(declare-fun e!4134569 () Bool)

(declare-fun tp!1880388 () Bool)

(declare-fun tp!1880387 () Bool)

(assert (=> b!6857451 (= e!4134569 (and tp!1880388 tp!1880387))))

(declare-fun b!6857453 () Bool)

(declare-fun tp!1880389 () Bool)

(declare-fun tp!1880391 () Bool)

(assert (=> b!6857453 (= e!4134569 (and tp!1880389 tp!1880391))))

(declare-fun b!6857450 () Bool)

(assert (=> b!6857450 (= e!4134569 tp_is_empty!42615)))

(declare-fun b!6857452 () Bool)

(declare-fun tp!1880390 () Bool)

(assert (=> b!6857452 (= e!4134569 tp!1880390)))

(assert (=> b!6856583 (= tp!1880208 e!4134569)))

(assert (= (and b!6856583 ((_ is ElementMatch!16681) (regOne!33874 (regTwo!33874 r!7292)))) b!6857450))

(assert (= (and b!6856583 ((_ is Concat!25526) (regOne!33874 (regTwo!33874 r!7292)))) b!6857451))

(assert (= (and b!6856583 ((_ is Star!16681) (regOne!33874 (regTwo!33874 r!7292)))) b!6857452))

(assert (= (and b!6856583 ((_ is Union!16681) (regOne!33874 (regTwo!33874 r!7292)))) b!6857453))

(declare-fun b!6857455 () Bool)

(declare-fun e!4134570 () Bool)

(declare-fun tp!1880393 () Bool)

(declare-fun tp!1880392 () Bool)

(assert (=> b!6857455 (= e!4134570 (and tp!1880393 tp!1880392))))

(declare-fun b!6857457 () Bool)

(declare-fun tp!1880394 () Bool)

(declare-fun tp!1880396 () Bool)

(assert (=> b!6857457 (= e!4134570 (and tp!1880394 tp!1880396))))

(declare-fun b!6857454 () Bool)

(assert (=> b!6857454 (= e!4134570 tp_is_empty!42615)))

(declare-fun b!6857456 () Bool)

(declare-fun tp!1880395 () Bool)

(assert (=> b!6857456 (= e!4134570 tp!1880395)))

(assert (=> b!6856583 (= tp!1880207 e!4134570)))

(assert (= (and b!6856583 ((_ is ElementMatch!16681) (regTwo!33874 (regTwo!33874 r!7292)))) b!6857454))

(assert (= (and b!6856583 ((_ is Concat!25526) (regTwo!33874 (regTwo!33874 r!7292)))) b!6857455))

(assert (= (and b!6856583 ((_ is Star!16681) (regTwo!33874 (regTwo!33874 r!7292)))) b!6857456))

(assert (= (and b!6856583 ((_ is Union!16681) (regTwo!33874 (regTwo!33874 r!7292)))) b!6857457))

(declare-fun b!6857459 () Bool)

(declare-fun e!4134571 () Bool)

(declare-fun tp!1880398 () Bool)

(declare-fun tp!1880397 () Bool)

(assert (=> b!6857459 (= e!4134571 (and tp!1880398 tp!1880397))))

(declare-fun b!6857461 () Bool)

(declare-fun tp!1880399 () Bool)

(declare-fun tp!1880401 () Bool)

(assert (=> b!6857461 (= e!4134571 (and tp!1880399 tp!1880401))))

(declare-fun b!6857458 () Bool)

(assert (=> b!6857458 (= e!4134571 tp_is_empty!42615)))

(declare-fun b!6857460 () Bool)

(declare-fun tp!1880400 () Bool)

(assert (=> b!6857460 (= e!4134571 tp!1880400)))

(assert (=> b!6856561 (= tp!1880184 e!4134571)))

(assert (= (and b!6856561 ((_ is ElementMatch!16681) (regOne!33874 (reg!17010 r!7292)))) b!6857458))

(assert (= (and b!6856561 ((_ is Concat!25526) (regOne!33874 (reg!17010 r!7292)))) b!6857459))

(assert (= (and b!6856561 ((_ is Star!16681) (regOne!33874 (reg!17010 r!7292)))) b!6857460))

(assert (= (and b!6856561 ((_ is Union!16681) (regOne!33874 (reg!17010 r!7292)))) b!6857461))

(declare-fun b!6857463 () Bool)

(declare-fun e!4134572 () Bool)

(declare-fun tp!1880403 () Bool)

(declare-fun tp!1880402 () Bool)

(assert (=> b!6857463 (= e!4134572 (and tp!1880403 tp!1880402))))

(declare-fun b!6857465 () Bool)

(declare-fun tp!1880404 () Bool)

(declare-fun tp!1880406 () Bool)

(assert (=> b!6857465 (= e!4134572 (and tp!1880404 tp!1880406))))

(declare-fun b!6857462 () Bool)

(assert (=> b!6857462 (= e!4134572 tp_is_empty!42615)))

(declare-fun b!6857464 () Bool)

(declare-fun tp!1880405 () Bool)

(assert (=> b!6857464 (= e!4134572 tp!1880405)))

(assert (=> b!6856561 (= tp!1880183 e!4134572)))

(assert (= (and b!6856561 ((_ is ElementMatch!16681) (regTwo!33874 (reg!17010 r!7292)))) b!6857462))

(assert (= (and b!6856561 ((_ is Concat!25526) (regTwo!33874 (reg!17010 r!7292)))) b!6857463))

(assert (= (and b!6856561 ((_ is Star!16681) (regTwo!33874 (reg!17010 r!7292)))) b!6857464))

(assert (= (and b!6856561 ((_ is Union!16681) (regTwo!33874 (reg!17010 r!7292)))) b!6857465))

(declare-fun b!6857467 () Bool)

(declare-fun e!4134574 () Bool)

(declare-fun tp!1880407 () Bool)

(assert (=> b!6857467 (= e!4134574 tp!1880407)))

(declare-fun b!6857466 () Bool)

(declare-fun e!4134573 () Bool)

(declare-fun tp!1880408 () Bool)

(assert (=> b!6857466 (= e!4134573 (and (inv!84949 (h!72667 (t!380086 (t!380086 zl!343)))) e!4134574 tp!1880408))))

(assert (=> b!6856575 (= tp!1880199 e!4134573)))

(assert (= b!6857466 b!6857467))

(assert (= (and b!6856575 ((_ is Cons!66219) (t!380086 (t!380086 zl!343)))) b!6857466))

(declare-fun m!7593484 () Bool)

(assert (=> b!6857466 m!7593484))

(declare-fun b!6857469 () Bool)

(declare-fun e!4134575 () Bool)

(declare-fun tp!1880410 () Bool)

(declare-fun tp!1880409 () Bool)

(assert (=> b!6857469 (= e!4134575 (and tp!1880410 tp!1880409))))

(declare-fun b!6857471 () Bool)

(declare-fun tp!1880411 () Bool)

(declare-fun tp!1880413 () Bool)

(assert (=> b!6857471 (= e!4134575 (and tp!1880411 tp!1880413))))

(declare-fun b!6857468 () Bool)

(assert (=> b!6857468 (= e!4134575 tp_is_empty!42615)))

(declare-fun b!6857470 () Bool)

(declare-fun tp!1880412 () Bool)

(assert (=> b!6857470 (= e!4134575 tp!1880412)))

(assert (=> b!6856553 (= tp!1880174 e!4134575)))

(assert (= (and b!6856553 ((_ is ElementMatch!16681) (regOne!33874 (regOne!33875 r!7292)))) b!6857468))

(assert (= (and b!6856553 ((_ is Concat!25526) (regOne!33874 (regOne!33875 r!7292)))) b!6857469))

(assert (= (and b!6856553 ((_ is Star!16681) (regOne!33874 (regOne!33875 r!7292)))) b!6857470))

(assert (= (and b!6856553 ((_ is Union!16681) (regOne!33874 (regOne!33875 r!7292)))) b!6857471))

(declare-fun b!6857473 () Bool)

(declare-fun e!4134576 () Bool)

(declare-fun tp!1880415 () Bool)

(declare-fun tp!1880414 () Bool)

(assert (=> b!6857473 (= e!4134576 (and tp!1880415 tp!1880414))))

(declare-fun b!6857475 () Bool)

(declare-fun tp!1880416 () Bool)

(declare-fun tp!1880418 () Bool)

(assert (=> b!6857475 (= e!4134576 (and tp!1880416 tp!1880418))))

(declare-fun b!6857472 () Bool)

(assert (=> b!6857472 (= e!4134576 tp_is_empty!42615)))

(declare-fun b!6857474 () Bool)

(declare-fun tp!1880417 () Bool)

(assert (=> b!6857474 (= e!4134576 tp!1880417)))

(assert (=> b!6856553 (= tp!1880173 e!4134576)))

(assert (= (and b!6856553 ((_ is ElementMatch!16681) (regTwo!33874 (regOne!33875 r!7292)))) b!6857472))

(assert (= (and b!6856553 ((_ is Concat!25526) (regTwo!33874 (regOne!33875 r!7292)))) b!6857473))

(assert (= (and b!6856553 ((_ is Star!16681) (regTwo!33874 (regOne!33875 r!7292)))) b!6857474))

(assert (= (and b!6856553 ((_ is Union!16681) (regTwo!33874 (regOne!33875 r!7292)))) b!6857475))

(declare-fun b!6857476 () Bool)

(declare-fun e!4134577 () Bool)

(declare-fun tp!1880419 () Bool)

(declare-fun tp!1880420 () Bool)

(assert (=> b!6857476 (= e!4134577 (and tp!1880419 tp!1880420))))

(assert (=> b!6856576 (= tp!1880198 e!4134577)))

(assert (= (and b!6856576 ((_ is Cons!66218) (exprs!6565 (h!72667 (t!380086 zl!343))))) b!6857476))

(declare-fun b!6857478 () Bool)

(declare-fun e!4134578 () Bool)

(declare-fun tp!1880422 () Bool)

(declare-fun tp!1880421 () Bool)

(assert (=> b!6857478 (= e!4134578 (and tp!1880422 tp!1880421))))

(declare-fun b!6857480 () Bool)

(declare-fun tp!1880423 () Bool)

(declare-fun tp!1880425 () Bool)

(assert (=> b!6857480 (= e!4134578 (and tp!1880423 tp!1880425))))

(declare-fun b!6857477 () Bool)

(assert (=> b!6857477 (= e!4134578 tp_is_empty!42615)))

(declare-fun b!6857479 () Bool)

(declare-fun tp!1880424 () Bool)

(assert (=> b!6857479 (= e!4134578 tp!1880424)))

(assert (=> b!6856562 (= tp!1880186 e!4134578)))

(assert (= (and b!6856562 ((_ is ElementMatch!16681) (reg!17010 (reg!17010 r!7292)))) b!6857477))

(assert (= (and b!6856562 ((_ is Concat!25526) (reg!17010 (reg!17010 r!7292)))) b!6857478))

(assert (= (and b!6856562 ((_ is Star!16681) (reg!17010 (reg!17010 r!7292)))) b!6857479))

(assert (= (and b!6856562 ((_ is Union!16681) (reg!17010 (reg!17010 r!7292)))) b!6857480))

(declare-fun b!6857482 () Bool)

(declare-fun e!4134579 () Bool)

(declare-fun tp!1880427 () Bool)

(declare-fun tp!1880426 () Bool)

(assert (=> b!6857482 (= e!4134579 (and tp!1880427 tp!1880426))))

(declare-fun b!6857484 () Bool)

(declare-fun tp!1880428 () Bool)

(declare-fun tp!1880430 () Bool)

(assert (=> b!6857484 (= e!4134579 (and tp!1880428 tp!1880430))))

(declare-fun b!6857481 () Bool)

(assert (=> b!6857481 (= e!4134579 tp_is_empty!42615)))

(declare-fun b!6857483 () Bool)

(declare-fun tp!1880429 () Bool)

(assert (=> b!6857483 (= e!4134579 tp!1880429)))

(assert (=> b!6856563 (= tp!1880185 e!4134579)))

(assert (= (and b!6856563 ((_ is ElementMatch!16681) (regOne!33875 (reg!17010 r!7292)))) b!6857481))

(assert (= (and b!6856563 ((_ is Concat!25526) (regOne!33875 (reg!17010 r!7292)))) b!6857482))

(assert (= (and b!6856563 ((_ is Star!16681) (regOne!33875 (reg!17010 r!7292)))) b!6857483))

(assert (= (and b!6856563 ((_ is Union!16681) (regOne!33875 (reg!17010 r!7292)))) b!6857484))

(declare-fun b!6857486 () Bool)

(declare-fun e!4134580 () Bool)

(declare-fun tp!1880432 () Bool)

(declare-fun tp!1880431 () Bool)

(assert (=> b!6857486 (= e!4134580 (and tp!1880432 tp!1880431))))

(declare-fun b!6857488 () Bool)

(declare-fun tp!1880433 () Bool)

(declare-fun tp!1880435 () Bool)

(assert (=> b!6857488 (= e!4134580 (and tp!1880433 tp!1880435))))

(declare-fun b!6857485 () Bool)

(assert (=> b!6857485 (= e!4134580 tp_is_empty!42615)))

(declare-fun b!6857487 () Bool)

(declare-fun tp!1880434 () Bool)

(assert (=> b!6857487 (= e!4134580 tp!1880434)))

(assert (=> b!6856563 (= tp!1880187 e!4134580)))

(assert (= (and b!6856563 ((_ is ElementMatch!16681) (regTwo!33875 (reg!17010 r!7292)))) b!6857485))

(assert (= (and b!6856563 ((_ is Concat!25526) (regTwo!33875 (reg!17010 r!7292)))) b!6857486))

(assert (= (and b!6856563 ((_ is Star!16681) (regTwo!33875 (reg!17010 r!7292)))) b!6857487))

(assert (= (and b!6856563 ((_ is Union!16681) (regTwo!33875 (reg!17010 r!7292)))) b!6857488))

(declare-fun b!6857490 () Bool)

(declare-fun e!4134581 () Bool)

(declare-fun tp!1880437 () Bool)

(declare-fun tp!1880436 () Bool)

(assert (=> b!6857490 (= e!4134581 (and tp!1880437 tp!1880436))))

(declare-fun b!6857492 () Bool)

(declare-fun tp!1880438 () Bool)

(declare-fun tp!1880440 () Bool)

(assert (=> b!6857492 (= e!4134581 (and tp!1880438 tp!1880440))))

(declare-fun b!6857489 () Bool)

(assert (=> b!6857489 (= e!4134581 tp_is_empty!42615)))

(declare-fun b!6857491 () Bool)

(declare-fun tp!1880439 () Bool)

(assert (=> b!6857491 (= e!4134581 tp!1880439)))

(assert (=> b!6856568 (= tp!1880192 e!4134581)))

(assert (= (and b!6856568 ((_ is ElementMatch!16681) (h!72666 (exprs!6565 setElem!47119)))) b!6857489))

(assert (= (and b!6856568 ((_ is Concat!25526) (h!72666 (exprs!6565 setElem!47119)))) b!6857490))

(assert (= (and b!6856568 ((_ is Star!16681) (h!72666 (exprs!6565 setElem!47119)))) b!6857491))

(assert (= (and b!6856568 ((_ is Union!16681) (h!72666 (exprs!6565 setElem!47119)))) b!6857492))

(declare-fun b!6857493 () Bool)

(declare-fun e!4134582 () Bool)

(declare-fun tp!1880441 () Bool)

(declare-fun tp!1880442 () Bool)

(assert (=> b!6857493 (= e!4134582 (and tp!1880441 tp!1880442))))

(assert (=> b!6856568 (= tp!1880193 e!4134582)))

(assert (= (and b!6856568 ((_ is Cons!66218) (t!380085 (exprs!6565 setElem!47119)))) b!6857493))

(declare-fun b!6857495 () Bool)

(declare-fun e!4134583 () Bool)

(declare-fun tp!1880444 () Bool)

(declare-fun tp!1880443 () Bool)

(assert (=> b!6857495 (= e!4134583 (and tp!1880444 tp!1880443))))

(declare-fun b!6857497 () Bool)

(declare-fun tp!1880445 () Bool)

(declare-fun tp!1880447 () Bool)

(assert (=> b!6857497 (= e!4134583 (and tp!1880445 tp!1880447))))

(declare-fun b!6857494 () Bool)

(assert (=> b!6857494 (= e!4134583 tp_is_empty!42615)))

(declare-fun b!6857496 () Bool)

(declare-fun tp!1880446 () Bool)

(assert (=> b!6857496 (= e!4134583 tp!1880446)))

(assert (=> b!6856580 (= tp!1880205 e!4134583)))

(assert (= (and b!6856580 ((_ is ElementMatch!16681) (reg!17010 (regOne!33874 r!7292)))) b!6857494))

(assert (= (and b!6856580 ((_ is Concat!25526) (reg!17010 (regOne!33874 r!7292)))) b!6857495))

(assert (= (and b!6856580 ((_ is Star!16681) (reg!17010 (regOne!33874 r!7292)))) b!6857496))

(assert (= (and b!6856580 ((_ is Union!16681) (reg!17010 (regOne!33874 r!7292)))) b!6857497))

(declare-fun b!6857499 () Bool)

(declare-fun e!4134584 () Bool)

(declare-fun tp!1880449 () Bool)

(declare-fun tp!1880448 () Bool)

(assert (=> b!6857499 (= e!4134584 (and tp!1880449 tp!1880448))))

(declare-fun b!6857501 () Bool)

(declare-fun tp!1880450 () Bool)

(declare-fun tp!1880452 () Bool)

(assert (=> b!6857501 (= e!4134584 (and tp!1880450 tp!1880452))))

(declare-fun b!6857498 () Bool)

(assert (=> b!6857498 (= e!4134584 tp_is_empty!42615)))

(declare-fun b!6857500 () Bool)

(declare-fun tp!1880451 () Bool)

(assert (=> b!6857500 (= e!4134584 tp!1880451)))

(assert (=> b!6856581 (= tp!1880204 e!4134584)))

(assert (= (and b!6856581 ((_ is ElementMatch!16681) (regOne!33875 (regOne!33874 r!7292)))) b!6857498))

(assert (= (and b!6856581 ((_ is Concat!25526) (regOne!33875 (regOne!33874 r!7292)))) b!6857499))

(assert (= (and b!6856581 ((_ is Star!16681) (regOne!33875 (regOne!33874 r!7292)))) b!6857500))

(assert (= (and b!6856581 ((_ is Union!16681) (regOne!33875 (regOne!33874 r!7292)))) b!6857501))

(declare-fun b!6857503 () Bool)

(declare-fun e!4134585 () Bool)

(declare-fun tp!1880454 () Bool)

(declare-fun tp!1880453 () Bool)

(assert (=> b!6857503 (= e!4134585 (and tp!1880454 tp!1880453))))

(declare-fun b!6857505 () Bool)

(declare-fun tp!1880455 () Bool)

(declare-fun tp!1880457 () Bool)

(assert (=> b!6857505 (= e!4134585 (and tp!1880455 tp!1880457))))

(declare-fun b!6857502 () Bool)

(assert (=> b!6857502 (= e!4134585 tp_is_empty!42615)))

(declare-fun b!6857504 () Bool)

(declare-fun tp!1880456 () Bool)

(assert (=> b!6857504 (= e!4134585 tp!1880456)))

(assert (=> b!6856581 (= tp!1880206 e!4134585)))

(assert (= (and b!6856581 ((_ is ElementMatch!16681) (regTwo!33875 (regOne!33874 r!7292)))) b!6857502))

(assert (= (and b!6856581 ((_ is Concat!25526) (regTwo!33875 (regOne!33874 r!7292)))) b!6857503))

(assert (= (and b!6856581 ((_ is Star!16681) (regTwo!33875 (regOne!33874 r!7292)))) b!6857504))

(assert (= (and b!6856581 ((_ is Union!16681) (regTwo!33875 (regOne!33874 r!7292)))) b!6857505))

(declare-fun condSetEmpty!47127 () Bool)

(assert (=> setNonEmpty!47125 (= condSetEmpty!47127 (= setRest!47125 ((as const (Array Context!12130 Bool)) false)))))

(declare-fun setRes!47127 () Bool)

(assert (=> setNonEmpty!47125 (= tp!1880159 setRes!47127)))

(declare-fun setIsEmpty!47127 () Bool)

(assert (=> setIsEmpty!47127 setRes!47127))

(declare-fun e!4134586 () Bool)

(declare-fun setElem!47127 () Context!12130)

(declare-fun tp!1880459 () Bool)

(declare-fun setNonEmpty!47127 () Bool)

(assert (=> setNonEmpty!47127 (= setRes!47127 (and tp!1880459 (inv!84949 setElem!47127) e!4134586))))

(declare-fun setRest!47127 () (InoxSet Context!12130))

(assert (=> setNonEmpty!47127 (= setRest!47125 ((_ map or) (store ((as const (Array Context!12130 Bool)) false) setElem!47127 true) setRest!47127))))

(declare-fun b!6857506 () Bool)

(declare-fun tp!1880458 () Bool)

(assert (=> b!6857506 (= e!4134586 tp!1880458)))

(assert (= (and setNonEmpty!47125 condSetEmpty!47127) setIsEmpty!47127))

(assert (= (and setNonEmpty!47125 (not condSetEmpty!47127)) setNonEmpty!47127))

(assert (= setNonEmpty!47127 b!6857506))

(declare-fun m!7593486 () Bool)

(assert (=> setNonEmpty!47127 m!7593486))

(declare-fun b!6857508 () Bool)

(declare-fun e!4134587 () Bool)

(declare-fun tp!1880461 () Bool)

(declare-fun tp!1880460 () Bool)

(assert (=> b!6857508 (= e!4134587 (and tp!1880461 tp!1880460))))

(declare-fun b!6857510 () Bool)

(declare-fun tp!1880462 () Bool)

(declare-fun tp!1880464 () Bool)

(assert (=> b!6857510 (= e!4134587 (and tp!1880462 tp!1880464))))

(declare-fun b!6857507 () Bool)

(assert (=> b!6857507 (= e!4134587 tp_is_empty!42615)))

(declare-fun b!6857509 () Bool)

(declare-fun tp!1880463 () Bool)

(assert (=> b!6857509 (= e!4134587 tp!1880463)))

(assert (=> b!6856559 (= tp!1880180 e!4134587)))

(assert (= (and b!6856559 ((_ is ElementMatch!16681) (regOne!33875 (regTwo!33875 r!7292)))) b!6857507))

(assert (= (and b!6856559 ((_ is Concat!25526) (regOne!33875 (regTwo!33875 r!7292)))) b!6857508))

(assert (= (and b!6856559 ((_ is Star!16681) (regOne!33875 (regTwo!33875 r!7292)))) b!6857509))

(assert (= (and b!6856559 ((_ is Union!16681) (regOne!33875 (regTwo!33875 r!7292)))) b!6857510))

(declare-fun b!6857512 () Bool)

(declare-fun e!4134588 () Bool)

(declare-fun tp!1880466 () Bool)

(declare-fun tp!1880465 () Bool)

(assert (=> b!6857512 (= e!4134588 (and tp!1880466 tp!1880465))))

(declare-fun b!6857514 () Bool)

(declare-fun tp!1880467 () Bool)

(declare-fun tp!1880469 () Bool)

(assert (=> b!6857514 (= e!4134588 (and tp!1880467 tp!1880469))))

(declare-fun b!6857511 () Bool)

(assert (=> b!6857511 (= e!4134588 tp_is_empty!42615)))

(declare-fun b!6857513 () Bool)

(declare-fun tp!1880468 () Bool)

(assert (=> b!6857513 (= e!4134588 tp!1880468)))

(assert (=> b!6856559 (= tp!1880182 e!4134588)))

(assert (= (and b!6856559 ((_ is ElementMatch!16681) (regTwo!33875 (regTwo!33875 r!7292)))) b!6857511))

(assert (= (and b!6856559 ((_ is Concat!25526) (regTwo!33875 (regTwo!33875 r!7292)))) b!6857512))

(assert (= (and b!6856559 ((_ is Star!16681) (regTwo!33875 (regTwo!33875 r!7292)))) b!6857513))

(assert (= (and b!6856559 ((_ is Union!16681) (regTwo!33875 (regTwo!33875 r!7292)))) b!6857514))

(declare-fun b!6857515 () Bool)

(declare-fun e!4134589 () Bool)

(declare-fun tp!1880470 () Bool)

(declare-fun tp!1880471 () Bool)

(assert (=> b!6857515 (= e!4134589 (and tp!1880470 tp!1880471))))

(assert (=> b!6856536 (= tp!1880158 e!4134589)))

(assert (= (and b!6856536 ((_ is Cons!66218) (exprs!6565 setElem!47125))) b!6857515))

(declare-fun b!6857517 () Bool)

(declare-fun e!4134590 () Bool)

(declare-fun tp!1880473 () Bool)

(declare-fun tp!1880472 () Bool)

(assert (=> b!6857517 (= e!4134590 (and tp!1880473 tp!1880472))))

(declare-fun b!6857519 () Bool)

(declare-fun tp!1880474 () Bool)

(declare-fun tp!1880476 () Bool)

(assert (=> b!6857519 (= e!4134590 (and tp!1880474 tp!1880476))))

(declare-fun b!6857516 () Bool)

(assert (=> b!6857516 (= e!4134590 tp_is_empty!42615)))

(declare-fun b!6857518 () Bool)

(declare-fun tp!1880475 () Bool)

(assert (=> b!6857518 (= e!4134590 tp!1880475)))

(assert (=> b!6856579 (= tp!1880203 e!4134590)))

(assert (= (and b!6856579 ((_ is ElementMatch!16681) (regOne!33874 (regOne!33874 r!7292)))) b!6857516))

(assert (= (and b!6856579 ((_ is Concat!25526) (regOne!33874 (regOne!33874 r!7292)))) b!6857517))

(assert (= (and b!6856579 ((_ is Star!16681) (regOne!33874 (regOne!33874 r!7292)))) b!6857518))

(assert (= (and b!6856579 ((_ is Union!16681) (regOne!33874 (regOne!33874 r!7292)))) b!6857519))

(declare-fun b!6857521 () Bool)

(declare-fun e!4134591 () Bool)

(declare-fun tp!1880478 () Bool)

(declare-fun tp!1880477 () Bool)

(assert (=> b!6857521 (= e!4134591 (and tp!1880478 tp!1880477))))

(declare-fun b!6857523 () Bool)

(declare-fun tp!1880479 () Bool)

(declare-fun tp!1880481 () Bool)

(assert (=> b!6857523 (= e!4134591 (and tp!1880479 tp!1880481))))

(declare-fun b!6857520 () Bool)

(assert (=> b!6857520 (= e!4134591 tp_is_empty!42615)))

(declare-fun b!6857522 () Bool)

(declare-fun tp!1880480 () Bool)

(assert (=> b!6857522 (= e!4134591 tp!1880480)))

(assert (=> b!6856579 (= tp!1880202 e!4134591)))

(assert (= (and b!6856579 ((_ is ElementMatch!16681) (regTwo!33874 (regOne!33874 r!7292)))) b!6857520))

(assert (= (and b!6856579 ((_ is Concat!25526) (regTwo!33874 (regOne!33874 r!7292)))) b!6857521))

(assert (= (and b!6856579 ((_ is Star!16681) (regTwo!33874 (regOne!33874 r!7292)))) b!6857522))

(assert (= (and b!6856579 ((_ is Union!16681) (regTwo!33874 (regOne!33874 r!7292)))) b!6857523))

(declare-fun b!6857525 () Bool)

(declare-fun e!4134592 () Bool)

(declare-fun tp!1880483 () Bool)

(declare-fun tp!1880482 () Bool)

(assert (=> b!6857525 (= e!4134592 (and tp!1880483 tp!1880482))))

(declare-fun b!6857527 () Bool)

(declare-fun tp!1880484 () Bool)

(declare-fun tp!1880486 () Bool)

(assert (=> b!6857527 (= e!4134592 (and tp!1880484 tp!1880486))))

(declare-fun b!6857524 () Bool)

(assert (=> b!6857524 (= e!4134592 tp_is_empty!42615)))

(declare-fun b!6857526 () Bool)

(declare-fun tp!1880485 () Bool)

(assert (=> b!6857526 (= e!4134592 tp!1880485)))

(assert (=> b!6856557 (= tp!1880179 e!4134592)))

(assert (= (and b!6856557 ((_ is ElementMatch!16681) (regOne!33874 (regTwo!33875 r!7292)))) b!6857524))

(assert (= (and b!6856557 ((_ is Concat!25526) (regOne!33874 (regTwo!33875 r!7292)))) b!6857525))

(assert (= (and b!6856557 ((_ is Star!16681) (regOne!33874 (regTwo!33875 r!7292)))) b!6857526))

(assert (= (and b!6856557 ((_ is Union!16681) (regOne!33874 (regTwo!33875 r!7292)))) b!6857527))

(declare-fun b!6857529 () Bool)

(declare-fun e!4134593 () Bool)

(declare-fun tp!1880488 () Bool)

(declare-fun tp!1880487 () Bool)

(assert (=> b!6857529 (= e!4134593 (and tp!1880488 tp!1880487))))

(declare-fun b!6857531 () Bool)

(declare-fun tp!1880489 () Bool)

(declare-fun tp!1880491 () Bool)

(assert (=> b!6857531 (= e!4134593 (and tp!1880489 tp!1880491))))

(declare-fun b!6857528 () Bool)

(assert (=> b!6857528 (= e!4134593 tp_is_empty!42615)))

(declare-fun b!6857530 () Bool)

(declare-fun tp!1880490 () Bool)

(assert (=> b!6857530 (= e!4134593 tp!1880490)))

(assert (=> b!6856557 (= tp!1880178 e!4134593)))

(assert (= (and b!6856557 ((_ is ElementMatch!16681) (regTwo!33874 (regTwo!33875 r!7292)))) b!6857528))

(assert (= (and b!6856557 ((_ is Concat!25526) (regTwo!33874 (regTwo!33875 r!7292)))) b!6857529))

(assert (= (and b!6856557 ((_ is Star!16681) (regTwo!33874 (regTwo!33875 r!7292)))) b!6857530))

(assert (= (and b!6856557 ((_ is Union!16681) (regTwo!33874 (regTwo!33875 r!7292)))) b!6857531))

(declare-fun b!6857533 () Bool)

(declare-fun e!4134594 () Bool)

(declare-fun tp!1880493 () Bool)

(declare-fun tp!1880492 () Bool)

(assert (=> b!6857533 (= e!4134594 (and tp!1880493 tp!1880492))))

(declare-fun b!6857535 () Bool)

(declare-fun tp!1880494 () Bool)

(declare-fun tp!1880496 () Bool)

(assert (=> b!6857535 (= e!4134594 (and tp!1880494 tp!1880496))))

(declare-fun b!6857532 () Bool)

(assert (=> b!6857532 (= e!4134594 tp_is_empty!42615)))

(declare-fun b!6857534 () Bool)

(declare-fun tp!1880495 () Bool)

(assert (=> b!6857534 (= e!4134594 tp!1880495)))

(assert (=> b!6856558 (= tp!1880181 e!4134594)))

(assert (= (and b!6856558 ((_ is ElementMatch!16681) (reg!17010 (regTwo!33875 r!7292)))) b!6857532))

(assert (= (and b!6856558 ((_ is Concat!25526) (reg!17010 (regTwo!33875 r!7292)))) b!6857533))

(assert (= (and b!6856558 ((_ is Star!16681) (reg!17010 (regTwo!33875 r!7292)))) b!6857534))

(assert (= (and b!6856558 ((_ is Union!16681) (reg!17010 (regTwo!33875 r!7292)))) b!6857535))

(declare-fun b!6857536 () Bool)

(declare-fun e!4134595 () Bool)

(declare-fun tp!1880497 () Bool)

(assert (=> b!6857536 (= e!4134595 (and tp_is_empty!42615 tp!1880497))))

(assert (=> b!6856541 (= tp!1880162 e!4134595)))

(assert (= (and b!6856541 ((_ is Cons!66220) (t!380087 (t!380087 s!2326)))) b!6857536))

(declare-fun b!6857538 () Bool)

(declare-fun e!4134596 () Bool)

(declare-fun tp!1880499 () Bool)

(declare-fun tp!1880498 () Bool)

(assert (=> b!6857538 (= e!4134596 (and tp!1880499 tp!1880498))))

(declare-fun b!6857540 () Bool)

(declare-fun tp!1880500 () Bool)

(declare-fun tp!1880502 () Bool)

(assert (=> b!6857540 (= e!4134596 (and tp!1880500 tp!1880502))))

(declare-fun b!6857537 () Bool)

(assert (=> b!6857537 (= e!4134596 tp_is_empty!42615)))

(declare-fun b!6857539 () Bool)

(declare-fun tp!1880501 () Bool)

(assert (=> b!6857539 (= e!4134596 tp!1880501)))

(assert (=> b!6856584 (= tp!1880210 e!4134596)))

(assert (= (and b!6856584 ((_ is ElementMatch!16681) (reg!17010 (regTwo!33874 r!7292)))) b!6857537))

(assert (= (and b!6856584 ((_ is Concat!25526) (reg!17010 (regTwo!33874 r!7292)))) b!6857538))

(assert (= (and b!6856584 ((_ is Star!16681) (reg!17010 (regTwo!33874 r!7292)))) b!6857539))

(assert (= (and b!6856584 ((_ is Union!16681) (reg!17010 (regTwo!33874 r!7292)))) b!6857540))

(declare-fun b!6857542 () Bool)

(declare-fun e!4134597 () Bool)

(declare-fun tp!1880504 () Bool)

(declare-fun tp!1880503 () Bool)

(assert (=> b!6857542 (= e!4134597 (and tp!1880504 tp!1880503))))

(declare-fun b!6857544 () Bool)

(declare-fun tp!1880505 () Bool)

(declare-fun tp!1880507 () Bool)

(assert (=> b!6857544 (= e!4134597 (and tp!1880505 tp!1880507))))

(declare-fun b!6857541 () Bool)

(assert (=> b!6857541 (= e!4134597 tp_is_empty!42615)))

(declare-fun b!6857543 () Bool)

(declare-fun tp!1880506 () Bool)

(assert (=> b!6857543 (= e!4134597 tp!1880506)))

(assert (=> b!6856585 (= tp!1880209 e!4134597)))

(assert (= (and b!6856585 ((_ is ElementMatch!16681) (regOne!33875 (regTwo!33874 r!7292)))) b!6857541))

(assert (= (and b!6856585 ((_ is Concat!25526) (regOne!33875 (regTwo!33874 r!7292)))) b!6857542))

(assert (= (and b!6856585 ((_ is Star!16681) (regOne!33875 (regTwo!33874 r!7292)))) b!6857543))

(assert (= (and b!6856585 ((_ is Union!16681) (regOne!33875 (regTwo!33874 r!7292)))) b!6857544))

(declare-fun b!6857546 () Bool)

(declare-fun e!4134598 () Bool)

(declare-fun tp!1880509 () Bool)

(declare-fun tp!1880508 () Bool)

(assert (=> b!6857546 (= e!4134598 (and tp!1880509 tp!1880508))))

(declare-fun b!6857548 () Bool)

(declare-fun tp!1880510 () Bool)

(declare-fun tp!1880512 () Bool)

(assert (=> b!6857548 (= e!4134598 (and tp!1880510 tp!1880512))))

(declare-fun b!6857545 () Bool)

(assert (=> b!6857545 (= e!4134598 tp_is_empty!42615)))

(declare-fun b!6857547 () Bool)

(declare-fun tp!1880511 () Bool)

(assert (=> b!6857547 (= e!4134598 tp!1880511)))

(assert (=> b!6856585 (= tp!1880211 e!4134598)))

(assert (= (and b!6856585 ((_ is ElementMatch!16681) (regTwo!33875 (regTwo!33874 r!7292)))) b!6857545))

(assert (= (and b!6856585 ((_ is Concat!25526) (regTwo!33875 (regTwo!33874 r!7292)))) b!6857546))

(assert (= (and b!6856585 ((_ is Star!16681) (regTwo!33875 (regTwo!33874 r!7292)))) b!6857547))

(assert (= (and b!6856585 ((_ is Union!16681) (regTwo!33875 (regTwo!33874 r!7292)))) b!6857548))

(declare-fun b!6857550 () Bool)

(declare-fun e!4134599 () Bool)

(declare-fun tp!1880514 () Bool)

(declare-fun tp!1880513 () Bool)

(assert (=> b!6857550 (= e!4134599 (and tp!1880514 tp!1880513))))

(declare-fun b!6857552 () Bool)

(declare-fun tp!1880515 () Bool)

(declare-fun tp!1880517 () Bool)

(assert (=> b!6857552 (= e!4134599 (and tp!1880515 tp!1880517))))

(declare-fun b!6857549 () Bool)

(assert (=> b!6857549 (= e!4134599 tp_is_empty!42615)))

(declare-fun b!6857551 () Bool)

(declare-fun tp!1880516 () Bool)

(assert (=> b!6857551 (= e!4134599 tp!1880516)))

(assert (=> b!6856577 (= tp!1880200 e!4134599)))

(assert (= (and b!6856577 ((_ is ElementMatch!16681) (h!72666 (exprs!6565 (h!72667 zl!343))))) b!6857549))

(assert (= (and b!6856577 ((_ is Concat!25526) (h!72666 (exprs!6565 (h!72667 zl!343))))) b!6857550))

(assert (= (and b!6856577 ((_ is Star!16681) (h!72666 (exprs!6565 (h!72667 zl!343))))) b!6857551))

(assert (= (and b!6856577 ((_ is Union!16681) (h!72666 (exprs!6565 (h!72667 zl!343))))) b!6857552))

(declare-fun b!6857553 () Bool)

(declare-fun e!4134600 () Bool)

(declare-fun tp!1880518 () Bool)

(declare-fun tp!1880519 () Bool)

(assert (=> b!6857553 (= e!4134600 (and tp!1880518 tp!1880519))))

(assert (=> b!6856577 (= tp!1880201 e!4134600)))

(assert (= (and b!6856577 ((_ is Cons!66218) (t!380085 (exprs!6565 (h!72667 zl!343))))) b!6857553))

(declare-fun b_lambda!259051 () Bool)

(assert (= b_lambda!259043 (or d!2154690 b_lambda!259051)))

(declare-fun bs!1832970 () Bool)

(declare-fun d!2154982 () Bool)

(assert (= bs!1832970 (and d!2154982 d!2154690)))

(assert (=> bs!1832970 (= (dynLambda!26473 lambda!387611 (h!72666 lt!2456629)) (validRegex!8417 (h!72666 lt!2456629)))))

(assert (=> bs!1832970 m!7592824))

(assert (=> b!6857226 d!2154982))

(declare-fun b_lambda!259053 () Bool)

(assert (= b_lambda!259039 (or d!2154656 b_lambda!259053)))

(declare-fun bs!1832971 () Bool)

(declare-fun d!2154984 () Bool)

(assert (= bs!1832971 (and d!2154984 d!2154656)))

(assert (=> bs!1832971 (= (dynLambda!26473 lambda!387593 (h!72666 (exprs!6565 (h!72667 zl!343)))) (validRegex!8417 (h!72666 (exprs!6565 (h!72667 zl!343)))))))

(declare-fun m!7593488 () Bool)

(assert (=> bs!1832971 m!7593488))

(assert (=> b!6857154 d!2154984))

(declare-fun b_lambda!259055 () Bool)

(assert (= b_lambda!259049 (or d!2154586 b_lambda!259055)))

(declare-fun bs!1832972 () Bool)

(declare-fun d!2154986 () Bool)

(assert (= bs!1832972 (and d!2154986 d!2154586)))

(assert (=> bs!1832972 (= (dynLambda!26473 lambda!387562 (h!72666 lt!2456629)) (not (dynLambda!26473 lambda!387558 (h!72666 lt!2456629))))))

(declare-fun b_lambda!259071 () Bool)

(assert (=> (not b_lambda!259071) (not bs!1832972)))

(assert (=> bs!1832972 m!7592786))

(assert (=> b!6857402 d!2154986))

(declare-fun b_lambda!259057 () Bool)

(assert (= b_lambda!259009 (or b!6856039 b_lambda!259057)))

(declare-fun bs!1832973 () Bool)

(declare-fun d!2154988 () Bool)

(assert (= bs!1832973 (and d!2154988 b!6856039)))

(declare-fun res!2798207 () Bool)

(declare-fun e!4134601 () Bool)

(assert (=> bs!1832973 (=> (not res!2798207) (not e!4134601))))

(assert (=> bs!1832973 (= res!2798207 (validRegex!8417 (h!72666 (t!380085 lt!2456629))))))

(assert (=> bs!1832973 (= (dynLambda!26473 lambda!387558 (h!72666 (t!380085 lt!2456629))) e!4134601)))

(declare-fun b!6857554 () Bool)

(assert (=> b!6857554 (= e!4134601 (matchR!8864 (h!72666 (t!380085 lt!2456629)) s!2326))))

(assert (= (and bs!1832973 res!2798207) b!6857554))

(declare-fun m!7593490 () Bool)

(assert (=> bs!1832973 m!7593490))

(declare-fun m!7593492 () Bool)

(assert (=> b!6857554 m!7593492))

(assert (=> b!6856932 d!2154988))

(declare-fun b_lambda!259059 () Bool)

(assert (= b_lambda!259045 (or d!2154692 b_lambda!259059)))

(declare-fun bs!1832974 () Bool)

(declare-fun d!2154990 () Bool)

(assert (= bs!1832974 (and d!2154990 d!2154692)))

(assert (=> bs!1832974 (= (dynLambda!26473 lambda!387615 (h!72666 lt!2456734)) (validRegex!8417 (h!72666 lt!2456734)))))

(declare-fun m!7593494 () Bool)

(assert (=> bs!1832974 m!7593494))

(assert (=> b!6857228 d!2154990))

(declare-fun b_lambda!259061 () Bool)

(assert (= b_lambda!259047 (or d!2154676 b_lambda!259061)))

(declare-fun bs!1832975 () Bool)

(declare-fun d!2154992 () Bool)

(assert (= bs!1832975 (and d!2154992 d!2154676)))

(assert (=> bs!1832975 (= (dynLambda!26473 lambda!387600 (h!72666 (exprs!6565 setElem!47119))) (validRegex!8417 (h!72666 (exprs!6565 setElem!47119))))))

(declare-fun m!7593496 () Bool)

(assert (=> bs!1832975 m!7593496))

(assert (=> b!6857383 d!2154992))

(declare-fun b_lambda!259063 () Bool)

(assert (= b_lambda!259007 (or b!6856039 b_lambda!259063)))

(declare-fun bs!1832976 () Bool)

(declare-fun d!2154994 () Bool)

(assert (= bs!1832976 (and d!2154994 b!6856039)))

(declare-fun res!2798208 () Bool)

(declare-fun e!4134602 () Bool)

(assert (=> bs!1832976 (=> (not res!2798208) (not e!4134602))))

(assert (=> bs!1832976 (= res!2798208 (validRegex!8417 lt!2456769))))

(assert (=> bs!1832976 (= (dynLambda!26473 lambda!387558 lt!2456769) e!4134602)))

(declare-fun b!6857555 () Bool)

(assert (=> b!6857555 (= e!4134602 (matchR!8864 lt!2456769 s!2326))))

(assert (= (and bs!1832976 res!2798208) b!6857555))

(declare-fun m!7593498 () Bool)

(assert (=> bs!1832976 m!7593498))

(declare-fun m!7593500 () Bool)

(assert (=> b!6857555 m!7593500))

(assert (=> d!2154820 d!2154994))

(declare-fun b_lambda!259065 () Bool)

(assert (= b_lambda!259041 (or d!2154686 b_lambda!259065)))

(declare-fun bs!1832977 () Bool)

(declare-fun d!2154996 () Bool)

(assert (= bs!1832977 (and d!2154996 d!2154686)))

(assert (=> bs!1832977 (= (dynLambda!26471 lambda!387603 (h!72667 zl!343)) (not (dynLambda!26471 lambda!387559 (h!72667 zl!343))))))

(declare-fun b_lambda!259073 () Bool)

(assert (=> (not b_lambda!259073) (not bs!1832977)))

(assert (=> bs!1832977 m!7592602))

(assert (=> b!6857160 d!2154996))

(declare-fun b_lambda!259067 () Bool)

(assert (= b_lambda!259011 (or b!6856019 b_lambda!259067)))

(declare-fun bs!1832978 () Bool)

(declare-fun d!2154998 () Bool)

(assert (= bs!1832978 (and d!2154998 b!6856019)))

(assert (=> bs!1832978 (= (dynLambda!26471 lambda!387559 lt!2456775) (= (generalisedConcat!2270 (exprs!6565 lt!2456775)) lt!2456625))))

(declare-fun m!7593502 () Bool)

(assert (=> bs!1832978 m!7593502))

(assert (=> d!2154846 d!2154998))

(declare-fun b_lambda!259069 () Bool)

(assert (= b_lambda!259013 (or b!6856019 b_lambda!259069)))

(declare-fun bs!1832979 () Bool)

(declare-fun d!2155000 () Bool)

(assert (= bs!1832979 (and d!2155000 b!6856019)))

(assert (=> bs!1832979 (= (dynLambda!26471 lambda!387559 (h!72667 (t!380086 zl!343))) (= (generalisedConcat!2270 (exprs!6565 (h!72667 (t!380086 zl!343)))) lt!2456625))))

(assert (=> bs!1832979 m!7593442))

(assert (=> b!6856989 d!2155000))

(check-sat (not d!2154968) (not bm!624632) (not b_lambda!259061) (not b!6857016) (not b!6857337) (not b!6857495) (not b!6857288) (not b!6857441) (not b!6857482) (not b!6857199) (not b_lambda!259069) (not d!2154920) (not b!6857381) (not b!6857447) (not b!6856961) (not bm!624634) (not bm!624627) (not b!6857203) (not d!2154842) (not b!6857232) (not bs!1832973) (not b!6857365) (not b!6857501) (not b!6857523) (not b!6857155) (not b!6857490) (not b!6857198) (not b!6857475) (not bs!1832979) (not b!6857550) (not b!6856954) (not b!6857387) (not b!6857540) (not b!6857237) (not d!2154816) (not b!6857168) (not b_lambda!259065) (not d!2154926) (not b!6857521) (not b!6857488) (not b!6857164) (not d!2154890) (not b!6857487) (not b!6857307) (not b!6857539) (not b!6857357) (not bm!624674) (not b!6857553) (not b!6857522) (not d!2154956) (not b!6857389) (not b!6857461) (not b!6857204) (not b!6857554) (not b!6857467) (not b!6857174) (not b!6857366) (not b!6857478) (not bm!624656) (not b!6857439) (not bm!624624) (not d!2154896) (not b!6857491) (not b!6857293) (not b_lambda!259071) (not b!6857238) (not bm!624661) (not d!2154944) (not d!2154946) (not b!6857509) (not b!6857456) (not b!6857326) (not b!6857508) (not b!6857359) (not b!6857443) (not b!6857463) (not b!6856955) (not b!6857161) (not b!6857229) (not b!6857451) (not b!6857514) (not d!2154952) (not b!6857361) (not b!6857486) (not b!6857235) (not b!6857534) (not b!6857455) (not b!6857513) (not b!6857242) (not d!2154938) (not b!6857497) (not b!6857548) (not b!6857555) (not b!6856933) (not b!6857460) (not b!6857380) (not b!6857385) (not b!6857087) (not b!6857469) (not b!6857197) (not b!6857167) (not b!6857436) (not b!6857535) (not b!6857464) (not b!6857471) (not b!6857529) (not b!6857143) (not b!6857214) (not b!6857310) (not b!6857465) (not bs!1832976) (not b!6857141) (not bs!1832974) (not b!6856957) (not d!2154852) (not b!6857170) (not b!6857479) (not b!6857236) (not b!6857474) (not b_lambda!259067) (not bm!624631) (not b!6856973) (not b!6857538) (not b!6857304) (not b!6857551) (not b!6857149) (not b!6857531) (not b!6857362) (not bm!624618) (not b!6857445) (not bs!1832978) (not b!6857144) (not b!6857476) (not b!6857399) (not b!6857504) (not d!2154904) tp_is_empty!42615 (not b!6856986) (not b!6857285) (not b!6857373) (not d!2154976) (not b!6856929) (not bm!624655) (not setNonEmpty!47127) (not d!2154932) (not bs!1832971) (not b!6857403) (not d!2154900) (not b!6856991) (not b!6857312) (not d!2154832) (not b!6856990) (not bm!624663) (not bm!624647) (not b!6857492) (not b!6857519) (not b_lambda!259057) (not b_lambda!259053) (not b!6857547) (not b!6857499) (not b_lambda!258981) (not bm!624664) (not b!6857480) (not d!2154898) (not b!6857543) (not d!2154828) (not b!6857470) (not b!6856951) (not b!6857527) (not bm!624645) (not b!6857346) (not b!6857457) (not b!6857317) (not b!6857142) (not b!6856956) (not bm!624622) (not b!6857147) (not b!6857546) (not b!6857201) (not bm!624650) (not b_lambda!259059) (not d!2154960) (not d!2154824) (not b!6857496) (not b_lambda!259051) (not b_lambda!258985) (not b!6857500) (not b!6857510) (not d!2154876) (not bm!624643) (not b!6857448) (not b!6857449) (not bm!624658) (not b!6857313) (not bm!624672) (not b!6857411) (not d!2154930) (not b!6857363) (not b!6857530) (not bm!624660) (not d!2154888) (not bm!624648) (not d!2154974) (not b!6857505) (not b!6857466) (not d!2154846) (not b!6857271) (not b_lambda!259063) (not b!6857145) (not bm!624623) (not bm!624628) (not b!6857009) (not d!2154820) (not b!6857452) (not b!6857512) (not b!6857227) (not b!6857518) (not b_lambda!259055) (not b_lambda!258979) (not b!6857311) (not b!6857360) (not b!6856930) (not b!6857384) (not b!6857493) (not b!6857503) (not b!6857473) (not b!6857525) (not b!6857517) (not bs!1832970) (not d!2154936) (not b!6857401) (not b!6857279) (not b!6857440) (not b!6857200) (not b!6857544) (not d!2154916) (not b!6857542) (not b!6857484) (not b!6857533) (not b!6857526) (not d!2154914) (not bm!624651) (not b_lambda!259073) (not b!6857552) (not b!6857382) (not bs!1832975) (not b!6857515) (not b!6857536) (not d!2154910) (not bm!624653) (not d!2154886) (not bm!624629) (not b!6857223) (not b!6857292) (not d!2154928) (not b!6857409) (not b!6857459) (not b!6857339) (not b!6857169) (not b!6857453) (not b!6857444) (not b!6857286) (not bm!624625) (not b!6857372) (not bm!624659) (not b!6857506) (not b_lambda!258983) (not b!6857291) (not b!6857483) (not d!2154836))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549046 () Bool)

(assert start!549046)

(declare-fun b!5184689 () Bool)

(declare-fun e!3230010 () Bool)

(declare-fun tp!1454645 () Bool)

(assert (=> b!5184689 (= e!3230010 tp!1454645)))

(declare-fun b!5184690 () Bool)

(declare-fun e!3230012 () Bool)

(declare-fun tp!1454637 () Bool)

(declare-datatypes ((C!29672 0))(
  ( (C!29673 (val!24538 Int)) )
))
(declare-datatypes ((Regex!14701 0))(
  ( (ElementMatch!14701 (c!893486 C!29672)) (Concat!23546 (regOne!29914 Regex!14701) (regTwo!29914 Regex!14701)) (EmptyExpr!14701) (Star!14701 (reg!15030 Regex!14701)) (EmptyLang!14701) (Union!14701 (regOne!29915 Regex!14701) (regTwo!29915 Regex!14701)) )
))
(declare-datatypes ((List!60402 0))(
  ( (Nil!60278) (Cons!60278 (h!66726 Regex!14701) (t!373555 List!60402)) )
))
(declare-datatypes ((Context!8170 0))(
  ( (Context!8171 (exprs!4585 List!60402)) )
))
(declare-datatypes ((List!60403 0))(
  ( (Nil!60279) (Cons!60279 (h!66727 Context!8170) (t!373556 List!60403)) )
))
(declare-fun zl!343 () List!60403)

(declare-fun inv!79999 (Context!8170) Bool)

(assert (=> b!5184690 (= e!3230012 (and (inv!79999 (h!66727 zl!343)) e!3230010 tp!1454637))))

(declare-fun b!5184691 () Bool)

(declare-fun res!2202414 () Bool)

(declare-fun e!3230007 () Bool)

(assert (=> b!5184691 (=> res!2202414 e!3230007)))

(declare-fun isEmpty!32258 (List!60403) Bool)

(assert (=> b!5184691 (= res!2202414 (not (isEmpty!32258 (t!373556 zl!343))))))

(declare-fun b!5184692 () Bool)

(declare-fun e!3230008 () Bool)

(assert (=> b!5184692 (= e!3230008 (not e!3230007))))

(declare-fun res!2202409 () Bool)

(assert (=> b!5184692 (=> res!2202409 e!3230007)))

(get-info :version)

(assert (=> b!5184692 (= res!2202409 (not ((_ is Cons!60279) zl!343)))))

(declare-fun r!7292 () Regex!14701)

(declare-datatypes ((List!60404 0))(
  ( (Nil!60280) (Cons!60280 (h!66728 C!29672) (t!373557 List!60404)) )
))
(declare-fun s!2326 () List!60404)

(declare-fun matchR!6886 (Regex!14701 List!60404) Bool)

(declare-fun matchRSpec!1804 (Regex!14701 List!60404) Bool)

(assert (=> b!5184692 (= (matchR!6886 r!7292 s!2326) (matchRSpec!1804 r!7292 s!2326))))

(declare-datatypes ((Unit!152236 0))(
  ( (Unit!152237) )
))
(declare-fun lt!2136331 () Unit!152236)

(declare-fun mainMatchTheorem!1804 (Regex!14701 List!60404) Unit!152236)

(assert (=> b!5184692 (= lt!2136331 (mainMatchTheorem!1804 r!7292 s!2326))))

(declare-fun b!5184693 () Bool)

(declare-fun e!3230011 () Bool)

(declare-fun tp!1454643 () Bool)

(assert (=> b!5184693 (= e!3230011 tp!1454643)))

(declare-fun setIsEmpty!32650 () Bool)

(declare-fun setRes!32650 () Bool)

(assert (=> setIsEmpty!32650 setRes!32650))

(declare-fun b!5184694 () Bool)

(declare-fun res!2202411 () Bool)

(assert (=> b!5184694 (=> res!2202411 e!3230007)))

(declare-fun generalisedUnion!630 (List!60402) Regex!14701)

(declare-fun unfocusZipperList!143 (List!60403) List!60402)

(assert (=> b!5184694 (= res!2202411 (not (= r!7292 (generalisedUnion!630 (unfocusZipperList!143 zl!343)))))))

(declare-fun b!5184695 () Bool)

(declare-fun res!2202407 () Bool)

(assert (=> b!5184695 (=> (not res!2202407) (not e!3230008))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8170))

(declare-fun toList!8485 ((InoxSet Context!8170)) List!60403)

(assert (=> b!5184695 (= res!2202407 (= (toList!8485 z!1189) zl!343))))

(declare-fun b!5184697 () Bool)

(declare-fun res!2202413 () Bool)

(assert (=> b!5184697 (=> res!2202413 e!3230007)))

(assert (=> b!5184697 (= res!2202413 (not ((_ is Cons!60278) (exprs!4585 (h!66727 zl!343)))))))

(declare-fun b!5184698 () Bool)

(declare-fun res!2202406 () Bool)

(assert (=> b!5184698 (=> (not res!2202406) (not e!3230008))))

(declare-fun unfocusZipper!443 (List!60403) Regex!14701)

(assert (=> b!5184698 (= res!2202406 (= r!7292 (unfocusZipper!443 zl!343)))))

(declare-fun b!5184699 () Bool)

(declare-fun validRegex!6437 (Regex!14701) Bool)

(assert (=> b!5184699 (= e!3230007 (validRegex!6437 (regOne!29915 r!7292)))))

(assert (=> b!5184699 (= (matchR!6886 (regTwo!29915 r!7292) s!2326) (matchRSpec!1804 (regTwo!29915 r!7292) s!2326))))

(declare-fun lt!2136329 () Unit!152236)

(assert (=> b!5184699 (= lt!2136329 (mainMatchTheorem!1804 (regTwo!29915 r!7292) s!2326))))

(assert (=> b!5184699 (= (matchR!6886 (regOne!29915 r!7292) s!2326) (matchRSpec!1804 (regOne!29915 r!7292) s!2326))))

(declare-fun lt!2136330 () Unit!152236)

(assert (=> b!5184699 (= lt!2136330 (mainMatchTheorem!1804 (regOne!29915 r!7292) s!2326))))

(declare-fun b!5184700 () Bool)

(declare-fun e!3230009 () Bool)

(declare-fun tp_is_empty!38655 () Bool)

(declare-fun tp!1454644 () Bool)

(assert (=> b!5184700 (= e!3230009 (and tp_is_empty!38655 tp!1454644))))

(declare-fun b!5184701 () Bool)

(declare-fun e!3230013 () Bool)

(declare-fun tp!1454636 () Bool)

(declare-fun tp!1454638 () Bool)

(assert (=> b!5184701 (= e!3230013 (and tp!1454636 tp!1454638))))

(declare-fun setElem!32650 () Context!8170)

(declare-fun tp!1454642 () Bool)

(declare-fun setNonEmpty!32650 () Bool)

(assert (=> setNonEmpty!32650 (= setRes!32650 (and tp!1454642 (inv!79999 setElem!32650) e!3230011))))

(declare-fun setRest!32650 () (InoxSet Context!8170))

(assert (=> setNonEmpty!32650 (= z!1189 ((_ map or) (store ((as const (Array Context!8170 Bool)) false) setElem!32650 true) setRest!32650))))

(declare-fun b!5184696 () Bool)

(declare-fun tp!1454640 () Bool)

(declare-fun tp!1454641 () Bool)

(assert (=> b!5184696 (= e!3230013 (and tp!1454640 tp!1454641))))

(declare-fun res!2202412 () Bool)

(assert (=> start!549046 (=> (not res!2202412) (not e!3230008))))

(assert (=> start!549046 (= res!2202412 (validRegex!6437 r!7292))))

(assert (=> start!549046 e!3230008))

(assert (=> start!549046 e!3230013))

(declare-fun condSetEmpty!32650 () Bool)

(assert (=> start!549046 (= condSetEmpty!32650 (= z!1189 ((as const (Array Context!8170 Bool)) false)))))

(assert (=> start!549046 setRes!32650))

(assert (=> start!549046 e!3230012))

(assert (=> start!549046 e!3230009))

(declare-fun b!5184702 () Bool)

(declare-fun res!2202408 () Bool)

(assert (=> b!5184702 (=> res!2202408 e!3230007)))

(assert (=> b!5184702 (= res!2202408 (or ((_ is EmptyExpr!14701) r!7292) ((_ is EmptyLang!14701) r!7292) ((_ is ElementMatch!14701) r!7292) (not ((_ is Union!14701) r!7292))))))

(declare-fun b!5184703 () Bool)

(declare-fun tp!1454639 () Bool)

(assert (=> b!5184703 (= e!3230013 tp!1454639)))

(declare-fun b!5184704 () Bool)

(assert (=> b!5184704 (= e!3230013 tp_is_empty!38655)))

(declare-fun b!5184705 () Bool)

(declare-fun res!2202410 () Bool)

(assert (=> b!5184705 (=> res!2202410 e!3230007)))

(declare-fun generalisedConcat!370 (List!60402) Regex!14701)

(assert (=> b!5184705 (= res!2202410 (not (= r!7292 (generalisedConcat!370 (exprs!4585 (h!66727 zl!343))))))))

(assert (= (and start!549046 res!2202412) b!5184695))

(assert (= (and b!5184695 res!2202407) b!5184698))

(assert (= (and b!5184698 res!2202406) b!5184692))

(assert (= (and b!5184692 (not res!2202409)) b!5184691))

(assert (= (and b!5184691 (not res!2202414)) b!5184705))

(assert (= (and b!5184705 (not res!2202410)) b!5184697))

(assert (= (and b!5184697 (not res!2202413)) b!5184694))

(assert (= (and b!5184694 (not res!2202411)) b!5184702))

(assert (= (and b!5184702 (not res!2202408)) b!5184699))

(assert (= (and start!549046 ((_ is ElementMatch!14701) r!7292)) b!5184704))

(assert (= (and start!549046 ((_ is Concat!23546) r!7292)) b!5184696))

(assert (= (and start!549046 ((_ is Star!14701) r!7292)) b!5184703))

(assert (= (and start!549046 ((_ is Union!14701) r!7292)) b!5184701))

(assert (= (and start!549046 condSetEmpty!32650) setIsEmpty!32650))

(assert (= (and start!549046 (not condSetEmpty!32650)) setNonEmpty!32650))

(assert (= setNonEmpty!32650 b!5184693))

(assert (= b!5184690 b!5184689))

(assert (= (and start!549046 ((_ is Cons!60279) zl!343)) b!5184690))

(assert (= (and start!549046 ((_ is Cons!60280) s!2326)) b!5184700))

(declare-fun m!6243804 () Bool)

(assert (=> b!5184698 m!6243804))

(declare-fun m!6243806 () Bool)

(assert (=> b!5184690 m!6243806))

(declare-fun m!6243808 () Bool)

(assert (=> b!5184694 m!6243808))

(assert (=> b!5184694 m!6243808))

(declare-fun m!6243810 () Bool)

(assert (=> b!5184694 m!6243810))

(declare-fun m!6243812 () Bool)

(assert (=> start!549046 m!6243812))

(declare-fun m!6243814 () Bool)

(assert (=> b!5184692 m!6243814))

(declare-fun m!6243816 () Bool)

(assert (=> b!5184692 m!6243816))

(declare-fun m!6243818 () Bool)

(assert (=> b!5184692 m!6243818))

(declare-fun m!6243820 () Bool)

(assert (=> b!5184691 m!6243820))

(declare-fun m!6243822 () Bool)

(assert (=> b!5184699 m!6243822))

(declare-fun m!6243824 () Bool)

(assert (=> b!5184699 m!6243824))

(declare-fun m!6243826 () Bool)

(assert (=> b!5184699 m!6243826))

(declare-fun m!6243828 () Bool)

(assert (=> b!5184699 m!6243828))

(declare-fun m!6243830 () Bool)

(assert (=> b!5184699 m!6243830))

(declare-fun m!6243832 () Bool)

(assert (=> b!5184699 m!6243832))

(declare-fun m!6243834 () Bool)

(assert (=> b!5184699 m!6243834))

(declare-fun m!6243836 () Bool)

(assert (=> setNonEmpty!32650 m!6243836))

(declare-fun m!6243838 () Bool)

(assert (=> b!5184705 m!6243838))

(declare-fun m!6243840 () Bool)

(assert (=> b!5184695 m!6243840))

(check-sat tp_is_empty!38655 (not b!5184691) (not b!5184692) (not b!5184705) (not start!549046) (not b!5184693) (not b!5184690) (not b!5184694) (not b!5184701) (not b!5184698) (not setNonEmpty!32650) (not b!5184696) (not b!5184695) (not b!5184703) (not b!5184700) (not b!5184699) (not b!5184689))
(check-sat)
(get-model)

(declare-fun d!1676074 () Bool)

(assert (=> d!1676074 (= (isEmpty!32258 (t!373556 zl!343)) ((_ is Nil!60279) (t!373556 zl!343)))))

(assert (=> b!5184691 d!1676074))

(declare-fun d!1676076 () Bool)

(declare-fun lambda!259198 () Int)

(declare-fun forall!14195 (List!60402 Int) Bool)

(assert (=> d!1676076 (= (inv!79999 (h!66727 zl!343)) (forall!14195 (exprs!4585 (h!66727 zl!343)) lambda!259198))))

(declare-fun bs!1208148 () Bool)

(assert (= bs!1208148 d!1676076))

(declare-fun m!6243842 () Bool)

(assert (=> bs!1208148 m!6243842))

(assert (=> b!5184690 d!1676076))

(declare-fun bs!1208149 () Bool)

(declare-fun d!1676080 () Bool)

(assert (= bs!1208149 (and d!1676080 d!1676076)))

(declare-fun lambda!259201 () Int)

(assert (=> bs!1208149 (= lambda!259201 lambda!259198)))

(declare-fun b!5184726 () Bool)

(declare-fun e!3230026 () Regex!14701)

(declare-fun e!3230027 () Regex!14701)

(assert (=> b!5184726 (= e!3230026 e!3230027)))

(declare-fun c!893496 () Bool)

(assert (=> b!5184726 (= c!893496 ((_ is Cons!60278) (exprs!4585 (h!66727 zl!343))))))

(declare-fun b!5184727 () Bool)

(declare-fun e!3230029 () Bool)

(declare-fun e!3230028 () Bool)

(assert (=> b!5184727 (= e!3230029 e!3230028)))

(declare-fun c!893497 () Bool)

(declare-fun isEmpty!32259 (List!60402) Bool)

(declare-fun tail!10190 (List!60402) List!60402)

(assert (=> b!5184727 (= c!893497 (isEmpty!32259 (tail!10190 (exprs!4585 (h!66727 zl!343)))))))

(declare-fun b!5184728 () Bool)

(declare-fun lt!2136334 () Regex!14701)

(declare-fun head!11093 (List!60402) Regex!14701)

(assert (=> b!5184728 (= e!3230028 (= lt!2136334 (head!11093 (exprs!4585 (h!66727 zl!343)))))))

(declare-fun b!5184729 () Bool)

(declare-fun e!3230030 () Bool)

(assert (=> b!5184729 (= e!3230030 (isEmpty!32259 (t!373555 (exprs!4585 (h!66727 zl!343)))))))

(declare-fun b!5184730 () Bool)

(assert (=> b!5184730 (= e!3230027 (Concat!23546 (h!66726 (exprs!4585 (h!66727 zl!343))) (generalisedConcat!370 (t!373555 (exprs!4585 (h!66727 zl!343))))))))

(declare-fun b!5184731 () Bool)

(declare-fun isEmptyExpr!723 (Regex!14701) Bool)

(assert (=> b!5184731 (= e!3230029 (isEmptyExpr!723 lt!2136334))))

(declare-fun b!5184732 () Bool)

(assert (=> b!5184732 (= e!3230027 EmptyExpr!14701)))

(declare-fun e!3230031 () Bool)

(assert (=> d!1676080 e!3230031))

(declare-fun res!2202420 () Bool)

(assert (=> d!1676080 (=> (not res!2202420) (not e!3230031))))

(assert (=> d!1676080 (= res!2202420 (validRegex!6437 lt!2136334))))

(assert (=> d!1676080 (= lt!2136334 e!3230026)))

(declare-fun c!893498 () Bool)

(assert (=> d!1676080 (= c!893498 e!3230030)))

(declare-fun res!2202419 () Bool)

(assert (=> d!1676080 (=> (not res!2202419) (not e!3230030))))

(assert (=> d!1676080 (= res!2202419 ((_ is Cons!60278) (exprs!4585 (h!66727 zl!343))))))

(assert (=> d!1676080 (forall!14195 (exprs!4585 (h!66727 zl!343)) lambda!259201)))

(assert (=> d!1676080 (= (generalisedConcat!370 (exprs!4585 (h!66727 zl!343))) lt!2136334)))

(declare-fun b!5184733 () Bool)

(assert (=> b!5184733 (= e!3230031 e!3230029)))

(declare-fun c!893495 () Bool)

(assert (=> b!5184733 (= c!893495 (isEmpty!32259 (exprs!4585 (h!66727 zl!343))))))

(declare-fun b!5184734 () Bool)

(assert (=> b!5184734 (= e!3230026 (h!66726 (exprs!4585 (h!66727 zl!343))))))

(declare-fun b!5184735 () Bool)

(declare-fun isConcat!246 (Regex!14701) Bool)

(assert (=> b!5184735 (= e!3230028 (isConcat!246 lt!2136334))))

(assert (= (and d!1676080 res!2202419) b!5184729))

(assert (= (and d!1676080 c!893498) b!5184734))

(assert (= (and d!1676080 (not c!893498)) b!5184726))

(assert (= (and b!5184726 c!893496) b!5184730))

(assert (= (and b!5184726 (not c!893496)) b!5184732))

(assert (= (and d!1676080 res!2202420) b!5184733))

(assert (= (and b!5184733 c!893495) b!5184731))

(assert (= (and b!5184733 (not c!893495)) b!5184727))

(assert (= (and b!5184727 c!893497) b!5184728))

(assert (= (and b!5184727 (not c!893497)) b!5184735))

(declare-fun m!6243844 () Bool)

(assert (=> b!5184730 m!6243844))

(declare-fun m!6243846 () Bool)

(assert (=> b!5184733 m!6243846))

(declare-fun m!6243848 () Bool)

(assert (=> d!1676080 m!6243848))

(declare-fun m!6243850 () Bool)

(assert (=> d!1676080 m!6243850))

(declare-fun m!6243852 () Bool)

(assert (=> b!5184728 m!6243852))

(declare-fun m!6243854 () Bool)

(assert (=> b!5184727 m!6243854))

(assert (=> b!5184727 m!6243854))

(declare-fun m!6243856 () Bool)

(assert (=> b!5184727 m!6243856))

(declare-fun m!6243858 () Bool)

(assert (=> b!5184735 m!6243858))

(declare-fun m!6243860 () Bool)

(assert (=> b!5184729 m!6243860))

(declare-fun m!6243862 () Bool)

(assert (=> b!5184731 m!6243862))

(assert (=> b!5184705 d!1676080))

(declare-fun d!1676082 () Bool)

(declare-fun e!3230034 () Bool)

(assert (=> d!1676082 e!3230034))

(declare-fun res!2202423 () Bool)

(assert (=> d!1676082 (=> (not res!2202423) (not e!3230034))))

(declare-fun lt!2136337 () List!60403)

(declare-fun noDuplicate!1144 (List!60403) Bool)

(assert (=> d!1676082 (= res!2202423 (noDuplicate!1144 lt!2136337))))

(declare-fun choose!38528 ((InoxSet Context!8170)) List!60403)

(assert (=> d!1676082 (= lt!2136337 (choose!38528 z!1189))))

(assert (=> d!1676082 (= (toList!8485 z!1189) lt!2136337)))

(declare-fun b!5184738 () Bool)

(declare-fun content!10680 (List!60403) (InoxSet Context!8170))

(assert (=> b!5184738 (= e!3230034 (= (content!10680 lt!2136337) z!1189))))

(assert (= (and d!1676082 res!2202423) b!5184738))

(declare-fun m!6243864 () Bool)

(assert (=> d!1676082 m!6243864))

(declare-fun m!6243866 () Bool)

(assert (=> d!1676082 m!6243866))

(declare-fun m!6243868 () Bool)

(assert (=> b!5184738 m!6243868))

(assert (=> b!5184695 d!1676082))

(declare-fun bs!1208150 () Bool)

(declare-fun d!1676084 () Bool)

(assert (= bs!1208150 (and d!1676084 d!1676076)))

(declare-fun lambda!259204 () Int)

(assert (=> bs!1208150 (= lambda!259204 lambda!259198)))

(declare-fun bs!1208151 () Bool)

(assert (= bs!1208151 (and d!1676084 d!1676080)))

(assert (=> bs!1208151 (= lambda!259204 lambda!259201)))

(declare-fun b!5184759 () Bool)

(declare-fun e!3230050 () Bool)

(declare-fun lt!2136340 () Regex!14701)

(declare-fun isEmptyLang!733 (Regex!14701) Bool)

(assert (=> b!5184759 (= e!3230050 (isEmptyLang!733 lt!2136340))))

(declare-fun b!5184760 () Bool)

(declare-fun e!3230048 () Bool)

(assert (=> b!5184760 (= e!3230048 (isEmpty!32259 (t!373555 (unfocusZipperList!143 zl!343))))))

(declare-fun b!5184761 () Bool)

(declare-fun e!3230051 () Bool)

(assert (=> b!5184761 (= e!3230051 e!3230050)))

(declare-fun c!893510 () Bool)

(assert (=> b!5184761 (= c!893510 (isEmpty!32259 (unfocusZipperList!143 zl!343)))))

(declare-fun b!5184762 () Bool)

(declare-fun e!3230052 () Regex!14701)

(declare-fun e!3230047 () Regex!14701)

(assert (=> b!5184762 (= e!3230052 e!3230047)))

(declare-fun c!893508 () Bool)

(assert (=> b!5184762 (= c!893508 ((_ is Cons!60278) (unfocusZipperList!143 zl!343)))))

(declare-fun b!5184763 () Bool)

(assert (=> b!5184763 (= e!3230052 (h!66726 (unfocusZipperList!143 zl!343)))))

(assert (=> d!1676084 e!3230051))

(declare-fun res!2202428 () Bool)

(assert (=> d!1676084 (=> (not res!2202428) (not e!3230051))))

(assert (=> d!1676084 (= res!2202428 (validRegex!6437 lt!2136340))))

(assert (=> d!1676084 (= lt!2136340 e!3230052)))

(declare-fun c!893507 () Bool)

(assert (=> d!1676084 (= c!893507 e!3230048)))

(declare-fun res!2202429 () Bool)

(assert (=> d!1676084 (=> (not res!2202429) (not e!3230048))))

(assert (=> d!1676084 (= res!2202429 ((_ is Cons!60278) (unfocusZipperList!143 zl!343)))))

(assert (=> d!1676084 (forall!14195 (unfocusZipperList!143 zl!343) lambda!259204)))

(assert (=> d!1676084 (= (generalisedUnion!630 (unfocusZipperList!143 zl!343)) lt!2136340)))

(declare-fun b!5184764 () Bool)

(assert (=> b!5184764 (= e!3230047 EmptyLang!14701)))

(declare-fun b!5184765 () Bool)

(declare-fun e!3230049 () Bool)

(assert (=> b!5184765 (= e!3230050 e!3230049)))

(declare-fun c!893509 () Bool)

(assert (=> b!5184765 (= c!893509 (isEmpty!32259 (tail!10190 (unfocusZipperList!143 zl!343))))))

(declare-fun b!5184766 () Bool)

(assert (=> b!5184766 (= e!3230047 (Union!14701 (h!66726 (unfocusZipperList!143 zl!343)) (generalisedUnion!630 (t!373555 (unfocusZipperList!143 zl!343)))))))

(declare-fun b!5184767 () Bool)

(declare-fun isUnion!165 (Regex!14701) Bool)

(assert (=> b!5184767 (= e!3230049 (isUnion!165 lt!2136340))))

(declare-fun b!5184768 () Bool)

(assert (=> b!5184768 (= e!3230049 (= lt!2136340 (head!11093 (unfocusZipperList!143 zl!343))))))

(assert (= (and d!1676084 res!2202429) b!5184760))

(assert (= (and d!1676084 c!893507) b!5184763))

(assert (= (and d!1676084 (not c!893507)) b!5184762))

(assert (= (and b!5184762 c!893508) b!5184766))

(assert (= (and b!5184762 (not c!893508)) b!5184764))

(assert (= (and d!1676084 res!2202428) b!5184761))

(assert (= (and b!5184761 c!893510) b!5184759))

(assert (= (and b!5184761 (not c!893510)) b!5184765))

(assert (= (and b!5184765 c!893509) b!5184768))

(assert (= (and b!5184765 (not c!893509)) b!5184767))

(assert (=> b!5184765 m!6243808))

(declare-fun m!6243870 () Bool)

(assert (=> b!5184765 m!6243870))

(assert (=> b!5184765 m!6243870))

(declare-fun m!6243872 () Bool)

(assert (=> b!5184765 m!6243872))

(declare-fun m!6243874 () Bool)

(assert (=> d!1676084 m!6243874))

(assert (=> d!1676084 m!6243808))

(declare-fun m!6243876 () Bool)

(assert (=> d!1676084 m!6243876))

(declare-fun m!6243878 () Bool)

(assert (=> b!5184767 m!6243878))

(assert (=> b!5184761 m!6243808))

(declare-fun m!6243880 () Bool)

(assert (=> b!5184761 m!6243880))

(assert (=> b!5184768 m!6243808))

(declare-fun m!6243882 () Bool)

(assert (=> b!5184768 m!6243882))

(declare-fun m!6243884 () Bool)

(assert (=> b!5184759 m!6243884))

(declare-fun m!6243886 () Bool)

(assert (=> b!5184766 m!6243886))

(declare-fun m!6243888 () Bool)

(assert (=> b!5184760 m!6243888))

(assert (=> b!5184694 d!1676084))

(declare-fun bs!1208152 () Bool)

(declare-fun d!1676086 () Bool)

(assert (= bs!1208152 (and d!1676086 d!1676076)))

(declare-fun lambda!259207 () Int)

(assert (=> bs!1208152 (= lambda!259207 lambda!259198)))

(declare-fun bs!1208153 () Bool)

(assert (= bs!1208153 (and d!1676086 d!1676080)))

(assert (=> bs!1208153 (= lambda!259207 lambda!259201)))

(declare-fun bs!1208154 () Bool)

(assert (= bs!1208154 (and d!1676086 d!1676084)))

(assert (=> bs!1208154 (= lambda!259207 lambda!259204)))

(declare-fun lt!2136343 () List!60402)

(assert (=> d!1676086 (forall!14195 lt!2136343 lambda!259207)))

(declare-fun e!3230055 () List!60402)

(assert (=> d!1676086 (= lt!2136343 e!3230055)))

(declare-fun c!893513 () Bool)

(assert (=> d!1676086 (= c!893513 ((_ is Cons!60279) zl!343))))

(assert (=> d!1676086 (= (unfocusZipperList!143 zl!343) lt!2136343)))

(declare-fun b!5184773 () Bool)

(assert (=> b!5184773 (= e!3230055 (Cons!60278 (generalisedConcat!370 (exprs!4585 (h!66727 zl!343))) (unfocusZipperList!143 (t!373556 zl!343))))))

(declare-fun b!5184774 () Bool)

(assert (=> b!5184774 (= e!3230055 Nil!60278)))

(assert (= (and d!1676086 c!893513) b!5184773))

(assert (= (and d!1676086 (not c!893513)) b!5184774))

(declare-fun m!6243890 () Bool)

(assert (=> d!1676086 m!6243890))

(assert (=> b!5184773 m!6243838))

(declare-fun m!6243892 () Bool)

(assert (=> b!5184773 m!6243892))

(assert (=> b!5184694 d!1676086))

(declare-fun b!5184816 () Bool)

(assert (=> b!5184816 true))

(assert (=> b!5184816 true))

(declare-fun bs!1208155 () Bool)

(declare-fun b!5184809 () Bool)

(assert (= bs!1208155 (and b!5184809 b!5184816)))

(declare-fun lambda!259213 () Int)

(declare-fun lambda!259212 () Int)

(assert (=> bs!1208155 (not (= lambda!259213 lambda!259212))))

(assert (=> b!5184809 true))

(assert (=> b!5184809 true))

(declare-fun b!5184807 () Bool)

(declare-fun e!3230079 () Bool)

(declare-fun e!3230075 () Bool)

(assert (=> b!5184807 (= e!3230079 e!3230075)))

(declare-fun res!2202446 () Bool)

(assert (=> b!5184807 (= res!2202446 (matchRSpec!1804 (regOne!29915 (regTwo!29915 r!7292)) s!2326))))

(assert (=> b!5184807 (=> res!2202446 e!3230075)))

(declare-fun b!5184808 () Bool)

(assert (=> b!5184808 (= e!3230075 (matchRSpec!1804 (regTwo!29915 (regTwo!29915 r!7292)) s!2326))))

(declare-fun call!364313 () Bool)

(declare-fun c!893523 () Bool)

(declare-fun bm!364307 () Bool)

(declare-fun Exists!1903 (Int) Bool)

(assert (=> bm!364307 (= call!364313 (Exists!1903 (ite c!893523 lambda!259212 lambda!259213)))))

(declare-fun e!3230076 () Bool)

(assert (=> b!5184809 (= e!3230076 call!364313)))

(declare-fun b!5184810 () Bool)

(declare-fun e!3230077 () Bool)

(assert (=> b!5184810 (= e!3230077 (= s!2326 (Cons!60280 (c!893486 (regTwo!29915 r!7292)) Nil!60280)))))

(declare-fun d!1676088 () Bool)

(declare-fun c!893522 () Bool)

(assert (=> d!1676088 (= c!893522 ((_ is EmptyExpr!14701) (regTwo!29915 r!7292)))))

(declare-fun e!3230074 () Bool)

(assert (=> d!1676088 (= (matchRSpec!1804 (regTwo!29915 r!7292) s!2326) e!3230074)))

(declare-fun b!5184811 () Bool)

(declare-fun c!893525 () Bool)

(assert (=> b!5184811 (= c!893525 ((_ is ElementMatch!14701) (regTwo!29915 r!7292)))))

(declare-fun e!3230080 () Bool)

(assert (=> b!5184811 (= e!3230080 e!3230077)))

(declare-fun b!5184812 () Bool)

(declare-fun call!364312 () Bool)

(assert (=> b!5184812 (= e!3230074 call!364312)))

(declare-fun b!5184813 () Bool)

(declare-fun c!893524 () Bool)

(assert (=> b!5184813 (= c!893524 ((_ is Union!14701) (regTwo!29915 r!7292)))))

(assert (=> b!5184813 (= e!3230077 e!3230079)))

(declare-fun bm!364308 () Bool)

(declare-fun isEmpty!32260 (List!60404) Bool)

(assert (=> bm!364308 (= call!364312 (isEmpty!32260 s!2326))))

(declare-fun b!5184814 () Bool)

(assert (=> b!5184814 (= e!3230079 e!3230076)))

(assert (=> b!5184814 (= c!893523 ((_ is Star!14701) (regTwo!29915 r!7292)))))

(declare-fun b!5184815 () Bool)

(assert (=> b!5184815 (= e!3230074 e!3230080)))

(declare-fun res!2202448 () Bool)

(assert (=> b!5184815 (= res!2202448 (not ((_ is EmptyLang!14701) (regTwo!29915 r!7292))))))

(assert (=> b!5184815 (=> (not res!2202448) (not e!3230080))))

(declare-fun e!3230078 () Bool)

(assert (=> b!5184816 (= e!3230078 call!364313)))

(declare-fun b!5184817 () Bool)

(declare-fun res!2202447 () Bool)

(assert (=> b!5184817 (=> res!2202447 e!3230078)))

(assert (=> b!5184817 (= res!2202447 call!364312)))

(assert (=> b!5184817 (= e!3230076 e!3230078)))

(assert (= (and d!1676088 c!893522) b!5184812))

(assert (= (and d!1676088 (not c!893522)) b!5184815))

(assert (= (and b!5184815 res!2202448) b!5184811))

(assert (= (and b!5184811 c!893525) b!5184810))

(assert (= (and b!5184811 (not c!893525)) b!5184813))

(assert (= (and b!5184813 c!893524) b!5184807))

(assert (= (and b!5184813 (not c!893524)) b!5184814))

(assert (= (and b!5184807 (not res!2202446)) b!5184808))

(assert (= (and b!5184814 c!893523) b!5184817))

(assert (= (and b!5184814 (not c!893523)) b!5184809))

(assert (= (and b!5184817 (not res!2202447)) b!5184816))

(assert (= (or b!5184816 b!5184809) bm!364307))

(assert (= (or b!5184812 b!5184817) bm!364308))

(declare-fun m!6243894 () Bool)

(assert (=> b!5184807 m!6243894))

(declare-fun m!6243896 () Bool)

(assert (=> b!5184808 m!6243896))

(declare-fun m!6243898 () Bool)

(assert (=> bm!364307 m!6243898))

(declare-fun m!6243900 () Bool)

(assert (=> bm!364308 m!6243900))

(assert (=> b!5184699 d!1676088))

(declare-fun b!5184840 () Bool)

(declare-fun e!3230095 () Bool)

(declare-fun e!3230098 () Bool)

(assert (=> b!5184840 (= e!3230095 e!3230098)))

(declare-fun c!893531 () Bool)

(assert (=> b!5184840 (= c!893531 ((_ is Union!14701) (regOne!29915 r!7292)))))

(declare-fun b!5184841 () Bool)

(declare-fun e!3230099 () Bool)

(assert (=> b!5184841 (= e!3230099 e!3230095)))

(declare-fun c!893530 () Bool)

(assert (=> b!5184841 (= c!893530 ((_ is Star!14701) (regOne!29915 r!7292)))))

(declare-fun b!5184842 () Bool)

(declare-fun res!2202463 () Bool)

(declare-fun e!3230100 () Bool)

(assert (=> b!5184842 (=> res!2202463 e!3230100)))

(assert (=> b!5184842 (= res!2202463 (not ((_ is Concat!23546) (regOne!29915 r!7292))))))

(assert (=> b!5184842 (= e!3230098 e!3230100)))

(declare-fun d!1676090 () Bool)

(declare-fun res!2202462 () Bool)

(assert (=> d!1676090 (=> res!2202462 e!3230099)))

(assert (=> d!1676090 (= res!2202462 ((_ is ElementMatch!14701) (regOne!29915 r!7292)))))

(assert (=> d!1676090 (= (validRegex!6437 (regOne!29915 r!7292)) e!3230099)))

(declare-fun bm!364315 () Bool)

(declare-fun call!364321 () Bool)

(assert (=> bm!364315 (= call!364321 (validRegex!6437 (ite c!893531 (regOne!29915 (regOne!29915 r!7292)) (regOne!29914 (regOne!29915 r!7292)))))))

(declare-fun bm!364316 () Bool)

(declare-fun call!364320 () Bool)

(declare-fun call!364322 () Bool)

(assert (=> bm!364316 (= call!364320 call!364322)))

(declare-fun b!5184843 () Bool)

(declare-fun e!3230096 () Bool)

(assert (=> b!5184843 (= e!3230096 call!364320)))

(declare-fun b!5184844 () Bool)

(declare-fun e!3230097 () Bool)

(assert (=> b!5184844 (= e!3230097 call!364322)))

(declare-fun b!5184845 () Bool)

(declare-fun res!2202459 () Bool)

(assert (=> b!5184845 (=> (not res!2202459) (not e!3230096))))

(assert (=> b!5184845 (= res!2202459 call!364321)))

(assert (=> b!5184845 (= e!3230098 e!3230096)))

(declare-fun b!5184846 () Bool)

(declare-fun e!3230101 () Bool)

(assert (=> b!5184846 (= e!3230100 e!3230101)))

(declare-fun res!2202461 () Bool)

(assert (=> b!5184846 (=> (not res!2202461) (not e!3230101))))

(assert (=> b!5184846 (= res!2202461 call!364321)))

(declare-fun b!5184847 () Bool)

(assert (=> b!5184847 (= e!3230095 e!3230097)))

(declare-fun res!2202460 () Bool)

(declare-fun nullable!4903 (Regex!14701) Bool)

(assert (=> b!5184847 (= res!2202460 (not (nullable!4903 (reg!15030 (regOne!29915 r!7292)))))))

(assert (=> b!5184847 (=> (not res!2202460) (not e!3230097))))

(declare-fun b!5184848 () Bool)

(assert (=> b!5184848 (= e!3230101 call!364320)))

(declare-fun bm!364317 () Bool)

(assert (=> bm!364317 (= call!364322 (validRegex!6437 (ite c!893530 (reg!15030 (regOne!29915 r!7292)) (ite c!893531 (regTwo!29915 (regOne!29915 r!7292)) (regTwo!29914 (regOne!29915 r!7292))))))))

(assert (= (and d!1676090 (not res!2202462)) b!5184841))

(assert (= (and b!5184841 c!893530) b!5184847))

(assert (= (and b!5184841 (not c!893530)) b!5184840))

(assert (= (and b!5184847 res!2202460) b!5184844))

(assert (= (and b!5184840 c!893531) b!5184845))

(assert (= (and b!5184840 (not c!893531)) b!5184842))

(assert (= (and b!5184845 res!2202459) b!5184843))

(assert (= (and b!5184842 (not res!2202463)) b!5184846))

(assert (= (and b!5184846 res!2202461) b!5184848))

(assert (= (or b!5184843 b!5184848) bm!364316))

(assert (= (or b!5184845 b!5184846) bm!364315))

(assert (= (or b!5184844 bm!364316) bm!364317))

(declare-fun m!6243902 () Bool)

(assert (=> bm!364315 m!6243902))

(declare-fun m!6243904 () Bool)

(assert (=> b!5184847 m!6243904))

(declare-fun m!6243906 () Bool)

(assert (=> bm!364317 m!6243906))

(assert (=> b!5184699 d!1676090))

(declare-fun d!1676092 () Bool)

(assert (=> d!1676092 (= (matchR!6886 (regOne!29915 r!7292) s!2326) (matchRSpec!1804 (regOne!29915 r!7292) s!2326))))

(declare-fun lt!2136346 () Unit!152236)

(declare-fun choose!38529 (Regex!14701 List!60404) Unit!152236)

(assert (=> d!1676092 (= lt!2136346 (choose!38529 (regOne!29915 r!7292) s!2326))))

(assert (=> d!1676092 (validRegex!6437 (regOne!29915 r!7292))))

(assert (=> d!1676092 (= (mainMatchTheorem!1804 (regOne!29915 r!7292) s!2326) lt!2136346)))

(declare-fun bs!1208156 () Bool)

(assert (= bs!1208156 d!1676092))

(assert (=> bs!1208156 m!6243834))

(assert (=> bs!1208156 m!6243828))

(declare-fun m!6243908 () Bool)

(assert (=> bs!1208156 m!6243908))

(assert (=> bs!1208156 m!6243830))

(assert (=> b!5184699 d!1676092))

(declare-fun b!5184887 () Bool)

(declare-fun e!3230127 () Bool)

(declare-fun derivativeStep!4009 (Regex!14701 C!29672) Regex!14701)

(declare-fun head!11094 (List!60404) C!29672)

(declare-fun tail!10191 (List!60404) List!60404)

(assert (=> b!5184887 (= e!3230127 (matchR!6886 (derivativeStep!4009 (regTwo!29915 r!7292) (head!11094 s!2326)) (tail!10191 s!2326)))))

(declare-fun b!5184888 () Bool)

(declare-fun e!3230122 () Bool)

(declare-fun e!3230126 () Bool)

(assert (=> b!5184888 (= e!3230122 e!3230126)))

(declare-fun res!2202485 () Bool)

(assert (=> b!5184888 (=> res!2202485 e!3230126)))

(declare-fun call!364325 () Bool)

(assert (=> b!5184888 (= res!2202485 call!364325)))

(declare-fun b!5184889 () Bool)

(declare-fun res!2202489 () Bool)

(declare-fun e!3230128 () Bool)

(assert (=> b!5184889 (=> res!2202489 e!3230128)))

(assert (=> b!5184889 (= res!2202489 (not ((_ is ElementMatch!14701) (regTwo!29915 r!7292))))))

(declare-fun e!3230123 () Bool)

(assert (=> b!5184889 (= e!3230123 e!3230128)))

(declare-fun b!5184890 () Bool)

(declare-fun e!3230125 () Bool)

(declare-fun lt!2136351 () Bool)

(assert (=> b!5184890 (= e!3230125 (= lt!2136351 call!364325))))

(declare-fun d!1676094 () Bool)

(assert (=> d!1676094 e!3230125))

(declare-fun c!893542 () Bool)

(assert (=> d!1676094 (= c!893542 ((_ is EmptyExpr!14701) (regTwo!29915 r!7292)))))

(assert (=> d!1676094 (= lt!2136351 e!3230127)))

(declare-fun c!893543 () Bool)

(assert (=> d!1676094 (= c!893543 (isEmpty!32260 s!2326))))

(assert (=> d!1676094 (validRegex!6437 (regTwo!29915 r!7292))))

(assert (=> d!1676094 (= (matchR!6886 (regTwo!29915 r!7292) s!2326) lt!2136351)))

(declare-fun b!5184891 () Bool)

(declare-fun res!2202488 () Bool)

(assert (=> b!5184891 (=> res!2202488 e!3230128)))

(declare-fun e!3230124 () Bool)

(assert (=> b!5184891 (= res!2202488 e!3230124)))

(declare-fun res!2202487 () Bool)

(assert (=> b!5184891 (=> (not res!2202487) (not e!3230124))))

(assert (=> b!5184891 (= res!2202487 lt!2136351)))

(declare-fun b!5184892 () Bool)

(assert (=> b!5184892 (= e!3230126 (not (= (head!11094 s!2326) (c!893486 (regTwo!29915 r!7292)))))))

(declare-fun b!5184893 () Bool)

(declare-fun res!2202486 () Bool)

(assert (=> b!5184893 (=> (not res!2202486) (not e!3230124))))

(assert (=> b!5184893 (= res!2202486 (isEmpty!32260 (tail!10191 s!2326)))))

(declare-fun b!5184894 () Bool)

(assert (=> b!5184894 (= e!3230127 (nullable!4903 (regTwo!29915 r!7292)))))

(declare-fun b!5184895 () Bool)

(assert (=> b!5184895 (= e!3230128 e!3230122)))

(declare-fun res!2202484 () Bool)

(assert (=> b!5184895 (=> (not res!2202484) (not e!3230122))))

(assert (=> b!5184895 (= res!2202484 (not lt!2136351))))

(declare-fun b!5184896 () Bool)

(assert (=> b!5184896 (= e!3230124 (= (head!11094 s!2326) (c!893486 (regTwo!29915 r!7292))))))

(declare-fun b!5184897 () Bool)

(assert (=> b!5184897 (= e!3230125 e!3230123)))

(declare-fun c!893544 () Bool)

(assert (=> b!5184897 (= c!893544 ((_ is EmptyLang!14701) (regTwo!29915 r!7292)))))

(declare-fun b!5184898 () Bool)

(declare-fun res!2202483 () Bool)

(assert (=> b!5184898 (=> (not res!2202483) (not e!3230124))))

(assert (=> b!5184898 (= res!2202483 (not call!364325))))

(declare-fun b!5184899 () Bool)

(assert (=> b!5184899 (= e!3230123 (not lt!2136351))))

(declare-fun b!5184900 () Bool)

(declare-fun res!2202482 () Bool)

(assert (=> b!5184900 (=> res!2202482 e!3230126)))

(assert (=> b!5184900 (= res!2202482 (not (isEmpty!32260 (tail!10191 s!2326))))))

(declare-fun bm!364320 () Bool)

(assert (=> bm!364320 (= call!364325 (isEmpty!32260 s!2326))))

(assert (= (and d!1676094 c!893543) b!5184894))

(assert (= (and d!1676094 (not c!893543)) b!5184887))

(assert (= (and d!1676094 c!893542) b!5184890))

(assert (= (and d!1676094 (not c!893542)) b!5184897))

(assert (= (and b!5184897 c!893544) b!5184899))

(assert (= (and b!5184897 (not c!893544)) b!5184889))

(assert (= (and b!5184889 (not res!2202489)) b!5184891))

(assert (= (and b!5184891 res!2202487) b!5184898))

(assert (= (and b!5184898 res!2202483) b!5184893))

(assert (= (and b!5184893 res!2202486) b!5184896))

(assert (= (and b!5184891 (not res!2202488)) b!5184895))

(assert (= (and b!5184895 res!2202484) b!5184888))

(assert (= (and b!5184888 (not res!2202485)) b!5184900))

(assert (= (and b!5184900 (not res!2202482)) b!5184892))

(assert (= (or b!5184890 b!5184888 b!5184898) bm!364320))

(declare-fun m!6243912 () Bool)

(assert (=> b!5184894 m!6243912))

(declare-fun m!6243914 () Bool)

(assert (=> b!5184893 m!6243914))

(assert (=> b!5184893 m!6243914))

(declare-fun m!6243916 () Bool)

(assert (=> b!5184893 m!6243916))

(assert (=> bm!364320 m!6243900))

(declare-fun m!6243918 () Bool)

(assert (=> b!5184887 m!6243918))

(assert (=> b!5184887 m!6243918))

(declare-fun m!6243920 () Bool)

(assert (=> b!5184887 m!6243920))

(assert (=> b!5184887 m!6243914))

(assert (=> b!5184887 m!6243920))

(assert (=> b!5184887 m!6243914))

(declare-fun m!6243922 () Bool)

(assert (=> b!5184887 m!6243922))

(assert (=> b!5184892 m!6243918))

(assert (=> d!1676094 m!6243900))

(declare-fun m!6243924 () Bool)

(assert (=> d!1676094 m!6243924))

(assert (=> b!5184896 m!6243918))

(assert (=> b!5184900 m!6243914))

(assert (=> b!5184900 m!6243914))

(assert (=> b!5184900 m!6243916))

(assert (=> b!5184699 d!1676094))

(declare-fun d!1676098 () Bool)

(assert (=> d!1676098 (= (matchR!6886 (regTwo!29915 r!7292) s!2326) (matchRSpec!1804 (regTwo!29915 r!7292) s!2326))))

(declare-fun lt!2136352 () Unit!152236)

(assert (=> d!1676098 (= lt!2136352 (choose!38529 (regTwo!29915 r!7292) s!2326))))

(assert (=> d!1676098 (validRegex!6437 (regTwo!29915 r!7292))))

(assert (=> d!1676098 (= (mainMatchTheorem!1804 (regTwo!29915 r!7292) s!2326) lt!2136352)))

(declare-fun bs!1208158 () Bool)

(assert (= bs!1208158 d!1676098))

(assert (=> bs!1208158 m!6243826))

(assert (=> bs!1208158 m!6243822))

(declare-fun m!6243926 () Bool)

(assert (=> bs!1208158 m!6243926))

(assert (=> bs!1208158 m!6243924))

(assert (=> b!5184699 d!1676098))

(declare-fun bs!1208159 () Bool)

(declare-fun b!5184920 () Bool)

(assert (= bs!1208159 (and b!5184920 b!5184816)))

(declare-fun lambda!259219 () Int)

(assert (=> bs!1208159 (= (and (= (reg!15030 (regOne!29915 r!7292)) (reg!15030 (regTwo!29915 r!7292))) (= (regOne!29915 r!7292) (regTwo!29915 r!7292))) (= lambda!259219 lambda!259212))))

(declare-fun bs!1208160 () Bool)

(assert (= bs!1208160 (and b!5184920 b!5184809)))

(assert (=> bs!1208160 (not (= lambda!259219 lambda!259213))))

(assert (=> b!5184920 true))

(assert (=> b!5184920 true))

(declare-fun bs!1208161 () Bool)

(declare-fun b!5184913 () Bool)

(assert (= bs!1208161 (and b!5184913 b!5184816)))

(declare-fun lambda!259220 () Int)

(assert (=> bs!1208161 (not (= lambda!259220 lambda!259212))))

(declare-fun bs!1208162 () Bool)

(assert (= bs!1208162 (and b!5184913 b!5184809)))

(assert (=> bs!1208162 (= (and (= (regOne!29914 (regOne!29915 r!7292)) (regOne!29914 (regTwo!29915 r!7292))) (= (regTwo!29914 (regOne!29915 r!7292)) (regTwo!29914 (regTwo!29915 r!7292)))) (= lambda!259220 lambda!259213))))

(declare-fun bs!1208164 () Bool)

(assert (= bs!1208164 (and b!5184913 b!5184920)))

(assert (=> bs!1208164 (not (= lambda!259220 lambda!259219))))

(assert (=> b!5184913 true))

(assert (=> b!5184913 true))

(declare-fun b!5184911 () Bool)

(declare-fun e!3230140 () Bool)

(declare-fun e!3230136 () Bool)

(assert (=> b!5184911 (= e!3230140 e!3230136)))

(declare-fun res!2202492 () Bool)

(assert (=> b!5184911 (= res!2202492 (matchRSpec!1804 (regOne!29915 (regOne!29915 r!7292)) s!2326))))

(assert (=> b!5184911 (=> res!2202492 e!3230136)))

(declare-fun b!5184912 () Bool)

(assert (=> b!5184912 (= e!3230136 (matchRSpec!1804 (regTwo!29915 (regOne!29915 r!7292)) s!2326))))

(declare-fun call!364327 () Bool)

(declare-fun bm!364321 () Bool)

(declare-fun c!893550 () Bool)

(assert (=> bm!364321 (= call!364327 (Exists!1903 (ite c!893550 lambda!259219 lambda!259220)))))

(declare-fun e!3230137 () Bool)

(assert (=> b!5184913 (= e!3230137 call!364327)))

(declare-fun b!5184914 () Bool)

(declare-fun e!3230138 () Bool)

(assert (=> b!5184914 (= e!3230138 (= s!2326 (Cons!60280 (c!893486 (regOne!29915 r!7292)) Nil!60280)))))

(declare-fun d!1676100 () Bool)

(declare-fun c!893549 () Bool)

(assert (=> d!1676100 (= c!893549 ((_ is EmptyExpr!14701) (regOne!29915 r!7292)))))

(declare-fun e!3230135 () Bool)

(assert (=> d!1676100 (= (matchRSpec!1804 (regOne!29915 r!7292) s!2326) e!3230135)))

(declare-fun b!5184915 () Bool)

(declare-fun c!893552 () Bool)

(assert (=> b!5184915 (= c!893552 ((_ is ElementMatch!14701) (regOne!29915 r!7292)))))

(declare-fun e!3230141 () Bool)

(assert (=> b!5184915 (= e!3230141 e!3230138)))

(declare-fun b!5184916 () Bool)

(declare-fun call!364326 () Bool)

(assert (=> b!5184916 (= e!3230135 call!364326)))

(declare-fun b!5184917 () Bool)

(declare-fun c!893551 () Bool)

(assert (=> b!5184917 (= c!893551 ((_ is Union!14701) (regOne!29915 r!7292)))))

(assert (=> b!5184917 (= e!3230138 e!3230140)))

(declare-fun bm!364322 () Bool)

(assert (=> bm!364322 (= call!364326 (isEmpty!32260 s!2326))))

(declare-fun b!5184918 () Bool)

(assert (=> b!5184918 (= e!3230140 e!3230137)))

(assert (=> b!5184918 (= c!893550 ((_ is Star!14701) (regOne!29915 r!7292)))))

(declare-fun b!5184919 () Bool)

(assert (=> b!5184919 (= e!3230135 e!3230141)))

(declare-fun res!2202494 () Bool)

(assert (=> b!5184919 (= res!2202494 (not ((_ is EmptyLang!14701) (regOne!29915 r!7292))))))

(assert (=> b!5184919 (=> (not res!2202494) (not e!3230141))))

(declare-fun e!3230139 () Bool)

(assert (=> b!5184920 (= e!3230139 call!364327)))

(declare-fun b!5184921 () Bool)

(declare-fun res!2202493 () Bool)

(assert (=> b!5184921 (=> res!2202493 e!3230139)))

(assert (=> b!5184921 (= res!2202493 call!364326)))

(assert (=> b!5184921 (= e!3230137 e!3230139)))

(assert (= (and d!1676100 c!893549) b!5184916))

(assert (= (and d!1676100 (not c!893549)) b!5184919))

(assert (= (and b!5184919 res!2202494) b!5184915))

(assert (= (and b!5184915 c!893552) b!5184914))

(assert (= (and b!5184915 (not c!893552)) b!5184917))

(assert (= (and b!5184917 c!893551) b!5184911))

(assert (= (and b!5184917 (not c!893551)) b!5184918))

(assert (= (and b!5184911 (not res!2202492)) b!5184912))

(assert (= (and b!5184918 c!893550) b!5184921))

(assert (= (and b!5184918 (not c!893550)) b!5184913))

(assert (= (and b!5184921 (not res!2202493)) b!5184920))

(assert (= (or b!5184920 b!5184913) bm!364321))

(assert (= (or b!5184916 b!5184921) bm!364322))

(declare-fun m!6243932 () Bool)

(assert (=> b!5184911 m!6243932))

(declare-fun m!6243934 () Bool)

(assert (=> b!5184912 m!6243934))

(declare-fun m!6243940 () Bool)

(assert (=> bm!364321 m!6243940))

(assert (=> bm!364322 m!6243900))

(assert (=> b!5184699 d!1676100))

(declare-fun b!5184932 () Bool)

(declare-fun e!3230153 () Bool)

(assert (=> b!5184932 (= e!3230153 (matchR!6886 (derivativeStep!4009 (regOne!29915 r!7292) (head!11094 s!2326)) (tail!10191 s!2326)))))

(declare-fun b!5184933 () Bool)

(declare-fun e!3230148 () Bool)

(declare-fun e!3230152 () Bool)

(assert (=> b!5184933 (= e!3230148 e!3230152)))

(declare-fun res!2202500 () Bool)

(assert (=> b!5184933 (=> res!2202500 e!3230152)))

(declare-fun call!364328 () Bool)

(assert (=> b!5184933 (= res!2202500 call!364328)))

(declare-fun b!5184934 () Bool)

(declare-fun res!2202504 () Bool)

(declare-fun e!3230154 () Bool)

(assert (=> b!5184934 (=> res!2202504 e!3230154)))

(assert (=> b!5184934 (= res!2202504 (not ((_ is ElementMatch!14701) (regOne!29915 r!7292))))))

(declare-fun e!3230149 () Bool)

(assert (=> b!5184934 (= e!3230149 e!3230154)))

(declare-fun b!5184935 () Bool)

(declare-fun e!3230151 () Bool)

(declare-fun lt!2136354 () Bool)

(assert (=> b!5184935 (= e!3230151 (= lt!2136354 call!364328))))

(declare-fun d!1676102 () Bool)

(assert (=> d!1676102 e!3230151))

(declare-fun c!893557 () Bool)

(assert (=> d!1676102 (= c!893557 ((_ is EmptyExpr!14701) (regOne!29915 r!7292)))))

(assert (=> d!1676102 (= lt!2136354 e!3230153)))

(declare-fun c!893558 () Bool)

(assert (=> d!1676102 (= c!893558 (isEmpty!32260 s!2326))))

(assert (=> d!1676102 (validRegex!6437 (regOne!29915 r!7292))))

(assert (=> d!1676102 (= (matchR!6886 (regOne!29915 r!7292) s!2326) lt!2136354)))

(declare-fun b!5184936 () Bool)

(declare-fun res!2202503 () Bool)

(assert (=> b!5184936 (=> res!2202503 e!3230154)))

(declare-fun e!3230150 () Bool)

(assert (=> b!5184936 (= res!2202503 e!3230150)))

(declare-fun res!2202502 () Bool)

(assert (=> b!5184936 (=> (not res!2202502) (not e!3230150))))

(assert (=> b!5184936 (= res!2202502 lt!2136354)))

(declare-fun b!5184937 () Bool)

(assert (=> b!5184937 (= e!3230152 (not (= (head!11094 s!2326) (c!893486 (regOne!29915 r!7292)))))))

(declare-fun b!5184938 () Bool)

(declare-fun res!2202501 () Bool)

(assert (=> b!5184938 (=> (not res!2202501) (not e!3230150))))

(assert (=> b!5184938 (= res!2202501 (isEmpty!32260 (tail!10191 s!2326)))))

(declare-fun b!5184939 () Bool)

(assert (=> b!5184939 (= e!3230153 (nullable!4903 (regOne!29915 r!7292)))))

(declare-fun b!5184940 () Bool)

(assert (=> b!5184940 (= e!3230154 e!3230148)))

(declare-fun res!2202499 () Bool)

(assert (=> b!5184940 (=> (not res!2202499) (not e!3230148))))

(assert (=> b!5184940 (= res!2202499 (not lt!2136354))))

(declare-fun b!5184941 () Bool)

(assert (=> b!5184941 (= e!3230150 (= (head!11094 s!2326) (c!893486 (regOne!29915 r!7292))))))

(declare-fun b!5184942 () Bool)

(assert (=> b!5184942 (= e!3230151 e!3230149)))

(declare-fun c!893559 () Bool)

(assert (=> b!5184942 (= c!893559 ((_ is EmptyLang!14701) (regOne!29915 r!7292)))))

(declare-fun b!5184943 () Bool)

(declare-fun res!2202498 () Bool)

(assert (=> b!5184943 (=> (not res!2202498) (not e!3230150))))

(assert (=> b!5184943 (= res!2202498 (not call!364328))))

(declare-fun b!5184944 () Bool)

(assert (=> b!5184944 (= e!3230149 (not lt!2136354))))

(declare-fun b!5184945 () Bool)

(declare-fun res!2202497 () Bool)

(assert (=> b!5184945 (=> res!2202497 e!3230152)))

(assert (=> b!5184945 (= res!2202497 (not (isEmpty!32260 (tail!10191 s!2326))))))

(declare-fun bm!364323 () Bool)

(assert (=> bm!364323 (= call!364328 (isEmpty!32260 s!2326))))

(assert (= (and d!1676102 c!893558) b!5184939))

(assert (= (and d!1676102 (not c!893558)) b!5184932))

(assert (= (and d!1676102 c!893557) b!5184935))

(assert (= (and d!1676102 (not c!893557)) b!5184942))

(assert (= (and b!5184942 c!893559) b!5184944))

(assert (= (and b!5184942 (not c!893559)) b!5184934))

(assert (= (and b!5184934 (not res!2202504)) b!5184936))

(assert (= (and b!5184936 res!2202502) b!5184943))

(assert (= (and b!5184943 res!2202498) b!5184938))

(assert (= (and b!5184938 res!2202501) b!5184941))

(assert (= (and b!5184936 (not res!2202503)) b!5184940))

(assert (= (and b!5184940 res!2202499) b!5184933))

(assert (= (and b!5184933 (not res!2202500)) b!5184945))

(assert (= (and b!5184945 (not res!2202497)) b!5184937))

(assert (= (or b!5184935 b!5184933 b!5184943) bm!364323))

(declare-fun m!6243954 () Bool)

(assert (=> b!5184939 m!6243954))

(assert (=> b!5184938 m!6243914))

(assert (=> b!5184938 m!6243914))

(assert (=> b!5184938 m!6243916))

(assert (=> bm!364323 m!6243900))

(assert (=> b!5184932 m!6243918))

(assert (=> b!5184932 m!6243918))

(declare-fun m!6243956 () Bool)

(assert (=> b!5184932 m!6243956))

(assert (=> b!5184932 m!6243914))

(assert (=> b!5184932 m!6243956))

(assert (=> b!5184932 m!6243914))

(declare-fun m!6243958 () Bool)

(assert (=> b!5184932 m!6243958))

(assert (=> b!5184937 m!6243918))

(assert (=> d!1676102 m!6243900))

(assert (=> d!1676102 m!6243830))

(assert (=> b!5184941 m!6243918))

(assert (=> b!5184945 m!6243914))

(assert (=> b!5184945 m!6243914))

(assert (=> b!5184945 m!6243916))

(assert (=> b!5184699 d!1676102))

(declare-fun d!1676106 () Bool)

(declare-fun lt!2136359 () Regex!14701)

(assert (=> d!1676106 (validRegex!6437 lt!2136359)))

(assert (=> d!1676106 (= lt!2136359 (generalisedUnion!630 (unfocusZipperList!143 zl!343)))))

(assert (=> d!1676106 (= (unfocusZipper!443 zl!343) lt!2136359)))

(declare-fun bs!1208165 () Bool)

(assert (= bs!1208165 d!1676106))

(declare-fun m!6243960 () Bool)

(assert (=> bs!1208165 m!6243960))

(assert (=> bs!1208165 m!6243808))

(assert (=> bs!1208165 m!6243808))

(assert (=> bs!1208165 m!6243810))

(assert (=> b!5184698 d!1676106))

(declare-fun b!5184950 () Bool)

(declare-fun e!3230157 () Bool)

(declare-fun e!3230160 () Bool)

(assert (=> b!5184950 (= e!3230157 e!3230160)))

(declare-fun c!893563 () Bool)

(assert (=> b!5184950 (= c!893563 ((_ is Union!14701) r!7292))))

(declare-fun b!5184951 () Bool)

(declare-fun e!3230161 () Bool)

(assert (=> b!5184951 (= e!3230161 e!3230157)))

(declare-fun c!893562 () Bool)

(assert (=> b!5184951 (= c!893562 ((_ is Star!14701) r!7292))))

(declare-fun b!5184952 () Bool)

(declare-fun res!2202509 () Bool)

(declare-fun e!3230162 () Bool)

(assert (=> b!5184952 (=> res!2202509 e!3230162)))

(assert (=> b!5184952 (= res!2202509 (not ((_ is Concat!23546) r!7292)))))

(assert (=> b!5184952 (= e!3230160 e!3230162)))

(declare-fun d!1676108 () Bool)

(declare-fun res!2202508 () Bool)

(assert (=> d!1676108 (=> res!2202508 e!3230161)))

(assert (=> d!1676108 (= res!2202508 ((_ is ElementMatch!14701) r!7292))))

(assert (=> d!1676108 (= (validRegex!6437 r!7292) e!3230161)))

(declare-fun bm!364324 () Bool)

(declare-fun call!364330 () Bool)

(assert (=> bm!364324 (= call!364330 (validRegex!6437 (ite c!893563 (regOne!29915 r!7292) (regOne!29914 r!7292))))))

(declare-fun bm!364325 () Bool)

(declare-fun call!364329 () Bool)

(declare-fun call!364331 () Bool)

(assert (=> bm!364325 (= call!364329 call!364331)))

(declare-fun b!5184953 () Bool)

(declare-fun e!3230158 () Bool)

(assert (=> b!5184953 (= e!3230158 call!364329)))

(declare-fun b!5184954 () Bool)

(declare-fun e!3230159 () Bool)

(assert (=> b!5184954 (= e!3230159 call!364331)))

(declare-fun b!5184955 () Bool)

(declare-fun res!2202505 () Bool)

(assert (=> b!5184955 (=> (not res!2202505) (not e!3230158))))

(assert (=> b!5184955 (= res!2202505 call!364330)))

(assert (=> b!5184955 (= e!3230160 e!3230158)))

(declare-fun b!5184956 () Bool)

(declare-fun e!3230163 () Bool)

(assert (=> b!5184956 (= e!3230162 e!3230163)))

(declare-fun res!2202507 () Bool)

(assert (=> b!5184956 (=> (not res!2202507) (not e!3230163))))

(assert (=> b!5184956 (= res!2202507 call!364330)))

(declare-fun b!5184957 () Bool)

(assert (=> b!5184957 (= e!3230157 e!3230159)))

(declare-fun res!2202506 () Bool)

(assert (=> b!5184957 (= res!2202506 (not (nullable!4903 (reg!15030 r!7292))))))

(assert (=> b!5184957 (=> (not res!2202506) (not e!3230159))))

(declare-fun b!5184958 () Bool)

(assert (=> b!5184958 (= e!3230163 call!364329)))

(declare-fun bm!364326 () Bool)

(assert (=> bm!364326 (= call!364331 (validRegex!6437 (ite c!893562 (reg!15030 r!7292) (ite c!893563 (regTwo!29915 r!7292) (regTwo!29914 r!7292)))))))

(assert (= (and d!1676108 (not res!2202508)) b!5184951))

(assert (= (and b!5184951 c!893562) b!5184957))

(assert (= (and b!5184951 (not c!893562)) b!5184950))

(assert (= (and b!5184957 res!2202506) b!5184954))

(assert (= (and b!5184950 c!893563) b!5184955))

(assert (= (and b!5184950 (not c!893563)) b!5184952))

(assert (= (and b!5184955 res!2202505) b!5184953))

(assert (= (and b!5184952 (not res!2202509)) b!5184956))

(assert (= (and b!5184956 res!2202507) b!5184958))

(assert (= (or b!5184953 b!5184958) bm!364325))

(assert (= (or b!5184955 b!5184956) bm!364324))

(assert (= (or b!5184954 bm!364325) bm!364326))

(declare-fun m!6243962 () Bool)

(assert (=> bm!364324 m!6243962))

(declare-fun m!6243964 () Bool)

(assert (=> b!5184957 m!6243964))

(declare-fun m!6243966 () Bool)

(assert (=> bm!364326 m!6243966))

(assert (=> start!549046 d!1676108))

(declare-fun bs!1208167 () Bool)

(declare-fun d!1676110 () Bool)

(assert (= bs!1208167 (and d!1676110 d!1676076)))

(declare-fun lambda!259225 () Int)

(assert (=> bs!1208167 (= lambda!259225 lambda!259198)))

(declare-fun bs!1208169 () Bool)

(assert (= bs!1208169 (and d!1676110 d!1676080)))

(assert (=> bs!1208169 (= lambda!259225 lambda!259201)))

(declare-fun bs!1208170 () Bool)

(assert (= bs!1208170 (and d!1676110 d!1676084)))

(assert (=> bs!1208170 (= lambda!259225 lambda!259204)))

(declare-fun bs!1208171 () Bool)

(assert (= bs!1208171 (and d!1676110 d!1676086)))

(assert (=> bs!1208171 (= lambda!259225 lambda!259207)))

(assert (=> d!1676110 (= (inv!79999 setElem!32650) (forall!14195 (exprs!4585 setElem!32650) lambda!259225))))

(declare-fun bs!1208172 () Bool)

(assert (= bs!1208172 d!1676110))

(declare-fun m!6243972 () Bool)

(assert (=> bs!1208172 m!6243972))

(assert (=> setNonEmpty!32650 d!1676110))

(declare-fun b!5184961 () Bool)

(declare-fun e!3230170 () Bool)

(assert (=> b!5184961 (= e!3230170 (matchR!6886 (derivativeStep!4009 r!7292 (head!11094 s!2326)) (tail!10191 s!2326)))))

(declare-fun b!5184962 () Bool)

(declare-fun e!3230165 () Bool)

(declare-fun e!3230169 () Bool)

(assert (=> b!5184962 (= e!3230165 e!3230169)))

(declare-fun res!2202513 () Bool)

(assert (=> b!5184962 (=> res!2202513 e!3230169)))

(declare-fun call!364332 () Bool)

(assert (=> b!5184962 (= res!2202513 call!364332)))

(declare-fun b!5184963 () Bool)

(declare-fun res!2202517 () Bool)

(declare-fun e!3230171 () Bool)

(assert (=> b!5184963 (=> res!2202517 e!3230171)))

(assert (=> b!5184963 (= res!2202517 (not ((_ is ElementMatch!14701) r!7292)))))

(declare-fun e!3230166 () Bool)

(assert (=> b!5184963 (= e!3230166 e!3230171)))

(declare-fun b!5184964 () Bool)

(declare-fun e!3230168 () Bool)

(declare-fun lt!2136361 () Bool)

(assert (=> b!5184964 (= e!3230168 (= lt!2136361 call!364332))))

(declare-fun d!1676114 () Bool)

(assert (=> d!1676114 e!3230168))

(declare-fun c!893565 () Bool)

(assert (=> d!1676114 (= c!893565 ((_ is EmptyExpr!14701) r!7292))))

(assert (=> d!1676114 (= lt!2136361 e!3230170)))

(declare-fun c!893566 () Bool)

(assert (=> d!1676114 (= c!893566 (isEmpty!32260 s!2326))))

(assert (=> d!1676114 (validRegex!6437 r!7292)))

(assert (=> d!1676114 (= (matchR!6886 r!7292 s!2326) lt!2136361)))

(declare-fun b!5184965 () Bool)

(declare-fun res!2202516 () Bool)

(assert (=> b!5184965 (=> res!2202516 e!3230171)))

(declare-fun e!3230167 () Bool)

(assert (=> b!5184965 (= res!2202516 e!3230167)))

(declare-fun res!2202515 () Bool)

(assert (=> b!5184965 (=> (not res!2202515) (not e!3230167))))

(assert (=> b!5184965 (= res!2202515 lt!2136361)))

(declare-fun b!5184966 () Bool)

(assert (=> b!5184966 (= e!3230169 (not (= (head!11094 s!2326) (c!893486 r!7292))))))

(declare-fun b!5184967 () Bool)

(declare-fun res!2202514 () Bool)

(assert (=> b!5184967 (=> (not res!2202514) (not e!3230167))))

(assert (=> b!5184967 (= res!2202514 (isEmpty!32260 (tail!10191 s!2326)))))

(declare-fun b!5184968 () Bool)

(assert (=> b!5184968 (= e!3230170 (nullable!4903 r!7292))))

(declare-fun b!5184969 () Bool)

(assert (=> b!5184969 (= e!3230171 e!3230165)))

(declare-fun res!2202512 () Bool)

(assert (=> b!5184969 (=> (not res!2202512) (not e!3230165))))

(assert (=> b!5184969 (= res!2202512 (not lt!2136361))))

(declare-fun b!5184970 () Bool)

(assert (=> b!5184970 (= e!3230167 (= (head!11094 s!2326) (c!893486 r!7292)))))

(declare-fun b!5184971 () Bool)

(assert (=> b!5184971 (= e!3230168 e!3230166)))

(declare-fun c!893567 () Bool)

(assert (=> b!5184971 (= c!893567 ((_ is EmptyLang!14701) r!7292))))

(declare-fun b!5184972 () Bool)

(declare-fun res!2202511 () Bool)

(assert (=> b!5184972 (=> (not res!2202511) (not e!3230167))))

(assert (=> b!5184972 (= res!2202511 (not call!364332))))

(declare-fun b!5184973 () Bool)

(assert (=> b!5184973 (= e!3230166 (not lt!2136361))))

(declare-fun b!5184974 () Bool)

(declare-fun res!2202510 () Bool)

(assert (=> b!5184974 (=> res!2202510 e!3230169)))

(assert (=> b!5184974 (= res!2202510 (not (isEmpty!32260 (tail!10191 s!2326))))))

(declare-fun bm!364327 () Bool)

(assert (=> bm!364327 (= call!364332 (isEmpty!32260 s!2326))))

(assert (= (and d!1676114 c!893566) b!5184968))

(assert (= (and d!1676114 (not c!893566)) b!5184961))

(assert (= (and d!1676114 c!893565) b!5184964))

(assert (= (and d!1676114 (not c!893565)) b!5184971))

(assert (= (and b!5184971 c!893567) b!5184973))

(assert (= (and b!5184971 (not c!893567)) b!5184963))

(assert (= (and b!5184963 (not res!2202517)) b!5184965))

(assert (= (and b!5184965 res!2202515) b!5184972))

(assert (= (and b!5184972 res!2202511) b!5184967))

(assert (= (and b!5184967 res!2202514) b!5184970))

(assert (= (and b!5184965 (not res!2202516)) b!5184969))

(assert (= (and b!5184969 res!2202512) b!5184962))

(assert (= (and b!5184962 (not res!2202513)) b!5184974))

(assert (= (and b!5184974 (not res!2202510)) b!5184966))

(assert (= (or b!5184964 b!5184962 b!5184972) bm!364327))

(declare-fun m!6243974 () Bool)

(assert (=> b!5184968 m!6243974))

(assert (=> b!5184967 m!6243914))

(assert (=> b!5184967 m!6243914))

(assert (=> b!5184967 m!6243916))

(assert (=> bm!364327 m!6243900))

(assert (=> b!5184961 m!6243918))

(assert (=> b!5184961 m!6243918))

(declare-fun m!6243976 () Bool)

(assert (=> b!5184961 m!6243976))

(assert (=> b!5184961 m!6243914))

(assert (=> b!5184961 m!6243976))

(assert (=> b!5184961 m!6243914))

(declare-fun m!6243978 () Bool)

(assert (=> b!5184961 m!6243978))

(assert (=> b!5184966 m!6243918))

(assert (=> d!1676114 m!6243900))

(assert (=> d!1676114 m!6243812))

(assert (=> b!5184970 m!6243918))

(assert (=> b!5184974 m!6243914))

(assert (=> b!5184974 m!6243914))

(assert (=> b!5184974 m!6243916))

(assert (=> b!5184692 d!1676114))

(declare-fun bs!1208173 () Bool)

(declare-fun b!5184984 () Bool)

(assert (= bs!1208173 (and b!5184984 b!5184816)))

(declare-fun lambda!259226 () Int)

(assert (=> bs!1208173 (= (and (= (reg!15030 r!7292) (reg!15030 (regTwo!29915 r!7292))) (= r!7292 (regTwo!29915 r!7292))) (= lambda!259226 lambda!259212))))

(declare-fun bs!1208174 () Bool)

(assert (= bs!1208174 (and b!5184984 b!5184809)))

(assert (=> bs!1208174 (not (= lambda!259226 lambda!259213))))

(declare-fun bs!1208175 () Bool)

(assert (= bs!1208175 (and b!5184984 b!5184920)))

(assert (=> bs!1208175 (= (and (= (reg!15030 r!7292) (reg!15030 (regOne!29915 r!7292))) (= r!7292 (regOne!29915 r!7292))) (= lambda!259226 lambda!259219))))

(declare-fun bs!1208176 () Bool)

(assert (= bs!1208176 (and b!5184984 b!5184913)))

(assert (=> bs!1208176 (not (= lambda!259226 lambda!259220))))

(assert (=> b!5184984 true))

(assert (=> b!5184984 true))

(declare-fun bs!1208177 () Bool)

(declare-fun b!5184977 () Bool)

(assert (= bs!1208177 (and b!5184977 b!5184984)))

(declare-fun lambda!259227 () Int)

(assert (=> bs!1208177 (not (= lambda!259227 lambda!259226))))

(declare-fun bs!1208178 () Bool)

(assert (= bs!1208178 (and b!5184977 b!5184913)))

(assert (=> bs!1208178 (= (and (= (regOne!29914 r!7292) (regOne!29914 (regOne!29915 r!7292))) (= (regTwo!29914 r!7292) (regTwo!29914 (regOne!29915 r!7292)))) (= lambda!259227 lambda!259220))))

(declare-fun bs!1208179 () Bool)

(assert (= bs!1208179 (and b!5184977 b!5184920)))

(assert (=> bs!1208179 (not (= lambda!259227 lambda!259219))))

(declare-fun bs!1208180 () Bool)

(assert (= bs!1208180 (and b!5184977 b!5184816)))

(assert (=> bs!1208180 (not (= lambda!259227 lambda!259212))))

(declare-fun bs!1208181 () Bool)

(assert (= bs!1208181 (and b!5184977 b!5184809)))

(assert (=> bs!1208181 (= (and (= (regOne!29914 r!7292) (regOne!29914 (regTwo!29915 r!7292))) (= (regTwo!29914 r!7292) (regTwo!29914 (regTwo!29915 r!7292)))) (= lambda!259227 lambda!259213))))

(assert (=> b!5184977 true))

(assert (=> b!5184977 true))

(declare-fun b!5184975 () Bool)

(declare-fun e!3230177 () Bool)

(declare-fun e!3230173 () Bool)

(assert (=> b!5184975 (= e!3230177 e!3230173)))

(declare-fun res!2202518 () Bool)

(assert (=> b!5184975 (= res!2202518 (matchRSpec!1804 (regOne!29915 r!7292) s!2326))))

(assert (=> b!5184975 (=> res!2202518 e!3230173)))

(declare-fun b!5184976 () Bool)

(assert (=> b!5184976 (= e!3230173 (matchRSpec!1804 (regTwo!29915 r!7292) s!2326))))

(declare-fun c!893569 () Bool)

(declare-fun bm!364328 () Bool)

(declare-fun call!364334 () Bool)

(assert (=> bm!364328 (= call!364334 (Exists!1903 (ite c!893569 lambda!259226 lambda!259227)))))

(declare-fun e!3230174 () Bool)

(assert (=> b!5184977 (= e!3230174 call!364334)))

(declare-fun b!5184978 () Bool)

(declare-fun e!3230175 () Bool)

(assert (=> b!5184978 (= e!3230175 (= s!2326 (Cons!60280 (c!893486 r!7292) Nil!60280)))))

(declare-fun d!1676116 () Bool)

(declare-fun c!893568 () Bool)

(assert (=> d!1676116 (= c!893568 ((_ is EmptyExpr!14701) r!7292))))

(declare-fun e!3230172 () Bool)

(assert (=> d!1676116 (= (matchRSpec!1804 r!7292 s!2326) e!3230172)))

(declare-fun b!5184979 () Bool)

(declare-fun c!893571 () Bool)

(assert (=> b!5184979 (= c!893571 ((_ is ElementMatch!14701) r!7292))))

(declare-fun e!3230178 () Bool)

(assert (=> b!5184979 (= e!3230178 e!3230175)))

(declare-fun b!5184980 () Bool)

(declare-fun call!364333 () Bool)

(assert (=> b!5184980 (= e!3230172 call!364333)))

(declare-fun b!5184981 () Bool)

(declare-fun c!893570 () Bool)

(assert (=> b!5184981 (= c!893570 ((_ is Union!14701) r!7292))))

(assert (=> b!5184981 (= e!3230175 e!3230177)))

(declare-fun bm!364329 () Bool)

(assert (=> bm!364329 (= call!364333 (isEmpty!32260 s!2326))))

(declare-fun b!5184982 () Bool)

(assert (=> b!5184982 (= e!3230177 e!3230174)))

(assert (=> b!5184982 (= c!893569 ((_ is Star!14701) r!7292))))

(declare-fun b!5184983 () Bool)

(assert (=> b!5184983 (= e!3230172 e!3230178)))

(declare-fun res!2202520 () Bool)

(assert (=> b!5184983 (= res!2202520 (not ((_ is EmptyLang!14701) r!7292)))))

(assert (=> b!5184983 (=> (not res!2202520) (not e!3230178))))

(declare-fun e!3230176 () Bool)

(assert (=> b!5184984 (= e!3230176 call!364334)))

(declare-fun b!5184985 () Bool)

(declare-fun res!2202519 () Bool)

(assert (=> b!5184985 (=> res!2202519 e!3230176)))

(assert (=> b!5184985 (= res!2202519 call!364333)))

(assert (=> b!5184985 (= e!3230174 e!3230176)))

(assert (= (and d!1676116 c!893568) b!5184980))

(assert (= (and d!1676116 (not c!893568)) b!5184983))

(assert (= (and b!5184983 res!2202520) b!5184979))

(assert (= (and b!5184979 c!893571) b!5184978))

(assert (= (and b!5184979 (not c!893571)) b!5184981))

(assert (= (and b!5184981 c!893570) b!5184975))

(assert (= (and b!5184981 (not c!893570)) b!5184982))

(assert (= (and b!5184975 (not res!2202518)) b!5184976))

(assert (= (and b!5184982 c!893569) b!5184985))

(assert (= (and b!5184982 (not c!893569)) b!5184977))

(assert (= (and b!5184985 (not res!2202519)) b!5184984))

(assert (= (or b!5184984 b!5184977) bm!364328))

(assert (= (or b!5184980 b!5184985) bm!364329))

(assert (=> b!5184975 m!6243828))

(assert (=> b!5184976 m!6243822))

(declare-fun m!6243986 () Bool)

(assert (=> bm!364328 m!6243986))

(assert (=> bm!364329 m!6243900))

(assert (=> b!5184692 d!1676116))

(declare-fun d!1676120 () Bool)

(assert (=> d!1676120 (= (matchR!6886 r!7292 s!2326) (matchRSpec!1804 r!7292 s!2326))))

(declare-fun lt!2136365 () Unit!152236)

(assert (=> d!1676120 (= lt!2136365 (choose!38529 r!7292 s!2326))))

(assert (=> d!1676120 (validRegex!6437 r!7292)))

(assert (=> d!1676120 (= (mainMatchTheorem!1804 r!7292 s!2326) lt!2136365)))

(declare-fun bs!1208182 () Bool)

(assert (= bs!1208182 d!1676120))

(assert (=> bs!1208182 m!6243814))

(assert (=> bs!1208182 m!6243816))

(declare-fun m!6243988 () Bool)

(assert (=> bs!1208182 m!6243988))

(assert (=> bs!1208182 m!6243812))

(assert (=> b!5184692 d!1676120))

(declare-fun b!5184993 () Bool)

(declare-fun e!3230184 () Bool)

(declare-fun tp!1454648 () Bool)

(assert (=> b!5184993 (= e!3230184 (and tp_is_empty!38655 tp!1454648))))

(assert (=> b!5184700 (= tp!1454644 e!3230184)))

(assert (= (and b!5184700 ((_ is Cons!60280) (t!373557 s!2326))) b!5184993))

(declare-fun b!5185001 () Bool)

(declare-fun e!3230190 () Bool)

(declare-fun tp!1454653 () Bool)

(assert (=> b!5185001 (= e!3230190 tp!1454653)))

(declare-fun b!5185000 () Bool)

(declare-fun e!3230189 () Bool)

(declare-fun tp!1454654 () Bool)

(assert (=> b!5185000 (= e!3230189 (and (inv!79999 (h!66727 (t!373556 zl!343))) e!3230190 tp!1454654))))

(assert (=> b!5184690 (= tp!1454637 e!3230189)))

(assert (= b!5185000 b!5185001))

(assert (= (and b!5184690 ((_ is Cons!60279) (t!373556 zl!343))) b!5185000))

(declare-fun m!6243990 () Bool)

(assert (=> b!5185000 m!6243990))

(declare-fun b!5185015 () Bool)

(declare-fun e!3230193 () Bool)

(declare-fun tp!1454669 () Bool)

(declare-fun tp!1454665 () Bool)

(assert (=> b!5185015 (= e!3230193 (and tp!1454669 tp!1454665))))

(declare-fun b!5185014 () Bool)

(declare-fun tp!1454666 () Bool)

(assert (=> b!5185014 (= e!3230193 tp!1454666)))

(assert (=> b!5184703 (= tp!1454639 e!3230193)))

(declare-fun b!5185013 () Bool)

(declare-fun tp!1454667 () Bool)

(declare-fun tp!1454668 () Bool)

(assert (=> b!5185013 (= e!3230193 (and tp!1454667 tp!1454668))))

(declare-fun b!5185012 () Bool)

(assert (=> b!5185012 (= e!3230193 tp_is_empty!38655)))

(assert (= (and b!5184703 ((_ is ElementMatch!14701) (reg!15030 r!7292))) b!5185012))

(assert (= (and b!5184703 ((_ is Concat!23546) (reg!15030 r!7292))) b!5185013))

(assert (= (and b!5184703 ((_ is Star!14701) (reg!15030 r!7292))) b!5185014))

(assert (= (and b!5184703 ((_ is Union!14701) (reg!15030 r!7292))) b!5185015))

(declare-fun b!5185030 () Bool)

(declare-fun e!3230201 () Bool)

(declare-fun tp!1454674 () Bool)

(declare-fun tp!1454675 () Bool)

(assert (=> b!5185030 (= e!3230201 (and tp!1454674 tp!1454675))))

(assert (=> b!5184689 (= tp!1454645 e!3230201)))

(assert (= (and b!5184689 ((_ is Cons!60278) (exprs!4585 (h!66727 zl!343)))) b!5185030))

(declare-fun b!5185035 () Bool)

(declare-fun e!3230205 () Bool)

(declare-fun tp!1454676 () Bool)

(declare-fun tp!1454677 () Bool)

(assert (=> b!5185035 (= e!3230205 (and tp!1454676 tp!1454677))))

(assert (=> b!5184693 (= tp!1454643 e!3230205)))

(assert (= (and b!5184693 ((_ is Cons!60278) (exprs!4585 setElem!32650))) b!5185035))

(declare-fun b!5185045 () Bool)

(declare-fun e!3230210 () Bool)

(declare-fun tp!1454682 () Bool)

(declare-fun tp!1454678 () Bool)

(assert (=> b!5185045 (= e!3230210 (and tp!1454682 tp!1454678))))

(declare-fun b!5185044 () Bool)

(declare-fun tp!1454679 () Bool)

(assert (=> b!5185044 (= e!3230210 tp!1454679)))

(assert (=> b!5184696 (= tp!1454640 e!3230210)))

(declare-fun b!5185043 () Bool)

(declare-fun tp!1454680 () Bool)

(declare-fun tp!1454681 () Bool)

(assert (=> b!5185043 (= e!3230210 (and tp!1454680 tp!1454681))))

(declare-fun b!5185042 () Bool)

(assert (=> b!5185042 (= e!3230210 tp_is_empty!38655)))

(assert (= (and b!5184696 ((_ is ElementMatch!14701) (regOne!29914 r!7292))) b!5185042))

(assert (= (and b!5184696 ((_ is Concat!23546) (regOne!29914 r!7292))) b!5185043))

(assert (= (and b!5184696 ((_ is Star!14701) (regOne!29914 r!7292))) b!5185044))

(assert (= (and b!5184696 ((_ is Union!14701) (regOne!29914 r!7292))) b!5185045))

(declare-fun b!5185051 () Bool)

(declare-fun e!3230213 () Bool)

(declare-fun tp!1454687 () Bool)

(declare-fun tp!1454683 () Bool)

(assert (=> b!5185051 (= e!3230213 (and tp!1454687 tp!1454683))))

(declare-fun b!5185050 () Bool)

(declare-fun tp!1454684 () Bool)

(assert (=> b!5185050 (= e!3230213 tp!1454684)))

(assert (=> b!5184696 (= tp!1454641 e!3230213)))

(declare-fun b!5185049 () Bool)

(declare-fun tp!1454685 () Bool)

(declare-fun tp!1454686 () Bool)

(assert (=> b!5185049 (= e!3230213 (and tp!1454685 tp!1454686))))

(declare-fun b!5185048 () Bool)

(assert (=> b!5185048 (= e!3230213 tp_is_empty!38655)))

(assert (= (and b!5184696 ((_ is ElementMatch!14701) (regTwo!29914 r!7292))) b!5185048))

(assert (= (and b!5184696 ((_ is Concat!23546) (regTwo!29914 r!7292))) b!5185049))

(assert (= (and b!5184696 ((_ is Star!14701) (regTwo!29914 r!7292))) b!5185050))

(assert (= (and b!5184696 ((_ is Union!14701) (regTwo!29914 r!7292))) b!5185051))

(declare-fun b!5185055 () Bool)

(declare-fun e!3230214 () Bool)

(declare-fun tp!1454692 () Bool)

(declare-fun tp!1454688 () Bool)

(assert (=> b!5185055 (= e!3230214 (and tp!1454692 tp!1454688))))

(declare-fun b!5185054 () Bool)

(declare-fun tp!1454689 () Bool)

(assert (=> b!5185054 (= e!3230214 tp!1454689)))

(assert (=> b!5184701 (= tp!1454636 e!3230214)))

(declare-fun b!5185053 () Bool)

(declare-fun tp!1454690 () Bool)

(declare-fun tp!1454691 () Bool)

(assert (=> b!5185053 (= e!3230214 (and tp!1454690 tp!1454691))))

(declare-fun b!5185052 () Bool)

(assert (=> b!5185052 (= e!3230214 tp_is_empty!38655)))

(assert (= (and b!5184701 ((_ is ElementMatch!14701) (regOne!29915 r!7292))) b!5185052))

(assert (= (and b!5184701 ((_ is Concat!23546) (regOne!29915 r!7292))) b!5185053))

(assert (= (and b!5184701 ((_ is Star!14701) (regOne!29915 r!7292))) b!5185054))

(assert (= (and b!5184701 ((_ is Union!14701) (regOne!29915 r!7292))) b!5185055))

(declare-fun b!5185059 () Bool)

(declare-fun e!3230215 () Bool)

(declare-fun tp!1454697 () Bool)

(declare-fun tp!1454693 () Bool)

(assert (=> b!5185059 (= e!3230215 (and tp!1454697 tp!1454693))))

(declare-fun b!5185058 () Bool)

(declare-fun tp!1454694 () Bool)

(assert (=> b!5185058 (= e!3230215 tp!1454694)))

(assert (=> b!5184701 (= tp!1454638 e!3230215)))

(declare-fun b!5185057 () Bool)

(declare-fun tp!1454695 () Bool)

(declare-fun tp!1454696 () Bool)

(assert (=> b!5185057 (= e!3230215 (and tp!1454695 tp!1454696))))

(declare-fun b!5185056 () Bool)

(assert (=> b!5185056 (= e!3230215 tp_is_empty!38655)))

(assert (= (and b!5184701 ((_ is ElementMatch!14701) (regTwo!29915 r!7292))) b!5185056))

(assert (= (and b!5184701 ((_ is Concat!23546) (regTwo!29915 r!7292))) b!5185057))

(assert (= (and b!5184701 ((_ is Star!14701) (regTwo!29915 r!7292))) b!5185058))

(assert (= (and b!5184701 ((_ is Union!14701) (regTwo!29915 r!7292))) b!5185059))

(declare-fun condSetEmpty!32653 () Bool)

(assert (=> setNonEmpty!32650 (= condSetEmpty!32653 (= setRest!32650 ((as const (Array Context!8170 Bool)) false)))))

(declare-fun setRes!32653 () Bool)

(assert (=> setNonEmpty!32650 (= tp!1454642 setRes!32653)))

(declare-fun setIsEmpty!32653 () Bool)

(assert (=> setIsEmpty!32653 setRes!32653))

(declare-fun setElem!32653 () Context!8170)

(declare-fun setNonEmpty!32653 () Bool)

(declare-fun e!3230220 () Bool)

(declare-fun tp!1454703 () Bool)

(assert (=> setNonEmpty!32653 (= setRes!32653 (and tp!1454703 (inv!79999 setElem!32653) e!3230220))))

(declare-fun setRest!32653 () (InoxSet Context!8170))

(assert (=> setNonEmpty!32653 (= setRest!32650 ((_ map or) (store ((as const (Array Context!8170 Bool)) false) setElem!32653 true) setRest!32653))))

(declare-fun b!5185070 () Bool)

(declare-fun tp!1454702 () Bool)

(assert (=> b!5185070 (= e!3230220 tp!1454702)))

(assert (= (and setNonEmpty!32650 condSetEmpty!32653) setIsEmpty!32653))

(assert (= (and setNonEmpty!32650 (not condSetEmpty!32653)) setNonEmpty!32653))

(assert (= setNonEmpty!32653 b!5185070))

(declare-fun m!6243992 () Bool)

(assert (=> setNonEmpty!32653 m!6243992))

(check-sat (not b!5184967) (not b!5184966) (not d!1676094) (not bm!364326) (not b!5185058) (not bm!364324) (not d!1676080) (not b!5184759) tp_is_empty!38655 (not b!5184761) (not bm!364308) (not d!1676106) (not b!5184731) (not b!5185059) (not b!5185015) (not b!5184974) (not b!5184894) (not d!1676084) (not b!5185035) (not b!5185030) (not b!5184941) (not b!5184911) (not bm!364327) (not d!1676098) (not b!5184735) (not bm!364317) (not b!5184727) (not b!5185053) (not b!5184887) (not d!1676102) (not b!5185050) (not b!5185043) (not b!5184760) (not b!5184961) (not b!5184945) (not b!5184766) (not setNonEmpty!32653) (not bm!364307) (not d!1676076) (not b!5184767) (not bm!364315) (not b!5184939) (not d!1676114) (not b!5184768) (not b!5184968) (not b!5184893) (not d!1676110) (not b!5184912) (not b!5184892) (not b!5184733) (not b!5184938) (not b!5185001) (not b!5184738) (not b!5184993) (not b!5184896) (not d!1676086) (not b!5184976) (not b!5184807) (not b!5184729) (not b!5185049) (not b!5184932) (not b!5184937) (not b!5184900) (not b!5185044) (not b!5184957) (not d!1676082) (not b!5185051) (not bm!364329) (not b!5184728) (not b!5185055) (not b!5185014) (not b!5185000) (not b!5184975) (not d!1676120) (not bm!364322) (not b!5184847) (not b!5185070) (not b!5184773) (not b!5184808) (not b!5185013) (not b!5185054) (not b!5185045) (not bm!364321) (not bm!364320) (not b!5184765) (not d!1676092) (not bm!364328) (not b!5184970) (not bm!364323) (not b!5184730) (not b!5185057))
(check-sat)

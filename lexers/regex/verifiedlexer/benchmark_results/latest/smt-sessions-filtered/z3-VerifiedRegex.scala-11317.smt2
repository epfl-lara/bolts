; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597000 () Bool)

(assert start!597000)

(declare-fun b!5828528 () Bool)

(declare-fun e!3576233 () Bool)

(declare-fun e!3576229 () Bool)

(assert (=> b!5828528 (= e!3576233 (not e!3576229))))

(declare-fun res!2456731 () Bool)

(assert (=> b!5828528 (=> res!2456731 e!3576229)))

(declare-datatypes ((C!32032 0))(
  ( (C!32033 (val!25718 Int)) )
))
(declare-datatypes ((Regex!15881 0))(
  ( (ElementMatch!15881 (c!1032731 C!32032)) (Concat!24726 (regOne!32274 Regex!15881) (regTwo!32274 Regex!15881)) (EmptyExpr!15881) (Star!15881 (reg!16210 Regex!15881)) (EmptyLang!15881) (Union!15881 (regOne!32275 Regex!15881) (regTwo!32275 Regex!15881)) )
))
(declare-datatypes ((List!63942 0))(
  ( (Nil!63818) (Cons!63818 (h!70266 Regex!15881) (t!377297 List!63942)) )
))
(declare-datatypes ((Context!10530 0))(
  ( (Context!10531 (exprs!5765 List!63942)) )
))
(declare-datatypes ((List!63943 0))(
  ( (Nil!63819) (Cons!63819 (h!70267 Context!10530) (t!377298 List!63943)) )
))
(declare-fun zl!343 () List!63943)

(get-info :version)

(assert (=> b!5828528 (= res!2456731 (not ((_ is Cons!63819) zl!343)))))

(declare-fun r!7292 () Regex!15881)

(declare-datatypes ((List!63944 0))(
  ( (Nil!63820) (Cons!63820 (h!70268 C!32032) (t!377299 List!63944)) )
))
(declare-fun s!2326 () List!63944)

(declare-fun matchR!8064 (Regex!15881 List!63944) Bool)

(declare-fun matchRSpec!2982 (Regex!15881 List!63944) Bool)

(assert (=> b!5828528 (= (matchR!8064 r!7292 s!2326) (matchRSpec!2982 r!7292 s!2326))))

(declare-datatypes ((Unit!157033 0))(
  ( (Unit!157034) )
))
(declare-fun lt!2302723 () Unit!157033)

(declare-fun mainMatchTheorem!2982 (Regex!15881 List!63944) Unit!157033)

(assert (=> b!5828528 (= lt!2302723 (mainMatchTheorem!2982 r!7292 s!2326))))

(declare-fun b!5828529 () Bool)

(declare-fun res!2456728 () Bool)

(assert (=> b!5828529 (=> (not res!2456728) (not e!3576233))))

(declare-fun unfocusZipper!1623 (List!63943) Regex!15881)

(assert (=> b!5828529 (= res!2456728 (= r!7292 (unfocusZipper!1623 zl!343)))))

(declare-fun b!5828530 () Bool)

(declare-fun res!2456730 () Bool)

(assert (=> b!5828530 (=> res!2456730 e!3576229)))

(declare-fun generalisedConcat!1478 (List!63942) Regex!15881)

(assert (=> b!5828530 (= res!2456730 (not (= r!7292 (generalisedConcat!1478 (exprs!5765 (h!70267 zl!343))))))))

(declare-fun b!5828531 () Bool)

(declare-fun e!3576234 () Bool)

(declare-fun tp_is_empty!41015 () Bool)

(assert (=> b!5828531 (= e!3576234 tp_is_empty!41015)))

(declare-fun b!5828532 () Bool)

(declare-fun e!3576228 () Bool)

(assert (=> b!5828532 (= e!3576229 e!3576228)))

(declare-fun res!2456725 () Bool)

(assert (=> b!5828532 (=> res!2456725 e!3576228)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10530))

(declare-fun lt!2302724 () List!63942)

(assert (=> b!5828532 (= res!2456725 (not (= z!1189 (store ((as const (Array Context!10530 Bool)) false) (Context!10531 lt!2302724) true))))))

(assert (=> b!5828532 (= lt!2302724 (Cons!63818 r!7292 Nil!63818))))

(declare-fun b!5828533 () Bool)

(declare-fun e!3576235 () Bool)

(declare-fun tp!1610169 () Bool)

(assert (=> b!5828533 (= e!3576235 (and tp_is_empty!41015 tp!1610169))))

(declare-fun b!5828535 () Bool)

(declare-fun tp!1610167 () Bool)

(declare-fun tp!1610172 () Bool)

(assert (=> b!5828535 (= e!3576234 (and tp!1610167 tp!1610172))))

(declare-fun b!5828536 () Bool)

(declare-fun tp!1610175 () Bool)

(assert (=> b!5828536 (= e!3576234 tp!1610175)))

(declare-fun e!3576231 () Bool)

(declare-fun tp!1610173 () Bool)

(declare-fun b!5828537 () Bool)

(declare-fun e!3576232 () Bool)

(declare-fun inv!82949 (Context!10530) Bool)

(assert (=> b!5828537 (= e!3576231 (and (inv!82949 (h!70267 zl!343)) e!3576232 tp!1610173))))

(declare-fun b!5828538 () Bool)

(declare-fun res!2456729 () Bool)

(assert (=> b!5828538 (=> (not res!2456729) (not e!3576233))))

(declare-fun toList!9665 ((InoxSet Context!10530)) List!63943)

(assert (=> b!5828538 (= res!2456729 (= (toList!9665 z!1189) zl!343))))

(declare-fun b!5828539 () Bool)

(declare-fun head!12323 (List!63942) Regex!15881)

(assert (=> b!5828539 (= e!3576228 (= (head!12323 lt!2302724) EmptyLang!15881))))

(declare-fun setElem!39406 () Context!10530)

(declare-fun e!3576230 () Bool)

(declare-fun setRes!39406 () Bool)

(declare-fun setNonEmpty!39406 () Bool)

(declare-fun tp!1610171 () Bool)

(assert (=> setNonEmpty!39406 (= setRes!39406 (and tp!1610171 (inv!82949 setElem!39406) e!3576230))))

(declare-fun setRest!39406 () (InoxSet Context!10530))

(assert (=> setNonEmpty!39406 (= z!1189 ((_ map or) (store ((as const (Array Context!10530 Bool)) false) setElem!39406 true) setRest!39406))))

(declare-fun b!5828540 () Bool)

(declare-fun res!2456723 () Bool)

(assert (=> b!5828540 (=> res!2456723 e!3576228)))

(declare-fun isEmpty!35685 (List!63942) Bool)

(assert (=> b!5828540 (= res!2456723 (isEmpty!35685 lt!2302724))))

(declare-fun b!5828541 () Bool)

(declare-fun res!2456726 () Bool)

(assert (=> b!5828541 (=> res!2456726 e!3576229)))

(assert (=> b!5828541 (= res!2456726 (or ((_ is EmptyExpr!15881) r!7292) (not ((_ is EmptyLang!15881) r!7292))))))

(declare-fun b!5828534 () Bool)

(declare-fun tp!1610174 () Bool)

(assert (=> b!5828534 (= e!3576230 tp!1610174)))

(declare-fun res!2456732 () Bool)

(assert (=> start!597000 (=> (not res!2456732) (not e!3576233))))

(declare-fun validRegex!7617 (Regex!15881) Bool)

(assert (=> start!597000 (= res!2456732 (validRegex!7617 r!7292))))

(assert (=> start!597000 e!3576233))

(assert (=> start!597000 e!3576234))

(declare-fun condSetEmpty!39406 () Bool)

(assert (=> start!597000 (= condSetEmpty!39406 (= z!1189 ((as const (Array Context!10530 Bool)) false)))))

(assert (=> start!597000 setRes!39406))

(assert (=> start!597000 e!3576231))

(assert (=> start!597000 e!3576235))

(declare-fun b!5828542 () Bool)

(declare-fun tp!1610168 () Bool)

(assert (=> b!5828542 (= e!3576232 tp!1610168)))

(declare-fun setIsEmpty!39406 () Bool)

(assert (=> setIsEmpty!39406 setRes!39406))

(declare-fun b!5828543 () Bool)

(declare-fun res!2456727 () Bool)

(assert (=> b!5828543 (=> res!2456727 e!3576229)))

(declare-fun generalisedUnion!1725 (List!63942) Regex!15881)

(declare-fun unfocusZipperList!1302 (List!63943) List!63942)

(assert (=> b!5828543 (= res!2456727 (not (= r!7292 (generalisedUnion!1725 (unfocusZipperList!1302 zl!343)))))))

(declare-fun b!5828544 () Bool)

(declare-fun res!2456722 () Bool)

(assert (=> b!5828544 (=> res!2456722 e!3576229)))

(declare-fun isEmpty!35686 (List!63943) Bool)

(assert (=> b!5828544 (= res!2456722 (not (isEmpty!35686 (t!377298 zl!343))))))

(declare-fun b!5828545 () Bool)

(declare-fun res!2456724 () Bool)

(assert (=> b!5828545 (=> res!2456724 e!3576229)))

(assert (=> b!5828545 (= res!2456724 (not ((_ is Cons!63818) (exprs!5765 (h!70267 zl!343)))))))

(declare-fun b!5828546 () Bool)

(declare-fun tp!1610176 () Bool)

(declare-fun tp!1610170 () Bool)

(assert (=> b!5828546 (= e!3576234 (and tp!1610176 tp!1610170))))

(assert (= (and start!597000 res!2456732) b!5828538))

(assert (= (and b!5828538 res!2456729) b!5828529))

(assert (= (and b!5828529 res!2456728) b!5828528))

(assert (= (and b!5828528 (not res!2456731)) b!5828544))

(assert (= (and b!5828544 (not res!2456722)) b!5828530))

(assert (= (and b!5828530 (not res!2456730)) b!5828545))

(assert (= (and b!5828545 (not res!2456724)) b!5828543))

(assert (= (and b!5828543 (not res!2456727)) b!5828541))

(assert (= (and b!5828541 (not res!2456726)) b!5828532))

(assert (= (and b!5828532 (not res!2456725)) b!5828540))

(assert (= (and b!5828540 (not res!2456723)) b!5828539))

(assert (= (and start!597000 ((_ is ElementMatch!15881) r!7292)) b!5828531))

(assert (= (and start!597000 ((_ is Concat!24726) r!7292)) b!5828546))

(assert (= (and start!597000 ((_ is Star!15881) r!7292)) b!5828536))

(assert (= (and start!597000 ((_ is Union!15881) r!7292)) b!5828535))

(assert (= (and start!597000 condSetEmpty!39406) setIsEmpty!39406))

(assert (= (and start!597000 (not condSetEmpty!39406)) setNonEmpty!39406))

(assert (= setNonEmpty!39406 b!5828534))

(assert (= b!5828537 b!5828542))

(assert (= (and start!597000 ((_ is Cons!63819) zl!343)) b!5828537))

(assert (= (and start!597000 ((_ is Cons!63820) s!2326)) b!5828533))

(declare-fun m!6759510 () Bool)

(assert (=> b!5828544 m!6759510))

(declare-fun m!6759512 () Bool)

(assert (=> b!5828538 m!6759512))

(declare-fun m!6759514 () Bool)

(assert (=> b!5828543 m!6759514))

(assert (=> b!5828543 m!6759514))

(declare-fun m!6759516 () Bool)

(assert (=> b!5828543 m!6759516))

(declare-fun m!6759518 () Bool)

(assert (=> start!597000 m!6759518))

(declare-fun m!6759520 () Bool)

(assert (=> b!5828539 m!6759520))

(declare-fun m!6759522 () Bool)

(assert (=> b!5828540 m!6759522))

(declare-fun m!6759524 () Bool)

(assert (=> b!5828532 m!6759524))

(declare-fun m!6759526 () Bool)

(assert (=> setNonEmpty!39406 m!6759526))

(declare-fun m!6759528 () Bool)

(assert (=> b!5828528 m!6759528))

(declare-fun m!6759530 () Bool)

(assert (=> b!5828528 m!6759530))

(declare-fun m!6759532 () Bool)

(assert (=> b!5828528 m!6759532))

(declare-fun m!6759534 () Bool)

(assert (=> b!5828530 m!6759534))

(declare-fun m!6759536 () Bool)

(assert (=> b!5828529 m!6759536))

(declare-fun m!6759538 () Bool)

(assert (=> b!5828537 m!6759538))

(check-sat (not b!5828544) (not b!5828539) (not b!5828535) (not b!5828542) (not b!5828536) (not start!597000) (not b!5828540) (not b!5828530) tp_is_empty!41015 (not b!5828528) (not setNonEmpty!39406) (not b!5828534) (not b!5828546) (not b!5828533) (not b!5828537) (not b!5828538) (not b!5828543) (not b!5828529))
(check-sat)
(get-model)

(declare-fun d!1833204 () Bool)

(declare-fun lt!2302727 () Regex!15881)

(assert (=> d!1833204 (validRegex!7617 lt!2302727)))

(assert (=> d!1833204 (= lt!2302727 (generalisedUnion!1725 (unfocusZipperList!1302 zl!343)))))

(assert (=> d!1833204 (= (unfocusZipper!1623 zl!343) lt!2302727)))

(declare-fun bs!1374488 () Bool)

(assert (= bs!1374488 d!1833204))

(declare-fun m!6759540 () Bool)

(assert (=> bs!1374488 m!6759540))

(assert (=> bs!1374488 m!6759514))

(assert (=> bs!1374488 m!6759514))

(assert (=> bs!1374488 m!6759516))

(assert (=> b!5828529 d!1833204))

(declare-fun d!1833206 () Bool)

(declare-fun lambda!318905 () Int)

(declare-fun forall!14972 (List!63942 Int) Bool)

(assert (=> d!1833206 (= (inv!82949 setElem!39406) (forall!14972 (exprs!5765 setElem!39406) lambda!318905))))

(declare-fun bs!1374490 () Bool)

(assert (= bs!1374490 d!1833206))

(declare-fun m!6759566 () Bool)

(assert (=> bs!1374490 m!6759566))

(assert (=> setNonEmpty!39406 d!1833206))

(declare-fun d!1833214 () Bool)

(declare-fun e!3576276 () Bool)

(assert (=> d!1833214 e!3576276))

(declare-fun res!2456761 () Bool)

(assert (=> d!1833214 (=> (not res!2456761) (not e!3576276))))

(declare-fun lt!2302739 () List!63943)

(declare-fun noDuplicate!1750 (List!63943) Bool)

(assert (=> d!1833214 (= res!2456761 (noDuplicate!1750 lt!2302739))))

(declare-fun choose!44278 ((InoxSet Context!10530)) List!63943)

(assert (=> d!1833214 (= lt!2302739 (choose!44278 z!1189))))

(assert (=> d!1833214 (= (toList!9665 z!1189) lt!2302739)))

(declare-fun b!5828613 () Bool)

(declare-fun content!11715 (List!63943) (InoxSet Context!10530))

(assert (=> b!5828613 (= e!3576276 (= (content!11715 lt!2302739) z!1189))))

(assert (= (and d!1833214 res!2456761) b!5828613))

(declare-fun m!6759568 () Bool)

(assert (=> d!1833214 m!6759568))

(declare-fun m!6759570 () Bool)

(assert (=> d!1833214 m!6759570))

(declare-fun m!6759572 () Bool)

(assert (=> b!5828613 m!6759572))

(assert (=> b!5828538 d!1833214))

(declare-fun b!5828652 () Bool)

(declare-fun e!3576304 () Bool)

(declare-fun e!3576300 () Bool)

(assert (=> b!5828652 (= e!3576304 e!3576300)))

(declare-fun res!2456779 () Bool)

(declare-fun nullable!5882 (Regex!15881) Bool)

(assert (=> b!5828652 (= res!2456779 (not (nullable!5882 (reg!16210 r!7292))))))

(assert (=> b!5828652 (=> (not res!2456779) (not e!3576300))))

(declare-fun c!1032763 () Bool)

(declare-fun bm!455195 () Bool)

(declare-fun c!1032762 () Bool)

(declare-fun call!455202 () Bool)

(assert (=> bm!455195 (= call!455202 (validRegex!7617 (ite c!1032762 (reg!16210 r!7292) (ite c!1032763 (regTwo!32275 r!7292) (regTwo!32274 r!7292)))))))

(declare-fun b!5828653 () Bool)

(declare-fun e!3576305 () Bool)

(declare-fun call!455201 () Bool)

(assert (=> b!5828653 (= e!3576305 call!455201)))

(declare-fun b!5828654 () Bool)

(assert (=> b!5828654 (= e!3576300 call!455202)))

(declare-fun bm!455196 () Bool)

(declare-fun call!455200 () Bool)

(assert (=> bm!455196 (= call!455200 (validRegex!7617 (ite c!1032763 (regOne!32275 r!7292) (regOne!32274 r!7292))))))

(declare-fun d!1833216 () Bool)

(declare-fun res!2456782 () Bool)

(declare-fun e!3576301 () Bool)

(assert (=> d!1833216 (=> res!2456782 e!3576301)))

(assert (=> d!1833216 (= res!2456782 ((_ is ElementMatch!15881) r!7292))))

(assert (=> d!1833216 (= (validRegex!7617 r!7292) e!3576301)))

(declare-fun b!5828655 () Bool)

(declare-fun e!3576302 () Bool)

(declare-fun e!3576303 () Bool)

(assert (=> b!5828655 (= e!3576302 e!3576303)))

(declare-fun res!2456778 () Bool)

(assert (=> b!5828655 (=> (not res!2456778) (not e!3576303))))

(assert (=> b!5828655 (= res!2456778 call!455200)))

(declare-fun b!5828656 () Bool)

(declare-fun res!2456780 () Bool)

(assert (=> b!5828656 (=> (not res!2456780) (not e!3576305))))

(assert (=> b!5828656 (= res!2456780 call!455200)))

(declare-fun e!3576299 () Bool)

(assert (=> b!5828656 (= e!3576299 e!3576305)))

(declare-fun b!5828657 () Bool)

(assert (=> b!5828657 (= e!3576303 call!455201)))

(declare-fun b!5828658 () Bool)

(assert (=> b!5828658 (= e!3576301 e!3576304)))

(assert (=> b!5828658 (= c!1032762 ((_ is Star!15881) r!7292))))

(declare-fun b!5828659 () Bool)

(assert (=> b!5828659 (= e!3576304 e!3576299)))

(assert (=> b!5828659 (= c!1032763 ((_ is Union!15881) r!7292))))

(declare-fun bm!455197 () Bool)

(assert (=> bm!455197 (= call!455201 call!455202)))

(declare-fun b!5828663 () Bool)

(declare-fun res!2456781 () Bool)

(assert (=> b!5828663 (=> res!2456781 e!3576302)))

(assert (=> b!5828663 (= res!2456781 (not ((_ is Concat!24726) r!7292)))))

(assert (=> b!5828663 (= e!3576299 e!3576302)))

(assert (= (and d!1833216 (not res!2456782)) b!5828658))

(assert (= (and b!5828658 c!1032762) b!5828652))

(assert (= (and b!5828658 (not c!1032762)) b!5828659))

(assert (= (and b!5828652 res!2456779) b!5828654))

(assert (= (and b!5828659 c!1032763) b!5828656))

(assert (= (and b!5828659 (not c!1032763)) b!5828663))

(assert (= (and b!5828656 res!2456780) b!5828653))

(assert (= (and b!5828663 (not res!2456781)) b!5828655))

(assert (= (and b!5828655 res!2456778) b!5828657))

(assert (= (or b!5828653 b!5828657) bm!455197))

(assert (= (or b!5828656 b!5828655) bm!455196))

(assert (= (or b!5828654 bm!455197) bm!455195))

(declare-fun m!6759588 () Bool)

(assert (=> b!5828652 m!6759588))

(declare-fun m!6759590 () Bool)

(assert (=> bm!455195 m!6759590))

(declare-fun m!6759592 () Bool)

(assert (=> bm!455196 m!6759592))

(assert (=> start!597000 d!1833216))

(declare-fun d!1833220 () Bool)

(assert (=> d!1833220 (= (head!12323 lt!2302724) (h!70266 lt!2302724))))

(assert (=> b!5828539 d!1833220))

(declare-fun b!5828730 () Bool)

(declare-fun res!2456821 () Bool)

(declare-fun e!3576346 () Bool)

(assert (=> b!5828730 (=> res!2456821 e!3576346)))

(declare-fun isEmpty!35688 (List!63944) Bool)

(declare-fun tail!11409 (List!63944) List!63944)

(assert (=> b!5828730 (= res!2456821 (not (isEmpty!35688 (tail!11409 s!2326))))))

(declare-fun b!5828731 () Bool)

(declare-fun res!2456816 () Bool)

(declare-fun e!3576343 () Bool)

(assert (=> b!5828731 (=> (not res!2456816) (not e!3576343))))

(declare-fun call!455211 () Bool)

(assert (=> b!5828731 (= res!2456816 (not call!455211))))

(declare-fun b!5828732 () Bool)

(declare-fun e!3576342 () Bool)

(declare-fun e!3576344 () Bool)

(assert (=> b!5828732 (= e!3576342 e!3576344)))

(declare-fun res!2456820 () Bool)

(assert (=> b!5828732 (=> (not res!2456820) (not e!3576344))))

(declare-fun lt!2302742 () Bool)

(assert (=> b!5828732 (= res!2456820 (not lt!2302742))))

(declare-fun b!5828733 () Bool)

(declare-fun res!2456822 () Bool)

(assert (=> b!5828733 (=> res!2456822 e!3576342)))

(assert (=> b!5828733 (= res!2456822 e!3576343)))

(declare-fun res!2456817 () Bool)

(assert (=> b!5828733 (=> (not res!2456817) (not e!3576343))))

(assert (=> b!5828733 (= res!2456817 lt!2302742)))

(declare-fun b!5828734 () Bool)

(declare-fun e!3576341 () Bool)

(declare-fun e!3576347 () Bool)

(assert (=> b!5828734 (= e!3576341 e!3576347)))

(declare-fun c!1032780 () Bool)

(assert (=> b!5828734 (= c!1032780 ((_ is EmptyLang!15881) r!7292))))

(declare-fun b!5828735 () Bool)

(assert (=> b!5828735 (= e!3576341 (= lt!2302742 call!455211))))

(declare-fun d!1833222 () Bool)

(assert (=> d!1833222 e!3576341))

(declare-fun c!1032782 () Bool)

(assert (=> d!1833222 (= c!1032782 ((_ is EmptyExpr!15881) r!7292))))

(declare-fun e!3576345 () Bool)

(assert (=> d!1833222 (= lt!2302742 e!3576345)))

(declare-fun c!1032781 () Bool)

(assert (=> d!1833222 (= c!1032781 (isEmpty!35688 s!2326))))

(assert (=> d!1833222 (validRegex!7617 r!7292)))

(assert (=> d!1833222 (= (matchR!8064 r!7292 s!2326) lt!2302742)))

(declare-fun b!5828736 () Bool)

(declare-fun head!12325 (List!63944) C!32032)

(assert (=> b!5828736 (= e!3576346 (not (= (head!12325 s!2326) (c!1032731 r!7292))))))

(declare-fun b!5828737 () Bool)

(declare-fun res!2456823 () Bool)

(assert (=> b!5828737 (=> (not res!2456823) (not e!3576343))))

(assert (=> b!5828737 (= res!2456823 (isEmpty!35688 (tail!11409 s!2326)))))

(declare-fun b!5828738 () Bool)

(assert (=> b!5828738 (= e!3576345 (nullable!5882 r!7292))))

(declare-fun b!5828739 () Bool)

(assert (=> b!5828739 (= e!3576344 e!3576346)))

(declare-fun res!2456819 () Bool)

(assert (=> b!5828739 (=> res!2456819 e!3576346)))

(assert (=> b!5828739 (= res!2456819 call!455211)))

(declare-fun b!5828740 () Bool)

(declare-fun derivativeStep!4623 (Regex!15881 C!32032) Regex!15881)

(assert (=> b!5828740 (= e!3576345 (matchR!8064 (derivativeStep!4623 r!7292 (head!12325 s!2326)) (tail!11409 s!2326)))))

(declare-fun b!5828741 () Bool)

(declare-fun res!2456818 () Bool)

(assert (=> b!5828741 (=> res!2456818 e!3576342)))

(assert (=> b!5828741 (= res!2456818 (not ((_ is ElementMatch!15881) r!7292)))))

(assert (=> b!5828741 (= e!3576347 e!3576342)))

(declare-fun bm!455206 () Bool)

(assert (=> bm!455206 (= call!455211 (isEmpty!35688 s!2326))))

(declare-fun b!5828742 () Bool)

(assert (=> b!5828742 (= e!3576347 (not lt!2302742))))

(declare-fun b!5828743 () Bool)

(assert (=> b!5828743 (= e!3576343 (= (head!12325 s!2326) (c!1032731 r!7292)))))

(assert (= (and d!1833222 c!1032781) b!5828738))

(assert (= (and d!1833222 (not c!1032781)) b!5828740))

(assert (= (and d!1833222 c!1032782) b!5828735))

(assert (= (and d!1833222 (not c!1032782)) b!5828734))

(assert (= (and b!5828734 c!1032780) b!5828742))

(assert (= (and b!5828734 (not c!1032780)) b!5828741))

(assert (= (and b!5828741 (not res!2456818)) b!5828733))

(assert (= (and b!5828733 res!2456817) b!5828731))

(assert (= (and b!5828731 res!2456816) b!5828737))

(assert (= (and b!5828737 res!2456823) b!5828743))

(assert (= (and b!5828733 (not res!2456822)) b!5828732))

(assert (= (and b!5828732 res!2456820) b!5828739))

(assert (= (and b!5828739 (not res!2456819)) b!5828730))

(assert (= (and b!5828730 (not res!2456821)) b!5828736))

(assert (= (or b!5828735 b!5828731 b!5828739) bm!455206))

(declare-fun m!6759600 () Bool)

(assert (=> b!5828737 m!6759600))

(assert (=> b!5828737 m!6759600))

(declare-fun m!6759602 () Bool)

(assert (=> b!5828737 m!6759602))

(declare-fun m!6759604 () Bool)

(assert (=> bm!455206 m!6759604))

(declare-fun m!6759606 () Bool)

(assert (=> b!5828736 m!6759606))

(declare-fun m!6759608 () Bool)

(assert (=> b!5828738 m!6759608))

(assert (=> d!1833222 m!6759604))

(assert (=> d!1833222 m!6759518))

(assert (=> b!5828743 m!6759606))

(assert (=> b!5828730 m!6759600))

(assert (=> b!5828730 m!6759600))

(assert (=> b!5828730 m!6759602))

(assert (=> b!5828740 m!6759606))

(assert (=> b!5828740 m!6759606))

(declare-fun m!6759610 () Bool)

(assert (=> b!5828740 m!6759610))

(assert (=> b!5828740 m!6759600))

(assert (=> b!5828740 m!6759610))

(assert (=> b!5828740 m!6759600))

(declare-fun m!6759612 () Bool)

(assert (=> b!5828740 m!6759612))

(assert (=> b!5828528 d!1833222))

(declare-fun b!5828809 () Bool)

(assert (=> b!5828809 true))

(assert (=> b!5828809 true))

(declare-fun bs!1374500 () Bool)

(declare-fun b!5828812 () Bool)

(assert (= bs!1374500 (and b!5828812 b!5828809)))

(declare-fun lambda!318923 () Int)

(declare-fun lambda!318920 () Int)

(assert (=> bs!1374500 (not (= lambda!318923 lambda!318920))))

(assert (=> b!5828812 true))

(assert (=> b!5828812 true))

(declare-fun b!5828803 () Bool)

(declare-fun e!3576388 () Bool)

(declare-fun call!455226 () Bool)

(assert (=> b!5828803 (= e!3576388 call!455226)))

(declare-fun c!1032800 () Bool)

(declare-fun call!455225 () Bool)

(declare-fun bm!455220 () Bool)

(declare-fun Exists!2958 (Int) Bool)

(assert (=> bm!455220 (= call!455225 (Exists!2958 (ite c!1032800 lambda!318920 lambda!318923)))))

(declare-fun b!5828804 () Bool)

(declare-fun e!3576392 () Bool)

(declare-fun e!3576390 () Bool)

(assert (=> b!5828804 (= e!3576392 e!3576390)))

(assert (=> b!5828804 (= c!1032800 ((_ is Star!15881) r!7292))))

(declare-fun b!5828805 () Bool)

(declare-fun c!1032797 () Bool)

(assert (=> b!5828805 (= c!1032797 ((_ is ElementMatch!15881) r!7292))))

(declare-fun e!3576387 () Bool)

(declare-fun e!3576393 () Bool)

(assert (=> b!5828805 (= e!3576387 e!3576393)))

(declare-fun b!5828806 () Bool)

(declare-fun e!3576389 () Bool)

(assert (=> b!5828806 (= e!3576392 e!3576389)))

(declare-fun res!2456857 () Bool)

(assert (=> b!5828806 (= res!2456857 (matchRSpec!2982 (regOne!32275 r!7292) s!2326))))

(assert (=> b!5828806 (=> res!2456857 e!3576389)))

(declare-fun d!1833226 () Bool)

(declare-fun c!1032798 () Bool)

(assert (=> d!1833226 (= c!1032798 ((_ is EmptyExpr!15881) r!7292))))

(assert (=> d!1833226 (= (matchRSpec!2982 r!7292 s!2326) e!3576388)))

(declare-fun b!5828807 () Bool)

(declare-fun res!2456856 () Bool)

(declare-fun e!3576391 () Bool)

(assert (=> b!5828807 (=> res!2456856 e!3576391)))

(assert (=> b!5828807 (= res!2456856 call!455226)))

(assert (=> b!5828807 (= e!3576390 e!3576391)))

(declare-fun b!5828808 () Bool)

(assert (=> b!5828808 (= e!3576389 (matchRSpec!2982 (regTwo!32275 r!7292) s!2326))))

(declare-fun bm!455221 () Bool)

(assert (=> bm!455221 (= call!455226 (isEmpty!35688 s!2326))))

(assert (=> b!5828809 (= e!3576391 call!455225)))

(declare-fun b!5828810 () Bool)

(assert (=> b!5828810 (= e!3576393 (= s!2326 (Cons!63820 (c!1032731 r!7292) Nil!63820)))))

(declare-fun b!5828811 () Bool)

(assert (=> b!5828811 (= e!3576388 e!3576387)))

(declare-fun res!2456855 () Bool)

(assert (=> b!5828811 (= res!2456855 (not ((_ is EmptyLang!15881) r!7292)))))

(assert (=> b!5828811 (=> (not res!2456855) (not e!3576387))))

(assert (=> b!5828812 (= e!3576390 call!455225)))

(declare-fun b!5828813 () Bool)

(declare-fun c!1032799 () Bool)

(assert (=> b!5828813 (= c!1032799 ((_ is Union!15881) r!7292))))

(assert (=> b!5828813 (= e!3576393 e!3576392)))

(assert (= (and d!1833226 c!1032798) b!5828803))

(assert (= (and d!1833226 (not c!1032798)) b!5828811))

(assert (= (and b!5828811 res!2456855) b!5828805))

(assert (= (and b!5828805 c!1032797) b!5828810))

(assert (= (and b!5828805 (not c!1032797)) b!5828813))

(assert (= (and b!5828813 c!1032799) b!5828806))

(assert (= (and b!5828813 (not c!1032799)) b!5828804))

(assert (= (and b!5828806 (not res!2456857)) b!5828808))

(assert (= (and b!5828804 c!1032800) b!5828807))

(assert (= (and b!5828804 (not c!1032800)) b!5828812))

(assert (= (and b!5828807 (not res!2456856)) b!5828809))

(assert (= (or b!5828809 b!5828812) bm!455220))

(assert (= (or b!5828803 b!5828807) bm!455221))

(declare-fun m!6759626 () Bool)

(assert (=> bm!455220 m!6759626))

(declare-fun m!6759628 () Bool)

(assert (=> b!5828806 m!6759628))

(declare-fun m!6759630 () Bool)

(assert (=> b!5828808 m!6759630))

(assert (=> bm!455221 m!6759604))

(assert (=> b!5828528 d!1833226))

(declare-fun d!1833240 () Bool)

(assert (=> d!1833240 (= (matchR!8064 r!7292 s!2326) (matchRSpec!2982 r!7292 s!2326))))

(declare-fun lt!2302751 () Unit!157033)

(declare-fun choose!44280 (Regex!15881 List!63944) Unit!157033)

(assert (=> d!1833240 (= lt!2302751 (choose!44280 r!7292 s!2326))))

(assert (=> d!1833240 (validRegex!7617 r!7292)))

(assert (=> d!1833240 (= (mainMatchTheorem!2982 r!7292 s!2326) lt!2302751)))

(declare-fun bs!1374505 () Bool)

(assert (= bs!1374505 d!1833240))

(assert (=> bs!1374505 m!6759528))

(assert (=> bs!1374505 m!6759530))

(declare-fun m!6759646 () Bool)

(assert (=> bs!1374505 m!6759646))

(assert (=> bs!1374505 m!6759518))

(assert (=> b!5828528 d!1833240))

(declare-fun bs!1374506 () Bool)

(declare-fun d!1833242 () Bool)

(assert (= bs!1374506 (and d!1833242 d!1833206)))

(declare-fun lambda!318925 () Int)

(assert (=> bs!1374506 (= lambda!318925 lambda!318905)))

(assert (=> d!1833242 (= (inv!82949 (h!70267 zl!343)) (forall!14972 (exprs!5765 (h!70267 zl!343)) lambda!318925))))

(declare-fun bs!1374507 () Bool)

(assert (= bs!1374507 d!1833242))

(declare-fun m!6759654 () Bool)

(assert (=> bs!1374507 m!6759654))

(assert (=> b!5828537 d!1833242))

(declare-fun d!1833246 () Bool)

(assert (=> d!1833246 (= (isEmpty!35686 (t!377298 zl!343)) ((_ is Nil!63819) (t!377298 zl!343)))))

(assert (=> b!5828544 d!1833246))

(declare-fun bs!1374509 () Bool)

(declare-fun d!1833248 () Bool)

(assert (= bs!1374509 (and d!1833248 d!1833206)))

(declare-fun lambda!318928 () Int)

(assert (=> bs!1374509 (= lambda!318928 lambda!318905)))

(declare-fun bs!1374510 () Bool)

(assert (= bs!1374510 (and d!1833248 d!1833242)))

(assert (=> bs!1374510 (= lambda!318928 lambda!318925)))

(declare-fun b!5828911 () Bool)

(declare-fun e!3576449 () Regex!15881)

(assert (=> b!5828911 (= e!3576449 (h!70266 (unfocusZipperList!1302 zl!343)))))

(declare-fun b!5828912 () Bool)

(declare-fun e!3576446 () Bool)

(declare-fun lt!2302760 () Regex!15881)

(declare-fun isUnion!758 (Regex!15881) Bool)

(assert (=> b!5828912 (= e!3576446 (isUnion!758 lt!2302760))))

(declare-fun e!3576445 () Bool)

(assert (=> d!1833248 e!3576445))

(declare-fun res!2456871 () Bool)

(assert (=> d!1833248 (=> (not res!2456871) (not e!3576445))))

(assert (=> d!1833248 (= res!2456871 (validRegex!7617 lt!2302760))))

(assert (=> d!1833248 (= lt!2302760 e!3576449)))

(declare-fun c!1032822 () Bool)

(declare-fun e!3576444 () Bool)

(assert (=> d!1833248 (= c!1032822 e!3576444)))

(declare-fun res!2456872 () Bool)

(assert (=> d!1833248 (=> (not res!2456872) (not e!3576444))))

(assert (=> d!1833248 (= res!2456872 ((_ is Cons!63818) (unfocusZipperList!1302 zl!343)))))

(assert (=> d!1833248 (forall!14972 (unfocusZipperList!1302 zl!343) lambda!318928)))

(assert (=> d!1833248 (= (generalisedUnion!1725 (unfocusZipperList!1302 zl!343)) lt!2302760)))

(declare-fun b!5828913 () Bool)

(assert (=> b!5828913 (= e!3576444 (isEmpty!35685 (t!377297 (unfocusZipperList!1302 zl!343))))))

(declare-fun b!5828914 () Bool)

(declare-fun e!3576447 () Bool)

(assert (=> b!5828914 (= e!3576447 e!3576446)))

(declare-fun c!1032821 () Bool)

(declare-fun tail!11410 (List!63942) List!63942)

(assert (=> b!5828914 (= c!1032821 (isEmpty!35685 (tail!11410 (unfocusZipperList!1302 zl!343))))))

(declare-fun b!5828915 () Bool)

(assert (=> b!5828915 (= e!3576446 (= lt!2302760 (head!12323 (unfocusZipperList!1302 zl!343))))))

(declare-fun b!5828916 () Bool)

(declare-fun e!3576448 () Regex!15881)

(assert (=> b!5828916 (= e!3576449 e!3576448)))

(declare-fun c!1032824 () Bool)

(assert (=> b!5828916 (= c!1032824 ((_ is Cons!63818) (unfocusZipperList!1302 zl!343)))))

(declare-fun b!5828917 () Bool)

(assert (=> b!5828917 (= e!3576445 e!3576447)))

(declare-fun c!1032823 () Bool)

(assert (=> b!5828917 (= c!1032823 (isEmpty!35685 (unfocusZipperList!1302 zl!343)))))

(declare-fun b!5828918 () Bool)

(declare-fun isEmptyLang!1328 (Regex!15881) Bool)

(assert (=> b!5828918 (= e!3576447 (isEmptyLang!1328 lt!2302760))))

(declare-fun b!5828919 () Bool)

(assert (=> b!5828919 (= e!3576448 EmptyLang!15881)))

(declare-fun b!5828920 () Bool)

(assert (=> b!5828920 (= e!3576448 (Union!15881 (h!70266 (unfocusZipperList!1302 zl!343)) (generalisedUnion!1725 (t!377297 (unfocusZipperList!1302 zl!343)))))))

(assert (= (and d!1833248 res!2456872) b!5828913))

(assert (= (and d!1833248 c!1032822) b!5828911))

(assert (= (and d!1833248 (not c!1032822)) b!5828916))

(assert (= (and b!5828916 c!1032824) b!5828920))

(assert (= (and b!5828916 (not c!1032824)) b!5828919))

(assert (= (and d!1833248 res!2456871) b!5828917))

(assert (= (and b!5828917 c!1032823) b!5828918))

(assert (= (and b!5828917 (not c!1032823)) b!5828914))

(assert (= (and b!5828914 c!1032821) b!5828915))

(assert (= (and b!5828914 (not c!1032821)) b!5828912))

(declare-fun m!6759668 () Bool)

(assert (=> d!1833248 m!6759668))

(assert (=> d!1833248 m!6759514))

(declare-fun m!6759670 () Bool)

(assert (=> d!1833248 m!6759670))

(declare-fun m!6759672 () Bool)

(assert (=> b!5828913 m!6759672))

(declare-fun m!6759674 () Bool)

(assert (=> b!5828920 m!6759674))

(declare-fun m!6759676 () Bool)

(assert (=> b!5828918 m!6759676))

(assert (=> b!5828917 m!6759514))

(declare-fun m!6759678 () Bool)

(assert (=> b!5828917 m!6759678))

(declare-fun m!6759680 () Bool)

(assert (=> b!5828912 m!6759680))

(assert (=> b!5828915 m!6759514))

(declare-fun m!6759682 () Bool)

(assert (=> b!5828915 m!6759682))

(assert (=> b!5828914 m!6759514))

(declare-fun m!6759684 () Bool)

(assert (=> b!5828914 m!6759684))

(assert (=> b!5828914 m!6759684))

(declare-fun m!6759686 () Bool)

(assert (=> b!5828914 m!6759686))

(assert (=> b!5828543 d!1833248))

(declare-fun bs!1374511 () Bool)

(declare-fun d!1833254 () Bool)

(assert (= bs!1374511 (and d!1833254 d!1833206)))

(declare-fun lambda!318931 () Int)

(assert (=> bs!1374511 (= lambda!318931 lambda!318905)))

(declare-fun bs!1374512 () Bool)

(assert (= bs!1374512 (and d!1833254 d!1833242)))

(assert (=> bs!1374512 (= lambda!318931 lambda!318925)))

(declare-fun bs!1374513 () Bool)

(assert (= bs!1374513 (and d!1833254 d!1833248)))

(assert (=> bs!1374513 (= lambda!318931 lambda!318928)))

(declare-fun lt!2302763 () List!63942)

(assert (=> d!1833254 (forall!14972 lt!2302763 lambda!318931)))

(declare-fun e!3576458 () List!63942)

(assert (=> d!1833254 (= lt!2302763 e!3576458)))

(declare-fun c!1032827 () Bool)

(assert (=> d!1833254 (= c!1032827 ((_ is Cons!63819) zl!343))))

(assert (=> d!1833254 (= (unfocusZipperList!1302 zl!343) lt!2302763)))

(declare-fun b!5828939 () Bool)

(assert (=> b!5828939 (= e!3576458 (Cons!63818 (generalisedConcat!1478 (exprs!5765 (h!70267 zl!343))) (unfocusZipperList!1302 (t!377298 zl!343))))))

(declare-fun b!5828940 () Bool)

(assert (=> b!5828940 (= e!3576458 Nil!63818)))

(assert (= (and d!1833254 c!1032827) b!5828939))

(assert (= (and d!1833254 (not c!1032827)) b!5828940))

(declare-fun m!6759688 () Bool)

(assert (=> d!1833254 m!6759688))

(assert (=> b!5828939 m!6759534))

(declare-fun m!6759690 () Bool)

(assert (=> b!5828939 m!6759690))

(assert (=> b!5828543 d!1833254))

(declare-fun d!1833256 () Bool)

(assert (=> d!1833256 (= (isEmpty!35685 lt!2302724) ((_ is Nil!63818) lt!2302724))))

(assert (=> b!5828540 d!1833256))

(declare-fun bs!1374514 () Bool)

(declare-fun d!1833258 () Bool)

(assert (= bs!1374514 (and d!1833258 d!1833206)))

(declare-fun lambda!318934 () Int)

(assert (=> bs!1374514 (= lambda!318934 lambda!318905)))

(declare-fun bs!1374515 () Bool)

(assert (= bs!1374515 (and d!1833258 d!1833242)))

(assert (=> bs!1374515 (= lambda!318934 lambda!318925)))

(declare-fun bs!1374516 () Bool)

(assert (= bs!1374516 (and d!1833258 d!1833248)))

(assert (=> bs!1374516 (= lambda!318934 lambda!318928)))

(declare-fun bs!1374517 () Bool)

(assert (= bs!1374517 (and d!1833258 d!1833254)))

(assert (=> bs!1374517 (= lambda!318934 lambda!318931)))

(declare-fun b!5828961 () Bool)

(declare-fun e!3576474 () Bool)

(assert (=> b!5828961 (= e!3576474 (isEmpty!35685 (t!377297 (exprs!5765 (h!70267 zl!343)))))))

(declare-fun b!5828962 () Bool)

(declare-fun e!3576472 () Regex!15881)

(assert (=> b!5828962 (= e!3576472 EmptyExpr!15881)))

(declare-fun b!5828963 () Bool)

(declare-fun e!3576471 () Bool)

(declare-fun lt!2302766 () Regex!15881)

(declare-fun isEmptyExpr!1319 (Regex!15881) Bool)

(assert (=> b!5828963 (= e!3576471 (isEmptyExpr!1319 lt!2302766))))

(declare-fun e!3576476 () Bool)

(assert (=> d!1833258 e!3576476))

(declare-fun res!2456877 () Bool)

(assert (=> d!1833258 (=> (not res!2456877) (not e!3576476))))

(assert (=> d!1833258 (= res!2456877 (validRegex!7617 lt!2302766))))

(declare-fun e!3576473 () Regex!15881)

(assert (=> d!1833258 (= lt!2302766 e!3576473)))

(declare-fun c!1032836 () Bool)

(assert (=> d!1833258 (= c!1032836 e!3576474)))

(declare-fun res!2456878 () Bool)

(assert (=> d!1833258 (=> (not res!2456878) (not e!3576474))))

(assert (=> d!1833258 (= res!2456878 ((_ is Cons!63818) (exprs!5765 (h!70267 zl!343))))))

(assert (=> d!1833258 (forall!14972 (exprs!5765 (h!70267 zl!343)) lambda!318934)))

(assert (=> d!1833258 (= (generalisedConcat!1478 (exprs!5765 (h!70267 zl!343))) lt!2302766)))

(declare-fun b!5828964 () Bool)

(assert (=> b!5828964 (= e!3576472 (Concat!24726 (h!70266 (exprs!5765 (h!70267 zl!343))) (generalisedConcat!1478 (t!377297 (exprs!5765 (h!70267 zl!343))))))))

(declare-fun b!5828965 () Bool)

(assert (=> b!5828965 (= e!3576473 e!3576472)))

(declare-fun c!1032839 () Bool)

(assert (=> b!5828965 (= c!1032839 ((_ is Cons!63818) (exprs!5765 (h!70267 zl!343))))))

(declare-fun b!5828966 () Bool)

(assert (=> b!5828966 (= e!3576473 (h!70266 (exprs!5765 (h!70267 zl!343))))))

(declare-fun b!5828967 () Bool)

(declare-fun e!3576475 () Bool)

(assert (=> b!5828967 (= e!3576471 e!3576475)))

(declare-fun c!1032837 () Bool)

(assert (=> b!5828967 (= c!1032837 (isEmpty!35685 (tail!11410 (exprs!5765 (h!70267 zl!343)))))))

(declare-fun b!5828968 () Bool)

(assert (=> b!5828968 (= e!3576476 e!3576471)))

(declare-fun c!1032838 () Bool)

(assert (=> b!5828968 (= c!1032838 (isEmpty!35685 (exprs!5765 (h!70267 zl!343))))))

(declare-fun b!5828969 () Bool)

(declare-fun isConcat!842 (Regex!15881) Bool)

(assert (=> b!5828969 (= e!3576475 (isConcat!842 lt!2302766))))

(declare-fun b!5828970 () Bool)

(assert (=> b!5828970 (= e!3576475 (= lt!2302766 (head!12323 (exprs!5765 (h!70267 zl!343)))))))

(assert (= (and d!1833258 res!2456878) b!5828961))

(assert (= (and d!1833258 c!1032836) b!5828966))

(assert (= (and d!1833258 (not c!1032836)) b!5828965))

(assert (= (and b!5828965 c!1032839) b!5828964))

(assert (= (and b!5828965 (not c!1032839)) b!5828962))

(assert (= (and d!1833258 res!2456877) b!5828968))

(assert (= (and b!5828968 c!1032838) b!5828963))

(assert (= (and b!5828968 (not c!1032838)) b!5828967))

(assert (= (and b!5828967 c!1032837) b!5828970))

(assert (= (and b!5828967 (not c!1032837)) b!5828969))

(declare-fun m!6759692 () Bool)

(assert (=> b!5828963 m!6759692))

(declare-fun m!6759694 () Bool)

(assert (=> b!5828967 m!6759694))

(assert (=> b!5828967 m!6759694))

(declare-fun m!6759696 () Bool)

(assert (=> b!5828967 m!6759696))

(declare-fun m!6759698 () Bool)

(assert (=> b!5828961 m!6759698))

(declare-fun m!6759700 () Bool)

(assert (=> b!5828968 m!6759700))

(declare-fun m!6759702 () Bool)

(assert (=> b!5828970 m!6759702))

(declare-fun m!6759704 () Bool)

(assert (=> d!1833258 m!6759704))

(declare-fun m!6759706 () Bool)

(assert (=> d!1833258 m!6759706))

(declare-fun m!6759708 () Bool)

(assert (=> b!5828969 m!6759708))

(declare-fun m!6759710 () Bool)

(assert (=> b!5828964 m!6759710))

(assert (=> b!5828530 d!1833258))

(declare-fun b!5828975 () Bool)

(declare-fun e!3576479 () Bool)

(declare-fun tp!1610239 () Bool)

(declare-fun tp!1610240 () Bool)

(assert (=> b!5828975 (= e!3576479 (and tp!1610239 tp!1610240))))

(assert (=> b!5828534 (= tp!1610174 e!3576479)))

(assert (= (and b!5828534 ((_ is Cons!63818) (exprs!5765 setElem!39406))) b!5828975))

(declare-fun b!5828989 () Bool)

(declare-fun e!3576482 () Bool)

(declare-fun tp!1610251 () Bool)

(declare-fun tp!1610252 () Bool)

(assert (=> b!5828989 (= e!3576482 (and tp!1610251 tp!1610252))))

(declare-fun b!5828986 () Bool)

(assert (=> b!5828986 (= e!3576482 tp_is_empty!41015)))

(assert (=> b!5828535 (= tp!1610167 e!3576482)))

(declare-fun b!5828988 () Bool)

(declare-fun tp!1610254 () Bool)

(assert (=> b!5828988 (= e!3576482 tp!1610254)))

(declare-fun b!5828987 () Bool)

(declare-fun tp!1610255 () Bool)

(declare-fun tp!1610253 () Bool)

(assert (=> b!5828987 (= e!3576482 (and tp!1610255 tp!1610253))))

(assert (= (and b!5828535 ((_ is ElementMatch!15881) (regOne!32275 r!7292))) b!5828986))

(assert (= (and b!5828535 ((_ is Concat!24726) (regOne!32275 r!7292))) b!5828987))

(assert (= (and b!5828535 ((_ is Star!15881) (regOne!32275 r!7292))) b!5828988))

(assert (= (and b!5828535 ((_ is Union!15881) (regOne!32275 r!7292))) b!5828989))

(declare-fun b!5828993 () Bool)

(declare-fun e!3576483 () Bool)

(declare-fun tp!1610256 () Bool)

(declare-fun tp!1610257 () Bool)

(assert (=> b!5828993 (= e!3576483 (and tp!1610256 tp!1610257))))

(declare-fun b!5828990 () Bool)

(assert (=> b!5828990 (= e!3576483 tp_is_empty!41015)))

(assert (=> b!5828535 (= tp!1610172 e!3576483)))

(declare-fun b!5828992 () Bool)

(declare-fun tp!1610259 () Bool)

(assert (=> b!5828992 (= e!3576483 tp!1610259)))

(declare-fun b!5828991 () Bool)

(declare-fun tp!1610260 () Bool)

(declare-fun tp!1610258 () Bool)

(assert (=> b!5828991 (= e!3576483 (and tp!1610260 tp!1610258))))

(assert (= (and b!5828535 ((_ is ElementMatch!15881) (regTwo!32275 r!7292))) b!5828990))

(assert (= (and b!5828535 ((_ is Concat!24726) (regTwo!32275 r!7292))) b!5828991))

(assert (= (and b!5828535 ((_ is Star!15881) (regTwo!32275 r!7292))) b!5828992))

(assert (= (and b!5828535 ((_ is Union!15881) (regTwo!32275 r!7292))) b!5828993))

(declare-fun condSetEmpty!39412 () Bool)

(assert (=> setNonEmpty!39406 (= condSetEmpty!39412 (= setRest!39406 ((as const (Array Context!10530 Bool)) false)))))

(declare-fun setRes!39412 () Bool)

(assert (=> setNonEmpty!39406 (= tp!1610171 setRes!39412)))

(declare-fun setIsEmpty!39412 () Bool)

(assert (=> setIsEmpty!39412 setRes!39412))

(declare-fun setElem!39412 () Context!10530)

(declare-fun e!3576486 () Bool)

(declare-fun setNonEmpty!39412 () Bool)

(declare-fun tp!1610265 () Bool)

(assert (=> setNonEmpty!39412 (= setRes!39412 (and tp!1610265 (inv!82949 setElem!39412) e!3576486))))

(declare-fun setRest!39412 () (InoxSet Context!10530))

(assert (=> setNonEmpty!39412 (= setRest!39406 ((_ map or) (store ((as const (Array Context!10530 Bool)) false) setElem!39412 true) setRest!39412))))

(declare-fun b!5828998 () Bool)

(declare-fun tp!1610266 () Bool)

(assert (=> b!5828998 (= e!3576486 tp!1610266)))

(assert (= (and setNonEmpty!39406 condSetEmpty!39412) setIsEmpty!39412))

(assert (= (and setNonEmpty!39406 (not condSetEmpty!39412)) setNonEmpty!39412))

(assert (= setNonEmpty!39412 b!5828998))

(declare-fun m!6759712 () Bool)

(assert (=> setNonEmpty!39412 m!6759712))

(declare-fun b!5829003 () Bool)

(declare-fun e!3576489 () Bool)

(declare-fun tp!1610269 () Bool)

(assert (=> b!5829003 (= e!3576489 (and tp_is_empty!41015 tp!1610269))))

(assert (=> b!5828533 (= tp!1610169 e!3576489)))

(assert (= (and b!5828533 ((_ is Cons!63820) (t!377299 s!2326))) b!5829003))

(declare-fun b!5829011 () Bool)

(declare-fun e!3576495 () Bool)

(declare-fun tp!1610274 () Bool)

(assert (=> b!5829011 (= e!3576495 tp!1610274)))

(declare-fun e!3576494 () Bool)

(declare-fun b!5829010 () Bool)

(declare-fun tp!1610275 () Bool)

(assert (=> b!5829010 (= e!3576494 (and (inv!82949 (h!70267 (t!377298 zl!343))) e!3576495 tp!1610275))))

(assert (=> b!5828537 (= tp!1610173 e!3576494)))

(assert (= b!5829010 b!5829011))

(assert (= (and b!5828537 ((_ is Cons!63819) (t!377298 zl!343))) b!5829010))

(declare-fun m!6759714 () Bool)

(assert (=> b!5829010 m!6759714))

(declare-fun b!5829012 () Bool)

(declare-fun e!3576496 () Bool)

(declare-fun tp!1610276 () Bool)

(declare-fun tp!1610277 () Bool)

(assert (=> b!5829012 (= e!3576496 (and tp!1610276 tp!1610277))))

(assert (=> b!5828542 (= tp!1610168 e!3576496)))

(assert (= (and b!5828542 ((_ is Cons!63818) (exprs!5765 (h!70267 zl!343)))) b!5829012))

(declare-fun b!5829016 () Bool)

(declare-fun e!3576497 () Bool)

(declare-fun tp!1610278 () Bool)

(declare-fun tp!1610279 () Bool)

(assert (=> b!5829016 (= e!3576497 (and tp!1610278 tp!1610279))))

(declare-fun b!5829013 () Bool)

(assert (=> b!5829013 (= e!3576497 tp_is_empty!41015)))

(assert (=> b!5828546 (= tp!1610176 e!3576497)))

(declare-fun b!5829015 () Bool)

(declare-fun tp!1610281 () Bool)

(assert (=> b!5829015 (= e!3576497 tp!1610281)))

(declare-fun b!5829014 () Bool)

(declare-fun tp!1610282 () Bool)

(declare-fun tp!1610280 () Bool)

(assert (=> b!5829014 (= e!3576497 (and tp!1610282 tp!1610280))))

(assert (= (and b!5828546 ((_ is ElementMatch!15881) (regOne!32274 r!7292))) b!5829013))

(assert (= (and b!5828546 ((_ is Concat!24726) (regOne!32274 r!7292))) b!5829014))

(assert (= (and b!5828546 ((_ is Star!15881) (regOne!32274 r!7292))) b!5829015))

(assert (= (and b!5828546 ((_ is Union!15881) (regOne!32274 r!7292))) b!5829016))

(declare-fun b!5829020 () Bool)

(declare-fun e!3576498 () Bool)

(declare-fun tp!1610283 () Bool)

(declare-fun tp!1610284 () Bool)

(assert (=> b!5829020 (= e!3576498 (and tp!1610283 tp!1610284))))

(declare-fun b!5829017 () Bool)

(assert (=> b!5829017 (= e!3576498 tp_is_empty!41015)))

(assert (=> b!5828546 (= tp!1610170 e!3576498)))

(declare-fun b!5829019 () Bool)

(declare-fun tp!1610286 () Bool)

(assert (=> b!5829019 (= e!3576498 tp!1610286)))

(declare-fun b!5829018 () Bool)

(declare-fun tp!1610287 () Bool)

(declare-fun tp!1610285 () Bool)

(assert (=> b!5829018 (= e!3576498 (and tp!1610287 tp!1610285))))

(assert (= (and b!5828546 ((_ is ElementMatch!15881) (regTwo!32274 r!7292))) b!5829017))

(assert (= (and b!5828546 ((_ is Concat!24726) (regTwo!32274 r!7292))) b!5829018))

(assert (= (and b!5828546 ((_ is Star!15881) (regTwo!32274 r!7292))) b!5829019))

(assert (= (and b!5828546 ((_ is Union!15881) (regTwo!32274 r!7292))) b!5829020))

(declare-fun b!5829024 () Bool)

(declare-fun e!3576499 () Bool)

(declare-fun tp!1610288 () Bool)

(declare-fun tp!1610289 () Bool)

(assert (=> b!5829024 (= e!3576499 (and tp!1610288 tp!1610289))))

(declare-fun b!5829021 () Bool)

(assert (=> b!5829021 (= e!3576499 tp_is_empty!41015)))

(assert (=> b!5828536 (= tp!1610175 e!3576499)))

(declare-fun b!5829023 () Bool)

(declare-fun tp!1610291 () Bool)

(assert (=> b!5829023 (= e!3576499 tp!1610291)))

(declare-fun b!5829022 () Bool)

(declare-fun tp!1610292 () Bool)

(declare-fun tp!1610290 () Bool)

(assert (=> b!5829022 (= e!3576499 (and tp!1610292 tp!1610290))))

(assert (= (and b!5828536 ((_ is ElementMatch!15881) (reg!16210 r!7292))) b!5829021))

(assert (= (and b!5828536 ((_ is Concat!24726) (reg!16210 r!7292))) b!5829022))

(assert (= (and b!5828536 ((_ is Star!15881) (reg!16210 r!7292))) b!5829023))

(assert (= (and b!5828536 ((_ is Union!15881) (reg!16210 r!7292))) b!5829024))

(check-sat (not bm!455221) (not d!1833222) (not b!5829012) (not b!5828738) (not b!5828912) (not b!5828967) (not b!5828992) (not b!5828806) (not b!5828987) (not b!5829015) (not b!5829024) (not bm!455196) (not b!5828963) (not b!5828917) (not b!5829018) (not b!5829014) (not setNonEmpty!39412) (not bm!455195) (not b!5828730) (not b!5829016) (not d!1833214) (not d!1833258) (not b!5829022) (not b!5828993) (not b!5828743) (not d!1833242) (not b!5828808) (not d!1833254) (not b!5828988) (not b!5828970) (not b!5828914) (not b!5828998) (not b!5828613) (not b!5828969) (not b!5828913) (not b!5828652) (not d!1833248) (not b!5828939) (not d!1833204) (not d!1833240) (not b!5828915) tp_is_empty!41015 (not b!5828968) (not b!5829023) (not b!5829011) (not b!5829020) (not bm!455220) (not d!1833206) (not bm!455206) (not b!5828737) (not b!5828918) (not b!5828989) (not b!5829019) (not b!5828920) (not b!5829003) (not b!5828740) (not b!5828975) (not b!5828991) (not b!5829010) (not b!5828964) (not b!5828736) (not b!5828961))
(check-sat)

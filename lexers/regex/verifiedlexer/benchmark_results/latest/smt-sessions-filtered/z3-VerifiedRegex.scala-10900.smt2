; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563926 () Bool)

(assert start!563926)

(declare-fun b!5355464 () Bool)

(assert (=> b!5355464 true))

(assert (=> b!5355464 true))

(declare-fun lambda!275406 () Int)

(declare-fun lambda!275405 () Int)

(assert (=> b!5355464 (not (= lambda!275406 lambda!275405))))

(assert (=> b!5355464 true))

(assert (=> b!5355464 true))

(declare-fun b!5355471 () Bool)

(assert (=> b!5355471 true))

(declare-fun b!5355442 () Bool)

(declare-fun e!3324208 () Bool)

(declare-fun e!3324197 () Bool)

(assert (=> b!5355442 (= e!3324208 e!3324197)))

(declare-fun res!2272169 () Bool)

(assert (=> b!5355442 (=> res!2272169 e!3324197)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30364 0))(
  ( (C!30365 (val!24884 Int)) )
))
(declare-datatypes ((Regex!15047 0))(
  ( (ElementMatch!15047 (c!932505 C!30364)) (Concat!23892 (regOne!30606 Regex!15047) (regTwo!30606 Regex!15047)) (EmptyExpr!15047) (Star!15047 (reg!15376 Regex!15047)) (EmptyLang!15047) (Union!15047 (regOne!30607 Regex!15047) (regTwo!30607 Regex!15047)) )
))
(declare-datatypes ((List!61440 0))(
  ( (Nil!61316) (Cons!61316 (h!67764 Regex!15047) (t!374661 List!61440)) )
))
(declare-datatypes ((Context!8862 0))(
  ( (Context!8863 (exprs!4931 List!61440)) )
))
(declare-fun lt!2181893 () (InoxSet Context!8862))

(declare-fun lt!2181896 () (InoxSet Context!8862))

(assert (=> b!5355442 (= res!2272169 (not (= lt!2181893 lt!2181896)))))

(declare-datatypes ((List!61441 0))(
  ( (Nil!61317) (Cons!61317 (h!67765 C!30364) (t!374662 List!61441)) )
))
(declare-fun s!2326 () List!61441)

(declare-fun lt!2181914 () Context!8862)

(declare-fun lambda!275407 () Int)

(declare-fun lt!2181912 () (InoxSet Context!8862))

(declare-fun flatMap!774 ((InoxSet Context!8862) Int) (InoxSet Context!8862))

(declare-fun derivationStepZipperUp!419 (Context!8862 C!30364) (InoxSet Context!8862))

(assert (=> b!5355442 (= (flatMap!774 lt!2181912 lambda!275407) (derivationStepZipperUp!419 lt!2181914 (h!67765 s!2326)))))

(declare-datatypes ((Unit!153706 0))(
  ( (Unit!153707) )
))
(declare-fun lt!2181909 () Unit!153706)

(declare-fun lemmaFlatMapOnSingletonSet!306 ((InoxSet Context!8862) Context!8862 Int) Unit!153706)

(assert (=> b!5355442 (= lt!2181909 (lemmaFlatMapOnSingletonSet!306 lt!2181912 lt!2181914 lambda!275407))))

(declare-fun lt!2181911 () (InoxSet Context!8862))

(assert (=> b!5355442 (= lt!2181911 (derivationStepZipperUp!419 lt!2181914 (h!67765 s!2326)))))

(declare-fun derivationStepZipper!1286 ((InoxSet Context!8862) C!30364) (InoxSet Context!8862))

(assert (=> b!5355442 (= lt!2181893 (derivationStepZipper!1286 lt!2181912 (h!67765 s!2326)))))

(assert (=> b!5355442 (= lt!2181912 (store ((as const (Array Context!8862 Bool)) false) lt!2181914 true))))

(declare-fun r!7292 () Regex!15047)

(declare-fun lt!2181891 () List!61440)

(assert (=> b!5355442 (= lt!2181914 (Context!8863 (Cons!61316 (reg!15376 (regOne!30606 r!7292)) lt!2181891)))))

(declare-fun res!2272165 () Bool)

(declare-fun e!3324211 () Bool)

(assert (=> start!563926 (=> (not res!2272165) (not e!3324211))))

(declare-fun validRegex!6783 (Regex!15047) Bool)

(assert (=> start!563926 (= res!2272165 (validRegex!6783 r!7292))))

(assert (=> start!563926 e!3324211))

(declare-fun e!3324207 () Bool)

(assert (=> start!563926 e!3324207))

(declare-fun condSetEmpty!34621 () Bool)

(declare-fun z!1189 () (InoxSet Context!8862))

(assert (=> start!563926 (= condSetEmpty!34621 (= z!1189 ((as const (Array Context!8862 Bool)) false)))))

(declare-fun setRes!34621 () Bool)

(assert (=> start!563926 setRes!34621))

(declare-fun e!3324209 () Bool)

(assert (=> start!563926 e!3324209))

(declare-fun e!3324198 () Bool)

(assert (=> start!563926 e!3324198))

(declare-fun b!5355443 () Bool)

(declare-fun e!3324200 () Bool)

(declare-fun nullable!5216 (Regex!15047) Bool)

(assert (=> b!5355443 (= e!3324200 (nullable!5216 (regOne!30606 (regOne!30606 r!7292))))))

(declare-fun b!5355444 () Bool)

(declare-fun res!2272152 () Bool)

(assert (=> b!5355444 (=> (not res!2272152) (not e!3324211))))

(declare-datatypes ((List!61442 0))(
  ( (Nil!61318) (Cons!61318 (h!67766 Context!8862) (t!374663 List!61442)) )
))
(declare-fun zl!343 () List!61442)

(declare-fun toList!8831 ((InoxSet Context!8862)) List!61442)

(assert (=> b!5355444 (= res!2272152 (= (toList!8831 z!1189) zl!343))))

(declare-fun b!5355445 () Bool)

(declare-fun tp_is_empty!39347 () Bool)

(assert (=> b!5355445 (= e!3324207 tp_is_empty!39347)))

(declare-fun b!5355446 () Bool)

(declare-fun tp!1487514 () Bool)

(assert (=> b!5355446 (= e!3324198 (and tp_is_empty!39347 tp!1487514))))

(declare-fun b!5355447 () Bool)

(declare-fun e!3324205 () Bool)

(declare-fun tp!1487510 () Bool)

(assert (=> b!5355447 (= e!3324205 tp!1487510)))

(declare-fun b!5355448 () Bool)

(declare-fun res!2272168 () Bool)

(assert (=> b!5355448 (=> res!2272168 e!3324197)))

(declare-fun lt!2181898 () Regex!15047)

(assert (=> b!5355448 (= res!2272168 (not (= lt!2181898 r!7292)))))

(declare-fun b!5355449 () Bool)

(declare-fun res!2272171 () Bool)

(declare-fun e!3324204 () Bool)

(assert (=> b!5355449 (=> res!2272171 e!3324204)))

(assert (=> b!5355449 (= res!2272171 e!3324200)))

(declare-fun res!2272157 () Bool)

(assert (=> b!5355449 (=> (not res!2272157) (not e!3324200))))

(get-info :version)

(assert (=> b!5355449 (= res!2272157 ((_ is Concat!23892) (regOne!30606 r!7292)))))

(declare-fun b!5355450 () Bool)

(declare-fun res!2272167 () Bool)

(declare-fun e!3324202 () Bool)

(assert (=> b!5355450 (=> res!2272167 e!3324202)))

(declare-fun generalisedUnion!976 (List!61440) Regex!15047)

(declare-fun unfocusZipperList!489 (List!61442) List!61440)

(assert (=> b!5355450 (= res!2272167 (not (= r!7292 (generalisedUnion!976 (unfocusZipperList!489 zl!343)))))))

(declare-fun b!5355451 () Bool)

(declare-fun e!3324212 () Bool)

(assert (=> b!5355451 (= e!3324211 e!3324212)))

(declare-fun res!2272150 () Bool)

(assert (=> b!5355451 (=> (not res!2272150) (not e!3324212))))

(assert (=> b!5355451 (= res!2272150 (= r!7292 lt!2181898))))

(declare-fun unfocusZipper!789 (List!61442) Regex!15047)

(assert (=> b!5355451 (= lt!2181898 (unfocusZipper!789 zl!343))))

(declare-fun b!5355452 () Bool)

(declare-fun e!3324210 () Bool)

(declare-fun tp!1487511 () Bool)

(assert (=> b!5355452 (= e!3324210 tp!1487511)))

(declare-fun b!5355453 () Bool)

(declare-fun res!2272154 () Bool)

(assert (=> b!5355453 (=> res!2272154 e!3324202)))

(assert (=> b!5355453 (= res!2272154 (or ((_ is EmptyExpr!15047) r!7292) ((_ is EmptyLang!15047) r!7292) ((_ is ElementMatch!15047) r!7292) ((_ is Union!15047) r!7292) (not ((_ is Concat!23892) r!7292))))))

(declare-fun b!5355454 () Bool)

(declare-fun res!2272160 () Bool)

(declare-fun e!3324203 () Bool)

(assert (=> b!5355454 (=> res!2272160 e!3324203)))

(declare-fun lt!2181910 () Regex!15047)

(assert (=> b!5355454 (= res!2272160 (not (= (unfocusZipper!789 (Cons!61318 lt!2181914 Nil!61318)) (Concat!23892 (reg!15376 (regOne!30606 r!7292)) lt!2181910))))))

(declare-fun b!5355455 () Bool)

(declare-fun e!3324199 () Unit!153706)

(declare-fun Unit!153708 () Unit!153706)

(assert (=> b!5355455 (= e!3324199 Unit!153708)))

(declare-fun b!5355456 () Bool)

(declare-fun tp!1487509 () Bool)

(declare-fun inv!80864 (Context!8862) Bool)

(assert (=> b!5355456 (= e!3324209 (and (inv!80864 (h!67766 zl!343)) e!3324205 tp!1487509))))

(declare-fun b!5355457 () Bool)

(declare-fun res!2272161 () Bool)

(assert (=> b!5355457 (=> res!2272161 e!3324204)))

(assert (=> b!5355457 (= res!2272161 (or ((_ is Concat!23892) (regOne!30606 r!7292)) (not ((_ is Star!15047) (regOne!30606 r!7292)))))))

(declare-fun b!5355458 () Bool)

(declare-fun e!3324206 () Bool)

(declare-fun lt!2181904 () (InoxSet Context!8862))

(declare-fun matchZipper!1291 ((InoxSet Context!8862) List!61441) Bool)

(assert (=> b!5355458 (= e!3324206 (matchZipper!1291 lt!2181904 (t!374662 s!2326)))))

(declare-fun b!5355459 () Bool)

(assert (=> b!5355459 (= e!3324203 true)))

(declare-fun lt!2181901 () (InoxSet Context!8862))

(declare-fun lt!2181907 () Context!8862)

(assert (=> b!5355459 (= lt!2181901 (derivationStepZipperUp!419 lt!2181907 (h!67765 s!2326)))))

(declare-fun lt!2181899 () (InoxSet Context!8862))

(assert (=> b!5355459 (= lt!2181899 (derivationStepZipperUp!419 (Context!8863 (Cons!61316 (reg!15376 (regOne!30606 r!7292)) Nil!61316)) (h!67765 s!2326)))))

(declare-fun b!5355460 () Bool)

(assert (=> b!5355460 (= e!3324197 e!3324203)))

(declare-fun res!2272159 () Bool)

(assert (=> b!5355460 (=> res!2272159 e!3324203)))

(assert (=> b!5355460 (= res!2272159 (not (= r!7292 lt!2181910)))))

(declare-fun lt!2181905 () Regex!15047)

(assert (=> b!5355460 (= lt!2181910 (Concat!23892 lt!2181905 (regTwo!30606 r!7292)))))

(declare-fun setElem!34621 () Context!8862)

(declare-fun tp!1487512 () Bool)

(declare-fun setNonEmpty!34621 () Bool)

(assert (=> setNonEmpty!34621 (= setRes!34621 (and tp!1487512 (inv!80864 setElem!34621) e!3324210))))

(declare-fun setRest!34621 () (InoxSet Context!8862))

(assert (=> setNonEmpty!34621 (= z!1189 ((_ map or) (store ((as const (Array Context!8862 Bool)) false) setElem!34621 true) setRest!34621))))

(declare-fun b!5355461 () Bool)

(declare-fun res!2272163 () Bool)

(assert (=> b!5355461 (=> res!2272163 e!3324202)))

(declare-fun generalisedConcat!716 (List!61440) Regex!15047)

(assert (=> b!5355461 (= res!2272163 (not (= r!7292 (generalisedConcat!716 (exprs!4931 (h!67766 zl!343))))))))

(declare-fun b!5355462 () Bool)

(declare-fun res!2272166 () Bool)

(assert (=> b!5355462 (=> res!2272166 e!3324197)))

(assert (=> b!5355462 (= res!2272166 (not (= (matchZipper!1291 lt!2181912 s!2326) (matchZipper!1291 lt!2181893 (t!374662 s!2326)))))))

(declare-fun b!5355463 () Bool)

(declare-fun res!2272153 () Bool)

(assert (=> b!5355463 (=> res!2272153 e!3324202)))

(assert (=> b!5355463 (= res!2272153 (not ((_ is Cons!61316) (exprs!4931 (h!67766 zl!343)))))))

(declare-fun e!3324201 () Bool)

(assert (=> b!5355464 (= e!3324202 e!3324201)))

(declare-fun res!2272156 () Bool)

(assert (=> b!5355464 (=> res!2272156 e!3324201)))

(declare-fun lt!2181897 () Bool)

(declare-fun lt!2181902 () Bool)

(assert (=> b!5355464 (= res!2272156 (or (not (= lt!2181902 lt!2181897)) ((_ is Nil!61317) s!2326)))))

(declare-fun Exists!2228 (Int) Bool)

(assert (=> b!5355464 (= (Exists!2228 lambda!275405) (Exists!2228 lambda!275406))))

(declare-fun lt!2181900 () Unit!153706)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!882 (Regex!15047 Regex!15047 List!61441) Unit!153706)

(assert (=> b!5355464 (= lt!2181900 (lemmaExistCutMatchRandMatchRSpecEquivalent!882 (regOne!30606 r!7292) (regTwo!30606 r!7292) s!2326))))

(assert (=> b!5355464 (= lt!2181897 (Exists!2228 lambda!275405))))

(declare-datatypes ((tuple2!64492 0))(
  ( (tuple2!64493 (_1!35549 List!61441) (_2!35549 List!61441)) )
))
(declare-datatypes ((Option!15158 0))(
  ( (None!15157) (Some!15157 (v!51186 tuple2!64492)) )
))
(declare-fun isDefined!11861 (Option!15158) Bool)

(declare-fun findConcatSeparation!1572 (Regex!15047 Regex!15047 List!61441 List!61441 List!61441) Option!15158)

(assert (=> b!5355464 (= lt!2181897 (isDefined!11861 (findConcatSeparation!1572 (regOne!30606 r!7292) (regTwo!30606 r!7292) Nil!61317 s!2326 s!2326)))))

(declare-fun lt!2181903 () Unit!153706)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1336 (Regex!15047 Regex!15047 List!61441) Unit!153706)

(assert (=> b!5355464 (= lt!2181903 (lemmaFindConcatSeparationEquivalentToExists!1336 (regOne!30606 r!7292) (regTwo!30606 r!7292) s!2326))))

(declare-fun b!5355465 () Bool)

(declare-fun tp!1487516 () Bool)

(declare-fun tp!1487515 () Bool)

(assert (=> b!5355465 (= e!3324207 (and tp!1487516 tp!1487515))))

(declare-fun b!5355466 () Bool)

(declare-fun res!2272170 () Bool)

(assert (=> b!5355466 (=> res!2272170 e!3324202)))

(declare-fun isEmpty!33295 (List!61442) Bool)

(assert (=> b!5355466 (= res!2272170 (not (isEmpty!33295 (t!374663 zl!343))))))

(declare-fun b!5355467 () Bool)

(declare-fun tp!1487517 () Bool)

(declare-fun tp!1487513 () Bool)

(assert (=> b!5355467 (= e!3324207 (and tp!1487517 tp!1487513))))

(declare-fun b!5355468 () Bool)

(assert (=> b!5355468 (= e!3324212 (not e!3324202))))

(declare-fun res!2272158 () Bool)

(assert (=> b!5355468 (=> res!2272158 e!3324202)))

(assert (=> b!5355468 (= res!2272158 (not ((_ is Cons!61318) zl!343)))))

(declare-fun matchRSpec!2150 (Regex!15047 List!61441) Bool)

(assert (=> b!5355468 (= lt!2181902 (matchRSpec!2150 r!7292 s!2326))))

(declare-fun matchR!7232 (Regex!15047 List!61441) Bool)

(assert (=> b!5355468 (= lt!2181902 (matchR!7232 r!7292 s!2326))))

(declare-fun lt!2181913 () Unit!153706)

(declare-fun mainMatchTheorem!2150 (Regex!15047 List!61441) Unit!153706)

(assert (=> b!5355468 (= lt!2181913 (mainMatchTheorem!2150 r!7292 s!2326))))

(declare-fun b!5355469 () Bool)

(assert (=> b!5355469 (= e!3324204 e!3324208)))

(declare-fun res!2272164 () Bool)

(assert (=> b!5355469 (=> res!2272164 e!3324208)))

(declare-fun lt!2181895 () (InoxSet Context!8862))

(assert (=> b!5355469 (= res!2272164 (not (= lt!2181895 lt!2181896)))))

(declare-fun derivationStepZipperDown!495 (Regex!15047 Context!8862 C!30364) (InoxSet Context!8862))

(assert (=> b!5355469 (= lt!2181896 (derivationStepZipperDown!495 (reg!15376 (regOne!30606 r!7292)) lt!2181907 (h!67765 s!2326)))))

(assert (=> b!5355469 (= lt!2181907 (Context!8863 lt!2181891))))

(assert (=> b!5355469 (= lt!2181891 (Cons!61316 lt!2181905 (t!374661 (exprs!4931 (h!67766 zl!343)))))))

(assert (=> b!5355469 (= lt!2181905 (Star!15047 (reg!15376 (regOne!30606 r!7292))))))

(declare-fun b!5355470 () Bool)

(declare-fun Unit!153709 () Unit!153706)

(assert (=> b!5355470 (= e!3324199 Unit!153709)))

(declare-fun lt!2181908 () Unit!153706)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!284 ((InoxSet Context!8862) (InoxSet Context!8862) List!61441) Unit!153706)

(assert (=> b!5355470 (= lt!2181908 (lemmaZipperConcatMatchesSameAsBothZippers!284 lt!2181895 lt!2181904 (t!374662 s!2326)))))

(declare-fun res!2272155 () Bool)

(assert (=> b!5355470 (= res!2272155 (matchZipper!1291 lt!2181895 (t!374662 s!2326)))))

(assert (=> b!5355470 (=> res!2272155 e!3324206)))

(assert (=> b!5355470 (= (matchZipper!1291 ((_ map or) lt!2181895 lt!2181904) (t!374662 s!2326)) e!3324206)))

(declare-fun setIsEmpty!34621 () Bool)

(assert (=> setIsEmpty!34621 setRes!34621))

(assert (=> b!5355471 (= e!3324201 e!3324204)))

(declare-fun res!2272162 () Bool)

(assert (=> b!5355471 (=> res!2272162 e!3324204)))

(assert (=> b!5355471 (= res!2272162 (or (and ((_ is ElementMatch!15047) (regOne!30606 r!7292)) (= (c!932505 (regOne!30606 r!7292)) (h!67765 s!2326))) ((_ is Union!15047) (regOne!30606 r!7292))))))

(declare-fun lt!2181894 () Unit!153706)

(assert (=> b!5355471 (= lt!2181894 e!3324199)))

(declare-fun c!932504 () Bool)

(assert (=> b!5355471 (= c!932504 (nullable!5216 (h!67764 (exprs!4931 (h!67766 zl!343)))))))

(assert (=> b!5355471 (= (flatMap!774 z!1189 lambda!275407) (derivationStepZipperUp!419 (h!67766 zl!343) (h!67765 s!2326)))))

(declare-fun lt!2181890 () Unit!153706)

(assert (=> b!5355471 (= lt!2181890 (lemmaFlatMapOnSingletonSet!306 z!1189 (h!67766 zl!343) lambda!275407))))

(declare-fun lt!2181906 () Context!8862)

(assert (=> b!5355471 (= lt!2181904 (derivationStepZipperUp!419 lt!2181906 (h!67765 s!2326)))))

(assert (=> b!5355471 (= lt!2181895 (derivationStepZipperDown!495 (h!67764 (exprs!4931 (h!67766 zl!343))) lt!2181906 (h!67765 s!2326)))))

(assert (=> b!5355471 (= lt!2181906 (Context!8863 (t!374661 (exprs!4931 (h!67766 zl!343)))))))

(declare-fun lt!2181892 () (InoxSet Context!8862))

(assert (=> b!5355471 (= lt!2181892 (derivationStepZipperUp!419 (Context!8863 (Cons!61316 (h!67764 (exprs!4931 (h!67766 zl!343))) (t!374661 (exprs!4931 (h!67766 zl!343))))) (h!67765 s!2326)))))

(declare-fun b!5355472 () Bool)

(declare-fun tp!1487508 () Bool)

(assert (=> b!5355472 (= e!3324207 tp!1487508)))

(declare-fun b!5355473 () Bool)

(declare-fun res!2272151 () Bool)

(assert (=> b!5355473 (=> res!2272151 e!3324201)))

(declare-fun isEmpty!33296 (List!61440) Bool)

(assert (=> b!5355473 (= res!2272151 (isEmpty!33296 (t!374661 (exprs!4931 (h!67766 zl!343)))))))

(assert (= (and start!563926 res!2272165) b!5355444))

(assert (= (and b!5355444 res!2272152) b!5355451))

(assert (= (and b!5355451 res!2272150) b!5355468))

(assert (= (and b!5355468 (not res!2272158)) b!5355466))

(assert (= (and b!5355466 (not res!2272170)) b!5355461))

(assert (= (and b!5355461 (not res!2272163)) b!5355463))

(assert (= (and b!5355463 (not res!2272153)) b!5355450))

(assert (= (and b!5355450 (not res!2272167)) b!5355453))

(assert (= (and b!5355453 (not res!2272154)) b!5355464))

(assert (= (and b!5355464 (not res!2272156)) b!5355473))

(assert (= (and b!5355473 (not res!2272151)) b!5355471))

(assert (= (and b!5355471 c!932504) b!5355470))

(assert (= (and b!5355471 (not c!932504)) b!5355455))

(assert (= (and b!5355470 (not res!2272155)) b!5355458))

(assert (= (and b!5355471 (not res!2272162)) b!5355449))

(assert (= (and b!5355449 res!2272157) b!5355443))

(assert (= (and b!5355449 (not res!2272171)) b!5355457))

(assert (= (and b!5355457 (not res!2272161)) b!5355469))

(assert (= (and b!5355469 (not res!2272164)) b!5355442))

(assert (= (and b!5355442 (not res!2272169)) b!5355462))

(assert (= (and b!5355462 (not res!2272166)) b!5355448))

(assert (= (and b!5355448 (not res!2272168)) b!5355460))

(assert (= (and b!5355460 (not res!2272159)) b!5355454))

(assert (= (and b!5355454 (not res!2272160)) b!5355459))

(assert (= (and start!563926 ((_ is ElementMatch!15047) r!7292)) b!5355445))

(assert (= (and start!563926 ((_ is Concat!23892) r!7292)) b!5355467))

(assert (= (and start!563926 ((_ is Star!15047) r!7292)) b!5355472))

(assert (= (and start!563926 ((_ is Union!15047) r!7292)) b!5355465))

(assert (= (and start!563926 condSetEmpty!34621) setIsEmpty!34621))

(assert (= (and start!563926 (not condSetEmpty!34621)) setNonEmpty!34621))

(assert (= setNonEmpty!34621 b!5355452))

(assert (= b!5355456 b!5355447))

(assert (= (and start!563926 ((_ is Cons!61318) zl!343)) b!5355456))

(assert (= (and start!563926 ((_ is Cons!61317) s!2326)) b!5355446))

(declare-fun m!6385300 () Bool)

(assert (=> b!5355454 m!6385300))

(declare-fun m!6385302 () Bool)

(assert (=> b!5355464 m!6385302))

(declare-fun m!6385304 () Bool)

(assert (=> b!5355464 m!6385304))

(declare-fun m!6385306 () Bool)

(assert (=> b!5355464 m!6385306))

(declare-fun m!6385308 () Bool)

(assert (=> b!5355464 m!6385308))

(declare-fun m!6385310 () Bool)

(assert (=> b!5355464 m!6385310))

(assert (=> b!5355464 m!6385302))

(assert (=> b!5355464 m!6385304))

(declare-fun m!6385312 () Bool)

(assert (=> b!5355464 m!6385312))

(declare-fun m!6385314 () Bool)

(assert (=> b!5355462 m!6385314))

(declare-fun m!6385316 () Bool)

(assert (=> b!5355462 m!6385316))

(declare-fun m!6385318 () Bool)

(assert (=> b!5355456 m!6385318))

(declare-fun m!6385320 () Bool)

(assert (=> b!5355444 m!6385320))

(declare-fun m!6385322 () Bool)

(assert (=> b!5355471 m!6385322))

(declare-fun m!6385324 () Bool)

(assert (=> b!5355471 m!6385324))

(declare-fun m!6385326 () Bool)

(assert (=> b!5355471 m!6385326))

(declare-fun m!6385328 () Bool)

(assert (=> b!5355471 m!6385328))

(declare-fun m!6385330 () Bool)

(assert (=> b!5355471 m!6385330))

(declare-fun m!6385332 () Bool)

(assert (=> b!5355471 m!6385332))

(declare-fun m!6385334 () Bool)

(assert (=> b!5355471 m!6385334))

(declare-fun m!6385336 () Bool)

(assert (=> b!5355443 m!6385336))

(declare-fun m!6385338 () Bool)

(assert (=> start!563926 m!6385338))

(declare-fun m!6385340 () Bool)

(assert (=> b!5355442 m!6385340))

(declare-fun m!6385342 () Bool)

(assert (=> b!5355442 m!6385342))

(declare-fun m!6385344 () Bool)

(assert (=> b!5355442 m!6385344))

(declare-fun m!6385346 () Bool)

(assert (=> b!5355442 m!6385346))

(declare-fun m!6385348 () Bool)

(assert (=> b!5355442 m!6385348))

(declare-fun m!6385350 () Bool)

(assert (=> b!5355458 m!6385350))

(declare-fun m!6385352 () Bool)

(assert (=> b!5355468 m!6385352))

(declare-fun m!6385354 () Bool)

(assert (=> b!5355468 m!6385354))

(declare-fun m!6385356 () Bool)

(assert (=> b!5355468 m!6385356))

(declare-fun m!6385358 () Bool)

(assert (=> b!5355459 m!6385358))

(declare-fun m!6385360 () Bool)

(assert (=> b!5355459 m!6385360))

(declare-fun m!6385362 () Bool)

(assert (=> b!5355461 m!6385362))

(declare-fun m!6385364 () Bool)

(assert (=> setNonEmpty!34621 m!6385364))

(declare-fun m!6385366 () Bool)

(assert (=> b!5355450 m!6385366))

(assert (=> b!5355450 m!6385366))

(declare-fun m!6385368 () Bool)

(assert (=> b!5355450 m!6385368))

(declare-fun m!6385370 () Bool)

(assert (=> b!5355469 m!6385370))

(declare-fun m!6385372 () Bool)

(assert (=> b!5355473 m!6385372))

(declare-fun m!6385374 () Bool)

(assert (=> b!5355470 m!6385374))

(declare-fun m!6385376 () Bool)

(assert (=> b!5355470 m!6385376))

(declare-fun m!6385378 () Bool)

(assert (=> b!5355470 m!6385378))

(declare-fun m!6385380 () Bool)

(assert (=> b!5355466 m!6385380))

(declare-fun m!6385382 () Bool)

(assert (=> b!5355451 m!6385382))

(check-sat (not b!5355461) (not b!5355458) (not b!5355466) (not b!5355469) (not b!5355446) (not b!5355471) (not b!5355454) (not b!5355467) (not b!5355442) tp_is_empty!39347 (not b!5355464) (not b!5355465) (not start!563926) (not b!5355456) (not b!5355473) (not b!5355444) (not b!5355459) (not b!5355451) (not b!5355447) (not b!5355468) (not b!5355462) (not b!5355470) (not b!5355472) (not b!5355443) (not b!5355450) (not setNonEmpty!34621) (not b!5355452))
(check-sat)

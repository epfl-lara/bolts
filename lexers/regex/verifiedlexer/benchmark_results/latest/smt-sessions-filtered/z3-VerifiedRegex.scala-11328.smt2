; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597708 () Bool)

(assert start!597708)

(declare-fun b!5837596 () Bool)

(declare-fun res!2459534 () Bool)

(declare-fun e!3580873 () Bool)

(assert (=> b!5837596 (=> res!2459534 e!3580873)))

(declare-datatypes ((C!32076 0))(
  ( (C!32077 (val!25740 Int)) )
))
(declare-datatypes ((Regex!15903 0))(
  ( (ElementMatch!15903 (c!1034241 C!32076)) (Concat!24748 (regOne!32318 Regex!15903) (regTwo!32318 Regex!15903)) (EmptyExpr!15903) (Star!15903 (reg!16232 Regex!15903)) (EmptyLang!15903) (Union!15903 (regOne!32319 Regex!15903) (regTwo!32319 Regex!15903)) )
))
(declare-fun r!7292 () Regex!15903)

(declare-datatypes ((List!64008 0))(
  ( (Nil!63884) (Cons!63884 (h!70332 Regex!15903) (t!377363 List!64008)) )
))
(declare-datatypes ((Context!10574 0))(
  ( (Context!10575 (exprs!5787 List!64008)) )
))
(declare-datatypes ((List!64009 0))(
  ( (Nil!63885) (Cons!63885 (h!70333 Context!10574) (t!377364 List!64009)) )
))
(declare-fun zl!343 () List!64009)

(declare-fun generalisedUnion!1747 (List!64008) Regex!15903)

(declare-fun unfocusZipperList!1324 (List!64009) List!64008)

(assert (=> b!5837596 (= res!2459534 (not (= r!7292 (generalisedUnion!1747 (unfocusZipperList!1324 zl!343)))))))

(declare-fun b!5837597 () Bool)

(declare-fun res!2459530 () Bool)

(assert (=> b!5837597 (=> res!2459530 e!3580873)))

(declare-fun generalisedConcat!1500 (List!64008) Regex!15903)

(assert (=> b!5837597 (= res!2459530 (not (= r!7292 (generalisedConcat!1500 (exprs!5787 (h!70333 zl!343))))))))

(declare-fun b!5837598 () Bool)

(declare-fun e!3580870 () Bool)

(declare-fun tp_is_empty!41059 () Bool)

(assert (=> b!5837598 (= e!3580870 tp_is_empty!41059)))

(declare-fun b!5837599 () Bool)

(declare-fun e!3580866 () Bool)

(assert (=> b!5837599 (= e!3580873 e!3580866)))

(declare-fun res!2459536 () Bool)

(assert (=> b!5837599 (=> res!2459536 e!3580866)))

(declare-datatypes ((List!64010 0))(
  ( (Nil!63886) (Cons!63886 (h!70334 C!32076) (t!377365 List!64010)) )
))
(declare-fun s!2326 () List!64010)

(declare-fun lt!2303448 () Bool)

(declare-fun lt!2303449 () Bool)

(declare-fun lt!2303450 () Bool)

(get-info :version)

(assert (=> b!5837599 (= res!2459536 (or (not (= lt!2303448 (or lt!2303450 lt!2303449))) (not ((_ is Nil!63886) s!2326))))))

(declare-fun matchRSpec!3004 (Regex!15903 List!64010) Bool)

(assert (=> b!5837599 (= lt!2303449 (matchRSpec!3004 (regTwo!32319 r!7292) s!2326))))

(declare-fun matchR!8086 (Regex!15903 List!64010) Bool)

(assert (=> b!5837599 (= lt!2303449 (matchR!8086 (regTwo!32319 r!7292) s!2326))))

(declare-datatypes ((Unit!157077 0))(
  ( (Unit!157078) )
))
(declare-fun lt!2303452 () Unit!157077)

(declare-fun mainMatchTheorem!3004 (Regex!15903 List!64010) Unit!157077)

(assert (=> b!5837599 (= lt!2303452 (mainMatchTheorem!3004 (regTwo!32319 r!7292) s!2326))))

(assert (=> b!5837599 (= lt!2303450 (matchRSpec!3004 (regOne!32319 r!7292) s!2326))))

(assert (=> b!5837599 (= lt!2303450 (matchR!8086 (regOne!32319 r!7292) s!2326))))

(declare-fun lt!2303454 () Unit!157077)

(assert (=> b!5837599 (= lt!2303454 (mainMatchTheorem!3004 (regOne!32319 r!7292) s!2326))))

(declare-fun b!5837600 () Bool)

(declare-fun e!3580872 () Bool)

(declare-fun tp!1614043 () Bool)

(assert (=> b!5837600 (= e!3580872 (and tp_is_empty!41059 tp!1614043))))

(declare-fun b!5837601 () Bool)

(declare-fun e!3580865 () Bool)

(assert (=> b!5837601 (= e!3580865 (not e!3580873))))

(declare-fun res!2459529 () Bool)

(assert (=> b!5837601 (=> res!2459529 e!3580873)))

(assert (=> b!5837601 (= res!2459529 (not ((_ is Cons!63885) zl!343)))))

(assert (=> b!5837601 (= lt!2303448 (matchRSpec!3004 r!7292 s!2326))))

(assert (=> b!5837601 (= lt!2303448 (matchR!8086 r!7292 s!2326))))

(declare-fun lt!2303451 () Unit!157077)

(assert (=> b!5837601 (= lt!2303451 (mainMatchTheorem!3004 r!7292 s!2326))))

(declare-fun b!5837602 () Bool)

(declare-fun tp!1614041 () Bool)

(declare-fun tp!1614042 () Bool)

(assert (=> b!5837602 (= e!3580870 (and tp!1614041 tp!1614042))))

(declare-fun res!2459526 () Bool)

(assert (=> start!597708 (=> (not res!2459526) (not e!3580865))))

(declare-fun validRegex!7639 (Regex!15903) Bool)

(assert (=> start!597708 (= res!2459526 (validRegex!7639 r!7292))))

(assert (=> start!597708 e!3580865))

(assert (=> start!597708 e!3580870))

(declare-fun condSetEmpty!39538 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10574))

(assert (=> start!597708 (= condSetEmpty!39538 (= z!1189 ((as const (Array Context!10574 Bool)) false)))))

(declare-fun setRes!39538 () Bool)

(assert (=> start!597708 setRes!39538))

(declare-fun e!3580868 () Bool)

(assert (=> start!597708 e!3580868))

(assert (=> start!597708 e!3580872))

(declare-fun b!5837603 () Bool)

(declare-fun e!3580869 () Bool)

(assert (=> b!5837603 (= e!3580866 e!3580869)))

(declare-fun res!2459527 () Bool)

(assert (=> b!5837603 (=> res!2459527 e!3580869)))

(declare-fun lt!2303455 () Bool)

(declare-fun lt!2303456 () Bool)

(assert (=> b!5837603 (= res!2459527 (not (= lt!2303455 lt!2303456)))))

(assert (=> b!5837603 (= lt!2303456 lt!2303455)))

(declare-fun nullableZipper!1752 ((InoxSet Context!10574)) Bool)

(assert (=> b!5837603 (= lt!2303455 (nullableZipper!1752 z!1189))))

(declare-fun nullable!5903 (Regex!15903) Bool)

(assert (=> b!5837603 (= lt!2303456 (nullable!5903 r!7292))))

(declare-fun lt!2303453 () Unit!157077)

(declare-fun lemmaUnfocusPreservesNullability!26 (Regex!15903 (InoxSet Context!10574)) Unit!157077)

(assert (=> b!5837603 (= lt!2303453 (lemmaUnfocusPreservesNullability!26 r!7292 z!1189))))

(declare-fun b!5837604 () Bool)

(declare-fun e!3580867 () Bool)

(declare-fun tp!1614040 () Bool)

(assert (=> b!5837604 (= e!3580867 tp!1614040)))

(declare-fun b!5837605 () Bool)

(declare-fun tp!1614038 () Bool)

(declare-fun inv!83004 (Context!10574) Bool)

(assert (=> b!5837605 (= e!3580868 (and (inv!83004 (h!70333 zl!343)) e!3580867 tp!1614038))))

(declare-fun b!5837606 () Bool)

(declare-fun res!2459531 () Bool)

(assert (=> b!5837606 (=> (not res!2459531) (not e!3580865))))

(declare-fun unfocusZipper!1645 (List!64009) Regex!15903)

(assert (=> b!5837606 (= res!2459531 (= r!7292 (unfocusZipper!1645 zl!343)))))

(declare-fun b!5837607 () Bool)

(declare-fun tp!1614044 () Bool)

(declare-fun tp!1614039 () Bool)

(assert (=> b!5837607 (= e!3580870 (and tp!1614044 tp!1614039))))

(declare-fun b!5837608 () Bool)

(declare-fun tp!1614037 () Bool)

(assert (=> b!5837608 (= e!3580870 tp!1614037)))

(declare-fun b!5837609 () Bool)

(declare-fun matchZipper!1979 ((InoxSet Context!10574) List!64010) Bool)

(assert (=> b!5837609 (= e!3580869 (= (matchZipper!1979 z!1189 s!2326) lt!2303448))))

(declare-fun setElem!39538 () Context!10574)

(declare-fun tp!1614036 () Bool)

(declare-fun e!3580871 () Bool)

(declare-fun setNonEmpty!39538 () Bool)

(assert (=> setNonEmpty!39538 (= setRes!39538 (and tp!1614036 (inv!83004 setElem!39538) e!3580871))))

(declare-fun setRest!39538 () (InoxSet Context!10574))

(assert (=> setNonEmpty!39538 (= z!1189 ((_ map or) (store ((as const (Array Context!10574 Bool)) false) setElem!39538 true) setRest!39538))))

(declare-fun b!5837610 () Bool)

(declare-fun res!2459533 () Bool)

(assert (=> b!5837610 (=> (not res!2459533) (not e!3580865))))

(declare-fun toList!9687 ((InoxSet Context!10574)) List!64009)

(assert (=> b!5837610 (= res!2459533 (= (toList!9687 z!1189) zl!343))))

(declare-fun setIsEmpty!39538 () Bool)

(assert (=> setIsEmpty!39538 setRes!39538))

(declare-fun b!5837611 () Bool)

(declare-fun res!2459535 () Bool)

(assert (=> b!5837611 (=> res!2459535 e!3580873)))

(assert (=> b!5837611 (= res!2459535 (not ((_ is Cons!63884) (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5837612 () Bool)

(declare-fun res!2459528 () Bool)

(assert (=> b!5837612 (=> res!2459528 e!3580873)))

(assert (=> b!5837612 (= res!2459528 (or ((_ is EmptyExpr!15903) r!7292) ((_ is EmptyLang!15903) r!7292) ((_ is ElementMatch!15903) r!7292) (not ((_ is Union!15903) r!7292))))))

(declare-fun b!5837613 () Bool)

(declare-fun tp!1614035 () Bool)

(assert (=> b!5837613 (= e!3580871 tp!1614035)))

(declare-fun b!5837614 () Bool)

(declare-fun res!2459532 () Bool)

(assert (=> b!5837614 (=> res!2459532 e!3580873)))

(declare-fun isEmpty!35746 (List!64009) Bool)

(assert (=> b!5837614 (= res!2459532 (not (isEmpty!35746 (t!377364 zl!343))))))

(assert (= (and start!597708 res!2459526) b!5837610))

(assert (= (and b!5837610 res!2459533) b!5837606))

(assert (= (and b!5837606 res!2459531) b!5837601))

(assert (= (and b!5837601 (not res!2459529)) b!5837614))

(assert (= (and b!5837614 (not res!2459532)) b!5837597))

(assert (= (and b!5837597 (not res!2459530)) b!5837611))

(assert (= (and b!5837611 (not res!2459535)) b!5837596))

(assert (= (and b!5837596 (not res!2459534)) b!5837612))

(assert (= (and b!5837612 (not res!2459528)) b!5837599))

(assert (= (and b!5837599 (not res!2459536)) b!5837603))

(assert (= (and b!5837603 (not res!2459527)) b!5837609))

(assert (= (and start!597708 ((_ is ElementMatch!15903) r!7292)) b!5837598))

(assert (= (and start!597708 ((_ is Concat!24748) r!7292)) b!5837607))

(assert (= (and start!597708 ((_ is Star!15903) r!7292)) b!5837608))

(assert (= (and start!597708 ((_ is Union!15903) r!7292)) b!5837602))

(assert (= (and start!597708 condSetEmpty!39538) setIsEmpty!39538))

(assert (= (and start!597708 (not condSetEmpty!39538)) setNonEmpty!39538))

(assert (= setNonEmpty!39538 b!5837613))

(assert (= b!5837605 b!5837604))

(assert (= (and start!597708 ((_ is Cons!63885) zl!343)) b!5837605))

(assert (= (and start!597708 ((_ is Cons!63886) s!2326)) b!5837600))

(declare-fun m!6763412 () Bool)

(assert (=> start!597708 m!6763412))

(declare-fun m!6763414 () Bool)

(assert (=> b!5837601 m!6763414))

(declare-fun m!6763416 () Bool)

(assert (=> b!5837601 m!6763416))

(declare-fun m!6763418 () Bool)

(assert (=> b!5837601 m!6763418))

(declare-fun m!6763420 () Bool)

(assert (=> b!5837609 m!6763420))

(declare-fun m!6763422 () Bool)

(assert (=> b!5837605 m!6763422))

(declare-fun m!6763424 () Bool)

(assert (=> b!5837596 m!6763424))

(assert (=> b!5837596 m!6763424))

(declare-fun m!6763426 () Bool)

(assert (=> b!5837596 m!6763426))

(declare-fun m!6763428 () Bool)

(assert (=> b!5837597 m!6763428))

(declare-fun m!6763430 () Bool)

(assert (=> b!5837603 m!6763430))

(declare-fun m!6763432 () Bool)

(assert (=> b!5837603 m!6763432))

(declare-fun m!6763434 () Bool)

(assert (=> b!5837603 m!6763434))

(declare-fun m!6763436 () Bool)

(assert (=> setNonEmpty!39538 m!6763436))

(declare-fun m!6763438 () Bool)

(assert (=> b!5837599 m!6763438))

(declare-fun m!6763440 () Bool)

(assert (=> b!5837599 m!6763440))

(declare-fun m!6763442 () Bool)

(assert (=> b!5837599 m!6763442))

(declare-fun m!6763444 () Bool)

(assert (=> b!5837599 m!6763444))

(declare-fun m!6763446 () Bool)

(assert (=> b!5837599 m!6763446))

(declare-fun m!6763448 () Bool)

(assert (=> b!5837599 m!6763448))

(declare-fun m!6763450 () Bool)

(assert (=> b!5837614 m!6763450))

(declare-fun m!6763452 () Bool)

(assert (=> b!5837610 m!6763452))

(declare-fun m!6763454 () Bool)

(assert (=> b!5837606 m!6763454))

(check-sat (not b!5837603) (not b!5837600) (not b!5837597) tp_is_empty!41059 (not b!5837605) (not b!5837608) (not b!5837609) (not b!5837596) (not b!5837613) (not b!5837599) (not b!5837614) (not b!5837602) (not b!5837606) (not b!5837610) (not setNonEmpty!39538) (not b!5837607) (not b!5837601) (not b!5837604) (not start!597708))
(check-sat)
(get-model)

(declare-fun b!5837805 () Bool)

(declare-fun e!3580980 () Regex!15903)

(assert (=> b!5837805 (= e!3580980 (h!70332 (exprs!5787 (h!70333 zl!343))))))

(declare-fun b!5837806 () Bool)

(declare-fun e!3580985 () Bool)

(declare-fun lt!2303480 () Regex!15903)

(declare-fun isEmptyExpr!1339 (Regex!15903) Bool)

(assert (=> b!5837806 (= e!3580985 (isEmptyExpr!1339 lt!2303480))))

(declare-fun d!1834535 () Bool)

(declare-fun e!3580982 () Bool)

(assert (=> d!1834535 e!3580982))

(declare-fun res!2459608 () Bool)

(assert (=> d!1834535 (=> (not res!2459608) (not e!3580982))))

(assert (=> d!1834535 (= res!2459608 (validRegex!7639 lt!2303480))))

(assert (=> d!1834535 (= lt!2303480 e!3580980)))

(declare-fun c!1034303 () Bool)

(declare-fun e!3580981 () Bool)

(assert (=> d!1834535 (= c!1034303 e!3580981)))

(declare-fun res!2459607 () Bool)

(assert (=> d!1834535 (=> (not res!2459607) (not e!3580981))))

(assert (=> d!1834535 (= res!2459607 ((_ is Cons!63884) (exprs!5787 (h!70333 zl!343))))))

(declare-fun lambda!319368 () Int)

(declare-fun forall!14992 (List!64008 Int) Bool)

(assert (=> d!1834535 (forall!14992 (exprs!5787 (h!70333 zl!343)) lambda!319368)))

(assert (=> d!1834535 (= (generalisedConcat!1500 (exprs!5787 (h!70333 zl!343))) lt!2303480)))

(declare-fun b!5837807 () Bool)

(declare-fun isEmpty!35749 (List!64008) Bool)

(assert (=> b!5837807 (= e!3580981 (isEmpty!35749 (t!377363 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5837808 () Bool)

(declare-fun e!3580984 () Regex!15903)

(assert (=> b!5837808 (= e!3580980 e!3580984)))

(declare-fun c!1034305 () Bool)

(assert (=> b!5837808 (= c!1034305 ((_ is Cons!63884) (exprs!5787 (h!70333 zl!343))))))

(declare-fun b!5837809 () Bool)

(declare-fun e!3580983 () Bool)

(assert (=> b!5837809 (= e!3580985 e!3580983)))

(declare-fun c!1034302 () Bool)

(declare-fun tail!11449 (List!64008) List!64008)

(assert (=> b!5837809 (= c!1034302 (isEmpty!35749 (tail!11449 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5837810 () Bool)

(assert (=> b!5837810 (= e!3580984 EmptyExpr!15903)))

(declare-fun b!5837811 () Bool)

(declare-fun head!12364 (List!64008) Regex!15903)

(assert (=> b!5837811 (= e!3580983 (= lt!2303480 (head!12364 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5837812 () Bool)

(declare-fun isConcat!862 (Regex!15903) Bool)

(assert (=> b!5837812 (= e!3580983 (isConcat!862 lt!2303480))))

(declare-fun b!5837813 () Bool)

(assert (=> b!5837813 (= e!3580982 e!3580985)))

(declare-fun c!1034304 () Bool)

(assert (=> b!5837813 (= c!1034304 (isEmpty!35749 (exprs!5787 (h!70333 zl!343))))))

(declare-fun b!5837814 () Bool)

(assert (=> b!5837814 (= e!3580984 (Concat!24748 (h!70332 (exprs!5787 (h!70333 zl!343))) (generalisedConcat!1500 (t!377363 (exprs!5787 (h!70333 zl!343))))))))

(assert (= (and d!1834535 res!2459607) b!5837807))

(assert (= (and d!1834535 c!1034303) b!5837805))

(assert (= (and d!1834535 (not c!1034303)) b!5837808))

(assert (= (and b!5837808 c!1034305) b!5837814))

(assert (= (and b!5837808 (not c!1034305)) b!5837810))

(assert (= (and d!1834535 res!2459608) b!5837813))

(assert (= (and b!5837813 c!1034304) b!5837806))

(assert (= (and b!5837813 (not c!1034304)) b!5837809))

(assert (= (and b!5837809 c!1034302) b!5837811))

(assert (= (and b!5837809 (not c!1034302)) b!5837812))

(declare-fun m!6763532 () Bool)

(assert (=> b!5837806 m!6763532))

(declare-fun m!6763534 () Bool)

(assert (=> b!5837807 m!6763534))

(declare-fun m!6763536 () Bool)

(assert (=> b!5837811 m!6763536))

(declare-fun m!6763538 () Bool)

(assert (=> b!5837812 m!6763538))

(declare-fun m!6763540 () Bool)

(assert (=> b!5837813 m!6763540))

(declare-fun m!6763542 () Bool)

(assert (=> b!5837814 m!6763542))

(declare-fun m!6763544 () Bool)

(assert (=> d!1834535 m!6763544))

(declare-fun m!6763546 () Bool)

(assert (=> d!1834535 m!6763546))

(declare-fun m!6763548 () Bool)

(assert (=> b!5837809 m!6763548))

(assert (=> b!5837809 m!6763548))

(declare-fun m!6763550 () Bool)

(assert (=> b!5837809 m!6763550))

(assert (=> b!5837597 d!1834535))

(declare-fun d!1834569 () Bool)

(declare-fun lt!2303484 () Regex!15903)

(assert (=> d!1834569 (validRegex!7639 lt!2303484)))

(assert (=> d!1834569 (= lt!2303484 (generalisedUnion!1747 (unfocusZipperList!1324 zl!343)))))

(assert (=> d!1834569 (= (unfocusZipper!1645 zl!343) lt!2303484)))

(declare-fun bs!1375490 () Bool)

(assert (= bs!1375490 d!1834569))

(declare-fun m!6763558 () Bool)

(assert (=> bs!1375490 m!6763558))

(assert (=> bs!1375490 m!6763424))

(assert (=> bs!1375490 m!6763424))

(assert (=> bs!1375490 m!6763426))

(assert (=> b!5837606 d!1834569))

(declare-fun bs!1375495 () Bool)

(declare-fun d!1834573 () Bool)

(assert (= bs!1375495 (and d!1834573 d!1834535)))

(declare-fun lambda!319376 () Int)

(assert (=> bs!1375495 (= lambda!319376 lambda!319368)))

(declare-fun b!5837867 () Bool)

(declare-fun e!3581021 () Regex!15903)

(declare-fun e!3581023 () Regex!15903)

(assert (=> b!5837867 (= e!3581021 e!3581023)))

(declare-fun c!1034324 () Bool)

(assert (=> b!5837867 (= c!1034324 ((_ is Cons!63884) (unfocusZipperList!1324 zl!343)))))

(declare-fun b!5837868 () Bool)

(assert (=> b!5837868 (= e!3581023 EmptyLang!15903)))

(declare-fun b!5837869 () Bool)

(assert (=> b!5837869 (= e!3581023 (Union!15903 (h!70332 (unfocusZipperList!1324 zl!343)) (generalisedUnion!1747 (t!377363 (unfocusZipperList!1324 zl!343)))))))

(declare-fun b!5837870 () Bool)

(declare-fun e!3581022 () Bool)

(declare-fun lt!2303490 () Regex!15903)

(declare-fun isUnion!778 (Regex!15903) Bool)

(assert (=> b!5837870 (= e!3581022 (isUnion!778 lt!2303490))))

(declare-fun b!5837871 () Bool)

(assert (=> b!5837871 (= e!3581022 (= lt!2303490 (head!12364 (unfocusZipperList!1324 zl!343))))))

(declare-fun b!5837872 () Bool)

(declare-fun e!3581020 () Bool)

(assert (=> b!5837872 (= e!3581020 (isEmpty!35749 (t!377363 (unfocusZipperList!1324 zl!343))))))

(declare-fun e!3581024 () Bool)

(assert (=> d!1834573 e!3581024))

(declare-fun res!2459632 () Bool)

(assert (=> d!1834573 (=> (not res!2459632) (not e!3581024))))

(assert (=> d!1834573 (= res!2459632 (validRegex!7639 lt!2303490))))

(assert (=> d!1834573 (= lt!2303490 e!3581021)))

(declare-fun c!1034322 () Bool)

(assert (=> d!1834573 (= c!1034322 e!3581020)))

(declare-fun res!2459631 () Bool)

(assert (=> d!1834573 (=> (not res!2459631) (not e!3581020))))

(assert (=> d!1834573 (= res!2459631 ((_ is Cons!63884) (unfocusZipperList!1324 zl!343)))))

(assert (=> d!1834573 (forall!14992 (unfocusZipperList!1324 zl!343) lambda!319376)))

(assert (=> d!1834573 (= (generalisedUnion!1747 (unfocusZipperList!1324 zl!343)) lt!2303490)))

(declare-fun b!5837873 () Bool)

(declare-fun e!3581019 () Bool)

(assert (=> b!5837873 (= e!3581019 e!3581022)))

(declare-fun c!1034323 () Bool)

(assert (=> b!5837873 (= c!1034323 (isEmpty!35749 (tail!11449 (unfocusZipperList!1324 zl!343))))))

(declare-fun b!5837874 () Bool)

(declare-fun isEmptyLang!1348 (Regex!15903) Bool)

(assert (=> b!5837874 (= e!3581019 (isEmptyLang!1348 lt!2303490))))

(declare-fun b!5837875 () Bool)

(assert (=> b!5837875 (= e!3581024 e!3581019)))

(declare-fun c!1034321 () Bool)

(assert (=> b!5837875 (= c!1034321 (isEmpty!35749 (unfocusZipperList!1324 zl!343)))))

(declare-fun b!5837876 () Bool)

(assert (=> b!5837876 (= e!3581021 (h!70332 (unfocusZipperList!1324 zl!343)))))

(assert (= (and d!1834573 res!2459631) b!5837872))

(assert (= (and d!1834573 c!1034322) b!5837876))

(assert (= (and d!1834573 (not c!1034322)) b!5837867))

(assert (= (and b!5837867 c!1034324) b!5837869))

(assert (= (and b!5837867 (not c!1034324)) b!5837868))

(assert (= (and d!1834573 res!2459632) b!5837875))

(assert (= (and b!5837875 c!1034321) b!5837874))

(assert (= (and b!5837875 (not c!1034321)) b!5837873))

(assert (= (and b!5837873 c!1034323) b!5837871))

(assert (= (and b!5837873 (not c!1034323)) b!5837870))

(declare-fun m!6763570 () Bool)

(assert (=> b!5837872 m!6763570))

(assert (=> b!5837873 m!6763424))

(declare-fun m!6763572 () Bool)

(assert (=> b!5837873 m!6763572))

(assert (=> b!5837873 m!6763572))

(declare-fun m!6763574 () Bool)

(assert (=> b!5837873 m!6763574))

(declare-fun m!6763576 () Bool)

(assert (=> b!5837869 m!6763576))

(assert (=> b!5837875 m!6763424))

(declare-fun m!6763578 () Bool)

(assert (=> b!5837875 m!6763578))

(declare-fun m!6763580 () Bool)

(assert (=> d!1834573 m!6763580))

(assert (=> d!1834573 m!6763424))

(declare-fun m!6763582 () Bool)

(assert (=> d!1834573 m!6763582))

(declare-fun m!6763584 () Bool)

(assert (=> b!5837870 m!6763584))

(assert (=> b!5837871 m!6763424))

(declare-fun m!6763586 () Bool)

(assert (=> b!5837871 m!6763586))

(declare-fun m!6763588 () Bool)

(assert (=> b!5837874 m!6763588))

(assert (=> b!5837596 d!1834573))

(declare-fun bs!1375500 () Bool)

(declare-fun d!1834581 () Bool)

(assert (= bs!1375500 (and d!1834581 d!1834535)))

(declare-fun lambda!319380 () Int)

(assert (=> bs!1375500 (= lambda!319380 lambda!319368)))

(declare-fun bs!1375501 () Bool)

(assert (= bs!1375501 (and d!1834581 d!1834573)))

(assert (=> bs!1375501 (= lambda!319380 lambda!319376)))

(declare-fun lt!2303493 () List!64008)

(assert (=> d!1834581 (forall!14992 lt!2303493 lambda!319380)))

(declare-fun e!3581034 () List!64008)

(assert (=> d!1834581 (= lt!2303493 e!3581034)))

(declare-fun c!1034329 () Bool)

(assert (=> d!1834581 (= c!1034329 ((_ is Cons!63885) zl!343))))

(assert (=> d!1834581 (= (unfocusZipperList!1324 zl!343) lt!2303493)))

(declare-fun b!5837890 () Bool)

(assert (=> b!5837890 (= e!3581034 (Cons!63884 (generalisedConcat!1500 (exprs!5787 (h!70333 zl!343))) (unfocusZipperList!1324 (t!377364 zl!343))))))

(declare-fun b!5837891 () Bool)

(assert (=> b!5837891 (= e!3581034 Nil!63884)))

(assert (= (and d!1834581 c!1034329) b!5837890))

(assert (= (and d!1834581 (not c!1034329)) b!5837891))

(declare-fun m!6763598 () Bool)

(assert (=> d!1834581 m!6763598))

(assert (=> b!5837890 m!6763428))

(declare-fun m!6763600 () Bool)

(assert (=> b!5837890 m!6763600))

(assert (=> b!5837596 d!1834581))

(declare-fun b!5837940 () Bool)

(declare-fun e!3581072 () Bool)

(declare-fun e!3581070 () Bool)

(assert (=> b!5837940 (= e!3581072 e!3581070)))

(declare-fun c!1034347 () Bool)

(assert (=> b!5837940 (= c!1034347 ((_ is Union!15903) r!7292))))

(declare-fun b!5837941 () Bool)

(declare-fun res!2459658 () Bool)

(declare-fun e!3581073 () Bool)

(assert (=> b!5837941 (=> (not res!2459658) (not e!3581073))))

(declare-fun call!455894 () Bool)

(assert (=> b!5837941 (= res!2459658 call!455894)))

(assert (=> b!5837941 (= e!3581070 e!3581073)))

(declare-fun d!1834587 () Bool)

(declare-fun res!2459657 () Bool)

(declare-fun e!3581068 () Bool)

(assert (=> d!1834587 (=> res!2459657 e!3581068)))

(assert (=> d!1834587 (= res!2459657 ((_ is ElementMatch!15903) r!7292))))

(assert (=> d!1834587 (= (validRegex!7639 r!7292) e!3581068)))

(declare-fun b!5837942 () Bool)

(declare-fun e!3581069 () Bool)

(assert (=> b!5837942 (= e!3581072 e!3581069)))

(declare-fun res!2459656 () Bool)

(assert (=> b!5837942 (= res!2459656 (not (nullable!5903 (reg!16232 r!7292))))))

(assert (=> b!5837942 (=> (not res!2459656) (not e!3581069))))

(declare-fun b!5837943 () Bool)

(declare-fun e!3581071 () Bool)

(declare-fun call!455895 () Bool)

(assert (=> b!5837943 (= e!3581071 call!455895)))

(declare-fun c!1034346 () Bool)

(declare-fun call!455893 () Bool)

(declare-fun bm!455888 () Bool)

(assert (=> bm!455888 (= call!455893 (validRegex!7639 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))))))

(declare-fun b!5837944 () Bool)

(assert (=> b!5837944 (= e!3581069 call!455893)))

(declare-fun b!5837945 () Bool)

(declare-fun res!2459655 () Bool)

(declare-fun e!3581067 () Bool)

(assert (=> b!5837945 (=> res!2459655 e!3581067)))

(assert (=> b!5837945 (= res!2459655 (not ((_ is Concat!24748) r!7292)))))

(assert (=> b!5837945 (= e!3581070 e!3581067)))

(declare-fun bm!455889 () Bool)

(assert (=> bm!455889 (= call!455895 call!455893)))

(declare-fun bm!455890 () Bool)

(assert (=> bm!455890 (= call!455894 (validRegex!7639 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))))))

(declare-fun b!5837946 () Bool)

(assert (=> b!5837946 (= e!3581068 e!3581072)))

(assert (=> b!5837946 (= c!1034346 ((_ is Star!15903) r!7292))))

(declare-fun b!5837947 () Bool)

(assert (=> b!5837947 (= e!3581067 e!3581071)))

(declare-fun res!2459654 () Bool)

(assert (=> b!5837947 (=> (not res!2459654) (not e!3581071))))

(assert (=> b!5837947 (= res!2459654 call!455894)))

(declare-fun b!5837948 () Bool)

(assert (=> b!5837948 (= e!3581073 call!455895)))

(assert (= (and d!1834587 (not res!2459657)) b!5837946))

(assert (= (and b!5837946 c!1034346) b!5837942))

(assert (= (and b!5837946 (not c!1034346)) b!5837940))

(assert (= (and b!5837942 res!2459656) b!5837944))

(assert (= (and b!5837940 c!1034347) b!5837941))

(assert (= (and b!5837940 (not c!1034347)) b!5837945))

(assert (= (and b!5837941 res!2459658) b!5837948))

(assert (= (and b!5837945 (not res!2459655)) b!5837947))

(assert (= (and b!5837947 res!2459654) b!5837943))

(assert (= (or b!5837948 b!5837943) bm!455889))

(assert (= (or b!5837941 b!5837947) bm!455890))

(assert (= (or b!5837944 bm!455889) bm!455888))

(declare-fun m!6763622 () Bool)

(assert (=> b!5837942 m!6763622))

(declare-fun m!6763624 () Bool)

(assert (=> bm!455888 m!6763624))

(declare-fun m!6763626 () Bool)

(assert (=> bm!455890 m!6763626))

(assert (=> start!597708 d!1834587))

(declare-fun d!1834589 () Bool)

(assert (=> d!1834589 (= (isEmpty!35746 (t!377364 zl!343)) ((_ is Nil!63885) (t!377364 zl!343)))))

(assert (=> b!5837614 d!1834589))

(declare-fun bs!1375506 () Bool)

(declare-fun d!1834591 () Bool)

(assert (= bs!1375506 (and d!1834591 d!1834535)))

(declare-fun lambda!319386 () Int)

(assert (=> bs!1375506 (= lambda!319386 lambda!319368)))

(declare-fun bs!1375507 () Bool)

(assert (= bs!1375507 (and d!1834591 d!1834573)))

(assert (=> bs!1375507 (= lambda!319386 lambda!319376)))

(declare-fun bs!1375508 () Bool)

(assert (= bs!1375508 (and d!1834591 d!1834581)))

(assert (=> bs!1375508 (= lambda!319386 lambda!319380)))

(assert (=> d!1834591 (= (inv!83004 (h!70333 zl!343)) (forall!14992 (exprs!5787 (h!70333 zl!343)) lambda!319386))))

(declare-fun bs!1375509 () Bool)

(assert (= bs!1375509 d!1834591))

(declare-fun m!6763628 () Bool)

(assert (=> bs!1375509 m!6763628))

(assert (=> b!5837605 d!1834591))

(declare-fun d!1834593 () Bool)

(declare-fun lambda!319389 () Int)

(declare-fun exists!2297 ((InoxSet Context!10574) Int) Bool)

(assert (=> d!1834593 (= (nullableZipper!1752 z!1189) (exists!2297 z!1189 lambda!319389))))

(declare-fun bs!1375510 () Bool)

(assert (= bs!1375510 d!1834593))

(declare-fun m!6763634 () Bool)

(assert (=> bs!1375510 m!6763634))

(assert (=> b!5837603 d!1834593))

(declare-fun d!1834595 () Bool)

(declare-fun nullableFct!1892 (Regex!15903) Bool)

(assert (=> d!1834595 (= (nullable!5903 r!7292) (nullableFct!1892 r!7292))))

(declare-fun bs!1375511 () Bool)

(assert (= bs!1375511 d!1834595))

(declare-fun m!6763636 () Bool)

(assert (=> bs!1375511 m!6763636))

(assert (=> b!5837603 d!1834595))

(declare-fun d!1834597 () Bool)

(assert (=> d!1834597 (= (nullable!5903 r!7292) (nullableZipper!1752 z!1189))))

(declare-fun lt!2303499 () Unit!157077)

(declare-fun choose!44327 (Regex!15903 (InoxSet Context!10574)) Unit!157077)

(assert (=> d!1834597 (= lt!2303499 (choose!44327 r!7292 z!1189))))

(assert (=> d!1834597 (validRegex!7639 r!7292)))

(assert (=> d!1834597 (= (lemmaUnfocusPreservesNullability!26 r!7292 z!1189) lt!2303499)))

(declare-fun bs!1375512 () Bool)

(assert (= bs!1375512 d!1834597))

(assert (=> bs!1375512 m!6763432))

(assert (=> bs!1375512 m!6763430))

(declare-fun m!6763638 () Bool)

(assert (=> bs!1375512 m!6763638))

(assert (=> bs!1375512 m!6763412))

(assert (=> b!5837603 d!1834597))

(declare-fun b!5838036 () Bool)

(assert (=> b!5838036 true))

(assert (=> b!5838036 true))

(declare-fun bs!1375513 () Bool)

(declare-fun b!5838043 () Bool)

(assert (= bs!1375513 (and b!5838043 b!5838036)))

(declare-fun lambda!319395 () Int)

(declare-fun lambda!319394 () Int)

(assert (=> bs!1375513 (not (= lambda!319395 lambda!319394))))

(assert (=> b!5838043 true))

(assert (=> b!5838043 true))

(declare-fun bm!455895 () Bool)

(declare-fun call!455900 () Bool)

(declare-fun isEmpty!35750 (List!64010) Bool)

(assert (=> bm!455895 (= call!455900 (isEmpty!35750 s!2326))))

(declare-fun b!5838035 () Bool)

(declare-fun e!3581115 () Bool)

(assert (=> b!5838035 (= e!3581115 (matchRSpec!3004 (regTwo!32319 r!7292) s!2326))))

(declare-fun e!3581117 () Bool)

(declare-fun call!455901 () Bool)

(assert (=> b!5838036 (= e!3581117 call!455901)))

(declare-fun b!5838037 () Bool)

(declare-fun c!1034359 () Bool)

(assert (=> b!5838037 (= c!1034359 ((_ is Union!15903) r!7292))))

(declare-fun e!3581120 () Bool)

(declare-fun e!3581119 () Bool)

(assert (=> b!5838037 (= e!3581120 e!3581119)))

(declare-fun b!5838038 () Bool)

(declare-fun e!3581118 () Bool)

(assert (=> b!5838038 (= e!3581118 call!455900)))

(declare-fun b!5838039 () Bool)

(declare-fun res!2459675 () Bool)

(assert (=> b!5838039 (=> res!2459675 e!3581117)))

(assert (=> b!5838039 (= res!2459675 call!455900)))

(declare-fun e!3581121 () Bool)

(assert (=> b!5838039 (= e!3581121 e!3581117)))

(declare-fun bm!455896 () Bool)

(declare-fun c!1034358 () Bool)

(declare-fun Exists!2977 (Int) Bool)

(assert (=> bm!455896 (= call!455901 (Exists!2977 (ite c!1034358 lambda!319394 lambda!319395)))))

(declare-fun b!5838040 () Bool)

(assert (=> b!5838040 (= e!3581119 e!3581115)))

(declare-fun res!2459676 () Bool)

(assert (=> b!5838040 (= res!2459676 (matchRSpec!3004 (regOne!32319 r!7292) s!2326))))

(assert (=> b!5838040 (=> res!2459676 e!3581115)))

(declare-fun b!5838041 () Bool)

(declare-fun e!3581116 () Bool)

(assert (=> b!5838041 (= e!3581118 e!3581116)))

(declare-fun res!2459677 () Bool)

(assert (=> b!5838041 (= res!2459677 (not ((_ is EmptyLang!15903) r!7292)))))

(assert (=> b!5838041 (=> (not res!2459677) (not e!3581116))))

(declare-fun b!5838042 () Bool)

(declare-fun c!1034360 () Bool)

(assert (=> b!5838042 (= c!1034360 ((_ is ElementMatch!15903) r!7292))))

(assert (=> b!5838042 (= e!3581116 e!3581120)))

(assert (=> b!5838043 (= e!3581121 call!455901)))

(declare-fun b!5838044 () Bool)

(assert (=> b!5838044 (= e!3581119 e!3581121)))

(assert (=> b!5838044 (= c!1034358 ((_ is Star!15903) r!7292))))

(declare-fun d!1834599 () Bool)

(declare-fun c!1034361 () Bool)

(assert (=> d!1834599 (= c!1034361 ((_ is EmptyExpr!15903) r!7292))))

(assert (=> d!1834599 (= (matchRSpec!3004 r!7292 s!2326) e!3581118)))

(declare-fun b!5838045 () Bool)

(assert (=> b!5838045 (= e!3581120 (= s!2326 (Cons!63886 (c!1034241 r!7292) Nil!63886)))))

(assert (= (and d!1834599 c!1034361) b!5838038))

(assert (= (and d!1834599 (not c!1034361)) b!5838041))

(assert (= (and b!5838041 res!2459677) b!5838042))

(assert (= (and b!5838042 c!1034360) b!5838045))

(assert (= (and b!5838042 (not c!1034360)) b!5838037))

(assert (= (and b!5838037 c!1034359) b!5838040))

(assert (= (and b!5838037 (not c!1034359)) b!5838044))

(assert (= (and b!5838040 (not res!2459676)) b!5838035))

(assert (= (and b!5838044 c!1034358) b!5838039))

(assert (= (and b!5838044 (not c!1034358)) b!5838043))

(assert (= (and b!5838039 (not res!2459675)) b!5838036))

(assert (= (or b!5838036 b!5838043) bm!455896))

(assert (= (or b!5838038 b!5838039) bm!455895))

(declare-fun m!6763640 () Bool)

(assert (=> bm!455895 m!6763640))

(assert (=> b!5838035 m!6763438))

(declare-fun m!6763642 () Bool)

(assert (=> bm!455896 m!6763642))

(assert (=> b!5838040 m!6763444))

(assert (=> b!5837601 d!1834599))

(declare-fun b!5838078 () Bool)

(declare-fun res!2459699 () Bool)

(declare-fun e!3581136 () Bool)

(assert (=> b!5838078 (=> res!2459699 e!3581136)))

(declare-fun tail!11450 (List!64010) List!64010)

(assert (=> b!5838078 (= res!2459699 (not (isEmpty!35750 (tail!11450 s!2326))))))

(declare-fun b!5838079 () Bool)

(declare-fun e!3581141 () Bool)

(declare-fun derivativeStep!4643 (Regex!15903 C!32076) Regex!15903)

(declare-fun head!12365 (List!64010) C!32076)

(assert (=> b!5838079 (= e!3581141 (matchR!8086 (derivativeStep!4643 r!7292 (head!12365 s!2326)) (tail!11450 s!2326)))))

(declare-fun b!5838080 () Bool)

(declare-fun e!3581142 () Bool)

(assert (=> b!5838080 (= e!3581142 (= (head!12365 s!2326) (c!1034241 r!7292)))))

(declare-fun b!5838081 () Bool)

(declare-fun res!2459700 () Bool)

(declare-fun e!3581138 () Bool)

(assert (=> b!5838081 (=> res!2459700 e!3581138)))

(assert (=> b!5838081 (= res!2459700 (not ((_ is ElementMatch!15903) r!7292)))))

(declare-fun e!3581140 () Bool)

(assert (=> b!5838081 (= e!3581140 e!3581138)))

(declare-fun b!5838082 () Bool)

(declare-fun e!3581137 () Bool)

(assert (=> b!5838082 (= e!3581137 e!3581140)))

(declare-fun c!1034368 () Bool)

(assert (=> b!5838082 (= c!1034368 ((_ is EmptyLang!15903) r!7292))))

(declare-fun b!5838083 () Bool)

(declare-fun lt!2303502 () Bool)

(assert (=> b!5838083 (= e!3581140 (not lt!2303502))))

(declare-fun b!5838084 () Bool)

(declare-fun e!3581139 () Bool)

(assert (=> b!5838084 (= e!3581138 e!3581139)))

(declare-fun res!2459698 () Bool)

(assert (=> b!5838084 (=> (not res!2459698) (not e!3581139))))

(assert (=> b!5838084 (= res!2459698 (not lt!2303502))))

(declare-fun b!5838085 () Bool)

(declare-fun res!2459697 () Bool)

(assert (=> b!5838085 (=> (not res!2459697) (not e!3581142))))

(declare-fun call!455904 () Bool)

(assert (=> b!5838085 (= res!2459697 (not call!455904))))

(declare-fun b!5838086 () Bool)

(assert (=> b!5838086 (= e!3581141 (nullable!5903 r!7292))))

(declare-fun bm!455899 () Bool)

(assert (=> bm!455899 (= call!455904 (isEmpty!35750 s!2326))))

(declare-fun b!5838087 () Bool)

(declare-fun res!2459695 () Bool)

(assert (=> b!5838087 (=> res!2459695 e!3581138)))

(assert (=> b!5838087 (= res!2459695 e!3581142)))

(declare-fun res!2459701 () Bool)

(assert (=> b!5838087 (=> (not res!2459701) (not e!3581142))))

(assert (=> b!5838087 (= res!2459701 lt!2303502)))

(declare-fun b!5838088 () Bool)

(assert (=> b!5838088 (= e!3581139 e!3581136)))

(declare-fun res!2459696 () Bool)

(assert (=> b!5838088 (=> res!2459696 e!3581136)))

(assert (=> b!5838088 (= res!2459696 call!455904)))

(declare-fun b!5838089 () Bool)

(assert (=> b!5838089 (= e!3581136 (not (= (head!12365 s!2326) (c!1034241 r!7292))))))

(declare-fun d!1834601 () Bool)

(assert (=> d!1834601 e!3581137))

(declare-fun c!1034369 () Bool)

(assert (=> d!1834601 (= c!1034369 ((_ is EmptyExpr!15903) r!7292))))

(assert (=> d!1834601 (= lt!2303502 e!3581141)))

(declare-fun c!1034370 () Bool)

(assert (=> d!1834601 (= c!1034370 (isEmpty!35750 s!2326))))

(assert (=> d!1834601 (validRegex!7639 r!7292)))

(assert (=> d!1834601 (= (matchR!8086 r!7292 s!2326) lt!2303502)))

(declare-fun b!5838090 () Bool)

(declare-fun res!2459694 () Bool)

(assert (=> b!5838090 (=> (not res!2459694) (not e!3581142))))

(assert (=> b!5838090 (= res!2459694 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun b!5838091 () Bool)

(assert (=> b!5838091 (= e!3581137 (= lt!2303502 call!455904))))

(assert (= (and d!1834601 c!1034370) b!5838086))

(assert (= (and d!1834601 (not c!1034370)) b!5838079))

(assert (= (and d!1834601 c!1034369) b!5838091))

(assert (= (and d!1834601 (not c!1034369)) b!5838082))

(assert (= (and b!5838082 c!1034368) b!5838083))

(assert (= (and b!5838082 (not c!1034368)) b!5838081))

(assert (= (and b!5838081 (not res!2459700)) b!5838087))

(assert (= (and b!5838087 res!2459701) b!5838085))

(assert (= (and b!5838085 res!2459697) b!5838090))

(assert (= (and b!5838090 res!2459694) b!5838080))

(assert (= (and b!5838087 (not res!2459695)) b!5838084))

(assert (= (and b!5838084 res!2459698) b!5838088))

(assert (= (and b!5838088 (not res!2459696)) b!5838078))

(assert (= (and b!5838078 (not res!2459699)) b!5838089))

(assert (= (or b!5838091 b!5838085 b!5838088) bm!455899))

(declare-fun m!6763644 () Bool)

(assert (=> b!5838079 m!6763644))

(assert (=> b!5838079 m!6763644))

(declare-fun m!6763646 () Bool)

(assert (=> b!5838079 m!6763646))

(declare-fun m!6763648 () Bool)

(assert (=> b!5838079 m!6763648))

(assert (=> b!5838079 m!6763646))

(assert (=> b!5838079 m!6763648))

(declare-fun m!6763650 () Bool)

(assert (=> b!5838079 m!6763650))

(assert (=> bm!455899 m!6763640))

(assert (=> b!5838089 m!6763644))

(assert (=> b!5838090 m!6763648))

(assert (=> b!5838090 m!6763648))

(declare-fun m!6763652 () Bool)

(assert (=> b!5838090 m!6763652))

(assert (=> b!5838078 m!6763648))

(assert (=> b!5838078 m!6763648))

(assert (=> b!5838078 m!6763652))

(assert (=> b!5838086 m!6763432))

(assert (=> b!5838080 m!6763644))

(assert (=> d!1834601 m!6763640))

(assert (=> d!1834601 m!6763412))

(assert (=> b!5837601 d!1834601))

(declare-fun d!1834603 () Bool)

(assert (=> d!1834603 (= (matchR!8086 r!7292 s!2326) (matchRSpec!3004 r!7292 s!2326))))

(declare-fun lt!2303505 () Unit!157077)

(declare-fun choose!44328 (Regex!15903 List!64010) Unit!157077)

(assert (=> d!1834603 (= lt!2303505 (choose!44328 r!7292 s!2326))))

(assert (=> d!1834603 (validRegex!7639 r!7292)))

(assert (=> d!1834603 (= (mainMatchTheorem!3004 r!7292 s!2326) lt!2303505)))

(declare-fun bs!1375514 () Bool)

(assert (= bs!1375514 d!1834603))

(assert (=> bs!1375514 m!6763416))

(assert (=> bs!1375514 m!6763414))

(declare-fun m!6763654 () Bool)

(assert (=> bs!1375514 m!6763654))

(assert (=> bs!1375514 m!6763412))

(assert (=> b!5837601 d!1834603))

(declare-fun d!1834605 () Bool)

(declare-fun c!1034373 () Bool)

(assert (=> d!1834605 (= c!1034373 (isEmpty!35750 s!2326))))

(declare-fun e!3581145 () Bool)

(assert (=> d!1834605 (= (matchZipper!1979 z!1189 s!2326) e!3581145)))

(declare-fun b!5838096 () Bool)

(assert (=> b!5838096 (= e!3581145 (nullableZipper!1752 z!1189))))

(declare-fun b!5838097 () Bool)

(declare-fun derivationStepZipper!1914 ((InoxSet Context!10574) C!32076) (InoxSet Context!10574))

(assert (=> b!5838097 (= e!3581145 (matchZipper!1979 (derivationStepZipper!1914 z!1189 (head!12365 s!2326)) (tail!11450 s!2326)))))

(assert (= (and d!1834605 c!1034373) b!5838096))

(assert (= (and d!1834605 (not c!1034373)) b!5838097))

(assert (=> d!1834605 m!6763640))

(assert (=> b!5838096 m!6763430))

(assert (=> b!5838097 m!6763644))

(assert (=> b!5838097 m!6763644))

(declare-fun m!6763656 () Bool)

(assert (=> b!5838097 m!6763656))

(assert (=> b!5838097 m!6763648))

(assert (=> b!5838097 m!6763656))

(assert (=> b!5838097 m!6763648))

(declare-fun m!6763658 () Bool)

(assert (=> b!5838097 m!6763658))

(assert (=> b!5837609 d!1834605))

(declare-fun d!1834607 () Bool)

(declare-fun e!3581148 () Bool)

(assert (=> d!1834607 e!3581148))

(declare-fun res!2459704 () Bool)

(assert (=> d!1834607 (=> (not res!2459704) (not e!3581148))))

(declare-fun lt!2303508 () List!64009)

(declare-fun noDuplicate!1770 (List!64009) Bool)

(assert (=> d!1834607 (= res!2459704 (noDuplicate!1770 lt!2303508))))

(declare-fun choose!44329 ((InoxSet Context!10574)) List!64009)

(assert (=> d!1834607 (= lt!2303508 (choose!44329 z!1189))))

(assert (=> d!1834607 (= (toList!9687 z!1189) lt!2303508)))

(declare-fun b!5838100 () Bool)

(declare-fun content!11735 (List!64009) (InoxSet Context!10574))

(assert (=> b!5838100 (= e!3581148 (= (content!11735 lt!2303508) z!1189))))

(assert (= (and d!1834607 res!2459704) b!5838100))

(declare-fun m!6763660 () Bool)

(assert (=> d!1834607 m!6763660))

(declare-fun m!6763662 () Bool)

(assert (=> d!1834607 m!6763662))

(declare-fun m!6763664 () Bool)

(assert (=> b!5838100 m!6763664))

(assert (=> b!5837610 d!1834607))

(declare-fun bs!1375515 () Bool)

(declare-fun b!5838102 () Bool)

(assert (= bs!1375515 (and b!5838102 b!5838036)))

(declare-fun lambda!319396 () Int)

(assert (=> bs!1375515 (= (and (= (reg!16232 (regTwo!32319 r!7292)) (reg!16232 r!7292)) (= (regTwo!32319 r!7292) r!7292)) (= lambda!319396 lambda!319394))))

(declare-fun bs!1375516 () Bool)

(assert (= bs!1375516 (and b!5838102 b!5838043)))

(assert (=> bs!1375516 (not (= lambda!319396 lambda!319395))))

(assert (=> b!5838102 true))

(assert (=> b!5838102 true))

(declare-fun bs!1375517 () Bool)

(declare-fun b!5838109 () Bool)

(assert (= bs!1375517 (and b!5838109 b!5838036)))

(declare-fun lambda!319397 () Int)

(assert (=> bs!1375517 (not (= lambda!319397 lambda!319394))))

(declare-fun bs!1375518 () Bool)

(assert (= bs!1375518 (and b!5838109 b!5838043)))

(assert (=> bs!1375518 (= (and (= (regOne!32318 (regTwo!32319 r!7292)) (regOne!32318 r!7292)) (= (regTwo!32318 (regTwo!32319 r!7292)) (regTwo!32318 r!7292))) (= lambda!319397 lambda!319395))))

(declare-fun bs!1375519 () Bool)

(assert (= bs!1375519 (and b!5838109 b!5838102)))

(assert (=> bs!1375519 (not (= lambda!319397 lambda!319396))))

(assert (=> b!5838109 true))

(assert (=> b!5838109 true))

(declare-fun bm!455900 () Bool)

(declare-fun call!455905 () Bool)

(assert (=> bm!455900 (= call!455905 (isEmpty!35750 s!2326))))

(declare-fun b!5838101 () Bool)

(declare-fun e!3581149 () Bool)

(assert (=> b!5838101 (= e!3581149 (matchRSpec!3004 (regTwo!32319 (regTwo!32319 r!7292)) s!2326))))

(declare-fun e!3581151 () Bool)

(declare-fun call!455906 () Bool)

(assert (=> b!5838102 (= e!3581151 call!455906)))

(declare-fun b!5838103 () Bool)

(declare-fun c!1034375 () Bool)

(assert (=> b!5838103 (= c!1034375 ((_ is Union!15903) (regTwo!32319 r!7292)))))

(declare-fun e!3581154 () Bool)

(declare-fun e!3581153 () Bool)

(assert (=> b!5838103 (= e!3581154 e!3581153)))

(declare-fun b!5838104 () Bool)

(declare-fun e!3581152 () Bool)

(assert (=> b!5838104 (= e!3581152 call!455905)))

(declare-fun b!5838105 () Bool)

(declare-fun res!2459705 () Bool)

(assert (=> b!5838105 (=> res!2459705 e!3581151)))

(assert (=> b!5838105 (= res!2459705 call!455905)))

(declare-fun e!3581155 () Bool)

(assert (=> b!5838105 (= e!3581155 e!3581151)))

(declare-fun bm!455901 () Bool)

(declare-fun c!1034374 () Bool)

(assert (=> bm!455901 (= call!455906 (Exists!2977 (ite c!1034374 lambda!319396 lambda!319397)))))

(declare-fun b!5838106 () Bool)

(assert (=> b!5838106 (= e!3581153 e!3581149)))

(declare-fun res!2459706 () Bool)

(assert (=> b!5838106 (= res!2459706 (matchRSpec!3004 (regOne!32319 (regTwo!32319 r!7292)) s!2326))))

(assert (=> b!5838106 (=> res!2459706 e!3581149)))

(declare-fun b!5838107 () Bool)

(declare-fun e!3581150 () Bool)

(assert (=> b!5838107 (= e!3581152 e!3581150)))

(declare-fun res!2459707 () Bool)

(assert (=> b!5838107 (= res!2459707 (not ((_ is EmptyLang!15903) (regTwo!32319 r!7292))))))

(assert (=> b!5838107 (=> (not res!2459707) (not e!3581150))))

(declare-fun b!5838108 () Bool)

(declare-fun c!1034376 () Bool)

(assert (=> b!5838108 (= c!1034376 ((_ is ElementMatch!15903) (regTwo!32319 r!7292)))))

(assert (=> b!5838108 (= e!3581150 e!3581154)))

(assert (=> b!5838109 (= e!3581155 call!455906)))

(declare-fun b!5838110 () Bool)

(assert (=> b!5838110 (= e!3581153 e!3581155)))

(assert (=> b!5838110 (= c!1034374 ((_ is Star!15903) (regTwo!32319 r!7292)))))

(declare-fun d!1834609 () Bool)

(declare-fun c!1034377 () Bool)

(assert (=> d!1834609 (= c!1034377 ((_ is EmptyExpr!15903) (regTwo!32319 r!7292)))))

(assert (=> d!1834609 (= (matchRSpec!3004 (regTwo!32319 r!7292) s!2326) e!3581152)))

(declare-fun b!5838111 () Bool)

(assert (=> b!5838111 (= e!3581154 (= s!2326 (Cons!63886 (c!1034241 (regTwo!32319 r!7292)) Nil!63886)))))

(assert (= (and d!1834609 c!1034377) b!5838104))

(assert (= (and d!1834609 (not c!1034377)) b!5838107))

(assert (= (and b!5838107 res!2459707) b!5838108))

(assert (= (and b!5838108 c!1034376) b!5838111))

(assert (= (and b!5838108 (not c!1034376)) b!5838103))

(assert (= (and b!5838103 c!1034375) b!5838106))

(assert (= (and b!5838103 (not c!1034375)) b!5838110))

(assert (= (and b!5838106 (not res!2459706)) b!5838101))

(assert (= (and b!5838110 c!1034374) b!5838105))

(assert (= (and b!5838110 (not c!1034374)) b!5838109))

(assert (= (and b!5838105 (not res!2459705)) b!5838102))

(assert (= (or b!5838102 b!5838109) bm!455901))

(assert (= (or b!5838104 b!5838105) bm!455900))

(assert (=> bm!455900 m!6763640))

(declare-fun m!6763666 () Bool)

(assert (=> b!5838101 m!6763666))

(declare-fun m!6763668 () Bool)

(assert (=> bm!455901 m!6763668))

(declare-fun m!6763670 () Bool)

(assert (=> b!5838106 m!6763670))

(assert (=> b!5837599 d!1834609))

(declare-fun d!1834611 () Bool)

(assert (=> d!1834611 (= (matchR!8086 (regOne!32319 r!7292) s!2326) (matchRSpec!3004 (regOne!32319 r!7292) s!2326))))

(declare-fun lt!2303509 () Unit!157077)

(assert (=> d!1834611 (= lt!2303509 (choose!44328 (regOne!32319 r!7292) s!2326))))

(assert (=> d!1834611 (validRegex!7639 (regOne!32319 r!7292))))

(assert (=> d!1834611 (= (mainMatchTheorem!3004 (regOne!32319 r!7292) s!2326) lt!2303509)))

(declare-fun bs!1375520 () Bool)

(assert (= bs!1375520 d!1834611))

(assert (=> bs!1375520 m!6763448))

(assert (=> bs!1375520 m!6763444))

(declare-fun m!6763672 () Bool)

(assert (=> bs!1375520 m!6763672))

(declare-fun m!6763674 () Bool)

(assert (=> bs!1375520 m!6763674))

(assert (=> b!5837599 d!1834611))

(declare-fun b!5838112 () Bool)

(declare-fun res!2459713 () Bool)

(declare-fun e!3581156 () Bool)

(assert (=> b!5838112 (=> res!2459713 e!3581156)))

(assert (=> b!5838112 (= res!2459713 (not (isEmpty!35750 (tail!11450 s!2326))))))

(declare-fun b!5838113 () Bool)

(declare-fun e!3581161 () Bool)

(assert (=> b!5838113 (= e!3581161 (matchR!8086 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)) (tail!11450 s!2326)))))

(declare-fun b!5838114 () Bool)

(declare-fun e!3581162 () Bool)

(assert (=> b!5838114 (= e!3581162 (= (head!12365 s!2326) (c!1034241 (regTwo!32319 r!7292))))))

(declare-fun b!5838115 () Bool)

(declare-fun res!2459714 () Bool)

(declare-fun e!3581158 () Bool)

(assert (=> b!5838115 (=> res!2459714 e!3581158)))

(assert (=> b!5838115 (= res!2459714 (not ((_ is ElementMatch!15903) (regTwo!32319 r!7292))))))

(declare-fun e!3581160 () Bool)

(assert (=> b!5838115 (= e!3581160 e!3581158)))

(declare-fun b!5838116 () Bool)

(declare-fun e!3581157 () Bool)

(assert (=> b!5838116 (= e!3581157 e!3581160)))

(declare-fun c!1034378 () Bool)

(assert (=> b!5838116 (= c!1034378 ((_ is EmptyLang!15903) (regTwo!32319 r!7292)))))

(declare-fun b!5838117 () Bool)

(declare-fun lt!2303510 () Bool)

(assert (=> b!5838117 (= e!3581160 (not lt!2303510))))

(declare-fun b!5838118 () Bool)

(declare-fun e!3581159 () Bool)

(assert (=> b!5838118 (= e!3581158 e!3581159)))

(declare-fun res!2459712 () Bool)

(assert (=> b!5838118 (=> (not res!2459712) (not e!3581159))))

(assert (=> b!5838118 (= res!2459712 (not lt!2303510))))

(declare-fun b!5838119 () Bool)

(declare-fun res!2459711 () Bool)

(assert (=> b!5838119 (=> (not res!2459711) (not e!3581162))))

(declare-fun call!455907 () Bool)

(assert (=> b!5838119 (= res!2459711 (not call!455907))))

(declare-fun b!5838120 () Bool)

(assert (=> b!5838120 (= e!3581161 (nullable!5903 (regTwo!32319 r!7292)))))

(declare-fun bm!455902 () Bool)

(assert (=> bm!455902 (= call!455907 (isEmpty!35750 s!2326))))

(declare-fun b!5838121 () Bool)

(declare-fun res!2459709 () Bool)

(assert (=> b!5838121 (=> res!2459709 e!3581158)))

(assert (=> b!5838121 (= res!2459709 e!3581162)))

(declare-fun res!2459715 () Bool)

(assert (=> b!5838121 (=> (not res!2459715) (not e!3581162))))

(assert (=> b!5838121 (= res!2459715 lt!2303510)))

(declare-fun b!5838122 () Bool)

(assert (=> b!5838122 (= e!3581159 e!3581156)))

(declare-fun res!2459710 () Bool)

(assert (=> b!5838122 (=> res!2459710 e!3581156)))

(assert (=> b!5838122 (= res!2459710 call!455907)))

(declare-fun b!5838123 () Bool)

(assert (=> b!5838123 (= e!3581156 (not (= (head!12365 s!2326) (c!1034241 (regTwo!32319 r!7292)))))))

(declare-fun d!1834613 () Bool)

(assert (=> d!1834613 e!3581157))

(declare-fun c!1034379 () Bool)

(assert (=> d!1834613 (= c!1034379 ((_ is EmptyExpr!15903) (regTwo!32319 r!7292)))))

(assert (=> d!1834613 (= lt!2303510 e!3581161)))

(declare-fun c!1034380 () Bool)

(assert (=> d!1834613 (= c!1034380 (isEmpty!35750 s!2326))))

(assert (=> d!1834613 (validRegex!7639 (regTwo!32319 r!7292))))

(assert (=> d!1834613 (= (matchR!8086 (regTwo!32319 r!7292) s!2326) lt!2303510)))

(declare-fun b!5838124 () Bool)

(declare-fun res!2459708 () Bool)

(assert (=> b!5838124 (=> (not res!2459708) (not e!3581162))))

(assert (=> b!5838124 (= res!2459708 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun b!5838125 () Bool)

(assert (=> b!5838125 (= e!3581157 (= lt!2303510 call!455907))))

(assert (= (and d!1834613 c!1034380) b!5838120))

(assert (= (and d!1834613 (not c!1034380)) b!5838113))

(assert (= (and d!1834613 c!1034379) b!5838125))

(assert (= (and d!1834613 (not c!1034379)) b!5838116))

(assert (= (and b!5838116 c!1034378) b!5838117))

(assert (= (and b!5838116 (not c!1034378)) b!5838115))

(assert (= (and b!5838115 (not res!2459714)) b!5838121))

(assert (= (and b!5838121 res!2459715) b!5838119))

(assert (= (and b!5838119 res!2459711) b!5838124))

(assert (= (and b!5838124 res!2459708) b!5838114))

(assert (= (and b!5838121 (not res!2459709)) b!5838118))

(assert (= (and b!5838118 res!2459712) b!5838122))

(assert (= (and b!5838122 (not res!2459710)) b!5838112))

(assert (= (and b!5838112 (not res!2459713)) b!5838123))

(assert (= (or b!5838125 b!5838119 b!5838122) bm!455902))

(assert (=> b!5838113 m!6763644))

(assert (=> b!5838113 m!6763644))

(declare-fun m!6763676 () Bool)

(assert (=> b!5838113 m!6763676))

(assert (=> b!5838113 m!6763648))

(assert (=> b!5838113 m!6763676))

(assert (=> b!5838113 m!6763648))

(declare-fun m!6763678 () Bool)

(assert (=> b!5838113 m!6763678))

(assert (=> bm!455902 m!6763640))

(assert (=> b!5838123 m!6763644))

(assert (=> b!5838124 m!6763648))

(assert (=> b!5838124 m!6763648))

(assert (=> b!5838124 m!6763652))

(assert (=> b!5838112 m!6763648))

(assert (=> b!5838112 m!6763648))

(assert (=> b!5838112 m!6763652))

(declare-fun m!6763680 () Bool)

(assert (=> b!5838120 m!6763680))

(assert (=> b!5838114 m!6763644))

(assert (=> d!1834613 m!6763640))

(declare-fun m!6763682 () Bool)

(assert (=> d!1834613 m!6763682))

(assert (=> b!5837599 d!1834613))

(declare-fun d!1834615 () Bool)

(assert (=> d!1834615 (= (matchR!8086 (regTwo!32319 r!7292) s!2326) (matchRSpec!3004 (regTwo!32319 r!7292) s!2326))))

(declare-fun lt!2303511 () Unit!157077)

(assert (=> d!1834615 (= lt!2303511 (choose!44328 (regTwo!32319 r!7292) s!2326))))

(assert (=> d!1834615 (validRegex!7639 (regTwo!32319 r!7292))))

(assert (=> d!1834615 (= (mainMatchTheorem!3004 (regTwo!32319 r!7292) s!2326) lt!2303511)))

(declare-fun bs!1375521 () Bool)

(assert (= bs!1375521 d!1834615))

(assert (=> bs!1375521 m!6763442))

(assert (=> bs!1375521 m!6763438))

(declare-fun m!6763684 () Bool)

(assert (=> bs!1375521 m!6763684))

(assert (=> bs!1375521 m!6763682))

(assert (=> b!5837599 d!1834615))

(declare-fun bs!1375522 () Bool)

(declare-fun b!5838127 () Bool)

(assert (= bs!1375522 (and b!5838127 b!5838036)))

(declare-fun lambda!319398 () Int)

(assert (=> bs!1375522 (= (and (= (reg!16232 (regOne!32319 r!7292)) (reg!16232 r!7292)) (= (regOne!32319 r!7292) r!7292)) (= lambda!319398 lambda!319394))))

(declare-fun bs!1375523 () Bool)

(assert (= bs!1375523 (and b!5838127 b!5838043)))

(assert (=> bs!1375523 (not (= lambda!319398 lambda!319395))))

(declare-fun bs!1375524 () Bool)

(assert (= bs!1375524 (and b!5838127 b!5838102)))

(assert (=> bs!1375524 (= (and (= (reg!16232 (regOne!32319 r!7292)) (reg!16232 (regTwo!32319 r!7292))) (= (regOne!32319 r!7292) (regTwo!32319 r!7292))) (= lambda!319398 lambda!319396))))

(declare-fun bs!1375525 () Bool)

(assert (= bs!1375525 (and b!5838127 b!5838109)))

(assert (=> bs!1375525 (not (= lambda!319398 lambda!319397))))

(assert (=> b!5838127 true))

(assert (=> b!5838127 true))

(declare-fun bs!1375526 () Bool)

(declare-fun b!5838134 () Bool)

(assert (= bs!1375526 (and b!5838134 b!5838036)))

(declare-fun lambda!319399 () Int)

(assert (=> bs!1375526 (not (= lambda!319399 lambda!319394))))

(declare-fun bs!1375527 () Bool)

(assert (= bs!1375527 (and b!5838134 b!5838043)))

(assert (=> bs!1375527 (= (and (= (regOne!32318 (regOne!32319 r!7292)) (regOne!32318 r!7292)) (= (regTwo!32318 (regOne!32319 r!7292)) (regTwo!32318 r!7292))) (= lambda!319399 lambda!319395))))

(declare-fun bs!1375528 () Bool)

(assert (= bs!1375528 (and b!5838134 b!5838102)))

(assert (=> bs!1375528 (not (= lambda!319399 lambda!319396))))

(declare-fun bs!1375529 () Bool)

(assert (= bs!1375529 (and b!5838134 b!5838127)))

(assert (=> bs!1375529 (not (= lambda!319399 lambda!319398))))

(declare-fun bs!1375530 () Bool)

(assert (= bs!1375530 (and b!5838134 b!5838109)))

(assert (=> bs!1375530 (= (and (= (regOne!32318 (regOne!32319 r!7292)) (regOne!32318 (regTwo!32319 r!7292))) (= (regTwo!32318 (regOne!32319 r!7292)) (regTwo!32318 (regTwo!32319 r!7292)))) (= lambda!319399 lambda!319397))))

(assert (=> b!5838134 true))

(assert (=> b!5838134 true))

(declare-fun bm!455903 () Bool)

(declare-fun call!455908 () Bool)

(assert (=> bm!455903 (= call!455908 (isEmpty!35750 s!2326))))

(declare-fun b!5838126 () Bool)

(declare-fun e!3581163 () Bool)

(assert (=> b!5838126 (= e!3581163 (matchRSpec!3004 (regTwo!32319 (regOne!32319 r!7292)) s!2326))))

(declare-fun e!3581165 () Bool)

(declare-fun call!455909 () Bool)

(assert (=> b!5838127 (= e!3581165 call!455909)))

(declare-fun b!5838128 () Bool)

(declare-fun c!1034382 () Bool)

(assert (=> b!5838128 (= c!1034382 ((_ is Union!15903) (regOne!32319 r!7292)))))

(declare-fun e!3581168 () Bool)

(declare-fun e!3581167 () Bool)

(assert (=> b!5838128 (= e!3581168 e!3581167)))

(declare-fun b!5838129 () Bool)

(declare-fun e!3581166 () Bool)

(assert (=> b!5838129 (= e!3581166 call!455908)))

(declare-fun b!5838130 () Bool)

(declare-fun res!2459716 () Bool)

(assert (=> b!5838130 (=> res!2459716 e!3581165)))

(assert (=> b!5838130 (= res!2459716 call!455908)))

(declare-fun e!3581169 () Bool)

(assert (=> b!5838130 (= e!3581169 e!3581165)))

(declare-fun c!1034381 () Bool)

(declare-fun bm!455904 () Bool)

(assert (=> bm!455904 (= call!455909 (Exists!2977 (ite c!1034381 lambda!319398 lambda!319399)))))

(declare-fun b!5838131 () Bool)

(assert (=> b!5838131 (= e!3581167 e!3581163)))

(declare-fun res!2459717 () Bool)

(assert (=> b!5838131 (= res!2459717 (matchRSpec!3004 (regOne!32319 (regOne!32319 r!7292)) s!2326))))

(assert (=> b!5838131 (=> res!2459717 e!3581163)))

(declare-fun b!5838132 () Bool)

(declare-fun e!3581164 () Bool)

(assert (=> b!5838132 (= e!3581166 e!3581164)))

(declare-fun res!2459718 () Bool)

(assert (=> b!5838132 (= res!2459718 (not ((_ is EmptyLang!15903) (regOne!32319 r!7292))))))

(assert (=> b!5838132 (=> (not res!2459718) (not e!3581164))))

(declare-fun b!5838133 () Bool)

(declare-fun c!1034383 () Bool)

(assert (=> b!5838133 (= c!1034383 ((_ is ElementMatch!15903) (regOne!32319 r!7292)))))

(assert (=> b!5838133 (= e!3581164 e!3581168)))

(assert (=> b!5838134 (= e!3581169 call!455909)))

(declare-fun b!5838135 () Bool)

(assert (=> b!5838135 (= e!3581167 e!3581169)))

(assert (=> b!5838135 (= c!1034381 ((_ is Star!15903) (regOne!32319 r!7292)))))

(declare-fun d!1834617 () Bool)

(declare-fun c!1034384 () Bool)

(assert (=> d!1834617 (= c!1034384 ((_ is EmptyExpr!15903) (regOne!32319 r!7292)))))

(assert (=> d!1834617 (= (matchRSpec!3004 (regOne!32319 r!7292) s!2326) e!3581166)))

(declare-fun b!5838136 () Bool)

(assert (=> b!5838136 (= e!3581168 (= s!2326 (Cons!63886 (c!1034241 (regOne!32319 r!7292)) Nil!63886)))))

(assert (= (and d!1834617 c!1034384) b!5838129))

(assert (= (and d!1834617 (not c!1034384)) b!5838132))

(assert (= (and b!5838132 res!2459718) b!5838133))

(assert (= (and b!5838133 c!1034383) b!5838136))

(assert (= (and b!5838133 (not c!1034383)) b!5838128))

(assert (= (and b!5838128 c!1034382) b!5838131))

(assert (= (and b!5838128 (not c!1034382)) b!5838135))

(assert (= (and b!5838131 (not res!2459717)) b!5838126))

(assert (= (and b!5838135 c!1034381) b!5838130))

(assert (= (and b!5838135 (not c!1034381)) b!5838134))

(assert (= (and b!5838130 (not res!2459716)) b!5838127))

(assert (= (or b!5838127 b!5838134) bm!455904))

(assert (= (or b!5838129 b!5838130) bm!455903))

(assert (=> bm!455903 m!6763640))

(declare-fun m!6763686 () Bool)

(assert (=> b!5838126 m!6763686))

(declare-fun m!6763688 () Bool)

(assert (=> bm!455904 m!6763688))

(declare-fun m!6763690 () Bool)

(assert (=> b!5838131 m!6763690))

(assert (=> b!5837599 d!1834617))

(declare-fun b!5838137 () Bool)

(declare-fun res!2459724 () Bool)

(declare-fun e!3581170 () Bool)

(assert (=> b!5838137 (=> res!2459724 e!3581170)))

(assert (=> b!5838137 (= res!2459724 (not (isEmpty!35750 (tail!11450 s!2326))))))

(declare-fun b!5838138 () Bool)

(declare-fun e!3581175 () Bool)

(assert (=> b!5838138 (= e!3581175 (matchR!8086 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)) (tail!11450 s!2326)))))

(declare-fun b!5838139 () Bool)

(declare-fun e!3581176 () Bool)

(assert (=> b!5838139 (= e!3581176 (= (head!12365 s!2326) (c!1034241 (regOne!32319 r!7292))))))

(declare-fun b!5838140 () Bool)

(declare-fun res!2459725 () Bool)

(declare-fun e!3581172 () Bool)

(assert (=> b!5838140 (=> res!2459725 e!3581172)))

(assert (=> b!5838140 (= res!2459725 (not ((_ is ElementMatch!15903) (regOne!32319 r!7292))))))

(declare-fun e!3581174 () Bool)

(assert (=> b!5838140 (= e!3581174 e!3581172)))

(declare-fun b!5838141 () Bool)

(declare-fun e!3581171 () Bool)

(assert (=> b!5838141 (= e!3581171 e!3581174)))

(declare-fun c!1034385 () Bool)

(assert (=> b!5838141 (= c!1034385 ((_ is EmptyLang!15903) (regOne!32319 r!7292)))))

(declare-fun b!5838142 () Bool)

(declare-fun lt!2303512 () Bool)

(assert (=> b!5838142 (= e!3581174 (not lt!2303512))))

(declare-fun b!5838143 () Bool)

(declare-fun e!3581173 () Bool)

(assert (=> b!5838143 (= e!3581172 e!3581173)))

(declare-fun res!2459723 () Bool)

(assert (=> b!5838143 (=> (not res!2459723) (not e!3581173))))

(assert (=> b!5838143 (= res!2459723 (not lt!2303512))))

(declare-fun b!5838144 () Bool)

(declare-fun res!2459722 () Bool)

(assert (=> b!5838144 (=> (not res!2459722) (not e!3581176))))

(declare-fun call!455910 () Bool)

(assert (=> b!5838144 (= res!2459722 (not call!455910))))

(declare-fun b!5838145 () Bool)

(assert (=> b!5838145 (= e!3581175 (nullable!5903 (regOne!32319 r!7292)))))

(declare-fun bm!455905 () Bool)

(assert (=> bm!455905 (= call!455910 (isEmpty!35750 s!2326))))

(declare-fun b!5838146 () Bool)

(declare-fun res!2459720 () Bool)

(assert (=> b!5838146 (=> res!2459720 e!3581172)))

(assert (=> b!5838146 (= res!2459720 e!3581176)))

(declare-fun res!2459726 () Bool)

(assert (=> b!5838146 (=> (not res!2459726) (not e!3581176))))

(assert (=> b!5838146 (= res!2459726 lt!2303512)))

(declare-fun b!5838147 () Bool)

(assert (=> b!5838147 (= e!3581173 e!3581170)))

(declare-fun res!2459721 () Bool)

(assert (=> b!5838147 (=> res!2459721 e!3581170)))

(assert (=> b!5838147 (= res!2459721 call!455910)))

(declare-fun b!5838148 () Bool)

(assert (=> b!5838148 (= e!3581170 (not (= (head!12365 s!2326) (c!1034241 (regOne!32319 r!7292)))))))

(declare-fun d!1834619 () Bool)

(assert (=> d!1834619 e!3581171))

(declare-fun c!1034386 () Bool)

(assert (=> d!1834619 (= c!1034386 ((_ is EmptyExpr!15903) (regOne!32319 r!7292)))))

(assert (=> d!1834619 (= lt!2303512 e!3581175)))

(declare-fun c!1034387 () Bool)

(assert (=> d!1834619 (= c!1034387 (isEmpty!35750 s!2326))))

(assert (=> d!1834619 (validRegex!7639 (regOne!32319 r!7292))))

(assert (=> d!1834619 (= (matchR!8086 (regOne!32319 r!7292) s!2326) lt!2303512)))

(declare-fun b!5838149 () Bool)

(declare-fun res!2459719 () Bool)

(assert (=> b!5838149 (=> (not res!2459719) (not e!3581176))))

(assert (=> b!5838149 (= res!2459719 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun b!5838150 () Bool)

(assert (=> b!5838150 (= e!3581171 (= lt!2303512 call!455910))))

(assert (= (and d!1834619 c!1034387) b!5838145))

(assert (= (and d!1834619 (not c!1034387)) b!5838138))

(assert (= (and d!1834619 c!1034386) b!5838150))

(assert (= (and d!1834619 (not c!1034386)) b!5838141))

(assert (= (and b!5838141 c!1034385) b!5838142))

(assert (= (and b!5838141 (not c!1034385)) b!5838140))

(assert (= (and b!5838140 (not res!2459725)) b!5838146))

(assert (= (and b!5838146 res!2459726) b!5838144))

(assert (= (and b!5838144 res!2459722) b!5838149))

(assert (= (and b!5838149 res!2459719) b!5838139))

(assert (= (and b!5838146 (not res!2459720)) b!5838143))

(assert (= (and b!5838143 res!2459723) b!5838147))

(assert (= (and b!5838147 (not res!2459721)) b!5838137))

(assert (= (and b!5838137 (not res!2459724)) b!5838148))

(assert (= (or b!5838150 b!5838144 b!5838147) bm!455905))

(assert (=> b!5838138 m!6763644))

(assert (=> b!5838138 m!6763644))

(declare-fun m!6763692 () Bool)

(assert (=> b!5838138 m!6763692))

(assert (=> b!5838138 m!6763648))

(assert (=> b!5838138 m!6763692))

(assert (=> b!5838138 m!6763648))

(declare-fun m!6763694 () Bool)

(assert (=> b!5838138 m!6763694))

(assert (=> bm!455905 m!6763640))

(assert (=> b!5838148 m!6763644))

(assert (=> b!5838149 m!6763648))

(assert (=> b!5838149 m!6763648))

(assert (=> b!5838149 m!6763652))

(assert (=> b!5838137 m!6763648))

(assert (=> b!5838137 m!6763648))

(assert (=> b!5838137 m!6763652))

(declare-fun m!6763696 () Bool)

(assert (=> b!5838145 m!6763696))

(assert (=> b!5838139 m!6763644))

(assert (=> d!1834619 m!6763640))

(assert (=> d!1834619 m!6763674))

(assert (=> b!5837599 d!1834619))

(declare-fun bs!1375531 () Bool)

(declare-fun d!1834621 () Bool)

(assert (= bs!1375531 (and d!1834621 d!1834535)))

(declare-fun lambda!319400 () Int)

(assert (=> bs!1375531 (= lambda!319400 lambda!319368)))

(declare-fun bs!1375532 () Bool)

(assert (= bs!1375532 (and d!1834621 d!1834573)))

(assert (=> bs!1375532 (= lambda!319400 lambda!319376)))

(declare-fun bs!1375533 () Bool)

(assert (= bs!1375533 (and d!1834621 d!1834581)))

(assert (=> bs!1375533 (= lambda!319400 lambda!319380)))

(declare-fun bs!1375534 () Bool)

(assert (= bs!1375534 (and d!1834621 d!1834591)))

(assert (=> bs!1375534 (= lambda!319400 lambda!319386)))

(assert (=> d!1834621 (= (inv!83004 setElem!39538) (forall!14992 (exprs!5787 setElem!39538) lambda!319400))))

(declare-fun bs!1375535 () Bool)

(assert (= bs!1375535 d!1834621))

(declare-fun m!6763698 () Bool)

(assert (=> bs!1375535 m!6763698))

(assert (=> setNonEmpty!39538 d!1834621))

(declare-fun b!5838161 () Bool)

(declare-fun e!3581179 () Bool)

(assert (=> b!5838161 (= e!3581179 tp_is_empty!41059)))

(declare-fun b!5838162 () Bool)

(declare-fun tp!1614117 () Bool)

(declare-fun tp!1614113 () Bool)

(assert (=> b!5838162 (= e!3581179 (and tp!1614117 tp!1614113))))

(declare-fun b!5838163 () Bool)

(declare-fun tp!1614115 () Bool)

(assert (=> b!5838163 (= e!3581179 tp!1614115)))

(assert (=> b!5837607 (= tp!1614044 e!3581179)))

(declare-fun b!5838164 () Bool)

(declare-fun tp!1614114 () Bool)

(declare-fun tp!1614116 () Bool)

(assert (=> b!5838164 (= e!3581179 (and tp!1614114 tp!1614116))))

(assert (= (and b!5837607 ((_ is ElementMatch!15903) (regOne!32318 r!7292))) b!5838161))

(assert (= (and b!5837607 ((_ is Concat!24748) (regOne!32318 r!7292))) b!5838162))

(assert (= (and b!5837607 ((_ is Star!15903) (regOne!32318 r!7292))) b!5838163))

(assert (= (and b!5837607 ((_ is Union!15903) (regOne!32318 r!7292))) b!5838164))

(declare-fun b!5838165 () Bool)

(declare-fun e!3581180 () Bool)

(assert (=> b!5838165 (= e!3581180 tp_is_empty!41059)))

(declare-fun b!5838166 () Bool)

(declare-fun tp!1614122 () Bool)

(declare-fun tp!1614118 () Bool)

(assert (=> b!5838166 (= e!3581180 (and tp!1614122 tp!1614118))))

(declare-fun b!5838167 () Bool)

(declare-fun tp!1614120 () Bool)

(assert (=> b!5838167 (= e!3581180 tp!1614120)))

(assert (=> b!5837607 (= tp!1614039 e!3581180)))

(declare-fun b!5838168 () Bool)

(declare-fun tp!1614119 () Bool)

(declare-fun tp!1614121 () Bool)

(assert (=> b!5838168 (= e!3581180 (and tp!1614119 tp!1614121))))

(assert (= (and b!5837607 ((_ is ElementMatch!15903) (regTwo!32318 r!7292))) b!5838165))

(assert (= (and b!5837607 ((_ is Concat!24748) (regTwo!32318 r!7292))) b!5838166))

(assert (= (and b!5837607 ((_ is Star!15903) (regTwo!32318 r!7292))) b!5838167))

(assert (= (and b!5837607 ((_ is Union!15903) (regTwo!32318 r!7292))) b!5838168))

(declare-fun b!5838169 () Bool)

(declare-fun e!3581181 () Bool)

(assert (=> b!5838169 (= e!3581181 tp_is_empty!41059)))

(declare-fun b!5838170 () Bool)

(declare-fun tp!1614127 () Bool)

(declare-fun tp!1614123 () Bool)

(assert (=> b!5838170 (= e!3581181 (and tp!1614127 tp!1614123))))

(declare-fun b!5838171 () Bool)

(declare-fun tp!1614125 () Bool)

(assert (=> b!5838171 (= e!3581181 tp!1614125)))

(assert (=> b!5837608 (= tp!1614037 e!3581181)))

(declare-fun b!5838172 () Bool)

(declare-fun tp!1614124 () Bool)

(declare-fun tp!1614126 () Bool)

(assert (=> b!5838172 (= e!3581181 (and tp!1614124 tp!1614126))))

(assert (= (and b!5837608 ((_ is ElementMatch!15903) (reg!16232 r!7292))) b!5838169))

(assert (= (and b!5837608 ((_ is Concat!24748) (reg!16232 r!7292))) b!5838170))

(assert (= (and b!5837608 ((_ is Star!15903) (reg!16232 r!7292))) b!5838171))

(assert (= (and b!5837608 ((_ is Union!15903) (reg!16232 r!7292))) b!5838172))

(declare-fun b!5838173 () Bool)

(declare-fun e!3581182 () Bool)

(assert (=> b!5838173 (= e!3581182 tp_is_empty!41059)))

(declare-fun b!5838174 () Bool)

(declare-fun tp!1614132 () Bool)

(declare-fun tp!1614128 () Bool)

(assert (=> b!5838174 (= e!3581182 (and tp!1614132 tp!1614128))))

(declare-fun b!5838175 () Bool)

(declare-fun tp!1614130 () Bool)

(assert (=> b!5838175 (= e!3581182 tp!1614130)))

(assert (=> b!5837602 (= tp!1614041 e!3581182)))

(declare-fun b!5838176 () Bool)

(declare-fun tp!1614129 () Bool)

(declare-fun tp!1614131 () Bool)

(assert (=> b!5838176 (= e!3581182 (and tp!1614129 tp!1614131))))

(assert (= (and b!5837602 ((_ is ElementMatch!15903) (regOne!32319 r!7292))) b!5838173))

(assert (= (and b!5837602 ((_ is Concat!24748) (regOne!32319 r!7292))) b!5838174))

(assert (= (and b!5837602 ((_ is Star!15903) (regOne!32319 r!7292))) b!5838175))

(assert (= (and b!5837602 ((_ is Union!15903) (regOne!32319 r!7292))) b!5838176))

(declare-fun b!5838177 () Bool)

(declare-fun e!3581183 () Bool)

(assert (=> b!5838177 (= e!3581183 tp_is_empty!41059)))

(declare-fun b!5838178 () Bool)

(declare-fun tp!1614137 () Bool)

(declare-fun tp!1614133 () Bool)

(assert (=> b!5838178 (= e!3581183 (and tp!1614137 tp!1614133))))

(declare-fun b!5838179 () Bool)

(declare-fun tp!1614135 () Bool)

(assert (=> b!5838179 (= e!3581183 tp!1614135)))

(assert (=> b!5837602 (= tp!1614042 e!3581183)))

(declare-fun b!5838180 () Bool)

(declare-fun tp!1614134 () Bool)

(declare-fun tp!1614136 () Bool)

(assert (=> b!5838180 (= e!3581183 (and tp!1614134 tp!1614136))))

(assert (= (and b!5837602 ((_ is ElementMatch!15903) (regTwo!32319 r!7292))) b!5838177))

(assert (= (and b!5837602 ((_ is Concat!24748) (regTwo!32319 r!7292))) b!5838178))

(assert (= (and b!5837602 ((_ is Star!15903) (regTwo!32319 r!7292))) b!5838179))

(assert (= (and b!5837602 ((_ is Union!15903) (regTwo!32319 r!7292))) b!5838180))

(declare-fun b!5838185 () Bool)

(declare-fun e!3581186 () Bool)

(declare-fun tp!1614142 () Bool)

(declare-fun tp!1614143 () Bool)

(assert (=> b!5838185 (= e!3581186 (and tp!1614142 tp!1614143))))

(assert (=> b!5837613 (= tp!1614035 e!3581186)))

(assert (= (and b!5837613 ((_ is Cons!63884) (exprs!5787 setElem!39538))) b!5838185))

(declare-fun b!5838186 () Bool)

(declare-fun e!3581187 () Bool)

(declare-fun tp!1614144 () Bool)

(declare-fun tp!1614145 () Bool)

(assert (=> b!5838186 (= e!3581187 (and tp!1614144 tp!1614145))))

(assert (=> b!5837604 (= tp!1614040 e!3581187)))

(assert (= (and b!5837604 ((_ is Cons!63884) (exprs!5787 (h!70333 zl!343)))) b!5838186))

(declare-fun b!5838191 () Bool)

(declare-fun e!3581190 () Bool)

(declare-fun tp!1614148 () Bool)

(assert (=> b!5838191 (= e!3581190 (and tp_is_empty!41059 tp!1614148))))

(assert (=> b!5837600 (= tp!1614043 e!3581190)))

(assert (= (and b!5837600 ((_ is Cons!63886) (t!377365 s!2326))) b!5838191))

(declare-fun b!5838199 () Bool)

(declare-fun e!3581196 () Bool)

(declare-fun tp!1614153 () Bool)

(assert (=> b!5838199 (= e!3581196 tp!1614153)))

(declare-fun tp!1614154 () Bool)

(declare-fun b!5838198 () Bool)

(declare-fun e!3581195 () Bool)

(assert (=> b!5838198 (= e!3581195 (and (inv!83004 (h!70333 (t!377364 zl!343))) e!3581196 tp!1614154))))

(assert (=> b!5837605 (= tp!1614038 e!3581195)))

(assert (= b!5838198 b!5838199))

(assert (= (and b!5837605 ((_ is Cons!63885) (t!377364 zl!343))) b!5838198))

(declare-fun m!6763700 () Bool)

(assert (=> b!5838198 m!6763700))

(declare-fun condSetEmpty!39544 () Bool)

(assert (=> setNonEmpty!39538 (= condSetEmpty!39544 (= setRest!39538 ((as const (Array Context!10574 Bool)) false)))))

(declare-fun setRes!39544 () Bool)

(assert (=> setNonEmpty!39538 (= tp!1614036 setRes!39544)))

(declare-fun setIsEmpty!39544 () Bool)

(assert (=> setIsEmpty!39544 setRes!39544))

(declare-fun e!3581199 () Bool)

(declare-fun tp!1614160 () Bool)

(declare-fun setNonEmpty!39544 () Bool)

(declare-fun setElem!39544 () Context!10574)

(assert (=> setNonEmpty!39544 (= setRes!39544 (and tp!1614160 (inv!83004 setElem!39544) e!3581199))))

(declare-fun setRest!39544 () (InoxSet Context!10574))

(assert (=> setNonEmpty!39544 (= setRest!39538 ((_ map or) (store ((as const (Array Context!10574 Bool)) false) setElem!39544 true) setRest!39544))))

(declare-fun b!5838204 () Bool)

(declare-fun tp!1614159 () Bool)

(assert (=> b!5838204 (= e!3581199 tp!1614159)))

(assert (= (and setNonEmpty!39538 condSetEmpty!39544) setIsEmpty!39544))

(assert (= (and setNonEmpty!39538 (not condSetEmpty!39544)) setNonEmpty!39544))

(assert (= setNonEmpty!39544 b!5838204))

(declare-fun m!6763702 () Bool)

(assert (=> setNonEmpty!39544 m!6763702))

(check-sat (not b!5838137) (not b!5838167) (not d!1834605) (not b!5838106) (not d!1834581) (not b!5837942) (not b!5837875) (not b!5838148) (not b!5838198) (not b!5838185) (not b!5838180) (not b!5838166) (not d!1834621) (not b!5838080) (not d!1834603) (not b!5838040) (not b!5837870) (not b!5838101) (not b!5838174) (not b!5837814) (not b!5838172) (not b!5838171) (not b!5838123) (not d!1834569) (not b!5838097) (not b!5838179) (not b!5838079) (not bm!455896) (not b!5837873) (not b!5838138) (not b!5837807) tp_is_empty!41059 (not b!5838162) (not d!1834607) (not d!1834593) (not setNonEmpty!39544) (not d!1834573) (not bm!455895) (not b!5837869) (not d!1834615) (not b!5838163) (not bm!455890) (not b!5838120) (not b!5838186) (not b!5838131) (not b!5838113) (not b!5838176) (not b!5838149) (not b!5838078) (not bm!455899) (not b!5838096) (not b!5838112) (not b!5838175) (not bm!455888) (not b!5837812) (not b!5838204) (not d!1834611) (not b!5838126) (not b!5838114) (not bm!455900) (not b!5838124) (not b!5838191) (not d!1834591) (not b!5838145) (not b!5838178) (not b!5838086) (not d!1834601) (not b!5838170) (not b!5838164) (not bm!455904) (not b!5838100) (not bm!455902) (not b!5838035) (not bm!455905) (not b!5837872) (not b!5837813) (not b!5837811) (not b!5838199) (not d!1834595) (not b!5837806) (not bm!455903) (not b!5837874) (not b!5838090) (not d!1834597) (not b!5838089) (not d!1834619) (not bm!455901) (not b!5837809) (not b!5837871) (not b!5838168) (not b!5838139) (not d!1834613) (not b!5837890) (not d!1834535))
(check-sat)
(get-model)

(declare-fun d!1834623 () Bool)

(assert (=> d!1834623 (= (head!12365 s!2326) (h!70334 s!2326))))

(assert (=> b!5838080 d!1834623))

(declare-fun d!1834625 () Bool)

(assert (=> d!1834625 (= (isEmpty!35750 s!2326) ((_ is Nil!63886) s!2326))))

(assert (=> bm!455902 d!1834625))

(declare-fun b!5838205 () Bool)

(declare-fun e!3581205 () Bool)

(declare-fun e!3581203 () Bool)

(assert (=> b!5838205 (= e!3581205 e!3581203)))

(declare-fun c!1034389 () Bool)

(assert (=> b!5838205 (= c!1034389 ((_ is Union!15903) (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))))))

(declare-fun b!5838206 () Bool)

(declare-fun res!2459731 () Bool)

(declare-fun e!3581206 () Bool)

(assert (=> b!5838206 (=> (not res!2459731) (not e!3581206))))

(declare-fun call!455912 () Bool)

(assert (=> b!5838206 (= res!2459731 call!455912)))

(assert (=> b!5838206 (= e!3581203 e!3581206)))

(declare-fun d!1834627 () Bool)

(declare-fun res!2459730 () Bool)

(declare-fun e!3581201 () Bool)

(assert (=> d!1834627 (=> res!2459730 e!3581201)))

(assert (=> d!1834627 (= res!2459730 ((_ is ElementMatch!15903) (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))))))

(assert (=> d!1834627 (= (validRegex!7639 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))) e!3581201)))

(declare-fun b!5838207 () Bool)

(declare-fun e!3581202 () Bool)

(assert (=> b!5838207 (= e!3581205 e!3581202)))

(declare-fun res!2459729 () Bool)

(assert (=> b!5838207 (= res!2459729 (not (nullable!5903 (reg!16232 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))))))))

(assert (=> b!5838207 (=> (not res!2459729) (not e!3581202))))

(declare-fun b!5838208 () Bool)

(declare-fun e!3581204 () Bool)

(declare-fun call!455913 () Bool)

(assert (=> b!5838208 (= e!3581204 call!455913)))

(declare-fun bm!455906 () Bool)

(declare-fun call!455911 () Bool)

(declare-fun c!1034388 () Bool)

(assert (=> bm!455906 (= call!455911 (validRegex!7639 (ite c!1034388 (reg!16232 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))) (ite c!1034389 (regTwo!32319 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))) (regTwo!32318 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292))))))))))

(declare-fun b!5838209 () Bool)

(assert (=> b!5838209 (= e!3581202 call!455911)))

(declare-fun b!5838210 () Bool)

(declare-fun res!2459728 () Bool)

(declare-fun e!3581200 () Bool)

(assert (=> b!5838210 (=> res!2459728 e!3581200)))

(assert (=> b!5838210 (= res!2459728 (not ((_ is Concat!24748) (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292))))))))

(assert (=> b!5838210 (= e!3581203 e!3581200)))

(declare-fun bm!455907 () Bool)

(assert (=> bm!455907 (= call!455913 call!455911)))

(declare-fun bm!455908 () Bool)

(assert (=> bm!455908 (= call!455912 (validRegex!7639 (ite c!1034389 (regOne!32319 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))) (regOne!32318 (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))))))))

(declare-fun b!5838211 () Bool)

(assert (=> b!5838211 (= e!3581201 e!3581205)))

(assert (=> b!5838211 (= c!1034388 ((_ is Star!15903) (ite c!1034346 (reg!16232 r!7292) (ite c!1034347 (regTwo!32319 r!7292) (regTwo!32318 r!7292)))))))

(declare-fun b!5838212 () Bool)

(assert (=> b!5838212 (= e!3581200 e!3581204)))

(declare-fun res!2459727 () Bool)

(assert (=> b!5838212 (=> (not res!2459727) (not e!3581204))))

(assert (=> b!5838212 (= res!2459727 call!455912)))

(declare-fun b!5838213 () Bool)

(assert (=> b!5838213 (= e!3581206 call!455913)))

(assert (= (and d!1834627 (not res!2459730)) b!5838211))

(assert (= (and b!5838211 c!1034388) b!5838207))

(assert (= (and b!5838211 (not c!1034388)) b!5838205))

(assert (= (and b!5838207 res!2459729) b!5838209))

(assert (= (and b!5838205 c!1034389) b!5838206))

(assert (= (and b!5838205 (not c!1034389)) b!5838210))

(assert (= (and b!5838206 res!2459731) b!5838213))

(assert (= (and b!5838210 (not res!2459728)) b!5838212))

(assert (= (and b!5838212 res!2459727) b!5838208))

(assert (= (or b!5838213 b!5838208) bm!455907))

(assert (= (or b!5838206 b!5838212) bm!455908))

(assert (= (or b!5838209 bm!455907) bm!455906))

(declare-fun m!6763704 () Bool)

(assert (=> b!5838207 m!6763704))

(declare-fun m!6763706 () Bool)

(assert (=> bm!455906 m!6763706))

(declare-fun m!6763708 () Bool)

(assert (=> bm!455908 m!6763708))

(assert (=> bm!455888 d!1834627))

(assert (=> b!5837890 d!1834535))

(declare-fun bs!1375536 () Bool)

(declare-fun d!1834629 () Bool)

(assert (= bs!1375536 (and d!1834629 d!1834581)))

(declare-fun lambda!319401 () Int)

(assert (=> bs!1375536 (= lambda!319401 lambda!319380)))

(declare-fun bs!1375537 () Bool)

(assert (= bs!1375537 (and d!1834629 d!1834573)))

(assert (=> bs!1375537 (= lambda!319401 lambda!319376)))

(declare-fun bs!1375538 () Bool)

(assert (= bs!1375538 (and d!1834629 d!1834591)))

(assert (=> bs!1375538 (= lambda!319401 lambda!319386)))

(declare-fun bs!1375539 () Bool)

(assert (= bs!1375539 (and d!1834629 d!1834621)))

(assert (=> bs!1375539 (= lambda!319401 lambda!319400)))

(declare-fun bs!1375540 () Bool)

(assert (= bs!1375540 (and d!1834629 d!1834535)))

(assert (=> bs!1375540 (= lambda!319401 lambda!319368)))

(declare-fun lt!2303513 () List!64008)

(assert (=> d!1834629 (forall!14992 lt!2303513 lambda!319401)))

(declare-fun e!3581207 () List!64008)

(assert (=> d!1834629 (= lt!2303513 e!3581207)))

(declare-fun c!1034390 () Bool)

(assert (=> d!1834629 (= c!1034390 ((_ is Cons!63885) (t!377364 zl!343)))))

(assert (=> d!1834629 (= (unfocusZipperList!1324 (t!377364 zl!343)) lt!2303513)))

(declare-fun b!5838214 () Bool)

(assert (=> b!5838214 (= e!3581207 (Cons!63884 (generalisedConcat!1500 (exprs!5787 (h!70333 (t!377364 zl!343)))) (unfocusZipperList!1324 (t!377364 (t!377364 zl!343)))))))

(declare-fun b!5838215 () Bool)

(assert (=> b!5838215 (= e!3581207 Nil!63884)))

(assert (= (and d!1834629 c!1034390) b!5838214))

(assert (= (and d!1834629 (not c!1034390)) b!5838215))

(declare-fun m!6763710 () Bool)

(assert (=> d!1834629 m!6763710))

(declare-fun m!6763712 () Bool)

(assert (=> b!5838214 m!6763712))

(declare-fun m!6763714 () Bool)

(assert (=> b!5838214 m!6763714))

(assert (=> b!5837890 d!1834629))

(assert (=> bm!455900 d!1834625))

(assert (=> bm!455903 d!1834625))

(declare-fun d!1834631 () Bool)

(assert (=> d!1834631 (= (nullable!5903 (reg!16232 r!7292)) (nullableFct!1892 (reg!16232 r!7292)))))

(declare-fun bs!1375541 () Bool)

(assert (= bs!1375541 d!1834631))

(declare-fun m!6763716 () Bool)

(assert (=> bs!1375541 m!6763716))

(assert (=> b!5837942 d!1834631))

(assert (=> b!5838148 d!1834623))

(declare-fun d!1834633 () Bool)

(assert (=> d!1834633 (= (isEmpty!35750 (tail!11450 s!2326)) ((_ is Nil!63886) (tail!11450 s!2326)))))

(assert (=> b!5838078 d!1834633))

(declare-fun d!1834635 () Bool)

(assert (=> d!1834635 (= (tail!11450 s!2326) (t!377365 s!2326))))

(assert (=> b!5838078 d!1834635))

(assert (=> b!5838040 d!1834617))

(declare-fun d!1834637 () Bool)

(assert (=> d!1834637 (= (nullable!5903 (regOne!32319 r!7292)) (nullableFct!1892 (regOne!32319 r!7292)))))

(declare-fun bs!1375542 () Bool)

(assert (= bs!1375542 d!1834637))

(declare-fun m!6763718 () Bool)

(assert (=> bs!1375542 m!6763718))

(assert (=> b!5838145 d!1834637))

(assert (=> d!1834615 d!1834613))

(assert (=> d!1834615 d!1834609))

(declare-fun d!1834639 () Bool)

(assert (=> d!1834639 (= (matchR!8086 (regTwo!32319 r!7292) s!2326) (matchRSpec!3004 (regTwo!32319 r!7292) s!2326))))

(assert (=> d!1834639 true))

(declare-fun _$88!4183 () Unit!157077)

(assert (=> d!1834639 (= (choose!44328 (regTwo!32319 r!7292) s!2326) _$88!4183)))

(declare-fun bs!1375543 () Bool)

(assert (= bs!1375543 d!1834639))

(assert (=> bs!1375543 m!6763442))

(assert (=> bs!1375543 m!6763438))

(assert (=> d!1834615 d!1834639))

(declare-fun b!5838216 () Bool)

(declare-fun e!3581213 () Bool)

(declare-fun e!3581211 () Bool)

(assert (=> b!5838216 (= e!3581213 e!3581211)))

(declare-fun c!1034392 () Bool)

(assert (=> b!5838216 (= c!1034392 ((_ is Union!15903) (regTwo!32319 r!7292)))))

(declare-fun b!5838217 () Bool)

(declare-fun res!2459736 () Bool)

(declare-fun e!3581214 () Bool)

(assert (=> b!5838217 (=> (not res!2459736) (not e!3581214))))

(declare-fun call!455915 () Bool)

(assert (=> b!5838217 (= res!2459736 call!455915)))

(assert (=> b!5838217 (= e!3581211 e!3581214)))

(declare-fun d!1834641 () Bool)

(declare-fun res!2459735 () Bool)

(declare-fun e!3581209 () Bool)

(assert (=> d!1834641 (=> res!2459735 e!3581209)))

(assert (=> d!1834641 (= res!2459735 ((_ is ElementMatch!15903) (regTwo!32319 r!7292)))))

(assert (=> d!1834641 (= (validRegex!7639 (regTwo!32319 r!7292)) e!3581209)))

(declare-fun b!5838218 () Bool)

(declare-fun e!3581210 () Bool)

(assert (=> b!5838218 (= e!3581213 e!3581210)))

(declare-fun res!2459734 () Bool)

(assert (=> b!5838218 (= res!2459734 (not (nullable!5903 (reg!16232 (regTwo!32319 r!7292)))))))

(assert (=> b!5838218 (=> (not res!2459734) (not e!3581210))))

(declare-fun b!5838219 () Bool)

(declare-fun e!3581212 () Bool)

(declare-fun call!455916 () Bool)

(assert (=> b!5838219 (= e!3581212 call!455916)))

(declare-fun call!455914 () Bool)

(declare-fun bm!455909 () Bool)

(declare-fun c!1034391 () Bool)

(assert (=> bm!455909 (= call!455914 (validRegex!7639 (ite c!1034391 (reg!16232 (regTwo!32319 r!7292)) (ite c!1034392 (regTwo!32319 (regTwo!32319 r!7292)) (regTwo!32318 (regTwo!32319 r!7292))))))))

(declare-fun b!5838220 () Bool)

(assert (=> b!5838220 (= e!3581210 call!455914)))

(declare-fun b!5838221 () Bool)

(declare-fun res!2459733 () Bool)

(declare-fun e!3581208 () Bool)

(assert (=> b!5838221 (=> res!2459733 e!3581208)))

(assert (=> b!5838221 (= res!2459733 (not ((_ is Concat!24748) (regTwo!32319 r!7292))))))

(assert (=> b!5838221 (= e!3581211 e!3581208)))

(declare-fun bm!455910 () Bool)

(assert (=> bm!455910 (= call!455916 call!455914)))

(declare-fun bm!455911 () Bool)

(assert (=> bm!455911 (= call!455915 (validRegex!7639 (ite c!1034392 (regOne!32319 (regTwo!32319 r!7292)) (regOne!32318 (regTwo!32319 r!7292)))))))

(declare-fun b!5838222 () Bool)

(assert (=> b!5838222 (= e!3581209 e!3581213)))

(assert (=> b!5838222 (= c!1034391 ((_ is Star!15903) (regTwo!32319 r!7292)))))

(declare-fun b!5838223 () Bool)

(assert (=> b!5838223 (= e!3581208 e!3581212)))

(declare-fun res!2459732 () Bool)

(assert (=> b!5838223 (=> (not res!2459732) (not e!3581212))))

(assert (=> b!5838223 (= res!2459732 call!455915)))

(declare-fun b!5838224 () Bool)

(assert (=> b!5838224 (= e!3581214 call!455916)))

(assert (= (and d!1834641 (not res!2459735)) b!5838222))

(assert (= (and b!5838222 c!1034391) b!5838218))

(assert (= (and b!5838222 (not c!1034391)) b!5838216))

(assert (= (and b!5838218 res!2459734) b!5838220))

(assert (= (and b!5838216 c!1034392) b!5838217))

(assert (= (and b!5838216 (not c!1034392)) b!5838221))

(assert (= (and b!5838217 res!2459736) b!5838224))

(assert (= (and b!5838221 (not res!2459733)) b!5838223))

(assert (= (and b!5838223 res!2459732) b!5838219))

(assert (= (or b!5838224 b!5838219) bm!455910))

(assert (= (or b!5838217 b!5838223) bm!455911))

(assert (= (or b!5838220 bm!455910) bm!455909))

(declare-fun m!6763720 () Bool)

(assert (=> b!5838218 m!6763720))

(declare-fun m!6763722 () Bool)

(assert (=> bm!455909 m!6763722))

(declare-fun m!6763724 () Bool)

(assert (=> bm!455911 m!6763724))

(assert (=> d!1834615 d!1834641))

(declare-fun b!5838225 () Bool)

(declare-fun e!3581220 () Bool)

(declare-fun e!3581218 () Bool)

(assert (=> b!5838225 (= e!3581220 e!3581218)))

(declare-fun c!1034394 () Bool)

(assert (=> b!5838225 (= c!1034394 ((_ is Union!15903) lt!2303490))))

(declare-fun b!5838226 () Bool)

(declare-fun res!2459741 () Bool)

(declare-fun e!3581221 () Bool)

(assert (=> b!5838226 (=> (not res!2459741) (not e!3581221))))

(declare-fun call!455918 () Bool)

(assert (=> b!5838226 (= res!2459741 call!455918)))

(assert (=> b!5838226 (= e!3581218 e!3581221)))

(declare-fun d!1834643 () Bool)

(declare-fun res!2459740 () Bool)

(declare-fun e!3581216 () Bool)

(assert (=> d!1834643 (=> res!2459740 e!3581216)))

(assert (=> d!1834643 (= res!2459740 ((_ is ElementMatch!15903) lt!2303490))))

(assert (=> d!1834643 (= (validRegex!7639 lt!2303490) e!3581216)))

(declare-fun b!5838227 () Bool)

(declare-fun e!3581217 () Bool)

(assert (=> b!5838227 (= e!3581220 e!3581217)))

(declare-fun res!2459739 () Bool)

(assert (=> b!5838227 (= res!2459739 (not (nullable!5903 (reg!16232 lt!2303490))))))

(assert (=> b!5838227 (=> (not res!2459739) (not e!3581217))))

(declare-fun b!5838228 () Bool)

(declare-fun e!3581219 () Bool)

(declare-fun call!455919 () Bool)

(assert (=> b!5838228 (= e!3581219 call!455919)))

(declare-fun bm!455912 () Bool)

(declare-fun c!1034393 () Bool)

(declare-fun call!455917 () Bool)

(assert (=> bm!455912 (= call!455917 (validRegex!7639 (ite c!1034393 (reg!16232 lt!2303490) (ite c!1034394 (regTwo!32319 lt!2303490) (regTwo!32318 lt!2303490)))))))

(declare-fun b!5838229 () Bool)

(assert (=> b!5838229 (= e!3581217 call!455917)))

(declare-fun b!5838230 () Bool)

(declare-fun res!2459738 () Bool)

(declare-fun e!3581215 () Bool)

(assert (=> b!5838230 (=> res!2459738 e!3581215)))

(assert (=> b!5838230 (= res!2459738 (not ((_ is Concat!24748) lt!2303490)))))

(assert (=> b!5838230 (= e!3581218 e!3581215)))

(declare-fun bm!455913 () Bool)

(assert (=> bm!455913 (= call!455919 call!455917)))

(declare-fun bm!455914 () Bool)

(assert (=> bm!455914 (= call!455918 (validRegex!7639 (ite c!1034394 (regOne!32319 lt!2303490) (regOne!32318 lt!2303490))))))

(declare-fun b!5838231 () Bool)

(assert (=> b!5838231 (= e!3581216 e!3581220)))

(assert (=> b!5838231 (= c!1034393 ((_ is Star!15903) lt!2303490))))

(declare-fun b!5838232 () Bool)

(assert (=> b!5838232 (= e!3581215 e!3581219)))

(declare-fun res!2459737 () Bool)

(assert (=> b!5838232 (=> (not res!2459737) (not e!3581219))))

(assert (=> b!5838232 (= res!2459737 call!455918)))

(declare-fun b!5838233 () Bool)

(assert (=> b!5838233 (= e!3581221 call!455919)))

(assert (= (and d!1834643 (not res!2459740)) b!5838231))

(assert (= (and b!5838231 c!1034393) b!5838227))

(assert (= (and b!5838231 (not c!1034393)) b!5838225))

(assert (= (and b!5838227 res!2459739) b!5838229))

(assert (= (and b!5838225 c!1034394) b!5838226))

(assert (= (and b!5838225 (not c!1034394)) b!5838230))

(assert (= (and b!5838226 res!2459741) b!5838233))

(assert (= (and b!5838230 (not res!2459738)) b!5838232))

(assert (= (and b!5838232 res!2459737) b!5838228))

(assert (= (or b!5838233 b!5838228) bm!455913))

(assert (= (or b!5838226 b!5838232) bm!455914))

(assert (= (or b!5838229 bm!455913) bm!455912))

(declare-fun m!6763726 () Bool)

(assert (=> b!5838227 m!6763726))

(declare-fun m!6763728 () Bool)

(assert (=> bm!455912 m!6763728))

(declare-fun m!6763730 () Bool)

(assert (=> bm!455914 m!6763730))

(assert (=> d!1834573 d!1834643))

(declare-fun d!1834645 () Bool)

(declare-fun res!2459746 () Bool)

(declare-fun e!3581226 () Bool)

(assert (=> d!1834645 (=> res!2459746 e!3581226)))

(assert (=> d!1834645 (= res!2459746 ((_ is Nil!63884) (unfocusZipperList!1324 zl!343)))))

(assert (=> d!1834645 (= (forall!14992 (unfocusZipperList!1324 zl!343) lambda!319376) e!3581226)))

(declare-fun b!5838238 () Bool)

(declare-fun e!3581227 () Bool)

(assert (=> b!5838238 (= e!3581226 e!3581227)))

(declare-fun res!2459747 () Bool)

(assert (=> b!5838238 (=> (not res!2459747) (not e!3581227))))

(declare-fun dynLambda!24975 (Int Regex!15903) Bool)

(assert (=> b!5838238 (= res!2459747 (dynLambda!24975 lambda!319376 (h!70332 (unfocusZipperList!1324 zl!343))))))

(declare-fun b!5838239 () Bool)

(assert (=> b!5838239 (= e!3581227 (forall!14992 (t!377363 (unfocusZipperList!1324 zl!343)) lambda!319376))))

(assert (= (and d!1834645 (not res!2459746)) b!5838238))

(assert (= (and b!5838238 res!2459747) b!5838239))

(declare-fun b_lambda!219869 () Bool)

(assert (=> (not b_lambda!219869) (not b!5838238)))

(declare-fun m!6763732 () Bool)

(assert (=> b!5838238 m!6763732))

(declare-fun m!6763734 () Bool)

(assert (=> b!5838239 m!6763734))

(assert (=> d!1834573 d!1834645))

(assert (=> b!5838035 d!1834609))

(assert (=> b!5838096 d!1834593))

(declare-fun b!5838240 () Bool)

(declare-fun res!2459753 () Bool)

(declare-fun e!3581228 () Bool)

(assert (=> b!5838240 (=> res!2459753 e!3581228)))

(assert (=> b!5838240 (= res!2459753 (not (isEmpty!35750 (tail!11450 (tail!11450 s!2326)))))))

(declare-fun b!5838241 () Bool)

(declare-fun e!3581233 () Bool)

(assert (=> b!5838241 (= e!3581233 (matchR!8086 (derivativeStep!4643 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)) (head!12365 (tail!11450 s!2326))) (tail!11450 (tail!11450 s!2326))))))

(declare-fun b!5838242 () Bool)

(declare-fun e!3581234 () Bool)

(assert (=> b!5838242 (= e!3581234 (= (head!12365 (tail!11450 s!2326)) (c!1034241 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)))))))

(declare-fun b!5838243 () Bool)

(declare-fun res!2459754 () Bool)

(declare-fun e!3581230 () Bool)

(assert (=> b!5838243 (=> res!2459754 e!3581230)))

(assert (=> b!5838243 (= res!2459754 (not ((_ is ElementMatch!15903) (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)))))))

(declare-fun e!3581232 () Bool)

(assert (=> b!5838243 (= e!3581232 e!3581230)))

(declare-fun b!5838244 () Bool)

(declare-fun e!3581229 () Bool)

(assert (=> b!5838244 (= e!3581229 e!3581232)))

(declare-fun c!1034395 () Bool)

(assert (=> b!5838244 (= c!1034395 ((_ is EmptyLang!15903) (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326))))))

(declare-fun b!5838245 () Bool)

(declare-fun lt!2303514 () Bool)

(assert (=> b!5838245 (= e!3581232 (not lt!2303514))))

(declare-fun b!5838246 () Bool)

(declare-fun e!3581231 () Bool)

(assert (=> b!5838246 (= e!3581230 e!3581231)))

(declare-fun res!2459752 () Bool)

(assert (=> b!5838246 (=> (not res!2459752) (not e!3581231))))

(assert (=> b!5838246 (= res!2459752 (not lt!2303514))))

(declare-fun b!5838247 () Bool)

(declare-fun res!2459751 () Bool)

(assert (=> b!5838247 (=> (not res!2459751) (not e!3581234))))

(declare-fun call!455920 () Bool)

(assert (=> b!5838247 (= res!2459751 (not call!455920))))

(declare-fun b!5838248 () Bool)

(assert (=> b!5838248 (= e!3581233 (nullable!5903 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326))))))

(declare-fun bm!455915 () Bool)

(assert (=> bm!455915 (= call!455920 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun b!5838249 () Bool)

(declare-fun res!2459749 () Bool)

(assert (=> b!5838249 (=> res!2459749 e!3581230)))

(assert (=> b!5838249 (= res!2459749 e!3581234)))

(declare-fun res!2459755 () Bool)

(assert (=> b!5838249 (=> (not res!2459755) (not e!3581234))))

(assert (=> b!5838249 (= res!2459755 lt!2303514)))

(declare-fun b!5838250 () Bool)

(assert (=> b!5838250 (= e!3581231 e!3581228)))

(declare-fun res!2459750 () Bool)

(assert (=> b!5838250 (=> res!2459750 e!3581228)))

(assert (=> b!5838250 (= res!2459750 call!455920)))

(declare-fun b!5838251 () Bool)

(assert (=> b!5838251 (= e!3581228 (not (= (head!12365 (tail!11450 s!2326)) (c!1034241 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326))))))))

(declare-fun d!1834647 () Bool)

(assert (=> d!1834647 e!3581229))

(declare-fun c!1034396 () Bool)

(assert (=> d!1834647 (= c!1034396 ((_ is EmptyExpr!15903) (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326))))))

(assert (=> d!1834647 (= lt!2303514 e!3581233)))

(declare-fun c!1034397 () Bool)

(assert (=> d!1834647 (= c!1034397 (isEmpty!35750 (tail!11450 s!2326)))))

(assert (=> d!1834647 (validRegex!7639 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)))))

(assert (=> d!1834647 (= (matchR!8086 (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)) (tail!11450 s!2326)) lt!2303514)))

(declare-fun b!5838252 () Bool)

(declare-fun res!2459748 () Bool)

(assert (=> b!5838252 (=> (not res!2459748) (not e!3581234))))

(assert (=> b!5838252 (= res!2459748 (isEmpty!35750 (tail!11450 (tail!11450 s!2326))))))

(declare-fun b!5838253 () Bool)

(assert (=> b!5838253 (= e!3581229 (= lt!2303514 call!455920))))

(assert (= (and d!1834647 c!1034397) b!5838248))

(assert (= (and d!1834647 (not c!1034397)) b!5838241))

(assert (= (and d!1834647 c!1034396) b!5838253))

(assert (= (and d!1834647 (not c!1034396)) b!5838244))

(assert (= (and b!5838244 c!1034395) b!5838245))

(assert (= (and b!5838244 (not c!1034395)) b!5838243))

(assert (= (and b!5838243 (not res!2459754)) b!5838249))

(assert (= (and b!5838249 res!2459755) b!5838247))

(assert (= (and b!5838247 res!2459751) b!5838252))

(assert (= (and b!5838252 res!2459748) b!5838242))

(assert (= (and b!5838249 (not res!2459749)) b!5838246))

(assert (= (and b!5838246 res!2459752) b!5838250))

(assert (= (and b!5838250 (not res!2459750)) b!5838240))

(assert (= (and b!5838240 (not res!2459753)) b!5838251))

(assert (= (or b!5838253 b!5838247 b!5838250) bm!455915))

(assert (=> b!5838241 m!6763648))

(declare-fun m!6763736 () Bool)

(assert (=> b!5838241 m!6763736))

(assert (=> b!5838241 m!6763676))

(assert (=> b!5838241 m!6763736))

(declare-fun m!6763738 () Bool)

(assert (=> b!5838241 m!6763738))

(assert (=> b!5838241 m!6763648))

(declare-fun m!6763740 () Bool)

(assert (=> b!5838241 m!6763740))

(assert (=> b!5838241 m!6763738))

(assert (=> b!5838241 m!6763740))

(declare-fun m!6763742 () Bool)

(assert (=> b!5838241 m!6763742))

(assert (=> bm!455915 m!6763648))

(assert (=> bm!455915 m!6763652))

(assert (=> b!5838251 m!6763648))

(assert (=> b!5838251 m!6763736))

(assert (=> b!5838252 m!6763648))

(assert (=> b!5838252 m!6763740))

(assert (=> b!5838252 m!6763740))

(declare-fun m!6763744 () Bool)

(assert (=> b!5838252 m!6763744))

(assert (=> b!5838240 m!6763648))

(assert (=> b!5838240 m!6763740))

(assert (=> b!5838240 m!6763740))

(assert (=> b!5838240 m!6763744))

(assert (=> b!5838248 m!6763676))

(declare-fun m!6763746 () Bool)

(assert (=> b!5838248 m!6763746))

(assert (=> b!5838242 m!6763648))

(assert (=> b!5838242 m!6763736))

(assert (=> d!1834647 m!6763648))

(assert (=> d!1834647 m!6763652))

(assert (=> d!1834647 m!6763676))

(declare-fun m!6763748 () Bool)

(assert (=> d!1834647 m!6763748))

(assert (=> b!5838113 d!1834647))

(declare-fun b!5838274 () Bool)

(declare-fun e!3581247 () Regex!15903)

(declare-fun e!3581245 () Regex!15903)

(assert (=> b!5838274 (= e!3581247 e!3581245)))

(declare-fun c!1034412 () Bool)

(assert (=> b!5838274 (= c!1034412 ((_ is Star!15903) (regTwo!32319 r!7292)))))

(declare-fun bm!455924 () Bool)

(declare-fun call!455931 () Regex!15903)

(declare-fun call!455929 () Regex!15903)

(assert (=> bm!455924 (= call!455931 call!455929)))

(declare-fun b!5838275 () Bool)

(declare-fun e!3581246 () Regex!15903)

(declare-fun e!3581249 () Regex!15903)

(assert (=> b!5838275 (= e!3581246 e!3581249)))

(declare-fun c!1034409 () Bool)

(assert (=> b!5838275 (= c!1034409 ((_ is ElementMatch!15903) (regTwo!32319 r!7292)))))

(declare-fun d!1834649 () Bool)

(declare-fun lt!2303517 () Regex!15903)

(assert (=> d!1834649 (validRegex!7639 lt!2303517)))

(assert (=> d!1834649 (= lt!2303517 e!3581246)))

(declare-fun c!1034411 () Bool)

(assert (=> d!1834649 (= c!1034411 (or ((_ is EmptyExpr!15903) (regTwo!32319 r!7292)) ((_ is EmptyLang!15903) (regTwo!32319 r!7292))))))

(assert (=> d!1834649 (validRegex!7639 (regTwo!32319 r!7292))))

(assert (=> d!1834649 (= (derivativeStep!4643 (regTwo!32319 r!7292) (head!12365 s!2326)) lt!2303517)))

(declare-fun bm!455925 () Bool)

(declare-fun call!455932 () Regex!15903)

(assert (=> bm!455925 (= call!455932 call!455931)))

(declare-fun b!5838276 () Bool)

(assert (=> b!5838276 (= e!3581249 (ite (= (head!12365 s!2326) (c!1034241 (regTwo!32319 r!7292))) EmptyExpr!15903 EmptyLang!15903))))

(declare-fun bm!455926 () Bool)

(declare-fun c!1034410 () Bool)

(declare-fun call!455930 () Regex!15903)

(assert (=> bm!455926 (= call!455930 (derivativeStep!4643 (ite c!1034410 (regTwo!32319 (regTwo!32319 r!7292)) (regOne!32318 (regTwo!32319 r!7292))) (head!12365 s!2326)))))

(declare-fun b!5838277 () Bool)

(declare-fun c!1034408 () Bool)

(assert (=> b!5838277 (= c!1034408 (nullable!5903 (regOne!32318 (regTwo!32319 r!7292))))))

(declare-fun e!3581248 () Regex!15903)

(assert (=> b!5838277 (= e!3581245 e!3581248)))

(declare-fun b!5838278 () Bool)

(assert (=> b!5838278 (= e!3581247 (Union!15903 call!455929 call!455930))))

(declare-fun b!5838279 () Bool)

(assert (=> b!5838279 (= e!3581245 (Concat!24748 call!455931 (regTwo!32319 r!7292)))))

(declare-fun bm!455927 () Bool)

(assert (=> bm!455927 (= call!455929 (derivativeStep!4643 (ite c!1034410 (regOne!32319 (regTwo!32319 r!7292)) (ite c!1034412 (reg!16232 (regTwo!32319 r!7292)) (ite c!1034408 (regTwo!32318 (regTwo!32319 r!7292)) (regOne!32318 (regTwo!32319 r!7292))))) (head!12365 s!2326)))))

(declare-fun b!5838280 () Bool)

(assert (=> b!5838280 (= e!3581248 (Union!15903 (Concat!24748 call!455930 (regTwo!32318 (regTwo!32319 r!7292))) call!455932))))

(declare-fun b!5838281 () Bool)

(assert (=> b!5838281 (= e!3581246 EmptyLang!15903)))

(declare-fun b!5838282 () Bool)

(assert (=> b!5838282 (= e!3581248 (Union!15903 (Concat!24748 call!455932 (regTwo!32318 (regTwo!32319 r!7292))) EmptyLang!15903))))

(declare-fun b!5838283 () Bool)

(assert (=> b!5838283 (= c!1034410 ((_ is Union!15903) (regTwo!32319 r!7292)))))

(assert (=> b!5838283 (= e!3581249 e!3581247)))

(assert (= (and d!1834649 c!1034411) b!5838281))

(assert (= (and d!1834649 (not c!1034411)) b!5838275))

(assert (= (and b!5838275 c!1034409) b!5838276))

(assert (= (and b!5838275 (not c!1034409)) b!5838283))

(assert (= (and b!5838283 c!1034410) b!5838278))

(assert (= (and b!5838283 (not c!1034410)) b!5838274))

(assert (= (and b!5838274 c!1034412) b!5838279))

(assert (= (and b!5838274 (not c!1034412)) b!5838277))

(assert (= (and b!5838277 c!1034408) b!5838280))

(assert (= (and b!5838277 (not c!1034408)) b!5838282))

(assert (= (or b!5838280 b!5838282) bm!455925))

(assert (= (or b!5838279 bm!455925) bm!455924))

(assert (= (or b!5838278 b!5838280) bm!455926))

(assert (= (or b!5838278 bm!455924) bm!455927))

(declare-fun m!6763750 () Bool)

(assert (=> d!1834649 m!6763750))

(assert (=> d!1834649 m!6763682))

(assert (=> bm!455926 m!6763644))

(declare-fun m!6763752 () Bool)

(assert (=> bm!455926 m!6763752))

(declare-fun m!6763754 () Bool)

(assert (=> b!5838277 m!6763754))

(assert (=> bm!455927 m!6763644))

(declare-fun m!6763756 () Bool)

(assert (=> bm!455927 m!6763756))

(assert (=> b!5838113 d!1834649))

(assert (=> b!5838113 d!1834623))

(assert (=> b!5838113 d!1834635))

(declare-fun d!1834651 () Bool)

(declare-fun c!1034415 () Bool)

(assert (=> d!1834651 (= c!1034415 ((_ is Nil!63885) lt!2303508))))

(declare-fun e!3581252 () (InoxSet Context!10574))

(assert (=> d!1834651 (= (content!11735 lt!2303508) e!3581252)))

(declare-fun b!5838288 () Bool)

(assert (=> b!5838288 (= e!3581252 ((as const (Array Context!10574 Bool)) false))))

(declare-fun b!5838289 () Bool)

(assert (=> b!5838289 (= e!3581252 ((_ map or) (store ((as const (Array Context!10574 Bool)) false) (h!70333 lt!2303508) true) (content!11735 (t!377364 lt!2303508))))))

(assert (= (and d!1834651 c!1034415) b!5838288))

(assert (= (and d!1834651 (not c!1034415)) b!5838289))

(declare-fun m!6763758 () Bool)

(assert (=> b!5838289 m!6763758))

(declare-fun m!6763760 () Bool)

(assert (=> b!5838289 m!6763760))

(assert (=> b!5838100 d!1834651))

(declare-fun d!1834653 () Bool)

(assert (=> d!1834653 (= (isEmptyLang!1348 lt!2303490) ((_ is EmptyLang!15903) lt!2303490))))

(assert (=> b!5837874 d!1834653))

(declare-fun b!5838290 () Bool)

(declare-fun e!3581258 () Bool)

(declare-fun e!3581256 () Bool)

(assert (=> b!5838290 (= e!3581258 e!3581256)))

(declare-fun c!1034417 () Bool)

(assert (=> b!5838290 (= c!1034417 ((_ is Union!15903) lt!2303480))))

(declare-fun b!5838291 () Bool)

(declare-fun res!2459760 () Bool)

(declare-fun e!3581259 () Bool)

(assert (=> b!5838291 (=> (not res!2459760) (not e!3581259))))

(declare-fun call!455934 () Bool)

(assert (=> b!5838291 (= res!2459760 call!455934)))

(assert (=> b!5838291 (= e!3581256 e!3581259)))

(declare-fun d!1834655 () Bool)

(declare-fun res!2459759 () Bool)

(declare-fun e!3581254 () Bool)

(assert (=> d!1834655 (=> res!2459759 e!3581254)))

(assert (=> d!1834655 (= res!2459759 ((_ is ElementMatch!15903) lt!2303480))))

(assert (=> d!1834655 (= (validRegex!7639 lt!2303480) e!3581254)))

(declare-fun b!5838292 () Bool)

(declare-fun e!3581255 () Bool)

(assert (=> b!5838292 (= e!3581258 e!3581255)))

(declare-fun res!2459758 () Bool)

(assert (=> b!5838292 (= res!2459758 (not (nullable!5903 (reg!16232 lt!2303480))))))

(assert (=> b!5838292 (=> (not res!2459758) (not e!3581255))))

(declare-fun b!5838293 () Bool)

(declare-fun e!3581257 () Bool)

(declare-fun call!455935 () Bool)

(assert (=> b!5838293 (= e!3581257 call!455935)))

(declare-fun bm!455928 () Bool)

(declare-fun call!455933 () Bool)

(declare-fun c!1034416 () Bool)

(assert (=> bm!455928 (= call!455933 (validRegex!7639 (ite c!1034416 (reg!16232 lt!2303480) (ite c!1034417 (regTwo!32319 lt!2303480) (regTwo!32318 lt!2303480)))))))

(declare-fun b!5838294 () Bool)

(assert (=> b!5838294 (= e!3581255 call!455933)))

(declare-fun b!5838295 () Bool)

(declare-fun res!2459757 () Bool)

(declare-fun e!3581253 () Bool)

(assert (=> b!5838295 (=> res!2459757 e!3581253)))

(assert (=> b!5838295 (= res!2459757 (not ((_ is Concat!24748) lt!2303480)))))

(assert (=> b!5838295 (= e!3581256 e!3581253)))

(declare-fun bm!455929 () Bool)

(assert (=> bm!455929 (= call!455935 call!455933)))

(declare-fun bm!455930 () Bool)

(assert (=> bm!455930 (= call!455934 (validRegex!7639 (ite c!1034417 (regOne!32319 lt!2303480) (regOne!32318 lt!2303480))))))

(declare-fun b!5838296 () Bool)

(assert (=> b!5838296 (= e!3581254 e!3581258)))

(assert (=> b!5838296 (= c!1034416 ((_ is Star!15903) lt!2303480))))

(declare-fun b!5838297 () Bool)

(assert (=> b!5838297 (= e!3581253 e!3581257)))

(declare-fun res!2459756 () Bool)

(assert (=> b!5838297 (=> (not res!2459756) (not e!3581257))))

(assert (=> b!5838297 (= res!2459756 call!455934)))

(declare-fun b!5838298 () Bool)

(assert (=> b!5838298 (= e!3581259 call!455935)))

(assert (= (and d!1834655 (not res!2459759)) b!5838296))

(assert (= (and b!5838296 c!1034416) b!5838292))

(assert (= (and b!5838296 (not c!1034416)) b!5838290))

(assert (= (and b!5838292 res!2459758) b!5838294))

(assert (= (and b!5838290 c!1034417) b!5838291))

(assert (= (and b!5838290 (not c!1034417)) b!5838295))

(assert (= (and b!5838291 res!2459760) b!5838298))

(assert (= (and b!5838295 (not res!2459757)) b!5838297))

(assert (= (and b!5838297 res!2459756) b!5838293))

(assert (= (or b!5838298 b!5838293) bm!455929))

(assert (= (or b!5838291 b!5838297) bm!455930))

(assert (= (or b!5838294 bm!455929) bm!455928))

(declare-fun m!6763762 () Bool)

(assert (=> b!5838292 m!6763762))

(declare-fun m!6763764 () Bool)

(assert (=> bm!455928 m!6763764))

(declare-fun m!6763766 () Bool)

(assert (=> bm!455930 m!6763766))

(assert (=> d!1834535 d!1834655))

(declare-fun d!1834657 () Bool)

(declare-fun res!2459761 () Bool)

(declare-fun e!3581260 () Bool)

(assert (=> d!1834657 (=> res!2459761 e!3581260)))

(assert (=> d!1834657 (= res!2459761 ((_ is Nil!63884) (exprs!5787 (h!70333 zl!343))))))

(assert (=> d!1834657 (= (forall!14992 (exprs!5787 (h!70333 zl!343)) lambda!319368) e!3581260)))

(declare-fun b!5838299 () Bool)

(declare-fun e!3581261 () Bool)

(assert (=> b!5838299 (= e!3581260 e!3581261)))

(declare-fun res!2459762 () Bool)

(assert (=> b!5838299 (=> (not res!2459762) (not e!3581261))))

(assert (=> b!5838299 (= res!2459762 (dynLambda!24975 lambda!319368 (h!70332 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5838300 () Bool)

(assert (=> b!5838300 (= e!3581261 (forall!14992 (t!377363 (exprs!5787 (h!70333 zl!343))) lambda!319368))))

(assert (= (and d!1834657 (not res!2459761)) b!5838299))

(assert (= (and b!5838299 res!2459762) b!5838300))

(declare-fun b_lambda!219871 () Bool)

(assert (=> (not b_lambda!219871) (not b!5838299)))

(declare-fun m!6763768 () Bool)

(assert (=> b!5838299 m!6763768))

(declare-fun m!6763770 () Bool)

(assert (=> b!5838300 m!6763770))

(assert (=> d!1834535 d!1834657))

(assert (=> b!5838089 d!1834623))

(assert (=> b!5838112 d!1834633))

(assert (=> b!5838112 d!1834635))

(assert (=> d!1834613 d!1834625))

(assert (=> d!1834613 d!1834641))

(declare-fun b!5838301 () Bool)

(declare-fun res!2459768 () Bool)

(declare-fun e!3581262 () Bool)

(assert (=> b!5838301 (=> res!2459768 e!3581262)))

(assert (=> b!5838301 (= res!2459768 (not (isEmpty!35750 (tail!11450 (tail!11450 s!2326)))))))

(declare-fun b!5838302 () Bool)

(declare-fun e!3581267 () Bool)

(assert (=> b!5838302 (= e!3581267 (matchR!8086 (derivativeStep!4643 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)) (head!12365 (tail!11450 s!2326))) (tail!11450 (tail!11450 s!2326))))))

(declare-fun b!5838303 () Bool)

(declare-fun e!3581268 () Bool)

(assert (=> b!5838303 (= e!3581268 (= (head!12365 (tail!11450 s!2326)) (c!1034241 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)))))))

(declare-fun b!5838304 () Bool)

(declare-fun res!2459769 () Bool)

(declare-fun e!3581264 () Bool)

(assert (=> b!5838304 (=> res!2459769 e!3581264)))

(assert (=> b!5838304 (= res!2459769 (not ((_ is ElementMatch!15903) (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)))))))

(declare-fun e!3581266 () Bool)

(assert (=> b!5838304 (= e!3581266 e!3581264)))

(declare-fun b!5838305 () Bool)

(declare-fun e!3581263 () Bool)

(assert (=> b!5838305 (= e!3581263 e!3581266)))

(declare-fun c!1034418 () Bool)

(assert (=> b!5838305 (= c!1034418 ((_ is EmptyLang!15903) (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326))))))

(declare-fun b!5838306 () Bool)

(declare-fun lt!2303518 () Bool)

(assert (=> b!5838306 (= e!3581266 (not lt!2303518))))

(declare-fun b!5838307 () Bool)

(declare-fun e!3581265 () Bool)

(assert (=> b!5838307 (= e!3581264 e!3581265)))

(declare-fun res!2459767 () Bool)

(assert (=> b!5838307 (=> (not res!2459767) (not e!3581265))))

(assert (=> b!5838307 (= res!2459767 (not lt!2303518))))

(declare-fun b!5838308 () Bool)

(declare-fun res!2459766 () Bool)

(assert (=> b!5838308 (=> (not res!2459766) (not e!3581268))))

(declare-fun call!455936 () Bool)

(assert (=> b!5838308 (= res!2459766 (not call!455936))))

(declare-fun b!5838309 () Bool)

(assert (=> b!5838309 (= e!3581267 (nullable!5903 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326))))))

(declare-fun bm!455931 () Bool)

(assert (=> bm!455931 (= call!455936 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun b!5838310 () Bool)

(declare-fun res!2459764 () Bool)

(assert (=> b!5838310 (=> res!2459764 e!3581264)))

(assert (=> b!5838310 (= res!2459764 e!3581268)))

(declare-fun res!2459770 () Bool)

(assert (=> b!5838310 (=> (not res!2459770) (not e!3581268))))

(assert (=> b!5838310 (= res!2459770 lt!2303518)))

(declare-fun b!5838311 () Bool)

(assert (=> b!5838311 (= e!3581265 e!3581262)))

(declare-fun res!2459765 () Bool)

(assert (=> b!5838311 (=> res!2459765 e!3581262)))

(assert (=> b!5838311 (= res!2459765 call!455936)))

(declare-fun b!5838312 () Bool)

(assert (=> b!5838312 (= e!3581262 (not (= (head!12365 (tail!11450 s!2326)) (c!1034241 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326))))))))

(declare-fun d!1834659 () Bool)

(assert (=> d!1834659 e!3581263))

(declare-fun c!1034419 () Bool)

(assert (=> d!1834659 (= c!1034419 ((_ is EmptyExpr!15903) (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326))))))

(assert (=> d!1834659 (= lt!2303518 e!3581267)))

(declare-fun c!1034420 () Bool)

(assert (=> d!1834659 (= c!1034420 (isEmpty!35750 (tail!11450 s!2326)))))

(assert (=> d!1834659 (validRegex!7639 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)))))

(assert (=> d!1834659 (= (matchR!8086 (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)) (tail!11450 s!2326)) lt!2303518)))

(declare-fun b!5838313 () Bool)

(declare-fun res!2459763 () Bool)

(assert (=> b!5838313 (=> (not res!2459763) (not e!3581268))))

(assert (=> b!5838313 (= res!2459763 (isEmpty!35750 (tail!11450 (tail!11450 s!2326))))))

(declare-fun b!5838314 () Bool)

(assert (=> b!5838314 (= e!3581263 (= lt!2303518 call!455936))))

(assert (= (and d!1834659 c!1034420) b!5838309))

(assert (= (and d!1834659 (not c!1034420)) b!5838302))

(assert (= (and d!1834659 c!1034419) b!5838314))

(assert (= (and d!1834659 (not c!1034419)) b!5838305))

(assert (= (and b!5838305 c!1034418) b!5838306))

(assert (= (and b!5838305 (not c!1034418)) b!5838304))

(assert (= (and b!5838304 (not res!2459769)) b!5838310))

(assert (= (and b!5838310 res!2459770) b!5838308))

(assert (= (and b!5838308 res!2459766) b!5838313))

(assert (= (and b!5838313 res!2459763) b!5838303))

(assert (= (and b!5838310 (not res!2459764)) b!5838307))

(assert (= (and b!5838307 res!2459767) b!5838311))

(assert (= (and b!5838311 (not res!2459765)) b!5838301))

(assert (= (and b!5838301 (not res!2459768)) b!5838312))

(assert (= (or b!5838314 b!5838308 b!5838311) bm!455931))

(assert (=> b!5838302 m!6763648))

(assert (=> b!5838302 m!6763736))

(assert (=> b!5838302 m!6763692))

(assert (=> b!5838302 m!6763736))

(declare-fun m!6763772 () Bool)

(assert (=> b!5838302 m!6763772))

(assert (=> b!5838302 m!6763648))

(assert (=> b!5838302 m!6763740))

(assert (=> b!5838302 m!6763772))

(assert (=> b!5838302 m!6763740))

(declare-fun m!6763774 () Bool)

(assert (=> b!5838302 m!6763774))

(assert (=> bm!455931 m!6763648))

(assert (=> bm!455931 m!6763652))

(assert (=> b!5838312 m!6763648))

(assert (=> b!5838312 m!6763736))

(assert (=> b!5838313 m!6763648))

(assert (=> b!5838313 m!6763740))

(assert (=> b!5838313 m!6763740))

(assert (=> b!5838313 m!6763744))

(assert (=> b!5838301 m!6763648))

(assert (=> b!5838301 m!6763740))

(assert (=> b!5838301 m!6763740))

(assert (=> b!5838301 m!6763744))

(assert (=> b!5838309 m!6763692))

(declare-fun m!6763776 () Bool)

(assert (=> b!5838309 m!6763776))

(assert (=> b!5838303 m!6763648))

(assert (=> b!5838303 m!6763736))

(assert (=> d!1834659 m!6763648))

(assert (=> d!1834659 m!6763652))

(assert (=> d!1834659 m!6763692))

(declare-fun m!6763778 () Bool)

(assert (=> d!1834659 m!6763778))

(assert (=> b!5838138 d!1834659))

(declare-fun b!5838315 () Bool)

(declare-fun e!3581271 () Regex!15903)

(declare-fun e!3581269 () Regex!15903)

(assert (=> b!5838315 (= e!3581271 e!3581269)))

(declare-fun c!1034425 () Bool)

(assert (=> b!5838315 (= c!1034425 ((_ is Star!15903) (regOne!32319 r!7292)))))

(declare-fun bm!455932 () Bool)

(declare-fun call!455939 () Regex!15903)

(declare-fun call!455937 () Regex!15903)

(assert (=> bm!455932 (= call!455939 call!455937)))

(declare-fun b!5838316 () Bool)

(declare-fun e!3581270 () Regex!15903)

(declare-fun e!3581273 () Regex!15903)

(assert (=> b!5838316 (= e!3581270 e!3581273)))

(declare-fun c!1034422 () Bool)

(assert (=> b!5838316 (= c!1034422 ((_ is ElementMatch!15903) (regOne!32319 r!7292)))))

(declare-fun d!1834661 () Bool)

(declare-fun lt!2303519 () Regex!15903)

(assert (=> d!1834661 (validRegex!7639 lt!2303519)))

(assert (=> d!1834661 (= lt!2303519 e!3581270)))

(declare-fun c!1034424 () Bool)

(assert (=> d!1834661 (= c!1034424 (or ((_ is EmptyExpr!15903) (regOne!32319 r!7292)) ((_ is EmptyLang!15903) (regOne!32319 r!7292))))))

(assert (=> d!1834661 (validRegex!7639 (regOne!32319 r!7292))))

(assert (=> d!1834661 (= (derivativeStep!4643 (regOne!32319 r!7292) (head!12365 s!2326)) lt!2303519)))

(declare-fun bm!455933 () Bool)

(declare-fun call!455940 () Regex!15903)

(assert (=> bm!455933 (= call!455940 call!455939)))

(declare-fun b!5838317 () Bool)

(assert (=> b!5838317 (= e!3581273 (ite (= (head!12365 s!2326) (c!1034241 (regOne!32319 r!7292))) EmptyExpr!15903 EmptyLang!15903))))

(declare-fun bm!455934 () Bool)

(declare-fun c!1034423 () Bool)

(declare-fun call!455938 () Regex!15903)

(assert (=> bm!455934 (= call!455938 (derivativeStep!4643 (ite c!1034423 (regTwo!32319 (regOne!32319 r!7292)) (regOne!32318 (regOne!32319 r!7292))) (head!12365 s!2326)))))

(declare-fun b!5838318 () Bool)

(declare-fun c!1034421 () Bool)

(assert (=> b!5838318 (= c!1034421 (nullable!5903 (regOne!32318 (regOne!32319 r!7292))))))

(declare-fun e!3581272 () Regex!15903)

(assert (=> b!5838318 (= e!3581269 e!3581272)))

(declare-fun b!5838319 () Bool)

(assert (=> b!5838319 (= e!3581271 (Union!15903 call!455937 call!455938))))

(declare-fun b!5838320 () Bool)

(assert (=> b!5838320 (= e!3581269 (Concat!24748 call!455939 (regOne!32319 r!7292)))))

(declare-fun bm!455935 () Bool)

(assert (=> bm!455935 (= call!455937 (derivativeStep!4643 (ite c!1034423 (regOne!32319 (regOne!32319 r!7292)) (ite c!1034425 (reg!16232 (regOne!32319 r!7292)) (ite c!1034421 (regTwo!32318 (regOne!32319 r!7292)) (regOne!32318 (regOne!32319 r!7292))))) (head!12365 s!2326)))))

(declare-fun b!5838321 () Bool)

(assert (=> b!5838321 (= e!3581272 (Union!15903 (Concat!24748 call!455938 (regTwo!32318 (regOne!32319 r!7292))) call!455940))))

(declare-fun b!5838322 () Bool)

(assert (=> b!5838322 (= e!3581270 EmptyLang!15903)))

(declare-fun b!5838323 () Bool)

(assert (=> b!5838323 (= e!3581272 (Union!15903 (Concat!24748 call!455940 (regTwo!32318 (regOne!32319 r!7292))) EmptyLang!15903))))

(declare-fun b!5838324 () Bool)

(assert (=> b!5838324 (= c!1034423 ((_ is Union!15903) (regOne!32319 r!7292)))))

(assert (=> b!5838324 (= e!3581273 e!3581271)))

(assert (= (and d!1834661 c!1034424) b!5838322))

(assert (= (and d!1834661 (not c!1034424)) b!5838316))

(assert (= (and b!5838316 c!1034422) b!5838317))

(assert (= (and b!5838316 (not c!1034422)) b!5838324))

(assert (= (and b!5838324 c!1034423) b!5838319))

(assert (= (and b!5838324 (not c!1034423)) b!5838315))

(assert (= (and b!5838315 c!1034425) b!5838320))

(assert (= (and b!5838315 (not c!1034425)) b!5838318))

(assert (= (and b!5838318 c!1034421) b!5838321))

(assert (= (and b!5838318 (not c!1034421)) b!5838323))

(assert (= (or b!5838321 b!5838323) bm!455933))

(assert (= (or b!5838320 bm!455933) bm!455932))

(assert (= (or b!5838319 b!5838321) bm!455934))

(assert (= (or b!5838319 bm!455932) bm!455935))

(declare-fun m!6763780 () Bool)

(assert (=> d!1834661 m!6763780))

(assert (=> d!1834661 m!6763674))

(assert (=> bm!455934 m!6763644))

(declare-fun m!6763782 () Bool)

(assert (=> bm!455934 m!6763782))

(declare-fun m!6763784 () Bool)

(assert (=> b!5838318 m!6763784))

(assert (=> bm!455935 m!6763644))

(declare-fun m!6763786 () Bool)

(assert (=> bm!455935 m!6763786))

(assert (=> b!5838138 d!1834661))

(assert (=> b!5838138 d!1834623))

(assert (=> b!5838138 d!1834635))

(declare-fun d!1834663 () Bool)

(declare-fun res!2459771 () Bool)

(declare-fun e!3581274 () Bool)

(assert (=> d!1834663 (=> res!2459771 e!3581274)))

(assert (=> d!1834663 (= res!2459771 ((_ is Nil!63884) (exprs!5787 setElem!39538)))))

(assert (=> d!1834663 (= (forall!14992 (exprs!5787 setElem!39538) lambda!319400) e!3581274)))

(declare-fun b!5838325 () Bool)

(declare-fun e!3581275 () Bool)

(assert (=> b!5838325 (= e!3581274 e!3581275)))

(declare-fun res!2459772 () Bool)

(assert (=> b!5838325 (=> (not res!2459772) (not e!3581275))))

(assert (=> b!5838325 (= res!2459772 (dynLambda!24975 lambda!319400 (h!70332 (exprs!5787 setElem!39538))))))

(declare-fun b!5838326 () Bool)

(assert (=> b!5838326 (= e!3581275 (forall!14992 (t!377363 (exprs!5787 setElem!39538)) lambda!319400))))

(assert (= (and d!1834663 (not res!2459771)) b!5838325))

(assert (= (and b!5838325 res!2459772) b!5838326))

(declare-fun b_lambda!219873 () Bool)

(assert (=> (not b_lambda!219873) (not b!5838325)))

(declare-fun m!6763788 () Bool)

(assert (=> b!5838325 m!6763788))

(declare-fun m!6763790 () Bool)

(assert (=> b!5838326 m!6763790))

(assert (=> d!1834621 d!1834663))

(declare-fun d!1834665 () Bool)

(assert (=> d!1834665 (= (isEmpty!35749 (exprs!5787 (h!70333 zl!343))) ((_ is Nil!63884) (exprs!5787 (h!70333 zl!343))))))

(assert (=> b!5837813 d!1834665))

(declare-fun d!1834667 () Bool)

(assert (=> d!1834667 (= (isEmpty!35749 (t!377363 (unfocusZipperList!1324 zl!343))) ((_ is Nil!63884) (t!377363 (unfocusZipperList!1324 zl!343))))))

(assert (=> b!5837872 d!1834667))

(declare-fun d!1834669 () Bool)

(assert (=> d!1834669 (= (isEmpty!35749 (tail!11449 (exprs!5787 (h!70333 zl!343)))) ((_ is Nil!63884) (tail!11449 (exprs!5787 (h!70333 zl!343)))))))

(assert (=> b!5837809 d!1834669))

(declare-fun d!1834671 () Bool)

(assert (=> d!1834671 (= (tail!11449 (exprs!5787 (h!70333 zl!343))) (t!377363 (exprs!5787 (h!70333 zl!343))))))

(assert (=> b!5837809 d!1834671))

(declare-fun b!5838327 () Bool)

(declare-fun e!3581281 () Bool)

(declare-fun e!3581279 () Bool)

(assert (=> b!5838327 (= e!3581281 e!3581279)))

(declare-fun c!1034427 () Bool)

(assert (=> b!5838327 (= c!1034427 ((_ is Union!15903) (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))))))

(declare-fun b!5838328 () Bool)

(declare-fun res!2459777 () Bool)

(declare-fun e!3581282 () Bool)

(assert (=> b!5838328 (=> (not res!2459777) (not e!3581282))))

(declare-fun call!455942 () Bool)

(assert (=> b!5838328 (= res!2459777 call!455942)))

(assert (=> b!5838328 (= e!3581279 e!3581282)))

(declare-fun d!1834673 () Bool)

(declare-fun res!2459776 () Bool)

(declare-fun e!3581277 () Bool)

(assert (=> d!1834673 (=> res!2459776 e!3581277)))

(assert (=> d!1834673 (= res!2459776 ((_ is ElementMatch!15903) (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))))))

(assert (=> d!1834673 (= (validRegex!7639 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))) e!3581277)))

(declare-fun b!5838329 () Bool)

(declare-fun e!3581278 () Bool)

(assert (=> b!5838329 (= e!3581281 e!3581278)))

(declare-fun res!2459775 () Bool)

(assert (=> b!5838329 (= res!2459775 (not (nullable!5903 (reg!16232 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))))))))

(assert (=> b!5838329 (=> (not res!2459775) (not e!3581278))))

(declare-fun b!5838330 () Bool)

(declare-fun e!3581280 () Bool)

(declare-fun call!455943 () Bool)

(assert (=> b!5838330 (= e!3581280 call!455943)))

(declare-fun c!1034426 () Bool)

(declare-fun call!455941 () Bool)

(declare-fun bm!455936 () Bool)

(assert (=> bm!455936 (= call!455941 (validRegex!7639 (ite c!1034426 (reg!16232 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))) (ite c!1034427 (regTwo!32319 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))) (regTwo!32318 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292)))))))))

(declare-fun b!5838331 () Bool)

(assert (=> b!5838331 (= e!3581278 call!455941)))

(declare-fun b!5838332 () Bool)

(declare-fun res!2459774 () Bool)

(declare-fun e!3581276 () Bool)

(assert (=> b!5838332 (=> res!2459774 e!3581276)))

(assert (=> b!5838332 (= res!2459774 (not ((_ is Concat!24748) (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292)))))))

(assert (=> b!5838332 (= e!3581279 e!3581276)))

(declare-fun bm!455937 () Bool)

(assert (=> bm!455937 (= call!455943 call!455941)))

(declare-fun bm!455938 () Bool)

(assert (=> bm!455938 (= call!455942 (validRegex!7639 (ite c!1034427 (regOne!32319 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))) (regOne!32318 (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))))))))

(declare-fun b!5838333 () Bool)

(assert (=> b!5838333 (= e!3581277 e!3581281)))

(assert (=> b!5838333 (= c!1034426 ((_ is Star!15903) (ite c!1034347 (regOne!32319 r!7292) (regOne!32318 r!7292))))))

(declare-fun b!5838334 () Bool)

(assert (=> b!5838334 (= e!3581276 e!3581280)))

(declare-fun res!2459773 () Bool)

(assert (=> b!5838334 (=> (not res!2459773) (not e!3581280))))

(assert (=> b!5838334 (= res!2459773 call!455942)))

(declare-fun b!5838335 () Bool)

(assert (=> b!5838335 (= e!3581282 call!455943)))

(assert (= (and d!1834673 (not res!2459776)) b!5838333))

(assert (= (and b!5838333 c!1034426) b!5838329))

(assert (= (and b!5838333 (not c!1034426)) b!5838327))

(assert (= (and b!5838329 res!2459775) b!5838331))

(assert (= (and b!5838327 c!1034427) b!5838328))

(assert (= (and b!5838327 (not c!1034427)) b!5838332))

(assert (= (and b!5838328 res!2459777) b!5838335))

(assert (= (and b!5838332 (not res!2459774)) b!5838334))

(assert (= (and b!5838334 res!2459773) b!5838330))

(assert (= (or b!5838335 b!5838330) bm!455937))

(assert (= (or b!5838328 b!5838334) bm!455938))

(assert (= (or b!5838331 bm!455937) bm!455936))

(declare-fun m!6763792 () Bool)

(assert (=> b!5838329 m!6763792))

(declare-fun m!6763794 () Bool)

(assert (=> bm!455936 m!6763794))

(declare-fun m!6763796 () Bool)

(assert (=> bm!455938 m!6763796))

(assert (=> bm!455890 d!1834673))

(declare-fun d!1834675 () Bool)

(assert (=> d!1834675 (= (head!12364 (exprs!5787 (h!70333 zl!343))) (h!70332 (exprs!5787 (h!70333 zl!343))))))

(assert (=> b!5837811 d!1834675))

(declare-fun d!1834677 () Bool)

(assert (=> d!1834677 (= (isUnion!778 lt!2303490) ((_ is Union!15903) lt!2303490))))

(assert (=> b!5837870 d!1834677))

(declare-fun d!1834679 () Bool)

(declare-fun lt!2303522 () Bool)

(declare-fun exists!2298 (List!64009 Int) Bool)

(assert (=> d!1834679 (= lt!2303522 (exists!2298 (toList!9687 z!1189) lambda!319389))))

(declare-fun choose!44330 ((InoxSet Context!10574) Int) Bool)

(assert (=> d!1834679 (= lt!2303522 (choose!44330 z!1189 lambda!319389))))

(assert (=> d!1834679 (= (exists!2297 z!1189 lambda!319389) lt!2303522)))

(declare-fun bs!1375544 () Bool)

(assert (= bs!1375544 d!1834679))

(assert (=> bs!1375544 m!6763452))

(assert (=> bs!1375544 m!6763452))

(declare-fun m!6763798 () Bool)

(assert (=> bs!1375544 m!6763798))

(declare-fun m!6763800 () Bool)

(assert (=> bs!1375544 m!6763800))

(assert (=> d!1834593 d!1834679))

(assert (=> b!5838086 d!1834595))

(declare-fun d!1834681 () Bool)

(assert (=> d!1834681 (= (isEmpty!35749 (t!377363 (exprs!5787 (h!70333 zl!343)))) ((_ is Nil!63884) (t!377363 (exprs!5787 (h!70333 zl!343)))))))

(assert (=> b!5837807 d!1834681))

(declare-fun d!1834683 () Bool)

(declare-fun choose!44331 (Int) Bool)

(assert (=> d!1834683 (= (Exists!2977 (ite c!1034374 lambda!319396 lambda!319397)) (choose!44331 (ite c!1034374 lambda!319396 lambda!319397)))))

(declare-fun bs!1375545 () Bool)

(assert (= bs!1375545 d!1834683))

(declare-fun m!6763802 () Bool)

(assert (=> bs!1375545 m!6763802))

(assert (=> bm!455901 d!1834683))

(assert (=> d!1834597 d!1834595))

(assert (=> d!1834597 d!1834593))

(declare-fun d!1834685 () Bool)

(assert (=> d!1834685 (= (nullable!5903 r!7292) (nullableZipper!1752 z!1189))))

(assert (=> d!1834685 true))

(declare-fun _$51!194 () Unit!157077)

(assert (=> d!1834685 (= (choose!44327 r!7292 z!1189) _$51!194)))

(declare-fun bs!1375546 () Bool)

(assert (= bs!1375546 d!1834685))

(assert (=> bs!1375546 m!6763432))

(assert (=> bs!1375546 m!6763430))

(assert (=> d!1834597 d!1834685))

(assert (=> d!1834597 d!1834587))

(declare-fun d!1834687 () Bool)

(assert (=> d!1834687 (= (Exists!2977 (ite c!1034381 lambda!319398 lambda!319399)) (choose!44331 (ite c!1034381 lambda!319398 lambda!319399)))))

(declare-fun bs!1375547 () Bool)

(assert (= bs!1375547 d!1834687))

(declare-fun m!6763804 () Bool)

(assert (=> bs!1375547 m!6763804))

(assert (=> bm!455904 d!1834687))

(declare-fun d!1834689 () Bool)

(declare-fun res!2459778 () Bool)

(declare-fun e!3581283 () Bool)

(assert (=> d!1834689 (=> res!2459778 e!3581283)))

(assert (=> d!1834689 (= res!2459778 ((_ is Nil!63884) lt!2303493))))

(assert (=> d!1834689 (= (forall!14992 lt!2303493 lambda!319380) e!3581283)))

(declare-fun b!5838336 () Bool)

(declare-fun e!3581284 () Bool)

(assert (=> b!5838336 (= e!3581283 e!3581284)))

(declare-fun res!2459779 () Bool)

(assert (=> b!5838336 (=> (not res!2459779) (not e!3581284))))

(assert (=> b!5838336 (= res!2459779 (dynLambda!24975 lambda!319380 (h!70332 lt!2303493)))))

(declare-fun b!5838337 () Bool)

(assert (=> b!5838337 (= e!3581284 (forall!14992 (t!377363 lt!2303493) lambda!319380))))

(assert (= (and d!1834689 (not res!2459778)) b!5838336))

(assert (= (and b!5838336 res!2459779) b!5838337))

(declare-fun b_lambda!219875 () Bool)

(assert (=> (not b_lambda!219875) (not b!5838336)))

(declare-fun m!6763806 () Bool)

(assert (=> b!5838336 m!6763806))

(declare-fun m!6763808 () Bool)

(assert (=> b!5838337 m!6763808))

(assert (=> d!1834581 d!1834689))

(assert (=> d!1834611 d!1834619))

(assert (=> d!1834611 d!1834617))

(declare-fun d!1834691 () Bool)

(assert (=> d!1834691 (= (matchR!8086 (regOne!32319 r!7292) s!2326) (matchRSpec!3004 (regOne!32319 r!7292) s!2326))))

(assert (=> d!1834691 true))

(declare-fun _$88!4184 () Unit!157077)

(assert (=> d!1834691 (= (choose!44328 (regOne!32319 r!7292) s!2326) _$88!4184)))

(declare-fun bs!1375548 () Bool)

(assert (= bs!1375548 d!1834691))

(assert (=> bs!1375548 m!6763448))

(assert (=> bs!1375548 m!6763444))

(assert (=> d!1834611 d!1834691))

(declare-fun b!5838338 () Bool)

(declare-fun e!3581290 () Bool)

(declare-fun e!3581288 () Bool)

(assert (=> b!5838338 (= e!3581290 e!3581288)))

(declare-fun c!1034429 () Bool)

(assert (=> b!5838338 (= c!1034429 ((_ is Union!15903) (regOne!32319 r!7292)))))

(declare-fun b!5838339 () Bool)

(declare-fun res!2459784 () Bool)

(declare-fun e!3581291 () Bool)

(assert (=> b!5838339 (=> (not res!2459784) (not e!3581291))))

(declare-fun call!455945 () Bool)

(assert (=> b!5838339 (= res!2459784 call!455945)))

(assert (=> b!5838339 (= e!3581288 e!3581291)))

(declare-fun d!1834693 () Bool)

(declare-fun res!2459783 () Bool)

(declare-fun e!3581286 () Bool)

(assert (=> d!1834693 (=> res!2459783 e!3581286)))

(assert (=> d!1834693 (= res!2459783 ((_ is ElementMatch!15903) (regOne!32319 r!7292)))))

(assert (=> d!1834693 (= (validRegex!7639 (regOne!32319 r!7292)) e!3581286)))

(declare-fun b!5838340 () Bool)

(declare-fun e!3581287 () Bool)

(assert (=> b!5838340 (= e!3581290 e!3581287)))

(declare-fun res!2459782 () Bool)

(assert (=> b!5838340 (= res!2459782 (not (nullable!5903 (reg!16232 (regOne!32319 r!7292)))))))

(assert (=> b!5838340 (=> (not res!2459782) (not e!3581287))))

(declare-fun b!5838341 () Bool)

(declare-fun e!3581289 () Bool)

(declare-fun call!455946 () Bool)

(assert (=> b!5838341 (= e!3581289 call!455946)))

(declare-fun call!455944 () Bool)

(declare-fun c!1034428 () Bool)

(declare-fun bm!455939 () Bool)

(assert (=> bm!455939 (= call!455944 (validRegex!7639 (ite c!1034428 (reg!16232 (regOne!32319 r!7292)) (ite c!1034429 (regTwo!32319 (regOne!32319 r!7292)) (regTwo!32318 (regOne!32319 r!7292))))))))

(declare-fun b!5838342 () Bool)

(assert (=> b!5838342 (= e!3581287 call!455944)))

(declare-fun b!5838343 () Bool)

(declare-fun res!2459781 () Bool)

(declare-fun e!3581285 () Bool)

(assert (=> b!5838343 (=> res!2459781 e!3581285)))

(assert (=> b!5838343 (= res!2459781 (not ((_ is Concat!24748) (regOne!32319 r!7292))))))

(assert (=> b!5838343 (= e!3581288 e!3581285)))

(declare-fun bm!455940 () Bool)

(assert (=> bm!455940 (= call!455946 call!455944)))

(declare-fun bm!455941 () Bool)

(assert (=> bm!455941 (= call!455945 (validRegex!7639 (ite c!1034429 (regOne!32319 (regOne!32319 r!7292)) (regOne!32318 (regOne!32319 r!7292)))))))

(declare-fun b!5838344 () Bool)

(assert (=> b!5838344 (= e!3581286 e!3581290)))

(assert (=> b!5838344 (= c!1034428 ((_ is Star!15903) (regOne!32319 r!7292)))))

(declare-fun b!5838345 () Bool)

(assert (=> b!5838345 (= e!3581285 e!3581289)))

(declare-fun res!2459780 () Bool)

(assert (=> b!5838345 (=> (not res!2459780) (not e!3581289))))

(assert (=> b!5838345 (= res!2459780 call!455945)))

(declare-fun b!5838346 () Bool)

(assert (=> b!5838346 (= e!3581291 call!455946)))

(assert (= (and d!1834693 (not res!2459783)) b!5838344))

(assert (= (and b!5838344 c!1034428) b!5838340))

(assert (= (and b!5838344 (not c!1034428)) b!5838338))

(assert (= (and b!5838340 res!2459782) b!5838342))

(assert (= (and b!5838338 c!1034429) b!5838339))

(assert (= (and b!5838338 (not c!1034429)) b!5838343))

(assert (= (and b!5838339 res!2459784) b!5838346))

(assert (= (and b!5838343 (not res!2459781)) b!5838345))

(assert (= (and b!5838345 res!2459780) b!5838341))

(assert (= (or b!5838346 b!5838341) bm!455940))

(assert (= (or b!5838339 b!5838345) bm!455941))

(assert (= (or b!5838342 bm!455940) bm!455939))

(declare-fun m!6763810 () Bool)

(assert (=> b!5838340 m!6763810))

(declare-fun m!6763812 () Bool)

(assert (=> bm!455939 m!6763812))

(declare-fun m!6763814 () Bool)

(assert (=> bm!455941 m!6763814))

(assert (=> d!1834611 d!1834693))

(assert (=> b!5838124 d!1834633))

(assert (=> b!5838124 d!1834635))

(declare-fun b!5838347 () Bool)

(declare-fun res!2459790 () Bool)

(declare-fun e!3581292 () Bool)

(assert (=> b!5838347 (=> res!2459790 e!3581292)))

(assert (=> b!5838347 (= res!2459790 (not (isEmpty!35750 (tail!11450 (tail!11450 s!2326)))))))

(declare-fun b!5838348 () Bool)

(declare-fun e!3581297 () Bool)

(assert (=> b!5838348 (= e!3581297 (matchR!8086 (derivativeStep!4643 (derivativeStep!4643 r!7292 (head!12365 s!2326)) (head!12365 (tail!11450 s!2326))) (tail!11450 (tail!11450 s!2326))))))

(declare-fun b!5838349 () Bool)

(declare-fun e!3581298 () Bool)

(assert (=> b!5838349 (= e!3581298 (= (head!12365 (tail!11450 s!2326)) (c!1034241 (derivativeStep!4643 r!7292 (head!12365 s!2326)))))))

(declare-fun b!5838350 () Bool)

(declare-fun res!2459791 () Bool)

(declare-fun e!3581294 () Bool)

(assert (=> b!5838350 (=> res!2459791 e!3581294)))

(assert (=> b!5838350 (= res!2459791 (not ((_ is ElementMatch!15903) (derivativeStep!4643 r!7292 (head!12365 s!2326)))))))

(declare-fun e!3581296 () Bool)

(assert (=> b!5838350 (= e!3581296 e!3581294)))

(declare-fun b!5838351 () Bool)

(declare-fun e!3581293 () Bool)

(assert (=> b!5838351 (= e!3581293 e!3581296)))

(declare-fun c!1034430 () Bool)

(assert (=> b!5838351 (= c!1034430 ((_ is EmptyLang!15903) (derivativeStep!4643 r!7292 (head!12365 s!2326))))))

(declare-fun b!5838352 () Bool)

(declare-fun lt!2303523 () Bool)

(assert (=> b!5838352 (= e!3581296 (not lt!2303523))))

(declare-fun b!5838353 () Bool)

(declare-fun e!3581295 () Bool)

(assert (=> b!5838353 (= e!3581294 e!3581295)))

(declare-fun res!2459789 () Bool)

(assert (=> b!5838353 (=> (not res!2459789) (not e!3581295))))

(assert (=> b!5838353 (= res!2459789 (not lt!2303523))))

(declare-fun b!5838354 () Bool)

(declare-fun res!2459788 () Bool)

(assert (=> b!5838354 (=> (not res!2459788) (not e!3581298))))

(declare-fun call!455947 () Bool)

(assert (=> b!5838354 (= res!2459788 (not call!455947))))

(declare-fun b!5838355 () Bool)

(assert (=> b!5838355 (= e!3581297 (nullable!5903 (derivativeStep!4643 r!7292 (head!12365 s!2326))))))

(declare-fun bm!455942 () Bool)

(assert (=> bm!455942 (= call!455947 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun b!5838356 () Bool)

(declare-fun res!2459786 () Bool)

(assert (=> b!5838356 (=> res!2459786 e!3581294)))

(assert (=> b!5838356 (= res!2459786 e!3581298)))

(declare-fun res!2459792 () Bool)

(assert (=> b!5838356 (=> (not res!2459792) (not e!3581298))))

(assert (=> b!5838356 (= res!2459792 lt!2303523)))

(declare-fun b!5838357 () Bool)

(assert (=> b!5838357 (= e!3581295 e!3581292)))

(declare-fun res!2459787 () Bool)

(assert (=> b!5838357 (=> res!2459787 e!3581292)))

(assert (=> b!5838357 (= res!2459787 call!455947)))

(declare-fun b!5838358 () Bool)

(assert (=> b!5838358 (= e!3581292 (not (= (head!12365 (tail!11450 s!2326)) (c!1034241 (derivativeStep!4643 r!7292 (head!12365 s!2326))))))))

(declare-fun d!1834695 () Bool)

(assert (=> d!1834695 e!3581293))

(declare-fun c!1034431 () Bool)

(assert (=> d!1834695 (= c!1034431 ((_ is EmptyExpr!15903) (derivativeStep!4643 r!7292 (head!12365 s!2326))))))

(assert (=> d!1834695 (= lt!2303523 e!3581297)))

(declare-fun c!1034432 () Bool)

(assert (=> d!1834695 (= c!1034432 (isEmpty!35750 (tail!11450 s!2326)))))

(assert (=> d!1834695 (validRegex!7639 (derivativeStep!4643 r!7292 (head!12365 s!2326)))))

(assert (=> d!1834695 (= (matchR!8086 (derivativeStep!4643 r!7292 (head!12365 s!2326)) (tail!11450 s!2326)) lt!2303523)))

(declare-fun b!5838359 () Bool)

(declare-fun res!2459785 () Bool)

(assert (=> b!5838359 (=> (not res!2459785) (not e!3581298))))

(assert (=> b!5838359 (= res!2459785 (isEmpty!35750 (tail!11450 (tail!11450 s!2326))))))

(declare-fun b!5838360 () Bool)

(assert (=> b!5838360 (= e!3581293 (= lt!2303523 call!455947))))

(assert (= (and d!1834695 c!1034432) b!5838355))

(assert (= (and d!1834695 (not c!1034432)) b!5838348))

(assert (= (and d!1834695 c!1034431) b!5838360))

(assert (= (and d!1834695 (not c!1034431)) b!5838351))

(assert (= (and b!5838351 c!1034430) b!5838352))

(assert (= (and b!5838351 (not c!1034430)) b!5838350))

(assert (= (and b!5838350 (not res!2459791)) b!5838356))

(assert (= (and b!5838356 res!2459792) b!5838354))

(assert (= (and b!5838354 res!2459788) b!5838359))

(assert (= (and b!5838359 res!2459785) b!5838349))

(assert (= (and b!5838356 (not res!2459786)) b!5838353))

(assert (= (and b!5838353 res!2459789) b!5838357))

(assert (= (and b!5838357 (not res!2459787)) b!5838347))

(assert (= (and b!5838347 (not res!2459790)) b!5838358))

(assert (= (or b!5838360 b!5838354 b!5838357) bm!455942))

(assert (=> b!5838348 m!6763648))

(assert (=> b!5838348 m!6763736))

(assert (=> b!5838348 m!6763646))

(assert (=> b!5838348 m!6763736))

(declare-fun m!6763816 () Bool)

(assert (=> b!5838348 m!6763816))

(assert (=> b!5838348 m!6763648))

(assert (=> b!5838348 m!6763740))

(assert (=> b!5838348 m!6763816))

(assert (=> b!5838348 m!6763740))

(declare-fun m!6763818 () Bool)

(assert (=> b!5838348 m!6763818))

(assert (=> bm!455942 m!6763648))

(assert (=> bm!455942 m!6763652))

(assert (=> b!5838358 m!6763648))

(assert (=> b!5838358 m!6763736))

(assert (=> b!5838359 m!6763648))

(assert (=> b!5838359 m!6763740))

(assert (=> b!5838359 m!6763740))

(assert (=> b!5838359 m!6763744))

(assert (=> b!5838347 m!6763648))

(assert (=> b!5838347 m!6763740))

(assert (=> b!5838347 m!6763740))

(assert (=> b!5838347 m!6763744))

(assert (=> b!5838355 m!6763646))

(declare-fun m!6763820 () Bool)

(assert (=> b!5838355 m!6763820))

(assert (=> b!5838349 m!6763648))

(assert (=> b!5838349 m!6763736))

(assert (=> d!1834695 m!6763648))

(assert (=> d!1834695 m!6763652))

(assert (=> d!1834695 m!6763646))

(declare-fun m!6763822 () Bool)

(assert (=> d!1834695 m!6763822))

(assert (=> b!5838079 d!1834695))

(declare-fun b!5838361 () Bool)

(declare-fun e!3581301 () Regex!15903)

(declare-fun e!3581299 () Regex!15903)

(assert (=> b!5838361 (= e!3581301 e!3581299)))

(declare-fun c!1034437 () Bool)

(assert (=> b!5838361 (= c!1034437 ((_ is Star!15903) r!7292))))

(declare-fun bm!455943 () Bool)

(declare-fun call!455950 () Regex!15903)

(declare-fun call!455948 () Regex!15903)

(assert (=> bm!455943 (= call!455950 call!455948)))

(declare-fun b!5838362 () Bool)

(declare-fun e!3581300 () Regex!15903)

(declare-fun e!3581303 () Regex!15903)

(assert (=> b!5838362 (= e!3581300 e!3581303)))

(declare-fun c!1034434 () Bool)

(assert (=> b!5838362 (= c!1034434 ((_ is ElementMatch!15903) r!7292))))

(declare-fun d!1834697 () Bool)

(declare-fun lt!2303524 () Regex!15903)

(assert (=> d!1834697 (validRegex!7639 lt!2303524)))

(assert (=> d!1834697 (= lt!2303524 e!3581300)))

(declare-fun c!1034436 () Bool)

(assert (=> d!1834697 (= c!1034436 (or ((_ is EmptyExpr!15903) r!7292) ((_ is EmptyLang!15903) r!7292)))))

(assert (=> d!1834697 (validRegex!7639 r!7292)))

(assert (=> d!1834697 (= (derivativeStep!4643 r!7292 (head!12365 s!2326)) lt!2303524)))

(declare-fun bm!455944 () Bool)

(declare-fun call!455951 () Regex!15903)

(assert (=> bm!455944 (= call!455951 call!455950)))

(declare-fun b!5838363 () Bool)

(assert (=> b!5838363 (= e!3581303 (ite (= (head!12365 s!2326) (c!1034241 r!7292)) EmptyExpr!15903 EmptyLang!15903))))

(declare-fun bm!455945 () Bool)

(declare-fun c!1034435 () Bool)

(declare-fun call!455949 () Regex!15903)

(assert (=> bm!455945 (= call!455949 (derivativeStep!4643 (ite c!1034435 (regTwo!32319 r!7292) (regOne!32318 r!7292)) (head!12365 s!2326)))))

(declare-fun b!5838364 () Bool)

(declare-fun c!1034433 () Bool)

(assert (=> b!5838364 (= c!1034433 (nullable!5903 (regOne!32318 r!7292)))))

(declare-fun e!3581302 () Regex!15903)

(assert (=> b!5838364 (= e!3581299 e!3581302)))

(declare-fun b!5838365 () Bool)

(assert (=> b!5838365 (= e!3581301 (Union!15903 call!455948 call!455949))))

(declare-fun b!5838366 () Bool)

(assert (=> b!5838366 (= e!3581299 (Concat!24748 call!455950 r!7292))))

(declare-fun bm!455946 () Bool)

(assert (=> bm!455946 (= call!455948 (derivativeStep!4643 (ite c!1034435 (regOne!32319 r!7292) (ite c!1034437 (reg!16232 r!7292) (ite c!1034433 (regTwo!32318 r!7292) (regOne!32318 r!7292)))) (head!12365 s!2326)))))

(declare-fun b!5838367 () Bool)

(assert (=> b!5838367 (= e!3581302 (Union!15903 (Concat!24748 call!455949 (regTwo!32318 r!7292)) call!455951))))

(declare-fun b!5838368 () Bool)

(assert (=> b!5838368 (= e!3581300 EmptyLang!15903)))

(declare-fun b!5838369 () Bool)

(assert (=> b!5838369 (= e!3581302 (Union!15903 (Concat!24748 call!455951 (regTwo!32318 r!7292)) EmptyLang!15903))))

(declare-fun b!5838370 () Bool)

(assert (=> b!5838370 (= c!1034435 ((_ is Union!15903) r!7292))))

(assert (=> b!5838370 (= e!3581303 e!3581301)))

(assert (= (and d!1834697 c!1034436) b!5838368))

(assert (= (and d!1834697 (not c!1034436)) b!5838362))

(assert (= (and b!5838362 c!1034434) b!5838363))

(assert (= (and b!5838362 (not c!1034434)) b!5838370))

(assert (= (and b!5838370 c!1034435) b!5838365))

(assert (= (and b!5838370 (not c!1034435)) b!5838361))

(assert (= (and b!5838361 c!1034437) b!5838366))

(assert (= (and b!5838361 (not c!1034437)) b!5838364))

(assert (= (and b!5838364 c!1034433) b!5838367))

(assert (= (and b!5838364 (not c!1034433)) b!5838369))

(assert (= (or b!5838367 b!5838369) bm!455944))

(assert (= (or b!5838366 bm!455944) bm!455943))

(assert (= (or b!5838365 b!5838367) bm!455945))

(assert (= (or b!5838365 bm!455943) bm!455946))

(declare-fun m!6763824 () Bool)

(assert (=> d!1834697 m!6763824))

(assert (=> d!1834697 m!6763412))

(assert (=> bm!455945 m!6763644))

(declare-fun m!6763826 () Bool)

(assert (=> bm!455945 m!6763826))

(declare-fun m!6763828 () Bool)

(assert (=> b!5838364 m!6763828))

(assert (=> bm!455946 m!6763644))

(declare-fun m!6763830 () Bool)

(assert (=> bm!455946 m!6763830))

(assert (=> b!5838079 d!1834697))

(assert (=> b!5838079 d!1834623))

(assert (=> b!5838079 d!1834635))

(declare-fun d!1834701 () Bool)

(assert (=> d!1834701 (= (Exists!2977 (ite c!1034358 lambda!319394 lambda!319395)) (choose!44331 (ite c!1034358 lambda!319394 lambda!319395)))))

(declare-fun bs!1375549 () Bool)

(assert (= bs!1375549 d!1834701))

(declare-fun m!6763832 () Bool)

(assert (=> bs!1375549 m!6763832))

(assert (=> bm!455896 d!1834701))

(declare-fun bs!1375550 () Bool)

(declare-fun b!5838372 () Bool)

(assert (= bs!1375550 (and b!5838372 b!5838036)))

(declare-fun lambda!319402 () Int)

(assert (=> bs!1375550 (= (and (= (reg!16232 (regTwo!32319 (regTwo!32319 r!7292))) (reg!16232 r!7292)) (= (regTwo!32319 (regTwo!32319 r!7292)) r!7292)) (= lambda!319402 lambda!319394))))

(declare-fun bs!1375551 () Bool)

(assert (= bs!1375551 (and b!5838372 b!5838043)))

(assert (=> bs!1375551 (not (= lambda!319402 lambda!319395))))

(declare-fun bs!1375552 () Bool)

(assert (= bs!1375552 (and b!5838372 b!5838134)))

(assert (=> bs!1375552 (not (= lambda!319402 lambda!319399))))

(declare-fun bs!1375553 () Bool)

(assert (= bs!1375553 (and b!5838372 b!5838102)))

(assert (=> bs!1375553 (= (and (= (reg!16232 (regTwo!32319 (regTwo!32319 r!7292))) (reg!16232 (regTwo!32319 r!7292))) (= (regTwo!32319 (regTwo!32319 r!7292)) (regTwo!32319 r!7292))) (= lambda!319402 lambda!319396))))

(declare-fun bs!1375554 () Bool)

(assert (= bs!1375554 (and b!5838372 b!5838127)))

(assert (=> bs!1375554 (= (and (= (reg!16232 (regTwo!32319 (regTwo!32319 r!7292))) (reg!16232 (regOne!32319 r!7292))) (= (regTwo!32319 (regTwo!32319 r!7292)) (regOne!32319 r!7292))) (= lambda!319402 lambda!319398))))

(declare-fun bs!1375555 () Bool)

(assert (= bs!1375555 (and b!5838372 b!5838109)))

(assert (=> bs!1375555 (not (= lambda!319402 lambda!319397))))

(assert (=> b!5838372 true))

(assert (=> b!5838372 true))

(declare-fun bs!1375556 () Bool)

(declare-fun b!5838379 () Bool)

(assert (= bs!1375556 (and b!5838379 b!5838043)))

(declare-fun lambda!319403 () Int)

(assert (=> bs!1375556 (= (and (= (regOne!32318 (regTwo!32319 (regTwo!32319 r!7292))) (regOne!32318 r!7292)) (= (regTwo!32318 (regTwo!32319 (regTwo!32319 r!7292))) (regTwo!32318 r!7292))) (= lambda!319403 lambda!319395))))

(declare-fun bs!1375557 () Bool)

(assert (= bs!1375557 (and b!5838379 b!5838134)))

(assert (=> bs!1375557 (= (and (= (regOne!32318 (regTwo!32319 (regTwo!32319 r!7292))) (regOne!32318 (regOne!32319 r!7292))) (= (regTwo!32318 (regTwo!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regOne!32319 r!7292)))) (= lambda!319403 lambda!319399))))

(declare-fun bs!1375558 () Bool)

(assert (= bs!1375558 (and b!5838379 b!5838102)))

(assert (=> bs!1375558 (not (= lambda!319403 lambda!319396))))

(declare-fun bs!1375559 () Bool)

(assert (= bs!1375559 (and b!5838379 b!5838127)))

(assert (=> bs!1375559 (not (= lambda!319403 lambda!319398))))

(declare-fun bs!1375560 () Bool)

(assert (= bs!1375560 (and b!5838379 b!5838109)))

(assert (=> bs!1375560 (= (and (= (regOne!32318 (regTwo!32319 (regTwo!32319 r!7292))) (regOne!32318 (regTwo!32319 r!7292))) (= (regTwo!32318 (regTwo!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regTwo!32319 r!7292)))) (= lambda!319403 lambda!319397))))

(declare-fun bs!1375561 () Bool)

(assert (= bs!1375561 (and b!5838379 b!5838372)))

(assert (=> bs!1375561 (not (= lambda!319403 lambda!319402))))

(declare-fun bs!1375562 () Bool)

(assert (= bs!1375562 (and b!5838379 b!5838036)))

(assert (=> bs!1375562 (not (= lambda!319403 lambda!319394))))

(assert (=> b!5838379 true))

(assert (=> b!5838379 true))

(declare-fun bm!455947 () Bool)

(declare-fun call!455952 () Bool)

(assert (=> bm!455947 (= call!455952 (isEmpty!35750 s!2326))))

(declare-fun b!5838371 () Bool)

(declare-fun e!3581304 () Bool)

(assert (=> b!5838371 (= e!3581304 (matchRSpec!3004 (regTwo!32319 (regTwo!32319 (regTwo!32319 r!7292))) s!2326))))

(declare-fun e!3581306 () Bool)

(declare-fun call!455953 () Bool)

(assert (=> b!5838372 (= e!3581306 call!455953)))

(declare-fun b!5838373 () Bool)

(declare-fun c!1034439 () Bool)

(assert (=> b!5838373 (= c!1034439 ((_ is Union!15903) (regTwo!32319 (regTwo!32319 r!7292))))))

(declare-fun e!3581309 () Bool)

(declare-fun e!3581308 () Bool)

(assert (=> b!5838373 (= e!3581309 e!3581308)))

(declare-fun b!5838374 () Bool)

(declare-fun e!3581307 () Bool)

(assert (=> b!5838374 (= e!3581307 call!455952)))

(declare-fun b!5838375 () Bool)

(declare-fun res!2459793 () Bool)

(assert (=> b!5838375 (=> res!2459793 e!3581306)))

(assert (=> b!5838375 (= res!2459793 call!455952)))

(declare-fun e!3581310 () Bool)

(assert (=> b!5838375 (= e!3581310 e!3581306)))

(declare-fun c!1034438 () Bool)

(declare-fun bm!455948 () Bool)

(assert (=> bm!455948 (= call!455953 (Exists!2977 (ite c!1034438 lambda!319402 lambda!319403)))))

(declare-fun b!5838376 () Bool)

(assert (=> b!5838376 (= e!3581308 e!3581304)))

(declare-fun res!2459794 () Bool)

(assert (=> b!5838376 (= res!2459794 (matchRSpec!3004 (regOne!32319 (regTwo!32319 (regTwo!32319 r!7292))) s!2326))))

(assert (=> b!5838376 (=> res!2459794 e!3581304)))

(declare-fun b!5838377 () Bool)

(declare-fun e!3581305 () Bool)

(assert (=> b!5838377 (= e!3581307 e!3581305)))

(declare-fun res!2459795 () Bool)

(assert (=> b!5838377 (= res!2459795 (not ((_ is EmptyLang!15903) (regTwo!32319 (regTwo!32319 r!7292)))))))

(assert (=> b!5838377 (=> (not res!2459795) (not e!3581305))))

(declare-fun b!5838378 () Bool)

(declare-fun c!1034440 () Bool)

(assert (=> b!5838378 (= c!1034440 ((_ is ElementMatch!15903) (regTwo!32319 (regTwo!32319 r!7292))))))

(assert (=> b!5838378 (= e!3581305 e!3581309)))

(assert (=> b!5838379 (= e!3581310 call!455953)))

(declare-fun b!5838380 () Bool)

(assert (=> b!5838380 (= e!3581308 e!3581310)))

(assert (=> b!5838380 (= c!1034438 ((_ is Star!15903) (regTwo!32319 (regTwo!32319 r!7292))))))

(declare-fun d!1834703 () Bool)

(declare-fun c!1034441 () Bool)

(assert (=> d!1834703 (= c!1034441 ((_ is EmptyExpr!15903) (regTwo!32319 (regTwo!32319 r!7292))))))

(assert (=> d!1834703 (= (matchRSpec!3004 (regTwo!32319 (regTwo!32319 r!7292)) s!2326) e!3581307)))

(declare-fun b!5838381 () Bool)

(assert (=> b!5838381 (= e!3581309 (= s!2326 (Cons!63886 (c!1034241 (regTwo!32319 (regTwo!32319 r!7292))) Nil!63886)))))

(assert (= (and d!1834703 c!1034441) b!5838374))

(assert (= (and d!1834703 (not c!1034441)) b!5838377))

(assert (= (and b!5838377 res!2459795) b!5838378))

(assert (= (and b!5838378 c!1034440) b!5838381))

(assert (= (and b!5838378 (not c!1034440)) b!5838373))

(assert (= (and b!5838373 c!1034439) b!5838376))

(assert (= (and b!5838373 (not c!1034439)) b!5838380))

(assert (= (and b!5838376 (not res!2459794)) b!5838371))

(assert (= (and b!5838380 c!1034438) b!5838375))

(assert (= (and b!5838380 (not c!1034438)) b!5838379))

(assert (= (and b!5838375 (not res!2459793)) b!5838372))

(assert (= (or b!5838372 b!5838379) bm!455948))

(assert (= (or b!5838374 b!5838375) bm!455947))

(assert (=> bm!455947 m!6763640))

(declare-fun m!6763834 () Bool)

(assert (=> b!5838371 m!6763834))

(declare-fun m!6763836 () Bool)

(assert (=> bm!455948 m!6763836))

(declare-fun m!6763838 () Bool)

(assert (=> b!5838376 m!6763838))

(assert (=> b!5838101 d!1834703))

(declare-fun d!1834709 () Bool)

(assert (=> d!1834709 (= (nullable!5903 (regTwo!32319 r!7292)) (nullableFct!1892 (regTwo!32319 r!7292)))))

(declare-fun bs!1375563 () Bool)

(assert (= bs!1375563 d!1834709))

(declare-fun m!6763840 () Bool)

(assert (=> bs!1375563 m!6763840))

(assert (=> b!5838120 d!1834709))

(declare-fun bs!1375564 () Bool)

(declare-fun d!1834711 () Bool)

(assert (= bs!1375564 (and d!1834711 d!1834581)))

(declare-fun lambda!319404 () Int)

(assert (=> bs!1375564 (= lambda!319404 lambda!319380)))

(declare-fun bs!1375565 () Bool)

(assert (= bs!1375565 (and d!1834711 d!1834573)))

(assert (=> bs!1375565 (= lambda!319404 lambda!319376)))

(declare-fun bs!1375566 () Bool)

(assert (= bs!1375566 (and d!1834711 d!1834629)))

(assert (=> bs!1375566 (= lambda!319404 lambda!319401)))

(declare-fun bs!1375567 () Bool)

(assert (= bs!1375567 (and d!1834711 d!1834591)))

(assert (=> bs!1375567 (= lambda!319404 lambda!319386)))

(declare-fun bs!1375568 () Bool)

(assert (= bs!1375568 (and d!1834711 d!1834621)))

(assert (=> bs!1375568 (= lambda!319404 lambda!319400)))

(declare-fun bs!1375569 () Bool)

(assert (= bs!1375569 (and d!1834711 d!1834535)))

(assert (=> bs!1375569 (= lambda!319404 lambda!319368)))

(assert (=> d!1834711 (= (inv!83004 setElem!39544) (forall!14992 (exprs!5787 setElem!39544) lambda!319404))))

(declare-fun bs!1375570 () Bool)

(assert (= bs!1375570 d!1834711))

(declare-fun m!6763842 () Bool)

(assert (=> bs!1375570 m!6763842))

(assert (=> setNonEmpty!39544 d!1834711))

(declare-fun bs!1375571 () Bool)

(declare-fun b!5838383 () Bool)

(assert (= bs!1375571 (and b!5838383 b!5838043)))

(declare-fun lambda!319405 () Int)

(assert (=> bs!1375571 (not (= lambda!319405 lambda!319395))))

(declare-fun bs!1375572 () Bool)

(assert (= bs!1375572 (and b!5838383 b!5838102)))

(assert (=> bs!1375572 (= (and (= (reg!16232 (regTwo!32319 (regOne!32319 r!7292))) (reg!16232 (regTwo!32319 r!7292))) (= (regTwo!32319 (regOne!32319 r!7292)) (regTwo!32319 r!7292))) (= lambda!319405 lambda!319396))))

(declare-fun bs!1375573 () Bool)

(assert (= bs!1375573 (and b!5838383 b!5838127)))

(assert (=> bs!1375573 (= (and (= (reg!16232 (regTwo!32319 (regOne!32319 r!7292))) (reg!16232 (regOne!32319 r!7292))) (= (regTwo!32319 (regOne!32319 r!7292)) (regOne!32319 r!7292))) (= lambda!319405 lambda!319398))))

(declare-fun bs!1375575 () Bool)

(assert (= bs!1375575 (and b!5838383 b!5838109)))

(assert (=> bs!1375575 (not (= lambda!319405 lambda!319397))))

(declare-fun bs!1375576 () Bool)

(assert (= bs!1375576 (and b!5838383 b!5838372)))

(assert (=> bs!1375576 (= (and (= (reg!16232 (regTwo!32319 (regOne!32319 r!7292))) (reg!16232 (regTwo!32319 (regTwo!32319 r!7292)))) (= (regTwo!32319 (regOne!32319 r!7292)) (regTwo!32319 (regTwo!32319 r!7292)))) (= lambda!319405 lambda!319402))))

(declare-fun bs!1375577 () Bool)

(assert (= bs!1375577 (and b!5838383 b!5838036)))

(assert (=> bs!1375577 (= (and (= (reg!16232 (regTwo!32319 (regOne!32319 r!7292))) (reg!16232 r!7292)) (= (regTwo!32319 (regOne!32319 r!7292)) r!7292)) (= lambda!319405 lambda!319394))))

(declare-fun bs!1375578 () Bool)

(assert (= bs!1375578 (and b!5838383 b!5838134)))

(assert (=> bs!1375578 (not (= lambda!319405 lambda!319399))))

(declare-fun bs!1375579 () Bool)

(assert (= bs!1375579 (and b!5838383 b!5838379)))

(assert (=> bs!1375579 (not (= lambda!319405 lambda!319403))))

(assert (=> b!5838383 true))

(assert (=> b!5838383 true))

(declare-fun bs!1375580 () Bool)

(declare-fun b!5838390 () Bool)

(assert (= bs!1375580 (and b!5838390 b!5838043)))

(declare-fun lambda!319406 () Int)

(assert (=> bs!1375580 (= (and (= (regOne!32318 (regTwo!32319 (regOne!32319 r!7292))) (regOne!32318 r!7292)) (= (regTwo!32318 (regTwo!32319 (regOne!32319 r!7292))) (regTwo!32318 r!7292))) (= lambda!319406 lambda!319395))))

(declare-fun bs!1375581 () Bool)

(assert (= bs!1375581 (and b!5838390 b!5838102)))

(assert (=> bs!1375581 (not (= lambda!319406 lambda!319396))))

(declare-fun bs!1375582 () Bool)

(assert (= bs!1375582 (and b!5838390 b!5838383)))

(assert (=> bs!1375582 (not (= lambda!319406 lambda!319405))))

(declare-fun bs!1375583 () Bool)

(assert (= bs!1375583 (and b!5838390 b!5838127)))

(assert (=> bs!1375583 (not (= lambda!319406 lambda!319398))))

(declare-fun bs!1375584 () Bool)

(assert (= bs!1375584 (and b!5838390 b!5838109)))

(assert (=> bs!1375584 (= (and (= (regOne!32318 (regTwo!32319 (regOne!32319 r!7292))) (regOne!32318 (regTwo!32319 r!7292))) (= (regTwo!32318 (regTwo!32319 (regOne!32319 r!7292))) (regTwo!32318 (regTwo!32319 r!7292)))) (= lambda!319406 lambda!319397))))

(declare-fun bs!1375585 () Bool)

(assert (= bs!1375585 (and b!5838390 b!5838372)))

(assert (=> bs!1375585 (not (= lambda!319406 lambda!319402))))

(declare-fun bs!1375586 () Bool)

(assert (= bs!1375586 (and b!5838390 b!5838036)))

(assert (=> bs!1375586 (not (= lambda!319406 lambda!319394))))

(declare-fun bs!1375587 () Bool)

(assert (= bs!1375587 (and b!5838390 b!5838134)))

(assert (=> bs!1375587 (= (and (= (regOne!32318 (regTwo!32319 (regOne!32319 r!7292))) (regOne!32318 (regOne!32319 r!7292))) (= (regTwo!32318 (regTwo!32319 (regOne!32319 r!7292))) (regTwo!32318 (regOne!32319 r!7292)))) (= lambda!319406 lambda!319399))))

(declare-fun bs!1375588 () Bool)

(assert (= bs!1375588 (and b!5838390 b!5838379)))

(assert (=> bs!1375588 (= (and (= (regOne!32318 (regTwo!32319 (regOne!32319 r!7292))) (regOne!32318 (regTwo!32319 (regTwo!32319 r!7292)))) (= (regTwo!32318 (regTwo!32319 (regOne!32319 r!7292))) (regTwo!32318 (regTwo!32319 (regTwo!32319 r!7292))))) (= lambda!319406 lambda!319403))))

(assert (=> b!5838390 true))

(assert (=> b!5838390 true))

(declare-fun bm!455949 () Bool)

(declare-fun call!455954 () Bool)

(assert (=> bm!455949 (= call!455954 (isEmpty!35750 s!2326))))

(declare-fun b!5838382 () Bool)

(declare-fun e!3581311 () Bool)

(assert (=> b!5838382 (= e!3581311 (matchRSpec!3004 (regTwo!32319 (regTwo!32319 (regOne!32319 r!7292))) s!2326))))

(declare-fun e!3581313 () Bool)

(declare-fun call!455955 () Bool)

(assert (=> b!5838383 (= e!3581313 call!455955)))

(declare-fun b!5838384 () Bool)

(declare-fun c!1034443 () Bool)

(assert (=> b!5838384 (= c!1034443 ((_ is Union!15903) (regTwo!32319 (regOne!32319 r!7292))))))

(declare-fun e!3581316 () Bool)

(declare-fun e!3581315 () Bool)

(assert (=> b!5838384 (= e!3581316 e!3581315)))

(declare-fun b!5838385 () Bool)

(declare-fun e!3581314 () Bool)

(assert (=> b!5838385 (= e!3581314 call!455954)))

(declare-fun b!5838386 () Bool)

(declare-fun res!2459796 () Bool)

(assert (=> b!5838386 (=> res!2459796 e!3581313)))

(assert (=> b!5838386 (= res!2459796 call!455954)))

(declare-fun e!3581317 () Bool)

(assert (=> b!5838386 (= e!3581317 e!3581313)))

(declare-fun bm!455950 () Bool)

(declare-fun c!1034442 () Bool)

(assert (=> bm!455950 (= call!455955 (Exists!2977 (ite c!1034442 lambda!319405 lambda!319406)))))

(declare-fun b!5838387 () Bool)

(assert (=> b!5838387 (= e!3581315 e!3581311)))

(declare-fun res!2459797 () Bool)

(assert (=> b!5838387 (= res!2459797 (matchRSpec!3004 (regOne!32319 (regTwo!32319 (regOne!32319 r!7292))) s!2326))))

(assert (=> b!5838387 (=> res!2459797 e!3581311)))

(declare-fun b!5838388 () Bool)

(declare-fun e!3581312 () Bool)

(assert (=> b!5838388 (= e!3581314 e!3581312)))

(declare-fun res!2459798 () Bool)

(assert (=> b!5838388 (= res!2459798 (not ((_ is EmptyLang!15903) (regTwo!32319 (regOne!32319 r!7292)))))))

(assert (=> b!5838388 (=> (not res!2459798) (not e!3581312))))

(declare-fun b!5838389 () Bool)

(declare-fun c!1034444 () Bool)

(assert (=> b!5838389 (= c!1034444 ((_ is ElementMatch!15903) (regTwo!32319 (regOne!32319 r!7292))))))

(assert (=> b!5838389 (= e!3581312 e!3581316)))

(assert (=> b!5838390 (= e!3581317 call!455955)))

(declare-fun b!5838391 () Bool)

(assert (=> b!5838391 (= e!3581315 e!3581317)))

(assert (=> b!5838391 (= c!1034442 ((_ is Star!15903) (regTwo!32319 (regOne!32319 r!7292))))))

(declare-fun d!1834713 () Bool)

(declare-fun c!1034445 () Bool)

(assert (=> d!1834713 (= c!1034445 ((_ is EmptyExpr!15903) (regTwo!32319 (regOne!32319 r!7292))))))

(assert (=> d!1834713 (= (matchRSpec!3004 (regTwo!32319 (regOne!32319 r!7292)) s!2326) e!3581314)))

(declare-fun b!5838392 () Bool)

(assert (=> b!5838392 (= e!3581316 (= s!2326 (Cons!63886 (c!1034241 (regTwo!32319 (regOne!32319 r!7292))) Nil!63886)))))

(assert (= (and d!1834713 c!1034445) b!5838385))

(assert (= (and d!1834713 (not c!1034445)) b!5838388))

(assert (= (and b!5838388 res!2459798) b!5838389))

(assert (= (and b!5838389 c!1034444) b!5838392))

(assert (= (and b!5838389 (not c!1034444)) b!5838384))

(assert (= (and b!5838384 c!1034443) b!5838387))

(assert (= (and b!5838384 (not c!1034443)) b!5838391))

(assert (= (and b!5838387 (not res!2459797)) b!5838382))

(assert (= (and b!5838391 c!1034442) b!5838386))

(assert (= (and b!5838391 (not c!1034442)) b!5838390))

(assert (= (and b!5838386 (not res!2459796)) b!5838383))

(assert (= (or b!5838383 b!5838390) bm!455950))

(assert (= (or b!5838385 b!5838386) bm!455949))

(assert (=> bm!455949 m!6763640))

(declare-fun m!6763850 () Bool)

(assert (=> b!5838382 m!6763850))

(declare-fun m!6763852 () Bool)

(assert (=> bm!455950 m!6763852))

(declare-fun m!6763854 () Bool)

(assert (=> b!5838387 m!6763854))

(assert (=> b!5838126 d!1834713))

(assert (=> b!5838149 d!1834633))

(assert (=> b!5838149 d!1834635))

(declare-fun d!1834721 () Bool)

(declare-fun res!2459813 () Bool)

(declare-fun e!3581336 () Bool)

(assert (=> d!1834721 (=> res!2459813 e!3581336)))

(assert (=> d!1834721 (= res!2459813 ((_ is Nil!63885) lt!2303508))))

(assert (=> d!1834721 (= (noDuplicate!1770 lt!2303508) e!3581336)))

(declare-fun b!5838415 () Bool)

(declare-fun e!3581337 () Bool)

(assert (=> b!5838415 (= e!3581336 e!3581337)))

(declare-fun res!2459814 () Bool)

(assert (=> b!5838415 (=> (not res!2459814) (not e!3581337))))

(declare-fun contains!19913 (List!64009 Context!10574) Bool)

(assert (=> b!5838415 (= res!2459814 (not (contains!19913 (t!377364 lt!2303508) (h!70333 lt!2303508))))))

(declare-fun b!5838416 () Bool)

(assert (=> b!5838416 (= e!3581337 (noDuplicate!1770 (t!377364 lt!2303508)))))

(assert (= (and d!1834721 (not res!2459813)) b!5838415))

(assert (= (and b!5838415 res!2459814) b!5838416))

(declare-fun m!6763862 () Bool)

(assert (=> b!5838415 m!6763862))

(declare-fun m!6763864 () Bool)

(assert (=> b!5838416 m!6763864))

(assert (=> d!1834607 d!1834721))

(declare-fun d!1834729 () Bool)

(declare-fun e!3581350 () Bool)

(assert (=> d!1834729 e!3581350))

(declare-fun res!2459824 () Bool)

(assert (=> d!1834729 (=> (not res!2459824) (not e!3581350))))

(declare-fun res!2459823 () List!64009)

(assert (=> d!1834729 (= res!2459824 (noDuplicate!1770 res!2459823))))

(declare-fun e!3581348 () Bool)

(assert (=> d!1834729 e!3581348))

(assert (=> d!1834729 (= (choose!44329 z!1189) res!2459823)))

(declare-fun b!5838428 () Bool)

(declare-fun e!3581349 () Bool)

(declare-fun tp!1614165 () Bool)

(assert (=> b!5838428 (= e!3581349 tp!1614165)))

(declare-fun b!5838427 () Bool)

(declare-fun tp!1614166 () Bool)

(assert (=> b!5838427 (= e!3581348 (and (inv!83004 (h!70333 res!2459823)) e!3581349 tp!1614166))))

(declare-fun b!5838429 () Bool)

(assert (=> b!5838429 (= e!3581350 (= (content!11735 res!2459823) z!1189))))

(assert (= b!5838427 b!5838428))

(assert (= (and d!1834729 ((_ is Cons!63885) res!2459823)) b!5838427))

(assert (= (and d!1834729 res!2459824) b!5838429))

(declare-fun m!6763866 () Bool)

(assert (=> d!1834729 m!6763866))

(declare-fun m!6763868 () Bool)

(assert (=> b!5838427 m!6763868))

(declare-fun m!6763870 () Bool)

(assert (=> b!5838429 m!6763870))

(assert (=> d!1834607 d!1834729))

(assert (=> d!1834605 d!1834625))

(assert (=> bm!455905 d!1834625))

(declare-fun b!5838430 () Bool)

(declare-fun e!3581356 () Bool)

(declare-fun e!3581354 () Bool)

(assert (=> b!5838430 (= e!3581356 e!3581354)))

(declare-fun c!1034451 () Bool)

(assert (=> b!5838430 (= c!1034451 ((_ is Union!15903) lt!2303484))))

(declare-fun b!5838431 () Bool)

(declare-fun res!2459829 () Bool)

(declare-fun e!3581357 () Bool)

(assert (=> b!5838431 (=> (not res!2459829) (not e!3581357))))

(declare-fun call!455963 () Bool)

(assert (=> b!5838431 (= res!2459829 call!455963)))

(assert (=> b!5838431 (= e!3581354 e!3581357)))

(declare-fun d!1834731 () Bool)

(declare-fun res!2459828 () Bool)

(declare-fun e!3581352 () Bool)

(assert (=> d!1834731 (=> res!2459828 e!3581352)))

(assert (=> d!1834731 (= res!2459828 ((_ is ElementMatch!15903) lt!2303484))))

(assert (=> d!1834731 (= (validRegex!7639 lt!2303484) e!3581352)))

(declare-fun b!5838432 () Bool)

(declare-fun e!3581353 () Bool)

(assert (=> b!5838432 (= e!3581356 e!3581353)))

(declare-fun res!2459827 () Bool)

(assert (=> b!5838432 (= res!2459827 (not (nullable!5903 (reg!16232 lt!2303484))))))

(assert (=> b!5838432 (=> (not res!2459827) (not e!3581353))))

(declare-fun b!5838433 () Bool)

(declare-fun e!3581355 () Bool)

(declare-fun call!455964 () Bool)

(assert (=> b!5838433 (= e!3581355 call!455964)))

(declare-fun c!1034450 () Bool)

(declare-fun call!455962 () Bool)

(declare-fun bm!455957 () Bool)

(assert (=> bm!455957 (= call!455962 (validRegex!7639 (ite c!1034450 (reg!16232 lt!2303484) (ite c!1034451 (regTwo!32319 lt!2303484) (regTwo!32318 lt!2303484)))))))

(declare-fun b!5838434 () Bool)

(assert (=> b!5838434 (= e!3581353 call!455962)))

(declare-fun b!5838435 () Bool)

(declare-fun res!2459826 () Bool)

(declare-fun e!3581351 () Bool)

(assert (=> b!5838435 (=> res!2459826 e!3581351)))

(assert (=> b!5838435 (= res!2459826 (not ((_ is Concat!24748) lt!2303484)))))

(assert (=> b!5838435 (= e!3581354 e!3581351)))

(declare-fun bm!455958 () Bool)

(assert (=> bm!455958 (= call!455964 call!455962)))

(declare-fun bm!455959 () Bool)

(assert (=> bm!455959 (= call!455963 (validRegex!7639 (ite c!1034451 (regOne!32319 lt!2303484) (regOne!32318 lt!2303484))))))

(declare-fun b!5838436 () Bool)

(assert (=> b!5838436 (= e!3581352 e!3581356)))

(assert (=> b!5838436 (= c!1034450 ((_ is Star!15903) lt!2303484))))

(declare-fun b!5838437 () Bool)

(assert (=> b!5838437 (= e!3581351 e!3581355)))

(declare-fun res!2459825 () Bool)

(assert (=> b!5838437 (=> (not res!2459825) (not e!3581355))))

(assert (=> b!5838437 (= res!2459825 call!455963)))

(declare-fun b!5838438 () Bool)

(assert (=> b!5838438 (= e!3581357 call!455964)))

(assert (= (and d!1834731 (not res!2459828)) b!5838436))

(assert (= (and b!5838436 c!1034450) b!5838432))

(assert (= (and b!5838436 (not c!1034450)) b!5838430))

(assert (= (and b!5838432 res!2459827) b!5838434))

(assert (= (and b!5838430 c!1034451) b!5838431))

(assert (= (and b!5838430 (not c!1034451)) b!5838435))

(assert (= (and b!5838431 res!2459829) b!5838438))

(assert (= (and b!5838435 (not res!2459826)) b!5838437))

(assert (= (and b!5838437 res!2459825) b!5838433))

(assert (= (or b!5838438 b!5838433) bm!455958))

(assert (= (or b!5838431 b!5838437) bm!455959))

(assert (= (or b!5838434 bm!455958) bm!455957))

(declare-fun m!6763872 () Bool)

(assert (=> b!5838432 m!6763872))

(declare-fun m!6763874 () Bool)

(assert (=> bm!455957 m!6763874))

(declare-fun m!6763876 () Bool)

(assert (=> bm!455959 m!6763876))

(assert (=> d!1834569 d!1834731))

(assert (=> d!1834569 d!1834573))

(assert (=> d!1834569 d!1834581))

(declare-fun d!1834733 () Bool)

(declare-fun c!1034452 () Bool)

(assert (=> d!1834733 (= c!1034452 (isEmpty!35750 (tail!11450 s!2326)))))

(declare-fun e!3581360 () Bool)

(assert (=> d!1834733 (= (matchZipper!1979 (derivationStepZipper!1914 z!1189 (head!12365 s!2326)) (tail!11450 s!2326)) e!3581360)))

(declare-fun b!5838441 () Bool)

(assert (=> b!5838441 (= e!3581360 (nullableZipper!1752 (derivationStepZipper!1914 z!1189 (head!12365 s!2326))))))

(declare-fun b!5838442 () Bool)

(assert (=> b!5838442 (= e!3581360 (matchZipper!1979 (derivationStepZipper!1914 (derivationStepZipper!1914 z!1189 (head!12365 s!2326)) (head!12365 (tail!11450 s!2326))) (tail!11450 (tail!11450 s!2326))))))

(assert (= (and d!1834733 c!1034452) b!5838441))

(assert (= (and d!1834733 (not c!1034452)) b!5838442))

(assert (=> d!1834733 m!6763648))

(assert (=> d!1834733 m!6763652))

(assert (=> b!5838441 m!6763656))

(declare-fun m!6763882 () Bool)

(assert (=> b!5838441 m!6763882))

(assert (=> b!5838442 m!6763648))

(assert (=> b!5838442 m!6763736))

(assert (=> b!5838442 m!6763656))

(assert (=> b!5838442 m!6763736))

(declare-fun m!6763884 () Bool)

(assert (=> b!5838442 m!6763884))

(assert (=> b!5838442 m!6763648))

(assert (=> b!5838442 m!6763740))

(assert (=> b!5838442 m!6763884))

(assert (=> b!5838442 m!6763740))

(declare-fun m!6763886 () Bool)

(assert (=> b!5838442 m!6763886))

(assert (=> b!5838097 d!1834733))

(declare-fun d!1834737 () Bool)

(assert (=> d!1834737 true))

(declare-fun lambda!319410 () Int)

(declare-fun flatMap!1445 ((InoxSet Context!10574) Int) (InoxSet Context!10574))

(assert (=> d!1834737 (= (derivationStepZipper!1914 z!1189 (head!12365 s!2326)) (flatMap!1445 z!1189 lambda!319410))))

(declare-fun bs!1375595 () Bool)

(assert (= bs!1375595 d!1834737))

(declare-fun m!6763890 () Bool)

(assert (=> bs!1375595 m!6763890))

(assert (=> b!5838097 d!1834737))

(assert (=> b!5838097 d!1834623))

(assert (=> b!5838097 d!1834635))

(assert (=> bm!455895 d!1834625))

(assert (=> b!5838114 d!1834623))

(declare-fun d!1834743 () Bool)

(assert (=> d!1834743 (= (isEmpty!35749 (tail!11449 (unfocusZipperList!1324 zl!343))) ((_ is Nil!63884) (tail!11449 (unfocusZipperList!1324 zl!343))))))

(assert (=> b!5837873 d!1834743))

(declare-fun d!1834745 () Bool)

(assert (=> d!1834745 (= (tail!11449 (unfocusZipperList!1324 zl!343)) (t!377363 (unfocusZipperList!1324 zl!343)))))

(assert (=> b!5837873 d!1834745))

(declare-fun bs!1375596 () Bool)

(declare-fun d!1834747 () Bool)

(assert (= bs!1375596 (and d!1834747 d!1834581)))

(declare-fun lambda!319411 () Int)

(assert (=> bs!1375596 (= lambda!319411 lambda!319380)))

(declare-fun bs!1375597 () Bool)

(assert (= bs!1375597 (and d!1834747 d!1834573)))

(assert (=> bs!1375597 (= lambda!319411 lambda!319376)))

(declare-fun bs!1375598 () Bool)

(assert (= bs!1375598 (and d!1834747 d!1834629)))

(assert (=> bs!1375598 (= lambda!319411 lambda!319401)))

(declare-fun bs!1375599 () Bool)

(assert (= bs!1375599 (and d!1834747 d!1834591)))

(assert (=> bs!1375599 (= lambda!319411 lambda!319386)))

(declare-fun bs!1375600 () Bool)

(assert (= bs!1375600 (and d!1834747 d!1834621)))

(assert (=> bs!1375600 (= lambda!319411 lambda!319400)))

(declare-fun bs!1375601 () Bool)

(assert (= bs!1375601 (and d!1834747 d!1834711)))

(assert (=> bs!1375601 (= lambda!319411 lambda!319404)))

(declare-fun bs!1375602 () Bool)

(assert (= bs!1375602 (and d!1834747 d!1834535)))

(assert (=> bs!1375602 (= lambda!319411 lambda!319368)))

(declare-fun b!5838459 () Bool)

(declare-fun e!3581368 () Regex!15903)

(assert (=> b!5838459 (= e!3581368 (h!70332 (t!377363 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5838460 () Bool)

(declare-fun e!3581373 () Bool)

(declare-fun lt!2303526 () Regex!15903)

(assert (=> b!5838460 (= e!3581373 (isEmptyExpr!1339 lt!2303526))))

(declare-fun e!3581370 () Bool)

(assert (=> d!1834747 e!3581370))

(declare-fun res!2459841 () Bool)

(assert (=> d!1834747 (=> (not res!2459841) (not e!3581370))))

(assert (=> d!1834747 (= res!2459841 (validRegex!7639 lt!2303526))))

(assert (=> d!1834747 (= lt!2303526 e!3581368)))

(declare-fun c!1034459 () Bool)

(declare-fun e!3581369 () Bool)

(assert (=> d!1834747 (= c!1034459 e!3581369)))

(declare-fun res!2459840 () Bool)

(assert (=> d!1834747 (=> (not res!2459840) (not e!3581369))))

(assert (=> d!1834747 (= res!2459840 ((_ is Cons!63884) (t!377363 (exprs!5787 (h!70333 zl!343)))))))

(assert (=> d!1834747 (forall!14992 (t!377363 (exprs!5787 (h!70333 zl!343))) lambda!319411)))

(assert (=> d!1834747 (= (generalisedConcat!1500 (t!377363 (exprs!5787 (h!70333 zl!343)))) lt!2303526)))

(declare-fun b!5838461 () Bool)

(assert (=> b!5838461 (= e!3581369 (isEmpty!35749 (t!377363 (t!377363 (exprs!5787 (h!70333 zl!343))))))))

(declare-fun b!5838462 () Bool)

(declare-fun e!3581372 () Regex!15903)

(assert (=> b!5838462 (= e!3581368 e!3581372)))

(declare-fun c!1034461 () Bool)

(assert (=> b!5838462 (= c!1034461 ((_ is Cons!63884) (t!377363 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5838463 () Bool)

(declare-fun e!3581371 () Bool)

(assert (=> b!5838463 (= e!3581373 e!3581371)))

(declare-fun c!1034458 () Bool)

(assert (=> b!5838463 (= c!1034458 (isEmpty!35749 (tail!11449 (t!377363 (exprs!5787 (h!70333 zl!343))))))))

(declare-fun b!5838464 () Bool)

(assert (=> b!5838464 (= e!3581372 EmptyExpr!15903)))

(declare-fun b!5838465 () Bool)

(assert (=> b!5838465 (= e!3581371 (= lt!2303526 (head!12364 (t!377363 (exprs!5787 (h!70333 zl!343))))))))

(declare-fun b!5838466 () Bool)

(assert (=> b!5838466 (= e!3581371 (isConcat!862 lt!2303526))))

(declare-fun b!5838467 () Bool)

(assert (=> b!5838467 (= e!3581370 e!3581373)))

(declare-fun c!1034460 () Bool)

(assert (=> b!5838467 (= c!1034460 (isEmpty!35749 (t!377363 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5838468 () Bool)

(assert (=> b!5838468 (= e!3581372 (Concat!24748 (h!70332 (t!377363 (exprs!5787 (h!70333 zl!343)))) (generalisedConcat!1500 (t!377363 (t!377363 (exprs!5787 (h!70333 zl!343)))))))))

(assert (= (and d!1834747 res!2459840) b!5838461))

(assert (= (and d!1834747 c!1034459) b!5838459))

(assert (= (and d!1834747 (not c!1034459)) b!5838462))

(assert (= (and b!5838462 c!1034461) b!5838468))

(assert (= (and b!5838462 (not c!1034461)) b!5838464))

(assert (= (and d!1834747 res!2459841) b!5838467))

(assert (= (and b!5838467 c!1034460) b!5838460))

(assert (= (and b!5838467 (not c!1034460)) b!5838463))

(assert (= (and b!5838463 c!1034458) b!5838465))

(assert (= (and b!5838463 (not c!1034458)) b!5838466))

(declare-fun m!6763902 () Bool)

(assert (=> b!5838460 m!6763902))

(declare-fun m!6763904 () Bool)

(assert (=> b!5838461 m!6763904))

(declare-fun m!6763906 () Bool)

(assert (=> b!5838465 m!6763906))

(declare-fun m!6763908 () Bool)

(assert (=> b!5838466 m!6763908))

(assert (=> b!5838467 m!6763534))

(declare-fun m!6763912 () Bool)

(assert (=> b!5838468 m!6763912))

(declare-fun m!6763914 () Bool)

(assert (=> d!1834747 m!6763914))

(declare-fun m!6763916 () Bool)

(assert (=> d!1834747 m!6763916))

(declare-fun m!6763918 () Bool)

(assert (=> b!5838463 m!6763918))

(assert (=> b!5838463 m!6763918))

(declare-fun m!6763920 () Bool)

(assert (=> b!5838463 m!6763920))

(assert (=> b!5837814 d!1834747))

(declare-fun d!1834749 () Bool)

(assert (=> d!1834749 (= (isEmpty!35749 (unfocusZipperList!1324 zl!343)) ((_ is Nil!63884) (unfocusZipperList!1324 zl!343)))))

(assert (=> b!5837875 d!1834749))

(assert (=> b!5838090 d!1834633))

(assert (=> b!5838090 d!1834635))

(declare-fun d!1834751 () Bool)

(assert (=> d!1834751 (= (head!12364 (unfocusZipperList!1324 zl!343)) (h!70332 (unfocusZipperList!1324 zl!343)))))

(assert (=> b!5837871 d!1834751))

(declare-fun d!1834753 () Bool)

(assert (=> d!1834753 (= (isConcat!862 lt!2303480) ((_ is Concat!24748) lt!2303480))))

(assert (=> b!5837812 d!1834753))

(assert (=> b!5838137 d!1834633))

(assert (=> b!5838137 d!1834635))

(assert (=> bm!455899 d!1834625))

(assert (=> d!1834619 d!1834625))

(assert (=> d!1834619 d!1834693))

(assert (=> b!5838139 d!1834623))

(assert (=> d!1834601 d!1834625))

(assert (=> d!1834601 d!1834587))

(declare-fun b!5838483 () Bool)

(declare-fun e!3581390 () Bool)

(declare-fun e!3581389 () Bool)

(assert (=> b!5838483 (= e!3581390 e!3581389)))

(declare-fun res!2459855 () Bool)

(declare-fun call!455971 () Bool)

(assert (=> b!5838483 (= res!2459855 call!455971)))

(assert (=> b!5838483 (=> (not res!2459855) (not e!3581389))))

(declare-fun b!5838484 () Bool)

(declare-fun e!3581388 () Bool)

(declare-fun e!3581391 () Bool)

(assert (=> b!5838484 (= e!3581388 e!3581391)))

(declare-fun res!2459853 () Bool)

(assert (=> b!5838484 (=> res!2459853 e!3581391)))

(assert (=> b!5838484 (= res!2459853 ((_ is Star!15903) r!7292))))

(declare-fun bm!455965 () Bool)

(declare-fun c!1034464 () Bool)

(assert (=> bm!455965 (= call!455971 (nullable!5903 (ite c!1034464 (regOne!32319 r!7292) (regOne!32318 r!7292))))))

(declare-fun b!5838485 () Bool)

(assert (=> b!5838485 (= e!3581391 e!3581390)))

(assert (=> b!5838485 (= c!1034464 ((_ is Union!15903) r!7292))))

(declare-fun b!5838486 () Bool)

(declare-fun call!455970 () Bool)

(assert (=> b!5838486 (= e!3581389 call!455970)))

(declare-fun b!5838487 () Bool)

(declare-fun e!3581387 () Bool)

(assert (=> b!5838487 (= e!3581387 call!455970)))

(declare-fun d!1834757 () Bool)

(declare-fun res!2459852 () Bool)

(declare-fun e!3581386 () Bool)

(assert (=> d!1834757 (=> res!2459852 e!3581386)))

(assert (=> d!1834757 (= res!2459852 ((_ is EmptyExpr!15903) r!7292))))

(assert (=> d!1834757 (= (nullableFct!1892 r!7292) e!3581386)))

(declare-fun bm!455966 () Bool)

(assert (=> bm!455966 (= call!455970 (nullable!5903 (ite c!1034464 (regTwo!32319 r!7292) (regTwo!32318 r!7292))))))

(declare-fun b!5838488 () Bool)

(assert (=> b!5838488 (= e!3581386 e!3581388)))

(declare-fun res!2459856 () Bool)

(assert (=> b!5838488 (=> (not res!2459856) (not e!3581388))))

(assert (=> b!5838488 (= res!2459856 (and (not ((_ is EmptyLang!15903) r!7292)) (not ((_ is ElementMatch!15903) r!7292))))))

(declare-fun b!5838489 () Bool)

(assert (=> b!5838489 (= e!3581390 e!3581387)))

(declare-fun res!2459854 () Bool)

(assert (=> b!5838489 (= res!2459854 call!455971)))

(assert (=> b!5838489 (=> res!2459854 e!3581387)))

(assert (= (and d!1834757 (not res!2459852)) b!5838488))

(assert (= (and b!5838488 res!2459856) b!5838484))

(assert (= (and b!5838484 (not res!2459853)) b!5838485))

(assert (= (and b!5838485 c!1034464) b!5838489))

(assert (= (and b!5838485 (not c!1034464)) b!5838483))

(assert (= (and b!5838489 (not res!2459854)) b!5838487))

(assert (= (and b!5838483 res!2459855) b!5838486))

(assert (= (or b!5838487 b!5838486) bm!455966))

(assert (= (or b!5838489 b!5838483) bm!455965))

(declare-fun m!6763924 () Bool)

(assert (=> bm!455965 m!6763924))

(declare-fun m!6763926 () Bool)

(assert (=> bm!455966 m!6763926))

(assert (=> d!1834595 d!1834757))

(declare-fun bs!1375603 () Bool)

(declare-fun d!1834759 () Bool)

(assert (= bs!1375603 (and d!1834759 d!1834581)))

(declare-fun lambda!319412 () Int)

(assert (=> bs!1375603 (= lambda!319412 lambda!319380)))

(declare-fun bs!1375604 () Bool)

(assert (= bs!1375604 (and d!1834759 d!1834573)))

(assert (=> bs!1375604 (= lambda!319412 lambda!319376)))

(declare-fun bs!1375605 () Bool)

(assert (= bs!1375605 (and d!1834759 d!1834747)))

(assert (=> bs!1375605 (= lambda!319412 lambda!319411)))

(declare-fun bs!1375606 () Bool)

(assert (= bs!1375606 (and d!1834759 d!1834629)))

(assert (=> bs!1375606 (= lambda!319412 lambda!319401)))

(declare-fun bs!1375607 () Bool)

(assert (= bs!1375607 (and d!1834759 d!1834591)))

(assert (=> bs!1375607 (= lambda!319412 lambda!319386)))

(declare-fun bs!1375608 () Bool)

(assert (= bs!1375608 (and d!1834759 d!1834621)))

(assert (=> bs!1375608 (= lambda!319412 lambda!319400)))

(declare-fun bs!1375609 () Bool)

(assert (= bs!1375609 (and d!1834759 d!1834711)))

(assert (=> bs!1375609 (= lambda!319412 lambda!319404)))

(declare-fun bs!1375610 () Bool)

(assert (= bs!1375610 (and d!1834759 d!1834535)))

(assert (=> bs!1375610 (= lambda!319412 lambda!319368)))

(declare-fun b!5838490 () Bool)

(declare-fun e!3581394 () Regex!15903)

(declare-fun e!3581396 () Regex!15903)

(assert (=> b!5838490 (= e!3581394 e!3581396)))

(declare-fun c!1034468 () Bool)

(assert (=> b!5838490 (= c!1034468 ((_ is Cons!63884) (t!377363 (unfocusZipperList!1324 zl!343))))))

(declare-fun b!5838491 () Bool)

(assert (=> b!5838491 (= e!3581396 EmptyLang!15903)))

(declare-fun b!5838492 () Bool)

(assert (=> b!5838492 (= e!3581396 (Union!15903 (h!70332 (t!377363 (unfocusZipperList!1324 zl!343))) (generalisedUnion!1747 (t!377363 (t!377363 (unfocusZipperList!1324 zl!343))))))))

(declare-fun b!5838493 () Bool)

(declare-fun e!3581395 () Bool)

(declare-fun lt!2303527 () Regex!15903)

(assert (=> b!5838493 (= e!3581395 (isUnion!778 lt!2303527))))

(declare-fun b!5838494 () Bool)

(assert (=> b!5838494 (= e!3581395 (= lt!2303527 (head!12364 (t!377363 (unfocusZipperList!1324 zl!343)))))))

(declare-fun b!5838495 () Bool)

(declare-fun e!3581393 () Bool)

(assert (=> b!5838495 (= e!3581393 (isEmpty!35749 (t!377363 (t!377363 (unfocusZipperList!1324 zl!343)))))))

(declare-fun e!3581397 () Bool)

(assert (=> d!1834759 e!3581397))

(declare-fun res!2459858 () Bool)

(assert (=> d!1834759 (=> (not res!2459858) (not e!3581397))))

(assert (=> d!1834759 (= res!2459858 (validRegex!7639 lt!2303527))))

(assert (=> d!1834759 (= lt!2303527 e!3581394)))

(declare-fun c!1034466 () Bool)

(assert (=> d!1834759 (= c!1034466 e!3581393)))

(declare-fun res!2459857 () Bool)

(assert (=> d!1834759 (=> (not res!2459857) (not e!3581393))))

(assert (=> d!1834759 (= res!2459857 ((_ is Cons!63884) (t!377363 (unfocusZipperList!1324 zl!343))))))

(assert (=> d!1834759 (forall!14992 (t!377363 (unfocusZipperList!1324 zl!343)) lambda!319412)))

(assert (=> d!1834759 (= (generalisedUnion!1747 (t!377363 (unfocusZipperList!1324 zl!343))) lt!2303527)))

(declare-fun b!5838496 () Bool)

(declare-fun e!3581392 () Bool)

(assert (=> b!5838496 (= e!3581392 e!3581395)))

(declare-fun c!1034467 () Bool)

(assert (=> b!5838496 (= c!1034467 (isEmpty!35749 (tail!11449 (t!377363 (unfocusZipperList!1324 zl!343)))))))

(declare-fun b!5838497 () Bool)

(assert (=> b!5838497 (= e!3581392 (isEmptyLang!1348 lt!2303527))))

(declare-fun b!5838498 () Bool)

(assert (=> b!5838498 (= e!3581397 e!3581392)))

(declare-fun c!1034465 () Bool)

(assert (=> b!5838498 (= c!1034465 (isEmpty!35749 (t!377363 (unfocusZipperList!1324 zl!343))))))

(declare-fun b!5838499 () Bool)

(assert (=> b!5838499 (= e!3581394 (h!70332 (t!377363 (unfocusZipperList!1324 zl!343))))))

(assert (= (and d!1834759 res!2459857) b!5838495))

(assert (= (and d!1834759 c!1034466) b!5838499))

(assert (= (and d!1834759 (not c!1034466)) b!5838490))

(assert (= (and b!5838490 c!1034468) b!5838492))

(assert (= (and b!5838490 (not c!1034468)) b!5838491))

(assert (= (and d!1834759 res!2459858) b!5838498))

(assert (= (and b!5838498 c!1034465) b!5838497))

(assert (= (and b!5838498 (not c!1034465)) b!5838496))

(assert (= (and b!5838496 c!1034467) b!5838494))

(assert (= (and b!5838496 (not c!1034467)) b!5838493))

(declare-fun m!6763928 () Bool)

(assert (=> b!5838495 m!6763928))

(declare-fun m!6763930 () Bool)

(assert (=> b!5838496 m!6763930))

(assert (=> b!5838496 m!6763930))

(declare-fun m!6763932 () Bool)

(assert (=> b!5838496 m!6763932))

(declare-fun m!6763934 () Bool)

(assert (=> b!5838492 m!6763934))

(assert (=> b!5838498 m!6763570))

(declare-fun m!6763936 () Bool)

(assert (=> d!1834759 m!6763936))

(declare-fun m!6763938 () Bool)

(assert (=> d!1834759 m!6763938))

(declare-fun m!6763940 () Bool)

(assert (=> b!5838493 m!6763940))

(declare-fun m!6763942 () Bool)

(assert (=> b!5838494 m!6763942))

(declare-fun m!6763944 () Bool)

(assert (=> b!5838497 m!6763944))

(assert (=> b!5837869 d!1834759))

(declare-fun d!1834761 () Bool)

(declare-fun res!2459859 () Bool)

(declare-fun e!3581398 () Bool)

(assert (=> d!1834761 (=> res!2459859 e!3581398)))

(assert (=> d!1834761 (= res!2459859 ((_ is Nil!63884) (exprs!5787 (h!70333 zl!343))))))

(assert (=> d!1834761 (= (forall!14992 (exprs!5787 (h!70333 zl!343)) lambda!319386) e!3581398)))

(declare-fun b!5838500 () Bool)

(declare-fun e!3581399 () Bool)

(assert (=> b!5838500 (= e!3581398 e!3581399)))

(declare-fun res!2459860 () Bool)

(assert (=> b!5838500 (=> (not res!2459860) (not e!3581399))))

(assert (=> b!5838500 (= res!2459860 (dynLambda!24975 lambda!319386 (h!70332 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun b!5838501 () Bool)

(assert (=> b!5838501 (= e!3581399 (forall!14992 (t!377363 (exprs!5787 (h!70333 zl!343))) lambda!319386))))

(assert (= (and d!1834761 (not res!2459859)) b!5838500))

(assert (= (and b!5838500 res!2459860) b!5838501))

(declare-fun b_lambda!219879 () Bool)

(assert (=> (not b_lambda!219879) (not b!5838500)))

(declare-fun m!6763946 () Bool)

(assert (=> b!5838500 m!6763946))

(declare-fun m!6763948 () Bool)

(assert (=> b!5838501 m!6763948))

(assert (=> d!1834591 d!1834761))

(assert (=> b!5838123 d!1834623))

(assert (=> d!1834603 d!1834601))

(assert (=> d!1834603 d!1834599))

(declare-fun d!1834763 () Bool)

(assert (=> d!1834763 (= (matchR!8086 r!7292 s!2326) (matchRSpec!3004 r!7292 s!2326))))

(assert (=> d!1834763 true))

(declare-fun _$88!4188 () Unit!157077)

(assert (=> d!1834763 (= (choose!44328 r!7292 s!2326) _$88!4188)))

(declare-fun bs!1375611 () Bool)

(assert (= bs!1375611 d!1834763))

(assert (=> bs!1375611 m!6763416))

(assert (=> bs!1375611 m!6763414))

(assert (=> d!1834603 d!1834763))

(assert (=> d!1834603 d!1834587))

(declare-fun d!1834765 () Bool)

(assert (=> d!1834765 (= (isEmptyExpr!1339 lt!2303480) ((_ is EmptyExpr!15903) lt!2303480))))

(assert (=> b!5837806 d!1834765))

(declare-fun bs!1375612 () Bool)

(declare-fun d!1834767 () Bool)

(assert (= bs!1375612 (and d!1834767 d!1834581)))

(declare-fun lambda!319413 () Int)

(assert (=> bs!1375612 (= lambda!319413 lambda!319380)))

(declare-fun bs!1375613 () Bool)

(assert (= bs!1375613 (and d!1834767 d!1834573)))

(assert (=> bs!1375613 (= lambda!319413 lambda!319376)))

(declare-fun bs!1375614 () Bool)

(assert (= bs!1375614 (and d!1834767 d!1834759)))

(assert (=> bs!1375614 (= lambda!319413 lambda!319412)))

(declare-fun bs!1375615 () Bool)

(assert (= bs!1375615 (and d!1834767 d!1834747)))

(assert (=> bs!1375615 (= lambda!319413 lambda!319411)))

(declare-fun bs!1375616 () Bool)

(assert (= bs!1375616 (and d!1834767 d!1834629)))

(assert (=> bs!1375616 (= lambda!319413 lambda!319401)))

(declare-fun bs!1375617 () Bool)

(assert (= bs!1375617 (and d!1834767 d!1834591)))

(assert (=> bs!1375617 (= lambda!319413 lambda!319386)))

(declare-fun bs!1375618 () Bool)

(assert (= bs!1375618 (and d!1834767 d!1834621)))

(assert (=> bs!1375618 (= lambda!319413 lambda!319400)))

(declare-fun bs!1375619 () Bool)

(assert (= bs!1375619 (and d!1834767 d!1834711)))

(assert (=> bs!1375619 (= lambda!319413 lambda!319404)))

(declare-fun bs!1375620 () Bool)

(assert (= bs!1375620 (and d!1834767 d!1834535)))

(assert (=> bs!1375620 (= lambda!319413 lambda!319368)))

(assert (=> d!1834767 (= (inv!83004 (h!70333 (t!377364 zl!343))) (forall!14992 (exprs!5787 (h!70333 (t!377364 zl!343))) lambda!319413))))

(declare-fun bs!1375621 () Bool)

(assert (= bs!1375621 d!1834767))

(declare-fun m!6763950 () Bool)

(assert (=> bs!1375621 m!6763950))

(assert (=> b!5838198 d!1834767))

(declare-fun bs!1375622 () Bool)

(declare-fun b!5838507 () Bool)

(assert (= bs!1375622 (and b!5838507 b!5838390)))

(declare-fun lambda!319414 () Int)

(assert (=> bs!1375622 (not (= lambda!319414 lambda!319406))))

(declare-fun bs!1375623 () Bool)

(assert (= bs!1375623 (and b!5838507 b!5838043)))

(assert (=> bs!1375623 (not (= lambda!319414 lambda!319395))))

(declare-fun bs!1375624 () Bool)

(assert (= bs!1375624 (and b!5838507 b!5838102)))

(assert (=> bs!1375624 (= (and (= (reg!16232 (regOne!32319 (regOne!32319 r!7292))) (reg!16232 (regTwo!32319 r!7292))) (= (regOne!32319 (regOne!32319 r!7292)) (regTwo!32319 r!7292))) (= lambda!319414 lambda!319396))))

(declare-fun bs!1375625 () Bool)

(assert (= bs!1375625 (and b!5838507 b!5838383)))

(assert (=> bs!1375625 (= (and (= (reg!16232 (regOne!32319 (regOne!32319 r!7292))) (reg!16232 (regTwo!32319 (regOne!32319 r!7292)))) (= (regOne!32319 (regOne!32319 r!7292)) (regTwo!32319 (regOne!32319 r!7292)))) (= lambda!319414 lambda!319405))))

(declare-fun bs!1375626 () Bool)

(assert (= bs!1375626 (and b!5838507 b!5838127)))

(assert (=> bs!1375626 (= (and (= (reg!16232 (regOne!32319 (regOne!32319 r!7292))) (reg!16232 (regOne!32319 r!7292))) (= (regOne!32319 (regOne!32319 r!7292)) (regOne!32319 r!7292))) (= lambda!319414 lambda!319398))))

(declare-fun bs!1375627 () Bool)

(assert (= bs!1375627 (and b!5838507 b!5838109)))

(assert (=> bs!1375627 (not (= lambda!319414 lambda!319397))))

(declare-fun bs!1375628 () Bool)

(assert (= bs!1375628 (and b!5838507 b!5838372)))

(assert (=> bs!1375628 (= (and (= (reg!16232 (regOne!32319 (regOne!32319 r!7292))) (reg!16232 (regTwo!32319 (regTwo!32319 r!7292)))) (= (regOne!32319 (regOne!32319 r!7292)) (regTwo!32319 (regTwo!32319 r!7292)))) (= lambda!319414 lambda!319402))))

(declare-fun bs!1375629 () Bool)

(assert (= bs!1375629 (and b!5838507 b!5838036)))

(assert (=> bs!1375629 (= (and (= (reg!16232 (regOne!32319 (regOne!32319 r!7292))) (reg!16232 r!7292)) (= (regOne!32319 (regOne!32319 r!7292)) r!7292)) (= lambda!319414 lambda!319394))))

(declare-fun bs!1375630 () Bool)

(assert (= bs!1375630 (and b!5838507 b!5838134)))

(assert (=> bs!1375630 (not (= lambda!319414 lambda!319399))))

(declare-fun bs!1375631 () Bool)

(assert (= bs!1375631 (and b!5838507 b!5838379)))

(assert (=> bs!1375631 (not (= lambda!319414 lambda!319403))))

(assert (=> b!5838507 true))

(assert (=> b!5838507 true))

(declare-fun bs!1375632 () Bool)

(declare-fun b!5838514 () Bool)

(assert (= bs!1375632 (and b!5838514 b!5838390)))

(declare-fun lambda!319415 () Int)

(assert (=> bs!1375632 (= (and (= (regOne!32318 (regOne!32319 (regOne!32319 r!7292))) (regOne!32318 (regTwo!32319 (regOne!32319 r!7292)))) (= (regTwo!32318 (regOne!32319 (regOne!32319 r!7292))) (regTwo!32318 (regTwo!32319 (regOne!32319 r!7292))))) (= lambda!319415 lambda!319406))))

(declare-fun bs!1375633 () Bool)

(assert (= bs!1375633 (and b!5838514 b!5838043)))

(assert (=> bs!1375633 (= (and (= (regOne!32318 (regOne!32319 (regOne!32319 r!7292))) (regOne!32318 r!7292)) (= (regTwo!32318 (regOne!32319 (regOne!32319 r!7292))) (regTwo!32318 r!7292))) (= lambda!319415 lambda!319395))))

(declare-fun bs!1375634 () Bool)

(assert (= bs!1375634 (and b!5838514 b!5838102)))

(assert (=> bs!1375634 (not (= lambda!319415 lambda!319396))))

(declare-fun bs!1375635 () Bool)

(assert (= bs!1375635 (and b!5838514 b!5838383)))

(assert (=> bs!1375635 (not (= lambda!319415 lambda!319405))))

(declare-fun bs!1375636 () Bool)

(assert (= bs!1375636 (and b!5838514 b!5838127)))

(assert (=> bs!1375636 (not (= lambda!319415 lambda!319398))))

(declare-fun bs!1375637 () Bool)

(assert (= bs!1375637 (and b!5838514 b!5838507)))

(assert (=> bs!1375637 (not (= lambda!319415 lambda!319414))))

(declare-fun bs!1375638 () Bool)

(assert (= bs!1375638 (and b!5838514 b!5838109)))

(assert (=> bs!1375638 (= (and (= (regOne!32318 (regOne!32319 (regOne!32319 r!7292))) (regOne!32318 (regTwo!32319 r!7292))) (= (regTwo!32318 (regOne!32319 (regOne!32319 r!7292))) (regTwo!32318 (regTwo!32319 r!7292)))) (= lambda!319415 lambda!319397))))

(declare-fun bs!1375639 () Bool)

(assert (= bs!1375639 (and b!5838514 b!5838372)))

(assert (=> bs!1375639 (not (= lambda!319415 lambda!319402))))

(declare-fun bs!1375640 () Bool)

(assert (= bs!1375640 (and b!5838514 b!5838036)))

(assert (=> bs!1375640 (not (= lambda!319415 lambda!319394))))

(declare-fun bs!1375641 () Bool)

(assert (= bs!1375641 (and b!5838514 b!5838134)))

(assert (=> bs!1375641 (= (and (= (regOne!32318 (regOne!32319 (regOne!32319 r!7292))) (regOne!32318 (regOne!32319 r!7292))) (= (regTwo!32318 (regOne!32319 (regOne!32319 r!7292))) (regTwo!32318 (regOne!32319 r!7292)))) (= lambda!319415 lambda!319399))))

(declare-fun bs!1375642 () Bool)

(assert (= bs!1375642 (and b!5838514 b!5838379)))

(assert (=> bs!1375642 (= (and (= (regOne!32318 (regOne!32319 (regOne!32319 r!7292))) (regOne!32318 (regTwo!32319 (regTwo!32319 r!7292)))) (= (regTwo!32318 (regOne!32319 (regOne!32319 r!7292))) (regTwo!32318 (regTwo!32319 (regTwo!32319 r!7292))))) (= lambda!319415 lambda!319403))))

(assert (=> b!5838514 true))

(assert (=> b!5838514 true))

(declare-fun bm!455967 () Bool)

(declare-fun call!455972 () Bool)

(assert (=> bm!455967 (= call!455972 (isEmpty!35750 s!2326))))

(declare-fun b!5838506 () Bool)

(declare-fun e!3581402 () Bool)

(assert (=> b!5838506 (= e!3581402 (matchRSpec!3004 (regTwo!32319 (regOne!32319 (regOne!32319 r!7292))) s!2326))))

(declare-fun e!3581404 () Bool)

(declare-fun call!455973 () Bool)

(assert (=> b!5838507 (= e!3581404 call!455973)))

(declare-fun b!5838508 () Bool)

(declare-fun c!1034472 () Bool)

(assert (=> b!5838508 (= c!1034472 ((_ is Union!15903) (regOne!32319 (regOne!32319 r!7292))))))

(declare-fun e!3581407 () Bool)

(declare-fun e!3581406 () Bool)

(assert (=> b!5838508 (= e!3581407 e!3581406)))

(declare-fun b!5838509 () Bool)

(declare-fun e!3581405 () Bool)

(assert (=> b!5838509 (= e!3581405 call!455972)))

(declare-fun b!5838510 () Bool)

(declare-fun res!2459861 () Bool)

(assert (=> b!5838510 (=> res!2459861 e!3581404)))

(assert (=> b!5838510 (= res!2459861 call!455972)))

(declare-fun e!3581408 () Bool)

(assert (=> b!5838510 (= e!3581408 e!3581404)))

(declare-fun c!1034471 () Bool)

(declare-fun bm!455968 () Bool)

(assert (=> bm!455968 (= call!455973 (Exists!2977 (ite c!1034471 lambda!319414 lambda!319415)))))

(declare-fun b!5838511 () Bool)

(assert (=> b!5838511 (= e!3581406 e!3581402)))

(declare-fun res!2459862 () Bool)

(assert (=> b!5838511 (= res!2459862 (matchRSpec!3004 (regOne!32319 (regOne!32319 (regOne!32319 r!7292))) s!2326))))

(assert (=> b!5838511 (=> res!2459862 e!3581402)))

(declare-fun b!5838512 () Bool)

(declare-fun e!3581403 () Bool)

(assert (=> b!5838512 (= e!3581405 e!3581403)))

(declare-fun res!2459863 () Bool)

(assert (=> b!5838512 (= res!2459863 (not ((_ is EmptyLang!15903) (regOne!32319 (regOne!32319 r!7292)))))))

(assert (=> b!5838512 (=> (not res!2459863) (not e!3581403))))

(declare-fun b!5838513 () Bool)

(declare-fun c!1034473 () Bool)

(assert (=> b!5838513 (= c!1034473 ((_ is ElementMatch!15903) (regOne!32319 (regOne!32319 r!7292))))))

(assert (=> b!5838513 (= e!3581403 e!3581407)))

(assert (=> b!5838514 (= e!3581408 call!455973)))

(declare-fun b!5838515 () Bool)

(assert (=> b!5838515 (= e!3581406 e!3581408)))

(assert (=> b!5838515 (= c!1034471 ((_ is Star!15903) (regOne!32319 (regOne!32319 r!7292))))))

(declare-fun d!1834769 () Bool)

(declare-fun c!1034474 () Bool)

(assert (=> d!1834769 (= c!1034474 ((_ is EmptyExpr!15903) (regOne!32319 (regOne!32319 r!7292))))))

(assert (=> d!1834769 (= (matchRSpec!3004 (regOne!32319 (regOne!32319 r!7292)) s!2326) e!3581405)))

(declare-fun b!5838516 () Bool)

(assert (=> b!5838516 (= e!3581407 (= s!2326 (Cons!63886 (c!1034241 (regOne!32319 (regOne!32319 r!7292))) Nil!63886)))))

(assert (= (and d!1834769 c!1034474) b!5838509))

(assert (= (and d!1834769 (not c!1034474)) b!5838512))

(assert (= (and b!5838512 res!2459863) b!5838513))

(assert (= (and b!5838513 c!1034473) b!5838516))

(assert (= (and b!5838513 (not c!1034473)) b!5838508))

(assert (= (and b!5838508 c!1034472) b!5838511))

(assert (= (and b!5838508 (not c!1034472)) b!5838515))

(assert (= (and b!5838511 (not res!2459862)) b!5838506))

(assert (= (and b!5838515 c!1034471) b!5838510))

(assert (= (and b!5838515 (not c!1034471)) b!5838514))

(assert (= (and b!5838510 (not res!2459861)) b!5838507))

(assert (= (or b!5838507 b!5838514) bm!455968))

(assert (= (or b!5838509 b!5838510) bm!455967))

(assert (=> bm!455967 m!6763640))

(declare-fun m!6763952 () Bool)

(assert (=> b!5838506 m!6763952))

(declare-fun m!6763954 () Bool)

(assert (=> bm!455968 m!6763954))

(declare-fun m!6763956 () Bool)

(assert (=> b!5838511 m!6763956))

(assert (=> b!5838131 d!1834769))

(declare-fun bs!1375643 () Bool)

(declare-fun b!5838534 () Bool)

(assert (= bs!1375643 (and b!5838534 b!5838390)))

(declare-fun lambda!319416 () Int)

(assert (=> bs!1375643 (not (= lambda!319416 lambda!319406))))

(declare-fun bs!1375644 () Bool)

(assert (= bs!1375644 (and b!5838534 b!5838043)))

(assert (=> bs!1375644 (not (= lambda!319416 lambda!319395))))

(declare-fun bs!1375645 () Bool)

(assert (= bs!1375645 (and b!5838534 b!5838102)))

(assert (=> bs!1375645 (= (and (= (reg!16232 (regOne!32319 (regTwo!32319 r!7292))) (reg!16232 (regTwo!32319 r!7292))) (= (regOne!32319 (regTwo!32319 r!7292)) (regTwo!32319 r!7292))) (= lambda!319416 lambda!319396))))

(declare-fun bs!1375646 () Bool)

(assert (= bs!1375646 (and b!5838534 b!5838383)))

(assert (=> bs!1375646 (= (and (= (reg!16232 (regOne!32319 (regTwo!32319 r!7292))) (reg!16232 (regTwo!32319 (regOne!32319 r!7292)))) (= (regOne!32319 (regTwo!32319 r!7292)) (regTwo!32319 (regOne!32319 r!7292)))) (= lambda!319416 lambda!319405))))

(declare-fun bs!1375647 () Bool)

(assert (= bs!1375647 (and b!5838534 b!5838127)))

(assert (=> bs!1375647 (= (and (= (reg!16232 (regOne!32319 (regTwo!32319 r!7292))) (reg!16232 (regOne!32319 r!7292))) (= (regOne!32319 (regTwo!32319 r!7292)) (regOne!32319 r!7292))) (= lambda!319416 lambda!319398))))

(declare-fun bs!1375648 () Bool)

(assert (= bs!1375648 (and b!5838534 b!5838507)))

(assert (=> bs!1375648 (= (and (= (reg!16232 (regOne!32319 (regTwo!32319 r!7292))) (reg!16232 (regOne!32319 (regOne!32319 r!7292)))) (= (regOne!32319 (regTwo!32319 r!7292)) (regOne!32319 (regOne!32319 r!7292)))) (= lambda!319416 lambda!319414))))

(declare-fun bs!1375649 () Bool)

(assert (= bs!1375649 (and b!5838534 b!5838109)))

(assert (=> bs!1375649 (not (= lambda!319416 lambda!319397))))

(declare-fun bs!1375650 () Bool)

(assert (= bs!1375650 (and b!5838534 b!5838514)))

(assert (=> bs!1375650 (not (= lambda!319416 lambda!319415))))

(declare-fun bs!1375651 () Bool)

(assert (= bs!1375651 (and b!5838534 b!5838372)))

(assert (=> bs!1375651 (= (and (= (reg!16232 (regOne!32319 (regTwo!32319 r!7292))) (reg!16232 (regTwo!32319 (regTwo!32319 r!7292)))) (= (regOne!32319 (regTwo!32319 r!7292)) (regTwo!32319 (regTwo!32319 r!7292)))) (= lambda!319416 lambda!319402))))

(declare-fun bs!1375652 () Bool)

(assert (= bs!1375652 (and b!5838534 b!5838036)))

(assert (=> bs!1375652 (= (and (= (reg!16232 (regOne!32319 (regTwo!32319 r!7292))) (reg!16232 r!7292)) (= (regOne!32319 (regTwo!32319 r!7292)) r!7292)) (= lambda!319416 lambda!319394))))

(declare-fun bs!1375653 () Bool)

(assert (= bs!1375653 (and b!5838534 b!5838134)))

(assert (=> bs!1375653 (not (= lambda!319416 lambda!319399))))

(declare-fun bs!1375654 () Bool)

(assert (= bs!1375654 (and b!5838534 b!5838379)))

(assert (=> bs!1375654 (not (= lambda!319416 lambda!319403))))

(assert (=> b!5838534 true))

(assert (=> b!5838534 true))

(declare-fun bs!1375655 () Bool)

(declare-fun b!5838541 () Bool)

(assert (= bs!1375655 (and b!5838541 b!5838534)))

(declare-fun lambda!319417 () Int)

(assert (=> bs!1375655 (not (= lambda!319417 lambda!319416))))

(declare-fun bs!1375656 () Bool)

(assert (= bs!1375656 (and b!5838541 b!5838390)))

(assert (=> bs!1375656 (= (and (= (regOne!32318 (regOne!32319 (regTwo!32319 r!7292))) (regOne!32318 (regTwo!32319 (regOne!32319 r!7292)))) (= (regTwo!32318 (regOne!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regTwo!32319 (regOne!32319 r!7292))))) (= lambda!319417 lambda!319406))))

(declare-fun bs!1375657 () Bool)

(assert (= bs!1375657 (and b!5838541 b!5838043)))

(assert (=> bs!1375657 (= (and (= (regOne!32318 (regOne!32319 (regTwo!32319 r!7292))) (regOne!32318 r!7292)) (= (regTwo!32318 (regOne!32319 (regTwo!32319 r!7292))) (regTwo!32318 r!7292))) (= lambda!319417 lambda!319395))))

(declare-fun bs!1375658 () Bool)

(assert (= bs!1375658 (and b!5838541 b!5838102)))

(assert (=> bs!1375658 (not (= lambda!319417 lambda!319396))))

(declare-fun bs!1375659 () Bool)

(assert (= bs!1375659 (and b!5838541 b!5838383)))

(assert (=> bs!1375659 (not (= lambda!319417 lambda!319405))))

(declare-fun bs!1375660 () Bool)

(assert (= bs!1375660 (and b!5838541 b!5838127)))

(assert (=> bs!1375660 (not (= lambda!319417 lambda!319398))))

(declare-fun bs!1375661 () Bool)

(assert (= bs!1375661 (and b!5838541 b!5838507)))

(assert (=> bs!1375661 (not (= lambda!319417 lambda!319414))))

(declare-fun bs!1375662 () Bool)

(assert (= bs!1375662 (and b!5838541 b!5838109)))

(assert (=> bs!1375662 (= (and (= (regOne!32318 (regOne!32319 (regTwo!32319 r!7292))) (regOne!32318 (regTwo!32319 r!7292))) (= (regTwo!32318 (regOne!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regTwo!32319 r!7292)))) (= lambda!319417 lambda!319397))))

(declare-fun bs!1375663 () Bool)

(assert (= bs!1375663 (and b!5838541 b!5838514)))

(assert (=> bs!1375663 (= (and (= (regOne!32318 (regOne!32319 (regTwo!32319 r!7292))) (regOne!32318 (regOne!32319 (regOne!32319 r!7292)))) (= (regTwo!32318 (regOne!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regOne!32319 (regOne!32319 r!7292))))) (= lambda!319417 lambda!319415))))

(declare-fun bs!1375664 () Bool)

(assert (= bs!1375664 (and b!5838541 b!5838372)))

(assert (=> bs!1375664 (not (= lambda!319417 lambda!319402))))

(declare-fun bs!1375665 () Bool)

(assert (= bs!1375665 (and b!5838541 b!5838036)))

(assert (=> bs!1375665 (not (= lambda!319417 lambda!319394))))

(declare-fun bs!1375666 () Bool)

(assert (= bs!1375666 (and b!5838541 b!5838134)))

(assert (=> bs!1375666 (= (and (= (regOne!32318 (regOne!32319 (regTwo!32319 r!7292))) (regOne!32318 (regOne!32319 r!7292))) (= (regTwo!32318 (regOne!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regOne!32319 r!7292)))) (= lambda!319417 lambda!319399))))

(declare-fun bs!1375667 () Bool)

(assert (= bs!1375667 (and b!5838541 b!5838379)))

(assert (=> bs!1375667 (= (and (= (regOne!32318 (regOne!32319 (regTwo!32319 r!7292))) (regOne!32318 (regTwo!32319 (regTwo!32319 r!7292)))) (= (regTwo!32318 (regOne!32319 (regTwo!32319 r!7292))) (regTwo!32318 (regTwo!32319 (regTwo!32319 r!7292))))) (= lambda!319417 lambda!319403))))

(assert (=> b!5838541 true))

(assert (=> b!5838541 true))

(declare-fun bm!455977 () Bool)

(declare-fun call!455982 () Bool)

(assert (=> bm!455977 (= call!455982 (isEmpty!35750 s!2326))))

(declare-fun b!5838533 () Bool)

(declare-fun e!3581417 () Bool)

(assert (=> b!5838533 (= e!3581417 (matchRSpec!3004 (regTwo!32319 (regOne!32319 (regTwo!32319 r!7292))) s!2326))))

(declare-fun e!3581419 () Bool)

(declare-fun call!455983 () Bool)

(assert (=> b!5838534 (= e!3581419 call!455983)))

(declare-fun b!5838535 () Bool)

(declare-fun c!1034484 () Bool)

(assert (=> b!5838535 (= c!1034484 ((_ is Union!15903) (regOne!32319 (regTwo!32319 r!7292))))))

(declare-fun e!3581422 () Bool)

(declare-fun e!3581421 () Bool)

(assert (=> b!5838535 (= e!3581422 e!3581421)))

(declare-fun b!5838536 () Bool)

(declare-fun e!3581420 () Bool)

(assert (=> b!5838536 (= e!3581420 call!455982)))

(declare-fun b!5838537 () Bool)

(declare-fun res!2459864 () Bool)

(assert (=> b!5838537 (=> res!2459864 e!3581419)))

(assert (=> b!5838537 (= res!2459864 call!455982)))

(declare-fun e!3581423 () Bool)

(assert (=> b!5838537 (= e!3581423 e!3581419)))

(declare-fun c!1034483 () Bool)

(declare-fun bm!455978 () Bool)

(assert (=> bm!455978 (= call!455983 (Exists!2977 (ite c!1034483 lambda!319416 lambda!319417)))))

(declare-fun b!5838538 () Bool)

(assert (=> b!5838538 (= e!3581421 e!3581417)))

(declare-fun res!2459865 () Bool)

(assert (=> b!5838538 (= res!2459865 (matchRSpec!3004 (regOne!32319 (regOne!32319 (regTwo!32319 r!7292))) s!2326))))

(assert (=> b!5838538 (=> res!2459865 e!3581417)))

(declare-fun b!5838539 () Bool)

(declare-fun e!3581418 () Bool)

(assert (=> b!5838539 (= e!3581420 e!3581418)))

(declare-fun res!2459866 () Bool)

(assert (=> b!5838539 (= res!2459866 (not ((_ is EmptyLang!15903) (regOne!32319 (regTwo!32319 r!7292)))))))

(assert (=> b!5838539 (=> (not res!2459866) (not e!3581418))))

(declare-fun b!5838540 () Bool)

(declare-fun c!1034485 () Bool)

(assert (=> b!5838540 (= c!1034485 ((_ is ElementMatch!15903) (regOne!32319 (regTwo!32319 r!7292))))))

(assert (=> b!5838540 (= e!3581418 e!3581422)))

(assert (=> b!5838541 (= e!3581423 call!455983)))

(declare-fun b!5838542 () Bool)

(assert (=> b!5838542 (= e!3581421 e!3581423)))

(assert (=> b!5838542 (= c!1034483 ((_ is Star!15903) (regOne!32319 (regTwo!32319 r!7292))))))

(declare-fun d!1834771 () Bool)

(declare-fun c!1034486 () Bool)

(assert (=> d!1834771 (= c!1034486 ((_ is EmptyExpr!15903) (regOne!32319 (regTwo!32319 r!7292))))))

(assert (=> d!1834771 (= (matchRSpec!3004 (regOne!32319 (regTwo!32319 r!7292)) s!2326) e!3581420)))

(declare-fun b!5838543 () Bool)

(assert (=> b!5838543 (= e!3581422 (= s!2326 (Cons!63886 (c!1034241 (regOne!32319 (regTwo!32319 r!7292))) Nil!63886)))))

(assert (= (and d!1834771 c!1034486) b!5838536))

(assert (= (and d!1834771 (not c!1034486)) b!5838539))

(assert (= (and b!5838539 res!2459866) b!5838540))

(assert (= (and b!5838540 c!1034485) b!5838543))

(assert (= (and b!5838540 (not c!1034485)) b!5838535))

(assert (= (and b!5838535 c!1034484) b!5838538))

(assert (= (and b!5838535 (not c!1034484)) b!5838542))

(assert (= (and b!5838538 (not res!2459865)) b!5838533))

(assert (= (and b!5838542 c!1034483) b!5838537))

(assert (= (and b!5838542 (not c!1034483)) b!5838541))

(assert (= (and b!5838537 (not res!2459864)) b!5838534))

(assert (= (or b!5838534 b!5838541) bm!455978))

(assert (= (or b!5838536 b!5838537) bm!455977))

(assert (=> bm!455977 m!6763640))

(declare-fun m!6763958 () Bool)

(assert (=> b!5838533 m!6763958))

(declare-fun m!6763960 () Bool)

(assert (=> bm!455978 m!6763960))

(declare-fun m!6763962 () Bool)

(assert (=> b!5838538 m!6763962))

(assert (=> b!5838106 d!1834771))

(declare-fun b!5838544 () Bool)

(declare-fun e!3581424 () Bool)

(declare-fun tp!1614167 () Bool)

(assert (=> b!5838544 (= e!3581424 (and tp_is_empty!41059 tp!1614167))))

(assert (=> b!5838191 (= tp!1614148 e!3581424)))

(assert (= (and b!5838191 ((_ is Cons!63886) (t!377365 (t!377365 s!2326)))) b!5838544))

(declare-fun b!5838545 () Bool)

(declare-fun e!3581425 () Bool)

(assert (=> b!5838545 (= e!3581425 tp_is_empty!41059)))

(declare-fun b!5838546 () Bool)

(declare-fun tp!1614172 () Bool)

(declare-fun tp!1614168 () Bool)

(assert (=> b!5838546 (= e!3581425 (and tp!1614172 tp!1614168))))

(declare-fun b!5838547 () Bool)

(declare-fun tp!1614170 () Bool)

(assert (=> b!5838547 (= e!3581425 tp!1614170)))

(assert (=> b!5838167 (= tp!1614120 e!3581425)))

(declare-fun b!5838548 () Bool)

(declare-fun tp!1614169 () Bool)

(declare-fun tp!1614171 () Bool)

(assert (=> b!5838548 (= e!3581425 (and tp!1614169 tp!1614171))))

(assert (= (and b!5838167 ((_ is ElementMatch!15903) (reg!16232 (regTwo!32318 r!7292)))) b!5838545))

(assert (= (and b!5838167 ((_ is Concat!24748) (reg!16232 (regTwo!32318 r!7292)))) b!5838546))

(assert (= (and b!5838167 ((_ is Star!15903) (reg!16232 (regTwo!32318 r!7292)))) b!5838547))

(assert (= (and b!5838167 ((_ is Union!15903) (reg!16232 (regTwo!32318 r!7292)))) b!5838548))

(declare-fun b!5838549 () Bool)

(declare-fun e!3581426 () Bool)

(assert (=> b!5838549 (= e!3581426 tp_is_empty!41059)))

(declare-fun b!5838550 () Bool)

(declare-fun tp!1614177 () Bool)

(declare-fun tp!1614173 () Bool)

(assert (=> b!5838550 (= e!3581426 (and tp!1614177 tp!1614173))))

(declare-fun b!5838551 () Bool)

(declare-fun tp!1614175 () Bool)

(assert (=> b!5838551 (= e!3581426 tp!1614175)))

(assert (=> b!5838176 (= tp!1614129 e!3581426)))

(declare-fun b!5838552 () Bool)

(declare-fun tp!1614174 () Bool)

(declare-fun tp!1614176 () Bool)

(assert (=> b!5838552 (= e!3581426 (and tp!1614174 tp!1614176))))

(assert (= (and b!5838176 ((_ is ElementMatch!15903) (regOne!32319 (regOne!32319 r!7292)))) b!5838549))

(assert (= (and b!5838176 ((_ is Concat!24748) (regOne!32319 (regOne!32319 r!7292)))) b!5838550))

(assert (= (and b!5838176 ((_ is Star!15903) (regOne!32319 (regOne!32319 r!7292)))) b!5838551))

(assert (= (and b!5838176 ((_ is Union!15903) (regOne!32319 (regOne!32319 r!7292)))) b!5838552))

(declare-fun b!5838563 () Bool)

(declare-fun e!3581432 () Bool)

(assert (=> b!5838563 (= e!3581432 tp_is_empty!41059)))

(declare-fun b!5838564 () Bool)

(declare-fun tp!1614182 () Bool)

(declare-fun tp!1614178 () Bool)

(assert (=> b!5838564 (= e!3581432 (and tp!1614182 tp!1614178))))

(declare-fun b!5838565 () Bool)

(declare-fun tp!1614180 () Bool)

(assert (=> b!5838565 (= e!3581432 tp!1614180)))

(assert (=> b!5838176 (= tp!1614131 e!3581432)))

(declare-fun b!5838566 () Bool)

(declare-fun tp!1614179 () Bool)

(declare-fun tp!1614181 () Bool)

(assert (=> b!5838566 (= e!3581432 (and tp!1614179 tp!1614181))))

(assert (= (and b!5838176 ((_ is ElementMatch!15903) (regTwo!32319 (regOne!32319 r!7292)))) b!5838563))

(assert (= (and b!5838176 ((_ is Concat!24748) (regTwo!32319 (regOne!32319 r!7292)))) b!5838564))

(assert (= (and b!5838176 ((_ is Star!15903) (regTwo!32319 (regOne!32319 r!7292)))) b!5838565))

(assert (= (and b!5838176 ((_ is Union!15903) (regTwo!32319 (regOne!32319 r!7292)))) b!5838566))

(declare-fun condSetEmpty!39545 () Bool)

(assert (=> setNonEmpty!39544 (= condSetEmpty!39545 (= setRest!39544 ((as const (Array Context!10574 Bool)) false)))))

(declare-fun setRes!39545 () Bool)

(assert (=> setNonEmpty!39544 (= tp!1614160 setRes!39545)))

(declare-fun setIsEmpty!39545 () Bool)

(assert (=> setIsEmpty!39545 setRes!39545))

(declare-fun e!3581433 () Bool)

(declare-fun setNonEmpty!39545 () Bool)

(declare-fun setElem!39545 () Context!10574)

(declare-fun tp!1614184 () Bool)

(assert (=> setNonEmpty!39545 (= setRes!39545 (and tp!1614184 (inv!83004 setElem!39545) e!3581433))))

(declare-fun setRest!39545 () (InoxSet Context!10574))

(assert (=> setNonEmpty!39545 (= setRest!39544 ((_ map or) (store ((as const (Array Context!10574 Bool)) false) setElem!39545 true) setRest!39545))))

(declare-fun b!5838567 () Bool)

(declare-fun tp!1614183 () Bool)

(assert (=> b!5838567 (= e!3581433 tp!1614183)))

(assert (= (and setNonEmpty!39544 condSetEmpty!39545) setIsEmpty!39545))

(assert (= (and setNonEmpty!39544 (not condSetEmpty!39545)) setNonEmpty!39545))

(assert (= setNonEmpty!39545 b!5838567))

(declare-fun m!6763964 () Bool)

(assert (=> setNonEmpty!39545 m!6763964))

(declare-fun b!5838568 () Bool)

(declare-fun e!3581434 () Bool)

(assert (=> b!5838568 (= e!3581434 tp_is_empty!41059)))

(declare-fun b!5838569 () Bool)

(declare-fun tp!1614189 () Bool)

(declare-fun tp!1614185 () Bool)

(assert (=> b!5838569 (= e!3581434 (and tp!1614189 tp!1614185))))

(declare-fun b!5838570 () Bool)

(declare-fun tp!1614187 () Bool)

(assert (=> b!5838570 (= e!3581434 tp!1614187)))

(assert (=> b!5838168 (= tp!1614119 e!3581434)))

(declare-fun b!5838571 () Bool)

(declare-fun tp!1614186 () Bool)

(declare-fun tp!1614188 () Bool)

(assert (=> b!5838571 (= e!3581434 (and tp!1614186 tp!1614188))))

(assert (= (and b!5838168 ((_ is ElementMatch!15903) (regOne!32319 (regTwo!32318 r!7292)))) b!5838568))

(assert (= (and b!5838168 ((_ is Concat!24748) (regOne!32319 (regTwo!32318 r!7292)))) b!5838569))

(assert (= (and b!5838168 ((_ is Star!15903) (regOne!32319 (regTwo!32318 r!7292)))) b!5838570))

(assert (= (and b!5838168 ((_ is Union!15903) (regOne!32319 (regTwo!32318 r!7292)))) b!5838571))

(declare-fun b!5838572 () Bool)

(declare-fun e!3581435 () Bool)

(assert (=> b!5838572 (= e!3581435 tp_is_empty!41059)))

(declare-fun b!5838573 () Bool)

(declare-fun tp!1614194 () Bool)

(declare-fun tp!1614190 () Bool)

(assert (=> b!5838573 (= e!3581435 (and tp!1614194 tp!1614190))))

(declare-fun b!5838574 () Bool)

(declare-fun tp!1614192 () Bool)

(assert (=> b!5838574 (= e!3581435 tp!1614192)))

(assert (=> b!5838168 (= tp!1614121 e!3581435)))

(declare-fun b!5838575 () Bool)

(declare-fun tp!1614191 () Bool)

(declare-fun tp!1614193 () Bool)

(assert (=> b!5838575 (= e!3581435 (and tp!1614191 tp!1614193))))

(assert (= (and b!5838168 ((_ is ElementMatch!15903) (regTwo!32319 (regTwo!32318 r!7292)))) b!5838572))

(assert (= (and b!5838168 ((_ is Concat!24748) (regTwo!32319 (regTwo!32318 r!7292)))) b!5838573))

(assert (= (and b!5838168 ((_ is Star!15903) (regTwo!32319 (regTwo!32318 r!7292)))) b!5838574))

(assert (= (and b!5838168 ((_ is Union!15903) (regTwo!32319 (regTwo!32318 r!7292)))) b!5838575))

(declare-fun b!5838576 () Bool)

(declare-fun e!3581436 () Bool)

(declare-fun tp!1614195 () Bool)

(declare-fun tp!1614196 () Bool)

(assert (=> b!5838576 (= e!3581436 (and tp!1614195 tp!1614196))))

(assert (=> b!5838204 (= tp!1614159 e!3581436)))

(assert (= (and b!5838204 ((_ is Cons!63884) (exprs!5787 setElem!39544))) b!5838576))

(declare-fun b!5838577 () Bool)

(declare-fun e!3581437 () Bool)

(assert (=> b!5838577 (= e!3581437 tp_is_empty!41059)))

(declare-fun b!5838578 () Bool)

(declare-fun tp!1614201 () Bool)

(declare-fun tp!1614197 () Bool)

(assert (=> b!5838578 (= e!3581437 (and tp!1614201 tp!1614197))))

(declare-fun b!5838579 () Bool)

(declare-fun tp!1614199 () Bool)

(assert (=> b!5838579 (= e!3581437 tp!1614199)))

(assert (=> b!5838174 (= tp!1614132 e!3581437)))

(declare-fun b!5838580 () Bool)

(declare-fun tp!1614198 () Bool)

(declare-fun tp!1614200 () Bool)

(assert (=> b!5838580 (= e!3581437 (and tp!1614198 tp!1614200))))

(assert (= (and b!5838174 ((_ is ElementMatch!15903) (regOne!32318 (regOne!32319 r!7292)))) b!5838577))

(assert (= (and b!5838174 ((_ is Concat!24748) (regOne!32318 (regOne!32319 r!7292)))) b!5838578))

(assert (= (and b!5838174 ((_ is Star!15903) (regOne!32318 (regOne!32319 r!7292)))) b!5838579))

(assert (= (and b!5838174 ((_ is Union!15903) (regOne!32318 (regOne!32319 r!7292)))) b!5838580))

(declare-fun b!5838581 () Bool)

(declare-fun e!3581438 () Bool)

(assert (=> b!5838581 (= e!3581438 tp_is_empty!41059)))

(declare-fun b!5838582 () Bool)

(declare-fun tp!1614206 () Bool)

(declare-fun tp!1614202 () Bool)

(assert (=> b!5838582 (= e!3581438 (and tp!1614206 tp!1614202))))

(declare-fun b!5838583 () Bool)

(declare-fun tp!1614204 () Bool)

(assert (=> b!5838583 (= e!3581438 tp!1614204)))

(assert (=> b!5838174 (= tp!1614128 e!3581438)))

(declare-fun b!5838584 () Bool)

(declare-fun tp!1614203 () Bool)

(declare-fun tp!1614205 () Bool)

(assert (=> b!5838584 (= e!3581438 (and tp!1614203 tp!1614205))))

(assert (= (and b!5838174 ((_ is ElementMatch!15903) (regTwo!32318 (regOne!32319 r!7292)))) b!5838581))

(assert (= (and b!5838174 ((_ is Concat!24748) (regTwo!32318 (regOne!32319 r!7292)))) b!5838582))

(assert (= (and b!5838174 ((_ is Star!15903) (regTwo!32318 (regOne!32319 r!7292)))) b!5838583))

(assert (= (and b!5838174 ((_ is Union!15903) (regTwo!32318 (regOne!32319 r!7292)))) b!5838584))

(declare-fun b!5838585 () Bool)

(declare-fun e!3581439 () Bool)

(assert (=> b!5838585 (= e!3581439 tp_is_empty!41059)))

(declare-fun b!5838586 () Bool)

(declare-fun tp!1614211 () Bool)

(declare-fun tp!1614207 () Bool)

(assert (=> b!5838586 (= e!3581439 (and tp!1614211 tp!1614207))))

(declare-fun b!5838587 () Bool)

(declare-fun tp!1614209 () Bool)

(assert (=> b!5838587 (= e!3581439 tp!1614209)))

(assert (=> b!5838175 (= tp!1614130 e!3581439)))

(declare-fun b!5838588 () Bool)

(declare-fun tp!1614208 () Bool)

(declare-fun tp!1614210 () Bool)

(assert (=> b!5838588 (= e!3581439 (and tp!1614208 tp!1614210))))

(assert (= (and b!5838175 ((_ is ElementMatch!15903) (reg!16232 (regOne!32319 r!7292)))) b!5838585))

(assert (= (and b!5838175 ((_ is Concat!24748) (reg!16232 (regOne!32319 r!7292)))) b!5838586))

(assert (= (and b!5838175 ((_ is Star!15903) (reg!16232 (regOne!32319 r!7292)))) b!5838587))

(assert (= (and b!5838175 ((_ is Union!15903) (reg!16232 (regOne!32319 r!7292)))) b!5838588))

(declare-fun b!5838589 () Bool)

(declare-fun e!3581440 () Bool)

(assert (=> b!5838589 (= e!3581440 tp_is_empty!41059)))

(declare-fun b!5838590 () Bool)

(declare-fun tp!1614216 () Bool)

(declare-fun tp!1614212 () Bool)

(assert (=> b!5838590 (= e!3581440 (and tp!1614216 tp!1614212))))

(declare-fun b!5838591 () Bool)

(declare-fun tp!1614214 () Bool)

(assert (=> b!5838591 (= e!3581440 tp!1614214)))

(assert (=> b!5838166 (= tp!1614122 e!3581440)))

(declare-fun b!5838592 () Bool)

(declare-fun tp!1614213 () Bool)

(declare-fun tp!1614215 () Bool)

(assert (=> b!5838592 (= e!3581440 (and tp!1614213 tp!1614215))))

(assert (= (and b!5838166 ((_ is ElementMatch!15903) (regOne!32318 (regTwo!32318 r!7292)))) b!5838589))

(assert (= (and b!5838166 ((_ is Concat!24748) (regOne!32318 (regTwo!32318 r!7292)))) b!5838590))

(assert (= (and b!5838166 ((_ is Star!15903) (regOne!32318 (regTwo!32318 r!7292)))) b!5838591))

(assert (= (and b!5838166 ((_ is Union!15903) (regOne!32318 (regTwo!32318 r!7292)))) b!5838592))

(declare-fun b!5838593 () Bool)

(declare-fun e!3581441 () Bool)

(assert (=> b!5838593 (= e!3581441 tp_is_empty!41059)))

(declare-fun b!5838594 () Bool)

(declare-fun tp!1614221 () Bool)

(declare-fun tp!1614217 () Bool)

(assert (=> b!5838594 (= e!3581441 (and tp!1614221 tp!1614217))))

(declare-fun b!5838595 () Bool)

(declare-fun tp!1614219 () Bool)

(assert (=> b!5838595 (= e!3581441 tp!1614219)))

(assert (=> b!5838166 (= tp!1614118 e!3581441)))

(declare-fun b!5838596 () Bool)

(declare-fun tp!1614218 () Bool)

(declare-fun tp!1614220 () Bool)

(assert (=> b!5838596 (= e!3581441 (and tp!1614218 tp!1614220))))

(assert (= (and b!5838166 ((_ is ElementMatch!15903) (regTwo!32318 (regTwo!32318 r!7292)))) b!5838593))

(assert (= (and b!5838166 ((_ is Concat!24748) (regTwo!32318 (regTwo!32318 r!7292)))) b!5838594))

(assert (= (and b!5838166 ((_ is Star!15903) (regTwo!32318 (regTwo!32318 r!7292)))) b!5838595))

(assert (= (and b!5838166 ((_ is Union!15903) (regTwo!32318 (regTwo!32318 r!7292)))) b!5838596))

(declare-fun b!5838606 () Bool)

(declare-fun e!3581449 () Bool)

(assert (=> b!5838606 (= e!3581449 tp_is_empty!41059)))

(declare-fun b!5838607 () Bool)

(declare-fun tp!1614226 () Bool)

(declare-fun tp!1614222 () Bool)

(assert (=> b!5838607 (= e!3581449 (and tp!1614226 tp!1614222))))

(declare-fun b!5838608 () Bool)

(declare-fun tp!1614224 () Bool)

(assert (=> b!5838608 (= e!3581449 tp!1614224)))

(assert (=> b!5838186 (= tp!1614144 e!3581449)))

(declare-fun b!5838609 () Bool)

(declare-fun tp!1614223 () Bool)

(declare-fun tp!1614225 () Bool)

(assert (=> b!5838609 (= e!3581449 (and tp!1614223 tp!1614225))))

(assert (= (and b!5838186 ((_ is ElementMatch!15903) (h!70332 (exprs!5787 (h!70333 zl!343))))) b!5838606))

(assert (= (and b!5838186 ((_ is Concat!24748) (h!70332 (exprs!5787 (h!70333 zl!343))))) b!5838607))

(assert (= (and b!5838186 ((_ is Star!15903) (h!70332 (exprs!5787 (h!70333 zl!343))))) b!5838608))

(assert (= (and b!5838186 ((_ is Union!15903) (h!70332 (exprs!5787 (h!70333 zl!343))))) b!5838609))

(declare-fun b!5838610 () Bool)

(declare-fun e!3581450 () Bool)

(declare-fun tp!1614227 () Bool)

(declare-fun tp!1614228 () Bool)

(assert (=> b!5838610 (= e!3581450 (and tp!1614227 tp!1614228))))

(assert (=> b!5838186 (= tp!1614145 e!3581450)))

(assert (= (and b!5838186 ((_ is Cons!63884) (t!377363 (exprs!5787 (h!70333 zl!343))))) b!5838610))

(declare-fun b!5838611 () Bool)

(declare-fun e!3581451 () Bool)

(assert (=> b!5838611 (= e!3581451 tp_is_empty!41059)))

(declare-fun b!5838612 () Bool)

(declare-fun tp!1614233 () Bool)

(declare-fun tp!1614229 () Bool)

(assert (=> b!5838612 (= e!3581451 (and tp!1614233 tp!1614229))))

(declare-fun b!5838613 () Bool)

(declare-fun tp!1614231 () Bool)

(assert (=> b!5838613 (= e!3581451 tp!1614231)))

(assert (=> b!5838162 (= tp!1614117 e!3581451)))

(declare-fun b!5838614 () Bool)

(declare-fun tp!1614230 () Bool)

(declare-fun tp!1614232 () Bool)

(assert (=> b!5838614 (= e!3581451 (and tp!1614230 tp!1614232))))

(assert (= (and b!5838162 ((_ is ElementMatch!15903) (regOne!32318 (regOne!32318 r!7292)))) b!5838611))

(assert (= (and b!5838162 ((_ is Concat!24748) (regOne!32318 (regOne!32318 r!7292)))) b!5838612))

(assert (= (and b!5838162 ((_ is Star!15903) (regOne!32318 (regOne!32318 r!7292)))) b!5838613))

(assert (= (and b!5838162 ((_ is Union!15903) (regOne!32318 (regOne!32318 r!7292)))) b!5838614))

(declare-fun b!5838615 () Bool)

(declare-fun e!3581452 () Bool)

(assert (=> b!5838615 (= e!3581452 tp_is_empty!41059)))

(declare-fun b!5838616 () Bool)

(declare-fun tp!1614238 () Bool)

(declare-fun tp!1614234 () Bool)

(assert (=> b!5838616 (= e!3581452 (and tp!1614238 tp!1614234))))

(declare-fun b!5838617 () Bool)

(declare-fun tp!1614236 () Bool)

(assert (=> b!5838617 (= e!3581452 tp!1614236)))

(assert (=> b!5838162 (= tp!1614113 e!3581452)))

(declare-fun b!5838618 () Bool)

(declare-fun tp!1614235 () Bool)

(declare-fun tp!1614237 () Bool)

(assert (=> b!5838618 (= e!3581452 (and tp!1614235 tp!1614237))))

(assert (= (and b!5838162 ((_ is ElementMatch!15903) (regTwo!32318 (regOne!32318 r!7292)))) b!5838615))

(assert (= (and b!5838162 ((_ is Concat!24748) (regTwo!32318 (regOne!32318 r!7292)))) b!5838616))

(assert (= (and b!5838162 ((_ is Star!15903) (regTwo!32318 (regOne!32318 r!7292)))) b!5838617))

(assert (= (and b!5838162 ((_ is Union!15903) (regTwo!32318 (regOne!32318 r!7292)))) b!5838618))

(declare-fun b!5838619 () Bool)

(declare-fun e!3581453 () Bool)

(assert (=> b!5838619 (= e!3581453 tp_is_empty!41059)))

(declare-fun b!5838620 () Bool)

(declare-fun tp!1614243 () Bool)

(declare-fun tp!1614239 () Bool)

(assert (=> b!5838620 (= e!3581453 (and tp!1614243 tp!1614239))))

(declare-fun b!5838621 () Bool)

(declare-fun tp!1614241 () Bool)

(assert (=> b!5838621 (= e!3581453 tp!1614241)))

(assert (=> b!5838163 (= tp!1614115 e!3581453)))

(declare-fun b!5838622 () Bool)

(declare-fun tp!1614240 () Bool)

(declare-fun tp!1614242 () Bool)

(assert (=> b!5838622 (= e!3581453 (and tp!1614240 tp!1614242))))

(assert (= (and b!5838163 ((_ is ElementMatch!15903) (reg!16232 (regOne!32318 r!7292)))) b!5838619))

(assert (= (and b!5838163 ((_ is Concat!24748) (reg!16232 (regOne!32318 r!7292)))) b!5838620))

(assert (= (and b!5838163 ((_ is Star!15903) (reg!16232 (regOne!32318 r!7292)))) b!5838621))

(assert (= (and b!5838163 ((_ is Union!15903) (reg!16232 (regOne!32318 r!7292)))) b!5838622))

(declare-fun b!5838623 () Bool)

(declare-fun e!3581454 () Bool)

(assert (=> b!5838623 (= e!3581454 tp_is_empty!41059)))

(declare-fun b!5838624 () Bool)

(declare-fun tp!1614248 () Bool)

(declare-fun tp!1614244 () Bool)

(assert (=> b!5838624 (= e!3581454 (and tp!1614248 tp!1614244))))

(declare-fun b!5838625 () Bool)

(declare-fun tp!1614246 () Bool)

(assert (=> b!5838625 (= e!3581454 tp!1614246)))

(assert (=> b!5838172 (= tp!1614124 e!3581454)))

(declare-fun b!5838626 () Bool)

(declare-fun tp!1614245 () Bool)

(declare-fun tp!1614247 () Bool)

(assert (=> b!5838626 (= e!3581454 (and tp!1614245 tp!1614247))))

(assert (= (and b!5838172 ((_ is ElementMatch!15903) (regOne!32319 (reg!16232 r!7292)))) b!5838623))

(assert (= (and b!5838172 ((_ is Concat!24748) (regOne!32319 (reg!16232 r!7292)))) b!5838624))

(assert (= (and b!5838172 ((_ is Star!15903) (regOne!32319 (reg!16232 r!7292)))) b!5838625))

(assert (= (and b!5838172 ((_ is Union!15903) (regOne!32319 (reg!16232 r!7292)))) b!5838626))

(declare-fun b!5838627 () Bool)

(declare-fun e!3581455 () Bool)

(assert (=> b!5838627 (= e!3581455 tp_is_empty!41059)))

(declare-fun b!5838628 () Bool)

(declare-fun tp!1614253 () Bool)

(declare-fun tp!1614249 () Bool)

(assert (=> b!5838628 (= e!3581455 (and tp!1614253 tp!1614249))))

(declare-fun b!5838629 () Bool)

(declare-fun tp!1614251 () Bool)

(assert (=> b!5838629 (= e!3581455 tp!1614251)))

(assert (=> b!5838172 (= tp!1614126 e!3581455)))

(declare-fun b!5838630 () Bool)

(declare-fun tp!1614250 () Bool)

(declare-fun tp!1614252 () Bool)

(assert (=> b!5838630 (= e!3581455 (and tp!1614250 tp!1614252))))

(assert (= (and b!5838172 ((_ is ElementMatch!15903) (regTwo!32319 (reg!16232 r!7292)))) b!5838627))

(assert (= (and b!5838172 ((_ is Concat!24748) (regTwo!32319 (reg!16232 r!7292)))) b!5838628))

(assert (= (and b!5838172 ((_ is Star!15903) (regTwo!32319 (reg!16232 r!7292)))) b!5838629))

(assert (= (and b!5838172 ((_ is Union!15903) (regTwo!32319 (reg!16232 r!7292)))) b!5838630))

(declare-fun b!5838631 () Bool)

(declare-fun e!3581456 () Bool)

(assert (=> b!5838631 (= e!3581456 tp_is_empty!41059)))

(declare-fun b!5838632 () Bool)

(declare-fun tp!1614258 () Bool)

(declare-fun tp!1614254 () Bool)

(assert (=> b!5838632 (= e!3581456 (and tp!1614258 tp!1614254))))

(declare-fun b!5838633 () Bool)

(declare-fun tp!1614256 () Bool)

(assert (=> b!5838633 (= e!3581456 tp!1614256)))

(assert (=> b!5838164 (= tp!1614114 e!3581456)))

(declare-fun b!5838634 () Bool)

(declare-fun tp!1614255 () Bool)

(declare-fun tp!1614257 () Bool)

(assert (=> b!5838634 (= e!3581456 (and tp!1614255 tp!1614257))))

(assert (= (and b!5838164 ((_ is ElementMatch!15903) (regOne!32319 (regOne!32318 r!7292)))) b!5838631))

(assert (= (and b!5838164 ((_ is Concat!24748) (regOne!32319 (regOne!32318 r!7292)))) b!5838632))

(assert (= (and b!5838164 ((_ is Star!15903) (regOne!32319 (regOne!32318 r!7292)))) b!5838633))

(assert (= (and b!5838164 ((_ is Union!15903) (regOne!32319 (regOne!32318 r!7292)))) b!5838634))

(declare-fun b!5838645 () Bool)

(declare-fun e!3581464 () Bool)

(assert (=> b!5838645 (= e!3581464 tp_is_empty!41059)))

(declare-fun b!5838646 () Bool)

(declare-fun tp!1614263 () Bool)

(declare-fun tp!1614259 () Bool)

(assert (=> b!5838646 (= e!3581464 (and tp!1614263 tp!1614259))))

(declare-fun b!5838647 () Bool)

(declare-fun tp!1614261 () Bool)

(assert (=> b!5838647 (= e!3581464 tp!1614261)))

(assert (=> b!5838164 (= tp!1614116 e!3581464)))

(declare-fun b!5838648 () Bool)

(declare-fun tp!1614260 () Bool)

(declare-fun tp!1614262 () Bool)

(assert (=> b!5838648 (= e!3581464 (and tp!1614260 tp!1614262))))

(assert (= (and b!5838164 ((_ is ElementMatch!15903) (regTwo!32319 (regOne!32318 r!7292)))) b!5838645))

(assert (= (and b!5838164 ((_ is Concat!24748) (regTwo!32319 (regOne!32318 r!7292)))) b!5838646))

(assert (= (and b!5838164 ((_ is Star!15903) (regTwo!32319 (regOne!32318 r!7292)))) b!5838647))

(assert (= (and b!5838164 ((_ is Union!15903) (regTwo!32319 (regOne!32318 r!7292)))) b!5838648))

(declare-fun b!5838653 () Bool)

(declare-fun e!3581465 () Bool)

(assert (=> b!5838653 (= e!3581465 tp_is_empty!41059)))

(declare-fun b!5838654 () Bool)

(declare-fun tp!1614268 () Bool)

(declare-fun tp!1614264 () Bool)

(assert (=> b!5838654 (= e!3581465 (and tp!1614268 tp!1614264))))

(declare-fun b!5838655 () Bool)

(declare-fun tp!1614266 () Bool)

(assert (=> b!5838655 (= e!3581465 tp!1614266)))

(assert (=> b!5838178 (= tp!1614137 e!3581465)))

(declare-fun b!5838656 () Bool)

(declare-fun tp!1614265 () Bool)

(declare-fun tp!1614267 () Bool)

(assert (=> b!5838656 (= e!3581465 (and tp!1614265 tp!1614267))))

(assert (= (and b!5838178 ((_ is ElementMatch!15903) (regOne!32318 (regTwo!32319 r!7292)))) b!5838653))

(assert (= (and b!5838178 ((_ is Concat!24748) (regOne!32318 (regTwo!32319 r!7292)))) b!5838654))

(assert (= (and b!5838178 ((_ is Star!15903) (regOne!32318 (regTwo!32319 r!7292)))) b!5838655))

(assert (= (and b!5838178 ((_ is Union!15903) (regOne!32318 (regTwo!32319 r!7292)))) b!5838656))

(declare-fun b!5838657 () Bool)

(declare-fun e!3581466 () Bool)

(assert (=> b!5838657 (= e!3581466 tp_is_empty!41059)))

(declare-fun b!5838658 () Bool)

(declare-fun tp!1614273 () Bool)

(declare-fun tp!1614269 () Bool)

(assert (=> b!5838658 (= e!3581466 (and tp!1614273 tp!1614269))))

(declare-fun b!5838659 () Bool)

(declare-fun tp!1614271 () Bool)

(assert (=> b!5838659 (= e!3581466 tp!1614271)))

(assert (=> b!5838178 (= tp!1614133 e!3581466)))

(declare-fun b!5838660 () Bool)

(declare-fun tp!1614270 () Bool)

(declare-fun tp!1614272 () Bool)

(assert (=> b!5838660 (= e!3581466 (and tp!1614270 tp!1614272))))

(assert (= (and b!5838178 ((_ is ElementMatch!15903) (regTwo!32318 (regTwo!32319 r!7292)))) b!5838657))

(assert (= (and b!5838178 ((_ is Concat!24748) (regTwo!32318 (regTwo!32319 r!7292)))) b!5838658))

(assert (= (and b!5838178 ((_ is Star!15903) (regTwo!32318 (regTwo!32319 r!7292)))) b!5838659))

(assert (= (and b!5838178 ((_ is Union!15903) (regTwo!32318 (regTwo!32319 r!7292)))) b!5838660))

(declare-fun b!5838661 () Bool)

(declare-fun e!3581467 () Bool)

(assert (=> b!5838661 (= e!3581467 tp_is_empty!41059)))

(declare-fun b!5838662 () Bool)

(declare-fun tp!1614278 () Bool)

(declare-fun tp!1614274 () Bool)

(assert (=> b!5838662 (= e!3581467 (and tp!1614278 tp!1614274))))

(declare-fun b!5838663 () Bool)

(declare-fun tp!1614276 () Bool)

(assert (=> b!5838663 (= e!3581467 tp!1614276)))

(assert (=> b!5838179 (= tp!1614135 e!3581467)))

(declare-fun b!5838664 () Bool)

(declare-fun tp!1614275 () Bool)

(declare-fun tp!1614277 () Bool)

(assert (=> b!5838664 (= e!3581467 (and tp!1614275 tp!1614277))))

(assert (= (and b!5838179 ((_ is ElementMatch!15903) (reg!16232 (regTwo!32319 r!7292)))) b!5838661))

(assert (= (and b!5838179 ((_ is Concat!24748) (reg!16232 (regTwo!32319 r!7292)))) b!5838662))

(assert (= (and b!5838179 ((_ is Star!15903) (reg!16232 (regTwo!32319 r!7292)))) b!5838663))

(assert (= (and b!5838179 ((_ is Union!15903) (reg!16232 (regTwo!32319 r!7292)))) b!5838664))

(declare-fun b!5838665 () Bool)

(declare-fun e!3581468 () Bool)

(assert (=> b!5838665 (= e!3581468 tp_is_empty!41059)))

(declare-fun b!5838666 () Bool)

(declare-fun tp!1614283 () Bool)

(declare-fun tp!1614279 () Bool)

(assert (=> b!5838666 (= e!3581468 (and tp!1614283 tp!1614279))))

(declare-fun b!5838667 () Bool)

(declare-fun tp!1614281 () Bool)

(assert (=> b!5838667 (= e!3581468 tp!1614281)))

(assert (=> b!5838170 (= tp!1614127 e!3581468)))

(declare-fun b!5838668 () Bool)

(declare-fun tp!1614280 () Bool)

(declare-fun tp!1614282 () Bool)

(assert (=> b!5838668 (= e!3581468 (and tp!1614280 tp!1614282))))

(assert (= (and b!5838170 ((_ is ElementMatch!15903) (regOne!32318 (reg!16232 r!7292)))) b!5838665))

(assert (= (and b!5838170 ((_ is Concat!24748) (regOne!32318 (reg!16232 r!7292)))) b!5838666))

(assert (= (and b!5838170 ((_ is Star!15903) (regOne!32318 (reg!16232 r!7292)))) b!5838667))

(assert (= (and b!5838170 ((_ is Union!15903) (regOne!32318 (reg!16232 r!7292)))) b!5838668))

(declare-fun b!5838669 () Bool)

(declare-fun e!3581469 () Bool)

(assert (=> b!5838669 (= e!3581469 tp_is_empty!41059)))

(declare-fun b!5838670 () Bool)

(declare-fun tp!1614288 () Bool)

(declare-fun tp!1614284 () Bool)

(assert (=> b!5838670 (= e!3581469 (and tp!1614288 tp!1614284))))

(declare-fun b!5838671 () Bool)

(declare-fun tp!1614286 () Bool)

(assert (=> b!5838671 (= e!3581469 tp!1614286)))

(assert (=> b!5838170 (= tp!1614123 e!3581469)))

(declare-fun b!5838672 () Bool)

(declare-fun tp!1614285 () Bool)

(declare-fun tp!1614287 () Bool)

(assert (=> b!5838672 (= e!3581469 (and tp!1614285 tp!1614287))))

(assert (= (and b!5838170 ((_ is ElementMatch!15903) (regTwo!32318 (reg!16232 r!7292)))) b!5838669))

(assert (= (and b!5838170 ((_ is Concat!24748) (regTwo!32318 (reg!16232 r!7292)))) b!5838670))

(assert (= (and b!5838170 ((_ is Star!15903) (regTwo!32318 (reg!16232 r!7292)))) b!5838671))

(assert (= (and b!5838170 ((_ is Union!15903) (regTwo!32318 (reg!16232 r!7292)))) b!5838672))

(declare-fun b!5838673 () Bool)

(declare-fun e!3581470 () Bool)

(assert (=> b!5838673 (= e!3581470 tp_is_empty!41059)))

(declare-fun b!5838674 () Bool)

(declare-fun tp!1614293 () Bool)

(declare-fun tp!1614289 () Bool)

(assert (=> b!5838674 (= e!3581470 (and tp!1614293 tp!1614289))))

(declare-fun b!5838675 () Bool)

(declare-fun tp!1614291 () Bool)

(assert (=> b!5838675 (= e!3581470 tp!1614291)))

(assert (=> b!5838171 (= tp!1614125 e!3581470)))

(declare-fun b!5838676 () Bool)

(declare-fun tp!1614290 () Bool)

(declare-fun tp!1614292 () Bool)

(assert (=> b!5838676 (= e!3581470 (and tp!1614290 tp!1614292))))

(assert (= (and b!5838171 ((_ is ElementMatch!15903) (reg!16232 (reg!16232 r!7292)))) b!5838673))

(assert (= (and b!5838171 ((_ is Concat!24748) (reg!16232 (reg!16232 r!7292)))) b!5838674))

(assert (= (and b!5838171 ((_ is Star!15903) (reg!16232 (reg!16232 r!7292)))) b!5838675))

(assert (= (and b!5838171 ((_ is Union!15903) (reg!16232 (reg!16232 r!7292)))) b!5838676))

(declare-fun b!5838677 () Bool)

(declare-fun e!3581471 () Bool)

(assert (=> b!5838677 (= e!3581471 tp_is_empty!41059)))

(declare-fun b!5838678 () Bool)

(declare-fun tp!1614298 () Bool)

(declare-fun tp!1614294 () Bool)

(assert (=> b!5838678 (= e!3581471 (and tp!1614298 tp!1614294))))

(declare-fun b!5838679 () Bool)

(declare-fun tp!1614296 () Bool)

(assert (=> b!5838679 (= e!3581471 tp!1614296)))

(assert (=> b!5838180 (= tp!1614134 e!3581471)))

(declare-fun b!5838680 () Bool)

(declare-fun tp!1614295 () Bool)

(declare-fun tp!1614297 () Bool)

(assert (=> b!5838680 (= e!3581471 (and tp!1614295 tp!1614297))))

(assert (= (and b!5838180 ((_ is ElementMatch!15903) (regOne!32319 (regTwo!32319 r!7292)))) b!5838677))

(assert (= (and b!5838180 ((_ is Concat!24748) (regOne!32319 (regTwo!32319 r!7292)))) b!5838678))

(assert (= (and b!5838180 ((_ is Star!15903) (regOne!32319 (regTwo!32319 r!7292)))) b!5838679))

(assert (= (and b!5838180 ((_ is Union!15903) (regOne!32319 (regTwo!32319 r!7292)))) b!5838680))

(declare-fun b!5838681 () Bool)

(declare-fun e!3581472 () Bool)

(assert (=> b!5838681 (= e!3581472 tp_is_empty!41059)))

(declare-fun b!5838682 () Bool)

(declare-fun tp!1614303 () Bool)

(declare-fun tp!1614299 () Bool)

(assert (=> b!5838682 (= e!3581472 (and tp!1614303 tp!1614299))))

(declare-fun b!5838683 () Bool)

(declare-fun tp!1614301 () Bool)

(assert (=> b!5838683 (= e!3581472 tp!1614301)))

(assert (=> b!5838180 (= tp!1614136 e!3581472)))

(declare-fun b!5838684 () Bool)

(declare-fun tp!1614300 () Bool)

(declare-fun tp!1614302 () Bool)

(assert (=> b!5838684 (= e!3581472 (and tp!1614300 tp!1614302))))

(assert (= (and b!5838180 ((_ is ElementMatch!15903) (regTwo!32319 (regTwo!32319 r!7292)))) b!5838681))

(assert (= (and b!5838180 ((_ is Concat!24748) (regTwo!32319 (regTwo!32319 r!7292)))) b!5838682))

(assert (= (and b!5838180 ((_ is Star!15903) (regTwo!32319 (regTwo!32319 r!7292)))) b!5838683))

(assert (= (and b!5838180 ((_ is Union!15903) (regTwo!32319 (regTwo!32319 r!7292)))) b!5838684))

(declare-fun b!5838686 () Bool)

(declare-fun e!3581474 () Bool)

(declare-fun tp!1614304 () Bool)

(assert (=> b!5838686 (= e!3581474 tp!1614304)))

(declare-fun e!3581473 () Bool)

(declare-fun tp!1614305 () Bool)

(declare-fun b!5838685 () Bool)

(assert (=> b!5838685 (= e!3581473 (and (inv!83004 (h!70333 (t!377364 (t!377364 zl!343)))) e!3581474 tp!1614305))))

(assert (=> b!5838198 (= tp!1614154 e!3581473)))

(assert (= b!5838685 b!5838686))

(assert (= (and b!5838198 ((_ is Cons!63885) (t!377364 (t!377364 zl!343)))) b!5838685))

(declare-fun m!6763984 () Bool)

(assert (=> b!5838685 m!6763984))

(declare-fun b!5838687 () Bool)

(declare-fun e!3581475 () Bool)

(declare-fun tp!1614306 () Bool)

(declare-fun tp!1614307 () Bool)

(assert (=> b!5838687 (= e!3581475 (and tp!1614306 tp!1614307))))

(assert (=> b!5838199 (= tp!1614153 e!3581475)))

(assert (= (and b!5838199 ((_ is Cons!63884) (exprs!5787 (h!70333 (t!377364 zl!343))))) b!5838687))

(declare-fun b!5838688 () Bool)

(declare-fun e!3581476 () Bool)

(assert (=> b!5838688 (= e!3581476 tp_is_empty!41059)))

(declare-fun b!5838689 () Bool)

(declare-fun tp!1614312 () Bool)

(declare-fun tp!1614308 () Bool)

(assert (=> b!5838689 (= e!3581476 (and tp!1614312 tp!1614308))))

(declare-fun b!5838690 () Bool)

(declare-fun tp!1614310 () Bool)

(assert (=> b!5838690 (= e!3581476 tp!1614310)))

(assert (=> b!5838185 (= tp!1614142 e!3581476)))

(declare-fun b!5838691 () Bool)

(declare-fun tp!1614309 () Bool)

(declare-fun tp!1614311 () Bool)

(assert (=> b!5838691 (= e!3581476 (and tp!1614309 tp!1614311))))

(assert (= (and b!5838185 ((_ is ElementMatch!15903) (h!70332 (exprs!5787 setElem!39538)))) b!5838688))

(assert (= (and b!5838185 ((_ is Concat!24748) (h!70332 (exprs!5787 setElem!39538)))) b!5838689))

(assert (= (and b!5838185 ((_ is Star!15903) (h!70332 (exprs!5787 setElem!39538)))) b!5838690))

(assert (= (and b!5838185 ((_ is Union!15903) (h!70332 (exprs!5787 setElem!39538)))) b!5838691))

(declare-fun b!5838692 () Bool)

(declare-fun e!3581477 () Bool)

(declare-fun tp!1614313 () Bool)

(declare-fun tp!1614314 () Bool)

(assert (=> b!5838692 (= e!3581477 (and tp!1614313 tp!1614314))))

(assert (=> b!5838185 (= tp!1614143 e!3581477)))

(assert (= (and b!5838185 ((_ is Cons!63884) (t!377363 (exprs!5787 setElem!39538)))) b!5838692))

(declare-fun b_lambda!219881 () Bool)

(assert (= b_lambda!219869 (or d!1834573 b_lambda!219881)))

(declare-fun bs!1375668 () Bool)

(declare-fun d!1834779 () Bool)

(assert (= bs!1375668 (and d!1834779 d!1834573)))

(assert (=> bs!1375668 (= (dynLambda!24975 lambda!319376 (h!70332 (unfocusZipperList!1324 zl!343))) (validRegex!7639 (h!70332 (unfocusZipperList!1324 zl!343))))))

(declare-fun m!6763990 () Bool)

(assert (=> bs!1375668 m!6763990))

(assert (=> b!5838238 d!1834779))

(declare-fun b_lambda!219883 () Bool)

(assert (= b_lambda!219871 (or d!1834535 b_lambda!219883)))

(declare-fun bs!1375669 () Bool)

(declare-fun d!1834781 () Bool)

(assert (= bs!1375669 (and d!1834781 d!1834535)))

(assert (=> bs!1375669 (= (dynLambda!24975 lambda!319368 (h!70332 (exprs!5787 (h!70333 zl!343)))) (validRegex!7639 (h!70332 (exprs!5787 (h!70333 zl!343)))))))

(declare-fun m!6763992 () Bool)

(assert (=> bs!1375669 m!6763992))

(assert (=> b!5838299 d!1834781))

(declare-fun b_lambda!219885 () Bool)

(assert (= b_lambda!219873 (or d!1834621 b_lambda!219885)))

(declare-fun bs!1375670 () Bool)

(declare-fun d!1834783 () Bool)

(assert (= bs!1375670 (and d!1834783 d!1834621)))

(assert (=> bs!1375670 (= (dynLambda!24975 lambda!319400 (h!70332 (exprs!5787 setElem!39538))) (validRegex!7639 (h!70332 (exprs!5787 setElem!39538))))))

(declare-fun m!6763994 () Bool)

(assert (=> bs!1375670 m!6763994))

(assert (=> b!5838325 d!1834783))

(declare-fun b_lambda!219887 () Bool)

(assert (= b_lambda!219875 (or d!1834581 b_lambda!219887)))

(declare-fun bs!1375671 () Bool)

(declare-fun d!1834785 () Bool)

(assert (= bs!1375671 (and d!1834785 d!1834581)))

(assert (=> bs!1375671 (= (dynLambda!24975 lambda!319380 (h!70332 lt!2303493)) (validRegex!7639 (h!70332 lt!2303493)))))

(declare-fun m!6763996 () Bool)

(assert (=> bs!1375671 m!6763996))

(assert (=> b!5838336 d!1834785))

(declare-fun b_lambda!219889 () Bool)

(assert (= b_lambda!219879 (or d!1834591 b_lambda!219889)))

(declare-fun bs!1375672 () Bool)

(declare-fun d!1834787 () Bool)

(assert (= bs!1375672 (and d!1834787 d!1834591)))

(assert (=> bs!1375672 (= (dynLambda!24975 lambda!319386 (h!70332 (exprs!5787 (h!70333 zl!343)))) (validRegex!7639 (h!70332 (exprs!5787 (h!70333 zl!343)))))))

(assert (=> bs!1375672 m!6763992))

(assert (=> b!5838500 d!1834787))

(check-sat (not b!5838646) (not b!5838576) (not bm!455930) (not d!1834683) (not b!5838252) (not d!1834767) (not b!5838618) (not b!5838608) (not b!5838624) (not d!1834701) (not b!5838676) (not b!5838613) (not b!5838684) (not bm!455936) (not b!5838544) (not d!1834629) (not b!5838670) (not b!5838582) (not b!5838658) (not b!5838292) (not bm!455967) (not b!5838692) (not bm!455926) (not b!5838591) (not d!1834659) (not b!5838666) (not b!5838300) (not b!5838632) (not d!1834709) (not b!5838495) (not bs!1375670) (not b!5838660) (not b!5838580) (not b!5838655) (not b!5838565) (not d!1834759) (not b!5838301) (not b_lambda!219887) (not d!1834737) (not b!5838347) (not b!5838466) (not b!5838690) (not bm!455966) (not b!5838277) (not b!5838564) (not b!5838251) (not b!5838358) (not b_lambda!219889) (not b!5838610) (not b!5838493) (not bs!1375672) (not b!5838498) (not b!5838586) tp_is_empty!41059 (not b!5838566) (not b!5838588) (not b!5838289) (not b!5838634) (not b!5838326) (not bm!455942) (not d!1834649) (not bm!455927) (not b!5838621) (not b_lambda!219885) (not bm!455938) (not b!5838548) (not b!5838668) (not b!5838442) (not b!5838674) (not b!5838617) (not b!5838468) (not b!5838429) (not bm!455957) (not d!1834679) (not b!5838680) (not b!5838607) (not b!5838574) (not b!5838376) (not b!5838463) (not b!5838662) (not b!5838241) (not d!1834747) (not b!5838569) (not bm!455911) (not b!5838647) (not bm!455915) (not b!5838633) (not b!5838465) (not b!5838678) (not b!5838348) (not b_lambda!219883) (not b!5838546) (not b!5838467) (not b!5838578) (not b!5838460) (not b!5838428) (not b!5838492) (not b!5838355) (not b!5838672) (not b!5838620) (not b!5838359) (not bm!455914) (not b!5838550) (not bm!455941) (not b!5838590) (not b!5838626) (not bm!455946) (not bm!455908) (not b!5838547) (not b!5838227) (not b!5838609) (not b!5838663) (not b!5838329) (not b!5838671) (not b!5838687) (not bm!455977) (not b!5838675) (not b!5838573) (not d!1834695) (not b!5838416) (not d!1834631) (not setNonEmpty!39545) (not b!5838511) (not bs!1375668) (not d!1834729) (not b!5838685) (not bm!455965) (not b!5838571) (not d!1834639) (not bm!455948) (not b!5838584) (not b!5838494) (not d!1834691) (not bm!455947) (not b!5838538) (not b!5838240) (not bs!1375671) (not b!5838349) (not d!1834647) (not b!5838309) (not b!5838318) (not b!5838432) (not bm!455928) (not b!5838689) (not bs!1375669) (not b!5838567) (not d!1834763) (not b!5838616) (not b!5838218) (not d!1834711) (not b!5838579) (not bm!455909) (not b!5838686) (not b!5838303) (not b!5838648) (not d!1834661) (not b!5838497) (not b!5838570) (not b!5838667) (not b!5838506) (not b!5838630) (not b!5838679) (not b!5838659) (not b!5838387) (not b!5838628) (not b!5838427) (not b!5838214) (not b!5838496) (not b!5838312) (not b!5838415) (not b!5838248) (not b!5838364) (not b!5838594) (not b_lambda!219881) (not b!5838313) (not d!1834733) (not bm!455959) (not b!5838683) (not bm!455939) (not d!1834697) (not bm!455906) (not b!5838596) (not b!5838664) (not d!1834637) (not b!5838612) (not bm!455931) (not b!5838592) (not d!1834685) (not b!5838441) (not b!5838340) (not b!5838501) (not d!1834687) (not b!5838302) (not b!5838337) (not bm!455935) (not bm!455945) (not b!5838622) (not b!5838207) (not bm!455968) (not b!5838583) (not b!5838242) (not b!5838682) (not bm!455949) (not b!5838533) (not b!5838382) (not b!5838371) (not b!5838239) (not bm!455950) (not b!5838595) (not b!5838629) (not b!5838691) (not b!5838587) (not b!5838575) (not b!5838552) (not b!5838614) (not b!5838654) (not b!5838461) (not b!5838625) (not bm!455912) (not b!5838656) (not bm!455934) (not b!5838551) (not bm!455978))
(check-sat)

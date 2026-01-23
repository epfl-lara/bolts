; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!572284 () Bool)

(assert start!572284)

(declare-fun b!5467308 () Bool)

(assert (=> b!5467308 true))

(assert (=> b!5467308 true))

(declare-fun lambda!290645 () Int)

(declare-fun lambda!290644 () Int)

(assert (=> b!5467308 (not (= lambda!290645 lambda!290644))))

(assert (=> b!5467308 true))

(assert (=> b!5467308 true))

(declare-fun lambda!290646 () Int)

(assert (=> b!5467308 (not (= lambda!290646 lambda!290644))))

(assert (=> b!5467308 (not (= lambda!290646 lambda!290645))))

(assert (=> b!5467308 true))

(assert (=> b!5467308 true))

(declare-fun b!5467316 () Bool)

(assert (=> b!5467316 true))

(declare-fun b!5467307 () Bool)

(declare-fun e!3384789 () Bool)

(declare-fun e!3384792 () Bool)

(assert (=> b!5467307 (= e!3384789 e!3384792)))

(declare-fun res!2329615 () Bool)

(assert (=> b!5467307 (=> res!2329615 e!3384792)))

(declare-datatypes ((C!30922 0))(
  ( (C!30923 (val!25163 Int)) )
))
(declare-datatypes ((Regex!15326 0))(
  ( (ElementMatch!15326 (c!955111 C!30922)) (Concat!24171 (regOne!31164 Regex!15326) (regTwo!31164 Regex!15326)) (EmptyExpr!15326) (Star!15326 (reg!15655 Regex!15326)) (EmptyLang!15326) (Union!15326 (regOne!31165 Regex!15326) (regTwo!31165 Regex!15326)) )
))
(declare-datatypes ((List!62277 0))(
  ( (Nil!62153) (Cons!62153 (h!68601 Regex!15326) (t!375506 List!62277)) )
))
(declare-datatypes ((Context!9420 0))(
  ( (Context!9421 (exprs!5210 List!62277)) )
))
(declare-fun lt!2233942 () Context!9420)

(declare-fun lt!2233933 () Regex!15326)

(declare-datatypes ((List!62278 0))(
  ( (Nil!62154) (Cons!62154 (h!68602 Context!9420) (t!375507 List!62278)) )
))
(declare-fun unfocusZipper!1068 (List!62278) Regex!15326)

(assert (=> b!5467307 (= res!2329615 (not (= (unfocusZipper!1068 (Cons!62154 lt!2233942 Nil!62154)) lt!2233933)))))

(declare-fun r!7292 () Regex!15326)

(assert (=> b!5467307 (= lt!2233933 (Concat!24171 (reg!15655 r!7292) r!7292))))

(declare-fun e!3384791 () Bool)

(declare-fun e!3384795 () Bool)

(assert (=> b!5467308 (= e!3384791 e!3384795)))

(declare-fun res!2329600 () Bool)

(assert (=> b!5467308 (=> res!2329600 e!3384795)))

(declare-fun lt!2233944 () Bool)

(declare-fun e!3384801 () Bool)

(assert (=> b!5467308 (= res!2329600 (not (= lt!2233944 e!3384801)))))

(declare-fun res!2329605 () Bool)

(assert (=> b!5467308 (=> res!2329605 e!3384801)))

(declare-datatypes ((List!62279 0))(
  ( (Nil!62155) (Cons!62155 (h!68603 C!30922) (t!375508 List!62279)) )
))
(declare-fun s!2326 () List!62279)

(declare-fun isEmpty!34112 (List!62279) Bool)

(assert (=> b!5467308 (= res!2329605 (isEmpty!34112 s!2326))))

(declare-fun Exists!2505 (Int) Bool)

(assert (=> b!5467308 (= (Exists!2505 lambda!290644) (Exists!2505 lambda!290646))))

(declare-datatypes ((Unit!155102 0))(
  ( (Unit!155103) )
))
(declare-fun lt!2233930 () Unit!155102)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1155 (Regex!15326 Regex!15326 List!62279) Unit!155102)

(assert (=> b!5467308 (= lt!2233930 (lemmaExistCutMatchRandMatchRSpecEquivalent!1155 (reg!15655 r!7292) r!7292 s!2326))))

(assert (=> b!5467308 (= (Exists!2505 lambda!290644) (Exists!2505 lambda!290645))))

(declare-fun lt!2233940 () Unit!155102)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!479 (Regex!15326 List!62279) Unit!155102)

(assert (=> b!5467308 (= lt!2233940 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!479 (reg!15655 r!7292) s!2326))))

(declare-fun lt!2233936 () Bool)

(assert (=> b!5467308 (= lt!2233936 (Exists!2505 lambda!290644))))

(declare-datatypes ((tuple2!65046 0))(
  ( (tuple2!65047 (_1!35826 List!62279) (_2!35826 List!62279)) )
))
(declare-datatypes ((Option!15435 0))(
  ( (None!15434) (Some!15434 (v!51463 tuple2!65046)) )
))
(declare-fun isDefined!12138 (Option!15435) Bool)

(declare-fun findConcatSeparation!1849 (Regex!15326 Regex!15326 List!62279 List!62279 List!62279) Option!15435)

(assert (=> b!5467308 (= lt!2233936 (isDefined!12138 (findConcatSeparation!1849 (reg!15655 r!7292) r!7292 Nil!62155 s!2326 s!2326)))))

(declare-fun lt!2233938 () Unit!155102)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1613 (Regex!15326 Regex!15326 List!62279) Unit!155102)

(assert (=> b!5467308 (= lt!2233938 (lemmaFindConcatSeparationEquivalentToExists!1613 (reg!15655 r!7292) r!7292 s!2326))))

(declare-fun b!5467309 () Bool)

(declare-fun e!3384800 () Bool)

(declare-fun tp!1503749 () Bool)

(assert (=> b!5467309 (= e!3384800 tp!1503749)))

(declare-fun b!5467310 () Bool)

(declare-fun e!3384796 () Bool)

(assert (=> b!5467310 (= e!3384792 e!3384796)))

(declare-fun res!2329599 () Bool)

(assert (=> b!5467310 (=> res!2329599 e!3384796)))

(declare-fun lt!2233941 () (Set Context!9420))

(declare-fun lt!2233948 () (Set Context!9420))

(declare-fun derivationStepZipper!1521 ((Set Context!9420) C!30922) (Set Context!9420))

(assert (=> b!5467310 (= res!2329599 (not (= lt!2233941 (derivationStepZipper!1521 lt!2233948 (h!68603 s!2326)))))))

(declare-fun lambda!290647 () Int)

(declare-fun lt!2233932 () Context!9420)

(declare-fun flatMap!1029 ((Set Context!9420) Int) (Set Context!9420))

(declare-fun derivationStepZipperUp!678 (Context!9420 C!30922) (Set Context!9420))

(assert (=> b!5467310 (= (flatMap!1029 lt!2233948 lambda!290647) (derivationStepZipperUp!678 lt!2233932 (h!68603 s!2326)))))

(declare-fun lt!2233928 () Unit!155102)

(declare-fun lemmaFlatMapOnSingletonSet!561 ((Set Context!9420) Context!9420 Int) Unit!155102)

(assert (=> b!5467310 (= lt!2233928 (lemmaFlatMapOnSingletonSet!561 lt!2233948 lt!2233932 lambda!290647))))

(declare-fun lt!2233945 () (Set Context!9420))

(declare-fun lt!2233947 () Context!9420)

(assert (=> b!5467310 (= (flatMap!1029 lt!2233945 lambda!290647) (derivationStepZipperUp!678 lt!2233947 (h!68603 s!2326)))))

(declare-fun lt!2233939 () Unit!155102)

(assert (=> b!5467310 (= lt!2233939 (lemmaFlatMapOnSingletonSet!561 lt!2233945 lt!2233947 lambda!290647))))

(declare-fun lt!2233935 () (Set Context!9420))

(assert (=> b!5467310 (= lt!2233935 (derivationStepZipperUp!678 lt!2233932 (h!68603 s!2326)))))

(declare-fun lt!2233927 () (Set Context!9420))

(assert (=> b!5467310 (= lt!2233927 (derivationStepZipperUp!678 lt!2233947 (h!68603 s!2326)))))

(assert (=> b!5467310 (= lt!2233948 (set.insert lt!2233932 (as set.empty (Set Context!9420))))))

(assert (=> b!5467310 (= lt!2233945 (set.insert lt!2233947 (as set.empty (Set Context!9420))))))

(assert (=> b!5467310 (= lt!2233947 (Context!9421 (Cons!62153 (reg!15655 r!7292) Nil!62153)))))

(declare-fun b!5467311 () Bool)

(declare-fun res!2329607 () Bool)

(assert (=> b!5467311 (=> res!2329607 e!3384791)))

(declare-fun zl!343 () List!62278)

(declare-fun generalisedUnion!1255 (List!62277) Regex!15326)

(declare-fun unfocusZipperList!768 (List!62278) List!62277)

(assert (=> b!5467311 (= res!2329607 (not (= r!7292 (generalisedUnion!1255 (unfocusZipperList!768 zl!343)))))))

(declare-fun b!5467312 () Bool)

(declare-fun res!2329601 () Bool)

(assert (=> b!5467312 (=> res!2329601 e!3384791)))

(declare-fun generalisedConcat!995 (List!62277) Regex!15326)

(assert (=> b!5467312 (= res!2329601 (not (= r!7292 (generalisedConcat!995 (exprs!5210 (h!68602 zl!343))))))))

(declare-fun b!5467313 () Bool)

(declare-fun res!2329595 () Bool)

(assert (=> b!5467313 (=> res!2329595 e!3384791)))

(assert (=> b!5467313 (= res!2329595 (not (is-Cons!62153 (exprs!5210 (h!68602 zl!343)))))))

(declare-fun b!5467315 () Bool)

(declare-fun res!2329602 () Bool)

(assert (=> b!5467315 (=> res!2329602 e!3384795)))

(assert (=> b!5467315 (= res!2329602 (is-Nil!62155 s!2326))))

(declare-fun e!3384799 () Bool)

(declare-fun e!3384797 () Bool)

(assert (=> b!5467316 (= e!3384799 e!3384797)))

(declare-fun res!2329608 () Bool)

(assert (=> b!5467316 (=> res!2329608 e!3384797)))

(declare-fun lt!2233931 () (Set Context!9420))

(assert (=> b!5467316 (= res!2329608 (not (= lt!2233941 lt!2233931)))))

(declare-fun z!1189 () (Set Context!9420))

(assert (=> b!5467316 (= (flatMap!1029 z!1189 lambda!290647) (derivationStepZipperUp!678 (h!68602 zl!343) (h!68603 s!2326)))))

(declare-fun lt!2233926 () Unit!155102)

(assert (=> b!5467316 (= lt!2233926 (lemmaFlatMapOnSingletonSet!561 z!1189 (h!68602 zl!343) lambda!290647))))

(declare-fun b!5467317 () Bool)

(declare-fun res!2329598 () Bool)

(assert (=> b!5467317 (=> res!2329598 e!3384796)))

(assert (=> b!5467317 (= res!2329598 (not (= (unfocusZipper!1068 (Cons!62154 lt!2233947 Nil!62154)) (reg!15655 r!7292))))))

(declare-fun b!5467318 () Bool)

(declare-fun res!2329614 () Bool)

(declare-fun e!3384790 () Bool)

(assert (=> b!5467318 (=> (not res!2329614) (not e!3384790))))

(declare-fun toList!9110 ((Set Context!9420)) List!62278)

(assert (=> b!5467318 (= res!2329614 (= (toList!9110 z!1189) zl!343))))

(declare-fun b!5467319 () Bool)

(declare-fun res!2329604 () Bool)

(assert (=> b!5467319 (=> res!2329604 e!3384796)))

(assert (=> b!5467319 (= res!2329604 (not (= (unfocusZipper!1068 (Cons!62154 lt!2233932 Nil!62154)) r!7292)))))

(declare-fun b!5467320 () Bool)

(declare-fun res!2329610 () Bool)

(assert (=> b!5467320 (=> res!2329610 e!3384791)))

(assert (=> b!5467320 (= res!2329610 (or (is-EmptyExpr!15326 r!7292) (is-EmptyLang!15326 r!7292) (is-ElementMatch!15326 r!7292) (is-Union!15326 r!7292) (is-Concat!24171 r!7292)))))

(declare-fun b!5467321 () Bool)

(declare-fun e!3384793 () Bool)

(assert (=> b!5467321 (= e!3384790 e!3384793)))

(declare-fun res!2329611 () Bool)

(assert (=> b!5467321 (=> (not res!2329611) (not e!3384793))))

(declare-fun lt!2233929 () Regex!15326)

(assert (=> b!5467321 (= res!2329611 (= r!7292 lt!2233929))))

(assert (=> b!5467321 (= lt!2233929 (unfocusZipper!1068 zl!343))))

(declare-fun b!5467322 () Bool)

(declare-fun e!3384798 () Bool)

(declare-fun tp!1503743 () Bool)

(declare-fun tp!1503744 () Bool)

(assert (=> b!5467322 (= e!3384798 (and tp!1503743 tp!1503744))))

(declare-fun b!5467323 () Bool)

(declare-fun res!2329596 () Bool)

(assert (=> b!5467323 (=> res!2329596 e!3384789)))

(assert (=> b!5467323 (= res!2329596 (or (not (= lt!2233929 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5467324 () Bool)

(assert (=> b!5467324 (= e!3384795 e!3384799)))

(declare-fun res!2329603 () Bool)

(assert (=> b!5467324 (=> res!2329603 e!3384799)))

(declare-fun lt!2233949 () (Set Context!9420))

(assert (=> b!5467324 (= res!2329603 (not (= lt!2233949 lt!2233931)))))

(declare-fun derivationStepZipperDown!752 (Regex!15326 Context!9420 C!30922) (Set Context!9420))

(assert (=> b!5467324 (= lt!2233931 (derivationStepZipperDown!752 r!7292 (Context!9421 Nil!62153) (h!68603 s!2326)))))

(assert (=> b!5467324 (= lt!2233949 (derivationStepZipperUp!678 (Context!9421 (Cons!62153 r!7292 Nil!62153)) (h!68603 s!2326)))))

(assert (=> b!5467324 (= lt!2233941 (derivationStepZipper!1521 z!1189 (h!68603 s!2326)))))

(declare-fun b!5467325 () Bool)

(declare-fun res!2329597 () Bool)

(assert (=> b!5467325 (=> res!2329597 e!3384791)))

(declare-fun isEmpty!34113 (List!62278) Bool)

(assert (=> b!5467325 (= res!2329597 (not (isEmpty!34113 (t!375507 zl!343))))))

(declare-fun b!5467326 () Bool)

(assert (=> b!5467326 (= e!3384793 (not e!3384791))))

(declare-fun res!2329606 () Bool)

(assert (=> b!5467326 (=> res!2329606 e!3384791)))

(assert (=> b!5467326 (= res!2329606 (not (is-Cons!62154 zl!343)))))

(declare-fun matchRSpec!2429 (Regex!15326 List!62279) Bool)

(assert (=> b!5467326 (= lt!2233944 (matchRSpec!2429 r!7292 s!2326))))

(declare-fun matchR!7511 (Regex!15326 List!62279) Bool)

(assert (=> b!5467326 (= lt!2233944 (matchR!7511 r!7292 s!2326))))

(declare-fun lt!2233934 () Unit!155102)

(declare-fun mainMatchTheorem!2429 (Regex!15326 List!62279) Unit!155102)

(assert (=> b!5467326 (= lt!2233934 (mainMatchTheorem!2429 r!7292 s!2326))))

(declare-fun setIsEmpty!35860 () Bool)

(declare-fun setRes!35860 () Bool)

(assert (=> setIsEmpty!35860 setRes!35860))

(declare-fun b!5467327 () Bool)

(declare-fun tp_is_empty!39905 () Bool)

(assert (=> b!5467327 (= e!3384798 tp_is_empty!39905)))

(declare-fun b!5467328 () Bool)

(declare-fun res!2329612 () Bool)

(assert (=> b!5467328 (=> res!2329612 e!3384789)))

(declare-fun lt!2233943 () (Set Context!9420))

(declare-fun matchZipper!1544 ((Set Context!9420) List!62279) Bool)

(assert (=> b!5467328 (= res!2329612 (not (= (matchZipper!1544 lt!2233943 s!2326) (matchZipper!1544 (derivationStepZipper!1521 lt!2233943 (h!68603 s!2326)) (t!375508 s!2326)))))))

(declare-fun b!5467329 () Bool)

(declare-fun e!3384794 () Bool)

(declare-fun tp!1503742 () Bool)

(assert (=> b!5467329 (= e!3384794 tp!1503742)))

(declare-fun b!5467330 () Bool)

(declare-fun tp!1503747 () Bool)

(assert (=> b!5467330 (= e!3384798 tp!1503747)))

(declare-fun tp!1503745 () Bool)

(declare-fun setNonEmpty!35860 () Bool)

(declare-fun setElem!35860 () Context!9420)

(declare-fun inv!81563 (Context!9420) Bool)

(assert (=> setNonEmpty!35860 (= setRes!35860 (and tp!1503745 (inv!81563 setElem!35860) e!3384794))))

(declare-fun setRest!35860 () (Set Context!9420))

(assert (=> setNonEmpty!35860 (= z!1189 (set.union (set.insert setElem!35860 (as set.empty (Set Context!9420))) setRest!35860))))

(declare-fun b!5467331 () Bool)

(assert (=> b!5467331 (= e!3384797 e!3384789)))

(declare-fun res!2329609 () Bool)

(assert (=> b!5467331 (=> res!2329609 e!3384789)))

(assert (=> b!5467331 (= res!2329609 (not (= lt!2233941 (derivationStepZipperDown!752 (reg!15655 r!7292) lt!2233932 (h!68603 s!2326)))))))

(declare-fun lt!2233950 () List!62277)

(assert (=> b!5467331 (= lt!2233932 (Context!9421 lt!2233950))))

(assert (=> b!5467331 (= (flatMap!1029 lt!2233943 lambda!290647) (derivationStepZipperUp!678 lt!2233942 (h!68603 s!2326)))))

(declare-fun lt!2233951 () Unit!155102)

(assert (=> b!5467331 (= lt!2233951 (lemmaFlatMapOnSingletonSet!561 lt!2233943 lt!2233942 lambda!290647))))

(declare-fun lt!2233937 () (Set Context!9420))

(assert (=> b!5467331 (= lt!2233937 (derivationStepZipperUp!678 lt!2233942 (h!68603 s!2326)))))

(assert (=> b!5467331 (= lt!2233943 (set.insert lt!2233942 (as set.empty (Set Context!9420))))))

(assert (=> b!5467331 (= lt!2233942 (Context!9421 (Cons!62153 (reg!15655 r!7292) lt!2233950)))))

(assert (=> b!5467331 (= lt!2233950 (Cons!62153 r!7292 Nil!62153))))

(declare-fun b!5467314 () Bool)

(declare-fun e!3384788 () Bool)

(declare-fun tp!1503746 () Bool)

(assert (=> b!5467314 (= e!3384788 (and tp_is_empty!39905 tp!1503746))))

(declare-fun res!2329613 () Bool)

(assert (=> start!572284 (=> (not res!2329613) (not e!3384790))))

(declare-fun validRegex!7062 (Regex!15326) Bool)

(assert (=> start!572284 (= res!2329613 (validRegex!7062 r!7292))))

(assert (=> start!572284 e!3384790))

(assert (=> start!572284 e!3384798))

(declare-fun condSetEmpty!35860 () Bool)

(assert (=> start!572284 (= condSetEmpty!35860 (= z!1189 (as set.empty (Set Context!9420))))))

(assert (=> start!572284 setRes!35860))

(declare-fun e!3384787 () Bool)

(assert (=> start!572284 e!3384787))

(assert (=> start!572284 e!3384788))

(declare-fun b!5467332 () Bool)

(assert (=> b!5467332 (= e!3384796 (validRegex!7062 lt!2233933))))

(assert (=> b!5467332 (= (matchR!7511 lt!2233933 s!2326) (matchRSpec!2429 lt!2233933 s!2326))))

(declare-fun lt!2233946 () Unit!155102)

(assert (=> b!5467332 (= lt!2233946 (mainMatchTheorem!2429 lt!2233933 s!2326))))

(declare-fun b!5467333 () Bool)

(declare-fun tp!1503750 () Bool)

(declare-fun tp!1503748 () Bool)

(assert (=> b!5467333 (= e!3384798 (and tp!1503750 tp!1503748))))

(declare-fun tp!1503751 () Bool)

(declare-fun b!5467334 () Bool)

(assert (=> b!5467334 (= e!3384787 (and (inv!81563 (h!68602 zl!343)) e!3384800 tp!1503751))))

(declare-fun b!5467335 () Bool)

(assert (=> b!5467335 (= e!3384801 lt!2233936)))

(assert (= (and start!572284 res!2329613) b!5467318))

(assert (= (and b!5467318 res!2329614) b!5467321))

(assert (= (and b!5467321 res!2329611) b!5467326))

(assert (= (and b!5467326 (not res!2329606)) b!5467325))

(assert (= (and b!5467325 (not res!2329597)) b!5467312))

(assert (= (and b!5467312 (not res!2329601)) b!5467313))

(assert (= (and b!5467313 (not res!2329595)) b!5467311))

(assert (= (and b!5467311 (not res!2329607)) b!5467320))

(assert (= (and b!5467320 (not res!2329610)) b!5467308))

(assert (= (and b!5467308 (not res!2329605)) b!5467335))

(assert (= (and b!5467308 (not res!2329600)) b!5467315))

(assert (= (and b!5467315 (not res!2329602)) b!5467324))

(assert (= (and b!5467324 (not res!2329603)) b!5467316))

(assert (= (and b!5467316 (not res!2329608)) b!5467331))

(assert (= (and b!5467331 (not res!2329609)) b!5467328))

(assert (= (and b!5467328 (not res!2329612)) b!5467323))

(assert (= (and b!5467323 (not res!2329596)) b!5467307))

(assert (= (and b!5467307 (not res!2329615)) b!5467310))

(assert (= (and b!5467310 (not res!2329599)) b!5467317))

(assert (= (and b!5467317 (not res!2329598)) b!5467319))

(assert (= (and b!5467319 (not res!2329604)) b!5467332))

(assert (= (and start!572284 (is-ElementMatch!15326 r!7292)) b!5467327))

(assert (= (and start!572284 (is-Concat!24171 r!7292)) b!5467322))

(assert (= (and start!572284 (is-Star!15326 r!7292)) b!5467330))

(assert (= (and start!572284 (is-Union!15326 r!7292)) b!5467333))

(assert (= (and start!572284 condSetEmpty!35860) setIsEmpty!35860))

(assert (= (and start!572284 (not condSetEmpty!35860)) setNonEmpty!35860))

(assert (= setNonEmpty!35860 b!5467329))

(assert (= b!5467334 b!5467309))

(assert (= (and start!572284 (is-Cons!62154 zl!343)) b!5467334))

(assert (= (and start!572284 (is-Cons!62155 s!2326)) b!5467314))

(declare-fun m!6486448 () Bool)

(assert (=> b!5467325 m!6486448))

(declare-fun m!6486450 () Bool)

(assert (=> b!5467334 m!6486450))

(declare-fun m!6486452 () Bool)

(assert (=> b!5467318 m!6486452))

(declare-fun m!6486454 () Bool)

(assert (=> b!5467307 m!6486454))

(declare-fun m!6486456 () Bool)

(assert (=> b!5467324 m!6486456))

(declare-fun m!6486458 () Bool)

(assert (=> b!5467324 m!6486458))

(declare-fun m!6486460 () Bool)

(assert (=> b!5467324 m!6486460))

(declare-fun m!6486462 () Bool)

(assert (=> b!5467312 m!6486462))

(declare-fun m!6486464 () Bool)

(assert (=> b!5467317 m!6486464))

(declare-fun m!6486466 () Bool)

(assert (=> b!5467321 m!6486466))

(declare-fun m!6486468 () Bool)

(assert (=> start!572284 m!6486468))

(declare-fun m!6486470 () Bool)

(assert (=> b!5467326 m!6486470))

(declare-fun m!6486472 () Bool)

(assert (=> b!5467326 m!6486472))

(declare-fun m!6486474 () Bool)

(assert (=> b!5467326 m!6486474))

(declare-fun m!6486476 () Bool)

(assert (=> b!5467332 m!6486476))

(declare-fun m!6486478 () Bool)

(assert (=> b!5467332 m!6486478))

(declare-fun m!6486480 () Bool)

(assert (=> b!5467332 m!6486480))

(declare-fun m!6486482 () Bool)

(assert (=> b!5467332 m!6486482))

(declare-fun m!6486484 () Bool)

(assert (=> setNonEmpty!35860 m!6486484))

(declare-fun m!6486486 () Bool)

(assert (=> b!5467316 m!6486486))

(declare-fun m!6486488 () Bool)

(assert (=> b!5467316 m!6486488))

(declare-fun m!6486490 () Bool)

(assert (=> b!5467316 m!6486490))

(declare-fun m!6486492 () Bool)

(assert (=> b!5467311 m!6486492))

(assert (=> b!5467311 m!6486492))

(declare-fun m!6486494 () Bool)

(assert (=> b!5467311 m!6486494))

(declare-fun m!6486496 () Bool)

(assert (=> b!5467328 m!6486496))

(declare-fun m!6486498 () Bool)

(assert (=> b!5467328 m!6486498))

(assert (=> b!5467328 m!6486498))

(declare-fun m!6486500 () Bool)

(assert (=> b!5467328 m!6486500))

(declare-fun m!6486502 () Bool)

(assert (=> b!5467308 m!6486502))

(declare-fun m!6486504 () Bool)

(assert (=> b!5467308 m!6486504))

(assert (=> b!5467308 m!6486502))

(declare-fun m!6486506 () Bool)

(assert (=> b!5467308 m!6486506))

(declare-fun m!6486508 () Bool)

(assert (=> b!5467308 m!6486508))

(declare-fun m!6486510 () Bool)

(assert (=> b!5467308 m!6486510))

(assert (=> b!5467308 m!6486502))

(declare-fun m!6486512 () Bool)

(assert (=> b!5467308 m!6486512))

(declare-fun m!6486514 () Bool)

(assert (=> b!5467308 m!6486514))

(declare-fun m!6486516 () Bool)

(assert (=> b!5467308 m!6486516))

(assert (=> b!5467308 m!6486512))

(declare-fun m!6486518 () Bool)

(assert (=> b!5467308 m!6486518))

(declare-fun m!6486520 () Bool)

(assert (=> b!5467331 m!6486520))

(declare-fun m!6486522 () Bool)

(assert (=> b!5467331 m!6486522))

(declare-fun m!6486524 () Bool)

(assert (=> b!5467331 m!6486524))

(declare-fun m!6486526 () Bool)

(assert (=> b!5467331 m!6486526))

(declare-fun m!6486528 () Bool)

(assert (=> b!5467331 m!6486528))

(declare-fun m!6486530 () Bool)

(assert (=> b!5467310 m!6486530))

(declare-fun m!6486532 () Bool)

(assert (=> b!5467310 m!6486532))

(declare-fun m!6486534 () Bool)

(assert (=> b!5467310 m!6486534))

(declare-fun m!6486536 () Bool)

(assert (=> b!5467310 m!6486536))

(declare-fun m!6486538 () Bool)

(assert (=> b!5467310 m!6486538))

(declare-fun m!6486540 () Bool)

(assert (=> b!5467310 m!6486540))

(declare-fun m!6486542 () Bool)

(assert (=> b!5467310 m!6486542))

(declare-fun m!6486544 () Bool)

(assert (=> b!5467310 m!6486544))

(declare-fun m!6486546 () Bool)

(assert (=> b!5467310 m!6486546))

(declare-fun m!6486548 () Bool)

(assert (=> b!5467319 m!6486548))

(push 1)

(assert (not b!5467311))

(assert (not b!5467333))

(assert (not start!572284))

(assert (not b!5467328))

(assert (not b!5467309))

(assert (not b!5467331))

(assert (not b!5467316))

(assert (not b!5467317))

(assert (not b!5467318))

(assert (not b!5467330))

(assert (not b!5467319))

(assert (not b!5467321))

(assert (not b!5467308))

(assert (not b!5467326))

(assert (not b!5467324))

(assert (not b!5467314))

(assert (not b!5467322))

(assert (not b!5467312))

(assert (not b!5467310))

(assert (not b!5467332))

(assert (not b!5467307))

(assert (not b!5467334))

(assert (not b!5467325))

(assert (not setNonEmpty!35860))

(assert tp_is_empty!39905)

(assert (not b!5467329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5467512 () Bool)

(declare-fun e!3384895 () Bool)

(declare-fun lt!2234035 () Regex!15326)

(declare-fun head!11707 (List!62277) Regex!15326)

(assert (=> b!5467512 (= e!3384895 (= lt!2234035 (head!11707 (unfocusZipperList!768 zl!343))))))

(declare-fun d!1738667 () Bool)

(declare-fun e!3384898 () Bool)

(assert (=> d!1738667 e!3384898))

(declare-fun res!2329728 () Bool)

(assert (=> d!1738667 (=> (not res!2329728) (not e!3384898))))

(assert (=> d!1738667 (= res!2329728 (validRegex!7062 lt!2234035))))

(declare-fun e!3384899 () Regex!15326)

(assert (=> d!1738667 (= lt!2234035 e!3384899)))

(declare-fun c!955138 () Bool)

(declare-fun e!3384897 () Bool)

(assert (=> d!1738667 (= c!955138 e!3384897)))

(declare-fun res!2329729 () Bool)

(assert (=> d!1738667 (=> (not res!2329729) (not e!3384897))))

(assert (=> d!1738667 (= res!2329729 (is-Cons!62153 (unfocusZipperList!768 zl!343)))))

(declare-fun lambda!290678 () Int)

(declare-fun forall!14601 (List!62277 Int) Bool)

(assert (=> d!1738667 (forall!14601 (unfocusZipperList!768 zl!343) lambda!290678)))

(assert (=> d!1738667 (= (generalisedUnion!1255 (unfocusZipperList!768 zl!343)) lt!2234035)))

(declare-fun b!5467513 () Bool)

(declare-fun isEmpty!34116 (List!62277) Bool)

(assert (=> b!5467513 (= e!3384897 (isEmpty!34116 (t!375506 (unfocusZipperList!768 zl!343))))))

(declare-fun b!5467514 () Bool)

(declare-fun e!3384894 () Regex!15326)

(assert (=> b!5467514 (= e!3384894 EmptyLang!15326)))

(declare-fun b!5467515 () Bool)

(declare-fun e!3384896 () Bool)

(declare-fun isEmptyLang!1036 (Regex!15326) Bool)

(assert (=> b!5467515 (= e!3384896 (isEmptyLang!1036 lt!2234035))))

(declare-fun b!5467516 () Bool)

(assert (=> b!5467516 (= e!3384899 e!3384894)))

(declare-fun c!955137 () Bool)

(assert (=> b!5467516 (= c!955137 (is-Cons!62153 (unfocusZipperList!768 zl!343)))))

(declare-fun b!5467517 () Bool)

(declare-fun isUnion!468 (Regex!15326) Bool)

(assert (=> b!5467517 (= e!3384895 (isUnion!468 lt!2234035))))

(declare-fun b!5467518 () Bool)

(assert (=> b!5467518 (= e!3384899 (h!68601 (unfocusZipperList!768 zl!343)))))

(declare-fun b!5467519 () Bool)

(assert (=> b!5467519 (= e!3384898 e!3384896)))

(declare-fun c!955136 () Bool)

(assert (=> b!5467519 (= c!955136 (isEmpty!34116 (unfocusZipperList!768 zl!343)))))

(declare-fun b!5467520 () Bool)

(assert (=> b!5467520 (= e!3384894 (Union!15326 (h!68601 (unfocusZipperList!768 zl!343)) (generalisedUnion!1255 (t!375506 (unfocusZipperList!768 zl!343)))))))

(declare-fun b!5467521 () Bool)

(assert (=> b!5467521 (= e!3384896 e!3384895)))

(declare-fun c!955139 () Bool)

(declare-fun tail!10804 (List!62277) List!62277)

(assert (=> b!5467521 (= c!955139 (isEmpty!34116 (tail!10804 (unfocusZipperList!768 zl!343))))))

(assert (= (and d!1738667 res!2329729) b!5467513))

(assert (= (and d!1738667 c!955138) b!5467518))

(assert (= (and d!1738667 (not c!955138)) b!5467516))

(assert (= (and b!5467516 c!955137) b!5467520))

(assert (= (and b!5467516 (not c!955137)) b!5467514))

(assert (= (and d!1738667 res!2329728) b!5467519))

(assert (= (and b!5467519 c!955136) b!5467515))

(assert (= (and b!5467519 (not c!955136)) b!5467521))

(assert (= (and b!5467521 c!955139) b!5467512))

(assert (= (and b!5467521 (not c!955139)) b!5467517))

(declare-fun m!6486668 () Bool)

(assert (=> d!1738667 m!6486668))

(assert (=> d!1738667 m!6486492))

(declare-fun m!6486670 () Bool)

(assert (=> d!1738667 m!6486670))

(assert (=> b!5467512 m!6486492))

(declare-fun m!6486672 () Bool)

(assert (=> b!5467512 m!6486672))

(declare-fun m!6486674 () Bool)

(assert (=> b!5467520 m!6486674))

(declare-fun m!6486676 () Bool)

(assert (=> b!5467517 m!6486676))

(assert (=> b!5467519 m!6486492))

(declare-fun m!6486678 () Bool)

(assert (=> b!5467519 m!6486678))

(declare-fun m!6486680 () Bool)

(assert (=> b!5467515 m!6486680))

(assert (=> b!5467521 m!6486492))

(declare-fun m!6486682 () Bool)

(assert (=> b!5467521 m!6486682))

(assert (=> b!5467521 m!6486682))

(declare-fun m!6486684 () Bool)

(assert (=> b!5467521 m!6486684))

(declare-fun m!6486686 () Bool)

(assert (=> b!5467513 m!6486686))

(assert (=> b!5467311 d!1738667))

(declare-fun bs!1264584 () Bool)

(declare-fun d!1738669 () Bool)

(assert (= bs!1264584 (and d!1738669 d!1738667)))

(declare-fun lambda!290681 () Int)

(assert (=> bs!1264584 (= lambda!290681 lambda!290678)))

(declare-fun lt!2234040 () List!62277)

(assert (=> d!1738669 (forall!14601 lt!2234040 lambda!290681)))

(declare-fun e!3384902 () List!62277)

(assert (=> d!1738669 (= lt!2234040 e!3384902)))

(declare-fun c!955142 () Bool)

(assert (=> d!1738669 (= c!955142 (is-Cons!62154 zl!343))))

(assert (=> d!1738669 (= (unfocusZipperList!768 zl!343) lt!2234040)))

(declare-fun b!5467526 () Bool)

(assert (=> b!5467526 (= e!3384902 (Cons!62153 (generalisedConcat!995 (exprs!5210 (h!68602 zl!343))) (unfocusZipperList!768 (t!375507 zl!343))))))

(declare-fun b!5467527 () Bool)

(assert (=> b!5467527 (= e!3384902 Nil!62153)))

(assert (= (and d!1738669 c!955142) b!5467526))

(assert (= (and d!1738669 (not c!955142)) b!5467527))

(declare-fun m!6486688 () Bool)

(assert (=> d!1738669 m!6486688))

(assert (=> b!5467526 m!6486462))

(declare-fun m!6486690 () Bool)

(assert (=> b!5467526 m!6486690))

(assert (=> b!5467311 d!1738669))

(declare-fun d!1738671 () Bool)

(declare-fun lt!2234043 () Regex!15326)

(assert (=> d!1738671 (validRegex!7062 lt!2234043)))

(assert (=> d!1738671 (= lt!2234043 (generalisedUnion!1255 (unfocusZipperList!768 zl!343)))))

(assert (=> d!1738671 (= (unfocusZipper!1068 zl!343) lt!2234043)))

(declare-fun bs!1264585 () Bool)

(assert (= bs!1264585 d!1738671))

(declare-fun m!6486692 () Bool)

(assert (=> bs!1264585 m!6486692))

(assert (=> bs!1264585 m!6486492))

(assert (=> bs!1264585 m!6486492))

(assert (=> bs!1264585 m!6486494))

(assert (=> b!5467321 d!1738671))

(declare-fun bs!1264586 () Bool)

(declare-fun d!1738673 () Bool)

(assert (= bs!1264586 (and d!1738673 d!1738667)))

(declare-fun lambda!290686 () Int)

(assert (=> bs!1264586 (= lambda!290686 lambda!290678)))

(declare-fun bs!1264587 () Bool)

(assert (= bs!1264587 (and d!1738673 d!1738669)))

(assert (=> bs!1264587 (= lambda!290686 lambda!290681)))

(assert (=> d!1738673 (= (inv!81563 setElem!35860) (forall!14601 (exprs!5210 setElem!35860) lambda!290686))))

(declare-fun bs!1264588 () Bool)

(assert (= bs!1264588 d!1738673))

(declare-fun m!6486694 () Bool)

(assert (=> bs!1264588 m!6486694))

(assert (=> setNonEmpty!35860 d!1738673))

(declare-fun d!1738675 () Bool)

(declare-fun choose!41563 ((Set Context!9420) Int) (Set Context!9420))

(assert (=> d!1738675 (= (flatMap!1029 lt!2233945 lambda!290647) (choose!41563 lt!2233945 lambda!290647))))

(declare-fun bs!1264589 () Bool)

(assert (= bs!1264589 d!1738675))

(declare-fun m!6486696 () Bool)

(assert (=> bs!1264589 m!6486696))

(assert (=> b!5467310 d!1738675))

(declare-fun b!5467548 () Bool)

(declare-fun e!3384913 () (Set Context!9420))

(declare-fun call!403377 () (Set Context!9420))

(assert (=> b!5467548 (= e!3384913 call!403377)))

(declare-fun bm!403372 () Bool)

(assert (=> bm!403372 (= call!403377 (derivationStepZipperDown!752 (h!68601 (exprs!5210 lt!2233932)) (Context!9421 (t!375506 (exprs!5210 lt!2233932))) (h!68603 s!2326)))))

(declare-fun b!5467549 () Bool)

(assert (=> b!5467549 (= e!3384913 (as set.empty (Set Context!9420)))))

(declare-fun e!3384915 () (Set Context!9420))

(declare-fun b!5467550 () Bool)

(assert (=> b!5467550 (= e!3384915 (set.union call!403377 (derivationStepZipperUp!678 (Context!9421 (t!375506 (exprs!5210 lt!2233932))) (h!68603 s!2326))))))

(declare-fun b!5467551 () Bool)

(assert (=> b!5467551 (= e!3384915 e!3384913)))

(declare-fun c!955147 () Bool)

(assert (=> b!5467551 (= c!955147 (is-Cons!62153 (exprs!5210 lt!2233932)))))

(declare-fun b!5467552 () Bool)

(declare-fun e!3384914 () Bool)

(declare-fun nullable!5471 (Regex!15326) Bool)

(assert (=> b!5467552 (= e!3384914 (nullable!5471 (h!68601 (exprs!5210 lt!2233932))))))

(declare-fun d!1738677 () Bool)

(declare-fun c!955148 () Bool)

(assert (=> d!1738677 (= c!955148 e!3384914)))

(declare-fun res!2329742 () Bool)

(assert (=> d!1738677 (=> (not res!2329742) (not e!3384914))))

(assert (=> d!1738677 (= res!2329742 (is-Cons!62153 (exprs!5210 lt!2233932)))))

(assert (=> d!1738677 (= (derivationStepZipperUp!678 lt!2233932 (h!68603 s!2326)) e!3384915)))

(assert (= (and d!1738677 res!2329742) b!5467552))

(assert (= (and d!1738677 c!955148) b!5467550))

(assert (= (and d!1738677 (not c!955148)) b!5467551))

(assert (= (and b!5467551 c!955147) b!5467548))

(assert (= (and b!5467551 (not c!955147)) b!5467549))

(assert (= (or b!5467550 b!5467548) bm!403372))

(declare-fun m!6486698 () Bool)

(assert (=> bm!403372 m!6486698))

(declare-fun m!6486700 () Bool)

(assert (=> b!5467550 m!6486700))

(declare-fun m!6486702 () Bool)

(assert (=> b!5467552 m!6486702))

(assert (=> b!5467310 d!1738677))

(declare-fun d!1738679 () Bool)

(declare-fun dynLambda!24418 (Int Context!9420) (Set Context!9420))

(assert (=> d!1738679 (= (flatMap!1029 lt!2233948 lambda!290647) (dynLambda!24418 lambda!290647 lt!2233932))))

(declare-fun lt!2234047 () Unit!155102)

(declare-fun choose!41564 ((Set Context!9420) Context!9420 Int) Unit!155102)

(assert (=> d!1738679 (= lt!2234047 (choose!41564 lt!2233948 lt!2233932 lambda!290647))))

(assert (=> d!1738679 (= lt!2233948 (set.insert lt!2233932 (as set.empty (Set Context!9420))))))

(assert (=> d!1738679 (= (lemmaFlatMapOnSingletonSet!561 lt!2233948 lt!2233932 lambda!290647) lt!2234047)))

(declare-fun b_lambda!207883 () Bool)

(assert (=> (not b_lambda!207883) (not d!1738679)))

(declare-fun bs!1264592 () Bool)

(assert (= bs!1264592 d!1738679))

(assert (=> bs!1264592 m!6486534))

(declare-fun m!6486704 () Bool)

(assert (=> bs!1264592 m!6486704))

(declare-fun m!6486706 () Bool)

(assert (=> bs!1264592 m!6486706))

(assert (=> bs!1264592 m!6486532))

(assert (=> b!5467310 d!1738679))

(declare-fun b!5467553 () Bool)

(declare-fun e!3384916 () (Set Context!9420))

(declare-fun call!403378 () (Set Context!9420))

(assert (=> b!5467553 (= e!3384916 call!403378)))

(declare-fun bm!403373 () Bool)

(assert (=> bm!403373 (= call!403378 (derivationStepZipperDown!752 (h!68601 (exprs!5210 lt!2233947)) (Context!9421 (t!375506 (exprs!5210 lt!2233947))) (h!68603 s!2326)))))

(declare-fun b!5467554 () Bool)

(assert (=> b!5467554 (= e!3384916 (as set.empty (Set Context!9420)))))

(declare-fun e!3384918 () (Set Context!9420))

(declare-fun b!5467555 () Bool)

(assert (=> b!5467555 (= e!3384918 (set.union call!403378 (derivationStepZipperUp!678 (Context!9421 (t!375506 (exprs!5210 lt!2233947))) (h!68603 s!2326))))))

(declare-fun b!5467556 () Bool)

(assert (=> b!5467556 (= e!3384918 e!3384916)))

(declare-fun c!955149 () Bool)

(assert (=> b!5467556 (= c!955149 (is-Cons!62153 (exprs!5210 lt!2233947)))))

(declare-fun b!5467557 () Bool)

(declare-fun e!3384917 () Bool)

(assert (=> b!5467557 (= e!3384917 (nullable!5471 (h!68601 (exprs!5210 lt!2233947))))))

(declare-fun d!1738681 () Bool)

(declare-fun c!955150 () Bool)

(assert (=> d!1738681 (= c!955150 e!3384917)))

(declare-fun res!2329743 () Bool)

(assert (=> d!1738681 (=> (not res!2329743) (not e!3384917))))

(assert (=> d!1738681 (= res!2329743 (is-Cons!62153 (exprs!5210 lt!2233947)))))

(assert (=> d!1738681 (= (derivationStepZipperUp!678 lt!2233947 (h!68603 s!2326)) e!3384918)))

(assert (= (and d!1738681 res!2329743) b!5467557))

(assert (= (and d!1738681 c!955150) b!5467555))

(assert (= (and d!1738681 (not c!955150)) b!5467556))

(assert (= (and b!5467556 c!955149) b!5467553))

(assert (= (and b!5467556 (not c!955149)) b!5467554))

(assert (= (or b!5467555 b!5467553) bm!403373))

(declare-fun m!6486708 () Bool)

(assert (=> bm!403373 m!6486708))

(declare-fun m!6486710 () Bool)

(assert (=> b!5467555 m!6486710))

(declare-fun m!6486712 () Bool)

(assert (=> b!5467557 m!6486712))

(assert (=> b!5467310 d!1738681))

(declare-fun d!1738683 () Bool)

(assert (=> d!1738683 (= (flatMap!1029 lt!2233948 lambda!290647) (choose!41563 lt!2233948 lambda!290647))))

(declare-fun bs!1264593 () Bool)

(assert (= bs!1264593 d!1738683))

(declare-fun m!6486714 () Bool)

(assert (=> bs!1264593 m!6486714))

(assert (=> b!5467310 d!1738683))

(declare-fun d!1738685 () Bool)

(assert (=> d!1738685 (= (flatMap!1029 lt!2233945 lambda!290647) (dynLambda!24418 lambda!290647 lt!2233947))))

(declare-fun lt!2234048 () Unit!155102)

(assert (=> d!1738685 (= lt!2234048 (choose!41564 lt!2233945 lt!2233947 lambda!290647))))

(assert (=> d!1738685 (= lt!2233945 (set.insert lt!2233947 (as set.empty (Set Context!9420))))))

(assert (=> d!1738685 (= (lemmaFlatMapOnSingletonSet!561 lt!2233945 lt!2233947 lambda!290647) lt!2234048)))

(declare-fun b_lambda!207885 () Bool)

(assert (=> (not b_lambda!207885) (not d!1738685)))

(declare-fun bs!1264594 () Bool)

(assert (= bs!1264594 d!1738685))

(assert (=> bs!1264594 m!6486544))

(declare-fun m!6486716 () Bool)

(assert (=> bs!1264594 m!6486716))

(declare-fun m!6486718 () Bool)

(assert (=> bs!1264594 m!6486718))

(assert (=> bs!1264594 m!6486546))

(assert (=> b!5467310 d!1738685))

(declare-fun bs!1264595 () Bool)

(declare-fun d!1738687 () Bool)

(assert (= bs!1264595 (and d!1738687 b!5467316)))

(declare-fun lambda!290693 () Int)

(assert (=> bs!1264595 (= lambda!290693 lambda!290647)))

(assert (=> d!1738687 true))

(assert (=> d!1738687 (= (derivationStepZipper!1521 lt!2233948 (h!68603 s!2326)) (flatMap!1029 lt!2233948 lambda!290693))))

(declare-fun bs!1264596 () Bool)

(assert (= bs!1264596 d!1738687))

(declare-fun m!6486720 () Bool)

(assert (=> bs!1264596 m!6486720))

(assert (=> b!5467310 d!1738687))

(declare-fun d!1738689 () Bool)

(declare-fun lt!2234049 () Regex!15326)

(assert (=> d!1738689 (validRegex!7062 lt!2234049)))

(assert (=> d!1738689 (= lt!2234049 (generalisedUnion!1255 (unfocusZipperList!768 (Cons!62154 lt!2233932 Nil!62154))))))

(assert (=> d!1738689 (= (unfocusZipper!1068 (Cons!62154 lt!2233932 Nil!62154)) lt!2234049)))

(declare-fun bs!1264597 () Bool)

(assert (= bs!1264597 d!1738689))

(declare-fun m!6486722 () Bool)

(assert (=> bs!1264597 m!6486722))

(declare-fun m!6486724 () Bool)

(assert (=> bs!1264597 m!6486724))

(assert (=> bs!1264597 m!6486724))

(declare-fun m!6486726 () Bool)

(assert (=> bs!1264597 m!6486726))

(assert (=> b!5467319 d!1738689))

(declare-fun d!1738691 () Bool)

(declare-fun c!955155 () Bool)

(assert (=> d!1738691 (= c!955155 (isEmpty!34112 s!2326))))

(declare-fun e!3384921 () Bool)

(assert (=> d!1738691 (= (matchZipper!1544 lt!2233943 s!2326) e!3384921)))

(declare-fun b!5467564 () Bool)

(declare-fun nullableZipper!1493 ((Set Context!9420)) Bool)

(assert (=> b!5467564 (= e!3384921 (nullableZipper!1493 lt!2233943))))

(declare-fun b!5467565 () Bool)

(declare-fun head!11708 (List!62279) C!30922)

(declare-fun tail!10805 (List!62279) List!62279)

(assert (=> b!5467565 (= e!3384921 (matchZipper!1544 (derivationStepZipper!1521 lt!2233943 (head!11708 s!2326)) (tail!10805 s!2326)))))

(assert (= (and d!1738691 c!955155) b!5467564))

(assert (= (and d!1738691 (not c!955155)) b!5467565))

(assert (=> d!1738691 m!6486506))

(declare-fun m!6486734 () Bool)

(assert (=> b!5467564 m!6486734))

(declare-fun m!6486736 () Bool)

(assert (=> b!5467565 m!6486736))

(assert (=> b!5467565 m!6486736))

(declare-fun m!6486738 () Bool)

(assert (=> b!5467565 m!6486738))

(declare-fun m!6486740 () Bool)

(assert (=> b!5467565 m!6486740))

(assert (=> b!5467565 m!6486738))

(assert (=> b!5467565 m!6486740))

(declare-fun m!6486742 () Bool)

(assert (=> b!5467565 m!6486742))

(assert (=> b!5467328 d!1738691))

(declare-fun d!1738697 () Bool)

(declare-fun c!955156 () Bool)

(assert (=> d!1738697 (= c!955156 (isEmpty!34112 (t!375508 s!2326)))))

(declare-fun e!3384922 () Bool)

(assert (=> d!1738697 (= (matchZipper!1544 (derivationStepZipper!1521 lt!2233943 (h!68603 s!2326)) (t!375508 s!2326)) e!3384922)))

(declare-fun b!5467566 () Bool)

(assert (=> b!5467566 (= e!3384922 (nullableZipper!1493 (derivationStepZipper!1521 lt!2233943 (h!68603 s!2326))))))

(declare-fun b!5467567 () Bool)

(assert (=> b!5467567 (= e!3384922 (matchZipper!1544 (derivationStepZipper!1521 (derivationStepZipper!1521 lt!2233943 (h!68603 s!2326)) (head!11708 (t!375508 s!2326))) (tail!10805 (t!375508 s!2326))))))

(assert (= (and d!1738697 c!955156) b!5467566))

(assert (= (and d!1738697 (not c!955156)) b!5467567))

(declare-fun m!6486746 () Bool)

(assert (=> d!1738697 m!6486746))

(assert (=> b!5467566 m!6486498))

(declare-fun m!6486748 () Bool)

(assert (=> b!5467566 m!6486748))

(declare-fun m!6486750 () Bool)

(assert (=> b!5467567 m!6486750))

(assert (=> b!5467567 m!6486498))

(assert (=> b!5467567 m!6486750))

(declare-fun m!6486754 () Bool)

(assert (=> b!5467567 m!6486754))

(declare-fun m!6486756 () Bool)

(assert (=> b!5467567 m!6486756))

(assert (=> b!5467567 m!6486754))

(assert (=> b!5467567 m!6486756))

(declare-fun m!6486758 () Bool)

(assert (=> b!5467567 m!6486758))

(assert (=> b!5467328 d!1738697))

(declare-fun bs!1264602 () Bool)

(declare-fun d!1738703 () Bool)

(assert (= bs!1264602 (and d!1738703 b!5467316)))

(declare-fun lambda!290694 () Int)

(assert (=> bs!1264602 (= lambda!290694 lambda!290647)))

(declare-fun bs!1264603 () Bool)

(assert (= bs!1264603 (and d!1738703 d!1738687)))

(assert (=> bs!1264603 (= lambda!290694 lambda!290693)))

(assert (=> d!1738703 true))

(assert (=> d!1738703 (= (derivationStepZipper!1521 lt!2233943 (h!68603 s!2326)) (flatMap!1029 lt!2233943 lambda!290694))))

(declare-fun bs!1264604 () Bool)

(assert (= bs!1264604 d!1738703))

(declare-fun m!6486762 () Bool)

(assert (=> bs!1264604 m!6486762))

(assert (=> b!5467328 d!1738703))

(declare-fun d!1738707 () Bool)

(declare-fun isEmpty!34117 (Option!15435) Bool)

(assert (=> d!1738707 (= (isDefined!12138 (findConcatSeparation!1849 (reg!15655 r!7292) r!7292 Nil!62155 s!2326 s!2326)) (not (isEmpty!34117 (findConcatSeparation!1849 (reg!15655 r!7292) r!7292 Nil!62155 s!2326 s!2326))))))

(declare-fun bs!1264605 () Bool)

(assert (= bs!1264605 d!1738707))

(assert (=> bs!1264605 m!6486512))

(declare-fun m!6486764 () Bool)

(assert (=> bs!1264605 m!6486764))

(assert (=> b!5467308 d!1738707))

(declare-fun bs!1264606 () Bool)

(declare-fun d!1738709 () Bool)

(assert (= bs!1264606 (and d!1738709 b!5467308)))

(declare-fun lambda!290699 () Int)

(assert (=> bs!1264606 (= lambda!290699 lambda!290644)))

(assert (=> bs!1264606 (not (= lambda!290699 lambda!290645))))

(assert (=> bs!1264606 (not (= lambda!290699 lambda!290646))))

(assert (=> d!1738709 true))

(assert (=> d!1738709 true))

(assert (=> d!1738709 true))

(declare-fun lambda!290700 () Int)

(assert (=> bs!1264606 (not (= lambda!290700 lambda!290644))))

(assert (=> bs!1264606 (not (= lambda!290700 lambda!290645))))

(assert (=> bs!1264606 (= lambda!290700 lambda!290646)))

(declare-fun bs!1264607 () Bool)

(assert (= bs!1264607 d!1738709))

(assert (=> bs!1264607 (not (= lambda!290700 lambda!290699))))

(assert (=> d!1738709 true))

(assert (=> d!1738709 true))

(assert (=> d!1738709 true))

(assert (=> d!1738709 (= (Exists!2505 lambda!290699) (Exists!2505 lambda!290700))))

(declare-fun lt!2234052 () Unit!155102)

(declare-fun choose!41565 (Regex!15326 Regex!15326 List!62279) Unit!155102)

(assert (=> d!1738709 (= lt!2234052 (choose!41565 (reg!15655 r!7292) r!7292 s!2326))))

(assert (=> d!1738709 (validRegex!7062 (reg!15655 r!7292))))

(assert (=> d!1738709 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1155 (reg!15655 r!7292) r!7292 s!2326) lt!2234052)))

(declare-fun m!6486766 () Bool)

(assert (=> bs!1264607 m!6486766))

(declare-fun m!6486768 () Bool)

(assert (=> bs!1264607 m!6486768))

(declare-fun m!6486770 () Bool)

(assert (=> bs!1264607 m!6486770))

(declare-fun m!6486772 () Bool)

(assert (=> bs!1264607 m!6486772))

(assert (=> b!5467308 d!1738709))

(declare-fun bs!1264608 () Bool)

(declare-fun d!1738711 () Bool)

(assert (= bs!1264608 (and d!1738711 d!1738709)))

(declare-fun lambda!290705 () Int)

(assert (=> bs!1264608 (= (= (Star!15326 (reg!15655 r!7292)) r!7292) (= lambda!290705 lambda!290699))))

(declare-fun bs!1264609 () Bool)

(assert (= bs!1264609 (and d!1738711 b!5467308)))

(assert (=> bs!1264609 (not (= lambda!290705 lambda!290646))))

(assert (=> bs!1264609 (not (= lambda!290705 lambda!290645))))

(assert (=> bs!1264609 (= (= (Star!15326 (reg!15655 r!7292)) r!7292) (= lambda!290705 lambda!290644))))

(assert (=> bs!1264608 (not (= lambda!290705 lambda!290700))))

(assert (=> d!1738711 true))

(assert (=> d!1738711 true))

(declare-fun bs!1264610 () Bool)

(assert (= bs!1264610 d!1738711))

(declare-fun lambda!290706 () Int)

(assert (=> bs!1264610 (not (= lambda!290706 lambda!290705))))

(assert (=> bs!1264608 (not (= lambda!290706 lambda!290699))))

(assert (=> bs!1264609 (not (= lambda!290706 lambda!290646))))

(assert (=> bs!1264609 (= (= (Star!15326 (reg!15655 r!7292)) r!7292) (= lambda!290706 lambda!290645))))

(assert (=> bs!1264609 (not (= lambda!290706 lambda!290644))))

(assert (=> bs!1264608 (not (= lambda!290706 lambda!290700))))

(assert (=> d!1738711 true))

(assert (=> d!1738711 true))

(assert (=> d!1738711 (= (Exists!2505 lambda!290705) (Exists!2505 lambda!290706))))

(declare-fun lt!2234061 () Unit!155102)

(declare-fun choose!41566 (Regex!15326 List!62279) Unit!155102)

(assert (=> d!1738711 (= lt!2234061 (choose!41566 (reg!15655 r!7292) s!2326))))

(assert (=> d!1738711 (validRegex!7062 (reg!15655 r!7292))))

(assert (=> d!1738711 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!479 (reg!15655 r!7292) s!2326) lt!2234061)))

(declare-fun m!6486774 () Bool)

(assert (=> bs!1264610 m!6486774))

(declare-fun m!6486776 () Bool)

(assert (=> bs!1264610 m!6486776))

(declare-fun m!6486778 () Bool)

(assert (=> bs!1264610 m!6486778))

(assert (=> bs!1264610 m!6486772))

(assert (=> b!5467308 d!1738711))

(declare-fun d!1738713 () Bool)

(declare-fun choose!41567 (Int) Bool)

(assert (=> d!1738713 (= (Exists!2505 lambda!290645) (choose!41567 lambda!290645))))

(declare-fun bs!1264611 () Bool)

(assert (= bs!1264611 d!1738713))

(declare-fun m!6486780 () Bool)

(assert (=> bs!1264611 m!6486780))

(assert (=> b!5467308 d!1738713))

(declare-fun d!1738715 () Bool)

(assert (=> d!1738715 (= (Exists!2505 lambda!290646) (choose!41567 lambda!290646))))

(declare-fun bs!1264612 () Bool)

(assert (= bs!1264612 d!1738715))

(declare-fun m!6486782 () Bool)

(assert (=> bs!1264612 m!6486782))

(assert (=> b!5467308 d!1738715))

(declare-fun d!1738717 () Bool)

(assert (=> d!1738717 (= (isEmpty!34112 s!2326) (is-Nil!62155 s!2326))))

(assert (=> b!5467308 d!1738717))

(declare-fun d!1738719 () Bool)

(assert (=> d!1738719 (= (Exists!2505 lambda!290644) (choose!41567 lambda!290644))))

(declare-fun bs!1264613 () Bool)

(assert (= bs!1264613 d!1738719))

(declare-fun m!6486784 () Bool)

(assert (=> bs!1264613 m!6486784))

(assert (=> b!5467308 d!1738719))

(declare-fun b!5467631 () Bool)

(declare-fun e!3384957 () Option!15435)

(assert (=> b!5467631 (= e!3384957 (Some!15434 (tuple2!65047 Nil!62155 s!2326)))))

(declare-fun b!5467632 () Bool)

(declare-fun lt!2234072 () Unit!155102)

(declare-fun lt!2234071 () Unit!155102)

(assert (=> b!5467632 (= lt!2234072 lt!2234071)))

(declare-fun ++!13669 (List!62279 List!62279) List!62279)

(assert (=> b!5467632 (= (++!13669 (++!13669 Nil!62155 (Cons!62155 (h!68603 s!2326) Nil!62155)) (t!375508 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1890 (List!62279 C!30922 List!62279 List!62279) Unit!155102)

(assert (=> b!5467632 (= lt!2234071 (lemmaMoveElementToOtherListKeepsConcatEq!1890 Nil!62155 (h!68603 s!2326) (t!375508 s!2326) s!2326))))

(declare-fun e!3384958 () Option!15435)

(assert (=> b!5467632 (= e!3384958 (findConcatSeparation!1849 (reg!15655 r!7292) r!7292 (++!13669 Nil!62155 (Cons!62155 (h!68603 s!2326) Nil!62155)) (t!375508 s!2326) s!2326))))

(declare-fun b!5467633 () Bool)

(declare-fun res!2329790 () Bool)

(declare-fun e!3384960 () Bool)

(assert (=> b!5467633 (=> (not res!2329790) (not e!3384960))))

(declare-fun lt!2234073 () Option!15435)

(declare-fun get!21426 (Option!15435) tuple2!65046)

(assert (=> b!5467633 (= res!2329790 (matchR!7511 (reg!15655 r!7292) (_1!35826 (get!21426 lt!2234073))))))

(declare-fun b!5467634 () Bool)

(assert (=> b!5467634 (= e!3384957 e!3384958)))

(declare-fun c!955168 () Bool)

(assert (=> b!5467634 (= c!955168 (is-Nil!62155 s!2326))))

(declare-fun d!1738721 () Bool)

(declare-fun e!3384959 () Bool)

(assert (=> d!1738721 e!3384959))

(declare-fun res!2329791 () Bool)

(assert (=> d!1738721 (=> res!2329791 e!3384959)))

(assert (=> d!1738721 (= res!2329791 e!3384960)))

(declare-fun res!2329788 () Bool)

(assert (=> d!1738721 (=> (not res!2329788) (not e!3384960))))

(assert (=> d!1738721 (= res!2329788 (isDefined!12138 lt!2234073))))

(assert (=> d!1738721 (= lt!2234073 e!3384957)))

(declare-fun c!955167 () Bool)

(declare-fun e!3384956 () Bool)

(assert (=> d!1738721 (= c!955167 e!3384956)))

(declare-fun res!2329787 () Bool)

(assert (=> d!1738721 (=> (not res!2329787) (not e!3384956))))

(assert (=> d!1738721 (= res!2329787 (matchR!7511 (reg!15655 r!7292) Nil!62155))))

(assert (=> d!1738721 (validRegex!7062 (reg!15655 r!7292))))

(assert (=> d!1738721 (= (findConcatSeparation!1849 (reg!15655 r!7292) r!7292 Nil!62155 s!2326 s!2326) lt!2234073)))

(declare-fun b!5467635 () Bool)

(assert (=> b!5467635 (= e!3384959 (not (isDefined!12138 lt!2234073)))))

(declare-fun b!5467636 () Bool)

(declare-fun res!2329789 () Bool)

(assert (=> b!5467636 (=> (not res!2329789) (not e!3384960))))

(assert (=> b!5467636 (= res!2329789 (matchR!7511 r!7292 (_2!35826 (get!21426 lt!2234073))))))

(declare-fun b!5467637 () Bool)

(assert (=> b!5467637 (= e!3384960 (= (++!13669 (_1!35826 (get!21426 lt!2234073)) (_2!35826 (get!21426 lt!2234073))) s!2326))))

(declare-fun b!5467638 () Bool)

(assert (=> b!5467638 (= e!3384956 (matchR!7511 r!7292 s!2326))))

(declare-fun b!5467639 () Bool)

(assert (=> b!5467639 (= e!3384958 None!15434)))

(assert (= (and d!1738721 res!2329787) b!5467638))

(assert (= (and d!1738721 c!955167) b!5467631))

(assert (= (and d!1738721 (not c!955167)) b!5467634))

(assert (= (and b!5467634 c!955168) b!5467639))

(assert (= (and b!5467634 (not c!955168)) b!5467632))

(assert (= (and d!1738721 res!2329788) b!5467633))

(assert (= (and b!5467633 res!2329790) b!5467636))

(assert (= (and b!5467636 res!2329789) b!5467637))

(assert (= (and d!1738721 (not res!2329791)) b!5467635))

(declare-fun m!6486806 () Bool)

(assert (=> b!5467637 m!6486806))

(declare-fun m!6486808 () Bool)

(assert (=> b!5467637 m!6486808))

(declare-fun m!6486810 () Bool)

(assert (=> b!5467632 m!6486810))

(assert (=> b!5467632 m!6486810))

(declare-fun m!6486812 () Bool)

(assert (=> b!5467632 m!6486812))

(declare-fun m!6486814 () Bool)

(assert (=> b!5467632 m!6486814))

(assert (=> b!5467632 m!6486810))

(declare-fun m!6486816 () Bool)

(assert (=> b!5467632 m!6486816))

(declare-fun m!6486818 () Bool)

(assert (=> b!5467635 m!6486818))

(assert (=> b!5467633 m!6486806))

(declare-fun m!6486820 () Bool)

(assert (=> b!5467633 m!6486820))

(assert (=> b!5467636 m!6486806))

(declare-fun m!6486822 () Bool)

(assert (=> b!5467636 m!6486822))

(assert (=> b!5467638 m!6486472))

(assert (=> d!1738721 m!6486818))

(declare-fun m!6486824 () Bool)

(assert (=> d!1738721 m!6486824))

(assert (=> d!1738721 m!6486772))

(assert (=> b!5467308 d!1738721))

(declare-fun bs!1264614 () Bool)

(declare-fun d!1738725 () Bool)

(assert (= bs!1264614 (and d!1738725 d!1738711)))

(declare-fun lambda!290711 () Int)

(assert (=> bs!1264614 (not (= lambda!290711 lambda!290706))))

(assert (=> bs!1264614 (= (= r!7292 (Star!15326 (reg!15655 r!7292))) (= lambda!290711 lambda!290705))))

(declare-fun bs!1264615 () Bool)

(assert (= bs!1264615 (and d!1738725 d!1738709)))

(assert (=> bs!1264615 (= lambda!290711 lambda!290699)))

(declare-fun bs!1264616 () Bool)

(assert (= bs!1264616 (and d!1738725 b!5467308)))

(assert (=> bs!1264616 (not (= lambda!290711 lambda!290646))))

(assert (=> bs!1264616 (not (= lambda!290711 lambda!290645))))

(assert (=> bs!1264616 (= lambda!290711 lambda!290644)))

(assert (=> bs!1264615 (not (= lambda!290711 lambda!290700))))

(assert (=> d!1738725 true))

(assert (=> d!1738725 true))

(assert (=> d!1738725 true))

(assert (=> d!1738725 (= (isDefined!12138 (findConcatSeparation!1849 (reg!15655 r!7292) r!7292 Nil!62155 s!2326 s!2326)) (Exists!2505 lambda!290711))))

(declare-fun lt!2234078 () Unit!155102)

(declare-fun choose!41568 (Regex!15326 Regex!15326 List!62279) Unit!155102)

(assert (=> d!1738725 (= lt!2234078 (choose!41568 (reg!15655 r!7292) r!7292 s!2326))))

(assert (=> d!1738725 (validRegex!7062 (reg!15655 r!7292))))

(assert (=> d!1738725 (= (lemmaFindConcatSeparationEquivalentToExists!1613 (reg!15655 r!7292) r!7292 s!2326) lt!2234078)))

(declare-fun bs!1264617 () Bool)

(assert (= bs!1264617 d!1738725))

(declare-fun m!6486826 () Bool)

(assert (=> bs!1264617 m!6486826))

(assert (=> bs!1264617 m!6486512))

(assert (=> bs!1264617 m!6486514))

(assert (=> bs!1264617 m!6486772))

(declare-fun m!6486828 () Bool)

(assert (=> bs!1264617 m!6486828))

(assert (=> bs!1264617 m!6486512))

(assert (=> b!5467308 d!1738725))

(declare-fun d!1738727 () Bool)

(declare-fun lt!2234079 () Regex!15326)

(assert (=> d!1738727 (validRegex!7062 lt!2234079)))

(assert (=> d!1738727 (= lt!2234079 (generalisedUnion!1255 (unfocusZipperList!768 (Cons!62154 lt!2233942 Nil!62154))))))

(assert (=> d!1738727 (= (unfocusZipper!1068 (Cons!62154 lt!2233942 Nil!62154)) lt!2234079)))

(declare-fun bs!1264618 () Bool)

(assert (= bs!1264618 d!1738727))

(declare-fun m!6486830 () Bool)

(assert (=> bs!1264618 m!6486830))

(declare-fun m!6486832 () Bool)

(assert (=> bs!1264618 m!6486832))

(assert (=> bs!1264618 m!6486832))

(declare-fun m!6486834 () Bool)

(assert (=> bs!1264618 m!6486834))

(assert (=> b!5467307 d!1738727))

(declare-fun d!1738729 () Bool)

(declare-fun e!3384967 () Bool)

(assert (=> d!1738729 e!3384967))

(declare-fun res!2329802 () Bool)

(assert (=> d!1738729 (=> (not res!2329802) (not e!3384967))))

(declare-fun lt!2234083 () List!62278)

(declare-fun noDuplicate!1445 (List!62278) Bool)

(assert (=> d!1738729 (= res!2329802 (noDuplicate!1445 lt!2234083))))

(declare-fun choose!41569 ((Set Context!9420)) List!62278)

(assert (=> d!1738729 (= lt!2234083 (choose!41569 z!1189))))

(assert (=> d!1738729 (= (toList!9110 z!1189) lt!2234083)))

(declare-fun b!5467650 () Bool)

(declare-fun content!11186 (List!62278) (Set Context!9420))

(assert (=> b!5467650 (= e!3384967 (= (content!11186 lt!2234083) z!1189))))

(assert (= (and d!1738729 res!2329802) b!5467650))

(declare-fun m!6486836 () Bool)

(assert (=> d!1738729 m!6486836))

(declare-fun m!6486838 () Bool)

(assert (=> d!1738729 m!6486838))

(declare-fun m!6486840 () Bool)

(assert (=> b!5467650 m!6486840))

(assert (=> b!5467318 d!1738729))

(declare-fun d!1738731 () Bool)

(declare-fun lt!2234084 () Regex!15326)

(assert (=> d!1738731 (validRegex!7062 lt!2234084)))

(assert (=> d!1738731 (= lt!2234084 (generalisedUnion!1255 (unfocusZipperList!768 (Cons!62154 lt!2233947 Nil!62154))))))

(assert (=> d!1738731 (= (unfocusZipper!1068 (Cons!62154 lt!2233947 Nil!62154)) lt!2234084)))

(declare-fun bs!1264622 () Bool)

(assert (= bs!1264622 d!1738731))

(declare-fun m!6486842 () Bool)

(assert (=> bs!1264622 m!6486842))

(declare-fun m!6486844 () Bool)

(assert (=> bs!1264622 m!6486844))

(assert (=> bs!1264622 m!6486844))

(declare-fun m!6486846 () Bool)

(assert (=> bs!1264622 m!6486846))

(assert (=> b!5467317 d!1738731))

(declare-fun d!1738733 () Bool)

(assert (=> d!1738733 (= (flatMap!1029 z!1189 lambda!290647) (choose!41563 z!1189 lambda!290647))))

(declare-fun bs!1264623 () Bool)

(assert (= bs!1264623 d!1738733))

(declare-fun m!6486848 () Bool)

(assert (=> bs!1264623 m!6486848))

(assert (=> b!5467316 d!1738733))

(declare-fun b!5467651 () Bool)

(declare-fun e!3384968 () (Set Context!9420))

(declare-fun call!403379 () (Set Context!9420))

(assert (=> b!5467651 (= e!3384968 call!403379)))

(declare-fun bm!403374 () Bool)

(assert (=> bm!403374 (= call!403379 (derivationStepZipperDown!752 (h!68601 (exprs!5210 (h!68602 zl!343))) (Context!9421 (t!375506 (exprs!5210 (h!68602 zl!343)))) (h!68603 s!2326)))))

(declare-fun b!5467652 () Bool)

(assert (=> b!5467652 (= e!3384968 (as set.empty (Set Context!9420)))))

(declare-fun b!5467653 () Bool)

(declare-fun e!3384970 () (Set Context!9420))

(assert (=> b!5467653 (= e!3384970 (set.union call!403379 (derivationStepZipperUp!678 (Context!9421 (t!375506 (exprs!5210 (h!68602 zl!343)))) (h!68603 s!2326))))))

(declare-fun b!5467654 () Bool)

(assert (=> b!5467654 (= e!3384970 e!3384968)))

(declare-fun c!955169 () Bool)

(assert (=> b!5467654 (= c!955169 (is-Cons!62153 (exprs!5210 (h!68602 zl!343))))))

(declare-fun b!5467655 () Bool)

(declare-fun e!3384969 () Bool)

(assert (=> b!5467655 (= e!3384969 (nullable!5471 (h!68601 (exprs!5210 (h!68602 zl!343)))))))

(declare-fun d!1738735 () Bool)

(declare-fun c!955170 () Bool)

(assert (=> d!1738735 (= c!955170 e!3384969)))

(declare-fun res!2329803 () Bool)

(assert (=> d!1738735 (=> (not res!2329803) (not e!3384969))))

(assert (=> d!1738735 (= res!2329803 (is-Cons!62153 (exprs!5210 (h!68602 zl!343))))))

(assert (=> d!1738735 (= (derivationStepZipperUp!678 (h!68602 zl!343) (h!68603 s!2326)) e!3384970)))

(assert (= (and d!1738735 res!2329803) b!5467655))

(assert (= (and d!1738735 c!955170) b!5467653))

(assert (= (and d!1738735 (not c!955170)) b!5467654))

(assert (= (and b!5467654 c!955169) b!5467651))

(assert (= (and b!5467654 (not c!955169)) b!5467652))

(assert (= (or b!5467653 b!5467651) bm!403374))

(declare-fun m!6486850 () Bool)

(assert (=> bm!403374 m!6486850))

(declare-fun m!6486852 () Bool)

(assert (=> b!5467653 m!6486852))

(declare-fun m!6486854 () Bool)

(assert (=> b!5467655 m!6486854))

(assert (=> b!5467316 d!1738735))

(declare-fun d!1738737 () Bool)

(assert (=> d!1738737 (= (flatMap!1029 z!1189 lambda!290647) (dynLambda!24418 lambda!290647 (h!68602 zl!343)))))

(declare-fun lt!2234085 () Unit!155102)

(assert (=> d!1738737 (= lt!2234085 (choose!41564 z!1189 (h!68602 zl!343) lambda!290647))))

(assert (=> d!1738737 (= z!1189 (set.insert (h!68602 zl!343) (as set.empty (Set Context!9420))))))

(assert (=> d!1738737 (= (lemmaFlatMapOnSingletonSet!561 z!1189 (h!68602 zl!343) lambda!290647) lt!2234085)))

(declare-fun b_lambda!207887 () Bool)

(assert (=> (not b_lambda!207887) (not d!1738737)))

(declare-fun bs!1264625 () Bool)

(assert (= bs!1264625 d!1738737))

(assert (=> bs!1264625 m!6486486))

(declare-fun m!6486860 () Bool)

(assert (=> bs!1264625 m!6486860))

(declare-fun m!6486862 () Bool)

(assert (=> bs!1264625 m!6486862))

(declare-fun m!6486864 () Bool)

(assert (=> bs!1264625 m!6486864))

(assert (=> b!5467316 d!1738737))

(declare-fun bs!1264628 () Bool)

(declare-fun b!5467701 () Bool)

(assert (= bs!1264628 (and b!5467701 d!1738711)))

(declare-fun lambda!290720 () Int)

(assert (=> bs!1264628 (= (= r!7292 (Star!15326 (reg!15655 r!7292))) (= lambda!290720 lambda!290706))))

(assert (=> bs!1264628 (not (= lambda!290720 lambda!290705))))

(declare-fun bs!1264629 () Bool)

(assert (= bs!1264629 (and b!5467701 d!1738709)))

(assert (=> bs!1264629 (not (= lambda!290720 lambda!290699))))

(declare-fun bs!1264630 () Bool)

(assert (= bs!1264630 (and b!5467701 b!5467308)))

(assert (=> bs!1264630 (not (= lambda!290720 lambda!290646))))

(assert (=> bs!1264630 (= lambda!290720 lambda!290645)))

(assert (=> bs!1264630 (not (= lambda!290720 lambda!290644))))

(declare-fun bs!1264631 () Bool)

(assert (= bs!1264631 (and b!5467701 d!1738725)))

(assert (=> bs!1264631 (not (= lambda!290720 lambda!290711))))

(assert (=> bs!1264629 (not (= lambda!290720 lambda!290700))))

(assert (=> b!5467701 true))

(assert (=> b!5467701 true))

(declare-fun bs!1264632 () Bool)

(declare-fun b!5467695 () Bool)

(assert (= bs!1264632 (and b!5467695 d!1738711)))

(declare-fun lambda!290721 () Int)

(assert (=> bs!1264632 (not (= lambda!290721 lambda!290706))))

(assert (=> bs!1264632 (not (= lambda!290721 lambda!290705))))

(declare-fun bs!1264633 () Bool)

(assert (= bs!1264633 (and b!5467695 d!1738709)))

(assert (=> bs!1264633 (not (= lambda!290721 lambda!290699))))

(declare-fun bs!1264634 () Bool)

(assert (= bs!1264634 (and b!5467695 b!5467308)))

(assert (=> bs!1264634 (= (and (= (regOne!31164 r!7292) (reg!15655 r!7292)) (= (regTwo!31164 r!7292) r!7292)) (= lambda!290721 lambda!290646))))

(assert (=> bs!1264634 (not (= lambda!290721 lambda!290645))))

(assert (=> bs!1264634 (not (= lambda!290721 lambda!290644))))

(declare-fun bs!1264635 () Bool)

(assert (= bs!1264635 (and b!5467695 b!5467701)))

(assert (=> bs!1264635 (not (= lambda!290721 lambda!290720))))

(declare-fun bs!1264636 () Bool)

(assert (= bs!1264636 (and b!5467695 d!1738725)))

(assert (=> bs!1264636 (not (= lambda!290721 lambda!290711))))

(assert (=> bs!1264633 (= (and (= (regOne!31164 r!7292) (reg!15655 r!7292)) (= (regTwo!31164 r!7292) r!7292)) (= lambda!290721 lambda!290700))))

(assert (=> b!5467695 true))

(assert (=> b!5467695 true))

(declare-fun b!5467692 () Bool)

(declare-fun e!3384993 () Bool)

(declare-fun e!3384991 () Bool)

(assert (=> b!5467692 (= e!3384993 e!3384991)))

(declare-fun res!2329822 () Bool)

(assert (=> b!5467692 (= res!2329822 (matchRSpec!2429 (regOne!31165 r!7292) s!2326))))

(assert (=> b!5467692 (=> res!2329822 e!3384991)))

(declare-fun b!5467694 () Bool)

(declare-fun e!3384995 () Bool)

(assert (=> b!5467694 (= e!3384995 (= s!2326 (Cons!62155 (c!955111 r!7292) Nil!62155)))))

(declare-fun e!3384997 () Bool)

(declare-fun call!403384 () Bool)

(assert (=> b!5467695 (= e!3384997 call!403384)))

(declare-fun b!5467696 () Bool)

(declare-fun c!955183 () Bool)

(assert (=> b!5467696 (= c!955183 (is-ElementMatch!15326 r!7292))))

(declare-fun e!3384994 () Bool)

(assert (=> b!5467696 (= e!3384994 e!3384995)))

(declare-fun b!5467697 () Bool)

(declare-fun res!2329821 () Bool)

(declare-fun e!3384996 () Bool)

(assert (=> b!5467697 (=> res!2329821 e!3384996)))

(declare-fun call!403385 () Bool)

(assert (=> b!5467697 (= res!2329821 call!403385)))

(assert (=> b!5467697 (= e!3384997 e!3384996)))

(declare-fun b!5467698 () Bool)

(declare-fun e!3384992 () Bool)

(assert (=> b!5467698 (= e!3384992 e!3384994)))

(declare-fun res!2329820 () Bool)

(assert (=> b!5467698 (= res!2329820 (not (is-EmptyLang!15326 r!7292)))))

(assert (=> b!5467698 (=> (not res!2329820) (not e!3384994))))

(declare-fun c!955181 () Bool)

(declare-fun bm!403379 () Bool)

(assert (=> bm!403379 (= call!403384 (Exists!2505 (ite c!955181 lambda!290720 lambda!290721)))))

(declare-fun b!5467693 () Bool)

(assert (=> b!5467693 (= e!3384993 e!3384997)))

(assert (=> b!5467693 (= c!955181 (is-Star!15326 r!7292))))

(declare-fun d!1738739 () Bool)

(declare-fun c!955182 () Bool)

(assert (=> d!1738739 (= c!955182 (is-EmptyExpr!15326 r!7292))))

(assert (=> d!1738739 (= (matchRSpec!2429 r!7292 s!2326) e!3384992)))

(declare-fun b!5467699 () Bool)

(assert (=> b!5467699 (= e!3384992 call!403385)))

(declare-fun b!5467700 () Bool)

(assert (=> b!5467700 (= e!3384991 (matchRSpec!2429 (regTwo!31165 r!7292) s!2326))))

(declare-fun bm!403380 () Bool)

(assert (=> bm!403380 (= call!403385 (isEmpty!34112 s!2326))))

(assert (=> b!5467701 (= e!3384996 call!403384)))

(declare-fun b!5467702 () Bool)

(declare-fun c!955184 () Bool)

(assert (=> b!5467702 (= c!955184 (is-Union!15326 r!7292))))

(assert (=> b!5467702 (= e!3384995 e!3384993)))

(assert (= (and d!1738739 c!955182) b!5467699))

(assert (= (and d!1738739 (not c!955182)) b!5467698))

(assert (= (and b!5467698 res!2329820) b!5467696))

(assert (= (and b!5467696 c!955183) b!5467694))

(assert (= (and b!5467696 (not c!955183)) b!5467702))

(assert (= (and b!5467702 c!955184) b!5467692))

(assert (= (and b!5467702 (not c!955184)) b!5467693))

(assert (= (and b!5467692 (not res!2329822)) b!5467700))

(assert (= (and b!5467693 c!955181) b!5467697))

(assert (= (and b!5467693 (not c!955181)) b!5467695))

(assert (= (and b!5467697 (not res!2329821)) b!5467701))

(assert (= (or b!5467701 b!5467695) bm!403379))

(assert (= (or b!5467699 b!5467697) bm!403380))

(declare-fun m!6486892 () Bool)

(assert (=> b!5467692 m!6486892))

(declare-fun m!6486894 () Bool)

(assert (=> bm!403379 m!6486894))

(declare-fun m!6486896 () Bool)

(assert (=> b!5467700 m!6486896))

(assert (=> bm!403380 m!6486506))

(assert (=> b!5467326 d!1738739))

(declare-fun b!5467746 () Bool)

(declare-fun e!3385023 () Bool)

(declare-fun e!3385026 () Bool)

(assert (=> b!5467746 (= e!3385023 e!3385026)))

(declare-fun c!955197 () Bool)

(assert (=> b!5467746 (= c!955197 (is-EmptyLang!15326 r!7292))))

(declare-fun b!5467747 () Bool)

(declare-fun e!3385025 () Bool)

(assert (=> b!5467747 (= e!3385025 (not (= (head!11708 s!2326) (c!955111 r!7292))))))

(declare-fun b!5467748 () Bool)

(declare-fun res!2329851 () Bool)

(declare-fun e!3385027 () Bool)

(assert (=> b!5467748 (=> (not res!2329851) (not e!3385027))))

(assert (=> b!5467748 (= res!2329851 (isEmpty!34112 (tail!10805 s!2326)))))

(declare-fun d!1738751 () Bool)

(assert (=> d!1738751 e!3385023))

(declare-fun c!955198 () Bool)

(assert (=> d!1738751 (= c!955198 (is-EmptyExpr!15326 r!7292))))

(declare-fun lt!2234091 () Bool)

(declare-fun e!3385021 () Bool)

(assert (=> d!1738751 (= lt!2234091 e!3385021)))

(declare-fun c!955199 () Bool)

(assert (=> d!1738751 (= c!955199 (isEmpty!34112 s!2326))))

(assert (=> d!1738751 (validRegex!7062 r!7292)))

(assert (=> d!1738751 (= (matchR!7511 r!7292 s!2326) lt!2234091)))

(declare-fun b!5467749 () Bool)

(assert (=> b!5467749 (= e!3385021 (nullable!5471 r!7292))))

(declare-fun b!5467750 () Bool)

(declare-fun res!2329846 () Bool)

(declare-fun e!3385024 () Bool)

(assert (=> b!5467750 (=> res!2329846 e!3385024)))

(assert (=> b!5467750 (= res!2329846 (not (is-ElementMatch!15326 r!7292)))))

(assert (=> b!5467750 (= e!3385026 e!3385024)))

(declare-fun b!5467751 () Bool)

(declare-fun call!403391 () Bool)

(assert (=> b!5467751 (= e!3385023 (= lt!2234091 call!403391))))

(declare-fun b!5467752 () Bool)

(declare-fun e!3385022 () Bool)

(assert (=> b!5467752 (= e!3385024 e!3385022)))

(declare-fun res!2329844 () Bool)

(assert (=> b!5467752 (=> (not res!2329844) (not e!3385022))))

(assert (=> b!5467752 (= res!2329844 (not lt!2234091))))

(declare-fun b!5467753 () Bool)

(assert (=> b!5467753 (= e!3385026 (not lt!2234091))))

(declare-fun b!5467754 () Bool)

(declare-fun res!2329847 () Bool)

(assert (=> b!5467754 (=> res!2329847 e!3385025)))

(assert (=> b!5467754 (= res!2329847 (not (isEmpty!34112 (tail!10805 s!2326))))))

(declare-fun b!5467755 () Bool)

(assert (=> b!5467755 (= e!3385022 e!3385025)))

(declare-fun res!2329845 () Bool)

(assert (=> b!5467755 (=> res!2329845 e!3385025)))

(assert (=> b!5467755 (= res!2329845 call!403391)))

(declare-fun b!5467756 () Bool)

(assert (=> b!5467756 (= e!3385027 (= (head!11708 s!2326) (c!955111 r!7292)))))

(declare-fun bm!403386 () Bool)

(assert (=> bm!403386 (= call!403391 (isEmpty!34112 s!2326))))

(declare-fun b!5467757 () Bool)

(declare-fun res!2329850 () Bool)

(assert (=> b!5467757 (=> res!2329850 e!3385024)))

(assert (=> b!5467757 (= res!2329850 e!3385027)))

(declare-fun res!2329848 () Bool)

(assert (=> b!5467757 (=> (not res!2329848) (not e!3385027))))

(assert (=> b!5467757 (= res!2329848 lt!2234091)))

(declare-fun b!5467758 () Bool)

(declare-fun res!2329849 () Bool)

(assert (=> b!5467758 (=> (not res!2329849) (not e!3385027))))

(assert (=> b!5467758 (= res!2329849 (not call!403391))))

(declare-fun b!5467759 () Bool)

(declare-fun derivativeStep!4316 (Regex!15326 C!30922) Regex!15326)

(assert (=> b!5467759 (= e!3385021 (matchR!7511 (derivativeStep!4316 r!7292 (head!11708 s!2326)) (tail!10805 s!2326)))))

(assert (= (and d!1738751 c!955199) b!5467749))

(assert (= (and d!1738751 (not c!955199)) b!5467759))

(assert (= (and d!1738751 c!955198) b!5467751))

(assert (= (and d!1738751 (not c!955198)) b!5467746))

(assert (= (and b!5467746 c!955197) b!5467753))

(assert (= (and b!5467746 (not c!955197)) b!5467750))

(assert (= (and b!5467750 (not res!2329846)) b!5467757))

(assert (= (and b!5467757 res!2329848) b!5467758))

(assert (= (and b!5467758 res!2329849) b!5467748))

(assert (= (and b!5467748 res!2329851) b!5467756))

(assert (= (and b!5467757 (not res!2329850)) b!5467752))

(assert (= (and b!5467752 res!2329844) b!5467755))

(assert (= (and b!5467755 (not res!2329845)) b!5467754))

(assert (= (and b!5467754 (not res!2329847)) b!5467747))

(assert (= (or b!5467751 b!5467758 b!5467755) bm!403386))

(declare-fun m!6486906 () Bool)

(assert (=> b!5467749 m!6486906))

(assert (=> b!5467754 m!6486740))

(assert (=> b!5467754 m!6486740))

(declare-fun m!6486908 () Bool)

(assert (=> b!5467754 m!6486908))

(assert (=> bm!403386 m!6486506))

(assert (=> b!5467748 m!6486740))

(assert (=> b!5467748 m!6486740))

(assert (=> b!5467748 m!6486908))

(assert (=> b!5467747 m!6486736))

(assert (=> b!5467759 m!6486736))

(assert (=> b!5467759 m!6486736))

(declare-fun m!6486910 () Bool)

(assert (=> b!5467759 m!6486910))

(assert (=> b!5467759 m!6486740))

(assert (=> b!5467759 m!6486910))

(assert (=> b!5467759 m!6486740))

(declare-fun m!6486912 () Bool)

(assert (=> b!5467759 m!6486912))

(assert (=> d!1738751 m!6486506))

(assert (=> d!1738751 m!6486468))

(assert (=> b!5467756 m!6486736))

(assert (=> b!5467326 d!1738751))

(declare-fun d!1738757 () Bool)

(assert (=> d!1738757 (= (matchR!7511 r!7292 s!2326) (matchRSpec!2429 r!7292 s!2326))))

(declare-fun lt!2234096 () Unit!155102)

(declare-fun choose!41573 (Regex!15326 List!62279) Unit!155102)

(assert (=> d!1738757 (= lt!2234096 (choose!41573 r!7292 s!2326))))

(assert (=> d!1738757 (validRegex!7062 r!7292)))

(assert (=> d!1738757 (= (mainMatchTheorem!2429 r!7292 s!2326) lt!2234096)))

(declare-fun bs!1264639 () Bool)

(assert (= bs!1264639 d!1738757))

(assert (=> bs!1264639 m!6486472))

(assert (=> bs!1264639 m!6486470))

(declare-fun m!6486914 () Bool)

(assert (=> bs!1264639 m!6486914))

(assert (=> bs!1264639 m!6486468))

(assert (=> b!5467326 d!1738757))

(declare-fun d!1738759 () Bool)

(assert (=> d!1738759 (= (isEmpty!34113 (t!375507 zl!343)) (is-Nil!62154 (t!375507 zl!343)))))

(assert (=> b!5467325 d!1738759))

(declare-fun bs!1264640 () Bool)

(declare-fun d!1738761 () Bool)

(assert (= bs!1264640 (and d!1738761 d!1738667)))

(declare-fun lambda!290725 () Int)

(assert (=> bs!1264640 (= lambda!290725 lambda!290678)))

(declare-fun bs!1264641 () Bool)

(assert (= bs!1264641 (and d!1738761 d!1738669)))

(assert (=> bs!1264641 (= lambda!290725 lambda!290681)))

(declare-fun bs!1264642 () Bool)

(assert (= bs!1264642 (and d!1738761 d!1738673)))

(assert (=> bs!1264642 (= lambda!290725 lambda!290686)))

(assert (=> d!1738761 (= (inv!81563 (h!68602 zl!343)) (forall!14601 (exprs!5210 (h!68602 zl!343)) lambda!290725))))

(declare-fun bs!1264643 () Bool)

(assert (= bs!1264643 d!1738761))

(declare-fun m!6486916 () Bool)

(assert (=> bs!1264643 m!6486916))

(assert (=> b!5467334 d!1738761))

(declare-fun b!5467824 () Bool)

(declare-fun e!3385066 () (Set Context!9420))

(declare-fun call!403410 () (Set Context!9420))

(assert (=> b!5467824 (= e!3385066 call!403410)))

(declare-fun b!5467825 () Bool)

(declare-fun c!955221 () Bool)

(declare-fun e!3385065 () Bool)

(assert (=> b!5467825 (= c!955221 e!3385065)))

(declare-fun res!2329878 () Bool)

(assert (=> b!5467825 (=> (not res!2329878) (not e!3385065))))

(assert (=> b!5467825 (= res!2329878 (is-Concat!24171 r!7292))))

(declare-fun e!3385062 () (Set Context!9420))

(declare-fun e!3385061 () (Set Context!9420))

(assert (=> b!5467825 (= e!3385062 e!3385061)))

(declare-fun call!403408 () (Set Context!9420))

(declare-fun c!955223 () Bool)

(declare-fun bm!403402 () Bool)

(declare-fun call!403407 () List!62277)

(assert (=> bm!403402 (= call!403408 (derivationStepZipperDown!752 (ite c!955223 (regTwo!31165 r!7292) (regOne!31164 r!7292)) (ite c!955223 (Context!9421 Nil!62153) (Context!9421 call!403407)) (h!68603 s!2326)))))

(declare-fun b!5467826 () Bool)

(declare-fun call!403411 () (Set Context!9420))

(assert (=> b!5467826 (= e!3385061 (set.union call!403408 call!403411))))

(declare-fun bm!403403 () Bool)

(declare-fun call!403412 () List!62277)

(assert (=> bm!403403 (= call!403412 call!403407)))

(declare-fun d!1738763 () Bool)

(declare-fun c!955220 () Bool)

(assert (=> d!1738763 (= c!955220 (and (is-ElementMatch!15326 r!7292) (= (c!955111 r!7292) (h!68603 s!2326))))))

(declare-fun e!3385064 () (Set Context!9420))

(assert (=> d!1738763 (= (derivationStepZipperDown!752 r!7292 (Context!9421 Nil!62153) (h!68603 s!2326)) e!3385064)))

(declare-fun b!5467827 () Bool)

(declare-fun call!403409 () (Set Context!9420))

(assert (=> b!5467827 (= e!3385062 (set.union call!403409 call!403408))))

(declare-fun b!5467828 () Bool)

(assert (=> b!5467828 (= e!3385064 e!3385062)))

(assert (=> b!5467828 (= c!955223 (is-Union!15326 r!7292))))

(declare-fun b!5467829 () Bool)

(declare-fun c!955219 () Bool)

(assert (=> b!5467829 (= c!955219 (is-Star!15326 r!7292))))

(declare-fun e!3385063 () (Set Context!9420))

(assert (=> b!5467829 (= e!3385063 e!3385066)))

(declare-fun b!5467830 () Bool)

(assert (=> b!5467830 (= e!3385064 (set.insert (Context!9421 Nil!62153) (as set.empty (Set Context!9420))))))

(declare-fun bm!403404 () Bool)

(assert (=> bm!403404 (= call!403411 call!403409)))

(declare-fun b!5467831 () Bool)

(assert (=> b!5467831 (= e!3385065 (nullable!5471 (regOne!31164 r!7292)))))

(declare-fun c!955222 () Bool)

(declare-fun bm!403405 () Bool)

(assert (=> bm!403405 (= call!403409 (derivationStepZipperDown!752 (ite c!955223 (regOne!31165 r!7292) (ite c!955221 (regTwo!31164 r!7292) (ite c!955222 (regOne!31164 r!7292) (reg!15655 r!7292)))) (ite (or c!955223 c!955221) (Context!9421 Nil!62153) (Context!9421 call!403412)) (h!68603 s!2326)))))

(declare-fun b!5467832 () Bool)

(assert (=> b!5467832 (= e!3385063 call!403410)))

(declare-fun b!5467833 () Bool)

(assert (=> b!5467833 (= e!3385066 (as set.empty (Set Context!9420)))))

(declare-fun bm!403406 () Bool)

(assert (=> bm!403406 (= call!403410 call!403411)))

(declare-fun bm!403407 () Bool)

(declare-fun $colon$colon!1541 (List!62277 Regex!15326) List!62277)

(assert (=> bm!403407 (= call!403407 ($colon$colon!1541 (exprs!5210 (Context!9421 Nil!62153)) (ite (or c!955221 c!955222) (regTwo!31164 r!7292) r!7292)))))

(declare-fun b!5467834 () Bool)

(assert (=> b!5467834 (= e!3385061 e!3385063)))

(assert (=> b!5467834 (= c!955222 (is-Concat!24171 r!7292))))

(assert (= (and d!1738763 c!955220) b!5467830))

(assert (= (and d!1738763 (not c!955220)) b!5467828))

(assert (= (and b!5467828 c!955223) b!5467827))

(assert (= (and b!5467828 (not c!955223)) b!5467825))

(assert (= (and b!5467825 res!2329878) b!5467831))

(assert (= (and b!5467825 c!955221) b!5467826))

(assert (= (and b!5467825 (not c!955221)) b!5467834))

(assert (= (and b!5467834 c!955222) b!5467832))

(assert (= (and b!5467834 (not c!955222)) b!5467829))

(assert (= (and b!5467829 c!955219) b!5467824))

(assert (= (and b!5467829 (not c!955219)) b!5467833))

(assert (= (or b!5467832 b!5467824) bm!403403))

(assert (= (or b!5467832 b!5467824) bm!403406))

(assert (= (or b!5467826 bm!403403) bm!403407))

(assert (= (or b!5467826 bm!403406) bm!403404))

(assert (= (or b!5467827 b!5467826) bm!403402))

(assert (= (or b!5467827 bm!403404) bm!403405))

(declare-fun m!6486926 () Bool)

(assert (=> b!5467830 m!6486926))

(declare-fun m!6486928 () Bool)

(assert (=> bm!403407 m!6486928))

(declare-fun m!6486930 () Bool)

(assert (=> b!5467831 m!6486930))

(declare-fun m!6486932 () Bool)

(assert (=> bm!403405 m!6486932))

(declare-fun m!6486934 () Bool)

(assert (=> bm!403402 m!6486934))

(assert (=> b!5467324 d!1738763))

(declare-fun b!5467835 () Bool)

(declare-fun e!3385067 () (Set Context!9420))

(declare-fun call!403413 () (Set Context!9420))

(assert (=> b!5467835 (= e!3385067 call!403413)))

(declare-fun bm!403408 () Bool)

(assert (=> bm!403408 (= call!403413 (derivationStepZipperDown!752 (h!68601 (exprs!5210 (Context!9421 (Cons!62153 r!7292 Nil!62153)))) (Context!9421 (t!375506 (exprs!5210 (Context!9421 (Cons!62153 r!7292 Nil!62153))))) (h!68603 s!2326)))))

(declare-fun b!5467836 () Bool)

(assert (=> b!5467836 (= e!3385067 (as set.empty (Set Context!9420)))))

(declare-fun b!5467837 () Bool)

(declare-fun e!3385069 () (Set Context!9420))

(assert (=> b!5467837 (= e!3385069 (set.union call!403413 (derivationStepZipperUp!678 (Context!9421 (t!375506 (exprs!5210 (Context!9421 (Cons!62153 r!7292 Nil!62153))))) (h!68603 s!2326))))))

(declare-fun b!5467838 () Bool)

(assert (=> b!5467838 (= e!3385069 e!3385067)))

(declare-fun c!955224 () Bool)

(assert (=> b!5467838 (= c!955224 (is-Cons!62153 (exprs!5210 (Context!9421 (Cons!62153 r!7292 Nil!62153)))))))

(declare-fun b!5467839 () Bool)

(declare-fun e!3385068 () Bool)

(assert (=> b!5467839 (= e!3385068 (nullable!5471 (h!68601 (exprs!5210 (Context!9421 (Cons!62153 r!7292 Nil!62153))))))))

(declare-fun d!1738767 () Bool)

(declare-fun c!955225 () Bool)

(assert (=> d!1738767 (= c!955225 e!3385068)))

(declare-fun res!2329879 () Bool)

(assert (=> d!1738767 (=> (not res!2329879) (not e!3385068))))

(assert (=> d!1738767 (= res!2329879 (is-Cons!62153 (exprs!5210 (Context!9421 (Cons!62153 r!7292 Nil!62153)))))))

(assert (=> d!1738767 (= (derivationStepZipperUp!678 (Context!9421 (Cons!62153 r!7292 Nil!62153)) (h!68603 s!2326)) e!3385069)))

(assert (= (and d!1738767 res!2329879) b!5467839))

(assert (= (and d!1738767 c!955225) b!5467837))

(assert (= (and d!1738767 (not c!955225)) b!5467838))

(assert (= (and b!5467838 c!955224) b!5467835))

(assert (= (and b!5467838 (not c!955224)) b!5467836))

(assert (= (or b!5467837 b!5467835) bm!403408))

(declare-fun m!6486936 () Bool)

(assert (=> bm!403408 m!6486936))

(declare-fun m!6486938 () Bool)

(assert (=> b!5467837 m!6486938))

(declare-fun m!6486940 () Bool)

(assert (=> b!5467839 m!6486940))

(assert (=> b!5467324 d!1738767))

(declare-fun bs!1264644 () Bool)

(declare-fun d!1738769 () Bool)

(assert (= bs!1264644 (and d!1738769 b!5467316)))

(declare-fun lambda!290726 () Int)

(assert (=> bs!1264644 (= lambda!290726 lambda!290647)))

(declare-fun bs!1264645 () Bool)

(assert (= bs!1264645 (and d!1738769 d!1738687)))

(assert (=> bs!1264645 (= lambda!290726 lambda!290693)))

(declare-fun bs!1264646 () Bool)

(assert (= bs!1264646 (and d!1738769 d!1738703)))

(assert (=> bs!1264646 (= lambda!290726 lambda!290694)))

(assert (=> d!1738769 true))

(assert (=> d!1738769 (= (derivationStepZipper!1521 z!1189 (h!68603 s!2326)) (flatMap!1029 z!1189 lambda!290726))))

(declare-fun bs!1264647 () Bool)

(assert (= bs!1264647 d!1738769))

(declare-fun m!6486942 () Bool)

(assert (=> bs!1264647 m!6486942))

(assert (=> b!5467324 d!1738769))

(declare-fun b!5467880 () Bool)

(declare-fun e!3385101 () Bool)

(declare-fun call!403422 () Bool)

(assert (=> b!5467880 (= e!3385101 call!403422)))

(declare-fun b!5467881 () Bool)

(declare-fun e!3385104 () Bool)

(assert (=> b!5467881 (= e!3385104 call!403422)))

(declare-fun bm!403415 () Bool)

(declare-fun call!403421 () Bool)

(declare-fun c!955239 () Bool)

(assert (=> bm!403415 (= call!403421 (validRegex!7062 (ite c!955239 (regOne!31165 lt!2233933) (regOne!31164 lt!2233933))))))

(declare-fun b!5467882 () Bool)

(declare-fun e!3385103 () Bool)

(assert (=> b!5467882 (= e!3385103 e!3385104)))

(declare-fun res!2329898 () Bool)

(assert (=> b!5467882 (=> (not res!2329898) (not e!3385104))))

(assert (=> b!5467882 (= res!2329898 call!403421)))

(declare-fun b!5467883 () Bool)

(declare-fun e!3385102 () Bool)

(declare-fun e!3385100 () Bool)

(assert (=> b!5467883 (= e!3385102 e!3385100)))

(declare-fun c!955238 () Bool)

(assert (=> b!5467883 (= c!955238 (is-Star!15326 lt!2233933))))

(declare-fun bm!403416 () Bool)

(declare-fun call!403420 () Bool)

(assert (=> bm!403416 (= call!403422 call!403420)))

(declare-fun bm!403417 () Bool)

(assert (=> bm!403417 (= call!403420 (validRegex!7062 (ite c!955238 (reg!15655 lt!2233933) (ite c!955239 (regTwo!31165 lt!2233933) (regTwo!31164 lt!2233933)))))))

(declare-fun b!5467885 () Bool)

(declare-fun res!2329896 () Bool)

(assert (=> b!5467885 (=> res!2329896 e!3385103)))

(assert (=> b!5467885 (= res!2329896 (not (is-Concat!24171 lt!2233933)))))

(declare-fun e!3385098 () Bool)

(assert (=> b!5467885 (= e!3385098 e!3385103)))

(declare-fun b!5467886 () Bool)

(declare-fun res!2329900 () Bool)

(assert (=> b!5467886 (=> (not res!2329900) (not e!3385101))))

(assert (=> b!5467886 (= res!2329900 call!403421)))

(assert (=> b!5467886 (= e!3385098 e!3385101)))

(declare-fun b!5467887 () Bool)

(declare-fun e!3385099 () Bool)

(assert (=> b!5467887 (= e!3385100 e!3385099)))

(declare-fun res!2329897 () Bool)

(assert (=> b!5467887 (= res!2329897 (not (nullable!5471 (reg!15655 lt!2233933))))))

(assert (=> b!5467887 (=> (not res!2329897) (not e!3385099))))

(declare-fun b!5467888 () Bool)

(assert (=> b!5467888 (= e!3385099 call!403420)))

(declare-fun d!1738771 () Bool)

(declare-fun res!2329899 () Bool)

(assert (=> d!1738771 (=> res!2329899 e!3385102)))

(assert (=> d!1738771 (= res!2329899 (is-ElementMatch!15326 lt!2233933))))

(assert (=> d!1738771 (= (validRegex!7062 lt!2233933) e!3385102)))

(declare-fun b!5467884 () Bool)

(assert (=> b!5467884 (= e!3385100 e!3385098)))

(assert (=> b!5467884 (= c!955239 (is-Union!15326 lt!2233933))))

(assert (= (and d!1738771 (not res!2329899)) b!5467883))

(assert (= (and b!5467883 c!955238) b!5467887))

(assert (= (and b!5467883 (not c!955238)) b!5467884))

(assert (= (and b!5467887 res!2329897) b!5467888))

(assert (= (and b!5467884 c!955239) b!5467886))

(assert (= (and b!5467884 (not c!955239)) b!5467885))

(assert (= (and b!5467886 res!2329900) b!5467880))

(assert (= (and b!5467885 (not res!2329896)) b!5467882))

(assert (= (and b!5467882 res!2329898) b!5467881))

(assert (= (or b!5467880 b!5467881) bm!403416))

(assert (= (or b!5467886 b!5467882) bm!403415))

(assert (= (or b!5467888 bm!403416) bm!403417))

(declare-fun m!6486944 () Bool)

(assert (=> bm!403415 m!6486944))

(declare-fun m!6486946 () Bool)

(assert (=> bm!403417 m!6486946))

(declare-fun m!6486948 () Bool)

(assert (=> b!5467887 m!6486948))

(assert (=> b!5467332 d!1738771))

(declare-fun b!5467889 () Bool)

(declare-fun e!3385107 () Bool)

(declare-fun e!3385110 () Bool)

(assert (=> b!5467889 (= e!3385107 e!3385110)))

(declare-fun c!955240 () Bool)

(assert (=> b!5467889 (= c!955240 (is-EmptyLang!15326 lt!2233933))))

(declare-fun b!5467890 () Bool)

(declare-fun e!3385109 () Bool)

(assert (=> b!5467890 (= e!3385109 (not (= (head!11708 s!2326) (c!955111 lt!2233933))))))

(declare-fun b!5467891 () Bool)

(declare-fun res!2329908 () Bool)

(declare-fun e!3385111 () Bool)

(assert (=> b!5467891 (=> (not res!2329908) (not e!3385111))))

(assert (=> b!5467891 (= res!2329908 (isEmpty!34112 (tail!10805 s!2326)))))

(declare-fun d!1738773 () Bool)

(assert (=> d!1738773 e!3385107))

(declare-fun c!955241 () Bool)

(assert (=> d!1738773 (= c!955241 (is-EmptyExpr!15326 lt!2233933))))

(declare-fun lt!2234098 () Bool)

(declare-fun e!3385105 () Bool)

(assert (=> d!1738773 (= lt!2234098 e!3385105)))

(declare-fun c!955242 () Bool)

(assert (=> d!1738773 (= c!955242 (isEmpty!34112 s!2326))))

(assert (=> d!1738773 (validRegex!7062 lt!2233933)))

(assert (=> d!1738773 (= (matchR!7511 lt!2233933 s!2326) lt!2234098)))

(declare-fun b!5467892 () Bool)

(assert (=> b!5467892 (= e!3385105 (nullable!5471 lt!2233933))))

(declare-fun b!5467893 () Bool)

(declare-fun res!2329903 () Bool)

(declare-fun e!3385108 () Bool)

(assert (=> b!5467893 (=> res!2329903 e!3385108)))

(assert (=> b!5467893 (= res!2329903 (not (is-ElementMatch!15326 lt!2233933)))))

(assert (=> b!5467893 (= e!3385110 e!3385108)))

(declare-fun b!5467894 () Bool)

(declare-fun call!403423 () Bool)

(assert (=> b!5467894 (= e!3385107 (= lt!2234098 call!403423))))

(declare-fun b!5467895 () Bool)

(declare-fun e!3385106 () Bool)

(assert (=> b!5467895 (= e!3385108 e!3385106)))

(declare-fun res!2329901 () Bool)

(assert (=> b!5467895 (=> (not res!2329901) (not e!3385106))))

(assert (=> b!5467895 (= res!2329901 (not lt!2234098))))

(declare-fun b!5467896 () Bool)

(assert (=> b!5467896 (= e!3385110 (not lt!2234098))))

(declare-fun b!5467897 () Bool)

(declare-fun res!2329904 () Bool)

(assert (=> b!5467897 (=> res!2329904 e!3385109)))

(assert (=> b!5467897 (= res!2329904 (not (isEmpty!34112 (tail!10805 s!2326))))))

(declare-fun b!5467898 () Bool)

(assert (=> b!5467898 (= e!3385106 e!3385109)))

(declare-fun res!2329902 () Bool)

(assert (=> b!5467898 (=> res!2329902 e!3385109)))

(assert (=> b!5467898 (= res!2329902 call!403423)))

(declare-fun b!5467899 () Bool)

(assert (=> b!5467899 (= e!3385111 (= (head!11708 s!2326) (c!955111 lt!2233933)))))

(declare-fun bm!403418 () Bool)

(assert (=> bm!403418 (= call!403423 (isEmpty!34112 s!2326))))

(declare-fun b!5467900 () Bool)

(declare-fun res!2329907 () Bool)

(assert (=> b!5467900 (=> res!2329907 e!3385108)))

(assert (=> b!5467900 (= res!2329907 e!3385111)))

(declare-fun res!2329905 () Bool)

(assert (=> b!5467900 (=> (not res!2329905) (not e!3385111))))

(assert (=> b!5467900 (= res!2329905 lt!2234098)))

(declare-fun b!5467901 () Bool)

(declare-fun res!2329906 () Bool)

(assert (=> b!5467901 (=> (not res!2329906) (not e!3385111))))

(assert (=> b!5467901 (= res!2329906 (not call!403423))))

(declare-fun b!5467902 () Bool)

(assert (=> b!5467902 (= e!3385105 (matchR!7511 (derivativeStep!4316 lt!2233933 (head!11708 s!2326)) (tail!10805 s!2326)))))

(assert (= (and d!1738773 c!955242) b!5467892))

(assert (= (and d!1738773 (not c!955242)) b!5467902))

(assert (= (and d!1738773 c!955241) b!5467894))

(assert (= (and d!1738773 (not c!955241)) b!5467889))

(assert (= (and b!5467889 c!955240) b!5467896))

(assert (= (and b!5467889 (not c!955240)) b!5467893))

(assert (= (and b!5467893 (not res!2329903)) b!5467900))

(assert (= (and b!5467900 res!2329905) b!5467901))

(assert (= (and b!5467901 res!2329906) b!5467891))

(assert (= (and b!5467891 res!2329908) b!5467899))

(assert (= (and b!5467900 (not res!2329907)) b!5467895))

(assert (= (and b!5467895 res!2329901) b!5467898))

(assert (= (and b!5467898 (not res!2329902)) b!5467897))

(assert (= (and b!5467897 (not res!2329904)) b!5467890))

(assert (= (or b!5467894 b!5467901 b!5467898) bm!403418))

(declare-fun m!6486950 () Bool)

(assert (=> b!5467892 m!6486950))

(assert (=> b!5467897 m!6486740))

(assert (=> b!5467897 m!6486740))

(assert (=> b!5467897 m!6486908))

(assert (=> bm!403418 m!6486506))

(assert (=> b!5467891 m!6486740))

(assert (=> b!5467891 m!6486740))

(assert (=> b!5467891 m!6486908))

(assert (=> b!5467890 m!6486736))

(assert (=> b!5467902 m!6486736))

(assert (=> b!5467902 m!6486736))

(declare-fun m!6486952 () Bool)

(assert (=> b!5467902 m!6486952))

(assert (=> b!5467902 m!6486740))

(assert (=> b!5467902 m!6486952))

(assert (=> b!5467902 m!6486740))

(declare-fun m!6486954 () Bool)

(assert (=> b!5467902 m!6486954))

(assert (=> d!1738773 m!6486506))

(assert (=> d!1738773 m!6486476))

(assert (=> b!5467899 m!6486736))

(assert (=> b!5467332 d!1738773))

(declare-fun bs!1264648 () Bool)

(declare-fun b!5467918 () Bool)

(assert (= bs!1264648 (and b!5467918 d!1738711)))

(declare-fun lambda!290729 () Int)

(assert (=> bs!1264648 (= (and (= (reg!15655 lt!2233933) (reg!15655 r!7292)) (= lt!2233933 (Star!15326 (reg!15655 r!7292)))) (= lambda!290729 lambda!290706))))

(assert (=> bs!1264648 (not (= lambda!290729 lambda!290705))))

(declare-fun bs!1264649 () Bool)

(assert (= bs!1264649 (and b!5467918 d!1738709)))

(assert (=> bs!1264649 (not (= lambda!290729 lambda!290699))))

(declare-fun bs!1264650 () Bool)

(assert (= bs!1264650 (and b!5467918 b!5467308)))

(assert (=> bs!1264650 (not (= lambda!290729 lambda!290646))))

(assert (=> bs!1264650 (= (and (= (reg!15655 lt!2233933) (reg!15655 r!7292)) (= lt!2233933 r!7292)) (= lambda!290729 lambda!290645))))

(assert (=> bs!1264650 (not (= lambda!290729 lambda!290644))))

(declare-fun bs!1264651 () Bool)

(assert (= bs!1264651 (and b!5467918 b!5467701)))

(assert (=> bs!1264651 (= (and (= (reg!15655 lt!2233933) (reg!15655 r!7292)) (= lt!2233933 r!7292)) (= lambda!290729 lambda!290720))))

(declare-fun bs!1264652 () Bool)

(assert (= bs!1264652 (and b!5467918 b!5467695)))

(assert (=> bs!1264652 (not (= lambda!290729 lambda!290721))))

(declare-fun bs!1264653 () Bool)

(assert (= bs!1264653 (and b!5467918 d!1738725)))

(assert (=> bs!1264653 (not (= lambda!290729 lambda!290711))))

(assert (=> bs!1264649 (not (= lambda!290729 lambda!290700))))

(assert (=> b!5467918 true))

(assert (=> b!5467918 true))

(declare-fun bs!1264654 () Bool)

(declare-fun b!5467912 () Bool)

(assert (= bs!1264654 (and b!5467912 d!1738711)))

(declare-fun lambda!290732 () Int)

(assert (=> bs!1264654 (not (= lambda!290732 lambda!290706))))

(assert (=> bs!1264654 (not (= lambda!290732 lambda!290705))))

(declare-fun bs!1264655 () Bool)

(assert (= bs!1264655 (and b!5467912 d!1738709)))

(assert (=> bs!1264655 (not (= lambda!290732 lambda!290699))))

(declare-fun bs!1264656 () Bool)

(assert (= bs!1264656 (and b!5467912 b!5467308)))

(assert (=> bs!1264656 (= (and (= (regOne!31164 lt!2233933) (reg!15655 r!7292)) (= (regTwo!31164 lt!2233933) r!7292)) (= lambda!290732 lambda!290646))))

(assert (=> bs!1264656 (not (= lambda!290732 lambda!290645))))

(assert (=> bs!1264656 (not (= lambda!290732 lambda!290644))))

(declare-fun bs!1264657 () Bool)

(assert (= bs!1264657 (and b!5467912 b!5467701)))

(assert (=> bs!1264657 (not (= lambda!290732 lambda!290720))))

(declare-fun bs!1264658 () Bool)

(assert (= bs!1264658 (and b!5467912 b!5467695)))

(assert (=> bs!1264658 (= (and (= (regOne!31164 lt!2233933) (regOne!31164 r!7292)) (= (regTwo!31164 lt!2233933) (regTwo!31164 r!7292))) (= lambda!290732 lambda!290721))))

(declare-fun bs!1264659 () Bool)

(assert (= bs!1264659 (and b!5467912 d!1738725)))

(assert (=> bs!1264659 (not (= lambda!290732 lambda!290711))))

(declare-fun bs!1264660 () Bool)

(assert (= bs!1264660 (and b!5467912 b!5467918)))

(assert (=> bs!1264660 (not (= lambda!290732 lambda!290729))))

(assert (=> bs!1264655 (= (and (= (regOne!31164 lt!2233933) (reg!15655 r!7292)) (= (regTwo!31164 lt!2233933) r!7292)) (= lambda!290732 lambda!290700))))

(assert (=> b!5467912 true))

(assert (=> b!5467912 true))

(declare-fun b!5467909 () Bool)

(declare-fun e!3385116 () Bool)

(declare-fun e!3385114 () Bool)

(assert (=> b!5467909 (= e!3385116 e!3385114)))

(declare-fun res!2329917 () Bool)

(assert (=> b!5467909 (= res!2329917 (matchRSpec!2429 (regOne!31165 lt!2233933) s!2326))))

(assert (=> b!5467909 (=> res!2329917 e!3385114)))

(declare-fun b!5467911 () Bool)

(declare-fun e!3385118 () Bool)

(assert (=> b!5467911 (= e!3385118 (= s!2326 (Cons!62155 (c!955111 lt!2233933) Nil!62155)))))

(declare-fun e!3385120 () Bool)

(declare-fun call!403424 () Bool)

(assert (=> b!5467912 (= e!3385120 call!403424)))

(declare-fun b!5467913 () Bool)

(declare-fun c!955245 () Bool)

(assert (=> b!5467913 (= c!955245 (is-ElementMatch!15326 lt!2233933))))

(declare-fun e!3385117 () Bool)

(assert (=> b!5467913 (= e!3385117 e!3385118)))

(declare-fun b!5467914 () Bool)

(declare-fun res!2329916 () Bool)

(declare-fun e!3385119 () Bool)

(assert (=> b!5467914 (=> res!2329916 e!3385119)))

(declare-fun call!403425 () Bool)

(assert (=> b!5467914 (= res!2329916 call!403425)))

(assert (=> b!5467914 (= e!3385120 e!3385119)))

(declare-fun b!5467915 () Bool)

(declare-fun e!3385115 () Bool)

(assert (=> b!5467915 (= e!3385115 e!3385117)))

(declare-fun res!2329915 () Bool)

(assert (=> b!5467915 (= res!2329915 (not (is-EmptyLang!15326 lt!2233933)))))

(assert (=> b!5467915 (=> (not res!2329915) (not e!3385117))))

(declare-fun c!955243 () Bool)

(declare-fun bm!403419 () Bool)

(assert (=> bm!403419 (= call!403424 (Exists!2505 (ite c!955243 lambda!290729 lambda!290732)))))

(declare-fun b!5467910 () Bool)

(assert (=> b!5467910 (= e!3385116 e!3385120)))

(assert (=> b!5467910 (= c!955243 (is-Star!15326 lt!2233933))))

(declare-fun d!1738775 () Bool)

(declare-fun c!955244 () Bool)

(assert (=> d!1738775 (= c!955244 (is-EmptyExpr!15326 lt!2233933))))

(assert (=> d!1738775 (= (matchRSpec!2429 lt!2233933 s!2326) e!3385115)))

(declare-fun b!5467916 () Bool)

(assert (=> b!5467916 (= e!3385115 call!403425)))

(declare-fun b!5467917 () Bool)

(assert (=> b!5467917 (= e!3385114 (matchRSpec!2429 (regTwo!31165 lt!2233933) s!2326))))

(declare-fun bm!403420 () Bool)

(assert (=> bm!403420 (= call!403425 (isEmpty!34112 s!2326))))

(assert (=> b!5467918 (= e!3385119 call!403424)))

(declare-fun b!5467919 () Bool)

(declare-fun c!955246 () Bool)

(assert (=> b!5467919 (= c!955246 (is-Union!15326 lt!2233933))))

(assert (=> b!5467919 (= e!3385118 e!3385116)))

(assert (= (and d!1738775 c!955244) b!5467916))

(assert (= (and d!1738775 (not c!955244)) b!5467915))

(assert (= (and b!5467915 res!2329915) b!5467913))

(assert (= (and b!5467913 c!955245) b!5467911))

(assert (= (and b!5467913 (not c!955245)) b!5467919))

(assert (= (and b!5467919 c!955246) b!5467909))

(assert (= (and b!5467919 (not c!955246)) b!5467910))

(assert (= (and b!5467909 (not res!2329917)) b!5467917))

(assert (= (and b!5467910 c!955243) b!5467914))

(assert (= (and b!5467910 (not c!955243)) b!5467912))

(assert (= (and b!5467914 (not res!2329916)) b!5467918))

(assert (= (or b!5467918 b!5467912) bm!403419))

(assert (= (or b!5467916 b!5467914) bm!403420))

(declare-fun m!6486956 () Bool)

(assert (=> b!5467909 m!6486956))

(declare-fun m!6486958 () Bool)

(assert (=> bm!403419 m!6486958))

(declare-fun m!6486960 () Bool)

(assert (=> b!5467917 m!6486960))

(assert (=> bm!403420 m!6486506))

(assert (=> b!5467332 d!1738775))

(declare-fun d!1738777 () Bool)

(assert (=> d!1738777 (= (matchR!7511 lt!2233933 s!2326) (matchRSpec!2429 lt!2233933 s!2326))))

(declare-fun lt!2234099 () Unit!155102)

(assert (=> d!1738777 (= lt!2234099 (choose!41573 lt!2233933 s!2326))))

(assert (=> d!1738777 (validRegex!7062 lt!2233933)))

(assert (=> d!1738777 (= (mainMatchTheorem!2429 lt!2233933 s!2326) lt!2234099)))

(declare-fun bs!1264661 () Bool)

(assert (= bs!1264661 d!1738777))

(assert (=> bs!1264661 m!6486478))

(assert (=> bs!1264661 m!6486480))

(declare-fun m!6486962 () Bool)

(assert (=> bs!1264661 m!6486962))

(assert (=> bs!1264661 m!6486476))

(assert (=> b!5467332 d!1738777))

(declare-fun b!5467924 () Bool)

(declare-fun e!3385126 () Bool)

(declare-fun call!403432 () Bool)

(assert (=> b!5467924 (= e!3385126 call!403432)))

(declare-fun b!5467925 () Bool)

(declare-fun e!3385129 () Bool)

(assert (=> b!5467925 (= e!3385129 call!403432)))

(declare-fun bm!403425 () Bool)

(declare-fun call!403431 () Bool)

(declare-fun c!955248 () Bool)

(assert (=> bm!403425 (= call!403431 (validRegex!7062 (ite c!955248 (regOne!31165 r!7292) (regOne!31164 r!7292))))))

(declare-fun b!5467926 () Bool)

(declare-fun e!3385128 () Bool)

(assert (=> b!5467926 (= e!3385128 e!3385129)))

(declare-fun res!2329924 () Bool)

(assert (=> b!5467926 (=> (not res!2329924) (not e!3385129))))

(assert (=> b!5467926 (= res!2329924 call!403431)))

(declare-fun b!5467927 () Bool)

(declare-fun e!3385127 () Bool)

(declare-fun e!3385125 () Bool)

(assert (=> b!5467927 (= e!3385127 e!3385125)))

(declare-fun c!955247 () Bool)

(assert (=> b!5467927 (= c!955247 (is-Star!15326 r!7292))))

(declare-fun bm!403426 () Bool)

(declare-fun call!403430 () Bool)

(assert (=> bm!403426 (= call!403432 call!403430)))

(declare-fun bm!403427 () Bool)

(assert (=> bm!403427 (= call!403430 (validRegex!7062 (ite c!955247 (reg!15655 r!7292) (ite c!955248 (regTwo!31165 r!7292) (regTwo!31164 r!7292)))))))

(declare-fun b!5467929 () Bool)

(declare-fun res!2329922 () Bool)

(assert (=> b!5467929 (=> res!2329922 e!3385128)))

(assert (=> b!5467929 (= res!2329922 (not (is-Concat!24171 r!7292)))))

(declare-fun e!3385123 () Bool)

(assert (=> b!5467929 (= e!3385123 e!3385128)))

(declare-fun b!5467930 () Bool)

(declare-fun res!2329926 () Bool)

(assert (=> b!5467930 (=> (not res!2329926) (not e!3385126))))

(assert (=> b!5467930 (= res!2329926 call!403431)))

(assert (=> b!5467930 (= e!3385123 e!3385126)))

(declare-fun b!5467931 () Bool)

(declare-fun e!3385124 () Bool)

(assert (=> b!5467931 (= e!3385125 e!3385124)))

(declare-fun res!2329923 () Bool)

(assert (=> b!5467931 (= res!2329923 (not (nullable!5471 (reg!15655 r!7292))))))

(assert (=> b!5467931 (=> (not res!2329923) (not e!3385124))))

(declare-fun b!5467932 () Bool)

(assert (=> b!5467932 (= e!3385124 call!403430)))

(declare-fun d!1738779 () Bool)

(declare-fun res!2329925 () Bool)

(assert (=> d!1738779 (=> res!2329925 e!3385127)))

(assert (=> d!1738779 (= res!2329925 (is-ElementMatch!15326 r!7292))))

(assert (=> d!1738779 (= (validRegex!7062 r!7292) e!3385127)))

(declare-fun b!5467928 () Bool)

(assert (=> b!5467928 (= e!3385125 e!3385123)))

(assert (=> b!5467928 (= c!955248 (is-Union!15326 r!7292))))

(assert (= (and d!1738779 (not res!2329925)) b!5467927))

(assert (= (and b!5467927 c!955247) b!5467931))

(assert (= (and b!5467927 (not c!955247)) b!5467928))

(assert (= (and b!5467931 res!2329923) b!5467932))

(assert (= (and b!5467928 c!955248) b!5467930))

(assert (= (and b!5467928 (not c!955248)) b!5467929))

(assert (= (and b!5467930 res!2329926) b!5467924))

(assert (= (and b!5467929 (not res!2329922)) b!5467926))

(assert (= (and b!5467926 res!2329924) b!5467925))

(assert (= (or b!5467924 b!5467925) bm!403426))

(assert (= (or b!5467930 b!5467926) bm!403425))

(assert (= (or b!5467932 bm!403426) bm!403427))

(declare-fun m!6486964 () Bool)

(assert (=> bm!403425 m!6486964))

(declare-fun m!6486966 () Bool)

(assert (=> bm!403427 m!6486966))

(declare-fun m!6486968 () Bool)

(assert (=> b!5467931 m!6486968))

(assert (=> start!572284 d!1738779))

(declare-fun b!5467933 () Bool)

(declare-fun e!3385135 () (Set Context!9420))

(declare-fun call!403436 () (Set Context!9420))

(assert (=> b!5467933 (= e!3385135 call!403436)))

(declare-fun b!5467934 () Bool)

(declare-fun c!955251 () Bool)

(declare-fun e!3385134 () Bool)

(assert (=> b!5467934 (= c!955251 e!3385134)))

(declare-fun res!2329927 () Bool)

(assert (=> b!5467934 (=> (not res!2329927) (not e!3385134))))

(assert (=> b!5467934 (= res!2329927 (is-Concat!24171 (reg!15655 r!7292)))))

(declare-fun e!3385131 () (Set Context!9420))

(declare-fun e!3385130 () (Set Context!9420))

(assert (=> b!5467934 (= e!3385131 e!3385130)))

(declare-fun c!955253 () Bool)

(declare-fun bm!403428 () Bool)

(declare-fun call!403434 () (Set Context!9420))

(declare-fun call!403433 () List!62277)

(assert (=> bm!403428 (= call!403434 (derivationStepZipperDown!752 (ite c!955253 (regTwo!31165 (reg!15655 r!7292)) (regOne!31164 (reg!15655 r!7292))) (ite c!955253 lt!2233932 (Context!9421 call!403433)) (h!68603 s!2326)))))

(declare-fun b!5467935 () Bool)

(declare-fun call!403437 () (Set Context!9420))

(assert (=> b!5467935 (= e!3385130 (set.union call!403434 call!403437))))

(declare-fun bm!403429 () Bool)

(declare-fun call!403438 () List!62277)

(assert (=> bm!403429 (= call!403438 call!403433)))

(declare-fun d!1738781 () Bool)

(declare-fun c!955250 () Bool)

(assert (=> d!1738781 (= c!955250 (and (is-ElementMatch!15326 (reg!15655 r!7292)) (= (c!955111 (reg!15655 r!7292)) (h!68603 s!2326))))))

(declare-fun e!3385133 () (Set Context!9420))

(assert (=> d!1738781 (= (derivationStepZipperDown!752 (reg!15655 r!7292) lt!2233932 (h!68603 s!2326)) e!3385133)))

(declare-fun b!5467936 () Bool)

(declare-fun call!403435 () (Set Context!9420))

(assert (=> b!5467936 (= e!3385131 (set.union call!403435 call!403434))))

(declare-fun b!5467937 () Bool)

(assert (=> b!5467937 (= e!3385133 e!3385131)))

(assert (=> b!5467937 (= c!955253 (is-Union!15326 (reg!15655 r!7292)))))

(declare-fun b!5467938 () Bool)

(declare-fun c!955249 () Bool)

(assert (=> b!5467938 (= c!955249 (is-Star!15326 (reg!15655 r!7292)))))

(declare-fun e!3385132 () (Set Context!9420))

(assert (=> b!5467938 (= e!3385132 e!3385135)))

(declare-fun b!5467939 () Bool)

(assert (=> b!5467939 (= e!3385133 (set.insert lt!2233932 (as set.empty (Set Context!9420))))))

(declare-fun bm!403430 () Bool)

(assert (=> bm!403430 (= call!403437 call!403435)))

(declare-fun b!5467940 () Bool)

(assert (=> b!5467940 (= e!3385134 (nullable!5471 (regOne!31164 (reg!15655 r!7292))))))

(declare-fun bm!403431 () Bool)

(declare-fun c!955252 () Bool)

(assert (=> bm!403431 (= call!403435 (derivationStepZipperDown!752 (ite c!955253 (regOne!31165 (reg!15655 r!7292)) (ite c!955251 (regTwo!31164 (reg!15655 r!7292)) (ite c!955252 (regOne!31164 (reg!15655 r!7292)) (reg!15655 (reg!15655 r!7292))))) (ite (or c!955253 c!955251) lt!2233932 (Context!9421 call!403438)) (h!68603 s!2326)))))

(declare-fun b!5467941 () Bool)

(assert (=> b!5467941 (= e!3385132 call!403436)))

(declare-fun b!5467942 () Bool)

(assert (=> b!5467942 (= e!3385135 (as set.empty (Set Context!9420)))))

(declare-fun bm!403432 () Bool)

(assert (=> bm!403432 (= call!403436 call!403437)))

(declare-fun bm!403433 () Bool)

(assert (=> bm!403433 (= call!403433 ($colon$colon!1541 (exprs!5210 lt!2233932) (ite (or c!955251 c!955252) (regTwo!31164 (reg!15655 r!7292)) (reg!15655 r!7292))))))

(declare-fun b!5467943 () Bool)

(assert (=> b!5467943 (= e!3385130 e!3385132)))

(assert (=> b!5467943 (= c!955252 (is-Concat!24171 (reg!15655 r!7292)))))

(assert (= (and d!1738781 c!955250) b!5467939))

(assert (= (and d!1738781 (not c!955250)) b!5467937))

(assert (= (and b!5467937 c!955253) b!5467936))

(assert (= (and b!5467937 (not c!955253)) b!5467934))

(assert (= (and b!5467934 res!2329927) b!5467940))

(assert (= (and b!5467934 c!955251) b!5467935))

(assert (= (and b!5467934 (not c!955251)) b!5467943))

(assert (= (and b!5467943 c!955252) b!5467941))

(assert (= (and b!5467943 (not c!955252)) b!5467938))

(assert (= (and b!5467938 c!955249) b!5467933))

(assert (= (and b!5467938 (not c!955249)) b!5467942))

(assert (= (or b!5467941 b!5467933) bm!403429))

(assert (= (or b!5467941 b!5467933) bm!403432))

(assert (= (or b!5467935 bm!403429) bm!403433))

(assert (= (or b!5467935 bm!403432) bm!403430))

(assert (= (or b!5467936 b!5467935) bm!403428))

(assert (= (or b!5467936 bm!403430) bm!403431))

(assert (=> b!5467939 m!6486532))

(declare-fun m!6486970 () Bool)

(assert (=> bm!403433 m!6486970))

(declare-fun m!6486972 () Bool)

(assert (=> b!5467940 m!6486972))

(declare-fun m!6486974 () Bool)

(assert (=> bm!403431 m!6486974))

(declare-fun m!6486976 () Bool)

(assert (=> bm!403428 m!6486976))

(assert (=> b!5467331 d!1738781))

(declare-fun d!1738783 () Bool)

(assert (=> d!1738783 (= (flatMap!1029 lt!2233943 lambda!290647) (choose!41563 lt!2233943 lambda!290647))))

(declare-fun bs!1264662 () Bool)

(assert (= bs!1264662 d!1738783))

(declare-fun m!6486978 () Bool)

(assert (=> bs!1264662 m!6486978))

(assert (=> b!5467331 d!1738783))

(declare-fun b!5467955 () Bool)

(declare-fun e!3385143 () (Set Context!9420))

(declare-fun call!403441 () (Set Context!9420))

(assert (=> b!5467955 (= e!3385143 call!403441)))

(declare-fun bm!403436 () Bool)

(assert (=> bm!403436 (= call!403441 (derivationStepZipperDown!752 (h!68601 (exprs!5210 lt!2233942)) (Context!9421 (t!375506 (exprs!5210 lt!2233942))) (h!68603 s!2326)))))

(declare-fun b!5467956 () Bool)

(assert (=> b!5467956 (= e!3385143 (as set.empty (Set Context!9420)))))

(declare-fun e!3385145 () (Set Context!9420))

(declare-fun b!5467957 () Bool)

(assert (=> b!5467957 (= e!3385145 (set.union call!403441 (derivationStepZipperUp!678 (Context!9421 (t!375506 (exprs!5210 lt!2233942))) (h!68603 s!2326))))))

(declare-fun b!5467958 () Bool)

(assert (=> b!5467958 (= e!3385145 e!3385143)))

(declare-fun c!955258 () Bool)

(assert (=> b!5467958 (= c!955258 (is-Cons!62153 (exprs!5210 lt!2233942)))))

(declare-fun b!5467959 () Bool)

(declare-fun e!3385144 () Bool)

(assert (=> b!5467959 (= e!3385144 (nullable!5471 (h!68601 (exprs!5210 lt!2233942))))))

(declare-fun d!1738785 () Bool)

(declare-fun c!955259 () Bool)

(assert (=> d!1738785 (= c!955259 e!3385144)))

(declare-fun res!2329931 () Bool)

(assert (=> d!1738785 (=> (not res!2329931) (not e!3385144))))

(assert (=> d!1738785 (= res!2329931 (is-Cons!62153 (exprs!5210 lt!2233942)))))

(assert (=> d!1738785 (= (derivationStepZipperUp!678 lt!2233942 (h!68603 s!2326)) e!3385145)))

(assert (= (and d!1738785 res!2329931) b!5467959))

(assert (= (and d!1738785 c!955259) b!5467957))

(assert (= (and d!1738785 (not c!955259)) b!5467958))

(assert (= (and b!5467958 c!955258) b!5467955))

(assert (= (and b!5467958 (not c!955258)) b!5467956))

(assert (= (or b!5467957 b!5467955) bm!403436))

(declare-fun m!6486980 () Bool)

(assert (=> bm!403436 m!6486980))

(declare-fun m!6486982 () Bool)

(assert (=> b!5467957 m!6486982))

(declare-fun m!6486984 () Bool)

(assert (=> b!5467959 m!6486984))

(assert (=> b!5467331 d!1738785))

(declare-fun d!1738787 () Bool)

(assert (=> d!1738787 (= (flatMap!1029 lt!2233943 lambda!290647) (dynLambda!24418 lambda!290647 lt!2233942))))

(declare-fun lt!2234100 () Unit!155102)

(assert (=> d!1738787 (= lt!2234100 (choose!41564 lt!2233943 lt!2233942 lambda!290647))))

(assert (=> d!1738787 (= lt!2233943 (set.insert lt!2233942 (as set.empty (Set Context!9420))))))

(assert (=> d!1738787 (= (lemmaFlatMapOnSingletonSet!561 lt!2233943 lt!2233942 lambda!290647) lt!2234100)))

(declare-fun b_lambda!207889 () Bool)

(assert (=> (not b_lambda!207889) (not d!1738787)))

(declare-fun bs!1264666 () Bool)

(assert (= bs!1264666 d!1738787))

(assert (=> bs!1264666 m!6486528))

(declare-fun m!6486986 () Bool)

(assert (=> bs!1264666 m!6486986))

(declare-fun m!6486988 () Bool)

(assert (=> bs!1264666 m!6486988))

(assert (=> bs!1264666 m!6486524))

(assert (=> b!5467331 d!1738787))

(declare-fun bs!1264675 () Bool)

(declare-fun d!1738789 () Bool)

(assert (= bs!1264675 (and d!1738789 d!1738667)))

(declare-fun lambda!290737 () Int)

(assert (=> bs!1264675 (= lambda!290737 lambda!290678)))

(declare-fun bs!1264676 () Bool)

(assert (= bs!1264676 (and d!1738789 d!1738669)))

(assert (=> bs!1264676 (= lambda!290737 lambda!290681)))

(declare-fun bs!1264677 () Bool)

(assert (= bs!1264677 (and d!1738789 d!1738673)))

(assert (=> bs!1264677 (= lambda!290737 lambda!290686)))

(declare-fun bs!1264678 () Bool)

(assert (= bs!1264678 (and d!1738789 d!1738761)))

(assert (=> bs!1264678 (= lambda!290737 lambda!290725)))

(declare-fun b!5467981 () Bool)

(declare-fun e!3385161 () Bool)

(declare-fun lt!2234107 () Regex!15326)

(assert (=> b!5467981 (= e!3385161 (= lt!2234107 (head!11707 (exprs!5210 (h!68602 zl!343)))))))

(declare-fun b!5467982 () Bool)

(declare-fun e!3385163 () Regex!15326)

(declare-fun e!3385158 () Regex!15326)

(assert (=> b!5467982 (= e!3385163 e!3385158)))

(declare-fun c!955269 () Bool)

(assert (=> b!5467982 (= c!955269 (is-Cons!62153 (exprs!5210 (h!68602 zl!343))))))

(declare-fun b!5467983 () Bool)

(assert (=> b!5467983 (= e!3385158 (Concat!24171 (h!68601 (exprs!5210 (h!68602 zl!343))) (generalisedConcat!995 (t!375506 (exprs!5210 (h!68602 zl!343))))))))

(declare-fun b!5467984 () Bool)

(declare-fun e!3385162 () Bool)

(assert (=> b!5467984 (= e!3385162 e!3385161)))

(declare-fun c!955271 () Bool)

(assert (=> b!5467984 (= c!955271 (isEmpty!34116 (tail!10804 (exprs!5210 (h!68602 zl!343)))))))

(declare-fun b!5467985 () Bool)

(assert (=> b!5467985 (= e!3385163 (h!68601 (exprs!5210 (h!68602 zl!343))))))

(declare-fun b!5467986 () Bool)

(declare-fun e!3385160 () Bool)

(assert (=> b!5467986 (= e!3385160 (isEmpty!34116 (t!375506 (exprs!5210 (h!68602 zl!343)))))))

(declare-fun b!5467987 () Bool)

(assert (=> b!5467987 (= e!3385158 EmptyExpr!15326)))

(declare-fun e!3385159 () Bool)

(assert (=> d!1738789 e!3385159))

(declare-fun res!2329936 () Bool)

(assert (=> d!1738789 (=> (not res!2329936) (not e!3385159))))

(assert (=> d!1738789 (= res!2329936 (validRegex!7062 lt!2234107))))

(assert (=> d!1738789 (= lt!2234107 e!3385163)))

(declare-fun c!955270 () Bool)

(assert (=> d!1738789 (= c!955270 e!3385160)))

(declare-fun res!2329937 () Bool)

(assert (=> d!1738789 (=> (not res!2329937) (not e!3385160))))

(assert (=> d!1738789 (= res!2329937 (is-Cons!62153 (exprs!5210 (h!68602 zl!343))))))

(assert (=> d!1738789 (forall!14601 (exprs!5210 (h!68602 zl!343)) lambda!290737)))

(assert (=> d!1738789 (= (generalisedConcat!995 (exprs!5210 (h!68602 zl!343))) lt!2234107)))

(declare-fun b!5467980 () Bool)

(assert (=> b!5467980 (= e!3385159 e!3385162)))

(declare-fun c!955268 () Bool)

(assert (=> b!5467980 (= c!955268 (isEmpty!34116 (exprs!5210 (h!68602 zl!343))))))

(declare-fun b!5467988 () Bool)

(declare-fun isEmptyExpr!1027 (Regex!15326) Bool)

(assert (=> b!5467988 (= e!3385162 (isEmptyExpr!1027 lt!2234107))))

(declare-fun b!5467989 () Bool)

(declare-fun isConcat!550 (Regex!15326) Bool)

(assert (=> b!5467989 (= e!3385161 (isConcat!550 lt!2234107))))

(assert (= (and d!1738789 res!2329937) b!5467986))

(assert (= (and d!1738789 c!955270) b!5467985))

(assert (= (and d!1738789 (not c!955270)) b!5467982))

(assert (= (and b!5467982 c!955269) b!5467983))

(assert (= (and b!5467982 (not c!955269)) b!5467987))

(assert (= (and d!1738789 res!2329936) b!5467980))

(assert (= (and b!5467980 c!955268) b!5467988))

(assert (= (and b!5467980 (not c!955268)) b!5467984))

(assert (= (and b!5467984 c!955271) b!5467981))

(assert (= (and b!5467984 (not c!955271)) b!5467989))

(declare-fun m!6487004 () Bool)

(assert (=> b!5467981 m!6487004))

(declare-fun m!6487006 () Bool)

(assert (=> b!5467984 m!6487006))

(assert (=> b!5467984 m!6487006))

(declare-fun m!6487008 () Bool)

(assert (=> b!5467984 m!6487008))

(declare-fun m!6487010 () Bool)

(assert (=> b!5467980 m!6487010))

(declare-fun m!6487012 () Bool)

(assert (=> b!5467989 m!6487012))

(declare-fun m!6487014 () Bool)

(assert (=> b!5467983 m!6487014))

(declare-fun m!6487016 () Bool)

(assert (=> b!5467988 m!6487016))

(declare-fun m!6487018 () Bool)

(assert (=> b!5467986 m!6487018))

(declare-fun m!6487020 () Bool)

(assert (=> d!1738789 m!6487020))

(declare-fun m!6487022 () Bool)

(assert (=> d!1738789 m!6487022))

(assert (=> b!5467312 d!1738789))

(declare-fun b!5468003 () Bool)

(declare-fun e!3385166 () Bool)

(declare-fun tp!1503794 () Bool)

(declare-fun tp!1503796 () Bool)

(assert (=> b!5468003 (= e!3385166 (and tp!1503794 tp!1503796))))

(declare-fun b!5468002 () Bool)

(declare-fun tp!1503792 () Bool)

(assert (=> b!5468002 (= e!3385166 tp!1503792)))

(assert (=> b!5467322 (= tp!1503743 e!3385166)))

(declare-fun b!5468001 () Bool)

(declare-fun tp!1503793 () Bool)

(declare-fun tp!1503795 () Bool)

(assert (=> b!5468001 (= e!3385166 (and tp!1503793 tp!1503795))))

(declare-fun b!5468000 () Bool)

(assert (=> b!5468000 (= e!3385166 tp_is_empty!39905)))

(assert (= (and b!5467322 (is-ElementMatch!15326 (regOne!31164 r!7292))) b!5468000))

(assert (= (and b!5467322 (is-Concat!24171 (regOne!31164 r!7292))) b!5468001))

(assert (= (and b!5467322 (is-Star!15326 (regOne!31164 r!7292))) b!5468002))

(assert (= (and b!5467322 (is-Union!15326 (regOne!31164 r!7292))) b!5468003))

(declare-fun b!5468007 () Bool)

(declare-fun e!3385167 () Bool)

(declare-fun tp!1503799 () Bool)

(declare-fun tp!1503801 () Bool)

(assert (=> b!5468007 (= e!3385167 (and tp!1503799 tp!1503801))))

(declare-fun b!5468006 () Bool)

(declare-fun tp!1503797 () Bool)

(assert (=> b!5468006 (= e!3385167 tp!1503797)))

(assert (=> b!5467322 (= tp!1503744 e!3385167)))

(declare-fun b!5468005 () Bool)

(declare-fun tp!1503798 () Bool)

(declare-fun tp!1503800 () Bool)

(assert (=> b!5468005 (= e!3385167 (and tp!1503798 tp!1503800))))

(declare-fun b!5468004 () Bool)

(assert (=> b!5468004 (= e!3385167 tp_is_empty!39905)))

(assert (= (and b!5467322 (is-ElementMatch!15326 (regTwo!31164 r!7292))) b!5468004))

(assert (= (and b!5467322 (is-Concat!24171 (regTwo!31164 r!7292))) b!5468005))

(assert (= (and b!5467322 (is-Star!15326 (regTwo!31164 r!7292))) b!5468006))

(assert (= (and b!5467322 (is-Union!15326 (regTwo!31164 r!7292))) b!5468007))

(declare-fun condSetEmpty!35866 () Bool)

(assert (=> setNonEmpty!35860 (= condSetEmpty!35866 (= setRest!35860 (as set.empty (Set Context!9420))))))

(declare-fun setRes!35866 () Bool)

(assert (=> setNonEmpty!35860 (= tp!1503745 setRes!35866)))

(declare-fun setIsEmpty!35866 () Bool)

(assert (=> setIsEmpty!35866 setRes!35866))

(declare-fun setElem!35866 () Context!9420)

(declare-fun tp!1503807 () Bool)

(declare-fun setNonEmpty!35866 () Bool)

(declare-fun e!3385182 () Bool)

(assert (=> setNonEmpty!35866 (= setRes!35866 (and tp!1503807 (inv!81563 setElem!35866) e!3385182))))

(declare-fun setRest!35866 () (Set Context!9420))

(assert (=> setNonEmpty!35866 (= setRest!35860 (set.union (set.insert setElem!35866 (as set.empty (Set Context!9420))) setRest!35866))))

(declare-fun b!5468034 () Bool)

(declare-fun tp!1503806 () Bool)

(assert (=> b!5468034 (= e!3385182 tp!1503806)))

(assert (= (and setNonEmpty!35860 condSetEmpty!35866) setIsEmpty!35866))

(assert (= (and setNonEmpty!35860 (not condSetEmpty!35866)) setNonEmpty!35866))

(assert (= setNonEmpty!35866 b!5468034))

(declare-fun m!6487024 () Bool)

(assert (=> setNonEmpty!35866 m!6487024))

(declare-fun b!5468038 () Bool)

(declare-fun e!3385183 () Bool)

(declare-fun tp!1503810 () Bool)

(declare-fun tp!1503812 () Bool)

(assert (=> b!5468038 (= e!3385183 (and tp!1503810 tp!1503812))))

(declare-fun b!5468037 () Bool)

(declare-fun tp!1503808 () Bool)

(assert (=> b!5468037 (= e!3385183 tp!1503808)))

(assert (=> b!5467330 (= tp!1503747 e!3385183)))

(declare-fun b!5468036 () Bool)

(declare-fun tp!1503809 () Bool)

(declare-fun tp!1503811 () Bool)

(assert (=> b!5468036 (= e!3385183 (and tp!1503809 tp!1503811))))

(declare-fun b!5468035 () Bool)

(assert (=> b!5468035 (= e!3385183 tp_is_empty!39905)))

(assert (= (and b!5467330 (is-ElementMatch!15326 (reg!15655 r!7292))) b!5468035))

(assert (= (and b!5467330 (is-Concat!24171 (reg!15655 r!7292))) b!5468036))

(assert (= (and b!5467330 (is-Star!15326 (reg!15655 r!7292))) b!5468037))

(assert (= (and b!5467330 (is-Union!15326 (reg!15655 r!7292))) b!5468038))

(declare-fun b!5468043 () Bool)

(declare-fun e!3385186 () Bool)

(declare-fun tp!1503817 () Bool)

(declare-fun tp!1503818 () Bool)

(assert (=> b!5468043 (= e!3385186 (and tp!1503817 tp!1503818))))

(assert (=> b!5467309 (= tp!1503749 e!3385186)))

(assert (= (and b!5467309 (is-Cons!62153 (exprs!5210 (h!68602 zl!343)))) b!5468043))

(declare-fun b!5468051 () Bool)

(declare-fun e!3385192 () Bool)

(declare-fun tp!1503823 () Bool)

(assert (=> b!5468051 (= e!3385192 tp!1503823)))

(declare-fun b!5468050 () Bool)

(declare-fun tp!1503824 () Bool)

(declare-fun e!3385191 () Bool)

(assert (=> b!5468050 (= e!3385191 (and (inv!81563 (h!68602 (t!375507 zl!343))) e!3385192 tp!1503824))))

(assert (=> b!5467334 (= tp!1503751 e!3385191)))

(assert (= b!5468050 b!5468051))

(assert (= (and b!5467334 (is-Cons!62154 (t!375507 zl!343))) b!5468050))

(declare-fun m!6487026 () Bool)

(assert (=> b!5468050 m!6487026))

(declare-fun b!5468055 () Bool)

(declare-fun e!3385193 () Bool)

(declare-fun tp!1503827 () Bool)

(declare-fun tp!1503829 () Bool)

(assert (=> b!5468055 (= e!3385193 (and tp!1503827 tp!1503829))))

(declare-fun b!5468054 () Bool)

(declare-fun tp!1503825 () Bool)

(assert (=> b!5468054 (= e!3385193 tp!1503825)))

(assert (=> b!5467333 (= tp!1503750 e!3385193)))

(declare-fun b!5468053 () Bool)

(declare-fun tp!1503826 () Bool)

(declare-fun tp!1503828 () Bool)

(assert (=> b!5468053 (= e!3385193 (and tp!1503826 tp!1503828))))

(declare-fun b!5468052 () Bool)

(assert (=> b!5468052 (= e!3385193 tp_is_empty!39905)))

(assert (= (and b!5467333 (is-ElementMatch!15326 (regOne!31165 r!7292))) b!5468052))

(assert (= (and b!5467333 (is-Concat!24171 (regOne!31165 r!7292))) b!5468053))

(assert (= (and b!5467333 (is-Star!15326 (regOne!31165 r!7292))) b!5468054))

(assert (= (and b!5467333 (is-Union!15326 (regOne!31165 r!7292))) b!5468055))

(declare-fun b!5468059 () Bool)

(declare-fun e!3385194 () Bool)

(declare-fun tp!1503832 () Bool)

(declare-fun tp!1503834 () Bool)

(assert (=> b!5468059 (= e!3385194 (and tp!1503832 tp!1503834))))

(declare-fun b!5468058 () Bool)

(declare-fun tp!1503830 () Bool)

(assert (=> b!5468058 (= e!3385194 tp!1503830)))

(assert (=> b!5467333 (= tp!1503748 e!3385194)))

(declare-fun b!5468057 () Bool)

(declare-fun tp!1503831 () Bool)

(declare-fun tp!1503833 () Bool)

(assert (=> b!5468057 (= e!3385194 (and tp!1503831 tp!1503833))))

(declare-fun b!5468056 () Bool)

(assert (=> b!5468056 (= e!3385194 tp_is_empty!39905)))

(assert (= (and b!5467333 (is-ElementMatch!15326 (regTwo!31165 r!7292))) b!5468056))

(assert (= (and b!5467333 (is-Concat!24171 (regTwo!31165 r!7292))) b!5468057))

(assert (= (and b!5467333 (is-Star!15326 (regTwo!31165 r!7292))) b!5468058))

(assert (= (and b!5467333 (is-Union!15326 (regTwo!31165 r!7292))) b!5468059))

(declare-fun b!5468060 () Bool)

(declare-fun e!3385195 () Bool)

(declare-fun tp!1503835 () Bool)

(declare-fun tp!1503836 () Bool)

(assert (=> b!5468060 (= e!3385195 (and tp!1503835 tp!1503836))))

(assert (=> b!5467329 (= tp!1503742 e!3385195)))

(assert (= (and b!5467329 (is-Cons!62153 (exprs!5210 setElem!35860))) b!5468060))

(declare-fun b!5468065 () Bool)

(declare-fun e!3385198 () Bool)

(declare-fun tp!1503839 () Bool)

(assert (=> b!5468065 (= e!3385198 (and tp_is_empty!39905 tp!1503839))))

(assert (=> b!5467314 (= tp!1503746 e!3385198)))

(assert (= (and b!5467314 (is-Cons!62155 (t!375508 s!2326))) b!5468065))

(declare-fun b_lambda!207891 () Bool)

(assert (= b_lambda!207889 (or b!5467316 b_lambda!207891)))

(declare-fun bs!1264679 () Bool)

(declare-fun d!1738799 () Bool)

(assert (= bs!1264679 (and d!1738799 b!5467316)))

(assert (=> bs!1264679 (= (dynLambda!24418 lambda!290647 lt!2233942) (derivationStepZipperUp!678 lt!2233942 (h!68603 s!2326)))))

(assert (=> bs!1264679 m!6486522))

(assert (=> d!1738787 d!1738799))

(declare-fun b_lambda!207893 () Bool)

(assert (= b_lambda!207885 (or b!5467316 b_lambda!207893)))

(declare-fun bs!1264680 () Bool)

(declare-fun d!1738801 () Bool)

(assert (= bs!1264680 (and d!1738801 b!5467316)))

(assert (=> bs!1264680 (= (dynLambda!24418 lambda!290647 lt!2233947) (derivationStepZipperUp!678 lt!2233947 (h!68603 s!2326)))))

(assert (=> bs!1264680 m!6486538))

(assert (=> d!1738685 d!1738801))

(declare-fun b_lambda!207895 () Bool)

(assert (= b_lambda!207887 (or b!5467316 b_lambda!207895)))

(declare-fun bs!1264681 () Bool)

(declare-fun d!1738803 () Bool)

(assert (= bs!1264681 (and d!1738803 b!5467316)))

(assert (=> bs!1264681 (= (dynLambda!24418 lambda!290647 (h!68602 zl!343)) (derivationStepZipperUp!678 (h!68602 zl!343) (h!68603 s!2326)))))

(assert (=> bs!1264681 m!6486488))

(assert (=> d!1738737 d!1738803))

(declare-fun b_lambda!207897 () Bool)

(assert (= b_lambda!207883 (or b!5467316 b_lambda!207897)))

(declare-fun bs!1264682 () Bool)

(declare-fun d!1738805 () Bool)

(assert (= bs!1264682 (and d!1738805 b!5467316)))

(assert (=> bs!1264682 (= (dynLambda!24418 lambda!290647 lt!2233932) (derivationStepZipperUp!678 lt!2233932 (h!68603 s!2326)))))

(assert (=> bs!1264682 m!6486540))

(assert (=> d!1738679 d!1738805))

(push 1)

(assert (not b!5467756))

(assert (not d!1738671))

(assert (not b!5468051))

(assert (not bm!403417))

(assert (not b!5467526))

(assert (not bs!1264679))

(assert (not d!1738667))

(assert (not bm!403419))

(assert (not b!5468003))

(assert (not b!5468065))

(assert (not bm!403407))

(assert (not b!5467636))

(assert (not d!1738729))

(assert (not b_lambda!207897))

(assert (not bs!1264680))

(assert (not b!5467557))

(assert (not b!5467754))

(assert (not d!1738685))

(assert (not b!5467983))

(assert (not bm!403405))

(assert (not b!5467650))

(assert (not d!1738783))

(assert (not b!5467909))

(assert (not d!1738773))

(assert (not b!5468059))

(assert (not d!1738687))

(assert (not d!1738691))

(assert (not b!5467749))

(assert (not d!1738689))

(assert (not b!5467552))

(assert (not b!5467655))

(assert (not b!5467837))

(assert (not b!5467887))

(assert (not b!5467517))

(assert (not d!1738751))

(assert (not d!1738675))

(assert (not b!5468050))

(assert (not b!5467831))

(assert (not b!5468007))

(assert (not bm!403431))

(assert (not bm!403420))

(assert (not bs!1264682))

(assert (not b!5467564))

(assert (not d!1738787))

(assert (not b!5468053))

(assert (not bm!403428))

(assert (not d!1738725))

(assert (not d!1738737))

(assert (not b!5467980))

(assert (not b!5468001))

(assert (not d!1738715))

(assert (not b!5467632))

(assert (not b!5467653))

(assert (not bm!403425))

(assert (not b!5467520))

(assert (not b!5467748))

(assert (not b!5467692))

(assert (not bm!403380))

(assert (not b!5468058))

(assert (not b!5467700))

(assert (not b!5468034))

(assert (not bm!403415))

(assert (not bm!403386))

(assert (not d!1738769))

(assert (not d!1738727))

(assert (not bm!403418))

(assert (not b!5468002))

(assert (not b!5467981))

(assert (not b!5467521))

(assert (not b!5468043))

(assert (not b!5468054))

(assert (not d!1738711))

(assert (not d!1738707))

(assert (not d!1738777))

(assert (not d!1738733))

(assert (not d!1738761))

(assert (not b!5467899))

(assert (not b!5468057))

(assert (not bm!403373))

(assert (not bm!403402))

(assert (not b!5468036))

(assert (not b!5467890))

(assert (not b!5468005))

(assert (not d!1738719))

(assert (not bs!1264681))

(assert (not b!5467940))

(assert (not bm!403427))

(assert (not d!1738683))

(assert (not bm!403433))

(assert (not b!5468037))

(assert (not b!5467635))

(assert (not d!1738697))

(assert (not d!1738703))

(assert (not b!5467989))

(assert (not b!5467637))

(assert (not d!1738789))

(assert (not b!5468060))

(assert (not b!5467759))

(assert (not b!5467984))

(assert (not b!5467515))

(assert (not b!5467567))

(assert (not d!1738757))

(assert (not b!5467513))

(assert (not d!1738679))

(assert (not d!1738709))

(assert (not b!5467555))

(assert (not b!5467931))

(assert (not d!1738721))

(assert (not bm!403374))

(assert (not b!5467550))

(assert (not b_lambda!207895))

(assert (not bm!403372))

(assert (not b_lambda!207893))

(assert (not b!5468006))

(assert tp_is_empty!39905)

(assert (not bm!403379))

(assert (not bm!403436))

(assert (not bm!403408))

(assert (not b!5467519))

(assert (not b!5467633))

(assert (not b!5467986))

(assert (not d!1738731))

(assert (not b!5467897))

(assert (not d!1738673))

(assert (not b!5467902))

(assert (not b!5467638))

(assert (not d!1738669))

(assert (not b!5468055))

(assert (not b!5468038))

(assert (not b!5467957))

(assert (not b!5467512))

(assert (not b!5467565))

(assert (not b!5467566))

(assert (not b!5467988))

(assert (not b!5467892))

(assert (not setNonEmpty!35866))

(assert (not b!5467891))

(assert (not b!5467747))

(assert (not b!5467839))

(assert (not b_lambda!207891))

(assert (not b!5467959))

(assert (not d!1738713))

(assert (not b!5467917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


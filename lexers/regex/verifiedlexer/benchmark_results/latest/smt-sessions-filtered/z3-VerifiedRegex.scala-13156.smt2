; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718424 () Bool)

(assert start!718424)

(declare-fun b!7357285 () Bool)

(declare-fun e!4405102 () Bool)

(declare-fun tp_is_empty!48647 () Bool)

(assert (=> b!7357285 (= e!4405102 tp_is_empty!48647)))

(declare-fun b!7357286 () Bool)

(declare-fun res!2970705 () Bool)

(declare-fun e!4405099 () Bool)

(assert (=> b!7357286 (=> (not res!2970705) (not e!4405099))))

(declare-datatypes ((C!38676 0))(
  ( (C!38677 (val!29698 Int)) )
))
(declare-datatypes ((Regex!19201 0))(
  ( (ElementMatch!19201 (c!1366959 C!38676)) (Concat!28046 (regOne!38914 Regex!19201) (regTwo!38914 Regex!19201)) (EmptyExpr!19201) (Star!19201 (reg!19530 Regex!19201)) (EmptyLang!19201) (Union!19201 (regOne!38915 Regex!19201) (regTwo!38915 Regex!19201)) )
))
(declare-fun r1!2370 () Regex!19201)

(declare-fun c!10362 () C!38676)

(declare-datatypes ((List!71697 0))(
  ( (Nil!71573) (Cons!71573 (h!78021 Regex!19201) (t!386140 List!71697)) )
))
(declare-datatypes ((Context!16282 0))(
  ( (Context!16283 (exprs!8641 List!71697)) )
))
(declare-fun cWitness!61 () Context!16282)

(declare-fun ct1!282 () Context!16282)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!3027 (Regex!19201 Context!16282 C!38676) (InoxSet Context!16282))

(assert (=> b!7357286 (= res!2970705 (select (derivationStepZipperDown!3027 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7357287 () Bool)

(declare-fun res!2970708 () Bool)

(declare-fun e!4405100 () Bool)

(assert (=> b!7357287 (=> (not res!2970708) (not e!4405100))))

(declare-fun e!4405101 () Bool)

(assert (=> b!7357287 (= res!2970708 e!4405101)))

(declare-fun res!2970706 () Bool)

(assert (=> b!7357287 (=> res!2970706 e!4405101)))

(get-info :version)

(assert (=> b!7357287 (= res!2970706 (not ((_ is Concat!28046) r1!2370)))))

(declare-fun res!2970707 () Bool)

(assert (=> start!718424 (=> (not res!2970707) (not e!4405099))))

(declare-fun validRegex!9797 (Regex!19201) Bool)

(assert (=> start!718424 (= res!2970707 (validRegex!9797 r1!2370))))

(assert (=> start!718424 e!4405099))

(assert (=> start!718424 tp_is_empty!48647))

(declare-fun e!4405103 () Bool)

(declare-fun inv!91342 (Context!16282) Bool)

(assert (=> start!718424 (and (inv!91342 cWitness!61) e!4405103)))

(declare-fun e!4405098 () Bool)

(assert (=> start!718424 (and (inv!91342 ct1!282) e!4405098)))

(assert (=> start!718424 e!4405102))

(declare-fun ct2!378 () Context!16282)

(declare-fun e!4405104 () Bool)

(assert (=> start!718424 (and (inv!91342 ct2!378) e!4405104)))

(declare-fun b!7357288 () Bool)

(declare-fun nullable!8292 (Regex!19201) Bool)

(assert (=> b!7357288 (= e!4405101 (not (nullable!8292 (regOne!38914 r1!2370))))))

(declare-fun b!7357289 () Bool)

(declare-fun tp!2090049 () Bool)

(assert (=> b!7357289 (= e!4405103 tp!2090049)))

(declare-fun b!7357290 () Bool)

(assert (=> b!7357290 (= e!4405099 e!4405100)))

(declare-fun res!2970703 () Bool)

(assert (=> b!7357290 (=> (not res!2970703) (not e!4405100))))

(assert (=> b!7357290 (= res!2970703 (and (or (not ((_ is ElementMatch!19201) r1!2370)) (not (= c!10362 (c!1366959 r1!2370)))) (not ((_ is Union!19201) r1!2370))))))

(declare-fun lt!2613459 () (InoxSet Context!16282))

(declare-fun ++!17019 (List!71697 List!71697) List!71697)

(assert (=> b!7357290 (= lt!2613459 (derivationStepZipperDown!3027 r1!2370 (Context!16283 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165355 0))(
  ( (Unit!165356) )
))
(declare-fun lt!2613457 () Unit!165355)

(declare-fun lambda!457123 () Int)

(declare-fun lemmaConcatPreservesForall!1876 (List!71697 List!71697 Int) Unit!165355)

(assert (=> b!7357290 (= lt!2613457 (lemmaConcatPreservesForall!1876 (exprs!8641 ct1!282) (exprs!8641 ct2!378) lambda!457123))))

(declare-fun b!7357291 () Bool)

(declare-fun tp!2090047 () Bool)

(declare-fun tp!2090050 () Bool)

(assert (=> b!7357291 (= e!4405102 (and tp!2090047 tp!2090050))))

(declare-fun b!7357292 () Bool)

(declare-fun tp!2090051 () Bool)

(assert (=> b!7357292 (= e!4405102 tp!2090051)))

(declare-fun b!7357293 () Bool)

(declare-fun res!2970704 () Bool)

(assert (=> b!7357293 (=> (not res!2970704) (not e!4405100))))

(assert (=> b!7357293 (= res!2970704 (and (not ((_ is Concat!28046) r1!2370)) (not ((_ is Star!19201) r1!2370))))))

(declare-fun b!7357294 () Bool)

(declare-fun tp!2090046 () Bool)

(declare-fun tp!2090045 () Bool)

(assert (=> b!7357294 (= e!4405102 (and tp!2090046 tp!2090045))))

(declare-fun b!7357295 () Bool)

(declare-fun forall!18021 (List!71697 Int) Bool)

(assert (=> b!7357295 (= e!4405100 (not (forall!18021 (exprs!8641 ct1!282) lambda!457123)))))

(declare-fun lt!2613458 () Unit!165355)

(assert (=> b!7357295 (= lt!2613458 (lemmaConcatPreservesForall!1876 (exprs!8641 cWitness!61) (exprs!8641 ct2!378) lambda!457123))))

(declare-fun b!7357296 () Bool)

(declare-fun tp!2090044 () Bool)

(assert (=> b!7357296 (= e!4405098 tp!2090044)))

(declare-fun b!7357297 () Bool)

(declare-fun tp!2090048 () Bool)

(assert (=> b!7357297 (= e!4405104 tp!2090048)))

(assert (= (and start!718424 res!2970707) b!7357286))

(assert (= (and b!7357286 res!2970705) b!7357290))

(assert (= (and b!7357290 res!2970703) b!7357287))

(assert (= (and b!7357287 (not res!2970706)) b!7357288))

(assert (= (and b!7357287 res!2970708) b!7357293))

(assert (= (and b!7357293 res!2970704) b!7357295))

(assert (= start!718424 b!7357289))

(assert (= start!718424 b!7357296))

(assert (= (and start!718424 ((_ is ElementMatch!19201) r1!2370)) b!7357285))

(assert (= (and start!718424 ((_ is Concat!28046) r1!2370)) b!7357291))

(assert (= (and start!718424 ((_ is Star!19201) r1!2370)) b!7357292))

(assert (= (and start!718424 ((_ is Union!19201) r1!2370)) b!7357294))

(assert (= start!718424 b!7357297))

(declare-fun m!8016698 () Bool)

(assert (=> b!7357286 m!8016698))

(declare-fun m!8016700 () Bool)

(assert (=> b!7357286 m!8016700))

(declare-fun m!8016702 () Bool)

(assert (=> b!7357295 m!8016702))

(declare-fun m!8016704 () Bool)

(assert (=> b!7357295 m!8016704))

(declare-fun m!8016706 () Bool)

(assert (=> start!718424 m!8016706))

(declare-fun m!8016708 () Bool)

(assert (=> start!718424 m!8016708))

(declare-fun m!8016710 () Bool)

(assert (=> start!718424 m!8016710))

(declare-fun m!8016712 () Bool)

(assert (=> start!718424 m!8016712))

(declare-fun m!8016714 () Bool)

(assert (=> b!7357290 m!8016714))

(declare-fun m!8016716 () Bool)

(assert (=> b!7357290 m!8016716))

(declare-fun m!8016718 () Bool)

(assert (=> b!7357290 m!8016718))

(declare-fun m!8016720 () Bool)

(assert (=> b!7357288 m!8016720))

(check-sat (not b!7357289) (not b!7357294) (not b!7357290) (not b!7357296) (not b!7357291) (not b!7357288) (not b!7357297) (not start!718424) (not b!7357292) (not b!7357295) (not b!7357286) tp_is_empty!48647)
(check-sat)
(get-model)

(declare-fun d!2281685 () Bool)

(declare-fun nullableFct!3317 (Regex!19201) Bool)

(assert (=> d!2281685 (= (nullable!8292 (regOne!38914 r1!2370)) (nullableFct!3317 (regOne!38914 r1!2370)))))

(declare-fun bs!1919862 () Bool)

(assert (= bs!1919862 d!2281685))

(declare-fun m!8016722 () Bool)

(assert (=> bs!1919862 m!8016722))

(assert (=> b!7357288 d!2281685))

(declare-fun d!2281687 () Bool)

(declare-fun res!2970723 () Bool)

(declare-fun e!4405123 () Bool)

(assert (=> d!2281687 (=> res!2970723 e!4405123)))

(assert (=> d!2281687 (= res!2970723 ((_ is Nil!71573) (exprs!8641 ct1!282)))))

(assert (=> d!2281687 (= (forall!18021 (exprs!8641 ct1!282) lambda!457123) e!4405123)))

(declare-fun b!7357320 () Bool)

(declare-fun e!4405124 () Bool)

(assert (=> b!7357320 (= e!4405123 e!4405124)))

(declare-fun res!2970724 () Bool)

(assert (=> b!7357320 (=> (not res!2970724) (not e!4405124))))

(declare-fun dynLambda!29516 (Int Regex!19201) Bool)

(assert (=> b!7357320 (= res!2970724 (dynLambda!29516 lambda!457123 (h!78021 (exprs!8641 ct1!282))))))

(declare-fun b!7357321 () Bool)

(assert (=> b!7357321 (= e!4405124 (forall!18021 (t!386140 (exprs!8641 ct1!282)) lambda!457123))))

(assert (= (and d!2281687 (not res!2970723)) b!7357320))

(assert (= (and b!7357320 res!2970724) b!7357321))

(declare-fun b_lambda!284291 () Bool)

(assert (=> (not b_lambda!284291) (not b!7357320)))

(declare-fun m!8016724 () Bool)

(assert (=> b!7357320 m!8016724))

(declare-fun m!8016726 () Bool)

(assert (=> b!7357321 m!8016726))

(assert (=> b!7357295 d!2281687))

(declare-fun d!2281689 () Bool)

(assert (=> d!2281689 (forall!18021 (++!17019 (exprs!8641 cWitness!61) (exprs!8641 ct2!378)) lambda!457123)))

(declare-fun lt!2613462 () Unit!165355)

(declare-fun choose!57231 (List!71697 List!71697 Int) Unit!165355)

(assert (=> d!2281689 (= lt!2613462 (choose!57231 (exprs!8641 cWitness!61) (exprs!8641 ct2!378) lambda!457123))))

(assert (=> d!2281689 (forall!18021 (exprs!8641 cWitness!61) lambda!457123)))

(assert (=> d!2281689 (= (lemmaConcatPreservesForall!1876 (exprs!8641 cWitness!61) (exprs!8641 ct2!378) lambda!457123) lt!2613462)))

(declare-fun bs!1919863 () Bool)

(assert (= bs!1919863 d!2281689))

(declare-fun m!8016728 () Bool)

(assert (=> bs!1919863 m!8016728))

(assert (=> bs!1919863 m!8016728))

(declare-fun m!8016734 () Bool)

(assert (=> bs!1919863 m!8016734))

(declare-fun m!8016736 () Bool)

(assert (=> bs!1919863 m!8016736))

(declare-fun m!8016740 () Bool)

(assert (=> bs!1919863 m!8016740))

(assert (=> b!7357295 d!2281689))

(declare-fun b!7357361 () Bool)

(declare-fun e!4405151 () (InoxSet Context!16282))

(declare-fun call!673763 () (InoxSet Context!16282))

(assert (=> b!7357361 (= e!4405151 call!673763)))

(declare-fun bm!673756 () Bool)

(declare-fun call!673761 () List!71697)

(declare-fun call!673766 () List!71697)

(assert (=> bm!673756 (= call!673761 call!673766)))

(declare-fun b!7357362 () Bool)

(declare-fun c!1366980 () Bool)

(assert (=> b!7357362 (= c!1366980 ((_ is Star!19201) r1!2370))))

(declare-fun e!4405153 () (InoxSet Context!16282))

(assert (=> b!7357362 (= e!4405151 e!4405153)))

(declare-fun b!7357363 () Bool)

(declare-fun e!4405154 () (InoxSet Context!16282))

(declare-fun call!673762 () (InoxSet Context!16282))

(declare-fun call!673764 () (InoxSet Context!16282))

(assert (=> b!7357363 (= e!4405154 ((_ map or) call!673762 call!673764))))

(declare-fun b!7357364 () Bool)

(assert (=> b!7357364 (= e!4405153 call!673763)))

(declare-fun c!1366976 () Bool)

(declare-fun bm!673757 () Bool)

(declare-fun c!1366978 () Bool)

(declare-fun $colon$colon!3197 (List!71697 Regex!19201) List!71697)

(assert (=> bm!673757 (= call!673766 ($colon$colon!3197 (exprs!8641 (Context!16283 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378)))) (ite (or c!1366978 c!1366976) (regTwo!38914 r1!2370) r1!2370)))))

(declare-fun b!7357365 () Bool)

(declare-fun e!4405150 () Bool)

(assert (=> b!7357365 (= c!1366978 e!4405150)))

(declare-fun res!2970738 () Bool)

(assert (=> b!7357365 (=> (not res!2970738) (not e!4405150))))

(assert (=> b!7357365 (= res!2970738 ((_ is Concat!28046) r1!2370))))

(declare-fun e!4405155 () (InoxSet Context!16282))

(assert (=> b!7357365 (= e!4405155 e!4405154)))

(declare-fun b!7357366 () Bool)

(declare-fun e!4405152 () (InoxSet Context!16282))

(assert (=> b!7357366 (= e!4405152 (store ((as const (Array Context!16282 Bool)) false) (Context!16283 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378))) true))))

(declare-fun b!7357367 () Bool)

(assert (=> b!7357367 (= e!4405152 e!4405155)))

(declare-fun c!1366977 () Bool)

(assert (=> b!7357367 (= c!1366977 ((_ is Union!19201) r1!2370))))

(declare-fun b!7357368 () Bool)

(declare-fun call!673765 () (InoxSet Context!16282))

(assert (=> b!7357368 (= e!4405155 ((_ map or) call!673765 call!673762))))

(declare-fun bm!673758 () Bool)

(assert (=> bm!673758 (= call!673765 (derivationStepZipperDown!3027 (ite c!1366977 (regOne!38915 r1!2370) (ite c!1366978 (regTwo!38914 r1!2370) (ite c!1366976 (regOne!38914 r1!2370) (reg!19530 r1!2370)))) (ite (or c!1366977 c!1366978) (Context!16283 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378))) (Context!16283 call!673761)) c!10362))))

(declare-fun d!2281693 () Bool)

(declare-fun c!1366979 () Bool)

(assert (=> d!2281693 (= c!1366979 (and ((_ is ElementMatch!19201) r1!2370) (= (c!1366959 r1!2370) c!10362)))))

(assert (=> d!2281693 (= (derivationStepZipperDown!3027 r1!2370 (Context!16283 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378))) c!10362) e!4405152)))

(declare-fun b!7357371 () Bool)

(assert (=> b!7357371 (= e!4405154 e!4405151)))

(assert (=> b!7357371 (= c!1366976 ((_ is Concat!28046) r1!2370))))

(declare-fun bm!673759 () Bool)

(assert (=> bm!673759 (= call!673764 call!673765)))

(declare-fun bm!673760 () Bool)

(assert (=> bm!673760 (= call!673763 call!673764)))

(declare-fun bm!673761 () Bool)

(assert (=> bm!673761 (= call!673762 (derivationStepZipperDown!3027 (ite c!1366977 (regTwo!38915 r1!2370) (regOne!38914 r1!2370)) (ite c!1366977 (Context!16283 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378))) (Context!16283 call!673766)) c!10362))))

(declare-fun b!7357372 () Bool)

(assert (=> b!7357372 (= e!4405153 ((as const (Array Context!16282 Bool)) false))))

(declare-fun b!7357373 () Bool)

(assert (=> b!7357373 (= e!4405150 (nullable!8292 (regOne!38914 r1!2370)))))

(assert (= (and d!2281693 c!1366979) b!7357366))

(assert (= (and d!2281693 (not c!1366979)) b!7357367))

(assert (= (and b!7357367 c!1366977) b!7357368))

(assert (= (and b!7357367 (not c!1366977)) b!7357365))

(assert (= (and b!7357365 res!2970738) b!7357373))

(assert (= (and b!7357365 c!1366978) b!7357363))

(assert (= (and b!7357365 (not c!1366978)) b!7357371))

(assert (= (and b!7357371 c!1366976) b!7357361))

(assert (= (and b!7357371 (not c!1366976)) b!7357362))

(assert (= (and b!7357362 c!1366980) b!7357364))

(assert (= (and b!7357362 (not c!1366980)) b!7357372))

(assert (= (or b!7357361 b!7357364) bm!673756))

(assert (= (or b!7357361 b!7357364) bm!673760))

(assert (= (or b!7357363 bm!673760) bm!673759))

(assert (= (or b!7357363 bm!673756) bm!673757))

(assert (= (or b!7357368 b!7357363) bm!673761))

(assert (= (or b!7357368 bm!673759) bm!673758))

(declare-fun m!8016760 () Bool)

(assert (=> bm!673758 m!8016760))

(declare-fun m!8016762 () Bool)

(assert (=> b!7357366 m!8016762))

(declare-fun m!8016764 () Bool)

(assert (=> bm!673761 m!8016764))

(declare-fun m!8016766 () Bool)

(assert (=> bm!673757 m!8016766))

(assert (=> b!7357373 m!8016720))

(assert (=> b!7357290 d!2281693))

(declare-fun d!2281705 () Bool)

(declare-fun e!4405173 () Bool)

(assert (=> d!2281705 e!4405173))

(declare-fun res!2970746 () Bool)

(assert (=> d!2281705 (=> (not res!2970746) (not e!4405173))))

(declare-fun lt!2613468 () List!71697)

(declare-fun content!15102 (List!71697) (InoxSet Regex!19201))

(assert (=> d!2281705 (= res!2970746 (= (content!15102 lt!2613468) ((_ map or) (content!15102 (exprs!8641 ct1!282)) (content!15102 (exprs!8641 ct2!378)))))))

(declare-fun e!4405172 () List!71697)

(assert (=> d!2281705 (= lt!2613468 e!4405172)))

(declare-fun c!1366993 () Bool)

(assert (=> d!2281705 (= c!1366993 ((_ is Nil!71573) (exprs!8641 ct1!282)))))

(assert (=> d!2281705 (= (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378)) lt!2613468)))

(declare-fun b!7357401 () Bool)

(assert (=> b!7357401 (= e!4405172 (Cons!71573 (h!78021 (exprs!8641 ct1!282)) (++!17019 (t!386140 (exprs!8641 ct1!282)) (exprs!8641 ct2!378))))))

(declare-fun b!7357403 () Bool)

(assert (=> b!7357403 (= e!4405173 (or (not (= (exprs!8641 ct2!378) Nil!71573)) (= lt!2613468 (exprs!8641 ct1!282))))))

(declare-fun b!7357400 () Bool)

(assert (=> b!7357400 (= e!4405172 (exprs!8641 ct2!378))))

(declare-fun b!7357402 () Bool)

(declare-fun res!2970745 () Bool)

(assert (=> b!7357402 (=> (not res!2970745) (not e!4405173))))

(declare-fun size!42080 (List!71697) Int)

(assert (=> b!7357402 (= res!2970745 (= (size!42080 lt!2613468) (+ (size!42080 (exprs!8641 ct1!282)) (size!42080 (exprs!8641 ct2!378)))))))

(assert (= (and d!2281705 c!1366993) b!7357400))

(assert (= (and d!2281705 (not c!1366993)) b!7357401))

(assert (= (and d!2281705 res!2970746) b!7357402))

(assert (= (and b!7357402 res!2970745) b!7357403))

(declare-fun m!8016768 () Bool)

(assert (=> d!2281705 m!8016768))

(declare-fun m!8016770 () Bool)

(assert (=> d!2281705 m!8016770))

(declare-fun m!8016772 () Bool)

(assert (=> d!2281705 m!8016772))

(declare-fun m!8016774 () Bool)

(assert (=> b!7357401 m!8016774))

(declare-fun m!8016776 () Bool)

(assert (=> b!7357402 m!8016776))

(declare-fun m!8016778 () Bool)

(assert (=> b!7357402 m!8016778))

(declare-fun m!8016780 () Bool)

(assert (=> b!7357402 m!8016780))

(assert (=> b!7357290 d!2281705))

(declare-fun d!2281707 () Bool)

(assert (=> d!2281707 (forall!18021 (++!17019 (exprs!8641 ct1!282) (exprs!8641 ct2!378)) lambda!457123)))

(declare-fun lt!2613469 () Unit!165355)

(assert (=> d!2281707 (= lt!2613469 (choose!57231 (exprs!8641 ct1!282) (exprs!8641 ct2!378) lambda!457123))))

(assert (=> d!2281707 (forall!18021 (exprs!8641 ct1!282) lambda!457123)))

(assert (=> d!2281707 (= (lemmaConcatPreservesForall!1876 (exprs!8641 ct1!282) (exprs!8641 ct2!378) lambda!457123) lt!2613469)))

(declare-fun bs!1919874 () Bool)

(assert (= bs!1919874 d!2281707))

(assert (=> bs!1919874 m!8016714))

(assert (=> bs!1919874 m!8016714))

(declare-fun m!8016782 () Bool)

(assert (=> bs!1919874 m!8016782))

(declare-fun m!8016784 () Bool)

(assert (=> bs!1919874 m!8016784))

(assert (=> bs!1919874 m!8016702))

(assert (=> b!7357290 d!2281707))

(declare-fun b!7357441 () Bool)

(declare-fun e!4405201 () Bool)

(declare-fun call!673792 () Bool)

(assert (=> b!7357441 (= e!4405201 call!673792)))

(declare-fun b!7357442 () Bool)

(declare-fun e!4405199 () Bool)

(declare-fun e!4405198 () Bool)

(assert (=> b!7357442 (= e!4405199 e!4405198)))

(declare-fun res!2970766 () Bool)

(assert (=> b!7357442 (= res!2970766 (not (nullable!8292 (reg!19530 r1!2370))))))

(assert (=> b!7357442 (=> (not res!2970766) (not e!4405198))))

(declare-fun b!7357443 () Bool)

(declare-fun res!2970762 () Bool)

(declare-fun e!4405204 () Bool)

(assert (=> b!7357443 (=> res!2970762 e!4405204)))

(assert (=> b!7357443 (= res!2970762 (not ((_ is Concat!28046) r1!2370)))))

(declare-fun e!4405202 () Bool)

(assert (=> b!7357443 (= e!4405202 e!4405204)))

(declare-fun d!2281709 () Bool)

(declare-fun res!2970763 () Bool)

(declare-fun e!4405203 () Bool)

(assert (=> d!2281709 (=> res!2970763 e!4405203)))

(assert (=> d!2281709 (= res!2970763 ((_ is ElementMatch!19201) r1!2370))))

(assert (=> d!2281709 (= (validRegex!9797 r1!2370) e!4405203)))

(declare-fun bm!673786 () Bool)

(declare-fun call!673791 () Bool)

(declare-fun c!1367006 () Bool)

(assert (=> bm!673786 (= call!673791 (validRegex!9797 (ite c!1367006 (regOne!38915 r1!2370) (regTwo!38914 r1!2370))))))

(declare-fun b!7357444 () Bool)

(declare-fun e!4405200 () Bool)

(assert (=> b!7357444 (= e!4405204 e!4405200)))

(declare-fun res!2970764 () Bool)

(assert (=> b!7357444 (=> (not res!2970764) (not e!4405200))))

(assert (=> b!7357444 (= res!2970764 call!673792)))

(declare-fun bm!673787 () Bool)

(declare-fun call!673793 () Bool)

(assert (=> bm!673787 (= call!673792 call!673793)))

(declare-fun b!7357445 () Bool)

(assert (=> b!7357445 (= e!4405198 call!673793)))

(declare-fun b!7357446 () Bool)

(assert (=> b!7357446 (= e!4405200 call!673791)))

(declare-fun b!7357447 () Bool)

(assert (=> b!7357447 (= e!4405203 e!4405199)))

(declare-fun c!1367005 () Bool)

(assert (=> b!7357447 (= c!1367005 ((_ is Star!19201) r1!2370))))

(declare-fun bm!673788 () Bool)

(assert (=> bm!673788 (= call!673793 (validRegex!9797 (ite c!1367005 (reg!19530 r1!2370) (ite c!1367006 (regTwo!38915 r1!2370) (regOne!38914 r1!2370)))))))

(declare-fun b!7357448 () Bool)

(declare-fun res!2970765 () Bool)

(assert (=> b!7357448 (=> (not res!2970765) (not e!4405201))))

(assert (=> b!7357448 (= res!2970765 call!673791)))

(assert (=> b!7357448 (= e!4405202 e!4405201)))

(declare-fun b!7357449 () Bool)

(assert (=> b!7357449 (= e!4405199 e!4405202)))

(assert (=> b!7357449 (= c!1367006 ((_ is Union!19201) r1!2370))))

(assert (= (and d!2281709 (not res!2970763)) b!7357447))

(assert (= (and b!7357447 c!1367005) b!7357442))

(assert (= (and b!7357447 (not c!1367005)) b!7357449))

(assert (= (and b!7357442 res!2970766) b!7357445))

(assert (= (and b!7357449 c!1367006) b!7357448))

(assert (= (and b!7357449 (not c!1367006)) b!7357443))

(assert (= (and b!7357448 res!2970765) b!7357441))

(assert (= (and b!7357443 (not res!2970762)) b!7357444))

(assert (= (and b!7357444 res!2970764) b!7357446))

(assert (= (or b!7357448 b!7357446) bm!673786))

(assert (= (or b!7357441 b!7357444) bm!673787))

(assert (= (or b!7357445 bm!673787) bm!673788))

(declare-fun m!8016806 () Bool)

(assert (=> b!7357442 m!8016806))

(declare-fun m!8016810 () Bool)

(assert (=> bm!673786 m!8016810))

(declare-fun m!8016812 () Bool)

(assert (=> bm!673788 m!8016812))

(assert (=> start!718424 d!2281709))

(declare-fun bs!1919876 () Bool)

(declare-fun d!2281715 () Bool)

(assert (= bs!1919876 (and d!2281715 b!7357290)))

(declare-fun lambda!457131 () Int)

(assert (=> bs!1919876 (= lambda!457131 lambda!457123)))

(assert (=> d!2281715 (= (inv!91342 cWitness!61) (forall!18021 (exprs!8641 cWitness!61) lambda!457131))))

(declare-fun bs!1919877 () Bool)

(assert (= bs!1919877 d!2281715))

(declare-fun m!8016826 () Bool)

(assert (=> bs!1919877 m!8016826))

(assert (=> start!718424 d!2281715))

(declare-fun bs!1919878 () Bool)

(declare-fun d!2281721 () Bool)

(assert (= bs!1919878 (and d!2281721 b!7357290)))

(declare-fun lambda!457132 () Int)

(assert (=> bs!1919878 (= lambda!457132 lambda!457123)))

(declare-fun bs!1919879 () Bool)

(assert (= bs!1919879 (and d!2281721 d!2281715)))

(assert (=> bs!1919879 (= lambda!457132 lambda!457131)))

(assert (=> d!2281721 (= (inv!91342 ct1!282) (forall!18021 (exprs!8641 ct1!282) lambda!457132))))

(declare-fun bs!1919880 () Bool)

(assert (= bs!1919880 d!2281721))

(declare-fun m!8016828 () Bool)

(assert (=> bs!1919880 m!8016828))

(assert (=> start!718424 d!2281721))

(declare-fun bs!1919882 () Bool)

(declare-fun d!2281723 () Bool)

(assert (= bs!1919882 (and d!2281723 b!7357290)))

(declare-fun lambda!457133 () Int)

(assert (=> bs!1919882 (= lambda!457133 lambda!457123)))

(declare-fun bs!1919883 () Bool)

(assert (= bs!1919883 (and d!2281723 d!2281715)))

(assert (=> bs!1919883 (= lambda!457133 lambda!457131)))

(declare-fun bs!1919884 () Bool)

(assert (= bs!1919884 (and d!2281723 d!2281721)))

(assert (=> bs!1919884 (= lambda!457133 lambda!457132)))

(assert (=> d!2281723 (= (inv!91342 ct2!378) (forall!18021 (exprs!8641 ct2!378) lambda!457133))))

(declare-fun bs!1919885 () Bool)

(assert (= bs!1919885 d!2281723))

(declare-fun m!8016832 () Bool)

(assert (=> bs!1919885 m!8016832))

(assert (=> start!718424 d!2281723))

(declare-fun b!7357475 () Bool)

(declare-fun e!4405216 () (InoxSet Context!16282))

(declare-fun call!673802 () (InoxSet Context!16282))

(assert (=> b!7357475 (= e!4405216 call!673802)))

(declare-fun bm!673795 () Bool)

(declare-fun call!673800 () List!71697)

(declare-fun call!673805 () List!71697)

(assert (=> bm!673795 (= call!673800 call!673805)))

(declare-fun b!7357476 () Bool)

(declare-fun c!1367017 () Bool)

(assert (=> b!7357476 (= c!1367017 ((_ is Star!19201) r1!2370))))

(declare-fun e!4405218 () (InoxSet Context!16282))

(assert (=> b!7357476 (= e!4405216 e!4405218)))

(declare-fun b!7357477 () Bool)

(declare-fun e!4405219 () (InoxSet Context!16282))

(declare-fun call!673801 () (InoxSet Context!16282))

(declare-fun call!673803 () (InoxSet Context!16282))

(assert (=> b!7357477 (= e!4405219 ((_ map or) call!673801 call!673803))))

(declare-fun b!7357478 () Bool)

(assert (=> b!7357478 (= e!4405218 call!673802)))

(declare-fun bm!673796 () Bool)

(declare-fun c!1367015 () Bool)

(declare-fun c!1367013 () Bool)

(assert (=> bm!673796 (= call!673805 ($colon$colon!3197 (exprs!8641 ct1!282) (ite (or c!1367015 c!1367013) (regTwo!38914 r1!2370) r1!2370)))))

(declare-fun b!7357479 () Bool)

(declare-fun e!4405215 () Bool)

(assert (=> b!7357479 (= c!1367015 e!4405215)))

(declare-fun res!2970770 () Bool)

(assert (=> b!7357479 (=> (not res!2970770) (not e!4405215))))

(assert (=> b!7357479 (= res!2970770 ((_ is Concat!28046) r1!2370))))

(declare-fun e!4405220 () (InoxSet Context!16282))

(assert (=> b!7357479 (= e!4405220 e!4405219)))

(declare-fun b!7357480 () Bool)

(declare-fun e!4405217 () (InoxSet Context!16282))

(assert (=> b!7357480 (= e!4405217 (store ((as const (Array Context!16282 Bool)) false) ct1!282 true))))

(declare-fun b!7357481 () Bool)

(assert (=> b!7357481 (= e!4405217 e!4405220)))

(declare-fun c!1367014 () Bool)

(assert (=> b!7357481 (= c!1367014 ((_ is Union!19201) r1!2370))))

(declare-fun b!7357482 () Bool)

(declare-fun call!673804 () (InoxSet Context!16282))

(assert (=> b!7357482 (= e!4405220 ((_ map or) call!673804 call!673801))))

(declare-fun bm!673797 () Bool)

(assert (=> bm!673797 (= call!673804 (derivationStepZipperDown!3027 (ite c!1367014 (regOne!38915 r1!2370) (ite c!1367015 (regTwo!38914 r1!2370) (ite c!1367013 (regOne!38914 r1!2370) (reg!19530 r1!2370)))) (ite (or c!1367014 c!1367015) ct1!282 (Context!16283 call!673800)) c!10362))))

(declare-fun d!2281725 () Bool)

(declare-fun c!1367016 () Bool)

(assert (=> d!2281725 (= c!1367016 (and ((_ is ElementMatch!19201) r1!2370) (= (c!1366959 r1!2370) c!10362)))))

(assert (=> d!2281725 (= (derivationStepZipperDown!3027 r1!2370 ct1!282 c!10362) e!4405217)))

(declare-fun b!7357483 () Bool)

(assert (=> b!7357483 (= e!4405219 e!4405216)))

(assert (=> b!7357483 (= c!1367013 ((_ is Concat!28046) r1!2370))))

(declare-fun bm!673798 () Bool)

(assert (=> bm!673798 (= call!673803 call!673804)))

(declare-fun bm!673799 () Bool)

(assert (=> bm!673799 (= call!673802 call!673803)))

(declare-fun bm!673800 () Bool)

(assert (=> bm!673800 (= call!673801 (derivationStepZipperDown!3027 (ite c!1367014 (regTwo!38915 r1!2370) (regOne!38914 r1!2370)) (ite c!1367014 ct1!282 (Context!16283 call!673805)) c!10362))))

(declare-fun b!7357484 () Bool)

(assert (=> b!7357484 (= e!4405218 ((as const (Array Context!16282 Bool)) false))))

(declare-fun b!7357485 () Bool)

(assert (=> b!7357485 (= e!4405215 (nullable!8292 (regOne!38914 r1!2370)))))

(assert (= (and d!2281725 c!1367016) b!7357480))

(assert (= (and d!2281725 (not c!1367016)) b!7357481))

(assert (= (and b!7357481 c!1367014) b!7357482))

(assert (= (and b!7357481 (not c!1367014)) b!7357479))

(assert (= (and b!7357479 res!2970770) b!7357485))

(assert (= (and b!7357479 c!1367015) b!7357477))

(assert (= (and b!7357479 (not c!1367015)) b!7357483))

(assert (= (and b!7357483 c!1367013) b!7357475))

(assert (= (and b!7357483 (not c!1367013)) b!7357476))

(assert (= (and b!7357476 c!1367017) b!7357478))

(assert (= (and b!7357476 (not c!1367017)) b!7357484))

(assert (= (or b!7357475 b!7357478) bm!673795))

(assert (= (or b!7357475 b!7357478) bm!673799))

(assert (= (or b!7357477 bm!673799) bm!673798))

(assert (= (or b!7357477 bm!673795) bm!673796))

(assert (= (or b!7357482 b!7357477) bm!673800))

(assert (= (or b!7357482 bm!673798) bm!673797))

(declare-fun m!8016834 () Bool)

(assert (=> bm!673797 m!8016834))

(declare-fun m!8016836 () Bool)

(assert (=> b!7357480 m!8016836))

(declare-fun m!8016838 () Bool)

(assert (=> bm!673800 m!8016838))

(declare-fun m!8016840 () Bool)

(assert (=> bm!673796 m!8016840))

(assert (=> b!7357485 m!8016720))

(assert (=> b!7357286 d!2281725))

(declare-fun b!7357523 () Bool)

(declare-fun e!4405233 () Bool)

(assert (=> b!7357523 (= e!4405233 tp_is_empty!48647)))

(declare-fun b!7357526 () Bool)

(declare-fun tp!2090110 () Bool)

(declare-fun tp!2090108 () Bool)

(assert (=> b!7357526 (= e!4405233 (and tp!2090110 tp!2090108))))

(assert (=> b!7357294 (= tp!2090046 e!4405233)))

(declare-fun b!7357525 () Bool)

(declare-fun tp!2090109 () Bool)

(assert (=> b!7357525 (= e!4405233 tp!2090109)))

(declare-fun b!7357524 () Bool)

(declare-fun tp!2090111 () Bool)

(declare-fun tp!2090107 () Bool)

(assert (=> b!7357524 (= e!4405233 (and tp!2090111 tp!2090107))))

(assert (= (and b!7357294 ((_ is ElementMatch!19201) (regOne!38915 r1!2370))) b!7357523))

(assert (= (and b!7357294 ((_ is Concat!28046) (regOne!38915 r1!2370))) b!7357524))

(assert (= (and b!7357294 ((_ is Star!19201) (regOne!38915 r1!2370))) b!7357525))

(assert (= (and b!7357294 ((_ is Union!19201) (regOne!38915 r1!2370))) b!7357526))

(declare-fun b!7357527 () Bool)

(declare-fun e!4405234 () Bool)

(assert (=> b!7357527 (= e!4405234 tp_is_empty!48647)))

(declare-fun b!7357530 () Bool)

(declare-fun tp!2090115 () Bool)

(declare-fun tp!2090113 () Bool)

(assert (=> b!7357530 (= e!4405234 (and tp!2090115 tp!2090113))))

(assert (=> b!7357294 (= tp!2090045 e!4405234)))

(declare-fun b!7357529 () Bool)

(declare-fun tp!2090114 () Bool)

(assert (=> b!7357529 (= e!4405234 tp!2090114)))

(declare-fun b!7357528 () Bool)

(declare-fun tp!2090116 () Bool)

(declare-fun tp!2090112 () Bool)

(assert (=> b!7357528 (= e!4405234 (and tp!2090116 tp!2090112))))

(assert (= (and b!7357294 ((_ is ElementMatch!19201) (regTwo!38915 r1!2370))) b!7357527))

(assert (= (and b!7357294 ((_ is Concat!28046) (regTwo!38915 r1!2370))) b!7357528))

(assert (= (and b!7357294 ((_ is Star!19201) (regTwo!38915 r1!2370))) b!7357529))

(assert (= (and b!7357294 ((_ is Union!19201) (regTwo!38915 r1!2370))) b!7357530))

(declare-fun b!7357535 () Bool)

(declare-fun e!4405237 () Bool)

(declare-fun tp!2090121 () Bool)

(declare-fun tp!2090122 () Bool)

(assert (=> b!7357535 (= e!4405237 (and tp!2090121 tp!2090122))))

(assert (=> b!7357289 (= tp!2090049 e!4405237)))

(assert (= (and b!7357289 ((_ is Cons!71573) (exprs!8641 cWitness!61))) b!7357535))

(declare-fun b!7357536 () Bool)

(declare-fun e!4405238 () Bool)

(declare-fun tp!2090123 () Bool)

(declare-fun tp!2090124 () Bool)

(assert (=> b!7357536 (= e!4405238 (and tp!2090123 tp!2090124))))

(assert (=> b!7357296 (= tp!2090044 e!4405238)))

(assert (= (and b!7357296 ((_ is Cons!71573) (exprs!8641 ct1!282))) b!7357536))

(declare-fun b!7357537 () Bool)

(declare-fun e!4405239 () Bool)

(assert (=> b!7357537 (= e!4405239 tp_is_empty!48647)))

(declare-fun b!7357540 () Bool)

(declare-fun tp!2090128 () Bool)

(declare-fun tp!2090126 () Bool)

(assert (=> b!7357540 (= e!4405239 (and tp!2090128 tp!2090126))))

(assert (=> b!7357291 (= tp!2090047 e!4405239)))

(declare-fun b!7357539 () Bool)

(declare-fun tp!2090127 () Bool)

(assert (=> b!7357539 (= e!4405239 tp!2090127)))

(declare-fun b!7357538 () Bool)

(declare-fun tp!2090129 () Bool)

(declare-fun tp!2090125 () Bool)

(assert (=> b!7357538 (= e!4405239 (and tp!2090129 tp!2090125))))

(assert (= (and b!7357291 ((_ is ElementMatch!19201) (regOne!38914 r1!2370))) b!7357537))

(assert (= (and b!7357291 ((_ is Concat!28046) (regOne!38914 r1!2370))) b!7357538))

(assert (= (and b!7357291 ((_ is Star!19201) (regOne!38914 r1!2370))) b!7357539))

(assert (= (and b!7357291 ((_ is Union!19201) (regOne!38914 r1!2370))) b!7357540))

(declare-fun b!7357541 () Bool)

(declare-fun e!4405240 () Bool)

(assert (=> b!7357541 (= e!4405240 tp_is_empty!48647)))

(declare-fun b!7357544 () Bool)

(declare-fun tp!2090133 () Bool)

(declare-fun tp!2090131 () Bool)

(assert (=> b!7357544 (= e!4405240 (and tp!2090133 tp!2090131))))

(assert (=> b!7357291 (= tp!2090050 e!4405240)))

(declare-fun b!7357543 () Bool)

(declare-fun tp!2090132 () Bool)

(assert (=> b!7357543 (= e!4405240 tp!2090132)))

(declare-fun b!7357542 () Bool)

(declare-fun tp!2090134 () Bool)

(declare-fun tp!2090130 () Bool)

(assert (=> b!7357542 (= e!4405240 (and tp!2090134 tp!2090130))))

(assert (= (and b!7357291 ((_ is ElementMatch!19201) (regTwo!38914 r1!2370))) b!7357541))

(assert (= (and b!7357291 ((_ is Concat!28046) (regTwo!38914 r1!2370))) b!7357542))

(assert (= (and b!7357291 ((_ is Star!19201) (regTwo!38914 r1!2370))) b!7357543))

(assert (= (and b!7357291 ((_ is Union!19201) (regTwo!38914 r1!2370))) b!7357544))

(declare-fun b!7357545 () Bool)

(declare-fun e!4405241 () Bool)

(declare-fun tp!2090135 () Bool)

(declare-fun tp!2090136 () Bool)

(assert (=> b!7357545 (= e!4405241 (and tp!2090135 tp!2090136))))

(assert (=> b!7357297 (= tp!2090048 e!4405241)))

(assert (= (and b!7357297 ((_ is Cons!71573) (exprs!8641 ct2!378))) b!7357545))

(declare-fun b!7357546 () Bool)

(declare-fun e!4405242 () Bool)

(assert (=> b!7357546 (= e!4405242 tp_is_empty!48647)))

(declare-fun b!7357549 () Bool)

(declare-fun tp!2090140 () Bool)

(declare-fun tp!2090138 () Bool)

(assert (=> b!7357549 (= e!4405242 (and tp!2090140 tp!2090138))))

(assert (=> b!7357292 (= tp!2090051 e!4405242)))

(declare-fun b!7357548 () Bool)

(declare-fun tp!2090139 () Bool)

(assert (=> b!7357548 (= e!4405242 tp!2090139)))

(declare-fun b!7357547 () Bool)

(declare-fun tp!2090141 () Bool)

(declare-fun tp!2090137 () Bool)

(assert (=> b!7357547 (= e!4405242 (and tp!2090141 tp!2090137))))

(assert (= (and b!7357292 ((_ is ElementMatch!19201) (reg!19530 r1!2370))) b!7357546))

(assert (= (and b!7357292 ((_ is Concat!28046) (reg!19530 r1!2370))) b!7357547))

(assert (= (and b!7357292 ((_ is Star!19201) (reg!19530 r1!2370))) b!7357548))

(assert (= (and b!7357292 ((_ is Union!19201) (reg!19530 r1!2370))) b!7357549))

(declare-fun b_lambda!284297 () Bool)

(assert (= b_lambda!284291 (or b!7357290 b_lambda!284297)))

(declare-fun bs!1919887 () Bool)

(declare-fun d!2281729 () Bool)

(assert (= bs!1919887 (and d!2281729 b!7357290)))

(assert (=> bs!1919887 (= (dynLambda!29516 lambda!457123 (h!78021 (exprs!8641 ct1!282))) (validRegex!9797 (h!78021 (exprs!8641 ct1!282))))))

(declare-fun m!8016844 () Bool)

(assert (=> bs!1919887 m!8016844))

(assert (=> b!7357320 d!2281729))

(check-sat (not b!7357528) (not b!7357538) (not b!7357547) (not bm!673786) (not bm!673757) (not b!7357548) (not b!7357544) (not b!7357524) (not d!2281689) (not bs!1919887) (not d!2281721) (not b!7357402) (not b!7357373) (not d!2281707) (not d!2281723) (not b!7357549) (not b!7357485) (not b!7357539) (not d!2281685) tp_is_empty!48647 (not bm!673788) (not b_lambda!284297) (not b!7357442) (not bm!673761) (not b!7357536) (not b!7357535) (not b!7357542) (not bm!673800) (not bm!673796) (not bm!673758) (not b!7357401) (not b!7357545) (not b!7357321) (not d!2281715) (not b!7357540) (not b!7357525) (not b!7357530) (not b!7357529) (not b!7357526) (not d!2281705) (not bm!673797) (not b!7357543))
(check-sat)

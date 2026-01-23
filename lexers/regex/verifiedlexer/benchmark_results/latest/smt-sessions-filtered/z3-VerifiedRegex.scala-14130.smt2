; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742826 () Bool)

(assert start!742826)

(declare-fun res!3119600 () Bool)

(declare-fun e!4637274 () Bool)

(assert (=> start!742826 (=> (not res!3119600) (not e!4637274))))

(declare-datatypes ((C!42392 0))(
  ( (C!42393 (val!31658 Int)) )
))
(declare-datatypes ((Regex!21033 0))(
  ( (ElementMatch!21033 (c!1441777 C!42392)) (Concat!29878 (regOne!42578 Regex!21033) (regTwo!42578 Regex!21033)) (EmptyExpr!21033) (Star!21033 (reg!21362 Regex!21033)) (EmptyLang!21033) (Union!21033 (regOne!42579 Regex!21033) (regTwo!42579 Regex!21033)) )
))
(declare-fun r!27161 () Regex!21033)

(declare-datatypes ((List!73892 0))(
  ( (Nil!73768) (Cons!73768 (h!80216 C!42392) (t!388627 List!73892)) )
))
(declare-fun s!15118 () List!73892)

(get-info :version)

(assert (=> start!742826 (= res!3119600 (and (= r!27161 EmptyLang!21033) ((_ is Cons!73768) s!15118)))))

(assert (=> start!742826 e!4637274))

(declare-fun e!4637275 () Bool)

(assert (=> start!742826 e!4637275))

(declare-fun e!4637276 () Bool)

(assert (=> start!742826 e!4637276))

(declare-fun b!7843172 () Bool)

(declare-fun e!4637277 () Bool)

(declare-fun validRegex!11445 (Regex!21033) Bool)

(assert (=> b!7843172 (= e!4637277 (not (validRegex!11445 r!27161)))))

(declare-fun lt!2678884 () Regex!21033)

(declare-fun derivative!575 (Regex!21033 List!73892) Regex!21033)

(assert (=> b!7843172 (= (derivative!575 lt!2678884 (t!388627 s!15118)) lt!2678884)))

(declare-datatypes ((Unit!168844 0))(
  ( (Unit!168845) )
))
(declare-fun lt!2678885 () Unit!168844)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!110 (Regex!21033 List!73892) Unit!168844)

(assert (=> b!7843172 (= lt!2678885 (lemmaEmptyLangDerivativeIsAFixPoint!110 lt!2678884 (t!388627 s!15118)))))

(declare-fun b!7843173 () Bool)

(declare-fun tp!2321426 () Bool)

(declare-fun tp!2321429 () Bool)

(assert (=> b!7843173 (= e!4637275 (and tp!2321426 tp!2321429))))

(declare-fun b!7843174 () Bool)

(declare-fun tp_is_empty!52465 () Bool)

(declare-fun tp!2321427 () Bool)

(assert (=> b!7843174 (= e!4637276 (and tp_is_empty!52465 tp!2321427))))

(declare-fun b!7843175 () Bool)

(assert (=> b!7843175 (= e!4637274 e!4637277)))

(declare-fun res!3119599 () Bool)

(assert (=> b!7843175 (=> (not res!3119599) (not e!4637277))))

(assert (=> b!7843175 (= res!3119599 (= lt!2678884 EmptyLang!21033))))

(declare-fun derivativeStep!6278 (Regex!21033 C!42392) Regex!21033)

(assert (=> b!7843175 (= lt!2678884 (derivativeStep!6278 r!27161 (h!80216 s!15118)))))

(declare-fun b!7843176 () Bool)

(assert (=> b!7843176 (= e!4637275 tp_is_empty!52465)))

(declare-fun b!7843177 () Bool)

(declare-fun tp!2321430 () Bool)

(declare-fun tp!2321428 () Bool)

(assert (=> b!7843177 (= e!4637275 (and tp!2321430 tp!2321428))))

(declare-fun b!7843178 () Bool)

(declare-fun tp!2321425 () Bool)

(assert (=> b!7843178 (= e!4637275 tp!2321425)))

(assert (= (and start!742826 res!3119600) b!7843175))

(assert (= (and b!7843175 res!3119599) b!7843172))

(assert (= (and start!742826 ((_ is ElementMatch!21033) r!27161)) b!7843176))

(assert (= (and start!742826 ((_ is Concat!29878) r!27161)) b!7843177))

(assert (= (and start!742826 ((_ is Star!21033) r!27161)) b!7843178))

(assert (= (and start!742826 ((_ is Union!21033) r!27161)) b!7843173))

(assert (= (and start!742826 ((_ is Cons!73768) s!15118)) b!7843174))

(declare-fun m!8255068 () Bool)

(assert (=> b!7843172 m!8255068))

(declare-fun m!8255070 () Bool)

(assert (=> b!7843172 m!8255070))

(declare-fun m!8255072 () Bool)

(assert (=> b!7843172 m!8255072))

(declare-fun m!8255074 () Bool)

(assert (=> b!7843175 m!8255074))

(check-sat (not b!7843172) tp_is_empty!52465 (not b!7843178) (not b!7843177) (not b!7843175) (not b!7843174) (not b!7843173))
(check-sat)
(get-model)

(declare-fun call!726760 () Bool)

(declare-fun bm!726754 () Bool)

(declare-fun c!1441782 () Bool)

(declare-fun c!1441783 () Bool)

(assert (=> bm!726754 (= call!726760 (validRegex!11445 (ite c!1441782 (reg!21362 r!27161) (ite c!1441783 (regTwo!42579 r!27161) (regTwo!42578 r!27161)))))))

(declare-fun b!7843197 () Bool)

(declare-fun res!3119613 () Bool)

(declare-fun e!4637295 () Bool)

(assert (=> b!7843197 (=> (not res!3119613) (not e!4637295))))

(declare-fun call!726759 () Bool)

(assert (=> b!7843197 (= res!3119613 call!726759)))

(declare-fun e!4637298 () Bool)

(assert (=> b!7843197 (= e!4637298 e!4637295)))

(declare-fun d!2352635 () Bool)

(declare-fun res!3119615 () Bool)

(declare-fun e!4637296 () Bool)

(assert (=> d!2352635 (=> res!3119615 e!4637296)))

(assert (=> d!2352635 (= res!3119615 ((_ is ElementMatch!21033) r!27161))))

(assert (=> d!2352635 (= (validRegex!11445 r!27161) e!4637296)))

(declare-fun bm!726755 () Bool)

(declare-fun call!726761 () Bool)

(assert (=> bm!726755 (= call!726761 call!726760)))

(declare-fun b!7843198 () Bool)

(declare-fun e!4637297 () Bool)

(assert (=> b!7843198 (= e!4637297 e!4637298)))

(assert (=> b!7843198 (= c!1441783 ((_ is Union!21033) r!27161))))

(declare-fun b!7843199 () Bool)

(declare-fun res!3119612 () Bool)

(declare-fun e!4637293 () Bool)

(assert (=> b!7843199 (=> res!3119612 e!4637293)))

(assert (=> b!7843199 (= res!3119612 (not ((_ is Concat!29878) r!27161)))))

(assert (=> b!7843199 (= e!4637298 e!4637293)))

(declare-fun b!7843200 () Bool)

(assert (=> b!7843200 (= e!4637295 call!726761)))

(declare-fun b!7843201 () Bool)

(declare-fun e!4637294 () Bool)

(assert (=> b!7843201 (= e!4637294 call!726760)))

(declare-fun b!7843202 () Bool)

(declare-fun e!4637292 () Bool)

(assert (=> b!7843202 (= e!4637293 e!4637292)))

(declare-fun res!3119614 () Bool)

(assert (=> b!7843202 (=> (not res!3119614) (not e!4637292))))

(assert (=> b!7843202 (= res!3119614 call!726759)))

(declare-fun b!7843203 () Bool)

(assert (=> b!7843203 (= e!4637292 call!726761)))

(declare-fun bm!726756 () Bool)

(assert (=> bm!726756 (= call!726759 (validRegex!11445 (ite c!1441783 (regOne!42579 r!27161) (regOne!42578 r!27161))))))

(declare-fun b!7843204 () Bool)

(assert (=> b!7843204 (= e!4637296 e!4637297)))

(assert (=> b!7843204 (= c!1441782 ((_ is Star!21033) r!27161))))

(declare-fun b!7843205 () Bool)

(assert (=> b!7843205 (= e!4637297 e!4637294)))

(declare-fun res!3119611 () Bool)

(declare-fun nullable!9320 (Regex!21033) Bool)

(assert (=> b!7843205 (= res!3119611 (not (nullable!9320 (reg!21362 r!27161))))))

(assert (=> b!7843205 (=> (not res!3119611) (not e!4637294))))

(assert (= (and d!2352635 (not res!3119615)) b!7843204))

(assert (= (and b!7843204 c!1441782) b!7843205))

(assert (= (and b!7843204 (not c!1441782)) b!7843198))

(assert (= (and b!7843205 res!3119611) b!7843201))

(assert (= (and b!7843198 c!1441783) b!7843197))

(assert (= (and b!7843198 (not c!1441783)) b!7843199))

(assert (= (and b!7843197 res!3119613) b!7843200))

(assert (= (and b!7843199 (not res!3119612)) b!7843202))

(assert (= (and b!7843202 res!3119614) b!7843203))

(assert (= (or b!7843197 b!7843202) bm!726756))

(assert (= (or b!7843200 b!7843203) bm!726755))

(assert (= (or b!7843201 bm!726755) bm!726754))

(declare-fun m!8255076 () Bool)

(assert (=> bm!726754 m!8255076))

(declare-fun m!8255078 () Bool)

(assert (=> bm!726756 m!8255078))

(declare-fun m!8255080 () Bool)

(assert (=> b!7843205 m!8255080))

(assert (=> b!7843172 d!2352635))

(declare-fun d!2352639 () Bool)

(declare-fun lt!2678890 () Regex!21033)

(assert (=> d!2352639 (validRegex!11445 lt!2678890)))

(declare-fun e!4637311 () Regex!21033)

(assert (=> d!2352639 (= lt!2678890 e!4637311)))

(declare-fun c!1441796 () Bool)

(assert (=> d!2352639 (= c!1441796 ((_ is Cons!73768) (t!388627 s!15118)))))

(assert (=> d!2352639 (validRegex!11445 lt!2678884)))

(assert (=> d!2352639 (= (derivative!575 lt!2678884 (t!388627 s!15118)) lt!2678890)))

(declare-fun b!7843230 () Bool)

(assert (=> b!7843230 (= e!4637311 (derivative!575 (derivativeStep!6278 lt!2678884 (h!80216 (t!388627 s!15118))) (t!388627 (t!388627 s!15118))))))

(declare-fun b!7843231 () Bool)

(assert (=> b!7843231 (= e!4637311 lt!2678884)))

(assert (= (and d!2352639 c!1441796) b!7843230))

(assert (= (and d!2352639 (not c!1441796)) b!7843231))

(declare-fun m!8255082 () Bool)

(assert (=> d!2352639 m!8255082))

(declare-fun m!8255084 () Bool)

(assert (=> d!2352639 m!8255084))

(declare-fun m!8255086 () Bool)

(assert (=> b!7843230 m!8255086))

(assert (=> b!7843230 m!8255086))

(declare-fun m!8255088 () Bool)

(assert (=> b!7843230 m!8255088))

(assert (=> b!7843172 d!2352639))

(declare-fun d!2352641 () Bool)

(assert (=> d!2352641 (= (derivative!575 lt!2678884 (t!388627 s!15118)) lt!2678884)))

(declare-fun lt!2678894 () Unit!168844)

(declare-fun choose!59624 (Regex!21033 List!73892) Unit!168844)

(assert (=> d!2352641 (= lt!2678894 (choose!59624 lt!2678884 (t!388627 s!15118)))))

(assert (=> d!2352641 (= lt!2678884 EmptyLang!21033)))

(assert (=> d!2352641 (= (lemmaEmptyLangDerivativeIsAFixPoint!110 lt!2678884 (t!388627 s!15118)) lt!2678894)))

(declare-fun bs!1966997 () Bool)

(assert (= bs!1966997 d!2352641))

(assert (=> bs!1966997 m!8255070))

(declare-fun m!8255090 () Bool)

(assert (=> bs!1966997 m!8255090))

(assert (=> b!7843172 d!2352641))

(declare-fun b!7843295 () Bool)

(declare-fun e!4637354 () Regex!21033)

(assert (=> b!7843295 (= e!4637354 (ite (= (h!80216 s!15118) (c!1441777 r!27161)) EmptyExpr!21033 EmptyLang!21033))))

(declare-fun b!7843296 () Bool)

(declare-fun c!1441825 () Bool)

(assert (=> b!7843296 (= c!1441825 ((_ is Union!21033) r!27161))))

(declare-fun e!4637352 () Regex!21033)

(assert (=> b!7843296 (= e!4637354 e!4637352)))

(declare-fun d!2352643 () Bool)

(declare-fun lt!2678900 () Regex!21033)

(assert (=> d!2352643 (validRegex!11445 lt!2678900)))

(declare-fun e!4637353 () Regex!21033)

(assert (=> d!2352643 (= lt!2678900 e!4637353)))

(declare-fun c!1441821 () Bool)

(assert (=> d!2352643 (= c!1441821 (or ((_ is EmptyExpr!21033) r!27161) ((_ is EmptyLang!21033) r!27161)))))

(assert (=> d!2352643 (validRegex!11445 r!27161)))

(assert (=> d!2352643 (= (derivativeStep!6278 r!27161 (h!80216 s!15118)) lt!2678900)))

(declare-fun c!1441824 () Bool)

(declare-fun bm!726786 () Bool)

(declare-fun call!726793 () Regex!21033)

(assert (=> bm!726786 (= call!726793 (derivativeStep!6278 (ite c!1441825 (regOne!42579 r!27161) (ite c!1441824 (reg!21362 r!27161) (regOne!42578 r!27161))) (h!80216 s!15118)))))

(declare-fun b!7843297 () Bool)

(assert (=> b!7843297 (= e!4637353 EmptyLang!21033)))

(declare-fun bm!726787 () Bool)

(declare-fun call!726791 () Regex!21033)

(declare-fun call!726792 () Regex!21033)

(assert (=> bm!726787 (= call!726791 call!726792)))

(declare-fun b!7843298 () Bool)

(declare-fun c!1441823 () Bool)

(assert (=> b!7843298 (= c!1441823 (nullable!9320 (regOne!42578 r!27161)))))

(declare-fun e!4637351 () Regex!21033)

(declare-fun e!4637355 () Regex!21033)

(assert (=> b!7843298 (= e!4637351 e!4637355)))

(declare-fun b!7843299 () Bool)

(declare-fun call!726794 () Regex!21033)

(assert (=> b!7843299 (= e!4637355 (Union!21033 (Concat!29878 call!726791 (regTwo!42578 r!27161)) call!726794))))

(declare-fun b!7843300 () Bool)

(assert (=> b!7843300 (= e!4637351 (Concat!29878 call!726792 r!27161))))

(declare-fun bm!726788 () Bool)

(assert (=> bm!726788 (= call!726794 (derivativeStep!6278 (ite c!1441825 (regTwo!42579 r!27161) (regTwo!42578 r!27161)) (h!80216 s!15118)))))

(declare-fun b!7843301 () Bool)

(assert (=> b!7843301 (= e!4637352 e!4637351)))

(assert (=> b!7843301 (= c!1441824 ((_ is Star!21033) r!27161))))

(declare-fun b!7843302 () Bool)

(assert (=> b!7843302 (= e!4637352 (Union!21033 call!726793 call!726794))))

(declare-fun b!7843303 () Bool)

(assert (=> b!7843303 (= e!4637355 (Union!21033 (Concat!29878 call!726791 (regTwo!42578 r!27161)) EmptyLang!21033))))

(declare-fun bm!726789 () Bool)

(assert (=> bm!726789 (= call!726792 call!726793)))

(declare-fun b!7843304 () Bool)

(assert (=> b!7843304 (= e!4637353 e!4637354)))

(declare-fun c!1441822 () Bool)

(assert (=> b!7843304 (= c!1441822 ((_ is ElementMatch!21033) r!27161))))

(assert (= (and d!2352643 c!1441821) b!7843297))

(assert (= (and d!2352643 (not c!1441821)) b!7843304))

(assert (= (and b!7843304 c!1441822) b!7843295))

(assert (= (and b!7843304 (not c!1441822)) b!7843296))

(assert (= (and b!7843296 c!1441825) b!7843302))

(assert (= (and b!7843296 (not c!1441825)) b!7843301))

(assert (= (and b!7843301 c!1441824) b!7843300))

(assert (= (and b!7843301 (not c!1441824)) b!7843298))

(assert (= (and b!7843298 c!1441823) b!7843299))

(assert (= (and b!7843298 (not c!1441823)) b!7843303))

(assert (= (or b!7843299 b!7843303) bm!726787))

(assert (= (or b!7843300 bm!726787) bm!726789))

(assert (= (or b!7843302 b!7843299) bm!726788))

(assert (= (or b!7843302 bm!726789) bm!726786))

(declare-fun m!8255114 () Bool)

(assert (=> d!2352643 m!8255114))

(assert (=> d!2352643 m!8255068))

(declare-fun m!8255116 () Bool)

(assert (=> bm!726786 m!8255116))

(declare-fun m!8255118 () Bool)

(assert (=> b!7843298 m!8255118))

(declare-fun m!8255120 () Bool)

(assert (=> bm!726788 m!8255120))

(assert (=> b!7843175 d!2352643))

(declare-fun b!7843317 () Bool)

(declare-fun e!4637358 () Bool)

(declare-fun tp!2321441 () Bool)

(assert (=> b!7843317 (= e!4637358 tp!2321441)))

(declare-fun b!7843316 () Bool)

(declare-fun tp!2321444 () Bool)

(declare-fun tp!2321443 () Bool)

(assert (=> b!7843316 (= e!4637358 (and tp!2321444 tp!2321443))))

(declare-fun b!7843315 () Bool)

(assert (=> b!7843315 (= e!4637358 tp_is_empty!52465)))

(assert (=> b!7843173 (= tp!2321426 e!4637358)))

(declare-fun b!7843318 () Bool)

(declare-fun tp!2321442 () Bool)

(declare-fun tp!2321445 () Bool)

(assert (=> b!7843318 (= e!4637358 (and tp!2321442 tp!2321445))))

(assert (= (and b!7843173 ((_ is ElementMatch!21033) (regOne!42579 r!27161))) b!7843315))

(assert (= (and b!7843173 ((_ is Concat!29878) (regOne!42579 r!27161))) b!7843316))

(assert (= (and b!7843173 ((_ is Star!21033) (regOne!42579 r!27161))) b!7843317))

(assert (= (and b!7843173 ((_ is Union!21033) (regOne!42579 r!27161))) b!7843318))

(declare-fun b!7843321 () Bool)

(declare-fun e!4637359 () Bool)

(declare-fun tp!2321446 () Bool)

(assert (=> b!7843321 (= e!4637359 tp!2321446)))

(declare-fun b!7843320 () Bool)

(declare-fun tp!2321449 () Bool)

(declare-fun tp!2321448 () Bool)

(assert (=> b!7843320 (= e!4637359 (and tp!2321449 tp!2321448))))

(declare-fun b!7843319 () Bool)

(assert (=> b!7843319 (= e!4637359 tp_is_empty!52465)))

(assert (=> b!7843173 (= tp!2321429 e!4637359)))

(declare-fun b!7843322 () Bool)

(declare-fun tp!2321447 () Bool)

(declare-fun tp!2321450 () Bool)

(assert (=> b!7843322 (= e!4637359 (and tp!2321447 tp!2321450))))

(assert (= (and b!7843173 ((_ is ElementMatch!21033) (regTwo!42579 r!27161))) b!7843319))

(assert (= (and b!7843173 ((_ is Concat!29878) (regTwo!42579 r!27161))) b!7843320))

(assert (= (and b!7843173 ((_ is Star!21033) (regTwo!42579 r!27161))) b!7843321))

(assert (= (and b!7843173 ((_ is Union!21033) (regTwo!42579 r!27161))) b!7843322))

(declare-fun b!7843325 () Bool)

(declare-fun e!4637360 () Bool)

(declare-fun tp!2321451 () Bool)

(assert (=> b!7843325 (= e!4637360 tp!2321451)))

(declare-fun b!7843324 () Bool)

(declare-fun tp!2321454 () Bool)

(declare-fun tp!2321453 () Bool)

(assert (=> b!7843324 (= e!4637360 (and tp!2321454 tp!2321453))))

(declare-fun b!7843323 () Bool)

(assert (=> b!7843323 (= e!4637360 tp_is_empty!52465)))

(assert (=> b!7843178 (= tp!2321425 e!4637360)))

(declare-fun b!7843326 () Bool)

(declare-fun tp!2321452 () Bool)

(declare-fun tp!2321455 () Bool)

(assert (=> b!7843326 (= e!4637360 (and tp!2321452 tp!2321455))))

(assert (= (and b!7843178 ((_ is ElementMatch!21033) (reg!21362 r!27161))) b!7843323))

(assert (= (and b!7843178 ((_ is Concat!29878) (reg!21362 r!27161))) b!7843324))

(assert (= (and b!7843178 ((_ is Star!21033) (reg!21362 r!27161))) b!7843325))

(assert (= (and b!7843178 ((_ is Union!21033) (reg!21362 r!27161))) b!7843326))

(declare-fun b!7843339 () Bool)

(declare-fun e!4637365 () Bool)

(declare-fun tp!2321464 () Bool)

(assert (=> b!7843339 (= e!4637365 (and tp_is_empty!52465 tp!2321464))))

(assert (=> b!7843174 (= tp!2321427 e!4637365)))

(assert (= (and b!7843174 ((_ is Cons!73768) (t!388627 s!15118))) b!7843339))

(declare-fun b!7843344 () Bool)

(declare-fun e!4637366 () Bool)

(declare-fun tp!2321467 () Bool)

(assert (=> b!7843344 (= e!4637366 tp!2321467)))

(declare-fun b!7843343 () Bool)

(declare-fun tp!2321472 () Bool)

(declare-fun tp!2321471 () Bool)

(assert (=> b!7843343 (= e!4637366 (and tp!2321472 tp!2321471))))

(declare-fun b!7843342 () Bool)

(assert (=> b!7843342 (= e!4637366 tp_is_empty!52465)))

(assert (=> b!7843177 (= tp!2321430 e!4637366)))

(declare-fun b!7843345 () Bool)

(declare-fun tp!2321470 () Bool)

(declare-fun tp!2321473 () Bool)

(assert (=> b!7843345 (= e!4637366 (and tp!2321470 tp!2321473))))

(assert (= (and b!7843177 ((_ is ElementMatch!21033) (regOne!42578 r!27161))) b!7843342))

(assert (= (and b!7843177 ((_ is Concat!29878) (regOne!42578 r!27161))) b!7843343))

(assert (= (and b!7843177 ((_ is Star!21033) (regOne!42578 r!27161))) b!7843344))

(assert (= (and b!7843177 ((_ is Union!21033) (regOne!42578 r!27161))) b!7843345))

(declare-fun b!7843348 () Bool)

(declare-fun e!4637367 () Bool)

(declare-fun tp!2321474 () Bool)

(assert (=> b!7843348 (= e!4637367 tp!2321474)))

(declare-fun b!7843347 () Bool)

(declare-fun tp!2321477 () Bool)

(declare-fun tp!2321476 () Bool)

(assert (=> b!7843347 (= e!4637367 (and tp!2321477 tp!2321476))))

(declare-fun b!7843346 () Bool)

(assert (=> b!7843346 (= e!4637367 tp_is_empty!52465)))

(assert (=> b!7843177 (= tp!2321428 e!4637367)))

(declare-fun b!7843349 () Bool)

(declare-fun tp!2321475 () Bool)

(declare-fun tp!2321478 () Bool)

(assert (=> b!7843349 (= e!4637367 (and tp!2321475 tp!2321478))))

(assert (= (and b!7843177 ((_ is ElementMatch!21033) (regTwo!42578 r!27161))) b!7843346))

(assert (= (and b!7843177 ((_ is Concat!29878) (regTwo!42578 r!27161))) b!7843347))

(assert (= (and b!7843177 ((_ is Star!21033) (regTwo!42578 r!27161))) b!7843348))

(assert (= (and b!7843177 ((_ is Union!21033) (regTwo!42578 r!27161))) b!7843349))

(check-sat (not bm!726788) tp_is_empty!52465 (not b!7843348) (not b!7843298) (not bm!726756) (not d!2352643) (not b!7843343) (not b!7843205) (not b!7843344) (not b!7843230) (not d!2352641) (not b!7843321) (not b!7843325) (not bm!726754) (not b!7843347) (not b!7843339) (not b!7843322) (not d!2352639) (not b!7843316) (not b!7843345) (not b!7843349) (not b!7843318) (not b!7843317) (not b!7843324) (not bm!726786) (not b!7843326) (not b!7843320))
(check-sat)

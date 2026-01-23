; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!590610 () Bool)

(assert start!590610)

(declare-fun b!5739956 () Bool)

(assert (=> b!5739956 true))

(assert (=> b!5739956 true))

(declare-fun lambda!311333 () Int)

(declare-fun lambda!311332 () Int)

(assert (=> b!5739956 (not (= lambda!311333 lambda!311332))))

(assert (=> b!5739956 true))

(assert (=> b!5739956 true))

(declare-fun b!5739944 () Bool)

(assert (=> b!5739944 true))

(declare-fun b!5739916 () Bool)

(declare-fun res!2424416 () Bool)

(declare-fun e!3528375 () Bool)

(assert (=> b!5739916 (=> res!2424416 e!3528375)))

(declare-fun e!3528389 () Bool)

(assert (=> b!5739916 (= res!2424416 e!3528389)))

(declare-fun res!2424402 () Bool)

(assert (=> b!5739916 (=> (not res!2424402) (not e!3528389))))

(declare-datatypes ((C!31770 0))(
  ( (C!31771 (val!25587 Int)) )
))
(declare-datatypes ((Regex!15750 0))(
  ( (ElementMatch!15750 (c!1013022 C!31770)) (Concat!24595 (regOne!32012 Regex!15750) (regTwo!32012 Regex!15750)) (EmptyExpr!15750) (Star!15750 (reg!16079 Regex!15750)) (EmptyLang!15750) (Union!15750 (regOne!32013 Regex!15750) (regTwo!32013 Regex!15750)) )
))
(declare-fun r!7292 () Regex!15750)

(assert (=> b!5739916 (= res!2424402 (is-Concat!24595 (regOne!32012 r!7292)))))

(declare-fun b!5739917 () Bool)

(declare-fun res!2424398 () Bool)

(declare-fun e!3528384 () Bool)

(assert (=> b!5739917 (=> res!2424398 e!3528384)))

(declare-datatypes ((List!63549 0))(
  ( (Nil!63425) (Cons!63425 (h!69873 Regex!15750) (t!376877 List!63549)) )
))
(declare-datatypes ((Context!10268 0))(
  ( (Context!10269 (exprs!5634 List!63549)) )
))
(declare-fun lt!2285326 () Context!10268)

(declare-fun lt!2285306 () Regex!15750)

(declare-datatypes ((List!63550 0))(
  ( (Nil!63426) (Cons!63426 (h!69874 Context!10268) (t!376878 List!63550)) )
))
(declare-fun unfocusZipper!1492 (List!63550) Regex!15750)

(assert (=> b!5739917 (= res!2424398 (not (= (unfocusZipper!1492 (Cons!63426 lt!2285326 Nil!63426)) lt!2285306)))))

(declare-fun b!5739918 () Bool)

(declare-fun e!3528386 () Bool)

(declare-fun e!3528369 () Bool)

(assert (=> b!5739918 (= e!3528386 e!3528369)))

(declare-fun res!2424426 () Bool)

(assert (=> b!5739918 (=> res!2424426 e!3528369)))

(assert (=> b!5739918 (= res!2424426 (not (= r!7292 lt!2285306)))))

(declare-fun lt!2285322 () Regex!15750)

(assert (=> b!5739918 (= lt!2285306 (Concat!24595 lt!2285322 (regTwo!32012 r!7292)))))

(declare-fun b!5739919 () Bool)

(declare-fun res!2424414 () Bool)

(declare-fun e!3528378 () Bool)

(assert (=> b!5739919 (=> res!2424414 e!3528378)))

(declare-fun lt!2285295 () Bool)

(assert (=> b!5739919 (= res!2424414 lt!2285295)))

(declare-fun b!5739920 () Bool)

(declare-fun res!2424413 () Bool)

(declare-fun e!3528380 () Bool)

(assert (=> b!5739920 (=> res!2424413 e!3528380)))

(declare-fun zl!343 () List!63550)

(assert (=> b!5739920 (= res!2424413 (not (is-Cons!63425 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun b!5739921 () Bool)

(declare-fun res!2424415 () Bool)

(assert (=> b!5739921 (=> res!2424415 e!3528380)))

(assert (=> b!5739921 (= res!2424415 (or (is-EmptyExpr!15750 r!7292) (is-EmptyLang!15750 r!7292) (is-ElementMatch!15750 r!7292) (is-Union!15750 r!7292) (not (is-Concat!24595 r!7292))))))

(declare-fun b!5739922 () Bool)

(declare-fun e!3528379 () Bool)

(declare-fun lt!2285310 () (Set Context!10268))

(declare-datatypes ((List!63551 0))(
  ( (Nil!63427) (Cons!63427 (h!69875 C!31770) (t!376879 List!63551)) )
))
(declare-fun s!2326 () List!63551)

(declare-fun matchZipper!1888 ((Set Context!10268) List!63551) Bool)

(assert (=> b!5739922 (= e!3528379 (not (matchZipper!1888 lt!2285310 (t!376879 s!2326))))))

(declare-fun b!5739923 () Bool)

(declare-fun res!2424428 () Bool)

(declare-fun e!3528373 () Bool)

(assert (=> b!5739923 (=> res!2424428 e!3528373)))

(declare-fun z!1189 () (Set Context!10268))

(assert (=> b!5739923 (= res!2424428 (not (matchZipper!1888 z!1189 s!2326)))))

(declare-fun b!5739924 () Bool)

(declare-datatypes ((Unit!156532 0))(
  ( (Unit!156533) )
))
(declare-fun e!3528374 () Unit!156532)

(declare-fun Unit!156534 () Unit!156532)

(assert (=> b!5739924 (= e!3528374 Unit!156534)))

(declare-fun lt!2285313 () (Set Context!10268))

(declare-fun lt!2285323 () Unit!156532)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!775 ((Set Context!10268) (Set Context!10268) List!63551) Unit!156532)

(assert (=> b!5739924 (= lt!2285323 (lemmaZipperConcatMatchesSameAsBothZippers!775 lt!2285313 lt!2285310 (t!376879 s!2326)))))

(declare-fun res!2424422 () Bool)

(assert (=> b!5739924 (= res!2424422 (matchZipper!1888 lt!2285313 (t!376879 s!2326)))))

(declare-fun e!3528385 () Bool)

(assert (=> b!5739924 (=> res!2424422 e!3528385)))

(assert (=> b!5739924 (= (matchZipper!1888 (set.union lt!2285313 lt!2285310) (t!376879 s!2326)) e!3528385)))

(declare-fun b!5739926 () Bool)

(declare-fun e!3528381 () Bool)

(declare-fun tp!1587256 () Bool)

(assert (=> b!5739926 (= e!3528381 tp!1587256)))

(declare-fun b!5739927 () Bool)

(declare-fun res!2424410 () Bool)

(assert (=> b!5739927 (=> res!2424410 e!3528380)))

(declare-fun isEmpty!35307 (List!63550) Bool)

(assert (=> b!5739927 (= res!2424410 (not (isEmpty!35307 (t!376878 zl!343))))))

(declare-fun b!5739928 () Bool)

(declare-fun res!2424417 () Bool)

(declare-fun e!3528377 () Bool)

(assert (=> b!5739928 (=> res!2424417 e!3528377)))

(declare-fun isEmpty!35308 (List!63549) Bool)

(assert (=> b!5739928 (= res!2424417 (isEmpty!35308 (t!376877 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun b!5739929 () Bool)

(declare-fun e!3528387 () Bool)

(declare-fun tp_is_empty!40753 () Bool)

(assert (=> b!5739929 (= e!3528387 tp_is_empty!40753)))

(declare-fun b!5739930 () Bool)

(assert (=> b!5739930 (= e!3528373 e!3528378)))

(declare-fun res!2424418 () Bool)

(assert (=> b!5739930 (=> res!2424418 e!3528378)))

(assert (=> b!5739930 (= res!2424418 e!3528379)))

(declare-fun res!2424405 () Bool)

(assert (=> b!5739930 (=> (not res!2424405) (not e!3528379))))

(assert (=> b!5739930 (= res!2424405 (not lt!2285295))))

(assert (=> b!5739930 (= lt!2285295 (matchZipper!1888 lt!2285313 (t!376879 s!2326)))))

(declare-fun b!5739931 () Bool)

(declare-fun res!2424424 () Bool)

(assert (=> b!5739931 (=> res!2424424 e!3528380)))

(declare-fun generalisedConcat!1365 (List!63549) Regex!15750)

(assert (=> b!5739931 (= res!2424424 (not (= r!7292 (generalisedConcat!1365 (exprs!5634 (h!69874 zl!343))))))))

(declare-fun b!5739932 () Bool)

(declare-fun e!3528371 () Bool)

(assert (=> b!5739932 (= e!3528375 e!3528371)))

(declare-fun res!2424403 () Bool)

(assert (=> b!5739932 (=> res!2424403 e!3528371)))

(declare-fun lt!2285319 () (Set Context!10268))

(assert (=> b!5739932 (= res!2424403 (not (= lt!2285313 lt!2285319)))))

(declare-fun derivationStepZipperDown!1092 (Regex!15750 Context!10268 C!31770) (Set Context!10268))

(assert (=> b!5739932 (= lt!2285319 (derivationStepZipperDown!1092 (reg!16079 (regOne!32012 r!7292)) lt!2285326 (h!69875 s!2326)))))

(declare-fun lt!2285320 () List!63549)

(assert (=> b!5739932 (= lt!2285326 (Context!10269 lt!2285320))))

(assert (=> b!5739932 (= lt!2285320 (Cons!63425 lt!2285322 (t!376877 (exprs!5634 (h!69874 zl!343)))))))

(assert (=> b!5739932 (= lt!2285322 (Star!15750 (reg!16079 (regOne!32012 r!7292))))))

(declare-fun b!5739933 () Bool)

(declare-fun nullable!5782 (Regex!15750) Bool)

(assert (=> b!5739933 (= e!3528389 (nullable!5782 (regOne!32012 (regOne!32012 r!7292))))))

(declare-fun b!5739934 () Bool)

(declare-fun e!3528388 () Bool)

(assert (=> b!5739934 (= e!3528369 e!3528388)))

(declare-fun res!2424423 () Bool)

(assert (=> b!5739934 (=> res!2424423 e!3528388)))

(declare-fun lt!2285318 () Context!10268)

(declare-fun lt!2285296 () Regex!15750)

(assert (=> b!5739934 (= res!2424423 (not (= (unfocusZipper!1492 (Cons!63426 lt!2285318 Nil!63426)) lt!2285296)))))

(assert (=> b!5739934 (= lt!2285296 (Concat!24595 (reg!16079 (regOne!32012 r!7292)) lt!2285306))))

(declare-fun b!5739935 () Bool)

(assert (=> b!5739935 (= e!3528371 e!3528386)))

(declare-fun res!2424404 () Bool)

(assert (=> b!5739935 (=> res!2424404 e!3528386)))

(declare-fun lt!2285308 () (Set Context!10268))

(assert (=> b!5739935 (= res!2424404 (not (= lt!2285308 lt!2285319)))))

(declare-fun lt!2285299 () (Set Context!10268))

(declare-fun lambda!311334 () Int)

(declare-fun flatMap!1363 ((Set Context!10268) Int) (Set Context!10268))

(declare-fun derivationStepZipperUp!1018 (Context!10268 C!31770) (Set Context!10268))

(assert (=> b!5739935 (= (flatMap!1363 lt!2285299 lambda!311334) (derivationStepZipperUp!1018 lt!2285318 (h!69875 s!2326)))))

(declare-fun lt!2285327 () Unit!156532)

(declare-fun lemmaFlatMapOnSingletonSet!895 ((Set Context!10268) Context!10268 Int) Unit!156532)

(assert (=> b!5739935 (= lt!2285327 (lemmaFlatMapOnSingletonSet!895 lt!2285299 lt!2285318 lambda!311334))))

(declare-fun lt!2285325 () (Set Context!10268))

(assert (=> b!5739935 (= lt!2285325 (derivationStepZipperUp!1018 lt!2285318 (h!69875 s!2326)))))

(declare-fun derivationStepZipper!1833 ((Set Context!10268) C!31770) (Set Context!10268))

(assert (=> b!5739935 (= lt!2285308 (derivationStepZipper!1833 lt!2285299 (h!69875 s!2326)))))

(assert (=> b!5739935 (= lt!2285299 (set.insert lt!2285318 (as set.empty (Set Context!10268))))))

(assert (=> b!5739935 (= lt!2285318 (Context!10269 (Cons!63425 (reg!16079 (regOne!32012 r!7292)) lt!2285320)))))

(declare-fun b!5739936 () Bool)

(declare-fun res!2424419 () Bool)

(assert (=> b!5739936 (=> res!2424419 e!3528386)))

(assert (=> b!5739936 (= res!2424419 (not (= (matchZipper!1888 lt!2285299 s!2326) (matchZipper!1888 lt!2285308 (t!376879 s!2326)))))))

(declare-fun b!5739937 () Bool)

(declare-fun res!2424411 () Bool)

(assert (=> b!5739937 (=> res!2424411 e!3528378)))

(assert (=> b!5739937 (= res!2424411 (not (matchZipper!1888 lt!2285310 (t!376879 s!2326))))))

(declare-fun b!5739938 () Bool)

(declare-fun res!2424427 () Bool)

(declare-fun e!3528372 () Bool)

(assert (=> b!5739938 (=> (not res!2424427) (not e!3528372))))

(declare-fun toList!9534 ((Set Context!10268)) List!63550)

(assert (=> b!5739938 (= res!2424427 (= (toList!9534 z!1189) zl!343))))

(declare-fun b!5739939 () Bool)

(assert (=> b!5739939 (= e!3528384 e!3528373)))

(declare-fun res!2424407 () Bool)

(assert (=> b!5739939 (=> res!2424407 e!3528373)))

(declare-fun lt!2285300 () Bool)

(assert (=> b!5739939 (= res!2424407 lt!2285300)))

(declare-fun matchR!7935 (Regex!15750 List!63551) Bool)

(declare-fun matchRSpec!2853 (Regex!15750 List!63551) Bool)

(assert (=> b!5739939 (= (matchR!7935 lt!2285296 s!2326) (matchRSpec!2853 lt!2285296 s!2326))))

(declare-fun lt!2285316 () Unit!156532)

(declare-fun mainMatchTheorem!2853 (Regex!15750 List!63551) Unit!156532)

(assert (=> b!5739939 (= lt!2285316 (mainMatchTheorem!2853 lt!2285296 s!2326))))

(declare-fun setIsEmpty!38524 () Bool)

(declare-fun setRes!38524 () Bool)

(assert (=> setIsEmpty!38524 setRes!38524))

(declare-fun b!5739940 () Bool)

(declare-fun e!3528383 () Bool)

(assert (=> b!5739940 (= e!3528372 e!3528383)))

(declare-fun res!2424409 () Bool)

(assert (=> b!5739940 (=> (not res!2424409) (not e!3528383))))

(declare-fun lt!2285294 () Regex!15750)

(assert (=> b!5739940 (= res!2424409 (= r!7292 lt!2285294))))

(assert (=> b!5739940 (= lt!2285294 (unfocusZipper!1492 zl!343))))

(declare-fun b!5739941 () Bool)

(declare-fun e!3528376 () Bool)

(declare-fun tp!1587249 () Bool)

(assert (=> b!5739941 (= e!3528376 tp!1587249)))

(declare-fun b!5739942 () Bool)

(declare-fun res!2424400 () Bool)

(assert (=> b!5739942 (=> res!2424400 e!3528375)))

(assert (=> b!5739942 (= res!2424400 (or (is-Concat!24595 (regOne!32012 r!7292)) (not (is-Star!15750 (regOne!32012 r!7292)))))))

(declare-fun b!5739943 () Bool)

(assert (=> b!5739943 (= e!3528388 e!3528384)))

(declare-fun res!2424425 () Bool)

(assert (=> b!5739943 (=> res!2424425 e!3528384)))

(declare-fun lt!2285305 () Context!10268)

(assert (=> b!5739943 (= res!2424425 (not (= (unfocusZipper!1492 (Cons!63426 lt!2285305 Nil!63426)) (reg!16079 (regOne!32012 r!7292)))))))

(declare-fun lt!2285311 () (Set Context!10268))

(assert (=> b!5739943 (= (flatMap!1363 lt!2285311 lambda!311334) (derivationStepZipperUp!1018 lt!2285326 (h!69875 s!2326)))))

(declare-fun lt!2285312 () Unit!156532)

(assert (=> b!5739943 (= lt!2285312 (lemmaFlatMapOnSingletonSet!895 lt!2285311 lt!2285326 lambda!311334))))

(declare-fun lt!2285324 () (Set Context!10268))

(assert (=> b!5739943 (= (flatMap!1363 lt!2285324 lambda!311334) (derivationStepZipperUp!1018 lt!2285305 (h!69875 s!2326)))))

(declare-fun lt!2285309 () Unit!156532)

(assert (=> b!5739943 (= lt!2285309 (lemmaFlatMapOnSingletonSet!895 lt!2285324 lt!2285305 lambda!311334))))

(declare-fun lt!2285303 () (Set Context!10268))

(assert (=> b!5739943 (= lt!2285303 (derivationStepZipperUp!1018 lt!2285326 (h!69875 s!2326)))))

(declare-fun lt!2285307 () (Set Context!10268))

(assert (=> b!5739943 (= lt!2285307 (derivationStepZipperUp!1018 lt!2285305 (h!69875 s!2326)))))

(assert (=> b!5739943 (= lt!2285311 (set.insert lt!2285326 (as set.empty (Set Context!10268))))))

(assert (=> b!5739943 (= lt!2285324 (set.insert lt!2285305 (as set.empty (Set Context!10268))))))

(assert (=> b!5739943 (= lt!2285305 (Context!10269 (Cons!63425 (reg!16079 (regOne!32012 r!7292)) Nil!63425)))))

(assert (=> b!5739944 (= e!3528377 e!3528375)))

(declare-fun res!2424399 () Bool)

(assert (=> b!5739944 (=> res!2424399 e!3528375)))

(assert (=> b!5739944 (= res!2424399 (or (and (is-ElementMatch!15750 (regOne!32012 r!7292)) (= (c!1013022 (regOne!32012 r!7292)) (h!69875 s!2326))) (is-Union!15750 (regOne!32012 r!7292))))))

(declare-fun lt!2285328 () Unit!156532)

(assert (=> b!5739944 (= lt!2285328 e!3528374)))

(declare-fun c!1013021 () Bool)

(declare-fun lt!2285298 () Bool)

(assert (=> b!5739944 (= c!1013021 lt!2285298)))

(assert (=> b!5739944 (= lt!2285298 (nullable!5782 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(assert (=> b!5739944 (= (flatMap!1363 z!1189 lambda!311334) (derivationStepZipperUp!1018 (h!69874 zl!343) (h!69875 s!2326)))))

(declare-fun lt!2285304 () Unit!156532)

(assert (=> b!5739944 (= lt!2285304 (lemmaFlatMapOnSingletonSet!895 z!1189 (h!69874 zl!343) lambda!311334))))

(declare-fun lt!2285314 () Context!10268)

(assert (=> b!5739944 (= lt!2285310 (derivationStepZipperUp!1018 lt!2285314 (h!69875 s!2326)))))

(assert (=> b!5739944 (= lt!2285313 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 (h!69874 zl!343))) lt!2285314 (h!69875 s!2326)))))

(assert (=> b!5739944 (= lt!2285314 (Context!10269 (t!376877 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun lt!2285302 () (Set Context!10268))

(assert (=> b!5739944 (= lt!2285302 (derivationStepZipperUp!1018 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343))))) (h!69875 s!2326)))))

(declare-fun tp!1587254 () Bool)

(declare-fun setElem!38524 () Context!10268)

(declare-fun setNonEmpty!38524 () Bool)

(declare-fun inv!82623 (Context!10268) Bool)

(assert (=> setNonEmpty!38524 (= setRes!38524 (and tp!1587254 (inv!82623 setElem!38524) e!3528376))))

(declare-fun setRest!38524 () (Set Context!10268))

(assert (=> setNonEmpty!38524 (= z!1189 (set.union (set.insert setElem!38524 (as set.empty (Set Context!10268))) setRest!38524))))

(declare-fun b!5739945 () Bool)

(declare-fun e!3528370 () Bool)

(declare-fun tp!1587255 () Bool)

(assert (=> b!5739945 (= e!3528370 (and (inv!82623 (h!69874 zl!343)) e!3528381 tp!1587255))))

(declare-fun b!5739946 () Bool)

(declare-fun res!2424406 () Bool)

(assert (=> b!5739946 (=> res!2424406 e!3528373)))

(assert (=> b!5739946 (= res!2424406 (not lt!2285298))))

(declare-fun b!5739947 () Bool)

(declare-fun tp!1587253 () Bool)

(declare-fun tp!1587248 () Bool)

(assert (=> b!5739947 (= e!3528387 (and tp!1587253 tp!1587248))))

(declare-fun b!5739948 () Bool)

(declare-fun tp!1587251 () Bool)

(assert (=> b!5739948 (= e!3528387 tp!1587251)))

(declare-fun lt!2285293 () (Set Context!10268))

(declare-fun b!5739949 () Bool)

(assert (=> b!5739949 (= e!3528378 (= lt!2285310 (derivationStepZipper!1833 lt!2285293 (h!69875 s!2326))))))

(assert (=> b!5739949 (= (flatMap!1363 lt!2285293 lambda!311334) (derivationStepZipperUp!1018 lt!2285314 (h!69875 s!2326)))))

(declare-fun lt!2285321 () Unit!156532)

(assert (=> b!5739949 (= lt!2285321 (lemmaFlatMapOnSingletonSet!895 lt!2285293 lt!2285314 lambda!311334))))

(assert (=> b!5739949 (= lt!2285293 (set.insert lt!2285314 (as set.empty (Set Context!10268))))))

(declare-fun b!5739950 () Bool)

(declare-fun Unit!156535 () Unit!156532)

(assert (=> b!5739950 (= e!3528374 Unit!156535)))

(declare-fun b!5739951 () Bool)

(assert (=> b!5739951 (= e!3528385 (matchZipper!1888 lt!2285310 (t!376879 s!2326)))))

(declare-fun b!5739952 () Bool)

(declare-fun res!2424412 () Bool)

(assert (=> b!5739952 (=> res!2424412 e!3528380)))

(declare-fun generalisedUnion!1613 (List!63549) Regex!15750)

(declare-fun unfocusZipperList!1178 (List!63550) List!63549)

(assert (=> b!5739952 (= res!2424412 (not (= r!7292 (generalisedUnion!1613 (unfocusZipperList!1178 zl!343)))))))

(declare-fun b!5739953 () Bool)

(declare-fun tp!1587247 () Bool)

(declare-fun tp!1587252 () Bool)

(assert (=> b!5739953 (= e!3528387 (and tp!1587247 tp!1587252))))

(declare-fun b!5739954 () Bool)

(declare-fun res!2424401 () Bool)

(assert (=> b!5739954 (=> res!2424401 e!3528386)))

(assert (=> b!5739954 (= res!2424401 (not (= lt!2285294 r!7292)))))

(declare-fun b!5739955 () Bool)

(declare-fun e!3528382 () Bool)

(declare-fun tp!1587250 () Bool)

(assert (=> b!5739955 (= e!3528382 (and tp_is_empty!40753 tp!1587250))))

(assert (=> b!5739956 (= e!3528380 e!3528377)))

(declare-fun res!2424420 () Bool)

(assert (=> b!5739956 (=> res!2424420 e!3528377)))

(declare-fun lt!2285317 () Bool)

(assert (=> b!5739956 (= res!2424420 (or (not (= lt!2285300 lt!2285317)) (is-Nil!63427 s!2326)))))

(declare-fun Exists!2850 (Int) Bool)

(assert (=> b!5739956 (= (Exists!2850 lambda!311332) (Exists!2850 lambda!311333))))

(declare-fun lt!2285297 () Unit!156532)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1479 (Regex!15750 Regex!15750 List!63551) Unit!156532)

(assert (=> b!5739956 (= lt!2285297 (lemmaExistCutMatchRandMatchRSpecEquivalent!1479 (regOne!32012 r!7292) (regTwo!32012 r!7292) s!2326))))

(assert (=> b!5739956 (= lt!2285317 (Exists!2850 lambda!311332))))

(declare-datatypes ((tuple2!65694 0))(
  ( (tuple2!65695 (_1!36150 List!63551) (_2!36150 List!63551)) )
))
(declare-datatypes ((Option!15759 0))(
  ( (None!15758) (Some!15758 (v!51813 tuple2!65694)) )
))
(declare-fun isDefined!12462 (Option!15759) Bool)

(declare-fun findConcatSeparation!2173 (Regex!15750 Regex!15750 List!63551 List!63551 List!63551) Option!15759)

(assert (=> b!5739956 (= lt!2285317 (isDefined!12462 (findConcatSeparation!2173 (regOne!32012 r!7292) (regTwo!32012 r!7292) Nil!63427 s!2326 s!2326)))))

(declare-fun lt!2285315 () Unit!156532)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1937 (Regex!15750 Regex!15750 List!63551) Unit!156532)

(assert (=> b!5739956 (= lt!2285315 (lemmaFindConcatSeparationEquivalentToExists!1937 (regOne!32012 r!7292) (regTwo!32012 r!7292) s!2326))))

(declare-fun b!5739925 () Bool)

(assert (=> b!5739925 (= e!3528383 (not e!3528380))))

(declare-fun res!2424421 () Bool)

(assert (=> b!5739925 (=> res!2424421 e!3528380)))

(assert (=> b!5739925 (= res!2424421 (not (is-Cons!63426 zl!343)))))

(assert (=> b!5739925 (= lt!2285300 (matchRSpec!2853 r!7292 s!2326))))

(assert (=> b!5739925 (= lt!2285300 (matchR!7935 r!7292 s!2326))))

(declare-fun lt!2285301 () Unit!156532)

(assert (=> b!5739925 (= lt!2285301 (mainMatchTheorem!2853 r!7292 s!2326))))

(declare-fun res!2424408 () Bool)

(assert (=> start!590610 (=> (not res!2424408) (not e!3528372))))

(declare-fun validRegex!7486 (Regex!15750) Bool)

(assert (=> start!590610 (= res!2424408 (validRegex!7486 r!7292))))

(assert (=> start!590610 e!3528372))

(assert (=> start!590610 e!3528387))

(declare-fun condSetEmpty!38524 () Bool)

(assert (=> start!590610 (= condSetEmpty!38524 (= z!1189 (as set.empty (Set Context!10268))))))

(assert (=> start!590610 setRes!38524))

(assert (=> start!590610 e!3528370))

(assert (=> start!590610 e!3528382))

(assert (= (and start!590610 res!2424408) b!5739938))

(assert (= (and b!5739938 res!2424427) b!5739940))

(assert (= (and b!5739940 res!2424409) b!5739925))

(assert (= (and b!5739925 (not res!2424421)) b!5739927))

(assert (= (and b!5739927 (not res!2424410)) b!5739931))

(assert (= (and b!5739931 (not res!2424424)) b!5739920))

(assert (= (and b!5739920 (not res!2424413)) b!5739952))

(assert (= (and b!5739952 (not res!2424412)) b!5739921))

(assert (= (and b!5739921 (not res!2424415)) b!5739956))

(assert (= (and b!5739956 (not res!2424420)) b!5739928))

(assert (= (and b!5739928 (not res!2424417)) b!5739944))

(assert (= (and b!5739944 c!1013021) b!5739924))

(assert (= (and b!5739944 (not c!1013021)) b!5739950))

(assert (= (and b!5739924 (not res!2424422)) b!5739951))

(assert (= (and b!5739944 (not res!2424399)) b!5739916))

(assert (= (and b!5739916 res!2424402) b!5739933))

(assert (= (and b!5739916 (not res!2424416)) b!5739942))

(assert (= (and b!5739942 (not res!2424400)) b!5739932))

(assert (= (and b!5739932 (not res!2424403)) b!5739935))

(assert (= (and b!5739935 (not res!2424404)) b!5739936))

(assert (= (and b!5739936 (not res!2424419)) b!5739954))

(assert (= (and b!5739954 (not res!2424401)) b!5739918))

(assert (= (and b!5739918 (not res!2424426)) b!5739934))

(assert (= (and b!5739934 (not res!2424423)) b!5739943))

(assert (= (and b!5739943 (not res!2424425)) b!5739917))

(assert (= (and b!5739917 (not res!2424398)) b!5739939))

(assert (= (and b!5739939 (not res!2424407)) b!5739923))

(assert (= (and b!5739923 (not res!2424428)) b!5739946))

(assert (= (and b!5739946 (not res!2424406)) b!5739930))

(assert (= (and b!5739930 res!2424405) b!5739922))

(assert (= (and b!5739930 (not res!2424418)) b!5739919))

(assert (= (and b!5739919 (not res!2424414)) b!5739937))

(assert (= (and b!5739937 (not res!2424411)) b!5739949))

(assert (= (and start!590610 (is-ElementMatch!15750 r!7292)) b!5739929))

(assert (= (and start!590610 (is-Concat!24595 r!7292)) b!5739947))

(assert (= (and start!590610 (is-Star!15750 r!7292)) b!5739948))

(assert (= (and start!590610 (is-Union!15750 r!7292)) b!5739953))

(assert (= (and start!590610 condSetEmpty!38524) setIsEmpty!38524))

(assert (= (and start!590610 (not condSetEmpty!38524)) setNonEmpty!38524))

(assert (= setNonEmpty!38524 b!5739941))

(assert (= b!5739945 b!5739926))

(assert (= (and start!590610 (is-Cons!63426 zl!343)) b!5739945))

(assert (= (and start!590610 (is-Cons!63427 s!2326)) b!5739955))

(declare-fun m!6692090 () Bool)

(assert (=> b!5739935 m!6692090))

(declare-fun m!6692092 () Bool)

(assert (=> b!5739935 m!6692092))

(declare-fun m!6692094 () Bool)

(assert (=> b!5739935 m!6692094))

(declare-fun m!6692096 () Bool)

(assert (=> b!5739935 m!6692096))

(declare-fun m!6692098 () Bool)

(assert (=> b!5739935 m!6692098))

(declare-fun m!6692100 () Bool)

(assert (=> b!5739943 m!6692100))

(declare-fun m!6692102 () Bool)

(assert (=> b!5739943 m!6692102))

(declare-fun m!6692104 () Bool)

(assert (=> b!5739943 m!6692104))

(declare-fun m!6692106 () Bool)

(assert (=> b!5739943 m!6692106))

(declare-fun m!6692108 () Bool)

(assert (=> b!5739943 m!6692108))

(declare-fun m!6692110 () Bool)

(assert (=> b!5739943 m!6692110))

(declare-fun m!6692112 () Bool)

(assert (=> b!5739943 m!6692112))

(declare-fun m!6692114 () Bool)

(assert (=> b!5739943 m!6692114))

(declare-fun m!6692116 () Bool)

(assert (=> b!5739943 m!6692116))

(declare-fun m!6692118 () Bool)

(assert (=> b!5739940 m!6692118))

(declare-fun m!6692120 () Bool)

(assert (=> b!5739930 m!6692120))

(declare-fun m!6692122 () Bool)

(assert (=> b!5739949 m!6692122))

(declare-fun m!6692124 () Bool)

(assert (=> b!5739949 m!6692124))

(declare-fun m!6692126 () Bool)

(assert (=> b!5739949 m!6692126))

(declare-fun m!6692128 () Bool)

(assert (=> b!5739949 m!6692128))

(declare-fun m!6692130 () Bool)

(assert (=> b!5739949 m!6692130))

(declare-fun m!6692132 () Bool)

(assert (=> b!5739925 m!6692132))

(declare-fun m!6692134 () Bool)

(assert (=> b!5739925 m!6692134))

(declare-fun m!6692136 () Bool)

(assert (=> b!5739925 m!6692136))

(declare-fun m!6692138 () Bool)

(assert (=> start!590610 m!6692138))

(declare-fun m!6692140 () Bool)

(assert (=> b!5739945 m!6692140))

(declare-fun m!6692142 () Bool)

(assert (=> b!5739924 m!6692142))

(assert (=> b!5739924 m!6692120))

(declare-fun m!6692144 () Bool)

(assert (=> b!5739924 m!6692144))

(declare-fun m!6692146 () Bool)

(assert (=> b!5739933 m!6692146))

(declare-fun m!6692148 () Bool)

(assert (=> b!5739923 m!6692148))

(declare-fun m!6692150 () Bool)

(assert (=> b!5739931 m!6692150))

(declare-fun m!6692152 () Bool)

(assert (=> b!5739934 m!6692152))

(declare-fun m!6692154 () Bool)

(assert (=> b!5739937 m!6692154))

(declare-fun m!6692156 () Bool)

(assert (=> b!5739927 m!6692156))

(declare-fun m!6692158 () Bool)

(assert (=> b!5739917 m!6692158))

(declare-fun m!6692160 () Bool)

(assert (=> b!5739932 m!6692160))

(declare-fun m!6692162 () Bool)

(assert (=> b!5739944 m!6692162))

(declare-fun m!6692164 () Bool)

(assert (=> b!5739944 m!6692164))

(declare-fun m!6692166 () Bool)

(assert (=> b!5739944 m!6692166))

(declare-fun m!6692168 () Bool)

(assert (=> b!5739944 m!6692168))

(assert (=> b!5739944 m!6692130))

(declare-fun m!6692170 () Bool)

(assert (=> b!5739944 m!6692170))

(declare-fun m!6692172 () Bool)

(assert (=> b!5739944 m!6692172))

(declare-fun m!6692174 () Bool)

(assert (=> b!5739928 m!6692174))

(assert (=> b!5739951 m!6692154))

(declare-fun m!6692176 () Bool)

(assert (=> b!5739936 m!6692176))

(declare-fun m!6692178 () Bool)

(assert (=> b!5739936 m!6692178))

(declare-fun m!6692180 () Bool)

(assert (=> b!5739938 m!6692180))

(declare-fun m!6692182 () Bool)

(assert (=> setNonEmpty!38524 m!6692182))

(declare-fun m!6692184 () Bool)

(assert (=> b!5739952 m!6692184))

(assert (=> b!5739952 m!6692184))

(declare-fun m!6692186 () Bool)

(assert (=> b!5739952 m!6692186))

(assert (=> b!5739922 m!6692154))

(declare-fun m!6692188 () Bool)

(assert (=> b!5739956 m!6692188))

(declare-fun m!6692190 () Bool)

(assert (=> b!5739956 m!6692190))

(declare-fun m!6692192 () Bool)

(assert (=> b!5739956 m!6692192))

(declare-fun m!6692194 () Bool)

(assert (=> b!5739956 m!6692194))

(declare-fun m!6692196 () Bool)

(assert (=> b!5739956 m!6692196))

(assert (=> b!5739956 m!6692192))

(assert (=> b!5739956 m!6692188))

(declare-fun m!6692198 () Bool)

(assert (=> b!5739956 m!6692198))

(declare-fun m!6692200 () Bool)

(assert (=> b!5739939 m!6692200))

(declare-fun m!6692202 () Bool)

(assert (=> b!5739939 m!6692202))

(declare-fun m!6692204 () Bool)

(assert (=> b!5739939 m!6692204))

(push 1)

(assert (not b!5739953))

(assert (not b!5739955))

(assert (not b!5739928))

(assert (not b!5739935))

(assert (not b!5739926))

(assert (not b!5739936))

(assert (not b!5739941))

(assert (not b!5739937))

(assert (not b!5739923))

(assert tp_is_empty!40753)

(assert (not b!5739940))

(assert (not b!5739945))

(assert (not b!5739922))

(assert (not b!5739949))

(assert (not b!5739930))

(assert (not b!5739948))

(assert (not b!5739938))

(assert (not b!5739932))

(assert (not b!5739947))

(assert (not b!5739951))

(assert (not b!5739934))

(assert (not b!5739956))

(assert (not b!5739943))

(assert (not b!5739925))

(assert (not b!5739931))

(assert (not b!5739927))

(assert (not setNonEmpty!38524))

(assert (not b!5739939))

(assert (not b!5739917))

(assert (not b!5739952))

(assert (not start!590610))

(assert (not b!5739924))

(assert (not b!5739944))

(assert (not b!5739933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1809291 () Bool)

(assert (=> d!1809291 (= (isEmpty!35307 (t!376878 zl!343)) (is-Nil!63426 (t!376878 zl!343)))))

(assert (=> b!5739927 d!1809291))

(declare-fun d!1809293 () Bool)

(assert (=> d!1809293 (= (isEmpty!35308 (t!376877 (exprs!5634 (h!69874 zl!343)))) (is-Nil!63425 (t!376877 (exprs!5634 (h!69874 zl!343)))))))

(assert (=> b!5739928 d!1809293))

(declare-fun d!1809295 () Bool)

(declare-fun c!1013040 () Bool)

(declare-fun isEmpty!35311 (List!63551) Bool)

(assert (=> d!1809295 (= c!1013040 (isEmpty!35311 (t!376879 s!2326)))))

(declare-fun e!3528461 () Bool)

(assert (=> d!1809295 (= (matchZipper!1888 lt!2285313 (t!376879 s!2326)) e!3528461)))

(declare-fun b!5740108 () Bool)

(declare-fun nullableZipper!1686 ((Set Context!10268)) Bool)

(assert (=> b!5740108 (= e!3528461 (nullableZipper!1686 lt!2285313))))

(declare-fun b!5740109 () Bool)

(declare-fun head!12152 (List!63551) C!31770)

(declare-fun tail!11247 (List!63551) List!63551)

(assert (=> b!5740109 (= e!3528461 (matchZipper!1888 (derivationStepZipper!1833 lt!2285313 (head!12152 (t!376879 s!2326))) (tail!11247 (t!376879 s!2326))))))

(assert (= (and d!1809295 c!1013040) b!5740108))

(assert (= (and d!1809295 (not c!1013040)) b!5740109))

(declare-fun m!6692322 () Bool)

(assert (=> d!1809295 m!6692322))

(declare-fun m!6692324 () Bool)

(assert (=> b!5740108 m!6692324))

(declare-fun m!6692326 () Bool)

(assert (=> b!5740109 m!6692326))

(assert (=> b!5740109 m!6692326))

(declare-fun m!6692328 () Bool)

(assert (=> b!5740109 m!6692328))

(declare-fun m!6692330 () Bool)

(assert (=> b!5740109 m!6692330))

(assert (=> b!5740109 m!6692328))

(assert (=> b!5740109 m!6692330))

(declare-fun m!6692332 () Bool)

(assert (=> b!5740109 m!6692332))

(assert (=> b!5739930 d!1809295))

(declare-fun bs!1341667 () Bool)

(declare-fun d!1809297 () Bool)

(assert (= bs!1341667 (and d!1809297 b!5739944)))

(declare-fun lambda!311356 () Int)

(assert (=> bs!1341667 (= lambda!311356 lambda!311334)))

(assert (=> d!1809297 true))

(assert (=> d!1809297 (= (derivationStepZipper!1833 lt!2285293 (h!69875 s!2326)) (flatMap!1363 lt!2285293 lambda!311356))))

(declare-fun bs!1341668 () Bool)

(assert (= bs!1341668 d!1809297))

(declare-fun m!6692334 () Bool)

(assert (=> bs!1341668 m!6692334))

(assert (=> b!5739949 d!1809297))

(declare-fun d!1809299 () Bool)

(declare-fun choose!43544 ((Set Context!10268) Int) (Set Context!10268))

(assert (=> d!1809299 (= (flatMap!1363 lt!2285293 lambda!311334) (choose!43544 lt!2285293 lambda!311334))))

(declare-fun bs!1341669 () Bool)

(assert (= bs!1341669 d!1809299))

(declare-fun m!6692336 () Bool)

(assert (=> bs!1341669 m!6692336))

(assert (=> b!5739949 d!1809299))

(declare-fun b!5740122 () Bool)

(declare-fun e!3528469 () (Set Context!10268))

(declare-fun call!438761 () (Set Context!10268))

(assert (=> b!5740122 (= e!3528469 call!438761)))

(declare-fun b!5740123 () Bool)

(declare-fun e!3528468 () Bool)

(assert (=> b!5740123 (= e!3528468 (nullable!5782 (h!69873 (exprs!5634 lt!2285314))))))

(declare-fun b!5740124 () Bool)

(assert (=> b!5740124 (= e!3528469 (as set.empty (Set Context!10268)))))

(declare-fun bm!438756 () Bool)

(assert (=> bm!438756 (= call!438761 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 lt!2285314)) (Context!10269 (t!376877 (exprs!5634 lt!2285314))) (h!69875 s!2326)))))

(declare-fun d!1809301 () Bool)

(declare-fun c!1013047 () Bool)

(assert (=> d!1809301 (= c!1013047 e!3528468)))

(declare-fun res!2424536 () Bool)

(assert (=> d!1809301 (=> (not res!2424536) (not e!3528468))))

(assert (=> d!1809301 (= res!2424536 (is-Cons!63425 (exprs!5634 lt!2285314)))))

(declare-fun e!3528470 () (Set Context!10268))

(assert (=> d!1809301 (= (derivationStepZipperUp!1018 lt!2285314 (h!69875 s!2326)) e!3528470)))

(declare-fun b!5740125 () Bool)

(assert (=> b!5740125 (= e!3528470 (set.union call!438761 (derivationStepZipperUp!1018 (Context!10269 (t!376877 (exprs!5634 lt!2285314))) (h!69875 s!2326))))))

(declare-fun b!5740126 () Bool)

(assert (=> b!5740126 (= e!3528470 e!3528469)))

(declare-fun c!1013048 () Bool)

(assert (=> b!5740126 (= c!1013048 (is-Cons!63425 (exprs!5634 lt!2285314)))))

(assert (= (and d!1809301 res!2424536) b!5740123))

(assert (= (and d!1809301 c!1013047) b!5740125))

(assert (= (and d!1809301 (not c!1013047)) b!5740126))

(assert (= (and b!5740126 c!1013048) b!5740122))

(assert (= (and b!5740126 (not c!1013048)) b!5740124))

(assert (= (or b!5740125 b!5740122) bm!438756))

(declare-fun m!6692338 () Bool)

(assert (=> b!5740123 m!6692338))

(declare-fun m!6692340 () Bool)

(assert (=> bm!438756 m!6692340))

(declare-fun m!6692342 () Bool)

(assert (=> b!5740125 m!6692342))

(assert (=> b!5739949 d!1809301))

(declare-fun d!1809303 () Bool)

(declare-fun dynLambda!24821 (Int Context!10268) (Set Context!10268))

(assert (=> d!1809303 (= (flatMap!1363 lt!2285293 lambda!311334) (dynLambda!24821 lambda!311334 lt!2285314))))

(declare-fun lt!2285439 () Unit!156532)

(declare-fun choose!43545 ((Set Context!10268) Context!10268 Int) Unit!156532)

(assert (=> d!1809303 (= lt!2285439 (choose!43545 lt!2285293 lt!2285314 lambda!311334))))

(assert (=> d!1809303 (= lt!2285293 (set.insert lt!2285314 (as set.empty (Set Context!10268))))))

(assert (=> d!1809303 (= (lemmaFlatMapOnSingletonSet!895 lt!2285293 lt!2285314 lambda!311334) lt!2285439)))

(declare-fun b_lambda!216727 () Bool)

(assert (=> (not b_lambda!216727) (not d!1809303)))

(declare-fun bs!1341670 () Bool)

(assert (= bs!1341670 d!1809303))

(assert (=> bs!1341670 m!6692126))

(declare-fun m!6692344 () Bool)

(assert (=> bs!1341670 m!6692344))

(declare-fun m!6692346 () Bool)

(assert (=> bs!1341670 m!6692346))

(assert (=> bs!1341670 m!6692124))

(assert (=> b!5739949 d!1809303))

(declare-fun b!5740147 () Bool)

(declare-fun e!3528485 () Bool)

(declare-fun e!3528483 () Bool)

(assert (=> b!5740147 (= e!3528485 e!3528483)))

(declare-fun c!1013059 () Bool)

(assert (=> b!5740147 (= c!1013059 (isEmpty!35308 (exprs!5634 (h!69874 zl!343))))))

(declare-fun b!5740148 () Bool)

(declare-fun e!3528488 () Bool)

(assert (=> b!5740148 (= e!3528483 e!3528488)))

(declare-fun c!1013060 () Bool)

(declare-fun tail!11248 (List!63549) List!63549)

(assert (=> b!5740148 (= c!1013060 (isEmpty!35308 (tail!11248 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun b!5740149 () Bool)

(declare-fun e!3528487 () Regex!15750)

(declare-fun e!3528486 () Regex!15750)

(assert (=> b!5740149 (= e!3528487 e!3528486)))

(declare-fun c!1013058 () Bool)

(assert (=> b!5740149 (= c!1013058 (is-Cons!63425 (exprs!5634 (h!69874 zl!343))))))

(declare-fun b!5740150 () Bool)

(declare-fun lt!2285442 () Regex!15750)

(declare-fun isConcat!767 (Regex!15750) Bool)

(assert (=> b!5740150 (= e!3528488 (isConcat!767 lt!2285442))))

(declare-fun b!5740151 () Bool)

(assert (=> b!5740151 (= e!3528486 EmptyExpr!15750)))

(declare-fun d!1809305 () Bool)

(assert (=> d!1809305 e!3528485))

(declare-fun res!2424541 () Bool)

(assert (=> d!1809305 (=> (not res!2424541) (not e!3528485))))

(assert (=> d!1809305 (= res!2424541 (validRegex!7486 lt!2285442))))

(assert (=> d!1809305 (= lt!2285442 e!3528487)))

(declare-fun c!1013057 () Bool)

(declare-fun e!3528484 () Bool)

(assert (=> d!1809305 (= c!1013057 e!3528484)))

(declare-fun res!2424542 () Bool)

(assert (=> d!1809305 (=> (not res!2424542) (not e!3528484))))

(assert (=> d!1809305 (= res!2424542 (is-Cons!63425 (exprs!5634 (h!69874 zl!343))))))

(declare-fun lambda!311359 () Int)

(declare-fun forall!14871 (List!63549 Int) Bool)

(assert (=> d!1809305 (forall!14871 (exprs!5634 (h!69874 zl!343)) lambda!311359)))

(assert (=> d!1809305 (= (generalisedConcat!1365 (exprs!5634 (h!69874 zl!343))) lt!2285442)))

(declare-fun b!5740152 () Bool)

(declare-fun isEmptyExpr!1244 (Regex!15750) Bool)

(assert (=> b!5740152 (= e!3528483 (isEmptyExpr!1244 lt!2285442))))

(declare-fun b!5740153 () Bool)

(assert (=> b!5740153 (= e!3528484 (isEmpty!35308 (t!376877 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun b!5740154 () Bool)

(assert (=> b!5740154 (= e!3528486 (Concat!24595 (h!69873 (exprs!5634 (h!69874 zl!343))) (generalisedConcat!1365 (t!376877 (exprs!5634 (h!69874 zl!343))))))))

(declare-fun b!5740155 () Bool)

(assert (=> b!5740155 (= e!3528487 (h!69873 (exprs!5634 (h!69874 zl!343))))))

(declare-fun b!5740156 () Bool)

(declare-fun head!12153 (List!63549) Regex!15750)

(assert (=> b!5740156 (= e!3528488 (= lt!2285442 (head!12153 (exprs!5634 (h!69874 zl!343)))))))

(assert (= (and d!1809305 res!2424542) b!5740153))

(assert (= (and d!1809305 c!1013057) b!5740155))

(assert (= (and d!1809305 (not c!1013057)) b!5740149))

(assert (= (and b!5740149 c!1013058) b!5740154))

(assert (= (and b!5740149 (not c!1013058)) b!5740151))

(assert (= (and d!1809305 res!2424541) b!5740147))

(assert (= (and b!5740147 c!1013059) b!5740152))

(assert (= (and b!5740147 (not c!1013059)) b!5740148))

(assert (= (and b!5740148 c!1013060) b!5740156))

(assert (= (and b!5740148 (not c!1013060)) b!5740150))

(declare-fun m!6692348 () Bool)

(assert (=> b!5740147 m!6692348))

(declare-fun m!6692350 () Bool)

(assert (=> b!5740154 m!6692350))

(assert (=> b!5740153 m!6692174))

(declare-fun m!6692352 () Bool)

(assert (=> b!5740148 m!6692352))

(assert (=> b!5740148 m!6692352))

(declare-fun m!6692354 () Bool)

(assert (=> b!5740148 m!6692354))

(declare-fun m!6692356 () Bool)

(assert (=> d!1809305 m!6692356))

(declare-fun m!6692358 () Bool)

(assert (=> d!1809305 m!6692358))

(declare-fun m!6692360 () Bool)

(assert (=> b!5740150 m!6692360))

(declare-fun m!6692362 () Bool)

(assert (=> b!5740156 m!6692362))

(declare-fun m!6692364 () Bool)

(assert (=> b!5740152 m!6692364))

(assert (=> b!5739931 d!1809305))

(declare-fun bm!438769 () Bool)

(declare-fun call!438775 () (Set Context!10268))

(declare-fun call!438778 () List!63549)

(declare-fun c!1013073 () Bool)

(assert (=> bm!438769 (= call!438775 (derivationStepZipperDown!1092 (ite c!1013073 (regOne!32013 (reg!16079 (regOne!32012 r!7292))) (regOne!32012 (reg!16079 (regOne!32012 r!7292)))) (ite c!1013073 lt!2285326 (Context!10269 call!438778)) (h!69875 s!2326)))))

(declare-fun b!5740180 () Bool)

(declare-fun e!3528506 () (Set Context!10268))

(declare-fun e!3528502 () (Set Context!10268))

(assert (=> b!5740180 (= e!3528506 e!3528502)))

(declare-fun c!1013072 () Bool)

(assert (=> b!5740180 (= c!1013072 (is-Concat!24595 (reg!16079 (regOne!32012 r!7292))))))

(declare-fun bm!438770 () Bool)

(declare-fun call!438774 () (Set Context!10268))

(declare-fun call!438779 () (Set Context!10268))

(assert (=> bm!438770 (= call!438774 call!438779)))

(declare-fun b!5740181 () Bool)

(declare-fun call!438776 () (Set Context!10268))

(assert (=> b!5740181 (= e!3528502 call!438776)))

(declare-fun b!5740182 () Bool)

(declare-fun e!3528504 () (Set Context!10268))

(declare-fun e!3528501 () (Set Context!10268))

(assert (=> b!5740182 (= e!3528504 e!3528501)))

(assert (=> b!5740182 (= c!1013073 (is-Union!15750 (reg!16079 (regOne!32012 r!7292))))))

(declare-fun bm!438771 () Bool)

(assert (=> bm!438771 (= call!438776 call!438774)))

(declare-fun b!5740183 () Bool)

(assert (=> b!5740183 (= e!3528506 (set.union call!438775 call!438774))))

(declare-fun call!438777 () List!63549)

(declare-fun c!1013071 () Bool)

(declare-fun bm!438772 () Bool)

(assert (=> bm!438772 (= call!438779 (derivationStepZipperDown!1092 (ite c!1013073 (regTwo!32013 (reg!16079 (regOne!32012 r!7292))) (ite c!1013071 (regTwo!32012 (reg!16079 (regOne!32012 r!7292))) (ite c!1013072 (regOne!32012 (reg!16079 (regOne!32012 r!7292))) (reg!16079 (reg!16079 (regOne!32012 r!7292)))))) (ite (or c!1013073 c!1013071) lt!2285326 (Context!10269 call!438777)) (h!69875 s!2326)))))

(declare-fun b!5740184 () Bool)

(declare-fun e!3528503 () (Set Context!10268))

(assert (=> b!5740184 (= e!3528503 (as set.empty (Set Context!10268)))))

(declare-fun bm!438773 () Bool)

(declare-fun $colon$colon!1753 (List!63549 Regex!15750) List!63549)

(assert (=> bm!438773 (= call!438778 ($colon$colon!1753 (exprs!5634 lt!2285326) (ite (or c!1013071 c!1013072) (regTwo!32012 (reg!16079 (regOne!32012 r!7292))) (reg!16079 (regOne!32012 r!7292)))))))

(declare-fun d!1809307 () Bool)

(declare-fun c!1013074 () Bool)

(assert (=> d!1809307 (= c!1013074 (and (is-ElementMatch!15750 (reg!16079 (regOne!32012 r!7292))) (= (c!1013022 (reg!16079 (regOne!32012 r!7292))) (h!69875 s!2326))))))

(assert (=> d!1809307 (= (derivationStepZipperDown!1092 (reg!16079 (regOne!32012 r!7292)) lt!2285326 (h!69875 s!2326)) e!3528504)))

(declare-fun b!5740179 () Bool)

(assert (=> b!5740179 (= e!3528503 call!438776)))

(declare-fun b!5740185 () Bool)

(declare-fun e!3528505 () Bool)

(assert (=> b!5740185 (= c!1013071 e!3528505)))

(declare-fun res!2424545 () Bool)

(assert (=> b!5740185 (=> (not res!2424545) (not e!3528505))))

(assert (=> b!5740185 (= res!2424545 (is-Concat!24595 (reg!16079 (regOne!32012 r!7292))))))

(assert (=> b!5740185 (= e!3528501 e!3528506)))

(declare-fun b!5740186 () Bool)

(assert (=> b!5740186 (= e!3528505 (nullable!5782 (regOne!32012 (reg!16079 (regOne!32012 r!7292)))))))

(declare-fun b!5740187 () Bool)

(declare-fun c!1013075 () Bool)

(assert (=> b!5740187 (= c!1013075 (is-Star!15750 (reg!16079 (regOne!32012 r!7292))))))

(assert (=> b!5740187 (= e!3528502 e!3528503)))

(declare-fun b!5740188 () Bool)

(assert (=> b!5740188 (= e!3528504 (set.insert lt!2285326 (as set.empty (Set Context!10268))))))

(declare-fun bm!438774 () Bool)

(assert (=> bm!438774 (= call!438777 call!438778)))

(declare-fun b!5740189 () Bool)

(assert (=> b!5740189 (= e!3528501 (set.union call!438775 call!438779))))

(assert (= (and d!1809307 c!1013074) b!5740188))

(assert (= (and d!1809307 (not c!1013074)) b!5740182))

(assert (= (and b!5740182 c!1013073) b!5740189))

(assert (= (and b!5740182 (not c!1013073)) b!5740185))

(assert (= (and b!5740185 res!2424545) b!5740186))

(assert (= (and b!5740185 c!1013071) b!5740183))

(assert (= (and b!5740185 (not c!1013071)) b!5740180))

(assert (= (and b!5740180 c!1013072) b!5740181))

(assert (= (and b!5740180 (not c!1013072)) b!5740187))

(assert (= (and b!5740187 c!1013075) b!5740179))

(assert (= (and b!5740187 (not c!1013075)) b!5740184))

(assert (= (or b!5740181 b!5740179) bm!438774))

(assert (= (or b!5740181 b!5740179) bm!438771))

(assert (= (or b!5740183 bm!438774) bm!438773))

(assert (= (or b!5740183 bm!438771) bm!438770))

(assert (= (or b!5740189 bm!438770) bm!438772))

(assert (= (or b!5740189 b!5740183) bm!438769))

(declare-fun m!6692366 () Bool)

(assert (=> bm!438773 m!6692366))

(declare-fun m!6692368 () Bool)

(assert (=> b!5740186 m!6692368))

(declare-fun m!6692370 () Bool)

(assert (=> bm!438769 m!6692370))

(assert (=> b!5740188 m!6692100))

(declare-fun m!6692372 () Bool)

(assert (=> bm!438772 m!6692372))

(assert (=> b!5739932 d!1809307))

(declare-fun d!1809309 () Bool)

(declare-fun c!1013076 () Bool)

(assert (=> d!1809309 (= c!1013076 (isEmpty!35311 (t!376879 s!2326)))))

(declare-fun e!3528507 () Bool)

(assert (=> d!1809309 (= (matchZipper!1888 lt!2285310 (t!376879 s!2326)) e!3528507)))

(declare-fun b!5740190 () Bool)

(assert (=> b!5740190 (= e!3528507 (nullableZipper!1686 lt!2285310))))

(declare-fun b!5740191 () Bool)

(assert (=> b!5740191 (= e!3528507 (matchZipper!1888 (derivationStepZipper!1833 lt!2285310 (head!12152 (t!376879 s!2326))) (tail!11247 (t!376879 s!2326))))))

(assert (= (and d!1809309 c!1013076) b!5740190))

(assert (= (and d!1809309 (not c!1013076)) b!5740191))

(assert (=> d!1809309 m!6692322))

(declare-fun m!6692374 () Bool)

(assert (=> b!5740190 m!6692374))

(assert (=> b!5740191 m!6692326))

(assert (=> b!5740191 m!6692326))

(declare-fun m!6692376 () Bool)

(assert (=> b!5740191 m!6692376))

(assert (=> b!5740191 m!6692330))

(assert (=> b!5740191 m!6692376))

(assert (=> b!5740191 m!6692330))

(declare-fun m!6692378 () Bool)

(assert (=> b!5740191 m!6692378))

(assert (=> b!5739951 d!1809309))

(declare-fun bs!1341671 () Bool)

(declare-fun d!1809311 () Bool)

(assert (= bs!1341671 (and d!1809311 d!1809305)))

(declare-fun lambda!311362 () Int)

(assert (=> bs!1341671 (= lambda!311362 lambda!311359)))

(declare-fun b!5740212 () Bool)

(declare-fun e!3528520 () Bool)

(assert (=> b!5740212 (= e!3528520 (isEmpty!35308 (t!376877 (unfocusZipperList!1178 zl!343))))))

(declare-fun b!5740213 () Bool)

(declare-fun e!3528525 () Bool)

(declare-fun e!3528523 () Bool)

(assert (=> b!5740213 (= e!3528525 e!3528523)))

(declare-fun c!1013087 () Bool)

(assert (=> b!5740213 (= c!1013087 (isEmpty!35308 (unfocusZipperList!1178 zl!343)))))

(declare-fun b!5740214 () Bool)

(declare-fun e!3528524 () Regex!15750)

(assert (=> b!5740214 (= e!3528524 EmptyLang!15750)))

(declare-fun b!5740215 () Bool)

(declare-fun e!3528522 () Bool)

(declare-fun lt!2285445 () Regex!15750)

(assert (=> b!5740215 (= e!3528522 (= lt!2285445 (head!12153 (unfocusZipperList!1178 zl!343))))))

(declare-fun b!5740216 () Bool)

(assert (=> b!5740216 (= e!3528524 (Union!15750 (h!69873 (unfocusZipperList!1178 zl!343)) (generalisedUnion!1613 (t!376877 (unfocusZipperList!1178 zl!343)))))))

(declare-fun b!5740217 () Bool)

(assert (=> b!5740217 (= e!3528523 e!3528522)))

(declare-fun c!1013085 () Bool)

(assert (=> b!5740217 (= c!1013085 (isEmpty!35308 (tail!11248 (unfocusZipperList!1178 zl!343))))))

(declare-fun b!5740218 () Bool)

(declare-fun e!3528521 () Regex!15750)

(assert (=> b!5740218 (= e!3528521 e!3528524)))

(declare-fun c!1013088 () Bool)

(assert (=> b!5740218 (= c!1013088 (is-Cons!63425 (unfocusZipperList!1178 zl!343)))))

(declare-fun b!5740220 () Bool)

(declare-fun isEmptyLang!1255 (Regex!15750) Bool)

(assert (=> b!5740220 (= e!3528523 (isEmptyLang!1255 lt!2285445))))

(declare-fun b!5740221 () Bool)

(assert (=> b!5740221 (= e!3528521 (h!69873 (unfocusZipperList!1178 zl!343)))))

(declare-fun b!5740219 () Bool)

(declare-fun isUnion!685 (Regex!15750) Bool)

(assert (=> b!5740219 (= e!3528522 (isUnion!685 lt!2285445))))

(assert (=> d!1809311 e!3528525))

(declare-fun res!2424550 () Bool)

(assert (=> d!1809311 (=> (not res!2424550) (not e!3528525))))

(assert (=> d!1809311 (= res!2424550 (validRegex!7486 lt!2285445))))

(assert (=> d!1809311 (= lt!2285445 e!3528521)))

(declare-fun c!1013086 () Bool)

(assert (=> d!1809311 (= c!1013086 e!3528520)))

(declare-fun res!2424551 () Bool)

(assert (=> d!1809311 (=> (not res!2424551) (not e!3528520))))

(assert (=> d!1809311 (= res!2424551 (is-Cons!63425 (unfocusZipperList!1178 zl!343)))))

(assert (=> d!1809311 (forall!14871 (unfocusZipperList!1178 zl!343) lambda!311362)))

(assert (=> d!1809311 (= (generalisedUnion!1613 (unfocusZipperList!1178 zl!343)) lt!2285445)))

(assert (= (and d!1809311 res!2424551) b!5740212))

(assert (= (and d!1809311 c!1013086) b!5740221))

(assert (= (and d!1809311 (not c!1013086)) b!5740218))

(assert (= (and b!5740218 c!1013088) b!5740216))

(assert (= (and b!5740218 (not c!1013088)) b!5740214))

(assert (= (and d!1809311 res!2424550) b!5740213))

(assert (= (and b!5740213 c!1013087) b!5740220))

(assert (= (and b!5740213 (not c!1013087)) b!5740217))

(assert (= (and b!5740217 c!1013085) b!5740215))

(assert (= (and b!5740217 (not c!1013085)) b!5740219))

(declare-fun m!6692380 () Bool)

(assert (=> b!5740219 m!6692380))

(declare-fun m!6692382 () Bool)

(assert (=> b!5740212 m!6692382))

(assert (=> b!5740215 m!6692184))

(declare-fun m!6692384 () Bool)

(assert (=> b!5740215 m!6692384))

(assert (=> b!5740213 m!6692184))

(declare-fun m!6692386 () Bool)

(assert (=> b!5740213 m!6692386))

(declare-fun m!6692388 () Bool)

(assert (=> d!1809311 m!6692388))

(assert (=> d!1809311 m!6692184))

(declare-fun m!6692390 () Bool)

(assert (=> d!1809311 m!6692390))

(declare-fun m!6692392 () Bool)

(assert (=> b!5740216 m!6692392))

(declare-fun m!6692394 () Bool)

(assert (=> b!5740220 m!6692394))

(assert (=> b!5740217 m!6692184))

(declare-fun m!6692396 () Bool)

(assert (=> b!5740217 m!6692396))

(assert (=> b!5740217 m!6692396))

(declare-fun m!6692398 () Bool)

(assert (=> b!5740217 m!6692398))

(assert (=> b!5739952 d!1809311))

(declare-fun bs!1341672 () Bool)

(declare-fun d!1809313 () Bool)

(assert (= bs!1341672 (and d!1809313 d!1809305)))

(declare-fun lambda!311365 () Int)

(assert (=> bs!1341672 (= lambda!311365 lambda!311359)))

(declare-fun bs!1341673 () Bool)

(assert (= bs!1341673 (and d!1809313 d!1809311)))

(assert (=> bs!1341673 (= lambda!311365 lambda!311362)))

(declare-fun lt!2285448 () List!63549)

(assert (=> d!1809313 (forall!14871 lt!2285448 lambda!311365)))

(declare-fun e!3528528 () List!63549)

(assert (=> d!1809313 (= lt!2285448 e!3528528)))

(declare-fun c!1013091 () Bool)

(assert (=> d!1809313 (= c!1013091 (is-Cons!63426 zl!343))))

(assert (=> d!1809313 (= (unfocusZipperList!1178 zl!343) lt!2285448)))

(declare-fun b!5740226 () Bool)

(assert (=> b!5740226 (= e!3528528 (Cons!63425 (generalisedConcat!1365 (exprs!5634 (h!69874 zl!343))) (unfocusZipperList!1178 (t!376878 zl!343))))))

(declare-fun b!5740227 () Bool)

(assert (=> b!5740227 (= e!3528528 Nil!63425)))

(assert (= (and d!1809313 c!1013091) b!5740226))

(assert (= (and d!1809313 (not c!1013091)) b!5740227))

(declare-fun m!6692400 () Bool)

(assert (=> d!1809313 m!6692400))

(assert (=> b!5740226 m!6692150))

(declare-fun m!6692402 () Bool)

(assert (=> b!5740226 m!6692402))

(assert (=> b!5739952 d!1809313))

(declare-fun d!1809315 () Bool)

(declare-fun nullableFct!1832 (Regex!15750) Bool)

(assert (=> d!1809315 (= (nullable!5782 (regOne!32012 (regOne!32012 r!7292))) (nullableFct!1832 (regOne!32012 (regOne!32012 r!7292))))))

(declare-fun bs!1341674 () Bool)

(assert (= bs!1341674 d!1809315))

(declare-fun m!6692404 () Bool)

(assert (=> bs!1341674 m!6692404))

(assert (=> b!5739933 d!1809315))

(declare-fun d!1809317 () Bool)

(declare-fun lt!2285451 () Regex!15750)

(assert (=> d!1809317 (validRegex!7486 lt!2285451)))

(assert (=> d!1809317 (= lt!2285451 (generalisedUnion!1613 (unfocusZipperList!1178 (Cons!63426 lt!2285318 Nil!63426))))))

(assert (=> d!1809317 (= (unfocusZipper!1492 (Cons!63426 lt!2285318 Nil!63426)) lt!2285451)))

(declare-fun bs!1341675 () Bool)

(assert (= bs!1341675 d!1809317))

(declare-fun m!6692406 () Bool)

(assert (=> bs!1341675 m!6692406))

(declare-fun m!6692408 () Bool)

(assert (=> bs!1341675 m!6692408))

(assert (=> bs!1341675 m!6692408))

(declare-fun m!6692410 () Bool)

(assert (=> bs!1341675 m!6692410))

(assert (=> b!5739934 d!1809317))

(declare-fun d!1809319 () Bool)

(assert (=> d!1809319 (= (flatMap!1363 lt!2285299 lambda!311334) (choose!43544 lt!2285299 lambda!311334))))

(declare-fun bs!1341676 () Bool)

(assert (= bs!1341676 d!1809319))

(declare-fun m!6692412 () Bool)

(assert (=> bs!1341676 m!6692412))

(assert (=> b!5739935 d!1809319))

(declare-fun b!5740228 () Bool)

(declare-fun e!3528530 () (Set Context!10268))

(declare-fun call!438780 () (Set Context!10268))

(assert (=> b!5740228 (= e!3528530 call!438780)))

(declare-fun b!5740229 () Bool)

(declare-fun e!3528529 () Bool)

(assert (=> b!5740229 (= e!3528529 (nullable!5782 (h!69873 (exprs!5634 lt!2285318))))))

(declare-fun b!5740230 () Bool)

(assert (=> b!5740230 (= e!3528530 (as set.empty (Set Context!10268)))))

(declare-fun bm!438775 () Bool)

(assert (=> bm!438775 (= call!438780 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 lt!2285318)) (Context!10269 (t!376877 (exprs!5634 lt!2285318))) (h!69875 s!2326)))))

(declare-fun d!1809321 () Bool)

(declare-fun c!1013092 () Bool)

(assert (=> d!1809321 (= c!1013092 e!3528529)))

(declare-fun res!2424552 () Bool)

(assert (=> d!1809321 (=> (not res!2424552) (not e!3528529))))

(assert (=> d!1809321 (= res!2424552 (is-Cons!63425 (exprs!5634 lt!2285318)))))

(declare-fun e!3528531 () (Set Context!10268))

(assert (=> d!1809321 (= (derivationStepZipperUp!1018 lt!2285318 (h!69875 s!2326)) e!3528531)))

(declare-fun b!5740231 () Bool)

(assert (=> b!5740231 (= e!3528531 (set.union call!438780 (derivationStepZipperUp!1018 (Context!10269 (t!376877 (exprs!5634 lt!2285318))) (h!69875 s!2326))))))

(declare-fun b!5740232 () Bool)

(assert (=> b!5740232 (= e!3528531 e!3528530)))

(declare-fun c!1013093 () Bool)

(assert (=> b!5740232 (= c!1013093 (is-Cons!63425 (exprs!5634 lt!2285318)))))

(assert (= (and d!1809321 res!2424552) b!5740229))

(assert (= (and d!1809321 c!1013092) b!5740231))

(assert (= (and d!1809321 (not c!1013092)) b!5740232))

(assert (= (and b!5740232 c!1013093) b!5740228))

(assert (= (and b!5740232 (not c!1013093)) b!5740230))

(assert (= (or b!5740231 b!5740228) bm!438775))

(declare-fun m!6692414 () Bool)

(assert (=> b!5740229 m!6692414))

(declare-fun m!6692416 () Bool)

(assert (=> bm!438775 m!6692416))

(declare-fun m!6692418 () Bool)

(assert (=> b!5740231 m!6692418))

(assert (=> b!5739935 d!1809321))

(declare-fun d!1809323 () Bool)

(assert (=> d!1809323 (= (flatMap!1363 lt!2285299 lambda!311334) (dynLambda!24821 lambda!311334 lt!2285318))))

(declare-fun lt!2285452 () Unit!156532)

(assert (=> d!1809323 (= lt!2285452 (choose!43545 lt!2285299 lt!2285318 lambda!311334))))

(assert (=> d!1809323 (= lt!2285299 (set.insert lt!2285318 (as set.empty (Set Context!10268))))))

(assert (=> d!1809323 (= (lemmaFlatMapOnSingletonSet!895 lt!2285299 lt!2285318 lambda!311334) lt!2285452)))

(declare-fun b_lambda!216729 () Bool)

(assert (=> (not b_lambda!216729) (not d!1809323)))

(declare-fun bs!1341677 () Bool)

(assert (= bs!1341677 d!1809323))

(assert (=> bs!1341677 m!6692098))

(declare-fun m!6692420 () Bool)

(assert (=> bs!1341677 m!6692420))

(declare-fun m!6692422 () Bool)

(assert (=> bs!1341677 m!6692422))

(assert (=> bs!1341677 m!6692094))

(assert (=> b!5739935 d!1809323))

(declare-fun bs!1341678 () Bool)

(declare-fun d!1809325 () Bool)

(assert (= bs!1341678 (and d!1809325 b!5739944)))

(declare-fun lambda!311366 () Int)

(assert (=> bs!1341678 (= lambda!311366 lambda!311334)))

(declare-fun bs!1341679 () Bool)

(assert (= bs!1341679 (and d!1809325 d!1809297)))

(assert (=> bs!1341679 (= lambda!311366 lambda!311356)))

(assert (=> d!1809325 true))

(assert (=> d!1809325 (= (derivationStepZipper!1833 lt!2285299 (h!69875 s!2326)) (flatMap!1363 lt!2285299 lambda!311366))))

(declare-fun bs!1341680 () Bool)

(assert (= bs!1341680 d!1809325))

(declare-fun m!6692424 () Bool)

(assert (=> bs!1341680 m!6692424))

(assert (=> b!5739935 d!1809325))

(declare-fun d!1809327 () Bool)

(declare-fun c!1013094 () Bool)

(assert (=> d!1809327 (= c!1013094 (isEmpty!35311 s!2326))))

(declare-fun e!3528532 () Bool)

(assert (=> d!1809327 (= (matchZipper!1888 lt!2285299 s!2326) e!3528532)))

(declare-fun b!5740233 () Bool)

(assert (=> b!5740233 (= e!3528532 (nullableZipper!1686 lt!2285299))))

(declare-fun b!5740234 () Bool)

(assert (=> b!5740234 (= e!3528532 (matchZipper!1888 (derivationStepZipper!1833 lt!2285299 (head!12152 s!2326)) (tail!11247 s!2326)))))

(assert (= (and d!1809327 c!1013094) b!5740233))

(assert (= (and d!1809327 (not c!1013094)) b!5740234))

(declare-fun m!6692426 () Bool)

(assert (=> d!1809327 m!6692426))

(declare-fun m!6692428 () Bool)

(assert (=> b!5740233 m!6692428))

(declare-fun m!6692430 () Bool)

(assert (=> b!5740234 m!6692430))

(assert (=> b!5740234 m!6692430))

(declare-fun m!6692432 () Bool)

(assert (=> b!5740234 m!6692432))

(declare-fun m!6692434 () Bool)

(assert (=> b!5740234 m!6692434))

(assert (=> b!5740234 m!6692432))

(assert (=> b!5740234 m!6692434))

(declare-fun m!6692436 () Bool)

(assert (=> b!5740234 m!6692436))

(assert (=> b!5739936 d!1809327))

(declare-fun d!1809329 () Bool)

(declare-fun c!1013095 () Bool)

(assert (=> d!1809329 (= c!1013095 (isEmpty!35311 (t!376879 s!2326)))))

(declare-fun e!3528533 () Bool)

(assert (=> d!1809329 (= (matchZipper!1888 lt!2285308 (t!376879 s!2326)) e!3528533)))

(declare-fun b!5740235 () Bool)

(assert (=> b!5740235 (= e!3528533 (nullableZipper!1686 lt!2285308))))

(declare-fun b!5740236 () Bool)

(assert (=> b!5740236 (= e!3528533 (matchZipper!1888 (derivationStepZipper!1833 lt!2285308 (head!12152 (t!376879 s!2326))) (tail!11247 (t!376879 s!2326))))))

(assert (= (and d!1809329 c!1013095) b!5740235))

(assert (= (and d!1809329 (not c!1013095)) b!5740236))

(assert (=> d!1809329 m!6692322))

(declare-fun m!6692438 () Bool)

(assert (=> b!5740235 m!6692438))

(assert (=> b!5740236 m!6692326))

(assert (=> b!5740236 m!6692326))

(declare-fun m!6692440 () Bool)

(assert (=> b!5740236 m!6692440))

(assert (=> b!5740236 m!6692330))

(assert (=> b!5740236 m!6692440))

(assert (=> b!5740236 m!6692330))

(declare-fun m!6692442 () Bool)

(assert (=> b!5740236 m!6692442))

(assert (=> b!5739936 d!1809329))

(declare-fun b!5740255 () Bool)

(declare-fun lt!2285459 () Unit!156532)

(declare-fun lt!2285461 () Unit!156532)

(assert (=> b!5740255 (= lt!2285459 lt!2285461)))

(declare-fun ++!13972 (List!63551 List!63551) List!63551)

(assert (=> b!5740255 (= (++!13972 (++!13972 Nil!63427 (Cons!63427 (h!69875 s!2326) Nil!63427)) (t!376879 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2089 (List!63551 C!31770 List!63551 List!63551) Unit!156532)

(assert (=> b!5740255 (= lt!2285461 (lemmaMoveElementToOtherListKeepsConcatEq!2089 Nil!63427 (h!69875 s!2326) (t!376879 s!2326) s!2326))))

(declare-fun e!3528548 () Option!15759)

(assert (=> b!5740255 (= e!3528548 (findConcatSeparation!2173 (regOne!32012 r!7292) (regTwo!32012 r!7292) (++!13972 Nil!63427 (Cons!63427 (h!69875 s!2326) Nil!63427)) (t!376879 s!2326) s!2326))))

(declare-fun b!5740256 () Bool)

(declare-fun e!3528544 () Option!15759)

(assert (=> b!5740256 (= e!3528544 (Some!15758 (tuple2!65695 Nil!63427 s!2326)))))

(declare-fun b!5740257 () Bool)

(assert (=> b!5740257 (= e!3528544 e!3528548)))

(declare-fun c!1013100 () Bool)

(assert (=> b!5740257 (= c!1013100 (is-Nil!63427 s!2326))))

(declare-fun b!5740258 () Bool)

(declare-fun e!3528545 () Bool)

(declare-fun lt!2285460 () Option!15759)

(assert (=> b!5740258 (= e!3528545 (not (isDefined!12462 lt!2285460)))))

(declare-fun b!5740260 () Bool)

(declare-fun e!3528547 () Bool)

(assert (=> b!5740260 (= e!3528547 (matchR!7935 (regTwo!32012 r!7292) s!2326))))

(declare-fun b!5740261 () Bool)

(declare-fun res!2424564 () Bool)

(declare-fun e!3528546 () Bool)

(assert (=> b!5740261 (=> (not res!2424564) (not e!3528546))))

(declare-fun get!21881 (Option!15759) tuple2!65694)

(assert (=> b!5740261 (= res!2424564 (matchR!7935 (regTwo!32012 r!7292) (_2!36150 (get!21881 lt!2285460))))))

(declare-fun b!5740262 () Bool)

(assert (=> b!5740262 (= e!3528546 (= (++!13972 (_1!36150 (get!21881 lt!2285460)) (_2!36150 (get!21881 lt!2285460))) s!2326))))

(declare-fun b!5740263 () Bool)

(declare-fun res!2424565 () Bool)

(assert (=> b!5740263 (=> (not res!2424565) (not e!3528546))))

(assert (=> b!5740263 (= res!2424565 (matchR!7935 (regOne!32012 r!7292) (_1!36150 (get!21881 lt!2285460))))))

(declare-fun b!5740259 () Bool)

(assert (=> b!5740259 (= e!3528548 None!15758)))

(declare-fun d!1809331 () Bool)

(assert (=> d!1809331 e!3528545))

(declare-fun res!2424567 () Bool)

(assert (=> d!1809331 (=> res!2424567 e!3528545)))

(assert (=> d!1809331 (= res!2424567 e!3528546)))

(declare-fun res!2424563 () Bool)

(assert (=> d!1809331 (=> (not res!2424563) (not e!3528546))))

(assert (=> d!1809331 (= res!2424563 (isDefined!12462 lt!2285460))))

(assert (=> d!1809331 (= lt!2285460 e!3528544)))

(declare-fun c!1013101 () Bool)

(assert (=> d!1809331 (= c!1013101 e!3528547)))

(declare-fun res!2424566 () Bool)

(assert (=> d!1809331 (=> (not res!2424566) (not e!3528547))))

(assert (=> d!1809331 (= res!2424566 (matchR!7935 (regOne!32012 r!7292) Nil!63427))))

(assert (=> d!1809331 (validRegex!7486 (regOne!32012 r!7292))))

(assert (=> d!1809331 (= (findConcatSeparation!2173 (regOne!32012 r!7292) (regTwo!32012 r!7292) Nil!63427 s!2326 s!2326) lt!2285460)))

(assert (= (and d!1809331 res!2424566) b!5740260))

(assert (= (and d!1809331 c!1013101) b!5740256))

(assert (= (and d!1809331 (not c!1013101)) b!5740257))

(assert (= (and b!5740257 c!1013100) b!5740259))

(assert (= (and b!5740257 (not c!1013100)) b!5740255))

(assert (= (and d!1809331 res!2424563) b!5740263))

(assert (= (and b!5740263 res!2424565) b!5740261))

(assert (= (and b!5740261 res!2424564) b!5740262))

(assert (= (and d!1809331 (not res!2424567)) b!5740258))

(declare-fun m!6692444 () Bool)

(assert (=> b!5740255 m!6692444))

(assert (=> b!5740255 m!6692444))

(declare-fun m!6692446 () Bool)

(assert (=> b!5740255 m!6692446))

(declare-fun m!6692448 () Bool)

(assert (=> b!5740255 m!6692448))

(assert (=> b!5740255 m!6692444))

(declare-fun m!6692450 () Bool)

(assert (=> b!5740255 m!6692450))

(declare-fun m!6692452 () Bool)

(assert (=> b!5740258 m!6692452))

(declare-fun m!6692454 () Bool)

(assert (=> b!5740260 m!6692454))

(declare-fun m!6692456 () Bool)

(assert (=> b!5740261 m!6692456))

(declare-fun m!6692458 () Bool)

(assert (=> b!5740261 m!6692458))

(assert (=> d!1809331 m!6692452))

(declare-fun m!6692460 () Bool)

(assert (=> d!1809331 m!6692460))

(declare-fun m!6692462 () Bool)

(assert (=> d!1809331 m!6692462))

(assert (=> b!5740263 m!6692456))

(declare-fun m!6692464 () Bool)

(assert (=> b!5740263 m!6692464))

(assert (=> b!5740262 m!6692456))

(declare-fun m!6692466 () Bool)

(assert (=> b!5740262 m!6692466))

(assert (=> b!5739956 d!1809331))

(declare-fun d!1809333 () Bool)

(declare-fun choose!43546 (Int) Bool)

(assert (=> d!1809333 (= (Exists!2850 lambda!311333) (choose!43546 lambda!311333))))

(declare-fun bs!1341681 () Bool)

(assert (= bs!1341681 d!1809333))

(declare-fun m!6692468 () Bool)

(assert (=> bs!1341681 m!6692468))

(assert (=> b!5739956 d!1809333))

(declare-fun d!1809335 () Bool)

(assert (=> d!1809335 (= (Exists!2850 lambda!311332) (choose!43546 lambda!311332))))

(declare-fun bs!1341682 () Bool)

(assert (= bs!1341682 d!1809335))

(declare-fun m!6692470 () Bool)

(assert (=> bs!1341682 m!6692470))

(assert (=> b!5739956 d!1809335))

(declare-fun bs!1341683 () Bool)

(declare-fun d!1809337 () Bool)

(assert (= bs!1341683 (and d!1809337 b!5739956)))

(declare-fun lambda!311369 () Int)

(assert (=> bs!1341683 (= lambda!311369 lambda!311332)))

(assert (=> bs!1341683 (not (= lambda!311369 lambda!311333))))

(assert (=> d!1809337 true))

(assert (=> d!1809337 true))

(assert (=> d!1809337 true))

(assert (=> d!1809337 (= (isDefined!12462 (findConcatSeparation!2173 (regOne!32012 r!7292) (regTwo!32012 r!7292) Nil!63427 s!2326 s!2326)) (Exists!2850 lambda!311369))))

(declare-fun lt!2285464 () Unit!156532)

(declare-fun choose!43547 (Regex!15750 Regex!15750 List!63551) Unit!156532)

(assert (=> d!1809337 (= lt!2285464 (choose!43547 (regOne!32012 r!7292) (regTwo!32012 r!7292) s!2326))))

(assert (=> d!1809337 (validRegex!7486 (regOne!32012 r!7292))))

(assert (=> d!1809337 (= (lemmaFindConcatSeparationEquivalentToExists!1937 (regOne!32012 r!7292) (regTwo!32012 r!7292) s!2326) lt!2285464)))

(declare-fun bs!1341684 () Bool)

(assert (= bs!1341684 d!1809337))

(declare-fun m!6692472 () Bool)

(assert (=> bs!1341684 m!6692472))

(assert (=> bs!1341684 m!6692188))

(assert (=> bs!1341684 m!6692190))

(declare-fun m!6692474 () Bool)

(assert (=> bs!1341684 m!6692474))

(assert (=> bs!1341684 m!6692188))

(assert (=> bs!1341684 m!6692462))

(assert (=> b!5739956 d!1809337))

(declare-fun bs!1341685 () Bool)

(declare-fun d!1809339 () Bool)

(assert (= bs!1341685 (and d!1809339 b!5739956)))

(declare-fun lambda!311374 () Int)

(assert (=> bs!1341685 (= lambda!311374 lambda!311332)))

(assert (=> bs!1341685 (not (= lambda!311374 lambda!311333))))

(declare-fun bs!1341686 () Bool)

(assert (= bs!1341686 (and d!1809339 d!1809337)))

(assert (=> bs!1341686 (= lambda!311374 lambda!311369)))

(assert (=> d!1809339 true))

(assert (=> d!1809339 true))

(assert (=> d!1809339 true))

(declare-fun lambda!311375 () Int)

(assert (=> bs!1341685 (not (= lambda!311375 lambda!311332))))

(assert (=> bs!1341685 (= lambda!311375 lambda!311333)))

(assert (=> bs!1341686 (not (= lambda!311375 lambda!311369))))

(declare-fun bs!1341687 () Bool)

(assert (= bs!1341687 d!1809339))

(assert (=> bs!1341687 (not (= lambda!311375 lambda!311374))))

(assert (=> d!1809339 true))

(assert (=> d!1809339 true))

(assert (=> d!1809339 true))

(assert (=> d!1809339 (= (Exists!2850 lambda!311374) (Exists!2850 lambda!311375))))

(declare-fun lt!2285467 () Unit!156532)

(declare-fun choose!43548 (Regex!15750 Regex!15750 List!63551) Unit!156532)

(assert (=> d!1809339 (= lt!2285467 (choose!43548 (regOne!32012 r!7292) (regTwo!32012 r!7292) s!2326))))

(assert (=> d!1809339 (validRegex!7486 (regOne!32012 r!7292))))

(assert (=> d!1809339 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1479 (regOne!32012 r!7292) (regTwo!32012 r!7292) s!2326) lt!2285467)))

(declare-fun m!6692476 () Bool)

(assert (=> bs!1341687 m!6692476))

(declare-fun m!6692478 () Bool)

(assert (=> bs!1341687 m!6692478))

(declare-fun m!6692480 () Bool)

(assert (=> bs!1341687 m!6692480))

(assert (=> bs!1341687 m!6692462))

(assert (=> b!5739956 d!1809339))

(declare-fun d!1809341 () Bool)

(declare-fun isEmpty!35312 (Option!15759) Bool)

(assert (=> d!1809341 (= (isDefined!12462 (findConcatSeparation!2173 (regOne!32012 r!7292) (regTwo!32012 r!7292) Nil!63427 s!2326 s!2326)) (not (isEmpty!35312 (findConcatSeparation!2173 (regOne!32012 r!7292) (regTwo!32012 r!7292) Nil!63427 s!2326 s!2326))))))

(declare-fun bs!1341688 () Bool)

(assert (= bs!1341688 d!1809341))

(assert (=> bs!1341688 m!6692188))

(declare-fun m!6692482 () Bool)

(assert (=> bs!1341688 m!6692482))

(assert (=> b!5739956 d!1809341))

(assert (=> b!5739937 d!1809309))

(declare-fun d!1809343 () Bool)

(declare-fun e!3528557 () Bool)

(assert (=> d!1809343 e!3528557))

(declare-fun res!2424582 () Bool)

(assert (=> d!1809343 (=> (not res!2424582) (not e!3528557))))

(declare-fun lt!2285470 () List!63550)

(declare-fun noDuplicate!1666 (List!63550) Bool)

(assert (=> d!1809343 (= res!2424582 (noDuplicate!1666 lt!2285470))))

(declare-fun choose!43549 ((Set Context!10268)) List!63550)

(assert (=> d!1809343 (= lt!2285470 (choose!43549 z!1189))))

(assert (=> d!1809343 (= (toList!9534 z!1189) lt!2285470)))

(declare-fun b!5740278 () Bool)

(declare-fun content!11565 (List!63550) (Set Context!10268))

(assert (=> b!5740278 (= e!3528557 (= (content!11565 lt!2285470) z!1189))))

(assert (= (and d!1809343 res!2424582) b!5740278))

(declare-fun m!6692484 () Bool)

(assert (=> d!1809343 m!6692484))

(declare-fun m!6692486 () Bool)

(assert (=> d!1809343 m!6692486))

(declare-fun m!6692488 () Bool)

(assert (=> b!5740278 m!6692488))

(assert (=> b!5739938 d!1809343))

(declare-fun d!1809345 () Bool)

(declare-fun lt!2285471 () Regex!15750)

(assert (=> d!1809345 (validRegex!7486 lt!2285471)))

(assert (=> d!1809345 (= lt!2285471 (generalisedUnion!1613 (unfocusZipperList!1178 (Cons!63426 lt!2285326 Nil!63426))))))

(assert (=> d!1809345 (= (unfocusZipper!1492 (Cons!63426 lt!2285326 Nil!63426)) lt!2285471)))

(declare-fun bs!1341689 () Bool)

(assert (= bs!1341689 d!1809345))

(declare-fun m!6692490 () Bool)

(assert (=> bs!1341689 m!6692490))

(declare-fun m!6692492 () Bool)

(assert (=> bs!1341689 m!6692492))

(assert (=> bs!1341689 m!6692492))

(declare-fun m!6692494 () Bool)

(assert (=> bs!1341689 m!6692494))

(assert (=> b!5739917 d!1809345))

(declare-fun b!5740307 () Bool)

(declare-fun e!3528572 () Bool)

(declare-fun e!3528578 () Bool)

(assert (=> b!5740307 (= e!3528572 e!3528578)))

(declare-fun res!2424604 () Bool)

(assert (=> b!5740307 (=> res!2424604 e!3528578)))

(declare-fun call!438783 () Bool)

(assert (=> b!5740307 (= res!2424604 call!438783)))

(declare-fun bm!438778 () Bool)

(assert (=> bm!438778 (= call!438783 (isEmpty!35311 s!2326))))

(declare-fun b!5740308 () Bool)

(declare-fun e!3528576 () Bool)

(declare-fun e!3528575 () Bool)

(assert (=> b!5740308 (= e!3528576 e!3528575)))

(declare-fun c!1013110 () Bool)

(assert (=> b!5740308 (= c!1013110 (is-EmptyLang!15750 lt!2285296))))

(declare-fun b!5740309 () Bool)

(declare-fun res!2424606 () Bool)

(assert (=> b!5740309 (=> res!2424606 e!3528578)))

(assert (=> b!5740309 (= res!2424606 (not (isEmpty!35311 (tail!11247 s!2326))))))

(declare-fun b!5740310 () Bool)

(declare-fun res!2424601 () Bool)

(declare-fun e!3528577 () Bool)

(assert (=> b!5740310 (=> res!2424601 e!3528577)))

(declare-fun e!3528573 () Bool)

(assert (=> b!5740310 (= res!2424601 e!3528573)))

(declare-fun res!2424599 () Bool)

(assert (=> b!5740310 (=> (not res!2424599) (not e!3528573))))

(declare-fun lt!2285474 () Bool)

(assert (=> b!5740310 (= res!2424599 lt!2285474)))

(declare-fun b!5740311 () Bool)

(assert (=> b!5740311 (= e!3528576 (= lt!2285474 call!438783))))

(declare-fun b!5740312 () Bool)

(assert (=> b!5740312 (= e!3528575 (not lt!2285474))))

(declare-fun b!5740313 () Bool)

(declare-fun e!3528574 () Bool)

(assert (=> b!5740313 (= e!3528574 (nullable!5782 lt!2285296))))

(declare-fun b!5740314 () Bool)

(declare-fun res!2424605 () Bool)

(assert (=> b!5740314 (=> res!2424605 e!3528577)))

(assert (=> b!5740314 (= res!2424605 (not (is-ElementMatch!15750 lt!2285296)))))

(assert (=> b!5740314 (= e!3528575 e!3528577)))

(declare-fun d!1809347 () Bool)

(assert (=> d!1809347 e!3528576))

(declare-fun c!1013108 () Bool)

(assert (=> d!1809347 (= c!1013108 (is-EmptyExpr!15750 lt!2285296))))

(assert (=> d!1809347 (= lt!2285474 e!3528574)))

(declare-fun c!1013109 () Bool)

(assert (=> d!1809347 (= c!1013109 (isEmpty!35311 s!2326))))

(assert (=> d!1809347 (validRegex!7486 lt!2285296)))

(assert (=> d!1809347 (= (matchR!7935 lt!2285296 s!2326) lt!2285474)))

(declare-fun b!5740315 () Bool)

(declare-fun res!2424603 () Bool)

(assert (=> b!5740315 (=> (not res!2424603) (not e!3528573))))

(assert (=> b!5740315 (= res!2424603 (not call!438783))))

(declare-fun b!5740316 () Bool)

(assert (=> b!5740316 (= e!3528573 (= (head!12152 s!2326) (c!1013022 lt!2285296)))))

(declare-fun b!5740317 () Bool)

(declare-fun derivativeStep!4539 (Regex!15750 C!31770) Regex!15750)

(assert (=> b!5740317 (= e!3528574 (matchR!7935 (derivativeStep!4539 lt!2285296 (head!12152 s!2326)) (tail!11247 s!2326)))))

(declare-fun b!5740318 () Bool)

(declare-fun res!2424600 () Bool)

(assert (=> b!5740318 (=> (not res!2424600) (not e!3528573))))

(assert (=> b!5740318 (= res!2424600 (isEmpty!35311 (tail!11247 s!2326)))))

(declare-fun b!5740319 () Bool)

(assert (=> b!5740319 (= e!3528577 e!3528572)))

(declare-fun res!2424602 () Bool)

(assert (=> b!5740319 (=> (not res!2424602) (not e!3528572))))

(assert (=> b!5740319 (= res!2424602 (not lt!2285474))))

(declare-fun b!5740320 () Bool)

(assert (=> b!5740320 (= e!3528578 (not (= (head!12152 s!2326) (c!1013022 lt!2285296))))))

(assert (= (and d!1809347 c!1013109) b!5740313))

(assert (= (and d!1809347 (not c!1013109)) b!5740317))

(assert (= (and d!1809347 c!1013108) b!5740311))

(assert (= (and d!1809347 (not c!1013108)) b!5740308))

(assert (= (and b!5740308 c!1013110) b!5740312))

(assert (= (and b!5740308 (not c!1013110)) b!5740314))

(assert (= (and b!5740314 (not res!2424605)) b!5740310))

(assert (= (and b!5740310 res!2424599) b!5740315))

(assert (= (and b!5740315 res!2424603) b!5740318))

(assert (= (and b!5740318 res!2424600) b!5740316))

(assert (= (and b!5740310 (not res!2424601)) b!5740319))

(assert (= (and b!5740319 res!2424602) b!5740307))

(assert (= (and b!5740307 (not res!2424604)) b!5740309))

(assert (= (and b!5740309 (not res!2424606)) b!5740320))

(assert (= (or b!5740311 b!5740307 b!5740315) bm!438778))

(assert (=> b!5740309 m!6692434))

(assert (=> b!5740309 m!6692434))

(declare-fun m!6692496 () Bool)

(assert (=> b!5740309 m!6692496))

(assert (=> b!5740316 m!6692430))

(assert (=> bm!438778 m!6692426))

(assert (=> b!5740317 m!6692430))

(assert (=> b!5740317 m!6692430))

(declare-fun m!6692498 () Bool)

(assert (=> b!5740317 m!6692498))

(assert (=> b!5740317 m!6692434))

(assert (=> b!5740317 m!6692498))

(assert (=> b!5740317 m!6692434))

(declare-fun m!6692500 () Bool)

(assert (=> b!5740317 m!6692500))

(assert (=> d!1809347 m!6692426))

(declare-fun m!6692502 () Bool)

(assert (=> d!1809347 m!6692502))

(assert (=> b!5740318 m!6692434))

(assert (=> b!5740318 m!6692434))

(assert (=> b!5740318 m!6692496))

(declare-fun m!6692504 () Bool)

(assert (=> b!5740313 m!6692504))

(assert (=> b!5740320 m!6692430))

(assert (=> b!5739939 d!1809347))

(declare-fun bs!1341691 () Bool)

(declare-fun b!5740362 () Bool)

(assert (= bs!1341691 (and b!5740362 d!1809337)))

(declare-fun lambda!311383 () Int)

(assert (=> bs!1341691 (not (= lambda!311383 lambda!311369))))

(declare-fun bs!1341692 () Bool)

(assert (= bs!1341692 (and b!5740362 b!5739956)))

(assert (=> bs!1341692 (not (= lambda!311383 lambda!311332))))

(declare-fun bs!1341693 () Bool)

(assert (= bs!1341693 (and b!5740362 d!1809339)))

(assert (=> bs!1341693 (not (= lambda!311383 lambda!311374))))

(assert (=> bs!1341692 (not (= lambda!311383 lambda!311333))))

(assert (=> bs!1341693 (not (= lambda!311383 lambda!311375))))

(assert (=> b!5740362 true))

(assert (=> b!5740362 true))

(declare-fun bs!1341694 () Bool)

(declare-fun b!5740354 () Bool)

(assert (= bs!1341694 (and b!5740354 d!1809337)))

(declare-fun lambda!311384 () Int)

(assert (=> bs!1341694 (not (= lambda!311384 lambda!311369))))

(declare-fun bs!1341695 () Bool)

(assert (= bs!1341695 (and b!5740354 b!5740362)))

(assert (=> bs!1341695 (not (= lambda!311384 lambda!311383))))

(declare-fun bs!1341696 () Bool)

(assert (= bs!1341696 (and b!5740354 b!5739956)))

(assert (=> bs!1341696 (not (= lambda!311384 lambda!311332))))

(declare-fun bs!1341697 () Bool)

(assert (= bs!1341697 (and b!5740354 d!1809339)))

(assert (=> bs!1341697 (not (= lambda!311384 lambda!311374))))

(assert (=> bs!1341696 (= (and (= (regOne!32012 lt!2285296) (regOne!32012 r!7292)) (= (regTwo!32012 lt!2285296) (regTwo!32012 r!7292))) (= lambda!311384 lambda!311333))))

(assert (=> bs!1341697 (= (and (= (regOne!32012 lt!2285296) (regOne!32012 r!7292)) (= (regTwo!32012 lt!2285296) (regTwo!32012 r!7292))) (= lambda!311384 lambda!311375))))

(assert (=> b!5740354 true))

(assert (=> b!5740354 true))

(declare-fun b!5740353 () Bool)

(declare-fun e!3528598 () Bool)

(declare-fun e!3528600 () Bool)

(assert (=> b!5740353 (= e!3528598 e!3528600)))

(declare-fun res!2424624 () Bool)

(assert (=> b!5740353 (= res!2424624 (not (is-EmptyLang!15750 lt!2285296)))))

(assert (=> b!5740353 (=> (not res!2424624) (not e!3528600))))

(declare-fun e!3528602 () Bool)

(declare-fun call!438788 () Bool)

(assert (=> b!5740354 (= e!3528602 call!438788)))

(declare-fun b!5740355 () Bool)

(declare-fun c!1013121 () Bool)

(assert (=> b!5740355 (= c!1013121 (is-Union!15750 lt!2285296))))

(declare-fun e!3528603 () Bool)

(declare-fun e!3528599 () Bool)

(assert (=> b!5740355 (= e!3528603 e!3528599)))

(declare-fun b!5740356 () Bool)

(declare-fun res!2424623 () Bool)

(declare-fun e!3528601 () Bool)

(assert (=> b!5740356 (=> res!2424623 e!3528601)))

(declare-fun call!438789 () Bool)

(assert (=> b!5740356 (= res!2424623 call!438789)))

(assert (=> b!5740356 (= e!3528602 e!3528601)))

(declare-fun b!5740357 () Bool)

(assert (=> b!5740357 (= e!3528599 e!3528602)))

(declare-fun c!1013122 () Bool)

(assert (=> b!5740357 (= c!1013122 (is-Star!15750 lt!2285296))))

(declare-fun b!5740358 () Bool)

(assert (=> b!5740358 (= e!3528603 (= s!2326 (Cons!63427 (c!1013022 lt!2285296) Nil!63427)))))

(declare-fun b!5740359 () Bool)

(declare-fun e!3528597 () Bool)

(assert (=> b!5740359 (= e!3528599 e!3528597)))

(declare-fun res!2424625 () Bool)

(assert (=> b!5740359 (= res!2424625 (matchRSpec!2853 (regOne!32013 lt!2285296) s!2326))))

(assert (=> b!5740359 (=> res!2424625 e!3528597)))

(declare-fun bm!438783 () Bool)

(assert (=> bm!438783 (= call!438789 (isEmpty!35311 s!2326))))

(declare-fun b!5740360 () Bool)

(declare-fun c!1013120 () Bool)

(assert (=> b!5740360 (= c!1013120 (is-ElementMatch!15750 lt!2285296))))

(assert (=> b!5740360 (= e!3528600 e!3528603)))

(declare-fun b!5740361 () Bool)

(assert (=> b!5740361 (= e!3528598 call!438789)))

(declare-fun d!1809349 () Bool)

(declare-fun c!1013119 () Bool)

(assert (=> d!1809349 (= c!1013119 (is-EmptyExpr!15750 lt!2285296))))

(assert (=> d!1809349 (= (matchRSpec!2853 lt!2285296 s!2326) e!3528598)))

(declare-fun bm!438784 () Bool)

(assert (=> bm!438784 (= call!438788 (Exists!2850 (ite c!1013122 lambda!311383 lambda!311384)))))

(assert (=> b!5740362 (= e!3528601 call!438788)))

(declare-fun b!5740363 () Bool)

(assert (=> b!5740363 (= e!3528597 (matchRSpec!2853 (regTwo!32013 lt!2285296) s!2326))))

(assert (= (and d!1809349 c!1013119) b!5740361))

(assert (= (and d!1809349 (not c!1013119)) b!5740353))

(assert (= (and b!5740353 res!2424624) b!5740360))

(assert (= (and b!5740360 c!1013120) b!5740358))

(assert (= (and b!5740360 (not c!1013120)) b!5740355))

(assert (= (and b!5740355 c!1013121) b!5740359))

(assert (= (and b!5740355 (not c!1013121)) b!5740357))

(assert (= (and b!5740359 (not res!2424625)) b!5740363))

(assert (= (and b!5740357 c!1013122) b!5740356))

(assert (= (and b!5740357 (not c!1013122)) b!5740354))

(assert (= (and b!5740356 (not res!2424623)) b!5740362))

(assert (= (or b!5740362 b!5740354) bm!438784))

(assert (= (or b!5740361 b!5740356) bm!438783))

(declare-fun m!6692508 () Bool)

(assert (=> b!5740359 m!6692508))

(assert (=> bm!438783 m!6692426))

(declare-fun m!6692510 () Bool)

(assert (=> bm!438784 m!6692510))

(declare-fun m!6692512 () Bool)

(assert (=> b!5740363 m!6692512))

(assert (=> b!5739939 d!1809349))

(declare-fun d!1809355 () Bool)

(assert (=> d!1809355 (= (matchR!7935 lt!2285296 s!2326) (matchRSpec!2853 lt!2285296 s!2326))))

(declare-fun lt!2285479 () Unit!156532)

(declare-fun choose!43550 (Regex!15750 List!63551) Unit!156532)

(assert (=> d!1809355 (= lt!2285479 (choose!43550 lt!2285296 s!2326))))

(assert (=> d!1809355 (validRegex!7486 lt!2285296)))

(assert (=> d!1809355 (= (mainMatchTheorem!2853 lt!2285296 s!2326) lt!2285479)))

(declare-fun bs!1341698 () Bool)

(assert (= bs!1341698 d!1809355))

(assert (=> bs!1341698 m!6692200))

(assert (=> bs!1341698 m!6692202))

(declare-fun m!6692514 () Bool)

(assert (=> bs!1341698 m!6692514))

(assert (=> bs!1341698 m!6692502))

(assert (=> b!5739939 d!1809355))

(declare-fun d!1809357 () Bool)

(declare-fun lt!2285480 () Regex!15750)

(assert (=> d!1809357 (validRegex!7486 lt!2285480)))

(assert (=> d!1809357 (= lt!2285480 (generalisedUnion!1613 (unfocusZipperList!1178 zl!343)))))

(assert (=> d!1809357 (= (unfocusZipper!1492 zl!343) lt!2285480)))

(declare-fun bs!1341699 () Bool)

(assert (= bs!1341699 d!1809357))

(declare-fun m!6692516 () Bool)

(assert (=> bs!1341699 m!6692516))

(assert (=> bs!1341699 m!6692184))

(assert (=> bs!1341699 m!6692184))

(assert (=> bs!1341699 m!6692186))

(assert (=> b!5739940 d!1809357))

(assert (=> b!5739922 d!1809309))

(declare-fun d!1809359 () Bool)

(assert (=> d!1809359 (= (flatMap!1363 lt!2285324 lambda!311334) (dynLambda!24821 lambda!311334 lt!2285305))))

(declare-fun lt!2285481 () Unit!156532)

(assert (=> d!1809359 (= lt!2285481 (choose!43545 lt!2285324 lt!2285305 lambda!311334))))

(assert (=> d!1809359 (= lt!2285324 (set.insert lt!2285305 (as set.empty (Set Context!10268))))))

(assert (=> d!1809359 (= (lemmaFlatMapOnSingletonSet!895 lt!2285324 lt!2285305 lambda!311334) lt!2285481)))

(declare-fun b_lambda!216731 () Bool)

(assert (=> (not b_lambda!216731) (not d!1809359)))

(declare-fun bs!1341700 () Bool)

(assert (= bs!1341700 d!1809359))

(assert (=> bs!1341700 m!6692116))

(declare-fun m!6692518 () Bool)

(assert (=> bs!1341700 m!6692518))

(declare-fun m!6692520 () Bool)

(assert (=> bs!1341700 m!6692520))

(assert (=> bs!1341700 m!6692104))

(assert (=> b!5739943 d!1809359))

(declare-fun d!1809361 () Bool)

(declare-fun lt!2285482 () Regex!15750)

(assert (=> d!1809361 (validRegex!7486 lt!2285482)))

(assert (=> d!1809361 (= lt!2285482 (generalisedUnion!1613 (unfocusZipperList!1178 (Cons!63426 lt!2285305 Nil!63426))))))

(assert (=> d!1809361 (= (unfocusZipper!1492 (Cons!63426 lt!2285305 Nil!63426)) lt!2285482)))

(declare-fun bs!1341701 () Bool)

(assert (= bs!1341701 d!1809361))

(declare-fun m!6692522 () Bool)

(assert (=> bs!1341701 m!6692522))

(declare-fun m!6692524 () Bool)

(assert (=> bs!1341701 m!6692524))

(assert (=> bs!1341701 m!6692524))

(declare-fun m!6692526 () Bool)

(assert (=> bs!1341701 m!6692526))

(assert (=> b!5739943 d!1809361))

(declare-fun b!5740392 () Bool)

(declare-fun e!3528619 () (Set Context!10268))

(declare-fun call!438790 () (Set Context!10268))

(assert (=> b!5740392 (= e!3528619 call!438790)))

(declare-fun b!5740393 () Bool)

(declare-fun e!3528618 () Bool)

(assert (=> b!5740393 (= e!3528618 (nullable!5782 (h!69873 (exprs!5634 lt!2285305))))))

(declare-fun b!5740394 () Bool)

(assert (=> b!5740394 (= e!3528619 (as set.empty (Set Context!10268)))))

(declare-fun bm!438785 () Bool)

(assert (=> bm!438785 (= call!438790 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 lt!2285305)) (Context!10269 (t!376877 (exprs!5634 lt!2285305))) (h!69875 s!2326)))))

(declare-fun d!1809363 () Bool)

(declare-fun c!1013129 () Bool)

(assert (=> d!1809363 (= c!1013129 e!3528618)))

(declare-fun res!2424642 () Bool)

(assert (=> d!1809363 (=> (not res!2424642) (not e!3528618))))

(assert (=> d!1809363 (= res!2424642 (is-Cons!63425 (exprs!5634 lt!2285305)))))

(declare-fun e!3528620 () (Set Context!10268))

(assert (=> d!1809363 (= (derivationStepZipperUp!1018 lt!2285305 (h!69875 s!2326)) e!3528620)))

(declare-fun b!5740395 () Bool)

(assert (=> b!5740395 (= e!3528620 (set.union call!438790 (derivationStepZipperUp!1018 (Context!10269 (t!376877 (exprs!5634 lt!2285305))) (h!69875 s!2326))))))

(declare-fun b!5740396 () Bool)

(assert (=> b!5740396 (= e!3528620 e!3528619)))

(declare-fun c!1013130 () Bool)

(assert (=> b!5740396 (= c!1013130 (is-Cons!63425 (exprs!5634 lt!2285305)))))

(assert (= (and d!1809363 res!2424642) b!5740393))

(assert (= (and d!1809363 c!1013129) b!5740395))

(assert (= (and d!1809363 (not c!1013129)) b!5740396))

(assert (= (and b!5740396 c!1013130) b!5740392))

(assert (= (and b!5740396 (not c!1013130)) b!5740394))

(assert (= (or b!5740395 b!5740392) bm!438785))

(declare-fun m!6692528 () Bool)

(assert (=> b!5740393 m!6692528))

(declare-fun m!6692530 () Bool)

(assert (=> bm!438785 m!6692530))

(declare-fun m!6692532 () Bool)

(assert (=> b!5740395 m!6692532))

(assert (=> b!5739943 d!1809363))

(declare-fun d!1809365 () Bool)

(assert (=> d!1809365 (= (flatMap!1363 lt!2285311 lambda!311334) (dynLambda!24821 lambda!311334 lt!2285326))))

(declare-fun lt!2285483 () Unit!156532)

(assert (=> d!1809365 (= lt!2285483 (choose!43545 lt!2285311 lt!2285326 lambda!311334))))

(assert (=> d!1809365 (= lt!2285311 (set.insert lt!2285326 (as set.empty (Set Context!10268))))))

(assert (=> d!1809365 (= (lemmaFlatMapOnSingletonSet!895 lt!2285311 lt!2285326 lambda!311334) lt!2285483)))

(declare-fun b_lambda!216733 () Bool)

(assert (=> (not b_lambda!216733) (not d!1809365)))

(declare-fun bs!1341702 () Bool)

(assert (= bs!1341702 d!1809365))

(assert (=> bs!1341702 m!6692102))

(declare-fun m!6692534 () Bool)

(assert (=> bs!1341702 m!6692534))

(declare-fun m!6692536 () Bool)

(assert (=> bs!1341702 m!6692536))

(assert (=> bs!1341702 m!6692100))

(assert (=> b!5739943 d!1809365))

(declare-fun d!1809367 () Bool)

(assert (=> d!1809367 (= (flatMap!1363 lt!2285324 lambda!311334) (choose!43544 lt!2285324 lambda!311334))))

(declare-fun bs!1341703 () Bool)

(assert (= bs!1341703 d!1809367))

(declare-fun m!6692538 () Bool)

(assert (=> bs!1341703 m!6692538))

(assert (=> b!5739943 d!1809367))

(declare-fun b!5740397 () Bool)

(declare-fun e!3528622 () (Set Context!10268))

(declare-fun call!438793 () (Set Context!10268))

(assert (=> b!5740397 (= e!3528622 call!438793)))

(declare-fun b!5740398 () Bool)

(declare-fun e!3528621 () Bool)

(assert (=> b!5740398 (= e!3528621 (nullable!5782 (h!69873 (exprs!5634 lt!2285326))))))

(declare-fun b!5740399 () Bool)

(assert (=> b!5740399 (= e!3528622 (as set.empty (Set Context!10268)))))

(declare-fun bm!438788 () Bool)

(assert (=> bm!438788 (= call!438793 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 lt!2285326)) (Context!10269 (t!376877 (exprs!5634 lt!2285326))) (h!69875 s!2326)))))

(declare-fun d!1809369 () Bool)

(declare-fun c!1013131 () Bool)

(assert (=> d!1809369 (= c!1013131 e!3528621)))

(declare-fun res!2424643 () Bool)

(assert (=> d!1809369 (=> (not res!2424643) (not e!3528621))))

(assert (=> d!1809369 (= res!2424643 (is-Cons!63425 (exprs!5634 lt!2285326)))))

(declare-fun e!3528623 () (Set Context!10268))

(assert (=> d!1809369 (= (derivationStepZipperUp!1018 lt!2285326 (h!69875 s!2326)) e!3528623)))

(declare-fun b!5740400 () Bool)

(assert (=> b!5740400 (= e!3528623 (set.union call!438793 (derivationStepZipperUp!1018 (Context!10269 (t!376877 (exprs!5634 lt!2285326))) (h!69875 s!2326))))))

(declare-fun b!5740401 () Bool)

(assert (=> b!5740401 (= e!3528623 e!3528622)))

(declare-fun c!1013132 () Bool)

(assert (=> b!5740401 (= c!1013132 (is-Cons!63425 (exprs!5634 lt!2285326)))))

(assert (= (and d!1809369 res!2424643) b!5740398))

(assert (= (and d!1809369 c!1013131) b!5740400))

(assert (= (and d!1809369 (not c!1013131)) b!5740401))

(assert (= (and b!5740401 c!1013132) b!5740397))

(assert (= (and b!5740401 (not c!1013132)) b!5740399))

(assert (= (or b!5740400 b!5740397) bm!438788))

(declare-fun m!6692540 () Bool)

(assert (=> b!5740398 m!6692540))

(declare-fun m!6692542 () Bool)

(assert (=> bm!438788 m!6692542))

(declare-fun m!6692544 () Bool)

(assert (=> b!5740400 m!6692544))

(assert (=> b!5739943 d!1809369))

(declare-fun d!1809371 () Bool)

(assert (=> d!1809371 (= (flatMap!1363 lt!2285311 lambda!311334) (choose!43544 lt!2285311 lambda!311334))))

(declare-fun bs!1341704 () Bool)

(assert (= bs!1341704 d!1809371))

(declare-fun m!6692546 () Bool)

(assert (=> bs!1341704 m!6692546))

(assert (=> b!5739943 d!1809371))

(declare-fun bm!438795 () Bool)

(declare-fun call!438801 () Bool)

(declare-fun call!438802 () Bool)

(assert (=> bm!438795 (= call!438801 call!438802)))

(declare-fun b!5740420 () Bool)

(declare-fun e!3528639 () Bool)

(declare-fun e!3528644 () Bool)

(assert (=> b!5740420 (= e!3528639 e!3528644)))

(declare-fun c!1013137 () Bool)

(assert (=> b!5740420 (= c!1013137 (is-Star!15750 r!7292))))

(declare-fun b!5740421 () Bool)

(declare-fun e!3528640 () Bool)

(assert (=> b!5740421 (= e!3528640 call!438801)))

(declare-fun b!5740422 () Bool)

(declare-fun e!3528642 () Bool)

(assert (=> b!5740422 (= e!3528644 e!3528642)))

(declare-fun res!2424657 () Bool)

(assert (=> b!5740422 (= res!2424657 (not (nullable!5782 (reg!16079 r!7292))))))

(assert (=> b!5740422 (=> (not res!2424657) (not e!3528642))))

(declare-fun d!1809373 () Bool)

(declare-fun res!2424655 () Bool)

(assert (=> d!1809373 (=> res!2424655 e!3528639)))

(assert (=> d!1809373 (= res!2424655 (is-ElementMatch!15750 r!7292))))

(assert (=> d!1809373 (= (validRegex!7486 r!7292) e!3528639)))

(declare-fun bm!438796 () Bool)

(declare-fun call!438800 () Bool)

(declare-fun c!1013138 () Bool)

(assert (=> bm!438796 (= call!438800 (validRegex!7486 (ite c!1013138 (regOne!32013 r!7292) (regOne!32012 r!7292))))))

(declare-fun b!5740423 () Bool)

(assert (=> b!5740423 (= e!3528642 call!438802)))

(declare-fun bm!438797 () Bool)

(assert (=> bm!438797 (= call!438802 (validRegex!7486 (ite c!1013137 (reg!16079 r!7292) (ite c!1013138 (regTwo!32013 r!7292) (regTwo!32012 r!7292)))))))

(declare-fun b!5740424 () Bool)

(declare-fun res!2424658 () Bool)

(declare-fun e!3528643 () Bool)

(assert (=> b!5740424 (=> (not res!2424658) (not e!3528643))))

(assert (=> b!5740424 (= res!2424658 call!438800)))

(declare-fun e!3528638 () Bool)

(assert (=> b!5740424 (= e!3528638 e!3528643)))

(declare-fun b!5740425 () Bool)

(assert (=> b!5740425 (= e!3528644 e!3528638)))

(assert (=> b!5740425 (= c!1013138 (is-Union!15750 r!7292))))

(declare-fun b!5740426 () Bool)

(assert (=> b!5740426 (= e!3528643 call!438801)))

(declare-fun b!5740427 () Bool)

(declare-fun e!3528641 () Bool)

(assert (=> b!5740427 (= e!3528641 e!3528640)))

(declare-fun res!2424656 () Bool)

(assert (=> b!5740427 (=> (not res!2424656) (not e!3528640))))

(assert (=> b!5740427 (= res!2424656 call!438800)))

(declare-fun b!5740428 () Bool)

(declare-fun res!2424654 () Bool)

(assert (=> b!5740428 (=> res!2424654 e!3528641)))

(assert (=> b!5740428 (= res!2424654 (not (is-Concat!24595 r!7292)))))

(assert (=> b!5740428 (= e!3528638 e!3528641)))

(assert (= (and d!1809373 (not res!2424655)) b!5740420))

(assert (= (and b!5740420 c!1013137) b!5740422))

(assert (= (and b!5740420 (not c!1013137)) b!5740425))

(assert (= (and b!5740422 res!2424657) b!5740423))

(assert (= (and b!5740425 c!1013138) b!5740424))

(assert (= (and b!5740425 (not c!1013138)) b!5740428))

(assert (= (and b!5740424 res!2424658) b!5740426))

(assert (= (and b!5740428 (not res!2424654)) b!5740427))

(assert (= (and b!5740427 res!2424656) b!5740421))

(assert (= (or b!5740426 b!5740421) bm!438795))

(assert (= (or b!5740424 b!5740427) bm!438796))

(assert (= (or b!5740423 bm!438795) bm!438797))

(declare-fun m!6692548 () Bool)

(assert (=> b!5740422 m!6692548))

(declare-fun m!6692550 () Bool)

(assert (=> bm!438796 m!6692550))

(declare-fun m!6692552 () Bool)

(assert (=> bm!438797 m!6692552))

(assert (=> start!590610 d!1809373))

(declare-fun d!1809375 () Bool)

(declare-fun c!1013139 () Bool)

(assert (=> d!1809375 (= c!1013139 (isEmpty!35311 s!2326))))

(declare-fun e!3528645 () Bool)

(assert (=> d!1809375 (= (matchZipper!1888 z!1189 s!2326) e!3528645)))

(declare-fun b!5740429 () Bool)

(assert (=> b!5740429 (= e!3528645 (nullableZipper!1686 z!1189))))

(declare-fun b!5740430 () Bool)

(assert (=> b!5740430 (= e!3528645 (matchZipper!1888 (derivationStepZipper!1833 z!1189 (head!12152 s!2326)) (tail!11247 s!2326)))))

(assert (= (and d!1809375 c!1013139) b!5740429))

(assert (= (and d!1809375 (not c!1013139)) b!5740430))

(assert (=> d!1809375 m!6692426))

(declare-fun m!6692554 () Bool)

(assert (=> b!5740429 m!6692554))

(assert (=> b!5740430 m!6692430))

(assert (=> b!5740430 m!6692430))

(declare-fun m!6692556 () Bool)

(assert (=> b!5740430 m!6692556))

(assert (=> b!5740430 m!6692434))

(assert (=> b!5740430 m!6692556))

(assert (=> b!5740430 m!6692434))

(declare-fun m!6692558 () Bool)

(assert (=> b!5740430 m!6692558))

(assert (=> b!5739923 d!1809375))

(declare-fun e!3528655 () Bool)

(declare-fun d!1809377 () Bool)

(assert (=> d!1809377 (= (matchZipper!1888 (set.union lt!2285313 lt!2285310) (t!376879 s!2326)) e!3528655)))

(declare-fun res!2424669 () Bool)

(assert (=> d!1809377 (=> res!2424669 e!3528655)))

(assert (=> d!1809377 (= res!2424669 (matchZipper!1888 lt!2285313 (t!376879 s!2326)))))

(declare-fun lt!2285487 () Unit!156532)

(declare-fun choose!43551 ((Set Context!10268) (Set Context!10268) List!63551) Unit!156532)

(assert (=> d!1809377 (= lt!2285487 (choose!43551 lt!2285313 lt!2285310 (t!376879 s!2326)))))

(assert (=> d!1809377 (= (lemmaZipperConcatMatchesSameAsBothZippers!775 lt!2285313 lt!2285310 (t!376879 s!2326)) lt!2285487)))

(declare-fun b!5740447 () Bool)

(assert (=> b!5740447 (= e!3528655 (matchZipper!1888 lt!2285310 (t!376879 s!2326)))))

(assert (= (and d!1809377 (not res!2424669)) b!5740447))

(assert (=> d!1809377 m!6692144))

(assert (=> d!1809377 m!6692120))

(declare-fun m!6692576 () Bool)

(assert (=> d!1809377 m!6692576))

(assert (=> b!5740447 m!6692154))

(assert (=> b!5739924 d!1809377))

(assert (=> b!5739924 d!1809295))

(declare-fun d!1809381 () Bool)

(declare-fun c!1013143 () Bool)

(assert (=> d!1809381 (= c!1013143 (isEmpty!35311 (t!376879 s!2326)))))

(declare-fun e!3528656 () Bool)

(assert (=> d!1809381 (= (matchZipper!1888 (set.union lt!2285313 lt!2285310) (t!376879 s!2326)) e!3528656)))

(declare-fun b!5740448 () Bool)

(assert (=> b!5740448 (= e!3528656 (nullableZipper!1686 (set.union lt!2285313 lt!2285310)))))

(declare-fun b!5740449 () Bool)

(assert (=> b!5740449 (= e!3528656 (matchZipper!1888 (derivationStepZipper!1833 (set.union lt!2285313 lt!2285310) (head!12152 (t!376879 s!2326))) (tail!11247 (t!376879 s!2326))))))

(assert (= (and d!1809381 c!1013143) b!5740448))

(assert (= (and d!1809381 (not c!1013143)) b!5740449))

(assert (=> d!1809381 m!6692322))

(declare-fun m!6692578 () Bool)

(assert (=> b!5740448 m!6692578))

(assert (=> b!5740449 m!6692326))

(assert (=> b!5740449 m!6692326))

(declare-fun m!6692580 () Bool)

(assert (=> b!5740449 m!6692580))

(assert (=> b!5740449 m!6692330))

(assert (=> b!5740449 m!6692580))

(assert (=> b!5740449 m!6692330))

(declare-fun m!6692582 () Bool)

(assert (=> b!5740449 m!6692582))

(assert (=> b!5739924 d!1809381))

(assert (=> b!5739944 d!1809301))

(declare-fun d!1809383 () Bool)

(assert (=> d!1809383 (= (flatMap!1363 z!1189 lambda!311334) (dynLambda!24821 lambda!311334 (h!69874 zl!343)))))

(declare-fun lt!2285488 () Unit!156532)

(assert (=> d!1809383 (= lt!2285488 (choose!43545 z!1189 (h!69874 zl!343) lambda!311334))))

(assert (=> d!1809383 (= z!1189 (set.insert (h!69874 zl!343) (as set.empty (Set Context!10268))))))

(assert (=> d!1809383 (= (lemmaFlatMapOnSingletonSet!895 z!1189 (h!69874 zl!343) lambda!311334) lt!2285488)))

(declare-fun b_lambda!216735 () Bool)

(assert (=> (not b_lambda!216735) (not d!1809383)))

(declare-fun bs!1341705 () Bool)

(assert (= bs!1341705 d!1809383))

(assert (=> bs!1341705 m!6692162))

(declare-fun m!6692584 () Bool)

(assert (=> bs!1341705 m!6692584))

(declare-fun m!6692586 () Bool)

(assert (=> bs!1341705 m!6692586))

(declare-fun m!6692588 () Bool)

(assert (=> bs!1341705 m!6692588))

(assert (=> b!5739944 d!1809383))

(declare-fun d!1809385 () Bool)

(assert (=> d!1809385 (= (nullable!5782 (h!69873 (exprs!5634 (h!69874 zl!343)))) (nullableFct!1832 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun bs!1341706 () Bool)

(assert (= bs!1341706 d!1809385))

(declare-fun m!6692590 () Bool)

(assert (=> bs!1341706 m!6692590))

(assert (=> b!5739944 d!1809385))

(declare-fun b!5740450 () Bool)

(declare-fun e!3528658 () (Set Context!10268))

(declare-fun call!438804 () (Set Context!10268))

(assert (=> b!5740450 (= e!3528658 call!438804)))

(declare-fun b!5740451 () Bool)

(declare-fun e!3528657 () Bool)

(assert (=> b!5740451 (= e!3528657 (nullable!5782 (h!69873 (exprs!5634 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343)))))))))))

(declare-fun b!5740452 () Bool)

(assert (=> b!5740452 (= e!3528658 (as set.empty (Set Context!10268)))))

(declare-fun bm!438799 () Bool)

(assert (=> bm!438799 (= call!438804 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343))))))) (Context!10269 (t!376877 (exprs!5634 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343)))))))) (h!69875 s!2326)))))

(declare-fun d!1809387 () Bool)

(declare-fun c!1013144 () Bool)

(assert (=> d!1809387 (= c!1013144 e!3528657)))

(declare-fun res!2424670 () Bool)

(assert (=> d!1809387 (=> (not res!2424670) (not e!3528657))))

(assert (=> d!1809387 (= res!2424670 (is-Cons!63425 (exprs!5634 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343))))))))))

(declare-fun e!3528659 () (Set Context!10268))

(assert (=> d!1809387 (= (derivationStepZipperUp!1018 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343))))) (h!69875 s!2326)) e!3528659)))

(declare-fun b!5740453 () Bool)

(assert (=> b!5740453 (= e!3528659 (set.union call!438804 (derivationStepZipperUp!1018 (Context!10269 (t!376877 (exprs!5634 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343)))))))) (h!69875 s!2326))))))

(declare-fun b!5740454 () Bool)

(assert (=> b!5740454 (= e!3528659 e!3528658)))

(declare-fun c!1013145 () Bool)

(assert (=> b!5740454 (= c!1013145 (is-Cons!63425 (exprs!5634 (Context!10269 (Cons!63425 (h!69873 (exprs!5634 (h!69874 zl!343))) (t!376877 (exprs!5634 (h!69874 zl!343))))))))))

(assert (= (and d!1809387 res!2424670) b!5740451))

(assert (= (and d!1809387 c!1013144) b!5740453))

(assert (= (and d!1809387 (not c!1013144)) b!5740454))

(assert (= (and b!5740454 c!1013145) b!5740450))

(assert (= (and b!5740454 (not c!1013145)) b!5740452))

(assert (= (or b!5740453 b!5740450) bm!438799))

(declare-fun m!6692592 () Bool)

(assert (=> b!5740451 m!6692592))

(declare-fun m!6692594 () Bool)

(assert (=> bm!438799 m!6692594))

(declare-fun m!6692596 () Bool)

(assert (=> b!5740453 m!6692596))

(assert (=> b!5739944 d!1809387))

(declare-fun b!5740455 () Bool)

(declare-fun e!3528661 () (Set Context!10268))

(declare-fun call!438805 () (Set Context!10268))

(assert (=> b!5740455 (= e!3528661 call!438805)))

(declare-fun b!5740456 () Bool)

(declare-fun e!3528660 () Bool)

(assert (=> b!5740456 (= e!3528660 (nullable!5782 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun b!5740457 () Bool)

(assert (=> b!5740457 (= e!3528661 (as set.empty (Set Context!10268)))))

(declare-fun bm!438800 () Bool)

(assert (=> bm!438800 (= call!438805 (derivationStepZipperDown!1092 (h!69873 (exprs!5634 (h!69874 zl!343))) (Context!10269 (t!376877 (exprs!5634 (h!69874 zl!343)))) (h!69875 s!2326)))))

(declare-fun d!1809389 () Bool)

(declare-fun c!1013146 () Bool)

(assert (=> d!1809389 (= c!1013146 e!3528660)))

(declare-fun res!2424671 () Bool)

(assert (=> d!1809389 (=> (not res!2424671) (not e!3528660))))

(assert (=> d!1809389 (= res!2424671 (is-Cons!63425 (exprs!5634 (h!69874 zl!343))))))

(declare-fun e!3528662 () (Set Context!10268))

(assert (=> d!1809389 (= (derivationStepZipperUp!1018 (h!69874 zl!343) (h!69875 s!2326)) e!3528662)))

(declare-fun b!5740458 () Bool)

(assert (=> b!5740458 (= e!3528662 (set.union call!438805 (derivationStepZipperUp!1018 (Context!10269 (t!376877 (exprs!5634 (h!69874 zl!343)))) (h!69875 s!2326))))))

(declare-fun b!5740459 () Bool)

(assert (=> b!5740459 (= e!3528662 e!3528661)))

(declare-fun c!1013147 () Bool)

(assert (=> b!5740459 (= c!1013147 (is-Cons!63425 (exprs!5634 (h!69874 zl!343))))))

(assert (= (and d!1809389 res!2424671) b!5740456))

(assert (= (and d!1809389 c!1013146) b!5740458))

(assert (= (and d!1809389 (not c!1013146)) b!5740459))

(assert (= (and b!5740459 c!1013147) b!5740455))

(assert (= (and b!5740459 (not c!1013147)) b!5740457))

(assert (= (or b!5740458 b!5740455) bm!438800))

(assert (=> b!5740456 m!6692168))

(declare-fun m!6692598 () Bool)

(assert (=> bm!438800 m!6692598))

(declare-fun m!6692600 () Bool)

(assert (=> b!5740458 m!6692600))

(assert (=> b!5739944 d!1809389))

(declare-fun c!1013150 () Bool)

(declare-fun call!438807 () (Set Context!10268))

(declare-fun call!438810 () List!63549)

(declare-fun bm!438801 () Bool)

(assert (=> bm!438801 (= call!438807 (derivationStepZipperDown!1092 (ite c!1013150 (regOne!32013 (h!69873 (exprs!5634 (h!69874 zl!343)))) (regOne!32012 (h!69873 (exprs!5634 (h!69874 zl!343))))) (ite c!1013150 lt!2285314 (Context!10269 call!438810)) (h!69875 s!2326)))))

(declare-fun b!5740461 () Bool)

(declare-fun e!3528668 () (Set Context!10268))

(declare-fun e!3528664 () (Set Context!10268))

(assert (=> b!5740461 (= e!3528668 e!3528664)))

(declare-fun c!1013149 () Bool)

(assert (=> b!5740461 (= c!1013149 (is-Concat!24595 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun bm!438802 () Bool)

(declare-fun call!438806 () (Set Context!10268))

(declare-fun call!438811 () (Set Context!10268))

(assert (=> bm!438802 (= call!438806 call!438811)))

(declare-fun b!5740462 () Bool)

(declare-fun call!438808 () (Set Context!10268))

(assert (=> b!5740462 (= e!3528664 call!438808)))

(declare-fun b!5740463 () Bool)

(declare-fun e!3528666 () (Set Context!10268))

(declare-fun e!3528663 () (Set Context!10268))

(assert (=> b!5740463 (= e!3528666 e!3528663)))

(assert (=> b!5740463 (= c!1013150 (is-Union!15750 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(declare-fun bm!438803 () Bool)

(assert (=> bm!438803 (= call!438808 call!438806)))

(declare-fun b!5740464 () Bool)

(assert (=> b!5740464 (= e!3528668 (set.union call!438807 call!438806))))

(declare-fun bm!438804 () Bool)

(declare-fun c!1013148 () Bool)

(declare-fun call!438809 () List!63549)

(assert (=> bm!438804 (= call!438811 (derivationStepZipperDown!1092 (ite c!1013150 (regTwo!32013 (h!69873 (exprs!5634 (h!69874 zl!343)))) (ite c!1013148 (regTwo!32012 (h!69873 (exprs!5634 (h!69874 zl!343)))) (ite c!1013149 (regOne!32012 (h!69873 (exprs!5634 (h!69874 zl!343)))) (reg!16079 (h!69873 (exprs!5634 (h!69874 zl!343))))))) (ite (or c!1013150 c!1013148) lt!2285314 (Context!10269 call!438809)) (h!69875 s!2326)))))

(declare-fun b!5740465 () Bool)

(declare-fun e!3528665 () (Set Context!10268))

(assert (=> b!5740465 (= e!3528665 (as set.empty (Set Context!10268)))))

(declare-fun bm!438805 () Bool)

(assert (=> bm!438805 (= call!438810 ($colon$colon!1753 (exprs!5634 lt!2285314) (ite (or c!1013148 c!1013149) (regTwo!32012 (h!69873 (exprs!5634 (h!69874 zl!343)))) (h!69873 (exprs!5634 (h!69874 zl!343))))))))

(declare-fun d!1809391 () Bool)

(declare-fun c!1013151 () Bool)

(assert (=> d!1809391 (= c!1013151 (and (is-ElementMatch!15750 (h!69873 (exprs!5634 (h!69874 zl!343)))) (= (c!1013022 (h!69873 (exprs!5634 (h!69874 zl!343)))) (h!69875 s!2326))))))

(assert (=> d!1809391 (= (derivationStepZipperDown!1092 (h!69873 (exprs!5634 (h!69874 zl!343))) lt!2285314 (h!69875 s!2326)) e!3528666)))

(declare-fun b!5740460 () Bool)

(assert (=> b!5740460 (= e!3528665 call!438808)))

(declare-fun b!5740466 () Bool)

(declare-fun e!3528667 () Bool)

(assert (=> b!5740466 (= c!1013148 e!3528667)))

(declare-fun res!2424672 () Bool)

(assert (=> b!5740466 (=> (not res!2424672) (not e!3528667))))

(assert (=> b!5740466 (= res!2424672 (is-Concat!24595 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(assert (=> b!5740466 (= e!3528663 e!3528668)))

(declare-fun b!5740467 () Bool)

(assert (=> b!5740467 (= e!3528667 (nullable!5782 (regOne!32012 (h!69873 (exprs!5634 (h!69874 zl!343))))))))

(declare-fun b!5740468 () Bool)

(declare-fun c!1013152 () Bool)

(assert (=> b!5740468 (= c!1013152 (is-Star!15750 (h!69873 (exprs!5634 (h!69874 zl!343)))))))

(assert (=> b!5740468 (= e!3528664 e!3528665)))

(declare-fun b!5740469 () Bool)

(assert (=> b!5740469 (= e!3528666 (set.insert lt!2285314 (as set.empty (Set Context!10268))))))

(declare-fun bm!438806 () Bool)

(assert (=> bm!438806 (= call!438809 call!438810)))

(declare-fun b!5740470 () Bool)

(assert (=> b!5740470 (= e!3528663 (set.union call!438807 call!438811))))

(assert (= (and d!1809391 c!1013151) b!5740469))

(assert (= (and d!1809391 (not c!1013151)) b!5740463))

(assert (= (and b!5740463 c!1013150) b!5740470))

(assert (= (and b!5740463 (not c!1013150)) b!5740466))

(assert (= (and b!5740466 res!2424672) b!5740467))

(assert (= (and b!5740466 c!1013148) b!5740464))

(assert (= (and b!5740466 (not c!1013148)) b!5740461))

(assert (= (and b!5740461 c!1013149) b!5740462))

(assert (= (and b!5740461 (not c!1013149)) b!5740468))

(assert (= (and b!5740468 c!1013152) b!5740460))

(assert (= (and b!5740468 (not c!1013152)) b!5740465))

(assert (= (or b!5740462 b!5740460) bm!438806))

(assert (= (or b!5740462 b!5740460) bm!438803))

(assert (= (or b!5740464 bm!438806) bm!438805))

(assert (= (or b!5740464 bm!438803) bm!438802))

(assert (= (or b!5740470 bm!438802) bm!438804))

(assert (= (or b!5740470 b!5740464) bm!438801))

(declare-fun m!6692602 () Bool)

(assert (=> bm!438805 m!6692602))

(declare-fun m!6692604 () Bool)

(assert (=> b!5740467 m!6692604))

(declare-fun m!6692606 () Bool)

(assert (=> bm!438801 m!6692606))

(assert (=> b!5740469 m!6692124))

(declare-fun m!6692608 () Bool)

(assert (=> bm!438804 m!6692608))

(assert (=> b!5739944 d!1809391))

(declare-fun d!1809393 () Bool)

(assert (=> d!1809393 (= (flatMap!1363 z!1189 lambda!311334) (choose!43544 z!1189 lambda!311334))))

(declare-fun bs!1341707 () Bool)

(assert (= bs!1341707 d!1809393))

(declare-fun m!6692610 () Bool)

(assert (=> bs!1341707 m!6692610))

(assert (=> b!5739944 d!1809393))

(declare-fun bs!1341708 () Bool)

(declare-fun d!1809395 () Bool)

(assert (= bs!1341708 (and d!1809395 d!1809305)))

(declare-fun lambda!311387 () Int)

(assert (=> bs!1341708 (= lambda!311387 lambda!311359)))

(declare-fun bs!1341709 () Bool)

(assert (= bs!1341709 (and d!1809395 d!1809311)))

(assert (=> bs!1341709 (= lambda!311387 lambda!311362)))

(declare-fun bs!1341710 () Bool)

(assert (= bs!1341710 (and d!1809395 d!1809313)))

(assert (=> bs!1341710 (= lambda!311387 lambda!311365)))

(assert (=> d!1809395 (= (inv!82623 setElem!38524) (forall!14871 (exprs!5634 setElem!38524) lambda!311387))))

(declare-fun bs!1341711 () Bool)

(assert (= bs!1341711 d!1809395))

(declare-fun m!6692612 () Bool)

(assert (=> bs!1341711 m!6692612))

(assert (=> setNonEmpty!38524 d!1809395))

(declare-fun bs!1341712 () Bool)

(declare-fun b!5740480 () Bool)

(assert (= bs!1341712 (and b!5740480 d!1809337)))

(declare-fun lambda!311388 () Int)

(assert (=> bs!1341712 (not (= lambda!311388 lambda!311369))))

(declare-fun bs!1341713 () Bool)

(assert (= bs!1341713 (and b!5740480 b!5740362)))

(assert (=> bs!1341713 (= (and (= (reg!16079 r!7292) (reg!16079 lt!2285296)) (= r!7292 lt!2285296)) (= lambda!311388 lambda!311383))))

(declare-fun bs!1341714 () Bool)

(assert (= bs!1341714 (and b!5740480 b!5739956)))

(assert (=> bs!1341714 (not (= lambda!311388 lambda!311332))))

(declare-fun bs!1341715 () Bool)

(assert (= bs!1341715 (and b!5740480 b!5740354)))

(assert (=> bs!1341715 (not (= lambda!311388 lambda!311384))))

(declare-fun bs!1341716 () Bool)

(assert (= bs!1341716 (and b!5740480 d!1809339)))

(assert (=> bs!1341716 (not (= lambda!311388 lambda!311374))))

(assert (=> bs!1341714 (not (= lambda!311388 lambda!311333))))

(assert (=> bs!1341716 (not (= lambda!311388 lambda!311375))))

(assert (=> b!5740480 true))

(assert (=> b!5740480 true))

(declare-fun bs!1341717 () Bool)

(declare-fun b!5740472 () Bool)

(assert (= bs!1341717 (and b!5740472 d!1809337)))

(declare-fun lambda!311389 () Int)

(assert (=> bs!1341717 (not (= lambda!311389 lambda!311369))))

(declare-fun bs!1341718 () Bool)

(assert (= bs!1341718 (and b!5740472 b!5740362)))

(assert (=> bs!1341718 (not (= lambda!311389 lambda!311383))))

(declare-fun bs!1341719 () Bool)

(assert (= bs!1341719 (and b!5740472 b!5739956)))

(assert (=> bs!1341719 (not (= lambda!311389 lambda!311332))))

(declare-fun bs!1341720 () Bool)

(assert (= bs!1341720 (and b!5740472 b!5740480)))

(assert (=> bs!1341720 (not (= lambda!311389 lambda!311388))))

(declare-fun bs!1341721 () Bool)

(assert (= bs!1341721 (and b!5740472 b!5740354)))

(assert (=> bs!1341721 (= (and (= (regOne!32012 r!7292) (regOne!32012 lt!2285296)) (= (regTwo!32012 r!7292) (regTwo!32012 lt!2285296))) (= lambda!311389 lambda!311384))))

(declare-fun bs!1341722 () Bool)

(assert (= bs!1341722 (and b!5740472 d!1809339)))

(assert (=> bs!1341722 (not (= lambda!311389 lambda!311374))))

(assert (=> bs!1341719 (= lambda!311389 lambda!311333)))

(assert (=> bs!1341722 (= lambda!311389 lambda!311375)))

(assert (=> b!5740472 true))

(assert (=> b!5740472 true))

(declare-fun b!5740471 () Bool)

(declare-fun e!3528670 () Bool)

(declare-fun e!3528672 () Bool)

(assert (=> b!5740471 (= e!3528670 e!3528672)))

(declare-fun res!2424674 () Bool)

(assert (=> b!5740471 (= res!2424674 (not (is-EmptyLang!15750 r!7292)))))

(assert (=> b!5740471 (=> (not res!2424674) (not e!3528672))))

(declare-fun e!3528674 () Bool)

(declare-fun call!438812 () Bool)

(assert (=> b!5740472 (= e!3528674 call!438812)))

(declare-fun b!5740473 () Bool)

(declare-fun c!1013155 () Bool)

(assert (=> b!5740473 (= c!1013155 (is-Union!15750 r!7292))))

(declare-fun e!3528675 () Bool)

(declare-fun e!3528671 () Bool)

(assert (=> b!5740473 (= e!3528675 e!3528671)))

(declare-fun b!5740474 () Bool)

(declare-fun res!2424673 () Bool)

(declare-fun e!3528673 () Bool)

(assert (=> b!5740474 (=> res!2424673 e!3528673)))

(declare-fun call!438813 () Bool)

(assert (=> b!5740474 (= res!2424673 call!438813)))

(assert (=> b!5740474 (= e!3528674 e!3528673)))

(declare-fun b!5740475 () Bool)

(assert (=> b!5740475 (= e!3528671 e!3528674)))

(declare-fun c!1013156 () Bool)

(assert (=> b!5740475 (= c!1013156 (is-Star!15750 r!7292))))

(declare-fun b!5740476 () Bool)

(assert (=> b!5740476 (= e!3528675 (= s!2326 (Cons!63427 (c!1013022 r!7292) Nil!63427)))))

(declare-fun b!5740477 () Bool)

(declare-fun e!3528669 () Bool)

(assert (=> b!5740477 (= e!3528671 e!3528669)))

(declare-fun res!2424675 () Bool)

(assert (=> b!5740477 (= res!2424675 (matchRSpec!2853 (regOne!32013 r!7292) s!2326))))

(assert (=> b!5740477 (=> res!2424675 e!3528669)))

(declare-fun bm!438807 () Bool)

(assert (=> bm!438807 (= call!438813 (isEmpty!35311 s!2326))))

(declare-fun b!5740478 () Bool)

(declare-fun c!1013154 () Bool)

(assert (=> b!5740478 (= c!1013154 (is-ElementMatch!15750 r!7292))))

(assert (=> b!5740478 (= e!3528672 e!3528675)))

(declare-fun b!5740479 () Bool)

(assert (=> b!5740479 (= e!3528670 call!438813)))

(declare-fun d!1809397 () Bool)

(declare-fun c!1013153 () Bool)

(assert (=> d!1809397 (= c!1013153 (is-EmptyExpr!15750 r!7292))))

(assert (=> d!1809397 (= (matchRSpec!2853 r!7292 s!2326) e!3528670)))

(declare-fun bm!438808 () Bool)

(assert (=> bm!438808 (= call!438812 (Exists!2850 (ite c!1013156 lambda!311388 lambda!311389)))))

(assert (=> b!5740480 (= e!3528673 call!438812)))

(declare-fun b!5740481 () Bool)

(assert (=> b!5740481 (= e!3528669 (matchRSpec!2853 (regTwo!32013 r!7292) s!2326))))

(assert (= (and d!1809397 c!1013153) b!5740479))

(assert (= (and d!1809397 (not c!1013153)) b!5740471))

(assert (= (and b!5740471 res!2424674) b!5740478))

(assert (= (and b!5740478 c!1013154) b!5740476))

(assert (= (and b!5740478 (not c!1013154)) b!5740473))

(assert (= (and b!5740473 c!1013155) b!5740477))

(assert (= (and b!5740473 (not c!1013155)) b!5740475))

(assert (= (and b!5740477 (not res!2424675)) b!5740481))

(assert (= (and b!5740475 c!1013156) b!5740474))

(assert (= (and b!5740475 (not c!1013156)) b!5740472))

(assert (= (and b!5740474 (not res!2424673)) b!5740480))

(assert (= (or b!5740480 b!5740472) bm!438808))

(assert (= (or b!5740479 b!5740474) bm!438807))

(declare-fun m!6692614 () Bool)

(assert (=> b!5740477 m!6692614))

(assert (=> bm!438807 m!6692426))

(declare-fun m!6692616 () Bool)

(assert (=> bm!438808 m!6692616))

(declare-fun m!6692618 () Bool)

(assert (=> b!5740481 m!6692618))

(assert (=> b!5739925 d!1809397))

(declare-fun b!5740482 () Bool)

(declare-fun e!3528676 () Bool)

(declare-fun e!3528682 () Bool)

(assert (=> b!5740482 (= e!3528676 e!3528682)))

(declare-fun res!2424681 () Bool)

(assert (=> b!5740482 (=> res!2424681 e!3528682)))

(declare-fun call!438814 () Bool)

(assert (=> b!5740482 (= res!2424681 call!438814)))

(declare-fun bm!438809 () Bool)

(assert (=> bm!438809 (= call!438814 (isEmpty!35311 s!2326))))

(declare-fun b!5740483 () Bool)

(declare-fun e!3528680 () Bool)

(declare-fun e!3528679 () Bool)

(assert (=> b!5740483 (= e!3528680 e!3528679)))

(declare-fun c!1013159 () Bool)

(assert (=> b!5740483 (= c!1013159 (is-EmptyLang!15750 r!7292))))

(declare-fun b!5740484 () Bool)

(declare-fun res!2424683 () Bool)

(assert (=> b!5740484 (=> res!2424683 e!3528682)))

(assert (=> b!5740484 (= res!2424683 (not (isEmpty!35311 (tail!11247 s!2326))))))

(declare-fun b!5740485 () Bool)

(declare-fun res!2424678 () Bool)

(declare-fun e!3528681 () Bool)

(assert (=> b!5740485 (=> res!2424678 e!3528681)))

(declare-fun e!3528677 () Bool)

(assert (=> b!5740485 (= res!2424678 e!3528677)))

(declare-fun res!2424676 () Bool)

(assert (=> b!5740485 (=> (not res!2424676) (not e!3528677))))

(declare-fun lt!2285489 () Bool)

(assert (=> b!5740485 (= res!2424676 lt!2285489)))

(declare-fun b!5740486 () Bool)

(assert (=> b!5740486 (= e!3528680 (= lt!2285489 call!438814))))

(declare-fun b!5740487 () Bool)

(assert (=> b!5740487 (= e!3528679 (not lt!2285489))))

(declare-fun b!5740488 () Bool)

(declare-fun e!3528678 () Bool)

(assert (=> b!5740488 (= e!3528678 (nullable!5782 r!7292))))

(declare-fun b!5740489 () Bool)

(declare-fun res!2424682 () Bool)

(assert (=> b!5740489 (=> res!2424682 e!3528681)))

(assert (=> b!5740489 (= res!2424682 (not (is-ElementMatch!15750 r!7292)))))

(assert (=> b!5740489 (= e!3528679 e!3528681)))

(declare-fun d!1809399 () Bool)

(assert (=> d!1809399 e!3528680))

(declare-fun c!1013157 () Bool)

(assert (=> d!1809399 (= c!1013157 (is-EmptyExpr!15750 r!7292))))

(assert (=> d!1809399 (= lt!2285489 e!3528678)))

(declare-fun c!1013158 () Bool)

(assert (=> d!1809399 (= c!1013158 (isEmpty!35311 s!2326))))

(assert (=> d!1809399 (validRegex!7486 r!7292)))

(assert (=> d!1809399 (= (matchR!7935 r!7292 s!2326) lt!2285489)))

(declare-fun b!5740490 () Bool)

(declare-fun res!2424680 () Bool)

(assert (=> b!5740490 (=> (not res!2424680) (not e!3528677))))

(assert (=> b!5740490 (= res!2424680 (not call!438814))))

(declare-fun b!5740491 () Bool)

(assert (=> b!5740491 (= e!3528677 (= (head!12152 s!2326) (c!1013022 r!7292)))))

(declare-fun b!5740492 () Bool)

(assert (=> b!5740492 (= e!3528678 (matchR!7935 (derivativeStep!4539 r!7292 (head!12152 s!2326)) (tail!11247 s!2326)))))

(declare-fun b!5740493 () Bool)

(declare-fun res!2424677 () Bool)

(assert (=> b!5740493 (=> (not res!2424677) (not e!3528677))))

(assert (=> b!5740493 (= res!2424677 (isEmpty!35311 (tail!11247 s!2326)))))

(declare-fun b!5740494 () Bool)

(assert (=> b!5740494 (= e!3528681 e!3528676)))

(declare-fun res!2424679 () Bool)

(assert (=> b!5740494 (=> (not res!2424679) (not e!3528676))))

(assert (=> b!5740494 (= res!2424679 (not lt!2285489))))

(declare-fun b!5740495 () Bool)

(assert (=> b!5740495 (= e!3528682 (not (= (head!12152 s!2326) (c!1013022 r!7292))))))

(assert (= (and d!1809399 c!1013158) b!5740488))

(assert (= (and d!1809399 (not c!1013158)) b!5740492))

(assert (= (and d!1809399 c!1013157) b!5740486))

(assert (= (and d!1809399 (not c!1013157)) b!5740483))

(assert (= (and b!5740483 c!1013159) b!5740487))

(assert (= (and b!5740483 (not c!1013159)) b!5740489))

(assert (= (and b!5740489 (not res!2424682)) b!5740485))

(assert (= (and b!5740485 res!2424676) b!5740490))

(assert (= (and b!5740490 res!2424680) b!5740493))

(assert (= (and b!5740493 res!2424677) b!5740491))

(assert (= (and b!5740485 (not res!2424678)) b!5740494))

(assert (= (and b!5740494 res!2424679) b!5740482))

(assert (= (and b!5740482 (not res!2424681)) b!5740484))

(assert (= (and b!5740484 (not res!2424683)) b!5740495))

(assert (= (or b!5740486 b!5740482 b!5740490) bm!438809))

(assert (=> b!5740484 m!6692434))

(assert (=> b!5740484 m!6692434))

(assert (=> b!5740484 m!6692496))

(assert (=> b!5740491 m!6692430))

(assert (=> bm!438809 m!6692426))

(assert (=> b!5740492 m!6692430))

(assert (=> b!5740492 m!6692430))

(declare-fun m!6692620 () Bool)

(assert (=> b!5740492 m!6692620))

(assert (=> b!5740492 m!6692434))

(assert (=> b!5740492 m!6692620))

(assert (=> b!5740492 m!6692434))

(declare-fun m!6692622 () Bool)

(assert (=> b!5740492 m!6692622))

(assert (=> d!1809399 m!6692426))

(assert (=> d!1809399 m!6692138))

(assert (=> b!5740493 m!6692434))

(assert (=> b!5740493 m!6692434))

(assert (=> b!5740493 m!6692496))

(declare-fun m!6692624 () Bool)

(assert (=> b!5740488 m!6692624))

(assert (=> b!5740495 m!6692430))

(assert (=> b!5739925 d!1809399))

(declare-fun d!1809401 () Bool)

(assert (=> d!1809401 (= (matchR!7935 r!7292 s!2326) (matchRSpec!2853 r!7292 s!2326))))

(declare-fun lt!2285490 () Unit!156532)

(assert (=> d!1809401 (= lt!2285490 (choose!43550 r!7292 s!2326))))

(assert (=> d!1809401 (validRegex!7486 r!7292)))

(assert (=> d!1809401 (= (mainMatchTheorem!2853 r!7292 s!2326) lt!2285490)))

(declare-fun bs!1341723 () Bool)

(assert (= bs!1341723 d!1809401))

(assert (=> bs!1341723 m!6692134))

(assert (=> bs!1341723 m!6692132))

(declare-fun m!6692626 () Bool)

(assert (=> bs!1341723 m!6692626))

(assert (=> bs!1341723 m!6692138))

(assert (=> b!5739925 d!1809401))

(declare-fun bs!1341724 () Bool)

(declare-fun d!1809403 () Bool)

(assert (= bs!1341724 (and d!1809403 d!1809305)))

(declare-fun lambda!311390 () Int)

(assert (=> bs!1341724 (= lambda!311390 lambda!311359)))

(declare-fun bs!1341725 () Bool)

(assert (= bs!1341725 (and d!1809403 d!1809311)))

(assert (=> bs!1341725 (= lambda!311390 lambda!311362)))

(declare-fun bs!1341726 () Bool)

(assert (= bs!1341726 (and d!1809403 d!1809313)))

(assert (=> bs!1341726 (= lambda!311390 lambda!311365)))

(declare-fun bs!1341727 () Bool)

(assert (= bs!1341727 (and d!1809403 d!1809395)))

(assert (=> bs!1341727 (= lambda!311390 lambda!311387)))

(assert (=> d!1809403 (= (inv!82623 (h!69874 zl!343)) (forall!14871 (exprs!5634 (h!69874 zl!343)) lambda!311390))))

(declare-fun bs!1341728 () Bool)

(assert (= bs!1341728 d!1809403))

(declare-fun m!6692628 () Bool)

(assert (=> bs!1341728 m!6692628))

(assert (=> b!5739945 d!1809403))

(declare-fun e!3528699 () Bool)

(assert (=> b!5739947 (= tp!1587253 e!3528699)))

(declare-fun b!5740530 () Bool)

(declare-fun tp!1587301 () Bool)

(assert (=> b!5740530 (= e!3528699 tp!1587301)))

(declare-fun b!5740531 () Bool)

(declare-fun tp!1587300 () Bool)

(declare-fun tp!1587298 () Bool)

(assert (=> b!5740531 (= e!3528699 (and tp!1587300 tp!1587298))))

(declare-fun b!5740528 () Bool)

(assert (=> b!5740528 (= e!3528699 tp_is_empty!40753)))

(declare-fun b!5740529 () Bool)

(declare-fun tp!1587299 () Bool)

(declare-fun tp!1587297 () Bool)

(assert (=> b!5740529 (= e!3528699 (and tp!1587299 tp!1587297))))

(assert (= (and b!5739947 (is-ElementMatch!15750 (regOne!32012 r!7292))) b!5740528))

(assert (= (and b!5739947 (is-Concat!24595 (regOne!32012 r!7292))) b!5740529))

(assert (= (and b!5739947 (is-Star!15750 (regOne!32012 r!7292))) b!5740530))

(assert (= (and b!5739947 (is-Union!15750 (regOne!32012 r!7292))) b!5740531))

(declare-fun e!3528700 () Bool)

(assert (=> b!5739947 (= tp!1587248 e!3528700)))

(declare-fun b!5740534 () Bool)

(declare-fun tp!1587306 () Bool)

(assert (=> b!5740534 (= e!3528700 tp!1587306)))

(declare-fun b!5740535 () Bool)

(declare-fun tp!1587305 () Bool)

(declare-fun tp!1587303 () Bool)

(assert (=> b!5740535 (= e!3528700 (and tp!1587305 tp!1587303))))

(declare-fun b!5740532 () Bool)

(assert (=> b!5740532 (= e!3528700 tp_is_empty!40753)))

(declare-fun b!5740533 () Bool)

(declare-fun tp!1587304 () Bool)

(declare-fun tp!1587302 () Bool)

(assert (=> b!5740533 (= e!3528700 (and tp!1587304 tp!1587302))))

(assert (= (and b!5739947 (is-ElementMatch!15750 (regTwo!32012 r!7292))) b!5740532))

(assert (= (and b!5739947 (is-Concat!24595 (regTwo!32012 r!7292))) b!5740533))

(assert (= (and b!5739947 (is-Star!15750 (regTwo!32012 r!7292))) b!5740534))

(assert (= (and b!5739947 (is-Union!15750 (regTwo!32012 r!7292))) b!5740535))

(declare-fun e!3528701 () Bool)

(assert (=> b!5739948 (= tp!1587251 e!3528701)))

(declare-fun b!5740538 () Bool)

(declare-fun tp!1587311 () Bool)

(assert (=> b!5740538 (= e!3528701 tp!1587311)))

(declare-fun b!5740539 () Bool)

(declare-fun tp!1587310 () Bool)

(declare-fun tp!1587308 () Bool)

(assert (=> b!5740539 (= e!3528701 (and tp!1587310 tp!1587308))))

(declare-fun b!5740536 () Bool)

(assert (=> b!5740536 (= e!3528701 tp_is_empty!40753)))

(declare-fun b!5740537 () Bool)

(declare-fun tp!1587309 () Bool)

(declare-fun tp!1587307 () Bool)

(assert (=> b!5740537 (= e!3528701 (and tp!1587309 tp!1587307))))

(assert (= (and b!5739948 (is-ElementMatch!15750 (reg!16079 r!7292))) b!5740536))

(assert (= (and b!5739948 (is-Concat!24595 (reg!16079 r!7292))) b!5740537))

(assert (= (and b!5739948 (is-Star!15750 (reg!16079 r!7292))) b!5740538))

(assert (= (and b!5739948 (is-Union!15750 (reg!16079 r!7292))) b!5740539))

(declare-fun e!3528702 () Bool)

(assert (=> b!5739953 (= tp!1587247 e!3528702)))

(declare-fun b!5740542 () Bool)

(declare-fun tp!1587316 () Bool)

(assert (=> b!5740542 (= e!3528702 tp!1587316)))

(declare-fun b!5740543 () Bool)

(declare-fun tp!1587315 () Bool)

(declare-fun tp!1587313 () Bool)

(assert (=> b!5740543 (= e!3528702 (and tp!1587315 tp!1587313))))

(declare-fun b!5740540 () Bool)

(assert (=> b!5740540 (= e!3528702 tp_is_empty!40753)))

(declare-fun b!5740541 () Bool)

(declare-fun tp!1587314 () Bool)

(declare-fun tp!1587312 () Bool)

(assert (=> b!5740541 (= e!3528702 (and tp!1587314 tp!1587312))))

(assert (= (and b!5739953 (is-ElementMatch!15750 (regOne!32013 r!7292))) b!5740540))

(assert (= (and b!5739953 (is-Concat!24595 (regOne!32013 r!7292))) b!5740541))

(assert (= (and b!5739953 (is-Star!15750 (regOne!32013 r!7292))) b!5740542))

(assert (= (and b!5739953 (is-Union!15750 (regOne!32013 r!7292))) b!5740543))

(declare-fun e!3528703 () Bool)

(assert (=> b!5739953 (= tp!1587252 e!3528703)))

(declare-fun b!5740546 () Bool)

(declare-fun tp!1587321 () Bool)

(assert (=> b!5740546 (= e!3528703 tp!1587321)))

(declare-fun b!5740547 () Bool)

(declare-fun tp!1587320 () Bool)

(declare-fun tp!1587318 () Bool)

(assert (=> b!5740547 (= e!3528703 (and tp!1587320 tp!1587318))))

(declare-fun b!5740544 () Bool)

(assert (=> b!5740544 (= e!3528703 tp_is_empty!40753)))

(declare-fun b!5740545 () Bool)

(declare-fun tp!1587319 () Bool)

(declare-fun tp!1587317 () Bool)

(assert (=> b!5740545 (= e!3528703 (and tp!1587319 tp!1587317))))

(assert (= (and b!5739953 (is-ElementMatch!15750 (regTwo!32013 r!7292))) b!5740544))

(assert (= (and b!5739953 (is-Concat!24595 (regTwo!32013 r!7292))) b!5740545))

(assert (= (and b!5739953 (is-Star!15750 (regTwo!32013 r!7292))) b!5740546))

(assert (= (and b!5739953 (is-Union!15750 (regTwo!32013 r!7292))) b!5740547))

(declare-fun condSetEmpty!38530 () Bool)

(assert (=> setNonEmpty!38524 (= condSetEmpty!38530 (= setRest!38524 (as set.empty (Set Context!10268))))))

(declare-fun setRes!38530 () Bool)

(assert (=> setNonEmpty!38524 (= tp!1587254 setRes!38530)))

(declare-fun setIsEmpty!38530 () Bool)

(assert (=> setIsEmpty!38530 setRes!38530))

(declare-fun e!3528708 () Bool)

(declare-fun setNonEmpty!38530 () Bool)

(declare-fun setElem!38530 () Context!10268)

(declare-fun tp!1587327 () Bool)

(assert (=> setNonEmpty!38530 (= setRes!38530 (and tp!1587327 (inv!82623 setElem!38530) e!3528708))))

(declare-fun setRest!38530 () (Set Context!10268))

(assert (=> setNonEmpty!38530 (= setRest!38524 (set.union (set.insert setElem!38530 (as set.empty (Set Context!10268))) setRest!38530))))

(declare-fun b!5740556 () Bool)

(declare-fun tp!1587326 () Bool)

(assert (=> b!5740556 (= e!3528708 tp!1587326)))

(assert (= (and setNonEmpty!38524 condSetEmpty!38530) setIsEmpty!38530))

(assert (= (and setNonEmpty!38524 (not condSetEmpty!38530)) setNonEmpty!38530))

(assert (= setNonEmpty!38530 b!5740556))

(declare-fun m!6692630 () Bool)

(assert (=> setNonEmpty!38530 m!6692630))

(declare-fun b!5740563 () Bool)

(declare-fun e!3528711 () Bool)

(declare-fun tp!1587330 () Bool)

(assert (=> b!5740563 (= e!3528711 (and tp_is_empty!40753 tp!1587330))))

(assert (=> b!5739955 (= tp!1587250 e!3528711)))

(assert (= (and b!5739955 (is-Cons!63427 (t!376879 s!2326))) b!5740563))

(declare-fun b!5740568 () Bool)

(declare-fun e!3528714 () Bool)

(declare-fun tp!1587335 () Bool)

(declare-fun tp!1587336 () Bool)

(assert (=> b!5740568 (= e!3528714 (and tp!1587335 tp!1587336))))

(assert (=> b!5739941 (= tp!1587249 e!3528714)))

(assert (= (and b!5739941 (is-Cons!63425 (exprs!5634 setElem!38524))) b!5740568))

(declare-fun b!5740569 () Bool)

(declare-fun e!3528715 () Bool)

(declare-fun tp!1587337 () Bool)

(declare-fun tp!1587338 () Bool)

(assert (=> b!5740569 (= e!3528715 (and tp!1587337 tp!1587338))))

(assert (=> b!5739926 (= tp!1587256 e!3528715)))

(assert (= (and b!5739926 (is-Cons!63425 (exprs!5634 (h!69874 zl!343)))) b!5740569))

(declare-fun b!5740577 () Bool)

(declare-fun e!3528721 () Bool)

(declare-fun tp!1587343 () Bool)

(assert (=> b!5740577 (= e!3528721 tp!1587343)))

(declare-fun tp!1587344 () Bool)

(declare-fun e!3528720 () Bool)

(declare-fun b!5740576 () Bool)

(assert (=> b!5740576 (= e!3528720 (and (inv!82623 (h!69874 (t!376878 zl!343))) e!3528721 tp!1587344))))

(assert (=> b!5739945 (= tp!1587255 e!3528720)))

(assert (= b!5740576 b!5740577))

(assert (= (and b!5739945 (is-Cons!63426 (t!376878 zl!343))) b!5740576))

(declare-fun m!6692632 () Bool)

(assert (=> b!5740576 m!6692632))

(declare-fun b_lambda!216737 () Bool)

(assert (= b_lambda!216735 (or b!5739944 b_lambda!216737)))

(declare-fun bs!1341729 () Bool)

(declare-fun d!1809405 () Bool)

(assert (= bs!1341729 (and d!1809405 b!5739944)))

(assert (=> bs!1341729 (= (dynLambda!24821 lambda!311334 (h!69874 zl!343)) (derivationStepZipperUp!1018 (h!69874 zl!343) (h!69875 s!2326)))))

(assert (=> bs!1341729 m!6692166))

(assert (=> d!1809383 d!1809405))

(declare-fun b_lambda!216739 () Bool)

(assert (= b_lambda!216733 (or b!5739944 b_lambda!216739)))

(declare-fun bs!1341730 () Bool)

(declare-fun d!1809407 () Bool)

(assert (= bs!1341730 (and d!1809407 b!5739944)))

(assert (=> bs!1341730 (= (dynLambda!24821 lambda!311334 lt!2285326) (derivationStepZipperUp!1018 lt!2285326 (h!69875 s!2326)))))

(assert (=> bs!1341730 m!6692108))

(assert (=> d!1809365 d!1809407))

(declare-fun b_lambda!216741 () Bool)

(assert (= b_lambda!216729 (or b!5739944 b_lambda!216741)))

(declare-fun bs!1341731 () Bool)

(declare-fun d!1809409 () Bool)

(assert (= bs!1341731 (and d!1809409 b!5739944)))

(assert (=> bs!1341731 (= (dynLambda!24821 lambda!311334 lt!2285318) (derivationStepZipperUp!1018 lt!2285318 (h!69875 s!2326)))))

(assert (=> bs!1341731 m!6692096))

(assert (=> d!1809323 d!1809409))

(declare-fun b_lambda!216743 () Bool)

(assert (= b_lambda!216731 (or b!5739944 b_lambda!216743)))

(declare-fun bs!1341732 () Bool)

(declare-fun d!1809411 () Bool)

(assert (= bs!1341732 (and d!1809411 b!5739944)))

(assert (=> bs!1341732 (= (dynLambda!24821 lambda!311334 lt!2285305) (derivationStepZipperUp!1018 lt!2285305 (h!69875 s!2326)))))

(assert (=> bs!1341732 m!6692112))

(assert (=> d!1809359 d!1809411))

(declare-fun b_lambda!216745 () Bool)

(assert (= b_lambda!216727 (or b!5739944 b_lambda!216745)))

(declare-fun bs!1341733 () Bool)

(declare-fun d!1809413 () Bool)

(assert (= bs!1341733 (and d!1809413 b!5739944)))

(assert (=> bs!1341733 (= (dynLambda!24821 lambda!311334 lt!2285314) (derivationStepZipperUp!1018 lt!2285314 (h!69875 s!2326)))))

(assert (=> bs!1341733 m!6692130))

(assert (=> d!1809303 d!1809413))

(push 1)

(assert (not bm!438800))

(assert (not d!1809341))

(assert (not b!5740429))

(assert (not b!5740491))

(assert (not b!5740393))

(assert (not d!1809339))

(assert (not bs!1341729))

(assert (not b!5740309))

(assert (not bm!438804))

(assert (not b!5740109))

(assert (not b!5740316))

(assert (not d!1809361))

(assert (not b!5740422))

(assert (not b!5740545))

(assert (not b!5740154))

(assert (not bm!438773))

(assert (not b!5740569))

(assert (not bs!1341731))

(assert (not bm!438799))

(assert (not b!5740216))

(assert (not d!1809395))

(assert (not bm!438796))

(assert (not b!5740190))

(assert (not b!5740530))

(assert (not b!5740495))

(assert (not b!5740108))

(assert (not d!1809313))

(assert (not b!5740493))

(assert (not d!1809327))

(assert (not bm!438801))

(assert (not d!1809383))

(assert (not setNonEmpty!38530))

(assert (not b!5740539))

(assert (not bm!438805))

(assert (not d!1809375))

(assert (not b!5740568))

(assert (not d!1809337))

(assert (not b!5740150))

(assert (not b!5740488))

(assert (not d!1809305))

(assert (not b!5740447))

(assert (not b!5740546))

(assert (not d!1809359))

(assert (not d!1809319))

(assert (not d!1809399))

(assert (not b!5740235))

(assert (not b!5740453))

(assert (not d!1809393))

(assert (not b!5740458))

(assert (not b!5740467))

(assert (not b!5740147))

(assert (not b!5740255))

(assert (not b_lambda!216741))

(assert (not bm!438784))

(assert (not b!5740535))

(assert (not b!5740156))

(assert (not bs!1341730))

(assert (not b!5740258))

(assert (not b!5740213))

(assert (not bm!438797))

(assert (not b!5740212))

(assert (not d!1809325))

(assert (not bm!438788))

(assert (not b!5740359))

(assert (not d!1809347))

(assert (not b!5740261))

(assert (not d!1809295))

(assert (not d!1809331))

(assert (not b!5740233))

(assert (not b!5740262))

(assert (not d!1809329))

(assert (not d!1809323))

(assert (not d!1809311))

(assert (not d!1809365))

(assert (not b!5740363))

(assert (not b_lambda!216743))

(assert (not d!1809377))

(assert (not b!5740563))

(assert (not d!1809367))

(assert (not bm!438772))

(assert (not d!1809371))

(assert (not bm!438807))

(assert (not b!5740449))

(assert (not d!1809385))

(assert (not b!5740263))

(assert (not b!5740186))

(assert (not d!1809357))

(assert (not b!5740492))

(assert (not b!5740125))

(assert (not d!1809299))

(assert (not d!1809303))

(assert (not b!5740398))

(assert (not b!5740547))

(assert tp_is_empty!40753)

(assert (not d!1809317))

(assert (not b!5740260))

(assert (not b!5740456))

(assert (not d!1809315))

(assert (not b!5740534))

(assert (not bs!1341733))

(assert (not b!5740448))

(assert (not b!5740215))

(assert (not bm!438778))

(assert (not b!5740191))

(assert (not b!5740278))

(assert (not d!1809335))

(assert (not b!5740217))

(assert (not b!5740481))

(assert (not bm!438808))

(assert (not b!5740541))

(assert (not b!5740484))

(assert (not b!5740313))

(assert (not d!1809333))

(assert (not b!5740320))

(assert (not b!5740226))

(assert (not b!5740395))

(assert (not b!5740153))

(assert (not d!1809297))

(assert (not b!5740577))

(assert (not bs!1341732))

(assert (not d!1809403))

(assert (not b!5740219))

(assert (not b!5740531))

(assert (not bm!438783))

(assert (not bm!438809))

(assert (not b!5740477))

(assert (not b_lambda!216745))

(assert (not bm!438775))

(assert (not b!5740123))

(assert (not b!5740533))

(assert (not b!5740317))

(assert (not d!1809355))

(assert (not b!5740529))

(assert (not bm!438756))

(assert (not b!5740220))

(assert (not d!1809401))

(assert (not b!5740148))

(assert (not b!5740543))

(assert (not d!1809381))

(assert (not b!5740236))

(assert (not d!1809309))

(assert (not b!5740451))

(assert (not d!1809343))

(assert (not b!5740234))

(assert (not b!5740537))

(assert (not b!5740556))

(assert (not b!5740231))

(assert (not b!5740400))

(assert (not b!5740576))

(assert (not b_lambda!216739))

(assert (not bm!438769))

(assert (not b_lambda!216737))

(assert (not b!5740229))

(assert (not bm!438785))

(assert (not b!5740430))

(assert (not b!5740542))

(assert (not d!1809345))

(assert (not b!5740538))

(assert (not b!5740152))

(assert (not b!5740318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


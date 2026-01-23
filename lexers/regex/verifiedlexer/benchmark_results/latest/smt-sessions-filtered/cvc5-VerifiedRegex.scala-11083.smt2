; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573684 () Bool)

(assert start!573684)

(declare-fun b!5486871 () Bool)

(assert (=> b!5486871 true))

(declare-fun b!5486865 () Bool)

(assert (=> b!5486865 true))

(declare-fun bs!1267039 () Bool)

(declare-fun b!5486880 () Bool)

(assert (= bs!1267039 (and b!5486880 b!5486871)))

(declare-fun lambda!293378 () Int)

(declare-fun lambda!293376 () Int)

(assert (=> bs!1267039 (not (= lambda!293378 lambda!293376))))

(declare-fun b!5486863 () Bool)

(declare-fun res!2339848 () Bool)

(declare-fun e!3395283 () Bool)

(assert (=> b!5486863 (=> res!2339848 e!3395283)))

(declare-datatypes ((C!31094 0))(
  ( (C!31095 (val!25249 Int)) )
))
(declare-datatypes ((Regex!15412 0))(
  ( (ElementMatch!15412 (c!958444 C!31094)) (Concat!24257 (regOne!31336 Regex!15412) (regTwo!31336 Regex!15412)) (EmptyExpr!15412) (Star!15412 (reg!15741 Regex!15412)) (EmptyLang!15412) (Union!15412 (regOne!31337 Regex!15412) (regTwo!31337 Regex!15412)) )
))
(declare-fun lt!2241065 () Regex!15412)

(declare-datatypes ((List!62535 0))(
  ( (Nil!62411) (Cons!62411 (h!68859 C!31094) (t!375766 List!62535)) )
))
(declare-fun s!2326 () List!62535)

(declare-fun matchR!7597 (Regex!15412 List!62535) Bool)

(assert (=> b!5486863 (= res!2339848 (not (matchR!7597 lt!2241065 s!2326)))))

(declare-fun res!2339846 () Bool)

(declare-fun e!3395291 () Bool)

(assert (=> start!573684 (=> (not res!2339846) (not e!3395291))))

(declare-fun r!7292 () Regex!15412)

(declare-fun validRegex!7148 (Regex!15412) Bool)

(assert (=> start!573684 (= res!2339846 (validRegex!7148 r!7292))))

(assert (=> start!573684 e!3395291))

(declare-fun e!3395293 () Bool)

(assert (=> start!573684 e!3395293))

(declare-fun e!3395292 () Bool)

(assert (=> start!573684 e!3395292))

(declare-fun condSetEmpty!36198 () Bool)

(declare-datatypes ((List!62536 0))(
  ( (Nil!62412) (Cons!62412 (h!68860 Regex!15412) (t!375767 List!62536)) )
))
(declare-datatypes ((Context!9592 0))(
  ( (Context!9593 (exprs!5296 List!62536)) )
))
(declare-fun z!1189 () (Set Context!9592))

(assert (=> start!573684 (= condSetEmpty!36198 (= z!1189 (as set.empty (Set Context!9592))))))

(declare-fun setRes!36198 () Bool)

(assert (=> start!573684 setRes!36198))

(declare-fun e!3395285 () Bool)

(assert (=> start!573684 e!3395285))

(declare-fun cc!2 () Context!9592)

(declare-fun e!3395287 () Bool)

(declare-fun inv!81778 (Context!9592) Bool)

(assert (=> start!573684 (and (inv!81778 cc!2) e!3395287)))

(declare-fun setElem!36198 () Context!9592)

(declare-fun setNonEmpty!36198 () Bool)

(declare-fun e!3395289 () Bool)

(declare-fun tp!1508044 () Bool)

(assert (=> setNonEmpty!36198 (= setRes!36198 (and tp!1508044 (inv!81778 setElem!36198) e!3395289))))

(declare-fun setRest!36198 () (Set Context!9592))

(assert (=> setNonEmpty!36198 (= z!1189 (set.union (set.insert setElem!36198 (as set.empty (Set Context!9592))) setRest!36198))))

(declare-fun b!5486864 () Bool)

(declare-fun res!2339842 () Bool)

(assert (=> b!5486864 (=> res!2339842 e!3395283)))

(assert (=> b!5486864 (= res!2339842 (not (validRegex!7148 lt!2241065)))))

(declare-fun e!3395294 () Bool)

(assert (=> b!5486865 (= e!3395283 e!3395294)))

(declare-fun res!2339849 () Bool)

(assert (=> b!5486865 (=> res!2339849 e!3395294)))

(declare-datatypes ((List!62537 0))(
  ( (Nil!62413) (Cons!62413 (h!68861 Context!9592) (t!375768 List!62537)) )
))
(declare-fun zl!343 () List!62537)

(declare-fun lambda!293377 () Int)

(declare-fun exists!2046 (List!62537 Int) Bool)

(assert (=> b!5486865 (= res!2339849 (not (exists!2046 zl!343 lambda!293377)))))

(assert (=> b!5486865 (exists!2046 zl!343 lambda!293377)))

(declare-datatypes ((Unit!155279 0))(
  ( (Unit!155280) )
))
(declare-fun lt!2241062 () Unit!155279)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!3 (List!62537 Regex!15412) Unit!155279)

(assert (=> b!5486865 (= lt!2241062 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!3 zl!343 lt!2241065))))

(declare-fun b!5486866 () Bool)

(declare-fun res!2339844 () Bool)

(assert (=> b!5486866 (=> (not res!2339844) (not e!3395291))))

(declare-fun unfocusZipper!1154 (List!62537) Regex!15412)

(assert (=> b!5486866 (= res!2339844 (= r!7292 (unfocusZipper!1154 zl!343)))))

(declare-fun e!3395286 () Bool)

(declare-fun b!5486867 () Bool)

(declare-fun tp!1508041 () Bool)

(assert (=> b!5486867 (= e!3395285 (and (inv!81778 (h!68861 zl!343)) e!3395286 tp!1508041))))

(declare-fun b!5486868 () Bool)

(declare-fun tp!1508038 () Bool)

(assert (=> b!5486868 (= e!3395286 tp!1508038)))

(declare-fun b!5486869 () Bool)

(declare-fun tp_is_empty!40077 () Bool)

(assert (=> b!5486869 (= e!3395293 tp_is_empty!40077)))

(declare-fun b!5486870 () Bool)

(declare-fun tp!1508040 () Bool)

(declare-fun tp!1508039 () Bool)

(assert (=> b!5486870 (= e!3395293 (and tp!1508040 tp!1508039))))

(declare-fun e!3395284 () Bool)

(declare-fun e!3395288 () Bool)

(assert (=> b!5486871 (= e!3395284 e!3395288)))

(declare-fun res!2339839 () Bool)

(assert (=> b!5486871 (=> res!2339839 e!3395288)))

(declare-fun lt!2241064 () Bool)

(assert (=> b!5486871 (= res!2339839 (not lt!2241064))))

(declare-fun lt!2241066 () List!62536)

(declare-fun exists!2047 (List!62536 Int) Bool)

(assert (=> b!5486871 (= lt!2241064 (exists!2047 lt!2241066 lambda!293376))))

(declare-fun lt!2241067 () Unit!155279)

(declare-fun matchRGenUnionSpec!245 (Regex!15412 List!62536 List!62535) Unit!155279)

(assert (=> b!5486871 (= lt!2241067 (matchRGenUnionSpec!245 r!7292 lt!2241066 s!2326))))

(declare-fun unfocusZipperList!844 (List!62537) List!62536)

(assert (=> b!5486871 (= lt!2241066 (unfocusZipperList!844 zl!343))))

(declare-fun b!5486872 () Bool)

(declare-fun tp!1508046 () Bool)

(assert (=> b!5486872 (= e!3395292 (and tp_is_empty!40077 tp!1508046))))

(declare-fun setIsEmpty!36198 () Bool)

(assert (=> setIsEmpty!36198 setRes!36198))

(declare-fun b!5486873 () Bool)

(declare-fun res!2339840 () Bool)

(assert (=> b!5486873 (=> res!2339840 e!3395284)))

(assert (=> b!5486873 (= res!2339840 (or (not (is-Cons!62413 zl!343)) (is-Nil!62411 s!2326) (not (= zl!343 (Cons!62413 (h!68861 zl!343) (t!375768 zl!343))))))))

(declare-fun b!5486874 () Bool)

(declare-fun tp!1508043 () Bool)

(assert (=> b!5486874 (= e!3395289 tp!1508043)))

(declare-fun b!5486875 () Bool)

(declare-fun e!3395290 () Bool)

(declare-fun isEmpty!34300 (List!62537) Bool)

(assert (=> b!5486875 (= e!3395290 (isEmpty!34300 (t!375768 zl!343)))))

(declare-fun b!5486876 () Bool)

(declare-fun tp!1508037 () Bool)

(assert (=> b!5486876 (= e!3395287 tp!1508037)))

(declare-fun b!5486877 () Bool)

(declare-fun res!2339850 () Bool)

(assert (=> b!5486877 (=> res!2339850 e!3395284)))

(assert (=> b!5486877 (= res!2339850 (isEmpty!34300 (t!375768 zl!343)))))

(declare-fun b!5486878 () Bool)

(declare-fun tp!1508042 () Bool)

(assert (=> b!5486878 (= e!3395293 tp!1508042)))

(declare-fun b!5486879 () Bool)

(assert (=> b!5486879 (= e!3395288 e!3395283)))

(declare-fun res!2339843 () Bool)

(assert (=> b!5486879 (=> res!2339843 e!3395283)))

(declare-fun contains!19734 (List!62536 Regex!15412) Bool)

(assert (=> b!5486879 (= res!2339843 (not (contains!19734 lt!2241066 lt!2241065)))))

(declare-fun getWitness!867 (List!62536 Int) Regex!15412)

(assert (=> b!5486879 (= lt!2241065 (getWitness!867 lt!2241066 lambda!293376))))

(declare-fun forall!14629 (List!62536 Int) Bool)

(assert (=> b!5486880 (= e!3395294 (forall!14629 (exprs!5296 cc!2) lambda!293378))))

(declare-fun b!5486881 () Bool)

(declare-fun tp!1508045 () Bool)

(declare-fun tp!1508036 () Bool)

(assert (=> b!5486881 (= e!3395293 (and tp!1508045 tp!1508036))))

(declare-fun b!5486882 () Bool)

(assert (=> b!5486882 (= e!3395291 (not e!3395284))))

(declare-fun res!2339851 () Bool)

(assert (=> b!5486882 (=> res!2339851 e!3395284)))

(assert (=> b!5486882 (= res!2339851 e!3395290)))

(declare-fun res!2339847 () Bool)

(assert (=> b!5486882 (=> (not res!2339847) (not e!3395290))))

(assert (=> b!5486882 (= res!2339847 (is-Cons!62413 zl!343))))

(declare-fun matchRSpec!2515 (Regex!15412 List!62535) Bool)

(assert (=> b!5486882 (= lt!2241064 (matchRSpec!2515 r!7292 s!2326))))

(assert (=> b!5486882 (= lt!2241064 (matchR!7597 r!7292 s!2326))))

(declare-fun lt!2241063 () Unit!155279)

(declare-fun mainMatchTheorem!2515 (Regex!15412 List!62535) Unit!155279)

(assert (=> b!5486882 (= lt!2241063 (mainMatchTheorem!2515 r!7292 s!2326))))

(declare-fun b!5486883 () Bool)

(declare-fun res!2339845 () Bool)

(assert (=> b!5486883 (=> (not res!2339845) (not e!3395291))))

(declare-fun toList!9196 ((Set Context!9592)) List!62537)

(assert (=> b!5486883 (= res!2339845 (= (toList!9196 z!1189) zl!343))))

(declare-fun b!5486884 () Bool)

(declare-fun res!2339841 () Bool)

(assert (=> b!5486884 (=> res!2339841 e!3395288)))

(assert (=> b!5486884 (= res!2339841 (not (exists!2047 lt!2241066 lambda!293376)))))

(assert (= (and start!573684 res!2339846) b!5486883))

(assert (= (and b!5486883 res!2339845) b!5486866))

(assert (= (and b!5486866 res!2339844) b!5486882))

(assert (= (and b!5486882 res!2339847) b!5486875))

(assert (= (and b!5486882 (not res!2339851)) b!5486873))

(assert (= (and b!5486873 (not res!2339840)) b!5486877))

(assert (= (and b!5486877 (not res!2339850)) b!5486871))

(assert (= (and b!5486871 (not res!2339839)) b!5486884))

(assert (= (and b!5486884 (not res!2339841)) b!5486879))

(assert (= (and b!5486879 (not res!2339843)) b!5486864))

(assert (= (and b!5486864 (not res!2339842)) b!5486863))

(assert (= (and b!5486863 (not res!2339848)) b!5486865))

(assert (= (and b!5486865 (not res!2339849)) b!5486880))

(assert (= (and start!573684 (is-ElementMatch!15412 r!7292)) b!5486869))

(assert (= (and start!573684 (is-Concat!24257 r!7292)) b!5486881))

(assert (= (and start!573684 (is-Star!15412 r!7292)) b!5486878))

(assert (= (and start!573684 (is-Union!15412 r!7292)) b!5486870))

(assert (= (and start!573684 (is-Cons!62411 s!2326)) b!5486872))

(assert (= (and start!573684 condSetEmpty!36198) setIsEmpty!36198))

(assert (= (and start!573684 (not condSetEmpty!36198)) setNonEmpty!36198))

(assert (= setNonEmpty!36198 b!5486874))

(assert (= b!5486867 b!5486868))

(assert (= (and start!573684 (is-Cons!62413 zl!343)) b!5486867))

(assert (= start!573684 b!5486876))

(declare-fun m!6501392 () Bool)

(assert (=> b!5486877 m!6501392))

(declare-fun m!6501394 () Bool)

(assert (=> b!5486871 m!6501394))

(declare-fun m!6501396 () Bool)

(assert (=> b!5486871 m!6501396))

(declare-fun m!6501398 () Bool)

(assert (=> b!5486871 m!6501398))

(declare-fun m!6501400 () Bool)

(assert (=> b!5486863 m!6501400))

(declare-fun m!6501402 () Bool)

(assert (=> start!573684 m!6501402))

(declare-fun m!6501404 () Bool)

(assert (=> start!573684 m!6501404))

(declare-fun m!6501406 () Bool)

(assert (=> b!5486866 m!6501406))

(declare-fun m!6501408 () Bool)

(assert (=> b!5486882 m!6501408))

(declare-fun m!6501410 () Bool)

(assert (=> b!5486882 m!6501410))

(declare-fun m!6501412 () Bool)

(assert (=> b!5486882 m!6501412))

(declare-fun m!6501414 () Bool)

(assert (=> b!5486880 m!6501414))

(declare-fun m!6501416 () Bool)

(assert (=> b!5486867 m!6501416))

(declare-fun m!6501418 () Bool)

(assert (=> b!5486883 m!6501418))

(assert (=> b!5486884 m!6501394))

(declare-fun m!6501420 () Bool)

(assert (=> b!5486864 m!6501420))

(declare-fun m!6501422 () Bool)

(assert (=> setNonEmpty!36198 m!6501422))

(declare-fun m!6501424 () Bool)

(assert (=> b!5486879 m!6501424))

(declare-fun m!6501426 () Bool)

(assert (=> b!5486879 m!6501426))

(declare-fun m!6501428 () Bool)

(assert (=> b!5486865 m!6501428))

(assert (=> b!5486865 m!6501428))

(declare-fun m!6501430 () Bool)

(assert (=> b!5486865 m!6501430))

(assert (=> b!5486875 m!6501392))

(push 1)

(assert (not b!5486878))

(assert (not b!5486877))

(assert (not b!5486871))

(assert (not b!5486883))

(assert (not b!5486882))

(assert (not b!5486867))

(assert (not setNonEmpty!36198))

(assert (not b!5486870))

(assert (not start!573684))

(assert (not b!5486880))

(assert (not b!5486868))

(assert (not b!5486872))

(assert (not b!5486875))

(assert (not b!5486881))

(assert (not b!5486884))

(assert tp_is_empty!40077)

(assert (not b!5486866))

(assert (not b!5486865))

(assert (not b!5486879))

(assert (not b!5486876))

(assert (not b!5486864))

(assert (not b!5486874))

(assert (not b!5486863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1741602 () Bool)

(declare-fun lt!2241088 () Regex!15412)

(assert (=> d!1741602 (validRegex!7148 lt!2241088)))

(declare-fun generalisedUnion!1318 (List!62536) Regex!15412)

(assert (=> d!1741602 (= lt!2241088 (generalisedUnion!1318 (unfocusZipperList!844 zl!343)))))

(assert (=> d!1741602 (= (unfocusZipper!1154 zl!343) lt!2241088)))

(declare-fun bs!1267041 () Bool)

(assert (= bs!1267041 d!1741602))

(declare-fun m!6501472 () Bool)

(assert (=> bs!1267041 m!6501472))

(assert (=> bs!1267041 m!6501398))

(assert (=> bs!1267041 m!6501398))

(declare-fun m!6501474 () Bool)

(assert (=> bs!1267041 m!6501474))

(assert (=> b!5486866 d!1741602))

(declare-fun bs!1267042 () Bool)

(declare-fun d!1741604 () Bool)

(assert (= bs!1267042 (and d!1741604 b!5486865)))

(declare-fun lambda!293396 () Int)

(assert (=> bs!1267042 (not (= lambda!293396 lambda!293377))))

(assert (=> d!1741604 true))

(declare-fun order!27107 () Int)

(declare-fun dynLambda!24451 (Int Int) Int)

(assert (=> d!1741604 (< (dynLambda!24451 order!27107 lambda!293377) (dynLambda!24451 order!27107 lambda!293396))))

(declare-fun forall!14631 (List!62537 Int) Bool)

(assert (=> d!1741604 (= (exists!2046 zl!343 lambda!293377) (not (forall!14631 zl!343 lambda!293396)))))

(declare-fun bs!1267043 () Bool)

(assert (= bs!1267043 d!1741604))

(declare-fun m!6501476 () Bool)

(assert (=> bs!1267043 m!6501476))

(assert (=> b!5486865 d!1741604))

(declare-fun bs!1267044 () Bool)

(declare-fun d!1741606 () Bool)

(assert (= bs!1267044 (and d!1741606 b!5486865)))

(declare-fun lambda!293399 () Int)

(assert (=> bs!1267044 (= lambda!293399 lambda!293377)))

(declare-fun bs!1267045 () Bool)

(assert (= bs!1267045 (and d!1741606 d!1741604)))

(assert (=> bs!1267045 (not (= lambda!293399 lambda!293396))))

(assert (=> d!1741606 true))

(assert (=> d!1741606 (exists!2046 zl!343 lambda!293399)))

(declare-fun lt!2241091 () Unit!155279)

(declare-fun choose!41751 (List!62537 Regex!15412) Unit!155279)

(assert (=> d!1741606 (= lt!2241091 (choose!41751 zl!343 lt!2241065))))

(assert (=> d!1741606 (contains!19734 (unfocusZipperList!844 zl!343) lt!2241065)))

(assert (=> d!1741606 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!3 zl!343 lt!2241065) lt!2241091)))

(declare-fun bs!1267046 () Bool)

(assert (= bs!1267046 d!1741606))

(declare-fun m!6501478 () Bool)

(assert (=> bs!1267046 m!6501478))

(declare-fun m!6501480 () Bool)

(assert (=> bs!1267046 m!6501480))

(assert (=> bs!1267046 m!6501398))

(assert (=> bs!1267046 m!6501398))

(declare-fun m!6501482 () Bool)

(assert (=> bs!1267046 m!6501482))

(assert (=> b!5486865 d!1741606))

(declare-fun d!1741608 () Bool)

(assert (=> d!1741608 (= (isEmpty!34300 (t!375768 zl!343)) (is-Nil!62413 (t!375768 zl!343)))))

(assert (=> b!5486875 d!1741608))

(declare-fun bs!1267047 () Bool)

(declare-fun d!1741610 () Bool)

(assert (= bs!1267047 (and d!1741610 b!5486871)))

(declare-fun lambda!293402 () Int)

(assert (=> bs!1267047 (not (= lambda!293402 lambda!293376))))

(declare-fun bs!1267048 () Bool)

(assert (= bs!1267048 (and d!1741610 b!5486880)))

(assert (=> bs!1267048 (not (= lambda!293402 lambda!293378))))

(assert (=> d!1741610 true))

(declare-fun order!27109 () Int)

(declare-fun dynLambda!24452 (Int Int) Int)

(assert (=> d!1741610 (< (dynLambda!24452 order!27109 lambda!293376) (dynLambda!24452 order!27109 lambda!293402))))

(assert (=> d!1741610 (= (exists!2047 lt!2241066 lambda!293376) (not (forall!14629 lt!2241066 lambda!293402)))))

(declare-fun bs!1267049 () Bool)

(assert (= bs!1267049 d!1741610))

(declare-fun m!6501484 () Bool)

(assert (=> bs!1267049 m!6501484))

(assert (=> b!5486884 d!1741610))

(declare-fun d!1741612 () Bool)

(declare-fun res!2339910 () Bool)

(declare-fun e!3395355 () Bool)

(assert (=> d!1741612 (=> res!2339910 e!3395355)))

(assert (=> d!1741612 (= res!2339910 (is-ElementMatch!15412 lt!2241065))))

(assert (=> d!1741612 (= (validRegex!7148 lt!2241065) e!3395355)))

(declare-fun b!5486987 () Bool)

(declare-fun e!3395351 () Bool)

(declare-fun call!404746 () Bool)

(assert (=> b!5486987 (= e!3395351 call!404746)))

(declare-fun bm!404739 () Bool)

(declare-fun call!404744 () Bool)

(assert (=> bm!404739 (= call!404744 call!404746)))

(declare-fun bm!404740 () Bool)

(declare-fun c!958454 () Bool)

(declare-fun c!958455 () Bool)

(assert (=> bm!404740 (= call!404746 (validRegex!7148 (ite c!958455 (reg!15741 lt!2241065) (ite c!958454 (regOne!31337 lt!2241065) (regOne!31336 lt!2241065)))))))

(declare-fun b!5486988 () Bool)

(declare-fun e!3395353 () Bool)

(declare-fun e!3395352 () Bool)

(assert (=> b!5486988 (= e!3395353 e!3395352)))

(assert (=> b!5486988 (= c!958454 (is-Union!15412 lt!2241065))))

(declare-fun b!5486989 () Bool)

(declare-fun e!3395354 () Bool)

(declare-fun call!404745 () Bool)

(assert (=> b!5486989 (= e!3395354 call!404745)))

(declare-fun b!5486990 () Bool)

(assert (=> b!5486990 (= e!3395355 e!3395353)))

(assert (=> b!5486990 (= c!958455 (is-Star!15412 lt!2241065))))

(declare-fun b!5486991 () Bool)

(declare-fun res!2339911 () Bool)

(declare-fun e!3395357 () Bool)

(assert (=> b!5486991 (=> res!2339911 e!3395357)))

(assert (=> b!5486991 (= res!2339911 (not (is-Concat!24257 lt!2241065)))))

(assert (=> b!5486991 (= e!3395352 e!3395357)))

(declare-fun b!5486992 () Bool)

(assert (=> b!5486992 (= e!3395357 e!3395354)))

(declare-fun res!2339908 () Bool)

(assert (=> b!5486992 (=> (not res!2339908) (not e!3395354))))

(assert (=> b!5486992 (= res!2339908 call!404744)))

(declare-fun b!5486993 () Bool)

(assert (=> b!5486993 (= e!3395353 e!3395351)))

(declare-fun res!2339909 () Bool)

(declare-fun nullable!5497 (Regex!15412) Bool)

(assert (=> b!5486993 (= res!2339909 (not (nullable!5497 (reg!15741 lt!2241065))))))

(assert (=> b!5486993 (=> (not res!2339909) (not e!3395351))))

(declare-fun b!5486994 () Bool)

(declare-fun e!3395356 () Bool)

(assert (=> b!5486994 (= e!3395356 call!404745)))

(declare-fun bm!404741 () Bool)

(assert (=> bm!404741 (= call!404745 (validRegex!7148 (ite c!958454 (regTwo!31337 lt!2241065) (regTwo!31336 lt!2241065))))))

(declare-fun b!5486995 () Bool)

(declare-fun res!2339907 () Bool)

(assert (=> b!5486995 (=> (not res!2339907) (not e!3395356))))

(assert (=> b!5486995 (= res!2339907 call!404744)))

(assert (=> b!5486995 (= e!3395352 e!3395356)))

(assert (= (and d!1741612 (not res!2339910)) b!5486990))

(assert (= (and b!5486990 c!958455) b!5486993))

(assert (= (and b!5486990 (not c!958455)) b!5486988))

(assert (= (and b!5486993 res!2339909) b!5486987))

(assert (= (and b!5486988 c!958454) b!5486995))

(assert (= (and b!5486988 (not c!958454)) b!5486991))

(assert (= (and b!5486995 res!2339907) b!5486994))

(assert (= (and b!5486991 (not res!2339911)) b!5486992))

(assert (= (and b!5486992 res!2339908) b!5486989))

(assert (= (or b!5486994 b!5486989) bm!404741))

(assert (= (or b!5486995 b!5486992) bm!404739))

(assert (= (or b!5486987 bm!404739) bm!404740))

(declare-fun m!6501486 () Bool)

(assert (=> bm!404740 m!6501486))

(declare-fun m!6501488 () Bool)

(assert (=> b!5486993 m!6501488))

(declare-fun m!6501490 () Bool)

(assert (=> bm!404741 m!6501490))

(assert (=> b!5486864 d!1741612))

(declare-fun bs!1267050 () Bool)

(declare-fun d!1741614 () Bool)

(assert (= bs!1267050 (and d!1741614 b!5486871)))

(declare-fun lambda!293405 () Int)

(assert (=> bs!1267050 (not (= lambda!293405 lambda!293376))))

(declare-fun bs!1267051 () Bool)

(assert (= bs!1267051 (and d!1741614 b!5486880)))

(assert (=> bs!1267051 (= lambda!293405 lambda!293378)))

(declare-fun bs!1267052 () Bool)

(assert (= bs!1267052 (and d!1741614 d!1741610)))

(assert (=> bs!1267052 (not (= lambda!293405 lambda!293402))))

(assert (=> d!1741614 (= (inv!81778 setElem!36198) (forall!14629 (exprs!5296 setElem!36198) lambda!293405))))

(declare-fun bs!1267053 () Bool)

(assert (= bs!1267053 d!1741614))

(declare-fun m!6501492 () Bool)

(assert (=> bs!1267053 m!6501492))

(assert (=> setNonEmpty!36198 d!1741614))

(declare-fun d!1741618 () Bool)

(declare-fun res!2339915 () Bool)

(declare-fun e!3395362 () Bool)

(assert (=> d!1741618 (=> res!2339915 e!3395362)))

(assert (=> d!1741618 (= res!2339915 (is-ElementMatch!15412 r!7292))))

(assert (=> d!1741618 (= (validRegex!7148 r!7292) e!3395362)))

(declare-fun b!5486996 () Bool)

(declare-fun e!3395358 () Bool)

(declare-fun call!404749 () Bool)

(assert (=> b!5486996 (= e!3395358 call!404749)))

(declare-fun bm!404742 () Bool)

(declare-fun call!404747 () Bool)

(assert (=> bm!404742 (= call!404747 call!404749)))

(declare-fun c!958457 () Bool)

(declare-fun bm!404743 () Bool)

(declare-fun c!958456 () Bool)

(assert (=> bm!404743 (= call!404749 (validRegex!7148 (ite c!958457 (reg!15741 r!7292) (ite c!958456 (regOne!31337 r!7292) (regOne!31336 r!7292)))))))

(declare-fun b!5486997 () Bool)

(declare-fun e!3395360 () Bool)

(declare-fun e!3395359 () Bool)

(assert (=> b!5486997 (= e!3395360 e!3395359)))

(assert (=> b!5486997 (= c!958456 (is-Union!15412 r!7292))))

(declare-fun b!5486998 () Bool)

(declare-fun e!3395361 () Bool)

(declare-fun call!404748 () Bool)

(assert (=> b!5486998 (= e!3395361 call!404748)))

(declare-fun b!5486999 () Bool)

(assert (=> b!5486999 (= e!3395362 e!3395360)))

(assert (=> b!5486999 (= c!958457 (is-Star!15412 r!7292))))

(declare-fun b!5487000 () Bool)

(declare-fun res!2339916 () Bool)

(declare-fun e!3395364 () Bool)

(assert (=> b!5487000 (=> res!2339916 e!3395364)))

(assert (=> b!5487000 (= res!2339916 (not (is-Concat!24257 r!7292)))))

(assert (=> b!5487000 (= e!3395359 e!3395364)))

(declare-fun b!5487001 () Bool)

(assert (=> b!5487001 (= e!3395364 e!3395361)))

(declare-fun res!2339913 () Bool)

(assert (=> b!5487001 (=> (not res!2339913) (not e!3395361))))

(assert (=> b!5487001 (= res!2339913 call!404747)))

(declare-fun b!5487002 () Bool)

(assert (=> b!5487002 (= e!3395360 e!3395358)))

(declare-fun res!2339914 () Bool)

(assert (=> b!5487002 (= res!2339914 (not (nullable!5497 (reg!15741 r!7292))))))

(assert (=> b!5487002 (=> (not res!2339914) (not e!3395358))))

(declare-fun b!5487003 () Bool)

(declare-fun e!3395363 () Bool)

(assert (=> b!5487003 (= e!3395363 call!404748)))

(declare-fun bm!404744 () Bool)

(assert (=> bm!404744 (= call!404748 (validRegex!7148 (ite c!958456 (regTwo!31337 r!7292) (regTwo!31336 r!7292))))))

(declare-fun b!5487004 () Bool)

(declare-fun res!2339912 () Bool)

(assert (=> b!5487004 (=> (not res!2339912) (not e!3395363))))

(assert (=> b!5487004 (= res!2339912 call!404747)))

(assert (=> b!5487004 (= e!3395359 e!3395363)))

(assert (= (and d!1741618 (not res!2339915)) b!5486999))

(assert (= (and b!5486999 c!958457) b!5487002))

(assert (= (and b!5486999 (not c!958457)) b!5486997))

(assert (= (and b!5487002 res!2339914) b!5486996))

(assert (= (and b!5486997 c!958456) b!5487004))

(assert (= (and b!5486997 (not c!958456)) b!5487000))

(assert (= (and b!5487004 res!2339912) b!5487003))

(assert (= (and b!5487000 (not res!2339916)) b!5487001))

(assert (= (and b!5487001 res!2339913) b!5486998))

(assert (= (or b!5487003 b!5486998) bm!404744))

(assert (= (or b!5487004 b!5487001) bm!404742))

(assert (= (or b!5486996 bm!404742) bm!404743))

(declare-fun m!6501494 () Bool)

(assert (=> bm!404743 m!6501494))

(declare-fun m!6501496 () Bool)

(assert (=> b!5487002 m!6501496))

(declare-fun m!6501498 () Bool)

(assert (=> bm!404744 m!6501498))

(assert (=> start!573684 d!1741618))

(declare-fun bs!1267054 () Bool)

(declare-fun d!1741620 () Bool)

(assert (= bs!1267054 (and d!1741620 b!5486871)))

(declare-fun lambda!293406 () Int)

(assert (=> bs!1267054 (not (= lambda!293406 lambda!293376))))

(declare-fun bs!1267055 () Bool)

(assert (= bs!1267055 (and d!1741620 b!5486880)))

(assert (=> bs!1267055 (= lambda!293406 lambda!293378)))

(declare-fun bs!1267056 () Bool)

(assert (= bs!1267056 (and d!1741620 d!1741610)))

(assert (=> bs!1267056 (not (= lambda!293406 lambda!293402))))

(declare-fun bs!1267057 () Bool)

(assert (= bs!1267057 (and d!1741620 d!1741614)))

(assert (=> bs!1267057 (= lambda!293406 lambda!293405)))

(assert (=> d!1741620 (= (inv!81778 cc!2) (forall!14629 (exprs!5296 cc!2) lambda!293406))))

(declare-fun bs!1267058 () Bool)

(assert (= bs!1267058 d!1741620))

(declare-fun m!6501500 () Bool)

(assert (=> bs!1267058 m!6501500))

(assert (=> start!573684 d!1741620))

(declare-fun d!1741622 () Bool)

(declare-fun e!3395367 () Bool)

(assert (=> d!1741622 e!3395367))

(declare-fun res!2339919 () Bool)

(assert (=> d!1741622 (=> (not res!2339919) (not e!3395367))))

(declare-fun lt!2241094 () List!62537)

(declare-fun noDuplicate!1466 (List!62537) Bool)

(assert (=> d!1741622 (= res!2339919 (noDuplicate!1466 lt!2241094))))

(declare-fun choose!41752 ((Set Context!9592)) List!62537)

(assert (=> d!1741622 (= lt!2241094 (choose!41752 z!1189))))

(assert (=> d!1741622 (= (toList!9196 z!1189) lt!2241094)))

(declare-fun b!5487007 () Bool)

(declare-fun content!11221 (List!62537) (Set Context!9592))

(assert (=> b!5487007 (= e!3395367 (= (content!11221 lt!2241094) z!1189))))

(assert (= (and d!1741622 res!2339919) b!5487007))

(declare-fun m!6501502 () Bool)

(assert (=> d!1741622 m!6501502))

(declare-fun m!6501504 () Bool)

(assert (=> d!1741622 m!6501504))

(declare-fun m!6501506 () Bool)

(assert (=> b!5487007 m!6501506))

(assert (=> b!5486883 d!1741622))

(declare-fun b!5487053 () Bool)

(assert (=> b!5487053 true))

(assert (=> b!5487053 true))

(declare-fun bs!1267062 () Bool)

(declare-fun b!5487051 () Bool)

(assert (= bs!1267062 (and b!5487051 b!5487053)))

(declare-fun lambda!293415 () Int)

(declare-fun lambda!293414 () Int)

(assert (=> bs!1267062 (not (= lambda!293415 lambda!293414))))

(assert (=> b!5487051 true))

(assert (=> b!5487051 true))

(declare-fun b!5487046 () Bool)

(declare-fun res!2339937 () Bool)

(declare-fun e!3395390 () Bool)

(assert (=> b!5487046 (=> res!2339937 e!3395390)))

(declare-fun call!404754 () Bool)

(assert (=> b!5487046 (= res!2339937 call!404754)))

(declare-fun e!3395389 () Bool)

(assert (=> b!5487046 (= e!3395389 e!3395390)))

(declare-fun b!5487047 () Bool)

(declare-fun e!3395394 () Bool)

(assert (=> b!5487047 (= e!3395394 e!3395389)))

(declare-fun c!958470 () Bool)

(assert (=> b!5487047 (= c!958470 (is-Star!15412 r!7292))))

(declare-fun b!5487048 () Bool)

(declare-fun c!958471 () Bool)

(assert (=> b!5487048 (= c!958471 (is-ElementMatch!15412 r!7292))))

(declare-fun e!3395392 () Bool)

(declare-fun e!3395393 () Bool)

(assert (=> b!5487048 (= e!3395392 e!3395393)))

(declare-fun b!5487049 () Bool)

(declare-fun e!3395388 () Bool)

(assert (=> b!5487049 (= e!3395388 (matchRSpec!2515 (regTwo!31337 r!7292) s!2326))))

(declare-fun b!5487050 () Bool)

(declare-fun e!3395391 () Bool)

(assert (=> b!5487050 (= e!3395391 call!404754)))

(declare-fun call!404755 () Bool)

(assert (=> b!5487051 (= e!3395389 call!404755)))

(declare-fun b!5487052 () Bool)

(declare-fun c!958469 () Bool)

(assert (=> b!5487052 (= c!958469 (is-Union!15412 r!7292))))

(assert (=> b!5487052 (= e!3395393 e!3395394)))

(assert (=> b!5487053 (= e!3395390 call!404755)))

(declare-fun bm!404749 () Bool)

(declare-fun isEmpty!34302 (List!62535) Bool)

(assert (=> bm!404749 (= call!404754 (isEmpty!34302 s!2326))))

(declare-fun b!5487054 () Bool)

(assert (=> b!5487054 (= e!3395391 e!3395392)))

(declare-fun res!2339936 () Bool)

(assert (=> b!5487054 (= res!2339936 (not (is-EmptyLang!15412 r!7292)))))

(assert (=> b!5487054 (=> (not res!2339936) (not e!3395392))))

(declare-fun b!5487055 () Bool)

(assert (=> b!5487055 (= e!3395394 e!3395388)))

(declare-fun res!2339938 () Bool)

(assert (=> b!5487055 (= res!2339938 (matchRSpec!2515 (regOne!31337 r!7292) s!2326))))

(assert (=> b!5487055 (=> res!2339938 e!3395388)))

(declare-fun bm!404750 () Bool)

(declare-fun Exists!2565 (Int) Bool)

(assert (=> bm!404750 (= call!404755 (Exists!2565 (ite c!958470 lambda!293414 lambda!293415)))))

(declare-fun b!5487056 () Bool)

(assert (=> b!5487056 (= e!3395393 (= s!2326 (Cons!62411 (c!958444 r!7292) Nil!62411)))))

(declare-fun d!1741624 () Bool)

(declare-fun c!958468 () Bool)

(assert (=> d!1741624 (= c!958468 (is-EmptyExpr!15412 r!7292))))

(assert (=> d!1741624 (= (matchRSpec!2515 r!7292 s!2326) e!3395391)))

(assert (= (and d!1741624 c!958468) b!5487050))

(assert (= (and d!1741624 (not c!958468)) b!5487054))

(assert (= (and b!5487054 res!2339936) b!5487048))

(assert (= (and b!5487048 c!958471) b!5487056))

(assert (= (and b!5487048 (not c!958471)) b!5487052))

(assert (= (and b!5487052 c!958469) b!5487055))

(assert (= (and b!5487052 (not c!958469)) b!5487047))

(assert (= (and b!5487055 (not res!2339938)) b!5487049))

(assert (= (and b!5487047 c!958470) b!5487046))

(assert (= (and b!5487047 (not c!958470)) b!5487051))

(assert (= (and b!5487046 (not res!2339937)) b!5487053))

(assert (= (or b!5487053 b!5487051) bm!404750))

(assert (= (or b!5487050 b!5487046) bm!404749))

(declare-fun m!6501510 () Bool)

(assert (=> b!5487049 m!6501510))

(declare-fun m!6501512 () Bool)

(assert (=> bm!404749 m!6501512))

(declare-fun m!6501514 () Bool)

(assert (=> b!5487055 m!6501514))

(declare-fun m!6501516 () Bool)

(assert (=> bm!404750 m!6501516))

(assert (=> b!5486882 d!1741624))

(declare-fun b!5487125 () Bool)

(declare-fun e!3395429 () Bool)

(declare-fun head!11750 (List!62535) C!31094)

(assert (=> b!5487125 (= e!3395429 (= (head!11750 s!2326) (c!958444 r!7292)))))

(declare-fun b!5487126 () Bool)

(declare-fun e!3395432 () Bool)

(assert (=> b!5487126 (= e!3395432 (nullable!5497 r!7292))))

(declare-fun b!5487127 () Bool)

(declare-fun res!2339980 () Bool)

(declare-fun e!3395433 () Bool)

(assert (=> b!5487127 (=> res!2339980 e!3395433)))

(declare-fun tail!10846 (List!62535) List!62535)

(assert (=> b!5487127 (= res!2339980 (not (isEmpty!34302 (tail!10846 s!2326))))))

(declare-fun b!5487128 () Bool)

(declare-fun e!3395434 () Bool)

(declare-fun e!3395428 () Bool)

(assert (=> b!5487128 (= e!3395434 e!3395428)))

(declare-fun res!2339983 () Bool)

(assert (=> b!5487128 (=> (not res!2339983) (not e!3395428))))

(declare-fun lt!2241100 () Bool)

(assert (=> b!5487128 (= res!2339983 (not lt!2241100))))

(declare-fun b!5487129 () Bool)

(assert (=> b!5487129 (= e!3395428 e!3395433)))

(declare-fun res!2339979 () Bool)

(assert (=> b!5487129 (=> res!2339979 e!3395433)))

(declare-fun call!404761 () Bool)

(assert (=> b!5487129 (= res!2339979 call!404761)))

(declare-fun b!5487130 () Bool)

(assert (=> b!5487130 (= e!3395433 (not (= (head!11750 s!2326) (c!958444 r!7292))))))

(declare-fun b!5487131 () Bool)

(declare-fun res!2339985 () Bool)

(assert (=> b!5487131 (=> res!2339985 e!3395434)))

(assert (=> b!5487131 (= res!2339985 e!3395429)))

(declare-fun res!2339984 () Bool)

(assert (=> b!5487131 (=> (not res!2339984) (not e!3395429))))

(assert (=> b!5487131 (= res!2339984 lt!2241100)))

(declare-fun d!1741628 () Bool)

(declare-fun e!3395430 () Bool)

(assert (=> d!1741628 e!3395430))

(declare-fun c!958486 () Bool)

(assert (=> d!1741628 (= c!958486 (is-EmptyExpr!15412 r!7292))))

(assert (=> d!1741628 (= lt!2241100 e!3395432)))

(declare-fun c!958487 () Bool)

(assert (=> d!1741628 (= c!958487 (isEmpty!34302 s!2326))))

(assert (=> d!1741628 (validRegex!7148 r!7292)))

(assert (=> d!1741628 (= (matchR!7597 r!7292 s!2326) lt!2241100)))

(declare-fun b!5487132 () Bool)

(declare-fun res!2339986 () Bool)

(assert (=> b!5487132 (=> (not res!2339986) (not e!3395429))))

(assert (=> b!5487132 (= res!2339986 (isEmpty!34302 (tail!10846 s!2326)))))

(declare-fun b!5487133 () Bool)

(declare-fun res!2339982 () Bool)

(assert (=> b!5487133 (=> (not res!2339982) (not e!3395429))))

(assert (=> b!5487133 (= res!2339982 (not call!404761))))

(declare-fun bm!404756 () Bool)

(assert (=> bm!404756 (= call!404761 (isEmpty!34302 s!2326))))

(declare-fun b!5487134 () Bool)

(declare-fun res!2339981 () Bool)

(assert (=> b!5487134 (=> res!2339981 e!3395434)))

(assert (=> b!5487134 (= res!2339981 (not (is-ElementMatch!15412 r!7292)))))

(declare-fun e!3395431 () Bool)

(assert (=> b!5487134 (= e!3395431 e!3395434)))

(declare-fun b!5487135 () Bool)

(assert (=> b!5487135 (= e!3395430 (= lt!2241100 call!404761))))

(declare-fun b!5487136 () Bool)

(assert (=> b!5487136 (= e!3395431 (not lt!2241100))))

(declare-fun b!5487137 () Bool)

(assert (=> b!5487137 (= e!3395430 e!3395431)))

(declare-fun c!958485 () Bool)

(assert (=> b!5487137 (= c!958485 (is-EmptyLang!15412 r!7292))))

(declare-fun b!5487138 () Bool)

(declare-fun derivativeStep!4338 (Regex!15412 C!31094) Regex!15412)

(assert (=> b!5487138 (= e!3395432 (matchR!7597 (derivativeStep!4338 r!7292 (head!11750 s!2326)) (tail!10846 s!2326)))))

(assert (= (and d!1741628 c!958487) b!5487126))

(assert (= (and d!1741628 (not c!958487)) b!5487138))

(assert (= (and d!1741628 c!958486) b!5487135))

(assert (= (and d!1741628 (not c!958486)) b!5487137))

(assert (= (and b!5487137 c!958485) b!5487136))

(assert (= (and b!5487137 (not c!958485)) b!5487134))

(assert (= (and b!5487134 (not res!2339981)) b!5487131))

(assert (= (and b!5487131 res!2339984) b!5487133))

(assert (= (and b!5487133 res!2339982) b!5487132))

(assert (= (and b!5487132 res!2339986) b!5487125))

(assert (= (and b!5487131 (not res!2339985)) b!5487128))

(assert (= (and b!5487128 res!2339983) b!5487129))

(assert (= (and b!5487129 (not res!2339979)) b!5487127))

(assert (= (and b!5487127 (not res!2339980)) b!5487130))

(assert (= (or b!5487135 b!5487129 b!5487133) bm!404756))

(declare-fun m!6501518 () Bool)

(assert (=> b!5487125 m!6501518))

(assert (=> b!5487130 m!6501518))

(assert (=> d!1741628 m!6501512))

(assert (=> d!1741628 m!6501402))

(declare-fun m!6501520 () Bool)

(assert (=> b!5487127 m!6501520))

(assert (=> b!5487127 m!6501520))

(declare-fun m!6501522 () Bool)

(assert (=> b!5487127 m!6501522))

(assert (=> b!5487138 m!6501518))

(assert (=> b!5487138 m!6501518))

(declare-fun m!6501524 () Bool)

(assert (=> b!5487138 m!6501524))

(assert (=> b!5487138 m!6501520))

(assert (=> b!5487138 m!6501524))

(assert (=> b!5487138 m!6501520))

(declare-fun m!6501526 () Bool)

(assert (=> b!5487138 m!6501526))

(assert (=> b!5487132 m!6501520))

(assert (=> b!5487132 m!6501520))

(assert (=> b!5487132 m!6501522))

(assert (=> bm!404756 m!6501512))

(declare-fun m!6501528 () Bool)

(assert (=> b!5487126 m!6501528))

(assert (=> b!5486882 d!1741628))

(declare-fun d!1741630 () Bool)

(assert (=> d!1741630 (= (matchR!7597 r!7292 s!2326) (matchRSpec!2515 r!7292 s!2326))))

(declare-fun lt!2241103 () Unit!155279)

(declare-fun choose!41753 (Regex!15412 List!62535) Unit!155279)

(assert (=> d!1741630 (= lt!2241103 (choose!41753 r!7292 s!2326))))

(assert (=> d!1741630 (validRegex!7148 r!7292)))

(assert (=> d!1741630 (= (mainMatchTheorem!2515 r!7292 s!2326) lt!2241103)))

(declare-fun bs!1267063 () Bool)

(assert (= bs!1267063 d!1741630))

(assert (=> bs!1267063 m!6501410))

(assert (=> bs!1267063 m!6501408))

(declare-fun m!6501544 () Bool)

(assert (=> bs!1267063 m!6501544))

(assert (=> bs!1267063 m!6501402))

(assert (=> b!5486882 d!1741630))

(declare-fun b!5487139 () Bool)

(declare-fun e!3395436 () Bool)

(assert (=> b!5487139 (= e!3395436 (= (head!11750 s!2326) (c!958444 lt!2241065)))))

(declare-fun b!5487140 () Bool)

(declare-fun e!3395439 () Bool)

(assert (=> b!5487140 (= e!3395439 (nullable!5497 lt!2241065))))

(declare-fun b!5487141 () Bool)

(declare-fun res!2339988 () Bool)

(declare-fun e!3395440 () Bool)

(assert (=> b!5487141 (=> res!2339988 e!3395440)))

(assert (=> b!5487141 (= res!2339988 (not (isEmpty!34302 (tail!10846 s!2326))))))

(declare-fun b!5487142 () Bool)

(declare-fun e!3395441 () Bool)

(declare-fun e!3395435 () Bool)

(assert (=> b!5487142 (= e!3395441 e!3395435)))

(declare-fun res!2339991 () Bool)

(assert (=> b!5487142 (=> (not res!2339991) (not e!3395435))))

(declare-fun lt!2241104 () Bool)

(assert (=> b!5487142 (= res!2339991 (not lt!2241104))))

(declare-fun b!5487143 () Bool)

(assert (=> b!5487143 (= e!3395435 e!3395440)))

(declare-fun res!2339987 () Bool)

(assert (=> b!5487143 (=> res!2339987 e!3395440)))

(declare-fun call!404762 () Bool)

(assert (=> b!5487143 (= res!2339987 call!404762)))

(declare-fun b!5487144 () Bool)

(assert (=> b!5487144 (= e!3395440 (not (= (head!11750 s!2326) (c!958444 lt!2241065))))))

(declare-fun b!5487145 () Bool)

(declare-fun res!2339993 () Bool)

(assert (=> b!5487145 (=> res!2339993 e!3395441)))

(assert (=> b!5487145 (= res!2339993 e!3395436)))

(declare-fun res!2339992 () Bool)

(assert (=> b!5487145 (=> (not res!2339992) (not e!3395436))))

(assert (=> b!5487145 (= res!2339992 lt!2241104)))

(declare-fun d!1741636 () Bool)

(declare-fun e!3395437 () Bool)

(assert (=> d!1741636 e!3395437))

(declare-fun c!958489 () Bool)

(assert (=> d!1741636 (= c!958489 (is-EmptyExpr!15412 lt!2241065))))

(assert (=> d!1741636 (= lt!2241104 e!3395439)))

(declare-fun c!958490 () Bool)

(assert (=> d!1741636 (= c!958490 (isEmpty!34302 s!2326))))

(assert (=> d!1741636 (validRegex!7148 lt!2241065)))

(assert (=> d!1741636 (= (matchR!7597 lt!2241065 s!2326) lt!2241104)))

(declare-fun b!5487146 () Bool)

(declare-fun res!2339994 () Bool)

(assert (=> b!5487146 (=> (not res!2339994) (not e!3395436))))

(assert (=> b!5487146 (= res!2339994 (isEmpty!34302 (tail!10846 s!2326)))))

(declare-fun b!5487147 () Bool)

(declare-fun res!2339990 () Bool)

(assert (=> b!5487147 (=> (not res!2339990) (not e!3395436))))

(assert (=> b!5487147 (= res!2339990 (not call!404762))))

(declare-fun bm!404757 () Bool)

(assert (=> bm!404757 (= call!404762 (isEmpty!34302 s!2326))))

(declare-fun b!5487148 () Bool)

(declare-fun res!2339989 () Bool)

(assert (=> b!5487148 (=> res!2339989 e!3395441)))

(assert (=> b!5487148 (= res!2339989 (not (is-ElementMatch!15412 lt!2241065)))))

(declare-fun e!3395438 () Bool)

(assert (=> b!5487148 (= e!3395438 e!3395441)))

(declare-fun b!5487149 () Bool)

(assert (=> b!5487149 (= e!3395437 (= lt!2241104 call!404762))))

(declare-fun b!5487150 () Bool)

(assert (=> b!5487150 (= e!3395438 (not lt!2241104))))

(declare-fun b!5487151 () Bool)

(assert (=> b!5487151 (= e!3395437 e!3395438)))

(declare-fun c!958488 () Bool)

(assert (=> b!5487151 (= c!958488 (is-EmptyLang!15412 lt!2241065))))

(declare-fun b!5487152 () Bool)

(assert (=> b!5487152 (= e!3395439 (matchR!7597 (derivativeStep!4338 lt!2241065 (head!11750 s!2326)) (tail!10846 s!2326)))))

(assert (= (and d!1741636 c!958490) b!5487140))

(assert (= (and d!1741636 (not c!958490)) b!5487152))

(assert (= (and d!1741636 c!958489) b!5487149))

(assert (= (and d!1741636 (not c!958489)) b!5487151))

(assert (= (and b!5487151 c!958488) b!5487150))

(assert (= (and b!5487151 (not c!958488)) b!5487148))

(assert (= (and b!5487148 (not res!2339989)) b!5487145))

(assert (= (and b!5487145 res!2339992) b!5487147))

(assert (= (and b!5487147 res!2339990) b!5487146))

(assert (= (and b!5487146 res!2339994) b!5487139))

(assert (= (and b!5487145 (not res!2339993)) b!5487142))

(assert (= (and b!5487142 res!2339991) b!5487143))

(assert (= (and b!5487143 (not res!2339987)) b!5487141))

(assert (= (and b!5487141 (not res!2339988)) b!5487144))

(assert (= (or b!5487149 b!5487143 b!5487147) bm!404757))

(assert (=> b!5487139 m!6501518))

(assert (=> b!5487144 m!6501518))

(assert (=> d!1741636 m!6501512))

(assert (=> d!1741636 m!6501420))

(assert (=> b!5487141 m!6501520))

(assert (=> b!5487141 m!6501520))

(assert (=> b!5487141 m!6501522))

(assert (=> b!5487152 m!6501518))

(assert (=> b!5487152 m!6501518))

(declare-fun m!6501546 () Bool)

(assert (=> b!5487152 m!6501546))

(assert (=> b!5487152 m!6501520))

(assert (=> b!5487152 m!6501546))

(assert (=> b!5487152 m!6501520))

(declare-fun m!6501548 () Bool)

(assert (=> b!5487152 m!6501548))

(assert (=> b!5487146 m!6501520))

(assert (=> b!5487146 m!6501520))

(assert (=> b!5487146 m!6501522))

(assert (=> bm!404757 m!6501512))

(declare-fun m!6501550 () Bool)

(assert (=> b!5487140 m!6501550))

(assert (=> b!5486863 d!1741636))

(assert (=> b!5486871 d!1741610))

(declare-fun bs!1267066 () Bool)

(declare-fun d!1741638 () Bool)

(assert (= bs!1267066 (and d!1741638 b!5486880)))

(declare-fun lambda!293423 () Int)

(assert (=> bs!1267066 (= lambda!293423 lambda!293378)))

(declare-fun bs!1267067 () Bool)

(assert (= bs!1267067 (and d!1741638 d!1741620)))

(assert (=> bs!1267067 (= lambda!293423 lambda!293406)))

(declare-fun bs!1267068 () Bool)

(assert (= bs!1267068 (and d!1741638 d!1741614)))

(assert (=> bs!1267068 (= lambda!293423 lambda!293405)))

(declare-fun bs!1267069 () Bool)

(assert (= bs!1267069 (and d!1741638 b!5486871)))

(assert (=> bs!1267069 (not (= lambda!293423 lambda!293376))))

(declare-fun bs!1267070 () Bool)

(assert (= bs!1267070 (and d!1741638 d!1741610)))

(assert (=> bs!1267070 (not (= lambda!293423 lambda!293402))))

(declare-fun lambda!293424 () Int)

(assert (=> bs!1267066 (not (= lambda!293424 lambda!293378))))

(assert (=> bs!1267067 (not (= lambda!293424 lambda!293406))))

(assert (=> bs!1267068 (not (= lambda!293424 lambda!293405))))

(declare-fun bs!1267071 () Bool)

(assert (= bs!1267071 d!1741638))

(assert (=> bs!1267071 (not (= lambda!293424 lambda!293423))))

(assert (=> bs!1267069 (= lambda!293424 lambda!293376)))

(assert (=> bs!1267070 (not (= lambda!293424 lambda!293402))))

(assert (=> d!1741638 true))

(assert (=> d!1741638 (= (matchR!7597 r!7292 s!2326) (exists!2047 lt!2241066 lambda!293424))))

(declare-fun lt!2241107 () Unit!155279)

(declare-fun choose!41754 (Regex!15412 List!62536 List!62535) Unit!155279)

(assert (=> d!1741638 (= lt!2241107 (choose!41754 r!7292 lt!2241066 s!2326))))

(assert (=> d!1741638 (forall!14629 lt!2241066 lambda!293423)))

(assert (=> d!1741638 (= (matchRGenUnionSpec!245 r!7292 lt!2241066 s!2326) lt!2241107)))

(assert (=> bs!1267071 m!6501410))

(declare-fun m!6501554 () Bool)

(assert (=> bs!1267071 m!6501554))

(declare-fun m!6501556 () Bool)

(assert (=> bs!1267071 m!6501556))

(declare-fun m!6501558 () Bool)

(assert (=> bs!1267071 m!6501558))

(assert (=> b!5486871 d!1741638))

(declare-fun bs!1267072 () Bool)

(declare-fun d!1741642 () Bool)

(assert (= bs!1267072 (and d!1741642 b!5486880)))

(declare-fun lambda!293429 () Int)

(assert (=> bs!1267072 (= lambda!293429 lambda!293378)))

(declare-fun bs!1267073 () Bool)

(assert (= bs!1267073 (and d!1741642 d!1741620)))

(assert (=> bs!1267073 (= lambda!293429 lambda!293406)))

(declare-fun bs!1267074 () Bool)

(assert (= bs!1267074 (and d!1741642 d!1741614)))

(assert (=> bs!1267074 (= lambda!293429 lambda!293405)))

(declare-fun bs!1267075 () Bool)

(assert (= bs!1267075 (and d!1741642 d!1741638)))

(assert (=> bs!1267075 (= lambda!293429 lambda!293423)))

(declare-fun bs!1267076 () Bool)

(assert (= bs!1267076 (and d!1741642 b!5486871)))

(assert (=> bs!1267076 (not (= lambda!293429 lambda!293376))))

(assert (=> bs!1267075 (not (= lambda!293429 lambda!293424))))

(declare-fun bs!1267077 () Bool)

(assert (= bs!1267077 (and d!1741642 d!1741610)))

(assert (=> bs!1267077 (not (= lambda!293429 lambda!293402))))

(declare-fun lt!2241112 () List!62536)

(assert (=> d!1741642 (forall!14629 lt!2241112 lambda!293429)))

(declare-fun e!3395446 () List!62536)

(assert (=> d!1741642 (= lt!2241112 e!3395446)))

(declare-fun c!958495 () Bool)

(assert (=> d!1741642 (= c!958495 (is-Cons!62413 zl!343))))

(assert (=> d!1741642 (= (unfocusZipperList!844 zl!343) lt!2241112)))

(declare-fun b!5487161 () Bool)

(declare-fun generalisedConcat!1058 (List!62536) Regex!15412)

(assert (=> b!5487161 (= e!3395446 (Cons!62412 (generalisedConcat!1058 (exprs!5296 (h!68861 zl!343))) (unfocusZipperList!844 (t!375768 zl!343))))))

(declare-fun b!5487162 () Bool)

(assert (=> b!5487162 (= e!3395446 Nil!62412)))

(assert (= (and d!1741642 c!958495) b!5487161))

(assert (= (and d!1741642 (not c!958495)) b!5487162))

(declare-fun m!6501560 () Bool)

(assert (=> d!1741642 m!6501560))

(declare-fun m!6501562 () Bool)

(assert (=> b!5487161 m!6501562))

(declare-fun m!6501564 () Bool)

(assert (=> b!5487161 m!6501564))

(assert (=> b!5486871 d!1741642))

(declare-fun d!1741644 () Bool)

(declare-fun res!2340001 () Bool)

(declare-fun e!3395451 () Bool)

(assert (=> d!1741644 (=> res!2340001 e!3395451)))

(assert (=> d!1741644 (= res!2340001 (is-Nil!62412 (exprs!5296 cc!2)))))

(assert (=> d!1741644 (= (forall!14629 (exprs!5296 cc!2) lambda!293378) e!3395451)))

(declare-fun b!5487167 () Bool)

(declare-fun e!3395452 () Bool)

(assert (=> b!5487167 (= e!3395451 e!3395452)))

(declare-fun res!2340002 () Bool)

(assert (=> b!5487167 (=> (not res!2340002) (not e!3395452))))

(declare-fun dynLambda!24453 (Int Regex!15412) Bool)

(assert (=> b!5487167 (= res!2340002 (dynLambda!24453 lambda!293378 (h!68860 (exprs!5296 cc!2))))))

(declare-fun b!5487168 () Bool)

(assert (=> b!5487168 (= e!3395452 (forall!14629 (t!375767 (exprs!5296 cc!2)) lambda!293378))))

(assert (= (and d!1741644 (not res!2340001)) b!5487167))

(assert (= (and b!5487167 res!2340002) b!5487168))

(declare-fun b_lambda!208363 () Bool)

(assert (=> (not b_lambda!208363) (not b!5487167)))

(declare-fun m!6501572 () Bool)

(assert (=> b!5487167 m!6501572))

(declare-fun m!6501574 () Bool)

(assert (=> b!5487168 m!6501574))

(assert (=> b!5486880 d!1741644))

(declare-fun d!1741648 () Bool)

(declare-fun lt!2241116 () Bool)

(declare-fun content!11222 (List!62536) (Set Regex!15412))

(assert (=> d!1741648 (= lt!2241116 (set.member lt!2241065 (content!11222 lt!2241066)))))

(declare-fun e!3395458 () Bool)

(assert (=> d!1741648 (= lt!2241116 e!3395458)))

(declare-fun res!2340008 () Bool)

(assert (=> d!1741648 (=> (not res!2340008) (not e!3395458))))

(assert (=> d!1741648 (= res!2340008 (is-Cons!62412 lt!2241066))))

(assert (=> d!1741648 (= (contains!19734 lt!2241066 lt!2241065) lt!2241116)))

(declare-fun b!5487173 () Bool)

(declare-fun e!3395457 () Bool)

(assert (=> b!5487173 (= e!3395458 e!3395457)))

(declare-fun res!2340007 () Bool)

(assert (=> b!5487173 (=> res!2340007 e!3395457)))

(assert (=> b!5487173 (= res!2340007 (= (h!68860 lt!2241066) lt!2241065))))

(declare-fun b!5487174 () Bool)

(assert (=> b!5487174 (= e!3395457 (contains!19734 (t!375767 lt!2241066) lt!2241065))))

(assert (= (and d!1741648 res!2340008) b!5487173))

(assert (= (and b!5487173 (not res!2340007)) b!5487174))

(declare-fun m!6501576 () Bool)

(assert (=> d!1741648 m!6501576))

(declare-fun m!6501578 () Bool)

(assert (=> d!1741648 m!6501578))

(declare-fun m!6501580 () Bool)

(assert (=> b!5487174 m!6501580))

(assert (=> b!5486879 d!1741648))

(declare-fun b!5487189 () Bool)

(declare-fun e!3395468 () Bool)

(declare-fun lt!2241122 () Regex!15412)

(assert (=> b!5487189 (= e!3395468 (contains!19734 lt!2241066 lt!2241122))))

(declare-fun d!1741650 () Bool)

(assert (=> d!1741650 e!3395468))

(declare-fun res!2340014 () Bool)

(assert (=> d!1741650 (=> (not res!2340014) (not e!3395468))))

(assert (=> d!1741650 (= res!2340014 (dynLambda!24453 lambda!293376 lt!2241122))))

(declare-fun e!3395470 () Regex!15412)

(assert (=> d!1741650 (= lt!2241122 e!3395470)))

(declare-fun c!958500 () Bool)

(declare-fun e!3395469 () Bool)

(assert (=> d!1741650 (= c!958500 e!3395469)))

(declare-fun res!2340013 () Bool)

(assert (=> d!1741650 (=> (not res!2340013) (not e!3395469))))

(assert (=> d!1741650 (= res!2340013 (is-Cons!62412 lt!2241066))))

(assert (=> d!1741650 (exists!2047 lt!2241066 lambda!293376)))

(assert (=> d!1741650 (= (getWitness!867 lt!2241066 lambda!293376) lt!2241122)))

(declare-fun b!5487190 () Bool)

(declare-fun lt!2241121 () Unit!155279)

(declare-fun Unit!155283 () Unit!155279)

(assert (=> b!5487190 (= lt!2241121 Unit!155283)))

(assert (=> b!5487190 false))

(declare-fun e!3395467 () Regex!15412)

(declare-fun head!11751 (List!62536) Regex!15412)

(assert (=> b!5487190 (= e!3395467 (head!11751 lt!2241066))))

(declare-fun b!5487191 () Bool)

(assert (=> b!5487191 (= e!3395469 (dynLambda!24453 lambda!293376 (h!68860 lt!2241066)))))

(declare-fun b!5487192 () Bool)

(assert (=> b!5487192 (= e!3395470 (h!68860 lt!2241066))))

(declare-fun b!5487193 () Bool)

(assert (=> b!5487193 (= e!3395470 e!3395467)))

(declare-fun c!958501 () Bool)

(assert (=> b!5487193 (= c!958501 (is-Cons!62412 lt!2241066))))

(declare-fun b!5487194 () Bool)

(assert (=> b!5487194 (= e!3395467 (getWitness!867 (t!375767 lt!2241066) lambda!293376))))

(assert (= (and d!1741650 res!2340013) b!5487191))

(assert (= (and d!1741650 c!958500) b!5487192))

(assert (= (and d!1741650 (not c!958500)) b!5487193))

(assert (= (and b!5487193 c!958501) b!5487194))

(assert (= (and b!5487193 (not c!958501)) b!5487190))

(assert (= (and d!1741650 res!2340014) b!5487189))

(declare-fun b_lambda!208365 () Bool)

(assert (=> (not b_lambda!208365) (not d!1741650)))

(declare-fun b_lambda!208367 () Bool)

(assert (=> (not b_lambda!208367) (not b!5487191)))

(declare-fun m!6501584 () Bool)

(assert (=> b!5487191 m!6501584))

(declare-fun m!6501586 () Bool)

(assert (=> b!5487189 m!6501586))

(declare-fun m!6501588 () Bool)

(assert (=> b!5487190 m!6501588))

(declare-fun m!6501590 () Bool)

(assert (=> b!5487194 m!6501590))

(declare-fun m!6501592 () Bool)

(assert (=> d!1741650 m!6501592))

(assert (=> d!1741650 m!6501394))

(assert (=> b!5486879 d!1741650))

(declare-fun bs!1267085 () Bool)

(declare-fun d!1741654 () Bool)

(assert (= bs!1267085 (and d!1741654 b!5486880)))

(declare-fun lambda!293434 () Int)

(assert (=> bs!1267085 (= lambda!293434 lambda!293378)))

(declare-fun bs!1267086 () Bool)

(assert (= bs!1267086 (and d!1741654 d!1741614)))

(assert (=> bs!1267086 (= lambda!293434 lambda!293405)))

(declare-fun bs!1267087 () Bool)

(assert (= bs!1267087 (and d!1741654 d!1741638)))

(assert (=> bs!1267087 (= lambda!293434 lambda!293423)))

(declare-fun bs!1267088 () Bool)

(assert (= bs!1267088 (and d!1741654 b!5486871)))

(assert (=> bs!1267088 (not (= lambda!293434 lambda!293376))))

(assert (=> bs!1267087 (not (= lambda!293434 lambda!293424))))

(declare-fun bs!1267089 () Bool)

(assert (= bs!1267089 (and d!1741654 d!1741610)))

(assert (=> bs!1267089 (not (= lambda!293434 lambda!293402))))

(declare-fun bs!1267090 () Bool)

(assert (= bs!1267090 (and d!1741654 d!1741620)))

(assert (=> bs!1267090 (= lambda!293434 lambda!293406)))

(declare-fun bs!1267091 () Bool)

(assert (= bs!1267091 (and d!1741654 d!1741642)))

(assert (=> bs!1267091 (= lambda!293434 lambda!293429)))

(assert (=> d!1741654 (= (inv!81778 (h!68861 zl!343)) (forall!14629 (exprs!5296 (h!68861 zl!343)) lambda!293434))))

(declare-fun bs!1267092 () Bool)

(assert (= bs!1267092 d!1741654))

(declare-fun m!6501594 () Bool)

(assert (=> bs!1267092 m!6501594))

(assert (=> b!5486867 d!1741654))

(assert (=> b!5486877 d!1741608))

(declare-fun b!5487199 () Bool)

(declare-fun e!3395473 () Bool)

(declare-fun tp!1508084 () Bool)

(declare-fun tp!1508085 () Bool)

(assert (=> b!5487199 (= e!3395473 (and tp!1508084 tp!1508085))))

(assert (=> b!5486876 (= tp!1508037 e!3395473)))

(assert (= (and b!5486876 (is-Cons!62412 (exprs!5296 cc!2))) b!5487199))

(declare-fun b!5487204 () Bool)

(declare-fun e!3395476 () Bool)

(declare-fun tp!1508088 () Bool)

(assert (=> b!5487204 (= e!3395476 (and tp_is_empty!40077 tp!1508088))))

(assert (=> b!5486872 (= tp!1508046 e!3395476)))

(assert (= (and b!5486872 (is-Cons!62411 (t!375766 s!2326))) b!5487204))

(declare-fun b!5487217 () Bool)

(declare-fun e!3395479 () Bool)

(declare-fun tp!1508100 () Bool)

(assert (=> b!5487217 (= e!3395479 tp!1508100)))

(assert (=> b!5486881 (= tp!1508045 e!3395479)))

(declare-fun b!5487216 () Bool)

(declare-fun tp!1508101 () Bool)

(declare-fun tp!1508102 () Bool)

(assert (=> b!5487216 (= e!3395479 (and tp!1508101 tp!1508102))))

(declare-fun b!5487218 () Bool)

(declare-fun tp!1508099 () Bool)

(declare-fun tp!1508103 () Bool)

(assert (=> b!5487218 (= e!3395479 (and tp!1508099 tp!1508103))))

(declare-fun b!5487215 () Bool)

(assert (=> b!5487215 (= e!3395479 tp_is_empty!40077)))

(assert (= (and b!5486881 (is-ElementMatch!15412 (regOne!31336 r!7292))) b!5487215))

(assert (= (and b!5486881 (is-Concat!24257 (regOne!31336 r!7292))) b!5487216))

(assert (= (and b!5486881 (is-Star!15412 (regOne!31336 r!7292))) b!5487217))

(assert (= (and b!5486881 (is-Union!15412 (regOne!31336 r!7292))) b!5487218))

(declare-fun b!5487221 () Bool)

(declare-fun e!3395480 () Bool)

(declare-fun tp!1508105 () Bool)

(assert (=> b!5487221 (= e!3395480 tp!1508105)))

(assert (=> b!5486881 (= tp!1508036 e!3395480)))

(declare-fun b!5487220 () Bool)

(declare-fun tp!1508106 () Bool)

(declare-fun tp!1508107 () Bool)

(assert (=> b!5487220 (= e!3395480 (and tp!1508106 tp!1508107))))

(declare-fun b!5487222 () Bool)

(declare-fun tp!1508104 () Bool)

(declare-fun tp!1508108 () Bool)

(assert (=> b!5487222 (= e!3395480 (and tp!1508104 tp!1508108))))

(declare-fun b!5487219 () Bool)

(assert (=> b!5487219 (= e!3395480 tp_is_empty!40077)))

(assert (= (and b!5486881 (is-ElementMatch!15412 (regTwo!31336 r!7292))) b!5487219))

(assert (= (and b!5486881 (is-Concat!24257 (regTwo!31336 r!7292))) b!5487220))

(assert (= (and b!5486881 (is-Star!15412 (regTwo!31336 r!7292))) b!5487221))

(assert (= (and b!5486881 (is-Union!15412 (regTwo!31336 r!7292))) b!5487222))

(declare-fun b!5487223 () Bool)

(declare-fun e!3395481 () Bool)

(declare-fun tp!1508109 () Bool)

(declare-fun tp!1508110 () Bool)

(assert (=> b!5487223 (= e!3395481 (and tp!1508109 tp!1508110))))

(assert (=> b!5486874 (= tp!1508043 e!3395481)))

(assert (= (and b!5486874 (is-Cons!62412 (exprs!5296 setElem!36198))) b!5487223))

(declare-fun b!5487226 () Bool)

(declare-fun e!3395482 () Bool)

(declare-fun tp!1508112 () Bool)

(assert (=> b!5487226 (= e!3395482 tp!1508112)))

(assert (=> b!5486870 (= tp!1508040 e!3395482)))

(declare-fun b!5487225 () Bool)

(declare-fun tp!1508113 () Bool)

(declare-fun tp!1508114 () Bool)

(assert (=> b!5487225 (= e!3395482 (and tp!1508113 tp!1508114))))

(declare-fun b!5487227 () Bool)

(declare-fun tp!1508111 () Bool)

(declare-fun tp!1508115 () Bool)

(assert (=> b!5487227 (= e!3395482 (and tp!1508111 tp!1508115))))

(declare-fun b!5487224 () Bool)

(assert (=> b!5487224 (= e!3395482 tp_is_empty!40077)))

(assert (= (and b!5486870 (is-ElementMatch!15412 (regOne!31337 r!7292))) b!5487224))

(assert (= (and b!5486870 (is-Concat!24257 (regOne!31337 r!7292))) b!5487225))

(assert (= (and b!5486870 (is-Star!15412 (regOne!31337 r!7292))) b!5487226))

(assert (= (and b!5486870 (is-Union!15412 (regOne!31337 r!7292))) b!5487227))

(declare-fun b!5487230 () Bool)

(declare-fun e!3395483 () Bool)

(declare-fun tp!1508117 () Bool)

(assert (=> b!5487230 (= e!3395483 tp!1508117)))

(assert (=> b!5486870 (= tp!1508039 e!3395483)))

(declare-fun b!5487229 () Bool)

(declare-fun tp!1508118 () Bool)

(declare-fun tp!1508119 () Bool)

(assert (=> b!5487229 (= e!3395483 (and tp!1508118 tp!1508119))))

(declare-fun b!5487231 () Bool)

(declare-fun tp!1508116 () Bool)

(declare-fun tp!1508120 () Bool)

(assert (=> b!5487231 (= e!3395483 (and tp!1508116 tp!1508120))))

(declare-fun b!5487228 () Bool)

(assert (=> b!5487228 (= e!3395483 tp_is_empty!40077)))

(assert (= (and b!5486870 (is-ElementMatch!15412 (regTwo!31337 r!7292))) b!5487228))

(assert (= (and b!5486870 (is-Concat!24257 (regTwo!31337 r!7292))) b!5487229))

(assert (= (and b!5486870 (is-Star!15412 (regTwo!31337 r!7292))) b!5487230))

(assert (= (and b!5486870 (is-Union!15412 (regTwo!31337 r!7292))) b!5487231))

(declare-fun b!5487234 () Bool)

(declare-fun e!3395484 () Bool)

(declare-fun tp!1508122 () Bool)

(assert (=> b!5487234 (= e!3395484 tp!1508122)))

(assert (=> b!5486878 (= tp!1508042 e!3395484)))

(declare-fun b!5487233 () Bool)

(declare-fun tp!1508123 () Bool)

(declare-fun tp!1508124 () Bool)

(assert (=> b!5487233 (= e!3395484 (and tp!1508123 tp!1508124))))

(declare-fun b!5487235 () Bool)

(declare-fun tp!1508121 () Bool)

(declare-fun tp!1508125 () Bool)

(assert (=> b!5487235 (= e!3395484 (and tp!1508121 tp!1508125))))

(declare-fun b!5487232 () Bool)

(assert (=> b!5487232 (= e!3395484 tp_is_empty!40077)))

(assert (= (and b!5486878 (is-ElementMatch!15412 (reg!15741 r!7292))) b!5487232))

(assert (= (and b!5486878 (is-Concat!24257 (reg!15741 r!7292))) b!5487233))

(assert (= (and b!5486878 (is-Star!15412 (reg!15741 r!7292))) b!5487234))

(assert (= (and b!5486878 (is-Union!15412 (reg!15741 r!7292))) b!5487235))

(declare-fun condSetEmpty!36204 () Bool)

(assert (=> setNonEmpty!36198 (= condSetEmpty!36204 (= setRest!36198 (as set.empty (Set Context!9592))))))

(declare-fun setRes!36204 () Bool)

(assert (=> setNonEmpty!36198 (= tp!1508044 setRes!36204)))

(declare-fun setIsEmpty!36204 () Bool)

(assert (=> setIsEmpty!36204 setRes!36204))

(declare-fun e!3395489 () Bool)

(declare-fun tp!1508130 () Bool)

(declare-fun setNonEmpty!36204 () Bool)

(declare-fun setElem!36204 () Context!9592)

(assert (=> setNonEmpty!36204 (= setRes!36204 (and tp!1508130 (inv!81778 setElem!36204) e!3395489))))

(declare-fun setRest!36204 () (Set Context!9592))

(assert (=> setNonEmpty!36204 (= setRest!36198 (set.union (set.insert setElem!36204 (as set.empty (Set Context!9592))) setRest!36204))))

(declare-fun b!5487242 () Bool)

(declare-fun tp!1508131 () Bool)

(assert (=> b!5487242 (= e!3395489 tp!1508131)))

(assert (= (and setNonEmpty!36198 condSetEmpty!36204) setIsEmpty!36204))

(assert (= (and setNonEmpty!36198 (not condSetEmpty!36204)) setNonEmpty!36204))

(assert (= setNonEmpty!36204 b!5487242))

(declare-fun m!6501596 () Bool)

(assert (=> setNonEmpty!36204 m!6501596))

(declare-fun b!5487243 () Bool)

(declare-fun e!3395490 () Bool)

(declare-fun tp!1508132 () Bool)

(declare-fun tp!1508133 () Bool)

(assert (=> b!5487243 (= e!3395490 (and tp!1508132 tp!1508133))))

(assert (=> b!5486868 (= tp!1508038 e!3395490)))

(assert (= (and b!5486868 (is-Cons!62412 (exprs!5296 (h!68861 zl!343)))) b!5487243))

(declare-fun b!5487251 () Bool)

(declare-fun e!3395496 () Bool)

(declare-fun tp!1508138 () Bool)

(assert (=> b!5487251 (= e!3395496 tp!1508138)))

(declare-fun tp!1508139 () Bool)

(declare-fun e!3395495 () Bool)

(declare-fun b!5487250 () Bool)

(assert (=> b!5487250 (= e!3395495 (and (inv!81778 (h!68861 (t!375768 zl!343))) e!3395496 tp!1508139))))

(assert (=> b!5486867 (= tp!1508041 e!3395495)))

(assert (= b!5487250 b!5487251))

(assert (= (and b!5486867 (is-Cons!62413 (t!375768 zl!343))) b!5487250))

(declare-fun m!6501598 () Bool)

(assert (=> b!5487250 m!6501598))

(declare-fun b_lambda!208369 () Bool)

(assert (= b_lambda!208363 (or b!5486880 b_lambda!208369)))

(declare-fun bs!1267093 () Bool)

(declare-fun d!1741656 () Bool)

(assert (= bs!1267093 (and d!1741656 b!5486880)))

(assert (=> bs!1267093 (= (dynLambda!24453 lambda!293378 (h!68860 (exprs!5296 cc!2))) (validRegex!7148 (h!68860 (exprs!5296 cc!2))))))

(declare-fun m!6501600 () Bool)

(assert (=> bs!1267093 m!6501600))

(assert (=> b!5487167 d!1741656))

(declare-fun b_lambda!208371 () Bool)

(assert (= b_lambda!208367 (or b!5486871 b_lambda!208371)))

(declare-fun bs!1267094 () Bool)

(declare-fun d!1741658 () Bool)

(assert (= bs!1267094 (and d!1741658 b!5486871)))

(declare-fun res!2340017 () Bool)

(declare-fun e!3395497 () Bool)

(assert (=> bs!1267094 (=> (not res!2340017) (not e!3395497))))

(assert (=> bs!1267094 (= res!2340017 (validRegex!7148 (h!68860 lt!2241066)))))

(assert (=> bs!1267094 (= (dynLambda!24453 lambda!293376 (h!68860 lt!2241066)) e!3395497)))

(declare-fun b!5487252 () Bool)

(assert (=> b!5487252 (= e!3395497 (matchR!7597 (h!68860 lt!2241066) s!2326))))

(assert (= (and bs!1267094 res!2340017) b!5487252))

(declare-fun m!6501602 () Bool)

(assert (=> bs!1267094 m!6501602))

(declare-fun m!6501604 () Bool)

(assert (=> b!5487252 m!6501604))

(assert (=> b!5487191 d!1741658))

(declare-fun b_lambda!208373 () Bool)

(assert (= b_lambda!208365 (or b!5486871 b_lambda!208373)))

(declare-fun bs!1267095 () Bool)

(declare-fun d!1741660 () Bool)

(assert (= bs!1267095 (and d!1741660 b!5486871)))

(declare-fun res!2340018 () Bool)

(declare-fun e!3395498 () Bool)

(assert (=> bs!1267095 (=> (not res!2340018) (not e!3395498))))

(assert (=> bs!1267095 (= res!2340018 (validRegex!7148 lt!2241122))))

(assert (=> bs!1267095 (= (dynLambda!24453 lambda!293376 lt!2241122) e!3395498)))

(declare-fun b!5487253 () Bool)

(assert (=> b!5487253 (= e!3395498 (matchR!7597 lt!2241122 s!2326))))

(assert (= (and bs!1267095 res!2340018) b!5487253))

(declare-fun m!6501606 () Bool)

(assert (=> bs!1267095 m!6501606))

(declare-fun m!6501608 () Bool)

(assert (=> b!5487253 m!6501608))

(assert (=> d!1741650 d!1741660))

(push 1)

(assert (not b!5487231))

(assert (not d!1741638))

(assert (not d!1741604))

(assert (not b!5487138))

(assert (not d!1741622))

(assert (not b!5487253))

(assert (not b_lambda!208371))

(assert (not bs!1267094))

(assert (not b!5487189))

(assert (not d!1741614))

(assert (not b!5487161))

(assert (not d!1741602))

(assert (not b!5487217))

(assert (not bm!404756))

(assert (not b!5487226))

(assert (not b!5487230))

(assert (not d!1741648))

(assert (not d!1741606))

(assert (not d!1741650))

(assert (not d!1741630))

(assert (not d!1741654))

(assert (not bm!404741))

(assert (not d!1741642))

(assert (not b!5487174))

(assert (not b!5487126))

(assert (not b!5487194))

(assert (not b!5487190))

(assert (not b!5487199))

(assert (not b!5487139))

(assert (not b!5487055))

(assert (not b!5487235))

(assert (not b!5487242))

(assert (not b!5487252))

(assert (not b!5487049))

(assert (not b!5487132))

(assert (not d!1741628))

(assert (not bm!404743))

(assert (not d!1741620))

(assert (not b!5487220))

(assert (not b!5487233))

(assert tp_is_empty!40077)

(assert (not b!5487223))

(assert (not b!5487168))

(assert (not b!5487140))

(assert (not b!5487130))

(assert (not b!5487243))

(assert (not b!5487141))

(assert (not d!1741610))

(assert (not b!5487218))

(assert (not bs!1267093))

(assert (not bm!404740))

(assert (not b!5487216))

(assert (not d!1741636))

(assert (not b!5486993))

(assert (not b_lambda!208369))

(assert (not b!5487007))

(assert (not b!5487229))

(assert (not b!5487146))

(assert (not b!5487127))

(assert (not bm!404757))

(assert (not b!5487227))

(assert (not b_lambda!208373))

(assert (not b!5487250))

(assert (not bs!1267095))

(assert (not b!5487221))

(assert (not b!5487144))

(assert (not b!5487152))

(assert (not b!5487251))

(assert (not b!5487002))

(assert (not bm!404750))

(assert (not b!5487204))

(assert (not b!5487234))

(assert (not b!5487225))

(assert (not bm!404749))

(assert (not b!5487125))

(assert (not setNonEmpty!36204))

(assert (not bm!404744))

(assert (not b!5487222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


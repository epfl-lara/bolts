; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697610 () Bool)

(assert start!697610)

(declare-fun b!7156699 () Bool)

(declare-fun res!2918118 () Bool)

(declare-fun e!4299290 () Bool)

(assert (=> b!7156699 (=> (not res!2918118) (not e!4299290))))

(declare-datatypes ((C!36840 0))(
  ( (C!36841 (val!28368 Int)) )
))
(declare-datatypes ((Regex!18283 0))(
  ( (ElementMatch!18283 (c!1333682 C!36840)) (Concat!27128 (regOne!37078 Regex!18283) (regTwo!37078 Regex!18283)) (EmptyExpr!18283) (Star!18283 (reg!18612 Regex!18283)) (EmptyLang!18283) (Union!18283 (regOne!37079 Regex!18283) (regTwo!37079 Regex!18283)) )
))
(declare-datatypes ((List!69602 0))(
  ( (Nil!69478) (Cons!69478 (h!75926 Regex!18283) (t!383619 List!69602)) )
))
(declare-datatypes ((Context!14470 0))(
  ( (Context!14471 (exprs!7735 List!69602)) )
))
(declare-datatypes ((List!69603 0))(
  ( (Nil!69479) (Cons!69479 (h!75927 Context!14470) (t!383620 List!69603)) )
))
(declare-fun zl!300 () List!69603)

(declare-fun c!7723 () Context!14470)

(get-info :version)

(assert (=> b!7156699 (= res!2918118 (and ((_ is Cons!69479) zl!300) (= (h!75927 zl!300) c!7723)))))

(declare-fun res!2918119 () Bool)

(assert (=> start!697610 (=> (not res!2918119) (not e!4299290))))

(declare-fun contains!20678 (List!69603 Context!14470) Bool)

(assert (=> start!697610 (= res!2918119 (contains!20678 zl!300 c!7723))))

(assert (=> start!697610 e!4299290))

(declare-fun e!4299292 () Bool)

(assert (=> start!697610 e!4299292))

(declare-fun e!4299291 () Bool)

(declare-fun inv!88729 (Context!14470) Bool)

(assert (=> start!697610 (and (inv!88729 c!7723) e!4299291)))

(declare-fun b!7156700 () Bool)

(declare-fun tp!1979043 () Bool)

(assert (=> b!7156700 (= e!4299291 tp!1979043)))

(declare-fun b!7156701 () Bool)

(declare-fun contains!20679 (List!69602 Regex!18283) Bool)

(declare-fun unfocusZipperList!2276 (List!69603) List!69602)

(declare-fun generalisedConcat!2431 (List!69602) Regex!18283)

(assert (=> b!7156701 (= e!4299290 (not (contains!20679 (unfocusZipperList!2276 zl!300) (generalisedConcat!2431 (exprs!7735 c!7723)))))))

(declare-fun b!7156702 () Bool)

(declare-fun e!4299293 () Bool)

(declare-fun tp!1979044 () Bool)

(assert (=> b!7156702 (= e!4299293 tp!1979044)))

(declare-fun tp!1979045 () Bool)

(declare-fun b!7156703 () Bool)

(assert (=> b!7156703 (= e!4299292 (and (inv!88729 (h!75927 zl!300)) e!4299293 tp!1979045))))

(assert (= (and start!697610 res!2918119) b!7156699))

(assert (= (and b!7156699 res!2918118) b!7156701))

(assert (= b!7156703 b!7156702))

(assert (= (and start!697610 ((_ is Cons!69479) zl!300)) b!7156703))

(assert (= start!697610 b!7156700))

(declare-fun m!7863282 () Bool)

(assert (=> start!697610 m!7863282))

(declare-fun m!7863284 () Bool)

(assert (=> start!697610 m!7863284))

(declare-fun m!7863286 () Bool)

(assert (=> b!7156701 m!7863286))

(declare-fun m!7863288 () Bool)

(assert (=> b!7156701 m!7863288))

(assert (=> b!7156701 m!7863286))

(assert (=> b!7156701 m!7863288))

(declare-fun m!7863290 () Bool)

(assert (=> b!7156701 m!7863290))

(declare-fun m!7863292 () Bool)

(assert (=> b!7156703 m!7863292))

(check-sat (not b!7156701) (not start!697610) (not b!7156702) (not b!7156700) (not b!7156703))
(check-sat)
(get-model)

(declare-fun d!2229776 () Bool)

(declare-fun lambda!436492 () Int)

(declare-fun forall!17121 (List!69602 Int) Bool)

(assert (=> d!2229776 (= (inv!88729 (h!75927 zl!300)) (forall!17121 (exprs!7735 (h!75927 zl!300)) lambda!436492))))

(declare-fun bs!1889983 () Bool)

(assert (= bs!1889983 d!2229776))

(declare-fun m!7863316 () Bool)

(assert (=> bs!1889983 m!7863316))

(assert (=> b!7156703 d!2229776))

(declare-fun d!2229788 () Bool)

(declare-fun lt!2569360 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14260 (List!69603) (InoxSet Context!14470))

(assert (=> d!2229788 (= lt!2569360 (select (content!14260 zl!300) c!7723))))

(declare-fun e!4299342 () Bool)

(assert (=> d!2229788 (= lt!2569360 e!4299342)))

(declare-fun res!2918142 () Bool)

(assert (=> d!2229788 (=> (not res!2918142) (not e!4299342))))

(assert (=> d!2229788 (= res!2918142 ((_ is Cons!69479) zl!300))))

(assert (=> d!2229788 (= (contains!20678 zl!300 c!7723) lt!2569360)))

(declare-fun b!7156770 () Bool)

(declare-fun e!4299341 () Bool)

(assert (=> b!7156770 (= e!4299342 e!4299341)))

(declare-fun res!2918143 () Bool)

(assert (=> b!7156770 (=> res!2918143 e!4299341)))

(assert (=> b!7156770 (= res!2918143 (= (h!75927 zl!300) c!7723))))

(declare-fun b!7156771 () Bool)

(assert (=> b!7156771 (= e!4299341 (contains!20678 (t!383620 zl!300) c!7723))))

(assert (= (and d!2229788 res!2918142) b!7156770))

(assert (= (and b!7156770 (not res!2918143)) b!7156771))

(declare-fun m!7863340 () Bool)

(assert (=> d!2229788 m!7863340))

(declare-fun m!7863342 () Bool)

(assert (=> d!2229788 m!7863342))

(declare-fun m!7863344 () Bool)

(assert (=> b!7156771 m!7863344))

(assert (=> start!697610 d!2229788))

(declare-fun bs!1889984 () Bool)

(declare-fun d!2229790 () Bool)

(assert (= bs!1889984 (and d!2229790 d!2229776)))

(declare-fun lambda!436493 () Int)

(assert (=> bs!1889984 (= lambda!436493 lambda!436492)))

(assert (=> d!2229790 (= (inv!88729 c!7723) (forall!17121 (exprs!7735 c!7723) lambda!436493))))

(declare-fun bs!1889985 () Bool)

(assert (= bs!1889985 d!2229790))

(declare-fun m!7863346 () Bool)

(assert (=> bs!1889985 m!7863346))

(assert (=> start!697610 d!2229790))

(declare-fun d!2229792 () Bool)

(declare-fun lt!2569363 () Bool)

(declare-fun content!14261 (List!69602) (InoxSet Regex!18283))

(assert (=> d!2229792 (= lt!2569363 (select (content!14261 (unfocusZipperList!2276 zl!300)) (generalisedConcat!2431 (exprs!7735 c!7723))))))

(declare-fun e!4299347 () Bool)

(assert (=> d!2229792 (= lt!2569363 e!4299347)))

(declare-fun res!2918148 () Bool)

(assert (=> d!2229792 (=> (not res!2918148) (not e!4299347))))

(assert (=> d!2229792 (= res!2918148 ((_ is Cons!69478) (unfocusZipperList!2276 zl!300)))))

(assert (=> d!2229792 (= (contains!20679 (unfocusZipperList!2276 zl!300) (generalisedConcat!2431 (exprs!7735 c!7723))) lt!2569363)))

(declare-fun b!7156776 () Bool)

(declare-fun e!4299348 () Bool)

(assert (=> b!7156776 (= e!4299347 e!4299348)))

(declare-fun res!2918149 () Bool)

(assert (=> b!7156776 (=> res!2918149 e!4299348)))

(assert (=> b!7156776 (= res!2918149 (= (h!75926 (unfocusZipperList!2276 zl!300)) (generalisedConcat!2431 (exprs!7735 c!7723))))))

(declare-fun b!7156777 () Bool)

(assert (=> b!7156777 (= e!4299348 (contains!20679 (t!383619 (unfocusZipperList!2276 zl!300)) (generalisedConcat!2431 (exprs!7735 c!7723))))))

(assert (= (and d!2229792 res!2918148) b!7156776))

(assert (= (and b!7156776 (not res!2918149)) b!7156777))

(assert (=> d!2229792 m!7863286))

(declare-fun m!7863348 () Bool)

(assert (=> d!2229792 m!7863348))

(assert (=> d!2229792 m!7863288))

(declare-fun m!7863350 () Bool)

(assert (=> d!2229792 m!7863350))

(assert (=> b!7156777 m!7863288))

(declare-fun m!7863352 () Bool)

(assert (=> b!7156777 m!7863352))

(assert (=> b!7156701 d!2229792))

(declare-fun bs!1889986 () Bool)

(declare-fun d!2229794 () Bool)

(assert (= bs!1889986 (and d!2229794 d!2229776)))

(declare-fun lambda!436496 () Int)

(assert (=> bs!1889986 (= lambda!436496 lambda!436492)))

(declare-fun bs!1889987 () Bool)

(assert (= bs!1889987 (and d!2229794 d!2229790)))

(assert (=> bs!1889987 (= lambda!436496 lambda!436493)))

(declare-fun lt!2569366 () List!69602)

(assert (=> d!2229794 (forall!17121 lt!2569366 lambda!436496)))

(declare-fun e!4299351 () List!69602)

(assert (=> d!2229794 (= lt!2569366 e!4299351)))

(declare-fun c!1333700 () Bool)

(assert (=> d!2229794 (= c!1333700 ((_ is Cons!69479) zl!300))))

(assert (=> d!2229794 (= (unfocusZipperList!2276 zl!300) lt!2569366)))

(declare-fun b!7156782 () Bool)

(assert (=> b!7156782 (= e!4299351 (Cons!69478 (generalisedConcat!2431 (exprs!7735 (h!75927 zl!300))) (unfocusZipperList!2276 (t!383620 zl!300))))))

(declare-fun b!7156783 () Bool)

(assert (=> b!7156783 (= e!4299351 Nil!69478)))

(assert (= (and d!2229794 c!1333700) b!7156782))

(assert (= (and d!2229794 (not c!1333700)) b!7156783))

(declare-fun m!7863354 () Bool)

(assert (=> d!2229794 m!7863354))

(declare-fun m!7863356 () Bool)

(assert (=> b!7156782 m!7863356))

(declare-fun m!7863358 () Bool)

(assert (=> b!7156782 m!7863358))

(assert (=> b!7156701 d!2229794))

(declare-fun bs!1889988 () Bool)

(declare-fun d!2229796 () Bool)

(assert (= bs!1889988 (and d!2229796 d!2229776)))

(declare-fun lambda!436499 () Int)

(assert (=> bs!1889988 (= lambda!436499 lambda!436492)))

(declare-fun bs!1889989 () Bool)

(assert (= bs!1889989 (and d!2229796 d!2229790)))

(assert (=> bs!1889989 (= lambda!436499 lambda!436493)))

(declare-fun bs!1889990 () Bool)

(assert (= bs!1889990 (and d!2229796 d!2229794)))

(assert (=> bs!1889990 (= lambda!436499 lambda!436496)))

(declare-fun b!7156804 () Bool)

(declare-fun e!4299367 () Regex!18283)

(declare-fun e!4299364 () Regex!18283)

(assert (=> b!7156804 (= e!4299367 e!4299364)))

(declare-fun c!1333712 () Bool)

(assert (=> b!7156804 (= c!1333712 ((_ is Cons!69478) (exprs!7735 c!7723)))))

(declare-fun b!7156805 () Bool)

(declare-fun e!4299368 () Bool)

(declare-fun lt!2569369 () Regex!18283)

(declare-fun head!14570 (List!69602) Regex!18283)

(assert (=> b!7156805 (= e!4299368 (= lt!2569369 (head!14570 (exprs!7735 c!7723))))))

(declare-fun b!7156806 () Bool)

(assert (=> b!7156806 (= e!4299367 (h!75926 (exprs!7735 c!7723)))))

(declare-fun b!7156807 () Bool)

(declare-fun isConcat!1597 (Regex!18283) Bool)

(assert (=> b!7156807 (= e!4299368 (isConcat!1597 lt!2569369))))

(declare-fun e!4299365 () Bool)

(assert (=> d!2229796 e!4299365))

(declare-fun res!2918154 () Bool)

(assert (=> d!2229796 (=> (not res!2918154) (not e!4299365))))

(declare-fun validRegex!9420 (Regex!18283) Bool)

(assert (=> d!2229796 (= res!2918154 (validRegex!9420 lt!2569369))))

(assert (=> d!2229796 (= lt!2569369 e!4299367)))

(declare-fun c!1333710 () Bool)

(declare-fun e!4299366 () Bool)

(assert (=> d!2229796 (= c!1333710 e!4299366)))

(declare-fun res!2918155 () Bool)

(assert (=> d!2229796 (=> (not res!2918155) (not e!4299366))))

(assert (=> d!2229796 (= res!2918155 ((_ is Cons!69478) (exprs!7735 c!7723)))))

(assert (=> d!2229796 (forall!17121 (exprs!7735 c!7723) lambda!436499)))

(assert (=> d!2229796 (= (generalisedConcat!2431 (exprs!7735 c!7723)) lt!2569369)))

(declare-fun b!7156808 () Bool)

(declare-fun e!4299369 () Bool)

(declare-fun isEmptyExpr!2075 (Regex!18283) Bool)

(assert (=> b!7156808 (= e!4299369 (isEmptyExpr!2075 lt!2569369))))

(declare-fun b!7156809 () Bool)

(declare-fun isEmpty!40138 (List!69602) Bool)

(assert (=> b!7156809 (= e!4299366 (isEmpty!40138 (t!383619 (exprs!7735 c!7723))))))

(declare-fun b!7156810 () Bool)

(assert (=> b!7156810 (= e!4299364 (Concat!27128 (h!75926 (exprs!7735 c!7723)) (generalisedConcat!2431 (t!383619 (exprs!7735 c!7723)))))))

(declare-fun b!7156811 () Bool)

(assert (=> b!7156811 (= e!4299365 e!4299369)))

(declare-fun c!1333711 () Bool)

(assert (=> b!7156811 (= c!1333711 (isEmpty!40138 (exprs!7735 c!7723)))))

(declare-fun b!7156812 () Bool)

(assert (=> b!7156812 (= e!4299369 e!4299368)))

(declare-fun c!1333709 () Bool)

(declare-fun tail!14039 (List!69602) List!69602)

(assert (=> b!7156812 (= c!1333709 (isEmpty!40138 (tail!14039 (exprs!7735 c!7723))))))

(declare-fun b!7156813 () Bool)

(assert (=> b!7156813 (= e!4299364 EmptyExpr!18283)))

(assert (= (and d!2229796 res!2918155) b!7156809))

(assert (= (and d!2229796 c!1333710) b!7156806))

(assert (= (and d!2229796 (not c!1333710)) b!7156804))

(assert (= (and b!7156804 c!1333712) b!7156810))

(assert (= (and b!7156804 (not c!1333712)) b!7156813))

(assert (= (and d!2229796 res!2918154) b!7156811))

(assert (= (and b!7156811 c!1333711) b!7156808))

(assert (= (and b!7156811 (not c!1333711)) b!7156812))

(assert (= (and b!7156812 c!1333709) b!7156805))

(assert (= (and b!7156812 (not c!1333709)) b!7156807))

(declare-fun m!7863360 () Bool)

(assert (=> b!7156807 m!7863360))

(declare-fun m!7863362 () Bool)

(assert (=> b!7156811 m!7863362))

(declare-fun m!7863364 () Bool)

(assert (=> b!7156812 m!7863364))

(assert (=> b!7156812 m!7863364))

(declare-fun m!7863366 () Bool)

(assert (=> b!7156812 m!7863366))

(declare-fun m!7863368 () Bool)

(assert (=> d!2229796 m!7863368))

(declare-fun m!7863370 () Bool)

(assert (=> d!2229796 m!7863370))

(declare-fun m!7863372 () Bool)

(assert (=> b!7156810 m!7863372))

(declare-fun m!7863374 () Bool)

(assert (=> b!7156809 m!7863374))

(declare-fun m!7863376 () Bool)

(assert (=> b!7156808 m!7863376))

(declare-fun m!7863378 () Bool)

(assert (=> b!7156805 m!7863378))

(assert (=> b!7156701 d!2229796))

(declare-fun b!7156818 () Bool)

(declare-fun e!4299372 () Bool)

(declare-fun tp!1979064 () Bool)

(declare-fun tp!1979065 () Bool)

(assert (=> b!7156818 (= e!4299372 (and tp!1979064 tp!1979065))))

(assert (=> b!7156702 (= tp!1979044 e!4299372)))

(assert (= (and b!7156702 ((_ is Cons!69478) (exprs!7735 (h!75927 zl!300)))) b!7156818))

(declare-fun b!7156826 () Bool)

(declare-fun e!4299378 () Bool)

(declare-fun tp!1979070 () Bool)

(assert (=> b!7156826 (= e!4299378 tp!1979070)))

(declare-fun e!4299377 () Bool)

(declare-fun b!7156825 () Bool)

(declare-fun tp!1979071 () Bool)

(assert (=> b!7156825 (= e!4299377 (and (inv!88729 (h!75927 (t!383620 zl!300))) e!4299378 tp!1979071))))

(assert (=> b!7156703 (= tp!1979045 e!4299377)))

(assert (= b!7156825 b!7156826))

(assert (= (and b!7156703 ((_ is Cons!69479) (t!383620 zl!300))) b!7156825))

(declare-fun m!7863380 () Bool)

(assert (=> b!7156825 m!7863380))

(declare-fun b!7156827 () Bool)

(declare-fun e!4299379 () Bool)

(declare-fun tp!1979072 () Bool)

(declare-fun tp!1979073 () Bool)

(assert (=> b!7156827 (= e!4299379 (and tp!1979072 tp!1979073))))

(assert (=> b!7156700 (= tp!1979043 e!4299379)))

(assert (= (and b!7156700 ((_ is Cons!69478) (exprs!7735 c!7723))) b!7156827))

(check-sat (not b!7156777) (not b!7156808) (not b!7156811) (not b!7156827) (not d!2229792) (not b!7156771) (not b!7156782) (not d!2229788) (not b!7156825) (not d!2229796) (not b!7156810) (not b!7156809) (not b!7156807) (not d!2229794) (not b!7156818) (not d!2229776) (not b!7156805) (not b!7156812) (not b!7156826) (not d!2229790))
(check-sat)

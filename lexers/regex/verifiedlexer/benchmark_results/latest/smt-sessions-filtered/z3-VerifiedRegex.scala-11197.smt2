; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584458 () Bool)

(assert start!584458)

(declare-fun b!5652024 () Bool)

(assert (=> b!5652024 true))

(assert (=> b!5652024 true))

(declare-fun lambda!304086 () Int)

(declare-fun lambda!304085 () Int)

(assert (=> b!5652024 (not (= lambda!304086 lambda!304085))))

(assert (=> b!5652024 true))

(assert (=> b!5652024 true))

(declare-fun b!5652029 () Bool)

(assert (=> b!5652029 true))

(declare-fun e!3481467 () Bool)

(declare-fun e!3481460 () Bool)

(assert (=> b!5652024 (= e!3481467 e!3481460)))

(declare-fun res!2390998 () Bool)

(assert (=> b!5652024 (=> res!2390998 e!3481460)))

(declare-datatypes ((C!31552 0))(
  ( (C!31553 (val!25478 Int)) )
))
(declare-datatypes ((List!63222 0))(
  ( (Nil!63098) (Cons!63098 (h!69546 C!31552) (t!376522 List!63222)) )
))
(declare-fun s!2326 () List!63222)

(declare-fun lt!2265996 () Bool)

(declare-fun lt!2265986 () Bool)

(get-info :version)

(assert (=> b!5652024 (= res!2390998 (or (not (= lt!2265986 lt!2265996)) ((_ is Nil!63098) s!2326)))))

(declare-fun Exists!2741 (Int) Bool)

(assert (=> b!5652024 (= (Exists!2741 lambda!304085) (Exists!2741 lambda!304086))))

(declare-datatypes ((Unit!156096 0))(
  ( (Unit!156097) )
))
(declare-fun lt!2265988 () Unit!156096)

(declare-datatypes ((Regex!15641 0))(
  ( (ElementMatch!15641 (c!993471 C!31552)) (Concat!24486 (regOne!31794 Regex!15641) (regTwo!31794 Regex!15641)) (EmptyExpr!15641) (Star!15641 (reg!15970 Regex!15641)) (EmptyLang!15641) (Union!15641 (regOne!31795 Regex!15641) (regTwo!31795 Regex!15641)) )
))
(declare-fun r!7292 () Regex!15641)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1370 (Regex!15641 Regex!15641 List!63222) Unit!156096)

(assert (=> b!5652024 (= lt!2265988 (lemmaExistCutMatchRandMatchRSpecEquivalent!1370 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326))))

(assert (=> b!5652024 (= lt!2265996 (Exists!2741 lambda!304085))))

(declare-datatypes ((tuple2!65476 0))(
  ( (tuple2!65477 (_1!36041 List!63222) (_2!36041 List!63222)) )
))
(declare-datatypes ((Option!15650 0))(
  ( (None!15649) (Some!15649 (v!51696 tuple2!65476)) )
))
(declare-fun isDefined!12353 (Option!15650) Bool)

(declare-fun findConcatSeparation!2064 (Regex!15641 Regex!15641 List!63222 List!63222 List!63222) Option!15650)

(assert (=> b!5652024 (= lt!2265996 (isDefined!12353 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326)))))

(declare-fun lt!2265987 () Unit!156096)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1828 (Regex!15641 Regex!15641 List!63222) Unit!156096)

(assert (=> b!5652024 (= lt!2265987 (lemmaFindConcatSeparationEquivalentToExists!1828 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326))))

(declare-fun b!5652025 () Bool)

(declare-fun e!3481458 () Bool)

(declare-fun nullable!5673 (Regex!15641) Bool)

(assert (=> b!5652025 (= e!3481458 (nullable!5673 (regOne!31794 (regOne!31794 r!7292))))))

(declare-fun setRes!37766 () Bool)

(declare-fun tp!1565901 () Bool)

(declare-datatypes ((List!63223 0))(
  ( (Nil!63099) (Cons!63099 (h!69547 Regex!15641) (t!376523 List!63223)) )
))
(declare-datatypes ((Context!10050 0))(
  ( (Context!10051 (exprs!5525 List!63223)) )
))
(declare-fun setElem!37766 () Context!10050)

(declare-fun e!3481463 () Bool)

(declare-fun setNonEmpty!37766 () Bool)

(declare-fun inv!82349 (Context!10050) Bool)

(assert (=> setNonEmpty!37766 (= setRes!37766 (and tp!1565901 (inv!82349 setElem!37766) e!3481463))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10050))

(declare-fun setRest!37766 () (InoxSet Context!10050))

(assert (=> setNonEmpty!37766 (= z!1189 ((_ map or) (store ((as const (Array Context!10050 Bool)) false) setElem!37766 true) setRest!37766))))

(declare-fun setIsEmpty!37766 () Bool)

(assert (=> setIsEmpty!37766 setRes!37766))

(declare-fun b!5652026 () Bool)

(declare-fun res!2390992 () Bool)

(assert (=> b!5652026 (=> res!2390992 e!3481467)))

(assert (=> b!5652026 (= res!2390992 (or ((_ is EmptyExpr!15641) r!7292) ((_ is EmptyLang!15641) r!7292) ((_ is ElementMatch!15641) r!7292) ((_ is Union!15641) r!7292) (not ((_ is Concat!24486) r!7292))))))

(declare-fun b!5652027 () Bool)

(declare-fun e!3481459 () Bool)

(declare-fun tp_is_empty!40535 () Bool)

(assert (=> b!5652027 (= e!3481459 tp_is_empty!40535)))

(declare-fun b!5652028 () Bool)

(declare-fun res!2390999 () Bool)

(assert (=> b!5652028 (=> res!2390999 e!3481467)))

(declare-datatypes ((List!63224 0))(
  ( (Nil!63100) (Cons!63100 (h!69548 Context!10050) (t!376524 List!63224)) )
))
(declare-fun zl!343 () List!63224)

(declare-fun generalisedUnion!1504 (List!63223) Regex!15641)

(declare-fun unfocusZipperList!1069 (List!63224) List!63223)

(assert (=> b!5652028 (= res!2390999 (not (= r!7292 (generalisedUnion!1504 (unfocusZipperList!1069 zl!343)))))))

(declare-fun res!2391000 () Bool)

(declare-fun e!3481461 () Bool)

(assert (=> start!584458 (=> (not res!2391000) (not e!3481461))))

(declare-fun validRegex!7377 (Regex!15641) Bool)

(assert (=> start!584458 (= res!2391000 (validRegex!7377 r!7292))))

(assert (=> start!584458 e!3481461))

(assert (=> start!584458 e!3481459))

(declare-fun condSetEmpty!37766 () Bool)

(assert (=> start!584458 (= condSetEmpty!37766 (= z!1189 ((as const (Array Context!10050 Bool)) false)))))

(assert (=> start!584458 setRes!37766))

(declare-fun e!3481462 () Bool)

(assert (=> start!584458 e!3481462))

(declare-fun e!3481465 () Bool)

(assert (=> start!584458 e!3481465))

(declare-fun e!3481468 () Bool)

(assert (=> b!5652029 (= e!3481460 e!3481468)))

(declare-fun res!2390989 () Bool)

(assert (=> b!5652029 (=> res!2390989 e!3481468)))

(assert (=> b!5652029 (= res!2390989 (or (and ((_ is ElementMatch!15641) (regOne!31794 r!7292)) (= (c!993471 (regOne!31794 r!7292)) (h!69546 s!2326))) ((_ is Union!15641) (regOne!31794 r!7292))))))

(declare-fun lt!2265994 () Unit!156096)

(declare-fun e!3481466 () Unit!156096)

(assert (=> b!5652029 (= lt!2265994 e!3481466)))

(declare-fun c!993470 () Bool)

(assert (=> b!5652029 (= c!993470 (nullable!5673 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun lambda!304087 () Int)

(declare-fun flatMap!1254 ((InoxSet Context!10050) Int) (InoxSet Context!10050))

(declare-fun derivationStepZipperUp!909 (Context!10050 C!31552) (InoxSet Context!10050))

(assert (=> b!5652029 (= (flatMap!1254 z!1189 lambda!304087) (derivationStepZipperUp!909 (h!69548 zl!343) (h!69546 s!2326)))))

(declare-fun lt!2265990 () Unit!156096)

(declare-fun lemmaFlatMapOnSingletonSet!786 ((InoxSet Context!10050) Context!10050 Int) Unit!156096)

(assert (=> b!5652029 (= lt!2265990 (lemmaFlatMapOnSingletonSet!786 z!1189 (h!69548 zl!343) lambda!304087))))

(declare-fun lt!2265985 () (InoxSet Context!10050))

(declare-fun lt!2265993 () Context!10050)

(assert (=> b!5652029 (= lt!2265985 (derivationStepZipperUp!909 lt!2265993 (h!69546 s!2326)))))

(declare-fun lt!2265989 () (InoxSet Context!10050))

(declare-fun derivationStepZipperDown!983 (Regex!15641 Context!10050 C!31552) (InoxSet Context!10050))

(assert (=> b!5652029 (= lt!2265989 (derivationStepZipperDown!983 (h!69547 (exprs!5525 (h!69548 zl!343))) lt!2265993 (h!69546 s!2326)))))

(assert (=> b!5652029 (= lt!2265993 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun lt!2265992 () (InoxSet Context!10050))

(assert (=> b!5652029 (= lt!2265992 (derivationStepZipperUp!909 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))) (h!69546 s!2326)))))

(declare-fun b!5652030 () Bool)

(declare-fun tp!1565904 () Bool)

(declare-fun tp!1565906 () Bool)

(assert (=> b!5652030 (= e!3481459 (and tp!1565904 tp!1565906))))

(declare-fun b!5652031 () Bool)

(declare-fun tp!1565905 () Bool)

(assert (=> b!5652031 (= e!3481465 (and tp_is_empty!40535 tp!1565905))))

(declare-fun e!3481464 () Bool)

(declare-fun tp!1565909 () Bool)

(declare-fun b!5652032 () Bool)

(assert (=> b!5652032 (= e!3481462 (and (inv!82349 (h!69548 zl!343)) e!3481464 tp!1565909))))

(declare-fun b!5652033 () Bool)

(declare-fun tp!1565900 () Bool)

(assert (=> b!5652033 (= e!3481463 tp!1565900)))

(declare-fun b!5652034 () Bool)

(declare-fun res!2390986 () Bool)

(assert (=> b!5652034 (=> res!2390986 e!3481468)))

(assert (=> b!5652034 (= res!2390986 (not ((_ is Concat!24486) (regOne!31794 r!7292))))))

(declare-fun b!5652035 () Bool)

(declare-fun tp!1565903 () Bool)

(assert (=> b!5652035 (= e!3481459 tp!1565903)))

(declare-fun b!5652036 () Bool)

(assert (=> b!5652036 (= e!3481461 (not e!3481467))))

(declare-fun res!2390987 () Bool)

(assert (=> b!5652036 (=> res!2390987 e!3481467)))

(assert (=> b!5652036 (= res!2390987 (not ((_ is Cons!63100) zl!343)))))

(declare-fun matchRSpec!2744 (Regex!15641 List!63222) Bool)

(assert (=> b!5652036 (= lt!2265986 (matchRSpec!2744 r!7292 s!2326))))

(declare-fun matchR!7826 (Regex!15641 List!63222) Bool)

(assert (=> b!5652036 (= lt!2265986 (matchR!7826 r!7292 s!2326))))

(declare-fun lt!2265991 () Unit!156096)

(declare-fun mainMatchTheorem!2744 (Regex!15641 List!63222) Unit!156096)

(assert (=> b!5652036 (= lt!2265991 (mainMatchTheorem!2744 r!7292 s!2326))))

(declare-fun b!5652037 () Bool)

(declare-fun Unit!156098 () Unit!156096)

(assert (=> b!5652037 (= e!3481466 Unit!156098)))

(declare-fun b!5652038 () Bool)

(declare-fun res!2390985 () Bool)

(assert (=> b!5652038 (=> res!2390985 e!3481460)))

(declare-fun isEmpty!34941 (List!63223) Bool)

(assert (=> b!5652038 (= res!2390985 (isEmpty!34941 (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5652039 () Bool)

(declare-fun Unit!156099 () Unit!156096)

(assert (=> b!5652039 (= e!3481466 Unit!156099)))

(declare-fun lt!2265995 () Unit!156096)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!666 ((InoxSet Context!10050) (InoxSet Context!10050) List!63222) Unit!156096)

(assert (=> b!5652039 (= lt!2265995 (lemmaZipperConcatMatchesSameAsBothZippers!666 lt!2265989 lt!2265985 (t!376522 s!2326)))))

(declare-fun res!2390993 () Bool)

(declare-fun matchZipper!1779 ((InoxSet Context!10050) List!63222) Bool)

(assert (=> b!5652039 (= res!2390993 (matchZipper!1779 lt!2265989 (t!376522 s!2326)))))

(declare-fun e!3481457 () Bool)

(assert (=> b!5652039 (=> res!2390993 e!3481457)))

(assert (=> b!5652039 (= (matchZipper!1779 ((_ map or) lt!2265989 lt!2265985) (t!376522 s!2326)) e!3481457)))

(declare-fun b!5652040 () Bool)

(declare-fun tp!1565902 () Bool)

(declare-fun tp!1565907 () Bool)

(assert (=> b!5652040 (= e!3481459 (and tp!1565902 tp!1565907))))

(declare-fun b!5652041 () Bool)

(declare-fun res!2390988 () Bool)

(assert (=> b!5652041 (=> (not res!2390988) (not e!3481461))))

(declare-fun unfocusZipper!1383 (List!63224) Regex!15641)

(assert (=> b!5652041 (= res!2390988 (= r!7292 (unfocusZipper!1383 zl!343)))))

(declare-fun b!5652042 () Bool)

(declare-fun tp!1565908 () Bool)

(assert (=> b!5652042 (= e!3481464 tp!1565908)))

(declare-fun b!5652043 () Bool)

(assert (=> b!5652043 (= e!3481457 (matchZipper!1779 lt!2265985 (t!376522 s!2326)))))

(declare-fun b!5652044 () Bool)

(assert (=> b!5652044 (= e!3481468 (= lt!2265989 (derivationStepZipperDown!983 (regOne!31794 (regOne!31794 r!7292)) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (h!69546 s!2326))))))

(declare-fun b!5652045 () Bool)

(declare-fun res!2390997 () Bool)

(assert (=> b!5652045 (=> (not res!2390997) (not e!3481461))))

(declare-fun toList!9425 ((InoxSet Context!10050)) List!63224)

(assert (=> b!5652045 (= res!2390997 (= (toList!9425 z!1189) zl!343))))

(declare-fun b!5652046 () Bool)

(declare-fun res!2390995 () Bool)

(assert (=> b!5652046 (=> res!2390995 e!3481467)))

(declare-fun generalisedConcat!1256 (List!63223) Regex!15641)

(assert (=> b!5652046 (= res!2390995 (not (= r!7292 (generalisedConcat!1256 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5652047 () Bool)

(declare-fun res!2390990 () Bool)

(assert (=> b!5652047 (=> res!2390990 e!3481467)))

(declare-fun isEmpty!34942 (List!63224) Bool)

(assert (=> b!5652047 (= res!2390990 (not (isEmpty!34942 (t!376524 zl!343))))))

(declare-fun b!5652048 () Bool)

(declare-fun res!2390991 () Bool)

(assert (=> b!5652048 (=> res!2390991 e!3481468)))

(assert (=> b!5652048 (= res!2390991 e!3481458)))

(declare-fun res!2390996 () Bool)

(assert (=> b!5652048 (=> (not res!2390996) (not e!3481458))))

(assert (=> b!5652048 (= res!2390996 ((_ is Concat!24486) (regOne!31794 r!7292)))))

(declare-fun b!5652049 () Bool)

(declare-fun res!2390994 () Bool)

(assert (=> b!5652049 (=> res!2390994 e!3481467)))

(assert (=> b!5652049 (= res!2390994 (not ((_ is Cons!63099) (exprs!5525 (h!69548 zl!343)))))))

(assert (= (and start!584458 res!2391000) b!5652045))

(assert (= (and b!5652045 res!2390997) b!5652041))

(assert (= (and b!5652041 res!2390988) b!5652036))

(assert (= (and b!5652036 (not res!2390987)) b!5652047))

(assert (= (and b!5652047 (not res!2390990)) b!5652046))

(assert (= (and b!5652046 (not res!2390995)) b!5652049))

(assert (= (and b!5652049 (not res!2390994)) b!5652028))

(assert (= (and b!5652028 (not res!2390999)) b!5652026))

(assert (= (and b!5652026 (not res!2390992)) b!5652024))

(assert (= (and b!5652024 (not res!2390998)) b!5652038))

(assert (= (and b!5652038 (not res!2390985)) b!5652029))

(assert (= (and b!5652029 c!993470) b!5652039))

(assert (= (and b!5652029 (not c!993470)) b!5652037))

(assert (= (and b!5652039 (not res!2390993)) b!5652043))

(assert (= (and b!5652029 (not res!2390989)) b!5652048))

(assert (= (and b!5652048 res!2390996) b!5652025))

(assert (= (and b!5652048 (not res!2390991)) b!5652034))

(assert (= (and b!5652034 (not res!2390986)) b!5652044))

(assert (= (and start!584458 ((_ is ElementMatch!15641) r!7292)) b!5652027))

(assert (= (and start!584458 ((_ is Concat!24486) r!7292)) b!5652030))

(assert (= (and start!584458 ((_ is Star!15641) r!7292)) b!5652035))

(assert (= (and start!584458 ((_ is Union!15641) r!7292)) b!5652040))

(assert (= (and start!584458 condSetEmpty!37766) setIsEmpty!37766))

(assert (= (and start!584458 (not condSetEmpty!37766)) setNonEmpty!37766))

(assert (= setNonEmpty!37766 b!5652033))

(assert (= b!5652032 b!5652042))

(assert (= (and start!584458 ((_ is Cons!63100) zl!343)) b!5652032))

(assert (= (and start!584458 ((_ is Cons!63098) s!2326)) b!5652031))

(declare-fun m!6619328 () Bool)

(assert (=> b!5652043 m!6619328))

(declare-fun m!6619330 () Bool)

(assert (=> b!5652025 m!6619330))

(declare-fun m!6619332 () Bool)

(assert (=> b!5652041 m!6619332))

(declare-fun m!6619334 () Bool)

(assert (=> b!5652028 m!6619334))

(assert (=> b!5652028 m!6619334))

(declare-fun m!6619336 () Bool)

(assert (=> b!5652028 m!6619336))

(declare-fun m!6619338 () Bool)

(assert (=> b!5652044 m!6619338))

(declare-fun m!6619340 () Bool)

(assert (=> b!5652039 m!6619340))

(declare-fun m!6619342 () Bool)

(assert (=> b!5652039 m!6619342))

(declare-fun m!6619344 () Bool)

(assert (=> b!5652039 m!6619344))

(declare-fun m!6619346 () Bool)

(assert (=> b!5652038 m!6619346))

(declare-fun m!6619348 () Bool)

(assert (=> b!5652029 m!6619348))

(declare-fun m!6619350 () Bool)

(assert (=> b!5652029 m!6619350))

(declare-fun m!6619352 () Bool)

(assert (=> b!5652029 m!6619352))

(declare-fun m!6619354 () Bool)

(assert (=> b!5652029 m!6619354))

(declare-fun m!6619356 () Bool)

(assert (=> b!5652029 m!6619356))

(declare-fun m!6619358 () Bool)

(assert (=> b!5652029 m!6619358))

(declare-fun m!6619360 () Bool)

(assert (=> b!5652029 m!6619360))

(declare-fun m!6619362 () Bool)

(assert (=> b!5652032 m!6619362))

(declare-fun m!6619364 () Bool)

(assert (=> b!5652047 m!6619364))

(declare-fun m!6619366 () Bool)

(assert (=> b!5652036 m!6619366))

(declare-fun m!6619368 () Bool)

(assert (=> b!5652036 m!6619368))

(declare-fun m!6619370 () Bool)

(assert (=> b!5652036 m!6619370))

(declare-fun m!6619372 () Bool)

(assert (=> b!5652024 m!6619372))

(declare-fun m!6619374 () Bool)

(assert (=> b!5652024 m!6619374))

(declare-fun m!6619376 () Bool)

(assert (=> b!5652024 m!6619376))

(declare-fun m!6619378 () Bool)

(assert (=> b!5652024 m!6619378))

(assert (=> b!5652024 m!6619372))

(declare-fun m!6619380 () Bool)

(assert (=> b!5652024 m!6619380))

(assert (=> b!5652024 m!6619376))

(declare-fun m!6619382 () Bool)

(assert (=> b!5652024 m!6619382))

(declare-fun m!6619384 () Bool)

(assert (=> b!5652046 m!6619384))

(declare-fun m!6619386 () Bool)

(assert (=> b!5652045 m!6619386))

(declare-fun m!6619388 () Bool)

(assert (=> start!584458 m!6619388))

(declare-fun m!6619390 () Bool)

(assert (=> setNonEmpty!37766 m!6619390))

(check-sat (not b!5652031) (not b!5652028) (not b!5652045) (not b!5652033) (not b!5652044) (not b!5652043) (not b!5652040) (not b!5652036) (not b!5652029) (not b!5652047) (not b!5652024) (not b!5652038) (not b!5652025) (not b!5652035) (not start!584458) (not b!5652046) (not b!5652042) (not b!5652032) (not b!5652041) tp_is_empty!40535 (not setNonEmpty!37766) (not b!5652030) (not b!5652039))
(check-sat)
(get-model)

(declare-fun d!1785214 () Bool)

(declare-fun e!3481531 () Bool)

(assert (=> d!1785214 e!3481531))

(declare-fun res!2391053 () Bool)

(assert (=> d!1785214 (=> (not res!2391053) (not e!3481531))))

(declare-fun lt!2266004 () List!63224)

(declare-fun noDuplicate!1597 (List!63224) Bool)

(assert (=> d!1785214 (= res!2391053 (noDuplicate!1597 lt!2266004))))

(declare-fun choose!42791 ((InoxSet Context!10050)) List!63224)

(assert (=> d!1785214 (= lt!2266004 (choose!42791 z!1189))))

(assert (=> d!1785214 (= (toList!9425 z!1189) lt!2266004)))

(declare-fun b!5652156 () Bool)

(declare-fun content!11416 (List!63224) (InoxSet Context!10050))

(assert (=> b!5652156 (= e!3481531 (= (content!11416 lt!2266004) z!1189))))

(assert (= (and d!1785214 res!2391053) b!5652156))

(declare-fun m!6619408 () Bool)

(assert (=> d!1785214 m!6619408))

(declare-fun m!6619410 () Bool)

(assert (=> d!1785214 m!6619410))

(declare-fun m!6619412 () Bool)

(assert (=> b!5652156 m!6619412))

(assert (=> b!5652045 d!1785214))

(declare-fun d!1785216 () Bool)

(declare-fun lambda!304096 () Int)

(declare-fun forall!14794 (List!63223 Int) Bool)

(assert (=> d!1785216 (= (inv!82349 setElem!37766) (forall!14794 (exprs!5525 setElem!37766) lambda!304096))))

(declare-fun bs!1314758 () Bool)

(assert (= bs!1314758 d!1785216))

(declare-fun m!6619426 () Bool)

(assert (=> bs!1314758 m!6619426))

(assert (=> setNonEmpty!37766 d!1785216))

(declare-fun bs!1314761 () Bool)

(declare-fun d!1785220 () Bool)

(assert (= bs!1314761 (and d!1785220 d!1785216)))

(declare-fun lambda!304102 () Int)

(assert (=> bs!1314761 (= lambda!304102 lambda!304096)))

(declare-fun b!5652215 () Bool)

(declare-fun e!3481569 () Regex!15641)

(assert (=> b!5652215 (= e!3481569 (h!69547 (exprs!5525 (h!69548 zl!343))))))

(declare-fun b!5652216 () Bool)

(declare-fun e!3481566 () Regex!15641)

(assert (=> b!5652216 (= e!3481566 EmptyExpr!15641)))

(declare-fun b!5652217 () Bool)

(declare-fun e!3481565 () Bool)

(declare-fun lt!2266017 () Regex!15641)

(declare-fun head!12014 (List!63223) Regex!15641)

(assert (=> b!5652217 (= e!3481565 (= lt!2266017 (head!12014 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5652218 () Bool)

(declare-fun e!3481564 () Bool)

(declare-fun e!3481568 () Bool)

(assert (=> b!5652218 (= e!3481564 e!3481568)))

(declare-fun c!993516 () Bool)

(assert (=> b!5652218 (= c!993516 (isEmpty!34941 (exprs!5525 (h!69548 zl!343))))))

(declare-fun b!5652219 () Bool)

(assert (=> b!5652219 (= e!3481569 e!3481566)))

(declare-fun c!993514 () Bool)

(assert (=> b!5652219 (= c!993514 ((_ is Cons!63099) (exprs!5525 (h!69548 zl!343))))))

(assert (=> d!1785220 e!3481564))

(declare-fun res!2391076 () Bool)

(assert (=> d!1785220 (=> (not res!2391076) (not e!3481564))))

(assert (=> d!1785220 (= res!2391076 (validRegex!7377 lt!2266017))))

(assert (=> d!1785220 (= lt!2266017 e!3481569)))

(declare-fun c!993515 () Bool)

(declare-fun e!3481567 () Bool)

(assert (=> d!1785220 (= c!993515 e!3481567)))

(declare-fun res!2391077 () Bool)

(assert (=> d!1785220 (=> (not res!2391077) (not e!3481567))))

(assert (=> d!1785220 (= res!2391077 ((_ is Cons!63099) (exprs!5525 (h!69548 zl!343))))))

(assert (=> d!1785220 (forall!14794 (exprs!5525 (h!69548 zl!343)) lambda!304102)))

(assert (=> d!1785220 (= (generalisedConcat!1256 (exprs!5525 (h!69548 zl!343))) lt!2266017)))

(declare-fun b!5652220 () Bool)

(assert (=> b!5652220 (= e!3481568 e!3481565)))

(declare-fun c!993517 () Bool)

(declare-fun tail!11109 (List!63223) List!63223)

(assert (=> b!5652220 (= c!993517 (isEmpty!34941 (tail!11109 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5652221 () Bool)

(assert (=> b!5652221 (= e!3481566 (Concat!24486 (h!69547 (exprs!5525 (h!69548 zl!343))) (generalisedConcat!1256 (t!376523 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5652222 () Bool)

(assert (=> b!5652222 (= e!3481567 (isEmpty!34941 (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5652223 () Bool)

(declare-fun isConcat!698 (Regex!15641) Bool)

(assert (=> b!5652223 (= e!3481565 (isConcat!698 lt!2266017))))

(declare-fun b!5652224 () Bool)

(declare-fun isEmptyExpr!1175 (Regex!15641) Bool)

(assert (=> b!5652224 (= e!3481568 (isEmptyExpr!1175 lt!2266017))))

(assert (= (and d!1785220 res!2391077) b!5652222))

(assert (= (and d!1785220 c!993515) b!5652215))

(assert (= (and d!1785220 (not c!993515)) b!5652219))

(assert (= (and b!5652219 c!993514) b!5652221))

(assert (= (and b!5652219 (not c!993514)) b!5652216))

(assert (= (and d!1785220 res!2391076) b!5652218))

(assert (= (and b!5652218 c!993516) b!5652224))

(assert (= (and b!5652218 (not c!993516)) b!5652220))

(assert (= (and b!5652220 c!993517) b!5652217))

(assert (= (and b!5652220 (not c!993517)) b!5652223))

(declare-fun m!6619444 () Bool)

(assert (=> b!5652224 m!6619444))

(declare-fun m!6619446 () Bool)

(assert (=> b!5652221 m!6619446))

(assert (=> b!5652222 m!6619346))

(declare-fun m!6619448 () Bool)

(assert (=> b!5652218 m!6619448))

(declare-fun m!6619450 () Bool)

(assert (=> b!5652217 m!6619450))

(declare-fun m!6619452 () Bool)

(assert (=> b!5652220 m!6619452))

(assert (=> b!5652220 m!6619452))

(declare-fun m!6619454 () Bool)

(assert (=> b!5652220 m!6619454))

(declare-fun m!6619456 () Bool)

(assert (=> d!1785220 m!6619456))

(declare-fun m!6619458 () Bool)

(assert (=> d!1785220 m!6619458))

(declare-fun m!6619460 () Bool)

(assert (=> b!5652223 m!6619460))

(assert (=> b!5652046 d!1785220))

(declare-fun bs!1314774 () Bool)

(declare-fun b!5652310 () Bool)

(assert (= bs!1314774 (and b!5652310 b!5652024)))

(declare-fun lambda!304116 () Int)

(assert (=> bs!1314774 (not (= lambda!304116 lambda!304085))))

(assert (=> bs!1314774 (not (= lambda!304116 lambda!304086))))

(assert (=> b!5652310 true))

(assert (=> b!5652310 true))

(declare-fun bs!1314775 () Bool)

(declare-fun b!5652301 () Bool)

(assert (= bs!1314775 (and b!5652301 b!5652024)))

(declare-fun lambda!304117 () Int)

(assert (=> bs!1314775 (not (= lambda!304117 lambda!304085))))

(assert (=> bs!1314775 (= lambda!304117 lambda!304086)))

(declare-fun bs!1314777 () Bool)

(assert (= bs!1314777 (and b!5652301 b!5652310)))

(assert (=> bs!1314777 (not (= lambda!304117 lambda!304116))))

(assert (=> b!5652301 true))

(assert (=> b!5652301 true))

(declare-fun b!5652300 () Bool)

(declare-fun e!3481611 () Bool)

(assert (=> b!5652300 (= e!3481611 (= s!2326 (Cons!63098 (c!993471 r!7292) Nil!63098)))))

(declare-fun e!3481615 () Bool)

(declare-fun call!427550 () Bool)

(assert (=> b!5652301 (= e!3481615 call!427550)))

(declare-fun b!5652302 () Bool)

(declare-fun e!3481613 () Bool)

(declare-fun e!3481616 () Bool)

(assert (=> b!5652302 (= e!3481613 e!3481616)))

(declare-fun res!2391113 () Bool)

(assert (=> b!5652302 (= res!2391113 (matchRSpec!2744 (regOne!31795 r!7292) s!2326))))

(assert (=> b!5652302 (=> res!2391113 e!3481616)))

(declare-fun b!5652303 () Bool)

(declare-fun c!993540 () Bool)

(assert (=> b!5652303 (= c!993540 ((_ is Union!15641) r!7292))))

(assert (=> b!5652303 (= e!3481611 e!3481613)))

(declare-fun b!5652304 () Bool)

(assert (=> b!5652304 (= e!3481616 (matchRSpec!2744 (regTwo!31795 r!7292) s!2326))))

(declare-fun b!5652305 () Bool)

(assert (=> b!5652305 (= e!3481613 e!3481615)))

(declare-fun c!993538 () Bool)

(assert (=> b!5652305 (= c!993538 ((_ is Star!15641) r!7292))))

(declare-fun b!5652306 () Bool)

(declare-fun e!3481612 () Bool)

(declare-fun call!427551 () Bool)

(assert (=> b!5652306 (= e!3481612 call!427551)))

(declare-fun b!5652307 () Bool)

(declare-fun res!2391115 () Bool)

(declare-fun e!3481614 () Bool)

(assert (=> b!5652307 (=> res!2391115 e!3481614)))

(assert (=> b!5652307 (= res!2391115 call!427551)))

(assert (=> b!5652307 (= e!3481615 e!3481614)))

(declare-fun bm!427545 () Bool)

(assert (=> bm!427545 (= call!427550 (Exists!2741 (ite c!993538 lambda!304116 lambda!304117)))))

(declare-fun d!1785228 () Bool)

(declare-fun c!993539 () Bool)

(assert (=> d!1785228 (= c!993539 ((_ is EmptyExpr!15641) r!7292))))

(assert (=> d!1785228 (= (matchRSpec!2744 r!7292 s!2326) e!3481612)))

(declare-fun b!5652308 () Bool)

(declare-fun c!993541 () Bool)

(assert (=> b!5652308 (= c!993541 ((_ is ElementMatch!15641) r!7292))))

(declare-fun e!3481617 () Bool)

(assert (=> b!5652308 (= e!3481617 e!3481611)))

(declare-fun bm!427546 () Bool)

(declare-fun isEmpty!34945 (List!63222) Bool)

(assert (=> bm!427546 (= call!427551 (isEmpty!34945 s!2326))))

(declare-fun b!5652309 () Bool)

(assert (=> b!5652309 (= e!3481612 e!3481617)))

(declare-fun res!2391114 () Bool)

(assert (=> b!5652309 (= res!2391114 (not ((_ is EmptyLang!15641) r!7292)))))

(assert (=> b!5652309 (=> (not res!2391114) (not e!3481617))))

(assert (=> b!5652310 (= e!3481614 call!427550)))

(assert (= (and d!1785228 c!993539) b!5652306))

(assert (= (and d!1785228 (not c!993539)) b!5652309))

(assert (= (and b!5652309 res!2391114) b!5652308))

(assert (= (and b!5652308 c!993541) b!5652300))

(assert (= (and b!5652308 (not c!993541)) b!5652303))

(assert (= (and b!5652303 c!993540) b!5652302))

(assert (= (and b!5652303 (not c!993540)) b!5652305))

(assert (= (and b!5652302 (not res!2391113)) b!5652304))

(assert (= (and b!5652305 c!993538) b!5652307))

(assert (= (and b!5652305 (not c!993538)) b!5652301))

(assert (= (and b!5652307 (not res!2391115)) b!5652310))

(assert (= (or b!5652310 b!5652301) bm!427545))

(assert (= (or b!5652306 b!5652307) bm!427546))

(declare-fun m!6619514 () Bool)

(assert (=> b!5652302 m!6619514))

(declare-fun m!6619516 () Bool)

(assert (=> b!5652304 m!6619516))

(declare-fun m!6619518 () Bool)

(assert (=> bm!427545 m!6619518))

(declare-fun m!6619520 () Bool)

(assert (=> bm!427546 m!6619520))

(assert (=> b!5652036 d!1785228))

(declare-fun b!5652396 () Bool)

(declare-fun e!3481670 () Bool)

(declare-fun head!12015 (List!63222) C!31552)

(assert (=> b!5652396 (= e!3481670 (= (head!12015 s!2326) (c!993471 r!7292)))))

(declare-fun b!5652397 () Bool)

(declare-fun e!3481673 () Bool)

(assert (=> b!5652397 (= e!3481673 (nullable!5673 r!7292))))

(declare-fun b!5652398 () Bool)

(declare-fun res!2391152 () Bool)

(declare-fun e!3481668 () Bool)

(assert (=> b!5652398 (=> res!2391152 e!3481668)))

(assert (=> b!5652398 (= res!2391152 (not ((_ is ElementMatch!15641) r!7292)))))

(declare-fun e!3481667 () Bool)

(assert (=> b!5652398 (= e!3481667 e!3481668)))

(declare-fun b!5652399 () Bool)

(declare-fun derivativeStep!4471 (Regex!15641 C!31552) Regex!15641)

(declare-fun tail!11110 (List!63222) List!63222)

(assert (=> b!5652399 (= e!3481673 (matchR!7826 (derivativeStep!4471 r!7292 (head!12015 s!2326)) (tail!11110 s!2326)))))

(declare-fun b!5652400 () Bool)

(declare-fun res!2391146 () Bool)

(assert (=> b!5652400 (=> (not res!2391146) (not e!3481670))))

(declare-fun call!427560 () Bool)

(assert (=> b!5652400 (= res!2391146 (not call!427560))))

(declare-fun b!5652401 () Bool)

(declare-fun res!2391151 () Bool)

(assert (=> b!5652401 (=> res!2391151 e!3481668)))

(assert (=> b!5652401 (= res!2391151 e!3481670)))

(declare-fun res!2391148 () Bool)

(assert (=> b!5652401 (=> (not res!2391148) (not e!3481670))))

(declare-fun lt!2266044 () Bool)

(assert (=> b!5652401 (= res!2391148 lt!2266044)))

(declare-fun b!5652402 () Bool)

(declare-fun res!2391149 () Bool)

(assert (=> b!5652402 (=> (not res!2391149) (not e!3481670))))

(assert (=> b!5652402 (= res!2391149 (isEmpty!34945 (tail!11110 s!2326)))))

(declare-fun bm!427555 () Bool)

(assert (=> bm!427555 (= call!427560 (isEmpty!34945 s!2326))))

(declare-fun b!5652403 () Bool)

(assert (=> b!5652403 (= e!3481667 (not lt!2266044))))

(declare-fun b!5652404 () Bool)

(declare-fun e!3481669 () Bool)

(assert (=> b!5652404 (= e!3481669 (not (= (head!12015 s!2326) (c!993471 r!7292))))))

(declare-fun b!5652406 () Bool)

(declare-fun res!2391145 () Bool)

(assert (=> b!5652406 (=> res!2391145 e!3481669)))

(assert (=> b!5652406 (= res!2391145 (not (isEmpty!34945 (tail!11110 s!2326))))))

(declare-fun b!5652407 () Bool)

(declare-fun e!3481672 () Bool)

(assert (=> b!5652407 (= e!3481668 e!3481672)))

(declare-fun res!2391147 () Bool)

(assert (=> b!5652407 (=> (not res!2391147) (not e!3481672))))

(assert (=> b!5652407 (= res!2391147 (not lt!2266044))))

(declare-fun b!5652408 () Bool)

(assert (=> b!5652408 (= e!3481672 e!3481669)))

(declare-fun res!2391150 () Bool)

(assert (=> b!5652408 (=> res!2391150 e!3481669)))

(assert (=> b!5652408 (= res!2391150 call!427560)))

(declare-fun b!5652409 () Bool)

(declare-fun e!3481671 () Bool)

(assert (=> b!5652409 (= e!3481671 (= lt!2266044 call!427560))))

(declare-fun d!1785246 () Bool)

(assert (=> d!1785246 e!3481671))

(declare-fun c!993571 () Bool)

(assert (=> d!1785246 (= c!993571 ((_ is EmptyExpr!15641) r!7292))))

(assert (=> d!1785246 (= lt!2266044 e!3481673)))

(declare-fun c!993572 () Bool)

(assert (=> d!1785246 (= c!993572 (isEmpty!34945 s!2326))))

(assert (=> d!1785246 (validRegex!7377 r!7292)))

(assert (=> d!1785246 (= (matchR!7826 r!7292 s!2326) lt!2266044)))

(declare-fun b!5652405 () Bool)

(assert (=> b!5652405 (= e!3481671 e!3481667)))

(declare-fun c!993570 () Bool)

(assert (=> b!5652405 (= c!993570 ((_ is EmptyLang!15641) r!7292))))

(assert (= (and d!1785246 c!993572) b!5652397))

(assert (= (and d!1785246 (not c!993572)) b!5652399))

(assert (= (and d!1785246 c!993571) b!5652409))

(assert (= (and d!1785246 (not c!993571)) b!5652405))

(assert (= (and b!5652405 c!993570) b!5652403))

(assert (= (and b!5652405 (not c!993570)) b!5652398))

(assert (= (and b!5652398 (not res!2391152)) b!5652401))

(assert (= (and b!5652401 res!2391148) b!5652400))

(assert (= (and b!5652400 res!2391146) b!5652402))

(assert (= (and b!5652402 res!2391149) b!5652396))

(assert (= (and b!5652401 (not res!2391151)) b!5652407))

(assert (= (and b!5652407 res!2391147) b!5652408))

(assert (= (and b!5652408 (not res!2391150)) b!5652406))

(assert (= (and b!5652406 (not res!2391145)) b!5652404))

(assert (= (or b!5652409 b!5652400 b!5652408) bm!427555))

(declare-fun m!6619574 () Bool)

(assert (=> b!5652396 m!6619574))

(assert (=> b!5652399 m!6619574))

(assert (=> b!5652399 m!6619574))

(declare-fun m!6619576 () Bool)

(assert (=> b!5652399 m!6619576))

(declare-fun m!6619578 () Bool)

(assert (=> b!5652399 m!6619578))

(assert (=> b!5652399 m!6619576))

(assert (=> b!5652399 m!6619578))

(declare-fun m!6619580 () Bool)

(assert (=> b!5652399 m!6619580))

(declare-fun m!6619582 () Bool)

(assert (=> b!5652397 m!6619582))

(assert (=> bm!427555 m!6619520))

(assert (=> b!5652402 m!6619578))

(assert (=> b!5652402 m!6619578))

(declare-fun m!6619584 () Bool)

(assert (=> b!5652402 m!6619584))

(assert (=> b!5652404 m!6619574))

(assert (=> d!1785246 m!6619520))

(assert (=> d!1785246 m!6619388))

(assert (=> b!5652406 m!6619578))

(assert (=> b!5652406 m!6619578))

(assert (=> b!5652406 m!6619584))

(assert (=> b!5652036 d!1785246))

(declare-fun d!1785264 () Bool)

(assert (=> d!1785264 (= (matchR!7826 r!7292 s!2326) (matchRSpec!2744 r!7292 s!2326))))

(declare-fun lt!2266047 () Unit!156096)

(declare-fun choose!42795 (Regex!15641 List!63222) Unit!156096)

(assert (=> d!1785264 (= lt!2266047 (choose!42795 r!7292 s!2326))))

(assert (=> d!1785264 (validRegex!7377 r!7292)))

(assert (=> d!1785264 (= (mainMatchTheorem!2744 r!7292 s!2326) lt!2266047)))

(declare-fun bs!1314787 () Bool)

(assert (= bs!1314787 d!1785264))

(assert (=> bs!1314787 m!6619368))

(assert (=> bs!1314787 m!6619366))

(declare-fun m!6619614 () Bool)

(assert (=> bs!1314787 m!6619614))

(assert (=> bs!1314787 m!6619388))

(assert (=> b!5652036 d!1785264))

(declare-fun d!1785276 () Bool)

(assert (=> d!1785276 (= (isEmpty!34942 (t!376524 zl!343)) ((_ is Nil!63100) (t!376524 zl!343)))))

(assert (=> b!5652047 d!1785276))

(declare-fun b!5652521 () Bool)

(declare-fun e!3481741 () Bool)

(declare-fun call!427578 () Bool)

(assert (=> b!5652521 (= e!3481741 call!427578)))

(declare-fun b!5652522 () Bool)

(declare-fun e!3481742 () Bool)

(declare-fun call!427580 () Bool)

(assert (=> b!5652522 (= e!3481742 call!427580)))

(declare-fun b!5652524 () Bool)

(declare-fun e!3481739 () Bool)

(assert (=> b!5652524 (= e!3481739 call!427578)))

(declare-fun bm!427573 () Bool)

(assert (=> bm!427573 (= call!427578 call!427580)))

(declare-fun b!5652525 () Bool)

(declare-fun e!3481738 () Bool)

(declare-fun e!3481737 () Bool)

(assert (=> b!5652525 (= e!3481738 e!3481737)))

(declare-fun c!993604 () Bool)

(assert (=> b!5652525 (= c!993604 ((_ is Union!15641) r!7292))))

(declare-fun c!993605 () Bool)

(declare-fun bm!427574 () Bool)

(assert (=> bm!427574 (= call!427580 (validRegex!7377 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))))))

(declare-fun b!5652526 () Bool)

(declare-fun res!2391178 () Bool)

(assert (=> b!5652526 (=> (not res!2391178) (not e!3481739))))

(declare-fun call!427579 () Bool)

(assert (=> b!5652526 (= res!2391178 call!427579)))

(assert (=> b!5652526 (= e!3481737 e!3481739)))

(declare-fun b!5652527 () Bool)

(assert (=> b!5652527 (= e!3481738 e!3481742)))

(declare-fun res!2391179 () Bool)

(assert (=> b!5652527 (= res!2391179 (not (nullable!5673 (reg!15970 r!7292))))))

(assert (=> b!5652527 (=> (not res!2391179) (not e!3481742))))

(declare-fun b!5652528 () Bool)

(declare-fun res!2391176 () Bool)

(declare-fun e!3481736 () Bool)

(assert (=> b!5652528 (=> res!2391176 e!3481736)))

(assert (=> b!5652528 (= res!2391176 (not ((_ is Concat!24486) r!7292)))))

(assert (=> b!5652528 (= e!3481737 e!3481736)))

(declare-fun b!5652523 () Bool)

(declare-fun e!3481740 () Bool)

(assert (=> b!5652523 (= e!3481740 e!3481738)))

(assert (=> b!5652523 (= c!993605 ((_ is Star!15641) r!7292))))

(declare-fun d!1785278 () Bool)

(declare-fun res!2391175 () Bool)

(assert (=> d!1785278 (=> res!2391175 e!3481740)))

(assert (=> d!1785278 (= res!2391175 ((_ is ElementMatch!15641) r!7292))))

(assert (=> d!1785278 (= (validRegex!7377 r!7292) e!3481740)))

(declare-fun b!5652529 () Bool)

(assert (=> b!5652529 (= e!3481736 e!3481741)))

(declare-fun res!2391177 () Bool)

(assert (=> b!5652529 (=> (not res!2391177) (not e!3481741))))

(assert (=> b!5652529 (= res!2391177 call!427579)))

(declare-fun bm!427575 () Bool)

(assert (=> bm!427575 (= call!427579 (validRegex!7377 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))))))

(assert (= (and d!1785278 (not res!2391175)) b!5652523))

(assert (= (and b!5652523 c!993605) b!5652527))

(assert (= (and b!5652523 (not c!993605)) b!5652525))

(assert (= (and b!5652527 res!2391179) b!5652522))

(assert (= (and b!5652525 c!993604) b!5652526))

(assert (= (and b!5652525 (not c!993604)) b!5652528))

(assert (= (and b!5652526 res!2391178) b!5652524))

(assert (= (and b!5652528 (not res!2391176)) b!5652529))

(assert (= (and b!5652529 res!2391177) b!5652521))

(assert (= (or b!5652524 b!5652521) bm!427573))

(assert (= (or b!5652526 b!5652529) bm!427575))

(assert (= (or b!5652522 bm!427573) bm!427574))

(declare-fun m!6619636 () Bool)

(assert (=> bm!427574 m!6619636))

(declare-fun m!6619638 () Bool)

(assert (=> b!5652527 m!6619638))

(declare-fun m!6619640 () Bool)

(assert (=> bm!427575 m!6619640))

(assert (=> start!584458 d!1785278))

(declare-fun bs!1314793 () Bool)

(declare-fun d!1785286 () Bool)

(assert (= bs!1314793 (and d!1785286 d!1785216)))

(declare-fun lambda!304128 () Int)

(assert (=> bs!1314793 (= lambda!304128 lambda!304096)))

(declare-fun bs!1314794 () Bool)

(assert (= bs!1314794 (and d!1785286 d!1785220)))

(assert (=> bs!1314794 (= lambda!304128 lambda!304102)))

(assert (=> d!1785286 (= (inv!82349 (h!69548 zl!343)) (forall!14794 (exprs!5525 (h!69548 zl!343)) lambda!304128))))

(declare-fun bs!1314795 () Bool)

(assert (= bs!1314795 d!1785286))

(declare-fun m!6619644 () Bool)

(assert (=> bs!1314795 m!6619644))

(assert (=> b!5652032 d!1785286))

(declare-fun d!1785288 () Bool)

(declare-fun c!993608 () Bool)

(assert (=> d!1785288 (= c!993608 (isEmpty!34945 (t!376522 s!2326)))))

(declare-fun e!3481759 () Bool)

(assert (=> d!1785288 (= (matchZipper!1779 lt!2265985 (t!376522 s!2326)) e!3481759)))

(declare-fun b!5652561 () Bool)

(declare-fun nullableZipper!1617 ((InoxSet Context!10050)) Bool)

(assert (=> b!5652561 (= e!3481759 (nullableZipper!1617 lt!2265985))))

(declare-fun b!5652562 () Bool)

(declare-fun derivationStepZipper!1728 ((InoxSet Context!10050) C!31552) (InoxSet Context!10050))

(assert (=> b!5652562 (= e!3481759 (matchZipper!1779 (derivationStepZipper!1728 lt!2265985 (head!12015 (t!376522 s!2326))) (tail!11110 (t!376522 s!2326))))))

(assert (= (and d!1785288 c!993608) b!5652561))

(assert (= (and d!1785288 (not c!993608)) b!5652562))

(declare-fun m!6619648 () Bool)

(assert (=> d!1785288 m!6619648))

(declare-fun m!6619650 () Bool)

(assert (=> b!5652561 m!6619650))

(declare-fun m!6619652 () Bool)

(assert (=> b!5652562 m!6619652))

(assert (=> b!5652562 m!6619652))

(declare-fun m!6619654 () Bool)

(assert (=> b!5652562 m!6619654))

(declare-fun m!6619656 () Bool)

(assert (=> b!5652562 m!6619656))

(assert (=> b!5652562 m!6619654))

(assert (=> b!5652562 m!6619656))

(declare-fun m!6619658 () Bool)

(assert (=> b!5652562 m!6619658))

(assert (=> b!5652043 d!1785288))

(declare-fun b!5652581 () Bool)

(declare-fun e!3481773 () Bool)

(assert (=> b!5652581 (= e!3481773 (matchR!7826 (regTwo!31794 r!7292) s!2326))))

(declare-fun b!5652582 () Bool)

(declare-fun e!3481774 () Bool)

(declare-fun lt!2266057 () Option!15650)

(declare-fun ++!13851 (List!63222 List!63222) List!63222)

(declare-fun get!21739 (Option!15650) tuple2!65476)

(assert (=> b!5652582 (= e!3481774 (= (++!13851 (_1!36041 (get!21739 lt!2266057)) (_2!36041 (get!21739 lt!2266057))) s!2326))))

(declare-fun b!5652583 () Bool)

(declare-fun lt!2266059 () Unit!156096)

(declare-fun lt!2266058 () Unit!156096)

(assert (=> b!5652583 (= lt!2266059 lt!2266058)))

(assert (=> b!5652583 (= (++!13851 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (t!376522 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2020 (List!63222 C!31552 List!63222 List!63222) Unit!156096)

(assert (=> b!5652583 (= lt!2266058 (lemmaMoveElementToOtherListKeepsConcatEq!2020 Nil!63098 (h!69546 s!2326) (t!376522 s!2326) s!2326))))

(declare-fun e!3481771 () Option!15650)

(assert (=> b!5652583 (= e!3481771 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (t!376522 s!2326) s!2326))))

(declare-fun b!5652584 () Bool)

(declare-fun res!2391192 () Bool)

(assert (=> b!5652584 (=> (not res!2391192) (not e!3481774))))

(assert (=> b!5652584 (= res!2391192 (matchR!7826 (regOne!31794 r!7292) (_1!36041 (get!21739 lt!2266057))))))

(declare-fun b!5652585 () Bool)

(assert (=> b!5652585 (= e!3481771 None!15649)))

(declare-fun b!5652586 () Bool)

(declare-fun e!3481772 () Option!15650)

(assert (=> b!5652586 (= e!3481772 e!3481771)))

(declare-fun c!993614 () Bool)

(assert (=> b!5652586 (= c!993614 ((_ is Nil!63098) s!2326))))

(declare-fun b!5652587 () Bool)

(assert (=> b!5652587 (= e!3481772 (Some!15649 (tuple2!65477 Nil!63098 s!2326)))))

(declare-fun b!5652589 () Bool)

(declare-fun res!2391193 () Bool)

(assert (=> b!5652589 (=> (not res!2391193) (not e!3481774))))

(assert (=> b!5652589 (= res!2391193 (matchR!7826 (regTwo!31794 r!7292) (_2!36041 (get!21739 lt!2266057))))))

(declare-fun b!5652588 () Bool)

(declare-fun e!3481770 () Bool)

(assert (=> b!5652588 (= e!3481770 (not (isDefined!12353 lt!2266057)))))

(declare-fun d!1785292 () Bool)

(assert (=> d!1785292 e!3481770))

(declare-fun res!2391194 () Bool)

(assert (=> d!1785292 (=> res!2391194 e!3481770)))

(assert (=> d!1785292 (= res!2391194 e!3481774)))

(declare-fun res!2391191 () Bool)

(assert (=> d!1785292 (=> (not res!2391191) (not e!3481774))))

(assert (=> d!1785292 (= res!2391191 (isDefined!12353 lt!2266057))))

(assert (=> d!1785292 (= lt!2266057 e!3481772)))

(declare-fun c!993613 () Bool)

(assert (=> d!1785292 (= c!993613 e!3481773)))

(declare-fun res!2391190 () Bool)

(assert (=> d!1785292 (=> (not res!2391190) (not e!3481773))))

(assert (=> d!1785292 (= res!2391190 (matchR!7826 (regOne!31794 r!7292) Nil!63098))))

(assert (=> d!1785292 (validRegex!7377 (regOne!31794 r!7292))))

(assert (=> d!1785292 (= (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326) lt!2266057)))

(assert (= (and d!1785292 res!2391190) b!5652581))

(assert (= (and d!1785292 c!993613) b!5652587))

(assert (= (and d!1785292 (not c!993613)) b!5652586))

(assert (= (and b!5652586 c!993614) b!5652585))

(assert (= (and b!5652586 (not c!993614)) b!5652583))

(assert (= (and d!1785292 res!2391191) b!5652584))

(assert (= (and b!5652584 res!2391192) b!5652589))

(assert (= (and b!5652589 res!2391193) b!5652582))

(assert (= (and d!1785292 (not res!2391194)) b!5652588))

(declare-fun m!6619660 () Bool)

(assert (=> b!5652582 m!6619660))

(declare-fun m!6619662 () Bool)

(assert (=> b!5652582 m!6619662))

(assert (=> b!5652584 m!6619660))

(declare-fun m!6619664 () Bool)

(assert (=> b!5652584 m!6619664))

(declare-fun m!6619666 () Bool)

(assert (=> b!5652583 m!6619666))

(assert (=> b!5652583 m!6619666))

(declare-fun m!6619668 () Bool)

(assert (=> b!5652583 m!6619668))

(declare-fun m!6619670 () Bool)

(assert (=> b!5652583 m!6619670))

(assert (=> b!5652583 m!6619666))

(declare-fun m!6619672 () Bool)

(assert (=> b!5652583 m!6619672))

(declare-fun m!6619674 () Bool)

(assert (=> b!5652581 m!6619674))

(declare-fun m!6619676 () Bool)

(assert (=> b!5652588 m!6619676))

(assert (=> b!5652589 m!6619660))

(declare-fun m!6619678 () Bool)

(assert (=> b!5652589 m!6619678))

(assert (=> d!1785292 m!6619676))

(declare-fun m!6619680 () Bool)

(assert (=> d!1785292 m!6619680))

(declare-fun m!6619682 () Bool)

(assert (=> d!1785292 m!6619682))

(assert (=> b!5652024 d!1785292))

(declare-fun d!1785294 () Bool)

(declare-fun choose!42796 (Int) Bool)

(assert (=> d!1785294 (= (Exists!2741 lambda!304086) (choose!42796 lambda!304086))))

(declare-fun bs!1314797 () Bool)

(assert (= bs!1314797 d!1785294))

(declare-fun m!6619684 () Bool)

(assert (=> bs!1314797 m!6619684))

(assert (=> b!5652024 d!1785294))

(declare-fun d!1785296 () Bool)

(assert (=> d!1785296 (= (Exists!2741 lambda!304085) (choose!42796 lambda!304085))))

(declare-fun bs!1314798 () Bool)

(assert (= bs!1314798 d!1785296))

(declare-fun m!6619686 () Bool)

(assert (=> bs!1314798 m!6619686))

(assert (=> b!5652024 d!1785296))

(declare-fun bs!1314799 () Bool)

(declare-fun d!1785298 () Bool)

(assert (= bs!1314799 (and d!1785298 b!5652024)))

(declare-fun lambda!304131 () Int)

(assert (=> bs!1314799 (= lambda!304131 lambda!304085)))

(assert (=> bs!1314799 (not (= lambda!304131 lambda!304086))))

(declare-fun bs!1314800 () Bool)

(assert (= bs!1314800 (and d!1785298 b!5652310)))

(assert (=> bs!1314800 (not (= lambda!304131 lambda!304116))))

(declare-fun bs!1314801 () Bool)

(assert (= bs!1314801 (and d!1785298 b!5652301)))

(assert (=> bs!1314801 (not (= lambda!304131 lambda!304117))))

(assert (=> d!1785298 true))

(assert (=> d!1785298 true))

(assert (=> d!1785298 true))

(assert (=> d!1785298 (= (isDefined!12353 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326)) (Exists!2741 lambda!304131))))

(declare-fun lt!2266062 () Unit!156096)

(declare-fun choose!42797 (Regex!15641 Regex!15641 List!63222) Unit!156096)

(assert (=> d!1785298 (= lt!2266062 (choose!42797 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326))))

(assert (=> d!1785298 (validRegex!7377 (regOne!31794 r!7292))))

(assert (=> d!1785298 (= (lemmaFindConcatSeparationEquivalentToExists!1828 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326) lt!2266062)))

(declare-fun bs!1314802 () Bool)

(assert (= bs!1314802 d!1785298))

(assert (=> bs!1314802 m!6619682))

(declare-fun m!6619688 () Bool)

(assert (=> bs!1314802 m!6619688))

(declare-fun m!6619690 () Bool)

(assert (=> bs!1314802 m!6619690))

(assert (=> bs!1314802 m!6619376))

(assert (=> bs!1314802 m!6619378))

(assert (=> bs!1314802 m!6619376))

(assert (=> b!5652024 d!1785298))

(declare-fun bs!1314803 () Bool)

(declare-fun d!1785300 () Bool)

(assert (= bs!1314803 (and d!1785300 b!5652024)))

(declare-fun lambda!304136 () Int)

(assert (=> bs!1314803 (not (= lambda!304136 lambda!304086))))

(declare-fun bs!1314804 () Bool)

(assert (= bs!1314804 (and d!1785300 b!5652310)))

(assert (=> bs!1314804 (not (= lambda!304136 lambda!304116))))

(declare-fun bs!1314805 () Bool)

(assert (= bs!1314805 (and d!1785300 b!5652301)))

(assert (=> bs!1314805 (not (= lambda!304136 lambda!304117))))

(declare-fun bs!1314806 () Bool)

(assert (= bs!1314806 (and d!1785300 d!1785298)))

(assert (=> bs!1314806 (= lambda!304136 lambda!304131)))

(assert (=> bs!1314803 (= lambda!304136 lambda!304085)))

(assert (=> d!1785300 true))

(assert (=> d!1785300 true))

(assert (=> d!1785300 true))

(declare-fun lambda!304137 () Int)

(assert (=> bs!1314803 (= lambda!304137 lambda!304086)))

(assert (=> bs!1314805 (= lambda!304137 lambda!304117)))

(declare-fun bs!1314807 () Bool)

(assert (= bs!1314807 d!1785300))

(assert (=> bs!1314807 (not (= lambda!304137 lambda!304136))))

(assert (=> bs!1314804 (not (= lambda!304137 lambda!304116))))

(assert (=> bs!1314806 (not (= lambda!304137 lambda!304131))))

(assert (=> bs!1314803 (not (= lambda!304137 lambda!304085))))

(assert (=> d!1785300 true))

(assert (=> d!1785300 true))

(assert (=> d!1785300 true))

(assert (=> d!1785300 (= (Exists!2741 lambda!304136) (Exists!2741 lambda!304137))))

(declare-fun lt!2266065 () Unit!156096)

(declare-fun choose!42798 (Regex!15641 Regex!15641 List!63222) Unit!156096)

(assert (=> d!1785300 (= lt!2266065 (choose!42798 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326))))

(assert (=> d!1785300 (validRegex!7377 (regOne!31794 r!7292))))

(assert (=> d!1785300 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1370 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326) lt!2266065)))

(declare-fun m!6619692 () Bool)

(assert (=> bs!1314807 m!6619692))

(declare-fun m!6619694 () Bool)

(assert (=> bs!1314807 m!6619694))

(declare-fun m!6619696 () Bool)

(assert (=> bs!1314807 m!6619696))

(assert (=> bs!1314807 m!6619682))

(assert (=> b!5652024 d!1785300))

(declare-fun d!1785302 () Bool)

(declare-fun isEmpty!34946 (Option!15650) Bool)

(assert (=> d!1785302 (= (isDefined!12353 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326)) (not (isEmpty!34946 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326))))))

(declare-fun bs!1314808 () Bool)

(assert (= bs!1314808 d!1785302))

(assert (=> bs!1314808 m!6619376))

(declare-fun m!6619698 () Bool)

(assert (=> bs!1314808 m!6619698))

(assert (=> b!5652024 d!1785302))

(declare-fun b!5652624 () Bool)

(declare-fun e!3481793 () Bool)

(assert (=> b!5652624 (= e!3481793 (nullable!5673 (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))))))

(declare-fun c!993625 () Bool)

(declare-fun c!993626 () Bool)

(declare-fun bm!427588 () Bool)

(declare-fun call!427595 () List!63223)

(declare-fun $colon$colon!1685 (List!63223 Regex!15641) List!63223)

(assert (=> bm!427588 (= call!427595 ($colon$colon!1685 (exprs!5525 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343)))))) (ite (or c!993626 c!993625) (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 r!7292)))))))

(declare-fun b!5652625 () Bool)

(declare-fun e!3481794 () (InoxSet Context!10050))

(declare-fun e!3481798 () (InoxSet Context!10050))

(assert (=> b!5652625 (= e!3481794 e!3481798)))

(assert (=> b!5652625 (= c!993625 ((_ is Concat!24486) (regOne!31794 (regOne!31794 r!7292))))))

(declare-fun b!5652626 () Bool)

(declare-fun e!3481797 () (InoxSet Context!10050))

(assert (=> b!5652626 (= e!3481797 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427589 () Bool)

(declare-fun call!427598 () (InoxSet Context!10050))

(declare-fun call!427596 () (InoxSet Context!10050))

(assert (=> bm!427589 (= call!427598 call!427596)))

(declare-fun b!5652627 () Bool)

(declare-fun e!3481796 () (InoxSet Context!10050))

(declare-fun e!3481795 () (InoxSet Context!10050))

(assert (=> b!5652627 (= e!3481796 e!3481795)))

(declare-fun c!993627 () Bool)

(assert (=> b!5652627 (= c!993627 ((_ is Union!15641) (regOne!31794 (regOne!31794 r!7292))))))

(declare-fun b!5652628 () Bool)

(declare-fun call!427594 () (InoxSet Context!10050))

(assert (=> b!5652628 (= e!3481798 call!427594)))

(declare-fun call!427593 () (InoxSet Context!10050))

(declare-fun bm!427590 () Bool)

(assert (=> bm!427590 (= call!427593 (derivationStepZipperDown!983 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))) (ite c!993627 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427595)) (h!69546 s!2326)))))

(declare-fun bm!427591 () Bool)

(declare-fun call!427597 () List!63223)

(assert (=> bm!427591 (= call!427596 (derivationStepZipperDown!983 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292)))))) (ite (or c!993627 c!993626) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427597)) (h!69546 s!2326)))))

(declare-fun b!5652630 () Bool)

(assert (=> b!5652630 (= e!3481795 ((_ map or) call!427593 call!427596))))

(declare-fun bm!427592 () Bool)

(assert (=> bm!427592 (= call!427597 call!427595)))

(declare-fun b!5652631 () Bool)

(assert (=> b!5652631 (= e!3481796 (store ((as const (Array Context!10050 Bool)) false) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) true))))

(declare-fun b!5652632 () Bool)

(declare-fun c!993628 () Bool)

(assert (=> b!5652632 (= c!993628 ((_ is Star!15641) (regOne!31794 (regOne!31794 r!7292))))))

(assert (=> b!5652632 (= e!3481798 e!3481797)))

(declare-fun bm!427593 () Bool)

(assert (=> bm!427593 (= call!427594 call!427598)))

(declare-fun d!1785304 () Bool)

(declare-fun c!993629 () Bool)

(assert (=> d!1785304 (= c!993629 (and ((_ is ElementMatch!15641) (regOne!31794 (regOne!31794 r!7292))) (= (c!993471 (regOne!31794 (regOne!31794 r!7292))) (h!69546 s!2326))))))

(assert (=> d!1785304 (= (derivationStepZipperDown!983 (regOne!31794 (regOne!31794 r!7292)) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (h!69546 s!2326)) e!3481796)))

(declare-fun b!5652629 () Bool)

(assert (=> b!5652629 (= e!3481797 call!427594)))

(declare-fun b!5652633 () Bool)

(assert (=> b!5652633 (= e!3481794 ((_ map or) call!427593 call!427598))))

(declare-fun b!5652634 () Bool)

(assert (=> b!5652634 (= c!993626 e!3481793)))

(declare-fun res!2391209 () Bool)

(assert (=> b!5652634 (=> (not res!2391209) (not e!3481793))))

(assert (=> b!5652634 (= res!2391209 ((_ is Concat!24486) (regOne!31794 (regOne!31794 r!7292))))))

(assert (=> b!5652634 (= e!3481795 e!3481794)))

(assert (= (and d!1785304 c!993629) b!5652631))

(assert (= (and d!1785304 (not c!993629)) b!5652627))

(assert (= (and b!5652627 c!993627) b!5652630))

(assert (= (and b!5652627 (not c!993627)) b!5652634))

(assert (= (and b!5652634 res!2391209) b!5652624))

(assert (= (and b!5652634 c!993626) b!5652633))

(assert (= (and b!5652634 (not c!993626)) b!5652625))

(assert (= (and b!5652625 c!993625) b!5652628))

(assert (= (and b!5652625 (not c!993625)) b!5652632))

(assert (= (and b!5652632 c!993628) b!5652629))

(assert (= (and b!5652632 (not c!993628)) b!5652626))

(assert (= (or b!5652628 b!5652629) bm!427592))

(assert (= (or b!5652628 b!5652629) bm!427593))

(assert (= (or b!5652633 bm!427592) bm!427588))

(assert (= (or b!5652633 bm!427593) bm!427589))

(assert (= (or b!5652630 bm!427589) bm!427591))

(assert (= (or b!5652630 b!5652633) bm!427590))

(declare-fun m!6619700 () Bool)

(assert (=> b!5652631 m!6619700))

(declare-fun m!6619702 () Bool)

(assert (=> b!5652624 m!6619702))

(declare-fun m!6619704 () Bool)

(assert (=> bm!427590 m!6619704))

(declare-fun m!6619706 () Bool)

(assert (=> bm!427588 m!6619706))

(declare-fun m!6619708 () Bool)

(assert (=> bm!427591 m!6619708))

(assert (=> b!5652044 d!1785304))

(declare-fun d!1785306 () Bool)

(declare-fun nullableFct!1764 (Regex!15641) Bool)

(assert (=> d!1785306 (= (nullable!5673 (regOne!31794 (regOne!31794 r!7292))) (nullableFct!1764 (regOne!31794 (regOne!31794 r!7292))))))

(declare-fun bs!1314809 () Bool)

(assert (= bs!1314809 d!1785306))

(declare-fun m!6619710 () Bool)

(assert (=> bs!1314809 m!6619710))

(assert (=> b!5652025 d!1785306))

(declare-fun d!1785308 () Bool)

(declare-fun dynLambda!24686 (Int Context!10050) (InoxSet Context!10050))

(assert (=> d!1785308 (= (flatMap!1254 z!1189 lambda!304087) (dynLambda!24686 lambda!304087 (h!69548 zl!343)))))

(declare-fun lt!2266068 () Unit!156096)

(declare-fun choose!42799 ((InoxSet Context!10050) Context!10050 Int) Unit!156096)

(assert (=> d!1785308 (= lt!2266068 (choose!42799 z!1189 (h!69548 zl!343) lambda!304087))))

(assert (=> d!1785308 (= z!1189 (store ((as const (Array Context!10050 Bool)) false) (h!69548 zl!343) true))))

(assert (=> d!1785308 (= (lemmaFlatMapOnSingletonSet!786 z!1189 (h!69548 zl!343) lambda!304087) lt!2266068)))

(declare-fun b_lambda!213799 () Bool)

(assert (=> (not b_lambda!213799) (not d!1785308)))

(declare-fun bs!1314810 () Bool)

(assert (= bs!1314810 d!1785308))

(assert (=> bs!1314810 m!6619358))

(declare-fun m!6619712 () Bool)

(assert (=> bs!1314810 m!6619712))

(declare-fun m!6619714 () Bool)

(assert (=> bs!1314810 m!6619714))

(declare-fun m!6619716 () Bool)

(assert (=> bs!1314810 m!6619716))

(assert (=> b!5652029 d!1785308))

(declare-fun b!5652645 () Bool)

(declare-fun e!3481806 () (InoxSet Context!10050))

(assert (=> b!5652645 (= e!3481806 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427596 () Bool)

(declare-fun call!427601 () (InoxSet Context!10050))

(assert (=> bm!427596 (= call!427601 (derivationStepZipperDown!983 (h!69547 (exprs!5525 lt!2265993)) (Context!10051 (t!376523 (exprs!5525 lt!2265993))) (h!69546 s!2326)))))

(declare-fun b!5652646 () Bool)

(assert (=> b!5652646 (= e!3481806 call!427601)))

(declare-fun b!5652647 () Bool)

(declare-fun e!3481805 () (InoxSet Context!10050))

(assert (=> b!5652647 (= e!3481805 e!3481806)))

(declare-fun c!993635 () Bool)

(assert (=> b!5652647 (= c!993635 ((_ is Cons!63099) (exprs!5525 lt!2265993)))))

(declare-fun d!1785310 () Bool)

(declare-fun c!993634 () Bool)

(declare-fun e!3481807 () Bool)

(assert (=> d!1785310 (= c!993634 e!3481807)))

(declare-fun res!2391212 () Bool)

(assert (=> d!1785310 (=> (not res!2391212) (not e!3481807))))

(assert (=> d!1785310 (= res!2391212 ((_ is Cons!63099) (exprs!5525 lt!2265993)))))

(assert (=> d!1785310 (= (derivationStepZipperUp!909 lt!2265993 (h!69546 s!2326)) e!3481805)))

(declare-fun b!5652648 () Bool)

(assert (=> b!5652648 (= e!3481805 ((_ map or) call!427601 (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 lt!2265993))) (h!69546 s!2326))))))

(declare-fun b!5652649 () Bool)

(assert (=> b!5652649 (= e!3481807 (nullable!5673 (h!69547 (exprs!5525 lt!2265993))))))

(assert (= (and d!1785310 res!2391212) b!5652649))

(assert (= (and d!1785310 c!993634) b!5652648))

(assert (= (and d!1785310 (not c!993634)) b!5652647))

(assert (= (and b!5652647 c!993635) b!5652646))

(assert (= (and b!5652647 (not c!993635)) b!5652645))

(assert (= (or b!5652648 b!5652646) bm!427596))

(declare-fun m!6619718 () Bool)

(assert (=> bm!427596 m!6619718))

(declare-fun m!6619720 () Bool)

(assert (=> b!5652648 m!6619720))

(declare-fun m!6619722 () Bool)

(assert (=> b!5652649 m!6619722))

(assert (=> b!5652029 d!1785310))

(declare-fun d!1785312 () Bool)

(assert (=> d!1785312 (= (nullable!5673 (h!69547 (exprs!5525 (h!69548 zl!343)))) (nullableFct!1764 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun bs!1314811 () Bool)

(assert (= bs!1314811 d!1785312))

(declare-fun m!6619724 () Bool)

(assert (=> bs!1314811 m!6619724))

(assert (=> b!5652029 d!1785312))

(declare-fun b!5652650 () Bool)

(declare-fun e!3481809 () (InoxSet Context!10050))

(assert (=> b!5652650 (= e!3481809 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427597 () Bool)

(declare-fun call!427602 () (InoxSet Context!10050))

(assert (=> bm!427597 (= call!427602 (derivationStepZipperDown!983 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (h!69546 s!2326)))))

(declare-fun b!5652651 () Bool)

(assert (=> b!5652651 (= e!3481809 call!427602)))

(declare-fun b!5652652 () Bool)

(declare-fun e!3481808 () (InoxSet Context!10050))

(assert (=> b!5652652 (= e!3481808 e!3481809)))

(declare-fun c!993637 () Bool)

(assert (=> b!5652652 (= c!993637 ((_ is Cons!63099) (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))

(declare-fun d!1785314 () Bool)

(declare-fun c!993636 () Bool)

(declare-fun e!3481810 () Bool)

(assert (=> d!1785314 (= c!993636 e!3481810)))

(declare-fun res!2391213 () Bool)

(assert (=> d!1785314 (=> (not res!2391213) (not e!3481810))))

(assert (=> d!1785314 (= res!2391213 ((_ is Cons!63099) (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))

(assert (=> d!1785314 (= (derivationStepZipperUp!909 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))) (h!69546 s!2326)) e!3481808)))

(declare-fun b!5652653 () Bool)

(assert (=> b!5652653 (= e!3481808 ((_ map or) call!427602 (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (h!69546 s!2326))))))

(declare-fun b!5652654 () Bool)

(assert (=> b!5652654 (= e!3481810 (nullable!5673 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))

(assert (= (and d!1785314 res!2391213) b!5652654))

(assert (= (and d!1785314 c!993636) b!5652653))

(assert (= (and d!1785314 (not c!993636)) b!5652652))

(assert (= (and b!5652652 c!993637) b!5652651))

(assert (= (and b!5652652 (not c!993637)) b!5652650))

(assert (= (or b!5652653 b!5652651) bm!427597))

(declare-fun m!6619726 () Bool)

(assert (=> bm!427597 m!6619726))

(declare-fun m!6619728 () Bool)

(assert (=> b!5652653 m!6619728))

(declare-fun m!6619730 () Bool)

(assert (=> b!5652654 m!6619730))

(assert (=> b!5652029 d!1785314))

(declare-fun b!5652655 () Bool)

(declare-fun e!3481812 () (InoxSet Context!10050))

(assert (=> b!5652655 (= e!3481812 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427598 () Bool)

(declare-fun call!427603 () (InoxSet Context!10050))

(assert (=> bm!427598 (= call!427603 (derivationStepZipperDown!983 (h!69547 (exprs!5525 (h!69548 zl!343))) (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) (h!69546 s!2326)))))

(declare-fun b!5652656 () Bool)

(assert (=> b!5652656 (= e!3481812 call!427603)))

(declare-fun b!5652657 () Bool)

(declare-fun e!3481811 () (InoxSet Context!10050))

(assert (=> b!5652657 (= e!3481811 e!3481812)))

(declare-fun c!993639 () Bool)

(assert (=> b!5652657 (= c!993639 ((_ is Cons!63099) (exprs!5525 (h!69548 zl!343))))))

(declare-fun d!1785316 () Bool)

(declare-fun c!993638 () Bool)

(declare-fun e!3481813 () Bool)

(assert (=> d!1785316 (= c!993638 e!3481813)))

(declare-fun res!2391214 () Bool)

(assert (=> d!1785316 (=> (not res!2391214) (not e!3481813))))

(assert (=> d!1785316 (= res!2391214 ((_ is Cons!63099) (exprs!5525 (h!69548 zl!343))))))

(assert (=> d!1785316 (= (derivationStepZipperUp!909 (h!69548 zl!343) (h!69546 s!2326)) e!3481811)))

(declare-fun b!5652658 () Bool)

(assert (=> b!5652658 (= e!3481811 ((_ map or) call!427603 (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) (h!69546 s!2326))))))

(declare-fun b!5652659 () Bool)

(assert (=> b!5652659 (= e!3481813 (nullable!5673 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (= (and d!1785316 res!2391214) b!5652659))

(assert (= (and d!1785316 c!993638) b!5652658))

(assert (= (and d!1785316 (not c!993638)) b!5652657))

(assert (= (and b!5652657 c!993639) b!5652656))

(assert (= (and b!5652657 (not c!993639)) b!5652655))

(assert (= (or b!5652658 b!5652656) bm!427598))

(declare-fun m!6619732 () Bool)

(assert (=> bm!427598 m!6619732))

(declare-fun m!6619734 () Bool)

(assert (=> b!5652658 m!6619734))

(assert (=> b!5652659 m!6619356))

(assert (=> b!5652029 d!1785316))

(declare-fun b!5652660 () Bool)

(declare-fun e!3481814 () Bool)

(assert (=> b!5652660 (= e!3481814 (nullable!5673 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun c!993641 () Bool)

(declare-fun call!427606 () List!63223)

(declare-fun c!993640 () Bool)

(declare-fun bm!427599 () Bool)

(assert (=> bm!427599 (= call!427606 ($colon$colon!1685 (exprs!5525 lt!2265993) (ite (or c!993641 c!993640) (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (h!69547 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5652661 () Bool)

(declare-fun e!3481815 () (InoxSet Context!10050))

(declare-fun e!3481819 () (InoxSet Context!10050))

(assert (=> b!5652661 (= e!3481815 e!3481819)))

(assert (=> b!5652661 (= c!993640 ((_ is Concat!24486) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5652662 () Bool)

(declare-fun e!3481818 () (InoxSet Context!10050))

(assert (=> b!5652662 (= e!3481818 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427600 () Bool)

(declare-fun call!427609 () (InoxSet Context!10050))

(declare-fun call!427607 () (InoxSet Context!10050))

(assert (=> bm!427600 (= call!427609 call!427607)))

(declare-fun b!5652663 () Bool)

(declare-fun e!3481817 () (InoxSet Context!10050))

(declare-fun e!3481816 () (InoxSet Context!10050))

(assert (=> b!5652663 (= e!3481817 e!3481816)))

(declare-fun c!993642 () Bool)

(assert (=> b!5652663 (= c!993642 ((_ is Union!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5652664 () Bool)

(declare-fun call!427605 () (InoxSet Context!10050))

(assert (=> b!5652664 (= e!3481819 call!427605)))

(declare-fun bm!427601 () Bool)

(declare-fun call!427604 () (InoxSet Context!10050))

(assert (=> bm!427601 (= call!427604 (derivationStepZipperDown!983 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))) (ite c!993642 lt!2265993 (Context!10051 call!427606)) (h!69546 s!2326)))))

(declare-fun bm!427602 () Bool)

(declare-fun call!427608 () List!63223)

(assert (=> bm!427602 (= call!427607 (derivationStepZipperDown!983 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))) (ite (or c!993642 c!993641) lt!2265993 (Context!10051 call!427608)) (h!69546 s!2326)))))

(declare-fun b!5652666 () Bool)

(assert (=> b!5652666 (= e!3481816 ((_ map or) call!427604 call!427607))))

(declare-fun bm!427603 () Bool)

(assert (=> bm!427603 (= call!427608 call!427606)))

(declare-fun b!5652667 () Bool)

(assert (=> b!5652667 (= e!3481817 (store ((as const (Array Context!10050 Bool)) false) lt!2265993 true))))

(declare-fun b!5652668 () Bool)

(declare-fun c!993643 () Bool)

(assert (=> b!5652668 (= c!993643 ((_ is Star!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> b!5652668 (= e!3481819 e!3481818)))

(declare-fun bm!427604 () Bool)

(assert (=> bm!427604 (= call!427605 call!427609)))

(declare-fun d!1785318 () Bool)

(declare-fun c!993644 () Bool)

(assert (=> d!1785318 (= c!993644 (and ((_ is ElementMatch!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))) (= (c!993471 (h!69547 (exprs!5525 (h!69548 zl!343)))) (h!69546 s!2326))))))

(assert (=> d!1785318 (= (derivationStepZipperDown!983 (h!69547 (exprs!5525 (h!69548 zl!343))) lt!2265993 (h!69546 s!2326)) e!3481817)))

(declare-fun b!5652665 () Bool)

(assert (=> b!5652665 (= e!3481818 call!427605)))

(declare-fun b!5652669 () Bool)

(assert (=> b!5652669 (= e!3481815 ((_ map or) call!427604 call!427609))))

(declare-fun b!5652670 () Bool)

(assert (=> b!5652670 (= c!993641 e!3481814)))

(declare-fun res!2391215 () Bool)

(assert (=> b!5652670 (=> (not res!2391215) (not e!3481814))))

(assert (=> b!5652670 (= res!2391215 ((_ is Concat!24486) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> b!5652670 (= e!3481816 e!3481815)))

(assert (= (and d!1785318 c!993644) b!5652667))

(assert (= (and d!1785318 (not c!993644)) b!5652663))

(assert (= (and b!5652663 c!993642) b!5652666))

(assert (= (and b!5652663 (not c!993642)) b!5652670))

(assert (= (and b!5652670 res!2391215) b!5652660))

(assert (= (and b!5652670 c!993641) b!5652669))

(assert (= (and b!5652670 (not c!993641)) b!5652661))

(assert (= (and b!5652661 c!993640) b!5652664))

(assert (= (and b!5652661 (not c!993640)) b!5652668))

(assert (= (and b!5652668 c!993643) b!5652665))

(assert (= (and b!5652668 (not c!993643)) b!5652662))

(assert (= (or b!5652664 b!5652665) bm!427603))

(assert (= (or b!5652664 b!5652665) bm!427604))

(assert (= (or b!5652669 bm!427603) bm!427599))

(assert (= (or b!5652669 bm!427604) bm!427600))

(assert (= (or b!5652666 bm!427600) bm!427602))

(assert (= (or b!5652666 b!5652669) bm!427601))

(declare-fun m!6619736 () Bool)

(assert (=> b!5652667 m!6619736))

(declare-fun m!6619738 () Bool)

(assert (=> b!5652660 m!6619738))

(declare-fun m!6619740 () Bool)

(assert (=> bm!427601 m!6619740))

(declare-fun m!6619742 () Bool)

(assert (=> bm!427599 m!6619742))

(declare-fun m!6619744 () Bool)

(assert (=> bm!427602 m!6619744))

(assert (=> b!5652029 d!1785318))

(declare-fun d!1785320 () Bool)

(declare-fun choose!42800 ((InoxSet Context!10050) Int) (InoxSet Context!10050))

(assert (=> d!1785320 (= (flatMap!1254 z!1189 lambda!304087) (choose!42800 z!1189 lambda!304087))))

(declare-fun bs!1314812 () Bool)

(assert (= bs!1314812 d!1785320))

(declare-fun m!6619746 () Bool)

(assert (=> bs!1314812 m!6619746))

(assert (=> b!5652029 d!1785320))

(declare-fun d!1785322 () Bool)

(declare-fun lt!2266071 () Regex!15641)

(assert (=> d!1785322 (validRegex!7377 lt!2266071)))

(assert (=> d!1785322 (= lt!2266071 (generalisedUnion!1504 (unfocusZipperList!1069 zl!343)))))

(assert (=> d!1785322 (= (unfocusZipper!1383 zl!343) lt!2266071)))

(declare-fun bs!1314813 () Bool)

(assert (= bs!1314813 d!1785322))

(declare-fun m!6619748 () Bool)

(assert (=> bs!1314813 m!6619748))

(assert (=> bs!1314813 m!6619334))

(assert (=> bs!1314813 m!6619334))

(assert (=> bs!1314813 m!6619336))

(assert (=> b!5652041 d!1785322))

(declare-fun d!1785324 () Bool)

(assert (=> d!1785324 (= (isEmpty!34941 (t!376523 (exprs!5525 (h!69548 zl!343)))) ((_ is Nil!63099) (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> b!5652038 d!1785324))

(declare-fun bs!1314814 () Bool)

(declare-fun d!1785326 () Bool)

(assert (= bs!1314814 (and d!1785326 d!1785216)))

(declare-fun lambda!304140 () Int)

(assert (=> bs!1314814 (= lambda!304140 lambda!304096)))

(declare-fun bs!1314815 () Bool)

(assert (= bs!1314815 (and d!1785326 d!1785220)))

(assert (=> bs!1314815 (= lambda!304140 lambda!304102)))

(declare-fun bs!1314816 () Bool)

(assert (= bs!1314816 (and d!1785326 d!1785286)))

(assert (=> bs!1314816 (= lambda!304140 lambda!304128)))

(declare-fun e!3481834 () Bool)

(assert (=> d!1785326 e!3481834))

(declare-fun res!2391220 () Bool)

(assert (=> d!1785326 (=> (not res!2391220) (not e!3481834))))

(declare-fun lt!2266074 () Regex!15641)

(assert (=> d!1785326 (= res!2391220 (validRegex!7377 lt!2266074))))

(declare-fun e!3481837 () Regex!15641)

(assert (=> d!1785326 (= lt!2266074 e!3481837)))

(declare-fun c!993654 () Bool)

(declare-fun e!3481836 () Bool)

(assert (=> d!1785326 (= c!993654 e!3481836)))

(declare-fun res!2391221 () Bool)

(assert (=> d!1785326 (=> (not res!2391221) (not e!3481836))))

(assert (=> d!1785326 (= res!2391221 ((_ is Cons!63099) (unfocusZipperList!1069 zl!343)))))

(assert (=> d!1785326 (forall!14794 (unfocusZipperList!1069 zl!343) lambda!304140)))

(assert (=> d!1785326 (= (generalisedUnion!1504 (unfocusZipperList!1069 zl!343)) lt!2266074)))

(declare-fun b!5652691 () Bool)

(declare-fun e!3481833 () Bool)

(declare-fun e!3481835 () Bool)

(assert (=> b!5652691 (= e!3481833 e!3481835)))

(declare-fun c!993653 () Bool)

(assert (=> b!5652691 (= c!993653 (isEmpty!34941 (tail!11109 (unfocusZipperList!1069 zl!343))))))

(declare-fun b!5652692 () Bool)

(assert (=> b!5652692 (= e!3481837 (h!69547 (unfocusZipperList!1069 zl!343)))))

(declare-fun b!5652693 () Bool)

(declare-fun e!3481832 () Regex!15641)

(assert (=> b!5652693 (= e!3481832 (Union!15641 (h!69547 (unfocusZipperList!1069 zl!343)) (generalisedUnion!1504 (t!376523 (unfocusZipperList!1069 zl!343)))))))

(declare-fun b!5652694 () Bool)

(assert (=> b!5652694 (= e!3481835 (= lt!2266074 (head!12014 (unfocusZipperList!1069 zl!343))))))

(declare-fun b!5652695 () Bool)

(assert (=> b!5652695 (= e!3481832 EmptyLang!15641)))

(declare-fun b!5652696 () Bool)

(assert (=> b!5652696 (= e!3481834 e!3481833)))

(declare-fun c!993656 () Bool)

(assert (=> b!5652696 (= c!993656 (isEmpty!34941 (unfocusZipperList!1069 zl!343)))))

(declare-fun b!5652697 () Bool)

(declare-fun isUnion!616 (Regex!15641) Bool)

(assert (=> b!5652697 (= e!3481835 (isUnion!616 lt!2266074))))

(declare-fun b!5652698 () Bool)

(declare-fun isEmptyLang!1186 (Regex!15641) Bool)

(assert (=> b!5652698 (= e!3481833 (isEmptyLang!1186 lt!2266074))))

(declare-fun b!5652699 () Bool)

(assert (=> b!5652699 (= e!3481836 (isEmpty!34941 (t!376523 (unfocusZipperList!1069 zl!343))))))

(declare-fun b!5652700 () Bool)

(assert (=> b!5652700 (= e!3481837 e!3481832)))

(declare-fun c!993655 () Bool)

(assert (=> b!5652700 (= c!993655 ((_ is Cons!63099) (unfocusZipperList!1069 zl!343)))))

(assert (= (and d!1785326 res!2391221) b!5652699))

(assert (= (and d!1785326 c!993654) b!5652692))

(assert (= (and d!1785326 (not c!993654)) b!5652700))

(assert (= (and b!5652700 c!993655) b!5652693))

(assert (= (and b!5652700 (not c!993655)) b!5652695))

(assert (= (and d!1785326 res!2391220) b!5652696))

(assert (= (and b!5652696 c!993656) b!5652698))

(assert (= (and b!5652696 (not c!993656)) b!5652691))

(assert (= (and b!5652691 c!993653) b!5652694))

(assert (= (and b!5652691 (not c!993653)) b!5652697))

(declare-fun m!6619750 () Bool)

(assert (=> b!5652698 m!6619750))

(declare-fun m!6619752 () Bool)

(assert (=> b!5652697 m!6619752))

(declare-fun m!6619754 () Bool)

(assert (=> d!1785326 m!6619754))

(assert (=> d!1785326 m!6619334))

(declare-fun m!6619756 () Bool)

(assert (=> d!1785326 m!6619756))

(assert (=> b!5652691 m!6619334))

(declare-fun m!6619758 () Bool)

(assert (=> b!5652691 m!6619758))

(assert (=> b!5652691 m!6619758))

(declare-fun m!6619760 () Bool)

(assert (=> b!5652691 m!6619760))

(declare-fun m!6619762 () Bool)

(assert (=> b!5652693 m!6619762))

(assert (=> b!5652694 m!6619334))

(declare-fun m!6619764 () Bool)

(assert (=> b!5652694 m!6619764))

(assert (=> b!5652696 m!6619334))

(declare-fun m!6619766 () Bool)

(assert (=> b!5652696 m!6619766))

(declare-fun m!6619768 () Bool)

(assert (=> b!5652699 m!6619768))

(assert (=> b!5652028 d!1785326))

(declare-fun bs!1314817 () Bool)

(declare-fun d!1785328 () Bool)

(assert (= bs!1314817 (and d!1785328 d!1785216)))

(declare-fun lambda!304143 () Int)

(assert (=> bs!1314817 (= lambda!304143 lambda!304096)))

(declare-fun bs!1314818 () Bool)

(assert (= bs!1314818 (and d!1785328 d!1785220)))

(assert (=> bs!1314818 (= lambda!304143 lambda!304102)))

(declare-fun bs!1314819 () Bool)

(assert (= bs!1314819 (and d!1785328 d!1785286)))

(assert (=> bs!1314819 (= lambda!304143 lambda!304128)))

(declare-fun bs!1314820 () Bool)

(assert (= bs!1314820 (and d!1785328 d!1785326)))

(assert (=> bs!1314820 (= lambda!304143 lambda!304140)))

(declare-fun lt!2266077 () List!63223)

(assert (=> d!1785328 (forall!14794 lt!2266077 lambda!304143)))

(declare-fun e!3481840 () List!63223)

(assert (=> d!1785328 (= lt!2266077 e!3481840)))

(declare-fun c!993659 () Bool)

(assert (=> d!1785328 (= c!993659 ((_ is Cons!63100) zl!343))))

(assert (=> d!1785328 (= (unfocusZipperList!1069 zl!343) lt!2266077)))

(declare-fun b!5652705 () Bool)

(assert (=> b!5652705 (= e!3481840 (Cons!63099 (generalisedConcat!1256 (exprs!5525 (h!69548 zl!343))) (unfocusZipperList!1069 (t!376524 zl!343))))))

(declare-fun b!5652706 () Bool)

(assert (=> b!5652706 (= e!3481840 Nil!63099)))

(assert (= (and d!1785328 c!993659) b!5652705))

(assert (= (and d!1785328 (not c!993659)) b!5652706))

(declare-fun m!6619770 () Bool)

(assert (=> d!1785328 m!6619770))

(assert (=> b!5652705 m!6619384))

(declare-fun m!6619772 () Bool)

(assert (=> b!5652705 m!6619772))

(assert (=> b!5652028 d!1785328))

(declare-fun e!3481843 () Bool)

(declare-fun d!1785330 () Bool)

(assert (=> d!1785330 (= (matchZipper!1779 ((_ map or) lt!2265989 lt!2265985) (t!376522 s!2326)) e!3481843)))

(declare-fun res!2391224 () Bool)

(assert (=> d!1785330 (=> res!2391224 e!3481843)))

(assert (=> d!1785330 (= res!2391224 (matchZipper!1779 lt!2265989 (t!376522 s!2326)))))

(declare-fun lt!2266080 () Unit!156096)

(declare-fun choose!42801 ((InoxSet Context!10050) (InoxSet Context!10050) List!63222) Unit!156096)

(assert (=> d!1785330 (= lt!2266080 (choose!42801 lt!2265989 lt!2265985 (t!376522 s!2326)))))

(assert (=> d!1785330 (= (lemmaZipperConcatMatchesSameAsBothZippers!666 lt!2265989 lt!2265985 (t!376522 s!2326)) lt!2266080)))

(declare-fun b!5652709 () Bool)

(assert (=> b!5652709 (= e!3481843 (matchZipper!1779 lt!2265985 (t!376522 s!2326)))))

(assert (= (and d!1785330 (not res!2391224)) b!5652709))

(assert (=> d!1785330 m!6619344))

(assert (=> d!1785330 m!6619342))

(declare-fun m!6619774 () Bool)

(assert (=> d!1785330 m!6619774))

(assert (=> b!5652709 m!6619328))

(assert (=> b!5652039 d!1785330))

(declare-fun d!1785332 () Bool)

(declare-fun c!993660 () Bool)

(assert (=> d!1785332 (= c!993660 (isEmpty!34945 (t!376522 s!2326)))))

(declare-fun e!3481844 () Bool)

(assert (=> d!1785332 (= (matchZipper!1779 lt!2265989 (t!376522 s!2326)) e!3481844)))

(declare-fun b!5652710 () Bool)

(assert (=> b!5652710 (= e!3481844 (nullableZipper!1617 lt!2265989))))

(declare-fun b!5652711 () Bool)

(assert (=> b!5652711 (= e!3481844 (matchZipper!1779 (derivationStepZipper!1728 lt!2265989 (head!12015 (t!376522 s!2326))) (tail!11110 (t!376522 s!2326))))))

(assert (= (and d!1785332 c!993660) b!5652710))

(assert (= (and d!1785332 (not c!993660)) b!5652711))

(assert (=> d!1785332 m!6619648))

(declare-fun m!6619776 () Bool)

(assert (=> b!5652710 m!6619776))

(assert (=> b!5652711 m!6619652))

(assert (=> b!5652711 m!6619652))

(declare-fun m!6619778 () Bool)

(assert (=> b!5652711 m!6619778))

(assert (=> b!5652711 m!6619656))

(assert (=> b!5652711 m!6619778))

(assert (=> b!5652711 m!6619656))

(declare-fun m!6619780 () Bool)

(assert (=> b!5652711 m!6619780))

(assert (=> b!5652039 d!1785332))

(declare-fun d!1785334 () Bool)

(declare-fun c!993661 () Bool)

(assert (=> d!1785334 (= c!993661 (isEmpty!34945 (t!376522 s!2326)))))

(declare-fun e!3481845 () Bool)

(assert (=> d!1785334 (= (matchZipper!1779 ((_ map or) lt!2265989 lt!2265985) (t!376522 s!2326)) e!3481845)))

(declare-fun b!5652712 () Bool)

(assert (=> b!5652712 (= e!3481845 (nullableZipper!1617 ((_ map or) lt!2265989 lt!2265985)))))

(declare-fun b!5652713 () Bool)

(assert (=> b!5652713 (= e!3481845 (matchZipper!1779 (derivationStepZipper!1728 ((_ map or) lt!2265989 lt!2265985) (head!12015 (t!376522 s!2326))) (tail!11110 (t!376522 s!2326))))))

(assert (= (and d!1785334 c!993661) b!5652712))

(assert (= (and d!1785334 (not c!993661)) b!5652713))

(assert (=> d!1785334 m!6619648))

(declare-fun m!6619782 () Bool)

(assert (=> b!5652712 m!6619782))

(assert (=> b!5652713 m!6619652))

(assert (=> b!5652713 m!6619652))

(declare-fun m!6619784 () Bool)

(assert (=> b!5652713 m!6619784))

(assert (=> b!5652713 m!6619656))

(assert (=> b!5652713 m!6619784))

(assert (=> b!5652713 m!6619656))

(declare-fun m!6619786 () Bool)

(assert (=> b!5652713 m!6619786))

(assert (=> b!5652039 d!1785334))

(declare-fun condSetEmpty!37772 () Bool)

(assert (=> setNonEmpty!37766 (= condSetEmpty!37772 (= setRest!37766 ((as const (Array Context!10050 Bool)) false)))))

(declare-fun setRes!37772 () Bool)

(assert (=> setNonEmpty!37766 (= tp!1565901 setRes!37772)))

(declare-fun setIsEmpty!37772 () Bool)

(assert (=> setIsEmpty!37772 setRes!37772))

(declare-fun setNonEmpty!37772 () Bool)

(declare-fun tp!1565972 () Bool)

(declare-fun e!3481848 () Bool)

(declare-fun setElem!37772 () Context!10050)

(assert (=> setNonEmpty!37772 (= setRes!37772 (and tp!1565972 (inv!82349 setElem!37772) e!3481848))))

(declare-fun setRest!37772 () (InoxSet Context!10050))

(assert (=> setNonEmpty!37772 (= setRest!37766 ((_ map or) (store ((as const (Array Context!10050 Bool)) false) setElem!37772 true) setRest!37772))))

(declare-fun b!5652718 () Bool)

(declare-fun tp!1565973 () Bool)

(assert (=> b!5652718 (= e!3481848 tp!1565973)))

(assert (= (and setNonEmpty!37766 condSetEmpty!37772) setIsEmpty!37772))

(assert (= (and setNonEmpty!37766 (not condSetEmpty!37772)) setNonEmpty!37772))

(assert (= setNonEmpty!37772 b!5652718))

(declare-fun m!6619788 () Bool)

(assert (=> setNonEmpty!37772 m!6619788))

(declare-fun b!5652729 () Bool)

(declare-fun e!3481851 () Bool)

(assert (=> b!5652729 (= e!3481851 tp_is_empty!40535)))

(declare-fun b!5652732 () Bool)

(declare-fun tp!1565985 () Bool)

(declare-fun tp!1565984 () Bool)

(assert (=> b!5652732 (= e!3481851 (and tp!1565985 tp!1565984))))

(declare-fun b!5652731 () Bool)

(declare-fun tp!1565986 () Bool)

(assert (=> b!5652731 (= e!3481851 tp!1565986)))

(assert (=> b!5652040 (= tp!1565902 e!3481851)))

(declare-fun b!5652730 () Bool)

(declare-fun tp!1565987 () Bool)

(declare-fun tp!1565988 () Bool)

(assert (=> b!5652730 (= e!3481851 (and tp!1565987 tp!1565988))))

(assert (= (and b!5652040 ((_ is ElementMatch!15641) (regOne!31795 r!7292))) b!5652729))

(assert (= (and b!5652040 ((_ is Concat!24486) (regOne!31795 r!7292))) b!5652730))

(assert (= (and b!5652040 ((_ is Star!15641) (regOne!31795 r!7292))) b!5652731))

(assert (= (and b!5652040 ((_ is Union!15641) (regOne!31795 r!7292))) b!5652732))

(declare-fun b!5652733 () Bool)

(declare-fun e!3481852 () Bool)

(assert (=> b!5652733 (= e!3481852 tp_is_empty!40535)))

(declare-fun b!5652736 () Bool)

(declare-fun tp!1565990 () Bool)

(declare-fun tp!1565989 () Bool)

(assert (=> b!5652736 (= e!3481852 (and tp!1565990 tp!1565989))))

(declare-fun b!5652735 () Bool)

(declare-fun tp!1565991 () Bool)

(assert (=> b!5652735 (= e!3481852 tp!1565991)))

(assert (=> b!5652040 (= tp!1565907 e!3481852)))

(declare-fun b!5652734 () Bool)

(declare-fun tp!1565992 () Bool)

(declare-fun tp!1565993 () Bool)

(assert (=> b!5652734 (= e!3481852 (and tp!1565992 tp!1565993))))

(assert (= (and b!5652040 ((_ is ElementMatch!15641) (regTwo!31795 r!7292))) b!5652733))

(assert (= (and b!5652040 ((_ is Concat!24486) (regTwo!31795 r!7292))) b!5652734))

(assert (= (and b!5652040 ((_ is Star!15641) (regTwo!31795 r!7292))) b!5652735))

(assert (= (and b!5652040 ((_ is Union!15641) (regTwo!31795 r!7292))) b!5652736))

(declare-fun b!5652737 () Bool)

(declare-fun e!3481853 () Bool)

(assert (=> b!5652737 (= e!3481853 tp_is_empty!40535)))

(declare-fun b!5652740 () Bool)

(declare-fun tp!1565995 () Bool)

(declare-fun tp!1565994 () Bool)

(assert (=> b!5652740 (= e!3481853 (and tp!1565995 tp!1565994))))

(declare-fun b!5652739 () Bool)

(declare-fun tp!1565996 () Bool)

(assert (=> b!5652739 (= e!3481853 tp!1565996)))

(assert (=> b!5652035 (= tp!1565903 e!3481853)))

(declare-fun b!5652738 () Bool)

(declare-fun tp!1565997 () Bool)

(declare-fun tp!1565998 () Bool)

(assert (=> b!5652738 (= e!3481853 (and tp!1565997 tp!1565998))))

(assert (= (and b!5652035 ((_ is ElementMatch!15641) (reg!15970 r!7292))) b!5652737))

(assert (= (and b!5652035 ((_ is Concat!24486) (reg!15970 r!7292))) b!5652738))

(assert (= (and b!5652035 ((_ is Star!15641) (reg!15970 r!7292))) b!5652739))

(assert (= (and b!5652035 ((_ is Union!15641) (reg!15970 r!7292))) b!5652740))

(declare-fun b!5652741 () Bool)

(declare-fun e!3481854 () Bool)

(assert (=> b!5652741 (= e!3481854 tp_is_empty!40535)))

(declare-fun b!5652744 () Bool)

(declare-fun tp!1566000 () Bool)

(declare-fun tp!1565999 () Bool)

(assert (=> b!5652744 (= e!3481854 (and tp!1566000 tp!1565999))))

(declare-fun b!5652743 () Bool)

(declare-fun tp!1566001 () Bool)

(assert (=> b!5652743 (= e!3481854 tp!1566001)))

(assert (=> b!5652030 (= tp!1565904 e!3481854)))

(declare-fun b!5652742 () Bool)

(declare-fun tp!1566002 () Bool)

(declare-fun tp!1566003 () Bool)

(assert (=> b!5652742 (= e!3481854 (and tp!1566002 tp!1566003))))

(assert (= (and b!5652030 ((_ is ElementMatch!15641) (regOne!31794 r!7292))) b!5652741))

(assert (= (and b!5652030 ((_ is Concat!24486) (regOne!31794 r!7292))) b!5652742))

(assert (= (and b!5652030 ((_ is Star!15641) (regOne!31794 r!7292))) b!5652743))

(assert (= (and b!5652030 ((_ is Union!15641) (regOne!31794 r!7292))) b!5652744))

(declare-fun b!5652745 () Bool)

(declare-fun e!3481855 () Bool)

(assert (=> b!5652745 (= e!3481855 tp_is_empty!40535)))

(declare-fun b!5652748 () Bool)

(declare-fun tp!1566005 () Bool)

(declare-fun tp!1566004 () Bool)

(assert (=> b!5652748 (= e!3481855 (and tp!1566005 tp!1566004))))

(declare-fun b!5652747 () Bool)

(declare-fun tp!1566006 () Bool)

(assert (=> b!5652747 (= e!3481855 tp!1566006)))

(assert (=> b!5652030 (= tp!1565906 e!3481855)))

(declare-fun b!5652746 () Bool)

(declare-fun tp!1566007 () Bool)

(declare-fun tp!1566008 () Bool)

(assert (=> b!5652746 (= e!3481855 (and tp!1566007 tp!1566008))))

(assert (= (and b!5652030 ((_ is ElementMatch!15641) (regTwo!31794 r!7292))) b!5652745))

(assert (= (and b!5652030 ((_ is Concat!24486) (regTwo!31794 r!7292))) b!5652746))

(assert (= (and b!5652030 ((_ is Star!15641) (regTwo!31794 r!7292))) b!5652747))

(assert (= (and b!5652030 ((_ is Union!15641) (regTwo!31794 r!7292))) b!5652748))

(declare-fun b!5652753 () Bool)

(declare-fun e!3481858 () Bool)

(declare-fun tp!1566011 () Bool)

(assert (=> b!5652753 (= e!3481858 (and tp_is_empty!40535 tp!1566011))))

(assert (=> b!5652031 (= tp!1565905 e!3481858)))

(assert (= (and b!5652031 ((_ is Cons!63098) (t!376522 s!2326))) b!5652753))

(declare-fun b!5652758 () Bool)

(declare-fun e!3481861 () Bool)

(declare-fun tp!1566016 () Bool)

(declare-fun tp!1566017 () Bool)

(assert (=> b!5652758 (= e!3481861 (and tp!1566016 tp!1566017))))

(assert (=> b!5652042 (= tp!1565908 e!3481861)))

(assert (= (and b!5652042 ((_ is Cons!63099) (exprs!5525 (h!69548 zl!343)))) b!5652758))

(declare-fun b!5652766 () Bool)

(declare-fun e!3481867 () Bool)

(declare-fun tp!1566022 () Bool)

(assert (=> b!5652766 (= e!3481867 tp!1566022)))

(declare-fun e!3481866 () Bool)

(declare-fun tp!1566023 () Bool)

(declare-fun b!5652765 () Bool)

(assert (=> b!5652765 (= e!3481866 (and (inv!82349 (h!69548 (t!376524 zl!343))) e!3481867 tp!1566023))))

(assert (=> b!5652032 (= tp!1565909 e!3481866)))

(assert (= b!5652765 b!5652766))

(assert (= (and b!5652032 ((_ is Cons!63100) (t!376524 zl!343))) b!5652765))

(declare-fun m!6619790 () Bool)

(assert (=> b!5652765 m!6619790))

(declare-fun b!5652767 () Bool)

(declare-fun e!3481868 () Bool)

(declare-fun tp!1566024 () Bool)

(declare-fun tp!1566025 () Bool)

(assert (=> b!5652767 (= e!3481868 (and tp!1566024 tp!1566025))))

(assert (=> b!5652033 (= tp!1565900 e!3481868)))

(assert (= (and b!5652033 ((_ is Cons!63099) (exprs!5525 setElem!37766))) b!5652767))

(declare-fun b_lambda!213801 () Bool)

(assert (= b_lambda!213799 (or b!5652029 b_lambda!213801)))

(declare-fun bs!1314821 () Bool)

(declare-fun d!1785336 () Bool)

(assert (= bs!1314821 (and d!1785336 b!5652029)))

(assert (=> bs!1314821 (= (dynLambda!24686 lambda!304087 (h!69548 zl!343)) (derivationStepZipperUp!909 (h!69548 zl!343) (h!69546 s!2326)))))

(assert (=> bs!1314821 m!6619350))

(assert (=> d!1785308 d!1785336))

(check-sat (not b!5652697) (not b!5652746) (not d!1785308) (not b!5652705) tp_is_empty!40535 (not b!5652738) (not b!5652648) (not b!5652732) (not b!5652744) (not d!1785298) (not b!5652527) (not d!1785288) (not b!5652397) (not d!1785302) (not bm!427545) (not d!1785328) (not b!5652582) (not b!5652766) (not b!5652649) (not b!5652561) (not b!5652696) (not d!1785286) (not b!5652624) (not b!5652712) (not b!5652730) (not b!5652404) (not b!5652742) (not bm!427602) (not d!1785264) (not b!5652581) (not b!5652711) (not d!1785320) (not b!5652747) (not d!1785334) (not b!5652731) (not d!1785214) (not b!5652658) (not bm!427588) (not b!5652739) (not bm!427591) (not b!5652399) (not d!1785220) (not b!5652218) (not b!5652654) (not bm!427599) (not b!5652693) (not b!5652735) (not b!5652396) (not b!5652221) (not b!5652718) (not d!1785312) (not bs!1314821) (not bm!427574) (not b!5652302) (not b!5652699) (not d!1785216) (not b!5652710) (not b!5652562) (not b!5652740) (not bm!427575) (not b!5652691) (not b!5652304) (not b!5652734) (not b!5652223) (not d!1785330) (not b!5652156) (not b!5652767) (not b!5652765) (not b!5652589) (not bm!427546) (not d!1785246) (not d!1785332) (not b!5652709) (not bm!427601) (not b!5652583) (not setNonEmpty!37772) (not bm!427596) (not bm!427555) (not b!5652713) (not b!5652406) (not d!1785296) (not b!5652753) (not b!5652694) (not b!5652402) (not b!5652584) (not bm!427597) (not bm!427590) (not d!1785306) (not d!1785300) (not d!1785294) (not b!5652748) (not b!5652758) (not b!5652217) (not b!5652659) (not d!1785322) (not d!1785326) (not bm!427598) (not b!5652653) (not b!5652220) (not d!1785292) (not b_lambda!213801) (not b!5652660) (not b!5652222) (not b!5652736) (not b!5652743) (not b!5652698) (not b!5652224) (not b!5652588))
(check-sat)
(get-model)

(declare-fun b!5652991 () Bool)

(declare-fun e!3482017 () Bool)

(declare-fun call!427643 () Bool)

(assert (=> b!5652991 (= e!3482017 call!427643)))

(declare-fun b!5652992 () Bool)

(declare-fun e!3482018 () Bool)

(declare-fun call!427645 () Bool)

(assert (=> b!5652992 (= e!3482018 call!427645)))

(declare-fun b!5652994 () Bool)

(declare-fun e!3482015 () Bool)

(assert (=> b!5652994 (= e!3482015 call!427643)))

(declare-fun bm!427638 () Bool)

(assert (=> bm!427638 (= call!427643 call!427645)))

(declare-fun b!5652995 () Bool)

(declare-fun e!3482014 () Bool)

(declare-fun e!3482012 () Bool)

(assert (=> b!5652995 (= e!3482014 e!3482012)))

(declare-fun c!993722 () Bool)

(assert (=> b!5652995 (= c!993722 ((_ is Union!15641) lt!2266071))))

(declare-fun c!993724 () Bool)

(declare-fun bm!427639 () Bool)

(assert (=> bm!427639 (= call!427645 (validRegex!7377 (ite c!993724 (reg!15970 lt!2266071) (ite c!993722 (regTwo!31795 lt!2266071) (regTwo!31794 lt!2266071)))))))

(declare-fun b!5652996 () Bool)

(declare-fun res!2391332 () Bool)

(assert (=> b!5652996 (=> (not res!2391332) (not e!3482015))))

(declare-fun call!427644 () Bool)

(assert (=> b!5652996 (= res!2391332 call!427644)))

(assert (=> b!5652996 (= e!3482012 e!3482015)))

(declare-fun b!5652997 () Bool)

(assert (=> b!5652997 (= e!3482014 e!3482018)))

(declare-fun res!2391333 () Bool)

(assert (=> b!5652997 (= res!2391333 (not (nullable!5673 (reg!15970 lt!2266071))))))

(assert (=> b!5652997 (=> (not res!2391333) (not e!3482018))))

(declare-fun b!5652998 () Bool)

(declare-fun res!2391329 () Bool)

(declare-fun e!3482009 () Bool)

(assert (=> b!5652998 (=> res!2391329 e!3482009)))

(assert (=> b!5652998 (= res!2391329 (not ((_ is Concat!24486) lt!2266071)))))

(assert (=> b!5652998 (= e!3482012 e!3482009)))

(declare-fun b!5652993 () Bool)

(declare-fun e!3482016 () Bool)

(assert (=> b!5652993 (= e!3482016 e!3482014)))

(assert (=> b!5652993 (= c!993724 ((_ is Star!15641) lt!2266071))))

(declare-fun d!1785454 () Bool)

(declare-fun res!2391328 () Bool)

(assert (=> d!1785454 (=> res!2391328 e!3482016)))

(assert (=> d!1785454 (= res!2391328 ((_ is ElementMatch!15641) lt!2266071))))

(assert (=> d!1785454 (= (validRegex!7377 lt!2266071) e!3482016)))

(declare-fun b!5652999 () Bool)

(assert (=> b!5652999 (= e!3482009 e!3482017)))

(declare-fun res!2391331 () Bool)

(assert (=> b!5652999 (=> (not res!2391331) (not e!3482017))))

(assert (=> b!5652999 (= res!2391331 call!427644)))

(declare-fun bm!427640 () Bool)

(assert (=> bm!427640 (= call!427644 (validRegex!7377 (ite c!993722 (regOne!31795 lt!2266071) (regOne!31794 lt!2266071))))))

(assert (= (and d!1785454 (not res!2391328)) b!5652993))

(assert (= (and b!5652993 c!993724) b!5652997))

(assert (= (and b!5652993 (not c!993724)) b!5652995))

(assert (= (and b!5652997 res!2391333) b!5652992))

(assert (= (and b!5652995 c!993722) b!5652996))

(assert (= (and b!5652995 (not c!993722)) b!5652998))

(assert (= (and b!5652996 res!2391332) b!5652994))

(assert (= (and b!5652998 (not res!2391329)) b!5652999))

(assert (= (and b!5652999 res!2391331) b!5652991))

(assert (= (or b!5652994 b!5652991) bm!427638))

(assert (= (or b!5652996 b!5652999) bm!427640))

(assert (= (or b!5652992 bm!427638) bm!427639))

(declare-fun m!6620016 () Bool)

(assert (=> bm!427639 m!6620016))

(declare-fun m!6620018 () Bool)

(assert (=> b!5652997 m!6620018))

(declare-fun m!6620020 () Bool)

(assert (=> bm!427640 m!6620020))

(assert (=> d!1785322 d!1785454))

(assert (=> d!1785322 d!1785326))

(assert (=> d!1785322 d!1785328))

(declare-fun d!1785458 () Bool)

(assert (=> d!1785458 (= (isEmpty!34945 s!2326) ((_ is Nil!63098) s!2326))))

(assert (=> bm!427555 d!1785458))

(declare-fun d!1785462 () Bool)

(assert (=> d!1785462 (= (head!12014 (unfocusZipperList!1069 zl!343)) (h!69547 (unfocusZipperList!1069 zl!343)))))

(assert (=> b!5652694 d!1785462))

(declare-fun bs!1314875 () Bool)

(declare-fun d!1785464 () Bool)

(assert (= bs!1314875 (and d!1785464 d!1785220)))

(declare-fun lambda!304160 () Int)

(assert (=> bs!1314875 (= lambda!304160 lambda!304102)))

(declare-fun bs!1314876 () Bool)

(assert (= bs!1314876 (and d!1785464 d!1785326)))

(assert (=> bs!1314876 (= lambda!304160 lambda!304140)))

(declare-fun bs!1314877 () Bool)

(assert (= bs!1314877 (and d!1785464 d!1785286)))

(assert (=> bs!1314877 (= lambda!304160 lambda!304128)))

(declare-fun bs!1314878 () Bool)

(assert (= bs!1314878 (and d!1785464 d!1785328)))

(assert (=> bs!1314878 (= lambda!304160 lambda!304143)))

(declare-fun bs!1314879 () Bool)

(assert (= bs!1314879 (and d!1785464 d!1785216)))

(assert (=> bs!1314879 (= lambda!304160 lambda!304096)))

(assert (=> d!1785464 (= (inv!82349 setElem!37772) (forall!14794 (exprs!5525 setElem!37772) lambda!304160))))

(declare-fun bs!1314880 () Bool)

(assert (= bs!1314880 d!1785464))

(declare-fun m!6620046 () Bool)

(assert (=> bs!1314880 m!6620046))

(assert (=> setNonEmpty!37772 d!1785464))

(declare-fun d!1785468 () Bool)

(assert (=> d!1785468 (= (isConcat!698 lt!2266017) ((_ is Concat!24486) lt!2266017))))

(assert (=> b!5652223 d!1785468))

(declare-fun bs!1314890 () Bool)

(declare-fun b!5653030 () Bool)

(assert (= bs!1314890 (and b!5653030 b!5652024)))

(declare-fun lambda!304162 () Int)

(assert (=> bs!1314890 (not (= lambda!304162 lambda!304086))))

(declare-fun bs!1314891 () Bool)

(assert (= bs!1314891 (and b!5653030 d!1785300)))

(assert (=> bs!1314891 (not (= lambda!304162 lambda!304137))))

(declare-fun bs!1314892 () Bool)

(assert (= bs!1314892 (and b!5653030 b!5652301)))

(assert (=> bs!1314892 (not (= lambda!304162 lambda!304117))))

(assert (=> bs!1314891 (not (= lambda!304162 lambda!304136))))

(declare-fun bs!1314893 () Bool)

(assert (= bs!1314893 (and b!5653030 b!5652310)))

(assert (=> bs!1314893 (= (and (= (reg!15970 (regTwo!31795 r!7292)) (reg!15970 r!7292)) (= (regTwo!31795 r!7292) r!7292)) (= lambda!304162 lambda!304116))))

(declare-fun bs!1314894 () Bool)

(assert (= bs!1314894 (and b!5653030 d!1785298)))

(assert (=> bs!1314894 (not (= lambda!304162 lambda!304131))))

(assert (=> bs!1314890 (not (= lambda!304162 lambda!304085))))

(assert (=> b!5653030 true))

(assert (=> b!5653030 true))

(declare-fun bs!1314895 () Bool)

(declare-fun b!5653021 () Bool)

(assert (= bs!1314895 (and b!5653021 b!5652024)))

(declare-fun lambda!304163 () Int)

(assert (=> bs!1314895 (= (and (= (regOne!31794 (regTwo!31795 r!7292)) (regOne!31794 r!7292)) (= (regTwo!31794 (regTwo!31795 r!7292)) (regTwo!31794 r!7292))) (= lambda!304163 lambda!304086))))

(declare-fun bs!1314897 () Bool)

(assert (= bs!1314897 (and b!5653021 d!1785300)))

(assert (=> bs!1314897 (= (and (= (regOne!31794 (regTwo!31795 r!7292)) (regOne!31794 r!7292)) (= (regTwo!31794 (regTwo!31795 r!7292)) (regTwo!31794 r!7292))) (= lambda!304163 lambda!304137))))

(declare-fun bs!1314899 () Bool)

(assert (= bs!1314899 (and b!5653021 b!5652301)))

(assert (=> bs!1314899 (= (and (= (regOne!31794 (regTwo!31795 r!7292)) (regOne!31794 r!7292)) (= (regTwo!31794 (regTwo!31795 r!7292)) (regTwo!31794 r!7292))) (= lambda!304163 lambda!304117))))

(declare-fun bs!1314900 () Bool)

(assert (= bs!1314900 (and b!5653021 b!5653030)))

(assert (=> bs!1314900 (not (= lambda!304163 lambda!304162))))

(assert (=> bs!1314897 (not (= lambda!304163 lambda!304136))))

(declare-fun bs!1314903 () Bool)

(assert (= bs!1314903 (and b!5653021 b!5652310)))

(assert (=> bs!1314903 (not (= lambda!304163 lambda!304116))))

(declare-fun bs!1314905 () Bool)

(assert (= bs!1314905 (and b!5653021 d!1785298)))

(assert (=> bs!1314905 (not (= lambda!304163 lambda!304131))))

(assert (=> bs!1314895 (not (= lambda!304163 lambda!304085))))

(assert (=> b!5653021 true))

(assert (=> b!5653021 true))

(declare-fun b!5653020 () Bool)

(declare-fun e!3482032 () Bool)

(assert (=> b!5653020 (= e!3482032 (= s!2326 (Cons!63098 (c!993471 (regTwo!31795 r!7292)) Nil!63098)))))

(declare-fun e!3482036 () Bool)

(declare-fun call!427655 () Bool)

(assert (=> b!5653021 (= e!3482036 call!427655)))

(declare-fun b!5653022 () Bool)

(declare-fun e!3482034 () Bool)

(declare-fun e!3482037 () Bool)

(assert (=> b!5653022 (= e!3482034 e!3482037)))

(declare-fun res!2391340 () Bool)

(assert (=> b!5653022 (= res!2391340 (matchRSpec!2744 (regOne!31795 (regTwo!31795 r!7292)) s!2326))))

(assert (=> b!5653022 (=> res!2391340 e!3482037)))

(declare-fun b!5653023 () Bool)

(declare-fun c!993734 () Bool)

(assert (=> b!5653023 (= c!993734 ((_ is Union!15641) (regTwo!31795 r!7292)))))

(assert (=> b!5653023 (= e!3482032 e!3482034)))

(declare-fun b!5653024 () Bool)

(assert (=> b!5653024 (= e!3482037 (matchRSpec!2744 (regTwo!31795 (regTwo!31795 r!7292)) s!2326))))

(declare-fun b!5653025 () Bool)

(assert (=> b!5653025 (= e!3482034 e!3482036)))

(declare-fun c!993732 () Bool)

(assert (=> b!5653025 (= c!993732 ((_ is Star!15641) (regTwo!31795 r!7292)))))

(declare-fun b!5653026 () Bool)

(declare-fun e!3482033 () Bool)

(declare-fun call!427656 () Bool)

(assert (=> b!5653026 (= e!3482033 call!427656)))

(declare-fun b!5653027 () Bool)

(declare-fun res!2391342 () Bool)

(declare-fun e!3482035 () Bool)

(assert (=> b!5653027 (=> res!2391342 e!3482035)))

(assert (=> b!5653027 (= res!2391342 call!427656)))

(assert (=> b!5653027 (= e!3482036 e!3482035)))

(declare-fun bm!427650 () Bool)

(assert (=> bm!427650 (= call!427655 (Exists!2741 (ite c!993732 lambda!304162 lambda!304163)))))

(declare-fun d!1785470 () Bool)

(declare-fun c!993733 () Bool)

(assert (=> d!1785470 (= c!993733 ((_ is EmptyExpr!15641) (regTwo!31795 r!7292)))))

(assert (=> d!1785470 (= (matchRSpec!2744 (regTwo!31795 r!7292) s!2326) e!3482033)))

(declare-fun b!5653028 () Bool)

(declare-fun c!993735 () Bool)

(assert (=> b!5653028 (= c!993735 ((_ is ElementMatch!15641) (regTwo!31795 r!7292)))))

(declare-fun e!3482038 () Bool)

(assert (=> b!5653028 (= e!3482038 e!3482032)))

(declare-fun bm!427651 () Bool)

(assert (=> bm!427651 (= call!427656 (isEmpty!34945 s!2326))))

(declare-fun b!5653029 () Bool)

(assert (=> b!5653029 (= e!3482033 e!3482038)))

(declare-fun res!2391341 () Bool)

(assert (=> b!5653029 (= res!2391341 (not ((_ is EmptyLang!15641) (regTwo!31795 r!7292))))))

(assert (=> b!5653029 (=> (not res!2391341) (not e!3482038))))

(assert (=> b!5653030 (= e!3482035 call!427655)))

(assert (= (and d!1785470 c!993733) b!5653026))

(assert (= (and d!1785470 (not c!993733)) b!5653029))

(assert (= (and b!5653029 res!2391341) b!5653028))

(assert (= (and b!5653028 c!993735) b!5653020))

(assert (= (and b!5653028 (not c!993735)) b!5653023))

(assert (= (and b!5653023 c!993734) b!5653022))

(assert (= (and b!5653023 (not c!993734)) b!5653025))

(assert (= (and b!5653022 (not res!2391340)) b!5653024))

(assert (= (and b!5653025 c!993732) b!5653027))

(assert (= (and b!5653025 (not c!993732)) b!5653021))

(assert (= (and b!5653027 (not res!2391342)) b!5653030))

(assert (= (or b!5653030 b!5653021) bm!427650))

(assert (= (or b!5653026 b!5653027) bm!427651))

(declare-fun m!6620058 () Bool)

(assert (=> b!5653022 m!6620058))

(declare-fun m!6620060 () Bool)

(assert (=> b!5653024 m!6620060))

(declare-fun m!6620062 () Bool)

(assert (=> bm!427650 m!6620062))

(assert (=> bm!427651 m!6619520))

(assert (=> b!5652304 d!1785470))

(declare-fun d!1785480 () Bool)

(declare-fun lambda!304168 () Int)

(declare-fun exists!2195 ((InoxSet Context!10050) Int) Bool)

(assert (=> d!1785480 (= (nullableZipper!1617 ((_ map or) lt!2265989 lt!2265985)) (exists!2195 ((_ map or) lt!2265989 lt!2265985) lambda!304168))))

(declare-fun bs!1314918 () Bool)

(assert (= bs!1314918 d!1785480))

(declare-fun m!6620070 () Bool)

(assert (=> bs!1314918 m!6620070))

(assert (=> b!5652712 d!1785480))

(declare-fun d!1785486 () Bool)

(assert (=> d!1785486 (= (isEmpty!34941 (unfocusZipperList!1069 zl!343)) ((_ is Nil!63099) (unfocusZipperList!1069 zl!343)))))

(assert (=> b!5652696 d!1785486))

(declare-fun d!1785488 () Bool)

(assert (=> d!1785488 (= (nullable!5673 (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))) (nullableFct!1764 (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))))))

(declare-fun bs!1314919 () Bool)

(assert (= bs!1314919 d!1785488))

(declare-fun m!6620072 () Bool)

(assert (=> bs!1314919 m!6620072))

(assert (=> b!5652624 d!1785488))

(assert (=> b!5652709 d!1785288))

(declare-fun d!1785490 () Bool)

(assert (=> d!1785490 (= (head!12015 s!2326) (h!69546 s!2326))))

(assert (=> b!5652404 d!1785490))

(declare-fun b!5653051 () Bool)

(declare-fun e!3482054 () (InoxSet Context!10050))

(assert (=> b!5653051 (= e!3482054 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427657 () Bool)

(declare-fun call!427662 () (InoxSet Context!10050))

(assert (=> bm!427657 (= call!427662 (derivationStepZipperDown!983 (h!69547 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))))) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343))))))) (h!69546 s!2326)))))

(declare-fun b!5653052 () Bool)

(assert (=> b!5653052 (= e!3482054 call!427662)))

(declare-fun b!5653053 () Bool)

(declare-fun e!3482053 () (InoxSet Context!10050))

(assert (=> b!5653053 (= e!3482053 e!3482054)))

(declare-fun c!993745 () Bool)

(assert (=> b!5653053 (= c!993745 ((_ is Cons!63099) (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))))))))

(declare-fun d!1785494 () Bool)

(declare-fun c!993744 () Bool)

(declare-fun e!3482055 () Bool)

(assert (=> d!1785494 (= c!993744 e!3482055)))

(declare-fun res!2391354 () Bool)

(assert (=> d!1785494 (=> (not res!2391354) (not e!3482055))))

(assert (=> d!1785494 (= res!2391354 ((_ is Cons!63099) (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))))))))

(assert (=> d!1785494 (= (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) (h!69546 s!2326)) e!3482053)))

(declare-fun b!5653054 () Bool)

(assert (=> b!5653054 (= e!3482053 ((_ map or) call!427662 (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343))))))) (h!69546 s!2326))))))

(declare-fun b!5653055 () Bool)

(assert (=> b!5653055 (= e!3482055 (nullable!5673 (h!69547 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343))))))))))

(assert (= (and d!1785494 res!2391354) b!5653055))

(assert (= (and d!1785494 c!993744) b!5653054))

(assert (= (and d!1785494 (not c!993744)) b!5653053))

(assert (= (and b!5653053 c!993745) b!5653052))

(assert (= (and b!5653053 (not c!993745)) b!5653051))

(assert (= (or b!5653054 b!5653052) bm!427657))

(declare-fun m!6620080 () Bool)

(assert (=> bm!427657 m!6620080))

(declare-fun m!6620082 () Bool)

(assert (=> b!5653054 m!6620082))

(declare-fun m!6620084 () Bool)

(assert (=> b!5653055 m!6620084))

(assert (=> b!5652658 d!1785494))

(declare-fun b!5653056 () Bool)

(declare-fun e!3482061 () Bool)

(declare-fun call!427663 () Bool)

(assert (=> b!5653056 (= e!3482061 call!427663)))

(declare-fun b!5653057 () Bool)

(declare-fun e!3482062 () Bool)

(declare-fun call!427665 () Bool)

(assert (=> b!5653057 (= e!3482062 call!427665)))

(declare-fun b!5653059 () Bool)

(declare-fun e!3482059 () Bool)

(assert (=> b!5653059 (= e!3482059 call!427663)))

(declare-fun bm!427658 () Bool)

(assert (=> bm!427658 (= call!427663 call!427665)))

(declare-fun b!5653060 () Bool)

(declare-fun e!3482058 () Bool)

(declare-fun e!3482057 () Bool)

(assert (=> b!5653060 (= e!3482058 e!3482057)))

(declare-fun c!993746 () Bool)

(assert (=> b!5653060 (= c!993746 ((_ is Union!15641) lt!2266017))))

(declare-fun bm!427659 () Bool)

(declare-fun c!993747 () Bool)

(assert (=> bm!427659 (= call!427665 (validRegex!7377 (ite c!993747 (reg!15970 lt!2266017) (ite c!993746 (regTwo!31795 lt!2266017) (regTwo!31794 lt!2266017)))))))

(declare-fun b!5653061 () Bool)

(declare-fun res!2391358 () Bool)

(assert (=> b!5653061 (=> (not res!2391358) (not e!3482059))))

(declare-fun call!427664 () Bool)

(assert (=> b!5653061 (= res!2391358 call!427664)))

(assert (=> b!5653061 (= e!3482057 e!3482059)))

(declare-fun b!5653062 () Bool)

(assert (=> b!5653062 (= e!3482058 e!3482062)))

(declare-fun res!2391359 () Bool)

(assert (=> b!5653062 (= res!2391359 (not (nullable!5673 (reg!15970 lt!2266017))))))

(assert (=> b!5653062 (=> (not res!2391359) (not e!3482062))))

(declare-fun b!5653063 () Bool)

(declare-fun res!2391356 () Bool)

(declare-fun e!3482056 () Bool)

(assert (=> b!5653063 (=> res!2391356 e!3482056)))

(assert (=> b!5653063 (= res!2391356 (not ((_ is Concat!24486) lt!2266017)))))

(assert (=> b!5653063 (= e!3482057 e!3482056)))

(declare-fun b!5653058 () Bool)

(declare-fun e!3482060 () Bool)

(assert (=> b!5653058 (= e!3482060 e!3482058)))

(assert (=> b!5653058 (= c!993747 ((_ is Star!15641) lt!2266017))))

(declare-fun d!1785498 () Bool)

(declare-fun res!2391355 () Bool)

(assert (=> d!1785498 (=> res!2391355 e!3482060)))

(assert (=> d!1785498 (= res!2391355 ((_ is ElementMatch!15641) lt!2266017))))

(assert (=> d!1785498 (= (validRegex!7377 lt!2266017) e!3482060)))

(declare-fun b!5653064 () Bool)

(assert (=> b!5653064 (= e!3482056 e!3482061)))

(declare-fun res!2391357 () Bool)

(assert (=> b!5653064 (=> (not res!2391357) (not e!3482061))))

(assert (=> b!5653064 (= res!2391357 call!427664)))

(declare-fun bm!427660 () Bool)

(assert (=> bm!427660 (= call!427664 (validRegex!7377 (ite c!993746 (regOne!31795 lt!2266017) (regOne!31794 lt!2266017))))))

(assert (= (and d!1785498 (not res!2391355)) b!5653058))

(assert (= (and b!5653058 c!993747) b!5653062))

(assert (= (and b!5653058 (not c!993747)) b!5653060))

(assert (= (and b!5653062 res!2391359) b!5653057))

(assert (= (and b!5653060 c!993746) b!5653061))

(assert (= (and b!5653060 (not c!993746)) b!5653063))

(assert (= (and b!5653061 res!2391358) b!5653059))

(assert (= (and b!5653063 (not res!2391356)) b!5653064))

(assert (= (and b!5653064 res!2391357) b!5653056))

(assert (= (or b!5653059 b!5653056) bm!427658))

(assert (= (or b!5653061 b!5653064) bm!427660))

(assert (= (or b!5653057 bm!427658) bm!427659))

(declare-fun m!6620092 () Bool)

(assert (=> bm!427659 m!6620092))

(declare-fun m!6620094 () Bool)

(assert (=> b!5653062 m!6620094))

(declare-fun m!6620096 () Bool)

(assert (=> bm!427660 m!6620096))

(assert (=> d!1785220 d!1785498))

(declare-fun d!1785506 () Bool)

(declare-fun res!2391364 () Bool)

(declare-fun e!3482067 () Bool)

(assert (=> d!1785506 (=> res!2391364 e!3482067)))

(assert (=> d!1785506 (= res!2391364 ((_ is Nil!63099) (exprs!5525 (h!69548 zl!343))))))

(assert (=> d!1785506 (= (forall!14794 (exprs!5525 (h!69548 zl!343)) lambda!304102) e!3482067)))

(declare-fun b!5653069 () Bool)

(declare-fun e!3482068 () Bool)

(assert (=> b!5653069 (= e!3482067 e!3482068)))

(declare-fun res!2391365 () Bool)

(assert (=> b!5653069 (=> (not res!2391365) (not e!3482068))))

(declare-fun dynLambda!24688 (Int Regex!15641) Bool)

(assert (=> b!5653069 (= res!2391365 (dynLambda!24688 lambda!304102 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653070 () Bool)

(assert (=> b!5653070 (= e!3482068 (forall!14794 (t!376523 (exprs!5525 (h!69548 zl!343))) lambda!304102))))

(assert (= (and d!1785506 (not res!2391364)) b!5653069))

(assert (= (and b!5653069 res!2391365) b!5653070))

(declare-fun b_lambda!213813 () Bool)

(assert (=> (not b_lambda!213813) (not b!5653069)))

(declare-fun m!6620098 () Bool)

(assert (=> b!5653069 m!6620098))

(declare-fun m!6620100 () Bool)

(assert (=> b!5653070 m!6620100))

(assert (=> d!1785220 d!1785506))

(declare-fun b!5653071 () Bool)

(declare-fun e!3482070 () (InoxSet Context!10050))

(assert (=> b!5653071 (= e!3482070 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427661 () Bool)

(declare-fun call!427666 () (InoxSet Context!10050))

(assert (=> bm!427661 (= call!427666 (derivationStepZipperDown!983 (h!69547 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))) (h!69546 s!2326)))))

(declare-fun b!5653072 () Bool)

(assert (=> b!5653072 (= e!3482070 call!427666)))

(declare-fun b!5653073 () Bool)

(declare-fun e!3482069 () (InoxSet Context!10050))

(assert (=> b!5653073 (= e!3482069 e!3482070)))

(declare-fun c!993749 () Bool)

(assert (=> b!5653073 (= c!993749 ((_ is Cons!63099) (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))))

(declare-fun d!1785508 () Bool)

(declare-fun c!993748 () Bool)

(declare-fun e!3482071 () Bool)

(assert (=> d!1785508 (= c!993748 e!3482071)))

(declare-fun res!2391366 () Bool)

(assert (=> d!1785508 (=> (not res!2391366) (not e!3482071))))

(assert (=> d!1785508 (= res!2391366 ((_ is Cons!63099) (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))))

(assert (=> d!1785508 (= (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (h!69546 s!2326)) e!3482069)))

(declare-fun b!5653074 () Bool)

(assert (=> b!5653074 (= e!3482069 ((_ map or) call!427666 (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))) (h!69546 s!2326))))))

(declare-fun b!5653075 () Bool)

(assert (=> b!5653075 (= e!3482071 (nullable!5673 (h!69547 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))))))

(assert (= (and d!1785508 res!2391366) b!5653075))

(assert (= (and d!1785508 c!993748) b!5653074))

(assert (= (and d!1785508 (not c!993748)) b!5653073))

(assert (= (and b!5653073 c!993749) b!5653072))

(assert (= (and b!5653073 (not c!993749)) b!5653071))

(assert (= (or b!5653074 b!5653072) bm!427661))

(declare-fun m!6620102 () Bool)

(assert (=> bm!427661 m!6620102))

(declare-fun m!6620104 () Bool)

(assert (=> b!5653074 m!6620104))

(declare-fun m!6620106 () Bool)

(assert (=> b!5653075 m!6620106))

(assert (=> b!5652653 d!1785508))

(declare-fun b!5653076 () Bool)

(declare-fun e!3482075 () Bool)

(assert (=> b!5653076 (= e!3482075 (= (head!12015 (_2!36041 (get!21739 lt!2266057))) (c!993471 (regTwo!31794 r!7292))))))

(declare-fun b!5653077 () Bool)

(declare-fun e!3482078 () Bool)

(assert (=> b!5653077 (= e!3482078 (nullable!5673 (regTwo!31794 r!7292)))))

(declare-fun b!5653078 () Bool)

(declare-fun res!2391374 () Bool)

(declare-fun e!3482073 () Bool)

(assert (=> b!5653078 (=> res!2391374 e!3482073)))

(assert (=> b!5653078 (= res!2391374 (not ((_ is ElementMatch!15641) (regTwo!31794 r!7292))))))

(declare-fun e!3482072 () Bool)

(assert (=> b!5653078 (= e!3482072 e!3482073)))

(declare-fun b!5653079 () Bool)

(assert (=> b!5653079 (= e!3482078 (matchR!7826 (derivativeStep!4471 (regTwo!31794 r!7292) (head!12015 (_2!36041 (get!21739 lt!2266057)))) (tail!11110 (_2!36041 (get!21739 lt!2266057)))))))

(declare-fun b!5653080 () Bool)

(declare-fun res!2391368 () Bool)

(assert (=> b!5653080 (=> (not res!2391368) (not e!3482075))))

(declare-fun call!427667 () Bool)

(assert (=> b!5653080 (= res!2391368 (not call!427667))))

(declare-fun b!5653081 () Bool)

(declare-fun res!2391373 () Bool)

(assert (=> b!5653081 (=> res!2391373 e!3482073)))

(assert (=> b!5653081 (= res!2391373 e!3482075)))

(declare-fun res!2391370 () Bool)

(assert (=> b!5653081 (=> (not res!2391370) (not e!3482075))))

(declare-fun lt!2266091 () Bool)

(assert (=> b!5653081 (= res!2391370 lt!2266091)))

(declare-fun b!5653082 () Bool)

(declare-fun res!2391371 () Bool)

(assert (=> b!5653082 (=> (not res!2391371) (not e!3482075))))

(assert (=> b!5653082 (= res!2391371 (isEmpty!34945 (tail!11110 (_2!36041 (get!21739 lt!2266057)))))))

(declare-fun bm!427662 () Bool)

(assert (=> bm!427662 (= call!427667 (isEmpty!34945 (_2!36041 (get!21739 lt!2266057))))))

(declare-fun b!5653083 () Bool)

(assert (=> b!5653083 (= e!3482072 (not lt!2266091))))

(declare-fun b!5653084 () Bool)

(declare-fun e!3482074 () Bool)

(assert (=> b!5653084 (= e!3482074 (not (= (head!12015 (_2!36041 (get!21739 lt!2266057))) (c!993471 (regTwo!31794 r!7292)))))))

(declare-fun b!5653086 () Bool)

(declare-fun res!2391367 () Bool)

(assert (=> b!5653086 (=> res!2391367 e!3482074)))

(assert (=> b!5653086 (= res!2391367 (not (isEmpty!34945 (tail!11110 (_2!36041 (get!21739 lt!2266057))))))))

(declare-fun b!5653087 () Bool)

(declare-fun e!3482077 () Bool)

(assert (=> b!5653087 (= e!3482073 e!3482077)))

(declare-fun res!2391369 () Bool)

(assert (=> b!5653087 (=> (not res!2391369) (not e!3482077))))

(assert (=> b!5653087 (= res!2391369 (not lt!2266091))))

(declare-fun b!5653088 () Bool)

(assert (=> b!5653088 (= e!3482077 e!3482074)))

(declare-fun res!2391372 () Bool)

(assert (=> b!5653088 (=> res!2391372 e!3482074)))

(assert (=> b!5653088 (= res!2391372 call!427667)))

(declare-fun b!5653089 () Bool)

(declare-fun e!3482076 () Bool)

(assert (=> b!5653089 (= e!3482076 (= lt!2266091 call!427667))))

(declare-fun d!1785510 () Bool)

(assert (=> d!1785510 e!3482076))

(declare-fun c!993751 () Bool)

(assert (=> d!1785510 (= c!993751 ((_ is EmptyExpr!15641) (regTwo!31794 r!7292)))))

(assert (=> d!1785510 (= lt!2266091 e!3482078)))

(declare-fun c!993752 () Bool)

(assert (=> d!1785510 (= c!993752 (isEmpty!34945 (_2!36041 (get!21739 lt!2266057))))))

(assert (=> d!1785510 (validRegex!7377 (regTwo!31794 r!7292))))

(assert (=> d!1785510 (= (matchR!7826 (regTwo!31794 r!7292) (_2!36041 (get!21739 lt!2266057))) lt!2266091)))

(declare-fun b!5653085 () Bool)

(assert (=> b!5653085 (= e!3482076 e!3482072)))

(declare-fun c!993750 () Bool)

(assert (=> b!5653085 (= c!993750 ((_ is EmptyLang!15641) (regTwo!31794 r!7292)))))

(assert (= (and d!1785510 c!993752) b!5653077))

(assert (= (and d!1785510 (not c!993752)) b!5653079))

(assert (= (and d!1785510 c!993751) b!5653089))

(assert (= (and d!1785510 (not c!993751)) b!5653085))

(assert (= (and b!5653085 c!993750) b!5653083))

(assert (= (and b!5653085 (not c!993750)) b!5653078))

(assert (= (and b!5653078 (not res!2391374)) b!5653081))

(assert (= (and b!5653081 res!2391370) b!5653080))

(assert (= (and b!5653080 res!2391368) b!5653082))

(assert (= (and b!5653082 res!2391371) b!5653076))

(assert (= (and b!5653081 (not res!2391373)) b!5653087))

(assert (= (and b!5653087 res!2391369) b!5653088))

(assert (= (and b!5653088 (not res!2391372)) b!5653086))

(assert (= (and b!5653086 (not res!2391367)) b!5653084))

(assert (= (or b!5653089 b!5653080 b!5653088) bm!427662))

(declare-fun m!6620108 () Bool)

(assert (=> b!5653076 m!6620108))

(assert (=> b!5653079 m!6620108))

(assert (=> b!5653079 m!6620108))

(declare-fun m!6620110 () Bool)

(assert (=> b!5653079 m!6620110))

(declare-fun m!6620112 () Bool)

(assert (=> b!5653079 m!6620112))

(assert (=> b!5653079 m!6620110))

(assert (=> b!5653079 m!6620112))

(declare-fun m!6620114 () Bool)

(assert (=> b!5653079 m!6620114))

(declare-fun m!6620116 () Bool)

(assert (=> b!5653077 m!6620116))

(declare-fun m!6620118 () Bool)

(assert (=> bm!427662 m!6620118))

(assert (=> b!5653082 m!6620112))

(assert (=> b!5653082 m!6620112))

(declare-fun m!6620120 () Bool)

(assert (=> b!5653082 m!6620120))

(assert (=> b!5653084 m!6620108))

(assert (=> d!1785510 m!6620118))

(declare-fun m!6620122 () Bool)

(assert (=> d!1785510 m!6620122))

(assert (=> b!5653086 m!6620112))

(assert (=> b!5653086 m!6620112))

(assert (=> b!5653086 m!6620120))

(assert (=> b!5652589 d!1785510))

(declare-fun d!1785512 () Bool)

(assert (=> d!1785512 (= (get!21739 lt!2266057) (v!51696 lt!2266057))))

(assert (=> b!5652589 d!1785512))

(declare-fun d!1785514 () Bool)

(assert (=> d!1785514 (= (nullable!5673 r!7292) (nullableFct!1764 r!7292))))

(declare-fun bs!1314932 () Bool)

(assert (= bs!1314932 d!1785514))

(declare-fun m!6620124 () Bool)

(assert (=> bs!1314932 m!6620124))

(assert (=> b!5652397 d!1785514))

(assert (=> b!5652705 d!1785220))

(declare-fun bs!1314933 () Bool)

(declare-fun d!1785516 () Bool)

(assert (= bs!1314933 (and d!1785516 d!1785220)))

(declare-fun lambda!304172 () Int)

(assert (=> bs!1314933 (= lambda!304172 lambda!304102)))

(declare-fun bs!1314934 () Bool)

(assert (= bs!1314934 (and d!1785516 d!1785326)))

(assert (=> bs!1314934 (= lambda!304172 lambda!304140)))

(declare-fun bs!1314935 () Bool)

(assert (= bs!1314935 (and d!1785516 d!1785286)))

(assert (=> bs!1314935 (= lambda!304172 lambda!304128)))

(declare-fun bs!1314936 () Bool)

(assert (= bs!1314936 (and d!1785516 d!1785328)))

(assert (=> bs!1314936 (= lambda!304172 lambda!304143)))

(declare-fun bs!1314937 () Bool)

(assert (= bs!1314937 (and d!1785516 d!1785216)))

(assert (=> bs!1314937 (= lambda!304172 lambda!304096)))

(declare-fun bs!1314938 () Bool)

(assert (= bs!1314938 (and d!1785516 d!1785464)))

(assert (=> bs!1314938 (= lambda!304172 lambda!304160)))

(declare-fun lt!2266092 () List!63223)

(assert (=> d!1785516 (forall!14794 lt!2266092 lambda!304172)))

(declare-fun e!3482081 () List!63223)

(assert (=> d!1785516 (= lt!2266092 e!3482081)))

(declare-fun c!993753 () Bool)

(assert (=> d!1785516 (= c!993753 ((_ is Cons!63100) (t!376524 zl!343)))))

(assert (=> d!1785516 (= (unfocusZipperList!1069 (t!376524 zl!343)) lt!2266092)))

(declare-fun b!5653094 () Bool)

(assert (=> b!5653094 (= e!3482081 (Cons!63099 (generalisedConcat!1256 (exprs!5525 (h!69548 (t!376524 zl!343)))) (unfocusZipperList!1069 (t!376524 (t!376524 zl!343)))))))

(declare-fun b!5653095 () Bool)

(assert (=> b!5653095 (= e!3482081 Nil!63099)))

(assert (= (and d!1785516 c!993753) b!5653094))

(assert (= (and d!1785516 (not c!993753)) b!5653095))

(declare-fun m!6620126 () Bool)

(assert (=> d!1785516 m!6620126))

(declare-fun m!6620128 () Bool)

(assert (=> b!5653094 m!6620128))

(declare-fun m!6620130 () Bool)

(assert (=> b!5653094 m!6620130))

(assert (=> b!5652705 d!1785516))

(assert (=> bs!1314821 d!1785316))

(declare-fun bs!1314939 () Bool)

(declare-fun d!1785518 () Bool)

(assert (= bs!1314939 (and d!1785518 d!1785220)))

(declare-fun lambda!304175 () Int)

(assert (=> bs!1314939 (= lambda!304175 lambda!304102)))

(declare-fun bs!1314940 () Bool)

(assert (= bs!1314940 (and d!1785518 d!1785326)))

(assert (=> bs!1314940 (= lambda!304175 lambda!304140)))

(declare-fun bs!1314941 () Bool)

(assert (= bs!1314941 (and d!1785518 d!1785286)))

(assert (=> bs!1314941 (= lambda!304175 lambda!304128)))

(declare-fun bs!1314942 () Bool)

(assert (= bs!1314942 (and d!1785518 d!1785328)))

(assert (=> bs!1314942 (= lambda!304175 lambda!304143)))

(declare-fun bs!1314943 () Bool)

(assert (= bs!1314943 (and d!1785518 d!1785516)))

(assert (=> bs!1314943 (= lambda!304175 lambda!304172)))

(declare-fun bs!1314944 () Bool)

(assert (= bs!1314944 (and d!1785518 d!1785216)))

(assert (=> bs!1314944 (= lambda!304175 lambda!304096)))

(declare-fun bs!1314945 () Bool)

(assert (= bs!1314945 (and d!1785518 d!1785464)))

(assert (=> bs!1314945 (= lambda!304175 lambda!304160)))

(declare-fun b!5653100 () Bool)

(declare-fun e!3482089 () Regex!15641)

(assert (=> b!5653100 (= e!3482089 (h!69547 (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653101 () Bool)

(declare-fun e!3482086 () Regex!15641)

(assert (=> b!5653101 (= e!3482086 EmptyExpr!15641)))

(declare-fun b!5653102 () Bool)

(declare-fun e!3482085 () Bool)

(declare-fun lt!2266093 () Regex!15641)

(assert (=> b!5653102 (= e!3482085 (= lt!2266093 (head!12014 (t!376523 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5653103 () Bool)

(declare-fun e!3482084 () Bool)

(declare-fun e!3482088 () Bool)

(assert (=> b!5653103 (= e!3482084 e!3482088)))

(declare-fun c!993756 () Bool)

(assert (=> b!5653103 (= c!993756 (isEmpty!34941 (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653104 () Bool)

(assert (=> b!5653104 (= e!3482089 e!3482086)))

(declare-fun c!993754 () Bool)

(assert (=> b!5653104 (= c!993754 ((_ is Cons!63099) (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> d!1785518 e!3482084))

(declare-fun res!2391383 () Bool)

(assert (=> d!1785518 (=> (not res!2391383) (not e!3482084))))

(assert (=> d!1785518 (= res!2391383 (validRegex!7377 lt!2266093))))

(assert (=> d!1785518 (= lt!2266093 e!3482089)))

(declare-fun c!993755 () Bool)

(declare-fun e!3482087 () Bool)

(assert (=> d!1785518 (= c!993755 e!3482087)))

(declare-fun res!2391384 () Bool)

(assert (=> d!1785518 (=> (not res!2391384) (not e!3482087))))

(assert (=> d!1785518 (= res!2391384 ((_ is Cons!63099) (t!376523 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> d!1785518 (forall!14794 (t!376523 (exprs!5525 (h!69548 zl!343))) lambda!304175)))

(assert (=> d!1785518 (= (generalisedConcat!1256 (t!376523 (exprs!5525 (h!69548 zl!343)))) lt!2266093)))

(declare-fun b!5653105 () Bool)

(assert (=> b!5653105 (= e!3482088 e!3482085)))

(declare-fun c!993757 () Bool)

(assert (=> b!5653105 (= c!993757 (isEmpty!34941 (tail!11109 (t!376523 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5653106 () Bool)

(assert (=> b!5653106 (= e!3482086 (Concat!24486 (h!69547 (t!376523 (exprs!5525 (h!69548 zl!343)))) (generalisedConcat!1256 (t!376523 (t!376523 (exprs!5525 (h!69548 zl!343)))))))))

(declare-fun b!5653107 () Bool)

(assert (=> b!5653107 (= e!3482087 (isEmpty!34941 (t!376523 (t!376523 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5653108 () Bool)

(assert (=> b!5653108 (= e!3482085 (isConcat!698 lt!2266093))))

(declare-fun b!5653109 () Bool)

(assert (=> b!5653109 (= e!3482088 (isEmptyExpr!1175 lt!2266093))))

(assert (= (and d!1785518 res!2391384) b!5653107))

(assert (= (and d!1785518 c!993755) b!5653100))

(assert (= (and d!1785518 (not c!993755)) b!5653104))

(assert (= (and b!5653104 c!993754) b!5653106))

(assert (= (and b!5653104 (not c!993754)) b!5653101))

(assert (= (and d!1785518 res!2391383) b!5653103))

(assert (= (and b!5653103 c!993756) b!5653109))

(assert (= (and b!5653103 (not c!993756)) b!5653105))

(assert (= (and b!5653105 c!993757) b!5653102))

(assert (= (and b!5653105 (not c!993757)) b!5653108))

(declare-fun m!6620132 () Bool)

(assert (=> b!5653109 m!6620132))

(declare-fun m!6620134 () Bool)

(assert (=> b!5653106 m!6620134))

(declare-fun m!6620136 () Bool)

(assert (=> b!5653107 m!6620136))

(assert (=> b!5653103 m!6619346))

(declare-fun m!6620138 () Bool)

(assert (=> b!5653102 m!6620138))

(declare-fun m!6620140 () Bool)

(assert (=> b!5653105 m!6620140))

(assert (=> b!5653105 m!6620140))

(declare-fun m!6620142 () Bool)

(assert (=> b!5653105 m!6620142))

(declare-fun m!6620144 () Bool)

(assert (=> d!1785518 m!6620144))

(declare-fun m!6620146 () Bool)

(assert (=> d!1785518 m!6620146))

(declare-fun m!6620148 () Bool)

(assert (=> b!5653108 m!6620148))

(assert (=> b!5652221 d!1785518))

(declare-fun bs!1314952 () Bool)

(declare-fun b!5653120 () Bool)

(assert (= bs!1314952 (and b!5653120 b!5652024)))

(declare-fun lambda!304177 () Int)

(assert (=> bs!1314952 (not (= lambda!304177 lambda!304086))))

(declare-fun bs!1314954 () Bool)

(assert (= bs!1314954 (and b!5653120 b!5653021)))

(assert (=> bs!1314954 (not (= lambda!304177 lambda!304163))))

(declare-fun bs!1314956 () Bool)

(assert (= bs!1314956 (and b!5653120 d!1785300)))

(assert (=> bs!1314956 (not (= lambda!304177 lambda!304137))))

(declare-fun bs!1314958 () Bool)

(assert (= bs!1314958 (and b!5653120 b!5652301)))

(assert (=> bs!1314958 (not (= lambda!304177 lambda!304117))))

(declare-fun bs!1314959 () Bool)

(assert (= bs!1314959 (and b!5653120 b!5653030)))

(assert (=> bs!1314959 (= (and (= (reg!15970 (regOne!31795 r!7292)) (reg!15970 (regTwo!31795 r!7292))) (= (regOne!31795 r!7292) (regTwo!31795 r!7292))) (= lambda!304177 lambda!304162))))

(assert (=> bs!1314956 (not (= lambda!304177 lambda!304136))))

(declare-fun bs!1314961 () Bool)

(assert (= bs!1314961 (and b!5653120 b!5652310)))

(assert (=> bs!1314961 (= (and (= (reg!15970 (regOne!31795 r!7292)) (reg!15970 r!7292)) (= (regOne!31795 r!7292) r!7292)) (= lambda!304177 lambda!304116))))

(declare-fun bs!1314962 () Bool)

(assert (= bs!1314962 (and b!5653120 d!1785298)))

(assert (=> bs!1314962 (not (= lambda!304177 lambda!304131))))

(assert (=> bs!1314952 (not (= lambda!304177 lambda!304085))))

(assert (=> b!5653120 true))

(assert (=> b!5653120 true))

(declare-fun bs!1314963 () Bool)

(declare-fun b!5653111 () Bool)

(assert (= bs!1314963 (and b!5653111 b!5652024)))

(declare-fun lambda!304179 () Int)

(assert (=> bs!1314963 (= (and (= (regOne!31794 (regOne!31795 r!7292)) (regOne!31794 r!7292)) (= (regTwo!31794 (regOne!31795 r!7292)) (regTwo!31794 r!7292))) (= lambda!304179 lambda!304086))))

(declare-fun bs!1314965 () Bool)

(assert (= bs!1314965 (and b!5653111 b!5653021)))

(assert (=> bs!1314965 (= (and (= (regOne!31794 (regOne!31795 r!7292)) (regOne!31794 (regTwo!31795 r!7292))) (= (regTwo!31794 (regOne!31795 r!7292)) (regTwo!31794 (regTwo!31795 r!7292)))) (= lambda!304179 lambda!304163))))

(declare-fun bs!1314966 () Bool)

(assert (= bs!1314966 (and b!5653111 b!5653120)))

(assert (=> bs!1314966 (not (= lambda!304179 lambda!304177))))

(declare-fun bs!1314967 () Bool)

(assert (= bs!1314967 (and b!5653111 d!1785300)))

(assert (=> bs!1314967 (= (and (= (regOne!31794 (regOne!31795 r!7292)) (regOne!31794 r!7292)) (= (regTwo!31794 (regOne!31795 r!7292)) (regTwo!31794 r!7292))) (= lambda!304179 lambda!304137))))

(declare-fun bs!1314968 () Bool)

(assert (= bs!1314968 (and b!5653111 b!5652301)))

(assert (=> bs!1314968 (= (and (= (regOne!31794 (regOne!31795 r!7292)) (regOne!31794 r!7292)) (= (regTwo!31794 (regOne!31795 r!7292)) (regTwo!31794 r!7292))) (= lambda!304179 lambda!304117))))

(declare-fun bs!1314969 () Bool)

(assert (= bs!1314969 (and b!5653111 b!5653030)))

(assert (=> bs!1314969 (not (= lambda!304179 lambda!304162))))

(assert (=> bs!1314967 (not (= lambda!304179 lambda!304136))))

(declare-fun bs!1314970 () Bool)

(assert (= bs!1314970 (and b!5653111 b!5652310)))

(assert (=> bs!1314970 (not (= lambda!304179 lambda!304116))))

(declare-fun bs!1314971 () Bool)

(assert (= bs!1314971 (and b!5653111 d!1785298)))

(assert (=> bs!1314971 (not (= lambda!304179 lambda!304131))))

(assert (=> bs!1314963 (not (= lambda!304179 lambda!304085))))

(assert (=> b!5653111 true))

(assert (=> b!5653111 true))

(declare-fun b!5653110 () Bool)

(declare-fun e!3482090 () Bool)

(assert (=> b!5653110 (= e!3482090 (= s!2326 (Cons!63098 (c!993471 (regOne!31795 r!7292)) Nil!63098)))))

(declare-fun e!3482094 () Bool)

(declare-fun call!427668 () Bool)

(assert (=> b!5653111 (= e!3482094 call!427668)))

(declare-fun b!5653112 () Bool)

(declare-fun e!3482092 () Bool)

(declare-fun e!3482095 () Bool)

(assert (=> b!5653112 (= e!3482092 e!3482095)))

(declare-fun res!2391385 () Bool)

(assert (=> b!5653112 (= res!2391385 (matchRSpec!2744 (regOne!31795 (regOne!31795 r!7292)) s!2326))))

(assert (=> b!5653112 (=> res!2391385 e!3482095)))

(declare-fun b!5653113 () Bool)

(declare-fun c!993760 () Bool)

(assert (=> b!5653113 (= c!993760 ((_ is Union!15641) (regOne!31795 r!7292)))))

(assert (=> b!5653113 (= e!3482090 e!3482092)))

(declare-fun b!5653114 () Bool)

(assert (=> b!5653114 (= e!3482095 (matchRSpec!2744 (regTwo!31795 (regOne!31795 r!7292)) s!2326))))

(declare-fun b!5653115 () Bool)

(assert (=> b!5653115 (= e!3482092 e!3482094)))

(declare-fun c!993758 () Bool)

(assert (=> b!5653115 (= c!993758 ((_ is Star!15641) (regOne!31795 r!7292)))))

(declare-fun b!5653116 () Bool)

(declare-fun e!3482091 () Bool)

(declare-fun call!427669 () Bool)

(assert (=> b!5653116 (= e!3482091 call!427669)))

(declare-fun b!5653117 () Bool)

(declare-fun res!2391387 () Bool)

(declare-fun e!3482093 () Bool)

(assert (=> b!5653117 (=> res!2391387 e!3482093)))

(assert (=> b!5653117 (= res!2391387 call!427669)))

(assert (=> b!5653117 (= e!3482094 e!3482093)))

(declare-fun bm!427663 () Bool)

(assert (=> bm!427663 (= call!427668 (Exists!2741 (ite c!993758 lambda!304177 lambda!304179)))))

(declare-fun d!1785520 () Bool)

(declare-fun c!993759 () Bool)

(assert (=> d!1785520 (= c!993759 ((_ is EmptyExpr!15641) (regOne!31795 r!7292)))))

(assert (=> d!1785520 (= (matchRSpec!2744 (regOne!31795 r!7292) s!2326) e!3482091)))

(declare-fun b!5653118 () Bool)

(declare-fun c!993761 () Bool)

(assert (=> b!5653118 (= c!993761 ((_ is ElementMatch!15641) (regOne!31795 r!7292)))))

(declare-fun e!3482096 () Bool)

(assert (=> b!5653118 (= e!3482096 e!3482090)))

(declare-fun bm!427664 () Bool)

(assert (=> bm!427664 (= call!427669 (isEmpty!34945 s!2326))))

(declare-fun b!5653119 () Bool)

(assert (=> b!5653119 (= e!3482091 e!3482096)))

(declare-fun res!2391386 () Bool)

(assert (=> b!5653119 (= res!2391386 (not ((_ is EmptyLang!15641) (regOne!31795 r!7292))))))

(assert (=> b!5653119 (=> (not res!2391386) (not e!3482096))))

(assert (=> b!5653120 (= e!3482093 call!427668)))

(assert (= (and d!1785520 c!993759) b!5653116))

(assert (= (and d!1785520 (not c!993759)) b!5653119))

(assert (= (and b!5653119 res!2391386) b!5653118))

(assert (= (and b!5653118 c!993761) b!5653110))

(assert (= (and b!5653118 (not c!993761)) b!5653113))

(assert (= (and b!5653113 c!993760) b!5653112))

(assert (= (and b!5653113 (not c!993760)) b!5653115))

(assert (= (and b!5653112 (not res!2391385)) b!5653114))

(assert (= (and b!5653115 c!993758) b!5653117))

(assert (= (and b!5653115 (not c!993758)) b!5653111))

(assert (= (and b!5653117 (not res!2391387)) b!5653120))

(assert (= (or b!5653120 b!5653111) bm!427663))

(assert (= (or b!5653116 b!5653117) bm!427664))

(declare-fun m!6620154 () Bool)

(assert (=> b!5653112 m!6620154))

(declare-fun m!6620156 () Bool)

(assert (=> b!5653114 m!6620156))

(declare-fun m!6620158 () Bool)

(assert (=> bm!427663 m!6620158))

(assert (=> bm!427664 m!6619520))

(assert (=> b!5652302 d!1785520))

(assert (=> d!1785308 d!1785320))

(declare-fun d!1785524 () Bool)

(assert (=> d!1785524 (= (flatMap!1254 z!1189 lambda!304087) (dynLambda!24686 lambda!304087 (h!69548 zl!343)))))

(assert (=> d!1785524 true))

(declare-fun _$13!2295 () Unit!156096)

(assert (=> d!1785524 (= (choose!42799 z!1189 (h!69548 zl!343) lambda!304087) _$13!2295)))

(declare-fun b_lambda!213815 () Bool)

(assert (=> (not b_lambda!213815) (not d!1785524)))

(declare-fun bs!1314972 () Bool)

(assert (= bs!1314972 d!1785524))

(assert (=> bs!1314972 m!6619358))

(assert (=> bs!1314972 m!6619712))

(assert (=> d!1785308 d!1785524))

(declare-fun b!5653129 () Bool)

(declare-fun e!3482104 () Bool)

(assert (=> b!5653129 (= e!3482104 (= (head!12015 (tail!11110 s!2326)) (c!993471 (derivativeStep!4471 r!7292 (head!12015 s!2326)))))))

(declare-fun b!5653130 () Bool)

(declare-fun e!3482107 () Bool)

(assert (=> b!5653130 (= e!3482107 (nullable!5673 (derivativeStep!4471 r!7292 (head!12015 s!2326))))))

(declare-fun b!5653131 () Bool)

(declare-fun res!2391399 () Bool)

(declare-fun e!3482102 () Bool)

(assert (=> b!5653131 (=> res!2391399 e!3482102)))

(assert (=> b!5653131 (= res!2391399 (not ((_ is ElementMatch!15641) (derivativeStep!4471 r!7292 (head!12015 s!2326)))))))

(declare-fun e!3482101 () Bool)

(assert (=> b!5653131 (= e!3482101 e!3482102)))

(declare-fun b!5653132 () Bool)

(assert (=> b!5653132 (= e!3482107 (matchR!7826 (derivativeStep!4471 (derivativeStep!4471 r!7292 (head!12015 s!2326)) (head!12015 (tail!11110 s!2326))) (tail!11110 (tail!11110 s!2326))))))

(declare-fun b!5653133 () Bool)

(declare-fun res!2391393 () Bool)

(assert (=> b!5653133 (=> (not res!2391393) (not e!3482104))))

(declare-fun call!427670 () Bool)

(assert (=> b!5653133 (= res!2391393 (not call!427670))))

(declare-fun b!5653134 () Bool)

(declare-fun res!2391398 () Bool)

(assert (=> b!5653134 (=> res!2391398 e!3482102)))

(assert (=> b!5653134 (= res!2391398 e!3482104)))

(declare-fun res!2391395 () Bool)

(assert (=> b!5653134 (=> (not res!2391395) (not e!3482104))))

(declare-fun lt!2266096 () Bool)

(assert (=> b!5653134 (= res!2391395 lt!2266096)))

(declare-fun b!5653135 () Bool)

(declare-fun res!2391396 () Bool)

(assert (=> b!5653135 (=> (not res!2391396) (not e!3482104))))

(assert (=> b!5653135 (= res!2391396 (isEmpty!34945 (tail!11110 (tail!11110 s!2326))))))

(declare-fun bm!427665 () Bool)

(assert (=> bm!427665 (= call!427670 (isEmpty!34945 (tail!11110 s!2326)))))

(declare-fun b!5653136 () Bool)

(assert (=> b!5653136 (= e!3482101 (not lt!2266096))))

(declare-fun b!5653137 () Bool)

(declare-fun e!3482103 () Bool)

(assert (=> b!5653137 (= e!3482103 (not (= (head!12015 (tail!11110 s!2326)) (c!993471 (derivativeStep!4471 r!7292 (head!12015 s!2326))))))))

(declare-fun b!5653139 () Bool)

(declare-fun res!2391392 () Bool)

(assert (=> b!5653139 (=> res!2391392 e!3482103)))

(assert (=> b!5653139 (= res!2391392 (not (isEmpty!34945 (tail!11110 (tail!11110 s!2326)))))))

(declare-fun b!5653140 () Bool)

(declare-fun e!3482106 () Bool)

(assert (=> b!5653140 (= e!3482102 e!3482106)))

(declare-fun res!2391394 () Bool)

(assert (=> b!5653140 (=> (not res!2391394) (not e!3482106))))

(assert (=> b!5653140 (= res!2391394 (not lt!2266096))))

(declare-fun b!5653141 () Bool)

(assert (=> b!5653141 (= e!3482106 e!3482103)))

(declare-fun res!2391397 () Bool)

(assert (=> b!5653141 (=> res!2391397 e!3482103)))

(assert (=> b!5653141 (= res!2391397 call!427670)))

(declare-fun b!5653142 () Bool)

(declare-fun e!3482105 () Bool)

(assert (=> b!5653142 (= e!3482105 (= lt!2266096 call!427670))))

(declare-fun d!1785530 () Bool)

(assert (=> d!1785530 e!3482105))

(declare-fun c!993765 () Bool)

(assert (=> d!1785530 (= c!993765 ((_ is EmptyExpr!15641) (derivativeStep!4471 r!7292 (head!12015 s!2326))))))

(assert (=> d!1785530 (= lt!2266096 e!3482107)))

(declare-fun c!993766 () Bool)

(assert (=> d!1785530 (= c!993766 (isEmpty!34945 (tail!11110 s!2326)))))

(assert (=> d!1785530 (validRegex!7377 (derivativeStep!4471 r!7292 (head!12015 s!2326)))))

(assert (=> d!1785530 (= (matchR!7826 (derivativeStep!4471 r!7292 (head!12015 s!2326)) (tail!11110 s!2326)) lt!2266096)))

(declare-fun b!5653138 () Bool)

(assert (=> b!5653138 (= e!3482105 e!3482101)))

(declare-fun c!993764 () Bool)

(assert (=> b!5653138 (= c!993764 ((_ is EmptyLang!15641) (derivativeStep!4471 r!7292 (head!12015 s!2326))))))

(assert (= (and d!1785530 c!993766) b!5653130))

(assert (= (and d!1785530 (not c!993766)) b!5653132))

(assert (= (and d!1785530 c!993765) b!5653142))

(assert (= (and d!1785530 (not c!993765)) b!5653138))

(assert (= (and b!5653138 c!993764) b!5653136))

(assert (= (and b!5653138 (not c!993764)) b!5653131))

(assert (= (and b!5653131 (not res!2391399)) b!5653134))

(assert (= (and b!5653134 res!2391395) b!5653133))

(assert (= (and b!5653133 res!2391393) b!5653135))

(assert (= (and b!5653135 res!2391396) b!5653129))

(assert (= (and b!5653134 (not res!2391398)) b!5653140))

(assert (= (and b!5653140 res!2391394) b!5653141))

(assert (= (and b!5653141 (not res!2391397)) b!5653139))

(assert (= (and b!5653139 (not res!2391392)) b!5653137))

(assert (= (or b!5653142 b!5653133 b!5653141) bm!427665))

(assert (=> b!5653129 m!6619578))

(declare-fun m!6620188 () Bool)

(assert (=> b!5653129 m!6620188))

(assert (=> b!5653132 m!6619578))

(assert (=> b!5653132 m!6620188))

(assert (=> b!5653132 m!6619576))

(assert (=> b!5653132 m!6620188))

(declare-fun m!6620190 () Bool)

(assert (=> b!5653132 m!6620190))

(assert (=> b!5653132 m!6619578))

(declare-fun m!6620192 () Bool)

(assert (=> b!5653132 m!6620192))

(assert (=> b!5653132 m!6620190))

(assert (=> b!5653132 m!6620192))

(declare-fun m!6620194 () Bool)

(assert (=> b!5653132 m!6620194))

(assert (=> b!5653130 m!6619576))

(declare-fun m!6620196 () Bool)

(assert (=> b!5653130 m!6620196))

(assert (=> bm!427665 m!6619578))

(assert (=> bm!427665 m!6619584))

(assert (=> b!5653135 m!6619578))

(assert (=> b!5653135 m!6620192))

(assert (=> b!5653135 m!6620192))

(declare-fun m!6620198 () Bool)

(assert (=> b!5653135 m!6620198))

(assert (=> b!5653137 m!6619578))

(assert (=> b!5653137 m!6620188))

(assert (=> d!1785530 m!6619578))

(assert (=> d!1785530 m!6619584))

(assert (=> d!1785530 m!6619576))

(declare-fun m!6620200 () Bool)

(assert (=> d!1785530 m!6620200))

(assert (=> b!5653139 m!6619578))

(assert (=> b!5653139 m!6620192))

(assert (=> b!5653139 m!6620192))

(assert (=> b!5653139 m!6620198))

(assert (=> b!5652399 d!1785530))

(declare-fun b!5653208 () Bool)

(declare-fun e!3482149 () Regex!15641)

(declare-fun call!427696 () Regex!15641)

(assert (=> b!5653208 (= e!3482149 (Concat!24486 call!427696 r!7292))))

(declare-fun b!5653209 () Bool)

(declare-fun e!3482148 () Regex!15641)

(declare-fun call!427695 () Regex!15641)

(declare-fun call!427698 () Regex!15641)

(assert (=> b!5653209 (= e!3482148 (Union!15641 call!427695 call!427698))))

(declare-fun call!427697 () Regex!15641)

(declare-fun b!5653210 () Bool)

(declare-fun e!3482150 () Regex!15641)

(assert (=> b!5653210 (= e!3482150 (Union!15641 (Concat!24486 call!427698 (regTwo!31794 r!7292)) call!427697))))

(declare-fun b!5653211 () Bool)

(declare-fun e!3482151 () Regex!15641)

(assert (=> b!5653211 (= e!3482151 EmptyLang!15641)))

(declare-fun b!5653212 () Bool)

(declare-fun c!993792 () Bool)

(assert (=> b!5653212 (= c!993792 (nullable!5673 (regOne!31794 r!7292)))))

(assert (=> b!5653212 (= e!3482149 e!3482150)))

(declare-fun b!5653213 () Bool)

(declare-fun e!3482147 () Regex!15641)

(assert (=> b!5653213 (= e!3482147 (ite (= (head!12015 s!2326) (c!993471 r!7292)) EmptyExpr!15641 EmptyLang!15641))))

(declare-fun b!5653214 () Bool)

(assert (=> b!5653214 (= e!3482151 e!3482147)))

(declare-fun c!993793 () Bool)

(assert (=> b!5653214 (= c!993793 ((_ is ElementMatch!15641) r!7292))))

(declare-fun b!5653215 () Bool)

(assert (=> b!5653215 (= e!3482150 (Union!15641 (Concat!24486 call!427697 (regTwo!31794 r!7292)) EmptyLang!15641))))

(declare-fun d!1785534 () Bool)

(declare-fun lt!2266105 () Regex!15641)

(assert (=> d!1785534 (validRegex!7377 lt!2266105)))

(assert (=> d!1785534 (= lt!2266105 e!3482151)))

(declare-fun c!993794 () Bool)

(assert (=> d!1785534 (= c!993794 (or ((_ is EmptyExpr!15641) r!7292) ((_ is EmptyLang!15641) r!7292)))))

(assert (=> d!1785534 (validRegex!7377 r!7292)))

(assert (=> d!1785534 (= (derivativeStep!4471 r!7292 (head!12015 s!2326)) lt!2266105)))

(declare-fun bm!427690 () Bool)

(assert (=> bm!427690 (= call!427697 call!427696)))

(declare-fun b!5653216 () Bool)

(declare-fun c!993795 () Bool)

(assert (=> b!5653216 (= c!993795 ((_ is Union!15641) r!7292))))

(assert (=> b!5653216 (= e!3482147 e!3482148)))

(declare-fun bm!427691 () Bool)

(assert (=> bm!427691 (= call!427698 (derivativeStep!4471 (ite c!993795 (regTwo!31795 r!7292) (regOne!31794 r!7292)) (head!12015 s!2326)))))

(declare-fun bm!427692 () Bool)

(assert (=> bm!427692 (= call!427696 call!427695)))

(declare-fun c!993791 () Bool)

(declare-fun bm!427693 () Bool)

(assert (=> bm!427693 (= call!427695 (derivativeStep!4471 (ite c!993795 (regOne!31795 r!7292) (ite c!993791 (reg!15970 r!7292) (ite c!993792 (regTwo!31794 r!7292) (regOne!31794 r!7292)))) (head!12015 s!2326)))))

(declare-fun b!5653217 () Bool)

(assert (=> b!5653217 (= e!3482148 e!3482149)))

(assert (=> b!5653217 (= c!993791 ((_ is Star!15641) r!7292))))

(assert (= (and d!1785534 c!993794) b!5653211))

(assert (= (and d!1785534 (not c!993794)) b!5653214))

(assert (= (and b!5653214 c!993793) b!5653213))

(assert (= (and b!5653214 (not c!993793)) b!5653216))

(assert (= (and b!5653216 c!993795) b!5653209))

(assert (= (and b!5653216 (not c!993795)) b!5653217))

(assert (= (and b!5653217 c!993791) b!5653208))

(assert (= (and b!5653217 (not c!993791)) b!5653212))

(assert (= (and b!5653212 c!993792) b!5653210))

(assert (= (and b!5653212 (not c!993792)) b!5653215))

(assert (= (or b!5653210 b!5653215) bm!427690))

(assert (= (or b!5653208 bm!427690) bm!427692))

(assert (= (or b!5653209 b!5653210) bm!427691))

(assert (= (or b!5653209 bm!427692) bm!427693))

(declare-fun m!6620250 () Bool)

(assert (=> b!5653212 m!6620250))

(declare-fun m!6620252 () Bool)

(assert (=> d!1785534 m!6620252))

(assert (=> d!1785534 m!6619388))

(assert (=> bm!427691 m!6619574))

(declare-fun m!6620254 () Bool)

(assert (=> bm!427691 m!6620254))

(assert (=> bm!427693 m!6619574))

(declare-fun m!6620256 () Bool)

(assert (=> bm!427693 m!6620256))

(assert (=> b!5652399 d!1785534))

(assert (=> b!5652399 d!1785490))

(declare-fun d!1785546 () Bool)

(assert (=> d!1785546 (= (tail!11110 s!2326) (t!376522 s!2326))))

(assert (=> b!5652399 d!1785546))

(declare-fun b!5653227 () Bool)

(declare-fun e!3482161 () (InoxSet Context!10050))

(assert (=> b!5653227 (= e!3482161 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427696 () Bool)

(declare-fun call!427701 () (InoxSet Context!10050))

(assert (=> bm!427696 (= call!427701 (derivationStepZipperDown!983 (h!69547 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993))))) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993)))))) (h!69546 s!2326)))))

(declare-fun b!5653228 () Bool)

(assert (=> b!5653228 (= e!3482161 call!427701)))

(declare-fun b!5653229 () Bool)

(declare-fun e!3482160 () (InoxSet Context!10050))

(assert (=> b!5653229 (= e!3482160 e!3482161)))

(declare-fun c!993798 () Bool)

(assert (=> b!5653229 (= c!993798 ((_ is Cons!63099) (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993))))))))

(declare-fun d!1785550 () Bool)

(declare-fun c!993797 () Bool)

(declare-fun e!3482162 () Bool)

(assert (=> d!1785550 (= c!993797 e!3482162)))

(declare-fun res!2391424 () Bool)

(assert (=> d!1785550 (=> (not res!2391424) (not e!3482162))))

(assert (=> d!1785550 (= res!2391424 ((_ is Cons!63099) (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993))))))))

(assert (=> d!1785550 (= (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 lt!2265993))) (h!69546 s!2326)) e!3482160)))

(declare-fun b!5653230 () Bool)

(assert (=> b!5653230 (= e!3482160 ((_ map or) call!427701 (derivationStepZipperUp!909 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993)))))) (h!69546 s!2326))))))

(declare-fun b!5653231 () Bool)

(assert (=> b!5653231 (= e!3482162 (nullable!5673 (h!69547 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993)))))))))

(assert (= (and d!1785550 res!2391424) b!5653231))

(assert (= (and d!1785550 c!993797) b!5653230))

(assert (= (and d!1785550 (not c!993797)) b!5653229))

(assert (= (and b!5653229 c!993798) b!5653228))

(assert (= (and b!5653229 (not c!993798)) b!5653227))

(assert (= (or b!5653230 b!5653228) bm!427696))

(declare-fun m!6620266 () Bool)

(assert (=> bm!427696 m!6620266))

(declare-fun m!6620268 () Bool)

(assert (=> b!5653230 m!6620268))

(declare-fun m!6620270 () Bool)

(assert (=> b!5653231 m!6620270))

(assert (=> b!5652648 d!1785550))

(declare-fun d!1785556 () Bool)

(declare-fun res!2391433 () Bool)

(declare-fun e!3482170 () Bool)

(assert (=> d!1785556 (=> res!2391433 e!3482170)))

(assert (=> d!1785556 (= res!2391433 ((_ is Nil!63099) (exprs!5525 (h!69548 zl!343))))))

(assert (=> d!1785556 (= (forall!14794 (exprs!5525 (h!69548 zl!343)) lambda!304128) e!3482170)))

(declare-fun b!5653246 () Bool)

(declare-fun e!3482171 () Bool)

(assert (=> b!5653246 (= e!3482170 e!3482171)))

(declare-fun res!2391434 () Bool)

(assert (=> b!5653246 (=> (not res!2391434) (not e!3482171))))

(assert (=> b!5653246 (= res!2391434 (dynLambda!24688 lambda!304128 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653247 () Bool)

(assert (=> b!5653247 (= e!3482171 (forall!14794 (t!376523 (exprs!5525 (h!69548 zl!343))) lambda!304128))))

(assert (= (and d!1785556 (not res!2391433)) b!5653246))

(assert (= (and b!5653246 res!2391434) b!5653247))

(declare-fun b_lambda!213819 () Bool)

(assert (=> (not b_lambda!213819) (not b!5653246)))

(declare-fun m!6620272 () Bool)

(assert (=> b!5653246 m!6620272))

(declare-fun m!6620274 () Bool)

(assert (=> b!5653247 m!6620274))

(assert (=> d!1785286 d!1785556))

(declare-fun b!5653248 () Bool)

(declare-fun e!3482172 () Bool)

(assert (=> b!5653248 (= e!3482172 (nullable!5673 (regOne!31794 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))))))))

(declare-fun c!993803 () Bool)

(declare-fun call!427705 () List!63223)

(declare-fun c!993802 () Bool)

(declare-fun bm!427698 () Bool)

(assert (=> bm!427698 (= call!427705 ($colon$colon!1685 (exprs!5525 (ite c!993627 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427595))) (ite (or c!993803 c!993802) (regTwo!31794 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))))))))

(declare-fun b!5653249 () Bool)

(declare-fun e!3482173 () (InoxSet Context!10050))

(declare-fun e!3482177 () (InoxSet Context!10050))

(assert (=> b!5653249 (= e!3482173 e!3482177)))

(assert (=> b!5653249 (= c!993802 ((_ is Concat!24486) (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))))))

(declare-fun b!5653250 () Bool)

(declare-fun e!3482176 () (InoxSet Context!10050))

(assert (=> b!5653250 (= e!3482176 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427699 () Bool)

(declare-fun call!427708 () (InoxSet Context!10050))

(declare-fun call!427706 () (InoxSet Context!10050))

(assert (=> bm!427699 (= call!427708 call!427706)))

(declare-fun b!5653251 () Bool)

(declare-fun e!3482175 () (InoxSet Context!10050))

(declare-fun e!3482174 () (InoxSet Context!10050))

(assert (=> b!5653251 (= e!3482175 e!3482174)))

(declare-fun c!993804 () Bool)

(assert (=> b!5653251 (= c!993804 ((_ is Union!15641) (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))))))

(declare-fun b!5653252 () Bool)

(declare-fun call!427704 () (InoxSet Context!10050))

(assert (=> b!5653252 (= e!3482177 call!427704)))

(declare-fun bm!427700 () Bool)

(declare-fun call!427703 () (InoxSet Context!10050))

(assert (=> bm!427700 (= call!427703 (derivationStepZipperDown!983 (ite c!993804 (regOne!31795 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (regOne!31794 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))))) (ite c!993804 (ite c!993627 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427595)) (Context!10051 call!427705)) (h!69546 s!2326)))))

(declare-fun call!427707 () List!63223)

(declare-fun bm!427701 () Bool)

(assert (=> bm!427701 (= call!427706 (derivationStepZipperDown!983 (ite c!993804 (regTwo!31795 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (ite c!993803 (regTwo!31794 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (ite c!993802 (regOne!31794 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (reg!15970 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))))))) (ite (or c!993804 c!993803) (ite c!993627 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427595)) (Context!10051 call!427707)) (h!69546 s!2326)))))

(declare-fun b!5653254 () Bool)

(assert (=> b!5653254 (= e!3482174 ((_ map or) call!427703 call!427706))))

(declare-fun bm!427702 () Bool)

(assert (=> bm!427702 (= call!427707 call!427705)))

(declare-fun b!5653255 () Bool)

(assert (=> b!5653255 (= e!3482175 (store ((as const (Array Context!10050 Bool)) false) (ite c!993627 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427595)) true))))

(declare-fun b!5653256 () Bool)

(declare-fun c!993805 () Bool)

(assert (=> b!5653256 (= c!993805 ((_ is Star!15641) (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))))))

(assert (=> b!5653256 (= e!3482177 e!3482176)))

(declare-fun bm!427703 () Bool)

(assert (=> bm!427703 (= call!427704 call!427708)))

(declare-fun c!993806 () Bool)

(declare-fun d!1785558 () Bool)

(assert (=> d!1785558 (= c!993806 (and ((_ is ElementMatch!15641) (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (= (c!993471 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))) (h!69546 s!2326))))))

(assert (=> d!1785558 (= (derivationStepZipperDown!983 (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292)))) (ite c!993627 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427595)) (h!69546 s!2326)) e!3482175)))

(declare-fun b!5653253 () Bool)

(assert (=> b!5653253 (= e!3482176 call!427704)))

(declare-fun b!5653257 () Bool)

(assert (=> b!5653257 (= e!3482173 ((_ map or) call!427703 call!427708))))

(declare-fun b!5653258 () Bool)

(assert (=> b!5653258 (= c!993803 e!3482172)))

(declare-fun res!2391435 () Bool)

(assert (=> b!5653258 (=> (not res!2391435) (not e!3482172))))

(assert (=> b!5653258 (= res!2391435 ((_ is Concat!24486) (ite c!993627 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))))))

(assert (=> b!5653258 (= e!3482174 e!3482173)))

(assert (= (and d!1785558 c!993806) b!5653255))

(assert (= (and d!1785558 (not c!993806)) b!5653251))

(assert (= (and b!5653251 c!993804) b!5653254))

(assert (= (and b!5653251 (not c!993804)) b!5653258))

(assert (= (and b!5653258 res!2391435) b!5653248))

(assert (= (and b!5653258 c!993803) b!5653257))

(assert (= (and b!5653258 (not c!993803)) b!5653249))

(assert (= (and b!5653249 c!993802) b!5653252))

(assert (= (and b!5653249 (not c!993802)) b!5653256))

(assert (= (and b!5653256 c!993805) b!5653253))

(assert (= (and b!5653256 (not c!993805)) b!5653250))

(assert (= (or b!5653252 b!5653253) bm!427702))

(assert (= (or b!5653252 b!5653253) bm!427703))

(assert (= (or b!5653257 bm!427702) bm!427698))

(assert (= (or b!5653257 bm!427703) bm!427699))

(assert (= (or b!5653254 bm!427699) bm!427701))

(assert (= (or b!5653254 b!5653257) bm!427700))

(declare-fun m!6620290 () Bool)

(assert (=> b!5653255 m!6620290))

(declare-fun m!6620292 () Bool)

(assert (=> b!5653248 m!6620292))

(declare-fun m!6620294 () Bool)

(assert (=> bm!427700 m!6620294))

(declare-fun m!6620296 () Bool)

(assert (=> bm!427698 m!6620296))

(declare-fun m!6620298 () Bool)

(assert (=> bm!427701 m!6620298))

(assert (=> bm!427590 d!1785558))

(declare-fun b!5653288 () Bool)

(declare-fun e!3482193 () List!63222)

(assert (=> b!5653288 (= e!3482193 (Cons!63098 (h!69546 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098))) (++!13851 (t!376522 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098))) (t!376522 s!2326))))))

(declare-fun b!5653287 () Bool)

(assert (=> b!5653287 (= e!3482193 (t!376522 s!2326))))

(declare-fun b!5653289 () Bool)

(declare-fun res!2391440 () Bool)

(declare-fun e!3482192 () Bool)

(assert (=> b!5653289 (=> (not res!2391440) (not e!3482192))))

(declare-fun lt!2266111 () List!63222)

(declare-fun size!39987 (List!63222) Int)

(assert (=> b!5653289 (= res!2391440 (= (size!39987 lt!2266111) (+ (size!39987 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098))) (size!39987 (t!376522 s!2326)))))))

(declare-fun d!1785562 () Bool)

(assert (=> d!1785562 e!3482192))

(declare-fun res!2391441 () Bool)

(assert (=> d!1785562 (=> (not res!2391441) (not e!3482192))))

(declare-fun content!11419 (List!63222) (InoxSet C!31552))

(assert (=> d!1785562 (= res!2391441 (= (content!11419 lt!2266111) ((_ map or) (content!11419 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098))) (content!11419 (t!376522 s!2326)))))))

(assert (=> d!1785562 (= lt!2266111 e!3482193)))

(declare-fun c!993819 () Bool)

(assert (=> d!1785562 (= c!993819 ((_ is Nil!63098) (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098))))))

(assert (=> d!1785562 (= (++!13851 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (t!376522 s!2326)) lt!2266111)))

(declare-fun b!5653290 () Bool)

(assert (=> b!5653290 (= e!3482192 (or (not (= (t!376522 s!2326) Nil!63098)) (= lt!2266111 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)))))))

(assert (= (and d!1785562 c!993819) b!5653287))

(assert (= (and d!1785562 (not c!993819)) b!5653288))

(assert (= (and d!1785562 res!2391441) b!5653289))

(assert (= (and b!5653289 res!2391440) b!5653290))

(declare-fun m!6620300 () Bool)

(assert (=> b!5653288 m!6620300))

(declare-fun m!6620302 () Bool)

(assert (=> b!5653289 m!6620302))

(assert (=> b!5653289 m!6619666))

(declare-fun m!6620304 () Bool)

(assert (=> b!5653289 m!6620304))

(declare-fun m!6620306 () Bool)

(assert (=> b!5653289 m!6620306))

(declare-fun m!6620308 () Bool)

(assert (=> d!1785562 m!6620308))

(assert (=> d!1785562 m!6619666))

(declare-fun m!6620310 () Bool)

(assert (=> d!1785562 m!6620310))

(declare-fun m!6620312 () Bool)

(assert (=> d!1785562 m!6620312))

(assert (=> b!5652583 d!1785562))

(declare-fun b!5653292 () Bool)

(declare-fun e!3482195 () List!63222)

(assert (=> b!5653292 (= e!3482195 (Cons!63098 (h!69546 Nil!63098) (++!13851 (t!376522 Nil!63098) (Cons!63098 (h!69546 s!2326) Nil!63098))))))

(declare-fun b!5653291 () Bool)

(assert (=> b!5653291 (= e!3482195 (Cons!63098 (h!69546 s!2326) Nil!63098))))

(declare-fun b!5653293 () Bool)

(declare-fun res!2391442 () Bool)

(declare-fun e!3482194 () Bool)

(assert (=> b!5653293 (=> (not res!2391442) (not e!3482194))))

(declare-fun lt!2266112 () List!63222)

(assert (=> b!5653293 (= res!2391442 (= (size!39987 lt!2266112) (+ (size!39987 Nil!63098) (size!39987 (Cons!63098 (h!69546 s!2326) Nil!63098)))))))

(declare-fun d!1785564 () Bool)

(assert (=> d!1785564 e!3482194))

(declare-fun res!2391443 () Bool)

(assert (=> d!1785564 (=> (not res!2391443) (not e!3482194))))

(assert (=> d!1785564 (= res!2391443 (= (content!11419 lt!2266112) ((_ map or) (content!11419 Nil!63098) (content!11419 (Cons!63098 (h!69546 s!2326) Nil!63098)))))))

(assert (=> d!1785564 (= lt!2266112 e!3482195)))

(declare-fun c!993820 () Bool)

(assert (=> d!1785564 (= c!993820 ((_ is Nil!63098) Nil!63098))))

(assert (=> d!1785564 (= (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) lt!2266112)))

(declare-fun b!5653294 () Bool)

(assert (=> b!5653294 (= e!3482194 (or (not (= (Cons!63098 (h!69546 s!2326) Nil!63098) Nil!63098)) (= lt!2266112 Nil!63098)))))

(assert (= (and d!1785564 c!993820) b!5653291))

(assert (= (and d!1785564 (not c!993820)) b!5653292))

(assert (= (and d!1785564 res!2391443) b!5653293))

(assert (= (and b!5653293 res!2391442) b!5653294))

(declare-fun m!6620314 () Bool)

(assert (=> b!5653292 m!6620314))

(declare-fun m!6620316 () Bool)

(assert (=> b!5653293 m!6620316))

(declare-fun m!6620318 () Bool)

(assert (=> b!5653293 m!6620318))

(declare-fun m!6620320 () Bool)

(assert (=> b!5653293 m!6620320))

(declare-fun m!6620322 () Bool)

(assert (=> d!1785564 m!6620322))

(declare-fun m!6620324 () Bool)

(assert (=> d!1785564 m!6620324))

(declare-fun m!6620326 () Bool)

(assert (=> d!1785564 m!6620326))

(assert (=> b!5652583 d!1785564))

(declare-fun d!1785566 () Bool)

(assert (=> d!1785566 (= (++!13851 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (t!376522 s!2326)) s!2326)))

(declare-fun lt!2266115 () Unit!156096)

(declare-fun choose!42802 (List!63222 C!31552 List!63222 List!63222) Unit!156096)

(assert (=> d!1785566 (= lt!2266115 (choose!42802 Nil!63098 (h!69546 s!2326) (t!376522 s!2326) s!2326))))

(assert (=> d!1785566 (= (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) (t!376522 s!2326))) s!2326)))

(assert (=> d!1785566 (= (lemmaMoveElementToOtherListKeepsConcatEq!2020 Nil!63098 (h!69546 s!2326) (t!376522 s!2326) s!2326) lt!2266115)))

(declare-fun bs!1314975 () Bool)

(assert (= bs!1314975 d!1785566))

(assert (=> bs!1314975 m!6619666))

(assert (=> bs!1314975 m!6619666))

(assert (=> bs!1314975 m!6619668))

(declare-fun m!6620328 () Bool)

(assert (=> bs!1314975 m!6620328))

(declare-fun m!6620330 () Bool)

(assert (=> bs!1314975 m!6620330))

(assert (=> b!5652583 d!1785566))

(declare-fun b!5653295 () Bool)

(declare-fun e!3482199 () Bool)

(assert (=> b!5653295 (= e!3482199 (matchR!7826 (regTwo!31794 r!7292) (t!376522 s!2326)))))

(declare-fun b!5653296 () Bool)

(declare-fun e!3482200 () Bool)

(declare-fun lt!2266116 () Option!15650)

(assert (=> b!5653296 (= e!3482200 (= (++!13851 (_1!36041 (get!21739 lt!2266116)) (_2!36041 (get!21739 lt!2266116))) s!2326))))

(declare-fun b!5653297 () Bool)

(declare-fun lt!2266118 () Unit!156096)

(declare-fun lt!2266117 () Unit!156096)

(assert (=> b!5653297 (= lt!2266118 lt!2266117)))

(assert (=> b!5653297 (= (++!13851 (++!13851 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (Cons!63098 (h!69546 (t!376522 s!2326)) Nil!63098)) (t!376522 (t!376522 s!2326))) s!2326)))

(assert (=> b!5653297 (= lt!2266117 (lemmaMoveElementToOtherListKeepsConcatEq!2020 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (h!69546 (t!376522 s!2326)) (t!376522 (t!376522 s!2326)) s!2326))))

(declare-fun e!3482197 () Option!15650)

(assert (=> b!5653297 (= e!3482197 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) (++!13851 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (Cons!63098 (h!69546 (t!376522 s!2326)) Nil!63098)) (t!376522 (t!376522 s!2326)) s!2326))))

(declare-fun b!5653298 () Bool)

(declare-fun res!2391446 () Bool)

(assert (=> b!5653298 (=> (not res!2391446) (not e!3482200))))

(assert (=> b!5653298 (= res!2391446 (matchR!7826 (regOne!31794 r!7292) (_1!36041 (get!21739 lt!2266116))))))

(declare-fun b!5653299 () Bool)

(assert (=> b!5653299 (= e!3482197 None!15649)))

(declare-fun b!5653300 () Bool)

(declare-fun e!3482198 () Option!15650)

(assert (=> b!5653300 (= e!3482198 e!3482197)))

(declare-fun c!993822 () Bool)

(assert (=> b!5653300 (= c!993822 ((_ is Nil!63098) (t!376522 s!2326)))))

(declare-fun b!5653301 () Bool)

(assert (=> b!5653301 (= e!3482198 (Some!15649 (tuple2!65477 (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (t!376522 s!2326))))))

(declare-fun b!5653303 () Bool)

(declare-fun res!2391447 () Bool)

(assert (=> b!5653303 (=> (not res!2391447) (not e!3482200))))

(assert (=> b!5653303 (= res!2391447 (matchR!7826 (regTwo!31794 r!7292) (_2!36041 (get!21739 lt!2266116))))))

(declare-fun b!5653302 () Bool)

(declare-fun e!3482196 () Bool)

(assert (=> b!5653302 (= e!3482196 (not (isDefined!12353 lt!2266116)))))

(declare-fun d!1785568 () Bool)

(assert (=> d!1785568 e!3482196))

(declare-fun res!2391448 () Bool)

(assert (=> d!1785568 (=> res!2391448 e!3482196)))

(assert (=> d!1785568 (= res!2391448 e!3482200)))

(declare-fun res!2391445 () Bool)

(assert (=> d!1785568 (=> (not res!2391445) (not e!3482200))))

(assert (=> d!1785568 (= res!2391445 (isDefined!12353 lt!2266116))))

(assert (=> d!1785568 (= lt!2266116 e!3482198)))

(declare-fun c!993821 () Bool)

(assert (=> d!1785568 (= c!993821 e!3482199)))

(declare-fun res!2391444 () Bool)

(assert (=> d!1785568 (=> (not res!2391444) (not e!3482199))))

(assert (=> d!1785568 (= res!2391444 (matchR!7826 (regOne!31794 r!7292) (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098))))))

(assert (=> d!1785568 (validRegex!7377 (regOne!31794 r!7292))))

(assert (=> d!1785568 (= (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) (++!13851 Nil!63098 (Cons!63098 (h!69546 s!2326) Nil!63098)) (t!376522 s!2326) s!2326) lt!2266116)))

(assert (= (and d!1785568 res!2391444) b!5653295))

(assert (= (and d!1785568 c!993821) b!5653301))

(assert (= (and d!1785568 (not c!993821)) b!5653300))

(assert (= (and b!5653300 c!993822) b!5653299))

(assert (= (and b!5653300 (not c!993822)) b!5653297))

(assert (= (and d!1785568 res!2391445) b!5653298))

(assert (= (and b!5653298 res!2391446) b!5653303))

(assert (= (and b!5653303 res!2391447) b!5653296))

(assert (= (and d!1785568 (not res!2391448)) b!5653302))

(declare-fun m!6620332 () Bool)

(assert (=> b!5653296 m!6620332))

(declare-fun m!6620336 () Bool)

(assert (=> b!5653296 m!6620336))

(assert (=> b!5653298 m!6620332))

(declare-fun m!6620340 () Bool)

(assert (=> b!5653298 m!6620340))

(assert (=> b!5653297 m!6619666))

(declare-fun m!6620344 () Bool)

(assert (=> b!5653297 m!6620344))

(assert (=> b!5653297 m!6620344))

(declare-fun m!6620346 () Bool)

(assert (=> b!5653297 m!6620346))

(assert (=> b!5653297 m!6619666))

(declare-fun m!6620348 () Bool)

(assert (=> b!5653297 m!6620348))

(assert (=> b!5653297 m!6620344))

(declare-fun m!6620350 () Bool)

(assert (=> b!5653297 m!6620350))

(declare-fun m!6620352 () Bool)

(assert (=> b!5653295 m!6620352))

(declare-fun m!6620354 () Bool)

(assert (=> b!5653302 m!6620354))

(assert (=> b!5653303 m!6620332))

(declare-fun m!6620356 () Bool)

(assert (=> b!5653303 m!6620356))

(assert (=> d!1785568 m!6620354))

(assert (=> d!1785568 m!6619666))

(declare-fun m!6620358 () Bool)

(assert (=> d!1785568 m!6620358))

(assert (=> d!1785568 m!6619682))

(assert (=> b!5652583 d!1785568))

(declare-fun d!1785572 () Bool)

(assert (=> d!1785572 (= (isEmpty!34945 (t!376522 s!2326)) ((_ is Nil!63098) (t!376522 s!2326)))))

(assert (=> d!1785288 d!1785572))

(declare-fun d!1785574 () Bool)

(declare-fun res!2391450 () Bool)

(declare-fun e!3482212 () Bool)

(assert (=> d!1785574 (=> res!2391450 e!3482212)))

(assert (=> d!1785574 (= res!2391450 ((_ is Nil!63099) lt!2266077))))

(assert (=> d!1785574 (= (forall!14794 lt!2266077 lambda!304143) e!3482212)))

(declare-fun b!5653325 () Bool)

(declare-fun e!3482213 () Bool)

(assert (=> b!5653325 (= e!3482212 e!3482213)))

(declare-fun res!2391451 () Bool)

(assert (=> b!5653325 (=> (not res!2391451) (not e!3482213))))

(assert (=> b!5653325 (= res!2391451 (dynLambda!24688 lambda!304143 (h!69547 lt!2266077)))))

(declare-fun b!5653326 () Bool)

(assert (=> b!5653326 (= e!3482213 (forall!14794 (t!376523 lt!2266077) lambda!304143))))

(assert (= (and d!1785574 (not res!2391450)) b!5653325))

(assert (= (and b!5653325 res!2391451) b!5653326))

(declare-fun b_lambda!213821 () Bool)

(assert (=> (not b_lambda!213821) (not b!5653325)))

(declare-fun m!6620360 () Bool)

(assert (=> b!5653325 m!6620360))

(declare-fun m!6620362 () Bool)

(assert (=> b!5653326 m!6620362))

(assert (=> d!1785328 d!1785574))

(assert (=> d!1785246 d!1785458))

(assert (=> d!1785246 d!1785278))

(declare-fun b!5653327 () Bool)

(declare-fun e!3482219 () Bool)

(declare-fun call!427727 () Bool)

(assert (=> b!5653327 (= e!3482219 call!427727)))

(declare-fun b!5653328 () Bool)

(declare-fun e!3482220 () Bool)

(declare-fun call!427729 () Bool)

(assert (=> b!5653328 (= e!3482220 call!427729)))

(declare-fun b!5653330 () Bool)

(declare-fun e!3482217 () Bool)

(assert (=> b!5653330 (= e!3482217 call!427727)))

(declare-fun bm!427722 () Bool)

(assert (=> bm!427722 (= call!427727 call!427729)))

(declare-fun b!5653331 () Bool)

(declare-fun e!3482216 () Bool)

(declare-fun e!3482215 () Bool)

(assert (=> b!5653331 (= e!3482216 e!3482215)))

(declare-fun c!993833 () Bool)

(assert (=> b!5653331 (= c!993833 ((_ is Union!15641) (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))))))

(declare-fun bm!427723 () Bool)

(declare-fun c!993834 () Bool)

(assert (=> bm!427723 (= call!427729 (validRegex!7377 (ite c!993834 (reg!15970 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))) (ite c!993833 (regTwo!31795 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))) (regTwo!31794 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292))))))))))

(declare-fun b!5653332 () Bool)

(declare-fun res!2391455 () Bool)

(assert (=> b!5653332 (=> (not res!2391455) (not e!3482217))))

(declare-fun call!427728 () Bool)

(assert (=> b!5653332 (= res!2391455 call!427728)))

(assert (=> b!5653332 (= e!3482215 e!3482217)))

(declare-fun b!5653333 () Bool)

(assert (=> b!5653333 (= e!3482216 e!3482220)))

(declare-fun res!2391456 () Bool)

(assert (=> b!5653333 (= res!2391456 (not (nullable!5673 (reg!15970 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))))))))

(assert (=> b!5653333 (=> (not res!2391456) (not e!3482220))))

(declare-fun b!5653334 () Bool)

(declare-fun res!2391453 () Bool)

(declare-fun e!3482214 () Bool)

(assert (=> b!5653334 (=> res!2391453 e!3482214)))

(assert (=> b!5653334 (= res!2391453 (not ((_ is Concat!24486) (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292))))))))

(assert (=> b!5653334 (= e!3482215 e!3482214)))

(declare-fun b!5653329 () Bool)

(declare-fun e!3482218 () Bool)

(assert (=> b!5653329 (= e!3482218 e!3482216)))

(assert (=> b!5653329 (= c!993834 ((_ is Star!15641) (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))))))

(declare-fun d!1785576 () Bool)

(declare-fun res!2391452 () Bool)

(assert (=> d!1785576 (=> res!2391452 e!3482218)))

(assert (=> d!1785576 (= res!2391452 ((_ is ElementMatch!15641) (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))))))

(assert (=> d!1785576 (= (validRegex!7377 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))) e!3482218)))

(declare-fun b!5653335 () Bool)

(assert (=> b!5653335 (= e!3482214 e!3482219)))

(declare-fun res!2391454 () Bool)

(assert (=> b!5653335 (=> (not res!2391454) (not e!3482219))))

(assert (=> b!5653335 (= res!2391454 call!427728)))

(declare-fun bm!427724 () Bool)

(assert (=> bm!427724 (= call!427728 (validRegex!7377 (ite c!993833 (regOne!31795 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))) (regOne!31794 (ite c!993605 (reg!15970 r!7292) (ite c!993604 (regTwo!31795 r!7292) (regTwo!31794 r!7292)))))))))

(assert (= (and d!1785576 (not res!2391452)) b!5653329))

(assert (= (and b!5653329 c!993834) b!5653333))

(assert (= (and b!5653329 (not c!993834)) b!5653331))

(assert (= (and b!5653333 res!2391456) b!5653328))

(assert (= (and b!5653331 c!993833) b!5653332))

(assert (= (and b!5653331 (not c!993833)) b!5653334))

(assert (= (and b!5653332 res!2391455) b!5653330))

(assert (= (and b!5653334 (not res!2391453)) b!5653335))

(assert (= (and b!5653335 res!2391454) b!5653327))

(assert (= (or b!5653330 b!5653327) bm!427722))

(assert (= (or b!5653332 b!5653335) bm!427724))

(assert (= (or b!5653328 bm!427722) bm!427723))

(declare-fun m!6620368 () Bool)

(assert (=> bm!427723 m!6620368))

(declare-fun m!6620372 () Bool)

(assert (=> b!5653333 m!6620372))

(declare-fun m!6620376 () Bool)

(assert (=> bm!427724 m!6620376))

(assert (=> bm!427574 d!1785576))

(declare-fun b!5653370 () Bool)

(declare-fun e!3482247 () Bool)

(declare-fun e!3482246 () Bool)

(assert (=> b!5653370 (= e!3482247 e!3482246)))

(declare-fun c!993844 () Bool)

(assert (=> b!5653370 (= c!993844 ((_ is Union!15641) (regOne!31794 (regOne!31794 r!7292))))))

(declare-fun bm!427737 () Bool)

(declare-fun call!427742 () Bool)

(assert (=> bm!427737 (= call!427742 (nullable!5673 (ite c!993844 (regOne!31795 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 (regOne!31794 r!7292))))))))

(declare-fun b!5653371 () Bool)

(declare-fun e!3482248 () Bool)

(declare-fun call!427743 () Bool)

(assert (=> b!5653371 (= e!3482248 call!427743)))

(declare-fun b!5653372 () Bool)

(declare-fun e!3482249 () Bool)

(assert (=> b!5653372 (= e!3482246 e!3482249)))

(declare-fun res!2391475 () Bool)

(assert (=> b!5653372 (= res!2391475 call!427742)))

(assert (=> b!5653372 (=> res!2391475 e!3482249)))

(declare-fun b!5653373 () Bool)

(declare-fun e!3482251 () Bool)

(assert (=> b!5653373 (= e!3482251 e!3482247)))

(declare-fun res!2391474 () Bool)

(assert (=> b!5653373 (=> res!2391474 e!3482247)))

(assert (=> b!5653373 (= res!2391474 ((_ is Star!15641) (regOne!31794 (regOne!31794 r!7292))))))

(declare-fun b!5653374 () Bool)

(assert (=> b!5653374 (= e!3482246 e!3482248)))

(declare-fun res!2391473 () Bool)

(assert (=> b!5653374 (= res!2391473 call!427742)))

(assert (=> b!5653374 (=> (not res!2391473) (not e!3482248))))

(declare-fun d!1785578 () Bool)

(declare-fun res!2391476 () Bool)

(declare-fun e!3482250 () Bool)

(assert (=> d!1785578 (=> res!2391476 e!3482250)))

(assert (=> d!1785578 (= res!2391476 ((_ is EmptyExpr!15641) (regOne!31794 (regOne!31794 r!7292))))))

(assert (=> d!1785578 (= (nullableFct!1764 (regOne!31794 (regOne!31794 r!7292))) e!3482250)))

(declare-fun bm!427738 () Bool)

(assert (=> bm!427738 (= call!427743 (nullable!5673 (ite c!993844 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))))))))

(declare-fun b!5653375 () Bool)

(assert (=> b!5653375 (= e!3482249 call!427743)))

(declare-fun b!5653376 () Bool)

(assert (=> b!5653376 (= e!3482250 e!3482251)))

(declare-fun res!2391477 () Bool)

(assert (=> b!5653376 (=> (not res!2391477) (not e!3482251))))

(assert (=> b!5653376 (= res!2391477 (and (not ((_ is EmptyLang!15641) (regOne!31794 (regOne!31794 r!7292)))) (not ((_ is ElementMatch!15641) (regOne!31794 (regOne!31794 r!7292))))))))

(assert (= (and d!1785578 (not res!2391476)) b!5653376))

(assert (= (and b!5653376 res!2391477) b!5653373))

(assert (= (and b!5653373 (not res!2391474)) b!5653370))

(assert (= (and b!5653370 c!993844) b!5653372))

(assert (= (and b!5653370 (not c!993844)) b!5653374))

(assert (= (and b!5653372 (not res!2391475)) b!5653375))

(assert (= (and b!5653374 res!2391473) b!5653371))

(assert (= (or b!5653375 b!5653371) bm!427738))

(assert (= (or b!5653372 b!5653374) bm!427737))

(declare-fun m!6620406 () Bool)

(assert (=> bm!427737 m!6620406))

(declare-fun m!6620408 () Bool)

(assert (=> bm!427738 m!6620408))

(assert (=> d!1785306 d!1785578))

(declare-fun d!1785600 () Bool)

(assert (=> d!1785600 (= (Exists!2741 lambda!304136) (choose!42796 lambda!304136))))

(declare-fun bs!1314984 () Bool)

(assert (= bs!1314984 d!1785600))

(declare-fun m!6620410 () Bool)

(assert (=> bs!1314984 m!6620410))

(assert (=> d!1785300 d!1785600))

(declare-fun d!1785602 () Bool)

(assert (=> d!1785602 (= (Exists!2741 lambda!304137) (choose!42796 lambda!304137))))

(declare-fun bs!1314986 () Bool)

(assert (= bs!1314986 d!1785602))

(declare-fun m!6620414 () Bool)

(assert (=> bs!1314986 m!6620414))

(assert (=> d!1785300 d!1785602))

(declare-fun bs!1314992 () Bool)

(declare-fun d!1785604 () Bool)

(assert (= bs!1314992 (and d!1785604 b!5652024)))

(declare-fun lambda!304186 () Int)

(assert (=> bs!1314992 (not (= lambda!304186 lambda!304086))))

(declare-fun bs!1314993 () Bool)

(assert (= bs!1314993 (and d!1785604 b!5653021)))

(assert (=> bs!1314993 (not (= lambda!304186 lambda!304163))))

(declare-fun bs!1314994 () Bool)

(assert (= bs!1314994 (and d!1785604 b!5653120)))

(assert (=> bs!1314994 (not (= lambda!304186 lambda!304177))))

(declare-fun bs!1314995 () Bool)

(assert (= bs!1314995 (and d!1785604 d!1785300)))

(assert (=> bs!1314995 (not (= lambda!304186 lambda!304137))))

(declare-fun bs!1314996 () Bool)

(assert (= bs!1314996 (and d!1785604 b!5653111)))

(assert (=> bs!1314996 (not (= lambda!304186 lambda!304179))))

(declare-fun bs!1314997 () Bool)

(assert (= bs!1314997 (and d!1785604 b!5652301)))

(assert (=> bs!1314997 (not (= lambda!304186 lambda!304117))))

(declare-fun bs!1314998 () Bool)

(assert (= bs!1314998 (and d!1785604 b!5653030)))

(assert (=> bs!1314998 (not (= lambda!304186 lambda!304162))))

(assert (=> bs!1314995 (= lambda!304186 lambda!304136)))

(declare-fun bs!1314999 () Bool)

(assert (= bs!1314999 (and d!1785604 b!5652310)))

(assert (=> bs!1314999 (not (= lambda!304186 lambda!304116))))

(declare-fun bs!1315000 () Bool)

(assert (= bs!1315000 (and d!1785604 d!1785298)))

(assert (=> bs!1315000 (= lambda!304186 lambda!304131)))

(assert (=> bs!1314992 (= lambda!304186 lambda!304085)))

(assert (=> d!1785604 true))

(assert (=> d!1785604 true))

(assert (=> d!1785604 true))

(declare-fun lambda!304187 () Int)

(assert (=> bs!1314992 (= lambda!304187 lambda!304086)))

(assert (=> bs!1314993 (= (and (= (regOne!31794 r!7292) (regOne!31794 (regTwo!31795 r!7292))) (= (regTwo!31794 r!7292) (regTwo!31794 (regTwo!31795 r!7292)))) (= lambda!304187 lambda!304163))))

(assert (=> bs!1314994 (not (= lambda!304187 lambda!304177))))

(assert (=> bs!1314995 (= lambda!304187 lambda!304137)))

(assert (=> bs!1314996 (= (and (= (regOne!31794 r!7292) (regOne!31794 (regOne!31795 r!7292))) (= (regTwo!31794 r!7292) (regTwo!31794 (regOne!31795 r!7292)))) (= lambda!304187 lambda!304179))))

(assert (=> bs!1314998 (not (= lambda!304187 lambda!304162))))

(assert (=> bs!1314995 (not (= lambda!304187 lambda!304136))))

(assert (=> bs!1314999 (not (= lambda!304187 lambda!304116))))

(assert (=> bs!1314997 (= lambda!304187 lambda!304117)))

(declare-fun bs!1315001 () Bool)

(assert (= bs!1315001 d!1785604))

(assert (=> bs!1315001 (not (= lambda!304187 lambda!304186))))

(assert (=> bs!1315000 (not (= lambda!304187 lambda!304131))))

(assert (=> bs!1314992 (not (= lambda!304187 lambda!304085))))

(assert (=> d!1785604 true))

(assert (=> d!1785604 true))

(assert (=> d!1785604 true))

(assert (=> d!1785604 (= (Exists!2741 lambda!304186) (Exists!2741 lambda!304187))))

(assert (=> d!1785604 true))

(declare-fun _$90!1395 () Unit!156096)

(assert (=> d!1785604 (= (choose!42798 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326) _$90!1395)))

(declare-fun m!6620428 () Bool)

(assert (=> bs!1315001 m!6620428))

(declare-fun m!6620430 () Bool)

(assert (=> bs!1315001 m!6620430))

(assert (=> d!1785300 d!1785604))

(declare-fun b!5653501 () Bool)

(declare-fun e!3482296 () Bool)

(declare-fun call!427744 () Bool)

(assert (=> b!5653501 (= e!3482296 call!427744)))

(declare-fun b!5653502 () Bool)

(declare-fun e!3482297 () Bool)

(declare-fun call!427746 () Bool)

(assert (=> b!5653502 (= e!3482297 call!427746)))

(declare-fun b!5653504 () Bool)

(declare-fun e!3482294 () Bool)

(assert (=> b!5653504 (= e!3482294 call!427744)))

(declare-fun bm!427739 () Bool)

(assert (=> bm!427739 (= call!427744 call!427746)))

(declare-fun b!5653505 () Bool)

(declare-fun e!3482293 () Bool)

(declare-fun e!3482292 () Bool)

(assert (=> b!5653505 (= e!3482293 e!3482292)))

(declare-fun c!993845 () Bool)

(assert (=> b!5653505 (= c!993845 ((_ is Union!15641) (regOne!31794 r!7292)))))

(declare-fun bm!427740 () Bool)

(declare-fun c!993846 () Bool)

(assert (=> bm!427740 (= call!427746 (validRegex!7377 (ite c!993846 (reg!15970 (regOne!31794 r!7292)) (ite c!993845 (regTwo!31795 (regOne!31794 r!7292)) (regTwo!31794 (regOne!31794 r!7292))))))))

(declare-fun b!5653506 () Bool)

(declare-fun res!2391490 () Bool)

(assert (=> b!5653506 (=> (not res!2391490) (not e!3482294))))

(declare-fun call!427745 () Bool)

(assert (=> b!5653506 (= res!2391490 call!427745)))

(assert (=> b!5653506 (= e!3482292 e!3482294)))

(declare-fun b!5653507 () Bool)

(assert (=> b!5653507 (= e!3482293 e!3482297)))

(declare-fun res!2391491 () Bool)

(assert (=> b!5653507 (= res!2391491 (not (nullable!5673 (reg!15970 (regOne!31794 r!7292)))))))

(assert (=> b!5653507 (=> (not res!2391491) (not e!3482297))))

(declare-fun b!5653508 () Bool)

(declare-fun res!2391488 () Bool)

(declare-fun e!3482291 () Bool)

(assert (=> b!5653508 (=> res!2391488 e!3482291)))

(assert (=> b!5653508 (= res!2391488 (not ((_ is Concat!24486) (regOne!31794 r!7292))))))

(assert (=> b!5653508 (= e!3482292 e!3482291)))

(declare-fun b!5653503 () Bool)

(declare-fun e!3482295 () Bool)

(assert (=> b!5653503 (= e!3482295 e!3482293)))

(assert (=> b!5653503 (= c!993846 ((_ is Star!15641) (regOne!31794 r!7292)))))

(declare-fun d!1785616 () Bool)

(declare-fun res!2391487 () Bool)

(assert (=> d!1785616 (=> res!2391487 e!3482295)))

(assert (=> d!1785616 (= res!2391487 ((_ is ElementMatch!15641) (regOne!31794 r!7292)))))

(assert (=> d!1785616 (= (validRegex!7377 (regOne!31794 r!7292)) e!3482295)))

(declare-fun b!5653509 () Bool)

(assert (=> b!5653509 (= e!3482291 e!3482296)))

(declare-fun res!2391489 () Bool)

(assert (=> b!5653509 (=> (not res!2391489) (not e!3482296))))

(assert (=> b!5653509 (= res!2391489 call!427745)))

(declare-fun bm!427741 () Bool)

(assert (=> bm!427741 (= call!427745 (validRegex!7377 (ite c!993845 (regOne!31795 (regOne!31794 r!7292)) (regOne!31794 (regOne!31794 r!7292)))))))

(assert (= (and d!1785616 (not res!2391487)) b!5653503))

(assert (= (and b!5653503 c!993846) b!5653507))

(assert (= (and b!5653503 (not c!993846)) b!5653505))

(assert (= (and b!5653507 res!2391491) b!5653502))

(assert (= (and b!5653505 c!993845) b!5653506))

(assert (= (and b!5653505 (not c!993845)) b!5653508))

(assert (= (and b!5653506 res!2391490) b!5653504))

(assert (= (and b!5653508 (not res!2391488)) b!5653509))

(assert (= (and b!5653509 res!2391489) b!5653501))

(assert (= (or b!5653504 b!5653501) bm!427739))

(assert (= (or b!5653506 b!5653509) bm!427741))

(assert (= (or b!5653502 bm!427739) bm!427740))

(declare-fun m!6620432 () Bool)

(assert (=> bm!427740 m!6620432))

(declare-fun m!6620434 () Bool)

(assert (=> b!5653507 m!6620434))

(declare-fun m!6620436 () Bool)

(assert (=> bm!427741 m!6620436))

(assert (=> d!1785300 d!1785616))

(declare-fun d!1785618 () Bool)

(declare-fun res!2391496 () Bool)

(declare-fun e!3482302 () Bool)

(assert (=> d!1785618 (=> res!2391496 e!3482302)))

(assert (=> d!1785618 (= res!2391496 ((_ is Nil!63100) lt!2266004))))

(assert (=> d!1785618 (= (noDuplicate!1597 lt!2266004) e!3482302)))

(declare-fun b!5653514 () Bool)

(declare-fun e!3482303 () Bool)

(assert (=> b!5653514 (= e!3482302 e!3482303)))

(declare-fun res!2391497 () Bool)

(assert (=> b!5653514 (=> (not res!2391497) (not e!3482303))))

(declare-fun contains!19834 (List!63224 Context!10050) Bool)

(assert (=> b!5653514 (= res!2391497 (not (contains!19834 (t!376524 lt!2266004) (h!69548 lt!2266004))))))

(declare-fun b!5653515 () Bool)

(assert (=> b!5653515 (= e!3482303 (noDuplicate!1597 (t!376524 lt!2266004)))))

(assert (= (and d!1785618 (not res!2391496)) b!5653514))

(assert (= (and b!5653514 res!2391497) b!5653515))

(declare-fun m!6620438 () Bool)

(assert (=> b!5653514 m!6620438))

(declare-fun m!6620440 () Bool)

(assert (=> b!5653515 m!6620440))

(assert (=> d!1785214 d!1785618))

(declare-fun d!1785620 () Bool)

(declare-fun e!3482310 () Bool)

(assert (=> d!1785620 e!3482310))

(declare-fun res!2391503 () Bool)

(assert (=> d!1785620 (=> (not res!2391503) (not e!3482310))))

(declare-fun res!2391502 () List!63224)

(assert (=> d!1785620 (= res!2391503 (noDuplicate!1597 res!2391502))))

(declare-fun e!3482312 () Bool)

(assert (=> d!1785620 e!3482312))

(assert (=> d!1785620 (= (choose!42791 z!1189) res!2391502)))

(declare-fun b!5653523 () Bool)

(declare-fun e!3482311 () Bool)

(declare-fun tp!1566190 () Bool)

(assert (=> b!5653523 (= e!3482311 tp!1566190)))

(declare-fun b!5653522 () Bool)

(declare-fun tp!1566191 () Bool)

(assert (=> b!5653522 (= e!3482312 (and (inv!82349 (h!69548 res!2391502)) e!3482311 tp!1566191))))

(declare-fun b!5653524 () Bool)

(assert (=> b!5653524 (= e!3482310 (= (content!11416 res!2391502) z!1189))))

(assert (= b!5653522 b!5653523))

(assert (= (and d!1785620 ((_ is Cons!63100) res!2391502)) b!5653522))

(assert (= (and d!1785620 res!2391503) b!5653524))

(declare-fun m!6620442 () Bool)

(assert (=> d!1785620 m!6620442))

(declare-fun m!6620444 () Bool)

(assert (=> b!5653522 m!6620444))

(declare-fun m!6620446 () Bool)

(assert (=> b!5653524 m!6620446))

(assert (=> d!1785214 d!1785620))

(declare-fun d!1785622 () Bool)

(assert (=> d!1785622 (= (head!12014 (exprs!5525 (h!69548 zl!343))) (h!69547 (exprs!5525 (h!69548 zl!343))))))

(assert (=> b!5652217 d!1785622))

(declare-fun b!5653525 () Bool)

(declare-fun e!3482313 () Bool)

(assert (=> b!5653525 (= e!3482313 (nullable!5673 (regOne!31794 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292)))))))))))

(declare-fun c!993847 () Bool)

(declare-fun c!993848 () Bool)

(declare-fun call!427749 () List!63223)

(declare-fun bm!427742 () Bool)

(assert (=> bm!427742 (= call!427749 ($colon$colon!1685 (exprs!5525 (ite (or c!993627 c!993626) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427597))) (ite (or c!993848 c!993847) (regTwo!31794 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292)))))))))))

(declare-fun b!5653526 () Bool)

(declare-fun e!3482314 () (InoxSet Context!10050))

(declare-fun e!3482318 () (InoxSet Context!10050))

(assert (=> b!5653526 (= e!3482314 e!3482318)))

(assert (=> b!5653526 (= c!993847 ((_ is Concat!24486) (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))))))

(declare-fun b!5653527 () Bool)

(declare-fun e!3482317 () (InoxSet Context!10050))

(assert (=> b!5653527 (= e!3482317 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427743 () Bool)

(declare-fun call!427752 () (InoxSet Context!10050))

(declare-fun call!427750 () (InoxSet Context!10050))

(assert (=> bm!427743 (= call!427752 call!427750)))

(declare-fun b!5653528 () Bool)

(declare-fun e!3482316 () (InoxSet Context!10050))

(declare-fun e!3482315 () (InoxSet Context!10050))

(assert (=> b!5653528 (= e!3482316 e!3482315)))

(declare-fun c!993849 () Bool)

(assert (=> b!5653528 (= c!993849 ((_ is Union!15641) (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))))))

(declare-fun b!5653529 () Bool)

(declare-fun call!427748 () (InoxSet Context!10050))

(assert (=> b!5653529 (= e!3482318 call!427748)))

(declare-fun call!427747 () (InoxSet Context!10050))

(declare-fun bm!427744 () Bool)

(assert (=> bm!427744 (= call!427747 (derivationStepZipperDown!983 (ite c!993849 (regOne!31795 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (regOne!31794 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292)))))))) (ite c!993849 (ite (or c!993627 c!993626) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427597)) (Context!10051 call!427749)) (h!69546 s!2326)))))

(declare-fun bm!427745 () Bool)

(declare-fun call!427751 () List!63223)

(assert (=> bm!427745 (= call!427750 (derivationStepZipperDown!983 (ite c!993849 (regTwo!31795 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (ite c!993848 (regTwo!31794 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (ite c!993847 (regOne!31794 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (reg!15970 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292)))))))))) (ite (or c!993849 c!993848) (ite (or c!993627 c!993626) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427597)) (Context!10051 call!427751)) (h!69546 s!2326)))))

(declare-fun b!5653531 () Bool)

(assert (=> b!5653531 (= e!3482315 ((_ map or) call!427747 call!427750))))

(declare-fun bm!427746 () Bool)

(assert (=> bm!427746 (= call!427751 call!427749)))

(declare-fun b!5653532 () Bool)

(assert (=> b!5653532 (= e!3482316 (store ((as const (Array Context!10050 Bool)) false) (ite (or c!993627 c!993626) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427597)) true))))

(declare-fun b!5653533 () Bool)

(declare-fun c!993850 () Bool)

(assert (=> b!5653533 (= c!993850 ((_ is Star!15641) (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))))))

(assert (=> b!5653533 (= e!3482318 e!3482317)))

(declare-fun bm!427747 () Bool)

(assert (=> bm!427747 (= call!427748 call!427752)))

(declare-fun d!1785624 () Bool)

(declare-fun c!993851 () Bool)

(assert (=> d!1785624 (= c!993851 (and ((_ is ElementMatch!15641) (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (= (c!993471 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))) (h!69546 s!2326))))))

(assert (=> d!1785624 (= (derivationStepZipperDown!983 (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292)))))) (ite (or c!993627 c!993626) (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))) (Context!10051 call!427597)) (h!69546 s!2326)) e!3482316)))

(declare-fun b!5653530 () Bool)

(assert (=> b!5653530 (= e!3482317 call!427748)))

(declare-fun b!5653534 () Bool)

(assert (=> b!5653534 (= e!3482314 ((_ map or) call!427747 call!427752))))

(declare-fun b!5653535 () Bool)

(assert (=> b!5653535 (= c!993848 e!3482313)))

(declare-fun res!2391504 () Bool)

(assert (=> b!5653535 (=> (not res!2391504) (not e!3482313))))

(assert (=> b!5653535 (= res!2391504 ((_ is Concat!24486) (ite c!993627 (regTwo!31795 (regOne!31794 (regOne!31794 r!7292))) (ite c!993626 (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (ite c!993625 (regOne!31794 (regOne!31794 (regOne!31794 r!7292))) (reg!15970 (regOne!31794 (regOne!31794 r!7292))))))))))

(assert (=> b!5653535 (= e!3482315 e!3482314)))

(assert (= (and d!1785624 c!993851) b!5653532))

(assert (= (and d!1785624 (not c!993851)) b!5653528))

(assert (= (and b!5653528 c!993849) b!5653531))

(assert (= (and b!5653528 (not c!993849)) b!5653535))

(assert (= (and b!5653535 res!2391504) b!5653525))

(assert (= (and b!5653535 c!993848) b!5653534))

(assert (= (and b!5653535 (not c!993848)) b!5653526))

(assert (= (and b!5653526 c!993847) b!5653529))

(assert (= (and b!5653526 (not c!993847)) b!5653533))

(assert (= (and b!5653533 c!993850) b!5653530))

(assert (= (and b!5653533 (not c!993850)) b!5653527))

(assert (= (or b!5653529 b!5653530) bm!427746))

(assert (= (or b!5653529 b!5653530) bm!427747))

(assert (= (or b!5653534 bm!427746) bm!427742))

(assert (= (or b!5653534 bm!427747) bm!427743))

(assert (= (or b!5653531 bm!427743) bm!427745))

(assert (= (or b!5653531 b!5653534) bm!427744))

(declare-fun m!6620448 () Bool)

(assert (=> b!5653532 m!6620448))

(declare-fun m!6620450 () Bool)

(assert (=> b!5653525 m!6620450))

(declare-fun m!6620452 () Bool)

(assert (=> bm!427744 m!6620452))

(declare-fun m!6620454 () Bool)

(assert (=> bm!427742 m!6620454))

(declare-fun m!6620456 () Bool)

(assert (=> bm!427745 m!6620456))

(assert (=> bm!427591 d!1785624))

(declare-fun d!1785626 () Bool)

(assert (=> d!1785626 (= (nullable!5673 (reg!15970 r!7292)) (nullableFct!1764 (reg!15970 r!7292)))))

(declare-fun bs!1315002 () Bool)

(assert (= bs!1315002 d!1785626))

(declare-fun m!6620458 () Bool)

(assert (=> bs!1315002 m!6620458))

(assert (=> b!5652527 d!1785626))

(declare-fun bs!1315003 () Bool)

(declare-fun d!1785628 () Bool)

(assert (= bs!1315003 (and d!1785628 d!1785220)))

(declare-fun lambda!304188 () Int)

(assert (=> bs!1315003 (= lambda!304188 lambda!304102)))

(declare-fun bs!1315004 () Bool)

(assert (= bs!1315004 (and d!1785628 d!1785326)))

(assert (=> bs!1315004 (= lambda!304188 lambda!304140)))

(declare-fun bs!1315005 () Bool)

(assert (= bs!1315005 (and d!1785628 d!1785286)))

(assert (=> bs!1315005 (= lambda!304188 lambda!304128)))

(declare-fun bs!1315006 () Bool)

(assert (= bs!1315006 (and d!1785628 d!1785516)))

(assert (=> bs!1315006 (= lambda!304188 lambda!304172)))

(declare-fun bs!1315007 () Bool)

(assert (= bs!1315007 (and d!1785628 d!1785216)))

(assert (=> bs!1315007 (= lambda!304188 lambda!304096)))

(declare-fun bs!1315008 () Bool)

(assert (= bs!1315008 (and d!1785628 d!1785464)))

(assert (=> bs!1315008 (= lambda!304188 lambda!304160)))

(declare-fun bs!1315009 () Bool)

(assert (= bs!1315009 (and d!1785628 d!1785518)))

(assert (=> bs!1315009 (= lambda!304188 lambda!304175)))

(declare-fun bs!1315010 () Bool)

(assert (= bs!1315010 (and d!1785628 d!1785328)))

(assert (=> bs!1315010 (= lambda!304188 lambda!304143)))

(assert (=> d!1785628 (= (inv!82349 (h!69548 (t!376524 zl!343))) (forall!14794 (exprs!5525 (h!69548 (t!376524 zl!343))) lambda!304188))))

(declare-fun bs!1315011 () Bool)

(assert (= bs!1315011 d!1785628))

(declare-fun m!6620460 () Bool)

(assert (=> bs!1315011 m!6620460))

(assert (=> b!5652765 d!1785628))

(declare-fun d!1785630 () Bool)

(assert (=> d!1785630 (= (isEmpty!34946 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326)) (not ((_ is Some!15649) (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326))))))

(assert (=> d!1785302 d!1785630))

(declare-fun d!1785632 () Bool)

(assert (=> d!1785632 (= (isEmpty!34941 (t!376523 (unfocusZipperList!1069 zl!343))) ((_ is Nil!63099) (t!376523 (unfocusZipperList!1069 zl!343))))))

(assert (=> b!5652699 d!1785632))

(declare-fun d!1785634 () Bool)

(assert (=> d!1785634 (= (nullable!5673 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))) (nullableFct!1764 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun bs!1315012 () Bool)

(assert (= bs!1315012 d!1785634))

(declare-fun m!6620462 () Bool)

(assert (=> bs!1315012 m!6620462))

(assert (=> b!5652660 d!1785634))

(declare-fun d!1785636 () Bool)

(assert (=> d!1785636 (= ($colon$colon!1685 (exprs!5525 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343)))))) (ite (or c!993626 c!993625) (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 r!7292)))) (Cons!63099 (ite (or c!993626 c!993625) (regTwo!31794 (regOne!31794 (regOne!31794 r!7292))) (regOne!31794 (regOne!31794 r!7292))) (exprs!5525 (Context!10051 (Cons!63099 (regTwo!31794 (regOne!31794 r!7292)) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))

(assert (=> bm!427588 d!1785636))

(declare-fun d!1785638 () Bool)

(assert (=> d!1785638 (= (isUnion!616 lt!2266074) ((_ is Union!15641) lt!2266074))))

(assert (=> b!5652697 d!1785638))

(declare-fun bs!1315013 () Bool)

(declare-fun d!1785640 () Bool)

(assert (= bs!1315013 (and d!1785640 d!1785480)))

(declare-fun lambda!304189 () Int)

(assert (=> bs!1315013 (= lambda!304189 lambda!304168)))

(assert (=> d!1785640 (= (nullableZipper!1617 lt!2265985) (exists!2195 lt!2265985 lambda!304189))))

(declare-fun bs!1315014 () Bool)

(assert (= bs!1315014 d!1785640))

(declare-fun m!6620464 () Bool)

(assert (=> bs!1315014 m!6620464))

(assert (=> b!5652561 d!1785640))

(assert (=> d!1785264 d!1785246))

(assert (=> d!1785264 d!1785228))

(declare-fun d!1785642 () Bool)

(assert (=> d!1785642 (= (matchR!7826 r!7292 s!2326) (matchRSpec!2744 r!7292 s!2326))))

(assert (=> d!1785642 true))

(declare-fun _$88!3941 () Unit!156096)

(assert (=> d!1785642 (= (choose!42795 r!7292 s!2326) _$88!3941)))

(declare-fun bs!1315015 () Bool)

(assert (= bs!1315015 d!1785642))

(assert (=> bs!1315015 m!6619368))

(assert (=> bs!1315015 m!6619366))

(assert (=> d!1785264 d!1785642))

(assert (=> d!1785264 d!1785278))

(declare-fun b!5653536 () Bool)

(declare-fun e!3482322 () Bool)

(assert (=> b!5653536 (= e!3482322 (= (head!12015 s!2326) (c!993471 (regTwo!31794 r!7292))))))

(declare-fun b!5653537 () Bool)

(declare-fun e!3482325 () Bool)

(assert (=> b!5653537 (= e!3482325 (nullable!5673 (regTwo!31794 r!7292)))))

(declare-fun b!5653538 () Bool)

(declare-fun res!2391512 () Bool)

(declare-fun e!3482320 () Bool)

(assert (=> b!5653538 (=> res!2391512 e!3482320)))

(assert (=> b!5653538 (= res!2391512 (not ((_ is ElementMatch!15641) (regTwo!31794 r!7292))))))

(declare-fun e!3482319 () Bool)

(assert (=> b!5653538 (= e!3482319 e!3482320)))

(declare-fun b!5653539 () Bool)

(assert (=> b!5653539 (= e!3482325 (matchR!7826 (derivativeStep!4471 (regTwo!31794 r!7292) (head!12015 s!2326)) (tail!11110 s!2326)))))

(declare-fun b!5653540 () Bool)

(declare-fun res!2391506 () Bool)

(assert (=> b!5653540 (=> (not res!2391506) (not e!3482322))))

(declare-fun call!427753 () Bool)

(assert (=> b!5653540 (= res!2391506 (not call!427753))))

(declare-fun b!5653541 () Bool)

(declare-fun res!2391511 () Bool)

(assert (=> b!5653541 (=> res!2391511 e!3482320)))

(assert (=> b!5653541 (= res!2391511 e!3482322)))

(declare-fun res!2391508 () Bool)

(assert (=> b!5653541 (=> (not res!2391508) (not e!3482322))))

(declare-fun lt!2266120 () Bool)

(assert (=> b!5653541 (= res!2391508 lt!2266120)))

(declare-fun b!5653542 () Bool)

(declare-fun res!2391509 () Bool)

(assert (=> b!5653542 (=> (not res!2391509) (not e!3482322))))

(assert (=> b!5653542 (= res!2391509 (isEmpty!34945 (tail!11110 s!2326)))))

(declare-fun bm!427748 () Bool)

(assert (=> bm!427748 (= call!427753 (isEmpty!34945 s!2326))))

(declare-fun b!5653543 () Bool)

(assert (=> b!5653543 (= e!3482319 (not lt!2266120))))

(declare-fun b!5653544 () Bool)

(declare-fun e!3482321 () Bool)

(assert (=> b!5653544 (= e!3482321 (not (= (head!12015 s!2326) (c!993471 (regTwo!31794 r!7292)))))))

(declare-fun b!5653546 () Bool)

(declare-fun res!2391505 () Bool)

(assert (=> b!5653546 (=> res!2391505 e!3482321)))

(assert (=> b!5653546 (= res!2391505 (not (isEmpty!34945 (tail!11110 s!2326))))))

(declare-fun b!5653547 () Bool)

(declare-fun e!3482324 () Bool)

(assert (=> b!5653547 (= e!3482320 e!3482324)))

(declare-fun res!2391507 () Bool)

(assert (=> b!5653547 (=> (not res!2391507) (not e!3482324))))

(assert (=> b!5653547 (= res!2391507 (not lt!2266120))))

(declare-fun b!5653548 () Bool)

(assert (=> b!5653548 (= e!3482324 e!3482321)))

(declare-fun res!2391510 () Bool)

(assert (=> b!5653548 (=> res!2391510 e!3482321)))

(assert (=> b!5653548 (= res!2391510 call!427753)))

(declare-fun b!5653549 () Bool)

(declare-fun e!3482323 () Bool)

(assert (=> b!5653549 (= e!3482323 (= lt!2266120 call!427753))))

(declare-fun d!1785644 () Bool)

(assert (=> d!1785644 e!3482323))

(declare-fun c!993853 () Bool)

(assert (=> d!1785644 (= c!993853 ((_ is EmptyExpr!15641) (regTwo!31794 r!7292)))))

(assert (=> d!1785644 (= lt!2266120 e!3482325)))

(declare-fun c!993854 () Bool)

(assert (=> d!1785644 (= c!993854 (isEmpty!34945 s!2326))))

(assert (=> d!1785644 (validRegex!7377 (regTwo!31794 r!7292))))

(assert (=> d!1785644 (= (matchR!7826 (regTwo!31794 r!7292) s!2326) lt!2266120)))

(declare-fun b!5653545 () Bool)

(assert (=> b!5653545 (= e!3482323 e!3482319)))

(declare-fun c!993852 () Bool)

(assert (=> b!5653545 (= c!993852 ((_ is EmptyLang!15641) (regTwo!31794 r!7292)))))

(assert (= (and d!1785644 c!993854) b!5653537))

(assert (= (and d!1785644 (not c!993854)) b!5653539))

(assert (= (and d!1785644 c!993853) b!5653549))

(assert (= (and d!1785644 (not c!993853)) b!5653545))

(assert (= (and b!5653545 c!993852) b!5653543))

(assert (= (and b!5653545 (not c!993852)) b!5653538))

(assert (= (and b!5653538 (not res!2391512)) b!5653541))

(assert (= (and b!5653541 res!2391508) b!5653540))

(assert (= (and b!5653540 res!2391506) b!5653542))

(assert (= (and b!5653542 res!2391509) b!5653536))

(assert (= (and b!5653541 (not res!2391511)) b!5653547))

(assert (= (and b!5653547 res!2391507) b!5653548))

(assert (= (and b!5653548 (not res!2391510)) b!5653546))

(assert (= (and b!5653546 (not res!2391505)) b!5653544))

(assert (= (or b!5653549 b!5653540 b!5653548) bm!427748))

(assert (=> b!5653536 m!6619574))

(assert (=> b!5653539 m!6619574))

(assert (=> b!5653539 m!6619574))

(declare-fun m!6620466 () Bool)

(assert (=> b!5653539 m!6620466))

(assert (=> b!5653539 m!6619578))

(assert (=> b!5653539 m!6620466))

(assert (=> b!5653539 m!6619578))

(declare-fun m!6620468 () Bool)

(assert (=> b!5653539 m!6620468))

(assert (=> b!5653537 m!6620116))

(assert (=> bm!427748 m!6619520))

(assert (=> b!5653542 m!6619578))

(assert (=> b!5653542 m!6619578))

(assert (=> b!5653542 m!6619584))

(assert (=> b!5653544 m!6619574))

(assert (=> d!1785644 m!6619520))

(assert (=> d!1785644 m!6620122))

(assert (=> b!5653546 m!6619578))

(assert (=> b!5653546 m!6619578))

(assert (=> b!5653546 m!6619584))

(assert (=> b!5652581 d!1785644))

(declare-fun d!1785646 () Bool)

(assert (=> d!1785646 true))

(assert (=> d!1785646 true))

(declare-fun res!2391515 () Bool)

(assert (=> d!1785646 (= (choose!42796 lambda!304085) res!2391515)))

(assert (=> d!1785296 d!1785646))

(declare-fun bs!1315016 () Bool)

(declare-fun d!1785648 () Bool)

(assert (= bs!1315016 (and d!1785648 d!1785480)))

(declare-fun lambda!304190 () Int)

(assert (=> bs!1315016 (= lambda!304190 lambda!304168)))

(declare-fun bs!1315017 () Bool)

(assert (= bs!1315017 (and d!1785648 d!1785640)))

(assert (=> bs!1315017 (= lambda!304190 lambda!304189)))

(assert (=> d!1785648 (= (nullableZipper!1617 lt!2265989) (exists!2195 lt!2265989 lambda!304190))))

(declare-fun bs!1315018 () Bool)

(assert (= bs!1315018 d!1785648))

(declare-fun m!6620470 () Bool)

(assert (=> bs!1315018 m!6620470))

(assert (=> b!5652710 d!1785648))

(declare-fun d!1785650 () Bool)

(declare-fun c!993855 () Bool)

(assert (=> d!1785650 (= c!993855 (isEmpty!34945 (tail!11110 (t!376522 s!2326))))))

(declare-fun e!3482326 () Bool)

(assert (=> d!1785650 (= (matchZipper!1779 (derivationStepZipper!1728 ((_ map or) lt!2265989 lt!2265985) (head!12015 (t!376522 s!2326))) (tail!11110 (t!376522 s!2326))) e!3482326)))

(declare-fun b!5653550 () Bool)

(assert (=> b!5653550 (= e!3482326 (nullableZipper!1617 (derivationStepZipper!1728 ((_ map or) lt!2265989 lt!2265985) (head!12015 (t!376522 s!2326)))))))

(declare-fun b!5653551 () Bool)

(assert (=> b!5653551 (= e!3482326 (matchZipper!1779 (derivationStepZipper!1728 (derivationStepZipper!1728 ((_ map or) lt!2265989 lt!2265985) (head!12015 (t!376522 s!2326))) (head!12015 (tail!11110 (t!376522 s!2326)))) (tail!11110 (tail!11110 (t!376522 s!2326)))))))

(assert (= (and d!1785650 c!993855) b!5653550))

(assert (= (and d!1785650 (not c!993855)) b!5653551))

(assert (=> d!1785650 m!6619656))

(declare-fun m!6620472 () Bool)

(assert (=> d!1785650 m!6620472))

(assert (=> b!5653550 m!6619784))

(declare-fun m!6620474 () Bool)

(assert (=> b!5653550 m!6620474))

(assert (=> b!5653551 m!6619656))

(declare-fun m!6620476 () Bool)

(assert (=> b!5653551 m!6620476))

(assert (=> b!5653551 m!6619784))

(assert (=> b!5653551 m!6620476))

(declare-fun m!6620478 () Bool)

(assert (=> b!5653551 m!6620478))

(assert (=> b!5653551 m!6619656))

(declare-fun m!6620480 () Bool)

(assert (=> b!5653551 m!6620480))

(assert (=> b!5653551 m!6620478))

(assert (=> b!5653551 m!6620480))

(declare-fun m!6620482 () Bool)

(assert (=> b!5653551 m!6620482))

(assert (=> b!5652713 d!1785650))

(declare-fun bs!1315019 () Bool)

(declare-fun d!1785652 () Bool)

(assert (= bs!1315019 (and d!1785652 b!5652029)))

(declare-fun lambda!304193 () Int)

(assert (=> bs!1315019 (= (= (head!12015 (t!376522 s!2326)) (h!69546 s!2326)) (= lambda!304193 lambda!304087))))

(assert (=> d!1785652 true))

(assert (=> d!1785652 (= (derivationStepZipper!1728 ((_ map or) lt!2265989 lt!2265985) (head!12015 (t!376522 s!2326))) (flatMap!1254 ((_ map or) lt!2265989 lt!2265985) lambda!304193))))

(declare-fun bs!1315020 () Bool)

(assert (= bs!1315020 d!1785652))

(declare-fun m!6620484 () Bool)

(assert (=> bs!1315020 m!6620484))

(assert (=> b!5652713 d!1785652))

(declare-fun d!1785654 () Bool)

(assert (=> d!1785654 (= (head!12015 (t!376522 s!2326)) (h!69546 (t!376522 s!2326)))))

(assert (=> b!5652713 d!1785654))

(declare-fun d!1785656 () Bool)

(assert (=> d!1785656 (= (tail!11110 (t!376522 s!2326)) (t!376522 (t!376522 s!2326)))))

(assert (=> b!5652713 d!1785656))

(declare-fun bs!1315021 () Bool)

(declare-fun d!1785658 () Bool)

(assert (= bs!1315021 (and d!1785658 d!1785220)))

(declare-fun lambda!304194 () Int)

(assert (=> bs!1315021 (= lambda!304194 lambda!304102)))

(declare-fun bs!1315022 () Bool)

(assert (= bs!1315022 (and d!1785658 d!1785326)))

(assert (=> bs!1315022 (= lambda!304194 lambda!304140)))

(declare-fun bs!1315023 () Bool)

(assert (= bs!1315023 (and d!1785658 d!1785286)))

(assert (=> bs!1315023 (= lambda!304194 lambda!304128)))

(declare-fun bs!1315024 () Bool)

(assert (= bs!1315024 (and d!1785658 d!1785516)))

(assert (=> bs!1315024 (= lambda!304194 lambda!304172)))

(declare-fun bs!1315025 () Bool)

(assert (= bs!1315025 (and d!1785658 d!1785628)))

(assert (=> bs!1315025 (= lambda!304194 lambda!304188)))

(declare-fun bs!1315026 () Bool)

(assert (= bs!1315026 (and d!1785658 d!1785216)))

(assert (=> bs!1315026 (= lambda!304194 lambda!304096)))

(declare-fun bs!1315027 () Bool)

(assert (= bs!1315027 (and d!1785658 d!1785464)))

(assert (=> bs!1315027 (= lambda!304194 lambda!304160)))

(declare-fun bs!1315028 () Bool)

(assert (= bs!1315028 (and d!1785658 d!1785518)))

(assert (=> bs!1315028 (= lambda!304194 lambda!304175)))

(declare-fun bs!1315029 () Bool)

(assert (= bs!1315029 (and d!1785658 d!1785328)))

(assert (=> bs!1315029 (= lambda!304194 lambda!304143)))

(declare-fun e!3482329 () Bool)

(assert (=> d!1785658 e!3482329))

(declare-fun res!2391516 () Bool)

(assert (=> d!1785658 (=> (not res!2391516) (not e!3482329))))

(declare-fun lt!2266121 () Regex!15641)

(assert (=> d!1785658 (= res!2391516 (validRegex!7377 lt!2266121))))

(declare-fun e!3482332 () Regex!15641)

(assert (=> d!1785658 (= lt!2266121 e!3482332)))

(declare-fun c!993859 () Bool)

(declare-fun e!3482331 () Bool)

(assert (=> d!1785658 (= c!993859 e!3482331)))

(declare-fun res!2391517 () Bool)

(assert (=> d!1785658 (=> (not res!2391517) (not e!3482331))))

(assert (=> d!1785658 (= res!2391517 ((_ is Cons!63099) (t!376523 (unfocusZipperList!1069 zl!343))))))

(assert (=> d!1785658 (forall!14794 (t!376523 (unfocusZipperList!1069 zl!343)) lambda!304194)))

(assert (=> d!1785658 (= (generalisedUnion!1504 (t!376523 (unfocusZipperList!1069 zl!343))) lt!2266121)))

(declare-fun b!5653554 () Bool)

(declare-fun e!3482328 () Bool)

(declare-fun e!3482330 () Bool)

(assert (=> b!5653554 (= e!3482328 e!3482330)))

(declare-fun c!993858 () Bool)

(assert (=> b!5653554 (= c!993858 (isEmpty!34941 (tail!11109 (t!376523 (unfocusZipperList!1069 zl!343)))))))

(declare-fun b!5653555 () Bool)

(assert (=> b!5653555 (= e!3482332 (h!69547 (t!376523 (unfocusZipperList!1069 zl!343))))))

(declare-fun b!5653556 () Bool)

(declare-fun e!3482327 () Regex!15641)

(assert (=> b!5653556 (= e!3482327 (Union!15641 (h!69547 (t!376523 (unfocusZipperList!1069 zl!343))) (generalisedUnion!1504 (t!376523 (t!376523 (unfocusZipperList!1069 zl!343))))))))

(declare-fun b!5653557 () Bool)

(assert (=> b!5653557 (= e!3482330 (= lt!2266121 (head!12014 (t!376523 (unfocusZipperList!1069 zl!343)))))))

(declare-fun b!5653558 () Bool)

(assert (=> b!5653558 (= e!3482327 EmptyLang!15641)))

(declare-fun b!5653559 () Bool)

(assert (=> b!5653559 (= e!3482329 e!3482328)))

(declare-fun c!993861 () Bool)

(assert (=> b!5653559 (= c!993861 (isEmpty!34941 (t!376523 (unfocusZipperList!1069 zl!343))))))

(declare-fun b!5653560 () Bool)

(assert (=> b!5653560 (= e!3482330 (isUnion!616 lt!2266121))))

(declare-fun b!5653561 () Bool)

(assert (=> b!5653561 (= e!3482328 (isEmptyLang!1186 lt!2266121))))

(declare-fun b!5653562 () Bool)

(assert (=> b!5653562 (= e!3482331 (isEmpty!34941 (t!376523 (t!376523 (unfocusZipperList!1069 zl!343)))))))

(declare-fun b!5653563 () Bool)

(assert (=> b!5653563 (= e!3482332 e!3482327)))

(declare-fun c!993860 () Bool)

(assert (=> b!5653563 (= c!993860 ((_ is Cons!63099) (t!376523 (unfocusZipperList!1069 zl!343))))))

(assert (= (and d!1785658 res!2391517) b!5653562))

(assert (= (and d!1785658 c!993859) b!5653555))

(assert (= (and d!1785658 (not c!993859)) b!5653563))

(assert (= (and b!5653563 c!993860) b!5653556))

(assert (= (and b!5653563 (not c!993860)) b!5653558))

(assert (= (and d!1785658 res!2391516) b!5653559))

(assert (= (and b!5653559 c!993861) b!5653561))

(assert (= (and b!5653559 (not c!993861)) b!5653554))

(assert (= (and b!5653554 c!993858) b!5653557))

(assert (= (and b!5653554 (not c!993858)) b!5653560))

(declare-fun m!6620486 () Bool)

(assert (=> b!5653561 m!6620486))

(declare-fun m!6620488 () Bool)

(assert (=> b!5653560 m!6620488))

(declare-fun m!6620490 () Bool)

(assert (=> d!1785658 m!6620490))

(declare-fun m!6620492 () Bool)

(assert (=> d!1785658 m!6620492))

(declare-fun m!6620494 () Bool)

(assert (=> b!5653554 m!6620494))

(assert (=> b!5653554 m!6620494))

(declare-fun m!6620496 () Bool)

(assert (=> b!5653554 m!6620496))

(declare-fun m!6620498 () Bool)

(assert (=> b!5653556 m!6620498))

(declare-fun m!6620500 () Bool)

(assert (=> b!5653557 m!6620500))

(assert (=> b!5653559 m!6619768))

(declare-fun m!6620502 () Bool)

(assert (=> b!5653562 m!6620502))

(assert (=> b!5652693 d!1785658))

(declare-fun d!1785660 () Bool)

(assert (=> d!1785660 true))

(assert (=> d!1785660 true))

(declare-fun res!2391518 () Bool)

(assert (=> d!1785660 (= (choose!42796 lambda!304086) res!2391518)))

(assert (=> d!1785294 d!1785660))

(declare-fun d!1785662 () Bool)

(assert (=> d!1785662 (= (isEmptyExpr!1175 lt!2266017) ((_ is EmptyExpr!15641) lt!2266017))))

(assert (=> b!5652224 d!1785662))

(declare-fun d!1785664 () Bool)

(declare-fun res!2391519 () Bool)

(declare-fun e!3482333 () Bool)

(assert (=> d!1785664 (=> res!2391519 e!3482333)))

(assert (=> d!1785664 (= res!2391519 ((_ is Nil!63099) (exprs!5525 setElem!37766)))))

(assert (=> d!1785664 (= (forall!14794 (exprs!5525 setElem!37766) lambda!304096) e!3482333)))

(declare-fun b!5653564 () Bool)

(declare-fun e!3482334 () Bool)

(assert (=> b!5653564 (= e!3482333 e!3482334)))

(declare-fun res!2391520 () Bool)

(assert (=> b!5653564 (=> (not res!2391520) (not e!3482334))))

(assert (=> b!5653564 (= res!2391520 (dynLambda!24688 lambda!304096 (h!69547 (exprs!5525 setElem!37766))))))

(declare-fun b!5653565 () Bool)

(assert (=> b!5653565 (= e!3482334 (forall!14794 (t!376523 (exprs!5525 setElem!37766)) lambda!304096))))

(assert (= (and d!1785664 (not res!2391519)) b!5653564))

(assert (= (and b!5653564 res!2391520) b!5653565))

(declare-fun b_lambda!213835 () Bool)

(assert (=> (not b_lambda!213835) (not b!5653564)))

(declare-fun m!6620504 () Bool)

(assert (=> b!5653564 m!6620504))

(declare-fun m!6620506 () Bool)

(assert (=> b!5653565 m!6620506))

(assert (=> d!1785216 d!1785664))

(declare-fun d!1785666 () Bool)

(assert (=> d!1785666 (= (isEmpty!34945 (tail!11110 s!2326)) ((_ is Nil!63098) (tail!11110 s!2326)))))

(assert (=> b!5652402 d!1785666))

(assert (=> b!5652402 d!1785546))

(declare-fun b!5653566 () Bool)

(declare-fun e!3482335 () Bool)

(assert (=> b!5653566 (= e!3482335 (nullable!5673 (regOne!31794 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))))

(declare-fun call!427756 () List!63223)

(declare-fun c!993863 () Bool)

(declare-fun bm!427749 () Bool)

(declare-fun c!993862 () Bool)

(assert (=> bm!427749 (= call!427756 ($colon$colon!1685 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))) (ite (or c!993863 c!993862) (regTwo!31794 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))))

(declare-fun b!5653567 () Bool)

(declare-fun e!3482336 () (InoxSet Context!10050))

(declare-fun e!3482340 () (InoxSet Context!10050))

(assert (=> b!5653567 (= e!3482336 e!3482340)))

(assert (=> b!5653567 (= c!993862 ((_ is Concat!24486) (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))

(declare-fun b!5653568 () Bool)

(declare-fun e!3482339 () (InoxSet Context!10050))

(assert (=> b!5653568 (= e!3482339 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427750 () Bool)

(declare-fun call!427759 () (InoxSet Context!10050))

(declare-fun call!427757 () (InoxSet Context!10050))

(assert (=> bm!427750 (= call!427759 call!427757)))

(declare-fun b!5653569 () Bool)

(declare-fun e!3482338 () (InoxSet Context!10050))

(declare-fun e!3482337 () (InoxSet Context!10050))

(assert (=> b!5653569 (= e!3482338 e!3482337)))

(declare-fun c!993864 () Bool)

(assert (=> b!5653569 (= c!993864 ((_ is Union!15641) (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))

(declare-fun b!5653570 () Bool)

(declare-fun call!427755 () (InoxSet Context!10050))

(assert (=> b!5653570 (= e!3482340 call!427755)))

(declare-fun bm!427751 () Bool)

(declare-fun call!427754 () (InoxSet Context!10050))

(assert (=> bm!427751 (= call!427754 (derivationStepZipperDown!983 (ite c!993864 (regOne!31795 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (regOne!31794 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))) (ite c!993864 (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (Context!10051 call!427756)) (h!69546 s!2326)))))

(declare-fun call!427758 () List!63223)

(declare-fun bm!427752 () Bool)

(assert (=> bm!427752 (= call!427757 (derivationStepZipperDown!983 (ite c!993864 (regTwo!31795 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (ite c!993863 (regTwo!31794 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (ite c!993862 (regOne!31794 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (reg!15970 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))))))) (ite (or c!993864 c!993863) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (Context!10051 call!427758)) (h!69546 s!2326)))))

(declare-fun b!5653572 () Bool)

(assert (=> b!5653572 (= e!3482337 ((_ map or) call!427754 call!427757))))

(declare-fun bm!427753 () Bool)

(assert (=> bm!427753 (= call!427758 call!427756)))

(declare-fun b!5653573 () Bool)

(assert (=> b!5653573 (= e!3482338 (store ((as const (Array Context!10050 Bool)) false) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) true))))

(declare-fun b!5653574 () Bool)

(declare-fun c!993865 () Bool)

(assert (=> b!5653574 (= c!993865 ((_ is Star!15641) (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))

(assert (=> b!5653574 (= e!3482340 e!3482339)))

(declare-fun bm!427754 () Bool)

(assert (=> bm!427754 (= call!427755 call!427759)))

(declare-fun d!1785668 () Bool)

(declare-fun c!993866 () Bool)

(assert (=> d!1785668 (= c!993866 (and ((_ is ElementMatch!15641) (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (= (c!993471 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (h!69546 s!2326))))))

(assert (=> d!1785668 (= (derivationStepZipperDown!983 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))) (Context!10051 (t!376523 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (h!69546 s!2326)) e!3482338)))

(declare-fun b!5653571 () Bool)

(assert (=> b!5653571 (= e!3482339 call!427755)))

(declare-fun b!5653575 () Bool)

(assert (=> b!5653575 (= e!3482336 ((_ map or) call!427754 call!427759))))

(declare-fun b!5653576 () Bool)

(assert (=> b!5653576 (= c!993863 e!3482335)))

(declare-fun res!2391521 () Bool)

(assert (=> b!5653576 (=> (not res!2391521) (not e!3482335))))

(assert (=> b!5653576 (= res!2391521 ((_ is Concat!24486) (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))

(assert (=> b!5653576 (= e!3482337 e!3482336)))

(assert (= (and d!1785668 c!993866) b!5653573))

(assert (= (and d!1785668 (not c!993866)) b!5653569))

(assert (= (and b!5653569 c!993864) b!5653572))

(assert (= (and b!5653569 (not c!993864)) b!5653576))

(assert (= (and b!5653576 res!2391521) b!5653566))

(assert (= (and b!5653576 c!993863) b!5653575))

(assert (= (and b!5653576 (not c!993863)) b!5653567))

(assert (= (and b!5653567 c!993862) b!5653570))

(assert (= (and b!5653567 (not c!993862)) b!5653574))

(assert (= (and b!5653574 c!993865) b!5653571))

(assert (= (and b!5653574 (not c!993865)) b!5653568))

(assert (= (or b!5653570 b!5653571) bm!427753))

(assert (= (or b!5653570 b!5653571) bm!427754))

(assert (= (or b!5653575 bm!427753) bm!427749))

(assert (= (or b!5653575 bm!427754) bm!427750))

(assert (= (or b!5653572 bm!427750) bm!427752))

(assert (= (or b!5653572 b!5653575) bm!427751))

(declare-fun m!6620508 () Bool)

(assert (=> b!5653573 m!6620508))

(declare-fun m!6620510 () Bool)

(assert (=> b!5653566 m!6620510))

(declare-fun m!6620512 () Bool)

(assert (=> bm!427751 m!6620512))

(declare-fun m!6620514 () Bool)

(assert (=> bm!427749 m!6620514))

(declare-fun m!6620516 () Bool)

(assert (=> bm!427752 m!6620516))

(assert (=> bm!427597 d!1785668))

(assert (=> bm!427546 d!1785458))

(declare-fun d!1785670 () Bool)

(assert (=> d!1785670 (= (nullable!5673 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))) (nullableFct!1764 (h!69547 (exprs!5525 (Context!10051 (Cons!63099 (h!69547 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343)))))))))))

(declare-fun bs!1315030 () Bool)

(assert (= bs!1315030 d!1785670))

(declare-fun m!6620518 () Bool)

(assert (=> bs!1315030 m!6620518))

(assert (=> b!5652654 d!1785670))

(assert (=> b!5652659 d!1785312))

(declare-fun d!1785672 () Bool)

(assert (=> d!1785672 (= (isEmpty!34941 (tail!11109 (exprs!5525 (h!69548 zl!343)))) ((_ is Nil!63099) (tail!11109 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> b!5652220 d!1785672))

(declare-fun d!1785674 () Bool)

(assert (=> d!1785674 (= (tail!11109 (exprs!5525 (h!69548 zl!343))) (t!376523 (exprs!5525 (h!69548 zl!343))))))

(assert (=> b!5652220 d!1785674))

(declare-fun d!1785676 () Bool)

(assert (=> d!1785676 (= (Exists!2741 (ite c!993538 lambda!304116 lambda!304117)) (choose!42796 (ite c!993538 lambda!304116 lambda!304117)))))

(declare-fun bs!1315031 () Bool)

(assert (= bs!1315031 d!1785676))

(declare-fun m!6620520 () Bool)

(assert (=> bs!1315031 m!6620520))

(assert (=> bm!427545 d!1785676))

(declare-fun b!5653577 () Bool)

(declare-fun e!3482346 () Bool)

(declare-fun call!427760 () Bool)

(assert (=> b!5653577 (= e!3482346 call!427760)))

(declare-fun b!5653578 () Bool)

(declare-fun e!3482347 () Bool)

(declare-fun call!427762 () Bool)

(assert (=> b!5653578 (= e!3482347 call!427762)))

(declare-fun b!5653580 () Bool)

(declare-fun e!3482344 () Bool)

(assert (=> b!5653580 (= e!3482344 call!427760)))

(declare-fun bm!427755 () Bool)

(assert (=> bm!427755 (= call!427760 call!427762)))

(declare-fun b!5653581 () Bool)

(declare-fun e!3482343 () Bool)

(declare-fun e!3482342 () Bool)

(assert (=> b!5653581 (= e!3482343 e!3482342)))

(declare-fun c!993867 () Bool)

(assert (=> b!5653581 (= c!993867 ((_ is Union!15641) lt!2266074))))

(declare-fun bm!427756 () Bool)

(declare-fun c!993868 () Bool)

(assert (=> bm!427756 (= call!427762 (validRegex!7377 (ite c!993868 (reg!15970 lt!2266074) (ite c!993867 (regTwo!31795 lt!2266074) (regTwo!31794 lt!2266074)))))))

(declare-fun b!5653582 () Bool)

(declare-fun res!2391525 () Bool)

(assert (=> b!5653582 (=> (not res!2391525) (not e!3482344))))

(declare-fun call!427761 () Bool)

(assert (=> b!5653582 (= res!2391525 call!427761)))

(assert (=> b!5653582 (= e!3482342 e!3482344)))

(declare-fun b!5653583 () Bool)

(assert (=> b!5653583 (= e!3482343 e!3482347)))

(declare-fun res!2391526 () Bool)

(assert (=> b!5653583 (= res!2391526 (not (nullable!5673 (reg!15970 lt!2266074))))))

(assert (=> b!5653583 (=> (not res!2391526) (not e!3482347))))

(declare-fun b!5653584 () Bool)

(declare-fun res!2391523 () Bool)

(declare-fun e!3482341 () Bool)

(assert (=> b!5653584 (=> res!2391523 e!3482341)))

(assert (=> b!5653584 (= res!2391523 (not ((_ is Concat!24486) lt!2266074)))))

(assert (=> b!5653584 (= e!3482342 e!3482341)))

(declare-fun b!5653579 () Bool)

(declare-fun e!3482345 () Bool)

(assert (=> b!5653579 (= e!3482345 e!3482343)))

(assert (=> b!5653579 (= c!993868 ((_ is Star!15641) lt!2266074))))

(declare-fun d!1785678 () Bool)

(declare-fun res!2391522 () Bool)

(assert (=> d!1785678 (=> res!2391522 e!3482345)))

(assert (=> d!1785678 (= res!2391522 ((_ is ElementMatch!15641) lt!2266074))))

(assert (=> d!1785678 (= (validRegex!7377 lt!2266074) e!3482345)))

(declare-fun b!5653585 () Bool)

(assert (=> b!5653585 (= e!3482341 e!3482346)))

(declare-fun res!2391524 () Bool)

(assert (=> b!5653585 (=> (not res!2391524) (not e!3482346))))

(assert (=> b!5653585 (= res!2391524 call!427761)))

(declare-fun bm!427757 () Bool)

(assert (=> bm!427757 (= call!427761 (validRegex!7377 (ite c!993867 (regOne!31795 lt!2266074) (regOne!31794 lt!2266074))))))

(assert (= (and d!1785678 (not res!2391522)) b!5653579))

(assert (= (and b!5653579 c!993868) b!5653583))

(assert (= (and b!5653579 (not c!993868)) b!5653581))

(assert (= (and b!5653583 res!2391526) b!5653578))

(assert (= (and b!5653581 c!993867) b!5653582))

(assert (= (and b!5653581 (not c!993867)) b!5653584))

(assert (= (and b!5653582 res!2391525) b!5653580))

(assert (= (and b!5653584 (not res!2391523)) b!5653585))

(assert (= (and b!5653585 res!2391524) b!5653577))

(assert (= (or b!5653580 b!5653577) bm!427755))

(assert (= (or b!5653582 b!5653585) bm!427757))

(assert (= (or b!5653578 bm!427755) bm!427756))

(declare-fun m!6620522 () Bool)

(assert (=> bm!427756 m!6620522))

(declare-fun m!6620524 () Bool)

(assert (=> b!5653583 m!6620524))

(declare-fun m!6620526 () Bool)

(assert (=> bm!427757 m!6620526))

(assert (=> d!1785326 d!1785678))

(declare-fun d!1785680 () Bool)

(declare-fun res!2391527 () Bool)

(declare-fun e!3482348 () Bool)

(assert (=> d!1785680 (=> res!2391527 e!3482348)))

(assert (=> d!1785680 (= res!2391527 ((_ is Nil!63099) (unfocusZipperList!1069 zl!343)))))

(assert (=> d!1785680 (= (forall!14794 (unfocusZipperList!1069 zl!343) lambda!304140) e!3482348)))

(declare-fun b!5653586 () Bool)

(declare-fun e!3482349 () Bool)

(assert (=> b!5653586 (= e!3482348 e!3482349)))

(declare-fun res!2391528 () Bool)

(assert (=> b!5653586 (=> (not res!2391528) (not e!3482349))))

(assert (=> b!5653586 (= res!2391528 (dynLambda!24688 lambda!304140 (h!69547 (unfocusZipperList!1069 zl!343))))))

(declare-fun b!5653587 () Bool)

(assert (=> b!5653587 (= e!3482349 (forall!14794 (t!376523 (unfocusZipperList!1069 zl!343)) lambda!304140))))

(assert (= (and d!1785680 (not res!2391527)) b!5653586))

(assert (= (and b!5653586 res!2391528) b!5653587))

(declare-fun b_lambda!213837 () Bool)

(assert (=> (not b_lambda!213837) (not b!5653586)))

(declare-fun m!6620528 () Bool)

(assert (=> b!5653586 m!6620528))

(declare-fun m!6620530 () Bool)

(assert (=> b!5653587 m!6620530))

(assert (=> d!1785326 d!1785680))

(declare-fun b!5653588 () Bool)

(declare-fun e!3482355 () Bool)

(declare-fun call!427763 () Bool)

(assert (=> b!5653588 (= e!3482355 call!427763)))

(declare-fun b!5653589 () Bool)

(declare-fun e!3482356 () Bool)

(declare-fun call!427765 () Bool)

(assert (=> b!5653589 (= e!3482356 call!427765)))

(declare-fun b!5653591 () Bool)

(declare-fun e!3482353 () Bool)

(assert (=> b!5653591 (= e!3482353 call!427763)))

(declare-fun bm!427758 () Bool)

(assert (=> bm!427758 (= call!427763 call!427765)))

(declare-fun b!5653592 () Bool)

(declare-fun e!3482352 () Bool)

(declare-fun e!3482351 () Bool)

(assert (=> b!5653592 (= e!3482352 e!3482351)))

(declare-fun c!993869 () Bool)

(assert (=> b!5653592 (= c!993869 ((_ is Union!15641) (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))))))

(declare-fun bm!427759 () Bool)

(declare-fun c!993870 () Bool)

(assert (=> bm!427759 (= call!427765 (validRegex!7377 (ite c!993870 (reg!15970 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))) (ite c!993869 (regTwo!31795 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))) (regTwo!31794 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292)))))))))

(declare-fun b!5653593 () Bool)

(declare-fun res!2391532 () Bool)

(assert (=> b!5653593 (=> (not res!2391532) (not e!3482353))))

(declare-fun call!427764 () Bool)

(assert (=> b!5653593 (= res!2391532 call!427764)))

(assert (=> b!5653593 (= e!3482351 e!3482353)))

(declare-fun b!5653594 () Bool)

(assert (=> b!5653594 (= e!3482352 e!3482356)))

(declare-fun res!2391533 () Bool)

(assert (=> b!5653594 (= res!2391533 (not (nullable!5673 (reg!15970 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))))))))

(assert (=> b!5653594 (=> (not res!2391533) (not e!3482356))))

(declare-fun b!5653595 () Bool)

(declare-fun res!2391530 () Bool)

(declare-fun e!3482350 () Bool)

(assert (=> b!5653595 (=> res!2391530 e!3482350)))

(assert (=> b!5653595 (= res!2391530 (not ((_ is Concat!24486) (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292)))))))

(assert (=> b!5653595 (= e!3482351 e!3482350)))

(declare-fun b!5653590 () Bool)

(declare-fun e!3482354 () Bool)

(assert (=> b!5653590 (= e!3482354 e!3482352)))

(assert (=> b!5653590 (= c!993870 ((_ is Star!15641) (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))))))

(declare-fun d!1785682 () Bool)

(declare-fun res!2391529 () Bool)

(assert (=> d!1785682 (=> res!2391529 e!3482354)))

(assert (=> d!1785682 (= res!2391529 ((_ is ElementMatch!15641) (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))))))

(assert (=> d!1785682 (= (validRegex!7377 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))) e!3482354)))

(declare-fun b!5653596 () Bool)

(assert (=> b!5653596 (= e!3482350 e!3482355)))

(declare-fun res!2391531 () Bool)

(assert (=> b!5653596 (=> (not res!2391531) (not e!3482355))))

(assert (=> b!5653596 (= res!2391531 call!427764)))

(declare-fun bm!427760 () Bool)

(assert (=> bm!427760 (= call!427764 (validRegex!7377 (ite c!993869 (regOne!31795 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))) (regOne!31794 (ite c!993604 (regOne!31795 r!7292) (regOne!31794 r!7292))))))))

(assert (= (and d!1785682 (not res!2391529)) b!5653590))

(assert (= (and b!5653590 c!993870) b!5653594))

(assert (= (and b!5653590 (not c!993870)) b!5653592))

(assert (= (and b!5653594 res!2391533) b!5653589))

(assert (= (and b!5653592 c!993869) b!5653593))

(assert (= (and b!5653592 (not c!993869)) b!5653595))

(assert (= (and b!5653593 res!2391532) b!5653591))

(assert (= (and b!5653595 (not res!2391530)) b!5653596))

(assert (= (and b!5653596 res!2391531) b!5653588))

(assert (= (or b!5653591 b!5653588) bm!427758))

(assert (= (or b!5653593 b!5653596) bm!427760))

(assert (= (or b!5653589 bm!427758) bm!427759))

(declare-fun m!6620532 () Bool)

(assert (=> bm!427759 m!6620532))

(declare-fun m!6620534 () Bool)

(assert (=> b!5653594 m!6620534))

(declare-fun m!6620536 () Bool)

(assert (=> bm!427760 m!6620536))

(assert (=> bm!427575 d!1785682))

(declare-fun b!5653597 () Bool)

(declare-fun e!3482357 () Bool)

(assert (=> b!5653597 (= e!3482357 (nullable!5673 (regOne!31794 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))))))))

(declare-fun c!993872 () Bool)

(declare-fun call!427768 () List!63223)

(declare-fun c!993871 () Bool)

(declare-fun bm!427761 () Bool)

(assert (=> bm!427761 (= call!427768 ($colon$colon!1685 (exprs!5525 (ite (or c!993642 c!993641) lt!2265993 (Context!10051 call!427608))) (ite (or c!993872 c!993871) (regTwo!31794 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))))))))

(declare-fun b!5653598 () Bool)

(declare-fun e!3482358 () (InoxSet Context!10050))

(declare-fun e!3482362 () (InoxSet Context!10050))

(assert (=> b!5653598 (= e!3482358 e!3482362)))

(assert (=> b!5653598 (= c!993871 ((_ is Concat!24486) (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))))

(declare-fun b!5653599 () Bool)

(declare-fun e!3482361 () (InoxSet Context!10050))

(assert (=> b!5653599 (= e!3482361 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427762 () Bool)

(declare-fun call!427771 () (InoxSet Context!10050))

(declare-fun call!427769 () (InoxSet Context!10050))

(assert (=> bm!427762 (= call!427771 call!427769)))

(declare-fun b!5653600 () Bool)

(declare-fun e!3482360 () (InoxSet Context!10050))

(declare-fun e!3482359 () (InoxSet Context!10050))

(assert (=> b!5653600 (= e!3482360 e!3482359)))

(declare-fun c!993873 () Bool)

(assert (=> b!5653600 (= c!993873 ((_ is Union!15641) (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))))

(declare-fun b!5653601 () Bool)

(declare-fun call!427767 () (InoxSet Context!10050))

(assert (=> b!5653601 (= e!3482362 call!427767)))

(declare-fun call!427766 () (InoxSet Context!10050))

(declare-fun bm!427763 () Bool)

(assert (=> bm!427763 (= call!427766 (derivationStepZipperDown!983 (ite c!993873 (regOne!31795 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (regOne!31794 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))))) (ite c!993873 (ite (or c!993642 c!993641) lt!2265993 (Context!10051 call!427608)) (Context!10051 call!427768)) (h!69546 s!2326)))))

(declare-fun call!427770 () List!63223)

(declare-fun bm!427764 () Bool)

(assert (=> bm!427764 (= call!427769 (derivationStepZipperDown!983 (ite c!993873 (regTwo!31795 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (ite c!993872 (regTwo!31794 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (ite c!993871 (regOne!31794 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (reg!15970 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))))))) (ite (or c!993873 c!993872) (ite (or c!993642 c!993641) lt!2265993 (Context!10051 call!427608)) (Context!10051 call!427770)) (h!69546 s!2326)))))

(declare-fun b!5653603 () Bool)

(assert (=> b!5653603 (= e!3482359 ((_ map or) call!427766 call!427769))))

(declare-fun bm!427765 () Bool)

(assert (=> bm!427765 (= call!427770 call!427768)))

(declare-fun b!5653604 () Bool)

(assert (=> b!5653604 (= e!3482360 (store ((as const (Array Context!10050 Bool)) false) (ite (or c!993642 c!993641) lt!2265993 (Context!10051 call!427608)) true))))

(declare-fun b!5653605 () Bool)

(declare-fun c!993874 () Bool)

(assert (=> b!5653605 (= c!993874 ((_ is Star!15641) (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))))

(assert (=> b!5653605 (= e!3482362 e!3482361)))

(declare-fun bm!427766 () Bool)

(assert (=> bm!427766 (= call!427767 call!427771)))

(declare-fun d!1785684 () Bool)

(declare-fun c!993875 () Bool)

(assert (=> d!1785684 (= c!993875 (and ((_ is ElementMatch!15641) (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (= (c!993471 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))) (h!69546 s!2326))))))

(assert (=> d!1785684 (= (derivationStepZipperDown!983 (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))) (ite (or c!993642 c!993641) lt!2265993 (Context!10051 call!427608)) (h!69546 s!2326)) e!3482360)))

(declare-fun b!5653602 () Bool)

(assert (=> b!5653602 (= e!3482361 call!427767)))

(declare-fun b!5653606 () Bool)

(assert (=> b!5653606 (= e!3482358 ((_ map or) call!427766 call!427771))))

(declare-fun b!5653607 () Bool)

(assert (=> b!5653607 (= c!993872 e!3482357)))

(declare-fun res!2391534 () Bool)

(assert (=> b!5653607 (=> (not res!2391534) (not e!3482357))))

(assert (=> b!5653607 (= res!2391534 ((_ is Concat!24486) (ite c!993642 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993641 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993640 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))))

(assert (=> b!5653607 (= e!3482359 e!3482358)))

(assert (= (and d!1785684 c!993875) b!5653604))

(assert (= (and d!1785684 (not c!993875)) b!5653600))

(assert (= (and b!5653600 c!993873) b!5653603))

(assert (= (and b!5653600 (not c!993873)) b!5653607))

(assert (= (and b!5653607 res!2391534) b!5653597))

(assert (= (and b!5653607 c!993872) b!5653606))

(assert (= (and b!5653607 (not c!993872)) b!5653598))

(assert (= (and b!5653598 c!993871) b!5653601))

(assert (= (and b!5653598 (not c!993871)) b!5653605))

(assert (= (and b!5653605 c!993874) b!5653602))

(assert (= (and b!5653605 (not c!993874)) b!5653599))

(assert (= (or b!5653601 b!5653602) bm!427765))

(assert (= (or b!5653601 b!5653602) bm!427766))

(assert (= (or b!5653606 bm!427765) bm!427761))

(assert (= (or b!5653606 bm!427766) bm!427762))

(assert (= (or b!5653603 bm!427762) bm!427764))

(assert (= (or b!5653603 b!5653606) bm!427763))

(declare-fun m!6620538 () Bool)

(assert (=> b!5653604 m!6620538))

(declare-fun m!6620540 () Bool)

(assert (=> b!5653597 m!6620540))

(declare-fun m!6620542 () Bool)

(assert (=> bm!427763 m!6620542))

(declare-fun m!6620544 () Bool)

(assert (=> bm!427761 m!6620544))

(declare-fun m!6620546 () Bool)

(assert (=> bm!427764 m!6620546))

(assert (=> bm!427602 d!1785684))

(declare-fun d!1785686 () Bool)

(assert (=> d!1785686 (= (isDefined!12353 lt!2266057) (not (isEmpty!34946 lt!2266057)))))

(declare-fun bs!1315032 () Bool)

(assert (= bs!1315032 d!1785686))

(declare-fun m!6620548 () Bool)

(assert (=> bs!1315032 m!6620548))

(assert (=> b!5652588 d!1785686))

(declare-fun d!1785688 () Bool)

(assert (=> d!1785688 (= (isEmpty!34941 (exprs!5525 (h!69548 zl!343))) ((_ is Nil!63099) (exprs!5525 (h!69548 zl!343))))))

(assert (=> b!5652218 d!1785688))

(assert (=> b!5652396 d!1785490))

(assert (=> b!5652222 d!1785324))

(declare-fun b!5653608 () Bool)

(declare-fun e!3482363 () Bool)

(assert (=> b!5653608 (= e!3482363 (nullable!5673 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun c!993876 () Bool)

(declare-fun call!427774 () List!63223)

(declare-fun bm!427767 () Bool)

(declare-fun c!993877 () Bool)

(assert (=> bm!427767 (= call!427774 ($colon$colon!1685 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343))))) (ite (or c!993877 c!993876) (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (h!69547 (exprs!5525 (h!69548 zl!343))))))))

(declare-fun b!5653609 () Bool)

(declare-fun e!3482364 () (InoxSet Context!10050))

(declare-fun e!3482368 () (InoxSet Context!10050))

(assert (=> b!5653609 (= e!3482364 e!3482368)))

(assert (=> b!5653609 (= c!993876 ((_ is Concat!24486) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653610 () Bool)

(declare-fun e!3482367 () (InoxSet Context!10050))

(assert (=> b!5653610 (= e!3482367 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427768 () Bool)

(declare-fun call!427777 () (InoxSet Context!10050))

(declare-fun call!427775 () (InoxSet Context!10050))

(assert (=> bm!427768 (= call!427777 call!427775)))

(declare-fun b!5653611 () Bool)

(declare-fun e!3482366 () (InoxSet Context!10050))

(declare-fun e!3482365 () (InoxSet Context!10050))

(assert (=> b!5653611 (= e!3482366 e!3482365)))

(declare-fun c!993878 () Bool)

(assert (=> b!5653611 (= c!993878 ((_ is Union!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653612 () Bool)

(declare-fun call!427773 () (InoxSet Context!10050))

(assert (=> b!5653612 (= e!3482368 call!427773)))

(declare-fun bm!427769 () Bool)

(declare-fun call!427772 () (InoxSet Context!10050))

(assert (=> bm!427769 (= call!427772 (derivationStepZipperDown!983 (ite c!993878 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))) (ite c!993878 (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) (Context!10051 call!427774)) (h!69546 s!2326)))))

(declare-fun bm!427770 () Bool)

(declare-fun call!427776 () List!63223)

(assert (=> bm!427770 (= call!427775 (derivationStepZipperDown!983 (ite c!993878 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993877 (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (ite c!993876 (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (reg!15970 (h!69547 (exprs!5525 (h!69548 zl!343))))))) (ite (or c!993878 c!993877) (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) (Context!10051 call!427776)) (h!69546 s!2326)))))

(declare-fun b!5653614 () Bool)

(assert (=> b!5653614 (= e!3482365 ((_ map or) call!427772 call!427775))))

(declare-fun bm!427771 () Bool)

(assert (=> bm!427771 (= call!427776 call!427774)))

(declare-fun b!5653615 () Bool)

(assert (=> b!5653615 (= e!3482366 (store ((as const (Array Context!10050 Bool)) false) (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) true))))

(declare-fun b!5653616 () Bool)

(declare-fun c!993879 () Bool)

(assert (=> b!5653616 (= c!993879 ((_ is Star!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> b!5653616 (= e!3482368 e!3482367)))

(declare-fun bm!427772 () Bool)

(assert (=> bm!427772 (= call!427773 call!427777)))

(declare-fun d!1785690 () Bool)

(declare-fun c!993880 () Bool)

(assert (=> d!1785690 (= c!993880 (and ((_ is ElementMatch!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))) (= (c!993471 (h!69547 (exprs!5525 (h!69548 zl!343)))) (h!69546 s!2326))))))

(assert (=> d!1785690 (= (derivationStepZipperDown!983 (h!69547 (exprs!5525 (h!69548 zl!343))) (Context!10051 (t!376523 (exprs!5525 (h!69548 zl!343)))) (h!69546 s!2326)) e!3482366)))

(declare-fun b!5653613 () Bool)

(assert (=> b!5653613 (= e!3482367 call!427773)))

(declare-fun b!5653617 () Bool)

(assert (=> b!5653617 (= e!3482364 ((_ map or) call!427772 call!427777))))

(declare-fun b!5653618 () Bool)

(assert (=> b!5653618 (= c!993877 e!3482363)))

(declare-fun res!2391535 () Bool)

(assert (=> b!5653618 (=> (not res!2391535) (not e!3482363))))

(assert (=> b!5653618 (= res!2391535 ((_ is Concat!24486) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> b!5653618 (= e!3482365 e!3482364)))

(assert (= (and d!1785690 c!993880) b!5653615))

(assert (= (and d!1785690 (not c!993880)) b!5653611))

(assert (= (and b!5653611 c!993878) b!5653614))

(assert (= (and b!5653611 (not c!993878)) b!5653618))

(assert (= (and b!5653618 res!2391535) b!5653608))

(assert (= (and b!5653618 c!993877) b!5653617))

(assert (= (and b!5653618 (not c!993877)) b!5653609))

(assert (= (and b!5653609 c!993876) b!5653612))

(assert (= (and b!5653609 (not c!993876)) b!5653616))

(assert (= (and b!5653616 c!993879) b!5653613))

(assert (= (and b!5653616 (not c!993879)) b!5653610))

(assert (= (or b!5653612 b!5653613) bm!427771))

(assert (= (or b!5653612 b!5653613) bm!427772))

(assert (= (or b!5653617 bm!427771) bm!427767))

(assert (= (or b!5653617 bm!427772) bm!427768))

(assert (= (or b!5653614 bm!427768) bm!427770))

(assert (= (or b!5653614 b!5653617) bm!427769))

(declare-fun m!6620550 () Bool)

(assert (=> b!5653615 m!6620550))

(assert (=> b!5653608 m!6619738))

(declare-fun m!6620552 () Bool)

(assert (=> bm!427769 m!6620552))

(declare-fun m!6620554 () Bool)

(assert (=> bm!427767 m!6620554))

(declare-fun m!6620556 () Bool)

(assert (=> bm!427770 m!6620556))

(assert (=> bm!427598 d!1785690))

(assert (=> d!1785292 d!1785686))

(declare-fun b!5653619 () Bool)

(declare-fun e!3482372 () Bool)

(assert (=> b!5653619 (= e!3482372 (= (head!12015 Nil!63098) (c!993471 (regOne!31794 r!7292))))))

(declare-fun b!5653620 () Bool)

(declare-fun e!3482375 () Bool)

(assert (=> b!5653620 (= e!3482375 (nullable!5673 (regOne!31794 r!7292)))))

(declare-fun b!5653621 () Bool)

(declare-fun res!2391543 () Bool)

(declare-fun e!3482370 () Bool)

(assert (=> b!5653621 (=> res!2391543 e!3482370)))

(assert (=> b!5653621 (= res!2391543 (not ((_ is ElementMatch!15641) (regOne!31794 r!7292))))))

(declare-fun e!3482369 () Bool)

(assert (=> b!5653621 (= e!3482369 e!3482370)))

(declare-fun b!5653622 () Bool)

(assert (=> b!5653622 (= e!3482375 (matchR!7826 (derivativeStep!4471 (regOne!31794 r!7292) (head!12015 Nil!63098)) (tail!11110 Nil!63098)))))

(declare-fun b!5653623 () Bool)

(declare-fun res!2391537 () Bool)

(assert (=> b!5653623 (=> (not res!2391537) (not e!3482372))))

(declare-fun call!427778 () Bool)

(assert (=> b!5653623 (= res!2391537 (not call!427778))))

(declare-fun b!5653624 () Bool)

(declare-fun res!2391542 () Bool)

(assert (=> b!5653624 (=> res!2391542 e!3482370)))

(assert (=> b!5653624 (= res!2391542 e!3482372)))

(declare-fun res!2391539 () Bool)

(assert (=> b!5653624 (=> (not res!2391539) (not e!3482372))))

(declare-fun lt!2266122 () Bool)

(assert (=> b!5653624 (= res!2391539 lt!2266122)))

(declare-fun b!5653625 () Bool)

(declare-fun res!2391540 () Bool)

(assert (=> b!5653625 (=> (not res!2391540) (not e!3482372))))

(assert (=> b!5653625 (= res!2391540 (isEmpty!34945 (tail!11110 Nil!63098)))))

(declare-fun bm!427773 () Bool)

(assert (=> bm!427773 (= call!427778 (isEmpty!34945 Nil!63098))))

(declare-fun b!5653626 () Bool)

(assert (=> b!5653626 (= e!3482369 (not lt!2266122))))

(declare-fun b!5653627 () Bool)

(declare-fun e!3482371 () Bool)

(assert (=> b!5653627 (= e!3482371 (not (= (head!12015 Nil!63098) (c!993471 (regOne!31794 r!7292)))))))

(declare-fun b!5653629 () Bool)

(declare-fun res!2391536 () Bool)

(assert (=> b!5653629 (=> res!2391536 e!3482371)))

(assert (=> b!5653629 (= res!2391536 (not (isEmpty!34945 (tail!11110 Nil!63098))))))

(declare-fun b!5653630 () Bool)

(declare-fun e!3482374 () Bool)

(assert (=> b!5653630 (= e!3482370 e!3482374)))

(declare-fun res!2391538 () Bool)

(assert (=> b!5653630 (=> (not res!2391538) (not e!3482374))))

(assert (=> b!5653630 (= res!2391538 (not lt!2266122))))

(declare-fun b!5653631 () Bool)

(assert (=> b!5653631 (= e!3482374 e!3482371)))

(declare-fun res!2391541 () Bool)

(assert (=> b!5653631 (=> res!2391541 e!3482371)))

(assert (=> b!5653631 (= res!2391541 call!427778)))

(declare-fun b!5653632 () Bool)

(declare-fun e!3482373 () Bool)

(assert (=> b!5653632 (= e!3482373 (= lt!2266122 call!427778))))

(declare-fun d!1785692 () Bool)

(assert (=> d!1785692 e!3482373))

(declare-fun c!993882 () Bool)

(assert (=> d!1785692 (= c!993882 ((_ is EmptyExpr!15641) (regOne!31794 r!7292)))))

(assert (=> d!1785692 (= lt!2266122 e!3482375)))

(declare-fun c!993883 () Bool)

(assert (=> d!1785692 (= c!993883 (isEmpty!34945 Nil!63098))))

(assert (=> d!1785692 (validRegex!7377 (regOne!31794 r!7292))))

(assert (=> d!1785692 (= (matchR!7826 (regOne!31794 r!7292) Nil!63098) lt!2266122)))

(declare-fun b!5653628 () Bool)

(assert (=> b!5653628 (= e!3482373 e!3482369)))

(declare-fun c!993881 () Bool)

(assert (=> b!5653628 (= c!993881 ((_ is EmptyLang!15641) (regOne!31794 r!7292)))))

(assert (= (and d!1785692 c!993883) b!5653620))

(assert (= (and d!1785692 (not c!993883)) b!5653622))

(assert (= (and d!1785692 c!993882) b!5653632))

(assert (= (and d!1785692 (not c!993882)) b!5653628))

(assert (= (and b!5653628 c!993881) b!5653626))

(assert (= (and b!5653628 (not c!993881)) b!5653621))

(assert (= (and b!5653621 (not res!2391543)) b!5653624))

(assert (= (and b!5653624 res!2391539) b!5653623))

(assert (= (and b!5653623 res!2391537) b!5653625))

(assert (= (and b!5653625 res!2391540) b!5653619))

(assert (= (and b!5653624 (not res!2391542)) b!5653630))

(assert (= (and b!5653630 res!2391538) b!5653631))

(assert (= (and b!5653631 (not res!2391541)) b!5653629))

(assert (= (and b!5653629 (not res!2391536)) b!5653627))

(assert (= (or b!5653632 b!5653623 b!5653631) bm!427773))

(declare-fun m!6620558 () Bool)

(assert (=> b!5653619 m!6620558))

(assert (=> b!5653622 m!6620558))

(assert (=> b!5653622 m!6620558))

(declare-fun m!6620560 () Bool)

(assert (=> b!5653622 m!6620560))

(declare-fun m!6620562 () Bool)

(assert (=> b!5653622 m!6620562))

(assert (=> b!5653622 m!6620560))

(assert (=> b!5653622 m!6620562))

(declare-fun m!6620564 () Bool)

(assert (=> b!5653622 m!6620564))

(assert (=> b!5653620 m!6620250))

(declare-fun m!6620566 () Bool)

(assert (=> bm!427773 m!6620566))

(assert (=> b!5653625 m!6620562))

(assert (=> b!5653625 m!6620562))

(declare-fun m!6620568 () Bool)

(assert (=> b!5653625 m!6620568))

(assert (=> b!5653627 m!6620558))

(assert (=> d!1785692 m!6620566))

(assert (=> d!1785692 m!6619682))

(assert (=> b!5653629 m!6620562))

(assert (=> b!5653629 m!6620562))

(assert (=> b!5653629 m!6620568))

(assert (=> d!1785292 d!1785692))

(assert (=> d!1785292 d!1785616))

(declare-fun d!1785694 () Bool)

(assert (=> d!1785694 (= (isEmpty!34941 (tail!11109 (unfocusZipperList!1069 zl!343))) ((_ is Nil!63099) (tail!11109 (unfocusZipperList!1069 zl!343))))))

(assert (=> b!5652691 d!1785694))

(declare-fun d!1785696 () Bool)

(assert (=> d!1785696 (= (tail!11109 (unfocusZipperList!1069 zl!343)) (t!376523 (unfocusZipperList!1069 zl!343)))))

(assert (=> b!5652691 d!1785696))

(assert (=> d!1785334 d!1785572))

(declare-fun d!1785698 () Bool)

(assert (=> d!1785698 (= (nullable!5673 (h!69547 (exprs!5525 lt!2265993))) (nullableFct!1764 (h!69547 (exprs!5525 lt!2265993))))))

(declare-fun bs!1315033 () Bool)

(assert (= bs!1315033 d!1785698))

(declare-fun m!6620570 () Bool)

(assert (=> bs!1315033 m!6620570))

(assert (=> b!5652649 d!1785698))

(declare-fun b!5653633 () Bool)

(declare-fun e!3482379 () Bool)

(assert (=> b!5653633 (= e!3482379 (= (head!12015 (_1!36041 (get!21739 lt!2266057))) (c!993471 (regOne!31794 r!7292))))))

(declare-fun b!5653634 () Bool)

(declare-fun e!3482382 () Bool)

(assert (=> b!5653634 (= e!3482382 (nullable!5673 (regOne!31794 r!7292)))))

(declare-fun b!5653635 () Bool)

(declare-fun res!2391551 () Bool)

(declare-fun e!3482377 () Bool)

(assert (=> b!5653635 (=> res!2391551 e!3482377)))

(assert (=> b!5653635 (= res!2391551 (not ((_ is ElementMatch!15641) (regOne!31794 r!7292))))))

(declare-fun e!3482376 () Bool)

(assert (=> b!5653635 (= e!3482376 e!3482377)))

(declare-fun b!5653636 () Bool)

(assert (=> b!5653636 (= e!3482382 (matchR!7826 (derivativeStep!4471 (regOne!31794 r!7292) (head!12015 (_1!36041 (get!21739 lt!2266057)))) (tail!11110 (_1!36041 (get!21739 lt!2266057)))))))

(declare-fun b!5653637 () Bool)

(declare-fun res!2391545 () Bool)

(assert (=> b!5653637 (=> (not res!2391545) (not e!3482379))))

(declare-fun call!427779 () Bool)

(assert (=> b!5653637 (= res!2391545 (not call!427779))))

(declare-fun b!5653638 () Bool)

(declare-fun res!2391550 () Bool)

(assert (=> b!5653638 (=> res!2391550 e!3482377)))

(assert (=> b!5653638 (= res!2391550 e!3482379)))

(declare-fun res!2391547 () Bool)

(assert (=> b!5653638 (=> (not res!2391547) (not e!3482379))))

(declare-fun lt!2266123 () Bool)

(assert (=> b!5653638 (= res!2391547 lt!2266123)))

(declare-fun b!5653639 () Bool)

(declare-fun res!2391548 () Bool)

(assert (=> b!5653639 (=> (not res!2391548) (not e!3482379))))

(assert (=> b!5653639 (= res!2391548 (isEmpty!34945 (tail!11110 (_1!36041 (get!21739 lt!2266057)))))))

(declare-fun bm!427774 () Bool)

(assert (=> bm!427774 (= call!427779 (isEmpty!34945 (_1!36041 (get!21739 lt!2266057))))))

(declare-fun b!5653640 () Bool)

(assert (=> b!5653640 (= e!3482376 (not lt!2266123))))

(declare-fun b!5653641 () Bool)

(declare-fun e!3482378 () Bool)

(assert (=> b!5653641 (= e!3482378 (not (= (head!12015 (_1!36041 (get!21739 lt!2266057))) (c!993471 (regOne!31794 r!7292)))))))

(declare-fun b!5653643 () Bool)

(declare-fun res!2391544 () Bool)

(assert (=> b!5653643 (=> res!2391544 e!3482378)))

(assert (=> b!5653643 (= res!2391544 (not (isEmpty!34945 (tail!11110 (_1!36041 (get!21739 lt!2266057))))))))

(declare-fun b!5653644 () Bool)

(declare-fun e!3482381 () Bool)

(assert (=> b!5653644 (= e!3482377 e!3482381)))

(declare-fun res!2391546 () Bool)

(assert (=> b!5653644 (=> (not res!2391546) (not e!3482381))))

(assert (=> b!5653644 (= res!2391546 (not lt!2266123))))

(declare-fun b!5653645 () Bool)

(assert (=> b!5653645 (= e!3482381 e!3482378)))

(declare-fun res!2391549 () Bool)

(assert (=> b!5653645 (=> res!2391549 e!3482378)))

(assert (=> b!5653645 (= res!2391549 call!427779)))

(declare-fun b!5653646 () Bool)

(declare-fun e!3482380 () Bool)

(assert (=> b!5653646 (= e!3482380 (= lt!2266123 call!427779))))

(declare-fun d!1785700 () Bool)

(assert (=> d!1785700 e!3482380))

(declare-fun c!993885 () Bool)

(assert (=> d!1785700 (= c!993885 ((_ is EmptyExpr!15641) (regOne!31794 r!7292)))))

(assert (=> d!1785700 (= lt!2266123 e!3482382)))

(declare-fun c!993886 () Bool)

(assert (=> d!1785700 (= c!993886 (isEmpty!34945 (_1!36041 (get!21739 lt!2266057))))))

(assert (=> d!1785700 (validRegex!7377 (regOne!31794 r!7292))))

(assert (=> d!1785700 (= (matchR!7826 (regOne!31794 r!7292) (_1!36041 (get!21739 lt!2266057))) lt!2266123)))

(declare-fun b!5653642 () Bool)

(assert (=> b!5653642 (= e!3482380 e!3482376)))

(declare-fun c!993884 () Bool)

(assert (=> b!5653642 (= c!993884 ((_ is EmptyLang!15641) (regOne!31794 r!7292)))))

(assert (= (and d!1785700 c!993886) b!5653634))

(assert (= (and d!1785700 (not c!993886)) b!5653636))

(assert (= (and d!1785700 c!993885) b!5653646))

(assert (= (and d!1785700 (not c!993885)) b!5653642))

(assert (= (and b!5653642 c!993884) b!5653640))

(assert (= (and b!5653642 (not c!993884)) b!5653635))

(assert (= (and b!5653635 (not res!2391551)) b!5653638))

(assert (= (and b!5653638 res!2391547) b!5653637))

(assert (= (and b!5653637 res!2391545) b!5653639))

(assert (= (and b!5653639 res!2391548) b!5653633))

(assert (= (and b!5653638 (not res!2391550)) b!5653644))

(assert (= (and b!5653644 res!2391546) b!5653645))

(assert (= (and b!5653645 (not res!2391549)) b!5653643))

(assert (= (and b!5653643 (not res!2391544)) b!5653641))

(assert (= (or b!5653646 b!5653637 b!5653645) bm!427774))

(declare-fun m!6620572 () Bool)

(assert (=> b!5653633 m!6620572))

(assert (=> b!5653636 m!6620572))

(assert (=> b!5653636 m!6620572))

(declare-fun m!6620574 () Bool)

(assert (=> b!5653636 m!6620574))

(declare-fun m!6620576 () Bool)

(assert (=> b!5653636 m!6620576))

(assert (=> b!5653636 m!6620574))

(assert (=> b!5653636 m!6620576))

(declare-fun m!6620578 () Bool)

(assert (=> b!5653636 m!6620578))

(assert (=> b!5653634 m!6620250))

(declare-fun m!6620580 () Bool)

(assert (=> bm!427774 m!6620580))

(assert (=> b!5653639 m!6620576))

(assert (=> b!5653639 m!6620576))

(declare-fun m!6620582 () Bool)

(assert (=> b!5653639 m!6620582))

(assert (=> b!5653641 m!6620572))

(assert (=> d!1785700 m!6620580))

(assert (=> d!1785700 m!6619682))

(assert (=> b!5653643 m!6620576))

(assert (=> b!5653643 m!6620576))

(assert (=> b!5653643 m!6620582))

(assert (=> b!5652584 d!1785700))

(assert (=> b!5652584 d!1785512))

(declare-fun d!1785702 () Bool)

(declare-fun c!993887 () Bool)

(assert (=> d!1785702 (= c!993887 (isEmpty!34945 (tail!11110 (t!376522 s!2326))))))

(declare-fun e!3482383 () Bool)

(assert (=> d!1785702 (= (matchZipper!1779 (derivationStepZipper!1728 lt!2265989 (head!12015 (t!376522 s!2326))) (tail!11110 (t!376522 s!2326))) e!3482383)))

(declare-fun b!5653647 () Bool)

(assert (=> b!5653647 (= e!3482383 (nullableZipper!1617 (derivationStepZipper!1728 lt!2265989 (head!12015 (t!376522 s!2326)))))))

(declare-fun b!5653648 () Bool)

(assert (=> b!5653648 (= e!3482383 (matchZipper!1779 (derivationStepZipper!1728 (derivationStepZipper!1728 lt!2265989 (head!12015 (t!376522 s!2326))) (head!12015 (tail!11110 (t!376522 s!2326)))) (tail!11110 (tail!11110 (t!376522 s!2326)))))))

(assert (= (and d!1785702 c!993887) b!5653647))

(assert (= (and d!1785702 (not c!993887)) b!5653648))

(assert (=> d!1785702 m!6619656))

(assert (=> d!1785702 m!6620472))

(assert (=> b!5653647 m!6619778))

(declare-fun m!6620584 () Bool)

(assert (=> b!5653647 m!6620584))

(assert (=> b!5653648 m!6619656))

(assert (=> b!5653648 m!6620476))

(assert (=> b!5653648 m!6619778))

(assert (=> b!5653648 m!6620476))

(declare-fun m!6620586 () Bool)

(assert (=> b!5653648 m!6620586))

(assert (=> b!5653648 m!6619656))

(assert (=> b!5653648 m!6620480))

(assert (=> b!5653648 m!6620586))

(assert (=> b!5653648 m!6620480))

(declare-fun m!6620588 () Bool)

(assert (=> b!5653648 m!6620588))

(assert (=> b!5652711 d!1785702))

(declare-fun bs!1315034 () Bool)

(declare-fun d!1785704 () Bool)

(assert (= bs!1315034 (and d!1785704 b!5652029)))

(declare-fun lambda!304195 () Int)

(assert (=> bs!1315034 (= (= (head!12015 (t!376522 s!2326)) (h!69546 s!2326)) (= lambda!304195 lambda!304087))))

(declare-fun bs!1315035 () Bool)

(assert (= bs!1315035 (and d!1785704 d!1785652)))

(assert (=> bs!1315035 (= lambda!304195 lambda!304193)))

(assert (=> d!1785704 true))

(assert (=> d!1785704 (= (derivationStepZipper!1728 lt!2265989 (head!12015 (t!376522 s!2326))) (flatMap!1254 lt!2265989 lambda!304195))))

(declare-fun bs!1315036 () Bool)

(assert (= bs!1315036 d!1785704))

(declare-fun m!6620590 () Bool)

(assert (=> bs!1315036 m!6620590))

(assert (=> b!5652711 d!1785704))

(assert (=> b!5652711 d!1785654))

(assert (=> b!5652711 d!1785656))

(declare-fun b!5653650 () Bool)

(declare-fun e!3482385 () List!63222)

(assert (=> b!5653650 (= e!3482385 (Cons!63098 (h!69546 (_1!36041 (get!21739 lt!2266057))) (++!13851 (t!376522 (_1!36041 (get!21739 lt!2266057))) (_2!36041 (get!21739 lt!2266057)))))))

(declare-fun b!5653649 () Bool)

(assert (=> b!5653649 (= e!3482385 (_2!36041 (get!21739 lt!2266057)))))

(declare-fun b!5653651 () Bool)

(declare-fun res!2391552 () Bool)

(declare-fun e!3482384 () Bool)

(assert (=> b!5653651 (=> (not res!2391552) (not e!3482384))))

(declare-fun lt!2266124 () List!63222)

(assert (=> b!5653651 (= res!2391552 (= (size!39987 lt!2266124) (+ (size!39987 (_1!36041 (get!21739 lt!2266057))) (size!39987 (_2!36041 (get!21739 lt!2266057))))))))

(declare-fun d!1785706 () Bool)

(assert (=> d!1785706 e!3482384))

(declare-fun res!2391553 () Bool)

(assert (=> d!1785706 (=> (not res!2391553) (not e!3482384))))

(assert (=> d!1785706 (= res!2391553 (= (content!11419 lt!2266124) ((_ map or) (content!11419 (_1!36041 (get!21739 lt!2266057))) (content!11419 (_2!36041 (get!21739 lt!2266057))))))))

(assert (=> d!1785706 (= lt!2266124 e!3482385)))

(declare-fun c!993888 () Bool)

(assert (=> d!1785706 (= c!993888 ((_ is Nil!63098) (_1!36041 (get!21739 lt!2266057))))))

(assert (=> d!1785706 (= (++!13851 (_1!36041 (get!21739 lt!2266057)) (_2!36041 (get!21739 lt!2266057))) lt!2266124)))

(declare-fun b!5653652 () Bool)

(assert (=> b!5653652 (= e!3482384 (or (not (= (_2!36041 (get!21739 lt!2266057)) Nil!63098)) (= lt!2266124 (_1!36041 (get!21739 lt!2266057)))))))

(assert (= (and d!1785706 c!993888) b!5653649))

(assert (= (and d!1785706 (not c!993888)) b!5653650))

(assert (= (and d!1785706 res!2391553) b!5653651))

(assert (= (and b!5653651 res!2391552) b!5653652))

(declare-fun m!6620592 () Bool)

(assert (=> b!5653650 m!6620592))

(declare-fun m!6620594 () Bool)

(assert (=> b!5653651 m!6620594))

(declare-fun m!6620596 () Bool)

(assert (=> b!5653651 m!6620596))

(declare-fun m!6620598 () Bool)

(assert (=> b!5653651 m!6620598))

(declare-fun m!6620600 () Bool)

(assert (=> d!1785706 m!6620600))

(declare-fun m!6620602 () Bool)

(assert (=> d!1785706 m!6620602))

(declare-fun m!6620604 () Bool)

(assert (=> d!1785706 m!6620604))

(assert (=> b!5652582 d!1785706))

(assert (=> b!5652582 d!1785512))

(declare-fun b!5653653 () Bool)

(declare-fun e!3482386 () Bool)

(assert (=> b!5653653 (= e!3482386 (nullable!5673 (regOne!31794 (h!69547 (exprs!5525 lt!2265993)))))))

(declare-fun bm!427775 () Bool)

(declare-fun call!427782 () List!63223)

(declare-fun c!993890 () Bool)

(declare-fun c!993889 () Bool)

(assert (=> bm!427775 (= call!427782 ($colon$colon!1685 (exprs!5525 (Context!10051 (t!376523 (exprs!5525 lt!2265993)))) (ite (or c!993890 c!993889) (regTwo!31794 (h!69547 (exprs!5525 lt!2265993))) (h!69547 (exprs!5525 lt!2265993)))))))

(declare-fun b!5653654 () Bool)

(declare-fun e!3482387 () (InoxSet Context!10050))

(declare-fun e!3482391 () (InoxSet Context!10050))

(assert (=> b!5653654 (= e!3482387 e!3482391)))

(assert (=> b!5653654 (= c!993889 ((_ is Concat!24486) (h!69547 (exprs!5525 lt!2265993))))))

(declare-fun b!5653655 () Bool)

(declare-fun e!3482390 () (InoxSet Context!10050))

(assert (=> b!5653655 (= e!3482390 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427776 () Bool)

(declare-fun call!427785 () (InoxSet Context!10050))

(declare-fun call!427783 () (InoxSet Context!10050))

(assert (=> bm!427776 (= call!427785 call!427783)))

(declare-fun b!5653656 () Bool)

(declare-fun e!3482389 () (InoxSet Context!10050))

(declare-fun e!3482388 () (InoxSet Context!10050))

(assert (=> b!5653656 (= e!3482389 e!3482388)))

(declare-fun c!993891 () Bool)

(assert (=> b!5653656 (= c!993891 ((_ is Union!15641) (h!69547 (exprs!5525 lt!2265993))))))

(declare-fun b!5653657 () Bool)

(declare-fun call!427781 () (InoxSet Context!10050))

(assert (=> b!5653657 (= e!3482391 call!427781)))

(declare-fun call!427780 () (InoxSet Context!10050))

(declare-fun bm!427777 () Bool)

(assert (=> bm!427777 (= call!427780 (derivationStepZipperDown!983 (ite c!993891 (regOne!31795 (h!69547 (exprs!5525 lt!2265993))) (regOne!31794 (h!69547 (exprs!5525 lt!2265993)))) (ite c!993891 (Context!10051 (t!376523 (exprs!5525 lt!2265993))) (Context!10051 call!427782)) (h!69546 s!2326)))))

(declare-fun bm!427778 () Bool)

(declare-fun call!427784 () List!63223)

(assert (=> bm!427778 (= call!427783 (derivationStepZipperDown!983 (ite c!993891 (regTwo!31795 (h!69547 (exprs!5525 lt!2265993))) (ite c!993890 (regTwo!31794 (h!69547 (exprs!5525 lt!2265993))) (ite c!993889 (regOne!31794 (h!69547 (exprs!5525 lt!2265993))) (reg!15970 (h!69547 (exprs!5525 lt!2265993)))))) (ite (or c!993891 c!993890) (Context!10051 (t!376523 (exprs!5525 lt!2265993))) (Context!10051 call!427784)) (h!69546 s!2326)))))

(declare-fun b!5653659 () Bool)

(assert (=> b!5653659 (= e!3482388 ((_ map or) call!427780 call!427783))))

(declare-fun bm!427779 () Bool)

(assert (=> bm!427779 (= call!427784 call!427782)))

(declare-fun b!5653660 () Bool)

(assert (=> b!5653660 (= e!3482389 (store ((as const (Array Context!10050 Bool)) false) (Context!10051 (t!376523 (exprs!5525 lt!2265993))) true))))

(declare-fun b!5653661 () Bool)

(declare-fun c!993892 () Bool)

(assert (=> b!5653661 (= c!993892 ((_ is Star!15641) (h!69547 (exprs!5525 lt!2265993))))))

(assert (=> b!5653661 (= e!3482391 e!3482390)))

(declare-fun bm!427780 () Bool)

(assert (=> bm!427780 (= call!427781 call!427785)))

(declare-fun d!1785708 () Bool)

(declare-fun c!993893 () Bool)

(assert (=> d!1785708 (= c!993893 (and ((_ is ElementMatch!15641) (h!69547 (exprs!5525 lt!2265993))) (= (c!993471 (h!69547 (exprs!5525 lt!2265993))) (h!69546 s!2326))))))

(assert (=> d!1785708 (= (derivationStepZipperDown!983 (h!69547 (exprs!5525 lt!2265993)) (Context!10051 (t!376523 (exprs!5525 lt!2265993))) (h!69546 s!2326)) e!3482389)))

(declare-fun b!5653658 () Bool)

(assert (=> b!5653658 (= e!3482390 call!427781)))

(declare-fun b!5653662 () Bool)

(assert (=> b!5653662 (= e!3482387 ((_ map or) call!427780 call!427785))))

(declare-fun b!5653663 () Bool)

(assert (=> b!5653663 (= c!993890 e!3482386)))

(declare-fun res!2391554 () Bool)

(assert (=> b!5653663 (=> (not res!2391554) (not e!3482386))))

(assert (=> b!5653663 (= res!2391554 ((_ is Concat!24486) (h!69547 (exprs!5525 lt!2265993))))))

(assert (=> b!5653663 (= e!3482388 e!3482387)))

(assert (= (and d!1785708 c!993893) b!5653660))

(assert (= (and d!1785708 (not c!993893)) b!5653656))

(assert (= (and b!5653656 c!993891) b!5653659))

(assert (= (and b!5653656 (not c!993891)) b!5653663))

(assert (= (and b!5653663 res!2391554) b!5653653))

(assert (= (and b!5653663 c!993890) b!5653662))

(assert (= (and b!5653663 (not c!993890)) b!5653654))

(assert (= (and b!5653654 c!993889) b!5653657))

(assert (= (and b!5653654 (not c!993889)) b!5653661))

(assert (= (and b!5653661 c!993892) b!5653658))

(assert (= (and b!5653661 (not c!993892)) b!5653655))

(assert (= (or b!5653657 b!5653658) bm!427779))

(assert (= (or b!5653657 b!5653658) bm!427780))

(assert (= (or b!5653662 bm!427779) bm!427775))

(assert (= (or b!5653662 bm!427780) bm!427776))

(assert (= (or b!5653659 bm!427776) bm!427778))

(assert (= (or b!5653659 b!5653662) bm!427777))

(declare-fun m!6620606 () Bool)

(assert (=> b!5653660 m!6620606))

(declare-fun m!6620608 () Bool)

(assert (=> b!5653653 m!6620608))

(declare-fun m!6620610 () Bool)

(assert (=> bm!427777 m!6620610))

(declare-fun m!6620612 () Bool)

(assert (=> bm!427775 m!6620612))

(declare-fun m!6620614 () Bool)

(assert (=> bm!427778 m!6620614))

(assert (=> bm!427596 d!1785708))

(declare-fun d!1785710 () Bool)

(declare-fun c!993896 () Bool)

(assert (=> d!1785710 (= c!993896 ((_ is Nil!63100) lt!2266004))))

(declare-fun e!3482394 () (InoxSet Context!10050))

(assert (=> d!1785710 (= (content!11416 lt!2266004) e!3482394)))

(declare-fun b!5653668 () Bool)

(assert (=> b!5653668 (= e!3482394 ((as const (Array Context!10050 Bool)) false))))

(declare-fun b!5653669 () Bool)

(assert (=> b!5653669 (= e!3482394 ((_ map or) (store ((as const (Array Context!10050 Bool)) false) (h!69548 lt!2266004) true) (content!11416 (t!376524 lt!2266004))))))

(assert (= (and d!1785710 c!993896) b!5653668))

(assert (= (and d!1785710 (not c!993896)) b!5653669))

(declare-fun m!6620616 () Bool)

(assert (=> b!5653669 m!6620616))

(declare-fun m!6620618 () Bool)

(assert (=> b!5653669 m!6620618))

(assert (=> b!5652156 d!1785710))

(assert (=> d!1785298 d!1785292))

(assert (=> d!1785298 d!1785616))

(assert (=> d!1785298 d!1785302))

(declare-fun d!1785712 () Bool)

(assert (=> d!1785712 (= (Exists!2741 lambda!304131) (choose!42796 lambda!304131))))

(declare-fun bs!1315037 () Bool)

(assert (= bs!1315037 d!1785712))

(declare-fun m!6620620 () Bool)

(assert (=> bs!1315037 m!6620620))

(assert (=> d!1785298 d!1785712))

(declare-fun bs!1315038 () Bool)

(declare-fun d!1785714 () Bool)

(assert (= bs!1315038 (and d!1785714 b!5652024)))

(declare-fun lambda!304198 () Int)

(assert (=> bs!1315038 (not (= lambda!304198 lambda!304086))))

(declare-fun bs!1315039 () Bool)

(assert (= bs!1315039 (and d!1785714 b!5653021)))

(assert (=> bs!1315039 (not (= lambda!304198 lambda!304163))))

(declare-fun bs!1315040 () Bool)

(assert (= bs!1315040 (and d!1785714 d!1785604)))

(assert (=> bs!1315040 (not (= lambda!304198 lambda!304187))))

(declare-fun bs!1315041 () Bool)

(assert (= bs!1315041 (and d!1785714 b!5653120)))

(assert (=> bs!1315041 (not (= lambda!304198 lambda!304177))))

(declare-fun bs!1315042 () Bool)

(assert (= bs!1315042 (and d!1785714 d!1785300)))

(assert (=> bs!1315042 (not (= lambda!304198 lambda!304137))))

(declare-fun bs!1315043 () Bool)

(assert (= bs!1315043 (and d!1785714 b!5653111)))

(assert (=> bs!1315043 (not (= lambda!304198 lambda!304179))))

(declare-fun bs!1315044 () Bool)

(assert (= bs!1315044 (and d!1785714 b!5653030)))

(assert (=> bs!1315044 (not (= lambda!304198 lambda!304162))))

(assert (=> bs!1315042 (= lambda!304198 lambda!304136)))

(declare-fun bs!1315045 () Bool)

(assert (= bs!1315045 (and d!1785714 b!5652310)))

(assert (=> bs!1315045 (not (= lambda!304198 lambda!304116))))

(declare-fun bs!1315046 () Bool)

(assert (= bs!1315046 (and d!1785714 b!5652301)))

(assert (=> bs!1315046 (not (= lambda!304198 lambda!304117))))

(assert (=> bs!1315040 (= lambda!304198 lambda!304186)))

(declare-fun bs!1315047 () Bool)

(assert (= bs!1315047 (and d!1785714 d!1785298)))

(assert (=> bs!1315047 (= lambda!304198 lambda!304131)))

(assert (=> bs!1315038 (= lambda!304198 lambda!304085)))

(assert (=> d!1785714 true))

(assert (=> d!1785714 true))

(assert (=> d!1785714 true))

(assert (=> d!1785714 (= (isDefined!12353 (findConcatSeparation!2064 (regOne!31794 r!7292) (regTwo!31794 r!7292) Nil!63098 s!2326 s!2326)) (Exists!2741 lambda!304198))))

(assert (=> d!1785714 true))

(declare-fun _$89!1771 () Unit!156096)

(assert (=> d!1785714 (= (choose!42797 (regOne!31794 r!7292) (regTwo!31794 r!7292) s!2326) _$89!1771)))

(declare-fun bs!1315048 () Bool)

(assert (= bs!1315048 d!1785714))

(assert (=> bs!1315048 m!6619376))

(assert (=> bs!1315048 m!6619376))

(assert (=> bs!1315048 m!6619378))

(declare-fun m!6620622 () Bool)

(assert (=> bs!1315048 m!6620622))

(assert (=> d!1785298 d!1785714))

(declare-fun b!5653674 () Bool)

(declare-fun e!3482397 () Bool)

(assert (=> b!5653674 (= e!3482397 (nullable!5673 (regOne!31794 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))))))

(declare-fun bm!427781 () Bool)

(declare-fun call!427788 () List!63223)

(declare-fun c!993897 () Bool)

(declare-fun c!993898 () Bool)

(assert (=> bm!427781 (= call!427788 ($colon$colon!1685 (exprs!5525 (ite c!993642 lt!2265993 (Context!10051 call!427606))) (ite (or c!993898 c!993897) (regTwo!31794 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))))))

(declare-fun b!5653675 () Bool)

(declare-fun e!3482398 () (InoxSet Context!10050))

(declare-fun e!3482402 () (InoxSet Context!10050))

(assert (=> b!5653675 (= e!3482398 e!3482402)))

(assert (=> b!5653675 (= c!993897 ((_ is Concat!24486) (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(declare-fun b!5653676 () Bool)

(declare-fun e!3482401 () (InoxSet Context!10050))

(assert (=> b!5653676 (= e!3482401 ((as const (Array Context!10050 Bool)) false))))

(declare-fun bm!427782 () Bool)

(declare-fun call!427791 () (InoxSet Context!10050))

(declare-fun call!427789 () (InoxSet Context!10050))

(assert (=> bm!427782 (= call!427791 call!427789)))

(declare-fun b!5653677 () Bool)

(declare-fun e!3482400 () (InoxSet Context!10050))

(declare-fun e!3482399 () (InoxSet Context!10050))

(assert (=> b!5653677 (= e!3482400 e!3482399)))

(declare-fun c!993899 () Bool)

(assert (=> b!5653677 (= c!993899 ((_ is Union!15641) (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(declare-fun b!5653678 () Bool)

(declare-fun call!427787 () (InoxSet Context!10050))

(assert (=> b!5653678 (= e!3482402 call!427787)))

(declare-fun call!427786 () (InoxSet Context!10050))

(declare-fun bm!427783 () Bool)

(assert (=> bm!427783 (= call!427786 (derivationStepZipperDown!983 (ite c!993899 (regOne!31795 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (regOne!31794 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))) (ite c!993899 (ite c!993642 lt!2265993 (Context!10051 call!427606)) (Context!10051 call!427788)) (h!69546 s!2326)))))

(declare-fun bm!427784 () Bool)

(declare-fun call!427790 () List!63223)

(assert (=> bm!427784 (= call!427789 (derivationStepZipperDown!983 (ite c!993899 (regTwo!31795 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (ite c!993898 (regTwo!31794 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (ite c!993897 (regOne!31794 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (reg!15970 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))))))) (ite (or c!993899 c!993898) (ite c!993642 lt!2265993 (Context!10051 call!427606)) (Context!10051 call!427790)) (h!69546 s!2326)))))

(declare-fun b!5653680 () Bool)

(assert (=> b!5653680 (= e!3482399 ((_ map or) call!427786 call!427789))))

(declare-fun bm!427785 () Bool)

(assert (=> bm!427785 (= call!427790 call!427788)))

(declare-fun b!5653681 () Bool)

(assert (=> b!5653681 (= e!3482400 (store ((as const (Array Context!10050 Bool)) false) (ite c!993642 lt!2265993 (Context!10051 call!427606)) true))))

(declare-fun b!5653682 () Bool)

(declare-fun c!993900 () Bool)

(assert (=> b!5653682 (= c!993900 ((_ is Star!15641) (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(assert (=> b!5653682 (= e!3482402 e!3482401)))

(declare-fun bm!427786 () Bool)

(assert (=> bm!427786 (= call!427787 call!427791)))

(declare-fun d!1785716 () Bool)

(declare-fun c!993901 () Bool)

(assert (=> d!1785716 (= c!993901 (and ((_ is ElementMatch!15641) (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (= (c!993471 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))) (h!69546 s!2326))))))

(assert (=> d!1785716 (= (derivationStepZipperDown!983 (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343))))) (ite c!993642 lt!2265993 (Context!10051 call!427606)) (h!69546 s!2326)) e!3482400)))

(declare-fun b!5653679 () Bool)

(assert (=> b!5653679 (= e!3482401 call!427787)))

(declare-fun b!5653683 () Bool)

(assert (=> b!5653683 (= e!3482398 ((_ map or) call!427786 call!427791))))

(declare-fun b!5653684 () Bool)

(assert (=> b!5653684 (= c!993898 e!3482397)))

(declare-fun res!2391559 () Bool)

(assert (=> b!5653684 (=> (not res!2391559) (not e!3482397))))

(assert (=> b!5653684 (= res!2391559 ((_ is Concat!24486) (ite c!993642 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(assert (=> b!5653684 (= e!3482399 e!3482398)))

(assert (= (and d!1785716 c!993901) b!5653681))

(assert (= (and d!1785716 (not c!993901)) b!5653677))

(assert (= (and b!5653677 c!993899) b!5653680))

(assert (= (and b!5653677 (not c!993899)) b!5653684))

(assert (= (and b!5653684 res!2391559) b!5653674))

(assert (= (and b!5653684 c!993898) b!5653683))

(assert (= (and b!5653684 (not c!993898)) b!5653675))

(assert (= (and b!5653675 c!993897) b!5653678))

(assert (= (and b!5653675 (not c!993897)) b!5653682))

(assert (= (and b!5653682 c!993900) b!5653679))

(assert (= (and b!5653682 (not c!993900)) b!5653676))

(assert (= (or b!5653678 b!5653679) bm!427785))

(assert (= (or b!5653678 b!5653679) bm!427786))

(assert (= (or b!5653683 bm!427785) bm!427781))

(assert (= (or b!5653683 bm!427786) bm!427782))

(assert (= (or b!5653680 bm!427782) bm!427784))

(assert (= (or b!5653680 b!5653683) bm!427783))

(declare-fun m!6620624 () Bool)

(assert (=> b!5653681 m!6620624))

(declare-fun m!6620626 () Bool)

(assert (=> b!5653674 m!6620626))

(declare-fun m!6620628 () Bool)

(assert (=> bm!427783 m!6620628))

(declare-fun m!6620630 () Bool)

(assert (=> bm!427781 m!6620630))

(declare-fun m!6620632 () Bool)

(assert (=> bm!427784 m!6620632))

(assert (=> bm!427601 d!1785716))

(declare-fun d!1785718 () Bool)

(assert (=> d!1785718 true))

(declare-fun setRes!37779 () Bool)

(assert (=> d!1785718 setRes!37779))

(declare-fun condSetEmpty!37779 () Bool)

(declare-fun res!2391562 () (InoxSet Context!10050))

(assert (=> d!1785718 (= condSetEmpty!37779 (= res!2391562 ((as const (Array Context!10050 Bool)) false)))))

(assert (=> d!1785718 (= (choose!42800 z!1189 lambda!304087) res!2391562)))

(declare-fun setIsEmpty!37779 () Bool)

(assert (=> setIsEmpty!37779 setRes!37779))

(declare-fun e!3482405 () Bool)

(declare-fun tp!1566197 () Bool)

(declare-fun setElem!37779 () Context!10050)

(declare-fun setNonEmpty!37779 () Bool)

(assert (=> setNonEmpty!37779 (= setRes!37779 (and tp!1566197 (inv!82349 setElem!37779) e!3482405))))

(declare-fun setRest!37779 () (InoxSet Context!10050))

(assert (=> setNonEmpty!37779 (= res!2391562 ((_ map or) (store ((as const (Array Context!10050 Bool)) false) setElem!37779 true) setRest!37779))))

(declare-fun b!5653687 () Bool)

(declare-fun tp!1566196 () Bool)

(assert (=> b!5653687 (= e!3482405 tp!1566196)))

(assert (= (and d!1785718 condSetEmpty!37779) setIsEmpty!37779))

(assert (= (and d!1785718 (not condSetEmpty!37779)) setNonEmpty!37779))

(assert (= setNonEmpty!37779 b!5653687))

(declare-fun m!6620634 () Bool)

(assert (=> setNonEmpty!37779 m!6620634))

(assert (=> d!1785320 d!1785718))

(declare-fun b!5653688 () Bool)

(declare-fun e!3482407 () Bool)

(declare-fun e!3482406 () Bool)

(assert (=> b!5653688 (= e!3482407 e!3482406)))

(declare-fun c!993902 () Bool)

(assert (=> b!5653688 (= c!993902 ((_ is Union!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun bm!427787 () Bool)

(declare-fun call!427792 () Bool)

(assert (=> bm!427787 (= call!427792 (nullable!5673 (ite c!993902 (regOne!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regOne!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(declare-fun b!5653689 () Bool)

(declare-fun e!3482408 () Bool)

(declare-fun call!427793 () Bool)

(assert (=> b!5653689 (= e!3482408 call!427793)))

(declare-fun b!5653690 () Bool)

(declare-fun e!3482409 () Bool)

(assert (=> b!5653690 (= e!3482406 e!3482409)))

(declare-fun res!2391565 () Bool)

(assert (=> b!5653690 (= res!2391565 call!427792)))

(assert (=> b!5653690 (=> res!2391565 e!3482409)))

(declare-fun b!5653691 () Bool)

(declare-fun e!3482411 () Bool)

(assert (=> b!5653691 (= e!3482411 e!3482407)))

(declare-fun res!2391564 () Bool)

(assert (=> b!5653691 (=> res!2391564 e!3482407)))

(assert (=> b!5653691 (= res!2391564 ((_ is Star!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun b!5653692 () Bool)

(assert (=> b!5653692 (= e!3482406 e!3482408)))

(declare-fun res!2391563 () Bool)

(assert (=> b!5653692 (= res!2391563 call!427792)))

(assert (=> b!5653692 (=> (not res!2391563) (not e!3482408))))

(declare-fun d!1785720 () Bool)

(declare-fun res!2391566 () Bool)

(declare-fun e!3482410 () Bool)

(assert (=> d!1785720 (=> res!2391566 e!3482410)))

(assert (=> d!1785720 (= res!2391566 ((_ is EmptyExpr!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> d!1785720 (= (nullableFct!1764 (h!69547 (exprs!5525 (h!69548 zl!343)))) e!3482410)))

(declare-fun bm!427788 () Bool)

(assert (=> bm!427788 (= call!427793 (nullable!5673 (ite c!993902 (regTwo!31795 (h!69547 (exprs!5525 (h!69548 zl!343)))) (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(declare-fun b!5653693 () Bool)

(assert (=> b!5653693 (= e!3482409 call!427793)))

(declare-fun b!5653694 () Bool)

(assert (=> b!5653694 (= e!3482410 e!3482411)))

(declare-fun res!2391567 () Bool)

(assert (=> b!5653694 (=> (not res!2391567) (not e!3482411))))

(assert (=> b!5653694 (= res!2391567 (and (not ((_ is EmptyLang!15641) (h!69547 (exprs!5525 (h!69548 zl!343))))) (not ((_ is ElementMatch!15641) (h!69547 (exprs!5525 (h!69548 zl!343)))))))))

(assert (= (and d!1785720 (not res!2391566)) b!5653694))

(assert (= (and b!5653694 res!2391567) b!5653691))

(assert (= (and b!5653691 (not res!2391564)) b!5653688))

(assert (= (and b!5653688 c!993902) b!5653690))

(assert (= (and b!5653688 (not c!993902)) b!5653692))

(assert (= (and b!5653690 (not res!2391565)) b!5653693))

(assert (= (and b!5653692 res!2391563) b!5653689))

(assert (= (or b!5653693 b!5653689) bm!427788))

(assert (= (or b!5653690 b!5653692) bm!427787))

(declare-fun m!6620636 () Bool)

(assert (=> bm!427787 m!6620636))

(declare-fun m!6620638 () Bool)

(assert (=> bm!427788 m!6620638))

(assert (=> d!1785312 d!1785720))

(assert (=> d!1785332 d!1785572))

(assert (=> d!1785330 d!1785334))

(assert (=> d!1785330 d!1785332))

(declare-fun e!3482414 () Bool)

(declare-fun d!1785722 () Bool)

(assert (=> d!1785722 (= (matchZipper!1779 ((_ map or) lt!2265989 lt!2265985) (t!376522 s!2326)) e!3482414)))

(declare-fun res!2391570 () Bool)

(assert (=> d!1785722 (=> res!2391570 e!3482414)))

(assert (=> d!1785722 (= res!2391570 (matchZipper!1779 lt!2265989 (t!376522 s!2326)))))

(assert (=> d!1785722 true))

(declare-fun _$48!1287 () Unit!156096)

(assert (=> d!1785722 (= (choose!42801 lt!2265989 lt!2265985 (t!376522 s!2326)) _$48!1287)))

(declare-fun b!5653697 () Bool)

(assert (=> b!5653697 (= e!3482414 (matchZipper!1779 lt!2265985 (t!376522 s!2326)))))

(assert (= (and d!1785722 (not res!2391570)) b!5653697))

(assert (=> d!1785722 m!6619344))

(assert (=> d!1785722 m!6619342))

(assert (=> b!5653697 m!6619328))

(assert (=> d!1785330 d!1785722))

(declare-fun d!1785724 () Bool)

(declare-fun c!993903 () Bool)

(assert (=> d!1785724 (= c!993903 (isEmpty!34945 (tail!11110 (t!376522 s!2326))))))

(declare-fun e!3482415 () Bool)

(assert (=> d!1785724 (= (matchZipper!1779 (derivationStepZipper!1728 lt!2265985 (head!12015 (t!376522 s!2326))) (tail!11110 (t!376522 s!2326))) e!3482415)))

(declare-fun b!5653698 () Bool)

(assert (=> b!5653698 (= e!3482415 (nullableZipper!1617 (derivationStepZipper!1728 lt!2265985 (head!12015 (t!376522 s!2326)))))))

(declare-fun b!5653699 () Bool)

(assert (=> b!5653699 (= e!3482415 (matchZipper!1779 (derivationStepZipper!1728 (derivationStepZipper!1728 lt!2265985 (head!12015 (t!376522 s!2326))) (head!12015 (tail!11110 (t!376522 s!2326)))) (tail!11110 (tail!11110 (t!376522 s!2326)))))))

(assert (= (and d!1785724 c!993903) b!5653698))

(assert (= (and d!1785724 (not c!993903)) b!5653699))

(assert (=> d!1785724 m!6619656))

(assert (=> d!1785724 m!6620472))

(assert (=> b!5653698 m!6619654))

(declare-fun m!6620640 () Bool)

(assert (=> b!5653698 m!6620640))

(assert (=> b!5653699 m!6619656))

(assert (=> b!5653699 m!6620476))

(assert (=> b!5653699 m!6619654))

(assert (=> b!5653699 m!6620476))

(declare-fun m!6620642 () Bool)

(assert (=> b!5653699 m!6620642))

(assert (=> b!5653699 m!6619656))

(assert (=> b!5653699 m!6620480))

(assert (=> b!5653699 m!6620642))

(assert (=> b!5653699 m!6620480))

(declare-fun m!6620644 () Bool)

(assert (=> b!5653699 m!6620644))

(assert (=> b!5652562 d!1785724))

(declare-fun bs!1315049 () Bool)

(declare-fun d!1785726 () Bool)

(assert (= bs!1315049 (and d!1785726 b!5652029)))

(declare-fun lambda!304199 () Int)

(assert (=> bs!1315049 (= (= (head!12015 (t!376522 s!2326)) (h!69546 s!2326)) (= lambda!304199 lambda!304087))))

(declare-fun bs!1315050 () Bool)

(assert (= bs!1315050 (and d!1785726 d!1785652)))

(assert (=> bs!1315050 (= lambda!304199 lambda!304193)))

(declare-fun bs!1315051 () Bool)

(assert (= bs!1315051 (and d!1785726 d!1785704)))

(assert (=> bs!1315051 (= lambda!304199 lambda!304195)))

(assert (=> d!1785726 true))

(assert (=> d!1785726 (= (derivationStepZipper!1728 lt!2265985 (head!12015 (t!376522 s!2326))) (flatMap!1254 lt!2265985 lambda!304199))))

(declare-fun bs!1315052 () Bool)

(assert (= bs!1315052 d!1785726))

(declare-fun m!6620646 () Bool)

(assert (=> bs!1315052 m!6620646))

(assert (=> b!5652562 d!1785726))

(assert (=> b!5652562 d!1785654))

(assert (=> b!5652562 d!1785656))

(declare-fun d!1785728 () Bool)

(assert (=> d!1785728 (= (isEmptyLang!1186 lt!2266074) ((_ is EmptyLang!15641) lt!2266074))))

(assert (=> b!5652698 d!1785728))

(assert (=> b!5652406 d!1785666))

(assert (=> b!5652406 d!1785546))

(declare-fun d!1785730 () Bool)

(assert (=> d!1785730 (= ($colon$colon!1685 (exprs!5525 lt!2265993) (ite (or c!993641 c!993640) (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (h!69547 (exprs!5525 (h!69548 zl!343))))) (Cons!63099 (ite (or c!993641 c!993640) (regTwo!31794 (h!69547 (exprs!5525 (h!69548 zl!343)))) (h!69547 (exprs!5525 (h!69548 zl!343)))) (exprs!5525 lt!2265993)))))

(assert (=> bm!427599 d!1785730))

(declare-fun condSetEmpty!37780 () Bool)

(assert (=> setNonEmpty!37772 (= condSetEmpty!37780 (= setRest!37772 ((as const (Array Context!10050 Bool)) false)))))

(declare-fun setRes!37780 () Bool)

(assert (=> setNonEmpty!37772 (= tp!1565972 setRes!37780)))

(declare-fun setIsEmpty!37780 () Bool)

(assert (=> setIsEmpty!37780 setRes!37780))

(declare-fun setElem!37780 () Context!10050)

(declare-fun tp!1566198 () Bool)

(declare-fun e!3482416 () Bool)

(declare-fun setNonEmpty!37780 () Bool)

(assert (=> setNonEmpty!37780 (= setRes!37780 (and tp!1566198 (inv!82349 setElem!37780) e!3482416))))

(declare-fun setRest!37780 () (InoxSet Context!10050))

(assert (=> setNonEmpty!37780 (= setRest!37772 ((_ map or) (store ((as const (Array Context!10050 Bool)) false) setElem!37780 true) setRest!37780))))

(declare-fun b!5653700 () Bool)

(declare-fun tp!1566199 () Bool)

(assert (=> b!5653700 (= e!3482416 tp!1566199)))

(assert (= (and setNonEmpty!37772 condSetEmpty!37780) setIsEmpty!37780))

(assert (= (and setNonEmpty!37772 (not condSetEmpty!37780)) setNonEmpty!37780))

(assert (= setNonEmpty!37780 b!5653700))

(declare-fun m!6620648 () Bool)

(assert (=> setNonEmpty!37780 m!6620648))

(declare-fun b!5653701 () Bool)

(declare-fun e!3482417 () Bool)

(declare-fun tp!1566200 () Bool)

(declare-fun tp!1566201 () Bool)

(assert (=> b!5653701 (= e!3482417 (and tp!1566200 tp!1566201))))

(assert (=> b!5652718 (= tp!1565973 e!3482417)))

(assert (= (and b!5652718 ((_ is Cons!63099) (exprs!5525 setElem!37772))) b!5653701))

(declare-fun b!5653702 () Bool)

(declare-fun e!3482418 () Bool)

(assert (=> b!5653702 (= e!3482418 tp_is_empty!40535)))

(declare-fun b!5653705 () Bool)

(declare-fun tp!1566203 () Bool)

(declare-fun tp!1566202 () Bool)

(assert (=> b!5653705 (= e!3482418 (and tp!1566203 tp!1566202))))

(declare-fun b!5653704 () Bool)

(declare-fun tp!1566204 () Bool)

(assert (=> b!5653704 (= e!3482418 tp!1566204)))

(assert (=> b!5652734 (= tp!1565992 e!3482418)))

(declare-fun b!5653703 () Bool)

(declare-fun tp!1566205 () Bool)

(declare-fun tp!1566206 () Bool)

(assert (=> b!5653703 (= e!3482418 (and tp!1566205 tp!1566206))))

(assert (= (and b!5652734 ((_ is ElementMatch!15641) (regOne!31794 (regTwo!31795 r!7292)))) b!5653702))

(assert (= (and b!5652734 ((_ is Concat!24486) (regOne!31794 (regTwo!31795 r!7292)))) b!5653703))

(assert (= (and b!5652734 ((_ is Star!15641) (regOne!31794 (regTwo!31795 r!7292)))) b!5653704))

(assert (= (and b!5652734 ((_ is Union!15641) (regOne!31794 (regTwo!31795 r!7292)))) b!5653705))

(declare-fun b!5653706 () Bool)

(declare-fun e!3482419 () Bool)

(assert (=> b!5653706 (= e!3482419 tp_is_empty!40535)))

(declare-fun b!5653709 () Bool)

(declare-fun tp!1566208 () Bool)

(declare-fun tp!1566207 () Bool)

(assert (=> b!5653709 (= e!3482419 (and tp!1566208 tp!1566207))))

(declare-fun b!5653708 () Bool)

(declare-fun tp!1566209 () Bool)

(assert (=> b!5653708 (= e!3482419 tp!1566209)))

(assert (=> b!5652734 (= tp!1565993 e!3482419)))

(declare-fun b!5653707 () Bool)

(declare-fun tp!1566210 () Bool)

(declare-fun tp!1566211 () Bool)

(assert (=> b!5653707 (= e!3482419 (and tp!1566210 tp!1566211))))

(assert (= (and b!5652734 ((_ is ElementMatch!15641) (regTwo!31794 (regTwo!31795 r!7292)))) b!5653706))

(assert (= (and b!5652734 ((_ is Concat!24486) (regTwo!31794 (regTwo!31795 r!7292)))) b!5653707))

(assert (= (and b!5652734 ((_ is Star!15641) (regTwo!31794 (regTwo!31795 r!7292)))) b!5653708))

(assert (= (and b!5652734 ((_ is Union!15641) (regTwo!31794 (regTwo!31795 r!7292)))) b!5653709))

(declare-fun b!5653710 () Bool)

(declare-fun e!3482420 () Bool)

(assert (=> b!5653710 (= e!3482420 tp_is_empty!40535)))

(declare-fun b!5653713 () Bool)

(declare-fun tp!1566213 () Bool)

(declare-fun tp!1566212 () Bool)

(assert (=> b!5653713 (= e!3482420 (and tp!1566213 tp!1566212))))

(declare-fun b!5653712 () Bool)

(declare-fun tp!1566214 () Bool)

(assert (=> b!5653712 (= e!3482420 tp!1566214)))

(assert (=> b!5652743 (= tp!1566001 e!3482420)))

(declare-fun b!5653711 () Bool)

(declare-fun tp!1566215 () Bool)

(declare-fun tp!1566216 () Bool)

(assert (=> b!5653711 (= e!3482420 (and tp!1566215 tp!1566216))))

(assert (= (and b!5652743 ((_ is ElementMatch!15641) (reg!15970 (regOne!31794 r!7292)))) b!5653710))

(assert (= (and b!5652743 ((_ is Concat!24486) (reg!15970 (regOne!31794 r!7292)))) b!5653711))

(assert (= (and b!5652743 ((_ is Star!15641) (reg!15970 (regOne!31794 r!7292)))) b!5653712))

(assert (= (and b!5652743 ((_ is Union!15641) (reg!15970 (regOne!31794 r!7292)))) b!5653713))

(declare-fun b!5653714 () Bool)

(declare-fun e!3482421 () Bool)

(assert (=> b!5653714 (= e!3482421 tp_is_empty!40535)))

(declare-fun b!5653717 () Bool)

(declare-fun tp!1566218 () Bool)

(declare-fun tp!1566217 () Bool)

(assert (=> b!5653717 (= e!3482421 (and tp!1566218 tp!1566217))))

(declare-fun b!5653716 () Bool)

(declare-fun tp!1566219 () Bool)

(assert (=> b!5653716 (= e!3482421 tp!1566219)))

(assert (=> b!5652744 (= tp!1566000 e!3482421)))

(declare-fun b!5653715 () Bool)

(declare-fun tp!1566220 () Bool)

(declare-fun tp!1566221 () Bool)

(assert (=> b!5653715 (= e!3482421 (and tp!1566220 tp!1566221))))

(assert (= (and b!5652744 ((_ is ElementMatch!15641) (regOne!31795 (regOne!31794 r!7292)))) b!5653714))

(assert (= (and b!5652744 ((_ is Concat!24486) (regOne!31795 (regOne!31794 r!7292)))) b!5653715))

(assert (= (and b!5652744 ((_ is Star!15641) (regOne!31795 (regOne!31794 r!7292)))) b!5653716))

(assert (= (and b!5652744 ((_ is Union!15641) (regOne!31795 (regOne!31794 r!7292)))) b!5653717))

(declare-fun b!5653718 () Bool)

(declare-fun e!3482422 () Bool)

(assert (=> b!5653718 (= e!3482422 tp_is_empty!40535)))

(declare-fun b!5653721 () Bool)

(declare-fun tp!1566223 () Bool)

(declare-fun tp!1566222 () Bool)

(assert (=> b!5653721 (= e!3482422 (and tp!1566223 tp!1566222))))

(declare-fun b!5653720 () Bool)

(declare-fun tp!1566224 () Bool)

(assert (=> b!5653720 (= e!3482422 tp!1566224)))

(assert (=> b!5652744 (= tp!1565999 e!3482422)))

(declare-fun b!5653719 () Bool)

(declare-fun tp!1566225 () Bool)

(declare-fun tp!1566226 () Bool)

(assert (=> b!5653719 (= e!3482422 (and tp!1566225 tp!1566226))))

(assert (= (and b!5652744 ((_ is ElementMatch!15641) (regTwo!31795 (regOne!31794 r!7292)))) b!5653718))

(assert (= (and b!5652744 ((_ is Concat!24486) (regTwo!31795 (regOne!31794 r!7292)))) b!5653719))

(assert (= (and b!5652744 ((_ is Star!15641) (regTwo!31795 (regOne!31794 r!7292)))) b!5653720))

(assert (= (and b!5652744 ((_ is Union!15641) (regTwo!31795 (regOne!31794 r!7292)))) b!5653721))

(declare-fun b!5653722 () Bool)

(declare-fun e!3482423 () Bool)

(assert (=> b!5653722 (= e!3482423 tp_is_empty!40535)))

(declare-fun b!5653725 () Bool)

(declare-fun tp!1566228 () Bool)

(declare-fun tp!1566227 () Bool)

(assert (=> b!5653725 (= e!3482423 (and tp!1566228 tp!1566227))))

(declare-fun b!5653724 () Bool)

(declare-fun tp!1566229 () Bool)

(assert (=> b!5653724 (= e!3482423 tp!1566229)))

(assert (=> b!5652742 (= tp!1566002 e!3482423)))

(declare-fun b!5653723 () Bool)

(declare-fun tp!1566230 () Bool)

(declare-fun tp!1566231 () Bool)

(assert (=> b!5653723 (= e!3482423 (and tp!1566230 tp!1566231))))

(assert (= (and b!5652742 ((_ is ElementMatch!15641) (regOne!31794 (regOne!31794 r!7292)))) b!5653722))

(assert (= (and b!5652742 ((_ is Concat!24486) (regOne!31794 (regOne!31794 r!7292)))) b!5653723))

(assert (= (and b!5652742 ((_ is Star!15641) (regOne!31794 (regOne!31794 r!7292)))) b!5653724))

(assert (= (and b!5652742 ((_ is Union!15641) (regOne!31794 (regOne!31794 r!7292)))) b!5653725))

(declare-fun b!5653726 () Bool)

(declare-fun e!3482424 () Bool)

(assert (=> b!5653726 (= e!3482424 tp_is_empty!40535)))

(declare-fun b!5653729 () Bool)

(declare-fun tp!1566233 () Bool)

(declare-fun tp!1566232 () Bool)

(assert (=> b!5653729 (= e!3482424 (and tp!1566233 tp!1566232))))

(declare-fun b!5653728 () Bool)

(declare-fun tp!1566234 () Bool)

(assert (=> b!5653728 (= e!3482424 tp!1566234)))

(assert (=> b!5652742 (= tp!1566003 e!3482424)))

(declare-fun b!5653727 () Bool)

(declare-fun tp!1566235 () Bool)

(declare-fun tp!1566236 () Bool)

(assert (=> b!5653727 (= e!3482424 (and tp!1566235 tp!1566236))))

(assert (= (and b!5652742 ((_ is ElementMatch!15641) (regTwo!31794 (regOne!31794 r!7292)))) b!5653726))

(assert (= (and b!5652742 ((_ is Concat!24486) (regTwo!31794 (regOne!31794 r!7292)))) b!5653727))

(assert (= (and b!5652742 ((_ is Star!15641) (regTwo!31794 (regOne!31794 r!7292)))) b!5653728))

(assert (= (and b!5652742 ((_ is Union!15641) (regTwo!31794 (regOne!31794 r!7292)))) b!5653729))

(declare-fun b!5653730 () Bool)

(declare-fun e!3482425 () Bool)

(assert (=> b!5653730 (= e!3482425 tp_is_empty!40535)))

(declare-fun b!5653733 () Bool)

(declare-fun tp!1566238 () Bool)

(declare-fun tp!1566237 () Bool)

(assert (=> b!5653733 (= e!3482425 (and tp!1566238 tp!1566237))))

(declare-fun b!5653732 () Bool)

(declare-fun tp!1566239 () Bool)

(assert (=> b!5653732 (= e!3482425 tp!1566239)))

(assert (=> b!5652732 (= tp!1565985 e!3482425)))

(declare-fun b!5653731 () Bool)

(declare-fun tp!1566240 () Bool)

(declare-fun tp!1566241 () Bool)

(assert (=> b!5653731 (= e!3482425 (and tp!1566240 tp!1566241))))

(assert (= (and b!5652732 ((_ is ElementMatch!15641) (regOne!31795 (regOne!31795 r!7292)))) b!5653730))

(assert (= (and b!5652732 ((_ is Concat!24486) (regOne!31795 (regOne!31795 r!7292)))) b!5653731))

(assert (= (and b!5652732 ((_ is Star!15641) (regOne!31795 (regOne!31795 r!7292)))) b!5653732))

(assert (= (and b!5652732 ((_ is Union!15641) (regOne!31795 (regOne!31795 r!7292)))) b!5653733))

(declare-fun b!5653734 () Bool)

(declare-fun e!3482426 () Bool)

(assert (=> b!5653734 (= e!3482426 tp_is_empty!40535)))

(declare-fun b!5653737 () Bool)

(declare-fun tp!1566243 () Bool)

(declare-fun tp!1566242 () Bool)

(assert (=> b!5653737 (= e!3482426 (and tp!1566243 tp!1566242))))

(declare-fun b!5653736 () Bool)

(declare-fun tp!1566244 () Bool)

(assert (=> b!5653736 (= e!3482426 tp!1566244)))

(assert (=> b!5652732 (= tp!1565984 e!3482426)))

(declare-fun b!5653735 () Bool)

(declare-fun tp!1566245 () Bool)

(declare-fun tp!1566246 () Bool)

(assert (=> b!5653735 (= e!3482426 (and tp!1566245 tp!1566246))))

(assert (= (and b!5652732 ((_ is ElementMatch!15641) (regTwo!31795 (regOne!31795 r!7292)))) b!5653734))

(assert (= (and b!5652732 ((_ is Concat!24486) (regTwo!31795 (regOne!31795 r!7292)))) b!5653735))

(assert (= (and b!5652732 ((_ is Star!15641) (regTwo!31795 (regOne!31795 r!7292)))) b!5653736))

(assert (= (and b!5652732 ((_ is Union!15641) (regTwo!31795 (regOne!31795 r!7292)))) b!5653737))

(declare-fun b!5653738 () Bool)

(declare-fun e!3482427 () Bool)

(assert (=> b!5653738 (= e!3482427 tp_is_empty!40535)))

(declare-fun b!5653741 () Bool)

(declare-fun tp!1566248 () Bool)

(declare-fun tp!1566247 () Bool)

(assert (=> b!5653741 (= e!3482427 (and tp!1566248 tp!1566247))))

(declare-fun b!5653740 () Bool)

(declare-fun tp!1566249 () Bool)

(assert (=> b!5653740 (= e!3482427 tp!1566249)))

(assert (=> b!5652740 (= tp!1565995 e!3482427)))

(declare-fun b!5653739 () Bool)

(declare-fun tp!1566250 () Bool)

(declare-fun tp!1566251 () Bool)

(assert (=> b!5653739 (= e!3482427 (and tp!1566250 tp!1566251))))

(assert (= (and b!5652740 ((_ is ElementMatch!15641) (regOne!31795 (reg!15970 r!7292)))) b!5653738))

(assert (= (and b!5652740 ((_ is Concat!24486) (regOne!31795 (reg!15970 r!7292)))) b!5653739))

(assert (= (and b!5652740 ((_ is Star!15641) (regOne!31795 (reg!15970 r!7292)))) b!5653740))

(assert (= (and b!5652740 ((_ is Union!15641) (regOne!31795 (reg!15970 r!7292)))) b!5653741))

(declare-fun b!5653742 () Bool)

(declare-fun e!3482428 () Bool)

(assert (=> b!5653742 (= e!3482428 tp_is_empty!40535)))

(declare-fun b!5653745 () Bool)

(declare-fun tp!1566253 () Bool)

(declare-fun tp!1566252 () Bool)

(assert (=> b!5653745 (= e!3482428 (and tp!1566253 tp!1566252))))

(declare-fun b!5653744 () Bool)

(declare-fun tp!1566254 () Bool)

(assert (=> b!5653744 (= e!3482428 tp!1566254)))

(assert (=> b!5652740 (= tp!1565994 e!3482428)))

(declare-fun b!5653743 () Bool)

(declare-fun tp!1566255 () Bool)

(declare-fun tp!1566256 () Bool)

(assert (=> b!5653743 (= e!3482428 (and tp!1566255 tp!1566256))))

(assert (= (and b!5652740 ((_ is ElementMatch!15641) (regTwo!31795 (reg!15970 r!7292)))) b!5653742))

(assert (= (and b!5652740 ((_ is Concat!24486) (regTwo!31795 (reg!15970 r!7292)))) b!5653743))

(assert (= (and b!5652740 ((_ is Star!15641) (regTwo!31795 (reg!15970 r!7292)))) b!5653744))

(assert (= (and b!5652740 ((_ is Union!15641) (regTwo!31795 (reg!15970 r!7292)))) b!5653745))

(declare-fun b!5653746 () Bool)

(declare-fun e!3482429 () Bool)

(assert (=> b!5653746 (= e!3482429 tp_is_empty!40535)))

(declare-fun b!5653749 () Bool)

(declare-fun tp!1566258 () Bool)

(declare-fun tp!1566257 () Bool)

(assert (=> b!5653749 (= e!3482429 (and tp!1566258 tp!1566257))))

(declare-fun b!5653748 () Bool)

(declare-fun tp!1566259 () Bool)

(assert (=> b!5653748 (= e!3482429 tp!1566259)))

(assert (=> b!5652731 (= tp!1565986 e!3482429)))

(declare-fun b!5653747 () Bool)

(declare-fun tp!1566260 () Bool)

(declare-fun tp!1566261 () Bool)

(assert (=> b!5653747 (= e!3482429 (and tp!1566260 tp!1566261))))

(assert (= (and b!5652731 ((_ is ElementMatch!15641) (reg!15970 (regOne!31795 r!7292)))) b!5653746))

(assert (= (and b!5652731 ((_ is Concat!24486) (reg!15970 (regOne!31795 r!7292)))) b!5653747))

(assert (= (and b!5652731 ((_ is Star!15641) (reg!15970 (regOne!31795 r!7292)))) b!5653748))

(assert (= (and b!5652731 ((_ is Union!15641) (reg!15970 (regOne!31795 r!7292)))) b!5653749))

(declare-fun b!5653750 () Bool)

(declare-fun e!3482430 () Bool)

(assert (=> b!5653750 (= e!3482430 tp_is_empty!40535)))

(declare-fun b!5653753 () Bool)

(declare-fun tp!1566263 () Bool)

(declare-fun tp!1566262 () Bool)

(assert (=> b!5653753 (= e!3482430 (and tp!1566263 tp!1566262))))

(declare-fun b!5653752 () Bool)

(declare-fun tp!1566264 () Bool)

(assert (=> b!5653752 (= e!3482430 tp!1566264)))

(assert (=> b!5652746 (= tp!1566007 e!3482430)))

(declare-fun b!5653751 () Bool)

(declare-fun tp!1566265 () Bool)

(declare-fun tp!1566266 () Bool)

(assert (=> b!5653751 (= e!3482430 (and tp!1566265 tp!1566266))))

(assert (= (and b!5652746 ((_ is ElementMatch!15641) (regOne!31794 (regTwo!31794 r!7292)))) b!5653750))

(assert (= (and b!5652746 ((_ is Concat!24486) (regOne!31794 (regTwo!31794 r!7292)))) b!5653751))

(assert (= (and b!5652746 ((_ is Star!15641) (regOne!31794 (regTwo!31794 r!7292)))) b!5653752))

(assert (= (and b!5652746 ((_ is Union!15641) (regOne!31794 (regTwo!31794 r!7292)))) b!5653753))

(declare-fun b!5653754 () Bool)

(declare-fun e!3482431 () Bool)

(assert (=> b!5653754 (= e!3482431 tp_is_empty!40535)))

(declare-fun b!5653757 () Bool)

(declare-fun tp!1566268 () Bool)

(declare-fun tp!1566267 () Bool)

(assert (=> b!5653757 (= e!3482431 (and tp!1566268 tp!1566267))))

(declare-fun b!5653756 () Bool)

(declare-fun tp!1566269 () Bool)

(assert (=> b!5653756 (= e!3482431 tp!1566269)))

(assert (=> b!5652746 (= tp!1566008 e!3482431)))

(declare-fun b!5653755 () Bool)

(declare-fun tp!1566270 () Bool)

(declare-fun tp!1566271 () Bool)

(assert (=> b!5653755 (= e!3482431 (and tp!1566270 tp!1566271))))

(assert (= (and b!5652746 ((_ is ElementMatch!15641) (regTwo!31794 (regTwo!31794 r!7292)))) b!5653754))

(assert (= (and b!5652746 ((_ is Concat!24486) (regTwo!31794 (regTwo!31794 r!7292)))) b!5653755))

(assert (= (and b!5652746 ((_ is Star!15641) (regTwo!31794 (regTwo!31794 r!7292)))) b!5653756))

(assert (= (and b!5652746 ((_ is Union!15641) (regTwo!31794 (regTwo!31794 r!7292)))) b!5653757))

(declare-fun b!5653758 () Bool)

(declare-fun e!3482432 () Bool)

(assert (=> b!5653758 (= e!3482432 tp_is_empty!40535)))

(declare-fun b!5653761 () Bool)

(declare-fun tp!1566273 () Bool)

(declare-fun tp!1566272 () Bool)

(assert (=> b!5653761 (= e!3482432 (and tp!1566273 tp!1566272))))

(declare-fun b!5653760 () Bool)

(declare-fun tp!1566274 () Bool)

(assert (=> b!5653760 (= e!3482432 tp!1566274)))

(assert (=> b!5652748 (= tp!1566005 e!3482432)))

(declare-fun b!5653759 () Bool)

(declare-fun tp!1566275 () Bool)

(declare-fun tp!1566276 () Bool)

(assert (=> b!5653759 (= e!3482432 (and tp!1566275 tp!1566276))))

(assert (= (and b!5652748 ((_ is ElementMatch!15641) (regOne!31795 (regTwo!31794 r!7292)))) b!5653758))

(assert (= (and b!5652748 ((_ is Concat!24486) (regOne!31795 (regTwo!31794 r!7292)))) b!5653759))

(assert (= (and b!5652748 ((_ is Star!15641) (regOne!31795 (regTwo!31794 r!7292)))) b!5653760))

(assert (= (and b!5652748 ((_ is Union!15641) (regOne!31795 (regTwo!31794 r!7292)))) b!5653761))

(declare-fun b!5653762 () Bool)

(declare-fun e!3482433 () Bool)

(assert (=> b!5653762 (= e!3482433 tp_is_empty!40535)))

(declare-fun b!5653765 () Bool)

(declare-fun tp!1566278 () Bool)

(declare-fun tp!1566277 () Bool)

(assert (=> b!5653765 (= e!3482433 (and tp!1566278 tp!1566277))))

(declare-fun b!5653764 () Bool)

(declare-fun tp!1566279 () Bool)

(assert (=> b!5653764 (= e!3482433 tp!1566279)))

(assert (=> b!5652748 (= tp!1566004 e!3482433)))

(declare-fun b!5653763 () Bool)

(declare-fun tp!1566280 () Bool)

(declare-fun tp!1566281 () Bool)

(assert (=> b!5653763 (= e!3482433 (and tp!1566280 tp!1566281))))

(assert (= (and b!5652748 ((_ is ElementMatch!15641) (regTwo!31795 (regTwo!31794 r!7292)))) b!5653762))

(assert (= (and b!5652748 ((_ is Concat!24486) (regTwo!31795 (regTwo!31794 r!7292)))) b!5653763))

(assert (= (and b!5652748 ((_ is Star!15641) (regTwo!31795 (regTwo!31794 r!7292)))) b!5653764))

(assert (= (and b!5652748 ((_ is Union!15641) (regTwo!31795 (regTwo!31794 r!7292)))) b!5653765))

(declare-fun b!5653766 () Bool)

(declare-fun e!3482434 () Bool)

(assert (=> b!5653766 (= e!3482434 tp_is_empty!40535)))

(declare-fun b!5653769 () Bool)

(declare-fun tp!1566283 () Bool)

(declare-fun tp!1566282 () Bool)

(assert (=> b!5653769 (= e!3482434 (and tp!1566283 tp!1566282))))

(declare-fun b!5653768 () Bool)

(declare-fun tp!1566284 () Bool)

(assert (=> b!5653768 (= e!3482434 tp!1566284)))

(assert (=> b!5652730 (= tp!1565987 e!3482434)))

(declare-fun b!5653767 () Bool)

(declare-fun tp!1566285 () Bool)

(declare-fun tp!1566286 () Bool)

(assert (=> b!5653767 (= e!3482434 (and tp!1566285 tp!1566286))))

(assert (= (and b!5652730 ((_ is ElementMatch!15641) (regOne!31794 (regOne!31795 r!7292)))) b!5653766))

(assert (= (and b!5652730 ((_ is Concat!24486) (regOne!31794 (regOne!31795 r!7292)))) b!5653767))

(assert (= (and b!5652730 ((_ is Star!15641) (regOne!31794 (regOne!31795 r!7292)))) b!5653768))

(assert (= (and b!5652730 ((_ is Union!15641) (regOne!31794 (regOne!31795 r!7292)))) b!5653769))

(declare-fun b!5653770 () Bool)

(declare-fun e!3482435 () Bool)

(assert (=> b!5653770 (= e!3482435 tp_is_empty!40535)))

(declare-fun b!5653773 () Bool)

(declare-fun tp!1566288 () Bool)

(declare-fun tp!1566287 () Bool)

(assert (=> b!5653773 (= e!3482435 (and tp!1566288 tp!1566287))))

(declare-fun b!5653772 () Bool)

(declare-fun tp!1566289 () Bool)

(assert (=> b!5653772 (= e!3482435 tp!1566289)))

(assert (=> b!5652730 (= tp!1565988 e!3482435)))

(declare-fun b!5653771 () Bool)

(declare-fun tp!1566290 () Bool)

(declare-fun tp!1566291 () Bool)

(assert (=> b!5653771 (= e!3482435 (and tp!1566290 tp!1566291))))

(assert (= (and b!5652730 ((_ is ElementMatch!15641) (regTwo!31794 (regOne!31795 r!7292)))) b!5653770))

(assert (= (and b!5652730 ((_ is Concat!24486) (regTwo!31794 (regOne!31795 r!7292)))) b!5653771))

(assert (= (and b!5652730 ((_ is Star!15641) (regTwo!31794 (regOne!31795 r!7292)))) b!5653772))

(assert (= (and b!5652730 ((_ is Union!15641) (regTwo!31794 (regOne!31795 r!7292)))) b!5653773))

(declare-fun b!5653774 () Bool)

(declare-fun e!3482436 () Bool)

(assert (=> b!5653774 (= e!3482436 tp_is_empty!40535)))

(declare-fun b!5653777 () Bool)

(declare-fun tp!1566293 () Bool)

(declare-fun tp!1566292 () Bool)

(assert (=> b!5653777 (= e!3482436 (and tp!1566293 tp!1566292))))

(declare-fun b!5653776 () Bool)

(declare-fun tp!1566294 () Bool)

(assert (=> b!5653776 (= e!3482436 tp!1566294)))

(assert (=> b!5652739 (= tp!1565996 e!3482436)))

(declare-fun b!5653775 () Bool)

(declare-fun tp!1566295 () Bool)

(declare-fun tp!1566296 () Bool)

(assert (=> b!5653775 (= e!3482436 (and tp!1566295 tp!1566296))))

(assert (= (and b!5652739 ((_ is ElementMatch!15641) (reg!15970 (reg!15970 r!7292)))) b!5653774))

(assert (= (and b!5652739 ((_ is Concat!24486) (reg!15970 (reg!15970 r!7292)))) b!5653775))

(assert (= (and b!5652739 ((_ is Star!15641) (reg!15970 (reg!15970 r!7292)))) b!5653776))

(assert (= (and b!5652739 ((_ is Union!15641) (reg!15970 (reg!15970 r!7292)))) b!5653777))

(declare-fun b!5653778 () Bool)

(declare-fun e!3482437 () Bool)

(assert (=> b!5653778 (= e!3482437 tp_is_empty!40535)))

(declare-fun b!5653781 () Bool)

(declare-fun tp!1566298 () Bool)

(declare-fun tp!1566297 () Bool)

(assert (=> b!5653781 (= e!3482437 (and tp!1566298 tp!1566297))))

(declare-fun b!5653780 () Bool)

(declare-fun tp!1566299 () Bool)

(assert (=> b!5653780 (= e!3482437 tp!1566299)))

(assert (=> b!5652738 (= tp!1565997 e!3482437)))

(declare-fun b!5653779 () Bool)

(declare-fun tp!1566300 () Bool)

(declare-fun tp!1566301 () Bool)

(assert (=> b!5653779 (= e!3482437 (and tp!1566300 tp!1566301))))

(assert (= (and b!5652738 ((_ is ElementMatch!15641) (regOne!31794 (reg!15970 r!7292)))) b!5653778))

(assert (= (and b!5652738 ((_ is Concat!24486) (regOne!31794 (reg!15970 r!7292)))) b!5653779))

(assert (= (and b!5652738 ((_ is Star!15641) (regOne!31794 (reg!15970 r!7292)))) b!5653780))

(assert (= (and b!5652738 ((_ is Union!15641) (regOne!31794 (reg!15970 r!7292)))) b!5653781))

(declare-fun b!5653782 () Bool)

(declare-fun e!3482438 () Bool)

(assert (=> b!5653782 (= e!3482438 tp_is_empty!40535)))

(declare-fun b!5653785 () Bool)

(declare-fun tp!1566303 () Bool)

(declare-fun tp!1566302 () Bool)

(assert (=> b!5653785 (= e!3482438 (and tp!1566303 tp!1566302))))

(declare-fun b!5653784 () Bool)

(declare-fun tp!1566304 () Bool)

(assert (=> b!5653784 (= e!3482438 tp!1566304)))

(assert (=> b!5652738 (= tp!1565998 e!3482438)))

(declare-fun b!5653783 () Bool)

(declare-fun tp!1566305 () Bool)

(declare-fun tp!1566306 () Bool)

(assert (=> b!5653783 (= e!3482438 (and tp!1566305 tp!1566306))))

(assert (= (and b!5652738 ((_ is ElementMatch!15641) (regTwo!31794 (reg!15970 r!7292)))) b!5653782))

(assert (= (and b!5652738 ((_ is Concat!24486) (regTwo!31794 (reg!15970 r!7292)))) b!5653783))

(assert (= (and b!5652738 ((_ is Star!15641) (regTwo!31794 (reg!15970 r!7292)))) b!5653784))

(assert (= (and b!5652738 ((_ is Union!15641) (regTwo!31794 (reg!15970 r!7292)))) b!5653785))

(declare-fun b!5653786 () Bool)

(declare-fun e!3482439 () Bool)

(assert (=> b!5653786 (= e!3482439 tp_is_empty!40535)))

(declare-fun b!5653789 () Bool)

(declare-fun tp!1566308 () Bool)

(declare-fun tp!1566307 () Bool)

(assert (=> b!5653789 (= e!3482439 (and tp!1566308 tp!1566307))))

(declare-fun b!5653788 () Bool)

(declare-fun tp!1566309 () Bool)

(assert (=> b!5653788 (= e!3482439 tp!1566309)))

(assert (=> b!5652767 (= tp!1566024 e!3482439)))

(declare-fun b!5653787 () Bool)

(declare-fun tp!1566310 () Bool)

(declare-fun tp!1566311 () Bool)

(assert (=> b!5653787 (= e!3482439 (and tp!1566310 tp!1566311))))

(assert (= (and b!5652767 ((_ is ElementMatch!15641) (h!69547 (exprs!5525 setElem!37766)))) b!5653786))

(assert (= (and b!5652767 ((_ is Concat!24486) (h!69547 (exprs!5525 setElem!37766)))) b!5653787))

(assert (= (and b!5652767 ((_ is Star!15641) (h!69547 (exprs!5525 setElem!37766)))) b!5653788))

(assert (= (and b!5652767 ((_ is Union!15641) (h!69547 (exprs!5525 setElem!37766)))) b!5653789))

(declare-fun b!5653790 () Bool)

(declare-fun e!3482440 () Bool)

(declare-fun tp!1566312 () Bool)

(declare-fun tp!1566313 () Bool)

(assert (=> b!5653790 (= e!3482440 (and tp!1566312 tp!1566313))))

(assert (=> b!5652767 (= tp!1566025 e!3482440)))

(assert (= (and b!5652767 ((_ is Cons!63099) (t!376523 (exprs!5525 setElem!37766)))) b!5653790))

(declare-fun b!5653791 () Bool)

(declare-fun e!3482441 () Bool)

(assert (=> b!5653791 (= e!3482441 tp_is_empty!40535)))

(declare-fun b!5653794 () Bool)

(declare-fun tp!1566315 () Bool)

(declare-fun tp!1566314 () Bool)

(assert (=> b!5653794 (= e!3482441 (and tp!1566315 tp!1566314))))

(declare-fun b!5653793 () Bool)

(declare-fun tp!1566316 () Bool)

(assert (=> b!5653793 (= e!3482441 tp!1566316)))

(assert (=> b!5652747 (= tp!1566006 e!3482441)))

(declare-fun b!5653792 () Bool)

(declare-fun tp!1566317 () Bool)

(declare-fun tp!1566318 () Bool)

(assert (=> b!5653792 (= e!3482441 (and tp!1566317 tp!1566318))))

(assert (= (and b!5652747 ((_ is ElementMatch!15641) (reg!15970 (regTwo!31794 r!7292)))) b!5653791))

(assert (= (and b!5652747 ((_ is Concat!24486) (reg!15970 (regTwo!31794 r!7292)))) b!5653792))

(assert (= (and b!5652747 ((_ is Star!15641) (reg!15970 (regTwo!31794 r!7292)))) b!5653793))

(assert (= (and b!5652747 ((_ is Union!15641) (reg!15970 (regTwo!31794 r!7292)))) b!5653794))

(declare-fun b!5653796 () Bool)

(declare-fun e!3482443 () Bool)

(declare-fun tp!1566319 () Bool)

(assert (=> b!5653796 (= e!3482443 tp!1566319)))

(declare-fun e!3482442 () Bool)

(declare-fun tp!1566320 () Bool)

(declare-fun b!5653795 () Bool)

(assert (=> b!5653795 (= e!3482442 (and (inv!82349 (h!69548 (t!376524 (t!376524 zl!343)))) e!3482443 tp!1566320))))

(assert (=> b!5652765 (= tp!1566023 e!3482442)))

(assert (= b!5653795 b!5653796))

(assert (= (and b!5652765 ((_ is Cons!63100) (t!376524 (t!376524 zl!343)))) b!5653795))

(declare-fun m!6620650 () Bool)

(assert (=> b!5653795 m!6620650))

(declare-fun b!5653797 () Bool)

(declare-fun e!3482444 () Bool)

(assert (=> b!5653797 (= e!3482444 tp_is_empty!40535)))

(declare-fun b!5653800 () Bool)

(declare-fun tp!1566322 () Bool)

(declare-fun tp!1566321 () Bool)

(assert (=> b!5653800 (= e!3482444 (and tp!1566322 tp!1566321))))

(declare-fun b!5653799 () Bool)

(declare-fun tp!1566323 () Bool)

(assert (=> b!5653799 (= e!3482444 tp!1566323)))

(assert (=> b!5652758 (= tp!1566016 e!3482444)))

(declare-fun b!5653798 () Bool)

(declare-fun tp!1566324 () Bool)

(declare-fun tp!1566325 () Bool)

(assert (=> b!5653798 (= e!3482444 (and tp!1566324 tp!1566325))))

(assert (= (and b!5652758 ((_ is ElementMatch!15641) (h!69547 (exprs!5525 (h!69548 zl!343))))) b!5653797))

(assert (= (and b!5652758 ((_ is Concat!24486) (h!69547 (exprs!5525 (h!69548 zl!343))))) b!5653798))

(assert (= (and b!5652758 ((_ is Star!15641) (h!69547 (exprs!5525 (h!69548 zl!343))))) b!5653799))

(assert (= (and b!5652758 ((_ is Union!15641) (h!69547 (exprs!5525 (h!69548 zl!343))))) b!5653800))

(declare-fun b!5653801 () Bool)

(declare-fun e!3482445 () Bool)

(declare-fun tp!1566326 () Bool)

(declare-fun tp!1566327 () Bool)

(assert (=> b!5653801 (= e!3482445 (and tp!1566326 tp!1566327))))

(assert (=> b!5652758 (= tp!1566017 e!3482445)))

(assert (= (and b!5652758 ((_ is Cons!63099) (t!376523 (exprs!5525 (h!69548 zl!343))))) b!5653801))

(declare-fun b!5653802 () Bool)

(declare-fun e!3482446 () Bool)

(assert (=> b!5653802 (= e!3482446 tp_is_empty!40535)))

(declare-fun b!5653805 () Bool)

(declare-fun tp!1566329 () Bool)

(declare-fun tp!1566328 () Bool)

(assert (=> b!5653805 (= e!3482446 (and tp!1566329 tp!1566328))))

(declare-fun b!5653804 () Bool)

(declare-fun tp!1566330 () Bool)

(assert (=> b!5653804 (= e!3482446 tp!1566330)))

(assert (=> b!5652735 (= tp!1565991 e!3482446)))

(declare-fun b!5653803 () Bool)

(declare-fun tp!1566331 () Bool)

(declare-fun tp!1566332 () Bool)

(assert (=> b!5653803 (= e!3482446 (and tp!1566331 tp!1566332))))

(assert (= (and b!5652735 ((_ is ElementMatch!15641) (reg!15970 (regTwo!31795 r!7292)))) b!5653802))

(assert (= (and b!5652735 ((_ is Concat!24486) (reg!15970 (regTwo!31795 r!7292)))) b!5653803))

(assert (= (and b!5652735 ((_ is Star!15641) (reg!15970 (regTwo!31795 r!7292)))) b!5653804))

(assert (= (and b!5652735 ((_ is Union!15641) (reg!15970 (regTwo!31795 r!7292)))) b!5653805))

(declare-fun b!5653806 () Bool)

(declare-fun e!3482447 () Bool)

(assert (=> b!5653806 (= e!3482447 tp_is_empty!40535)))

(declare-fun b!5653809 () Bool)

(declare-fun tp!1566334 () Bool)

(declare-fun tp!1566333 () Bool)

(assert (=> b!5653809 (= e!3482447 (and tp!1566334 tp!1566333))))

(declare-fun b!5653808 () Bool)

(declare-fun tp!1566335 () Bool)

(assert (=> b!5653808 (= e!3482447 tp!1566335)))

(assert (=> b!5652736 (= tp!1565990 e!3482447)))

(declare-fun b!5653807 () Bool)

(declare-fun tp!1566336 () Bool)

(declare-fun tp!1566337 () Bool)

(assert (=> b!5653807 (= e!3482447 (and tp!1566336 tp!1566337))))

(assert (= (and b!5652736 ((_ is ElementMatch!15641) (regOne!31795 (regTwo!31795 r!7292)))) b!5653806))

(assert (= (and b!5652736 ((_ is Concat!24486) (regOne!31795 (regTwo!31795 r!7292)))) b!5653807))

(assert (= (and b!5652736 ((_ is Star!15641) (regOne!31795 (regTwo!31795 r!7292)))) b!5653808))

(assert (= (and b!5652736 ((_ is Union!15641) (regOne!31795 (regTwo!31795 r!7292)))) b!5653809))

(declare-fun b!5653810 () Bool)

(declare-fun e!3482448 () Bool)

(assert (=> b!5653810 (= e!3482448 tp_is_empty!40535)))

(declare-fun b!5653813 () Bool)

(declare-fun tp!1566339 () Bool)

(declare-fun tp!1566338 () Bool)

(assert (=> b!5653813 (= e!3482448 (and tp!1566339 tp!1566338))))

(declare-fun b!5653812 () Bool)

(declare-fun tp!1566340 () Bool)

(assert (=> b!5653812 (= e!3482448 tp!1566340)))

(assert (=> b!5652736 (= tp!1565989 e!3482448)))

(declare-fun b!5653811 () Bool)

(declare-fun tp!1566341 () Bool)

(declare-fun tp!1566342 () Bool)

(assert (=> b!5653811 (= e!3482448 (and tp!1566341 tp!1566342))))

(assert (= (and b!5652736 ((_ is ElementMatch!15641) (regTwo!31795 (regTwo!31795 r!7292)))) b!5653810))

(assert (= (and b!5652736 ((_ is Concat!24486) (regTwo!31795 (regTwo!31795 r!7292)))) b!5653811))

(assert (= (and b!5652736 ((_ is Star!15641) (regTwo!31795 (regTwo!31795 r!7292)))) b!5653812))

(assert (= (and b!5652736 ((_ is Union!15641) (regTwo!31795 (regTwo!31795 r!7292)))) b!5653813))

(declare-fun b!5653814 () Bool)

(declare-fun e!3482449 () Bool)

(declare-fun tp!1566343 () Bool)

(declare-fun tp!1566344 () Bool)

(assert (=> b!5653814 (= e!3482449 (and tp!1566343 tp!1566344))))

(assert (=> b!5652766 (= tp!1566022 e!3482449)))

(assert (= (and b!5652766 ((_ is Cons!63099) (exprs!5525 (h!69548 (t!376524 zl!343))))) b!5653814))

(declare-fun b!5653815 () Bool)

(declare-fun e!3482450 () Bool)

(declare-fun tp!1566345 () Bool)

(assert (=> b!5653815 (= e!3482450 (and tp_is_empty!40535 tp!1566345))))

(assert (=> b!5652753 (= tp!1566011 e!3482450)))

(assert (= (and b!5652753 ((_ is Cons!63098) (t!376522 (t!376522 s!2326)))) b!5653815))

(declare-fun b_lambda!213839 () Bool)

(assert (= b_lambda!213813 (or d!1785220 b_lambda!213839)))

(declare-fun bs!1315053 () Bool)

(declare-fun d!1785732 () Bool)

(assert (= bs!1315053 (and d!1785732 d!1785220)))

(assert (=> bs!1315053 (= (dynLambda!24688 lambda!304102 (h!69547 (exprs!5525 (h!69548 zl!343)))) (validRegex!7377 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(declare-fun m!6620652 () Bool)

(assert (=> bs!1315053 m!6620652))

(assert (=> b!5653069 d!1785732))

(declare-fun b_lambda!213841 () Bool)

(assert (= b_lambda!213835 (or d!1785216 b_lambda!213841)))

(declare-fun bs!1315054 () Bool)

(declare-fun d!1785734 () Bool)

(assert (= bs!1315054 (and d!1785734 d!1785216)))

(assert (=> bs!1315054 (= (dynLambda!24688 lambda!304096 (h!69547 (exprs!5525 setElem!37766))) (validRegex!7377 (h!69547 (exprs!5525 setElem!37766))))))

(declare-fun m!6620654 () Bool)

(assert (=> bs!1315054 m!6620654))

(assert (=> b!5653564 d!1785734))

(declare-fun b_lambda!213843 () Bool)

(assert (= b_lambda!213837 (or d!1785326 b_lambda!213843)))

(declare-fun bs!1315055 () Bool)

(declare-fun d!1785736 () Bool)

(assert (= bs!1315055 (and d!1785736 d!1785326)))

(assert (=> bs!1315055 (= (dynLambda!24688 lambda!304140 (h!69547 (unfocusZipperList!1069 zl!343))) (validRegex!7377 (h!69547 (unfocusZipperList!1069 zl!343))))))

(declare-fun m!6620656 () Bool)

(assert (=> bs!1315055 m!6620656))

(assert (=> b!5653586 d!1785736))

(declare-fun b_lambda!213845 () Bool)

(assert (= b_lambda!213819 (or d!1785286 b_lambda!213845)))

(declare-fun bs!1315056 () Bool)

(declare-fun d!1785738 () Bool)

(assert (= bs!1315056 (and d!1785738 d!1785286)))

(assert (=> bs!1315056 (= (dynLambda!24688 lambda!304128 (h!69547 (exprs!5525 (h!69548 zl!343)))) (validRegex!7377 (h!69547 (exprs!5525 (h!69548 zl!343)))))))

(assert (=> bs!1315056 m!6620652))

(assert (=> b!5653246 d!1785738))

(declare-fun b_lambda!213847 () Bool)

(assert (= b_lambda!213821 (or d!1785328 b_lambda!213847)))

(declare-fun bs!1315057 () Bool)

(declare-fun d!1785740 () Bool)

(assert (= bs!1315057 (and d!1785740 d!1785328)))

(assert (=> bs!1315057 (= (dynLambda!24688 lambda!304143 (h!69547 lt!2266077)) (validRegex!7377 (h!69547 lt!2266077)))))

(declare-fun m!6620658 () Bool)

(assert (=> bs!1315057 m!6620658))

(assert (=> b!5653325 d!1785740))

(declare-fun b_lambda!213849 () Bool)

(assert (= b_lambda!213815 (or b!5652029 b_lambda!213849)))

(assert (=> d!1785524 d!1785336))

(check-sat (not b!5653653) (not bm!427640) (not b!5653768) tp_is_empty!40535 (not b!5653022) (not d!1785534) (not b!5653745) (not b!5653114) (not b!5653566) (not b!5653814) (not b!5653619) (not b!5653704) (not b!5653703) (not b!5653799) (not b!5653651) (not d!1785518) (not b!5653727) (not b!5653551) (not d!1785686) (not b!5653546) (not b!5653106) (not d!1785480) (not b!5653524) (not b!5653708) (not b!5653674) (not b!5653105) (not b!5653755) (not bm!427770) (not b!5653698) (not d!1785640) (not bm!427662) (not b!5653109) (not setNonEmpty!37779) (not bm!427664) (not d!1785650) (not bs!1315053) (not b!5653333) (not b!5653514) (not d!1785516) (not bm!427742) (not bm!427760) (not b!5653809) (not b!5653082) (not d!1785562) (not b!5653544) (not b!5653812) (not b!5653639) (not b!5653629) (not b!5653769) (not d!1785658) (not bm!427700) (not b!5653775) (not b!5653701) (not b!5653723) (not b!5653102) (not b!5653608) (not b!5653805) (not b_lambda!213847) (not b!5653054) (not b!5653641) (not b!5653562) (not b!5653801) (not b!5653731) (not b!5653289) (not bm!427757) (not bm!427665) (not bm!427650) (not b!5653808) (not bm!427691) (not b!5653112) (not b!5653077) (not b!5653781) (not b!5653749) (not b!5653130) (not b!5653763) (not b!5653794) (not b!5653074) (not b!5653712) (not d!1785488) (not bm!427775) (not d!1785700) (not b!5653785) (not b!5653815) (not b!5653295) (not bm!427651) (not b!5653583) (not d!1785600) (not b!5653741) (not b!5653716) (not bm!427723) (not bs!1315054) (not b!5653737) (not b!5653594) (not b!5653293) (not b!5653523) (not b!5653707) (not b!5653303) (not d!1785620) (not b!5653108) (not b!5653717) (not b!5653296) (not b!5653212) (not bm!427777) (not b!5653129) (not d!1785704) (not bm!427763) (not b!5653288) (not b!5653075) (not bm!427756) (not b!5653728) (not b!5653230) (not b!5653537) (not b!5653711) (not b_lambda!213843) (not b!5653719) (not b!5653633) (not b!5653804) (not b!5653767) (not b!5653542) (not b!5653055) (not b!5653772) (not bm!427639) (not bm!427773) (not b!5653627) (not d!1785510) (not d!1785602) (not b!5653748) (not b!5652997) (not b!5653792) (not d!1785642) (not d!1785626) (not d!1785698) (not b!5653793) (not b!5653086) (not d!1785724) (not b!5653764) (not d!1785652) (not bs!1315057) (not b!5653713) (not b!5653094) (not b!5653700) (not bm!427748) (not b_lambda!213839) (not bm!427701) (not b!5653587) (not b!5653084) (not b!5653507) (not b!5653137) (not b!5653103) (not b!5653759) (not bm!427737) (not b!5653070) (not b!5653740) (not b!5653536) (not b!5653705) (not b!5653620) (not b!5653515) (not b!5653560) (not b_lambda!213849) (not d!1785706) (not b!5653800) (not b!5653634) (not b!5653024) (not b!5653753) (not d!1785714) (not b!5653079) (not b!5653107) (not b!5653752) (not b!5653554) (not d!1785566) (not b!5653735) (not d!1785702) (not d!1785726) (not bm!427784) (not b!5653721) (not b!5653733) (not bm!427659) (not d!1785676) (not b!5653739) (not b!5653811) (not d!1785692) (not bm!427769) (not d!1785722) (not bm!427724) (not b!5653292) (not bm!427696) (not b!5653650) (not b!5653761) (not bm!427759) (not b!5653699) (not d!1785464) (not b!5653556) (not bm!427752) (not b!5653669) (not b!5653525) (not d!1785628) (not b!5653725) (not b!5653795) (not d!1785670) (not b!5653647) (not b!5653636) (not bm!427778) (not b!5653622) (not bm!427767) (not b!5653779) (not b!5653557) (not b!5653776) (not d!1785530) (not d!1785514) (not b!5653729) (not d!1785568) (not bm!427788) (not d!1785524) (not b!5653724) (not d!1785712) (not b!5653765) (not setNonEmpty!37780) (not d!1785634) (not d!1785648) (not b!5653784) (not bm!427774) (not bs!1315056) (not bm!427661) (not b!5653803) (not bm!427749) (not b!5653756) (not b!5653326) (not b!5653807) (not d!1785604) (not b!5653625) (not b!5653777) (not b!5653062) (not b!5653247) (not bm!427738) (not b!5653773) (not b!5653135) (not b!5653736) (not b!5653783) (not b_lambda!213845) (not bm!427783) (not b!5653597) (not b!5653798) (not b!5653780) (not b!5653643) (not b!5653565) (not b!5653561) (not b!5653796) (not b!5653139) (not b!5653732) (not bs!1315055) (not b!5653751) (not bm!427693) (not b!5653297) (not bm!427657) (not bm!427764) (not bm!427781) (not b!5653522) (not b!5653813) (not b!5653757) (not bm!427660) (not b!5653709) (not b!5653298) (not b!5653744) (not b!5653787) (not bm!427745) (not b!5653771) (not d!1785644) (not b!5653648) (not b!5653743) (not bm!427787) (not b!5653687) (not bm!427761) (not b!5653789) (not b!5653076) (not b!5653715) (not b!5653760) (not bm!427698) (not bm!427663) (not b_lambda!213801) (not b!5653747) (not b!5653550) (not b!5653788) (not b!5653539) (not bm!427744) (not b_lambda!213841) (not b!5653231) (not b!5653132) (not bm!427740) (not bm!427741) (not b!5653302) (not b!5653790) (not b!5653559) (not bm!427751) (not d!1785564) (not b!5653720) (not b!5653248) (not b!5653697))
(check-sat)

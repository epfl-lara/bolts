; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686564 () Bool)

(assert start!686564)

(declare-fun b!7069370 () Bool)

(assert (=> b!7069370 true))

(declare-fun b!7069369 () Bool)

(assert (=> b!7069369 true))

(declare-fun b!7069367 () Bool)

(assert (=> b!7069367 true))

(declare-fun lt!2543744 () Int)

(declare-fun lt!2543765 () Int)

(declare-fun lt!2543741 () Int)

(declare-fun b!7069363 () Bool)

(declare-fun e!4250092 () Bool)

(declare-fun lt!2543762 () Int)

(assert (=> b!7069363 (= e!4250092 (or (< lt!2543765 lt!2543741) (and (= lt!2543765 lt!2543741) (< lt!2543744 lt!2543762))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35536 0))(
  ( (C!35537 (val!27470 Int)) )
))
(declare-datatypes ((Regex!17633 0))(
  ( (ElementMatch!17633 (c!1318504 C!35536)) (Concat!26478 (regOne!35778 Regex!17633) (regTwo!35778 Regex!17633)) (EmptyExpr!17633) (Star!17633 (reg!17962 Regex!17633)) (EmptyLang!17633) (Union!17633 (regOne!35779 Regex!17633) (regTwo!35779 Regex!17633)) )
))
(declare-datatypes ((List!68425 0))(
  ( (Nil!68301) (Cons!68301 (h!74749 Regex!17633) (t!382208 List!68425)) )
))
(declare-datatypes ((Context!13258 0))(
  ( (Context!13259 (exprs!7129 List!68425)) )
))
(declare-fun z1!570 () (InoxSet Context!13258))

(declare-datatypes ((List!68426 0))(
  ( (Nil!68302) (Cons!68302 (h!74750 Context!13258) (t!382209 List!68426)) )
))
(declare-fun zipperDepthTotal!586 (List!68426) Int)

(declare-fun toList!10974 ((InoxSet Context!13258)) List!68426)

(assert (=> b!7069363 (= lt!2543762 (zipperDepthTotal!586 (toList!10974 z1!570)))))

(declare-datatypes ((List!68427 0))(
  ( (Nil!68303) (Cons!68303 (h!74751 C!35536) (t!382210 List!68427)) )
))
(declare-fun s!7408 () List!68427)

(declare-fun ListPrimitiveSize!408 (List!68427) Int)

(assert (=> b!7069363 (= lt!2543741 (ListPrimitiveSize!408 s!7408))))

(declare-fun lt!2543771 () (InoxSet Context!13258))

(assert (=> b!7069363 (= lt!2543744 (zipperDepthTotal!586 (toList!10974 lt!2543771)))))

(assert (=> b!7069363 (= lt!2543765 (ListPrimitiveSize!408 (t!382210 s!7408)))))

(declare-fun setNonEmpty!50198 () Bool)

(declare-fun setElem!50198 () Context!13258)

(declare-fun setRes!50198 () Bool)

(declare-fun e!4250095 () Bool)

(declare-fun tp!1942030 () Bool)

(declare-fun inv!86941 (Context!13258) Bool)

(assert (=> setNonEmpty!50198 (= setRes!50198 (and tp!1942030 (inv!86941 setElem!50198) e!4250095))))

(declare-fun setRest!50198 () (InoxSet Context!13258))

(assert (=> setNonEmpty!50198 (= z1!570 ((_ map or) (store ((as const (Array Context!13258 Bool)) false) setElem!50198 true) setRest!50198))))

(declare-fun b!7069364 () Bool)

(declare-fun e!4250093 () Bool)

(declare-fun e!4250088 () Bool)

(assert (=> b!7069364 (= e!4250093 e!4250088)))

(declare-fun res!2886928 () Bool)

(assert (=> b!7069364 (=> res!2886928 e!4250088)))

(declare-fun lt!2543776 () (InoxSet Context!13258))

(declare-fun matchZipper!3173 ((InoxSet Context!13258) List!68427) Bool)

(assert (=> b!7069364 (= res!2886928 (matchZipper!3173 lt!2543776 (t!382210 s!7408)))))

(declare-fun lt!2543774 () List!68425)

(declare-datatypes ((Unit!161976 0))(
  ( (Unit!161977) )
))
(declare-fun lt!2543763 () Unit!161976)

(declare-fun lambda!424863 () Int)

(declare-fun ct2!306 () Context!13258)

(declare-fun lemmaConcatPreservesForall!944 (List!68425 List!68425 Int) Unit!161976)

(assert (=> b!7069364 (= lt!2543763 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun b!7069365 () Bool)

(declare-fun e!4250090 () Bool)

(declare-fun e!4250096 () Bool)

(assert (=> b!7069365 (= e!4250090 e!4250096)))

(declare-fun res!2886915 () Bool)

(assert (=> b!7069365 (=> res!2886915 e!4250096)))

(declare-fun lt!2543767 () (InoxSet Context!13258))

(declare-fun lt!2543773 () (InoxSet Context!13258))

(assert (=> b!7069365 (= res!2886915 (not (= lt!2543767 lt!2543773)))))

(declare-fun lt!2543754 () (InoxSet Context!13258))

(assert (=> b!7069365 (= lt!2543773 ((_ map or) lt!2543754 lt!2543776))))

(declare-fun lt!2543769 () Context!13258)

(declare-fun derivationStepZipperUp!2217 (Context!13258 C!35536) (InoxSet Context!13258))

(assert (=> b!7069365 (= lt!2543776 (derivationStepZipperUp!2217 lt!2543769 (h!74751 s!7408)))))

(declare-fun lt!2543748 () Context!13258)

(declare-fun derivationStepZipperDown!2267 (Regex!17633 Context!13258 C!35536) (InoxSet Context!13258))

(assert (=> b!7069365 (= lt!2543754 (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543748)) lt!2543769 (h!74751 s!7408)))))

(declare-fun ++!15750 (List!68425 List!68425) List!68425)

(assert (=> b!7069365 (= lt!2543769 (Context!13259 (++!15750 lt!2543774 (exprs!7129 ct2!306))))))

(declare-fun lt!2543743 () Unit!161976)

(assert (=> b!7069365 (= lt!2543743 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun lt!2543757 () Unit!161976)

(assert (=> b!7069365 (= lt!2543757 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun b!7069366 () Bool)

(declare-fun res!2886913 () Bool)

(assert (=> b!7069366 (=> res!2886913 e!4250093)))

(declare-fun lt!2543742 () Bool)

(assert (=> b!7069366 (= res!2886913 (not lt!2543742))))

(declare-fun e!4250098 () Bool)

(declare-fun e!4250087 () Bool)

(assert (=> b!7069367 (= e!4250098 e!4250087)))

(declare-fun res!2886929 () Bool)

(assert (=> b!7069367 (=> res!2886929 e!4250087)))

(declare-fun lt!2543750 () (InoxSet Context!13258))

(declare-fun derivationStepZipper!3083 ((InoxSet Context!13258) C!35536) (InoxSet Context!13258))

(assert (=> b!7069367 (= res!2886929 (not (= (derivationStepZipper!3083 lt!2543750 (h!74751 s!7408)) lt!2543767)))))

(declare-fun lambda!424864 () Int)

(declare-fun lt!2543749 () Context!13258)

(declare-fun flatMap!2559 ((InoxSet Context!13258) Int) (InoxSet Context!13258))

(assert (=> b!7069367 (= (flatMap!2559 lt!2543750 lambda!424864) (derivationStepZipperUp!2217 lt!2543749 (h!74751 s!7408)))))

(declare-fun lt!2543772 () Unit!161976)

(declare-fun lemmaFlatMapOnSingletonSet!2068 ((InoxSet Context!13258) Context!13258 Int) Unit!161976)

(assert (=> b!7069367 (= lt!2543772 (lemmaFlatMapOnSingletonSet!2068 lt!2543750 lt!2543749 lambda!424864))))

(assert (=> b!7069367 (= lt!2543767 (derivationStepZipperUp!2217 lt!2543749 (h!74751 s!7408)))))

(declare-fun lt!2543764 () Unit!161976)

(assert (=> b!7069367 (= lt!2543764 (lemmaConcatPreservesForall!944 (exprs!7129 lt!2543748) (exprs!7129 ct2!306) lambda!424863))))

(declare-fun b!7069368 () Bool)

(declare-fun e!4250085 () Bool)

(assert (=> b!7069368 (= e!4250088 e!4250085)))

(declare-fun res!2886925 () Bool)

(assert (=> b!7069368 (=> res!2886925 e!4250085)))

(declare-fun lt!2543766 () Bool)

(assert (=> b!7069368 (= res!2886925 (not lt!2543766))))

(declare-fun lt!2543751 () Unit!161976)

(assert (=> b!7069368 (= lt!2543751 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun lt!2543775 () Unit!161976)

(assert (=> b!7069368 (= lt!2543775 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun e!4250091 () Bool)

(declare-fun e!4250099 () Bool)

(assert (=> b!7069369 (= e!4250091 e!4250099)))

(declare-fun res!2886919 () Bool)

(assert (=> b!7069369 (=> res!2886919 e!4250099)))

(declare-fun lt!2543759 () Context!13258)

(assert (=> b!7069369 (= res!2886919 (or (not (= lt!2543749 lt!2543759)) (not (select z1!570 lt!2543748))))))

(assert (=> b!7069369 (= lt!2543749 (Context!13259 (++!15750 (exprs!7129 lt!2543748) (exprs!7129 ct2!306))))))

(declare-fun lt!2543778 () Unit!161976)

(assert (=> b!7069369 (= lt!2543778 (lemmaConcatPreservesForall!944 (exprs!7129 lt!2543748) (exprs!7129 ct2!306) lambda!424863))))

(declare-fun lambda!424862 () Int)

(declare-fun mapPost2!462 ((InoxSet Context!13258) Int Context!13258) Context!13258)

(assert (=> b!7069369 (= lt!2543748 (mapPost2!462 z1!570 lambda!424862 lt!2543759))))

(declare-fun e!4250084 () Bool)

(assert (=> b!7069370 (= e!4250084 (not e!4250091))))

(declare-fun res!2886922 () Bool)

(assert (=> b!7069370 (=> res!2886922 e!4250091)))

(declare-fun lt!2543740 () (InoxSet Context!13258))

(assert (=> b!7069370 (= res!2886922 (not (matchZipper!3173 lt!2543740 s!7408)))))

(assert (=> b!7069370 (= lt!2543740 (store ((as const (Array Context!13258 Bool)) false) lt!2543759 true))))

(declare-fun lt!2543752 () (InoxSet Context!13258))

(declare-fun lambda!424861 () Int)

(declare-fun getWitness!1727 ((InoxSet Context!13258) Int) Context!13258)

(assert (=> b!7069370 (= lt!2543759 (getWitness!1727 lt!2543752 lambda!424861))))

(declare-fun lt!2543777 () List!68426)

(declare-fun exists!3670 (List!68426 Int) Bool)

(assert (=> b!7069370 (exists!3670 lt!2543777 lambda!424861)))

(declare-fun lt!2543756 () Unit!161976)

(declare-fun lemmaZipperMatchesExistsMatchingContext!554 (List!68426 List!68427) Unit!161976)

(assert (=> b!7069370 (= lt!2543756 (lemmaZipperMatchesExistsMatchingContext!554 lt!2543777 s!7408))))

(assert (=> b!7069370 (= lt!2543777 (toList!10974 lt!2543752))))

(declare-fun b!7069371 () Bool)

(assert (=> b!7069371 (= e!4250085 e!4250092)))

(declare-fun res!2886924 () Bool)

(assert (=> b!7069371 (=> res!2886924 e!4250092)))

(declare-fun lt!2543739 () (InoxSet Context!13258))

(assert (=> b!7069371 (= res!2886924 (not (matchZipper!3173 lt!2543739 (t!382210 s!7408))))))

(declare-fun lt!2543760 () Unit!161976)

(assert (=> b!7069371 (= lt!2543760 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(assert (=> b!7069371 (= lt!2543754 lt!2543739)))

(declare-fun appendTo!754 ((InoxSet Context!13258) Context!13258) (InoxSet Context!13258))

(assert (=> b!7069371 (= lt!2543739 (appendTo!754 lt!2543771 ct2!306))))

(declare-fun lt!2543745 () Context!13258)

(assert (=> b!7069371 (= lt!2543771 (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543748)) lt!2543745 (h!74751 s!7408)))))

(declare-fun lt!2543761 () Unit!161976)

(assert (=> b!7069371 (= lt!2543761 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun lt!2543758 () Unit!161976)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!104 (Context!13258 Regex!17633 C!35536 Context!13258) Unit!161976)

(assert (=> b!7069371 (= lt!2543758 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!104 lt!2543745 (h!74749 (exprs!7129 lt!2543748)) (h!74751 s!7408) ct2!306))))

(declare-fun setIsEmpty!50198 () Bool)

(assert (=> setIsEmpty!50198 setRes!50198))

(declare-fun b!7069372 () Bool)

(declare-fun e!4250094 () Bool)

(declare-fun tp_is_empty!44491 () Bool)

(declare-fun tp!1942031 () Bool)

(assert (=> b!7069372 (= e!4250094 (and tp_is_empty!44491 tp!1942031))))

(declare-fun res!2886926 () Bool)

(assert (=> start!686564 (=> (not res!2886926) (not e!4250084))))

(assert (=> start!686564 (= res!2886926 (matchZipper!3173 lt!2543752 s!7408))))

(assert (=> start!686564 (= lt!2543752 (appendTo!754 z1!570 ct2!306))))

(assert (=> start!686564 e!4250084))

(declare-fun condSetEmpty!50198 () Bool)

(assert (=> start!686564 (= condSetEmpty!50198 (= z1!570 ((as const (Array Context!13258 Bool)) false)))))

(assert (=> start!686564 setRes!50198))

(declare-fun e!4250089 () Bool)

(assert (=> start!686564 (and (inv!86941 ct2!306) e!4250089)))

(assert (=> start!686564 e!4250094))

(declare-fun b!7069373 () Bool)

(assert (=> b!7069373 (= e!4250096 e!4250093)))

(declare-fun res!2886917 () Bool)

(assert (=> b!7069373 (=> res!2886917 e!4250093)))

(declare-fun e!4250097 () Bool)

(assert (=> b!7069373 (= res!2886917 e!4250097)))

(declare-fun res!2886914 () Bool)

(assert (=> b!7069373 (=> (not res!2886914) (not e!4250097))))

(assert (=> b!7069373 (= res!2886914 (not (= lt!2543742 lt!2543766)))))

(assert (=> b!7069373 (= lt!2543742 (matchZipper!3173 lt!2543767 (t!382210 s!7408)))))

(declare-fun lt!2543768 () Unit!161976)

(assert (=> b!7069373 (= lt!2543768 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun e!4250086 () Bool)

(assert (=> b!7069373 (= (matchZipper!3173 lt!2543773 (t!382210 s!7408)) e!4250086)))

(declare-fun res!2886912 () Bool)

(assert (=> b!7069373 (=> res!2886912 e!4250086)))

(assert (=> b!7069373 (= res!2886912 lt!2543766)))

(assert (=> b!7069373 (= lt!2543766 (matchZipper!3173 lt!2543754 (t!382210 s!7408)))))

(declare-fun lt!2543747 () Unit!161976)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1646 ((InoxSet Context!13258) (InoxSet Context!13258) List!68427) Unit!161976)

(assert (=> b!7069373 (= lt!2543747 (lemmaZipperConcatMatchesSameAsBothZippers!1646 lt!2543754 lt!2543776 (t!382210 s!7408)))))

(declare-fun lt!2543753 () Unit!161976)

(assert (=> b!7069373 (= lt!2543753 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun lt!2543755 () Unit!161976)

(assert (=> b!7069373 (= lt!2543755 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun b!7069374 () Bool)

(declare-fun tp!1942029 () Bool)

(assert (=> b!7069374 (= e!4250095 tp!1942029)))

(declare-fun b!7069375 () Bool)

(declare-fun res!2886918 () Bool)

(assert (=> b!7069375 (=> res!2886918 e!4250087)))

(get-info :version)

(assert (=> b!7069375 (= res!2886918 (not ((_ is Cons!68301) (exprs!7129 lt!2543748))))))

(declare-fun b!7069376 () Bool)

(assert (=> b!7069376 (= e!4250097 (not (matchZipper!3173 lt!2543776 (t!382210 s!7408))))))

(declare-fun lt!2543770 () Unit!161976)

(assert (=> b!7069376 (= lt!2543770 (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(declare-fun b!7069377 () Bool)

(assert (=> b!7069377 (= e!4250086 (matchZipper!3173 lt!2543776 (t!382210 s!7408)))))

(declare-fun b!7069378 () Bool)

(declare-fun res!2886920 () Bool)

(assert (=> b!7069378 (=> res!2886920 e!4250091)))

(assert (=> b!7069378 (= res!2886920 (not (select lt!2543752 lt!2543759)))))

(declare-fun b!7069379 () Bool)

(declare-fun res!2886923 () Bool)

(assert (=> b!7069379 (=> (not res!2886923) (not e!4250084))))

(assert (=> b!7069379 (= res!2886923 ((_ is Cons!68303) s!7408))))

(declare-fun b!7069380 () Bool)

(assert (=> b!7069380 (= e!4250099 e!4250098)))

(declare-fun res!2886916 () Bool)

(assert (=> b!7069380 (=> res!2886916 e!4250098)))

(assert (=> b!7069380 (= res!2886916 (not (= lt!2543750 lt!2543740)))))

(assert (=> b!7069380 (= lt!2543750 (store ((as const (Array Context!13258 Bool)) false) lt!2543749 true))))

(declare-fun lt!2543746 () Unit!161976)

(assert (=> b!7069380 (= lt!2543746 (lemmaConcatPreservesForall!944 (exprs!7129 lt!2543748) (exprs!7129 ct2!306) lambda!424863))))

(declare-fun b!7069381 () Bool)

(declare-fun res!2886921 () Bool)

(assert (=> b!7069381 (=> res!2886921 e!4250087)))

(declare-fun isEmpty!39858 (List!68425) Bool)

(assert (=> b!7069381 (= res!2886921 (isEmpty!39858 (exprs!7129 lt!2543748)))))

(declare-fun b!7069382 () Bool)

(assert (=> b!7069382 (= e!4250087 e!4250090)))

(declare-fun res!2886927 () Bool)

(assert (=> b!7069382 (=> res!2886927 e!4250090)))

(declare-fun nullable!7316 (Regex!17633) Bool)

(assert (=> b!7069382 (= res!2886927 (not (nullable!7316 (h!74749 (exprs!7129 lt!2543748)))))))

(assert (=> b!7069382 (= lt!2543745 (Context!13259 lt!2543774))))

(declare-fun tail!13808 (List!68425) List!68425)

(assert (=> b!7069382 (= lt!2543774 (tail!13808 (exprs!7129 lt!2543748)))))

(declare-fun b!7069383 () Bool)

(declare-fun tp!1942028 () Bool)

(assert (=> b!7069383 (= e!4250089 tp!1942028)))

(assert (= (and start!686564 res!2886926) b!7069379))

(assert (= (and b!7069379 res!2886923) b!7069370))

(assert (= (and b!7069370 (not res!2886922)) b!7069378))

(assert (= (and b!7069378 (not res!2886920)) b!7069369))

(assert (= (and b!7069369 (not res!2886919)) b!7069380))

(assert (= (and b!7069380 (not res!2886916)) b!7069367))

(assert (= (and b!7069367 (not res!2886929)) b!7069375))

(assert (= (and b!7069375 (not res!2886918)) b!7069381))

(assert (= (and b!7069381 (not res!2886921)) b!7069382))

(assert (= (and b!7069382 (not res!2886927)) b!7069365))

(assert (= (and b!7069365 (not res!2886915)) b!7069373))

(assert (= (and b!7069373 (not res!2886912)) b!7069377))

(assert (= (and b!7069373 res!2886914) b!7069376))

(assert (= (and b!7069373 (not res!2886917)) b!7069366))

(assert (= (and b!7069366 (not res!2886913)) b!7069364))

(assert (= (and b!7069364 (not res!2886928)) b!7069368))

(assert (= (and b!7069368 (not res!2886925)) b!7069371))

(assert (= (and b!7069371 (not res!2886924)) b!7069363))

(assert (= (and start!686564 condSetEmpty!50198) setIsEmpty!50198))

(assert (= (and start!686564 (not condSetEmpty!50198)) setNonEmpty!50198))

(assert (= setNonEmpty!50198 b!7069374))

(assert (= start!686564 b!7069383))

(assert (= (and start!686564 ((_ is Cons!68303) s!7408)) b!7069372))

(declare-fun m!7794078 () Bool)

(assert (=> b!7069364 m!7794078))

(declare-fun m!7794080 () Bool)

(assert (=> b!7069364 m!7794080))

(declare-fun m!7794082 () Bool)

(assert (=> b!7069367 m!7794082))

(declare-fun m!7794084 () Bool)

(assert (=> b!7069367 m!7794084))

(declare-fun m!7794086 () Bool)

(assert (=> b!7069367 m!7794086))

(declare-fun m!7794088 () Bool)

(assert (=> b!7069367 m!7794088))

(declare-fun m!7794090 () Bool)

(assert (=> b!7069367 m!7794090))

(declare-fun m!7794092 () Bool)

(assert (=> b!7069370 m!7794092))

(declare-fun m!7794094 () Bool)

(assert (=> b!7069370 m!7794094))

(declare-fun m!7794096 () Bool)

(assert (=> b!7069370 m!7794096))

(declare-fun m!7794098 () Bool)

(assert (=> b!7069370 m!7794098))

(declare-fun m!7794100 () Bool)

(assert (=> b!7069370 m!7794100))

(declare-fun m!7794102 () Bool)

(assert (=> b!7069370 m!7794102))

(declare-fun m!7794104 () Bool)

(assert (=> b!7069369 m!7794104))

(declare-fun m!7794106 () Bool)

(assert (=> b!7069369 m!7794106))

(assert (=> b!7069369 m!7794086))

(declare-fun m!7794108 () Bool)

(assert (=> b!7069369 m!7794108))

(declare-fun m!7794110 () Bool)

(assert (=> b!7069378 m!7794110))

(declare-fun m!7794112 () Bool)

(assert (=> b!7069382 m!7794112))

(declare-fun m!7794114 () Bool)

(assert (=> b!7069382 m!7794114))

(declare-fun m!7794116 () Bool)

(assert (=> setNonEmpty!50198 m!7794116))

(assert (=> b!7069377 m!7794078))

(declare-fun m!7794118 () Bool)

(assert (=> start!686564 m!7794118))

(declare-fun m!7794120 () Bool)

(assert (=> start!686564 m!7794120))

(declare-fun m!7794122 () Bool)

(assert (=> start!686564 m!7794122))

(assert (=> b!7069368 m!7794080))

(assert (=> b!7069368 m!7794080))

(declare-fun m!7794124 () Bool)

(assert (=> b!7069363 m!7794124))

(declare-fun m!7794126 () Bool)

(assert (=> b!7069363 m!7794126))

(assert (=> b!7069363 m!7794124))

(declare-fun m!7794128 () Bool)

(assert (=> b!7069363 m!7794128))

(assert (=> b!7069363 m!7794126))

(declare-fun m!7794130 () Bool)

(assert (=> b!7069363 m!7794130))

(declare-fun m!7794132 () Bool)

(assert (=> b!7069363 m!7794132))

(declare-fun m!7794134 () Bool)

(assert (=> b!7069363 m!7794134))

(assert (=> b!7069373 m!7794080))

(declare-fun m!7794136 () Bool)

(assert (=> b!7069373 m!7794136))

(declare-fun m!7794138 () Bool)

(assert (=> b!7069373 m!7794138))

(declare-fun m!7794140 () Bool)

(assert (=> b!7069373 m!7794140))

(assert (=> b!7069373 m!7794080))

(assert (=> b!7069373 m!7794080))

(declare-fun m!7794142 () Bool)

(assert (=> b!7069373 m!7794142))

(assert (=> b!7069365 m!7794080))

(assert (=> b!7069365 m!7794080))

(declare-fun m!7794144 () Bool)

(assert (=> b!7069365 m!7794144))

(declare-fun m!7794146 () Bool)

(assert (=> b!7069365 m!7794146))

(declare-fun m!7794148 () Bool)

(assert (=> b!7069365 m!7794148))

(declare-fun m!7794150 () Bool)

(assert (=> b!7069380 m!7794150))

(assert (=> b!7069380 m!7794086))

(assert (=> b!7069376 m!7794078))

(assert (=> b!7069376 m!7794080))

(declare-fun m!7794152 () Bool)

(assert (=> b!7069371 m!7794152))

(assert (=> b!7069371 m!7794080))

(declare-fun m!7794154 () Bool)

(assert (=> b!7069371 m!7794154))

(declare-fun m!7794156 () Bool)

(assert (=> b!7069371 m!7794156))

(declare-fun m!7794158 () Bool)

(assert (=> b!7069371 m!7794158))

(assert (=> b!7069371 m!7794080))

(declare-fun m!7794160 () Bool)

(assert (=> b!7069381 m!7794160))

(check-sat (not b!7069368) (not b!7069376) (not b!7069365) tp_is_empty!44491 (not b!7069373) (not setNonEmpty!50198) (not start!686564) (not b!7069364) (not b!7069381) (not b!7069374) (not b!7069363) (not b!7069372) (not b!7069383) (not b!7069369) (not b!7069377) (not b!7069380) (not b!7069382) (not b!7069371) (not b!7069367) (not b!7069370))
(check-sat)
(get-model)

(declare-fun d!2210786 () Bool)

(declare-fun c!1318562 () Bool)

(declare-fun isEmpty!39860 (List!68427) Bool)

(assert (=> d!2210786 (= c!1318562 (isEmpty!39860 (t!382210 s!7408)))))

(declare-fun e!4250187 () Bool)

(assert (=> d!2210786 (= (matchZipper!3173 lt!2543776 (t!382210 s!7408)) e!4250187)))

(declare-fun b!7069543 () Bool)

(declare-fun nullableZipper!2692 ((InoxSet Context!13258)) Bool)

(assert (=> b!7069543 (= e!4250187 (nullableZipper!2692 lt!2543776))))

(declare-fun b!7069544 () Bool)

(declare-fun head!14400 (List!68427) C!35536)

(declare-fun tail!13810 (List!68427) List!68427)

(assert (=> b!7069544 (= e!4250187 (matchZipper!3173 (derivationStepZipper!3083 lt!2543776 (head!14400 (t!382210 s!7408))) (tail!13810 (t!382210 s!7408))))))

(assert (= (and d!2210786 c!1318562) b!7069543))

(assert (= (and d!2210786 (not c!1318562)) b!7069544))

(declare-fun m!7794382 () Bool)

(assert (=> d!2210786 m!7794382))

(declare-fun m!7794384 () Bool)

(assert (=> b!7069543 m!7794384))

(declare-fun m!7794386 () Bool)

(assert (=> b!7069544 m!7794386))

(assert (=> b!7069544 m!7794386))

(declare-fun m!7794388 () Bool)

(assert (=> b!7069544 m!7794388))

(declare-fun m!7794390 () Bool)

(assert (=> b!7069544 m!7794390))

(assert (=> b!7069544 m!7794388))

(assert (=> b!7069544 m!7794390))

(declare-fun m!7794392 () Bool)

(assert (=> b!7069544 m!7794392))

(assert (=> b!7069376 d!2210786))

(declare-fun d!2210794 () Bool)

(declare-fun forall!16582 (List!68425 Int) Bool)

(assert (=> d!2210794 (forall!16582 (++!15750 lt!2543774 (exprs!7129 ct2!306)) lambda!424863)))

(declare-fun lt!2543826 () Unit!161976)

(declare-fun choose!54150 (List!68425 List!68425 Int) Unit!161976)

(assert (=> d!2210794 (= lt!2543826 (choose!54150 lt!2543774 (exprs!7129 ct2!306) lambda!424863))))

(assert (=> d!2210794 (forall!16582 lt!2543774 lambda!424863)))

(assert (=> d!2210794 (= (lemmaConcatPreservesForall!944 lt!2543774 (exprs!7129 ct2!306) lambda!424863) lt!2543826)))

(declare-fun bs!1880398 () Bool)

(assert (= bs!1880398 d!2210794))

(assert (=> bs!1880398 m!7794146))

(assert (=> bs!1880398 m!7794146))

(declare-fun m!7794394 () Bool)

(assert (=> bs!1880398 m!7794394))

(declare-fun m!7794396 () Bool)

(assert (=> bs!1880398 m!7794396))

(declare-fun m!7794398 () Bool)

(assert (=> bs!1880398 m!7794398))

(assert (=> b!7069376 d!2210794))

(assert (=> b!7069377 d!2210786))

(declare-fun d!2210796 () Bool)

(assert (=> d!2210796 (forall!16582 (++!15750 (exprs!7129 lt!2543748) (exprs!7129 ct2!306)) lambda!424863)))

(declare-fun lt!2543827 () Unit!161976)

(assert (=> d!2210796 (= lt!2543827 (choose!54150 (exprs!7129 lt!2543748) (exprs!7129 ct2!306) lambda!424863))))

(assert (=> d!2210796 (forall!16582 (exprs!7129 lt!2543748) lambda!424863)))

(assert (=> d!2210796 (= (lemmaConcatPreservesForall!944 (exprs!7129 lt!2543748) (exprs!7129 ct2!306) lambda!424863) lt!2543827)))

(declare-fun bs!1880399 () Bool)

(assert (= bs!1880399 d!2210796))

(assert (=> bs!1880399 m!7794106))

(assert (=> bs!1880399 m!7794106))

(declare-fun m!7794400 () Bool)

(assert (=> bs!1880399 m!7794400))

(declare-fun m!7794402 () Bool)

(assert (=> bs!1880399 m!7794402))

(declare-fun m!7794404 () Bool)

(assert (=> bs!1880399 m!7794404))

(assert (=> b!7069367 d!2210796))

(declare-fun d!2210798 () Bool)

(declare-fun choose!54151 ((InoxSet Context!13258) Int) (InoxSet Context!13258))

(assert (=> d!2210798 (= (flatMap!2559 lt!2543750 lambda!424864) (choose!54151 lt!2543750 lambda!424864))))

(declare-fun bs!1880400 () Bool)

(assert (= bs!1880400 d!2210798))

(declare-fun m!7794406 () Bool)

(assert (=> bs!1880400 m!7794406))

(assert (=> b!7069367 d!2210798))

(declare-fun b!7069555 () Bool)

(declare-fun e!4250194 () (InoxSet Context!13258))

(declare-fun e!4250196 () (InoxSet Context!13258))

(assert (=> b!7069555 (= e!4250194 e!4250196)))

(declare-fun c!1318568 () Bool)

(assert (=> b!7069555 (= c!1318568 ((_ is Cons!68301) (exprs!7129 lt!2543749)))))

(declare-fun b!7069556 () Bool)

(declare-fun call!642527 () (InoxSet Context!13258))

(assert (=> b!7069556 (= e!4250194 ((_ map or) call!642527 (derivationStepZipperUp!2217 (Context!13259 (t!382208 (exprs!7129 lt!2543749))) (h!74751 s!7408))))))

(declare-fun d!2210800 () Bool)

(declare-fun c!1318567 () Bool)

(declare-fun e!4250195 () Bool)

(assert (=> d!2210800 (= c!1318567 e!4250195)))

(declare-fun res!2886964 () Bool)

(assert (=> d!2210800 (=> (not res!2886964) (not e!4250195))))

(assert (=> d!2210800 (= res!2886964 ((_ is Cons!68301) (exprs!7129 lt!2543749)))))

(assert (=> d!2210800 (= (derivationStepZipperUp!2217 lt!2543749 (h!74751 s!7408)) e!4250194)))

(declare-fun bm!642522 () Bool)

(assert (=> bm!642522 (= call!642527 (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543749)) (Context!13259 (t!382208 (exprs!7129 lt!2543749))) (h!74751 s!7408)))))

(declare-fun b!7069557 () Bool)

(assert (=> b!7069557 (= e!4250196 call!642527)))

(declare-fun b!7069558 () Bool)

(assert (=> b!7069558 (= e!4250195 (nullable!7316 (h!74749 (exprs!7129 lt!2543749))))))

(declare-fun b!7069559 () Bool)

(assert (=> b!7069559 (= e!4250196 ((as const (Array Context!13258 Bool)) false))))

(assert (= (and d!2210800 res!2886964) b!7069558))

(assert (= (and d!2210800 c!1318567) b!7069556))

(assert (= (and d!2210800 (not c!1318567)) b!7069555))

(assert (= (and b!7069555 c!1318568) b!7069557))

(assert (= (and b!7069555 (not c!1318568)) b!7069559))

(assert (= (or b!7069556 b!7069557) bm!642522))

(declare-fun m!7794408 () Bool)

(assert (=> b!7069556 m!7794408))

(declare-fun m!7794410 () Bool)

(assert (=> bm!642522 m!7794410))

(declare-fun m!7794412 () Bool)

(assert (=> b!7069558 m!7794412))

(assert (=> b!7069367 d!2210800))

(declare-fun d!2210802 () Bool)

(declare-fun dynLambda!27771 (Int Context!13258) (InoxSet Context!13258))

(assert (=> d!2210802 (= (flatMap!2559 lt!2543750 lambda!424864) (dynLambda!27771 lambda!424864 lt!2543749))))

(declare-fun lt!2543830 () Unit!161976)

(declare-fun choose!54152 ((InoxSet Context!13258) Context!13258 Int) Unit!161976)

(assert (=> d!2210802 (= lt!2543830 (choose!54152 lt!2543750 lt!2543749 lambda!424864))))

(assert (=> d!2210802 (= lt!2543750 (store ((as const (Array Context!13258 Bool)) false) lt!2543749 true))))

(assert (=> d!2210802 (= (lemmaFlatMapOnSingletonSet!2068 lt!2543750 lt!2543749 lambda!424864) lt!2543830)))

(declare-fun b_lambda!269883 () Bool)

(assert (=> (not b_lambda!269883) (not d!2210802)))

(declare-fun bs!1880401 () Bool)

(assert (= bs!1880401 d!2210802))

(assert (=> bs!1880401 m!7794088))

(declare-fun m!7794414 () Bool)

(assert (=> bs!1880401 m!7794414))

(declare-fun m!7794416 () Bool)

(assert (=> bs!1880401 m!7794416))

(assert (=> bs!1880401 m!7794150))

(assert (=> b!7069367 d!2210802))

(declare-fun bs!1880402 () Bool)

(declare-fun d!2210804 () Bool)

(assert (= bs!1880402 (and d!2210804 b!7069367)))

(declare-fun lambda!424889 () Int)

(assert (=> bs!1880402 (= lambda!424889 lambda!424864)))

(assert (=> d!2210804 true))

(assert (=> d!2210804 (= (derivationStepZipper!3083 lt!2543750 (h!74751 s!7408)) (flatMap!2559 lt!2543750 lambda!424889))))

(declare-fun bs!1880403 () Bool)

(assert (= bs!1880403 d!2210804))

(declare-fun m!7794418 () Bool)

(assert (=> bs!1880403 m!7794418))

(assert (=> b!7069367 d!2210804))

(assert (=> b!7069368 d!2210794))

(declare-fun d!2210806 () Bool)

(declare-fun c!1318571 () Bool)

(assert (=> d!2210806 (= c!1318571 (isEmpty!39860 s!7408))))

(declare-fun e!4250197 () Bool)

(assert (=> d!2210806 (= (matchZipper!3173 lt!2543752 s!7408) e!4250197)))

(declare-fun b!7069562 () Bool)

(assert (=> b!7069562 (= e!4250197 (nullableZipper!2692 lt!2543752))))

(declare-fun b!7069563 () Bool)

(assert (=> b!7069563 (= e!4250197 (matchZipper!3173 (derivationStepZipper!3083 lt!2543752 (head!14400 s!7408)) (tail!13810 s!7408)))))

(assert (= (and d!2210806 c!1318571) b!7069562))

(assert (= (and d!2210806 (not c!1318571)) b!7069563))

(declare-fun m!7794420 () Bool)

(assert (=> d!2210806 m!7794420))

(declare-fun m!7794422 () Bool)

(assert (=> b!7069562 m!7794422))

(declare-fun m!7794424 () Bool)

(assert (=> b!7069563 m!7794424))

(assert (=> b!7069563 m!7794424))

(declare-fun m!7794426 () Bool)

(assert (=> b!7069563 m!7794426))

(declare-fun m!7794428 () Bool)

(assert (=> b!7069563 m!7794428))

(assert (=> b!7069563 m!7794426))

(assert (=> b!7069563 m!7794428))

(declare-fun m!7794430 () Bool)

(assert (=> b!7069563 m!7794430))

(assert (=> start!686564 d!2210806))

(declare-fun bs!1880404 () Bool)

(declare-fun d!2210808 () Bool)

(assert (= bs!1880404 (and d!2210808 b!7069369)))

(declare-fun lambda!424894 () Int)

(assert (=> bs!1880404 (= lambda!424894 lambda!424862)))

(assert (=> d!2210808 true))

(declare-fun map!15977 ((InoxSet Context!13258) Int) (InoxSet Context!13258))

(assert (=> d!2210808 (= (appendTo!754 z1!570 ct2!306) (map!15977 z1!570 lambda!424894))))

(declare-fun bs!1880405 () Bool)

(assert (= bs!1880405 d!2210808))

(declare-fun m!7794432 () Bool)

(assert (=> bs!1880405 m!7794432))

(assert (=> start!686564 d!2210808))

(declare-fun bs!1880406 () Bool)

(declare-fun d!2210810 () Bool)

(assert (= bs!1880406 (and d!2210810 b!7069369)))

(declare-fun lambda!424897 () Int)

(assert (=> bs!1880406 (= lambda!424897 lambda!424863)))

(assert (=> d!2210810 (= (inv!86941 ct2!306) (forall!16582 (exprs!7129 ct2!306) lambda!424897))))

(declare-fun bs!1880407 () Bool)

(assert (= bs!1880407 d!2210810))

(declare-fun m!7794434 () Bool)

(assert (=> bs!1880407 m!7794434))

(assert (=> start!686564 d!2210810))

(declare-fun b!7069573 () Bool)

(declare-fun e!4250203 () List!68425)

(assert (=> b!7069573 (= e!4250203 (Cons!68301 (h!74749 (exprs!7129 lt!2543748)) (++!15750 (t!382208 (exprs!7129 lt!2543748)) (exprs!7129 ct2!306))))))

(declare-fun b!7069574 () Bool)

(declare-fun res!2886969 () Bool)

(declare-fun e!4250202 () Bool)

(assert (=> b!7069574 (=> (not res!2886969) (not e!4250202))))

(declare-fun lt!2543835 () List!68425)

(declare-fun size!41201 (List!68425) Int)

(assert (=> b!7069574 (= res!2886969 (= (size!41201 lt!2543835) (+ (size!41201 (exprs!7129 lt!2543748)) (size!41201 (exprs!7129 ct2!306)))))))

(declare-fun b!7069575 () Bool)

(assert (=> b!7069575 (= e!4250202 (or (not (= (exprs!7129 ct2!306) Nil!68301)) (= lt!2543835 (exprs!7129 lt!2543748))))))

(declare-fun b!7069572 () Bool)

(assert (=> b!7069572 (= e!4250203 (exprs!7129 ct2!306))))

(declare-fun d!2210812 () Bool)

(assert (=> d!2210812 e!4250202))

(declare-fun res!2886970 () Bool)

(assert (=> d!2210812 (=> (not res!2886970) (not e!4250202))))

(declare-fun content!13771 (List!68425) (InoxSet Regex!17633))

(assert (=> d!2210812 (= res!2886970 (= (content!13771 lt!2543835) ((_ map or) (content!13771 (exprs!7129 lt!2543748)) (content!13771 (exprs!7129 ct2!306)))))))

(assert (=> d!2210812 (= lt!2543835 e!4250203)))

(declare-fun c!1318575 () Bool)

(assert (=> d!2210812 (= c!1318575 ((_ is Nil!68301) (exprs!7129 lt!2543748)))))

(assert (=> d!2210812 (= (++!15750 (exprs!7129 lt!2543748) (exprs!7129 ct2!306)) lt!2543835)))

(assert (= (and d!2210812 c!1318575) b!7069572))

(assert (= (and d!2210812 (not c!1318575)) b!7069573))

(assert (= (and d!2210812 res!2886970) b!7069574))

(assert (= (and b!7069574 res!2886969) b!7069575))

(declare-fun m!7794436 () Bool)

(assert (=> b!7069573 m!7794436))

(declare-fun m!7794438 () Bool)

(assert (=> b!7069574 m!7794438))

(declare-fun m!7794440 () Bool)

(assert (=> b!7069574 m!7794440))

(declare-fun m!7794442 () Bool)

(assert (=> b!7069574 m!7794442))

(declare-fun m!7794444 () Bool)

(assert (=> d!2210812 m!7794444))

(declare-fun m!7794446 () Bool)

(assert (=> d!2210812 m!7794446))

(declare-fun m!7794448 () Bool)

(assert (=> d!2210812 m!7794448))

(assert (=> b!7069369 d!2210812))

(assert (=> b!7069369 d!2210796))

(declare-fun d!2210814 () Bool)

(declare-fun e!4250206 () Bool)

(assert (=> d!2210814 e!4250206))

(declare-fun res!2886973 () Bool)

(assert (=> d!2210814 (=> (not res!2886973) (not e!4250206))))

(declare-fun lt!2543838 () Context!13258)

(declare-fun dynLambda!27772 (Int Context!13258) Context!13258)

(assert (=> d!2210814 (= res!2886973 (= lt!2543759 (dynLambda!27772 lambda!424862 lt!2543838)))))

(declare-fun choose!54153 ((InoxSet Context!13258) Int Context!13258) Context!13258)

(assert (=> d!2210814 (= lt!2543838 (choose!54153 z1!570 lambda!424862 lt!2543759))))

(assert (=> d!2210814 (select (map!15977 z1!570 lambda!424862) lt!2543759)))

(assert (=> d!2210814 (= (mapPost2!462 z1!570 lambda!424862 lt!2543759) lt!2543838)))

(declare-fun b!7069579 () Bool)

(assert (=> b!7069579 (= e!4250206 (select z1!570 lt!2543838))))

(assert (= (and d!2210814 res!2886973) b!7069579))

(declare-fun b_lambda!269885 () Bool)

(assert (=> (not b_lambda!269885) (not d!2210814)))

(declare-fun m!7794450 () Bool)

(assert (=> d!2210814 m!7794450))

(declare-fun m!7794452 () Bool)

(assert (=> d!2210814 m!7794452))

(declare-fun m!7794454 () Bool)

(assert (=> d!2210814 m!7794454))

(declare-fun m!7794456 () Bool)

(assert (=> d!2210814 m!7794456))

(declare-fun m!7794458 () Bool)

(assert (=> b!7069579 m!7794458))

(assert (=> b!7069369 d!2210814))

(declare-fun bs!1880408 () Bool)

(declare-fun d!2210816 () Bool)

(assert (= bs!1880408 (and d!2210816 b!7069370)))

(declare-fun lambda!424900 () Int)

(assert (=> bs!1880408 (= lambda!424900 lambda!424861)))

(assert (=> d!2210816 true))

(assert (=> d!2210816 (exists!3670 lt!2543777 lambda!424900)))

(declare-fun lt!2543841 () Unit!161976)

(declare-fun choose!54154 (List!68426 List!68427) Unit!161976)

(assert (=> d!2210816 (= lt!2543841 (choose!54154 lt!2543777 s!7408))))

(declare-fun content!13772 (List!68426) (InoxSet Context!13258))

(assert (=> d!2210816 (matchZipper!3173 (content!13772 lt!2543777) s!7408)))

(assert (=> d!2210816 (= (lemmaZipperMatchesExistsMatchingContext!554 lt!2543777 s!7408) lt!2543841)))

(declare-fun bs!1880409 () Bool)

(assert (= bs!1880409 d!2210816))

(declare-fun m!7794460 () Bool)

(assert (=> bs!1880409 m!7794460))

(declare-fun m!7794462 () Bool)

(assert (=> bs!1880409 m!7794462))

(declare-fun m!7794464 () Bool)

(assert (=> bs!1880409 m!7794464))

(assert (=> bs!1880409 m!7794464))

(declare-fun m!7794466 () Bool)

(assert (=> bs!1880409 m!7794466))

(assert (=> b!7069370 d!2210816))

(declare-fun bs!1880410 () Bool)

(declare-fun d!2210818 () Bool)

(assert (= bs!1880410 (and d!2210818 b!7069370)))

(declare-fun lambda!424903 () Int)

(assert (=> bs!1880410 (not (= lambda!424903 lambda!424861))))

(declare-fun bs!1880411 () Bool)

(assert (= bs!1880411 (and d!2210818 d!2210816)))

(assert (=> bs!1880411 (not (= lambda!424903 lambda!424900))))

(assert (=> d!2210818 true))

(declare-fun order!28393 () Int)

(declare-fun dynLambda!27773 (Int Int) Int)

(assert (=> d!2210818 (< (dynLambda!27773 order!28393 lambda!424861) (dynLambda!27773 order!28393 lambda!424903))))

(declare-fun forall!16584 (List!68426 Int) Bool)

(assert (=> d!2210818 (= (exists!3670 lt!2543777 lambda!424861) (not (forall!16584 lt!2543777 lambda!424903)))))

(declare-fun bs!1880412 () Bool)

(assert (= bs!1880412 d!2210818))

(declare-fun m!7794468 () Bool)

(assert (=> bs!1880412 m!7794468))

(assert (=> b!7069370 d!2210818))

(declare-fun d!2210820 () Bool)

(declare-fun c!1318578 () Bool)

(assert (=> d!2210820 (= c!1318578 (isEmpty!39860 s!7408))))

(declare-fun e!4250207 () Bool)

(assert (=> d!2210820 (= (matchZipper!3173 lt!2543740 s!7408) e!4250207)))

(declare-fun b!7069582 () Bool)

(assert (=> b!7069582 (= e!4250207 (nullableZipper!2692 lt!2543740))))

(declare-fun b!7069583 () Bool)

(assert (=> b!7069583 (= e!4250207 (matchZipper!3173 (derivationStepZipper!3083 lt!2543740 (head!14400 s!7408)) (tail!13810 s!7408)))))

(assert (= (and d!2210820 c!1318578) b!7069582))

(assert (= (and d!2210820 (not c!1318578)) b!7069583))

(assert (=> d!2210820 m!7794420))

(declare-fun m!7794470 () Bool)

(assert (=> b!7069582 m!7794470))

(assert (=> b!7069583 m!7794424))

(assert (=> b!7069583 m!7794424))

(declare-fun m!7794472 () Bool)

(assert (=> b!7069583 m!7794472))

(assert (=> b!7069583 m!7794428))

(assert (=> b!7069583 m!7794472))

(assert (=> b!7069583 m!7794428))

(declare-fun m!7794474 () Bool)

(assert (=> b!7069583 m!7794474))

(assert (=> b!7069370 d!2210820))

(declare-fun d!2210822 () Bool)

(declare-fun e!4250210 () Bool)

(assert (=> d!2210822 e!4250210))

(declare-fun res!2886976 () Bool)

(assert (=> d!2210822 (=> (not res!2886976) (not e!4250210))))

(declare-fun lt!2543844 () Context!13258)

(declare-fun dynLambda!27774 (Int Context!13258) Bool)

(assert (=> d!2210822 (= res!2886976 (dynLambda!27774 lambda!424861 lt!2543844))))

(declare-fun getWitness!1729 (List!68426 Int) Context!13258)

(assert (=> d!2210822 (= lt!2543844 (getWitness!1729 (toList!10974 lt!2543752) lambda!424861))))

(declare-fun exists!3672 ((InoxSet Context!13258) Int) Bool)

(assert (=> d!2210822 (exists!3672 lt!2543752 lambda!424861)))

(assert (=> d!2210822 (= (getWitness!1727 lt!2543752 lambda!424861) lt!2543844)))

(declare-fun b!7069586 () Bool)

(assert (=> b!7069586 (= e!4250210 (select lt!2543752 lt!2543844))))

(assert (= (and d!2210822 res!2886976) b!7069586))

(declare-fun b_lambda!269887 () Bool)

(assert (=> (not b_lambda!269887) (not d!2210822)))

(declare-fun m!7794476 () Bool)

(assert (=> d!2210822 m!7794476))

(assert (=> d!2210822 m!7794096))

(assert (=> d!2210822 m!7794096))

(declare-fun m!7794478 () Bool)

(assert (=> d!2210822 m!7794478))

(declare-fun m!7794480 () Bool)

(assert (=> d!2210822 m!7794480))

(declare-fun m!7794482 () Bool)

(assert (=> b!7069586 m!7794482))

(assert (=> b!7069370 d!2210822))

(declare-fun d!2210824 () Bool)

(declare-fun e!4250213 () Bool)

(assert (=> d!2210824 e!4250213))

(declare-fun res!2886979 () Bool)

(assert (=> d!2210824 (=> (not res!2886979) (not e!4250213))))

(declare-fun lt!2543847 () List!68426)

(declare-fun noDuplicate!2721 (List!68426) Bool)

(assert (=> d!2210824 (= res!2886979 (noDuplicate!2721 lt!2543847))))

(declare-fun choose!54155 ((InoxSet Context!13258)) List!68426)

(assert (=> d!2210824 (= lt!2543847 (choose!54155 lt!2543752))))

(assert (=> d!2210824 (= (toList!10974 lt!2543752) lt!2543847)))

(declare-fun b!7069589 () Bool)

(assert (=> b!7069589 (= e!4250213 (= (content!13772 lt!2543847) lt!2543752))))

(assert (= (and d!2210824 res!2886979) b!7069589))

(declare-fun m!7794484 () Bool)

(assert (=> d!2210824 m!7794484))

(declare-fun m!7794486 () Bool)

(assert (=> d!2210824 m!7794486))

(declare-fun m!7794488 () Bool)

(assert (=> b!7069589 m!7794488))

(assert (=> b!7069370 d!2210824))

(assert (=> b!7069380 d!2210796))

(declare-fun d!2210826 () Bool)

(assert (=> d!2210826 (= (isEmpty!39858 (exprs!7129 lt!2543748)) ((_ is Nil!68301) (exprs!7129 lt!2543748)))))

(assert (=> b!7069381 d!2210826))

(declare-fun b!7069612 () Bool)

(declare-fun e!4250227 () (InoxSet Context!13258))

(declare-fun call!642542 () (InoxSet Context!13258))

(assert (=> b!7069612 (= e!4250227 call!642542)))

(declare-fun b!7069613 () Bool)

(declare-fun e!4250228 () (InoxSet Context!13258))

(declare-fun e!4250230 () (InoxSet Context!13258))

(assert (=> b!7069613 (= e!4250228 e!4250230)))

(declare-fun c!1318591 () Bool)

(assert (=> b!7069613 (= c!1318591 ((_ is Concat!26478) (h!74749 (exprs!7129 lt!2543748))))))

(declare-fun bm!642535 () Bool)

(declare-fun call!642544 () (InoxSet Context!13258))

(declare-fun call!642541 () (InoxSet Context!13258))

(assert (=> bm!642535 (= call!642544 call!642541)))

(declare-fun bm!642536 () Bool)

(assert (=> bm!642536 (= call!642542 call!642544)))

(declare-fun b!7069614 () Bool)

(declare-fun e!4250231 () Bool)

(assert (=> b!7069614 (= e!4250231 (nullable!7316 (regOne!35778 (h!74749 (exprs!7129 lt!2543748)))))))

(declare-fun b!7069615 () Bool)

(declare-fun e!4250229 () (InoxSet Context!13258))

(assert (=> b!7069615 (= e!4250229 (store ((as const (Array Context!13258 Bool)) false) lt!2543745 true))))

(declare-fun call!642543 () List!68425)

(declare-fun bm!642537 () Bool)

(declare-fun call!642540 () (InoxSet Context!13258))

(declare-fun c!1318593 () Bool)

(assert (=> bm!642537 (= call!642540 (derivationStepZipperDown!2267 (ite c!1318593 (regOne!35779 (h!74749 (exprs!7129 lt!2543748))) (regOne!35778 (h!74749 (exprs!7129 lt!2543748)))) (ite c!1318593 lt!2543745 (Context!13259 call!642543)) (h!74751 s!7408)))))

(declare-fun b!7069616 () Bool)

(declare-fun e!4250226 () (InoxSet Context!13258))

(assert (=> b!7069616 (= e!4250226 ((_ map or) call!642540 call!642541))))

(declare-fun d!2210828 () Bool)

(declare-fun c!1318589 () Bool)

(assert (=> d!2210828 (= c!1318589 (and ((_ is ElementMatch!17633) (h!74749 (exprs!7129 lt!2543748))) (= (c!1318504 (h!74749 (exprs!7129 lt!2543748))) (h!74751 s!7408))))))

(assert (=> d!2210828 (= (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543748)) lt!2543745 (h!74751 s!7408)) e!4250229)))

(declare-fun b!7069617 () Bool)

(declare-fun c!1318592 () Bool)

(assert (=> b!7069617 (= c!1318592 ((_ is Star!17633) (h!74749 (exprs!7129 lt!2543748))))))

(assert (=> b!7069617 (= e!4250230 e!4250227)))

(declare-fun bm!642538 () Bool)

(declare-fun c!1318590 () Bool)

(declare-fun call!642545 () List!68425)

(assert (=> bm!642538 (= call!642541 (derivationStepZipperDown!2267 (ite c!1318593 (regTwo!35779 (h!74749 (exprs!7129 lt!2543748))) (ite c!1318590 (regTwo!35778 (h!74749 (exprs!7129 lt!2543748))) (ite c!1318591 (regOne!35778 (h!74749 (exprs!7129 lt!2543748))) (reg!17962 (h!74749 (exprs!7129 lt!2543748)))))) (ite (or c!1318593 c!1318590) lt!2543745 (Context!13259 call!642545)) (h!74751 s!7408)))))

(declare-fun b!7069618 () Bool)

(assert (=> b!7069618 (= e!4250230 call!642542)))

(declare-fun b!7069619 () Bool)

(assert (=> b!7069619 (= c!1318590 e!4250231)))

(declare-fun res!2886982 () Bool)

(assert (=> b!7069619 (=> (not res!2886982) (not e!4250231))))

(assert (=> b!7069619 (= res!2886982 ((_ is Concat!26478) (h!74749 (exprs!7129 lt!2543748))))))

(assert (=> b!7069619 (= e!4250226 e!4250228)))

(declare-fun b!7069620 () Bool)

(assert (=> b!7069620 (= e!4250228 ((_ map or) call!642540 call!642544))))

(declare-fun bm!642539 () Bool)

(declare-fun $colon$colon!2653 (List!68425 Regex!17633) List!68425)

(assert (=> bm!642539 (= call!642543 ($colon$colon!2653 (exprs!7129 lt!2543745) (ite (or c!1318590 c!1318591) (regTwo!35778 (h!74749 (exprs!7129 lt!2543748))) (h!74749 (exprs!7129 lt!2543748)))))))

(declare-fun bm!642540 () Bool)

(assert (=> bm!642540 (= call!642545 call!642543)))

(declare-fun b!7069621 () Bool)

(assert (=> b!7069621 (= e!4250227 ((as const (Array Context!13258 Bool)) false))))

(declare-fun b!7069622 () Bool)

(assert (=> b!7069622 (= e!4250229 e!4250226)))

(assert (=> b!7069622 (= c!1318593 ((_ is Union!17633) (h!74749 (exprs!7129 lt!2543748))))))

(assert (= (and d!2210828 c!1318589) b!7069615))

(assert (= (and d!2210828 (not c!1318589)) b!7069622))

(assert (= (and b!7069622 c!1318593) b!7069616))

(assert (= (and b!7069622 (not c!1318593)) b!7069619))

(assert (= (and b!7069619 res!2886982) b!7069614))

(assert (= (and b!7069619 c!1318590) b!7069620))

(assert (= (and b!7069619 (not c!1318590)) b!7069613))

(assert (= (and b!7069613 c!1318591) b!7069618))

(assert (= (and b!7069613 (not c!1318591)) b!7069617))

(assert (= (and b!7069617 c!1318592) b!7069612))

(assert (= (and b!7069617 (not c!1318592)) b!7069621))

(assert (= (or b!7069618 b!7069612) bm!642540))

(assert (= (or b!7069618 b!7069612) bm!642536))

(assert (= (or b!7069620 bm!642536) bm!642535))

(assert (= (or b!7069620 bm!642540) bm!642539))

(assert (= (or b!7069616 b!7069620) bm!642537))

(assert (= (or b!7069616 bm!642535) bm!642538))

(declare-fun m!7794490 () Bool)

(assert (=> b!7069615 m!7794490))

(declare-fun m!7794492 () Bool)

(assert (=> bm!642538 m!7794492))

(declare-fun m!7794494 () Bool)

(assert (=> b!7069614 m!7794494))

(declare-fun m!7794496 () Bool)

(assert (=> bm!642539 m!7794496))

(declare-fun m!7794498 () Bool)

(assert (=> bm!642537 m!7794498))

(assert (=> b!7069371 d!2210828))

(declare-fun d!2210830 () Bool)

(declare-fun c!1318594 () Bool)

(assert (=> d!2210830 (= c!1318594 (isEmpty!39860 (t!382210 s!7408)))))

(declare-fun e!4250232 () Bool)

(assert (=> d!2210830 (= (matchZipper!3173 lt!2543739 (t!382210 s!7408)) e!4250232)))

(declare-fun b!7069623 () Bool)

(assert (=> b!7069623 (= e!4250232 (nullableZipper!2692 lt!2543739))))

(declare-fun b!7069624 () Bool)

(assert (=> b!7069624 (= e!4250232 (matchZipper!3173 (derivationStepZipper!3083 lt!2543739 (head!14400 (t!382210 s!7408))) (tail!13810 (t!382210 s!7408))))))

(assert (= (and d!2210830 c!1318594) b!7069623))

(assert (= (and d!2210830 (not c!1318594)) b!7069624))

(assert (=> d!2210830 m!7794382))

(declare-fun m!7794500 () Bool)

(assert (=> b!7069623 m!7794500))

(assert (=> b!7069624 m!7794386))

(assert (=> b!7069624 m!7794386))

(declare-fun m!7794502 () Bool)

(assert (=> b!7069624 m!7794502))

(assert (=> b!7069624 m!7794390))

(assert (=> b!7069624 m!7794502))

(assert (=> b!7069624 m!7794390))

(declare-fun m!7794504 () Bool)

(assert (=> b!7069624 m!7794504))

(assert (=> b!7069371 d!2210830))

(assert (=> b!7069371 d!2210794))

(declare-fun bs!1880413 () Bool)

(declare-fun d!2210832 () Bool)

(assert (= bs!1880413 (and d!2210832 b!7069369)))

(declare-fun lambda!424906 () Int)

(assert (=> bs!1880413 (= lambda!424906 lambda!424863)))

(declare-fun bs!1880414 () Bool)

(assert (= bs!1880414 (and d!2210832 d!2210810)))

(assert (=> bs!1880414 (= lambda!424906 lambda!424897)))

(assert (=> d!2210832 (= (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543748)) (Context!13259 (++!15750 (exprs!7129 lt!2543745) (exprs!7129 ct2!306))) (h!74751 s!7408)) (appendTo!754 (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543748)) lt!2543745 (h!74751 s!7408)) ct2!306))))

(declare-fun lt!2543853 () Unit!161976)

(assert (=> d!2210832 (= lt!2543853 (lemmaConcatPreservesForall!944 (exprs!7129 lt!2543745) (exprs!7129 ct2!306) lambda!424906))))

(declare-fun lt!2543852 () Unit!161976)

(declare-fun choose!54156 (Context!13258 Regex!17633 C!35536 Context!13258) Unit!161976)

(assert (=> d!2210832 (= lt!2543852 (choose!54156 lt!2543745 (h!74749 (exprs!7129 lt!2543748)) (h!74751 s!7408) ct2!306))))

(declare-fun validRegex!8967 (Regex!17633) Bool)

(assert (=> d!2210832 (validRegex!8967 (h!74749 (exprs!7129 lt!2543748)))))

(assert (=> d!2210832 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!104 lt!2543745 (h!74749 (exprs!7129 lt!2543748)) (h!74751 s!7408) ct2!306) lt!2543852)))

(declare-fun bs!1880415 () Bool)

(assert (= bs!1880415 d!2210832))

(declare-fun m!7794506 () Bool)

(assert (=> bs!1880415 m!7794506))

(declare-fun m!7794508 () Bool)

(assert (=> bs!1880415 m!7794508))

(declare-fun m!7794510 () Bool)

(assert (=> bs!1880415 m!7794510))

(declare-fun m!7794512 () Bool)

(assert (=> bs!1880415 m!7794512))

(assert (=> bs!1880415 m!7794154))

(declare-fun m!7794514 () Bool)

(assert (=> bs!1880415 m!7794514))

(declare-fun m!7794516 () Bool)

(assert (=> bs!1880415 m!7794516))

(assert (=> bs!1880415 m!7794154))

(assert (=> b!7069371 d!2210832))

(declare-fun bs!1880416 () Bool)

(declare-fun d!2210834 () Bool)

(assert (= bs!1880416 (and d!2210834 b!7069369)))

(declare-fun lambda!424907 () Int)

(assert (=> bs!1880416 (= lambda!424907 lambda!424862)))

(declare-fun bs!1880417 () Bool)

(assert (= bs!1880417 (and d!2210834 d!2210808)))

(assert (=> bs!1880417 (= lambda!424907 lambda!424894)))

(assert (=> d!2210834 true))

(assert (=> d!2210834 (= (appendTo!754 lt!2543771 ct2!306) (map!15977 lt!2543771 lambda!424907))))

(declare-fun bs!1880418 () Bool)

(assert (= bs!1880418 d!2210834))

(declare-fun m!7794518 () Bool)

(assert (=> bs!1880418 m!7794518))

(assert (=> b!7069371 d!2210834))

(declare-fun d!2210836 () Bool)

(declare-fun e!4250233 () Bool)

(assert (=> d!2210836 e!4250233))

(declare-fun res!2886983 () Bool)

(assert (=> d!2210836 (=> (not res!2886983) (not e!4250233))))

(declare-fun lt!2543854 () List!68426)

(assert (=> d!2210836 (= res!2886983 (noDuplicate!2721 lt!2543854))))

(assert (=> d!2210836 (= lt!2543854 (choose!54155 z1!570))))

(assert (=> d!2210836 (= (toList!10974 z1!570) lt!2543854)))

(declare-fun b!7069625 () Bool)

(assert (=> b!7069625 (= e!4250233 (= (content!13772 lt!2543854) z1!570))))

(assert (= (and d!2210836 res!2886983) b!7069625))

(declare-fun m!7794520 () Bool)

(assert (=> d!2210836 m!7794520))

(declare-fun m!7794522 () Bool)

(assert (=> d!2210836 m!7794522))

(declare-fun m!7794524 () Bool)

(assert (=> b!7069625 m!7794524))

(assert (=> b!7069363 d!2210836))

(declare-fun d!2210838 () Bool)

(declare-fun lt!2543857 () Int)

(assert (=> d!2210838 (>= lt!2543857 0)))

(declare-fun e!4250236 () Int)

(assert (=> d!2210838 (= lt!2543857 e!4250236)))

(declare-fun c!1318598 () Bool)

(assert (=> d!2210838 (= c!1318598 ((_ is Nil!68303) s!7408))))

(assert (=> d!2210838 (= (ListPrimitiveSize!408 s!7408) lt!2543857)))

(declare-fun b!7069630 () Bool)

(assert (=> b!7069630 (= e!4250236 0)))

(declare-fun b!7069631 () Bool)

(assert (=> b!7069631 (= e!4250236 (+ 1 (ListPrimitiveSize!408 (t!382210 s!7408))))))

(assert (= (and d!2210838 c!1318598) b!7069630))

(assert (= (and d!2210838 (not c!1318598)) b!7069631))

(assert (=> b!7069631 m!7794134))

(assert (=> b!7069363 d!2210838))

(declare-fun d!2210840 () Bool)

(declare-fun lt!2543860 () Int)

(assert (=> d!2210840 (>= lt!2543860 0)))

(declare-fun e!4250239 () Int)

(assert (=> d!2210840 (= lt!2543860 e!4250239)))

(declare-fun c!1318601 () Bool)

(assert (=> d!2210840 (= c!1318601 ((_ is Cons!68302) (toList!10974 z1!570)))))

(assert (=> d!2210840 (= (zipperDepthTotal!586 (toList!10974 z1!570)) lt!2543860)))

(declare-fun b!7069636 () Bool)

(declare-fun contextDepthTotal!557 (Context!13258) Int)

(assert (=> b!7069636 (= e!4250239 (+ (contextDepthTotal!557 (h!74750 (toList!10974 z1!570))) (zipperDepthTotal!586 (t!382209 (toList!10974 z1!570)))))))

(declare-fun b!7069637 () Bool)

(assert (=> b!7069637 (= e!4250239 0)))

(assert (= (and d!2210840 c!1318601) b!7069636))

(assert (= (and d!2210840 (not c!1318601)) b!7069637))

(declare-fun m!7794526 () Bool)

(assert (=> b!7069636 m!7794526))

(declare-fun m!7794528 () Bool)

(assert (=> b!7069636 m!7794528))

(assert (=> b!7069363 d!2210840))

(declare-fun d!2210842 () Bool)

(declare-fun e!4250240 () Bool)

(assert (=> d!2210842 e!4250240))

(declare-fun res!2886984 () Bool)

(assert (=> d!2210842 (=> (not res!2886984) (not e!4250240))))

(declare-fun lt!2543861 () List!68426)

(assert (=> d!2210842 (= res!2886984 (noDuplicate!2721 lt!2543861))))

(assert (=> d!2210842 (= lt!2543861 (choose!54155 lt!2543771))))

(assert (=> d!2210842 (= (toList!10974 lt!2543771) lt!2543861)))

(declare-fun b!7069638 () Bool)

(assert (=> b!7069638 (= e!4250240 (= (content!13772 lt!2543861) lt!2543771))))

(assert (= (and d!2210842 res!2886984) b!7069638))

(declare-fun m!7794530 () Bool)

(assert (=> d!2210842 m!7794530))

(declare-fun m!7794532 () Bool)

(assert (=> d!2210842 m!7794532))

(declare-fun m!7794534 () Bool)

(assert (=> b!7069638 m!7794534))

(assert (=> b!7069363 d!2210842))

(declare-fun d!2210844 () Bool)

(declare-fun lt!2543862 () Int)

(assert (=> d!2210844 (>= lt!2543862 0)))

(declare-fun e!4250241 () Int)

(assert (=> d!2210844 (= lt!2543862 e!4250241)))

(declare-fun c!1318602 () Bool)

(assert (=> d!2210844 (= c!1318602 ((_ is Cons!68302) (toList!10974 lt!2543771)))))

(assert (=> d!2210844 (= (zipperDepthTotal!586 (toList!10974 lt!2543771)) lt!2543862)))

(declare-fun b!7069639 () Bool)

(assert (=> b!7069639 (= e!4250241 (+ (contextDepthTotal!557 (h!74750 (toList!10974 lt!2543771))) (zipperDepthTotal!586 (t!382209 (toList!10974 lt!2543771)))))))

(declare-fun b!7069640 () Bool)

(assert (=> b!7069640 (= e!4250241 0)))

(assert (= (and d!2210844 c!1318602) b!7069639))

(assert (= (and d!2210844 (not c!1318602)) b!7069640))

(declare-fun m!7794536 () Bool)

(assert (=> b!7069639 m!7794536))

(declare-fun m!7794538 () Bool)

(assert (=> b!7069639 m!7794538))

(assert (=> b!7069363 d!2210844))

(declare-fun d!2210846 () Bool)

(declare-fun lt!2543863 () Int)

(assert (=> d!2210846 (>= lt!2543863 0)))

(declare-fun e!4250242 () Int)

(assert (=> d!2210846 (= lt!2543863 e!4250242)))

(declare-fun c!1318603 () Bool)

(assert (=> d!2210846 (= c!1318603 ((_ is Nil!68303) (t!382210 s!7408)))))

(assert (=> d!2210846 (= (ListPrimitiveSize!408 (t!382210 s!7408)) lt!2543863)))

(declare-fun b!7069641 () Bool)

(assert (=> b!7069641 (= e!4250242 0)))

(declare-fun b!7069642 () Bool)

(assert (=> b!7069642 (= e!4250242 (+ 1 (ListPrimitiveSize!408 (t!382210 (t!382210 s!7408)))))))

(assert (= (and d!2210846 c!1318603) b!7069641))

(assert (= (and d!2210846 (not c!1318603)) b!7069642))

(declare-fun m!7794540 () Bool)

(assert (=> b!7069642 m!7794540))

(assert (=> b!7069363 d!2210846))

(declare-fun d!2210848 () Bool)

(declare-fun nullableFct!2807 (Regex!17633) Bool)

(assert (=> d!2210848 (= (nullable!7316 (h!74749 (exprs!7129 lt!2543748))) (nullableFct!2807 (h!74749 (exprs!7129 lt!2543748))))))

(declare-fun bs!1880419 () Bool)

(assert (= bs!1880419 d!2210848))

(declare-fun m!7794542 () Bool)

(assert (=> bs!1880419 m!7794542))

(assert (=> b!7069382 d!2210848))

(declare-fun d!2210850 () Bool)

(assert (=> d!2210850 (= (tail!13808 (exprs!7129 lt!2543748)) (t!382208 (exprs!7129 lt!2543748)))))

(assert (=> b!7069382 d!2210850))

(declare-fun d!2210852 () Bool)

(declare-fun c!1318604 () Bool)

(assert (=> d!2210852 (= c!1318604 (isEmpty!39860 (t!382210 s!7408)))))

(declare-fun e!4250243 () Bool)

(assert (=> d!2210852 (= (matchZipper!3173 lt!2543754 (t!382210 s!7408)) e!4250243)))

(declare-fun b!7069643 () Bool)

(assert (=> b!7069643 (= e!4250243 (nullableZipper!2692 lt!2543754))))

(declare-fun b!7069644 () Bool)

(assert (=> b!7069644 (= e!4250243 (matchZipper!3173 (derivationStepZipper!3083 lt!2543754 (head!14400 (t!382210 s!7408))) (tail!13810 (t!382210 s!7408))))))

(assert (= (and d!2210852 c!1318604) b!7069643))

(assert (= (and d!2210852 (not c!1318604)) b!7069644))

(assert (=> d!2210852 m!7794382))

(declare-fun m!7794544 () Bool)

(assert (=> b!7069643 m!7794544))

(assert (=> b!7069644 m!7794386))

(assert (=> b!7069644 m!7794386))

(declare-fun m!7794546 () Bool)

(assert (=> b!7069644 m!7794546))

(assert (=> b!7069644 m!7794390))

(assert (=> b!7069644 m!7794546))

(assert (=> b!7069644 m!7794390))

(declare-fun m!7794548 () Bool)

(assert (=> b!7069644 m!7794548))

(assert (=> b!7069373 d!2210852))

(declare-fun d!2210854 () Bool)

(declare-fun e!4250246 () Bool)

(assert (=> d!2210854 (= (matchZipper!3173 ((_ map or) lt!2543754 lt!2543776) (t!382210 s!7408)) e!4250246)))

(declare-fun res!2886987 () Bool)

(assert (=> d!2210854 (=> res!2886987 e!4250246)))

(assert (=> d!2210854 (= res!2886987 (matchZipper!3173 lt!2543754 (t!382210 s!7408)))))

(declare-fun lt!2543866 () Unit!161976)

(declare-fun choose!54157 ((InoxSet Context!13258) (InoxSet Context!13258) List!68427) Unit!161976)

(assert (=> d!2210854 (= lt!2543866 (choose!54157 lt!2543754 lt!2543776 (t!382210 s!7408)))))

(assert (=> d!2210854 (= (lemmaZipperConcatMatchesSameAsBothZippers!1646 lt!2543754 lt!2543776 (t!382210 s!7408)) lt!2543866)))

(declare-fun b!7069647 () Bool)

(assert (=> b!7069647 (= e!4250246 (matchZipper!3173 lt!2543776 (t!382210 s!7408)))))

(assert (= (and d!2210854 (not res!2886987)) b!7069647))

(declare-fun m!7794550 () Bool)

(assert (=> d!2210854 m!7794550))

(assert (=> d!2210854 m!7794140))

(declare-fun m!7794552 () Bool)

(assert (=> d!2210854 m!7794552))

(assert (=> b!7069647 m!7794078))

(assert (=> b!7069373 d!2210854))

(declare-fun d!2210856 () Bool)

(declare-fun c!1318605 () Bool)

(assert (=> d!2210856 (= c!1318605 (isEmpty!39860 (t!382210 s!7408)))))

(declare-fun e!4250247 () Bool)

(assert (=> d!2210856 (= (matchZipper!3173 lt!2543773 (t!382210 s!7408)) e!4250247)))

(declare-fun b!7069648 () Bool)

(assert (=> b!7069648 (= e!4250247 (nullableZipper!2692 lt!2543773))))

(declare-fun b!7069649 () Bool)

(assert (=> b!7069649 (= e!4250247 (matchZipper!3173 (derivationStepZipper!3083 lt!2543773 (head!14400 (t!382210 s!7408))) (tail!13810 (t!382210 s!7408))))))

(assert (= (and d!2210856 c!1318605) b!7069648))

(assert (= (and d!2210856 (not c!1318605)) b!7069649))

(assert (=> d!2210856 m!7794382))

(declare-fun m!7794554 () Bool)

(assert (=> b!7069648 m!7794554))

(assert (=> b!7069649 m!7794386))

(assert (=> b!7069649 m!7794386))

(declare-fun m!7794556 () Bool)

(assert (=> b!7069649 m!7794556))

(assert (=> b!7069649 m!7794390))

(assert (=> b!7069649 m!7794556))

(assert (=> b!7069649 m!7794390))

(declare-fun m!7794558 () Bool)

(assert (=> b!7069649 m!7794558))

(assert (=> b!7069373 d!2210856))

(declare-fun d!2210858 () Bool)

(declare-fun c!1318606 () Bool)

(assert (=> d!2210858 (= c!1318606 (isEmpty!39860 (t!382210 s!7408)))))

(declare-fun e!4250248 () Bool)

(assert (=> d!2210858 (= (matchZipper!3173 lt!2543767 (t!382210 s!7408)) e!4250248)))

(declare-fun b!7069650 () Bool)

(assert (=> b!7069650 (= e!4250248 (nullableZipper!2692 lt!2543767))))

(declare-fun b!7069651 () Bool)

(assert (=> b!7069651 (= e!4250248 (matchZipper!3173 (derivationStepZipper!3083 lt!2543767 (head!14400 (t!382210 s!7408))) (tail!13810 (t!382210 s!7408))))))

(assert (= (and d!2210858 c!1318606) b!7069650))

(assert (= (and d!2210858 (not c!1318606)) b!7069651))

(assert (=> d!2210858 m!7794382))

(declare-fun m!7794560 () Bool)

(assert (=> b!7069650 m!7794560))

(assert (=> b!7069651 m!7794386))

(assert (=> b!7069651 m!7794386))

(declare-fun m!7794562 () Bool)

(assert (=> b!7069651 m!7794562))

(assert (=> b!7069651 m!7794390))

(assert (=> b!7069651 m!7794562))

(assert (=> b!7069651 m!7794390))

(declare-fun m!7794564 () Bool)

(assert (=> b!7069651 m!7794564))

(assert (=> b!7069373 d!2210858))

(assert (=> b!7069373 d!2210794))

(declare-fun bs!1880420 () Bool)

(declare-fun d!2210860 () Bool)

(assert (= bs!1880420 (and d!2210860 b!7069369)))

(declare-fun lambda!424908 () Int)

(assert (=> bs!1880420 (= lambda!424908 lambda!424863)))

(declare-fun bs!1880421 () Bool)

(assert (= bs!1880421 (and d!2210860 d!2210810)))

(assert (=> bs!1880421 (= lambda!424908 lambda!424897)))

(declare-fun bs!1880422 () Bool)

(assert (= bs!1880422 (and d!2210860 d!2210832)))

(assert (=> bs!1880422 (= lambda!424908 lambda!424906)))

(assert (=> d!2210860 (= (inv!86941 setElem!50198) (forall!16582 (exprs!7129 setElem!50198) lambda!424908))))

(declare-fun bs!1880423 () Bool)

(assert (= bs!1880423 d!2210860))

(declare-fun m!7794566 () Bool)

(assert (=> bs!1880423 m!7794566))

(assert (=> setNonEmpty!50198 d!2210860))

(assert (=> b!7069364 d!2210786))

(assert (=> b!7069364 d!2210794))

(declare-fun b!7069652 () Bool)

(declare-fun e!4250249 () (InoxSet Context!13258))

(declare-fun e!4250251 () (InoxSet Context!13258))

(assert (=> b!7069652 (= e!4250249 e!4250251)))

(declare-fun c!1318608 () Bool)

(assert (=> b!7069652 (= c!1318608 ((_ is Cons!68301) (exprs!7129 lt!2543769)))))

(declare-fun call!642546 () (InoxSet Context!13258))

(declare-fun b!7069653 () Bool)

(assert (=> b!7069653 (= e!4250249 ((_ map or) call!642546 (derivationStepZipperUp!2217 (Context!13259 (t!382208 (exprs!7129 lt!2543769))) (h!74751 s!7408))))))

(declare-fun d!2210862 () Bool)

(declare-fun c!1318607 () Bool)

(declare-fun e!4250250 () Bool)

(assert (=> d!2210862 (= c!1318607 e!4250250)))

(declare-fun res!2886988 () Bool)

(assert (=> d!2210862 (=> (not res!2886988) (not e!4250250))))

(assert (=> d!2210862 (= res!2886988 ((_ is Cons!68301) (exprs!7129 lt!2543769)))))

(assert (=> d!2210862 (= (derivationStepZipperUp!2217 lt!2543769 (h!74751 s!7408)) e!4250249)))

(declare-fun bm!642541 () Bool)

(assert (=> bm!642541 (= call!642546 (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543769)) (Context!13259 (t!382208 (exprs!7129 lt!2543769))) (h!74751 s!7408)))))

(declare-fun b!7069654 () Bool)

(assert (=> b!7069654 (= e!4250251 call!642546)))

(declare-fun b!7069655 () Bool)

(assert (=> b!7069655 (= e!4250250 (nullable!7316 (h!74749 (exprs!7129 lt!2543769))))))

(declare-fun b!7069656 () Bool)

(assert (=> b!7069656 (= e!4250251 ((as const (Array Context!13258 Bool)) false))))

(assert (= (and d!2210862 res!2886988) b!7069655))

(assert (= (and d!2210862 c!1318607) b!7069653))

(assert (= (and d!2210862 (not c!1318607)) b!7069652))

(assert (= (and b!7069652 c!1318608) b!7069654))

(assert (= (and b!7069652 (not c!1318608)) b!7069656))

(assert (= (or b!7069653 b!7069654) bm!642541))

(declare-fun m!7794568 () Bool)

(assert (=> b!7069653 m!7794568))

(declare-fun m!7794570 () Bool)

(assert (=> bm!642541 m!7794570))

(declare-fun m!7794572 () Bool)

(assert (=> b!7069655 m!7794572))

(assert (=> b!7069365 d!2210862))

(declare-fun b!7069658 () Bool)

(declare-fun e!4250253 () List!68425)

(assert (=> b!7069658 (= e!4250253 (Cons!68301 (h!74749 lt!2543774) (++!15750 (t!382208 lt!2543774) (exprs!7129 ct2!306))))))

(declare-fun b!7069659 () Bool)

(declare-fun res!2886989 () Bool)

(declare-fun e!4250252 () Bool)

(assert (=> b!7069659 (=> (not res!2886989) (not e!4250252))))

(declare-fun lt!2543867 () List!68425)

(assert (=> b!7069659 (= res!2886989 (= (size!41201 lt!2543867) (+ (size!41201 lt!2543774) (size!41201 (exprs!7129 ct2!306)))))))

(declare-fun b!7069660 () Bool)

(assert (=> b!7069660 (= e!4250252 (or (not (= (exprs!7129 ct2!306) Nil!68301)) (= lt!2543867 lt!2543774)))))

(declare-fun b!7069657 () Bool)

(assert (=> b!7069657 (= e!4250253 (exprs!7129 ct2!306))))

(declare-fun d!2210864 () Bool)

(assert (=> d!2210864 e!4250252))

(declare-fun res!2886990 () Bool)

(assert (=> d!2210864 (=> (not res!2886990) (not e!4250252))))

(assert (=> d!2210864 (= res!2886990 (= (content!13771 lt!2543867) ((_ map or) (content!13771 lt!2543774) (content!13771 (exprs!7129 ct2!306)))))))

(assert (=> d!2210864 (= lt!2543867 e!4250253)))

(declare-fun c!1318609 () Bool)

(assert (=> d!2210864 (= c!1318609 ((_ is Nil!68301) lt!2543774))))

(assert (=> d!2210864 (= (++!15750 lt!2543774 (exprs!7129 ct2!306)) lt!2543867)))

(assert (= (and d!2210864 c!1318609) b!7069657))

(assert (= (and d!2210864 (not c!1318609)) b!7069658))

(assert (= (and d!2210864 res!2886990) b!7069659))

(assert (= (and b!7069659 res!2886989) b!7069660))

(declare-fun m!7794574 () Bool)

(assert (=> b!7069658 m!7794574))

(declare-fun m!7794576 () Bool)

(assert (=> b!7069659 m!7794576))

(declare-fun m!7794578 () Bool)

(assert (=> b!7069659 m!7794578))

(assert (=> b!7069659 m!7794442))

(declare-fun m!7794580 () Bool)

(assert (=> d!2210864 m!7794580))

(declare-fun m!7794582 () Bool)

(assert (=> d!2210864 m!7794582))

(assert (=> d!2210864 m!7794448))

(assert (=> b!7069365 d!2210864))

(assert (=> b!7069365 d!2210794))

(declare-fun b!7069661 () Bool)

(declare-fun e!4250255 () (InoxSet Context!13258))

(declare-fun call!642549 () (InoxSet Context!13258))

(assert (=> b!7069661 (= e!4250255 call!642549)))

(declare-fun b!7069662 () Bool)

(declare-fun e!4250256 () (InoxSet Context!13258))

(declare-fun e!4250258 () (InoxSet Context!13258))

(assert (=> b!7069662 (= e!4250256 e!4250258)))

(declare-fun c!1318612 () Bool)

(assert (=> b!7069662 (= c!1318612 ((_ is Concat!26478) (h!74749 (exprs!7129 lt!2543748))))))

(declare-fun bm!642542 () Bool)

(declare-fun call!642551 () (InoxSet Context!13258))

(declare-fun call!642548 () (InoxSet Context!13258))

(assert (=> bm!642542 (= call!642551 call!642548)))

(declare-fun bm!642543 () Bool)

(assert (=> bm!642543 (= call!642549 call!642551)))

(declare-fun b!7069663 () Bool)

(declare-fun e!4250259 () Bool)

(assert (=> b!7069663 (= e!4250259 (nullable!7316 (regOne!35778 (h!74749 (exprs!7129 lt!2543748)))))))

(declare-fun b!7069664 () Bool)

(declare-fun e!4250257 () (InoxSet Context!13258))

(assert (=> b!7069664 (= e!4250257 (store ((as const (Array Context!13258 Bool)) false) lt!2543769 true))))

(declare-fun call!642547 () (InoxSet Context!13258))

(declare-fun call!642550 () List!68425)

(declare-fun bm!642544 () Bool)

(declare-fun c!1318614 () Bool)

(assert (=> bm!642544 (= call!642547 (derivationStepZipperDown!2267 (ite c!1318614 (regOne!35779 (h!74749 (exprs!7129 lt!2543748))) (regOne!35778 (h!74749 (exprs!7129 lt!2543748)))) (ite c!1318614 lt!2543769 (Context!13259 call!642550)) (h!74751 s!7408)))))

(declare-fun b!7069665 () Bool)

(declare-fun e!4250254 () (InoxSet Context!13258))

(assert (=> b!7069665 (= e!4250254 ((_ map or) call!642547 call!642548))))

(declare-fun d!2210866 () Bool)

(declare-fun c!1318610 () Bool)

(assert (=> d!2210866 (= c!1318610 (and ((_ is ElementMatch!17633) (h!74749 (exprs!7129 lt!2543748))) (= (c!1318504 (h!74749 (exprs!7129 lt!2543748))) (h!74751 s!7408))))))

(assert (=> d!2210866 (= (derivationStepZipperDown!2267 (h!74749 (exprs!7129 lt!2543748)) lt!2543769 (h!74751 s!7408)) e!4250257)))

(declare-fun b!7069666 () Bool)

(declare-fun c!1318613 () Bool)

(assert (=> b!7069666 (= c!1318613 ((_ is Star!17633) (h!74749 (exprs!7129 lt!2543748))))))

(assert (=> b!7069666 (= e!4250258 e!4250255)))

(declare-fun call!642552 () List!68425)

(declare-fun bm!642545 () Bool)

(declare-fun c!1318611 () Bool)

(assert (=> bm!642545 (= call!642548 (derivationStepZipperDown!2267 (ite c!1318614 (regTwo!35779 (h!74749 (exprs!7129 lt!2543748))) (ite c!1318611 (regTwo!35778 (h!74749 (exprs!7129 lt!2543748))) (ite c!1318612 (regOne!35778 (h!74749 (exprs!7129 lt!2543748))) (reg!17962 (h!74749 (exprs!7129 lt!2543748)))))) (ite (or c!1318614 c!1318611) lt!2543769 (Context!13259 call!642552)) (h!74751 s!7408)))))

(declare-fun b!7069667 () Bool)

(assert (=> b!7069667 (= e!4250258 call!642549)))

(declare-fun b!7069668 () Bool)

(assert (=> b!7069668 (= c!1318611 e!4250259)))

(declare-fun res!2886991 () Bool)

(assert (=> b!7069668 (=> (not res!2886991) (not e!4250259))))

(assert (=> b!7069668 (= res!2886991 ((_ is Concat!26478) (h!74749 (exprs!7129 lt!2543748))))))

(assert (=> b!7069668 (= e!4250254 e!4250256)))

(declare-fun b!7069669 () Bool)

(assert (=> b!7069669 (= e!4250256 ((_ map or) call!642547 call!642551))))

(declare-fun bm!642546 () Bool)

(assert (=> bm!642546 (= call!642550 ($colon$colon!2653 (exprs!7129 lt!2543769) (ite (or c!1318611 c!1318612) (regTwo!35778 (h!74749 (exprs!7129 lt!2543748))) (h!74749 (exprs!7129 lt!2543748)))))))

(declare-fun bm!642547 () Bool)

(assert (=> bm!642547 (= call!642552 call!642550)))

(declare-fun b!7069670 () Bool)

(assert (=> b!7069670 (= e!4250255 ((as const (Array Context!13258 Bool)) false))))

(declare-fun b!7069671 () Bool)

(assert (=> b!7069671 (= e!4250257 e!4250254)))

(assert (=> b!7069671 (= c!1318614 ((_ is Union!17633) (h!74749 (exprs!7129 lt!2543748))))))

(assert (= (and d!2210866 c!1318610) b!7069664))

(assert (= (and d!2210866 (not c!1318610)) b!7069671))

(assert (= (and b!7069671 c!1318614) b!7069665))

(assert (= (and b!7069671 (not c!1318614)) b!7069668))

(assert (= (and b!7069668 res!2886991) b!7069663))

(assert (= (and b!7069668 c!1318611) b!7069669))

(assert (= (and b!7069668 (not c!1318611)) b!7069662))

(assert (= (and b!7069662 c!1318612) b!7069667))

(assert (= (and b!7069662 (not c!1318612)) b!7069666))

(assert (= (and b!7069666 c!1318613) b!7069661))

(assert (= (and b!7069666 (not c!1318613)) b!7069670))

(assert (= (or b!7069667 b!7069661) bm!642547))

(assert (= (or b!7069667 b!7069661) bm!642543))

(assert (= (or b!7069669 bm!642543) bm!642542))

(assert (= (or b!7069669 bm!642547) bm!642546))

(assert (= (or b!7069665 b!7069669) bm!642544))

(assert (= (or b!7069665 bm!642542) bm!642545))

(declare-fun m!7794584 () Bool)

(assert (=> b!7069664 m!7794584))

(declare-fun m!7794586 () Bool)

(assert (=> bm!642545 m!7794586))

(assert (=> b!7069663 m!7794494))

(declare-fun m!7794588 () Bool)

(assert (=> bm!642546 m!7794588))

(declare-fun m!7794590 () Bool)

(assert (=> bm!642544 m!7794590))

(assert (=> b!7069365 d!2210866))

(declare-fun b!7069676 () Bool)

(declare-fun e!4250262 () Bool)

(declare-fun tp!1942053 () Bool)

(declare-fun tp!1942054 () Bool)

(assert (=> b!7069676 (= e!4250262 (and tp!1942053 tp!1942054))))

(assert (=> b!7069383 (= tp!1942028 e!4250262)))

(assert (= (and b!7069383 ((_ is Cons!68301) (exprs!7129 ct2!306))) b!7069676))

(declare-fun b!7069681 () Bool)

(declare-fun e!4250265 () Bool)

(declare-fun tp!1942057 () Bool)

(assert (=> b!7069681 (= e!4250265 (and tp_is_empty!44491 tp!1942057))))

(assert (=> b!7069372 (= tp!1942031 e!4250265)))

(assert (= (and b!7069372 ((_ is Cons!68303) (t!382210 s!7408))) b!7069681))

(declare-fun condSetEmpty!50204 () Bool)

(assert (=> setNonEmpty!50198 (= condSetEmpty!50204 (= setRest!50198 ((as const (Array Context!13258 Bool)) false)))))

(declare-fun setRes!50204 () Bool)

(assert (=> setNonEmpty!50198 (= tp!1942030 setRes!50204)))

(declare-fun setIsEmpty!50204 () Bool)

(assert (=> setIsEmpty!50204 setRes!50204))

(declare-fun tp!1942063 () Bool)

(declare-fun setElem!50204 () Context!13258)

(declare-fun e!4250268 () Bool)

(declare-fun setNonEmpty!50204 () Bool)

(assert (=> setNonEmpty!50204 (= setRes!50204 (and tp!1942063 (inv!86941 setElem!50204) e!4250268))))

(declare-fun setRest!50204 () (InoxSet Context!13258))

(assert (=> setNonEmpty!50204 (= setRest!50198 ((_ map or) (store ((as const (Array Context!13258 Bool)) false) setElem!50204 true) setRest!50204))))

(declare-fun b!7069686 () Bool)

(declare-fun tp!1942062 () Bool)

(assert (=> b!7069686 (= e!4250268 tp!1942062)))

(assert (= (and setNonEmpty!50198 condSetEmpty!50204) setIsEmpty!50204))

(assert (= (and setNonEmpty!50198 (not condSetEmpty!50204)) setNonEmpty!50204))

(assert (= setNonEmpty!50204 b!7069686))

(declare-fun m!7794592 () Bool)

(assert (=> setNonEmpty!50204 m!7794592))

(declare-fun b!7069687 () Bool)

(declare-fun e!4250269 () Bool)

(declare-fun tp!1942064 () Bool)

(declare-fun tp!1942065 () Bool)

(assert (=> b!7069687 (= e!4250269 (and tp!1942064 tp!1942065))))

(assert (=> b!7069374 (= tp!1942029 e!4250269)))

(assert (= (and b!7069374 ((_ is Cons!68301) (exprs!7129 setElem!50198))) b!7069687))

(declare-fun b_lambda!269889 () Bool)

(assert (= b_lambda!269883 (or b!7069367 b_lambda!269889)))

(declare-fun bs!1880424 () Bool)

(declare-fun d!2210868 () Bool)

(assert (= bs!1880424 (and d!2210868 b!7069367)))

(assert (=> bs!1880424 (= (dynLambda!27771 lambda!424864 lt!2543749) (derivationStepZipperUp!2217 lt!2543749 (h!74751 s!7408)))))

(assert (=> bs!1880424 m!7794084))

(assert (=> d!2210802 d!2210868))

(declare-fun b_lambda!269891 () Bool)

(assert (= b_lambda!269887 (or b!7069370 b_lambda!269891)))

(declare-fun bs!1880425 () Bool)

(declare-fun d!2210870 () Bool)

(assert (= bs!1880425 (and d!2210870 b!7069370)))

(assert (=> bs!1880425 (= (dynLambda!27774 lambda!424861 lt!2543844) (matchZipper!3173 (store ((as const (Array Context!13258 Bool)) false) lt!2543844 true) s!7408))))

(declare-fun m!7794594 () Bool)

(assert (=> bs!1880425 m!7794594))

(assert (=> bs!1880425 m!7794594))

(declare-fun m!7794596 () Bool)

(assert (=> bs!1880425 m!7794596))

(assert (=> d!2210822 d!2210870))

(declare-fun b_lambda!269893 () Bool)

(assert (= b_lambda!269885 (or b!7069369 b_lambda!269893)))

(declare-fun bs!1880426 () Bool)

(declare-fun d!2210872 () Bool)

(assert (= bs!1880426 (and d!2210872 b!7069369)))

(declare-fun lt!2543868 () Unit!161976)

(assert (=> bs!1880426 (= lt!2543868 (lemmaConcatPreservesForall!944 (exprs!7129 lt!2543838) (exprs!7129 ct2!306) lambda!424863))))

(assert (=> bs!1880426 (= (dynLambda!27772 lambda!424862 lt!2543838) (Context!13259 (++!15750 (exprs!7129 lt!2543838) (exprs!7129 ct2!306))))))

(declare-fun m!7794598 () Bool)

(assert (=> bs!1880426 m!7794598))

(declare-fun m!7794600 () Bool)

(assert (=> bs!1880426 m!7794600))

(assert (=> d!2210814 d!2210872))

(check-sat (not b!7069614) (not b!7069543) (not b!7069623) (not b!7069687) (not d!2210822) (not d!2210834) (not d!2210858) (not b!7069556) (not d!2210842) (not d!2210814) (not d!2210806) (not d!2210852) (not d!2210816) (not d!2210798) (not bm!642539) (not bs!1880424) (not b!7069562) (not b!7069676) (not b!7069644) (not d!2210836) (not b!7069663) (not d!2210802) (not b!7069642) (not b!7069659) (not b_lambda!269893) (not b!7069655) (not d!2210810) (not d!2210808) (not d!2210786) (not b!7069583) (not b!7069574) (not b!7069638) (not b!7069649) (not setNonEmpty!50204) (not d!2210804) (not d!2210818) (not bs!1880426) (not d!2210864) (not b!7069631) (not b!7069686) (not b!7069573) (not d!2210820) (not d!2210830) (not bm!642545) (not d!2210848) (not b!7069650) (not b!7069658) (not b!7069589) (not b!7069639) (not bm!642541) (not d!2210812) (not b!7069643) (not b!7069681) (not b!7069624) (not b!7069651) (not d!2210854) (not d!2210856) (not b_lambda!269891) (not d!2210860) (not bm!642546) tp_is_empty!44491 (not d!2210832) (not b!7069653) (not b!7069582) (not bm!642522) (not b!7069563) (not b_lambda!269889) (not b!7069625) (not b!7069636) (not d!2210794) (not d!2210796) (not bm!642538) (not b!7069647) (not d!2210824) (not bm!642544) (not b!7069648) (not bs!1880425) (not b!7069558) (not bm!642537) (not b!7069544))
(check-sat)

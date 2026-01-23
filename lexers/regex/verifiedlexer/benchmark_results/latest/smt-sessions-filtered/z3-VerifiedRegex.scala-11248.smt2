; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!590268 () Bool)

(assert start!590268)

(declare-fun b!5735910 () Bool)

(assert (=> b!5735910 true))

(assert (=> b!5735910 true))

(declare-fun lambda!310791 () Int)

(declare-fun lambda!310790 () Int)

(assert (=> b!5735910 (not (= lambda!310791 lambda!310790))))

(assert (=> b!5735910 true))

(assert (=> b!5735910 true))

(declare-fun b!5735880 () Bool)

(assert (=> b!5735880 true))

(declare-fun b!5735905 () Bool)

(assert (=> b!5735905 true))

(declare-fun bs!1340730 () Bool)

(declare-fun b!5735882 () Bool)

(assert (= bs!1340730 (and b!5735882 b!5735910)))

(declare-datatypes ((C!31756 0))(
  ( (C!31757 (val!25580 Int)) )
))
(declare-datatypes ((Regex!15743 0))(
  ( (ElementMatch!15743 (c!1012223 C!31756)) (Concat!24588 (regOne!31998 Regex!15743) (regTwo!31998 Regex!15743)) (EmptyExpr!15743) (Star!15743 (reg!16072 Regex!15743)) (EmptyLang!15743) (Union!15743 (regOne!31999 Regex!15743) (regTwo!31999 Regex!15743)) )
))
(declare-fun r!7292 () Regex!15743)

(declare-fun lambda!310795 () Int)

(declare-fun lt!2283410 () Regex!15743)

(assert (=> bs!1340730 (= (= lt!2283410 (regOne!31998 r!7292)) (= lambda!310795 lambda!310790))))

(assert (=> bs!1340730 (not (= lambda!310795 lambda!310791))))

(assert (=> b!5735882 true))

(assert (=> b!5735882 true))

(assert (=> b!5735882 true))

(declare-fun lambda!310796 () Int)

(assert (=> bs!1340730 (not (= lambda!310796 lambda!310790))))

(assert (=> bs!1340730 (= (= lt!2283410 (regOne!31998 r!7292)) (= lambda!310796 lambda!310791))))

(assert (=> b!5735882 (not (= lambda!310796 lambda!310795))))

(assert (=> b!5735882 true))

(assert (=> b!5735882 true))

(assert (=> b!5735882 true))

(declare-fun bs!1340731 () Bool)

(declare-fun b!5735875 () Bool)

(assert (= bs!1340731 (and b!5735875 b!5735910)))

(declare-datatypes ((List!63528 0))(
  ( (Nil!63404) (Cons!63404 (h!69852 C!31756) (t!376856 List!63528)) )
))
(declare-fun s!2326 () List!63528)

(declare-fun lambda!310797 () Int)

(declare-fun lt!2283432 () Regex!15743)

(declare-datatypes ((tuple2!65680 0))(
  ( (tuple2!65681 (_1!36143 List!63528) (_2!36143 List!63528)) )
))
(declare-fun lt!2283414 () tuple2!65680)

(assert (=> bs!1340731 (= (and (= (_1!36143 lt!2283414) s!2326) (= (reg!16072 (regOne!31998 r!7292)) (regOne!31998 r!7292)) (= lt!2283432 (regTwo!31998 r!7292))) (= lambda!310797 lambda!310790))))

(assert (=> bs!1340731 (not (= lambda!310797 lambda!310791))))

(declare-fun bs!1340732 () Bool)

(assert (= bs!1340732 (and b!5735875 b!5735882)))

(assert (=> bs!1340732 (= (and (= (_1!36143 lt!2283414) s!2326) (= (reg!16072 (regOne!31998 r!7292)) lt!2283410) (= lt!2283432 (regTwo!31998 r!7292))) (= lambda!310797 lambda!310795))))

(assert (=> bs!1340732 (not (= lambda!310797 lambda!310796))))

(assert (=> b!5735875 true))

(assert (=> b!5735875 true))

(assert (=> b!5735875 true))

(declare-fun lambda!310798 () Int)

(assert (=> bs!1340731 (not (= lambda!310798 lambda!310790))))

(assert (=> bs!1340732 (not (= lambda!310798 lambda!310795))))

(assert (=> bs!1340732 (= (and (= (_1!36143 lt!2283414) s!2326) (= (reg!16072 (regOne!31998 r!7292)) lt!2283410) (= lt!2283432 (regTwo!31998 r!7292))) (= lambda!310798 lambda!310796))))

(assert (=> b!5735875 (not (= lambda!310798 lambda!310797))))

(assert (=> bs!1340731 (= (and (= (_1!36143 lt!2283414) s!2326) (= (reg!16072 (regOne!31998 r!7292)) (regOne!31998 r!7292)) (= lt!2283432 (regTwo!31998 r!7292))) (= lambda!310798 lambda!310791))))

(assert (=> b!5735875 true))

(assert (=> b!5735875 true))

(assert (=> b!5735875 true))

(declare-fun lambda!310799 () Int)

(assert (=> bs!1340731 (not (= lambda!310799 lambda!310790))))

(assert (=> bs!1340732 (not (= lambda!310799 lambda!310795))))

(assert (=> b!5735875 (not (= lambda!310799 lambda!310798))))

(assert (=> bs!1340732 (not (= lambda!310799 lambda!310796))))

(assert (=> b!5735875 (not (= lambda!310799 lambda!310797))))

(assert (=> bs!1340731 (not (= lambda!310799 lambda!310791))))

(assert (=> b!5735875 true))

(assert (=> b!5735875 true))

(assert (=> b!5735875 true))

(declare-fun b!5735866 () Bool)

(declare-fun e!3526208 () Bool)

(declare-fun tp!1586805 () Bool)

(assert (=> b!5735866 (= e!3526208 tp!1586805)))

(declare-fun b!5735867 () Bool)

(declare-fun e!3526198 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63529 0))(
  ( (Nil!63405) (Cons!63405 (h!69853 Regex!15743) (t!376857 List!63529)) )
))
(declare-datatypes ((Context!10254 0))(
  ( (Context!10255 (exprs!5627 List!63529)) )
))
(declare-fun lt!2283408 () (InoxSet Context!10254))

(declare-fun matchZipper!1881 ((InoxSet Context!10254) List!63528) Bool)

(assert (=> b!5735867 (= e!3526198 (matchZipper!1881 lt!2283408 (t!376856 s!2326)))))

(declare-fun b!5735868 () Bool)

(declare-fun res!2422234 () Bool)

(declare-fun e!3526185 () Bool)

(assert (=> b!5735868 (=> res!2422234 e!3526185)))

(declare-datatypes ((List!63530 0))(
  ( (Nil!63406) (Cons!63406 (h!69854 Context!10254) (t!376858 List!63530)) )
))
(declare-fun zl!343 () List!63530)

(declare-fun isEmpty!35285 (List!63530) Bool)

(assert (=> b!5735868 (= res!2422234 (not (isEmpty!35285 (t!376858 zl!343))))))

(declare-fun b!5735869 () Bool)

(declare-fun e!3526211 () Bool)

(assert (=> b!5735869 (= e!3526211 (not (matchZipper!1881 lt!2283408 (t!376856 s!2326))))))

(declare-fun b!5735870 () Bool)

(declare-fun e!3526201 () Bool)

(assert (=> b!5735870 (= e!3526201 (not e!3526185))))

(declare-fun res!2422232 () Bool)

(assert (=> b!5735870 (=> res!2422232 e!3526185)))

(get-info :version)

(assert (=> b!5735870 (= res!2422232 (not ((_ is Cons!63406) zl!343)))))

(declare-fun lt!2283441 () Bool)

(declare-fun matchRSpec!2846 (Regex!15743 List!63528) Bool)

(assert (=> b!5735870 (= lt!2283441 (matchRSpec!2846 r!7292 s!2326))))

(declare-fun matchR!7928 (Regex!15743 List!63528) Bool)

(assert (=> b!5735870 (= lt!2283441 (matchR!7928 r!7292 s!2326))))

(declare-datatypes ((Unit!156504 0))(
  ( (Unit!156505) )
))
(declare-fun lt!2283442 () Unit!156504)

(declare-fun mainMatchTheorem!2846 (Regex!15743 List!63528) Unit!156504)

(assert (=> b!5735870 (= lt!2283442 (mainMatchTheorem!2846 r!7292 s!2326))))

(declare-fun b!5735871 () Bool)

(declare-fun e!3526186 () Bool)

(declare-fun e!3526210 () Bool)

(assert (=> b!5735871 (= e!3526186 e!3526210)))

(declare-fun res!2422240 () Bool)

(assert (=> b!5735871 (=> res!2422240 e!3526210)))

(assert (=> b!5735871 (= res!2422240 e!3526211)))

(declare-fun res!2422226 () Bool)

(assert (=> b!5735871 (=> (not res!2422226) (not e!3526211))))

(declare-fun lt!2283406 () Bool)

(assert (=> b!5735871 (= res!2422226 (not lt!2283406))))

(declare-fun lt!2283450 () (InoxSet Context!10254))

(assert (=> b!5735871 (= lt!2283406 (matchZipper!1881 lt!2283450 (t!376856 s!2326)))))

(declare-fun b!5735872 () Bool)

(declare-fun res!2422242 () Bool)

(declare-fun e!3526193 () Bool)

(assert (=> b!5735872 (=> res!2422242 e!3526193)))

(declare-fun e!3526212 () Bool)

(assert (=> b!5735872 (= res!2422242 e!3526212)))

(declare-fun res!2422243 () Bool)

(assert (=> b!5735872 (=> (not res!2422243) (not e!3526212))))

(assert (=> b!5735872 (= res!2422243 ((_ is Concat!24588) (regOne!31998 r!7292)))))

(declare-fun b!5735873 () Bool)

(declare-fun res!2422239 () Bool)

(assert (=> b!5735873 (=> res!2422239 e!3526186)))

(declare-fun z!1189 () (InoxSet Context!10254))

(assert (=> b!5735873 (= res!2422239 (not (matchZipper!1881 z!1189 s!2326)))))

(declare-fun b!5735874 () Bool)

(declare-fun e!3526188 () Bool)

(declare-fun e!3526187 () Bool)

(assert (=> b!5735874 (= e!3526188 e!3526187)))

(declare-fun res!2422249 () Bool)

(assert (=> b!5735874 (=> res!2422249 e!3526187)))

(declare-fun lt!2283390 () Context!10254)

(declare-fun lt!2283404 () Regex!15743)

(declare-fun unfocusZipper!1485 (List!63530) Regex!15743)

(assert (=> b!5735874 (= res!2422249 (not (= (unfocusZipper!1485 (Cons!63406 lt!2283390 Nil!63406)) lt!2283404)))))

(declare-fun lt!2283424 () Regex!15743)

(assert (=> b!5735874 (= lt!2283404 (Concat!24588 (reg!16072 (regOne!31998 r!7292)) lt!2283424))))

(declare-fun e!3526189 () Bool)

(declare-fun e!3526200 () Bool)

(assert (=> b!5735875 (= e!3526189 e!3526200)))

(declare-fun res!2422245 () Bool)

(assert (=> b!5735875 (=> res!2422245 e!3526200)))

(declare-fun lt!2283421 () tuple2!65680)

(assert (=> b!5735875 (= res!2422245 (not (matchR!7928 (reg!16072 (regOne!31998 r!7292)) (_1!36143 lt!2283421))))))

(declare-fun lt!2283391 () List!63528)

(declare-fun ++!13958 (List!63528 List!63528) List!63528)

(assert (=> b!5735875 (= (++!13958 lt!2283391 (_2!36143 lt!2283414)) (++!13958 (_1!36143 lt!2283421) (++!13958 (_2!36143 lt!2283421) (_2!36143 lt!2283414))))))

(assert (=> b!5735875 (= lt!2283391 (++!13958 (_1!36143 lt!2283421) (_2!36143 lt!2283421)))))

(declare-fun lt!2283434 () Unit!156504)

(declare-fun lemmaConcatAssociativity!2886 (List!63528 List!63528 List!63528) Unit!156504)

(assert (=> b!5735875 (= lt!2283434 (lemmaConcatAssociativity!2886 (_1!36143 lt!2283421) (_2!36143 lt!2283421) (_2!36143 lt!2283414)))))

(declare-datatypes ((Option!15752 0))(
  ( (None!15751) (Some!15751 (v!51806 tuple2!65680)) )
))
(declare-fun lt!2283427 () Option!15752)

(declare-fun get!21870 (Option!15752) tuple2!65680)

(assert (=> b!5735875 (= lt!2283421 (get!21870 lt!2283427))))

(declare-fun Exists!2843 (Int) Bool)

(assert (=> b!5735875 (= (Exists!2843 lambda!310797) (Exists!2843 lambda!310799))))

(declare-fun lt!2283435 () Unit!156504)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!556 (Regex!15743 List!63528) Unit!156504)

(assert (=> b!5735875 (= lt!2283435 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!556 (reg!16072 (regOne!31998 r!7292)) (_1!36143 lt!2283414)))))

(assert (=> b!5735875 (= (Exists!2843 lambda!310797) (Exists!2843 lambda!310798))))

(declare-fun lt!2283419 () Unit!156504)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1472 (Regex!15743 Regex!15743 List!63528) Unit!156504)

(assert (=> b!5735875 (= lt!2283419 (lemmaExistCutMatchRandMatchRSpecEquivalent!1472 (reg!16072 (regOne!31998 r!7292)) lt!2283432 (_1!36143 lt!2283414)))))

(declare-fun isDefined!12455 (Option!15752) Bool)

(assert (=> b!5735875 (= (isDefined!12455 lt!2283427) (Exists!2843 lambda!310797))))

(declare-fun findConcatSeparation!2166 (Regex!15743 Regex!15743 List!63528 List!63528 List!63528) Option!15752)

(assert (=> b!5735875 (= lt!2283427 (findConcatSeparation!2166 (reg!16072 (regOne!31998 r!7292)) lt!2283432 Nil!63404 (_1!36143 lt!2283414) (_1!36143 lt!2283414)))))

(declare-fun lt!2283418 () Unit!156504)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1930 (Regex!15743 Regex!15743 List!63528) Unit!156504)

(assert (=> b!5735875 (= lt!2283418 (lemmaFindConcatSeparationEquivalentToExists!1930 (reg!16072 (regOne!31998 r!7292)) lt!2283432 (_1!36143 lt!2283414)))))

(assert (=> b!5735875 (matchRSpec!2846 lt!2283410 (_1!36143 lt!2283414))))

(declare-fun lt!2283449 () Unit!156504)

(assert (=> b!5735875 (= lt!2283449 (mainMatchTheorem!2846 lt!2283410 (_1!36143 lt!2283414)))))

(declare-fun e!3526192 () Bool)

(declare-fun b!5735876 () Bool)

(declare-fun tp!1586814 () Bool)

(declare-fun inv!82604 (Context!10254) Bool)

(assert (=> b!5735876 (= e!3526192 (and (inv!82604 (h!69854 zl!343)) e!3526208 tp!1586814))))

(declare-fun b!5735877 () Bool)

(declare-fun e!3526203 () Bool)

(declare-fun tp_is_empty!40739 () Bool)

(declare-fun tp!1586813 () Bool)

(assert (=> b!5735877 (= e!3526203 (and tp_is_empty!40739 tp!1586813))))

(declare-fun b!5735878 () Bool)

(declare-fun res!2422221 () Bool)

(assert (=> b!5735878 (=> res!2422221 e!3526185)))

(declare-fun generalisedUnion!1606 (List!63529) Regex!15743)

(declare-fun unfocusZipperList!1171 (List!63530) List!63529)

(assert (=> b!5735878 (= res!2422221 (not (= r!7292 (generalisedUnion!1606 (unfocusZipperList!1171 zl!343)))))))

(declare-fun b!5735879 () Bool)

(declare-fun e!3526194 () Unit!156504)

(declare-fun Unit!156506 () Unit!156504)

(assert (=> b!5735879 (= e!3526194 Unit!156506)))

(declare-fun lt!2283407 () Unit!156504)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!768 ((InoxSet Context!10254) (InoxSet Context!10254) List!63528) Unit!156504)

(assert (=> b!5735879 (= lt!2283407 (lemmaZipperConcatMatchesSameAsBothZippers!768 lt!2283450 lt!2283408 (t!376856 s!2326)))))

(declare-fun res!2422253 () Bool)

(assert (=> b!5735879 (= res!2422253 (matchZipper!1881 lt!2283450 (t!376856 s!2326)))))

(assert (=> b!5735879 (=> res!2422253 e!3526198)))

(assert (=> b!5735879 (= (matchZipper!1881 ((_ map or) lt!2283450 lt!2283408) (t!376856 s!2326)) e!3526198)))

(declare-fun setElem!38491 () Context!10254)

(declare-fun e!3526204 () Bool)

(declare-fun setNonEmpty!38491 () Bool)

(declare-fun setRes!38491 () Bool)

(declare-fun tp!1586811 () Bool)

(assert (=> setNonEmpty!38491 (= setRes!38491 (and tp!1586811 (inv!82604 setElem!38491) e!3526204))))

(declare-fun setRest!38491 () (InoxSet Context!10254))

(assert (=> setNonEmpty!38491 (= z!1189 ((_ map or) (store ((as const (Array Context!10254 Bool)) false) setElem!38491 true) setRest!38491))))

(declare-fun e!3526202 () Bool)

(assert (=> b!5735880 (= e!3526202 e!3526193)))

(declare-fun res!2422228 () Bool)

(assert (=> b!5735880 (=> res!2422228 e!3526193)))

(assert (=> b!5735880 (= res!2422228 (or (and ((_ is ElementMatch!15743) (regOne!31998 r!7292)) (= (c!1012223 (regOne!31998 r!7292)) (h!69852 s!2326))) ((_ is Union!15743) (regOne!31998 r!7292))))))

(declare-fun lt!2283451 () Unit!156504)

(assert (=> b!5735880 (= lt!2283451 e!3526194)))

(declare-fun c!1012222 () Bool)

(declare-fun lt!2283430 () Bool)

(assert (=> b!5735880 (= c!1012222 lt!2283430)))

(declare-fun nullable!5775 (Regex!15743) Bool)

(assert (=> b!5735880 (= lt!2283430 (nullable!5775 (h!69853 (exprs!5627 (h!69854 zl!343)))))))

(declare-fun lambda!310792 () Int)

(declare-fun flatMap!1356 ((InoxSet Context!10254) Int) (InoxSet Context!10254))

(declare-fun derivationStepZipperUp!1011 (Context!10254 C!31756) (InoxSet Context!10254))

(assert (=> b!5735880 (= (flatMap!1356 z!1189 lambda!310792) (derivationStepZipperUp!1011 (h!69854 zl!343) (h!69852 s!2326)))))

(declare-fun lt!2283447 () Unit!156504)

(declare-fun lemmaFlatMapOnSingletonSet!888 ((InoxSet Context!10254) Context!10254 Int) Unit!156504)

(assert (=> b!5735880 (= lt!2283447 (lemmaFlatMapOnSingletonSet!888 z!1189 (h!69854 zl!343) lambda!310792))))

(declare-fun lt!2283412 () Context!10254)

(assert (=> b!5735880 (= lt!2283408 (derivationStepZipperUp!1011 lt!2283412 (h!69852 s!2326)))))

(declare-fun derivationStepZipperDown!1085 (Regex!15743 Context!10254 C!31756) (InoxSet Context!10254))

(assert (=> b!5735880 (= lt!2283450 (derivationStepZipperDown!1085 (h!69853 (exprs!5627 (h!69854 zl!343))) lt!2283412 (h!69852 s!2326)))))

(assert (=> b!5735880 (= lt!2283412 (Context!10255 (t!376857 (exprs!5627 (h!69854 zl!343)))))))

(declare-fun lt!2283415 () (InoxSet Context!10254))

(assert (=> b!5735880 (= lt!2283415 (derivationStepZipperUp!1011 (Context!10255 (Cons!63405 (h!69853 (exprs!5627 (h!69854 zl!343))) (t!376857 (exprs!5627 (h!69854 zl!343))))) (h!69852 s!2326)))))

(declare-fun b!5735881 () Bool)

(declare-fun e!3526205 () Bool)

(declare-fun e!3526195 () Bool)

(assert (=> b!5735881 (= e!3526205 e!3526195)))

(declare-fun res!2422230 () Bool)

(assert (=> b!5735881 (=> res!2422230 e!3526195)))

(declare-fun lt!2283392 () (InoxSet Context!10254))

(declare-fun lt!2283409 () (InoxSet Context!10254))

(assert (=> b!5735881 (= res!2422230 (not (= lt!2283392 lt!2283409)))))

(declare-fun lt!2283439 () (InoxSet Context!10254))

(assert (=> b!5735881 (= (flatMap!1356 lt!2283439 lambda!310792) (derivationStepZipperUp!1011 lt!2283390 (h!69852 s!2326)))))

(declare-fun lt!2283395 () Unit!156504)

(assert (=> b!5735881 (= lt!2283395 (lemmaFlatMapOnSingletonSet!888 lt!2283439 lt!2283390 lambda!310792))))

(declare-fun lt!2283420 () (InoxSet Context!10254))

(assert (=> b!5735881 (= lt!2283420 (derivationStepZipperUp!1011 lt!2283390 (h!69852 s!2326)))))

(declare-fun derivationStepZipper!1826 ((InoxSet Context!10254) C!31756) (InoxSet Context!10254))

(assert (=> b!5735881 (= lt!2283392 (derivationStepZipper!1826 lt!2283439 (h!69852 s!2326)))))

(assert (=> b!5735881 (= lt!2283439 (store ((as const (Array Context!10254 Bool)) false) lt!2283390 true))))

(declare-fun lt!2283433 () List!63529)

(assert (=> b!5735881 (= lt!2283390 (Context!10255 (Cons!63405 (reg!16072 (regOne!31998 r!7292)) lt!2283433)))))

(declare-fun e!3526197 () Bool)

(assert (=> b!5735882 (= e!3526197 e!3526189)))

(declare-fun res!2422252 () Bool)

(assert (=> b!5735882 (=> res!2422252 e!3526189)))

(assert (=> b!5735882 (= res!2422252 (not (matchR!7928 lt!2283410 (_1!36143 lt!2283414))))))

(declare-fun lt!2283393 () Option!15752)

(assert (=> b!5735882 (= lt!2283414 (get!21870 lt!2283393))))

(assert (=> b!5735882 (= (Exists!2843 lambda!310795) (Exists!2843 lambda!310796))))

(declare-fun lt!2283452 () Unit!156504)

(assert (=> b!5735882 (= lt!2283452 (lemmaExistCutMatchRandMatchRSpecEquivalent!1472 lt!2283410 (regTwo!31998 r!7292) s!2326))))

(assert (=> b!5735882 (= (isDefined!12455 lt!2283393) (Exists!2843 lambda!310795))))

(assert (=> b!5735882 (= lt!2283393 (findConcatSeparation!2166 lt!2283410 (regTwo!31998 r!7292) Nil!63404 s!2326 s!2326))))

(declare-fun lt!2283444 () Unit!156504)

(assert (=> b!5735882 (= lt!2283444 (lemmaFindConcatSeparationEquivalentToExists!1930 lt!2283410 (regTwo!31998 r!7292) s!2326))))

(declare-fun lt!2283402 () Regex!15743)

(assert (=> b!5735882 (matchRSpec!2846 lt!2283402 s!2326)))

(declare-fun lt!2283437 () Unit!156504)

(assert (=> b!5735882 (= lt!2283437 (mainMatchTheorem!2846 lt!2283402 s!2326))))

(assert (=> b!5735882 (matchR!7928 lt!2283402 s!2326)))

(assert (=> b!5735882 (= lt!2283402 (Concat!24588 lt!2283410 (regTwo!31998 r!7292)))))

(assert (=> b!5735882 (= lt!2283410 (Concat!24588 (reg!16072 (regOne!31998 r!7292)) lt!2283432))))

(declare-fun lt!2283388 () Unit!156504)

(declare-fun lemmaConcatAssociative!96 (Regex!15743 Regex!15743 Regex!15743 List!63528) Unit!156504)

(assert (=> b!5735882 (= lt!2283388 (lemmaConcatAssociative!96 (reg!16072 (regOne!31998 r!7292)) lt!2283432 (regTwo!31998 r!7292) s!2326))))

(declare-fun e!3526199 () Bool)

(assert (=> b!5735882 e!3526199))

(declare-fun res!2422248 () Bool)

(assert (=> b!5735882 (=> (not res!2422248) (not e!3526199))))

(declare-fun lt!2283429 () List!63528)

(assert (=> b!5735882 (= res!2422248 (matchR!7928 lt!2283404 lt!2283429))))

(declare-fun lt!2283422 () tuple2!65680)

(declare-fun lt!2283423 () Unit!156504)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!280 (Regex!15743 Regex!15743 List!63528 List!63528) Unit!156504)

(assert (=> b!5735882 (= lt!2283423 (lemmaTwoRegexMatchThenConcatMatchesConcatString!280 (reg!16072 (regOne!31998 r!7292)) lt!2283424 (_1!36143 lt!2283422) (_2!36143 lt!2283422)))))

(assert (=> b!5735882 (matchR!7928 lt!2283424 (_2!36143 lt!2283422))))

(declare-fun lt!2283448 () Unit!156504)

(declare-fun lt!2283416 () (InoxSet Context!10254))

(declare-fun lt!2283403 () List!63530)

(declare-fun theoremZipperRegexEquiv!663 ((InoxSet Context!10254) List!63530 Regex!15743 List!63528) Unit!156504)

(assert (=> b!5735882 (= lt!2283448 (theoremZipperRegexEquiv!663 lt!2283416 lt!2283403 lt!2283424 (_2!36143 lt!2283422)))))

(assert (=> b!5735882 (matchR!7928 (reg!16072 (regOne!31998 r!7292)) (_1!36143 lt!2283422))))

(declare-fun lt!2283399 () List!63530)

(declare-fun lt!2283454 () (InoxSet Context!10254))

(declare-fun lt!2283425 () Unit!156504)

(assert (=> b!5735882 (= lt!2283425 (theoremZipperRegexEquiv!663 lt!2283454 lt!2283399 (reg!16072 (regOne!31998 r!7292)) (_1!36143 lt!2283422)))))

(declare-fun lt!2283428 () List!63529)

(declare-fun ++!13959 (List!63529 List!63529) List!63529)

(assert (=> b!5735882 (matchZipper!1881 (store ((as const (Array Context!10254 Bool)) false) (Context!10255 (++!13959 lt!2283428 lt!2283433)) true) lt!2283429)))

(declare-fun lt!2283431 () Unit!156504)

(declare-fun lambda!310794 () Int)

(declare-fun lemmaConcatPreservesForall!312 (List!63529 List!63529 Int) Unit!156504)

(assert (=> b!5735882 (= lt!2283431 (lemmaConcatPreservesForall!312 lt!2283428 lt!2283433 lambda!310794))))

(declare-fun lt!2283445 () Context!10254)

(declare-fun lt!2283389 () Context!10254)

(declare-fun lt!2283394 () Unit!156504)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!142 (Context!10254 Context!10254 List!63528 List!63528) Unit!156504)

(assert (=> b!5735882 (= lt!2283394 (lemmaConcatenateContextMatchesConcatOfStrings!142 lt!2283445 lt!2283389 (_1!36143 lt!2283422) (_2!36143 lt!2283422)))))

(declare-fun b!5735883 () Bool)

(declare-fun res!2422227 () Bool)

(assert (=> b!5735883 (=> res!2422227 e!3526185)))

(declare-fun generalisedConcat!1358 (List!63529) Regex!15743)

(assert (=> b!5735883 (= res!2422227 (not (= r!7292 (generalisedConcat!1358 (exprs!5627 (h!69854 zl!343))))))))

(declare-fun b!5735884 () Bool)

(declare-fun Unit!156507 () Unit!156504)

(assert (=> b!5735884 (= e!3526194 Unit!156507)))

(declare-fun b!5735885 () Bool)

(declare-fun e!3526206 () Bool)

(assert (=> b!5735885 (= e!3526206 e!3526188)))

(declare-fun res!2422220 () Bool)

(assert (=> b!5735885 (=> res!2422220 e!3526188)))

(assert (=> b!5735885 (= res!2422220 (not (= r!7292 lt!2283424)))))

(assert (=> b!5735885 (= lt!2283424 (Concat!24588 lt!2283432 (regTwo!31998 r!7292)))))

(declare-fun b!5735886 () Bool)

(declare-fun res!2422224 () Bool)

(assert (=> b!5735886 (=> res!2422224 e!3526197)))

(assert (=> b!5735886 (= res!2422224 (not (matchZipper!1881 lt!2283454 (_1!36143 lt!2283422))))))

(declare-fun b!5735887 () Bool)

(declare-fun e!3526196 () Bool)

(declare-fun tp!1586809 () Bool)

(declare-fun tp!1586807 () Bool)

(assert (=> b!5735887 (= e!3526196 (and tp!1586809 tp!1586807))))

(declare-fun b!5735888 () Bool)

(declare-fun res!2422222 () Bool)

(assert (=> b!5735888 (=> res!2422222 e!3526186)))

(assert (=> b!5735888 (= res!2422222 (not lt!2283430))))

(declare-fun b!5735889 () Bool)

(declare-fun tp!1586806 () Bool)

(declare-fun tp!1586810 () Bool)

(assert (=> b!5735889 (= e!3526196 (and tp!1586806 tp!1586810))))

(declare-fun b!5735890 () Bool)

(declare-fun lt!2283396 () Bool)

(assert (=> b!5735890 (= e!3526199 lt!2283396)))

(declare-fun b!5735891 () Bool)

(declare-fun res!2422241 () Bool)

(assert (=> b!5735891 (=> res!2422241 e!3526200)))

(assert (=> b!5735891 (= res!2422241 (not (matchR!7928 lt!2283432 (_2!36143 lt!2283421))))))

(declare-fun b!5735892 () Bool)

(declare-fun res!2422255 () Bool)

(declare-fun e!3526209 () Bool)

(assert (=> b!5735892 (=> (not res!2422255) (not e!3526209))))

(declare-fun toList!9527 ((InoxSet Context!10254)) List!63530)

(assert (=> b!5735892 (= res!2422255 (= (toList!9527 z!1189) zl!343))))

(declare-fun b!5735893 () Bool)

(assert (=> b!5735893 (= e!3526193 e!3526205)))

(declare-fun res!2422236 () Bool)

(assert (=> b!5735893 (=> res!2422236 e!3526205)))

(assert (=> b!5735893 (= res!2422236 (not (= lt!2283450 lt!2283409)))))

(assert (=> b!5735893 (= lt!2283409 (derivationStepZipperDown!1085 (reg!16072 (regOne!31998 r!7292)) lt!2283389 (h!69852 s!2326)))))

(assert (=> b!5735893 (= lt!2283389 (Context!10255 lt!2283433))))

(assert (=> b!5735893 (= lt!2283433 (Cons!63405 lt!2283432 (t!376857 (exprs!5627 (h!69854 zl!343)))))))

(assert (=> b!5735893 (= lt!2283432 (Star!15743 (reg!16072 (regOne!31998 r!7292))))))

(declare-fun b!5735894 () Bool)

(assert (=> b!5735894 (= e!3526212 (nullable!5775 (regOne!31998 (regOne!31998 r!7292))))))

(declare-fun b!5735895 () Bool)

(assert (=> b!5735895 (= e!3526196 tp_is_empty!40739)))

(declare-fun b!5735896 () Bool)

(declare-fun res!2422254 () Bool)

(assert (=> b!5735896 (=> res!2422254 e!3526202)))

(declare-fun isEmpty!35286 (List!63529) Bool)

(assert (=> b!5735896 (= res!2422254 (isEmpty!35286 (t!376857 (exprs!5627 (h!69854 zl!343)))))))

(declare-fun b!5735897 () Bool)

(declare-fun res!2422233 () Bool)

(assert (=> b!5735897 (=> res!2422233 e!3526197)))

(assert (=> b!5735897 (= res!2422233 (not (matchZipper!1881 lt!2283416 (_2!36143 lt!2283422))))))

(declare-fun res!2422250 () Bool)

(assert (=> start!590268 (=> (not res!2422250) (not e!3526209))))

(declare-fun validRegex!7479 (Regex!15743) Bool)

(assert (=> start!590268 (= res!2422250 (validRegex!7479 r!7292))))

(assert (=> start!590268 e!3526209))

(assert (=> start!590268 e!3526196))

(declare-fun condSetEmpty!38491 () Bool)

(assert (=> start!590268 (= condSetEmpty!38491 (= z!1189 ((as const (Array Context!10254 Bool)) false)))))

(assert (=> start!590268 setRes!38491))

(assert (=> start!590268 e!3526192))

(assert (=> start!590268 e!3526203))

(declare-fun b!5735898 () Bool)

(declare-fun res!2422244 () Bool)

(assert (=> b!5735898 (=> res!2422244 e!3526210)))

(declare-fun lt!2283446 () Bool)

(assert (=> b!5735898 (= res!2422244 (or (not lt!2283406) (not lt!2283446)))))

(declare-fun setIsEmpty!38491 () Bool)

(assert (=> setIsEmpty!38491 setRes!38491))

(declare-fun b!5735899 () Bool)

(declare-fun res!2422246 () Bool)

(assert (=> b!5735899 (=> res!2422246 e!3526185)))

(assert (=> b!5735899 (= res!2422246 (or ((_ is EmptyExpr!15743) r!7292) ((_ is EmptyLang!15743) r!7292) ((_ is ElementMatch!15743) r!7292) ((_ is Union!15743) r!7292) (not ((_ is Concat!24588) r!7292))))))

(declare-fun b!5735900 () Bool)

(declare-fun tp!1586808 () Bool)

(assert (=> b!5735900 (= e!3526204 tp!1586808)))

(declare-fun b!5735901 () Bool)

(assert (=> b!5735901 (= e!3526200 true)))

(assert (=> b!5735901 (matchR!7928 lt!2283432 lt!2283391)))

(declare-fun lt!2283405 () Unit!156504)

(declare-fun lemmaStarApp!94 (Regex!15743 List!63528 List!63528) Unit!156504)

(assert (=> b!5735901 (= lt!2283405 (lemmaStarApp!94 (reg!16072 (regOne!31998 r!7292)) (_1!36143 lt!2283421) (_2!36143 lt!2283421)))))

(declare-fun b!5735902 () Bool)

(declare-fun tp!1586812 () Bool)

(assert (=> b!5735902 (= e!3526196 tp!1586812)))

(declare-fun b!5735903 () Bool)

(declare-fun e!3526190 () Bool)

(assert (=> b!5735903 (= e!3526190 e!3526197)))

(declare-fun res!2422223 () Bool)

(assert (=> b!5735903 (=> res!2422223 e!3526197)))

(assert (=> b!5735903 (= res!2422223 (not (= s!2326 lt!2283429)))))

(assert (=> b!5735903 (= lt!2283429 (++!13958 (_1!36143 lt!2283422) (_2!36143 lt!2283422)))))

(declare-fun lt!2283436 () Option!15752)

(assert (=> b!5735903 (= lt!2283422 (get!21870 lt!2283436))))

(assert (=> b!5735903 (isDefined!12455 lt!2283436)))

(declare-fun findConcatSeparationZippers!130 ((InoxSet Context!10254) (InoxSet Context!10254) List!63528 List!63528 List!63528) Option!15752)

(assert (=> b!5735903 (= lt!2283436 (findConcatSeparationZippers!130 lt!2283454 lt!2283416 Nil!63404 s!2326 s!2326))))

(declare-fun lt!2283440 () Unit!156504)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!130 ((InoxSet Context!10254) Context!10254 List!63528) Unit!156504)

(assert (=> b!5735903 (= lt!2283440 (lemmaConcatZipperMatchesStringThenFindConcatDefined!130 lt!2283454 lt!2283389 s!2326))))

(declare-fun b!5735904 () Bool)

(declare-fun e!3526207 () Bool)

(assert (=> b!5735904 (= e!3526207 e!3526186)))

(declare-fun res!2422256 () Bool)

(assert (=> b!5735904 (=> res!2422256 e!3526186)))

(assert (=> b!5735904 (= res!2422256 lt!2283441)))

(assert (=> b!5735904 (= lt!2283396 (matchRSpec!2846 lt!2283404 s!2326))))

(assert (=> b!5735904 (= lt!2283396 (matchR!7928 lt!2283404 s!2326))))

(declare-fun lt!2283443 () Unit!156504)

(assert (=> b!5735904 (= lt!2283443 (mainMatchTheorem!2846 lt!2283404 s!2326))))

(assert (=> b!5735905 (= e!3526210 e!3526190)))

(declare-fun res!2422238 () Bool)

(assert (=> b!5735905 (=> res!2422238 e!3526190)))

(declare-fun appendTo!122 ((InoxSet Context!10254) Context!10254) (InoxSet Context!10254))

(assert (=> b!5735905 (= res!2422238 (not (= (appendTo!122 lt!2283454 lt!2283389) lt!2283439)))))

(declare-fun lambda!310793 () Int)

(declare-fun map!14535 ((InoxSet Context!10254) Int) (InoxSet Context!10254))

(assert (=> b!5735905 (= (map!14535 lt!2283454 lambda!310793) (store ((as const (Array Context!10254 Bool)) false) (Context!10255 (++!13959 lt!2283428 lt!2283433)) true))))

(declare-fun lt!2283438 () Unit!156504)

(assert (=> b!5735905 (= lt!2283438 (lemmaConcatPreservesForall!312 lt!2283428 lt!2283433 lambda!310794))))

(declare-fun lt!2283400 () Unit!156504)

(declare-fun lemmaMapOnSingletonSet!138 ((InoxSet Context!10254) Context!10254 Int) Unit!156504)

(assert (=> b!5735905 (= lt!2283400 (lemmaMapOnSingletonSet!138 lt!2283454 lt!2283445 lambda!310793))))

(declare-fun b!5735906 () Bool)

(declare-fun res!2422225 () Bool)

(assert (=> b!5735906 (=> res!2422225 e!3526193)))

(assert (=> b!5735906 (= res!2422225 (or ((_ is Concat!24588) (regOne!31998 r!7292)) (not ((_ is Star!15743) (regOne!31998 r!7292)))))))

(declare-fun b!5735907 () Bool)

(assert (=> b!5735907 (= e!3526195 e!3526206)))

(declare-fun res!2422251 () Bool)

(assert (=> b!5735907 (=> res!2422251 e!3526206)))

(assert (=> b!5735907 (= res!2422251 (not (= lt!2283446 (matchZipper!1881 lt!2283392 (t!376856 s!2326)))))))

(assert (=> b!5735907 (= lt!2283446 (matchZipper!1881 lt!2283439 s!2326))))

(declare-fun b!5735908 () Bool)

(declare-fun e!3526191 () Bool)

(assert (=> b!5735908 (= e!3526191 e!3526207)))

(declare-fun res!2422247 () Bool)

(assert (=> b!5735908 (=> res!2422247 e!3526207)))

(assert (=> b!5735908 (= res!2422247 (not (= (unfocusZipper!1485 lt!2283403) lt!2283424)))))

(assert (=> b!5735908 (= lt!2283403 (Cons!63406 lt!2283389 Nil!63406))))

(declare-fun b!5735909 () Bool)

(assert (=> b!5735909 (= e!3526187 e!3526191)))

(declare-fun res!2422257 () Bool)

(assert (=> b!5735909 (=> res!2422257 e!3526191)))

(assert (=> b!5735909 (= res!2422257 (not (= (unfocusZipper!1485 lt!2283399) (reg!16072 (regOne!31998 r!7292)))))))

(assert (=> b!5735909 (= lt!2283399 (Cons!63406 lt!2283445 Nil!63406))))

(assert (=> b!5735909 (= (flatMap!1356 lt!2283416 lambda!310792) (derivationStepZipperUp!1011 lt!2283389 (h!69852 s!2326)))))

(declare-fun lt!2283413 () Unit!156504)

(assert (=> b!5735909 (= lt!2283413 (lemmaFlatMapOnSingletonSet!888 lt!2283416 lt!2283389 lambda!310792))))

(assert (=> b!5735909 (= (flatMap!1356 lt!2283454 lambda!310792) (derivationStepZipperUp!1011 lt!2283445 (h!69852 s!2326)))))

(declare-fun lt!2283411 () Unit!156504)

(assert (=> b!5735909 (= lt!2283411 (lemmaFlatMapOnSingletonSet!888 lt!2283454 lt!2283445 lambda!310792))))

(declare-fun lt!2283398 () (InoxSet Context!10254))

(assert (=> b!5735909 (= lt!2283398 (derivationStepZipperUp!1011 lt!2283389 (h!69852 s!2326)))))

(declare-fun lt!2283453 () (InoxSet Context!10254))

(assert (=> b!5735909 (= lt!2283453 (derivationStepZipperUp!1011 lt!2283445 (h!69852 s!2326)))))

(assert (=> b!5735909 (= lt!2283416 (store ((as const (Array Context!10254 Bool)) false) lt!2283389 true))))

(assert (=> b!5735909 (= lt!2283454 (store ((as const (Array Context!10254 Bool)) false) lt!2283445 true))))

(assert (=> b!5735909 (= lt!2283445 (Context!10255 lt!2283428))))

(assert (=> b!5735909 (= lt!2283428 (Cons!63405 (reg!16072 (regOne!31998 r!7292)) Nil!63405))))

(assert (=> b!5735910 (= e!3526185 e!3526202)))

(declare-fun res!2422235 () Bool)

(assert (=> b!5735910 (=> res!2422235 e!3526202)))

(declare-fun lt!2283401 () Bool)

(assert (=> b!5735910 (= res!2422235 (or (not (= lt!2283441 lt!2283401)) ((_ is Nil!63404) s!2326)))))

(assert (=> b!5735910 (= (Exists!2843 lambda!310790) (Exists!2843 lambda!310791))))

(declare-fun lt!2283417 () Unit!156504)

(assert (=> b!5735910 (= lt!2283417 (lemmaExistCutMatchRandMatchRSpecEquivalent!1472 (regOne!31998 r!7292) (regTwo!31998 r!7292) s!2326))))

(assert (=> b!5735910 (= lt!2283401 (Exists!2843 lambda!310790))))

(assert (=> b!5735910 (= lt!2283401 (isDefined!12455 (findConcatSeparation!2166 (regOne!31998 r!7292) (regTwo!31998 r!7292) Nil!63404 s!2326 s!2326)))))

(declare-fun lt!2283426 () Unit!156504)

(assert (=> b!5735910 (= lt!2283426 (lemmaFindConcatSeparationEquivalentToExists!1930 (regOne!31998 r!7292) (regTwo!31998 r!7292) s!2326))))

(declare-fun b!5735911 () Bool)

(assert (=> b!5735911 (= e!3526209 e!3526201)))

(declare-fun res!2422237 () Bool)

(assert (=> b!5735911 (=> (not res!2422237) (not e!3526201))))

(declare-fun lt!2283397 () Regex!15743)

(assert (=> b!5735911 (= res!2422237 (= r!7292 lt!2283397))))

(assert (=> b!5735911 (= lt!2283397 (unfocusZipper!1485 zl!343))))

(declare-fun b!5735912 () Bool)

(declare-fun res!2422229 () Bool)

(assert (=> b!5735912 (=> res!2422229 e!3526185)))

(assert (=> b!5735912 (= res!2422229 (not ((_ is Cons!63405) (exprs!5627 (h!69854 zl!343)))))))

(declare-fun b!5735913 () Bool)

(declare-fun res!2422231 () Bool)

(assert (=> b!5735913 (=> res!2422231 e!3526206)))

(assert (=> b!5735913 (= res!2422231 (not (= lt!2283397 r!7292)))))

(assert (= (and start!590268 res!2422250) b!5735892))

(assert (= (and b!5735892 res!2422255) b!5735911))

(assert (= (and b!5735911 res!2422237) b!5735870))

(assert (= (and b!5735870 (not res!2422232)) b!5735868))

(assert (= (and b!5735868 (not res!2422234)) b!5735883))

(assert (= (and b!5735883 (not res!2422227)) b!5735912))

(assert (= (and b!5735912 (not res!2422229)) b!5735878))

(assert (= (and b!5735878 (not res!2422221)) b!5735899))

(assert (= (and b!5735899 (not res!2422246)) b!5735910))

(assert (= (and b!5735910 (not res!2422235)) b!5735896))

(assert (= (and b!5735896 (not res!2422254)) b!5735880))

(assert (= (and b!5735880 c!1012222) b!5735879))

(assert (= (and b!5735880 (not c!1012222)) b!5735884))

(assert (= (and b!5735879 (not res!2422253)) b!5735867))

(assert (= (and b!5735880 (not res!2422228)) b!5735872))

(assert (= (and b!5735872 res!2422243) b!5735894))

(assert (= (and b!5735872 (not res!2422242)) b!5735906))

(assert (= (and b!5735906 (not res!2422225)) b!5735893))

(assert (= (and b!5735893 (not res!2422236)) b!5735881))

(assert (= (and b!5735881 (not res!2422230)) b!5735907))

(assert (= (and b!5735907 (not res!2422251)) b!5735913))

(assert (= (and b!5735913 (not res!2422231)) b!5735885))

(assert (= (and b!5735885 (not res!2422220)) b!5735874))

(assert (= (and b!5735874 (not res!2422249)) b!5735909))

(assert (= (and b!5735909 (not res!2422257)) b!5735908))

(assert (= (and b!5735908 (not res!2422247)) b!5735904))

(assert (= (and b!5735904 (not res!2422256)) b!5735873))

(assert (= (and b!5735873 (not res!2422239)) b!5735888))

(assert (= (and b!5735888 (not res!2422222)) b!5735871))

(assert (= (and b!5735871 res!2422226) b!5735869))

(assert (= (and b!5735871 (not res!2422240)) b!5735898))

(assert (= (and b!5735898 (not res!2422244)) b!5735905))

(assert (= (and b!5735905 (not res!2422238)) b!5735903))

(assert (= (and b!5735903 (not res!2422223)) b!5735886))

(assert (= (and b!5735886 (not res!2422224)) b!5735897))

(assert (= (and b!5735897 (not res!2422233)) b!5735882))

(assert (= (and b!5735882 res!2422248) b!5735890))

(assert (= (and b!5735882 (not res!2422252)) b!5735875))

(assert (= (and b!5735875 (not res!2422245)) b!5735891))

(assert (= (and b!5735891 (not res!2422241)) b!5735901))

(assert (= (and start!590268 ((_ is ElementMatch!15743) r!7292)) b!5735895))

(assert (= (and start!590268 ((_ is Concat!24588) r!7292)) b!5735887))

(assert (= (and start!590268 ((_ is Star!15743) r!7292)) b!5735902))

(assert (= (and start!590268 ((_ is Union!15743) r!7292)) b!5735889))

(assert (= (and start!590268 condSetEmpty!38491) setIsEmpty!38491))

(assert (= (and start!590268 (not condSetEmpty!38491)) setNonEmpty!38491))

(assert (= setNonEmpty!38491 b!5735900))

(assert (= b!5735876 b!5735866))

(assert (= (and start!590268 ((_ is Cons!63406) zl!343)) b!5735876))

(assert (= (and start!590268 ((_ is Cons!63404) s!2326)) b!5735877))

(declare-fun m!6687800 () Bool)

(assert (=> b!5735868 m!6687800))

(declare-fun m!6687802 () Bool)

(assert (=> b!5735901 m!6687802))

(declare-fun m!6687804 () Bool)

(assert (=> b!5735901 m!6687804))

(declare-fun m!6687806 () Bool)

(assert (=> b!5735871 m!6687806))

(declare-fun m!6687808 () Bool)

(assert (=> b!5735870 m!6687808))

(declare-fun m!6687810 () Bool)

(assert (=> b!5735870 m!6687810))

(declare-fun m!6687812 () Bool)

(assert (=> b!5735870 m!6687812))

(declare-fun m!6687814 () Bool)

(assert (=> b!5735881 m!6687814))

(declare-fun m!6687816 () Bool)

(assert (=> b!5735881 m!6687816))

(declare-fun m!6687818 () Bool)

(assert (=> b!5735881 m!6687818))

(declare-fun m!6687820 () Bool)

(assert (=> b!5735881 m!6687820))

(declare-fun m!6687822 () Bool)

(assert (=> b!5735881 m!6687822))

(declare-fun m!6687824 () Bool)

(assert (=> b!5735894 m!6687824))

(declare-fun m!6687826 () Bool)

(assert (=> b!5735875 m!6687826))

(declare-fun m!6687828 () Bool)

(assert (=> b!5735875 m!6687828))

(declare-fun m!6687830 () Bool)

(assert (=> b!5735875 m!6687830))

(declare-fun m!6687832 () Bool)

(assert (=> b!5735875 m!6687832))

(declare-fun m!6687834 () Bool)

(assert (=> b!5735875 m!6687834))

(declare-fun m!6687836 () Bool)

(assert (=> b!5735875 m!6687836))

(declare-fun m!6687838 () Bool)

(assert (=> b!5735875 m!6687838))

(declare-fun m!6687840 () Bool)

(assert (=> b!5735875 m!6687840))

(assert (=> b!5735875 m!6687834))

(declare-fun m!6687842 () Bool)

(assert (=> b!5735875 m!6687842))

(declare-fun m!6687844 () Bool)

(assert (=> b!5735875 m!6687844))

(assert (=> b!5735875 m!6687828))

(declare-fun m!6687846 () Bool)

(assert (=> b!5735875 m!6687846))

(declare-fun m!6687848 () Bool)

(assert (=> b!5735875 m!6687848))

(declare-fun m!6687850 () Bool)

(assert (=> b!5735875 m!6687850))

(declare-fun m!6687852 () Bool)

(assert (=> b!5735875 m!6687852))

(declare-fun m!6687854 () Bool)

(assert (=> b!5735875 m!6687854))

(assert (=> b!5735875 m!6687834))

(declare-fun m!6687856 () Bool)

(assert (=> b!5735875 m!6687856))

(declare-fun m!6687858 () Bool)

(assert (=> b!5735875 m!6687858))

(declare-fun m!6687860 () Bool)

(assert (=> b!5735897 m!6687860))

(declare-fun m!6687862 () Bool)

(assert (=> b!5735869 m!6687862))

(declare-fun m!6687864 () Bool)

(assert (=> b!5735905 m!6687864))

(declare-fun m!6687866 () Bool)

(assert (=> b!5735905 m!6687866))

(declare-fun m!6687868 () Bool)

(assert (=> b!5735905 m!6687868))

(declare-fun m!6687870 () Bool)

(assert (=> b!5735905 m!6687870))

(declare-fun m!6687872 () Bool)

(assert (=> b!5735905 m!6687872))

(declare-fun m!6687874 () Bool)

(assert (=> b!5735905 m!6687874))

(declare-fun m!6687876 () Bool)

(assert (=> b!5735873 m!6687876))

(assert (=> b!5735882 m!6687868))

(declare-fun m!6687878 () Bool)

(assert (=> b!5735882 m!6687878))

(declare-fun m!6687880 () Bool)

(assert (=> b!5735882 m!6687880))

(declare-fun m!6687882 () Bool)

(assert (=> b!5735882 m!6687882))

(assert (=> b!5735882 m!6687866))

(declare-fun m!6687884 () Bool)

(assert (=> b!5735882 m!6687884))

(declare-fun m!6687886 () Bool)

(assert (=> b!5735882 m!6687886))

(declare-fun m!6687888 () Bool)

(assert (=> b!5735882 m!6687888))

(declare-fun m!6687890 () Bool)

(assert (=> b!5735882 m!6687890))

(declare-fun m!6687892 () Bool)

(assert (=> b!5735882 m!6687892))

(declare-fun m!6687894 () Bool)

(assert (=> b!5735882 m!6687894))

(assert (=> b!5735882 m!6687870))

(declare-fun m!6687896 () Bool)

(assert (=> b!5735882 m!6687896))

(declare-fun m!6687898 () Bool)

(assert (=> b!5735882 m!6687898))

(declare-fun m!6687900 () Bool)

(assert (=> b!5735882 m!6687900))

(declare-fun m!6687902 () Bool)

(assert (=> b!5735882 m!6687902))

(declare-fun m!6687904 () Bool)

(assert (=> b!5735882 m!6687904))

(declare-fun m!6687906 () Bool)

(assert (=> b!5735882 m!6687906))

(declare-fun m!6687908 () Bool)

(assert (=> b!5735882 m!6687908))

(assert (=> b!5735882 m!6687880))

(assert (=> b!5735882 m!6687866))

(declare-fun m!6687910 () Bool)

(assert (=> b!5735882 m!6687910))

(declare-fun m!6687912 () Bool)

(assert (=> b!5735882 m!6687912))

(declare-fun m!6687914 () Bool)

(assert (=> b!5735882 m!6687914))

(declare-fun m!6687916 () Bool)

(assert (=> b!5735882 m!6687916))

(declare-fun m!6687918 () Bool)

(assert (=> b!5735880 m!6687918))

(declare-fun m!6687920 () Bool)

(assert (=> b!5735880 m!6687920))

(declare-fun m!6687922 () Bool)

(assert (=> b!5735880 m!6687922))

(declare-fun m!6687924 () Bool)

(assert (=> b!5735880 m!6687924))

(declare-fun m!6687926 () Bool)

(assert (=> b!5735880 m!6687926))

(declare-fun m!6687928 () Bool)

(assert (=> b!5735880 m!6687928))

(declare-fun m!6687930 () Bool)

(assert (=> b!5735880 m!6687930))

(declare-fun m!6687932 () Bool)

(assert (=> b!5735893 m!6687932))

(declare-fun m!6687934 () Bool)

(assert (=> b!5735891 m!6687934))

(declare-fun m!6687936 () Bool)

(assert (=> b!5735886 m!6687936))

(declare-fun m!6687938 () Bool)

(assert (=> b!5735883 m!6687938))

(declare-fun m!6687940 () Bool)

(assert (=> b!5735896 m!6687940))

(declare-fun m!6687942 () Bool)

(assert (=> b!5735903 m!6687942))

(declare-fun m!6687944 () Bool)

(assert (=> b!5735903 m!6687944))

(declare-fun m!6687946 () Bool)

(assert (=> b!5735903 m!6687946))

(declare-fun m!6687948 () Bool)

(assert (=> b!5735903 m!6687948))

(declare-fun m!6687950 () Bool)

(assert (=> b!5735903 m!6687950))

(declare-fun m!6687952 () Bool)

(assert (=> b!5735874 m!6687952))

(declare-fun m!6687954 () Bool)

(assert (=> b!5735910 m!6687954))

(declare-fun m!6687956 () Bool)

(assert (=> b!5735910 m!6687956))

(declare-fun m!6687958 () Bool)

(assert (=> b!5735910 m!6687958))

(declare-fun m!6687960 () Bool)

(assert (=> b!5735910 m!6687960))

(assert (=> b!5735910 m!6687960))

(declare-fun m!6687962 () Bool)

(assert (=> b!5735910 m!6687962))

(assert (=> b!5735910 m!6687954))

(declare-fun m!6687964 () Bool)

(assert (=> b!5735910 m!6687964))

(declare-fun m!6687966 () Bool)

(assert (=> b!5735908 m!6687966))

(declare-fun m!6687968 () Bool)

(assert (=> b!5735879 m!6687968))

(assert (=> b!5735879 m!6687806))

(declare-fun m!6687970 () Bool)

(assert (=> b!5735879 m!6687970))

(declare-fun m!6687972 () Bool)

(assert (=> b!5735892 m!6687972))

(declare-fun m!6687974 () Bool)

(assert (=> b!5735909 m!6687974))

(declare-fun m!6687976 () Bool)

(assert (=> b!5735909 m!6687976))

(declare-fun m!6687978 () Bool)

(assert (=> b!5735909 m!6687978))

(declare-fun m!6687980 () Bool)

(assert (=> b!5735909 m!6687980))

(declare-fun m!6687982 () Bool)

(assert (=> b!5735909 m!6687982))

(declare-fun m!6687984 () Bool)

(assert (=> b!5735909 m!6687984))

(declare-fun m!6687986 () Bool)

(assert (=> b!5735909 m!6687986))

(declare-fun m!6687988 () Bool)

(assert (=> b!5735909 m!6687988))

(declare-fun m!6687990 () Bool)

(assert (=> b!5735909 m!6687990))

(declare-fun m!6687992 () Bool)

(assert (=> setNonEmpty!38491 m!6687992))

(assert (=> b!5735867 m!6687862))

(declare-fun m!6687994 () Bool)

(assert (=> b!5735876 m!6687994))

(declare-fun m!6687996 () Bool)

(assert (=> start!590268 m!6687996))

(declare-fun m!6687998 () Bool)

(assert (=> b!5735911 m!6687998))

(declare-fun m!6688000 () Bool)

(assert (=> b!5735878 m!6688000))

(assert (=> b!5735878 m!6688000))

(declare-fun m!6688002 () Bool)

(assert (=> b!5735878 m!6688002))

(declare-fun m!6688004 () Bool)

(assert (=> b!5735907 m!6688004))

(declare-fun m!6688006 () Bool)

(assert (=> b!5735907 m!6688006))

(declare-fun m!6688008 () Bool)

(assert (=> b!5735904 m!6688008))

(declare-fun m!6688010 () Bool)

(assert (=> b!5735904 m!6688010))

(declare-fun m!6688012 () Bool)

(assert (=> b!5735904 m!6688012))

(check-sat (not b!5735897) (not b!5735894) (not b!5735909) (not b!5735876) (not b!5735882) (not b!5735905) (not b!5735896) (not b!5735879) (not b!5735907) (not b!5735869) (not b!5735910) (not b!5735881) (not setNonEmpty!38491) (not b!5735877) (not b!5735866) (not b!5735870) (not b!5735892) (not b!5735900) (not b!5735874) (not b!5735893) (not b!5735889) (not b!5735880) (not b!5735891) (not b!5735886) (not b!5735867) (not b!5735904) (not b!5735871) (not b!5735878) (not start!590268) tp_is_empty!40739 (not b!5735901) (not b!5735883) (not b!5735887) (not b!5735903) (not b!5735908) (not b!5735875) (not b!5735911) (not b!5735873) (not b!5735902) (not b!5735868))
(check-sat)

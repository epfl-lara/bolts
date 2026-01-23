; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574574 () Bool)

(assert start!574574)

(declare-fun b!5500850 () Bool)

(assert (=> b!5500850 true))

(declare-fun b!5500840 () Bool)

(declare-fun e!3402639 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31220 0))(
  ( (C!31221 (val!25312 Int)) )
))
(declare-datatypes ((Regex!15475 0))(
  ( (ElementMatch!15475 (c!960771 C!31220)) (Concat!24320 (regOne!31462 Regex!15475) (regTwo!31462 Regex!15475)) (EmptyExpr!15475) (Star!15475 (reg!15804 Regex!15475)) (EmptyLang!15475) (Union!15475 (regOne!31463 Regex!15475) (regTwo!31463 Regex!15475)) )
))
(declare-datatypes ((List!62724 0))(
  ( (Nil!62600) (Cons!62600 (h!69048 Regex!15475) (t!375961 List!62724)) )
))
(declare-datatypes ((Context!9718 0))(
  ( (Context!9719 (exprs!5359 List!62724)) )
))
(declare-fun lt!2243372 () (InoxSet Context!9718))

(declare-datatypes ((List!62725 0))(
  ( (Nil!62601) (Cons!62601 (h!69049 C!31220) (t!375962 List!62725)) )
))
(declare-fun s!2326 () List!62725)

(declare-fun matchZipper!1643 ((InoxSet Context!9718) List!62725) Bool)

(assert (=> b!5500840 (= e!3402639 (matchZipper!1643 lt!2243372 (t!375962 s!2326)))))

(declare-fun setIsEmpty!36457 () Bool)

(declare-fun setRes!36457 () Bool)

(assert (=> setIsEmpty!36457 setRes!36457))

(declare-fun res!2344789 () Bool)

(declare-fun e!3402649 () Bool)

(assert (=> start!574574 (=> (not res!2344789) (not e!3402649))))

(declare-fun r!7292 () Regex!15475)

(declare-fun validRegex!7211 (Regex!15475) Bool)

(assert (=> start!574574 (= res!2344789 (validRegex!7211 r!7292))))

(assert (=> start!574574 e!3402649))

(declare-fun e!3402644 () Bool)

(assert (=> start!574574 e!3402644))

(declare-fun condSetEmpty!36457 () Bool)

(declare-fun z!1189 () (InoxSet Context!9718))

(assert (=> start!574574 (= condSetEmpty!36457 (= z!1189 ((as const (Array Context!9718 Bool)) false)))))

(assert (=> start!574574 setRes!36457))

(declare-fun e!3402641 () Bool)

(assert (=> start!574574 e!3402641))

(declare-fun e!3402650 () Bool)

(assert (=> start!574574 e!3402650))

(declare-fun tp!1513613 () Bool)

(declare-fun b!5500841 () Bool)

(declare-datatypes ((List!62726 0))(
  ( (Nil!62602) (Cons!62602 (h!69050 Context!9718) (t!375963 List!62726)) )
))
(declare-fun zl!343 () List!62726)

(declare-fun e!3402642 () Bool)

(declare-fun inv!81934 (Context!9718) Bool)

(assert (=> b!5500841 (= e!3402641 (and (inv!81934 (h!69050 zl!343)) e!3402642 tp!1513613))))

(declare-fun b!5500842 () Bool)

(declare-fun res!2344787 () Bool)

(assert (=> b!5500842 (=> (not res!2344787) (not e!3402649))))

(declare-fun toList!9259 ((InoxSet Context!9718)) List!62726)

(assert (=> b!5500842 (= res!2344787 (= (toList!9259 z!1189) zl!343))))

(declare-fun b!5500843 () Bool)

(declare-fun tp_is_empty!40203 () Bool)

(declare-fun tp!1513618 () Bool)

(assert (=> b!5500843 (= e!3402650 (and tp_is_empty!40203 tp!1513618))))

(declare-fun b!5500844 () Bool)

(declare-fun e!3402648 () Bool)

(assert (=> b!5500844 (= e!3402649 (not e!3402648))))

(declare-fun res!2344781 () Bool)

(assert (=> b!5500844 (=> res!2344781 e!3402648)))

(get-info :version)

(assert (=> b!5500844 (= res!2344781 (not ((_ is Cons!62602) zl!343)))))

(declare-fun lt!2243377 () Bool)

(declare-fun matchRSpec!2578 (Regex!15475 List!62725) Bool)

(assert (=> b!5500844 (= lt!2243377 (matchRSpec!2578 r!7292 s!2326))))

(declare-fun matchR!7660 (Regex!15475 List!62725) Bool)

(assert (=> b!5500844 (= lt!2243377 (matchR!7660 r!7292 s!2326))))

(declare-datatypes ((Unit!155410 0))(
  ( (Unit!155411) )
))
(declare-fun lt!2243369 () Unit!155410)

(declare-fun mainMatchTheorem!2578 (Regex!15475 List!62725) Unit!155410)

(assert (=> b!5500844 (= lt!2243369 (mainMatchTheorem!2578 r!7292 s!2326))))

(declare-fun b!5500845 () Bool)

(declare-fun res!2344784 () Bool)

(assert (=> b!5500845 (=> res!2344784 e!3402648)))

(declare-fun generalisedConcat!1090 (List!62724) Regex!15475)

(assert (=> b!5500845 (= res!2344784 (not (= r!7292 (generalisedConcat!1090 (exprs!5359 (h!69050 zl!343))))))))

(declare-fun b!5500846 () Bool)

(declare-fun res!2344777 () Bool)

(assert (=> b!5500846 (=> res!2344777 e!3402648)))

(declare-fun generalisedUnion!1338 (List!62724) Regex!15475)

(declare-fun unfocusZipperList!903 (List!62726) List!62724)

(assert (=> b!5500846 (= res!2344777 (not (= r!7292 (generalisedUnion!1338 (unfocusZipperList!903 zl!343)))))))

(declare-fun b!5500847 () Bool)

(assert (=> b!5500847 (= e!3402644 tp_is_empty!40203)))

(declare-fun b!5500848 () Bool)

(declare-fun res!2344788 () Bool)

(assert (=> b!5500848 (=> res!2344788 e!3402648)))

(assert (=> b!5500848 (= res!2344788 (not ((_ is Cons!62600) (exprs!5359 (h!69050 zl!343)))))))

(declare-fun b!5500849 () Bool)

(declare-fun tp!1513616 () Bool)

(declare-fun tp!1513617 () Bool)

(assert (=> b!5500849 (= e!3402644 (and tp!1513616 tp!1513617))))

(declare-fun e!3402646 () Bool)

(declare-fun e!3402638 () Bool)

(assert (=> b!5500850 (= e!3402646 e!3402638)))

(declare-fun res!2344785 () Bool)

(assert (=> b!5500850 (=> res!2344785 e!3402638)))

(declare-fun lt!2243371 () (InoxSet Context!9718))

(declare-fun derivationStepZipper!1586 ((InoxSet Context!9718) C!31220) (InoxSet Context!9718))

(assert (=> b!5500850 (= res!2344785 (not (= (derivationStepZipper!1586 z!1189 (h!69049 s!2326)) lt!2243371)))))

(declare-fun lambda!294487 () Int)

(declare-fun flatMap!1094 ((InoxSet Context!9718) Int) (InoxSet Context!9718))

(declare-fun derivationStepZipperUp!747 (Context!9718 C!31220) (InoxSet Context!9718))

(assert (=> b!5500850 (= (flatMap!1094 z!1189 lambda!294487) (derivationStepZipperUp!747 (h!69050 zl!343) (h!69049 s!2326)))))

(declare-fun lt!2243362 () Unit!155410)

(declare-fun lemmaFlatMapOnSingletonSet!626 ((InoxSet Context!9718) Context!9718 Int) Unit!155410)

(assert (=> b!5500850 (= lt!2243362 (lemmaFlatMapOnSingletonSet!626 z!1189 (h!69050 zl!343) lambda!294487))))

(declare-fun b!5500851 () Bool)

(declare-fun res!2344790 () Bool)

(assert (=> b!5500851 (=> res!2344790 e!3402648)))

(declare-fun isEmpty!34391 (List!62726) Bool)

(assert (=> b!5500851 (= res!2344790 (not (isEmpty!34391 (t!375963 zl!343))))))

(declare-fun b!5500852 () Bool)

(declare-fun res!2344786 () Bool)

(assert (=> b!5500852 (=> res!2344786 e!3402648)))

(assert (=> b!5500852 (= res!2344786 (or ((_ is EmptyExpr!15475) r!7292) ((_ is EmptyLang!15475) r!7292) ((_ is ElementMatch!15475) r!7292) (not ((_ is Union!15475) r!7292))))))

(declare-fun b!5500853 () Bool)

(declare-fun tp!1513614 () Bool)

(assert (=> b!5500853 (= e!3402644 tp!1513614)))

(declare-fun b!5500854 () Bool)

(declare-fun tp!1513610 () Bool)

(declare-fun tp!1513612 () Bool)

(assert (=> b!5500854 (= e!3402644 (and tp!1513610 tp!1513612))))

(declare-fun b!5500855 () Bool)

(declare-fun e!3402647 () Bool)

(assert (=> b!5500855 (= e!3402648 e!3402647)))

(declare-fun res!2344783 () Bool)

(assert (=> b!5500855 (=> res!2344783 e!3402647)))

(declare-fun lt!2243366 () Bool)

(declare-fun lt!2243374 () Bool)

(assert (=> b!5500855 (= res!2344783 (or (not (= lt!2243377 (or lt!2243366 lt!2243374))) ((_ is Nil!62601) s!2326)))))

(assert (=> b!5500855 (= lt!2243374 (matchRSpec!2578 (regTwo!31463 r!7292) s!2326))))

(assert (=> b!5500855 (= lt!2243374 (matchR!7660 (regTwo!31463 r!7292) s!2326))))

(declare-fun lt!2243376 () Unit!155410)

(assert (=> b!5500855 (= lt!2243376 (mainMatchTheorem!2578 (regTwo!31463 r!7292) s!2326))))

(assert (=> b!5500855 (= lt!2243366 (matchRSpec!2578 (regOne!31463 r!7292) s!2326))))

(assert (=> b!5500855 (= lt!2243366 (matchR!7660 (regOne!31463 r!7292) s!2326))))

(declare-fun lt!2243367 () Unit!155410)

(assert (=> b!5500855 (= lt!2243367 (mainMatchTheorem!2578 (regOne!31463 r!7292) s!2326))))

(declare-fun b!5500856 () Bool)

(declare-fun res!2344778 () Bool)

(assert (=> b!5500856 (=> (not res!2344778) (not e!3402649))))

(declare-fun unfocusZipper!1217 (List!62726) Regex!15475)

(assert (=> b!5500856 (= res!2344778 (= r!7292 (unfocusZipper!1217 zl!343)))))

(declare-fun tp!1513619 () Bool)

(declare-fun e!3402643 () Bool)

(declare-fun setElem!36457 () Context!9718)

(declare-fun setNonEmpty!36457 () Bool)

(assert (=> setNonEmpty!36457 (= setRes!36457 (and tp!1513619 (inv!81934 setElem!36457) e!3402643))))

(declare-fun setRest!36457 () (InoxSet Context!9718))

(assert (=> setNonEmpty!36457 (= z!1189 ((_ map or) (store ((as const (Array Context!9718 Bool)) false) setElem!36457 true) setRest!36457))))

(declare-fun b!5500857 () Bool)

(declare-fun tp!1513611 () Bool)

(assert (=> b!5500857 (= e!3402643 tp!1513611)))

(declare-fun lt!2243368 () Bool)

(declare-fun lt!2243365 () Bool)

(declare-fun b!5500858 () Bool)

(declare-fun lt!2243364 () Bool)

(declare-fun e!3402645 () Bool)

(assert (=> b!5500858 (= e!3402645 (or (not (= lt!2243364 lt!2243368)) (= lt!2243364 lt!2243365)))))

(assert (=> b!5500858 (= lt!2243368 lt!2243364)))

(assert (=> b!5500858 (= lt!2243364 e!3402639)))

(declare-fun res!2344776 () Bool)

(assert (=> b!5500858 (=> res!2344776 e!3402639)))

(declare-fun lt!2243363 () (InoxSet Context!9718))

(assert (=> b!5500858 (= res!2344776 (matchZipper!1643 lt!2243363 (t!375962 s!2326)))))

(declare-fun lt!2243373 () Unit!155410)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!532 ((InoxSet Context!9718) (InoxSet Context!9718) List!62725) Unit!155410)

(assert (=> b!5500858 (= lt!2243373 (lemmaZipperConcatMatchesSameAsBothZippers!532 lt!2243363 lt!2243372 (t!375962 s!2326)))))

(declare-fun b!5500859 () Bool)

(assert (=> b!5500859 (= e!3402638 e!3402645)))

(declare-fun res!2344782 () Bool)

(assert (=> b!5500859 (=> res!2344782 e!3402645)))

(assert (=> b!5500859 (= res!2344782 (not (= lt!2243368 lt!2243365)))))

(assert (=> b!5500859 (= lt!2243365 (matchZipper!1643 z!1189 s!2326))))

(assert (=> b!5500859 (= lt!2243368 (matchZipper!1643 lt!2243371 (t!375962 s!2326)))))

(declare-fun b!5500860 () Bool)

(declare-fun e!3402640 () Bool)

(assert (=> b!5500860 (= e!3402640 e!3402646)))

(declare-fun res!2344779 () Bool)

(assert (=> b!5500860 (=> res!2344779 e!3402646)))

(declare-fun lt!2243375 () (InoxSet Context!9718))

(assert (=> b!5500860 (= res!2344779 (not (= lt!2243375 lt!2243371)))))

(assert (=> b!5500860 (= lt!2243371 ((_ map or) lt!2243363 lt!2243372))))

(declare-fun lt!2243361 () Context!9718)

(declare-fun derivationStepZipperDown!821 (Regex!15475 Context!9718 C!31220) (InoxSet Context!9718))

(assert (=> b!5500860 (= lt!2243372 (derivationStepZipperDown!821 (regTwo!31463 r!7292) lt!2243361 (h!69049 s!2326)))))

(assert (=> b!5500860 (= lt!2243363 (derivationStepZipperDown!821 (regOne!31463 r!7292) lt!2243361 (h!69049 s!2326)))))

(declare-fun b!5500861 () Bool)

(declare-fun tp!1513615 () Bool)

(assert (=> b!5500861 (= e!3402642 tp!1513615)))

(declare-fun b!5500862 () Bool)

(assert (=> b!5500862 (= e!3402647 e!3402640)))

(declare-fun res!2344780 () Bool)

(assert (=> b!5500862 (=> res!2344780 e!3402640)))

(declare-fun lt!2243370 () (InoxSet Context!9718))

(assert (=> b!5500862 (= res!2344780 (not (= lt!2243370 lt!2243375)))))

(assert (=> b!5500862 (= lt!2243375 (derivationStepZipperDown!821 r!7292 lt!2243361 (h!69049 s!2326)))))

(assert (=> b!5500862 (= lt!2243361 (Context!9719 Nil!62600))))

(assert (=> b!5500862 (= lt!2243370 (derivationStepZipperUp!747 (Context!9719 (Cons!62600 r!7292 Nil!62600)) (h!69049 s!2326)))))

(assert (= (and start!574574 res!2344789) b!5500842))

(assert (= (and b!5500842 res!2344787) b!5500856))

(assert (= (and b!5500856 res!2344778) b!5500844))

(assert (= (and b!5500844 (not res!2344781)) b!5500851))

(assert (= (and b!5500851 (not res!2344790)) b!5500845))

(assert (= (and b!5500845 (not res!2344784)) b!5500848))

(assert (= (and b!5500848 (not res!2344788)) b!5500846))

(assert (= (and b!5500846 (not res!2344777)) b!5500852))

(assert (= (and b!5500852 (not res!2344786)) b!5500855))

(assert (= (and b!5500855 (not res!2344783)) b!5500862))

(assert (= (and b!5500862 (not res!2344780)) b!5500860))

(assert (= (and b!5500860 (not res!2344779)) b!5500850))

(assert (= (and b!5500850 (not res!2344785)) b!5500859))

(assert (= (and b!5500859 (not res!2344782)) b!5500858))

(assert (= (and b!5500858 (not res!2344776)) b!5500840))

(assert (= (and start!574574 ((_ is ElementMatch!15475) r!7292)) b!5500847))

(assert (= (and start!574574 ((_ is Concat!24320) r!7292)) b!5500849))

(assert (= (and start!574574 ((_ is Star!15475) r!7292)) b!5500853))

(assert (= (and start!574574 ((_ is Union!15475) r!7292)) b!5500854))

(assert (= (and start!574574 condSetEmpty!36457) setIsEmpty!36457))

(assert (= (and start!574574 (not condSetEmpty!36457)) setNonEmpty!36457))

(assert (= setNonEmpty!36457 b!5500857))

(assert (= b!5500841 b!5500861))

(assert (= (and start!574574 ((_ is Cons!62602) zl!343)) b!5500841))

(assert (= (and start!574574 ((_ is Cons!62601) s!2326)) b!5500843))

(declare-fun m!6508958 () Bool)

(assert (=> b!5500856 m!6508958))

(declare-fun m!6508960 () Bool)

(assert (=> b!5500841 m!6508960))

(declare-fun m!6508962 () Bool)

(assert (=> b!5500846 m!6508962))

(assert (=> b!5500846 m!6508962))

(declare-fun m!6508964 () Bool)

(assert (=> b!5500846 m!6508964))

(declare-fun m!6508966 () Bool)

(assert (=> b!5500851 m!6508966))

(declare-fun m!6508968 () Bool)

(assert (=> b!5500845 m!6508968))

(declare-fun m!6508970 () Bool)

(assert (=> b!5500862 m!6508970))

(declare-fun m!6508972 () Bool)

(assert (=> b!5500862 m!6508972))

(declare-fun m!6508974 () Bool)

(assert (=> b!5500840 m!6508974))

(declare-fun m!6508976 () Bool)

(assert (=> start!574574 m!6508976))

(declare-fun m!6508978 () Bool)

(assert (=> b!5500844 m!6508978))

(declare-fun m!6508980 () Bool)

(assert (=> b!5500844 m!6508980))

(declare-fun m!6508982 () Bool)

(assert (=> b!5500844 m!6508982))

(declare-fun m!6508984 () Bool)

(assert (=> setNonEmpty!36457 m!6508984))

(declare-fun m!6508986 () Bool)

(assert (=> b!5500859 m!6508986))

(declare-fun m!6508988 () Bool)

(assert (=> b!5500859 m!6508988))

(declare-fun m!6508990 () Bool)

(assert (=> b!5500850 m!6508990))

(declare-fun m!6508992 () Bool)

(assert (=> b!5500850 m!6508992))

(declare-fun m!6508994 () Bool)

(assert (=> b!5500850 m!6508994))

(declare-fun m!6508996 () Bool)

(assert (=> b!5500850 m!6508996))

(declare-fun m!6508998 () Bool)

(assert (=> b!5500855 m!6508998))

(declare-fun m!6509000 () Bool)

(assert (=> b!5500855 m!6509000))

(declare-fun m!6509002 () Bool)

(assert (=> b!5500855 m!6509002))

(declare-fun m!6509004 () Bool)

(assert (=> b!5500855 m!6509004))

(declare-fun m!6509006 () Bool)

(assert (=> b!5500855 m!6509006))

(declare-fun m!6509008 () Bool)

(assert (=> b!5500855 m!6509008))

(declare-fun m!6509010 () Bool)

(assert (=> b!5500842 m!6509010))

(declare-fun m!6509012 () Bool)

(assert (=> b!5500858 m!6509012))

(declare-fun m!6509014 () Bool)

(assert (=> b!5500858 m!6509014))

(declare-fun m!6509016 () Bool)

(assert (=> b!5500860 m!6509016))

(declare-fun m!6509018 () Bool)

(assert (=> b!5500860 m!6509018))

(check-sat (not b!5500843) tp_is_empty!40203 (not b!5500846) (not b!5500840) (not b!5500844) (not b!5500841) (not b!5500853) (not start!574574) (not setNonEmpty!36457) (not b!5500859) (not b!5500849) (not b!5500850) (not b!5500851) (not b!5500861) (not b!5500857) (not b!5500855) (not b!5500842) (not b!5500860) (not b!5500856) (not b!5500854) (not b!5500862) (not b!5500858) (not b!5500845))
(check-sat)

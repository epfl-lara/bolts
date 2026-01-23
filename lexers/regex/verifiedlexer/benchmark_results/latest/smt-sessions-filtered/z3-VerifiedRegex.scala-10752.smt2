; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549782 () Bool)

(assert start!549782)

(declare-fun b!5195408 () Bool)

(assert (=> b!5195408 true))

(assert (=> b!5195408 true))

(declare-fun lambda!259931 () Int)

(declare-fun lambda!259930 () Int)

(assert (=> b!5195408 (not (= lambda!259931 lambda!259930))))

(assert (=> b!5195408 true))

(assert (=> b!5195408 true))

(declare-fun b!5195398 () Bool)

(declare-fun res!2206810 () Bool)

(declare-fun e!3235764 () Bool)

(assert (=> b!5195398 (=> (not res!2206810) (not e!3235764))))

(declare-datatypes ((C!29772 0))(
  ( (C!29773 (val!24588 Int)) )
))
(declare-datatypes ((Regex!14751 0))(
  ( (ElementMatch!14751 (c!895516 C!29772)) (Concat!23596 (regOne!30014 Regex!14751) (regTwo!30014 Regex!14751)) (EmptyExpr!14751) (Star!14751 (reg!15080 Regex!14751)) (EmptyLang!14751) (Union!14751 (regOne!30015 Regex!14751) (regTwo!30015 Regex!14751)) )
))
(declare-fun r!7292 () Regex!14751)

(declare-datatypes ((List!60552 0))(
  ( (Nil!60428) (Cons!60428 (h!66876 Regex!14751) (t!373705 List!60552)) )
))
(declare-datatypes ((Context!8270 0))(
  ( (Context!8271 (exprs!4635 List!60552)) )
))
(declare-datatypes ((List!60553 0))(
  ( (Nil!60429) (Cons!60429 (h!66877 Context!8270) (t!373706 List!60553)) )
))
(declare-fun zl!343 () List!60553)

(declare-fun unfocusZipper!493 (List!60553) Regex!14751)

(assert (=> b!5195398 (= res!2206810 (= r!7292 (unfocusZipper!493 zl!343)))))

(declare-fun b!5195399 () Bool)

(declare-fun e!3235770 () Bool)

(assert (=> b!5195399 (= e!3235764 (not e!3235770))))

(declare-fun res!2206808 () Bool)

(assert (=> b!5195399 (=> res!2206808 e!3235770)))

(get-info :version)

(assert (=> b!5195399 (= res!2206808 (not ((_ is Cons!60429) zl!343)))))

(declare-fun lt!2138700 () Bool)

(declare-datatypes ((List!60554 0))(
  ( (Nil!60430) (Cons!60430 (h!66878 C!29772) (t!373707 List!60554)) )
))
(declare-fun s!2326 () List!60554)

(declare-fun matchRSpec!1854 (Regex!14751 List!60554) Bool)

(assert (=> b!5195399 (= lt!2138700 (matchRSpec!1854 r!7292 s!2326))))

(declare-fun matchR!6936 (Regex!14751 List!60554) Bool)

(assert (=> b!5195399 (= lt!2138700 (matchR!6936 r!7292 s!2326))))

(declare-datatypes ((Unit!152336 0))(
  ( (Unit!152337) )
))
(declare-fun lt!2138696 () Unit!152336)

(declare-fun mainMatchTheorem!1854 (Regex!14751 List!60554) Unit!152336)

(assert (=> b!5195399 (= lt!2138696 (mainMatchTheorem!1854 r!7292 s!2326))))

(declare-fun b!5195400 () Bool)

(declare-fun e!3235767 () Bool)

(declare-fun tp!1457420 () Bool)

(assert (=> b!5195400 (= e!3235767 tp!1457420)))

(declare-fun b!5195401 () Bool)

(declare-fun tp!1457421 () Bool)

(declare-fun tp!1457415 () Bool)

(assert (=> b!5195401 (= e!3235767 (and tp!1457421 tp!1457415))))

(declare-fun b!5195402 () Bool)

(declare-fun res!2206804 () Bool)

(assert (=> b!5195402 (=> res!2206804 e!3235770)))

(declare-fun generalisedUnion!680 (List!60552) Regex!14751)

(declare-fun unfocusZipperList!193 (List!60553) List!60552)

(assert (=> b!5195402 (= res!2206804 (not (= r!7292 (generalisedUnion!680 (unfocusZipperList!193 zl!343)))))))

(declare-fun b!5195403 () Bool)

(declare-fun res!2206805 () Bool)

(assert (=> b!5195403 (=> res!2206805 e!3235770)))

(declare-fun generalisedConcat!420 (List!60552) Regex!14751)

(assert (=> b!5195403 (= res!2206805 (not (= r!7292 (generalisedConcat!420 (exprs!4635 (h!66877 zl!343))))))))

(declare-fun tp!1457413 () Bool)

(declare-fun e!3235765 () Bool)

(declare-fun b!5195404 () Bool)

(declare-fun e!3235771 () Bool)

(declare-fun inv!80124 (Context!8270) Bool)

(assert (=> b!5195404 (= e!3235765 (and (inv!80124 (h!66877 zl!343)) e!3235771 tp!1457413))))

(declare-fun b!5195405 () Bool)

(declare-fun tp!1457418 () Bool)

(assert (=> b!5195405 (= e!3235771 tp!1457418)))

(declare-fun b!5195406 () Bool)

(declare-fun res!2206803 () Bool)

(assert (=> b!5195406 (=> (not res!2206803) (not e!3235764))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8270))

(declare-fun toList!8535 ((InoxSet Context!8270)) List!60553)

(assert (=> b!5195406 (= res!2206803 (= (toList!8535 z!1189) zl!343))))

(declare-fun b!5195407 () Bool)

(declare-fun e!3235768 () Bool)

(assert (=> b!5195407 (= e!3235768 true)))

(declare-fun nullable!4930 (Regex!14751) Bool)

(declare-fun nullableZipper!1213 ((InoxSet Context!8270)) Bool)

(assert (=> b!5195407 (= (nullable!4930 r!7292) (nullableZipper!1213 z!1189))))

(declare-fun lt!2138699 () Unit!152336)

(declare-fun lemmaUnfocusPreservesNullability!6 (Regex!14751 (InoxSet Context!8270)) Unit!152336)

(assert (=> b!5195407 (= lt!2138699 (lemmaUnfocusPreservesNullability!6 r!7292 z!1189))))

(declare-fun res!2206812 () Bool)

(assert (=> start!549782 (=> (not res!2206812) (not e!3235764))))

(declare-fun validRegex!6487 (Regex!14751) Bool)

(assert (=> start!549782 (= res!2206812 (validRegex!6487 r!7292))))

(assert (=> start!549782 e!3235764))

(assert (=> start!549782 e!3235767))

(declare-fun condSetEmpty!32866 () Bool)

(assert (=> start!549782 (= condSetEmpty!32866 (= z!1189 ((as const (Array Context!8270 Bool)) false)))))

(declare-fun setRes!32866 () Bool)

(assert (=> start!549782 setRes!32866))

(assert (=> start!549782 e!3235765))

(declare-fun e!3235766 () Bool)

(assert (=> start!549782 e!3235766))

(assert (=> b!5195408 (= e!3235770 e!3235768)))

(declare-fun res!2206809 () Bool)

(assert (=> b!5195408 (=> res!2206809 e!3235768)))

(declare-fun lt!2138697 () Bool)

(assert (=> b!5195408 (= res!2206809 (or (not (= lt!2138700 lt!2138697)) (not ((_ is Nil!60430) s!2326))))))

(declare-fun Exists!1932 (Int) Bool)

(assert (=> b!5195408 (= (Exists!1932 lambda!259930) (Exists!1932 lambda!259931))))

(declare-fun lt!2138698 () Unit!152336)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!586 (Regex!14751 Regex!14751 List!60554) Unit!152336)

(assert (=> b!5195408 (= lt!2138698 (lemmaExistCutMatchRandMatchRSpecEquivalent!586 (regOne!30014 r!7292) (regTwo!30014 r!7292) s!2326))))

(assert (=> b!5195408 (= lt!2138697 (Exists!1932 lambda!259930))))

(declare-datatypes ((tuple2!63900 0))(
  ( (tuple2!63901 (_1!35253 List!60554) (_2!35253 List!60554)) )
))
(declare-datatypes ((Option!14862 0))(
  ( (None!14861) (Some!14861 (v!50890 tuple2!63900)) )
))
(declare-fun isDefined!11565 (Option!14862) Bool)

(declare-fun findConcatSeparation!1276 (Regex!14751 Regex!14751 List!60554 List!60554 List!60554) Option!14862)

(assert (=> b!5195408 (= lt!2138697 (isDefined!11565 (findConcatSeparation!1276 (regOne!30014 r!7292) (regTwo!30014 r!7292) Nil!60430 s!2326 s!2326)))))

(declare-fun lt!2138701 () Unit!152336)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1040 (Regex!14751 Regex!14751 List!60554) Unit!152336)

(assert (=> b!5195408 (= lt!2138701 (lemmaFindConcatSeparationEquivalentToExists!1040 (regOne!30014 r!7292) (regTwo!30014 r!7292) s!2326))))

(declare-fun b!5195409 () Bool)

(declare-fun tp!1457416 () Bool)

(declare-fun tp!1457417 () Bool)

(assert (=> b!5195409 (= e!3235767 (and tp!1457416 tp!1457417))))

(declare-fun b!5195410 () Bool)

(declare-fun res!2206807 () Bool)

(assert (=> b!5195410 (=> res!2206807 e!3235770)))

(declare-fun isEmpty!32357 (List!60553) Bool)

(assert (=> b!5195410 (= res!2206807 (not (isEmpty!32357 (t!373706 zl!343))))))

(declare-fun tp!1457419 () Bool)

(declare-fun setNonEmpty!32866 () Bool)

(declare-fun setElem!32866 () Context!8270)

(declare-fun e!3235769 () Bool)

(assert (=> setNonEmpty!32866 (= setRes!32866 (and tp!1457419 (inv!80124 setElem!32866) e!3235769))))

(declare-fun setRest!32866 () (InoxSet Context!8270))

(assert (=> setNonEmpty!32866 (= z!1189 ((_ map or) (store ((as const (Array Context!8270 Bool)) false) setElem!32866 true) setRest!32866))))

(declare-fun b!5195411 () Bool)

(declare-fun tp_is_empty!38755 () Bool)

(assert (=> b!5195411 (= e!3235767 tp_is_empty!38755)))

(declare-fun b!5195412 () Bool)

(declare-fun tp!1457414 () Bool)

(assert (=> b!5195412 (= e!3235769 tp!1457414)))

(declare-fun b!5195413 () Bool)

(declare-fun res!2206806 () Bool)

(assert (=> b!5195413 (=> res!2206806 e!3235770)))

(assert (=> b!5195413 (= res!2206806 (or ((_ is EmptyExpr!14751) r!7292) ((_ is EmptyLang!14751) r!7292) ((_ is ElementMatch!14751) r!7292) ((_ is Union!14751) r!7292) (not ((_ is Concat!23596) r!7292))))))

(declare-fun b!5195414 () Bool)

(declare-fun tp!1457412 () Bool)

(assert (=> b!5195414 (= e!3235766 (and tp_is_empty!38755 tp!1457412))))

(declare-fun setIsEmpty!32866 () Bool)

(assert (=> setIsEmpty!32866 setRes!32866))

(declare-fun b!5195415 () Bool)

(declare-fun res!2206811 () Bool)

(assert (=> b!5195415 (=> res!2206811 e!3235770)))

(assert (=> b!5195415 (= res!2206811 (not ((_ is Cons!60428) (exprs!4635 (h!66877 zl!343)))))))

(assert (= (and start!549782 res!2206812) b!5195406))

(assert (= (and b!5195406 res!2206803) b!5195398))

(assert (= (and b!5195398 res!2206810) b!5195399))

(assert (= (and b!5195399 (not res!2206808)) b!5195410))

(assert (= (and b!5195410 (not res!2206807)) b!5195403))

(assert (= (and b!5195403 (not res!2206805)) b!5195415))

(assert (= (and b!5195415 (not res!2206811)) b!5195402))

(assert (= (and b!5195402 (not res!2206804)) b!5195413))

(assert (= (and b!5195413 (not res!2206806)) b!5195408))

(assert (= (and b!5195408 (not res!2206809)) b!5195407))

(assert (= (and start!549782 ((_ is ElementMatch!14751) r!7292)) b!5195411))

(assert (= (and start!549782 ((_ is Concat!23596) r!7292)) b!5195401))

(assert (= (and start!549782 ((_ is Star!14751) r!7292)) b!5195400))

(assert (= (and start!549782 ((_ is Union!14751) r!7292)) b!5195409))

(assert (= (and start!549782 condSetEmpty!32866) setIsEmpty!32866))

(assert (= (and start!549782 (not condSetEmpty!32866)) setNonEmpty!32866))

(assert (= setNonEmpty!32866 b!5195412))

(assert (= b!5195404 b!5195405))

(assert (= (and start!549782 ((_ is Cons!60429) zl!343)) b!5195404))

(assert (= (and start!549782 ((_ is Cons!60430) s!2326)) b!5195414))

(declare-fun m!6249740 () Bool)

(assert (=> b!5195410 m!6249740))

(declare-fun m!6249742 () Bool)

(assert (=> setNonEmpty!32866 m!6249742))

(declare-fun m!6249744 () Bool)

(assert (=> start!549782 m!6249744))

(declare-fun m!6249746 () Bool)

(assert (=> b!5195407 m!6249746))

(declare-fun m!6249748 () Bool)

(assert (=> b!5195407 m!6249748))

(declare-fun m!6249750 () Bool)

(assert (=> b!5195407 m!6249750))

(declare-fun m!6249752 () Bool)

(assert (=> b!5195398 m!6249752))

(declare-fun m!6249754 () Bool)

(assert (=> b!5195408 m!6249754))

(declare-fun m!6249756 () Bool)

(assert (=> b!5195408 m!6249756))

(declare-fun m!6249758 () Bool)

(assert (=> b!5195408 m!6249758))

(declare-fun m!6249760 () Bool)

(assert (=> b!5195408 m!6249760))

(assert (=> b!5195408 m!6249754))

(declare-fun m!6249762 () Bool)

(assert (=> b!5195408 m!6249762))

(assert (=> b!5195408 m!6249756))

(declare-fun m!6249764 () Bool)

(assert (=> b!5195408 m!6249764))

(declare-fun m!6249766 () Bool)

(assert (=> b!5195406 m!6249766))

(declare-fun m!6249768 () Bool)

(assert (=> b!5195402 m!6249768))

(assert (=> b!5195402 m!6249768))

(declare-fun m!6249770 () Bool)

(assert (=> b!5195402 m!6249770))

(declare-fun m!6249772 () Bool)

(assert (=> b!5195404 m!6249772))

(declare-fun m!6249774 () Bool)

(assert (=> b!5195399 m!6249774))

(declare-fun m!6249776 () Bool)

(assert (=> b!5195399 m!6249776))

(declare-fun m!6249778 () Bool)

(assert (=> b!5195399 m!6249778))

(declare-fun m!6249780 () Bool)

(assert (=> b!5195403 m!6249780))

(check-sat (not b!5195414) (not b!5195410) (not b!5195407) (not b!5195401) (not b!5195400) (not b!5195402) (not b!5195399) (not b!5195409) (not b!5195406) (not b!5195398) (not start!549782) tp_is_empty!38755 (not b!5195404) (not b!5195403) (not b!5195412) (not b!5195408) (not setNonEmpty!32866) (not b!5195405))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!652192 () Bool)

(assert start!652192)

(declare-fun b!6725773 () Bool)

(assert (=> b!6725773 true))

(assert (=> b!6725773 true))

(declare-fun lambda!377319 () Int)

(declare-fun lambda!377318 () Int)

(assert (=> b!6725773 (not (= lambda!377319 lambda!377318))))

(assert (=> b!6725773 true))

(assert (=> b!6725773 true))

(declare-fun lambda!377320 () Int)

(assert (=> b!6725773 (not (= lambda!377320 lambda!377318))))

(assert (=> b!6725773 (not (= lambda!377320 lambda!377319))))

(assert (=> b!6725773 true))

(assert (=> b!6725773 true))

(declare-fun b!6725759 () Bool)

(assert (=> b!6725759 true))

(declare-fun b!6725752 () Bool)

(declare-fun e!4063522 () Bool)

(declare-fun lt!2437187 () Bool)

(assert (=> b!6725752 (= e!4063522 lt!2437187)))

(declare-fun b!6725753 () Bool)

(declare-fun res!2751819 () Bool)

(declare-fun e!4063524 () Bool)

(assert (=> b!6725753 (=> res!2751819 e!4063524)))

(declare-datatypes ((C!33376 0))(
  ( (C!33377 (val!26390 Int)) )
))
(declare-datatypes ((Regex!16553 0))(
  ( (ElementMatch!16553 (c!1246985 C!33376)) (Concat!25398 (regOne!33618 Regex!16553) (regTwo!33618 Regex!16553)) (EmptyExpr!16553) (Star!16553 (reg!16882 Regex!16553)) (EmptyLang!16553) (Union!16553 (regOne!33619 Regex!16553) (regTwo!33619 Regex!16553)) )
))
(declare-datatypes ((List!65958 0))(
  ( (Nil!65834) (Cons!65834 (h!72282 Regex!16553) (t!379641 List!65958)) )
))
(declare-datatypes ((Context!11874 0))(
  ( (Context!11875 (exprs!6437 List!65958)) )
))
(declare-datatypes ((List!65959 0))(
  ( (Nil!65835) (Cons!65835 (h!72283 Context!11874) (t!379642 List!65959)) )
))
(declare-fun zl!343 () List!65959)

(declare-fun isEmpty!38161 (List!65959) Bool)

(assert (=> b!6725753 (= res!2751819 (not (isEmpty!38161 (t!379642 zl!343))))))

(declare-fun b!6725754 () Bool)

(declare-fun e!4063520 () Bool)

(declare-fun e!4063519 () Bool)

(assert (=> b!6725754 (= e!4063520 e!4063519)))

(declare-fun res!2751825 () Bool)

(assert (=> b!6725754 (=> res!2751825 e!4063519)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2437198 () (InoxSet Context!11874))

(declare-fun lt!2437190 () (InoxSet Context!11874))

(assert (=> b!6725754 (= res!2751825 (not (= lt!2437198 lt!2437190)))))

(declare-fun r!7292 () Regex!16553)

(declare-datatypes ((List!65960 0))(
  ( (Nil!65836) (Cons!65836 (h!72284 C!33376) (t!379643 List!65960)) )
))
(declare-fun s!2326 () List!65960)

(declare-fun derivationStepZipperDown!1781 (Regex!16553 Context!11874 C!33376) (InoxSet Context!11874))

(assert (=> b!6725754 (= lt!2437190 (derivationStepZipperDown!1781 r!7292 (Context!11875 Nil!65834) (h!72284 s!2326)))))

(declare-fun derivationStepZipperUp!1707 (Context!11874 C!33376) (InoxSet Context!11874))

(assert (=> b!6725754 (= lt!2437198 (derivationStepZipperUp!1707 (Context!11875 (Cons!65834 r!7292 Nil!65834)) (h!72284 s!2326)))))

(declare-fun b!6725755 () Bool)

(declare-fun res!2751824 () Bool)

(assert (=> b!6725755 (=> res!2751824 e!4063524)))

(declare-fun generalisedConcat!2150 (List!65958) Regex!16553)

(assert (=> b!6725755 (= res!2751824 (not (= r!7292 (generalisedConcat!2150 (exprs!6437 (h!72283 zl!343))))))))

(declare-fun res!2751823 () Bool)

(declare-fun e!4063525 () Bool)

(assert (=> start!652192 (=> (not res!2751823) (not e!4063525))))

(declare-fun validRegex!8289 (Regex!16553) Bool)

(assert (=> start!652192 (= res!2751823 (validRegex!8289 r!7292))))

(assert (=> start!652192 e!4063525))

(declare-fun e!4063528 () Bool)

(assert (=> start!652192 e!4063528))

(declare-fun condSetEmpty!45855 () Bool)

(declare-fun z!1189 () (InoxSet Context!11874))

(assert (=> start!652192 (= condSetEmpty!45855 (= z!1189 ((as const (Array Context!11874 Bool)) false)))))

(declare-fun setRes!45855 () Bool)

(assert (=> start!652192 setRes!45855))

(declare-fun e!4063526 () Bool)

(assert (=> start!652192 e!4063526))

(declare-fun e!4063518 () Bool)

(assert (=> start!652192 e!4063518))

(declare-fun b!6725756 () Bool)

(declare-fun res!2751827 () Bool)

(assert (=> b!6725756 (=> res!2751827 e!4063520)))

(get-info :version)

(assert (=> b!6725756 (= res!2751827 ((_ is Nil!65836) s!2326))))

(declare-fun b!6725757 () Bool)

(declare-fun res!2751822 () Bool)

(assert (=> b!6725757 (=> res!2751822 e!4063524)))

(assert (=> b!6725757 (= res!2751822 (or ((_ is EmptyExpr!16553) r!7292) ((_ is EmptyLang!16553) r!7292) ((_ is ElementMatch!16553) r!7292) ((_ is Union!16553) r!7292) ((_ is Concat!25398) r!7292)))))

(declare-fun b!6725758 () Bool)

(declare-fun res!2751821 () Bool)

(assert (=> b!6725758 (=> res!2751821 e!4063524)))

(assert (=> b!6725758 (= res!2751821 (not ((_ is Cons!65834) (exprs!6437 (h!72283 zl!343)))))))

(declare-fun e!4063523 () Bool)

(assert (=> b!6725759 (= e!4063519 e!4063523)))

(declare-fun res!2751826 () Bool)

(assert (=> b!6725759 (=> res!2751826 e!4063523)))

(declare-fun derivationStepZipper!2497 ((InoxSet Context!11874) C!33376) (InoxSet Context!11874))

(assert (=> b!6725759 (= res!2751826 (not (= (derivationStepZipper!2497 z!1189 (h!72284 s!2326)) lt!2437190)))))

(declare-fun lambda!377321 () Int)

(declare-fun flatMap!2034 ((InoxSet Context!11874) Int) (InoxSet Context!11874))

(assert (=> b!6725759 (= (flatMap!2034 z!1189 lambda!377321) (derivationStepZipperUp!1707 (h!72283 zl!343) (h!72284 s!2326)))))

(declare-datatypes ((Unit!159797 0))(
  ( (Unit!159798) )
))
(declare-fun lt!2437196 () Unit!159797)

(declare-fun lemmaFlatMapOnSingletonSet!1560 ((InoxSet Context!11874) Context!11874 Int) Unit!159797)

(assert (=> b!6725759 (= lt!2437196 (lemmaFlatMapOnSingletonSet!1560 z!1189 (h!72283 zl!343) lambda!377321))))

(declare-fun b!6725760 () Bool)

(assert (=> b!6725760 (= e!4063525 (not e!4063524))))

(declare-fun res!2751817 () Bool)

(assert (=> b!6725760 (=> res!2751817 e!4063524)))

(assert (=> b!6725760 (= res!2751817 (not ((_ is Cons!65835) zl!343)))))

(declare-fun lt!2437192 () Bool)

(declare-fun matchRSpec!3654 (Regex!16553 List!65960) Bool)

(assert (=> b!6725760 (= lt!2437192 (matchRSpec!3654 r!7292 s!2326))))

(declare-fun matchR!8736 (Regex!16553 List!65960) Bool)

(assert (=> b!6725760 (= lt!2437192 (matchR!8736 r!7292 s!2326))))

(declare-fun lt!2437197 () Unit!159797)

(declare-fun mainMatchTheorem!3654 (Regex!16553 List!65960) Unit!159797)

(assert (=> b!6725760 (= lt!2437197 (mainMatchTheorem!3654 r!7292 s!2326))))

(declare-fun b!6725761 () Bool)

(declare-fun tp_is_empty!42359 () Bool)

(assert (=> b!6725761 (= e!4063528 tp_is_empty!42359)))

(declare-fun b!6725762 () Bool)

(declare-fun tp!1844148 () Bool)

(declare-fun tp!1844152 () Bool)

(assert (=> b!6725762 (= e!4063528 (and tp!1844148 tp!1844152))))

(declare-fun b!6725763 () Bool)

(declare-fun tp!1844150 () Bool)

(assert (=> b!6725763 (= e!4063518 (and tp_is_empty!42359 tp!1844150))))

(declare-fun b!6725764 () Bool)

(declare-fun res!2751830 () Bool)

(assert (=> b!6725764 (=> (not res!2751830) (not e!4063525))))

(declare-fun unfocusZipper!2295 (List!65959) Regex!16553)

(assert (=> b!6725764 (= res!2751830 (= r!7292 (unfocusZipper!2295 zl!343)))))

(declare-fun tp!1844144 () Bool)

(declare-fun setNonEmpty!45855 () Bool)

(declare-fun setElem!45855 () Context!11874)

(declare-fun e!4063521 () Bool)

(declare-fun inv!84629 (Context!11874) Bool)

(assert (=> setNonEmpty!45855 (= setRes!45855 (and tp!1844144 (inv!84629 setElem!45855) e!4063521))))

(declare-fun setRest!45855 () (InoxSet Context!11874))

(assert (=> setNonEmpty!45855 (= z!1189 ((_ map or) (store ((as const (Array Context!11874 Bool)) false) setElem!45855 true) setRest!45855))))

(declare-fun setIsEmpty!45855 () Bool)

(assert (=> setIsEmpty!45855 setRes!45855))

(declare-fun b!6725765 () Bool)

(declare-fun tp!1844146 () Bool)

(assert (=> b!6725765 (= e!4063521 tp!1844146)))

(declare-fun e!4063527 () Bool)

(declare-fun b!6725766 () Bool)

(declare-fun tp!1844149 () Bool)

(assert (=> b!6725766 (= e!4063526 (and (inv!84629 (h!72283 zl!343)) e!4063527 tp!1844149))))

(declare-fun b!6725767 () Bool)

(declare-fun lt!2437194 () List!65958)

(assert (=> b!6725767 (= e!4063523 (inv!84629 (Context!11875 lt!2437194)))))

(declare-fun lt!2437193 () Context!11874)

(declare-fun lt!2437189 () (InoxSet Context!11874))

(assert (=> b!6725767 (= (flatMap!2034 lt!2437189 lambda!377321) (derivationStepZipperUp!1707 lt!2437193 (h!72284 s!2326)))))

(declare-fun lt!2437191 () Unit!159797)

(assert (=> b!6725767 (= lt!2437191 (lemmaFlatMapOnSingletonSet!1560 lt!2437189 lt!2437193 lambda!377321))))

(declare-fun lt!2437185 () (InoxSet Context!11874))

(assert (=> b!6725767 (= lt!2437185 (derivationStepZipperUp!1707 lt!2437193 (h!72284 s!2326)))))

(assert (=> b!6725767 (= lt!2437189 (store ((as const (Array Context!11874 Bool)) false) lt!2437193 true))))

(assert (=> b!6725767 (= lt!2437193 (Context!11875 (Cons!65834 (reg!16882 r!7292) lt!2437194)))))

(assert (=> b!6725767 (= lt!2437194 (Cons!65834 r!7292 Nil!65834))))

(declare-fun b!6725768 () Bool)

(declare-fun tp!1844145 () Bool)

(declare-fun tp!1844151 () Bool)

(assert (=> b!6725768 (= e!4063528 (and tp!1844145 tp!1844151))))

(declare-fun b!6725769 () Bool)

(declare-fun tp!1844147 () Bool)

(assert (=> b!6725769 (= e!4063527 tp!1844147)))

(declare-fun b!6725770 () Bool)

(declare-fun res!2751828 () Bool)

(assert (=> b!6725770 (=> (not res!2751828) (not e!4063525))))

(declare-fun toList!10337 ((InoxSet Context!11874)) List!65959)

(assert (=> b!6725770 (= res!2751828 (= (toList!10337 z!1189) zl!343))))

(declare-fun b!6725771 () Bool)

(declare-fun res!2751829 () Bool)

(assert (=> b!6725771 (=> res!2751829 e!4063524)))

(declare-fun generalisedUnion!2397 (List!65958) Regex!16553)

(declare-fun unfocusZipperList!1974 (List!65959) List!65958)

(assert (=> b!6725771 (= res!2751829 (not (= r!7292 (generalisedUnion!2397 (unfocusZipperList!1974 zl!343)))))))

(declare-fun b!6725772 () Bool)

(declare-fun tp!1844153 () Bool)

(assert (=> b!6725772 (= e!4063528 tp!1844153)))

(assert (=> b!6725773 (= e!4063524 e!4063520)))

(declare-fun res!2751818 () Bool)

(assert (=> b!6725773 (=> res!2751818 e!4063520)))

(assert (=> b!6725773 (= res!2751818 (not (= lt!2437192 e!4063522)))))

(declare-fun res!2751820 () Bool)

(assert (=> b!6725773 (=> res!2751820 e!4063522)))

(declare-fun isEmpty!38162 (List!65960) Bool)

(assert (=> b!6725773 (= res!2751820 (isEmpty!38162 s!2326))))

(declare-fun Exists!3621 (Int) Bool)

(assert (=> b!6725773 (= (Exists!3621 lambda!377318) (Exists!3621 lambda!377320))))

(declare-fun lt!2437195 () Unit!159797)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2148 (Regex!16553 Regex!16553 List!65960) Unit!159797)

(assert (=> b!6725773 (= lt!2437195 (lemmaExistCutMatchRandMatchRSpecEquivalent!2148 (reg!16882 r!7292) r!7292 s!2326))))

(assert (=> b!6725773 (= (Exists!3621 lambda!377318) (Exists!3621 lambda!377319))))

(declare-fun lt!2437186 () Unit!159797)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!712 (Regex!16553 List!65960) Unit!159797)

(assert (=> b!6725773 (= lt!2437186 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!712 (reg!16882 r!7292) s!2326))))

(assert (=> b!6725773 (= lt!2437187 (Exists!3621 lambda!377318))))

(declare-datatypes ((tuple2!67056 0))(
  ( (tuple2!67057 (_1!36831 List!65960) (_2!36831 List!65960)) )
))
(declare-datatypes ((Option!16440 0))(
  ( (None!16439) (Some!16439 (v!52639 tuple2!67056)) )
))
(declare-fun isDefined!13143 (Option!16440) Bool)

(declare-fun findConcatSeparation!2854 (Regex!16553 Regex!16553 List!65960 List!65960 List!65960) Option!16440)

(assert (=> b!6725773 (= lt!2437187 (isDefined!13143 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326)))))

(declare-fun lt!2437188 () Unit!159797)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2618 (Regex!16553 Regex!16553 List!65960) Unit!159797)

(assert (=> b!6725773 (= lt!2437188 (lemmaFindConcatSeparationEquivalentToExists!2618 (reg!16882 r!7292) r!7292 s!2326))))

(assert (= (and start!652192 res!2751823) b!6725770))

(assert (= (and b!6725770 res!2751828) b!6725764))

(assert (= (and b!6725764 res!2751830) b!6725760))

(assert (= (and b!6725760 (not res!2751817)) b!6725753))

(assert (= (and b!6725753 (not res!2751819)) b!6725755))

(assert (= (and b!6725755 (not res!2751824)) b!6725758))

(assert (= (and b!6725758 (not res!2751821)) b!6725771))

(assert (= (and b!6725771 (not res!2751829)) b!6725757))

(assert (= (and b!6725757 (not res!2751822)) b!6725773))

(assert (= (and b!6725773 (not res!2751820)) b!6725752))

(assert (= (and b!6725773 (not res!2751818)) b!6725756))

(assert (= (and b!6725756 (not res!2751827)) b!6725754))

(assert (= (and b!6725754 (not res!2751825)) b!6725759))

(assert (= (and b!6725759 (not res!2751826)) b!6725767))

(assert (= (and start!652192 ((_ is ElementMatch!16553) r!7292)) b!6725761))

(assert (= (and start!652192 ((_ is Concat!25398) r!7292)) b!6725762))

(assert (= (and start!652192 ((_ is Star!16553) r!7292)) b!6725772))

(assert (= (and start!652192 ((_ is Union!16553) r!7292)) b!6725768))

(assert (= (and start!652192 condSetEmpty!45855) setIsEmpty!45855))

(assert (= (and start!652192 (not condSetEmpty!45855)) setNonEmpty!45855))

(assert (= setNonEmpty!45855 b!6725765))

(assert (= b!6725766 b!6725769))

(assert (= (and start!652192 ((_ is Cons!65835) zl!343)) b!6725766))

(assert (= (and start!652192 ((_ is Cons!65836) s!2326)) b!6725763))

(declare-fun m!7485772 () Bool)

(assert (=> b!6725759 m!7485772))

(declare-fun m!7485774 () Bool)

(assert (=> b!6725759 m!7485774))

(declare-fun m!7485776 () Bool)

(assert (=> b!6725759 m!7485776))

(declare-fun m!7485778 () Bool)

(assert (=> b!6725759 m!7485778))

(declare-fun m!7485780 () Bool)

(assert (=> b!6725770 m!7485780))

(declare-fun m!7485782 () Bool)

(assert (=> start!652192 m!7485782))

(declare-fun m!7485784 () Bool)

(assert (=> b!6725764 m!7485784))

(declare-fun m!7485786 () Bool)

(assert (=> b!6725771 m!7485786))

(assert (=> b!6725771 m!7485786))

(declare-fun m!7485788 () Bool)

(assert (=> b!6725771 m!7485788))

(declare-fun m!7485790 () Bool)

(assert (=> b!6725754 m!7485790))

(declare-fun m!7485792 () Bool)

(assert (=> b!6725754 m!7485792))

(declare-fun m!7485794 () Bool)

(assert (=> b!6725753 m!7485794))

(declare-fun m!7485796 () Bool)

(assert (=> b!6725755 m!7485796))

(declare-fun m!7485798 () Bool)

(assert (=> setNonEmpty!45855 m!7485798))

(declare-fun m!7485800 () Bool)

(assert (=> b!6725760 m!7485800))

(declare-fun m!7485802 () Bool)

(assert (=> b!6725760 m!7485802))

(declare-fun m!7485804 () Bool)

(assert (=> b!6725760 m!7485804))

(declare-fun m!7485806 () Bool)

(assert (=> b!6725767 m!7485806))

(declare-fun m!7485808 () Bool)

(assert (=> b!6725767 m!7485808))

(declare-fun m!7485810 () Bool)

(assert (=> b!6725767 m!7485810))

(declare-fun m!7485812 () Bool)

(assert (=> b!6725767 m!7485812))

(declare-fun m!7485814 () Bool)

(assert (=> b!6725767 m!7485814))

(declare-fun m!7485816 () Bool)

(assert (=> b!6725773 m!7485816))

(declare-fun m!7485818 () Bool)

(assert (=> b!6725773 m!7485818))

(assert (=> b!6725773 m!7485816))

(declare-fun m!7485820 () Bool)

(assert (=> b!6725773 m!7485820))

(declare-fun m!7485822 () Bool)

(assert (=> b!6725773 m!7485822))

(declare-fun m!7485824 () Bool)

(assert (=> b!6725773 m!7485824))

(declare-fun m!7485826 () Bool)

(assert (=> b!6725773 m!7485826))

(declare-fun m!7485828 () Bool)

(assert (=> b!6725773 m!7485828))

(declare-fun m!7485830 () Bool)

(assert (=> b!6725773 m!7485830))

(declare-fun m!7485832 () Bool)

(assert (=> b!6725773 m!7485832))

(assert (=> b!6725773 m!7485828))

(assert (=> b!6725773 m!7485816))

(declare-fun m!7485834 () Bool)

(assert (=> b!6725766 m!7485834))

(check-sat (not b!6725764) (not b!6725753) (not b!6725773) (not b!6725754) (not start!652192) (not b!6725765) (not b!6725770) (not b!6725769) (not b!6725766) (not b!6725772) (not b!6725767) (not b!6725762) (not setNonEmpty!45855) (not b!6725760) tp_is_empty!42359 (not b!6725771) (not b!6725759) (not b!6725768) (not b!6725763) (not b!6725755))
(check-sat)
(get-model)

(declare-fun b!6725888 () Bool)

(declare-fun e!4063599 () Regex!16553)

(assert (=> b!6725888 (= e!4063599 (h!72282 (exprs!6437 (h!72283 zl!343))))))

(declare-fun b!6725889 () Bool)

(declare-fun e!4063600 () Regex!16553)

(assert (=> b!6725889 (= e!4063600 EmptyExpr!16553)))

(declare-fun b!6725890 () Bool)

(declare-fun e!4063598 () Bool)

(declare-fun e!4063596 () Bool)

(assert (=> b!6725890 (= e!4063598 e!4063596)))

(declare-fun c!1247025 () Bool)

(declare-fun isEmpty!38165 (List!65958) Bool)

(declare-fun tail!12618 (List!65958) List!65958)

(assert (=> b!6725890 (= c!1247025 (isEmpty!38165 (tail!12618 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun d!2113420 () Bool)

(declare-fun e!4063597 () Bool)

(assert (=> d!2113420 e!4063597))

(declare-fun res!2751866 () Bool)

(assert (=> d!2113420 (=> (not res!2751866) (not e!4063597))))

(declare-fun lt!2437210 () Regex!16553)

(assert (=> d!2113420 (= res!2751866 (validRegex!8289 lt!2437210))))

(assert (=> d!2113420 (= lt!2437210 e!4063599)))

(declare-fun c!1247024 () Bool)

(declare-fun e!4063601 () Bool)

(assert (=> d!2113420 (= c!1247024 e!4063601)))

(declare-fun res!2751865 () Bool)

(assert (=> d!2113420 (=> (not res!2751865) (not e!4063601))))

(assert (=> d!2113420 (= res!2751865 ((_ is Cons!65834) (exprs!6437 (h!72283 zl!343))))))

(declare-fun lambda!377333 () Int)

(declare-fun forall!15753 (List!65958 Int) Bool)

(assert (=> d!2113420 (forall!15753 (exprs!6437 (h!72283 zl!343)) lambda!377333)))

(assert (=> d!2113420 (= (generalisedConcat!2150 (exprs!6437 (h!72283 zl!343))) lt!2437210)))

(declare-fun b!6725891 () Bool)

(declare-fun isConcat!1442 (Regex!16553) Bool)

(assert (=> b!6725891 (= e!4063596 (isConcat!1442 lt!2437210))))

(declare-fun b!6725892 () Bool)

(assert (=> b!6725892 (= e!4063600 (Concat!25398 (h!72282 (exprs!6437 (h!72283 zl!343))) (generalisedConcat!2150 (t!379641 (exprs!6437 (h!72283 zl!343))))))))

(declare-fun b!6725893 () Bool)

(assert (=> b!6725893 (= e!4063599 e!4063600)))

(declare-fun c!1247026 () Bool)

(assert (=> b!6725893 (= c!1247026 ((_ is Cons!65834) (exprs!6437 (h!72283 zl!343))))))

(declare-fun b!6725894 () Bool)

(assert (=> b!6725894 (= e!4063597 e!4063598)))

(declare-fun c!1247023 () Bool)

(assert (=> b!6725894 (= c!1247023 (isEmpty!38165 (exprs!6437 (h!72283 zl!343))))))

(declare-fun b!6725895 () Bool)

(declare-fun isEmptyExpr!1919 (Regex!16553) Bool)

(assert (=> b!6725895 (= e!4063598 (isEmptyExpr!1919 lt!2437210))))

(declare-fun b!6725896 () Bool)

(declare-fun head!13533 (List!65958) Regex!16553)

(assert (=> b!6725896 (= e!4063596 (= lt!2437210 (head!13533 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6725897 () Bool)

(assert (=> b!6725897 (= e!4063601 (isEmpty!38165 (t!379641 (exprs!6437 (h!72283 zl!343)))))))

(assert (= (and d!2113420 res!2751865) b!6725897))

(assert (= (and d!2113420 c!1247024) b!6725888))

(assert (= (and d!2113420 (not c!1247024)) b!6725893))

(assert (= (and b!6725893 c!1247026) b!6725892))

(assert (= (and b!6725893 (not c!1247026)) b!6725889))

(assert (= (and d!2113420 res!2751866) b!6725894))

(assert (= (and b!6725894 c!1247023) b!6725895))

(assert (= (and b!6725894 (not c!1247023)) b!6725890))

(assert (= (and b!6725890 c!1247025) b!6725896))

(assert (= (and b!6725890 (not c!1247025)) b!6725891))

(declare-fun m!7485888 () Bool)

(assert (=> b!6725897 m!7485888))

(declare-fun m!7485890 () Bool)

(assert (=> b!6725896 m!7485890))

(declare-fun m!7485892 () Bool)

(assert (=> b!6725891 m!7485892))

(declare-fun m!7485894 () Bool)

(assert (=> d!2113420 m!7485894))

(declare-fun m!7485896 () Bool)

(assert (=> d!2113420 m!7485896))

(declare-fun m!7485898 () Bool)

(assert (=> b!6725892 m!7485898))

(declare-fun m!7485900 () Bool)

(assert (=> b!6725894 m!7485900))

(declare-fun m!7485902 () Bool)

(assert (=> b!6725895 m!7485902))

(declare-fun m!7485904 () Bool)

(assert (=> b!6725890 m!7485904))

(assert (=> b!6725890 m!7485904))

(declare-fun m!7485906 () Bool)

(assert (=> b!6725890 m!7485906))

(assert (=> b!6725755 d!2113420))

(declare-fun bs!1789020 () Bool)

(declare-fun d!2113434 () Bool)

(assert (= bs!1789020 (and d!2113434 b!6725759)))

(declare-fun lambda!377337 () Int)

(assert (=> bs!1789020 (= lambda!377337 lambda!377321)))

(assert (=> d!2113434 true))

(assert (=> d!2113434 (= (derivationStepZipper!2497 z!1189 (h!72284 s!2326)) (flatMap!2034 z!1189 lambda!377337))))

(declare-fun bs!1789021 () Bool)

(assert (= bs!1789021 d!2113434))

(declare-fun m!7485908 () Bool)

(assert (=> bs!1789021 m!7485908))

(assert (=> b!6725759 d!2113434))

(declare-fun d!2113436 () Bool)

(declare-fun choose!50116 ((InoxSet Context!11874) Int) (InoxSet Context!11874))

(assert (=> d!2113436 (= (flatMap!2034 z!1189 lambda!377321) (choose!50116 z!1189 lambda!377321))))

(declare-fun bs!1789022 () Bool)

(assert (= bs!1789022 d!2113436))

(declare-fun m!7485910 () Bool)

(assert (=> bs!1789022 m!7485910))

(assert (=> b!6725759 d!2113436))

(declare-fun d!2113438 () Bool)

(declare-fun c!1247033 () Bool)

(declare-fun e!4063612 () Bool)

(assert (=> d!2113438 (= c!1247033 e!4063612)))

(declare-fun res!2751879 () Bool)

(assert (=> d!2113438 (=> (not res!2751879) (not e!4063612))))

(assert (=> d!2113438 (= res!2751879 ((_ is Cons!65834) (exprs!6437 (h!72283 zl!343))))))

(declare-fun e!4063614 () (InoxSet Context!11874))

(assert (=> d!2113438 (= (derivationStepZipperUp!1707 (h!72283 zl!343) (h!72284 s!2326)) e!4063614)))

(declare-fun b!6725920 () Bool)

(declare-fun e!4063613 () (InoxSet Context!11874))

(assert (=> b!6725920 (= e!4063613 ((as const (Array Context!11874 Bool)) false))))

(declare-fun b!6725921 () Bool)

(declare-fun call!607279 () (InoxSet Context!11874))

(assert (=> b!6725921 (= e!4063614 ((_ map or) call!607279 (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) (h!72284 s!2326))))))

(declare-fun b!6725922 () Bool)

(declare-fun nullable!6540 (Regex!16553) Bool)

(assert (=> b!6725922 (= e!4063612 (nullable!6540 (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6725923 () Bool)

(assert (=> b!6725923 (= e!4063613 call!607279)))

(declare-fun bm!607274 () Bool)

(assert (=> bm!607274 (= call!607279 (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (h!72283 zl!343))) (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) (h!72284 s!2326)))))

(declare-fun b!6725924 () Bool)

(assert (=> b!6725924 (= e!4063614 e!4063613)))

(declare-fun c!1247034 () Bool)

(assert (=> b!6725924 (= c!1247034 ((_ is Cons!65834) (exprs!6437 (h!72283 zl!343))))))

(assert (= (and d!2113438 res!2751879) b!6725922))

(assert (= (and d!2113438 c!1247033) b!6725921))

(assert (= (and d!2113438 (not c!1247033)) b!6725924))

(assert (= (and b!6725924 c!1247034) b!6725923))

(assert (= (and b!6725924 (not c!1247034)) b!6725920))

(assert (= (or b!6725921 b!6725923) bm!607274))

(declare-fun m!7485920 () Bool)

(assert (=> b!6725921 m!7485920))

(declare-fun m!7485922 () Bool)

(assert (=> b!6725922 m!7485922))

(declare-fun m!7485924 () Bool)

(assert (=> bm!607274 m!7485924))

(assert (=> b!6725759 d!2113438))

(declare-fun d!2113446 () Bool)

(declare-fun dynLambda!26256 (Int Context!11874) (InoxSet Context!11874))

(assert (=> d!2113446 (= (flatMap!2034 z!1189 lambda!377321) (dynLambda!26256 lambda!377321 (h!72283 zl!343)))))

(declare-fun lt!2437222 () Unit!159797)

(declare-fun choose!50117 ((InoxSet Context!11874) Context!11874 Int) Unit!159797)

(assert (=> d!2113446 (= lt!2437222 (choose!50117 z!1189 (h!72283 zl!343) lambda!377321))))

(assert (=> d!2113446 (= z!1189 (store ((as const (Array Context!11874 Bool)) false) (h!72283 zl!343) true))))

(assert (=> d!2113446 (= (lemmaFlatMapOnSingletonSet!1560 z!1189 (h!72283 zl!343) lambda!377321) lt!2437222)))

(declare-fun b_lambda!253213 () Bool)

(assert (=> (not b_lambda!253213) (not d!2113446)))

(declare-fun bs!1789027 () Bool)

(assert (= bs!1789027 d!2113446))

(assert (=> bs!1789027 m!7485774))

(declare-fun m!7485926 () Bool)

(assert (=> bs!1789027 m!7485926))

(declare-fun m!7485928 () Bool)

(assert (=> bs!1789027 m!7485928))

(declare-fun m!7485930 () Bool)

(assert (=> bs!1789027 m!7485930))

(assert (=> b!6725759 d!2113446))

(declare-fun bs!1789028 () Bool)

(declare-fun d!2113448 () Bool)

(assert (= bs!1789028 (and d!2113448 d!2113420)))

(declare-fun lambda!377346 () Int)

(assert (=> bs!1789028 (= lambda!377346 lambda!377333)))

(assert (=> d!2113448 (= (inv!84629 (h!72283 zl!343)) (forall!15753 (exprs!6437 (h!72283 zl!343)) lambda!377346))))

(declare-fun bs!1789029 () Bool)

(assert (= bs!1789029 d!2113448))

(declare-fun m!7485940 () Bool)

(assert (=> bs!1789029 m!7485940))

(assert (=> b!6725766 d!2113448))

(declare-fun bs!1789030 () Bool)

(declare-fun d!2113450 () Bool)

(assert (= bs!1789030 (and d!2113450 d!2113420)))

(declare-fun lambda!377347 () Int)

(assert (=> bs!1789030 (= lambda!377347 lambda!377333)))

(declare-fun bs!1789032 () Bool)

(assert (= bs!1789032 (and d!2113450 d!2113448)))

(assert (=> bs!1789032 (= lambda!377347 lambda!377346)))

(assert (=> d!2113450 (= (inv!84629 (Context!11875 lt!2437194)) (forall!15753 (exprs!6437 (Context!11875 lt!2437194)) lambda!377347))))

(declare-fun bs!1789033 () Bool)

(assert (= bs!1789033 d!2113450))

(declare-fun m!7485956 () Bool)

(assert (=> bs!1789033 m!7485956))

(assert (=> b!6725767 d!2113450))

(declare-fun d!2113456 () Bool)

(assert (=> d!2113456 (= (flatMap!2034 lt!2437189 lambda!377321) (choose!50116 lt!2437189 lambda!377321))))

(declare-fun bs!1789034 () Bool)

(assert (= bs!1789034 d!2113456))

(declare-fun m!7485958 () Bool)

(assert (=> bs!1789034 m!7485958))

(assert (=> b!6725767 d!2113456))

(declare-fun d!2113458 () Bool)

(declare-fun c!1247041 () Bool)

(declare-fun e!4063630 () Bool)

(assert (=> d!2113458 (= c!1247041 e!4063630)))

(declare-fun res!2751895 () Bool)

(assert (=> d!2113458 (=> (not res!2751895) (not e!4063630))))

(assert (=> d!2113458 (= res!2751895 ((_ is Cons!65834) (exprs!6437 lt!2437193)))))

(declare-fun e!4063632 () (InoxSet Context!11874))

(assert (=> d!2113458 (= (derivationStepZipperUp!1707 lt!2437193 (h!72284 s!2326)) e!4063632)))

(declare-fun b!6725952 () Bool)

(declare-fun e!4063631 () (InoxSet Context!11874))

(assert (=> b!6725952 (= e!4063631 ((as const (Array Context!11874 Bool)) false))))

(declare-fun b!6725953 () Bool)

(declare-fun call!607280 () (InoxSet Context!11874))

(assert (=> b!6725953 (= e!4063632 ((_ map or) call!607280 (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 lt!2437193))) (h!72284 s!2326))))))

(declare-fun b!6725954 () Bool)

(assert (=> b!6725954 (= e!4063630 (nullable!6540 (h!72282 (exprs!6437 lt!2437193))))))

(declare-fun b!6725955 () Bool)

(assert (=> b!6725955 (= e!4063631 call!607280)))

(declare-fun bm!607275 () Bool)

(assert (=> bm!607275 (= call!607280 (derivationStepZipperDown!1781 (h!72282 (exprs!6437 lt!2437193)) (Context!11875 (t!379641 (exprs!6437 lt!2437193))) (h!72284 s!2326)))))

(declare-fun b!6725956 () Bool)

(assert (=> b!6725956 (= e!4063632 e!4063631)))

(declare-fun c!1247042 () Bool)

(assert (=> b!6725956 (= c!1247042 ((_ is Cons!65834) (exprs!6437 lt!2437193)))))

(assert (= (and d!2113458 res!2751895) b!6725954))

(assert (= (and d!2113458 c!1247041) b!6725953))

(assert (= (and d!2113458 (not c!1247041)) b!6725956))

(assert (= (and b!6725956 c!1247042) b!6725955))

(assert (= (and b!6725956 (not c!1247042)) b!6725952))

(assert (= (or b!6725953 b!6725955) bm!607275))

(declare-fun m!7485960 () Bool)

(assert (=> b!6725953 m!7485960))

(declare-fun m!7485962 () Bool)

(assert (=> b!6725954 m!7485962))

(declare-fun m!7485964 () Bool)

(assert (=> bm!607275 m!7485964))

(assert (=> b!6725767 d!2113458))

(declare-fun d!2113460 () Bool)

(assert (=> d!2113460 (= (flatMap!2034 lt!2437189 lambda!377321) (dynLambda!26256 lambda!377321 lt!2437193))))

(declare-fun lt!2437226 () Unit!159797)

(assert (=> d!2113460 (= lt!2437226 (choose!50117 lt!2437189 lt!2437193 lambda!377321))))

(assert (=> d!2113460 (= lt!2437189 (store ((as const (Array Context!11874 Bool)) false) lt!2437193 true))))

(assert (=> d!2113460 (= (lemmaFlatMapOnSingletonSet!1560 lt!2437189 lt!2437193 lambda!377321) lt!2437226)))

(declare-fun b_lambda!253215 () Bool)

(assert (=> (not b_lambda!253215) (not d!2113460)))

(declare-fun bs!1789035 () Bool)

(assert (= bs!1789035 d!2113460))

(assert (=> bs!1789035 m!7485808))

(declare-fun m!7485966 () Bool)

(assert (=> bs!1789035 m!7485966))

(declare-fun m!7485968 () Bool)

(assert (=> bs!1789035 m!7485968))

(assert (=> bs!1789035 m!7485806))

(assert (=> b!6725767 d!2113460))

(declare-fun d!2113462 () Bool)

(declare-fun e!4063637 () Bool)

(assert (=> d!2113462 e!4063637))

(declare-fun res!2751902 () Bool)

(assert (=> d!2113462 (=> (not res!2751902) (not e!4063637))))

(declare-fun lt!2437232 () List!65959)

(declare-fun noDuplicate!2346 (List!65959) Bool)

(assert (=> d!2113462 (= res!2751902 (noDuplicate!2346 lt!2437232))))

(declare-fun choose!50119 ((InoxSet Context!11874)) List!65959)

(assert (=> d!2113462 (= lt!2437232 (choose!50119 z!1189))))

(assert (=> d!2113462 (= (toList!10337 z!1189) lt!2437232)))

(declare-fun b!6725963 () Bool)

(declare-fun content!12775 (List!65959) (InoxSet Context!11874))

(assert (=> b!6725963 (= e!4063637 (= (content!12775 lt!2437232) z!1189))))

(assert (= (and d!2113462 res!2751902) b!6725963))

(declare-fun m!7485970 () Bool)

(assert (=> d!2113462 m!7485970))

(declare-fun m!7485972 () Bool)

(assert (=> d!2113462 m!7485972))

(declare-fun m!7485974 () Bool)

(assert (=> b!6725963 m!7485974))

(assert (=> b!6725770 d!2113462))

(declare-fun bs!1789049 () Bool)

(declare-fun d!2113464 () Bool)

(assert (= bs!1789049 (and d!2113464 d!2113420)))

(declare-fun lambda!377359 () Int)

(assert (=> bs!1789049 (= lambda!377359 lambda!377333)))

(declare-fun bs!1789050 () Bool)

(assert (= bs!1789050 (and d!2113464 d!2113448)))

(assert (=> bs!1789050 (= lambda!377359 lambda!377346)))

(declare-fun bs!1789051 () Bool)

(assert (= bs!1789051 (and d!2113464 d!2113450)))

(assert (=> bs!1789051 (= lambda!377359 lambda!377347)))

(declare-fun b!6726027 () Bool)

(declare-fun e!4063678 () Bool)

(declare-fun lt!2437235 () Regex!16553)

(assert (=> b!6726027 (= e!4063678 (= lt!2437235 (head!13533 (unfocusZipperList!1974 zl!343))))))

(declare-fun e!4063679 () Bool)

(assert (=> d!2113464 e!4063679))

(declare-fun res!2751927 () Bool)

(assert (=> d!2113464 (=> (not res!2751927) (not e!4063679))))

(assert (=> d!2113464 (= res!2751927 (validRegex!8289 lt!2437235))))

(declare-fun e!4063676 () Regex!16553)

(assert (=> d!2113464 (= lt!2437235 e!4063676)))

(declare-fun c!1247065 () Bool)

(declare-fun e!4063680 () Bool)

(assert (=> d!2113464 (= c!1247065 e!4063680)))

(declare-fun res!2751926 () Bool)

(assert (=> d!2113464 (=> (not res!2751926) (not e!4063680))))

(assert (=> d!2113464 (= res!2751926 ((_ is Cons!65834) (unfocusZipperList!1974 zl!343)))))

(assert (=> d!2113464 (forall!15753 (unfocusZipperList!1974 zl!343) lambda!377359)))

(assert (=> d!2113464 (= (generalisedUnion!2397 (unfocusZipperList!1974 zl!343)) lt!2437235)))

(declare-fun b!6726028 () Bool)

(declare-fun e!4063677 () Regex!16553)

(assert (=> b!6726028 (= e!4063676 e!4063677)))

(declare-fun c!1247063 () Bool)

(assert (=> b!6726028 (= c!1247063 ((_ is Cons!65834) (unfocusZipperList!1974 zl!343)))))

(declare-fun b!6726029 () Bool)

(assert (=> b!6726029 (= e!4063680 (isEmpty!38165 (t!379641 (unfocusZipperList!1974 zl!343))))))

(declare-fun b!6726030 () Bool)

(declare-fun e!4063675 () Bool)

(assert (=> b!6726030 (= e!4063679 e!4063675)))

(declare-fun c!1247064 () Bool)

(assert (=> b!6726030 (= c!1247064 (isEmpty!38165 (unfocusZipperList!1974 zl!343)))))

(declare-fun b!6726031 () Bool)

(declare-fun isEmptyLang!1927 (Regex!16553) Bool)

(assert (=> b!6726031 (= e!4063675 (isEmptyLang!1927 lt!2437235))))

(declare-fun b!6726032 () Bool)

(assert (=> b!6726032 (= e!4063676 (h!72282 (unfocusZipperList!1974 zl!343)))))

(declare-fun b!6726033 () Bool)

(assert (=> b!6726033 (= e!4063677 EmptyLang!16553)))

(declare-fun b!6726034 () Bool)

(assert (=> b!6726034 (= e!4063675 e!4063678)))

(declare-fun c!1247066 () Bool)

(assert (=> b!6726034 (= c!1247066 (isEmpty!38165 (tail!12618 (unfocusZipperList!1974 zl!343))))))

(declare-fun b!6726035 () Bool)

(declare-fun isUnion!1357 (Regex!16553) Bool)

(assert (=> b!6726035 (= e!4063678 (isUnion!1357 lt!2437235))))

(declare-fun b!6726036 () Bool)

(assert (=> b!6726036 (= e!4063677 (Union!16553 (h!72282 (unfocusZipperList!1974 zl!343)) (generalisedUnion!2397 (t!379641 (unfocusZipperList!1974 zl!343)))))))

(assert (= (and d!2113464 res!2751926) b!6726029))

(assert (= (and d!2113464 c!1247065) b!6726032))

(assert (= (and d!2113464 (not c!1247065)) b!6726028))

(assert (= (and b!6726028 c!1247063) b!6726036))

(assert (= (and b!6726028 (not c!1247063)) b!6726033))

(assert (= (and d!2113464 res!2751927) b!6726030))

(assert (= (and b!6726030 c!1247064) b!6726031))

(assert (= (and b!6726030 (not c!1247064)) b!6726034))

(assert (= (and b!6726034 c!1247066) b!6726027))

(assert (= (and b!6726034 (not c!1247066)) b!6726035))

(declare-fun m!7485986 () Bool)

(assert (=> b!6726031 m!7485986))

(assert (=> b!6726034 m!7485786))

(declare-fun m!7485988 () Bool)

(assert (=> b!6726034 m!7485988))

(assert (=> b!6726034 m!7485988))

(declare-fun m!7485990 () Bool)

(assert (=> b!6726034 m!7485990))

(assert (=> b!6726027 m!7485786))

(declare-fun m!7485992 () Bool)

(assert (=> b!6726027 m!7485992))

(declare-fun m!7485994 () Bool)

(assert (=> b!6726036 m!7485994))

(assert (=> b!6726030 m!7485786))

(declare-fun m!7485996 () Bool)

(assert (=> b!6726030 m!7485996))

(declare-fun m!7485998 () Bool)

(assert (=> d!2113464 m!7485998))

(assert (=> d!2113464 m!7485786))

(declare-fun m!7486000 () Bool)

(assert (=> d!2113464 m!7486000))

(declare-fun m!7486002 () Bool)

(assert (=> b!6726035 m!7486002))

(declare-fun m!7486004 () Bool)

(assert (=> b!6726029 m!7486004))

(assert (=> b!6725771 d!2113464))

(declare-fun bs!1789052 () Bool)

(declare-fun d!2113470 () Bool)

(assert (= bs!1789052 (and d!2113470 d!2113420)))

(declare-fun lambda!377362 () Int)

(assert (=> bs!1789052 (= lambda!377362 lambda!377333)))

(declare-fun bs!1789053 () Bool)

(assert (= bs!1789053 (and d!2113470 d!2113448)))

(assert (=> bs!1789053 (= lambda!377362 lambda!377346)))

(declare-fun bs!1789054 () Bool)

(assert (= bs!1789054 (and d!2113470 d!2113450)))

(assert (=> bs!1789054 (= lambda!377362 lambda!377347)))

(declare-fun bs!1789055 () Bool)

(assert (= bs!1789055 (and d!2113470 d!2113464)))

(assert (=> bs!1789055 (= lambda!377362 lambda!377359)))

(declare-fun lt!2437241 () List!65958)

(assert (=> d!2113470 (forall!15753 lt!2437241 lambda!377362)))

(declare-fun e!4063704 () List!65958)

(assert (=> d!2113470 (= lt!2437241 e!4063704)))

(declare-fun c!1247078 () Bool)

(assert (=> d!2113470 (= c!1247078 ((_ is Cons!65835) zl!343))))

(assert (=> d!2113470 (= (unfocusZipperList!1974 zl!343) lt!2437241)))

(declare-fun b!6726083 () Bool)

(assert (=> b!6726083 (= e!4063704 (Cons!65834 (generalisedConcat!2150 (exprs!6437 (h!72283 zl!343))) (unfocusZipperList!1974 (t!379642 zl!343))))))

(declare-fun b!6726084 () Bool)

(assert (=> b!6726084 (= e!4063704 Nil!65834)))

(assert (= (and d!2113470 c!1247078) b!6726083))

(assert (= (and d!2113470 (not c!1247078)) b!6726084))

(declare-fun m!7486018 () Bool)

(assert (=> d!2113470 m!7486018))

(assert (=> b!6726083 m!7485796))

(declare-fun m!7486020 () Bool)

(assert (=> b!6726083 m!7486020))

(assert (=> b!6725771 d!2113470))

(declare-fun bs!1789076 () Bool)

(declare-fun b!6726207 () Bool)

(assert (= bs!1789076 (and b!6726207 b!6725773)))

(declare-fun lambda!377380 () Int)

(assert (=> bs!1789076 (not (= lambda!377380 lambda!377318))))

(assert (=> bs!1789076 (= lambda!377380 lambda!377319)))

(assert (=> bs!1789076 (not (= lambda!377380 lambda!377320))))

(assert (=> b!6726207 true))

(assert (=> b!6726207 true))

(declare-fun bs!1789077 () Bool)

(declare-fun b!6726198 () Bool)

(assert (= bs!1789077 (and b!6726198 b!6725773)))

(declare-fun lambda!377381 () Int)

(assert (=> bs!1789077 (not (= lambda!377381 lambda!377318))))

(assert (=> bs!1789077 (not (= lambda!377381 lambda!377319))))

(assert (=> bs!1789077 (= (and (= (regOne!33618 r!7292) (reg!16882 r!7292)) (= (regTwo!33618 r!7292) r!7292)) (= lambda!377381 lambda!377320))))

(declare-fun bs!1789078 () Bool)

(assert (= bs!1789078 (and b!6726198 b!6726207)))

(assert (=> bs!1789078 (not (= lambda!377381 lambda!377380))))

(assert (=> b!6726198 true))

(assert (=> b!6726198 true))

(declare-fun e!4063777 () Bool)

(declare-fun call!607296 () Bool)

(assert (=> b!6726198 (= e!4063777 call!607296)))

(declare-fun b!6726199 () Bool)

(declare-fun e!4063771 () Bool)

(assert (=> b!6726199 (= e!4063771 (= s!2326 (Cons!65836 (c!1246985 r!7292) Nil!65836)))))

(declare-fun bm!607290 () Bool)

(declare-fun call!607295 () Bool)

(assert (=> bm!607290 (= call!607295 (isEmpty!38162 s!2326))))

(declare-fun b!6726200 () Bool)

(declare-fun e!4063774 () Bool)

(assert (=> b!6726200 (= e!4063774 e!4063777)))

(declare-fun c!1247121 () Bool)

(assert (=> b!6726200 (= c!1247121 ((_ is Star!16553) r!7292))))

(declare-fun b!6726201 () Bool)

(declare-fun e!4063775 () Bool)

(assert (=> b!6726201 (= e!4063775 (matchRSpec!3654 (regTwo!33619 r!7292) s!2326))))

(declare-fun b!6726202 () Bool)

(declare-fun c!1247119 () Bool)

(assert (=> b!6726202 (= c!1247119 ((_ is ElementMatch!16553) r!7292))))

(declare-fun e!4063770 () Bool)

(assert (=> b!6726202 (= e!4063770 e!4063771)))

(declare-fun b!6726203 () Bool)

(declare-fun c!1247120 () Bool)

(assert (=> b!6726203 (= c!1247120 ((_ is Union!16553) r!7292))))

(assert (=> b!6726203 (= e!4063771 e!4063774)))

(declare-fun b!6726204 () Bool)

(declare-fun res!2751986 () Bool)

(declare-fun e!4063772 () Bool)

(assert (=> b!6726204 (=> res!2751986 e!4063772)))

(assert (=> b!6726204 (= res!2751986 call!607295)))

(assert (=> b!6726204 (= e!4063777 e!4063772)))

(declare-fun bm!607291 () Bool)

(assert (=> bm!607291 (= call!607296 (Exists!3621 (ite c!1247121 lambda!377380 lambda!377381)))))

(declare-fun b!6726205 () Bool)

(declare-fun e!4063776 () Bool)

(assert (=> b!6726205 (= e!4063776 e!4063770)))

(declare-fun res!2751985 () Bool)

(assert (=> b!6726205 (= res!2751985 (not ((_ is EmptyLang!16553) r!7292)))))

(assert (=> b!6726205 (=> (not res!2751985) (not e!4063770))))

(declare-fun d!2113474 () Bool)

(declare-fun c!1247118 () Bool)

(assert (=> d!2113474 (= c!1247118 ((_ is EmptyExpr!16553) r!7292))))

(assert (=> d!2113474 (= (matchRSpec!3654 r!7292 s!2326) e!4063776)))

(declare-fun b!6726206 () Bool)

(assert (=> b!6726206 (= e!4063774 e!4063775)))

(declare-fun res!2751984 () Bool)

(assert (=> b!6726206 (= res!2751984 (matchRSpec!3654 (regOne!33619 r!7292) s!2326))))

(assert (=> b!6726206 (=> res!2751984 e!4063775)))

(assert (=> b!6726207 (= e!4063772 call!607296)))

(declare-fun b!6726208 () Bool)

(assert (=> b!6726208 (= e!4063776 call!607295)))

(assert (= (and d!2113474 c!1247118) b!6726208))

(assert (= (and d!2113474 (not c!1247118)) b!6726205))

(assert (= (and b!6726205 res!2751985) b!6726202))

(assert (= (and b!6726202 c!1247119) b!6726199))

(assert (= (and b!6726202 (not c!1247119)) b!6726203))

(assert (= (and b!6726203 c!1247120) b!6726206))

(assert (= (and b!6726203 (not c!1247120)) b!6726200))

(assert (= (and b!6726206 (not res!2751984)) b!6726201))

(assert (= (and b!6726200 c!1247121) b!6726204))

(assert (= (and b!6726200 (not c!1247121)) b!6726198))

(assert (= (and b!6726204 (not res!2751986)) b!6726207))

(assert (= (or b!6726207 b!6726198) bm!607291))

(assert (= (or b!6726208 b!6726204) bm!607290))

(assert (=> bm!607290 m!7485818))

(declare-fun m!7486096 () Bool)

(assert (=> b!6726201 m!7486096))

(declare-fun m!7486098 () Bool)

(assert (=> bm!607291 m!7486098))

(declare-fun m!7486100 () Bool)

(assert (=> b!6726206 m!7486100))

(assert (=> b!6725760 d!2113474))

(declare-fun b!6726286 () Bool)

(declare-fun e!4063818 () Bool)

(declare-fun derivativeStep!5225 (Regex!16553 C!33376) Regex!16553)

(declare-fun head!13534 (List!65960) C!33376)

(declare-fun tail!12619 (List!65960) List!65960)

(assert (=> b!6726286 (= e!4063818 (matchR!8736 (derivativeStep!5225 r!7292 (head!13534 s!2326)) (tail!12619 s!2326)))))

(declare-fun b!6726287 () Bool)

(declare-fun e!4063812 () Bool)

(declare-fun lt!2437260 () Bool)

(assert (=> b!6726287 (= e!4063812 (not lt!2437260))))

(declare-fun b!6726288 () Bool)

(declare-fun e!4063813 () Bool)

(assert (=> b!6726288 (= e!4063813 (not (= (head!13534 s!2326) (c!1246985 r!7292))))))

(declare-fun b!6726289 () Bool)

(declare-fun e!4063815 () Bool)

(assert (=> b!6726289 (= e!4063815 e!4063812)))

(declare-fun c!1247129 () Bool)

(assert (=> b!6726289 (= c!1247129 ((_ is EmptyLang!16553) r!7292))))

(declare-fun b!6726290 () Bool)

(declare-fun e!4063816 () Bool)

(declare-fun e!4063814 () Bool)

(assert (=> b!6726290 (= e!4063816 e!4063814)))

(declare-fun res!2752003 () Bool)

(assert (=> b!6726290 (=> (not res!2752003) (not e!4063814))))

(assert (=> b!6726290 (= res!2752003 (not lt!2437260))))

(declare-fun b!6726291 () Bool)

(declare-fun res!2752008 () Bool)

(assert (=> b!6726291 (=> res!2752008 e!4063813)))

(assert (=> b!6726291 (= res!2752008 (not (isEmpty!38162 (tail!12619 s!2326))))))

(declare-fun b!6726292 () Bool)

(declare-fun res!2752004 () Bool)

(declare-fun e!4063817 () Bool)

(assert (=> b!6726292 (=> (not res!2752004) (not e!4063817))))

(assert (=> b!6726292 (= res!2752004 (isEmpty!38162 (tail!12619 s!2326)))))

(declare-fun b!6726293 () Bool)

(declare-fun res!2752010 () Bool)

(assert (=> b!6726293 (=> (not res!2752010) (not e!4063817))))

(declare-fun call!607299 () Bool)

(assert (=> b!6726293 (= res!2752010 (not call!607299))))

(declare-fun b!6726294 () Bool)

(assert (=> b!6726294 (= e!4063817 (= (head!13534 s!2326) (c!1246985 r!7292)))))

(declare-fun d!2113500 () Bool)

(assert (=> d!2113500 e!4063815))

(declare-fun c!1247128 () Bool)

(assert (=> d!2113500 (= c!1247128 ((_ is EmptyExpr!16553) r!7292))))

(assert (=> d!2113500 (= lt!2437260 e!4063818)))

(declare-fun c!1247130 () Bool)

(assert (=> d!2113500 (= c!1247130 (isEmpty!38162 s!2326))))

(assert (=> d!2113500 (validRegex!8289 r!7292)))

(assert (=> d!2113500 (= (matchR!8736 r!7292 s!2326) lt!2437260)))

(declare-fun bm!607294 () Bool)

(assert (=> bm!607294 (= call!607299 (isEmpty!38162 s!2326))))

(declare-fun b!6726295 () Bool)

(assert (=> b!6726295 (= e!4063814 e!4063813)))

(declare-fun res!2752006 () Bool)

(assert (=> b!6726295 (=> res!2752006 e!4063813)))

(assert (=> b!6726295 (= res!2752006 call!607299)))

(declare-fun b!6726296 () Bool)

(declare-fun res!2752005 () Bool)

(assert (=> b!6726296 (=> res!2752005 e!4063816)))

(assert (=> b!6726296 (= res!2752005 (not ((_ is ElementMatch!16553) r!7292)))))

(assert (=> b!6726296 (= e!4063812 e!4063816)))

(declare-fun b!6726297 () Bool)

(declare-fun res!2752009 () Bool)

(assert (=> b!6726297 (=> res!2752009 e!4063816)))

(assert (=> b!6726297 (= res!2752009 e!4063817)))

(declare-fun res!2752007 () Bool)

(assert (=> b!6726297 (=> (not res!2752007) (not e!4063817))))

(assert (=> b!6726297 (= res!2752007 lt!2437260)))

(declare-fun b!6726298 () Bool)

(assert (=> b!6726298 (= e!4063818 (nullable!6540 r!7292))))

(declare-fun b!6726299 () Bool)

(assert (=> b!6726299 (= e!4063815 (= lt!2437260 call!607299))))

(assert (= (and d!2113500 c!1247130) b!6726298))

(assert (= (and d!2113500 (not c!1247130)) b!6726286))

(assert (= (and d!2113500 c!1247128) b!6726299))

(assert (= (and d!2113500 (not c!1247128)) b!6726289))

(assert (= (and b!6726289 c!1247129) b!6726287))

(assert (= (and b!6726289 (not c!1247129)) b!6726296))

(assert (= (and b!6726296 (not res!2752005)) b!6726297))

(assert (= (and b!6726297 res!2752007) b!6726293))

(assert (= (and b!6726293 res!2752010) b!6726292))

(assert (= (and b!6726292 res!2752004) b!6726294))

(assert (= (and b!6726297 (not res!2752009)) b!6726290))

(assert (= (and b!6726290 res!2752003) b!6726295))

(assert (= (and b!6726295 (not res!2752006)) b!6726291))

(assert (= (and b!6726291 (not res!2752008)) b!6726288))

(assert (= (or b!6726299 b!6726295 b!6726293) bm!607294))

(declare-fun m!7486102 () Bool)

(assert (=> b!6726286 m!7486102))

(assert (=> b!6726286 m!7486102))

(declare-fun m!7486104 () Bool)

(assert (=> b!6726286 m!7486104))

(declare-fun m!7486106 () Bool)

(assert (=> b!6726286 m!7486106))

(assert (=> b!6726286 m!7486104))

(assert (=> b!6726286 m!7486106))

(declare-fun m!7486108 () Bool)

(assert (=> b!6726286 m!7486108))

(assert (=> b!6726291 m!7486106))

(assert (=> b!6726291 m!7486106))

(declare-fun m!7486110 () Bool)

(assert (=> b!6726291 m!7486110))

(assert (=> b!6726292 m!7486106))

(assert (=> b!6726292 m!7486106))

(assert (=> b!6726292 m!7486110))

(assert (=> bm!607294 m!7485818))

(assert (=> d!2113500 m!7485818))

(assert (=> d!2113500 m!7485782))

(declare-fun m!7486112 () Bool)

(assert (=> b!6726298 m!7486112))

(assert (=> b!6726294 m!7486102))

(assert (=> b!6726288 m!7486102))

(assert (=> b!6725760 d!2113500))

(declare-fun d!2113502 () Bool)

(assert (=> d!2113502 (= (matchR!8736 r!7292 s!2326) (matchRSpec!3654 r!7292 s!2326))))

(declare-fun lt!2437263 () Unit!159797)

(declare-fun choose!50120 (Regex!16553 List!65960) Unit!159797)

(assert (=> d!2113502 (= lt!2437263 (choose!50120 r!7292 s!2326))))

(assert (=> d!2113502 (validRegex!8289 r!7292)))

(assert (=> d!2113502 (= (mainMatchTheorem!3654 r!7292 s!2326) lt!2437263)))

(declare-fun bs!1789081 () Bool)

(assert (= bs!1789081 d!2113502))

(assert (=> bs!1789081 m!7485802))

(assert (=> bs!1789081 m!7485800))

(declare-fun m!7486114 () Bool)

(assert (=> bs!1789081 m!7486114))

(assert (=> bs!1789081 m!7485782))

(assert (=> b!6725760 d!2113502))

(declare-fun d!2113504 () Bool)

(declare-fun choose!50121 (Int) Bool)

(assert (=> d!2113504 (= (Exists!3621 lambda!377320) (choose!50121 lambda!377320))))

(declare-fun bs!1789082 () Bool)

(assert (= bs!1789082 d!2113504))

(declare-fun m!7486116 () Bool)

(assert (=> bs!1789082 m!7486116))

(assert (=> b!6725773 d!2113504))

(declare-fun d!2113506 () Bool)

(declare-fun isEmpty!38166 (Option!16440) Bool)

(assert (=> d!2113506 (= (isDefined!13143 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326)) (not (isEmpty!38166 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326))))))

(declare-fun bs!1789083 () Bool)

(assert (= bs!1789083 d!2113506))

(assert (=> bs!1789083 m!7485828))

(declare-fun m!7486118 () Bool)

(assert (=> bs!1789083 m!7486118))

(assert (=> b!6725773 d!2113506))

(declare-fun d!2113508 () Bool)

(assert (=> d!2113508 (= (Exists!3621 lambda!377319) (choose!50121 lambda!377319))))

(declare-fun bs!1789084 () Bool)

(assert (= bs!1789084 d!2113508))

(declare-fun m!7486120 () Bool)

(assert (=> bs!1789084 m!7486120))

(assert (=> b!6725773 d!2113508))

(declare-fun bs!1789085 () Bool)

(declare-fun d!2113510 () Bool)

(assert (= bs!1789085 (and d!2113510 b!6725773)))

(declare-fun lambda!377386 () Int)

(assert (=> bs!1789085 (= lambda!377386 lambda!377318)))

(declare-fun bs!1789086 () Bool)

(assert (= bs!1789086 (and d!2113510 b!6726198)))

(assert (=> bs!1789086 (not (= lambda!377386 lambda!377381))))

(declare-fun bs!1789087 () Bool)

(assert (= bs!1789087 (and d!2113510 b!6726207)))

(assert (=> bs!1789087 (not (= lambda!377386 lambda!377380))))

(assert (=> bs!1789085 (not (= lambda!377386 lambda!377320))))

(assert (=> bs!1789085 (not (= lambda!377386 lambda!377319))))

(assert (=> d!2113510 true))

(assert (=> d!2113510 true))

(assert (=> d!2113510 true))

(declare-fun bs!1789088 () Bool)

(assert (= bs!1789088 d!2113510))

(declare-fun lambda!377387 () Int)

(assert (=> bs!1789088 (not (= lambda!377387 lambda!377386))))

(assert (=> bs!1789085 (not (= lambda!377387 lambda!377318))))

(assert (=> bs!1789086 (= (and (= (reg!16882 r!7292) (regOne!33618 r!7292)) (= r!7292 (regTwo!33618 r!7292))) (= lambda!377387 lambda!377381))))

(assert (=> bs!1789087 (not (= lambda!377387 lambda!377380))))

(assert (=> bs!1789085 (= lambda!377387 lambda!377320)))

(assert (=> bs!1789085 (not (= lambda!377387 lambda!377319))))

(assert (=> d!2113510 true))

(assert (=> d!2113510 true))

(assert (=> d!2113510 true))

(assert (=> d!2113510 (= (Exists!3621 lambda!377386) (Exists!3621 lambda!377387))))

(declare-fun lt!2437266 () Unit!159797)

(declare-fun choose!50122 (Regex!16553 Regex!16553 List!65960) Unit!159797)

(assert (=> d!2113510 (= lt!2437266 (choose!50122 (reg!16882 r!7292) r!7292 s!2326))))

(assert (=> d!2113510 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113510 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2148 (reg!16882 r!7292) r!7292 s!2326) lt!2437266)))

(declare-fun m!7486122 () Bool)

(assert (=> bs!1789088 m!7486122))

(declare-fun m!7486124 () Bool)

(assert (=> bs!1789088 m!7486124))

(declare-fun m!7486126 () Bool)

(assert (=> bs!1789088 m!7486126))

(declare-fun m!7486128 () Bool)

(assert (=> bs!1789088 m!7486128))

(assert (=> b!6725773 d!2113510))

(declare-fun d!2113512 () Bool)

(assert (=> d!2113512 (= (isEmpty!38162 s!2326) ((_ is Nil!65836) s!2326))))

(assert (=> b!6725773 d!2113512))

(declare-fun d!2113514 () Bool)

(assert (=> d!2113514 (= (Exists!3621 lambda!377318) (choose!50121 lambda!377318))))

(declare-fun bs!1789089 () Bool)

(assert (= bs!1789089 d!2113514))

(declare-fun m!7486130 () Bool)

(assert (=> bs!1789089 m!7486130))

(assert (=> b!6725773 d!2113514))

(declare-fun bs!1789090 () Bool)

(declare-fun d!2113516 () Bool)

(assert (= bs!1789090 (and d!2113516 d!2113510)))

(declare-fun lambda!377392 () Int)

(assert (=> bs!1789090 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377392 lambda!377386))))

(assert (=> bs!1789090 (not (= lambda!377392 lambda!377387))))

(declare-fun bs!1789091 () Bool)

(assert (= bs!1789091 (and d!2113516 b!6725773)))

(assert (=> bs!1789091 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377392 lambda!377318))))

(declare-fun bs!1789092 () Bool)

(assert (= bs!1789092 (and d!2113516 b!6726198)))

(assert (=> bs!1789092 (not (= lambda!377392 lambda!377381))))

(declare-fun bs!1789093 () Bool)

(assert (= bs!1789093 (and d!2113516 b!6726207)))

(assert (=> bs!1789093 (not (= lambda!377392 lambda!377380))))

(assert (=> bs!1789091 (not (= lambda!377392 lambda!377320))))

(assert (=> bs!1789091 (not (= lambda!377392 lambda!377319))))

(assert (=> d!2113516 true))

(assert (=> d!2113516 true))

(declare-fun lambda!377393 () Int)

(assert (=> bs!1789090 (not (= lambda!377393 lambda!377386))))

(assert (=> bs!1789090 (not (= lambda!377393 lambda!377387))))

(assert (=> bs!1789091 (not (= lambda!377393 lambda!377318))))

(assert (=> bs!1789092 (not (= lambda!377393 lambda!377381))))

(declare-fun bs!1789094 () Bool)

(assert (= bs!1789094 d!2113516))

(assert (=> bs!1789094 (not (= lambda!377393 lambda!377392))))

(assert (=> bs!1789093 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377393 lambda!377380))))

(assert (=> bs!1789091 (not (= lambda!377393 lambda!377320))))

(assert (=> bs!1789091 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377393 lambda!377319))))

(assert (=> d!2113516 true))

(assert (=> d!2113516 true))

(assert (=> d!2113516 (= (Exists!3621 lambda!377392) (Exists!3621 lambda!377393))))

(declare-fun lt!2437269 () Unit!159797)

(declare-fun choose!50123 (Regex!16553 List!65960) Unit!159797)

(assert (=> d!2113516 (= lt!2437269 (choose!50123 (reg!16882 r!7292) s!2326))))

(assert (=> d!2113516 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113516 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!712 (reg!16882 r!7292) s!2326) lt!2437269)))

(declare-fun m!7486132 () Bool)

(assert (=> bs!1789094 m!7486132))

(declare-fun m!7486134 () Bool)

(assert (=> bs!1789094 m!7486134))

(declare-fun m!7486136 () Bool)

(assert (=> bs!1789094 m!7486136))

(assert (=> bs!1789094 m!7486128))

(assert (=> b!6725773 d!2113516))

(declare-fun b!6726336 () Bool)

(declare-fun e!4063840 () Option!16440)

(declare-fun e!4063838 () Option!16440)

(assert (=> b!6726336 (= e!4063840 e!4063838)))

(declare-fun c!1247136 () Bool)

(assert (=> b!6726336 (= c!1247136 ((_ is Nil!65836) s!2326))))

(declare-fun b!6726337 () Bool)

(declare-fun e!4063839 () Bool)

(declare-fun lt!2437277 () Option!16440)

(declare-fun ++!14709 (List!65960 List!65960) List!65960)

(declare-fun get!22901 (Option!16440) tuple2!67056)

(assert (=> b!6726337 (= e!4063839 (= (++!14709 (_1!36831 (get!22901 lt!2437277)) (_2!36831 (get!22901 lt!2437277))) s!2326))))

(declare-fun b!6726338 () Bool)

(declare-fun res!2752043 () Bool)

(assert (=> b!6726338 (=> (not res!2752043) (not e!4063839))))

(assert (=> b!6726338 (= res!2752043 (matchR!8736 r!7292 (_2!36831 (get!22901 lt!2437277))))))

(declare-fun b!6726339 () Bool)

(assert (=> b!6726339 (= e!4063840 (Some!16439 (tuple2!67057 Nil!65836 s!2326)))))

(declare-fun b!6726340 () Bool)

(declare-fun res!2752042 () Bool)

(assert (=> b!6726340 (=> (not res!2752042) (not e!4063839))))

(assert (=> b!6726340 (= res!2752042 (matchR!8736 (reg!16882 r!7292) (_1!36831 (get!22901 lt!2437277))))))

(declare-fun d!2113518 () Bool)

(declare-fun e!4063837 () Bool)

(assert (=> d!2113518 e!4063837))

(declare-fun res!2752041 () Bool)

(assert (=> d!2113518 (=> res!2752041 e!4063837)))

(assert (=> d!2113518 (= res!2752041 e!4063839)))

(declare-fun res!2752040 () Bool)

(assert (=> d!2113518 (=> (not res!2752040) (not e!4063839))))

(assert (=> d!2113518 (= res!2752040 (isDefined!13143 lt!2437277))))

(assert (=> d!2113518 (= lt!2437277 e!4063840)))

(declare-fun c!1247135 () Bool)

(declare-fun e!4063841 () Bool)

(assert (=> d!2113518 (= c!1247135 e!4063841)))

(declare-fun res!2752039 () Bool)

(assert (=> d!2113518 (=> (not res!2752039) (not e!4063841))))

(assert (=> d!2113518 (= res!2752039 (matchR!8736 (reg!16882 r!7292) Nil!65836))))

(assert (=> d!2113518 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113518 (= (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326) lt!2437277)))

(declare-fun b!6726341 () Bool)

(assert (=> b!6726341 (= e!4063838 None!16439)))

(declare-fun b!6726342 () Bool)

(assert (=> b!6726342 (= e!4063837 (not (isDefined!13143 lt!2437277)))))

(declare-fun b!6726343 () Bool)

(assert (=> b!6726343 (= e!4063841 (matchR!8736 r!7292 s!2326))))

(declare-fun b!6726344 () Bool)

(declare-fun lt!2437276 () Unit!159797)

(declare-fun lt!2437278 () Unit!159797)

(assert (=> b!6726344 (= lt!2437276 lt!2437278)))

(assert (=> b!6726344 (= (++!14709 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (t!379643 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2682 (List!65960 C!33376 List!65960 List!65960) Unit!159797)

(assert (=> b!6726344 (= lt!2437278 (lemmaMoveElementToOtherListKeepsConcatEq!2682 Nil!65836 (h!72284 s!2326) (t!379643 s!2326) s!2326))))

(assert (=> b!6726344 (= e!4063838 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (t!379643 s!2326) s!2326))))

(assert (= (and d!2113518 res!2752039) b!6726343))

(assert (= (and d!2113518 c!1247135) b!6726339))

(assert (= (and d!2113518 (not c!1247135)) b!6726336))

(assert (= (and b!6726336 c!1247136) b!6726341))

(assert (= (and b!6726336 (not c!1247136)) b!6726344))

(assert (= (and d!2113518 res!2752040) b!6726340))

(assert (= (and b!6726340 res!2752042) b!6726338))

(assert (= (and b!6726338 res!2752043) b!6726337))

(assert (= (and d!2113518 (not res!2752041)) b!6726342))

(declare-fun m!7486138 () Bool)

(assert (=> b!6726338 m!7486138))

(declare-fun m!7486140 () Bool)

(assert (=> b!6726338 m!7486140))

(assert (=> b!6726340 m!7486138))

(declare-fun m!7486142 () Bool)

(assert (=> b!6726340 m!7486142))

(declare-fun m!7486144 () Bool)

(assert (=> b!6726344 m!7486144))

(assert (=> b!6726344 m!7486144))

(declare-fun m!7486146 () Bool)

(assert (=> b!6726344 m!7486146))

(declare-fun m!7486148 () Bool)

(assert (=> b!6726344 m!7486148))

(assert (=> b!6726344 m!7486144))

(declare-fun m!7486150 () Bool)

(assert (=> b!6726344 m!7486150))

(assert (=> b!6726337 m!7486138))

(declare-fun m!7486152 () Bool)

(assert (=> b!6726337 m!7486152))

(declare-fun m!7486154 () Bool)

(assert (=> d!2113518 m!7486154))

(declare-fun m!7486156 () Bool)

(assert (=> d!2113518 m!7486156))

(assert (=> d!2113518 m!7486128))

(assert (=> b!6726342 m!7486154))

(assert (=> b!6726343 m!7485802))

(assert (=> b!6725773 d!2113518))

(declare-fun bs!1789095 () Bool)

(declare-fun d!2113520 () Bool)

(assert (= bs!1789095 (and d!2113520 d!2113510)))

(declare-fun lambda!377396 () Int)

(assert (=> bs!1789095 (= lambda!377396 lambda!377386)))

(assert (=> bs!1789095 (not (= lambda!377396 lambda!377387))))

(declare-fun bs!1789096 () Bool)

(assert (= bs!1789096 (and d!2113520 b!6725773)))

(assert (=> bs!1789096 (= lambda!377396 lambda!377318)))

(declare-fun bs!1789097 () Bool)

(assert (= bs!1789097 (and d!2113520 b!6726198)))

(assert (=> bs!1789097 (not (= lambda!377396 lambda!377381))))

(declare-fun bs!1789098 () Bool)

(assert (= bs!1789098 (and d!2113520 d!2113516)))

(assert (=> bs!1789098 (= (= r!7292 (Star!16553 (reg!16882 r!7292))) (= lambda!377396 lambda!377392))))

(declare-fun bs!1789099 () Bool)

(assert (= bs!1789099 (and d!2113520 b!6726207)))

(assert (=> bs!1789099 (not (= lambda!377396 lambda!377380))))

(assert (=> bs!1789098 (not (= lambda!377396 lambda!377393))))

(assert (=> bs!1789096 (not (= lambda!377396 lambda!377320))))

(assert (=> bs!1789096 (not (= lambda!377396 lambda!377319))))

(assert (=> d!2113520 true))

(assert (=> d!2113520 true))

(assert (=> d!2113520 true))

(assert (=> d!2113520 (= (isDefined!13143 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326)) (Exists!3621 lambda!377396))))

(declare-fun lt!2437281 () Unit!159797)

(declare-fun choose!50124 (Regex!16553 Regex!16553 List!65960) Unit!159797)

(assert (=> d!2113520 (= lt!2437281 (choose!50124 (reg!16882 r!7292) r!7292 s!2326))))

(assert (=> d!2113520 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113520 (= (lemmaFindConcatSeparationEquivalentToExists!2618 (reg!16882 r!7292) r!7292 s!2326) lt!2437281)))

(declare-fun bs!1789100 () Bool)

(assert (= bs!1789100 d!2113520))

(assert (=> bs!1789100 m!7485828))

(assert (=> bs!1789100 m!7485830))

(assert (=> bs!1789100 m!7486128))

(declare-fun m!7486158 () Bool)

(assert (=> bs!1789100 m!7486158))

(assert (=> bs!1789100 m!7485828))

(declare-fun m!7486160 () Bool)

(assert (=> bs!1789100 m!7486160))

(assert (=> b!6725773 d!2113520))

(declare-fun d!2113522 () Bool)

(declare-fun lt!2437284 () Regex!16553)

(assert (=> d!2113522 (validRegex!8289 lt!2437284)))

(assert (=> d!2113522 (= lt!2437284 (generalisedUnion!2397 (unfocusZipperList!1974 zl!343)))))

(assert (=> d!2113522 (= (unfocusZipper!2295 zl!343) lt!2437284)))

(declare-fun bs!1789101 () Bool)

(assert (= bs!1789101 d!2113522))

(declare-fun m!7486162 () Bool)

(assert (=> bs!1789101 m!7486162))

(assert (=> bs!1789101 m!7485786))

(assert (=> bs!1789101 m!7485786))

(assert (=> bs!1789101 m!7485788))

(assert (=> b!6725764 d!2113522))

(declare-fun bs!1789102 () Bool)

(declare-fun d!2113524 () Bool)

(assert (= bs!1789102 (and d!2113524 d!2113420)))

(declare-fun lambda!377397 () Int)

(assert (=> bs!1789102 (= lambda!377397 lambda!377333)))

(declare-fun bs!1789103 () Bool)

(assert (= bs!1789103 (and d!2113524 d!2113448)))

(assert (=> bs!1789103 (= lambda!377397 lambda!377346)))

(declare-fun bs!1789104 () Bool)

(assert (= bs!1789104 (and d!2113524 d!2113450)))

(assert (=> bs!1789104 (= lambda!377397 lambda!377347)))

(declare-fun bs!1789105 () Bool)

(assert (= bs!1789105 (and d!2113524 d!2113470)))

(assert (=> bs!1789105 (= lambda!377397 lambda!377362)))

(declare-fun bs!1789106 () Bool)

(assert (= bs!1789106 (and d!2113524 d!2113464)))

(assert (=> bs!1789106 (= lambda!377397 lambda!377359)))

(assert (=> d!2113524 (= (inv!84629 setElem!45855) (forall!15753 (exprs!6437 setElem!45855) lambda!377397))))

(declare-fun bs!1789107 () Bool)

(assert (= bs!1789107 d!2113524))

(declare-fun m!7486164 () Bool)

(assert (=> bs!1789107 m!7486164))

(assert (=> setNonEmpty!45855 d!2113524))

(declare-fun b!6726367 () Bool)

(declare-fun res!2752060 () Bool)

(declare-fun e!4063859 () Bool)

(assert (=> b!6726367 (=> res!2752060 e!4063859)))

(assert (=> b!6726367 (= res!2752060 (not ((_ is Concat!25398) r!7292)))))

(declare-fun e!4063863 () Bool)

(assert (=> b!6726367 (= e!4063863 e!4063859)))

(declare-fun b!6726368 () Bool)

(declare-fun e!4063862 () Bool)

(assert (=> b!6726368 (= e!4063862 e!4063863)))

(declare-fun c!1247141 () Bool)

(assert (=> b!6726368 (= c!1247141 ((_ is Union!16553) r!7292))))

(declare-fun b!6726369 () Bool)

(declare-fun e!4063858 () Bool)

(assert (=> b!6726369 (= e!4063862 e!4063858)))

(declare-fun res!2752059 () Bool)

(assert (=> b!6726369 (= res!2752059 (not (nullable!6540 (reg!16882 r!7292))))))

(assert (=> b!6726369 (=> (not res!2752059) (not e!4063858))))

(declare-fun bm!607301 () Bool)

(declare-fun call!607307 () Bool)

(assert (=> bm!607301 (= call!607307 (validRegex!8289 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))))))

(declare-fun b!6726370 () Bool)

(declare-fun call!607306 () Bool)

(assert (=> b!6726370 (= e!4063858 call!607306)))

(declare-fun c!1247142 () Bool)

(declare-fun bm!607302 () Bool)

(assert (=> bm!607302 (= call!607306 (validRegex!8289 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))

(declare-fun b!6726371 () Bool)

(declare-fun e!4063861 () Bool)

(assert (=> b!6726371 (= e!4063861 call!607307)))

(declare-fun b!6726372 () Bool)

(declare-fun res!2752058 () Bool)

(assert (=> b!6726372 (=> (not res!2752058) (not e!4063861))))

(declare-fun call!607308 () Bool)

(assert (=> b!6726372 (= res!2752058 call!607308)))

(assert (=> b!6726372 (= e!4063863 e!4063861)))

(declare-fun b!6726373 () Bool)

(declare-fun e!4063860 () Bool)

(assert (=> b!6726373 (= e!4063860 e!4063862)))

(assert (=> b!6726373 (= c!1247142 ((_ is Star!16553) r!7292))))

(declare-fun b!6726374 () Bool)

(declare-fun e!4063864 () Bool)

(assert (=> b!6726374 (= e!4063864 call!607307)))

(declare-fun d!2113526 () Bool)

(declare-fun res!2752062 () Bool)

(assert (=> d!2113526 (=> res!2752062 e!4063860)))

(assert (=> d!2113526 (= res!2752062 ((_ is ElementMatch!16553) r!7292))))

(assert (=> d!2113526 (= (validRegex!8289 r!7292) e!4063860)))

(declare-fun b!6726375 () Bool)

(assert (=> b!6726375 (= e!4063859 e!4063864)))

(declare-fun res!2752061 () Bool)

(assert (=> b!6726375 (=> (not res!2752061) (not e!4063864))))

(assert (=> b!6726375 (= res!2752061 call!607308)))

(declare-fun bm!607303 () Bool)

(assert (=> bm!607303 (= call!607308 call!607306)))

(assert (= (and d!2113526 (not res!2752062)) b!6726373))

(assert (= (and b!6726373 c!1247142) b!6726369))

(assert (= (and b!6726373 (not c!1247142)) b!6726368))

(assert (= (and b!6726369 res!2752059) b!6726370))

(assert (= (and b!6726368 c!1247141) b!6726372))

(assert (= (and b!6726368 (not c!1247141)) b!6726367))

(assert (= (and b!6726372 res!2752058) b!6726371))

(assert (= (and b!6726367 (not res!2752060)) b!6726375))

(assert (= (and b!6726375 res!2752061) b!6726374))

(assert (= (or b!6726371 b!6726374) bm!607301))

(assert (= (or b!6726372 b!6726375) bm!607303))

(assert (= (or b!6726370 bm!607303) bm!607302))

(declare-fun m!7486166 () Bool)

(assert (=> b!6726369 m!7486166))

(declare-fun m!7486168 () Bool)

(assert (=> bm!607301 m!7486168))

(declare-fun m!7486170 () Bool)

(assert (=> bm!607302 m!7486170))

(assert (=> start!652192 d!2113526))

(declare-fun b!6726398 () Bool)

(declare-fun e!4063882 () Bool)

(assert (=> b!6726398 (= e!4063882 (nullable!6540 (regOne!33618 r!7292)))))

(declare-fun bm!607316 () Bool)

(declare-fun call!607325 () (InoxSet Context!11874))

(declare-fun call!607321 () (InoxSet Context!11874))

(assert (=> bm!607316 (= call!607325 call!607321)))

(declare-fun b!6726399 () Bool)

(declare-fun c!1247153 () Bool)

(assert (=> b!6726399 (= c!1247153 ((_ is Star!16553) r!7292))))

(declare-fun e!4063877 () (InoxSet Context!11874))

(declare-fun e!4063880 () (InoxSet Context!11874))

(assert (=> b!6726399 (= e!4063877 e!4063880)))

(declare-fun b!6726400 () Bool)

(declare-fun e!4063879 () (InoxSet Context!11874))

(declare-fun call!607324 () (InoxSet Context!11874))

(declare-fun call!607326 () (InoxSet Context!11874))

(assert (=> b!6726400 (= e!4063879 ((_ map or) call!607324 call!607326))))

(declare-fun d!2113528 () Bool)

(declare-fun c!1247154 () Bool)

(assert (=> d!2113528 (= c!1247154 (and ((_ is ElementMatch!16553) r!7292) (= (c!1246985 r!7292) (h!72284 s!2326))))))

(declare-fun e!4063881 () (InoxSet Context!11874))

(assert (=> d!2113528 (= (derivationStepZipperDown!1781 r!7292 (Context!11875 Nil!65834) (h!72284 s!2326)) e!4063881)))

(declare-fun b!6726401 () Bool)

(declare-fun e!4063878 () (InoxSet Context!11874))

(assert (=> b!6726401 (= e!4063878 e!4063877)))

(declare-fun c!1247155 () Bool)

(assert (=> b!6726401 (= c!1247155 ((_ is Concat!25398) r!7292))))

(declare-fun b!6726402 () Bool)

(assert (=> b!6726402 (= e!4063877 call!607325)))

(declare-fun bm!607317 () Bool)

(declare-fun call!607322 () List!65958)

(declare-fun call!607323 () List!65958)

(assert (=> bm!607317 (= call!607322 call!607323)))

(declare-fun b!6726403 () Bool)

(assert (=> b!6726403 (= e!4063881 e!4063879)))

(declare-fun c!1247157 () Bool)

(assert (=> b!6726403 (= c!1247157 ((_ is Union!16553) r!7292))))

(declare-fun b!6726404 () Bool)

(assert (=> b!6726404 (= e!4063878 ((_ map or) call!607324 call!607321))))

(declare-fun bm!607318 () Bool)

(declare-fun c!1247156 () Bool)

(assert (=> bm!607318 (= call!607326 (derivationStepZipperDown!1781 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292)))) (ite (or c!1247157 c!1247156) (Context!11875 Nil!65834) (Context!11875 call!607322)) (h!72284 s!2326)))))

(declare-fun b!6726405 () Bool)

(assert (=> b!6726405 (= e!4063880 call!607325)))

(declare-fun b!6726406 () Bool)

(assert (=> b!6726406 (= e!4063881 (store ((as const (Array Context!11874 Bool)) false) (Context!11875 Nil!65834) true))))

(declare-fun bm!607319 () Bool)

(assert (=> bm!607319 (= call!607321 call!607326)))

(declare-fun bm!607320 () Bool)

(declare-fun $colon$colon!2370 (List!65958 Regex!16553) List!65958)

(assert (=> bm!607320 (= call!607323 ($colon$colon!2370 (exprs!6437 (Context!11875 Nil!65834)) (ite (or c!1247156 c!1247155) (regTwo!33618 r!7292) r!7292)))))

(declare-fun bm!607321 () Bool)

(assert (=> bm!607321 (= call!607324 (derivationStepZipperDown!1781 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292)) (ite c!1247157 (Context!11875 Nil!65834) (Context!11875 call!607323)) (h!72284 s!2326)))))

(declare-fun b!6726407 () Bool)

(assert (=> b!6726407 (= c!1247156 e!4063882)))

(declare-fun res!2752065 () Bool)

(assert (=> b!6726407 (=> (not res!2752065) (not e!4063882))))

(assert (=> b!6726407 (= res!2752065 ((_ is Concat!25398) r!7292))))

(assert (=> b!6726407 (= e!4063879 e!4063878)))

(declare-fun b!6726408 () Bool)

(assert (=> b!6726408 (= e!4063880 ((as const (Array Context!11874 Bool)) false))))

(assert (= (and d!2113528 c!1247154) b!6726406))

(assert (= (and d!2113528 (not c!1247154)) b!6726403))

(assert (= (and b!6726403 c!1247157) b!6726400))

(assert (= (and b!6726403 (not c!1247157)) b!6726407))

(assert (= (and b!6726407 res!2752065) b!6726398))

(assert (= (and b!6726407 c!1247156) b!6726404))

(assert (= (and b!6726407 (not c!1247156)) b!6726401))

(assert (= (and b!6726401 c!1247155) b!6726402))

(assert (= (and b!6726401 (not c!1247155)) b!6726399))

(assert (= (and b!6726399 c!1247153) b!6726405))

(assert (= (and b!6726399 (not c!1247153)) b!6726408))

(assert (= (or b!6726402 b!6726405) bm!607317))

(assert (= (or b!6726402 b!6726405) bm!607316))

(assert (= (or b!6726404 bm!607317) bm!607320))

(assert (= (or b!6726404 bm!607316) bm!607319))

(assert (= (or b!6726400 bm!607319) bm!607318))

(assert (= (or b!6726400 b!6726404) bm!607321))

(declare-fun m!7486172 () Bool)

(assert (=> bm!607318 m!7486172))

(declare-fun m!7486174 () Bool)

(assert (=> b!6726398 m!7486174))

(declare-fun m!7486176 () Bool)

(assert (=> bm!607320 m!7486176))

(declare-fun m!7486178 () Bool)

(assert (=> bm!607321 m!7486178))

(declare-fun m!7486180 () Bool)

(assert (=> b!6726406 m!7486180))

(assert (=> b!6725754 d!2113528))

(declare-fun d!2113530 () Bool)

(declare-fun c!1247158 () Bool)

(declare-fun e!4063883 () Bool)

(assert (=> d!2113530 (= c!1247158 e!4063883)))

(declare-fun res!2752066 () Bool)

(assert (=> d!2113530 (=> (not res!2752066) (not e!4063883))))

(assert (=> d!2113530 (= res!2752066 ((_ is Cons!65834) (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))

(declare-fun e!4063885 () (InoxSet Context!11874))

(assert (=> d!2113530 (= (derivationStepZipperUp!1707 (Context!11875 (Cons!65834 r!7292 Nil!65834)) (h!72284 s!2326)) e!4063885)))

(declare-fun b!6726409 () Bool)

(declare-fun e!4063884 () (InoxSet Context!11874))

(assert (=> b!6726409 (= e!4063884 ((as const (Array Context!11874 Bool)) false))))

(declare-fun call!607327 () (InoxSet Context!11874))

(declare-fun b!6726410 () Bool)

(assert (=> b!6726410 (= e!4063885 ((_ map or) call!607327 (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (h!72284 s!2326))))))

(declare-fun b!6726411 () Bool)

(assert (=> b!6726411 (= e!4063883 (nullable!6540 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))

(declare-fun b!6726412 () Bool)

(assert (=> b!6726412 (= e!4063884 call!607327)))

(declare-fun bm!607322 () Bool)

(assert (=> bm!607322 (= call!607327 (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (h!72284 s!2326)))))

(declare-fun b!6726413 () Bool)

(assert (=> b!6726413 (= e!4063885 e!4063884)))

(declare-fun c!1247159 () Bool)

(assert (=> b!6726413 (= c!1247159 ((_ is Cons!65834) (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))

(assert (= (and d!2113530 res!2752066) b!6726411))

(assert (= (and d!2113530 c!1247158) b!6726410))

(assert (= (and d!2113530 (not c!1247158)) b!6726413))

(assert (= (and b!6726413 c!1247159) b!6726412))

(assert (= (and b!6726413 (not c!1247159)) b!6726409))

(assert (= (or b!6726410 b!6726412) bm!607322))

(declare-fun m!7486182 () Bool)

(assert (=> b!6726410 m!7486182))

(declare-fun m!7486184 () Bool)

(assert (=> b!6726411 m!7486184))

(declare-fun m!7486186 () Bool)

(assert (=> bm!607322 m!7486186))

(assert (=> b!6725754 d!2113530))

(declare-fun d!2113532 () Bool)

(assert (=> d!2113532 (= (isEmpty!38161 (t!379642 zl!343)) ((_ is Nil!65835) (t!379642 zl!343)))))

(assert (=> b!6725753 d!2113532))

(declare-fun b!6726418 () Bool)

(declare-fun e!4063888 () Bool)

(declare-fun tp!1844216 () Bool)

(declare-fun tp!1844217 () Bool)

(assert (=> b!6726418 (= e!4063888 (and tp!1844216 tp!1844217))))

(assert (=> b!6725765 (= tp!1844146 e!4063888)))

(assert (= (and b!6725765 ((_ is Cons!65834) (exprs!6437 setElem!45855))) b!6726418))

(declare-fun b!6726431 () Bool)

(declare-fun e!4063891 () Bool)

(declare-fun tp!1844231 () Bool)

(assert (=> b!6726431 (= e!4063891 tp!1844231)))

(assert (=> b!6725762 (= tp!1844148 e!4063891)))

(declare-fun b!6726429 () Bool)

(assert (=> b!6726429 (= e!4063891 tp_is_empty!42359)))

(declare-fun b!6726430 () Bool)

(declare-fun tp!1844228 () Bool)

(declare-fun tp!1844229 () Bool)

(assert (=> b!6726430 (= e!4063891 (and tp!1844228 tp!1844229))))

(declare-fun b!6726432 () Bool)

(declare-fun tp!1844230 () Bool)

(declare-fun tp!1844232 () Bool)

(assert (=> b!6726432 (= e!4063891 (and tp!1844230 tp!1844232))))

(assert (= (and b!6725762 ((_ is ElementMatch!16553) (regOne!33618 r!7292))) b!6726429))

(assert (= (and b!6725762 ((_ is Concat!25398) (regOne!33618 r!7292))) b!6726430))

(assert (= (and b!6725762 ((_ is Star!16553) (regOne!33618 r!7292))) b!6726431))

(assert (= (and b!6725762 ((_ is Union!16553) (regOne!33618 r!7292))) b!6726432))

(declare-fun b!6726435 () Bool)

(declare-fun e!4063892 () Bool)

(declare-fun tp!1844236 () Bool)

(assert (=> b!6726435 (= e!4063892 tp!1844236)))

(assert (=> b!6725762 (= tp!1844152 e!4063892)))

(declare-fun b!6726433 () Bool)

(assert (=> b!6726433 (= e!4063892 tp_is_empty!42359)))

(declare-fun b!6726434 () Bool)

(declare-fun tp!1844233 () Bool)

(declare-fun tp!1844234 () Bool)

(assert (=> b!6726434 (= e!4063892 (and tp!1844233 tp!1844234))))

(declare-fun b!6726436 () Bool)

(declare-fun tp!1844235 () Bool)

(declare-fun tp!1844237 () Bool)

(assert (=> b!6726436 (= e!4063892 (and tp!1844235 tp!1844237))))

(assert (= (and b!6725762 ((_ is ElementMatch!16553) (regTwo!33618 r!7292))) b!6726433))

(assert (= (and b!6725762 ((_ is Concat!25398) (regTwo!33618 r!7292))) b!6726434))

(assert (= (and b!6725762 ((_ is Star!16553) (regTwo!33618 r!7292))) b!6726435))

(assert (= (and b!6725762 ((_ is Union!16553) (regTwo!33618 r!7292))) b!6726436))

(declare-fun b!6726437 () Bool)

(declare-fun e!4063893 () Bool)

(declare-fun tp!1844238 () Bool)

(declare-fun tp!1844239 () Bool)

(assert (=> b!6726437 (= e!4063893 (and tp!1844238 tp!1844239))))

(assert (=> b!6725769 (= tp!1844147 e!4063893)))

(assert (= (and b!6725769 ((_ is Cons!65834) (exprs!6437 (h!72283 zl!343)))) b!6726437))

(declare-fun condSetEmpty!45861 () Bool)

(assert (=> setNonEmpty!45855 (= condSetEmpty!45861 (= setRest!45855 ((as const (Array Context!11874 Bool)) false)))))

(declare-fun setRes!45861 () Bool)

(assert (=> setNonEmpty!45855 (= tp!1844144 setRes!45861)))

(declare-fun setIsEmpty!45861 () Bool)

(assert (=> setIsEmpty!45861 setRes!45861))

(declare-fun setElem!45861 () Context!11874)

(declare-fun e!4063896 () Bool)

(declare-fun tp!1844245 () Bool)

(declare-fun setNonEmpty!45861 () Bool)

(assert (=> setNonEmpty!45861 (= setRes!45861 (and tp!1844245 (inv!84629 setElem!45861) e!4063896))))

(declare-fun setRest!45861 () (InoxSet Context!11874))

(assert (=> setNonEmpty!45861 (= setRest!45855 ((_ map or) (store ((as const (Array Context!11874 Bool)) false) setElem!45861 true) setRest!45861))))

(declare-fun b!6726442 () Bool)

(declare-fun tp!1844244 () Bool)

(assert (=> b!6726442 (= e!4063896 tp!1844244)))

(assert (= (and setNonEmpty!45855 condSetEmpty!45861) setIsEmpty!45861))

(assert (= (and setNonEmpty!45855 (not condSetEmpty!45861)) setNonEmpty!45861))

(assert (= setNonEmpty!45861 b!6726442))

(declare-fun m!7486188 () Bool)

(assert (=> setNonEmpty!45861 m!7486188))

(declare-fun b!6726445 () Bool)

(declare-fun e!4063897 () Bool)

(declare-fun tp!1844249 () Bool)

(assert (=> b!6726445 (= e!4063897 tp!1844249)))

(assert (=> b!6725768 (= tp!1844145 e!4063897)))

(declare-fun b!6726443 () Bool)

(assert (=> b!6726443 (= e!4063897 tp_is_empty!42359)))

(declare-fun b!6726444 () Bool)

(declare-fun tp!1844246 () Bool)

(declare-fun tp!1844247 () Bool)

(assert (=> b!6726444 (= e!4063897 (and tp!1844246 tp!1844247))))

(declare-fun b!6726446 () Bool)

(declare-fun tp!1844248 () Bool)

(declare-fun tp!1844250 () Bool)

(assert (=> b!6726446 (= e!4063897 (and tp!1844248 tp!1844250))))

(assert (= (and b!6725768 ((_ is ElementMatch!16553) (regOne!33619 r!7292))) b!6726443))

(assert (= (and b!6725768 ((_ is Concat!25398) (regOne!33619 r!7292))) b!6726444))

(assert (= (and b!6725768 ((_ is Star!16553) (regOne!33619 r!7292))) b!6726445))

(assert (= (and b!6725768 ((_ is Union!16553) (regOne!33619 r!7292))) b!6726446))

(declare-fun b!6726449 () Bool)

(declare-fun e!4063898 () Bool)

(declare-fun tp!1844254 () Bool)

(assert (=> b!6726449 (= e!4063898 tp!1844254)))

(assert (=> b!6725768 (= tp!1844151 e!4063898)))

(declare-fun b!6726447 () Bool)

(assert (=> b!6726447 (= e!4063898 tp_is_empty!42359)))

(declare-fun b!6726448 () Bool)

(declare-fun tp!1844251 () Bool)

(declare-fun tp!1844252 () Bool)

(assert (=> b!6726448 (= e!4063898 (and tp!1844251 tp!1844252))))

(declare-fun b!6726450 () Bool)

(declare-fun tp!1844253 () Bool)

(declare-fun tp!1844255 () Bool)

(assert (=> b!6726450 (= e!4063898 (and tp!1844253 tp!1844255))))

(assert (= (and b!6725768 ((_ is ElementMatch!16553) (regTwo!33619 r!7292))) b!6726447))

(assert (= (and b!6725768 ((_ is Concat!25398) (regTwo!33619 r!7292))) b!6726448))

(assert (= (and b!6725768 ((_ is Star!16553) (regTwo!33619 r!7292))) b!6726449))

(assert (= (and b!6725768 ((_ is Union!16553) (regTwo!33619 r!7292))) b!6726450))

(declare-fun b!6726455 () Bool)

(declare-fun e!4063901 () Bool)

(declare-fun tp!1844258 () Bool)

(assert (=> b!6726455 (= e!4063901 (and tp_is_empty!42359 tp!1844258))))

(assert (=> b!6725763 (= tp!1844150 e!4063901)))

(assert (= (and b!6725763 ((_ is Cons!65836) (t!379643 s!2326))) b!6726455))

(declare-fun b!6726463 () Bool)

(declare-fun e!4063907 () Bool)

(declare-fun tp!1844263 () Bool)

(assert (=> b!6726463 (= e!4063907 tp!1844263)))

(declare-fun tp!1844264 () Bool)

(declare-fun b!6726462 () Bool)

(declare-fun e!4063906 () Bool)

(assert (=> b!6726462 (= e!4063906 (and (inv!84629 (h!72283 (t!379642 zl!343))) e!4063907 tp!1844264))))

(assert (=> b!6725766 (= tp!1844149 e!4063906)))

(assert (= b!6726462 b!6726463))

(assert (= (and b!6725766 ((_ is Cons!65835) (t!379642 zl!343))) b!6726462))

(declare-fun m!7486190 () Bool)

(assert (=> b!6726462 m!7486190))

(declare-fun b!6726466 () Bool)

(declare-fun e!4063908 () Bool)

(declare-fun tp!1844268 () Bool)

(assert (=> b!6726466 (= e!4063908 tp!1844268)))

(assert (=> b!6725772 (= tp!1844153 e!4063908)))

(declare-fun b!6726464 () Bool)

(assert (=> b!6726464 (= e!4063908 tp_is_empty!42359)))

(declare-fun b!6726465 () Bool)

(declare-fun tp!1844265 () Bool)

(declare-fun tp!1844266 () Bool)

(assert (=> b!6726465 (= e!4063908 (and tp!1844265 tp!1844266))))

(declare-fun b!6726467 () Bool)

(declare-fun tp!1844267 () Bool)

(declare-fun tp!1844269 () Bool)

(assert (=> b!6726467 (= e!4063908 (and tp!1844267 tp!1844269))))

(assert (= (and b!6725772 ((_ is ElementMatch!16553) (reg!16882 r!7292))) b!6726464))

(assert (= (and b!6725772 ((_ is Concat!25398) (reg!16882 r!7292))) b!6726465))

(assert (= (and b!6725772 ((_ is Star!16553) (reg!16882 r!7292))) b!6726466))

(assert (= (and b!6725772 ((_ is Union!16553) (reg!16882 r!7292))) b!6726467))

(declare-fun b_lambda!253223 () Bool)

(assert (= b_lambda!253215 (or b!6725759 b_lambda!253223)))

(declare-fun bs!1789108 () Bool)

(declare-fun d!2113534 () Bool)

(assert (= bs!1789108 (and d!2113534 b!6725759)))

(assert (=> bs!1789108 (= (dynLambda!26256 lambda!377321 lt!2437193) (derivationStepZipperUp!1707 lt!2437193 (h!72284 s!2326)))))

(assert (=> bs!1789108 m!7485814))

(assert (=> d!2113460 d!2113534))

(declare-fun b_lambda!253225 () Bool)

(assert (= b_lambda!253213 (or b!6725759 b_lambda!253225)))

(declare-fun bs!1789109 () Bool)

(declare-fun d!2113536 () Bool)

(assert (= bs!1789109 (and d!2113536 b!6725759)))

(assert (=> bs!1789109 (= (dynLambda!26256 lambda!377321 (h!72283 zl!343)) (derivationStepZipperUp!1707 (h!72283 zl!343) (h!72284 s!2326)))))

(assert (=> bs!1789109 m!7485776))

(assert (=> d!2113446 d!2113536))

(check-sat (not b!6726369) (not b!6726450) (not b!6726411) (not bm!607301) (not d!2113518) (not d!2113516) (not b!6726448) (not b!6725895) (not b!6726410) tp_is_empty!42359 (not b!6726446) (not b!6725953) (not b!6726449) (not d!2113502) (not bm!607290) (not d!2113506) (not d!2113514) (not d!2113500) (not b!6726036) (not b!6726083) (not b!6726338) (not d!2113470) (not bm!607294) (not b!6726288) (not b!6726344) (not bs!1789109) (not b!6726442) (not b!6726292) (not b!6726337) (not d!2113520) (not b!6725963) (not b!6726436) (not d!2113524) (not b!6725890) (not d!2113434) (not b!6726430) (not b!6726466) (not b!6726431) (not d!2113508) (not b!6726031) (not b!6726342) (not b!6726035) (not bm!607322) (not b!6725954) (not b!6725897) (not bs!1789108) (not b!6726398) (not b!6726435) (not d!2113420) (not bm!607321) (not d!2113462) (not b!6725896) (not b!6725894) (not b!6726444) (not b!6726340) (not d!2113464) (not d!2113504) (not bm!607291) (not b!6726445) (not b!6726201) (not setNonEmpty!45861) (not bm!607302) (not b!6725922) (not b!6726291) (not b!6726465) (not bm!607318) (not b!6726034) (not b!6726434) (not d!2113456) (not d!2113460) (not d!2113436) (not b!6726286) (not b!6726030) (not d!2113510) (not d!2113522) (not b_lambda!253223) (not bm!607320) (not b!6725892) (not bm!607274) (not b_lambda!253225) (not bm!607275) (not b!6726437) (not b!6726462) (not b!6726206) (not b!6726463) (not b!6726029) (not b!6726343) (not b!6725921) (not b!6726418) (not b!6726432) (not b!6726467) (not b!6726298) (not d!2113450) (not d!2113448) (not b!6726027) (not b!6725891) (not b!6726294) (not d!2113446) (not b!6726455))
(check-sat)
(get-model)

(declare-fun b!6726573 () Bool)

(declare-fun e!4063984 () Bool)

(assert (=> b!6726573 (= e!4063984 (matchR!8736 (derivativeStep!5225 r!7292 (head!13534 (_2!36831 (get!22901 lt!2437277)))) (tail!12619 (_2!36831 (get!22901 lt!2437277)))))))

(declare-fun b!6726574 () Bool)

(declare-fun e!4063978 () Bool)

(declare-fun lt!2437288 () Bool)

(assert (=> b!6726574 (= e!4063978 (not lt!2437288))))

(declare-fun b!6726575 () Bool)

(declare-fun e!4063979 () Bool)

(assert (=> b!6726575 (= e!4063979 (not (= (head!13534 (_2!36831 (get!22901 lt!2437277))) (c!1246985 r!7292))))))

(declare-fun b!6726576 () Bool)

(declare-fun e!4063981 () Bool)

(assert (=> b!6726576 (= e!4063981 e!4063978)))

(declare-fun c!1247189 () Bool)

(assert (=> b!6726576 (= c!1247189 ((_ is EmptyLang!16553) r!7292))))

(declare-fun b!6726577 () Bool)

(declare-fun e!4063982 () Bool)

(declare-fun e!4063980 () Bool)

(assert (=> b!6726577 (= e!4063982 e!4063980)))

(declare-fun res!2752113 () Bool)

(assert (=> b!6726577 (=> (not res!2752113) (not e!4063980))))

(assert (=> b!6726577 (= res!2752113 (not lt!2437288))))

(declare-fun b!6726578 () Bool)

(declare-fun res!2752118 () Bool)

(assert (=> b!6726578 (=> res!2752118 e!4063979)))

(assert (=> b!6726578 (= res!2752118 (not (isEmpty!38162 (tail!12619 (_2!36831 (get!22901 lt!2437277))))))))

(declare-fun b!6726579 () Bool)

(declare-fun res!2752114 () Bool)

(declare-fun e!4063983 () Bool)

(assert (=> b!6726579 (=> (not res!2752114) (not e!4063983))))

(assert (=> b!6726579 (= res!2752114 (isEmpty!38162 (tail!12619 (_2!36831 (get!22901 lt!2437277)))))))

(declare-fun b!6726580 () Bool)

(declare-fun res!2752120 () Bool)

(assert (=> b!6726580 (=> (not res!2752120) (not e!4063983))))

(declare-fun call!607350 () Bool)

(assert (=> b!6726580 (= res!2752120 (not call!607350))))

(declare-fun b!6726581 () Bool)

(assert (=> b!6726581 (= e!4063983 (= (head!13534 (_2!36831 (get!22901 lt!2437277))) (c!1246985 r!7292)))))

(declare-fun d!2113582 () Bool)

(assert (=> d!2113582 e!4063981))

(declare-fun c!1247188 () Bool)

(assert (=> d!2113582 (= c!1247188 ((_ is EmptyExpr!16553) r!7292))))

(assert (=> d!2113582 (= lt!2437288 e!4063984)))

(declare-fun c!1247190 () Bool)

(assert (=> d!2113582 (= c!1247190 (isEmpty!38162 (_2!36831 (get!22901 lt!2437277))))))

(assert (=> d!2113582 (validRegex!8289 r!7292)))

(assert (=> d!2113582 (= (matchR!8736 r!7292 (_2!36831 (get!22901 lt!2437277))) lt!2437288)))

(declare-fun bm!607345 () Bool)

(assert (=> bm!607345 (= call!607350 (isEmpty!38162 (_2!36831 (get!22901 lt!2437277))))))

(declare-fun b!6726582 () Bool)

(assert (=> b!6726582 (= e!4063980 e!4063979)))

(declare-fun res!2752116 () Bool)

(assert (=> b!6726582 (=> res!2752116 e!4063979)))

(assert (=> b!6726582 (= res!2752116 call!607350)))

(declare-fun b!6726583 () Bool)

(declare-fun res!2752115 () Bool)

(assert (=> b!6726583 (=> res!2752115 e!4063982)))

(assert (=> b!6726583 (= res!2752115 (not ((_ is ElementMatch!16553) r!7292)))))

(assert (=> b!6726583 (= e!4063978 e!4063982)))

(declare-fun b!6726584 () Bool)

(declare-fun res!2752119 () Bool)

(assert (=> b!6726584 (=> res!2752119 e!4063982)))

(assert (=> b!6726584 (= res!2752119 e!4063983)))

(declare-fun res!2752117 () Bool)

(assert (=> b!6726584 (=> (not res!2752117) (not e!4063983))))

(assert (=> b!6726584 (= res!2752117 lt!2437288)))

(declare-fun b!6726585 () Bool)

(assert (=> b!6726585 (= e!4063984 (nullable!6540 r!7292))))

(declare-fun b!6726586 () Bool)

(assert (=> b!6726586 (= e!4063981 (= lt!2437288 call!607350))))

(assert (= (and d!2113582 c!1247190) b!6726585))

(assert (= (and d!2113582 (not c!1247190)) b!6726573))

(assert (= (and d!2113582 c!1247188) b!6726586))

(assert (= (and d!2113582 (not c!1247188)) b!6726576))

(assert (= (and b!6726576 c!1247189) b!6726574))

(assert (= (and b!6726576 (not c!1247189)) b!6726583))

(assert (= (and b!6726583 (not res!2752115)) b!6726584))

(assert (= (and b!6726584 res!2752117) b!6726580))

(assert (= (and b!6726580 res!2752120) b!6726579))

(assert (= (and b!6726579 res!2752114) b!6726581))

(assert (= (and b!6726584 (not res!2752119)) b!6726577))

(assert (= (and b!6726577 res!2752113) b!6726582))

(assert (= (and b!6726582 (not res!2752116)) b!6726578))

(assert (= (and b!6726578 (not res!2752118)) b!6726575))

(assert (= (or b!6726586 b!6726582 b!6726580) bm!607345))

(declare-fun m!7486264 () Bool)

(assert (=> b!6726573 m!7486264))

(assert (=> b!6726573 m!7486264))

(declare-fun m!7486266 () Bool)

(assert (=> b!6726573 m!7486266))

(declare-fun m!7486268 () Bool)

(assert (=> b!6726573 m!7486268))

(assert (=> b!6726573 m!7486266))

(assert (=> b!6726573 m!7486268))

(declare-fun m!7486270 () Bool)

(assert (=> b!6726573 m!7486270))

(assert (=> b!6726578 m!7486268))

(assert (=> b!6726578 m!7486268))

(declare-fun m!7486272 () Bool)

(assert (=> b!6726578 m!7486272))

(assert (=> b!6726579 m!7486268))

(assert (=> b!6726579 m!7486268))

(assert (=> b!6726579 m!7486272))

(declare-fun m!7486274 () Bool)

(assert (=> bm!607345 m!7486274))

(assert (=> d!2113582 m!7486274))

(assert (=> d!2113582 m!7485782))

(assert (=> b!6726585 m!7486112))

(assert (=> b!6726581 m!7486264))

(assert (=> b!6726575 m!7486264))

(assert (=> b!6726338 d!2113582))

(declare-fun d!2113584 () Bool)

(assert (=> d!2113584 (= (get!22901 lt!2437277) (v!52639 lt!2437277))))

(assert (=> b!6726338 d!2113584))

(declare-fun d!2113586 () Bool)

(assert (=> d!2113586 (= (head!13533 (unfocusZipperList!1974 zl!343)) (h!72282 (unfocusZipperList!1974 zl!343)))))

(assert (=> b!6726027 d!2113586))

(declare-fun d!2113588 () Bool)

(assert (=> d!2113588 true))

(assert (=> d!2113588 true))

(declare-fun res!2752123 () Bool)

(assert (=> d!2113588 (= (choose!50121 lambda!377319) res!2752123)))

(assert (=> d!2113508 d!2113588))

(declare-fun d!2113592 () Bool)

(assert (=> d!2113592 (= (isEmpty!38165 (t!379641 (exprs!6437 (h!72283 zl!343)))) ((_ is Nil!65834) (t!379641 (exprs!6437 (h!72283 zl!343)))))))

(assert (=> b!6725897 d!2113592))

(declare-fun d!2113596 () Bool)

(declare-fun nullableFct!2454 (Regex!16553) Bool)

(assert (=> d!2113596 (= (nullable!6540 (reg!16882 r!7292)) (nullableFct!2454 (reg!16882 r!7292)))))

(declare-fun bs!1789160 () Bool)

(assert (= bs!1789160 d!2113596))

(declare-fun m!7486286 () Bool)

(assert (=> bs!1789160 m!7486286))

(assert (=> b!6726369 d!2113596))

(declare-fun d!2113606 () Bool)

(assert (=> d!2113606 true))

(declare-fun setRes!45864 () Bool)

(assert (=> d!2113606 setRes!45864))

(declare-fun condSetEmpty!45864 () Bool)

(declare-fun res!2752126 () (InoxSet Context!11874))

(assert (=> d!2113606 (= condSetEmpty!45864 (= res!2752126 ((as const (Array Context!11874 Bool)) false)))))

(assert (=> d!2113606 (= (choose!50116 z!1189 lambda!377321) res!2752126)))

(declare-fun setIsEmpty!45864 () Bool)

(assert (=> setIsEmpty!45864 setRes!45864))

(declare-fun setNonEmpty!45864 () Bool)

(declare-fun tp!1844281 () Bool)

(declare-fun setElem!45864 () Context!11874)

(declare-fun e!4063992 () Bool)

(assert (=> setNonEmpty!45864 (= setRes!45864 (and tp!1844281 (inv!84629 setElem!45864) e!4063992))))

(declare-fun setRest!45864 () (InoxSet Context!11874))

(assert (=> setNonEmpty!45864 (= res!2752126 ((_ map or) (store ((as const (Array Context!11874 Bool)) false) setElem!45864 true) setRest!45864))))

(declare-fun b!6726599 () Bool)

(declare-fun tp!1844280 () Bool)

(assert (=> b!6726599 (= e!4063992 tp!1844280)))

(assert (= (and d!2113606 condSetEmpty!45864) setIsEmpty!45864))

(assert (= (and d!2113606 (not condSetEmpty!45864)) setNonEmpty!45864))

(assert (= setNonEmpty!45864 b!6726599))

(declare-fun m!7486290 () Bool)

(assert (=> setNonEmpty!45864 m!7486290))

(assert (=> d!2113436 d!2113606))

(declare-fun d!2113608 () Bool)

(assert (=> d!2113608 (= (isEmpty!38165 (t!379641 (unfocusZipperList!1974 zl!343))) ((_ is Nil!65834) (t!379641 (unfocusZipperList!1974 zl!343))))))

(assert (=> b!6726029 d!2113608))

(declare-fun d!2113610 () Bool)

(declare-fun c!1247196 () Bool)

(declare-fun e!4063993 () Bool)

(assert (=> d!2113610 (= c!1247196 e!4063993)))

(declare-fun res!2752127 () Bool)

(assert (=> d!2113610 (=> (not res!2752127) (not e!4063993))))

(assert (=> d!2113610 (= res!2752127 ((_ is Cons!65834) (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193))))))))

(declare-fun e!4063995 () (InoxSet Context!11874))

(assert (=> d!2113610 (= (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 lt!2437193))) (h!72284 s!2326)) e!4063995)))

(declare-fun b!6726600 () Bool)

(declare-fun e!4063994 () (InoxSet Context!11874))

(assert (=> b!6726600 (= e!4063994 ((as const (Array Context!11874 Bool)) false))))

(declare-fun call!607355 () (InoxSet Context!11874))

(declare-fun b!6726601 () Bool)

(assert (=> b!6726601 (= e!4063995 ((_ map or) call!607355 (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193)))))) (h!72284 s!2326))))))

(declare-fun b!6726602 () Bool)

(assert (=> b!6726602 (= e!4063993 (nullable!6540 (h!72282 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193)))))))))

(declare-fun b!6726603 () Bool)

(assert (=> b!6726603 (= e!4063994 call!607355)))

(declare-fun bm!607350 () Bool)

(assert (=> bm!607350 (= call!607355 (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193))))) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193)))))) (h!72284 s!2326)))))

(declare-fun b!6726604 () Bool)

(assert (=> b!6726604 (= e!4063995 e!4063994)))

(declare-fun c!1247197 () Bool)

(assert (=> b!6726604 (= c!1247197 ((_ is Cons!65834) (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193))))))))

(assert (= (and d!2113610 res!2752127) b!6726602))

(assert (= (and d!2113610 c!1247196) b!6726601))

(assert (= (and d!2113610 (not c!1247196)) b!6726604))

(assert (= (and b!6726604 c!1247197) b!6726603))

(assert (= (and b!6726604 (not c!1247197)) b!6726600))

(assert (= (or b!6726601 b!6726603) bm!607350))

(declare-fun m!7486292 () Bool)

(assert (=> b!6726601 m!7486292))

(declare-fun m!7486294 () Bool)

(assert (=> b!6726602 m!7486294))

(declare-fun m!7486296 () Bool)

(assert (=> bm!607350 m!7486296))

(assert (=> b!6725953 d!2113610))

(declare-fun b!6726605 () Bool)

(declare-fun e!4064002 () Bool)

(assert (=> b!6726605 (= e!4064002 (matchR!8736 (derivativeStep!5225 (reg!16882 r!7292) (head!13534 (_1!36831 (get!22901 lt!2437277)))) (tail!12619 (_1!36831 (get!22901 lt!2437277)))))))

(declare-fun b!6726606 () Bool)

(declare-fun e!4063996 () Bool)

(declare-fun lt!2437290 () Bool)

(assert (=> b!6726606 (= e!4063996 (not lt!2437290))))

(declare-fun b!6726607 () Bool)

(declare-fun e!4063997 () Bool)

(assert (=> b!6726607 (= e!4063997 (not (= (head!13534 (_1!36831 (get!22901 lt!2437277))) (c!1246985 (reg!16882 r!7292)))))))

(declare-fun b!6726608 () Bool)

(declare-fun e!4063999 () Bool)

(assert (=> b!6726608 (= e!4063999 e!4063996)))

(declare-fun c!1247199 () Bool)

(assert (=> b!6726608 (= c!1247199 ((_ is EmptyLang!16553) (reg!16882 r!7292)))))

(declare-fun b!6726609 () Bool)

(declare-fun e!4064000 () Bool)

(declare-fun e!4063998 () Bool)

(assert (=> b!6726609 (= e!4064000 e!4063998)))

(declare-fun res!2752128 () Bool)

(assert (=> b!6726609 (=> (not res!2752128) (not e!4063998))))

(assert (=> b!6726609 (= res!2752128 (not lt!2437290))))

(declare-fun b!6726610 () Bool)

(declare-fun res!2752133 () Bool)

(assert (=> b!6726610 (=> res!2752133 e!4063997)))

(assert (=> b!6726610 (= res!2752133 (not (isEmpty!38162 (tail!12619 (_1!36831 (get!22901 lt!2437277))))))))

(declare-fun b!6726611 () Bool)

(declare-fun res!2752129 () Bool)

(declare-fun e!4064001 () Bool)

(assert (=> b!6726611 (=> (not res!2752129) (not e!4064001))))

(assert (=> b!6726611 (= res!2752129 (isEmpty!38162 (tail!12619 (_1!36831 (get!22901 lt!2437277)))))))

(declare-fun b!6726612 () Bool)

(declare-fun res!2752135 () Bool)

(assert (=> b!6726612 (=> (not res!2752135) (not e!4064001))))

(declare-fun call!607356 () Bool)

(assert (=> b!6726612 (= res!2752135 (not call!607356))))

(declare-fun b!6726613 () Bool)

(assert (=> b!6726613 (= e!4064001 (= (head!13534 (_1!36831 (get!22901 lt!2437277))) (c!1246985 (reg!16882 r!7292))))))

(declare-fun d!2113612 () Bool)

(assert (=> d!2113612 e!4063999))

(declare-fun c!1247198 () Bool)

(assert (=> d!2113612 (= c!1247198 ((_ is EmptyExpr!16553) (reg!16882 r!7292)))))

(assert (=> d!2113612 (= lt!2437290 e!4064002)))

(declare-fun c!1247200 () Bool)

(assert (=> d!2113612 (= c!1247200 (isEmpty!38162 (_1!36831 (get!22901 lt!2437277))))))

(assert (=> d!2113612 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113612 (= (matchR!8736 (reg!16882 r!7292) (_1!36831 (get!22901 lt!2437277))) lt!2437290)))

(declare-fun bm!607351 () Bool)

(assert (=> bm!607351 (= call!607356 (isEmpty!38162 (_1!36831 (get!22901 lt!2437277))))))

(declare-fun b!6726614 () Bool)

(assert (=> b!6726614 (= e!4063998 e!4063997)))

(declare-fun res!2752131 () Bool)

(assert (=> b!6726614 (=> res!2752131 e!4063997)))

(assert (=> b!6726614 (= res!2752131 call!607356)))

(declare-fun b!6726615 () Bool)

(declare-fun res!2752130 () Bool)

(assert (=> b!6726615 (=> res!2752130 e!4064000)))

(assert (=> b!6726615 (= res!2752130 (not ((_ is ElementMatch!16553) (reg!16882 r!7292))))))

(assert (=> b!6726615 (= e!4063996 e!4064000)))

(declare-fun b!6726616 () Bool)

(declare-fun res!2752134 () Bool)

(assert (=> b!6726616 (=> res!2752134 e!4064000)))

(assert (=> b!6726616 (= res!2752134 e!4064001)))

(declare-fun res!2752132 () Bool)

(assert (=> b!6726616 (=> (not res!2752132) (not e!4064001))))

(assert (=> b!6726616 (= res!2752132 lt!2437290)))

(declare-fun b!6726617 () Bool)

(assert (=> b!6726617 (= e!4064002 (nullable!6540 (reg!16882 r!7292)))))

(declare-fun b!6726618 () Bool)

(assert (=> b!6726618 (= e!4063999 (= lt!2437290 call!607356))))

(assert (= (and d!2113612 c!1247200) b!6726617))

(assert (= (and d!2113612 (not c!1247200)) b!6726605))

(assert (= (and d!2113612 c!1247198) b!6726618))

(assert (= (and d!2113612 (not c!1247198)) b!6726608))

(assert (= (and b!6726608 c!1247199) b!6726606))

(assert (= (and b!6726608 (not c!1247199)) b!6726615))

(assert (= (and b!6726615 (not res!2752130)) b!6726616))

(assert (= (and b!6726616 res!2752132) b!6726612))

(assert (= (and b!6726612 res!2752135) b!6726611))

(assert (= (and b!6726611 res!2752129) b!6726613))

(assert (= (and b!6726616 (not res!2752134)) b!6726609))

(assert (= (and b!6726609 res!2752128) b!6726614))

(assert (= (and b!6726614 (not res!2752131)) b!6726610))

(assert (= (and b!6726610 (not res!2752133)) b!6726607))

(assert (= (or b!6726618 b!6726614 b!6726612) bm!607351))

(declare-fun m!7486298 () Bool)

(assert (=> b!6726605 m!7486298))

(assert (=> b!6726605 m!7486298))

(declare-fun m!7486300 () Bool)

(assert (=> b!6726605 m!7486300))

(declare-fun m!7486302 () Bool)

(assert (=> b!6726605 m!7486302))

(assert (=> b!6726605 m!7486300))

(assert (=> b!6726605 m!7486302))

(declare-fun m!7486304 () Bool)

(assert (=> b!6726605 m!7486304))

(assert (=> b!6726610 m!7486302))

(assert (=> b!6726610 m!7486302))

(declare-fun m!7486306 () Bool)

(assert (=> b!6726610 m!7486306))

(assert (=> b!6726611 m!7486302))

(assert (=> b!6726611 m!7486302))

(assert (=> b!6726611 m!7486306))

(declare-fun m!7486308 () Bool)

(assert (=> bm!607351 m!7486308))

(assert (=> d!2113612 m!7486308))

(assert (=> d!2113612 m!7486128))

(assert (=> b!6726617 m!7486166))

(assert (=> b!6726613 m!7486298))

(assert (=> b!6726607 m!7486298))

(assert (=> b!6726340 d!2113612))

(assert (=> b!6726340 d!2113584))

(declare-fun d!2113614 () Bool)

(assert (=> d!2113614 (= (isDefined!13143 lt!2437277) (not (isEmpty!38166 lt!2437277)))))

(declare-fun bs!1789161 () Bool)

(assert (= bs!1789161 d!2113614))

(declare-fun m!7486310 () Bool)

(assert (=> bs!1789161 m!7486310))

(assert (=> b!6726342 d!2113614))

(declare-fun d!2113616 () Bool)

(assert (=> d!2113616 (= (nullable!6540 (h!72282 (exprs!6437 (h!72283 zl!343)))) (nullableFct!2454 (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun bs!1789162 () Bool)

(assert (= bs!1789162 d!2113616))

(declare-fun m!7486312 () Bool)

(assert (=> bs!1789162 m!7486312))

(assert (=> b!6725922 d!2113616))

(assert (=> bm!607294 d!2113512))

(declare-fun bs!1789163 () Bool)

(declare-fun d!2113618 () Bool)

(assert (= bs!1789163 (and d!2113618 d!2113420)))

(declare-fun lambda!377410 () Int)

(assert (=> bs!1789163 (= lambda!377410 lambda!377333)))

(declare-fun bs!1789164 () Bool)

(assert (= bs!1789164 (and d!2113618 d!2113448)))

(assert (=> bs!1789164 (= lambda!377410 lambda!377346)))

(declare-fun bs!1789165 () Bool)

(assert (= bs!1789165 (and d!2113618 d!2113450)))

(assert (=> bs!1789165 (= lambda!377410 lambda!377347)))

(declare-fun bs!1789166 () Bool)

(assert (= bs!1789166 (and d!2113618 d!2113464)))

(assert (=> bs!1789166 (= lambda!377410 lambda!377359)))

(declare-fun bs!1789167 () Bool)

(assert (= bs!1789167 (and d!2113618 d!2113470)))

(assert (=> bs!1789167 (= lambda!377410 lambda!377362)))

(declare-fun bs!1789168 () Bool)

(assert (= bs!1789168 (and d!2113618 d!2113524)))

(assert (=> bs!1789168 (= lambda!377410 lambda!377397)))

(assert (=> d!2113618 (= (inv!84629 (h!72283 (t!379642 zl!343))) (forall!15753 (exprs!6437 (h!72283 (t!379642 zl!343))) lambda!377410))))

(declare-fun bs!1789169 () Bool)

(assert (= bs!1789169 d!2113618))

(declare-fun m!7486314 () Bool)

(assert (=> bs!1789169 m!7486314))

(assert (=> b!6726462 d!2113618))

(declare-fun b!6726623 () Bool)

(declare-fun res!2752142 () Bool)

(declare-fun e!4064006 () Bool)

(assert (=> b!6726623 (=> res!2752142 e!4064006)))

(assert (=> b!6726623 (= res!2752142 (not ((_ is Concat!25398) lt!2437210)))))

(declare-fun e!4064010 () Bool)

(assert (=> b!6726623 (= e!4064010 e!4064006)))

(declare-fun b!6726624 () Bool)

(declare-fun e!4064009 () Bool)

(assert (=> b!6726624 (= e!4064009 e!4064010)))

(declare-fun c!1247201 () Bool)

(assert (=> b!6726624 (= c!1247201 ((_ is Union!16553) lt!2437210))))

(declare-fun b!6726625 () Bool)

(declare-fun e!4064005 () Bool)

(assert (=> b!6726625 (= e!4064009 e!4064005)))

(declare-fun res!2752141 () Bool)

(assert (=> b!6726625 (= res!2752141 (not (nullable!6540 (reg!16882 lt!2437210))))))

(assert (=> b!6726625 (=> (not res!2752141) (not e!4064005))))

(declare-fun bm!607352 () Bool)

(declare-fun call!607358 () Bool)

(assert (=> bm!607352 (= call!607358 (validRegex!8289 (ite c!1247201 (regTwo!33619 lt!2437210) (regTwo!33618 lt!2437210))))))

(declare-fun b!6726626 () Bool)

(declare-fun call!607357 () Bool)

(assert (=> b!6726626 (= e!4064005 call!607357)))

(declare-fun bm!607353 () Bool)

(declare-fun c!1247202 () Bool)

(assert (=> bm!607353 (= call!607357 (validRegex!8289 (ite c!1247202 (reg!16882 lt!2437210) (ite c!1247201 (regOne!33619 lt!2437210) (regOne!33618 lt!2437210)))))))

(declare-fun b!6726627 () Bool)

(declare-fun e!4064008 () Bool)

(assert (=> b!6726627 (= e!4064008 call!607358)))

(declare-fun b!6726628 () Bool)

(declare-fun res!2752140 () Bool)

(assert (=> b!6726628 (=> (not res!2752140) (not e!4064008))))

(declare-fun call!607359 () Bool)

(assert (=> b!6726628 (= res!2752140 call!607359)))

(assert (=> b!6726628 (= e!4064010 e!4064008)))

(declare-fun b!6726629 () Bool)

(declare-fun e!4064007 () Bool)

(assert (=> b!6726629 (= e!4064007 e!4064009)))

(assert (=> b!6726629 (= c!1247202 ((_ is Star!16553) lt!2437210))))

(declare-fun b!6726630 () Bool)

(declare-fun e!4064011 () Bool)

(assert (=> b!6726630 (= e!4064011 call!607358)))

(declare-fun d!2113620 () Bool)

(declare-fun res!2752144 () Bool)

(assert (=> d!2113620 (=> res!2752144 e!4064007)))

(assert (=> d!2113620 (= res!2752144 ((_ is ElementMatch!16553) lt!2437210))))

(assert (=> d!2113620 (= (validRegex!8289 lt!2437210) e!4064007)))

(declare-fun b!6726631 () Bool)

(assert (=> b!6726631 (= e!4064006 e!4064011)))

(declare-fun res!2752143 () Bool)

(assert (=> b!6726631 (=> (not res!2752143) (not e!4064011))))

(assert (=> b!6726631 (= res!2752143 call!607359)))

(declare-fun bm!607354 () Bool)

(assert (=> bm!607354 (= call!607359 call!607357)))

(assert (= (and d!2113620 (not res!2752144)) b!6726629))

(assert (= (and b!6726629 c!1247202) b!6726625))

(assert (= (and b!6726629 (not c!1247202)) b!6726624))

(assert (= (and b!6726625 res!2752141) b!6726626))

(assert (= (and b!6726624 c!1247201) b!6726628))

(assert (= (and b!6726624 (not c!1247201)) b!6726623))

(assert (= (and b!6726628 res!2752140) b!6726627))

(assert (= (and b!6726623 (not res!2752142)) b!6726631))

(assert (= (and b!6726631 res!2752143) b!6726630))

(assert (= (or b!6726627 b!6726630) bm!607352))

(assert (= (or b!6726628 b!6726631) bm!607354))

(assert (= (or b!6726626 bm!607354) bm!607353))

(declare-fun m!7486316 () Bool)

(assert (=> b!6726625 m!7486316))

(declare-fun m!7486318 () Bool)

(assert (=> bm!607352 m!7486318))

(declare-fun m!7486320 () Bool)

(assert (=> bm!607353 m!7486320))

(assert (=> d!2113420 d!2113620))

(declare-fun d!2113622 () Bool)

(declare-fun res!2752155 () Bool)

(declare-fun e!4064018 () Bool)

(assert (=> d!2113622 (=> res!2752155 e!4064018)))

(assert (=> d!2113622 (= res!2752155 ((_ is Nil!65834) (exprs!6437 (h!72283 zl!343))))))

(assert (=> d!2113622 (= (forall!15753 (exprs!6437 (h!72283 zl!343)) lambda!377333) e!4064018)))

(declare-fun b!6726642 () Bool)

(declare-fun e!4064019 () Bool)

(assert (=> b!6726642 (= e!4064018 e!4064019)))

(declare-fun res!2752156 () Bool)

(assert (=> b!6726642 (=> (not res!2752156) (not e!4064019))))

(declare-fun dynLambda!26258 (Int Regex!16553) Bool)

(assert (=> b!6726642 (= res!2752156 (dynLambda!26258 lambda!377333 (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6726643 () Bool)

(assert (=> b!6726643 (= e!4064019 (forall!15753 (t!379641 (exprs!6437 (h!72283 zl!343))) lambda!377333))))

(assert (= (and d!2113622 (not res!2752155)) b!6726642))

(assert (= (and b!6726642 res!2752156) b!6726643))

(declare-fun b_lambda!253229 () Bool)

(assert (=> (not b_lambda!253229) (not b!6726642)))

(declare-fun m!7486322 () Bool)

(assert (=> b!6726642 m!7486322))

(declare-fun m!7486324 () Bool)

(assert (=> b!6726643 m!7486324))

(assert (=> d!2113420 d!2113622))

(assert (=> bs!1789109 d!2113438))

(declare-fun bs!1789170 () Bool)

(declare-fun d!2113624 () Bool)

(assert (= bs!1789170 (and d!2113624 d!2113420)))

(declare-fun lambda!377413 () Int)

(assert (=> bs!1789170 (= lambda!377413 lambda!377333)))

(declare-fun bs!1789171 () Bool)

(assert (= bs!1789171 (and d!2113624 d!2113448)))

(assert (=> bs!1789171 (= lambda!377413 lambda!377346)))

(declare-fun bs!1789172 () Bool)

(assert (= bs!1789172 (and d!2113624 d!2113618)))

(assert (=> bs!1789172 (= lambda!377413 lambda!377410)))

(declare-fun bs!1789174 () Bool)

(assert (= bs!1789174 (and d!2113624 d!2113450)))

(assert (=> bs!1789174 (= lambda!377413 lambda!377347)))

(declare-fun bs!1789175 () Bool)

(assert (= bs!1789175 (and d!2113624 d!2113464)))

(assert (=> bs!1789175 (= lambda!377413 lambda!377359)))

(declare-fun bs!1789177 () Bool)

(assert (= bs!1789177 (and d!2113624 d!2113470)))

(assert (=> bs!1789177 (= lambda!377413 lambda!377362)))

(declare-fun bs!1789178 () Bool)

(assert (= bs!1789178 (and d!2113624 d!2113524)))

(assert (=> bs!1789178 (= lambda!377413 lambda!377397)))

(assert (=> d!2113624 (= (inv!84629 setElem!45861) (forall!15753 (exprs!6437 setElem!45861) lambda!377413))))

(declare-fun bs!1789181 () Bool)

(assert (= bs!1789181 d!2113624))

(declare-fun m!7486326 () Bool)

(assert (=> bs!1789181 m!7486326))

(assert (=> setNonEmpty!45861 d!2113624))

(declare-fun d!2113626 () Bool)

(assert (=> d!2113626 (= (isEmptyExpr!1919 lt!2437210) ((_ is EmptyExpr!16553) lt!2437210))))

(assert (=> b!6725895 d!2113626))

(declare-fun d!2113628 () Bool)

(assert (=> d!2113628 (= (nullable!6540 r!7292) (nullableFct!2454 r!7292))))

(declare-fun bs!1789187 () Bool)

(assert (= bs!1789187 d!2113628))

(declare-fun m!7486328 () Bool)

(assert (=> bs!1789187 m!7486328))

(assert (=> b!6726298 d!2113628))

(declare-fun d!2113630 () Bool)

(assert (=> d!2113630 true))

(declare-fun setRes!45865 () Bool)

(assert (=> d!2113630 setRes!45865))

(declare-fun condSetEmpty!45865 () Bool)

(declare-fun res!2752157 () (InoxSet Context!11874))

(assert (=> d!2113630 (= condSetEmpty!45865 (= res!2752157 ((as const (Array Context!11874 Bool)) false)))))

(assert (=> d!2113630 (= (choose!50116 lt!2437189 lambda!377321) res!2752157)))

(declare-fun setIsEmpty!45865 () Bool)

(assert (=> setIsEmpty!45865 setRes!45865))

(declare-fun setElem!45865 () Context!11874)

(declare-fun tp!1844283 () Bool)

(declare-fun e!4064020 () Bool)

(declare-fun setNonEmpty!45865 () Bool)

(assert (=> setNonEmpty!45865 (= setRes!45865 (and tp!1844283 (inv!84629 setElem!45865) e!4064020))))

(declare-fun setRest!45865 () (InoxSet Context!11874))

(assert (=> setNonEmpty!45865 (= res!2752157 ((_ map or) (store ((as const (Array Context!11874 Bool)) false) setElem!45865 true) setRest!45865))))

(declare-fun b!6726644 () Bool)

(declare-fun tp!1844282 () Bool)

(assert (=> b!6726644 (= e!4064020 tp!1844282)))

(assert (= (and d!2113630 condSetEmpty!45865) setIsEmpty!45865))

(assert (= (and d!2113630 (not condSetEmpty!45865)) setNonEmpty!45865))

(assert (= setNonEmpty!45865 b!6726644))

(declare-fun m!7486330 () Bool)

(assert (=> setNonEmpty!45865 m!7486330))

(assert (=> d!2113456 d!2113630))

(declare-fun d!2113632 () Bool)

(assert (=> d!2113632 (= (nullable!6540 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (nullableFct!2454 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))

(declare-fun bs!1789190 () Bool)

(assert (= bs!1789190 d!2113632))

(declare-fun m!7486332 () Bool)

(assert (=> bs!1789190 m!7486332))

(assert (=> b!6726411 d!2113632))

(declare-fun b!6726645 () Bool)

(declare-fun e!4064026 () Bool)

(assert (=> b!6726645 (= e!4064026 (nullable!6540 (regOne!33618 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))))

(declare-fun bm!607355 () Bool)

(declare-fun call!607364 () (InoxSet Context!11874))

(declare-fun call!607360 () (InoxSet Context!11874))

(assert (=> bm!607355 (= call!607364 call!607360)))

(declare-fun b!6726646 () Bool)

(declare-fun c!1247203 () Bool)

(assert (=> b!6726646 (= c!1247203 ((_ is Star!16553) (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))

(declare-fun e!4064021 () (InoxSet Context!11874))

(declare-fun e!4064024 () (InoxSet Context!11874))

(assert (=> b!6726646 (= e!4064021 e!4064024)))

(declare-fun b!6726647 () Bool)

(declare-fun e!4064023 () (InoxSet Context!11874))

(declare-fun call!607363 () (InoxSet Context!11874))

(declare-fun call!607365 () (InoxSet Context!11874))

(assert (=> b!6726647 (= e!4064023 ((_ map or) call!607363 call!607365))))

(declare-fun d!2113634 () Bool)

(declare-fun c!1247204 () Bool)

(assert (=> d!2113634 (= c!1247204 (and ((_ is ElementMatch!16553) (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (= (c!1246985 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (h!72284 s!2326))))))

(declare-fun e!4064025 () (InoxSet Context!11874))

(assert (=> d!2113634 (= (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (h!72284 s!2326)) e!4064025)))

(declare-fun b!6726648 () Bool)

(declare-fun e!4064022 () (InoxSet Context!11874))

(assert (=> b!6726648 (= e!4064022 e!4064021)))

(declare-fun c!1247205 () Bool)

(assert (=> b!6726648 (= c!1247205 ((_ is Concat!25398) (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))

(declare-fun b!6726649 () Bool)

(assert (=> b!6726649 (= e!4064021 call!607364)))

(declare-fun bm!607356 () Bool)

(declare-fun call!607361 () List!65958)

(declare-fun call!607362 () List!65958)

(assert (=> bm!607356 (= call!607361 call!607362)))

(declare-fun b!6726650 () Bool)

(assert (=> b!6726650 (= e!4064025 e!4064023)))

(declare-fun c!1247207 () Bool)

(assert (=> b!6726650 (= c!1247207 ((_ is Union!16553) (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))

(declare-fun b!6726651 () Bool)

(assert (=> b!6726651 (= e!4064022 ((_ map or) call!607363 call!607360))))

(declare-fun c!1247206 () Bool)

(declare-fun bm!607357 () Bool)

(assert (=> bm!607357 (= call!607365 (derivationStepZipperDown!1781 (ite c!1247207 (regTwo!33619 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (ite c!1247206 (regTwo!33618 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (ite c!1247205 (regOne!33618 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (reg!16882 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))) (ite (or c!1247207 c!1247206) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (Context!11875 call!607361)) (h!72284 s!2326)))))

(declare-fun b!6726652 () Bool)

(assert (=> b!6726652 (= e!4064024 call!607364)))

(declare-fun b!6726653 () Bool)

(assert (=> b!6726653 (= e!4064025 (store ((as const (Array Context!11874 Bool)) false) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) true))))

(declare-fun bm!607358 () Bool)

(assert (=> bm!607358 (= call!607360 call!607365)))

(declare-fun bm!607359 () Bool)

(assert (=> bm!607359 (= call!607362 ($colon$colon!2370 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))) (ite (or c!1247206 c!1247205) (regTwo!33618 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))))

(declare-fun bm!607360 () Bool)

(assert (=> bm!607360 (= call!607363 (derivationStepZipperDown!1781 (ite c!1247207 (regOne!33619 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (regOne!33618 (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))) (ite c!1247207 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (Context!11875 call!607362)) (h!72284 s!2326)))))

(declare-fun b!6726654 () Bool)

(assert (=> b!6726654 (= c!1247206 e!4064026)))

(declare-fun res!2752158 () Bool)

(assert (=> b!6726654 (=> (not res!2752158) (not e!4064026))))

(assert (=> b!6726654 (= res!2752158 ((_ is Concat!25398) (h!72282 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))

(assert (=> b!6726654 (= e!4064023 e!4064022)))

(declare-fun b!6726655 () Bool)

(assert (=> b!6726655 (= e!4064024 ((as const (Array Context!11874 Bool)) false))))

(assert (= (and d!2113634 c!1247204) b!6726653))

(assert (= (and d!2113634 (not c!1247204)) b!6726650))

(assert (= (and b!6726650 c!1247207) b!6726647))

(assert (= (and b!6726650 (not c!1247207)) b!6726654))

(assert (= (and b!6726654 res!2752158) b!6726645))

(assert (= (and b!6726654 c!1247206) b!6726651))

(assert (= (and b!6726654 (not c!1247206)) b!6726648))

(assert (= (and b!6726648 c!1247205) b!6726649))

(assert (= (and b!6726648 (not c!1247205)) b!6726646))

(assert (= (and b!6726646 c!1247203) b!6726652))

(assert (= (and b!6726646 (not c!1247203)) b!6726655))

(assert (= (or b!6726649 b!6726652) bm!607356))

(assert (= (or b!6726649 b!6726652) bm!607355))

(assert (= (or b!6726651 bm!607356) bm!607359))

(assert (= (or b!6726651 bm!607355) bm!607358))

(assert (= (or b!6726647 bm!607358) bm!607357))

(assert (= (or b!6726647 b!6726651) bm!607360))

(declare-fun m!7486334 () Bool)

(assert (=> bm!607357 m!7486334))

(declare-fun m!7486336 () Bool)

(assert (=> b!6726645 m!7486336))

(declare-fun m!7486338 () Bool)

(assert (=> bm!607359 m!7486338))

(declare-fun m!7486340 () Bool)

(assert (=> bm!607360 m!7486340))

(declare-fun m!7486342 () Bool)

(assert (=> b!6726653 m!7486342))

(assert (=> bm!607322 d!2113634))

(declare-fun bs!1789192 () Bool)

(declare-fun d!2113636 () Bool)

(assert (= bs!1789192 (and d!2113636 d!2113420)))

(declare-fun lambda!377416 () Int)

(assert (=> bs!1789192 (= lambda!377416 lambda!377333)))

(declare-fun bs!1789193 () Bool)

(assert (= bs!1789193 (and d!2113636 d!2113448)))

(assert (=> bs!1789193 (= lambda!377416 lambda!377346)))

(declare-fun bs!1789194 () Bool)

(assert (= bs!1789194 (and d!2113636 d!2113618)))

(assert (=> bs!1789194 (= lambda!377416 lambda!377410)))

(declare-fun bs!1789195 () Bool)

(assert (= bs!1789195 (and d!2113636 d!2113450)))

(assert (=> bs!1789195 (= lambda!377416 lambda!377347)))

(declare-fun bs!1789196 () Bool)

(assert (= bs!1789196 (and d!2113636 d!2113464)))

(assert (=> bs!1789196 (= lambda!377416 lambda!377359)))

(declare-fun bs!1789197 () Bool)

(assert (= bs!1789197 (and d!2113636 d!2113470)))

(assert (=> bs!1789197 (= lambda!377416 lambda!377362)))

(declare-fun bs!1789198 () Bool)

(assert (= bs!1789198 (and d!2113636 d!2113524)))

(assert (=> bs!1789198 (= lambda!377416 lambda!377397)))

(declare-fun bs!1789199 () Bool)

(assert (= bs!1789199 (and d!2113636 d!2113624)))

(assert (=> bs!1789199 (= lambda!377416 lambda!377413)))

(declare-fun b!6726656 () Bool)

(declare-fun e!4064030 () Bool)

(declare-fun lt!2437291 () Regex!16553)

(assert (=> b!6726656 (= e!4064030 (= lt!2437291 (head!13533 (t!379641 (unfocusZipperList!1974 zl!343)))))))

(declare-fun e!4064031 () Bool)

(assert (=> d!2113636 e!4064031))

(declare-fun res!2752160 () Bool)

(assert (=> d!2113636 (=> (not res!2752160) (not e!4064031))))

(assert (=> d!2113636 (= res!2752160 (validRegex!8289 lt!2437291))))

(declare-fun e!4064028 () Regex!16553)

(assert (=> d!2113636 (= lt!2437291 e!4064028)))

(declare-fun c!1247210 () Bool)

(declare-fun e!4064032 () Bool)

(assert (=> d!2113636 (= c!1247210 e!4064032)))

(declare-fun res!2752159 () Bool)

(assert (=> d!2113636 (=> (not res!2752159) (not e!4064032))))

(assert (=> d!2113636 (= res!2752159 ((_ is Cons!65834) (t!379641 (unfocusZipperList!1974 zl!343))))))

(assert (=> d!2113636 (forall!15753 (t!379641 (unfocusZipperList!1974 zl!343)) lambda!377416)))

(assert (=> d!2113636 (= (generalisedUnion!2397 (t!379641 (unfocusZipperList!1974 zl!343))) lt!2437291)))

(declare-fun b!6726657 () Bool)

(declare-fun e!4064029 () Regex!16553)

(assert (=> b!6726657 (= e!4064028 e!4064029)))

(declare-fun c!1247208 () Bool)

(assert (=> b!6726657 (= c!1247208 ((_ is Cons!65834) (t!379641 (unfocusZipperList!1974 zl!343))))))

(declare-fun b!6726658 () Bool)

(assert (=> b!6726658 (= e!4064032 (isEmpty!38165 (t!379641 (t!379641 (unfocusZipperList!1974 zl!343)))))))

(declare-fun b!6726659 () Bool)

(declare-fun e!4064027 () Bool)

(assert (=> b!6726659 (= e!4064031 e!4064027)))

(declare-fun c!1247209 () Bool)

(assert (=> b!6726659 (= c!1247209 (isEmpty!38165 (t!379641 (unfocusZipperList!1974 zl!343))))))

(declare-fun b!6726660 () Bool)

(assert (=> b!6726660 (= e!4064027 (isEmptyLang!1927 lt!2437291))))

(declare-fun b!6726661 () Bool)

(assert (=> b!6726661 (= e!4064028 (h!72282 (t!379641 (unfocusZipperList!1974 zl!343))))))

(declare-fun b!6726662 () Bool)

(assert (=> b!6726662 (= e!4064029 EmptyLang!16553)))

(declare-fun b!6726663 () Bool)

(assert (=> b!6726663 (= e!4064027 e!4064030)))

(declare-fun c!1247211 () Bool)

(assert (=> b!6726663 (= c!1247211 (isEmpty!38165 (tail!12618 (t!379641 (unfocusZipperList!1974 zl!343)))))))

(declare-fun b!6726664 () Bool)

(assert (=> b!6726664 (= e!4064030 (isUnion!1357 lt!2437291))))

(declare-fun b!6726665 () Bool)

(assert (=> b!6726665 (= e!4064029 (Union!16553 (h!72282 (t!379641 (unfocusZipperList!1974 zl!343))) (generalisedUnion!2397 (t!379641 (t!379641 (unfocusZipperList!1974 zl!343))))))))

(assert (= (and d!2113636 res!2752159) b!6726658))

(assert (= (and d!2113636 c!1247210) b!6726661))

(assert (= (and d!2113636 (not c!1247210)) b!6726657))

(assert (= (and b!6726657 c!1247208) b!6726665))

(assert (= (and b!6726657 (not c!1247208)) b!6726662))

(assert (= (and d!2113636 res!2752160) b!6726659))

(assert (= (and b!6726659 c!1247209) b!6726660))

(assert (= (and b!6726659 (not c!1247209)) b!6726663))

(assert (= (and b!6726663 c!1247211) b!6726656))

(assert (= (and b!6726663 (not c!1247211)) b!6726664))

(declare-fun m!7486348 () Bool)

(assert (=> b!6726660 m!7486348))

(declare-fun m!7486350 () Bool)

(assert (=> b!6726663 m!7486350))

(assert (=> b!6726663 m!7486350))

(declare-fun m!7486352 () Bool)

(assert (=> b!6726663 m!7486352))

(declare-fun m!7486354 () Bool)

(assert (=> b!6726656 m!7486354))

(declare-fun m!7486356 () Bool)

(assert (=> b!6726665 m!7486356))

(assert (=> b!6726659 m!7486004))

(declare-fun m!7486358 () Bool)

(assert (=> d!2113636 m!7486358))

(declare-fun m!7486360 () Bool)

(assert (=> d!2113636 m!7486360))

(declare-fun m!7486362 () Bool)

(assert (=> b!6726664 m!7486362))

(declare-fun m!7486364 () Bool)

(assert (=> b!6726658 m!7486364))

(assert (=> b!6726036 d!2113636))

(declare-fun d!2113640 () Bool)

(assert (=> d!2113640 (= (isEmpty!38162 (tail!12619 s!2326)) ((_ is Nil!65836) (tail!12619 s!2326)))))

(assert (=> b!6726291 d!2113640))

(declare-fun d!2113642 () Bool)

(assert (=> d!2113642 (= (tail!12619 s!2326) (t!379643 s!2326))))

(assert (=> b!6726291 d!2113642))

(assert (=> d!2113502 d!2113500))

(assert (=> d!2113502 d!2113474))

(declare-fun d!2113644 () Bool)

(assert (=> d!2113644 (= (matchR!8736 r!7292 s!2326) (matchRSpec!3654 r!7292 s!2326))))

(assert (=> d!2113644 true))

(declare-fun _$88!5459 () Unit!159797)

(assert (=> d!2113644 (= (choose!50120 r!7292 s!2326) _$88!5459)))

(declare-fun bs!1789205 () Bool)

(assert (= bs!1789205 d!2113644))

(assert (=> bs!1789205 m!7485802))

(assert (=> bs!1789205 m!7485800))

(assert (=> d!2113502 d!2113644))

(assert (=> d!2113502 d!2113526))

(declare-fun d!2113652 () Bool)

(assert (=> d!2113652 (= (isConcat!1442 lt!2437210) ((_ is Concat!25398) lt!2437210))))

(assert (=> b!6725891 d!2113652))

(declare-fun d!2113656 () Bool)

(assert (=> d!2113656 (= (isEmpty!38166 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326)) (not ((_ is Some!16439) (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326))))))

(assert (=> d!2113506 d!2113656))

(declare-fun d!2113658 () Bool)

(assert (=> d!2113658 (= (nullable!6540 (regOne!33618 r!7292)) (nullableFct!2454 (regOne!33618 r!7292)))))

(declare-fun bs!1789208 () Bool)

(assert (= bs!1789208 d!2113658))

(declare-fun m!7486392 () Bool)

(assert (=> bs!1789208 m!7486392))

(assert (=> b!6726398 d!2113658))

(assert (=> d!2113446 d!2113436))

(declare-fun d!2113660 () Bool)

(assert (=> d!2113660 (= (flatMap!2034 z!1189 lambda!377321) (dynLambda!26256 lambda!377321 (h!72283 zl!343)))))

(assert (=> d!2113660 true))

(declare-fun _$13!4018 () Unit!159797)

(assert (=> d!2113660 (= (choose!50117 z!1189 (h!72283 zl!343) lambda!377321) _$13!4018)))

(declare-fun b_lambda!253231 () Bool)

(assert (=> (not b_lambda!253231) (not d!2113660)))

(declare-fun bs!1789210 () Bool)

(assert (= bs!1789210 d!2113660))

(assert (=> bs!1789210 m!7485774))

(assert (=> bs!1789210 m!7485926))

(assert (=> d!2113446 d!2113660))

(assert (=> b!6726343 d!2113500))

(declare-fun b!6726702 () Bool)

(declare-fun e!4064057 () Bool)

(assert (=> b!6726702 (= e!4064057 (nullable!6540 (regOne!33618 (h!72282 (exprs!6437 lt!2437193)))))))

(declare-fun bm!607363 () Bool)

(declare-fun call!607372 () (InoxSet Context!11874))

(declare-fun call!607368 () (InoxSet Context!11874))

(assert (=> bm!607363 (= call!607372 call!607368)))

(declare-fun b!6726703 () Bool)

(declare-fun c!1247221 () Bool)

(assert (=> b!6726703 (= c!1247221 ((_ is Star!16553) (h!72282 (exprs!6437 lt!2437193))))))

(declare-fun e!4064052 () (InoxSet Context!11874))

(declare-fun e!4064055 () (InoxSet Context!11874))

(assert (=> b!6726703 (= e!4064052 e!4064055)))

(declare-fun b!6726704 () Bool)

(declare-fun e!4064054 () (InoxSet Context!11874))

(declare-fun call!607371 () (InoxSet Context!11874))

(declare-fun call!607373 () (InoxSet Context!11874))

(assert (=> b!6726704 (= e!4064054 ((_ map or) call!607371 call!607373))))

(declare-fun d!2113666 () Bool)

(declare-fun c!1247222 () Bool)

(assert (=> d!2113666 (= c!1247222 (and ((_ is ElementMatch!16553) (h!72282 (exprs!6437 lt!2437193))) (= (c!1246985 (h!72282 (exprs!6437 lt!2437193))) (h!72284 s!2326))))))

(declare-fun e!4064056 () (InoxSet Context!11874))

(assert (=> d!2113666 (= (derivationStepZipperDown!1781 (h!72282 (exprs!6437 lt!2437193)) (Context!11875 (t!379641 (exprs!6437 lt!2437193))) (h!72284 s!2326)) e!4064056)))

(declare-fun b!6726705 () Bool)

(declare-fun e!4064053 () (InoxSet Context!11874))

(assert (=> b!6726705 (= e!4064053 e!4064052)))

(declare-fun c!1247223 () Bool)

(assert (=> b!6726705 (= c!1247223 ((_ is Concat!25398) (h!72282 (exprs!6437 lt!2437193))))))

(declare-fun b!6726706 () Bool)

(assert (=> b!6726706 (= e!4064052 call!607372)))

(declare-fun bm!607364 () Bool)

(declare-fun call!607369 () List!65958)

(declare-fun call!607370 () List!65958)

(assert (=> bm!607364 (= call!607369 call!607370)))

(declare-fun b!6726707 () Bool)

(assert (=> b!6726707 (= e!4064056 e!4064054)))

(declare-fun c!1247225 () Bool)

(assert (=> b!6726707 (= c!1247225 ((_ is Union!16553) (h!72282 (exprs!6437 lt!2437193))))))

(declare-fun b!6726708 () Bool)

(assert (=> b!6726708 (= e!4064053 ((_ map or) call!607371 call!607368))))

(declare-fun bm!607365 () Bool)

(declare-fun c!1247224 () Bool)

(assert (=> bm!607365 (= call!607373 (derivationStepZipperDown!1781 (ite c!1247225 (regTwo!33619 (h!72282 (exprs!6437 lt!2437193))) (ite c!1247224 (regTwo!33618 (h!72282 (exprs!6437 lt!2437193))) (ite c!1247223 (regOne!33618 (h!72282 (exprs!6437 lt!2437193))) (reg!16882 (h!72282 (exprs!6437 lt!2437193)))))) (ite (or c!1247225 c!1247224) (Context!11875 (t!379641 (exprs!6437 lt!2437193))) (Context!11875 call!607369)) (h!72284 s!2326)))))

(declare-fun b!6726709 () Bool)

(assert (=> b!6726709 (= e!4064055 call!607372)))

(declare-fun b!6726710 () Bool)

(assert (=> b!6726710 (= e!4064056 (store ((as const (Array Context!11874 Bool)) false) (Context!11875 (t!379641 (exprs!6437 lt!2437193))) true))))

(declare-fun bm!607366 () Bool)

(assert (=> bm!607366 (= call!607368 call!607373)))

(declare-fun bm!607367 () Bool)

(assert (=> bm!607367 (= call!607370 ($colon$colon!2370 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 lt!2437193)))) (ite (or c!1247224 c!1247223) (regTwo!33618 (h!72282 (exprs!6437 lt!2437193))) (h!72282 (exprs!6437 lt!2437193)))))))

(declare-fun bm!607368 () Bool)

(assert (=> bm!607368 (= call!607371 (derivationStepZipperDown!1781 (ite c!1247225 (regOne!33619 (h!72282 (exprs!6437 lt!2437193))) (regOne!33618 (h!72282 (exprs!6437 lt!2437193)))) (ite c!1247225 (Context!11875 (t!379641 (exprs!6437 lt!2437193))) (Context!11875 call!607370)) (h!72284 s!2326)))))

(declare-fun b!6726711 () Bool)

(assert (=> b!6726711 (= c!1247224 e!4064057)))

(declare-fun res!2752179 () Bool)

(assert (=> b!6726711 (=> (not res!2752179) (not e!4064057))))

(assert (=> b!6726711 (= res!2752179 ((_ is Concat!25398) (h!72282 (exprs!6437 lt!2437193))))))

(assert (=> b!6726711 (= e!4064054 e!4064053)))

(declare-fun b!6726712 () Bool)

(assert (=> b!6726712 (= e!4064055 ((as const (Array Context!11874 Bool)) false))))

(assert (= (and d!2113666 c!1247222) b!6726710))

(assert (= (and d!2113666 (not c!1247222)) b!6726707))

(assert (= (and b!6726707 c!1247225) b!6726704))

(assert (= (and b!6726707 (not c!1247225)) b!6726711))

(assert (= (and b!6726711 res!2752179) b!6726702))

(assert (= (and b!6726711 c!1247224) b!6726708))

(assert (= (and b!6726711 (not c!1247224)) b!6726705))

(assert (= (and b!6726705 c!1247223) b!6726706))

(assert (= (and b!6726705 (not c!1247223)) b!6726703))

(assert (= (and b!6726703 c!1247221) b!6726709))

(assert (= (and b!6726703 (not c!1247221)) b!6726712))

(assert (= (or b!6726706 b!6726709) bm!607364))

(assert (= (or b!6726706 b!6726709) bm!607363))

(assert (= (or b!6726708 bm!607364) bm!607367))

(assert (= (or b!6726708 bm!607363) bm!607366))

(assert (= (or b!6726704 bm!607366) bm!607365))

(assert (= (or b!6726704 b!6726708) bm!607368))

(declare-fun m!7486404 () Bool)

(assert (=> bm!607365 m!7486404))

(declare-fun m!7486406 () Bool)

(assert (=> b!6726702 m!7486406))

(declare-fun m!7486408 () Bool)

(assert (=> bm!607367 m!7486408))

(declare-fun m!7486410 () Bool)

(assert (=> bm!607368 m!7486410))

(declare-fun m!7486412 () Bool)

(assert (=> b!6726710 m!7486412))

(assert (=> bm!607275 d!2113666))

(declare-fun d!2113670 () Bool)

(assert (=> d!2113670 true))

(assert (=> d!2113670 true))

(declare-fun res!2752182 () Bool)

(assert (=> d!2113670 (= (choose!50121 lambda!377320) res!2752182)))

(assert (=> d!2113504 d!2113670))

(declare-fun d!2113672 () Bool)

(declare-fun res!2752190 () Bool)

(declare-fun e!4064067 () Bool)

(assert (=> d!2113672 (=> res!2752190 e!4064067)))

(assert (=> d!2113672 (= res!2752190 ((_ is Nil!65835) lt!2437232))))

(assert (=> d!2113672 (= (noDuplicate!2346 lt!2437232) e!4064067)))

(declare-fun b!6726722 () Bool)

(declare-fun e!4064068 () Bool)

(assert (=> b!6726722 (= e!4064067 e!4064068)))

(declare-fun res!2752191 () Bool)

(assert (=> b!6726722 (=> (not res!2752191) (not e!4064068))))

(declare-fun contains!20251 (List!65959 Context!11874) Bool)

(assert (=> b!6726722 (= res!2752191 (not (contains!20251 (t!379642 lt!2437232) (h!72283 lt!2437232))))))

(declare-fun b!6726723 () Bool)

(assert (=> b!6726723 (= e!4064068 (noDuplicate!2346 (t!379642 lt!2437232)))))

(assert (= (and d!2113672 (not res!2752190)) b!6726722))

(assert (= (and b!6726722 res!2752191) b!6726723))

(declare-fun m!7486426 () Bool)

(assert (=> b!6726722 m!7486426))

(declare-fun m!7486428 () Bool)

(assert (=> b!6726723 m!7486428))

(assert (=> d!2113462 d!2113672))

(declare-fun d!2113686 () Bool)

(declare-fun e!4064075 () Bool)

(assert (=> d!2113686 e!4064075))

(declare-fun res!2752196 () Bool)

(assert (=> d!2113686 (=> (not res!2752196) (not e!4064075))))

(declare-fun res!2752197 () List!65959)

(assert (=> d!2113686 (= res!2752196 (noDuplicate!2346 res!2752197))))

(declare-fun e!4064076 () Bool)

(assert (=> d!2113686 e!4064076))

(assert (=> d!2113686 (= (choose!50119 z!1189) res!2752197)))

(declare-fun b!6726731 () Bool)

(declare-fun e!4064077 () Bool)

(declare-fun tp!1844294 () Bool)

(assert (=> b!6726731 (= e!4064077 tp!1844294)))

(declare-fun b!6726730 () Bool)

(declare-fun tp!1844295 () Bool)

(assert (=> b!6726730 (= e!4064076 (and (inv!84629 (h!72283 res!2752197)) e!4064077 tp!1844295))))

(declare-fun b!6726732 () Bool)

(assert (=> b!6726732 (= e!4064075 (= (content!12775 res!2752197) z!1189))))

(assert (= b!6726730 b!6726731))

(assert (= (and d!2113686 ((_ is Cons!65835) res!2752197)) b!6726730))

(assert (= (and d!2113686 res!2752196) b!6726732))

(declare-fun m!7486430 () Bool)

(assert (=> d!2113686 m!7486430))

(declare-fun m!7486432 () Bool)

(assert (=> b!6726730 m!7486432))

(declare-fun m!7486434 () Bool)

(assert (=> b!6726732 m!7486434))

(assert (=> d!2113462 d!2113686))

(declare-fun d!2113688 () Bool)

(assert (=> d!2113688 (= (nullable!6540 (h!72282 (exprs!6437 lt!2437193))) (nullableFct!2454 (h!72282 (exprs!6437 lt!2437193))))))

(declare-fun bs!1789214 () Bool)

(assert (= bs!1789214 d!2113688))

(declare-fun m!7486436 () Bool)

(assert (=> bs!1789214 m!7486436))

(assert (=> b!6725954 d!2113688))

(assert (=> d!2113520 d!2113506))

(declare-fun d!2113690 () Bool)

(assert (=> d!2113690 (= (Exists!3621 lambda!377396) (choose!50121 lambda!377396))))

(declare-fun bs!1789215 () Bool)

(assert (= bs!1789215 d!2113690))

(declare-fun m!7486438 () Bool)

(assert (=> bs!1789215 m!7486438))

(assert (=> d!2113520 d!2113690))

(declare-fun bs!1789229 () Bool)

(declare-fun d!2113692 () Bool)

(assert (= bs!1789229 (and d!2113692 d!2113510)))

(declare-fun lambda!377423 () Int)

(assert (=> bs!1789229 (= lambda!377423 lambda!377386)))

(assert (=> bs!1789229 (not (= lambda!377423 lambda!377387))))

(declare-fun bs!1789230 () Bool)

(assert (= bs!1789230 (and d!2113692 b!6725773)))

(assert (=> bs!1789230 (= lambda!377423 lambda!377318)))

(declare-fun bs!1789231 () Bool)

(assert (= bs!1789231 (and d!2113692 b!6726198)))

(assert (=> bs!1789231 (not (= lambda!377423 lambda!377381))))

(declare-fun bs!1789232 () Bool)

(assert (= bs!1789232 (and d!2113692 d!2113516)))

(assert (=> bs!1789232 (= (= r!7292 (Star!16553 (reg!16882 r!7292))) (= lambda!377423 lambda!377392))))

(declare-fun bs!1789233 () Bool)

(assert (= bs!1789233 (and d!2113692 b!6726207)))

(assert (=> bs!1789233 (not (= lambda!377423 lambda!377380))))

(declare-fun bs!1789234 () Bool)

(assert (= bs!1789234 (and d!2113692 d!2113520)))

(assert (=> bs!1789234 (= lambda!377423 lambda!377396)))

(assert (=> bs!1789232 (not (= lambda!377423 lambda!377393))))

(assert (=> bs!1789230 (not (= lambda!377423 lambda!377320))))

(assert (=> bs!1789230 (not (= lambda!377423 lambda!377319))))

(assert (=> d!2113692 true))

(assert (=> d!2113692 true))

(assert (=> d!2113692 true))

(assert (=> d!2113692 (= (isDefined!13143 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 Nil!65836 s!2326 s!2326)) (Exists!3621 lambda!377423))))

(assert (=> d!2113692 true))

(declare-fun _$89!2938 () Unit!159797)

(assert (=> d!2113692 (= (choose!50124 (reg!16882 r!7292) r!7292 s!2326) _$89!2938)))

(declare-fun bs!1789236 () Bool)

(assert (= bs!1789236 d!2113692))

(assert (=> bs!1789236 m!7485828))

(assert (=> bs!1789236 m!7485828))

(assert (=> bs!1789236 m!7485830))

(declare-fun m!7486442 () Bool)

(assert (=> bs!1789236 m!7486442))

(assert (=> d!2113520 d!2113692))

(assert (=> d!2113520 d!2113518))

(declare-fun b!6726743 () Bool)

(declare-fun res!2752208 () Bool)

(declare-fun e!4064084 () Bool)

(assert (=> b!6726743 (=> res!2752208 e!4064084)))

(assert (=> b!6726743 (= res!2752208 (not ((_ is Concat!25398) (reg!16882 r!7292))))))

(declare-fun e!4064088 () Bool)

(assert (=> b!6726743 (= e!4064088 e!4064084)))

(declare-fun b!6726744 () Bool)

(declare-fun e!4064087 () Bool)

(assert (=> b!6726744 (= e!4064087 e!4064088)))

(declare-fun c!1247227 () Bool)

(assert (=> b!6726744 (= c!1247227 ((_ is Union!16553) (reg!16882 r!7292)))))

(declare-fun b!6726745 () Bool)

(declare-fun e!4064083 () Bool)

(assert (=> b!6726745 (= e!4064087 e!4064083)))

(declare-fun res!2752207 () Bool)

(assert (=> b!6726745 (= res!2752207 (not (nullable!6540 (reg!16882 (reg!16882 r!7292)))))))

(assert (=> b!6726745 (=> (not res!2752207) (not e!4064083))))

(declare-fun bm!607369 () Bool)

(declare-fun call!607375 () Bool)

(assert (=> bm!607369 (= call!607375 (validRegex!8289 (ite c!1247227 (regTwo!33619 (reg!16882 r!7292)) (regTwo!33618 (reg!16882 r!7292)))))))

(declare-fun b!6726746 () Bool)

(declare-fun call!607374 () Bool)

(assert (=> b!6726746 (= e!4064083 call!607374)))

(declare-fun c!1247228 () Bool)

(declare-fun bm!607370 () Bool)

(assert (=> bm!607370 (= call!607374 (validRegex!8289 (ite c!1247228 (reg!16882 (reg!16882 r!7292)) (ite c!1247227 (regOne!33619 (reg!16882 r!7292)) (regOne!33618 (reg!16882 r!7292))))))))

(declare-fun b!6726747 () Bool)

(declare-fun e!4064086 () Bool)

(assert (=> b!6726747 (= e!4064086 call!607375)))

(declare-fun b!6726748 () Bool)

(declare-fun res!2752206 () Bool)

(assert (=> b!6726748 (=> (not res!2752206) (not e!4064086))))

(declare-fun call!607376 () Bool)

(assert (=> b!6726748 (= res!2752206 call!607376)))

(assert (=> b!6726748 (= e!4064088 e!4064086)))

(declare-fun b!6726749 () Bool)

(declare-fun e!4064085 () Bool)

(assert (=> b!6726749 (= e!4064085 e!4064087)))

(assert (=> b!6726749 (= c!1247228 ((_ is Star!16553) (reg!16882 r!7292)))))

(declare-fun b!6726750 () Bool)

(declare-fun e!4064089 () Bool)

(assert (=> b!6726750 (= e!4064089 call!607375)))

(declare-fun d!2113698 () Bool)

(declare-fun res!2752210 () Bool)

(assert (=> d!2113698 (=> res!2752210 e!4064085)))

(assert (=> d!2113698 (= res!2752210 ((_ is ElementMatch!16553) (reg!16882 r!7292)))))

(assert (=> d!2113698 (= (validRegex!8289 (reg!16882 r!7292)) e!4064085)))

(declare-fun b!6726751 () Bool)

(assert (=> b!6726751 (= e!4064084 e!4064089)))

(declare-fun res!2752209 () Bool)

(assert (=> b!6726751 (=> (not res!2752209) (not e!4064089))))

(assert (=> b!6726751 (= res!2752209 call!607376)))

(declare-fun bm!607371 () Bool)

(assert (=> bm!607371 (= call!607376 call!607374)))

(assert (= (and d!2113698 (not res!2752210)) b!6726749))

(assert (= (and b!6726749 c!1247228) b!6726745))

(assert (= (and b!6726749 (not c!1247228)) b!6726744))

(assert (= (and b!6726745 res!2752207) b!6726746))

(assert (= (and b!6726744 c!1247227) b!6726748))

(assert (= (and b!6726744 (not c!1247227)) b!6726743))

(assert (= (and b!6726748 res!2752206) b!6726747))

(assert (= (and b!6726743 (not res!2752208)) b!6726751))

(assert (= (and b!6726751 res!2752209) b!6726750))

(assert (= (or b!6726747 b!6726750) bm!607369))

(assert (= (or b!6726748 b!6726751) bm!607371))

(assert (= (or b!6726746 bm!607371) bm!607370))

(declare-fun m!7486444 () Bool)

(assert (=> b!6726745 m!7486444))

(declare-fun m!7486446 () Bool)

(assert (=> bm!607369 m!7486446))

(declare-fun m!7486448 () Bool)

(assert (=> bm!607370 m!7486448))

(assert (=> d!2113520 d!2113698))

(declare-fun d!2113700 () Bool)

(assert (=> d!2113700 (= ($colon$colon!2370 (exprs!6437 (Context!11875 Nil!65834)) (ite (or c!1247156 c!1247155) (regTwo!33618 r!7292) r!7292)) (Cons!65834 (ite (or c!1247156 c!1247155) (regTwo!33618 r!7292) r!7292) (exprs!6437 (Context!11875 Nil!65834))))))

(assert (=> bm!607320 d!2113700))

(assert (=> b!6726083 d!2113420))

(declare-fun bs!1789244 () Bool)

(declare-fun d!2113706 () Bool)

(assert (= bs!1789244 (and d!2113706 d!2113420)))

(declare-fun lambda!377425 () Int)

(assert (=> bs!1789244 (= lambda!377425 lambda!377333)))

(declare-fun bs!1789245 () Bool)

(assert (= bs!1789245 (and d!2113706 d!2113448)))

(assert (=> bs!1789245 (= lambda!377425 lambda!377346)))

(declare-fun bs!1789246 () Bool)

(assert (= bs!1789246 (and d!2113706 d!2113618)))

(assert (=> bs!1789246 (= lambda!377425 lambda!377410)))

(declare-fun bs!1789247 () Bool)

(assert (= bs!1789247 (and d!2113706 d!2113450)))

(assert (=> bs!1789247 (= lambda!377425 lambda!377347)))

(declare-fun bs!1789248 () Bool)

(assert (= bs!1789248 (and d!2113706 d!2113464)))

(assert (=> bs!1789248 (= lambda!377425 lambda!377359)))

(declare-fun bs!1789249 () Bool)

(assert (= bs!1789249 (and d!2113706 d!2113636)))

(assert (=> bs!1789249 (= lambda!377425 lambda!377416)))

(declare-fun bs!1789250 () Bool)

(assert (= bs!1789250 (and d!2113706 d!2113470)))

(assert (=> bs!1789250 (= lambda!377425 lambda!377362)))

(declare-fun bs!1789251 () Bool)

(assert (= bs!1789251 (and d!2113706 d!2113524)))

(assert (=> bs!1789251 (= lambda!377425 lambda!377397)))

(declare-fun bs!1789252 () Bool)

(assert (= bs!1789252 (and d!2113706 d!2113624)))

(assert (=> bs!1789252 (= lambda!377425 lambda!377413)))

(declare-fun lt!2437295 () List!65958)

(assert (=> d!2113706 (forall!15753 lt!2437295 lambda!377425)))

(declare-fun e!4064097 () List!65958)

(assert (=> d!2113706 (= lt!2437295 e!4064097)))

(declare-fun c!1247231 () Bool)

(assert (=> d!2113706 (= c!1247231 ((_ is Cons!65835) (t!379642 zl!343)))))

(assert (=> d!2113706 (= (unfocusZipperList!1974 (t!379642 zl!343)) lt!2437295)))

(declare-fun b!6726761 () Bool)

(assert (=> b!6726761 (= e!4064097 (Cons!65834 (generalisedConcat!2150 (exprs!6437 (h!72283 (t!379642 zl!343)))) (unfocusZipperList!1974 (t!379642 (t!379642 zl!343)))))))

(declare-fun b!6726762 () Bool)

(assert (=> b!6726762 (= e!4064097 Nil!65834)))

(assert (= (and d!2113706 c!1247231) b!6726761))

(assert (= (and d!2113706 (not c!1247231)) b!6726762))

(declare-fun m!7486464 () Bool)

(assert (=> d!2113706 m!7486464))

(declare-fun m!7486466 () Bool)

(assert (=> b!6726761 m!7486466))

(declare-fun m!7486468 () Bool)

(assert (=> b!6726761 m!7486468))

(assert (=> b!6726083 d!2113706))

(declare-fun d!2113712 () Bool)

(declare-fun res!2752219 () Bool)

(declare-fun e!4064098 () Bool)

(assert (=> d!2113712 (=> res!2752219 e!4064098)))

(assert (=> d!2113712 (= res!2752219 ((_ is Nil!65834) (exprs!6437 (Context!11875 lt!2437194))))))

(assert (=> d!2113712 (= (forall!15753 (exprs!6437 (Context!11875 lt!2437194)) lambda!377347) e!4064098)))

(declare-fun b!6726763 () Bool)

(declare-fun e!4064099 () Bool)

(assert (=> b!6726763 (= e!4064098 e!4064099)))

(declare-fun res!2752220 () Bool)

(assert (=> b!6726763 (=> (not res!2752220) (not e!4064099))))

(assert (=> b!6726763 (= res!2752220 (dynLambda!26258 lambda!377347 (h!72282 (exprs!6437 (Context!11875 lt!2437194)))))))

(declare-fun b!6726764 () Bool)

(assert (=> b!6726764 (= e!4064099 (forall!15753 (t!379641 (exprs!6437 (Context!11875 lt!2437194))) lambda!377347))))

(assert (= (and d!2113712 (not res!2752219)) b!6726763))

(assert (= (and b!6726763 res!2752220) b!6726764))

(declare-fun b_lambda!253237 () Bool)

(assert (=> (not b_lambda!253237) (not b!6726763)))

(declare-fun m!7486470 () Bool)

(assert (=> b!6726763 m!7486470))

(declare-fun m!7486472 () Bool)

(assert (=> b!6726764 m!7486472))

(assert (=> d!2113450 d!2113712))

(declare-fun d!2113714 () Bool)

(assert (=> d!2113714 true))

(assert (=> d!2113714 true))

(declare-fun res!2752221 () Bool)

(assert (=> d!2113714 (= (choose!50121 lambda!377318) res!2752221)))

(assert (=> d!2113514 d!2113714))

(declare-fun d!2113716 () Bool)

(assert (=> d!2113716 (= (isEmpty!38165 (tail!12618 (unfocusZipperList!1974 zl!343))) ((_ is Nil!65834) (tail!12618 (unfocusZipperList!1974 zl!343))))))

(assert (=> b!6726034 d!2113716))

(declare-fun d!2113718 () Bool)

(assert (=> d!2113718 (= (tail!12618 (unfocusZipperList!1974 zl!343)) (t!379641 (unfocusZipperList!1974 zl!343)))))

(assert (=> b!6726034 d!2113718))

(declare-fun bs!1789254 () Bool)

(declare-fun b!6726774 () Bool)

(assert (= bs!1789254 (and b!6726774 d!2113510)))

(declare-fun lambda!377426 () Int)

(assert (=> bs!1789254 (not (= lambda!377426 lambda!377386))))

(assert (=> bs!1789254 (not (= lambda!377426 lambda!377387))))

(declare-fun bs!1789255 () Bool)

(assert (= bs!1789255 (and b!6726774 b!6725773)))

(assert (=> bs!1789255 (not (= lambda!377426 lambda!377318))))

(declare-fun bs!1789256 () Bool)

(assert (= bs!1789256 (and b!6726774 b!6726198)))

(assert (=> bs!1789256 (not (= lambda!377426 lambda!377381))))

(declare-fun bs!1789257 () Bool)

(assert (= bs!1789257 (and b!6726774 d!2113516)))

(assert (=> bs!1789257 (not (= lambda!377426 lambda!377392))))

(declare-fun bs!1789258 () Bool)

(assert (= bs!1789258 (and b!6726774 d!2113520)))

(assert (=> bs!1789258 (not (= lambda!377426 lambda!377396))))

(assert (=> bs!1789257 (= (and (= (reg!16882 (regOne!33619 r!7292)) (reg!16882 r!7292)) (= (regOne!33619 r!7292) (Star!16553 (reg!16882 r!7292)))) (= lambda!377426 lambda!377393))))

(assert (=> bs!1789255 (not (= lambda!377426 lambda!377320))))

(assert (=> bs!1789255 (= (and (= (reg!16882 (regOne!33619 r!7292)) (reg!16882 r!7292)) (= (regOne!33619 r!7292) r!7292)) (= lambda!377426 lambda!377319))))

(declare-fun bs!1789259 () Bool)

(assert (= bs!1789259 (and b!6726774 d!2113692)))

(assert (=> bs!1789259 (not (= lambda!377426 lambda!377423))))

(declare-fun bs!1789260 () Bool)

(assert (= bs!1789260 (and b!6726774 b!6726207)))

(assert (=> bs!1789260 (= (and (= (reg!16882 (regOne!33619 r!7292)) (reg!16882 r!7292)) (= (regOne!33619 r!7292) r!7292)) (= lambda!377426 lambda!377380))))

(assert (=> b!6726774 true))

(assert (=> b!6726774 true))

(declare-fun bs!1789261 () Bool)

(declare-fun b!6726765 () Bool)

(assert (= bs!1789261 (and b!6726765 d!2113510)))

(declare-fun lambda!377427 () Int)

(assert (=> bs!1789261 (not (= lambda!377427 lambda!377386))))

(assert (=> bs!1789261 (= (and (= (regOne!33618 (regOne!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33618 (regOne!33619 r!7292)) r!7292)) (= lambda!377427 lambda!377387))))

(declare-fun bs!1789262 () Bool)

(assert (= bs!1789262 (and b!6726765 b!6725773)))

(assert (=> bs!1789262 (not (= lambda!377427 lambda!377318))))

(declare-fun bs!1789263 () Bool)

(assert (= bs!1789263 (and b!6726765 b!6726774)))

(assert (=> bs!1789263 (not (= lambda!377427 lambda!377426))))

(declare-fun bs!1789264 () Bool)

(assert (= bs!1789264 (and b!6726765 b!6726198)))

(assert (=> bs!1789264 (= (and (= (regOne!33618 (regOne!33619 r!7292)) (regOne!33618 r!7292)) (= (regTwo!33618 (regOne!33619 r!7292)) (regTwo!33618 r!7292))) (= lambda!377427 lambda!377381))))

(declare-fun bs!1789265 () Bool)

(assert (= bs!1789265 (and b!6726765 d!2113516)))

(assert (=> bs!1789265 (not (= lambda!377427 lambda!377392))))

(declare-fun bs!1789266 () Bool)

(assert (= bs!1789266 (and b!6726765 d!2113520)))

(assert (=> bs!1789266 (not (= lambda!377427 lambda!377396))))

(assert (=> bs!1789265 (not (= lambda!377427 lambda!377393))))

(assert (=> bs!1789262 (= (and (= (regOne!33618 (regOne!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33618 (regOne!33619 r!7292)) r!7292)) (= lambda!377427 lambda!377320))))

(assert (=> bs!1789262 (not (= lambda!377427 lambda!377319))))

(declare-fun bs!1789267 () Bool)

(assert (= bs!1789267 (and b!6726765 d!2113692)))

(assert (=> bs!1789267 (not (= lambda!377427 lambda!377423))))

(declare-fun bs!1789268 () Bool)

(assert (= bs!1789268 (and b!6726765 b!6726207)))

(assert (=> bs!1789268 (not (= lambda!377427 lambda!377380))))

(assert (=> b!6726765 true))

(assert (=> b!6726765 true))

(declare-fun e!4064106 () Bool)

(declare-fun call!607381 () Bool)

(assert (=> b!6726765 (= e!4064106 call!607381)))

(declare-fun b!6726766 () Bool)

(declare-fun e!4064101 () Bool)

(assert (=> b!6726766 (= e!4064101 (= s!2326 (Cons!65836 (c!1246985 (regOne!33619 r!7292)) Nil!65836)))))

(declare-fun bm!607375 () Bool)

(declare-fun call!607380 () Bool)

(assert (=> bm!607375 (= call!607380 (isEmpty!38162 s!2326))))

(declare-fun b!6726767 () Bool)

(declare-fun e!4064103 () Bool)

(assert (=> b!6726767 (= e!4064103 e!4064106)))

(declare-fun c!1247235 () Bool)

(assert (=> b!6726767 (= c!1247235 ((_ is Star!16553) (regOne!33619 r!7292)))))

(declare-fun b!6726768 () Bool)

(declare-fun e!4064104 () Bool)

(assert (=> b!6726768 (= e!4064104 (matchRSpec!3654 (regTwo!33619 (regOne!33619 r!7292)) s!2326))))

(declare-fun b!6726769 () Bool)

(declare-fun c!1247233 () Bool)

(assert (=> b!6726769 (= c!1247233 ((_ is ElementMatch!16553) (regOne!33619 r!7292)))))

(declare-fun e!4064100 () Bool)

(assert (=> b!6726769 (= e!4064100 e!4064101)))

(declare-fun b!6726770 () Bool)

(declare-fun c!1247234 () Bool)

(assert (=> b!6726770 (= c!1247234 ((_ is Union!16553) (regOne!33619 r!7292)))))

(assert (=> b!6726770 (= e!4064101 e!4064103)))

(declare-fun b!6726771 () Bool)

(declare-fun res!2752224 () Bool)

(declare-fun e!4064102 () Bool)

(assert (=> b!6726771 (=> res!2752224 e!4064102)))

(assert (=> b!6726771 (= res!2752224 call!607380)))

(assert (=> b!6726771 (= e!4064106 e!4064102)))

(declare-fun bm!607376 () Bool)

(assert (=> bm!607376 (= call!607381 (Exists!3621 (ite c!1247235 lambda!377426 lambda!377427)))))

(declare-fun b!6726772 () Bool)

(declare-fun e!4064105 () Bool)

(assert (=> b!6726772 (= e!4064105 e!4064100)))

(declare-fun res!2752223 () Bool)

(assert (=> b!6726772 (= res!2752223 (not ((_ is EmptyLang!16553) (regOne!33619 r!7292))))))

(assert (=> b!6726772 (=> (not res!2752223) (not e!4064100))))

(declare-fun d!2113720 () Bool)

(declare-fun c!1247232 () Bool)

(assert (=> d!2113720 (= c!1247232 ((_ is EmptyExpr!16553) (regOne!33619 r!7292)))))

(assert (=> d!2113720 (= (matchRSpec!3654 (regOne!33619 r!7292) s!2326) e!4064105)))

(declare-fun b!6726773 () Bool)

(assert (=> b!6726773 (= e!4064103 e!4064104)))

(declare-fun res!2752222 () Bool)

(assert (=> b!6726773 (= res!2752222 (matchRSpec!3654 (regOne!33619 (regOne!33619 r!7292)) s!2326))))

(assert (=> b!6726773 (=> res!2752222 e!4064104)))

(assert (=> b!6726774 (= e!4064102 call!607381)))

(declare-fun b!6726775 () Bool)

(assert (=> b!6726775 (= e!4064105 call!607380)))

(assert (= (and d!2113720 c!1247232) b!6726775))

(assert (= (and d!2113720 (not c!1247232)) b!6726772))

(assert (= (and b!6726772 res!2752223) b!6726769))

(assert (= (and b!6726769 c!1247233) b!6726766))

(assert (= (and b!6726769 (not c!1247233)) b!6726770))

(assert (= (and b!6726770 c!1247234) b!6726773))

(assert (= (and b!6726770 (not c!1247234)) b!6726767))

(assert (= (and b!6726773 (not res!2752222)) b!6726768))

(assert (= (and b!6726767 c!1247235) b!6726771))

(assert (= (and b!6726767 (not c!1247235)) b!6726765))

(assert (= (and b!6726771 (not res!2752224)) b!6726774))

(assert (= (or b!6726774 b!6726765) bm!607376))

(assert (= (or b!6726775 b!6726771) bm!607375))

(assert (=> bm!607375 m!7485818))

(declare-fun m!7486494 () Bool)

(assert (=> b!6726768 m!7486494))

(declare-fun m!7486496 () Bool)

(assert (=> bm!607376 m!7486496))

(declare-fun m!7486498 () Bool)

(assert (=> b!6726773 m!7486498))

(assert (=> b!6726206 d!2113720))

(declare-fun d!2113730 () Bool)

(declare-fun c!1247243 () Bool)

(declare-fun e!4064123 () Bool)

(assert (=> d!2113730 (= c!1247243 e!4064123)))

(declare-fun res!2752237 () Bool)

(assert (=> d!2113730 (=> (not res!2752237) (not e!4064123))))

(assert (=> d!2113730 (= res!2752237 ((_ is Cons!65834) (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))))))))

(declare-fun e!4064125 () (InoxSet Context!11874))

(assert (=> d!2113730 (= (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) (h!72284 s!2326)) e!4064125)))

(declare-fun b!6726802 () Bool)

(declare-fun e!4064124 () (InoxSet Context!11874))

(assert (=> b!6726802 (= e!4064124 ((as const (Array Context!11874 Bool)) false))))

(declare-fun call!607386 () (InoxSet Context!11874))

(declare-fun b!6726803 () Bool)

(assert (=> b!6726803 (= e!4064125 ((_ map or) call!607386 (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343))))))) (h!72284 s!2326))))))

(declare-fun b!6726804 () Bool)

(assert (=> b!6726804 (= e!4064123 (nullable!6540 (h!72282 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343))))))))))

(declare-fun b!6726805 () Bool)

(assert (=> b!6726805 (= e!4064124 call!607386)))

(declare-fun bm!607381 () Bool)

(assert (=> bm!607381 (= call!607386 (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))))) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343))))))) (h!72284 s!2326)))))

(declare-fun b!6726806 () Bool)

(assert (=> b!6726806 (= e!4064125 e!4064124)))

(declare-fun c!1247244 () Bool)

(assert (=> b!6726806 (= c!1247244 ((_ is Cons!65834) (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))))))))

(assert (= (and d!2113730 res!2752237) b!6726804))

(assert (= (and d!2113730 c!1247243) b!6726803))

(assert (= (and d!2113730 (not c!1247243)) b!6726806))

(assert (= (and b!6726806 c!1247244) b!6726805))

(assert (= (and b!6726806 (not c!1247244)) b!6726802))

(assert (= (or b!6726803 b!6726805) bm!607381))

(declare-fun m!7486504 () Bool)

(assert (=> b!6726803 m!7486504))

(declare-fun m!7486508 () Bool)

(assert (=> b!6726804 m!7486508))

(declare-fun m!7486510 () Bool)

(assert (=> bm!607381 m!7486510))

(assert (=> b!6725921 d!2113730))

(declare-fun b!6726812 () Bool)

(declare-fun res!2752241 () Bool)

(declare-fun e!4064130 () Bool)

(assert (=> b!6726812 (=> res!2752241 e!4064130)))

(assert (=> b!6726812 (= res!2752241 (not ((_ is Concat!25398) (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292)))))))

(declare-fun e!4064134 () Bool)

(assert (=> b!6726812 (= e!4064134 e!4064130)))

(declare-fun b!6726813 () Bool)

(declare-fun e!4064133 () Bool)

(assert (=> b!6726813 (= e!4064133 e!4064134)))

(declare-fun c!1247245 () Bool)

(assert (=> b!6726813 (= c!1247245 ((_ is Union!16553) (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))))))

(declare-fun b!6726814 () Bool)

(declare-fun e!4064128 () Bool)

(assert (=> b!6726814 (= e!4064133 e!4064128)))

(declare-fun res!2752240 () Bool)

(assert (=> b!6726814 (= res!2752240 (not (nullable!6540 (reg!16882 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))))))))

(assert (=> b!6726814 (=> (not res!2752240) (not e!4064128))))

(declare-fun bm!607383 () Bool)

(declare-fun call!607388 () Bool)

(assert (=> bm!607383 (= call!607388 (validRegex!8289 (ite c!1247245 (regTwo!33619 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))) (regTwo!33618 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))))))))

(declare-fun b!6726815 () Bool)

(declare-fun call!607387 () Bool)

(assert (=> b!6726815 (= e!4064128 call!607387)))

(declare-fun bm!607384 () Bool)

(declare-fun c!1247248 () Bool)

(assert (=> bm!607384 (= call!607387 (validRegex!8289 (ite c!1247248 (reg!16882 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))) (ite c!1247245 (regOne!33619 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))) (regOne!33618 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292)))))))))

(declare-fun b!6726816 () Bool)

(declare-fun e!4064132 () Bool)

(assert (=> b!6726816 (= e!4064132 call!607388)))

(declare-fun b!6726817 () Bool)

(declare-fun res!2752239 () Bool)

(assert (=> b!6726817 (=> (not res!2752239) (not e!4064132))))

(declare-fun call!607390 () Bool)

(assert (=> b!6726817 (= res!2752239 call!607390)))

(assert (=> b!6726817 (= e!4064134 e!4064132)))

(declare-fun b!6726818 () Bool)

(declare-fun e!4064131 () Bool)

(assert (=> b!6726818 (= e!4064131 e!4064133)))

(assert (=> b!6726818 (= c!1247248 ((_ is Star!16553) (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))))))

(declare-fun b!6726819 () Bool)

(declare-fun e!4064135 () Bool)

(assert (=> b!6726819 (= e!4064135 call!607388)))

(declare-fun d!2113734 () Bool)

(declare-fun res!2752244 () Bool)

(assert (=> d!2113734 (=> res!2752244 e!4064131)))

(assert (=> d!2113734 (= res!2752244 ((_ is ElementMatch!16553) (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))))))

(assert (=> d!2113734 (= (validRegex!8289 (ite c!1247141 (regTwo!33619 r!7292) (regTwo!33618 r!7292))) e!4064131)))

(declare-fun b!6726820 () Bool)

(assert (=> b!6726820 (= e!4064130 e!4064135)))

(declare-fun res!2752243 () Bool)

(assert (=> b!6726820 (=> (not res!2752243) (not e!4064135))))

(assert (=> b!6726820 (= res!2752243 call!607390)))

(declare-fun bm!607385 () Bool)

(assert (=> bm!607385 (= call!607390 call!607387)))

(assert (= (and d!2113734 (not res!2752244)) b!6726818))

(assert (= (and b!6726818 c!1247248) b!6726814))

(assert (= (and b!6726818 (not c!1247248)) b!6726813))

(assert (= (and b!6726814 res!2752240) b!6726815))

(assert (= (and b!6726813 c!1247245) b!6726817))

(assert (= (and b!6726813 (not c!1247245)) b!6726812))

(assert (= (and b!6726817 res!2752239) b!6726816))

(assert (= (and b!6726812 (not res!2752241)) b!6726820))

(assert (= (and b!6726820 res!2752243) b!6726819))

(assert (= (or b!6726816 b!6726819) bm!607383))

(assert (= (or b!6726817 b!6726820) bm!607385))

(assert (= (or b!6726815 bm!607385) bm!607384))

(declare-fun m!7486518 () Bool)

(assert (=> b!6726814 m!7486518))

(declare-fun m!7486520 () Bool)

(assert (=> bm!607383 m!7486520))

(declare-fun m!7486522 () Bool)

(assert (=> bm!607384 m!7486522))

(assert (=> bm!607301 d!2113734))

(declare-fun d!2113740 () Bool)

(assert (=> d!2113740 (= (isEmpty!38165 (unfocusZipperList!1974 zl!343)) ((_ is Nil!65834) (unfocusZipperList!1974 zl!343)))))

(assert (=> b!6726030 d!2113740))

(declare-fun b!6726832 () Bool)

(declare-fun e!4064147 () Bool)

(assert (=> b!6726832 (= e!4064147 (nullable!6540 (regOne!33618 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292)))))))))

(declare-fun bm!607392 () Bool)

(declare-fun call!607401 () (InoxSet Context!11874))

(declare-fun call!607397 () (InoxSet Context!11874))

(assert (=> bm!607392 (= call!607401 call!607397)))

(declare-fun c!1247254 () Bool)

(declare-fun b!6726833 () Bool)

(assert (=> b!6726833 (= c!1247254 ((_ is Star!16553) (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))))))

(declare-fun e!4064142 () (InoxSet Context!11874))

(declare-fun e!4064145 () (InoxSet Context!11874))

(assert (=> b!6726833 (= e!4064142 e!4064145)))

(declare-fun b!6726834 () Bool)

(declare-fun e!4064144 () (InoxSet Context!11874))

(declare-fun call!607400 () (InoxSet Context!11874))

(declare-fun call!607402 () (InoxSet Context!11874))

(assert (=> b!6726834 (= e!4064144 ((_ map or) call!607400 call!607402))))

(declare-fun c!1247255 () Bool)

(declare-fun d!2113742 () Bool)

(assert (=> d!2113742 (= c!1247255 (and ((_ is ElementMatch!16553) (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (= (c!1246985 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (h!72284 s!2326))))))

(declare-fun e!4064146 () (InoxSet Context!11874))

(assert (=> d!2113742 (= (derivationStepZipperDown!1781 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292)))) (ite (or c!1247157 c!1247156) (Context!11875 Nil!65834) (Context!11875 call!607322)) (h!72284 s!2326)) e!4064146)))

(declare-fun b!6726835 () Bool)

(declare-fun e!4064143 () (InoxSet Context!11874))

(assert (=> b!6726835 (= e!4064143 e!4064142)))

(declare-fun c!1247256 () Bool)

(assert (=> b!6726835 (= c!1247256 ((_ is Concat!25398) (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))))))

(declare-fun b!6726836 () Bool)

(assert (=> b!6726836 (= e!4064142 call!607401)))

(declare-fun bm!607393 () Bool)

(declare-fun call!607398 () List!65958)

(declare-fun call!607399 () List!65958)

(assert (=> bm!607393 (= call!607398 call!607399)))

(declare-fun b!6726837 () Bool)

(assert (=> b!6726837 (= e!4064146 e!4064144)))

(declare-fun c!1247258 () Bool)

(assert (=> b!6726837 (= c!1247258 ((_ is Union!16553) (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))))))

(declare-fun b!6726838 () Bool)

(assert (=> b!6726838 (= e!4064143 ((_ map or) call!607400 call!607397))))

(declare-fun bm!607394 () Bool)

(declare-fun c!1247257 () Bool)

(assert (=> bm!607394 (= call!607402 (derivationStepZipperDown!1781 (ite c!1247258 (regTwo!33619 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (ite c!1247257 (regTwo!33618 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (ite c!1247256 (regOne!33618 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (reg!16882 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292)))))))) (ite (or c!1247258 c!1247257) (ite (or c!1247157 c!1247156) (Context!11875 Nil!65834) (Context!11875 call!607322)) (Context!11875 call!607398)) (h!72284 s!2326)))))

(declare-fun b!6726839 () Bool)

(assert (=> b!6726839 (= e!4064145 call!607401)))

(declare-fun b!6726840 () Bool)

(assert (=> b!6726840 (= e!4064146 (store ((as const (Array Context!11874 Bool)) false) (ite (or c!1247157 c!1247156) (Context!11875 Nil!65834) (Context!11875 call!607322)) true))))

(declare-fun bm!607395 () Bool)

(assert (=> bm!607395 (= call!607397 call!607402)))

(declare-fun bm!607396 () Bool)

(assert (=> bm!607396 (= call!607399 ($colon$colon!2370 (exprs!6437 (ite (or c!1247157 c!1247156) (Context!11875 Nil!65834) (Context!11875 call!607322))) (ite (or c!1247257 c!1247256) (regTwo!33618 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292)))))))))

(declare-fun bm!607397 () Bool)

(assert (=> bm!607397 (= call!607400 (derivationStepZipperDown!1781 (ite c!1247258 (regOne!33619 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))) (regOne!33618 (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292)))))) (ite c!1247258 (ite (or c!1247157 c!1247156) (Context!11875 Nil!65834) (Context!11875 call!607322)) (Context!11875 call!607399)) (h!72284 s!2326)))))

(declare-fun b!6726841 () Bool)

(assert (=> b!6726841 (= c!1247257 e!4064147)))

(declare-fun res!2752246 () Bool)

(assert (=> b!6726841 (=> (not res!2752246) (not e!4064147))))

(assert (=> b!6726841 (= res!2752246 ((_ is Concat!25398) (ite c!1247157 (regTwo!33619 r!7292) (ite c!1247156 (regTwo!33618 r!7292) (ite c!1247155 (regOne!33618 r!7292) (reg!16882 r!7292))))))))

(assert (=> b!6726841 (= e!4064144 e!4064143)))

(declare-fun b!6726842 () Bool)

(assert (=> b!6726842 (= e!4064145 ((as const (Array Context!11874 Bool)) false))))

(assert (= (and d!2113742 c!1247255) b!6726840))

(assert (= (and d!2113742 (not c!1247255)) b!6726837))

(assert (= (and b!6726837 c!1247258) b!6726834))

(assert (= (and b!6726837 (not c!1247258)) b!6726841))

(assert (= (and b!6726841 res!2752246) b!6726832))

(assert (= (and b!6726841 c!1247257) b!6726838))

(assert (= (and b!6726841 (not c!1247257)) b!6726835))

(assert (= (and b!6726835 c!1247256) b!6726836))

(assert (= (and b!6726835 (not c!1247256)) b!6726833))

(assert (= (and b!6726833 c!1247254) b!6726839))

(assert (= (and b!6726833 (not c!1247254)) b!6726842))

(assert (= (or b!6726836 b!6726839) bm!607393))

(assert (= (or b!6726836 b!6726839) bm!607392))

(assert (= (or b!6726838 bm!607393) bm!607396))

(assert (= (or b!6726838 bm!607392) bm!607395))

(assert (= (or b!6726834 bm!607395) bm!607394))

(assert (= (or b!6726834 b!6726838) bm!607397))

(declare-fun m!7486534 () Bool)

(assert (=> bm!607394 m!7486534))

(declare-fun m!7486536 () Bool)

(assert (=> b!6726832 m!7486536))

(declare-fun m!7486538 () Bool)

(assert (=> bm!607396 m!7486538))

(declare-fun m!7486540 () Bool)

(assert (=> bm!607397 m!7486540))

(declare-fun m!7486542 () Bool)

(assert (=> b!6726840 m!7486542))

(assert (=> bm!607318 d!2113742))

(declare-fun d!2113746 () Bool)

(declare-fun c!1247261 () Bool)

(assert (=> d!2113746 (= c!1247261 ((_ is Nil!65835) lt!2437232))))

(declare-fun e!4064151 () (InoxSet Context!11874))

(assert (=> d!2113746 (= (content!12775 lt!2437232) e!4064151)))

(declare-fun b!6726848 () Bool)

(assert (=> b!6726848 (= e!4064151 ((as const (Array Context!11874 Bool)) false))))

(declare-fun b!6726849 () Bool)

(assert (=> b!6726849 (= e!4064151 ((_ map or) (store ((as const (Array Context!11874 Bool)) false) (h!72283 lt!2437232) true) (content!12775 (t!379642 lt!2437232))))))

(assert (= (and d!2113746 c!1247261) b!6726848))

(assert (= (and d!2113746 (not c!1247261)) b!6726849))

(declare-fun m!7486546 () Bool)

(assert (=> b!6726849 m!7486546))

(declare-fun m!7486548 () Bool)

(assert (=> b!6726849 m!7486548))

(assert (=> b!6725963 d!2113746))

(declare-fun d!2113764 () Bool)

(assert (=> d!2113764 (= (Exists!3621 lambda!377386) (choose!50121 lambda!377386))))

(declare-fun bs!1789269 () Bool)

(assert (= bs!1789269 d!2113764))

(declare-fun m!7486550 () Bool)

(assert (=> bs!1789269 m!7486550))

(assert (=> d!2113510 d!2113764))

(declare-fun d!2113766 () Bool)

(assert (=> d!2113766 (= (Exists!3621 lambda!377387) (choose!50121 lambda!377387))))

(declare-fun bs!1789270 () Bool)

(assert (= bs!1789270 d!2113766))

(declare-fun m!7486552 () Bool)

(assert (=> bs!1789270 m!7486552))

(assert (=> d!2113510 d!2113766))

(declare-fun bs!1789281 () Bool)

(declare-fun d!2113768 () Bool)

(assert (= bs!1789281 (and d!2113768 d!2113510)))

(declare-fun lambda!377433 () Int)

(assert (=> bs!1789281 (= lambda!377433 lambda!377386)))

(assert (=> bs!1789281 (not (= lambda!377433 lambda!377387))))

(declare-fun bs!1789282 () Bool)

(assert (= bs!1789282 (and d!2113768 b!6725773)))

(assert (=> bs!1789282 (= lambda!377433 lambda!377318)))

(declare-fun bs!1789283 () Bool)

(assert (= bs!1789283 (and d!2113768 b!6726774)))

(assert (=> bs!1789283 (not (= lambda!377433 lambda!377426))))

(declare-fun bs!1789284 () Bool)

(assert (= bs!1789284 (and d!2113768 b!6726198)))

(assert (=> bs!1789284 (not (= lambda!377433 lambda!377381))))

(declare-fun bs!1789285 () Bool)

(assert (= bs!1789285 (and d!2113768 d!2113516)))

(assert (=> bs!1789285 (= (= r!7292 (Star!16553 (reg!16882 r!7292))) (= lambda!377433 lambda!377392))))

(declare-fun bs!1789286 () Bool)

(assert (= bs!1789286 (and d!2113768 b!6726765)))

(assert (=> bs!1789286 (not (= lambda!377433 lambda!377427))))

(declare-fun bs!1789287 () Bool)

(assert (= bs!1789287 (and d!2113768 d!2113520)))

(assert (=> bs!1789287 (= lambda!377433 lambda!377396)))

(assert (=> bs!1789285 (not (= lambda!377433 lambda!377393))))

(assert (=> bs!1789282 (not (= lambda!377433 lambda!377320))))

(assert (=> bs!1789282 (not (= lambda!377433 lambda!377319))))

(declare-fun bs!1789288 () Bool)

(assert (= bs!1789288 (and d!2113768 d!2113692)))

(assert (=> bs!1789288 (= lambda!377433 lambda!377423)))

(declare-fun bs!1789289 () Bool)

(assert (= bs!1789289 (and d!2113768 b!6726207)))

(assert (=> bs!1789289 (not (= lambda!377433 lambda!377380))))

(assert (=> d!2113768 true))

(assert (=> d!2113768 true))

(assert (=> d!2113768 true))

(declare-fun lambda!377434 () Int)

(assert (=> bs!1789281 (not (= lambda!377434 lambda!377386))))

(assert (=> bs!1789281 (= lambda!377434 lambda!377387)))

(declare-fun bs!1789290 () Bool)

(assert (= bs!1789290 d!2113768))

(assert (=> bs!1789290 (not (= lambda!377434 lambda!377433))))

(assert (=> bs!1789282 (not (= lambda!377434 lambda!377318))))

(assert (=> bs!1789283 (not (= lambda!377434 lambda!377426))))

(assert (=> bs!1789284 (= (and (= (reg!16882 r!7292) (regOne!33618 r!7292)) (= r!7292 (regTwo!33618 r!7292))) (= lambda!377434 lambda!377381))))

(assert (=> bs!1789285 (not (= lambda!377434 lambda!377392))))

(assert (=> bs!1789286 (= (and (= (reg!16882 r!7292) (regOne!33618 (regOne!33619 r!7292))) (= r!7292 (regTwo!33618 (regOne!33619 r!7292)))) (= lambda!377434 lambda!377427))))

(assert (=> bs!1789287 (not (= lambda!377434 lambda!377396))))

(assert (=> bs!1789285 (not (= lambda!377434 lambda!377393))))

(assert (=> bs!1789282 (= lambda!377434 lambda!377320)))

(assert (=> bs!1789282 (not (= lambda!377434 lambda!377319))))

(assert (=> bs!1789288 (not (= lambda!377434 lambda!377423))))

(assert (=> bs!1789289 (not (= lambda!377434 lambda!377380))))

(assert (=> d!2113768 true))

(assert (=> d!2113768 true))

(assert (=> d!2113768 true))

(assert (=> d!2113768 (= (Exists!3621 lambda!377433) (Exists!3621 lambda!377434))))

(assert (=> d!2113768 true))

(declare-fun _$90!2560 () Unit!159797)

(assert (=> d!2113768 (= (choose!50122 (reg!16882 r!7292) r!7292 s!2326) _$90!2560)))

(declare-fun m!7486646 () Bool)

(assert (=> bs!1789290 m!7486646))

(declare-fun m!7486648 () Bool)

(assert (=> bs!1789290 m!7486648))

(assert (=> d!2113510 d!2113768))

(assert (=> d!2113510 d!2113698))

(declare-fun b!6726951 () Bool)

(declare-fun res!2752292 () Bool)

(declare-fun e!4064216 () Bool)

(assert (=> b!6726951 (=> res!2752292 e!4064216)))

(assert (=> b!6726951 (= res!2752292 (not ((_ is Concat!25398) (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292))))))))

(declare-fun e!4064220 () Bool)

(assert (=> b!6726951 (= e!4064220 e!4064216)))

(declare-fun b!6726952 () Bool)

(declare-fun e!4064219 () Bool)

(assert (=> b!6726952 (= e!4064219 e!4064220)))

(declare-fun c!1247292 () Bool)

(assert (=> b!6726952 (= c!1247292 ((_ is Union!16553) (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))

(declare-fun b!6726953 () Bool)

(declare-fun e!4064215 () Bool)

(assert (=> b!6726953 (= e!4064219 e!4064215)))

(declare-fun res!2752291 () Bool)

(assert (=> b!6726953 (= res!2752291 (not (nullable!6540 (reg!16882 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))))

(assert (=> b!6726953 (=> (not res!2752291) (not e!4064215))))

(declare-fun bm!607427 () Bool)

(declare-fun call!607433 () Bool)

(assert (=> bm!607427 (= call!607433 (validRegex!8289 (ite c!1247292 (regTwo!33619 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))) (regTwo!33618 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))))

(declare-fun b!6726954 () Bool)

(declare-fun call!607432 () Bool)

(assert (=> b!6726954 (= e!4064215 call!607432)))

(declare-fun c!1247293 () Bool)

(declare-fun bm!607428 () Bool)

(assert (=> bm!607428 (= call!607432 (validRegex!8289 (ite c!1247293 (reg!16882 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))) (ite c!1247292 (regOne!33619 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))) (regOne!33618 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292))))))))))

(declare-fun b!6726955 () Bool)

(declare-fun e!4064218 () Bool)

(assert (=> b!6726955 (= e!4064218 call!607433)))

(declare-fun b!6726956 () Bool)

(declare-fun res!2752290 () Bool)

(assert (=> b!6726956 (=> (not res!2752290) (not e!4064218))))

(declare-fun call!607434 () Bool)

(assert (=> b!6726956 (= res!2752290 call!607434)))

(assert (=> b!6726956 (= e!4064220 e!4064218)))

(declare-fun b!6726957 () Bool)

(declare-fun e!4064217 () Bool)

(assert (=> b!6726957 (= e!4064217 e!4064219)))

(assert (=> b!6726957 (= c!1247293 ((_ is Star!16553) (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))

(declare-fun b!6726958 () Bool)

(declare-fun e!4064221 () Bool)

(assert (=> b!6726958 (= e!4064221 call!607433)))

(declare-fun d!2113796 () Bool)

(declare-fun res!2752294 () Bool)

(assert (=> d!2113796 (=> res!2752294 e!4064217)))

(assert (=> d!2113796 (= res!2752294 ((_ is ElementMatch!16553) (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))

(assert (=> d!2113796 (= (validRegex!8289 (ite c!1247142 (reg!16882 r!7292) (ite c!1247141 (regOne!33619 r!7292) (regOne!33618 r!7292)))) e!4064217)))

(declare-fun b!6726959 () Bool)

(assert (=> b!6726959 (= e!4064216 e!4064221)))

(declare-fun res!2752293 () Bool)

(assert (=> b!6726959 (=> (not res!2752293) (not e!4064221))))

(assert (=> b!6726959 (= res!2752293 call!607434)))

(declare-fun bm!607429 () Bool)

(assert (=> bm!607429 (= call!607434 call!607432)))

(assert (= (and d!2113796 (not res!2752294)) b!6726957))

(assert (= (and b!6726957 c!1247293) b!6726953))

(assert (= (and b!6726957 (not c!1247293)) b!6726952))

(assert (= (and b!6726953 res!2752291) b!6726954))

(assert (= (and b!6726952 c!1247292) b!6726956))

(assert (= (and b!6726952 (not c!1247292)) b!6726951))

(assert (= (and b!6726956 res!2752290) b!6726955))

(assert (= (and b!6726951 (not res!2752292)) b!6726959))

(assert (= (and b!6726959 res!2752293) b!6726958))

(assert (= (or b!6726955 b!6726958) bm!607427))

(assert (= (or b!6726956 b!6726959) bm!607429))

(assert (= (or b!6726954 bm!607429) bm!607428))

(declare-fun m!7486652 () Bool)

(assert (=> b!6726953 m!7486652))

(declare-fun m!7486654 () Bool)

(assert (=> bm!607427 m!7486654))

(declare-fun m!7486656 () Bool)

(assert (=> bm!607428 m!7486656))

(assert (=> bm!607302 d!2113796))

(declare-fun d!2113804 () Bool)

(declare-fun res!2752297 () Bool)

(declare-fun e!4064228 () Bool)

(assert (=> d!2113804 (=> res!2752297 e!4064228)))

(assert (=> d!2113804 (= res!2752297 ((_ is Nil!65834) (exprs!6437 (h!72283 zl!343))))))

(assert (=> d!2113804 (= (forall!15753 (exprs!6437 (h!72283 zl!343)) lambda!377346) e!4064228)))

(declare-fun b!6726970 () Bool)

(declare-fun e!4064229 () Bool)

(assert (=> b!6726970 (= e!4064228 e!4064229)))

(declare-fun res!2752298 () Bool)

(assert (=> b!6726970 (=> (not res!2752298) (not e!4064229))))

(assert (=> b!6726970 (= res!2752298 (dynLambda!26258 lambda!377346 (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6726971 () Bool)

(assert (=> b!6726971 (= e!4064229 (forall!15753 (t!379641 (exprs!6437 (h!72283 zl!343))) lambda!377346))))

(assert (= (and d!2113804 (not res!2752297)) b!6726970))

(assert (= (and b!6726970 res!2752298) b!6726971))

(declare-fun b_lambda!253247 () Bool)

(assert (=> (not b_lambda!253247) (not b!6726970)))

(declare-fun m!7486658 () Bool)

(assert (=> b!6726970 m!7486658))

(declare-fun m!7486660 () Bool)

(assert (=> b!6726971 m!7486660))

(assert (=> d!2113448 d!2113804))

(declare-fun b!6726972 () Bool)

(declare-fun res!2752301 () Bool)

(declare-fun e!4064231 () Bool)

(assert (=> b!6726972 (=> res!2752301 e!4064231)))

(assert (=> b!6726972 (= res!2752301 (not ((_ is Concat!25398) lt!2437284)))))

(declare-fun e!4064235 () Bool)

(assert (=> b!6726972 (= e!4064235 e!4064231)))

(declare-fun b!6726973 () Bool)

(declare-fun e!4064234 () Bool)

(assert (=> b!6726973 (= e!4064234 e!4064235)))

(declare-fun c!1247298 () Bool)

(assert (=> b!6726973 (= c!1247298 ((_ is Union!16553) lt!2437284))))

(declare-fun b!6726974 () Bool)

(declare-fun e!4064230 () Bool)

(assert (=> b!6726974 (= e!4064234 e!4064230)))

(declare-fun res!2752300 () Bool)

(assert (=> b!6726974 (= res!2752300 (not (nullable!6540 (reg!16882 lt!2437284))))))

(assert (=> b!6726974 (=> (not res!2752300) (not e!4064230))))

(declare-fun bm!607430 () Bool)

(declare-fun call!607436 () Bool)

(assert (=> bm!607430 (= call!607436 (validRegex!8289 (ite c!1247298 (regTwo!33619 lt!2437284) (regTwo!33618 lt!2437284))))))

(declare-fun b!6726975 () Bool)

(declare-fun call!607435 () Bool)

(assert (=> b!6726975 (= e!4064230 call!607435)))

(declare-fun bm!607431 () Bool)

(declare-fun c!1247299 () Bool)

(assert (=> bm!607431 (= call!607435 (validRegex!8289 (ite c!1247299 (reg!16882 lt!2437284) (ite c!1247298 (regOne!33619 lt!2437284) (regOne!33618 lt!2437284)))))))

(declare-fun b!6726976 () Bool)

(declare-fun e!4064233 () Bool)

(assert (=> b!6726976 (= e!4064233 call!607436)))

(declare-fun b!6726977 () Bool)

(declare-fun res!2752299 () Bool)

(assert (=> b!6726977 (=> (not res!2752299) (not e!4064233))))

(declare-fun call!607437 () Bool)

(assert (=> b!6726977 (= res!2752299 call!607437)))

(assert (=> b!6726977 (= e!4064235 e!4064233)))

(declare-fun b!6726978 () Bool)

(declare-fun e!4064232 () Bool)

(assert (=> b!6726978 (= e!4064232 e!4064234)))

(assert (=> b!6726978 (= c!1247299 ((_ is Star!16553) lt!2437284))))

(declare-fun b!6726979 () Bool)

(declare-fun e!4064236 () Bool)

(assert (=> b!6726979 (= e!4064236 call!607436)))

(declare-fun d!2113806 () Bool)

(declare-fun res!2752303 () Bool)

(assert (=> d!2113806 (=> res!2752303 e!4064232)))

(assert (=> d!2113806 (= res!2752303 ((_ is ElementMatch!16553) lt!2437284))))

(assert (=> d!2113806 (= (validRegex!8289 lt!2437284) e!4064232)))

(declare-fun b!6726980 () Bool)

(assert (=> b!6726980 (= e!4064231 e!4064236)))

(declare-fun res!2752302 () Bool)

(assert (=> b!6726980 (=> (not res!2752302) (not e!4064236))))

(assert (=> b!6726980 (= res!2752302 call!607437)))

(declare-fun bm!607432 () Bool)

(assert (=> bm!607432 (= call!607437 call!607435)))

(assert (= (and d!2113806 (not res!2752303)) b!6726978))

(assert (= (and b!6726978 c!1247299) b!6726974))

(assert (= (and b!6726978 (not c!1247299)) b!6726973))

(assert (= (and b!6726974 res!2752300) b!6726975))

(assert (= (and b!6726973 c!1247298) b!6726977))

(assert (= (and b!6726973 (not c!1247298)) b!6726972))

(assert (= (and b!6726977 res!2752299) b!6726976))

(assert (= (and b!6726972 (not res!2752301)) b!6726980))

(assert (= (and b!6726980 res!2752302) b!6726979))

(assert (= (or b!6726976 b!6726979) bm!607430))

(assert (= (or b!6726977 b!6726980) bm!607432))

(assert (= (or b!6726975 bm!607432) bm!607431))

(declare-fun m!7486662 () Bool)

(assert (=> b!6726974 m!7486662))

(declare-fun m!7486664 () Bool)

(assert (=> bm!607430 m!7486664))

(declare-fun m!7486666 () Bool)

(assert (=> bm!607431 m!7486666))

(assert (=> d!2113522 d!2113806))

(assert (=> d!2113522 d!2113464))

(assert (=> d!2113522 d!2113470))

(assert (=> bs!1789108 d!2113458))

(declare-fun d!2113808 () Bool)

(assert (=> d!2113808 (= (isEmpty!38165 (exprs!6437 (h!72283 zl!343))) ((_ is Nil!65834) (exprs!6437 (h!72283 zl!343))))))

(assert (=> b!6725894 d!2113808))

(declare-fun bs!1789311 () Bool)

(declare-fun d!2113810 () Bool)

(assert (= bs!1789311 (and d!2113810 d!2113706)))

(declare-fun lambda!377437 () Int)

(assert (=> bs!1789311 (= lambda!377437 lambda!377425)))

(declare-fun bs!1789312 () Bool)

(assert (= bs!1789312 (and d!2113810 d!2113420)))

(assert (=> bs!1789312 (= lambda!377437 lambda!377333)))

(declare-fun bs!1789313 () Bool)

(assert (= bs!1789313 (and d!2113810 d!2113448)))

(assert (=> bs!1789313 (= lambda!377437 lambda!377346)))

(declare-fun bs!1789314 () Bool)

(assert (= bs!1789314 (and d!2113810 d!2113618)))

(assert (=> bs!1789314 (= lambda!377437 lambda!377410)))

(declare-fun bs!1789315 () Bool)

(assert (= bs!1789315 (and d!2113810 d!2113450)))

(assert (=> bs!1789315 (= lambda!377437 lambda!377347)))

(declare-fun bs!1789316 () Bool)

(assert (= bs!1789316 (and d!2113810 d!2113464)))

(assert (=> bs!1789316 (= lambda!377437 lambda!377359)))

(declare-fun bs!1789317 () Bool)

(assert (= bs!1789317 (and d!2113810 d!2113636)))

(assert (=> bs!1789317 (= lambda!377437 lambda!377416)))

(declare-fun bs!1789318 () Bool)

(assert (= bs!1789318 (and d!2113810 d!2113470)))

(assert (=> bs!1789318 (= lambda!377437 lambda!377362)))

(declare-fun bs!1789319 () Bool)

(assert (= bs!1789319 (and d!2113810 d!2113524)))

(assert (=> bs!1789319 (= lambda!377437 lambda!377397)))

(declare-fun bs!1789320 () Bool)

(assert (= bs!1789320 (and d!2113810 d!2113624)))

(assert (=> bs!1789320 (= lambda!377437 lambda!377413)))

(declare-fun b!6726981 () Bool)

(declare-fun e!4064240 () Regex!16553)

(assert (=> b!6726981 (= e!4064240 (h!72282 (t!379641 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6726982 () Bool)

(declare-fun e!4064241 () Regex!16553)

(assert (=> b!6726982 (= e!4064241 EmptyExpr!16553)))

(declare-fun b!6726983 () Bool)

(declare-fun e!4064239 () Bool)

(declare-fun e!4064237 () Bool)

(assert (=> b!6726983 (= e!4064239 e!4064237)))

(declare-fun c!1247302 () Bool)

(assert (=> b!6726983 (= c!1247302 (isEmpty!38165 (tail!12618 (t!379641 (exprs!6437 (h!72283 zl!343))))))))

(declare-fun e!4064238 () Bool)

(assert (=> d!2113810 e!4064238))

(declare-fun res!2752305 () Bool)

(assert (=> d!2113810 (=> (not res!2752305) (not e!4064238))))

(declare-fun lt!2437302 () Regex!16553)

(assert (=> d!2113810 (= res!2752305 (validRegex!8289 lt!2437302))))

(assert (=> d!2113810 (= lt!2437302 e!4064240)))

(declare-fun c!1247301 () Bool)

(declare-fun e!4064242 () Bool)

(assert (=> d!2113810 (= c!1247301 e!4064242)))

(declare-fun res!2752304 () Bool)

(assert (=> d!2113810 (=> (not res!2752304) (not e!4064242))))

(assert (=> d!2113810 (= res!2752304 ((_ is Cons!65834) (t!379641 (exprs!6437 (h!72283 zl!343)))))))

(assert (=> d!2113810 (forall!15753 (t!379641 (exprs!6437 (h!72283 zl!343))) lambda!377437)))

(assert (=> d!2113810 (= (generalisedConcat!2150 (t!379641 (exprs!6437 (h!72283 zl!343)))) lt!2437302)))

(declare-fun b!6726984 () Bool)

(assert (=> b!6726984 (= e!4064237 (isConcat!1442 lt!2437302))))

(declare-fun b!6726985 () Bool)

(assert (=> b!6726985 (= e!4064241 (Concat!25398 (h!72282 (t!379641 (exprs!6437 (h!72283 zl!343)))) (generalisedConcat!2150 (t!379641 (t!379641 (exprs!6437 (h!72283 zl!343)))))))))

(declare-fun b!6726986 () Bool)

(assert (=> b!6726986 (= e!4064240 e!4064241)))

(declare-fun c!1247303 () Bool)

(assert (=> b!6726986 (= c!1247303 ((_ is Cons!65834) (t!379641 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6726987 () Bool)

(assert (=> b!6726987 (= e!4064238 e!4064239)))

(declare-fun c!1247300 () Bool)

(assert (=> b!6726987 (= c!1247300 (isEmpty!38165 (t!379641 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6726988 () Bool)

(assert (=> b!6726988 (= e!4064239 (isEmptyExpr!1919 lt!2437302))))

(declare-fun b!6726989 () Bool)

(assert (=> b!6726989 (= e!4064237 (= lt!2437302 (head!13533 (t!379641 (exprs!6437 (h!72283 zl!343))))))))

(declare-fun b!6726990 () Bool)

(assert (=> b!6726990 (= e!4064242 (isEmpty!38165 (t!379641 (t!379641 (exprs!6437 (h!72283 zl!343))))))))

(assert (= (and d!2113810 res!2752304) b!6726990))

(assert (= (and d!2113810 c!1247301) b!6726981))

(assert (= (and d!2113810 (not c!1247301)) b!6726986))

(assert (= (and b!6726986 c!1247303) b!6726985))

(assert (= (and b!6726986 (not c!1247303)) b!6726982))

(assert (= (and d!2113810 res!2752305) b!6726987))

(assert (= (and b!6726987 c!1247300) b!6726988))

(assert (= (and b!6726987 (not c!1247300)) b!6726983))

(assert (= (and b!6726983 c!1247302) b!6726989))

(assert (= (and b!6726983 (not c!1247302)) b!6726984))

(declare-fun m!7486700 () Bool)

(assert (=> b!6726990 m!7486700))

(declare-fun m!7486702 () Bool)

(assert (=> b!6726989 m!7486702))

(declare-fun m!7486704 () Bool)

(assert (=> b!6726984 m!7486704))

(declare-fun m!7486706 () Bool)

(assert (=> d!2113810 m!7486706))

(declare-fun m!7486708 () Bool)

(assert (=> d!2113810 m!7486708))

(declare-fun m!7486710 () Bool)

(assert (=> b!6726985 m!7486710))

(assert (=> b!6726987 m!7485888))

(declare-fun m!7486712 () Bool)

(assert (=> b!6726988 m!7486712))

(declare-fun m!7486714 () Bool)

(assert (=> b!6726983 m!7486714))

(assert (=> b!6726983 m!7486714))

(declare-fun m!7486716 () Bool)

(assert (=> b!6726983 m!7486716))

(assert (=> b!6725892 d!2113810))

(assert (=> d!2113460 d!2113456))

(declare-fun d!2113816 () Bool)

(assert (=> d!2113816 (= (flatMap!2034 lt!2437189 lambda!377321) (dynLambda!26256 lambda!377321 lt!2437193))))

(assert (=> d!2113816 true))

(declare-fun _$13!4023 () Unit!159797)

(assert (=> d!2113816 (= (choose!50117 lt!2437189 lt!2437193 lambda!377321) _$13!4023)))

(declare-fun b_lambda!253249 () Bool)

(assert (=> (not b_lambda!253249) (not d!2113816)))

(declare-fun bs!1789321 () Bool)

(assert (= bs!1789321 d!2113816))

(assert (=> bs!1789321 m!7485808))

(assert (=> bs!1789321 m!7485966))

(assert (=> d!2113460 d!2113816))

(declare-fun d!2113820 () Bool)

(assert (=> d!2113820 (= (head!13533 (exprs!6437 (h!72283 zl!343))) (h!72282 (exprs!6437 (h!72283 zl!343))))))

(assert (=> b!6725896 d!2113820))

(declare-fun d!2113822 () Bool)

(assert (=> d!2113822 (= (Exists!3621 (ite c!1247121 lambda!377380 lambda!377381)) (choose!50121 (ite c!1247121 lambda!377380 lambda!377381)))))

(declare-fun bs!1789322 () Bool)

(assert (= bs!1789322 d!2113822))

(declare-fun m!7486732 () Bool)

(assert (=> bs!1789322 m!7486732))

(assert (=> bm!607291 d!2113822))

(declare-fun d!2113824 () Bool)

(declare-fun e!4064257 () Bool)

(assert (=> d!2113824 e!4064257))

(declare-fun res!2752319 () Bool)

(assert (=> d!2113824 (=> (not res!2752319) (not e!4064257))))

(declare-fun lt!2437313 () List!65960)

(declare-fun content!12777 (List!65960) (InoxSet C!33376))

(assert (=> d!2113824 (= res!2752319 (= (content!12777 lt!2437313) ((_ map or) (content!12777 (_1!36831 (get!22901 lt!2437277))) (content!12777 (_2!36831 (get!22901 lt!2437277))))))))

(declare-fun e!4064256 () List!65960)

(assert (=> d!2113824 (= lt!2437313 e!4064256)))

(declare-fun c!1247310 () Bool)

(assert (=> d!2113824 (= c!1247310 ((_ is Nil!65836) (_1!36831 (get!22901 lt!2437277))))))

(assert (=> d!2113824 (= (++!14709 (_1!36831 (get!22901 lt!2437277)) (_2!36831 (get!22901 lt!2437277))) lt!2437313)))

(declare-fun b!6727017 () Bool)

(assert (=> b!6727017 (= e!4064256 (Cons!65836 (h!72284 (_1!36831 (get!22901 lt!2437277))) (++!14709 (t!379643 (_1!36831 (get!22901 lt!2437277))) (_2!36831 (get!22901 lt!2437277)))))))

(declare-fun b!6727019 () Bool)

(assert (=> b!6727019 (= e!4064257 (or (not (= (_2!36831 (get!22901 lt!2437277)) Nil!65836)) (= lt!2437313 (_1!36831 (get!22901 lt!2437277)))))))

(declare-fun b!6727018 () Bool)

(declare-fun res!2752320 () Bool)

(assert (=> b!6727018 (=> (not res!2752320) (not e!4064257))))

(declare-fun size!40603 (List!65960) Int)

(assert (=> b!6727018 (= res!2752320 (= (size!40603 lt!2437313) (+ (size!40603 (_1!36831 (get!22901 lt!2437277))) (size!40603 (_2!36831 (get!22901 lt!2437277))))))))

(declare-fun b!6727016 () Bool)

(assert (=> b!6727016 (= e!4064256 (_2!36831 (get!22901 lt!2437277)))))

(assert (= (and d!2113824 c!1247310) b!6727016))

(assert (= (and d!2113824 (not c!1247310)) b!6727017))

(assert (= (and d!2113824 res!2752319) b!6727018))

(assert (= (and b!6727018 res!2752320) b!6727019))

(declare-fun m!7486750 () Bool)

(assert (=> d!2113824 m!7486750))

(declare-fun m!7486754 () Bool)

(assert (=> d!2113824 m!7486754))

(declare-fun m!7486756 () Bool)

(assert (=> d!2113824 m!7486756))

(declare-fun m!7486758 () Bool)

(assert (=> b!6727017 m!7486758))

(declare-fun m!7486762 () Bool)

(assert (=> b!6727018 m!7486762))

(declare-fun m!7486764 () Bool)

(assert (=> b!6727018 m!7486764))

(declare-fun m!7486768 () Bool)

(assert (=> b!6727018 m!7486768))

(assert (=> b!6726337 d!2113824))

(assert (=> b!6726337 d!2113584))

(declare-fun d!2113828 () Bool)

(assert (=> d!2113828 (= (Exists!3621 lambda!377392) (choose!50121 lambda!377392))))

(declare-fun bs!1789324 () Bool)

(assert (= bs!1789324 d!2113828))

(declare-fun m!7486774 () Bool)

(assert (=> bs!1789324 m!7486774))

(assert (=> d!2113516 d!2113828))

(declare-fun d!2113832 () Bool)

(assert (=> d!2113832 (= (Exists!3621 lambda!377393) (choose!50121 lambda!377393))))

(declare-fun bs!1789325 () Bool)

(assert (= bs!1789325 d!2113832))

(declare-fun m!7486776 () Bool)

(assert (=> bs!1789325 m!7486776))

(assert (=> d!2113516 d!2113832))

(declare-fun bs!1789332 () Bool)

(declare-fun d!2113834 () Bool)

(assert (= bs!1789332 (and d!2113834 d!2113510)))

(declare-fun lambda!377442 () Int)

(assert (=> bs!1789332 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377442 lambda!377386))))

(assert (=> bs!1789332 (not (= lambda!377442 lambda!377387))))

(declare-fun bs!1789333 () Bool)

(assert (= bs!1789333 (and d!2113834 d!2113768)))

(assert (=> bs!1789333 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377442 lambda!377433))))

(declare-fun bs!1789334 () Bool)

(assert (= bs!1789334 (and d!2113834 b!6725773)))

(assert (=> bs!1789334 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377442 lambda!377318))))

(declare-fun bs!1789335 () Bool)

(assert (= bs!1789335 (and d!2113834 b!6726774)))

(assert (=> bs!1789335 (not (= lambda!377442 lambda!377426))))

(declare-fun bs!1789336 () Bool)

(assert (= bs!1789336 (and d!2113834 d!2113516)))

(assert (=> bs!1789336 (= lambda!377442 lambda!377392)))

(declare-fun bs!1789337 () Bool)

(assert (= bs!1789337 (and d!2113834 b!6726765)))

(assert (=> bs!1789337 (not (= lambda!377442 lambda!377427))))

(declare-fun bs!1789338 () Bool)

(assert (= bs!1789338 (and d!2113834 d!2113520)))

(assert (=> bs!1789338 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377442 lambda!377396))))

(assert (=> bs!1789336 (not (= lambda!377442 lambda!377393))))

(declare-fun bs!1789339 () Bool)

(assert (= bs!1789339 (and d!2113834 b!6726198)))

(assert (=> bs!1789339 (not (= lambda!377442 lambda!377381))))

(assert (=> bs!1789333 (not (= lambda!377442 lambda!377434))))

(assert (=> bs!1789334 (not (= lambda!377442 lambda!377320))))

(assert (=> bs!1789334 (not (= lambda!377442 lambda!377319))))

(declare-fun bs!1789340 () Bool)

(assert (= bs!1789340 (and d!2113834 d!2113692)))

(assert (=> bs!1789340 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377442 lambda!377423))))

(declare-fun bs!1789341 () Bool)

(assert (= bs!1789341 (and d!2113834 b!6726207)))

(assert (=> bs!1789341 (not (= lambda!377442 lambda!377380))))

(assert (=> d!2113834 true))

(assert (=> d!2113834 true))

(declare-fun lambda!377443 () Int)

(assert (=> bs!1789332 (not (= lambda!377443 lambda!377386))))

(assert (=> bs!1789332 (not (= lambda!377443 lambda!377387))))

(assert (=> bs!1789333 (not (= lambda!377443 lambda!377433))))

(assert (=> bs!1789334 (not (= lambda!377443 lambda!377318))))

(assert (=> bs!1789335 (= (and (= (reg!16882 r!7292) (reg!16882 (regOne!33619 r!7292))) (= (Star!16553 (reg!16882 r!7292)) (regOne!33619 r!7292))) (= lambda!377443 lambda!377426))))

(assert (=> bs!1789336 (not (= lambda!377443 lambda!377392))))

(assert (=> bs!1789337 (not (= lambda!377443 lambda!377427))))

(declare-fun bs!1789342 () Bool)

(assert (= bs!1789342 d!2113834))

(assert (=> bs!1789342 (not (= lambda!377443 lambda!377442))))

(assert (=> bs!1789338 (not (= lambda!377443 lambda!377396))))

(assert (=> bs!1789336 (= lambda!377443 lambda!377393)))

(assert (=> bs!1789339 (not (= lambda!377443 lambda!377381))))

(assert (=> bs!1789333 (not (= lambda!377443 lambda!377434))))

(assert (=> bs!1789334 (not (= lambda!377443 lambda!377320))))

(assert (=> bs!1789334 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377443 lambda!377319))))

(assert (=> bs!1789340 (not (= lambda!377443 lambda!377423))))

(assert (=> bs!1789341 (= (= (Star!16553 (reg!16882 r!7292)) r!7292) (= lambda!377443 lambda!377380))))

(assert (=> d!2113834 true))

(assert (=> d!2113834 true))

(assert (=> d!2113834 (= (Exists!3621 lambda!377442) (Exists!3621 lambda!377443))))

(assert (=> d!2113834 true))

(declare-fun _$91!680 () Unit!159797)

(assert (=> d!2113834 (= (choose!50123 (reg!16882 r!7292) s!2326) _$91!680)))

(declare-fun m!7486796 () Bool)

(assert (=> bs!1789342 m!7486796))

(declare-fun m!7486798 () Bool)

(assert (=> bs!1789342 m!7486798))

(assert (=> d!2113516 d!2113834))

(assert (=> d!2113516 d!2113698))

(assert (=> b!6726292 d!2113640))

(assert (=> b!6726292 d!2113642))

(assert (=> d!2113518 d!2113614))

(declare-fun b!6727148 () Bool)

(declare-fun e!4064305 () Bool)

(assert (=> b!6727148 (= e!4064305 (matchR!8736 (derivativeStep!5225 (reg!16882 r!7292) (head!13534 Nil!65836)) (tail!12619 Nil!65836)))))

(declare-fun b!6727149 () Bool)

(declare-fun e!4064299 () Bool)

(declare-fun lt!2437314 () Bool)

(assert (=> b!6727149 (= e!4064299 (not lt!2437314))))

(declare-fun b!6727150 () Bool)

(declare-fun e!4064300 () Bool)

(assert (=> b!6727150 (= e!4064300 (not (= (head!13534 Nil!65836) (c!1246985 (reg!16882 r!7292)))))))

(declare-fun b!6727151 () Bool)

(declare-fun e!4064302 () Bool)

(assert (=> b!6727151 (= e!4064302 e!4064299)))

(declare-fun c!1247312 () Bool)

(assert (=> b!6727151 (= c!1247312 ((_ is EmptyLang!16553) (reg!16882 r!7292)))))

(declare-fun b!6727152 () Bool)

(declare-fun e!4064303 () Bool)

(declare-fun e!4064301 () Bool)

(assert (=> b!6727152 (= e!4064303 e!4064301)))

(declare-fun res!2752333 () Bool)

(assert (=> b!6727152 (=> (not res!2752333) (not e!4064301))))

(assert (=> b!6727152 (= res!2752333 (not lt!2437314))))

(declare-fun b!6727153 () Bool)

(declare-fun res!2752338 () Bool)

(assert (=> b!6727153 (=> res!2752338 e!4064300)))

(assert (=> b!6727153 (= res!2752338 (not (isEmpty!38162 (tail!12619 Nil!65836))))))

(declare-fun b!6727154 () Bool)

(declare-fun res!2752334 () Bool)

(declare-fun e!4064304 () Bool)

(assert (=> b!6727154 (=> (not res!2752334) (not e!4064304))))

(assert (=> b!6727154 (= res!2752334 (isEmpty!38162 (tail!12619 Nil!65836)))))

(declare-fun b!6727155 () Bool)

(declare-fun res!2752340 () Bool)

(assert (=> b!6727155 (=> (not res!2752340) (not e!4064304))))

(declare-fun call!607438 () Bool)

(assert (=> b!6727155 (= res!2752340 (not call!607438))))

(declare-fun b!6727156 () Bool)

(assert (=> b!6727156 (= e!4064304 (= (head!13534 Nil!65836) (c!1246985 (reg!16882 r!7292))))))

(declare-fun d!2113848 () Bool)

(assert (=> d!2113848 e!4064302))

(declare-fun c!1247311 () Bool)

(assert (=> d!2113848 (= c!1247311 ((_ is EmptyExpr!16553) (reg!16882 r!7292)))))

(assert (=> d!2113848 (= lt!2437314 e!4064305)))

(declare-fun c!1247313 () Bool)

(assert (=> d!2113848 (= c!1247313 (isEmpty!38162 Nil!65836))))

(assert (=> d!2113848 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113848 (= (matchR!8736 (reg!16882 r!7292) Nil!65836) lt!2437314)))

(declare-fun bm!607433 () Bool)

(assert (=> bm!607433 (= call!607438 (isEmpty!38162 Nil!65836))))

(declare-fun b!6727157 () Bool)

(assert (=> b!6727157 (= e!4064301 e!4064300)))

(declare-fun res!2752336 () Bool)

(assert (=> b!6727157 (=> res!2752336 e!4064300)))

(assert (=> b!6727157 (= res!2752336 call!607438)))

(declare-fun b!6727158 () Bool)

(declare-fun res!2752335 () Bool)

(assert (=> b!6727158 (=> res!2752335 e!4064303)))

(assert (=> b!6727158 (= res!2752335 (not ((_ is ElementMatch!16553) (reg!16882 r!7292))))))

(assert (=> b!6727158 (= e!4064299 e!4064303)))

(declare-fun b!6727159 () Bool)

(declare-fun res!2752339 () Bool)

(assert (=> b!6727159 (=> res!2752339 e!4064303)))

(assert (=> b!6727159 (= res!2752339 e!4064304)))

(declare-fun res!2752337 () Bool)

(assert (=> b!6727159 (=> (not res!2752337) (not e!4064304))))

(assert (=> b!6727159 (= res!2752337 lt!2437314)))

(declare-fun b!6727160 () Bool)

(assert (=> b!6727160 (= e!4064305 (nullable!6540 (reg!16882 r!7292)))))

(declare-fun b!6727161 () Bool)

(assert (=> b!6727161 (= e!4064302 (= lt!2437314 call!607438))))

(assert (= (and d!2113848 c!1247313) b!6727160))

(assert (= (and d!2113848 (not c!1247313)) b!6727148))

(assert (= (and d!2113848 c!1247311) b!6727161))

(assert (= (and d!2113848 (not c!1247311)) b!6727151))

(assert (= (and b!6727151 c!1247312) b!6727149))

(assert (= (and b!6727151 (not c!1247312)) b!6727158))

(assert (= (and b!6727158 (not res!2752335)) b!6727159))

(assert (= (and b!6727159 res!2752337) b!6727155))

(assert (= (and b!6727155 res!2752340) b!6727154))

(assert (= (and b!6727154 res!2752334) b!6727156))

(assert (= (and b!6727159 (not res!2752339)) b!6727152))

(assert (= (and b!6727152 res!2752333) b!6727157))

(assert (= (and b!6727157 (not res!2752336)) b!6727153))

(assert (= (and b!6727153 (not res!2752338)) b!6727150))

(assert (= (or b!6727161 b!6727157 b!6727155) bm!607433))

(declare-fun m!7486800 () Bool)

(assert (=> b!6727148 m!7486800))

(assert (=> b!6727148 m!7486800))

(declare-fun m!7486802 () Bool)

(assert (=> b!6727148 m!7486802))

(declare-fun m!7486804 () Bool)

(assert (=> b!6727148 m!7486804))

(assert (=> b!6727148 m!7486802))

(assert (=> b!6727148 m!7486804))

(declare-fun m!7486806 () Bool)

(assert (=> b!6727148 m!7486806))

(assert (=> b!6727153 m!7486804))

(assert (=> b!6727153 m!7486804))

(declare-fun m!7486808 () Bool)

(assert (=> b!6727153 m!7486808))

(assert (=> b!6727154 m!7486804))

(assert (=> b!6727154 m!7486804))

(assert (=> b!6727154 m!7486808))

(declare-fun m!7486810 () Bool)

(assert (=> bm!607433 m!7486810))

(assert (=> d!2113848 m!7486810))

(assert (=> d!2113848 m!7486128))

(assert (=> b!6727160 m!7486166))

(assert (=> b!6727156 m!7486800))

(assert (=> b!6727150 m!7486800))

(assert (=> d!2113518 d!2113848))

(assert (=> d!2113518 d!2113698))

(assert (=> bm!607290 d!2113512))

(declare-fun d!2113850 () Bool)

(declare-fun res!2752341 () Bool)

(declare-fun e!4064306 () Bool)

(assert (=> d!2113850 (=> res!2752341 e!4064306)))

(assert (=> d!2113850 (= res!2752341 ((_ is Nil!65834) lt!2437241))))

(assert (=> d!2113850 (= (forall!15753 lt!2437241 lambda!377362) e!4064306)))

(declare-fun b!6727162 () Bool)

(declare-fun e!4064307 () Bool)

(assert (=> b!6727162 (= e!4064306 e!4064307)))

(declare-fun res!2752342 () Bool)

(assert (=> b!6727162 (=> (not res!2752342) (not e!4064307))))

(assert (=> b!6727162 (= res!2752342 (dynLambda!26258 lambda!377362 (h!72282 lt!2437241)))))

(declare-fun b!6727163 () Bool)

(assert (=> b!6727163 (= e!4064307 (forall!15753 (t!379641 lt!2437241) lambda!377362))))

(assert (= (and d!2113850 (not res!2752341)) b!6727162))

(assert (= (and b!6727162 res!2752342) b!6727163))

(declare-fun b_lambda!253269 () Bool)

(assert (=> (not b_lambda!253269) (not b!6727162)))

(declare-fun m!7486812 () Bool)

(assert (=> b!6727162 m!7486812))

(declare-fun m!7486814 () Bool)

(assert (=> b!6727163 m!7486814))

(assert (=> d!2113470 d!2113850))

(declare-fun d!2113852 () Bool)

(declare-fun res!2752343 () Bool)

(declare-fun e!4064308 () Bool)

(assert (=> d!2113852 (=> res!2752343 e!4064308)))

(assert (=> d!2113852 (= res!2752343 ((_ is Nil!65834) (exprs!6437 setElem!45855)))))

(assert (=> d!2113852 (= (forall!15753 (exprs!6437 setElem!45855) lambda!377397) e!4064308)))

(declare-fun b!6727164 () Bool)

(declare-fun e!4064309 () Bool)

(assert (=> b!6727164 (= e!4064308 e!4064309)))

(declare-fun res!2752344 () Bool)

(assert (=> b!6727164 (=> (not res!2752344) (not e!4064309))))

(assert (=> b!6727164 (= res!2752344 (dynLambda!26258 lambda!377397 (h!72282 (exprs!6437 setElem!45855))))))

(declare-fun b!6727165 () Bool)

(assert (=> b!6727165 (= e!4064309 (forall!15753 (t!379641 (exprs!6437 setElem!45855)) lambda!377397))))

(assert (= (and d!2113852 (not res!2752343)) b!6727164))

(assert (= (and b!6727164 res!2752344) b!6727165))

(declare-fun b_lambda!253271 () Bool)

(assert (=> (not b_lambda!253271) (not b!6727164)))

(declare-fun m!7486816 () Bool)

(assert (=> b!6727164 m!7486816))

(declare-fun m!7486818 () Bool)

(assert (=> b!6727165 m!7486818))

(assert (=> d!2113524 d!2113852))

(declare-fun bs!1789343 () Bool)

(declare-fun b!6727175 () Bool)

(assert (= bs!1789343 (and b!6727175 d!2113510)))

(declare-fun lambda!377444 () Int)

(assert (=> bs!1789343 (not (= lambda!377444 lambda!377386))))

(assert (=> bs!1789343 (not (= lambda!377444 lambda!377387))))

(declare-fun bs!1789344 () Bool)

(assert (= bs!1789344 (and b!6727175 d!2113768)))

(assert (=> bs!1789344 (not (= lambda!377444 lambda!377433))))

(declare-fun bs!1789345 () Bool)

(assert (= bs!1789345 (and b!6727175 b!6725773)))

(assert (=> bs!1789345 (not (= lambda!377444 lambda!377318))))

(declare-fun bs!1789346 () Bool)

(assert (= bs!1789346 (and b!6727175 b!6726774)))

(assert (=> bs!1789346 (= (and (= (reg!16882 (regTwo!33619 r!7292)) (reg!16882 (regOne!33619 r!7292))) (= (regTwo!33619 r!7292) (regOne!33619 r!7292))) (= lambda!377444 lambda!377426))))

(declare-fun bs!1789347 () Bool)

(assert (= bs!1789347 (and b!6727175 d!2113834)))

(assert (=> bs!1789347 (= (and (= (reg!16882 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33619 r!7292) (Star!16553 (reg!16882 r!7292)))) (= lambda!377444 lambda!377443))))

(declare-fun bs!1789348 () Bool)

(assert (= bs!1789348 (and b!6727175 d!2113516)))

(assert (=> bs!1789348 (not (= lambda!377444 lambda!377392))))

(declare-fun bs!1789349 () Bool)

(assert (= bs!1789349 (and b!6727175 b!6726765)))

(assert (=> bs!1789349 (not (= lambda!377444 lambda!377427))))

(assert (=> bs!1789347 (not (= lambda!377444 lambda!377442))))

(declare-fun bs!1789350 () Bool)

(assert (= bs!1789350 (and b!6727175 d!2113520)))

(assert (=> bs!1789350 (not (= lambda!377444 lambda!377396))))

(assert (=> bs!1789348 (= (and (= (reg!16882 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33619 r!7292) (Star!16553 (reg!16882 r!7292)))) (= lambda!377444 lambda!377393))))

(declare-fun bs!1789351 () Bool)

(assert (= bs!1789351 (and b!6727175 b!6726198)))

(assert (=> bs!1789351 (not (= lambda!377444 lambda!377381))))

(assert (=> bs!1789344 (not (= lambda!377444 lambda!377434))))

(assert (=> bs!1789345 (not (= lambda!377444 lambda!377320))))

(assert (=> bs!1789345 (= (and (= (reg!16882 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33619 r!7292) r!7292)) (= lambda!377444 lambda!377319))))

(declare-fun bs!1789352 () Bool)

(assert (= bs!1789352 (and b!6727175 d!2113692)))

(assert (=> bs!1789352 (not (= lambda!377444 lambda!377423))))

(declare-fun bs!1789353 () Bool)

(assert (= bs!1789353 (and b!6727175 b!6726207)))

(assert (=> bs!1789353 (= (and (= (reg!16882 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33619 r!7292) r!7292)) (= lambda!377444 lambda!377380))))

(assert (=> b!6727175 true))

(assert (=> b!6727175 true))

(declare-fun bs!1789354 () Bool)

(declare-fun b!6727166 () Bool)

(assert (= bs!1789354 (and b!6727166 d!2113510)))

(declare-fun lambda!377445 () Int)

(assert (=> bs!1789354 (not (= lambda!377445 lambda!377386))))

(assert (=> bs!1789354 (= (and (= (regOne!33618 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33618 (regTwo!33619 r!7292)) r!7292)) (= lambda!377445 lambda!377387))))

(declare-fun bs!1789355 () Bool)

(assert (= bs!1789355 (and b!6727166 d!2113768)))

(assert (=> bs!1789355 (not (= lambda!377445 lambda!377433))))

(declare-fun bs!1789356 () Bool)

(assert (= bs!1789356 (and b!6727166 b!6725773)))

(assert (=> bs!1789356 (not (= lambda!377445 lambda!377318))))

(declare-fun bs!1789357 () Bool)

(assert (= bs!1789357 (and b!6727166 b!6726774)))

(assert (=> bs!1789357 (not (= lambda!377445 lambda!377426))))

(declare-fun bs!1789358 () Bool)

(assert (= bs!1789358 (and b!6727166 d!2113834)))

(assert (=> bs!1789358 (not (= lambda!377445 lambda!377443))))

(declare-fun bs!1789359 () Bool)

(assert (= bs!1789359 (and b!6727166 d!2113516)))

(assert (=> bs!1789359 (not (= lambda!377445 lambda!377392))))

(declare-fun bs!1789360 () Bool)

(assert (= bs!1789360 (and b!6727166 b!6726765)))

(assert (=> bs!1789360 (= (and (= (regOne!33618 (regTwo!33619 r!7292)) (regOne!33618 (regOne!33619 r!7292))) (= (regTwo!33618 (regTwo!33619 r!7292)) (regTwo!33618 (regOne!33619 r!7292)))) (= lambda!377445 lambda!377427))))

(declare-fun bs!1789361 () Bool)

(assert (= bs!1789361 (and b!6727166 d!2113520)))

(assert (=> bs!1789361 (not (= lambda!377445 lambda!377396))))

(assert (=> bs!1789359 (not (= lambda!377445 lambda!377393))))

(declare-fun bs!1789362 () Bool)

(assert (= bs!1789362 (and b!6727166 b!6726198)))

(assert (=> bs!1789362 (= (and (= (regOne!33618 (regTwo!33619 r!7292)) (regOne!33618 r!7292)) (= (regTwo!33618 (regTwo!33619 r!7292)) (regTwo!33618 r!7292))) (= lambda!377445 lambda!377381))))

(assert (=> bs!1789355 (= (and (= (regOne!33618 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33618 (regTwo!33619 r!7292)) r!7292)) (= lambda!377445 lambda!377434))))

(assert (=> bs!1789356 (= (and (= (regOne!33618 (regTwo!33619 r!7292)) (reg!16882 r!7292)) (= (regTwo!33618 (regTwo!33619 r!7292)) r!7292)) (= lambda!377445 lambda!377320))))

(assert (=> bs!1789356 (not (= lambda!377445 lambda!377319))))

(declare-fun bs!1789363 () Bool)

(assert (= bs!1789363 (and b!6727166 d!2113692)))

(assert (=> bs!1789363 (not (= lambda!377445 lambda!377423))))

(declare-fun bs!1789364 () Bool)

(assert (= bs!1789364 (and b!6727166 b!6726207)))

(assert (=> bs!1789364 (not (= lambda!377445 lambda!377380))))

(assert (=> bs!1789358 (not (= lambda!377445 lambda!377442))))

(declare-fun bs!1789365 () Bool)

(assert (= bs!1789365 (and b!6727166 b!6727175)))

(assert (=> bs!1789365 (not (= lambda!377445 lambda!377444))))

(assert (=> b!6727166 true))

(assert (=> b!6727166 true))

(declare-fun e!4064316 () Bool)

(declare-fun call!607440 () Bool)

(assert (=> b!6727166 (= e!4064316 call!607440)))

(declare-fun b!6727167 () Bool)

(declare-fun e!4064311 () Bool)

(assert (=> b!6727167 (= e!4064311 (= s!2326 (Cons!65836 (c!1246985 (regTwo!33619 r!7292)) Nil!65836)))))

(declare-fun bm!607434 () Bool)

(declare-fun call!607439 () Bool)

(assert (=> bm!607434 (= call!607439 (isEmpty!38162 s!2326))))

(declare-fun b!6727168 () Bool)

(declare-fun e!4064313 () Bool)

(assert (=> b!6727168 (= e!4064313 e!4064316)))

(declare-fun c!1247317 () Bool)

(assert (=> b!6727168 (= c!1247317 ((_ is Star!16553) (regTwo!33619 r!7292)))))

(declare-fun b!6727169 () Bool)

(declare-fun e!4064314 () Bool)

(assert (=> b!6727169 (= e!4064314 (matchRSpec!3654 (regTwo!33619 (regTwo!33619 r!7292)) s!2326))))

(declare-fun b!6727170 () Bool)

(declare-fun c!1247315 () Bool)

(assert (=> b!6727170 (= c!1247315 ((_ is ElementMatch!16553) (regTwo!33619 r!7292)))))

(declare-fun e!4064310 () Bool)

(assert (=> b!6727170 (= e!4064310 e!4064311)))

(declare-fun b!6727171 () Bool)

(declare-fun c!1247316 () Bool)

(assert (=> b!6727171 (= c!1247316 ((_ is Union!16553) (regTwo!33619 r!7292)))))

(assert (=> b!6727171 (= e!4064311 e!4064313)))

(declare-fun b!6727172 () Bool)

(declare-fun res!2752347 () Bool)

(declare-fun e!4064312 () Bool)

(assert (=> b!6727172 (=> res!2752347 e!4064312)))

(assert (=> b!6727172 (= res!2752347 call!607439)))

(assert (=> b!6727172 (= e!4064316 e!4064312)))

(declare-fun bm!607435 () Bool)

(assert (=> bm!607435 (= call!607440 (Exists!3621 (ite c!1247317 lambda!377444 lambda!377445)))))

(declare-fun b!6727173 () Bool)

(declare-fun e!4064315 () Bool)

(assert (=> b!6727173 (= e!4064315 e!4064310)))

(declare-fun res!2752346 () Bool)

(assert (=> b!6727173 (= res!2752346 (not ((_ is EmptyLang!16553) (regTwo!33619 r!7292))))))

(assert (=> b!6727173 (=> (not res!2752346) (not e!4064310))))

(declare-fun d!2113854 () Bool)

(declare-fun c!1247314 () Bool)

(assert (=> d!2113854 (= c!1247314 ((_ is EmptyExpr!16553) (regTwo!33619 r!7292)))))

(assert (=> d!2113854 (= (matchRSpec!3654 (regTwo!33619 r!7292) s!2326) e!4064315)))

(declare-fun b!6727174 () Bool)

(assert (=> b!6727174 (= e!4064313 e!4064314)))

(declare-fun res!2752345 () Bool)

(assert (=> b!6727174 (= res!2752345 (matchRSpec!3654 (regOne!33619 (regTwo!33619 r!7292)) s!2326))))

(assert (=> b!6727174 (=> res!2752345 e!4064314)))

(assert (=> b!6727175 (= e!4064312 call!607440)))

(declare-fun b!6727176 () Bool)

(assert (=> b!6727176 (= e!4064315 call!607439)))

(assert (= (and d!2113854 c!1247314) b!6727176))

(assert (= (and d!2113854 (not c!1247314)) b!6727173))

(assert (= (and b!6727173 res!2752346) b!6727170))

(assert (= (and b!6727170 c!1247315) b!6727167))

(assert (= (and b!6727170 (not c!1247315)) b!6727171))

(assert (= (and b!6727171 c!1247316) b!6727174))

(assert (= (and b!6727171 (not c!1247316)) b!6727168))

(assert (= (and b!6727174 (not res!2752345)) b!6727169))

(assert (= (and b!6727168 c!1247317) b!6727172))

(assert (= (and b!6727168 (not c!1247317)) b!6727166))

(assert (= (and b!6727172 (not res!2752347)) b!6727175))

(assert (= (or b!6727175 b!6727166) bm!607435))

(assert (= (or b!6727176 b!6727172) bm!607434))

(assert (=> bm!607434 m!7485818))

(declare-fun m!7486820 () Bool)

(assert (=> b!6727169 m!7486820))

(declare-fun m!7486822 () Bool)

(assert (=> bm!607435 m!7486822))

(declare-fun m!7486824 () Bool)

(assert (=> b!6727174 m!7486824))

(assert (=> b!6726201 d!2113854))

(declare-fun d!2113856 () Bool)

(assert (=> d!2113856 (= (flatMap!2034 z!1189 lambda!377337) (choose!50116 z!1189 lambda!377337))))

(declare-fun bs!1789366 () Bool)

(assert (= bs!1789366 d!2113856))

(declare-fun m!7486826 () Bool)

(assert (=> bs!1789366 m!7486826))

(assert (=> d!2113434 d!2113856))

(declare-fun b!6727177 () Bool)

(declare-fun res!2752350 () Bool)

(declare-fun e!4064318 () Bool)

(assert (=> b!6727177 (=> res!2752350 e!4064318)))

(assert (=> b!6727177 (= res!2752350 (not ((_ is Concat!25398) lt!2437235)))))

(declare-fun e!4064322 () Bool)

(assert (=> b!6727177 (= e!4064322 e!4064318)))

(declare-fun b!6727178 () Bool)

(declare-fun e!4064321 () Bool)

(assert (=> b!6727178 (= e!4064321 e!4064322)))

(declare-fun c!1247318 () Bool)

(assert (=> b!6727178 (= c!1247318 ((_ is Union!16553) lt!2437235))))

(declare-fun b!6727179 () Bool)

(declare-fun e!4064317 () Bool)

(assert (=> b!6727179 (= e!4064321 e!4064317)))

(declare-fun res!2752349 () Bool)

(assert (=> b!6727179 (= res!2752349 (not (nullable!6540 (reg!16882 lt!2437235))))))

(assert (=> b!6727179 (=> (not res!2752349) (not e!4064317))))

(declare-fun bm!607436 () Bool)

(declare-fun call!607442 () Bool)

(assert (=> bm!607436 (= call!607442 (validRegex!8289 (ite c!1247318 (regTwo!33619 lt!2437235) (regTwo!33618 lt!2437235))))))

(declare-fun b!6727180 () Bool)

(declare-fun call!607441 () Bool)

(assert (=> b!6727180 (= e!4064317 call!607441)))

(declare-fun bm!607437 () Bool)

(declare-fun c!1247319 () Bool)

(assert (=> bm!607437 (= call!607441 (validRegex!8289 (ite c!1247319 (reg!16882 lt!2437235) (ite c!1247318 (regOne!33619 lt!2437235) (regOne!33618 lt!2437235)))))))

(declare-fun b!6727181 () Bool)

(declare-fun e!4064320 () Bool)

(assert (=> b!6727181 (= e!4064320 call!607442)))

(declare-fun b!6727182 () Bool)

(declare-fun res!2752348 () Bool)

(assert (=> b!6727182 (=> (not res!2752348) (not e!4064320))))

(declare-fun call!607443 () Bool)

(assert (=> b!6727182 (= res!2752348 call!607443)))

(assert (=> b!6727182 (= e!4064322 e!4064320)))

(declare-fun b!6727183 () Bool)

(declare-fun e!4064319 () Bool)

(assert (=> b!6727183 (= e!4064319 e!4064321)))

(assert (=> b!6727183 (= c!1247319 ((_ is Star!16553) lt!2437235))))

(declare-fun b!6727184 () Bool)

(declare-fun e!4064323 () Bool)

(assert (=> b!6727184 (= e!4064323 call!607442)))

(declare-fun d!2113858 () Bool)

(declare-fun res!2752352 () Bool)

(assert (=> d!2113858 (=> res!2752352 e!4064319)))

(assert (=> d!2113858 (= res!2752352 ((_ is ElementMatch!16553) lt!2437235))))

(assert (=> d!2113858 (= (validRegex!8289 lt!2437235) e!4064319)))

(declare-fun b!6727185 () Bool)

(assert (=> b!6727185 (= e!4064318 e!4064323)))

(declare-fun res!2752351 () Bool)

(assert (=> b!6727185 (=> (not res!2752351) (not e!4064323))))

(assert (=> b!6727185 (= res!2752351 call!607443)))

(declare-fun bm!607438 () Bool)

(assert (=> bm!607438 (= call!607443 call!607441)))

(assert (= (and d!2113858 (not res!2752352)) b!6727183))

(assert (= (and b!6727183 c!1247319) b!6727179))

(assert (= (and b!6727183 (not c!1247319)) b!6727178))

(assert (= (and b!6727179 res!2752349) b!6727180))

(assert (= (and b!6727178 c!1247318) b!6727182))

(assert (= (and b!6727178 (not c!1247318)) b!6727177))

(assert (= (and b!6727182 res!2752348) b!6727181))

(assert (= (and b!6727177 (not res!2752350)) b!6727185))

(assert (= (and b!6727185 res!2752351) b!6727184))

(assert (= (or b!6727181 b!6727184) bm!607436))

(assert (= (or b!6727182 b!6727185) bm!607438))

(assert (= (or b!6727180 bm!607438) bm!607437))

(declare-fun m!7486828 () Bool)

(assert (=> b!6727179 m!7486828))

(declare-fun m!7486830 () Bool)

(assert (=> bm!607436 m!7486830))

(declare-fun m!7486832 () Bool)

(assert (=> bm!607437 m!7486832))

(assert (=> d!2113464 d!2113858))

(declare-fun d!2113860 () Bool)

(declare-fun res!2752353 () Bool)

(declare-fun e!4064324 () Bool)

(assert (=> d!2113860 (=> res!2752353 e!4064324)))

(assert (=> d!2113860 (= res!2752353 ((_ is Nil!65834) (unfocusZipperList!1974 zl!343)))))

(assert (=> d!2113860 (= (forall!15753 (unfocusZipperList!1974 zl!343) lambda!377359) e!4064324)))

(declare-fun b!6727186 () Bool)

(declare-fun e!4064325 () Bool)

(assert (=> b!6727186 (= e!4064324 e!4064325)))

(declare-fun res!2752354 () Bool)

(assert (=> b!6727186 (=> (not res!2752354) (not e!4064325))))

(assert (=> b!6727186 (= res!2752354 (dynLambda!26258 lambda!377359 (h!72282 (unfocusZipperList!1974 zl!343))))))

(declare-fun b!6727187 () Bool)

(assert (=> b!6727187 (= e!4064325 (forall!15753 (t!379641 (unfocusZipperList!1974 zl!343)) lambda!377359))))

(assert (= (and d!2113860 (not res!2752353)) b!6727186))

(assert (= (and b!6727186 res!2752354) b!6727187))

(declare-fun b_lambda!253273 () Bool)

(assert (=> (not b_lambda!253273) (not b!6727186)))

(declare-fun m!7486834 () Bool)

(assert (=> b!6727186 m!7486834))

(declare-fun m!7486836 () Bool)

(assert (=> b!6727187 m!7486836))

(assert (=> d!2113464 d!2113860))

(declare-fun d!2113862 () Bool)

(assert (=> d!2113862 (= (isEmpty!38165 (tail!12618 (exprs!6437 (h!72283 zl!343)))) ((_ is Nil!65834) (tail!12618 (exprs!6437 (h!72283 zl!343)))))))

(assert (=> b!6725890 d!2113862))

(declare-fun d!2113864 () Bool)

(assert (=> d!2113864 (= (tail!12618 (exprs!6437 (h!72283 zl!343))) (t!379641 (exprs!6437 (h!72283 zl!343))))))

(assert (=> b!6725890 d!2113864))

(declare-fun d!2113866 () Bool)

(assert (=> d!2113866 (= (head!13534 s!2326) (h!72284 s!2326))))

(assert (=> b!6726294 d!2113866))

(assert (=> d!2113500 d!2113512))

(assert (=> d!2113500 d!2113526))

(declare-fun b!6727188 () Bool)

(declare-fun e!4064331 () Bool)

(assert (=> b!6727188 (= e!4064331 (nullable!6540 (regOne!33618 (h!72282 (exprs!6437 (h!72283 zl!343))))))))

(declare-fun bm!607439 () Bool)

(declare-fun call!607448 () (InoxSet Context!11874))

(declare-fun call!607444 () (InoxSet Context!11874))

(assert (=> bm!607439 (= call!607448 call!607444)))

(declare-fun b!6727189 () Bool)

(declare-fun c!1247320 () Bool)

(assert (=> b!6727189 (= c!1247320 ((_ is Star!16553) (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun e!4064326 () (InoxSet Context!11874))

(declare-fun e!4064329 () (InoxSet Context!11874))

(assert (=> b!6727189 (= e!4064326 e!4064329)))

(declare-fun b!6727190 () Bool)

(declare-fun e!4064328 () (InoxSet Context!11874))

(declare-fun call!607447 () (InoxSet Context!11874))

(declare-fun call!607449 () (InoxSet Context!11874))

(assert (=> b!6727190 (= e!4064328 ((_ map or) call!607447 call!607449))))

(declare-fun d!2113868 () Bool)

(declare-fun c!1247321 () Bool)

(assert (=> d!2113868 (= c!1247321 (and ((_ is ElementMatch!16553) (h!72282 (exprs!6437 (h!72283 zl!343)))) (= (c!1246985 (h!72282 (exprs!6437 (h!72283 zl!343)))) (h!72284 s!2326))))))

(declare-fun e!4064330 () (InoxSet Context!11874))

(assert (=> d!2113868 (= (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (h!72283 zl!343))) (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) (h!72284 s!2326)) e!4064330)))

(declare-fun b!6727191 () Bool)

(declare-fun e!4064327 () (InoxSet Context!11874))

(assert (=> b!6727191 (= e!4064327 e!4064326)))

(declare-fun c!1247322 () Bool)

(assert (=> b!6727191 (= c!1247322 ((_ is Concat!25398) (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6727192 () Bool)

(assert (=> b!6727192 (= e!4064326 call!607448)))

(declare-fun bm!607440 () Bool)

(declare-fun call!607445 () List!65958)

(declare-fun call!607446 () List!65958)

(assert (=> bm!607440 (= call!607445 call!607446)))

(declare-fun b!6727193 () Bool)

(assert (=> b!6727193 (= e!4064330 e!4064328)))

(declare-fun c!1247324 () Bool)

(assert (=> b!6727193 (= c!1247324 ((_ is Union!16553) (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun b!6727194 () Bool)

(assert (=> b!6727194 (= e!4064327 ((_ map or) call!607447 call!607444))))

(declare-fun bm!607441 () Bool)

(declare-fun c!1247323 () Bool)

(assert (=> bm!607441 (= call!607449 (derivationStepZipperDown!1781 (ite c!1247324 (regTwo!33619 (h!72282 (exprs!6437 (h!72283 zl!343)))) (ite c!1247323 (regTwo!33618 (h!72282 (exprs!6437 (h!72283 zl!343)))) (ite c!1247322 (regOne!33618 (h!72282 (exprs!6437 (h!72283 zl!343)))) (reg!16882 (h!72282 (exprs!6437 (h!72283 zl!343))))))) (ite (or c!1247324 c!1247323) (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) (Context!11875 call!607445)) (h!72284 s!2326)))))

(declare-fun b!6727195 () Bool)

(assert (=> b!6727195 (= e!4064329 call!607448)))

(declare-fun b!6727196 () Bool)

(assert (=> b!6727196 (= e!4064330 (store ((as const (Array Context!11874 Bool)) false) (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) true))))

(declare-fun bm!607442 () Bool)

(assert (=> bm!607442 (= call!607444 call!607449)))

(declare-fun bm!607443 () Bool)

(assert (=> bm!607443 (= call!607446 ($colon$colon!2370 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343))))) (ite (or c!1247323 c!1247322) (regTwo!33618 (h!72282 (exprs!6437 (h!72283 zl!343)))) (h!72282 (exprs!6437 (h!72283 zl!343))))))))

(declare-fun bm!607444 () Bool)

(assert (=> bm!607444 (= call!607447 (derivationStepZipperDown!1781 (ite c!1247324 (regOne!33619 (h!72282 (exprs!6437 (h!72283 zl!343)))) (regOne!33618 (h!72282 (exprs!6437 (h!72283 zl!343))))) (ite c!1247324 (Context!11875 (t!379641 (exprs!6437 (h!72283 zl!343)))) (Context!11875 call!607446)) (h!72284 s!2326)))))

(declare-fun b!6727197 () Bool)

(assert (=> b!6727197 (= c!1247323 e!4064331)))

(declare-fun res!2752355 () Bool)

(assert (=> b!6727197 (=> (not res!2752355) (not e!4064331))))

(assert (=> b!6727197 (= res!2752355 ((_ is Concat!25398) (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(assert (=> b!6727197 (= e!4064328 e!4064327)))

(declare-fun b!6727198 () Bool)

(assert (=> b!6727198 (= e!4064329 ((as const (Array Context!11874 Bool)) false))))

(assert (= (and d!2113868 c!1247321) b!6727196))

(assert (= (and d!2113868 (not c!1247321)) b!6727193))

(assert (= (and b!6727193 c!1247324) b!6727190))

(assert (= (and b!6727193 (not c!1247324)) b!6727197))

(assert (= (and b!6727197 res!2752355) b!6727188))

(assert (= (and b!6727197 c!1247323) b!6727194))

(assert (= (and b!6727197 (not c!1247323)) b!6727191))

(assert (= (and b!6727191 c!1247322) b!6727192))

(assert (= (and b!6727191 (not c!1247322)) b!6727189))

(assert (= (and b!6727189 c!1247320) b!6727195))

(assert (= (and b!6727189 (not c!1247320)) b!6727198))

(assert (= (or b!6727192 b!6727195) bm!607440))

(assert (= (or b!6727192 b!6727195) bm!607439))

(assert (= (or b!6727194 bm!607440) bm!607443))

(assert (= (or b!6727194 bm!607439) bm!607442))

(assert (= (or b!6727190 bm!607442) bm!607441))

(assert (= (or b!6727190 b!6727194) bm!607444))

(declare-fun m!7486838 () Bool)

(assert (=> bm!607441 m!7486838))

(declare-fun m!7486840 () Bool)

(assert (=> b!6727188 m!7486840))

(declare-fun m!7486842 () Bool)

(assert (=> bm!607443 m!7486842))

(declare-fun m!7486844 () Bool)

(assert (=> bm!607444 m!7486844))

(declare-fun m!7486846 () Bool)

(assert (=> b!6727196 m!7486846))

(assert (=> bm!607274 d!2113868))

(declare-fun d!2113870 () Bool)

(assert (=> d!2113870 (= (isEmptyLang!1927 lt!2437235) ((_ is EmptyLang!16553) lt!2437235))))

(assert (=> b!6726031 d!2113870))

(declare-fun b!6727199 () Bool)

(declare-fun e!4064338 () Bool)

(assert (=> b!6727199 (= e!4064338 (matchR!8736 (derivativeStep!5225 (derivativeStep!5225 r!7292 (head!13534 s!2326)) (head!13534 (tail!12619 s!2326))) (tail!12619 (tail!12619 s!2326))))))

(declare-fun b!6727200 () Bool)

(declare-fun e!4064332 () Bool)

(declare-fun lt!2437315 () Bool)

(assert (=> b!6727200 (= e!4064332 (not lt!2437315))))

(declare-fun b!6727201 () Bool)

(declare-fun e!4064333 () Bool)

(assert (=> b!6727201 (= e!4064333 (not (= (head!13534 (tail!12619 s!2326)) (c!1246985 (derivativeStep!5225 r!7292 (head!13534 s!2326))))))))

(declare-fun b!6727202 () Bool)

(declare-fun e!4064335 () Bool)

(assert (=> b!6727202 (= e!4064335 e!4064332)))

(declare-fun c!1247326 () Bool)

(assert (=> b!6727202 (= c!1247326 ((_ is EmptyLang!16553) (derivativeStep!5225 r!7292 (head!13534 s!2326))))))

(declare-fun b!6727203 () Bool)

(declare-fun e!4064336 () Bool)

(declare-fun e!4064334 () Bool)

(assert (=> b!6727203 (= e!4064336 e!4064334)))

(declare-fun res!2752356 () Bool)

(assert (=> b!6727203 (=> (not res!2752356) (not e!4064334))))

(assert (=> b!6727203 (= res!2752356 (not lt!2437315))))

(declare-fun b!6727204 () Bool)

(declare-fun res!2752361 () Bool)

(assert (=> b!6727204 (=> res!2752361 e!4064333)))

(assert (=> b!6727204 (= res!2752361 (not (isEmpty!38162 (tail!12619 (tail!12619 s!2326)))))))

(declare-fun b!6727205 () Bool)

(declare-fun res!2752357 () Bool)

(declare-fun e!4064337 () Bool)

(assert (=> b!6727205 (=> (not res!2752357) (not e!4064337))))

(assert (=> b!6727205 (= res!2752357 (isEmpty!38162 (tail!12619 (tail!12619 s!2326))))))

(declare-fun b!6727206 () Bool)

(declare-fun res!2752363 () Bool)

(assert (=> b!6727206 (=> (not res!2752363) (not e!4064337))))

(declare-fun call!607450 () Bool)

(assert (=> b!6727206 (= res!2752363 (not call!607450))))

(declare-fun b!6727207 () Bool)

(assert (=> b!6727207 (= e!4064337 (= (head!13534 (tail!12619 s!2326)) (c!1246985 (derivativeStep!5225 r!7292 (head!13534 s!2326)))))))

(declare-fun d!2113872 () Bool)

(assert (=> d!2113872 e!4064335))

(declare-fun c!1247325 () Bool)

(assert (=> d!2113872 (= c!1247325 ((_ is EmptyExpr!16553) (derivativeStep!5225 r!7292 (head!13534 s!2326))))))

(assert (=> d!2113872 (= lt!2437315 e!4064338)))

(declare-fun c!1247327 () Bool)

(assert (=> d!2113872 (= c!1247327 (isEmpty!38162 (tail!12619 s!2326)))))

(assert (=> d!2113872 (validRegex!8289 (derivativeStep!5225 r!7292 (head!13534 s!2326)))))

(assert (=> d!2113872 (= (matchR!8736 (derivativeStep!5225 r!7292 (head!13534 s!2326)) (tail!12619 s!2326)) lt!2437315)))

(declare-fun bm!607445 () Bool)

(assert (=> bm!607445 (= call!607450 (isEmpty!38162 (tail!12619 s!2326)))))

(declare-fun b!6727208 () Bool)

(assert (=> b!6727208 (= e!4064334 e!4064333)))

(declare-fun res!2752359 () Bool)

(assert (=> b!6727208 (=> res!2752359 e!4064333)))

(assert (=> b!6727208 (= res!2752359 call!607450)))

(declare-fun b!6727209 () Bool)

(declare-fun res!2752358 () Bool)

(assert (=> b!6727209 (=> res!2752358 e!4064336)))

(assert (=> b!6727209 (= res!2752358 (not ((_ is ElementMatch!16553) (derivativeStep!5225 r!7292 (head!13534 s!2326)))))))

(assert (=> b!6727209 (= e!4064332 e!4064336)))

(declare-fun b!6727210 () Bool)

(declare-fun res!2752362 () Bool)

(assert (=> b!6727210 (=> res!2752362 e!4064336)))

(assert (=> b!6727210 (= res!2752362 e!4064337)))

(declare-fun res!2752360 () Bool)

(assert (=> b!6727210 (=> (not res!2752360) (not e!4064337))))

(assert (=> b!6727210 (= res!2752360 lt!2437315)))

(declare-fun b!6727211 () Bool)

(assert (=> b!6727211 (= e!4064338 (nullable!6540 (derivativeStep!5225 r!7292 (head!13534 s!2326))))))

(declare-fun b!6727212 () Bool)

(assert (=> b!6727212 (= e!4064335 (= lt!2437315 call!607450))))

(assert (= (and d!2113872 c!1247327) b!6727211))

(assert (= (and d!2113872 (not c!1247327)) b!6727199))

(assert (= (and d!2113872 c!1247325) b!6727212))

(assert (= (and d!2113872 (not c!1247325)) b!6727202))

(assert (= (and b!6727202 c!1247326) b!6727200))

(assert (= (and b!6727202 (not c!1247326)) b!6727209))

(assert (= (and b!6727209 (not res!2752358)) b!6727210))

(assert (= (and b!6727210 res!2752360) b!6727206))

(assert (= (and b!6727206 res!2752363) b!6727205))

(assert (= (and b!6727205 res!2752357) b!6727207))

(assert (= (and b!6727210 (not res!2752362)) b!6727203))

(assert (= (and b!6727203 res!2752356) b!6727208))

(assert (= (and b!6727208 (not res!2752359)) b!6727204))

(assert (= (and b!6727204 (not res!2752361)) b!6727201))

(assert (= (or b!6727212 b!6727208 b!6727206) bm!607445))

(assert (=> b!6727199 m!7486106))

(declare-fun m!7486848 () Bool)

(assert (=> b!6727199 m!7486848))

(assert (=> b!6727199 m!7486104))

(assert (=> b!6727199 m!7486848))

(declare-fun m!7486850 () Bool)

(assert (=> b!6727199 m!7486850))

(assert (=> b!6727199 m!7486106))

(declare-fun m!7486852 () Bool)

(assert (=> b!6727199 m!7486852))

(assert (=> b!6727199 m!7486850))

(assert (=> b!6727199 m!7486852))

(declare-fun m!7486854 () Bool)

(assert (=> b!6727199 m!7486854))

(assert (=> b!6727204 m!7486106))

(assert (=> b!6727204 m!7486852))

(assert (=> b!6727204 m!7486852))

(declare-fun m!7486856 () Bool)

(assert (=> b!6727204 m!7486856))

(assert (=> b!6727205 m!7486106))

(assert (=> b!6727205 m!7486852))

(assert (=> b!6727205 m!7486852))

(assert (=> b!6727205 m!7486856))

(assert (=> bm!607445 m!7486106))

(assert (=> bm!607445 m!7486110))

(assert (=> d!2113872 m!7486106))

(assert (=> d!2113872 m!7486110))

(assert (=> d!2113872 m!7486104))

(declare-fun m!7486858 () Bool)

(assert (=> d!2113872 m!7486858))

(assert (=> b!6727211 m!7486104))

(declare-fun m!7486860 () Bool)

(assert (=> b!6727211 m!7486860))

(assert (=> b!6727207 m!7486106))

(assert (=> b!6727207 m!7486848))

(assert (=> b!6727201 m!7486106))

(assert (=> b!6727201 m!7486848))

(assert (=> b!6726286 d!2113872))

(declare-fun d!2113874 () Bool)

(declare-fun lt!2437318 () Regex!16553)

(assert (=> d!2113874 (validRegex!8289 lt!2437318)))

(declare-fun e!4064352 () Regex!16553)

(assert (=> d!2113874 (= lt!2437318 e!4064352)))

(declare-fun c!1247342 () Bool)

(assert (=> d!2113874 (= c!1247342 (or ((_ is EmptyExpr!16553) r!7292) ((_ is EmptyLang!16553) r!7292)))))

(assert (=> d!2113874 (validRegex!8289 r!7292)))

(assert (=> d!2113874 (= (derivativeStep!5225 r!7292 (head!13534 s!2326)) lt!2437318)))

(declare-fun b!6727233 () Bool)

(declare-fun e!4064353 () Regex!16553)

(assert (=> b!6727233 (= e!4064353 (ite (= (head!13534 s!2326) (c!1246985 r!7292)) EmptyExpr!16553 EmptyLang!16553))))

(declare-fun bm!607454 () Bool)

(declare-fun call!607459 () Regex!16553)

(declare-fun call!607460 () Regex!16553)

(assert (=> bm!607454 (= call!607459 call!607460)))

(declare-fun b!6727234 () Bool)

(assert (=> b!6727234 (= e!4064352 e!4064353)))

(declare-fun c!1247338 () Bool)

(assert (=> b!6727234 (= c!1247338 ((_ is ElementMatch!16553) r!7292))))

(declare-fun b!6727235 () Bool)

(declare-fun e!4064350 () Regex!16553)

(declare-fun e!4064351 () Regex!16553)

(assert (=> b!6727235 (= e!4064350 e!4064351)))

(declare-fun c!1247341 () Bool)

(assert (=> b!6727235 (= c!1247341 ((_ is Star!16553) r!7292))))

(declare-fun b!6727236 () Bool)

(declare-fun c!1247339 () Bool)

(assert (=> b!6727236 (= c!1247339 (nullable!6540 (regOne!33618 r!7292)))))

(declare-fun e!4064349 () Regex!16553)

(assert (=> b!6727236 (= e!4064351 e!4064349)))

(declare-fun b!6727237 () Bool)

(declare-fun call!607462 () Regex!16553)

(assert (=> b!6727237 (= e!4064349 (Union!16553 (Concat!25398 call!607462 (regTwo!33618 r!7292)) call!607459))))

(declare-fun b!6727238 () Bool)

(declare-fun c!1247340 () Bool)

(assert (=> b!6727238 (= c!1247340 ((_ is Union!16553) r!7292))))

(assert (=> b!6727238 (= e!4064353 e!4064350)))

(declare-fun bm!607455 () Bool)

(assert (=> bm!607455 (= call!607462 (derivativeStep!5225 (ite c!1247340 (regOne!33619 r!7292) (regOne!33618 r!7292)) (head!13534 s!2326)))))

(declare-fun b!6727239 () Bool)

(assert (=> b!6727239 (= e!4064349 (Union!16553 (Concat!25398 call!607459 (regTwo!33618 r!7292)) EmptyLang!16553))))

(declare-fun b!6727240 () Bool)

(assert (=> b!6727240 (= e!4064352 EmptyLang!16553)))

(declare-fun b!6727241 () Bool)

(declare-fun call!607461 () Regex!16553)

(assert (=> b!6727241 (= e!4064350 (Union!16553 call!607462 call!607461))))

(declare-fun b!6727242 () Bool)

(assert (=> b!6727242 (= e!4064351 (Concat!25398 call!607460 r!7292))))

(declare-fun bm!607456 () Bool)

(assert (=> bm!607456 (= call!607460 call!607461)))

(declare-fun bm!607457 () Bool)

(assert (=> bm!607457 (= call!607461 (derivativeStep!5225 (ite c!1247340 (regTwo!33619 r!7292) (ite c!1247341 (reg!16882 r!7292) (ite c!1247339 (regTwo!33618 r!7292) (regOne!33618 r!7292)))) (head!13534 s!2326)))))

(assert (= (and d!2113874 c!1247342) b!6727240))

(assert (= (and d!2113874 (not c!1247342)) b!6727234))

(assert (= (and b!6727234 c!1247338) b!6727233))

(assert (= (and b!6727234 (not c!1247338)) b!6727238))

(assert (= (and b!6727238 c!1247340) b!6727241))

(assert (= (and b!6727238 (not c!1247340)) b!6727235))

(assert (= (and b!6727235 c!1247341) b!6727242))

(assert (= (and b!6727235 (not c!1247341)) b!6727236))

(assert (= (and b!6727236 c!1247339) b!6727237))

(assert (= (and b!6727236 (not c!1247339)) b!6727239))

(assert (= (or b!6727237 b!6727239) bm!607454))

(assert (= (or b!6727242 bm!607454) bm!607456))

(assert (= (or b!6727241 bm!607456) bm!607457))

(assert (= (or b!6727241 b!6727237) bm!607455))

(declare-fun m!7486862 () Bool)

(assert (=> d!2113874 m!7486862))

(assert (=> d!2113874 m!7485782))

(assert (=> b!6727236 m!7486174))

(assert (=> bm!607455 m!7486102))

(declare-fun m!7486864 () Bool)

(assert (=> bm!607455 m!7486864))

(assert (=> bm!607457 m!7486102))

(declare-fun m!7486866 () Bool)

(assert (=> bm!607457 m!7486866))

(assert (=> b!6726286 d!2113874))

(assert (=> b!6726286 d!2113866))

(assert (=> b!6726286 d!2113642))

(declare-fun d!2113876 () Bool)

(declare-fun e!4064355 () Bool)

(assert (=> d!2113876 e!4064355))

(declare-fun res!2752364 () Bool)

(assert (=> d!2113876 (=> (not res!2752364) (not e!4064355))))

(declare-fun lt!2437319 () List!65960)

(assert (=> d!2113876 (= res!2752364 (= (content!12777 lt!2437319) ((_ map or) (content!12777 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836))) (content!12777 (t!379643 s!2326)))))))

(declare-fun e!4064354 () List!65960)

(assert (=> d!2113876 (= lt!2437319 e!4064354)))

(declare-fun c!1247343 () Bool)

(assert (=> d!2113876 (= c!1247343 ((_ is Nil!65836) (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836))))))

(assert (=> d!2113876 (= (++!14709 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (t!379643 s!2326)) lt!2437319)))

(declare-fun b!6727244 () Bool)

(assert (=> b!6727244 (= e!4064354 (Cons!65836 (h!72284 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836))) (++!14709 (t!379643 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836))) (t!379643 s!2326))))))

(declare-fun b!6727246 () Bool)

(assert (=> b!6727246 (= e!4064355 (or (not (= (t!379643 s!2326) Nil!65836)) (= lt!2437319 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)))))))

(declare-fun b!6727245 () Bool)

(declare-fun res!2752365 () Bool)

(assert (=> b!6727245 (=> (not res!2752365) (not e!4064355))))

(assert (=> b!6727245 (= res!2752365 (= (size!40603 lt!2437319) (+ (size!40603 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836))) (size!40603 (t!379643 s!2326)))))))

(declare-fun b!6727243 () Bool)

(assert (=> b!6727243 (= e!4064354 (t!379643 s!2326))))

(assert (= (and d!2113876 c!1247343) b!6727243))

(assert (= (and d!2113876 (not c!1247343)) b!6727244))

(assert (= (and d!2113876 res!2752364) b!6727245))

(assert (= (and b!6727245 res!2752365) b!6727246))

(declare-fun m!7486868 () Bool)

(assert (=> d!2113876 m!7486868))

(assert (=> d!2113876 m!7486144))

(declare-fun m!7486870 () Bool)

(assert (=> d!2113876 m!7486870))

(declare-fun m!7486872 () Bool)

(assert (=> d!2113876 m!7486872))

(declare-fun m!7486874 () Bool)

(assert (=> b!6727244 m!7486874))

(declare-fun m!7486876 () Bool)

(assert (=> b!6727245 m!7486876))

(assert (=> b!6727245 m!7486144))

(declare-fun m!7486878 () Bool)

(assert (=> b!6727245 m!7486878))

(declare-fun m!7486880 () Bool)

(assert (=> b!6727245 m!7486880))

(assert (=> b!6726344 d!2113876))

(declare-fun d!2113878 () Bool)

(declare-fun e!4064357 () Bool)

(assert (=> d!2113878 e!4064357))

(declare-fun res!2752366 () Bool)

(assert (=> d!2113878 (=> (not res!2752366) (not e!4064357))))

(declare-fun lt!2437320 () List!65960)

(assert (=> d!2113878 (= res!2752366 (= (content!12777 lt!2437320) ((_ map or) (content!12777 Nil!65836) (content!12777 (Cons!65836 (h!72284 s!2326) Nil!65836)))))))

(declare-fun e!4064356 () List!65960)

(assert (=> d!2113878 (= lt!2437320 e!4064356)))

(declare-fun c!1247344 () Bool)

(assert (=> d!2113878 (= c!1247344 ((_ is Nil!65836) Nil!65836))))

(assert (=> d!2113878 (= (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) lt!2437320)))

(declare-fun b!6727248 () Bool)

(assert (=> b!6727248 (= e!4064356 (Cons!65836 (h!72284 Nil!65836) (++!14709 (t!379643 Nil!65836) (Cons!65836 (h!72284 s!2326) Nil!65836))))))

(declare-fun b!6727250 () Bool)

(assert (=> b!6727250 (= e!4064357 (or (not (= (Cons!65836 (h!72284 s!2326) Nil!65836) Nil!65836)) (= lt!2437320 Nil!65836)))))

(declare-fun b!6727249 () Bool)

(declare-fun res!2752367 () Bool)

(assert (=> b!6727249 (=> (not res!2752367) (not e!4064357))))

(assert (=> b!6727249 (= res!2752367 (= (size!40603 lt!2437320) (+ (size!40603 Nil!65836) (size!40603 (Cons!65836 (h!72284 s!2326) Nil!65836)))))))

(declare-fun b!6727247 () Bool)

(assert (=> b!6727247 (= e!4064356 (Cons!65836 (h!72284 s!2326) Nil!65836))))

(assert (= (and d!2113878 c!1247344) b!6727247))

(assert (= (and d!2113878 (not c!1247344)) b!6727248))

(assert (= (and d!2113878 res!2752366) b!6727249))

(assert (= (and b!6727249 res!2752367) b!6727250))

(declare-fun m!7486882 () Bool)

(assert (=> d!2113878 m!7486882))

(declare-fun m!7486884 () Bool)

(assert (=> d!2113878 m!7486884))

(declare-fun m!7486886 () Bool)

(assert (=> d!2113878 m!7486886))

(declare-fun m!7486888 () Bool)

(assert (=> b!6727248 m!7486888))

(declare-fun m!7486890 () Bool)

(assert (=> b!6727249 m!7486890))

(declare-fun m!7486892 () Bool)

(assert (=> b!6727249 m!7486892))

(declare-fun m!7486894 () Bool)

(assert (=> b!6727249 m!7486894))

(assert (=> b!6726344 d!2113878))

(declare-fun d!2113880 () Bool)

(assert (=> d!2113880 (= (++!14709 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (t!379643 s!2326)) s!2326)))

(declare-fun lt!2437323 () Unit!159797)

(declare-fun choose!50125 (List!65960 C!33376 List!65960 List!65960) Unit!159797)

(assert (=> d!2113880 (= lt!2437323 (choose!50125 Nil!65836 (h!72284 s!2326) (t!379643 s!2326) s!2326))))

(assert (=> d!2113880 (= (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) (t!379643 s!2326))) s!2326)))

(assert (=> d!2113880 (= (lemmaMoveElementToOtherListKeepsConcatEq!2682 Nil!65836 (h!72284 s!2326) (t!379643 s!2326) s!2326) lt!2437323)))

(declare-fun bs!1789367 () Bool)

(assert (= bs!1789367 d!2113880))

(assert (=> bs!1789367 m!7486144))

(assert (=> bs!1789367 m!7486144))

(assert (=> bs!1789367 m!7486146))

(declare-fun m!7486896 () Bool)

(assert (=> bs!1789367 m!7486896))

(declare-fun m!7486898 () Bool)

(assert (=> bs!1789367 m!7486898))

(assert (=> b!6726344 d!2113880))

(declare-fun b!6727251 () Bool)

(declare-fun e!4064361 () Option!16440)

(declare-fun e!4064359 () Option!16440)

(assert (=> b!6727251 (= e!4064361 e!4064359)))

(declare-fun c!1247346 () Bool)

(assert (=> b!6727251 (= c!1247346 ((_ is Nil!65836) (t!379643 s!2326)))))

(declare-fun b!6727252 () Bool)

(declare-fun e!4064360 () Bool)

(declare-fun lt!2437325 () Option!16440)

(assert (=> b!6727252 (= e!4064360 (= (++!14709 (_1!36831 (get!22901 lt!2437325)) (_2!36831 (get!22901 lt!2437325))) s!2326))))

(declare-fun b!6727253 () Bool)

(declare-fun res!2752372 () Bool)

(assert (=> b!6727253 (=> (not res!2752372) (not e!4064360))))

(assert (=> b!6727253 (= res!2752372 (matchR!8736 r!7292 (_2!36831 (get!22901 lt!2437325))))))

(declare-fun b!6727254 () Bool)

(assert (=> b!6727254 (= e!4064361 (Some!16439 (tuple2!67057 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (t!379643 s!2326))))))

(declare-fun b!6727255 () Bool)

(declare-fun res!2752371 () Bool)

(assert (=> b!6727255 (=> (not res!2752371) (not e!4064360))))

(assert (=> b!6727255 (= res!2752371 (matchR!8736 (reg!16882 r!7292) (_1!36831 (get!22901 lt!2437325))))))

(declare-fun d!2113882 () Bool)

(declare-fun e!4064358 () Bool)

(assert (=> d!2113882 e!4064358))

(declare-fun res!2752370 () Bool)

(assert (=> d!2113882 (=> res!2752370 e!4064358)))

(assert (=> d!2113882 (= res!2752370 e!4064360)))

(declare-fun res!2752369 () Bool)

(assert (=> d!2113882 (=> (not res!2752369) (not e!4064360))))

(assert (=> d!2113882 (= res!2752369 (isDefined!13143 lt!2437325))))

(assert (=> d!2113882 (= lt!2437325 e!4064361)))

(declare-fun c!1247345 () Bool)

(declare-fun e!4064362 () Bool)

(assert (=> d!2113882 (= c!1247345 e!4064362)))

(declare-fun res!2752368 () Bool)

(assert (=> d!2113882 (=> (not res!2752368) (not e!4064362))))

(assert (=> d!2113882 (= res!2752368 (matchR!8736 (reg!16882 r!7292) (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836))))))

(assert (=> d!2113882 (validRegex!8289 (reg!16882 r!7292))))

(assert (=> d!2113882 (= (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (t!379643 s!2326) s!2326) lt!2437325)))

(declare-fun b!6727256 () Bool)

(assert (=> b!6727256 (= e!4064359 None!16439)))

(declare-fun b!6727257 () Bool)

(assert (=> b!6727257 (= e!4064358 (not (isDefined!13143 lt!2437325)))))

(declare-fun b!6727258 () Bool)

(assert (=> b!6727258 (= e!4064362 (matchR!8736 r!7292 (t!379643 s!2326)))))

(declare-fun b!6727259 () Bool)

(declare-fun lt!2437324 () Unit!159797)

(declare-fun lt!2437326 () Unit!159797)

(assert (=> b!6727259 (= lt!2437324 lt!2437326)))

(assert (=> b!6727259 (= (++!14709 (++!14709 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (Cons!65836 (h!72284 (t!379643 s!2326)) Nil!65836)) (t!379643 (t!379643 s!2326))) s!2326)))

(assert (=> b!6727259 (= lt!2437326 (lemmaMoveElementToOtherListKeepsConcatEq!2682 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (h!72284 (t!379643 s!2326)) (t!379643 (t!379643 s!2326)) s!2326))))

(assert (=> b!6727259 (= e!4064359 (findConcatSeparation!2854 (reg!16882 r!7292) r!7292 (++!14709 (++!14709 Nil!65836 (Cons!65836 (h!72284 s!2326) Nil!65836)) (Cons!65836 (h!72284 (t!379643 s!2326)) Nil!65836)) (t!379643 (t!379643 s!2326)) s!2326))))

(assert (= (and d!2113882 res!2752368) b!6727258))

(assert (= (and d!2113882 c!1247345) b!6727254))

(assert (= (and d!2113882 (not c!1247345)) b!6727251))

(assert (= (and b!6727251 c!1247346) b!6727256))

(assert (= (and b!6727251 (not c!1247346)) b!6727259))

(assert (= (and d!2113882 res!2752369) b!6727255))

(assert (= (and b!6727255 res!2752371) b!6727253))

(assert (= (and b!6727253 res!2752372) b!6727252))

(assert (= (and d!2113882 (not res!2752370)) b!6727257))

(declare-fun m!7486900 () Bool)

(assert (=> b!6727253 m!7486900))

(declare-fun m!7486902 () Bool)

(assert (=> b!6727253 m!7486902))

(assert (=> b!6727255 m!7486900))

(declare-fun m!7486904 () Bool)

(assert (=> b!6727255 m!7486904))

(assert (=> b!6727259 m!7486144))

(declare-fun m!7486906 () Bool)

(assert (=> b!6727259 m!7486906))

(assert (=> b!6727259 m!7486906))

(declare-fun m!7486908 () Bool)

(assert (=> b!6727259 m!7486908))

(assert (=> b!6727259 m!7486144))

(declare-fun m!7486910 () Bool)

(assert (=> b!6727259 m!7486910))

(assert (=> b!6727259 m!7486906))

(declare-fun m!7486912 () Bool)

(assert (=> b!6727259 m!7486912))

(assert (=> b!6727252 m!7486900))

(declare-fun m!7486914 () Bool)

(assert (=> b!6727252 m!7486914))

(declare-fun m!7486916 () Bool)

(assert (=> d!2113882 m!7486916))

(assert (=> d!2113882 m!7486144))

(declare-fun m!7486918 () Bool)

(assert (=> d!2113882 m!7486918))

(assert (=> d!2113882 m!7486128))

(assert (=> b!6727257 m!7486916))

(declare-fun m!7486920 () Bool)

(assert (=> b!6727258 m!7486920))

(assert (=> b!6726344 d!2113882))

(assert (=> b!6726288 d!2113866))

(declare-fun d!2113884 () Bool)

(assert (=> d!2113884 (= (isUnion!1357 lt!2437235) ((_ is Union!16553) lt!2437235))))

(assert (=> b!6726035 d!2113884))

(declare-fun b!6727260 () Bool)

(declare-fun e!4064368 () Bool)

(assert (=> b!6727260 (= e!4064368 (nullable!6540 (regOne!33618 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))

(declare-fun bm!607458 () Bool)

(declare-fun call!607467 () (InoxSet Context!11874))

(declare-fun call!607463 () (InoxSet Context!11874))

(assert (=> bm!607458 (= call!607467 call!607463)))

(declare-fun b!6727261 () Bool)

(declare-fun c!1247347 () Bool)

(assert (=> b!6727261 (= c!1247347 ((_ is Star!16553) (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))))))

(declare-fun e!4064363 () (InoxSet Context!11874))

(declare-fun e!4064366 () (InoxSet Context!11874))

(assert (=> b!6727261 (= e!4064363 e!4064366)))

(declare-fun b!6727262 () Bool)

(declare-fun e!4064365 () (InoxSet Context!11874))

(declare-fun call!607466 () (InoxSet Context!11874))

(declare-fun call!607468 () (InoxSet Context!11874))

(assert (=> b!6727262 (= e!4064365 ((_ map or) call!607466 call!607468))))

(declare-fun d!2113886 () Bool)

(declare-fun c!1247348 () Bool)

(assert (=> d!2113886 (= c!1247348 (and ((_ is ElementMatch!16553) (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (= (c!1246985 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (h!72284 s!2326))))))

(declare-fun e!4064367 () (InoxSet Context!11874))

(assert (=> d!2113886 (= (derivationStepZipperDown!1781 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292)) (ite c!1247157 (Context!11875 Nil!65834) (Context!11875 call!607323)) (h!72284 s!2326)) e!4064367)))

(declare-fun b!6727263 () Bool)

(declare-fun e!4064364 () (InoxSet Context!11874))

(assert (=> b!6727263 (= e!4064364 e!4064363)))

(declare-fun c!1247349 () Bool)

(assert (=> b!6727263 (= c!1247349 ((_ is Concat!25398) (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))))))

(declare-fun b!6727264 () Bool)

(assert (=> b!6727264 (= e!4064363 call!607467)))

(declare-fun bm!607459 () Bool)

(declare-fun call!607464 () List!65958)

(declare-fun call!607465 () List!65958)

(assert (=> bm!607459 (= call!607464 call!607465)))

(declare-fun b!6727265 () Bool)

(assert (=> b!6727265 (= e!4064367 e!4064365)))

(declare-fun c!1247351 () Bool)

(assert (=> b!6727265 (= c!1247351 ((_ is Union!16553) (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))))))

(declare-fun b!6727266 () Bool)

(assert (=> b!6727266 (= e!4064364 ((_ map or) call!607466 call!607463))))

(declare-fun bm!607460 () Bool)

(declare-fun c!1247350 () Bool)

(assert (=> bm!607460 (= call!607468 (derivationStepZipperDown!1781 (ite c!1247351 (regTwo!33619 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (ite c!1247350 (regTwo!33618 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (ite c!1247349 (regOne!33618 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (reg!16882 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292)))))) (ite (or c!1247351 c!1247350) (ite c!1247157 (Context!11875 Nil!65834) (Context!11875 call!607323)) (Context!11875 call!607464)) (h!72284 s!2326)))))

(declare-fun b!6727267 () Bool)

(assert (=> b!6727267 (= e!4064366 call!607467)))

(declare-fun b!6727268 () Bool)

(assert (=> b!6727268 (= e!4064367 (store ((as const (Array Context!11874 Bool)) false) (ite c!1247157 (Context!11875 Nil!65834) (Context!11875 call!607323)) true))))

(declare-fun bm!607461 () Bool)

(assert (=> bm!607461 (= call!607463 call!607468)))

(declare-fun bm!607462 () Bool)

(assert (=> bm!607462 (= call!607465 ($colon$colon!2370 (exprs!6437 (ite c!1247157 (Context!11875 Nil!65834) (Context!11875 call!607323))) (ite (or c!1247350 c!1247349) (regTwo!33618 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292)))))))

(declare-fun bm!607463 () Bool)

(assert (=> bm!607463 (= call!607466 (derivationStepZipperDown!1781 (ite c!1247351 (regOne!33619 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))) (regOne!33618 (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292)))) (ite c!1247351 (ite c!1247157 (Context!11875 Nil!65834) (Context!11875 call!607323)) (Context!11875 call!607465)) (h!72284 s!2326)))))

(declare-fun b!6727269 () Bool)

(assert (=> b!6727269 (= c!1247350 e!4064368)))

(declare-fun res!2752373 () Bool)

(assert (=> b!6727269 (=> (not res!2752373) (not e!4064368))))

(assert (=> b!6727269 (= res!2752373 ((_ is Concat!25398) (ite c!1247157 (regOne!33619 r!7292) (regOne!33618 r!7292))))))

(assert (=> b!6727269 (= e!4064365 e!4064364)))

(declare-fun b!6727270 () Bool)

(assert (=> b!6727270 (= e!4064366 ((as const (Array Context!11874 Bool)) false))))

(assert (= (and d!2113886 c!1247348) b!6727268))

(assert (= (and d!2113886 (not c!1247348)) b!6727265))

(assert (= (and b!6727265 c!1247351) b!6727262))

(assert (= (and b!6727265 (not c!1247351)) b!6727269))

(assert (= (and b!6727269 res!2752373) b!6727260))

(assert (= (and b!6727269 c!1247350) b!6727266))

(assert (= (and b!6727269 (not c!1247350)) b!6727263))

(assert (= (and b!6727263 c!1247349) b!6727264))

(assert (= (and b!6727263 (not c!1247349)) b!6727261))

(assert (= (and b!6727261 c!1247347) b!6727267))

(assert (= (and b!6727261 (not c!1247347)) b!6727270))

(assert (= (or b!6727264 b!6727267) bm!607459))

(assert (= (or b!6727264 b!6727267) bm!607458))

(assert (= (or b!6727266 bm!607459) bm!607462))

(assert (= (or b!6727266 bm!607458) bm!607461))

(assert (= (or b!6727262 bm!607461) bm!607460))

(assert (= (or b!6727262 b!6727266) bm!607463))

(declare-fun m!7486922 () Bool)

(assert (=> bm!607460 m!7486922))

(declare-fun m!7486924 () Bool)

(assert (=> b!6727260 m!7486924))

(declare-fun m!7486926 () Bool)

(assert (=> bm!607462 m!7486926))

(declare-fun m!7486928 () Bool)

(assert (=> bm!607463 m!7486928))

(declare-fun m!7486930 () Bool)

(assert (=> b!6727268 m!7486930))

(assert (=> bm!607321 d!2113886))

(declare-fun d!2113888 () Bool)

(declare-fun c!1247352 () Bool)

(declare-fun e!4064369 () Bool)

(assert (=> d!2113888 (= c!1247352 e!4064369)))

(declare-fun res!2752374 () Bool)

(assert (=> d!2113888 (=> (not res!2752374) (not e!4064369))))

(assert (=> d!2113888 (= res!2752374 ((_ is Cons!65834) (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))))

(declare-fun e!4064371 () (InoxSet Context!11874))

(assert (=> d!2113888 (= (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))) (h!72284 s!2326)) e!4064371)))

(declare-fun b!6727271 () Bool)

(declare-fun e!4064370 () (InoxSet Context!11874))

(assert (=> b!6727271 (= e!4064370 ((as const (Array Context!11874 Bool)) false))))

(declare-fun call!607469 () (InoxSet Context!11874))

(declare-fun b!6727272 () Bool)

(assert (=> b!6727272 (= e!4064371 ((_ map or) call!607469 (derivationStepZipperUp!1707 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))) (h!72284 s!2326))))))

(declare-fun b!6727273 () Bool)

(assert (=> b!6727273 (= e!4064369 (nullable!6540 (h!72282 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))))))

(declare-fun b!6727274 () Bool)

(assert (=> b!6727274 (= e!4064370 call!607469)))

(declare-fun bm!607464 () Bool)

(assert (=> bm!607464 (= call!607469 (derivationStepZipperDown!1781 (h!72282 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))) (Context!11875 (t!379641 (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834)))))))) (h!72284 s!2326)))))

(declare-fun b!6727275 () Bool)

(assert (=> b!6727275 (= e!4064371 e!4064370)))

(declare-fun c!1247353 () Bool)

(assert (=> b!6727275 (= c!1247353 ((_ is Cons!65834) (exprs!6437 (Context!11875 (t!379641 (exprs!6437 (Context!11875 (Cons!65834 r!7292 Nil!65834))))))))))

(assert (= (and d!2113888 res!2752374) b!6727273))

(assert (= (and d!2113888 c!1247352) b!6727272))

(assert (= (and d!2113888 (not c!1247352)) b!6727275))

(assert (= (and b!6727275 c!1247353) b!6727274))

(assert (= (and b!6727275 (not c!1247353)) b!6727271))

(assert (= (or b!6727272 b!6727274) bm!607464))

(declare-fun m!7486932 () Bool)

(assert (=> b!6727272 m!7486932))

(declare-fun m!7486934 () Bool)

(assert (=> b!6727273 m!7486934))

(declare-fun m!7486936 () Bool)

(assert (=> bm!607464 m!7486936))

(assert (=> b!6726410 d!2113888))

(declare-fun b!6727276 () Bool)

(declare-fun e!4064372 () Bool)

(declare-fun tp!1844446 () Bool)

(declare-fun tp!1844447 () Bool)

(assert (=> b!6727276 (= e!4064372 (and tp!1844446 tp!1844447))))

(assert (=> b!6726442 (= tp!1844244 e!4064372)))

(assert (= (and b!6726442 ((_ is Cons!65834) (exprs!6437 setElem!45861))) b!6727276))

(declare-fun b!6727279 () Bool)

(declare-fun e!4064373 () Bool)

(declare-fun tp!1844451 () Bool)

(assert (=> b!6727279 (= e!4064373 tp!1844451)))

(assert (=> b!6726418 (= tp!1844216 e!4064373)))

(declare-fun b!6727277 () Bool)

(assert (=> b!6727277 (= e!4064373 tp_is_empty!42359)))

(declare-fun b!6727278 () Bool)

(declare-fun tp!1844448 () Bool)

(declare-fun tp!1844449 () Bool)

(assert (=> b!6727278 (= e!4064373 (and tp!1844448 tp!1844449))))

(declare-fun b!6727280 () Bool)

(declare-fun tp!1844450 () Bool)

(declare-fun tp!1844452 () Bool)

(assert (=> b!6727280 (= e!4064373 (and tp!1844450 tp!1844452))))

(assert (= (and b!6726418 ((_ is ElementMatch!16553) (h!72282 (exprs!6437 setElem!45855)))) b!6727277))

(assert (= (and b!6726418 ((_ is Concat!25398) (h!72282 (exprs!6437 setElem!45855)))) b!6727278))

(assert (= (and b!6726418 ((_ is Star!16553) (h!72282 (exprs!6437 setElem!45855)))) b!6727279))

(assert (= (and b!6726418 ((_ is Union!16553) (h!72282 (exprs!6437 setElem!45855)))) b!6727280))

(declare-fun b!6727281 () Bool)

(declare-fun e!4064374 () Bool)

(declare-fun tp!1844453 () Bool)

(declare-fun tp!1844454 () Bool)

(assert (=> b!6727281 (= e!4064374 (and tp!1844453 tp!1844454))))

(assert (=> b!6726418 (= tp!1844217 e!4064374)))

(assert (= (and b!6726418 ((_ is Cons!65834) (t!379641 (exprs!6437 setElem!45855)))) b!6727281))

(declare-fun b!6727284 () Bool)

(declare-fun e!4064375 () Bool)

(declare-fun tp!1844458 () Bool)

(assert (=> b!6727284 (= e!4064375 tp!1844458)))

(assert (=> b!6726449 (= tp!1844254 e!4064375)))

(declare-fun b!6727282 () Bool)

(assert (=> b!6727282 (= e!4064375 tp_is_empty!42359)))

(declare-fun b!6727283 () Bool)

(declare-fun tp!1844455 () Bool)

(declare-fun tp!1844456 () Bool)

(assert (=> b!6727283 (= e!4064375 (and tp!1844455 tp!1844456))))

(declare-fun b!6727285 () Bool)

(declare-fun tp!1844457 () Bool)

(declare-fun tp!1844459 () Bool)

(assert (=> b!6727285 (= e!4064375 (and tp!1844457 tp!1844459))))

(assert (= (and b!6726449 ((_ is ElementMatch!16553) (reg!16882 (regTwo!33619 r!7292)))) b!6727282))

(assert (= (and b!6726449 ((_ is Concat!25398) (reg!16882 (regTwo!33619 r!7292)))) b!6727283))

(assert (= (and b!6726449 ((_ is Star!16553) (reg!16882 (regTwo!33619 r!7292)))) b!6727284))

(assert (= (and b!6726449 ((_ is Union!16553) (reg!16882 (regTwo!33619 r!7292)))) b!6727285))

(declare-fun b!6727288 () Bool)

(declare-fun e!4064376 () Bool)

(declare-fun tp!1844463 () Bool)

(assert (=> b!6727288 (= e!4064376 tp!1844463)))

(assert (=> b!6726435 (= tp!1844236 e!4064376)))

(declare-fun b!6727286 () Bool)

(assert (=> b!6727286 (= e!4064376 tp_is_empty!42359)))

(declare-fun b!6727287 () Bool)

(declare-fun tp!1844460 () Bool)

(declare-fun tp!1844461 () Bool)

(assert (=> b!6727287 (= e!4064376 (and tp!1844460 tp!1844461))))

(declare-fun b!6727289 () Bool)

(declare-fun tp!1844462 () Bool)

(declare-fun tp!1844464 () Bool)

(assert (=> b!6727289 (= e!4064376 (and tp!1844462 tp!1844464))))

(assert (= (and b!6726435 ((_ is ElementMatch!16553) (reg!16882 (regTwo!33618 r!7292)))) b!6727286))

(assert (= (and b!6726435 ((_ is Concat!25398) (reg!16882 (regTwo!33618 r!7292)))) b!6727287))

(assert (= (and b!6726435 ((_ is Star!16553) (reg!16882 (regTwo!33618 r!7292)))) b!6727288))

(assert (= (and b!6726435 ((_ is Union!16553) (reg!16882 (regTwo!33618 r!7292)))) b!6727289))

(declare-fun b!6727292 () Bool)

(declare-fun e!4064377 () Bool)

(declare-fun tp!1844468 () Bool)

(assert (=> b!6727292 (= e!4064377 tp!1844468)))

(assert (=> b!6726434 (= tp!1844233 e!4064377)))

(declare-fun b!6727290 () Bool)

(assert (=> b!6727290 (= e!4064377 tp_is_empty!42359)))

(declare-fun b!6727291 () Bool)

(declare-fun tp!1844465 () Bool)

(declare-fun tp!1844466 () Bool)

(assert (=> b!6727291 (= e!4064377 (and tp!1844465 tp!1844466))))

(declare-fun b!6727293 () Bool)

(declare-fun tp!1844467 () Bool)

(declare-fun tp!1844469 () Bool)

(assert (=> b!6727293 (= e!4064377 (and tp!1844467 tp!1844469))))

(assert (= (and b!6726434 ((_ is ElementMatch!16553) (regOne!33618 (regTwo!33618 r!7292)))) b!6727290))

(assert (= (and b!6726434 ((_ is Concat!25398) (regOne!33618 (regTwo!33618 r!7292)))) b!6727291))

(assert (= (and b!6726434 ((_ is Star!16553) (regOne!33618 (regTwo!33618 r!7292)))) b!6727292))

(assert (= (and b!6726434 ((_ is Union!16553) (regOne!33618 (regTwo!33618 r!7292)))) b!6727293))

(declare-fun b!6727296 () Bool)

(declare-fun e!4064378 () Bool)

(declare-fun tp!1844473 () Bool)

(assert (=> b!6727296 (= e!4064378 tp!1844473)))

(assert (=> b!6726434 (= tp!1844234 e!4064378)))

(declare-fun b!6727294 () Bool)

(assert (=> b!6727294 (= e!4064378 tp_is_empty!42359)))

(declare-fun b!6727295 () Bool)

(declare-fun tp!1844470 () Bool)

(declare-fun tp!1844471 () Bool)

(assert (=> b!6727295 (= e!4064378 (and tp!1844470 tp!1844471))))

(declare-fun b!6727297 () Bool)

(declare-fun tp!1844472 () Bool)

(declare-fun tp!1844474 () Bool)

(assert (=> b!6727297 (= e!4064378 (and tp!1844472 tp!1844474))))

(assert (= (and b!6726434 ((_ is ElementMatch!16553) (regTwo!33618 (regTwo!33618 r!7292)))) b!6727294))

(assert (= (and b!6726434 ((_ is Concat!25398) (regTwo!33618 (regTwo!33618 r!7292)))) b!6727295))

(assert (= (and b!6726434 ((_ is Star!16553) (regTwo!33618 (regTwo!33618 r!7292)))) b!6727296))

(assert (= (and b!6726434 ((_ is Union!16553) (regTwo!33618 (regTwo!33618 r!7292)))) b!6727297))

(declare-fun b!6727300 () Bool)

(declare-fun e!4064379 () Bool)

(declare-fun tp!1844478 () Bool)

(assert (=> b!6727300 (= e!4064379 tp!1844478)))

(assert (=> b!6726450 (= tp!1844253 e!4064379)))

(declare-fun b!6727298 () Bool)

(assert (=> b!6727298 (= e!4064379 tp_is_empty!42359)))

(declare-fun b!6727299 () Bool)

(declare-fun tp!1844475 () Bool)

(declare-fun tp!1844476 () Bool)

(assert (=> b!6727299 (= e!4064379 (and tp!1844475 tp!1844476))))

(declare-fun b!6727301 () Bool)

(declare-fun tp!1844477 () Bool)

(declare-fun tp!1844479 () Bool)

(assert (=> b!6727301 (= e!4064379 (and tp!1844477 tp!1844479))))

(assert (= (and b!6726450 ((_ is ElementMatch!16553) (regOne!33619 (regTwo!33619 r!7292)))) b!6727298))

(assert (= (and b!6726450 ((_ is Concat!25398) (regOne!33619 (regTwo!33619 r!7292)))) b!6727299))

(assert (= (and b!6726450 ((_ is Star!16553) (regOne!33619 (regTwo!33619 r!7292)))) b!6727300))

(assert (= (and b!6726450 ((_ is Union!16553) (regOne!33619 (regTwo!33619 r!7292)))) b!6727301))

(declare-fun b!6727304 () Bool)

(declare-fun e!4064380 () Bool)

(declare-fun tp!1844483 () Bool)

(assert (=> b!6727304 (= e!4064380 tp!1844483)))

(assert (=> b!6726450 (= tp!1844255 e!4064380)))

(declare-fun b!6727302 () Bool)

(assert (=> b!6727302 (= e!4064380 tp_is_empty!42359)))

(declare-fun b!6727303 () Bool)

(declare-fun tp!1844480 () Bool)

(declare-fun tp!1844481 () Bool)

(assert (=> b!6727303 (= e!4064380 (and tp!1844480 tp!1844481))))

(declare-fun b!6727305 () Bool)

(declare-fun tp!1844482 () Bool)

(declare-fun tp!1844484 () Bool)

(assert (=> b!6727305 (= e!4064380 (and tp!1844482 tp!1844484))))

(assert (= (and b!6726450 ((_ is ElementMatch!16553) (regTwo!33619 (regTwo!33619 r!7292)))) b!6727302))

(assert (= (and b!6726450 ((_ is Concat!25398) (regTwo!33619 (regTwo!33619 r!7292)))) b!6727303))

(assert (= (and b!6726450 ((_ is Star!16553) (regTwo!33619 (regTwo!33619 r!7292)))) b!6727304))

(assert (= (and b!6726450 ((_ is Union!16553) (regTwo!33619 (regTwo!33619 r!7292)))) b!6727305))

(declare-fun b!6727308 () Bool)

(declare-fun e!4064381 () Bool)

(declare-fun tp!1844488 () Bool)

(assert (=> b!6727308 (= e!4064381 tp!1844488)))

(assert (=> b!6726436 (= tp!1844235 e!4064381)))

(declare-fun b!6727306 () Bool)

(assert (=> b!6727306 (= e!4064381 tp_is_empty!42359)))

(declare-fun b!6727307 () Bool)

(declare-fun tp!1844485 () Bool)

(declare-fun tp!1844486 () Bool)

(assert (=> b!6727307 (= e!4064381 (and tp!1844485 tp!1844486))))

(declare-fun b!6727309 () Bool)

(declare-fun tp!1844487 () Bool)

(declare-fun tp!1844489 () Bool)

(assert (=> b!6727309 (= e!4064381 (and tp!1844487 tp!1844489))))

(assert (= (and b!6726436 ((_ is ElementMatch!16553) (regOne!33619 (regTwo!33618 r!7292)))) b!6727306))

(assert (= (and b!6726436 ((_ is Concat!25398) (regOne!33619 (regTwo!33618 r!7292)))) b!6727307))

(assert (= (and b!6726436 ((_ is Star!16553) (regOne!33619 (regTwo!33618 r!7292)))) b!6727308))

(assert (= (and b!6726436 ((_ is Union!16553) (regOne!33619 (regTwo!33618 r!7292)))) b!6727309))

(declare-fun b!6727312 () Bool)

(declare-fun e!4064382 () Bool)

(declare-fun tp!1844493 () Bool)

(assert (=> b!6727312 (= e!4064382 tp!1844493)))

(assert (=> b!6726436 (= tp!1844237 e!4064382)))

(declare-fun b!6727310 () Bool)

(assert (=> b!6727310 (= e!4064382 tp_is_empty!42359)))

(declare-fun b!6727311 () Bool)

(declare-fun tp!1844490 () Bool)

(declare-fun tp!1844491 () Bool)

(assert (=> b!6727311 (= e!4064382 (and tp!1844490 tp!1844491))))

(declare-fun b!6727313 () Bool)

(declare-fun tp!1844492 () Bool)

(declare-fun tp!1844494 () Bool)

(assert (=> b!6727313 (= e!4064382 (and tp!1844492 tp!1844494))))

(assert (= (and b!6726436 ((_ is ElementMatch!16553) (regTwo!33619 (regTwo!33618 r!7292)))) b!6727310))

(assert (= (and b!6726436 ((_ is Concat!25398) (regTwo!33619 (regTwo!33618 r!7292)))) b!6727311))

(assert (= (and b!6726436 ((_ is Star!16553) (regTwo!33619 (regTwo!33618 r!7292)))) b!6727312))

(assert (= (and b!6726436 ((_ is Union!16553) (regTwo!33619 (regTwo!33618 r!7292)))) b!6727313))

(declare-fun b!6727314 () Bool)

(declare-fun e!4064383 () Bool)

(declare-fun tp!1844495 () Bool)

(assert (=> b!6727314 (= e!4064383 (and tp_is_empty!42359 tp!1844495))))

(assert (=> b!6726455 (= tp!1844258 e!4064383)))

(assert (= (and b!6726455 ((_ is Cons!65836) (t!379643 (t!379643 s!2326)))) b!6727314))

(declare-fun b!6727316 () Bool)

(declare-fun e!4064385 () Bool)

(declare-fun tp!1844496 () Bool)

(assert (=> b!6727316 (= e!4064385 tp!1844496)))

(declare-fun e!4064384 () Bool)

(declare-fun b!6727315 () Bool)

(declare-fun tp!1844497 () Bool)

(assert (=> b!6727315 (= e!4064384 (and (inv!84629 (h!72283 (t!379642 (t!379642 zl!343)))) e!4064385 tp!1844497))))

(assert (=> b!6726462 (= tp!1844264 e!4064384)))

(assert (= b!6727315 b!6727316))

(assert (= (and b!6726462 ((_ is Cons!65835) (t!379642 (t!379642 zl!343)))) b!6727315))

(declare-fun m!7486938 () Bool)

(assert (=> b!6727315 m!7486938))

(declare-fun b!6727317 () Bool)

(declare-fun e!4064386 () Bool)

(declare-fun tp!1844498 () Bool)

(declare-fun tp!1844499 () Bool)

(assert (=> b!6727317 (= e!4064386 (and tp!1844498 tp!1844499))))

(assert (=> b!6726463 (= tp!1844263 e!4064386)))

(assert (= (and b!6726463 ((_ is Cons!65834) (exprs!6437 (h!72283 (t!379642 zl!343))))) b!6727317))

(declare-fun b!6727320 () Bool)

(declare-fun e!4064387 () Bool)

(declare-fun tp!1844503 () Bool)

(assert (=> b!6727320 (= e!4064387 tp!1844503)))

(assert (=> b!6726448 (= tp!1844251 e!4064387)))

(declare-fun b!6727318 () Bool)

(assert (=> b!6727318 (= e!4064387 tp_is_empty!42359)))

(declare-fun b!6727319 () Bool)

(declare-fun tp!1844500 () Bool)

(declare-fun tp!1844501 () Bool)

(assert (=> b!6727319 (= e!4064387 (and tp!1844500 tp!1844501))))

(declare-fun b!6727321 () Bool)

(declare-fun tp!1844502 () Bool)

(declare-fun tp!1844504 () Bool)

(assert (=> b!6727321 (= e!4064387 (and tp!1844502 tp!1844504))))

(assert (= (and b!6726448 ((_ is ElementMatch!16553) (regOne!33618 (regTwo!33619 r!7292)))) b!6727318))

(assert (= (and b!6726448 ((_ is Concat!25398) (regOne!33618 (regTwo!33619 r!7292)))) b!6727319))

(assert (= (and b!6726448 ((_ is Star!16553) (regOne!33618 (regTwo!33619 r!7292)))) b!6727320))

(assert (= (and b!6726448 ((_ is Union!16553) (regOne!33618 (regTwo!33619 r!7292)))) b!6727321))

(declare-fun b!6727324 () Bool)

(declare-fun e!4064388 () Bool)

(declare-fun tp!1844508 () Bool)

(assert (=> b!6727324 (= e!4064388 tp!1844508)))

(assert (=> b!6726448 (= tp!1844252 e!4064388)))

(declare-fun b!6727322 () Bool)

(assert (=> b!6727322 (= e!4064388 tp_is_empty!42359)))

(declare-fun b!6727323 () Bool)

(declare-fun tp!1844505 () Bool)

(declare-fun tp!1844506 () Bool)

(assert (=> b!6727323 (= e!4064388 (and tp!1844505 tp!1844506))))

(declare-fun b!6727325 () Bool)

(declare-fun tp!1844507 () Bool)

(declare-fun tp!1844509 () Bool)

(assert (=> b!6727325 (= e!4064388 (and tp!1844507 tp!1844509))))

(assert (= (and b!6726448 ((_ is ElementMatch!16553) (regTwo!33618 (regTwo!33619 r!7292)))) b!6727322))

(assert (= (and b!6726448 ((_ is Concat!25398) (regTwo!33618 (regTwo!33619 r!7292)))) b!6727323))

(assert (= (and b!6726448 ((_ is Star!16553) (regTwo!33618 (regTwo!33619 r!7292)))) b!6727324))

(assert (= (and b!6726448 ((_ is Union!16553) (regTwo!33618 (regTwo!33619 r!7292)))) b!6727325))

(declare-fun condSetEmpty!45871 () Bool)

(assert (=> setNonEmpty!45861 (= condSetEmpty!45871 (= setRest!45861 ((as const (Array Context!11874 Bool)) false)))))

(declare-fun setRes!45871 () Bool)

(assert (=> setNonEmpty!45861 (= tp!1844245 setRes!45871)))

(declare-fun setIsEmpty!45871 () Bool)

(assert (=> setIsEmpty!45871 setRes!45871))

(declare-fun tp!1844511 () Bool)

(declare-fun setElem!45871 () Context!11874)

(declare-fun e!4064389 () Bool)

(declare-fun setNonEmpty!45871 () Bool)

(assert (=> setNonEmpty!45871 (= setRes!45871 (and tp!1844511 (inv!84629 setElem!45871) e!4064389))))

(declare-fun setRest!45871 () (InoxSet Context!11874))

(assert (=> setNonEmpty!45871 (= setRest!45861 ((_ map or) (store ((as const (Array Context!11874 Bool)) false) setElem!45871 true) setRest!45871))))

(declare-fun b!6727326 () Bool)

(declare-fun tp!1844510 () Bool)

(assert (=> b!6727326 (= e!4064389 tp!1844510)))

(assert (= (and setNonEmpty!45861 condSetEmpty!45871) setIsEmpty!45871))

(assert (= (and setNonEmpty!45861 (not condSetEmpty!45871)) setNonEmpty!45871))

(assert (= setNonEmpty!45871 b!6727326))

(declare-fun m!7486940 () Bool)

(assert (=> setNonEmpty!45871 m!7486940))

(declare-fun b!6727329 () Bool)

(declare-fun e!4064390 () Bool)

(declare-fun tp!1844515 () Bool)

(assert (=> b!6727329 (= e!4064390 tp!1844515)))

(assert (=> b!6726445 (= tp!1844249 e!4064390)))

(declare-fun b!6727327 () Bool)

(assert (=> b!6727327 (= e!4064390 tp_is_empty!42359)))

(declare-fun b!6727328 () Bool)

(declare-fun tp!1844512 () Bool)

(declare-fun tp!1844513 () Bool)

(assert (=> b!6727328 (= e!4064390 (and tp!1844512 tp!1844513))))

(declare-fun b!6727330 () Bool)

(declare-fun tp!1844514 () Bool)

(declare-fun tp!1844516 () Bool)

(assert (=> b!6727330 (= e!4064390 (and tp!1844514 tp!1844516))))

(assert (= (and b!6726445 ((_ is ElementMatch!16553) (reg!16882 (regOne!33619 r!7292)))) b!6727327))

(assert (= (and b!6726445 ((_ is Concat!25398) (reg!16882 (regOne!33619 r!7292)))) b!6727328))

(assert (= (and b!6726445 ((_ is Star!16553) (reg!16882 (regOne!33619 r!7292)))) b!6727329))

(assert (= (and b!6726445 ((_ is Union!16553) (reg!16882 (regOne!33619 r!7292)))) b!6727330))

(declare-fun b!6727333 () Bool)

(declare-fun e!4064391 () Bool)

(declare-fun tp!1844520 () Bool)

(assert (=> b!6727333 (= e!4064391 tp!1844520)))

(assert (=> b!6726444 (= tp!1844246 e!4064391)))

(declare-fun b!6727331 () Bool)

(assert (=> b!6727331 (= e!4064391 tp_is_empty!42359)))

(declare-fun b!6727332 () Bool)

(declare-fun tp!1844517 () Bool)

(declare-fun tp!1844518 () Bool)

(assert (=> b!6727332 (= e!4064391 (and tp!1844517 tp!1844518))))

(declare-fun b!6727334 () Bool)

(declare-fun tp!1844519 () Bool)

(declare-fun tp!1844521 () Bool)

(assert (=> b!6727334 (= e!4064391 (and tp!1844519 tp!1844521))))

(assert (= (and b!6726444 ((_ is ElementMatch!16553) (regOne!33618 (regOne!33619 r!7292)))) b!6727331))

(assert (= (and b!6726444 ((_ is Concat!25398) (regOne!33618 (regOne!33619 r!7292)))) b!6727332))

(assert (= (and b!6726444 ((_ is Star!16553) (regOne!33618 (regOne!33619 r!7292)))) b!6727333))

(assert (= (and b!6726444 ((_ is Union!16553) (regOne!33618 (regOne!33619 r!7292)))) b!6727334))

(declare-fun b!6727337 () Bool)

(declare-fun e!4064392 () Bool)

(declare-fun tp!1844525 () Bool)

(assert (=> b!6727337 (= e!4064392 tp!1844525)))

(assert (=> b!6726444 (= tp!1844247 e!4064392)))

(declare-fun b!6727335 () Bool)

(assert (=> b!6727335 (= e!4064392 tp_is_empty!42359)))

(declare-fun b!6727336 () Bool)

(declare-fun tp!1844522 () Bool)

(declare-fun tp!1844523 () Bool)

(assert (=> b!6727336 (= e!4064392 (and tp!1844522 tp!1844523))))

(declare-fun b!6727338 () Bool)

(declare-fun tp!1844524 () Bool)

(declare-fun tp!1844526 () Bool)

(assert (=> b!6727338 (= e!4064392 (and tp!1844524 tp!1844526))))

(assert (= (and b!6726444 ((_ is ElementMatch!16553) (regTwo!33618 (regOne!33619 r!7292)))) b!6727335))

(assert (= (and b!6726444 ((_ is Concat!25398) (regTwo!33618 (regOne!33619 r!7292)))) b!6727336))

(assert (= (and b!6726444 ((_ is Star!16553) (regTwo!33618 (regOne!33619 r!7292)))) b!6727337))

(assert (= (and b!6726444 ((_ is Union!16553) (regTwo!33618 (regOne!33619 r!7292)))) b!6727338))

(declare-fun b!6727341 () Bool)

(declare-fun e!4064393 () Bool)

(declare-fun tp!1844530 () Bool)

(assert (=> b!6727341 (= e!4064393 tp!1844530)))

(assert (=> b!6726430 (= tp!1844228 e!4064393)))

(declare-fun b!6727339 () Bool)

(assert (=> b!6727339 (= e!4064393 tp_is_empty!42359)))

(declare-fun b!6727340 () Bool)

(declare-fun tp!1844527 () Bool)

(declare-fun tp!1844528 () Bool)

(assert (=> b!6727340 (= e!4064393 (and tp!1844527 tp!1844528))))

(declare-fun b!6727342 () Bool)

(declare-fun tp!1844529 () Bool)

(declare-fun tp!1844531 () Bool)

(assert (=> b!6727342 (= e!4064393 (and tp!1844529 tp!1844531))))

(assert (= (and b!6726430 ((_ is ElementMatch!16553) (regOne!33618 (regOne!33618 r!7292)))) b!6727339))

(assert (= (and b!6726430 ((_ is Concat!25398) (regOne!33618 (regOne!33618 r!7292)))) b!6727340))

(assert (= (and b!6726430 ((_ is Star!16553) (regOne!33618 (regOne!33618 r!7292)))) b!6727341))

(assert (= (and b!6726430 ((_ is Union!16553) (regOne!33618 (regOne!33618 r!7292)))) b!6727342))

(declare-fun b!6727345 () Bool)

(declare-fun e!4064394 () Bool)

(declare-fun tp!1844535 () Bool)

(assert (=> b!6727345 (= e!4064394 tp!1844535)))

(assert (=> b!6726430 (= tp!1844229 e!4064394)))

(declare-fun b!6727343 () Bool)

(assert (=> b!6727343 (= e!4064394 tp_is_empty!42359)))

(declare-fun b!6727344 () Bool)

(declare-fun tp!1844532 () Bool)

(declare-fun tp!1844533 () Bool)

(assert (=> b!6727344 (= e!4064394 (and tp!1844532 tp!1844533))))

(declare-fun b!6727346 () Bool)

(declare-fun tp!1844534 () Bool)

(declare-fun tp!1844536 () Bool)

(assert (=> b!6727346 (= e!4064394 (and tp!1844534 tp!1844536))))

(assert (= (and b!6726430 ((_ is ElementMatch!16553) (regTwo!33618 (regOne!33618 r!7292)))) b!6727343))

(assert (= (and b!6726430 ((_ is Concat!25398) (regTwo!33618 (regOne!33618 r!7292)))) b!6727344))

(assert (= (and b!6726430 ((_ is Star!16553) (regTwo!33618 (regOne!33618 r!7292)))) b!6727345))

(assert (= (and b!6726430 ((_ is Union!16553) (regTwo!33618 (regOne!33618 r!7292)))) b!6727346))

(declare-fun b!6727349 () Bool)

(declare-fun e!4064395 () Bool)

(declare-fun tp!1844540 () Bool)

(assert (=> b!6727349 (= e!4064395 tp!1844540)))

(assert (=> b!6726446 (= tp!1844248 e!4064395)))

(declare-fun b!6727347 () Bool)

(assert (=> b!6727347 (= e!4064395 tp_is_empty!42359)))

(declare-fun b!6727348 () Bool)

(declare-fun tp!1844537 () Bool)

(declare-fun tp!1844538 () Bool)

(assert (=> b!6727348 (= e!4064395 (and tp!1844537 tp!1844538))))

(declare-fun b!6727350 () Bool)

(declare-fun tp!1844539 () Bool)

(declare-fun tp!1844541 () Bool)

(assert (=> b!6727350 (= e!4064395 (and tp!1844539 tp!1844541))))

(assert (= (and b!6726446 ((_ is ElementMatch!16553) (regOne!33619 (regOne!33619 r!7292)))) b!6727347))

(assert (= (and b!6726446 ((_ is Concat!25398) (regOne!33619 (regOne!33619 r!7292)))) b!6727348))

(assert (= (and b!6726446 ((_ is Star!16553) (regOne!33619 (regOne!33619 r!7292)))) b!6727349))

(assert (= (and b!6726446 ((_ is Union!16553) (regOne!33619 (regOne!33619 r!7292)))) b!6727350))

(declare-fun b!6727353 () Bool)

(declare-fun e!4064396 () Bool)

(declare-fun tp!1844545 () Bool)

(assert (=> b!6727353 (= e!4064396 tp!1844545)))

(assert (=> b!6726446 (= tp!1844250 e!4064396)))

(declare-fun b!6727351 () Bool)

(assert (=> b!6727351 (= e!4064396 tp_is_empty!42359)))

(declare-fun b!6727352 () Bool)

(declare-fun tp!1844542 () Bool)

(declare-fun tp!1844543 () Bool)

(assert (=> b!6727352 (= e!4064396 (and tp!1844542 tp!1844543))))

(declare-fun b!6727354 () Bool)

(declare-fun tp!1844544 () Bool)

(declare-fun tp!1844546 () Bool)

(assert (=> b!6727354 (= e!4064396 (and tp!1844544 tp!1844546))))

(assert (= (and b!6726446 ((_ is ElementMatch!16553) (regTwo!33619 (regOne!33619 r!7292)))) b!6727351))

(assert (= (and b!6726446 ((_ is Concat!25398) (regTwo!33619 (regOne!33619 r!7292)))) b!6727352))

(assert (= (and b!6726446 ((_ is Star!16553) (regTwo!33619 (regOne!33619 r!7292)))) b!6727353))

(assert (= (and b!6726446 ((_ is Union!16553) (regTwo!33619 (regOne!33619 r!7292)))) b!6727354))

(declare-fun b!6727357 () Bool)

(declare-fun e!4064397 () Bool)

(declare-fun tp!1844550 () Bool)

(assert (=> b!6727357 (= e!4064397 tp!1844550)))

(assert (=> b!6726431 (= tp!1844231 e!4064397)))

(declare-fun b!6727355 () Bool)

(assert (=> b!6727355 (= e!4064397 tp_is_empty!42359)))

(declare-fun b!6727356 () Bool)

(declare-fun tp!1844547 () Bool)

(declare-fun tp!1844548 () Bool)

(assert (=> b!6727356 (= e!4064397 (and tp!1844547 tp!1844548))))

(declare-fun b!6727358 () Bool)

(declare-fun tp!1844549 () Bool)

(declare-fun tp!1844551 () Bool)

(assert (=> b!6727358 (= e!4064397 (and tp!1844549 tp!1844551))))

(assert (= (and b!6726431 ((_ is ElementMatch!16553) (reg!16882 (regOne!33618 r!7292)))) b!6727355))

(assert (= (and b!6726431 ((_ is Concat!25398) (reg!16882 (regOne!33618 r!7292)))) b!6727356))

(assert (= (and b!6726431 ((_ is Star!16553) (reg!16882 (regOne!33618 r!7292)))) b!6727357))

(assert (= (and b!6726431 ((_ is Union!16553) (reg!16882 (regOne!33618 r!7292)))) b!6727358))

(declare-fun b!6727361 () Bool)

(declare-fun e!4064398 () Bool)

(declare-fun tp!1844555 () Bool)

(assert (=> b!6727361 (= e!4064398 tp!1844555)))

(assert (=> b!6726432 (= tp!1844230 e!4064398)))

(declare-fun b!6727359 () Bool)

(assert (=> b!6727359 (= e!4064398 tp_is_empty!42359)))

(declare-fun b!6727360 () Bool)

(declare-fun tp!1844552 () Bool)

(declare-fun tp!1844553 () Bool)

(assert (=> b!6727360 (= e!4064398 (and tp!1844552 tp!1844553))))

(declare-fun b!6727362 () Bool)

(declare-fun tp!1844554 () Bool)

(declare-fun tp!1844556 () Bool)

(assert (=> b!6727362 (= e!4064398 (and tp!1844554 tp!1844556))))

(assert (= (and b!6726432 ((_ is ElementMatch!16553) (regOne!33619 (regOne!33618 r!7292)))) b!6727359))

(assert (= (and b!6726432 ((_ is Concat!25398) (regOne!33619 (regOne!33618 r!7292)))) b!6727360))

(assert (= (and b!6726432 ((_ is Star!16553) (regOne!33619 (regOne!33618 r!7292)))) b!6727361))

(assert (= (and b!6726432 ((_ is Union!16553) (regOne!33619 (regOne!33618 r!7292)))) b!6727362))

(declare-fun b!6727365 () Bool)

(declare-fun e!4064399 () Bool)

(declare-fun tp!1844560 () Bool)

(assert (=> b!6727365 (= e!4064399 tp!1844560)))

(assert (=> b!6726432 (= tp!1844232 e!4064399)))

(declare-fun b!6727363 () Bool)

(assert (=> b!6727363 (= e!4064399 tp_is_empty!42359)))

(declare-fun b!6727364 () Bool)

(declare-fun tp!1844557 () Bool)

(declare-fun tp!1844558 () Bool)

(assert (=> b!6727364 (= e!4064399 (and tp!1844557 tp!1844558))))

(declare-fun b!6727366 () Bool)

(declare-fun tp!1844559 () Bool)

(declare-fun tp!1844561 () Bool)

(assert (=> b!6727366 (= e!4064399 (and tp!1844559 tp!1844561))))

(assert (= (and b!6726432 ((_ is ElementMatch!16553) (regTwo!33619 (regOne!33618 r!7292)))) b!6727363))

(assert (= (and b!6726432 ((_ is Concat!25398) (regTwo!33619 (regOne!33618 r!7292)))) b!6727364))

(assert (= (and b!6726432 ((_ is Star!16553) (regTwo!33619 (regOne!33618 r!7292)))) b!6727365))

(assert (= (and b!6726432 ((_ is Union!16553) (regTwo!33619 (regOne!33618 r!7292)))) b!6727366))

(declare-fun b!6727369 () Bool)

(declare-fun e!4064400 () Bool)

(declare-fun tp!1844565 () Bool)

(assert (=> b!6727369 (= e!4064400 tp!1844565)))

(assert (=> b!6726437 (= tp!1844238 e!4064400)))

(declare-fun b!6727367 () Bool)

(assert (=> b!6727367 (= e!4064400 tp_is_empty!42359)))

(declare-fun b!6727368 () Bool)

(declare-fun tp!1844562 () Bool)

(declare-fun tp!1844563 () Bool)

(assert (=> b!6727368 (= e!4064400 (and tp!1844562 tp!1844563))))

(declare-fun b!6727370 () Bool)

(declare-fun tp!1844564 () Bool)

(declare-fun tp!1844566 () Bool)

(assert (=> b!6727370 (= e!4064400 (and tp!1844564 tp!1844566))))

(assert (= (and b!6726437 ((_ is ElementMatch!16553) (h!72282 (exprs!6437 (h!72283 zl!343))))) b!6727367))

(assert (= (and b!6726437 ((_ is Concat!25398) (h!72282 (exprs!6437 (h!72283 zl!343))))) b!6727368))

(assert (= (and b!6726437 ((_ is Star!16553) (h!72282 (exprs!6437 (h!72283 zl!343))))) b!6727369))

(assert (= (and b!6726437 ((_ is Union!16553) (h!72282 (exprs!6437 (h!72283 zl!343))))) b!6727370))

(declare-fun b!6727371 () Bool)

(declare-fun e!4064401 () Bool)

(declare-fun tp!1844567 () Bool)

(declare-fun tp!1844568 () Bool)

(assert (=> b!6727371 (= e!4064401 (and tp!1844567 tp!1844568))))

(assert (=> b!6726437 (= tp!1844239 e!4064401)))

(assert (= (and b!6726437 ((_ is Cons!65834) (t!379641 (exprs!6437 (h!72283 zl!343))))) b!6727371))

(declare-fun b!6727374 () Bool)

(declare-fun e!4064402 () Bool)

(declare-fun tp!1844572 () Bool)

(assert (=> b!6727374 (= e!4064402 tp!1844572)))

(assert (=> b!6726465 (= tp!1844265 e!4064402)))

(declare-fun b!6727372 () Bool)

(assert (=> b!6727372 (= e!4064402 tp_is_empty!42359)))

(declare-fun b!6727373 () Bool)

(declare-fun tp!1844569 () Bool)

(declare-fun tp!1844570 () Bool)

(assert (=> b!6727373 (= e!4064402 (and tp!1844569 tp!1844570))))

(declare-fun b!6727375 () Bool)

(declare-fun tp!1844571 () Bool)

(declare-fun tp!1844573 () Bool)

(assert (=> b!6727375 (= e!4064402 (and tp!1844571 tp!1844573))))

(assert (= (and b!6726465 ((_ is ElementMatch!16553) (regOne!33618 (reg!16882 r!7292)))) b!6727372))

(assert (= (and b!6726465 ((_ is Concat!25398) (regOne!33618 (reg!16882 r!7292)))) b!6727373))

(assert (= (and b!6726465 ((_ is Star!16553) (regOne!33618 (reg!16882 r!7292)))) b!6727374))

(assert (= (and b!6726465 ((_ is Union!16553) (regOne!33618 (reg!16882 r!7292)))) b!6727375))

(declare-fun b!6727378 () Bool)

(declare-fun e!4064403 () Bool)

(declare-fun tp!1844577 () Bool)

(assert (=> b!6727378 (= e!4064403 tp!1844577)))

(assert (=> b!6726465 (= tp!1844266 e!4064403)))

(declare-fun b!6727376 () Bool)

(assert (=> b!6727376 (= e!4064403 tp_is_empty!42359)))

(declare-fun b!6727377 () Bool)

(declare-fun tp!1844574 () Bool)

(declare-fun tp!1844575 () Bool)

(assert (=> b!6727377 (= e!4064403 (and tp!1844574 tp!1844575))))

(declare-fun b!6727379 () Bool)

(declare-fun tp!1844576 () Bool)

(declare-fun tp!1844578 () Bool)

(assert (=> b!6727379 (= e!4064403 (and tp!1844576 tp!1844578))))

(assert (= (and b!6726465 ((_ is ElementMatch!16553) (regTwo!33618 (reg!16882 r!7292)))) b!6727376))

(assert (= (and b!6726465 ((_ is Concat!25398) (regTwo!33618 (reg!16882 r!7292)))) b!6727377))

(assert (= (and b!6726465 ((_ is Star!16553) (regTwo!33618 (reg!16882 r!7292)))) b!6727378))

(assert (= (and b!6726465 ((_ is Union!16553) (regTwo!33618 (reg!16882 r!7292)))) b!6727379))

(declare-fun b!6727382 () Bool)

(declare-fun e!4064404 () Bool)

(declare-fun tp!1844582 () Bool)

(assert (=> b!6727382 (= e!4064404 tp!1844582)))

(assert (=> b!6726466 (= tp!1844268 e!4064404)))

(declare-fun b!6727380 () Bool)

(assert (=> b!6727380 (= e!4064404 tp_is_empty!42359)))

(declare-fun b!6727381 () Bool)

(declare-fun tp!1844579 () Bool)

(declare-fun tp!1844580 () Bool)

(assert (=> b!6727381 (= e!4064404 (and tp!1844579 tp!1844580))))

(declare-fun b!6727383 () Bool)

(declare-fun tp!1844581 () Bool)

(declare-fun tp!1844583 () Bool)

(assert (=> b!6727383 (= e!4064404 (and tp!1844581 tp!1844583))))

(assert (= (and b!6726466 ((_ is ElementMatch!16553) (reg!16882 (reg!16882 r!7292)))) b!6727380))

(assert (= (and b!6726466 ((_ is Concat!25398) (reg!16882 (reg!16882 r!7292)))) b!6727381))

(assert (= (and b!6726466 ((_ is Star!16553) (reg!16882 (reg!16882 r!7292)))) b!6727382))

(assert (= (and b!6726466 ((_ is Union!16553) (reg!16882 (reg!16882 r!7292)))) b!6727383))

(declare-fun b!6727386 () Bool)

(declare-fun e!4064405 () Bool)

(declare-fun tp!1844587 () Bool)

(assert (=> b!6727386 (= e!4064405 tp!1844587)))

(assert (=> b!6726467 (= tp!1844267 e!4064405)))

(declare-fun b!6727384 () Bool)

(assert (=> b!6727384 (= e!4064405 tp_is_empty!42359)))

(declare-fun b!6727385 () Bool)

(declare-fun tp!1844584 () Bool)

(declare-fun tp!1844585 () Bool)

(assert (=> b!6727385 (= e!4064405 (and tp!1844584 tp!1844585))))

(declare-fun b!6727387 () Bool)

(declare-fun tp!1844586 () Bool)

(declare-fun tp!1844588 () Bool)

(assert (=> b!6727387 (= e!4064405 (and tp!1844586 tp!1844588))))

(assert (= (and b!6726467 ((_ is ElementMatch!16553) (regOne!33619 (reg!16882 r!7292)))) b!6727384))

(assert (= (and b!6726467 ((_ is Concat!25398) (regOne!33619 (reg!16882 r!7292)))) b!6727385))

(assert (= (and b!6726467 ((_ is Star!16553) (regOne!33619 (reg!16882 r!7292)))) b!6727386))

(assert (= (and b!6726467 ((_ is Union!16553) (regOne!33619 (reg!16882 r!7292)))) b!6727387))

(declare-fun b!6727390 () Bool)

(declare-fun e!4064406 () Bool)

(declare-fun tp!1844592 () Bool)

(assert (=> b!6727390 (= e!4064406 tp!1844592)))

(assert (=> b!6726467 (= tp!1844269 e!4064406)))

(declare-fun b!6727388 () Bool)

(assert (=> b!6727388 (= e!4064406 tp_is_empty!42359)))

(declare-fun b!6727389 () Bool)

(declare-fun tp!1844589 () Bool)

(declare-fun tp!1844590 () Bool)

(assert (=> b!6727389 (= e!4064406 (and tp!1844589 tp!1844590))))

(declare-fun b!6727391 () Bool)

(declare-fun tp!1844591 () Bool)

(declare-fun tp!1844593 () Bool)

(assert (=> b!6727391 (= e!4064406 (and tp!1844591 tp!1844593))))

(assert (= (and b!6726467 ((_ is ElementMatch!16553) (regTwo!33619 (reg!16882 r!7292)))) b!6727388))

(assert (= (and b!6726467 ((_ is Concat!25398) (regTwo!33619 (reg!16882 r!7292)))) b!6727389))

(assert (= (and b!6726467 ((_ is Star!16553) (regTwo!33619 (reg!16882 r!7292)))) b!6727390))

(assert (= (and b!6726467 ((_ is Union!16553) (regTwo!33619 (reg!16882 r!7292)))) b!6727391))

(declare-fun b_lambda!253275 () Bool)

(assert (= b_lambda!253247 (or d!2113448 b_lambda!253275)))

(declare-fun bs!1789368 () Bool)

(declare-fun d!2113890 () Bool)

(assert (= bs!1789368 (and d!2113890 d!2113448)))

(assert (=> bs!1789368 (= (dynLambda!26258 lambda!377346 (h!72282 (exprs!6437 (h!72283 zl!343)))) (validRegex!8289 (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(declare-fun m!7486942 () Bool)

(assert (=> bs!1789368 m!7486942))

(assert (=> b!6726970 d!2113890))

(declare-fun b_lambda!253277 () Bool)

(assert (= b_lambda!253229 (or d!2113420 b_lambda!253277)))

(declare-fun bs!1789369 () Bool)

(declare-fun d!2113892 () Bool)

(assert (= bs!1789369 (and d!2113892 d!2113420)))

(assert (=> bs!1789369 (= (dynLambda!26258 lambda!377333 (h!72282 (exprs!6437 (h!72283 zl!343)))) (validRegex!8289 (h!72282 (exprs!6437 (h!72283 zl!343)))))))

(assert (=> bs!1789369 m!7486942))

(assert (=> b!6726642 d!2113892))

(declare-fun b_lambda!253279 () Bool)

(assert (= b_lambda!253237 (or d!2113450 b_lambda!253279)))

(declare-fun bs!1789370 () Bool)

(declare-fun d!2113894 () Bool)

(assert (= bs!1789370 (and d!2113894 d!2113450)))

(assert (=> bs!1789370 (= (dynLambda!26258 lambda!377347 (h!72282 (exprs!6437 (Context!11875 lt!2437194)))) (validRegex!8289 (h!72282 (exprs!6437 (Context!11875 lt!2437194)))))))

(declare-fun m!7486944 () Bool)

(assert (=> bs!1789370 m!7486944))

(assert (=> b!6726763 d!2113894))

(declare-fun b_lambda!253281 () Bool)

(assert (= b_lambda!253249 (or b!6725759 b_lambda!253281)))

(assert (=> d!2113816 d!2113534))

(declare-fun b_lambda!253283 () Bool)

(assert (= b_lambda!253271 (or d!2113524 b_lambda!253283)))

(declare-fun bs!1789371 () Bool)

(declare-fun d!2113896 () Bool)

(assert (= bs!1789371 (and d!2113896 d!2113524)))

(assert (=> bs!1789371 (= (dynLambda!26258 lambda!377397 (h!72282 (exprs!6437 setElem!45855))) (validRegex!8289 (h!72282 (exprs!6437 setElem!45855))))))

(declare-fun m!7486946 () Bool)

(assert (=> bs!1789371 m!7486946))

(assert (=> b!6727164 d!2113896))

(declare-fun b_lambda!253285 () Bool)

(assert (= b_lambda!253269 (or d!2113470 b_lambda!253285)))

(declare-fun bs!1789372 () Bool)

(declare-fun d!2113898 () Bool)

(assert (= bs!1789372 (and d!2113898 d!2113470)))

(assert (=> bs!1789372 (= (dynLambda!26258 lambda!377362 (h!72282 lt!2437241)) (validRegex!8289 (h!72282 lt!2437241)))))

(declare-fun m!7486948 () Bool)

(assert (=> bs!1789372 m!7486948))

(assert (=> b!6727162 d!2113898))

(declare-fun b_lambda!253287 () Bool)

(assert (= b_lambda!253273 (or d!2113464 b_lambda!253287)))

(declare-fun bs!1789373 () Bool)

(declare-fun d!2113900 () Bool)

(assert (= bs!1789373 (and d!2113900 d!2113464)))

(assert (=> bs!1789373 (= (dynLambda!26258 lambda!377359 (h!72282 (unfocusZipperList!1974 zl!343))) (validRegex!8289 (h!72282 (unfocusZipperList!1974 zl!343))))))

(declare-fun m!7486950 () Bool)

(assert (=> bs!1789373 m!7486950))

(assert (=> b!6727186 d!2113900))

(declare-fun b_lambda!253289 () Bool)

(assert (= b_lambda!253231 (or b!6725759 b_lambda!253289)))

(assert (=> d!2113660 d!2113536))

(check-sat (not b!6727368) (not b!6726987) (not b!6727188) (not b!6727311) (not b!6727391) (not b!6727169) (not bm!607381) (not b!6727150) (not b!6727252) (not bm!607445) (not b_lambda!253283) (not b!6727272) (not b!6727378) (not d!2113624) (not b_lambda!253285) (not bm!607352) (not b!6726722) (not b!6727358) (not b_lambda!253277) (not b!6726984) (not b!6727204) (not b!6727330) (not d!2113658) (not b!6727253) (not b!6726602) (not bs!1789369) (not d!2113690) (not b!6727187) (not b!6727280) (not b!6727361) (not b!6727326) (not d!2113878) (not b!6727324) (not d!2113828) (not b!6727257) (not b!6727248) (not b!6727350) (not b!6727201) (not b!6727279) (not b!6727148) (not b!6727305) (not b!6727292) (not d!2113612) (not b_lambda!253287) (not b!6727349) (not b!6727375) tp_is_empty!42359 (not b!6727303) (not b!6726579) (not b!6727340) (not bs!1789370) (not b!6726832) (not b!6727153) (not bm!607384) (not bm!607353) (not bm!607394) (not bm!607427) (not b!6727018) (not b!6727319) (not bm!607430) (not d!2113848) (not b!6726607) (not bm!607462) (not b!6726665) (not b!6726971) (not bm!607435) (not b!6727291) (not d!2113706) (not b!6727390) (not bm!607437) (not b!6727287) (not b_lambda!253289) (not bm!607444) (not b!6727373) (not bm!607375) (not b!6726581) (not b!6727297) (not b!6727337) (not bm!607434) (not bm!607369) (not b!6727357) (not d!2113660) (not b!6727304) (not b!6726625) (not b!6726613) (not b!6727389) (not bm!607464) (not b!6727276) (not bm!607357) (not b!6727259) (not b!6727336) (not b!6727386) (not bs!1789373) (not bs!1789371) (not bm!607441) (not b!6726644) (not b!6727329) (not b!6727283) (not b!6727387) (not d!2113632) (not b!6726575) (not b!6727284) (not b!6726645) (not bm!607433) (not bm!607350) (not b!6726585) (not b!6727370) (not bm!607351) (not b!6726974) (not bs!1789372) (not d!2113816) (not b!6727160) (not b!6726605) (not b!6726803) (not b!6727352) (not b!6726732) (not d!2113810) (not d!2113824) (not b!6726990) (not b!6727369) (not b!6727211) (not bm!607365) (not b!6726988) (not b!6727293) (not d!2113856) (not b!6727379) (not b!6726663) (not b!6727199) (not b!6726723) (not d!2113880) (not b!6727312) (not b!6726643) (not b!6727314) (not b!6727371) (not bm!607463) (not d!2113636) (not b!6727179) (not b!6727332) (not b!6727245) (not b!6727301) (not b!6727017) (not b!6726768) (not b!6727315) (not b!6726578) (not d!2113686) (not b!6726573) (not d!2113596) (not bm!607368) (not d!2113616) (not d!2113768) (not b!6727381) (not bm!607455) (not bm!607431) (not b!6726764) (not bs!1789368) (not b!6726702) (not b!6726985) (not bm!607360) (not d!2113766) (not b!6727333) (not b!6727154) (not bm!607460) (not setNonEmpty!45871) (not b!6727354) (not d!2113688) (not b!6727338) (not b!6727244) (not b!6727328) (not d!2113618) (not b!6727365) (not bm!607457) (not b!6727289) (not d!2113876) (not d!2113628) (not b!6726849) (not d!2113872) (not b!6727364) (not setNonEmpty!45865) (not d!2113582) (not b!6727346) (not b!6727163) (not b!6726617) (not b!6727383) (not bm!607383) (not b!6726983) (not b!6726804) (not b!6726761) (not b!6727281) (not bm!607396) (not b!6727174) (not b!6727278) (not b_lambda!253279) (not b!6726599) (not b!6727313) (not b!6727255) (not b!6727342) (not b!6727285) (not b!6727382) (not bm!607436) (not b!6727295) (not b!6727165) (not b!6727299) (not b!6727249) (not b!6727385) (not b!6727344) (not b!6727307) (not b!6727300) (not b!6727353) (not b!6727317) (not b!6726656) (not b_lambda!253223) (not b!6726660) (not b!6727366) (not b!6727236) (not d!2113764) (not b!6727205) (not d!2113644) (not b!6727308) (not bm!607376) (not b!6727273) (not b!6727377) (not b_lambda!253225) (not b!6726731) (not b!6726773) (not bm!607367) (not b!6727374) (not b!6727345) (not b!6727320) (not b!6727348) (not d!2113692) (not b!6726730) (not b!6727334) (not bm!607370) (not b!6727316) (not b!6726745) (not d!2113822) (not b_lambda!253281) (not bm!607397) (not bm!607428) (not b!6727260) (not b!6727288) (not b!6726611) (not b_lambda!253275) (not d!2113832) (not b!6726664) (not d!2113834) (not b!6727258) (not b!6726610) (not b!6727321) (not b!6727360) (not setNonEmpty!45864) (not b!6727362) (not d!2113882) (not b!6726658) (not b!6727341) (not d!2113874) (not d!2113614) (not b!6726953) (not b!6726989) (not b!6727356) (not b!6727325) (not b!6727207) (not b!6727309) (not bm!607359) (not b!6727296) (not b!6726601) (not bm!607443) (not b!6727323) (not bm!607345) (not b!6726659) (not b!6727156) (not b!6726814))
(check-sat)

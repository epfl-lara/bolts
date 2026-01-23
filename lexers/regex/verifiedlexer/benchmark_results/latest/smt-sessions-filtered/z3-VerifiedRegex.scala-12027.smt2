; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674728 () Bool)

(assert start!674728)

(declare-fun b!7007752 () Bool)

(assert (=> b!7007752 true))

(declare-fun b!7007755 () Bool)

(assert (=> b!7007755 true))

(declare-fun b!7007762 () Bool)

(assert (=> b!7007762 true))

(declare-fun b!7007750 () Bool)

(declare-fun e!4212322 () Bool)

(declare-fun e!4212309 () Bool)

(assert (=> b!7007750 (= e!4212322 e!4212309)))

(declare-fun res!2859210 () Bool)

(assert (=> b!7007750 (=> res!2859210 e!4212309)))

(declare-datatypes ((C!34872 0))(
  ( (C!34873 (val!27138 Int)) )
))
(declare-datatypes ((Regex!17301 0))(
  ( (ElementMatch!17301 (c!1301523 C!34872)) (Concat!26146 (regOne!35114 Regex!17301) (regTwo!35114 Regex!17301)) (EmptyExpr!17301) (Star!17301 (reg!17630 Regex!17301)) (EmptyLang!17301) (Union!17301 (regOne!35115 Regex!17301) (regTwo!35115 Regex!17301)) )
))
(declare-datatypes ((List!67448 0))(
  ( (Nil!67324) (Cons!67324 (h!73772 Regex!17301) (t!381203 List!67448)) )
))
(declare-datatypes ((Context!12594 0))(
  ( (Context!12595 (exprs!6797 List!67448)) )
))
(declare-fun lt!2501828 () Context!12594)

(declare-fun nullable!7061 (Regex!17301) Bool)

(assert (=> b!7007750 (= res!2859210 (not (nullable!7061 (h!73772 (exprs!6797 lt!2501828)))))))

(declare-fun lt!2501844 () List!67448)

(declare-fun tail!13367 (List!67448) List!67448)

(assert (=> b!7007750 (= lt!2501844 (tail!13367 (exprs!6797 lt!2501828)))))

(declare-fun b!7007751 () Bool)

(declare-fun e!4212321 () Bool)

(declare-fun tp!1931981 () Bool)

(assert (=> b!7007751 (= e!4212321 tp!1931981)))

(declare-fun e!4212320 () Bool)

(declare-fun e!4212317 () Bool)

(assert (=> b!7007752 (= e!4212320 (not e!4212317))))

(declare-fun res!2859215 () Bool)

(assert (=> b!7007752 (=> res!2859215 e!4212317)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2501829 () (InoxSet Context!12594))

(declare-datatypes ((List!67449 0))(
  ( (Nil!67325) (Cons!67325 (h!73773 C!34872) (t!381204 List!67449)) )
))
(declare-fun s!7408 () List!67449)

(declare-fun matchZipper!2841 ((InoxSet Context!12594) List!67449) Bool)

(assert (=> b!7007752 (= res!2859215 (not (matchZipper!2841 lt!2501829 s!7408)))))

(declare-fun lt!2501832 () Context!12594)

(assert (=> b!7007752 (= lt!2501829 (store ((as const (Array Context!12594 Bool)) false) lt!2501832 true))))

(declare-fun lt!2501838 () (InoxSet Context!12594))

(declare-fun lambda!407503 () Int)

(declare-fun getWitness!1235 ((InoxSet Context!12594) Int) Context!12594)

(assert (=> b!7007752 (= lt!2501832 (getWitness!1235 lt!2501838 lambda!407503))))

(declare-datatypes ((List!67450 0))(
  ( (Nil!67326) (Cons!67326 (h!73774 Context!12594) (t!381205 List!67450)) )
))
(declare-fun lt!2501851 () List!67450)

(declare-fun exists!3137 (List!67450 Int) Bool)

(assert (=> b!7007752 (exists!3137 lt!2501851 lambda!407503)))

(declare-datatypes ((Unit!161280 0))(
  ( (Unit!161281) )
))
(declare-fun lt!2501854 () Unit!161280)

(declare-fun lemmaZipperMatchesExistsMatchingContext!270 (List!67450 List!67449) Unit!161280)

(assert (=> b!7007752 (= lt!2501854 (lemmaZipperMatchesExistsMatchingContext!270 lt!2501851 s!7408))))

(declare-fun toList!10661 ((InoxSet Context!12594)) List!67450)

(assert (=> b!7007752 (= lt!2501851 (toList!10661 lt!2501838))))

(declare-fun b!7007753 () Bool)

(declare-fun e!4212318 () Bool)

(declare-fun e!4212319 () Bool)

(assert (=> b!7007753 (= e!4212318 e!4212319)))

(declare-fun res!2859213 () Bool)

(assert (=> b!7007753 (=> res!2859213 e!4212319)))

(declare-fun lt!2501848 () (InoxSet Context!12594))

(assert (=> b!7007753 (= res!2859213 (matchZipper!2841 lt!2501848 (t!381204 s!7408)))))

(declare-fun lambda!407505 () Int)

(declare-fun lt!2501853 () Unit!161280)

(declare-fun ct2!306 () Context!12594)

(declare-fun lemmaConcatPreservesForall!637 (List!67448 List!67448 Int) Unit!161280)

(assert (=> b!7007753 (= lt!2501853 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun b!7007754 () Bool)

(declare-fun res!2859212 () Bool)

(assert (=> b!7007754 (=> (not res!2859212) (not e!4212320))))

(get-info :version)

(assert (=> b!7007754 (= res!2859212 ((_ is Cons!67325) s!7408))))

(declare-fun e!4212312 () Bool)

(assert (=> b!7007755 (= e!4212317 e!4212312)))

(declare-fun res!2859216 () Bool)

(assert (=> b!7007755 (=> res!2859216 e!4212312)))

(declare-fun z1!570 () (InoxSet Context!12594))

(declare-fun lt!2501847 () Context!12594)

(assert (=> b!7007755 (= res!2859216 (or (not (= lt!2501847 lt!2501832)) (not (select z1!570 lt!2501828))))))

(declare-fun ++!15292 (List!67448 List!67448) List!67448)

(assert (=> b!7007755 (= lt!2501847 (Context!12595 (++!15292 (exprs!6797 lt!2501828) (exprs!6797 ct2!306))))))

(declare-fun lt!2501839 () Unit!161280)

(assert (=> b!7007755 (= lt!2501839 (lemmaConcatPreservesForall!637 (exprs!6797 lt!2501828) (exprs!6797 ct2!306) lambda!407505))))

(declare-fun lambda!407504 () Int)

(declare-fun mapPost2!156 ((InoxSet Context!12594) Int Context!12594) Context!12594)

(assert (=> b!7007755 (= lt!2501828 (mapPost2!156 z1!570 lambda!407504 lt!2501832))))

(declare-fun b!7007756 () Bool)

(declare-fun e!4212310 () Bool)

(assert (=> b!7007756 (= e!4212312 e!4212310)))

(declare-fun res!2859221 () Bool)

(assert (=> b!7007756 (=> res!2859221 e!4212310)))

(declare-fun lt!2501842 () (InoxSet Context!12594))

(assert (=> b!7007756 (= res!2859221 (not (= lt!2501842 lt!2501829)))))

(assert (=> b!7007756 (= lt!2501842 (store ((as const (Array Context!12594 Bool)) false) lt!2501847 true))))

(declare-fun lt!2501845 () Unit!161280)

(assert (=> b!7007756 (= lt!2501845 (lemmaConcatPreservesForall!637 (exprs!6797 lt!2501828) (exprs!6797 ct2!306) lambda!407505))))

(declare-fun res!2859224 () Bool)

(assert (=> start!674728 (=> (not res!2859224) (not e!4212320))))

(assert (=> start!674728 (= res!2859224 (matchZipper!2841 lt!2501838 s!7408))))

(declare-fun appendTo!422 ((InoxSet Context!12594) Context!12594) (InoxSet Context!12594))

(assert (=> start!674728 (= lt!2501838 (appendTo!422 z1!570 ct2!306))))

(assert (=> start!674728 e!4212320))

(declare-fun condSetEmpty!48275 () Bool)

(assert (=> start!674728 (= condSetEmpty!48275 (= z1!570 ((as const (Array Context!12594 Bool)) false)))))

(declare-fun setRes!48275 () Bool)

(assert (=> start!674728 setRes!48275))

(declare-fun e!4212315 () Bool)

(declare-fun inv!86111 (Context!12594) Bool)

(assert (=> start!674728 (and (inv!86111 ct2!306) e!4212315)))

(declare-fun e!4212314 () Bool)

(assert (=> start!674728 e!4212314))

(declare-fun b!7007757 () Bool)

(declare-fun tp_is_empty!43827 () Bool)

(declare-fun tp!1931980 () Bool)

(assert (=> b!7007757 (= e!4212314 (and tp_is_empty!43827 tp!1931980))))

(declare-fun b!7007758 () Bool)

(declare-fun res!2859209 () Bool)

(assert (=> b!7007758 (=> res!2859209 e!4212322)))

(assert (=> b!7007758 (= res!2859209 (not ((_ is Cons!67324) (exprs!6797 lt!2501828))))))

(declare-fun b!7007759 () Bool)

(declare-fun e!4212313 () Bool)

(assert (=> b!7007759 (= e!4212309 e!4212313)))

(declare-fun res!2859223 () Bool)

(assert (=> b!7007759 (=> res!2859223 e!4212313)))

(declare-fun lt!2501837 () (InoxSet Context!12594))

(declare-fun lt!2501836 () (InoxSet Context!12594))

(assert (=> b!7007759 (= res!2859223 (not (= lt!2501837 lt!2501836)))))

(declare-fun lt!2501834 () (InoxSet Context!12594))

(assert (=> b!7007759 (= lt!2501836 ((_ map or) lt!2501834 lt!2501848))))

(declare-fun lt!2501849 () Context!12594)

(declare-fun derivationStepZipperUp!1951 (Context!12594 C!34872) (InoxSet Context!12594))

(assert (=> b!7007759 (= lt!2501848 (derivationStepZipperUp!1951 lt!2501849 (h!73773 s!7408)))))

(declare-fun derivationStepZipperDown!2019 (Regex!17301 Context!12594 C!34872) (InoxSet Context!12594))

(assert (=> b!7007759 (= lt!2501834 (derivationStepZipperDown!2019 (h!73772 (exprs!6797 lt!2501828)) lt!2501849 (h!73773 s!7408)))))

(assert (=> b!7007759 (= lt!2501849 (Context!12595 (++!15292 lt!2501844 (exprs!6797 ct2!306))))))

(declare-fun lt!2501855 () Unit!161280)

(assert (=> b!7007759 (= lt!2501855 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun lt!2501850 () Unit!161280)

(assert (=> b!7007759 (= lt!2501850 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun b!7007760 () Bool)

(declare-fun res!2859222 () Bool)

(assert (=> b!7007760 (=> res!2859222 e!4212317)))

(assert (=> b!7007760 (= res!2859222 (not (select lt!2501838 lt!2501832)))))

(declare-fun b!7007761 () Bool)

(declare-fun res!2859218 () Bool)

(assert (=> b!7007761 (=> res!2859218 e!4212318)))

(declare-fun lt!2501833 () Bool)

(assert (=> b!7007761 (= res!2859218 (not lt!2501833))))

(assert (=> b!7007762 (= e!4212310 e!4212322)))

(declare-fun res!2859219 () Bool)

(assert (=> b!7007762 (=> res!2859219 e!4212322)))

(declare-fun derivationStepZipper!2781 ((InoxSet Context!12594) C!34872) (InoxSet Context!12594))

(assert (=> b!7007762 (= res!2859219 (not (= (derivationStepZipper!2781 lt!2501842 (h!73773 s!7408)) lt!2501837)))))

(declare-fun lambda!407506 () Int)

(declare-fun flatMap!2287 ((InoxSet Context!12594) Int) (InoxSet Context!12594))

(assert (=> b!7007762 (= (flatMap!2287 lt!2501842 lambda!407506) (derivationStepZipperUp!1951 lt!2501847 (h!73773 s!7408)))))

(declare-fun lt!2501831 () Unit!161280)

(declare-fun lemmaFlatMapOnSingletonSet!1802 ((InoxSet Context!12594) Context!12594 Int) Unit!161280)

(assert (=> b!7007762 (= lt!2501831 (lemmaFlatMapOnSingletonSet!1802 lt!2501842 lt!2501847 lambda!407506))))

(assert (=> b!7007762 (= lt!2501837 (derivationStepZipperUp!1951 lt!2501847 (h!73773 s!7408)))))

(declare-fun lt!2501857 () Unit!161280)

(assert (=> b!7007762 (= lt!2501857 (lemmaConcatPreservesForall!637 (exprs!6797 lt!2501828) (exprs!6797 ct2!306) lambda!407505))))

(declare-fun setIsEmpty!48275 () Bool)

(assert (=> setIsEmpty!48275 setRes!48275))

(declare-fun b!7007763 () Bool)

(assert (=> b!7007763 (= e!4212313 e!4212318)))

(declare-fun res!2859220 () Bool)

(assert (=> b!7007763 (=> res!2859220 e!4212318)))

(declare-fun e!4212311 () Bool)

(assert (=> b!7007763 (= res!2859220 e!4212311)))

(declare-fun res!2859217 () Bool)

(assert (=> b!7007763 (=> (not res!2859217) (not e!4212311))))

(declare-fun lt!2501841 () Bool)

(assert (=> b!7007763 (= res!2859217 (not (= lt!2501833 lt!2501841)))))

(assert (=> b!7007763 (= lt!2501833 (matchZipper!2841 lt!2501837 (t!381204 s!7408)))))

(declare-fun lt!2501856 () Unit!161280)

(assert (=> b!7007763 (= lt!2501856 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun e!4212316 () Bool)

(assert (=> b!7007763 (= (matchZipper!2841 lt!2501836 (t!381204 s!7408)) e!4212316)))

(declare-fun res!2859214 () Bool)

(assert (=> b!7007763 (=> res!2859214 e!4212316)))

(assert (=> b!7007763 (= res!2859214 lt!2501841)))

(assert (=> b!7007763 (= lt!2501841 (matchZipper!2841 lt!2501834 (t!381204 s!7408)))))

(declare-fun lt!2501835 () Unit!161280)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1474 ((InoxSet Context!12594) (InoxSet Context!12594) List!67449) Unit!161280)

(assert (=> b!7007763 (= lt!2501835 (lemmaZipperConcatMatchesSameAsBothZippers!1474 lt!2501834 lt!2501848 (t!381204 s!7408)))))

(declare-fun lt!2501840 () Unit!161280)

(assert (=> b!7007763 (= lt!2501840 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun lt!2501843 () Unit!161280)

(assert (=> b!7007763 (= lt!2501843 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun b!7007764 () Bool)

(assert (=> b!7007764 (= e!4212319 true)))

(declare-fun lt!2501852 () Unit!161280)

(assert (=> b!7007764 (= lt!2501852 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun lt!2501846 () Unit!161280)

(assert (=> b!7007764 (= lt!2501846 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun b!7007765 () Bool)

(declare-fun tp!1931982 () Bool)

(assert (=> b!7007765 (= e!4212315 tp!1931982)))

(declare-fun tp!1931979 () Bool)

(declare-fun setNonEmpty!48275 () Bool)

(declare-fun setElem!48275 () Context!12594)

(assert (=> setNonEmpty!48275 (= setRes!48275 (and tp!1931979 (inv!86111 setElem!48275) e!4212321))))

(declare-fun setRest!48275 () (InoxSet Context!12594))

(assert (=> setNonEmpty!48275 (= z1!570 ((_ map or) (store ((as const (Array Context!12594 Bool)) false) setElem!48275 true) setRest!48275))))

(declare-fun b!7007766 () Bool)

(assert (=> b!7007766 (= e!4212316 (matchZipper!2841 lt!2501848 (t!381204 s!7408)))))

(declare-fun b!7007767 () Bool)

(assert (=> b!7007767 (= e!4212311 (not (matchZipper!2841 lt!2501848 (t!381204 s!7408))))))

(declare-fun lt!2501830 () Unit!161280)

(assert (=> b!7007767 (= lt!2501830 (lemmaConcatPreservesForall!637 lt!2501844 (exprs!6797 ct2!306) lambda!407505))))

(declare-fun b!7007768 () Bool)

(declare-fun res!2859211 () Bool)

(assert (=> b!7007768 (=> res!2859211 e!4212322)))

(declare-fun isEmpty!39320 (List!67448) Bool)

(assert (=> b!7007768 (= res!2859211 (isEmpty!39320 (exprs!6797 lt!2501828)))))

(assert (= (and start!674728 res!2859224) b!7007754))

(assert (= (and b!7007754 res!2859212) b!7007752))

(assert (= (and b!7007752 (not res!2859215)) b!7007760))

(assert (= (and b!7007760 (not res!2859222)) b!7007755))

(assert (= (and b!7007755 (not res!2859216)) b!7007756))

(assert (= (and b!7007756 (not res!2859221)) b!7007762))

(assert (= (and b!7007762 (not res!2859219)) b!7007758))

(assert (= (and b!7007758 (not res!2859209)) b!7007768))

(assert (= (and b!7007768 (not res!2859211)) b!7007750))

(assert (= (and b!7007750 (not res!2859210)) b!7007759))

(assert (= (and b!7007759 (not res!2859223)) b!7007763))

(assert (= (and b!7007763 (not res!2859214)) b!7007766))

(assert (= (and b!7007763 res!2859217) b!7007767))

(assert (= (and b!7007763 (not res!2859220)) b!7007761))

(assert (= (and b!7007761 (not res!2859218)) b!7007753))

(assert (= (and b!7007753 (not res!2859213)) b!7007764))

(assert (= (and start!674728 condSetEmpty!48275) setIsEmpty!48275))

(assert (= (and start!674728 (not condSetEmpty!48275)) setNonEmpty!48275))

(assert (= setNonEmpty!48275 b!7007751))

(assert (= start!674728 b!7007765))

(assert (= (and start!674728 ((_ is Cons!67325) s!7408)) b!7007757))

(declare-fun m!7704952 () Bool)

(assert (=> b!7007766 m!7704952))

(declare-fun m!7704954 () Bool)

(assert (=> b!7007760 m!7704954))

(declare-fun m!7704956 () Bool)

(assert (=> start!674728 m!7704956))

(declare-fun m!7704958 () Bool)

(assert (=> start!674728 m!7704958))

(declare-fun m!7704960 () Bool)

(assert (=> start!674728 m!7704960))

(declare-fun m!7704962 () Bool)

(assert (=> b!7007755 m!7704962))

(declare-fun m!7704964 () Bool)

(assert (=> b!7007755 m!7704964))

(declare-fun m!7704966 () Bool)

(assert (=> b!7007755 m!7704966))

(declare-fun m!7704968 () Bool)

(assert (=> b!7007755 m!7704968))

(declare-fun m!7704970 () Bool)

(assert (=> b!7007756 m!7704970))

(assert (=> b!7007756 m!7704966))

(declare-fun m!7704972 () Bool)

(assert (=> b!7007762 m!7704972))

(declare-fun m!7704974 () Bool)

(assert (=> b!7007762 m!7704974))

(declare-fun m!7704976 () Bool)

(assert (=> b!7007762 m!7704976))

(declare-fun m!7704978 () Bool)

(assert (=> b!7007762 m!7704978))

(assert (=> b!7007762 m!7704966))

(declare-fun m!7704980 () Bool)

(assert (=> b!7007750 m!7704980))

(declare-fun m!7704982 () Bool)

(assert (=> b!7007750 m!7704982))

(declare-fun m!7704984 () Bool)

(assert (=> b!7007768 m!7704984))

(declare-fun m!7704986 () Bool)

(assert (=> b!7007763 m!7704986))

(declare-fun m!7704988 () Bool)

(assert (=> b!7007763 m!7704988))

(declare-fun m!7704990 () Bool)

(assert (=> b!7007763 m!7704990))

(declare-fun m!7704992 () Bool)

(assert (=> b!7007763 m!7704992))

(assert (=> b!7007763 m!7704990))

(assert (=> b!7007763 m!7704990))

(declare-fun m!7704994 () Bool)

(assert (=> b!7007763 m!7704994))

(declare-fun m!7704996 () Bool)

(assert (=> b!7007759 m!7704996))

(assert (=> b!7007759 m!7704990))

(declare-fun m!7704998 () Bool)

(assert (=> b!7007759 m!7704998))

(declare-fun m!7705000 () Bool)

(assert (=> b!7007759 m!7705000))

(assert (=> b!7007759 m!7704990))

(assert (=> b!7007764 m!7704990))

(assert (=> b!7007764 m!7704990))

(assert (=> b!7007767 m!7704952))

(assert (=> b!7007767 m!7704990))

(assert (=> b!7007753 m!7704952))

(assert (=> b!7007753 m!7704990))

(declare-fun m!7705002 () Bool)

(assert (=> setNonEmpty!48275 m!7705002))

(declare-fun m!7705004 () Bool)

(assert (=> b!7007752 m!7705004))

(declare-fun m!7705006 () Bool)

(assert (=> b!7007752 m!7705006))

(declare-fun m!7705008 () Bool)

(assert (=> b!7007752 m!7705008))

(declare-fun m!7705010 () Bool)

(assert (=> b!7007752 m!7705010))

(declare-fun m!7705012 () Bool)

(assert (=> b!7007752 m!7705012))

(declare-fun m!7705014 () Bool)

(assert (=> b!7007752 m!7705014))

(check-sat (not b!7007767) (not b!7007762) (not b!7007766) (not b!7007752) (not b!7007759) tp_is_empty!43827 (not b!7007763) (not b!7007750) (not start!674728) (not b!7007753) (not b!7007757) (not b!7007764) (not setNonEmpty!48275) (not b!7007765) (not b!7007756) (not b!7007755) (not b!7007751) (not b!7007768))
(check-sat)

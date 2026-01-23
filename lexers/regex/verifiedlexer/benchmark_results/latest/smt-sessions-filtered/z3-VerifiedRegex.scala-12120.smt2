; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!680934 () Bool)

(assert start!680934)

(declare-fun b!7040068 () Bool)

(assert (=> b!7040068 true))

(declare-fun b!7040077 () Bool)

(assert (=> b!7040077 true))

(declare-fun b!7040070 () Bool)

(assert (=> b!7040070 true))

(declare-fun b!7040062 () Bool)

(declare-fun e!4232231 () Bool)

(declare-fun tp!1937283 () Bool)

(assert (=> b!7040062 (= e!4232231 tp!1937283)))

(declare-fun b!7040063 () Bool)

(declare-fun e!4232233 () Bool)

(declare-fun e!4232235 () Bool)

(assert (=> b!7040063 (= e!4232233 e!4232235)))

(declare-fun res!2874083 () Bool)

(assert (=> b!7040063 (=> res!2874083 e!4232235)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35244 0))(
  ( (C!35245 (val!27324 Int)) )
))
(declare-datatypes ((Regex!17487 0))(
  ( (ElementMatch!17487 (c!1310283 C!35244)) (Concat!26332 (regOne!35486 Regex!17487) (regTwo!35486 Regex!17487)) (EmptyExpr!17487) (Star!17487 (reg!17816 Regex!17487)) (EmptyLang!17487) (Union!17487 (regOne!35487 Regex!17487) (regTwo!35487 Regex!17487)) )
))
(declare-datatypes ((List!67989 0))(
  ( (Nil!67865) (Cons!67865 (h!74313 Regex!17487) (t!381760 List!67989)) )
))
(declare-datatypes ((Context!12966 0))(
  ( (Context!12967 (exprs!6983 List!67989)) )
))
(declare-fun lt!2523818 () (InoxSet Context!12966))

(declare-fun lt!2523798 () (InoxSet Context!12966))

(assert (=> b!7040063 (= res!2874083 (not (= lt!2523818 lt!2523798)))))

(declare-fun lt!2523801 () Context!12966)

(assert (=> b!7040063 (= lt!2523818 (store ((as const (Array Context!12966 Bool)) false) lt!2523801 true))))

(declare-datatypes ((Unit!161654 0))(
  ( (Unit!161655) )
))
(declare-fun lt!2523823 () Unit!161654)

(declare-fun lambda!416573 () Int)

(declare-fun lt!2523809 () Context!12966)

(declare-fun ct2!306 () Context!12966)

(declare-fun lemmaConcatPreservesForall!808 (List!67989 List!67989 Int) Unit!161654)

(assert (=> b!7040063 (= lt!2523823 (lemmaConcatPreservesForall!808 (exprs!6983 lt!2523809) (exprs!6983 ct2!306) lambda!416573))))

(declare-fun setIsEmpty!49324 () Bool)

(declare-fun setRes!49324 () Bool)

(assert (=> setIsEmpty!49324 setRes!49324))

(declare-fun b!7040064 () Bool)

(declare-fun e!4232226 () Bool)

(declare-fun tp_is_empty!44199 () Bool)

(declare-fun tp!1937282 () Bool)

(assert (=> b!7040064 (= e!4232226 (and tp_is_empty!44199 tp!1937282))))

(declare-fun b!7040065 () Bool)

(declare-fun e!4232234 () Bool)

(declare-fun lt!2523815 () (InoxSet Context!12966))

(declare-datatypes ((List!67990 0))(
  ( (Nil!67866) (Cons!67866 (h!74314 C!35244) (t!381761 List!67990)) )
))
(declare-fun s!7408 () List!67990)

(declare-fun matchZipper!3027 ((InoxSet Context!12966) List!67990) Bool)

(assert (=> b!7040065 (= e!4232234 (not (matchZipper!3027 lt!2523815 (t!381761 s!7408))))))

(declare-fun lt!2523795 () List!67989)

(declare-fun lt!2523806 () Unit!161654)

(assert (=> b!7040065 (= lt!2523806 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun b!7040066 () Bool)

(declare-fun res!2874087 () Bool)

(declare-fun e!4232227 () Bool)

(assert (=> b!7040066 (=> res!2874087 e!4232227)))

(get-info :version)

(assert (=> b!7040066 (= res!2874087 (not ((_ is Cons!67865) (exprs!6983 lt!2523809))))))

(declare-fun b!7040067 () Bool)

(declare-fun e!4232224 () Bool)

(declare-fun e!4232236 () Bool)

(assert (=> b!7040067 (= e!4232224 e!4232236)))

(declare-fun res!2874078 () Bool)

(assert (=> b!7040067 (=> res!2874078 e!4232236)))

(assert (=> b!7040067 (= res!2874078 e!4232234)))

(declare-fun res!2874084 () Bool)

(assert (=> b!7040067 (=> (not res!2874084) (not e!4232234))))

(declare-fun lt!2523794 () Bool)

(declare-fun lt!2523822 () Bool)

(assert (=> b!7040067 (= res!2874084 (not (= lt!2523794 lt!2523822)))))

(declare-fun lt!2523803 () (InoxSet Context!12966))

(assert (=> b!7040067 (= lt!2523794 (matchZipper!3027 lt!2523803 (t!381761 s!7408)))))

(declare-fun lt!2523800 () Unit!161654)

(assert (=> b!7040067 (= lt!2523800 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun lt!2523812 () (InoxSet Context!12966))

(declare-fun e!4232229 () Bool)

(assert (=> b!7040067 (= (matchZipper!3027 lt!2523812 (t!381761 s!7408)) e!4232229)))

(declare-fun res!2874090 () Bool)

(assert (=> b!7040067 (=> res!2874090 e!4232229)))

(assert (=> b!7040067 (= res!2874090 lt!2523822)))

(declare-fun lt!2523790 () (InoxSet Context!12966))

(assert (=> b!7040067 (= lt!2523822 (matchZipper!3027 lt!2523790 (t!381761 s!7408)))))

(declare-fun lt!2523813 () Unit!161654)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1560 ((InoxSet Context!12966) (InoxSet Context!12966) List!67990) Unit!161654)

(assert (=> b!7040067 (= lt!2523813 (lemmaZipperConcatMatchesSameAsBothZippers!1560 lt!2523790 lt!2523815 (t!381761 s!7408)))))

(declare-fun lt!2523811 () Unit!161654)

(assert (=> b!7040067 (= lt!2523811 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun lt!2523816 () Unit!161654)

(assert (=> b!7040067 (= lt!2523816 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun e!4232232 () Bool)

(declare-fun e!4232225 () Bool)

(assert (=> b!7040068 (= e!4232232 (not e!4232225))))

(declare-fun res!2874080 () Bool)

(assert (=> b!7040068 (=> res!2874080 e!4232225)))

(assert (=> b!7040068 (= res!2874080 (not (matchZipper!3027 lt!2523798 s!7408)))))

(declare-fun lt!2523792 () Context!12966)

(assert (=> b!7040068 (= lt!2523798 (store ((as const (Array Context!12966 Bool)) false) lt!2523792 true))))

(declare-fun lt!2523821 () (InoxSet Context!12966))

(declare-fun lambda!416571 () Int)

(declare-fun getWitness!1506 ((InoxSet Context!12966) Int) Context!12966)

(assert (=> b!7040068 (= lt!2523792 (getWitness!1506 lt!2523821 lambda!416571))))

(declare-datatypes ((List!67991 0))(
  ( (Nil!67867) (Cons!67867 (h!74315 Context!12966) (t!381762 List!67991)) )
))
(declare-fun lt!2523799 () List!67991)

(declare-fun exists!3427 (List!67991 Int) Bool)

(assert (=> b!7040068 (exists!3427 lt!2523799 lambda!416571)))

(declare-fun lt!2523805 () Unit!161654)

(declare-fun lemmaZipperMatchesExistsMatchingContext!426 (List!67991 List!67990) Unit!161654)

(assert (=> b!7040068 (= lt!2523805 (lemmaZipperMatchesExistsMatchingContext!426 lt!2523799 s!7408))))

(declare-fun toList!10830 ((InoxSet Context!12966)) List!67991)

(assert (=> b!7040068 (= lt!2523799 (toList!10830 lt!2523821))))

(declare-fun b!7040069 () Bool)

(declare-fun res!2874085 () Bool)

(assert (=> b!7040069 (=> res!2874085 e!4232236)))

(assert (=> b!7040069 (= res!2874085 (not lt!2523794))))

(declare-fun res!2874081 () Bool)

(assert (=> start!680934 (=> (not res!2874081) (not e!4232232))))

(assert (=> start!680934 (= res!2874081 (matchZipper!3027 lt!2523821 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12966))

(declare-fun appendTo!608 ((InoxSet Context!12966) Context!12966) (InoxSet Context!12966))

(assert (=> start!680934 (= lt!2523821 (appendTo!608 z1!570 ct2!306))))

(assert (=> start!680934 e!4232232))

(declare-fun condSetEmpty!49324 () Bool)

(assert (=> start!680934 (= condSetEmpty!49324 (= z1!570 ((as const (Array Context!12966 Bool)) false)))))

(assert (=> start!680934 setRes!49324))

(declare-fun inv!86576 (Context!12966) Bool)

(assert (=> start!680934 (and (inv!86576 ct2!306) e!4232231)))

(assert (=> start!680934 e!4232226))

(assert (=> b!7040070 (= e!4232235 e!4232227)))

(declare-fun res!2874079 () Bool)

(assert (=> b!7040070 (=> res!2874079 e!4232227)))

(declare-fun derivationStepZipper!2943 ((InoxSet Context!12966) C!35244) (InoxSet Context!12966))

(assert (=> b!7040070 (= res!2874079 (not (= (derivationStepZipper!2943 lt!2523818 (h!74314 s!7408)) lt!2523803)))))

(declare-fun lambda!416574 () Int)

(declare-fun flatMap!2434 ((InoxSet Context!12966) Int) (InoxSet Context!12966))

(declare-fun derivationStepZipperUp!2097 (Context!12966 C!35244) (InoxSet Context!12966))

(assert (=> b!7040070 (= (flatMap!2434 lt!2523818 lambda!416574) (derivationStepZipperUp!2097 lt!2523801 (h!74314 s!7408)))))

(declare-fun lt!2523796 () Unit!161654)

(declare-fun lemmaFlatMapOnSingletonSet!1948 ((InoxSet Context!12966) Context!12966 Int) Unit!161654)

(assert (=> b!7040070 (= lt!2523796 (lemmaFlatMapOnSingletonSet!1948 lt!2523818 lt!2523801 lambda!416574))))

(assert (=> b!7040070 (= lt!2523803 (derivationStepZipperUp!2097 lt!2523801 (h!74314 s!7408)))))

(declare-fun lt!2523824 () Unit!161654)

(assert (=> b!7040070 (= lt!2523824 (lemmaConcatPreservesForall!808 (exprs!6983 lt!2523809) (exprs!6983 ct2!306) lambda!416573))))

(declare-fun b!7040071 () Bool)

(declare-fun e!4232230 () Bool)

(declare-fun e!4232237 () Bool)

(assert (=> b!7040071 (= e!4232230 e!4232237)))

(declare-fun res!2874077 () Bool)

(assert (=> b!7040071 (=> res!2874077 e!4232237)))

(assert (=> b!7040071 (= res!2874077 (not lt!2523822))))

(declare-fun lt!2523804 () Unit!161654)

(assert (=> b!7040071 (= lt!2523804 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun lt!2523825 () Unit!161654)

(assert (=> b!7040071 (= lt!2523825 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun e!4232238 () Bool)

(declare-fun setNonEmpty!49324 () Bool)

(declare-fun tp!1937285 () Bool)

(declare-fun setElem!49324 () Context!12966)

(assert (=> setNonEmpty!49324 (= setRes!49324 (and tp!1937285 (inv!86576 setElem!49324) e!4232238))))

(declare-fun setRest!49324 () (InoxSet Context!12966))

(assert (=> setNonEmpty!49324 (= z1!570 ((_ map or) (store ((as const (Array Context!12966 Bool)) false) setElem!49324 true) setRest!49324))))

(declare-fun b!7040072 () Bool)

(declare-fun res!2874075 () Bool)

(assert (=> b!7040072 (=> res!2874075 e!4232225)))

(assert (=> b!7040072 (= res!2874075 (not (select lt!2523821 lt!2523792)))))

(declare-fun b!7040073 () Bool)

(declare-fun tp!1937284 () Bool)

(assert (=> b!7040073 (= e!4232238 tp!1937284)))

(declare-fun b!7040074 () Bool)

(declare-fun res!2874088 () Bool)

(assert (=> b!7040074 (=> res!2874088 e!4232227)))

(declare-fun isEmpty!39595 (List!67989) Bool)

(assert (=> b!7040074 (= res!2874088 (isEmpty!39595 (exprs!6983 lt!2523809)))))

(declare-fun b!7040075 () Bool)

(assert (=> b!7040075 (= e!4232229 (matchZipper!3027 lt!2523815 (t!381761 s!7408)))))

(declare-fun b!7040076 () Bool)

(declare-fun e!4232228 () Bool)

(assert (=> b!7040076 (= e!4232228 e!4232224)))

(declare-fun res!2874082 () Bool)

(assert (=> b!7040076 (=> res!2874082 e!4232224)))

(assert (=> b!7040076 (= res!2874082 (not (= lt!2523803 lt!2523812)))))

(assert (=> b!7040076 (= lt!2523812 ((_ map or) lt!2523790 lt!2523815))))

(declare-fun lt!2523817 () Context!12966)

(assert (=> b!7040076 (= lt!2523815 (derivationStepZipperUp!2097 lt!2523817 (h!74314 s!7408)))))

(declare-fun derivationStepZipperDown!2151 (Regex!17487 Context!12966 C!35244) (InoxSet Context!12966))

(assert (=> b!7040076 (= lt!2523790 (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523809)) lt!2523817 (h!74314 s!7408)))))

(declare-fun ++!15549 (List!67989 List!67989) List!67989)

(assert (=> b!7040076 (= lt!2523817 (Context!12967 (++!15549 lt!2523795 (exprs!6983 ct2!306))))))

(declare-fun lt!2523797 () Unit!161654)

(assert (=> b!7040076 (= lt!2523797 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun lt!2523807 () Unit!161654)

(assert (=> b!7040076 (= lt!2523807 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(assert (=> b!7040077 (= e!4232225 e!4232233)))

(declare-fun res!2874076 () Bool)

(assert (=> b!7040077 (=> res!2874076 e!4232233)))

(assert (=> b!7040077 (= res!2874076 (or (not (= lt!2523801 lt!2523792)) (not (select z1!570 lt!2523809))))))

(assert (=> b!7040077 (= lt!2523801 (Context!12967 (++!15549 (exprs!6983 lt!2523809) (exprs!6983 ct2!306))))))

(declare-fun lt!2523814 () Unit!161654)

(assert (=> b!7040077 (= lt!2523814 (lemmaConcatPreservesForall!808 (exprs!6983 lt!2523809) (exprs!6983 ct2!306) lambda!416573))))

(declare-fun lambda!416572 () Int)

(declare-fun mapPost2!328 ((InoxSet Context!12966) Int Context!12966) Context!12966)

(assert (=> b!7040077 (= lt!2523809 (mapPost2!328 z1!570 lambda!416572 lt!2523792))))

(declare-fun b!7040078 () Bool)

(assert (=> b!7040078 (= e!4232236 e!4232230)))

(declare-fun res!2874074 () Bool)

(assert (=> b!7040078 (=> res!2874074 e!4232230)))

(assert (=> b!7040078 (= res!2874074 (matchZipper!3027 lt!2523815 (t!381761 s!7408)))))

(declare-fun lt!2523791 () Unit!161654)

(assert (=> b!7040078 (= lt!2523791 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun b!7040079 () Bool)

(assert (=> b!7040079 (= e!4232227 e!4232228)))

(declare-fun res!2874089 () Bool)

(assert (=> b!7040079 (=> res!2874089 e!4232228)))

(declare-fun nullable!7198 (Regex!17487) Bool)

(assert (=> b!7040079 (= res!2874089 (not (nullable!7198 (h!74313 (exprs!6983 lt!2523809)))))))

(declare-fun lt!2523793 () Context!12966)

(assert (=> b!7040079 (= lt!2523793 (Context!12967 lt!2523795))))

(declare-fun tail!13590 (List!67989) List!67989)

(assert (=> b!7040079 (= lt!2523795 (tail!13590 (exprs!6983 lt!2523809)))))

(declare-fun b!7040080 () Bool)

(declare-fun lt!2523826 () (InoxSet Context!12966))

(declare-datatypes ((tuple2!68112 0))(
  ( (tuple2!68113 (_1!37359 List!67990) (_2!37359 List!67990)) )
))
(declare-datatypes ((Option!16888 0))(
  ( (None!16887) (Some!16887 (v!53177 tuple2!68112)) )
))
(declare-fun lt!2523808 () Option!16888)

(declare-fun get!23782 (Option!16888) tuple2!68112)

(assert (=> b!7040080 (= e!4232237 (matchZipper!3027 lt!2523826 (_1!37359 (get!23782 lt!2523808))))))

(declare-fun isDefined!13589 (Option!16888) Bool)

(assert (=> b!7040080 (isDefined!13589 lt!2523808)))

(declare-fun findConcatSeparationZippers!404 ((InoxSet Context!12966) (InoxSet Context!12966) List!67990 List!67990 List!67990) Option!16888)

(assert (=> b!7040080 (= lt!2523808 (findConcatSeparationZippers!404 lt!2523826 (store ((as const (Array Context!12966 Bool)) false) ct2!306 true) Nil!67866 (t!381761 s!7408) (t!381761 s!7408)))))

(declare-fun lt!2523819 () Unit!161654)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!392 ((InoxSet Context!12966) Context!12966 List!67990) Unit!161654)

(assert (=> b!7040080 (= lt!2523819 (lemmaConcatZipperMatchesStringThenFindConcatDefined!392 lt!2523826 ct2!306 (t!381761 s!7408)))))

(declare-fun lt!2523810 () Unit!161654)

(assert (=> b!7040080 (= lt!2523810 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(assert (=> b!7040080 (= lt!2523790 (appendTo!608 lt!2523826 ct2!306))))

(assert (=> b!7040080 (= lt!2523826 (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523809)) lt!2523793 (h!74314 s!7408)))))

(declare-fun lt!2523820 () Unit!161654)

(assert (=> b!7040080 (= lt!2523820 (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(declare-fun lt!2523802 () Unit!161654)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!66 (Context!12966 Regex!17487 C!35244 Context!12966) Unit!161654)

(assert (=> b!7040080 (= lt!2523802 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!66 lt!2523793 (h!74313 (exprs!6983 lt!2523809)) (h!74314 s!7408) ct2!306))))

(declare-fun b!7040081 () Bool)

(declare-fun res!2874086 () Bool)

(assert (=> b!7040081 (=> (not res!2874086) (not e!4232232))))

(assert (=> b!7040081 (= res!2874086 ((_ is Cons!67866) s!7408))))

(assert (= (and start!680934 res!2874081) b!7040081))

(assert (= (and b!7040081 res!2874086) b!7040068))

(assert (= (and b!7040068 (not res!2874080)) b!7040072))

(assert (= (and b!7040072 (not res!2874075)) b!7040077))

(assert (= (and b!7040077 (not res!2874076)) b!7040063))

(assert (= (and b!7040063 (not res!2874083)) b!7040070))

(assert (= (and b!7040070 (not res!2874079)) b!7040066))

(assert (= (and b!7040066 (not res!2874087)) b!7040074))

(assert (= (and b!7040074 (not res!2874088)) b!7040079))

(assert (= (and b!7040079 (not res!2874089)) b!7040076))

(assert (= (and b!7040076 (not res!2874082)) b!7040067))

(assert (= (and b!7040067 (not res!2874090)) b!7040075))

(assert (= (and b!7040067 res!2874084) b!7040065))

(assert (= (and b!7040067 (not res!2874078)) b!7040069))

(assert (= (and b!7040069 (not res!2874085)) b!7040078))

(assert (= (and b!7040078 (not res!2874074)) b!7040071))

(assert (= (and b!7040071 (not res!2874077)) b!7040080))

(assert (= (and start!680934 condSetEmpty!49324) setIsEmpty!49324))

(assert (= (and start!680934 (not condSetEmpty!49324)) setNonEmpty!49324))

(assert (= setNonEmpty!49324 b!7040073))

(assert (= start!680934 b!7040062))

(assert (= (and start!680934 ((_ is Cons!67866) s!7408)) b!7040064))

(declare-fun m!7750988 () Bool)

(assert (=> b!7040074 m!7750988))

(declare-fun m!7750990 () Bool)

(assert (=> b!7040080 m!7750990))

(declare-fun m!7750992 () Bool)

(assert (=> b!7040080 m!7750992))

(declare-fun m!7750994 () Bool)

(assert (=> b!7040080 m!7750994))

(declare-fun m!7750996 () Bool)

(assert (=> b!7040080 m!7750996))

(declare-fun m!7750998 () Bool)

(assert (=> b!7040080 m!7750998))

(declare-fun m!7751000 () Bool)

(assert (=> b!7040080 m!7751000))

(assert (=> b!7040080 m!7750990))

(declare-fun m!7751002 () Bool)

(assert (=> b!7040080 m!7751002))

(declare-fun m!7751004 () Bool)

(assert (=> b!7040080 m!7751004))

(declare-fun m!7751006 () Bool)

(assert (=> b!7040080 m!7751006))

(assert (=> b!7040080 m!7750996))

(declare-fun m!7751008 () Bool)

(assert (=> b!7040080 m!7751008))

(assert (=> b!7040067 m!7750990))

(declare-fun m!7751010 () Bool)

(assert (=> b!7040067 m!7751010))

(assert (=> b!7040067 m!7750990))

(declare-fun m!7751012 () Bool)

(assert (=> b!7040067 m!7751012))

(declare-fun m!7751014 () Bool)

(assert (=> b!7040067 m!7751014))

(assert (=> b!7040067 m!7750990))

(declare-fun m!7751016 () Bool)

(assert (=> b!7040067 m!7751016))

(assert (=> b!7040076 m!7750990))

(declare-fun m!7751018 () Bool)

(assert (=> b!7040076 m!7751018))

(declare-fun m!7751020 () Bool)

(assert (=> b!7040076 m!7751020))

(declare-fun m!7751022 () Bool)

(assert (=> b!7040076 m!7751022))

(assert (=> b!7040076 m!7750990))

(declare-fun m!7751024 () Bool)

(assert (=> start!680934 m!7751024))

(declare-fun m!7751026 () Bool)

(assert (=> start!680934 m!7751026))

(declare-fun m!7751028 () Bool)

(assert (=> start!680934 m!7751028))

(declare-fun m!7751030 () Bool)

(assert (=> b!7040068 m!7751030))

(declare-fun m!7751032 () Bool)

(assert (=> b!7040068 m!7751032))

(declare-fun m!7751034 () Bool)

(assert (=> b!7040068 m!7751034))

(declare-fun m!7751036 () Bool)

(assert (=> b!7040068 m!7751036))

(declare-fun m!7751038 () Bool)

(assert (=> b!7040068 m!7751038))

(declare-fun m!7751040 () Bool)

(assert (=> b!7040068 m!7751040))

(assert (=> b!7040071 m!7750990))

(assert (=> b!7040071 m!7750990))

(declare-fun m!7751042 () Bool)

(assert (=> b!7040070 m!7751042))

(declare-fun m!7751044 () Bool)

(assert (=> b!7040070 m!7751044))

(declare-fun m!7751046 () Bool)

(assert (=> b!7040070 m!7751046))

(declare-fun m!7751048 () Bool)

(assert (=> b!7040070 m!7751048))

(declare-fun m!7751050 () Bool)

(assert (=> b!7040070 m!7751050))

(declare-fun m!7751052 () Bool)

(assert (=> b!7040065 m!7751052))

(assert (=> b!7040065 m!7750990))

(declare-fun m!7751054 () Bool)

(assert (=> b!7040063 m!7751054))

(assert (=> b!7040063 m!7751046))

(declare-fun m!7751056 () Bool)

(assert (=> b!7040077 m!7751056))

(declare-fun m!7751058 () Bool)

(assert (=> b!7040077 m!7751058))

(assert (=> b!7040077 m!7751046))

(declare-fun m!7751060 () Bool)

(assert (=> b!7040077 m!7751060))

(assert (=> b!7040078 m!7751052))

(assert (=> b!7040078 m!7750990))

(assert (=> b!7040075 m!7751052))

(declare-fun m!7751062 () Bool)

(assert (=> b!7040072 m!7751062))

(declare-fun m!7751064 () Bool)

(assert (=> setNonEmpty!49324 m!7751064))

(declare-fun m!7751066 () Bool)

(assert (=> b!7040079 m!7751066))

(declare-fun m!7751068 () Bool)

(assert (=> b!7040079 m!7751068))

(check-sat (not b!7040080) (not b!7040062) (not b!7040078) tp_is_empty!44199 (not b!7040076) (not b!7040077) (not b!7040071) (not b!7040065) (not b!7040068) (not start!680934) (not b!7040064) (not b!7040073) (not setNonEmpty!49324) (not b!7040074) (not b!7040079) (not b!7040063) (not b!7040067) (not b!7040070) (not b!7040075))
(check-sat)
(get-model)

(declare-fun bs!1873147 () Bool)

(declare-fun d!2197957 () Bool)

(assert (= bs!1873147 (and d!2197957 b!7040077)))

(declare-fun lambda!416596 () Int)

(assert (=> bs!1873147 (= lambda!416596 lambda!416573)))

(declare-fun forall!16406 (List!67989 Int) Bool)

(assert (=> d!2197957 (= (inv!86576 setElem!49324) (forall!16406 (exprs!6983 setElem!49324) lambda!416596))))

(declare-fun bs!1873148 () Bool)

(assert (= bs!1873148 d!2197957))

(declare-fun m!7751214 () Bool)

(assert (=> bs!1873148 m!7751214))

(assert (=> setNonEmpty!49324 d!2197957))

(declare-fun d!2197959 () Bool)

(assert (=> d!2197959 (forall!16406 (++!15549 (exprs!6983 lt!2523809) (exprs!6983 ct2!306)) lambda!416573)))

(declare-fun lt!2523866 () Unit!161654)

(declare-fun choose!53417 (List!67989 List!67989 Int) Unit!161654)

(assert (=> d!2197959 (= lt!2523866 (choose!53417 (exprs!6983 lt!2523809) (exprs!6983 ct2!306) lambda!416573))))

(assert (=> d!2197959 (forall!16406 (exprs!6983 lt!2523809) lambda!416573)))

(assert (=> d!2197959 (= (lemmaConcatPreservesForall!808 (exprs!6983 lt!2523809) (exprs!6983 ct2!306) lambda!416573) lt!2523866)))

(declare-fun bs!1873149 () Bool)

(assert (= bs!1873149 d!2197959))

(assert (=> bs!1873149 m!7751058))

(assert (=> bs!1873149 m!7751058))

(declare-fun m!7751216 () Bool)

(assert (=> bs!1873149 m!7751216))

(declare-fun m!7751218 () Bool)

(assert (=> bs!1873149 m!7751218))

(declare-fun m!7751220 () Bool)

(assert (=> bs!1873149 m!7751220))

(assert (=> b!7040063 d!2197959))

(declare-fun d!2197961 () Bool)

(assert (=> d!2197961 (forall!16406 (++!15549 lt!2523795 (exprs!6983 ct2!306)) lambda!416573)))

(declare-fun lt!2523867 () Unit!161654)

(assert (=> d!2197961 (= lt!2523867 (choose!53417 lt!2523795 (exprs!6983 ct2!306) lambda!416573))))

(assert (=> d!2197961 (forall!16406 lt!2523795 lambda!416573)))

(assert (=> d!2197961 (= (lemmaConcatPreservesForall!808 lt!2523795 (exprs!6983 ct2!306) lambda!416573) lt!2523867)))

(declare-fun bs!1873150 () Bool)

(assert (= bs!1873150 d!2197961))

(assert (=> bs!1873150 m!7751020))

(assert (=> bs!1873150 m!7751020))

(declare-fun m!7751222 () Bool)

(assert (=> bs!1873150 m!7751222))

(declare-fun m!7751224 () Bool)

(assert (=> bs!1873150 m!7751224))

(declare-fun m!7751226 () Bool)

(assert (=> bs!1873150 m!7751226))

(assert (=> b!7040071 d!2197961))

(declare-fun d!2197963 () Bool)

(assert (=> d!2197963 (= (isEmpty!39595 (exprs!6983 lt!2523809)) ((_ is Nil!67865) (exprs!6983 lt!2523809)))))

(assert (=> b!7040074 d!2197963))

(declare-fun d!2197965 () Bool)

(declare-fun c!1310332 () Bool)

(declare-fun isEmpty!39597 (List!67990) Bool)

(assert (=> d!2197965 (= c!1310332 (isEmpty!39597 s!7408))))

(declare-fun e!4232312 () Bool)

(assert (=> d!2197965 (= (matchZipper!3027 lt!2523821 s!7408) e!4232312)))

(declare-fun b!7040218 () Bool)

(declare-fun nullableZipper!2594 ((InoxSet Context!12966)) Bool)

(assert (=> b!7040218 (= e!4232312 (nullableZipper!2594 lt!2523821))))

(declare-fun b!7040219 () Bool)

(declare-fun head!14285 (List!67990) C!35244)

(declare-fun tail!13592 (List!67990) List!67990)

(assert (=> b!7040219 (= e!4232312 (matchZipper!3027 (derivationStepZipper!2943 lt!2523821 (head!14285 s!7408)) (tail!13592 s!7408)))))

(assert (= (and d!2197965 c!1310332) b!7040218))

(assert (= (and d!2197965 (not c!1310332)) b!7040219))

(declare-fun m!7751274 () Bool)

(assert (=> d!2197965 m!7751274))

(declare-fun m!7751276 () Bool)

(assert (=> b!7040218 m!7751276))

(declare-fun m!7751278 () Bool)

(assert (=> b!7040219 m!7751278))

(assert (=> b!7040219 m!7751278))

(declare-fun m!7751280 () Bool)

(assert (=> b!7040219 m!7751280))

(declare-fun m!7751282 () Bool)

(assert (=> b!7040219 m!7751282))

(assert (=> b!7040219 m!7751280))

(assert (=> b!7040219 m!7751282))

(declare-fun m!7751284 () Bool)

(assert (=> b!7040219 m!7751284))

(assert (=> start!680934 d!2197965))

(declare-fun bs!1873152 () Bool)

(declare-fun d!2197975 () Bool)

(assert (= bs!1873152 (and d!2197975 b!7040077)))

(declare-fun lambda!416601 () Int)

(assert (=> bs!1873152 (= lambda!416601 lambda!416572)))

(assert (=> d!2197975 true))

(declare-fun map!15794 ((InoxSet Context!12966) Int) (InoxSet Context!12966))

(assert (=> d!2197975 (= (appendTo!608 z1!570 ct2!306) (map!15794 z1!570 lambda!416601))))

(declare-fun bs!1873153 () Bool)

(assert (= bs!1873153 d!2197975))

(declare-fun m!7751308 () Bool)

(assert (=> bs!1873153 m!7751308))

(assert (=> start!680934 d!2197975))

(declare-fun bs!1873154 () Bool)

(declare-fun d!2197985 () Bool)

(assert (= bs!1873154 (and d!2197985 b!7040077)))

(declare-fun lambda!416602 () Int)

(assert (=> bs!1873154 (= lambda!416602 lambda!416573)))

(declare-fun bs!1873155 () Bool)

(assert (= bs!1873155 (and d!2197985 d!2197957)))

(assert (=> bs!1873155 (= lambda!416602 lambda!416596)))

(assert (=> d!2197985 (= (inv!86576 ct2!306) (forall!16406 (exprs!6983 ct2!306) lambda!416602))))

(declare-fun bs!1873156 () Bool)

(assert (= bs!1873156 d!2197985))

(declare-fun m!7751310 () Bool)

(assert (=> bs!1873156 m!7751310))

(assert (=> start!680934 d!2197985))

(declare-fun d!2197987 () Bool)

(declare-fun c!1310337 () Bool)

(assert (=> d!2197987 (= c!1310337 (isEmpty!39597 (t!381761 s!7408)))))

(declare-fun e!4232319 () Bool)

(assert (=> d!2197987 (= (matchZipper!3027 lt!2523815 (t!381761 s!7408)) e!4232319)))

(declare-fun b!7040229 () Bool)

(assert (=> b!7040229 (= e!4232319 (nullableZipper!2594 lt!2523815))))

(declare-fun b!7040230 () Bool)

(assert (=> b!7040230 (= e!4232319 (matchZipper!3027 (derivationStepZipper!2943 lt!2523815 (head!14285 (t!381761 s!7408))) (tail!13592 (t!381761 s!7408))))))

(assert (= (and d!2197987 c!1310337) b!7040229))

(assert (= (and d!2197987 (not c!1310337)) b!7040230))

(declare-fun m!7751312 () Bool)

(assert (=> d!2197987 m!7751312))

(declare-fun m!7751314 () Bool)

(assert (=> b!7040229 m!7751314))

(declare-fun m!7751316 () Bool)

(assert (=> b!7040230 m!7751316))

(assert (=> b!7040230 m!7751316))

(declare-fun m!7751318 () Bool)

(assert (=> b!7040230 m!7751318))

(declare-fun m!7751320 () Bool)

(assert (=> b!7040230 m!7751320))

(assert (=> b!7040230 m!7751318))

(assert (=> b!7040230 m!7751320))

(declare-fun m!7751322 () Bool)

(assert (=> b!7040230 m!7751322))

(assert (=> b!7040065 d!2197987))

(assert (=> b!7040065 d!2197961))

(declare-fun d!2197989 () Bool)

(declare-fun c!1310340 () Bool)

(assert (=> d!2197989 (= c!1310340 (isEmpty!39597 (t!381761 s!7408)))))

(declare-fun e!4232320 () Bool)

(assert (=> d!2197989 (= (matchZipper!3027 lt!2523812 (t!381761 s!7408)) e!4232320)))

(declare-fun b!7040231 () Bool)

(assert (=> b!7040231 (= e!4232320 (nullableZipper!2594 lt!2523812))))

(declare-fun b!7040232 () Bool)

(assert (=> b!7040232 (= e!4232320 (matchZipper!3027 (derivationStepZipper!2943 lt!2523812 (head!14285 (t!381761 s!7408))) (tail!13592 (t!381761 s!7408))))))

(assert (= (and d!2197989 c!1310340) b!7040231))

(assert (= (and d!2197989 (not c!1310340)) b!7040232))

(assert (=> d!2197989 m!7751312))

(declare-fun m!7751324 () Bool)

(assert (=> b!7040231 m!7751324))

(assert (=> b!7040232 m!7751316))

(assert (=> b!7040232 m!7751316))

(declare-fun m!7751326 () Bool)

(assert (=> b!7040232 m!7751326))

(assert (=> b!7040232 m!7751320))

(assert (=> b!7040232 m!7751326))

(assert (=> b!7040232 m!7751320))

(declare-fun m!7751328 () Bool)

(assert (=> b!7040232 m!7751328))

(assert (=> b!7040067 d!2197989))

(declare-fun d!2197991 () Bool)

(declare-fun c!1310341 () Bool)

(assert (=> d!2197991 (= c!1310341 (isEmpty!39597 (t!381761 s!7408)))))

(declare-fun e!4232321 () Bool)

(assert (=> d!2197991 (= (matchZipper!3027 lt!2523790 (t!381761 s!7408)) e!4232321)))

(declare-fun b!7040233 () Bool)

(assert (=> b!7040233 (= e!4232321 (nullableZipper!2594 lt!2523790))))

(declare-fun b!7040234 () Bool)

(assert (=> b!7040234 (= e!4232321 (matchZipper!3027 (derivationStepZipper!2943 lt!2523790 (head!14285 (t!381761 s!7408))) (tail!13592 (t!381761 s!7408))))))

(assert (= (and d!2197991 c!1310341) b!7040233))

(assert (= (and d!2197991 (not c!1310341)) b!7040234))

(assert (=> d!2197991 m!7751312))

(declare-fun m!7751330 () Bool)

(assert (=> b!7040233 m!7751330))

(assert (=> b!7040234 m!7751316))

(assert (=> b!7040234 m!7751316))

(declare-fun m!7751332 () Bool)

(assert (=> b!7040234 m!7751332))

(assert (=> b!7040234 m!7751320))

(assert (=> b!7040234 m!7751332))

(assert (=> b!7040234 m!7751320))

(declare-fun m!7751334 () Bool)

(assert (=> b!7040234 m!7751334))

(assert (=> b!7040067 d!2197991))

(declare-fun d!2197993 () Bool)

(declare-fun e!4232329 () Bool)

(assert (=> d!2197993 (= (matchZipper!3027 ((_ map or) lt!2523790 lt!2523815) (t!381761 s!7408)) e!4232329)))

(declare-fun res!2874138 () Bool)

(assert (=> d!2197993 (=> res!2874138 e!4232329)))

(assert (=> d!2197993 (= res!2874138 (matchZipper!3027 lt!2523790 (t!381761 s!7408)))))

(declare-fun lt!2523881 () Unit!161654)

(declare-fun choose!53418 ((InoxSet Context!12966) (InoxSet Context!12966) List!67990) Unit!161654)

(assert (=> d!2197993 (= lt!2523881 (choose!53418 lt!2523790 lt!2523815 (t!381761 s!7408)))))

(assert (=> d!2197993 (= (lemmaZipperConcatMatchesSameAsBothZippers!1560 lt!2523790 lt!2523815 (t!381761 s!7408)) lt!2523881)))

(declare-fun b!7040248 () Bool)

(assert (=> b!7040248 (= e!4232329 (matchZipper!3027 lt!2523815 (t!381761 s!7408)))))

(assert (= (and d!2197993 (not res!2874138)) b!7040248))

(declare-fun m!7751350 () Bool)

(assert (=> d!2197993 m!7751350))

(assert (=> d!2197993 m!7751014))

(declare-fun m!7751352 () Bool)

(assert (=> d!2197993 m!7751352))

(assert (=> b!7040248 m!7751052))

(assert (=> b!7040067 d!2197993))

(declare-fun d!2198001 () Bool)

(declare-fun c!1310344 () Bool)

(assert (=> d!2198001 (= c!1310344 (isEmpty!39597 (t!381761 s!7408)))))

(declare-fun e!4232333 () Bool)

(assert (=> d!2198001 (= (matchZipper!3027 lt!2523803 (t!381761 s!7408)) e!4232333)))

(declare-fun b!7040254 () Bool)

(assert (=> b!7040254 (= e!4232333 (nullableZipper!2594 lt!2523803))))

(declare-fun b!7040255 () Bool)

(assert (=> b!7040255 (= e!4232333 (matchZipper!3027 (derivationStepZipper!2943 lt!2523803 (head!14285 (t!381761 s!7408))) (tail!13592 (t!381761 s!7408))))))

(assert (= (and d!2198001 c!1310344) b!7040254))

(assert (= (and d!2198001 (not c!1310344)) b!7040255))

(assert (=> d!2198001 m!7751312))

(declare-fun m!7751354 () Bool)

(assert (=> b!7040254 m!7751354))

(assert (=> b!7040255 m!7751316))

(assert (=> b!7040255 m!7751316))

(declare-fun m!7751356 () Bool)

(assert (=> b!7040255 m!7751356))

(assert (=> b!7040255 m!7751320))

(assert (=> b!7040255 m!7751356))

(assert (=> b!7040255 m!7751320))

(declare-fun m!7751358 () Bool)

(assert (=> b!7040255 m!7751358))

(assert (=> b!7040067 d!2198001))

(assert (=> b!7040067 d!2197961))

(declare-fun d!2198003 () Bool)

(declare-fun e!4232344 () Bool)

(assert (=> d!2198003 e!4232344))

(declare-fun res!2874143 () Bool)

(assert (=> d!2198003 (=> (not res!2874143) (not e!4232344))))

(declare-fun lt!2523885 () List!67989)

(declare-fun content!13573 (List!67989) (InoxSet Regex!17487))

(assert (=> d!2198003 (= res!2874143 (= (content!13573 lt!2523885) ((_ map or) (content!13573 (exprs!6983 lt!2523809)) (content!13573 (exprs!6983 ct2!306)))))))

(declare-fun e!4232343 () List!67989)

(assert (=> d!2198003 (= lt!2523885 e!4232343)))

(declare-fun c!1310347 () Bool)

(assert (=> d!2198003 (= c!1310347 ((_ is Nil!67865) (exprs!6983 lt!2523809)))))

(assert (=> d!2198003 (= (++!15549 (exprs!6983 lt!2523809) (exprs!6983 ct2!306)) lt!2523885)))

(declare-fun b!7040273 () Bool)

(declare-fun res!2874144 () Bool)

(assert (=> b!7040273 (=> (not res!2874144) (not e!4232344))))

(declare-fun size!41089 (List!67989) Int)

(assert (=> b!7040273 (= res!2874144 (= (size!41089 lt!2523885) (+ (size!41089 (exprs!6983 lt!2523809)) (size!41089 (exprs!6983 ct2!306)))))))

(declare-fun b!7040274 () Bool)

(assert (=> b!7040274 (= e!4232344 (or (not (= (exprs!6983 ct2!306) Nil!67865)) (= lt!2523885 (exprs!6983 lt!2523809))))))

(declare-fun b!7040271 () Bool)

(assert (=> b!7040271 (= e!4232343 (exprs!6983 ct2!306))))

(declare-fun b!7040272 () Bool)

(assert (=> b!7040272 (= e!4232343 (Cons!67865 (h!74313 (exprs!6983 lt!2523809)) (++!15549 (t!381760 (exprs!6983 lt!2523809)) (exprs!6983 ct2!306))))))

(assert (= (and d!2198003 c!1310347) b!7040271))

(assert (= (and d!2198003 (not c!1310347)) b!7040272))

(assert (= (and d!2198003 res!2874143) b!7040273))

(assert (= (and b!7040273 res!2874144) b!7040274))

(declare-fun m!7751370 () Bool)

(assert (=> d!2198003 m!7751370))

(declare-fun m!7751372 () Bool)

(assert (=> d!2198003 m!7751372))

(declare-fun m!7751374 () Bool)

(assert (=> d!2198003 m!7751374))

(declare-fun m!7751376 () Bool)

(assert (=> b!7040273 m!7751376))

(declare-fun m!7751378 () Bool)

(assert (=> b!7040273 m!7751378))

(declare-fun m!7751380 () Bool)

(assert (=> b!7040273 m!7751380))

(declare-fun m!7751382 () Bool)

(assert (=> b!7040272 m!7751382))

(assert (=> b!7040077 d!2198003))

(assert (=> b!7040077 d!2197959))

(declare-fun d!2198011 () Bool)

(declare-fun e!4232347 () Bool)

(assert (=> d!2198011 e!4232347))

(declare-fun res!2874147 () Bool)

(assert (=> d!2198011 (=> (not res!2874147) (not e!4232347))))

(declare-fun lt!2523888 () Context!12966)

(declare-fun dynLambda!27439 (Int Context!12966) Context!12966)

(assert (=> d!2198011 (= res!2874147 (= lt!2523792 (dynLambda!27439 lambda!416572 lt!2523888)))))

(declare-fun choose!53419 ((InoxSet Context!12966) Int Context!12966) Context!12966)

(assert (=> d!2198011 (= lt!2523888 (choose!53419 z1!570 lambda!416572 lt!2523792))))

(assert (=> d!2198011 (select (map!15794 z1!570 lambda!416572) lt!2523792)))

(assert (=> d!2198011 (= (mapPost2!328 z1!570 lambda!416572 lt!2523792) lt!2523888)))

(declare-fun b!7040278 () Bool)

(assert (=> b!7040278 (= e!4232347 (select z1!570 lt!2523888))))

(assert (= (and d!2198011 res!2874147) b!7040278))

(declare-fun b_lambda!267251 () Bool)

(assert (=> (not b_lambda!267251) (not d!2198011)))

(declare-fun m!7751384 () Bool)

(assert (=> d!2198011 m!7751384))

(declare-fun m!7751386 () Bool)

(assert (=> d!2198011 m!7751386))

(declare-fun m!7751388 () Bool)

(assert (=> d!2198011 m!7751388))

(declare-fun m!7751390 () Bool)

(assert (=> d!2198011 m!7751390))

(declare-fun m!7751392 () Bool)

(assert (=> b!7040278 m!7751392))

(assert (=> b!7040077 d!2198011))

(assert (=> b!7040075 d!2197987))

(declare-fun b!7040301 () Bool)

(declare-fun e!4232360 () Bool)

(assert (=> b!7040301 (= e!4232360 (nullable!7198 (regOne!35486 (h!74313 (exprs!6983 lt!2523809)))))))

(declare-fun call!639416 () (InoxSet Context!12966))

(declare-fun c!1310361 () Bool)

(declare-fun bm!639407 () Bool)

(declare-fun call!639412 () List!67989)

(declare-fun c!1310358 () Bool)

(declare-fun c!1310359 () Bool)

(assert (=> bm!639407 (= call!639416 (derivationStepZipperDown!2151 (ite c!1310358 (regOne!35487 (h!74313 (exprs!6983 lt!2523809))) (ite c!1310361 (regTwo!35486 (h!74313 (exprs!6983 lt!2523809))) (ite c!1310359 (regOne!35486 (h!74313 (exprs!6983 lt!2523809))) (reg!17816 (h!74313 (exprs!6983 lt!2523809)))))) (ite (or c!1310358 c!1310361) lt!2523817 (Context!12967 call!639412)) (h!74314 s!7408)))))

(declare-fun b!7040302 () Bool)

(declare-fun e!4232362 () (InoxSet Context!12966))

(declare-fun call!639415 () (InoxSet Context!12966))

(declare-fun call!639413 () (InoxSet Context!12966))

(assert (=> b!7040302 (= e!4232362 ((_ map or) call!639415 call!639413))))

(declare-fun b!7040303 () Bool)

(declare-fun e!4232363 () (InoxSet Context!12966))

(assert (=> b!7040303 (= e!4232363 ((_ map or) call!639416 call!639415))))

(declare-fun b!7040304 () Bool)

(declare-fun c!1310362 () Bool)

(assert (=> b!7040304 (= c!1310362 ((_ is Star!17487) (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun e!4232364 () (InoxSet Context!12966))

(declare-fun e!4232365 () (InoxSet Context!12966))

(assert (=> b!7040304 (= e!4232364 e!4232365)))

(declare-fun b!7040305 () Bool)

(declare-fun call!639417 () (InoxSet Context!12966))

(assert (=> b!7040305 (= e!4232365 call!639417)))

(declare-fun bm!639408 () Bool)

(declare-fun call!639414 () List!67989)

(assert (=> bm!639408 (= call!639412 call!639414)))

(declare-fun bm!639409 () Bool)

(assert (=> bm!639409 (= call!639413 call!639416)))

(declare-fun b!7040306 () Bool)

(assert (=> b!7040306 (= e!4232362 e!4232364)))

(assert (=> b!7040306 (= c!1310359 ((_ is Concat!26332) (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun bm!639410 () Bool)

(declare-fun $colon$colon!2587 (List!67989 Regex!17487) List!67989)

(assert (=> bm!639410 (= call!639414 ($colon$colon!2587 (exprs!6983 lt!2523817) (ite (or c!1310361 c!1310359) (regTwo!35486 (h!74313 (exprs!6983 lt!2523809))) (h!74313 (exprs!6983 lt!2523809)))))))

(declare-fun b!7040307 () Bool)

(assert (=> b!7040307 (= c!1310361 e!4232360)))

(declare-fun res!2874150 () Bool)

(assert (=> b!7040307 (=> (not res!2874150) (not e!4232360))))

(assert (=> b!7040307 (= res!2874150 ((_ is Concat!26332) (h!74313 (exprs!6983 lt!2523809))))))

(assert (=> b!7040307 (= e!4232363 e!4232362)))

(declare-fun b!7040308 () Bool)

(declare-fun e!4232361 () (InoxSet Context!12966))

(assert (=> b!7040308 (= e!4232361 e!4232363)))

(assert (=> b!7040308 (= c!1310358 ((_ is Union!17487) (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun bm!639411 () Bool)

(assert (=> bm!639411 (= call!639417 call!639413)))

(declare-fun d!2198013 () Bool)

(declare-fun c!1310360 () Bool)

(assert (=> d!2198013 (= c!1310360 (and ((_ is ElementMatch!17487) (h!74313 (exprs!6983 lt!2523809))) (= (c!1310283 (h!74313 (exprs!6983 lt!2523809))) (h!74314 s!7408))))))

(assert (=> d!2198013 (= (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523809)) lt!2523817 (h!74314 s!7408)) e!4232361)))

(declare-fun b!7040309 () Bool)

(assert (=> b!7040309 (= e!4232361 (store ((as const (Array Context!12966 Bool)) false) lt!2523817 true))))

(declare-fun b!7040310 () Bool)

(assert (=> b!7040310 (= e!4232364 call!639417)))

(declare-fun b!7040311 () Bool)

(assert (=> b!7040311 (= e!4232365 ((as const (Array Context!12966 Bool)) false))))

(declare-fun bm!639412 () Bool)

(assert (=> bm!639412 (= call!639415 (derivationStepZipperDown!2151 (ite c!1310358 (regTwo!35487 (h!74313 (exprs!6983 lt!2523809))) (regOne!35486 (h!74313 (exprs!6983 lt!2523809)))) (ite c!1310358 lt!2523817 (Context!12967 call!639414)) (h!74314 s!7408)))))

(assert (= (and d!2198013 c!1310360) b!7040309))

(assert (= (and d!2198013 (not c!1310360)) b!7040308))

(assert (= (and b!7040308 c!1310358) b!7040303))

(assert (= (and b!7040308 (not c!1310358)) b!7040307))

(assert (= (and b!7040307 res!2874150) b!7040301))

(assert (= (and b!7040307 c!1310361) b!7040302))

(assert (= (and b!7040307 (not c!1310361)) b!7040306))

(assert (= (and b!7040306 c!1310359) b!7040310))

(assert (= (and b!7040306 (not c!1310359)) b!7040304))

(assert (= (and b!7040304 c!1310362) b!7040305))

(assert (= (and b!7040304 (not c!1310362)) b!7040311))

(assert (= (or b!7040310 b!7040305) bm!639408))

(assert (= (or b!7040310 b!7040305) bm!639411))

(assert (= (or b!7040302 bm!639411) bm!639409))

(assert (= (or b!7040302 bm!639408) bm!639410))

(assert (= (or b!7040303 bm!639409) bm!639407))

(assert (= (or b!7040303 b!7040302) bm!639412))

(declare-fun m!7751394 () Bool)

(assert (=> b!7040309 m!7751394))

(declare-fun m!7751396 () Bool)

(assert (=> bm!639410 m!7751396))

(declare-fun m!7751398 () Bool)

(assert (=> bm!639412 m!7751398))

(declare-fun m!7751400 () Bool)

(assert (=> b!7040301 m!7751400))

(declare-fun m!7751402 () Bool)

(assert (=> bm!639407 m!7751402))

(assert (=> b!7040076 d!2198013))

(declare-fun e!4232374 () (InoxSet Context!12966))

(declare-fun call!639420 () (InoxSet Context!12966))

(declare-fun b!7040322 () Bool)

(assert (=> b!7040322 (= e!4232374 ((_ map or) call!639420 (derivationStepZipperUp!2097 (Context!12967 (t!381760 (exprs!6983 lt!2523817))) (h!74314 s!7408))))))

(declare-fun bm!639415 () Bool)

(assert (=> bm!639415 (= call!639420 (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523817)) (Context!12967 (t!381760 (exprs!6983 lt!2523817))) (h!74314 s!7408)))))

(declare-fun b!7040323 () Bool)

(declare-fun e!4232372 () Bool)

(assert (=> b!7040323 (= e!4232372 (nullable!7198 (h!74313 (exprs!6983 lt!2523817))))))

(declare-fun b!7040324 () Bool)

(declare-fun e!4232373 () (InoxSet Context!12966))

(assert (=> b!7040324 (= e!4232373 call!639420)))

(declare-fun b!7040325 () Bool)

(assert (=> b!7040325 (= e!4232373 ((as const (Array Context!12966 Bool)) false))))

(declare-fun d!2198015 () Bool)

(declare-fun c!1310368 () Bool)

(assert (=> d!2198015 (= c!1310368 e!4232372)))

(declare-fun res!2874153 () Bool)

(assert (=> d!2198015 (=> (not res!2874153) (not e!4232372))))

(assert (=> d!2198015 (= res!2874153 ((_ is Cons!67865) (exprs!6983 lt!2523817)))))

(assert (=> d!2198015 (= (derivationStepZipperUp!2097 lt!2523817 (h!74314 s!7408)) e!4232374)))

(declare-fun b!7040326 () Bool)

(assert (=> b!7040326 (= e!4232374 e!4232373)))

(declare-fun c!1310367 () Bool)

(assert (=> b!7040326 (= c!1310367 ((_ is Cons!67865) (exprs!6983 lt!2523817)))))

(assert (= (and d!2198015 res!2874153) b!7040323))

(assert (= (and d!2198015 c!1310368) b!7040322))

(assert (= (and d!2198015 (not c!1310368)) b!7040326))

(assert (= (and b!7040326 c!1310367) b!7040324))

(assert (= (and b!7040326 (not c!1310367)) b!7040325))

(assert (= (or b!7040322 b!7040324) bm!639415))

(declare-fun m!7751404 () Bool)

(assert (=> b!7040322 m!7751404))

(declare-fun m!7751406 () Bool)

(assert (=> bm!639415 m!7751406))

(declare-fun m!7751408 () Bool)

(assert (=> b!7040323 m!7751408))

(assert (=> b!7040076 d!2198015))

(assert (=> b!7040076 d!2197961))

(declare-fun d!2198017 () Bool)

(declare-fun e!4232376 () Bool)

(assert (=> d!2198017 e!4232376))

(declare-fun res!2874154 () Bool)

(assert (=> d!2198017 (=> (not res!2874154) (not e!4232376))))

(declare-fun lt!2523889 () List!67989)

(assert (=> d!2198017 (= res!2874154 (= (content!13573 lt!2523889) ((_ map or) (content!13573 lt!2523795) (content!13573 (exprs!6983 ct2!306)))))))

(declare-fun e!4232375 () List!67989)

(assert (=> d!2198017 (= lt!2523889 e!4232375)))

(declare-fun c!1310369 () Bool)

(assert (=> d!2198017 (= c!1310369 ((_ is Nil!67865) lt!2523795))))

(assert (=> d!2198017 (= (++!15549 lt!2523795 (exprs!6983 ct2!306)) lt!2523889)))

(declare-fun b!7040329 () Bool)

(declare-fun res!2874155 () Bool)

(assert (=> b!7040329 (=> (not res!2874155) (not e!4232376))))

(assert (=> b!7040329 (= res!2874155 (= (size!41089 lt!2523889) (+ (size!41089 lt!2523795) (size!41089 (exprs!6983 ct2!306)))))))

(declare-fun b!7040330 () Bool)

(assert (=> b!7040330 (= e!4232376 (or (not (= (exprs!6983 ct2!306) Nil!67865)) (= lt!2523889 lt!2523795)))))

(declare-fun b!7040327 () Bool)

(assert (=> b!7040327 (= e!4232375 (exprs!6983 ct2!306))))

(declare-fun b!7040328 () Bool)

(assert (=> b!7040328 (= e!4232375 (Cons!67865 (h!74313 lt!2523795) (++!15549 (t!381760 lt!2523795) (exprs!6983 ct2!306))))))

(assert (= (and d!2198017 c!1310369) b!7040327))

(assert (= (and d!2198017 (not c!1310369)) b!7040328))

(assert (= (and d!2198017 res!2874154) b!7040329))

(assert (= (and b!7040329 res!2874155) b!7040330))

(declare-fun m!7751410 () Bool)

(assert (=> d!2198017 m!7751410))

(declare-fun m!7751412 () Bool)

(assert (=> d!2198017 m!7751412))

(assert (=> d!2198017 m!7751374))

(declare-fun m!7751414 () Bool)

(assert (=> b!7040329 m!7751414))

(declare-fun m!7751416 () Bool)

(assert (=> b!7040329 m!7751416))

(assert (=> b!7040329 m!7751380))

(declare-fun m!7751418 () Bool)

(assert (=> b!7040328 m!7751418))

(assert (=> b!7040076 d!2198017))

(declare-fun d!2198019 () Bool)

(declare-fun nullableFct!2741 (Regex!17487) Bool)

(assert (=> d!2198019 (= (nullable!7198 (h!74313 (exprs!6983 lt!2523809))) (nullableFct!2741 (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun bs!1873164 () Bool)

(assert (= bs!1873164 d!2198019))

(declare-fun m!7751420 () Bool)

(assert (=> bs!1873164 m!7751420))

(assert (=> b!7040079 d!2198019))

(declare-fun d!2198021 () Bool)

(assert (=> d!2198021 (= (tail!13590 (exprs!6983 lt!2523809)) (t!381760 (exprs!6983 lt!2523809)))))

(assert (=> b!7040079 d!2198021))

(declare-fun b!7040331 () Bool)

(declare-fun e!4232377 () Bool)

(assert (=> b!7040331 (= e!4232377 (nullable!7198 (regOne!35486 (h!74313 (exprs!6983 lt!2523809)))))))

(declare-fun bm!639416 () Bool)

(declare-fun call!639421 () List!67989)

(declare-fun c!1310370 () Bool)

(declare-fun c!1310371 () Bool)

(declare-fun call!639425 () (InoxSet Context!12966))

(declare-fun c!1310373 () Bool)

(assert (=> bm!639416 (= call!639425 (derivationStepZipperDown!2151 (ite c!1310370 (regOne!35487 (h!74313 (exprs!6983 lt!2523809))) (ite c!1310373 (regTwo!35486 (h!74313 (exprs!6983 lt!2523809))) (ite c!1310371 (regOne!35486 (h!74313 (exprs!6983 lt!2523809))) (reg!17816 (h!74313 (exprs!6983 lt!2523809)))))) (ite (or c!1310370 c!1310373) lt!2523793 (Context!12967 call!639421)) (h!74314 s!7408)))))

(declare-fun b!7040332 () Bool)

(declare-fun e!4232379 () (InoxSet Context!12966))

(declare-fun call!639424 () (InoxSet Context!12966))

(declare-fun call!639422 () (InoxSet Context!12966))

(assert (=> b!7040332 (= e!4232379 ((_ map or) call!639424 call!639422))))

(declare-fun b!7040333 () Bool)

(declare-fun e!4232380 () (InoxSet Context!12966))

(assert (=> b!7040333 (= e!4232380 ((_ map or) call!639425 call!639424))))

(declare-fun b!7040334 () Bool)

(declare-fun c!1310374 () Bool)

(assert (=> b!7040334 (= c!1310374 ((_ is Star!17487) (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun e!4232381 () (InoxSet Context!12966))

(declare-fun e!4232382 () (InoxSet Context!12966))

(assert (=> b!7040334 (= e!4232381 e!4232382)))

(declare-fun b!7040335 () Bool)

(declare-fun call!639426 () (InoxSet Context!12966))

(assert (=> b!7040335 (= e!4232382 call!639426)))

(declare-fun bm!639417 () Bool)

(declare-fun call!639423 () List!67989)

(assert (=> bm!639417 (= call!639421 call!639423)))

(declare-fun bm!639418 () Bool)

(assert (=> bm!639418 (= call!639422 call!639425)))

(declare-fun b!7040336 () Bool)

(assert (=> b!7040336 (= e!4232379 e!4232381)))

(assert (=> b!7040336 (= c!1310371 ((_ is Concat!26332) (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun bm!639419 () Bool)

(assert (=> bm!639419 (= call!639423 ($colon$colon!2587 (exprs!6983 lt!2523793) (ite (or c!1310373 c!1310371) (regTwo!35486 (h!74313 (exprs!6983 lt!2523809))) (h!74313 (exprs!6983 lt!2523809)))))))

(declare-fun b!7040337 () Bool)

(assert (=> b!7040337 (= c!1310373 e!4232377)))

(declare-fun res!2874156 () Bool)

(assert (=> b!7040337 (=> (not res!2874156) (not e!4232377))))

(assert (=> b!7040337 (= res!2874156 ((_ is Concat!26332) (h!74313 (exprs!6983 lt!2523809))))))

(assert (=> b!7040337 (= e!4232380 e!4232379)))

(declare-fun b!7040338 () Bool)

(declare-fun e!4232378 () (InoxSet Context!12966))

(assert (=> b!7040338 (= e!4232378 e!4232380)))

(assert (=> b!7040338 (= c!1310370 ((_ is Union!17487) (h!74313 (exprs!6983 lt!2523809))))))

(declare-fun bm!639420 () Bool)

(assert (=> bm!639420 (= call!639426 call!639422)))

(declare-fun d!2198023 () Bool)

(declare-fun c!1310372 () Bool)

(assert (=> d!2198023 (= c!1310372 (and ((_ is ElementMatch!17487) (h!74313 (exprs!6983 lt!2523809))) (= (c!1310283 (h!74313 (exprs!6983 lt!2523809))) (h!74314 s!7408))))))

(assert (=> d!2198023 (= (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523809)) lt!2523793 (h!74314 s!7408)) e!4232378)))

(declare-fun b!7040339 () Bool)

(assert (=> b!7040339 (= e!4232378 (store ((as const (Array Context!12966 Bool)) false) lt!2523793 true))))

(declare-fun b!7040340 () Bool)

(assert (=> b!7040340 (= e!4232381 call!639426)))

(declare-fun b!7040341 () Bool)

(assert (=> b!7040341 (= e!4232382 ((as const (Array Context!12966 Bool)) false))))

(declare-fun bm!639421 () Bool)

(assert (=> bm!639421 (= call!639424 (derivationStepZipperDown!2151 (ite c!1310370 (regTwo!35487 (h!74313 (exprs!6983 lt!2523809))) (regOne!35486 (h!74313 (exprs!6983 lt!2523809)))) (ite c!1310370 lt!2523793 (Context!12967 call!639423)) (h!74314 s!7408)))))

(assert (= (and d!2198023 c!1310372) b!7040339))

(assert (= (and d!2198023 (not c!1310372)) b!7040338))

(assert (= (and b!7040338 c!1310370) b!7040333))

(assert (= (and b!7040338 (not c!1310370)) b!7040337))

(assert (= (and b!7040337 res!2874156) b!7040331))

(assert (= (and b!7040337 c!1310373) b!7040332))

(assert (= (and b!7040337 (not c!1310373)) b!7040336))

(assert (= (and b!7040336 c!1310371) b!7040340))

(assert (= (and b!7040336 (not c!1310371)) b!7040334))

(assert (= (and b!7040334 c!1310374) b!7040335))

(assert (= (and b!7040334 (not c!1310374)) b!7040341))

(assert (= (or b!7040340 b!7040335) bm!639417))

(assert (= (or b!7040340 b!7040335) bm!639420))

(assert (= (or b!7040332 bm!639420) bm!639418))

(assert (= (or b!7040332 bm!639417) bm!639419))

(assert (= (or b!7040333 bm!639418) bm!639416))

(assert (= (or b!7040333 b!7040332) bm!639421))

(declare-fun m!7751422 () Bool)

(assert (=> b!7040339 m!7751422))

(declare-fun m!7751424 () Bool)

(assert (=> bm!639419 m!7751424))

(declare-fun m!7751426 () Bool)

(assert (=> bm!639421 m!7751426))

(assert (=> b!7040331 m!7751400))

(declare-fun m!7751428 () Bool)

(assert (=> bm!639416 m!7751428))

(assert (=> b!7040080 d!2198023))

(assert (=> b!7040080 d!2197961))

(declare-fun d!2198025 () Bool)

(assert (=> d!2198025 (isDefined!13589 (findConcatSeparationZippers!404 lt!2523826 (store ((as const (Array Context!12966 Bool)) false) ct2!306 true) Nil!67866 (t!381761 s!7408) (t!381761 s!7408)))))

(declare-fun lt!2523892 () Unit!161654)

(declare-fun choose!53423 ((InoxSet Context!12966) Context!12966 List!67990) Unit!161654)

(assert (=> d!2198025 (= lt!2523892 (choose!53423 lt!2523826 ct2!306 (t!381761 s!7408)))))

(assert (=> d!2198025 (matchZipper!3027 (appendTo!608 lt!2523826 ct2!306) (t!381761 s!7408))))

(assert (=> d!2198025 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!392 lt!2523826 ct2!306 (t!381761 s!7408)) lt!2523892)))

(declare-fun bs!1873165 () Bool)

(assert (= bs!1873165 d!2198025))

(declare-fun m!7751430 () Bool)

(assert (=> bs!1873165 m!7751430))

(assert (=> bs!1873165 m!7751000))

(declare-fun m!7751432 () Bool)

(assert (=> bs!1873165 m!7751432))

(assert (=> bs!1873165 m!7751000))

(assert (=> bs!1873165 m!7750996))

(assert (=> bs!1873165 m!7750996))

(assert (=> bs!1873165 m!7751008))

(assert (=> bs!1873165 m!7751008))

(declare-fun m!7751434 () Bool)

(assert (=> bs!1873165 m!7751434))

(assert (=> b!7040080 d!2198025))

(declare-fun d!2198027 () Bool)

(assert (=> d!2198027 (= (get!23782 lt!2523808) (v!53177 lt!2523808))))

(assert (=> b!7040080 d!2198027))

(declare-fun d!2198029 () Bool)

(declare-fun c!1310375 () Bool)

(assert (=> d!2198029 (= c!1310375 (isEmpty!39597 (_1!37359 (get!23782 lt!2523808))))))

(declare-fun e!4232383 () Bool)

(assert (=> d!2198029 (= (matchZipper!3027 lt!2523826 (_1!37359 (get!23782 lt!2523808))) e!4232383)))

(declare-fun b!7040342 () Bool)

(assert (=> b!7040342 (= e!4232383 (nullableZipper!2594 lt!2523826))))

(declare-fun b!7040343 () Bool)

(assert (=> b!7040343 (= e!4232383 (matchZipper!3027 (derivationStepZipper!2943 lt!2523826 (head!14285 (_1!37359 (get!23782 lt!2523808)))) (tail!13592 (_1!37359 (get!23782 lt!2523808)))))))

(assert (= (and d!2198029 c!1310375) b!7040342))

(assert (= (and d!2198029 (not c!1310375)) b!7040343))

(declare-fun m!7751436 () Bool)

(assert (=> d!2198029 m!7751436))

(declare-fun m!7751438 () Bool)

(assert (=> b!7040342 m!7751438))

(declare-fun m!7751440 () Bool)

(assert (=> b!7040343 m!7751440))

(assert (=> b!7040343 m!7751440))

(declare-fun m!7751442 () Bool)

(assert (=> b!7040343 m!7751442))

(declare-fun m!7751444 () Bool)

(assert (=> b!7040343 m!7751444))

(assert (=> b!7040343 m!7751442))

(assert (=> b!7040343 m!7751444))

(declare-fun m!7751446 () Bool)

(assert (=> b!7040343 m!7751446))

(assert (=> b!7040080 d!2198029))

(declare-fun bs!1873166 () Bool)

(declare-fun d!2198031 () Bool)

(assert (= bs!1873166 (and d!2198031 b!7040077)))

(declare-fun lambda!416606 () Int)

(assert (=> bs!1873166 (= lambda!416606 lambda!416572)))

(declare-fun bs!1873167 () Bool)

(assert (= bs!1873167 (and d!2198031 d!2197975)))

(assert (=> bs!1873167 (= lambda!416606 lambda!416601)))

(assert (=> d!2198031 true))

(assert (=> d!2198031 (= (appendTo!608 lt!2523826 ct2!306) (map!15794 lt!2523826 lambda!416606))))

(declare-fun bs!1873168 () Bool)

(assert (= bs!1873168 d!2198031))

(declare-fun m!7751448 () Bool)

(assert (=> bs!1873168 m!7751448))

(assert (=> b!7040080 d!2198031))

(declare-fun b!7040362 () Bool)

(declare-fun lt!2523900 () Unit!161654)

(declare-fun lt!2523901 () Unit!161654)

(assert (=> b!7040362 (= lt!2523900 lt!2523901)))

(declare-fun ++!15551 (List!67990 List!67990) List!67990)

(assert (=> b!7040362 (= (++!15551 (++!15551 Nil!67866 (Cons!67866 (h!74314 (t!381761 s!7408)) Nil!67866)) (t!381761 (t!381761 s!7408))) (t!381761 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2936 (List!67990 C!35244 List!67990 List!67990) Unit!161654)

(assert (=> b!7040362 (= lt!2523901 (lemmaMoveElementToOtherListKeepsConcatEq!2936 Nil!67866 (h!74314 (t!381761 s!7408)) (t!381761 (t!381761 s!7408)) (t!381761 s!7408)))))

(declare-fun e!4232398 () Option!16888)

(assert (=> b!7040362 (= e!4232398 (findConcatSeparationZippers!404 lt!2523826 (store ((as const (Array Context!12966 Bool)) false) ct2!306 true) (++!15551 Nil!67866 (Cons!67866 (h!74314 (t!381761 s!7408)) Nil!67866)) (t!381761 (t!381761 s!7408)) (t!381761 s!7408)))))

(declare-fun b!7040363 () Bool)

(declare-fun e!4232395 () Option!16888)

(assert (=> b!7040363 (= e!4232395 e!4232398)))

(declare-fun c!1310381 () Bool)

(assert (=> b!7040363 (= c!1310381 ((_ is Nil!67866) (t!381761 s!7408)))))

(declare-fun b!7040364 () Bool)

(assert (=> b!7040364 (= e!4232398 None!16887)))

(declare-fun b!7040365 () Bool)

(declare-fun res!2874169 () Bool)

(declare-fun e!4232394 () Bool)

(assert (=> b!7040365 (=> (not res!2874169) (not e!4232394))))

(declare-fun lt!2523899 () Option!16888)

(assert (=> b!7040365 (= res!2874169 (matchZipper!3027 lt!2523826 (_1!37359 (get!23782 lt!2523899))))))

(declare-fun b!7040366 () Bool)

(declare-fun res!2874171 () Bool)

(assert (=> b!7040366 (=> (not res!2874171) (not e!4232394))))

(assert (=> b!7040366 (= res!2874171 (matchZipper!3027 (store ((as const (Array Context!12966 Bool)) false) ct2!306 true) (_2!37359 (get!23782 lt!2523899))))))

(declare-fun b!7040367 () Bool)

(declare-fun e!4232396 () Bool)

(assert (=> b!7040367 (= e!4232396 (matchZipper!3027 (store ((as const (Array Context!12966 Bool)) false) ct2!306 true) (t!381761 s!7408)))))

(declare-fun b!7040368 () Bool)

(assert (=> b!7040368 (= e!4232395 (Some!16887 (tuple2!68113 Nil!67866 (t!381761 s!7408))))))

(declare-fun d!2198033 () Bool)

(declare-fun e!4232397 () Bool)

(assert (=> d!2198033 e!4232397))

(declare-fun res!2874167 () Bool)

(assert (=> d!2198033 (=> res!2874167 e!4232397)))

(assert (=> d!2198033 (= res!2874167 e!4232394)))

(declare-fun res!2874170 () Bool)

(assert (=> d!2198033 (=> (not res!2874170) (not e!4232394))))

(assert (=> d!2198033 (= res!2874170 (isDefined!13589 lt!2523899))))

(assert (=> d!2198033 (= lt!2523899 e!4232395)))

(declare-fun c!1310380 () Bool)

(assert (=> d!2198033 (= c!1310380 e!4232396)))

(declare-fun res!2874168 () Bool)

(assert (=> d!2198033 (=> (not res!2874168) (not e!4232396))))

(assert (=> d!2198033 (= res!2874168 (matchZipper!3027 lt!2523826 Nil!67866))))

(assert (=> d!2198033 (= (++!15551 Nil!67866 (t!381761 s!7408)) (t!381761 s!7408))))

(assert (=> d!2198033 (= (findConcatSeparationZippers!404 lt!2523826 (store ((as const (Array Context!12966 Bool)) false) ct2!306 true) Nil!67866 (t!381761 s!7408) (t!381761 s!7408)) lt!2523899)))

(declare-fun b!7040369 () Bool)

(assert (=> b!7040369 (= e!4232397 (not (isDefined!13589 lt!2523899)))))

(declare-fun b!7040370 () Bool)

(assert (=> b!7040370 (= e!4232394 (= (++!15551 (_1!37359 (get!23782 lt!2523899)) (_2!37359 (get!23782 lt!2523899))) (t!381761 s!7408)))))

(assert (= (and d!2198033 res!2874168) b!7040367))

(assert (= (and d!2198033 c!1310380) b!7040368))

(assert (= (and d!2198033 (not c!1310380)) b!7040363))

(assert (= (and b!7040363 c!1310381) b!7040364))

(assert (= (and b!7040363 (not c!1310381)) b!7040362))

(assert (= (and d!2198033 res!2874170) b!7040365))

(assert (= (and b!7040365 res!2874169) b!7040366))

(assert (= (and b!7040366 res!2874171) b!7040370))

(assert (= (and d!2198033 (not res!2874167)) b!7040369))

(declare-fun m!7751450 () Bool)

(assert (=> b!7040370 m!7751450))

(declare-fun m!7751452 () Bool)

(assert (=> b!7040370 m!7751452))

(assert (=> b!7040367 m!7750996))

(declare-fun m!7751454 () Bool)

(assert (=> b!7040367 m!7751454))

(assert (=> b!7040365 m!7751450))

(declare-fun m!7751456 () Bool)

(assert (=> b!7040365 m!7751456))

(declare-fun m!7751458 () Bool)

(assert (=> d!2198033 m!7751458))

(declare-fun m!7751460 () Bool)

(assert (=> d!2198033 m!7751460))

(declare-fun m!7751462 () Bool)

(assert (=> d!2198033 m!7751462))

(assert (=> b!7040366 m!7751450))

(assert (=> b!7040366 m!7750996))

(declare-fun m!7751464 () Bool)

(assert (=> b!7040366 m!7751464))

(declare-fun m!7751466 () Bool)

(assert (=> b!7040362 m!7751466))

(assert (=> b!7040362 m!7751466))

(declare-fun m!7751468 () Bool)

(assert (=> b!7040362 m!7751468))

(declare-fun m!7751470 () Bool)

(assert (=> b!7040362 m!7751470))

(assert (=> b!7040362 m!7750996))

(assert (=> b!7040362 m!7751466))

(declare-fun m!7751472 () Bool)

(assert (=> b!7040362 m!7751472))

(assert (=> b!7040369 m!7751458))

(assert (=> b!7040080 d!2198033))

(declare-fun bs!1873169 () Bool)

(declare-fun d!2198035 () Bool)

(assert (= bs!1873169 (and d!2198035 b!7040077)))

(declare-fun lambda!416609 () Int)

(assert (=> bs!1873169 (= lambda!416609 lambda!416573)))

(declare-fun bs!1873170 () Bool)

(assert (= bs!1873170 (and d!2198035 d!2197957)))

(assert (=> bs!1873170 (= lambda!416609 lambda!416596)))

(declare-fun bs!1873171 () Bool)

(assert (= bs!1873171 (and d!2198035 d!2197985)))

(assert (=> bs!1873171 (= lambda!416609 lambda!416602)))

(assert (=> d!2198035 (= (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523809)) (Context!12967 (++!15549 (exprs!6983 lt!2523793) (exprs!6983 ct2!306))) (h!74314 s!7408)) (appendTo!608 (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523809)) lt!2523793 (h!74314 s!7408)) ct2!306))))

(declare-fun lt!2523907 () Unit!161654)

(assert (=> d!2198035 (= lt!2523907 (lemmaConcatPreservesForall!808 (exprs!6983 lt!2523793) (exprs!6983 ct2!306) lambda!416609))))

(declare-fun lt!2523906 () Unit!161654)

(declare-fun choose!53424 (Context!12966 Regex!17487 C!35244 Context!12966) Unit!161654)

(assert (=> d!2198035 (= lt!2523906 (choose!53424 lt!2523793 (h!74313 (exprs!6983 lt!2523809)) (h!74314 s!7408) ct2!306))))

(declare-fun validRegex!8934 (Regex!17487) Bool)

(assert (=> d!2198035 (validRegex!8934 (h!74313 (exprs!6983 lt!2523809)))))

(assert (=> d!2198035 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!66 lt!2523793 (h!74313 (exprs!6983 lt!2523809)) (h!74314 s!7408) ct2!306) lt!2523906)))

(declare-fun bs!1873172 () Bool)

(assert (= bs!1873172 d!2198035))

(assert (=> bs!1873172 m!7750994))

(declare-fun m!7751474 () Bool)

(assert (=> bs!1873172 m!7751474))

(assert (=> bs!1873172 m!7750994))

(declare-fun m!7751476 () Bool)

(assert (=> bs!1873172 m!7751476))

(declare-fun m!7751478 () Bool)

(assert (=> bs!1873172 m!7751478))

(declare-fun m!7751480 () Bool)

(assert (=> bs!1873172 m!7751480))

(declare-fun m!7751482 () Bool)

(assert (=> bs!1873172 m!7751482))

(declare-fun m!7751484 () Bool)

(assert (=> bs!1873172 m!7751484))

(assert (=> b!7040080 d!2198035))

(declare-fun d!2198037 () Bool)

(declare-fun isEmpty!39599 (Option!16888) Bool)

(assert (=> d!2198037 (= (isDefined!13589 lt!2523808) (not (isEmpty!39599 lt!2523808)))))

(declare-fun bs!1873173 () Bool)

(assert (= bs!1873173 d!2198037))

(declare-fun m!7751486 () Bool)

(assert (=> bs!1873173 m!7751486))

(assert (=> b!7040080 d!2198037))

(declare-fun d!2198039 () Bool)

(declare-fun choose!53425 ((InoxSet Context!12966) Int) (InoxSet Context!12966))

(assert (=> d!2198039 (= (flatMap!2434 lt!2523818 lambda!416574) (choose!53425 lt!2523818 lambda!416574))))

(declare-fun bs!1873174 () Bool)

(assert (= bs!1873174 d!2198039))

(declare-fun m!7751488 () Bool)

(assert (=> bs!1873174 m!7751488))

(assert (=> b!7040070 d!2198039))

(declare-fun bs!1873175 () Bool)

(declare-fun d!2198041 () Bool)

(assert (= bs!1873175 (and d!2198041 b!7040070)))

(declare-fun lambda!416612 () Int)

(assert (=> bs!1873175 (= lambda!416612 lambda!416574)))

(assert (=> d!2198041 true))

(assert (=> d!2198041 (= (derivationStepZipper!2943 lt!2523818 (h!74314 s!7408)) (flatMap!2434 lt!2523818 lambda!416612))))

(declare-fun bs!1873176 () Bool)

(assert (= bs!1873176 d!2198041))

(declare-fun m!7751490 () Bool)

(assert (=> bs!1873176 m!7751490))

(assert (=> b!7040070 d!2198041))

(assert (=> b!7040070 d!2197959))

(declare-fun e!4232401 () (InoxSet Context!12966))

(declare-fun call!639427 () (InoxSet Context!12966))

(declare-fun b!7040373 () Bool)

(assert (=> b!7040373 (= e!4232401 ((_ map or) call!639427 (derivationStepZipperUp!2097 (Context!12967 (t!381760 (exprs!6983 lt!2523801))) (h!74314 s!7408))))))

(declare-fun bm!639422 () Bool)

(assert (=> bm!639422 (= call!639427 (derivationStepZipperDown!2151 (h!74313 (exprs!6983 lt!2523801)) (Context!12967 (t!381760 (exprs!6983 lt!2523801))) (h!74314 s!7408)))))

(declare-fun b!7040374 () Bool)

(declare-fun e!4232399 () Bool)

(assert (=> b!7040374 (= e!4232399 (nullable!7198 (h!74313 (exprs!6983 lt!2523801))))))

(declare-fun b!7040375 () Bool)

(declare-fun e!4232400 () (InoxSet Context!12966))

(assert (=> b!7040375 (= e!4232400 call!639427)))

(declare-fun b!7040376 () Bool)

(assert (=> b!7040376 (= e!4232400 ((as const (Array Context!12966 Bool)) false))))

(declare-fun d!2198043 () Bool)

(declare-fun c!1310386 () Bool)

(assert (=> d!2198043 (= c!1310386 e!4232399)))

(declare-fun res!2874172 () Bool)

(assert (=> d!2198043 (=> (not res!2874172) (not e!4232399))))

(assert (=> d!2198043 (= res!2874172 ((_ is Cons!67865) (exprs!6983 lt!2523801)))))

(assert (=> d!2198043 (= (derivationStepZipperUp!2097 lt!2523801 (h!74314 s!7408)) e!4232401)))

(declare-fun b!7040377 () Bool)

(assert (=> b!7040377 (= e!4232401 e!4232400)))

(declare-fun c!1310385 () Bool)

(assert (=> b!7040377 (= c!1310385 ((_ is Cons!67865) (exprs!6983 lt!2523801)))))

(assert (= (and d!2198043 res!2874172) b!7040374))

(assert (= (and d!2198043 c!1310386) b!7040373))

(assert (= (and d!2198043 (not c!1310386)) b!7040377))

(assert (= (and b!7040377 c!1310385) b!7040375))

(assert (= (and b!7040377 (not c!1310385)) b!7040376))

(assert (= (or b!7040373 b!7040375) bm!639422))

(declare-fun m!7751492 () Bool)

(assert (=> b!7040373 m!7751492))

(declare-fun m!7751494 () Bool)

(assert (=> bm!639422 m!7751494))

(declare-fun m!7751496 () Bool)

(assert (=> b!7040374 m!7751496))

(assert (=> b!7040070 d!2198043))

(declare-fun d!2198045 () Bool)

(declare-fun dynLambda!27441 (Int Context!12966) (InoxSet Context!12966))

(assert (=> d!2198045 (= (flatMap!2434 lt!2523818 lambda!416574) (dynLambda!27441 lambda!416574 lt!2523801))))

(declare-fun lt!2523910 () Unit!161654)

(declare-fun choose!53426 ((InoxSet Context!12966) Context!12966 Int) Unit!161654)

(assert (=> d!2198045 (= lt!2523910 (choose!53426 lt!2523818 lt!2523801 lambda!416574))))

(assert (=> d!2198045 (= lt!2523818 (store ((as const (Array Context!12966 Bool)) false) lt!2523801 true))))

(assert (=> d!2198045 (= (lemmaFlatMapOnSingletonSet!1948 lt!2523818 lt!2523801 lambda!416574) lt!2523910)))

(declare-fun b_lambda!267253 () Bool)

(assert (=> (not b_lambda!267253) (not d!2198045)))

(declare-fun bs!1873177 () Bool)

(assert (= bs!1873177 d!2198045))

(assert (=> bs!1873177 m!7751048))

(declare-fun m!7751498 () Bool)

(assert (=> bs!1873177 m!7751498))

(declare-fun m!7751500 () Bool)

(assert (=> bs!1873177 m!7751500))

(assert (=> bs!1873177 m!7751054))

(assert (=> b!7040070 d!2198045))

(assert (=> b!7040078 d!2197987))

(assert (=> b!7040078 d!2197961))

(declare-fun bs!1873178 () Bool)

(declare-fun d!2198047 () Bool)

(assert (= bs!1873178 (and d!2198047 b!7040068)))

(declare-fun lambda!416615 () Int)

(assert (=> bs!1873178 (= lambda!416615 lambda!416571)))

(assert (=> d!2198047 true))

(assert (=> d!2198047 (exists!3427 lt!2523799 lambda!416615)))

(declare-fun lt!2523913 () Unit!161654)

(declare-fun choose!53427 (List!67991 List!67990) Unit!161654)

(assert (=> d!2198047 (= lt!2523913 (choose!53427 lt!2523799 s!7408))))

(declare-fun content!13574 (List!67991) (InoxSet Context!12966))

(assert (=> d!2198047 (matchZipper!3027 (content!13574 lt!2523799) s!7408)))

(assert (=> d!2198047 (= (lemmaZipperMatchesExistsMatchingContext!426 lt!2523799 s!7408) lt!2523913)))

(declare-fun bs!1873179 () Bool)

(assert (= bs!1873179 d!2198047))

(declare-fun m!7751502 () Bool)

(assert (=> bs!1873179 m!7751502))

(declare-fun m!7751504 () Bool)

(assert (=> bs!1873179 m!7751504))

(declare-fun m!7751506 () Bool)

(assert (=> bs!1873179 m!7751506))

(assert (=> bs!1873179 m!7751506))

(declare-fun m!7751508 () Bool)

(assert (=> bs!1873179 m!7751508))

(assert (=> b!7040068 d!2198047))

(declare-fun d!2198049 () Bool)

(declare-fun c!1310389 () Bool)

(assert (=> d!2198049 (= c!1310389 (isEmpty!39597 s!7408))))

(declare-fun e!4232402 () Bool)

(assert (=> d!2198049 (= (matchZipper!3027 lt!2523798 s!7408) e!4232402)))

(declare-fun b!7040378 () Bool)

(assert (=> b!7040378 (= e!4232402 (nullableZipper!2594 lt!2523798))))

(declare-fun b!7040379 () Bool)

(assert (=> b!7040379 (= e!4232402 (matchZipper!3027 (derivationStepZipper!2943 lt!2523798 (head!14285 s!7408)) (tail!13592 s!7408)))))

(assert (= (and d!2198049 c!1310389) b!7040378))

(assert (= (and d!2198049 (not c!1310389)) b!7040379))

(assert (=> d!2198049 m!7751274))

(declare-fun m!7751510 () Bool)

(assert (=> b!7040378 m!7751510))

(assert (=> b!7040379 m!7751278))

(assert (=> b!7040379 m!7751278))

(declare-fun m!7751512 () Bool)

(assert (=> b!7040379 m!7751512))

(assert (=> b!7040379 m!7751282))

(assert (=> b!7040379 m!7751512))

(assert (=> b!7040379 m!7751282))

(declare-fun m!7751514 () Bool)

(assert (=> b!7040379 m!7751514))

(assert (=> b!7040068 d!2198049))

(declare-fun d!2198051 () Bool)

(declare-fun e!4232405 () Bool)

(assert (=> d!2198051 e!4232405))

(declare-fun res!2874175 () Bool)

(assert (=> d!2198051 (=> (not res!2874175) (not e!4232405))))

(declare-fun lt!2523916 () List!67991)

(declare-fun noDuplicate!2641 (List!67991) Bool)

(assert (=> d!2198051 (= res!2874175 (noDuplicate!2641 lt!2523916))))

(declare-fun choose!53428 ((InoxSet Context!12966)) List!67991)

(assert (=> d!2198051 (= lt!2523916 (choose!53428 lt!2523821))))

(assert (=> d!2198051 (= (toList!10830 lt!2523821) lt!2523916)))

(declare-fun b!7040382 () Bool)

(assert (=> b!7040382 (= e!4232405 (= (content!13574 lt!2523916) lt!2523821))))

(assert (= (and d!2198051 res!2874175) b!7040382))

(declare-fun m!7751516 () Bool)

(assert (=> d!2198051 m!7751516))

(declare-fun m!7751518 () Bool)

(assert (=> d!2198051 m!7751518))

(declare-fun m!7751520 () Bool)

(assert (=> b!7040382 m!7751520))

(assert (=> b!7040068 d!2198051))

(declare-fun d!2198053 () Bool)

(declare-fun e!4232408 () Bool)

(assert (=> d!2198053 e!4232408))

(declare-fun res!2874178 () Bool)

(assert (=> d!2198053 (=> (not res!2874178) (not e!4232408))))

(declare-fun lt!2523919 () Context!12966)

(declare-fun dynLambda!27442 (Int Context!12966) Bool)

(assert (=> d!2198053 (= res!2874178 (dynLambda!27442 lambda!416571 lt!2523919))))

(declare-fun getWitness!1508 (List!67991 Int) Context!12966)

(assert (=> d!2198053 (= lt!2523919 (getWitness!1508 (toList!10830 lt!2523821) lambda!416571))))

(declare-fun exists!3429 ((InoxSet Context!12966) Int) Bool)

(assert (=> d!2198053 (exists!3429 lt!2523821 lambda!416571)))

(assert (=> d!2198053 (= (getWitness!1506 lt!2523821 lambda!416571) lt!2523919)))

(declare-fun b!7040385 () Bool)

(assert (=> b!7040385 (= e!4232408 (select lt!2523821 lt!2523919))))

(assert (= (and d!2198053 res!2874178) b!7040385))

(declare-fun b_lambda!267255 () Bool)

(assert (=> (not b_lambda!267255) (not d!2198053)))

(declare-fun m!7751522 () Bool)

(assert (=> d!2198053 m!7751522))

(assert (=> d!2198053 m!7751038))

(assert (=> d!2198053 m!7751038))

(declare-fun m!7751524 () Bool)

(assert (=> d!2198053 m!7751524))

(declare-fun m!7751526 () Bool)

(assert (=> d!2198053 m!7751526))

(declare-fun m!7751528 () Bool)

(assert (=> b!7040385 m!7751528))

(assert (=> b!7040068 d!2198053))

(declare-fun bs!1873180 () Bool)

(declare-fun d!2198055 () Bool)

(assert (= bs!1873180 (and d!2198055 b!7040068)))

(declare-fun lambda!416618 () Int)

(assert (=> bs!1873180 (not (= lambda!416618 lambda!416571))))

(declare-fun bs!1873181 () Bool)

(assert (= bs!1873181 (and d!2198055 d!2198047)))

(assert (=> bs!1873181 (not (= lambda!416618 lambda!416615))))

(assert (=> d!2198055 true))

(declare-fun order!28203 () Int)

(declare-fun dynLambda!27443 (Int Int) Int)

(assert (=> d!2198055 (< (dynLambda!27443 order!28203 lambda!416571) (dynLambda!27443 order!28203 lambda!416618))))

(declare-fun forall!16407 (List!67991 Int) Bool)

(assert (=> d!2198055 (= (exists!3427 lt!2523799 lambda!416571) (not (forall!16407 lt!2523799 lambda!416618)))))

(declare-fun bs!1873182 () Bool)

(assert (= bs!1873182 d!2198055))

(declare-fun m!7751530 () Bool)

(assert (=> bs!1873182 m!7751530))

(assert (=> b!7040068 d!2198055))

(declare-fun condSetEmpty!49330 () Bool)

(assert (=> setNonEmpty!49324 (= condSetEmpty!49330 (= setRest!49324 ((as const (Array Context!12966 Bool)) false)))))

(declare-fun setRes!49330 () Bool)

(assert (=> setNonEmpty!49324 (= tp!1937285 setRes!49330)))

(declare-fun setIsEmpty!49330 () Bool)

(assert (=> setIsEmpty!49330 setRes!49330))

(declare-fun e!4232411 () Bool)

(declare-fun setElem!49330 () Context!12966)

(declare-fun tp!1937307 () Bool)

(declare-fun setNonEmpty!49330 () Bool)

(assert (=> setNonEmpty!49330 (= setRes!49330 (and tp!1937307 (inv!86576 setElem!49330) e!4232411))))

(declare-fun setRest!49330 () (InoxSet Context!12966))

(assert (=> setNonEmpty!49330 (= setRest!49324 ((_ map or) (store ((as const (Array Context!12966 Bool)) false) setElem!49330 true) setRest!49330))))

(declare-fun b!7040392 () Bool)

(declare-fun tp!1937308 () Bool)

(assert (=> b!7040392 (= e!4232411 tp!1937308)))

(assert (= (and setNonEmpty!49324 condSetEmpty!49330) setIsEmpty!49330))

(assert (= (and setNonEmpty!49324 (not condSetEmpty!49330)) setNonEmpty!49330))

(assert (= setNonEmpty!49330 b!7040392))

(declare-fun m!7751532 () Bool)

(assert (=> setNonEmpty!49330 m!7751532))

(declare-fun b!7040397 () Bool)

(declare-fun e!4232414 () Bool)

(declare-fun tp!1937313 () Bool)

(declare-fun tp!1937314 () Bool)

(assert (=> b!7040397 (= e!4232414 (and tp!1937313 tp!1937314))))

(assert (=> b!7040062 (= tp!1937283 e!4232414)))

(assert (= (and b!7040062 ((_ is Cons!67865) (exprs!6983 ct2!306))) b!7040397))

(declare-fun b!7040402 () Bool)

(declare-fun e!4232417 () Bool)

(declare-fun tp!1937317 () Bool)

(assert (=> b!7040402 (= e!4232417 (and tp_is_empty!44199 tp!1937317))))

(assert (=> b!7040064 (= tp!1937282 e!4232417)))

(assert (= (and b!7040064 ((_ is Cons!67866) (t!381761 s!7408))) b!7040402))

(declare-fun b!7040403 () Bool)

(declare-fun e!4232418 () Bool)

(declare-fun tp!1937318 () Bool)

(declare-fun tp!1937319 () Bool)

(assert (=> b!7040403 (= e!4232418 (and tp!1937318 tp!1937319))))

(assert (=> b!7040073 (= tp!1937284 e!4232418)))

(assert (= (and b!7040073 ((_ is Cons!67865) (exprs!6983 setElem!49324))) b!7040403))

(declare-fun b_lambda!267257 () Bool)

(assert (= b_lambda!267253 (or b!7040070 b_lambda!267257)))

(declare-fun bs!1873183 () Bool)

(declare-fun d!2198057 () Bool)

(assert (= bs!1873183 (and d!2198057 b!7040070)))

(assert (=> bs!1873183 (= (dynLambda!27441 lambda!416574 lt!2523801) (derivationStepZipperUp!2097 lt!2523801 (h!74314 s!7408)))))

(assert (=> bs!1873183 m!7751050))

(assert (=> d!2198045 d!2198057))

(declare-fun b_lambda!267259 () Bool)

(assert (= b_lambda!267251 (or b!7040077 b_lambda!267259)))

(declare-fun bs!1873184 () Bool)

(declare-fun d!2198059 () Bool)

(assert (= bs!1873184 (and d!2198059 b!7040077)))

(declare-fun lt!2523920 () Unit!161654)

(assert (=> bs!1873184 (= lt!2523920 (lemmaConcatPreservesForall!808 (exprs!6983 lt!2523888) (exprs!6983 ct2!306) lambda!416573))))

(assert (=> bs!1873184 (= (dynLambda!27439 lambda!416572 lt!2523888) (Context!12967 (++!15549 (exprs!6983 lt!2523888) (exprs!6983 ct2!306))))))

(declare-fun m!7751534 () Bool)

(assert (=> bs!1873184 m!7751534))

(declare-fun m!7751536 () Bool)

(assert (=> bs!1873184 m!7751536))

(assert (=> d!2198011 d!2198059))

(declare-fun b_lambda!267261 () Bool)

(assert (= b_lambda!267255 (or b!7040068 b_lambda!267261)))

(declare-fun bs!1873185 () Bool)

(declare-fun d!2198061 () Bool)

(assert (= bs!1873185 (and d!2198061 b!7040068)))

(assert (=> bs!1873185 (= (dynLambda!27442 lambda!416571 lt!2523919) (matchZipper!3027 (store ((as const (Array Context!12966 Bool)) false) lt!2523919 true) s!7408))))

(declare-fun m!7751538 () Bool)

(assert (=> bs!1873185 m!7751538))

(assert (=> bs!1873185 m!7751538))

(declare-fun m!7751540 () Bool)

(assert (=> bs!1873185 m!7751540))

(assert (=> d!2198053 d!2198061))

(check-sat (not d!2198047) (not d!2197985) (not d!2197965) (not d!2198049) (not b!7040374) (not b_lambda!267261) (not b!7040343) (not d!2198055) (not d!2198019) (not b!7040328) (not b!7040329) (not b!7040367) (not b_lambda!267257) (not bm!639421) (not b!7040231) (not d!2197975) (not b!7040219) (not b!7040369) (not d!2198045) (not b!7040273) (not d!2197989) (not bs!1873183) (not d!2198025) (not bs!1873184) (not b!7040378) (not b!7040218) (not d!2198029) (not d!2197959) (not b!7040370) (not setNonEmpty!49330) (not bm!639407) (not b!7040233) (not d!2197993) (not b!7040322) (not b_lambda!267259) (not b!7040366) (not d!2198039) (not d!2198001) (not b!7040342) (not bm!639410) (not b!7040403) (not b!7040373) (not d!2198053) (not b!7040365) (not b!7040362) tp_is_empty!44199 (not b!7040392) (not d!2198037) (not d!2198031) (not d!2197991) (not b!7040230) (not b!7040379) (not d!2197987) (not b!7040397) (not b!7040331) (not b!7040234) (not bm!639415) (not b!7040232) (not b!7040255) (not b!7040254) (not b!7040272) (not bm!639416) (not d!2197961) (not d!2198011) (not b!7040248) (not b!7040229) (not bm!639419) (not b!7040382) (not d!2198003) (not d!2198041) (not d!2198035) (not b!7040402) (not d!2198017) (not bm!639412) (not d!2197957) (not b!7040323) (not d!2198051) (not d!2198033) (not bm!639422) (not b!7040301) (not bs!1873185))
(check-sat)

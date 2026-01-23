; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!687736 () Bool)

(assert start!687736)

(declare-fun b!7075902 () Bool)

(assert (=> b!7075902 true))

(declare-fun b!7075904 () Bool)

(assert (=> b!7075904 true))

(declare-fun b!7075908 () Bool)

(assert (=> b!7075908 true))

(declare-fun b!7075895 () Bool)

(declare-fun res!2890184 () Bool)

(declare-fun e!4254084 () Bool)

(assert (=> b!7075895 (=> (not res!2890184) (not e!4254084))))

(declare-datatypes ((C!35596 0))(
  ( (C!35597 (val!27500 Int)) )
))
(declare-datatypes ((List!68515 0))(
  ( (Nil!68391) (Cons!68391 (h!74839 C!35596) (t!382300 List!68515)) )
))
(declare-fun s!7408 () List!68515)

(get-info :version)

(assert (=> b!7075895 (= res!2890184 ((_ is Cons!68391) s!7408))))

(declare-fun setIsEmpty!50359 () Bool)

(declare-fun setRes!50359 () Bool)

(assert (=> setIsEmpty!50359 setRes!50359))

(declare-fun res!2890181 () Bool)

(assert (=> start!687736 (=> (not res!2890181) (not e!4254084))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17663 0))(
  ( (ElementMatch!17663 (c!1320172 C!35596)) (Concat!26508 (regOne!35838 Regex!17663) (regTwo!35838 Regex!17663)) (EmptyExpr!17663) (Star!17663 (reg!17992 Regex!17663)) (EmptyLang!17663) (Union!17663 (regOne!35839 Regex!17663) (regTwo!35839 Regex!17663)) )
))
(declare-datatypes ((List!68516 0))(
  ( (Nil!68392) (Cons!68392 (h!74840 Regex!17663) (t!382301 List!68516)) )
))
(declare-datatypes ((Context!13318 0))(
  ( (Context!13319 (exprs!7159 List!68516)) )
))
(declare-fun lt!2548885 () (InoxSet Context!13318))

(declare-fun matchZipper!3203 ((InoxSet Context!13318) List!68515) Bool)

(assert (=> start!687736 (= res!2890181 (matchZipper!3203 lt!2548885 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13318))

(declare-fun ct2!306 () Context!13318)

(declare-fun appendTo!784 ((InoxSet Context!13318) Context!13318) (InoxSet Context!13318))

(assert (=> start!687736 (= lt!2548885 (appendTo!784 z1!570 ct2!306))))

(assert (=> start!687736 e!4254084))

(declare-fun condSetEmpty!50359 () Bool)

(assert (=> start!687736 (= condSetEmpty!50359 (= z1!570 ((as const (Array Context!13318 Bool)) false)))))

(assert (=> start!687736 setRes!50359))

(declare-fun e!4254083 () Bool)

(declare-fun inv!87016 (Context!13318) Bool)

(assert (=> start!687736 (and (inv!87016 ct2!306) e!4254083)))

(declare-fun e!4254089 () Bool)

(assert (=> start!687736 e!4254089))

(declare-fun setNonEmpty!50359 () Bool)

(declare-fun e!4254082 () Bool)

(declare-fun setElem!50359 () Context!13318)

(declare-fun tp!1942834 () Bool)

(assert (=> setNonEmpty!50359 (= setRes!50359 (and tp!1942834 (inv!87016 setElem!50359) e!4254082))))

(declare-fun setRest!50359 () (InoxSet Context!13318))

(assert (=> setNonEmpty!50359 (= z1!570 ((_ map or) (store ((as const (Array Context!13318 Bool)) false) setElem!50359 true) setRest!50359))))

(declare-fun b!7075896 () Bool)

(declare-fun e!4254088 () Bool)

(declare-fun e!4254085 () Bool)

(assert (=> b!7075896 (= e!4254088 e!4254085)))

(declare-fun res!2890185 () Bool)

(assert (=> b!7075896 (=> res!2890185 e!4254085)))

(declare-fun lt!2548881 () (InoxSet Context!13318))

(assert (=> b!7075896 (= res!2890185 (not (matchZipper!3203 lt!2548881 (t!382300 s!7408))))))

(declare-fun lt!2548887 () Context!13318)

(declare-fun lt!2548873 () List!68516)

(declare-fun derivationStepZipperDown!2297 (Regex!17663 Context!13318 C!35596) (InoxSet Context!13318))

(declare-fun ++!15804 (List!68516 List!68516) List!68516)

(assert (=> b!7075896 (= lt!2548881 (derivationStepZipperDown!2297 (h!74840 (exprs!7159 lt!2548887)) (Context!13319 (++!15804 lt!2548873 (exprs!7159 ct2!306))) (h!74839 s!7408)))))

(declare-datatypes ((Unit!162037 0))(
  ( (Unit!162038) )
))
(declare-fun lt!2548876 () Unit!162037)

(declare-fun lambda!426610 () Int)

(declare-fun lemmaConcatPreservesForall!974 (List!68516 List!68516 Int) Unit!162037)

(assert (=> b!7075896 (= lt!2548876 (lemmaConcatPreservesForall!974 lt!2548873 (exprs!7159 ct2!306) lambda!426610))))

(declare-fun b!7075897 () Bool)

(declare-fun res!2890183 () Bool)

(declare-fun e!4254090 () Bool)

(assert (=> b!7075897 (=> res!2890183 e!4254090)))

(assert (=> b!7075897 (= res!2890183 (not ((_ is Cons!68392) (exprs!7159 lt!2548887))))))

(declare-fun b!7075898 () Bool)

(declare-fun e!4254087 () Bool)

(declare-fun e!4254086 () Bool)

(assert (=> b!7075898 (= e!4254087 e!4254086)))

(declare-fun res!2890188 () Bool)

(assert (=> b!7075898 (=> res!2890188 e!4254086)))

(declare-fun lt!2548871 () (InoxSet Context!13318))

(declare-fun lt!2548883 () (InoxSet Context!13318))

(assert (=> b!7075898 (= res!2890188 (not (= lt!2548871 lt!2548883)))))

(declare-fun lt!2548890 () Context!13318)

(assert (=> b!7075898 (= lt!2548871 (store ((as const (Array Context!13318 Bool)) false) lt!2548890 true))))

(declare-fun lt!2548878 () Unit!162037)

(assert (=> b!7075898 (= lt!2548878 (lemmaConcatPreservesForall!974 (exprs!7159 lt!2548887) (exprs!7159 ct2!306) lambda!426610))))

(declare-fun b!7075899 () Bool)

(declare-fun tp!1942835 () Bool)

(assert (=> b!7075899 (= e!4254082 tp!1942835)))

(declare-fun b!7075900 () Bool)

(declare-fun lt!2548879 () (InoxSet Context!13318))

(assert (=> b!7075900 (= e!4254085 (matchZipper!3203 lt!2548879 (t!382300 s!7408)))))

(assert (=> b!7075900 (= lt!2548881 lt!2548879)))

(declare-fun lt!2548875 () Context!13318)

(assert (=> b!7075900 (= lt!2548879 (appendTo!784 (derivationStepZipperDown!2297 (h!74840 (exprs!7159 lt!2548887)) lt!2548875 (h!74839 s!7408)) ct2!306))))

(declare-fun lt!2548886 () Unit!162037)

(assert (=> b!7075900 (= lt!2548886 (lemmaConcatPreservesForall!974 lt!2548873 (exprs!7159 ct2!306) lambda!426610))))

(declare-fun lt!2548884 () Unit!162037)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!130 (Context!13318 Regex!17663 C!35596 Context!13318) Unit!162037)

(assert (=> b!7075900 (= lt!2548884 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!130 lt!2548875 (h!74840 (exprs!7159 lt!2548887)) (h!74839 s!7408) ct2!306))))

(declare-fun b!7075901 () Bool)

(declare-fun res!2890179 () Bool)

(assert (=> b!7075901 (=> res!2890179 e!4254090)))

(declare-fun isEmpty!39916 (List!68516) Bool)

(assert (=> b!7075901 (= res!2890179 (isEmpty!39916 (exprs!7159 lt!2548887)))))

(declare-fun e!4254081 () Bool)

(assert (=> b!7075902 (= e!4254084 (not e!4254081))))

(declare-fun res!2890182 () Bool)

(assert (=> b!7075902 (=> res!2890182 e!4254081)))

(assert (=> b!7075902 (= res!2890182 (not (matchZipper!3203 lt!2548883 s!7408)))))

(declare-fun lt!2548872 () Context!13318)

(assert (=> b!7075902 (= lt!2548883 (store ((as const (Array Context!13318 Bool)) false) lt!2548872 true))))

(declare-fun lambda!426608 () Int)

(declare-fun getWitness!1775 ((InoxSet Context!13318) Int) Context!13318)

(assert (=> b!7075902 (= lt!2548872 (getWitness!1775 lt!2548885 lambda!426608))))

(declare-datatypes ((List!68517 0))(
  ( (Nil!68393) (Cons!68393 (h!74841 Context!13318) (t!382302 List!68517)) )
))
(declare-fun lt!2548874 () List!68517)

(declare-fun exists!3725 (List!68517 Int) Bool)

(assert (=> b!7075902 (exists!3725 lt!2548874 lambda!426608)))

(declare-fun lt!2548889 () Unit!162037)

(declare-fun lemmaZipperMatchesExistsMatchingContext!584 (List!68517 List!68515) Unit!162037)

(assert (=> b!7075902 (= lt!2548889 (lemmaZipperMatchesExistsMatchingContext!584 lt!2548874 s!7408))))

(declare-fun toList!11004 ((InoxSet Context!13318)) List!68517)

(assert (=> b!7075902 (= lt!2548874 (toList!11004 lt!2548885))))

(declare-fun b!7075903 () Bool)

(declare-fun res!2890186 () Bool)

(assert (=> b!7075903 (=> res!2890186 e!4254081)))

(assert (=> b!7075903 (= res!2890186 (not (select lt!2548885 lt!2548872)))))

(assert (=> b!7075904 (= e!4254081 e!4254087)))

(declare-fun res!2890187 () Bool)

(assert (=> b!7075904 (=> res!2890187 e!4254087)))

(assert (=> b!7075904 (= res!2890187 (or (not (= lt!2548890 lt!2548872)) (not (select z1!570 lt!2548887))))))

(assert (=> b!7075904 (= lt!2548890 (Context!13319 (++!15804 (exprs!7159 lt!2548887) (exprs!7159 ct2!306))))))

(declare-fun lt!2548880 () Unit!162037)

(assert (=> b!7075904 (= lt!2548880 (lemmaConcatPreservesForall!974 (exprs!7159 lt!2548887) (exprs!7159 ct2!306) lambda!426610))))

(declare-fun lambda!426609 () Int)

(declare-fun mapPost2!492 ((InoxSet Context!13318) Int Context!13318) Context!13318)

(assert (=> b!7075904 (= lt!2548887 (mapPost2!492 z1!570 lambda!426609 lt!2548872))))

(declare-fun b!7075905 () Bool)

(declare-fun tp!1942833 () Bool)

(assert (=> b!7075905 (= e!4254083 tp!1942833)))

(declare-fun b!7075906 () Bool)

(declare-fun tp_is_empty!44551 () Bool)

(declare-fun tp!1942836 () Bool)

(assert (=> b!7075906 (= e!4254089 (and tp_is_empty!44551 tp!1942836))))

(declare-fun b!7075907 () Bool)

(assert (=> b!7075907 (= e!4254090 e!4254088)))

(declare-fun res!2890180 () Bool)

(assert (=> b!7075907 (=> res!2890180 e!4254088)))

(declare-fun nullable!7346 (Regex!17663) Bool)

(assert (=> b!7075907 (= res!2890180 (nullable!7346 (h!74840 (exprs!7159 lt!2548887))))))

(assert (=> b!7075907 (= lt!2548875 (Context!13319 lt!2548873))))

(declare-fun tail!13857 (List!68516) List!68516)

(assert (=> b!7075907 (= lt!2548873 (tail!13857 (exprs!7159 lt!2548887)))))

(assert (=> b!7075908 (= e!4254086 e!4254090)))

(declare-fun res!2890178 () Bool)

(assert (=> b!7075908 (=> res!2890178 e!4254090)))

(declare-fun lt!2548877 () (InoxSet Context!13318))

(declare-fun derivationStepZipper!3113 ((InoxSet Context!13318) C!35596) (InoxSet Context!13318))

(assert (=> b!7075908 (= res!2890178 (not (= (derivationStepZipper!3113 lt!2548871 (h!74839 s!7408)) lt!2548877)))))

(declare-fun lambda!426611 () Int)

(declare-fun flatMap!2589 ((InoxSet Context!13318) Int) (InoxSet Context!13318))

(declare-fun derivationStepZipperUp!2247 (Context!13318 C!35596) (InoxSet Context!13318))

(assert (=> b!7075908 (= (flatMap!2589 lt!2548871 lambda!426611) (derivationStepZipperUp!2247 lt!2548890 (h!74839 s!7408)))))

(declare-fun lt!2548882 () Unit!162037)

(declare-fun lemmaFlatMapOnSingletonSet!2098 ((InoxSet Context!13318) Context!13318 Int) Unit!162037)

(assert (=> b!7075908 (= lt!2548882 (lemmaFlatMapOnSingletonSet!2098 lt!2548871 lt!2548890 lambda!426611))))

(assert (=> b!7075908 (= lt!2548877 (derivationStepZipperUp!2247 lt!2548890 (h!74839 s!7408)))))

(declare-fun lt!2548888 () Unit!162037)

(assert (=> b!7075908 (= lt!2548888 (lemmaConcatPreservesForall!974 (exprs!7159 lt!2548887) (exprs!7159 ct2!306) lambda!426610))))

(assert (= (and start!687736 res!2890181) b!7075895))

(assert (= (and b!7075895 res!2890184) b!7075902))

(assert (= (and b!7075902 (not res!2890182)) b!7075903))

(assert (= (and b!7075903 (not res!2890186)) b!7075904))

(assert (= (and b!7075904 (not res!2890187)) b!7075898))

(assert (= (and b!7075898 (not res!2890188)) b!7075908))

(assert (= (and b!7075908 (not res!2890178)) b!7075897))

(assert (= (and b!7075897 (not res!2890183)) b!7075901))

(assert (= (and b!7075901 (not res!2890179)) b!7075907))

(assert (= (and b!7075907 (not res!2890180)) b!7075896))

(assert (= (and b!7075896 (not res!2890185)) b!7075900))

(assert (= (and start!687736 condSetEmpty!50359) setIsEmpty!50359))

(assert (= (and start!687736 (not condSetEmpty!50359)) setNonEmpty!50359))

(assert (= setNonEmpty!50359 b!7075899))

(assert (= start!687736 b!7075905))

(assert (= (and start!687736 ((_ is Cons!68391) s!7408)) b!7075906))

(declare-fun m!7803762 () Bool)

(assert (=> b!7075903 m!7803762))

(declare-fun m!7803764 () Bool)

(assert (=> start!687736 m!7803764))

(declare-fun m!7803766 () Bool)

(assert (=> start!687736 m!7803766))

(declare-fun m!7803768 () Bool)

(assert (=> start!687736 m!7803768))

(declare-fun m!7803770 () Bool)

(assert (=> setNonEmpty!50359 m!7803770))

(declare-fun m!7803772 () Bool)

(assert (=> b!7075898 m!7803772))

(declare-fun m!7803774 () Bool)

(assert (=> b!7075898 m!7803774))

(declare-fun m!7803776 () Bool)

(assert (=> b!7075896 m!7803776))

(declare-fun m!7803778 () Bool)

(assert (=> b!7075896 m!7803778))

(declare-fun m!7803780 () Bool)

(assert (=> b!7075896 m!7803780))

(declare-fun m!7803782 () Bool)

(assert (=> b!7075896 m!7803782))

(declare-fun m!7803784 () Bool)

(assert (=> b!7075907 m!7803784))

(declare-fun m!7803786 () Bool)

(assert (=> b!7075907 m!7803786))

(assert (=> b!7075900 m!7803782))

(declare-fun m!7803788 () Bool)

(assert (=> b!7075900 m!7803788))

(declare-fun m!7803790 () Bool)

(assert (=> b!7075900 m!7803790))

(declare-fun m!7803792 () Bool)

(assert (=> b!7075900 m!7803792))

(declare-fun m!7803794 () Bool)

(assert (=> b!7075900 m!7803794))

(assert (=> b!7075900 m!7803792))

(declare-fun m!7803796 () Bool)

(assert (=> b!7075901 m!7803796))

(declare-fun m!7803798 () Bool)

(assert (=> b!7075904 m!7803798))

(declare-fun m!7803800 () Bool)

(assert (=> b!7075904 m!7803800))

(assert (=> b!7075904 m!7803774))

(declare-fun m!7803802 () Bool)

(assert (=> b!7075904 m!7803802))

(assert (=> b!7075908 m!7803774))

(declare-fun m!7803804 () Bool)

(assert (=> b!7075908 m!7803804))

(declare-fun m!7803806 () Bool)

(assert (=> b!7075908 m!7803806))

(declare-fun m!7803808 () Bool)

(assert (=> b!7075908 m!7803808))

(declare-fun m!7803810 () Bool)

(assert (=> b!7075908 m!7803810))

(declare-fun m!7803812 () Bool)

(assert (=> b!7075902 m!7803812))

(declare-fun m!7803814 () Bool)

(assert (=> b!7075902 m!7803814))

(declare-fun m!7803816 () Bool)

(assert (=> b!7075902 m!7803816))

(declare-fun m!7803818 () Bool)

(assert (=> b!7075902 m!7803818))

(declare-fun m!7803820 () Bool)

(assert (=> b!7075902 m!7803820))

(declare-fun m!7803822 () Bool)

(assert (=> b!7075902 m!7803822))

(check-sat (not b!7075901) (not b!7075899) (not b!7075908) (not b!7075896) (not b!7075902) (not b!7075898) (not b!7075905) (not b!7075904) (not b!7075907) (not b!7075906) (not start!687736) (not b!7075900) tp_is_empty!44551 (not setNonEmpty!50359))
(check-sat)

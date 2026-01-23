; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674984 () Bool)

(assert start!674984)

(declare-fun b!7009106 () Bool)

(assert (=> b!7009106 true))

(declare-fun b!7009109 () Bool)

(assert (=> b!7009109 true))

(declare-fun b!7009108 () Bool)

(assert (=> b!7009108 true))

(declare-fun b!7009102 () Bool)

(declare-fun e!4213182 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34888 0))(
  ( (C!34889 (val!27146 Int)) )
))
(declare-datatypes ((Regex!17309 0))(
  ( (ElementMatch!17309 (c!1301867 C!34888)) (Concat!26154 (regOne!35130 Regex!17309) (regTwo!35130 Regex!17309)) (EmptyExpr!17309) (Star!17309 (reg!17638 Regex!17309)) (EmptyLang!17309) (Union!17309 (regOne!35131 Regex!17309) (regTwo!35131 Regex!17309)) )
))
(declare-datatypes ((List!67472 0))(
  ( (Nil!67348) (Cons!67348 (h!73796 Regex!17309) (t!381227 List!67472)) )
))
(declare-datatypes ((Context!12610 0))(
  ( (Context!12611 (exprs!6805 List!67472)) )
))
(declare-fun lt!2502884 () (InoxSet Context!12610))

(declare-datatypes ((List!67473 0))(
  ( (Nil!67349) (Cons!67349 (h!73797 C!34888) (t!381228 List!67473)) )
))
(declare-fun s!7408 () List!67473)

(declare-fun matchZipper!2849 ((InoxSet Context!12610) List!67473) Bool)

(assert (=> b!7009102 (= e!4213182 (not (matchZipper!2849 lt!2502884 (t!381228 s!7408))))))

(declare-fun lt!2502879 () List!67472)

(declare-datatypes ((Unit!161296 0))(
  ( (Unit!161297) )
))
(declare-fun lt!2502883 () Unit!161296)

(declare-fun lambda!407970 () Int)

(declare-fun ct2!306 () Context!12610)

(declare-fun lemmaConcatPreservesForall!645 (List!67472 List!67472 Int) Unit!161296)

(assert (=> b!7009102 (= lt!2502883 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun e!4213177 () Bool)

(declare-fun setRes!48317 () Bool)

(declare-fun setNonEmpty!48317 () Bool)

(declare-fun tp!1932177 () Bool)

(declare-fun setElem!48317 () Context!12610)

(declare-fun inv!86131 (Context!12610) Bool)

(assert (=> setNonEmpty!48317 (= setRes!48317 (and tp!1932177 (inv!86131 setElem!48317) e!4213177))))

(declare-fun z1!570 () (InoxSet Context!12610))

(declare-fun setRest!48317 () (InoxSet Context!12610))

(assert (=> setNonEmpty!48317 (= z1!570 ((_ map or) (store ((as const (Array Context!12610 Bool)) false) setElem!48317 true) setRest!48317))))

(declare-fun b!7009103 () Bool)

(declare-fun tp!1932180 () Bool)

(assert (=> b!7009103 (= e!4213177 tp!1932180)))

(declare-fun b!7009105 () Bool)

(declare-fun res!2859850 () Bool)

(declare-fun e!4213175 () Bool)

(assert (=> b!7009105 (=> res!2859850 e!4213175)))

(declare-fun lt!2502864 () Context!12610)

(declare-fun isEmpty!39333 (List!67472) Bool)

(assert (=> b!7009105 (= res!2859850 (isEmpty!39333 (exprs!6805 lt!2502864)))))

(declare-fun e!4213171 () Bool)

(declare-fun e!4213174 () Bool)

(assert (=> b!7009106 (= e!4213171 (not e!4213174))))

(declare-fun res!2859854 () Bool)

(assert (=> b!7009106 (=> res!2859854 e!4213174)))

(declare-fun lt!2502873 () (InoxSet Context!12610))

(assert (=> b!7009106 (= res!2859854 (not (matchZipper!2849 lt!2502873 s!7408)))))

(declare-fun lt!2502861 () Context!12610)

(assert (=> b!7009106 (= lt!2502873 (store ((as const (Array Context!12610 Bool)) false) lt!2502861 true))))

(declare-fun lt!2502859 () (InoxSet Context!12610))

(declare-fun lambda!407968 () Int)

(declare-fun getWitness!1248 ((InoxSet Context!12610) Int) Context!12610)

(assert (=> b!7009106 (= lt!2502861 (getWitness!1248 lt!2502859 lambda!407968))))

(declare-datatypes ((List!67474 0))(
  ( (Nil!67350) (Cons!67350 (h!73798 Context!12610) (t!381229 List!67474)) )
))
(declare-fun lt!2502890 () List!67474)

(declare-fun exists!3150 (List!67474 Int) Bool)

(assert (=> b!7009106 (exists!3150 lt!2502890 lambda!407968)))

(declare-fun lt!2502891 () Unit!161296)

(declare-fun lemmaZipperMatchesExistsMatchingContext!278 (List!67474 List!67473) Unit!161296)

(assert (=> b!7009106 (= lt!2502891 (lemmaZipperMatchesExistsMatchingContext!278 lt!2502890 s!7408))))

(declare-fun toList!10669 ((InoxSet Context!12610)) List!67474)

(assert (=> b!7009106 (= lt!2502890 (toList!10669 lt!2502859))))

(declare-fun b!7009107 () Bool)

(declare-fun res!2859848 () Bool)

(declare-fun e!4213172 () Bool)

(assert (=> b!7009107 (=> res!2859848 e!4213172)))

(declare-fun lt!2502868 () Bool)

(assert (=> b!7009107 (= res!2859848 (not lt!2502868))))

(declare-fun e!4213173 () Bool)

(assert (=> b!7009108 (= e!4213173 e!4213175)))

(declare-fun res!2859860 () Bool)

(assert (=> b!7009108 (=> res!2859860 e!4213175)))

(declare-fun lt!2502886 () (InoxSet Context!12610))

(declare-fun lt!2502874 () (InoxSet Context!12610))

(declare-fun derivationStepZipper!2789 ((InoxSet Context!12610) C!34888) (InoxSet Context!12610))

(assert (=> b!7009108 (= res!2859860 (not (= (derivationStepZipper!2789 lt!2502874 (h!73797 s!7408)) lt!2502886)))))

(declare-fun lt!2502862 () Context!12610)

(declare-fun lambda!407971 () Int)

(declare-fun flatMap!2295 ((InoxSet Context!12610) Int) (InoxSet Context!12610))

(declare-fun derivationStepZipperUp!1959 (Context!12610 C!34888) (InoxSet Context!12610))

(assert (=> b!7009108 (= (flatMap!2295 lt!2502874 lambda!407971) (derivationStepZipperUp!1959 lt!2502862 (h!73797 s!7408)))))

(declare-fun lt!2502860 () Unit!161296)

(declare-fun lemmaFlatMapOnSingletonSet!1810 ((InoxSet Context!12610) Context!12610 Int) Unit!161296)

(assert (=> b!7009108 (= lt!2502860 (lemmaFlatMapOnSingletonSet!1810 lt!2502874 lt!2502862 lambda!407971))))

(assert (=> b!7009108 (= lt!2502886 (derivationStepZipperUp!1959 lt!2502862 (h!73797 s!7408)))))

(declare-fun lt!2502863 () Unit!161296)

(assert (=> b!7009108 (= lt!2502863 (lemmaConcatPreservesForall!645 (exprs!6805 lt!2502864) (exprs!6805 ct2!306) lambda!407970))))

(declare-fun e!4213180 () Bool)

(assert (=> b!7009109 (= e!4213174 e!4213180)))

(declare-fun res!2859858 () Bool)

(assert (=> b!7009109 (=> res!2859858 e!4213180)))

(assert (=> b!7009109 (= res!2859858 (or (not (= lt!2502862 lt!2502861)) (not (select z1!570 lt!2502864))))))

(declare-fun ++!15300 (List!67472 List!67472) List!67472)

(assert (=> b!7009109 (= lt!2502862 (Context!12611 (++!15300 (exprs!6805 lt!2502864) (exprs!6805 ct2!306))))))

(declare-fun lt!2502888 () Unit!161296)

(assert (=> b!7009109 (= lt!2502888 (lemmaConcatPreservesForall!645 (exprs!6805 lt!2502864) (exprs!6805 ct2!306) lambda!407970))))

(declare-fun lambda!407969 () Int)

(declare-fun mapPost2!164 ((InoxSet Context!12610) Int Context!12610) Context!12610)

(assert (=> b!7009109 (= lt!2502864 (mapPost2!164 z1!570 lambda!407969 lt!2502861))))

(declare-fun b!7009110 () Bool)

(declare-fun res!2859849 () Bool)

(assert (=> b!7009110 (=> res!2859849 e!4213174)))

(assert (=> b!7009110 (= res!2859849 (not (select lt!2502859 lt!2502861)))))

(declare-fun b!7009111 () Bool)

(declare-fun e!4213181 () Bool)

(assert (=> b!7009111 (= e!4213175 e!4213181)))

(declare-fun res!2859855 () Bool)

(assert (=> b!7009111 (=> res!2859855 e!4213181)))

(declare-fun nullable!7069 (Regex!17309) Bool)

(assert (=> b!7009111 (= res!2859855 (not (nullable!7069 (h!73796 (exprs!6805 lt!2502864)))))))

(declare-fun lt!2502869 () Context!12610)

(assert (=> b!7009111 (= lt!2502869 (Context!12611 lt!2502879))))

(declare-fun tail!13380 (List!67472) List!67472)

(assert (=> b!7009111 (= lt!2502879 (tail!13380 (exprs!6805 lt!2502864)))))

(declare-fun b!7009112 () Bool)

(declare-fun res!2859853 () Bool)

(assert (=> b!7009112 (=> (not res!2859853) (not e!4213171))))

(get-info :version)

(assert (=> b!7009112 (= res!2859853 ((_ is Cons!67349) s!7408))))

(declare-fun setIsEmpty!48317 () Bool)

(assert (=> setIsEmpty!48317 setRes!48317))

(declare-fun b!7009113 () Bool)

(assert (=> b!7009113 (= e!4213180 e!4213173)))

(declare-fun res!2859852 () Bool)

(assert (=> b!7009113 (=> res!2859852 e!4213173)))

(assert (=> b!7009113 (= res!2859852 (not (= lt!2502874 lt!2502873)))))

(assert (=> b!7009113 (= lt!2502874 (store ((as const (Array Context!12610 Bool)) false) lt!2502862 true))))

(declare-fun lt!2502893 () Unit!161296)

(assert (=> b!7009113 (= lt!2502893 (lemmaConcatPreservesForall!645 (exprs!6805 lt!2502864) (exprs!6805 ct2!306) lambda!407970))))

(declare-fun b!7009114 () Bool)

(declare-fun e!4213170 () Bool)

(assert (=> b!7009114 (= e!4213170 e!4213172)))

(declare-fun res!2859862 () Bool)

(assert (=> b!7009114 (=> res!2859862 e!4213172)))

(assert (=> b!7009114 (= res!2859862 e!4213182)))

(declare-fun res!2859861 () Bool)

(assert (=> b!7009114 (=> (not res!2859861) (not e!4213182))))

(declare-fun lt!2502865 () Bool)

(assert (=> b!7009114 (= res!2859861 (not (= lt!2502868 lt!2502865)))))

(assert (=> b!7009114 (= lt!2502868 (matchZipper!2849 lt!2502886 (t!381228 s!7408)))))

(declare-fun lt!2502877 () Unit!161296)

(assert (=> b!7009114 (= lt!2502877 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun lt!2502867 () (InoxSet Context!12610))

(declare-fun e!4213169 () Bool)

(assert (=> b!7009114 (= (matchZipper!2849 lt!2502867 (t!381228 s!7408)) e!4213169)))

(declare-fun res!2859857 () Bool)

(assert (=> b!7009114 (=> res!2859857 e!4213169)))

(assert (=> b!7009114 (= res!2859857 lt!2502865)))

(declare-fun lt!2502872 () (InoxSet Context!12610))

(assert (=> b!7009114 (= lt!2502865 (matchZipper!2849 lt!2502872 (t!381228 s!7408)))))

(declare-fun lt!2502878 () Unit!161296)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1482 ((InoxSet Context!12610) (InoxSet Context!12610) List!67473) Unit!161296)

(assert (=> b!7009114 (= lt!2502878 (lemmaZipperConcatMatchesSameAsBothZippers!1482 lt!2502872 lt!2502884 (t!381228 s!7408)))))

(declare-fun lt!2502871 () Unit!161296)

(assert (=> b!7009114 (= lt!2502871 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun lt!2502894 () Unit!161296)

(assert (=> b!7009114 (= lt!2502894 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun b!7009115 () Bool)

(declare-fun e!4213176 () Bool)

(declare-fun tp!1932179 () Bool)

(assert (=> b!7009115 (= e!4213176 tp!1932179)))

(declare-fun res!2859847 () Bool)

(assert (=> start!674984 (=> (not res!2859847) (not e!4213171))))

(assert (=> start!674984 (= res!2859847 (matchZipper!2849 lt!2502859 s!7408))))

(declare-fun appendTo!430 ((InoxSet Context!12610) Context!12610) (InoxSet Context!12610))

(assert (=> start!674984 (= lt!2502859 (appendTo!430 z1!570 ct2!306))))

(assert (=> start!674984 e!4213171))

(declare-fun condSetEmpty!48317 () Bool)

(assert (=> start!674984 (= condSetEmpty!48317 (= z1!570 ((as const (Array Context!12610 Bool)) false)))))

(assert (=> start!674984 setRes!48317))

(assert (=> start!674984 (and (inv!86131 ct2!306) e!4213176)))

(declare-fun e!4213178 () Bool)

(assert (=> start!674984 e!4213178))

(declare-fun b!7009104 () Bool)

(declare-fun e!4213168 () Bool)

(declare-fun e!4213179 () Bool)

(assert (=> b!7009104 (= e!4213168 e!4213179)))

(declare-fun res!2859856 () Bool)

(assert (=> b!7009104 (=> res!2859856 e!4213179)))

(assert (=> b!7009104 (= res!2859856 (not lt!2502865))))

(declare-fun lt!2502881 () Unit!161296)

(assert (=> b!7009104 (= lt!2502881 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun lt!2502876 () Unit!161296)

(assert (=> b!7009104 (= lt!2502876 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun b!7009116 () Bool)

(declare-fun tp_is_empty!43843 () Bool)

(declare-fun tp!1932178 () Bool)

(assert (=> b!7009116 (= e!4213178 (and tp_is_empty!43843 tp!1932178))))

(declare-fun b!7009117 () Bool)

(assert (=> b!7009117 (= e!4213181 e!4213170)))

(declare-fun res!2859851 () Bool)

(assert (=> b!7009117 (=> res!2859851 e!4213170)))

(assert (=> b!7009117 (= res!2859851 (not (= lt!2502886 lt!2502867)))))

(assert (=> b!7009117 (= lt!2502867 ((_ map or) lt!2502872 lt!2502884))))

(declare-fun lt!2502885 () Context!12610)

(assert (=> b!7009117 (= lt!2502884 (derivationStepZipperUp!1959 lt!2502885 (h!73797 s!7408)))))

(declare-fun derivationStepZipperDown!2027 (Regex!17309 Context!12610 C!34888) (InoxSet Context!12610))

(assert (=> b!7009117 (= lt!2502872 (derivationStepZipperDown!2027 (h!73796 (exprs!6805 lt!2502864)) lt!2502885 (h!73797 s!7408)))))

(assert (=> b!7009117 (= lt!2502885 (Context!12611 (++!15300 lt!2502879 (exprs!6805 ct2!306))))))

(declare-fun lt!2502866 () Unit!161296)

(assert (=> b!7009117 (= lt!2502866 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun lt!2502880 () Unit!161296)

(assert (=> b!7009117 (= lt!2502880 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun b!7009118 () Bool)

(assert (=> b!7009118 (= e!4213179 true)))

(declare-fun lt!2502892 () Bool)

(declare-fun lt!2502875 () (InoxSet Context!12610))

(assert (=> b!7009118 (= lt!2502892 (matchZipper!2849 lt!2502875 (t!381228 s!7408)))))

(declare-fun lt!2502882 () Unit!161296)

(assert (=> b!7009118 (= lt!2502882 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(assert (=> b!7009118 (= lt!2502872 lt!2502875)))

(assert (=> b!7009118 (= lt!2502875 (appendTo!430 (derivationStepZipperDown!2027 (h!73796 (exprs!6805 lt!2502864)) lt!2502869 (h!73797 s!7408)) ct2!306))))

(declare-fun lt!2502887 () Unit!161296)

(assert (=> b!7009118 (= lt!2502887 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun lt!2502889 () Unit!161296)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!8 (Context!12610 Regex!17309 C!34888 Context!12610) Unit!161296)

(assert (=> b!7009118 (= lt!2502889 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!8 lt!2502869 (h!73796 (exprs!6805 lt!2502864)) (h!73797 s!7408) ct2!306))))

(declare-fun b!7009119 () Bool)

(declare-fun res!2859863 () Bool)

(assert (=> b!7009119 (=> res!2859863 e!4213175)))

(assert (=> b!7009119 (= res!2859863 (not ((_ is Cons!67348) (exprs!6805 lt!2502864))))))

(declare-fun b!7009120 () Bool)

(assert (=> b!7009120 (= e!4213172 e!4213168)))

(declare-fun res!2859859 () Bool)

(assert (=> b!7009120 (=> res!2859859 e!4213168)))

(assert (=> b!7009120 (= res!2859859 (matchZipper!2849 lt!2502884 (t!381228 s!7408)))))

(declare-fun lt!2502870 () Unit!161296)

(assert (=> b!7009120 (= lt!2502870 (lemmaConcatPreservesForall!645 lt!2502879 (exprs!6805 ct2!306) lambda!407970))))

(declare-fun b!7009121 () Bool)

(assert (=> b!7009121 (= e!4213169 (matchZipper!2849 lt!2502884 (t!381228 s!7408)))))

(assert (= (and start!674984 res!2859847) b!7009112))

(assert (= (and b!7009112 res!2859853) b!7009106))

(assert (= (and b!7009106 (not res!2859854)) b!7009110))

(assert (= (and b!7009110 (not res!2859849)) b!7009109))

(assert (= (and b!7009109 (not res!2859858)) b!7009113))

(assert (= (and b!7009113 (not res!2859852)) b!7009108))

(assert (= (and b!7009108 (not res!2859860)) b!7009119))

(assert (= (and b!7009119 (not res!2859863)) b!7009105))

(assert (= (and b!7009105 (not res!2859850)) b!7009111))

(assert (= (and b!7009111 (not res!2859855)) b!7009117))

(assert (= (and b!7009117 (not res!2859851)) b!7009114))

(assert (= (and b!7009114 (not res!2859857)) b!7009121))

(assert (= (and b!7009114 res!2859861) b!7009102))

(assert (= (and b!7009114 (not res!2859862)) b!7009107))

(assert (= (and b!7009107 (not res!2859848)) b!7009120))

(assert (= (and b!7009120 (not res!2859859)) b!7009104))

(assert (= (and b!7009104 (not res!2859856)) b!7009118))

(assert (= (and start!674984 condSetEmpty!48317) setIsEmpty!48317))

(assert (= (and start!674984 (not condSetEmpty!48317)) setNonEmpty!48317))

(assert (= setNonEmpty!48317 b!7009103))

(assert (= start!674984 b!7009115))

(assert (= (and start!674984 ((_ is Cons!67349) s!7408)) b!7009116))

(declare-fun m!7706638 () Bool)

(assert (=> setNonEmpty!48317 m!7706638))

(declare-fun m!7706640 () Bool)

(assert (=> b!7009111 m!7706640))

(declare-fun m!7706642 () Bool)

(assert (=> b!7009111 m!7706642))

(declare-fun m!7706644 () Bool)

(assert (=> b!7009118 m!7706644))

(declare-fun m!7706646 () Bool)

(assert (=> b!7009118 m!7706646))

(declare-fun m!7706648 () Bool)

(assert (=> b!7009118 m!7706648))

(declare-fun m!7706650 () Bool)

(assert (=> b!7009118 m!7706650))

(assert (=> b!7009118 m!7706648))

(assert (=> b!7009118 m!7706646))

(declare-fun m!7706652 () Bool)

(assert (=> b!7009118 m!7706652))

(declare-fun m!7706654 () Bool)

(assert (=> b!7009120 m!7706654))

(assert (=> b!7009120 m!7706646))

(declare-fun m!7706656 () Bool)

(assert (=> b!7009105 m!7706656))

(declare-fun m!7706658 () Bool)

(assert (=> b!7009114 m!7706658))

(declare-fun m!7706660 () Bool)

(assert (=> b!7009114 m!7706660))

(declare-fun m!7706662 () Bool)

(assert (=> b!7009114 m!7706662))

(assert (=> b!7009114 m!7706646))

(assert (=> b!7009114 m!7706646))

(assert (=> b!7009114 m!7706646))

(declare-fun m!7706664 () Bool)

(assert (=> b!7009114 m!7706664))

(declare-fun m!7706666 () Bool)

(assert (=> b!7009108 m!7706666))

(declare-fun m!7706668 () Bool)

(assert (=> b!7009108 m!7706668))

(declare-fun m!7706670 () Bool)

(assert (=> b!7009108 m!7706670))

(declare-fun m!7706672 () Bool)

(assert (=> b!7009108 m!7706672))

(declare-fun m!7706674 () Bool)

(assert (=> b!7009108 m!7706674))

(assert (=> b!7009102 m!7706654))

(assert (=> b!7009102 m!7706646))

(declare-fun m!7706676 () Bool)

(assert (=> b!7009113 m!7706676))

(assert (=> b!7009113 m!7706672))

(declare-fun m!7706678 () Bool)

(assert (=> b!7009110 m!7706678))

(declare-fun m!7706680 () Bool)

(assert (=> b!7009106 m!7706680))

(declare-fun m!7706682 () Bool)

(assert (=> b!7009106 m!7706682))

(declare-fun m!7706684 () Bool)

(assert (=> b!7009106 m!7706684))

(declare-fun m!7706686 () Bool)

(assert (=> b!7009106 m!7706686))

(declare-fun m!7706688 () Bool)

(assert (=> b!7009106 m!7706688))

(declare-fun m!7706690 () Bool)

(assert (=> b!7009106 m!7706690))

(declare-fun m!7706692 () Bool)

(assert (=> start!674984 m!7706692))

(declare-fun m!7706694 () Bool)

(assert (=> start!674984 m!7706694))

(declare-fun m!7706696 () Bool)

(assert (=> start!674984 m!7706696))

(declare-fun m!7706698 () Bool)

(assert (=> b!7009109 m!7706698))

(declare-fun m!7706700 () Bool)

(assert (=> b!7009109 m!7706700))

(assert (=> b!7009109 m!7706672))

(declare-fun m!7706702 () Bool)

(assert (=> b!7009109 m!7706702))

(declare-fun m!7706704 () Bool)

(assert (=> b!7009117 m!7706704))

(declare-fun m!7706706 () Bool)

(assert (=> b!7009117 m!7706706))

(assert (=> b!7009117 m!7706646))

(assert (=> b!7009117 m!7706646))

(declare-fun m!7706708 () Bool)

(assert (=> b!7009117 m!7706708))

(assert (=> b!7009121 m!7706654))

(assert (=> b!7009104 m!7706646))

(assert (=> b!7009104 m!7706646))

(check-sat (not b!7009102) (not b!7009105) (not b!7009121) (not b!7009111) (not b!7009113) (not b!7009106) (not b!7009114) (not b!7009109) (not b!7009118) tp_is_empty!43843 (not start!674984) (not b!7009120) (not setNonEmpty!48317) (not b!7009115) (not b!7009108) (not b!7009103) (not b!7009116) (not b!7009104) (not b!7009117))
(check-sat)

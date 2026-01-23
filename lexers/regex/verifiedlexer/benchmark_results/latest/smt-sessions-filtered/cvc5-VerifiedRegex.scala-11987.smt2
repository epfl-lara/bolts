; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671684 () Bool)

(assert start!671684)

(declare-fun b!6989658 () Bool)

(assert (=> b!6989658 true))

(declare-fun b!6989647 () Bool)

(assert (=> b!6989647 true))

(declare-fun b!6989654 () Bool)

(assert (=> b!6989654 true))

(declare-fun setIsEmpty!47814 () Bool)

(declare-fun setRes!47814 () Bool)

(assert (=> setIsEmpty!47814 setRes!47814))

(declare-fun b!6989637 () Bool)

(declare-fun res!2850481 () Bool)

(declare-fun e!4201133 () Bool)

(assert (=> b!6989637 (=> (not res!2850481) (not e!4201133))))

(declare-datatypes ((C!34710 0))(
  ( (C!34711 (val!27057 Int)) )
))
(declare-datatypes ((List!67205 0))(
  ( (Nil!67081) (Cons!67081 (h!73529 C!34710) (t!380952 List!67205)) )
))
(declare-fun s!7408 () List!67205)

(assert (=> b!6989637 (= res!2850481 (is-Cons!67081 s!7408))))

(declare-fun b!6989638 () Bool)

(declare-fun e!4201135 () Bool)

(declare-fun e!4201130 () Bool)

(assert (=> b!6989638 (= e!4201135 e!4201130)))

(declare-fun res!2850492 () Bool)

(assert (=> b!6989638 (=> res!2850492 e!4201130)))

(declare-datatypes ((Regex!17220 0))(
  ( (ElementMatch!17220 (c!1296383 C!34710)) (Concat!26065 (regOne!34952 Regex!17220) (regTwo!34952 Regex!17220)) (EmptyExpr!17220) (Star!17220 (reg!17549 Regex!17220)) (EmptyLang!17220) (Union!17220 (regOne!34953 Regex!17220) (regTwo!34953 Regex!17220)) )
))
(declare-datatypes ((List!67206 0))(
  ( (Nil!67082) (Cons!67082 (h!73530 Regex!17220) (t!380953 List!67206)) )
))
(declare-datatypes ((Context!12432 0))(
  ( (Context!12433 (exprs!6716 List!67206)) )
))
(declare-fun lt!2486851 () (Set Context!12432))

(declare-fun lt!2486848 () (Set Context!12432))

(declare-fun derivationStepZipper!2700 ((Set Context!12432) C!34710) (Set Context!12432))

(assert (=> b!6989638 (= res!2850492 (not (= (derivationStepZipper!2700 lt!2486851 (h!73529 s!7408)) lt!2486848)))))

(declare-fun lambda!401619 () Int)

(declare-fun lt!2486858 () List!67206)

(declare-datatypes ((Unit!161095 0))(
  ( (Unit!161096) )
))
(declare-fun lt!2486856 () Unit!161095)

(declare-fun ct2!306 () Context!12432)

(declare-fun lemmaConcatPreservesForall!556 (List!67206 List!67206 Int) Unit!161095)

(assert (=> b!6989638 (= lt!2486856 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun lt!2486861 () Unit!161095)

(assert (=> b!6989638 (= lt!2486861 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun lt!2486876 () Context!12432)

(declare-fun lambda!401620 () Int)

(declare-fun flatMap!2206 ((Set Context!12432) Int) (Set Context!12432))

(declare-fun derivationStepZipperUp!1870 (Context!12432 C!34710) (Set Context!12432))

(assert (=> b!6989638 (= (flatMap!2206 lt!2486851 lambda!401620) (derivationStepZipperUp!1870 lt!2486876 (h!73529 s!7408)))))

(declare-fun lt!2486852 () Unit!161095)

(declare-fun lemmaFlatMapOnSingletonSet!1721 ((Set Context!12432) Context!12432 Int) Unit!161095)

(assert (=> b!6989638 (= lt!2486852 (lemmaFlatMapOnSingletonSet!1721 lt!2486851 lt!2486876 lambda!401620))))

(assert (=> b!6989638 (= lt!2486851 (set.insert lt!2486876 (as set.empty (Set Context!12432))))))

(declare-fun lt!2486853 () Unit!161095)

(assert (=> b!6989638 (= lt!2486853 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun lt!2486882 () Unit!161095)

(assert (=> b!6989638 (= lt!2486882 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989639 () Bool)

(declare-fun e!4201129 () Bool)

(declare-fun e!4201132 () Bool)

(assert (=> b!6989639 (= e!4201129 e!4201132)))

(declare-fun res!2850486 () Bool)

(assert (=> b!6989639 (=> res!2850486 e!4201132)))

(declare-fun lt!2486874 () (Set Context!12432))

(declare-fun lt!2486871 () (Set Context!12432))

(assert (=> b!6989639 (= res!2850486 (not (= lt!2486874 lt!2486871)))))

(declare-fun lt!2486872 () Context!12432)

(assert (=> b!6989639 (= lt!2486874 (set.insert lt!2486872 (as set.empty (Set Context!12432))))))

(declare-fun lt!2486864 () Unit!161095)

(declare-fun lt!2486867 () Context!12432)

(assert (=> b!6989639 (= lt!2486864 (lemmaConcatPreservesForall!556 (exprs!6716 lt!2486867) (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989640 () Bool)

(declare-fun e!4201125 () Bool)

(assert (=> b!6989640 (= e!4201125 e!4201135)))

(declare-fun res!2850493 () Bool)

(assert (=> b!6989640 (=> res!2850493 e!4201135)))

(declare-fun matchZipper!2760 ((Set Context!12432) List!67205) Bool)

(assert (=> b!6989640 (= res!2850493 (not (matchZipper!2760 lt!2486848 (t!380952 s!7408))))))

(declare-fun lt!2486854 () Unit!161095)

(assert (=> b!6989640 (= lt!2486854 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989641 () Bool)

(declare-fun e!4201134 () Bool)

(declare-fun forall!16136 (List!67206 Int) Bool)

(assert (=> b!6989641 (= e!4201134 (forall!16136 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989642 () Bool)

(declare-fun e!4201131 () Bool)

(declare-fun tp_is_empty!43665 () Bool)

(declare-fun tp!1929716 () Bool)

(assert (=> b!6989642 (= e!4201131 (and tp_is_empty!43665 tp!1929716))))

(declare-fun b!6989643 () Bool)

(declare-fun res!2850490 () Bool)

(declare-fun e!4201121 () Bool)

(assert (=> b!6989643 (=> res!2850490 e!4201121)))

(declare-fun isEmpty!39153 (List!67206) Bool)

(assert (=> b!6989643 (= res!2850490 (isEmpty!39153 (exprs!6716 lt!2486867)))))

(declare-fun b!6989644 () Bool)

(declare-fun e!4201128 () Bool)

(declare-fun e!4201136 () Bool)

(assert (=> b!6989644 (= e!4201128 e!4201136)))

(declare-fun res!2850491 () Bool)

(assert (=> b!6989644 (=> res!2850491 e!4201136)))

(declare-fun lt!2486879 () (Set Context!12432))

(declare-fun lt!2486875 () (Set Context!12432))

(assert (=> b!6989644 (= res!2850491 (not (= lt!2486879 lt!2486875)))))

(declare-fun lt!2486866 () (Set Context!12432))

(assert (=> b!6989644 (= lt!2486875 (set.union lt!2486866 lt!2486848))))

(assert (=> b!6989644 (= lt!2486848 (derivationStepZipperUp!1870 lt!2486876 (h!73529 s!7408)))))

(declare-fun derivationStepZipperDown!1938 (Regex!17220 Context!12432 C!34710) (Set Context!12432))

(assert (=> b!6989644 (= lt!2486866 (derivationStepZipperDown!1938 (h!73530 (exprs!6716 lt!2486867)) lt!2486876 (h!73529 s!7408)))))

(declare-fun ++!15165 (List!67206 List!67206) List!67206)

(assert (=> b!6989644 (= lt!2486876 (Context!12433 (++!15165 lt!2486858 (exprs!6716 ct2!306))))))

(declare-fun lt!2486862 () Unit!161095)

(assert (=> b!6989644 (= lt!2486862 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun lt!2486860 () Unit!161095)

(assert (=> b!6989644 (= lt!2486860 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989645 () Bool)

(assert (=> b!6989645 (= e!4201136 e!4201125)))

(declare-fun res!2850494 () Bool)

(assert (=> b!6989645 (=> res!2850494 e!4201125)))

(declare-fun e!4201138 () Bool)

(assert (=> b!6989645 (= res!2850494 e!4201138)))

(declare-fun res!2850497 () Bool)

(assert (=> b!6989645 (=> (not res!2850497) (not e!4201138))))

(declare-fun lt!2486881 () Bool)

(declare-fun lt!2486859 () Bool)

(assert (=> b!6989645 (= res!2850497 (not (= lt!2486881 lt!2486859)))))

(assert (=> b!6989645 (= lt!2486881 (matchZipper!2760 lt!2486879 (t!380952 s!7408)))))

(declare-fun lt!2486880 () Unit!161095)

(assert (=> b!6989645 (= lt!2486880 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun e!4201123 () Bool)

(assert (=> b!6989645 (= (matchZipper!2760 lt!2486875 (t!380952 s!7408)) e!4201123)))

(declare-fun res!2850482 () Bool)

(assert (=> b!6989645 (=> res!2850482 e!4201123)))

(assert (=> b!6989645 (= res!2850482 lt!2486859)))

(assert (=> b!6989645 (= lt!2486859 (matchZipper!2760 lt!2486866 (t!380952 s!7408)))))

(declare-fun lt!2486869 () Unit!161095)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1393 ((Set Context!12432) (Set Context!12432) List!67205) Unit!161095)

(assert (=> b!6989645 (= lt!2486869 (lemmaZipperConcatMatchesSameAsBothZippers!1393 lt!2486866 lt!2486848 (t!380952 s!7408)))))

(declare-fun lt!2486863 () Unit!161095)

(assert (=> b!6989645 (= lt!2486863 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun lt!2486868 () Unit!161095)

(assert (=> b!6989645 (= lt!2486868 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun setElem!47814 () Context!12432)

(declare-fun tp!1929715 () Bool)

(declare-fun setNonEmpty!47814 () Bool)

(declare-fun e!4201122 () Bool)

(declare-fun inv!85910 (Context!12432) Bool)

(assert (=> setNonEmpty!47814 (= setRes!47814 (and tp!1929715 (inv!85910 setElem!47814) e!4201122))))

(declare-fun z1!570 () (Set Context!12432))

(declare-fun setRest!47814 () (Set Context!12432))

(assert (=> setNonEmpty!47814 (= z1!570 (set.union (set.insert setElem!47814 (as set.empty (Set Context!12432))) setRest!47814))))

(declare-fun res!2850483 () Bool)

(assert (=> start!671684 (=> (not res!2850483) (not e!4201133))))

(declare-fun lt!2486857 () (Set Context!12432))

(assert (=> start!671684 (= res!2850483 (matchZipper!2760 lt!2486857 s!7408))))

(declare-fun appendTo!341 ((Set Context!12432) Context!12432) (Set Context!12432))

(assert (=> start!671684 (= lt!2486857 (appendTo!341 z1!570 ct2!306))))

(assert (=> start!671684 e!4201133))

(declare-fun c!403 () Context!12432)

(declare-fun e!4201126 () Bool)

(assert (=> start!671684 (and (inv!85910 c!403) e!4201126)))

(declare-fun condSetEmpty!47814 () Bool)

(assert (=> start!671684 (= condSetEmpty!47814 (= z1!570 (as set.empty (Set Context!12432))))))

(assert (=> start!671684 setRes!47814))

(assert (=> start!671684 e!4201131))

(declare-fun e!4201127 () Bool)

(assert (=> start!671684 (and (inv!85910 ct2!306) e!4201127)))

(declare-fun b!6989646 () Bool)

(declare-fun tp!1929713 () Bool)

(assert (=> b!6989646 (= e!4201126 tp!1929713)))

(declare-fun e!4201124 () Bool)

(assert (=> b!6989647 (= e!4201124 e!4201129)))

(declare-fun res!2850489 () Bool)

(assert (=> b!6989647 (=> res!2850489 e!4201129)))

(declare-fun lt!2486855 () Context!12432)

(assert (=> b!6989647 (= res!2850489 (or (not (= lt!2486872 lt!2486855)) (not (set.member lt!2486867 z1!570))))))

(assert (=> b!6989647 (= lt!2486872 (Context!12433 (++!15165 (exprs!6716 lt!2486867) (exprs!6716 ct2!306))))))

(declare-fun lt!2486877 () Unit!161095)

(assert (=> b!6989647 (= lt!2486877 (lemmaConcatPreservesForall!556 (exprs!6716 lt!2486867) (exprs!6716 ct2!306) lambda!401619))))

(declare-fun lambda!401618 () Int)

(declare-fun mapPost2!75 ((Set Context!12432) Int Context!12432) Context!12432)

(assert (=> b!6989647 (= lt!2486867 (mapPost2!75 z1!570 lambda!401618 lt!2486855))))

(declare-fun b!6989648 () Bool)

(declare-fun res!2850485 () Bool)

(assert (=> b!6989648 (=> res!2850485 e!4201125)))

(assert (=> b!6989648 (= res!2850485 (not lt!2486881))))

(declare-fun b!6989649 () Bool)

(assert (=> b!6989649 (= e!4201123 (matchZipper!2760 lt!2486848 (t!380952 s!7408)))))

(declare-fun b!6989650 () Bool)

(declare-fun tp!1929714 () Bool)

(assert (=> b!6989650 (= e!4201127 tp!1929714)))

(declare-fun b!6989651 () Bool)

(declare-fun res!2850495 () Bool)

(assert (=> b!6989651 (=> res!2850495 e!4201124)))

(assert (=> b!6989651 (= res!2850495 (not (set.member lt!2486855 lt!2486857)))))

(declare-fun b!6989652 () Bool)

(declare-fun e!4201137 () Bool)

(assert (=> b!6989652 (= e!4201130 e!4201137)))

(declare-fun res!2850488 () Bool)

(assert (=> b!6989652 (=> res!2850488 e!4201137)))

(assert (=> b!6989652 (= res!2850488 (not (matchZipper!2760 lt!2486851 s!7408)))))

(declare-fun lt!2486873 () Unit!161095)

(assert (=> b!6989652 (= lt!2486873 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989653 () Bool)

(declare-fun tp!1929717 () Bool)

(assert (=> b!6989653 (= e!4201122 tp!1929717)))

(assert (=> b!6989654 (= e!4201132 e!4201121)))

(declare-fun res!2850487 () Bool)

(assert (=> b!6989654 (=> res!2850487 e!4201121)))

(assert (=> b!6989654 (= res!2850487 (not (= (derivationStepZipper!2700 lt!2486874 (h!73529 s!7408)) lt!2486879)))))

(assert (=> b!6989654 (= (flatMap!2206 lt!2486874 lambda!401620) (derivationStepZipperUp!1870 lt!2486872 (h!73529 s!7408)))))

(declare-fun lt!2486865 () Unit!161095)

(assert (=> b!6989654 (= lt!2486865 (lemmaFlatMapOnSingletonSet!1721 lt!2486874 lt!2486872 lambda!401620))))

(assert (=> b!6989654 (= lt!2486879 (derivationStepZipperUp!1870 lt!2486872 (h!73529 s!7408)))))

(declare-fun lt!2486849 () Unit!161095)

(assert (=> b!6989654 (= lt!2486849 (lemmaConcatPreservesForall!556 (exprs!6716 lt!2486867) (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989655 () Bool)

(assert (=> b!6989655 (= e!4201138 (not (matchZipper!2760 lt!2486848 (t!380952 s!7408))))))

(declare-fun lt!2486870 () Unit!161095)

(assert (=> b!6989655 (= lt!2486870 (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(declare-fun b!6989656 () Bool)

(declare-fun res!2850496 () Bool)

(assert (=> b!6989656 (=> res!2850496 e!4201121)))

(assert (=> b!6989656 (= res!2850496 (not (is-Cons!67082 (exprs!6716 lt!2486867))))))

(declare-fun b!6989657 () Bool)

(assert (=> b!6989657 (= e!4201121 e!4201128)))

(declare-fun res!2850499 () Bool)

(assert (=> b!6989657 (=> res!2850499 e!4201128)))

(declare-fun nullable!6980 (Regex!17220) Bool)

(assert (=> b!6989657 (= res!2850499 (not (nullable!6980 (h!73530 (exprs!6716 lt!2486867)))))))

(declare-fun tail!13229 (List!67206) List!67206)

(assert (=> b!6989657 (= lt!2486858 (tail!13229 (exprs!6716 lt!2486867)))))

(assert (=> b!6989658 (= e!4201133 (not e!4201124))))

(declare-fun res!2850498 () Bool)

(assert (=> b!6989658 (=> res!2850498 e!4201124)))

(assert (=> b!6989658 (= res!2850498 (not (matchZipper!2760 lt!2486871 s!7408)))))

(assert (=> b!6989658 (= lt!2486871 (set.insert lt!2486855 (as set.empty (Set Context!12432))))))

(declare-fun lambda!401617 () Int)

(declare-fun getWitness!1119 ((Set Context!12432) Int) Context!12432)

(assert (=> b!6989658 (= lt!2486855 (getWitness!1119 lt!2486857 lambda!401617))))

(declare-datatypes ((List!67207 0))(
  ( (Nil!67083) (Cons!67083 (h!73531 Context!12432) (t!380954 List!67207)) )
))
(declare-fun lt!2486850 () List!67207)

(declare-fun exists!3008 (List!67207 Int) Bool)

(assert (=> b!6989658 (exists!3008 lt!2486850 lambda!401617)))

(declare-fun lt!2486878 () Unit!161095)

(declare-fun lemmaZipperMatchesExistsMatchingContext!189 (List!67207 List!67205) Unit!161095)

(assert (=> b!6989658 (= lt!2486878 (lemmaZipperMatchesExistsMatchingContext!189 lt!2486850 s!7408))))

(declare-fun toList!10580 ((Set Context!12432)) List!67207)

(assert (=> b!6989658 (= lt!2486850 (toList!10580 lt!2486857))))

(declare-fun b!6989659 () Bool)

(assert (=> b!6989659 (= e!4201137 e!4201134)))

(declare-fun res!2850484 () Bool)

(assert (=> b!6989659 (=> res!2850484 e!4201134)))

(assert (=> b!6989659 (= res!2850484 (not (forall!16136 (exprs!6716 c!403) lambda!401619)))))

(assert (= (and start!671684 res!2850483) b!6989637))

(assert (= (and b!6989637 res!2850481) b!6989658))

(assert (= (and b!6989658 (not res!2850498)) b!6989651))

(assert (= (and b!6989651 (not res!2850495)) b!6989647))

(assert (= (and b!6989647 (not res!2850489)) b!6989639))

(assert (= (and b!6989639 (not res!2850486)) b!6989654))

(assert (= (and b!6989654 (not res!2850487)) b!6989656))

(assert (= (and b!6989656 (not res!2850496)) b!6989643))

(assert (= (and b!6989643 (not res!2850490)) b!6989657))

(assert (= (and b!6989657 (not res!2850499)) b!6989644))

(assert (= (and b!6989644 (not res!2850491)) b!6989645))

(assert (= (and b!6989645 (not res!2850482)) b!6989649))

(assert (= (and b!6989645 res!2850497) b!6989655))

(assert (= (and b!6989645 (not res!2850494)) b!6989648))

(assert (= (and b!6989648 (not res!2850485)) b!6989640))

(assert (= (and b!6989640 (not res!2850493)) b!6989638))

(assert (= (and b!6989638 (not res!2850492)) b!6989652))

(assert (= (and b!6989652 (not res!2850488)) b!6989659))

(assert (= (and b!6989659 (not res!2850484)) b!6989641))

(assert (= start!671684 b!6989646))

(assert (= (and start!671684 condSetEmpty!47814) setIsEmpty!47814))

(assert (= (and start!671684 (not condSetEmpty!47814)) setNonEmpty!47814))

(assert (= setNonEmpty!47814 b!6989653))

(assert (= (and start!671684 (is-Cons!67081 s!7408)) b!6989642))

(assert (= start!671684 b!6989650))

(declare-fun m!7678232 () Bool)

(assert (=> b!6989639 m!7678232))

(declare-fun m!7678234 () Bool)

(assert (=> b!6989639 m!7678234))

(declare-fun m!7678236 () Bool)

(assert (=> setNonEmpty!47814 m!7678236))

(declare-fun m!7678238 () Bool)

(assert (=> b!6989645 m!7678238))

(declare-fun m!7678240 () Bool)

(assert (=> b!6989645 m!7678240))

(assert (=> b!6989645 m!7678240))

(declare-fun m!7678242 () Bool)

(assert (=> b!6989645 m!7678242))

(declare-fun m!7678244 () Bool)

(assert (=> b!6989645 m!7678244))

(assert (=> b!6989645 m!7678240))

(declare-fun m!7678246 () Bool)

(assert (=> b!6989645 m!7678246))

(assert (=> b!6989638 m!7678240))

(assert (=> b!6989638 m!7678240))

(declare-fun m!7678248 () Bool)

(assert (=> b!6989638 m!7678248))

(assert (=> b!6989638 m!7678240))

(declare-fun m!7678250 () Bool)

(assert (=> b!6989638 m!7678250))

(declare-fun m!7678252 () Bool)

(assert (=> b!6989638 m!7678252))

(assert (=> b!6989638 m!7678240))

(declare-fun m!7678254 () Bool)

(assert (=> b!6989638 m!7678254))

(declare-fun m!7678256 () Bool)

(assert (=> b!6989638 m!7678256))

(declare-fun m!7678258 () Bool)

(assert (=> b!6989649 m!7678258))

(declare-fun m!7678260 () Bool)

(assert (=> b!6989647 m!7678260))

(declare-fun m!7678262 () Bool)

(assert (=> b!6989647 m!7678262))

(assert (=> b!6989647 m!7678234))

(declare-fun m!7678264 () Bool)

(assert (=> b!6989647 m!7678264))

(declare-fun m!7678266 () Bool)

(assert (=> start!671684 m!7678266))

(declare-fun m!7678268 () Bool)

(assert (=> start!671684 m!7678268))

(declare-fun m!7678270 () Bool)

(assert (=> start!671684 m!7678270))

(declare-fun m!7678272 () Bool)

(assert (=> start!671684 m!7678272))

(assert (=> b!6989655 m!7678258))

(assert (=> b!6989655 m!7678240))

(declare-fun m!7678274 () Bool)

(assert (=> b!6989658 m!7678274))

(declare-fun m!7678276 () Bool)

(assert (=> b!6989658 m!7678276))

(declare-fun m!7678278 () Bool)

(assert (=> b!6989658 m!7678278))

(declare-fun m!7678280 () Bool)

(assert (=> b!6989658 m!7678280))

(declare-fun m!7678282 () Bool)

(assert (=> b!6989658 m!7678282))

(declare-fun m!7678284 () Bool)

(assert (=> b!6989658 m!7678284))

(declare-fun m!7678286 () Bool)

(assert (=> b!6989651 m!7678286))

(declare-fun m!7678288 () Bool)

(assert (=> b!6989644 m!7678288))

(declare-fun m!7678290 () Bool)

(assert (=> b!6989644 m!7678290))

(assert (=> b!6989644 m!7678252))

(assert (=> b!6989644 m!7678240))

(assert (=> b!6989644 m!7678240))

(declare-fun m!7678292 () Bool)

(assert (=> b!6989652 m!7678292))

(assert (=> b!6989652 m!7678240))

(assert (=> b!6989640 m!7678258))

(assert (=> b!6989640 m!7678240))

(declare-fun m!7678294 () Bool)

(assert (=> b!6989659 m!7678294))

(declare-fun m!7678296 () Bool)

(assert (=> b!6989657 m!7678296))

(declare-fun m!7678298 () Bool)

(assert (=> b!6989657 m!7678298))

(declare-fun m!7678300 () Bool)

(assert (=> b!6989641 m!7678300))

(declare-fun m!7678302 () Bool)

(assert (=> b!6989643 m!7678302))

(assert (=> b!6989654 m!7678234))

(declare-fun m!7678304 () Bool)

(assert (=> b!6989654 m!7678304))

(declare-fun m!7678306 () Bool)

(assert (=> b!6989654 m!7678306))

(declare-fun m!7678308 () Bool)

(assert (=> b!6989654 m!7678308))

(declare-fun m!7678310 () Bool)

(assert (=> b!6989654 m!7678310))

(push 1)

(assert (not b!6989639))

(assert (not b!6989642))

(assert (not b!6989646))

(assert (not b!6989649))

(assert (not b!6989644))

(assert (not start!671684))

(assert (not b!6989650))

(assert (not b!6989655))

(assert (not b!6989659))

(assert (not b!6989654))

(assert tp_is_empty!43665)

(assert (not b!6989645))

(assert (not b!6989647))

(assert (not b!6989657))

(assert (not b!6989658))

(assert (not setNonEmpty!47814))

(assert (not b!6989652))

(assert (not b!6989653))

(assert (not b!6989643))

(assert (not b!6989640))

(assert (not b!6989638))

(assert (not b!6989641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2177204 () Bool)

(declare-fun nullableFct!2637 (Regex!17220) Bool)

(assert (=> d!2177204 (= (nullable!6980 (h!73530 (exprs!6716 lt!2486867))) (nullableFct!2637 (h!73530 (exprs!6716 lt!2486867))))))

(declare-fun bs!1862157 () Bool)

(assert (= bs!1862157 d!2177204))

(declare-fun m!7678392 () Bool)

(assert (=> bs!1862157 m!7678392))

(assert (=> b!6989657 d!2177204))

(declare-fun d!2177206 () Bool)

(assert (=> d!2177206 (= (tail!13229 (exprs!6716 lt!2486867)) (t!380953 (exprs!6716 lt!2486867)))))

(assert (=> b!6989657 d!2177206))

(declare-fun d!2177208 () Bool)

(assert (=> d!2177208 (forall!16136 (++!15165 lt!2486858 (exprs!6716 ct2!306)) lambda!401619)))

(declare-fun lt!2486992 () Unit!161095)

(declare-fun choose!52253 (List!67206 List!67206 Int) Unit!161095)

(assert (=> d!2177208 (= lt!2486992 (choose!52253 lt!2486858 (exprs!6716 ct2!306) lambda!401619))))

(assert (=> d!2177208 (forall!16136 lt!2486858 lambda!401619)))

(assert (=> d!2177208 (= (lemmaConcatPreservesForall!556 lt!2486858 (exprs!6716 ct2!306) lambda!401619) lt!2486992)))

(declare-fun bs!1862158 () Bool)

(assert (= bs!1862158 d!2177208))

(assert (=> bs!1862158 m!7678288))

(assert (=> bs!1862158 m!7678288))

(declare-fun m!7678394 () Bool)

(assert (=> bs!1862158 m!7678394))

(declare-fun m!7678396 () Bool)

(assert (=> bs!1862158 m!7678396))

(declare-fun m!7678398 () Bool)

(assert (=> bs!1862158 m!7678398))

(assert (=> b!6989638 d!2177208))

(declare-fun d!2177210 () Bool)

(declare-fun dynLambda!26899 (Int Context!12432) (Set Context!12432))

(assert (=> d!2177210 (= (flatMap!2206 lt!2486851 lambda!401620) (dynLambda!26899 lambda!401620 lt!2486876))))

(declare-fun lt!2486995 () Unit!161095)

(declare-fun choose!52254 ((Set Context!12432) Context!12432 Int) Unit!161095)

(assert (=> d!2177210 (= lt!2486995 (choose!52254 lt!2486851 lt!2486876 lambda!401620))))

(assert (=> d!2177210 (= lt!2486851 (set.insert lt!2486876 (as set.empty (Set Context!12432))))))

(assert (=> d!2177210 (= (lemmaFlatMapOnSingletonSet!1721 lt!2486851 lt!2486876 lambda!401620) lt!2486995)))

(declare-fun b_lambda!262547 () Bool)

(assert (=> (not b_lambda!262547) (not d!2177210)))

(declare-fun bs!1862159 () Bool)

(assert (= bs!1862159 d!2177210))

(assert (=> bs!1862159 m!7678250))

(declare-fun m!7678400 () Bool)

(assert (=> bs!1862159 m!7678400))

(declare-fun m!7678402 () Bool)

(assert (=> bs!1862159 m!7678402))

(assert (=> bs!1862159 m!7678248))

(assert (=> b!6989638 d!2177210))

(declare-fun bs!1862160 () Bool)

(declare-fun d!2177212 () Bool)

(assert (= bs!1862160 (and d!2177212 b!6989654)))

(declare-fun lambda!401671 () Int)

(assert (=> bs!1862160 (= lambda!401671 lambda!401620)))

(assert (=> d!2177212 true))

(assert (=> d!2177212 (= (derivationStepZipper!2700 lt!2486851 (h!73529 s!7408)) (flatMap!2206 lt!2486851 lambda!401671))))

(declare-fun bs!1862161 () Bool)

(assert (= bs!1862161 d!2177212))

(declare-fun m!7678404 () Bool)

(assert (=> bs!1862161 m!7678404))

(assert (=> b!6989638 d!2177212))

(declare-fun b!6989753 () Bool)

(declare-fun e!4201199 () (Set Context!12432))

(declare-fun e!4201201 () (Set Context!12432))

(assert (=> b!6989753 (= e!4201199 e!4201201)))

(declare-fun c!1296401 () Bool)

(assert (=> b!6989753 (= c!1296401 (is-Cons!67082 (exprs!6716 lt!2486876)))))

(declare-fun d!2177214 () Bool)

(declare-fun c!1296402 () Bool)

(declare-fun e!4201200 () Bool)

(assert (=> d!2177214 (= c!1296402 e!4201200)))

(declare-fun res!2850560 () Bool)

(assert (=> d!2177214 (=> (not res!2850560) (not e!4201200))))

(assert (=> d!2177214 (= res!2850560 (is-Cons!67082 (exprs!6716 lt!2486876)))))

(assert (=> d!2177214 (= (derivationStepZipperUp!1870 lt!2486876 (h!73529 s!7408)) e!4201199)))

(declare-fun b!6989754 () Bool)

(assert (=> b!6989754 (= e!4201200 (nullable!6980 (h!73530 (exprs!6716 lt!2486876))))))

(declare-fun bm!634529 () Bool)

(declare-fun call!634534 () (Set Context!12432))

(assert (=> bm!634529 (= call!634534 (derivationStepZipperDown!1938 (h!73530 (exprs!6716 lt!2486876)) (Context!12433 (t!380953 (exprs!6716 lt!2486876))) (h!73529 s!7408)))))

(declare-fun b!6989755 () Bool)

(assert (=> b!6989755 (= e!4201201 (as set.empty (Set Context!12432)))))

(declare-fun b!6989756 () Bool)

(assert (=> b!6989756 (= e!4201201 call!634534)))

(declare-fun b!6989757 () Bool)

(assert (=> b!6989757 (= e!4201199 (set.union call!634534 (derivationStepZipperUp!1870 (Context!12433 (t!380953 (exprs!6716 lt!2486876))) (h!73529 s!7408))))))

(assert (= (and d!2177214 res!2850560) b!6989754))

(assert (= (and d!2177214 c!1296402) b!6989757))

(assert (= (and d!2177214 (not c!1296402)) b!6989753))

(assert (= (and b!6989753 c!1296401) b!6989756))

(assert (= (and b!6989753 (not c!1296401)) b!6989755))

(assert (= (or b!6989757 b!6989756) bm!634529))

(declare-fun m!7678406 () Bool)

(assert (=> b!6989754 m!7678406))

(declare-fun m!7678408 () Bool)

(assert (=> bm!634529 m!7678408))

(declare-fun m!7678410 () Bool)

(assert (=> b!6989757 m!7678410))

(assert (=> b!6989638 d!2177214))

(declare-fun d!2177216 () Bool)

(declare-fun choose!52255 ((Set Context!12432) Int) (Set Context!12432))

(assert (=> d!2177216 (= (flatMap!2206 lt!2486851 lambda!401620) (choose!52255 lt!2486851 lambda!401620))))

(declare-fun bs!1862162 () Bool)

(assert (= bs!1862162 d!2177216))

(declare-fun m!7678412 () Bool)

(assert (=> bs!1862162 m!7678412))

(assert (=> b!6989638 d!2177216))

(declare-fun bs!1862163 () Bool)

(declare-fun d!2177218 () Bool)

(assert (= bs!1862163 (and d!2177218 b!6989658)))

(declare-fun lambda!401674 () Int)

(assert (=> bs!1862163 (not (= lambda!401674 lambda!401617))))

(assert (=> d!2177218 true))

(declare-fun order!27921 () Int)

(declare-fun dynLambda!26900 (Int Int) Int)

(assert (=> d!2177218 (< (dynLambda!26900 order!27921 lambda!401617) (dynLambda!26900 order!27921 lambda!401674))))

(declare-fun forall!16138 (List!67207 Int) Bool)

(assert (=> d!2177218 (= (exists!3008 lt!2486850 lambda!401617) (not (forall!16138 lt!2486850 lambda!401674)))))

(declare-fun bs!1862164 () Bool)

(assert (= bs!1862164 d!2177218))

(declare-fun m!7678414 () Bool)

(assert (=> bs!1862164 m!7678414))

(assert (=> b!6989658 d!2177218))

(declare-fun d!2177220 () Bool)

(declare-fun c!1296405 () Bool)

(declare-fun isEmpty!39155 (List!67205) Bool)

(assert (=> d!2177220 (= c!1296405 (isEmpty!39155 s!7408))))

(declare-fun e!4201204 () Bool)

(assert (=> d!2177220 (= (matchZipper!2760 lt!2486871 s!7408) e!4201204)))

(declare-fun b!6989764 () Bool)

(declare-fun nullableZipper!2436 ((Set Context!12432)) Bool)

(assert (=> b!6989764 (= e!4201204 (nullableZipper!2436 lt!2486871))))

(declare-fun b!6989765 () Bool)

(declare-fun head!14111 (List!67205) C!34710)

(declare-fun tail!13231 (List!67205) List!67205)

(assert (=> b!6989765 (= e!4201204 (matchZipper!2760 (derivationStepZipper!2700 lt!2486871 (head!14111 s!7408)) (tail!13231 s!7408)))))

(assert (= (and d!2177220 c!1296405) b!6989764))

(assert (= (and d!2177220 (not c!1296405)) b!6989765))

(declare-fun m!7678416 () Bool)

(assert (=> d!2177220 m!7678416))

(declare-fun m!7678418 () Bool)

(assert (=> b!6989764 m!7678418))

(declare-fun m!7678420 () Bool)

(assert (=> b!6989765 m!7678420))

(assert (=> b!6989765 m!7678420))

(declare-fun m!7678422 () Bool)

(assert (=> b!6989765 m!7678422))

(declare-fun m!7678424 () Bool)

(assert (=> b!6989765 m!7678424))

(assert (=> b!6989765 m!7678422))

(assert (=> b!6989765 m!7678424))

(declare-fun m!7678426 () Bool)

(assert (=> b!6989765 m!7678426))

(assert (=> b!6989658 d!2177220))

(declare-fun d!2177222 () Bool)

(declare-fun e!4201207 () Bool)

(assert (=> d!2177222 e!4201207))

(declare-fun res!2850563 () Bool)

(assert (=> d!2177222 (=> (not res!2850563) (not e!4201207))))

(declare-fun lt!2486998 () Context!12432)

(declare-fun dynLambda!26901 (Int Context!12432) Bool)

(assert (=> d!2177222 (= res!2850563 (dynLambda!26901 lambda!401617 lt!2486998))))

(declare-fun getWitness!1121 (List!67207 Int) Context!12432)

(assert (=> d!2177222 (= lt!2486998 (getWitness!1121 (toList!10580 lt!2486857) lambda!401617))))

(declare-fun exists!3010 ((Set Context!12432) Int) Bool)

(assert (=> d!2177222 (exists!3010 lt!2486857 lambda!401617)))

(assert (=> d!2177222 (= (getWitness!1119 lt!2486857 lambda!401617) lt!2486998)))

(declare-fun b!6989768 () Bool)

(assert (=> b!6989768 (= e!4201207 (set.member lt!2486998 lt!2486857))))

(assert (= (and d!2177222 res!2850563) b!6989768))

(declare-fun b_lambda!262549 () Bool)

(assert (=> (not b_lambda!262549) (not d!2177222)))

(declare-fun m!7678428 () Bool)

(assert (=> d!2177222 m!7678428))

(assert (=> d!2177222 m!7678276))

(assert (=> d!2177222 m!7678276))

(declare-fun m!7678430 () Bool)

(assert (=> d!2177222 m!7678430))

(declare-fun m!7678432 () Bool)

(assert (=> d!2177222 m!7678432))

(declare-fun m!7678434 () Bool)

(assert (=> b!6989768 m!7678434))

(assert (=> b!6989658 d!2177222))

(declare-fun bs!1862165 () Bool)

(declare-fun d!2177224 () Bool)

(assert (= bs!1862165 (and d!2177224 b!6989658)))

(declare-fun lambda!401677 () Int)

(assert (=> bs!1862165 (= lambda!401677 lambda!401617)))

(declare-fun bs!1862166 () Bool)

(assert (= bs!1862166 (and d!2177224 d!2177218)))

(assert (=> bs!1862166 (not (= lambda!401677 lambda!401674))))

(assert (=> d!2177224 true))

(assert (=> d!2177224 (exists!3008 lt!2486850 lambda!401677)))

(declare-fun lt!2487001 () Unit!161095)

(declare-fun choose!52256 (List!67207 List!67205) Unit!161095)

(assert (=> d!2177224 (= lt!2487001 (choose!52256 lt!2486850 s!7408))))

(declare-fun content!13258 (List!67207) (Set Context!12432))

(assert (=> d!2177224 (matchZipper!2760 (content!13258 lt!2486850) s!7408)))

(assert (=> d!2177224 (= (lemmaZipperMatchesExistsMatchingContext!189 lt!2486850 s!7408) lt!2487001)))

(declare-fun bs!1862167 () Bool)

(assert (= bs!1862167 d!2177224))

(declare-fun m!7678436 () Bool)

(assert (=> bs!1862167 m!7678436))

(declare-fun m!7678438 () Bool)

(assert (=> bs!1862167 m!7678438))

(declare-fun m!7678440 () Bool)

(assert (=> bs!1862167 m!7678440))

(assert (=> bs!1862167 m!7678440))

(declare-fun m!7678442 () Bool)

(assert (=> bs!1862167 m!7678442))

(assert (=> b!6989658 d!2177224))

(declare-fun d!2177226 () Bool)

(declare-fun e!4201210 () Bool)

(assert (=> d!2177226 e!4201210))

(declare-fun res!2850566 () Bool)

(assert (=> d!2177226 (=> (not res!2850566) (not e!4201210))))

(declare-fun lt!2487004 () List!67207)

(declare-fun noDuplicate!2523 (List!67207) Bool)

(assert (=> d!2177226 (= res!2850566 (noDuplicate!2523 lt!2487004))))

(declare-fun choose!52257 ((Set Context!12432)) List!67207)

(assert (=> d!2177226 (= lt!2487004 (choose!52257 lt!2486857))))

(assert (=> d!2177226 (= (toList!10580 lt!2486857) lt!2487004)))

(declare-fun b!6989771 () Bool)

(assert (=> b!6989771 (= e!4201210 (= (content!13258 lt!2487004) lt!2486857))))

(assert (= (and d!2177226 res!2850566) b!6989771))

(declare-fun m!7678444 () Bool)

(assert (=> d!2177226 m!7678444))

(declare-fun m!7678446 () Bool)

(assert (=> d!2177226 m!7678446))

(declare-fun m!7678448 () Bool)

(assert (=> b!6989771 m!7678448))

(assert (=> b!6989658 d!2177226))

(declare-fun b!6989781 () Bool)

(declare-fun e!4201215 () List!67206)

(assert (=> b!6989781 (= e!4201215 (Cons!67082 (h!73530 (exprs!6716 lt!2486867)) (++!15165 (t!380953 (exprs!6716 lt!2486867)) (exprs!6716 ct2!306))))))

(declare-fun d!2177228 () Bool)

(declare-fun e!4201216 () Bool)

(assert (=> d!2177228 e!4201216))

(declare-fun res!2850572 () Bool)

(assert (=> d!2177228 (=> (not res!2850572) (not e!4201216))))

(declare-fun lt!2487007 () List!67206)

(declare-fun content!13259 (List!67206) (Set Regex!17220))

(assert (=> d!2177228 (= res!2850572 (= (content!13259 lt!2487007) (set.union (content!13259 (exprs!6716 lt!2486867)) (content!13259 (exprs!6716 ct2!306)))))))

(assert (=> d!2177228 (= lt!2487007 e!4201215)))

(declare-fun c!1296410 () Bool)

(assert (=> d!2177228 (= c!1296410 (is-Nil!67082 (exprs!6716 lt!2486867)))))

(assert (=> d!2177228 (= (++!15165 (exprs!6716 lt!2486867) (exprs!6716 ct2!306)) lt!2487007)))

(declare-fun b!6989782 () Bool)

(declare-fun res!2850571 () Bool)

(assert (=> b!6989782 (=> (not res!2850571) (not e!4201216))))

(declare-fun size!40904 (List!67206) Int)

(assert (=> b!6989782 (= res!2850571 (= (size!40904 lt!2487007) (+ (size!40904 (exprs!6716 lt!2486867)) (size!40904 (exprs!6716 ct2!306)))))))

(declare-fun b!6989780 () Bool)

(assert (=> b!6989780 (= e!4201215 (exprs!6716 ct2!306))))

(declare-fun b!6989783 () Bool)

(assert (=> b!6989783 (= e!4201216 (or (not (= (exprs!6716 ct2!306) Nil!67082)) (= lt!2487007 (exprs!6716 lt!2486867))))))

(assert (= (and d!2177228 c!1296410) b!6989780))

(assert (= (and d!2177228 (not c!1296410)) b!6989781))

(assert (= (and d!2177228 res!2850572) b!6989782))

(assert (= (and b!6989782 res!2850571) b!6989783))

(declare-fun m!7678450 () Bool)

(assert (=> b!6989781 m!7678450))

(declare-fun m!7678452 () Bool)

(assert (=> d!2177228 m!7678452))

(declare-fun m!7678454 () Bool)

(assert (=> d!2177228 m!7678454))

(declare-fun m!7678456 () Bool)

(assert (=> d!2177228 m!7678456))

(declare-fun m!7678458 () Bool)

(assert (=> b!6989782 m!7678458))

(declare-fun m!7678460 () Bool)

(assert (=> b!6989782 m!7678460))

(declare-fun m!7678462 () Bool)

(assert (=> b!6989782 m!7678462))

(assert (=> b!6989647 d!2177228))

(declare-fun d!2177230 () Bool)

(assert (=> d!2177230 (forall!16136 (++!15165 (exprs!6716 lt!2486867) (exprs!6716 ct2!306)) lambda!401619)))

(declare-fun lt!2487008 () Unit!161095)

(assert (=> d!2177230 (= lt!2487008 (choose!52253 (exprs!6716 lt!2486867) (exprs!6716 ct2!306) lambda!401619))))

(assert (=> d!2177230 (forall!16136 (exprs!6716 lt!2486867) lambda!401619)))

(assert (=> d!2177230 (= (lemmaConcatPreservesForall!556 (exprs!6716 lt!2486867) (exprs!6716 ct2!306) lambda!401619) lt!2487008)))

(declare-fun bs!1862168 () Bool)

(assert (= bs!1862168 d!2177230))

(assert (=> bs!1862168 m!7678262))

(assert (=> bs!1862168 m!7678262))

(declare-fun m!7678464 () Bool)

(assert (=> bs!1862168 m!7678464))

(declare-fun m!7678466 () Bool)

(assert (=> bs!1862168 m!7678466))

(declare-fun m!7678468 () Bool)

(assert (=> bs!1862168 m!7678468))

(assert (=> b!6989647 d!2177230))

(declare-fun d!2177232 () Bool)

(declare-fun e!4201219 () Bool)

(assert (=> d!2177232 e!4201219))

(declare-fun res!2850576 () Bool)

(assert (=> d!2177232 (=> (not res!2850576) (not e!4201219))))

(declare-fun lt!2487011 () Context!12432)

(declare-fun dynLambda!26902 (Int Context!12432) Context!12432)

(assert (=> d!2177232 (= res!2850576 (= lt!2486855 (dynLambda!26902 lambda!401618 lt!2487011)))))

(declare-fun choose!52258 ((Set Context!12432) Int Context!12432) Context!12432)

(assert (=> d!2177232 (= lt!2487011 (choose!52258 z1!570 lambda!401618 lt!2486855))))

(declare-fun map!15480 ((Set Context!12432) Int) (Set Context!12432))

(assert (=> d!2177232 (set.member lt!2486855 (map!15480 z1!570 lambda!401618))))

(assert (=> d!2177232 (= (mapPost2!75 z1!570 lambda!401618 lt!2486855) lt!2487011)))

(declare-fun b!6989787 () Bool)

(assert (=> b!6989787 (= e!4201219 (set.member lt!2487011 z1!570))))

(assert (= (and d!2177232 res!2850576) b!6989787))

(declare-fun b_lambda!262551 () Bool)

(assert (=> (not b_lambda!262551) (not d!2177232)))

(declare-fun m!7678470 () Bool)

(assert (=> d!2177232 m!7678470))

(declare-fun m!7678472 () Bool)

(assert (=> d!2177232 m!7678472))

(declare-fun m!7678474 () Bool)

(assert (=> d!2177232 m!7678474))

(declare-fun m!7678476 () Bool)

(assert (=> d!2177232 m!7678476))

(declare-fun m!7678478 () Bool)

(assert (=> b!6989787 m!7678478))

(assert (=> b!6989647 d!2177232))

(declare-fun d!2177234 () Bool)

(declare-fun c!1296411 () Bool)

(assert (=> d!2177234 (= c!1296411 (isEmpty!39155 s!7408))))

(declare-fun e!4201220 () Bool)

(assert (=> d!2177234 (= (matchZipper!2760 lt!2486857 s!7408) e!4201220)))

(declare-fun b!6989788 () Bool)

(assert (=> b!6989788 (= e!4201220 (nullableZipper!2436 lt!2486857))))

(declare-fun b!6989789 () Bool)

(assert (=> b!6989789 (= e!4201220 (matchZipper!2760 (derivationStepZipper!2700 lt!2486857 (head!14111 s!7408)) (tail!13231 s!7408)))))

(assert (= (and d!2177234 c!1296411) b!6989788))

(assert (= (and d!2177234 (not c!1296411)) b!6989789))

(assert (=> d!2177234 m!7678416))

(declare-fun m!7678480 () Bool)

(assert (=> b!6989788 m!7678480))

(assert (=> b!6989789 m!7678420))

(assert (=> b!6989789 m!7678420))

(declare-fun m!7678482 () Bool)

(assert (=> b!6989789 m!7678482))

(assert (=> b!6989789 m!7678424))

(assert (=> b!6989789 m!7678482))

(assert (=> b!6989789 m!7678424))

(declare-fun m!7678484 () Bool)

(assert (=> b!6989789 m!7678484))

(assert (=> start!671684 d!2177234))

(declare-fun bs!1862169 () Bool)

(declare-fun d!2177236 () Bool)

(assert (= bs!1862169 (and d!2177236 b!6989647)))

(declare-fun lambda!401682 () Int)

(assert (=> bs!1862169 (= lambda!401682 lambda!401618)))

(assert (=> d!2177236 true))

(assert (=> d!2177236 (= (appendTo!341 z1!570 ct2!306) (map!15480 z1!570 lambda!401682))))

(declare-fun bs!1862170 () Bool)

(assert (= bs!1862170 d!2177236))

(declare-fun m!7678486 () Bool)

(assert (=> bs!1862170 m!7678486))

(assert (=> start!671684 d!2177236))

(declare-fun bs!1862171 () Bool)

(declare-fun d!2177238 () Bool)

(assert (= bs!1862171 (and d!2177238 b!6989647)))

(declare-fun lambda!401685 () Int)

(assert (=> bs!1862171 (= lambda!401685 lambda!401619)))

(assert (=> d!2177238 (= (inv!85910 c!403) (forall!16136 (exprs!6716 c!403) lambda!401685))))

(declare-fun bs!1862172 () Bool)

(assert (= bs!1862172 d!2177238))

(declare-fun m!7678488 () Bool)

(assert (=> bs!1862172 m!7678488))

(assert (=> start!671684 d!2177238))

(declare-fun bs!1862173 () Bool)

(declare-fun d!2177240 () Bool)

(assert (= bs!1862173 (and d!2177240 b!6989647)))

(declare-fun lambda!401686 () Int)

(assert (=> bs!1862173 (= lambda!401686 lambda!401619)))

(declare-fun bs!1862174 () Bool)

(assert (= bs!1862174 (and d!2177240 d!2177238)))

(assert (=> bs!1862174 (= lambda!401686 lambda!401685)))

(assert (=> d!2177240 (= (inv!85910 ct2!306) (forall!16136 (exprs!6716 ct2!306) lambda!401686))))

(declare-fun bs!1862175 () Bool)

(assert (= bs!1862175 d!2177240))

(declare-fun m!7678490 () Bool)

(assert (=> bs!1862175 m!7678490))

(assert (=> start!671684 d!2177240))

(declare-fun d!2177242 () Bool)

(declare-fun c!1296413 () Bool)

(assert (=> d!2177242 (= c!1296413 (isEmpty!39155 (t!380952 s!7408)))))

(declare-fun e!4201221 () Bool)

(assert (=> d!2177242 (= (matchZipper!2760 lt!2486848 (t!380952 s!7408)) e!4201221)))

(declare-fun b!6989790 () Bool)

(assert (=> b!6989790 (= e!4201221 (nullableZipper!2436 lt!2486848))))

(declare-fun b!6989791 () Bool)

(assert (=> b!6989791 (= e!4201221 (matchZipper!2760 (derivationStepZipper!2700 lt!2486848 (head!14111 (t!380952 s!7408))) (tail!13231 (t!380952 s!7408))))))

(assert (= (and d!2177242 c!1296413) b!6989790))

(assert (= (and d!2177242 (not c!1296413)) b!6989791))

(declare-fun m!7678492 () Bool)

(assert (=> d!2177242 m!7678492))

(declare-fun m!7678494 () Bool)

(assert (=> b!6989790 m!7678494))

(declare-fun m!7678496 () Bool)

(assert (=> b!6989791 m!7678496))

(assert (=> b!6989791 m!7678496))

(declare-fun m!7678498 () Bool)

(assert (=> b!6989791 m!7678498))

(declare-fun m!7678500 () Bool)

(assert (=> b!6989791 m!7678500))

(assert (=> b!6989791 m!7678498))

(assert (=> b!6989791 m!7678500))

(declare-fun m!7678502 () Bool)

(assert (=> b!6989791 m!7678502))

(assert (=> b!6989649 d!2177242))

(assert (=> b!6989639 d!2177230))

(declare-fun d!2177244 () Bool)

(declare-fun res!2850581 () Bool)

(declare-fun e!4201226 () Bool)

(assert (=> d!2177244 (=> res!2850581 e!4201226)))

(assert (=> d!2177244 (= res!2850581 (is-Nil!67082 (exprs!6716 c!403)))))

(assert (=> d!2177244 (= (forall!16136 (exprs!6716 c!403) lambda!401619) e!4201226)))

(declare-fun b!6989796 () Bool)

(declare-fun e!4201227 () Bool)

(assert (=> b!6989796 (= e!4201226 e!4201227)))

(declare-fun res!2850582 () Bool)

(assert (=> b!6989796 (=> (not res!2850582) (not e!4201227))))

(declare-fun dynLambda!26903 (Int Regex!17220) Bool)

(assert (=> b!6989796 (= res!2850582 (dynLambda!26903 lambda!401619 (h!73530 (exprs!6716 c!403))))))

(declare-fun b!6989797 () Bool)

(assert (=> b!6989797 (= e!4201227 (forall!16136 (t!380953 (exprs!6716 c!403)) lambda!401619))))

(assert (= (and d!2177244 (not res!2850581)) b!6989796))

(assert (= (and b!6989796 res!2850582) b!6989797))

(declare-fun b_lambda!262553 () Bool)

(assert (=> (not b_lambda!262553) (not b!6989796)))

(declare-fun m!7678504 () Bool)

(assert (=> b!6989796 m!7678504))

(declare-fun m!7678506 () Bool)

(assert (=> b!6989797 m!7678506))

(assert (=> b!6989659 d!2177244))

(declare-fun d!2177246 () Bool)

(declare-fun res!2850583 () Bool)

(declare-fun e!4201228 () Bool)

(assert (=> d!2177246 (=> res!2850583 e!4201228)))

(assert (=> d!2177246 (= res!2850583 (is-Nil!67082 (exprs!6716 ct2!306)))))

(assert (=> d!2177246 (= (forall!16136 (exprs!6716 ct2!306) lambda!401619) e!4201228)))

(declare-fun b!6989798 () Bool)

(declare-fun e!4201229 () Bool)

(assert (=> b!6989798 (= e!4201228 e!4201229)))

(declare-fun res!2850584 () Bool)

(assert (=> b!6989798 (=> (not res!2850584) (not e!4201229))))

(assert (=> b!6989798 (= res!2850584 (dynLambda!26903 lambda!401619 (h!73530 (exprs!6716 ct2!306))))))

(declare-fun b!6989799 () Bool)

(assert (=> b!6989799 (= e!4201229 (forall!16136 (t!380953 (exprs!6716 ct2!306)) lambda!401619))))

(assert (= (and d!2177246 (not res!2850583)) b!6989798))

(assert (= (and b!6989798 res!2850584) b!6989799))

(declare-fun b_lambda!262555 () Bool)

(assert (=> (not b_lambda!262555) (not b!6989798)))

(declare-fun m!7678508 () Bool)

(assert (=> b!6989798 m!7678508))

(declare-fun m!7678510 () Bool)

(assert (=> b!6989799 m!7678510))

(assert (=> b!6989641 d!2177246))

(assert (=> b!6989640 d!2177242))

(assert (=> b!6989640 d!2177208))

(declare-fun d!2177248 () Bool)

(declare-fun c!1296414 () Bool)

(assert (=> d!2177248 (= c!1296414 (isEmpty!39155 s!7408))))

(declare-fun e!4201230 () Bool)

(assert (=> d!2177248 (= (matchZipper!2760 lt!2486851 s!7408) e!4201230)))

(declare-fun b!6989800 () Bool)

(assert (=> b!6989800 (= e!4201230 (nullableZipper!2436 lt!2486851))))

(declare-fun b!6989801 () Bool)

(assert (=> b!6989801 (= e!4201230 (matchZipper!2760 (derivationStepZipper!2700 lt!2486851 (head!14111 s!7408)) (tail!13231 s!7408)))))

(assert (= (and d!2177248 c!1296414) b!6989800))

(assert (= (and d!2177248 (not c!1296414)) b!6989801))

(assert (=> d!2177248 m!7678416))

(declare-fun m!7678512 () Bool)

(assert (=> b!6989800 m!7678512))

(assert (=> b!6989801 m!7678420))

(assert (=> b!6989801 m!7678420))

(declare-fun m!7678514 () Bool)

(assert (=> b!6989801 m!7678514))

(assert (=> b!6989801 m!7678424))

(assert (=> b!6989801 m!7678514))

(assert (=> b!6989801 m!7678424))

(declare-fun m!7678516 () Bool)

(assert (=> b!6989801 m!7678516))

(assert (=> b!6989652 d!2177248))

(assert (=> b!6989652 d!2177208))

(declare-fun d!2177250 () Bool)

(assert (=> d!2177250 (= (isEmpty!39153 (exprs!6716 lt!2486867)) (is-Nil!67082 (exprs!6716 lt!2486867)))))

(assert (=> b!6989643 d!2177250))

(assert (=> b!6989645 d!2177208))

(declare-fun e!4201233 () Bool)

(declare-fun d!2177252 () Bool)

(assert (=> d!2177252 (= (matchZipper!2760 (set.union lt!2486866 lt!2486848) (t!380952 s!7408)) e!4201233)))

(declare-fun res!2850587 () Bool)

(assert (=> d!2177252 (=> res!2850587 e!4201233)))

(assert (=> d!2177252 (= res!2850587 (matchZipper!2760 lt!2486866 (t!380952 s!7408)))))

(declare-fun lt!2487016 () Unit!161095)

(declare-fun choose!52259 ((Set Context!12432) (Set Context!12432) List!67205) Unit!161095)

(assert (=> d!2177252 (= lt!2487016 (choose!52259 lt!2486866 lt!2486848 (t!380952 s!7408)))))

(assert (=> d!2177252 (= (lemmaZipperConcatMatchesSameAsBothZippers!1393 lt!2486866 lt!2486848 (t!380952 s!7408)) lt!2487016)))

(declare-fun b!6989804 () Bool)

(assert (=> b!6989804 (= e!4201233 (matchZipper!2760 lt!2486848 (t!380952 s!7408)))))

(assert (= (and d!2177252 (not res!2850587)) b!6989804))

(declare-fun m!7678518 () Bool)

(assert (=> d!2177252 m!7678518))

(assert (=> d!2177252 m!7678242))

(declare-fun m!7678520 () Bool)

(assert (=> d!2177252 m!7678520))

(assert (=> b!6989804 m!7678258))

(assert (=> b!6989645 d!2177252))

(declare-fun d!2177254 () Bool)

(declare-fun c!1296415 () Bool)

(assert (=> d!2177254 (= c!1296415 (isEmpty!39155 (t!380952 s!7408)))))

(declare-fun e!4201234 () Bool)

(assert (=> d!2177254 (= (matchZipper!2760 lt!2486879 (t!380952 s!7408)) e!4201234)))

(declare-fun b!6989805 () Bool)

(assert (=> b!6989805 (= e!4201234 (nullableZipper!2436 lt!2486879))))

(declare-fun b!6989806 () Bool)

(assert (=> b!6989806 (= e!4201234 (matchZipper!2760 (derivationStepZipper!2700 lt!2486879 (head!14111 (t!380952 s!7408))) (tail!13231 (t!380952 s!7408))))))

(assert (= (and d!2177254 c!1296415) b!6989805))

(assert (= (and d!2177254 (not c!1296415)) b!6989806))

(assert (=> d!2177254 m!7678492))

(declare-fun m!7678522 () Bool)

(assert (=> b!6989805 m!7678522))

(assert (=> b!6989806 m!7678496))

(assert (=> b!6989806 m!7678496))

(declare-fun m!7678524 () Bool)

(assert (=> b!6989806 m!7678524))

(assert (=> b!6989806 m!7678500))

(assert (=> b!6989806 m!7678524))

(assert (=> b!6989806 m!7678500))

(declare-fun m!7678526 () Bool)

(assert (=> b!6989806 m!7678526))

(assert (=> b!6989645 d!2177254))

(declare-fun d!2177256 () Bool)

(declare-fun c!1296416 () Bool)

(assert (=> d!2177256 (= c!1296416 (isEmpty!39155 (t!380952 s!7408)))))

(declare-fun e!4201235 () Bool)

(assert (=> d!2177256 (= (matchZipper!2760 lt!2486875 (t!380952 s!7408)) e!4201235)))

(declare-fun b!6989807 () Bool)

(assert (=> b!6989807 (= e!4201235 (nullableZipper!2436 lt!2486875))))

(declare-fun b!6989808 () Bool)

(assert (=> b!6989808 (= e!4201235 (matchZipper!2760 (derivationStepZipper!2700 lt!2486875 (head!14111 (t!380952 s!7408))) (tail!13231 (t!380952 s!7408))))))

(assert (= (and d!2177256 c!1296416) b!6989807))

(assert (= (and d!2177256 (not c!1296416)) b!6989808))

(assert (=> d!2177256 m!7678492))

(declare-fun m!7678528 () Bool)

(assert (=> b!6989807 m!7678528))

(assert (=> b!6989808 m!7678496))

(assert (=> b!6989808 m!7678496))

(declare-fun m!7678530 () Bool)

(assert (=> b!6989808 m!7678530))

(assert (=> b!6989808 m!7678500))

(assert (=> b!6989808 m!7678530))

(assert (=> b!6989808 m!7678500))

(declare-fun m!7678532 () Bool)

(assert (=> b!6989808 m!7678532))

(assert (=> b!6989645 d!2177256))

(declare-fun d!2177258 () Bool)

(declare-fun c!1296417 () Bool)

(assert (=> d!2177258 (= c!1296417 (isEmpty!39155 (t!380952 s!7408)))))

(declare-fun e!4201236 () Bool)

(assert (=> d!2177258 (= (matchZipper!2760 lt!2486866 (t!380952 s!7408)) e!4201236)))

(declare-fun b!6989809 () Bool)

(assert (=> b!6989809 (= e!4201236 (nullableZipper!2436 lt!2486866))))

(declare-fun b!6989810 () Bool)

(assert (=> b!6989810 (= e!4201236 (matchZipper!2760 (derivationStepZipper!2700 lt!2486866 (head!14111 (t!380952 s!7408))) (tail!13231 (t!380952 s!7408))))))

(assert (= (and d!2177258 c!1296417) b!6989809))

(assert (= (and d!2177258 (not c!1296417)) b!6989810))

(assert (=> d!2177258 m!7678492))

(declare-fun m!7678534 () Bool)

(assert (=> b!6989809 m!7678534))

(assert (=> b!6989810 m!7678496))

(assert (=> b!6989810 m!7678496))

(declare-fun m!7678536 () Bool)

(assert (=> b!6989810 m!7678536))

(assert (=> b!6989810 m!7678500))

(assert (=> b!6989810 m!7678536))

(assert (=> b!6989810 m!7678500))

(declare-fun m!7678538 () Bool)

(assert (=> b!6989810 m!7678538))

(assert (=> b!6989645 d!2177258))

(assert (=> b!6989654 d!2177230))

(declare-fun d!2177260 () Bool)

(assert (=> d!2177260 (= (flatMap!2206 lt!2486874 lambda!401620) (choose!52255 lt!2486874 lambda!401620))))

(declare-fun bs!1862176 () Bool)

(assert (= bs!1862176 d!2177260))

(declare-fun m!7678540 () Bool)

(assert (=> bs!1862176 m!7678540))

(assert (=> b!6989654 d!2177260))

(declare-fun d!2177262 () Bool)

(assert (=> d!2177262 (= (flatMap!2206 lt!2486874 lambda!401620) (dynLambda!26899 lambda!401620 lt!2486872))))

(declare-fun lt!2487017 () Unit!161095)

(assert (=> d!2177262 (= lt!2487017 (choose!52254 lt!2486874 lt!2486872 lambda!401620))))

(assert (=> d!2177262 (= lt!2486874 (set.insert lt!2486872 (as set.empty (Set Context!12432))))))

(assert (=> d!2177262 (= (lemmaFlatMapOnSingletonSet!1721 lt!2486874 lt!2486872 lambda!401620) lt!2487017)))

(declare-fun b_lambda!262557 () Bool)

(assert (=> (not b_lambda!262557) (not d!2177262)))

(declare-fun bs!1862177 () Bool)

(assert (= bs!1862177 d!2177262))

(assert (=> bs!1862177 m!7678308))

(declare-fun m!7678542 () Bool)

(assert (=> bs!1862177 m!7678542))

(declare-fun m!7678544 () Bool)

(assert (=> bs!1862177 m!7678544))

(assert (=> bs!1862177 m!7678232))

(assert (=> b!6989654 d!2177262))

(declare-fun bs!1862178 () Bool)

(declare-fun d!2177264 () Bool)

(assert (= bs!1862178 (and d!2177264 b!6989654)))

(declare-fun lambda!401687 () Int)

(assert (=> bs!1862178 (= lambda!401687 lambda!401620)))

(declare-fun bs!1862179 () Bool)

(assert (= bs!1862179 (and d!2177264 d!2177212)))

(assert (=> bs!1862179 (= lambda!401687 lambda!401671)))

(assert (=> d!2177264 true))

(assert (=> d!2177264 (= (derivationStepZipper!2700 lt!2486874 (h!73529 s!7408)) (flatMap!2206 lt!2486874 lambda!401687))))

(declare-fun bs!1862180 () Bool)

(assert (= bs!1862180 d!2177264))

(declare-fun m!7678546 () Bool)

(assert (=> bs!1862180 m!7678546))

(assert (=> b!6989654 d!2177264))

(declare-fun b!6989811 () Bool)

(declare-fun e!4201237 () (Set Context!12432))

(declare-fun e!4201239 () (Set Context!12432))

(assert (=> b!6989811 (= e!4201237 e!4201239)))

(declare-fun c!1296418 () Bool)

(assert (=> b!6989811 (= c!1296418 (is-Cons!67082 (exprs!6716 lt!2486872)))))

(declare-fun d!2177266 () Bool)

(declare-fun c!1296419 () Bool)

(declare-fun e!4201238 () Bool)

(assert (=> d!2177266 (= c!1296419 e!4201238)))

(declare-fun res!2850588 () Bool)

(assert (=> d!2177266 (=> (not res!2850588) (not e!4201238))))

(assert (=> d!2177266 (= res!2850588 (is-Cons!67082 (exprs!6716 lt!2486872)))))

(assert (=> d!2177266 (= (derivationStepZipperUp!1870 lt!2486872 (h!73529 s!7408)) e!4201237)))

(declare-fun b!6989812 () Bool)

(assert (=> b!6989812 (= e!4201238 (nullable!6980 (h!73530 (exprs!6716 lt!2486872))))))

(declare-fun bm!634530 () Bool)

(declare-fun call!634535 () (Set Context!12432))

(assert (=> bm!634530 (= call!634535 (derivationStepZipperDown!1938 (h!73530 (exprs!6716 lt!2486872)) (Context!12433 (t!380953 (exprs!6716 lt!2486872))) (h!73529 s!7408)))))

(declare-fun b!6989813 () Bool)

(assert (=> b!6989813 (= e!4201239 (as set.empty (Set Context!12432)))))

(declare-fun b!6989814 () Bool)

(assert (=> b!6989814 (= e!4201239 call!634535)))

(declare-fun b!6989815 () Bool)

(assert (=> b!6989815 (= e!4201237 (set.union call!634535 (derivationStepZipperUp!1870 (Context!12433 (t!380953 (exprs!6716 lt!2486872))) (h!73529 s!7408))))))

(assert (= (and d!2177266 res!2850588) b!6989812))

(assert (= (and d!2177266 c!1296419) b!6989815))

(assert (= (and d!2177266 (not c!1296419)) b!6989811))

(assert (= (and b!6989811 c!1296418) b!6989814))

(assert (= (and b!6989811 (not c!1296418)) b!6989813))

(assert (= (or b!6989815 b!6989814) bm!634530))

(declare-fun m!7678548 () Bool)

(assert (=> b!6989812 m!7678548))

(declare-fun m!7678550 () Bool)

(assert (=> bm!634530 m!7678550))

(declare-fun m!7678552 () Bool)

(assert (=> b!6989815 m!7678552))

(assert (=> b!6989654 d!2177266))

(assert (=> b!6989644 d!2177208))

(declare-fun b!6989817 () Bool)

(declare-fun e!4201240 () List!67206)

(assert (=> b!6989817 (= e!4201240 (Cons!67082 (h!73530 lt!2486858) (++!15165 (t!380953 lt!2486858) (exprs!6716 ct2!306))))))

(declare-fun d!2177268 () Bool)

(declare-fun e!4201241 () Bool)

(assert (=> d!2177268 e!4201241))

(declare-fun res!2850590 () Bool)

(assert (=> d!2177268 (=> (not res!2850590) (not e!4201241))))

(declare-fun lt!2487018 () List!67206)

(assert (=> d!2177268 (= res!2850590 (= (content!13259 lt!2487018) (set.union (content!13259 lt!2486858) (content!13259 (exprs!6716 ct2!306)))))))

(assert (=> d!2177268 (= lt!2487018 e!4201240)))

(declare-fun c!1296420 () Bool)

(assert (=> d!2177268 (= c!1296420 (is-Nil!67082 lt!2486858))))

(assert (=> d!2177268 (= (++!15165 lt!2486858 (exprs!6716 ct2!306)) lt!2487018)))

(declare-fun b!6989818 () Bool)

(declare-fun res!2850589 () Bool)

(assert (=> b!6989818 (=> (not res!2850589) (not e!4201241))))

(assert (=> b!6989818 (= res!2850589 (= (size!40904 lt!2487018) (+ (size!40904 lt!2486858) (size!40904 (exprs!6716 ct2!306)))))))

(declare-fun b!6989816 () Bool)

(assert (=> b!6989816 (= e!4201240 (exprs!6716 ct2!306))))

(declare-fun b!6989819 () Bool)

(assert (=> b!6989819 (= e!4201241 (or (not (= (exprs!6716 ct2!306) Nil!67082)) (= lt!2487018 lt!2486858)))))

(assert (= (and d!2177268 c!1296420) b!6989816))

(assert (= (and d!2177268 (not c!1296420)) b!6989817))

(assert (= (and d!2177268 res!2850590) b!6989818))

(assert (= (and b!6989818 res!2850589) b!6989819))

(declare-fun m!7678554 () Bool)

(assert (=> b!6989817 m!7678554))

(declare-fun m!7678556 () Bool)

(assert (=> d!2177268 m!7678556))

(declare-fun m!7678558 () Bool)

(assert (=> d!2177268 m!7678558))

(assert (=> d!2177268 m!7678456))

(declare-fun m!7678560 () Bool)

(assert (=> b!6989818 m!7678560))

(declare-fun m!7678562 () Bool)

(assert (=> b!6989818 m!7678562))

(assert (=> b!6989818 m!7678462))

(assert (=> b!6989644 d!2177268))

(assert (=> b!6989644 d!2177214))

(declare-fun b!6989842 () Bool)

(declare-fun e!4201257 () (Set Context!12432))

(declare-fun call!634548 () (Set Context!12432))

(declare-fun call!634551 () (Set Context!12432))

(assert (=> b!6989842 (= e!4201257 (set.union call!634548 call!634551))))

(declare-fun b!6989843 () Bool)

(declare-fun e!4201259 () (Set Context!12432))

(assert (=> b!6989843 (= e!4201259 (set.insert lt!2486876 (as set.empty (Set Context!12432))))))

(declare-fun c!1296431 () Bool)

(declare-fun c!1296435 () Bool)

(declare-fun call!634549 () List!67206)

(declare-fun bm!634543 () Bool)

(declare-fun $colon$colon!2484 (List!67206 Regex!17220) List!67206)

(assert (=> bm!634543 (= call!634549 ($colon$colon!2484 (exprs!6716 lt!2486876) (ite (or c!1296431 c!1296435) (regTwo!34952 (h!73530 (exprs!6716 lt!2486867))) (h!73530 (exprs!6716 lt!2486867)))))))

(declare-fun b!6989844 () Bool)

(declare-fun c!1296432 () Bool)

(assert (=> b!6989844 (= c!1296432 (is-Star!17220 (h!73530 (exprs!6716 lt!2486867))))))

(declare-fun e!4201256 () (Set Context!12432))

(declare-fun e!4201258 () (Set Context!12432))

(assert (=> b!6989844 (= e!4201256 e!4201258)))

(declare-fun c!1296434 () Bool)

(declare-fun bm!634544 () Bool)

(assert (=> bm!634544 (= call!634548 (derivationStepZipperDown!1938 (ite c!1296434 (regOne!34953 (h!73530 (exprs!6716 lt!2486867))) (regOne!34952 (h!73530 (exprs!6716 lt!2486867)))) (ite c!1296434 lt!2486876 (Context!12433 call!634549)) (h!73529 s!7408)))))

(declare-fun b!6989845 () Bool)

(assert (=> b!6989845 (= e!4201257 e!4201256)))

(assert (=> b!6989845 (= c!1296435 (is-Concat!26065 (h!73530 (exprs!6716 lt!2486867))))))

(declare-fun bm!634545 () Bool)

(declare-fun call!634550 () (Set Context!12432))

(declare-fun call!634553 () List!67206)

(assert (=> bm!634545 (= call!634550 (derivationStepZipperDown!1938 (ite c!1296434 (regTwo!34953 (h!73530 (exprs!6716 lt!2486867))) (ite c!1296431 (regTwo!34952 (h!73530 (exprs!6716 lt!2486867))) (ite c!1296435 (regOne!34952 (h!73530 (exprs!6716 lt!2486867))) (reg!17549 (h!73530 (exprs!6716 lt!2486867)))))) (ite (or c!1296434 c!1296431) lt!2486876 (Context!12433 call!634553)) (h!73529 s!7408)))))

(declare-fun b!6989846 () Bool)

(assert (=> b!6989846 (= e!4201258 (as set.empty (Set Context!12432)))))

(declare-fun bm!634546 () Bool)

(assert (=> bm!634546 (= call!634551 call!634550)))

(declare-fun b!6989847 () Bool)

(declare-fun e!4201254 () (Set Context!12432))

(assert (=> b!6989847 (= e!4201259 e!4201254)))

(assert (=> b!6989847 (= c!1296434 (is-Union!17220 (h!73530 (exprs!6716 lt!2486867))))))

(declare-fun b!6989848 () Bool)

(assert (=> b!6989848 (= e!4201254 (set.union call!634548 call!634550))))

(declare-fun bm!634547 () Bool)

(assert (=> bm!634547 (= call!634553 call!634549)))

(declare-fun bm!634548 () Bool)

(declare-fun call!634552 () (Set Context!12432))

(assert (=> bm!634548 (= call!634552 call!634551)))

(declare-fun b!6989849 () Bool)

(assert (=> b!6989849 (= e!4201256 call!634552)))

(declare-fun b!6989850 () Bool)

(declare-fun e!4201255 () Bool)

(assert (=> b!6989850 (= e!4201255 (nullable!6980 (regOne!34952 (h!73530 (exprs!6716 lt!2486867)))))))

(declare-fun b!6989851 () Bool)

(assert (=> b!6989851 (= c!1296431 e!4201255)))

(declare-fun res!2850593 () Bool)

(assert (=> b!6989851 (=> (not res!2850593) (not e!4201255))))

(assert (=> b!6989851 (= res!2850593 (is-Concat!26065 (h!73530 (exprs!6716 lt!2486867))))))

(assert (=> b!6989851 (= e!4201254 e!4201257)))

(declare-fun b!6989852 () Bool)

(assert (=> b!6989852 (= e!4201258 call!634552)))

(declare-fun d!2177270 () Bool)

(declare-fun c!1296433 () Bool)

(assert (=> d!2177270 (= c!1296433 (and (is-ElementMatch!17220 (h!73530 (exprs!6716 lt!2486867))) (= (c!1296383 (h!73530 (exprs!6716 lt!2486867))) (h!73529 s!7408))))))

(assert (=> d!2177270 (= (derivationStepZipperDown!1938 (h!73530 (exprs!6716 lt!2486867)) lt!2486876 (h!73529 s!7408)) e!4201259)))

(assert (= (and d!2177270 c!1296433) b!6989843))

(assert (= (and d!2177270 (not c!1296433)) b!6989847))

(assert (= (and b!6989847 c!1296434) b!6989848))

(assert (= (and b!6989847 (not c!1296434)) b!6989851))

(assert (= (and b!6989851 res!2850593) b!6989850))

(assert (= (and b!6989851 c!1296431) b!6989842))

(assert (= (and b!6989851 (not c!1296431)) b!6989845))

(assert (= (and b!6989845 c!1296435) b!6989849))

(assert (= (and b!6989845 (not c!1296435)) b!6989844))

(assert (= (and b!6989844 c!1296432) b!6989852))

(assert (= (and b!6989844 (not c!1296432)) b!6989846))

(assert (= (or b!6989849 b!6989852) bm!634547))

(assert (= (or b!6989849 b!6989852) bm!634548))

(assert (= (or b!6989842 bm!634548) bm!634546))

(assert (= (or b!6989842 bm!634547) bm!634543))

(assert (= (or b!6989848 b!6989842) bm!634544))

(assert (= (or b!6989848 bm!634546) bm!634545))

(assert (=> b!6989843 m!7678248))

(declare-fun m!7678564 () Bool)

(assert (=> bm!634544 m!7678564))

(declare-fun m!7678566 () Bool)

(assert (=> bm!634543 m!7678566))

(declare-fun m!7678568 () Bool)

(assert (=> b!6989850 m!7678568))

(declare-fun m!7678570 () Bool)

(assert (=> bm!634545 m!7678570))

(assert (=> b!6989644 d!2177270))

(declare-fun bs!1862181 () Bool)

(declare-fun d!2177272 () Bool)

(assert (= bs!1862181 (and d!2177272 b!6989647)))

(declare-fun lambda!401688 () Int)

(assert (=> bs!1862181 (= lambda!401688 lambda!401619)))

(declare-fun bs!1862182 () Bool)

(assert (= bs!1862182 (and d!2177272 d!2177238)))

(assert (=> bs!1862182 (= lambda!401688 lambda!401685)))

(declare-fun bs!1862183 () Bool)

(assert (= bs!1862183 (and d!2177272 d!2177240)))

(assert (=> bs!1862183 (= lambda!401688 lambda!401686)))

(assert (=> d!2177272 (= (inv!85910 setElem!47814) (forall!16136 (exprs!6716 setElem!47814) lambda!401688))))

(declare-fun bs!1862184 () Bool)

(assert (= bs!1862184 d!2177272))

(declare-fun m!7678572 () Bool)

(assert (=> bs!1862184 m!7678572))

(assert (=> setNonEmpty!47814 d!2177272))

(assert (=> b!6989655 d!2177242))

(assert (=> b!6989655 d!2177208))

(declare-fun b!6989857 () Bool)

(declare-fun e!4201262 () Bool)

(declare-fun tp!1929735 () Bool)

(assert (=> b!6989857 (= e!4201262 (and tp_is_empty!43665 tp!1929735))))

(assert (=> b!6989642 (= tp!1929716 e!4201262)))

(assert (= (and b!6989642 (is-Cons!67081 (t!380952 s!7408))) b!6989857))

(declare-fun b!6989862 () Bool)

(declare-fun e!4201265 () Bool)

(declare-fun tp!1929740 () Bool)

(declare-fun tp!1929741 () Bool)

(assert (=> b!6989862 (= e!4201265 (and tp!1929740 tp!1929741))))

(assert (=> b!6989646 (= tp!1929713 e!4201265)))

(assert (= (and b!6989646 (is-Cons!67082 (exprs!6716 c!403))) b!6989862))

(declare-fun b!6989863 () Bool)

(declare-fun e!4201266 () Bool)

(declare-fun tp!1929742 () Bool)

(declare-fun tp!1929743 () Bool)

(assert (=> b!6989863 (= e!4201266 (and tp!1929742 tp!1929743))))

(assert (=> b!6989653 (= tp!1929717 e!4201266)))

(assert (= (and b!6989653 (is-Cons!67082 (exprs!6716 setElem!47814))) b!6989863))

(declare-fun condSetEmpty!47820 () Bool)

(assert (=> setNonEmpty!47814 (= condSetEmpty!47820 (= setRest!47814 (as set.empty (Set Context!12432))))))

(declare-fun setRes!47820 () Bool)

(assert (=> setNonEmpty!47814 (= tp!1929715 setRes!47820)))

(declare-fun setIsEmpty!47820 () Bool)

(assert (=> setIsEmpty!47820 setRes!47820))

(declare-fun tp!1929749 () Bool)

(declare-fun setElem!47820 () Context!12432)

(declare-fun e!4201269 () Bool)

(declare-fun setNonEmpty!47820 () Bool)

(assert (=> setNonEmpty!47820 (= setRes!47820 (and tp!1929749 (inv!85910 setElem!47820) e!4201269))))

(declare-fun setRest!47820 () (Set Context!12432))

(assert (=> setNonEmpty!47820 (= setRest!47814 (set.union (set.insert setElem!47820 (as set.empty (Set Context!12432))) setRest!47820))))

(declare-fun b!6989868 () Bool)

(declare-fun tp!1929748 () Bool)

(assert (=> b!6989868 (= e!4201269 tp!1929748)))

(assert (= (and setNonEmpty!47814 condSetEmpty!47820) setIsEmpty!47820))

(assert (= (and setNonEmpty!47814 (not condSetEmpty!47820)) setNonEmpty!47820))

(assert (= setNonEmpty!47820 b!6989868))

(declare-fun m!7678574 () Bool)

(assert (=> setNonEmpty!47820 m!7678574))

(declare-fun b!6989869 () Bool)

(declare-fun e!4201270 () Bool)

(declare-fun tp!1929750 () Bool)

(declare-fun tp!1929751 () Bool)

(assert (=> b!6989869 (= e!4201270 (and tp!1929750 tp!1929751))))

(assert (=> b!6989650 (= tp!1929714 e!4201270)))

(assert (= (and b!6989650 (is-Cons!67082 (exprs!6716 ct2!306))) b!6989869))

(declare-fun b_lambda!262559 () Bool)

(assert (= b_lambda!262557 (or b!6989654 b_lambda!262559)))

(declare-fun bs!1862185 () Bool)

(declare-fun d!2177274 () Bool)

(assert (= bs!1862185 (and d!2177274 b!6989654)))

(assert (=> bs!1862185 (= (dynLambda!26899 lambda!401620 lt!2486872) (derivationStepZipperUp!1870 lt!2486872 (h!73529 s!7408)))))

(assert (=> bs!1862185 m!7678310))

(assert (=> d!2177262 d!2177274))

(declare-fun b_lambda!262561 () Bool)

(assert (= b_lambda!262549 (or b!6989658 b_lambda!262561)))

(declare-fun bs!1862186 () Bool)

(declare-fun d!2177276 () Bool)

(assert (= bs!1862186 (and d!2177276 b!6989658)))

(assert (=> bs!1862186 (= (dynLambda!26901 lambda!401617 lt!2486998) (matchZipper!2760 (set.insert lt!2486998 (as set.empty (Set Context!12432))) s!7408))))

(declare-fun m!7678576 () Bool)

(assert (=> bs!1862186 m!7678576))

(assert (=> bs!1862186 m!7678576))

(declare-fun m!7678578 () Bool)

(assert (=> bs!1862186 m!7678578))

(assert (=> d!2177222 d!2177276))

(declare-fun b_lambda!262563 () Bool)

(assert (= b_lambda!262553 (or b!6989647 b_lambda!262563)))

(declare-fun bs!1862187 () Bool)

(declare-fun d!2177278 () Bool)

(assert (= bs!1862187 (and d!2177278 b!6989647)))

(declare-fun validRegex!8861 (Regex!17220) Bool)

(assert (=> bs!1862187 (= (dynLambda!26903 lambda!401619 (h!73530 (exprs!6716 c!403))) (validRegex!8861 (h!73530 (exprs!6716 c!403))))))

(declare-fun m!7678580 () Bool)

(assert (=> bs!1862187 m!7678580))

(assert (=> b!6989796 d!2177278))

(declare-fun b_lambda!262565 () Bool)

(assert (= b_lambda!262547 (or b!6989654 b_lambda!262565)))

(declare-fun bs!1862188 () Bool)

(declare-fun d!2177280 () Bool)

(assert (= bs!1862188 (and d!2177280 b!6989654)))

(assert (=> bs!1862188 (= (dynLambda!26899 lambda!401620 lt!2486876) (derivationStepZipperUp!1870 lt!2486876 (h!73529 s!7408)))))

(assert (=> bs!1862188 m!7678252))

(assert (=> d!2177210 d!2177280))

(declare-fun b_lambda!262567 () Bool)

(assert (= b_lambda!262555 (or b!6989647 b_lambda!262567)))

(declare-fun bs!1862189 () Bool)

(declare-fun d!2177282 () Bool)

(assert (= bs!1862189 (and d!2177282 b!6989647)))

(assert (=> bs!1862189 (= (dynLambda!26903 lambda!401619 (h!73530 (exprs!6716 ct2!306))) (validRegex!8861 (h!73530 (exprs!6716 ct2!306))))))

(declare-fun m!7678582 () Bool)

(assert (=> bs!1862189 m!7678582))

(assert (=> b!6989798 d!2177282))

(declare-fun b_lambda!262569 () Bool)

(assert (= b_lambda!262551 (or b!6989647 b_lambda!262569)))

(declare-fun bs!1862190 () Bool)

(declare-fun d!2177284 () Bool)

(assert (= bs!1862190 (and d!2177284 b!6989647)))

(declare-fun lt!2487019 () Unit!161095)

(assert (=> bs!1862190 (= lt!2487019 (lemmaConcatPreservesForall!556 (exprs!6716 lt!2487011) (exprs!6716 ct2!306) lambda!401619))))

(assert (=> bs!1862190 (= (dynLambda!26902 lambda!401618 lt!2487011) (Context!12433 (++!15165 (exprs!6716 lt!2487011) (exprs!6716 ct2!306))))))

(declare-fun m!7678584 () Bool)

(assert (=> bs!1862190 m!7678584))

(declare-fun m!7678586 () Bool)

(assert (=> bs!1862190 m!7678586))

(assert (=> d!2177232 d!2177284))

(push 1)

(assert (not b!6989781))

(assert (not d!2177226))

(assert (not d!2177256))

(assert (not d!2177232))

(assert (not d!2177248))

(assert (not b_lambda!262565))

(assert (not b!6989799))

(assert (not bm!634530))

(assert (not b!6989857))

(assert (not d!2177210))

(assert (not d!2177204))

(assert (not b_lambda!262561))

(assert (not b!6989812))

(assert (not d!2177218))

(assert (not b!6989815))

(assert (not b!6989804))

(assert (not bs!1862189))

(assert (not bs!1862187))

(assert (not b!6989850))

(assert (not d!2177212))

(assert (not bm!634543))

(assert (not b!6989790))

(assert (not b!6989800))

(assert (not setNonEmpty!47820))

(assert (not b!6989809))

(assert (not d!2177224))

(assert (not d!2177262))

(assert (not d!2177208))

(assert (not d!2177258))

(assert (not b_lambda!262559))

(assert (not d!2177260))

(assert (not b_lambda!262563))

(assert (not b!6989817))

(assert (not b_lambda!262569))

(assert (not b_lambda!262567))

(assert (not b!6989862))

(assert (not d!2177216))

(assert tp_is_empty!43665)

(assert (not d!2177236))

(assert (not d!2177252))

(assert (not d!2177220))

(assert (not b!6989771))

(assert (not d!2177264))

(assert (not d!2177254))

(assert (not bs!1862186))

(assert (not b!6989808))

(assert (not d!2177222))

(assert (not d!2177240))

(assert (not d!2177230))

(assert (not bs!1862185))

(assert (not b!6989789))

(assert (not d!2177242))

(assert (not bs!1862190))

(assert (not b!6989801))

(assert (not b!6989868))

(assert (not b!6989791))

(assert (not b!6989869))

(assert (not b!6989810))

(assert (not d!2177238))

(assert (not bm!634545))

(assert (not b!6989818))

(assert (not b!6989863))

(assert (not b!6989757))

(assert (not b!6989806))

(assert (not b!6989807))

(assert (not bm!634529))

(assert (not b!6989754))

(assert (not bm!634544))

(assert (not d!2177272))

(assert (not d!2177234))

(assert (not b!6989782))

(assert (not b!6989788))

(assert (not d!2177228))

(assert (not bs!1862188))

(assert (not b!6989765))

(assert (not b!6989805))

(assert (not b!6989797))

(assert (not b!6989764))

(assert (not d!2177268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


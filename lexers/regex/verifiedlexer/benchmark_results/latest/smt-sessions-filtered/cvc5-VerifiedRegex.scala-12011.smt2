; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673576 () Bool)

(assert start!673576)

(declare-fun b!7000899 () Bool)

(assert (=> b!7000899 true))

(declare-fun b!7000884 () Bool)

(assert (=> b!7000884 true))

(declare-fun b!7000911 () Bool)

(assert (=> b!7000911 true))

(declare-fun b!7000882 () Bool)

(declare-fun e!4208067 () Bool)

(declare-fun e!4208080 () Bool)

(assert (=> b!7000882 (= e!4208067 e!4208080)))

(declare-fun res!2855772 () Bool)

(assert (=> b!7000882 (=> res!2855772 e!4208080)))

(declare-datatypes ((C!34806 0))(
  ( (C!34807 (val!27105 Int)) )
))
(declare-datatypes ((Regex!17268 0))(
  ( (ElementMatch!17268 (c!1299610 C!34806)) (Concat!26113 (regOne!35048 Regex!17268) (regTwo!35048 Regex!17268)) (EmptyExpr!17268) (Star!17268 (reg!17597 Regex!17268)) (EmptyLang!17268) (Union!17268 (regOne!35049 Regex!17268) (regTwo!35049 Regex!17268)) )
))
(declare-datatypes ((List!67349 0))(
  ( (Nil!67225) (Cons!67225 (h!73673 Regex!17268) (t!381102 List!67349)) )
))
(declare-datatypes ((Context!12528 0))(
  ( (Context!12529 (exprs!6764 List!67349)) )
))
(declare-fun lt!2495660 () (Set Context!12528))

(declare-datatypes ((List!67350 0))(
  ( (Nil!67226) (Cons!67226 (h!73674 C!34806) (t!381103 List!67350)) )
))
(declare-fun s!7408 () List!67350)

(declare-fun lt!2495644 () (Set Context!12528))

(declare-fun derivationStepZipper!2748 ((Set Context!12528) C!34806) (Set Context!12528))

(assert (=> b!7000882 (= res!2855772 (not (= (derivationStepZipper!2748 lt!2495644 (h!73674 s!7408)) lt!2495660)))))

(declare-fun lt!2495649 () Context!12528)

(declare-fun derivationStepZipperUp!1918 (Context!12528 C!34806) (Set Context!12528))

(assert (=> b!7000882 (= lt!2495660 (derivationStepZipperUp!1918 lt!2495649 (h!73674 s!7408)))))

(declare-fun lambda!405224 () Int)

(declare-fun flatMap!2254 ((Set Context!12528) Int) (Set Context!12528))

(assert (=> b!7000882 (= (flatMap!2254 lt!2495644 lambda!405224) (derivationStepZipperUp!1918 lt!2495649 (h!73674 s!7408)))))

(declare-datatypes ((Unit!161196 0))(
  ( (Unit!161197) )
))
(declare-fun lt!2495657 () Unit!161196)

(declare-fun lemmaFlatMapOnSingletonSet!1769 ((Set Context!12528) Context!12528 Int) Unit!161196)

(assert (=> b!7000882 (= lt!2495657 (lemmaFlatMapOnSingletonSet!1769 lt!2495644 lt!2495649 lambda!405224))))

(assert (=> b!7000882 (= lt!2495644 (set.insert lt!2495649 (as set.empty (Set Context!12528))))))

(declare-fun e!4208068 () Bool)

(declare-fun e!4208070 () Bool)

(assert (=> b!7000884 (= e!4208068 e!4208070)))

(declare-fun res!2855785 () Bool)

(assert (=> b!7000884 (=> res!2855785 e!4208070)))

(declare-fun lt!2495651 () Context!12528)

(declare-fun lt!2495636 () Context!12528)

(declare-fun z1!570 () (Set Context!12528))

(assert (=> b!7000884 (= res!2855785 (or (not (= lt!2495651 lt!2495636)) (not (set.member lt!2495649 z1!570))))))

(declare-fun ct2!306 () Context!12528)

(declare-fun ++!15237 (List!67349 List!67349) List!67349)

(assert (=> b!7000884 (= lt!2495651 (Context!12529 (++!15237 (exprs!6764 lt!2495649) (exprs!6764 ct2!306))))))

(declare-fun lt!2495647 () Unit!161196)

(declare-fun lambda!405223 () Int)

(declare-fun lemmaConcatPreservesForall!604 (List!67349 List!67349 Int) Unit!161196)

(assert (=> b!7000884 (= lt!2495647 (lemmaConcatPreservesForall!604 (exprs!6764 lt!2495649) (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lambda!405222 () Int)

(declare-fun mapPost2!123 ((Set Context!12528) Int Context!12528) Context!12528)

(assert (=> b!7000884 (= lt!2495649 (mapPost2!123 z1!570 lambda!405222 lt!2495636))))

(declare-fun b!7000885 () Bool)

(declare-fun e!4208074 () Bool)

(assert (=> b!7000885 (= e!4208070 e!4208074)))

(declare-fun res!2855794 () Bool)

(assert (=> b!7000885 (=> res!2855794 e!4208074)))

(declare-fun lt!2495671 () (Set Context!12528))

(declare-fun lt!2495655 () (Set Context!12528))

(assert (=> b!7000885 (= res!2855794 (not (= lt!2495671 lt!2495655)))))

(assert (=> b!7000885 (= lt!2495671 (set.insert lt!2495651 (as set.empty (Set Context!12528))))))

(declare-fun lt!2495675 () Unit!161196)

(assert (=> b!7000885 (= lt!2495675 (lemmaConcatPreservesForall!604 (exprs!6764 lt!2495649) (exprs!6764 ct2!306) lambda!405223))))

(declare-fun b!7000886 () Bool)

(declare-fun e!4208069 () Bool)

(declare-fun tp!1931123 () Bool)

(assert (=> b!7000886 (= e!4208069 tp!1931123)))

(declare-fun b!7000887 () Bool)

(declare-fun res!2855767 () Bool)

(declare-fun e!4208086 () Bool)

(assert (=> b!7000887 (=> (not res!2855767) (not e!4208086))))

(assert (=> b!7000887 (= res!2855767 (is-Cons!67226 s!7408))))

(declare-fun b!7000888 () Bool)

(declare-fun res!2855789 () Bool)

(assert (=> b!7000888 (=> res!2855789 e!4208067)))

(declare-datatypes ((tuple2!67882 0))(
  ( (tuple2!67883 (_1!37244 List!67350) (_2!37244 List!67350)) )
))
(declare-fun lt!2495658 () tuple2!67882)

(declare-fun ++!15238 (List!67350 List!67350) List!67350)

(assert (=> b!7000888 (= res!2855789 (not (= (++!15238 (_1!37244 lt!2495658) (_2!37244 lt!2495658)) s!7408)))))

(declare-fun b!7000889 () Bool)

(declare-fun e!4208088 () Bool)

(declare-fun lt!2495638 () (Set Context!12528))

(declare-fun matchZipper!2808 ((Set Context!12528) List!67350) Bool)

(assert (=> b!7000889 (= e!4208088 (not (matchZipper!2808 lt!2495638 (t!381103 s!7408))))))

(declare-fun lt!2495681 () List!67349)

(declare-fun lt!2495663 () Unit!161196)

(assert (=> b!7000889 (= lt!2495663 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun b!7000890 () Bool)

(declare-fun e!4208079 () Bool)

(declare-fun tp_is_empty!43761 () Bool)

(declare-fun tp!1931122 () Bool)

(assert (=> b!7000890 (= e!4208079 (and tp_is_empty!43761 tp!1931122))))

(declare-fun b!7000891 () Bool)

(declare-fun e!4208077 () Bool)

(declare-fun e!4208084 () Bool)

(assert (=> b!7000891 (= e!4208077 e!4208084)))

(declare-fun res!2855790 () Bool)

(assert (=> b!7000891 (=> res!2855790 e!4208084)))

(assert (=> b!7000891 (= res!2855790 e!4208088)))

(declare-fun res!2855780 () Bool)

(assert (=> b!7000891 (=> (not res!2855780) (not e!4208088))))

(declare-fun lt!2495666 () Bool)

(declare-fun lt!2495629 () Bool)

(assert (=> b!7000891 (= res!2855780 (not (= lt!2495666 lt!2495629)))))

(declare-fun lt!2495628 () (Set Context!12528))

(assert (=> b!7000891 (= lt!2495666 (matchZipper!2808 lt!2495628 (t!381103 s!7408)))))

(declare-fun lt!2495634 () Unit!161196)

(assert (=> b!7000891 (= lt!2495634 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495631 () (Set Context!12528))

(declare-fun e!4208075 () Bool)

(assert (=> b!7000891 (= (matchZipper!2808 lt!2495631 (t!381103 s!7408)) e!4208075)))

(declare-fun res!2855776 () Bool)

(assert (=> b!7000891 (=> res!2855776 e!4208075)))

(assert (=> b!7000891 (= res!2855776 lt!2495629)))

(declare-fun lt!2495682 () (Set Context!12528))

(assert (=> b!7000891 (= lt!2495629 (matchZipper!2808 lt!2495682 (t!381103 s!7408)))))

(declare-fun lt!2495632 () Unit!161196)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1441 ((Set Context!12528) (Set Context!12528) List!67350) Unit!161196)

(assert (=> b!7000891 (= lt!2495632 (lemmaZipperConcatMatchesSameAsBothZippers!1441 lt!2495682 lt!2495638 (t!381103 s!7408)))))

(declare-fun lt!2495677 () Unit!161196)

(assert (=> b!7000891 (= lt!2495677 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495667 () Unit!161196)

(assert (=> b!7000891 (= lt!2495667 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun b!7000892 () Bool)

(declare-fun res!2855782 () Bool)

(assert (=> b!7000892 (=> res!2855782 e!4208084)))

(assert (=> b!7000892 (= res!2855782 (not lt!2495666))))

(declare-fun b!7000893 () Bool)

(declare-fun e!4208081 () Bool)

(declare-fun e!4208083 () Bool)

(assert (=> b!7000893 (= e!4208081 e!4208083)))

(declare-fun res!2855786 () Bool)

(assert (=> b!7000893 (=> res!2855786 e!4208083)))

(declare-fun lt!2495652 () Int)

(declare-fun lt!2495684 () Context!12528)

(declare-fun contextDepthTotal!461 (Context!12528) Int)

(assert (=> b!7000893 (= res!2855786 (<= lt!2495652 (contextDepthTotal!461 lt!2495684)))))

(declare-fun lt!2495676 () Int)

(assert (=> b!7000893 (<= lt!2495652 lt!2495676)))

(declare-datatypes ((List!67351 0))(
  ( (Nil!67227) (Cons!67227 (h!73675 Context!12528) (t!381104 List!67351)) )
))
(declare-fun lt!2495656 () List!67351)

(declare-fun zipperDepthTotal!489 (List!67351) Int)

(assert (=> b!7000893 (= lt!2495676 (zipperDepthTotal!489 lt!2495656))))

(assert (=> b!7000893 (= lt!2495652 (contextDepthTotal!461 lt!2495649))))

(declare-fun lt!2495662 () Unit!161196)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!29 (List!67351 Context!12528) Unit!161196)

(assert (=> b!7000893 (= lt!2495662 (lemmaTotalDepthZipperLargerThanOfAnyContext!29 lt!2495656 lt!2495649))))

(declare-fun toList!10628 ((Set Context!12528)) List!67351)

(assert (=> b!7000893 (= lt!2495656 (toList!10628 z1!570))))

(declare-fun lt!2495664 () Unit!161196)

(assert (=> b!7000893 (= lt!2495664 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495670 () Unit!161196)

(assert (=> b!7000893 (= lt!2495670 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495678 () Unit!161196)

(assert (=> b!7000893 (= lt!2495678 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495641 () (Set Context!12528))

(assert (=> b!7000893 (= (flatMap!2254 lt!2495641 lambda!405224) (derivationStepZipperUp!1918 lt!2495684 (h!73674 s!7408)))))

(declare-fun lt!2495642 () Unit!161196)

(assert (=> b!7000893 (= lt!2495642 (lemmaFlatMapOnSingletonSet!1769 lt!2495641 lt!2495684 lambda!405224))))

(declare-fun map!15549 ((Set Context!12528) Int) (Set Context!12528))

(assert (=> b!7000893 (= (map!15549 lt!2495641 lambda!405222) (set.insert (Context!12529 (++!15237 lt!2495681 (exprs!6764 ct2!306))) (as set.empty (Set Context!12528))))))

(declare-fun lt!2495653 () Unit!161196)

(assert (=> b!7000893 (= lt!2495653 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495633 () Unit!161196)

(declare-fun lemmaMapOnSingletonSet!333 ((Set Context!12528) Context!12528 Int) Unit!161196)

(assert (=> b!7000893 (= lt!2495633 (lemmaMapOnSingletonSet!333 lt!2495641 lt!2495684 lambda!405222))))

(assert (=> b!7000893 (= lt!2495641 (set.insert lt!2495684 (as set.empty (Set Context!12528))))))

(declare-fun tp!1931121 () Bool)

(declare-fun setElem!48102 () Context!12528)

(declare-fun setNonEmpty!48102 () Bool)

(declare-fun setRes!48102 () Bool)

(declare-fun inv!86030 (Context!12528) Bool)

(assert (=> setNonEmpty!48102 (= setRes!48102 (and tp!1931121 (inv!86030 setElem!48102) e!4208069))))

(declare-fun setRest!48102 () (Set Context!12528))

(assert (=> setNonEmpty!48102 (= z1!570 (set.union (set.insert setElem!48102 (as set.empty (Set Context!12528))) setRest!48102))))

(declare-fun b!7000894 () Bool)

(declare-fun e!4208078 () Bool)

(assert (=> b!7000894 (= e!4208078 (not (= (_1!37244 lt!2495658) Nil!67226)))))

(declare-fun b!7000895 () Bool)

(assert (=> b!7000895 (= e!4208075 (matchZipper!2808 lt!2495638 (t!381103 s!7408)))))

(declare-fun b!7000896 () Bool)

(declare-fun e!4208072 () Bool)

(declare-fun e!4208073 () Bool)

(assert (=> b!7000896 (= e!4208072 e!4208073)))

(declare-fun res!2855773 () Bool)

(assert (=> b!7000896 (=> res!2855773 e!4208073)))

(declare-fun lt!2495686 () (Set Context!12528))

(assert (=> b!7000896 (= res!2855773 (not (= (derivationStepZipper!2748 lt!2495686 (h!73674 s!7408)) lt!2495638)))))

(declare-fun lt!2495643 () Unit!161196)

(assert (=> b!7000896 (= lt!2495643 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495646 () Unit!161196)

(assert (=> b!7000896 (= lt!2495646 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495669 () Context!12528)

(assert (=> b!7000896 (= (flatMap!2254 lt!2495686 lambda!405224) (derivationStepZipperUp!1918 lt!2495669 (h!73674 s!7408)))))

(declare-fun lt!2495672 () Unit!161196)

(assert (=> b!7000896 (= lt!2495672 (lemmaFlatMapOnSingletonSet!1769 lt!2495686 lt!2495669 lambda!405224))))

(assert (=> b!7000896 (= lt!2495686 (set.insert lt!2495669 (as set.empty (Set Context!12528))))))

(declare-fun lt!2495661 () Unit!161196)

(assert (=> b!7000896 (= lt!2495661 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495630 () Unit!161196)

(assert (=> b!7000896 (= lt!2495630 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun res!2855768 () Bool)

(assert (=> start!673576 (=> (not res!2855768) (not e!4208086))))

(declare-fun lt!2495674 () (Set Context!12528))

(assert (=> start!673576 (= res!2855768 (matchZipper!2808 lt!2495674 s!7408))))

(declare-fun appendTo!389 ((Set Context!12528) Context!12528) (Set Context!12528))

(assert (=> start!673576 (= lt!2495674 (appendTo!389 z1!570 ct2!306))))

(assert (=> start!673576 e!4208086))

(declare-fun condSetEmpty!48102 () Bool)

(assert (=> start!673576 (= condSetEmpty!48102 (= z1!570 (as set.empty (Set Context!12528))))))

(assert (=> start!673576 setRes!48102))

(declare-fun e!4208085 () Bool)

(assert (=> start!673576 (and (inv!86030 ct2!306) e!4208085)))

(assert (=> start!673576 e!4208079))

(declare-fun b!7000883 () Bool)

(declare-fun e!4208087 () Bool)

(assert (=> b!7000883 (= e!4208080 e!4208087)))

(declare-fun res!2855770 () Bool)

(assert (=> b!7000883 (=> res!2855770 e!4208087)))

(declare-fun lt!2495659 () (Set Context!12528))

(assert (=> b!7000883 (= res!2855770 (not (= lt!2495660 lt!2495659)))))

(declare-fun lt!2495665 () (Set Context!12528))

(declare-fun lt!2495687 () (Set Context!12528))

(assert (=> b!7000883 (= lt!2495659 (set.union lt!2495665 lt!2495687))))

(assert (=> b!7000883 (= lt!2495687 (derivationStepZipperUp!1918 lt!2495684 (h!73674 s!7408)))))

(declare-fun derivationStepZipperDown!1986 (Regex!17268 Context!12528 C!34806) (Set Context!12528))

(assert (=> b!7000883 (= lt!2495665 (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495649)) lt!2495684 (h!73674 s!7408)))))

(declare-fun b!7000897 () Bool)

(assert (=> b!7000897 (= e!4208083 e!4208067)))

(declare-fun res!2855791 () Bool)

(assert (=> b!7000897 (=> res!2855791 e!4208067)))

(assert (=> b!7000897 (= res!2855791 (not (matchZipper!2808 lt!2495641 (_1!37244 lt!2495658))))))

(declare-datatypes ((Option!16773 0))(
  ( (None!16772) (Some!16772 (v!53050 tuple2!67882)) )
))
(declare-fun lt!2495679 () Option!16773)

(declare-fun get!23572 (Option!16773) tuple2!67882)

(assert (=> b!7000897 (= lt!2495658 (get!23572 lt!2495679))))

(declare-fun isDefined!13474 (Option!16773) Bool)

(assert (=> b!7000897 (isDefined!13474 lt!2495679)))

(declare-fun lt!2495635 () (Set Context!12528))

(declare-fun findConcatSeparationZippers!289 ((Set Context!12528) (Set Context!12528) List!67350 List!67350 List!67350) Option!16773)

(assert (=> b!7000897 (= lt!2495679 (findConcatSeparationZippers!289 lt!2495641 lt!2495635 Nil!67226 s!7408 s!7408))))

(assert (=> b!7000897 (= lt!2495635 (set.insert ct2!306 (as set.empty (Set Context!12528))))))

(declare-fun lt!2495685 () Unit!161196)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!289 ((Set Context!12528) Context!12528 List!67350) Unit!161196)

(assert (=> b!7000897 (= lt!2495685 (lemmaConcatZipperMatchesStringThenFindConcatDefined!289 lt!2495641 ct2!306 s!7408))))

(declare-fun b!7000898 () Bool)

(declare-fun res!2855784 () Bool)

(assert (=> b!7000898 (=> res!2855784 e!4208068)))

(assert (=> b!7000898 (= res!2855784 (not (set.member lt!2495636 lt!2495674)))))

(assert (=> b!7000899 (= e!4208086 (not e!4208068))))

(declare-fun res!2855769 () Bool)

(assert (=> b!7000899 (=> res!2855769 e!4208068)))

(assert (=> b!7000899 (= res!2855769 (not (matchZipper!2808 lt!2495655 s!7408)))))

(assert (=> b!7000899 (= lt!2495655 (set.insert lt!2495636 (as set.empty (Set Context!12528))))))

(declare-fun lambda!405221 () Int)

(declare-fun getWitness!1188 ((Set Context!12528) Int) Context!12528)

(assert (=> b!7000899 (= lt!2495636 (getWitness!1188 lt!2495674 lambda!405221))))

(declare-fun lt!2495683 () List!67351)

(declare-fun exists!3084 (List!67351 Int) Bool)

(assert (=> b!7000899 (exists!3084 lt!2495683 lambda!405221)))

(declare-fun lt!2495645 () Unit!161196)

(declare-fun lemmaZipperMatchesExistsMatchingContext!237 (List!67351 List!67350) Unit!161196)

(assert (=> b!7000899 (= lt!2495645 (lemmaZipperMatchesExistsMatchingContext!237 lt!2495683 s!7408))))

(assert (=> b!7000899 (= lt!2495683 (toList!10628 lt!2495674))))

(declare-fun b!7000900 () Bool)

(declare-fun e!4208071 () Bool)

(assert (=> b!7000900 (= e!4208071 e!4208077)))

(declare-fun res!2855777 () Bool)

(assert (=> b!7000900 (=> res!2855777 e!4208077)))

(assert (=> b!7000900 (= res!2855777 (not (= lt!2495628 lt!2495631)))))

(assert (=> b!7000900 (= lt!2495631 (set.union lt!2495682 lt!2495638))))

(assert (=> b!7000900 (= lt!2495638 (derivationStepZipperUp!1918 lt!2495669 (h!73674 s!7408)))))

(assert (=> b!7000900 (= lt!2495682 (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495649)) lt!2495669 (h!73674 s!7408)))))

(assert (=> b!7000900 (= lt!2495669 (Context!12529 (++!15237 lt!2495681 (exprs!6764 ct2!306))))))

(declare-fun lt!2495673 () Unit!161196)

(assert (=> b!7000900 (= lt!2495673 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun lt!2495637 () Unit!161196)

(assert (=> b!7000900 (= lt!2495637 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun b!7000901 () Bool)

(declare-fun e!4208082 () Bool)

(declare-fun lt!2495680 () List!67350)

(assert (=> b!7000901 (= e!4208082 (matchZipper!2808 lt!2495687 lt!2495680))))

(declare-fun b!7000902 () Bool)

(declare-fun res!2855778 () Bool)

(assert (=> b!7000902 (=> res!2855778 e!4208083)))

(assert (=> b!7000902 (= res!2855778 (>= (zipperDepthTotal!489 (Cons!67227 lt!2495684 Nil!67227)) lt!2495676))))

(declare-fun b!7000903 () Bool)

(assert (=> b!7000903 (= e!4208084 e!4208072)))

(declare-fun res!2855781 () Bool)

(assert (=> b!7000903 (=> res!2855781 e!4208072)))

(assert (=> b!7000903 (= res!2855781 (not (matchZipper!2808 lt!2495638 (t!381103 s!7408))))))

(declare-fun lt!2495648 () Unit!161196)

(assert (=> b!7000903 (= lt!2495648 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(declare-fun b!7000904 () Bool)

(assert (=> b!7000904 (= e!4208087 e!4208078)))

(declare-fun res!2855779 () Bool)

(assert (=> b!7000904 (=> res!2855779 e!4208078)))

(declare-fun lt!2495650 () Bool)

(assert (=> b!7000904 (= res!2855779 (= (matchZipper!2808 lt!2495644 (_1!37244 lt!2495658)) lt!2495650))))

(assert (=> b!7000904 (= (matchZipper!2808 lt!2495659 lt!2495680) e!4208082)))

(declare-fun res!2855771 () Bool)

(assert (=> b!7000904 (=> res!2855771 e!4208082)))

(assert (=> b!7000904 (= res!2855771 lt!2495650)))

(assert (=> b!7000904 (= lt!2495650 (matchZipper!2808 lt!2495665 lt!2495680))))

(declare-fun lt!2495640 () Unit!161196)

(assert (=> b!7000904 (= lt!2495640 (lemmaZipperConcatMatchesSameAsBothZippers!1441 lt!2495665 lt!2495687 lt!2495680))))

(declare-fun tail!13304 (List!67350) List!67350)

(assert (=> b!7000904 (= lt!2495680 (tail!13304 (_1!37244 lt!2495658)))))

(declare-fun setIsEmpty!48102 () Bool)

(assert (=> setIsEmpty!48102 setRes!48102))

(declare-fun b!7000905 () Bool)

(declare-fun e!4208076 () Bool)

(assert (=> b!7000905 (= e!4208076 e!4208071)))

(declare-fun res!2855793 () Bool)

(assert (=> b!7000905 (=> res!2855793 e!4208071)))

(declare-fun nullable!7028 (Regex!17268) Bool)

(assert (=> b!7000905 (= res!2855793 (not (nullable!7028 (h!73673 (exprs!6764 lt!2495649)))))))

(assert (=> b!7000905 (= lt!2495684 (Context!12529 lt!2495681))))

(declare-fun tail!13305 (List!67349) List!67349)

(assert (=> b!7000905 (= lt!2495681 (tail!13305 (exprs!6764 lt!2495649)))))

(declare-fun b!7000906 () Bool)

(declare-fun res!2855775 () Bool)

(assert (=> b!7000906 (=> res!2855775 e!4208067)))

(assert (=> b!7000906 (= res!2855775 (not (matchZipper!2808 lt!2495635 (_2!37244 lt!2495658))))))

(declare-fun b!7000907 () Bool)

(declare-fun res!2855792 () Bool)

(assert (=> b!7000907 (=> res!2855792 e!4208067)))

(declare-fun isEmpty!39248 (List!67350) Bool)

(assert (=> b!7000907 (= res!2855792 (isEmpty!39248 (_1!37244 lt!2495658)))))

(declare-fun b!7000908 () Bool)

(declare-fun res!2855783 () Bool)

(assert (=> b!7000908 (=> res!2855783 e!4208076)))

(declare-fun isEmpty!39249 (List!67349) Bool)

(assert (=> b!7000908 (= res!2855783 (isEmpty!39249 (exprs!6764 lt!2495649)))))

(declare-fun b!7000909 () Bool)

(declare-fun res!2855774 () Bool)

(assert (=> b!7000909 (=> res!2855774 e!4208076)))

(assert (=> b!7000909 (= res!2855774 (not (is-Cons!67225 (exprs!6764 lt!2495649))))))

(declare-fun b!7000910 () Bool)

(assert (=> b!7000910 (= e!4208073 e!4208081)))

(declare-fun res!2855788 () Bool)

(assert (=> b!7000910 (=> res!2855788 e!4208081)))

(assert (=> b!7000910 (= res!2855788 (not (matchZipper!2808 lt!2495686 s!7408)))))

(declare-fun lt!2495654 () Unit!161196)

(assert (=> b!7000910 (= lt!2495654 (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(assert (=> b!7000911 (= e!4208074 e!4208076)))

(declare-fun res!2855787 () Bool)

(assert (=> b!7000911 (=> res!2855787 e!4208076)))

(assert (=> b!7000911 (= res!2855787 (not (= (derivationStepZipper!2748 lt!2495671 (h!73674 s!7408)) lt!2495628)))))

(assert (=> b!7000911 (= (flatMap!2254 lt!2495671 lambda!405224) (derivationStepZipperUp!1918 lt!2495651 (h!73674 s!7408)))))

(declare-fun lt!2495639 () Unit!161196)

(assert (=> b!7000911 (= lt!2495639 (lemmaFlatMapOnSingletonSet!1769 lt!2495671 lt!2495651 lambda!405224))))

(assert (=> b!7000911 (= lt!2495628 (derivationStepZipperUp!1918 lt!2495651 (h!73674 s!7408)))))

(declare-fun lt!2495668 () Unit!161196)

(assert (=> b!7000911 (= lt!2495668 (lemmaConcatPreservesForall!604 (exprs!6764 lt!2495649) (exprs!6764 ct2!306) lambda!405223))))

(declare-fun b!7000912 () Bool)

(declare-fun tp!1931124 () Bool)

(assert (=> b!7000912 (= e!4208085 tp!1931124)))

(assert (= (and start!673576 res!2855768) b!7000887))

(assert (= (and b!7000887 res!2855767) b!7000899))

(assert (= (and b!7000899 (not res!2855769)) b!7000898))

(assert (= (and b!7000898 (not res!2855784)) b!7000884))

(assert (= (and b!7000884 (not res!2855785)) b!7000885))

(assert (= (and b!7000885 (not res!2855794)) b!7000911))

(assert (= (and b!7000911 (not res!2855787)) b!7000909))

(assert (= (and b!7000909 (not res!2855774)) b!7000908))

(assert (= (and b!7000908 (not res!2855783)) b!7000905))

(assert (= (and b!7000905 (not res!2855793)) b!7000900))

(assert (= (and b!7000900 (not res!2855777)) b!7000891))

(assert (= (and b!7000891 (not res!2855776)) b!7000895))

(assert (= (and b!7000891 res!2855780) b!7000889))

(assert (= (and b!7000891 (not res!2855790)) b!7000892))

(assert (= (and b!7000892 (not res!2855782)) b!7000903))

(assert (= (and b!7000903 (not res!2855781)) b!7000896))

(assert (= (and b!7000896 (not res!2855773)) b!7000910))

(assert (= (and b!7000910 (not res!2855788)) b!7000893))

(assert (= (and b!7000893 (not res!2855786)) b!7000902))

(assert (= (and b!7000902 (not res!2855778)) b!7000897))

(assert (= (and b!7000897 (not res!2855791)) b!7000906))

(assert (= (and b!7000906 (not res!2855775)) b!7000888))

(assert (= (and b!7000888 (not res!2855789)) b!7000907))

(assert (= (and b!7000907 (not res!2855792)) b!7000882))

(assert (= (and b!7000882 (not res!2855772)) b!7000883))

(assert (= (and b!7000883 (not res!2855770)) b!7000904))

(assert (= (and b!7000904 (not res!2855771)) b!7000901))

(assert (= (and b!7000904 (not res!2855779)) b!7000894))

(assert (= (and start!673576 condSetEmpty!48102) setIsEmpty!48102))

(assert (= (and start!673576 (not condSetEmpty!48102)) setNonEmpty!48102))

(assert (= setNonEmpty!48102 b!7000886))

(assert (= start!673576 b!7000912))

(assert (= (and start!673576 (is-Cons!67226 s!7408)) b!7000890))

(declare-fun m!7694924 () Bool)

(assert (=> b!7000884 m!7694924))

(declare-fun m!7694926 () Bool)

(assert (=> b!7000884 m!7694926))

(declare-fun m!7694928 () Bool)

(assert (=> b!7000884 m!7694928))

(declare-fun m!7694930 () Bool)

(assert (=> b!7000884 m!7694930))

(declare-fun m!7694932 () Bool)

(assert (=> b!7000903 m!7694932))

(declare-fun m!7694934 () Bool)

(assert (=> b!7000903 m!7694934))

(declare-fun m!7694936 () Bool)

(assert (=> b!7000910 m!7694936))

(assert (=> b!7000910 m!7694934))

(declare-fun m!7694938 () Bool)

(assert (=> b!7000907 m!7694938))

(declare-fun m!7694940 () Bool)

(assert (=> b!7000882 m!7694940))

(declare-fun m!7694942 () Bool)

(assert (=> b!7000882 m!7694942))

(declare-fun m!7694944 () Bool)

(assert (=> b!7000882 m!7694944))

(declare-fun m!7694946 () Bool)

(assert (=> b!7000882 m!7694946))

(declare-fun m!7694948 () Bool)

(assert (=> b!7000882 m!7694948))

(declare-fun m!7694950 () Bool)

(assert (=> b!7000893 m!7694950))

(declare-fun m!7694952 () Bool)

(assert (=> b!7000893 m!7694952))

(declare-fun m!7694954 () Bool)

(assert (=> b!7000893 m!7694954))

(declare-fun m!7694956 () Bool)

(assert (=> b!7000893 m!7694956))

(assert (=> b!7000893 m!7694934))

(declare-fun m!7694958 () Bool)

(assert (=> b!7000893 m!7694958))

(declare-fun m!7694960 () Bool)

(assert (=> b!7000893 m!7694960))

(declare-fun m!7694962 () Bool)

(assert (=> b!7000893 m!7694962))

(declare-fun m!7694964 () Bool)

(assert (=> b!7000893 m!7694964))

(declare-fun m!7694966 () Bool)

(assert (=> b!7000893 m!7694966))

(declare-fun m!7694968 () Bool)

(assert (=> b!7000893 m!7694968))

(declare-fun m!7694970 () Bool)

(assert (=> b!7000893 m!7694970))

(declare-fun m!7694972 () Bool)

(assert (=> b!7000893 m!7694972))

(assert (=> b!7000893 m!7694934))

(assert (=> b!7000893 m!7694934))

(declare-fun m!7694974 () Bool)

(assert (=> b!7000893 m!7694974))

(assert (=> b!7000893 m!7694934))

(declare-fun m!7694976 () Bool)

(assert (=> setNonEmpty!48102 m!7694976))

(declare-fun m!7694978 () Bool)

(assert (=> b!7000902 m!7694978))

(assert (=> b!7000883 m!7694950))

(declare-fun m!7694980 () Bool)

(assert (=> b!7000883 m!7694980))

(declare-fun m!7694982 () Bool)

(assert (=> b!7000899 m!7694982))

(declare-fun m!7694984 () Bool)

(assert (=> b!7000899 m!7694984))

(declare-fun m!7694986 () Bool)

(assert (=> b!7000899 m!7694986))

(declare-fun m!7694988 () Bool)

(assert (=> b!7000899 m!7694988))

(declare-fun m!7694990 () Bool)

(assert (=> b!7000899 m!7694990))

(declare-fun m!7694992 () Bool)

(assert (=> b!7000899 m!7694992))

(assert (=> b!7000911 m!7694928))

(declare-fun m!7694994 () Bool)

(assert (=> b!7000911 m!7694994))

(declare-fun m!7694996 () Bool)

(assert (=> b!7000911 m!7694996))

(declare-fun m!7694998 () Bool)

(assert (=> b!7000911 m!7694998))

(declare-fun m!7695000 () Bool)

(assert (=> b!7000911 m!7695000))

(declare-fun m!7695002 () Bool)

(assert (=> b!7000897 m!7695002))

(declare-fun m!7695004 () Bool)

(assert (=> b!7000897 m!7695004))

(declare-fun m!7695006 () Bool)

(assert (=> b!7000897 m!7695006))

(declare-fun m!7695008 () Bool)

(assert (=> b!7000897 m!7695008))

(declare-fun m!7695010 () Bool)

(assert (=> b!7000897 m!7695010))

(declare-fun m!7695012 () Bool)

(assert (=> b!7000897 m!7695012))

(declare-fun m!7695014 () Bool)

(assert (=> b!7000898 m!7695014))

(assert (=> b!7000900 m!7694952))

(assert (=> b!7000900 m!7694934))

(declare-fun m!7695016 () Bool)

(assert (=> b!7000900 m!7695016))

(assert (=> b!7000900 m!7694934))

(declare-fun m!7695018 () Bool)

(assert (=> b!7000900 m!7695018))

(assert (=> b!7000895 m!7694932))

(declare-fun m!7695020 () Bool)

(assert (=> start!673576 m!7695020))

(declare-fun m!7695022 () Bool)

(assert (=> start!673576 m!7695022))

(declare-fun m!7695024 () Bool)

(assert (=> start!673576 m!7695024))

(declare-fun m!7695026 () Bool)

(assert (=> b!7000904 m!7695026))

(declare-fun m!7695028 () Bool)

(assert (=> b!7000904 m!7695028))

(declare-fun m!7695030 () Bool)

(assert (=> b!7000904 m!7695030))

(declare-fun m!7695032 () Bool)

(assert (=> b!7000904 m!7695032))

(declare-fun m!7695034 () Bool)

(assert (=> b!7000904 m!7695034))

(declare-fun m!7695036 () Bool)

(assert (=> b!7000888 m!7695036))

(declare-fun m!7695038 () Bool)

(assert (=> b!7000908 m!7695038))

(declare-fun m!7695040 () Bool)

(assert (=> b!7000901 m!7695040))

(declare-fun m!7695042 () Bool)

(assert (=> b!7000891 m!7695042))

(assert (=> b!7000891 m!7694934))

(assert (=> b!7000891 m!7694934))

(declare-fun m!7695044 () Bool)

(assert (=> b!7000891 m!7695044))

(declare-fun m!7695046 () Bool)

(assert (=> b!7000891 m!7695046))

(assert (=> b!7000891 m!7694934))

(declare-fun m!7695048 () Bool)

(assert (=> b!7000891 m!7695048))

(declare-fun m!7695050 () Bool)

(assert (=> b!7000905 m!7695050))

(declare-fun m!7695052 () Bool)

(assert (=> b!7000905 m!7695052))

(assert (=> b!7000889 m!7694932))

(assert (=> b!7000889 m!7694934))

(declare-fun m!7695054 () Bool)

(assert (=> b!7000906 m!7695054))

(declare-fun m!7695056 () Bool)

(assert (=> b!7000885 m!7695056))

(assert (=> b!7000885 m!7694928))

(assert (=> b!7000896 m!7694934))

(declare-fun m!7695058 () Bool)

(assert (=> b!7000896 m!7695058))

(declare-fun m!7695060 () Bool)

(assert (=> b!7000896 m!7695060))

(assert (=> b!7000896 m!7694934))

(assert (=> b!7000896 m!7695016))

(declare-fun m!7695062 () Bool)

(assert (=> b!7000896 m!7695062))

(assert (=> b!7000896 m!7694934))

(declare-fun m!7695064 () Bool)

(assert (=> b!7000896 m!7695064))

(assert (=> b!7000896 m!7694934))

(push 1)

(assert (not b!7000896))

(assert (not b!7000889))

(assert (not b!7000911))

(assert (not b!7000893))

(assert (not b!7000908))

(assert (not b!7000905))

(assert (not b!7000901))

(assert (not setNonEmpty!48102))

(assert (not b!7000897))

(assert (not b!7000891))

(assert (not b!7000885))

(assert (not b!7000903))

(assert (not b!7000912))

(assert (not b!7000888))

(assert (not b!7000910))

(assert (not b!7000886))

(assert (not b!7000890))

(assert (not b!7000907))

(assert (not b!7000899))

(assert (not b!7000902))

(assert (not b!7000906))

(assert (not b!7000884))

(assert (not b!7000900))

(assert (not b!7000883))

(assert (not b!7000895))

(assert (not b!7000904))

(assert tp_is_empty!43761)

(assert (not start!673576))

(assert (not b!7000882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7001028 () Bool)

(declare-fun e!4208163 () (Set Context!12528))

(assert (=> b!7001028 (= e!4208163 (as set.empty (Set Context!12528)))))

(declare-fun call!635713 () (Set Context!12528))

(declare-fun e!4208161 () (Set Context!12528))

(declare-fun b!7001029 () Bool)

(assert (=> b!7001029 (= e!4208161 (set.union call!635713 (derivationStepZipperUp!1918 (Context!12529 (t!381102 (exprs!6764 lt!2495684))) (h!73674 s!7408))))))

(declare-fun b!7001030 () Bool)

(declare-fun e!4208162 () Bool)

(assert (=> b!7001030 (= e!4208162 (nullable!7028 (h!73673 (exprs!6764 lt!2495684))))))

(declare-fun d!2182190 () Bool)

(declare-fun c!1299633 () Bool)

(assert (=> d!2182190 (= c!1299633 e!4208162)))

(declare-fun res!2855882 () Bool)

(assert (=> d!2182190 (=> (not res!2855882) (not e!4208162))))

(assert (=> d!2182190 (= res!2855882 (is-Cons!67225 (exprs!6764 lt!2495684)))))

(assert (=> d!2182190 (= (derivationStepZipperUp!1918 lt!2495684 (h!73674 s!7408)) e!4208161)))

(declare-fun b!7001031 () Bool)

(assert (=> b!7001031 (= e!4208161 e!4208163)))

(declare-fun c!1299632 () Bool)

(assert (=> b!7001031 (= c!1299632 (is-Cons!67225 (exprs!6764 lt!2495684)))))

(declare-fun b!7001032 () Bool)

(assert (=> b!7001032 (= e!4208163 call!635713)))

(declare-fun bm!635708 () Bool)

(assert (=> bm!635708 (= call!635713 (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495684)) (Context!12529 (t!381102 (exprs!6764 lt!2495684))) (h!73674 s!7408)))))

(assert (= (and d!2182190 res!2855882) b!7001030))

(assert (= (and d!2182190 c!1299633) b!7001029))

(assert (= (and d!2182190 (not c!1299633)) b!7001031))

(assert (= (and b!7001031 c!1299632) b!7001032))

(assert (= (and b!7001031 (not c!1299632)) b!7001028))

(assert (= (or b!7001029 b!7001032) bm!635708))

(declare-fun m!7695208 () Bool)

(assert (=> b!7001029 m!7695208))

(declare-fun m!7695210 () Bool)

(assert (=> b!7001030 m!7695210))

(declare-fun m!7695212 () Bool)

(assert (=> bm!635708 m!7695212))

(assert (=> b!7000883 d!2182190))

(declare-fun b!7001055 () Bool)

(declare-fun e!4208179 () (Set Context!12528))

(assert (=> b!7001055 (= e!4208179 (set.insert lt!2495684 (as set.empty (Set Context!12528))))))

(declare-fun b!7001056 () Bool)

(declare-fun e!4208178 () (Set Context!12528))

(declare-fun call!635728 () (Set Context!12528))

(assert (=> b!7001056 (= e!4208178 call!635728)))

(declare-fun b!7001057 () Bool)

(declare-fun c!1299646 () Bool)

(declare-fun e!4208181 () Bool)

(assert (=> b!7001057 (= c!1299646 e!4208181)))

(declare-fun res!2855885 () Bool)

(assert (=> b!7001057 (=> (not res!2855885) (not e!4208181))))

(assert (=> b!7001057 (= res!2855885 (is-Concat!26113 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun e!4208176 () (Set Context!12528))

(declare-fun e!4208180 () (Set Context!12528))

(assert (=> b!7001057 (= e!4208176 e!4208180)))

(declare-fun bm!635721 () Bool)

(declare-fun call!635726 () List!67349)

(declare-fun call!635731 () List!67349)

(assert (=> bm!635721 (= call!635726 call!635731)))

(declare-fun bm!635722 () Bool)

(declare-fun call!635727 () (Set Context!12528))

(declare-fun call!635729 () (Set Context!12528))

(assert (=> bm!635722 (= call!635727 call!635729)))

(declare-fun d!2182192 () Bool)

(declare-fun c!1299645 () Bool)

(assert (=> d!2182192 (= c!1299645 (and (is-ElementMatch!17268 (h!73673 (exprs!6764 lt!2495649))) (= (c!1299610 (h!73673 (exprs!6764 lt!2495649))) (h!73674 s!7408))))))

(assert (=> d!2182192 (= (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495649)) lt!2495684 (h!73674 s!7408)) e!4208179)))

(declare-fun b!7001058 () Bool)

(assert (=> b!7001058 (= e!4208181 (nullable!7028 (regOne!35048 (h!73673 (exprs!6764 lt!2495649)))))))

(declare-fun bm!635723 () Bool)

(assert (=> bm!635723 (= call!635728 call!635727)))

(declare-fun c!1299648 () Bool)

(declare-fun bm!635724 () Bool)

(declare-fun call!635730 () (Set Context!12528))

(assert (=> bm!635724 (= call!635730 (derivationStepZipperDown!1986 (ite c!1299648 (regOne!35049 (h!73673 (exprs!6764 lt!2495649))) (regOne!35048 (h!73673 (exprs!6764 lt!2495649)))) (ite c!1299648 lt!2495684 (Context!12529 call!635731)) (h!73674 s!7408)))))

(declare-fun c!1299647 () Bool)

(declare-fun bm!635725 () Bool)

(assert (=> bm!635725 (= call!635729 (derivationStepZipperDown!1986 (ite c!1299648 (regTwo!35049 (h!73673 (exprs!6764 lt!2495649))) (ite c!1299646 (regTwo!35048 (h!73673 (exprs!6764 lt!2495649))) (ite c!1299647 (regOne!35048 (h!73673 (exprs!6764 lt!2495649))) (reg!17597 (h!73673 (exprs!6764 lt!2495649)))))) (ite (or c!1299648 c!1299646) lt!2495684 (Context!12529 call!635726)) (h!73674 s!7408)))))

(declare-fun b!7001059 () Bool)

(declare-fun e!4208177 () (Set Context!12528))

(assert (=> b!7001059 (= e!4208177 call!635728)))

(declare-fun b!7001060 () Bool)

(assert (=> b!7001060 (= e!4208179 e!4208176)))

(assert (=> b!7001060 (= c!1299648 (is-Union!17268 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun b!7001061 () Bool)

(assert (=> b!7001061 (= e!4208176 (set.union call!635730 call!635729))))

(declare-fun b!7001062 () Bool)

(assert (=> b!7001062 (= e!4208180 (set.union call!635730 call!635727))))

(declare-fun bm!635726 () Bool)

(declare-fun $colon$colon!2506 (List!67349 Regex!17268) List!67349)

(assert (=> bm!635726 (= call!635731 ($colon$colon!2506 (exprs!6764 lt!2495684) (ite (or c!1299646 c!1299647) (regTwo!35048 (h!73673 (exprs!6764 lt!2495649))) (h!73673 (exprs!6764 lt!2495649)))))))

(declare-fun b!7001063 () Bool)

(assert (=> b!7001063 (= e!4208180 e!4208178)))

(assert (=> b!7001063 (= c!1299647 (is-Concat!26113 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun b!7001064 () Bool)

(declare-fun c!1299644 () Bool)

(assert (=> b!7001064 (= c!1299644 (is-Star!17268 (h!73673 (exprs!6764 lt!2495649))))))

(assert (=> b!7001064 (= e!4208178 e!4208177)))

(declare-fun b!7001065 () Bool)

(assert (=> b!7001065 (= e!4208177 (as set.empty (Set Context!12528)))))

(assert (= (and d!2182192 c!1299645) b!7001055))

(assert (= (and d!2182192 (not c!1299645)) b!7001060))

(assert (= (and b!7001060 c!1299648) b!7001061))

(assert (= (and b!7001060 (not c!1299648)) b!7001057))

(assert (= (and b!7001057 res!2855885) b!7001058))

(assert (= (and b!7001057 c!1299646) b!7001062))

(assert (= (and b!7001057 (not c!1299646)) b!7001063))

(assert (= (and b!7001063 c!1299647) b!7001056))

(assert (= (and b!7001063 (not c!1299647)) b!7001064))

(assert (= (and b!7001064 c!1299644) b!7001059))

(assert (= (and b!7001064 (not c!1299644)) b!7001065))

(assert (= (or b!7001056 b!7001059) bm!635721))

(assert (= (or b!7001056 b!7001059) bm!635723))

(assert (= (or b!7001062 bm!635723) bm!635722))

(assert (= (or b!7001062 bm!635721) bm!635726))

(assert (= (or b!7001061 b!7001062) bm!635724))

(assert (= (or b!7001061 bm!635722) bm!635725))

(declare-fun m!7695214 () Bool)

(assert (=> bm!635725 m!7695214))

(declare-fun m!7695216 () Bool)

(assert (=> bm!635726 m!7695216))

(declare-fun m!7695218 () Bool)

(assert (=> bm!635724 m!7695218))

(assert (=> b!7001055 m!7694974))

(declare-fun m!7695220 () Bool)

(assert (=> b!7001058 m!7695220))

(assert (=> b!7000883 d!2182192))

(declare-fun d!2182194 () Bool)

(declare-fun c!1299651 () Bool)

(assert (=> d!2182194 (= c!1299651 (isEmpty!39248 s!7408))))

(declare-fun e!4208184 () Bool)

(assert (=> d!2182194 (= (matchZipper!2808 lt!2495674 s!7408) e!4208184)))

(declare-fun b!7001070 () Bool)

(declare-fun nullableZipper!2462 ((Set Context!12528)) Bool)

(assert (=> b!7001070 (= e!4208184 (nullableZipper!2462 lt!2495674))))

(declare-fun b!7001071 () Bool)

(declare-fun head!14142 (List!67350) C!34806)

(assert (=> b!7001071 (= e!4208184 (matchZipper!2808 (derivationStepZipper!2748 lt!2495674 (head!14142 s!7408)) (tail!13304 s!7408)))))

(assert (= (and d!2182194 c!1299651) b!7001070))

(assert (= (and d!2182194 (not c!1299651)) b!7001071))

(declare-fun m!7695222 () Bool)

(assert (=> d!2182194 m!7695222))

(declare-fun m!7695224 () Bool)

(assert (=> b!7001070 m!7695224))

(declare-fun m!7695226 () Bool)

(assert (=> b!7001071 m!7695226))

(assert (=> b!7001071 m!7695226))

(declare-fun m!7695228 () Bool)

(assert (=> b!7001071 m!7695228))

(declare-fun m!7695230 () Bool)

(assert (=> b!7001071 m!7695230))

(assert (=> b!7001071 m!7695228))

(assert (=> b!7001071 m!7695230))

(declare-fun m!7695232 () Bool)

(assert (=> b!7001071 m!7695232))

(assert (=> start!673576 d!2182194))

(declare-fun bs!1864824 () Bool)

(declare-fun d!2182196 () Bool)

(assert (= bs!1864824 (and d!2182196 b!7000884)))

(declare-fun lambda!405291 () Int)

(assert (=> bs!1864824 (= lambda!405291 lambda!405222)))

(assert (=> d!2182196 true))

(assert (=> d!2182196 (= (appendTo!389 z1!570 ct2!306) (map!15549 z1!570 lambda!405291))))

(declare-fun bs!1864825 () Bool)

(assert (= bs!1864825 d!2182196))

(declare-fun m!7695234 () Bool)

(assert (=> bs!1864825 m!7695234))

(assert (=> start!673576 d!2182196))

(declare-fun bs!1864826 () Bool)

(declare-fun d!2182198 () Bool)

(assert (= bs!1864826 (and d!2182198 b!7000884)))

(declare-fun lambda!405294 () Int)

(assert (=> bs!1864826 (= lambda!405294 lambda!405223)))

(declare-fun forall!16184 (List!67349 Int) Bool)

(assert (=> d!2182198 (= (inv!86030 ct2!306) (forall!16184 (exprs!6764 ct2!306) lambda!405294))))

(declare-fun bs!1864827 () Bool)

(assert (= bs!1864827 d!2182198))

(declare-fun m!7695236 () Bool)

(assert (=> bs!1864827 m!7695236))

(assert (=> start!673576 d!2182198))

(declare-fun d!2182200 () Bool)

(declare-fun c!1299653 () Bool)

(assert (=> d!2182200 (= c!1299653 (isEmpty!39248 (t!381103 s!7408)))))

(declare-fun e!4208185 () Bool)

(assert (=> d!2182200 (= (matchZipper!2808 lt!2495638 (t!381103 s!7408)) e!4208185)))

(declare-fun b!7001072 () Bool)

(assert (=> b!7001072 (= e!4208185 (nullableZipper!2462 lt!2495638))))

(declare-fun b!7001073 () Bool)

(assert (=> b!7001073 (= e!4208185 (matchZipper!2808 (derivationStepZipper!2748 lt!2495638 (head!14142 (t!381103 s!7408))) (tail!13304 (t!381103 s!7408))))))

(assert (= (and d!2182200 c!1299653) b!7001072))

(assert (= (and d!2182200 (not c!1299653)) b!7001073))

(declare-fun m!7695238 () Bool)

(assert (=> d!2182200 m!7695238))

(declare-fun m!7695240 () Bool)

(assert (=> b!7001072 m!7695240))

(declare-fun m!7695242 () Bool)

(assert (=> b!7001073 m!7695242))

(assert (=> b!7001073 m!7695242))

(declare-fun m!7695244 () Bool)

(assert (=> b!7001073 m!7695244))

(declare-fun m!7695246 () Bool)

(assert (=> b!7001073 m!7695246))

(assert (=> b!7001073 m!7695244))

(assert (=> b!7001073 m!7695246))

(declare-fun m!7695248 () Bool)

(assert (=> b!7001073 m!7695248))

(assert (=> b!7000903 d!2182200))

(declare-fun d!2182202 () Bool)

(assert (=> d!2182202 (forall!16184 (++!15237 lt!2495681 (exprs!6764 ct2!306)) lambda!405223)))

(declare-fun lt!2495876 () Unit!161196)

(declare-fun choose!52485 (List!67349 List!67349 Int) Unit!161196)

(assert (=> d!2182202 (= lt!2495876 (choose!52485 lt!2495681 (exprs!6764 ct2!306) lambda!405223))))

(assert (=> d!2182202 (forall!16184 lt!2495681 lambda!405223)))

(assert (=> d!2182202 (= (lemmaConcatPreservesForall!604 lt!2495681 (exprs!6764 ct2!306) lambda!405223) lt!2495876)))

(declare-fun bs!1864828 () Bool)

(assert (= bs!1864828 d!2182202))

(assert (=> bs!1864828 m!7694952))

(assert (=> bs!1864828 m!7694952))

(declare-fun m!7695250 () Bool)

(assert (=> bs!1864828 m!7695250))

(declare-fun m!7695252 () Bool)

(assert (=> bs!1864828 m!7695252))

(declare-fun m!7695254 () Bool)

(assert (=> bs!1864828 m!7695254))

(assert (=> b!7000903 d!2182202))

(declare-fun d!2182204 () Bool)

(declare-fun c!1299654 () Bool)

(assert (=> d!2182204 (= c!1299654 (isEmpty!39248 lt!2495680))))

(declare-fun e!4208186 () Bool)

(assert (=> d!2182204 (= (matchZipper!2808 lt!2495659 lt!2495680) e!4208186)))

(declare-fun b!7001074 () Bool)

(assert (=> b!7001074 (= e!4208186 (nullableZipper!2462 lt!2495659))))

(declare-fun b!7001075 () Bool)

(assert (=> b!7001075 (= e!4208186 (matchZipper!2808 (derivationStepZipper!2748 lt!2495659 (head!14142 lt!2495680)) (tail!13304 lt!2495680)))))

(assert (= (and d!2182204 c!1299654) b!7001074))

(assert (= (and d!2182204 (not c!1299654)) b!7001075))

(declare-fun m!7695256 () Bool)

(assert (=> d!2182204 m!7695256))

(declare-fun m!7695258 () Bool)

(assert (=> b!7001074 m!7695258))

(declare-fun m!7695260 () Bool)

(assert (=> b!7001075 m!7695260))

(assert (=> b!7001075 m!7695260))

(declare-fun m!7695262 () Bool)

(assert (=> b!7001075 m!7695262))

(declare-fun m!7695264 () Bool)

(assert (=> b!7001075 m!7695264))

(assert (=> b!7001075 m!7695262))

(assert (=> b!7001075 m!7695264))

(declare-fun m!7695266 () Bool)

(assert (=> b!7001075 m!7695266))

(assert (=> b!7000904 d!2182204))

(declare-fun d!2182206 () Bool)

(declare-fun e!4208189 () Bool)

(assert (=> d!2182206 (= (matchZipper!2808 (set.union lt!2495665 lt!2495687) lt!2495680) e!4208189)))

(declare-fun res!2855888 () Bool)

(assert (=> d!2182206 (=> res!2855888 e!4208189)))

(assert (=> d!2182206 (= res!2855888 (matchZipper!2808 lt!2495665 lt!2495680))))

(declare-fun lt!2495879 () Unit!161196)

(declare-fun choose!52486 ((Set Context!12528) (Set Context!12528) List!67350) Unit!161196)

(assert (=> d!2182206 (= lt!2495879 (choose!52486 lt!2495665 lt!2495687 lt!2495680))))

(assert (=> d!2182206 (= (lemmaZipperConcatMatchesSameAsBothZippers!1441 lt!2495665 lt!2495687 lt!2495680) lt!2495879)))

(declare-fun b!7001078 () Bool)

(assert (=> b!7001078 (= e!4208189 (matchZipper!2808 lt!2495687 lt!2495680))))

(assert (= (and d!2182206 (not res!2855888)) b!7001078))

(declare-fun m!7695268 () Bool)

(assert (=> d!2182206 m!7695268))

(assert (=> d!2182206 m!7695030))

(declare-fun m!7695270 () Bool)

(assert (=> d!2182206 m!7695270))

(assert (=> b!7001078 m!7695040))

(assert (=> b!7000904 d!2182206))

(declare-fun d!2182208 () Bool)

(assert (=> d!2182208 (= (tail!13304 (_1!37244 lt!2495658)) (t!381103 (_1!37244 lt!2495658)))))

(assert (=> b!7000904 d!2182208))

(declare-fun d!2182210 () Bool)

(declare-fun c!1299655 () Bool)

(assert (=> d!2182210 (= c!1299655 (isEmpty!39248 (_1!37244 lt!2495658)))))

(declare-fun e!4208190 () Bool)

(assert (=> d!2182210 (= (matchZipper!2808 lt!2495644 (_1!37244 lt!2495658)) e!4208190)))

(declare-fun b!7001079 () Bool)

(assert (=> b!7001079 (= e!4208190 (nullableZipper!2462 lt!2495644))))

(declare-fun b!7001080 () Bool)

(assert (=> b!7001080 (= e!4208190 (matchZipper!2808 (derivationStepZipper!2748 lt!2495644 (head!14142 (_1!37244 lt!2495658))) (tail!13304 (_1!37244 lt!2495658))))))

(assert (= (and d!2182210 c!1299655) b!7001079))

(assert (= (and d!2182210 (not c!1299655)) b!7001080))

(assert (=> d!2182210 m!7694938))

(declare-fun m!7695272 () Bool)

(assert (=> b!7001079 m!7695272))

(declare-fun m!7695274 () Bool)

(assert (=> b!7001080 m!7695274))

(assert (=> b!7001080 m!7695274))

(declare-fun m!7695276 () Bool)

(assert (=> b!7001080 m!7695276))

(assert (=> b!7001080 m!7695028))

(assert (=> b!7001080 m!7695276))

(assert (=> b!7001080 m!7695028))

(declare-fun m!7695278 () Bool)

(assert (=> b!7001080 m!7695278))

(assert (=> b!7000904 d!2182210))

(declare-fun d!2182212 () Bool)

(declare-fun c!1299656 () Bool)

(assert (=> d!2182212 (= c!1299656 (isEmpty!39248 lt!2495680))))

(declare-fun e!4208191 () Bool)

(assert (=> d!2182212 (= (matchZipper!2808 lt!2495665 lt!2495680) e!4208191)))

(declare-fun b!7001081 () Bool)

(assert (=> b!7001081 (= e!4208191 (nullableZipper!2462 lt!2495665))))

(declare-fun b!7001082 () Bool)

(assert (=> b!7001082 (= e!4208191 (matchZipper!2808 (derivationStepZipper!2748 lt!2495665 (head!14142 lt!2495680)) (tail!13304 lt!2495680)))))

(assert (= (and d!2182212 c!1299656) b!7001081))

(assert (= (and d!2182212 (not c!1299656)) b!7001082))

(assert (=> d!2182212 m!7695256))

(declare-fun m!7695280 () Bool)

(assert (=> b!7001081 m!7695280))

(assert (=> b!7001082 m!7695260))

(assert (=> b!7001082 m!7695260))

(declare-fun m!7695282 () Bool)

(assert (=> b!7001082 m!7695282))

(assert (=> b!7001082 m!7695264))

(assert (=> b!7001082 m!7695282))

(assert (=> b!7001082 m!7695264))

(declare-fun m!7695284 () Bool)

(assert (=> b!7001082 m!7695284))

(assert (=> b!7000904 d!2182212))

(declare-fun b!7001091 () Bool)

(declare-fun e!4208197 () List!67349)

(assert (=> b!7001091 (= e!4208197 (exprs!6764 ct2!306))))

(declare-fun lt!2495882 () List!67349)

(declare-fun e!4208196 () Bool)

(declare-fun b!7001094 () Bool)

(assert (=> b!7001094 (= e!4208196 (or (not (= (exprs!6764 ct2!306) Nil!67225)) (= lt!2495882 (exprs!6764 lt!2495649))))))

(declare-fun d!2182214 () Bool)

(assert (=> d!2182214 e!4208196))

(declare-fun res!2855894 () Bool)

(assert (=> d!2182214 (=> (not res!2855894) (not e!4208196))))

(declare-fun content!13315 (List!67349) (Set Regex!17268))

(assert (=> d!2182214 (= res!2855894 (= (content!13315 lt!2495882) (set.union (content!13315 (exprs!6764 lt!2495649)) (content!13315 (exprs!6764 ct2!306)))))))

(assert (=> d!2182214 (= lt!2495882 e!4208197)))

(declare-fun c!1299659 () Bool)

(assert (=> d!2182214 (= c!1299659 (is-Nil!67225 (exprs!6764 lt!2495649)))))

(assert (=> d!2182214 (= (++!15237 (exprs!6764 lt!2495649) (exprs!6764 ct2!306)) lt!2495882)))

(declare-fun b!7001092 () Bool)

(assert (=> b!7001092 (= e!4208197 (Cons!67225 (h!73673 (exprs!6764 lt!2495649)) (++!15237 (t!381102 (exprs!6764 lt!2495649)) (exprs!6764 ct2!306))))))

(declare-fun b!7001093 () Bool)

(declare-fun res!2855893 () Bool)

(assert (=> b!7001093 (=> (not res!2855893) (not e!4208196))))

(declare-fun size!40939 (List!67349) Int)

(assert (=> b!7001093 (= res!2855893 (= (size!40939 lt!2495882) (+ (size!40939 (exprs!6764 lt!2495649)) (size!40939 (exprs!6764 ct2!306)))))))

(assert (= (and d!2182214 c!1299659) b!7001091))

(assert (= (and d!2182214 (not c!1299659)) b!7001092))

(assert (= (and d!2182214 res!2855894) b!7001093))

(assert (= (and b!7001093 res!2855893) b!7001094))

(declare-fun m!7695286 () Bool)

(assert (=> d!2182214 m!7695286))

(declare-fun m!7695288 () Bool)

(assert (=> d!2182214 m!7695288))

(declare-fun m!7695290 () Bool)

(assert (=> d!2182214 m!7695290))

(declare-fun m!7695292 () Bool)

(assert (=> b!7001092 m!7695292))

(declare-fun m!7695294 () Bool)

(assert (=> b!7001093 m!7695294))

(declare-fun m!7695296 () Bool)

(assert (=> b!7001093 m!7695296))

(declare-fun m!7695298 () Bool)

(assert (=> b!7001093 m!7695298))

(assert (=> b!7000884 d!2182214))

(declare-fun d!2182216 () Bool)

(assert (=> d!2182216 (forall!16184 (++!15237 (exprs!6764 lt!2495649) (exprs!6764 ct2!306)) lambda!405223)))

(declare-fun lt!2495883 () Unit!161196)

(assert (=> d!2182216 (= lt!2495883 (choose!52485 (exprs!6764 lt!2495649) (exprs!6764 ct2!306) lambda!405223))))

(assert (=> d!2182216 (forall!16184 (exprs!6764 lt!2495649) lambda!405223)))

(assert (=> d!2182216 (= (lemmaConcatPreservesForall!604 (exprs!6764 lt!2495649) (exprs!6764 ct2!306) lambda!405223) lt!2495883)))

(declare-fun bs!1864829 () Bool)

(assert (= bs!1864829 d!2182216))

(assert (=> bs!1864829 m!7694926))

(assert (=> bs!1864829 m!7694926))

(declare-fun m!7695300 () Bool)

(assert (=> bs!1864829 m!7695300))

(declare-fun m!7695302 () Bool)

(assert (=> bs!1864829 m!7695302))

(declare-fun m!7695304 () Bool)

(assert (=> bs!1864829 m!7695304))

(assert (=> b!7000884 d!2182216))

(declare-fun d!2182218 () Bool)

(declare-fun e!4208200 () Bool)

(assert (=> d!2182218 e!4208200))

(declare-fun res!2855897 () Bool)

(assert (=> d!2182218 (=> (not res!2855897) (not e!4208200))))

(declare-fun lt!2495886 () Context!12528)

(declare-fun dynLambda!27002 (Int Context!12528) Context!12528)

(assert (=> d!2182218 (= res!2855897 (= lt!2495636 (dynLambda!27002 lambda!405222 lt!2495886)))))

(declare-fun choose!52487 ((Set Context!12528) Int Context!12528) Context!12528)

(assert (=> d!2182218 (= lt!2495886 (choose!52487 z1!570 lambda!405222 lt!2495636))))

(assert (=> d!2182218 (set.member lt!2495636 (map!15549 z1!570 lambda!405222))))

(assert (=> d!2182218 (= (mapPost2!123 z1!570 lambda!405222 lt!2495636) lt!2495886)))

(declare-fun b!7001098 () Bool)

(assert (=> b!7001098 (= e!4208200 (set.member lt!2495886 z1!570))))

(assert (= (and d!2182218 res!2855897) b!7001098))

(declare-fun b_lambda!263699 () Bool)

(assert (=> (not b_lambda!263699) (not d!2182218)))

(declare-fun m!7695306 () Bool)

(assert (=> d!2182218 m!7695306))

(declare-fun m!7695308 () Bool)

(assert (=> d!2182218 m!7695308))

(declare-fun m!7695310 () Bool)

(assert (=> d!2182218 m!7695310))

(declare-fun m!7695312 () Bool)

(assert (=> d!2182218 m!7695312))

(declare-fun m!7695314 () Bool)

(assert (=> b!7001098 m!7695314))

(assert (=> b!7000884 d!2182218))

(declare-fun d!2182220 () Bool)

(declare-fun nullableFct!2659 (Regex!17268) Bool)

(assert (=> d!2182220 (= (nullable!7028 (h!73673 (exprs!6764 lt!2495649))) (nullableFct!2659 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun bs!1864830 () Bool)

(assert (= bs!1864830 d!2182220))

(declare-fun m!7695316 () Bool)

(assert (=> bs!1864830 m!7695316))

(assert (=> b!7000905 d!2182220))

(declare-fun d!2182222 () Bool)

(assert (=> d!2182222 (= (tail!13305 (exprs!6764 lt!2495649)) (t!381102 (exprs!6764 lt!2495649)))))

(assert (=> b!7000905 d!2182222))

(assert (=> b!7000885 d!2182216))

(declare-fun d!2182224 () Bool)

(declare-fun c!1299660 () Bool)

(assert (=> d!2182224 (= c!1299660 (isEmpty!39248 (_2!37244 lt!2495658)))))

(declare-fun e!4208201 () Bool)

(assert (=> d!2182224 (= (matchZipper!2808 lt!2495635 (_2!37244 lt!2495658)) e!4208201)))

(declare-fun b!7001099 () Bool)

(assert (=> b!7001099 (= e!4208201 (nullableZipper!2462 lt!2495635))))

(declare-fun b!7001100 () Bool)

(assert (=> b!7001100 (= e!4208201 (matchZipper!2808 (derivationStepZipper!2748 lt!2495635 (head!14142 (_2!37244 lt!2495658))) (tail!13304 (_2!37244 lt!2495658))))))

(assert (= (and d!2182224 c!1299660) b!7001099))

(assert (= (and d!2182224 (not c!1299660)) b!7001100))

(declare-fun m!7695318 () Bool)

(assert (=> d!2182224 m!7695318))

(declare-fun m!7695320 () Bool)

(assert (=> b!7001099 m!7695320))

(declare-fun m!7695322 () Bool)

(assert (=> b!7001100 m!7695322))

(assert (=> b!7001100 m!7695322))

(declare-fun m!7695324 () Bool)

(assert (=> b!7001100 m!7695324))

(declare-fun m!7695326 () Bool)

(assert (=> b!7001100 m!7695326))

(assert (=> b!7001100 m!7695324))

(assert (=> b!7001100 m!7695326))

(declare-fun m!7695328 () Bool)

(assert (=> b!7001100 m!7695328))

(assert (=> b!7000906 d!2182224))

(declare-fun bs!1864831 () Bool)

(declare-fun d!2182226 () Bool)

(assert (= bs!1864831 (and d!2182226 b!7000899)))

(declare-fun lambda!405297 () Int)

(assert (=> bs!1864831 (not (= lambda!405297 lambda!405221))))

(assert (=> d!2182226 true))

(declare-fun order!27975 () Int)

(declare-fun dynLambda!27003 (Int Int) Int)

(assert (=> d!2182226 (< (dynLambda!27003 order!27975 lambda!405221) (dynLambda!27003 order!27975 lambda!405297))))

(declare-fun forall!16185 (List!67351 Int) Bool)

(assert (=> d!2182226 (= (exists!3084 lt!2495683 lambda!405221) (not (forall!16185 lt!2495683 lambda!405297)))))

(declare-fun bs!1864832 () Bool)

(assert (= bs!1864832 d!2182226))

(declare-fun m!7695330 () Bool)

(assert (=> bs!1864832 m!7695330))

(assert (=> b!7000899 d!2182226))

(declare-fun d!2182228 () Bool)

(declare-fun e!4208204 () Bool)

(assert (=> d!2182228 e!4208204))

(declare-fun res!2855900 () Bool)

(assert (=> d!2182228 (=> (not res!2855900) (not e!4208204))))

(declare-fun lt!2495889 () Context!12528)

(declare-fun dynLambda!27004 (Int Context!12528) Bool)

(assert (=> d!2182228 (= res!2855900 (dynLambda!27004 lambda!405221 lt!2495889))))

(declare-fun getWitness!1190 (List!67351 Int) Context!12528)

(assert (=> d!2182228 (= lt!2495889 (getWitness!1190 (toList!10628 lt!2495674) lambda!405221))))

(declare-fun exists!3086 ((Set Context!12528) Int) Bool)

(assert (=> d!2182228 (exists!3086 lt!2495674 lambda!405221)))

(assert (=> d!2182228 (= (getWitness!1188 lt!2495674 lambda!405221) lt!2495889)))

(declare-fun b!7001105 () Bool)

(assert (=> b!7001105 (= e!4208204 (set.member lt!2495889 lt!2495674))))

(assert (= (and d!2182228 res!2855900) b!7001105))

(declare-fun b_lambda!263701 () Bool)

(assert (=> (not b_lambda!263701) (not d!2182228)))

(declare-fun m!7695332 () Bool)

(assert (=> d!2182228 m!7695332))

(assert (=> d!2182228 m!7694988))

(assert (=> d!2182228 m!7694988))

(declare-fun m!7695334 () Bool)

(assert (=> d!2182228 m!7695334))

(declare-fun m!7695336 () Bool)

(assert (=> d!2182228 m!7695336))

(declare-fun m!7695338 () Bool)

(assert (=> b!7001105 m!7695338))

(assert (=> b!7000899 d!2182228))

(declare-fun bs!1864833 () Bool)

(declare-fun d!2182230 () Bool)

(assert (= bs!1864833 (and d!2182230 b!7000899)))

(declare-fun lambda!405300 () Int)

(assert (=> bs!1864833 (= lambda!405300 lambda!405221)))

(declare-fun bs!1864834 () Bool)

(assert (= bs!1864834 (and d!2182230 d!2182226)))

(assert (=> bs!1864834 (not (= lambda!405300 lambda!405297))))

(assert (=> d!2182230 true))

(assert (=> d!2182230 (exists!3084 lt!2495683 lambda!405300)))

(declare-fun lt!2495892 () Unit!161196)

(declare-fun choose!52488 (List!67351 List!67350) Unit!161196)

(assert (=> d!2182230 (= lt!2495892 (choose!52488 lt!2495683 s!7408))))

(declare-fun content!13316 (List!67351) (Set Context!12528))

(assert (=> d!2182230 (matchZipper!2808 (content!13316 lt!2495683) s!7408)))

(assert (=> d!2182230 (= (lemmaZipperMatchesExistsMatchingContext!237 lt!2495683 s!7408) lt!2495892)))

(declare-fun bs!1864835 () Bool)

(assert (= bs!1864835 d!2182230))

(declare-fun m!7695340 () Bool)

(assert (=> bs!1864835 m!7695340))

(declare-fun m!7695342 () Bool)

(assert (=> bs!1864835 m!7695342))

(declare-fun m!7695344 () Bool)

(assert (=> bs!1864835 m!7695344))

(assert (=> bs!1864835 m!7695344))

(declare-fun m!7695346 () Bool)

(assert (=> bs!1864835 m!7695346))

(assert (=> b!7000899 d!2182230))

(declare-fun d!2182232 () Bool)

(declare-fun c!1299663 () Bool)

(assert (=> d!2182232 (= c!1299663 (isEmpty!39248 s!7408))))

(declare-fun e!4208205 () Bool)

(assert (=> d!2182232 (= (matchZipper!2808 lt!2495655 s!7408) e!4208205)))

(declare-fun b!7001106 () Bool)

(assert (=> b!7001106 (= e!4208205 (nullableZipper!2462 lt!2495655))))

(declare-fun b!7001107 () Bool)

(assert (=> b!7001107 (= e!4208205 (matchZipper!2808 (derivationStepZipper!2748 lt!2495655 (head!14142 s!7408)) (tail!13304 s!7408)))))

(assert (= (and d!2182232 c!1299663) b!7001106))

(assert (= (and d!2182232 (not c!1299663)) b!7001107))

(assert (=> d!2182232 m!7695222))

(declare-fun m!7695348 () Bool)

(assert (=> b!7001106 m!7695348))

(assert (=> b!7001107 m!7695226))

(assert (=> b!7001107 m!7695226))

(declare-fun m!7695350 () Bool)

(assert (=> b!7001107 m!7695350))

(assert (=> b!7001107 m!7695230))

(assert (=> b!7001107 m!7695350))

(assert (=> b!7001107 m!7695230))

(declare-fun m!7695352 () Bool)

(assert (=> b!7001107 m!7695352))

(assert (=> b!7000899 d!2182232))

(declare-fun d!2182234 () Bool)

(declare-fun e!4208208 () Bool)

(assert (=> d!2182234 e!4208208))

(declare-fun res!2855903 () Bool)

(assert (=> d!2182234 (=> (not res!2855903) (not e!4208208))))

(declare-fun lt!2495895 () List!67351)

(declare-fun noDuplicate!2544 (List!67351) Bool)

(assert (=> d!2182234 (= res!2855903 (noDuplicate!2544 lt!2495895))))

(declare-fun choose!52489 ((Set Context!12528)) List!67351)

(assert (=> d!2182234 (= lt!2495895 (choose!52489 lt!2495674))))

(assert (=> d!2182234 (= (toList!10628 lt!2495674) lt!2495895)))

(declare-fun b!7001110 () Bool)

(assert (=> b!7001110 (= e!4208208 (= (content!13316 lt!2495895) lt!2495674))))

(assert (= (and d!2182234 res!2855903) b!7001110))

(declare-fun m!7695354 () Bool)

(assert (=> d!2182234 m!7695354))

(declare-fun m!7695356 () Bool)

(assert (=> d!2182234 m!7695356))

(declare-fun m!7695358 () Bool)

(assert (=> b!7001110 m!7695358))

(assert (=> b!7000899 d!2182234))

(declare-fun d!2182236 () Bool)

(declare-fun c!1299664 () Bool)

(assert (=> d!2182236 (= c!1299664 (isEmpty!39248 lt!2495680))))

(declare-fun e!4208209 () Bool)

(assert (=> d!2182236 (= (matchZipper!2808 lt!2495687 lt!2495680) e!4208209)))

(declare-fun b!7001111 () Bool)

(assert (=> b!7001111 (= e!4208209 (nullableZipper!2462 lt!2495687))))

(declare-fun b!7001112 () Bool)

(assert (=> b!7001112 (= e!4208209 (matchZipper!2808 (derivationStepZipper!2748 lt!2495687 (head!14142 lt!2495680)) (tail!13304 lt!2495680)))))

(assert (= (and d!2182236 c!1299664) b!7001111))

(assert (= (and d!2182236 (not c!1299664)) b!7001112))

(assert (=> d!2182236 m!7695256))

(declare-fun m!7695360 () Bool)

(assert (=> b!7001111 m!7695360))

(assert (=> b!7001112 m!7695260))

(assert (=> b!7001112 m!7695260))

(declare-fun m!7695362 () Bool)

(assert (=> b!7001112 m!7695362))

(assert (=> b!7001112 m!7695264))

(assert (=> b!7001112 m!7695362))

(assert (=> b!7001112 m!7695264))

(declare-fun m!7695364 () Bool)

(assert (=> b!7001112 m!7695364))

(assert (=> b!7000901 d!2182236))

(declare-fun b!7001113 () Bool)

(declare-fun e!4208212 () (Set Context!12528))

(assert (=> b!7001113 (= e!4208212 (as set.empty (Set Context!12528)))))

(declare-fun call!635732 () (Set Context!12528))

(declare-fun e!4208210 () (Set Context!12528))

(declare-fun b!7001114 () Bool)

(assert (=> b!7001114 (= e!4208210 (set.union call!635732 (derivationStepZipperUp!1918 (Context!12529 (t!381102 (exprs!6764 lt!2495669))) (h!73674 s!7408))))))

(declare-fun b!7001115 () Bool)

(declare-fun e!4208211 () Bool)

(assert (=> b!7001115 (= e!4208211 (nullable!7028 (h!73673 (exprs!6764 lt!2495669))))))

(declare-fun d!2182238 () Bool)

(declare-fun c!1299666 () Bool)

(assert (=> d!2182238 (= c!1299666 e!4208211)))

(declare-fun res!2855904 () Bool)

(assert (=> d!2182238 (=> (not res!2855904) (not e!4208211))))

(assert (=> d!2182238 (= res!2855904 (is-Cons!67225 (exprs!6764 lt!2495669)))))

(assert (=> d!2182238 (= (derivationStepZipperUp!1918 lt!2495669 (h!73674 s!7408)) e!4208210)))

(declare-fun b!7001116 () Bool)

(assert (=> b!7001116 (= e!4208210 e!4208212)))

(declare-fun c!1299665 () Bool)

(assert (=> b!7001116 (= c!1299665 (is-Cons!67225 (exprs!6764 lt!2495669)))))

(declare-fun b!7001117 () Bool)

(assert (=> b!7001117 (= e!4208212 call!635732)))

(declare-fun bm!635727 () Bool)

(assert (=> bm!635727 (= call!635732 (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495669)) (Context!12529 (t!381102 (exprs!6764 lt!2495669))) (h!73674 s!7408)))))

(assert (= (and d!2182238 res!2855904) b!7001115))

(assert (= (and d!2182238 c!1299666) b!7001114))

(assert (= (and d!2182238 (not c!1299666)) b!7001116))

(assert (= (and b!7001116 c!1299665) b!7001117))

(assert (= (and b!7001116 (not c!1299665)) b!7001113))

(assert (= (or b!7001114 b!7001117) bm!635727))

(declare-fun m!7695366 () Bool)

(assert (=> b!7001114 m!7695366))

(declare-fun m!7695368 () Bool)

(assert (=> b!7001115 m!7695368))

(declare-fun m!7695370 () Bool)

(assert (=> bm!635727 m!7695370))

(assert (=> b!7000900 d!2182238))

(assert (=> b!7000900 d!2182202))

(declare-fun b!7001118 () Bool)

(declare-fun e!4208214 () List!67349)

(assert (=> b!7001118 (= e!4208214 (exprs!6764 ct2!306))))

(declare-fun lt!2495896 () List!67349)

(declare-fun e!4208213 () Bool)

(declare-fun b!7001121 () Bool)

(assert (=> b!7001121 (= e!4208213 (or (not (= (exprs!6764 ct2!306) Nil!67225)) (= lt!2495896 lt!2495681)))))

(declare-fun d!2182240 () Bool)

(assert (=> d!2182240 e!4208213))

(declare-fun res!2855906 () Bool)

(assert (=> d!2182240 (=> (not res!2855906) (not e!4208213))))

(assert (=> d!2182240 (= res!2855906 (= (content!13315 lt!2495896) (set.union (content!13315 lt!2495681) (content!13315 (exprs!6764 ct2!306)))))))

(assert (=> d!2182240 (= lt!2495896 e!4208214)))

(declare-fun c!1299667 () Bool)

(assert (=> d!2182240 (= c!1299667 (is-Nil!67225 lt!2495681))))

(assert (=> d!2182240 (= (++!15237 lt!2495681 (exprs!6764 ct2!306)) lt!2495896)))

(declare-fun b!7001119 () Bool)

(assert (=> b!7001119 (= e!4208214 (Cons!67225 (h!73673 lt!2495681) (++!15237 (t!381102 lt!2495681) (exprs!6764 ct2!306))))))

(declare-fun b!7001120 () Bool)

(declare-fun res!2855905 () Bool)

(assert (=> b!7001120 (=> (not res!2855905) (not e!4208213))))

(assert (=> b!7001120 (= res!2855905 (= (size!40939 lt!2495896) (+ (size!40939 lt!2495681) (size!40939 (exprs!6764 ct2!306)))))))

(assert (= (and d!2182240 c!1299667) b!7001118))

(assert (= (and d!2182240 (not c!1299667)) b!7001119))

(assert (= (and d!2182240 res!2855906) b!7001120))

(assert (= (and b!7001120 res!2855905) b!7001121))

(declare-fun m!7695372 () Bool)

(assert (=> d!2182240 m!7695372))

(declare-fun m!7695374 () Bool)

(assert (=> d!2182240 m!7695374))

(assert (=> d!2182240 m!7695290))

(declare-fun m!7695376 () Bool)

(assert (=> b!7001119 m!7695376))

(declare-fun m!7695378 () Bool)

(assert (=> b!7001120 m!7695378))

(declare-fun m!7695380 () Bool)

(assert (=> b!7001120 m!7695380))

(assert (=> b!7001120 m!7695298))

(assert (=> b!7000900 d!2182240))

(declare-fun b!7001122 () Bool)

(declare-fun e!4208218 () (Set Context!12528))

(assert (=> b!7001122 (= e!4208218 (set.insert lt!2495669 (as set.empty (Set Context!12528))))))

(declare-fun b!7001123 () Bool)

(declare-fun e!4208217 () (Set Context!12528))

(declare-fun call!635735 () (Set Context!12528))

(assert (=> b!7001123 (= e!4208217 call!635735)))

(declare-fun b!7001124 () Bool)

(declare-fun c!1299670 () Bool)

(declare-fun e!4208220 () Bool)

(assert (=> b!7001124 (= c!1299670 e!4208220)))

(declare-fun res!2855907 () Bool)

(assert (=> b!7001124 (=> (not res!2855907) (not e!4208220))))

(assert (=> b!7001124 (= res!2855907 (is-Concat!26113 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun e!4208215 () (Set Context!12528))

(declare-fun e!4208219 () (Set Context!12528))

(assert (=> b!7001124 (= e!4208215 e!4208219)))

(declare-fun bm!635728 () Bool)

(declare-fun call!635733 () List!67349)

(declare-fun call!635738 () List!67349)

(assert (=> bm!635728 (= call!635733 call!635738)))

(declare-fun bm!635729 () Bool)

(declare-fun call!635734 () (Set Context!12528))

(declare-fun call!635736 () (Set Context!12528))

(assert (=> bm!635729 (= call!635734 call!635736)))

(declare-fun d!2182242 () Bool)

(declare-fun c!1299669 () Bool)

(assert (=> d!2182242 (= c!1299669 (and (is-ElementMatch!17268 (h!73673 (exprs!6764 lt!2495649))) (= (c!1299610 (h!73673 (exprs!6764 lt!2495649))) (h!73674 s!7408))))))

(assert (=> d!2182242 (= (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495649)) lt!2495669 (h!73674 s!7408)) e!4208218)))

(declare-fun b!7001125 () Bool)

(assert (=> b!7001125 (= e!4208220 (nullable!7028 (regOne!35048 (h!73673 (exprs!6764 lt!2495649)))))))

(declare-fun bm!635730 () Bool)

(assert (=> bm!635730 (= call!635735 call!635734)))

(declare-fun call!635737 () (Set Context!12528))

(declare-fun c!1299672 () Bool)

(declare-fun bm!635731 () Bool)

(assert (=> bm!635731 (= call!635737 (derivationStepZipperDown!1986 (ite c!1299672 (regOne!35049 (h!73673 (exprs!6764 lt!2495649))) (regOne!35048 (h!73673 (exprs!6764 lt!2495649)))) (ite c!1299672 lt!2495669 (Context!12529 call!635738)) (h!73674 s!7408)))))

(declare-fun bm!635732 () Bool)

(declare-fun c!1299671 () Bool)

(assert (=> bm!635732 (= call!635736 (derivationStepZipperDown!1986 (ite c!1299672 (regTwo!35049 (h!73673 (exprs!6764 lt!2495649))) (ite c!1299670 (regTwo!35048 (h!73673 (exprs!6764 lt!2495649))) (ite c!1299671 (regOne!35048 (h!73673 (exprs!6764 lt!2495649))) (reg!17597 (h!73673 (exprs!6764 lt!2495649)))))) (ite (or c!1299672 c!1299670) lt!2495669 (Context!12529 call!635733)) (h!73674 s!7408)))))

(declare-fun b!7001126 () Bool)

(declare-fun e!4208216 () (Set Context!12528))

(assert (=> b!7001126 (= e!4208216 call!635735)))

(declare-fun b!7001127 () Bool)

(assert (=> b!7001127 (= e!4208218 e!4208215)))

(assert (=> b!7001127 (= c!1299672 (is-Union!17268 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun b!7001128 () Bool)

(assert (=> b!7001128 (= e!4208215 (set.union call!635737 call!635736))))

(declare-fun b!7001129 () Bool)

(assert (=> b!7001129 (= e!4208219 (set.union call!635737 call!635734))))

(declare-fun bm!635733 () Bool)

(assert (=> bm!635733 (= call!635738 ($colon$colon!2506 (exprs!6764 lt!2495669) (ite (or c!1299670 c!1299671) (regTwo!35048 (h!73673 (exprs!6764 lt!2495649))) (h!73673 (exprs!6764 lt!2495649)))))))

(declare-fun b!7001130 () Bool)

(assert (=> b!7001130 (= e!4208219 e!4208217)))

(assert (=> b!7001130 (= c!1299671 (is-Concat!26113 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun b!7001131 () Bool)

(declare-fun c!1299668 () Bool)

(assert (=> b!7001131 (= c!1299668 (is-Star!17268 (h!73673 (exprs!6764 lt!2495649))))))

(assert (=> b!7001131 (= e!4208217 e!4208216)))

(declare-fun b!7001132 () Bool)

(assert (=> b!7001132 (= e!4208216 (as set.empty (Set Context!12528)))))

(assert (= (and d!2182242 c!1299669) b!7001122))

(assert (= (and d!2182242 (not c!1299669)) b!7001127))

(assert (= (and b!7001127 c!1299672) b!7001128))

(assert (= (and b!7001127 (not c!1299672)) b!7001124))

(assert (= (and b!7001124 res!2855907) b!7001125))

(assert (= (and b!7001124 c!1299670) b!7001129))

(assert (= (and b!7001124 (not c!1299670)) b!7001130))

(assert (= (and b!7001130 c!1299671) b!7001123))

(assert (= (and b!7001130 (not c!1299671)) b!7001131))

(assert (= (and b!7001131 c!1299668) b!7001126))

(assert (= (and b!7001131 (not c!1299668)) b!7001132))

(assert (= (or b!7001123 b!7001126) bm!635728))

(assert (= (or b!7001123 b!7001126) bm!635730))

(assert (= (or b!7001129 bm!635730) bm!635729))

(assert (= (or b!7001129 bm!635728) bm!635733))

(assert (= (or b!7001128 b!7001129) bm!635731))

(assert (= (or b!7001128 bm!635729) bm!635732))

(declare-fun m!7695382 () Bool)

(assert (=> bm!635732 m!7695382))

(declare-fun m!7695384 () Bool)

(assert (=> bm!635733 m!7695384))

(declare-fun m!7695386 () Bool)

(assert (=> bm!635731 m!7695386))

(assert (=> b!7001122 m!7695060))

(assert (=> b!7001125 m!7695220))

(assert (=> b!7000900 d!2182242))

(declare-fun d!2182244 () Bool)

(declare-fun lt!2495899 () Int)

(assert (=> d!2182244 (>= lt!2495899 0)))

(declare-fun e!4208223 () Int)

(assert (=> d!2182244 (= lt!2495899 e!4208223)))

(declare-fun c!1299675 () Bool)

(assert (=> d!2182244 (= c!1299675 (is-Cons!67227 (Cons!67227 lt!2495684 Nil!67227)))))

(assert (=> d!2182244 (= (zipperDepthTotal!489 (Cons!67227 lt!2495684 Nil!67227)) lt!2495899)))

(declare-fun b!7001137 () Bool)

(assert (=> b!7001137 (= e!4208223 (+ (contextDepthTotal!461 (h!73675 (Cons!67227 lt!2495684 Nil!67227))) (zipperDepthTotal!489 (t!381104 (Cons!67227 lt!2495684 Nil!67227)))))))

(declare-fun b!7001138 () Bool)

(assert (=> b!7001138 (= e!4208223 0)))

(assert (= (and d!2182244 c!1299675) b!7001137))

(assert (= (and d!2182244 (not c!1299675)) b!7001138))

(declare-fun m!7695388 () Bool)

(assert (=> b!7001137 m!7695388))

(declare-fun m!7695390 () Bool)

(assert (=> b!7001137 m!7695390))

(assert (=> b!7000902 d!2182244))

(declare-fun bs!1864836 () Bool)

(declare-fun d!2182246 () Bool)

(assert (= bs!1864836 (and d!2182246 b!7000911)))

(declare-fun lambda!405303 () Int)

(assert (=> bs!1864836 (= lambda!405303 lambda!405224)))

(assert (=> d!2182246 true))

(assert (=> d!2182246 (= (derivationStepZipper!2748 lt!2495644 (h!73674 s!7408)) (flatMap!2254 lt!2495644 lambda!405303))))

(declare-fun bs!1864837 () Bool)

(assert (= bs!1864837 d!2182246))

(declare-fun m!7695392 () Bool)

(assert (=> bs!1864837 m!7695392))

(assert (=> b!7000882 d!2182246))

(declare-fun b!7001141 () Bool)

(declare-fun e!4208226 () (Set Context!12528))

(assert (=> b!7001141 (= e!4208226 (as set.empty (Set Context!12528)))))

(declare-fun e!4208224 () (Set Context!12528))

(declare-fun call!635739 () (Set Context!12528))

(declare-fun b!7001142 () Bool)

(assert (=> b!7001142 (= e!4208224 (set.union call!635739 (derivationStepZipperUp!1918 (Context!12529 (t!381102 (exprs!6764 lt!2495649))) (h!73674 s!7408))))))

(declare-fun b!7001143 () Bool)

(declare-fun e!4208225 () Bool)

(assert (=> b!7001143 (= e!4208225 (nullable!7028 (h!73673 (exprs!6764 lt!2495649))))))

(declare-fun d!2182248 () Bool)

(declare-fun c!1299679 () Bool)

(assert (=> d!2182248 (= c!1299679 e!4208225)))

(declare-fun res!2855908 () Bool)

(assert (=> d!2182248 (=> (not res!2855908) (not e!4208225))))

(assert (=> d!2182248 (= res!2855908 (is-Cons!67225 (exprs!6764 lt!2495649)))))

(assert (=> d!2182248 (= (derivationStepZipperUp!1918 lt!2495649 (h!73674 s!7408)) e!4208224)))

(declare-fun b!7001144 () Bool)

(assert (=> b!7001144 (= e!4208224 e!4208226)))

(declare-fun c!1299678 () Bool)

(assert (=> b!7001144 (= c!1299678 (is-Cons!67225 (exprs!6764 lt!2495649)))))

(declare-fun b!7001145 () Bool)

(assert (=> b!7001145 (= e!4208226 call!635739)))

(declare-fun bm!635734 () Bool)

(assert (=> bm!635734 (= call!635739 (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495649)) (Context!12529 (t!381102 (exprs!6764 lt!2495649))) (h!73674 s!7408)))))

(assert (= (and d!2182248 res!2855908) b!7001143))

(assert (= (and d!2182248 c!1299679) b!7001142))

(assert (= (and d!2182248 (not c!1299679)) b!7001144))

(assert (= (and b!7001144 c!1299678) b!7001145))

(assert (= (and b!7001144 (not c!1299678)) b!7001141))

(assert (= (or b!7001142 b!7001145) bm!635734))

(declare-fun m!7695394 () Bool)

(assert (=> b!7001142 m!7695394))

(assert (=> b!7001143 m!7695050))

(declare-fun m!7695396 () Bool)

(assert (=> bm!635734 m!7695396))

(assert (=> b!7000882 d!2182248))

(declare-fun d!2182250 () Bool)

(declare-fun choose!52490 ((Set Context!12528) Int) (Set Context!12528))

(assert (=> d!2182250 (= (flatMap!2254 lt!2495644 lambda!405224) (choose!52490 lt!2495644 lambda!405224))))

(declare-fun bs!1864838 () Bool)

(assert (= bs!1864838 d!2182250))

(declare-fun m!7695398 () Bool)

(assert (=> bs!1864838 m!7695398))

(assert (=> b!7000882 d!2182250))

(declare-fun d!2182252 () Bool)

(declare-fun dynLambda!27005 (Int Context!12528) (Set Context!12528))

(assert (=> d!2182252 (= (flatMap!2254 lt!2495644 lambda!405224) (dynLambda!27005 lambda!405224 lt!2495649))))

(declare-fun lt!2495902 () Unit!161196)

(declare-fun choose!52491 ((Set Context!12528) Context!12528 Int) Unit!161196)

(assert (=> d!2182252 (= lt!2495902 (choose!52491 lt!2495644 lt!2495649 lambda!405224))))

(assert (=> d!2182252 (= lt!2495644 (set.insert lt!2495649 (as set.empty (Set Context!12528))))))

(assert (=> d!2182252 (= (lemmaFlatMapOnSingletonSet!1769 lt!2495644 lt!2495649 lambda!405224) lt!2495902)))

(declare-fun b_lambda!263703 () Bool)

(assert (=> (not b_lambda!263703) (not d!2182252)))

(declare-fun bs!1864839 () Bool)

(assert (= bs!1864839 d!2182252))

(assert (=> bs!1864839 m!7694948))

(declare-fun m!7695400 () Bool)

(assert (=> bs!1864839 m!7695400))

(declare-fun m!7695402 () Bool)

(assert (=> bs!1864839 m!7695402))

(assert (=> bs!1864839 m!7694940))

(assert (=> b!7000882 d!2182252))

(declare-fun bs!1864840 () Bool)

(declare-fun d!2182254 () Bool)

(assert (= bs!1864840 (and d!2182254 b!7000884)))

(declare-fun lambda!405304 () Int)

(assert (=> bs!1864840 (= lambda!405304 lambda!405223)))

(declare-fun bs!1864841 () Bool)

(assert (= bs!1864841 (and d!2182254 d!2182198)))

(assert (=> bs!1864841 (= lambda!405304 lambda!405294)))

(assert (=> d!2182254 (= (inv!86030 setElem!48102) (forall!16184 (exprs!6764 setElem!48102) lambda!405304))))

(declare-fun bs!1864842 () Bool)

(assert (= bs!1864842 d!2182254))

(declare-fun m!7695404 () Bool)

(assert (=> bs!1864842 m!7695404))

(assert (=> setNonEmpty!48102 d!2182254))

(declare-fun d!2182256 () Bool)

(declare-fun lt!2495905 () Int)

(assert (=> d!2182256 (>= lt!2495905 0)))

(declare-fun e!4208229 () Int)

(assert (=> d!2182256 (= lt!2495905 e!4208229)))

(declare-fun c!1299683 () Bool)

(assert (=> d!2182256 (= c!1299683 (is-Cons!67225 (exprs!6764 lt!2495684)))))

(assert (=> d!2182256 (= (contextDepthTotal!461 lt!2495684) lt!2495905)))

(declare-fun b!7001150 () Bool)

(declare-fun regexDepthTotal!282 (Regex!17268) Int)

(assert (=> b!7001150 (= e!4208229 (+ (regexDepthTotal!282 (h!73673 (exprs!6764 lt!2495684))) (contextDepthTotal!461 (Context!12529 (t!381102 (exprs!6764 lt!2495684))))))))

(declare-fun b!7001151 () Bool)

(assert (=> b!7001151 (= e!4208229 1)))

(assert (= (and d!2182256 c!1299683) b!7001150))

(assert (= (and d!2182256 (not c!1299683)) b!7001151))

(declare-fun m!7695406 () Bool)

(assert (=> b!7001150 m!7695406))

(declare-fun m!7695408 () Bool)

(assert (=> b!7001150 m!7695408))

(assert (=> b!7000893 d!2182256))

(assert (=> b!7000893 d!2182190))

(declare-fun d!2182258 () Bool)

(declare-fun e!4208230 () Bool)

(assert (=> d!2182258 e!4208230))

(declare-fun res!2855909 () Bool)

(assert (=> d!2182258 (=> (not res!2855909) (not e!4208230))))

(declare-fun lt!2495906 () List!67351)

(assert (=> d!2182258 (= res!2855909 (noDuplicate!2544 lt!2495906))))

(assert (=> d!2182258 (= lt!2495906 (choose!52489 z1!570))))

(assert (=> d!2182258 (= (toList!10628 z1!570) lt!2495906)))

(declare-fun b!7001152 () Bool)

(assert (=> b!7001152 (= e!4208230 (= (content!13316 lt!2495906) z1!570))))

(assert (= (and d!2182258 res!2855909) b!7001152))

(declare-fun m!7695410 () Bool)

(assert (=> d!2182258 m!7695410))

(declare-fun m!7695412 () Bool)

(assert (=> d!2182258 m!7695412))

(declare-fun m!7695414 () Bool)

(assert (=> b!7001152 m!7695414))

(assert (=> b!7000893 d!2182258))

(assert (=> b!7000893 d!2182240))

(declare-fun d!2182260 () Bool)

(assert (=> d!2182260 (<= (contextDepthTotal!461 lt!2495649) (zipperDepthTotal!489 lt!2495656))))

(declare-fun lt!2495909 () Unit!161196)

(declare-fun choose!52492 (List!67351 Context!12528) Unit!161196)

(assert (=> d!2182260 (= lt!2495909 (choose!52492 lt!2495656 lt!2495649))))

(declare-fun contains!20424 (List!67351 Context!12528) Bool)

(assert (=> d!2182260 (contains!20424 lt!2495656 lt!2495649)))

(assert (=> d!2182260 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!29 lt!2495656 lt!2495649) lt!2495909)))

(declare-fun bs!1864843 () Bool)

(assert (= bs!1864843 d!2182260))

(assert (=> bs!1864843 m!7694970))

(assert (=> bs!1864843 m!7694954))

(declare-fun m!7695416 () Bool)

(assert (=> bs!1864843 m!7695416))

(declare-fun m!7695418 () Bool)

(assert (=> bs!1864843 m!7695418))

(assert (=> b!7000893 d!2182260))

(declare-fun d!2182262 () Bool)

(assert (=> d!2182262 (= (flatMap!2254 lt!2495641 lambda!405224) (dynLambda!27005 lambda!405224 lt!2495684))))

(declare-fun lt!2495910 () Unit!161196)

(assert (=> d!2182262 (= lt!2495910 (choose!52491 lt!2495641 lt!2495684 lambda!405224))))

(assert (=> d!2182262 (= lt!2495641 (set.insert lt!2495684 (as set.empty (Set Context!12528))))))

(assert (=> d!2182262 (= (lemmaFlatMapOnSingletonSet!1769 lt!2495641 lt!2495684 lambda!405224) lt!2495910)))

(declare-fun b_lambda!263705 () Bool)

(assert (=> (not b_lambda!263705) (not d!2182262)))

(declare-fun bs!1864844 () Bool)

(assert (= bs!1864844 d!2182262))

(assert (=> bs!1864844 m!7694962))

(declare-fun m!7695420 () Bool)

(assert (=> bs!1864844 m!7695420))

(declare-fun m!7695422 () Bool)

(assert (=> bs!1864844 m!7695422))

(assert (=> bs!1864844 m!7694974))

(assert (=> b!7000893 d!2182262))

(declare-fun d!2182264 () Bool)

(declare-fun lt!2495911 () Int)

(assert (=> d!2182264 (>= lt!2495911 0)))

(declare-fun e!4208231 () Int)

(assert (=> d!2182264 (= lt!2495911 e!4208231)))

(declare-fun c!1299685 () Bool)

(assert (=> d!2182264 (= c!1299685 (is-Cons!67225 (exprs!6764 lt!2495649)))))

(assert (=> d!2182264 (= (contextDepthTotal!461 lt!2495649) lt!2495911)))

(declare-fun b!7001153 () Bool)

(assert (=> b!7001153 (= e!4208231 (+ (regexDepthTotal!282 (h!73673 (exprs!6764 lt!2495649))) (contextDepthTotal!461 (Context!12529 (t!381102 (exprs!6764 lt!2495649))))))))

(declare-fun b!7001154 () Bool)

(assert (=> b!7001154 (= e!4208231 1)))

(assert (= (and d!2182264 c!1299685) b!7001153))

(assert (= (and d!2182264 (not c!1299685)) b!7001154))

(declare-fun m!7695424 () Bool)

(assert (=> b!7001153 m!7695424))

(declare-fun m!7695426 () Bool)

(assert (=> b!7001153 m!7695426))

(assert (=> b!7000893 d!2182264))

(assert (=> b!7000893 d!2182202))

(declare-fun d!2182266 () Bool)

(assert (=> d!2182266 (= (flatMap!2254 lt!2495641 lambda!405224) (choose!52490 lt!2495641 lambda!405224))))

(declare-fun bs!1864845 () Bool)

(assert (= bs!1864845 d!2182266))

(declare-fun m!7695428 () Bool)

(assert (=> bs!1864845 m!7695428))

(assert (=> b!7000893 d!2182266))

(declare-fun d!2182268 () Bool)

(declare-fun choose!52493 ((Set Context!12528) Int) (Set Context!12528))

(assert (=> d!2182268 (= (map!15549 lt!2495641 lambda!405222) (choose!52493 lt!2495641 lambda!405222))))

(declare-fun bs!1864846 () Bool)

(assert (= bs!1864846 d!2182268))

(declare-fun m!7695430 () Bool)

(assert (=> bs!1864846 m!7695430))

(assert (=> b!7000893 d!2182268))

(declare-fun d!2182270 () Bool)

(assert (=> d!2182270 (= (map!15549 lt!2495641 lambda!405222) (set.insert (dynLambda!27002 lambda!405222 lt!2495684) (as set.empty (Set Context!12528))))))

(declare-fun lt!2495914 () Unit!161196)

(declare-fun choose!52494 ((Set Context!12528) Context!12528 Int) Unit!161196)

(assert (=> d!2182270 (= lt!2495914 (choose!52494 lt!2495641 lt!2495684 lambda!405222))))

(assert (=> d!2182270 (= lt!2495641 (set.insert lt!2495684 (as set.empty (Set Context!12528))))))

(assert (=> d!2182270 (= (lemmaMapOnSingletonSet!333 lt!2495641 lt!2495684 lambda!405222) lt!2495914)))

(declare-fun b_lambda!263707 () Bool)

(assert (=> (not b_lambda!263707) (not d!2182270)))

(declare-fun bs!1864847 () Bool)

(assert (= bs!1864847 d!2182270))

(assert (=> bs!1864847 m!7694966))

(assert (=> bs!1864847 m!7694974))

(declare-fun m!7695432 () Bool)

(assert (=> bs!1864847 m!7695432))

(declare-fun m!7695434 () Bool)

(assert (=> bs!1864847 m!7695434))

(assert (=> bs!1864847 m!7695434))

(declare-fun m!7695436 () Bool)

(assert (=> bs!1864847 m!7695436))

(assert (=> b!7000893 d!2182270))

(declare-fun d!2182272 () Bool)

(declare-fun lt!2495915 () Int)

(assert (=> d!2182272 (>= lt!2495915 0)))

(declare-fun e!4208232 () Int)

(assert (=> d!2182272 (= lt!2495915 e!4208232)))

(declare-fun c!1299686 () Bool)

(assert (=> d!2182272 (= c!1299686 (is-Cons!67227 lt!2495656))))

(assert (=> d!2182272 (= (zipperDepthTotal!489 lt!2495656) lt!2495915)))

(declare-fun b!7001155 () Bool)

(assert (=> b!7001155 (= e!4208232 (+ (contextDepthTotal!461 (h!73675 lt!2495656)) (zipperDepthTotal!489 (t!381104 lt!2495656))))))

(declare-fun b!7001156 () Bool)

(assert (=> b!7001156 (= e!4208232 0)))

(assert (= (and d!2182272 c!1299686) b!7001155))

(assert (= (and d!2182272 (not c!1299686)) b!7001156))

(declare-fun m!7695438 () Bool)

(assert (=> b!7001155 m!7695438))

(declare-fun m!7695440 () Bool)

(assert (=> b!7001155 m!7695440))

(assert (=> b!7000893 d!2182272))

(assert (=> b!7000895 d!2182200))

(declare-fun d!2182274 () Bool)

(declare-fun isEmpty!39252 (Option!16773) Bool)

(assert (=> d!2182274 (= (isDefined!13474 lt!2495679) (not (isEmpty!39252 lt!2495679)))))

(declare-fun bs!1864848 () Bool)

(assert (= bs!1864848 d!2182274))

(declare-fun m!7695442 () Bool)

(assert (=> bs!1864848 m!7695442))

(assert (=> b!7000897 d!2182274))

(declare-fun d!2182276 () Bool)

(declare-fun c!1299687 () Bool)

(assert (=> d!2182276 (= c!1299687 (isEmpty!39248 (_1!37244 lt!2495658)))))

(declare-fun e!4208233 () Bool)

(assert (=> d!2182276 (= (matchZipper!2808 lt!2495641 (_1!37244 lt!2495658)) e!4208233)))

(declare-fun b!7001157 () Bool)

(assert (=> b!7001157 (= e!4208233 (nullableZipper!2462 lt!2495641))))

(declare-fun b!7001158 () Bool)

(assert (=> b!7001158 (= e!4208233 (matchZipper!2808 (derivationStepZipper!2748 lt!2495641 (head!14142 (_1!37244 lt!2495658))) (tail!13304 (_1!37244 lt!2495658))))))

(assert (= (and d!2182276 c!1299687) b!7001157))

(assert (= (and d!2182276 (not c!1299687)) b!7001158))

(assert (=> d!2182276 m!7694938))

(declare-fun m!7695444 () Bool)

(assert (=> b!7001157 m!7695444))

(assert (=> b!7001158 m!7695274))

(assert (=> b!7001158 m!7695274))

(declare-fun m!7695446 () Bool)

(assert (=> b!7001158 m!7695446))

(assert (=> b!7001158 m!7695028))

(assert (=> b!7001158 m!7695446))

(assert (=> b!7001158 m!7695028))

(declare-fun m!7695448 () Bool)

(assert (=> b!7001158 m!7695448))

(assert (=> b!7000897 d!2182276))

(declare-fun d!2182278 () Bool)

(assert (=> d!2182278 (isDefined!13474 (findConcatSeparationZippers!289 lt!2495641 (set.insert ct2!306 (as set.empty (Set Context!12528))) Nil!67226 s!7408 s!7408))))

(declare-fun lt!2495918 () Unit!161196)

(declare-fun choose!52495 ((Set Context!12528) Context!12528 List!67350) Unit!161196)

(assert (=> d!2182278 (= lt!2495918 (choose!52495 lt!2495641 ct2!306 s!7408))))

(assert (=> d!2182278 (matchZipper!2808 (appendTo!389 lt!2495641 ct2!306) s!7408)))

(assert (=> d!2182278 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!289 lt!2495641 ct2!306 s!7408) lt!2495918)))

(declare-fun bs!1864849 () Bool)

(assert (= bs!1864849 d!2182278))

(assert (=> bs!1864849 m!7695002))

(declare-fun m!7695450 () Bool)

(assert (=> bs!1864849 m!7695450))

(declare-fun m!7695452 () Bool)

(assert (=> bs!1864849 m!7695452))

(declare-fun m!7695454 () Bool)

(assert (=> bs!1864849 m!7695454))

(assert (=> bs!1864849 m!7695450))

(declare-fun m!7695456 () Bool)

(assert (=> bs!1864849 m!7695456))

(assert (=> bs!1864849 m!7695002))

(assert (=> bs!1864849 m!7695452))

(declare-fun m!7695458 () Bool)

(assert (=> bs!1864849 m!7695458))

(assert (=> b!7000897 d!2182278))

(declare-fun d!2182280 () Bool)

(assert (=> d!2182280 (= (get!23572 lt!2495679) (v!53050 lt!2495679))))

(assert (=> b!7000897 d!2182280))

(declare-fun b!7001177 () Bool)

(declare-fun e!4208245 () Option!16773)

(assert (=> b!7001177 (= e!4208245 (Some!16772 (tuple2!67883 Nil!67226 s!7408)))))

(declare-fun b!7001178 () Bool)

(declare-fun e!4208244 () Bool)

(declare-fun lt!2495925 () Option!16773)

(assert (=> b!7001178 (= e!4208244 (= (++!15238 (_1!37244 (get!23572 lt!2495925)) (_2!37244 (get!23572 lt!2495925))) s!7408))))

(declare-fun b!7001179 () Bool)

(declare-fun e!4208247 () Option!16773)

(assert (=> b!7001179 (= e!4208247 None!16772)))

(declare-fun b!7001180 () Bool)

(declare-fun lt!2495927 () Unit!161196)

(declare-fun lt!2495926 () Unit!161196)

(assert (=> b!7001180 (= lt!2495927 lt!2495926)))

(assert (=> b!7001180 (= (++!15238 (++!15238 Nil!67226 (Cons!67226 (h!73674 s!7408) Nil!67226)) (t!381103 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2882 (List!67350 C!34806 List!67350 List!67350) Unit!161196)

(assert (=> b!7001180 (= lt!2495926 (lemmaMoveElementToOtherListKeepsConcatEq!2882 Nil!67226 (h!73674 s!7408) (t!381103 s!7408) s!7408))))

(assert (=> b!7001180 (= e!4208247 (findConcatSeparationZippers!289 lt!2495641 lt!2495635 (++!15238 Nil!67226 (Cons!67226 (h!73674 s!7408) Nil!67226)) (t!381103 s!7408) s!7408))))

(declare-fun d!2182282 () Bool)

(declare-fun e!4208246 () Bool)

(assert (=> d!2182282 e!4208246))

(declare-fun res!2855924 () Bool)

(assert (=> d!2182282 (=> res!2855924 e!4208246)))

(assert (=> d!2182282 (= res!2855924 e!4208244)))

(declare-fun res!2855922 () Bool)

(assert (=> d!2182282 (=> (not res!2855922) (not e!4208244))))

(assert (=> d!2182282 (= res!2855922 (isDefined!13474 lt!2495925))))

(assert (=> d!2182282 (= lt!2495925 e!4208245)))

(declare-fun c!1299693 () Bool)

(declare-fun e!4208248 () Bool)

(assert (=> d!2182282 (= c!1299693 e!4208248)))

(declare-fun res!2855920 () Bool)

(assert (=> d!2182282 (=> (not res!2855920) (not e!4208248))))

(assert (=> d!2182282 (= res!2855920 (matchZipper!2808 lt!2495641 Nil!67226))))

(assert (=> d!2182282 (= (++!15238 Nil!67226 s!7408) s!7408)))

(assert (=> d!2182282 (= (findConcatSeparationZippers!289 lt!2495641 lt!2495635 Nil!67226 s!7408 s!7408) lt!2495925)))

(declare-fun b!7001181 () Bool)

(assert (=> b!7001181 (= e!4208248 (matchZipper!2808 lt!2495635 s!7408))))

(declare-fun b!7001182 () Bool)

(assert (=> b!7001182 (= e!4208245 e!4208247)))

(declare-fun c!1299692 () Bool)

(assert (=> b!7001182 (= c!1299692 (is-Nil!67226 s!7408))))

(declare-fun b!7001183 () Bool)

(declare-fun res!2855923 () Bool)

(assert (=> b!7001183 (=> (not res!2855923) (not e!4208244))))

(assert (=> b!7001183 (= res!2855923 (matchZipper!2808 lt!2495635 (_2!37244 (get!23572 lt!2495925))))))

(declare-fun b!7001184 () Bool)

(assert (=> b!7001184 (= e!4208246 (not (isDefined!13474 lt!2495925)))))

(declare-fun b!7001185 () Bool)

(declare-fun res!2855921 () Bool)

(assert (=> b!7001185 (=> (not res!2855921) (not e!4208244))))

(assert (=> b!7001185 (= res!2855921 (matchZipper!2808 lt!2495641 (_1!37244 (get!23572 lt!2495925))))))

(assert (= (and d!2182282 res!2855920) b!7001181))

(assert (= (and d!2182282 c!1299693) b!7001177))

(assert (= (and d!2182282 (not c!1299693)) b!7001182))

(assert (= (and b!7001182 c!1299692) b!7001179))

(assert (= (and b!7001182 (not c!1299692)) b!7001180))

(assert (= (and d!2182282 res!2855922) b!7001185))

(assert (= (and b!7001185 res!2855921) b!7001183))

(assert (= (and b!7001183 res!2855923) b!7001178))

(assert (= (and d!2182282 (not res!2855924)) b!7001184))

(declare-fun m!7695460 () Bool)

(assert (=> d!2182282 m!7695460))

(declare-fun m!7695462 () Bool)

(assert (=> d!2182282 m!7695462))

(declare-fun m!7695464 () Bool)

(assert (=> d!2182282 m!7695464))

(assert (=> b!7001184 m!7695460))

(declare-fun m!7695466 () Bool)

(assert (=> b!7001180 m!7695466))

(assert (=> b!7001180 m!7695466))

(declare-fun m!7695468 () Bool)

(assert (=> b!7001180 m!7695468))

(declare-fun m!7695470 () Bool)

(assert (=> b!7001180 m!7695470))

(assert (=> b!7001180 m!7695466))

(declare-fun m!7695472 () Bool)

(assert (=> b!7001180 m!7695472))

(declare-fun m!7695474 () Bool)

(assert (=> b!7001185 m!7695474))

(declare-fun m!7695476 () Bool)

(assert (=> b!7001185 m!7695476))

(assert (=> b!7001183 m!7695474))

(declare-fun m!7695478 () Bool)

(assert (=> b!7001183 m!7695478))

(assert (=> b!7001178 m!7695474))

(declare-fun m!7695480 () Bool)

(assert (=> b!7001178 m!7695480))

(declare-fun m!7695482 () Bool)

(assert (=> b!7001181 m!7695482))

(assert (=> b!7000897 d!2182282))

(assert (=> b!7000896 d!2182238))

(declare-fun bs!1864850 () Bool)

(declare-fun d!2182284 () Bool)

(assert (= bs!1864850 (and d!2182284 b!7000911)))

(declare-fun lambda!405305 () Int)

(assert (=> bs!1864850 (= lambda!405305 lambda!405224)))

(declare-fun bs!1864851 () Bool)

(assert (= bs!1864851 (and d!2182284 d!2182246)))

(assert (=> bs!1864851 (= lambda!405305 lambda!405303)))

(assert (=> d!2182284 true))

(assert (=> d!2182284 (= (derivationStepZipper!2748 lt!2495686 (h!73674 s!7408)) (flatMap!2254 lt!2495686 lambda!405305))))

(declare-fun bs!1864852 () Bool)

(assert (= bs!1864852 d!2182284))

(declare-fun m!7695484 () Bool)

(assert (=> bs!1864852 m!7695484))

(assert (=> b!7000896 d!2182284))

(declare-fun d!2182286 () Bool)

(assert (=> d!2182286 (= (flatMap!2254 lt!2495686 lambda!405224) (choose!52490 lt!2495686 lambda!405224))))

(declare-fun bs!1864853 () Bool)

(assert (= bs!1864853 d!2182286))

(declare-fun m!7695486 () Bool)

(assert (=> bs!1864853 m!7695486))

(assert (=> b!7000896 d!2182286))

(declare-fun d!2182288 () Bool)

(assert (=> d!2182288 (= (flatMap!2254 lt!2495686 lambda!405224) (dynLambda!27005 lambda!405224 lt!2495669))))

(declare-fun lt!2495928 () Unit!161196)

(assert (=> d!2182288 (= lt!2495928 (choose!52491 lt!2495686 lt!2495669 lambda!405224))))

(assert (=> d!2182288 (= lt!2495686 (set.insert lt!2495669 (as set.empty (Set Context!12528))))))

(assert (=> d!2182288 (= (lemmaFlatMapOnSingletonSet!1769 lt!2495686 lt!2495669 lambda!405224) lt!2495928)))

(declare-fun b_lambda!263709 () Bool)

(assert (=> (not b_lambda!263709) (not d!2182288)))

(declare-fun bs!1864854 () Bool)

(assert (= bs!1864854 d!2182288))

(assert (=> bs!1864854 m!7695064))

(declare-fun m!7695488 () Bool)

(assert (=> bs!1864854 m!7695488))

(declare-fun m!7695490 () Bool)

(assert (=> bs!1864854 m!7695490))

(assert (=> bs!1864854 m!7695060))

(assert (=> b!7000896 d!2182288))

(assert (=> b!7000896 d!2182202))

(declare-fun d!2182290 () Bool)

(assert (=> d!2182290 (= (isEmpty!39249 (exprs!6764 lt!2495649)) (is-Nil!67225 (exprs!6764 lt!2495649)))))

(assert (=> b!7000908 d!2182290))

(declare-fun d!2182292 () Bool)

(assert (=> d!2182292 (= (isEmpty!39248 (_1!37244 lt!2495658)) (is-Nil!67226 (_1!37244 lt!2495658)))))

(assert (=> b!7000907 d!2182292))

(declare-fun d!2182294 () Bool)

(declare-fun e!4208253 () Bool)

(assert (=> d!2182294 e!4208253))

(declare-fun res!2855929 () Bool)

(assert (=> d!2182294 (=> (not res!2855929) (not e!4208253))))

(declare-fun lt!2495931 () List!67350)

(declare-fun content!13317 (List!67350) (Set C!34806))

(assert (=> d!2182294 (= res!2855929 (= (content!13317 lt!2495931) (set.union (content!13317 (_1!37244 lt!2495658)) (content!13317 (_2!37244 lt!2495658)))))))

(declare-fun e!4208254 () List!67350)

(assert (=> d!2182294 (= lt!2495931 e!4208254)))

(declare-fun c!1299696 () Bool)

(assert (=> d!2182294 (= c!1299696 (is-Nil!67226 (_1!37244 lt!2495658)))))

(assert (=> d!2182294 (= (++!15238 (_1!37244 lt!2495658) (_2!37244 lt!2495658)) lt!2495931)))

(declare-fun b!7001195 () Bool)

(assert (=> b!7001195 (= e!4208254 (Cons!67226 (h!73674 (_1!37244 lt!2495658)) (++!15238 (t!381103 (_1!37244 lt!2495658)) (_2!37244 lt!2495658))))))

(declare-fun b!7001197 () Bool)

(assert (=> b!7001197 (= e!4208253 (or (not (= (_2!37244 lt!2495658) Nil!67226)) (= lt!2495931 (_1!37244 lt!2495658))))))

(declare-fun b!7001196 () Bool)

(declare-fun res!2855930 () Bool)

(assert (=> b!7001196 (=> (not res!2855930) (not e!4208253))))

(declare-fun size!40940 (List!67350) Int)

(assert (=> b!7001196 (= res!2855930 (= (size!40940 lt!2495931) (+ (size!40940 (_1!37244 lt!2495658)) (size!40940 (_2!37244 lt!2495658)))))))

(declare-fun b!7001194 () Bool)

(assert (=> b!7001194 (= e!4208254 (_2!37244 lt!2495658))))

(assert (= (and d!2182294 c!1299696) b!7001194))

(assert (= (and d!2182294 (not c!1299696)) b!7001195))

(assert (= (and d!2182294 res!2855929) b!7001196))

(assert (= (and b!7001196 res!2855930) b!7001197))

(declare-fun m!7695492 () Bool)

(assert (=> d!2182294 m!7695492))

(declare-fun m!7695494 () Bool)

(assert (=> d!2182294 m!7695494))

(declare-fun m!7695496 () Bool)

(assert (=> d!2182294 m!7695496))

(declare-fun m!7695498 () Bool)

(assert (=> b!7001195 m!7695498))

(declare-fun m!7695500 () Bool)

(assert (=> b!7001196 m!7695500))

(declare-fun m!7695502 () Bool)

(assert (=> b!7001196 m!7695502))

(declare-fun m!7695504 () Bool)

(assert (=> b!7001196 m!7695504))

(assert (=> b!7000888 d!2182294))

(assert (=> b!7000889 d!2182200))

(assert (=> b!7000889 d!2182202))

(declare-fun d!2182296 () Bool)

(declare-fun c!1299697 () Bool)

(assert (=> d!2182296 (= c!1299697 (isEmpty!39248 (t!381103 s!7408)))))

(declare-fun e!4208255 () Bool)

(assert (=> d!2182296 (= (matchZipper!2808 lt!2495628 (t!381103 s!7408)) e!4208255)))

(declare-fun b!7001198 () Bool)

(assert (=> b!7001198 (= e!4208255 (nullableZipper!2462 lt!2495628))))

(declare-fun b!7001199 () Bool)

(assert (=> b!7001199 (= e!4208255 (matchZipper!2808 (derivationStepZipper!2748 lt!2495628 (head!14142 (t!381103 s!7408))) (tail!13304 (t!381103 s!7408))))))

(assert (= (and d!2182296 c!1299697) b!7001198))

(assert (= (and d!2182296 (not c!1299697)) b!7001199))

(assert (=> d!2182296 m!7695238))

(declare-fun m!7695506 () Bool)

(assert (=> b!7001198 m!7695506))

(assert (=> b!7001199 m!7695242))

(assert (=> b!7001199 m!7695242))

(declare-fun m!7695508 () Bool)

(assert (=> b!7001199 m!7695508))

(assert (=> b!7001199 m!7695246))

(assert (=> b!7001199 m!7695508))

(assert (=> b!7001199 m!7695246))

(declare-fun m!7695510 () Bool)

(assert (=> b!7001199 m!7695510))

(assert (=> b!7000891 d!2182296))

(declare-fun e!4208256 () Bool)

(declare-fun d!2182298 () Bool)

(assert (=> d!2182298 (= (matchZipper!2808 (set.union lt!2495682 lt!2495638) (t!381103 s!7408)) e!4208256)))

(declare-fun res!2855931 () Bool)

(assert (=> d!2182298 (=> res!2855931 e!4208256)))

(assert (=> d!2182298 (= res!2855931 (matchZipper!2808 lt!2495682 (t!381103 s!7408)))))

(declare-fun lt!2495932 () Unit!161196)

(assert (=> d!2182298 (= lt!2495932 (choose!52486 lt!2495682 lt!2495638 (t!381103 s!7408)))))

(assert (=> d!2182298 (= (lemmaZipperConcatMatchesSameAsBothZippers!1441 lt!2495682 lt!2495638 (t!381103 s!7408)) lt!2495932)))

(declare-fun b!7001200 () Bool)

(assert (=> b!7001200 (= e!4208256 (matchZipper!2808 lt!2495638 (t!381103 s!7408)))))

(assert (= (and d!2182298 (not res!2855931)) b!7001200))

(declare-fun m!7695512 () Bool)

(assert (=> d!2182298 m!7695512))

(assert (=> d!2182298 m!7695046))

(declare-fun m!7695514 () Bool)

(assert (=> d!2182298 m!7695514))

(assert (=> b!7001200 m!7694932))

(assert (=> b!7000891 d!2182298))

(declare-fun d!2182300 () Bool)

(declare-fun c!1299698 () Bool)

(assert (=> d!2182300 (= c!1299698 (isEmpty!39248 (t!381103 s!7408)))))

(declare-fun e!4208257 () Bool)

(assert (=> d!2182300 (= (matchZipper!2808 lt!2495631 (t!381103 s!7408)) e!4208257)))

(declare-fun b!7001201 () Bool)

(assert (=> b!7001201 (= e!4208257 (nullableZipper!2462 lt!2495631))))

(declare-fun b!7001202 () Bool)

(assert (=> b!7001202 (= e!4208257 (matchZipper!2808 (derivationStepZipper!2748 lt!2495631 (head!14142 (t!381103 s!7408))) (tail!13304 (t!381103 s!7408))))))

(assert (= (and d!2182300 c!1299698) b!7001201))

(assert (= (and d!2182300 (not c!1299698)) b!7001202))

(assert (=> d!2182300 m!7695238))

(declare-fun m!7695516 () Bool)

(assert (=> b!7001201 m!7695516))

(assert (=> b!7001202 m!7695242))

(assert (=> b!7001202 m!7695242))

(declare-fun m!7695518 () Bool)

(assert (=> b!7001202 m!7695518))

(assert (=> b!7001202 m!7695246))

(assert (=> b!7001202 m!7695518))

(assert (=> b!7001202 m!7695246))

(declare-fun m!7695520 () Bool)

(assert (=> b!7001202 m!7695520))

(assert (=> b!7000891 d!2182300))

(declare-fun d!2182302 () Bool)

(declare-fun c!1299699 () Bool)

(assert (=> d!2182302 (= c!1299699 (isEmpty!39248 (t!381103 s!7408)))))

(declare-fun e!4208258 () Bool)

(assert (=> d!2182302 (= (matchZipper!2808 lt!2495682 (t!381103 s!7408)) e!4208258)))

(declare-fun b!7001203 () Bool)

(assert (=> b!7001203 (= e!4208258 (nullableZipper!2462 lt!2495682))))

(declare-fun b!7001204 () Bool)

(assert (=> b!7001204 (= e!4208258 (matchZipper!2808 (derivationStepZipper!2748 lt!2495682 (head!14142 (t!381103 s!7408))) (tail!13304 (t!381103 s!7408))))))

(assert (= (and d!2182302 c!1299699) b!7001203))

(assert (= (and d!2182302 (not c!1299699)) b!7001204))

(assert (=> d!2182302 m!7695238))

(declare-fun m!7695522 () Bool)

(assert (=> b!7001203 m!7695522))

(assert (=> b!7001204 m!7695242))

(assert (=> b!7001204 m!7695242))

(declare-fun m!7695524 () Bool)

(assert (=> b!7001204 m!7695524))

(assert (=> b!7001204 m!7695246))

(assert (=> b!7001204 m!7695524))

(assert (=> b!7001204 m!7695246))

(declare-fun m!7695526 () Bool)

(assert (=> b!7001204 m!7695526))

(assert (=> b!7000891 d!2182302))

(assert (=> b!7000891 d!2182202))

(declare-fun d!2182304 () Bool)

(declare-fun c!1299700 () Bool)

(assert (=> d!2182304 (= c!1299700 (isEmpty!39248 s!7408))))

(declare-fun e!4208259 () Bool)

(assert (=> d!2182304 (= (matchZipper!2808 lt!2495686 s!7408) e!4208259)))

(declare-fun b!7001205 () Bool)

(assert (=> b!7001205 (= e!4208259 (nullableZipper!2462 lt!2495686))))

(declare-fun b!7001206 () Bool)

(assert (=> b!7001206 (= e!4208259 (matchZipper!2808 (derivationStepZipper!2748 lt!2495686 (head!14142 s!7408)) (tail!13304 s!7408)))))

(assert (= (and d!2182304 c!1299700) b!7001205))

(assert (= (and d!2182304 (not c!1299700)) b!7001206))

(assert (=> d!2182304 m!7695222))

(declare-fun m!7695528 () Bool)

(assert (=> b!7001205 m!7695528))

(assert (=> b!7001206 m!7695226))

(assert (=> b!7001206 m!7695226))

(declare-fun m!7695530 () Bool)

(assert (=> b!7001206 m!7695530))

(assert (=> b!7001206 m!7695230))

(assert (=> b!7001206 m!7695530))

(assert (=> b!7001206 m!7695230))

(declare-fun m!7695532 () Bool)

(assert (=> b!7001206 m!7695532))

(assert (=> b!7000910 d!2182304))

(assert (=> b!7000910 d!2182202))

(assert (=> b!7000911 d!2182216))

(declare-fun bs!1864855 () Bool)

(declare-fun d!2182306 () Bool)

(assert (= bs!1864855 (and d!2182306 b!7000911)))

(declare-fun lambda!405306 () Int)

(assert (=> bs!1864855 (= lambda!405306 lambda!405224)))

(declare-fun bs!1864856 () Bool)

(assert (= bs!1864856 (and d!2182306 d!2182246)))

(assert (=> bs!1864856 (= lambda!405306 lambda!405303)))

(declare-fun bs!1864857 () Bool)

(assert (= bs!1864857 (and d!2182306 d!2182284)))

(assert (=> bs!1864857 (= lambda!405306 lambda!405305)))

(assert (=> d!2182306 true))

(assert (=> d!2182306 (= (derivationStepZipper!2748 lt!2495671 (h!73674 s!7408)) (flatMap!2254 lt!2495671 lambda!405306))))

(declare-fun bs!1864858 () Bool)

(assert (= bs!1864858 d!2182306))

(declare-fun m!7695534 () Bool)

(assert (=> bs!1864858 m!7695534))

(assert (=> b!7000911 d!2182306))

(declare-fun d!2182308 () Bool)

(assert (=> d!2182308 (= (flatMap!2254 lt!2495671 lambda!405224) (choose!52490 lt!2495671 lambda!405224))))

(declare-fun bs!1864859 () Bool)

(assert (= bs!1864859 d!2182308))

(declare-fun m!7695536 () Bool)

(assert (=> bs!1864859 m!7695536))

(assert (=> b!7000911 d!2182308))

(declare-fun b!7001207 () Bool)

(declare-fun e!4208262 () (Set Context!12528))

(assert (=> b!7001207 (= e!4208262 (as set.empty (Set Context!12528)))))

(declare-fun call!635740 () (Set Context!12528))

(declare-fun e!4208260 () (Set Context!12528))

(declare-fun b!7001208 () Bool)

(assert (=> b!7001208 (= e!4208260 (set.union call!635740 (derivationStepZipperUp!1918 (Context!12529 (t!381102 (exprs!6764 lt!2495651))) (h!73674 s!7408))))))

(declare-fun b!7001209 () Bool)

(declare-fun e!4208261 () Bool)

(assert (=> b!7001209 (= e!4208261 (nullable!7028 (h!73673 (exprs!6764 lt!2495651))))))

(declare-fun d!2182310 () Bool)

(declare-fun c!1299702 () Bool)

(assert (=> d!2182310 (= c!1299702 e!4208261)))

(declare-fun res!2855932 () Bool)

(assert (=> d!2182310 (=> (not res!2855932) (not e!4208261))))

(assert (=> d!2182310 (= res!2855932 (is-Cons!67225 (exprs!6764 lt!2495651)))))

(assert (=> d!2182310 (= (derivationStepZipperUp!1918 lt!2495651 (h!73674 s!7408)) e!4208260)))

(declare-fun b!7001210 () Bool)

(assert (=> b!7001210 (= e!4208260 e!4208262)))

(declare-fun c!1299701 () Bool)

(assert (=> b!7001210 (= c!1299701 (is-Cons!67225 (exprs!6764 lt!2495651)))))

(declare-fun b!7001211 () Bool)

(assert (=> b!7001211 (= e!4208262 call!635740)))

(declare-fun bm!635735 () Bool)

(assert (=> bm!635735 (= call!635740 (derivationStepZipperDown!1986 (h!73673 (exprs!6764 lt!2495651)) (Context!12529 (t!381102 (exprs!6764 lt!2495651))) (h!73674 s!7408)))))

(assert (= (and d!2182310 res!2855932) b!7001209))

(assert (= (and d!2182310 c!1299702) b!7001208))

(assert (= (and d!2182310 (not c!1299702)) b!7001210))

(assert (= (and b!7001210 c!1299701) b!7001211))

(assert (= (and b!7001210 (not c!1299701)) b!7001207))

(assert (= (or b!7001208 b!7001211) bm!635735))

(declare-fun m!7695538 () Bool)

(assert (=> b!7001208 m!7695538))

(declare-fun m!7695540 () Bool)

(assert (=> b!7001209 m!7695540))

(declare-fun m!7695542 () Bool)

(assert (=> bm!635735 m!7695542))

(assert (=> b!7000911 d!2182310))

(declare-fun d!2182312 () Bool)

(assert (=> d!2182312 (= (flatMap!2254 lt!2495671 lambda!405224) (dynLambda!27005 lambda!405224 lt!2495651))))

(declare-fun lt!2495933 () Unit!161196)

(assert (=> d!2182312 (= lt!2495933 (choose!52491 lt!2495671 lt!2495651 lambda!405224))))

(assert (=> d!2182312 (= lt!2495671 (set.insert lt!2495651 (as set.empty (Set Context!12528))))))

(assert (=> d!2182312 (= (lemmaFlatMapOnSingletonSet!1769 lt!2495671 lt!2495651 lambda!405224) lt!2495933)))

(declare-fun b_lambda!263711 () Bool)

(assert (=> (not b_lambda!263711) (not d!2182312)))

(declare-fun bs!1864860 () Bool)

(assert (= bs!1864860 d!2182312))

(assert (=> bs!1864860 m!7694998))

(declare-fun m!7695544 () Bool)

(assert (=> bs!1864860 m!7695544))

(declare-fun m!7695546 () Bool)

(assert (=> bs!1864860 m!7695546))

(assert (=> bs!1864860 m!7695056))

(assert (=> b!7000911 d!2182312))

(declare-fun condSetEmpty!48108 () Bool)

(assert (=> setNonEmpty!48102 (= condSetEmpty!48108 (= setRest!48102 (as set.empty (Set Context!12528))))))

(declare-fun setRes!48108 () Bool)

(assert (=> setNonEmpty!48102 (= tp!1931121 setRes!48108)))

(declare-fun setIsEmpty!48108 () Bool)

(assert (=> setIsEmpty!48108 setRes!48108))

(declare-fun e!4208265 () Bool)

(declare-fun setElem!48108 () Context!12528)

(declare-fun setNonEmpty!48108 () Bool)

(declare-fun tp!1931141 () Bool)

(assert (=> setNonEmpty!48108 (= setRes!48108 (and tp!1931141 (inv!86030 setElem!48108) e!4208265))))

(declare-fun setRest!48108 () (Set Context!12528))

(assert (=> setNonEmpty!48108 (= setRest!48102 (set.union (set.insert setElem!48108 (as set.empty (Set Context!12528))) setRest!48108))))

(declare-fun b!7001216 () Bool)

(declare-fun tp!1931142 () Bool)

(assert (=> b!7001216 (= e!4208265 tp!1931142)))

(assert (= (and setNonEmpty!48102 condSetEmpty!48108) setIsEmpty!48108))

(assert (= (and setNonEmpty!48102 (not condSetEmpty!48108)) setNonEmpty!48108))

(assert (= setNonEmpty!48108 b!7001216))

(declare-fun m!7695548 () Bool)

(assert (=> setNonEmpty!48108 m!7695548))

(declare-fun b!7001221 () Bool)

(declare-fun e!4208268 () Bool)

(declare-fun tp!1931145 () Bool)

(assert (=> b!7001221 (= e!4208268 (and tp_is_empty!43761 tp!1931145))))

(assert (=> b!7000890 (= tp!1931122 e!4208268)))

(assert (= (and b!7000890 (is-Cons!67226 (t!381103 s!7408))) b!7001221))

(declare-fun b!7001226 () Bool)

(declare-fun e!4208271 () Bool)

(declare-fun tp!1931150 () Bool)

(declare-fun tp!1931151 () Bool)

(assert (=> b!7001226 (= e!4208271 (and tp!1931150 tp!1931151))))

(assert (=> b!7000886 (= tp!1931123 e!4208271)))

(assert (= (and b!7000886 (is-Cons!67225 (exprs!6764 setElem!48102))) b!7001226))

(declare-fun b!7001227 () Bool)

(declare-fun e!4208272 () Bool)

(declare-fun tp!1931152 () Bool)

(declare-fun tp!1931153 () Bool)

(assert (=> b!7001227 (= e!4208272 (and tp!1931152 tp!1931153))))

(assert (=> b!7000912 (= tp!1931124 e!4208272)))

(assert (= (and b!7000912 (is-Cons!67225 (exprs!6764 ct2!306))) b!7001227))

(declare-fun b_lambda!263713 () Bool)

(assert (= b_lambda!263699 (or b!7000884 b_lambda!263713)))

(declare-fun bs!1864861 () Bool)

(declare-fun d!2182314 () Bool)

(assert (= bs!1864861 (and d!2182314 b!7000884)))

(declare-fun lt!2495934 () Unit!161196)

(assert (=> bs!1864861 (= lt!2495934 (lemmaConcatPreservesForall!604 (exprs!6764 lt!2495886) (exprs!6764 ct2!306) lambda!405223))))

(assert (=> bs!1864861 (= (dynLambda!27002 lambda!405222 lt!2495886) (Context!12529 (++!15237 (exprs!6764 lt!2495886) (exprs!6764 ct2!306))))))

(declare-fun m!7695550 () Bool)

(assert (=> bs!1864861 m!7695550))

(declare-fun m!7695552 () Bool)

(assert (=> bs!1864861 m!7695552))

(assert (=> d!2182218 d!2182314))

(declare-fun b_lambda!263715 () Bool)

(assert (= b_lambda!263705 (or b!7000911 b_lambda!263715)))

(declare-fun bs!1864862 () Bool)

(declare-fun d!2182316 () Bool)

(assert (= bs!1864862 (and d!2182316 b!7000911)))

(assert (=> bs!1864862 (= (dynLambda!27005 lambda!405224 lt!2495684) (derivationStepZipperUp!1918 lt!2495684 (h!73674 s!7408)))))

(assert (=> bs!1864862 m!7694950))

(assert (=> d!2182262 d!2182316))

(declare-fun b_lambda!263717 () Bool)

(assert (= b_lambda!263703 (or b!7000911 b_lambda!263717)))

(declare-fun bs!1864863 () Bool)

(declare-fun d!2182318 () Bool)

(assert (= bs!1864863 (and d!2182318 b!7000911)))

(assert (=> bs!1864863 (= (dynLambda!27005 lambda!405224 lt!2495649) (derivationStepZipperUp!1918 lt!2495649 (h!73674 s!7408)))))

(assert (=> bs!1864863 m!7694946))

(assert (=> d!2182252 d!2182318))

(declare-fun b_lambda!263719 () Bool)

(assert (= b_lambda!263711 (or b!7000911 b_lambda!263719)))

(declare-fun bs!1864864 () Bool)

(declare-fun d!2182320 () Bool)

(assert (= bs!1864864 (and d!2182320 b!7000911)))

(assert (=> bs!1864864 (= (dynLambda!27005 lambda!405224 lt!2495651) (derivationStepZipperUp!1918 lt!2495651 (h!73674 s!7408)))))

(assert (=> bs!1864864 m!7694994))

(assert (=> d!2182312 d!2182320))

(declare-fun b_lambda!263721 () Bool)

(assert (= b_lambda!263709 (or b!7000911 b_lambda!263721)))

(declare-fun bs!1864865 () Bool)

(declare-fun d!2182322 () Bool)

(assert (= bs!1864865 (and d!2182322 b!7000911)))

(assert (=> bs!1864865 (= (dynLambda!27005 lambda!405224 lt!2495669) (derivationStepZipperUp!1918 lt!2495669 (h!73674 s!7408)))))

(assert (=> bs!1864865 m!7695016))

(assert (=> d!2182288 d!2182322))

(declare-fun b_lambda!263723 () Bool)

(assert (= b_lambda!263707 (or b!7000884 b_lambda!263723)))

(declare-fun bs!1864866 () Bool)

(declare-fun d!2182324 () Bool)

(assert (= bs!1864866 (and d!2182324 b!7000884)))

(declare-fun lt!2495935 () Unit!161196)

(assert (=> bs!1864866 (= lt!2495935 (lemmaConcatPreservesForall!604 (exprs!6764 lt!2495684) (exprs!6764 ct2!306) lambda!405223))))

(assert (=> bs!1864866 (= (dynLambda!27002 lambda!405222 lt!2495684) (Context!12529 (++!15237 (exprs!6764 lt!2495684) (exprs!6764 ct2!306))))))

(declare-fun m!7695554 () Bool)

(assert (=> bs!1864866 m!7695554))

(declare-fun m!7695556 () Bool)

(assert (=> bs!1864866 m!7695556))

(assert (=> d!2182270 d!2182324))

(declare-fun b_lambda!263725 () Bool)

(assert (= b_lambda!263701 (or b!7000899 b_lambda!263725)))

(declare-fun bs!1864867 () Bool)

(declare-fun d!2182326 () Bool)

(assert (= bs!1864867 (and d!2182326 b!7000899)))

(assert (=> bs!1864867 (= (dynLambda!27004 lambda!405221 lt!2495889) (matchZipper!2808 (set.insert lt!2495889 (as set.empty (Set Context!12528))) s!7408))))

(declare-fun m!7695558 () Bool)

(assert (=> bs!1864867 m!7695558))

(assert (=> bs!1864867 m!7695558))

(declare-fun m!7695560 () Bool)

(assert (=> bs!1864867 m!7695560))

(assert (=> d!2182228 d!2182326))

(push 1)

(assert (not bs!1864865))

(assert (not b!7001196))

(assert (not d!2182254))

(assert (not d!2182300))

(assert (not b!7001185))

(assert (not b!7001074))

(assert (not b_lambda!263725))

(assert (not b!7001143))

(assert (not b!7001184))

(assert (not d!2182212))

(assert (not d!2182246))

(assert (not d!2182260))

(assert (not b!7001152))

(assert (not b!7001227))

(assert (not b!7001111))

(assert (not d!2182236))

(assert (not b!7001078))

(assert (not b!7001106))

(assert (not bs!1864864))

(assert (not b!7001199))

(assert (not d!2182228))

(assert (not b!7001202))

(assert (not b_lambda!263721))

(assert (not b!7001100))

(assert (not bm!635725))

(assert (not d!2182298))

(assert (not b!7001201))

(assert (not d!2182278))

(assert (not d!2182258))

(assert (not d!2182226))

(assert (not d!2182252))

(assert (not b!7001072))

(assert (not b!7001114))

(assert (not d!2182288))

(assert (not b!7001155))

(assert (not d!2182250))

(assert (not b!7001216))

(assert (not b!7001150))

(assert (not d!2182206))

(assert (not d!2182204))

(assert (not b_lambda!263723))

(assert (not d!2182312))

(assert (not b!7001142))

(assert (not bs!1864866))

(assert (not b!7001209))

(assert (not setNonEmpty!48108))

(assert (not b_lambda!263715))

(assert (not d!2182294))

(assert (not b!7001075))

(assert (not d!2182200))

(assert (not bm!635731))

(assert (not b!7001080))

(assert (not b!7001198))

(assert (not b!7001110))

(assert (not bm!635734))

(assert (not d!2182230))

(assert (not b!7001180))

(assert (not bm!635733))

(assert (not b!7001178))

(assert (not b!7001195))

(assert (not b!7001073))

(assert (not b!7001205))

(assert (not d!2182224))

(assert (not b!7001206))

(assert (not d!2182308))

(assert (not b!7001112))

(assert (not b!7001081))

(assert (not b!7001030))

(assert (not b_lambda!263717))

(assert (not d!2182202))

(assert (not bs!1864867))

(assert (not b!7001153))

(assert (not d!2182296))

(assert (not d!2182240))

(assert (not bm!635732))

(assert (not d!2182306))

(assert (not d!2182196))

(assert (not b!7001093))

(assert (not b!7001158))

(assert (not d!2182286))

(assert (not d!2182268))

(assert (not b_lambda!263713))

(assert (not d!2182282))

(assert (not b!7001058))

(assert (not b!7001200))

(assert (not d!2182216))

(assert (not bm!635726))

(assert (not b!7001107))

(assert (not bm!635727))

(assert (not b_lambda!263719))

(assert (not d!2182274))

(assert (not b!7001099))

(assert (not b!7001226))

(assert (not b!7001029))

(assert (not bm!635708))

(assert (not d!2182270))

(assert (not b!7001181))

(assert (not d!2182198))

(assert (not b!7001221))

(assert (not d!2182234))

(assert (not d!2182214))

(assert (not b!7001203))

(assert (not b!7001070))

(assert (not b!7001079))

(assert (not b!7001115))

(assert (not d!2182276))

(assert (not b!7001183))

(assert (not d!2182304))

(assert (not d!2182302))

(assert (not d!2182210))

(assert (not bs!1864863))

(assert tp_is_empty!43761)

(assert (not bs!1864862))

(assert (not d!2182220))

(assert (not b!7001137))

(assert (not b!7001208))

(assert (not b!7001204))

(assert (not d!2182194))

(assert (not b!7001119))

(assert (not d!2182262))

(assert (not d!2182218))

(assert (not bm!635724))

(assert (not b!7001082))

(assert (not d!2182266))

(assert (not b!7001071))

(assert (not d!2182284))

(assert (not b!7001120))

(assert (not b!7001157))

(assert (not bs!1864861))

(assert (not bm!635735))

(assert (not b!7001092))

(assert (not b!7001125))

(assert (not d!2182232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


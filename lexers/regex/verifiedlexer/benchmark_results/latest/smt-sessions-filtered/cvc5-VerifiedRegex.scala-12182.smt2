; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685748 () Bool)

(assert start!685748)

(declare-fun b!7064874 () Bool)

(assert (=> b!7064874 true))

(declare-fun b!7064884 () Bool)

(assert (=> b!7064884 true))

(declare-fun b!7064882 () Bool)

(assert (=> b!7064882 true))

(declare-fun bs!1879577 () Bool)

(declare-fun b!7064871 () Bool)

(assert (= bs!1879577 (and b!7064871 b!7064874)))

(declare-fun lambda!423351 () Int)

(declare-fun lambda!423347 () Int)

(assert (=> bs!1879577 (not (= lambda!423351 lambda!423347))))

(declare-fun bs!1879578 () Bool)

(declare-fun b!7064865 () Bool)

(assert (= bs!1879578 (and b!7064865 b!7064874)))

(declare-fun lambda!423352 () Int)

(declare-datatypes ((C!35490 0))(
  ( (C!35491 (val!27447 Int)) )
))
(declare-datatypes ((List!68356 0))(
  ( (Nil!68232) (Cons!68232 (h!74680 C!35490) (t!382137 List!68356)) )
))
(declare-datatypes ((tuple2!68222 0))(
  ( (tuple2!68223 (_1!37414 List!68356) (_2!37414 List!68356)) )
))
(declare-fun lt!2539776 () tuple2!68222)

(declare-fun s!7408 () List!68356)

(assert (=> bs!1879578 (= (= (_1!37414 lt!2539776) s!7408) (= lambda!423352 lambda!423347))))

(declare-fun bs!1879579 () Bool)

(assert (= bs!1879579 (and b!7064865 b!7064871)))

(assert (=> bs!1879579 (not (= lambda!423352 lambda!423351))))

(assert (=> b!7064865 true))

(declare-fun b!7064860 () Bool)

(declare-fun res!2884775 () Bool)

(declare-fun e!4247318 () Bool)

(assert (=> b!7064860 (=> res!2884775 e!4247318)))

(declare-datatypes ((Regex!17610 0))(
  ( (ElementMatch!17610 (c!1317210 C!35490)) (Concat!26455 (regOne!35732 Regex!17610) (regTwo!35732 Regex!17610)) (EmptyExpr!17610) (Star!17610 (reg!17939 Regex!17610)) (EmptyLang!17610) (Union!17610 (regOne!35733 Regex!17610) (regTwo!35733 Regex!17610)) )
))
(declare-datatypes ((List!68357 0))(
  ( (Nil!68233) (Cons!68233 (h!74681 Regex!17610) (t!382138 List!68357)) )
))
(declare-datatypes ((Context!13212 0))(
  ( (Context!13213 (exprs!7106 List!68357)) )
))
(declare-fun lt!2539796 () (Set Context!13212))

(declare-fun matchZipper!3150 ((Set Context!13212) List!68356) Bool)

(assert (=> b!7064860 (= res!2884775 (not (matchZipper!3150 lt!2539796 (_2!37414 lt!2539776))))))

(declare-fun b!7064861 () Bool)

(declare-fun res!2884772 () Bool)

(declare-fun e!4247308 () Bool)

(assert (=> b!7064861 (=> res!2884772 e!4247308)))

(declare-fun lt!2539749 () Bool)

(assert (=> b!7064861 (= res!2884772 (not lt!2539749))))

(declare-fun b!7064862 () Bool)

(declare-fun e!4247322 () Bool)

(assert (=> b!7064862 (= e!4247322 e!4247308)))

(declare-fun res!2884757 () Bool)

(assert (=> b!7064862 (=> res!2884757 e!4247308)))

(declare-fun e!4247309 () Bool)

(assert (=> b!7064862 (= res!2884757 e!4247309)))

(declare-fun res!2884763 () Bool)

(assert (=> b!7064862 (=> (not res!2884763) (not e!4247309))))

(declare-fun lt!2539736 () Bool)

(assert (=> b!7064862 (= res!2884763 (not (= lt!2539749 lt!2539736)))))

(declare-fun lt!2539741 () (Set Context!13212))

(assert (=> b!7064862 (= lt!2539749 (matchZipper!3150 lt!2539741 (t!382137 s!7408)))))

(declare-fun lambda!423349 () Int)

(declare-datatypes ((Unit!161908 0))(
  ( (Unit!161909) )
))
(declare-fun lt!2539759 () Unit!161908)

(declare-fun lt!2539797 () List!68357)

(declare-fun ct2!306 () Context!13212)

(declare-fun lemmaConcatPreservesForall!921 (List!68357 List!68357 Int) Unit!161908)

(assert (=> b!7064862 (= lt!2539759 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539772 () (Set Context!13212))

(declare-fun e!4247320 () Bool)

(assert (=> b!7064862 (= (matchZipper!3150 lt!2539772 (t!382137 s!7408)) e!4247320)))

(declare-fun res!2884774 () Bool)

(assert (=> b!7064862 (=> res!2884774 e!4247320)))

(assert (=> b!7064862 (= res!2884774 lt!2539736)))

(declare-fun lt!2539788 () (Set Context!13212))

(assert (=> b!7064862 (= lt!2539736 (matchZipper!3150 lt!2539788 (t!382137 s!7408)))))

(declare-fun lt!2539765 () (Set Context!13212))

(declare-fun lt!2539734 () Unit!161908)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1623 ((Set Context!13212) (Set Context!13212) List!68356) Unit!161908)

(assert (=> b!7064862 (= lt!2539734 (lemmaZipperConcatMatchesSameAsBothZippers!1623 lt!2539788 lt!2539765 (t!382137 s!7408)))))

(declare-fun lt!2539777 () Unit!161908)

(assert (=> b!7064862 (= lt!2539777 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539738 () Unit!161908)

(assert (=> b!7064862 (= lt!2539738 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064863 () Bool)

(declare-fun e!4247321 () Bool)

(declare-fun e!4247312 () Bool)

(assert (=> b!7064863 (= e!4247321 e!4247312)))

(declare-fun res!2884765 () Bool)

(assert (=> b!7064863 (=> res!2884765 e!4247312)))

(declare-fun lt!2539740 () (Set Context!13212))

(declare-fun derivationStepZipper!3060 ((Set Context!13212) C!35490) (Set Context!13212))

(assert (=> b!7064863 (= res!2884765 (not (= (derivationStepZipper!3060 lt!2539740 (h!74680 s!7408)) lt!2539765)))))

(declare-fun lt!2539767 () Unit!161908)

(assert (=> b!7064863 (= lt!2539767 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539781 () Unit!161908)

(assert (=> b!7064863 (= lt!2539781 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539787 () Context!13212)

(declare-fun lambda!423350 () Int)

(declare-fun flatMap!2536 ((Set Context!13212) Int) (Set Context!13212))

(declare-fun derivationStepZipperUp!2194 (Context!13212 C!35490) (Set Context!13212))

(assert (=> b!7064863 (= (flatMap!2536 lt!2539740 lambda!423350) (derivationStepZipperUp!2194 lt!2539787 (h!74680 s!7408)))))

(declare-fun lt!2539779 () Unit!161908)

(declare-fun lemmaFlatMapOnSingletonSet!2045 ((Set Context!13212) Context!13212 Int) Unit!161908)

(assert (=> b!7064863 (= lt!2539779 (lemmaFlatMapOnSingletonSet!2045 lt!2539740 lt!2539787 lambda!423350))))

(assert (=> b!7064863 (= lt!2539740 (set.insert lt!2539787 (as set.empty (Set Context!13212))))))

(declare-fun lt!2539761 () Unit!161908)

(assert (=> b!7064863 (= lt!2539761 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539793 () Unit!161908)

(assert (=> b!7064863 (= lt!2539793 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064864 () Bool)

(declare-fun res!2884754 () Bool)

(declare-fun e!4247316 () Bool)

(assert (=> b!7064864 (=> res!2884754 e!4247316)))

(declare-fun lt!2539763 () Context!13212)

(declare-fun lt!2539794 () Int)

(declare-datatypes ((List!68358 0))(
  ( (Nil!68234) (Cons!68234 (h!74682 Context!13212) (t!382139 List!68358)) )
))
(declare-fun zipperDepthTotal!575 (List!68358) Int)

(assert (=> b!7064864 (= res!2884754 (>= (zipperDepthTotal!575 (Cons!68234 lt!2539763 Nil!68234)) lt!2539794))))

(declare-fun setIsEmpty!50082 () Bool)

(declare-fun setRes!50082 () Bool)

(assert (=> setIsEmpty!50082 setRes!50082))

(declare-fun z1!570 () (Set Context!13212))

(assert (=> b!7064865 (= e!4247318 (matchZipper!3150 z1!570 (_1!37414 lt!2539776)))))

(declare-fun lt!2539773 () List!68358)

(declare-fun content!13735 (List!68358) (Set Context!13212))

(assert (=> b!7064865 (matchZipper!3150 (content!13735 lt!2539773) (_1!37414 lt!2539776))))

(declare-fun lt!2539795 () Unit!161908)

(declare-fun lemmaExistsMatchingContextThenMatchingString!39 (List!68358 List!68356) Unit!161908)

(assert (=> b!7064865 (= lt!2539795 (lemmaExistsMatchingContextThenMatchingString!39 lt!2539773 (_1!37414 lt!2539776)))))

(declare-fun exists!3630 ((Set Context!13212) Int) Bool)

(assert (=> b!7064865 (exists!3630 z1!570 lambda!423352)))

(declare-fun lt!2539755 () Unit!161908)

(declare-fun lt!2539750 () Context!13212)

(declare-fun lemmaContainsThenExists!142 ((Set Context!13212) Context!13212 Int) Unit!161908)

(assert (=> b!7064865 (= lt!2539755 (lemmaContainsThenExists!142 z1!570 lt!2539750 lambda!423352))))

(declare-fun lt!2539748 () Unit!161908)

(declare-fun e!4247305 () Unit!161908)

(assert (=> b!7064865 (= lt!2539748 e!4247305)))

(declare-fun c!1317209 () Bool)

(declare-fun isEmpty!39813 (List!68356) Bool)

(assert (=> b!7064865 (= c!1317209 (isEmpty!39813 (_1!37414 lt!2539776)))))

(declare-fun b!7064866 () Bool)

(assert (=> b!7064866 (= e!4247316 e!4247318)))

(declare-fun res!2884764 () Bool)

(assert (=> b!7064866 (=> res!2884764 e!4247318)))

(declare-fun lt!2539747 () (Set Context!13212))

(assert (=> b!7064866 (= res!2884764 (not (matchZipper!3150 lt!2539747 (_1!37414 lt!2539776))))))

(declare-datatypes ((Option!16943 0))(
  ( (None!16942) (Some!16942 (v!53236 tuple2!68222)) )
))
(declare-fun lt!2539732 () Option!16943)

(declare-fun get!23899 (Option!16943) tuple2!68222)

(assert (=> b!7064866 (= lt!2539776 (get!23899 lt!2539732))))

(declare-fun isDefined!13644 (Option!16943) Bool)

(assert (=> b!7064866 (isDefined!13644 lt!2539732)))

(declare-fun findConcatSeparationZippers!459 ((Set Context!13212) (Set Context!13212) List!68356 List!68356 List!68356) Option!16943)

(assert (=> b!7064866 (= lt!2539732 (findConcatSeparationZippers!459 lt!2539747 lt!2539796 Nil!68232 s!7408 s!7408))))

(assert (=> b!7064866 (= lt!2539796 (set.insert ct2!306 (as set.empty (Set Context!13212))))))

(declare-fun lt!2539735 () Unit!161908)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!447 ((Set Context!13212) Context!13212 List!68356) Unit!161908)

(assert (=> b!7064866 (= lt!2539735 (lemmaConcatZipperMatchesStringThenFindConcatDefined!447 lt!2539747 ct2!306 s!7408))))

(declare-fun res!2884761 () Bool)

(declare-fun e!4247319 () Bool)

(assert (=> start!685748 (=> (not res!2884761) (not e!4247319))))

(declare-fun lt!2539770 () (Set Context!13212))

(assert (=> start!685748 (= res!2884761 (matchZipper!3150 lt!2539770 s!7408))))

(declare-fun appendTo!731 ((Set Context!13212) Context!13212) (Set Context!13212))

(assert (=> start!685748 (= lt!2539770 (appendTo!731 z1!570 ct2!306))))

(assert (=> start!685748 e!4247319))

(declare-fun condSetEmpty!50082 () Bool)

(assert (=> start!685748 (= condSetEmpty!50082 (= z1!570 (as set.empty (Set Context!13212))))))

(assert (=> start!685748 setRes!50082))

(declare-fun e!4247317 () Bool)

(declare-fun inv!86885 (Context!13212) Bool)

(assert (=> start!685748 (and (inv!86885 ct2!306) e!4247317)))

(declare-fun e!4247313 () Bool)

(assert (=> start!685748 e!4247313))

(declare-fun b!7064867 () Bool)

(declare-fun res!2884769 () Bool)

(assert (=> b!7064867 (=> (not res!2884769) (not e!4247319))))

(assert (=> b!7064867 (= res!2884769 (is-Cons!68232 s!7408))))

(declare-fun b!7064868 () Bool)

(declare-fun e!4247307 () Bool)

(assert (=> b!7064868 (= e!4247312 e!4247307)))

(declare-fun res!2884759 () Bool)

(assert (=> b!7064868 (=> res!2884759 e!4247307)))

(assert (=> b!7064868 (= res!2884759 (not (matchZipper!3150 lt!2539740 s!7408)))))

(declare-fun lt!2539778 () Unit!161908)

(assert (=> b!7064868 (= lt!2539778 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064869 () Bool)

(declare-fun e!4247314 () Bool)

(assert (=> b!7064869 (= e!4247314 e!4247322)))

(declare-fun res!2884767 () Bool)

(assert (=> b!7064869 (=> res!2884767 e!4247322)))

(assert (=> b!7064869 (= res!2884767 (not (= lt!2539741 lt!2539772)))))

(assert (=> b!7064869 (= lt!2539772 (set.union lt!2539788 lt!2539765))))

(assert (=> b!7064869 (= lt!2539765 (derivationStepZipperUp!2194 lt!2539787 (h!74680 s!7408)))))

(declare-fun derivationStepZipperDown!2244 (Regex!17610 Context!13212 C!35490) (Set Context!13212))

(assert (=> b!7064869 (= lt!2539788 (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539750)) lt!2539787 (h!74680 s!7408)))))

(declare-fun ++!15717 (List!68357 List!68357) List!68357)

(assert (=> b!7064869 (= lt!2539787 (Context!13213 (++!15717 lt!2539797 (exprs!7106 ct2!306))))))

(declare-fun lt!2539791 () Unit!161908)

(assert (=> b!7064869 (= lt!2539791 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539782 () Unit!161908)

(assert (=> b!7064869 (= lt!2539782 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064870 () Bool)

(assert (=> b!7064870 (= e!4247307 e!4247316)))

(declare-fun res!2884773 () Bool)

(assert (=> b!7064870 (=> res!2884773 e!4247316)))

(declare-fun lt!2539790 () Int)

(declare-fun contextDepthTotal!546 (Context!13212) Int)

(assert (=> b!7064870 (= res!2884773 (<= lt!2539790 (contextDepthTotal!546 lt!2539763)))))

(assert (=> b!7064870 (<= lt!2539790 lt!2539794)))

(assert (=> b!7064870 (= lt!2539794 (zipperDepthTotal!575 lt!2539773))))

(assert (=> b!7064870 (= lt!2539790 (contextDepthTotal!546 lt!2539750))))

(declare-fun lt!2539754 () Unit!161908)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!113 (List!68358 Context!13212) Unit!161908)

(assert (=> b!7064870 (= lt!2539754 (lemmaTotalDepthZipperLargerThanOfAnyContext!113 lt!2539773 lt!2539750))))

(declare-fun toList!10951 ((Set Context!13212)) List!68358)

(assert (=> b!7064870 (= lt!2539773 (toList!10951 z1!570))))

(declare-fun lt!2539775 () Unit!161908)

(assert (=> b!7064870 (= lt!2539775 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539771 () Unit!161908)

(assert (=> b!7064870 (= lt!2539771 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539780 () Unit!161908)

(assert (=> b!7064870 (= lt!2539780 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(assert (=> b!7064870 (= (flatMap!2536 lt!2539747 lambda!423350) (derivationStepZipperUp!2194 lt!2539763 (h!74680 s!7408)))))

(declare-fun lt!2539792 () Unit!161908)

(assert (=> b!7064870 (= lt!2539792 (lemmaFlatMapOnSingletonSet!2045 lt!2539747 lt!2539763 lambda!423350))))

(declare-fun lambda!423348 () Int)

(declare-fun map!15948 ((Set Context!13212) Int) (Set Context!13212))

(assert (=> b!7064870 (= (map!15948 lt!2539747 lambda!423348) (set.insert (Context!13213 (++!15717 lt!2539797 (exprs!7106 ct2!306))) (as set.empty (Set Context!13212))))))

(declare-fun lt!2539739 () Unit!161908)

(assert (=> b!7064870 (= lt!2539739 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun lt!2539762 () Unit!161908)

(declare-fun lemmaMapOnSingletonSet!427 ((Set Context!13212) Context!13212 Int) Unit!161908)

(assert (=> b!7064870 (= lt!2539762 (lemmaMapOnSingletonSet!427 lt!2539747 lt!2539763 lambda!423348))))

(assert (=> b!7064870 (= lt!2539747 (set.insert lt!2539763 (as set.empty (Set Context!13212))))))

(declare-fun Unit!161910 () Unit!161908)

(assert (=> b!7064871 (= e!4247305 Unit!161910)))

(declare-fun lt!2539769 () Context!13212)

(declare-fun getWitness!1692 ((Set Context!13212) Int) Context!13212)

(assert (=> b!7064871 (= lt!2539769 (getWitness!1692 lt!2539747 lambda!423351))))

(declare-fun lt!2539733 () Unit!161908)

(assert (=> b!7064871 (= lt!2539733 (lemmaContainsThenExists!142 lt!2539747 lt!2539763 lambda!423351))))

(assert (=> b!7064871 (exists!3630 lt!2539747 lambda!423351)))

(declare-fun lt!2539783 () (Set Context!13212))

(assert (=> b!7064871 (= lt!2539783 (set.insert lt!2539750 (as set.empty (Set Context!13212))))))

(declare-fun lt!2539766 () Unit!161908)

(assert (=> b!7064871 (= lt!2539766 (lemmaContainsThenExists!142 lt!2539783 lt!2539750 lambda!423351))))

(assert (=> b!7064871 (exists!3630 lt!2539783 lambda!423351)))

(declare-fun lt!2539743 () Unit!161908)

(declare-fun call!641999 () Unit!161908)

(assert (=> b!7064871 (= lt!2539743 call!641999)))

(declare-fun call!642000 () Bool)

(assert (=> b!7064871 call!642000))

(declare-fun b!7064872 () Bool)

(declare-fun res!2884766 () Bool)

(declare-fun e!4247306 () Bool)

(assert (=> b!7064872 (=> res!2884766 e!4247306)))

(declare-fun isEmpty!39814 (List!68357) Bool)

(assert (=> b!7064872 (= res!2884766 (isEmpty!39814 (exprs!7106 lt!2539750)))))

(declare-fun b!7064873 () Bool)

(declare-fun tp!1941445 () Bool)

(assert (=> b!7064873 (= e!4247317 tp!1941445)))

(declare-fun e!4247303 () Bool)

(assert (=> b!7064874 (= e!4247319 (not e!4247303))))

(declare-fun res!2884756 () Bool)

(assert (=> b!7064874 (=> res!2884756 e!4247303)))

(declare-fun lt!2539785 () (Set Context!13212))

(assert (=> b!7064874 (= res!2884756 (not (matchZipper!3150 lt!2539785 s!7408)))))

(declare-fun lt!2539784 () Context!13212)

(assert (=> b!7064874 (= lt!2539785 (set.insert lt!2539784 (as set.empty (Set Context!13212))))))

(assert (=> b!7064874 (= lt!2539784 (getWitness!1692 lt!2539770 lambda!423347))))

(declare-fun lt!2539757 () List!68358)

(declare-fun exists!3631 (List!68358 Int) Bool)

(assert (=> b!7064874 (exists!3631 lt!2539757 lambda!423347)))

(declare-fun lt!2539758 () Unit!161908)

(declare-fun lemmaZipperMatchesExistsMatchingContext!531 (List!68358 List!68356) Unit!161908)

(assert (=> b!7064874 (= lt!2539758 (lemmaZipperMatchesExistsMatchingContext!531 lt!2539757 s!7408))))

(assert (=> b!7064874 (= lt!2539757 (toList!10951 lt!2539770))))

(declare-fun b!7064875 () Bool)

(declare-fun res!2884768 () Bool)

(assert (=> b!7064875 (=> res!2884768 e!4247318)))

(declare-fun ++!15718 (List!68356 List!68356) List!68356)

(assert (=> b!7064875 (= res!2884768 (not (= (++!15718 (_1!37414 lt!2539776) (_2!37414 lt!2539776)) s!7408)))))

(declare-fun b!7064876 () Bool)

(declare-fun tp_is_empty!44445 () Bool)

(declare-fun tp!1941444 () Bool)

(assert (=> b!7064876 (= e!4247313 (and tp_is_empty!44445 tp!1941444))))

(declare-fun b!7064877 () Bool)

(declare-fun Unit!161911 () Unit!161908)

(assert (=> b!7064877 (= e!4247305 Unit!161911)))

(declare-fun lt!2539745 () (Set Context!13212))

(assert (=> b!7064877 (= lt!2539745 (set.insert lt!2539750 (as set.empty (Set Context!13212))))))

(declare-fun lt!2539742 () Unit!161908)

(assert (=> b!7064877 (= lt!2539742 (lemmaFlatMapOnSingletonSet!2045 lt!2539745 lt!2539750 lambda!423350))))

(assert (=> b!7064877 (= (flatMap!2536 lt!2539745 lambda!423350) (derivationStepZipperUp!2194 lt!2539750 (h!74680 s!7408)))))

(declare-fun lt!2539753 () (Set Context!13212))

(assert (=> b!7064877 (= lt!2539753 (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539750)) lt!2539763 (h!74680 s!7408)))))

(declare-fun lt!2539744 () (Set Context!13212))

(assert (=> b!7064877 (= lt!2539744 (derivationStepZipperUp!2194 lt!2539763 (h!74680 s!7408)))))

(declare-fun lt!2539746 () List!68356)

(declare-fun tail!13768 (List!68356) List!68356)

(assert (=> b!7064877 (= lt!2539746 (tail!13768 (_1!37414 lt!2539776)))))

(declare-fun lt!2539752 () Unit!161908)

(assert (=> b!7064877 (= lt!2539752 (lemmaZipperConcatMatchesSameAsBothZippers!1623 lt!2539753 lt!2539744 lt!2539746))))

(declare-fun res!2884760 () Bool)

(assert (=> b!7064877 (= res!2884760 (matchZipper!3150 lt!2539753 lt!2539746))))

(declare-fun e!4247310 () Bool)

(assert (=> b!7064877 (=> res!2884760 e!4247310)))

(assert (=> b!7064877 (= (matchZipper!3150 (set.union lt!2539753 lt!2539744) lt!2539746) e!4247310)))

(declare-fun lt!2539764 () Unit!161908)

(assert (=> b!7064877 (= lt!2539764 (lemmaFlatMapOnSingletonSet!2045 lt!2539747 lt!2539763 lambda!423350))))

(assert (=> b!7064877 (= (flatMap!2536 lt!2539747 lambda!423350) (derivationStepZipperUp!2194 lt!2539763 (h!74680 s!7408)))))

(declare-fun lt!2539798 () Unit!161908)

(assert (=> b!7064877 (= lt!2539798 call!641999)))

(assert (=> b!7064877 call!642000))

(declare-fun b!7064878 () Bool)

(declare-fun res!2884755 () Bool)

(assert (=> b!7064878 (=> res!2884755 e!4247306)))

(assert (=> b!7064878 (= res!2884755 (not (is-Cons!68233 (exprs!7106 lt!2539750))))))

(declare-fun bm!641994 () Bool)

(declare-fun call!642001 () Option!16943)

(assert (=> bm!641994 (= call!642001 (findConcatSeparationZippers!459 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 Nil!68232 s!7408 s!7408))))

(declare-fun tp!1941446 () Bool)

(declare-fun setElem!50082 () Context!13212)

(declare-fun e!4247315 () Bool)

(declare-fun setNonEmpty!50082 () Bool)

(assert (=> setNonEmpty!50082 (= setRes!50082 (and tp!1941446 (inv!86885 setElem!50082) e!4247315))))

(declare-fun setRest!50082 () (Set Context!13212))

(assert (=> setNonEmpty!50082 (= z1!570 (set.union (set.insert setElem!50082 (as set.empty (Set Context!13212))) setRest!50082))))

(declare-fun b!7064879 () Bool)

(assert (=> b!7064879 (= e!4247309 (not (matchZipper!3150 lt!2539765 (t!382137 s!7408))))))

(declare-fun lt!2539737 () Unit!161908)

(assert (=> b!7064879 (= lt!2539737 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064880 () Bool)

(declare-fun tp!1941443 () Bool)

(assert (=> b!7064880 (= e!4247315 tp!1941443)))

(declare-fun bm!641995 () Bool)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!59 ((Set Context!13212) (Set Context!13212) List!68356 List!68356 List!68356 List!68356 List!68356) Unit!161908)

(assert (=> bm!641995 (= call!641999 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!59 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 (_1!37414 lt!2539776) (_2!37414 lt!2539776) s!7408 Nil!68232 s!7408))))

(declare-fun b!7064881 () Bool)

(assert (=> b!7064881 (= e!4247308 e!4247321)))

(declare-fun res!2884753 () Bool)

(assert (=> b!7064881 (=> res!2884753 e!4247321)))

(assert (=> b!7064881 (= res!2884753 (not (matchZipper!3150 lt!2539765 (t!382137 s!7408))))))

(declare-fun lt!2539768 () Unit!161908)

(assert (=> b!7064881 (= lt!2539768 (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(declare-fun e!4247304 () Bool)

(assert (=> b!7064882 (= e!4247304 e!4247306)))

(declare-fun res!2884770 () Bool)

(assert (=> b!7064882 (=> res!2884770 e!4247306)))

(declare-fun lt!2539751 () (Set Context!13212))

(assert (=> b!7064882 (= res!2884770 (not (= (derivationStepZipper!3060 lt!2539751 (h!74680 s!7408)) lt!2539741)))))

(declare-fun lt!2539760 () Context!13212)

(assert (=> b!7064882 (= (flatMap!2536 lt!2539751 lambda!423350) (derivationStepZipperUp!2194 lt!2539760 (h!74680 s!7408)))))

(declare-fun lt!2539786 () Unit!161908)

(assert (=> b!7064882 (= lt!2539786 (lemmaFlatMapOnSingletonSet!2045 lt!2539751 lt!2539760 lambda!423350))))

(assert (=> b!7064882 (= lt!2539741 (derivationStepZipperUp!2194 lt!2539760 (h!74680 s!7408)))))

(declare-fun lt!2539774 () Unit!161908)

(assert (=> b!7064882 (= lt!2539774 (lemmaConcatPreservesForall!921 (exprs!7106 lt!2539750) (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064883 () Bool)

(assert (=> b!7064883 (= e!4247306 e!4247314)))

(declare-fun res!2884758 () Bool)

(assert (=> b!7064883 (=> res!2884758 e!4247314)))

(declare-fun nullable!7293 (Regex!17610) Bool)

(assert (=> b!7064883 (= res!2884758 (not (nullable!7293 (h!74681 (exprs!7106 lt!2539750)))))))

(assert (=> b!7064883 (= lt!2539763 (Context!13213 lt!2539797))))

(declare-fun tail!13769 (List!68357) List!68357)

(assert (=> b!7064883 (= lt!2539797 (tail!13769 (exprs!7106 lt!2539750)))))

(declare-fun e!4247311 () Bool)

(assert (=> b!7064884 (= e!4247303 e!4247311)))

(declare-fun res!2884776 () Bool)

(assert (=> b!7064884 (=> res!2884776 e!4247311)))

(assert (=> b!7064884 (= res!2884776 (or (not (= lt!2539760 lt!2539784)) (not (set.member lt!2539750 z1!570))))))

(assert (=> b!7064884 (= lt!2539760 (Context!13213 (++!15717 (exprs!7106 lt!2539750) (exprs!7106 ct2!306))))))

(declare-fun lt!2539789 () Unit!161908)

(assert (=> b!7064884 (= lt!2539789 (lemmaConcatPreservesForall!921 (exprs!7106 lt!2539750) (exprs!7106 ct2!306) lambda!423349))))

(declare-fun mapPost2!439 ((Set Context!13212) Int Context!13212) Context!13212)

(assert (=> b!7064884 (= lt!2539750 (mapPost2!439 z1!570 lambda!423348 lt!2539784))))

(declare-fun b!7064885 () Bool)

(assert (=> b!7064885 (= e!4247311 e!4247304)))

(declare-fun res!2884762 () Bool)

(assert (=> b!7064885 (=> res!2884762 e!4247304)))

(assert (=> b!7064885 (= res!2884762 (not (= lt!2539751 lt!2539785)))))

(assert (=> b!7064885 (= lt!2539751 (set.insert lt!2539760 (as set.empty (Set Context!13212))))))

(declare-fun lt!2539756 () Unit!161908)

(assert (=> b!7064885 (= lt!2539756 (lemmaConcatPreservesForall!921 (exprs!7106 lt!2539750) (exprs!7106 ct2!306) lambda!423349))))

(declare-fun b!7064886 () Bool)

(declare-fun res!2884771 () Bool)

(assert (=> b!7064886 (=> res!2884771 e!4247303)))

(assert (=> b!7064886 (= res!2884771 (not (set.member lt!2539784 lt!2539770)))))

(declare-fun b!7064887 () Bool)

(assert (=> b!7064887 (= e!4247310 (matchZipper!3150 lt!2539744 lt!2539746))))

(declare-fun bm!641996 () Bool)

(assert (=> bm!641996 (= call!642000 (isDefined!13644 call!642001))))

(declare-fun b!7064888 () Bool)

(assert (=> b!7064888 (= e!4247320 (matchZipper!3150 lt!2539765 (t!382137 s!7408)))))

(assert (= (and start!685748 res!2884761) b!7064867))

(assert (= (and b!7064867 res!2884769) b!7064874))

(assert (= (and b!7064874 (not res!2884756)) b!7064886))

(assert (= (and b!7064886 (not res!2884771)) b!7064884))

(assert (= (and b!7064884 (not res!2884776)) b!7064885))

(assert (= (and b!7064885 (not res!2884762)) b!7064882))

(assert (= (and b!7064882 (not res!2884770)) b!7064878))

(assert (= (and b!7064878 (not res!2884755)) b!7064872))

(assert (= (and b!7064872 (not res!2884766)) b!7064883))

(assert (= (and b!7064883 (not res!2884758)) b!7064869))

(assert (= (and b!7064869 (not res!2884767)) b!7064862))

(assert (= (and b!7064862 (not res!2884774)) b!7064888))

(assert (= (and b!7064862 res!2884763) b!7064879))

(assert (= (and b!7064862 (not res!2884757)) b!7064861))

(assert (= (and b!7064861 (not res!2884772)) b!7064881))

(assert (= (and b!7064881 (not res!2884753)) b!7064863))

(assert (= (and b!7064863 (not res!2884765)) b!7064868))

(assert (= (and b!7064868 (not res!2884759)) b!7064870))

(assert (= (and b!7064870 (not res!2884773)) b!7064864))

(assert (= (and b!7064864 (not res!2884754)) b!7064866))

(assert (= (and b!7064866 (not res!2884764)) b!7064860))

(assert (= (and b!7064860 (not res!2884775)) b!7064875))

(assert (= (and b!7064875 (not res!2884768)) b!7064865))

(assert (= (and b!7064865 c!1317209) b!7064871))

(assert (= (and b!7064865 (not c!1317209)) b!7064877))

(assert (= (and b!7064877 (not res!2884760)) b!7064887))

(assert (= (or b!7064871 b!7064877) bm!641995))

(assert (= (or b!7064871 b!7064877) bm!641994))

(assert (= (or b!7064871 b!7064877) bm!641996))

(assert (= (and start!685748 condSetEmpty!50082) setIsEmpty!50082))

(assert (= (and start!685748 (not condSetEmpty!50082)) setNonEmpty!50082))

(assert (= setNonEmpty!50082 b!7064880))

(assert (= start!685748 b!7064873))

(assert (= (and start!685748 (is-Cons!68232 s!7408)) b!7064876))

(declare-fun m!7787300 () Bool)

(assert (=> b!7064884 m!7787300))

(declare-fun m!7787302 () Bool)

(assert (=> b!7064884 m!7787302))

(declare-fun m!7787304 () Bool)

(assert (=> b!7064884 m!7787304))

(declare-fun m!7787306 () Bool)

(assert (=> b!7064884 m!7787306))

(declare-fun m!7787308 () Bool)

(assert (=> b!7064885 m!7787308))

(assert (=> b!7064885 m!7787304))

(declare-fun m!7787310 () Bool)

(assert (=> b!7064874 m!7787310))

(declare-fun m!7787312 () Bool)

(assert (=> b!7064874 m!7787312))

(declare-fun m!7787314 () Bool)

(assert (=> b!7064874 m!7787314))

(declare-fun m!7787316 () Bool)

(assert (=> b!7064874 m!7787316))

(declare-fun m!7787318 () Bool)

(assert (=> b!7064874 m!7787318))

(declare-fun m!7787320 () Bool)

(assert (=> b!7064874 m!7787320))

(declare-fun m!7787322 () Bool)

(assert (=> b!7064860 m!7787322))

(declare-fun m!7787324 () Bool)

(assert (=> b!7064866 m!7787324))

(declare-fun m!7787326 () Bool)

(assert (=> b!7064866 m!7787326))

(declare-fun m!7787328 () Bool)

(assert (=> b!7064866 m!7787328))

(declare-fun m!7787330 () Bool)

(assert (=> b!7064866 m!7787330))

(declare-fun m!7787332 () Bool)

(assert (=> b!7064866 m!7787332))

(declare-fun m!7787334 () Bool)

(assert (=> b!7064866 m!7787334))

(declare-fun m!7787336 () Bool)

(assert (=> start!685748 m!7787336))

(declare-fun m!7787338 () Bool)

(assert (=> start!685748 m!7787338))

(declare-fun m!7787340 () Bool)

(assert (=> start!685748 m!7787340))

(declare-fun m!7787342 () Bool)

(assert (=> b!7064879 m!7787342))

(declare-fun m!7787344 () Bool)

(assert (=> b!7064879 m!7787344))

(declare-fun m!7787346 () Bool)

(assert (=> bm!641995 m!7787346))

(assert (=> b!7064870 m!7787344))

(declare-fun m!7787348 () Bool)

(assert (=> b!7064870 m!7787348))

(declare-fun m!7787350 () Bool)

(assert (=> b!7064870 m!7787350))

(declare-fun m!7787352 () Bool)

(assert (=> b!7064870 m!7787352))

(declare-fun m!7787354 () Bool)

(assert (=> b!7064870 m!7787354))

(assert (=> b!7064870 m!7787344))

(declare-fun m!7787356 () Bool)

(assert (=> b!7064870 m!7787356))

(declare-fun m!7787358 () Bool)

(assert (=> b!7064870 m!7787358))

(declare-fun m!7787360 () Bool)

(assert (=> b!7064870 m!7787360))

(declare-fun m!7787362 () Bool)

(assert (=> b!7064870 m!7787362))

(declare-fun m!7787364 () Bool)

(assert (=> b!7064870 m!7787364))

(declare-fun m!7787366 () Bool)

(assert (=> b!7064870 m!7787366))

(declare-fun m!7787368 () Bool)

(assert (=> b!7064870 m!7787368))

(assert (=> b!7064870 m!7787344))

(declare-fun m!7787370 () Bool)

(assert (=> b!7064870 m!7787370))

(assert (=> b!7064870 m!7787344))

(declare-fun m!7787372 () Bool)

(assert (=> b!7064870 m!7787372))

(declare-fun m!7787374 () Bool)

(assert (=> b!7064862 m!7787374))

(assert (=> b!7064862 m!7787344))

(declare-fun m!7787376 () Bool)

(assert (=> b!7064862 m!7787376))

(declare-fun m!7787378 () Bool)

(assert (=> b!7064862 m!7787378))

(assert (=> b!7064862 m!7787344))

(assert (=> b!7064862 m!7787344))

(declare-fun m!7787380 () Bool)

(assert (=> b!7064862 m!7787380))

(declare-fun m!7787382 () Bool)

(assert (=> b!7064872 m!7787382))

(declare-fun m!7787384 () Bool)

(assert (=> bm!641994 m!7787384))

(declare-fun m!7787386 () Bool)

(assert (=> b!7064882 m!7787386))

(declare-fun m!7787388 () Bool)

(assert (=> b!7064882 m!7787388))

(declare-fun m!7787390 () Bool)

(assert (=> b!7064882 m!7787390))

(assert (=> b!7064882 m!7787304))

(declare-fun m!7787392 () Bool)

(assert (=> b!7064882 m!7787392))

(declare-fun m!7787394 () Bool)

(assert (=> b!7064871 m!7787394))

(declare-fun m!7787396 () Bool)

(assert (=> b!7064871 m!7787396))

(declare-fun m!7787398 () Bool)

(assert (=> b!7064871 m!7787398))

(declare-fun m!7787400 () Bool)

(assert (=> b!7064871 m!7787400))

(declare-fun m!7787402 () Bool)

(assert (=> b!7064871 m!7787402))

(declare-fun m!7787404 () Bool)

(assert (=> b!7064871 m!7787404))

(declare-fun m!7787406 () Bool)

(assert (=> bm!641996 m!7787406))

(declare-fun m!7787408 () Bool)

(assert (=> b!7064886 m!7787408))

(declare-fun m!7787410 () Bool)

(assert (=> b!7064868 m!7787410))

(assert (=> b!7064868 m!7787344))

(declare-fun m!7787412 () Bool)

(assert (=> b!7064875 m!7787412))

(declare-fun m!7787414 () Bool)

(assert (=> b!7064864 m!7787414))

(assert (=> b!7064881 m!7787342))

(assert (=> b!7064881 m!7787344))

(declare-fun m!7787416 () Bool)

(assert (=> b!7064877 m!7787416))

(declare-fun m!7787418 () Bool)

(assert (=> b!7064877 m!7787418))

(declare-fun m!7787420 () Bool)

(assert (=> b!7064877 m!7787420))

(assert (=> b!7064877 m!7787350))

(declare-fun m!7787422 () Bool)

(assert (=> b!7064877 m!7787422))

(declare-fun m!7787424 () Bool)

(assert (=> b!7064877 m!7787424))

(declare-fun m!7787426 () Bool)

(assert (=> b!7064877 m!7787426))

(assert (=> b!7064877 m!7787356))

(declare-fun m!7787428 () Bool)

(assert (=> b!7064877 m!7787428))

(declare-fun m!7787430 () Bool)

(assert (=> b!7064877 m!7787430))

(assert (=> b!7064877 m!7787404))

(assert (=> b!7064877 m!7787364))

(declare-fun m!7787432 () Bool)

(assert (=> b!7064865 m!7787432))

(declare-fun m!7787434 () Bool)

(assert (=> b!7064865 m!7787434))

(declare-fun m!7787436 () Bool)

(assert (=> b!7064865 m!7787436))

(declare-fun m!7787438 () Bool)

(assert (=> b!7064865 m!7787438))

(declare-fun m!7787440 () Bool)

(assert (=> b!7064865 m!7787440))

(declare-fun m!7787442 () Bool)

(assert (=> b!7064865 m!7787442))

(assert (=> b!7064865 m!7787434))

(declare-fun m!7787444 () Bool)

(assert (=> b!7064865 m!7787444))

(declare-fun m!7787446 () Bool)

(assert (=> b!7064883 m!7787446))

(declare-fun m!7787448 () Bool)

(assert (=> b!7064883 m!7787448))

(assert (=> b!7064888 m!7787342))

(declare-fun m!7787450 () Bool)

(assert (=> b!7064863 m!7787450))

(assert (=> b!7064863 m!7787344))

(declare-fun m!7787452 () Bool)

(assert (=> b!7064863 m!7787452))

(assert (=> b!7064863 m!7787344))

(declare-fun m!7787454 () Bool)

(assert (=> b!7064863 m!7787454))

(assert (=> b!7064863 m!7787344))

(declare-fun m!7787456 () Bool)

(assert (=> b!7064863 m!7787456))

(assert (=> b!7064863 m!7787344))

(declare-fun m!7787458 () Bool)

(assert (=> b!7064863 m!7787458))

(declare-fun m!7787460 () Bool)

(assert (=> setNonEmpty!50082 m!7787460))

(assert (=> b!7064869 m!7787450))

(assert (=> b!7064869 m!7787344))

(assert (=> b!7064869 m!7787352))

(assert (=> b!7064869 m!7787344))

(declare-fun m!7787462 () Bool)

(assert (=> b!7064869 m!7787462))

(declare-fun m!7787464 () Bool)

(assert (=> b!7064887 m!7787464))

(push 1)

(assert (not b!7064882))

(assert (not b!7064862))

(assert tp_is_empty!44445)

(assert (not b!7064860))

(assert (not b!7064870))

(assert (not b!7064874))

(assert (not b!7064865))

(assert (not b!7064884))

(assert (not b!7064887))

(assert (not b!7064877))

(assert (not b!7064873))

(assert (not b!7064879))

(assert (not b!7064888))

(assert (not b!7064872))

(assert (not b!7064881))

(assert (not bm!641994))

(assert (not b!7064871))

(assert (not start!685748))

(assert (not b!7064885))

(assert (not b!7064880))

(assert (not setNonEmpty!50082))

(assert (not b!7064875))

(assert (not b!7064864))

(assert (not b!7064868))

(assert (not b!7064883))

(assert (not bm!641995))

(assert (not b!7064866))

(assert (not b!7064869))

(assert (not bm!641996))

(assert (not b!7064863))

(assert (not b!7064876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2208991 () Bool)

(declare-fun c!1317243 () Bool)

(assert (=> d!2208991 (= c!1317243 (isEmpty!39813 s!7408))))

(declare-fun e!4247385 () Bool)

(assert (=> d!2208991 (= (matchZipper!3150 lt!2539785 s!7408) e!4247385)))

(declare-fun b!7064996 () Bool)

(declare-fun nullableZipper!2679 ((Set Context!13212)) Bool)

(assert (=> b!7064996 (= e!4247385 (nullableZipper!2679 lt!2539785))))

(declare-fun b!7064997 () Bool)

(declare-fun head!14385 (List!68356) C!35490)

(assert (=> b!7064997 (= e!4247385 (matchZipper!3150 (derivationStepZipper!3060 lt!2539785 (head!14385 s!7408)) (tail!13768 s!7408)))))

(assert (= (and d!2208991 c!1317243) b!7064996))

(assert (= (and d!2208991 (not c!1317243)) b!7064997))

(declare-fun m!7787632 () Bool)

(assert (=> d!2208991 m!7787632))

(declare-fun m!7787634 () Bool)

(assert (=> b!7064996 m!7787634))

(declare-fun m!7787636 () Bool)

(assert (=> b!7064997 m!7787636))

(assert (=> b!7064997 m!7787636))

(declare-fun m!7787638 () Bool)

(assert (=> b!7064997 m!7787638))

(declare-fun m!7787640 () Bool)

(assert (=> b!7064997 m!7787640))

(assert (=> b!7064997 m!7787638))

(assert (=> b!7064997 m!7787640))

(declare-fun m!7787642 () Bool)

(assert (=> b!7064997 m!7787642))

(assert (=> b!7064874 d!2208991))

(declare-fun bs!1879583 () Bool)

(declare-fun d!2208993 () Bool)

(assert (= bs!1879583 (and d!2208993 b!7064874)))

(declare-fun lambda!423429 () Int)

(assert (=> bs!1879583 (= lambda!423429 lambda!423347)))

(declare-fun bs!1879584 () Bool)

(assert (= bs!1879584 (and d!2208993 b!7064871)))

(assert (=> bs!1879584 (not (= lambda!423429 lambda!423351))))

(declare-fun bs!1879585 () Bool)

(assert (= bs!1879585 (and d!2208993 b!7064865)))

(assert (=> bs!1879585 (= (= s!7408 (_1!37414 lt!2539776)) (= lambda!423429 lambda!423352))))

(assert (=> d!2208993 true))

(assert (=> d!2208993 (exists!3631 lt!2539757 lambda!423429)))

(declare-fun lt!2540006 () Unit!161908)

(declare-fun choose!54013 (List!68358 List!68356) Unit!161908)

(assert (=> d!2208993 (= lt!2540006 (choose!54013 lt!2539757 s!7408))))

(assert (=> d!2208993 (matchZipper!3150 (content!13735 lt!2539757) s!7408)))

(assert (=> d!2208993 (= (lemmaZipperMatchesExistsMatchingContext!531 lt!2539757 s!7408) lt!2540006)))

(declare-fun bs!1879586 () Bool)

(assert (= bs!1879586 d!2208993))

(declare-fun m!7787644 () Bool)

(assert (=> bs!1879586 m!7787644))

(declare-fun m!7787646 () Bool)

(assert (=> bs!1879586 m!7787646))

(declare-fun m!7787648 () Bool)

(assert (=> bs!1879586 m!7787648))

(assert (=> bs!1879586 m!7787648))

(declare-fun m!7787650 () Bool)

(assert (=> bs!1879586 m!7787650))

(assert (=> b!7064874 d!2208993))

(declare-fun bs!1879587 () Bool)

(declare-fun d!2208995 () Bool)

(assert (= bs!1879587 (and d!2208995 b!7064874)))

(declare-fun lambda!423432 () Int)

(assert (=> bs!1879587 (not (= lambda!423432 lambda!423347))))

(declare-fun bs!1879588 () Bool)

(assert (= bs!1879588 (and d!2208995 b!7064871)))

(assert (=> bs!1879588 (not (= lambda!423432 lambda!423351))))

(declare-fun bs!1879589 () Bool)

(assert (= bs!1879589 (and d!2208995 b!7064865)))

(assert (=> bs!1879589 (not (= lambda!423432 lambda!423352))))

(declare-fun bs!1879590 () Bool)

(assert (= bs!1879590 (and d!2208995 d!2208993)))

(assert (=> bs!1879590 (not (= lambda!423432 lambda!423429))))

(assert (=> d!2208995 true))

(declare-fun order!28367 () Int)

(declare-fun dynLambda!27718 (Int Int) Int)

(assert (=> d!2208995 (< (dynLambda!27718 order!28367 lambda!423347) (dynLambda!27718 order!28367 lambda!423432))))

(declare-fun forall!16558 (List!68358 Int) Bool)

(assert (=> d!2208995 (= (exists!3631 lt!2539757 lambda!423347) (not (forall!16558 lt!2539757 lambda!423432)))))

(declare-fun bs!1879591 () Bool)

(assert (= bs!1879591 d!2208995))

(declare-fun m!7787652 () Bool)

(assert (=> bs!1879591 m!7787652))

(assert (=> b!7064874 d!2208995))

(declare-fun d!2208997 () Bool)

(declare-fun e!4247388 () Bool)

(assert (=> d!2208997 e!4247388))

(declare-fun res!2884852 () Bool)

(assert (=> d!2208997 (=> (not res!2884852) (not e!4247388))))

(declare-fun lt!2540009 () Context!13212)

(declare-fun dynLambda!27719 (Int Context!13212) Bool)

(assert (=> d!2208997 (= res!2884852 (dynLambda!27719 lambda!423347 lt!2540009))))

(declare-fun getWitness!1694 (List!68358 Int) Context!13212)

(assert (=> d!2208997 (= lt!2540009 (getWitness!1694 (toList!10951 lt!2539770) lambda!423347))))

(assert (=> d!2208997 (exists!3630 lt!2539770 lambda!423347)))

(assert (=> d!2208997 (= (getWitness!1692 lt!2539770 lambda!423347) lt!2540009)))

(declare-fun b!7065002 () Bool)

(assert (=> b!7065002 (= e!4247388 (set.member lt!2540009 lt!2539770))))

(assert (= (and d!2208997 res!2884852) b!7065002))

(declare-fun b_lambda!269519 () Bool)

(assert (=> (not b_lambda!269519) (not d!2208997)))

(declare-fun m!7787654 () Bool)

(assert (=> d!2208997 m!7787654))

(assert (=> d!2208997 m!7787314))

(assert (=> d!2208997 m!7787314))

(declare-fun m!7787656 () Bool)

(assert (=> d!2208997 m!7787656))

(declare-fun m!7787658 () Bool)

(assert (=> d!2208997 m!7787658))

(declare-fun m!7787660 () Bool)

(assert (=> b!7065002 m!7787660))

(assert (=> b!7064874 d!2208997))

(declare-fun d!2208999 () Bool)

(declare-fun e!4247391 () Bool)

(assert (=> d!2208999 e!4247391))

(declare-fun res!2884855 () Bool)

(assert (=> d!2208999 (=> (not res!2884855) (not e!4247391))))

(declare-fun lt!2540012 () List!68358)

(declare-fun noDuplicate!2708 (List!68358) Bool)

(assert (=> d!2208999 (= res!2884855 (noDuplicate!2708 lt!2540012))))

(declare-fun choose!54014 ((Set Context!13212)) List!68358)

(assert (=> d!2208999 (= lt!2540012 (choose!54014 lt!2539770))))

(assert (=> d!2208999 (= (toList!10951 lt!2539770) lt!2540012)))

(declare-fun b!7065005 () Bool)

(assert (=> b!7065005 (= e!4247391 (= (content!13735 lt!2540012) lt!2539770))))

(assert (= (and d!2208999 res!2884855) b!7065005))

(declare-fun m!7787662 () Bool)

(assert (=> d!2208999 m!7787662))

(declare-fun m!7787664 () Bool)

(assert (=> d!2208999 m!7787664))

(declare-fun m!7787666 () Bool)

(assert (=> b!7065005 m!7787666))

(assert (=> b!7064874 d!2208999))

(declare-fun b!7065017 () Bool)

(declare-fun e!4247396 () Bool)

(declare-fun lt!2540015 () List!68356)

(assert (=> b!7065017 (= e!4247396 (or (not (= (_2!37414 lt!2539776) Nil!68232)) (= lt!2540015 (_1!37414 lt!2539776))))))

(declare-fun b!7065015 () Bool)

(declare-fun e!4247397 () List!68356)

(assert (=> b!7065015 (= e!4247397 (Cons!68232 (h!74680 (_1!37414 lt!2539776)) (++!15718 (t!382137 (_1!37414 lt!2539776)) (_2!37414 lt!2539776))))))

(declare-fun d!2209001 () Bool)

(assert (=> d!2209001 e!4247396))

(declare-fun res!2884860 () Bool)

(assert (=> d!2209001 (=> (not res!2884860) (not e!4247396))))

(declare-fun content!13737 (List!68356) (Set C!35490))

(assert (=> d!2209001 (= res!2884860 (= (content!13737 lt!2540015) (set.union (content!13737 (_1!37414 lt!2539776)) (content!13737 (_2!37414 lt!2539776)))))))

(assert (=> d!2209001 (= lt!2540015 e!4247397)))

(declare-fun c!1317248 () Bool)

(assert (=> d!2209001 (= c!1317248 (is-Nil!68232 (_1!37414 lt!2539776)))))

(assert (=> d!2209001 (= (++!15718 (_1!37414 lt!2539776) (_2!37414 lt!2539776)) lt!2540015)))

(declare-fun b!7065014 () Bool)

(assert (=> b!7065014 (= e!4247397 (_2!37414 lt!2539776))))

(declare-fun b!7065016 () Bool)

(declare-fun res!2884861 () Bool)

(assert (=> b!7065016 (=> (not res!2884861) (not e!4247396))))

(declare-fun size!41183 (List!68356) Int)

(assert (=> b!7065016 (= res!2884861 (= (size!41183 lt!2540015) (+ (size!41183 (_1!37414 lt!2539776)) (size!41183 (_2!37414 lt!2539776)))))))

(assert (= (and d!2209001 c!1317248) b!7065014))

(assert (= (and d!2209001 (not c!1317248)) b!7065015))

(assert (= (and d!2209001 res!2884860) b!7065016))

(assert (= (and b!7065016 res!2884861) b!7065017))

(declare-fun m!7787668 () Bool)

(assert (=> b!7065015 m!7787668))

(declare-fun m!7787670 () Bool)

(assert (=> d!2209001 m!7787670))

(declare-fun m!7787672 () Bool)

(assert (=> d!2209001 m!7787672))

(declare-fun m!7787674 () Bool)

(assert (=> d!2209001 m!7787674))

(declare-fun m!7787676 () Bool)

(assert (=> b!7065016 m!7787676))

(declare-fun m!7787678 () Bool)

(assert (=> b!7065016 m!7787678))

(declare-fun m!7787680 () Bool)

(assert (=> b!7065016 m!7787680))

(assert (=> b!7064875 d!2209001))

(declare-fun d!2209003 () Bool)

(declare-fun choose!54015 ((Set Context!13212) Int) (Set Context!13212))

(assert (=> d!2209003 (= (flatMap!2536 lt!2539745 lambda!423350) (choose!54015 lt!2539745 lambda!423350))))

(declare-fun bs!1879592 () Bool)

(assert (= bs!1879592 d!2209003))

(declare-fun m!7787682 () Bool)

(assert (=> bs!1879592 m!7787682))

(assert (=> b!7064877 d!2209003))

(declare-fun d!2209005 () Bool)

(assert (=> d!2209005 (= (flatMap!2536 lt!2539747 lambda!423350) (choose!54015 lt!2539747 lambda!423350))))

(declare-fun bs!1879593 () Bool)

(assert (= bs!1879593 d!2209005))

(declare-fun m!7787684 () Bool)

(assert (=> bs!1879593 m!7787684))

(assert (=> b!7064877 d!2209005))

(declare-fun d!2209007 () Bool)

(declare-fun c!1317249 () Bool)

(assert (=> d!2209007 (= c!1317249 (isEmpty!39813 lt!2539746))))

(declare-fun e!4247398 () Bool)

(assert (=> d!2209007 (= (matchZipper!3150 (set.union lt!2539753 lt!2539744) lt!2539746) e!4247398)))

(declare-fun b!7065018 () Bool)

(assert (=> b!7065018 (= e!4247398 (nullableZipper!2679 (set.union lt!2539753 lt!2539744)))))

(declare-fun b!7065019 () Bool)

(assert (=> b!7065019 (= e!4247398 (matchZipper!3150 (derivationStepZipper!3060 (set.union lt!2539753 lt!2539744) (head!14385 lt!2539746)) (tail!13768 lt!2539746)))))

(assert (= (and d!2209007 c!1317249) b!7065018))

(assert (= (and d!2209007 (not c!1317249)) b!7065019))

(declare-fun m!7787686 () Bool)

(assert (=> d!2209007 m!7787686))

(declare-fun m!7787688 () Bool)

(assert (=> b!7065018 m!7787688))

(declare-fun m!7787690 () Bool)

(assert (=> b!7065019 m!7787690))

(assert (=> b!7065019 m!7787690))

(declare-fun m!7787692 () Bool)

(assert (=> b!7065019 m!7787692))

(declare-fun m!7787694 () Bool)

(assert (=> b!7065019 m!7787694))

(assert (=> b!7065019 m!7787692))

(assert (=> b!7065019 m!7787694))

(declare-fun m!7787696 () Bool)

(assert (=> b!7065019 m!7787696))

(assert (=> b!7064877 d!2209007))

(declare-fun d!2209009 () Bool)

(declare-fun dynLambda!27720 (Int Context!13212) (Set Context!13212))

(assert (=> d!2209009 (= (flatMap!2536 lt!2539745 lambda!423350) (dynLambda!27720 lambda!423350 lt!2539750))))

(declare-fun lt!2540018 () Unit!161908)

(declare-fun choose!54016 ((Set Context!13212) Context!13212 Int) Unit!161908)

(assert (=> d!2209009 (= lt!2540018 (choose!54016 lt!2539745 lt!2539750 lambda!423350))))

(assert (=> d!2209009 (= lt!2539745 (set.insert lt!2539750 (as set.empty (Set Context!13212))))))

(assert (=> d!2209009 (= (lemmaFlatMapOnSingletonSet!2045 lt!2539745 lt!2539750 lambda!423350) lt!2540018)))

(declare-fun b_lambda!269521 () Bool)

(assert (=> (not b_lambda!269521) (not d!2209009)))

(declare-fun bs!1879594 () Bool)

(assert (= bs!1879594 d!2209009))

(assert (=> bs!1879594 m!7787420))

(declare-fun m!7787698 () Bool)

(assert (=> bs!1879594 m!7787698))

(declare-fun m!7787700 () Bool)

(assert (=> bs!1879594 m!7787700))

(assert (=> bs!1879594 m!7787404))

(assert (=> b!7064877 d!2209009))

(declare-fun b!7065030 () Bool)

(declare-fun e!4247405 () (Set Context!13212))

(assert (=> b!7065030 (= e!4247405 (as set.empty (Set Context!13212)))))

(declare-fun b!7065031 () Bool)

(declare-fun call!642013 () (Set Context!13212))

(declare-fun e!4247407 () (Set Context!13212))

(assert (=> b!7065031 (= e!4247407 (set.union call!642013 (derivationStepZipperUp!2194 (Context!13213 (t!382138 (exprs!7106 lt!2539750))) (h!74680 s!7408))))))

(declare-fun bm!642008 () Bool)

(assert (=> bm!642008 (= call!642013 (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539750)) (Context!13213 (t!382138 (exprs!7106 lt!2539750))) (h!74680 s!7408)))))

(declare-fun b!7065032 () Bool)

(assert (=> b!7065032 (= e!4247405 call!642013)))

(declare-fun b!7065033 () Bool)

(declare-fun e!4247406 () Bool)

(assert (=> b!7065033 (= e!4247406 (nullable!7293 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun b!7065034 () Bool)

(assert (=> b!7065034 (= e!4247407 e!4247405)))

(declare-fun c!1317254 () Bool)

(assert (=> b!7065034 (= c!1317254 (is-Cons!68233 (exprs!7106 lt!2539750)))))

(declare-fun d!2209011 () Bool)

(declare-fun c!1317255 () Bool)

(assert (=> d!2209011 (= c!1317255 e!4247406)))

(declare-fun res!2884864 () Bool)

(assert (=> d!2209011 (=> (not res!2884864) (not e!4247406))))

(assert (=> d!2209011 (= res!2884864 (is-Cons!68233 (exprs!7106 lt!2539750)))))

(assert (=> d!2209011 (= (derivationStepZipperUp!2194 lt!2539750 (h!74680 s!7408)) e!4247407)))

(assert (= (and d!2209011 res!2884864) b!7065033))

(assert (= (and d!2209011 c!1317255) b!7065031))

(assert (= (and d!2209011 (not c!1317255)) b!7065034))

(assert (= (and b!7065034 c!1317254) b!7065032))

(assert (= (and b!7065034 (not c!1317254)) b!7065030))

(assert (= (or b!7065031 b!7065032) bm!642008))

(declare-fun m!7787702 () Bool)

(assert (=> b!7065031 m!7787702))

(declare-fun m!7787704 () Bool)

(assert (=> bm!642008 m!7787704))

(assert (=> b!7065033 m!7787446))

(assert (=> b!7064877 d!2209011))

(declare-fun d!2209013 () Bool)

(assert (=> d!2209013 (= (flatMap!2536 lt!2539747 lambda!423350) (dynLambda!27720 lambda!423350 lt!2539763))))

(declare-fun lt!2540019 () Unit!161908)

(assert (=> d!2209013 (= lt!2540019 (choose!54016 lt!2539747 lt!2539763 lambda!423350))))

(assert (=> d!2209013 (= lt!2539747 (set.insert lt!2539763 (as set.empty (Set Context!13212))))))

(assert (=> d!2209013 (= (lemmaFlatMapOnSingletonSet!2045 lt!2539747 lt!2539763 lambda!423350) lt!2540019)))

(declare-fun b_lambda!269523 () Bool)

(assert (=> (not b_lambda!269523) (not d!2209013)))

(declare-fun bs!1879595 () Bool)

(assert (= bs!1879595 d!2209013))

(assert (=> bs!1879595 m!7787364))

(declare-fun m!7787706 () Bool)

(assert (=> bs!1879595 m!7787706))

(declare-fun m!7787708 () Bool)

(assert (=> bs!1879595 m!7787708))

(assert (=> bs!1879595 m!7787368))

(assert (=> b!7064877 d!2209013))

(declare-fun d!2209015 () Bool)

(declare-fun c!1317256 () Bool)

(assert (=> d!2209015 (= c!1317256 (isEmpty!39813 lt!2539746))))

(declare-fun e!4247408 () Bool)

(assert (=> d!2209015 (= (matchZipper!3150 lt!2539753 lt!2539746) e!4247408)))

(declare-fun b!7065035 () Bool)

(assert (=> b!7065035 (= e!4247408 (nullableZipper!2679 lt!2539753))))

(declare-fun b!7065036 () Bool)

(assert (=> b!7065036 (= e!4247408 (matchZipper!3150 (derivationStepZipper!3060 lt!2539753 (head!14385 lt!2539746)) (tail!13768 lt!2539746)))))

(assert (= (and d!2209015 c!1317256) b!7065035))

(assert (= (and d!2209015 (not c!1317256)) b!7065036))

(assert (=> d!2209015 m!7787686))

(declare-fun m!7787710 () Bool)

(assert (=> b!7065035 m!7787710))

(assert (=> b!7065036 m!7787690))

(assert (=> b!7065036 m!7787690))

(declare-fun m!7787712 () Bool)

(assert (=> b!7065036 m!7787712))

(assert (=> b!7065036 m!7787694))

(assert (=> b!7065036 m!7787712))

(assert (=> b!7065036 m!7787694))

(declare-fun m!7787714 () Bool)

(assert (=> b!7065036 m!7787714))

(assert (=> b!7064877 d!2209015))

(declare-fun d!2209017 () Bool)

(assert (=> d!2209017 (= (tail!13768 (_1!37414 lt!2539776)) (t!382137 (_1!37414 lt!2539776)))))

(assert (=> b!7064877 d!2209017))

(declare-fun e!4247411 () Bool)

(declare-fun d!2209019 () Bool)

(assert (=> d!2209019 (= (matchZipper!3150 (set.union lt!2539753 lt!2539744) lt!2539746) e!4247411)))

(declare-fun res!2884867 () Bool)

(assert (=> d!2209019 (=> res!2884867 e!4247411)))

(assert (=> d!2209019 (= res!2884867 (matchZipper!3150 lt!2539753 lt!2539746))))

(declare-fun lt!2540022 () Unit!161908)

(declare-fun choose!54017 ((Set Context!13212) (Set Context!13212) List!68356) Unit!161908)

(assert (=> d!2209019 (= lt!2540022 (choose!54017 lt!2539753 lt!2539744 lt!2539746))))

(assert (=> d!2209019 (= (lemmaZipperConcatMatchesSameAsBothZippers!1623 lt!2539753 lt!2539744 lt!2539746) lt!2540022)))

(declare-fun b!7065039 () Bool)

(assert (=> b!7065039 (= e!4247411 (matchZipper!3150 lt!2539744 lt!2539746))))

(assert (= (and d!2209019 (not res!2884867)) b!7065039))

(assert (=> d!2209019 m!7787428))

(assert (=> d!2209019 m!7787430))

(declare-fun m!7787716 () Bool)

(assert (=> d!2209019 m!7787716))

(assert (=> b!7065039 m!7787464))

(assert (=> b!7064877 d!2209019))

(declare-fun b!7065040 () Bool)

(declare-fun e!4247412 () (Set Context!13212))

(assert (=> b!7065040 (= e!4247412 (as set.empty (Set Context!13212)))))

(declare-fun call!642014 () (Set Context!13212))

(declare-fun e!4247414 () (Set Context!13212))

(declare-fun b!7065041 () Bool)

(assert (=> b!7065041 (= e!4247414 (set.union call!642014 (derivationStepZipperUp!2194 (Context!13213 (t!382138 (exprs!7106 lt!2539763))) (h!74680 s!7408))))))

(declare-fun bm!642009 () Bool)

(assert (=> bm!642009 (= call!642014 (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539763)) (Context!13213 (t!382138 (exprs!7106 lt!2539763))) (h!74680 s!7408)))))

(declare-fun b!7065042 () Bool)

(assert (=> b!7065042 (= e!4247412 call!642014)))

(declare-fun b!7065043 () Bool)

(declare-fun e!4247413 () Bool)

(assert (=> b!7065043 (= e!4247413 (nullable!7293 (h!74681 (exprs!7106 lt!2539763))))))

(declare-fun b!7065044 () Bool)

(assert (=> b!7065044 (= e!4247414 e!4247412)))

(declare-fun c!1317257 () Bool)

(assert (=> b!7065044 (= c!1317257 (is-Cons!68233 (exprs!7106 lt!2539763)))))

(declare-fun d!2209021 () Bool)

(declare-fun c!1317258 () Bool)

(assert (=> d!2209021 (= c!1317258 e!4247413)))

(declare-fun res!2884868 () Bool)

(assert (=> d!2209021 (=> (not res!2884868) (not e!4247413))))

(assert (=> d!2209021 (= res!2884868 (is-Cons!68233 (exprs!7106 lt!2539763)))))

(assert (=> d!2209021 (= (derivationStepZipperUp!2194 lt!2539763 (h!74680 s!7408)) e!4247414)))

(assert (= (and d!2209021 res!2884868) b!7065043))

(assert (= (and d!2209021 c!1317258) b!7065041))

(assert (= (and d!2209021 (not c!1317258)) b!7065044))

(assert (= (and b!7065044 c!1317257) b!7065042))

(assert (= (and b!7065044 (not c!1317257)) b!7065040))

(assert (= (or b!7065041 b!7065042) bm!642009))

(declare-fun m!7787718 () Bool)

(assert (=> b!7065041 m!7787718))

(declare-fun m!7787720 () Bool)

(assert (=> bm!642009 m!7787720))

(declare-fun m!7787722 () Bool)

(assert (=> b!7065043 m!7787722))

(assert (=> b!7064877 d!2209021))

(declare-fun b!7065067 () Bool)

(declare-fun e!4247431 () (Set Context!13212))

(declare-fun call!642027 () (Set Context!13212))

(assert (=> b!7065067 (= e!4247431 call!642027)))

(declare-fun b!7065068 () Bool)

(declare-fun e!4247432 () (Set Context!13212))

(assert (=> b!7065068 (= e!4247432 call!642027)))

(declare-fun bm!642022 () Bool)

(declare-fun call!642031 () (Set Context!13212))

(assert (=> bm!642022 (= call!642027 call!642031)))

(declare-fun bm!642023 () Bool)

(declare-fun call!642028 () List!68357)

(declare-fun call!642029 () (Set Context!13212))

(declare-fun c!1317273 () Bool)

(assert (=> bm!642023 (= call!642029 (derivationStepZipperDown!2244 (ite c!1317273 (regOne!35733 (h!74681 (exprs!7106 lt!2539750))) (regOne!35732 (h!74681 (exprs!7106 lt!2539750)))) (ite c!1317273 lt!2539763 (Context!13213 call!642028)) (h!74680 s!7408)))))

(declare-fun b!7065069 () Bool)

(declare-fun c!1317271 () Bool)

(declare-fun e!4247427 () Bool)

(assert (=> b!7065069 (= c!1317271 e!4247427)))

(declare-fun res!2884871 () Bool)

(assert (=> b!7065069 (=> (not res!2884871) (not e!4247427))))

(assert (=> b!7065069 (= res!2884871 (is-Concat!26455 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun e!4247430 () (Set Context!13212))

(declare-fun e!4247428 () (Set Context!13212))

(assert (=> b!7065069 (= e!4247430 e!4247428)))

(declare-fun b!7065070 () Bool)

(assert (=> b!7065070 (= e!4247428 (set.union call!642029 call!642031))))

(declare-fun b!7065071 () Bool)

(declare-fun c!1317272 () Bool)

(assert (=> b!7065071 (= c!1317272 (is-Star!17610 (h!74681 (exprs!7106 lt!2539750))))))

(assert (=> b!7065071 (= e!4247431 e!4247432)))

(declare-fun b!7065072 () Bool)

(assert (=> b!7065072 (= e!4247428 e!4247431)))

(declare-fun c!1317270 () Bool)

(assert (=> b!7065072 (= c!1317270 (is-Concat!26455 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun d!2209023 () Bool)

(declare-fun c!1317269 () Bool)

(assert (=> d!2209023 (= c!1317269 (and (is-ElementMatch!17610 (h!74681 (exprs!7106 lt!2539750))) (= (c!1317210 (h!74681 (exprs!7106 lt!2539750))) (h!74680 s!7408))))))

(declare-fun e!4247429 () (Set Context!13212))

(assert (=> d!2209023 (= (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539750)) lt!2539763 (h!74680 s!7408)) e!4247429)))

(declare-fun bm!642024 () Bool)

(declare-fun call!642030 () (Set Context!13212))

(assert (=> bm!642024 (= call!642031 call!642030)))

(declare-fun bm!642025 () Bool)

(declare-fun $colon$colon!2640 (List!68357 Regex!17610) List!68357)

(assert (=> bm!642025 (= call!642028 ($colon$colon!2640 (exprs!7106 lt!2539763) (ite (or c!1317271 c!1317270) (regTwo!35732 (h!74681 (exprs!7106 lt!2539750))) (h!74681 (exprs!7106 lt!2539750)))))))

(declare-fun b!7065073 () Bool)

(assert (=> b!7065073 (= e!4247429 e!4247430)))

(assert (=> b!7065073 (= c!1317273 (is-Union!17610 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun b!7065074 () Bool)

(assert (=> b!7065074 (= e!4247432 (as set.empty (Set Context!13212)))))

(declare-fun b!7065075 () Bool)

(assert (=> b!7065075 (= e!4247430 (set.union call!642029 call!642030))))

(declare-fun call!642032 () List!68357)

(declare-fun bm!642026 () Bool)

(assert (=> bm!642026 (= call!642030 (derivationStepZipperDown!2244 (ite c!1317273 (regTwo!35733 (h!74681 (exprs!7106 lt!2539750))) (ite c!1317271 (regTwo!35732 (h!74681 (exprs!7106 lt!2539750))) (ite c!1317270 (regOne!35732 (h!74681 (exprs!7106 lt!2539750))) (reg!17939 (h!74681 (exprs!7106 lt!2539750)))))) (ite (or c!1317273 c!1317271) lt!2539763 (Context!13213 call!642032)) (h!74680 s!7408)))))

(declare-fun b!7065076 () Bool)

(assert (=> b!7065076 (= e!4247429 (set.insert lt!2539763 (as set.empty (Set Context!13212))))))

(declare-fun b!7065077 () Bool)

(assert (=> b!7065077 (= e!4247427 (nullable!7293 (regOne!35732 (h!74681 (exprs!7106 lt!2539750)))))))

(declare-fun bm!642027 () Bool)

(assert (=> bm!642027 (= call!642032 call!642028)))

(assert (= (and d!2209023 c!1317269) b!7065076))

(assert (= (and d!2209023 (not c!1317269)) b!7065073))

(assert (= (and b!7065073 c!1317273) b!7065075))

(assert (= (and b!7065073 (not c!1317273)) b!7065069))

(assert (= (and b!7065069 res!2884871) b!7065077))

(assert (= (and b!7065069 c!1317271) b!7065070))

(assert (= (and b!7065069 (not c!1317271)) b!7065072))

(assert (= (and b!7065072 c!1317270) b!7065067))

(assert (= (and b!7065072 (not c!1317270)) b!7065071))

(assert (= (and b!7065071 c!1317272) b!7065068))

(assert (= (and b!7065071 (not c!1317272)) b!7065074))

(assert (= (or b!7065067 b!7065068) bm!642027))

(assert (= (or b!7065067 b!7065068) bm!642022))

(assert (= (or b!7065070 bm!642022) bm!642024))

(assert (= (or b!7065070 bm!642027) bm!642025))

(assert (= (or b!7065075 b!7065070) bm!642023))

(assert (= (or b!7065075 bm!642024) bm!642026))

(declare-fun m!7787724 () Bool)

(assert (=> bm!642025 m!7787724))

(declare-fun m!7787726 () Bool)

(assert (=> bm!642026 m!7787726))

(declare-fun m!7787728 () Bool)

(assert (=> b!7065077 m!7787728))

(declare-fun m!7787730 () Bool)

(assert (=> bm!642023 m!7787730))

(assert (=> b!7065076 m!7787368))

(assert (=> b!7064877 d!2209023))

(declare-fun b!7065096 () Bool)

(declare-fun res!2884883 () Bool)

(declare-fun e!4247444 () Bool)

(assert (=> b!7065096 (=> (not res!2884883) (not e!4247444))))

(declare-fun lt!2540030 () Option!16943)

(assert (=> b!7065096 (= res!2884883 (matchZipper!3150 (ite c!1317209 lt!2539783 lt!2539745) (_1!37414 (get!23899 lt!2540030))))))

(declare-fun b!7065098 () Bool)

(declare-fun e!4247445 () Option!16943)

(assert (=> b!7065098 (= e!4247445 (Some!16942 (tuple2!68223 Nil!68232 s!7408)))))

(declare-fun b!7065099 () Bool)

(declare-fun lt!2540031 () Unit!161908)

(declare-fun lt!2540029 () Unit!161908)

(assert (=> b!7065099 (= lt!2540031 lt!2540029)))

(assert (=> b!7065099 (= (++!15718 (++!15718 Nil!68232 (Cons!68232 (h!74680 s!7408) Nil!68232)) (t!382137 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2965 (List!68356 C!35490 List!68356 List!68356) Unit!161908)

(assert (=> b!7065099 (= lt!2540029 (lemmaMoveElementToOtherListKeepsConcatEq!2965 Nil!68232 (h!74680 s!7408) (t!382137 s!7408) s!7408))))

(declare-fun e!4247446 () Option!16943)

(assert (=> b!7065099 (= e!4247446 (findConcatSeparationZippers!459 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 (++!15718 Nil!68232 (Cons!68232 (h!74680 s!7408) Nil!68232)) (t!382137 s!7408) s!7408))))

(declare-fun b!7065100 () Bool)

(assert (=> b!7065100 (= e!4247445 e!4247446)))

(declare-fun c!1317279 () Bool)

(assert (=> b!7065100 (= c!1317279 (is-Nil!68232 s!7408))))

(declare-fun b!7065101 () Bool)

(declare-fun e!4247447 () Bool)

(assert (=> b!7065101 (= e!4247447 (matchZipper!3150 lt!2539796 s!7408))))

(declare-fun b!7065102 () Bool)

(assert (=> b!7065102 (= e!4247444 (= (++!15718 (_1!37414 (get!23899 lt!2540030)) (_2!37414 (get!23899 lt!2540030))) s!7408))))

(declare-fun b!7065103 () Bool)

(declare-fun e!4247443 () Bool)

(assert (=> b!7065103 (= e!4247443 (not (isDefined!13644 lt!2540030)))))

(declare-fun b!7065104 () Bool)

(declare-fun res!2884884 () Bool)

(assert (=> b!7065104 (=> (not res!2884884) (not e!4247444))))

(assert (=> b!7065104 (= res!2884884 (matchZipper!3150 lt!2539796 (_2!37414 (get!23899 lt!2540030))))))

(declare-fun d!2209025 () Bool)

(assert (=> d!2209025 e!4247443))

(declare-fun res!2884885 () Bool)

(assert (=> d!2209025 (=> res!2884885 e!4247443)))

(assert (=> d!2209025 (= res!2884885 e!4247444)))

(declare-fun res!2884882 () Bool)

(assert (=> d!2209025 (=> (not res!2884882) (not e!4247444))))

(assert (=> d!2209025 (= res!2884882 (isDefined!13644 lt!2540030))))

(assert (=> d!2209025 (= lt!2540030 e!4247445)))

(declare-fun c!1317278 () Bool)

(assert (=> d!2209025 (= c!1317278 e!4247447)))

(declare-fun res!2884886 () Bool)

(assert (=> d!2209025 (=> (not res!2884886) (not e!4247447))))

(assert (=> d!2209025 (= res!2884886 (matchZipper!3150 (ite c!1317209 lt!2539783 lt!2539745) Nil!68232))))

(assert (=> d!2209025 (= (++!15718 Nil!68232 s!7408) s!7408)))

(assert (=> d!2209025 (= (findConcatSeparationZippers!459 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 Nil!68232 s!7408 s!7408) lt!2540030)))

(declare-fun b!7065097 () Bool)

(assert (=> b!7065097 (= e!4247446 None!16942)))

(assert (= (and d!2209025 res!2884886) b!7065101))

(assert (= (and d!2209025 c!1317278) b!7065098))

(assert (= (and d!2209025 (not c!1317278)) b!7065100))

(assert (= (and b!7065100 c!1317279) b!7065097))

(assert (= (and b!7065100 (not c!1317279)) b!7065099))

(assert (= (and d!2209025 res!2884882) b!7065096))

(assert (= (and b!7065096 res!2884883) b!7065104))

(assert (= (and b!7065104 res!2884884) b!7065102))

(assert (= (and d!2209025 (not res!2884885)) b!7065103))

(declare-fun m!7787732 () Bool)

(assert (=> b!7065103 m!7787732))

(declare-fun m!7787734 () Bool)

(assert (=> b!7065099 m!7787734))

(assert (=> b!7065099 m!7787734))

(declare-fun m!7787736 () Bool)

(assert (=> b!7065099 m!7787736))

(declare-fun m!7787738 () Bool)

(assert (=> b!7065099 m!7787738))

(assert (=> b!7065099 m!7787734))

(declare-fun m!7787740 () Bool)

(assert (=> b!7065099 m!7787740))

(declare-fun m!7787742 () Bool)

(assert (=> b!7065104 m!7787742))

(declare-fun m!7787744 () Bool)

(assert (=> b!7065104 m!7787744))

(declare-fun m!7787746 () Bool)

(assert (=> b!7065101 m!7787746))

(assert (=> b!7065102 m!7787742))

(declare-fun m!7787748 () Bool)

(assert (=> b!7065102 m!7787748))

(assert (=> d!2209025 m!7787732))

(declare-fun m!7787750 () Bool)

(assert (=> d!2209025 m!7787750))

(declare-fun m!7787752 () Bool)

(assert (=> d!2209025 m!7787752))

(assert (=> b!7065096 m!7787742))

(declare-fun m!7787754 () Bool)

(assert (=> b!7065096 m!7787754))

(assert (=> bm!641994 d!2209025))

(declare-fun d!2209027 () Bool)

(declare-fun c!1317280 () Bool)

(assert (=> d!2209027 (= c!1317280 (isEmpty!39813 (_2!37414 lt!2539776)))))

(declare-fun e!4247448 () Bool)

(assert (=> d!2209027 (= (matchZipper!3150 lt!2539796 (_2!37414 lt!2539776)) e!4247448)))

(declare-fun b!7065105 () Bool)

(assert (=> b!7065105 (= e!4247448 (nullableZipper!2679 lt!2539796))))

(declare-fun b!7065106 () Bool)

(assert (=> b!7065106 (= e!4247448 (matchZipper!3150 (derivationStepZipper!3060 lt!2539796 (head!14385 (_2!37414 lt!2539776))) (tail!13768 (_2!37414 lt!2539776))))))

(assert (= (and d!2209027 c!1317280) b!7065105))

(assert (= (and d!2209027 (not c!1317280)) b!7065106))

(declare-fun m!7787756 () Bool)

(assert (=> d!2209027 m!7787756))

(declare-fun m!7787758 () Bool)

(assert (=> b!7065105 m!7787758))

(declare-fun m!7787760 () Bool)

(assert (=> b!7065106 m!7787760))

(assert (=> b!7065106 m!7787760))

(declare-fun m!7787762 () Bool)

(assert (=> b!7065106 m!7787762))

(declare-fun m!7787764 () Bool)

(assert (=> b!7065106 m!7787764))

(assert (=> b!7065106 m!7787762))

(assert (=> b!7065106 m!7787764))

(declare-fun m!7787766 () Bool)

(assert (=> b!7065106 m!7787766))

(assert (=> b!7064860 d!2209027))

(declare-fun bs!1879596 () Bool)

(declare-fun d!2209029 () Bool)

(assert (= bs!1879596 (and d!2209029 b!7064884)))

(declare-fun lambda!423435 () Int)

(assert (=> bs!1879596 (= lambda!423435 lambda!423349)))

(declare-fun forall!16559 (List!68357 Int) Bool)

(assert (=> d!2209029 (= (inv!86885 setElem!50082) (forall!16559 (exprs!7106 setElem!50082) lambda!423435))))

(declare-fun bs!1879597 () Bool)

(assert (= bs!1879597 d!2209029))

(declare-fun m!7787768 () Bool)

(assert (=> bs!1879597 m!7787768))

(assert (=> setNonEmpty!50082 d!2209029))

(declare-fun d!2209031 () Bool)

(declare-fun c!1317281 () Bool)

(assert (=> d!2209031 (= c!1317281 (isEmpty!39813 (t!382137 s!7408)))))

(declare-fun e!4247449 () Bool)

(assert (=> d!2209031 (= (matchZipper!3150 lt!2539765 (t!382137 s!7408)) e!4247449)))

(declare-fun b!7065107 () Bool)

(assert (=> b!7065107 (= e!4247449 (nullableZipper!2679 lt!2539765))))

(declare-fun b!7065108 () Bool)

(assert (=> b!7065108 (= e!4247449 (matchZipper!3150 (derivationStepZipper!3060 lt!2539765 (head!14385 (t!382137 s!7408))) (tail!13768 (t!382137 s!7408))))))

(assert (= (and d!2209031 c!1317281) b!7065107))

(assert (= (and d!2209031 (not c!1317281)) b!7065108))

(declare-fun m!7787770 () Bool)

(assert (=> d!2209031 m!7787770))

(declare-fun m!7787772 () Bool)

(assert (=> b!7065107 m!7787772))

(declare-fun m!7787774 () Bool)

(assert (=> b!7065108 m!7787774))

(assert (=> b!7065108 m!7787774))

(declare-fun m!7787776 () Bool)

(assert (=> b!7065108 m!7787776))

(declare-fun m!7787778 () Bool)

(assert (=> b!7065108 m!7787778))

(assert (=> b!7065108 m!7787776))

(assert (=> b!7065108 m!7787778))

(declare-fun m!7787780 () Bool)

(assert (=> b!7065108 m!7787780))

(assert (=> b!7064879 d!2209031))

(declare-fun d!2209033 () Bool)

(assert (=> d!2209033 (forall!16559 (++!15717 lt!2539797 (exprs!7106 ct2!306)) lambda!423349)))

(declare-fun lt!2540034 () Unit!161908)

(declare-fun choose!54018 (List!68357 List!68357 Int) Unit!161908)

(assert (=> d!2209033 (= lt!2540034 (choose!54018 lt!2539797 (exprs!7106 ct2!306) lambda!423349))))

(assert (=> d!2209033 (forall!16559 lt!2539797 lambda!423349)))

(assert (=> d!2209033 (= (lemmaConcatPreservesForall!921 lt!2539797 (exprs!7106 ct2!306) lambda!423349) lt!2540034)))

(declare-fun bs!1879598 () Bool)

(assert (= bs!1879598 d!2209033))

(assert (=> bs!1879598 m!7787352))

(assert (=> bs!1879598 m!7787352))

(declare-fun m!7787782 () Bool)

(assert (=> bs!1879598 m!7787782))

(declare-fun m!7787784 () Bool)

(assert (=> bs!1879598 m!7787784))

(declare-fun m!7787786 () Bool)

(assert (=> bs!1879598 m!7787786))

(assert (=> b!7064879 d!2209033))

(declare-fun b!7065109 () Bool)

(declare-fun e!4247450 () (Set Context!13212))

(assert (=> b!7065109 (= e!4247450 (as set.empty (Set Context!13212)))))

(declare-fun e!4247452 () (Set Context!13212))

(declare-fun call!642033 () (Set Context!13212))

(declare-fun b!7065110 () Bool)

(assert (=> b!7065110 (= e!4247452 (set.union call!642033 (derivationStepZipperUp!2194 (Context!13213 (t!382138 (exprs!7106 lt!2539787))) (h!74680 s!7408))))))

(declare-fun bm!642028 () Bool)

(assert (=> bm!642028 (= call!642033 (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539787)) (Context!13213 (t!382138 (exprs!7106 lt!2539787))) (h!74680 s!7408)))))

(declare-fun b!7065111 () Bool)

(assert (=> b!7065111 (= e!4247450 call!642033)))

(declare-fun b!7065112 () Bool)

(declare-fun e!4247451 () Bool)

(assert (=> b!7065112 (= e!4247451 (nullable!7293 (h!74681 (exprs!7106 lt!2539787))))))

(declare-fun b!7065113 () Bool)

(assert (=> b!7065113 (= e!4247452 e!4247450)))

(declare-fun c!1317282 () Bool)

(assert (=> b!7065113 (= c!1317282 (is-Cons!68233 (exprs!7106 lt!2539787)))))

(declare-fun d!2209035 () Bool)

(declare-fun c!1317283 () Bool)

(assert (=> d!2209035 (= c!1317283 e!4247451)))

(declare-fun res!2884887 () Bool)

(assert (=> d!2209035 (=> (not res!2884887) (not e!4247451))))

(assert (=> d!2209035 (= res!2884887 (is-Cons!68233 (exprs!7106 lt!2539787)))))

(assert (=> d!2209035 (= (derivationStepZipperUp!2194 lt!2539787 (h!74680 s!7408)) e!4247452)))

(assert (= (and d!2209035 res!2884887) b!7065112))

(assert (= (and d!2209035 c!1317283) b!7065110))

(assert (= (and d!2209035 (not c!1317283)) b!7065113))

(assert (= (and b!7065113 c!1317282) b!7065111))

(assert (= (and b!7065113 (not c!1317282)) b!7065109))

(assert (= (or b!7065110 b!7065111) bm!642028))

(declare-fun m!7787788 () Bool)

(assert (=> b!7065110 m!7787788))

(declare-fun m!7787790 () Bool)

(assert (=> bm!642028 m!7787790))

(declare-fun m!7787792 () Bool)

(assert (=> b!7065112 m!7787792))

(assert (=> b!7064863 d!2209035))

(declare-fun d!2209037 () Bool)

(assert (=> d!2209037 (= (flatMap!2536 lt!2539740 lambda!423350) (dynLambda!27720 lambda!423350 lt!2539787))))

(declare-fun lt!2540035 () Unit!161908)

(assert (=> d!2209037 (= lt!2540035 (choose!54016 lt!2539740 lt!2539787 lambda!423350))))

(assert (=> d!2209037 (= lt!2539740 (set.insert lt!2539787 (as set.empty (Set Context!13212))))))

(assert (=> d!2209037 (= (lemmaFlatMapOnSingletonSet!2045 lt!2539740 lt!2539787 lambda!423350) lt!2540035)))

(declare-fun b_lambda!269525 () Bool)

(assert (=> (not b_lambda!269525) (not d!2209037)))

(declare-fun bs!1879599 () Bool)

(assert (= bs!1879599 d!2209037))

(assert (=> bs!1879599 m!7787456))

(declare-fun m!7787794 () Bool)

(assert (=> bs!1879599 m!7787794))

(declare-fun m!7787796 () Bool)

(assert (=> bs!1879599 m!7787796))

(assert (=> bs!1879599 m!7787458))

(assert (=> b!7064863 d!2209037))

(declare-fun bs!1879600 () Bool)

(declare-fun d!2209039 () Bool)

(assert (= bs!1879600 (and d!2209039 b!7064882)))

(declare-fun lambda!423438 () Int)

(assert (=> bs!1879600 (= lambda!423438 lambda!423350)))

(assert (=> d!2209039 true))

(assert (=> d!2209039 (= (derivationStepZipper!3060 lt!2539740 (h!74680 s!7408)) (flatMap!2536 lt!2539740 lambda!423438))))

(declare-fun bs!1879601 () Bool)

(assert (= bs!1879601 d!2209039))

(declare-fun m!7787798 () Bool)

(assert (=> bs!1879601 m!7787798))

(assert (=> b!7064863 d!2209039))

(declare-fun d!2209041 () Bool)

(assert (=> d!2209041 (= (flatMap!2536 lt!2539740 lambda!423350) (choose!54015 lt!2539740 lambda!423350))))

(declare-fun bs!1879602 () Bool)

(assert (= bs!1879602 d!2209041))

(declare-fun m!7787800 () Bool)

(assert (=> bs!1879602 m!7787800))

(assert (=> b!7064863 d!2209041))

(assert (=> b!7064863 d!2209033))

(declare-fun d!2209043 () Bool)

(assert (=> d!2209043 (isDefined!13644 (findConcatSeparationZippers!459 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 Nil!68232 s!7408 s!7408))))

(declare-fun lt!2540038 () Unit!161908)

(declare-fun choose!54019 ((Set Context!13212) (Set Context!13212) List!68356 List!68356 List!68356 List!68356 List!68356) Unit!161908)

(assert (=> d!2209043 (= lt!2540038 (choose!54019 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 (_1!37414 lt!2539776) (_2!37414 lt!2539776) s!7408 Nil!68232 s!7408))))

(assert (=> d!2209043 (matchZipper!3150 (ite c!1317209 lt!2539783 lt!2539745) (_1!37414 lt!2539776))))

(assert (=> d!2209043 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!59 (ite c!1317209 lt!2539783 lt!2539745) lt!2539796 (_1!37414 lt!2539776) (_2!37414 lt!2539776) s!7408 Nil!68232 s!7408) lt!2540038)))

(declare-fun bs!1879603 () Bool)

(assert (= bs!1879603 d!2209043))

(assert (=> bs!1879603 m!7787384))

(assert (=> bs!1879603 m!7787384))

(declare-fun m!7787802 () Bool)

(assert (=> bs!1879603 m!7787802))

(declare-fun m!7787804 () Bool)

(assert (=> bs!1879603 m!7787804))

(declare-fun m!7787806 () Bool)

(assert (=> bs!1879603 m!7787806))

(assert (=> bm!641995 d!2209043))

(declare-fun d!2209045 () Bool)

(declare-fun c!1317286 () Bool)

(assert (=> d!2209045 (= c!1317286 (isEmpty!39813 (t!382137 s!7408)))))

(declare-fun e!4247453 () Bool)

(assert (=> d!2209045 (= (matchZipper!3150 lt!2539741 (t!382137 s!7408)) e!4247453)))

(declare-fun b!7065116 () Bool)

(assert (=> b!7065116 (= e!4247453 (nullableZipper!2679 lt!2539741))))

(declare-fun b!7065117 () Bool)

(assert (=> b!7065117 (= e!4247453 (matchZipper!3150 (derivationStepZipper!3060 lt!2539741 (head!14385 (t!382137 s!7408))) (tail!13768 (t!382137 s!7408))))))

(assert (= (and d!2209045 c!1317286) b!7065116))

(assert (= (and d!2209045 (not c!1317286)) b!7065117))

(assert (=> d!2209045 m!7787770))

(declare-fun m!7787808 () Bool)

(assert (=> b!7065116 m!7787808))

(assert (=> b!7065117 m!7787774))

(assert (=> b!7065117 m!7787774))

(declare-fun m!7787810 () Bool)

(assert (=> b!7065117 m!7787810))

(assert (=> b!7065117 m!7787778))

(assert (=> b!7065117 m!7787810))

(assert (=> b!7065117 m!7787778))

(declare-fun m!7787812 () Bool)

(assert (=> b!7065117 m!7787812))

(assert (=> b!7064862 d!2209045))

(assert (=> b!7064862 d!2209033))

(declare-fun d!2209047 () Bool)

(declare-fun c!1317287 () Bool)

(assert (=> d!2209047 (= c!1317287 (isEmpty!39813 (t!382137 s!7408)))))

(declare-fun e!4247454 () Bool)

(assert (=> d!2209047 (= (matchZipper!3150 lt!2539772 (t!382137 s!7408)) e!4247454)))

(declare-fun b!7065118 () Bool)

(assert (=> b!7065118 (= e!4247454 (nullableZipper!2679 lt!2539772))))

(declare-fun b!7065119 () Bool)

(assert (=> b!7065119 (= e!4247454 (matchZipper!3150 (derivationStepZipper!3060 lt!2539772 (head!14385 (t!382137 s!7408))) (tail!13768 (t!382137 s!7408))))))

(assert (= (and d!2209047 c!1317287) b!7065118))

(assert (= (and d!2209047 (not c!1317287)) b!7065119))

(assert (=> d!2209047 m!7787770))

(declare-fun m!7787814 () Bool)

(assert (=> b!7065118 m!7787814))

(assert (=> b!7065119 m!7787774))

(assert (=> b!7065119 m!7787774))

(declare-fun m!7787816 () Bool)

(assert (=> b!7065119 m!7787816))

(assert (=> b!7065119 m!7787778))

(assert (=> b!7065119 m!7787816))

(assert (=> b!7065119 m!7787778))

(declare-fun m!7787818 () Bool)

(assert (=> b!7065119 m!7787818))

(assert (=> b!7064862 d!2209047))

(declare-fun d!2209049 () Bool)

(declare-fun e!4247455 () Bool)

(assert (=> d!2209049 (= (matchZipper!3150 (set.union lt!2539788 lt!2539765) (t!382137 s!7408)) e!4247455)))

(declare-fun res!2884888 () Bool)

(assert (=> d!2209049 (=> res!2884888 e!4247455)))

(assert (=> d!2209049 (= res!2884888 (matchZipper!3150 lt!2539788 (t!382137 s!7408)))))

(declare-fun lt!2540039 () Unit!161908)

(assert (=> d!2209049 (= lt!2540039 (choose!54017 lt!2539788 lt!2539765 (t!382137 s!7408)))))

(assert (=> d!2209049 (= (lemmaZipperConcatMatchesSameAsBothZippers!1623 lt!2539788 lt!2539765 (t!382137 s!7408)) lt!2540039)))

(declare-fun b!7065120 () Bool)

(assert (=> b!7065120 (= e!4247455 (matchZipper!3150 lt!2539765 (t!382137 s!7408)))))

(assert (= (and d!2209049 (not res!2884888)) b!7065120))

(declare-fun m!7787820 () Bool)

(assert (=> d!2209049 m!7787820))

(assert (=> d!2209049 m!7787376))

(declare-fun m!7787822 () Bool)

(assert (=> d!2209049 m!7787822))

(assert (=> b!7065120 m!7787342))

(assert (=> b!7064862 d!2209049))

(declare-fun d!2209051 () Bool)

(declare-fun c!1317288 () Bool)

(assert (=> d!2209051 (= c!1317288 (isEmpty!39813 (t!382137 s!7408)))))

(declare-fun e!4247456 () Bool)

(assert (=> d!2209051 (= (matchZipper!3150 lt!2539788 (t!382137 s!7408)) e!4247456)))

(declare-fun b!7065121 () Bool)

(assert (=> b!7065121 (= e!4247456 (nullableZipper!2679 lt!2539788))))

(declare-fun b!7065122 () Bool)

(assert (=> b!7065122 (= e!4247456 (matchZipper!3150 (derivationStepZipper!3060 lt!2539788 (head!14385 (t!382137 s!7408))) (tail!13768 (t!382137 s!7408))))))

(assert (= (and d!2209051 c!1317288) b!7065121))

(assert (= (and d!2209051 (not c!1317288)) b!7065122))

(assert (=> d!2209051 m!7787770))

(declare-fun m!7787824 () Bool)

(assert (=> b!7065121 m!7787824))

(assert (=> b!7065122 m!7787774))

(assert (=> b!7065122 m!7787774))

(declare-fun m!7787826 () Bool)

(assert (=> b!7065122 m!7787826))

(assert (=> b!7065122 m!7787778))

(assert (=> b!7065122 m!7787826))

(assert (=> b!7065122 m!7787778))

(declare-fun m!7787828 () Bool)

(assert (=> b!7065122 m!7787828))

(assert (=> b!7064862 d!2209051))

(declare-fun d!2209053 () Bool)

(declare-fun lt!2540042 () Int)

(assert (=> d!2209053 (>= lt!2540042 0)))

(declare-fun e!4247459 () Int)

(assert (=> d!2209053 (= lt!2540042 e!4247459)))

(declare-fun c!1317291 () Bool)

(assert (=> d!2209053 (= c!1317291 (is-Cons!68234 (Cons!68234 lt!2539763 Nil!68234)))))

(assert (=> d!2209053 (= (zipperDepthTotal!575 (Cons!68234 lt!2539763 Nil!68234)) lt!2540042)))

(declare-fun b!7065127 () Bool)

(assert (=> b!7065127 (= e!4247459 (+ (contextDepthTotal!546 (h!74682 (Cons!68234 lt!2539763 Nil!68234))) (zipperDepthTotal!575 (t!382139 (Cons!68234 lt!2539763 Nil!68234)))))))

(declare-fun b!7065128 () Bool)

(assert (=> b!7065128 (= e!4247459 0)))

(assert (= (and d!2209053 c!1317291) b!7065127))

(assert (= (and d!2209053 (not c!1317291)) b!7065128))

(declare-fun m!7787830 () Bool)

(assert (=> b!7065127 m!7787830))

(declare-fun m!7787832 () Bool)

(assert (=> b!7065127 m!7787832))

(assert (=> b!7064864 d!2209053))

(assert (=> b!7064881 d!2209031))

(assert (=> b!7064881 d!2209033))

(declare-fun d!2209055 () Bool)

(declare-fun c!1317292 () Bool)

(assert (=> d!2209055 (= c!1317292 (isEmpty!39813 s!7408))))

(declare-fun e!4247460 () Bool)

(assert (=> d!2209055 (= (matchZipper!3150 lt!2539770 s!7408) e!4247460)))

(declare-fun b!7065129 () Bool)

(assert (=> b!7065129 (= e!4247460 (nullableZipper!2679 lt!2539770))))

(declare-fun b!7065130 () Bool)

(assert (=> b!7065130 (= e!4247460 (matchZipper!3150 (derivationStepZipper!3060 lt!2539770 (head!14385 s!7408)) (tail!13768 s!7408)))))

(assert (= (and d!2209055 c!1317292) b!7065129))

(assert (= (and d!2209055 (not c!1317292)) b!7065130))

(assert (=> d!2209055 m!7787632))

(declare-fun m!7787834 () Bool)

(assert (=> b!7065129 m!7787834))

(assert (=> b!7065130 m!7787636))

(assert (=> b!7065130 m!7787636))

(declare-fun m!7787836 () Bool)

(assert (=> b!7065130 m!7787836))

(assert (=> b!7065130 m!7787640))

(assert (=> b!7065130 m!7787836))

(assert (=> b!7065130 m!7787640))

(declare-fun m!7787838 () Bool)

(assert (=> b!7065130 m!7787838))

(assert (=> start!685748 d!2209055))

(declare-fun bs!1879604 () Bool)

(declare-fun d!2209057 () Bool)

(assert (= bs!1879604 (and d!2209057 b!7064884)))

(declare-fun lambda!423443 () Int)

(assert (=> bs!1879604 (= lambda!423443 lambda!423348)))

(assert (=> d!2209057 true))

(assert (=> d!2209057 (= (appendTo!731 z1!570 ct2!306) (map!15948 z1!570 lambda!423443))))

(declare-fun bs!1879605 () Bool)

(assert (= bs!1879605 d!2209057))

(declare-fun m!7787840 () Bool)

(assert (=> bs!1879605 m!7787840))

(assert (=> start!685748 d!2209057))

(declare-fun bs!1879606 () Bool)

(declare-fun d!2209059 () Bool)

(assert (= bs!1879606 (and d!2209059 b!7064884)))

(declare-fun lambda!423444 () Int)

(assert (=> bs!1879606 (= lambda!423444 lambda!423349)))

(declare-fun bs!1879607 () Bool)

(assert (= bs!1879607 (and d!2209059 d!2209029)))

(assert (=> bs!1879607 (= lambda!423444 lambda!423435)))

(assert (=> d!2209059 (= (inv!86885 ct2!306) (forall!16559 (exprs!7106 ct2!306) lambda!423444))))

(declare-fun bs!1879608 () Bool)

(assert (= bs!1879608 d!2209059))

(declare-fun m!7787842 () Bool)

(assert (=> bs!1879608 m!7787842))

(assert (=> start!685748 d!2209059))

(declare-fun d!2209061 () Bool)

(declare-fun nullableFct!2794 (Regex!17610) Bool)

(assert (=> d!2209061 (= (nullable!7293 (h!74681 (exprs!7106 lt!2539750))) (nullableFct!2794 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun bs!1879609 () Bool)

(assert (= bs!1879609 d!2209061))

(declare-fun m!7787844 () Bool)

(assert (=> bs!1879609 m!7787844))

(assert (=> b!7064883 d!2209061))

(declare-fun d!2209063 () Bool)

(assert (=> d!2209063 (= (tail!13769 (exprs!7106 lt!2539750)) (t!382138 (exprs!7106 lt!2539750)))))

(assert (=> b!7064883 d!2209063))

(declare-fun d!2209065 () Bool)

(assert (=> d!2209065 (= (flatMap!2536 lt!2539751 lambda!423350) (dynLambda!27720 lambda!423350 lt!2539760))))

(declare-fun lt!2540045 () Unit!161908)

(assert (=> d!2209065 (= lt!2540045 (choose!54016 lt!2539751 lt!2539760 lambda!423350))))

(assert (=> d!2209065 (= lt!2539751 (set.insert lt!2539760 (as set.empty (Set Context!13212))))))

(assert (=> d!2209065 (= (lemmaFlatMapOnSingletonSet!2045 lt!2539751 lt!2539760 lambda!423350) lt!2540045)))

(declare-fun b_lambda!269527 () Bool)

(assert (=> (not b_lambda!269527) (not d!2209065)))

(declare-fun bs!1879610 () Bool)

(assert (= bs!1879610 d!2209065))

(assert (=> bs!1879610 m!7787386))

(declare-fun m!7787846 () Bool)

(assert (=> bs!1879610 m!7787846))

(declare-fun m!7787848 () Bool)

(assert (=> bs!1879610 m!7787848))

(assert (=> bs!1879610 m!7787308))

(assert (=> b!7064882 d!2209065))

(declare-fun b!7065131 () Bool)

(declare-fun e!4247461 () (Set Context!13212))

(assert (=> b!7065131 (= e!4247461 (as set.empty (Set Context!13212)))))

(declare-fun b!7065132 () Bool)

(declare-fun e!4247463 () (Set Context!13212))

(declare-fun call!642034 () (Set Context!13212))

(assert (=> b!7065132 (= e!4247463 (set.union call!642034 (derivationStepZipperUp!2194 (Context!13213 (t!382138 (exprs!7106 lt!2539760))) (h!74680 s!7408))))))

(declare-fun bm!642029 () Bool)

(assert (=> bm!642029 (= call!642034 (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539760)) (Context!13213 (t!382138 (exprs!7106 lt!2539760))) (h!74680 s!7408)))))

(declare-fun b!7065133 () Bool)

(assert (=> b!7065133 (= e!4247461 call!642034)))

(declare-fun b!7065134 () Bool)

(declare-fun e!4247462 () Bool)

(assert (=> b!7065134 (= e!4247462 (nullable!7293 (h!74681 (exprs!7106 lt!2539760))))))

(declare-fun b!7065135 () Bool)

(assert (=> b!7065135 (= e!4247463 e!4247461)))

(declare-fun c!1317294 () Bool)

(assert (=> b!7065135 (= c!1317294 (is-Cons!68233 (exprs!7106 lt!2539760)))))

(declare-fun d!2209067 () Bool)

(declare-fun c!1317295 () Bool)

(assert (=> d!2209067 (= c!1317295 e!4247462)))

(declare-fun res!2884889 () Bool)

(assert (=> d!2209067 (=> (not res!2884889) (not e!4247462))))

(assert (=> d!2209067 (= res!2884889 (is-Cons!68233 (exprs!7106 lt!2539760)))))

(assert (=> d!2209067 (= (derivationStepZipperUp!2194 lt!2539760 (h!74680 s!7408)) e!4247463)))

(assert (= (and d!2209067 res!2884889) b!7065134))

(assert (= (and d!2209067 c!1317295) b!7065132))

(assert (= (and d!2209067 (not c!1317295)) b!7065135))

(assert (= (and b!7065135 c!1317294) b!7065133))

(assert (= (and b!7065135 (not c!1317294)) b!7065131))

(assert (= (or b!7065132 b!7065133) bm!642029))

(declare-fun m!7787850 () Bool)

(assert (=> b!7065132 m!7787850))

(declare-fun m!7787852 () Bool)

(assert (=> bm!642029 m!7787852))

(declare-fun m!7787854 () Bool)

(assert (=> b!7065134 m!7787854))

(assert (=> b!7064882 d!2209067))

(declare-fun d!2209069 () Bool)

(assert (=> d!2209069 (= (flatMap!2536 lt!2539751 lambda!423350) (choose!54015 lt!2539751 lambda!423350))))

(declare-fun bs!1879611 () Bool)

(assert (= bs!1879611 d!2209069))

(declare-fun m!7787856 () Bool)

(assert (=> bs!1879611 m!7787856))

(assert (=> b!7064882 d!2209069))

(declare-fun bs!1879612 () Bool)

(declare-fun d!2209071 () Bool)

(assert (= bs!1879612 (and d!2209071 b!7064882)))

(declare-fun lambda!423445 () Int)

(assert (=> bs!1879612 (= lambda!423445 lambda!423350)))

(declare-fun bs!1879613 () Bool)

(assert (= bs!1879613 (and d!2209071 d!2209039)))

(assert (=> bs!1879613 (= lambda!423445 lambda!423438)))

(assert (=> d!2209071 true))

(assert (=> d!2209071 (= (derivationStepZipper!3060 lt!2539751 (h!74680 s!7408)) (flatMap!2536 lt!2539751 lambda!423445))))

(declare-fun bs!1879614 () Bool)

(assert (= bs!1879614 d!2209071))

(declare-fun m!7787858 () Bool)

(assert (=> bs!1879614 m!7787858))

(assert (=> b!7064882 d!2209071))

(declare-fun d!2209073 () Bool)

(assert (=> d!2209073 (forall!16559 (++!15717 (exprs!7106 lt!2539750) (exprs!7106 ct2!306)) lambda!423349)))

(declare-fun lt!2540046 () Unit!161908)

(assert (=> d!2209073 (= lt!2540046 (choose!54018 (exprs!7106 lt!2539750) (exprs!7106 ct2!306) lambda!423349))))

(assert (=> d!2209073 (forall!16559 (exprs!7106 lt!2539750) lambda!423349)))

(assert (=> d!2209073 (= (lemmaConcatPreservesForall!921 (exprs!7106 lt!2539750) (exprs!7106 ct2!306) lambda!423349) lt!2540046)))

(declare-fun bs!1879615 () Bool)

(assert (= bs!1879615 d!2209073))

(assert (=> bs!1879615 m!7787302))

(assert (=> bs!1879615 m!7787302))

(declare-fun m!7787860 () Bool)

(assert (=> bs!1879615 m!7787860))

(declare-fun m!7787862 () Bool)

(assert (=> bs!1879615 m!7787862))

(declare-fun m!7787864 () Bool)

(assert (=> bs!1879615 m!7787864))

(assert (=> b!7064882 d!2209073))

(declare-fun d!2209075 () Bool)

(assert (=> d!2209075 (= (get!23899 lt!2539732) (v!53236 lt!2539732))))

(assert (=> b!7064866 d!2209075))

(declare-fun b!7065136 () Bool)

(declare-fun res!2884891 () Bool)

(declare-fun e!4247465 () Bool)

(assert (=> b!7065136 (=> (not res!2884891) (not e!4247465))))

(declare-fun lt!2540048 () Option!16943)

(assert (=> b!7065136 (= res!2884891 (matchZipper!3150 lt!2539747 (_1!37414 (get!23899 lt!2540048))))))

(declare-fun b!7065138 () Bool)

(declare-fun e!4247466 () Option!16943)

(assert (=> b!7065138 (= e!4247466 (Some!16942 (tuple2!68223 Nil!68232 s!7408)))))

(declare-fun b!7065139 () Bool)

(declare-fun lt!2540049 () Unit!161908)

(declare-fun lt!2540047 () Unit!161908)

(assert (=> b!7065139 (= lt!2540049 lt!2540047)))

(assert (=> b!7065139 (= (++!15718 (++!15718 Nil!68232 (Cons!68232 (h!74680 s!7408) Nil!68232)) (t!382137 s!7408)) s!7408)))

(assert (=> b!7065139 (= lt!2540047 (lemmaMoveElementToOtherListKeepsConcatEq!2965 Nil!68232 (h!74680 s!7408) (t!382137 s!7408) s!7408))))

(declare-fun e!4247467 () Option!16943)

(assert (=> b!7065139 (= e!4247467 (findConcatSeparationZippers!459 lt!2539747 lt!2539796 (++!15718 Nil!68232 (Cons!68232 (h!74680 s!7408) Nil!68232)) (t!382137 s!7408) s!7408))))

(declare-fun b!7065140 () Bool)

(assert (=> b!7065140 (= e!4247466 e!4247467)))

(declare-fun c!1317297 () Bool)

(assert (=> b!7065140 (= c!1317297 (is-Nil!68232 s!7408))))

(declare-fun b!7065141 () Bool)

(declare-fun e!4247468 () Bool)

(assert (=> b!7065141 (= e!4247468 (matchZipper!3150 lt!2539796 s!7408))))

(declare-fun b!7065142 () Bool)

(assert (=> b!7065142 (= e!4247465 (= (++!15718 (_1!37414 (get!23899 lt!2540048)) (_2!37414 (get!23899 lt!2540048))) s!7408))))

(declare-fun b!7065143 () Bool)

(declare-fun e!4247464 () Bool)

(assert (=> b!7065143 (= e!4247464 (not (isDefined!13644 lt!2540048)))))

(declare-fun b!7065144 () Bool)

(declare-fun res!2884892 () Bool)

(assert (=> b!7065144 (=> (not res!2884892) (not e!4247465))))

(assert (=> b!7065144 (= res!2884892 (matchZipper!3150 lt!2539796 (_2!37414 (get!23899 lt!2540048))))))

(declare-fun d!2209077 () Bool)

(assert (=> d!2209077 e!4247464))

(declare-fun res!2884893 () Bool)

(assert (=> d!2209077 (=> res!2884893 e!4247464)))

(assert (=> d!2209077 (= res!2884893 e!4247465)))

(declare-fun res!2884890 () Bool)

(assert (=> d!2209077 (=> (not res!2884890) (not e!4247465))))

(assert (=> d!2209077 (= res!2884890 (isDefined!13644 lt!2540048))))

(assert (=> d!2209077 (= lt!2540048 e!4247466)))

(declare-fun c!1317296 () Bool)

(assert (=> d!2209077 (= c!1317296 e!4247468)))

(declare-fun res!2884894 () Bool)

(assert (=> d!2209077 (=> (not res!2884894) (not e!4247468))))

(assert (=> d!2209077 (= res!2884894 (matchZipper!3150 lt!2539747 Nil!68232))))

(assert (=> d!2209077 (= (++!15718 Nil!68232 s!7408) s!7408)))

(assert (=> d!2209077 (= (findConcatSeparationZippers!459 lt!2539747 lt!2539796 Nil!68232 s!7408 s!7408) lt!2540048)))

(declare-fun b!7065137 () Bool)

(assert (=> b!7065137 (= e!4247467 None!16942)))

(assert (= (and d!2209077 res!2884894) b!7065141))

(assert (= (and d!2209077 c!1317296) b!7065138))

(assert (= (and d!2209077 (not c!1317296)) b!7065140))

(assert (= (and b!7065140 c!1317297) b!7065137))

(assert (= (and b!7065140 (not c!1317297)) b!7065139))

(assert (= (and d!2209077 res!2884890) b!7065136))

(assert (= (and b!7065136 res!2884891) b!7065144))

(assert (= (and b!7065144 res!2884892) b!7065142))

(assert (= (and d!2209077 (not res!2884893)) b!7065143))

(declare-fun m!7787866 () Bool)

(assert (=> b!7065143 m!7787866))

(assert (=> b!7065139 m!7787734))

(assert (=> b!7065139 m!7787734))

(assert (=> b!7065139 m!7787736))

(assert (=> b!7065139 m!7787738))

(assert (=> b!7065139 m!7787734))

(declare-fun m!7787868 () Bool)

(assert (=> b!7065139 m!7787868))

(declare-fun m!7787870 () Bool)

(assert (=> b!7065144 m!7787870))

(declare-fun m!7787872 () Bool)

(assert (=> b!7065144 m!7787872))

(assert (=> b!7065141 m!7787746))

(assert (=> b!7065142 m!7787870))

(declare-fun m!7787874 () Bool)

(assert (=> b!7065142 m!7787874))

(assert (=> d!2209077 m!7787866))

(declare-fun m!7787876 () Bool)

(assert (=> d!2209077 m!7787876))

(assert (=> d!2209077 m!7787752))

(assert (=> b!7065136 m!7787870))

(declare-fun m!7787878 () Bool)

(assert (=> b!7065136 m!7787878))

(assert (=> b!7064866 d!2209077))

(declare-fun d!2209079 () Bool)

(declare-fun c!1317298 () Bool)

(assert (=> d!2209079 (= c!1317298 (isEmpty!39813 (_1!37414 lt!2539776)))))

(declare-fun e!4247469 () Bool)

(assert (=> d!2209079 (= (matchZipper!3150 lt!2539747 (_1!37414 lt!2539776)) e!4247469)))

(declare-fun b!7065145 () Bool)

(assert (=> b!7065145 (= e!4247469 (nullableZipper!2679 lt!2539747))))

(declare-fun b!7065146 () Bool)

(assert (=> b!7065146 (= e!4247469 (matchZipper!3150 (derivationStepZipper!3060 lt!2539747 (head!14385 (_1!37414 lt!2539776))) (tail!13768 (_1!37414 lt!2539776))))))

(assert (= (and d!2209079 c!1317298) b!7065145))

(assert (= (and d!2209079 (not c!1317298)) b!7065146))

(assert (=> d!2209079 m!7787438))

(declare-fun m!7787880 () Bool)

(assert (=> b!7065145 m!7787880))

(declare-fun m!7787882 () Bool)

(assert (=> b!7065146 m!7787882))

(assert (=> b!7065146 m!7787882))

(declare-fun m!7787884 () Bool)

(assert (=> b!7065146 m!7787884))

(assert (=> b!7065146 m!7787422))

(assert (=> b!7065146 m!7787884))

(assert (=> b!7065146 m!7787422))

(declare-fun m!7787886 () Bool)

(assert (=> b!7065146 m!7787886))

(assert (=> b!7064866 d!2209079))

(declare-fun d!2209081 () Bool)

(declare-fun isEmpty!39817 (Option!16943) Bool)

(assert (=> d!2209081 (= (isDefined!13644 lt!2539732) (not (isEmpty!39817 lt!2539732)))))

(declare-fun bs!1879616 () Bool)

(assert (= bs!1879616 d!2209081))

(declare-fun m!7787888 () Bool)

(assert (=> bs!1879616 m!7787888))

(assert (=> b!7064866 d!2209081))

(declare-fun d!2209083 () Bool)

(assert (=> d!2209083 (isDefined!13644 (findConcatSeparationZippers!459 lt!2539747 (set.insert ct2!306 (as set.empty (Set Context!13212))) Nil!68232 s!7408 s!7408))))

(declare-fun lt!2540052 () Unit!161908)

(declare-fun choose!54020 ((Set Context!13212) Context!13212 List!68356) Unit!161908)

(assert (=> d!2209083 (= lt!2540052 (choose!54020 lt!2539747 ct2!306 s!7408))))

(assert (=> d!2209083 (matchZipper!3150 (appendTo!731 lt!2539747 ct2!306) s!7408)))

(assert (=> d!2209083 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!447 lt!2539747 ct2!306 s!7408) lt!2540052)))

(declare-fun bs!1879617 () Bool)

(assert (= bs!1879617 d!2209083))

(declare-fun m!7787890 () Bool)

(assert (=> bs!1879617 m!7787890))

(declare-fun m!7787892 () Bool)

(assert (=> bs!1879617 m!7787892))

(declare-fun m!7787894 () Bool)

(assert (=> bs!1879617 m!7787894))

(assert (=> bs!1879617 m!7787890))

(assert (=> bs!1879617 m!7787324))

(declare-fun m!7787896 () Bool)

(assert (=> bs!1879617 m!7787896))

(assert (=> bs!1879617 m!7787896))

(declare-fun m!7787898 () Bool)

(assert (=> bs!1879617 m!7787898))

(assert (=> bs!1879617 m!7787324))

(assert (=> b!7064866 d!2209083))

(declare-fun lt!2540055 () List!68357)

(declare-fun e!4247474 () Bool)

(declare-fun b!7065158 () Bool)

(assert (=> b!7065158 (= e!4247474 (or (not (= (exprs!7106 ct2!306) Nil!68233)) (= lt!2540055 (exprs!7106 lt!2539750))))))

(declare-fun b!7065155 () Bool)

(declare-fun e!4247475 () List!68357)

(assert (=> b!7065155 (= e!4247475 (exprs!7106 ct2!306))))

(declare-fun d!2209085 () Bool)

(assert (=> d!2209085 e!4247474))

(declare-fun res!2884899 () Bool)

(assert (=> d!2209085 (=> (not res!2884899) (not e!4247474))))

(declare-fun content!13738 (List!68357) (Set Regex!17610))

(assert (=> d!2209085 (= res!2884899 (= (content!13738 lt!2540055) (set.union (content!13738 (exprs!7106 lt!2539750)) (content!13738 (exprs!7106 ct2!306)))))))

(assert (=> d!2209085 (= lt!2540055 e!4247475)))

(declare-fun c!1317301 () Bool)

(assert (=> d!2209085 (= c!1317301 (is-Nil!68233 (exprs!7106 lt!2539750)))))

(assert (=> d!2209085 (= (++!15717 (exprs!7106 lt!2539750) (exprs!7106 ct2!306)) lt!2540055)))

(declare-fun b!7065156 () Bool)

(assert (=> b!7065156 (= e!4247475 (Cons!68233 (h!74681 (exprs!7106 lt!2539750)) (++!15717 (t!382138 (exprs!7106 lt!2539750)) (exprs!7106 ct2!306))))))

(declare-fun b!7065157 () Bool)

(declare-fun res!2884900 () Bool)

(assert (=> b!7065157 (=> (not res!2884900) (not e!4247474))))

(declare-fun size!41184 (List!68357) Int)

(assert (=> b!7065157 (= res!2884900 (= (size!41184 lt!2540055) (+ (size!41184 (exprs!7106 lt!2539750)) (size!41184 (exprs!7106 ct2!306)))))))

(assert (= (and d!2209085 c!1317301) b!7065155))

(assert (= (and d!2209085 (not c!1317301)) b!7065156))

(assert (= (and d!2209085 res!2884899) b!7065157))

(assert (= (and b!7065157 res!2884900) b!7065158))

(declare-fun m!7787900 () Bool)

(assert (=> d!2209085 m!7787900))

(declare-fun m!7787902 () Bool)

(assert (=> d!2209085 m!7787902))

(declare-fun m!7787904 () Bool)

(assert (=> d!2209085 m!7787904))

(declare-fun m!7787906 () Bool)

(assert (=> b!7065156 m!7787906))

(declare-fun m!7787908 () Bool)

(assert (=> b!7065157 m!7787908))

(declare-fun m!7787910 () Bool)

(assert (=> b!7065157 m!7787910))

(declare-fun m!7787912 () Bool)

(assert (=> b!7065157 m!7787912))

(assert (=> b!7064884 d!2209085))

(assert (=> b!7064884 d!2209073))

(declare-fun d!2209087 () Bool)

(declare-fun e!4247478 () Bool)

(assert (=> d!2209087 e!4247478))

(declare-fun res!2884903 () Bool)

(assert (=> d!2209087 (=> (not res!2884903) (not e!4247478))))

(declare-fun lt!2540058 () Context!13212)

(declare-fun dynLambda!27721 (Int Context!13212) Context!13212)

(assert (=> d!2209087 (= res!2884903 (= lt!2539784 (dynLambda!27721 lambda!423348 lt!2540058)))))

(declare-fun choose!54021 ((Set Context!13212) Int Context!13212) Context!13212)

(assert (=> d!2209087 (= lt!2540058 (choose!54021 z1!570 lambda!423348 lt!2539784))))

(assert (=> d!2209087 (set.member lt!2539784 (map!15948 z1!570 lambda!423348))))

(assert (=> d!2209087 (= (mapPost2!439 z1!570 lambda!423348 lt!2539784) lt!2540058)))

(declare-fun b!7065162 () Bool)

(assert (=> b!7065162 (= e!4247478 (set.member lt!2540058 z1!570))))

(assert (= (and d!2209087 res!2884903) b!7065162))

(declare-fun b_lambda!269529 () Bool)

(assert (=> (not b_lambda!269529) (not d!2209087)))

(declare-fun m!7787914 () Bool)

(assert (=> d!2209087 m!7787914))

(declare-fun m!7787916 () Bool)

(assert (=> d!2209087 m!7787916))

(declare-fun m!7787918 () Bool)

(assert (=> d!2209087 m!7787918))

(declare-fun m!7787920 () Bool)

(assert (=> d!2209087 m!7787920))

(declare-fun m!7787922 () Bool)

(assert (=> b!7065162 m!7787922))

(assert (=> b!7064884 d!2209087))

(declare-fun d!2209089 () Bool)

(declare-fun c!1317302 () Bool)

(assert (=> d!2209089 (= c!1317302 (isEmpty!39813 (_1!37414 lt!2539776)))))

(declare-fun e!4247479 () Bool)

(assert (=> d!2209089 (= (matchZipper!3150 (content!13735 lt!2539773) (_1!37414 lt!2539776)) e!4247479)))

(declare-fun b!7065163 () Bool)

(assert (=> b!7065163 (= e!4247479 (nullableZipper!2679 (content!13735 lt!2539773)))))

(declare-fun b!7065164 () Bool)

(assert (=> b!7065164 (= e!4247479 (matchZipper!3150 (derivationStepZipper!3060 (content!13735 lt!2539773) (head!14385 (_1!37414 lt!2539776))) (tail!13768 (_1!37414 lt!2539776))))))

(assert (= (and d!2209089 c!1317302) b!7065163))

(assert (= (and d!2209089 (not c!1317302)) b!7065164))

(assert (=> d!2209089 m!7787438))

(assert (=> b!7065163 m!7787434))

(declare-fun m!7787924 () Bool)

(assert (=> b!7065163 m!7787924))

(assert (=> b!7065164 m!7787882))

(assert (=> b!7065164 m!7787434))

(assert (=> b!7065164 m!7787882))

(declare-fun m!7787926 () Bool)

(assert (=> b!7065164 m!7787926))

(assert (=> b!7065164 m!7787422))

(assert (=> b!7065164 m!7787926))

(assert (=> b!7065164 m!7787422))

(declare-fun m!7787928 () Bool)

(assert (=> b!7065164 m!7787928))

(assert (=> b!7064865 d!2209089))

(declare-fun d!2209091 () Bool)

(assert (=> d!2209091 (= (isEmpty!39813 (_1!37414 lt!2539776)) (is-Nil!68232 (_1!37414 lt!2539776)))))

(assert (=> b!7064865 d!2209091))

(declare-fun d!2209093 () Bool)

(declare-fun c!1317305 () Bool)

(assert (=> d!2209093 (= c!1317305 (is-Nil!68234 lt!2539773))))

(declare-fun e!4247482 () (Set Context!13212))

(assert (=> d!2209093 (= (content!13735 lt!2539773) e!4247482)))

(declare-fun b!7065169 () Bool)

(assert (=> b!7065169 (= e!4247482 (as set.empty (Set Context!13212)))))

(declare-fun b!7065170 () Bool)

(assert (=> b!7065170 (= e!4247482 (set.union (set.insert (h!74682 lt!2539773) (as set.empty (Set Context!13212))) (content!13735 (t!382139 lt!2539773))))))

(assert (= (and d!2209093 c!1317305) b!7065169))

(assert (= (and d!2209093 (not c!1317305)) b!7065170))

(declare-fun m!7787930 () Bool)

(assert (=> b!7065170 m!7787930))

(declare-fun m!7787932 () Bool)

(assert (=> b!7065170 m!7787932))

(assert (=> b!7064865 d!2209093))

(declare-fun bs!1879618 () Bool)

(declare-fun d!2209095 () Bool)

(assert (= bs!1879618 (and d!2209095 b!7064865)))

(declare-fun lambda!423448 () Int)

(assert (=> bs!1879618 (= lambda!423448 lambda!423352)))

(declare-fun bs!1879619 () Bool)

(assert (= bs!1879619 (and d!2209095 b!7064871)))

(assert (=> bs!1879619 (not (= lambda!423448 lambda!423351))))

(declare-fun bs!1879620 () Bool)

(assert (= bs!1879620 (and d!2209095 b!7064874)))

(assert (=> bs!1879620 (= (= (_1!37414 lt!2539776) s!7408) (= lambda!423448 lambda!423347))))

(declare-fun bs!1879621 () Bool)

(assert (= bs!1879621 (and d!2209095 d!2208995)))

(assert (=> bs!1879621 (not (= lambda!423448 lambda!423432))))

(declare-fun bs!1879622 () Bool)

(assert (= bs!1879622 (and d!2209095 d!2208993)))

(assert (=> bs!1879622 (= (= (_1!37414 lt!2539776) s!7408) (= lambda!423448 lambda!423429))))

(assert (=> d!2209095 true))

(assert (=> d!2209095 (matchZipper!3150 (content!13735 lt!2539773) (_1!37414 lt!2539776))))

(declare-fun lt!2540061 () Unit!161908)

(declare-fun choose!54022 (List!68358 List!68356) Unit!161908)

(assert (=> d!2209095 (= lt!2540061 (choose!54022 lt!2539773 (_1!37414 lt!2539776)))))

(assert (=> d!2209095 (exists!3631 lt!2539773 lambda!423448)))

(assert (=> d!2209095 (= (lemmaExistsMatchingContextThenMatchingString!39 lt!2539773 (_1!37414 lt!2539776)) lt!2540061)))

(declare-fun bs!1879623 () Bool)

(assert (= bs!1879623 d!2209095))

(assert (=> bs!1879623 m!7787434))

(assert (=> bs!1879623 m!7787434))

(assert (=> bs!1879623 m!7787444))

(declare-fun m!7787934 () Bool)

(assert (=> bs!1879623 m!7787934))

(declare-fun m!7787936 () Bool)

(assert (=> bs!1879623 m!7787936))

(assert (=> b!7064865 d!2209095))

(declare-fun d!2209097 () Bool)

(declare-fun lt!2540064 () Bool)

(assert (=> d!2209097 (= lt!2540064 (exists!3631 (toList!10951 z1!570) lambda!423352))))

(declare-fun choose!54023 ((Set Context!13212) Int) Bool)

(assert (=> d!2209097 (= lt!2540064 (choose!54023 z1!570 lambda!423352))))

(assert (=> d!2209097 (= (exists!3630 z1!570 lambda!423352) lt!2540064)))

(declare-fun bs!1879624 () Bool)

(assert (= bs!1879624 d!2209097))

(assert (=> bs!1879624 m!7787348))

(assert (=> bs!1879624 m!7787348))

(declare-fun m!7787938 () Bool)

(assert (=> bs!1879624 m!7787938))

(declare-fun m!7787940 () Bool)

(assert (=> bs!1879624 m!7787940))

(assert (=> b!7064865 d!2209097))

(declare-fun d!2209099 () Bool)

(assert (=> d!2209099 (exists!3630 z1!570 lambda!423352)))

(declare-fun lt!2540067 () Unit!161908)

(declare-fun choose!54024 ((Set Context!13212) Context!13212 Int) Unit!161908)

(assert (=> d!2209099 (= lt!2540067 (choose!54024 z1!570 lt!2539750 lambda!423352))))

(assert (=> d!2209099 (set.member lt!2539750 z1!570)))

(assert (=> d!2209099 (= (lemmaContainsThenExists!142 z1!570 lt!2539750 lambda!423352) lt!2540067)))

(declare-fun bs!1879625 () Bool)

(assert (= bs!1879625 d!2209099))

(assert (=> bs!1879625 m!7787442))

(declare-fun m!7787942 () Bool)

(assert (=> bs!1879625 m!7787942))

(assert (=> bs!1879625 m!7787300))

(assert (=> b!7064865 d!2209099))

(declare-fun d!2209101 () Bool)

(declare-fun c!1317308 () Bool)

(assert (=> d!2209101 (= c!1317308 (isEmpty!39813 (_1!37414 lt!2539776)))))

(declare-fun e!4247484 () Bool)

(assert (=> d!2209101 (= (matchZipper!3150 z1!570 (_1!37414 lt!2539776)) e!4247484)))

(declare-fun b!7065171 () Bool)

(assert (=> b!7065171 (= e!4247484 (nullableZipper!2679 z1!570))))

(declare-fun b!7065172 () Bool)

(assert (=> b!7065172 (= e!4247484 (matchZipper!3150 (derivationStepZipper!3060 z1!570 (head!14385 (_1!37414 lt!2539776))) (tail!13768 (_1!37414 lt!2539776))))))

(assert (= (and d!2209101 c!1317308) b!7065171))

(assert (= (and d!2209101 (not c!1317308)) b!7065172))

(assert (=> d!2209101 m!7787438))

(declare-fun m!7787944 () Bool)

(assert (=> b!7065171 m!7787944))

(assert (=> b!7065172 m!7787882))

(assert (=> b!7065172 m!7787882))

(declare-fun m!7787946 () Bool)

(assert (=> b!7065172 m!7787946))

(assert (=> b!7065172 m!7787422))

(assert (=> b!7065172 m!7787946))

(assert (=> b!7065172 m!7787422))

(declare-fun m!7787948 () Bool)

(assert (=> b!7065172 m!7787948))

(assert (=> b!7064865 d!2209101))

(assert (=> b!7064885 d!2209073))

(declare-fun d!2209103 () Bool)

(declare-fun c!1317309 () Bool)

(assert (=> d!2209103 (= c!1317309 (isEmpty!39813 lt!2539746))))

(declare-fun e!4247485 () Bool)

(assert (=> d!2209103 (= (matchZipper!3150 lt!2539744 lt!2539746) e!4247485)))

(declare-fun b!7065173 () Bool)

(assert (=> b!7065173 (= e!4247485 (nullableZipper!2679 lt!2539744))))

(declare-fun b!7065174 () Bool)

(assert (=> b!7065174 (= e!4247485 (matchZipper!3150 (derivationStepZipper!3060 lt!2539744 (head!14385 lt!2539746)) (tail!13768 lt!2539746)))))

(assert (= (and d!2209103 c!1317309) b!7065173))

(assert (= (and d!2209103 (not c!1317309)) b!7065174))

(assert (=> d!2209103 m!7787686))

(declare-fun m!7787950 () Bool)

(assert (=> b!7065173 m!7787950))

(assert (=> b!7065174 m!7787690))

(assert (=> b!7065174 m!7787690))

(declare-fun m!7787952 () Bool)

(assert (=> b!7065174 m!7787952))

(assert (=> b!7065174 m!7787694))

(assert (=> b!7065174 m!7787952))

(assert (=> b!7065174 m!7787694))

(declare-fun m!7787954 () Bool)

(assert (=> b!7065174 m!7787954))

(assert (=> b!7064887 d!2209103))

(declare-fun d!2209105 () Bool)

(declare-fun c!1317310 () Bool)

(assert (=> d!2209105 (= c!1317310 (isEmpty!39813 s!7408))))

(declare-fun e!4247486 () Bool)

(assert (=> d!2209105 (= (matchZipper!3150 lt!2539740 s!7408) e!4247486)))

(declare-fun b!7065175 () Bool)

(assert (=> b!7065175 (= e!4247486 (nullableZipper!2679 lt!2539740))))

(declare-fun b!7065176 () Bool)

(assert (=> b!7065176 (= e!4247486 (matchZipper!3150 (derivationStepZipper!3060 lt!2539740 (head!14385 s!7408)) (tail!13768 s!7408)))))

(assert (= (and d!2209105 c!1317310) b!7065175))

(assert (= (and d!2209105 (not c!1317310)) b!7065176))

(assert (=> d!2209105 m!7787632))

(declare-fun m!7787956 () Bool)

(assert (=> b!7065175 m!7787956))

(assert (=> b!7065176 m!7787636))

(assert (=> b!7065176 m!7787636))

(declare-fun m!7787958 () Bool)

(assert (=> b!7065176 m!7787958))

(assert (=> b!7065176 m!7787640))

(assert (=> b!7065176 m!7787958))

(assert (=> b!7065176 m!7787640))

(declare-fun m!7787960 () Bool)

(assert (=> b!7065176 m!7787960))

(assert (=> b!7064868 d!2209105))

(assert (=> b!7064868 d!2209033))

(declare-fun d!2209107 () Bool)

(declare-fun lt!2540070 () Int)

(assert (=> d!2209107 (>= lt!2540070 0)))

(declare-fun e!4247489 () Int)

(assert (=> d!2209107 (= lt!2540070 e!4247489)))

(declare-fun c!1317314 () Bool)

(assert (=> d!2209107 (= c!1317314 (is-Cons!68233 (exprs!7106 lt!2539763)))))

(assert (=> d!2209107 (= (contextDepthTotal!546 lt!2539763) lt!2540070)))

(declare-fun b!7065181 () Bool)

(declare-fun regexDepthTotal!326 (Regex!17610) Int)

(assert (=> b!7065181 (= e!4247489 (+ (regexDepthTotal!326 (h!74681 (exprs!7106 lt!2539763))) (contextDepthTotal!546 (Context!13213 (t!382138 (exprs!7106 lt!2539763))))))))

(declare-fun b!7065182 () Bool)

(assert (=> b!7065182 (= e!4247489 1)))

(assert (= (and d!2209107 c!1317314) b!7065181))

(assert (= (and d!2209107 (not c!1317314)) b!7065182))

(declare-fun m!7787962 () Bool)

(assert (=> b!7065181 m!7787962))

(declare-fun m!7787964 () Bool)

(assert (=> b!7065181 m!7787964))

(assert (=> b!7064870 d!2209107))

(assert (=> b!7064870 d!2209005))

(declare-fun d!2209109 () Bool)

(declare-fun e!4247490 () Bool)

(assert (=> d!2209109 e!4247490))

(declare-fun res!2884904 () Bool)

(assert (=> d!2209109 (=> (not res!2884904) (not e!4247490))))

(declare-fun lt!2540071 () List!68358)

(assert (=> d!2209109 (= res!2884904 (noDuplicate!2708 lt!2540071))))

(assert (=> d!2209109 (= lt!2540071 (choose!54014 z1!570))))

(assert (=> d!2209109 (= (toList!10951 z1!570) lt!2540071)))

(declare-fun b!7065183 () Bool)

(assert (=> b!7065183 (= e!4247490 (= (content!13735 lt!2540071) z1!570))))

(assert (= (and d!2209109 res!2884904) b!7065183))

(declare-fun m!7787966 () Bool)

(assert (=> d!2209109 m!7787966))

(declare-fun m!7787968 () Bool)

(assert (=> d!2209109 m!7787968))

(declare-fun m!7787970 () Bool)

(assert (=> b!7065183 m!7787970))

(assert (=> b!7064870 d!2209109))

(declare-fun d!2209111 () Bool)

(declare-fun lt!2540072 () Int)

(assert (=> d!2209111 (>= lt!2540072 0)))

(declare-fun e!4247491 () Int)

(assert (=> d!2209111 (= lt!2540072 e!4247491)))

(declare-fun c!1317315 () Bool)

(assert (=> d!2209111 (= c!1317315 (is-Cons!68233 (exprs!7106 lt!2539750)))))

(assert (=> d!2209111 (= (contextDepthTotal!546 lt!2539750) lt!2540072)))

(declare-fun b!7065184 () Bool)

(assert (=> b!7065184 (= e!4247491 (+ (regexDepthTotal!326 (h!74681 (exprs!7106 lt!2539750))) (contextDepthTotal!546 (Context!13213 (t!382138 (exprs!7106 lt!2539750))))))))

(declare-fun b!7065185 () Bool)

(assert (=> b!7065185 (= e!4247491 1)))

(assert (= (and d!2209111 c!1317315) b!7065184))

(assert (= (and d!2209111 (not c!1317315)) b!7065185))

(declare-fun m!7787972 () Bool)

(assert (=> b!7065184 m!7787972))

(declare-fun m!7787974 () Bool)

(assert (=> b!7065184 m!7787974))

(assert (=> b!7064870 d!2209111))

(declare-fun d!2209113 () Bool)

(declare-fun choose!54025 ((Set Context!13212) Int) (Set Context!13212))

(assert (=> d!2209113 (= (map!15948 lt!2539747 lambda!423348) (choose!54025 lt!2539747 lambda!423348))))

(declare-fun bs!1879626 () Bool)

(assert (= bs!1879626 d!2209113))

(declare-fun m!7787976 () Bool)

(assert (=> bs!1879626 m!7787976))

(assert (=> b!7064870 d!2209113))

(assert (=> b!7064870 d!2209021))

(assert (=> b!7064870 d!2209033))

(declare-fun lt!2540073 () List!68357)

(declare-fun e!4247492 () Bool)

(declare-fun b!7065189 () Bool)

(assert (=> b!7065189 (= e!4247492 (or (not (= (exprs!7106 ct2!306) Nil!68233)) (= lt!2540073 lt!2539797)))))

(declare-fun b!7065186 () Bool)

(declare-fun e!4247493 () List!68357)

(assert (=> b!7065186 (= e!4247493 (exprs!7106 ct2!306))))

(declare-fun d!2209115 () Bool)

(assert (=> d!2209115 e!4247492))

(declare-fun res!2884905 () Bool)

(assert (=> d!2209115 (=> (not res!2884905) (not e!4247492))))

(assert (=> d!2209115 (= res!2884905 (= (content!13738 lt!2540073) (set.union (content!13738 lt!2539797) (content!13738 (exprs!7106 ct2!306)))))))

(assert (=> d!2209115 (= lt!2540073 e!4247493)))

(declare-fun c!1317316 () Bool)

(assert (=> d!2209115 (= c!1317316 (is-Nil!68233 lt!2539797))))

(assert (=> d!2209115 (= (++!15717 lt!2539797 (exprs!7106 ct2!306)) lt!2540073)))

(declare-fun b!7065187 () Bool)

(assert (=> b!7065187 (= e!4247493 (Cons!68233 (h!74681 lt!2539797) (++!15717 (t!382138 lt!2539797) (exprs!7106 ct2!306))))))

(declare-fun b!7065188 () Bool)

(declare-fun res!2884906 () Bool)

(assert (=> b!7065188 (=> (not res!2884906) (not e!4247492))))

(assert (=> b!7065188 (= res!2884906 (= (size!41184 lt!2540073) (+ (size!41184 lt!2539797) (size!41184 (exprs!7106 ct2!306)))))))

(assert (= (and d!2209115 c!1317316) b!7065186))

(assert (= (and d!2209115 (not c!1317316)) b!7065187))

(assert (= (and d!2209115 res!2884905) b!7065188))

(assert (= (and b!7065188 res!2884906) b!7065189))

(declare-fun m!7787978 () Bool)

(assert (=> d!2209115 m!7787978))

(declare-fun m!7787980 () Bool)

(assert (=> d!2209115 m!7787980))

(assert (=> d!2209115 m!7787904))

(declare-fun m!7787982 () Bool)

(assert (=> b!7065187 m!7787982))

(declare-fun m!7787984 () Bool)

(assert (=> b!7065188 m!7787984))

(declare-fun m!7787986 () Bool)

(assert (=> b!7065188 m!7787986))

(assert (=> b!7065188 m!7787912))

(assert (=> b!7064870 d!2209115))

(declare-fun d!2209117 () Bool)

(assert (=> d!2209117 (<= (contextDepthTotal!546 lt!2539750) (zipperDepthTotal!575 lt!2539773))))

(declare-fun lt!2540076 () Unit!161908)

(declare-fun choose!54026 (List!68358 Context!13212) Unit!161908)

(assert (=> d!2209117 (= lt!2540076 (choose!54026 lt!2539773 lt!2539750))))

(declare-fun contains!20496 (List!68358 Context!13212) Bool)

(assert (=> d!2209117 (contains!20496 lt!2539773 lt!2539750)))

(assert (=> d!2209117 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!113 lt!2539773 lt!2539750) lt!2540076)))

(declare-fun bs!1879627 () Bool)

(assert (= bs!1879627 d!2209117))

(assert (=> bs!1879627 m!7787366))

(assert (=> bs!1879627 m!7787370))

(declare-fun m!7787988 () Bool)

(assert (=> bs!1879627 m!7787988))

(declare-fun m!7787990 () Bool)

(assert (=> bs!1879627 m!7787990))

(assert (=> b!7064870 d!2209117))

(declare-fun d!2209119 () Bool)

(assert (=> d!2209119 (= (map!15948 lt!2539747 lambda!423348) (set.insert (dynLambda!27721 lambda!423348 lt!2539763) (as set.empty (Set Context!13212))))))

(declare-fun lt!2540079 () Unit!161908)

(declare-fun choose!54027 ((Set Context!13212) Context!13212 Int) Unit!161908)

(assert (=> d!2209119 (= lt!2540079 (choose!54027 lt!2539747 lt!2539763 lambda!423348))))

(assert (=> d!2209119 (= lt!2539747 (set.insert lt!2539763 (as set.empty (Set Context!13212))))))

(assert (=> d!2209119 (= (lemmaMapOnSingletonSet!427 lt!2539747 lt!2539763 lambda!423348) lt!2540079)))

(declare-fun b_lambda!269531 () Bool)

(assert (=> (not b_lambda!269531) (not d!2209119)))

(declare-fun bs!1879628 () Bool)

(assert (= bs!1879628 d!2209119))

(assert (=> bs!1879628 m!7787372))

(assert (=> bs!1879628 m!7787368))

(declare-fun m!7787992 () Bool)

(assert (=> bs!1879628 m!7787992))

(declare-fun m!7787994 () Bool)

(assert (=> bs!1879628 m!7787994))

(assert (=> bs!1879628 m!7787992))

(declare-fun m!7787996 () Bool)

(assert (=> bs!1879628 m!7787996))

(assert (=> b!7064870 d!2209119))

(assert (=> b!7064870 d!2209013))

(declare-fun d!2209121 () Bool)

(declare-fun lt!2540080 () Int)

(assert (=> d!2209121 (>= lt!2540080 0)))

(declare-fun e!4247494 () Int)

(assert (=> d!2209121 (= lt!2540080 e!4247494)))

(declare-fun c!1317318 () Bool)

(assert (=> d!2209121 (= c!1317318 (is-Cons!68234 lt!2539773))))

(assert (=> d!2209121 (= (zipperDepthTotal!575 lt!2539773) lt!2540080)))

(declare-fun b!7065190 () Bool)

(assert (=> b!7065190 (= e!4247494 (+ (contextDepthTotal!546 (h!74682 lt!2539773)) (zipperDepthTotal!575 (t!382139 lt!2539773))))))

(declare-fun b!7065191 () Bool)

(assert (=> b!7065191 (= e!4247494 0)))

(assert (= (and d!2209121 c!1317318) b!7065190))

(assert (= (and d!2209121 (not c!1317318)) b!7065191))

(declare-fun m!7787998 () Bool)

(assert (=> b!7065190 m!7787998))

(declare-fun m!7788000 () Bool)

(assert (=> b!7065190 m!7788000))

(assert (=> b!7064870 d!2209121))

(declare-fun d!2209123 () Bool)

(assert (=> d!2209123 (= (isDefined!13644 call!642001) (not (isEmpty!39817 call!642001)))))

(declare-fun bs!1879629 () Bool)

(assert (= bs!1879629 d!2209123))

(declare-fun m!7788002 () Bool)

(assert (=> bs!1879629 m!7788002))

(assert (=> bm!641996 d!2209123))

(assert (=> b!7064869 d!2209033))

(assert (=> b!7064869 d!2209035))

(declare-fun b!7065192 () Bool)

(declare-fun e!4247499 () (Set Context!13212))

(declare-fun call!642035 () (Set Context!13212))

(assert (=> b!7065192 (= e!4247499 call!642035)))

(declare-fun b!7065193 () Bool)

(declare-fun e!4247500 () (Set Context!13212))

(assert (=> b!7065193 (= e!4247500 call!642035)))

(declare-fun bm!642030 () Bool)

(declare-fun call!642039 () (Set Context!13212))

(assert (=> bm!642030 (= call!642035 call!642039)))

(declare-fun bm!642031 () Bool)

(declare-fun c!1317323 () Bool)

(declare-fun call!642037 () (Set Context!13212))

(declare-fun call!642036 () List!68357)

(assert (=> bm!642031 (= call!642037 (derivationStepZipperDown!2244 (ite c!1317323 (regOne!35733 (h!74681 (exprs!7106 lt!2539750))) (regOne!35732 (h!74681 (exprs!7106 lt!2539750)))) (ite c!1317323 lt!2539787 (Context!13213 call!642036)) (h!74680 s!7408)))))

(declare-fun b!7065194 () Bool)

(declare-fun c!1317321 () Bool)

(declare-fun e!4247495 () Bool)

(assert (=> b!7065194 (= c!1317321 e!4247495)))

(declare-fun res!2884907 () Bool)

(assert (=> b!7065194 (=> (not res!2884907) (not e!4247495))))

(assert (=> b!7065194 (= res!2884907 (is-Concat!26455 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun e!4247498 () (Set Context!13212))

(declare-fun e!4247496 () (Set Context!13212))

(assert (=> b!7065194 (= e!4247498 e!4247496)))

(declare-fun b!7065195 () Bool)

(assert (=> b!7065195 (= e!4247496 (set.union call!642037 call!642039))))

(declare-fun b!7065196 () Bool)

(declare-fun c!1317322 () Bool)

(assert (=> b!7065196 (= c!1317322 (is-Star!17610 (h!74681 (exprs!7106 lt!2539750))))))

(assert (=> b!7065196 (= e!4247499 e!4247500)))

(declare-fun b!7065197 () Bool)

(assert (=> b!7065197 (= e!4247496 e!4247499)))

(declare-fun c!1317320 () Bool)

(assert (=> b!7065197 (= c!1317320 (is-Concat!26455 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun d!2209125 () Bool)

(declare-fun c!1317319 () Bool)

(assert (=> d!2209125 (= c!1317319 (and (is-ElementMatch!17610 (h!74681 (exprs!7106 lt!2539750))) (= (c!1317210 (h!74681 (exprs!7106 lt!2539750))) (h!74680 s!7408))))))

(declare-fun e!4247497 () (Set Context!13212))

(assert (=> d!2209125 (= (derivationStepZipperDown!2244 (h!74681 (exprs!7106 lt!2539750)) lt!2539787 (h!74680 s!7408)) e!4247497)))

(declare-fun bm!642032 () Bool)

(declare-fun call!642038 () (Set Context!13212))

(assert (=> bm!642032 (= call!642039 call!642038)))

(declare-fun bm!642033 () Bool)

(assert (=> bm!642033 (= call!642036 ($colon$colon!2640 (exprs!7106 lt!2539787) (ite (or c!1317321 c!1317320) (regTwo!35732 (h!74681 (exprs!7106 lt!2539750))) (h!74681 (exprs!7106 lt!2539750)))))))

(declare-fun b!7065198 () Bool)

(assert (=> b!7065198 (= e!4247497 e!4247498)))

(assert (=> b!7065198 (= c!1317323 (is-Union!17610 (h!74681 (exprs!7106 lt!2539750))))))

(declare-fun b!7065199 () Bool)

(assert (=> b!7065199 (= e!4247500 (as set.empty (Set Context!13212)))))

(declare-fun b!7065200 () Bool)

(assert (=> b!7065200 (= e!4247498 (set.union call!642037 call!642038))))

(declare-fun call!642040 () List!68357)

(declare-fun bm!642034 () Bool)

(assert (=> bm!642034 (= call!642038 (derivationStepZipperDown!2244 (ite c!1317323 (regTwo!35733 (h!74681 (exprs!7106 lt!2539750))) (ite c!1317321 (regTwo!35732 (h!74681 (exprs!7106 lt!2539750))) (ite c!1317320 (regOne!35732 (h!74681 (exprs!7106 lt!2539750))) (reg!17939 (h!74681 (exprs!7106 lt!2539750)))))) (ite (or c!1317323 c!1317321) lt!2539787 (Context!13213 call!642040)) (h!74680 s!7408)))))

(declare-fun b!7065201 () Bool)

(assert (=> b!7065201 (= e!4247497 (set.insert lt!2539787 (as set.empty (Set Context!13212))))))

(declare-fun b!7065202 () Bool)

(assert (=> b!7065202 (= e!4247495 (nullable!7293 (regOne!35732 (h!74681 (exprs!7106 lt!2539750)))))))

(declare-fun bm!642035 () Bool)

(assert (=> bm!642035 (= call!642040 call!642036)))

(assert (= (and d!2209125 c!1317319) b!7065201))

(assert (= (and d!2209125 (not c!1317319)) b!7065198))

(assert (= (and b!7065198 c!1317323) b!7065200))

(assert (= (and b!7065198 (not c!1317323)) b!7065194))

(assert (= (and b!7065194 res!2884907) b!7065202))

(assert (= (and b!7065194 c!1317321) b!7065195))

(assert (= (and b!7065194 (not c!1317321)) b!7065197))

(assert (= (and b!7065197 c!1317320) b!7065192))

(assert (= (and b!7065197 (not c!1317320)) b!7065196))

(assert (= (and b!7065196 c!1317322) b!7065193))

(assert (= (and b!7065196 (not c!1317322)) b!7065199))

(assert (= (or b!7065192 b!7065193) bm!642035))

(assert (= (or b!7065192 b!7065193) bm!642030))

(assert (= (or b!7065195 bm!642030) bm!642032))

(assert (= (or b!7065195 bm!642035) bm!642033))

(assert (= (or b!7065200 b!7065195) bm!642031))

(assert (= (or b!7065200 bm!642032) bm!642034))

(declare-fun m!7788004 () Bool)

(assert (=> bm!642033 m!7788004))

(declare-fun m!7788006 () Bool)

(assert (=> bm!642034 m!7788006))

(assert (=> b!7065202 m!7787728))

(declare-fun m!7788008 () Bool)

(assert (=> bm!642031 m!7788008))

(assert (=> b!7065201 m!7787458))

(assert (=> b!7064869 d!2209125))

(assert (=> b!7064869 d!2209115))

(declare-fun d!2209127 () Bool)

(assert (=> d!2209127 (exists!3630 lt!2539783 lambda!423351)))

(declare-fun lt!2540081 () Unit!161908)

(assert (=> d!2209127 (= lt!2540081 (choose!54024 lt!2539783 lt!2539750 lambda!423351))))

(assert (=> d!2209127 (set.member lt!2539750 lt!2539783)))

(assert (=> d!2209127 (= (lemmaContainsThenExists!142 lt!2539783 lt!2539750 lambda!423351) lt!2540081)))

(declare-fun bs!1879630 () Bool)

(assert (= bs!1879630 d!2209127))

(assert (=> bs!1879630 m!7787398))

(declare-fun m!7788010 () Bool)

(assert (=> bs!1879630 m!7788010))

(declare-fun m!7788012 () Bool)

(assert (=> bs!1879630 m!7788012))

(assert (=> b!7064871 d!2209127))

(declare-fun d!2209129 () Bool)

(assert (=> d!2209129 (exists!3630 lt!2539747 lambda!423351)))

(declare-fun lt!2540082 () Unit!161908)

(assert (=> d!2209129 (= lt!2540082 (choose!54024 lt!2539747 lt!2539763 lambda!423351))))

(assert (=> d!2209129 (set.member lt!2539763 lt!2539747)))

(assert (=> d!2209129 (= (lemmaContainsThenExists!142 lt!2539747 lt!2539763 lambda!423351) lt!2540082)))

(declare-fun bs!1879631 () Bool)

(assert (= bs!1879631 d!2209129))

(assert (=> bs!1879631 m!7787402))

(declare-fun m!7788014 () Bool)

(assert (=> bs!1879631 m!7788014))

(declare-fun m!7788016 () Bool)

(assert (=> bs!1879631 m!7788016))

(assert (=> b!7064871 d!2209129))

(declare-fun d!2209131 () Bool)

(declare-fun lt!2540083 () Bool)

(assert (=> d!2209131 (= lt!2540083 (exists!3631 (toList!10951 lt!2539747) lambda!423351))))

(assert (=> d!2209131 (= lt!2540083 (choose!54023 lt!2539747 lambda!423351))))

(assert (=> d!2209131 (= (exists!3630 lt!2539747 lambda!423351) lt!2540083)))

(declare-fun bs!1879632 () Bool)

(assert (= bs!1879632 d!2209131))

(declare-fun m!7788018 () Bool)

(assert (=> bs!1879632 m!7788018))

(assert (=> bs!1879632 m!7788018))

(declare-fun m!7788020 () Bool)

(assert (=> bs!1879632 m!7788020))

(declare-fun m!7788022 () Bool)

(assert (=> bs!1879632 m!7788022))

(assert (=> b!7064871 d!2209131))

(declare-fun d!2209133 () Bool)

(declare-fun lt!2540084 () Bool)

(assert (=> d!2209133 (= lt!2540084 (exists!3631 (toList!10951 lt!2539783) lambda!423351))))

(assert (=> d!2209133 (= lt!2540084 (choose!54023 lt!2539783 lambda!423351))))

(assert (=> d!2209133 (= (exists!3630 lt!2539783 lambda!423351) lt!2540084)))

(declare-fun bs!1879633 () Bool)

(assert (= bs!1879633 d!2209133))

(declare-fun m!7788024 () Bool)

(assert (=> bs!1879633 m!7788024))

(assert (=> bs!1879633 m!7788024))

(declare-fun m!7788026 () Bool)

(assert (=> bs!1879633 m!7788026))

(declare-fun m!7788028 () Bool)

(assert (=> bs!1879633 m!7788028))

(assert (=> b!7064871 d!2209133))

(declare-fun d!2209135 () Bool)

(declare-fun e!4247501 () Bool)

(assert (=> d!2209135 e!4247501))

(declare-fun res!2884908 () Bool)

(assert (=> d!2209135 (=> (not res!2884908) (not e!4247501))))

(declare-fun lt!2540085 () Context!13212)

(assert (=> d!2209135 (= res!2884908 (dynLambda!27719 lambda!423351 lt!2540085))))

(assert (=> d!2209135 (= lt!2540085 (getWitness!1694 (toList!10951 lt!2539747) lambda!423351))))

(assert (=> d!2209135 (exists!3630 lt!2539747 lambda!423351)))

(assert (=> d!2209135 (= (getWitness!1692 lt!2539747 lambda!423351) lt!2540085)))

(declare-fun b!7065203 () Bool)

(assert (=> b!7065203 (= e!4247501 (set.member lt!2540085 lt!2539747))))

(assert (= (and d!2209135 res!2884908) b!7065203))

(declare-fun b_lambda!269533 () Bool)

(assert (=> (not b_lambda!269533) (not d!2209135)))

(declare-fun m!7788030 () Bool)

(assert (=> d!2209135 m!7788030))

(assert (=> d!2209135 m!7788018))

(assert (=> d!2209135 m!7788018))

(declare-fun m!7788032 () Bool)

(assert (=> d!2209135 m!7788032))

(assert (=> d!2209135 m!7787402))

(declare-fun m!7788034 () Bool)

(assert (=> b!7065203 m!7788034))

(assert (=> b!7064871 d!2209135))

(assert (=> b!7064888 d!2209031))

(declare-fun d!2209137 () Bool)

(assert (=> d!2209137 (= (isEmpty!39814 (exprs!7106 lt!2539750)) (is-Nil!68233 (exprs!7106 lt!2539750)))))

(assert (=> b!7064872 d!2209137))

(declare-fun b!7065208 () Bool)

(declare-fun e!4247504 () Bool)

(declare-fun tp!1941463 () Bool)

(declare-fun tp!1941464 () Bool)

(assert (=> b!7065208 (= e!4247504 (and tp!1941463 tp!1941464))))

(assert (=> b!7064873 (= tp!1941445 e!4247504)))

(assert (= (and b!7064873 (is-Cons!68233 (exprs!7106 ct2!306))) b!7065208))

(declare-fun condSetEmpty!50088 () Bool)

(assert (=> setNonEmpty!50082 (= condSetEmpty!50088 (= setRest!50082 (as set.empty (Set Context!13212))))))

(declare-fun setRes!50088 () Bool)

(assert (=> setNonEmpty!50082 (= tp!1941446 setRes!50088)))

(declare-fun setIsEmpty!50088 () Bool)

(assert (=> setIsEmpty!50088 setRes!50088))

(declare-fun setNonEmpty!50088 () Bool)

(declare-fun tp!1941469 () Bool)

(declare-fun e!4247507 () Bool)

(declare-fun setElem!50088 () Context!13212)

(assert (=> setNonEmpty!50088 (= setRes!50088 (and tp!1941469 (inv!86885 setElem!50088) e!4247507))))

(declare-fun setRest!50088 () (Set Context!13212))

(assert (=> setNonEmpty!50088 (= setRest!50082 (set.union (set.insert setElem!50088 (as set.empty (Set Context!13212))) setRest!50088))))

(declare-fun b!7065213 () Bool)

(declare-fun tp!1941470 () Bool)

(assert (=> b!7065213 (= e!4247507 tp!1941470)))

(assert (= (and setNonEmpty!50082 condSetEmpty!50088) setIsEmpty!50088))

(assert (= (and setNonEmpty!50082 (not condSetEmpty!50088)) setNonEmpty!50088))

(assert (= setNonEmpty!50088 b!7065213))

(declare-fun m!7788036 () Bool)

(assert (=> setNonEmpty!50088 m!7788036))

(declare-fun b!7065214 () Bool)

(declare-fun e!4247508 () Bool)

(declare-fun tp!1941471 () Bool)

(declare-fun tp!1941472 () Bool)

(assert (=> b!7065214 (= e!4247508 (and tp!1941471 tp!1941472))))

(assert (=> b!7064880 (= tp!1941443 e!4247508)))

(assert (= (and b!7064880 (is-Cons!68233 (exprs!7106 setElem!50082))) b!7065214))

(declare-fun b!7065219 () Bool)

(declare-fun e!4247511 () Bool)

(declare-fun tp!1941475 () Bool)

(assert (=> b!7065219 (= e!4247511 (and tp_is_empty!44445 tp!1941475))))

(assert (=> b!7064876 (= tp!1941444 e!4247511)))

(assert (= (and b!7064876 (is-Cons!68232 (t!382137 s!7408))) b!7065219))

(declare-fun b_lambda!269535 () Bool)

(assert (= b_lambda!269523 (or b!7064882 b_lambda!269535)))

(declare-fun bs!1879634 () Bool)

(declare-fun d!2209139 () Bool)

(assert (= bs!1879634 (and d!2209139 b!7064882)))

(assert (=> bs!1879634 (= (dynLambda!27720 lambda!423350 lt!2539763) (derivationStepZipperUp!2194 lt!2539763 (h!74680 s!7408)))))

(assert (=> bs!1879634 m!7787350))

(assert (=> d!2209013 d!2209139))

(declare-fun b_lambda!269537 () Bool)

(assert (= b_lambda!269533 (or b!7064871 b_lambda!269537)))

(declare-fun bs!1879635 () Bool)

(declare-fun d!2209141 () Bool)

(assert (= bs!1879635 (and d!2209141 b!7064871)))

(declare-fun nullableContext!112 (Context!13212) Bool)

(assert (=> bs!1879635 (= (dynLambda!27719 lambda!423351 lt!2540085) (nullableContext!112 lt!2540085))))

(declare-fun m!7788038 () Bool)

(assert (=> bs!1879635 m!7788038))

(assert (=> d!2209135 d!2209141))

(declare-fun b_lambda!269539 () Bool)

(assert (= b_lambda!269527 (or b!7064882 b_lambda!269539)))

(declare-fun bs!1879636 () Bool)

(declare-fun d!2209143 () Bool)

(assert (= bs!1879636 (and d!2209143 b!7064882)))

(assert (=> bs!1879636 (= (dynLambda!27720 lambda!423350 lt!2539760) (derivationStepZipperUp!2194 lt!2539760 (h!74680 s!7408)))))

(assert (=> bs!1879636 m!7787390))

(assert (=> d!2209065 d!2209143))

(declare-fun b_lambda!269541 () Bool)

(assert (= b_lambda!269521 (or b!7064882 b_lambda!269541)))

(declare-fun bs!1879637 () Bool)

(declare-fun d!2209145 () Bool)

(assert (= bs!1879637 (and d!2209145 b!7064882)))

(assert (=> bs!1879637 (= (dynLambda!27720 lambda!423350 lt!2539750) (derivationStepZipperUp!2194 lt!2539750 (h!74680 s!7408)))))

(assert (=> bs!1879637 m!7787416))

(assert (=> d!2209009 d!2209145))

(declare-fun b_lambda!269543 () Bool)

(assert (= b_lambda!269519 (or b!7064874 b_lambda!269543)))

(declare-fun bs!1879638 () Bool)

(declare-fun d!2209147 () Bool)

(assert (= bs!1879638 (and d!2209147 b!7064874)))

(assert (=> bs!1879638 (= (dynLambda!27719 lambda!423347 lt!2540009) (matchZipper!3150 (set.insert lt!2540009 (as set.empty (Set Context!13212))) s!7408))))

(declare-fun m!7788040 () Bool)

(assert (=> bs!1879638 m!7788040))

(assert (=> bs!1879638 m!7788040))

(declare-fun m!7788042 () Bool)

(assert (=> bs!1879638 m!7788042))

(assert (=> d!2208997 d!2209147))

(declare-fun b_lambda!269545 () Bool)

(assert (= b_lambda!269525 (or b!7064882 b_lambda!269545)))

(declare-fun bs!1879639 () Bool)

(declare-fun d!2209149 () Bool)

(assert (= bs!1879639 (and d!2209149 b!7064882)))

(assert (=> bs!1879639 (= (dynLambda!27720 lambda!423350 lt!2539787) (derivationStepZipperUp!2194 lt!2539787 (h!74680 s!7408)))))

(assert (=> bs!1879639 m!7787450))

(assert (=> d!2209037 d!2209149))

(declare-fun b_lambda!269547 () Bool)

(assert (= b_lambda!269529 (or b!7064884 b_lambda!269547)))

(declare-fun bs!1879640 () Bool)

(declare-fun d!2209151 () Bool)

(assert (= bs!1879640 (and d!2209151 b!7064884)))

(declare-fun lt!2540086 () Unit!161908)

(assert (=> bs!1879640 (= lt!2540086 (lemmaConcatPreservesForall!921 (exprs!7106 lt!2540058) (exprs!7106 ct2!306) lambda!423349))))

(assert (=> bs!1879640 (= (dynLambda!27721 lambda!423348 lt!2540058) (Context!13213 (++!15717 (exprs!7106 lt!2540058) (exprs!7106 ct2!306))))))

(declare-fun m!7788044 () Bool)

(assert (=> bs!1879640 m!7788044))

(declare-fun m!7788046 () Bool)

(assert (=> bs!1879640 m!7788046))

(assert (=> d!2209087 d!2209151))

(declare-fun b_lambda!269549 () Bool)

(assert (= b_lambda!269531 (or b!7064884 b_lambda!269549)))

(declare-fun bs!1879641 () Bool)

(declare-fun d!2209153 () Bool)

(assert (= bs!1879641 (and d!2209153 b!7064884)))

(declare-fun lt!2540087 () Unit!161908)

(assert (=> bs!1879641 (= lt!2540087 (lemmaConcatPreservesForall!921 (exprs!7106 lt!2539763) (exprs!7106 ct2!306) lambda!423349))))

(assert (=> bs!1879641 (= (dynLambda!27721 lambda!423348 lt!2539763) (Context!13213 (++!15717 (exprs!7106 lt!2539763) (exprs!7106 ct2!306))))))

(declare-fun m!7788048 () Bool)

(assert (=> bs!1879641 m!7788048))

(declare-fun m!7788050 () Bool)

(assert (=> bs!1879641 m!7788050))

(assert (=> d!2209119 d!2209153))

(push 1)

(assert (not d!2209045))

(assert (not b!7065176))

(assert (not b!7065134))

(assert (not b!7065108))

(assert (not b!7065106))

(assert (not b!7065121))

(assert (not d!2209083))

(assert (not b!7065184))

(assert (not d!2208991))

(assert (not b!7065142))

(assert (not b!7065104))

(assert (not b!7065122))

(assert (not b_lambda!269547))

(assert (not setNonEmpty!50088))

(assert (not bm!642034))

(assert (not b!7065120))

(assert (not d!2209133))

(assert (not d!2209097))

(assert (not b!7065129))

(assert (not d!2208999))

(assert (not d!2209087))

(assert (not b!7065105))

(assert (not b!7065043))

(assert (not b!7065141))

(assert tp_is_empty!44445)

(assert (not b_lambda!269543))

(assert (not d!2209073))

(assert (not d!2209077))

(assert (not b!7065187))

(assert (not b!7065117))

(assert (not b_lambda!269537))

(assert (not bm!642029))

(assert (not bs!1879641))

(assert (not b!7065183))

(assert (not b!7065156))

(assert (not b_lambda!269539))

(assert (not b_lambda!269541))

(assert (not d!2209043))

(assert (not b!7065110))

(assert (not b!7065208))

(assert (not bs!1879636))

(assert (not b!7065118))

(assert (not bs!1879634))

(assert (not d!2209135))

(assert (not bs!1879640))

(assert (not b!7065174))

(assert (not d!2209041))

(assert (not b!7065099))

(assert (not d!2209029))

(assert (not d!2209079))

(assert (not d!2209027))

(assert (not d!2209033))

(assert (not b!7065041))

(assert (not b!7065101))

(assert (not b!7065188))

(assert (not b!7065018))

(assert (not d!2209059))

(assert (not b!7065039))

(assert (not bm!642026))

(assert (not d!2209025))

(assert (not d!2209003))

(assert (not b!7065019))

(assert (not b!7064997))

(assert (not bm!642008))

(assert (not b!7065157))

(assert (not d!2209089))

(assert (not d!2209095))

(assert (not d!2209131))

(assert (not bs!1879635))

(assert (not bm!642025))

(assert (not d!2208993))

(assert (not d!2209037))

(assert (not d!2209015))

(assert (not b!7065173))

(assert (not d!2209115))

(assert (not b!7065145))

(assert (not d!2209099))

(assert (not d!2209061))

(assert (not b!7065163))

(assert (not d!2209081))

(assert (not d!2209057))

(assert (not b!7065036))

(assert (not d!2209105))

(assert (not bm!642031))

(assert (not b!7065146))

(assert (not b!7065219))

(assert (not d!2209013))

(assert (not b_lambda!269545))

(assert (not d!2209127))

(assert (not d!2209051))

(assert (not b!7065033))

(assert (not bm!642023))

(assert (not b!7065116))

(assert (not b!7065102))

(assert (not b!7065136))

(assert (not bs!1879637))

(assert (not b!7064996))

(assert (not b!7065016))

(assert (not b!7065127))

(assert (not bs!1879639))

(assert (not b!7065171))

(assert (not b_lambda!269535))

(assert (not d!2209085))

(assert (not bm!642028))

(assert (not b!7065143))

(assert (not b_lambda!269549))

(assert (not d!2209055))

(assert (not d!2209119))

(assert (not d!2209047))

(assert (not bm!642009))

(assert (not b!7065172))

(assert (not b!7065096))

(assert (not b!7065214))

(assert (not d!2209117))

(assert (not b!7065175))

(assert (not d!2209039))

(assert (not d!2209049))

(assert (not d!2209101))

(assert (not bs!1879638))

(assert (not b!7065132))

(assert (not bm!642033))

(assert (not d!2208997))

(assert (not b!7065139))

(assert (not d!2209069))

(assert (not b!7065144))

(assert (not b!7065035))

(assert (not b!7065213))

(assert (not d!2209123))

(assert (not b!7065170))

(assert (not b!7065164))

(assert (not b!7065130))

(assert (not d!2209129))

(assert (not b!7065107))

(assert (not d!2209065))

(assert (not d!2209019))

(assert (not b!7065181))

(assert (not d!2209103))

(assert (not b!7065015))

(assert (not d!2209071))

(assert (not d!2209109))

(assert (not b!7065005))

(assert (not b!7065031))

(assert (not b!7065202))

(assert (not d!2209031))

(assert (not d!2209009))

(assert (not d!2209001))

(assert (not d!2208995))

(assert (not b!7065103))

(assert (not b!7065119))

(assert (not d!2209005))

(assert (not d!2209007))

(assert (not b!7065190))

(assert (not b!7065112))

(assert (not b!7065077))

(assert (not d!2209113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


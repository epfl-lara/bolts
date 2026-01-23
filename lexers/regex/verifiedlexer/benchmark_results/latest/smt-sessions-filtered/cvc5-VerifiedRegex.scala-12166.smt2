; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684466 () Bool)

(assert start!684466)

(declare-fun b!7056439 () Bool)

(assert (=> b!7056439 true))

(declare-fun b!7056438 () Bool)

(assert (=> b!7056438 true))

(declare-fun b!7056426 () Bool)

(assert (=> b!7056426 true))

(declare-fun b!7056425 () Bool)

(declare-fun res!2880813 () Bool)

(declare-fun e!4242212 () Bool)

(assert (=> b!7056425 (=> (not res!2880813) (not e!4242212))))

(declare-datatypes ((C!35426 0))(
  ( (C!35427 (val!27415 Int)) )
))
(declare-datatypes ((List!68260 0))(
  ( (Nil!68136) (Cons!68136 (h!74584 C!35426) (t!382039 List!68260)) )
))
(declare-fun s!7408 () List!68260)

(assert (=> b!7056425 (= res!2880813 (is-Cons!68136 s!7408))))

(declare-fun e!4242207 () Bool)

(declare-fun e!4242204 () Bool)

(assert (=> b!7056426 (= e!4242207 e!4242204)))

(declare-fun res!2880810 () Bool)

(assert (=> b!7056426 (=> res!2880810 e!4242204)))

(declare-datatypes ((Regex!17578 0))(
  ( (ElementMatch!17578 (c!1314711 C!35426)) (Concat!26423 (regOne!35668 Regex!17578) (regTwo!35668 Regex!17578)) (EmptyExpr!17578) (Star!17578 (reg!17907 Regex!17578)) (EmptyLang!17578) (Union!17578 (regOne!35669 Regex!17578) (regTwo!35669 Regex!17578)) )
))
(declare-datatypes ((List!68261 0))(
  ( (Nil!68137) (Cons!68137 (h!74585 Regex!17578) (t!382040 List!68261)) )
))
(declare-datatypes ((Context!13148 0))(
  ( (Context!13149 (exprs!7074 List!68261)) )
))
(declare-fun lt!2532840 () (Set Context!13148))

(declare-fun lt!2532841 () (Set Context!13148))

(declare-fun derivationStepZipper!3028 ((Set Context!13148) C!35426) (Set Context!13148))

(assert (=> b!7056426 (= res!2880810 (not (= (derivationStepZipper!3028 lt!2532840 (h!74584 s!7408)) lt!2532841)))))

(declare-fun lambda!420718 () Int)

(declare-fun lt!2532859 () Context!13148)

(declare-fun flatMap!2504 ((Set Context!13148) Int) (Set Context!13148))

(declare-fun derivationStepZipperUp!2162 (Context!13148 C!35426) (Set Context!13148))

(assert (=> b!7056426 (= (flatMap!2504 lt!2532840 lambda!420718) (derivationStepZipperUp!2162 lt!2532859 (h!74584 s!7408)))))

(declare-datatypes ((Unit!161829 0))(
  ( (Unit!161830) )
))
(declare-fun lt!2532875 () Unit!161829)

(declare-fun lemmaFlatMapOnSingletonSet!2013 ((Set Context!13148) Context!13148 Int) Unit!161829)

(assert (=> b!7056426 (= lt!2532875 (lemmaFlatMapOnSingletonSet!2013 lt!2532840 lt!2532859 lambda!420718))))

(assert (=> b!7056426 (= lt!2532841 (derivationStepZipperUp!2162 lt!2532859 (h!74584 s!7408)))))

(declare-fun lt!2532865 () Unit!161829)

(declare-fun ct2!306 () Context!13148)

(declare-fun lt!2532873 () Context!13148)

(declare-fun lambda!420717 () Int)

(declare-fun lemmaConcatPreservesForall!889 (List!68261 List!68261 Int) Unit!161829)

(assert (=> b!7056426 (= lt!2532865 (lemmaConcatPreservesForall!889 (exprs!7074 lt!2532873) (exprs!7074 ct2!306) lambda!420717))))

(declare-fun b!7056427 () Bool)

(declare-fun e!4242208 () Bool)

(declare-fun e!4242210 () Bool)

(assert (=> b!7056427 (= e!4242208 e!4242210)))

(declare-fun res!2880812 () Bool)

(assert (=> b!7056427 (=> res!2880812 e!4242210)))

(declare-fun lt!2532843 () (Set Context!13148))

(declare-fun matchZipper!3118 ((Set Context!13148) List!68260) Bool)

(assert (=> b!7056427 (= res!2880812 (not (matchZipper!3118 lt!2532843 s!7408)))))

(declare-fun lt!2532848 () Unit!161829)

(declare-fun lt!2532861 () List!68261)

(assert (=> b!7056427 (= lt!2532848 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun b!7056428 () Bool)

(declare-fun e!4242209 () Bool)

(assert (=> b!7056428 (= e!4242209 e!4242207)))

(declare-fun res!2880816 () Bool)

(assert (=> b!7056428 (=> res!2880816 e!4242207)))

(declare-fun lt!2532854 () (Set Context!13148))

(assert (=> b!7056428 (= res!2880816 (not (= lt!2532840 lt!2532854)))))

(assert (=> b!7056428 (= lt!2532840 (set.insert lt!2532859 (as set.empty (Set Context!13148))))))

(declare-fun lt!2532858 () Unit!161829)

(assert (=> b!7056428 (= lt!2532858 (lemmaConcatPreservesForall!889 (exprs!7074 lt!2532873) (exprs!7074 ct2!306) lambda!420717))))

(declare-fun b!7056429 () Bool)

(declare-fun e!4242213 () Bool)

(declare-fun lt!2532849 () (Set Context!13148))

(assert (=> b!7056429 (= e!4242213 (matchZipper!3118 lt!2532849 (t!382039 s!7408)))))

(declare-fun tp!1940366 () Bool)

(declare-fun setElem!49888 () Context!13148)

(declare-fun e!4242203 () Bool)

(declare-fun setRes!49888 () Bool)

(declare-fun setNonEmpty!49888 () Bool)

(declare-fun inv!86805 (Context!13148) Bool)

(assert (=> setNonEmpty!49888 (= setRes!49888 (and tp!1940366 (inv!86805 setElem!49888) e!4242203))))

(declare-fun z1!570 () (Set Context!13148))

(declare-fun setRest!49888 () (Set Context!13148))

(assert (=> setNonEmpty!49888 (= z1!570 (set.union (set.insert setElem!49888 (as set.empty (Set Context!13148))) setRest!49888))))

(declare-fun b!7056430 () Bool)

(declare-fun e!4242202 () Bool)

(assert (=> b!7056430 (= e!4242202 e!4242208)))

(declare-fun res!2880803 () Bool)

(assert (=> b!7056430 (=> res!2880803 e!4242208)))

(assert (=> b!7056430 (= res!2880803 (not (= (derivationStepZipper!3028 lt!2532843 (h!74584 s!7408)) lt!2532849)))))

(declare-fun lt!2532842 () Unit!161829)

(assert (=> b!7056430 (= lt!2532842 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532874 () Unit!161829)

(assert (=> b!7056430 (= lt!2532874 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532860 () Context!13148)

(assert (=> b!7056430 (= (flatMap!2504 lt!2532843 lambda!420718) (derivationStepZipperUp!2162 lt!2532860 (h!74584 s!7408)))))

(declare-fun lt!2532862 () Unit!161829)

(assert (=> b!7056430 (= lt!2532862 (lemmaFlatMapOnSingletonSet!2013 lt!2532843 lt!2532860 lambda!420718))))

(assert (=> b!7056430 (= lt!2532843 (set.insert lt!2532860 (as set.empty (Set Context!13148))))))

(declare-fun lt!2532882 () Unit!161829)

(assert (=> b!7056430 (= lt!2532882 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532857 () Unit!161829)

(assert (=> b!7056430 (= lt!2532857 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun b!7056431 () Bool)

(declare-fun res!2880809 () Bool)

(assert (=> b!7056431 (=> res!2880809 e!4242204)))

(assert (=> b!7056431 (= res!2880809 (not (is-Cons!68137 (exprs!7074 lt!2532873))))))

(declare-fun b!7056432 () Bool)

(assert (=> b!7056432 (= e!4242210 (inv!86805 lt!2532860))))

(declare-fun lt!2532881 () Unit!161829)

(assert (=> b!7056432 (= lt!2532881 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532867 () Unit!161829)

(assert (=> b!7056432 (= lt!2532867 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532876 () Unit!161829)

(assert (=> b!7056432 (= lt!2532876 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532855 () Context!13148)

(declare-fun lt!2532853 () (Set Context!13148))

(assert (=> b!7056432 (= (flatMap!2504 lt!2532853 lambda!420718) (derivationStepZipperUp!2162 lt!2532855 (h!74584 s!7408)))))

(declare-fun lt!2532851 () Unit!161829)

(assert (=> b!7056432 (= lt!2532851 (lemmaFlatMapOnSingletonSet!2013 lt!2532853 lt!2532855 lambda!420718))))

(declare-fun lambda!420716 () Int)

(declare-fun map!15900 ((Set Context!13148) Int) (Set Context!13148))

(declare-fun ++!15661 (List!68261 List!68261) List!68261)

(assert (=> b!7056432 (= (map!15900 lt!2532853 lambda!420716) (set.insert (Context!13149 (++!15661 lt!2532861 (exprs!7074 ct2!306))) (as set.empty (Set Context!13148))))))

(declare-fun lt!2532866 () Unit!161829)

(assert (=> b!7056432 (= lt!2532866 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532879 () Unit!161829)

(declare-fun lemmaMapOnSingletonSet!395 ((Set Context!13148) Context!13148 Int) Unit!161829)

(assert (=> b!7056432 (= lt!2532879 (lemmaMapOnSingletonSet!395 lt!2532853 lt!2532855 lambda!420716))))

(assert (=> b!7056432 (= lt!2532853 (set.insert lt!2532855 (as set.empty (Set Context!13148))))))

(declare-fun b!7056433 () Bool)

(declare-fun e!4242206 () Bool)

(assert (=> b!7056433 (= e!4242206 e!4242202)))

(declare-fun res!2880805 () Bool)

(assert (=> b!7056433 (=> res!2880805 e!4242202)))

(assert (=> b!7056433 (= res!2880805 (not (matchZipper!3118 lt!2532849 (t!382039 s!7408))))))

(declare-fun lt!2532850 () Unit!161829)

(assert (=> b!7056433 (= lt!2532850 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun b!7056434 () Bool)

(declare-fun e!4242205 () Bool)

(declare-fun tp!1940365 () Bool)

(assert (=> b!7056434 (= e!4242205 tp!1940365)))

(declare-fun b!7056435 () Bool)

(declare-fun res!2880817 () Bool)

(assert (=> b!7056435 (=> res!2880817 e!4242206)))

(declare-fun lt!2532880 () Bool)

(assert (=> b!7056435 (= res!2880817 (not lt!2532880))))

(declare-fun b!7056436 () Bool)

(declare-fun res!2880818 () Bool)

(assert (=> b!7056436 (=> res!2880818 e!4242204)))

(declare-fun isEmpty!39741 (List!68261) Bool)

(assert (=> b!7056436 (= res!2880818 (isEmpty!39741 (exprs!7074 lt!2532873)))))

(declare-fun b!7056437 () Bool)

(declare-fun e!4242201 () Bool)

(assert (=> b!7056437 (= e!4242204 e!4242201)))

(declare-fun res!2880807 () Bool)

(assert (=> b!7056437 (=> res!2880807 e!4242201)))

(declare-fun nullable!7261 (Regex!17578) Bool)

(assert (=> b!7056437 (= res!2880807 (not (nullable!7261 (h!74585 (exprs!7074 lt!2532873)))))))

(assert (=> b!7056437 (= lt!2532855 (Context!13149 lt!2532861))))

(declare-fun tail!13713 (List!68261) List!68261)

(assert (=> b!7056437 (= lt!2532861 (tail!13713 (exprs!7074 lt!2532873)))))

(declare-fun e!4242214 () Bool)

(assert (=> b!7056438 (= e!4242214 e!4242209)))

(declare-fun res!2880814 () Bool)

(assert (=> b!7056438 (=> res!2880814 e!4242209)))

(declare-fun lt!2532871 () Context!13148)

(assert (=> b!7056438 (= res!2880814 (or (not (= lt!2532859 lt!2532871)) (not (set.member lt!2532873 z1!570))))))

(assert (=> b!7056438 (= lt!2532859 (Context!13149 (++!15661 (exprs!7074 lt!2532873) (exprs!7074 ct2!306))))))

(declare-fun lt!2532863 () Unit!161829)

(assert (=> b!7056438 (= lt!2532863 (lemmaConcatPreservesForall!889 (exprs!7074 lt!2532873) (exprs!7074 ct2!306) lambda!420717))))

(declare-fun mapPost2!407 ((Set Context!13148) Int Context!13148) Context!13148)

(assert (=> b!7056438 (= lt!2532873 (mapPost2!407 z1!570 lambda!420716 lt!2532871))))

(assert (=> b!7056439 (= e!4242212 (not e!4242214))))

(declare-fun res!2880819 () Bool)

(assert (=> b!7056439 (=> res!2880819 e!4242214)))

(assert (=> b!7056439 (= res!2880819 (not (matchZipper!3118 lt!2532854 s!7408)))))

(assert (=> b!7056439 (= lt!2532854 (set.insert lt!2532871 (as set.empty (Set Context!13148))))))

(declare-fun lt!2532872 () (Set Context!13148))

(declare-fun lambda!420715 () Int)

(declare-fun getWitness!1645 ((Set Context!13148) Int) Context!13148)

(assert (=> b!7056439 (= lt!2532871 (getWitness!1645 lt!2532872 lambda!420715))))

(declare-datatypes ((List!68262 0))(
  ( (Nil!68138) (Cons!68138 (h!74586 Context!13148) (t!382041 List!68262)) )
))
(declare-fun lt!2532869 () List!68262)

(declare-fun exists!3571 (List!68262 Int) Bool)

(assert (=> b!7056439 (exists!3571 lt!2532869 lambda!420715)))

(declare-fun lt!2532845 () Unit!161829)

(declare-fun lemmaZipperMatchesExistsMatchingContext!499 (List!68262 List!68260) Unit!161829)

(assert (=> b!7056439 (= lt!2532845 (lemmaZipperMatchesExistsMatchingContext!499 lt!2532869 s!7408))))

(declare-fun toList!10919 ((Set Context!13148)) List!68262)

(assert (=> b!7056439 (= lt!2532869 (toList!10919 lt!2532872))))

(declare-fun b!7056440 () Bool)

(declare-fun e!4242216 () Bool)

(assert (=> b!7056440 (= e!4242216 e!4242206)))

(declare-fun res!2880820 () Bool)

(assert (=> b!7056440 (=> res!2880820 e!4242206)))

(declare-fun e!4242215 () Bool)

(assert (=> b!7056440 (= res!2880820 e!4242215)))

(declare-fun res!2880808 () Bool)

(assert (=> b!7056440 (=> (not res!2880808) (not e!4242215))))

(declare-fun lt!2532868 () Bool)

(assert (=> b!7056440 (= res!2880808 (not (= lt!2532880 lt!2532868)))))

(assert (=> b!7056440 (= lt!2532880 (matchZipper!3118 lt!2532841 (t!382039 s!7408)))))

(declare-fun lt!2532878 () Unit!161829)

(assert (=> b!7056440 (= lt!2532878 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532856 () (Set Context!13148))

(assert (=> b!7056440 (= (matchZipper!3118 lt!2532856 (t!382039 s!7408)) e!4242213)))

(declare-fun res!2880804 () Bool)

(assert (=> b!7056440 (=> res!2880804 e!4242213)))

(assert (=> b!7056440 (= res!2880804 lt!2532868)))

(declare-fun lt!2532877 () (Set Context!13148))

(assert (=> b!7056440 (= lt!2532868 (matchZipper!3118 lt!2532877 (t!382039 s!7408)))))

(declare-fun lt!2532847 () Unit!161829)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1591 ((Set Context!13148) (Set Context!13148) List!68260) Unit!161829)

(assert (=> b!7056440 (= lt!2532847 (lemmaZipperConcatMatchesSameAsBothZippers!1591 lt!2532877 lt!2532849 (t!382039 s!7408)))))

(declare-fun lt!2532852 () Unit!161829)

(assert (=> b!7056440 (= lt!2532852 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532844 () Unit!161829)

(assert (=> b!7056440 (= lt!2532844 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun res!2880811 () Bool)

(assert (=> start!684466 (=> (not res!2880811) (not e!4242212))))

(assert (=> start!684466 (= res!2880811 (matchZipper!3118 lt!2532872 s!7408))))

(declare-fun appendTo!699 ((Set Context!13148) Context!13148) (Set Context!13148))

(assert (=> start!684466 (= lt!2532872 (appendTo!699 z1!570 ct2!306))))

(assert (=> start!684466 e!4242212))

(declare-fun condSetEmpty!49888 () Bool)

(assert (=> start!684466 (= condSetEmpty!49888 (= z1!570 (as set.empty (Set Context!13148))))))

(assert (=> start!684466 setRes!49888))

(assert (=> start!684466 (and (inv!86805 ct2!306) e!4242205)))

(declare-fun e!4242211 () Bool)

(assert (=> start!684466 e!4242211))

(declare-fun b!7056441 () Bool)

(declare-fun tp_is_empty!44381 () Bool)

(declare-fun tp!1940364 () Bool)

(assert (=> b!7056441 (= e!4242211 (and tp_is_empty!44381 tp!1940364))))

(declare-fun setIsEmpty!49888 () Bool)

(assert (=> setIsEmpty!49888 setRes!49888))

(declare-fun b!7056442 () Bool)

(assert (=> b!7056442 (= e!4242215 (not (matchZipper!3118 lt!2532849 (t!382039 s!7408))))))

(declare-fun lt!2532864 () Unit!161829)

(assert (=> b!7056442 (= lt!2532864 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun b!7056443 () Bool)

(declare-fun tp!1940363 () Bool)

(assert (=> b!7056443 (= e!4242203 tp!1940363)))

(declare-fun b!7056444 () Bool)

(declare-fun res!2880806 () Bool)

(assert (=> b!7056444 (=> res!2880806 e!4242214)))

(assert (=> b!7056444 (= res!2880806 (not (set.member lt!2532871 lt!2532872)))))

(declare-fun b!7056445 () Bool)

(assert (=> b!7056445 (= e!4242201 e!4242216)))

(declare-fun res!2880815 () Bool)

(assert (=> b!7056445 (=> res!2880815 e!4242216)))

(assert (=> b!7056445 (= res!2880815 (not (= lt!2532841 lt!2532856)))))

(assert (=> b!7056445 (= lt!2532856 (set.union lt!2532877 lt!2532849))))

(assert (=> b!7056445 (= lt!2532849 (derivationStepZipperUp!2162 lt!2532860 (h!74584 s!7408)))))

(declare-fun derivationStepZipperDown!2212 (Regex!17578 Context!13148 C!35426) (Set Context!13148))

(assert (=> b!7056445 (= lt!2532877 (derivationStepZipperDown!2212 (h!74585 (exprs!7074 lt!2532873)) lt!2532860 (h!74584 s!7408)))))

(assert (=> b!7056445 (= lt!2532860 (Context!13149 (++!15661 lt!2532861 (exprs!7074 ct2!306))))))

(declare-fun lt!2532846 () Unit!161829)

(assert (=> b!7056445 (= lt!2532846 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(declare-fun lt!2532870 () Unit!161829)

(assert (=> b!7056445 (= lt!2532870 (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(assert (= (and start!684466 res!2880811) b!7056425))

(assert (= (and b!7056425 res!2880813) b!7056439))

(assert (= (and b!7056439 (not res!2880819)) b!7056444))

(assert (= (and b!7056444 (not res!2880806)) b!7056438))

(assert (= (and b!7056438 (not res!2880814)) b!7056428))

(assert (= (and b!7056428 (not res!2880816)) b!7056426))

(assert (= (and b!7056426 (not res!2880810)) b!7056431))

(assert (= (and b!7056431 (not res!2880809)) b!7056436))

(assert (= (and b!7056436 (not res!2880818)) b!7056437))

(assert (= (and b!7056437 (not res!2880807)) b!7056445))

(assert (= (and b!7056445 (not res!2880815)) b!7056440))

(assert (= (and b!7056440 (not res!2880804)) b!7056429))

(assert (= (and b!7056440 res!2880808) b!7056442))

(assert (= (and b!7056440 (not res!2880820)) b!7056435))

(assert (= (and b!7056435 (not res!2880817)) b!7056433))

(assert (= (and b!7056433 (not res!2880805)) b!7056430))

(assert (= (and b!7056430 (not res!2880803)) b!7056427))

(assert (= (and b!7056427 (not res!2880812)) b!7056432))

(assert (= (and start!684466 condSetEmpty!49888) setIsEmpty!49888))

(assert (= (and start!684466 (not condSetEmpty!49888)) setNonEmpty!49888))

(assert (= setNonEmpty!49888 b!7056443))

(assert (= start!684466 b!7056434))

(assert (= (and start!684466 (is-Cons!68136 s!7408)) b!7056441))

(declare-fun m!7774474 () Bool)

(assert (=> b!7056444 m!7774474))

(declare-fun m!7774476 () Bool)

(assert (=> b!7056428 m!7774476))

(declare-fun m!7774478 () Bool)

(assert (=> b!7056428 m!7774478))

(declare-fun m!7774480 () Bool)

(assert (=> b!7056438 m!7774480))

(declare-fun m!7774482 () Bool)

(assert (=> b!7056438 m!7774482))

(assert (=> b!7056438 m!7774478))

(declare-fun m!7774484 () Bool)

(assert (=> b!7056438 m!7774484))

(declare-fun m!7774486 () Bool)

(assert (=> b!7056440 m!7774486))

(declare-fun m!7774488 () Bool)

(assert (=> b!7056440 m!7774488))

(declare-fun m!7774490 () Bool)

(assert (=> b!7056440 m!7774490))

(declare-fun m!7774492 () Bool)

(assert (=> b!7056440 m!7774492))

(declare-fun m!7774494 () Bool)

(assert (=> b!7056440 m!7774494))

(assert (=> b!7056440 m!7774488))

(assert (=> b!7056440 m!7774488))

(declare-fun m!7774496 () Bool)

(assert (=> b!7056433 m!7774496))

(assert (=> b!7056433 m!7774488))

(declare-fun m!7774498 () Bool)

(assert (=> b!7056439 m!7774498))

(declare-fun m!7774500 () Bool)

(assert (=> b!7056439 m!7774500))

(declare-fun m!7774502 () Bool)

(assert (=> b!7056439 m!7774502))

(declare-fun m!7774504 () Bool)

(assert (=> b!7056439 m!7774504))

(declare-fun m!7774506 () Bool)

(assert (=> b!7056439 m!7774506))

(declare-fun m!7774508 () Bool)

(assert (=> b!7056439 m!7774508))

(declare-fun m!7774510 () Bool)

(assert (=> b!7056437 m!7774510))

(declare-fun m!7774512 () Bool)

(assert (=> b!7056437 m!7774512))

(declare-fun m!7774514 () Bool)

(assert (=> b!7056427 m!7774514))

(assert (=> b!7056427 m!7774488))

(declare-fun m!7774516 () Bool)

(assert (=> b!7056426 m!7774516))

(declare-fun m!7774518 () Bool)

(assert (=> b!7056426 m!7774518))

(declare-fun m!7774520 () Bool)

(assert (=> b!7056426 m!7774520))

(assert (=> b!7056426 m!7774478))

(declare-fun m!7774522 () Bool)

(assert (=> b!7056426 m!7774522))

(assert (=> b!7056442 m!7774496))

(assert (=> b!7056442 m!7774488))

(assert (=> b!7056445 m!7774488))

(declare-fun m!7774524 () Bool)

(assert (=> b!7056445 m!7774524))

(assert (=> b!7056445 m!7774488))

(declare-fun m!7774526 () Bool)

(assert (=> b!7056445 m!7774526))

(declare-fun m!7774528 () Bool)

(assert (=> b!7056445 m!7774528))

(declare-fun m!7774530 () Bool)

(assert (=> b!7056430 m!7774530))

(declare-fun m!7774532 () Bool)

(assert (=> b!7056430 m!7774532))

(assert (=> b!7056430 m!7774488))

(assert (=> b!7056430 m!7774488))

(assert (=> b!7056430 m!7774526))

(assert (=> b!7056430 m!7774488))

(declare-fun m!7774534 () Bool)

(assert (=> b!7056430 m!7774534))

(declare-fun m!7774536 () Bool)

(assert (=> b!7056430 m!7774536))

(assert (=> b!7056430 m!7774488))

(declare-fun m!7774538 () Bool)

(assert (=> start!684466 m!7774538))

(declare-fun m!7774540 () Bool)

(assert (=> start!684466 m!7774540))

(declare-fun m!7774542 () Bool)

(assert (=> start!684466 m!7774542))

(declare-fun m!7774544 () Bool)

(assert (=> setNonEmpty!49888 m!7774544))

(assert (=> b!7056429 m!7774496))

(declare-fun m!7774546 () Bool)

(assert (=> b!7056436 m!7774546))

(assert (=> b!7056432 m!7774488))

(declare-fun m!7774548 () Bool)

(assert (=> b!7056432 m!7774548))

(assert (=> b!7056432 m!7774524))

(declare-fun m!7774550 () Bool)

(assert (=> b!7056432 m!7774550))

(declare-fun m!7774552 () Bool)

(assert (=> b!7056432 m!7774552))

(assert (=> b!7056432 m!7774488))

(assert (=> b!7056432 m!7774488))

(declare-fun m!7774554 () Bool)

(assert (=> b!7056432 m!7774554))

(declare-fun m!7774556 () Bool)

(assert (=> b!7056432 m!7774556))

(assert (=> b!7056432 m!7774488))

(declare-fun m!7774558 () Bool)

(assert (=> b!7056432 m!7774558))

(declare-fun m!7774560 () Bool)

(assert (=> b!7056432 m!7774560))

(declare-fun m!7774562 () Bool)

(assert (=> b!7056432 m!7774562))

(push 1)

(assert (not b!7056432))

(assert (not b!7056443))

(assert (not b!7056445))

(assert (not b!7056429))

(assert (not b!7056437))

(assert (not b!7056441))

(assert (not b!7056442))

(assert (not b!7056438))

(assert (not b!7056436))

(assert (not b!7056428))

(assert (not b!7056439))

(assert (not b!7056427))

(assert (not b!7056426))

(assert tp_is_empty!44381)

(assert (not b!7056440))

(assert (not setNonEmpty!49888))

(assert (not start!684466))

(assert (not b!7056430))

(assert (not b!7056434))

(assert (not b!7056433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2205263 () Bool)

(declare-fun c!1314729 () Bool)

(declare-fun isEmpty!39743 (List!68260) Bool)

(assert (=> d!2205263 (= c!1314729 (isEmpty!39743 s!7408))))

(declare-fun e!4242267 () Bool)

(assert (=> d!2205263 (= (matchZipper!3118 lt!2532872 s!7408) e!4242267)))

(declare-fun b!7056525 () Bool)

(declare-fun nullableZipper!2662 ((Set Context!13148)) Bool)

(assert (=> b!7056525 (= e!4242267 (nullableZipper!2662 lt!2532872))))

(declare-fun b!7056526 () Bool)

(declare-fun head!14363 (List!68260) C!35426)

(declare-fun tail!13715 (List!68260) List!68260)

(assert (=> b!7056526 (= e!4242267 (matchZipper!3118 (derivationStepZipper!3028 lt!2532872 (head!14363 s!7408)) (tail!13715 s!7408)))))

(assert (= (and d!2205263 c!1314729) b!7056525))

(assert (= (and d!2205263 (not c!1314729)) b!7056526))

(declare-fun m!7774654 () Bool)

(assert (=> d!2205263 m!7774654))

(declare-fun m!7774656 () Bool)

(assert (=> b!7056525 m!7774656))

(declare-fun m!7774658 () Bool)

(assert (=> b!7056526 m!7774658))

(assert (=> b!7056526 m!7774658))

(declare-fun m!7774660 () Bool)

(assert (=> b!7056526 m!7774660))

(declare-fun m!7774662 () Bool)

(assert (=> b!7056526 m!7774662))

(assert (=> b!7056526 m!7774660))

(assert (=> b!7056526 m!7774662))

(declare-fun m!7774664 () Bool)

(assert (=> b!7056526 m!7774664))

(assert (=> start!684466 d!2205263))

(declare-fun bs!1877178 () Bool)

(declare-fun d!2205265 () Bool)

(assert (= bs!1877178 (and d!2205265 b!7056438)))

(declare-fun lambda!420783 () Int)

(assert (=> bs!1877178 (= lambda!420783 lambda!420716)))

(assert (=> d!2205265 true))

(assert (=> d!2205265 (= (appendTo!699 z1!570 ct2!306) (map!15900 z1!570 lambda!420783))))

(declare-fun bs!1877179 () Bool)

(assert (= bs!1877179 d!2205265))

(declare-fun m!7774666 () Bool)

(assert (=> bs!1877179 m!7774666))

(assert (=> start!684466 d!2205265))

(declare-fun bs!1877180 () Bool)

(declare-fun d!2205267 () Bool)

(assert (= bs!1877180 (and d!2205267 b!7056438)))

(declare-fun lambda!420786 () Int)

(assert (=> bs!1877180 (= lambda!420786 lambda!420717)))

(declare-fun forall!16525 (List!68261 Int) Bool)

(assert (=> d!2205267 (= (inv!86805 ct2!306) (forall!16525 (exprs!7074 ct2!306) lambda!420786))))

(declare-fun bs!1877181 () Bool)

(assert (= bs!1877181 d!2205267))

(declare-fun m!7774668 () Bool)

(assert (=> bs!1877181 m!7774668))

(assert (=> start!684466 d!2205267))

(declare-fun b!7056537 () Bool)

(declare-fun e!4242276 () Bool)

(assert (=> b!7056537 (= e!4242276 (nullable!7261 (h!74585 (exprs!7074 lt!2532855))))))

(declare-fun b!7056538 () Bool)

(declare-fun e!4242275 () (Set Context!13148))

(assert (=> b!7056538 (= e!4242275 (as set.empty (Set Context!13148)))))

(declare-fun b!7056539 () Bool)

(declare-fun e!4242274 () (Set Context!13148))

(assert (=> b!7056539 (= e!4242274 e!4242275)))

(declare-fun c!1314736 () Bool)

(assert (=> b!7056539 (= c!1314736 (is-Cons!68137 (exprs!7074 lt!2532855)))))

(declare-fun call!641049 () (Set Context!13148))

(declare-fun b!7056540 () Bool)

(assert (=> b!7056540 (= e!4242274 (set.union call!641049 (derivationStepZipperUp!2162 (Context!13149 (t!382040 (exprs!7074 lt!2532855))) (h!74584 s!7408))))))

(declare-fun d!2205269 () Bool)

(declare-fun c!1314735 () Bool)

(assert (=> d!2205269 (= c!1314735 e!4242276)))

(declare-fun res!2880878 () Bool)

(assert (=> d!2205269 (=> (not res!2880878) (not e!4242276))))

(assert (=> d!2205269 (= res!2880878 (is-Cons!68137 (exprs!7074 lt!2532855)))))

(assert (=> d!2205269 (= (derivationStepZipperUp!2162 lt!2532855 (h!74584 s!7408)) e!4242274)))

(declare-fun bm!641044 () Bool)

(assert (=> bm!641044 (= call!641049 (derivationStepZipperDown!2212 (h!74585 (exprs!7074 lt!2532855)) (Context!13149 (t!382040 (exprs!7074 lt!2532855))) (h!74584 s!7408)))))

(declare-fun b!7056541 () Bool)

(assert (=> b!7056541 (= e!4242275 call!641049)))

(assert (= (and d!2205269 res!2880878) b!7056537))

(assert (= (and d!2205269 c!1314735) b!7056540))

(assert (= (and d!2205269 (not c!1314735)) b!7056539))

(assert (= (and b!7056539 c!1314736) b!7056541))

(assert (= (and b!7056539 (not c!1314736)) b!7056538))

(assert (= (or b!7056540 b!7056541) bm!641044))

(declare-fun m!7774670 () Bool)

(assert (=> b!7056537 m!7774670))

(declare-fun m!7774672 () Bool)

(assert (=> b!7056540 m!7774672))

(declare-fun m!7774674 () Bool)

(assert (=> bm!641044 m!7774674))

(assert (=> b!7056432 d!2205269))

(declare-fun bs!1877182 () Bool)

(declare-fun d!2205271 () Bool)

(assert (= bs!1877182 (and d!2205271 b!7056438)))

(declare-fun lambda!420787 () Int)

(assert (=> bs!1877182 (= lambda!420787 lambda!420717)))

(declare-fun bs!1877183 () Bool)

(assert (= bs!1877183 (and d!2205271 d!2205267)))

(assert (=> bs!1877183 (= lambda!420787 lambda!420786)))

(assert (=> d!2205271 (= (inv!86805 lt!2532860) (forall!16525 (exprs!7074 lt!2532860) lambda!420787))))

(declare-fun bs!1877184 () Bool)

(assert (= bs!1877184 d!2205271))

(declare-fun m!7774676 () Bool)

(assert (=> bs!1877184 m!7774676))

(assert (=> b!7056432 d!2205271))

(declare-fun d!2205273 () Bool)

(declare-fun dynLambda!27654 (Int Context!13148) (Set Context!13148))

(assert (=> d!2205273 (= (flatMap!2504 lt!2532853 lambda!420718) (dynLambda!27654 lambda!420718 lt!2532855))))

(declare-fun lt!2533020 () Unit!161829)

(declare-fun choose!53840 ((Set Context!13148) Context!13148 Int) Unit!161829)

(assert (=> d!2205273 (= lt!2533020 (choose!53840 lt!2532853 lt!2532855 lambda!420718))))

(assert (=> d!2205273 (= lt!2532853 (set.insert lt!2532855 (as set.empty (Set Context!13148))))))

(assert (=> d!2205273 (= (lemmaFlatMapOnSingletonSet!2013 lt!2532853 lt!2532855 lambda!420718) lt!2533020)))

(declare-fun b_lambda!268771 () Bool)

(assert (=> (not b_lambda!268771) (not d!2205273)))

(declare-fun bs!1877185 () Bool)

(assert (= bs!1877185 d!2205273))

(assert (=> bs!1877185 m!7774552))

(declare-fun m!7774678 () Bool)

(assert (=> bs!1877185 m!7774678))

(declare-fun m!7774680 () Bool)

(assert (=> bs!1877185 m!7774680))

(assert (=> bs!1877185 m!7774550))

(assert (=> b!7056432 d!2205273))

(declare-fun d!2205275 () Bool)

(declare-fun dynLambda!27655 (Int Context!13148) Context!13148)

(assert (=> d!2205275 (= (map!15900 lt!2532853 lambda!420716) (set.insert (dynLambda!27655 lambda!420716 lt!2532855) (as set.empty (Set Context!13148))))))

(declare-fun lt!2533023 () Unit!161829)

(declare-fun choose!53841 ((Set Context!13148) Context!13148 Int) Unit!161829)

(assert (=> d!2205275 (= lt!2533023 (choose!53841 lt!2532853 lt!2532855 lambda!420716))))

(assert (=> d!2205275 (= lt!2532853 (set.insert lt!2532855 (as set.empty (Set Context!13148))))))

(assert (=> d!2205275 (= (lemmaMapOnSingletonSet!395 lt!2532853 lt!2532855 lambda!420716) lt!2533023)))

(declare-fun b_lambda!268773 () Bool)

(assert (=> (not b_lambda!268773) (not d!2205275)))

(declare-fun bs!1877186 () Bool)

(assert (= bs!1877186 d!2205275))

(declare-fun m!7774682 () Bool)

(assert (=> bs!1877186 m!7774682))

(declare-fun m!7774684 () Bool)

(assert (=> bs!1877186 m!7774684))

(declare-fun m!7774686 () Bool)

(assert (=> bs!1877186 m!7774686))

(assert (=> bs!1877186 m!7774684))

(assert (=> bs!1877186 m!7774550))

(assert (=> bs!1877186 m!7774558))

(assert (=> b!7056432 d!2205275))

(declare-fun d!2205277 () Bool)

(assert (=> d!2205277 (forall!16525 (++!15661 lt!2532861 (exprs!7074 ct2!306)) lambda!420717)))

(declare-fun lt!2533026 () Unit!161829)

(declare-fun choose!53842 (List!68261 List!68261 Int) Unit!161829)

(assert (=> d!2205277 (= lt!2533026 (choose!53842 lt!2532861 (exprs!7074 ct2!306) lambda!420717))))

(assert (=> d!2205277 (forall!16525 lt!2532861 lambda!420717)))

(assert (=> d!2205277 (= (lemmaConcatPreservesForall!889 lt!2532861 (exprs!7074 ct2!306) lambda!420717) lt!2533026)))

(declare-fun bs!1877187 () Bool)

(assert (= bs!1877187 d!2205277))

(assert (=> bs!1877187 m!7774524))

(assert (=> bs!1877187 m!7774524))

(declare-fun m!7774688 () Bool)

(assert (=> bs!1877187 m!7774688))

(declare-fun m!7774690 () Bool)

(assert (=> bs!1877187 m!7774690))

(declare-fun m!7774692 () Bool)

(assert (=> bs!1877187 m!7774692))

(assert (=> b!7056432 d!2205277))

(declare-fun b!7056551 () Bool)

(declare-fun e!4242282 () List!68261)

(assert (=> b!7056551 (= e!4242282 (Cons!68137 (h!74585 lt!2532861) (++!15661 (t!382040 lt!2532861) (exprs!7074 ct2!306))))))

(declare-fun d!2205279 () Bool)

(declare-fun e!4242281 () Bool)

(assert (=> d!2205279 e!4242281))

(declare-fun res!2880884 () Bool)

(assert (=> d!2205279 (=> (not res!2880884) (not e!4242281))))

(declare-fun lt!2533029 () List!68261)

(declare-fun content!13693 (List!68261) (Set Regex!17578))

(assert (=> d!2205279 (= res!2880884 (= (content!13693 lt!2533029) (set.union (content!13693 lt!2532861) (content!13693 (exprs!7074 ct2!306)))))))

(assert (=> d!2205279 (= lt!2533029 e!4242282)))

(declare-fun c!1314739 () Bool)

(assert (=> d!2205279 (= c!1314739 (is-Nil!68137 lt!2532861))))

(assert (=> d!2205279 (= (++!15661 lt!2532861 (exprs!7074 ct2!306)) lt!2533029)))

(declare-fun b!7056550 () Bool)

(assert (=> b!7056550 (= e!4242282 (exprs!7074 ct2!306))))

(declare-fun b!7056553 () Bool)

(assert (=> b!7056553 (= e!4242281 (or (not (= (exprs!7074 ct2!306) Nil!68137)) (= lt!2533029 lt!2532861)))))

(declare-fun b!7056552 () Bool)

(declare-fun res!2880883 () Bool)

(assert (=> b!7056552 (=> (not res!2880883) (not e!4242281))))

(declare-fun size!41156 (List!68261) Int)

(assert (=> b!7056552 (= res!2880883 (= (size!41156 lt!2533029) (+ (size!41156 lt!2532861) (size!41156 (exprs!7074 ct2!306)))))))

(assert (= (and d!2205279 c!1314739) b!7056550))

(assert (= (and d!2205279 (not c!1314739)) b!7056551))

(assert (= (and d!2205279 res!2880884) b!7056552))

(assert (= (and b!7056552 res!2880883) b!7056553))

(declare-fun m!7774694 () Bool)

(assert (=> b!7056551 m!7774694))

(declare-fun m!7774696 () Bool)

(assert (=> d!2205279 m!7774696))

(declare-fun m!7774698 () Bool)

(assert (=> d!2205279 m!7774698))

(declare-fun m!7774700 () Bool)

(assert (=> d!2205279 m!7774700))

(declare-fun m!7774702 () Bool)

(assert (=> b!7056552 m!7774702))

(declare-fun m!7774704 () Bool)

(assert (=> b!7056552 m!7774704))

(declare-fun m!7774706 () Bool)

(assert (=> b!7056552 m!7774706))

(assert (=> b!7056432 d!2205279))

(declare-fun d!2205281 () Bool)

(declare-fun choose!53843 ((Set Context!13148) Int) (Set Context!13148))

(assert (=> d!2205281 (= (flatMap!2504 lt!2532853 lambda!420718) (choose!53843 lt!2532853 lambda!420718))))

(declare-fun bs!1877188 () Bool)

(assert (= bs!1877188 d!2205281))

(declare-fun m!7774708 () Bool)

(assert (=> bs!1877188 m!7774708))

(assert (=> b!7056432 d!2205281))

(declare-fun d!2205283 () Bool)

(declare-fun choose!53844 ((Set Context!13148) Int) (Set Context!13148))

(assert (=> d!2205283 (= (map!15900 lt!2532853 lambda!420716) (choose!53844 lt!2532853 lambda!420716))))

(declare-fun bs!1877189 () Bool)

(assert (= bs!1877189 d!2205283))

(declare-fun m!7774710 () Bool)

(assert (=> bs!1877189 m!7774710))

(assert (=> b!7056432 d!2205283))

(declare-fun d!2205285 () Bool)

(declare-fun c!1314740 () Bool)

(assert (=> d!2205285 (= c!1314740 (isEmpty!39743 (t!382039 s!7408)))))

(declare-fun e!4242283 () Bool)

(assert (=> d!2205285 (= (matchZipper!3118 lt!2532849 (t!382039 s!7408)) e!4242283)))

(declare-fun b!7056554 () Bool)

(assert (=> b!7056554 (= e!4242283 (nullableZipper!2662 lt!2532849))))

(declare-fun b!7056555 () Bool)

(assert (=> b!7056555 (= e!4242283 (matchZipper!3118 (derivationStepZipper!3028 lt!2532849 (head!14363 (t!382039 s!7408))) (tail!13715 (t!382039 s!7408))))))

(assert (= (and d!2205285 c!1314740) b!7056554))

(assert (= (and d!2205285 (not c!1314740)) b!7056555))

(declare-fun m!7774712 () Bool)

(assert (=> d!2205285 m!7774712))

(declare-fun m!7774714 () Bool)

(assert (=> b!7056554 m!7774714))

(declare-fun m!7774716 () Bool)

(assert (=> b!7056555 m!7774716))

(assert (=> b!7056555 m!7774716))

(declare-fun m!7774718 () Bool)

(assert (=> b!7056555 m!7774718))

(declare-fun m!7774720 () Bool)

(assert (=> b!7056555 m!7774720))

(assert (=> b!7056555 m!7774718))

(assert (=> b!7056555 m!7774720))

(declare-fun m!7774722 () Bool)

(assert (=> b!7056555 m!7774722))

(assert (=> b!7056442 d!2205285))

(assert (=> b!7056442 d!2205277))

(assert (=> b!7056433 d!2205285))

(assert (=> b!7056433 d!2205277))

(assert (=> b!7056445 d!2205279))

(assert (=> b!7056445 d!2205277))

(declare-fun call!641066 () (Set Context!13148))

(declare-fun bm!641057 () Bool)

(declare-fun c!1314753 () Bool)

(declare-fun c!1314751 () Bool)

(declare-fun c!1314752 () Bool)

(declare-fun call!641062 () List!68261)

(assert (=> bm!641057 (= call!641066 (derivationStepZipperDown!2212 (ite c!1314753 (regTwo!35669 (h!74585 (exprs!7074 lt!2532873))) (ite c!1314751 (regTwo!35668 (h!74585 (exprs!7074 lt!2532873))) (ite c!1314752 (regOne!35668 (h!74585 (exprs!7074 lt!2532873))) (reg!17907 (h!74585 (exprs!7074 lt!2532873)))))) (ite (or c!1314753 c!1314751) lt!2532860 (Context!13149 call!641062)) (h!74584 s!7408)))))

(declare-fun call!641065 () List!68261)

(declare-fun bm!641058 () Bool)

(declare-fun $colon$colon!2626 (List!68261 Regex!17578) List!68261)

(assert (=> bm!641058 (= call!641065 ($colon$colon!2626 (exprs!7074 lt!2532860) (ite (or c!1314751 c!1314752) (regTwo!35668 (h!74585 (exprs!7074 lt!2532873))) (h!74585 (exprs!7074 lt!2532873)))))))

(declare-fun b!7056578 () Bool)

(declare-fun e!4242301 () Bool)

(assert (=> b!7056578 (= c!1314751 e!4242301)))

(declare-fun res!2880887 () Bool)

(assert (=> b!7056578 (=> (not res!2880887) (not e!4242301))))

(assert (=> b!7056578 (= res!2880887 (is-Concat!26423 (h!74585 (exprs!7074 lt!2532873))))))

(declare-fun e!4242300 () (Set Context!13148))

(declare-fun e!4242296 () (Set Context!13148))

(assert (=> b!7056578 (= e!4242300 e!4242296)))

(declare-fun b!7056579 () Bool)

(declare-fun e!4242298 () (Set Context!13148))

(declare-fun call!641063 () (Set Context!13148))

(assert (=> b!7056579 (= e!4242298 call!641063)))

(declare-fun bm!641059 () Bool)

(assert (=> bm!641059 (= call!641062 call!641065)))

(declare-fun b!7056581 () Bool)

(declare-fun e!4242299 () (Set Context!13148))

(assert (=> b!7056581 (= e!4242299 call!641063)))

(declare-fun b!7056582 () Bool)

(declare-fun call!641064 () (Set Context!13148))

(assert (=> b!7056582 (= e!4242300 (set.union call!641064 call!641066))))

(declare-fun b!7056583 () Bool)

(declare-fun call!641067 () (Set Context!13148))

(assert (=> b!7056583 (= e!4242296 (set.union call!641064 call!641067))))

(declare-fun bm!641060 () Bool)

(assert (=> bm!641060 (= call!641064 (derivationStepZipperDown!2212 (ite c!1314753 (regOne!35669 (h!74585 (exprs!7074 lt!2532873))) (regOne!35668 (h!74585 (exprs!7074 lt!2532873)))) (ite c!1314753 lt!2532860 (Context!13149 call!641065)) (h!74584 s!7408)))))

(declare-fun bm!641061 () Bool)

(assert (=> bm!641061 (= call!641063 call!641067)))

(declare-fun b!7056584 () Bool)

(declare-fun c!1314754 () Bool)

(assert (=> b!7056584 (= c!1314754 (is-Star!17578 (h!74585 (exprs!7074 lt!2532873))))))

(assert (=> b!7056584 (= e!4242299 e!4242298)))

(declare-fun b!7056585 () Bool)

(assert (=> b!7056585 (= e!4242301 (nullable!7261 (regOne!35668 (h!74585 (exprs!7074 lt!2532873)))))))

(declare-fun d!2205287 () Bool)

(declare-fun c!1314755 () Bool)

(assert (=> d!2205287 (= c!1314755 (and (is-ElementMatch!17578 (h!74585 (exprs!7074 lt!2532873))) (= (c!1314711 (h!74585 (exprs!7074 lt!2532873))) (h!74584 s!7408))))))

(declare-fun e!4242297 () (Set Context!13148))

(assert (=> d!2205287 (= (derivationStepZipperDown!2212 (h!74585 (exprs!7074 lt!2532873)) lt!2532860 (h!74584 s!7408)) e!4242297)))

(declare-fun b!7056580 () Bool)

(assert (=> b!7056580 (= e!4242298 (as set.empty (Set Context!13148)))))

(declare-fun b!7056586 () Bool)

(assert (=> b!7056586 (= e!4242297 (set.insert lt!2532860 (as set.empty (Set Context!13148))))))

(declare-fun b!7056587 () Bool)

(assert (=> b!7056587 (= e!4242296 e!4242299)))

(assert (=> b!7056587 (= c!1314752 (is-Concat!26423 (h!74585 (exprs!7074 lt!2532873))))))

(declare-fun bm!641062 () Bool)

(assert (=> bm!641062 (= call!641067 call!641066)))

(declare-fun b!7056588 () Bool)

(assert (=> b!7056588 (= e!4242297 e!4242300)))

(assert (=> b!7056588 (= c!1314753 (is-Union!17578 (h!74585 (exprs!7074 lt!2532873))))))

(assert (= (and d!2205287 c!1314755) b!7056586))

(assert (= (and d!2205287 (not c!1314755)) b!7056588))

(assert (= (and b!7056588 c!1314753) b!7056582))

(assert (= (and b!7056588 (not c!1314753)) b!7056578))

(assert (= (and b!7056578 res!2880887) b!7056585))

(assert (= (and b!7056578 c!1314751) b!7056583))

(assert (= (and b!7056578 (not c!1314751)) b!7056587))

(assert (= (and b!7056587 c!1314752) b!7056581))

(assert (= (and b!7056587 (not c!1314752)) b!7056584))

(assert (= (and b!7056584 c!1314754) b!7056579))

(assert (= (and b!7056584 (not c!1314754)) b!7056580))

(assert (= (or b!7056581 b!7056579) bm!641059))

(assert (= (or b!7056581 b!7056579) bm!641061))

(assert (= (or b!7056583 bm!641061) bm!641062))

(assert (= (or b!7056583 bm!641059) bm!641058))

(assert (= (or b!7056582 b!7056583) bm!641060))

(assert (= (or b!7056582 bm!641062) bm!641057))

(declare-fun m!7774724 () Bool)

(assert (=> bm!641060 m!7774724))

(declare-fun m!7774726 () Bool)

(assert (=> bm!641057 m!7774726))

(declare-fun m!7774728 () Bool)

(assert (=> b!7056585 m!7774728))

(declare-fun m!7774730 () Bool)

(assert (=> bm!641058 m!7774730))

(assert (=> b!7056586 m!7774534))

(assert (=> b!7056445 d!2205287))

(declare-fun b!7056589 () Bool)

(declare-fun e!4242304 () Bool)

(assert (=> b!7056589 (= e!4242304 (nullable!7261 (h!74585 (exprs!7074 lt!2532860))))))

(declare-fun b!7056590 () Bool)

(declare-fun e!4242303 () (Set Context!13148))

(assert (=> b!7056590 (= e!4242303 (as set.empty (Set Context!13148)))))

(declare-fun b!7056591 () Bool)

(declare-fun e!4242302 () (Set Context!13148))

(assert (=> b!7056591 (= e!4242302 e!4242303)))

(declare-fun c!1314757 () Bool)

(assert (=> b!7056591 (= c!1314757 (is-Cons!68137 (exprs!7074 lt!2532860)))))

(declare-fun call!641068 () (Set Context!13148))

(declare-fun b!7056592 () Bool)

(assert (=> b!7056592 (= e!4242302 (set.union call!641068 (derivationStepZipperUp!2162 (Context!13149 (t!382040 (exprs!7074 lt!2532860))) (h!74584 s!7408))))))

(declare-fun d!2205289 () Bool)

(declare-fun c!1314756 () Bool)

(assert (=> d!2205289 (= c!1314756 e!4242304)))

(declare-fun res!2880888 () Bool)

(assert (=> d!2205289 (=> (not res!2880888) (not e!4242304))))

(assert (=> d!2205289 (= res!2880888 (is-Cons!68137 (exprs!7074 lt!2532860)))))

(assert (=> d!2205289 (= (derivationStepZipperUp!2162 lt!2532860 (h!74584 s!7408)) e!4242302)))

(declare-fun bm!641063 () Bool)

(assert (=> bm!641063 (= call!641068 (derivationStepZipperDown!2212 (h!74585 (exprs!7074 lt!2532860)) (Context!13149 (t!382040 (exprs!7074 lt!2532860))) (h!74584 s!7408)))))

(declare-fun b!7056593 () Bool)

(assert (=> b!7056593 (= e!4242303 call!641068)))

(assert (= (and d!2205289 res!2880888) b!7056589))

(assert (= (and d!2205289 c!1314756) b!7056592))

(assert (= (and d!2205289 (not c!1314756)) b!7056591))

(assert (= (and b!7056591 c!1314757) b!7056593))

(assert (= (and b!7056591 (not c!1314757)) b!7056590))

(assert (= (or b!7056592 b!7056593) bm!641063))

(declare-fun m!7774732 () Bool)

(assert (=> b!7056589 m!7774732))

(declare-fun m!7774734 () Bool)

(assert (=> b!7056592 m!7774734))

(declare-fun m!7774736 () Bool)

(assert (=> bm!641063 m!7774736))

(assert (=> b!7056445 d!2205289))

(declare-fun d!2205291 () Bool)

(assert (=> d!2205291 (= (flatMap!2504 lt!2532840 lambda!420718) (dynLambda!27654 lambda!420718 lt!2532859))))

(declare-fun lt!2533030 () Unit!161829)

(assert (=> d!2205291 (= lt!2533030 (choose!53840 lt!2532840 lt!2532859 lambda!420718))))

(assert (=> d!2205291 (= lt!2532840 (set.insert lt!2532859 (as set.empty (Set Context!13148))))))

(assert (=> d!2205291 (= (lemmaFlatMapOnSingletonSet!2013 lt!2532840 lt!2532859 lambda!420718) lt!2533030)))

(declare-fun b_lambda!268775 () Bool)

(assert (=> (not b_lambda!268775) (not d!2205291)))

(declare-fun bs!1877190 () Bool)

(assert (= bs!1877190 d!2205291))

(assert (=> bs!1877190 m!7774516))

(declare-fun m!7774738 () Bool)

(assert (=> bs!1877190 m!7774738))

(declare-fun m!7774740 () Bool)

(assert (=> bs!1877190 m!7774740))

(assert (=> bs!1877190 m!7774476))

(assert (=> b!7056426 d!2205291))

(declare-fun d!2205293 () Bool)

(assert (=> d!2205293 (forall!16525 (++!15661 (exprs!7074 lt!2532873) (exprs!7074 ct2!306)) lambda!420717)))

(declare-fun lt!2533031 () Unit!161829)

(assert (=> d!2205293 (= lt!2533031 (choose!53842 (exprs!7074 lt!2532873) (exprs!7074 ct2!306) lambda!420717))))

(assert (=> d!2205293 (forall!16525 (exprs!7074 lt!2532873) lambda!420717)))

(assert (=> d!2205293 (= (lemmaConcatPreservesForall!889 (exprs!7074 lt!2532873) (exprs!7074 ct2!306) lambda!420717) lt!2533031)))

(declare-fun bs!1877191 () Bool)

(assert (= bs!1877191 d!2205293))

(assert (=> bs!1877191 m!7774482))

(assert (=> bs!1877191 m!7774482))

(declare-fun m!7774742 () Bool)

(assert (=> bs!1877191 m!7774742))

(declare-fun m!7774744 () Bool)

(assert (=> bs!1877191 m!7774744))

(declare-fun m!7774746 () Bool)

(assert (=> bs!1877191 m!7774746))

(assert (=> b!7056426 d!2205293))

(declare-fun bs!1877192 () Bool)

(declare-fun d!2205295 () Bool)

(assert (= bs!1877192 (and d!2205295 b!7056426)))

(declare-fun lambda!420790 () Int)

(assert (=> bs!1877192 (= lambda!420790 lambda!420718)))

(assert (=> d!2205295 true))

(assert (=> d!2205295 (= (derivationStepZipper!3028 lt!2532840 (h!74584 s!7408)) (flatMap!2504 lt!2532840 lambda!420790))))

(declare-fun bs!1877193 () Bool)

(assert (= bs!1877193 d!2205295))

(declare-fun m!7774748 () Bool)

(assert (=> bs!1877193 m!7774748))

(assert (=> b!7056426 d!2205295))

(declare-fun b!7056596 () Bool)

(declare-fun e!4242307 () Bool)

(assert (=> b!7056596 (= e!4242307 (nullable!7261 (h!74585 (exprs!7074 lt!2532859))))))

(declare-fun b!7056597 () Bool)

(declare-fun e!4242306 () (Set Context!13148))

(assert (=> b!7056597 (= e!4242306 (as set.empty (Set Context!13148)))))

(declare-fun b!7056598 () Bool)

(declare-fun e!4242305 () (Set Context!13148))

(assert (=> b!7056598 (= e!4242305 e!4242306)))

(declare-fun c!1314761 () Bool)

(assert (=> b!7056598 (= c!1314761 (is-Cons!68137 (exprs!7074 lt!2532859)))))

(declare-fun b!7056599 () Bool)

(declare-fun call!641069 () (Set Context!13148))

(assert (=> b!7056599 (= e!4242305 (set.union call!641069 (derivationStepZipperUp!2162 (Context!13149 (t!382040 (exprs!7074 lt!2532859))) (h!74584 s!7408))))))

(declare-fun d!2205297 () Bool)

(declare-fun c!1314760 () Bool)

(assert (=> d!2205297 (= c!1314760 e!4242307)))

(declare-fun res!2880889 () Bool)

(assert (=> d!2205297 (=> (not res!2880889) (not e!4242307))))

(assert (=> d!2205297 (= res!2880889 (is-Cons!68137 (exprs!7074 lt!2532859)))))

(assert (=> d!2205297 (= (derivationStepZipperUp!2162 lt!2532859 (h!74584 s!7408)) e!4242305)))

(declare-fun bm!641064 () Bool)

(assert (=> bm!641064 (= call!641069 (derivationStepZipperDown!2212 (h!74585 (exprs!7074 lt!2532859)) (Context!13149 (t!382040 (exprs!7074 lt!2532859))) (h!74584 s!7408)))))

(declare-fun b!7056600 () Bool)

(assert (=> b!7056600 (= e!4242306 call!641069)))

(assert (= (and d!2205297 res!2880889) b!7056596))

(assert (= (and d!2205297 c!1314760) b!7056599))

(assert (= (and d!2205297 (not c!1314760)) b!7056598))

(assert (= (and b!7056598 c!1314761) b!7056600))

(assert (= (and b!7056598 (not c!1314761)) b!7056597))

(assert (= (or b!7056599 b!7056600) bm!641064))

(declare-fun m!7774750 () Bool)

(assert (=> b!7056596 m!7774750))

(declare-fun m!7774752 () Bool)

(assert (=> b!7056599 m!7774752))

(declare-fun m!7774754 () Bool)

(assert (=> bm!641064 m!7774754))

(assert (=> b!7056426 d!2205297))

(declare-fun d!2205299 () Bool)

(assert (=> d!2205299 (= (flatMap!2504 lt!2532840 lambda!420718) (choose!53843 lt!2532840 lambda!420718))))

(declare-fun bs!1877194 () Bool)

(assert (= bs!1877194 d!2205299))

(declare-fun m!7774756 () Bool)

(assert (=> bs!1877194 m!7774756))

(assert (=> b!7056426 d!2205299))

(declare-fun d!2205301 () Bool)

(assert (=> d!2205301 (= (isEmpty!39741 (exprs!7074 lt!2532873)) (is-Nil!68137 (exprs!7074 lt!2532873)))))

(assert (=> b!7056436 d!2205301))

(declare-fun d!2205303 () Bool)

(declare-fun c!1314762 () Bool)

(assert (=> d!2205303 (= c!1314762 (isEmpty!39743 s!7408))))

(declare-fun e!4242308 () Bool)

(assert (=> d!2205303 (= (matchZipper!3118 lt!2532843 s!7408) e!4242308)))

(declare-fun b!7056601 () Bool)

(assert (=> b!7056601 (= e!4242308 (nullableZipper!2662 lt!2532843))))

(declare-fun b!7056602 () Bool)

(assert (=> b!7056602 (= e!4242308 (matchZipper!3118 (derivationStepZipper!3028 lt!2532843 (head!14363 s!7408)) (tail!13715 s!7408)))))

(assert (= (and d!2205303 c!1314762) b!7056601))

(assert (= (and d!2205303 (not c!1314762)) b!7056602))

(assert (=> d!2205303 m!7774654))

(declare-fun m!7774758 () Bool)

(assert (=> b!7056601 m!7774758))

(assert (=> b!7056602 m!7774658))

(assert (=> b!7056602 m!7774658))

(declare-fun m!7774760 () Bool)

(assert (=> b!7056602 m!7774760))

(assert (=> b!7056602 m!7774662))

(assert (=> b!7056602 m!7774760))

(assert (=> b!7056602 m!7774662))

(declare-fun m!7774762 () Bool)

(assert (=> b!7056602 m!7774762))

(assert (=> b!7056427 d!2205303))

(assert (=> b!7056427 d!2205277))

(declare-fun d!2205305 () Bool)

(declare-fun nullableFct!2779 (Regex!17578) Bool)

(assert (=> d!2205305 (= (nullable!7261 (h!74585 (exprs!7074 lt!2532873))) (nullableFct!2779 (h!74585 (exprs!7074 lt!2532873))))))

(declare-fun bs!1877195 () Bool)

(assert (= bs!1877195 d!2205305))

(declare-fun m!7774764 () Bool)

(assert (=> bs!1877195 m!7774764))

(assert (=> b!7056437 d!2205305))

(declare-fun d!2205307 () Bool)

(assert (=> d!2205307 (= (tail!13713 (exprs!7074 lt!2532873)) (t!382040 (exprs!7074 lt!2532873)))))

(assert (=> b!7056437 d!2205307))

(assert (=> b!7056428 d!2205293))

(declare-fun b!7056604 () Bool)

(declare-fun e!4242310 () List!68261)

(assert (=> b!7056604 (= e!4242310 (Cons!68137 (h!74585 (exprs!7074 lt!2532873)) (++!15661 (t!382040 (exprs!7074 lt!2532873)) (exprs!7074 ct2!306))))))

(declare-fun d!2205309 () Bool)

(declare-fun e!4242309 () Bool)

(assert (=> d!2205309 e!4242309))

(declare-fun res!2880891 () Bool)

(assert (=> d!2205309 (=> (not res!2880891) (not e!4242309))))

(declare-fun lt!2533032 () List!68261)

(assert (=> d!2205309 (= res!2880891 (= (content!13693 lt!2533032) (set.union (content!13693 (exprs!7074 lt!2532873)) (content!13693 (exprs!7074 ct2!306)))))))

(assert (=> d!2205309 (= lt!2533032 e!4242310)))

(declare-fun c!1314763 () Bool)

(assert (=> d!2205309 (= c!1314763 (is-Nil!68137 (exprs!7074 lt!2532873)))))

(assert (=> d!2205309 (= (++!15661 (exprs!7074 lt!2532873) (exprs!7074 ct2!306)) lt!2533032)))

(declare-fun b!7056603 () Bool)

(assert (=> b!7056603 (= e!4242310 (exprs!7074 ct2!306))))

(declare-fun b!7056606 () Bool)

(assert (=> b!7056606 (= e!4242309 (or (not (= (exprs!7074 ct2!306) Nil!68137)) (= lt!2533032 (exprs!7074 lt!2532873))))))

(declare-fun b!7056605 () Bool)

(declare-fun res!2880890 () Bool)

(assert (=> b!7056605 (=> (not res!2880890) (not e!4242309))))

(assert (=> b!7056605 (= res!2880890 (= (size!41156 lt!2533032) (+ (size!41156 (exprs!7074 lt!2532873)) (size!41156 (exprs!7074 ct2!306)))))))

(assert (= (and d!2205309 c!1314763) b!7056603))

(assert (= (and d!2205309 (not c!1314763)) b!7056604))

(assert (= (and d!2205309 res!2880891) b!7056605))

(assert (= (and b!7056605 res!2880890) b!7056606))

(declare-fun m!7774766 () Bool)

(assert (=> b!7056604 m!7774766))

(declare-fun m!7774768 () Bool)

(assert (=> d!2205309 m!7774768))

(declare-fun m!7774770 () Bool)

(assert (=> d!2205309 m!7774770))

(assert (=> d!2205309 m!7774700))

(declare-fun m!7774772 () Bool)

(assert (=> b!7056605 m!7774772))

(declare-fun m!7774774 () Bool)

(assert (=> b!7056605 m!7774774))

(assert (=> b!7056605 m!7774706))

(assert (=> b!7056438 d!2205309))

(assert (=> b!7056438 d!2205293))

(declare-fun d!2205311 () Bool)

(declare-fun e!4242313 () Bool)

(assert (=> d!2205311 e!4242313))

(declare-fun res!2880894 () Bool)

(assert (=> d!2205311 (=> (not res!2880894) (not e!4242313))))

(declare-fun lt!2533035 () Context!13148)

(assert (=> d!2205311 (= res!2880894 (= lt!2532871 (dynLambda!27655 lambda!420716 lt!2533035)))))

(declare-fun choose!53845 ((Set Context!13148) Int Context!13148) Context!13148)

(assert (=> d!2205311 (= lt!2533035 (choose!53845 z1!570 lambda!420716 lt!2532871))))

(assert (=> d!2205311 (set.member lt!2532871 (map!15900 z1!570 lambda!420716))))

(assert (=> d!2205311 (= (mapPost2!407 z1!570 lambda!420716 lt!2532871) lt!2533035)))

(declare-fun b!7056610 () Bool)

(assert (=> b!7056610 (= e!4242313 (set.member lt!2533035 z1!570))))

(assert (= (and d!2205311 res!2880894) b!7056610))

(declare-fun b_lambda!268777 () Bool)

(assert (=> (not b_lambda!268777) (not d!2205311)))

(declare-fun m!7774776 () Bool)

(assert (=> d!2205311 m!7774776))

(declare-fun m!7774778 () Bool)

(assert (=> d!2205311 m!7774778))

(declare-fun m!7774780 () Bool)

(assert (=> d!2205311 m!7774780))

(declare-fun m!7774782 () Bool)

(assert (=> d!2205311 m!7774782))

(declare-fun m!7774784 () Bool)

(assert (=> b!7056610 m!7774784))

(assert (=> b!7056438 d!2205311))

(assert (=> b!7056429 d!2205285))

(declare-fun d!2205313 () Bool)

(declare-fun e!4242316 () Bool)

(assert (=> d!2205313 e!4242316))

(declare-fun res!2880897 () Bool)

(assert (=> d!2205313 (=> (not res!2880897) (not e!4242316))))

(declare-fun lt!2533038 () List!68262)

(declare-fun noDuplicate!2693 (List!68262) Bool)

(assert (=> d!2205313 (= res!2880897 (noDuplicate!2693 lt!2533038))))

(declare-fun choose!53846 ((Set Context!13148)) List!68262)

(assert (=> d!2205313 (= lt!2533038 (choose!53846 lt!2532872))))

(assert (=> d!2205313 (= (toList!10919 lt!2532872) lt!2533038)))

(declare-fun b!7056613 () Bool)

(declare-fun content!13694 (List!68262) (Set Context!13148))

(assert (=> b!7056613 (= e!4242316 (= (content!13694 lt!2533038) lt!2532872))))

(assert (= (and d!2205313 res!2880897) b!7056613))

(declare-fun m!7774786 () Bool)

(assert (=> d!2205313 m!7774786))

(declare-fun m!7774788 () Bool)

(assert (=> d!2205313 m!7774788))

(declare-fun m!7774790 () Bool)

(assert (=> b!7056613 m!7774790))

(assert (=> b!7056439 d!2205313))

(declare-fun bs!1877196 () Bool)

(declare-fun d!2205315 () Bool)

(assert (= bs!1877196 (and d!2205315 b!7056439)))

(declare-fun lambda!420793 () Int)

(assert (=> bs!1877196 (not (= lambda!420793 lambda!420715))))

(assert (=> d!2205315 true))

(declare-fun order!28329 () Int)

(declare-fun dynLambda!27656 (Int Int) Int)

(assert (=> d!2205315 (< (dynLambda!27656 order!28329 lambda!420715) (dynLambda!27656 order!28329 lambda!420793))))

(declare-fun forall!16526 (List!68262 Int) Bool)

(assert (=> d!2205315 (= (exists!3571 lt!2532869 lambda!420715) (not (forall!16526 lt!2532869 lambda!420793)))))

(declare-fun bs!1877197 () Bool)

(assert (= bs!1877197 d!2205315))

(declare-fun m!7774792 () Bool)

(assert (=> bs!1877197 m!7774792))

(assert (=> b!7056439 d!2205315))

(declare-fun bs!1877198 () Bool)

(declare-fun d!2205317 () Bool)

(assert (= bs!1877198 (and d!2205317 b!7056439)))

(declare-fun lambda!420796 () Int)

(assert (=> bs!1877198 (= lambda!420796 lambda!420715)))

(declare-fun bs!1877199 () Bool)

(assert (= bs!1877199 (and d!2205317 d!2205315)))

(assert (=> bs!1877199 (not (= lambda!420796 lambda!420793))))

(assert (=> d!2205317 true))

(assert (=> d!2205317 (exists!3571 lt!2532869 lambda!420796)))

(declare-fun lt!2533041 () Unit!161829)

(declare-fun choose!53847 (List!68262 List!68260) Unit!161829)

(assert (=> d!2205317 (= lt!2533041 (choose!53847 lt!2532869 s!7408))))

(assert (=> d!2205317 (matchZipper!3118 (content!13694 lt!2532869) s!7408)))

(assert (=> d!2205317 (= (lemmaZipperMatchesExistsMatchingContext!499 lt!2532869 s!7408) lt!2533041)))

(declare-fun bs!1877200 () Bool)

(assert (= bs!1877200 d!2205317))

(declare-fun m!7774794 () Bool)

(assert (=> bs!1877200 m!7774794))

(declare-fun m!7774796 () Bool)

(assert (=> bs!1877200 m!7774796))

(declare-fun m!7774798 () Bool)

(assert (=> bs!1877200 m!7774798))

(assert (=> bs!1877200 m!7774798))

(declare-fun m!7774800 () Bool)

(assert (=> bs!1877200 m!7774800))

(assert (=> b!7056439 d!2205317))

(declare-fun d!2205319 () Bool)

(declare-fun e!4242319 () Bool)

(assert (=> d!2205319 e!4242319))

(declare-fun res!2880901 () Bool)

(assert (=> d!2205319 (=> (not res!2880901) (not e!4242319))))

(declare-fun lt!2533044 () Context!13148)

(declare-fun dynLambda!27657 (Int Context!13148) Bool)

(assert (=> d!2205319 (= res!2880901 (dynLambda!27657 lambda!420715 lt!2533044))))

(declare-fun getWitness!1647 (List!68262 Int) Context!13148)

(assert (=> d!2205319 (= lt!2533044 (getWitness!1647 (toList!10919 lt!2532872) lambda!420715))))

(declare-fun exists!3573 ((Set Context!13148) Int) Bool)

(assert (=> d!2205319 (exists!3573 lt!2532872 lambda!420715)))

(assert (=> d!2205319 (= (getWitness!1645 lt!2532872 lambda!420715) lt!2533044)))

(declare-fun b!7056618 () Bool)

(assert (=> b!7056618 (= e!4242319 (set.member lt!2533044 lt!2532872))))

(assert (= (and d!2205319 res!2880901) b!7056618))

(declare-fun b_lambda!268779 () Bool)

(assert (=> (not b_lambda!268779) (not d!2205319)))

(declare-fun m!7774802 () Bool)

(assert (=> d!2205319 m!7774802))

(assert (=> d!2205319 m!7774504))

(assert (=> d!2205319 m!7774504))

(declare-fun m!7774804 () Bool)

(assert (=> d!2205319 m!7774804))

(declare-fun m!7774806 () Bool)

(assert (=> d!2205319 m!7774806))

(declare-fun m!7774808 () Bool)

(assert (=> b!7056618 m!7774808))

(assert (=> b!7056439 d!2205319))

(declare-fun d!2205321 () Bool)

(declare-fun c!1314766 () Bool)

(assert (=> d!2205321 (= c!1314766 (isEmpty!39743 s!7408))))

(declare-fun e!4242320 () Bool)

(assert (=> d!2205321 (= (matchZipper!3118 lt!2532854 s!7408) e!4242320)))

(declare-fun b!7056619 () Bool)

(assert (=> b!7056619 (= e!4242320 (nullableZipper!2662 lt!2532854))))

(declare-fun b!7056620 () Bool)

(assert (=> b!7056620 (= e!4242320 (matchZipper!3118 (derivationStepZipper!3028 lt!2532854 (head!14363 s!7408)) (tail!13715 s!7408)))))

(assert (= (and d!2205321 c!1314766) b!7056619))

(assert (= (and d!2205321 (not c!1314766)) b!7056620))

(assert (=> d!2205321 m!7774654))

(declare-fun m!7774810 () Bool)

(assert (=> b!7056619 m!7774810))

(assert (=> b!7056620 m!7774658))

(assert (=> b!7056620 m!7774658))

(declare-fun m!7774812 () Bool)

(assert (=> b!7056620 m!7774812))

(assert (=> b!7056620 m!7774662))

(assert (=> b!7056620 m!7774812))

(assert (=> b!7056620 m!7774662))

(declare-fun m!7774814 () Bool)

(assert (=> b!7056620 m!7774814))

(assert (=> b!7056439 d!2205321))

(declare-fun bs!1877201 () Bool)

(declare-fun d!2205323 () Bool)

(assert (= bs!1877201 (and d!2205323 b!7056438)))

(declare-fun lambda!420797 () Int)

(assert (=> bs!1877201 (= lambda!420797 lambda!420717)))

(declare-fun bs!1877202 () Bool)

(assert (= bs!1877202 (and d!2205323 d!2205267)))

(assert (=> bs!1877202 (= lambda!420797 lambda!420786)))

(declare-fun bs!1877203 () Bool)

(assert (= bs!1877203 (and d!2205323 d!2205271)))

(assert (=> bs!1877203 (= lambda!420797 lambda!420787)))

(assert (=> d!2205323 (= (inv!86805 setElem!49888) (forall!16525 (exprs!7074 setElem!49888) lambda!420797))))

(declare-fun bs!1877204 () Bool)

(assert (= bs!1877204 d!2205323))

(declare-fun m!7774816 () Bool)

(assert (=> bs!1877204 m!7774816))

(assert (=> setNonEmpty!49888 d!2205323))

(declare-fun d!2205325 () Bool)

(declare-fun c!1314767 () Bool)

(assert (=> d!2205325 (= c!1314767 (isEmpty!39743 (t!382039 s!7408)))))

(declare-fun e!4242321 () Bool)

(assert (=> d!2205325 (= (matchZipper!3118 lt!2532841 (t!382039 s!7408)) e!4242321)))

(declare-fun b!7056621 () Bool)

(assert (=> b!7056621 (= e!4242321 (nullableZipper!2662 lt!2532841))))

(declare-fun b!7056622 () Bool)

(assert (=> b!7056622 (= e!4242321 (matchZipper!3118 (derivationStepZipper!3028 lt!2532841 (head!14363 (t!382039 s!7408))) (tail!13715 (t!382039 s!7408))))))

(assert (= (and d!2205325 c!1314767) b!7056621))

(assert (= (and d!2205325 (not c!1314767)) b!7056622))

(assert (=> d!2205325 m!7774712))

(declare-fun m!7774818 () Bool)

(assert (=> b!7056621 m!7774818))

(assert (=> b!7056622 m!7774716))

(assert (=> b!7056622 m!7774716))

(declare-fun m!7774820 () Bool)

(assert (=> b!7056622 m!7774820))

(assert (=> b!7056622 m!7774720))

(assert (=> b!7056622 m!7774820))

(assert (=> b!7056622 m!7774720))

(declare-fun m!7774822 () Bool)

(assert (=> b!7056622 m!7774822))

(assert (=> b!7056440 d!2205325))

(declare-fun d!2205327 () Bool)

(declare-fun c!1314768 () Bool)

(assert (=> d!2205327 (= c!1314768 (isEmpty!39743 (t!382039 s!7408)))))

(declare-fun e!4242322 () Bool)

(assert (=> d!2205327 (= (matchZipper!3118 lt!2532877 (t!382039 s!7408)) e!4242322)))

(declare-fun b!7056623 () Bool)

(assert (=> b!7056623 (= e!4242322 (nullableZipper!2662 lt!2532877))))

(declare-fun b!7056624 () Bool)

(assert (=> b!7056624 (= e!4242322 (matchZipper!3118 (derivationStepZipper!3028 lt!2532877 (head!14363 (t!382039 s!7408))) (tail!13715 (t!382039 s!7408))))))

(assert (= (and d!2205327 c!1314768) b!7056623))

(assert (= (and d!2205327 (not c!1314768)) b!7056624))

(assert (=> d!2205327 m!7774712))

(declare-fun m!7774824 () Bool)

(assert (=> b!7056623 m!7774824))

(assert (=> b!7056624 m!7774716))

(assert (=> b!7056624 m!7774716))

(declare-fun m!7774826 () Bool)

(assert (=> b!7056624 m!7774826))

(assert (=> b!7056624 m!7774720))

(assert (=> b!7056624 m!7774826))

(assert (=> b!7056624 m!7774720))

(declare-fun m!7774828 () Bool)

(assert (=> b!7056624 m!7774828))

(assert (=> b!7056440 d!2205327))

(declare-fun e!4242325 () Bool)

(declare-fun d!2205329 () Bool)

(assert (=> d!2205329 (= (matchZipper!3118 (set.union lt!2532877 lt!2532849) (t!382039 s!7408)) e!4242325)))

(declare-fun res!2880904 () Bool)

(assert (=> d!2205329 (=> res!2880904 e!4242325)))

(assert (=> d!2205329 (= res!2880904 (matchZipper!3118 lt!2532877 (t!382039 s!7408)))))

(declare-fun lt!2533047 () Unit!161829)

(declare-fun choose!53848 ((Set Context!13148) (Set Context!13148) List!68260) Unit!161829)

(assert (=> d!2205329 (= lt!2533047 (choose!53848 lt!2532877 lt!2532849 (t!382039 s!7408)))))

(assert (=> d!2205329 (= (lemmaZipperConcatMatchesSameAsBothZippers!1591 lt!2532877 lt!2532849 (t!382039 s!7408)) lt!2533047)))

(declare-fun b!7056627 () Bool)

(assert (=> b!7056627 (= e!4242325 (matchZipper!3118 lt!2532849 (t!382039 s!7408)))))

(assert (= (and d!2205329 (not res!2880904)) b!7056627))

(declare-fun m!7774830 () Bool)

(assert (=> d!2205329 m!7774830))

(assert (=> d!2205329 m!7774490))

(declare-fun m!7774832 () Bool)

(assert (=> d!2205329 m!7774832))

(assert (=> b!7056627 m!7774496))

(assert (=> b!7056440 d!2205329))

(assert (=> b!7056440 d!2205277))

(declare-fun d!2205331 () Bool)

(declare-fun c!1314769 () Bool)

(assert (=> d!2205331 (= c!1314769 (isEmpty!39743 (t!382039 s!7408)))))

(declare-fun e!4242326 () Bool)

(assert (=> d!2205331 (= (matchZipper!3118 lt!2532856 (t!382039 s!7408)) e!4242326)))

(declare-fun b!7056628 () Bool)

(assert (=> b!7056628 (= e!4242326 (nullableZipper!2662 lt!2532856))))

(declare-fun b!7056629 () Bool)

(assert (=> b!7056629 (= e!4242326 (matchZipper!3118 (derivationStepZipper!3028 lt!2532856 (head!14363 (t!382039 s!7408))) (tail!13715 (t!382039 s!7408))))))

(assert (= (and d!2205331 c!1314769) b!7056628))

(assert (= (and d!2205331 (not c!1314769)) b!7056629))

(assert (=> d!2205331 m!7774712))

(declare-fun m!7774834 () Bool)

(assert (=> b!7056628 m!7774834))

(assert (=> b!7056629 m!7774716))

(assert (=> b!7056629 m!7774716))

(declare-fun m!7774836 () Bool)

(assert (=> b!7056629 m!7774836))

(assert (=> b!7056629 m!7774720))

(assert (=> b!7056629 m!7774836))

(assert (=> b!7056629 m!7774720))

(declare-fun m!7774838 () Bool)

(assert (=> b!7056629 m!7774838))

(assert (=> b!7056440 d!2205331))

(assert (=> b!7056430 d!2205289))

(declare-fun d!2205333 () Bool)

(assert (=> d!2205333 (= (flatMap!2504 lt!2532843 lambda!420718) (dynLambda!27654 lambda!420718 lt!2532860))))

(declare-fun lt!2533048 () Unit!161829)

(assert (=> d!2205333 (= lt!2533048 (choose!53840 lt!2532843 lt!2532860 lambda!420718))))

(assert (=> d!2205333 (= lt!2532843 (set.insert lt!2532860 (as set.empty (Set Context!13148))))))

(assert (=> d!2205333 (= (lemmaFlatMapOnSingletonSet!2013 lt!2532843 lt!2532860 lambda!420718) lt!2533048)))

(declare-fun b_lambda!268781 () Bool)

(assert (=> (not b_lambda!268781) (not d!2205333)))

(declare-fun bs!1877205 () Bool)

(assert (= bs!1877205 d!2205333))

(assert (=> bs!1877205 m!7774536))

(declare-fun m!7774840 () Bool)

(assert (=> bs!1877205 m!7774840))

(declare-fun m!7774842 () Bool)

(assert (=> bs!1877205 m!7774842))

(assert (=> bs!1877205 m!7774534))

(assert (=> b!7056430 d!2205333))

(assert (=> b!7056430 d!2205277))

(declare-fun bs!1877206 () Bool)

(declare-fun d!2205335 () Bool)

(assert (= bs!1877206 (and d!2205335 b!7056426)))

(declare-fun lambda!420798 () Int)

(assert (=> bs!1877206 (= lambda!420798 lambda!420718)))

(declare-fun bs!1877207 () Bool)

(assert (= bs!1877207 (and d!2205335 d!2205295)))

(assert (=> bs!1877207 (= lambda!420798 lambda!420790)))

(assert (=> d!2205335 true))

(assert (=> d!2205335 (= (derivationStepZipper!3028 lt!2532843 (h!74584 s!7408)) (flatMap!2504 lt!2532843 lambda!420798))))

(declare-fun bs!1877208 () Bool)

(assert (= bs!1877208 d!2205335))

(declare-fun m!7774844 () Bool)

(assert (=> bs!1877208 m!7774844))

(assert (=> b!7056430 d!2205335))

(declare-fun d!2205337 () Bool)

(assert (=> d!2205337 (= (flatMap!2504 lt!2532843 lambda!420718) (choose!53843 lt!2532843 lambda!420718))))

(declare-fun bs!1877209 () Bool)

(assert (= bs!1877209 d!2205337))

(declare-fun m!7774846 () Bool)

(assert (=> bs!1877209 m!7774846))

(assert (=> b!7056430 d!2205337))

(declare-fun b!7056634 () Bool)

(declare-fun e!4242329 () Bool)

(declare-fun tp!1940383 () Bool)

(declare-fun tp!1940384 () Bool)

(assert (=> b!7056634 (= e!4242329 (and tp!1940383 tp!1940384))))

(assert (=> b!7056443 (= tp!1940363 e!4242329)))

(assert (= (and b!7056443 (is-Cons!68137 (exprs!7074 setElem!49888))) b!7056634))

(declare-fun b!7056635 () Bool)

(declare-fun e!4242330 () Bool)

(declare-fun tp!1940385 () Bool)

(declare-fun tp!1940386 () Bool)

(assert (=> b!7056635 (= e!4242330 (and tp!1940385 tp!1940386))))

(assert (=> b!7056434 (= tp!1940365 e!4242330)))

(assert (= (and b!7056434 (is-Cons!68137 (exprs!7074 ct2!306))) b!7056635))

(declare-fun condSetEmpty!49894 () Bool)

(assert (=> setNonEmpty!49888 (= condSetEmpty!49894 (= setRest!49888 (as set.empty (Set Context!13148))))))

(declare-fun setRes!49894 () Bool)

(assert (=> setNonEmpty!49888 (= tp!1940366 setRes!49894)))

(declare-fun setIsEmpty!49894 () Bool)

(assert (=> setIsEmpty!49894 setRes!49894))

(declare-fun setNonEmpty!49894 () Bool)

(declare-fun e!4242333 () Bool)

(declare-fun setElem!49894 () Context!13148)

(declare-fun tp!1940392 () Bool)

(assert (=> setNonEmpty!49894 (= setRes!49894 (and tp!1940392 (inv!86805 setElem!49894) e!4242333))))

(declare-fun setRest!49894 () (Set Context!13148))

(assert (=> setNonEmpty!49894 (= setRest!49888 (set.union (set.insert setElem!49894 (as set.empty (Set Context!13148))) setRest!49894))))

(declare-fun b!7056640 () Bool)

(declare-fun tp!1940391 () Bool)

(assert (=> b!7056640 (= e!4242333 tp!1940391)))

(assert (= (and setNonEmpty!49888 condSetEmpty!49894) setIsEmpty!49894))

(assert (= (and setNonEmpty!49888 (not condSetEmpty!49894)) setNonEmpty!49894))

(assert (= setNonEmpty!49894 b!7056640))

(declare-fun m!7774848 () Bool)

(assert (=> setNonEmpty!49894 m!7774848))

(declare-fun b!7056645 () Bool)

(declare-fun e!4242336 () Bool)

(declare-fun tp!1940395 () Bool)

(assert (=> b!7056645 (= e!4242336 (and tp_is_empty!44381 tp!1940395))))

(assert (=> b!7056441 (= tp!1940364 e!4242336)))

(assert (= (and b!7056441 (is-Cons!68136 (t!382039 s!7408))) b!7056645))

(declare-fun b_lambda!268783 () Bool)

(assert (= b_lambda!268779 (or b!7056439 b_lambda!268783)))

(declare-fun bs!1877210 () Bool)

(declare-fun d!2205339 () Bool)

(assert (= bs!1877210 (and d!2205339 b!7056439)))

(assert (=> bs!1877210 (= (dynLambda!27657 lambda!420715 lt!2533044) (matchZipper!3118 (set.insert lt!2533044 (as set.empty (Set Context!13148))) s!7408))))

(declare-fun m!7774850 () Bool)

(assert (=> bs!1877210 m!7774850))

(assert (=> bs!1877210 m!7774850))

(declare-fun m!7774852 () Bool)

(assert (=> bs!1877210 m!7774852))

(assert (=> d!2205319 d!2205339))

(declare-fun b_lambda!268785 () Bool)

(assert (= b_lambda!268777 (or b!7056438 b_lambda!268785)))

(declare-fun bs!1877211 () Bool)

(declare-fun d!2205341 () Bool)

(assert (= bs!1877211 (and d!2205341 b!7056438)))

(declare-fun lt!2533049 () Unit!161829)

(assert (=> bs!1877211 (= lt!2533049 (lemmaConcatPreservesForall!889 (exprs!7074 lt!2533035) (exprs!7074 ct2!306) lambda!420717))))

(assert (=> bs!1877211 (= (dynLambda!27655 lambda!420716 lt!2533035) (Context!13149 (++!15661 (exprs!7074 lt!2533035) (exprs!7074 ct2!306))))))

(declare-fun m!7774854 () Bool)

(assert (=> bs!1877211 m!7774854))

(declare-fun m!7774856 () Bool)

(assert (=> bs!1877211 m!7774856))

(assert (=> d!2205311 d!2205341))

(declare-fun b_lambda!268787 () Bool)

(assert (= b_lambda!268775 (or b!7056426 b_lambda!268787)))

(declare-fun bs!1877212 () Bool)

(declare-fun d!2205343 () Bool)

(assert (= bs!1877212 (and d!2205343 b!7056426)))

(assert (=> bs!1877212 (= (dynLambda!27654 lambda!420718 lt!2532859) (derivationStepZipperUp!2162 lt!2532859 (h!74584 s!7408)))))

(assert (=> bs!1877212 m!7774522))

(assert (=> d!2205291 d!2205343))

(declare-fun b_lambda!268789 () Bool)

(assert (= b_lambda!268771 (or b!7056426 b_lambda!268789)))

(declare-fun bs!1877213 () Bool)

(declare-fun d!2205345 () Bool)

(assert (= bs!1877213 (and d!2205345 b!7056426)))

(assert (=> bs!1877213 (= (dynLambda!27654 lambda!420718 lt!2532855) (derivationStepZipperUp!2162 lt!2532855 (h!74584 s!7408)))))

(assert (=> bs!1877213 m!7774562))

(assert (=> d!2205273 d!2205345))

(declare-fun b_lambda!268791 () Bool)

(assert (= b_lambda!268781 (or b!7056426 b_lambda!268791)))

(declare-fun bs!1877214 () Bool)

(declare-fun d!2205347 () Bool)

(assert (= bs!1877214 (and d!2205347 b!7056426)))

(assert (=> bs!1877214 (= (dynLambda!27654 lambda!420718 lt!2532860) (derivationStepZipperUp!2162 lt!2532860 (h!74584 s!7408)))))

(assert (=> bs!1877214 m!7774526))

(assert (=> d!2205333 d!2205347))

(declare-fun b_lambda!268793 () Bool)

(assert (= b_lambda!268773 (or b!7056438 b_lambda!268793)))

(declare-fun bs!1877215 () Bool)

(declare-fun d!2205349 () Bool)

(assert (= bs!1877215 (and d!2205349 b!7056438)))

(declare-fun lt!2533050 () Unit!161829)

(assert (=> bs!1877215 (= lt!2533050 (lemmaConcatPreservesForall!889 (exprs!7074 lt!2532855) (exprs!7074 ct2!306) lambda!420717))))

(assert (=> bs!1877215 (= (dynLambda!27655 lambda!420716 lt!2532855) (Context!13149 (++!15661 (exprs!7074 lt!2532855) (exprs!7074 ct2!306))))))

(declare-fun m!7774858 () Bool)

(assert (=> bs!1877215 m!7774858))

(declare-fun m!7774860 () Bool)

(assert (=> bs!1877215 m!7774860))

(assert (=> d!2205275 d!2205349))

(push 1)

(assert (not b!7056624))

(assert (not b!7056601))

(assert (not b!7056627))

(assert (not bs!1877213))

(assert (not d!2205319))

(assert (not b!7056635))

(assert (not d!2205325))

(assert (not b!7056640))

(assert (not b!7056537))

(assert (not d!2205299))

(assert (not d!2205315))

(assert (not b!7056622))

(assert (not b_lambda!268785))

(assert (not bm!641063))

(assert (not d!2205317))

(assert (not d!2205263))

(assert (not d!2205283))

(assert (not b!7056619))

(assert (not b_lambda!268787))

(assert (not b_lambda!268791))

(assert (not b!7056602))

(assert (not bs!1877215))

(assert (not d!2205321))

(assert (not b!7056592))

(assert (not b!7056525))

(assert (not b!7056589))

(assert (not b!7056585))

(assert (not d!2205285))

(assert (not d!2205311))

(assert (not b!7056645))

(assert (not b!7056599))

(assert (not b!7056552))

(assert (not d!2205281))

(assert (not d!2205291))

(assert (not bs!1877211))

(assert (not d!2205335))

(assert (not b_lambda!268789))

(assert (not b!7056604))

(assert (not bm!641057))

(assert tp_is_empty!44381)

(assert (not bs!1877214))

(assert (not d!2205293))

(assert (not b!7056613))

(assert (not d!2205303))

(assert (not d!2205333))

(assert (not b!7056634))

(assert (not d!2205309))

(assert (not d!2205295))

(assert (not d!2205277))

(assert (not bs!1877212))

(assert (not b!7056628))

(assert (not d!2205313))

(assert (not d!2205305))

(assert (not d!2205279))

(assert (not b_lambda!268793))

(assert (not b!7056554))

(assert (not b!7056551))

(assert (not bm!641058))

(assert (not b!7056596))

(assert (not d!2205271))

(assert (not b!7056605))

(assert (not b!7056623))

(assert (not setNonEmpty!49894))

(assert (not bm!641044))

(assert (not d!2205331))

(assert (not d!2205265))

(assert (not b!7056540))

(assert (not b!7056526))

(assert (not d!2205323))

(assert (not d!2205273))

(assert (not d!2205267))

(assert (not d!2205327))

(assert (not b!7056621))

(assert (not d!2205275))

(assert (not b!7056620))

(assert (not bm!641064))

(assert (not d!2205337))

(assert (not d!2205329))

(assert (not b!7056555))

(assert (not bm!641060))

(assert (not b!7056629))

(assert (not b_lambda!268783))

(assert (not bs!1877210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


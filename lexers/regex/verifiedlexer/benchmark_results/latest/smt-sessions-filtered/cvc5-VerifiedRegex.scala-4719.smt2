; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244186 () Bool)

(assert start!244186)

(declare-fun res!1057829 () Bool)

(declare-fun e!1586699 () Bool)

(assert (=> start!244186 (=> (not res!1057829) (not e!1586699))))

(declare-datatypes ((C!14982 0))(
  ( (C!14983 (val!9143 Int)) )
))
(declare-datatypes ((Regex!7412 0))(
  ( (ElementMatch!7412 (c!398122 C!14982)) (Concat!12108 (regOne!15336 Regex!7412) (regTwo!15336 Regex!7412)) (EmptyExpr!7412) (Star!7412 (reg!7741 Regex!7412)) (EmptyLang!7412) (Union!7412 (regOne!15337 Regex!7412) (regTwo!15337 Regex!7412)) )
))
(declare-fun r!27340 () Regex!7412)

(declare-fun validRegex!3038 (Regex!7412) Bool)

(assert (=> start!244186 (= res!1057829 (validRegex!3038 r!27340))))

(assert (=> start!244186 e!1586699))

(declare-fun e!1586697 () Bool)

(assert (=> start!244186 e!1586697))

(declare-fun tp_is_empty!12679 () Bool)

(assert (=> start!244186 tp_is_empty!12679))

(declare-fun e!1586700 () Bool)

(assert (=> start!244186 e!1586700))

(declare-fun b!2501813 () Bool)

(declare-fun tp!800932 () Bool)

(assert (=> b!2501813 (= e!1586697 tp!800932)))

(declare-fun b!2501814 () Bool)

(declare-fun res!1057827 () Bool)

(assert (=> b!2501814 (=> (not res!1057827) (not e!1586699))))

(declare-fun nullable!2329 (Regex!7412) Bool)

(assert (=> b!2501814 (= res!1057827 (nullable!2329 (regOne!15336 r!27340)))))

(declare-fun b!2501815 () Bool)

(declare-fun tp!800928 () Bool)

(declare-fun tp!800927 () Bool)

(assert (=> b!2501815 (= e!1586697 (and tp!800928 tp!800927))))

(declare-fun b!2501816 () Bool)

(declare-fun res!1057828 () Bool)

(assert (=> b!2501816 (=> (not res!1057828) (not e!1586699))))

(declare-datatypes ((List!29477 0))(
  ( (Nil!29377) (Cons!29377 (h!34797 C!14982) (t!211176 List!29477)) )
))
(declare-fun tl!4068 () List!29477)

(declare-fun c!14016 () C!14982)

(declare-fun derivative!107 (Regex!7412 List!29477) Regex!7412)

(declare-fun derivativeStep!1981 (Regex!7412 C!14982) Regex!7412)

(assert (=> b!2501816 (= res!1057828 (nullable!2329 (derivative!107 (derivativeStep!1981 r!27340 c!14016) tl!4068)))))

(declare-fun b!2501817 () Bool)

(assert (=> b!2501817 (= e!1586699 (not true))))

(declare-fun e!1586698 () Bool)

(assert (=> b!2501817 e!1586698))

(declare-fun res!1057825 () Bool)

(assert (=> b!2501817 (=> res!1057825 e!1586698)))

(declare-fun lt!895756 () Regex!7412)

(declare-fun matchR!3415 (Regex!7412 List!29477) Bool)

(assert (=> b!2501817 (= res!1057825 (matchR!3415 lt!895756 tl!4068))))

(declare-fun lt!895759 () Regex!7412)

(declare-datatypes ((Unit!43081 0))(
  ( (Unit!43082) )
))
(declare-fun lt!895758 () Unit!43081)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!107 (Regex!7412 Regex!7412 List!29477) Unit!43081)

(assert (=> b!2501817 (= lt!895758 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!107 lt!895756 lt!895759 tl!4068))))

(declare-fun lt!895755 () Regex!7412)

(assert (=> b!2501817 (= (matchR!3415 lt!895755 tl!4068) (matchR!3415 (derivative!107 lt!895755 tl!4068) Nil!29377))))

(declare-fun lt!895757 () Unit!43081)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!61 (Regex!7412 List!29477) Unit!43081)

(assert (=> b!2501817 (= lt!895757 (lemmaMatchRIsSameAsWholeDerivativeAndNil!61 lt!895755 tl!4068))))

(assert (=> b!2501817 (= lt!895755 (Union!7412 lt!895756 lt!895759))))

(assert (=> b!2501817 (= lt!895759 (derivativeStep!1981 (regTwo!15336 r!27340) c!14016))))

(assert (=> b!2501817 (= lt!895756 (Concat!12108 (derivativeStep!1981 (regOne!15336 r!27340) c!14016) (regTwo!15336 r!27340)))))

(declare-fun b!2501818 () Bool)

(declare-fun tp!800930 () Bool)

(assert (=> b!2501818 (= e!1586700 (and tp_is_empty!12679 tp!800930))))

(declare-fun b!2501819 () Bool)

(declare-fun tp!800929 () Bool)

(declare-fun tp!800931 () Bool)

(assert (=> b!2501819 (= e!1586697 (and tp!800929 tp!800931))))

(declare-fun b!2501820 () Bool)

(assert (=> b!2501820 (= e!1586697 tp_is_empty!12679)))

(declare-fun b!2501821 () Bool)

(declare-fun res!1057826 () Bool)

(assert (=> b!2501821 (=> (not res!1057826) (not e!1586699))))

(assert (=> b!2501821 (= res!1057826 (and (not (is-EmptyExpr!7412 r!27340)) (not (is-EmptyLang!7412 r!27340)) (not (is-ElementMatch!7412 r!27340)) (not (is-Union!7412 r!27340)) (not (is-Star!7412 r!27340))))))

(declare-fun b!2501822 () Bool)

(assert (=> b!2501822 (= e!1586698 (matchR!3415 lt!895759 tl!4068))))

(assert (= (and start!244186 res!1057829) b!2501816))

(assert (= (and b!2501816 res!1057828) b!2501821))

(assert (= (and b!2501821 res!1057826) b!2501814))

(assert (= (and b!2501814 res!1057827) b!2501817))

(assert (= (and b!2501817 (not res!1057825)) b!2501822))

(assert (= (and start!244186 (is-ElementMatch!7412 r!27340)) b!2501820))

(assert (= (and start!244186 (is-Concat!12108 r!27340)) b!2501819))

(assert (= (and start!244186 (is-Star!7412 r!27340)) b!2501813))

(assert (= (and start!244186 (is-Union!7412 r!27340)) b!2501815))

(assert (= (and start!244186 (is-Cons!29377 tl!4068)) b!2501818))

(declare-fun m!2863917 () Bool)

(assert (=> b!2501822 m!2863917))

(declare-fun m!2863919 () Bool)

(assert (=> start!244186 m!2863919))

(declare-fun m!2863921 () Bool)

(assert (=> b!2501816 m!2863921))

(assert (=> b!2501816 m!2863921))

(declare-fun m!2863923 () Bool)

(assert (=> b!2501816 m!2863923))

(assert (=> b!2501816 m!2863923))

(declare-fun m!2863925 () Bool)

(assert (=> b!2501816 m!2863925))

(declare-fun m!2863927 () Bool)

(assert (=> b!2501817 m!2863927))

(declare-fun m!2863929 () Bool)

(assert (=> b!2501817 m!2863929))

(declare-fun m!2863931 () Bool)

(assert (=> b!2501817 m!2863931))

(declare-fun m!2863933 () Bool)

(assert (=> b!2501817 m!2863933))

(declare-fun m!2863935 () Bool)

(assert (=> b!2501817 m!2863935))

(declare-fun m!2863937 () Bool)

(assert (=> b!2501817 m!2863937))

(assert (=> b!2501817 m!2863935))

(declare-fun m!2863939 () Bool)

(assert (=> b!2501817 m!2863939))

(declare-fun m!2863941 () Bool)

(assert (=> b!2501817 m!2863941))

(declare-fun m!2863943 () Bool)

(assert (=> b!2501814 m!2863943))

(push 1)

(assert (not start!244186))

(assert (not b!2501813))

(assert (not b!2501817))

(assert (not b!2501818))

(assert (not b!2501819))

(assert (not b!2501822))

(assert (not b!2501816))

(assert (not b!2501814))

(assert (not b!2501815))

(assert tp_is_empty!12679)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


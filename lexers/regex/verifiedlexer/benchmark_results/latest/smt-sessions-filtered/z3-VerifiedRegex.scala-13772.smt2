; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734340 () Bool)

(assert start!734340)

(declare-fun b!7624823 () Bool)

(assert (=> b!7624823 true))

(assert (=> b!7624823 true))

(declare-fun bs!1943616 () Bool)

(declare-fun b!7624821 () Bool)

(assert (= bs!1943616 (and b!7624821 b!7624823)))

(declare-fun lambda!468693 () Int)

(declare-fun lambda!468692 () Int)

(assert (=> bs!1943616 (not (= lambda!468693 lambda!468692))))

(assert (=> b!7624821 true))

(assert (=> b!7624821 true))

(declare-fun res!3053124 () Bool)

(declare-fun e!4533518 () Bool)

(assert (=> b!7624821 (=> res!3053124 e!4533518)))

(declare-fun Exists!4495 (Int) Bool)

(assert (=> b!7624821 (= res!3053124 (not (Exists!4495 lambda!468693)))))

(declare-fun b!7624822 () Bool)

(declare-fun res!3053119 () Bool)

(declare-fun e!4533522 () Bool)

(assert (=> b!7624822 (=> (not res!3053119) (not e!4533522))))

(declare-datatypes ((C!41004 0))(
  ( (C!41005 (val!30942 Int)) )
))
(declare-datatypes ((List!73192 0))(
  ( (Nil!73068) (Cons!73068 (h!79516 C!41004) (t!387927 List!73192)) )
))
(declare-fun s!9605 () List!73192)

(declare-fun isEmpty!41696 (List!73192) Bool)

(assert (=> b!7624822 (= res!3053119 (not (isEmpty!41696 s!9605)))))

(declare-fun e!4533523 () Bool)

(assert (=> b!7624823 (= e!4533522 (not e!4533523))))

(declare-fun res!3053123 () Bool)

(assert (=> b!7624823 (=> res!3053123 e!4533523)))

(declare-fun lt!2657645 () Bool)

(assert (=> b!7624823 (= res!3053123 lt!2657645)))

(assert (=> b!7624823 (= lt!2657645 (Exists!4495 lambda!468692))))

(declare-datatypes ((Regex!20339 0))(
  ( (ElementMatch!20339 (c!1405042 C!41004)) (Concat!29184 (regOne!41190 Regex!20339) (regTwo!41190 Regex!20339)) (EmptyExpr!20339) (Star!20339 (reg!20668 Regex!20339)) (EmptyLang!20339) (Union!20339 (regOne!41191 Regex!20339) (regTwo!41191 Regex!20339)) )
))
(declare-fun r!14126 () Regex!20339)

(declare-datatypes ((tuple2!69240 0))(
  ( (tuple2!69241 (_1!37923 List!73192) (_2!37923 List!73192)) )
))
(declare-datatypes ((Option!17414 0))(
  ( (None!17413) (Some!17413 (v!54548 tuple2!69240)) )
))
(declare-fun isDefined!14030 (Option!17414) Bool)

(declare-fun findConcatSeparation!3444 (Regex!20339 Regex!20339 List!73192 List!73192 List!73192) Option!17414)

(assert (=> b!7624823 (= lt!2657645 (isDefined!14030 (findConcatSeparation!3444 (reg!20668 r!14126) r!14126 Nil!73068 s!9605 s!9605)))))

(declare-datatypes ((Unit!167596 0))(
  ( (Unit!167597) )
))
(declare-fun lt!2657644 () Unit!167596)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3202 (Regex!20339 Regex!20339 List!73192) Unit!167596)

(assert (=> b!7624823 (= lt!2657644 (lemmaFindConcatSeparationEquivalentToExists!3202 (reg!20668 r!14126) r!14126 s!9605))))

(declare-fun b!7624824 () Bool)

(declare-fun e!4533521 () Unit!167596)

(declare-fun Unit!167598 () Unit!167596)

(assert (=> b!7624824 (= e!4533521 Unit!167598)))

(declare-fun b!7624825 () Bool)

(declare-fun e!4533519 () Bool)

(declare-fun tp!2226159 () Bool)

(assert (=> b!7624825 (= e!4533519 tp!2226159)))

(declare-fun b!7624826 () Bool)

(declare-fun res!3053120 () Bool)

(assert (=> b!7624826 (=> (not res!3053120) (not e!4533522))))

(get-info :version)

(assert (=> b!7624826 (= res!3053120 (and (not ((_ is EmptyExpr!20339) r!14126)) (not ((_ is EmptyLang!20339) r!14126)) (not ((_ is ElementMatch!20339) r!14126)) (not ((_ is Union!20339) r!14126)) ((_ is Star!20339) r!14126)))))

(declare-fun res!3053121 () Bool)

(assert (=> start!734340 (=> (not res!3053121) (not e!4533522))))

(declare-fun validRegex!10759 (Regex!20339) Bool)

(assert (=> start!734340 (= res!3053121 (validRegex!10759 r!14126))))

(assert (=> start!734340 e!4533522))

(assert (=> start!734340 e!4533519))

(declare-fun e!4533520 () Bool)

(assert (=> start!734340 e!4533520))

(declare-fun b!7624827 () Bool)

(declare-fun tp!2226155 () Bool)

(declare-fun tp!2226156 () Bool)

(assert (=> b!7624827 (= e!4533519 (and tp!2226155 tp!2226156))))

(declare-fun b!7624828 () Bool)

(declare-fun tp!2226154 () Bool)

(declare-fun tp!2226158 () Bool)

(assert (=> b!7624828 (= e!4533519 (and tp!2226154 tp!2226158))))

(declare-fun b!7624829 () Bool)

(declare-fun Unit!167599 () Unit!167596)

(assert (=> b!7624829 (= e!4533521 Unit!167599)))

(declare-fun lt!2657650 () Unit!167596)

(declare-fun lemmaStarAppConcat!20 (Regex!20339 List!73192) Unit!167596)

(assert (=> b!7624829 (= lt!2657650 (lemmaStarAppConcat!20 (reg!20668 r!14126) s!9605))))

(declare-fun matchR!9846 (Regex!20339 List!73192) Bool)

(assert (=> b!7624829 (matchR!9846 (Concat!29184 (reg!20668 r!14126) r!14126) s!9605)))

(declare-fun lt!2657647 () Unit!167596)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!252 (Regex!20339 Regex!20339 List!73192) Unit!167596)

(assert (=> b!7624829 (= lt!2657647 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!252 (reg!20668 r!14126) r!14126 s!9605))))

(assert (=> b!7624829 false))

(declare-fun b!7624830 () Bool)

(declare-fun tp_is_empty!51033 () Bool)

(assert (=> b!7624830 (= e!4533519 tp_is_empty!51033)))

(declare-fun b!7624831 () Bool)

(assert (=> b!7624831 (= e!4533518 true)))

(declare-fun lt!2657649 () tuple2!69240)

(declare-fun matchRSpec!4522 (Regex!20339 List!73192) Bool)

(assert (=> b!7624831 (= (matchR!9846 (reg!20668 r!14126) (_1!37923 lt!2657649)) (matchRSpec!4522 (reg!20668 r!14126) (_1!37923 lt!2657649)))))

(declare-fun lt!2657646 () Unit!167596)

(declare-fun mainMatchTheorem!4512 (Regex!20339 List!73192) Unit!167596)

(assert (=> b!7624831 (= lt!2657646 (mainMatchTheorem!4512 (reg!20668 r!14126) (_1!37923 lt!2657649)))))

(declare-fun pickWitness!452 (Int) tuple2!69240)

(assert (=> b!7624831 (= lt!2657649 (pickWitness!452 lambda!468693))))

(declare-fun b!7624832 () Bool)

(assert (=> b!7624832 (= e!4533523 e!4533518)))

(declare-fun res!3053122 () Bool)

(assert (=> b!7624832 (=> res!3053122 e!4533518)))

(assert (=> b!7624832 (= res!3053122 (Exists!4495 lambda!468692))))

(declare-fun lt!2657648 () Unit!167596)

(assert (=> b!7624832 (= lt!2657648 e!4533521)))

(declare-fun c!1405041 () Bool)

(assert (=> b!7624832 (= c!1405041 (matchR!9846 r!14126 s!9605))))

(declare-fun b!7624833 () Bool)

(declare-fun tp!2226157 () Bool)

(assert (=> b!7624833 (= e!4533520 (and tp_is_empty!51033 tp!2226157))))

(assert (= (and start!734340 res!3053121) b!7624826))

(assert (= (and b!7624826 res!3053120) b!7624822))

(assert (= (and b!7624822 res!3053119) b!7624823))

(assert (= (and b!7624823 (not res!3053123)) b!7624832))

(assert (= (and b!7624832 c!1405041) b!7624829))

(assert (= (and b!7624832 (not c!1405041)) b!7624824))

(assert (= (and b!7624832 (not res!3053122)) b!7624821))

(assert (= (and b!7624821 (not res!3053124)) b!7624831))

(assert (= (and start!734340 ((_ is ElementMatch!20339) r!14126)) b!7624830))

(assert (= (and start!734340 ((_ is Concat!29184) r!14126)) b!7624827))

(assert (= (and start!734340 ((_ is Star!20339) r!14126)) b!7624825))

(assert (= (and start!734340 ((_ is Union!20339) r!14126)) b!7624828))

(assert (= (and start!734340 ((_ is Cons!73068) s!9605)) b!7624833))

(declare-fun m!8154836 () Bool)

(assert (=> b!7624831 m!8154836))

(declare-fun m!8154838 () Bool)

(assert (=> b!7624831 m!8154838))

(declare-fun m!8154840 () Bool)

(assert (=> b!7624831 m!8154840))

(declare-fun m!8154842 () Bool)

(assert (=> b!7624831 m!8154842))

(declare-fun m!8154844 () Bool)

(assert (=> b!7624823 m!8154844))

(declare-fun m!8154846 () Bool)

(assert (=> b!7624823 m!8154846))

(assert (=> b!7624823 m!8154846))

(declare-fun m!8154848 () Bool)

(assert (=> b!7624823 m!8154848))

(declare-fun m!8154850 () Bool)

(assert (=> b!7624823 m!8154850))

(assert (=> b!7624832 m!8154844))

(declare-fun m!8154852 () Bool)

(assert (=> b!7624832 m!8154852))

(declare-fun m!8154854 () Bool)

(assert (=> start!734340 m!8154854))

(declare-fun m!8154856 () Bool)

(assert (=> b!7624822 m!8154856))

(declare-fun m!8154858 () Bool)

(assert (=> b!7624821 m!8154858))

(declare-fun m!8154860 () Bool)

(assert (=> b!7624829 m!8154860))

(declare-fun m!8154862 () Bool)

(assert (=> b!7624829 m!8154862))

(declare-fun m!8154864 () Bool)

(assert (=> b!7624829 m!8154864))

(check-sat (not start!734340) (not b!7624827) (not b!7624833) (not b!7624832) (not b!7624828) (not b!7624831) (not b!7624822) (not b!7624821) (not b!7624825) tp_is_empty!51033 (not b!7624829) (not b!7624823))
(check-sat)

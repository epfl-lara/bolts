; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277632 () Bool)

(assert start!277632)

(declare-fun b!2849876 () Bool)

(assert (=> b!2849876 true))

(declare-fun condSetEmpty!25030 () Bool)

(declare-datatypes ((C!17214 0))(
  ( (C!17215 (val!10641 Int)) )
))
(declare-datatypes ((Regex!8516 0))(
  ( (ElementMatch!8516 (c!459707 C!17214)) (Concat!13837 (regOne!17544 Regex!8516) (regTwo!17544 Regex!8516)) (EmptyExpr!8516) (Star!8516 (reg!8845 Regex!8516)) (EmptyLang!8516) (Union!8516 (regOne!17545 Regex!8516) (regTwo!17545 Regex!8516)) )
))
(declare-datatypes ((List!34013 0))(
  ( (Nil!33889) (Cons!33889 (h!39309 Regex!8516) (t!233044 List!34013)) )
))
(declare-datatypes ((Context!5052 0))(
  ( (Context!5053 (exprs!3026 List!34013)) )
))
(declare-fun z!809 () (Set Context!5052))

(assert (=> b!2849876 (= condSetEmpty!25030 (= z!809 (as set.empty (Set Context!5052))))))

(declare-fun setRes!25030 () Bool)

(assert (=> b!2849876 setRes!25030))

(declare-fun setIsEmpty!25030 () Bool)

(assert (=> setIsEmpty!25030 setRes!25030))

(declare-fun setNonEmpty!25030 () Bool)

(assert (=> setNonEmpty!25030 (= setRes!25030 true)))

(declare-fun setElem!25030 () Context!5052)

(declare-fun setRest!25030 () (Set Context!5052))

(assert (=> setNonEmpty!25030 (= z!809 (set.union (set.insert setElem!25030 (as set.empty (Set Context!5052))) setRest!25030))))

(assert (= (and b!2849876 condSetEmpty!25030) setIsEmpty!25030))

(assert (= (and b!2849876 (not condSetEmpty!25030)) setNonEmpty!25030))

(declare-fun b!2849873 () Bool)

(declare-fun res!1184577 () Bool)

(declare-fun e!1805828 () Bool)

(assert (=> b!2849873 (=> (not res!1184577) (not e!1805828))))

(declare-fun r!5723 () Regex!8516)

(declare-datatypes ((List!34014 0))(
  ( (Nil!33890) (Cons!33890 (h!39310 Context!5052) (t!233045 List!34014)) )
))
(declare-fun zl!222 () List!34014)

(declare-fun unfocusZipper!188 (List!34014) Regex!8516)

(assert (=> b!2849873 (= res!1184577 (= r!5723 (unfocusZipper!188 zl!222)))))

(declare-fun b!2849874 () Bool)

(declare-fun res!1184575 () Bool)

(assert (=> b!2849874 (=> (not res!1184575) (not e!1805828))))

(declare-datatypes ((List!34015 0))(
  ( (Nil!33891) (Cons!33891 (h!39311 C!17214) (t!233046 List!34015)) )
))
(declare-fun prefix!862 () List!34015)

(declare-fun prefixMatchZipper!248 ((Set Context!5052) List!34015) Bool)

(assert (=> b!2849874 (= res!1184575 (prefixMatchZipper!248 z!809 prefix!862))))

(declare-fun b!2849875 () Bool)

(declare-fun e!1805829 () Bool)

(declare-fun tp!915329 () Bool)

(declare-fun tp!915332 () Bool)

(assert (=> b!2849875 (= e!1805829 (and tp!915329 tp!915332))))

(declare-fun e!1805823 () Bool)

(assert (=> b!2849876 (= e!1805828 (not e!1805823))))

(declare-fun res!1184576 () Bool)

(assert (=> b!2849876 (=> res!1184576 e!1805823)))

(declare-fun lambda!104716 () Int)

(declare-fun Exists!1248 (Int) Bool)

(assert (=> b!2849876 (= res!1184576 (not (Exists!1248 lambda!104716)))))

(assert (=> b!2849876 (Exists!1248 lambda!104716)))

(declare-datatypes ((Unit!47615 0))(
  ( (Unit!47616) )
))
(declare-fun lt!1013268 () Unit!47615)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!296 ((Set Context!5052) List!34015) Unit!47615)

(assert (=> b!2849876 (= lt!1013268 (lemmaPrefixMatchThenExistsStringThatMatches!296 z!809 prefix!862))))

(declare-fun setRes!25027 () Bool)

(declare-fun setElem!25027 () Context!5052)

(declare-fun tp!915331 () Bool)

(declare-fun e!1805826 () Bool)

(declare-fun setNonEmpty!25027 () Bool)

(declare-fun inv!45928 (Context!5052) Bool)

(assert (=> setNonEmpty!25027 (= setRes!25027 (and tp!915331 (inv!45928 setElem!25027) e!1805826))))

(declare-fun setRest!25027 () (Set Context!5052))

(assert (=> setNonEmpty!25027 (= z!809 (set.union (set.insert setElem!25027 (as set.empty (Set Context!5052))) setRest!25027))))

(declare-fun b!2849877 () Bool)

(declare-fun tp_is_empty!14769 () Bool)

(assert (=> b!2849877 (= e!1805829 tp_is_empty!14769)))

(declare-fun b!2849878 () Bool)

(declare-fun tp!915334 () Bool)

(declare-fun e!1805827 () Bool)

(declare-fun e!1805824 () Bool)

(assert (=> b!2849878 (= e!1805827 (and (inv!45928 (h!39310 zl!222)) e!1805824 tp!915334))))

(declare-fun b!2849879 () Bool)

(declare-fun tp!915326 () Bool)

(assert (=> b!2849879 (= e!1805829 tp!915326)))

(declare-fun b!2849880 () Bool)

(declare-fun e!1805825 () Bool)

(declare-fun tp!915328 () Bool)

(assert (=> b!2849880 (= e!1805825 (and tp_is_empty!14769 tp!915328))))

(declare-fun b!2849881 () Bool)

(assert (=> b!2849881 (= e!1805823 true)))

(declare-fun lt!1013269 () Bool)

(declare-fun matchZipper!398 ((Set Context!5052) List!34015) Bool)

(declare-fun pickWitness!273 (Int) List!34015)

(assert (=> b!2849881 (= lt!1013269 (matchZipper!398 z!809 (pickWitness!273 lambda!104716)))))

(declare-fun res!1184573 () Bool)

(assert (=> start!277632 (=> (not res!1184573) (not e!1805828))))

(declare-fun validRegex!3386 (Regex!8516) Bool)

(assert (=> start!277632 (= res!1184573 (validRegex!3386 r!5723))))

(assert (=> start!277632 e!1805828))

(assert (=> start!277632 e!1805829))

(declare-fun condSetEmpty!25027 () Bool)

(assert (=> start!277632 (= condSetEmpty!25027 (= z!809 (as set.empty (Set Context!5052))))))

(assert (=> start!277632 setRes!25027))

(assert (=> start!277632 e!1805827))

(assert (=> start!277632 e!1805825))

(declare-fun setIsEmpty!25027 () Bool)

(assert (=> setIsEmpty!25027 setRes!25027))

(declare-fun b!2849882 () Bool)

(declare-fun tp!915325 () Bool)

(declare-fun tp!915327 () Bool)

(assert (=> b!2849882 (= e!1805829 (and tp!915325 tp!915327))))

(declare-fun b!2849883 () Bool)

(declare-fun tp!915333 () Bool)

(assert (=> b!2849883 (= e!1805826 tp!915333)))

(declare-fun b!2849884 () Bool)

(declare-fun tp!915330 () Bool)

(assert (=> b!2849884 (= e!1805824 tp!915330)))

(declare-fun b!2849885 () Bool)

(declare-fun res!1184574 () Bool)

(assert (=> b!2849885 (=> (not res!1184574) (not e!1805828))))

(declare-fun toList!1929 ((Set Context!5052)) List!34014)

(assert (=> b!2849885 (= res!1184574 (= (toList!1929 z!809) zl!222))))

(declare-fun b!2849886 () Bool)

(declare-fun res!1184578 () Bool)

(assert (=> b!2849886 (=> (not res!1184578) (not e!1805828))))

(declare-fun prefixMatch!824 (Regex!8516 List!34015) Bool)

(assert (=> b!2849886 (= res!1184578 (not (prefixMatch!824 r!5723 prefix!862)))))

(assert (= (and start!277632 res!1184573) b!2849885))

(assert (= (and b!2849885 res!1184574) b!2849873))

(assert (= (and b!2849873 res!1184577) b!2849886))

(assert (= (and b!2849886 res!1184578) b!2849874))

(assert (= (and b!2849874 res!1184575) b!2849876))

(assert (= (and b!2849876 (not res!1184576)) b!2849881))

(assert (= (and start!277632 (is-ElementMatch!8516 r!5723)) b!2849877))

(assert (= (and start!277632 (is-Concat!13837 r!5723)) b!2849875))

(assert (= (and start!277632 (is-Star!8516 r!5723)) b!2849879))

(assert (= (and start!277632 (is-Union!8516 r!5723)) b!2849882))

(assert (= (and start!277632 condSetEmpty!25027) setIsEmpty!25027))

(assert (= (and start!277632 (not condSetEmpty!25027)) setNonEmpty!25027))

(assert (= setNonEmpty!25027 b!2849883))

(assert (= b!2849878 b!2849884))

(assert (= (and start!277632 (is-Cons!33890 zl!222)) b!2849878))

(assert (= (and start!277632 (is-Cons!33891 prefix!862)) b!2849880))

(declare-fun m!3276401 () Bool)

(assert (=> b!2849873 m!3276401))

(declare-fun m!3276403 () Bool)

(assert (=> b!2849878 m!3276403))

(declare-fun m!3276405 () Bool)

(assert (=> b!2849885 m!3276405))

(declare-fun m!3276407 () Bool)

(assert (=> setNonEmpty!25027 m!3276407))

(declare-fun m!3276409 () Bool)

(assert (=> b!2849876 m!3276409))

(assert (=> b!2849876 m!3276409))

(declare-fun m!3276411 () Bool)

(assert (=> b!2849876 m!3276411))

(declare-fun m!3276413 () Bool)

(assert (=> start!277632 m!3276413))

(declare-fun m!3276415 () Bool)

(assert (=> b!2849886 m!3276415))

(declare-fun m!3276417 () Bool)

(assert (=> b!2849881 m!3276417))

(assert (=> b!2849881 m!3276417))

(declare-fun m!3276419 () Bool)

(assert (=> b!2849881 m!3276419))

(declare-fun m!3276421 () Bool)

(assert (=> b!2849874 m!3276421))

(push 1)

(assert (not setNonEmpty!25027))

(assert (not b!2849879))

(assert (not b!2849881))

(assert (not start!277632))

(assert (not b!2849873))

(assert (not b!2849885))

(assert (not b!2849880))

(assert (not b!2849882))

(assert (not b!2849875))

(assert tp_is_empty!14769)

(assert (not b!2849883))

(assert (not setNonEmpty!25030))

(assert (not b!2849886))

(assert (not b!2849874))

(assert (not b!2849878))

(assert (not b!2849876))

(assert (not b!2849884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


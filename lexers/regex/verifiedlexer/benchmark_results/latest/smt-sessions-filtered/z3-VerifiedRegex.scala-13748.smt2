; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733836 () Bool)

(assert start!733836)

(declare-fun b!7617817 () Bool)

(assert (=> b!7617817 true))

(assert (=> b!7617817 true))

(declare-fun b!7617812 () Bool)

(declare-fun e!4529949 () Bool)

(declare-fun tp!2224489 () Bool)

(declare-fun tp!2224490 () Bool)

(assert (=> b!7617812 (= e!4529949 (and tp!2224489 tp!2224490))))

(declare-fun b!7617813 () Bool)

(declare-fun res!3049648 () Bool)

(declare-fun e!4529952 () Bool)

(assert (=> b!7617813 (=> (not res!3049648) (not e!4529952))))

(declare-datatypes ((C!40908 0))(
  ( (C!40909 (val!30894 Int)) )
))
(declare-datatypes ((Regex!20291 0))(
  ( (ElementMatch!20291 (c!1404058 C!40908)) (Concat!29136 (regOne!41094 Regex!20291) (regTwo!41094 Regex!20291)) (EmptyExpr!20291) (Star!20291 (reg!20620 Regex!20291)) (EmptyLang!20291) (Union!20291 (regOne!41095 Regex!20291) (regTwo!41095 Regex!20291)) )
))
(declare-fun r!14126 () Regex!20291)

(get-info :version)

(assert (=> b!7617813 (= res!3049648 (and (not ((_ is EmptyExpr!20291) r!14126)) (not ((_ is EmptyLang!20291) r!14126)) (not ((_ is ElementMatch!20291) r!14126)) (not ((_ is Union!20291) r!14126)) ((_ is Star!20291) r!14126)))))

(declare-fun b!7617814 () Bool)

(declare-fun e!4529950 () Bool)

(declare-fun tp_is_empty!50937 () Bool)

(declare-fun tp!2224491 () Bool)

(assert (=> b!7617814 (= e!4529950 (and tp_is_empty!50937 tp!2224491))))

(declare-fun b!7617815 () Bool)

(declare-fun e!4529951 () Bool)

(declare-fun e!4529953 () Bool)

(assert (=> b!7617815 (= e!4529951 e!4529953)))

(declare-fun res!3049651 () Bool)

(assert (=> b!7617815 (=> res!3049651 e!4529953)))

(declare-datatypes ((List!73144 0))(
  ( (Nil!73020) (Cons!73020 (h!79468 C!40908) (t!387879 List!73144)) )
))
(declare-fun s!9605 () List!73144)

(declare-fun matchR!9798 (Regex!20291 List!73144) Bool)

(assert (=> b!7617815 (= res!3049651 (matchR!9798 r!14126 s!9605))))

(declare-datatypes ((tuple2!69144 0))(
  ( (tuple2!69145 (_1!37875 List!73144) (_2!37875 List!73144)) )
))
(declare-fun lt!2655846 () tuple2!69144)

(declare-fun matchRSpec!4490 (Regex!20291 List!73144) Bool)

(assert (=> b!7617815 (= (matchR!9798 r!14126 (_2!37875 lt!2655846)) (matchRSpec!4490 r!14126 (_2!37875 lt!2655846)))))

(declare-datatypes ((Unit!167414 0))(
  ( (Unit!167415) )
))
(declare-fun lt!2655845 () Unit!167414)

(declare-fun mainMatchTheorem!4484 (Regex!20291 List!73144) Unit!167414)

(assert (=> b!7617815 (= lt!2655845 (mainMatchTheorem!4484 r!14126 (_2!37875 lt!2655846)))))

(assert (=> b!7617815 (= (matchR!9798 (reg!20620 r!14126) (_1!37875 lt!2655846)) (matchRSpec!4490 (reg!20620 r!14126) (_1!37875 lt!2655846)))))

(declare-fun lt!2655848 () Unit!167414)

(assert (=> b!7617815 (= lt!2655848 (mainMatchTheorem!4484 (reg!20620 r!14126) (_1!37875 lt!2655846)))))

(declare-datatypes ((Option!17366 0))(
  ( (None!17365) (Some!17365 (v!54500 tuple2!69144)) )
))
(declare-fun lt!2655847 () Option!17366)

(declare-fun get!25748 (Option!17366) tuple2!69144)

(assert (=> b!7617815 (= lt!2655846 (get!25748 lt!2655847))))

(declare-fun b!7617816 () Bool)

(declare-fun tp!2224488 () Bool)

(assert (=> b!7617816 (= e!4529949 tp!2224488)))

(assert (=> b!7617817 (= e!4529952 (not e!4529951))))

(declare-fun res!3049650 () Bool)

(assert (=> b!7617817 (=> res!3049650 e!4529951)))

(declare-fun lt!2655850 () Bool)

(assert (=> b!7617817 (= res!3049650 (not lt!2655850))))

(declare-fun lambda!468229 () Int)

(declare-fun Exists!4447 (Int) Bool)

(assert (=> b!7617817 (= lt!2655850 (Exists!4447 lambda!468229))))

(declare-fun isDefined!13982 (Option!17366) Bool)

(assert (=> b!7617817 (= lt!2655850 (isDefined!13982 lt!2655847))))

(declare-fun findConcatSeparation!3396 (Regex!20291 Regex!20291 List!73144 List!73144 List!73144) Option!17366)

(assert (=> b!7617817 (= lt!2655847 (findConcatSeparation!3396 (reg!20620 r!14126) r!14126 Nil!73020 s!9605 s!9605))))

(declare-fun lt!2655842 () Unit!167414)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3154 (Regex!20291 Regex!20291 List!73144) Unit!167414)

(assert (=> b!7617817 (= lt!2655842 (lemmaFindConcatSeparationEquivalentToExists!3154 (reg!20620 r!14126) r!14126 s!9605))))

(declare-fun res!3049652 () Bool)

(assert (=> start!733836 (=> (not res!3049652) (not e!4529952))))

(declare-fun validRegex!10711 (Regex!20291) Bool)

(assert (=> start!733836 (= res!3049652 (validRegex!10711 r!14126))))

(assert (=> start!733836 e!4529952))

(assert (=> start!733836 e!4529949))

(assert (=> start!733836 e!4529950))

(declare-fun b!7617818 () Bool)

(assert (=> b!7617818 (= e!4529949 tp_is_empty!50937)))

(declare-fun b!7617819 () Bool)

(assert (=> b!7617819 (= e!4529953 true)))

(declare-fun lt!2655844 () List!73144)

(assert (=> b!7617819 (matchR!9798 r!14126 lt!2655844)))

(declare-fun lt!2655849 () Unit!167414)

(declare-fun lemmaStarApp!172 (Regex!20291 List!73144 List!73144) Unit!167414)

(assert (=> b!7617819 (= lt!2655849 (lemmaStarApp!172 (reg!20620 r!14126) (_1!37875 lt!2655846) (_2!37875 lt!2655846)))))

(assert (=> b!7617819 (matchR!9798 (Concat!29136 (reg!20620 r!14126) r!14126) lt!2655844)))

(declare-fun ++!17601 (List!73144 List!73144) List!73144)

(assert (=> b!7617819 (= lt!2655844 (++!17601 (_1!37875 lt!2655846) (_2!37875 lt!2655846)))))

(declare-fun lt!2655843 () Unit!167414)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!118 (Regex!20291 Regex!20291 List!73144 List!73144 List!73144) Unit!167414)

(assert (=> b!7617819 (= lt!2655843 (lemmaFindSeparationIsDefinedThenConcatMatches!118 (reg!20620 r!14126) r!14126 (_1!37875 lt!2655846) (_2!37875 lt!2655846) s!9605))))

(declare-fun b!7617820 () Bool)

(declare-fun tp!2224486 () Bool)

(declare-fun tp!2224487 () Bool)

(assert (=> b!7617820 (= e!4529949 (and tp!2224486 tp!2224487))))

(declare-fun b!7617821 () Bool)

(declare-fun res!3049649 () Bool)

(assert (=> b!7617821 (=> (not res!3049649) (not e!4529952))))

(declare-fun isEmpty!41633 (List!73144) Bool)

(assert (=> b!7617821 (= res!3049649 (not (isEmpty!41633 s!9605)))))

(assert (= (and start!733836 res!3049652) b!7617813))

(assert (= (and b!7617813 res!3049648) b!7617821))

(assert (= (and b!7617821 res!3049649) b!7617817))

(assert (= (and b!7617817 (not res!3049650)) b!7617815))

(assert (= (and b!7617815 (not res!3049651)) b!7617819))

(assert (= (and start!733836 ((_ is ElementMatch!20291) r!14126)) b!7617818))

(assert (= (and start!733836 ((_ is Concat!29136) r!14126)) b!7617820))

(assert (= (and start!733836 ((_ is Star!20291) r!14126)) b!7617816))

(assert (= (and start!733836 ((_ is Union!20291) r!14126)) b!7617812))

(assert (= (and start!733836 ((_ is Cons!73020) s!9605)) b!7617814))

(declare-fun m!8150668 () Bool)

(assert (=> b!7617819 m!8150668))

(declare-fun m!8150670 () Bool)

(assert (=> b!7617819 m!8150670))

(declare-fun m!8150672 () Bool)

(assert (=> b!7617819 m!8150672))

(declare-fun m!8150674 () Bool)

(assert (=> b!7617819 m!8150674))

(declare-fun m!8150676 () Bool)

(assert (=> b!7617819 m!8150676))

(declare-fun m!8150678 () Bool)

(assert (=> b!7617817 m!8150678))

(declare-fun m!8150680 () Bool)

(assert (=> b!7617817 m!8150680))

(declare-fun m!8150682 () Bool)

(assert (=> b!7617817 m!8150682))

(declare-fun m!8150684 () Bool)

(assert (=> b!7617817 m!8150684))

(declare-fun m!8150686 () Bool)

(assert (=> b!7617821 m!8150686))

(declare-fun m!8150688 () Bool)

(assert (=> start!733836 m!8150688))

(declare-fun m!8150690 () Bool)

(assert (=> b!7617815 m!8150690))

(declare-fun m!8150692 () Bool)

(assert (=> b!7617815 m!8150692))

(declare-fun m!8150694 () Bool)

(assert (=> b!7617815 m!8150694))

(declare-fun m!8150696 () Bool)

(assert (=> b!7617815 m!8150696))

(declare-fun m!8150698 () Bool)

(assert (=> b!7617815 m!8150698))

(declare-fun m!8150700 () Bool)

(assert (=> b!7617815 m!8150700))

(declare-fun m!8150702 () Bool)

(assert (=> b!7617815 m!8150702))

(declare-fun m!8150704 () Bool)

(assert (=> b!7617815 m!8150704))

(check-sat (not b!7617817) (not b!7617814) (not start!733836) (not b!7617819) (not b!7617815) (not b!7617812) tp_is_empty!50937 (not b!7617816) (not b!7617820) (not b!7617821))
(check-sat)

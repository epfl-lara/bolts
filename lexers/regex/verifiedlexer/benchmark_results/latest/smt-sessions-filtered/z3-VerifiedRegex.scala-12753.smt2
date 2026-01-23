; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704768 () Bool)

(assert start!704768)

(declare-fun b!7246792 () Bool)

(declare-fun e!4345085 () Bool)

(declare-fun tp!2036648 () Bool)

(assert (=> b!7246792 (= e!4345085 tp!2036648)))

(declare-fun res!2939447 () Bool)

(declare-fun e!4345078 () Bool)

(assert (=> start!704768 (=> (not res!2939447) (not e!4345078))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37504 0))(
  ( (C!37505 (val!28700 Int)) )
))
(declare-datatypes ((Regex!18615 0))(
  ( (ElementMatch!18615 (c!1346249 C!37504)) (Concat!27460 (regOne!37742 Regex!18615) (regTwo!37742 Regex!18615)) (EmptyExpr!18615) (Star!18615 (reg!18944 Regex!18615)) (EmptyLang!18615) (Union!18615 (regOne!37743 Regex!18615) (regTwo!37743 Regex!18615)) )
))
(declare-datatypes ((List!70428 0))(
  ( (Nil!70304) (Cons!70304 (h!76752 Regex!18615) (t!384480 List!70428)) )
))
(declare-datatypes ((Context!15110 0))(
  ( (Context!15111 (exprs!8055 List!70428)) )
))
(declare-fun lt!2583024 () (InoxSet Context!15110))

(declare-datatypes ((List!70429 0))(
  ( (Nil!70305) (Cons!70305 (h!76753 C!37504) (t!384481 List!70429)) )
))
(declare-fun s1!1971 () List!70429)

(declare-fun matchZipper!3525 ((InoxSet Context!15110) List!70429) Bool)

(assert (=> start!704768 (= res!2939447 (matchZipper!3525 lt!2583024 s1!1971))))

(declare-fun ct1!232 () Context!15110)

(assert (=> start!704768 (= lt!2583024 (store ((as const (Array Context!15110 Bool)) false) ct1!232 true))))

(assert (=> start!704768 e!4345078))

(declare-fun e!4345080 () Bool)

(declare-fun inv!89547 (Context!15110) Bool)

(assert (=> start!704768 (and (inv!89547 ct1!232) e!4345080)))

(declare-fun e!4345086 () Bool)

(assert (=> start!704768 e!4345086))

(declare-fun e!4345079 () Bool)

(assert (=> start!704768 e!4345079))

(declare-fun ct2!328 () Context!15110)

(assert (=> start!704768 (and (inv!89547 ct2!328) e!4345085)))

(declare-fun b!7246793 () Bool)

(declare-fun e!4345082 () Bool)

(declare-fun e!4345081 () Bool)

(assert (=> b!7246793 (= e!4345082 (not e!4345081))))

(declare-fun res!2939444 () Bool)

(assert (=> b!7246793 (=> res!2939444 e!4345081)))

(declare-fun lt!2583027 () Context!15110)

(assert (=> b!7246793 (= res!2939444 (not (= lt!2583027 ct2!328)))))

(declare-datatypes ((Unit!163813 0))(
  ( (Unit!163814) )
))
(declare-fun lt!2583029 () Unit!163813)

(declare-fun lambda!443273 () Int)

(declare-fun lemmaConcatPreservesForall!1422 (List!70428 List!70428 Int) Unit!163813)

(assert (=> b!7246793 (= lt!2583029 (lemmaConcatPreservesForall!1422 (exprs!8055 ct1!232) (exprs!8055 ct2!328) lambda!443273))))

(declare-fun isEmpty!40493 (List!70429) Bool)

(assert (=> b!7246793 (isEmpty!40493 s1!1971)))

(declare-fun lt!2583026 () Unit!163813)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!60 ((InoxSet Context!15110) List!70429) Unit!163813)

(assert (=> b!7246793 (= lt!2583026 (lemmaZipperOfEmptyContextMatchesEmptyString!60 lt!2583024 s1!1971))))

(declare-fun b!7246794 () Bool)

(declare-fun e!4345083 () Bool)

(declare-fun e!4345084 () Bool)

(assert (=> b!7246794 (= e!4345083 e!4345084)))

(declare-fun res!2939443 () Bool)

(assert (=> b!7246794 (=> res!2939443 e!4345084)))

(declare-fun lt!2583025 () List!70429)

(assert (=> b!7246794 (= res!2939443 (not (matchZipper!3525 (store ((as const (Array Context!15110 Bool)) false) lt!2583027 true) lt!2583025)))))

(declare-fun lt!2583030 () Unit!163813)

(assert (=> b!7246794 (= lt!2583030 (lemmaConcatPreservesForall!1422 (exprs!8055 ct1!232) (exprs!8055 ct2!328) lambda!443273))))

(declare-fun b!7246795 () Bool)

(assert (=> b!7246795 (= e!4345078 e!4345082)))

(declare-fun res!2939442 () Bool)

(assert (=> b!7246795 (=> (not res!2939442) (not e!4345082))))

(get-info :version)

(assert (=> b!7246795 (= res!2939442 ((_ is Nil!70304) (exprs!8055 ct1!232)))))

(declare-fun ++!16498 (List!70428 List!70428) List!70428)

(assert (=> b!7246795 (= lt!2583027 (Context!15111 (++!16498 (exprs!8055 ct1!232) (exprs!8055 ct2!328))))))

(declare-fun lt!2583028 () Unit!163813)

(assert (=> b!7246795 (= lt!2583028 (lemmaConcatPreservesForall!1422 (exprs!8055 ct1!232) (exprs!8055 ct2!328) lambda!443273))))

(declare-fun b!7246796 () Bool)

(declare-fun res!2939446 () Bool)

(assert (=> b!7246796 (=> (not res!2939446) (not e!4345078))))

(declare-fun s2!1849 () List!70429)

(assert (=> b!7246796 (= res!2939446 (matchZipper!3525 (store ((as const (Array Context!15110 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246797 () Bool)

(declare-fun tp!2036646 () Bool)

(assert (=> b!7246797 (= e!4345080 tp!2036646)))

(declare-fun b!7246798 () Bool)

(declare-fun tp_is_empty!46695 () Bool)

(declare-fun tp!2036647 () Bool)

(assert (=> b!7246798 (= e!4345086 (and tp_is_empty!46695 tp!2036647))))

(declare-fun b!7246799 () Bool)

(assert (=> b!7246799 (= e!4345084 (inv!89547 lt!2583027))))

(declare-fun lt!2583031 () Unit!163813)

(assert (=> b!7246799 (= lt!2583031 (lemmaConcatPreservesForall!1422 (exprs!8055 ct1!232) (exprs!8055 ct2!328) lambda!443273))))

(declare-fun b!7246800 () Bool)

(declare-fun tp!2036645 () Bool)

(assert (=> b!7246800 (= e!4345079 (and tp_is_empty!46695 tp!2036645))))

(declare-fun b!7246801 () Bool)

(assert (=> b!7246801 (= e!4345081 e!4345083)))

(declare-fun res!2939445 () Bool)

(assert (=> b!7246801 (=> res!2939445 e!4345083)))

(assert (=> b!7246801 (= res!2939445 (not (= lt!2583025 s2!1849)))))

(declare-fun ++!16499 (List!70429 List!70429) List!70429)

(assert (=> b!7246801 (= lt!2583025 (++!16499 s1!1971 s2!1849))))

(assert (= (and start!704768 res!2939447) b!7246796))

(assert (= (and b!7246796 res!2939446) b!7246795))

(assert (= (and b!7246795 res!2939442) b!7246793))

(assert (= (and b!7246793 (not res!2939444)) b!7246801))

(assert (= (and b!7246801 (not res!2939445)) b!7246794))

(assert (= (and b!7246794 (not res!2939443)) b!7246799))

(assert (= start!704768 b!7246797))

(assert (= (and start!704768 ((_ is Cons!70305) s1!1971)) b!7246798))

(assert (= (and start!704768 ((_ is Cons!70305) s2!1849)) b!7246800))

(assert (= start!704768 b!7246792))

(declare-fun m!7923654 () Bool)

(assert (=> start!704768 m!7923654))

(declare-fun m!7923656 () Bool)

(assert (=> start!704768 m!7923656))

(declare-fun m!7923658 () Bool)

(assert (=> start!704768 m!7923658))

(declare-fun m!7923660 () Bool)

(assert (=> start!704768 m!7923660))

(declare-fun m!7923662 () Bool)

(assert (=> b!7246795 m!7923662))

(declare-fun m!7923664 () Bool)

(assert (=> b!7246795 m!7923664))

(declare-fun m!7923666 () Bool)

(assert (=> b!7246796 m!7923666))

(assert (=> b!7246796 m!7923666))

(declare-fun m!7923668 () Bool)

(assert (=> b!7246796 m!7923668))

(declare-fun m!7923670 () Bool)

(assert (=> b!7246794 m!7923670))

(assert (=> b!7246794 m!7923670))

(declare-fun m!7923672 () Bool)

(assert (=> b!7246794 m!7923672))

(assert (=> b!7246794 m!7923664))

(assert (=> b!7246793 m!7923664))

(declare-fun m!7923674 () Bool)

(assert (=> b!7246793 m!7923674))

(declare-fun m!7923676 () Bool)

(assert (=> b!7246793 m!7923676))

(declare-fun m!7923678 () Bool)

(assert (=> b!7246801 m!7923678))

(declare-fun m!7923680 () Bool)

(assert (=> b!7246799 m!7923680))

(assert (=> b!7246799 m!7923664))

(check-sat (not b!7246795) (not b!7246798) (not b!7246797) (not start!704768) (not b!7246792) (not b!7246800) (not b!7246799) (not b!7246796) (not b!7246793) (not b!7246794) (not b!7246801) tp_is_empty!46695)
(check-sat)

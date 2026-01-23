; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701146 () Bool)

(assert start!701146)

(declare-fun b!7229416 () Bool)

(declare-fun e!4333727 () Bool)

(assert (=> b!7229416 (= e!4333727 false)))

(declare-datatypes ((C!37206 0))(
  ( (C!37207 (val!28551 Int)) )
))
(declare-datatypes ((Regex!18466 0))(
  ( (ElementMatch!18466 (c!1341229 C!37206)) (Concat!27311 (regOne!37444 Regex!18466) (regTwo!37444 Regex!18466)) (EmptyExpr!18466) (Star!18466 (reg!18795 Regex!18466)) (EmptyLang!18466) (Union!18466 (regOne!37445 Regex!18466) (regTwo!37445 Regex!18466)) )
))
(declare-datatypes ((List!70020 0))(
  ( (Nil!69896) (Cons!69896 (h!76344 Regex!18466) (t!384069 List!70020)) )
))
(declare-fun lt!2572541 () List!70020)

(declare-datatypes ((Context!14812 0))(
  ( (Context!14813 (exprs!7906 List!70020)) )
))
(declare-fun ct1!232 () Context!14812)

(declare-fun ct2!328 () Context!14812)

(declare-fun ++!16244 (List!70020 List!70020) List!70020)

(assert (=> b!7229416 (= lt!2572541 (++!16244 (exprs!7906 ct1!232) (exprs!7906 ct2!328)))))

(declare-datatypes ((Unit!163467 0))(
  ( (Unit!163468) )
))
(declare-fun lt!2572540 () Unit!163467)

(declare-fun lambda!438932 () Int)

(declare-fun lemmaConcatPreservesForall!1275 (List!70020 List!70020 Int) Unit!163467)

(assert (=> b!7229416 (= lt!2572540 (lemmaConcatPreservesForall!1275 (exprs!7906 ct1!232) (exprs!7906 ct2!328) lambda!438932))))

(declare-fun b!7229417 () Bool)

(declare-fun e!4333728 () Bool)

(declare-fun tp!2033308 () Bool)

(assert (=> b!7229417 (= e!4333728 tp!2033308)))

(declare-fun b!7229418 () Bool)

(declare-fun res!2933100 () Bool)

(assert (=> b!7229418 (=> (not res!2933100) (not e!4333727))))

(declare-datatypes ((List!70021 0))(
  ( (Nil!69897) (Cons!69897 (h!76345 C!37206) (t!384070 List!70021)) )
))
(declare-fun s2!1849 () List!70021)

(declare-fun matchZipper!3376 ((Set Context!14812) List!70021) Bool)

(assert (=> b!7229418 (= res!2933100 (matchZipper!3376 (set.insert ct2!328 (as set.empty (Set Context!14812))) s2!1849))))

(declare-fun b!7229419 () Bool)

(declare-fun e!4333724 () Bool)

(declare-fun tp_is_empty!46397 () Bool)

(declare-fun tp!2033307 () Bool)

(assert (=> b!7229419 (= e!4333724 (and tp_is_empty!46397 tp!2033307))))

(declare-fun b!7229420 () Bool)

(declare-fun e!4333726 () Bool)

(declare-fun tp!2033305 () Bool)

(assert (=> b!7229420 (= e!4333726 tp!2033305)))

(declare-fun res!2933099 () Bool)

(assert (=> start!701146 (=> (not res!2933099) (not e!4333727))))

(declare-fun s1!1971 () List!70021)

(assert (=> start!701146 (= res!2933099 (matchZipper!3376 (set.insert ct1!232 (as set.empty (Set Context!14812))) s1!1971))))

(assert (=> start!701146 e!4333727))

(declare-fun inv!89176 (Context!14812) Bool)

(assert (=> start!701146 (and (inv!89176 ct1!232) e!4333728)))

(declare-fun e!4333725 () Bool)

(assert (=> start!701146 e!4333725))

(assert (=> start!701146 (and (inv!89176 ct2!328) e!4333726)))

(assert (=> start!701146 e!4333724))

(declare-fun b!7229421 () Bool)

(declare-fun tp!2033306 () Bool)

(assert (=> b!7229421 (= e!4333725 (and tp_is_empty!46397 tp!2033306))))

(assert (= (and start!701146 res!2933099) b!7229418))

(assert (= (and b!7229418 res!2933100) b!7229416))

(assert (= start!701146 b!7229417))

(assert (= (and start!701146 (is-Cons!69897 s1!1971)) b!7229421))

(assert (= start!701146 b!7229420))

(assert (= (and start!701146 (is-Cons!69897 s2!1849)) b!7229419))

(declare-fun m!7897478 () Bool)

(assert (=> b!7229416 m!7897478))

(declare-fun m!7897480 () Bool)

(assert (=> b!7229416 m!7897480))

(declare-fun m!7897482 () Bool)

(assert (=> b!7229418 m!7897482))

(assert (=> b!7229418 m!7897482))

(declare-fun m!7897484 () Bool)

(assert (=> b!7229418 m!7897484))

(declare-fun m!7897486 () Bool)

(assert (=> start!701146 m!7897486))

(assert (=> start!701146 m!7897486))

(declare-fun m!7897488 () Bool)

(assert (=> start!701146 m!7897488))

(declare-fun m!7897490 () Bool)

(assert (=> start!701146 m!7897490))

(declare-fun m!7897492 () Bool)

(assert (=> start!701146 m!7897492))

(push 1)

(assert (not b!7229416))

(assert (not b!7229421))

(assert tp_is_empty!46397)

(assert (not b!7229417))

(assert (not b!7229420))

(assert (not start!701146))

(assert (not b!7229419))

(assert (not b!7229418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


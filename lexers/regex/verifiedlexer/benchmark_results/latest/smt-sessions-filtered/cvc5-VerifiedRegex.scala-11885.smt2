; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667148 () Bool)

(assert start!667148)

(declare-fun b!6950567 () Bool)

(assert (=> b!6950567 true))

(assert (=> b!6950567 true))

(declare-fun bs!1857682 () Bool)

(declare-fun b!6950566 () Bool)

(assert (= bs!1857682 (and b!6950566 b!6950567)))

(declare-fun lambda!396346 () Int)

(declare-fun lambda!396345 () Int)

(assert (=> bs!1857682 (not (= lambda!396346 lambda!396345))))

(assert (=> b!6950566 true))

(assert (=> b!6950566 true))

(declare-fun res!2835633 () Bool)

(declare-fun e!4180323 () Bool)

(assert (=> start!667148 (=> (not res!2835633) (not e!4180323))))

(declare-datatypes ((C!34302 0))(
  ( (C!34303 (val!26853 Int)) )
))
(declare-datatypes ((Regex!17016 0))(
  ( (ElementMatch!17016 (c!1289294 C!34302)) (Concat!25861 (regOne!34544 Regex!17016) (regTwo!34544 Regex!17016)) (EmptyExpr!17016) (Star!17016 (reg!17345 Regex!17016)) (EmptyLang!17016) (Union!17016 (regOne!34545 Regex!17016) (regTwo!34545 Regex!17016)) )
))
(declare-fun rInner!765 () Regex!17016)

(declare-fun validRegex!8722 (Regex!17016) Bool)

(assert (=> start!667148 (= res!2835633 (validRegex!8722 rInner!765))))

(assert (=> start!667148 e!4180323))

(declare-fun e!4180325 () Bool)

(assert (=> start!667148 e!4180325))

(declare-fun e!4180324 () Bool)

(assert (=> start!667148 e!4180324))

(declare-fun e!4180322 () Bool)

(declare-fun e!4180321 () Bool)

(assert (=> start!667148 (and e!4180322 e!4180321)))

(declare-fun res!2835634 () Bool)

(assert (=> b!6950566 (=> (not res!2835634) (not e!4180323))))

(declare-fun Exists!4012 (Int) Bool)

(assert (=> b!6950566 (= res!2835634 (Exists!4012 lambda!396346))))

(declare-fun res!2835631 () Bool)

(assert (=> b!6950567 (=> (not res!2835631) (not e!4180323))))

(assert (=> b!6950567 (= res!2835631 (not (Exists!4012 lambda!396345)))))

(declare-fun b!6950568 () Bool)

(declare-fun tp!1916031 () Bool)

(declare-fun tp!1916034 () Bool)

(assert (=> b!6950568 (= e!4180325 (and tp!1916031 tp!1916034))))

(declare-fun b!6950569 () Bool)

(declare-fun tp!1916033 () Bool)

(assert (=> b!6950569 (= e!4180325 tp!1916033)))

(declare-fun b!6950570 () Bool)

(assert (=> b!6950570 (= e!4180323 false)))

(declare-datatypes ((List!66769 0))(
  ( (Nil!66645) (Cons!66645 (h!73093 C!34302) (t!380512 List!66769)) )
))
(declare-fun lt!2477900 () List!66769)

(declare-datatypes ((tuple2!67742 0))(
  ( (tuple2!67743 (_1!37174 List!66769) (_2!37174 List!66769)) )
))
(declare-fun cut!50 () tuple2!67742)

(declare-fun ++!15053 (List!66769 List!66769) List!66769)

(assert (=> b!6950570 (= lt!2477900 (++!15053 (_1!37174 cut!50) (_2!37174 cut!50)))))

(declare-fun b!6950571 () Bool)

(declare-fun tp_is_empty!43257 () Bool)

(assert (=> b!6950571 (= e!4180325 tp_is_empty!43257)))

(declare-fun b!6950572 () Bool)

(declare-fun tp!1916032 () Bool)

(declare-fun tp!1916030 () Bool)

(assert (=> b!6950572 (= e!4180325 (and tp!1916032 tp!1916030))))

(declare-fun b!6950573 () Bool)

(declare-fun tp!1916037 () Bool)

(assert (=> b!6950573 (= e!4180322 (and tp_is_empty!43257 tp!1916037))))

(declare-fun b!6950574 () Bool)

(declare-fun tp!1916036 () Bool)

(assert (=> b!6950574 (= e!4180324 (and tp_is_empty!43257 tp!1916036))))

(declare-fun b!6950575 () Bool)

(declare-fun res!2835635 () Bool)

(assert (=> b!6950575 (=> (not res!2835635) (not e!4180323))))

(assert (=> b!6950575 (= res!2835635 (not (Exists!4012 lambda!396345)))))

(declare-fun b!6950576 () Bool)

(declare-fun tp!1916035 () Bool)

(assert (=> b!6950576 (= e!4180321 (and tp_is_empty!43257 tp!1916035))))

(declare-fun b!6950577 () Bool)

(declare-fun res!2835632 () Bool)

(assert (=> b!6950577 (=> (not res!2835632) (not e!4180323))))

(declare-fun nullable!6829 (Regex!17016) Bool)

(assert (=> b!6950577 (= res!2835632 (not (nullable!6829 rInner!765)))))

(assert (= (and start!667148 res!2835633) b!6950577))

(assert (= (and b!6950577 res!2835632) b!6950567))

(assert (= (and b!6950567 res!2835631) b!6950575))

(assert (= (and b!6950575 res!2835635) b!6950566))

(assert (= (and b!6950566 res!2835634) b!6950570))

(assert (= (and start!667148 (is-ElementMatch!17016 rInner!765)) b!6950571))

(assert (= (and start!667148 (is-Concat!25861 rInner!765)) b!6950568))

(assert (= (and start!667148 (is-Star!17016 rInner!765)) b!6950569))

(assert (= (and start!667148 (is-Union!17016 rInner!765)) b!6950572))

(declare-fun s!10388 () List!66769)

(assert (= (and start!667148 (is-Cons!66645 s!10388)) b!6950574))

(assert (= (and start!667148 (is-Cons!66645 (_1!37174 cut!50))) b!6950573))

(assert (= (and start!667148 (is-Cons!66645 (_2!37174 cut!50))) b!6950576))

(declare-fun m!7652216 () Bool)

(assert (=> start!667148 m!7652216))

(declare-fun m!7652218 () Bool)

(assert (=> b!6950575 m!7652218))

(assert (=> b!6950567 m!7652218))

(declare-fun m!7652220 () Bool)

(assert (=> b!6950577 m!7652220))

(declare-fun m!7652222 () Bool)

(assert (=> b!6950570 m!7652222))

(declare-fun m!7652224 () Bool)

(assert (=> b!6950566 m!7652224))

(push 1)

(assert (not b!6950566))

(assert tp_is_empty!43257)

(assert (not b!6950572))

(assert (not start!667148))

(assert (not b!6950576))

(assert (not b!6950577))

(assert (not b!6950574))

(assert (not b!6950570))

(assert (not b!6950568))

(assert (not b!6950573))

(assert (not b!6950569))

(assert (not b!6950575))

(assert (not b!6950567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


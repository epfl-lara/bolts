; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732902 () Bool)

(assert start!732902)

(declare-fun b!7601470 () Bool)

(assert (=> b!7601470 true))

(assert (=> b!7601470 true))

(assert (=> b!7601470 true))

(declare-fun bs!1942421 () Bool)

(declare-fun b!7601467 () Bool)

(assert (= bs!1942421 (and b!7601467 b!7601470)))

(declare-fun lambda!467685 () Int)

(declare-fun lambda!467684 () Int)

(assert (=> bs!1942421 (not (= lambda!467685 lambda!467684))))

(assert (=> b!7601467 true))

(assert (=> b!7601467 true))

(assert (=> b!7601467 true))

(declare-fun b!7601466 () Bool)

(declare-fun e!4522291 () Bool)

(declare-fun tp_is_empty!50667 () Bool)

(assert (=> b!7601466 (= e!4522291 tp_is_empty!50667)))

(declare-fun res!3043652 () Bool)

(declare-fun e!4522292 () Bool)

(assert (=> b!7601467 (=> (not res!3043652) (not e!4522292))))

(declare-fun Exists!4384 (Int) Bool)

(assert (=> b!7601467 (= res!3043652 (Exists!4384 lambda!467685))))

(declare-fun b!7601468 () Bool)

(declare-fun tp!2216389 () Bool)

(declare-fun tp!2216390 () Bool)

(assert (=> b!7601468 (= e!4522291 (and tp!2216389 tp!2216390))))

(declare-fun b!7601469 () Bool)

(declare-fun tp!2216392 () Bool)

(assert (=> b!7601469 (= e!4522291 tp!2216392)))

(declare-fun res!3043655 () Bool)

(assert (=> start!732902 (=> (not res!3043655) (not e!4522292))))

(declare-datatypes ((C!40638 0))(
  ( (C!40639 (val!30759 Int)) )
))
(declare-datatypes ((Regex!20156 0))(
  ( (ElementMatch!20156 (c!1402245 C!40638)) (Concat!29001 (regOne!40824 Regex!20156) (regTwo!40824 Regex!20156)) (EmptyExpr!20156) (Star!20156 (reg!20485 Regex!20156)) (EmptyLang!20156) (Union!20156 (regOne!40825 Regex!20156) (regTwo!40825 Regex!20156)) )
))
(declare-fun r1!3349 () Regex!20156)

(declare-fun validRegex!10584 (Regex!20156) Bool)

(assert (=> start!732902 (= res!3043655 (validRegex!10584 r1!3349))))

(assert (=> start!732902 e!4522292))

(declare-fun e!4522293 () Bool)

(assert (=> start!732902 e!4522293))

(assert (=> start!732902 e!4522291))

(declare-fun e!4522290 () Bool)

(assert (=> start!732902 e!4522290))

(declare-fun res!3043654 () Bool)

(assert (=> b!7601470 (=> (not res!3043654) (not e!4522292))))

(assert (=> b!7601470 (= res!3043654 (not (Exists!4384 lambda!467684)))))

(declare-fun b!7601471 () Bool)

(assert (=> b!7601471 (= e!4522292 (not true))))

(declare-datatypes ((List!73039 0))(
  ( (Nil!72915) (Cons!72915 (h!79363 C!40638) (t!387774 List!73039)) )
))
(declare-datatypes ((tuple2!69026 0))(
  ( (tuple2!69027 (_1!37816 List!73039) (_2!37816 List!73039)) )
))
(declare-fun lt!2654347 () tuple2!69026)

(declare-fun matchR!9726 (Regex!20156 List!73039) Bool)

(declare-fun matchRSpec!4441 (Regex!20156 List!73039) Bool)

(assert (=> b!7601471 (= (matchR!9726 r1!3349 (_1!37816 lt!2654347)) (matchRSpec!4441 r1!3349 (_1!37816 lt!2654347)))))

(declare-datatypes ((Unit!167212 0))(
  ( (Unit!167213) )
))
(declare-fun lt!2654348 () Unit!167212)

(declare-fun mainMatchTheorem!4435 (Regex!20156 List!73039) Unit!167212)

(assert (=> b!7601471 (= lt!2654348 (mainMatchTheorem!4435 r1!3349 (_1!37816 lt!2654347)))))

(declare-fun pickWitness!407 (Int) tuple2!69026)

(assert (=> b!7601471 (= lt!2654347 (pickWitness!407 lambda!467685))))

(declare-fun b!7601472 () Bool)

(declare-fun tp!2216391 () Bool)

(declare-fun tp!2216388 () Bool)

(assert (=> b!7601472 (= e!4522293 (and tp!2216391 tp!2216388))))

(declare-fun b!7601473 () Bool)

(declare-fun res!3043651 () Bool)

(assert (=> b!7601473 (=> (not res!3043651) (not e!4522292))))

(declare-fun r2!3249 () Regex!20156)

(assert (=> b!7601473 (= res!3043651 (validRegex!10584 r2!3249))))

(declare-fun b!7601474 () Bool)

(declare-fun tp!2216395 () Bool)

(declare-fun tp!2216393 () Bool)

(assert (=> b!7601474 (= e!4522293 (and tp!2216395 tp!2216393))))

(declare-fun b!7601475 () Bool)

(declare-fun tp!2216394 () Bool)

(assert (=> b!7601475 (= e!4522290 (and tp_is_empty!50667 tp!2216394))))

(declare-fun b!7601476 () Bool)

(declare-fun tp!2216396 () Bool)

(assert (=> b!7601476 (= e!4522293 tp!2216396)))

(declare-fun b!7601477 () Bool)

(declare-fun res!3043653 () Bool)

(assert (=> b!7601477 (=> (not res!3043653) (not e!4522292))))

(assert (=> b!7601477 (= res!3043653 (not (Exists!4384 lambda!467684)))))

(declare-fun b!7601478 () Bool)

(declare-fun tp!2216386 () Bool)

(declare-fun tp!2216387 () Bool)

(assert (=> b!7601478 (= e!4522291 (and tp!2216386 tp!2216387))))

(declare-fun b!7601479 () Bool)

(assert (=> b!7601479 (= e!4522293 tp_is_empty!50667)))

(assert (= (and start!732902 res!3043655) b!7601473))

(assert (= (and b!7601473 res!3043651) b!7601470))

(assert (= (and b!7601470 res!3043654) b!7601477))

(assert (= (and b!7601477 res!3043653) b!7601467))

(assert (= (and b!7601467 res!3043652) b!7601471))

(assert (= (and start!732902 (is-ElementMatch!20156 r1!3349)) b!7601479))

(assert (= (and start!732902 (is-Concat!29001 r1!3349)) b!7601472))

(assert (= (and start!732902 (is-Star!20156 r1!3349)) b!7601476))

(assert (= (and start!732902 (is-Union!20156 r1!3349)) b!7601474))

(assert (= (and start!732902 (is-ElementMatch!20156 r2!3249)) b!7601466))

(assert (= (and start!732902 (is-Concat!29001 r2!3249)) b!7601468))

(assert (= (and start!732902 (is-Star!20156 r2!3249)) b!7601469))

(assert (= (and start!732902 (is-Union!20156 r2!3249)) b!7601478))

(declare-fun s!10235 () List!73039)

(assert (= (and start!732902 (is-Cons!72915 s!10235)) b!7601475))

(declare-fun m!8145150 () Bool)

(assert (=> b!7601477 m!8145150))

(declare-fun m!8145152 () Bool)

(assert (=> b!7601473 m!8145152))

(declare-fun m!8145154 () Bool)

(assert (=> b!7601471 m!8145154))

(declare-fun m!8145156 () Bool)

(assert (=> b!7601471 m!8145156))

(declare-fun m!8145158 () Bool)

(assert (=> b!7601471 m!8145158))

(declare-fun m!8145160 () Bool)

(assert (=> b!7601471 m!8145160))

(declare-fun m!8145162 () Bool)

(assert (=> start!732902 m!8145162))

(assert (=> b!7601470 m!8145150))

(declare-fun m!8145164 () Bool)

(assert (=> b!7601467 m!8145164))

(push 1)

(assert (not b!7601473))

(assert tp_is_empty!50667)

(assert (not b!7601474))

(assert (not start!732902))

(assert (not b!7601477))

(assert (not b!7601471))

(assert (not b!7601476))

(assert (not b!7601468))

(assert (not b!7601472))

(assert (not b!7601469))

(assert (not b!7601467))

(assert (not b!7601470))

(assert (not b!7601475))

(assert (not b!7601478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


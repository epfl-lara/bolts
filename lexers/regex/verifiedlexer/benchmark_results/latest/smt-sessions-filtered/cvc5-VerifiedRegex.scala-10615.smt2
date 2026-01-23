; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545524 () Bool)

(assert start!545524)

(declare-fun b!5156480 () Bool)

(declare-fun e!3213872 () Bool)

(declare-fun tp!1443559 () Bool)

(assert (=> b!5156480 (= e!3213872 tp!1443559)))

(declare-fun b!5156481 () Bool)

(declare-fun e!3213874 () Bool)

(declare-datatypes ((C!29306 0))(
  ( (C!29307 (val!24305 Int)) )
))
(declare-datatypes ((Regex!14520 0))(
  ( (ElementMatch!14520 (c!887529 C!29306)) (Concat!23365 (regOne!29552 Regex!14520) (regTwo!29552 Regex!14520)) (EmptyExpr!14520) (Star!14520 (reg!14849 Regex!14520)) (EmptyLang!14520) (Union!14520 (regOne!29553 Regex!14520) (regTwo!29553 Regex!14520)) )
))
(declare-fun expr!117 () Regex!14520)

(declare-fun validRegex!6375 (Regex!14520) Bool)

(assert (=> b!5156481 (= e!3213874 (not (validRegex!6375 expr!117)))))

(declare-fun b!5156482 () Bool)

(declare-fun e!3213871 () Bool)

(declare-fun nullable!4876 (Regex!14520) Bool)

(assert (=> b!5156482 (= e!3213871 (not (nullable!4876 (regOne!29552 expr!117))))))

(declare-fun b!5156483 () Bool)

(declare-fun res!2193368 () Bool)

(assert (=> b!5156483 (=> (not res!2193368) (not e!3213874))))

(assert (=> b!5156483 (= res!2193368 e!3213871)))

(declare-fun res!2193365 () Bool)

(assert (=> b!5156483 (=> res!2193365 e!3213871)))

(assert (=> b!5156483 (= res!2193365 (not (is-Concat!23365 expr!117)))))

(declare-fun b!5156484 () Bool)

(declare-fun e!3213875 () Bool)

(declare-fun tp!1443558 () Bool)

(declare-fun tp!1443563 () Bool)

(assert (=> b!5156484 (= e!3213875 (and tp!1443558 tp!1443563))))

(declare-fun b!5156485 () Bool)

(declare-fun tp_is_empty!38189 () Bool)

(assert (=> b!5156485 (= e!3213875 tp_is_empty!38189)))

(declare-fun b!5156486 () Bool)

(declare-fun res!2193366 () Bool)

(assert (=> b!5156486 (=> (not res!2193366) (not e!3213874))))

(assert (=> b!5156486 (= res!2193366 (and (not (is-Concat!23365 expr!117)) (is-Star!14520 expr!117)))))

(declare-fun b!5156487 () Bool)

(declare-fun res!2193367 () Bool)

(assert (=> b!5156487 (=> (not res!2193367) (not e!3213874))))

(declare-fun e!3213873 () Bool)

(assert (=> b!5156487 (= res!2193367 e!3213873)))

(declare-fun res!2193363 () Bool)

(assert (=> b!5156487 (=> res!2193363 e!3213873)))

(declare-fun lostCause!1592 (Regex!14520) Bool)

(assert (=> b!5156487 (= res!2193363 (lostCause!1592 expr!117))))

(declare-fun b!5156488 () Bool)

(declare-fun tp!1443562 () Bool)

(declare-fun tp!1443561 () Bool)

(assert (=> b!5156488 (= e!3213875 (and tp!1443562 tp!1443561))))

(declare-fun b!5156489 () Bool)

(declare-datatypes ((List!59959 0))(
  ( (Nil!59835) (Cons!59835 (h!66283 Regex!14520) (t!373022 List!59959)) )
))
(declare-datatypes ((Context!7808 0))(
  ( (Context!7809 (exprs!4404 List!59959)) )
))
(declare-fun ctx!100 () Context!7808)

(declare-fun lostCause!1593 (Context!7808) Bool)

(assert (=> b!5156489 (= e!3213873 (lostCause!1593 ctx!100))))

(declare-fun res!2193364 () Bool)

(assert (=> start!545524 (=> (not res!2193364) (not e!3213874))))

(assert (=> start!545524 (= res!2193364 (validRegex!6375 expr!117))))

(assert (=> start!545524 e!3213874))

(assert (=> start!545524 e!3213875))

(declare-fun inv!79482 (Context!7808) Bool)

(assert (=> start!545524 (and (inv!79482 ctx!100) e!3213872)))

(assert (=> start!545524 tp_is_empty!38189))

(declare-fun b!5156490 () Bool)

(declare-fun res!2193369 () Bool)

(assert (=> b!5156490 (=> (not res!2193369) (not e!3213874))))

(declare-fun a!1296 () C!29306)

(assert (=> b!5156490 (= res!2193369 (and (or (not (is-ElementMatch!14520 expr!117)) (not (= (c!887529 expr!117) a!1296))) (not (is-Union!14520 expr!117))))))

(declare-fun b!5156491 () Bool)

(declare-fun tp!1443560 () Bool)

(assert (=> b!5156491 (= e!3213875 tp!1443560)))

(assert (= (and start!545524 res!2193364) b!5156487))

(assert (= (and b!5156487 (not res!2193363)) b!5156489))

(assert (= (and b!5156487 res!2193367) b!5156490))

(assert (= (and b!5156490 res!2193369) b!5156483))

(assert (= (and b!5156483 (not res!2193365)) b!5156482))

(assert (= (and b!5156483 res!2193368) b!5156486))

(assert (= (and b!5156486 res!2193366) b!5156481))

(assert (= (and start!545524 (is-ElementMatch!14520 expr!117)) b!5156485))

(assert (= (and start!545524 (is-Concat!23365 expr!117)) b!5156488))

(assert (= (and start!545524 (is-Star!14520 expr!117)) b!5156491))

(assert (= (and start!545524 (is-Union!14520 expr!117)) b!5156484))

(assert (= start!545524 b!5156480))

(declare-fun m!6210948 () Bool)

(assert (=> b!5156487 m!6210948))

(declare-fun m!6210950 () Bool)

(assert (=> b!5156482 m!6210950))

(declare-fun m!6210952 () Bool)

(assert (=> start!545524 m!6210952))

(declare-fun m!6210954 () Bool)

(assert (=> start!545524 m!6210954))

(assert (=> b!5156481 m!6210952))

(declare-fun m!6210956 () Bool)

(assert (=> b!5156489 m!6210956))

(push 1)

(assert (not b!5156481))

(assert (not start!545524))

(assert (not b!5156480))

(assert (not b!5156482))

(assert (not b!5156487))

(assert (not b!5156491))

(assert (not b!5156488))

(assert (not b!5156484))

(assert tp_is_empty!38189)

(assert (not b!5156489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


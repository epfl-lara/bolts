; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486154 () Bool)

(assert start!486154)

(declare-fun b!4755494 () Bool)

(declare-fun res!2017435 () Bool)

(declare-fun e!2966667 () Bool)

(assert (=> b!4755494 (=> (not res!2017435) (not e!2966667))))

(declare-datatypes ((K!14678 0))(
  ( (K!14679 (val!20013 Int)) )
))
(declare-datatypes ((V!14924 0))(
  ( (V!14925 (val!20014 Int)) )
))
(declare-datatypes ((tuple2!54982 0))(
  ( (tuple2!54983 (_1!30785 K!14678) (_2!30785 V!14924)) )
))
(declare-datatypes ((List!53275 0))(
  ( (Nil!53151) (Cons!53151 (h!59548 tuple2!54982) (t!360619 List!53275)) )
))
(declare-fun l!13115 () List!53275)

(assert (=> b!4755494 (= res!2017435 (is-Cons!53151 l!13115))))

(declare-fun b!4755495 () Bool)

(assert (=> b!4755495 (= e!2966667 (not true))))

(declare-datatypes ((ListMap!5667 0))(
  ( (ListMap!5668 (toList!6179 List!53275)) )
))
(declare-fun lt!1922338 () ListMap!5667)

(declare-fun lt!1922336 () ListMap!5667)

(declare-fun eq!1274 (ListMap!5667 ListMap!5667) Bool)

(assert (=> b!4755495 (eq!1274 lt!1922338 lt!1922336)))

(declare-datatypes ((Unit!137548 0))(
  ( (Unit!137549) )
))
(declare-fun lt!1922337 () Unit!137548)

(declare-fun lhm1!51 () ListMap!5667)

(declare-fun lhm2!51 () ListMap!5667)

(declare-fun lemmaAddToEqMapsPreservesEq!123 (ListMap!5667 ListMap!5667 K!14678 V!14924) Unit!137548)

(assert (=> b!4755495 (= lt!1922337 (lemmaAddToEqMapsPreservesEq!123 lhm1!51 lhm2!51 (_1!30785 (h!59548 l!13115)) (_2!30785 (h!59548 l!13115))))))

(declare-fun +!2439 (ListMap!5667 tuple2!54982) ListMap!5667)

(assert (=> b!4755495 (= lt!1922336 (+!2439 lhm2!51 (h!59548 l!13115)))))

(assert (=> b!4755495 (= lt!1922338 (+!2439 lhm1!51 (h!59548 l!13115)))))

(declare-fun res!2017436 () Bool)

(assert (=> start!486154 (=> (not res!2017436) (not e!2966667))))

(declare-fun noDuplicateKeys!2211 (List!53275) Bool)

(assert (=> start!486154 (= res!2017436 (noDuplicateKeys!2211 l!13115))))

(assert (=> start!486154 e!2966667))

(declare-fun e!2966666 () Bool)

(assert (=> start!486154 e!2966666))

(declare-fun e!2966665 () Bool)

(declare-fun inv!68549 (ListMap!5667) Bool)

(assert (=> start!486154 (and (inv!68549 lhm1!51) e!2966665)))

(declare-fun e!2966668 () Bool)

(assert (=> start!486154 (and (inv!68549 lhm2!51) e!2966668)))

(declare-fun b!4755496 () Bool)

(declare-fun tp!1350749 () Bool)

(assert (=> b!4755496 (= e!2966665 tp!1350749)))

(declare-fun b!4755497 () Bool)

(declare-fun tp!1350750 () Bool)

(assert (=> b!4755497 (= e!2966668 tp!1350750)))

(declare-fun b!4755498 () Bool)

(declare-fun tp_is_empty!32137 () Bool)

(declare-fun tp_is_empty!32139 () Bool)

(declare-fun tp!1350748 () Bool)

(assert (=> b!4755498 (= e!2966666 (and tp_is_empty!32137 tp_is_empty!32139 tp!1350748))))

(declare-fun b!4755499 () Bool)

(declare-fun res!2017434 () Bool)

(assert (=> b!4755499 (=> (not res!2017434) (not e!2966667))))

(assert (=> b!4755499 (= res!2017434 (eq!1274 lhm1!51 lhm2!51))))

(assert (= (and start!486154 res!2017436) b!4755499))

(assert (= (and b!4755499 res!2017434) b!4755494))

(assert (= (and b!4755494 res!2017435) b!4755495))

(assert (= (and start!486154 (is-Cons!53151 l!13115)) b!4755498))

(assert (= start!486154 b!4755496))

(assert (= start!486154 b!4755497))

(declare-fun m!5725285 () Bool)

(assert (=> b!4755495 m!5725285))

(declare-fun m!5725287 () Bool)

(assert (=> b!4755495 m!5725287))

(declare-fun m!5725289 () Bool)

(assert (=> b!4755495 m!5725289))

(declare-fun m!5725291 () Bool)

(assert (=> b!4755495 m!5725291))

(declare-fun m!5725293 () Bool)

(assert (=> start!486154 m!5725293))

(declare-fun m!5725295 () Bool)

(assert (=> start!486154 m!5725295))

(declare-fun m!5725297 () Bool)

(assert (=> start!486154 m!5725297))

(declare-fun m!5725299 () Bool)

(assert (=> b!4755499 m!5725299))

(push 1)

(assert tp_is_empty!32137)

(assert (not start!486154))

(assert (not b!4755498))

(assert (not b!4755496))

(assert tp_is_empty!32139)

(assert (not b!4755495))

(assert (not b!4755499))

(assert (not b!4755497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


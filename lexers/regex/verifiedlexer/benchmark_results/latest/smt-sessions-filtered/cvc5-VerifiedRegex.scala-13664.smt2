; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732834 () Bool)

(assert start!732834)

(declare-fun b!7599464 () Bool)

(assert (=> b!7599464 true))

(assert (=> b!7599464 true))

(assert (=> b!7599464 true))

(declare-fun b!7599460 () Bool)

(declare-fun e!4521492 () Bool)

(declare-fun tp!2215136 () Bool)

(assert (=> b!7599460 (= e!4521492 tp!2215136)))

(declare-fun b!7599461 () Bool)

(declare-fun e!4521495 () Bool)

(declare-fun tp!2215141 () Bool)

(assert (=> b!7599461 (= e!4521495 tp!2215141)))

(declare-fun b!7599462 () Bool)

(declare-fun tp_is_empty!50599 () Bool)

(assert (=> b!7599462 (= e!4521492 tp_is_empty!50599)))

(declare-fun res!3042832 () Bool)

(declare-fun e!4521494 () Bool)

(assert (=> start!732834 (=> (not res!3042832) (not e!4521494))))

(declare-datatypes ((C!40570 0))(
  ( (C!40571 (val!30725 Int)) )
))
(declare-datatypes ((Regex!20122 0))(
  ( (ElementMatch!20122 (c!1402211 C!40570)) (Concat!28967 (regOne!40756 Regex!20122) (regTwo!40756 Regex!20122)) (EmptyExpr!20122) (Star!20122 (reg!20451 Regex!20122)) (EmptyLang!20122) (Union!20122 (regOne!40757 Regex!20122) (regTwo!40757 Regex!20122)) )
))
(declare-fun r1!3349 () Regex!20122)

(declare-fun validRegex!10550 (Regex!20122) Bool)

(assert (=> start!732834 (= res!3042832 (validRegex!10550 r1!3349))))

(assert (=> start!732834 e!4521494))

(assert (=> start!732834 e!4521492))

(assert (=> start!732834 e!4521495))

(declare-fun e!4521493 () Bool)

(assert (=> start!732834 e!4521493))

(declare-fun b!7599463 () Bool)

(assert (=> b!7599463 (= e!4521495 tp_is_empty!50599)))

(declare-fun res!3042833 () Bool)

(assert (=> b!7599464 (=> (not res!3042833) (not e!4521494))))

(declare-fun lambda!467468 () Int)

(declare-fun Exists!4350 (Int) Bool)

(assert (=> b!7599464 (= res!3042833 (Exists!4350 lambda!467468))))

(declare-fun b!7599465 () Bool)

(assert (=> b!7599465 (= e!4521494 false)))

(declare-datatypes ((List!73005 0))(
  ( (Nil!72881) (Cons!72881 (h!79329 C!40570) (t!387740 List!73005)) )
))
(declare-fun lt!2654047 () List!73005)

(declare-datatypes ((tuple2!68962 0))(
  ( (tuple2!68963 (_1!37784 List!73005) (_2!37784 List!73005)) )
))
(declare-fun lt!2654048 () tuple2!68962)

(declare-fun ++!17528 (List!73005 List!73005) List!73005)

(assert (=> b!7599465 (= lt!2654047 (++!17528 (_1!37784 lt!2654048) (_2!37784 lt!2654048)))))

(declare-fun pickWitness!387 (Int) tuple2!68962)

(assert (=> b!7599465 (= lt!2654048 (pickWitness!387 lambda!467468))))

(declare-fun b!7599466 () Bool)

(declare-fun tp!2215139 () Bool)

(declare-fun tp!2215133 () Bool)

(assert (=> b!7599466 (= e!4521492 (and tp!2215139 tp!2215133))))

(declare-fun b!7599467 () Bool)

(declare-fun tp!2215135 () Bool)

(declare-fun tp!2215132 () Bool)

(assert (=> b!7599467 (= e!4521495 (and tp!2215135 tp!2215132))))

(declare-fun b!7599468 () Bool)

(declare-fun tp!2215137 () Bool)

(assert (=> b!7599468 (= e!4521493 (and tp_is_empty!50599 tp!2215137))))

(declare-fun b!7599469 () Bool)

(declare-fun tp!2215134 () Bool)

(declare-fun tp!2215142 () Bool)

(assert (=> b!7599469 (= e!4521495 (and tp!2215134 tp!2215142))))

(declare-fun b!7599470 () Bool)

(declare-fun res!3042831 () Bool)

(assert (=> b!7599470 (=> (not res!3042831) (not e!4521494))))

(declare-fun r2!3249 () Regex!20122)

(assert (=> b!7599470 (= res!3042831 (validRegex!10550 r2!3249))))

(declare-fun b!7599471 () Bool)

(declare-fun tp!2215140 () Bool)

(declare-fun tp!2215138 () Bool)

(assert (=> b!7599471 (= e!4521492 (and tp!2215140 tp!2215138))))

(assert (= (and start!732834 res!3042832) b!7599470))

(assert (= (and b!7599470 res!3042831) b!7599464))

(assert (= (and b!7599464 res!3042833) b!7599465))

(assert (= (and start!732834 (is-ElementMatch!20122 r1!3349)) b!7599462))

(assert (= (and start!732834 (is-Concat!28967 r1!3349)) b!7599471))

(assert (= (and start!732834 (is-Star!20122 r1!3349)) b!7599460))

(assert (= (and start!732834 (is-Union!20122 r1!3349)) b!7599466))

(assert (= (and start!732834 (is-ElementMatch!20122 r2!3249)) b!7599463))

(assert (= (and start!732834 (is-Concat!28967 r2!3249)) b!7599467))

(assert (= (and start!732834 (is-Star!20122 r2!3249)) b!7599461))

(assert (= (and start!732834 (is-Union!20122 r2!3249)) b!7599469))

(declare-fun s!10235 () List!73005)

(assert (= (and start!732834 (is-Cons!72881 s!10235)) b!7599468))

(declare-fun m!8144610 () Bool)

(assert (=> start!732834 m!8144610))

(declare-fun m!8144612 () Bool)

(assert (=> b!7599464 m!8144612))

(declare-fun m!8144614 () Bool)

(assert (=> b!7599465 m!8144614))

(declare-fun m!8144616 () Bool)

(assert (=> b!7599465 m!8144616))

(declare-fun m!8144618 () Bool)

(assert (=> b!7599470 m!8144618))

(push 1)

(assert (not b!7599465))

(assert (not b!7599467))

(assert (not b!7599461))

(assert (not b!7599466))

(assert (not start!732834))

(assert (not b!7599460))

(assert (not b!7599469))

(assert (not b!7599464))

(assert (not b!7599471))

(assert (not b!7599468))

(assert (not b!7599470))

(assert tp_is_empty!50599)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


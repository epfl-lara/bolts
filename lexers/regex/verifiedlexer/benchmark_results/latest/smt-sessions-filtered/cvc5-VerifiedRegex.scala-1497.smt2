; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79564 () Bool)

(assert start!79564)

(declare-fun res!400393 () Bool)

(declare-fun e!578064 () Bool)

(assert (=> start!79564 (=> (not res!400393) (not e!578064))))

(declare-datatypes ((C!5074 0))(
  ( (C!5075 (val!2785 Int)) )
))
(declare-datatypes ((Regex!2252 0))(
  ( (ElementMatch!2252 (c!142333 C!5074)) (Concat!4085 (regOne!5016 Regex!2252) (regTwo!5016 Regex!2252)) (EmptyExpr!2252) (Star!2252 (reg!2581 Regex!2252)) (EmptyLang!2252) (Union!2252 (regOne!5017 Regex!2252) (regTwo!5017 Regex!2252)) )
))
(declare-fun r!15766 () Regex!2252)

(declare-fun validRegex!721 (Regex!2252) Bool)

(assert (=> start!79564 (= res!400393 (validRegex!721 r!15766))))

(assert (=> start!79564 e!578064))

(declare-fun e!578066 () Bool)

(assert (=> start!79564 e!578066))

(declare-fun e!578065 () Bool)

(assert (=> start!79564 e!578065))

(declare-fun b!880448 () Bool)

(declare-fun tp!278135 () Bool)

(declare-fun tp!278136 () Bool)

(assert (=> b!880448 (= e!578066 (and tp!278135 tp!278136))))

(declare-fun b!880449 () Bool)

(declare-fun tp!278134 () Bool)

(assert (=> b!880449 (= e!578066 tp!278134)))

(declare-fun b!880450 () Bool)

(declare-fun tp!278133 () Bool)

(declare-fun tp!278138 () Bool)

(assert (=> b!880450 (= e!578066 (and tp!278133 tp!278138))))

(declare-fun b!880451 () Bool)

(declare-fun tp_is_empty!4147 () Bool)

(assert (=> b!880451 (= e!578066 tp_is_empty!4147)))

(declare-fun b!880452 () Bool)

(declare-fun tp!278137 () Bool)

(assert (=> b!880452 (= e!578065 (and tp_is_empty!4147 tp!278137))))

(declare-fun b!880453 () Bool)

(assert (=> b!880453 (= e!578064 (not true))))

(declare-datatypes ((List!9482 0))(
  ( (Nil!9466) (Cons!9466 (h!14867 C!5074) (t!100528 List!9482)) )
))
(declare-fun s!10566 () List!9482)

(declare-fun matchR!790 (Regex!2252 List!9482) Bool)

(declare-fun matchRSpec!53 (Regex!2252 List!9482) Bool)

(assert (=> b!880453 (= (matchR!790 r!15766 s!10566) (matchRSpec!53 r!15766 s!10566))))

(declare-datatypes ((Unit!14083 0))(
  ( (Unit!14084) )
))
(declare-fun lt!330574 () Unit!14083)

(declare-fun mainMatchTheorem!53 (Regex!2252 List!9482) Unit!14083)

(assert (=> b!880453 (= lt!330574 (mainMatchTheorem!53 r!15766 s!10566))))

(assert (= (and start!79564 res!400393) b!880453))

(assert (= (and start!79564 (is-ElementMatch!2252 r!15766)) b!880451))

(assert (= (and start!79564 (is-Concat!4085 r!15766)) b!880448))

(assert (= (and start!79564 (is-Star!2252 r!15766)) b!880449))

(assert (= (and start!79564 (is-Union!2252 r!15766)) b!880450))

(assert (= (and start!79564 (is-Cons!9466 s!10566)) b!880452))

(declare-fun m!1129091 () Bool)

(assert (=> start!79564 m!1129091))

(declare-fun m!1129093 () Bool)

(assert (=> b!880453 m!1129093))

(declare-fun m!1129095 () Bool)

(assert (=> b!880453 m!1129095))

(declare-fun m!1129097 () Bool)

(assert (=> b!880453 m!1129097))

(push 1)

(assert (not b!880452))

(assert (not b!880453))

(assert tp_is_empty!4147)

(assert (not b!880449))

(assert (not start!79564))

(assert (not b!880450))

(assert (not b!880448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732818 () Bool)

(assert start!732818)

(declare-fun b!7599070 () Bool)

(declare-fun e!4521346 () Bool)

(declare-fun tp!2214839 () Bool)

(declare-fun tp!2214844 () Bool)

(assert (=> b!7599070 (= e!4521346 (and tp!2214839 tp!2214844))))

(declare-fun b!7599071 () Bool)

(declare-fun tp!2214843 () Bool)

(declare-fun tp!2214840 () Bool)

(assert (=> b!7599071 (= e!4521346 (and tp!2214843 tp!2214840))))

(declare-fun b!7599072 () Bool)

(declare-fun tp!2214848 () Bool)

(assert (=> b!7599072 (= e!4521346 tp!2214848)))

(declare-fun b!7599073 () Bool)

(declare-fun e!4521347 () Bool)

(declare-fun tp_is_empty!50583 () Bool)

(declare-fun tp!2214847 () Bool)

(assert (=> b!7599073 (= e!4521347 (and tp_is_empty!50583 tp!2214847))))

(declare-fun b!7599074 () Bool)

(declare-fun res!3042715 () Bool)

(declare-fun e!4521348 () Bool)

(assert (=> b!7599074 (=> (not res!3042715) (not e!4521348))))

(declare-datatypes ((C!40554 0))(
  ( (C!40555 (val!30717 Int)) )
))
(declare-datatypes ((List!72997 0))(
  ( (Nil!72873) (Cons!72873 (h!79321 C!40554) (t!387732 List!72997)) )
))
(declare-datatypes ((tuple2!68950 0))(
  ( (tuple2!68951 (_1!37778 List!72997) (_2!37778 List!72997)) )
))
(declare-fun cut!30 () tuple2!68950)

(declare-fun s!10235 () List!72997)

(declare-fun ++!17522 (List!72997 List!72997) List!72997)

(assert (=> b!7599074 (= res!3042715 (= (++!17522 (_1!37778 cut!30) (_2!37778 cut!30)) s!10235))))

(declare-fun res!3042713 () Bool)

(assert (=> start!732818 (=> (not res!3042713) (not e!4521348))))

(declare-datatypes ((Regex!20114 0))(
  ( (ElementMatch!20114 (c!1402203 C!40554)) (Concat!28959 (regOne!40740 Regex!20114) (regTwo!40740 Regex!20114)) (EmptyExpr!20114) (Star!20114 (reg!20443 Regex!20114)) (EmptyLang!20114) (Union!20114 (regOne!40741 Regex!20114) (regTwo!40741 Regex!20114)) )
))
(declare-fun r1!3349 () Regex!20114)

(declare-fun validRegex!10542 (Regex!20114) Bool)

(assert (=> start!732818 (= res!3042713 (validRegex!10542 r1!3349))))

(assert (=> start!732818 e!4521348))

(declare-fun e!4521344 () Bool)

(assert (=> start!732818 e!4521344))

(assert (=> start!732818 e!4521346))

(declare-fun e!4521345 () Bool)

(declare-fun e!4521349 () Bool)

(assert (=> start!732818 (and e!4521345 e!4521349)))

(assert (=> start!732818 e!4521347))

(declare-fun b!7599075 () Bool)

(declare-fun tp!2214836 () Bool)

(assert (=> b!7599075 (= e!4521344 tp!2214836)))

(declare-fun b!7599076 () Bool)

(assert (=> b!7599076 (= e!4521346 tp_is_empty!50583)))

(declare-fun b!7599077 () Bool)

(declare-fun tp!2214838 () Bool)

(assert (=> b!7599077 (= e!4521345 (and tp_is_empty!50583 tp!2214838))))

(declare-fun b!7599078 () Bool)

(declare-fun res!3042714 () Bool)

(assert (=> b!7599078 (=> (not res!3042714) (not e!4521348))))

(declare-fun r2!3249 () Regex!20114)

(assert (=> b!7599078 (= res!3042714 (validRegex!10542 r2!3249))))

(declare-fun b!7599079 () Bool)

(declare-fun tp!2214837 () Bool)

(assert (=> b!7599079 (= e!4521349 (and tp_is_empty!50583 tp!2214837))))

(declare-fun b!7599080 () Bool)

(declare-fun tp!2214846 () Bool)

(declare-fun tp!2214845 () Bool)

(assert (=> b!7599080 (= e!4521344 (and tp!2214846 tp!2214845))))

(declare-fun b!7599081 () Bool)

(assert (=> b!7599081 (= e!4521344 tp_is_empty!50583)))

(declare-fun b!7599082 () Bool)

(declare-fun tp!2214841 () Bool)

(declare-fun tp!2214842 () Bool)

(assert (=> b!7599082 (= e!4521344 (and tp!2214841 tp!2214842))))

(declare-fun b!7599083 () Bool)

(assert (=> b!7599083 (= e!4521348 false)))

(declare-fun lt!2654027 () Bool)

(declare-fun matchR!9704 (Regex!20114 List!72997) Bool)

(assert (=> b!7599083 (= lt!2654027 (matchR!9704 r1!3349 (_1!37778 cut!30)))))

(assert (= (and start!732818 res!3042713) b!7599078))

(assert (= (and b!7599078 res!3042714) b!7599074))

(assert (= (and b!7599074 res!3042715) b!7599083))

(assert (= (and start!732818 (is-ElementMatch!20114 r1!3349)) b!7599081))

(assert (= (and start!732818 (is-Concat!28959 r1!3349)) b!7599082))

(assert (= (and start!732818 (is-Star!20114 r1!3349)) b!7599075))

(assert (= (and start!732818 (is-Union!20114 r1!3349)) b!7599080))

(assert (= (and start!732818 (is-ElementMatch!20114 r2!3249)) b!7599076))

(assert (= (and start!732818 (is-Concat!28959 r2!3249)) b!7599070))

(assert (= (and start!732818 (is-Star!20114 r2!3249)) b!7599072))

(assert (= (and start!732818 (is-Union!20114 r2!3249)) b!7599071))

(assert (= (and start!732818 (is-Cons!72873 (_1!37778 cut!30))) b!7599077))

(assert (= (and start!732818 (is-Cons!72873 (_2!37778 cut!30))) b!7599079))

(assert (= (and start!732818 (is-Cons!72873 s!10235)) b!7599073))

(declare-fun m!8144546 () Bool)

(assert (=> b!7599074 m!8144546))

(declare-fun m!8144548 () Bool)

(assert (=> start!732818 m!8144548))

(declare-fun m!8144550 () Bool)

(assert (=> b!7599078 m!8144550))

(declare-fun m!8144552 () Bool)

(assert (=> b!7599083 m!8144552))

(push 1)

(assert (not b!7599082))

(assert (not b!7599072))

(assert (not b!7599083))

(assert tp_is_empty!50583)

(assert (not b!7599078))

(assert (not start!732818))

(assert (not b!7599074))

(assert (not b!7599079))

(assert (not b!7599075))

(assert (not b!7599080))

(assert (not b!7599071))

(assert (not b!7599070))

(assert (not b!7599077))

(assert (not b!7599073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


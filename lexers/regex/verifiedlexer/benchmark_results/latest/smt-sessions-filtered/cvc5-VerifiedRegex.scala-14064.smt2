; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!741940 () Bool)

(assert start!741940)

(declare-fun b!7819070 () Bool)

(declare-fun e!4626453 () Bool)

(declare-fun tp!2307129 () Bool)

(declare-fun tp!2307122 () Bool)

(assert (=> b!7819070 (= e!4626453 (and tp!2307129 tp!2307122))))

(declare-fun b!7819071 () Bool)

(declare-fun e!4626452 () Bool)

(declare-fun tp_is_empty!52199 () Bool)

(declare-fun tp!2307120 () Bool)

(assert (=> b!7819071 (= e!4626452 (and tp_is_empty!52199 tp!2307120))))

(declare-fun b!7819072 () Bool)

(declare-fun e!4626454 () Bool)

(assert (=> b!7819072 (= e!4626454 tp_is_empty!52199)))

(declare-fun b!7819073 () Bool)

(declare-fun e!4626451 () Bool)

(declare-fun tp!2307126 () Bool)

(assert (=> b!7819073 (= e!4626451 (and tp_is_empty!52199 tp!2307126))))

(declare-fun b!7819074 () Bool)

(declare-fun e!4626456 () Bool)

(assert (=> b!7819074 (= e!4626456 false)))

(declare-fun lt!2676105 () Bool)

(declare-datatypes ((C!42170 0))(
  ( (C!42171 (val!31525 Int)) )
))
(declare-datatypes ((Regex!20922 0))(
  ( (ElementMatch!20922 (c!1439271 C!42170)) (Concat!29767 (regOne!42356 Regex!20922) (regTwo!42356 Regex!20922)) (EmptyExpr!20922) (Star!20922 (reg!21251 Regex!20922)) (EmptyLang!20922) (Union!20922 (regOne!42357 Regex!20922) (regTwo!42357 Regex!20922)) )
))
(declare-fun r1!6261 () Regex!20922)

(declare-datatypes ((List!73759 0))(
  ( (Nil!73635) (Cons!73635 (h!80083 C!42170) (t!388494 List!73759)) )
))
(declare-fun s1!4101 () List!73759)

(declare-fun matchR!10378 (Regex!20922 List!73759) Bool)

(assert (=> b!7819074 (= lt!2676105 (matchR!10378 r1!6261 s1!4101))))

(declare-fun res!3112271 () Bool)

(assert (=> start!741940 (=> (not res!3112271) (not e!4626456))))

(declare-fun validRegex!11336 (Regex!20922) Bool)

(assert (=> start!741940 (= res!3112271 (validRegex!11336 r1!6261))))

(assert (=> start!741940 e!4626456))

(assert (=> start!741940 e!4626454))

(declare-fun e!4626450 () Bool)

(assert (=> start!741940 e!4626450))

(assert (=> start!741940 e!4626452))

(assert (=> start!741940 e!4626451))

(declare-fun e!4626455 () Bool)

(assert (=> start!741940 e!4626455))

(assert (=> start!741940 e!4626453))

(declare-fun e!4626457 () Bool)

(assert (=> start!741940 e!4626457))

(declare-fun b!7819075 () Bool)

(declare-fun tp!2307128 () Bool)

(declare-fun tp!2307131 () Bool)

(assert (=> b!7819075 (= e!4626454 (and tp!2307128 tp!2307131))))

(declare-fun b!7819076 () Bool)

(declare-fun res!3112270 () Bool)

(assert (=> b!7819076 (=> (not res!3112270) (not e!4626456))))

(declare-fun r2!6199 () Regex!20922)

(assert (=> b!7819076 (= res!3112270 (validRegex!11336 r2!6199))))

(declare-fun b!7819077 () Bool)

(assert (=> b!7819077 (= e!4626453 tp_is_empty!52199)))

(declare-fun b!7819078 () Bool)

(declare-fun tp!2307127 () Bool)

(assert (=> b!7819078 (= e!4626457 (and tp_is_empty!52199 tp!2307127))))

(declare-fun b!7819079 () Bool)

(declare-fun res!3112268 () Bool)

(assert (=> b!7819079 (=> (not res!3112268) (not e!4626456))))

(declare-fun s2!3721 () List!73759)

(declare-fun s!14274 () List!73759)

(declare-fun ++!17956 (List!73759 List!73759) List!73759)

(assert (=> b!7819079 (= res!3112268 (= (++!17956 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819080 () Bool)

(declare-fun tp!2307124 () Bool)

(assert (=> b!7819080 (= e!4626455 (and tp_is_empty!52199 tp!2307124))))

(declare-fun b!7819081 () Bool)

(declare-fun tp!2307118 () Bool)

(assert (=> b!7819081 (= e!4626454 tp!2307118)))

(declare-fun b!7819082 () Bool)

(declare-fun res!3112267 () Bool)

(assert (=> b!7819082 (=> (not res!3112267) (not e!4626456))))

(declare-fun s1Rec!453 () List!73759)

(declare-fun isPrefix!6272 (List!73759 List!73759) Bool)

(assert (=> b!7819082 (= res!3112267 (isPrefix!6272 s1Rec!453 s1!4101))))

(declare-fun b!7819083 () Bool)

(declare-fun tp!2307123 () Bool)

(assert (=> b!7819083 (= e!4626450 (and tp_is_empty!52199 tp!2307123))))

(declare-fun b!7819084 () Bool)

(declare-fun res!3112269 () Bool)

(assert (=> b!7819084 (=> (not res!3112269) (not e!4626456))))

(declare-fun s2Rec!453 () List!73759)

(assert (=> b!7819084 (= res!3112269 (= (++!17956 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7819085 () Bool)

(declare-fun tp!2307130 () Bool)

(assert (=> b!7819085 (= e!4626453 tp!2307130)))

(declare-fun b!7819086 () Bool)

(declare-fun tp!2307125 () Bool)

(declare-fun tp!2307132 () Bool)

(assert (=> b!7819086 (= e!4626453 (and tp!2307125 tp!2307132))))

(declare-fun b!7819087 () Bool)

(declare-fun tp!2307119 () Bool)

(declare-fun tp!2307121 () Bool)

(assert (=> b!7819087 (= e!4626454 (and tp!2307119 tp!2307121))))

(assert (= (and start!741940 res!3112271) b!7819076))

(assert (= (and b!7819076 res!3112270) b!7819079))

(assert (= (and b!7819079 res!3112268) b!7819082))

(assert (= (and b!7819082 res!3112267) b!7819084))

(assert (= (and b!7819084 res!3112269) b!7819074))

(assert (= (and start!741940 (is-ElementMatch!20922 r2!6199)) b!7819072))

(assert (= (and start!741940 (is-Concat!29767 r2!6199)) b!7819075))

(assert (= (and start!741940 (is-Star!20922 r2!6199)) b!7819081))

(assert (= (and start!741940 (is-Union!20922 r2!6199)) b!7819087))

(assert (= (and start!741940 (is-Cons!73635 s1!4101)) b!7819083))

(assert (= (and start!741940 (is-Cons!73635 s2!3721)) b!7819071))

(assert (= (and start!741940 (is-Cons!73635 s2Rec!453)) b!7819073))

(assert (= (and start!741940 (is-Cons!73635 s!14274)) b!7819080))

(assert (= (and start!741940 (is-ElementMatch!20922 r1!6261)) b!7819077))

(assert (= (and start!741940 (is-Concat!29767 r1!6261)) b!7819086))

(assert (= (and start!741940 (is-Star!20922 r1!6261)) b!7819085))

(assert (= (and start!741940 (is-Union!20922 r1!6261)) b!7819070))

(assert (= (and start!741940 (is-Cons!73635 s1Rec!453)) b!7819078))

(declare-fun m!8244402 () Bool)

(assert (=> start!741940 m!8244402))

(declare-fun m!8244404 () Bool)

(assert (=> b!7819079 m!8244404))

(declare-fun m!8244406 () Bool)

(assert (=> b!7819076 m!8244406))

(declare-fun m!8244408 () Bool)

(assert (=> b!7819084 m!8244408))

(declare-fun m!8244410 () Bool)

(assert (=> b!7819082 m!8244410))

(declare-fun m!8244412 () Bool)

(assert (=> b!7819074 m!8244412))

(push 1)

(assert (not b!7819073))

(assert tp_is_empty!52199)

(assert (not b!7819070))

(assert (not b!7819085))

(assert (not b!7819076))

(assert (not b!7819084))

(assert (not b!7819087))

(assert (not start!741940))

(assert (not b!7819075))

(assert (not b!7819083))

(assert (not b!7819074))

(assert (not b!7819080))

(assert (not b!7819082))

(assert (not b!7819086))

(assert (not b!7819078))

(assert (not b!7819071))

(assert (not b!7819081))

(assert (not b!7819079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


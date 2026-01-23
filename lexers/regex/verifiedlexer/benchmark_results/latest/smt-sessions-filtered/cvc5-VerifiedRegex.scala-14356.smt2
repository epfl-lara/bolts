; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749460 () Bool)

(assert start!749460)

(declare-fun b!7940325 () Bool)

(declare-fun e!4685182 () Bool)

(declare-fun tp_is_empty!53327 () Bool)

(declare-fun tp!2360875 () Bool)

(assert (=> b!7940325 (= e!4685182 (and tp_is_empty!53327 tp!2360875))))

(declare-fun b!7940326 () Bool)

(declare-fun e!4685181 () Bool)

(declare-fun tp!2360873 () Bool)

(declare-fun tp!2360872 () Bool)

(assert (=> b!7940326 (= e!4685181 (and tp!2360873 tp!2360872))))

(declare-fun b!7940327 () Bool)

(declare-fun tp!2360871 () Bool)

(declare-fun tp!2360874 () Bool)

(assert (=> b!7940327 (= e!4685181 (and tp!2360871 tp!2360874))))

(declare-fun b!7940328 () Bool)

(declare-fun tp!2360876 () Bool)

(assert (=> b!7940328 (= e!4685181 tp!2360876)))

(declare-fun b!7940329 () Bool)

(declare-fun e!4685183 () Bool)

(assert (=> b!7940329 (= e!4685183 false)))

(declare-datatypes ((C!43122 0))(
  ( (C!43123 (val!32109 Int)) )
))
(declare-datatypes ((Regex!21392 0))(
  ( (ElementMatch!21392 (c!1458827 C!43122)) (Concat!30391 (regOne!43296 Regex!21392) (regTwo!43296 Regex!21392)) (EmptyExpr!21392) (Star!21392 (reg!21721 Regex!21392)) (EmptyLang!21392) (Union!21392 (regOne!43297 Regex!21392) (regTwo!43297 Regex!21392)) )
))
(declare-fun lt!2696093 () Regex!21392)

(declare-fun r!15654 () Regex!21392)

(declare-datatypes ((List!74621 0))(
  ( (Nil!74497) (Cons!74497 (h!80945 C!43122) (t!390364 List!74621)) )
))
(declare-fun derivative!580 (Regex!21392 List!74621) Regex!21392)

(assert (=> b!7940329 (= lt!2696093 (derivative!580 r!15654 Nil!74497))))

(declare-fun b!7940331 () Bool)

(declare-fun res!3149926 () Bool)

(assert (=> b!7940331 (=> (not res!3149926) (not e!4685183))))

(declare-fun input!6711 () List!74621)

(declare-fun isPrefix!6492 (List!74621 List!74621) Bool)

(assert (=> b!7940331 (= res!3149926 (isPrefix!6492 Nil!74497 input!6711))))

(declare-fun b!7940330 () Bool)

(assert (=> b!7940330 (= e!4685181 tp_is_empty!53327)))

(declare-fun res!3149925 () Bool)

(assert (=> start!749460 (=> (not res!3149925) (not e!4685183))))

(declare-fun validRegex!11696 (Regex!21392) Bool)

(assert (=> start!749460 (= res!3149925 (validRegex!11696 r!15654))))

(assert (=> start!749460 e!4685183))

(assert (=> start!749460 e!4685181))

(assert (=> start!749460 e!4685182))

(assert (= (and start!749460 res!3149925) b!7940331))

(assert (= (and b!7940331 res!3149926) b!7940329))

(assert (= (and start!749460 (is-ElementMatch!21392 r!15654)) b!7940330))

(assert (= (and start!749460 (is-Concat!30391 r!15654)) b!7940327))

(assert (= (and start!749460 (is-Star!21392 r!15654)) b!7940328))

(assert (= (and start!749460 (is-Union!21392 r!15654)) b!7940326))

(assert (= (and start!749460 (is-Cons!74497 input!6711)) b!7940325))

(declare-fun m!8329572 () Bool)

(assert (=> b!7940329 m!8329572))

(declare-fun m!8329574 () Bool)

(assert (=> b!7940331 m!8329574))

(declare-fun m!8329576 () Bool)

(assert (=> start!749460 m!8329576))

(push 1)

(assert (not b!7940327))

(assert tp_is_empty!53327)

(assert (not b!7940325))

(assert (not b!7940329))

(assert (not b!7940328))

(assert (not b!7940326))

(assert (not b!7940331))

(assert (not start!749460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544130 () Bool)

(assert start!544130)

(declare-fun b!5138812 () Bool)

(declare-fun e!3205235 () Bool)

(declare-fun e!3205236 () Bool)

(assert (=> b!5138812 (= e!3205235 (not e!3205236))))

(declare-fun res!2188621 () Bool)

(assert (=> b!5138812 (=> res!2188621 e!3205236)))

(declare-datatypes ((C!29142 0))(
  ( (C!29143 (val!24223 Int)) )
))
(declare-datatypes ((Regex!14438 0))(
  ( (ElementMatch!14438 (c!884876 C!29142)) (Concat!23283 (regOne!29388 Regex!14438) (regTwo!29388 Regex!14438)) (EmptyExpr!14438) (Star!14438 (reg!14767 Regex!14438)) (EmptyLang!14438) (Union!14438 (regOne!29389 Regex!14438) (regTwo!29389 Regex!14438)) )
))
(declare-fun expr!117 () Regex!14438)

(declare-fun validRegex!6293 (Regex!14438) Bool)

(assert (=> b!5138812 (= res!2188621 (not (validRegex!6293 (regTwo!29388 expr!117))))))

(declare-fun lostCause!1428 (Regex!14438) Bool)

(assert (=> b!5138812 (not (lostCause!1428 (regOne!29388 expr!117)))))

(declare-datatypes ((Unit!151059 0))(
  ( (Unit!151060) )
))
(declare-fun lt!2120080 () Unit!151059)

(declare-fun lemmaNullableThenNotLostCause!61 (Regex!14438) Unit!151059)

(assert (=> b!5138812 (= lt!2120080 (lemmaNullableThenNotLostCause!61 (regOne!29388 expr!117)))))

(declare-fun b!5138813 () Bool)

(declare-fun e!3205232 () Bool)

(declare-fun tp!1433293 () Bool)

(declare-fun tp!1433292 () Bool)

(assert (=> b!5138813 (= e!3205232 (and tp!1433293 tp!1433292))))

(declare-fun b!5138814 () Bool)

(declare-fun tp_is_empty!38025 () Bool)

(assert (=> b!5138814 (= e!3205232 tp_is_empty!38025)))

(declare-fun b!5138815 () Bool)

(assert (=> b!5138815 (= e!3205236 true)))

(declare-fun lt!2120079 () Bool)

(declare-datatypes ((List!59808 0))(
  ( (Nil!59684) (Cons!59684 (h!66132 Regex!14438) (t!372839 List!59808)) )
))
(declare-datatypes ((Context!7644 0))(
  ( (Context!7645 (exprs!4322 List!59808)) )
))
(declare-fun ctx!100 () Context!7644)

(declare-fun lostCause!1429 (Context!7644) Bool)

(declare-fun $colon$colon!1176 (List!59808 Regex!14438) List!59808)

(assert (=> b!5138815 (= lt!2120079 (lostCause!1429 (Context!7645 ($colon$colon!1176 (exprs!4322 ctx!100) (regTwo!29388 expr!117)))))))

(declare-fun b!5138816 () Bool)

(declare-fun tp!1433295 () Bool)

(declare-fun tp!1433294 () Bool)

(assert (=> b!5138816 (= e!3205232 (and tp!1433295 tp!1433294))))

(declare-fun b!5138817 () Bool)

(declare-fun e!3205234 () Bool)

(declare-fun tp!1433296 () Bool)

(assert (=> b!5138817 (= e!3205234 tp!1433296)))

(declare-fun b!5138818 () Bool)

(declare-fun res!2188616 () Bool)

(assert (=> b!5138818 (=> (not res!2188616) (not e!3205235))))

(declare-fun a!1296 () C!29142)

(assert (=> b!5138818 (= res!2188616 (and (or (not (is-ElementMatch!14438 expr!117)) (not (= (c!884876 expr!117) a!1296))) (not (is-Union!14438 expr!117)) (is-Concat!23283 expr!117)))))

(declare-fun b!5138819 () Bool)

(declare-fun res!2188615 () Bool)

(assert (=> b!5138819 (=> res!2188615 e!3205236)))

(assert (=> b!5138819 (= res!2188615 (not (validRegex!6293 (regOne!29388 expr!117))))))

(declare-fun b!5138820 () Bool)

(declare-fun res!2188619 () Bool)

(assert (=> b!5138820 (=> (not res!2188619) (not e!3205235))))

(declare-fun nullable!4797 (Regex!14438) Bool)

(assert (=> b!5138820 (= res!2188619 (nullable!4797 (regOne!29388 expr!117)))))

(declare-fun res!2188618 () Bool)

(assert (=> start!544130 (=> (not res!2188618) (not e!3205235))))

(assert (=> start!544130 (= res!2188618 (validRegex!6293 expr!117))))

(assert (=> start!544130 e!3205235))

(assert (=> start!544130 e!3205232))

(declare-fun inv!79277 (Context!7644) Bool)

(assert (=> start!544130 (and (inv!79277 ctx!100) e!3205234)))

(assert (=> start!544130 tp_is_empty!38025))

(declare-fun b!5138821 () Bool)

(declare-fun tp!1433297 () Bool)

(assert (=> b!5138821 (= e!3205232 tp!1433297)))

(declare-fun b!5138822 () Bool)

(declare-fun res!2188617 () Bool)

(assert (=> b!5138822 (=> (not res!2188617) (not e!3205235))))

(declare-fun e!3205233 () Bool)

(assert (=> b!5138822 (= res!2188617 e!3205233)))

(declare-fun res!2188620 () Bool)

(assert (=> b!5138822 (=> res!2188620 e!3205233)))

(assert (=> b!5138822 (= res!2188620 (lostCause!1428 expr!117))))

(declare-fun b!5138823 () Bool)

(assert (=> b!5138823 (= e!3205233 (lostCause!1429 ctx!100))))

(assert (= (and start!544130 res!2188618) b!5138822))

(assert (= (and b!5138822 (not res!2188620)) b!5138823))

(assert (= (and b!5138822 res!2188617) b!5138818))

(assert (= (and b!5138818 res!2188616) b!5138820))

(assert (= (and b!5138820 res!2188619) b!5138812))

(assert (= (and b!5138812 (not res!2188621)) b!5138819))

(assert (= (and b!5138819 (not res!2188615)) b!5138815))

(assert (= (and start!544130 (is-ElementMatch!14438 expr!117)) b!5138814))

(assert (= (and start!544130 (is-Concat!23283 expr!117)) b!5138813))

(assert (= (and start!544130 (is-Star!14438 expr!117)) b!5138821))

(assert (= (and start!544130 (is-Union!14438 expr!117)) b!5138816))

(assert (= start!544130 b!5138817))

(declare-fun m!6203516 () Bool)

(assert (=> b!5138815 m!6203516))

(declare-fun m!6203518 () Bool)

(assert (=> b!5138815 m!6203518))

(declare-fun m!6203520 () Bool)

(assert (=> b!5138820 m!6203520))

(declare-fun m!6203522 () Bool)

(assert (=> b!5138812 m!6203522))

(declare-fun m!6203524 () Bool)

(assert (=> b!5138812 m!6203524))

(declare-fun m!6203526 () Bool)

(assert (=> b!5138812 m!6203526))

(declare-fun m!6203528 () Bool)

(assert (=> b!5138822 m!6203528))

(declare-fun m!6203530 () Bool)

(assert (=> b!5138819 m!6203530))

(declare-fun m!6203532 () Bool)

(assert (=> start!544130 m!6203532))

(declare-fun m!6203534 () Bool)

(assert (=> start!544130 m!6203534))

(declare-fun m!6203536 () Bool)

(assert (=> b!5138823 m!6203536))

(push 1)

(assert (not b!5138821))

(assert (not b!5138820))

(assert (not b!5138817))

(assert (not b!5138819))

(assert (not b!5138816))

(assert (not b!5138822))

(assert (not start!544130))

(assert (not b!5138823))

(assert (not b!5138813))

(assert (not b!5138815))

(assert (not b!5138812))

(assert tp_is_empty!38025)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


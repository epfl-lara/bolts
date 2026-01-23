; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73608 () Bool)

(assert start!73608)

(declare-fun b!822478 () Bool)

(declare-fun e!543345 () Bool)

(declare-fun tp_is_empty!3799 () Bool)

(assert (=> b!822478 (= e!543345 tp_is_empty!3799)))

(declare-fun b!822479 () Bool)

(declare-fun res!379511 () Bool)

(declare-fun e!543344 () Bool)

(assert (=> b!822479 (=> (not res!379511) (not e!543344))))

(declare-datatypes ((C!4646 0))(
  ( (C!4647 (val!2571 Int)) )
))
(declare-datatypes ((Regex!2038 0))(
  ( (ElementMatch!2038 (c!133315 C!4646)) (Concat!3769 (regOne!4588 Regex!2038) (regTwo!4588 Regex!2038)) (EmptyExpr!2038) (Star!2038 (reg!2367 Regex!2038)) (EmptyLang!2038) (Union!2038 (regOne!4589 Regex!2038) (regTwo!4589 Regex!2038)) )
))
(declare-fun r!27177 () Regex!2038)

(assert (=> b!822479 (= res!379511 (and (not (is-EmptyExpr!2038 r!27177)) (not (is-EmptyLang!2038 r!27177)) (not (is-ElementMatch!2038 r!27177)) (not (is-Star!2038 r!27177)) (not (is-Union!2038 r!27177))))))

(declare-fun b!822480 () Bool)

(declare-fun tp!256987 () Bool)

(declare-fun tp!256988 () Bool)

(assert (=> b!822480 (= e!543345 (and tp!256987 tp!256988))))

(declare-fun b!822481 () Bool)

(assert (=> b!822481 (= e!543344 false)))

(declare-fun lt!317366 () Bool)

(declare-fun c!13916 () C!4646)

(declare-datatypes ((List!8864 0))(
  ( (Nil!8848) (Cons!8848 (h!14249 C!4646) (t!93156 List!8864)) )
))
(declare-fun contains!1629 (List!8864 C!4646) Bool)

(declare-fun firstChars!9 (Regex!2038) List!8864)

(assert (=> b!822481 (= lt!317366 (contains!1629 (firstChars!9 (regTwo!4588 r!27177)) c!13916))))

(declare-fun b!822482 () Bool)

(declare-fun tp!256985 () Bool)

(declare-fun tp!256986 () Bool)

(assert (=> b!822482 (= e!543345 (and tp!256985 tp!256986))))

(declare-fun res!379510 () Bool)

(assert (=> start!73608 (=> (not res!379510) (not e!543344))))

(declare-fun validRegex!591 (Regex!2038) Bool)

(assert (=> start!73608 (= res!379510 (validRegex!591 r!27177))))

(assert (=> start!73608 e!543344))

(assert (=> start!73608 e!543345))

(assert (=> start!73608 tp_is_empty!3799))

(declare-fun b!822483 () Bool)

(declare-fun res!379515 () Bool)

(assert (=> b!822483 (=> (not res!379515) (not e!543344))))

(assert (=> b!822483 (= res!379515 (not (contains!1629 (firstChars!9 (regOne!4588 r!27177)) c!13916)))))

(declare-fun b!822484 () Bool)

(declare-fun res!379514 () Bool)

(assert (=> b!822484 (=> (not res!379514) (not e!543344))))

(assert (=> b!822484 (= res!379514 (validRegex!591 (regTwo!4588 r!27177)))))

(declare-fun b!822485 () Bool)

(declare-fun res!379513 () Bool)

(assert (=> b!822485 (=> (not res!379513) (not e!543344))))

(declare-fun nullable!489 (Regex!2038) Bool)

(assert (=> b!822485 (= res!379513 (nullable!489 (regOne!4588 r!27177)))))

(declare-fun b!822486 () Bool)

(declare-fun tp!256989 () Bool)

(assert (=> b!822486 (= e!543345 tp!256989)))

(declare-fun b!822487 () Bool)

(declare-fun res!379512 () Bool)

(assert (=> b!822487 (=> (not res!379512) (not e!543344))))

(assert (=> b!822487 (= res!379512 (contains!1629 (firstChars!9 r!27177) c!13916))))

(assert (= (and start!73608 res!379510) b!822487))

(assert (= (and b!822487 res!379512) b!822479))

(assert (= (and b!822479 res!379511) b!822485))

(assert (= (and b!822485 res!379513) b!822483))

(assert (= (and b!822483 res!379515) b!822484))

(assert (= (and b!822484 res!379514) b!822481))

(assert (= (and start!73608 (is-ElementMatch!2038 r!27177)) b!822478))

(assert (= (and start!73608 (is-Concat!3769 r!27177)) b!822482))

(assert (= (and start!73608 (is-Star!2038 r!27177)) b!822486))

(assert (= (and start!73608 (is-Union!2038 r!27177)) b!822480))

(declare-fun m!1063629 () Bool)

(assert (=> start!73608 m!1063629))

(declare-fun m!1063631 () Bool)

(assert (=> b!822484 m!1063631))

(declare-fun m!1063633 () Bool)

(assert (=> b!822483 m!1063633))

(assert (=> b!822483 m!1063633))

(declare-fun m!1063635 () Bool)

(assert (=> b!822483 m!1063635))

(declare-fun m!1063637 () Bool)

(assert (=> b!822481 m!1063637))

(assert (=> b!822481 m!1063637))

(declare-fun m!1063639 () Bool)

(assert (=> b!822481 m!1063639))

(declare-fun m!1063641 () Bool)

(assert (=> b!822487 m!1063641))

(assert (=> b!822487 m!1063641))

(declare-fun m!1063643 () Bool)

(assert (=> b!822487 m!1063643))

(declare-fun m!1063645 () Bool)

(assert (=> b!822485 m!1063645))

(push 1)

(assert (not b!822487))

(assert tp_is_empty!3799)

(assert (not b!822485))

(assert (not b!822486))

(assert (not b!822482))

(assert (not b!822480))

(assert (not b!822484))

(assert (not b!822483))

(assert (not start!73608))

(assert (not b!822481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


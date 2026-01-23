; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738882 () Bool)

(assert start!738882)

(declare-fun b!7749996 () Bool)

(declare-fun e!4594463 () Bool)

(declare-fun tp!2273715 () Bool)

(declare-fun tp!2273714 () Bool)

(assert (=> b!7749996 (= e!4594463 (and tp!2273715 tp!2273714))))

(declare-fun b!7749997 () Bool)

(declare-fun tp!2273712 () Bool)

(assert (=> b!7749997 (= e!4594463 tp!2273712)))

(declare-fun b!7749998 () Bool)

(declare-fun res!3090294 () Bool)

(declare-fun e!4594462 () Bool)

(assert (=> b!7749998 (=> (not res!3090294) (not e!4594462))))

(declare-datatypes ((C!41534 0))(
  ( (C!41535 (val!31207 Int)) )
))
(declare-datatypes ((Regex!20604 0))(
  ( (ElementMatch!20604 (c!1429385 C!41534)) (Concat!29449 (regOne!41720 Regex!20604) (regTwo!41720 Regex!20604)) (EmptyExpr!20604) (Star!20604 (reg!20933 Regex!20604)) (EmptyLang!20604) (Union!20604 (regOne!41721 Regex!20604) (regTwo!41721 Regex!20604)) )
))
(declare-fun r!25892 () Regex!20604)

(declare-datatypes ((List!73449 0))(
  ( (Nil!73325) (Cons!73325 (h!79773 C!41534) (t!388184 List!73449)) )
))
(declare-fun s1!4391 () List!73449)

(declare-fun matchR!10094 (Regex!20604 List!73449) Bool)

(assert (=> b!7749998 (= res!3090294 (matchR!10094 r!25892 s1!4391))))

(declare-fun b!7749999 () Bool)

(declare-fun tp!2273717 () Bool)

(declare-fun tp!2273716 () Bool)

(assert (=> b!7749999 (= e!4594463 (and tp!2273717 tp!2273716))))

(declare-fun b!7750000 () Bool)

(declare-fun e!4594461 () Bool)

(declare-fun tp_is_empty!51563 () Bool)

(declare-fun tp!2273713 () Bool)

(assert (=> b!7750000 (= e!4594461 (and tp_is_empty!51563 tp!2273713))))

(declare-fun b!7750001 () Bool)

(declare-fun e!4594460 () Bool)

(declare-fun tp!2273718 () Bool)

(assert (=> b!7750001 (= e!4594460 (and tp_is_empty!51563 tp!2273718))))

(declare-fun b!7750002 () Bool)

(assert (=> b!7750002 (= e!4594463 tp_is_empty!51563)))

(declare-fun b!7750003 () Bool)

(assert (=> b!7750003 (= e!4594462 false)))

(declare-fun lt!2669323 () Bool)

(declare-fun lt!2669324 () Regex!20604)

(declare-fun s2!3963 () List!73449)

(assert (=> b!7750003 (= lt!2669323 (matchR!10094 lt!2669324 s2!3963))))

(declare-fun res!3090293 () Bool)

(assert (=> start!738882 (=> (not res!3090293) (not e!4594462))))

(declare-fun validRegex!11022 (Regex!20604) Bool)

(assert (=> start!738882 (= res!3090293 (validRegex!11022 lt!2669324))))

(assert (=> start!738882 (= lt!2669324 (Star!20604 r!25892))))

(assert (=> start!738882 e!4594462))

(assert (=> start!738882 e!4594463))

(assert (=> start!738882 e!4594461))

(assert (=> start!738882 e!4594460))

(assert (= (and start!738882 res!3090293) b!7749998))

(assert (= (and b!7749998 res!3090294) b!7750003))

(assert (= (and start!738882 (is-ElementMatch!20604 r!25892)) b!7750002))

(assert (= (and start!738882 (is-Concat!29449 r!25892)) b!7749996))

(assert (= (and start!738882 (is-Star!20604 r!25892)) b!7749997))

(assert (= (and start!738882 (is-Union!20604 r!25892)) b!7749999))

(assert (= (and start!738882 (is-Cons!73325 s1!4391)) b!7750000))

(assert (= (and start!738882 (is-Cons!73325 s2!3963)) b!7750001))

(declare-fun m!8216330 () Bool)

(assert (=> b!7749998 m!8216330))

(declare-fun m!8216332 () Bool)

(assert (=> b!7750003 m!8216332))

(declare-fun m!8216334 () Bool)

(assert (=> start!738882 m!8216334))

(push 1)

(assert (not b!7750001))

(assert (not b!7749996))

(assert tp_is_empty!51563)

(assert (not b!7749999))

(assert (not b!7750003))

(assert (not b!7749997))

(assert (not b!7749998))

(assert (not b!7750000))

(assert (not start!738882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


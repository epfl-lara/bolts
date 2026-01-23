; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73596 () Bool)

(assert start!73596)

(declare-fun b!822318 () Bool)

(declare-fun e!543309 () Bool)

(declare-fun tp_is_empty!3787 () Bool)

(assert (=> b!822318 (= e!543309 tp_is_empty!3787)))

(declare-fun b!822319 () Bool)

(declare-fun e!543308 () Bool)

(assert (=> b!822319 (= e!543308 false)))

(declare-fun b!822320 () Bool)

(declare-fun res!379424 () Bool)

(assert (=> b!822320 (=> (not res!379424) (not e!543308))))

(declare-datatypes ((C!4634 0))(
  ( (C!4635 (val!2565 Int)) )
))
(declare-datatypes ((Regex!2032 0))(
  ( (ElementMatch!2032 (c!133309 C!4634)) (Concat!3763 (regOne!4576 Regex!2032) (regTwo!4576 Regex!2032)) (EmptyExpr!2032) (Star!2032 (reg!2361 Regex!2032)) (EmptyLang!2032) (Union!2032 (regOne!4577 Regex!2032) (regTwo!4577 Regex!2032)) )
))
(declare-fun r!27177 () Regex!2032)

(assert (=> b!822320 (= res!379424 (and (not (is-EmptyExpr!2032 r!27177)) (not (is-EmptyLang!2032 r!27177)) (not (is-ElementMatch!2032 r!27177)) (not (is-Star!2032 r!27177)) (is-Union!2032 r!27177)))))

(declare-fun res!379422 () Bool)

(assert (=> start!73596 (=> (not res!379422) (not e!543308))))

(declare-fun validRegex!585 (Regex!2032) Bool)

(assert (=> start!73596 (= res!379422 (validRegex!585 r!27177))))

(assert (=> start!73596 e!543308))

(assert (=> start!73596 e!543309))

(assert (=> start!73596 tp_is_empty!3787))

(declare-fun b!822321 () Bool)

(declare-fun tp!256896 () Bool)

(declare-fun tp!256895 () Bool)

(assert (=> b!822321 (= e!543309 (and tp!256896 tp!256895))))

(declare-fun b!822322 () Bool)

(declare-fun tp!256898 () Bool)

(declare-fun tp!256899 () Bool)

(assert (=> b!822322 (= e!543309 (and tp!256898 tp!256899))))

(declare-fun b!822323 () Bool)

(declare-fun res!379423 () Bool)

(assert (=> b!822323 (=> (not res!379423) (not e!543308))))

(declare-fun c!13916 () C!4634)

(declare-datatypes ((List!8858 0))(
  ( (Nil!8842) (Cons!8842 (h!14243 C!4634) (t!93150 List!8858)) )
))
(declare-fun contains!1623 (List!8858 C!4634) Bool)

(declare-fun firstChars!3 (Regex!2032) List!8858)

(assert (=> b!822323 (= res!379423 (contains!1623 (firstChars!3 r!27177) c!13916))))

(declare-fun b!822324 () Bool)

(declare-fun tp!256897 () Bool)

(assert (=> b!822324 (= e!543309 tp!256897)))

(declare-fun b!822325 () Bool)

(declare-fun res!379425 () Bool)

(assert (=> b!822325 (=> (not res!379425) (not e!543308))))

(assert (=> b!822325 (= res!379425 (contains!1623 (firstChars!3 (regOne!4577 r!27177)) c!13916))))

(assert (= (and start!73596 res!379422) b!822323))

(assert (= (and b!822323 res!379423) b!822320))

(assert (= (and b!822320 res!379424) b!822325))

(assert (= (and b!822325 res!379425) b!822319))

(assert (= (and start!73596 (is-ElementMatch!2032 r!27177)) b!822318))

(assert (= (and start!73596 (is-Concat!3763 r!27177)) b!822321))

(assert (= (and start!73596 (is-Star!2032 r!27177)) b!822324))

(assert (= (and start!73596 (is-Union!2032 r!27177)) b!822322))

(declare-fun m!1063553 () Bool)

(assert (=> start!73596 m!1063553))

(declare-fun m!1063555 () Bool)

(assert (=> b!822323 m!1063555))

(assert (=> b!822323 m!1063555))

(declare-fun m!1063557 () Bool)

(assert (=> b!822323 m!1063557))

(declare-fun m!1063559 () Bool)

(assert (=> b!822325 m!1063559))

(assert (=> b!822325 m!1063559))

(declare-fun m!1063561 () Bool)

(assert (=> b!822325 m!1063561))

(push 1)

(assert (not b!822322))

(assert (not b!822321))

(assert (not b!822324))

(assert (not b!822325))

(assert tp_is_empty!3787)

(assert (not start!73596))

(assert (not b!822323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


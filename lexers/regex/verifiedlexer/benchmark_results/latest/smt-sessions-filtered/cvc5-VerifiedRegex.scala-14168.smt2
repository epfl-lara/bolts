; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743548 () Bool)

(assert start!743548)

(declare-fun b!7859499 () Bool)

(declare-fun e!4644856 () Bool)

(declare-fun tp!2329005 () Bool)

(assert (=> b!7859499 (= e!4644856 tp!2329005)))

(declare-fun b!7859500 () Bool)

(declare-fun res!3124525 () Bool)

(declare-fun e!4644855 () Bool)

(assert (=> b!7859500 (=> (not res!3124525) (not e!4644855))))

(declare-datatypes ((C!42542 0))(
  ( (C!42543 (val!31733 Int)) )
))
(declare-datatypes ((Regex!21108 0))(
  ( (ElementMatch!21108 (c!1444356 C!42542)) (Concat!29953 (regOne!42728 Regex!21108) (regTwo!42728 Regex!21108)) (EmptyExpr!21108) (Star!21108 (reg!21437 Regex!21108)) (EmptyLang!21108) (Union!21108 (regOne!42729 Regex!21108) (regTwo!42729 Regex!21108)) )
))
(declare-fun r2!6156 () Regex!21108)

(declare-fun validRegex!11518 (Regex!21108) Bool)

(assert (=> b!7859500 (= res!3124525 (validRegex!11518 r2!6156))))

(declare-fun b!7859501 () Bool)

(declare-fun e!4644854 () Bool)

(declare-fun tp_is_empty!52615 () Bool)

(assert (=> b!7859501 (= e!4644854 tp_is_empty!52615)))

(declare-fun b!7859502 () Bool)

(declare-fun tp!2329003 () Bool)

(declare-fun tp!2329000 () Bool)

(assert (=> b!7859502 (= e!4644854 (and tp!2329003 tp!2329000))))

(declare-fun b!7859503 () Bool)

(assert (=> b!7859503 (= e!4644856 tp_is_empty!52615)))

(declare-fun b!7859504 () Bool)

(declare-fun tp!2328998 () Bool)

(declare-fun tp!2328995 () Bool)

(assert (=> b!7859504 (= e!4644856 (and tp!2328998 tp!2328995))))

(declare-fun b!7859505 () Bool)

(declare-fun res!3124523 () Bool)

(assert (=> b!7859505 (=> (not res!3124523) (not e!4644855))))

(declare-fun r1!6218 () Regex!21108)

(declare-datatypes ((List!73967 0))(
  ( (Nil!73843) (Cons!73843 (h!80291 C!42542) (t!388702 List!73967)) )
))
(declare-fun s!14237 () List!73967)

(declare-fun matchR!10544 (Regex!21108 List!73967) Bool)

(assert (=> b!7859505 (= res!3124523 (matchR!10544 r1!6218 s!14237))))

(declare-fun b!7859507 () Bool)

(assert (=> b!7859507 (= e!4644855 false)))

(declare-fun b!7859508 () Bool)

(declare-fun tp!2328999 () Bool)

(declare-fun tp!2329002 () Bool)

(assert (=> b!7859508 (= e!4644856 (and tp!2328999 tp!2329002))))

(declare-fun b!7859509 () Bool)

(declare-fun tp!2328997 () Bool)

(declare-fun tp!2329001 () Bool)

(assert (=> b!7859509 (= e!4644854 (and tp!2328997 tp!2329001))))

(declare-fun b!7859510 () Bool)

(declare-fun e!4644857 () Bool)

(declare-fun tp!2329004 () Bool)

(assert (=> b!7859510 (= e!4644857 (and tp_is_empty!52615 tp!2329004))))

(declare-fun res!3124524 () Bool)

(assert (=> start!743548 (=> (not res!3124524) (not e!4644855))))

(assert (=> start!743548 (= res!3124524 (validRegex!11518 r1!6218))))

(assert (=> start!743548 e!4644855))

(assert (=> start!743548 e!4644854))

(assert (=> start!743548 e!4644856))

(assert (=> start!743548 e!4644857))

(declare-fun b!7859506 () Bool)

(declare-fun tp!2328996 () Bool)

(assert (=> b!7859506 (= e!4644854 tp!2328996)))

(assert (= (and start!743548 res!3124524) b!7859500))

(assert (= (and b!7859500 res!3124525) b!7859505))

(assert (= (and b!7859505 res!3124523) b!7859507))

(assert (= (and start!743548 (is-ElementMatch!21108 r1!6218)) b!7859501))

(assert (= (and start!743548 (is-Concat!29953 r1!6218)) b!7859509))

(assert (= (and start!743548 (is-Star!21108 r1!6218)) b!7859506))

(assert (= (and start!743548 (is-Union!21108 r1!6218)) b!7859502))

(assert (= (and start!743548 (is-ElementMatch!21108 r2!6156)) b!7859503))

(assert (= (and start!743548 (is-Concat!29953 r2!6156)) b!7859504))

(assert (= (and start!743548 (is-Star!21108 r2!6156)) b!7859499))

(assert (= (and start!743548 (is-Union!21108 r2!6156)) b!7859508))

(assert (= (and start!743548 (is-Cons!73843 s!14237)) b!7859510))

(declare-fun m!8261696 () Bool)

(assert (=> b!7859500 m!8261696))

(declare-fun m!8261698 () Bool)

(assert (=> b!7859505 m!8261698))

(declare-fun m!8261700 () Bool)

(assert (=> start!743548 m!8261700))

(push 1)

(assert (not start!743548))

(assert (not b!7859508))

(assert (not b!7859499))

(assert (not b!7859506))

(assert (not b!7859500))

(assert (not b!7859505))

(assert (not b!7859502))

(assert (not b!7859509))

(assert tp_is_empty!52615)

(assert (not b!7859510))

(assert (not b!7859504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


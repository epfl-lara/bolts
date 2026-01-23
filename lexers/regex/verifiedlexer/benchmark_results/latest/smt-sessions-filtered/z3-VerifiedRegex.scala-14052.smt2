; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741758 () Bool)

(assert start!741758)

(declare-fun b!7810547 () Bool)

(declare-fun e!4622860 () Bool)

(declare-fun tp!2301563 () Bool)

(assert (=> b!7810547 (= e!4622860 tp!2301563)))

(declare-fun b!7810548 () Bool)

(declare-fun tp!2301570 () Bool)

(declare-fun tp!2301564 () Bool)

(assert (=> b!7810548 (= e!4622860 (and tp!2301570 tp!2301564))))

(declare-fun b!7810549 () Bool)

(declare-fun e!4622863 () Bool)

(declare-fun tp_is_empty!52153 () Bool)

(declare-fun tp!2301566 () Bool)

(assert (=> b!7810549 (= e!4622863 (and tp_is_empty!52153 tp!2301566))))

(declare-fun b!7810550 () Bool)

(declare-fun e!4622861 () Bool)

(declare-fun tp!2301572 () Bool)

(declare-fun tp!2301567 () Bool)

(assert (=> b!7810550 (= e!4622861 (and tp!2301572 tp!2301567))))

(declare-fun res!3110349 () Bool)

(declare-fun e!4622862 () Bool)

(assert (=> start!741758 (=> (not res!3110349) (not e!4622862))))

(declare-datatypes ((C!42124 0))(
  ( (C!42125 (val!31502 Int)) )
))
(declare-datatypes ((Regex!20899 0))(
  ( (ElementMatch!20899 (c!1438206 C!42124)) (Concat!29744 (regOne!42310 Regex!20899) (regTwo!42310 Regex!20899)) (EmptyExpr!20899) (Star!20899 (reg!21228 Regex!20899)) (EmptyLang!20899) (Union!20899 (regOne!42311 Regex!20899) (regTwo!42311 Regex!20899)) )
))
(declare-fun r1!6206 () Regex!20899)

(declare-fun validRegex!11313 (Regex!20899) Bool)

(assert (=> start!741758 (= res!3110349 (validRegex!11313 r1!6206))))

(assert (=> start!741758 e!4622862))

(assert (=> start!741758 e!4622861))

(assert (=> start!741758 e!4622860))

(assert (=> start!741758 e!4622863))

(declare-fun b!7810551 () Bool)

(assert (=> b!7810551 (= e!4622860 tp_is_empty!52153)))

(declare-fun b!7810552 () Bool)

(assert (=> b!7810552 (= e!4622862 false)))

(declare-fun lt!2675782 () Regex!20899)

(declare-datatypes ((List!73736 0))(
  ( (Nil!73612) (Cons!73612 (h!80060 C!42124) (t!388471 List!73736)) )
))
(declare-fun s!14225 () List!73736)

(declare-fun derivativeStep!6232 (Regex!20899 C!42124) Regex!20899)

(assert (=> b!7810552 (= lt!2675782 (derivativeStep!6232 r1!6206 (h!80060 s!14225)))))

(declare-fun b!7810553 () Bool)

(declare-fun res!3110352 () Bool)

(assert (=> b!7810553 (=> (not res!3110352) (not e!4622862))))

(declare-fun r2!6144 () Regex!20899)

(assert (=> b!7810553 (= res!3110352 (validRegex!11313 r2!6144))))

(declare-fun b!7810554 () Bool)

(declare-fun tp!2301565 () Bool)

(declare-fun tp!2301568 () Bool)

(assert (=> b!7810554 (= e!4622861 (and tp!2301565 tp!2301568))))

(declare-fun b!7810555 () Bool)

(declare-fun tp!2301573 () Bool)

(assert (=> b!7810555 (= e!4622861 tp!2301573)))

(declare-fun b!7810556 () Bool)

(declare-fun res!3110351 () Bool)

(assert (=> b!7810556 (=> (not res!3110351) (not e!4622862))))

(declare-fun matchR!10357 (Regex!20899 List!73736) Bool)

(assert (=> b!7810556 (= res!3110351 (matchR!10357 (Union!20899 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810557 () Bool)

(assert (=> b!7810557 (= e!4622861 tp_is_empty!52153)))

(declare-fun b!7810558 () Bool)

(declare-fun res!3110350 () Bool)

(assert (=> b!7810558 (=> (not res!3110350) (not e!4622862))))

(get-info :version)

(assert (=> b!7810558 (= res!3110350 ((_ is Cons!73612) s!14225))))

(declare-fun b!7810559 () Bool)

(declare-fun tp!2301569 () Bool)

(declare-fun tp!2301571 () Bool)

(assert (=> b!7810559 (= e!4622860 (and tp!2301569 tp!2301571))))

(assert (= (and start!741758 res!3110349) b!7810553))

(assert (= (and b!7810553 res!3110352) b!7810556))

(assert (= (and b!7810556 res!3110351) b!7810558))

(assert (= (and b!7810558 res!3110350) b!7810552))

(assert (= (and start!741758 ((_ is ElementMatch!20899) r1!6206)) b!7810557))

(assert (= (and start!741758 ((_ is Concat!29744) r1!6206)) b!7810550))

(assert (= (and start!741758 ((_ is Star!20899) r1!6206)) b!7810555))

(assert (= (and start!741758 ((_ is Union!20899) r1!6206)) b!7810554))

(assert (= (and start!741758 ((_ is ElementMatch!20899) r2!6144)) b!7810551))

(assert (= (and start!741758 ((_ is Concat!29744) r2!6144)) b!7810559))

(assert (= (and start!741758 ((_ is Star!20899) r2!6144)) b!7810547))

(assert (= (and start!741758 ((_ is Union!20899) r2!6144)) b!7810548))

(assert (= (and start!741758 ((_ is Cons!73612) s!14225)) b!7810549))

(declare-fun m!8241790 () Bool)

(assert (=> start!741758 m!8241790))

(declare-fun m!8241792 () Bool)

(assert (=> b!7810552 m!8241792))

(declare-fun m!8241794 () Bool)

(assert (=> b!7810553 m!8241794))

(declare-fun m!8241796 () Bool)

(assert (=> b!7810556 m!8241796))

(check-sat tp_is_empty!52153 (not b!7810549) (not b!7810554) (not b!7810559) (not b!7810553) (not b!7810556) (not start!741758) (not b!7810547) (not b!7810555) (not b!7810548) (not b!7810550) (not b!7810552))
(check-sat)

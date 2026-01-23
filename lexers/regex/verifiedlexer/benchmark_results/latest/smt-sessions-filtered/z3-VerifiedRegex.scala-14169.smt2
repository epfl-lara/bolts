; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743554 () Bool)

(assert start!743554)

(declare-fun b!7859617 () Bool)

(declare-fun res!3124563 () Bool)

(declare-fun e!4644892 () Bool)

(assert (=> b!7859617 (=> (not res!3124563) (not e!4644892))))

(declare-datatypes ((C!42548 0))(
  ( (C!42549 (val!31736 Int)) )
))
(declare-datatypes ((Regex!21111 0))(
  ( (ElementMatch!21111 (c!1444359 C!42548)) (Concat!29956 (regOne!42734 Regex!21111) (regTwo!42734 Regex!21111)) (EmptyExpr!21111) (Star!21111 (reg!21440 Regex!21111)) (EmptyLang!21111) (Union!21111 (regOne!42735 Regex!21111) (regTwo!42735 Regex!21111)) )
))
(declare-fun r2!6156 () Regex!21111)

(declare-fun nullable!9381 (Regex!21111) Bool)

(assert (=> b!7859617 (= res!3124563 (nullable!9381 r2!6156))))

(declare-fun res!3124561 () Bool)

(assert (=> start!743554 (=> (not res!3124561) (not e!4644892))))

(declare-fun r1!6218 () Regex!21111)

(declare-fun validRegex!11521 (Regex!21111) Bool)

(assert (=> start!743554 (= res!3124561 (validRegex!11521 r1!6218))))

(assert (=> start!743554 e!4644892))

(declare-fun e!4644893 () Bool)

(assert (=> start!743554 e!4644893))

(declare-fun e!4644891 () Bool)

(assert (=> start!743554 e!4644891))

(declare-fun e!4644890 () Bool)

(assert (=> start!743554 e!4644890))

(declare-fun b!7859618 () Bool)

(declare-fun tp!2329101 () Bool)

(assert (=> b!7859618 (= e!4644893 tp!2329101)))

(declare-fun b!7859619 () Bool)

(declare-fun tp_is_empty!52621 () Bool)

(assert (=> b!7859619 (= e!4644891 tp_is_empty!52621)))

(declare-fun b!7859620 () Bool)

(declare-fun tp!2329098 () Bool)

(declare-fun tp!2329099 () Bool)

(assert (=> b!7859620 (= e!4644893 (and tp!2329098 tp!2329099))))

(declare-fun b!7859621 () Bool)

(declare-fun tp!2329103 () Bool)

(declare-fun tp!2329102 () Bool)

(assert (=> b!7859621 (= e!4644891 (and tp!2329103 tp!2329102))))

(declare-fun b!7859622 () Bool)

(assert (=> b!7859622 (= e!4644893 tp_is_empty!52621)))

(declare-fun b!7859623 () Bool)

(declare-fun res!3124564 () Bool)

(assert (=> b!7859623 (=> (not res!3124564) (not e!4644892))))

(declare-datatypes ((List!73970 0))(
  ( (Nil!73846) (Cons!73846 (h!80294 C!42548) (t!388705 List!73970)) )
))
(declare-fun s!14237 () List!73970)

(get-info :version)

(assert (=> b!7859623 (= res!3124564 ((_ is Cons!73846) s!14237))))

(declare-fun b!7859624 () Bool)

(declare-fun tp!2329094 () Bool)

(assert (=> b!7859624 (= e!4644891 tp!2329094)))

(declare-fun b!7859625 () Bool)

(declare-fun res!3124560 () Bool)

(assert (=> b!7859625 (=> (not res!3124560) (not e!4644892))))

(declare-fun matchR!10547 (Regex!21111 List!73970) Bool)

(assert (=> b!7859625 (= res!3124560 (matchR!10547 r1!6218 s!14237))))

(declare-fun b!7859626 () Bool)

(assert (=> b!7859626 (= e!4644892 false)))

(declare-fun lt!2680217 () Regex!21111)

(declare-fun derivativeStep!6344 (Regex!21111 C!42548) Regex!21111)

(assert (=> b!7859626 (= lt!2680217 (derivativeStep!6344 r2!6156 (h!80294 s!14237)))))

(declare-fun b!7859627 () Bool)

(declare-fun tp!2329097 () Bool)

(declare-fun tp!2329104 () Bool)

(assert (=> b!7859627 (= e!4644891 (and tp!2329097 tp!2329104))))

(declare-fun b!7859628 () Bool)

(declare-fun tp!2329096 () Bool)

(declare-fun tp!2329100 () Bool)

(assert (=> b!7859628 (= e!4644893 (and tp!2329096 tp!2329100))))

(declare-fun b!7859629 () Bool)

(declare-fun tp!2329095 () Bool)

(assert (=> b!7859629 (= e!4644890 (and tp_is_empty!52621 tp!2329095))))

(declare-fun b!7859630 () Bool)

(declare-fun res!3124562 () Bool)

(assert (=> b!7859630 (=> (not res!3124562) (not e!4644892))))

(assert (=> b!7859630 (= res!3124562 (validRegex!11521 r2!6156))))

(assert (= (and start!743554 res!3124561) b!7859630))

(assert (= (and b!7859630 res!3124562) b!7859625))

(assert (= (and b!7859625 res!3124560) b!7859617))

(assert (= (and b!7859617 res!3124563) b!7859623))

(assert (= (and b!7859623 res!3124564) b!7859626))

(assert (= (and start!743554 ((_ is ElementMatch!21111) r1!6218)) b!7859622))

(assert (= (and start!743554 ((_ is Concat!29956) r1!6218)) b!7859628))

(assert (= (and start!743554 ((_ is Star!21111) r1!6218)) b!7859618))

(assert (= (and start!743554 ((_ is Union!21111) r1!6218)) b!7859620))

(assert (= (and start!743554 ((_ is ElementMatch!21111) r2!6156)) b!7859619))

(assert (= (and start!743554 ((_ is Concat!29956) r2!6156)) b!7859621))

(assert (= (and start!743554 ((_ is Star!21111) r2!6156)) b!7859624))

(assert (= (and start!743554 ((_ is Union!21111) r2!6156)) b!7859627))

(assert (= (and start!743554 ((_ is Cons!73846) s!14237)) b!7859629))

(declare-fun m!8261718 () Bool)

(assert (=> start!743554 m!8261718))

(declare-fun m!8261720 () Bool)

(assert (=> b!7859625 m!8261720))

(declare-fun m!8261722 () Bool)

(assert (=> b!7859630 m!8261722))

(declare-fun m!8261724 () Bool)

(assert (=> b!7859617 m!8261724))

(declare-fun m!8261726 () Bool)

(assert (=> b!7859626 m!8261726))

(check-sat (not b!7859617) (not b!7859620) (not b!7859618) (not b!7859628) (not b!7859624) (not b!7859627) (not b!7859621) (not b!7859629) tp_is_empty!52621 (not b!7859626) (not b!7859630) (not start!743554) (not b!7859625))
(check-sat)

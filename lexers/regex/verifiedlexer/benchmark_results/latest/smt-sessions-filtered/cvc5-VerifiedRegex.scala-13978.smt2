; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739926 () Bool)

(assert start!739926)

(declare-fun b!7768816 () Bool)

(declare-fun e!4603300 () Bool)

(declare-fun tp!2282231 () Bool)

(assert (=> b!7768816 (= e!4603300 tp!2282231)))

(declare-fun b!7768817 () Bool)

(declare-fun tp!2282227 () Bool)

(declare-fun tp!2282228 () Bool)

(assert (=> b!7768817 (= e!4603300 (and tp!2282227 tp!2282228))))

(declare-fun b!7768818 () Bool)

(declare-fun e!4603299 () Bool)

(declare-fun tp_is_empty!51855 () Bool)

(declare-fun tp!2282229 () Bool)

(assert (=> b!7768818 (= e!4603299 (and tp_is_empty!51855 tp!2282229))))

(declare-fun b!7768819 () Bool)

(declare-fun tp!2282226 () Bool)

(declare-fun tp!2282230 () Bool)

(assert (=> b!7768819 (= e!4603300 (and tp!2282226 tp!2282230))))

(declare-fun b!7768820 () Bool)

(declare-fun res!3097029 () Bool)

(declare-fun e!4603298 () Bool)

(assert (=> b!7768820 (=> (not res!3097029) (not e!4603298))))

(declare-datatypes ((C!41826 0))(
  ( (C!41827 (val!31353 Int)) )
))
(declare-datatypes ((List!73591 0))(
  ( (Nil!73467) (Cons!73467 (h!79915 C!41826) (t!388326 List!73591)) )
))
(declare-fun s!14904 () List!73591)

(declare-datatypes ((Regex!20750 0))(
  ( (ElementMatch!20750 (c!1431843 C!41826)) (Concat!29595 (regOne!42012 Regex!20750) (regTwo!42012 Regex!20750)) (EmptyExpr!20750) (Star!20750 (reg!21079 Regex!20750)) (EmptyLang!20750) (Union!20750 (regOne!42013 Regex!20750) (regTwo!42013 Regex!20750)) )
))
(declare-fun r!25924 () Regex!20750)

(declare-fun lt!2671243 () Regex!20750)

(declare-fun derivativeStep!6095 (Regex!20750 C!41826) Regex!20750)

(assert (=> b!7768820 (= res!3097029 (= (derivativeStep!6095 lt!2671243 (h!79915 s!14904)) (Concat!29595 (derivativeStep!6095 r!25924 (h!79915 s!14904)) lt!2671243)))))

(declare-fun b!7768821 () Bool)

(assert (=> b!7768821 (= e!4603298 false)))

(declare-fun b!7768822 () Bool)

(declare-fun res!3097030 () Bool)

(assert (=> b!7768822 (=> (not res!3097030) (not e!4603298))))

(assert (=> b!7768822 (= res!3097030 (is-Cons!73467 s!14904))))

(declare-fun res!3097032 () Bool)

(assert (=> start!739926 (=> (not res!3097032) (not e!4603298))))

(declare-fun validRegex!11164 (Regex!20750) Bool)

(assert (=> start!739926 (= res!3097032 (validRegex!11164 lt!2671243))))

(assert (=> start!739926 (= lt!2671243 (Star!20750 r!25924))))

(assert (=> start!739926 e!4603298))

(assert (=> start!739926 e!4603300))

(assert (=> start!739926 e!4603299))

(declare-fun b!7768823 () Bool)

(declare-fun res!3097031 () Bool)

(assert (=> b!7768823 (=> (not res!3097031) (not e!4603298))))

(declare-fun matchR!10212 (Regex!20750 List!73591) Bool)

(assert (=> b!7768823 (= res!3097031 (matchR!10212 lt!2671243 s!14904))))

(declare-fun b!7768824 () Bool)

(assert (=> b!7768824 (= e!4603300 tp_is_empty!51855)))

(assert (= (and start!739926 res!3097032) b!7768823))

(assert (= (and b!7768823 res!3097031) b!7768822))

(assert (= (and b!7768822 res!3097030) b!7768820))

(assert (= (and b!7768820 res!3097029) b!7768821))

(assert (= (and start!739926 (is-ElementMatch!20750 r!25924)) b!7768824))

(assert (= (and start!739926 (is-Concat!29595 r!25924)) b!7768819))

(assert (= (and start!739926 (is-Star!20750 r!25924)) b!7768816))

(assert (= (and start!739926 (is-Union!20750 r!25924)) b!7768817))

(assert (= (and start!739926 (is-Cons!73467 s!14904)) b!7768818))

(declare-fun m!8223802 () Bool)

(assert (=> b!7768820 m!8223802))

(declare-fun m!8223804 () Bool)

(assert (=> b!7768820 m!8223804))

(declare-fun m!8223806 () Bool)

(assert (=> start!739926 m!8223806))

(declare-fun m!8223808 () Bool)

(assert (=> b!7768823 m!8223808))

(push 1)

(assert (not b!7768816))

(assert (not b!7768823))

(assert (not start!739926))

(assert (not b!7768818))

(assert (not b!7768819))

(assert (not b!7768820))

(assert (not b!7768817))

(assert tp_is_empty!51855)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


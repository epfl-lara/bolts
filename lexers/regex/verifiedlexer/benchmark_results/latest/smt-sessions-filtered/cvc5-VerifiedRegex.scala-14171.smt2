; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743560 () Bool)

(assert start!743560)

(declare-fun b!7859749 () Bool)

(declare-fun e!4644931 () Bool)

(declare-fun tp!2329194 () Bool)

(declare-fun tp!2329195 () Bool)

(assert (=> b!7859749 (= e!4644931 (and tp!2329194 tp!2329195))))

(declare-fun b!7859750 () Bool)

(declare-fun tp_is_empty!52627 () Bool)

(assert (=> b!7859750 (= e!4644931 tp_is_empty!52627)))

(declare-fun b!7859751 () Bool)

(declare-fun e!4644929 () Bool)

(declare-datatypes ((C!42554 0))(
  ( (C!42555 (val!31739 Int)) )
))
(declare-datatypes ((Regex!21114 0))(
  ( (ElementMatch!21114 (c!1444365 C!42554)) (Concat!29959 (regOne!42740 Regex!21114) (regTwo!42740 Regex!21114)) (EmptyExpr!21114) (Star!21114 (reg!21443 Regex!21114)) (EmptyLang!21114) (Union!21114 (regOne!42741 Regex!21114) (regTwo!42741 Regex!21114)) )
))
(declare-fun r1!6218 () Regex!21114)

(declare-fun nullable!9384 (Regex!21114) Bool)

(assert (=> b!7859751 (= e!4644929 (nullable!9384 r1!6218))))

(declare-fun b!7859753 () Bool)

(declare-fun e!4644928 () Bool)

(declare-fun tp!2329196 () Bool)

(assert (=> b!7859753 (= e!4644928 (and tp_is_empty!52627 tp!2329196))))

(declare-fun b!7859754 () Bool)

(declare-fun res!3124610 () Bool)

(declare-fun e!4644932 () Bool)

(assert (=> b!7859754 (=> (not res!3124610) (not e!4644932))))

(declare-datatypes ((List!73973 0))(
  ( (Nil!73849) (Cons!73849 (h!80297 C!42554) (t!388708 List!73973)) )
))
(declare-fun s!14237 () List!73973)

(assert (=> b!7859754 (= res!3124610 (is-Cons!73849 s!14237))))

(declare-fun b!7859755 () Bool)

(declare-fun res!3124611 () Bool)

(assert (=> b!7859755 (=> (not res!3124611) (not e!4644932))))

(declare-fun r2!6156 () Regex!21114)

(declare-fun derivativeStep!6347 (Regex!21114 C!42554) Regex!21114)

(assert (=> b!7859755 (= res!3124611 (= (derivativeStep!6347 (Concat!29959 r2!6156 r1!6218) (h!80297 s!14237)) (Union!21114 (Concat!29959 (derivativeStep!6347 r2!6156 (h!80297 s!14237)) r1!6218) (derivativeStep!6347 r1!6218 (h!80297 s!14237)))))))

(declare-fun b!7859756 () Bool)

(declare-fun tp!2329193 () Bool)

(assert (=> b!7859756 (= e!4644931 tp!2329193)))

(declare-fun b!7859757 () Bool)

(declare-fun matchR!10550 (Regex!21114 List!73973) Bool)

(declare-fun head!16063 (List!73973) C!42554)

(declare-fun tail!15606 (List!73973) List!73973)

(assert (=> b!7859757 (= e!4644929 (matchR!10550 (derivativeStep!6347 r1!6218 (head!16063 s!14237)) (tail!15606 s!14237)))))

(declare-fun b!7859758 () Bool)

(declare-fun e!4644930 () Bool)

(declare-fun tp!2329199 () Bool)

(declare-fun tp!2329202 () Bool)

(assert (=> b!7859758 (= e!4644930 (and tp!2329199 tp!2329202))))

(declare-fun b!7859759 () Bool)

(declare-fun res!3124607 () Bool)

(assert (=> b!7859759 (=> (not res!3124607) (not e!4644932))))

(assert (=> b!7859759 (= res!3124607 (matchR!10550 r1!6218 s!14237))))

(declare-fun b!7859760 () Bool)

(declare-fun res!3124608 () Bool)

(assert (=> b!7859760 (=> (not res!3124608) (not e!4644932))))

(assert (=> b!7859760 (= res!3124608 (nullable!9384 r2!6156))))

(declare-fun b!7859761 () Bool)

(declare-fun res!3124612 () Bool)

(assert (=> b!7859761 (=> (not res!3124612) (not e!4644932))))

(declare-fun validRegex!11524 (Regex!21114) Bool)

(assert (=> b!7859761 (= res!3124612 (validRegex!11524 r2!6156))))

(declare-fun res!3124609 () Bool)

(assert (=> start!743560 (=> (not res!3124609) (not e!4644932))))

(assert (=> start!743560 (= res!3124609 (validRegex!11524 r1!6218))))

(assert (=> start!743560 e!4644932))

(assert (=> start!743560 e!4644931))

(assert (=> start!743560 e!4644930))

(assert (=> start!743560 e!4644928))

(declare-fun b!7859752 () Bool)

(declare-fun tp!2329198 () Bool)

(assert (=> b!7859752 (= e!4644930 tp!2329198)))

(declare-fun b!7859762 () Bool)

(assert (=> b!7859762 (= e!4644932 (not true))))

(assert (=> b!7859762 e!4644929))

(declare-fun c!1444364 () Bool)

(declare-fun isEmpty!42352 (List!73973) Bool)

(assert (=> b!7859762 (= c!1444364 (isEmpty!42352 s!14237))))

(declare-datatypes ((Unit!168934 0))(
  ( (Unit!168935) )
))
(declare-fun lt!2680238 () Unit!168934)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!1 (Regex!21114 List!73973) Unit!168934)

(assert (=> b!7859762 (= lt!2680238 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!1 r1!6218 s!14237))))

(declare-fun b!7859763 () Bool)

(declare-fun tp!2329203 () Bool)

(declare-fun tp!2329201 () Bool)

(assert (=> b!7859763 (= e!4644931 (and tp!2329203 tp!2329201))))

(declare-fun b!7859764 () Bool)

(declare-fun tp!2329200 () Bool)

(declare-fun tp!2329197 () Bool)

(assert (=> b!7859764 (= e!4644930 (and tp!2329200 tp!2329197))))

(declare-fun b!7859765 () Bool)

(assert (=> b!7859765 (= e!4644930 tp_is_empty!52627)))

(assert (= (and start!743560 res!3124609) b!7859761))

(assert (= (and b!7859761 res!3124612) b!7859759))

(assert (= (and b!7859759 res!3124607) b!7859760))

(assert (= (and b!7859760 res!3124608) b!7859754))

(assert (= (and b!7859754 res!3124610) b!7859755))

(assert (= (and b!7859755 res!3124611) b!7859762))

(assert (= (and b!7859762 c!1444364) b!7859751))

(assert (= (and b!7859762 (not c!1444364)) b!7859757))

(assert (= (and start!743560 (is-ElementMatch!21114 r1!6218)) b!7859750))

(assert (= (and start!743560 (is-Concat!29959 r1!6218)) b!7859763))

(assert (= (and start!743560 (is-Star!21114 r1!6218)) b!7859756))

(assert (= (and start!743560 (is-Union!21114 r1!6218)) b!7859749))

(assert (= (and start!743560 (is-ElementMatch!21114 r2!6156)) b!7859765))

(assert (= (and start!743560 (is-Concat!29959 r2!6156)) b!7859764))

(assert (= (and start!743560 (is-Star!21114 r2!6156)) b!7859752))

(assert (= (and start!743560 (is-Union!21114 r2!6156)) b!7859758))

(assert (= (and start!743560 (is-Cons!73849 s!14237)) b!7859753))

(declare-fun m!8261756 () Bool)

(assert (=> b!7859761 m!8261756))

(declare-fun m!8261758 () Bool)

(assert (=> b!7859757 m!8261758))

(assert (=> b!7859757 m!8261758))

(declare-fun m!8261760 () Bool)

(assert (=> b!7859757 m!8261760))

(declare-fun m!8261762 () Bool)

(assert (=> b!7859757 m!8261762))

(assert (=> b!7859757 m!8261760))

(assert (=> b!7859757 m!8261762))

(declare-fun m!8261764 () Bool)

(assert (=> b!7859757 m!8261764))

(declare-fun m!8261766 () Bool)

(assert (=> b!7859759 m!8261766))

(declare-fun m!8261768 () Bool)

(assert (=> b!7859751 m!8261768))

(declare-fun m!8261770 () Bool)

(assert (=> b!7859762 m!8261770))

(declare-fun m!8261772 () Bool)

(assert (=> b!7859762 m!8261772))

(declare-fun m!8261774 () Bool)

(assert (=> start!743560 m!8261774))

(declare-fun m!8261776 () Bool)

(assert (=> b!7859760 m!8261776))

(declare-fun m!8261778 () Bool)

(assert (=> b!7859755 m!8261778))

(declare-fun m!8261780 () Bool)

(assert (=> b!7859755 m!8261780))

(declare-fun m!8261782 () Bool)

(assert (=> b!7859755 m!8261782))

(push 1)

(assert (not b!7859763))

(assert (not b!7859749))

(assert (not b!7859761))

(assert tp_is_empty!52627)

(assert (not b!7859757))

(assert (not b!7859751))

(assert (not b!7859764))

(assert (not b!7859762))

(assert (not b!7859759))

(assert (not start!743560))

(assert (not b!7859753))

(assert (not b!7859758))

(assert (not b!7859756))

(assert (not b!7859755))

(assert (not b!7859760))

(assert (not b!7859752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738914 () Bool)

(assert start!738914)

(declare-fun b!7750770 () Bool)

(declare-fun e!4594845 () Bool)

(assert (=> b!7750770 (= e!4594845 false)))

(declare-fun lt!2669374 () Bool)

(declare-datatypes ((C!41546 0))(
  ( (C!41547 (val!31213 Int)) )
))
(declare-datatypes ((Regex!20610 0))(
  ( (ElementMatch!20610 (c!1429511 C!41546)) (Concat!29455 (regOne!41732 Regex!20610) (regTwo!41732 Regex!20610)) (EmptyExpr!20610) (Star!20610 (reg!20939 Regex!20610)) (EmptyLang!20610) (Union!20610 (regOne!41733 Regex!20610) (regTwo!41733 Regex!20610)) )
))
(declare-fun lt!2669373 () Regex!20610)

(declare-datatypes ((List!73455 0))(
  ( (Nil!73331) (Cons!73331 (h!79779 C!41546) (t!388190 List!73455)) )
))
(declare-fun s1!4391 () List!73455)

(declare-fun matchR!10100 (Regex!20610 List!73455) Bool)

(assert (=> b!7750770 (= lt!2669374 (matchR!10100 lt!2669373 (t!388190 s1!4391)))))

(declare-fun b!7750771 () Bool)

(declare-fun e!4594846 () Bool)

(declare-fun tp!2273997 () Bool)

(assert (=> b!7750771 (= e!4594846 tp!2273997)))

(declare-fun res!3090577 () Bool)

(declare-fun e!4594842 () Bool)

(assert (=> start!738914 (=> (not res!3090577) (not e!4594842))))

(declare-fun lt!2669375 () Regex!20610)

(declare-fun validRegex!11028 (Regex!20610) Bool)

(assert (=> start!738914 (= res!3090577 (validRegex!11028 lt!2669375))))

(declare-fun r!25892 () Regex!20610)

(assert (=> start!738914 (= lt!2669375 (Star!20610 r!25892))))

(assert (=> start!738914 e!4594842))

(assert (=> start!738914 e!4594846))

(declare-fun e!4594844 () Bool)

(assert (=> start!738914 e!4594844))

(declare-fun e!4594843 () Bool)

(assert (=> start!738914 e!4594843))

(declare-fun b!7750772 () Bool)

(declare-fun tp_is_empty!51575 () Bool)

(assert (=> b!7750772 (= e!4594846 tp_is_empty!51575)))

(declare-fun b!7750773 () Bool)

(declare-fun tp!2273994 () Bool)

(assert (=> b!7750773 (= e!4594843 (and tp_is_empty!51575 tp!2273994))))

(declare-fun b!7750774 () Bool)

(assert (=> b!7750774 (= e!4594842 e!4594845)))

(declare-fun res!3090578 () Bool)

(assert (=> b!7750774 (=> (not res!3090578) (not e!4594845))))

(declare-fun derivativeStep!6033 (Regex!20610 C!41546) Regex!20610)

(assert (=> b!7750774 (= res!3090578 (= (derivativeStep!6033 lt!2669375 (h!79779 s1!4391)) (Concat!29455 lt!2669373 lt!2669375)))))

(assert (=> b!7750774 (= lt!2669373 (derivativeStep!6033 r!25892 (h!79779 s1!4391)))))

(declare-fun b!7750775 () Bool)

(declare-fun res!3090575 () Bool)

(assert (=> b!7750775 (=> (not res!3090575) (not e!4594842))))

(assert (=> b!7750775 (= res!3090575 (matchR!10100 r!25892 s1!4391))))

(declare-fun b!7750776 () Bool)

(declare-fun tp!2273995 () Bool)

(declare-fun tp!2273998 () Bool)

(assert (=> b!7750776 (= e!4594846 (and tp!2273995 tp!2273998))))

(declare-fun b!7750777 () Bool)

(declare-fun res!3090579 () Bool)

(assert (=> b!7750777 (=> (not res!3090579) (not e!4594842))))

(assert (=> b!7750777 (= res!3090579 (is-Cons!73331 s1!4391))))

(declare-fun b!7750778 () Bool)

(declare-fun tp!2273996 () Bool)

(assert (=> b!7750778 (= e!4594844 (and tp_is_empty!51575 tp!2273996))))

(declare-fun b!7750779 () Bool)

(declare-fun res!3090576 () Bool)

(assert (=> b!7750779 (=> (not res!3090576) (not e!4594845))))

(assert (=> b!7750779 (= res!3090576 (validRegex!11028 lt!2669373))))

(declare-fun b!7750780 () Bool)

(declare-fun tp!2273999 () Bool)

(declare-fun tp!2274000 () Bool)

(assert (=> b!7750780 (= e!4594846 (and tp!2273999 tp!2274000))))

(declare-fun b!7750781 () Bool)

(declare-fun res!3090580 () Bool)

(assert (=> b!7750781 (=> (not res!3090580) (not e!4594842))))

(declare-fun s2!3963 () List!73455)

(assert (=> b!7750781 (= res!3090580 (matchR!10100 lt!2669375 s2!3963))))

(assert (= (and start!738914 res!3090577) b!7750775))

(assert (= (and b!7750775 res!3090575) b!7750781))

(assert (= (and b!7750781 res!3090580) b!7750777))

(assert (= (and b!7750777 res!3090579) b!7750774))

(assert (= (and b!7750774 res!3090578) b!7750779))

(assert (= (and b!7750779 res!3090576) b!7750770))

(assert (= (and start!738914 (is-ElementMatch!20610 r!25892)) b!7750772))

(assert (= (and start!738914 (is-Concat!29455 r!25892)) b!7750776))

(assert (= (and start!738914 (is-Star!20610 r!25892)) b!7750771))

(assert (= (and start!738914 (is-Union!20610 r!25892)) b!7750780))

(assert (= (and start!738914 (is-Cons!73331 s1!4391)) b!7750778))

(assert (= (and start!738914 (is-Cons!73331 s2!3963)) b!7750773))

(declare-fun m!8216574 () Bool)

(assert (=> b!7750775 m!8216574))

(declare-fun m!8216576 () Bool)

(assert (=> start!738914 m!8216576))

(declare-fun m!8216578 () Bool)

(assert (=> b!7750774 m!8216578))

(declare-fun m!8216580 () Bool)

(assert (=> b!7750774 m!8216580))

(declare-fun m!8216582 () Bool)

(assert (=> b!7750781 m!8216582))

(declare-fun m!8216584 () Bool)

(assert (=> b!7750779 m!8216584))

(declare-fun m!8216586 () Bool)

(assert (=> b!7750770 m!8216586))

(push 1)

(assert (not b!7750770))

(assert (not b!7750781))

(assert (not b!7750774))

(assert (not start!738914))

(assert (not b!7750775))

(assert (not b!7750780))

(assert (not b!7750779))

(assert tp_is_empty!51575)

(assert (not b!7750778))

(assert (not b!7750773))

(assert (not b!7750771))

(assert (not b!7750776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


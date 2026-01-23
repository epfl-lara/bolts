; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739754 () Bool)

(assert start!739754)

(declare-fun b!7766132 () Bool)

(declare-fun e!4601962 () Bool)

(declare-fun tp_is_empty!51811 () Bool)

(assert (=> b!7766132 (= e!4601962 tp_is_empty!51811)))

(declare-fun b!7766133 () Bool)

(declare-fun e!4601961 () Bool)

(declare-fun tp!2281375 () Bool)

(assert (=> b!7766133 (= e!4601961 (and tp_is_empty!51811 tp!2281375))))

(declare-fun b!7766134 () Bool)

(declare-fun tp!2281377 () Bool)

(assert (=> b!7766134 (= e!4601962 tp!2281377)))

(declare-fun b!7766136 () Bool)

(declare-fun e!4601960 () Bool)

(assert (=> b!7766136 (= e!4601960 false)))

(declare-fun lt!2670856 () Bool)

(declare-datatypes ((C!41782 0))(
  ( (C!41783 (val!31331 Int)) )
))
(declare-datatypes ((Regex!20728 0))(
  ( (ElementMatch!20728 (c!1431351 C!41782)) (Concat!29573 (regOne!41968 Regex!20728) (regTwo!41968 Regex!20728)) (EmptyExpr!20728) (Star!20728 (reg!21057 Regex!20728)) (EmptyLang!20728) (Union!20728 (regOne!41969 Regex!20728) (regTwo!41969 Regex!20728)) )
))
(declare-fun lt!2670855 () Regex!20728)

(declare-datatypes ((List!73569 0))(
  ( (Nil!73445) (Cons!73445 (h!79893 C!41782) (t!388304 List!73569)) )
))
(declare-fun s!14904 () List!73569)

(declare-fun matchR!10190 (Regex!20728 List!73569) Bool)

(assert (=> b!7766136 (= lt!2670856 (matchR!10190 lt!2670855 (t!388304 s!14904)))))

(declare-fun b!7766137 () Bool)

(declare-fun res!3096039 () Bool)

(assert (=> b!7766137 (=> (not res!3096039) (not e!4601960))))

(declare-fun lt!2670858 () Regex!20728)

(declare-fun validRegex!11142 (Regex!20728) Bool)

(assert (=> b!7766137 (= res!3096039 (validRegex!11142 lt!2670858))))

(declare-fun b!7766138 () Bool)

(declare-fun tp!2281379 () Bool)

(declare-fun tp!2281374 () Bool)

(assert (=> b!7766138 (= e!4601962 (and tp!2281379 tp!2281374))))

(declare-fun b!7766139 () Bool)

(declare-fun e!4601963 () Bool)

(assert (=> b!7766139 (= e!4601963 e!4601960)))

(declare-fun res!3096037 () Bool)

(assert (=> b!7766139 (=> (not res!3096037) (not e!4601960))))

(declare-fun lt!2670857 () Regex!20728)

(declare-fun derivativeStep!6073 (Regex!20728 C!41782) Regex!20728)

(assert (=> b!7766139 (= res!3096037 (= (derivativeStep!6073 lt!2670857 (h!79893 s!14904)) lt!2670855))))

(assert (=> b!7766139 (= lt!2670855 (Concat!29573 lt!2670858 lt!2670857))))

(declare-fun r!25924 () Regex!20728)

(assert (=> b!7766139 (= lt!2670858 (derivativeStep!6073 r!25924 (h!79893 s!14904)))))

(declare-fun b!7766135 () Bool)

(declare-fun res!3096036 () Bool)

(assert (=> b!7766135 (=> (not res!3096036) (not e!4601963))))

(assert (=> b!7766135 (= res!3096036 (is-Cons!73445 s!14904))))

(declare-fun res!3096035 () Bool)

(assert (=> start!739754 (=> (not res!3096035) (not e!4601963))))

(assert (=> start!739754 (= res!3096035 (validRegex!11142 lt!2670857))))

(assert (=> start!739754 (= lt!2670857 (Star!20728 r!25924))))

(assert (=> start!739754 e!4601963))

(assert (=> start!739754 e!4601962))

(assert (=> start!739754 e!4601961))

(declare-fun b!7766140 () Bool)

(declare-fun tp!2281378 () Bool)

(declare-fun tp!2281376 () Bool)

(assert (=> b!7766140 (= e!4601962 (and tp!2281378 tp!2281376))))

(declare-fun b!7766141 () Bool)

(declare-fun res!3096038 () Bool)

(assert (=> b!7766141 (=> (not res!3096038) (not e!4601963))))

(assert (=> b!7766141 (= res!3096038 (matchR!10190 lt!2670857 s!14904))))

(assert (= (and start!739754 res!3096035) b!7766141))

(assert (= (and b!7766141 res!3096038) b!7766135))

(assert (= (and b!7766135 res!3096036) b!7766139))

(assert (= (and b!7766139 res!3096037) b!7766137))

(assert (= (and b!7766137 res!3096039) b!7766136))

(assert (= (and start!739754 (is-ElementMatch!20728 r!25924)) b!7766132))

(assert (= (and start!739754 (is-Concat!29573 r!25924)) b!7766140))

(assert (= (and start!739754 (is-Star!20728 r!25924)) b!7766134))

(assert (= (and start!739754 (is-Union!20728 r!25924)) b!7766138))

(assert (= (and start!739754 (is-Cons!73445 s!14904)) b!7766133))

(declare-fun m!8222690 () Bool)

(assert (=> start!739754 m!8222690))

(declare-fun m!8222692 () Bool)

(assert (=> b!7766141 m!8222692))

(declare-fun m!8222694 () Bool)

(assert (=> b!7766139 m!8222694))

(declare-fun m!8222696 () Bool)

(assert (=> b!7766139 m!8222696))

(declare-fun m!8222698 () Bool)

(assert (=> b!7766137 m!8222698))

(declare-fun m!8222700 () Bool)

(assert (=> b!7766136 m!8222700))

(push 1)

(assert (not b!7766139))

(assert (not b!7766138))

(assert (not b!7766134))

(assert (not start!739754))

(assert (not b!7766136))

(assert tp_is_empty!51811)

(assert (not b!7766140))

(assert (not b!7766137))

(assert (not b!7766133))

(assert (not b!7766141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


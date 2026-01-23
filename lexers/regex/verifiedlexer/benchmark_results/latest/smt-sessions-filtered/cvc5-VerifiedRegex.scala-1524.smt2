; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80328 () Bool)

(assert start!80328)

(declare-fun b!890446 () Bool)

(declare-fun e!583451 () Bool)

(declare-fun tp_is_empty!4255 () Bool)

(assert (=> b!890446 (= e!583451 tp_is_empty!4255)))

(declare-fun b!890447 () Bool)

(declare-fun tp!280323 () Bool)

(declare-fun tp!280326 () Bool)

(assert (=> b!890447 (= e!583451 (and tp!280323 tp!280326))))

(declare-fun b!890448 () Bool)

(declare-fun e!583452 () Bool)

(declare-fun tp!280325 () Bool)

(assert (=> b!890448 (= e!583452 (and tp_is_empty!4255 tp!280325))))

(declare-fun b!890449 () Bool)

(declare-fun tp!280321 () Bool)

(declare-fun tp!280324 () Bool)

(assert (=> b!890449 (= e!583451 (and tp!280321 tp!280324))))

(declare-fun b!890450 () Bool)

(declare-fun e!583450 () Bool)

(declare-datatypes ((C!5182 0))(
  ( (C!5183 (val!2839 Int)) )
))
(declare-datatypes ((Regex!2306 0))(
  ( (ElementMatch!2306 (c!144081 C!5182)) (Concat!4139 (regOne!5124 Regex!2306) (regTwo!5124 Regex!2306)) (EmptyExpr!2306) (Star!2306 (reg!2635 Regex!2306)) (EmptyLang!2306) (Union!2306 (regOne!5125 Regex!2306) (regTwo!5125 Regex!2306)) )
))
(declare-fun r!15766 () Regex!2306)

(declare-datatypes ((List!9536 0))(
  ( (Nil!9520) (Cons!9520 (h!14921 C!5182) (t!100582 List!9536)) )
))
(declare-fun s!10566 () List!9536)

(declare-fun matchR!844 (Regex!2306 List!9536) Bool)

(assert (=> b!890450 (= e!583450 (matchR!844 (regTwo!5125 r!15766) s!10566))))

(declare-fun b!890451 () Bool)

(declare-fun e!583449 () Bool)

(assert (=> b!890451 (= e!583449 true)))

(assert (=> b!890451 e!583450))

(declare-fun res!404897 () Bool)

(assert (=> b!890451 (=> res!404897 e!583450)))

(assert (=> b!890451 (= res!404897 (matchR!844 (regOne!5125 r!15766) s!10566))))

(declare-datatypes ((Unit!14191 0))(
  ( (Unit!14192) )
))
(declare-fun lt!332316 () Unit!14191)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!17 (Regex!2306 Regex!2306 List!9536) Unit!14191)

(assert (=> b!890451 (= lt!332316 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!17 (regOne!5125 r!15766) (regTwo!5125 r!15766) s!10566))))

(declare-fun b!890452 () Bool)

(declare-fun e!583448 () Bool)

(assert (=> b!890452 (= e!583448 (not e!583449))))

(declare-fun res!404898 () Bool)

(assert (=> b!890452 (=> res!404898 e!583449)))

(declare-fun lt!332317 () Bool)

(assert (=> b!890452 (= res!404898 (or (not lt!332317) (and (is-Concat!4139 r!15766) (is-EmptyExpr!2306 (regOne!5124 r!15766))) (and (is-Concat!4139 r!15766) (is-EmptyExpr!2306 (regTwo!5124 r!15766))) (is-Concat!4139 r!15766) (not (is-Union!2306 r!15766))))))

(declare-fun matchRSpec!107 (Regex!2306 List!9536) Bool)

(assert (=> b!890452 (= lt!332317 (matchRSpec!107 r!15766 s!10566))))

(assert (=> b!890452 (= lt!332317 (matchR!844 r!15766 s!10566))))

(declare-fun lt!332318 () Unit!14191)

(declare-fun mainMatchTheorem!107 (Regex!2306 List!9536) Unit!14191)

(assert (=> b!890452 (= lt!332318 (mainMatchTheorem!107 r!15766 s!10566))))

(declare-fun res!404899 () Bool)

(assert (=> start!80328 (=> (not res!404899) (not e!583448))))

(declare-fun validRegex!775 (Regex!2306) Bool)

(assert (=> start!80328 (= res!404899 (validRegex!775 r!15766))))

(assert (=> start!80328 e!583448))

(assert (=> start!80328 e!583451))

(assert (=> start!80328 e!583452))

(declare-fun b!890453 () Bool)

(declare-fun tp!280322 () Bool)

(assert (=> b!890453 (= e!583451 tp!280322)))

(assert (= (and start!80328 res!404899) b!890452))

(assert (= (and b!890452 (not res!404898)) b!890451))

(assert (= (and b!890451 (not res!404897)) b!890450))

(assert (= (and start!80328 (is-ElementMatch!2306 r!15766)) b!890446))

(assert (= (and start!80328 (is-Concat!4139 r!15766)) b!890449))

(assert (= (and start!80328 (is-Star!2306 r!15766)) b!890453))

(assert (= (and start!80328 (is-Union!2306 r!15766)) b!890447))

(assert (= (and start!80328 (is-Cons!9520 s!10566)) b!890448))

(declare-fun m!1133785 () Bool)

(assert (=> b!890450 m!1133785))

(declare-fun m!1133787 () Bool)

(assert (=> b!890451 m!1133787))

(declare-fun m!1133789 () Bool)

(assert (=> b!890451 m!1133789))

(declare-fun m!1133791 () Bool)

(assert (=> b!890452 m!1133791))

(declare-fun m!1133793 () Bool)

(assert (=> b!890452 m!1133793))

(declare-fun m!1133795 () Bool)

(assert (=> b!890452 m!1133795))

(declare-fun m!1133797 () Bool)

(assert (=> start!80328 m!1133797))

(push 1)

(assert (not start!80328))

(assert (not b!890448))

(assert (not b!890453))

(assert (not b!890450))

(assert (not b!890451))

(assert (not b!890452))

(assert (not b!890449))

(assert (not b!890447))

(assert tp_is_empty!4255)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


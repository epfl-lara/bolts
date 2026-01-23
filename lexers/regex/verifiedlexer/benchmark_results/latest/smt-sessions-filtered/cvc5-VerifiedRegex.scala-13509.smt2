; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728334 () Bool)

(assert start!728334)

(declare-fun b!7525980 () Bool)

(declare-fun e!4485917 () Bool)

(declare-fun tp!2187182 () Bool)

(declare-fun tp!2187183 () Bool)

(assert (=> b!7525980 (= e!4485917 (and tp!2187182 tp!2187183))))

(declare-fun b!7525981 () Bool)

(declare-fun tp_is_empty!49979 () Bool)

(assert (=> b!7525981 (= e!4485917 tp_is_empty!49979)))

(declare-fun b!7525982 () Bool)

(declare-fun e!4485915 () Bool)

(declare-fun tp!2187178 () Bool)

(assert (=> b!7525982 (= e!4485915 (and tp_is_empty!49979 tp!2187178))))

(declare-fun b!7525984 () Bool)

(declare-fun e!4485918 () Bool)

(declare-fun tp!2187185 () Bool)

(assert (=> b!7525984 (= e!4485918 (and tp_is_empty!49979 tp!2187185))))

(declare-fun b!7525985 () Bool)

(declare-fun tp!2187181 () Bool)

(declare-fun tp!2187180 () Bool)

(assert (=> b!7525985 (= e!4485917 (and tp!2187181 tp!2187180))))

(declare-fun b!7525986 () Bool)

(declare-fun res!3016273 () Bool)

(declare-fun e!4485916 () Bool)

(assert (=> b!7525986 (=> (not res!3016273) (not e!4485916))))

(declare-datatypes ((C!39950 0))(
  ( (C!39951 (val!30415 Int)) )
))
(declare-datatypes ((List!72695 0))(
  ( (Nil!72571) (Cons!72571 (h!79019 C!39950) (t!387402 List!72695)) )
))
(declare-fun bigger!57 () List!72695)

(declare-fun input!6727 () List!72695)

(declare-fun isPrefix!6018 (List!72695 List!72695) Bool)

(assert (=> b!7525986 (= res!3016273 (isPrefix!6018 bigger!57 input!6727))))

(declare-fun b!7525987 () Bool)

(declare-fun res!3016274 () Bool)

(assert (=> b!7525987 (=> (not res!3016274) (not e!4485916))))

(declare-fun returnP!57 () List!72695)

(declare-fun size!42308 (List!72695) Int)

(assert (=> b!7525987 (= res!3016274 (>= (size!42308 bigger!57) (size!42308 returnP!57)))))

(declare-fun b!7525988 () Bool)

(declare-fun e!4485914 () Bool)

(declare-fun tp!2187184 () Bool)

(assert (=> b!7525988 (= e!4485914 (and tp_is_empty!49979 tp!2187184))))

(declare-fun b!7525989 () Bool)

(declare-fun tp!2187179 () Bool)

(assert (=> b!7525989 (= e!4485917 tp!2187179)))

(declare-fun b!7525990 () Bool)

(assert (=> b!7525990 (= e!4485916 false)))

(declare-fun lt!2638705 () List!72695)

(declare-fun ++!17363 (List!72695 List!72695) List!72695)

(assert (=> b!7525990 (= lt!2638705 (++!17363 Nil!72571 input!6727))))

(declare-fun lt!2638707 () Int)

(assert (=> b!7525990 (= lt!2638707 (size!42308 input!6727))))

(declare-fun lt!2638706 () Int)

(assert (=> b!7525990 (= lt!2638706 (size!42308 Nil!72571))))

(declare-fun res!3016271 () Bool)

(assert (=> start!728334 (=> (not res!3016271) (not e!4485916))))

(declare-datatypes ((Regex!19812 0))(
  ( (ElementMatch!19812 (c!1390261 C!39950)) (Concat!28657 (regOne!40136 Regex!19812) (regTwo!40136 Regex!19812)) (EmptyExpr!19812) (Star!19812 (reg!20141 Regex!19812)) (EmptyLang!19812) (Union!19812 (regOne!40137 Regex!19812) (regTwo!40137 Regex!19812)) )
))
(declare-fun baseR!93 () Regex!19812)

(declare-fun validRegex!10240 (Regex!19812) Bool)

(assert (=> start!728334 (= res!3016271 (validRegex!10240 baseR!93))))

(assert (=> start!728334 e!4485916))

(assert (=> start!728334 e!4485917))

(assert (=> start!728334 e!4485914))

(assert (=> start!728334 e!4485915))

(assert (=> start!728334 e!4485918))

(declare-fun b!7525983 () Bool)

(declare-fun res!3016272 () Bool)

(assert (=> b!7525983 (=> (not res!3016272) (not e!4485916))))

(assert (=> b!7525983 (= res!3016272 (isPrefix!6018 returnP!57 input!6727))))

(assert (= (and start!728334 res!3016271) b!7525983))

(assert (= (and b!7525983 res!3016272) b!7525986))

(assert (= (and b!7525986 res!3016273) b!7525987))

(assert (= (and b!7525987 res!3016274) b!7525990))

(assert (= (and start!728334 (is-ElementMatch!19812 baseR!93)) b!7525981))

(assert (= (and start!728334 (is-Concat!28657 baseR!93)) b!7525980))

(assert (= (and start!728334 (is-Star!19812 baseR!93)) b!7525989))

(assert (= (and start!728334 (is-Union!19812 baseR!93)) b!7525985))

(assert (= (and start!728334 (is-Cons!72571 returnP!57)) b!7525988))

(assert (= (and start!728334 (is-Cons!72571 input!6727)) b!7525982))

(assert (= (and start!728334 (is-Cons!72571 bigger!57)) b!7525984))

(declare-fun m!8101506 () Bool)

(assert (=> start!728334 m!8101506))

(declare-fun m!8101508 () Bool)

(assert (=> b!7525987 m!8101508))

(declare-fun m!8101510 () Bool)

(assert (=> b!7525987 m!8101510))

(declare-fun m!8101512 () Bool)

(assert (=> b!7525983 m!8101512))

(declare-fun m!8101514 () Bool)

(assert (=> b!7525986 m!8101514))

(declare-fun m!8101516 () Bool)

(assert (=> b!7525990 m!8101516))

(declare-fun m!8101518 () Bool)

(assert (=> b!7525990 m!8101518))

(declare-fun m!8101520 () Bool)

(assert (=> b!7525990 m!8101520))

(push 1)

(assert (not start!728334))

(assert (not b!7525988))

(assert (not b!7525984))

(assert (not b!7525983))

(assert (not b!7525987))

(assert (not b!7525980))

(assert (not b!7525985))

(assert (not b!7525989))

(assert (not b!7525986))

(assert tp_is_empty!49979)

(assert (not b!7525982))

(assert (not b!7525990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


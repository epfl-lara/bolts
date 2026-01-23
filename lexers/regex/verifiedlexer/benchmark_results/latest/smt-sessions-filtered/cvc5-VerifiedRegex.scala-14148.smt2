; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743044 () Bool)

(assert start!743044)

(declare-fun b!7847205 () Bool)

(declare-fun res!3120721 () Bool)

(declare-fun e!4639102 () Bool)

(assert (=> b!7847205 (=> (not res!3120721) (not e!4639102))))

(declare-datatypes ((C!42462 0))(
  ( (C!42463 (val!31693 Int)) )
))
(declare-datatypes ((Regex!21068 0))(
  ( (ElementMatch!21068 (c!1442370 C!42462)) (Concat!29913 (regOne!42648 Regex!21068) (regTwo!42648 Regex!21068)) (EmptyExpr!21068) (Star!21068 (reg!21397 Regex!21068)) (EmptyLang!21068) (Union!21068 (regOne!42649 Regex!21068) (regTwo!42649 Regex!21068)) )
))
(declare-fun r1!6227 () Regex!21068)

(declare-datatypes ((List!73927 0))(
  ( (Nil!73803) (Cons!73803 (h!80251 C!42462) (t!388662 List!73927)) )
))
(declare-fun s1!4084 () List!73927)

(declare-fun matchR!10504 (Regex!21068 List!73927) Bool)

(assert (=> b!7847205 (= res!3120721 (matchR!10504 r1!6227 s1!4084))))

(declare-fun b!7847206 () Bool)

(declare-fun e!4639103 () Bool)

(assert (=> b!7847206 (= e!4639103 true)))

(declare-fun lt!2679288 () Regex!21068)

(declare-fun r2!6165 () Regex!21068)

(declare-fun derivativeStep!6305 (Regex!21068 C!42462) Regex!21068)

(assert (=> b!7847206 (= lt!2679288 (derivativeStep!6305 (Concat!29913 r1!6227 r2!6165) (h!80251 s1!4084)))))

(declare-fun b!7847207 () Bool)

(declare-fun res!3120723 () Bool)

(assert (=> b!7847207 (=> (not res!3120723) (not e!4639102))))

(assert (=> b!7847207 (= res!3120723 (is-Cons!73803 s1!4084))))

(declare-fun b!7847208 () Bool)

(declare-fun e!4639100 () Bool)

(declare-fun tp!2323504 () Bool)

(assert (=> b!7847208 (= e!4639100 tp!2323504)))

(declare-fun b!7847210 () Bool)

(declare-fun res!3120719 () Bool)

(assert (=> b!7847210 (=> (not res!3120719) (not e!4639102))))

(declare-fun validRegex!11478 (Regex!21068) Bool)

(assert (=> b!7847210 (= res!3120719 (validRegex!11478 r2!6165))))

(declare-fun b!7847211 () Bool)

(declare-fun e!4639104 () Bool)

(declare-fun tp!2323510 () Bool)

(declare-fun tp!2323506 () Bool)

(assert (=> b!7847211 (= e!4639104 (and tp!2323510 tp!2323506))))

(declare-fun b!7847212 () Bool)

(declare-fun tp!2323505 () Bool)

(declare-fun tp!2323501 () Bool)

(assert (=> b!7847212 (= e!4639104 (and tp!2323505 tp!2323501))))

(declare-fun b!7847213 () Bool)

(declare-fun tp!2323503 () Bool)

(declare-fun tp!2323509 () Bool)

(assert (=> b!7847213 (= e!4639100 (and tp!2323503 tp!2323509))))

(declare-fun b!7847214 () Bool)

(assert (=> b!7847214 (= e!4639102 (not e!4639103))))

(declare-fun res!3120720 () Bool)

(assert (=> b!7847214 (=> res!3120720 e!4639103)))

(declare-fun nullable!9342 (Regex!21068) Bool)

(assert (=> b!7847214 (= res!3120720 (nullable!9342 r1!6227))))

(declare-fun s2!3706 () List!73927)

(declare-fun lt!2679287 () Regex!21068)

(declare-fun ++!18078 (List!73927 List!73927) List!73927)

(assert (=> b!7847214 (matchR!10504 (Concat!29913 lt!2679287 r2!6165) (++!18078 (t!388662 s1!4084) s2!3706))))

(declare-datatypes ((Unit!168882 0))(
  ( (Unit!168883) )
))
(declare-fun lt!2679286 () Unit!168882)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!439 (Regex!21068 Regex!21068 List!73927 List!73927) Unit!168882)

(assert (=> b!7847214 (= lt!2679286 (lemmaTwoRegexMatchThenConcatMatchesConcatString!439 lt!2679287 r2!6165 (t!388662 s1!4084) s2!3706))))

(assert (=> b!7847214 (= lt!2679287 (derivativeStep!6305 r1!6227 (h!80251 s1!4084)))))

(declare-fun b!7847215 () Bool)

(declare-fun tp!2323502 () Bool)

(declare-fun tp!2323508 () Bool)

(assert (=> b!7847215 (= e!4639100 (and tp!2323502 tp!2323508))))

(declare-fun b!7847216 () Bool)

(declare-fun res!3120724 () Bool)

(assert (=> b!7847216 (=> (not res!3120724) (not e!4639102))))

(assert (=> b!7847216 (= res!3120724 (matchR!10504 r2!6165 s2!3706))))

(declare-fun res!3120722 () Bool)

(assert (=> start!743044 (=> (not res!3120722) (not e!4639102))))

(assert (=> start!743044 (= res!3120722 (validRegex!11478 r1!6227))))

(assert (=> start!743044 e!4639102))

(assert (=> start!743044 e!4639104))

(assert (=> start!743044 e!4639100))

(declare-fun e!4639105 () Bool)

(assert (=> start!743044 e!4639105))

(declare-fun e!4639101 () Bool)

(assert (=> start!743044 e!4639101))

(declare-fun b!7847209 () Bool)

(declare-fun tp!2323512 () Bool)

(assert (=> b!7847209 (= e!4639104 tp!2323512)))

(declare-fun b!7847217 () Bool)

(declare-fun tp_is_empty!52535 () Bool)

(assert (=> b!7847217 (= e!4639100 tp_is_empty!52535)))

(declare-fun b!7847218 () Bool)

(declare-fun tp!2323507 () Bool)

(assert (=> b!7847218 (= e!4639101 (and tp_is_empty!52535 tp!2323507))))

(declare-fun b!7847219 () Bool)

(declare-fun tp!2323511 () Bool)

(assert (=> b!7847219 (= e!4639105 (and tp_is_empty!52535 tp!2323511))))

(declare-fun b!7847220 () Bool)

(assert (=> b!7847220 (= e!4639104 tp_is_empty!52535)))

(assert (= (and start!743044 res!3120722) b!7847210))

(assert (= (and b!7847210 res!3120719) b!7847205))

(assert (= (and b!7847205 res!3120721) b!7847216))

(assert (= (and b!7847216 res!3120724) b!7847207))

(assert (= (and b!7847207 res!3120723) b!7847214))

(assert (= (and b!7847214 (not res!3120720)) b!7847206))

(assert (= (and start!743044 (is-ElementMatch!21068 r1!6227)) b!7847220))

(assert (= (and start!743044 (is-Concat!29913 r1!6227)) b!7847211))

(assert (= (and start!743044 (is-Star!21068 r1!6227)) b!7847209))

(assert (= (and start!743044 (is-Union!21068 r1!6227)) b!7847212))

(assert (= (and start!743044 (is-ElementMatch!21068 r2!6165)) b!7847217))

(assert (= (and start!743044 (is-Concat!29913 r2!6165)) b!7847215))

(assert (= (and start!743044 (is-Star!21068 r2!6165)) b!7847208))

(assert (= (and start!743044 (is-Union!21068 r2!6165)) b!7847213))

(assert (= (and start!743044 (is-Cons!73803 s1!4084)) b!7847219))

(assert (= (and start!743044 (is-Cons!73803 s2!3706)) b!7847218))

(declare-fun m!8256484 () Bool)

(assert (=> b!7847216 m!8256484))

(declare-fun m!8256486 () Bool)

(assert (=> b!7847210 m!8256486))

(declare-fun m!8256488 () Bool)

(assert (=> b!7847206 m!8256488))

(declare-fun m!8256490 () Bool)

(assert (=> start!743044 m!8256490))

(declare-fun m!8256492 () Bool)

(assert (=> b!7847214 m!8256492))

(declare-fun m!8256494 () Bool)

(assert (=> b!7847214 m!8256494))

(declare-fun m!8256496 () Bool)

(assert (=> b!7847214 m!8256496))

(declare-fun m!8256498 () Bool)

(assert (=> b!7847214 m!8256498))

(assert (=> b!7847214 m!8256494))

(declare-fun m!8256500 () Bool)

(assert (=> b!7847214 m!8256500))

(declare-fun m!8256502 () Bool)

(assert (=> b!7847205 m!8256502))

(push 1)

(assert (not b!7847211))

(assert (not b!7847213))

(assert (not b!7847208))

(assert (not b!7847215))

(assert (not b!7847205))

(assert (not b!7847216))

(assert tp_is_empty!52535)

(assert (not b!7847210))

(assert (not start!743044))

(assert (not b!7847206))

(assert (not b!7847214))

(assert (not b!7847212))

(assert (not b!7847218))

(assert (not b!7847209))

(assert (not b!7847219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


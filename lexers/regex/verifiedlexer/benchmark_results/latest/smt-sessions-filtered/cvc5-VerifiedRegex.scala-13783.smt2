; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734510 () Bool)

(assert start!734510)

(declare-fun b!7627076 () Bool)

(assert (=> b!7627076 true))

(assert (=> b!7627076 true))

(declare-fun b!7627072 () Bool)

(declare-fun e!4534635 () Bool)

(declare-fun e!4534632 () Bool)

(assert (=> b!7627072 (= e!4534635 e!4534632)))

(declare-fun res!3054163 () Bool)

(assert (=> b!7627072 (=> res!3054163 e!4534632)))

(declare-fun lambda!468814 () Int)

(declare-fun Exists!4514 (Int) Bool)

(assert (=> b!7627072 (= res!3054163 (not (Exists!4514 lambda!468814)))))

(declare-fun lt!2658057 () Bool)

(assert (=> b!7627072 lt!2658057))

(declare-datatypes ((Unit!167648 0))(
  ( (Unit!167649) )
))
(declare-fun lt!2658058 () Unit!167648)

(declare-datatypes ((C!41046 0))(
  ( (C!41047 (val!30963 Int)) )
))
(declare-datatypes ((Regex!20360 0))(
  ( (ElementMatch!20360 (c!1405301 C!41046)) (Concat!29205 (regOne!41232 Regex!20360) (regTwo!41232 Regex!20360)) (EmptyExpr!20360) (Star!20360 (reg!20689 Regex!20360)) (EmptyLang!20360) (Union!20360 (regOne!41233 Regex!20360) (regTwo!41233 Regex!20360)) )
))
(declare-fun r!14126 () Regex!20360)

(declare-datatypes ((List!73211 0))(
  ( (Nil!73087) (Cons!73087 (h!79535 C!41046) (t!387946 List!73211)) )
))
(declare-fun s!9605 () List!73211)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!267 (Regex!20360 Regex!20360 List!73211) Unit!167648)

(assert (=> b!7627072 (= lt!2658058 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!267 (regOne!41232 r!14126) (regTwo!41232 r!14126) s!9605))))

(declare-fun b!7627073 () Bool)

(declare-fun e!4534633 () Bool)

(declare-fun tp!2226896 () Bool)

(declare-fun tp!2226894 () Bool)

(assert (=> b!7627073 (= e!4534633 (and tp!2226896 tp!2226894))))

(declare-fun b!7627074 () Bool)

(declare-fun tp!2226897 () Bool)

(declare-fun tp!2226899 () Bool)

(assert (=> b!7627074 (= e!4534633 (and tp!2226897 tp!2226899))))

(declare-fun e!4534636 () Bool)

(assert (=> b!7627076 (= e!4534636 (not e!4534635))))

(declare-fun res!3054166 () Bool)

(assert (=> b!7627076 (=> res!3054166 e!4534635)))

(declare-fun matchR!9863 (Regex!20360 List!73211) Bool)

(assert (=> b!7627076 (= res!3054166 (not (matchR!9863 r!14126 s!9605)))))

(assert (=> b!7627076 (= lt!2658057 (Exists!4514 lambda!468814))))

(declare-datatypes ((tuple2!69278 0))(
  ( (tuple2!69279 (_1!37942 List!73211) (_2!37942 List!73211)) )
))
(declare-datatypes ((Option!17433 0))(
  ( (None!17432) (Some!17432 (v!54567 tuple2!69278)) )
))
(declare-fun isDefined!14049 (Option!17433) Bool)

(declare-fun findConcatSeparation!3463 (Regex!20360 Regex!20360 List!73211 List!73211 List!73211) Option!17433)

(assert (=> b!7627076 (= lt!2658057 (isDefined!14049 (findConcatSeparation!3463 (regOne!41232 r!14126) (regTwo!41232 r!14126) Nil!73087 s!9605 s!9605)))))

(declare-fun lt!2658059 () Unit!167648)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3221 (Regex!20360 Regex!20360 List!73211) Unit!167648)

(assert (=> b!7627076 (= lt!2658059 (lemmaFindConcatSeparationEquivalentToExists!3221 (regOne!41232 r!14126) (regTwo!41232 r!14126) s!9605))))

(declare-fun b!7627077 () Bool)

(assert (=> b!7627077 (= e!4534632 (Exists!4514 lambda!468814))))

(declare-fun b!7627078 () Bool)

(declare-fun e!4534634 () Bool)

(declare-fun tp_is_empty!51075 () Bool)

(declare-fun tp!2226898 () Bool)

(assert (=> b!7627078 (= e!4534634 (and tp_is_empty!51075 tp!2226898))))

(declare-fun b!7627079 () Bool)

(declare-fun tp!2226895 () Bool)

(assert (=> b!7627079 (= e!4534633 tp!2226895)))

(declare-fun b!7627080 () Bool)

(assert (=> b!7627080 (= e!4534633 tp_is_empty!51075)))

(declare-fun res!3054164 () Bool)

(assert (=> start!734510 (=> (not res!3054164) (not e!4534636))))

(declare-fun validRegex!10778 (Regex!20360) Bool)

(assert (=> start!734510 (= res!3054164 (validRegex!10778 r!14126))))

(assert (=> start!734510 e!4534636))

(assert (=> start!734510 e!4534633))

(assert (=> start!734510 e!4534634))

(declare-fun b!7627075 () Bool)

(declare-fun res!3054165 () Bool)

(assert (=> b!7627075 (=> (not res!3054165) (not e!4534636))))

(assert (=> b!7627075 (= res!3054165 (and (not (is-EmptyExpr!20360 r!14126)) (not (is-EmptyLang!20360 r!14126)) (not (is-ElementMatch!20360 r!14126)) (not (is-Union!20360 r!14126)) (not (is-Star!20360 r!14126))))))

(assert (= (and start!734510 res!3054164) b!7627075))

(assert (= (and b!7627075 res!3054165) b!7627076))

(assert (= (and b!7627076 (not res!3054166)) b!7627072))

(assert (= (and b!7627072 (not res!3054163)) b!7627077))

(assert (= (and start!734510 (is-ElementMatch!20360 r!14126)) b!7627080))

(assert (= (and start!734510 (is-Concat!29205 r!14126)) b!7627074))

(assert (= (and start!734510 (is-Star!20360 r!14126)) b!7627079))

(assert (= (and start!734510 (is-Union!20360 r!14126)) b!7627073))

(assert (= (and start!734510 (is-Cons!73087 s!9605)) b!7627078))

(declare-fun m!8155914 () Bool)

(assert (=> b!7627072 m!8155914))

(declare-fun m!8155916 () Bool)

(assert (=> b!7627072 m!8155916))

(declare-fun m!8155918 () Bool)

(assert (=> b!7627076 m!8155918))

(declare-fun m!8155920 () Bool)

(assert (=> b!7627076 m!8155920))

(declare-fun m!8155922 () Bool)

(assert (=> b!7627076 m!8155922))

(assert (=> b!7627076 m!8155920))

(declare-fun m!8155924 () Bool)

(assert (=> b!7627076 m!8155924))

(assert (=> b!7627076 m!8155914))

(assert (=> b!7627077 m!8155914))

(declare-fun m!8155926 () Bool)

(assert (=> start!734510 m!8155926))

(push 1)

(assert (not b!7627076))

(assert (not start!734510))

(assert (not b!7627078))

(assert (not b!7627077))

(assert tp_is_empty!51075)

(assert (not b!7627073))

(assert (not b!7627079))

(assert (not b!7627074))

(assert (not b!7627072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


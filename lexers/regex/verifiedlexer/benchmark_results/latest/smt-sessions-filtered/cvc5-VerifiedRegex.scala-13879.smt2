; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737602 () Bool)

(assert start!737602)

(declare-fun b!7720542 () Bool)

(assert (=> b!7720542 true))

(assert (=> b!7720542 true))

(declare-fun b!7720536 () Bool)

(declare-fun e!4579530 () Bool)

(declare-fun tp!2265034 () Bool)

(assert (=> b!7720536 (= e!4579530 tp!2265034)))

(declare-fun b!7720537 () Bool)

(declare-fun tp!2265035 () Bool)

(declare-fun tp!2265038 () Bool)

(assert (=> b!7720537 (= e!4579530 (and tp!2265035 tp!2265038))))

(declare-fun res!3080754 () Bool)

(declare-fun e!4579533 () Bool)

(assert (=> start!737602 (=> (not res!3080754) (not e!4579533))))

(declare-datatypes ((C!41430 0))(
  ( (C!41431 (val!31155 Int)) )
))
(declare-datatypes ((Regex!20552 0))(
  ( (ElementMatch!20552 (c!1423035 C!41430)) (Concat!29397 (regOne!41616 Regex!20552) (regTwo!41616 Regex!20552)) (EmptyExpr!20552) (Star!20552 (reg!20881 Regex!20552)) (EmptyLang!20552) (Union!20552 (regOne!41617 Regex!20552) (regTwo!41617 Regex!20552)) )
))
(declare-fun r!14126 () Regex!20552)

(declare-fun validRegex!10970 (Regex!20552) Bool)

(assert (=> start!737602 (= res!3080754 (validRegex!10970 r!14126))))

(assert (=> start!737602 e!4579533))

(assert (=> start!737602 e!4579530))

(declare-fun e!4579532 () Bool)

(assert (=> start!737602 e!4579532))

(declare-fun b!7720538 () Bool)

(declare-fun tp_is_empty!51459 () Bool)

(declare-fun tp!2265036 () Bool)

(assert (=> b!7720538 (= e!4579532 (and tp_is_empty!51459 tp!2265036))))

(declare-fun b!7720539 () Bool)

(declare-fun e!4579531 () Bool)

(declare-datatypes ((List!73399 0))(
  ( (Nil!73275) (Cons!73275 (h!79723 C!41430) (t!388134 List!73399)) )
))
(declare-fun s!9605 () List!73399)

(declare-fun matchR!10044 (Regex!20552 List!73399) Bool)

(assert (=> b!7720539 (= e!4579531 (matchR!10044 r!14126 s!9605))))

(declare-fun b!7720540 () Bool)

(declare-fun tp!2265037 () Bool)

(declare-fun tp!2265039 () Bool)

(assert (=> b!7720540 (= e!4579530 (and tp!2265037 tp!2265039))))

(declare-fun b!7720541 () Bool)

(assert (=> b!7720541 (= e!4579530 tp_is_empty!51459)))

(assert (=> b!7720542 (= e!4579533 (not e!4579531))))

(declare-fun res!3080753 () Bool)

(assert (=> b!7720542 (=> res!3080753 e!4579531)))

(assert (=> b!7720542 (= res!3080753 (not (matchR!10044 r!14126 s!9605)))))

(declare-fun lambda!471102 () Int)

(declare-datatypes ((tuple2!69558 0))(
  ( (tuple2!69559 (_1!38082 List!73399) (_2!38082 List!73399)) )
))
(declare-datatypes ((Option!17573 0))(
  ( (None!17572) (Some!17572 (v!54707 tuple2!69558)) )
))
(declare-fun isDefined!14189 (Option!17573) Bool)

(declare-fun findConcatSeparation!3603 (Regex!20552 Regex!20552 List!73399 List!73399 List!73399) Option!17573)

(declare-fun Exists!4673 (Int) Bool)

(assert (=> b!7720542 (= (isDefined!14189 (findConcatSeparation!3603 (regOne!41616 r!14126) (regTwo!41616 r!14126) Nil!73275 s!9605 s!9605)) (Exists!4673 lambda!471102))))

(declare-datatypes ((Unit!168176 0))(
  ( (Unit!168177) )
))
(declare-fun lt!2666275 () Unit!168176)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3361 (Regex!20552 Regex!20552 List!73399) Unit!168176)

(assert (=> b!7720542 (= lt!2666275 (lemmaFindConcatSeparationEquivalentToExists!3361 (regOne!41616 r!14126) (regTwo!41616 r!14126) s!9605))))

(declare-fun b!7720543 () Bool)

(declare-fun res!3080755 () Bool)

(assert (=> b!7720543 (=> res!3080755 e!4579531)))

(assert (=> b!7720543 (= res!3080755 (not (validRegex!10970 (regTwo!41616 r!14126))))))

(declare-fun b!7720544 () Bool)

(declare-fun res!3080751 () Bool)

(assert (=> b!7720544 (=> (not res!3080751) (not e!4579533))))

(assert (=> b!7720544 (= res!3080751 (and (not (is-EmptyExpr!20552 r!14126)) (not (is-EmptyLang!20552 r!14126)) (not (is-ElementMatch!20552 r!14126)) (not (is-Union!20552 r!14126)) (not (is-Star!20552 r!14126))))))

(declare-fun b!7720545 () Bool)

(declare-fun res!3080752 () Bool)

(assert (=> b!7720545 (=> res!3080752 e!4579531)))

(assert (=> b!7720545 (= res!3080752 (not (validRegex!10970 (regOne!41616 r!14126))))))

(assert (= (and start!737602 res!3080754) b!7720544))

(assert (= (and b!7720544 res!3080751) b!7720542))

(assert (= (and b!7720542 (not res!3080753)) b!7720545))

(assert (= (and b!7720545 (not res!3080752)) b!7720543))

(assert (= (and b!7720543 (not res!3080755)) b!7720539))

(assert (= (and start!737602 (is-ElementMatch!20552 r!14126)) b!7720541))

(assert (= (and start!737602 (is-Concat!29397 r!14126)) b!7720540))

(assert (= (and start!737602 (is-Star!20552 r!14126)) b!7720536))

(assert (= (and start!737602 (is-Union!20552 r!14126)) b!7720537))

(assert (= (and start!737602 (is-Cons!73275 s!9605)) b!7720538))

(declare-fun m!8199866 () Bool)

(assert (=> b!7720542 m!8199866))

(declare-fun m!8199868 () Bool)

(assert (=> b!7720542 m!8199868))

(declare-fun m!8199870 () Bool)

(assert (=> b!7720542 m!8199870))

(declare-fun m!8199872 () Bool)

(assert (=> b!7720542 m!8199872))

(assert (=> b!7720542 m!8199870))

(declare-fun m!8199874 () Bool)

(assert (=> b!7720542 m!8199874))

(assert (=> b!7720539 m!8199872))

(declare-fun m!8199876 () Bool)

(assert (=> b!7720545 m!8199876))

(declare-fun m!8199878 () Bool)

(assert (=> start!737602 m!8199878))

(declare-fun m!8199880 () Bool)

(assert (=> b!7720543 m!8199880))

(push 1)

(assert tp_is_empty!51459)

(assert (not start!737602))

(assert (not b!7720545))

(assert (not b!7720538))

(assert (not b!7720536))

(assert (not b!7720537))

(assert (not b!7720543))

(assert (not b!7720540))

(assert (not b!7720542))

(assert (not b!7720539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


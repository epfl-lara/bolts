; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736822 () Bool)

(assert start!736822)

(declare-fun b!7694452 () Bool)

(assert (=> b!7694452 true))

(assert (=> b!7694452 true))

(declare-fun e!4567124 () Bool)

(declare-fun e!4567125 () Bool)

(assert (=> b!7694452 (= e!4567124 (not e!4567125))))

(declare-fun res!3073613 () Bool)

(assert (=> b!7694452 (=> res!3073613 e!4567125)))

(declare-fun lt!2664248 () Bool)

(assert (=> b!7694452 (= res!3073613 lt!2664248)))

(declare-fun lambda!470462 () Int)

(declare-fun Exists!4641 (Int) Bool)

(assert (=> b!7694452 (= lt!2664248 (Exists!4641 lambda!470462))))

(declare-datatypes ((C!41358 0))(
  ( (C!41359 (val!31119 Int)) )
))
(declare-datatypes ((Regex!20516 0))(
  ( (ElementMatch!20516 (c!1418037 C!41358)) (Concat!29361 (regOne!41544 Regex!20516) (regTwo!41544 Regex!20516)) (EmptyExpr!20516) (Star!20516 (reg!20845 Regex!20516)) (EmptyLang!20516) (Union!20516 (regOne!41545 Regex!20516) (regTwo!41545 Regex!20516)) )
))
(declare-fun r!14126 () Regex!20516)

(declare-datatypes ((List!73367 0))(
  ( (Nil!73243) (Cons!73243 (h!79691 C!41358) (t!388102 List!73367)) )
))
(declare-fun s!9605 () List!73367)

(declare-datatypes ((tuple2!69494 0))(
  ( (tuple2!69495 (_1!38050 List!73367) (_2!38050 List!73367)) )
))
(declare-datatypes ((Option!17541 0))(
  ( (None!17540) (Some!17540 (v!54675 tuple2!69494)) )
))
(declare-fun isDefined!14157 (Option!17541) Bool)

(declare-fun findConcatSeparation!3571 (Regex!20516 Regex!20516 List!73367 List!73367 List!73367) Option!17541)

(assert (=> b!7694452 (= lt!2664248 (isDefined!14157 (findConcatSeparation!3571 (reg!20845 r!14126) r!14126 Nil!73243 s!9605 s!9605)))))

(declare-datatypes ((Unit!168064 0))(
  ( (Unit!168065) )
))
(declare-fun lt!2664247 () Unit!168064)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3329 (Regex!20516 Regex!20516 List!73367) Unit!168064)

(assert (=> b!7694452 (= lt!2664247 (lemmaFindConcatSeparationEquivalentToExists!3329 (reg!20845 r!14126) r!14126 s!9605))))

(declare-fun b!7694453 () Bool)

(declare-fun e!4567126 () Bool)

(declare-fun tp!2254053 () Bool)

(declare-fun tp!2254051 () Bool)

(assert (=> b!7694453 (= e!4567126 (and tp!2254053 tp!2254051))))

(declare-fun b!7694454 () Bool)

(declare-fun tp!2254052 () Bool)

(assert (=> b!7694454 (= e!4567126 tp!2254052)))

(declare-fun b!7694455 () Bool)

(declare-fun e!4567127 () Bool)

(declare-fun validRegex!10934 (Regex!20516) Bool)

(assert (=> b!7694455 (= e!4567127 (validRegex!10934 r!14126))))

(declare-fun b!7694456 () Bool)

(declare-fun res!3073618 () Bool)

(assert (=> b!7694456 (=> (not res!3073618) (not e!4567124))))

(assert (=> b!7694456 (= res!3073618 (and (not (is-EmptyExpr!20516 r!14126)) (not (is-EmptyLang!20516 r!14126)) (not (is-ElementMatch!20516 r!14126)) (not (is-Union!20516 r!14126)) (is-Star!20516 r!14126)))))

(declare-fun b!7694457 () Bool)

(declare-fun tp_is_empty!51387 () Bool)

(assert (=> b!7694457 (= e!4567126 tp_is_empty!51387)))

(declare-fun b!7694458 () Bool)

(declare-fun res!3073614 () Bool)

(assert (=> b!7694458 (=> res!3073614 e!4567125)))

(declare-fun matchR!10012 (Regex!20516 List!73367) Bool)

(assert (=> b!7694458 (= res!3073614 (not (matchR!10012 r!14126 s!9605)))))

(declare-fun res!3073617 () Bool)

(assert (=> start!736822 (=> (not res!3073617) (not e!4567124))))

(assert (=> start!736822 (= res!3073617 (validRegex!10934 r!14126))))

(assert (=> start!736822 e!4567124))

(assert (=> start!736822 e!4567126))

(declare-fun e!4567128 () Bool)

(assert (=> start!736822 e!4567128))

(declare-fun b!7694459 () Bool)

(assert (=> b!7694459 (= e!4567125 e!4567127)))

(declare-fun res!3073616 () Bool)

(assert (=> b!7694459 (=> res!3073616 e!4567127)))

(assert (=> b!7694459 (= res!3073616 (not (validRegex!10934 (reg!20845 r!14126))))))

(assert (=> b!7694459 (matchR!10012 (Concat!29361 (reg!20845 r!14126) r!14126) s!9605)))

(declare-fun lt!2664249 () Unit!168064)

(declare-fun lemmaStarAppConcat!31 (Regex!20516 List!73367) Unit!168064)

(assert (=> b!7694459 (= lt!2664249 (lemmaStarAppConcat!31 (reg!20845 r!14126) s!9605))))

(declare-fun b!7694460 () Bool)

(declare-fun tp!2254055 () Bool)

(assert (=> b!7694460 (= e!4567128 (and tp_is_empty!51387 tp!2254055))))

(declare-fun b!7694461 () Bool)

(declare-fun tp!2254054 () Bool)

(declare-fun tp!2254050 () Bool)

(assert (=> b!7694461 (= e!4567126 (and tp!2254054 tp!2254050))))

(declare-fun b!7694462 () Bool)

(declare-fun res!3073615 () Bool)

(assert (=> b!7694462 (=> (not res!3073615) (not e!4567124))))

(declare-fun isEmpty!41889 (List!73367) Bool)

(assert (=> b!7694462 (= res!3073615 (not (isEmpty!41889 s!9605)))))

(assert (= (and start!736822 res!3073617) b!7694456))

(assert (= (and b!7694456 res!3073618) b!7694462))

(assert (= (and b!7694462 res!3073615) b!7694452))

(assert (= (and b!7694452 (not res!3073613)) b!7694458))

(assert (= (and b!7694458 (not res!3073614)) b!7694459))

(assert (= (and b!7694459 (not res!3073616)) b!7694455))

(assert (= (and start!736822 (is-ElementMatch!20516 r!14126)) b!7694457))

(assert (= (and start!736822 (is-Concat!29361 r!14126)) b!7694461))

(assert (= (and start!736822 (is-Star!20516 r!14126)) b!7694454))

(assert (= (and start!736822 (is-Union!20516 r!14126)) b!7694453))

(assert (= (and start!736822 (is-Cons!73243 s!9605)) b!7694460))

(declare-fun m!8187502 () Bool)

(assert (=> b!7694455 m!8187502))

(declare-fun m!8187504 () Bool)

(assert (=> b!7694462 m!8187504))

(assert (=> start!736822 m!8187502))

(declare-fun m!8187506 () Bool)

(assert (=> b!7694452 m!8187506))

(declare-fun m!8187508 () Bool)

(assert (=> b!7694452 m!8187508))

(assert (=> b!7694452 m!8187508))

(declare-fun m!8187510 () Bool)

(assert (=> b!7694452 m!8187510))

(declare-fun m!8187512 () Bool)

(assert (=> b!7694452 m!8187512))

(declare-fun m!8187514 () Bool)

(assert (=> b!7694459 m!8187514))

(declare-fun m!8187516 () Bool)

(assert (=> b!7694459 m!8187516))

(declare-fun m!8187518 () Bool)

(assert (=> b!7694459 m!8187518))

(declare-fun m!8187520 () Bool)

(assert (=> b!7694458 m!8187520))

(push 1)

(assert (not b!7694458))

(assert (not b!7694459))

(assert (not b!7694452))

(assert (not b!7694453))

(assert (not b!7694461))

(assert (not b!7694454))

(assert tp_is_empty!51387)

(assert (not b!7694455))

(assert (not b!7694462))

(assert (not start!736822))

(assert (not b!7694460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


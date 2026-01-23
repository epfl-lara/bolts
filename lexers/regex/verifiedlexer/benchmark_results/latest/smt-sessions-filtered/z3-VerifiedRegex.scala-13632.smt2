; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731584 () Bool)

(assert start!731584)

(declare-fun b!7576512 () Bool)

(declare-fun e!4509962 () Bool)

(declare-fun tp_is_empty!50473 () Bool)

(declare-fun tp!2207707 () Bool)

(assert (=> b!7576512 (= e!4509962 (and tp_is_empty!50473 tp!2207707))))

(declare-fun b!7576513 () Bool)

(declare-fun res!3035376 () Bool)

(declare-fun e!4509964 () Bool)

(assert (=> b!7576513 (=> (not res!3035376) (not e!4509964))))

(declare-datatypes ((C!40444 0))(
  ( (C!40445 (val!30662 Int)) )
))
(declare-datatypes ((List!72942 0))(
  ( (Nil!72818) (Cons!72818 (h!79266 C!40444) (t!387677 List!72942)) )
))
(declare-fun s!13436 () List!72942)

(declare-fun isEmpty!41485 (List!72942) Bool)

(assert (=> b!7576513 (= res!3035376 (isEmpty!41485 s!13436))))

(declare-fun b!7576514 () Bool)

(declare-fun lt!2652217 () Bool)

(assert (=> b!7576514 (= e!4509964 lt!2652217)))

(declare-datatypes ((Unit!167075 0))(
  ( (Unit!167076) )
))
(declare-fun lt!2652216 () Unit!167075)

(declare-fun e!4509963 () Unit!167075)

(assert (=> b!7576514 (= lt!2652216 e!4509963)))

(declare-fun c!1397591 () Bool)

(assert (=> b!7576514 (= c!1397591 lt!2652217)))

(declare-datatypes ((Regex!20059 0))(
  ( (ElementMatch!20059 (c!1397592 C!40444)) (Concat!28904 (regOne!40630 Regex!20059) (regTwo!40630 Regex!20059)) (EmptyExpr!20059) (Star!20059 (reg!20388 Regex!20059)) (EmptyLang!20059) (Union!20059 (regOne!40631 Regex!20059) (regTwo!40631 Regex!20059)) )
))
(declare-fun r!22341 () Regex!20059)

(declare-fun nullable!8754 (Regex!20059) Bool)

(assert (=> b!7576514 (= lt!2652217 (nullable!8754 r!22341))))

(declare-fun b!7576515 () Bool)

(declare-fun lt!2652218 () Unit!167075)

(assert (=> b!7576515 (= e!4509963 lt!2652218)))

(declare-fun lemmaNullableThenNotLostCause!100 (Regex!20059) Unit!167075)

(assert (=> b!7576515 (= lt!2652218 (lemmaNullableThenNotLostCause!100 r!22341))))

(assert (=> b!7576515 false))

(declare-fun b!7576516 () Bool)

(declare-fun e!4509965 () Bool)

(declare-fun tp!2207705 () Bool)

(assert (=> b!7576516 (= e!4509965 tp!2207705)))

(declare-fun b!7576517 () Bool)

(declare-fun tp!2207704 () Bool)

(declare-fun tp!2207706 () Bool)

(assert (=> b!7576517 (= e!4509965 (and tp!2207704 tp!2207706))))

(declare-fun b!7576518 () Bool)

(declare-fun res!3035375 () Bool)

(assert (=> b!7576518 (=> (not res!3035375) (not e!4509964))))

(declare-fun lostCause!1835 (Regex!20059) Bool)

(assert (=> b!7576518 (= res!3035375 (lostCause!1835 r!22341))))

(declare-fun res!3035374 () Bool)

(assert (=> start!731584 (=> (not res!3035374) (not e!4509964))))

(declare-fun validRegex!10487 (Regex!20059) Bool)

(assert (=> start!731584 (= res!3035374 (validRegex!10487 r!22341))))

(assert (=> start!731584 e!4509964))

(assert (=> start!731584 e!4509965))

(assert (=> start!731584 e!4509962))

(declare-fun b!7576519 () Bool)

(declare-fun Unit!167077 () Unit!167075)

(assert (=> b!7576519 (= e!4509963 Unit!167077)))

(declare-fun b!7576520 () Bool)

(declare-fun tp!2207709 () Bool)

(declare-fun tp!2207708 () Bool)

(assert (=> b!7576520 (= e!4509965 (and tp!2207709 tp!2207708))))

(declare-fun b!7576521 () Bool)

(assert (=> b!7576521 (= e!4509965 tp_is_empty!50473)))

(assert (= (and start!731584 res!3035374) b!7576518))

(assert (= (and b!7576518 res!3035375) b!7576513))

(assert (= (and b!7576513 res!3035376) b!7576514))

(assert (= (and b!7576514 c!1397591) b!7576515))

(assert (= (and b!7576514 (not c!1397591)) b!7576519))

(get-info :version)

(assert (= (and start!731584 ((_ is ElementMatch!20059) r!22341)) b!7576521))

(assert (= (and start!731584 ((_ is Concat!28904) r!22341)) b!7576520))

(assert (= (and start!731584 ((_ is Star!20059) r!22341)) b!7576516))

(assert (= (and start!731584 ((_ is Union!20059) r!22341)) b!7576517))

(assert (= (and start!731584 ((_ is Cons!72818) s!13436)) b!7576512))

(declare-fun m!8134376 () Bool)

(assert (=> b!7576518 m!8134376))

(declare-fun m!8134378 () Bool)

(assert (=> b!7576514 m!8134378))

(declare-fun m!8134380 () Bool)

(assert (=> b!7576515 m!8134380))

(declare-fun m!8134382 () Bool)

(assert (=> b!7576513 m!8134382))

(declare-fun m!8134384 () Bool)

(assert (=> start!731584 m!8134384))

(check-sat (not b!7576520) (not b!7576516) (not b!7576514) (not b!7576517) (not b!7576513) (not b!7576515) (not b!7576518) tp_is_empty!50473 (not start!731584) (not b!7576512))
(check-sat)

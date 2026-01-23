; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668066 () Bool)

(assert start!668066)

(declare-fun b!6963479 () Bool)

(declare-fun res!2841196 () Bool)

(declare-fun e!4186583 () Bool)

(assert (=> b!6963479 (=> (not res!2841196) (not e!4186583))))

(declare-datatypes ((C!34468 0))(
  ( (C!34469 (val!26936 Int)) )
))
(declare-datatypes ((Regex!17099 0))(
  ( (ElementMatch!17099 (c!1291125 C!34468)) (Concat!25944 (regOne!34710 Regex!17099) (regTwo!34710 Regex!17099)) (EmptyExpr!17099) (Star!17099 (reg!17428 Regex!17099)) (EmptyLang!17099) (Union!17099 (regOne!34711 Regex!17099) (regTwo!34711 Regex!17099)) )
))
(declare-fun r!13765 () Regex!17099)

(declare-datatypes ((List!66883 0))(
  ( (Nil!66759) (Cons!66759 (h!73207 Regex!17099) (t!380626 List!66883)) )
))
(declare-fun l!9142 () List!66883)

(declare-fun generalisedUnion!2574 (List!66883) Regex!17099)

(assert (=> b!6963479 (= res!2841196 (= r!13765 (generalisedUnion!2574 l!9142)))))

(declare-fun b!6963480 () Bool)

(declare-fun res!2841191 () Bool)

(declare-fun e!4186580 () Bool)

(assert (=> b!6963480 (=> res!2841191 e!4186580)))

(declare-fun lt!2479136 () List!66883)

(assert (=> b!6963480 (= res!2841191 (not (= (regTwo!34711 r!13765) (generalisedUnion!2574 lt!2479136))))))

(declare-fun b!6963481 () Bool)

(declare-fun e!4186587 () Bool)

(declare-fun e!4186584 () Bool)

(assert (=> b!6963481 (= e!4186587 e!4186584)))

(declare-fun res!2841193 () Bool)

(assert (=> b!6963481 (=> res!2841193 e!4186584)))

(declare-fun lt!2479139 () Bool)

(declare-fun e!4186586 () Bool)

(assert (=> b!6963481 (= res!2841193 (not (= lt!2479139 e!4186586)))))

(declare-fun res!2841195 () Bool)

(assert (=> b!6963481 (=> res!2841195 e!4186586)))

(declare-fun lt!2479141 () Bool)

(assert (=> b!6963481 (= res!2841195 lt!2479141)))

(declare-datatypes ((List!66884 0))(
  ( (Nil!66760) (Cons!66760 (h!73208 C!34468) (t!380627 List!66884)) )
))
(declare-fun s!9351 () List!66884)

(declare-fun matchRSpec!4120 (Regex!17099 List!66884) Bool)

(assert (=> b!6963481 (= lt!2479141 (matchRSpec!4120 (regOne!34711 r!13765) s!9351))))

(declare-fun b!6963482 () Bool)

(declare-fun e!4186585 () Bool)

(declare-fun tp!1920219 () Bool)

(declare-fun tp!1920217 () Bool)

(assert (=> b!6963482 (= e!4186585 (and tp!1920219 tp!1920217))))

(declare-fun b!6963484 () Bool)

(declare-fun e!4186581 () Bool)

(assert (=> b!6963484 (= e!4186581 e!4186587)))

(declare-fun res!2841198 () Bool)

(assert (=> b!6963484 (=> res!2841198 e!4186587)))

(declare-fun isEmpty!38972 (List!66883) Bool)

(assert (=> b!6963484 (= res!2841198 (isEmpty!38972 lt!2479136))))

(declare-fun tail!13053 (List!66883) List!66883)

(assert (=> b!6963484 (= lt!2479136 (tail!13053 l!9142))))

(declare-fun b!6963485 () Bool)

(declare-fun e!4186588 () Bool)

(declare-fun tp!1920216 () Bool)

(declare-fun tp!1920220 () Bool)

(assert (=> b!6963485 (= e!4186588 (and tp!1920216 tp!1920220))))

(declare-fun b!6963486 () Bool)

(assert (=> b!6963486 (= e!4186583 (not e!4186581))))

(declare-fun res!2841190 () Bool)

(assert (=> b!6963486 (=> res!2841190 e!4186581)))

(get-info :version)

(assert (=> b!6963486 (= res!2841190 (not ((_ is Union!17099) r!13765)))))

(assert (=> b!6963486 (= lt!2479139 (matchRSpec!4120 r!13765 s!9351))))

(declare-fun matchR!9205 (Regex!17099 List!66884) Bool)

(assert (=> b!6963486 (= lt!2479139 (matchR!9205 r!13765 s!9351))))

(declare-datatypes ((Unit!160858 0))(
  ( (Unit!160859) )
))
(declare-fun lt!2479140 () Unit!160858)

(declare-fun mainMatchTheorem!4114 (Regex!17099 List!66884) Unit!160858)

(assert (=> b!6963486 (= lt!2479140 (mainMatchTheorem!4114 r!13765 s!9351))))

(declare-fun b!6963487 () Bool)

(declare-fun e!4186582 () Bool)

(declare-fun tp_is_empty!43423 () Bool)

(declare-fun tp!1920215 () Bool)

(assert (=> b!6963487 (= e!4186582 (and tp_is_empty!43423 tp!1920215))))

(declare-fun b!6963488 () Bool)

(assert (=> b!6963488 (= e!4186585 tp_is_empty!43423)))

(declare-fun b!6963489 () Bool)

(declare-fun tp!1920221 () Bool)

(declare-fun tp!1920214 () Bool)

(assert (=> b!6963489 (= e!4186585 (and tp!1920221 tp!1920214))))

(declare-fun b!6963490 () Bool)

(assert (=> b!6963490 (= e!4186580 true)))

(declare-fun b!6963491 () Bool)

(assert (=> b!6963491 (= e!4186584 e!4186580)))

(declare-fun res!2841197 () Bool)

(assert (=> b!6963491 (=> res!2841197 e!4186580)))

(declare-fun lambda!397304 () Int)

(declare-fun forall!15970 (List!66883 Int) Bool)

(assert (=> b!6963491 (= res!2841197 (not (forall!15970 lt!2479136 lambda!397304)))))

(assert (=> b!6963491 (= (matchR!9205 (regTwo!34711 r!13765) s!9351) (matchRSpec!4120 (regTwo!34711 r!13765) s!9351))))

(declare-fun lt!2479137 () Unit!160858)

(assert (=> b!6963491 (= lt!2479137 (mainMatchTheorem!4114 (regTwo!34711 r!13765) s!9351))))

(assert (=> b!6963491 (= (matchR!9205 (regOne!34711 r!13765) s!9351) lt!2479141)))

(declare-fun lt!2479138 () Unit!160858)

(assert (=> b!6963491 (= lt!2479138 (mainMatchTheorem!4114 (regOne!34711 r!13765) s!9351))))

(declare-fun b!6963492 () Bool)

(assert (=> b!6963492 (= e!4186586 (matchRSpec!4120 (regTwo!34711 r!13765) s!9351))))

(declare-fun b!6963493 () Bool)

(declare-fun res!2841192 () Bool)

(assert (=> b!6963493 (=> res!2841192 e!4186581)))

(assert (=> b!6963493 (= res!2841192 (isEmpty!38972 l!9142))))

(declare-fun b!6963483 () Bool)

(declare-fun tp!1920218 () Bool)

(assert (=> b!6963483 (= e!4186585 tp!1920218)))

(declare-fun res!2841194 () Bool)

(assert (=> start!668066 (=> (not res!2841194) (not e!4186583))))

(assert (=> start!668066 (= res!2841194 (forall!15970 l!9142 lambda!397304))))

(assert (=> start!668066 e!4186583))

(assert (=> start!668066 e!4186588))

(assert (=> start!668066 e!4186585))

(assert (=> start!668066 e!4186582))

(assert (= (and start!668066 res!2841194) b!6963479))

(assert (= (and b!6963479 res!2841196) b!6963486))

(assert (= (and b!6963486 (not res!2841190)) b!6963493))

(assert (= (and b!6963493 (not res!2841192)) b!6963484))

(assert (= (and b!6963484 (not res!2841198)) b!6963481))

(assert (= (and b!6963481 (not res!2841195)) b!6963492))

(assert (= (and b!6963481 (not res!2841193)) b!6963491))

(assert (= (and b!6963491 (not res!2841197)) b!6963480))

(assert (= (and b!6963480 (not res!2841191)) b!6963490))

(assert (= (and start!668066 ((_ is Cons!66759) l!9142)) b!6963485))

(assert (= (and start!668066 ((_ is ElementMatch!17099) r!13765)) b!6963488))

(assert (= (and start!668066 ((_ is Concat!25944) r!13765)) b!6963482))

(assert (= (and start!668066 ((_ is Star!17099) r!13765)) b!6963483))

(assert (= (and start!668066 ((_ is Union!17099) r!13765)) b!6963489))

(assert (= (and start!668066 ((_ is Cons!66760) s!9351)) b!6963487))

(declare-fun m!7657044 () Bool)

(assert (=> b!6963491 m!7657044))

(declare-fun m!7657046 () Bool)

(assert (=> b!6963491 m!7657046))

(declare-fun m!7657048 () Bool)

(assert (=> b!6963491 m!7657048))

(declare-fun m!7657050 () Bool)

(assert (=> b!6963491 m!7657050))

(declare-fun m!7657052 () Bool)

(assert (=> b!6963491 m!7657052))

(declare-fun m!7657054 () Bool)

(assert (=> b!6963491 m!7657054))

(declare-fun m!7657056 () Bool)

(assert (=> b!6963479 m!7657056))

(declare-fun m!7657058 () Bool)

(assert (=> b!6963493 m!7657058))

(assert (=> b!6963492 m!7657052))

(declare-fun m!7657060 () Bool)

(assert (=> b!6963484 m!7657060))

(declare-fun m!7657062 () Bool)

(assert (=> b!6963484 m!7657062))

(declare-fun m!7657064 () Bool)

(assert (=> start!668066 m!7657064))

(declare-fun m!7657066 () Bool)

(assert (=> b!6963481 m!7657066))

(declare-fun m!7657068 () Bool)

(assert (=> b!6963480 m!7657068))

(declare-fun m!7657070 () Bool)

(assert (=> b!6963486 m!7657070))

(declare-fun m!7657072 () Bool)

(assert (=> b!6963486 m!7657072))

(declare-fun m!7657074 () Bool)

(assert (=> b!6963486 m!7657074))

(check-sat (not b!6963492) (not b!6963482) (not b!6963481) (not b!6963484) (not b!6963479) (not b!6963485) (not b!6963480) (not b!6963491) (not b!6963493) (not start!668066) (not b!6963486) (not b!6963483) (not b!6963489) tp_is_empty!43423 (not b!6963487))
(check-sat)

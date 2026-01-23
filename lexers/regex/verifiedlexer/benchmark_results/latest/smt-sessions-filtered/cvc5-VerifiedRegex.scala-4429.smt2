; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235770 () Bool)

(assert start!235770)

(declare-fun b!2404625 () Bool)

(declare-fun e!1531562 () Bool)

(declare-fun tp_is_empty!11513 () Bool)

(assert (=> b!2404625 (= e!1531562 tp_is_empty!11513)))

(declare-fun b!2404626 () Bool)

(declare-fun tp!765131 () Bool)

(declare-fun tp!765130 () Bool)

(assert (=> b!2404626 (= e!1531562 (and tp!765131 tp!765130))))

(declare-fun b!2404627 () Bool)

(declare-fun tp!765133 () Bool)

(declare-fun tp!765136 () Bool)

(assert (=> b!2404627 (= e!1531562 (and tp!765133 tp!765136))))

(declare-fun b!2404628 () Bool)

(declare-fun tp!765134 () Bool)

(assert (=> b!2404628 (= e!1531562 tp!765134)))

(declare-fun b!2404629 () Bool)

(declare-fun e!1531561 () Bool)

(declare-datatypes ((C!14258 0))(
  ( (C!14259 (val!8371 Int)) )
))
(declare-datatypes ((Regex!7050 0))(
  ( (ElementMatch!7050 (c!382981 C!14258)) (Concat!11686 (regOne!14612 Regex!7050) (regTwo!14612 Regex!7050)) (EmptyExpr!7050) (Star!7050 (reg!7379 Regex!7050)) (EmptyLang!7050) (Union!7050 (regOne!14613 Regex!7050) (regTwo!14613 Regex!7050)) )
))
(declare-fun r!13927 () Regex!7050)

(declare-fun validRegex!2775 (Regex!7050) Bool)

(assert (=> b!2404629 (= e!1531561 (validRegex!2775 r!13927))))

(declare-fun b!2404630 () Bool)

(declare-fun e!1531564 () Bool)

(declare-fun tp!765137 () Bool)

(assert (=> b!2404630 (= e!1531564 (and tp_is_empty!11513 tp!765137))))

(declare-fun res!1021443 () Bool)

(declare-fun e!1531566 () Bool)

(assert (=> start!235770 (=> (not res!1021443) (not e!1531566))))

(declare-datatypes ((List!28338 0))(
  ( (Nil!28240) (Cons!28240 (h!33641 Regex!7050) (t!208315 List!28338)) )
))
(declare-fun l!9164 () List!28338)

(declare-fun lambda!90424 () Int)

(declare-fun forall!5684 (List!28338 Int) Bool)

(assert (=> start!235770 (= res!1021443 (forall!5684 l!9164 lambda!90424))))

(assert (=> start!235770 e!1531566))

(declare-fun e!1531563 () Bool)

(assert (=> start!235770 e!1531563))

(assert (=> start!235770 e!1531562))

(assert (=> start!235770 e!1531564))

(declare-fun b!2404631 () Bool)

(declare-fun res!1021439 () Bool)

(assert (=> b!2404631 (=> res!1021439 e!1531561)))

(declare-fun e!1531565 () Bool)

(assert (=> b!2404631 (= res!1021439 e!1531565)))

(declare-fun c!382980 () Bool)

(assert (=> b!2404631 (= c!382980 (is-Cons!28240 l!9164))))

(declare-fun b!2404632 () Bool)

(declare-fun res!1021440 () Bool)

(assert (=> b!2404632 (=> (not res!1021440) (not e!1531566))))

(declare-fun generalisedConcat!151 (List!28338) Regex!7050)

(assert (=> b!2404632 (= res!1021440 (= r!13927 (generalisedConcat!151 l!9164)))))

(declare-datatypes ((List!28339 0))(
  ( (Nil!28241) (Cons!28241 (h!33642 C!14258) (t!208316 List!28339)) )
))
(declare-fun s!9460 () List!28339)

(declare-fun lt!872881 () Bool)

(declare-fun b!2404633 () Bool)

(declare-datatypes ((tuple2!27940 0))(
  ( (tuple2!27941 (_1!16511 List!28339) (_2!16511 List!28339)) )
))
(declare-datatypes ((Option!5581 0))(
  ( (None!5580) (Some!5580 (v!30988 tuple2!27940)) )
))
(declare-fun isDefined!4409 (Option!5581) Bool)

(declare-fun findConcatSeparation!689 (Regex!7050 Regex!7050 List!28339 List!28339 List!28339) Option!5581)

(assert (=> b!2404633 (= e!1531565 (not (= lt!872881 (isDefined!4409 (findConcatSeparation!689 (h!33641 l!9164) (generalisedConcat!151 (t!208315 l!9164)) Nil!28241 s!9460 s!9460)))))))

(declare-fun b!2404634 () Bool)

(declare-fun tp!765132 () Bool)

(declare-fun tp!765135 () Bool)

(assert (=> b!2404634 (= e!1531563 (and tp!765132 tp!765135))))

(declare-fun b!2404635 () Bool)

(declare-fun isEmpty!16244 (List!28339) Bool)

(assert (=> b!2404635 (= e!1531565 (not (= lt!872881 (isEmpty!16244 s!9460))))))

(declare-fun b!2404636 () Bool)

(assert (=> b!2404636 (= e!1531566 (not e!1531561))))

(declare-fun res!1021442 () Bool)

(assert (=> b!2404636 (=> res!1021442 e!1531561)))

(assert (=> b!2404636 (= res!1021442 (or (is-Concat!11686 r!13927) (not (is-EmptyExpr!7050 r!13927))))))

(declare-fun matchRSpec!899 (Regex!7050 List!28339) Bool)

(assert (=> b!2404636 (= lt!872881 (matchRSpec!899 r!13927 s!9460))))

(declare-fun matchR!3167 (Regex!7050 List!28339) Bool)

(assert (=> b!2404636 (= lt!872881 (matchR!3167 r!13927 s!9460))))

(declare-datatypes ((Unit!41371 0))(
  ( (Unit!41372) )
))
(declare-fun lt!872882 () Unit!41371)

(declare-fun mainMatchTheorem!899 (Regex!7050 List!28339) Unit!41371)

(assert (=> b!2404636 (= lt!872882 (mainMatchTheorem!899 r!13927 s!9460))))

(declare-fun b!2404637 () Bool)

(declare-fun res!1021441 () Bool)

(assert (=> b!2404637 (=> res!1021441 e!1531561)))

(assert (=> b!2404637 (= res!1021441 (is-Cons!28240 l!9164))))

(assert (= (and start!235770 res!1021443) b!2404632))

(assert (= (and b!2404632 res!1021440) b!2404636))

(assert (= (and b!2404636 (not res!1021442)) b!2404631))

(assert (= (and b!2404631 c!382980) b!2404633))

(assert (= (and b!2404631 (not c!382980)) b!2404635))

(assert (= (and b!2404631 (not res!1021439)) b!2404637))

(assert (= (and b!2404637 (not res!1021441)) b!2404629))

(assert (= (and start!235770 (is-Cons!28240 l!9164)) b!2404634))

(assert (= (and start!235770 (is-ElementMatch!7050 r!13927)) b!2404625))

(assert (= (and start!235770 (is-Concat!11686 r!13927)) b!2404627))

(assert (= (and start!235770 (is-Star!7050 r!13927)) b!2404628))

(assert (= (and start!235770 (is-Union!7050 r!13927)) b!2404626))

(assert (= (and start!235770 (is-Cons!28241 s!9460)) b!2404630))

(declare-fun m!2799423 () Bool)

(assert (=> start!235770 m!2799423))

(declare-fun m!2799425 () Bool)

(assert (=> b!2404632 m!2799425))

(declare-fun m!2799427 () Bool)

(assert (=> b!2404629 m!2799427))

(declare-fun m!2799429 () Bool)

(assert (=> b!2404635 m!2799429))

(declare-fun m!2799431 () Bool)

(assert (=> b!2404633 m!2799431))

(assert (=> b!2404633 m!2799431))

(declare-fun m!2799433 () Bool)

(assert (=> b!2404633 m!2799433))

(assert (=> b!2404633 m!2799433))

(declare-fun m!2799435 () Bool)

(assert (=> b!2404633 m!2799435))

(declare-fun m!2799437 () Bool)

(assert (=> b!2404636 m!2799437))

(declare-fun m!2799439 () Bool)

(assert (=> b!2404636 m!2799439))

(declare-fun m!2799441 () Bool)

(assert (=> b!2404636 m!2799441))

(push 1)

(assert (not b!2404636))

(assert tp_is_empty!11513)

(assert (not b!2404626))

(assert (not start!235770))

(assert (not b!2404630))

(assert (not b!2404629))

(assert (not b!2404628))

(assert (not b!2404627))

(assert (not b!2404635))

(assert (not b!2404632))

(assert (not b!2404633))

(assert (not b!2404634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!146920 () Bool)

(declare-fun call!146925 () Bool)

(declare-fun c!382991 () Bool)

(assert (=> bm!146920 (= call!146925 (validRegex!2775 (ite c!382991 (regOne!14613 r!13927) (regTwo!14612 r!13927))))))

(declare-fun b!2404695 () Bool)

(declare-fun res!1021472 () Bool)

(declare-fun e!1531599 () Bool)

(assert (=> b!2404695 (=> res!1021472 e!1531599)))

(assert (=> b!2404695 (= res!1021472 (not (is-Concat!11686 r!13927)))))

(declare-fun e!1531605 () Bool)

(assert (=> b!2404695 (= e!1531605 e!1531599)))

(declare-fun b!2404696 () Bool)

(declare-fun e!1531602 () Bool)

(assert (=> b!2404696 (= e!1531599 e!1531602)))

(declare-fun res!1021470 () Bool)

(assert (=> b!2404696 (=> (not res!1021470) (not e!1531602))))

(declare-fun call!146926 () Bool)

(assert (=> b!2404696 (= res!1021470 call!146926)))

(declare-fun b!2404697 () Bool)

(declare-fun e!1531600 () Bool)

(declare-fun call!146927 () Bool)

(assert (=> b!2404697 (= e!1531600 call!146927)))

(declare-fun b!2404698 () Bool)

(declare-fun e!1531603 () Bool)

(assert (=> b!2404698 (= e!1531603 e!1531600)))

(declare-fun res!1021471 () Bool)

(declare-fun nullable!2098 (Regex!7050) Bool)

(assert (=> b!2404698 (= res!1021471 (not (nullable!2098 (reg!7379 r!13927))))))

(assert (=> b!2404698 (=> (not res!1021471) (not e!1531600))))

(declare-fun c!382990 () Bool)

(declare-fun bm!146921 () Bool)

(assert (=> bm!146921 (= call!146927 (validRegex!2775 (ite c!382990 (reg!7379 r!13927) (ite c!382991 (regTwo!14613 r!13927) (regOne!14612 r!13927)))))))

(declare-fun b!2404699 () Bool)

(assert (=> b!2404699 (= e!1531603 e!1531605)))

(assert (=> b!2404699 (= c!382991 (is-Union!7050 r!13927))))

(declare-fun bm!146922 () Bool)

(assert (=> bm!146922 (= call!146926 call!146927)))

(declare-fun d!699966 () Bool)

(declare-fun res!1021469 () Bool)

(declare-fun e!1531601 () Bool)

(assert (=> d!699966 (=> res!1021469 e!1531601)))

(assert (=> d!699966 (= res!1021469 (is-ElementMatch!7050 r!13927))))

(assert (=> d!699966 (= (validRegex!2775 r!13927) e!1531601)))

(declare-fun b!2404700 () Bool)

(declare-fun res!1021473 () Bool)

(declare-fun e!1531604 () Bool)

(assert (=> b!2404700 (=> (not res!1021473) (not e!1531604))))

(assert (=> b!2404700 (= res!1021473 call!146925)))

(assert (=> b!2404700 (= e!1531605 e!1531604)))

(declare-fun b!2404701 () Bool)

(assert (=> b!2404701 (= e!1531604 call!146926)))

(declare-fun b!2404702 () Bool)

(assert (=> b!2404702 (= e!1531601 e!1531603)))

(assert (=> b!2404702 (= c!382990 (is-Star!7050 r!13927))))

(declare-fun b!2404703 () Bool)

(assert (=> b!2404703 (= e!1531602 call!146925)))

(assert (= (and d!699966 (not res!1021469)) b!2404702))

(assert (= (and b!2404702 c!382990) b!2404698))

(assert (= (and b!2404702 (not c!382990)) b!2404699))

(assert (= (and b!2404698 res!1021471) b!2404697))

(assert (= (and b!2404699 c!382991) b!2404700))

(assert (= (and b!2404699 (not c!382991)) b!2404695))

(assert (= (and b!2404700 res!1021473) b!2404701))

(assert (= (and b!2404695 (not res!1021472)) b!2404696))

(assert (= (and b!2404696 res!1021470) b!2404703))

(assert (= (or b!2404700 b!2404703) bm!146920))

(assert (= (or b!2404701 b!2404696) bm!146922))

(assert (= (or b!2404697 bm!146922) bm!146921))

(declare-fun m!2799465 () Bool)

(assert (=> bm!146920 m!2799465))

(declare-fun m!2799467 () Bool)

(assert (=> b!2404698 m!2799467))

(declare-fun m!2799469 () Bool)

(assert (=> bm!146921 m!2799469))

(assert (=> b!2404629 d!699966))

(declare-fun d!699972 () Bool)

(declare-fun res!1021478 () Bool)

(declare-fun e!1531610 () Bool)

(assert (=> d!699972 (=> res!1021478 e!1531610)))

(assert (=> d!699972 (= res!1021478 (is-Nil!28240 l!9164))))

(assert (=> d!699972 (= (forall!5684 l!9164 lambda!90424) e!1531610)))

(declare-fun b!2404708 () Bool)

(declare-fun e!1531611 () Bool)

(assert (=> b!2404708 (= e!1531610 e!1531611)))

(declare-fun res!1021479 () Bool)

(assert (=> b!2404708 (=> (not res!1021479) (not e!1531611))))

(declare-fun dynLambda!12162 (Int Regex!7050) Bool)

(assert (=> b!2404708 (= res!1021479 (dynLambda!12162 lambda!90424 (h!33641 l!9164)))))

(declare-fun b!2404709 () Bool)

(assert (=> b!2404709 (= e!1531611 (forall!5684 (t!208315 l!9164) lambda!90424))))

(assert (= (and d!699972 (not res!1021478)) b!2404708))

(assert (= (and b!2404708 res!1021479) b!2404709))

(declare-fun b_lambda!74387 () Bool)

(assert (=> (not b_lambda!74387) (not b!2404708)))

(declare-fun m!2799471 () Bool)

(assert (=> b!2404708 m!2799471))

(declare-fun m!2799473 () Bool)

(assert (=> b!2404709 m!2799473))

(assert (=> start!235770 d!699972))

(declare-fun b!2404763 () Bool)

(assert (=> b!2404763 true))

(assert (=> b!2404763 true))

(declare-fun bs!463258 () Bool)

(declare-fun b!2404761 () Bool)

(assert (= bs!463258 (and b!2404761 b!2404763)))

(declare-fun lambda!90433 () Int)

(declare-fun lambda!90432 () Int)

(assert (=> bs!463258 (not (= lambda!90433 lambda!90432))))

(assert (=> b!2404761 true))

(assert (=> b!2404761 true))

(declare-fun b!2404760 () Bool)

(declare-fun res!1021506 () Bool)

(declare-fun e!1531645 () Bool)

(assert (=> b!2404760 (=> res!1021506 e!1531645)))

(declare-fun call!146932 () Bool)

(assert (=> b!2404760 (= res!1021506 call!146932)))

(declare-fun e!1531641 () Bool)

(assert (=> b!2404760 (= e!1531641 e!1531645)))

(declare-fun call!146933 () Bool)

(assert (=> b!2404761 (= e!1531641 call!146933)))

(declare-fun b!2404762 () Bool)

(declare-fun e!1531643 () Bool)

(declare-fun e!1531640 () Bool)

(assert (=> b!2404762 (= e!1531643 e!1531640)))

(declare-fun res!1021508 () Bool)

(assert (=> b!2404762 (= res!1021508 (matchRSpec!899 (regOne!14613 r!13927) s!9460))))

(assert (=> b!2404762 (=> res!1021508 e!1531640)))

(declare-fun c!383005 () Bool)

(declare-fun bm!146927 () Bool)

(declare-fun Exists!1108 (Int) Bool)

(assert (=> bm!146927 (= call!146933 (Exists!1108 (ite c!383005 lambda!90432 lambda!90433)))))

(assert (=> b!2404763 (= e!1531645 call!146933)))

(declare-fun d!699974 () Bool)

(declare-fun c!383004 () Bool)

(assert (=> d!699974 (= c!383004 (is-EmptyExpr!7050 r!13927))))

(declare-fun e!1531644 () Bool)

(assert (=> d!699974 (= (matchRSpec!899 r!13927 s!9460) e!1531644)))

(declare-fun bm!146928 () Bool)

(assert (=> bm!146928 (= call!146932 (isEmpty!16244 s!9460))))

(declare-fun b!2404764 () Bool)

(declare-fun c!383006 () Bool)

(assert (=> b!2404764 (= c!383006 (is-ElementMatch!7050 r!13927))))

(declare-fun e!1531642 () Bool)

(declare-fun e!1531646 () Bool)

(assert (=> b!2404764 (= e!1531642 e!1531646)))

(declare-fun b!2404765 () Bool)

(declare-fun c!383007 () Bool)

(assert (=> b!2404765 (= c!383007 (is-Union!7050 r!13927))))

(assert (=> b!2404765 (= e!1531646 e!1531643)))

(declare-fun b!2404766 () Bool)

(assert (=> b!2404766 (= e!1531646 (= s!9460 (Cons!28241 (c!382981 r!13927) Nil!28241)))))

(declare-fun b!2404767 () Bool)

(assert (=> b!2404767 (= e!1531644 call!146932)))

(declare-fun b!2404768 () Bool)

(assert (=> b!2404768 (= e!1531644 e!1531642)))

(declare-fun res!1021507 () Bool)

(assert (=> b!2404768 (= res!1021507 (not (is-EmptyLang!7050 r!13927)))))

(assert (=> b!2404768 (=> (not res!1021507) (not e!1531642))))

(declare-fun b!2404769 () Bool)

(assert (=> b!2404769 (= e!1531643 e!1531641)))

(assert (=> b!2404769 (= c!383005 (is-Star!7050 r!13927))))

(declare-fun b!2404770 () Bool)

(assert (=> b!2404770 (= e!1531640 (matchRSpec!899 (regTwo!14613 r!13927) s!9460))))

(assert (= (and d!699974 c!383004) b!2404767))

(assert (= (and d!699974 (not c!383004)) b!2404768))

(assert (= (and b!2404768 res!1021507) b!2404764))

(assert (= (and b!2404764 c!383006) b!2404766))

(assert (= (and b!2404764 (not c!383006)) b!2404765))

(assert (= (and b!2404765 c!383007) b!2404762))

(assert (= (and b!2404765 (not c!383007)) b!2404769))

(assert (= (and b!2404762 (not res!1021508)) b!2404770))

(assert (= (and b!2404769 c!383005) b!2404760))

(assert (= (and b!2404769 (not c!383005)) b!2404761))

(assert (= (and b!2404760 (not res!1021506)) b!2404763))

(assert (= (or b!2404763 b!2404761) bm!146927))

(assert (= (or b!2404767 b!2404760) bm!146928))

(declare-fun m!2799475 () Bool)

(assert (=> b!2404762 m!2799475))

(declare-fun m!2799477 () Bool)

(assert (=> bm!146927 m!2799477))

(assert (=> bm!146928 m!2799429))

(declare-fun m!2799479 () Bool)

(assert (=> b!2404770 m!2799479))

(assert (=> b!2404636 d!699974))

(declare-fun b!2404812 () Bool)

(declare-fun res!1021532 () Bool)

(declare-fun e!1531667 () Bool)

(assert (=> b!2404812 (=> res!1021532 e!1531667)))

(declare-fun tail!3598 (List!28339) List!28339)

(assert (=> b!2404812 (= res!1021532 (not (isEmpty!16244 (tail!3598 s!9460))))))

(declare-fun b!2404813 () Bool)

(declare-fun e!1531666 () Bool)

(declare-fun lt!872900 () Bool)

(assert (=> b!2404813 (= e!1531666 (not lt!872900))))

(declare-fun b!2404814 () Bool)

(declare-fun head!5328 (List!28339) C!14258)

(assert (=> b!2404814 (= e!1531667 (not (= (head!5328 s!9460) (c!382981 r!13927))))))

(declare-fun b!2404815 () Bool)

(declare-fun res!1021533 () Bool)

(declare-fun e!1531670 () Bool)

(assert (=> b!2404815 (=> (not res!1021533) (not e!1531670))))

(assert (=> b!2404815 (= res!1021533 (isEmpty!16244 (tail!3598 s!9460)))))

(declare-fun b!2404816 () Bool)

(declare-fun res!1021537 () Bool)

(declare-fun e!1531668 () Bool)

(assert (=> b!2404816 (=> res!1021537 e!1531668)))

(assert (=> b!2404816 (= res!1021537 e!1531670)))

(declare-fun res!1021534 () Bool)

(assert (=> b!2404816 (=> (not res!1021534) (not e!1531670))))

(assert (=> b!2404816 (= res!1021534 lt!872900)))

(declare-fun b!2404817 () Bool)

(declare-fun e!1531671 () Bool)

(declare-fun call!146936 () Bool)

(assert (=> b!2404817 (= e!1531671 (= lt!872900 call!146936))))

(declare-fun b!2404818 () Bool)

(declare-fun e!1531672 () Bool)

(assert (=> b!2404818 (= e!1531672 (nullable!2098 r!13927))))

(declare-fun b!2404819 () Bool)

(declare-fun res!1021531 () Bool)

(assert (=> b!2404819 (=> (not res!1021531) (not e!1531670))))

(assert (=> b!2404819 (= res!1021531 (not call!146936))))

(declare-fun bm!146931 () Bool)

(assert (=> bm!146931 (= call!146936 (isEmpty!16244 s!9460))))

(declare-fun b!2404821 () Bool)

(assert (=> b!2404821 (= e!1531671 e!1531666)))

(declare-fun c!383016 () Bool)

(assert (=> b!2404821 (= c!383016 (is-EmptyLang!7050 r!13927))))

(declare-fun b!2404822 () Bool)

(assert (=> b!2404822 (= e!1531670 (= (head!5328 s!9460) (c!382981 r!13927)))))

(declare-fun b!2404823 () Bool)

(declare-fun derivativeStep!1755 (Regex!7050 C!14258) Regex!7050)

(assert (=> b!2404823 (= e!1531672 (matchR!3167 (derivativeStep!1755 r!13927 (head!5328 s!9460)) (tail!3598 s!9460)))))

(declare-fun b!2404824 () Bool)

(declare-fun res!1021536 () Bool)

(assert (=> b!2404824 (=> res!1021536 e!1531668)))

(assert (=> b!2404824 (= res!1021536 (not (is-ElementMatch!7050 r!13927)))))

(assert (=> b!2404824 (= e!1531666 e!1531668)))

(declare-fun b!2404825 () Bool)

(declare-fun e!1531669 () Bool)

(assert (=> b!2404825 (= e!1531668 e!1531669)))

(declare-fun res!1021535 () Bool)

(assert (=> b!2404825 (=> (not res!1021535) (not e!1531669))))

(assert (=> b!2404825 (= res!1021535 (not lt!872900))))

(declare-fun d!699976 () Bool)

(assert (=> d!699976 e!1531671))

(declare-fun c!383017 () Bool)

(assert (=> d!699976 (= c!383017 (is-EmptyExpr!7050 r!13927))))

(assert (=> d!699976 (= lt!872900 e!1531672)))

(declare-fun c!383018 () Bool)

(assert (=> d!699976 (= c!383018 (isEmpty!16244 s!9460))))

(assert (=> d!699976 (validRegex!2775 r!13927)))

(assert (=> d!699976 (= (matchR!3167 r!13927 s!9460) lt!872900)))

(declare-fun b!2404820 () Bool)

(assert (=> b!2404820 (= e!1531669 e!1531667)))

(declare-fun res!1021530 () Bool)

(assert (=> b!2404820 (=> res!1021530 e!1531667)))

(assert (=> b!2404820 (= res!1021530 call!146936)))

(assert (= (and d!699976 c!383018) b!2404818))

(assert (= (and d!699976 (not c!383018)) b!2404823))

(assert (= (and d!699976 c!383017) b!2404817))

(assert (= (and d!699976 (not c!383017)) b!2404821))

(assert (= (and b!2404821 c!383016) b!2404813))

(assert (= (and b!2404821 (not c!383016)) b!2404824))

(assert (= (and b!2404824 (not res!1021536)) b!2404816))

(assert (= (and b!2404816 res!1021534) b!2404819))

(assert (= (and b!2404819 res!1021531) b!2404815))

(assert (= (and b!2404815 res!1021533) b!2404822))

(assert (= (and b!2404816 (not res!1021537)) b!2404825))

(assert (= (and b!2404825 res!1021535) b!2404820))

(assert (= (and b!2404820 (not res!1021530)) b!2404812))

(assert (= (and b!2404812 (not res!1021532)) b!2404814))

(assert (= (or b!2404817 b!2404819 b!2404820) bm!146931))

(declare-fun m!2799505 () Bool)

(assert (=> b!2404812 m!2799505))

(assert (=> b!2404812 m!2799505))

(declare-fun m!2799507 () Bool)

(assert (=> b!2404812 m!2799507))

(assert (=> d!699976 m!2799429))

(assert (=> d!699976 m!2799427))

(declare-fun m!2799509 () Bool)

(assert (=> b!2404818 m!2799509))

(declare-fun m!2799511 () Bool)

(assert (=> b!2404822 m!2799511))

(assert (=> b!2404815 m!2799505))

(assert (=> b!2404815 m!2799505))

(assert (=> b!2404815 m!2799507))

(assert (=> b!2404823 m!2799511))

(assert (=> b!2404823 m!2799511))

(declare-fun m!2799513 () Bool)

(assert (=> b!2404823 m!2799513))

(assert (=> b!2404823 m!2799505))

(assert (=> b!2404823 m!2799513))

(assert (=> b!2404823 m!2799505))

(declare-fun m!2799515 () Bool)

(assert (=> b!2404823 m!2799515))

(assert (=> b!2404814 m!2799511))

(assert (=> bm!146931 m!2799429))

(assert (=> b!2404636 d!699976))

(declare-fun d!699980 () Bool)

(assert (=> d!699980 (= (matchR!3167 r!13927 s!9460) (matchRSpec!899 r!13927 s!9460))))

(declare-fun lt!872903 () Unit!41371)

(declare-fun choose!14225 (Regex!7050 List!28339) Unit!41371)

(assert (=> d!699980 (= lt!872903 (choose!14225 r!13927 s!9460))))

(assert (=> d!699980 (validRegex!2775 r!13927)))

(assert (=> d!699980 (= (mainMatchTheorem!899 r!13927 s!9460) lt!872903)))

(declare-fun bs!463259 () Bool)

(assert (= bs!463259 d!699980))

(assert (=> bs!463259 m!2799439))

(assert (=> bs!463259 m!2799437))

(declare-fun m!2799517 () Bool)

(assert (=> bs!463259 m!2799517))

(assert (=> bs!463259 m!2799427))

(assert (=> b!2404636 d!699980))

(declare-fun d!699982 () Bool)

(assert (=> d!699982 (= (isEmpty!16244 s!9460) (is-Nil!28241 s!9460))))

(assert (=> b!2404635 d!699982))

(declare-fun bs!463260 () Bool)

(declare-fun d!699984 () Bool)

(assert (= bs!463260 (and d!699984 start!235770)))

(declare-fun lambda!90438 () Int)

(assert (=> bs!463260 (= lambda!90438 lambda!90424)))

(declare-fun b!2404866 () Bool)

(declare-fun e!1531700 () Bool)

(declare-fun lt!872908 () Regex!7050)

(declare-fun isConcat!118 (Regex!7050) Bool)

(assert (=> b!2404866 (= e!1531700 (isConcat!118 lt!872908))))

(declare-fun b!2404867 () Bool)

(declare-fun e!1531702 () Regex!7050)

(assert (=> b!2404867 (= e!1531702 (Concat!11686 (h!33641 l!9164) (generalisedConcat!151 (t!208315 l!9164))))))

(declare-fun b!2404868 () Bool)

(declare-fun e!1531701 () Regex!7050)

(assert (=> b!2404868 (= e!1531701 (h!33641 l!9164))))

(declare-fun e!1531698 () Bool)

(assert (=> d!699984 e!1531698))

(declare-fun res!1021547 () Bool)

(assert (=> d!699984 (=> (not res!1021547) (not e!1531698))))

(assert (=> d!699984 (= res!1021547 (validRegex!2775 lt!872908))))

(assert (=> d!699984 (= lt!872908 e!1531701)))

(declare-fun c!383036 () Bool)

(declare-fun e!1531697 () Bool)

(assert (=> d!699984 (= c!383036 e!1531697)))

(declare-fun res!1021546 () Bool)

(assert (=> d!699984 (=> (not res!1021546) (not e!1531697))))

(assert (=> d!699984 (= res!1021546 (is-Cons!28240 l!9164))))

(assert (=> d!699984 (forall!5684 l!9164 lambda!90438)))

(assert (=> d!699984 (= (generalisedConcat!151 l!9164) lt!872908)))

(declare-fun b!2404869 () Bool)

(declare-fun isEmpty!16246 (List!28338) Bool)

(assert (=> b!2404869 (= e!1531697 (isEmpty!16246 (t!208315 l!9164)))))

(declare-fun b!2404870 () Bool)

(declare-fun e!1531699 () Bool)

(assert (=> b!2404870 (= e!1531699 e!1531700)))

(declare-fun c!383037 () Bool)

(declare-fun tail!3599 (List!28338) List!28338)

(assert (=> b!2404870 (= c!383037 (isEmpty!16246 (tail!3599 l!9164)))))

(declare-fun b!2404871 () Bool)

(assert (=> b!2404871 (= e!1531702 EmptyExpr!7050)))

(declare-fun b!2404872 () Bool)

(declare-fun isEmptyExpr!118 (Regex!7050) Bool)

(assert (=> b!2404872 (= e!1531699 (isEmptyExpr!118 lt!872908))))

(declare-fun b!2404873 () Bool)

(assert (=> b!2404873 (= e!1531698 e!1531699)))

(declare-fun c!383038 () Bool)

(assert (=> b!2404873 (= c!383038 (isEmpty!16246 l!9164))))

(declare-fun b!2404874 () Bool)

(declare-fun head!5329 (List!28338) Regex!7050)

(assert (=> b!2404874 (= e!1531700 (= lt!872908 (head!5329 l!9164)))))

(declare-fun b!2404875 () Bool)

(assert (=> b!2404875 (= e!1531701 e!1531702)))

(declare-fun c!383035 () Bool)

(assert (=> b!2404875 (= c!383035 (is-Cons!28240 l!9164))))

(assert (= (and d!699984 res!1021546) b!2404869))

(assert (= (and d!699984 c!383036) b!2404868))

(assert (= (and d!699984 (not c!383036)) b!2404875))

(assert (= (and b!2404875 c!383035) b!2404867))

(assert (= (and b!2404875 (not c!383035)) b!2404871))

(assert (= (and d!699984 res!1021547) b!2404873))

(assert (= (and b!2404873 c!383038) b!2404872))

(assert (= (and b!2404873 (not c!383038)) b!2404870))

(assert (= (and b!2404870 c!383037) b!2404874))

(assert (= (and b!2404870 (not c!383037)) b!2404866))

(declare-fun m!2799519 () Bool)

(assert (=> b!2404869 m!2799519))

(declare-fun m!2799521 () Bool)

(assert (=> b!2404874 m!2799521))

(declare-fun m!2799523 () Bool)

(assert (=> b!2404873 m!2799523))

(declare-fun m!2799525 () Bool)

(assert (=> b!2404870 m!2799525))

(assert (=> b!2404870 m!2799525))

(declare-fun m!2799527 () Bool)

(assert (=> b!2404870 m!2799527))

(declare-fun m!2799529 () Bool)

(assert (=> b!2404866 m!2799529))

(assert (=> b!2404867 m!2799431))

(declare-fun m!2799531 () Bool)

(assert (=> d!699984 m!2799531))

(declare-fun m!2799533 () Bool)

(assert (=> d!699984 m!2799533))

(declare-fun m!2799535 () Bool)

(assert (=> b!2404872 m!2799535))

(assert (=> b!2404632 d!699984))

(declare-fun d!699986 () Bool)

(declare-fun isEmpty!16247 (Option!5581) Bool)

(assert (=> d!699986 (= (isDefined!4409 (findConcatSeparation!689 (h!33641 l!9164) (generalisedConcat!151 (t!208315 l!9164)) Nil!28241 s!9460 s!9460)) (not (isEmpty!16247 (findConcatSeparation!689 (h!33641 l!9164) (generalisedConcat!151 (t!208315 l!9164)) Nil!28241 s!9460 s!9460))))))

(declare-fun bs!463261 () Bool)

(assert (= bs!463261 d!699986))

(assert (=> bs!463261 m!2799433))

(declare-fun m!2799537 () Bool)

(assert (=> bs!463261 m!2799537))

(assert (=> b!2404633 d!699986))

(declare-fun b!2404920 () Bool)

(declare-fun e!1531733 () Bool)

(declare-fun lt!872917 () Option!5581)

(assert (=> b!2404920 (= e!1531733 (not (isDefined!4409 lt!872917)))))

(declare-fun b!2404921 () Bool)

(declare-fun e!1531734 () Option!5581)

(declare-fun e!1531732 () Option!5581)

(assert (=> b!2404921 (= e!1531734 e!1531732)))

(declare-fun c!383051 () Bool)

(assert (=> b!2404921 (= c!383051 (is-Nil!28241 s!9460))))

(declare-fun b!2404922 () Bool)

(declare-fun res!1021568 () Bool)

(declare-fun e!1531731 () Bool)

(assert (=> b!2404922 (=> (not res!1021568) (not e!1531731))))

(declare-fun get!8660 (Option!5581) tuple2!27940)

(assert (=> b!2404922 (= res!1021568 (matchR!3167 (generalisedConcat!151 (t!208315 l!9164)) (_2!16511 (get!8660 lt!872917))))))

(declare-fun b!2404923 () Bool)

(assert (=> b!2404923 (= e!1531732 None!5580)))

(declare-fun d!699988 () Bool)

(assert (=> d!699988 e!1531733))

(declare-fun res!1021570 () Bool)

(assert (=> d!699988 (=> res!1021570 e!1531733)))

(assert (=> d!699988 (= res!1021570 e!1531731)))

(declare-fun res!1021572 () Bool)

(assert (=> d!699988 (=> (not res!1021572) (not e!1531731))))

(assert (=> d!699988 (= res!1021572 (isDefined!4409 lt!872917))))

(assert (=> d!699988 (= lt!872917 e!1531734)))

(declare-fun c!383052 () Bool)

(declare-fun e!1531735 () Bool)

(assert (=> d!699988 (= c!383052 e!1531735)))

(declare-fun res!1021569 () Bool)

(assert (=> d!699988 (=> (not res!1021569) (not e!1531735))))

(assert (=> d!699988 (= res!1021569 (matchR!3167 (h!33641 l!9164) Nil!28241))))

(assert (=> d!699988 (validRegex!2775 (h!33641 l!9164))))

(assert (=> d!699988 (= (findConcatSeparation!689 (h!33641 l!9164) (generalisedConcat!151 (t!208315 l!9164)) Nil!28241 s!9460 s!9460) lt!872917)))

(declare-fun b!2404924 () Bool)

(assert (=> b!2404924 (= e!1531735 (matchR!3167 (generalisedConcat!151 (t!208315 l!9164)) s!9460))))

(declare-fun b!2404925 () Bool)

(assert (=> b!2404925 (= e!1531734 (Some!5580 (tuple2!27941 Nil!28241 s!9460)))))

(declare-fun b!2404926 () Bool)

(declare-fun lt!872918 () Unit!41371)

(declare-fun lt!872919 () Unit!41371)

(assert (=> b!2404926 (= lt!872918 lt!872919)))

(declare-fun ++!6993 (List!28339 List!28339) List!28339)

(assert (=> b!2404926 (= (++!6993 (++!6993 Nil!28241 (Cons!28241 (h!33642 s!9460) Nil!28241)) (t!208316 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!633 (List!28339 C!14258 List!28339 List!28339) Unit!41371)

(assert (=> b!2404926 (= lt!872919 (lemmaMoveElementToOtherListKeepsConcatEq!633 Nil!28241 (h!33642 s!9460) (t!208316 s!9460) s!9460))))

(assert (=> b!2404926 (= e!1531732 (findConcatSeparation!689 (h!33641 l!9164) (generalisedConcat!151 (t!208315 l!9164)) (++!6993 Nil!28241 (Cons!28241 (h!33642 s!9460) Nil!28241)) (t!208316 s!9460) s!9460))))

(declare-fun b!2404927 () Bool)

(assert (=> b!2404927 (= e!1531731 (= (++!6993 (_1!16511 (get!8660 lt!872917)) (_2!16511 (get!8660 lt!872917))) s!9460))))

(declare-fun b!2404928 () Bool)

(declare-fun res!1021571 () Bool)

(assert (=> b!2404928 (=> (not res!1021571) (not e!1531731))))

(assert (=> b!2404928 (= res!1021571 (matchR!3167 (h!33641 l!9164) (_1!16511 (get!8660 lt!872917))))))

(assert (= (and d!699988 res!1021569) b!2404924))

(assert (= (and d!699988 c!383052) b!2404925))

(assert (= (and d!699988 (not c!383052)) b!2404921))

(assert (= (and b!2404921 c!383051) b!2404923))

(assert (= (and b!2404921 (not c!383051)) b!2404926))

(assert (= (and d!699988 res!1021572) b!2404928))

(assert (= (and b!2404928 res!1021571) b!2404922))

(assert (= (and b!2404922 res!1021568) b!2404927))

(assert (= (and d!699988 (not res!1021570)) b!2404920))

(declare-fun m!2799579 () Bool)

(assert (=> b!2404927 m!2799579))

(declare-fun m!2799581 () Bool)

(assert (=> b!2404927 m!2799581))

(assert (=> b!2404928 m!2799579))

(declare-fun m!2799583 () Bool)

(assert (=> b!2404928 m!2799583))

(declare-fun m!2799585 () Bool)

(assert (=> d!699988 m!2799585))

(declare-fun m!2799587 () Bool)

(assert (=> d!699988 m!2799587))

(declare-fun m!2799589 () Bool)

(assert (=> d!699988 m!2799589))

(assert (=> b!2404922 m!2799579))

(assert (=> b!2404922 m!2799431))

(declare-fun m!2799591 () Bool)

(assert (=> b!2404922 m!2799591))

(assert (=> b!2404920 m!2799585))

(declare-fun m!2799593 () Bool)

(assert (=> b!2404926 m!2799593))

(assert (=> b!2404926 m!2799593))

(declare-fun m!2799595 () Bool)

(assert (=> b!2404926 m!2799595))

(declare-fun m!2799597 () Bool)

(assert (=> b!2404926 m!2799597))

(assert (=> b!2404926 m!2799431))

(assert (=> b!2404926 m!2799593))

(declare-fun m!2799599 () Bool)

(assert (=> b!2404926 m!2799599))

(assert (=> b!2404924 m!2799431))

(declare-fun m!2799601 () Bool)

(assert (=> b!2404924 m!2799601))

(assert (=> b!2404633 d!699988))

(declare-fun bs!463265 () Bool)

(declare-fun d!699998 () Bool)

(assert (= bs!463265 (and d!699998 start!235770)))

(declare-fun lambda!90441 () Int)

(assert (=> bs!463265 (= lambda!90441 lambda!90424)))

(declare-fun bs!463266 () Bool)

(assert (= bs!463266 (and d!699998 d!699984)))

(assert (=> bs!463266 (= lambda!90441 lambda!90438)))

(declare-fun b!2404929 () Bool)

(declare-fun e!1531739 () Bool)

(declare-fun lt!872920 () Regex!7050)

(assert (=> b!2404929 (= e!1531739 (isConcat!118 lt!872920))))

(declare-fun b!2404930 () Bool)

(declare-fun e!1531741 () Regex!7050)

(assert (=> b!2404930 (= e!1531741 (Concat!11686 (h!33641 (t!208315 l!9164)) (generalisedConcat!151 (t!208315 (t!208315 l!9164)))))))

(declare-fun b!2404931 () Bool)

(declare-fun e!1531740 () Regex!7050)

(assert (=> b!2404931 (= e!1531740 (h!33641 (t!208315 l!9164)))))

(declare-fun e!1531737 () Bool)

(assert (=> d!699998 e!1531737))

(declare-fun res!1021574 () Bool)

(assert (=> d!699998 (=> (not res!1021574) (not e!1531737))))

(assert (=> d!699998 (= res!1021574 (validRegex!2775 lt!872920))))

(assert (=> d!699998 (= lt!872920 e!1531740)))

(declare-fun c!383054 () Bool)

(declare-fun e!1531736 () Bool)

(assert (=> d!699998 (= c!383054 e!1531736)))

(declare-fun res!1021573 () Bool)

(assert (=> d!699998 (=> (not res!1021573) (not e!1531736))))

(assert (=> d!699998 (= res!1021573 (is-Cons!28240 (t!208315 l!9164)))))

(assert (=> d!699998 (forall!5684 (t!208315 l!9164) lambda!90441)))

(assert (=> d!699998 (= (generalisedConcat!151 (t!208315 l!9164)) lt!872920)))

(declare-fun b!2404932 () Bool)

(assert (=> b!2404932 (= e!1531736 (isEmpty!16246 (t!208315 (t!208315 l!9164))))))

(declare-fun b!2404933 () Bool)

(declare-fun e!1531738 () Bool)

(assert (=> b!2404933 (= e!1531738 e!1531739)))

(declare-fun c!383055 () Bool)

(assert (=> b!2404933 (= c!383055 (isEmpty!16246 (tail!3599 (t!208315 l!9164))))))

(declare-fun b!2404934 () Bool)

(assert (=> b!2404934 (= e!1531741 EmptyExpr!7050)))

(declare-fun b!2404935 () Bool)

(assert (=> b!2404935 (= e!1531738 (isEmptyExpr!118 lt!872920))))

(declare-fun b!2404936 () Bool)

(assert (=> b!2404936 (= e!1531737 e!1531738)))

(declare-fun c!383056 () Bool)

(assert (=> b!2404936 (= c!383056 (isEmpty!16246 (t!208315 l!9164)))))

(declare-fun b!2404937 () Bool)

(assert (=> b!2404937 (= e!1531739 (= lt!872920 (head!5329 (t!208315 l!9164))))))

(declare-fun b!2404938 () Bool)

(assert (=> b!2404938 (= e!1531740 e!1531741)))

(declare-fun c!383053 () Bool)

(assert (=> b!2404938 (= c!383053 (is-Cons!28240 (t!208315 l!9164)))))

(assert (= (and d!699998 res!1021573) b!2404932))

(assert (= (and d!699998 c!383054) b!2404931))

(assert (= (and d!699998 (not c!383054)) b!2404938))

(assert (= (and b!2404938 c!383053) b!2404930))

(assert (= (and b!2404938 (not c!383053)) b!2404934))

(assert (= (and d!699998 res!1021574) b!2404936))

(assert (= (and b!2404936 c!383056) b!2404935))

(assert (= (and b!2404936 (not c!383056)) b!2404933))

(assert (= (and b!2404933 c!383055) b!2404937))

(assert (= (and b!2404933 (not c!383055)) b!2404929))

(declare-fun m!2799603 () Bool)

(assert (=> b!2404932 m!2799603))

(declare-fun m!2799605 () Bool)

(assert (=> b!2404937 m!2799605))

(assert (=> b!2404936 m!2799519))

(declare-fun m!2799607 () Bool)

(assert (=> b!2404933 m!2799607))

(assert (=> b!2404933 m!2799607))

(declare-fun m!2799609 () Bool)

(assert (=> b!2404933 m!2799609))

(declare-fun m!2799611 () Bool)

(assert (=> b!2404929 m!2799611))

(declare-fun m!2799613 () Bool)

(assert (=> b!2404930 m!2799613))

(declare-fun m!2799615 () Bool)

(assert (=> d!699998 m!2799615))

(declare-fun m!2799617 () Bool)

(assert (=> d!699998 m!2799617))

(declare-fun m!2799619 () Bool)

(assert (=> b!2404935 m!2799619))

(assert (=> b!2404633 d!699998))

(declare-fun b!2404969 () Bool)

(declare-fun e!1531758 () Bool)

(declare-fun tp!765172 () Bool)

(assert (=> b!2404969 (= e!1531758 tp!765172)))

(declare-fun b!2404970 () Bool)

(declare-fun tp!765175 () Bool)

(declare-fun tp!765173 () Bool)

(assert (=> b!2404970 (= e!1531758 (and tp!765175 tp!765173))))

(declare-fun b!2404968 () Bool)

(declare-fun tp!765174 () Bool)

(declare-fun tp!765176 () Bool)

(assert (=> b!2404968 (= e!1531758 (and tp!765174 tp!765176))))

(declare-fun b!2404967 () Bool)

(assert (=> b!2404967 (= e!1531758 tp_is_empty!11513)))

(assert (=> b!2404634 (= tp!765132 e!1531758)))

(assert (= (and b!2404634 (is-ElementMatch!7050 (h!33641 l!9164))) b!2404967))

(assert (= (and b!2404634 (is-Concat!11686 (h!33641 l!9164))) b!2404968))

(assert (= (and b!2404634 (is-Star!7050 (h!33641 l!9164))) b!2404969))

(assert (= (and b!2404634 (is-Union!7050 (h!33641 l!9164))) b!2404970))

(declare-fun b!2404975 () Bool)

(declare-fun e!1531761 () Bool)

(declare-fun tp!765181 () Bool)

(declare-fun tp!765182 () Bool)

(assert (=> b!2404975 (= e!1531761 (and tp!765181 tp!765182))))

(assert (=> b!2404634 (= tp!765135 e!1531761)))

(assert (= (and b!2404634 (is-Cons!28240 (t!208315 l!9164))) b!2404975))

(declare-fun b!2404980 () Bool)

(declare-fun e!1531764 () Bool)

(declare-fun tp!765185 () Bool)

(assert (=> b!2404980 (= e!1531764 (and tp_is_empty!11513 tp!765185))))

(assert (=> b!2404630 (= tp!765137 e!1531764)))

(assert (= (and b!2404630 (is-Cons!28241 (t!208316 s!9460))) b!2404980))

(declare-fun b!2404983 () Bool)

(declare-fun e!1531765 () Bool)

(declare-fun tp!765186 () Bool)

(assert (=> b!2404983 (= e!1531765 tp!765186)))

(declare-fun b!2404984 () Bool)

(declare-fun tp!765189 () Bool)

(declare-fun tp!765187 () Bool)

(assert (=> b!2404984 (= e!1531765 (and tp!765189 tp!765187))))

(declare-fun b!2404982 () Bool)

(declare-fun tp!765188 () Bool)

(declare-fun tp!765190 () Bool)

(assert (=> b!2404982 (= e!1531765 (and tp!765188 tp!765190))))

(declare-fun b!2404981 () Bool)

(assert (=> b!2404981 (= e!1531765 tp_is_empty!11513)))

(assert (=> b!2404626 (= tp!765131 e!1531765)))

(assert (= (and b!2404626 (is-ElementMatch!7050 (regOne!14613 r!13927))) b!2404981))

(assert (= (and b!2404626 (is-Concat!11686 (regOne!14613 r!13927))) b!2404982))

(assert (= (and b!2404626 (is-Star!7050 (regOne!14613 r!13927))) b!2404983))

(assert (= (and b!2404626 (is-Union!7050 (regOne!14613 r!13927))) b!2404984))

(declare-fun b!2404987 () Bool)

(declare-fun e!1531766 () Bool)

(declare-fun tp!765191 () Bool)

(assert (=> b!2404987 (= e!1531766 tp!765191)))

(declare-fun b!2404988 () Bool)

(declare-fun tp!765194 () Bool)

(declare-fun tp!765192 () Bool)

(assert (=> b!2404988 (= e!1531766 (and tp!765194 tp!765192))))

(declare-fun b!2404986 () Bool)

(declare-fun tp!765193 () Bool)

(declare-fun tp!765195 () Bool)

(assert (=> b!2404986 (= e!1531766 (and tp!765193 tp!765195))))

(declare-fun b!2404985 () Bool)

(assert (=> b!2404985 (= e!1531766 tp_is_empty!11513)))

(assert (=> b!2404626 (= tp!765130 e!1531766)))

(assert (= (and b!2404626 (is-ElementMatch!7050 (regTwo!14613 r!13927))) b!2404985))

(assert (= (and b!2404626 (is-Concat!11686 (regTwo!14613 r!13927))) b!2404986))

(assert (= (and b!2404626 (is-Star!7050 (regTwo!14613 r!13927))) b!2404987))

(assert (= (and b!2404626 (is-Union!7050 (regTwo!14613 r!13927))) b!2404988))

(declare-fun b!2404991 () Bool)

(declare-fun e!1531767 () Bool)

(declare-fun tp!765196 () Bool)

(assert (=> b!2404991 (= e!1531767 tp!765196)))

(declare-fun b!2404992 () Bool)

(declare-fun tp!765199 () Bool)

(declare-fun tp!765197 () Bool)

(assert (=> b!2404992 (= e!1531767 (and tp!765199 tp!765197))))

(declare-fun b!2404990 () Bool)

(declare-fun tp!765198 () Bool)

(declare-fun tp!765200 () Bool)

(assert (=> b!2404990 (= e!1531767 (and tp!765198 tp!765200))))

(declare-fun b!2404989 () Bool)

(assert (=> b!2404989 (= e!1531767 tp_is_empty!11513)))

(assert (=> b!2404628 (= tp!765134 e!1531767)))

(assert (= (and b!2404628 (is-ElementMatch!7050 (reg!7379 r!13927))) b!2404989))

(assert (= (and b!2404628 (is-Concat!11686 (reg!7379 r!13927))) b!2404990))

(assert (= (and b!2404628 (is-Star!7050 (reg!7379 r!13927))) b!2404991))

(assert (= (and b!2404628 (is-Union!7050 (reg!7379 r!13927))) b!2404992))

(declare-fun b!2404995 () Bool)

(declare-fun e!1531768 () Bool)

(declare-fun tp!765201 () Bool)

(assert (=> b!2404995 (= e!1531768 tp!765201)))

(declare-fun b!2404996 () Bool)

(declare-fun tp!765204 () Bool)

(declare-fun tp!765202 () Bool)

(assert (=> b!2404996 (= e!1531768 (and tp!765204 tp!765202))))

(declare-fun b!2404994 () Bool)

(declare-fun tp!765203 () Bool)

(declare-fun tp!765205 () Bool)

(assert (=> b!2404994 (= e!1531768 (and tp!765203 tp!765205))))

(declare-fun b!2404993 () Bool)

(assert (=> b!2404993 (= e!1531768 tp_is_empty!11513)))

(assert (=> b!2404627 (= tp!765133 e!1531768)))

(assert (= (and b!2404627 (is-ElementMatch!7050 (regOne!14612 r!13927))) b!2404993))

(assert (= (and b!2404627 (is-Concat!11686 (regOne!14612 r!13927))) b!2404994))

(assert (= (and b!2404627 (is-Star!7050 (regOne!14612 r!13927))) b!2404995))

(assert (= (and b!2404627 (is-Union!7050 (regOne!14612 r!13927))) b!2404996))

(declare-fun b!2404999 () Bool)

(declare-fun e!1531769 () Bool)

(declare-fun tp!765206 () Bool)

(assert (=> b!2404999 (= e!1531769 tp!765206)))

(declare-fun b!2405000 () Bool)

(declare-fun tp!765209 () Bool)

(declare-fun tp!765207 () Bool)

(assert (=> b!2405000 (= e!1531769 (and tp!765209 tp!765207))))

(declare-fun b!2404998 () Bool)

(declare-fun tp!765208 () Bool)

(declare-fun tp!765210 () Bool)

(assert (=> b!2404998 (= e!1531769 (and tp!765208 tp!765210))))

(declare-fun b!2404997 () Bool)

(assert (=> b!2404997 (= e!1531769 tp_is_empty!11513)))

(assert (=> b!2404627 (= tp!765136 e!1531769)))

(assert (= (and b!2404627 (is-ElementMatch!7050 (regTwo!14612 r!13927))) b!2404997))

(assert (= (and b!2404627 (is-Concat!11686 (regTwo!14612 r!13927))) b!2404998))

(assert (= (and b!2404627 (is-Star!7050 (regTwo!14612 r!13927))) b!2404999))

(assert (= (and b!2404627 (is-Union!7050 (regTwo!14612 r!13927))) b!2405000))

(declare-fun b_lambda!74391 () Bool)

(assert (= b_lambda!74387 (or start!235770 b_lambda!74391)))

(declare-fun bs!463267 () Bool)

(declare-fun d!700000 () Bool)

(assert (= bs!463267 (and d!700000 start!235770)))

(assert (=> bs!463267 (= (dynLambda!12162 lambda!90424 (h!33641 l!9164)) (validRegex!2775 (h!33641 l!9164)))))

(assert (=> bs!463267 m!2799589))

(assert (=> b!2404708 d!700000))

(push 1)

(assert (not b!2404770))

(assert (not b!2404874))

(assert (not b!2404995))

(assert (not bm!146928))

(assert (not b!2404867))

(assert (not d!699998))

(assert (not bm!146920))

(assert (not b!2404968))

(assert (not b!2404929))

(assert (not b!2404822))

(assert (not b!2404969))

(assert (not b!2404818))

(assert (not b!2404870))

(assert (not bm!146927))

(assert (not b!2404998))

(assert (not d!699986))

(assert (not b!2404935))

(assert (not bs!463267))

(assert (not b_lambda!74391))

(assert (not b!2404930))

(assert (not b!2404933))

(assert (not b!2404994))

(assert (not b!2404920))

(assert tp_is_empty!11513)

(assert (not b!2404866))

(assert (not b!2404872))

(assert (not b!2404937))

(assert (not b!2404996))

(assert (not b!2404698))

(assert (not b!2404991))

(assert (not b!2404984))

(assert (not b!2404928))

(assert (not b!2404988))

(assert (not b!2404927))

(assert (not d!699976))

(assert (not b!2404926))

(assert (not b!2404922))

(assert (not b!2404823))

(assert (not b!2404982))

(assert (not d!699984))

(assert (not b!2404709))

(assert (not b!2404986))

(assert (not b!2404815))

(assert (not b!2404992))

(assert (not b!2404924))

(assert (not d!699980))

(assert (not bm!146921))

(assert (not b!2404814))

(assert (not b!2405000))

(assert (not d!699988))

(assert (not b!2404869))

(assert (not b!2404873))

(assert (not b!2404983))

(assert (not b!2404936))

(assert (not b!2404975))

(assert (not b!2404980))

(assert (not bm!146931))

(assert (not b!2404987))

(assert (not b!2404932))

(assert (not b!2404999))

(assert (not b!2404990))

(assert (not b!2404812))

(assert (not b!2404970))

(assert (not b!2404762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


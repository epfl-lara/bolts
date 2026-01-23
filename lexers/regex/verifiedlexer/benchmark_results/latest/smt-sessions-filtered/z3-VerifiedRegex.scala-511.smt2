; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14162 () Bool)

(assert start!14162)

(declare-fun b!135535 () Bool)

(declare-fun e!78707 () Bool)

(declare-datatypes ((B!865 0))(
  ( (B!866 (val!918 Int)) )
))
(declare-datatypes ((List!2236 0))(
  ( (Nil!2230) (Cons!2230 (h!7627 B!865) (t!22822 List!2236)) )
))
(declare-fun l1!1230 () List!2236)

(declare-fun isEmpty!872 (List!2236) Bool)

(assert (=> b!135535 (= e!78707 (not (isEmpty!872 l1!1230)))))

(declare-fun b!135536 () Bool)

(declare-fun e!78706 () Bool)

(declare-fun tp_is_empty!1509 () Bool)

(declare-fun tp!70988 () Bool)

(assert (=> b!135536 (= e!78706 (and tp_is_empty!1509 tp!70988))))

(declare-fun b!135537 () Bool)

(declare-fun e!78702 () Bool)

(declare-fun lt!40738 () List!2236)

(declare-fun lt!40737 () List!2236)

(declare-fun size!2019 (List!2236) Int)

(assert (=> b!135537 (= e!78702 (>= (size!2019 lt!40738) (size!2019 lt!40737)))))

(declare-fun b!135538 () Bool)

(declare-fun res!63501 () Bool)

(declare-fun e!78704 () Bool)

(assert (=> b!135538 (=> (not res!63501) (not e!78704))))

(declare-fun sub!16 () List!2236)

(get-info :version)

(assert (=> b!135538 (= res!63501 (not ((_ is Nil!2230) sub!16)))))

(declare-fun b!135539 () Bool)

(declare-fun e!78703 () Bool)

(assert (=> b!135539 (= e!78704 e!78703)))

(declare-fun res!63498 () Bool)

(assert (=> b!135539 (=> (not res!63498) (not e!78703))))

(assert (=> b!135539 (= res!63498 e!78707)))

(declare-fun res!63497 () Bool)

(assert (=> b!135539 (=> res!63497 e!78707)))

(declare-fun lt!40736 () Bool)

(assert (=> b!135539 (= res!63497 lt!40736)))

(assert (=> b!135539 (= lt!40736 (not ((_ is Cons!2230) lt!40737)))))

(declare-fun b!135540 () Bool)

(declare-fun res!63502 () Bool)

(assert (=> b!135540 (=> (not res!63502) (not e!78703))))

(assert (=> b!135540 (= res!63502 (and (not lt!40736) (= (h!7627 sub!16) (h!7627 lt!40737))))))

(declare-fun b!135541 () Bool)

(declare-fun res!63499 () Bool)

(assert (=> b!135541 (=> (not res!63499) (not e!78703))))

(declare-fun subseq!77 (List!2236 List!2236) Bool)

(assert (=> b!135541 (= res!63499 (subseq!77 (t!22822 sub!16) (t!22822 lt!40737)))))

(declare-fun b!135542 () Bool)

(declare-fun e!78701 () Bool)

(declare-fun tp!70987 () Bool)

(assert (=> b!135542 (= e!78701 (and tp_is_empty!1509 tp!70987))))

(declare-fun b!135543 () Bool)

(declare-fun e!78705 () Bool)

(declare-fun tp!70986 () Bool)

(assert (=> b!135543 (= e!78705 (and tp_is_empty!1509 tp!70986))))

(declare-fun res!63496 () Bool)

(assert (=> start!14162 (=> (not res!63496) (not e!78704))))

(assert (=> start!14162 (= res!63496 (subseq!77 sub!16 lt!40737))))

(declare-fun l2!1199 () List!2236)

(declare-fun ++!504 (List!2236 List!2236) List!2236)

(assert (=> start!14162 (= lt!40737 (++!504 l1!1230 l2!1199))))

(assert (=> start!14162 e!78704))

(assert (=> start!14162 e!78706))

(assert (=> start!14162 e!78705))

(assert (=> start!14162 e!78701))

(declare-fun b!135544 () Bool)

(assert (=> b!135544 (= e!78703 e!78702)))

(declare-fun res!63500 () Bool)

(assert (=> b!135544 (=> (not res!63500) (not e!78702))))

(assert (=> b!135544 (= res!63500 (subseq!77 (t!22822 sub!16) lt!40738))))

(declare-fun tail!298 (List!2236) List!2236)

(assert (=> b!135544 (= lt!40738 (++!504 (tail!298 l1!1230) l2!1199))))

(assert (= (and start!14162 res!63496) b!135538))

(assert (= (and b!135538 res!63501) b!135539))

(assert (= (and b!135539 (not res!63497)) b!135535))

(assert (= (and b!135539 res!63498) b!135540))

(assert (= (and b!135540 res!63502) b!135541))

(assert (= (and b!135541 res!63499) b!135544))

(assert (= (and b!135544 res!63500) b!135537))

(assert (= (and start!14162 ((_ is Cons!2230) l1!1230)) b!135536))

(assert (= (and start!14162 ((_ is Cons!2230) l2!1199)) b!135543))

(assert (= (and start!14162 ((_ is Cons!2230) sub!16)) b!135542))

(declare-fun m!120259 () Bool)

(assert (=> b!135537 m!120259))

(declare-fun m!120261 () Bool)

(assert (=> b!135537 m!120261))

(declare-fun m!120263 () Bool)

(assert (=> start!14162 m!120263))

(declare-fun m!120265 () Bool)

(assert (=> start!14162 m!120265))

(declare-fun m!120267 () Bool)

(assert (=> b!135544 m!120267))

(declare-fun m!120269 () Bool)

(assert (=> b!135544 m!120269))

(assert (=> b!135544 m!120269))

(declare-fun m!120271 () Bool)

(assert (=> b!135544 m!120271))

(declare-fun m!120273 () Bool)

(assert (=> b!135535 m!120273))

(declare-fun m!120275 () Bool)

(assert (=> b!135541 m!120275))

(check-sat (not b!135543) (not start!14162) (not b!135537) tp_is_empty!1509 (not b!135535) (not b!135544) (not b!135542) (not b!135536) (not b!135541))
(check-sat)
(get-model)

(declare-fun d!32484 () Bool)

(declare-fun res!63520 () Bool)

(declare-fun e!78730 () Bool)

(assert (=> d!32484 (=> res!63520 e!78730)))

(assert (=> d!32484 (= res!63520 ((_ is Nil!2230) (t!22822 sub!16)))))

(assert (=> d!32484 (= (subseq!77 (t!22822 sub!16) (t!22822 lt!40737)) e!78730)))

(declare-fun b!135565 () Bool)

(declare-fun e!78729 () Bool)

(assert (=> b!135565 (= e!78730 e!78729)))

(declare-fun res!63523 () Bool)

(assert (=> b!135565 (=> (not res!63523) (not e!78729))))

(assert (=> b!135565 (= res!63523 ((_ is Cons!2230) (t!22822 lt!40737)))))

(declare-fun b!135568 () Bool)

(declare-fun e!78731 () Bool)

(assert (=> b!135568 (= e!78731 (subseq!77 (t!22822 sub!16) (t!22822 (t!22822 lt!40737))))))

(declare-fun b!135567 () Bool)

(declare-fun e!78728 () Bool)

(assert (=> b!135567 (= e!78728 (subseq!77 (t!22822 (t!22822 sub!16)) (t!22822 (t!22822 lt!40737))))))

(declare-fun b!135566 () Bool)

(assert (=> b!135566 (= e!78729 e!78731)))

(declare-fun res!63522 () Bool)

(assert (=> b!135566 (=> res!63522 e!78731)))

(assert (=> b!135566 (= res!63522 e!78728)))

(declare-fun res!63525 () Bool)

(assert (=> b!135566 (=> (not res!63525) (not e!78728))))

(assert (=> b!135566 (= res!63525 (= (h!7627 (t!22822 sub!16)) (h!7627 (t!22822 lt!40737))))))

(assert (= (and d!32484 (not res!63520)) b!135565))

(assert (= (and b!135565 res!63523) b!135566))

(assert (= (and b!135566 res!63525) b!135567))

(assert (= (and b!135566 (not res!63522)) b!135568))

(declare-fun m!120281 () Bool)

(assert (=> b!135568 m!120281))

(declare-fun m!120283 () Bool)

(assert (=> b!135567 m!120283))

(assert (=> b!135541 d!32484))

(declare-fun d!32490 () Bool)

(assert (=> d!32490 (= (isEmpty!872 l1!1230) ((_ is Nil!2230) l1!1230))))

(assert (=> b!135535 d!32490))

(declare-fun d!32492 () Bool)

(declare-fun res!63527 () Bool)

(declare-fun e!78734 () Bool)

(assert (=> d!32492 (=> res!63527 e!78734)))

(assert (=> d!32492 (= res!63527 ((_ is Nil!2230) (t!22822 sub!16)))))

(assert (=> d!32492 (= (subseq!77 (t!22822 sub!16) lt!40738) e!78734)))

(declare-fun b!135569 () Bool)

(declare-fun e!78733 () Bool)

(assert (=> b!135569 (= e!78734 e!78733)))

(declare-fun res!63529 () Bool)

(assert (=> b!135569 (=> (not res!63529) (not e!78733))))

(assert (=> b!135569 (= res!63529 ((_ is Cons!2230) lt!40738))))

(declare-fun b!135572 () Bool)

(declare-fun e!78735 () Bool)

(assert (=> b!135572 (= e!78735 (subseq!77 (t!22822 sub!16) (t!22822 lt!40738)))))

(declare-fun b!135571 () Bool)

(declare-fun e!78732 () Bool)

(assert (=> b!135571 (= e!78732 (subseq!77 (t!22822 (t!22822 sub!16)) (t!22822 lt!40738)))))

(declare-fun b!135570 () Bool)

(assert (=> b!135570 (= e!78733 e!78735)))

(declare-fun res!63528 () Bool)

(assert (=> b!135570 (=> res!63528 e!78735)))

(assert (=> b!135570 (= res!63528 e!78732)))

(declare-fun res!63530 () Bool)

(assert (=> b!135570 (=> (not res!63530) (not e!78732))))

(assert (=> b!135570 (= res!63530 (= (h!7627 (t!22822 sub!16)) (h!7627 lt!40738)))))

(assert (= (and d!32492 (not res!63527)) b!135569))

(assert (= (and b!135569 res!63529) b!135570))

(assert (= (and b!135570 res!63530) b!135571))

(assert (= (and b!135570 (not res!63528)) b!135572))

(declare-fun m!120285 () Bool)

(assert (=> b!135572 m!120285))

(declare-fun m!120287 () Bool)

(assert (=> b!135571 m!120287))

(assert (=> b!135544 d!32492))

(declare-fun b!135621 () Bool)

(declare-fun e!78766 () List!2236)

(assert (=> b!135621 (= e!78766 (Cons!2230 (h!7627 (tail!298 l1!1230)) (++!504 (t!22822 (tail!298 l1!1230)) l2!1199)))))

(declare-fun e!78765 () Bool)

(declare-fun lt!40749 () List!2236)

(declare-fun b!135623 () Bool)

(assert (=> b!135623 (= e!78765 (or (not (= l2!1199 Nil!2230)) (= lt!40749 (tail!298 l1!1230))))))

(declare-fun b!135620 () Bool)

(assert (=> b!135620 (= e!78766 l2!1199)))

(declare-fun b!135622 () Bool)

(declare-fun res!63551 () Bool)

(assert (=> b!135622 (=> (not res!63551) (not e!78765))))

(assert (=> b!135622 (= res!63551 (= (size!2019 lt!40749) (+ (size!2019 (tail!298 l1!1230)) (size!2019 l2!1199))))))

(declare-fun d!32494 () Bool)

(assert (=> d!32494 e!78765))

(declare-fun res!63552 () Bool)

(assert (=> d!32494 (=> (not res!63552) (not e!78765))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!331 (List!2236) (InoxSet B!865))

(assert (=> d!32494 (= res!63552 (= (content!331 lt!40749) ((_ map or) (content!331 (tail!298 l1!1230)) (content!331 l2!1199))))))

(assert (=> d!32494 (= lt!40749 e!78766)))

(declare-fun c!28845 () Bool)

(assert (=> d!32494 (= c!28845 ((_ is Nil!2230) (tail!298 l1!1230)))))

(assert (=> d!32494 (= (++!504 (tail!298 l1!1230) l2!1199) lt!40749)))

(assert (= (and d!32494 c!28845) b!135620))

(assert (= (and d!32494 (not c!28845)) b!135621))

(assert (= (and d!32494 res!63552) b!135622))

(assert (= (and b!135622 res!63551) b!135623))

(declare-fun m!120323 () Bool)

(assert (=> b!135621 m!120323))

(declare-fun m!120325 () Bool)

(assert (=> b!135622 m!120325))

(assert (=> b!135622 m!120269))

(declare-fun m!120327 () Bool)

(assert (=> b!135622 m!120327))

(declare-fun m!120329 () Bool)

(assert (=> b!135622 m!120329))

(declare-fun m!120331 () Bool)

(assert (=> d!32494 m!120331))

(assert (=> d!32494 m!120269))

(declare-fun m!120333 () Bool)

(assert (=> d!32494 m!120333))

(declare-fun m!120335 () Bool)

(assert (=> d!32494 m!120335))

(assert (=> b!135544 d!32494))

(declare-fun d!32510 () Bool)

(assert (=> d!32510 (= (tail!298 l1!1230) (t!22822 l1!1230))))

(assert (=> b!135544 d!32510))

(declare-fun d!32512 () Bool)

(declare-fun res!63553 () Bool)

(declare-fun e!78769 () Bool)

(assert (=> d!32512 (=> res!63553 e!78769)))

(assert (=> d!32512 (= res!63553 ((_ is Nil!2230) sub!16))))

(assert (=> d!32512 (= (subseq!77 sub!16 lt!40737) e!78769)))

(declare-fun b!135624 () Bool)

(declare-fun e!78768 () Bool)

(assert (=> b!135624 (= e!78769 e!78768)))

(declare-fun res!63555 () Bool)

(assert (=> b!135624 (=> (not res!63555) (not e!78768))))

(assert (=> b!135624 (= res!63555 ((_ is Cons!2230) lt!40737))))

(declare-fun b!135627 () Bool)

(declare-fun e!78770 () Bool)

(assert (=> b!135627 (= e!78770 (subseq!77 sub!16 (t!22822 lt!40737)))))

(declare-fun b!135626 () Bool)

(declare-fun e!78767 () Bool)

(assert (=> b!135626 (= e!78767 (subseq!77 (t!22822 sub!16) (t!22822 lt!40737)))))

(declare-fun b!135625 () Bool)

(assert (=> b!135625 (= e!78768 e!78770)))

(declare-fun res!63554 () Bool)

(assert (=> b!135625 (=> res!63554 e!78770)))

(assert (=> b!135625 (= res!63554 e!78767)))

(declare-fun res!63556 () Bool)

(assert (=> b!135625 (=> (not res!63556) (not e!78767))))

(assert (=> b!135625 (= res!63556 (= (h!7627 sub!16) (h!7627 lt!40737)))))

(assert (= (and d!32512 (not res!63553)) b!135624))

(assert (= (and b!135624 res!63555) b!135625))

(assert (= (and b!135625 res!63556) b!135626))

(assert (= (and b!135625 (not res!63554)) b!135627))

(declare-fun m!120337 () Bool)

(assert (=> b!135627 m!120337))

(assert (=> b!135626 m!120275))

(assert (=> start!14162 d!32512))

(declare-fun b!135629 () Bool)

(declare-fun e!78772 () List!2236)

(assert (=> b!135629 (= e!78772 (Cons!2230 (h!7627 l1!1230) (++!504 (t!22822 l1!1230) l2!1199)))))

(declare-fun lt!40750 () List!2236)

(declare-fun e!78771 () Bool)

(declare-fun b!135631 () Bool)

(assert (=> b!135631 (= e!78771 (or (not (= l2!1199 Nil!2230)) (= lt!40750 l1!1230)))))

(declare-fun b!135628 () Bool)

(assert (=> b!135628 (= e!78772 l2!1199)))

(declare-fun b!135630 () Bool)

(declare-fun res!63557 () Bool)

(assert (=> b!135630 (=> (not res!63557) (not e!78771))))

(assert (=> b!135630 (= res!63557 (= (size!2019 lt!40750) (+ (size!2019 l1!1230) (size!2019 l2!1199))))))

(declare-fun d!32514 () Bool)

(assert (=> d!32514 e!78771))

(declare-fun res!63558 () Bool)

(assert (=> d!32514 (=> (not res!63558) (not e!78771))))

(assert (=> d!32514 (= res!63558 (= (content!331 lt!40750) ((_ map or) (content!331 l1!1230) (content!331 l2!1199))))))

(assert (=> d!32514 (= lt!40750 e!78772)))

(declare-fun c!28846 () Bool)

(assert (=> d!32514 (= c!28846 ((_ is Nil!2230) l1!1230))))

(assert (=> d!32514 (= (++!504 l1!1230 l2!1199) lt!40750)))

(assert (= (and d!32514 c!28846) b!135628))

(assert (= (and d!32514 (not c!28846)) b!135629))

(assert (= (and d!32514 res!63558) b!135630))

(assert (= (and b!135630 res!63557) b!135631))

(declare-fun m!120339 () Bool)

(assert (=> b!135629 m!120339))

(declare-fun m!120341 () Bool)

(assert (=> b!135630 m!120341))

(declare-fun m!120343 () Bool)

(assert (=> b!135630 m!120343))

(assert (=> b!135630 m!120329))

(declare-fun m!120345 () Bool)

(assert (=> d!32514 m!120345))

(declare-fun m!120347 () Bool)

(assert (=> d!32514 m!120347))

(assert (=> d!32514 m!120335))

(assert (=> start!14162 d!32514))

(declare-fun d!32516 () Bool)

(declare-fun lt!40753 () Int)

(assert (=> d!32516 (>= lt!40753 0)))

(declare-fun e!78775 () Int)

(assert (=> d!32516 (= lt!40753 e!78775)))

(declare-fun c!28849 () Bool)

(assert (=> d!32516 (= c!28849 ((_ is Nil!2230) lt!40738))))

(assert (=> d!32516 (= (size!2019 lt!40738) lt!40753)))

(declare-fun b!135636 () Bool)

(assert (=> b!135636 (= e!78775 0)))

(declare-fun b!135637 () Bool)

(assert (=> b!135637 (= e!78775 (+ 1 (size!2019 (t!22822 lt!40738))))))

(assert (= (and d!32516 c!28849) b!135636))

(assert (= (and d!32516 (not c!28849)) b!135637))

(declare-fun m!120349 () Bool)

(assert (=> b!135637 m!120349))

(assert (=> b!135537 d!32516))

(declare-fun d!32518 () Bool)

(declare-fun lt!40754 () Int)

(assert (=> d!32518 (>= lt!40754 0)))

(declare-fun e!78776 () Int)

(assert (=> d!32518 (= lt!40754 e!78776)))

(declare-fun c!28850 () Bool)

(assert (=> d!32518 (= c!28850 ((_ is Nil!2230) lt!40737))))

(assert (=> d!32518 (= (size!2019 lt!40737) lt!40754)))

(declare-fun b!135638 () Bool)

(assert (=> b!135638 (= e!78776 0)))

(declare-fun b!135639 () Bool)

(assert (=> b!135639 (= e!78776 (+ 1 (size!2019 (t!22822 lt!40737))))))

(assert (= (and d!32518 c!28850) b!135638))

(assert (= (and d!32518 (not c!28850)) b!135639))

(declare-fun m!120351 () Bool)

(assert (=> b!135639 m!120351))

(assert (=> b!135537 d!32518))

(declare-fun b!135644 () Bool)

(declare-fun e!78779 () Bool)

(declare-fun tp!70996 () Bool)

(assert (=> b!135644 (= e!78779 (and tp_is_empty!1509 tp!70996))))

(assert (=> b!135536 (= tp!70988 e!78779)))

(assert (= (and b!135536 ((_ is Cons!2230) (t!22822 l1!1230))) b!135644))

(declare-fun b!135645 () Bool)

(declare-fun e!78780 () Bool)

(declare-fun tp!70997 () Bool)

(assert (=> b!135645 (= e!78780 (and tp_is_empty!1509 tp!70997))))

(assert (=> b!135542 (= tp!70987 e!78780)))

(assert (= (and b!135542 ((_ is Cons!2230) (t!22822 sub!16))) b!135645))

(declare-fun b!135646 () Bool)

(declare-fun e!78781 () Bool)

(declare-fun tp!70998 () Bool)

(assert (=> b!135646 (= e!78781 (and tp_is_empty!1509 tp!70998))))

(assert (=> b!135543 (= tp!70986 e!78781)))

(assert (= (and b!135543 ((_ is Cons!2230) (t!22822 l2!1199))) b!135646))

(check-sat (not b!135644) (not b!135627) (not b!135630) (not b!135646) (not b!135637) (not d!32494) (not b!135621) (not b!135622) tp_is_empty!1509 (not b!135629) (not b!135567) (not b!135639) (not b!135645) (not b!135626) (not b!135571) (not b!135568) (not b!135572) (not d!32514))
(check-sat)

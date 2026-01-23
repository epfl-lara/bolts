; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46270 () Bool)

(assert start!46270)

(declare-fun b!511565 () Bool)

(declare-fun e!305597 () Bool)

(declare-fun tp_is_empty!2431 () Bool)

(declare-fun tp!159035 () Bool)

(assert (=> b!511565 (= e!305597 (and tp_is_empty!2431 tp!159035))))

(declare-fun b!511563 () Bool)

(declare-fun e!305596 () Bool)

(declare-datatypes ((B!1045 0))(
  ( (B!1046 (val!1664 Int)) )
))
(declare-datatypes ((List!4637 0))(
  ( (Nil!4627) (Cons!4627 (h!10024 B!1045) (t!73155 List!4637)) )
))
(declare-fun l1!1060 () List!4637)

(declare-fun ListPrimitiveSize!46 (List!4637) Int)

(assert (=> b!511563 (= e!305596 (< (ListPrimitiveSize!46 l1!1060) 0))))

(declare-fun res!217137 () Bool)

(assert (=> start!46270 (=> (not res!217137) (not e!305596))))

(declare-fun elmt!142 () B!1045)

(declare-fun l2!1029 () List!4637)

(declare-fun tot!35 () List!4637)

(declare-fun ++!1349 (List!4637 List!4637) List!4637)

(assert (=> start!46270 (= res!217137 (= (++!1349 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627)) l2!1029) tot!35))))

(assert (=> start!46270 e!305596))

(declare-fun e!305598 () Bool)

(assert (=> start!46270 e!305598))

(assert (=> start!46270 tp_is_empty!2431))

(assert (=> start!46270 e!305597))

(declare-fun e!305595 () Bool)

(assert (=> start!46270 e!305595))

(declare-fun b!511564 () Bool)

(declare-fun tp!159034 () Bool)

(assert (=> b!511564 (= e!305598 (and tp_is_empty!2431 tp!159034))))

(declare-fun b!511566 () Bool)

(declare-fun tp!159033 () Bool)

(assert (=> b!511566 (= e!305595 (and tp_is_empty!2431 tp!159033))))

(assert (= (and start!46270 res!217137) b!511563))

(get-info :version)

(assert (= (and start!46270 ((_ is Cons!4627) l1!1060)) b!511564))

(assert (= (and start!46270 ((_ is Cons!4627) l2!1029)) b!511565))

(assert (= (and start!46270 ((_ is Cons!4627) tot!35)) b!511566))

(declare-fun m!758333 () Bool)

(assert (=> b!511563 m!758333))

(declare-fun m!758335 () Bool)

(assert (=> start!46270 m!758335))

(assert (=> start!46270 m!758335))

(declare-fun m!758337 () Bool)

(assert (=> start!46270 m!758337))

(check-sat (not b!511564) (not b!511563) (not b!511566) tp_is_empty!2431 (not start!46270) (not b!511565))
(check-sat)
(get-model)

(declare-fun b!511585 () Bool)

(declare-fun e!305608 () List!4637)

(assert (=> b!511585 (= e!305608 l2!1029)))

(declare-fun b!511587 () Bool)

(declare-fun res!217143 () Bool)

(declare-fun e!305609 () Bool)

(assert (=> b!511587 (=> (not res!217143) (not e!305609))))

(declare-fun lt!212035 () List!4637)

(declare-fun size!3728 (List!4637) Int)

(assert (=> b!511587 (= res!217143 (= (size!3728 lt!212035) (+ (size!3728 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627))) (size!3728 l2!1029))))))

(declare-fun b!511588 () Bool)

(assert (=> b!511588 (= e!305609 (or (not (= l2!1029 Nil!4627)) (= lt!212035 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627)))))))

(declare-fun d!183911 () Bool)

(assert (=> d!183911 e!305609))

(declare-fun res!217142 () Bool)

(assert (=> d!183911 (=> (not res!217142) (not e!305609))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!796 (List!4637) (InoxSet B!1045))

(assert (=> d!183911 (= res!217142 (= (content!796 lt!212035) ((_ map or) (content!796 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627))) (content!796 l2!1029))))))

(assert (=> d!183911 (= lt!212035 e!305608)))

(declare-fun c!99461 () Bool)

(assert (=> d!183911 (= c!99461 ((_ is Nil!4627) (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627))))))

(assert (=> d!183911 (= (++!1349 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627)) l2!1029) lt!212035)))

(declare-fun b!511586 () Bool)

(assert (=> b!511586 (= e!305608 (Cons!4627 (h!10024 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627))) (++!1349 (t!73155 (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627))) l2!1029)))))

(assert (= (and d!183911 c!99461) b!511585))

(assert (= (and d!183911 (not c!99461)) b!511586))

(assert (= (and d!183911 res!217142) b!511587))

(assert (= (and b!511587 res!217143) b!511588))

(declare-fun m!758341 () Bool)

(assert (=> b!511587 m!758341))

(assert (=> b!511587 m!758335))

(declare-fun m!758343 () Bool)

(assert (=> b!511587 m!758343))

(declare-fun m!758345 () Bool)

(assert (=> b!511587 m!758345))

(declare-fun m!758347 () Bool)

(assert (=> d!183911 m!758347))

(assert (=> d!183911 m!758335))

(declare-fun m!758349 () Bool)

(assert (=> d!183911 m!758349))

(declare-fun m!758351 () Bool)

(assert (=> d!183911 m!758351))

(declare-fun m!758353 () Bool)

(assert (=> b!511586 m!758353))

(assert (=> start!46270 d!183911))

(declare-fun b!511593 () Bool)

(declare-fun e!305612 () List!4637)

(assert (=> b!511593 (= e!305612 (Cons!4627 elmt!142 Nil!4627))))

(declare-fun b!511595 () Bool)

(declare-fun res!217149 () Bool)

(declare-fun e!305613 () Bool)

(assert (=> b!511595 (=> (not res!217149) (not e!305613))))

(declare-fun lt!212036 () List!4637)

(assert (=> b!511595 (= res!217149 (= (size!3728 lt!212036) (+ (size!3728 l1!1060) (size!3728 (Cons!4627 elmt!142 Nil!4627)))))))

(declare-fun b!511596 () Bool)

(assert (=> b!511596 (= e!305613 (or (not (= (Cons!4627 elmt!142 Nil!4627) Nil!4627)) (= lt!212036 l1!1060)))))

(declare-fun d!183915 () Bool)

(assert (=> d!183915 e!305613))

(declare-fun res!217148 () Bool)

(assert (=> d!183915 (=> (not res!217148) (not e!305613))))

(assert (=> d!183915 (= res!217148 (= (content!796 lt!212036) ((_ map or) (content!796 l1!1060) (content!796 (Cons!4627 elmt!142 Nil!4627)))))))

(assert (=> d!183915 (= lt!212036 e!305612)))

(declare-fun c!99462 () Bool)

(assert (=> d!183915 (= c!99462 ((_ is Nil!4627) l1!1060))))

(assert (=> d!183915 (= (++!1349 l1!1060 (Cons!4627 elmt!142 Nil!4627)) lt!212036)))

(declare-fun b!511594 () Bool)

(assert (=> b!511594 (= e!305612 (Cons!4627 (h!10024 l1!1060) (++!1349 (t!73155 l1!1060) (Cons!4627 elmt!142 Nil!4627))))))

(assert (= (and d!183915 c!99462) b!511593))

(assert (= (and d!183915 (not c!99462)) b!511594))

(assert (= (and d!183915 res!217148) b!511595))

(assert (= (and b!511595 res!217149) b!511596))

(declare-fun m!758355 () Bool)

(assert (=> b!511595 m!758355))

(declare-fun m!758357 () Bool)

(assert (=> b!511595 m!758357))

(declare-fun m!758359 () Bool)

(assert (=> b!511595 m!758359))

(declare-fun m!758361 () Bool)

(assert (=> d!183915 m!758361))

(declare-fun m!758363 () Bool)

(assert (=> d!183915 m!758363))

(declare-fun m!758365 () Bool)

(assert (=> d!183915 m!758365))

(declare-fun m!758367 () Bool)

(assert (=> b!511594 m!758367))

(assert (=> start!46270 d!183915))

(declare-fun d!183917 () Bool)

(declare-fun lt!212041 () Int)

(assert (=> d!183917 (>= lt!212041 0)))

(declare-fun e!305622 () Int)

(assert (=> d!183917 (= lt!212041 e!305622)))

(declare-fun c!99467 () Bool)

(assert (=> d!183917 (= c!99467 ((_ is Nil!4627) l1!1060))))

(assert (=> d!183917 (= (ListPrimitiveSize!46 l1!1060) lt!212041)))

(declare-fun b!511613 () Bool)

(assert (=> b!511613 (= e!305622 0)))

(declare-fun b!511614 () Bool)

(assert (=> b!511614 (= e!305622 (+ 1 (ListPrimitiveSize!46 (t!73155 l1!1060))))))

(assert (= (and d!183917 c!99467) b!511613))

(assert (= (and d!183917 (not c!99467)) b!511614))

(declare-fun m!758397 () Bool)

(assert (=> b!511614 m!758397))

(assert (=> b!511563 d!183917))

(declare-fun b!511622 () Bool)

(declare-fun e!305628 () Bool)

(declare-fun tp!159043 () Bool)

(assert (=> b!511622 (= e!305628 (and tp_is_empty!2431 tp!159043))))

(assert (=> b!511564 (= tp!159034 e!305628)))

(assert (= (and b!511564 ((_ is Cons!4627) (t!73155 l1!1060))) b!511622))

(declare-fun b!511623 () Bool)

(declare-fun e!305629 () Bool)

(declare-fun tp!159044 () Bool)

(assert (=> b!511623 (= e!305629 (and tp_is_empty!2431 tp!159044))))

(assert (=> b!511565 (= tp!159035 e!305629)))

(assert (= (and b!511565 ((_ is Cons!4627) (t!73155 l2!1029))) b!511623))

(declare-fun b!511624 () Bool)

(declare-fun e!305630 () Bool)

(declare-fun tp!159045 () Bool)

(assert (=> b!511624 (= e!305630 (and tp_is_empty!2431 tp!159045))))

(assert (=> b!511566 (= tp!159033 e!305630)))

(assert (= (and b!511566 ((_ is Cons!4627) (t!73155 tot!35))) b!511624))

(check-sat (not b!511594) (not d!183915) (not b!511595) (not b!511614) (not d!183911) (not b!511622) (not b!511586) tp_is_empty!2431 (not b!511623) (not b!511624) (not b!511587))
(check-sat)

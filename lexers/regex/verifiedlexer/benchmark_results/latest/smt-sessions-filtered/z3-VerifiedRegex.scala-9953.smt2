; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521920 () Bool)

(assert start!521920)

(declare-fun b!4952634 () Bool)

(declare-fun e!3094341 () Bool)

(declare-fun tp_is_empty!36243 () Bool)

(declare-fun tp!1388440 () Bool)

(assert (=> b!4952634 (= e!3094341 (and tp_is_empty!36243 tp!1388440))))

(declare-fun b!4952631 () Bool)

(declare-fun res!2112918 () Bool)

(declare-fun e!3094340 () Bool)

(assert (=> b!4952631 (=> (not res!2112918) (not e!3094340))))

(declare-fun i!792 () Int)

(declare-datatypes ((B!3025 0))(
  ( (B!3026 (val!22982 Int)) )
))
(declare-datatypes ((List!57170 0))(
  ( (Nil!57046) (Cons!57046 (h!63494 B!3025) (t!367736 List!57170)) )
))
(declare-fun l!2976 () List!57170)

(declare-fun size!37874 (List!57170) Int)

(assert (=> b!4952631 (= res!2112918 (< i!792 (size!37874 l!2976)))))

(declare-fun b!4952633 () Bool)

(declare-fun head!10627 (List!57170) B!3025)

(declare-fun drop!2308 (List!57170 Int) List!57170)

(declare-fun apply!13866 (List!57170 Int) B!3025)

(assert (=> b!4952633 (= e!3094340 (not (= (head!10627 (drop!2308 l!2976 i!792)) (apply!13866 l!2976 i!792))))))

(declare-fun res!2112917 () Bool)

(assert (=> start!521920 (=> (not res!2112917) (not e!3094340))))

(assert (=> start!521920 (= res!2112917 (>= i!792 0))))

(assert (=> start!521920 e!3094340))

(assert (=> start!521920 true))

(assert (=> start!521920 e!3094341))

(declare-fun b!4952632 () Bool)

(declare-fun res!2112916 () Bool)

(assert (=> b!4952632 (=> (not res!2112916) (not e!3094340))))

(get-info :version)

(assert (=> b!4952632 (= res!2112916 ((_ is Nil!57046) l!2976))))

(assert (= (and start!521920 res!2112917) b!4952631))

(assert (= (and b!4952631 res!2112918) b!4952632))

(assert (= (and b!4952632 res!2112916) b!4952633))

(assert (= (and start!521920 ((_ is Cons!57046) l!2976)) b!4952634))

(declare-fun m!5977568 () Bool)

(assert (=> b!4952631 m!5977568))

(declare-fun m!5977570 () Bool)

(assert (=> b!4952633 m!5977570))

(assert (=> b!4952633 m!5977570))

(declare-fun m!5977572 () Bool)

(assert (=> b!4952633 m!5977572))

(declare-fun m!5977574 () Bool)

(assert (=> b!4952633 m!5977574))

(check-sat (not b!4952633) (not b!4952631) (not b!4952634) tp_is_empty!36243)
(check-sat)
(get-model)

(declare-fun d!1595020 () Bool)

(assert (=> d!1595020 (= (head!10627 (drop!2308 l!2976 i!792)) (h!63494 (drop!2308 l!2976 i!792)))))

(assert (=> b!4952633 d!1595020))

(declare-fun b!4952680 () Bool)

(declare-fun e!3094367 () List!57170)

(assert (=> b!4952680 (= e!3094367 Nil!57046)))

(declare-fun b!4952681 () Bool)

(declare-fun e!3094370 () Int)

(declare-fun call!345843 () Int)

(assert (=> b!4952681 (= e!3094370 (- call!345843 i!792))))

(declare-fun b!4952682 () Bool)

(assert (=> b!4952682 (= e!3094370 0)))

(declare-fun d!1595026 () Bool)

(declare-fun e!3094369 () Bool)

(assert (=> d!1595026 e!3094369))

(declare-fun res!2112924 () Bool)

(assert (=> d!1595026 (=> (not res!2112924) (not e!3094369))))

(declare-fun lt!2044167 () List!57170)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10170 (List!57170) (InoxSet B!3025))

(assert (=> d!1595026 (= res!2112924 (= ((_ map implies) (content!10170 lt!2044167) (content!10170 l!2976)) ((as const (InoxSet B!3025)) true)))))

(assert (=> d!1595026 (= lt!2044167 e!3094367)))

(declare-fun c!845790 () Bool)

(assert (=> d!1595026 (= c!845790 ((_ is Nil!57046) l!2976))))

(assert (=> d!1595026 (= (drop!2308 l!2976 i!792) lt!2044167)))

(declare-fun b!4952683 () Bool)

(declare-fun e!3094368 () Int)

(assert (=> b!4952683 (= e!3094368 call!345843)))

(declare-fun b!4952684 () Bool)

(assert (=> b!4952684 (= e!3094369 (= (size!37874 lt!2044167) e!3094368))))

(declare-fun c!845789 () Bool)

(assert (=> b!4952684 (= c!845789 (<= i!792 0))))

(declare-fun b!4952685 () Bool)

(assert (=> b!4952685 (= e!3094368 e!3094370)))

(declare-fun c!845791 () Bool)

(assert (=> b!4952685 (= c!845791 (>= i!792 call!345843))))

(declare-fun b!4952686 () Bool)

(declare-fun e!3094371 () List!57170)

(assert (=> b!4952686 (= e!3094371 (drop!2308 (t!367736 l!2976) (- i!792 1)))))

(declare-fun b!4952687 () Bool)

(assert (=> b!4952687 (= e!3094371 l!2976)))

(declare-fun bm!345838 () Bool)

(assert (=> bm!345838 (= call!345843 (size!37874 l!2976))))

(declare-fun b!4952688 () Bool)

(assert (=> b!4952688 (= e!3094367 e!3094371)))

(declare-fun c!845792 () Bool)

(assert (=> b!4952688 (= c!845792 (<= i!792 0))))

(assert (= (and d!1595026 c!845790) b!4952680))

(assert (= (and d!1595026 (not c!845790)) b!4952688))

(assert (= (and b!4952688 c!845792) b!4952687))

(assert (= (and b!4952688 (not c!845792)) b!4952686))

(assert (= (and d!1595026 res!2112924) b!4952684))

(assert (= (and b!4952684 c!845789) b!4952683))

(assert (= (and b!4952684 (not c!845789)) b!4952685))

(assert (= (and b!4952685 c!845791) b!4952682))

(assert (= (and b!4952685 (not c!845791)) b!4952681))

(assert (= (or b!4952683 b!4952685 b!4952681) bm!345838))

(declare-fun m!5977584 () Bool)

(assert (=> d!1595026 m!5977584))

(declare-fun m!5977586 () Bool)

(assert (=> d!1595026 m!5977586))

(declare-fun m!5977588 () Bool)

(assert (=> b!4952684 m!5977588))

(declare-fun m!5977590 () Bool)

(assert (=> b!4952686 m!5977590))

(assert (=> bm!345838 m!5977568))

(assert (=> b!4952633 d!1595026))

(declare-fun d!1595030 () Bool)

(declare-fun lt!2044173 () B!3025)

(declare-fun contains!19505 (List!57170 B!3025) Bool)

(assert (=> d!1595030 (contains!19505 l!2976 lt!2044173)))

(declare-fun e!3094383 () B!3025)

(assert (=> d!1595030 (= lt!2044173 e!3094383)))

(declare-fun c!845798 () Bool)

(assert (=> d!1595030 (= c!845798 (= i!792 0))))

(declare-fun e!3094382 () Bool)

(assert (=> d!1595030 e!3094382))

(declare-fun res!2112930 () Bool)

(assert (=> d!1595030 (=> (not res!2112930) (not e!3094382))))

(assert (=> d!1595030 (= res!2112930 (<= 0 i!792))))

(assert (=> d!1595030 (= (apply!13866 l!2976 i!792) lt!2044173)))

(declare-fun b!4952704 () Bool)

(assert (=> b!4952704 (= e!3094382 (< i!792 (size!37874 l!2976)))))

(declare-fun b!4952705 () Bool)

(assert (=> b!4952705 (= e!3094383 (head!10627 l!2976))))

(declare-fun b!4952706 () Bool)

(declare-fun tail!9759 (List!57170) List!57170)

(assert (=> b!4952706 (= e!3094383 (apply!13866 (tail!9759 l!2976) (- i!792 1)))))

(assert (= (and d!1595030 res!2112930) b!4952704))

(assert (= (and d!1595030 c!845798) b!4952705))

(assert (= (and d!1595030 (not c!845798)) b!4952706))

(declare-fun m!5977600 () Bool)

(assert (=> d!1595030 m!5977600))

(assert (=> b!4952704 m!5977568))

(declare-fun m!5977602 () Bool)

(assert (=> b!4952705 m!5977602))

(declare-fun m!5977604 () Bool)

(assert (=> b!4952706 m!5977604))

(assert (=> b!4952706 m!5977604))

(declare-fun m!5977606 () Bool)

(assert (=> b!4952706 m!5977606))

(assert (=> b!4952633 d!1595030))

(declare-fun d!1595034 () Bool)

(declare-fun lt!2044179 () Int)

(assert (=> d!1595034 (>= lt!2044179 0)))

(declare-fun e!3094389 () Int)

(assert (=> d!1595034 (= lt!2044179 e!3094389)))

(declare-fun c!845804 () Bool)

(assert (=> d!1595034 (= c!845804 ((_ is Nil!57046) l!2976))))

(assert (=> d!1595034 (= (size!37874 l!2976) lt!2044179)))

(declare-fun b!4952717 () Bool)

(assert (=> b!4952717 (= e!3094389 0)))

(declare-fun b!4952718 () Bool)

(assert (=> b!4952718 (= e!3094389 (+ 1 (size!37874 (t!367736 l!2976))))))

(assert (= (and d!1595034 c!845804) b!4952717))

(assert (= (and d!1595034 (not c!845804)) b!4952718))

(declare-fun m!5977610 () Bool)

(assert (=> b!4952718 m!5977610))

(assert (=> b!4952631 d!1595034))

(declare-fun b!4952728 () Bool)

(declare-fun e!3094395 () Bool)

(declare-fun tp!1388446 () Bool)

(assert (=> b!4952728 (= e!3094395 (and tp_is_empty!36243 tp!1388446))))

(assert (=> b!4952634 (= tp!1388440 e!3094395)))

(assert (= (and b!4952634 ((_ is Cons!57046) (t!367736 l!2976))) b!4952728))

(check-sat (not d!1595026) (not b!4952728) (not bm!345838) (not b!4952684) (not b!4952718) (not d!1595030) (not b!4952706) tp_is_empty!36243 (not b!4952686) (not b!4952704) (not b!4952705))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2548 () Bool)

(assert start!2548)

(declare-fun b_free!523 () Bool)

(declare-fun b_next!523 () Bool)

(assert (=> start!2548 (= b_free!523 (not b_next!523))))

(declare-fun tp!2678 () Bool)

(declare-fun b_and!981 () Bool)

(assert (=> start!2548 (= tp!2678 b_and!981)))

(declare-fun res!11779 () Bool)

(declare-fun e!9525 () Bool)

(assert (=> start!2548 (=> (not res!11779) (not e!9525))))

(declare-datatypes ((B!644 0))(
  ( (B!645 (val!420 Int)) )
))
(declare-datatypes ((tuple2!622 0))(
  ( (tuple2!623 (_1!311 (_ BitVec 64)) (_2!311 B!644)) )
))
(declare-datatypes ((List!494 0))(
  ( (Nil!491) (Cons!490 (h!1056 tuple2!622) (t!2944 List!494)) )
))
(declare-datatypes ((ListLongMap!453 0))(
  ( (ListLongMap!454 (toList!242 List!494)) )
))
(declare-fun lm!238 () ListLongMap!453)

(declare-fun p!262 () Int)

(declare-fun forall!125 (List!494 Int) Bool)

(assert (=> start!2548 (= res!11779 (forall!125 (toList!242 lm!238) p!262))))

(assert (=> start!2548 e!9525))

(declare-fun e!9526 () Bool)

(declare-fun inv!832 (ListLongMap!453) Bool)

(assert (=> start!2548 (and (inv!832 lm!238) e!9526)))

(assert (=> start!2548 tp!2678))

(assert (=> start!2548 true))

(declare-fun b!15636 () Bool)

(declare-fun res!11778 () Bool)

(assert (=> b!15636 (=> (not res!11778) (not e!9525))))

(declare-datatypes ((List!495 0))(
  ( (Nil!492) (Cons!491 (h!1057 (_ BitVec 64)) (t!2945 List!495)) )
))
(declare-fun l!1612 () List!495)

(declare-fun isEmpty!135 (List!495) Bool)

(assert (=> b!15636 (= res!11778 (not (isEmpty!135 l!1612)))))

(declare-fun b!15637 () Bool)

(declare-fun --!4 (ListLongMap!453 List!495) ListLongMap!453)

(assert (=> b!15637 (= e!9525 (not (forall!125 (toList!242 (--!4 lm!238 l!1612)) p!262)))))

(declare-fun lt!3856 () ListLongMap!453)

(declare-fun lt!3854 () List!495)

(assert (=> b!15637 (forall!125 (toList!242 (--!4 lt!3856 lt!3854)) p!262)))

(declare-datatypes ((Unit!314 0))(
  ( (Unit!315) )
))
(declare-fun lt!3857 () Unit!314)

(declare-fun removeAllValidProp!2 (ListLongMap!453 List!495 Int) Unit!314)

(assert (=> b!15637 (= lt!3857 (removeAllValidProp!2 lt!3856 lt!3854 p!262))))

(declare-fun tail!62 (List!495) List!495)

(assert (=> b!15637 (= lt!3854 (tail!62 l!1612))))

(assert (=> b!15637 (forall!125 (toList!242 lt!3856) p!262)))

(declare-fun lt!3858 () (_ BitVec 64))

(declare-fun -!24 (ListLongMap!453 (_ BitVec 64)) ListLongMap!453)

(assert (=> b!15637 (= lt!3856 (-!24 lm!238 lt!3858))))

(declare-fun lt!3855 () Unit!314)

(declare-fun removeValidProp!17 (ListLongMap!453 Int (_ BitVec 64)) Unit!314)

(assert (=> b!15637 (= lt!3855 (removeValidProp!17 lm!238 p!262 lt!3858))))

(declare-fun head!815 (List!495) (_ BitVec 64))

(assert (=> b!15637 (= lt!3858 (head!815 l!1612))))

(declare-fun b!15638 () Bool)

(declare-fun tp!2677 () Bool)

(assert (=> b!15638 (= e!9526 tp!2677)))

(assert (= (and start!2548 res!11779) b!15636))

(assert (= (and b!15636 res!11778) b!15637))

(assert (= start!2548 b!15638))

(declare-fun m!10591 () Bool)

(assert (=> start!2548 m!10591))

(declare-fun m!10593 () Bool)

(assert (=> start!2548 m!10593))

(declare-fun m!10595 () Bool)

(assert (=> b!15636 m!10595))

(declare-fun m!10597 () Bool)

(assert (=> b!15637 m!10597))

(declare-fun m!10599 () Bool)

(assert (=> b!15637 m!10599))

(declare-fun m!10601 () Bool)

(assert (=> b!15637 m!10601))

(declare-fun m!10603 () Bool)

(assert (=> b!15637 m!10603))

(declare-fun m!10605 () Bool)

(assert (=> b!15637 m!10605))

(declare-fun m!10607 () Bool)

(assert (=> b!15637 m!10607))

(declare-fun m!10609 () Bool)

(assert (=> b!15637 m!10609))

(declare-fun m!10611 () Bool)

(assert (=> b!15637 m!10611))

(declare-fun m!10613 () Bool)

(assert (=> b!15637 m!10613))

(declare-fun m!10615 () Bool)

(assert (=> b!15637 m!10615))

(push 1)

(assert b_and!981)

(assert (not b!15636))

(assert (not b_next!523))

(assert (not b!15638))

(assert (not b!15637))

(assert (not start!2548))

(check-sat)

(pop 1)

(push 1)

(assert b_and!981)

(assert (not b_next!523))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2745 () Bool)

(declare-fun res!11800 () Bool)

(declare-fun e!9547 () Bool)

(assert (=> d!2745 (=> res!11800 e!9547)))

(assert (=> d!2745 (= res!11800 (is-Nil!491 (toList!242 lm!238)))))

(assert (=> d!2745 (= (forall!125 (toList!242 lm!238) p!262) e!9547)))

(declare-fun b!15665 () Bool)

(declare-fun e!9548 () Bool)

(assert (=> b!15665 (= e!9547 e!9548)))

(declare-fun res!11801 () Bool)

(assert (=> b!15665 (=> (not res!11801) (not e!9548))))

(declare-fun dynLambda!112 (Int tuple2!622) Bool)

(assert (=> b!15665 (= res!11801 (dynLambda!112 p!262 (h!1056 (toList!242 lm!238))))))

(declare-fun b!15666 () Bool)

(assert (=> b!15666 (= e!9548 (forall!125 (t!2944 (toList!242 lm!238)) p!262))))

(assert (= (and d!2745 (not res!11800)) b!15665))

(assert (= (and b!15665 res!11801) b!15666))

(declare-fun b_lambda!1067 () Bool)

(assert (=> (not b_lambda!1067) (not b!15665)))

(declare-fun t!2951 () Bool)

(declare-fun tb!441 () Bool)

(assert (=> (and start!2548 (= p!262 p!262) t!2951) tb!441))

(declare-fun result!777 () Bool)

(assert (=> tb!441 (= result!777 true)))

(assert (=> b!15665 t!2951))

(declare-fun b_and!987 () Bool)

(assert (= b_and!981 (and (=> t!2951 result!777) b_and!987)))

(declare-fun m!10669 () Bool)

(assert (=> b!15665 m!10669))

(declare-fun m!10671 () Bool)

(assert (=> b!15666 m!10671))

(assert (=> start!2548 d!2745))

(declare-fun d!2751 () Bool)

(declare-fun isStrictlySorted!147 (List!494) Bool)

(assert (=> d!2751 (= (inv!832 lm!238) (isStrictlySorted!147 (toList!242 lm!238)))))

(declare-fun bs!701 () Bool)

(assert (= bs!701 d!2751))

(declare-fun m!10677 () Bool)

(assert (=> bs!701 m!10677))

(assert (=> start!2548 d!2751))

(declare-fun d!2755 () Bool)

(assert (=> d!2755 (= (isEmpty!135 l!1612) (is-Nil!492 l!1612))))

(assert (=> b!15636 d!2755))

(declare-fun d!2757 () Bool)

(declare-fun c!1475 () Bool)

(assert (=> d!2757 (= c!1475 (is-Nil!492 lt!3854))))

(declare-fun e!9559 () ListLongMap!453)

(assert (=> d!2757 (= (--!4 lt!3856 lt!3854) e!9559)))

(declare-fun b!15679 () Bool)

(assert (=> b!15679 (= e!9559 lt!3856)))

(declare-fun b!15680 () Bool)

(assert (=> b!15680 (= e!9559 (--!4 (-!24 lt!3856 (h!1057 lt!3854)) (t!2945 lt!3854)))))

(assert (= (and d!2757 c!1475) b!15679))

(assert (= (and d!2757 (not c!1475)) b!15680))

(declare-fun m!10685 () Bool)

(assert (=> b!15680 m!10685))

(assert (=> b!15680 m!10685))

(declare-fun m!10687 () Bool)

(assert (=> b!15680 m!10687))

(assert (=> b!15637 d!2757))

(declare-fun d!2765 () Bool)

(assert (=> d!2765 (forall!125 (toList!242 (-!24 lm!238 lt!3858)) p!262)))

(declare-fun lt!3891 () Unit!314)

(declare-fun choose!178 (ListLongMap!453 Int (_ BitVec 64)) Unit!314)

(assert (=> d!2765 (= lt!3891 (choose!178 lm!238 p!262 lt!3858))))

(assert (=> d!2765 (forall!125 (toList!242 lm!238) p!262)))

(assert (=> d!2765 (= (removeValidProp!17 lm!238 p!262 lt!3858) lt!3891)))

(declare-fun bs!704 () Bool)

(assert (= bs!704 d!2765))

(assert (=> bs!704 m!10603))

(declare-fun m!10699 () Bool)

(assert (=> bs!704 m!10699))

(declare-fun m!10701 () Bool)

(assert (=> bs!704 m!10701))

(assert (=> bs!704 m!10591))

(assert (=> b!15637 d!2765))

(declare-fun d!2777 () Bool)

(declare-fun c!1482 () Bool)

(assert (=> d!2777 (= c!1482 (is-Nil!492 l!1612))))

(declare-fun e!9566 () ListLongMap!453)

(assert (=> d!2777 (= (--!4 lm!238 l!1612) e!9566)))

(declare-fun b!15693 () Bool)

(assert (=> b!15693 (= e!9566 lm!238)))

(declare-fun b!15694 () Bool)

(assert (=> b!15694 (= e!9566 (--!4 (-!24 lm!238 (h!1057 l!1612)) (t!2945 l!1612)))))

(assert (= (and d!2777 c!1482) b!15693))

(assert (= (and d!2777 (not c!1482)) b!15694))

(declare-fun m!10703 () Bool)

(assert (=> b!15694 m!10703))

(assert (=> b!15694 m!10703))

(declare-fun m!10705 () Bool)

(assert (=> b!15694 m!10705))

(assert (=> b!15637 d!2777))

(declare-fun d!2779 () Bool)

(declare-fun lt!3900 () ListLongMap!453)

(declare-fun contains!192 (ListLongMap!453 (_ BitVec 64)) Bool)

(assert (=> d!2779 (not (contains!192 lt!3900 lt!3858))))

(declare-fun removeStrictlySorted!14 (List!494 (_ BitVec 64)) List!494)

(assert (=> d!2779 (= lt!3900 (ListLongMap!454 (removeStrictlySorted!14 (toList!242 lm!238) lt!3858)))))

(assert (=> d!2779 (= (-!24 lm!238 lt!3858) lt!3900)))

(declare-fun bs!707 () Bool)

(assert (= bs!707 d!2779))

(declare-fun m!10715 () Bool)

(assert (=> bs!707 m!10715))

(declare-fun m!10717 () Bool)

(assert (=> bs!707 m!10717))

(assert (=> b!15637 d!2779))

(declare-fun d!2787 () Bool)

(declare-fun res!11812 () Bool)

(declare-fun e!9570 () Bool)

(assert (=> d!2787 (=> res!11812 e!9570)))

(assert (=> d!2787 (= res!11812 (is-Nil!491 (toList!242 (--!4 lt!3856 lt!3854))))))

(assert (=> d!2787 (= (forall!125 (toList!242 (--!4 lt!3856 lt!3854)) p!262) e!9570)))

(declare-fun b!15699 () Bool)

(declare-fun e!9571 () Bool)

(assert (=> b!15699 (= e!9570 e!9571)))

(declare-fun res!11813 () Bool)

(assert (=> b!15699 (=> (not res!11813) (not e!9571))))

(assert (=> b!15699 (= res!11813 (dynLambda!112 p!262 (h!1056 (toList!242 (--!4 lt!3856 lt!3854)))))))

(declare-fun b!15700 () Bool)

(assert (=> b!15700 (= e!9571 (forall!125 (t!2944 (toList!242 (--!4 lt!3856 lt!3854))) p!262))))

(assert (= (and d!2787 (not res!11812)) b!15699))

(assert (= (and b!15699 res!11813) b!15700))

(declare-fun b_lambda!1075 () Bool)

(assert (=> (not b_lambda!1075) (not b!15699)))

(declare-fun t!2959 () Bool)

(declare-fun tb!449 () Bool)

(assert (=> (and start!2548 (= p!262 p!262) t!2959) tb!449))

(declare-fun result!785 () Bool)

(assert (=> tb!449 (= result!785 true)))

(assert (=> b!15699 t!2959))

(declare-fun b_and!995 () Bool)

(assert (= b_and!987 (and (=> t!2959 result!785) b_and!995)))

(declare-fun m!10727 () Bool)

(assert (=> b!15699 m!10727))

(declare-fun m!10729 () Bool)

(assert (=> b!15700 m!10729))

(assert (=> b!15637 d!2787))

(declare-fun d!2793 () Bool)

(assert (=> d!2793 (= (head!815 l!1612) (h!1057 l!1612))))

(assert (=> b!15637 d!2793))

(declare-fun d!2799 () Bool)

(declare-fun res!11818 () Bool)

(declare-fun e!9576 () Bool)

(assert (=> d!2799 (=> res!11818 e!9576)))

(assert (=> d!2799 (= res!11818 (is-Nil!491 (toList!242 lt!3856)))))

(assert (=> d!2799 (= (forall!125 (toList!242 lt!3856) p!262) e!9576)))

(declare-fun b!15705 () Bool)

(declare-fun e!9577 () Bool)

(assert (=> b!15705 (= e!9576 e!9577)))

(declare-fun res!11819 () Bool)

(assert (=> b!15705 (=> (not res!11819) (not e!9577))))

(assert (=> b!15705 (= res!11819 (dynLambda!112 p!262 (h!1056 (toList!242 lt!3856))))))

(declare-fun b!15706 () Bool)

(assert (=> b!15706 (= e!9577 (forall!125 (t!2944 (toList!242 lt!3856)) p!262))))

(assert (= (and d!2799 (not res!11818)) b!15705))

(assert (= (and b!15705 res!11819) b!15706))

(declare-fun b_lambda!1081 () Bool)

(assert (=> (not b_lambda!1081) (not b!15705)))

(declare-fun t!2965 () Bool)

(declare-fun tb!455 () Bool)

(assert (=> (and start!2548 (= p!262 p!262) t!2965) tb!455))

(declare-fun result!791 () Bool)

(assert (=> tb!455 (= result!791 true)))

(assert (=> b!15705 t!2965))

(declare-fun b_and!1001 () Bool)

(assert (= b_and!995 (and (=> t!2965 result!791) b_and!1001)))

(declare-fun m!10743 () Bool)

(assert (=> b!15705 m!10743))

(declare-fun m!10745 () Bool)

(assert (=> b!15706 m!10745))

(assert (=> b!15637 d!2799))

(declare-fun d!2807 () Bool)

(declare-fun res!11822 () Bool)

(declare-fun e!9581 () Bool)

(assert (=> d!2807 (=> res!11822 e!9581)))

(assert (=> d!2807 (= res!11822 (is-Nil!491 (toList!242 (--!4 lm!238 l!1612))))))

(assert (=> d!2807 (= (forall!125 (toList!242 (--!4 lm!238 l!1612)) p!262) e!9581)))

(declare-fun b!15711 () Bool)

(declare-fun e!9582 () Bool)

(assert (=> b!15711 (= e!9581 e!9582)))

(declare-fun res!11823 () Bool)

(assert (=> b!15711 (=> (not res!11823) (not e!9582))))

(assert (=> b!15711 (= res!11823 (dynLambda!112 p!262 (h!1056 (toList!242 (--!4 lm!238 l!1612)))))))

(declare-fun b!15712 () Bool)

(assert (=> b!15712 (= e!9582 (forall!125 (t!2944 (toList!242 (--!4 lm!238 l!1612))) p!262))))

(assert (= (and d!2807 (not res!11822)) b!15711))

(assert (= (and b!15711 res!11823) b!15712))

(declare-fun b_lambda!1085 () Bool)

(assert (=> (not b_lambda!1085) (not b!15711)))

(declare-fun t!2969 () Bool)

(declare-fun tb!459 () Bool)

(assert (=> (and start!2548 (= p!262 p!262) t!2969) tb!459))

(declare-fun result!795 () Bool)

(assert (=> tb!459 (= result!795 true)))

(assert (=> b!15711 t!2969))

(declare-fun b_and!1005 () Bool)

(assert (= b_and!1001 (and (=> t!2969 result!795) b_and!1005)))

(declare-fun m!10751 () Bool)

(assert (=> b!15711 m!10751))

(declare-fun m!10753 () Bool)

(assert (=> b!15712 m!10753))

(assert (=> b!15637 d!2807))

(declare-fun d!2811 () Bool)

(assert (=> d!2811 (= (tail!62 l!1612) (t!2945 l!1612))))

(assert (=> b!15637 d!2811))

(declare-fun d!2813 () Bool)

(assert (=> d!2813 (forall!125 (toList!242 (--!4 lt!3856 lt!3854)) p!262)))

(declare-fun lt!3909 () Unit!314)

(declare-fun choose!181 (ListLongMap!453 List!495 Int) Unit!314)

(assert (=> d!2813 (= lt!3909 (choose!181 lt!3856 lt!3854 p!262))))

(assert (=> d!2813 (forall!125 (toList!242 lt!3856) p!262)))

(assert (=> d!2813 (= (removeAllValidProp!2 lt!3856 lt!3854 p!262) lt!3909)))

(declare-fun bs!710 () Bool)

(assert (= bs!710 d!2813))

(assert (=> bs!710 m!10601))

(assert (=> bs!710 m!10607))

(declare-fun m!10769 () Bool)

(assert (=> bs!710 m!10769))

(assert (=> bs!710 m!10611))

(assert (=> b!15637 d!2813))

(declare-fun b!15721 () Bool)

(declare-fun e!9589 () Bool)

(declare-fun tp_is_empty!799 () Bool)

(declare-fun tp!2693 () Bool)

(assert (=> b!15721 (= e!9589 (and tp_is_empty!799 tp!2693))))

(assert (=> b!15638 (= tp!2677 e!9589)))

(assert (= (and b!15638 (is-Cons!490 (toList!242 lm!238))) b!15721))

(declare-fun b_lambda!1091 () Bool)

(assert (= b_lambda!1067 (or (and start!2548 b_free!523) b_lambda!1091)))

(declare-fun b_lambda!1093 () Bool)

(assert (= b_lambda!1081 (or (and start!2548 b_free!523) b_lambda!1093)))

(declare-fun b_lambda!1095 () Bool)

(assert (= b_lambda!1085 (or (and start!2548 b_free!523) b_lambda!1095)))

(declare-fun b_lambda!1097 () Bool)

(assert (= b_lambda!1075 (or (and start!2548 b_free!523) b_lambda!1097)))

(push 1)


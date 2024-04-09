; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2494 () Bool)

(assert start!2494)

(declare-fun b_free!517 () Bool)

(declare-fun b_next!517 () Bool)

(assert (=> start!2494 (= b_free!517 (not b_next!517))))

(declare-fun tp!2650 () Bool)

(declare-fun b_and!963 () Bool)

(assert (=> start!2494 (= tp!2650 b_and!963)))

(declare-fun res!11736 () Bool)

(declare-fun e!9463 () Bool)

(assert (=> start!2494 (=> (not res!11736) (not e!9463))))

(declare-datatypes ((B!638 0))(
  ( (B!639 (val!417 Int)) )
))
(declare-datatypes ((tuple2!616 0))(
  ( (tuple2!617 (_1!308 (_ BitVec 64)) (_2!308 B!638)) )
))
(declare-datatypes ((List!488 0))(
  ( (Nil!485) (Cons!484 (h!1050 tuple2!616) (t!2926 List!488)) )
))
(declare-datatypes ((ListLongMap!447 0))(
  ( (ListLongMap!448 (toList!239 List!488)) )
))
(declare-fun lm!238 () ListLongMap!447)

(declare-fun p!262 () Int)

(declare-fun forall!122 (List!488 Int) Bool)

(assert (=> start!2494 (= res!11736 (forall!122 (toList!239 lm!238) p!262))))

(assert (=> start!2494 e!9463))

(declare-fun e!9462 () Bool)

(declare-fun inv!824 (ListLongMap!447) Bool)

(assert (=> start!2494 (and (inv!824 lm!238) e!9462)))

(assert (=> start!2494 tp!2650))

(assert (=> start!2494 true))

(declare-fun b!15546 () Bool)

(declare-fun res!11737 () Bool)

(assert (=> b!15546 (=> (not res!11737) (not e!9463))))

(declare-datatypes ((List!489 0))(
  ( (Nil!486) (Cons!485 (h!1051 (_ BitVec 64)) (t!2927 List!489)) )
))
(declare-fun l!1612 () List!489)

(declare-fun isEmpty!132 (List!489) Bool)

(assert (=> b!15546 (= res!11737 (not (isEmpty!132 l!1612)))))

(declare-fun b!15547 () Bool)

(declare-fun ListPrimitiveSize!31 (List!489) Int)

(declare-fun tail!59 (List!489) List!489)

(assert (=> b!15547 (= e!9463 (not (< (ListPrimitiveSize!31 (tail!59 l!1612)) (ListPrimitiveSize!31 l!1612))))))

(declare-fun lt!3801 () (_ BitVec 64))

(declare-fun -!21 (ListLongMap!447 (_ BitVec 64)) ListLongMap!447)

(assert (=> b!15547 (forall!122 (toList!239 (-!21 lm!238 lt!3801)) p!262)))

(declare-datatypes ((Unit!308 0))(
  ( (Unit!309) )
))
(declare-fun lt!3800 () Unit!308)

(declare-fun removeValidProp!14 (ListLongMap!447 Int (_ BitVec 64)) Unit!308)

(assert (=> b!15547 (= lt!3800 (removeValidProp!14 lm!238 p!262 lt!3801))))

(declare-fun head!812 (List!489) (_ BitVec 64))

(assert (=> b!15547 (= lt!3801 (head!812 l!1612))))

(declare-fun b!15548 () Bool)

(declare-fun tp!2651 () Bool)

(assert (=> b!15548 (= e!9462 tp!2651)))

(assert (= (and start!2494 res!11736) b!15546))

(assert (= (and b!15546 res!11737) b!15547))

(assert (= start!2494 b!15548))

(declare-fun m!10471 () Bool)

(assert (=> start!2494 m!10471))

(declare-fun m!10473 () Bool)

(assert (=> start!2494 m!10473))

(declare-fun m!10475 () Bool)

(assert (=> b!15546 m!10475))

(declare-fun m!10477 () Bool)

(assert (=> b!15547 m!10477))

(declare-fun m!10479 () Bool)

(assert (=> b!15547 m!10479))

(declare-fun m!10481 () Bool)

(assert (=> b!15547 m!10481))

(declare-fun m!10483 () Bool)

(assert (=> b!15547 m!10483))

(declare-fun m!10485 () Bool)

(assert (=> b!15547 m!10485))

(declare-fun m!10487 () Bool)

(assert (=> b!15547 m!10487))

(declare-fun m!10489 () Bool)

(assert (=> b!15547 m!10489))

(assert (=> b!15547 m!10487))

(push 1)

(assert (not b!15546))

(assert b_and!963)

(assert (not b!15548))

(assert (not b!15547))

(assert (not start!2494))

(assert (not b_next!517))

(check-sat)

(pop 1)

(push 1)

(assert b_and!963)

(assert (not b_next!517))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2683 () Bool)

(declare-fun res!11758 () Bool)

(declare-fun e!9484 () Bool)

(assert (=> d!2683 (=> res!11758 e!9484)))

(assert (=> d!2683 (= res!11758 (is-Nil!485 (toList!239 lm!238)))))

(assert (=> d!2683 (= (forall!122 (toList!239 lm!238) p!262) e!9484)))

(declare-fun b!15575 () Bool)

(declare-fun e!9485 () Bool)

(assert (=> b!15575 (= e!9484 e!9485)))

(declare-fun res!11759 () Bool)

(assert (=> b!15575 (=> (not res!11759) (not e!9485))))

(declare-fun dynLambda!109 (Int tuple2!616) Bool)

(assert (=> b!15575 (= res!11759 (dynLambda!109 p!262 (h!1050 (toList!239 lm!238))))))

(declare-fun b!15576 () Bool)

(assert (=> b!15576 (= e!9485 (forall!122 (t!2926 (toList!239 lm!238)) p!262))))

(assert (= (and d!2683 (not res!11758)) b!15575))

(assert (= (and b!15575 res!11759) b!15576))

(declare-fun b_lambda!1043 () Bool)

(assert (=> (not b_lambda!1043) (not b!15575)))

(declare-fun t!2933 () Bool)

(declare-fun tb!429 () Bool)

(assert (=> (and start!2494 (= p!262 p!262) t!2933) tb!429))

(declare-fun result!759 () Bool)

(assert (=> tb!429 (= result!759 true)))

(assert (=> b!15575 t!2933))

(declare-fun b_and!969 () Bool)

(assert (= b_and!963 (and (=> t!2933 result!759) b_and!969)))

(declare-fun m!10531 () Bool)

(assert (=> b!15575 m!10531))

(declare-fun m!10533 () Bool)

(assert (=> b!15576 m!10533))

(assert (=> start!2494 d!2683))

(declare-fun d!2691 () Bool)

(declare-fun isStrictlySorted!145 (List!488) Bool)

(assert (=> d!2691 (= (inv!824 lm!238) (isStrictlySorted!145 (toList!239 lm!238)))))

(declare-fun bs!689 () Bool)

(assert (= bs!689 d!2691))

(declare-fun m!10535 () Bool)

(assert (=> bs!689 m!10535))

(assert (=> start!2494 d!2691))

(declare-fun d!2697 () Bool)

(assert (=> d!2697 (= (tail!59 l!1612) (t!2927 l!1612))))

(assert (=> b!15547 d!2697))

(declare-fun d!2699 () Bool)

(assert (=> d!2699 (forall!122 (toList!239 (-!21 lm!238 lt!3801)) p!262)))

(declare-fun lt!3821 () Unit!308)

(declare-fun choose!176 (ListLongMap!447 Int (_ BitVec 64)) Unit!308)

(assert (=> d!2699 (= lt!3821 (choose!176 lm!238 p!262 lt!3801))))

(assert (=> d!2699 (forall!122 (toList!239 lm!238) p!262)))

(assert (=> d!2699 (= (removeValidProp!14 lm!238 p!262 lt!3801) lt!3821)))

(declare-fun bs!690 () Bool)

(assert (= bs!690 d!2699))

(assert (=> bs!690 m!10483))

(assert (=> bs!690 m!10477))

(declare-fun m!10543 () Bool)

(assert (=> bs!690 m!10543))

(assert (=> bs!690 m!10471))

(assert (=> b!15547 d!2699))

(declare-fun d!2705 () Bool)

(declare-fun res!11762 () Bool)

(declare-fun e!9491 () Bool)

(assert (=> d!2705 (=> res!11762 e!9491)))

(assert (=> d!2705 (= res!11762 (is-Nil!485 (toList!239 (-!21 lm!238 lt!3801))))))

(assert (=> d!2705 (= (forall!122 (toList!239 (-!21 lm!238 lt!3801)) p!262) e!9491)))

(declare-fun b!15585 () Bool)

(declare-fun e!9492 () Bool)

(assert (=> b!15585 (= e!9491 e!9492)))

(declare-fun res!11763 () Bool)

(assert (=> b!15585 (=> (not res!11763) (not e!9492))))

(assert (=> b!15585 (= res!11763 (dynLambda!109 p!262 (h!1050 (toList!239 (-!21 lm!238 lt!3801)))))))

(declare-fun b!15586 () Bool)

(assert (=> b!15586 (= e!9492 (forall!122 (t!2926 (toList!239 (-!21 lm!238 lt!3801))) p!262))))

(assert (= (and d!2705 (not res!11762)) b!15585))

(assert (= (and b!15585 res!11763) b!15586))

(declare-fun b_lambda!1047 () Bool)

(assert (=> (not b_lambda!1047) (not b!15585)))

(declare-fun t!2937 () Bool)

(declare-fun tb!433 () Bool)

(assert (=> (and start!2494 (= p!262 p!262) t!2937) tb!433))

(declare-fun result!763 () Bool)

(assert (=> tb!433 (= result!763 true)))

(assert (=> b!15585 t!2937))

(declare-fun b_and!973 () Bool)

(assert (= b_and!969 (and (=> t!2937 result!763) b_and!973)))

(declare-fun m!10547 () Bool)

(assert (=> b!15585 m!10547))

(declare-fun m!10551 () Bool)

(assert (=> b!15586 m!10551))

(assert (=> b!15547 d!2705))

(declare-fun d!2713 () Bool)

(declare-fun lt!3831 () ListLongMap!447)

(declare-fun contains!187 (ListLongMap!447 (_ BitVec 64)) Bool)

(assert (=> d!2713 (not (contains!187 lt!3831 lt!3801))))

(declare-fun removeStrictlySorted!10 (List!488 (_ BitVec 64)) List!488)

(assert (=> d!2713 (= lt!3831 (ListLongMap!448 (removeStrictlySorted!10 (toList!239 lm!238) lt!3801)))))

(assert (=> d!2713 (= (-!21 lm!238 lt!3801) lt!3831)))

(declare-fun bs!693 () Bool)

(assert (= bs!693 d!2713))

(declare-fun m!10559 () Bool)

(assert (=> bs!693 m!10559))

(declare-fun m!10561 () Bool)

(assert (=> bs!693 m!10561))

(assert (=> b!15547 d!2713))

(declare-fun d!2719 () Bool)

(declare-fun lt!3836 () Int)

(assert (=> d!2719 (>= lt!3836 0)))

(declare-fun e!9506 () Int)

(assert (=> d!2719 (= lt!3836 e!9506)))

(declare-fun c!1471 () Bool)

(assert (=> d!2719 (= c!1471 (is-Nil!486 l!1612))))

(assert (=> d!2719 (= (ListPrimitiveSize!31 l!1612) lt!3836)))

(declare-fun b!15607 () Bool)

(assert (=> b!15607 (= e!9506 0)))

(declare-fun b!15608 () Bool)

(assert (=> b!15608 (= e!9506 (+ 1 (ListPrimitiveSize!31 (t!2927 l!1612))))))

(assert (= (and d!2719 c!1471) b!15607))

(assert (= (and d!2719 (not c!1471)) b!15608))

(declare-fun m!10567 () Bool)

(assert (=> b!15608 m!10567))

(assert (=> b!15547 d!2719))

(declare-fun d!2727 () Bool)

(assert (=> d!2727 (= (head!812 l!1612) (h!1051 l!1612))))

(assert (=> b!15547 d!2727))

(declare-fun d!2729 () Bool)

(declare-fun lt!3837 () Int)

(assert (=> d!2729 (>= lt!3837 0)))

(declare-fun e!9507 () Int)

(assert (=> d!2729 (= lt!3837 e!9507)))

(declare-fun c!1472 () Bool)

(assert (=> d!2729 (= c!1472 (is-Nil!486 (tail!59 l!1612)))))

(assert (=> d!2729 (= (ListPrimitiveSize!31 (tail!59 l!1612)) lt!3837)))

(declare-fun b!15609 () Bool)

(assert (=> b!15609 (= e!9507 0)))

(declare-fun b!15610 () Bool)

(assert (=> b!15610 (= e!9507 (+ 1 (ListPrimitiveSize!31 (t!2927 (tail!59 l!1612)))))))

(assert (= (and d!2729 c!1472) b!15609))

(assert (= (and d!2729 (not c!1472)) b!15610))

(declare-fun m!10569 () Bool)

(assert (=> b!15610 m!10569))

(assert (=> b!15547 d!2729))

(declare-fun d!2731 () Bool)

(assert (=> d!2731 (= (isEmpty!132 l!1612) (is-Nil!486 l!1612))))

(assert (=> b!15546 d!2731))

(declare-fun b!15615 () Bool)

(declare-fun e!9510 () Bool)

(declare-fun tp_is_empty!793 () Bool)

(declare-fun tp!2666 () Bool)

(assert (=> b!15615 (= e!9510 (and tp_is_empty!793 tp!2666))))

(assert (=> b!15548 (= tp!2651 e!9510)))

(assert (= (and b!15548 (is-Cons!484 (toList!239 lm!238))) b!15615))

(declare-fun b_lambda!1051 () Bool)

(assert (= b_lambda!1047 (or (and start!2494 b_free!517) b_lambda!1051)))

(declare-fun b_lambda!1053 () Bool)

(assert (= b_lambda!1043 (or (and start!2494 b_free!517) b_lambda!1053)))

(push 1)


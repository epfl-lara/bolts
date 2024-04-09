; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2498 () Bool)

(assert start!2498)

(declare-fun b_free!521 () Bool)

(declare-fun b_next!521 () Bool)

(assert (=> start!2498 (= b_free!521 (not b_next!521))))

(declare-fun tp!2662 () Bool)

(declare-fun b_and!967 () Bool)

(assert (=> start!2498 (= tp!2662 b_and!967)))

(declare-fun res!11748 () Bool)

(declare-fun e!9474 () Bool)

(assert (=> start!2498 (=> (not res!11748) (not e!9474))))

(declare-datatypes ((B!642 0))(
  ( (B!643 (val!419 Int)) )
))
(declare-datatypes ((tuple2!620 0))(
  ( (tuple2!621 (_1!310 (_ BitVec 64)) (_2!310 B!642)) )
))
(declare-datatypes ((List!492 0))(
  ( (Nil!489) (Cons!488 (h!1054 tuple2!620) (t!2930 List!492)) )
))
(declare-datatypes ((ListLongMap!451 0))(
  ( (ListLongMap!452 (toList!241 List!492)) )
))
(declare-fun lm!238 () ListLongMap!451)

(declare-fun p!262 () Int)

(declare-fun forall!124 (List!492 Int) Bool)

(assert (=> start!2498 (= res!11748 (forall!124 (toList!241 lm!238) p!262))))

(assert (=> start!2498 e!9474))

(declare-fun e!9475 () Bool)

(declare-fun inv!826 (ListLongMap!451) Bool)

(assert (=> start!2498 (and (inv!826 lm!238) e!9475)))

(assert (=> start!2498 tp!2662))

(assert (=> start!2498 true))

(declare-fun b!15564 () Bool)

(declare-fun res!11749 () Bool)

(assert (=> b!15564 (=> (not res!11749) (not e!9474))))

(declare-datatypes ((List!493 0))(
  ( (Nil!490) (Cons!489 (h!1055 (_ BitVec 64)) (t!2931 List!493)) )
))
(declare-fun l!1612 () List!493)

(declare-fun isEmpty!134 (List!493) Bool)

(assert (=> b!15564 (= res!11749 (not (isEmpty!134 l!1612)))))

(declare-fun b!15565 () Bool)

(declare-fun ListPrimitiveSize!33 (List!493) Int)

(declare-fun tail!61 (List!493) List!493)

(assert (=> b!15565 (= e!9474 (not (< (ListPrimitiveSize!33 (tail!61 l!1612)) (ListPrimitiveSize!33 l!1612))))))

(declare-fun lt!3813 () (_ BitVec 64))

(declare-fun -!23 (ListLongMap!451 (_ BitVec 64)) ListLongMap!451)

(assert (=> b!15565 (forall!124 (toList!241 (-!23 lm!238 lt!3813)) p!262)))

(declare-datatypes ((Unit!312 0))(
  ( (Unit!313) )
))
(declare-fun lt!3812 () Unit!312)

(declare-fun removeValidProp!16 (ListLongMap!451 Int (_ BitVec 64)) Unit!312)

(assert (=> b!15565 (= lt!3812 (removeValidProp!16 lm!238 p!262 lt!3813))))

(declare-fun head!814 (List!493) (_ BitVec 64))

(assert (=> b!15565 (= lt!3813 (head!814 l!1612))))

(declare-fun b!15566 () Bool)

(declare-fun tp!2663 () Bool)

(assert (=> b!15566 (= e!9475 tp!2663)))

(assert (= (and start!2498 res!11748) b!15564))

(assert (= (and b!15564 res!11749) b!15565))

(assert (= start!2498 b!15566))

(declare-fun m!10511 () Bool)

(assert (=> start!2498 m!10511))

(declare-fun m!10513 () Bool)

(assert (=> start!2498 m!10513))

(declare-fun m!10515 () Bool)

(assert (=> b!15564 m!10515))

(declare-fun m!10517 () Bool)

(assert (=> b!15565 m!10517))

(declare-fun m!10519 () Bool)

(assert (=> b!15565 m!10519))

(declare-fun m!10521 () Bool)

(assert (=> b!15565 m!10521))

(declare-fun m!10523 () Bool)

(assert (=> b!15565 m!10523))

(declare-fun m!10525 () Bool)

(assert (=> b!15565 m!10525))

(declare-fun m!10527 () Bool)

(assert (=> b!15565 m!10527))

(declare-fun m!10529 () Bool)

(assert (=> b!15565 m!10529))

(assert (=> b!15565 m!10527))

(push 1)

(assert (not b_next!521))

(assert (not b!15565))

(assert b_and!967)

(assert (not start!2498))

(assert (not b!15566))

(assert (not b!15564))

(check-sat)

(pop 1)

(push 1)

(assert b_and!967)

(assert (not b_next!521))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2685 () Bool)

(declare-fun res!11760 () Bool)

(declare-fun e!9486 () Bool)

(assert (=> d!2685 (=> res!11760 e!9486)))

(assert (=> d!2685 (= res!11760 (is-Nil!489 (toList!241 (-!23 lm!238 lt!3813))))))

(assert (=> d!2685 (= (forall!124 (toList!241 (-!23 lm!238 lt!3813)) p!262) e!9486)))

(declare-fun b!15577 () Bool)

(declare-fun e!9487 () Bool)

(assert (=> b!15577 (= e!9486 e!9487)))

(declare-fun res!11761 () Bool)

(assert (=> b!15577 (=> (not res!11761) (not e!9487))))

(declare-fun dynLambda!110 (Int tuple2!620) Bool)

(assert (=> b!15577 (= res!11761 (dynLambda!110 p!262 (h!1054 (toList!241 (-!23 lm!238 lt!3813)))))))

(declare-fun b!15578 () Bool)

(assert (=> b!15578 (= e!9487 (forall!124 (t!2930 (toList!241 (-!23 lm!238 lt!3813))) p!262))))

(assert (= (and d!2685 (not res!11760)) b!15577))

(assert (= (and b!15577 res!11761) b!15578))

(declare-fun b_lambda!1045 () Bool)

(assert (=> (not b_lambda!1045) (not b!15577)))

(declare-fun t!2935 () Bool)

(declare-fun tb!431 () Bool)

(assert (=> (and start!2498 (= p!262 p!262) t!2935) tb!431))

(declare-fun result!761 () Bool)

(assert (=> tb!431 (= result!761 true)))

(assert (=> b!15577 t!2935))

(declare-fun b_and!971 () Bool)

(assert (= b_and!967 (and (=> t!2935 result!761) b_and!971)))

(declare-fun m!10537 () Bool)

(assert (=> b!15577 m!10537))

(declare-fun m!10539 () Bool)

(assert (=> b!15578 m!10539))

(assert (=> b!15565 d!2685))

(declare-fun d!2695 () Bool)

(assert (=> d!2695 (= (tail!61 l!1612) (t!2931 l!1612))))

(assert (=> b!15565 d!2695))

(declare-fun d!2701 () Bool)

(declare-fun lt!3820 () Int)

(assert (=> d!2701 (>= lt!3820 0)))

(declare-fun e!9490 () Int)

(assert (=> d!2701 (= lt!3820 e!9490)))

(declare-fun c!1463 () Bool)

(assert (=> d!2701 (= c!1463 (is-Nil!490 l!1612))))

(assert (=> d!2701 (= (ListPrimitiveSize!33 l!1612) lt!3820)))

(declare-fun b!15583 () Bool)

(assert (=> b!15583 (= e!9490 0)))

(declare-fun b!15584 () Bool)

(assert (=> b!15584 (= e!9490 (+ 1 (ListPrimitiveSize!33 (t!2931 l!1612))))))

(assert (= (and d!2701 c!1463) b!15583))

(assert (= (and d!2701 (not c!1463)) b!15584))

(declare-fun m!10541 () Bool)

(assert (=> b!15584 m!10541))

(assert (=> b!15565 d!2701))

(declare-fun d!2703 () Bool)

(assert (=> d!2703 (= (head!814 l!1612) (h!1055 l!1612))))

(assert (=> b!15565 d!2703))

(declare-fun d!2707 () Bool)

(declare-fun lt!3823 () Int)

(assert (=> d!2707 (>= lt!3823 0)))

(declare-fun e!9493 () Int)

(assert (=> d!2707 (= lt!3823 e!9493)))

(declare-fun c!1464 () Bool)

(assert (=> d!2707 (= c!1464 (is-Nil!490 (tail!61 l!1612)))))

(assert (=> d!2707 (= (ListPrimitiveSize!33 (tail!61 l!1612)) lt!3823)))

(declare-fun b!15587 () Bool)

(assert (=> b!15587 (= e!9493 0)))

(declare-fun b!15588 () Bool)

(assert (=> b!15588 (= e!9493 (+ 1 (ListPrimitiveSize!33 (t!2931 (tail!61 l!1612)))))))

(assert (= (and d!2707 c!1464) b!15587))

(assert (= (and d!2707 (not c!1464)) b!15588))

(declare-fun m!10549 () Bool)

(assert (=> b!15588 m!10549))

(assert (=> b!15565 d!2707))

(declare-fun d!2711 () Bool)

(assert (=> d!2711 (forall!124 (toList!241 (-!23 lm!238 lt!3813)) p!262)))

(declare-fun lt!3830 () Unit!312)

(declare-fun choose!177 (ListLongMap!451 Int (_ BitVec 64)) Unit!312)

(assert (=> d!2711 (= lt!3830 (choose!177 lm!238 p!262 lt!3813))))

(assert (=> d!2711 (forall!124 (toList!241 lm!238) p!262)))

(assert (=> d!2711 (= (removeValidProp!16 lm!238 p!262 lt!3813) lt!3830)))

(declare-fun bs!692 () Bool)

(assert (= bs!692 d!2711))

(assert (=> bs!692 m!10517))

(assert (=> bs!692 m!10523))

(declare-fun m!10557 () Bool)

(assert (=> bs!692 m!10557))

(assert (=> bs!692 m!10511))

(assert (=> b!15565 d!2711))

(declare-fun d!2717 () Bool)

(declare-fun lt!3840 () ListLongMap!451)

(declare-fun contains!189 (ListLongMap!451 (_ BitVec 64)) Bool)

(assert (=> d!2717 (not (contains!189 lt!3840 lt!3813))))

(declare-fun removeStrictlySorted!12 (List!492 (_ BitVec 64)) List!492)

(assert (=> d!2717 (= lt!3840 (ListLongMap!452 (removeStrictlySorted!12 (toList!241 lm!238) lt!3813)))))

(assert (=> d!2717 (= (-!23 lm!238 lt!3813) lt!3840)))

(declare-fun bs!694 () Bool)

(assert (= bs!694 d!2717))

(declare-fun m!10571 () Bool)

(assert (=> bs!694 m!10571))

(declare-fun m!10573 () Bool)

(assert (=> bs!694 m!10573))

(assert (=> b!15565 d!2717))

(declare-fun d!2733 () Bool)

(declare-fun res!11770 () Bool)

(declare-fun e!9511 () Bool)

(assert (=> d!2733 (=> res!11770 e!9511)))

(assert (=> d!2733 (= res!11770 (is-Nil!489 (toList!241 lm!238)))))

(assert (=> d!2733 (= (forall!124 (toList!241 lm!238) p!262) e!9511)))

(declare-fun b!15616 () Bool)

(declare-fun e!9512 () Bool)

(assert (=> b!15616 (= e!9511 e!9512)))

(declare-fun res!11771 () Bool)

(assert (=> b!15616 (=> (not res!11771) (not e!9512))))

(assert (=> b!15616 (= res!11771 (dynLambda!110 p!262 (h!1054 (toList!241 lm!238))))))

(declare-fun b!15617 () Bool)

(assert (=> b!15617 (= e!9512 (forall!124 (t!2930 (toList!241 lm!238)) p!262))))

(assert (= (and d!2733 (not res!11770)) b!15616))

(assert (= (and b!15616 res!11771) b!15617))

(declare-fun b_lambda!1055 () Bool)

(assert (=> (not b_lambda!1055) (not b!15616)))


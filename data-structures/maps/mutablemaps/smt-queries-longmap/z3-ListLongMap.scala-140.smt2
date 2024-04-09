; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2496 () Bool)

(assert start!2496)

(declare-fun b_free!519 () Bool)

(declare-fun b_next!519 () Bool)

(assert (=> start!2496 (= b_free!519 (not b_next!519))))

(declare-fun tp!2657 () Bool)

(declare-fun b_and!965 () Bool)

(assert (=> start!2496 (= tp!2657 b_and!965)))

(declare-fun res!11743 () Bool)

(declare-fun e!9468 () Bool)

(assert (=> start!2496 (=> (not res!11743) (not e!9468))))

(declare-datatypes ((B!640 0))(
  ( (B!641 (val!418 Int)) )
))
(declare-datatypes ((tuple2!618 0))(
  ( (tuple2!619 (_1!309 (_ BitVec 64)) (_2!309 B!640)) )
))
(declare-datatypes ((List!490 0))(
  ( (Nil!487) (Cons!486 (h!1052 tuple2!618) (t!2928 List!490)) )
))
(declare-datatypes ((ListLongMap!449 0))(
  ( (ListLongMap!450 (toList!240 List!490)) )
))
(declare-fun lm!238 () ListLongMap!449)

(declare-fun p!262 () Int)

(declare-fun forall!123 (List!490 Int) Bool)

(assert (=> start!2496 (= res!11743 (forall!123 (toList!240 lm!238) p!262))))

(assert (=> start!2496 e!9468))

(declare-fun e!9469 () Bool)

(declare-fun inv!825 (ListLongMap!449) Bool)

(assert (=> start!2496 (and (inv!825 lm!238) e!9469)))

(assert (=> start!2496 tp!2657))

(assert (=> start!2496 true))

(declare-fun b!15555 () Bool)

(declare-fun res!11742 () Bool)

(assert (=> b!15555 (=> (not res!11742) (not e!9468))))

(declare-datatypes ((List!491 0))(
  ( (Nil!488) (Cons!487 (h!1053 (_ BitVec 64)) (t!2929 List!491)) )
))
(declare-fun l!1612 () List!491)

(declare-fun isEmpty!133 (List!491) Bool)

(assert (=> b!15555 (= res!11742 (not (isEmpty!133 l!1612)))))

(declare-fun b!15556 () Bool)

(declare-fun ListPrimitiveSize!32 (List!491) Int)

(declare-fun tail!60 (List!491) List!491)

(assert (=> b!15556 (= e!9468 (not (< (ListPrimitiveSize!32 (tail!60 l!1612)) (ListPrimitiveSize!32 l!1612))))))

(declare-fun lt!3806 () (_ BitVec 64))

(declare-fun -!22 (ListLongMap!449 (_ BitVec 64)) ListLongMap!449)

(assert (=> b!15556 (forall!123 (toList!240 (-!22 lm!238 lt!3806)) p!262)))

(declare-datatypes ((Unit!310 0))(
  ( (Unit!311) )
))
(declare-fun lt!3807 () Unit!310)

(declare-fun removeValidProp!15 (ListLongMap!449 Int (_ BitVec 64)) Unit!310)

(assert (=> b!15556 (= lt!3807 (removeValidProp!15 lm!238 p!262 lt!3806))))

(declare-fun head!813 (List!491) (_ BitVec 64))

(assert (=> b!15556 (= lt!3806 (head!813 l!1612))))

(declare-fun b!15557 () Bool)

(declare-fun tp!2656 () Bool)

(assert (=> b!15557 (= e!9469 tp!2656)))

(assert (= (and start!2496 res!11743) b!15555))

(assert (= (and b!15555 res!11742) b!15556))

(assert (= start!2496 b!15557))

(declare-fun m!10491 () Bool)

(assert (=> start!2496 m!10491))

(declare-fun m!10493 () Bool)

(assert (=> start!2496 m!10493))

(declare-fun m!10495 () Bool)

(assert (=> b!15555 m!10495))

(declare-fun m!10497 () Bool)

(assert (=> b!15556 m!10497))

(declare-fun m!10499 () Bool)

(assert (=> b!15556 m!10499))

(declare-fun m!10501 () Bool)

(assert (=> b!15556 m!10501))

(declare-fun m!10503 () Bool)

(assert (=> b!15556 m!10503))

(declare-fun m!10505 () Bool)

(assert (=> b!15556 m!10505))

(declare-fun m!10507 () Bool)

(assert (=> b!15556 m!10507))

(declare-fun m!10509 () Bool)

(assert (=> b!15556 m!10509))

(assert (=> b!15556 m!10507))

(check-sat (not start!2496) (not b!15555) b_and!965 (not b!15557) (not b_next!519) (not b!15556))
(check-sat b_and!965 (not b_next!519))
(get-model)

(declare-fun d!2687 () Bool)

(get-info :version)

(assert (=> d!2687 (= (isEmpty!133 l!1612) ((_ is Nil!488) l!1612))))

(assert (=> b!15555 d!2687))

(declare-fun d!2689 () Bool)

(assert (=> d!2689 (= (tail!60 l!1612) (t!2929 l!1612))))

(assert (=> b!15556 d!2689))

(declare-fun d!2693 () Bool)

(assert (=> d!2693 (forall!123 (toList!240 (-!22 lm!238 lt!3806)) p!262)))

(declare-fun lt!3822 () Unit!310)

(declare-fun choose!175 (ListLongMap!449 Int (_ BitVec 64)) Unit!310)

(assert (=> d!2693 (= lt!3822 (choose!175 lm!238 p!262 lt!3806))))

(assert (=> d!2693 (forall!123 (toList!240 lm!238) p!262)))

(assert (=> d!2693 (= (removeValidProp!15 lm!238 p!262 lt!3806) lt!3822)))

(declare-fun bs!691 () Bool)

(assert (= bs!691 d!2693))

(assert (=> bs!691 m!10497))

(assert (=> bs!691 m!10505))

(declare-fun m!10545 () Bool)

(assert (=> bs!691 m!10545))

(assert (=> bs!691 m!10491))

(assert (=> b!15556 d!2693))

(declare-fun d!2709 () Bool)

(declare-fun res!11768 () Bool)

(declare-fun e!9498 () Bool)

(assert (=> d!2709 (=> res!11768 e!9498)))

(assert (=> d!2709 (= res!11768 ((_ is Nil!487) (toList!240 (-!22 lm!238 lt!3806))))))

(assert (=> d!2709 (= (forall!123 (toList!240 (-!22 lm!238 lt!3806)) p!262) e!9498)))

(declare-fun b!15593 () Bool)

(declare-fun e!9499 () Bool)

(assert (=> b!15593 (= e!9498 e!9499)))

(declare-fun res!11769 () Bool)

(assert (=> b!15593 (=> (not res!11769) (not e!9499))))

(declare-fun dynLambda!111 (Int tuple2!618) Bool)

(assert (=> b!15593 (= res!11769 (dynLambda!111 p!262 (h!1052 (toList!240 (-!22 lm!238 lt!3806)))))))

(declare-fun b!15594 () Bool)

(assert (=> b!15594 (= e!9499 (forall!123 (t!2928 (toList!240 (-!22 lm!238 lt!3806))) p!262))))

(assert (= (and d!2709 (not res!11768)) b!15593))

(assert (= (and b!15593 res!11769) b!15594))

(declare-fun b_lambda!1049 () Bool)

(assert (=> (not b_lambda!1049) (not b!15593)))

(declare-fun t!2939 () Bool)

(declare-fun tb!435 () Bool)

(assert (=> (and start!2496 (= p!262 p!262) t!2939) tb!435))

(declare-fun result!765 () Bool)

(assert (=> tb!435 (= result!765 true)))

(assert (=> b!15593 t!2939))

(declare-fun b_and!975 () Bool)

(assert (= b_and!965 (and (=> t!2939 result!765) b_and!975)))

(declare-fun m!10553 () Bool)

(assert (=> b!15593 m!10553))

(declare-fun m!10555 () Bool)

(assert (=> b!15594 m!10555))

(assert (=> b!15556 d!2709))

(declare-fun d!2715 () Bool)

(declare-fun lt!3832 () Int)

(assert (=> d!2715 (>= lt!3832 0)))

(declare-fun e!9502 () Int)

(assert (=> d!2715 (= lt!3832 e!9502)))

(declare-fun c!1467 () Bool)

(assert (=> d!2715 (= c!1467 ((_ is Nil!488) l!1612))))

(assert (=> d!2715 (= (ListPrimitiveSize!32 l!1612) lt!3832)))

(declare-fun b!15599 () Bool)

(assert (=> b!15599 (= e!9502 0)))

(declare-fun b!15600 () Bool)

(assert (=> b!15600 (= e!9502 (+ 1 (ListPrimitiveSize!32 (t!2929 l!1612))))))

(assert (= (and d!2715 c!1467) b!15599))

(assert (= (and d!2715 (not c!1467)) b!15600))

(declare-fun m!10563 () Bool)

(assert (=> b!15600 m!10563))

(assert (=> b!15556 d!2715))

(declare-fun d!2721 () Bool)

(assert (=> d!2721 (= (head!813 l!1612) (h!1053 l!1612))))

(assert (=> b!15556 d!2721))

(declare-fun d!2723 () Bool)

(declare-fun lt!3835 () Int)

(assert (=> d!2723 (>= lt!3835 0)))

(declare-fun e!9505 () Int)

(assert (=> d!2723 (= lt!3835 e!9505)))

(declare-fun c!1470 () Bool)

(assert (=> d!2723 (= c!1470 ((_ is Nil!488) (tail!60 l!1612)))))

(assert (=> d!2723 (= (ListPrimitiveSize!32 (tail!60 l!1612)) lt!3835)))

(declare-fun b!15605 () Bool)

(assert (=> b!15605 (= e!9505 0)))

(declare-fun b!15606 () Bool)

(assert (=> b!15606 (= e!9505 (+ 1 (ListPrimitiveSize!32 (t!2929 (tail!60 l!1612)))))))

(assert (= (and d!2723 c!1470) b!15605))

(assert (= (and d!2723 (not c!1470)) b!15606))

(declare-fun m!10565 () Bool)

(assert (=> b!15606 m!10565))

(assert (=> b!15556 d!2723))

(declare-fun d!2725 () Bool)

(declare-fun lt!3843 () ListLongMap!449)

(declare-fun contains!188 (ListLongMap!449 (_ BitVec 64)) Bool)

(assert (=> d!2725 (not (contains!188 lt!3843 lt!3806))))

(declare-fun removeStrictlySorted!11 (List!490 (_ BitVec 64)) List!490)

(assert (=> d!2725 (= lt!3843 (ListLongMap!450 (removeStrictlySorted!11 (toList!240 lm!238) lt!3806)))))

(assert (=> d!2725 (= (-!22 lm!238 lt!3806) lt!3843)))

(declare-fun bs!695 () Bool)

(assert (= bs!695 d!2725))

(declare-fun m!10579 () Bool)

(assert (=> bs!695 m!10579))

(declare-fun m!10581 () Bool)

(assert (=> bs!695 m!10581))

(assert (=> b!15556 d!2725))

(declare-fun d!2737 () Bool)

(declare-fun res!11772 () Bool)

(declare-fun e!9513 () Bool)

(assert (=> d!2737 (=> res!11772 e!9513)))

(assert (=> d!2737 (= res!11772 ((_ is Nil!487) (toList!240 lm!238)))))

(assert (=> d!2737 (= (forall!123 (toList!240 lm!238) p!262) e!9513)))

(declare-fun b!15618 () Bool)

(declare-fun e!9514 () Bool)

(assert (=> b!15618 (= e!9513 e!9514)))

(declare-fun res!11773 () Bool)

(assert (=> b!15618 (=> (not res!11773) (not e!9514))))

(assert (=> b!15618 (= res!11773 (dynLambda!111 p!262 (h!1052 (toList!240 lm!238))))))

(declare-fun b!15619 () Bool)

(assert (=> b!15619 (= e!9514 (forall!123 (t!2928 (toList!240 lm!238)) p!262))))

(assert (= (and d!2737 (not res!11772)) b!15618))

(assert (= (and b!15618 res!11773) b!15619))

(declare-fun b_lambda!1057 () Bool)

(assert (=> (not b_lambda!1057) (not b!15618)))

(declare-fun t!2943 () Bool)

(declare-fun tb!439 () Bool)

(assert (=> (and start!2496 (= p!262 p!262) t!2943) tb!439))

(declare-fun result!771 () Bool)

(assert (=> tb!439 (= result!771 true)))

(assert (=> b!15618 t!2943))

(declare-fun b_and!979 () Bool)

(assert (= b_and!975 (and (=> t!2943 result!771) b_and!979)))

(declare-fun m!10585 () Bool)

(assert (=> b!15618 m!10585))

(declare-fun m!10587 () Bool)

(assert (=> b!15619 m!10587))

(assert (=> start!2496 d!2737))

(declare-fun d!2741 () Bool)

(declare-fun isStrictlySorted!146 (List!490) Bool)

(assert (=> d!2741 (= (inv!825 lm!238) (isStrictlySorted!146 (toList!240 lm!238)))))

(declare-fun bs!697 () Bool)

(assert (= bs!697 d!2741))

(declare-fun m!10589 () Bool)

(assert (=> bs!697 m!10589))

(assert (=> start!2496 d!2741))

(declare-fun b!15629 () Bool)

(declare-fun e!9520 () Bool)

(declare-fun tp_is_empty!797 () Bool)

(declare-fun tp!2672 () Bool)

(assert (=> b!15629 (= e!9520 (and tp_is_empty!797 tp!2672))))

(assert (=> b!15557 (= tp!2656 e!9520)))

(assert (= (and b!15557 ((_ is Cons!486) (toList!240 lm!238))) b!15629))

(declare-fun b_lambda!1063 () Bool)

(assert (= b_lambda!1057 (or (and start!2496 b_free!519) b_lambda!1063)))

(declare-fun b_lambda!1065 () Bool)

(assert (= b_lambda!1049 (or (and start!2496 b_free!519) b_lambda!1065)))

(check-sat b_and!979 (not d!2725) (not b!15629) (not b!15619) (not d!2693) (not b_lambda!1065) (not b!15594) tp_is_empty!797 (not b_lambda!1063) (not b!15600) (not b!15606) (not d!2741) (not b_next!519))
(check-sat b_and!979 (not b_next!519))

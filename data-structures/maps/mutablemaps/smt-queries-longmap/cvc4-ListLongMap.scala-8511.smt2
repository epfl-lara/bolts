; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103834 () Bool)

(assert start!103834)

(declare-fun b!1242624 () Bool)

(declare-fun res!828762 () Bool)

(declare-fun e!704467 () Bool)

(assert (=> b!1242624 (=> (not res!828762) (not e!704467))))

(declare-datatypes ((B!1896 0))(
  ( (B!1897 (val!15710 Int)) )
))
(declare-datatypes ((tuple2!20448 0))(
  ( (tuple2!20449 (_1!10234 (_ BitVec 64)) (_2!10234 B!1896)) )
))
(declare-datatypes ((List!27539 0))(
  ( (Nil!27536) (Cons!27535 (h!28744 tuple2!20448) (t!41012 List!27539)) )
))
(declare-fun l!644 () List!27539)

(declare-fun isStrictlySorted!764 (List!27539) Bool)

(assert (=> b!1242624 (= res!828762 (isStrictlySorted!764 l!644))))

(declare-fun b!1242627 () Bool)

(declare-fun e!704468 () Bool)

(declare-fun tp_is_empty!31295 () Bool)

(declare-fun tp!92772 () Bool)

(assert (=> b!1242627 (= e!704468 (and tp_is_empty!31295 tp!92772))))

(declare-fun b!1242625 () Bool)

(declare-fun res!828763 () Bool)

(assert (=> b!1242625 (=> (not res!828763) (not e!704467))))

(assert (=> b!1242625 (= res!828763 (not (is-Cons!27535 l!644)))))

(declare-fun res!828761 () Bool)

(assert (=> start!103834 (=> (not res!828761) (not e!704467))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103834 (= res!828761 (not (= key1!25 key2!15)))))

(assert (=> start!103834 e!704467))

(assert (=> start!103834 true))

(assert (=> start!103834 e!704468))

(assert (=> start!103834 tp_is_empty!31295))

(declare-fun v1!20 () B!1896)

(declare-fun b!1242626 () Bool)

(declare-fun insertStrictlySorted!442 (List!27539 (_ BitVec 64) B!1896) List!27539)

(declare-fun removeStrictlySorted!136 (List!27539 (_ BitVec 64)) List!27539)

(assert (=> b!1242626 (= e!704467 (not (= (insertStrictlySorted!442 (removeStrictlySorted!136 l!644 key2!15) key1!25 v1!20) (removeStrictlySorted!136 (insertStrictlySorted!442 l!644 key1!25 v1!20) key2!15))))))

(assert (= (and start!103834 res!828761) b!1242624))

(assert (= (and b!1242624 res!828762) b!1242625))

(assert (= (and b!1242625 res!828763) b!1242626))

(assert (= (and start!103834 (is-Cons!27535 l!644)) b!1242627))

(declare-fun m!1145365 () Bool)

(assert (=> b!1242624 m!1145365))

(declare-fun m!1145367 () Bool)

(assert (=> b!1242626 m!1145367))

(assert (=> b!1242626 m!1145367))

(declare-fun m!1145369 () Bool)

(assert (=> b!1242626 m!1145369))

(declare-fun m!1145371 () Bool)

(assert (=> b!1242626 m!1145371))

(assert (=> b!1242626 m!1145371))

(declare-fun m!1145373 () Bool)

(assert (=> b!1242626 m!1145373))

(push 1)

(assert (not b!1242626))

(assert (not b!1242624))

(assert (not b!1242627))

(assert tp_is_empty!31295)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!61366 () Bool)

(declare-fun call!61371 () List!27539)

(declare-fun call!61372 () List!27539)

(assert (=> bm!61366 (= call!61371 call!61372)))

(declare-fun b!1242690 () Bool)

(declare-fun e!704506 () List!27539)

(assert (=> b!1242690 (= e!704506 call!61372)))

(declare-fun c!121657 () Bool)

(declare-fun b!1242692 () Bool)

(assert (=> b!1242692 (= c!121657 (and (is-Cons!27535 (removeStrictlySorted!136 l!644 key2!15)) (bvsgt (_1!10234 (h!28744 (removeStrictlySorted!136 l!644 key2!15))) key1!25)))))

(declare-fun e!704500 () List!27539)

(declare-fun e!704499 () List!27539)

(assert (=> b!1242692 (= e!704500 e!704499)))

(declare-fun b!1242693 () Bool)

(declare-fun e!704501 () Bool)

(declare-fun lt!562214 () List!27539)

(declare-fun contains!7411 (List!27539 tuple2!20448) Bool)

(assert (=> b!1242693 (= e!704501 (contains!7411 lt!562214 (tuple2!20449 key1!25 v1!20)))))

(declare-fun b!1242695 () Bool)

(declare-fun call!61369 () List!27539)

(assert (=> b!1242695 (= e!704499 call!61369)))

(declare-fun e!704502 () List!27539)

(declare-fun b!1242696 () Bool)

(declare-fun c!121658 () Bool)

(assert (=> b!1242696 (= e!704502 (ite c!121658 (t!41012 (removeStrictlySorted!136 l!644 key2!15)) (ite c!121657 (Cons!27535 (h!28744 (removeStrictlySorted!136 l!644 key2!15)) (t!41012 (removeStrictlySorted!136 l!644 key2!15))) Nil!27536)))))

(declare-fun bm!61369 () Bool)

(declare-fun c!121655 () Bool)

(declare-fun $colon$colon!633 (List!27539 tuple2!20448) List!27539)

(assert (=> bm!61369 (= call!61372 ($colon$colon!633 e!704502 (ite c!121655 (h!28744 (removeStrictlySorted!136 l!644 key2!15)) (tuple2!20449 key1!25 v1!20))))))

(declare-fun c!121656 () Bool)

(assert (=> bm!61369 (= c!121656 c!121655)))

(declare-fun bm!61371 () Bool)

(assert (=> bm!61371 (= call!61369 call!61371)))

(declare-fun d!136804 () Bool)

(assert (=> d!136804 e!704501))

(declare-fun res!828778 () Bool)

(assert (=> d!136804 (=> (not res!828778) (not e!704501))))

(assert (=> d!136804 (= res!828778 (isStrictlySorted!764 lt!562214))))

(assert (=> d!136804 (= lt!562214 e!704506)))

(assert (=> d!136804 (= c!121655 (and (is-Cons!27535 (removeStrictlySorted!136 l!644 key2!15)) (bvslt (_1!10234 (h!28744 (removeStrictlySorted!136 l!644 key2!15))) key1!25)))))

(assert (=> d!136804 (isStrictlySorted!764 (removeStrictlySorted!136 l!644 key2!15))))

(assert (=> d!136804 (= (insertStrictlySorted!442 (removeStrictlySorted!136 l!644 key2!15) key1!25 v1!20) lt!562214)))

(declare-fun b!1242688 () Bool)

(assert (=> b!1242688 (= e!704500 call!61371)))

(declare-fun b!1242699 () Bool)

(assert (=> b!1242699 (= e!704502 (insertStrictlySorted!442 (t!41012 (removeStrictlySorted!136 l!644 key2!15)) key1!25 v1!20))))

(declare-fun b!1242701 () Bool)

(declare-fun res!828776 () Bool)

(assert (=> b!1242701 (=> (not res!828776) (not e!704501))))

(declare-fun containsKey!616 (List!27539 (_ BitVec 64)) Bool)

(assert (=> b!1242701 (= res!828776 (containsKey!616 lt!562214 key1!25))))

(declare-fun b!1242703 () Bool)

(assert (=> b!1242703 (= e!704506 e!704500)))

(assert (=> b!1242703 (= c!121658 (and (is-Cons!27535 (removeStrictlySorted!136 l!644 key2!15)) (= (_1!10234 (h!28744 (removeStrictlySorted!136 l!644 key2!15))) key1!25)))))

(declare-fun b!1242705 () Bool)

(assert (=> b!1242705 (= e!704499 call!61369)))

(assert (= (and d!136804 c!121655) b!1242690))

(assert (= (and d!136804 (not c!121655)) b!1242703))

(assert (= (and b!1242703 c!121658) b!1242688))

(assert (= (and b!1242703 (not c!121658)) b!1242692))

(assert (= (and b!1242692 c!121657) b!1242705))

(assert (= (and b!1242692 (not c!121657)) b!1242695))

(assert (= (or b!1242705 b!1242695) bm!61371))

(assert (= (or b!1242688 bm!61371) bm!61366))

(assert (= (or b!1242690 bm!61366) bm!61369))

(assert (= (and bm!61369 c!121656) b!1242699))

(assert (= (and bm!61369 (not c!121656)) b!1242696))

(assert (= (and d!136804 res!828778) b!1242701))

(assert (= (and b!1242701 res!828776) b!1242693))

(declare-fun m!1145375 () Bool)

(assert (=> d!136804 m!1145375))

(assert (=> d!136804 m!1145367))

(declare-fun m!1145379 () Bool)

(assert (=> d!136804 m!1145379))

(declare-fun m!1145385 () Bool)

(assert (=> b!1242693 m!1145385))

(declare-fun m!1145391 () Bool)

(assert (=> bm!61369 m!1145391))

(declare-fun m!1145393 () Bool)

(assert (=> b!1242699 m!1145393))

(declare-fun m!1145397 () Bool)

(assert (=> b!1242701 m!1145397))

(assert (=> b!1242626 d!136804))

(declare-fun b!1242751 () Bool)

(declare-fun e!704533 () Bool)

(declare-fun lt!562223 () List!27539)

(assert (=> b!1242751 (= e!704533 (not (containsKey!616 lt!562223 key2!15)))))

(declare-fun d!136811 () Bool)

(assert (=> d!136811 e!704533))

(declare-fun res!828789 () Bool)

(assert (=> d!136811 (=> (not res!828789) (not e!704533))))

(assert (=> d!136811 (= res!828789 (isStrictlySorted!764 lt!562223))))

(declare-fun e!704536 () List!27539)

(assert (=> d!136811 (= lt!562223 e!704536)))

(declare-fun c!121679 () Bool)

(assert (=> d!136811 (= c!121679 (and (is-Cons!27535 l!644) (= (_1!10234 (h!28744 l!644)) key2!15)))))

(assert (=> d!136811 (isStrictlySorted!764 l!644)))

(assert (=> d!136811 (= (removeStrictlySorted!136 l!644 key2!15) lt!562223)))

(declare-fun b!1242753 () Bool)

(assert (=> b!1242753 (= e!704536 (t!41012 l!644))))

(declare-fun b!1242755 () Bool)

(declare-fun e!704537 () List!27539)

(assert (=> b!1242755 (= e!704537 Nil!27536)))

(declare-fun b!1242756 () Bool)

(assert (=> b!1242756 (= e!704536 e!704537)))

(declare-fun c!121676 () Bool)

(assert (=> b!1242756 (= c!121676 (and (is-Cons!27535 l!644) (not (= (_1!10234 (h!28744 l!644)) key2!15))))))

(declare-fun b!1242757 () Bool)

(assert (=> b!1242757 (= e!704537 ($colon$colon!633 (removeStrictlySorted!136 (t!41012 l!644) key2!15) (h!28744 l!644)))))

(assert (= (and d!136811 c!121679) b!1242753))

(assert (= (and d!136811 (not c!121679)) b!1242756))

(assert (= (and b!1242756 c!121676) b!1242757))

(assert (= (and b!1242756 (not c!121676)) b!1242755))

(assert (= (and d!136811 res!828789) b!1242751))

(declare-fun m!1145412 () Bool)

(assert (=> b!1242751 m!1145412))

(declare-fun m!1145415 () Bool)

(assert (=> d!136811 m!1145415))

(assert (=> d!136811 m!1145365))

(declare-fun m!1145419 () Bool)

(assert (=> b!1242757 m!1145419))

(assert (=> b!1242757 m!1145419))

(declare-fun m!1145425 () Bool)

(assert (=> b!1242757 m!1145425))

(assert (=> b!1242626 d!136811))

(declare-fun b!1242764 () Bool)

(declare-fun e!704541 () Bool)

(declare-fun lt!562226 () List!27539)

(assert (=> b!1242764 (= e!704541 (not (containsKey!616 lt!562226 key2!15)))))

(declare-fun d!136816 () Bool)

(assert (=> d!136816 e!704541))

(declare-fun res!828792 () Bool)

(assert (=> d!136816 (=> (not res!828792) (not e!704541))))

(assert (=> d!136816 (= res!828792 (isStrictlySorted!764 lt!562226))))

(declare-fun e!704545 () List!27539)

(assert (=> d!136816 (= lt!562226 e!704545)))

(declare-fun c!121685 () Bool)

(assert (=> d!136816 (= c!121685 (and (is-Cons!27535 (insertStrictlySorted!442 l!644 key1!25 v1!20)) (= (_1!10234 (h!28744 (insertStrictlySorted!442 l!644 key1!25 v1!20))) key2!15)))))

(assert (=> d!136816 (isStrictlySorted!764 (insertStrictlySorted!442 l!644 key1!25 v1!20))))

(assert (=> d!136816 (= (removeStrictlySorted!136 (insertStrictlySorted!442 l!644 key1!25 v1!20) key2!15) lt!562226)))

(declare-fun b!1242766 () Bool)

(assert (=> b!1242766 (= e!704545 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)))))

(declare-fun b!1242768 () Bool)

(declare-fun e!704546 () List!27539)

(assert (=> b!1242768 (= e!704546 Nil!27536)))

(declare-fun b!1242770 () Bool)

(assert (=> b!1242770 (= e!704545 e!704546)))

(declare-fun c!121682 () Bool)

(assert (=> b!1242770 (= c!121682 (and (is-Cons!27535 (insertStrictlySorted!442 l!644 key1!25 v1!20)) (not (= (_1!10234 (h!28744 (insertStrictlySorted!442 l!644 key1!25 v1!20))) key2!15))))))

(declare-fun b!1242772 () Bool)

(assert (=> b!1242772 (= e!704546 ($colon$colon!633 (removeStrictlySorted!136 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)) key2!15) (h!28744 (insertStrictlySorted!442 l!644 key1!25 v1!20))))))

(assert (= (and d!136816 c!121685) b!1242766))

(assert (= (and d!136816 (not c!121685)) b!1242770))

(assert (= (and b!1242770 c!121682) b!1242772))

(assert (= (and b!1242770 (not c!121682)) b!1242768))

(assert (= (and d!136816 res!828792) b!1242764))

(declare-fun m!1145436 () Bool)

(assert (=> b!1242764 m!1145436))

(declare-fun m!1145439 () Bool)

(assert (=> d!136816 m!1145439))

(assert (=> d!136816 m!1145371))

(declare-fun m!1145443 () Bool)

(assert (=> d!136816 m!1145443))

(declare-fun m!1145445 () Bool)

(assert (=> b!1242772 m!1145445))

(assert (=> b!1242772 m!1145445))

(declare-fun m!1145451 () Bool)

(assert (=> b!1242772 m!1145451))

(assert (=> b!1242626 d!136816))

(declare-fun bm!61375 () Bool)

(declare-fun call!61380 () List!27539)

(declare-fun call!61381 () List!27539)

(assert (=> bm!61375 (= call!61380 call!61381)))

(declare-fun b!1242781 () Bool)

(declare-fun e!704557 () List!27539)

(assert (=> b!1242781 (= e!704557 call!61381)))

(declare-fun b!1242782 () Bool)

(declare-fun c!121693 () Bool)

(assert (=> b!1242782 (= c!121693 (and (is-Cons!27535 l!644) (bvsgt (_1!10234 (h!28744 l!644)) key1!25)))))

(declare-fun e!704551 () List!27539)

(declare-fun e!704550 () List!27539)

(assert (=> b!1242782 (= e!704551 e!704550)))

(declare-fun b!1242784 () Bool)

(declare-fun lt!562229 () List!27539)

(declare-fun e!704553 () Bool)

(assert (=> b!1242784 (= e!704553 (contains!7411 lt!562229 (tuple2!20449 key1!25 v1!20)))))

(declare-fun b!1242785 () Bool)

(declare-fun call!61378 () List!27539)

(assert (=> b!1242785 (= e!704550 call!61378)))

(declare-fun e!704555 () List!27539)

(declare-fun b!1242787 () Bool)

(declare-fun c!121694 () Bool)

(assert (=> b!1242787 (= e!704555 (ite c!121694 (t!41012 l!644) (ite c!121693 (Cons!27535 (h!28744 l!644) (t!41012 l!644)) Nil!27536)))))

(declare-fun c!121691 () Bool)

(declare-fun bm!61379 () Bool)

(assert (=> bm!61379 (= call!61381 ($colon$colon!633 e!704555 (ite c!121691 (h!28744 l!644) (tuple2!20449 key1!25 v1!20))))))

(declare-fun c!121692 () Bool)

(assert (=> bm!61379 (= c!121692 c!121691)))

(declare-fun bm!61380 () Bool)

(assert (=> bm!61380 (= call!61378 call!61380)))

(declare-fun d!136821 () Bool)

(assert (=> d!136821 e!704553))

(declare-fun res!828796 () Bool)

(assert (=> d!136821 (=> (not res!828796) (not e!704553))))

(assert (=> d!136821 (= res!828796 (isStrictlySorted!764 lt!562229))))

(assert (=> d!136821 (= lt!562229 e!704557)))

(assert (=> d!136821 (= c!121691 (and (is-Cons!27535 l!644) (bvslt (_1!10234 (h!28744 l!644)) key1!25)))))

(assert (=> d!136821 (isStrictlySorted!764 l!644)))

(assert (=> d!136821 (= (insertStrictlySorted!442 l!644 key1!25 v1!20) lt!562229)))

(declare-fun b!1242778 () Bool)

(assert (=> b!1242778 (= e!704551 call!61380)))

(declare-fun b!1242790 () Bool)

(assert (=> b!1242790 (= e!704555 (insertStrictlySorted!442 (t!41012 l!644) key1!25 v1!20))))

(declare-fun b!1242792 () Bool)

(declare-fun res!828794 () Bool)

(assert (=> b!1242792 (=> (not res!828794) (not e!704553))))

(assert (=> b!1242792 (= res!828794 (containsKey!616 lt!562229 key1!25))))

(declare-fun b!1242794 () Bool)

(assert (=> b!1242794 (= e!704557 e!704551)))

(assert (=> b!1242794 (= c!121694 (and (is-Cons!27535 l!644) (= (_1!10234 (h!28744 l!644)) key1!25)))))

(declare-fun b!1242796 () Bool)

(assert (=> b!1242796 (= e!704550 call!61378)))

(assert (= (and d!136821 c!121691) b!1242781))

(assert (= (and d!136821 (not c!121691)) b!1242794))

(assert (= (and b!1242794 c!121694) b!1242778))

(assert (= (and b!1242794 (not c!121694)) b!1242782))

(assert (= (and b!1242782 c!121693) b!1242796))

(assert (= (and b!1242782 (not c!121693)) b!1242785))

(assert (= (or b!1242796 b!1242785) bm!61380))

(assert (= (or b!1242778 bm!61380) bm!61375))

(assert (= (or b!1242781 bm!61375) bm!61379))

(assert (= (and bm!61379 c!121692) b!1242790))

(assert (= (and bm!61379 (not c!121692)) b!1242787))

(assert (= (and d!136821 res!828796) b!1242792))

(assert (= (and b!1242792 res!828794) b!1242784))

(declare-fun m!1145465 () Bool)

(assert (=> d!136821 m!1145465))

(assert (=> d!136821 m!1145365))

(declare-fun m!1145471 () Bool)

(assert (=> b!1242784 m!1145471))

(declare-fun m!1145477 () Bool)

(assert (=> bm!61379 m!1145477))

(declare-fun m!1145479 () Bool)

(assert (=> b!1242790 m!1145479))

(declare-fun m!1145483 () Bool)

(assert (=> b!1242792 m!1145483))

(assert (=> b!1242626 d!136821))

(declare-fun d!136829 () Bool)

(declare-fun res!828814 () Bool)

(declare-fun e!704579 () Bool)

(assert (=> d!136829 (=> res!828814 e!704579)))

(assert (=> d!136829 (= res!828814 (or (is-Nil!27536 l!644) (is-Nil!27536 (t!41012 l!644))))))

(assert (=> d!136829 (= (isStrictlySorted!764 l!644) e!704579)))

(declare-fun b!1242822 () Bool)

(declare-fun e!704580 () Bool)

(assert (=> b!1242822 (= e!704579 e!704580)))

(declare-fun res!828815 () Bool)

(assert (=> b!1242822 (=> (not res!828815) (not e!704580))))

(assert (=> b!1242822 (= res!828815 (bvslt (_1!10234 (h!28744 l!644)) (_1!10234 (h!28744 (t!41012 l!644)))))))

(declare-fun b!1242823 () Bool)

(assert (=> b!1242823 (= e!704580 (isStrictlySorted!764 (t!41012 l!644)))))

(assert (= (and d!136829 (not res!828814)) b!1242822))

(assert (= (and b!1242822 res!828815) b!1242823))

(declare-fun m!1145497 () Bool)

(assert (=> b!1242823 m!1145497))

(assert (=> b!1242624 d!136829))

(declare-fun b!1242838 () Bool)

(declare-fun e!704589 () Bool)

(declare-fun tp!92779 () Bool)

(assert (=> b!1242838 (= e!704589 (and tp_is_empty!31295 tp!92779))))

(assert (=> b!1242627 (= tp!92772 e!704589)))

(assert (= (and b!1242627 (is-Cons!27535 (t!41012 l!644))) b!1242838))

(push 1)

(assert tp_is_empty!31295)

(assert (not b!1242757))

(assert (not d!136816))

(assert (not b!1242790))

(assert (not b!1242699))

(assert (not b!1242701))

(assert (not d!136804))

(assert (not d!136821))

(assert (not b!1242784))

(assert (not b!1242792))

(assert (not b!1242693))

(assert (not b!1242823))

(assert (not d!136811))

(assert (not b!1242764))

(assert (not b!1242772))

(assert (not b!1242838))

(assert (not bm!61379))

(assert (not b!1242751))

(assert (not bm!61369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136917 () Bool)

(declare-fun res!828902 () Bool)

(declare-fun e!704698 () Bool)

(assert (=> d!136917 (=> res!828902 e!704698)))

(assert (=> d!136917 (= res!828902 (and (is-Cons!27535 lt!562229) (= (_1!10234 (h!28744 lt!562229)) key1!25)))))

(assert (=> d!136917 (= (containsKey!616 lt!562229 key1!25) e!704698)))

(declare-fun b!1242975 () Bool)

(declare-fun e!704699 () Bool)

(assert (=> b!1242975 (= e!704698 e!704699)))

(declare-fun res!828903 () Bool)

(assert (=> b!1242975 (=> (not res!828903) (not e!704699))))

(assert (=> b!1242975 (= res!828903 (and (or (not (is-Cons!27535 lt!562229)) (bvsle (_1!10234 (h!28744 lt!562229)) key1!25)) (is-Cons!27535 lt!562229) (bvslt (_1!10234 (h!28744 lt!562229)) key1!25)))))

(declare-fun b!1242976 () Bool)

(assert (=> b!1242976 (= e!704699 (containsKey!616 (t!41012 lt!562229) key1!25))))

(assert (= (and d!136917 (not res!828902)) b!1242975))

(assert (= (and b!1242975 res!828903) b!1242976))

(declare-fun m!1145641 () Bool)

(assert (=> b!1242976 m!1145641))

(assert (=> b!1242792 d!136917))

(declare-fun d!136919 () Bool)

(declare-fun res!828904 () Bool)

(declare-fun e!704700 () Bool)

(assert (=> d!136919 (=> res!828904 e!704700)))

(assert (=> d!136919 (= res!828904 (or (is-Nil!27536 lt!562229) (is-Nil!27536 (t!41012 lt!562229))))))

(assert (=> d!136919 (= (isStrictlySorted!764 lt!562229) e!704700)))

(declare-fun b!1242977 () Bool)

(declare-fun e!704701 () Bool)

(assert (=> b!1242977 (= e!704700 e!704701)))

(declare-fun res!828905 () Bool)

(assert (=> b!1242977 (=> (not res!828905) (not e!704701))))

(assert (=> b!1242977 (= res!828905 (bvslt (_1!10234 (h!28744 lt!562229)) (_1!10234 (h!28744 (t!41012 lt!562229)))))))

(declare-fun b!1242978 () Bool)

(assert (=> b!1242978 (= e!704701 (isStrictlySorted!764 (t!41012 lt!562229)))))

(assert (= (and d!136919 (not res!828904)) b!1242977))

(assert (= (and b!1242977 res!828905) b!1242978))

(declare-fun m!1145643 () Bool)

(assert (=> b!1242978 m!1145643))

(assert (=> d!136821 d!136919))

(assert (=> d!136821 d!136829))

(declare-fun d!136921 () Bool)

(assert (=> d!136921 (= ($colon$colon!633 e!704502 (ite c!121655 (h!28744 (removeStrictlySorted!136 l!644 key2!15)) (tuple2!20449 key1!25 v1!20))) (Cons!27535 (ite c!121655 (h!28744 (removeStrictlySorted!136 l!644 key2!15)) (tuple2!20449 key1!25 v1!20)) e!704502))))

(assert (=> bm!61369 d!136921))

(declare-fun lt!562250 () Bool)

(declare-fun d!136923 () Bool)

(declare-fun content!613 (List!27539) (Set tuple2!20448))

(assert (=> d!136923 (= lt!562250 (member (tuple2!20449 key1!25 v1!20) (content!613 lt!562229)))))

(declare-fun e!704707 () Bool)

(assert (=> d!136923 (= lt!562250 e!704707)))

(declare-fun res!828910 () Bool)

(assert (=> d!136923 (=> (not res!828910) (not e!704707))))

(assert (=> d!136923 (= res!828910 (is-Cons!27535 lt!562229))))

(assert (=> d!136923 (= (contains!7411 lt!562229 (tuple2!20449 key1!25 v1!20)) lt!562250)))

(declare-fun b!1242983 () Bool)

(declare-fun e!704706 () Bool)

(assert (=> b!1242983 (= e!704707 e!704706)))

(declare-fun res!828911 () Bool)

(assert (=> b!1242983 (=> res!828911 e!704706)))

(assert (=> b!1242983 (= res!828911 (= (h!28744 lt!562229) (tuple2!20449 key1!25 v1!20)))))

(declare-fun b!1242984 () Bool)

(assert (=> b!1242984 (= e!704706 (contains!7411 (t!41012 lt!562229) (tuple2!20449 key1!25 v1!20)))))

(assert (= (and d!136923 res!828910) b!1242983))

(assert (= (and b!1242983 (not res!828911)) b!1242984))

(declare-fun m!1145645 () Bool)

(assert (=> d!136923 m!1145645))

(declare-fun m!1145647 () Bool)

(assert (=> d!136923 m!1145647))

(declare-fun m!1145649 () Bool)

(assert (=> b!1242984 m!1145649))

(assert (=> b!1242784 d!136923))

(declare-fun d!136925 () Bool)

(assert (=> d!136925 (= ($colon$colon!633 (removeStrictlySorted!136 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)) key2!15) (h!28744 (insertStrictlySorted!442 l!644 key1!25 v1!20))) (Cons!27535 (h!28744 (insertStrictlySorted!442 l!644 key1!25 v1!20)) (removeStrictlySorted!136 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)) key2!15)))))

(assert (=> b!1242772 d!136925))

(declare-fun b!1242985 () Bool)

(declare-fun e!704708 () Bool)

(declare-fun lt!562251 () List!27539)

(assert (=> b!1242985 (= e!704708 (not (containsKey!616 lt!562251 key2!15)))))

(declare-fun d!136927 () Bool)

(assert (=> d!136927 e!704708))

(declare-fun res!828912 () Bool)

(assert (=> d!136927 (=> (not res!828912) (not e!704708))))

(assert (=> d!136927 (= res!828912 (isStrictlySorted!764 lt!562251))))

(declare-fun e!704709 () List!27539)

(assert (=> d!136927 (= lt!562251 e!704709)))

(declare-fun c!121725 () Bool)

(assert (=> d!136927 (= c!121725 (and (is-Cons!27535 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20))) (= (_1!10234 (h!28744 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)))) key2!15)))))

(assert (=> d!136927 (isStrictlySorted!764 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)))))

(assert (=> d!136927 (= (removeStrictlySorted!136 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)) key2!15) lt!562251)))

(declare-fun b!1242986 () Bool)

(assert (=> b!1242986 (= e!704709 (t!41012 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20))))))

(declare-fun b!1242987 () Bool)

(declare-fun e!704710 () List!27539)

(assert (=> b!1242987 (= e!704710 Nil!27536)))

(declare-fun b!1242988 () Bool)

(assert (=> b!1242988 (= e!704709 e!704710)))

(declare-fun c!121724 () Bool)

(assert (=> b!1242988 (= c!121724 (and (is-Cons!27535 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20))) (not (= (_1!10234 (h!28744 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)))) key2!15))))))

(declare-fun b!1242989 () Bool)

(assert (=> b!1242989 (= e!704710 ($colon$colon!633 (removeStrictlySorted!136 (t!41012 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20))) key2!15) (h!28744 (t!41012 (insertStrictlySorted!442 l!644 key1!25 v1!20)))))))

(assert (= (and d!136927 c!121725) b!1242986))

(assert (= (and d!136927 (not c!121725)) b!1242988))

(assert (= (and b!1242988 c!121724) b!1242989))

(assert (= (and b!1242988 (not c!121724)) b!1242987))

(assert (= (and d!136927 res!828912) b!1242985))

(declare-fun m!1145651 () Bool)

(assert (=> b!1242985 m!1145651))

(declare-fun m!1145653 () Bool)

(assert (=> d!136927 m!1145653))

(declare-fun m!1145655 () Bool)

(assert (=> d!136927 m!1145655))

(declare-fun m!1145657 () Bool)

(assert (=> b!1242989 m!1145657))

(assert (=> b!1242989 m!1145657))

(declare-fun m!1145659 () Bool)

(assert (=> b!1242989 m!1145659))

(assert (=> b!1242772 d!136927))

(declare-fun d!136929 () Bool)

(declare-fun res!828913 () Bool)

(declare-fun e!704711 () Bool)

(assert (=> d!136929 (=> res!828913 e!704711)))

(assert (=> d!136929 (= res!828913 (or (is-Nil!27536 (t!41012 l!644)) (is-Nil!27536 (t!41012 (t!41012 l!644)))))))

(assert (=> d!136929 (= (isStrictlySorted!764 (t!41012 l!644)) e!704711)))

(declare-fun b!1242990 () Bool)

(declare-fun e!704712 () Bool)

(assert (=> b!1242990 (= e!704711 e!704712)))

(declare-fun res!828914 () Bool)

(assert (=> b!1242990 (=> (not res!828914) (not e!704712))))

(assert (=> b!1242990 (= res!828914 (bvslt (_1!10234 (h!28744 (t!41012 l!644))) (_1!10234 (h!28744 (t!41012 (t!41012 l!644))))))))

(declare-fun b!1242991 () Bool)

(assert (=> b!1242991 (= e!704712 (isStrictlySorted!764 (t!41012 (t!41012 l!644))))))

(assert (= (and d!136929 (not res!828913)) b!1242990))

(assert (= (and b!1242990 res!828914) b!1242991))

(declare-fun m!1145661 () Bool)

(assert (=> b!1242991 m!1145661))

(assert (=> b!1242823 d!136929))

(declare-fun bm!61396 () Bool)

(declare-fun call!61400 () List!27539)

(declare-fun call!61401 () List!27539)

(assert (=> bm!61396 (= call!61400 call!61401)))

(declare-fun b!1242993 () Bool)

(declare-fun e!704717 () List!27539)

(assert (=> b!1242993 (= e!704717 call!61401)))

(declare-fun b!1242994 () Bool)

(declare-fun c!121728 () Bool)

(assert (=> b!1242994 (= c!121728 (and (is-Cons!27535 (t!41012 l!644)) (bvsgt (_1!10234 (h!28744 (t!41012 l!644))) key1!25)))))

(declare-fun e!704714 () List!27539)

(declare-fun e!704713 () List!27539)

(assert (=> b!1242994 (= e!704714 e!704713)))

(declare-fun e!704715 () Bool)

(declare-fun b!1242995 () Bool)

(declare-fun lt!562252 () List!27539)

(assert (=> b!1242995 (= e!704715 (contains!7411 lt!562252 (tuple2!20449 key1!25 v1!20)))))

(declare-fun b!1242996 () Bool)

(declare-fun call!61399 () List!27539)


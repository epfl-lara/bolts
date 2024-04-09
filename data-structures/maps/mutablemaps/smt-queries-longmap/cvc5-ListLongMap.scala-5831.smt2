; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75278 () Bool)

(assert start!75278)

(declare-fun res!601880 () Bool)

(declare-fun e!493487 () Bool)

(assert (=> start!75278 (=> (not res!601880) (not e!493487))))

(declare-datatypes ((B!1304 0))(
  ( (B!1305 (val!8958 Int)) )
))
(declare-datatypes ((tuple2!11936 0))(
  ( (tuple2!11937 (_1!5978 (_ BitVec 64)) (_2!5978 B!1304)) )
))
(declare-datatypes ((List!17758 0))(
  ( (Nil!17755) (Cons!17754 (h!18885 tuple2!11936) (t!25046 List!17758)) )
))
(declare-fun l!906 () List!17758)

(declare-fun isStrictlySorted!488 (List!17758) Bool)

(assert (=> start!75278 (= res!601880 (isStrictlySorted!488 l!906))))

(assert (=> start!75278 e!493487))

(declare-fun e!493486 () Bool)

(assert (=> start!75278 e!493486))

(assert (=> start!75278 true))

(declare-fun tp_is_empty!17815 () Bool)

(assert (=> start!75278 tp_is_empty!17815))

(declare-fun b!886442 () Bool)

(declare-fun res!601879 () Bool)

(assert (=> b!886442 (=> (not res!601879) (not e!493487))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!886442 (= res!601879 (or (not (is-Cons!17754 l!906)) (bvsge (_1!5978 (h!18885 l!906)) key1!49)))))

(declare-fun v2!16 () B!1304)

(declare-fun b!886443 () Bool)

(declare-fun v1!38 () B!1304)

(declare-fun insertStrictlySorted!300 (List!17758 (_ BitVec 64) B!1304) List!17758)

(assert (=> b!886443 (= e!493487 (not (= (insertStrictlySorted!300 (insertStrictlySorted!300 l!906 key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!300 l!906 key1!49 v2!16))))))

(declare-fun b!886444 () Bool)

(declare-fun tp!54387 () Bool)

(assert (=> b!886444 (= e!493486 (and tp_is_empty!17815 tp!54387))))

(assert (= (and start!75278 res!601880) b!886442))

(assert (= (and b!886442 res!601879) b!886443))

(assert (= (and start!75278 (is-Cons!17754 l!906)) b!886444))

(declare-fun m!826439 () Bool)

(assert (=> start!75278 m!826439))

(declare-fun m!826441 () Bool)

(assert (=> b!886443 m!826441))

(assert (=> b!886443 m!826441))

(declare-fun m!826443 () Bool)

(assert (=> b!886443 m!826443))

(declare-fun m!826445 () Bool)

(assert (=> b!886443 m!826445))

(push 1)

(assert (not start!75278))

(assert (not b!886443))

(assert (not b!886444))

(assert tp_is_empty!17815)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109669 () Bool)

(declare-fun res!601903 () Bool)

(declare-fun e!493510 () Bool)

(assert (=> d!109669 (=> res!601903 e!493510)))

(assert (=> d!109669 (= res!601903 (or (is-Nil!17755 l!906) (is-Nil!17755 (t!25046 l!906))))))

(assert (=> d!109669 (= (isStrictlySorted!488 l!906) e!493510)))

(declare-fun b!886473 () Bool)

(declare-fun e!493511 () Bool)

(assert (=> b!886473 (= e!493510 e!493511)))

(declare-fun res!601904 () Bool)

(assert (=> b!886473 (=> (not res!601904) (not e!493511))))

(assert (=> b!886473 (= res!601904 (bvslt (_1!5978 (h!18885 l!906)) (_1!5978 (h!18885 (t!25046 l!906)))))))

(declare-fun b!886474 () Bool)

(assert (=> b!886474 (= e!493511 (isStrictlySorted!488 (t!25046 l!906)))))

(assert (= (and d!109669 (not res!601903)) b!886473))

(assert (= (and b!886473 res!601904) b!886474))

(declare-fun m!826465 () Bool)

(assert (=> b!886474 m!826465))

(assert (=> start!75278 d!109669))

(declare-fun b!886577 () Bool)

(declare-fun e!493570 () List!17758)

(declare-fun call!39287 () List!17758)

(assert (=> b!886577 (= e!493570 call!39287)))

(declare-fun call!39289 () List!17758)

(declare-fun bm!39284 () Bool)

(declare-fun e!493566 () List!17758)

(declare-fun c!93479 () Bool)

(declare-fun $colon$colon!551 (List!17758 tuple2!11936) List!17758)

(assert (=> bm!39284 (= call!39289 ($colon$colon!551 e!493566 (ite c!93479 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (tuple2!11937 key1!49 v2!16))))))

(declare-fun c!93477 () Bool)

(assert (=> bm!39284 (= c!93477 c!93479)))

(declare-fun bm!39285 () Bool)

(declare-fun call!39288 () List!17758)

(assert (=> bm!39285 (= call!39288 call!39287)))

(declare-fun b!886578 () Bool)

(declare-fun c!93478 () Bool)

(assert (=> b!886578 (= c!93478 (and (is-Cons!17754 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (bvsgt (_1!5978 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun e!493567 () List!17758)

(assert (=> b!886578 (= e!493570 e!493567)))

(declare-fun bm!39286 () Bool)

(assert (=> bm!39286 (= call!39287 call!39289)))

(declare-fun b!886579 () Bool)

(declare-fun res!601929 () Bool)

(declare-fun e!493568 () Bool)

(assert (=> b!886579 (=> (not res!601929) (not e!493568))))

(declare-fun lt!401099 () List!17758)

(declare-fun containsKey!416 (List!17758 (_ BitVec 64)) Bool)

(assert (=> b!886579 (= res!601929 (containsKey!416 lt!401099 key1!49))))

(declare-fun b!886580 () Bool)

(declare-fun e!493569 () List!17758)

(assert (=> b!886580 (= e!493569 e!493570)))

(declare-fun c!93480 () Bool)

(assert (=> b!886580 (= c!93480 (and (is-Cons!17754 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (= (_1!5978 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun b!886581 () Bool)

(assert (=> b!886581 (= e!493567 call!39288)))

(declare-fun b!886582 () Bool)

(assert (=> b!886582 (= e!493566 (ite c!93480 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (ite c!93478 (Cons!17754 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) Nil!17755)))))

(declare-fun b!886583 () Bool)

(assert (=> b!886583 (= e!493566 (insertStrictlySorted!300 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!886584 () Bool)

(declare-fun contains!4296 (List!17758 tuple2!11936) Bool)

(assert (=> b!886584 (= e!493568 (contains!4296 lt!401099 (tuple2!11937 key1!49 v2!16)))))

(declare-fun d!109675 () Bool)

(assert (=> d!109675 e!493568))

(declare-fun res!601930 () Bool)

(assert (=> d!109675 (=> (not res!601930) (not e!493568))))

(assert (=> d!109675 (= res!601930 (isStrictlySorted!488 lt!401099))))

(assert (=> d!109675 (= lt!401099 e!493569)))

(assert (=> d!109675 (= c!93479 (and (is-Cons!17754 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (bvslt (_1!5978 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> d!109675 (isStrictlySorted!488 (insertStrictlySorted!300 l!906 key1!49 v1!38))))

(assert (=> d!109675 (= (insertStrictlySorted!300 (insertStrictlySorted!300 l!906 key1!49 v1!38) key1!49 v2!16) lt!401099)))

(declare-fun b!886585 () Bool)

(assert (=> b!886585 (= e!493569 call!39289)))

(declare-fun b!886586 () Bool)

(assert (=> b!886586 (= e!493567 call!39288)))

(assert (= (and d!109675 c!93479) b!886585))

(assert (= (and d!109675 (not c!93479)) b!886580))

(assert (= (and b!886580 c!93480) b!886577))

(assert (= (and b!886580 (not c!93480)) b!886578))

(assert (= (and b!886578 c!93478) b!886581))

(assert (= (and b!886578 (not c!93478)) b!886586))

(assert (= (or b!886581 b!886586) bm!39285))

(assert (= (or b!886577 bm!39285) bm!39286))

(assert (= (or b!886585 bm!39286) bm!39284))

(assert (= (and bm!39284 c!93477) b!886583))

(assert (= (and bm!39284 (not c!93477)) b!886582))

(assert (= (and d!109675 res!601930) b!886579))

(assert (= (and b!886579 res!601929) b!886584))

(declare-fun m!826511 () Bool)

(assert (=> d!109675 m!826511))

(assert (=> d!109675 m!826441))

(declare-fun m!826513 () Bool)

(assert (=> d!109675 m!826513))

(declare-fun m!826515 () Bool)

(assert (=> bm!39284 m!826515))

(declare-fun m!826517 () Bool)

(assert (=> b!886584 m!826517))

(declare-fun m!826519 () Bool)

(assert (=> b!886583 m!826519))

(declare-fun m!826521 () Bool)

(assert (=> b!886579 m!826521))

(assert (=> b!886443 d!109675))

(declare-fun b!886601 () Bool)

(declare-fun e!493582 () List!17758)

(declare-fun call!39293 () List!17758)

(assert (=> b!886601 (= e!493582 call!39293)))

(declare-fun bm!39290 () Bool)

(declare-fun e!493578 () List!17758)

(declare-fun c!93487 () Bool)

(declare-fun call!39295 () List!17758)

(assert (=> bm!39290 (= call!39295 ($colon$colon!551 e!493578 (ite c!93487 (h!18885 l!906) (tuple2!11937 key1!49 v1!38))))))

(declare-fun c!93485 () Bool)

(assert (=> bm!39290 (= c!93485 c!93487)))

(declare-fun bm!39291 () Bool)

(declare-fun call!39294 () List!17758)

(assert (=> bm!39291 (= call!39294 call!39293)))

(declare-fun b!886602 () Bool)

(declare-fun c!93486 () Bool)

(assert (=> b!886602 (= c!93486 (and (is-Cons!17754 l!906) (bvsgt (_1!5978 (h!18885 l!906)) key1!49)))))

(declare-fun e!493579 () List!17758)

(assert (=> b!886602 (= e!493582 e!493579)))

(declare-fun bm!39292 () Bool)

(assert (=> bm!39292 (= call!39293 call!39295)))

(declare-fun b!886603 () Bool)

(declare-fun res!601935 () Bool)

(declare-fun e!493580 () Bool)

(assert (=> b!886603 (=> (not res!601935) (not e!493580))))

(declare-fun lt!401101 () List!17758)

(assert (=> b!886603 (= res!601935 (containsKey!416 lt!401101 key1!49))))

(declare-fun b!886604 () Bool)

(declare-fun e!493581 () List!17758)

(assert (=> b!886604 (= e!493581 e!493582)))

(declare-fun c!93488 () Bool)

(assert (=> b!886604 (= c!93488 (and (is-Cons!17754 l!906) (= (_1!5978 (h!18885 l!906)) key1!49)))))

(declare-fun b!886605 () Bool)

(assert (=> b!886605 (= e!493579 call!39294)))

(declare-fun b!886606 () Bool)

(assert (=> b!886606 (= e!493578 (ite c!93488 (t!25046 l!906) (ite c!93486 (Cons!17754 (h!18885 l!906) (t!25046 l!906)) Nil!17755)))))

(declare-fun b!886607 () Bool)

(assert (=> b!886607 (= e!493578 (insertStrictlySorted!300 (t!25046 l!906) key1!49 v1!38))))

(declare-fun b!886608 () Bool)

(assert (=> b!886608 (= e!493580 (contains!4296 lt!401101 (tuple2!11937 key1!49 v1!38)))))

(declare-fun d!109685 () Bool)

(assert (=> d!109685 e!493580))

(declare-fun res!601936 () Bool)

(assert (=> d!109685 (=> (not res!601936) (not e!493580))))

(assert (=> d!109685 (= res!601936 (isStrictlySorted!488 lt!401101))))

(assert (=> d!109685 (= lt!401101 e!493581)))

(assert (=> d!109685 (= c!93487 (and (is-Cons!17754 l!906) (bvslt (_1!5978 (h!18885 l!906)) key1!49)))))

(assert (=> d!109685 (isStrictlySorted!488 l!906)))

(assert (=> d!109685 (= (insertStrictlySorted!300 l!906 key1!49 v1!38) lt!401101)))

(declare-fun b!886609 () Bool)

(assert (=> b!886609 (= e!493581 call!39295)))

(declare-fun b!886610 () Bool)

(assert (=> b!886610 (= e!493579 call!39294)))

(assert (= (and d!109685 c!93487) b!886609))

(assert (= (and d!109685 (not c!93487)) b!886604))

(assert (= (and b!886604 c!93488) b!886601))

(assert (= (and b!886604 (not c!93488)) b!886602))

(assert (= (and b!886602 c!93486) b!886605))

(assert (= (and b!886602 (not c!93486)) b!886610))

(assert (= (or b!886605 b!886610) bm!39291))

(assert (= (or b!886601 bm!39291) bm!39292))

(assert (= (or b!886609 bm!39292) bm!39290))

(assert (= (and bm!39290 c!93485) b!886607))

(assert (= (and bm!39290 (not c!93485)) b!886606))

(assert (= (and d!109685 res!601936) b!886603))

(assert (= (and b!886603 res!601935) b!886608))

(declare-fun m!826535 () Bool)

(assert (=> d!109685 m!826535))

(assert (=> d!109685 m!826439))

(declare-fun m!826537 () Bool)

(assert (=> bm!39290 m!826537))

(declare-fun m!826539 () Bool)

(assert (=> b!886608 m!826539))

(declare-fun m!826541 () Bool)

(assert (=> b!886607 m!826541))

(declare-fun m!826543 () Bool)

(assert (=> b!886603 m!826543))

(assert (=> b!886443 d!109685))

(declare-fun b!886626 () Bool)

(declare-fun e!493595 () List!17758)

(declare-fun call!39299 () List!17758)

(assert (=> b!886626 (= e!493595 call!39299)))

(declare-fun c!93495 () Bool)

(declare-fun e!493591 () List!17758)

(declare-fun bm!39296 () Bool)

(declare-fun call!39301 () List!17758)

(assert (=> bm!39296 (= call!39301 ($colon$colon!551 e!493591 (ite c!93495 (h!18885 l!906) (tuple2!11937 key1!49 v2!16))))))

(declare-fun c!93493 () Bool)

(assert (=> bm!39296 (= c!93493 c!93495)))

(declare-fun bm!39297 () Bool)

(declare-fun call!39300 () List!17758)

(assert (=> bm!39297 (= call!39300 call!39299)))

(declare-fun b!886627 () Bool)

(declare-fun c!93494 () Bool)

(assert (=> b!886627 (= c!93494 (and (is-Cons!17754 l!906) (bvsgt (_1!5978 (h!18885 l!906)) key1!49)))))

(declare-fun e!493592 () List!17758)

(assert (=> b!886627 (= e!493595 e!493592)))

(declare-fun bm!39298 () Bool)

(assert (=> bm!39298 (= call!39299 call!39301)))

(declare-fun b!886628 () Bool)

(declare-fun res!601939 () Bool)

(declare-fun e!493593 () Bool)

(assert (=> b!886628 (=> (not res!601939) (not e!493593))))

(declare-fun lt!401103 () List!17758)

(assert (=> b!886628 (= res!601939 (containsKey!416 lt!401103 key1!49))))

(declare-fun b!886629 () Bool)

(declare-fun e!493594 () List!17758)

(assert (=> b!886629 (= e!493594 e!493595)))

(declare-fun c!93496 () Bool)

(assert (=> b!886629 (= c!93496 (and (is-Cons!17754 l!906) (= (_1!5978 (h!18885 l!906)) key1!49)))))

(declare-fun b!886630 () Bool)

(assert (=> b!886630 (= e!493592 call!39300)))

(declare-fun b!886631 () Bool)

(assert (=> b!886631 (= e!493591 (ite c!93496 (t!25046 l!906) (ite c!93494 (Cons!17754 (h!18885 l!906) (t!25046 l!906)) Nil!17755)))))

(declare-fun b!886632 () Bool)

(assert (=> b!886632 (= e!493591 (insertStrictlySorted!300 (t!25046 l!906) key1!49 v2!16))))

(declare-fun b!886633 () Bool)

(assert (=> b!886633 (= e!493593 (contains!4296 lt!401103 (tuple2!11937 key1!49 v2!16)))))

(declare-fun d!109689 () Bool)

(assert (=> d!109689 e!493593))

(declare-fun res!601940 () Bool)

(assert (=> d!109689 (=> (not res!601940) (not e!493593))))

(assert (=> d!109689 (= res!601940 (isStrictlySorted!488 lt!401103))))

(assert (=> d!109689 (= lt!401103 e!493594)))

(assert (=> d!109689 (= c!93495 (and (is-Cons!17754 l!906) (bvslt (_1!5978 (h!18885 l!906)) key1!49)))))

(assert (=> d!109689 (isStrictlySorted!488 l!906)))

(assert (=> d!109689 (= (insertStrictlySorted!300 l!906 key1!49 v2!16) lt!401103)))

(declare-fun b!886634 () Bool)

(assert (=> b!886634 (= e!493594 call!39301)))

(declare-fun b!886635 () Bool)

(assert (=> b!886635 (= e!493592 call!39300)))

(assert (= (and d!109689 c!93495) b!886634))

(assert (= (and d!109689 (not c!93495)) b!886629))

(assert (= (and b!886629 c!93496) b!886626))

(assert (= (and b!886629 (not c!93496)) b!886627))

(assert (= (and b!886627 c!93494) b!886630))

(assert (= (and b!886627 (not c!93494)) b!886635))

(assert (= (or b!886630 b!886635) bm!39297))

(assert (= (or b!886626 bm!39297) bm!39298))

(assert (= (or b!886634 bm!39298) bm!39296))

(assert (= (and bm!39296 c!93493) b!886632))

(assert (= (and bm!39296 (not c!93493)) b!886631))

(assert (= (and d!109689 res!601940) b!886628))

(assert (= (and b!886628 res!601939) b!886633))

(declare-fun m!826555 () Bool)

(assert (=> d!109689 m!826555))

(assert (=> d!109689 m!826439))

(declare-fun m!826557 () Bool)

(assert (=> bm!39296 m!826557))

(declare-fun m!826559 () Bool)

(assert (=> b!886633 m!826559))

(declare-fun m!826561 () Bool)

(assert (=> b!886632 m!826561))

(declare-fun m!826563 () Bool)

(assert (=> b!886628 m!826563))

(assert (=> b!886443 d!109689))

(declare-fun b!886645 () Bool)

(declare-fun e!493601 () Bool)

(declare-fun tp!54402 () Bool)

(assert (=> b!886645 (= e!493601 (and tp_is_empty!17815 tp!54402))))

(assert (=> b!886444 (= tp!54387 e!493601)))

(assert (= (and b!886444 (is-Cons!17754 (t!25046 l!906))) b!886645))

(push 1)

(assert (not d!109689))

(assert (not b!886628))

(assert tp_is_empty!17815)

(assert (not b!886632))

(assert (not b!886584))

(assert (not b!886474))

(assert (not b!886579))

(assert (not bm!39290))

(assert (not b!886583))

(assert (not b!886603))

(assert (not d!109675))

(assert (not bm!39284))

(assert (not b!886645))

(assert (not bm!39296))

(assert (not b!886633))

(assert (not b!886608))

(assert (not d!109685))

(assert (not b!886607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109725 () Bool)

(declare-fun res!601981 () Bool)

(declare-fun e!493652 () Bool)

(assert (=> d!109725 (=> res!601981 e!493652)))

(assert (=> d!109725 (= res!601981 (and (is-Cons!17754 lt!401099) (= (_1!5978 (h!18885 lt!401099)) key1!49)))))

(assert (=> d!109725 (= (containsKey!416 lt!401099 key1!49) e!493652)))

(declare-fun b!886711 () Bool)

(declare-fun e!493653 () Bool)

(assert (=> b!886711 (= e!493652 e!493653)))

(declare-fun res!601982 () Bool)

(assert (=> b!886711 (=> (not res!601982) (not e!493653))))

(assert (=> b!886711 (= res!601982 (and (or (not (is-Cons!17754 lt!401099)) (bvsle (_1!5978 (h!18885 lt!401099)) key1!49)) (is-Cons!17754 lt!401099) (bvslt (_1!5978 (h!18885 lt!401099)) key1!49)))))

(declare-fun b!886712 () Bool)

(assert (=> b!886712 (= e!493653 (containsKey!416 (t!25046 lt!401099) key1!49))))

(assert (= (and d!109725 (not res!601981)) b!886711))

(assert (= (and b!886711 res!601982) b!886712))

(declare-fun m!826629 () Bool)

(assert (=> b!886712 m!826629))

(assert (=> b!886579 d!109725))

(declare-fun d!109727 () Bool)

(declare-fun res!601983 () Bool)

(declare-fun e!493654 () Bool)

(assert (=> d!109727 (=> res!601983 e!493654)))

(assert (=> d!109727 (= res!601983 (or (is-Nil!17755 (t!25046 l!906)) (is-Nil!17755 (t!25046 (t!25046 l!906)))))))

(assert (=> d!109727 (= (isStrictlySorted!488 (t!25046 l!906)) e!493654)))

(declare-fun b!886713 () Bool)

(declare-fun e!493655 () Bool)

(assert (=> b!886713 (= e!493654 e!493655)))

(declare-fun res!601984 () Bool)

(assert (=> b!886713 (=> (not res!601984) (not e!493655))))

(assert (=> b!886713 (= res!601984 (bvslt (_1!5978 (h!18885 (t!25046 l!906))) (_1!5978 (h!18885 (t!25046 (t!25046 l!906))))))))

(declare-fun b!886714 () Bool)

(assert (=> b!886714 (= e!493655 (isStrictlySorted!488 (t!25046 (t!25046 l!906))))))

(assert (= (and d!109727 (not res!601983)) b!886713))

(assert (= (and b!886713 res!601984) b!886714))

(declare-fun m!826631 () Bool)

(assert (=> b!886714 m!826631))

(assert (=> b!886474 d!109727))

(declare-fun d!109729 () Bool)

(declare-fun res!601985 () Bool)

(declare-fun e!493656 () Bool)

(assert (=> d!109729 (=> res!601985 e!493656)))

(assert (=> d!109729 (= res!601985 (and (is-Cons!17754 lt!401101) (= (_1!5978 (h!18885 lt!401101)) key1!49)))))

(assert (=> d!109729 (= (containsKey!416 lt!401101 key1!49) e!493656)))

(declare-fun b!886715 () Bool)

(declare-fun e!493657 () Bool)

(assert (=> b!886715 (= e!493656 e!493657)))

(declare-fun res!601986 () Bool)

(assert (=> b!886715 (=> (not res!601986) (not e!493657))))

(assert (=> b!886715 (= res!601986 (and (or (not (is-Cons!17754 lt!401101)) (bvsle (_1!5978 (h!18885 lt!401101)) key1!49)) (is-Cons!17754 lt!401101) (bvslt (_1!5978 (h!18885 lt!401101)) key1!49)))))

(declare-fun b!886716 () Bool)

(assert (=> b!886716 (= e!493657 (containsKey!416 (t!25046 lt!401101) key1!49))))

(assert (= (and d!109729 (not res!601985)) b!886715))

(assert (= (and b!886715 res!601986) b!886716))

(declare-fun m!826633 () Bool)

(assert (=> b!886716 m!826633))

(assert (=> b!886603 d!109729))

(declare-fun d!109731 () Bool)

(declare-fun res!601987 () Bool)

(declare-fun e!493658 () Bool)

(assert (=> d!109731 (=> res!601987 e!493658)))

(assert (=> d!109731 (= res!601987 (and (is-Cons!17754 lt!401103) (= (_1!5978 (h!18885 lt!401103)) key1!49)))))

(assert (=> d!109731 (= (containsKey!416 lt!401103 key1!49) e!493658)))

(declare-fun b!886717 () Bool)

(declare-fun e!493659 () Bool)

(assert (=> b!886717 (= e!493658 e!493659)))

(declare-fun res!601988 () Bool)

(assert (=> b!886717 (=> (not res!601988) (not e!493659))))

(assert (=> b!886717 (= res!601988 (and (or (not (is-Cons!17754 lt!401103)) (bvsle (_1!5978 (h!18885 lt!401103)) key1!49)) (is-Cons!17754 lt!401103) (bvslt (_1!5978 (h!18885 lt!401103)) key1!49)))))

(declare-fun b!886718 () Bool)

(assert (=> b!886718 (= e!493659 (containsKey!416 (t!25046 lt!401103) key1!49))))

(assert (= (and d!109731 (not res!601987)) b!886717))

(assert (= (and b!886717 res!601988) b!886718))

(declare-fun m!826635 () Bool)

(assert (=> b!886718 m!826635))

(assert (=> b!886628 d!109731))

(declare-fun d!109733 () Bool)

(declare-fun res!601989 () Bool)

(declare-fun e!493660 () Bool)

(assert (=> d!109733 (=> res!601989 e!493660)))

(assert (=> d!109733 (= res!601989 (or (is-Nil!17755 lt!401103) (is-Nil!17755 (t!25046 lt!401103))))))

(assert (=> d!109733 (= (isStrictlySorted!488 lt!401103) e!493660)))

(declare-fun b!886719 () Bool)

(declare-fun e!493661 () Bool)

(assert (=> b!886719 (= e!493660 e!493661)))

(declare-fun res!601990 () Bool)

(assert (=> b!886719 (=> (not res!601990) (not e!493661))))

(assert (=> b!886719 (= res!601990 (bvslt (_1!5978 (h!18885 lt!401103)) (_1!5978 (h!18885 (t!25046 lt!401103)))))))

(declare-fun b!886720 () Bool)

(assert (=> b!886720 (= e!493661 (isStrictlySorted!488 (t!25046 lt!401103)))))

(assert (= (and d!109733 (not res!601989)) b!886719))

(assert (= (and b!886719 res!601990) b!886720))

(declare-fun m!826637 () Bool)

(assert (=> b!886720 m!826637))

(assert (=> d!109689 d!109733))

(assert (=> d!109689 d!109669))

(declare-fun d!109735 () Bool)

(declare-fun res!601991 () Bool)

(declare-fun e!493662 () Bool)

(assert (=> d!109735 (=> res!601991 e!493662)))

(assert (=> d!109735 (= res!601991 (or (is-Nil!17755 lt!401101) (is-Nil!17755 (t!25046 lt!401101))))))

(assert (=> d!109735 (= (isStrictlySorted!488 lt!401101) e!493662)))

(declare-fun b!886721 () Bool)

(declare-fun e!493663 () Bool)

(assert (=> b!886721 (= e!493662 e!493663)))

(declare-fun res!601992 () Bool)

(assert (=> b!886721 (=> (not res!601992) (not e!493663))))

(assert (=> b!886721 (= res!601992 (bvslt (_1!5978 (h!18885 lt!401101)) (_1!5978 (h!18885 (t!25046 lt!401101)))))))

(declare-fun b!886722 () Bool)

(assert (=> b!886722 (= e!493663 (isStrictlySorted!488 (t!25046 lt!401101)))))

(assert (= (and d!109735 (not res!601991)) b!886721))

(assert (= (and b!886721 res!601992) b!886722))

(declare-fun m!826639 () Bool)

(assert (=> b!886722 m!826639))

(assert (=> d!109685 d!109735))

(assert (=> d!109685 d!109669))

(declare-fun d!109737 () Bool)

(declare-fun res!601993 () Bool)

(declare-fun e!493664 () Bool)

(assert (=> d!109737 (=> res!601993 e!493664)))

(assert (=> d!109737 (= res!601993 (or (is-Nil!17755 lt!401099) (is-Nil!17755 (t!25046 lt!401099))))))

(assert (=> d!109737 (= (isStrictlySorted!488 lt!401099) e!493664)))

(declare-fun b!886723 () Bool)

(declare-fun e!493665 () Bool)

(assert (=> b!886723 (= e!493664 e!493665)))

(declare-fun res!601994 () Bool)

(assert (=> b!886723 (=> (not res!601994) (not e!493665))))

(assert (=> b!886723 (= res!601994 (bvslt (_1!5978 (h!18885 lt!401099)) (_1!5978 (h!18885 (t!25046 lt!401099)))))))

(declare-fun b!886724 () Bool)

(assert (=> b!886724 (= e!493665 (isStrictlySorted!488 (t!25046 lt!401099)))))

(assert (= (and d!109737 (not res!601993)) b!886723))

(assert (= (and b!886723 res!601994) b!886724))

(declare-fun m!826641 () Bool)

(assert (=> b!886724 m!826641))

(assert (=> d!109675 d!109737))

(declare-fun d!109739 () Bool)

(declare-fun res!601995 () Bool)

(declare-fun e!493666 () Bool)

(assert (=> d!109739 (=> res!601995 e!493666)))

(assert (=> d!109739 (= res!601995 (or (is-Nil!17755 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (is-Nil!17755 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)))))))

(assert (=> d!109739 (= (isStrictlySorted!488 (insertStrictlySorted!300 l!906 key1!49 v1!38)) e!493666)))

(declare-fun b!886725 () Bool)

(declare-fun e!493667 () Bool)

(assert (=> b!886725 (= e!493666 e!493667)))

(declare-fun res!601996 () Bool)

(assert (=> b!886725 (=> (not res!601996) (not e!493667))))

(assert (=> b!886725 (= res!601996 (bvslt (_1!5978 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (_1!5978 (h!18885 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))))))))

(declare-fun b!886726 () Bool)

(assert (=> b!886726 (= e!493667 (isStrictlySorted!488 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))))))

(assert (= (and d!109739 (not res!601995)) b!886725))

(assert (= (and b!886725 res!601996) b!886726))

(declare-fun m!826643 () Bool)

(assert (=> b!886726 m!826643))

(assert (=> d!109675 d!109739))

(declare-fun d!109741 () Bool)

(assert (=> d!109741 (= ($colon$colon!551 e!493566 (ite c!93479 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (tuple2!11937 key1!49 v2!16))) (Cons!17754 (ite c!93479 (h!18885 (insertStrictlySorted!300 l!906 key1!49 v1!38)) (tuple2!11937 key1!49 v2!16)) e!493566))))

(assert (=> bm!39284 d!109741))

(declare-fun d!109743 () Bool)

(declare-fun lt!401114 () Bool)

(declare-fun content!400 (List!17758) (Set tuple2!11936))

(assert (=> d!109743 (= lt!401114 (set.member (tuple2!11937 key1!49 v2!16) (content!400 lt!401099)))))

(declare-fun e!493672 () Bool)

(assert (=> d!109743 (= lt!401114 e!493672)))

(declare-fun res!602002 () Bool)

(assert (=> d!109743 (=> (not res!602002) (not e!493672))))

(assert (=> d!109743 (= res!602002 (is-Cons!17754 lt!401099))))

(assert (=> d!109743 (= (contains!4296 lt!401099 (tuple2!11937 key1!49 v2!16)) lt!401114)))

(declare-fun b!886731 () Bool)

(declare-fun e!493673 () Bool)

(assert (=> b!886731 (= e!493672 e!493673)))

(declare-fun res!602001 () Bool)

(assert (=> b!886731 (=> res!602001 e!493673)))

(assert (=> b!886731 (= res!602001 (= (h!18885 lt!401099) (tuple2!11937 key1!49 v2!16)))))

(declare-fun b!886732 () Bool)

(assert (=> b!886732 (= e!493673 (contains!4296 (t!25046 lt!401099) (tuple2!11937 key1!49 v2!16)))))

(assert (= (and d!109743 res!602002) b!886731))

(assert (= (and b!886731 (not res!602001)) b!886732))

(declare-fun m!826645 () Bool)

(assert (=> d!109743 m!826645))

(declare-fun m!826647 () Bool)

(assert (=> d!109743 m!826647))

(declare-fun m!826649 () Bool)

(assert (=> b!886732 m!826649))

(assert (=> b!886584 d!109743))

(declare-fun d!109745 () Bool)

(assert (=> d!109745 (= ($colon$colon!551 e!493591 (ite c!93495 (h!18885 l!906) (tuple2!11937 key1!49 v2!16))) (Cons!17754 (ite c!93495 (h!18885 l!906) (tuple2!11937 key1!49 v2!16)) e!493591))))

(assert (=> bm!39296 d!109745))

(declare-fun d!109747 () Bool)

(assert (=> d!109747 (= ($colon$colon!551 e!493578 (ite c!93487 (h!18885 l!906) (tuple2!11937 key1!49 v1!38))) (Cons!17754 (ite c!93487 (h!18885 l!906) (tuple2!11937 key1!49 v1!38)) e!493578))))

(assert (=> bm!39290 d!109747))

(declare-fun b!886733 () Bool)

(declare-fun e!493678 () List!17758)

(declare-fun call!39311 () List!17758)

(assert (=> b!886733 (= e!493678 call!39311)))

(declare-fun bm!39308 () Bool)

(declare-fun call!39313 () List!17758)

(declare-fun e!493674 () List!17758)

(declare-fun c!93511 () Bool)

(assert (=> bm!39308 (= call!39313 ($colon$colon!551 e!493674 (ite c!93511 (h!18885 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (tuple2!11937 key1!49 v2!16))))))

(declare-fun c!93509 () Bool)

(assert (=> bm!39308 (= c!93509 c!93511)))

(declare-fun bm!39309 () Bool)

(declare-fun call!39312 () List!17758)

(assert (=> bm!39309 (= call!39312 call!39311)))

(declare-fun b!886734 () Bool)

(declare-fun c!93510 () Bool)

(assert (=> b!886734 (= c!93510 (and (is-Cons!17754 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (bvsgt (_1!5978 (h!18885 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun e!493675 () List!17758)

(assert (=> b!886734 (= e!493678 e!493675)))

(declare-fun bm!39310 () Bool)

(assert (=> bm!39310 (= call!39311 call!39313)))

(declare-fun b!886735 () Bool)

(declare-fun res!602003 () Bool)

(declare-fun e!493676 () Bool)

(assert (=> b!886735 (=> (not res!602003) (not e!493676))))

(declare-fun lt!401115 () List!17758)

(assert (=> b!886735 (= res!602003 (containsKey!416 lt!401115 key1!49))))

(declare-fun b!886736 () Bool)

(declare-fun e!493677 () List!17758)

(assert (=> b!886736 (= e!493677 e!493678)))

(declare-fun c!93512 () Bool)

(assert (=> b!886736 (= c!93512 (and (is-Cons!17754 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (= (_1!5978 (h!18885 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun b!886737 () Bool)

(assert (=> b!886737 (= e!493675 call!39312)))

(declare-fun b!886738 () Bool)

(assert (=> b!886738 (= e!493674 (ite c!93512 (t!25046 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (ite c!93510 (Cons!17754 (h!18885 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (t!25046 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)))) Nil!17755)))))

(declare-fun b!886739 () Bool)

(assert (=> b!886739 (= e!493674 (insertStrictlySorted!300 (t!25046 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) key1!49 v2!16))))

(declare-fun b!886740 () Bool)

(assert (=> b!886740 (= e!493676 (contains!4296 lt!401115 (tuple2!11937 key1!49 v2!16)))))

(declare-fun d!109749 () Bool)

(assert (=> d!109749 e!493676))

(declare-fun res!602004 () Bool)

(assert (=> d!109749 (=> (not res!602004) (not e!493676))))

(assert (=> d!109749 (= res!602004 (isStrictlySorted!488 lt!401115))))

(assert (=> d!109749 (= lt!401115 e!493677)))

(assert (=> d!109749 (= c!93511 (and (is-Cons!17754 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38))) (bvslt (_1!5978 (h!18885 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> d!109749 (isStrictlySorted!488 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)))))

(assert (=> d!109749 (= (insertStrictlySorted!300 (t!25046 (insertStrictlySorted!300 l!906 key1!49 v1!38)) key1!49 v2!16) lt!401115)))

(declare-fun b!886741 () Bool)

(assert (=> b!886741 (= e!493677 call!39313)))

(declare-fun b!886742 () Bool)

(assert (=> b!886742 (= e!493675 call!39312)))

(assert (= (and d!109749 c!93511) b!886741))

(assert (= (and d!109749 (not c!93511)) b!886736))

(assert (= (and b!886736 c!93512) b!886733))

(assert (= (and b!886736 (not c!93512)) b!886734))

(assert (= (and b!886734 c!93510) b!886737))

(assert (= (and b!886734 (not c!93510)) b!886742))

(assert (= (or b!886737 b!886742) bm!39309))

(assert (= (or b!886733 bm!39309) bm!39310))

(assert (= (or b!886741 bm!39310) bm!39308))

(assert (= (and bm!39308 c!93509) b!886739))

(assert (= (and bm!39308 (not c!93509)) b!886738))

(assert (= (and d!109749 res!602004) b!886735))

(assert (= (and b!886735 res!602003) b!886740))

(declare-fun m!826651 () Bool)

(assert (=> d!109749 m!826651))

(assert (=> d!109749 m!826643))

(declare-fun m!826653 () Bool)

(assert (=> bm!39308 m!826653))

(declare-fun m!826655 () Bool)

(assert (=> b!886740 m!826655))

(declare-fun m!826657 () Bool)

(assert (=> b!886739 m!826657))

(declare-fun m!826659 () Bool)

(assert (=> b!886735 m!826659))

(assert (=> b!886583 d!109749))

(declare-fun d!109751 () Bool)

(declare-fun lt!401116 () Bool)

(assert (=> d!109751 (= lt!401116 (set.member (tuple2!11937 key1!49 v1!38) (content!400 lt!401101)))))

(declare-fun e!493679 () Bool)

(assert (=> d!109751 (= lt!401116 e!493679)))

(declare-fun res!602006 () Bool)

(assert (=> d!109751 (=> (not res!602006) (not e!493679))))

(assert (=> d!109751 (= res!602006 (is-Cons!17754 lt!401101))))

(assert (=> d!109751 (= (contains!4296 lt!401101 (tuple2!11937 key1!49 v1!38)) lt!401116)))

(declare-fun b!886743 () Bool)

(declare-fun e!493680 () Bool)

(assert (=> b!886743 (= e!493679 e!493680)))

(declare-fun res!602005 () Bool)

(assert (=> b!886743 (=> res!602005 e!493680)))

(assert (=> b!886743 (= res!602005 (= (h!18885 lt!401101) (tuple2!11937 key1!49 v1!38)))))

(declare-fun b!886744 () Bool)

(assert (=> b!886744 (= e!493680 (contains!4296 (t!25046 lt!401101) (tuple2!11937 key1!49 v1!38)))))

(assert (= (and d!109751 res!602006) b!886743))

(assert (= (and b!886743 (not res!602005)) b!886744))

(declare-fun m!826661 () Bool)

(assert (=> d!109751 m!826661))

(declare-fun m!826663 () Bool)

(assert (=> d!109751 m!826663))

(declare-fun m!826665 () Bool)

(assert (=> b!886744 m!826665))

(assert (=> b!886608 d!109751))

(declare-fun d!109753 () Bool)

(declare-fun lt!401117 () Bool)

(assert (=> d!109753 (= lt!401117 (set.member (tuple2!11937 key1!49 v2!16) (content!400 lt!401103)))))

(declare-fun e!493681 () Bool)

(assert (=> d!109753 (= lt!401117 e!493681)))

(declare-fun res!602008 () Bool)

(assert (=> d!109753 (=> (not res!602008) (not e!493681))))

(assert (=> d!109753 (= res!602008 (is-Cons!17754 lt!401103))))

(assert (=> d!109753 (= (contains!4296 lt!401103 (tuple2!11937 key1!49 v2!16)) lt!401117)))

(declare-fun b!886745 () Bool)

(declare-fun e!493682 () Bool)

(assert (=> b!886745 (= e!493681 e!493682)))

(declare-fun res!602007 () Bool)

(assert (=> b!886745 (=> res!602007 e!493682)))

(assert (=> b!886745 (= res!602007 (= (h!18885 lt!401103) (tuple2!11937 key1!49 v2!16)))))

(declare-fun b!886746 () Bool)

(assert (=> b!886746 (= e!493682 (contains!4296 (t!25046 lt!401103) (tuple2!11937 key1!49 v2!16)))))

(assert (= (and d!109753 res!602008) b!886745))

(assert (= (and b!886745 (not res!602007)) b!886746))

(declare-fun m!826667 () Bool)

(assert (=> d!109753 m!826667))

(declare-fun m!826669 () Bool)

(assert (=> d!109753 m!826669))

(declare-fun m!826671 () Bool)

(assert (=> b!886746 m!826671))

(assert (=> b!886633 d!109753))

(declare-fun b!886747 () Bool)

(declare-fun e!493687 () List!17758)

(declare-fun call!39314 () List!17758)

(assert (=> b!886747 (= e!493687 call!39314)))

(declare-fun bm!39311 () Bool)

(declare-fun e!493683 () List!17758)

(declare-fun call!39316 () List!17758)

(declare-fun c!93515 () Bool)

(assert (=> bm!39311 (= call!39316 ($colon$colon!551 e!493683 (ite c!93515 (h!18885 (t!25046 l!906)) (tuple2!11937 key1!49 v1!38))))))

(declare-fun c!93513 () Bool)

(assert (=> bm!39311 (= c!93513 c!93515)))

(declare-fun bm!39312 () Bool)

(declare-fun call!39315 () List!17758)

(assert (=> bm!39312 (= call!39315 call!39314)))

(declare-fun b!886748 () Bool)

(declare-fun c!93514 () Bool)

(assert (=> b!886748 (= c!93514 (and (is-Cons!17754 (t!25046 l!906)) (bvsgt (_1!5978 (h!18885 (t!25046 l!906))) key1!49)))))

(declare-fun e!493684 () List!17758)

(assert (=> b!886748 (= e!493687 e!493684)))

(declare-fun bm!39313 () Bool)

(assert (=> bm!39313 (= call!39314 call!39316)))

(declare-fun b!886749 () Bool)

(declare-fun res!602009 () Bool)

(declare-fun e!493685 () Bool)

(assert (=> b!886749 (=> (not res!602009) (not e!493685))))

(declare-fun lt!401118 () List!17758)

(assert (=> b!886749 (= res!602009 (containsKey!416 lt!401118 key1!49))))

(declare-fun b!886750 () Bool)

(declare-fun e!493686 () List!17758)

(assert (=> b!886750 (= e!493686 e!493687)))

(declare-fun c!93516 () Bool)

(assert (=> b!886750 (= c!93516 (and (is-Cons!17754 (t!25046 l!906)) (= (_1!5978 (h!18885 (t!25046 l!906))) key1!49)))))

(declare-fun b!886751 () Bool)

(assert (=> b!886751 (= e!493684 call!39315)))

(declare-fun b!886752 () Bool)

(assert (=> b!886752 (= e!493683 (ite c!93516 (t!25046 (t!25046 l!906)) (ite c!93514 (Cons!17754 (h!18885 (t!25046 l!906)) (t!25046 (t!25046 l!906))) Nil!17755)))))

(declare-fun b!886753 () Bool)

(assert (=> b!886753 (= e!493683 (insertStrictlySorted!300 (t!25046 (t!25046 l!906)) key1!49 v1!38))))

(declare-fun b!886754 () Bool)

(assert (=> b!886754 (= e!493685 (contains!4296 lt!401118 (tuple2!11937 key1!49 v1!38)))))

(declare-fun d!109755 () Bool)

(assert (=> d!109755 e!493685))

(declare-fun res!602010 () Bool)

(assert (=> d!109755 (=> (not res!602010) (not e!493685))))

(assert (=> d!109755 (= res!602010 (isStrictlySorted!488 lt!401118))))

(assert (=> d!109755 (= lt!401118 e!493686)))

(assert (=> d!109755 (= c!93515 (and (is-Cons!17754 (t!25046 l!906)) (bvslt (_1!5978 (h!18885 (t!25046 l!906))) key1!49)))))

(assert (=> d!109755 (isStrictlySorted!488 (t!25046 l!906))))

(assert (=> d!109755 (= (insertStrictlySorted!300 (t!25046 l!906) key1!49 v1!38) lt!401118)))

(declare-fun b!886755 () Bool)

(assert (=> b!886755 (= e!493686 call!39316)))

(declare-fun b!886756 () Bool)

(assert (=> b!886756 (= e!493684 call!39315)))

(assert (= (and d!109755 c!93515) b!886755))

(assert (= (and d!109755 (not c!93515)) b!886750))

(assert (= (and b!886750 c!93516) b!886747))

(assert (= (and b!886750 (not c!93516)) b!886748))

(assert (= (and b!886748 c!93514) b!886751))

(assert (= (and b!886748 (not c!93514)) b!886756))

(assert (= (or b!886751 b!886756) bm!39312))

(assert (= (or b!886747 bm!39312) bm!39313))

(assert (= (or b!886755 bm!39313) bm!39311))

(assert (= (and bm!39311 c!93513) b!886753))

(assert (= (and bm!39311 (not c!93513)) b!886752))

(assert (= (and d!109755 res!602010) b!886749))

(assert (= (and b!886749 res!602009) b!886754))

(declare-fun m!826673 () Bool)

(assert (=> d!109755 m!826673))

(assert (=> d!109755 m!826465))

(declare-fun m!826675 () Bool)

(assert (=> bm!39311 m!826675))

(declare-fun m!826677 () Bool)

(assert (=> b!886754 m!826677))

(declare-fun m!826679 () Bool)

(assert (=> b!886753 m!826679))

(declare-fun m!826681 () Bool)

(assert (=> b!886749 m!826681))

(assert (=> b!886607 d!109755))

(declare-fun b!886757 () Bool)

(declare-fun e!493692 () List!17758)

(declare-fun call!39317 () List!17758)

(assert (=> b!886757 (= e!493692 call!39317)))

(declare-fun e!493688 () List!17758)

(declare-fun bm!39314 () Bool)

(declare-fun c!93519 () Bool)

(declare-fun call!39319 () List!17758)

(assert (=> bm!39314 (= call!39319 ($colon$colon!551 e!493688 (ite c!93519 (h!18885 (t!25046 l!906)) (tuple2!11937 key1!49 v2!16))))))

(declare-fun c!93517 () Bool)

(assert (=> bm!39314 (= c!93517 c!93519)))

(declare-fun bm!39315 () Bool)

(declare-fun call!39318 () List!17758)

(assert (=> bm!39315 (= call!39318 call!39317)))

(declare-fun b!886758 () Bool)

(declare-fun c!93518 () Bool)

(assert (=> b!886758 (= c!93518 (and (is-Cons!17754 (t!25046 l!906)) (bvsgt (_1!5978 (h!18885 (t!25046 l!906))) key1!49)))))

(declare-fun e!493689 () List!17758)

(assert (=> b!886758 (= e!493692 e!493689)))

(declare-fun bm!39316 () Bool)

(assert (=> bm!39316 (= call!39317 call!39319)))

(declare-fun b!886759 () Bool)

(declare-fun res!602011 () Bool)

(declare-fun e!493690 () Bool)

(assert (=> b!886759 (=> (not res!602011) (not e!493690))))

(declare-fun lt!401119 () List!17758)

(assert (=> b!886759 (= res!602011 (containsKey!416 lt!401119 key1!49))))

(declare-fun b!886760 () Bool)

(declare-fun e!493691 () List!17758)

(assert (=> b!886760 (= e!493691 e!493692)))

(declare-fun c!93520 () Bool)

(assert (=> b!886760 (= c!93520 (and (is-Cons!17754 (t!25046 l!906)) (= (_1!5978 (h!18885 (t!25046 l!906))) key1!49)))))

(declare-fun b!886761 () Bool)

(assert (=> b!886761 (= e!493689 call!39318)))

(declare-fun b!886762 () Bool)

(assert (=> b!886762 (= e!493688 (ite c!93520 (t!25046 (t!25046 l!906)) (ite c!93518 (Cons!17754 (h!18885 (t!25046 l!906)) (t!25046 (t!25046 l!906))) Nil!17755)))))

(declare-fun b!886763 () Bool)

(assert (=> b!886763 (= e!493688 (insertStrictlySorted!300 (t!25046 (t!25046 l!906)) key1!49 v2!16))))

(declare-fun b!886764 () Bool)

(assert (=> b!886764 (= e!493690 (contains!4296 lt!401119 (tuple2!11937 key1!49 v2!16)))))

(declare-fun d!109757 () Bool)

(assert (=> d!109757 e!493690))

(declare-fun res!602012 () Bool)

(assert (=> d!109757 (=> (not res!602012) (not e!493690))))

(assert (=> d!109757 (= res!602012 (isStrictlySorted!488 lt!401119))))

(assert (=> d!109757 (= lt!401119 e!493691)))

(assert (=> d!109757 (= c!93519 (and (is-Cons!17754 (t!25046 l!906)) (bvslt (_1!5978 (h!18885 (t!25046 l!906))) key1!49)))))

(assert (=> d!109757 (isStrictlySorted!488 (t!25046 l!906))))

(assert (=> d!109757 (= (insertStrictlySorted!300 (t!25046 l!906) key1!49 v2!16) lt!401119)))

(declare-fun b!886765 () Bool)

(assert (=> b!886765 (= e!493691 call!39319)))

(declare-fun b!886766 () Bool)

(assert (=> b!886766 (= e!493689 call!39318)))

(assert (= (and d!109757 c!93519) b!886765))

(assert (= (and d!109757 (not c!93519)) b!886760))

(assert (= (and b!886760 c!93520) b!886757))

(assert (= (and b!886760 (not c!93520)) b!886758))

(assert (= (and b!886758 c!93518) b!886761))

(assert (= (and b!886758 (not c!93518)) b!886766))

(assert (= (or b!886761 b!886766) bm!39315))

(assert (= (or b!886757 bm!39315) bm!39316))

(assert (= (or b!886765 bm!39316) bm!39314))

(assert (= (and bm!39314 c!93517) b!886763))

(assert (= (and bm!39314 (not c!93517)) b!886762))

(assert (= (and d!109757 res!602012) b!886759))

(assert (= (and b!886759 res!602011) b!886764))

(declare-fun m!826683 () Bool)

(assert (=> d!109757 m!826683))

(assert (=> d!109757 m!826465))

(declare-fun m!826685 () Bool)

(assert (=> bm!39314 m!826685))

(declare-fun m!826687 () Bool)

(assert (=> b!886764 m!826687))

(declare-fun m!826689 () Bool)

(assert (=> b!886763 m!826689))

(declare-fun m!826691 () Bool)

(assert (=> b!886759 m!826691))

(assert (=> b!886632 d!109757))

(declare-fun b!886767 () Bool)

(declare-fun e!493693 () Bool)

(declare-fun tp!54404 () Bool)

(assert (=> b!886767 (= e!493693 (and tp_is_empty!17815 tp!54404))))

(assert (=> b!886645 (= tp!54402 e!493693)))

(assert (= (and b!886645 (is-Cons!17754 (t!25046 (t!25046 l!906)))) b!886767))

(push 1)

(assert (not b!886735))

(assert (not b!886754))

(assert (not b!886749))

(assert (not b!886763))

(assert (not b!886753))

(assert (not d!109757))

(assert (not d!109751))

(assert (not b!886767))

(assert (not bm!39311))

(assert (not bm!39314))

(assert (not b!886712))

(assert (not b!886722))

(assert (not b!886739))

(assert (not b!886759))

(assert (not b!886724))

(assert (not b!886740))

(assert (not b!886746))

(assert (not d!109753))

(assert (not b!886716))

(assert (not d!109749))

(assert tp_is_empty!17815)

(assert (not b!886714))

(assert (not d!109755))

(assert (not b!886726))

(assert (not b!886732))

(assert (not d!109743))

(assert (not b!886764))

(assert (not b!886718))

(assert (not b!886744))

(assert (not bm!39308))

(assert (not b!886720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


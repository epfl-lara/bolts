; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252126 () Bool)

(assert start!252126)

(declare-fun b!2597450 () Bool)

(assert (=> b!2597450 true))

(declare-fun bs!473036 () Bool)

(declare-fun b!2597451 () Bool)

(assert (= bs!473036 (and b!2597451 b!2597450)))

(declare-fun lambda!97190 () Int)

(declare-fun lambda!97189 () Int)

(assert (=> bs!473036 (not (= lambda!97190 lambda!97189))))

(assert (=> b!2597451 true))

(declare-fun b!2597448 () Bool)

(declare-fun res!1093483 () Bool)

(declare-fun e!1639437 () Bool)

(assert (=> b!2597448 (=> (not res!1093483) (not e!1639437))))

(declare-datatypes ((B!2227 0))(
  ( (B!2228 (val!9581 Int)) )
))
(declare-datatypes ((List!30014 0))(
  ( (Nil!29914) (Cons!29914 (h!35334 B!2227) (t!213027 List!30014)) )
))
(declare-fun l2!1515 () List!30014)

(declare-fun l1!1546 () List!30014)

(declare-fun contains!5462 (List!30014 B!2227) Bool)

(assert (=> b!2597448 (= res!1093483 (not (contains!5462 l2!1515 (h!35334 l1!1546))))))

(declare-fun b!2597449 () Bool)

(declare-fun e!1639438 () Bool)

(assert (=> b!2597449 (= e!1639438 (not (contains!5462 l2!1515 (h!35334 l1!1546))))))

(declare-fun res!1093488 () Bool)

(assert (=> b!2597450 (=> (not res!1093488) (not e!1639437))))

(declare-fun forall!6151 (List!30014 Int) Bool)

(assert (=> b!2597450 (= res!1093488 (forall!6151 l2!1515 lambda!97189))))

(declare-fun exists!939 (List!30014 Int) Bool)

(assert (=> b!2597451 (= e!1639437 (not (exists!939 l1!1546 lambda!97190)))))

(declare-fun res!1093489 () Bool)

(assert (=> start!252126 (=> (not res!1093489) (not e!1639437))))

(declare-fun noDuplicate!462 (List!30014) Bool)

(assert (=> start!252126 (= res!1093489 (noDuplicate!462 l1!1546))))

(assert (=> start!252126 e!1639437))

(declare-fun e!1639439 () Bool)

(assert (=> start!252126 e!1639439))

(declare-fun e!1639436 () Bool)

(assert (=> start!252126 e!1639436))

(declare-fun b!2597452 () Bool)

(declare-fun res!1093484 () Bool)

(assert (=> b!2597452 (=> (not res!1093484) (not e!1639437))))

(assert (=> b!2597452 (= res!1093484 e!1639438)))

(declare-fun res!1093482 () Bool)

(assert (=> b!2597452 (=> res!1093482 e!1639438)))

(assert (=> b!2597452 (= res!1093482 (not (is-Cons!29914 l1!1546)))))

(declare-fun b!2597453 () Bool)

(declare-fun res!1093485 () Bool)

(assert (=> b!2597453 (=> (not res!1093485) (not e!1639437))))

(declare-fun size!23219 (List!30014) Int)

(assert (=> b!2597453 (= res!1093485 (> (size!23219 l1!1546) (size!23219 l2!1515)))))

(declare-fun b!2597454 () Bool)

(declare-fun tp_is_empty!13507 () Bool)

(declare-fun tp!823349 () Bool)

(assert (=> b!2597454 (= e!1639436 (and tp_is_empty!13507 tp!823349))))

(declare-fun b!2597455 () Bool)

(declare-fun res!1093487 () Bool)

(assert (=> b!2597455 (=> (not res!1093487) (not e!1639437))))

(assert (=> b!2597455 (= res!1093487 (noDuplicate!462 l2!1515))))

(declare-fun b!2597456 () Bool)

(declare-fun res!1093486 () Bool)

(assert (=> b!2597456 (=> (not res!1093486) (not e!1639437))))

(assert (=> b!2597456 (= res!1093486 (is-Cons!29914 l1!1546))))

(declare-fun b!2597457 () Bool)

(declare-fun tp!823350 () Bool)

(assert (=> b!2597457 (= e!1639439 (and tp_is_empty!13507 tp!823350))))

(assert (= (and start!252126 res!1093489) b!2597455))

(assert (= (and b!2597455 res!1093487) b!2597453))

(assert (= (and b!2597453 res!1093485) b!2597450))

(assert (= (and b!2597450 res!1093488) b!2597452))

(assert (= (and b!2597452 (not res!1093482)) b!2597449))

(assert (= (and b!2597452 res!1093484) b!2597456))

(assert (= (and b!2597456 res!1093486) b!2597448))

(assert (= (and b!2597448 res!1093483) b!2597451))

(assert (= (and start!252126 (is-Cons!29914 l1!1546)) b!2597457))

(assert (= (and start!252126 (is-Cons!29914 l2!1515)) b!2597454))

(declare-fun m!2933833 () Bool)

(assert (=> b!2597453 m!2933833))

(declare-fun m!2933835 () Bool)

(assert (=> b!2597453 m!2933835))

(declare-fun m!2933837 () Bool)

(assert (=> b!2597455 m!2933837))

(declare-fun m!2933839 () Bool)

(assert (=> b!2597450 m!2933839))

(declare-fun m!2933841 () Bool)

(assert (=> start!252126 m!2933841))

(declare-fun m!2933843 () Bool)

(assert (=> b!2597449 m!2933843))

(assert (=> b!2597448 m!2933843))

(declare-fun m!2933845 () Bool)

(assert (=> b!2597451 m!2933845))

(push 1)

(assert (not b!2597457))

(assert (not b!2597455))

(assert (not start!252126))

(assert (not b!2597454))

(assert (not b!2597450))

(assert (not b!2597448))

(assert (not b!2597449))

(assert (not b!2597451))

(assert tp_is_empty!13507)

(assert (not b!2597453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!473038 () Bool)

(declare-fun d!736023 () Bool)

(assert (= bs!473038 (and d!736023 b!2597450)))

(declare-fun lambda!97199 () Int)

(assert (=> bs!473038 (not (= lambda!97199 lambda!97189))))

(declare-fun bs!473039 () Bool)

(assert (= bs!473039 (and d!736023 b!2597451)))

(assert (=> bs!473039 (not (= lambda!97199 lambda!97190))))

(assert (=> d!736023 true))

(declare-fun order!15905 () Int)

(declare-fun dynLambda!12661 (Int Int) Int)

(assert (=> d!736023 (< (dynLambda!12661 order!15905 lambda!97190) (dynLambda!12661 order!15905 lambda!97199))))

(assert (=> d!736023 (= (exists!939 l1!1546 lambda!97190) (not (forall!6151 l1!1546 lambda!97199)))))

(declare-fun bs!473040 () Bool)

(assert (= bs!473040 d!736023))

(declare-fun m!2933861 () Bool)

(assert (=> bs!473040 m!2933861))

(assert (=> b!2597451 d!736023))

(declare-fun d!736025 () Bool)

(declare-fun res!1093518 () Bool)

(declare-fun e!1639460 () Bool)

(assert (=> d!736025 (=> res!1093518 e!1639460)))

(assert (=> d!736025 (= res!1093518 (is-Nil!29914 l2!1515))))

(assert (=> d!736025 (= (noDuplicate!462 l2!1515) e!1639460)))

(declare-fun b!2597498 () Bool)

(declare-fun e!1639461 () Bool)

(assert (=> b!2597498 (= e!1639460 e!1639461)))

(declare-fun res!1093519 () Bool)

(assert (=> b!2597498 (=> (not res!1093519) (not e!1639461))))

(assert (=> b!2597498 (= res!1093519 (not (contains!5462 (t!213027 l2!1515) (h!35334 l2!1515))))))

(declare-fun b!2597499 () Bool)

(assert (=> b!2597499 (= e!1639461 (noDuplicate!462 (t!213027 l2!1515)))))

(assert (= (and d!736025 (not res!1093518)) b!2597498))

(assert (= (and b!2597498 res!1093519) b!2597499))

(declare-fun m!2933863 () Bool)

(assert (=> b!2597498 m!2933863))

(declare-fun m!2933865 () Bool)

(assert (=> b!2597499 m!2933865))

(assert (=> b!2597455 d!736025))

(declare-fun d!736027 () Bool)

(declare-fun res!1093524 () Bool)

(declare-fun e!1639466 () Bool)

(assert (=> d!736027 (=> res!1093524 e!1639466)))

(assert (=> d!736027 (= res!1093524 (is-Nil!29914 l2!1515))))

(assert (=> d!736027 (= (forall!6151 l2!1515 lambda!97189) e!1639466)))

(declare-fun b!2597504 () Bool)

(declare-fun e!1639467 () Bool)

(assert (=> b!2597504 (= e!1639466 e!1639467)))

(declare-fun res!1093525 () Bool)

(assert (=> b!2597504 (=> (not res!1093525) (not e!1639467))))

(declare-fun dynLambda!12662 (Int B!2227) Bool)

(assert (=> b!2597504 (= res!1093525 (dynLambda!12662 lambda!97189 (h!35334 l2!1515)))))

(declare-fun b!2597505 () Bool)

(assert (=> b!2597505 (= e!1639467 (forall!6151 (t!213027 l2!1515) lambda!97189))))

(assert (= (and d!736027 (not res!1093524)) b!2597504))

(assert (= (and b!2597504 res!1093525) b!2597505))

(declare-fun b_lambda!77693 () Bool)

(assert (=> (not b_lambda!77693) (not b!2597504)))

(declare-fun m!2933867 () Bool)

(assert (=> b!2597504 m!2933867))

(declare-fun m!2933869 () Bool)

(assert (=> b!2597505 m!2933869))

(assert (=> b!2597450 d!736027))

(declare-fun d!736031 () Bool)

(declare-fun lt!914824 () Bool)

(declare-fun content!4209 (List!30014) (Set B!2227))

(assert (=> d!736031 (= lt!914824 (set.member (h!35334 l1!1546) (content!4209 l2!1515)))))

(declare-fun e!1639473 () Bool)

(assert (=> d!736031 (= lt!914824 e!1639473)))

(declare-fun res!1093531 () Bool)

(assert (=> d!736031 (=> (not res!1093531) (not e!1639473))))

(assert (=> d!736031 (= res!1093531 (is-Cons!29914 l2!1515))))

(assert (=> d!736031 (= (contains!5462 l2!1515 (h!35334 l1!1546)) lt!914824)))

(declare-fun b!2597512 () Bool)

(declare-fun e!1639472 () Bool)

(assert (=> b!2597512 (= e!1639473 e!1639472)))

(declare-fun res!1093530 () Bool)

(assert (=> b!2597512 (=> res!1093530 e!1639472)))

(assert (=> b!2597512 (= res!1093530 (= (h!35334 l2!1515) (h!35334 l1!1546)))))

(declare-fun b!2597513 () Bool)

(assert (=> b!2597513 (= e!1639472 (contains!5462 (t!213027 l2!1515) (h!35334 l1!1546)))))

(assert (= (and d!736031 res!1093531) b!2597512))

(assert (= (and b!2597512 (not res!1093530)) b!2597513))

(declare-fun m!2933871 () Bool)

(assert (=> d!736031 m!2933871))

(declare-fun m!2933873 () Bool)

(assert (=> d!736031 m!2933873))

(declare-fun m!2933875 () Bool)

(assert (=> b!2597513 m!2933875))

(assert (=> b!2597448 d!736031))

(declare-fun d!736033 () Bool)

(declare-fun res!1093532 () Bool)

(declare-fun e!1639474 () Bool)

(assert (=> d!736033 (=> res!1093532 e!1639474)))

(assert (=> d!736033 (= res!1093532 (is-Nil!29914 l1!1546))))

(assert (=> d!736033 (= (noDuplicate!462 l1!1546) e!1639474)))

(declare-fun b!2597514 () Bool)

(declare-fun e!1639475 () Bool)

(assert (=> b!2597514 (= e!1639474 e!1639475)))

(declare-fun res!1093533 () Bool)

(assert (=> b!2597514 (=> (not res!1093533) (not e!1639475))))

(assert (=> b!2597514 (= res!1093533 (not (contains!5462 (t!213027 l1!1546) (h!35334 l1!1546))))))

(declare-fun b!2597515 () Bool)

(assert (=> b!2597515 (= e!1639475 (noDuplicate!462 (t!213027 l1!1546)))))

(assert (= (and d!736033 (not res!1093532)) b!2597514))

(assert (= (and b!2597514 res!1093533) b!2597515))

(declare-fun m!2933877 () Bool)

(assert (=> b!2597514 m!2933877))

(declare-fun m!2933879 () Bool)

(assert (=> b!2597515 m!2933879))

(assert (=> start!252126 d!736033))

(assert (=> b!2597449 d!736031))

(declare-fun d!736035 () Bool)

(declare-fun lt!914827 () Int)

(assert (=> d!736035 (>= lt!914827 0)))

(declare-fun e!1639478 () Int)

(assert (=> d!736035 (= lt!914827 e!1639478)))

(declare-fun c!418423 () Bool)

(assert (=> d!736035 (= c!418423 (is-Nil!29914 l1!1546))))

(assert (=> d!736035 (= (size!23219 l1!1546) lt!914827)))

(declare-fun b!2597520 () Bool)

(assert (=> b!2597520 (= e!1639478 0)))

(declare-fun b!2597521 () Bool)

(assert (=> b!2597521 (= e!1639478 (+ 1 (size!23219 (t!213027 l1!1546))))))

(assert (= (and d!736035 c!418423) b!2597520))

(assert (= (and d!736035 (not c!418423)) b!2597521))

(declare-fun m!2933883 () Bool)

(assert (=> b!2597521 m!2933883))

(assert (=> b!2597453 d!736035))

(declare-fun d!736039 () Bool)

(declare-fun lt!914828 () Int)

(assert (=> d!736039 (>= lt!914828 0)))

(declare-fun e!1639479 () Int)

(assert (=> d!736039 (= lt!914828 e!1639479)))

(declare-fun c!418424 () Bool)

(assert (=> d!736039 (= c!418424 (is-Nil!29914 l2!1515))))

(assert (=> d!736039 (= (size!23219 l2!1515) lt!914828)))

(declare-fun b!2597522 () Bool)

(assert (=> b!2597522 (= e!1639479 0)))

(declare-fun b!2597523 () Bool)

(assert (=> b!2597523 (= e!1639479 (+ 1 (size!23219 (t!213027 l2!1515))))))

(assert (= (and d!736039 c!418424) b!2597522))

(assert (= (and d!736039 (not c!418424)) b!2597523))

(declare-fun m!2933885 () Bool)

(assert (=> b!2597523 m!2933885))

(assert (=> b!2597453 d!736039))

(declare-fun b!2597528 () Bool)

(declare-fun e!1639482 () Bool)

(declare-fun tp!823359 () Bool)

(assert (=> b!2597528 (= e!1639482 (and tp_is_empty!13507 tp!823359))))

(assert (=> b!2597457 (= tp!823350 e!1639482)))

(assert (= (and b!2597457 (is-Cons!29914 (t!213027 l1!1546))) b!2597528))

(declare-fun b!2597529 () Bool)

(declare-fun e!1639483 () Bool)

(declare-fun tp!823360 () Bool)

(assert (=> b!2597529 (= e!1639483 (and tp_is_empty!13507 tp!823360))))

(assert (=> b!2597454 (= tp!823349 e!1639483)))

(assert (= (and b!2597454 (is-Cons!29914 (t!213027 l2!1515))) b!2597529))

(declare-fun b_lambda!77695 () Bool)

(assert (= b_lambda!77693 (or b!2597450 b_lambda!77695)))

(declare-fun bs!473044 () Bool)

(declare-fun d!736041 () Bool)

(assert (= bs!473044 (and d!736041 b!2597450)))

(assert (=> bs!473044 (= (dynLambda!12662 lambda!97189 (h!35334 l2!1515)) (contains!5462 l1!1546 (h!35334 l2!1515)))))

(declare-fun m!2933887 () Bool)

(assert (=> bs!473044 m!2933887))

(assert (=> b!2597504 d!736041))

(push 1)

(assert (not b!2597529))

(assert (not b!2597513))

(assert (not b_lambda!77695))

(assert (not b!2597528))

(assert (not b!2597498))

(assert (not b!2597515))

(assert (not bs!473044))

(assert (not b!2597505))

(assert (not b!2597523))

(assert tp_is_empty!13507)

(assert (not b!2597514))

(assert (not b!2597521))

(assert (not d!736023))

(assert (not d!736031))

(assert (not b!2597499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736055 () Bool)

(declare-fun lt!914836 () Bool)

(assert (=> d!736055 (= lt!914836 (set.member (h!35334 l1!1546) (content!4209 (t!213027 l1!1546))))))

(declare-fun e!1639513 () Bool)

(assert (=> d!736055 (= lt!914836 e!1639513)))

(declare-fun res!1093555 () Bool)

(assert (=> d!736055 (=> (not res!1093555) (not e!1639513))))

(assert (=> d!736055 (= res!1093555 (is-Cons!29914 (t!213027 l1!1546)))))

(assert (=> d!736055 (= (contains!5462 (t!213027 l1!1546) (h!35334 l1!1546)) lt!914836)))

(declare-fun b!2597564 () Bool)

(declare-fun e!1639512 () Bool)

(assert (=> b!2597564 (= e!1639513 e!1639512)))

(declare-fun res!1093554 () Bool)

(assert (=> b!2597564 (=> res!1093554 e!1639512)))

(assert (=> b!2597564 (= res!1093554 (= (h!35334 (t!213027 l1!1546)) (h!35334 l1!1546)))))

(declare-fun b!2597565 () Bool)

(assert (=> b!2597565 (= e!1639512 (contains!5462 (t!213027 (t!213027 l1!1546)) (h!35334 l1!1546)))))

(assert (= (and d!736055 res!1093555) b!2597564))

(assert (= (and b!2597564 (not res!1093554)) b!2597565))

(declare-fun m!2933913 () Bool)

(assert (=> d!736055 m!2933913))

(declare-fun m!2933915 () Bool)

(assert (=> d!736055 m!2933915))

(declare-fun m!2933917 () Bool)

(assert (=> b!2597565 m!2933917))

(assert (=> b!2597514 d!736055))

(declare-fun d!736057 () Bool)

(declare-fun c!418431 () Bool)

(assert (=> d!736057 (= c!418431 (is-Nil!29914 l2!1515))))

(declare-fun e!1639516 () (Set B!2227))

(assert (=> d!736057 (= (content!4209 l2!1515) e!1639516)))

(declare-fun b!2597570 () Bool)

(assert (=> b!2597570 (= e!1639516 (as set.empty (Set B!2227)))))

(declare-fun b!2597571 () Bool)

(assert (=> b!2597571 (= e!1639516 (set.union (set.insert (h!35334 l2!1515) (as set.empty (Set B!2227))) (content!4209 (t!213027 l2!1515))))))

(assert (= (and d!736057 c!418431) b!2597570))

(assert (= (and d!736057 (not c!418431)) b!2597571))

(declare-fun m!2933919 () Bool)

(assert (=> b!2597571 m!2933919))

(declare-fun m!2933921 () Bool)

(assert (=> b!2597571 m!2933921))

(assert (=> d!736031 d!736057))

(declare-fun d!736059 () Bool)

(declare-fun lt!914837 () Bool)

(assert (=> d!736059 (= lt!914837 (set.member (h!35334 l2!1515) (content!4209 (t!213027 l2!1515))))))

(declare-fun e!1639518 () Bool)

(assert (=> d!736059 (= lt!914837 e!1639518)))

(declare-fun res!1093557 () Bool)

(assert (=> d!736059 (=> (not res!1093557) (not e!1639518))))

(assert (=> d!736059 (= res!1093557 (is-Cons!29914 (t!213027 l2!1515)))))

(assert (=> d!736059 (= (contains!5462 (t!213027 l2!1515) (h!35334 l2!1515)) lt!914837)))

(declare-fun b!2597572 () Bool)

(declare-fun e!1639517 () Bool)

(assert (=> b!2597572 (= e!1639518 e!1639517)))

(declare-fun res!1093556 () Bool)

(assert (=> b!2597572 (=> res!1093556 e!1639517)))

(assert (=> b!2597572 (= res!1093556 (= (h!35334 (t!213027 l2!1515)) (h!35334 l2!1515)))))

(declare-fun b!2597573 () Bool)

(assert (=> b!2597573 (= e!1639517 (contains!5462 (t!213027 (t!213027 l2!1515)) (h!35334 l2!1515)))))

(assert (= (and d!736059 res!1093557) b!2597572))

(assert (= (and b!2597572 (not res!1093556)) b!2597573))

(assert (=> d!736059 m!2933921))

(declare-fun m!2933923 () Bool)

(assert (=> d!736059 m!2933923))

(declare-fun m!2933925 () Bool)

(assert (=> b!2597573 m!2933925))

(assert (=> b!2597498 d!736059))

(declare-fun d!736061 () Bool)

(declare-fun lt!914838 () Bool)

(assert (=> d!736061 (= lt!914838 (set.member (h!35334 l2!1515) (content!4209 l1!1546)))))

(declare-fun e!1639520 () Bool)

(assert (=> d!736061 (= lt!914838 e!1639520)))

(declare-fun res!1093559 () Bool)

(assert (=> d!736061 (=> (not res!1093559) (not e!1639520))))

(assert (=> d!736061 (= res!1093559 (is-Cons!29914 l1!1546))))

(assert (=> d!736061 (= (contains!5462 l1!1546 (h!35334 l2!1515)) lt!914838)))

(declare-fun b!2597574 () Bool)

(declare-fun e!1639519 () Bool)

(assert (=> b!2597574 (= e!1639520 e!1639519)))

(declare-fun res!1093558 () Bool)

(assert (=> b!2597574 (=> res!1093558 e!1639519)))

(assert (=> b!2597574 (= res!1093558 (= (h!35334 l1!1546) (h!35334 l2!1515)))))

(declare-fun b!2597575 () Bool)

(assert (=> b!2597575 (= e!1639519 (contains!5462 (t!213027 l1!1546) (h!35334 l2!1515)))))

(assert (= (and d!736061 res!1093559) b!2597574))

(assert (= (and b!2597574 (not res!1093558)) b!2597575))

(declare-fun m!2933927 () Bool)

(assert (=> d!736061 m!2933927))

(declare-fun m!2933929 () Bool)

(assert (=> d!736061 m!2933929))

(declare-fun m!2933931 () Bool)

(assert (=> b!2597575 m!2933931))

(assert (=> bs!473044 d!736061))

(declare-fun d!736063 () Bool)

(declare-fun res!1093560 () Bool)

(declare-fun e!1639521 () Bool)

(assert (=> d!736063 (=> res!1093560 e!1639521)))

(assert (=> d!736063 (= res!1093560 (is-Nil!29914 (t!213027 l2!1515)))))

(assert (=> d!736063 (= (noDuplicate!462 (t!213027 l2!1515)) e!1639521)))

(declare-fun b!2597576 () Bool)

(declare-fun e!1639522 () Bool)

(assert (=> b!2597576 (= e!1639521 e!1639522)))

(declare-fun res!1093561 () Bool)

(assert (=> b!2597576 (=> (not res!1093561) (not e!1639522))))

(assert (=> b!2597576 (= res!1093561 (not (contains!5462 (t!213027 (t!213027 l2!1515)) (h!35334 (t!213027 l2!1515)))))))

(declare-fun b!2597577 () Bool)

(assert (=> b!2597577 (= e!1639522 (noDuplicate!462 (t!213027 (t!213027 l2!1515))))))

(assert (= (and d!736063 (not res!1093560)) b!2597576))

(assert (= (and b!2597576 res!1093561) b!2597577))

(declare-fun m!2933933 () Bool)

(assert (=> b!2597576 m!2933933))

(declare-fun m!2933935 () Bool)

(assert (=> b!2597577 m!2933935))

(assert (=> b!2597499 d!736063))

(declare-fun d!736065 () Bool)

(declare-fun lt!914839 () Int)

(assert (=> d!736065 (>= lt!914839 0)))

(declare-fun e!1639523 () Int)

(assert (=> d!736065 (= lt!914839 e!1639523)))

(declare-fun c!418432 () Bool)

(assert (=> d!736065 (= c!418432 (is-Nil!29914 (t!213027 l1!1546)))))

(assert (=> d!736065 (= (size!23219 (t!213027 l1!1546)) lt!914839)))

(declare-fun b!2597578 () Bool)

(assert (=> b!2597578 (= e!1639523 0)))

(declare-fun b!2597579 () Bool)

(assert (=> b!2597579 (= e!1639523 (+ 1 (size!23219 (t!213027 (t!213027 l1!1546)))))))

(assert (= (and d!736065 c!418432) b!2597578))

(assert (= (and d!736065 (not c!418432)) b!2597579))

(declare-fun m!2933937 () Bool)

(assert (=> b!2597579 m!2933937))

(assert (=> b!2597521 d!736065))

(declare-fun d!736067 () Bool)

(declare-fun lt!914840 () Bool)

(assert (=> d!736067 (= lt!914840 (set.member (h!35334 l1!1546) (content!4209 (t!213027 l2!1515))))))

(declare-fun e!1639525 () Bool)

(assert (=> d!736067 (= lt!914840 e!1639525)))

(declare-fun res!1093563 () Bool)

(assert (=> d!736067 (=> (not res!1093563) (not e!1639525))))

(assert (=> d!736067 (= res!1093563 (is-Cons!29914 (t!213027 l2!1515)))))

(assert (=> d!736067 (= (contains!5462 (t!213027 l2!1515) (h!35334 l1!1546)) lt!914840)))

(declare-fun b!2597580 () Bool)

(declare-fun e!1639524 () Bool)

(assert (=> b!2597580 (= e!1639525 e!1639524)))

(declare-fun res!1093562 () Bool)

(assert (=> b!2597580 (=> res!1093562 e!1639524)))

(assert (=> b!2597580 (= res!1093562 (= (h!35334 (t!213027 l2!1515)) (h!35334 l1!1546)))))

(declare-fun b!2597581 () Bool)

(assert (=> b!2597581 (= e!1639524 (contains!5462 (t!213027 (t!213027 l2!1515)) (h!35334 l1!1546)))))

(assert (= (and d!736067 res!1093563) b!2597580))

(assert (= (and b!2597580 (not res!1093562)) b!2597581))

(assert (=> d!736067 m!2933921))

(declare-fun m!2933939 () Bool)

(assert (=> d!736067 m!2933939))

(declare-fun m!2933941 () Bool)

(assert (=> b!2597581 m!2933941))

(assert (=> b!2597513 d!736067))

(declare-fun d!736069 () Bool)

(declare-fun lt!914841 () Int)

(assert (=> d!736069 (>= lt!914841 0)))

(declare-fun e!1639526 () Int)

(assert (=> d!736069 (= lt!914841 e!1639526)))

(declare-fun c!418433 () Bool)

(assert (=> d!736069 (= c!418433 (is-Nil!29914 (t!213027 l2!1515)))))

(assert (=> d!736069 (= (size!23219 (t!213027 l2!1515)) lt!914841)))

(declare-fun b!2597582 () Bool)

(assert (=> b!2597582 (= e!1639526 0)))

(declare-fun b!2597583 () Bool)

(assert (=> b!2597583 (= e!1639526 (+ 1 (size!23219 (t!213027 (t!213027 l2!1515)))))))

(assert (= (and d!736069 c!418433) b!2597582))

(assert (= (and d!736069 (not c!418433)) b!2597583))

(declare-fun m!2933943 () Bool)

(assert (=> b!2597583 m!2933943))

(assert (=> b!2597523 d!736069))

(declare-fun d!736071 () Bool)

(declare-fun res!1093564 () Bool)

(declare-fun e!1639527 () Bool)

(assert (=> d!736071 (=> res!1093564 e!1639527)))

(assert (=> d!736071 (= res!1093564 (is-Nil!29914 (t!213027 l2!1515)))))

(assert (=> d!736071 (= (forall!6151 (t!213027 l2!1515) lambda!97189) e!1639527)))

(declare-fun b!2597584 () Bool)

(declare-fun e!1639528 () Bool)

(assert (=> b!2597584 (= e!1639527 e!1639528)))

(declare-fun res!1093565 () Bool)

(assert (=> b!2597584 (=> (not res!1093565) (not e!1639528))))

(assert (=> b!2597584 (= res!1093565 (dynLambda!12662 lambda!97189 (h!35334 (t!213027 l2!1515))))))

(declare-fun b!2597585 () Bool)

(assert (=> b!2597585 (= e!1639528 (forall!6151 (t!213027 (t!213027 l2!1515)) lambda!97189))))

(assert (= (and d!736071 (not res!1093564)) b!2597584))

(assert (= (and b!2597584 res!1093565) b!2597585))

(declare-fun b_lambda!77701 () Bool)

(assert (=> (not b_lambda!77701) (not b!2597584)))

(declare-fun m!2933945 () Bool)

(assert (=> b!2597584 m!2933945))

(declare-fun m!2933947 () Bool)

(assert (=> b!2597585 m!2933947))

(assert (=> b!2597505 d!736071))

(declare-fun d!736073 () Bool)

(declare-fun res!1093566 () Bool)

(declare-fun e!1639529 () Bool)

(assert (=> d!736073 (=> res!1093566 e!1639529)))

(assert (=> d!736073 (= res!1093566 (is-Nil!29914 (t!213027 l1!1546)))))

(assert (=> d!736073 (= (noDuplicate!462 (t!213027 l1!1546)) e!1639529)))

(declare-fun b!2597586 () Bool)

(declare-fun e!1639530 () Bool)

(assert (=> b!2597586 (= e!1639529 e!1639530)))

(declare-fun res!1093567 () Bool)

(assert (=> b!2597586 (=> (not res!1093567) (not e!1639530))))

(assert (=> b!2597586 (= res!1093567 (not (contains!5462 (t!213027 (t!213027 l1!1546)) (h!35334 (t!213027 l1!1546)))))))

(declare-fun b!2597587 () Bool)

(assert (=> b!2597587 (= e!1639530 (noDuplicate!462 (t!213027 (t!213027 l1!1546))))))

(assert (= (and d!736073 (not res!1093566)) b!2597586))

(assert (= (and b!2597586 res!1093567) b!2597587))

(declare-fun m!2933949 () Bool)

(assert (=> b!2597586 m!2933949))

(declare-fun m!2933951 () Bool)

(assert (=> b!2597587 m!2933951))

(assert (=> b!2597515 d!736073))

(declare-fun d!736075 () Bool)

(declare-fun res!1093568 () Bool)

(declare-fun e!1639531 () Bool)

(assert (=> d!736075 (=> res!1093568 e!1639531)))

(assert (=> d!736075 (= res!1093568 (is-Nil!29914 l1!1546))))

(assert (=> d!736075 (= (forall!6151 l1!1546 lambda!97199) e!1639531)))

(declare-fun b!2597588 () Bool)

(declare-fun e!1639532 () Bool)

(assert (=> b!2597588 (= e!1639531 e!1639532)))

(declare-fun res!1093569 () Bool)

(assert (=> b!2597588 (=> (not res!1093569) (not e!1639532))))

(assert (=> b!2597588 (= res!1093569 (dynLambda!12662 lambda!97199 (h!35334 l1!1546)))))

(declare-fun b!2597589 () Bool)

(assert (=> b!2597589 (= e!1639532 (forall!6151 (t!213027 l1!1546) lambda!97199))))

(assert (= (and d!736075 (not res!1093568)) b!2597588))

(assert (= (and b!2597588 res!1093569) b!2597589))

(declare-fun b_lambda!77703 () Bool)

(assert (=> (not b_lambda!77703) (not b!2597588)))

(declare-fun m!2933953 () Bool)

(assert (=> b!2597588 m!2933953))

(declare-fun m!2933955 () Bool)

(assert (=> b!2597589 m!2933955))

(assert (=> d!736023 d!736075))

(declare-fun b!2597590 () Bool)

(declare-fun e!1639533 () Bool)

(declare-fun tp!823365 () Bool)

(assert (=> b!2597590 (= e!1639533 (and tp_is_empty!13507 tp!823365))))

(assert (=> b!2597528 (= tp!823359 e!1639533)))

(assert (= (and b!2597528 (is-Cons!29914 (t!213027 (t!213027 l1!1546)))) b!2597590))

(declare-fun b!2597591 () Bool)

(declare-fun e!1639534 () Bool)

(declare-fun tp!823366 () Bool)

(assert (=> b!2597591 (= e!1639534 (and tp_is_empty!13507 tp!823366))))

(assert (=> b!2597529 (= tp!823360 e!1639534)))

(assert (= (and b!2597529 (is-Cons!29914 (t!213027 (t!213027 l2!1515)))) b!2597591))

(declare-fun b_lambda!77705 () Bool)

(assert (= b_lambda!77703 (or d!736023 b_lambda!77705)))

(declare-fun bs!473046 () Bool)

(declare-fun d!736077 () Bool)

(assert (= bs!473046 (and d!736077 d!736023)))

(assert (=> bs!473046 (= (dynLambda!12662 lambda!97199 (h!35334 l1!1546)) (not (dynLambda!12662 lambda!97190 (h!35334 l1!1546))))))

(declare-fun b_lambda!77709 () Bool)

(assert (=> (not b_lambda!77709) (not bs!473046)))

(declare-fun m!2933957 () Bool)

(assert (=> bs!473046 m!2933957))

(assert (=> b!2597588 d!736077))

(declare-fun b_lambda!77707 () Bool)

(assert (= b_lambda!77701 (or b!2597450 b_lambda!77707)))

(declare-fun bs!473047 () Bool)

(declare-fun d!736079 () Bool)

(assert (= bs!473047 (and d!736079 b!2597450)))

(assert (=> bs!473047 (= (dynLambda!12662 lambda!97189 (h!35334 (t!213027 l2!1515))) (contains!5462 l1!1546 (h!35334 (t!213027 l2!1515))))))

(declare-fun m!2933959 () Bool)

(assert (=> bs!473047 m!2933959))

(assert (=> b!2597584 d!736079))

(push 1)

(assert (not b_lambda!77695))

(assert (not b_lambda!77705))

(assert (not b!2597573))

(assert (not b!2597581))

(assert (not b!2597579))

(assert (not b!2597575))

(assert (not b!2597583))

(assert (not b_lambda!77709))

(assert (not b!2597589))

(assert (not b!2597577))

(assert (not d!736061))

(assert (not b!2597591))

(assert (not b!2597585))

(assert (not d!736059))

(assert (not b!2597576))

(assert (not b_lambda!77707))

(assert (not d!736055))

(assert (not b!2597590))

(assert (not b!2597586))

(assert (not d!736067))

(assert (not b!2597587))

(assert (not bs!473047))

(assert tp_is_empty!13507)

(assert (not b!2597565))

(assert (not b!2597571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!77711 () Bool)

(assert (= b_lambda!77709 (or b!2597451 b_lambda!77711)))

(declare-fun bs!473048 () Bool)

(declare-fun d!736091 () Bool)

(assert (= bs!473048 (and d!736091 b!2597451)))

(assert (=> bs!473048 (= (dynLambda!12662 lambda!97190 (h!35334 l1!1546)) (not (contains!5462 l2!1515 (h!35334 l1!1546))))))

(assert (=> bs!473048 m!2933843))

(assert (=> bs!473046 d!736091))

(push 1)

(assert (not b_lambda!77695))

(assert (not b_lambda!77705))

(assert (not bs!473048))

(assert (not b!2597581))

(assert (not b!2597579))

(assert (not b!2597575))

(assert (not b!2597583))

(assert (not b!2597589))

(assert (not b!2597577))

(assert (not d!736061))

(assert (not b!2597591))

(assert (not b!2597585))

(assert (not d!736059))

(assert (not b_lambda!77711))

(assert (not b!2597573))

(assert (not b!2597576))

(assert (not b_lambda!77707))

(assert (not d!736055))

(assert (not b!2597590))

(assert (not b!2597586))

(assert (not d!736067))

(assert (not b!2597587))

(assert (not bs!473047))

(assert tp_is_empty!13507)

(assert (not b!2597565))

(assert (not b!2597571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


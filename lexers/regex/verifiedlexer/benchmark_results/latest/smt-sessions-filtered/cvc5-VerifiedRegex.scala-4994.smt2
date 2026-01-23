; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252710 () Bool)

(assert start!252710)

(declare-fun b!2600458 () Bool)

(assert (=> b!2600458 true))

(declare-fun b!2600452 () Bool)

(declare-fun res!1095368 () Bool)

(declare-fun e!1641479 () Bool)

(assert (=> b!2600452 (=> (not res!1095368) (not e!1641479))))

(declare-datatypes ((B!2395 0))(
  ( (B!2396 (val!9665 Int)) )
))
(declare-datatypes ((List!30098 0))(
  ( (Nil!29998) (Cons!29998 (h!35418 B!2395) (t!213147 List!30098)) )
))
(declare-fun l!3766 () List!30098)

(assert (=> b!2600452 (= res!1095368 (not (is-Nil!29998 l!3766)))))

(declare-fun b!2600453 () Bool)

(declare-fun res!1095367 () Bool)

(assert (=> b!2600453 (=> (not res!1095367) (not e!1641479))))

(declare-fun refHd!9 () B!2395)

(declare-fun refL!9 () List!30098)

(declare-fun head!5919 (List!30098) B!2395)

(assert (=> b!2600453 (= res!1095367 (= refHd!9 (head!5919 refL!9)))))

(declare-fun b!2600454 () Bool)

(declare-fun e!1641480 () Bool)

(declare-fun tp_is_empty!13675 () Bool)

(declare-fun tp!823886 () Bool)

(assert (=> b!2600454 (= e!1641480 (and tp_is_empty!13675 tp!823886))))

(declare-fun res!1095366 () Bool)

(assert (=> start!252710 (=> (not res!1095366) (not e!1641479))))

(declare-fun isEmpty!17151 (List!30098) Bool)

(assert (=> start!252710 (= res!1095366 (not (isEmpty!17151 refL!9)))))

(assert (=> start!252710 e!1641479))

(declare-fun e!1641478 () Bool)

(assert (=> start!252710 e!1641478))

(assert (=> start!252710 e!1641480))

(assert (=> start!252710 tp_is_empty!13675))

(declare-fun b!2600455 () Bool)

(declare-fun tp!823885 () Bool)

(assert (=> b!2600455 (= e!1641478 (and tp_is_empty!13675 tp!823885))))

(declare-fun b!2600456 () Bool)

(declare-fun res!1095364 () Bool)

(assert (=> b!2600456 (=> (not res!1095364) (not e!1641479))))

(declare-fun contains!5542 (List!30098 B!2395) Bool)

(assert (=> b!2600456 (= res!1095364 (not (contains!5542 l!3766 refHd!9)))))

(declare-fun b!2600457 () Bool)

(declare-fun lambda!97261 () Int)

(declare-fun forall!6177 (List!30098 Int) Bool)

(assert (=> b!2600457 (= e!1641479 (not (forall!6177 (t!213147 l!3766) lambda!97261)))))

(declare-fun res!1095365 () Bool)

(assert (=> b!2600458 (=> (not res!1095365) (not e!1641479))))

(assert (=> b!2600458 (= res!1095365 (forall!6177 l!3766 lambda!97261))))

(assert (= (and start!252710 res!1095366) b!2600458))

(assert (= (and b!2600458 res!1095365) b!2600453))

(assert (= (and b!2600453 res!1095367) b!2600456))

(assert (= (and b!2600456 res!1095364) b!2600452))

(assert (= (and b!2600452 res!1095368) b!2600457))

(assert (= (and start!252710 (is-Cons!29998 refL!9)) b!2600455))

(assert (= (and start!252710 (is-Cons!29998 l!3766)) b!2600454))

(declare-fun m!2935805 () Bool)

(assert (=> b!2600458 m!2935805))

(declare-fun m!2935807 () Bool)

(assert (=> start!252710 m!2935807))

(declare-fun m!2935809 () Bool)

(assert (=> b!2600456 m!2935809))

(declare-fun m!2935811 () Bool)

(assert (=> b!2600457 m!2935811))

(declare-fun m!2935813 () Bool)

(assert (=> b!2600453 m!2935813))

(push 1)

(assert tp_is_empty!13675)

(assert (not b!2600457))

(assert (not b!2600454))

(assert (not b!2600458))

(assert (not start!252710))

(assert (not b!2600455))

(assert (not b!2600453))

(assert (not b!2600456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736715 () Bool)

(assert (=> d!736715 (= (isEmpty!17151 refL!9) (is-Nil!29998 refL!9))))

(assert (=> start!252710 d!736715))

(declare-fun d!736717 () Bool)

(declare-fun res!1095388 () Bool)

(declare-fun e!1641498 () Bool)

(assert (=> d!736717 (=> res!1095388 e!1641498)))

(assert (=> d!736717 (= res!1095388 (is-Nil!29998 l!3766))))

(assert (=> d!736717 (= (forall!6177 l!3766 lambda!97261) e!1641498)))

(declare-fun b!2600488 () Bool)

(declare-fun e!1641499 () Bool)

(assert (=> b!2600488 (= e!1641498 e!1641499)))

(declare-fun res!1095389 () Bool)

(assert (=> b!2600488 (=> (not res!1095389) (not e!1641499))))

(declare-fun dynLambda!12684 (Int B!2395) Bool)

(assert (=> b!2600488 (= res!1095389 (dynLambda!12684 lambda!97261 (h!35418 l!3766)))))

(declare-fun b!2600489 () Bool)

(assert (=> b!2600489 (= e!1641499 (forall!6177 (t!213147 l!3766) lambda!97261))))

(assert (= (and d!736717 (not res!1095388)) b!2600488))

(assert (= (and b!2600488 res!1095389) b!2600489))

(declare-fun b_lambda!77819 () Bool)

(assert (=> (not b_lambda!77819) (not b!2600488)))

(declare-fun m!2935825 () Bool)

(assert (=> b!2600488 m!2935825))

(assert (=> b!2600489 m!2935811))

(assert (=> b!2600458 d!736717))

(declare-fun d!736719 () Bool)

(assert (=> d!736719 (= (head!5919 refL!9) (h!35418 refL!9))))

(assert (=> b!2600453 d!736719))

(declare-fun d!736721 () Bool)

(declare-fun lt!915284 () Bool)

(declare-fun content!4254 (List!30098) (Set B!2395))

(assert (=> d!736721 (= lt!915284 (set.member refHd!9 (content!4254 l!3766)))))

(declare-fun e!1641505 () Bool)

(assert (=> d!736721 (= lt!915284 e!1641505)))

(declare-fun res!1095395 () Bool)

(assert (=> d!736721 (=> (not res!1095395) (not e!1641505))))

(assert (=> d!736721 (= res!1095395 (is-Cons!29998 l!3766))))

(assert (=> d!736721 (= (contains!5542 l!3766 refHd!9) lt!915284)))

(declare-fun b!2600494 () Bool)

(declare-fun e!1641504 () Bool)

(assert (=> b!2600494 (= e!1641505 e!1641504)))

(declare-fun res!1095394 () Bool)

(assert (=> b!2600494 (=> res!1095394 e!1641504)))

(assert (=> b!2600494 (= res!1095394 (= (h!35418 l!3766) refHd!9))))

(declare-fun b!2600495 () Bool)

(assert (=> b!2600495 (= e!1641504 (contains!5542 (t!213147 l!3766) refHd!9))))

(assert (= (and d!736721 res!1095395) b!2600494))

(assert (= (and b!2600494 (not res!1095394)) b!2600495))

(declare-fun m!2935827 () Bool)

(assert (=> d!736721 m!2935827))

(declare-fun m!2935829 () Bool)

(assert (=> d!736721 m!2935829))

(declare-fun m!2935831 () Bool)

(assert (=> b!2600495 m!2935831))

(assert (=> b!2600456 d!736721))

(declare-fun d!736727 () Bool)

(declare-fun res!1095396 () Bool)

(declare-fun e!1641506 () Bool)

(assert (=> d!736727 (=> res!1095396 e!1641506)))

(assert (=> d!736727 (= res!1095396 (is-Nil!29998 (t!213147 l!3766)))))

(assert (=> d!736727 (= (forall!6177 (t!213147 l!3766) lambda!97261) e!1641506)))

(declare-fun b!2600496 () Bool)

(declare-fun e!1641507 () Bool)

(assert (=> b!2600496 (= e!1641506 e!1641507)))

(declare-fun res!1095397 () Bool)

(assert (=> b!2600496 (=> (not res!1095397) (not e!1641507))))

(assert (=> b!2600496 (= res!1095397 (dynLambda!12684 lambda!97261 (h!35418 (t!213147 l!3766))))))

(declare-fun b!2600497 () Bool)

(assert (=> b!2600497 (= e!1641507 (forall!6177 (t!213147 (t!213147 l!3766)) lambda!97261))))

(assert (= (and d!736727 (not res!1095396)) b!2600496))

(assert (= (and b!2600496 res!1095397) b!2600497))

(declare-fun b_lambda!77821 () Bool)

(assert (=> (not b_lambda!77821) (not b!2600496)))

(declare-fun m!2935833 () Bool)

(assert (=> b!2600496 m!2935833))

(declare-fun m!2935835 () Bool)

(assert (=> b!2600497 m!2935835))

(assert (=> b!2600457 d!736727))

(declare-fun b!2600502 () Bool)

(declare-fun e!1641510 () Bool)

(declare-fun tp!823895 () Bool)

(assert (=> b!2600502 (= e!1641510 (and tp_is_empty!13675 tp!823895))))

(assert (=> b!2600455 (= tp!823885 e!1641510)))

(assert (= (and b!2600455 (is-Cons!29998 (t!213147 refL!9))) b!2600502))

(declare-fun b!2600503 () Bool)

(declare-fun e!1641511 () Bool)

(declare-fun tp!823896 () Bool)

(assert (=> b!2600503 (= e!1641511 (and tp_is_empty!13675 tp!823896))))

(assert (=> b!2600454 (= tp!823886 e!1641511)))

(assert (= (and b!2600454 (is-Cons!29998 (t!213147 l!3766))) b!2600503))

(declare-fun b_lambda!77823 () Bool)

(assert (= b_lambda!77819 (or b!2600458 b_lambda!77823)))

(declare-fun bs!473167 () Bool)

(declare-fun d!736731 () Bool)

(assert (= bs!473167 (and d!736731 b!2600458)))

(assert (=> bs!473167 (= (dynLambda!12684 lambda!97261 (h!35418 l!3766)) (contains!5542 refL!9 (h!35418 l!3766)))))

(declare-fun m!2935837 () Bool)

(assert (=> bs!473167 m!2935837))

(assert (=> b!2600488 d!736731))

(declare-fun b_lambda!77825 () Bool)

(assert (= b_lambda!77821 (or b!2600458 b_lambda!77825)))

(declare-fun bs!473168 () Bool)

(declare-fun d!736733 () Bool)

(assert (= bs!473168 (and d!736733 b!2600458)))

(assert (=> bs!473168 (= (dynLambda!12684 lambda!97261 (h!35418 (t!213147 l!3766))) (contains!5542 refL!9 (h!35418 (t!213147 l!3766))))))

(declare-fun m!2935839 () Bool)

(assert (=> bs!473168 m!2935839))

(assert (=> b!2600496 d!736733))

(push 1)

(assert tp_is_empty!13675)

(assert (not b!2600503))

(assert (not b!2600502))

(assert (not b!2600489))

(assert (not bs!473168))

(assert (not b!2600495))

(assert (not bs!473167))

(assert (not b_lambda!77825))

(assert (not b_lambda!77823))

(assert (not d!736721))

(assert (not b!2600497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


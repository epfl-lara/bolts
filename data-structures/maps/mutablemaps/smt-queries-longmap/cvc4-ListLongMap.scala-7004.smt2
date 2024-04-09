; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88976 () Bool)

(assert start!88976)

(declare-fun b!1020364 () Bool)

(declare-fun e!574379 () Bool)

(declare-fun e!574378 () Bool)

(assert (=> b!1020364 (= e!574379 e!574378)))

(declare-fun res!683999 () Bool)

(assert (=> b!1020364 (=> res!683999 e!574378)))

(declare-datatypes ((B!1734 0))(
  ( (B!1735 (val!11951 Int)) )
))
(declare-datatypes ((tuple2!15538 0))(
  ( (tuple2!15539 (_1!7779 (_ BitVec 64)) (_2!7779 B!1734)) )
))
(declare-datatypes ((List!21753 0))(
  ( (Nil!21750) (Cons!21749 (h!22947 tuple2!15538) (t!30770 List!21753)) )
))
(declare-fun l!1367 () List!21753)

(declare-fun isStrictlySorted!700 (List!21753) Bool)

(assert (=> b!1020364 (= res!683999 (not (isStrictlySorted!700 (t!30770 l!1367))))))

(declare-fun b!1020365 () Bool)

(declare-fun lt!449836 () tuple2!15538)

(declare-fun contains!5944 (List!21753 tuple2!15538) Bool)

(assert (=> b!1020365 (= e!574378 (not (contains!5944 (t!30770 l!1367) lt!449836)))))

(declare-fun b!1020366 () Bool)

(declare-fun e!574381 () Bool)

(declare-fun tp_is_empty!23801 () Bool)

(declare-fun tp!71261 () Bool)

(assert (=> b!1020366 (= e!574381 (and tp_is_empty!23801 tp!71261))))

(declare-fun res!684000 () Bool)

(declare-fun e!574380 () Bool)

(assert (=> start!88976 (=> (not res!684000) (not e!574380))))

(assert (=> start!88976 (= res!684000 (isStrictlySorted!700 l!1367))))

(assert (=> start!88976 e!574380))

(assert (=> start!88976 e!574381))

(assert (=> start!88976 true))

(assert (=> start!88976 tp_is_empty!23801))

(declare-fun b!1020367 () Bool)

(assert (=> b!1020367 (= e!574380 e!574379)))

(declare-fun res!683997 () Bool)

(assert (=> b!1020367 (=> (not res!683997) (not e!574379))))

(assert (=> b!1020367 (= res!683997 (contains!5944 l!1367 lt!449836))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1734)

(assert (=> b!1020367 (= lt!449836 (tuple2!15539 key!393 value!188))))

(declare-fun b!1020368 () Bool)

(declare-fun res!683998 () Bool)

(assert (=> b!1020368 (=> (not res!683998) (not e!574379))))

(assert (=> b!1020368 (= res!683998 (and (is-Cons!21749 l!1367) (not (= (h!22947 l!1367) lt!449836))))))

(assert (= (and start!88976 res!684000) b!1020367))

(assert (= (and b!1020367 res!683997) b!1020368))

(assert (= (and b!1020368 res!683998) b!1020364))

(assert (= (and b!1020364 (not res!683999)) b!1020365))

(assert (= (and start!88976 (is-Cons!21749 l!1367)) b!1020366))

(declare-fun m!940451 () Bool)

(assert (=> b!1020364 m!940451))

(declare-fun m!940453 () Bool)

(assert (=> b!1020365 m!940453))

(declare-fun m!940455 () Bool)

(assert (=> start!88976 m!940455))

(declare-fun m!940457 () Bool)

(assert (=> b!1020367 m!940457))

(push 1)

(assert (not b!1020366))

(assert (not b!1020367))

(assert (not start!88976))

(assert (not b!1020365))

(assert tp_is_empty!23801)

(assert (not b!1020364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122307 () Bool)

(declare-fun lt!449841 () Bool)

(declare-fun content!500 (List!21753) (Set tuple2!15538))

(assert (=> d!122307 (= lt!449841 (member lt!449836 (content!500 (t!30770 l!1367))))))

(declare-fun e!574394 () Bool)

(assert (=> d!122307 (= lt!449841 e!574394)))

(declare-fun res!684013 () Bool)

(assert (=> d!122307 (=> (not res!684013) (not e!574394))))

(assert (=> d!122307 (= res!684013 (is-Cons!21749 (t!30770 l!1367)))))

(assert (=> d!122307 (= (contains!5944 (t!30770 l!1367) lt!449836) lt!449841)))

(declare-fun b!1020381 () Bool)

(declare-fun e!574395 () Bool)

(assert (=> b!1020381 (= e!574394 e!574395)))

(declare-fun res!684014 () Bool)

(assert (=> b!1020381 (=> res!684014 e!574395)))

(assert (=> b!1020381 (= res!684014 (= (h!22947 (t!30770 l!1367)) lt!449836))))

(declare-fun b!1020382 () Bool)

(assert (=> b!1020382 (= e!574395 (contains!5944 (t!30770 (t!30770 l!1367)) lt!449836))))

(assert (= (and d!122307 res!684013) b!1020381))

(assert (= (and b!1020381 (not res!684014)) b!1020382))

(declare-fun m!940459 () Bool)

(assert (=> d!122307 m!940459))

(declare-fun m!940461 () Bool)

(assert (=> d!122307 m!940461))

(declare-fun m!940463 () Bool)

(assert (=> b!1020382 m!940463))

(assert (=> b!1020365 d!122307))

(declare-fun d!122309 () Bool)

(declare-fun res!684025 () Bool)

(declare-fun e!574406 () Bool)

(assert (=> d!122309 (=> res!684025 e!574406)))

(assert (=> d!122309 (= res!684025 (or (is-Nil!21750 l!1367) (is-Nil!21750 (t!30770 l!1367))))))

(assert (=> d!122309 (= (isStrictlySorted!700 l!1367) e!574406)))

(declare-fun b!1020393 () Bool)

(declare-fun e!574407 () Bool)

(assert (=> b!1020393 (= e!574406 e!574407)))

(declare-fun res!684026 () Bool)

(assert (=> b!1020393 (=> (not res!684026) (not e!574407))))

(assert (=> b!1020393 (= res!684026 (bvslt (_1!7779 (h!22947 l!1367)) (_1!7779 (h!22947 (t!30770 l!1367)))))))

(declare-fun b!1020394 () Bool)

(assert (=> b!1020394 (= e!574407 (isStrictlySorted!700 (t!30770 l!1367)))))

(assert (= (and d!122309 (not res!684025)) b!1020393))

(assert (= (and b!1020393 res!684026) b!1020394))

(assert (=> b!1020394 m!940451))

(assert (=> start!88976 d!122309))

(declare-fun d!122317 () Bool)

(declare-fun res!684027 () Bool)

(declare-fun e!574408 () Bool)

(assert (=> d!122317 (=> res!684027 e!574408)))

(assert (=> d!122317 (= res!684027 (or (is-Nil!21750 (t!30770 l!1367)) (is-Nil!21750 (t!30770 (t!30770 l!1367)))))))

(assert (=> d!122317 (= (isStrictlySorted!700 (t!30770 l!1367)) e!574408)))

(declare-fun b!1020395 () Bool)

(declare-fun e!574409 () Bool)

(assert (=> b!1020395 (= e!574408 e!574409)))

(declare-fun res!684028 () Bool)

(assert (=> b!1020395 (=> (not res!684028) (not e!574409))))

(assert (=> b!1020395 (= res!684028 (bvslt (_1!7779 (h!22947 (t!30770 l!1367))) (_1!7779 (h!22947 (t!30770 (t!30770 l!1367))))))))

(declare-fun b!1020396 () Bool)

(assert (=> b!1020396 (= e!574409 (isStrictlySorted!700 (t!30770 (t!30770 l!1367))))))

(assert (= (and d!122317 (not res!684027)) b!1020395))

(assert (= (and b!1020395 res!684028) b!1020396))

(declare-fun m!940475 () Bool)

(assert (=> b!1020396 m!940475))

(assert (=> b!1020364 d!122317))

(declare-fun d!122319 () Bool)

(declare-fun lt!449846 () Bool)

(assert (=> d!122319 (= lt!449846 (member lt!449836 (content!500 l!1367)))))

(declare-fun e!574412 () Bool)

(assert (=> d!122319 (= lt!449846 e!574412)))

(declare-fun res!684031 () Bool)

(assert (=> d!122319 (=> (not res!684031) (not e!574412))))

(assert (=> d!122319 (= res!684031 (is-Cons!21749 l!1367))))

(assert (=> d!122319 (= (contains!5944 l!1367 lt!449836) lt!449846)))

(declare-fun b!1020399 () Bool)

(declare-fun e!574413 () Bool)

(assert (=> b!1020399 (= e!574412 e!574413)))

(declare-fun res!684032 () Bool)

(assert (=> b!1020399 (=> res!684032 e!574413)))

(assert (=> b!1020399 (= res!684032 (= (h!22947 l!1367) lt!449836))))

(declare-fun b!1020400 () Bool)

(assert (=> b!1020400 (= e!574413 (contains!5944 (t!30770 l!1367) lt!449836))))

(assert (= (and d!122319 res!684031) b!1020399))

(assert (= (and b!1020399 (not res!684032)) b!1020400))

(declare-fun m!940477 () Bool)

(assert (=> d!122319 m!940477))

(declare-fun m!940479 () Bool)

(assert (=> d!122319 m!940479))

(assert (=> b!1020400 m!940453))

(assert (=> b!1020367 d!122319))

(declare-fun b!1020407 () Bool)

(declare-fun e!574418 () Bool)

(declare-fun tp!71264 () Bool)

(assert (=> b!1020407 (= e!574418 (and tp_is_empty!23801 tp!71264))))

(assert (=> b!1020366 (= tp!71261 e!574418)))

(assert (= (and b!1020366 (is-Cons!21749 (t!30770 l!1367))) b!1020407))

(push 1)


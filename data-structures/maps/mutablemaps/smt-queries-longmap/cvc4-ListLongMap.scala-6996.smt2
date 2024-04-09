; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88770 () Bool)

(assert start!88770)

(declare-fun b!1019135 () Bool)

(declare-fun e!573558 () Bool)

(declare-fun tp_is_empty!23753 () Bool)

(declare-fun tp!71138 () Bool)

(assert (=> b!1019135 (= e!573558 (and tp_is_empty!23753 tp!71138))))

(declare-fun b!1019136 () Bool)

(declare-fun res!683371 () Bool)

(declare-fun e!573557 () Bool)

(assert (=> b!1019136 (=> (not res!683371) (not e!573557))))

(declare-datatypes ((B!1686 0))(
  ( (B!1687 (val!11927 Int)) )
))
(declare-datatypes ((tuple2!15490 0))(
  ( (tuple2!15491 (_1!7755 (_ BitVec 64)) (_2!7755 B!1686)) )
))
(declare-datatypes ((List!21729 0))(
  ( (Nil!21726) (Cons!21725 (h!22923 tuple2!15490) (t!30741 List!21729)) )
))
(declare-fun l!996 () List!21729)

(declare-fun isStrictlySorted!676 (List!21729) Bool)

(assert (=> b!1019136 (= res!683371 (isStrictlySorted!676 (t!30741 l!996)))))

(declare-fun b!1019137 () Bool)

(declare-fun res!683369 () Bool)

(declare-fun e!573559 () Bool)

(assert (=> b!1019137 (=> (not res!683369) (not e!573559))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!541 (List!21729 (_ BitVec 64)) Bool)

(assert (=> b!1019137 (= res!683369 (containsKey!541 l!996 key!261))))

(declare-fun b!1019138 () Bool)

(declare-fun res!683373 () Bool)

(assert (=> b!1019138 (=> (not res!683373) (not e!573557))))

(assert (=> b!1019138 (= res!683373 (containsKey!541 (t!30741 l!996) key!261))))

(declare-fun b!1019139 () Bool)

(assert (=> b!1019139 (= e!573559 e!573557)))

(declare-fun res!683372 () Bool)

(assert (=> b!1019139 (=> (not res!683372) (not e!573557))))

(assert (=> b!1019139 (= res!683372 (and (is-Cons!21725 l!996) (bvslt (_1!7755 (h!22923 l!996)) key!261)))))

(declare-fun value!172 () B!1686)

(declare-fun lt!449616 () List!21729)

(declare-fun insertStrictlySorted!358 (List!21729 (_ BitVec 64) B!1686) List!21729)

(assert (=> b!1019139 (= lt!449616 (insertStrictlySorted!358 l!996 key!261 value!172))))

(declare-fun b!1019140 () Bool)

(declare-fun ListPrimitiveSize!138 (List!21729) Int)

(assert (=> b!1019140 (= e!573557 (>= (ListPrimitiveSize!138 (t!30741 l!996)) (ListPrimitiveSize!138 l!996)))))

(declare-fun res!683370 () Bool)

(assert (=> start!88770 (=> (not res!683370) (not e!573559))))

(assert (=> start!88770 (= res!683370 (isStrictlySorted!676 l!996))))

(assert (=> start!88770 e!573559))

(assert (=> start!88770 e!573558))

(assert (=> start!88770 true))

(assert (=> start!88770 tp_is_empty!23753))

(assert (= (and start!88770 res!683370) b!1019137))

(assert (= (and b!1019137 res!683369) b!1019139))

(assert (= (and b!1019139 res!683372) b!1019136))

(assert (= (and b!1019136 res!683371) b!1019138))

(assert (= (and b!1019138 res!683373) b!1019140))

(assert (= (and start!88770 (is-Cons!21725 l!996)) b!1019135))

(declare-fun m!939753 () Bool)

(assert (=> b!1019139 m!939753))

(declare-fun m!939755 () Bool)

(assert (=> b!1019136 m!939755))

(declare-fun m!939757 () Bool)

(assert (=> b!1019140 m!939757))

(declare-fun m!939759 () Bool)

(assert (=> b!1019140 m!939759))

(declare-fun m!939761 () Bool)

(assert (=> b!1019137 m!939761))

(declare-fun m!939763 () Bool)

(assert (=> b!1019138 m!939763))

(declare-fun m!939765 () Bool)

(assert (=> start!88770 m!939765))

(push 1)

(assert (not b!1019136))

(assert (not b!1019138))

(assert (not b!1019137))

(assert (not b!1019139))

(assert tp_is_empty!23753)

(assert (not start!88770))

(assert (not b!1019140))

(assert (not b!1019135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1019239 () Bool)

(declare-fun res!683408 () Bool)

(declare-fun e!573621 () Bool)

(assert (=> b!1019239 (=> (not res!683408) (not e!573621))))

(declare-fun lt!449628 () List!21729)

(assert (=> b!1019239 (= res!683408 (containsKey!541 lt!449628 key!261))))

(declare-fun b!1019240 () Bool)

(declare-fun contains!5918 (List!21729 tuple2!15490) Bool)

(assert (=> b!1019240 (= e!573621 (contains!5918 lt!449628 (tuple2!15491 key!261 value!172)))))

(declare-fun b!1019241 () Bool)

(declare-fun e!573623 () List!21729)

(declare-fun c!103257 () Bool)

(declare-fun c!103255 () Bool)

(assert (=> b!1019241 (= e!573623 (ite c!103255 (t!30741 l!996) (ite c!103257 (Cons!21725 (h!22923 l!996) (t!30741 l!996)) Nil!21726)))))

(declare-fun bm!43070 () Bool)

(declare-fun call!43073 () List!21729)

(declare-fun call!43075 () List!21729)

(assert (=> bm!43070 (= call!43073 call!43075)))

(declare-fun b!1019242 () Bool)

(declare-fun e!573619 () List!21729)

(declare-fun call!43074 () List!21729)

(assert (=> b!1019242 (= e!573619 call!43074)))

(declare-fun b!1019243 () Bool)

(declare-fun e!573620 () List!21729)

(assert (=> b!1019243 (= e!573620 call!43075)))

(declare-fun b!1019244 () Bool)

(declare-fun e!573622 () List!21729)

(assert (=> b!1019244 (= e!573622 call!43073)))

(declare-fun b!1019245 () Bool)

(assert (=> b!1019245 (= c!103257 (and (is-Cons!21725 l!996) (bvsgt (_1!7755 (h!22923 l!996)) key!261)))))

(assert (=> b!1019245 (= e!573620 e!573622)))

(declare-fun b!1019246 () Bool)

(assert (=> b!1019246 (= e!573623 (insertStrictlySorted!358 (t!30741 l!996) key!261 value!172))))

(declare-fun bm!43072 () Bool)

(assert (=> bm!43072 (= call!43075 call!43074)))

(declare-fun b!1019247 () Bool)

(assert (=> b!1019247 (= e!573619 e!573620)))

(assert (=> b!1019247 (= c!103255 (and (is-Cons!21725 l!996) (= (_1!7755 (h!22923 l!996)) key!261)))))

(declare-fun b!1019248 () Bool)

(assert (=> b!1019248 (= e!573622 call!43073)))

(declare-fun d!121987 () Bool)

(assert (=> d!121987 e!573621))

(declare-fun res!683409 () Bool)

(assert (=> d!121987 (=> (not res!683409) (not e!573621))))

(assert (=> d!121987 (= res!683409 (isStrictlySorted!676 lt!449628))))

(assert (=> d!121987 (= lt!449628 e!573619)))

(declare-fun c!103256 () Bool)

(assert (=> d!121987 (= c!103256 (and (is-Cons!21725 l!996) (bvslt (_1!7755 (h!22923 l!996)) key!261)))))

(assert (=> d!121987 (isStrictlySorted!676 l!996)))

(assert (=> d!121987 (= (insertStrictlySorted!358 l!996 key!261 value!172) lt!449628)))

(declare-fun bm!43071 () Bool)

(declare-fun $colon$colon!590 (List!21729 tuple2!15490) List!21729)

(assert (=> bm!43071 (= call!43074 ($colon$colon!590 e!573623 (ite c!103256 (h!22923 l!996) (tuple2!15491 key!261 value!172))))))

(declare-fun c!103258 () Bool)

(assert (=> bm!43071 (= c!103258 c!103256)))

(assert (= (and d!121987 c!103256) b!1019242))

(assert (= (and d!121987 (not c!103256)) b!1019247))

(assert (= (and b!1019247 c!103255) b!1019243))

(assert (= (and b!1019247 (not c!103255)) b!1019245))

(assert (= (and b!1019245 c!103257) b!1019248))

(assert (= (and b!1019245 (not c!103257)) b!1019244))

(assert (= (or b!1019248 b!1019244) bm!43070))

(assert (= (or b!1019243 bm!43070) bm!43072))

(assert (= (or b!1019242 bm!43072) bm!43071))

(assert (= (and bm!43071 c!103258) b!1019246))

(assert (= (and bm!43071 (not c!103258)) b!1019241))

(assert (= (and d!121987 res!683409) b!1019239))

(assert (= (and b!1019239 res!683408) b!1019240))

(declare-fun m!939785 () Bool)

(assert (=> d!121987 m!939785))

(assert (=> d!121987 m!939765))

(declare-fun m!939787 () Bool)

(assert (=> b!1019246 m!939787))

(declare-fun m!939789 () Bool)

(assert (=> b!1019240 m!939789))

(declare-fun m!939791 () Bool)

(assert (=> b!1019239 m!939791))

(declare-fun m!939793 () Bool)

(assert (=> bm!43071 m!939793))

(assert (=> b!1019139 d!121987))

(declare-fun d!121997 () Bool)

(declare-fun lt!449632 () Int)

(assert (=> d!121997 (>= lt!449632 0)))

(declare-fun e!573637 () Int)

(assert (=> d!121997 (= lt!449632 e!573637)))

(declare-fun c!103265 () Bool)

(assert (=> d!121997 (= c!103265 (is-Nil!21726 (t!30741 l!996)))))

(assert (=> d!121997 (= (ListPrimitiveSize!138 (t!30741 l!996)) lt!449632)))

(declare-fun b!1019269 () Bool)

(assert (=> b!1019269 (= e!573637 0)))

(declare-fun b!1019270 () Bool)

(assert (=> b!1019270 (= e!573637 (+ 1 (ListPrimitiveSize!138 (t!30741 (t!30741 l!996)))))))

(assert (= (and d!121997 c!103265) b!1019269))

(assert (= (and d!121997 (not c!103265)) b!1019270))

(declare-fun m!939797 () Bool)

(assert (=> b!1019270 m!939797))

(assert (=> b!1019140 d!121997))

(declare-fun d!121999 () Bool)

(declare-fun lt!449633 () Int)

(assert (=> d!121999 (>= lt!449633 0)))

(declare-fun e!573638 () Int)

(assert (=> d!121999 (= lt!449633 e!573638)))

(declare-fun c!103266 () Bool)

(assert (=> d!121999 (= c!103266 (is-Nil!21726 l!996))))

(assert (=> d!121999 (= (ListPrimitiveSize!138 l!996) lt!449633)))

(declare-fun b!1019271 () Bool)

(assert (=> b!1019271 (= e!573638 0)))

(declare-fun b!1019272 () Bool)

(assert (=> b!1019272 (= e!573638 (+ 1 (ListPrimitiveSize!138 (t!30741 l!996))))))

(assert (= (and d!121999 c!103266) b!1019271))

(assert (= (and d!121999 (not c!103266)) b!1019272))

(assert (=> b!1019272 m!939757))

(assert (=> b!1019140 d!121999))

(declare-fun d!122003 () Bool)

(declare-fun res!683426 () Bool)

(declare-fun e!573653 () Bool)

(assert (=> d!122003 (=> res!683426 e!573653)))

(assert (=> d!122003 (= res!683426 (or (is-Nil!21726 (t!30741 l!996)) (is-Nil!21726 (t!30741 (t!30741 l!996)))))))

(assert (=> d!122003 (= (isStrictlySorted!676 (t!30741 l!996)) e!573653)))

(declare-fun b!1019292 () Bool)

(declare-fun e!573654 () Bool)

(assert (=> b!1019292 (= e!573653 e!573654)))

(declare-fun res!683427 () Bool)

(assert (=> b!1019292 (=> (not res!683427) (not e!573654))))

(assert (=> b!1019292 (= res!683427 (bvslt (_1!7755 (h!22923 (t!30741 l!996))) (_1!7755 (h!22923 (t!30741 (t!30741 l!996))))))))

(declare-fun b!1019293 () Bool)

(assert (=> b!1019293 (= e!573654 (isStrictlySorted!676 (t!30741 (t!30741 l!996))))))

(assert (= (and d!122003 (not res!683426)) b!1019292))

(assert (= (and b!1019292 res!683427) b!1019293))

(declare-fun m!939811 () Bool)

(assert (=> b!1019293 m!939811))

(assert (=> b!1019136 d!122003))

(declare-fun d!122009 () Bool)

(declare-fun res!683434 () Bool)

(declare-fun e!573665 () Bool)

(assert (=> d!122009 (=> res!683434 e!573665)))

(assert (=> d!122009 (= res!683434 (and (is-Cons!21725 (t!30741 l!996)) (= (_1!7755 (h!22923 (t!30741 l!996))) key!261)))))

(assert (=> d!122009 (= (containsKey!541 (t!30741 l!996) key!261) e!573665)))

(declare-fun b!1019307 () Bool)

(declare-fun e!573666 () Bool)

(assert (=> b!1019307 (= e!573665 e!573666)))

(declare-fun res!683435 () Bool)

(assert (=> b!1019307 (=> (not res!683435) (not e!573666))))

(assert (=> b!1019307 (= res!683435 (and (or (not (is-Cons!21725 (t!30741 l!996))) (bvsle (_1!7755 (h!22923 (t!30741 l!996))) key!261)) (is-Cons!21725 (t!30741 l!996)) (bvslt (_1!7755 (h!22923 (t!30741 l!996))) key!261)))))

(declare-fun b!1019308 () Bool)

(assert (=> b!1019308 (= e!573666 (containsKey!541 (t!30741 (t!30741 l!996)) key!261))))

(assert (= (and d!122009 (not res!683434)) b!1019307))

(assert (= (and b!1019307 res!683435) b!1019308))

(declare-fun m!939813 () Bool)

(assert (=> b!1019308 m!939813))

(assert (=> b!1019138 d!122009))

(declare-fun d!122013 () Bool)

(declare-fun res!683436 () Bool)

(declare-fun e!573667 () Bool)

(assert (=> d!122013 (=> res!683436 e!573667)))

(assert (=> d!122013 (= res!683436 (or (is-Nil!21726 l!996) (is-Nil!21726 (t!30741 l!996))))))

(assert (=> d!122013 (= (isStrictlySorted!676 l!996) e!573667)))


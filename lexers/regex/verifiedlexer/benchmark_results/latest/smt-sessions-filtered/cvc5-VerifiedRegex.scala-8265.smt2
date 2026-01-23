; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429498 () Bool)

(assert start!429498)

(declare-fun b!4412502 () Bool)

(declare-fun res!1821618 () Bool)

(declare-fun e!2747868 () Bool)

(assert (=> b!4412502 (=> res!1821618 e!2747868)))

(declare-datatypes ((V!10974 0))(
  ( (V!10975 (val!16853 Int)) )
))
(declare-datatypes ((K!10728 0))(
  ( (K!10729 (val!16854 Int)) )
))
(declare-datatypes ((tuple2!49026 0))(
  ( (tuple2!49027 (_1!27807 K!10728) (_2!27807 V!10974)) )
))
(declare-datatypes ((List!49495 0))(
  ( (Nil!49371) (Cons!49371 (h!55016 tuple2!49026) (t!356433 List!49495)) )
))
(declare-datatypes ((tuple2!49028 0))(
  ( (tuple2!49029 (_1!27808 (_ BitVec 64)) (_2!27808 List!49495)) )
))
(declare-datatypes ((List!49496 0))(
  ( (Nil!49372) (Cons!49372 (h!55017 tuple2!49028) (t!356434 List!49496)) )
))
(declare-datatypes ((ListLongMap!1961 0))(
  ( (ListLongMap!1962 (toList!3311 List!49496)) )
))
(declare-fun lt!1614783 () ListLongMap!1961)

(declare-fun lt!1614781 () tuple2!49028)

(declare-fun head!9141 (List!49496) tuple2!49028)

(assert (=> b!4412502 (= res!1821618 (not (= (head!9141 (toList!3311 lt!1614783)) lt!1614781)))))

(declare-fun e!2747869 () Bool)

(declare-fun tp_is_empty!25895 () Bool)

(declare-fun b!4412503 () Bool)

(declare-fun tp!1332272 () Bool)

(declare-fun tp_is_empty!25893 () Bool)

(assert (=> b!4412503 (= e!2747869 (and tp_is_empty!25895 tp_is_empty!25893 tp!1332272))))

(declare-fun b!4412504 () Bool)

(declare-fun newValue!93 () V!10974)

(declare-fun key!3717 () K!10728)

(declare-fun e!2747871 () Bool)

(declare-fun lt!1614779 () Bool)

(declare-fun newBucket!194 () List!49495)

(assert (=> b!4412504 (= e!2747871 (and (not lt!1614779) (= newBucket!194 (Cons!49371 (tuple2!49027 key!3717 newValue!93) Nil!49371))))))

(declare-fun b!4412505 () Bool)

(declare-fun res!1821621 () Bool)

(declare-fun e!2747865 () Bool)

(assert (=> b!4412505 (=> (not res!1821621) (not e!2747865))))

(declare-datatypes ((Hashable!5056 0))(
  ( (HashableExt!5055 (__x!30759 Int)) )
))
(declare-fun hashF!1220 () Hashable!5056)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!1963 (Hashable!5056 K!10728) (_ BitVec 64))

(assert (=> b!4412505 (= res!1821621 (= (hash!1963 hashF!1220 key!3717) hash!366))))

(declare-fun b!4412506 () Bool)

(declare-fun res!1821620 () Bool)

(assert (=> b!4412506 (=> (not res!1821620) (not e!2747865))))

(declare-fun allKeysSameHash!622 (List!49495 (_ BitVec 64) Hashable!5056) Bool)

(assert (=> b!4412506 (= res!1821620 (allKeysSameHash!622 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4412507 () Bool)

(declare-fun res!1821622 () Bool)

(assert (=> b!4412507 (=> (not res!1821622) (not e!2747865))))

(declare-fun lm!1616 () ListLongMap!1961)

(declare-datatypes ((ListMap!2555 0))(
  ( (ListMap!2556 (toList!3312 List!49495)) )
))
(declare-fun contains!11804 (ListMap!2555 K!10728) Bool)

(declare-fun extractMap!723 (List!49496) ListMap!2555)

(assert (=> b!4412507 (= res!1821622 (not (contains!11804 (extractMap!723 (toList!3311 lm!1616)) key!3717)))))

(declare-fun b!4412508 () Bool)

(declare-fun res!1821615 () Bool)

(assert (=> b!4412508 (=> res!1821615 e!2747868)))

(declare-fun tail!7150 (List!49496) List!49496)

(assert (=> b!4412508 (= res!1821615 (not (= (tail!7150 (toList!3311 lt!1614783)) (t!356434 (toList!3311 lm!1616)))))))

(declare-fun b!4412509 () Bool)

(declare-fun e!2747867 () Bool)

(declare-fun tp!1332271 () Bool)

(assert (=> b!4412509 (= e!2747867 tp!1332271)))

(declare-fun b!4412510 () Bool)

(declare-fun lambda!150992 () Int)

(declare-fun forall!9432 (List!49496 Int) Bool)

(assert (=> b!4412510 (= e!2747868 (forall!9432 (t!356434 (toList!3311 lm!1616)) lambda!150992))))

(declare-fun b!4412511 () Bool)

(declare-fun res!1821619 () Bool)

(declare-fun e!2747870 () Bool)

(assert (=> b!4412511 (=> (not res!1821619) (not e!2747870))))

(assert (=> b!4412511 (= res!1821619 (forall!9432 (toList!3311 lm!1616) lambda!150992))))

(declare-fun b!4412512 () Bool)

(declare-fun res!1821609 () Bool)

(assert (=> b!4412512 (=> (not res!1821609) (not e!2747870))))

(declare-fun noDuplicateKeys!662 (List!49495) Bool)

(assert (=> b!4412512 (= res!1821609 (noDuplicateKeys!662 newBucket!194))))

(declare-fun res!1821614 () Bool)

(assert (=> start!429498 (=> (not res!1821614) (not e!2747865))))

(assert (=> start!429498 (= res!1821614 (forall!9432 (toList!3311 lm!1616) lambda!150992))))

(assert (=> start!429498 e!2747865))

(assert (=> start!429498 tp_is_empty!25893))

(assert (=> start!429498 tp_is_empty!25895))

(assert (=> start!429498 e!2747869))

(declare-fun inv!64915 (ListLongMap!1961) Bool)

(assert (=> start!429498 (and (inv!64915 lm!1616) e!2747867)))

(assert (=> start!429498 true))

(declare-fun b!4412513 () Bool)

(assert (=> b!4412513 (= e!2747865 e!2747870)))

(declare-fun res!1821617 () Bool)

(assert (=> b!4412513 (=> (not res!1821617) (not e!2747870))))

(assert (=> b!4412513 (= res!1821617 e!2747871)))

(declare-fun res!1821613 () Bool)

(assert (=> b!4412513 (=> res!1821613 e!2747871)))

(declare-fun e!2747866 () Bool)

(assert (=> b!4412513 (= res!1821613 e!2747866)))

(declare-fun res!1821611 () Bool)

(assert (=> b!4412513 (=> (not res!1821611) (not e!2747866))))

(declare-fun lt!1614782 () Bool)

(assert (=> b!4412513 (= res!1821611 (not lt!1614782))))

(assert (=> b!4412513 (= lt!1614782 (not lt!1614779))))

(declare-fun contains!11805 (ListLongMap!1961 (_ BitVec 64)) Bool)

(assert (=> b!4412513 (= lt!1614779 (contains!11805 lm!1616 hash!366))))

(declare-fun b!4412514 () Bool)

(declare-fun res!1821610 () Bool)

(assert (=> b!4412514 (=> res!1821610 e!2747868)))

(assert (=> b!4412514 (= res!1821610 (or (not (is-Cons!49372 (toList!3311 lm!1616))) (not (= (_1!27808 (h!55017 (toList!3311 lm!1616))) hash!366)) lt!1614782))))

(declare-fun b!4412515 () Bool)

(assert (=> b!4412515 (= e!2747870 (not e!2747868))))

(declare-fun res!1821616 () Bool)

(assert (=> b!4412515 (=> res!1821616 e!2747868)))

(assert (=> b!4412515 (= res!1821616 (not (forall!9432 (toList!3311 lt!1614783) lambda!150992)))))

(assert (=> b!4412515 (forall!9432 (toList!3311 lt!1614783) lambda!150992)))

(declare-fun +!931 (ListLongMap!1961 tuple2!49028) ListLongMap!1961)

(assert (=> b!4412515 (= lt!1614783 (+!931 lm!1616 lt!1614781))))

(assert (=> b!4412515 (= lt!1614781 (tuple2!49029 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80509 0))(
  ( (Unit!80510) )
))
(declare-fun lt!1614780 () Unit!80509)

(declare-fun addValidProp!306 (ListLongMap!1961 Int (_ BitVec 64) List!49495) Unit!80509)

(assert (=> b!4412515 (= lt!1614780 (addValidProp!306 lm!1616 lambda!150992 hash!366 newBucket!194))))

(declare-fun b!4412516 () Bool)

(declare-fun apply!11514 (ListLongMap!1961 (_ BitVec 64)) List!49495)

(assert (=> b!4412516 (= e!2747866 (= newBucket!194 (Cons!49371 (tuple2!49027 key!3717 newValue!93) (apply!11514 lm!1616 hash!366))))))

(declare-fun b!4412517 () Bool)

(declare-fun res!1821612 () Bool)

(assert (=> b!4412517 (=> (not res!1821612) (not e!2747865))))

(declare-fun allKeysSameHashInMap!768 (ListLongMap!1961 Hashable!5056) Bool)

(assert (=> b!4412517 (= res!1821612 (allKeysSameHashInMap!768 lm!1616 hashF!1220))))

(assert (= (and start!429498 res!1821614) b!4412517))

(assert (= (and b!4412517 res!1821612) b!4412505))

(assert (= (and b!4412505 res!1821621) b!4412506))

(assert (= (and b!4412506 res!1821620) b!4412507))

(assert (= (and b!4412507 res!1821622) b!4412513))

(assert (= (and b!4412513 res!1821611) b!4412516))

(assert (= (and b!4412513 (not res!1821613)) b!4412504))

(assert (= (and b!4412513 res!1821617) b!4412512))

(assert (= (and b!4412512 res!1821609) b!4412511))

(assert (= (and b!4412511 res!1821619) b!4412515))

(assert (= (and b!4412515 (not res!1821616)) b!4412514))

(assert (= (and b!4412514 (not res!1821610)) b!4412502))

(assert (= (and b!4412502 (not res!1821618)) b!4412508))

(assert (= (and b!4412508 (not res!1821615)) b!4412510))

(assert (= (and start!429498 (is-Cons!49371 newBucket!194)) b!4412503))

(assert (= start!429498 b!4412509))

(declare-fun m!5088167 () Bool)

(assert (=> start!429498 m!5088167))

(declare-fun m!5088169 () Bool)

(assert (=> start!429498 m!5088169))

(declare-fun m!5088171 () Bool)

(assert (=> b!4412502 m!5088171))

(declare-fun m!5088173 () Bool)

(assert (=> b!4412506 m!5088173))

(declare-fun m!5088175 () Bool)

(assert (=> b!4412513 m!5088175))

(declare-fun m!5088177 () Bool)

(assert (=> b!4412515 m!5088177))

(assert (=> b!4412515 m!5088177))

(declare-fun m!5088179 () Bool)

(assert (=> b!4412515 m!5088179))

(declare-fun m!5088181 () Bool)

(assert (=> b!4412515 m!5088181))

(declare-fun m!5088183 () Bool)

(assert (=> b!4412510 m!5088183))

(declare-fun m!5088185 () Bool)

(assert (=> b!4412516 m!5088185))

(declare-fun m!5088187 () Bool)

(assert (=> b!4412507 m!5088187))

(assert (=> b!4412507 m!5088187))

(declare-fun m!5088189 () Bool)

(assert (=> b!4412507 m!5088189))

(declare-fun m!5088191 () Bool)

(assert (=> b!4412512 m!5088191))

(declare-fun m!5088193 () Bool)

(assert (=> b!4412508 m!5088193))

(declare-fun m!5088195 () Bool)

(assert (=> b!4412505 m!5088195))

(declare-fun m!5088197 () Bool)

(assert (=> b!4412517 m!5088197))

(assert (=> b!4412511 m!5088167))

(push 1)

(assert (not b!4412515))

(assert (not b!4412512))

(assert tp_is_empty!25895)

(assert (not b!4412505))

(assert (not b!4412502))

(assert (not b!4412516))

(assert (not start!429498))

(assert (not b!4412513))

(assert (not b!4412510))

(assert (not b!4412511))

(assert (not b!4412509))

(assert tp_is_empty!25893)

(assert (not b!4412506))

(assert (not b!4412517))

(assert (not b!4412508))

(assert (not b!4412503))

(assert (not b!4412507))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1337204 () Bool)

(assert (=> d!1337204 (= (tail!7150 (toList!3311 lt!1614783)) (t!356434 (toList!3311 lt!1614783)))))

(assert (=> b!4412508 d!1337204))

(declare-fun d!1337206 () Bool)

(declare-fun res!1821669 () Bool)

(declare-fun e!2747897 () Bool)

(assert (=> d!1337206 (=> res!1821669 e!2747897)))

(assert (=> d!1337206 (= res!1821669 (is-Nil!49372 (toList!3311 lm!1616)))))

(assert (=> d!1337206 (= (forall!9432 (toList!3311 lm!1616) lambda!150992) e!2747897)))

(declare-fun b!4412570 () Bool)

(declare-fun e!2747898 () Bool)

(assert (=> b!4412570 (= e!2747897 e!2747898)))

(declare-fun res!1821670 () Bool)

(assert (=> b!4412570 (=> (not res!1821670) (not e!2747898))))

(declare-fun dynLambda!20797 (Int tuple2!49028) Bool)

(assert (=> b!4412570 (= res!1821670 (dynLambda!20797 lambda!150992 (h!55017 (toList!3311 lm!1616))))))

(declare-fun b!4412571 () Bool)

(assert (=> b!4412571 (= e!2747898 (forall!9432 (t!356434 (toList!3311 lm!1616)) lambda!150992))))

(assert (= (and d!1337206 (not res!1821669)) b!4412570))

(assert (= (and b!4412570 res!1821670) b!4412571))

(declare-fun b_lambda!141975 () Bool)

(assert (=> (not b_lambda!141975) (not b!4412570)))

(declare-fun m!5088231 () Bool)

(assert (=> b!4412570 m!5088231))

(assert (=> b!4412571 m!5088183))

(assert (=> start!429498 d!1337206))

(declare-fun d!1337208 () Bool)

(declare-fun isStrictlySorted!194 (List!49496) Bool)

(assert (=> d!1337208 (= (inv!64915 lm!1616) (isStrictlySorted!194 (toList!3311 lm!1616)))))

(declare-fun bs!752881 () Bool)

(assert (= bs!752881 d!1337208))

(declare-fun m!5088233 () Bool)

(assert (=> bs!752881 m!5088233))

(assert (=> start!429498 d!1337208))

(declare-fun d!1337210 () Bool)

(assert (=> d!1337210 true))

(assert (=> d!1337210 true))

(declare-fun lambda!151006 () Int)

(declare-fun forall!9434 (List!49495 Int) Bool)

(assert (=> d!1337210 (= (allKeysSameHash!622 newBucket!194 hash!366 hashF!1220) (forall!9434 newBucket!194 lambda!151006))))

(declare-fun bs!752882 () Bool)

(assert (= bs!752882 d!1337210))

(declare-fun m!5088235 () Bool)

(assert (=> bs!752882 m!5088235))

(assert (=> b!4412506 d!1337210))

(declare-fun bs!752883 () Bool)

(declare-fun d!1337212 () Bool)

(assert (= bs!752883 (and d!1337212 start!429498)))

(declare-fun lambda!151009 () Int)

(assert (=> bs!752883 (not (= lambda!151009 lambda!150992))))

(assert (=> d!1337212 true))

(assert (=> d!1337212 (= (allKeysSameHashInMap!768 lm!1616 hashF!1220) (forall!9432 (toList!3311 lm!1616) lambda!151009))))

(declare-fun bs!752884 () Bool)

(assert (= bs!752884 d!1337212))

(declare-fun m!5088237 () Bool)

(assert (=> bs!752884 m!5088237))

(assert (=> b!4412517 d!1337212))

(declare-fun b!4412602 () Bool)

(declare-fun e!2747921 () Unit!80509)

(declare-fun Unit!80513 () Unit!80509)

(assert (=> b!4412602 (= e!2747921 Unit!80513)))

(declare-fun b!4412603 () Bool)

(declare-fun e!2747922 () Bool)

(declare-fun e!2747917 () Bool)

(assert (=> b!4412603 (= e!2747922 e!2747917)))

(declare-fun res!1821685 () Bool)

(assert (=> b!4412603 (=> (not res!1821685) (not e!2747917))))

(declare-datatypes ((Option!10649 0))(
  ( (None!10648) (Some!10648 (v!43808 V!10974)) )
))
(declare-fun isDefined!7942 (Option!10649) Bool)

(declare-fun getValueByKey!635 (List!49495 K!10728) Option!10649)

(assert (=> b!4412603 (= res!1821685 (isDefined!7942 (getValueByKey!635 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717)))))

(declare-fun b!4412604 () Bool)

(declare-datatypes ((List!49499 0))(
  ( (Nil!49375) (Cons!49375 (h!55021 K!10728) (t!356437 List!49499)) )
))
(declare-fun e!2747919 () List!49499)

(declare-fun keys!16805 (ListMap!2555) List!49499)

(assert (=> b!4412604 (= e!2747919 (keys!16805 (extractMap!723 (toList!3311 lm!1616))))))

(declare-fun d!1337214 () Bool)

(assert (=> d!1337214 e!2747922))

(declare-fun res!1821683 () Bool)

(assert (=> d!1337214 (=> res!1821683 e!2747922)))

(declare-fun e!2747920 () Bool)

(assert (=> d!1337214 (= res!1821683 e!2747920)))

(declare-fun res!1821684 () Bool)

(assert (=> d!1337214 (=> (not res!1821684) (not e!2747920))))

(declare-fun lt!1614820 () Bool)

(assert (=> d!1337214 (= res!1821684 (not lt!1614820))))

(declare-fun lt!1614821 () Bool)

(assert (=> d!1337214 (= lt!1614820 lt!1614821)))

(declare-fun lt!1614816 () Unit!80509)

(declare-fun e!2747918 () Unit!80509)

(assert (=> d!1337214 (= lt!1614816 e!2747918)))

(declare-fun c!751526 () Bool)

(assert (=> d!1337214 (= c!751526 lt!1614821)))

(declare-fun containsKey!998 (List!49495 K!10728) Bool)

(assert (=> d!1337214 (= lt!1614821 (containsKey!998 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717))))

(assert (=> d!1337214 (= (contains!11804 (extractMap!723 (toList!3311 lm!1616)) key!3717) lt!1614820)))

(declare-fun b!4412605 () Bool)

(declare-fun lt!1614818 () Unit!80509)

(assert (=> b!4412605 (= e!2747918 lt!1614818)))

(declare-fun lt!1614817 () Unit!80509)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!545 (List!49495 K!10728) Unit!80509)

(assert (=> b!4412605 (= lt!1614817 (lemmaContainsKeyImpliesGetValueByKeyDefined!545 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717))))

(assert (=> b!4412605 (isDefined!7942 (getValueByKey!635 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717))))

(declare-fun lt!1614819 () Unit!80509)

(assert (=> b!4412605 (= lt!1614819 lt!1614817)))

(declare-fun lemmaInListThenGetKeysListContains!212 (List!49495 K!10728) Unit!80509)

(assert (=> b!4412605 (= lt!1614818 (lemmaInListThenGetKeysListContains!212 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717))))

(declare-fun call!307123 () Bool)

(assert (=> b!4412605 call!307123))

(declare-fun bm!307118 () Bool)

(declare-fun contains!11808 (List!49499 K!10728) Bool)

(assert (=> bm!307118 (= call!307123 (contains!11808 e!2747919 key!3717))))

(declare-fun c!751527 () Bool)

(assert (=> bm!307118 (= c!751527 c!751526)))

(declare-fun b!4412606 () Bool)

(assert (=> b!4412606 (= e!2747918 e!2747921)))

(declare-fun c!751528 () Bool)

(assert (=> b!4412606 (= c!751528 call!307123)))

(declare-fun b!4412607 () Bool)

(assert (=> b!4412607 false))

(declare-fun lt!1614815 () Unit!80509)

(declare-fun lt!1614822 () Unit!80509)

(assert (=> b!4412607 (= lt!1614815 lt!1614822)))

(assert (=> b!4412607 (containsKey!998 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!213 (List!49495 K!10728) Unit!80509)

(assert (=> b!4412607 (= lt!1614822 (lemmaInGetKeysListThenContainsKey!213 (toList!3312 (extractMap!723 (toList!3311 lm!1616))) key!3717))))

(declare-fun Unit!80514 () Unit!80509)

(assert (=> b!4412607 (= e!2747921 Unit!80514)))

(declare-fun b!4412608 () Bool)

(assert (=> b!4412608 (= e!2747917 (contains!11808 (keys!16805 (extractMap!723 (toList!3311 lm!1616))) key!3717))))

(declare-fun b!4412609 () Bool)

(assert (=> b!4412609 (= e!2747920 (not (contains!11808 (keys!16805 (extractMap!723 (toList!3311 lm!1616))) key!3717)))))

(declare-fun b!4412610 () Bool)

(declare-fun getKeysList!215 (List!49495) List!49499)

(assert (=> b!4412610 (= e!2747919 (getKeysList!215 (toList!3312 (extractMap!723 (toList!3311 lm!1616)))))))

(assert (= (and d!1337214 c!751526) b!4412605))

(assert (= (and d!1337214 (not c!751526)) b!4412606))

(assert (= (and b!4412606 c!751528) b!4412607))

(assert (= (and b!4412606 (not c!751528)) b!4412602))

(assert (= (or b!4412605 b!4412606) bm!307118))

(assert (= (and bm!307118 c!751527) b!4412610))

(assert (= (and bm!307118 (not c!751527)) b!4412604))

(assert (= (and d!1337214 res!1821684) b!4412609))

(assert (= (and d!1337214 (not res!1821683)) b!4412603))

(assert (= (and b!4412603 res!1821685) b!4412608))

(declare-fun m!5088241 () Bool)

(assert (=> bm!307118 m!5088241))

(declare-fun m!5088243 () Bool)

(assert (=> b!4412610 m!5088243))

(declare-fun m!5088245 () Bool)

(assert (=> b!4412603 m!5088245))

(assert (=> b!4412603 m!5088245))

(declare-fun m!5088247 () Bool)

(assert (=> b!4412603 m!5088247))

(declare-fun m!5088249 () Bool)

(assert (=> b!4412607 m!5088249))

(declare-fun m!5088251 () Bool)

(assert (=> b!4412607 m!5088251))

(assert (=> d!1337214 m!5088249))

(declare-fun m!5088253 () Bool)

(assert (=> b!4412605 m!5088253))

(assert (=> b!4412605 m!5088245))

(assert (=> b!4412605 m!5088245))

(assert (=> b!4412605 m!5088247))

(declare-fun m!5088255 () Bool)

(assert (=> b!4412605 m!5088255))

(assert (=> b!4412609 m!5088187))

(declare-fun m!5088257 () Bool)

(assert (=> b!4412609 m!5088257))

(assert (=> b!4412609 m!5088257))

(declare-fun m!5088259 () Bool)

(assert (=> b!4412609 m!5088259))

(assert (=> b!4412604 m!5088187))

(assert (=> b!4412604 m!5088257))

(assert (=> b!4412608 m!5088187))

(assert (=> b!4412608 m!5088257))

(assert (=> b!4412608 m!5088257))

(assert (=> b!4412608 m!5088259))

(assert (=> b!4412507 d!1337214))

(declare-fun bs!752885 () Bool)

(declare-fun d!1337220 () Bool)

(assert (= bs!752885 (and d!1337220 start!429498)))

(declare-fun lambda!151012 () Int)

(assert (=> bs!752885 (= lambda!151012 lambda!150992)))

(declare-fun bs!752886 () Bool)

(assert (= bs!752886 (and d!1337220 d!1337212)))

(assert (=> bs!752886 (not (= lambda!151012 lambda!151009))))

(declare-fun lt!1614837 () ListMap!2555)

(declare-fun invariantList!768 (List!49495) Bool)

(assert (=> d!1337220 (invariantList!768 (toList!3312 lt!1614837))))

(declare-fun e!2747931 () ListMap!2555)

(assert (=> d!1337220 (= lt!1614837 e!2747931)))

(declare-fun c!751534 () Bool)

(assert (=> d!1337220 (= c!751534 (is-Cons!49372 (toList!3311 lm!1616)))))

(assert (=> d!1337220 (forall!9432 (toList!3311 lm!1616) lambda!151012)))

(assert (=> d!1337220 (= (extractMap!723 (toList!3311 lm!1616)) lt!1614837)))

(declare-fun b!4412624 () Bool)

(declare-fun addToMapMapFromBucket!319 (List!49495 ListMap!2555) ListMap!2555)

(assert (=> b!4412624 (= e!2747931 (addToMapMapFromBucket!319 (_2!27808 (h!55017 (toList!3311 lm!1616))) (extractMap!723 (t!356434 (toList!3311 lm!1616)))))))

(declare-fun b!4412625 () Bool)

(assert (=> b!4412625 (= e!2747931 (ListMap!2556 Nil!49371))))

(assert (= (and d!1337220 c!751534) b!4412624))

(assert (= (and d!1337220 (not c!751534)) b!4412625))

(declare-fun m!5088269 () Bool)

(assert (=> d!1337220 m!5088269))

(declare-fun m!5088271 () Bool)

(assert (=> d!1337220 m!5088271))

(declare-fun m!5088273 () Bool)

(assert (=> b!4412624 m!5088273))

(assert (=> b!4412624 m!5088273))

(declare-fun m!5088275 () Bool)

(assert (=> b!4412624 m!5088275))

(assert (=> b!4412507 d!1337220))

(declare-fun d!1337224 () Bool)

(declare-fun hash!1965 (Hashable!5056 K!10728) (_ BitVec 64))

(assert (=> d!1337224 (= (hash!1963 hashF!1220 key!3717) (hash!1965 hashF!1220 key!3717))))

(declare-fun bs!752888 () Bool)

(assert (= bs!752888 d!1337224))

(declare-fun m!5088279 () Bool)

(assert (=> bs!752888 m!5088279))

(assert (=> b!4412505 d!1337224))

(declare-fun d!1337228 () Bool)

(declare-datatypes ((Option!10650 0))(
  ( (None!10649) (Some!10649 (v!43809 List!49495)) )
))
(declare-fun get!16079 (Option!10650) List!49495)

(declare-fun getValueByKey!636 (List!49496 (_ BitVec 64)) Option!10650)

(assert (=> d!1337228 (= (apply!11514 lm!1616 hash!366) (get!16079 (getValueByKey!636 (toList!3311 lm!1616) hash!366)))))

(declare-fun bs!752889 () Bool)

(assert (= bs!752889 d!1337228))

(declare-fun m!5088285 () Bool)

(assert (=> bs!752889 m!5088285))

(assert (=> bs!752889 m!5088285))

(declare-fun m!5088287 () Bool)

(assert (=> bs!752889 m!5088287))

(assert (=> b!4412516 d!1337228))

(declare-fun d!1337232 () Bool)

(declare-fun res!1821691 () Bool)

(declare-fun e!2747934 () Bool)

(assert (=> d!1337232 (=> res!1821691 e!2747934)))

(assert (=> d!1337232 (= res!1821691 (is-Nil!49372 (toList!3311 lt!1614783)))))

(assert (=> d!1337232 (= (forall!9432 (toList!3311 lt!1614783) lambda!150992) e!2747934)))

(declare-fun b!4412628 () Bool)

(declare-fun e!2747935 () Bool)

(assert (=> b!4412628 (= e!2747934 e!2747935)))

(declare-fun res!1821692 () Bool)

(assert (=> b!4412628 (=> (not res!1821692) (not e!2747935))))

(assert (=> b!4412628 (= res!1821692 (dynLambda!20797 lambda!150992 (h!55017 (toList!3311 lt!1614783))))))

(declare-fun b!4412629 () Bool)

(assert (=> b!4412629 (= e!2747935 (forall!9432 (t!356434 (toList!3311 lt!1614783)) lambda!150992))))

(assert (= (and d!1337232 (not res!1821691)) b!4412628))

(assert (= (and b!4412628 res!1821692) b!4412629))

(declare-fun b_lambda!141981 () Bool)

(assert (=> (not b_lambda!141981) (not b!4412628)))

(declare-fun m!5088289 () Bool)

(assert (=> b!4412628 m!5088289))

(declare-fun m!5088291 () Bool)

(assert (=> b!4412629 m!5088291))

(assert (=> b!4412515 d!1337232))

(declare-fun d!1337234 () Bool)

(declare-fun e!2747938 () Bool)

(assert (=> d!1337234 e!2747938))

(declare-fun res!1821697 () Bool)

(assert (=> d!1337234 (=> (not res!1821697) (not e!2747938))))

(declare-fun lt!1614849 () ListLongMap!1961)

(assert (=> d!1337234 (= res!1821697 (contains!11805 lt!1614849 (_1!27808 lt!1614781)))))

(declare-fun lt!1614846 () List!49496)

(assert (=> d!1337234 (= lt!1614849 (ListLongMap!1962 lt!1614846))))

(declare-fun lt!1614848 () Unit!80509)

(declare-fun lt!1614847 () Unit!80509)

(assert (=> d!1337234 (= lt!1614848 lt!1614847)))

(assert (=> d!1337234 (= (getValueByKey!636 lt!1614846 (_1!27808 lt!1614781)) (Some!10649 (_2!27808 lt!1614781)))))

(declare-fun lemmaContainsTupThenGetReturnValue!376 (List!49496 (_ BitVec 64) List!49495) Unit!80509)

(assert (=> d!1337234 (= lt!1614847 (lemmaContainsTupThenGetReturnValue!376 lt!1614846 (_1!27808 lt!1614781) (_2!27808 lt!1614781)))))

(declare-fun insertStrictlySorted!222 (List!49496 (_ BitVec 64) List!49495) List!49496)

(assert (=> d!1337234 (= lt!1614846 (insertStrictlySorted!222 (toList!3311 lm!1616) (_1!27808 lt!1614781) (_2!27808 lt!1614781)))))

(assert (=> d!1337234 (= (+!931 lm!1616 lt!1614781) lt!1614849)))

(declare-fun b!4412634 () Bool)

(declare-fun res!1821698 () Bool)

(assert (=> b!4412634 (=> (not res!1821698) (not e!2747938))))

(assert (=> b!4412634 (= res!1821698 (= (getValueByKey!636 (toList!3311 lt!1614849) (_1!27808 lt!1614781)) (Some!10649 (_2!27808 lt!1614781))))))

(declare-fun b!4412635 () Bool)

(declare-fun contains!11809 (List!49496 tuple2!49028) Bool)

(assert (=> b!4412635 (= e!2747938 (contains!11809 (toList!3311 lt!1614849) lt!1614781))))

(assert (= (and d!1337234 res!1821697) b!4412634))

(assert (= (and b!4412634 res!1821698) b!4412635))

(declare-fun m!5088293 () Bool)

(assert (=> d!1337234 m!5088293))

(declare-fun m!5088295 () Bool)

(assert (=> d!1337234 m!5088295))

(declare-fun m!5088297 () Bool)

(assert (=> d!1337234 m!5088297))

(declare-fun m!5088299 () Bool)

(assert (=> d!1337234 m!5088299))

(declare-fun m!5088301 () Bool)

(assert (=> b!4412634 m!5088301))

(declare-fun m!5088303 () Bool)

(assert (=> b!4412635 m!5088303))

(assert (=> b!4412515 d!1337234))

(declare-fun d!1337236 () Bool)

(assert (=> d!1337236 (forall!9432 (toList!3311 (+!931 lm!1616 (tuple2!49029 hash!366 newBucket!194))) lambda!150992)))

(declare-fun lt!1614860 () Unit!80509)

(declare-fun choose!27773 (ListLongMap!1961 Int (_ BitVec 64) List!49495) Unit!80509)

(assert (=> d!1337236 (= lt!1614860 (choose!27773 lm!1616 lambda!150992 hash!366 newBucket!194))))

(declare-fun e!2747943 () Bool)

(assert (=> d!1337236 e!2747943))

(declare-fun res!1821705 () Bool)

(assert (=> d!1337236 (=> (not res!1821705) (not e!2747943))))

(assert (=> d!1337236 (= res!1821705 (forall!9432 (toList!3311 lm!1616) lambda!150992))))

(assert (=> d!1337236 (= (addValidProp!306 lm!1616 lambda!150992 hash!366 newBucket!194) lt!1614860)))

(declare-fun b!4412643 () Bool)

(assert (=> b!4412643 (= e!2747943 (dynLambda!20797 lambda!150992 (tuple2!49029 hash!366 newBucket!194)))))

(assert (= (and d!1337236 res!1821705) b!4412643))

(declare-fun b_lambda!141983 () Bool)

(assert (=> (not b_lambda!141983) (not b!4412643)))

(declare-fun m!5088305 () Bool)

(assert (=> d!1337236 m!5088305))

(declare-fun m!5088307 () Bool)

(assert (=> d!1337236 m!5088307))

(declare-fun m!5088309 () Bool)

(assert (=> d!1337236 m!5088309))

(assert (=> d!1337236 m!5088167))

(declare-fun m!5088311 () Bool)

(assert (=> b!4412643 m!5088311))

(assert (=> b!4412515 d!1337236))

(declare-fun d!1337238 () Bool)

(assert (=> d!1337238 (= (head!9141 (toList!3311 lt!1614783)) (h!55017 (toList!3311 lt!1614783)))))

(assert (=> b!4412502 d!1337238))

(declare-fun d!1337240 () Bool)

(declare-fun e!2747949 () Bool)

(assert (=> d!1337240 e!2747949))

(declare-fun res!1821710 () Bool)

(assert (=> d!1337240 (=> res!1821710 e!2747949)))

(declare-fun lt!1614874 () Bool)

(assert (=> d!1337240 (= res!1821710 (not lt!1614874))))

(declare-fun lt!1614875 () Bool)

(assert (=> d!1337240 (= lt!1614874 lt!1614875)))

(declare-fun lt!1614873 () Unit!80509)

(declare-fun e!2747950 () Unit!80509)

(assert (=> d!1337240 (= lt!1614873 e!2747950)))

(declare-fun c!751537 () Bool)

(assert (=> d!1337240 (= c!751537 lt!1614875)))

(declare-fun containsKey!999 (List!49496 (_ BitVec 64)) Bool)

(assert (=> d!1337240 (= lt!1614875 (containsKey!999 (toList!3311 lm!1616) hash!366))))

(assert (=> d!1337240 (= (contains!11805 lm!1616 hash!366) lt!1614874)))

(declare-fun b!4412652 () Bool)

(declare-fun lt!1614876 () Unit!80509)

(assert (=> b!4412652 (= e!2747950 lt!1614876)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!546 (List!49496 (_ BitVec 64)) Unit!80509)

(assert (=> b!4412652 (= lt!1614876 (lemmaContainsKeyImpliesGetValueByKeyDefined!546 (toList!3311 lm!1616) hash!366))))

(declare-fun isDefined!7943 (Option!10650) Bool)

(assert (=> b!4412652 (isDefined!7943 (getValueByKey!636 (toList!3311 lm!1616) hash!366))))

(declare-fun b!4412653 () Bool)

(declare-fun Unit!80515 () Unit!80509)

(assert (=> b!4412653 (= e!2747950 Unit!80515)))

(declare-fun b!4412654 () Bool)

(assert (=> b!4412654 (= e!2747949 (isDefined!7943 (getValueByKey!636 (toList!3311 lm!1616) hash!366)))))

(assert (= (and d!1337240 c!751537) b!4412652))

(assert (= (and d!1337240 (not c!751537)) b!4412653))

(assert (= (and d!1337240 (not res!1821710)) b!4412654))

(declare-fun m!5088325 () Bool)

(assert (=> d!1337240 m!5088325))

(declare-fun m!5088327 () Bool)

(assert (=> b!4412652 m!5088327))

(assert (=> b!4412652 m!5088285))

(assert (=> b!4412652 m!5088285))

(declare-fun m!5088329 () Bool)

(assert (=> b!4412652 m!5088329))

(assert (=> b!4412654 m!5088285))

(assert (=> b!4412654 m!5088285))

(assert (=> b!4412654 m!5088329))

(assert (=> b!4412513 d!1337240))

(declare-fun d!1337244 () Bool)

(declare-fun res!1821715 () Bool)

(declare-fun e!2747955 () Bool)

(assert (=> d!1337244 (=> res!1821715 e!2747955)))

(assert (=> d!1337244 (= res!1821715 (not (is-Cons!49371 newBucket!194)))))

(assert (=> d!1337244 (= (noDuplicateKeys!662 newBucket!194) e!2747955)))

(declare-fun b!4412659 () Bool)

(declare-fun e!2747956 () Bool)

(assert (=> b!4412659 (= e!2747955 e!2747956)))

(declare-fun res!1821716 () Bool)

(assert (=> b!4412659 (=> (not res!1821716) (not e!2747956))))

(declare-fun containsKey!1000 (List!49495 K!10728) Bool)

(assert (=> b!4412659 (= res!1821716 (not (containsKey!1000 (t!356433 newBucket!194) (_1!27807 (h!55016 newBucket!194)))))))

(declare-fun b!4412660 () Bool)

(assert (=> b!4412660 (= e!2747956 (noDuplicateKeys!662 (t!356433 newBucket!194)))))

(assert (= (and d!1337244 (not res!1821715)) b!4412659))

(assert (= (and b!4412659 res!1821716) b!4412660))

(declare-fun m!5088331 () Bool)

(assert (=> b!4412659 m!5088331))

(declare-fun m!5088333 () Bool)

(assert (=> b!4412660 m!5088333))

(assert (=> b!4412512 d!1337244))

(declare-fun d!1337246 () Bool)

(declare-fun res!1821717 () Bool)

(declare-fun e!2747957 () Bool)

(assert (=> d!1337246 (=> res!1821717 e!2747957)))

(assert (=> d!1337246 (= res!1821717 (is-Nil!49372 (t!356434 (toList!3311 lm!1616))))))

(assert (=> d!1337246 (= (forall!9432 (t!356434 (toList!3311 lm!1616)) lambda!150992) e!2747957)))

(declare-fun b!4412661 () Bool)

(declare-fun e!2747958 () Bool)

(assert (=> b!4412661 (= e!2747957 e!2747958)))

(declare-fun res!1821718 () Bool)

(assert (=> b!4412661 (=> (not res!1821718) (not e!2747958))))

(assert (=> b!4412661 (= res!1821718 (dynLambda!20797 lambda!150992 (h!55017 (t!356434 (toList!3311 lm!1616)))))))

(declare-fun b!4412662 () Bool)

(assert (=> b!4412662 (= e!2747958 (forall!9432 (t!356434 (t!356434 (toList!3311 lm!1616))) lambda!150992))))

(assert (= (and d!1337246 (not res!1821717)) b!4412661))

(assert (= (and b!4412661 res!1821718) b!4412662))

(declare-fun b_lambda!141985 () Bool)

(assert (=> (not b_lambda!141985) (not b!4412661)))

(declare-fun m!5088335 () Bool)

(assert (=> b!4412661 m!5088335))

(declare-fun m!5088337 () Bool)

(assert (=> b!4412662 m!5088337))

(assert (=> b!4412510 d!1337246))

(assert (=> b!4412511 d!1337206))

(declare-fun b!4412667 () Bool)

(declare-fun e!2747961 () Bool)

(declare-fun tp!1332283 () Bool)

(declare-fun tp!1332284 () Bool)

(assert (=> b!4412667 (= e!2747961 (and tp!1332283 tp!1332284))))

(assert (=> b!4412509 (= tp!1332271 e!2747961)))

(assert (= (and b!4412509 (is-Cons!49372 (toList!3311 lm!1616))) b!4412667))

(declare-fun b!4412672 () Bool)

(declare-fun e!2747964 () Bool)

(declare-fun tp!1332287 () Bool)

(assert (=> b!4412672 (= e!2747964 (and tp_is_empty!25895 tp_is_empty!25893 tp!1332287))))

(assert (=> b!4412503 (= tp!1332272 e!2747964)))

(assert (= (and b!4412503 (is-Cons!49371 (t!356433 newBucket!194))) b!4412672))

(declare-fun b_lambda!141987 () Bool)

(assert (= b_lambda!141983 (or start!429498 b_lambda!141987)))

(declare-fun bs!752890 () Bool)

(declare-fun d!1337248 () Bool)

(assert (= bs!752890 (and d!1337248 start!429498)))

(assert (=> bs!752890 (= (dynLambda!20797 lambda!150992 (tuple2!49029 hash!366 newBucket!194)) (noDuplicateKeys!662 (_2!27808 (tuple2!49029 hash!366 newBucket!194))))))

(declare-fun m!5088339 () Bool)

(assert (=> bs!752890 m!5088339))

(assert (=> b!4412643 d!1337248))

(declare-fun b_lambda!141989 () Bool)

(assert (= b_lambda!141985 (or start!429498 b_lambda!141989)))

(declare-fun bs!752891 () Bool)

(declare-fun d!1337250 () Bool)

(assert (= bs!752891 (and d!1337250 start!429498)))

(assert (=> bs!752891 (= (dynLambda!20797 lambda!150992 (h!55017 (t!356434 (toList!3311 lm!1616)))) (noDuplicateKeys!662 (_2!27808 (h!55017 (t!356434 (toList!3311 lm!1616))))))))

(declare-fun m!5088341 () Bool)

(assert (=> bs!752891 m!5088341))

(assert (=> b!4412661 d!1337250))

(declare-fun b_lambda!141991 () Bool)

(assert (= b_lambda!141975 (or start!429498 b_lambda!141991)))

(declare-fun bs!752892 () Bool)

(declare-fun d!1337252 () Bool)

(assert (= bs!752892 (and d!1337252 start!429498)))

(assert (=> bs!752892 (= (dynLambda!20797 lambda!150992 (h!55017 (toList!3311 lm!1616))) (noDuplicateKeys!662 (_2!27808 (h!55017 (toList!3311 lm!1616)))))))

(declare-fun m!5088343 () Bool)

(assert (=> bs!752892 m!5088343))

(assert (=> b!4412570 d!1337252))

(declare-fun b_lambda!141993 () Bool)

(assert (= b_lambda!141981 (or start!429498 b_lambda!141993)))

(declare-fun bs!752893 () Bool)

(declare-fun d!1337254 () Bool)

(assert (= bs!752893 (and d!1337254 start!429498)))

(assert (=> bs!752893 (= (dynLambda!20797 lambda!150992 (h!55017 (toList!3311 lt!1614783))) (noDuplicateKeys!662 (_2!27808 (h!55017 (toList!3311 lt!1614783)))))))

(declare-fun m!5088345 () Bool)

(assert (=> bs!752893 m!5088345))

(assert (=> b!4412628 d!1337254))

(push 1)

(assert (not b!4412652))

(assert (not b!4412571))

(assert (not bs!752890))

(assert (not b_lambda!141987))

(assert (not d!1337236))

(assert (not d!1337234))

(assert (not b!4412660))

(assert (not b!4412659))

(assert (not d!1337228))

(assert (not b!4412605))

(assert (not b!4412610))

(assert (not bm!307118))

(assert (not d!1337214))

(assert (not b!4412604))

(assert (not b!4412608))

(assert (not d!1337220))

(assert (not b!4412667))

(assert (not bs!752891))

(assert (not b_lambda!141993))

(assert (not d!1337210))

(assert (not b!4412672))

(assert (not b!4412662))

(assert tp_is_empty!25895)

(assert (not b_lambda!141991))

(assert (not b!4412635))

(assert (not b!4412654))

(assert (not d!1337212))

(assert (not bs!752893))

(assert (not b!4412603))

(assert (not bs!752892))

(assert (not b!4412634))

(assert (not b!4412607))

(assert (not b!4412609))

(assert (not b_lambda!141989))

(assert (not d!1337240))

(assert (not b!4412624))

(assert (not b!4412629))

(assert (not d!1337224))

(assert (not d!1337208))

(assert tp_is_empty!25893)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


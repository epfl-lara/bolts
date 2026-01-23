; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417580 () Bool)

(assert start!417580)

(declare-fun b!4332359 () Bool)

(declare-fun e!2695887 () Bool)

(declare-fun e!2695889 () Bool)

(assert (=> b!4332359 (= e!2695887 (not e!2695889))))

(declare-fun res!1776186 () Bool)

(assert (=> b!4332359 (=> res!1776186 e!2695889)))

(declare-datatypes ((K!9943 0))(
  ( (K!9944 (val!16225 Int)) )
))
(declare-datatypes ((V!10189 0))(
  ( (V!10190 (val!16226 Int)) )
))
(declare-datatypes ((tuple2!47770 0))(
  ( (tuple2!47771 (_1!27179 K!9943) (_2!27179 V!10189)) )
))
(declare-datatypes ((List!48714 0))(
  ( (Nil!48590) (Cons!48590 (h!54075 tuple2!47770) (t!355630 List!48714)) )
))
(declare-fun newBucket!200 () List!48714)

(declare-fun lt!1545971 () List!48714)

(declare-fun newValue!99 () V!10189)

(declare-fun key!3918 () K!9943)

(declare-fun removePairForKey!320 (List!48714 K!9943) List!48714)

(assert (=> b!4332359 (= res!1776186 (not (= newBucket!200 (Cons!48590 (tuple2!47771 key!3918 newValue!99) (removePairForKey!320 lt!1545971 key!3918)))))))

(declare-datatypes ((tuple2!47772 0))(
  ( (tuple2!47773 (_1!27180 (_ BitVec 64)) (_2!27180 List!48714)) )
))
(declare-datatypes ((List!48715 0))(
  ( (Nil!48591) (Cons!48591 (h!54076 tuple2!47772) (t!355631 List!48715)) )
))
(declare-datatypes ((ListLongMap!1333 0))(
  ( (ListLongMap!1334 (toList!2683 List!48715)) )
))
(declare-fun lm!1707 () ListLongMap!1333)

(declare-fun lambda!134775 () Int)

(declare-datatypes ((Unit!68185 0))(
  ( (Unit!68186) )
))
(declare-fun lt!1545973 () Unit!68185)

(declare-fun lt!1545970 () tuple2!47772)

(declare-fun forallContained!1555 (List!48715 Int tuple2!47772) Unit!68185)

(assert (=> b!4332359 (= lt!1545973 (forallContained!1555 (toList!2683 lm!1707) lambda!134775 lt!1545970))))

(declare-fun contains!10608 (List!48715 tuple2!47772) Bool)

(assert (=> b!4332359 (contains!10608 (toList!2683 lm!1707) lt!1545970)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4332359 (= lt!1545970 (tuple2!47773 hash!377 lt!1545971))))

(declare-fun lt!1545976 () Unit!68185)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!197 (List!48715 (_ BitVec 64) List!48714) Unit!68185)

(assert (=> b!4332359 (= lt!1545976 (lemmaGetValueByKeyImpliesContainsTuple!197 (toList!2683 lm!1707) hash!377 lt!1545971))))

(declare-fun apply!11202 (ListLongMap!1333 (_ BitVec 64)) List!48714)

(assert (=> b!4332359 (= lt!1545971 (apply!11202 lm!1707 hash!377))))

(declare-fun b!4332360 () Bool)

(declare-fun e!2695885 () Bool)

(declare-fun tp!1328638 () Bool)

(declare-fun tp_is_empty!24637 () Bool)

(declare-fun tp_is_empty!24639 () Bool)

(assert (=> b!4332360 (= e!2695885 (and tp_is_empty!24637 tp_is_empty!24639 tp!1328638))))

(declare-fun b!4332361 () Bool)

(declare-fun res!1776181 () Bool)

(assert (=> b!4332361 (=> (not res!1776181) (not e!2695887))))

(declare-datatypes ((Hashable!4742 0))(
  ( (HashableExt!4741 (__x!30445 Int)) )
))
(declare-fun hashF!1247 () Hashable!4742)

(declare-fun allKeysSameHashInMap!454 (ListLongMap!1333 Hashable!4742) Bool)

(assert (=> b!4332361 (= res!1776181 (allKeysSameHashInMap!454 lm!1707 hashF!1247))))

(declare-fun b!4332362 () Bool)

(declare-fun res!1776184 () Bool)

(assert (=> b!4332362 (=> res!1776184 e!2695889)))

(declare-fun noDuplicateKeys!350 (List!48714) Bool)

(assert (=> b!4332362 (= res!1776184 (not (noDuplicateKeys!350 newBucket!200)))))

(declare-fun b!4332363 () Bool)

(declare-fun res!1776177 () Bool)

(assert (=> b!4332363 (=> (not res!1776177) (not e!2695887))))

(declare-fun allKeysSameHash!308 (List!48714 (_ BitVec 64) Hashable!4742) Bool)

(assert (=> b!4332363 (= res!1776177 (allKeysSameHash!308 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1776183 () Bool)

(assert (=> start!417580 (=> (not res!1776183) (not e!2695887))))

(declare-fun forall!8903 (List!48715 Int) Bool)

(assert (=> start!417580 (= res!1776183 (forall!8903 (toList!2683 lm!1707) lambda!134775))))

(assert (=> start!417580 e!2695887))

(assert (=> start!417580 e!2695885))

(assert (=> start!417580 true))

(declare-fun e!2695884 () Bool)

(declare-fun inv!64130 (ListLongMap!1333) Bool)

(assert (=> start!417580 (and (inv!64130 lm!1707) e!2695884)))

(assert (=> start!417580 tp_is_empty!24637))

(assert (=> start!417580 tp_is_empty!24639))

(declare-fun b!4332364 () Bool)

(declare-fun res!1776179 () Bool)

(declare-fun e!2695886 () Bool)

(assert (=> b!4332364 (=> (not res!1776179) (not e!2695886))))

(declare-fun lt!1545974 () ListLongMap!1333)

(assert (=> b!4332364 (= res!1776179 (forall!8903 (toList!2683 lt!1545974) lambda!134775))))

(declare-fun b!4332365 () Bool)

(declare-fun tp!1328637 () Bool)

(assert (=> b!4332365 (= e!2695884 tp!1328637)))

(declare-fun b!4332366 () Bool)

(declare-fun res!1776182 () Bool)

(assert (=> b!4332366 (=> (not res!1776182) (not e!2695887))))

(declare-datatypes ((ListMap!1927 0))(
  ( (ListMap!1928 (toList!2684 List!48714)) )
))
(declare-fun contains!10609 (ListMap!1927 K!9943) Bool)

(declare-fun extractMap!409 (List!48715) ListMap!1927)

(assert (=> b!4332366 (= res!1776182 (contains!10609 (extractMap!409 (toList!2683 lm!1707)) key!3918))))

(declare-fun b!4332367 () Bool)

(declare-fun e!2695888 () Bool)

(assert (=> b!4332367 (= e!2695888 (forall!8903 (t!355631 (toList!2683 lm!1707)) lambda!134775))))

(declare-fun b!4332368 () Bool)

(declare-fun res!1776176 () Bool)

(assert (=> b!4332368 (=> (not res!1776176) (not e!2695887))))

(declare-fun hash!1285 (Hashable!4742 K!9943) (_ BitVec 64))

(assert (=> b!4332368 (= res!1776176 (= (hash!1285 hashF!1247 key!3918) hash!377))))

(declare-fun lt!1545975 () tuple2!47772)

(declare-fun b!4332369 () Bool)

(assert (=> b!4332369 (= e!2695886 (or (not (is-Cons!48591 (toList!2683 lm!1707))) (not (= (_1!27180 (h!54076 (toList!2683 lm!1707))) hash!377)) (= lt!1545974 (ListLongMap!1334 (Cons!48591 lt!1545975 (t!355631 (toList!2683 lm!1707)))))))))

(declare-fun b!4332370 () Bool)

(declare-fun res!1776178 () Bool)

(assert (=> b!4332370 (=> (not res!1776178) (not e!2695887))))

(declare-fun contains!10610 (ListLongMap!1333 (_ BitVec 64)) Bool)

(assert (=> b!4332370 (= res!1776178 (contains!10610 lm!1707 hash!377))))

(declare-fun b!4332371 () Bool)

(assert (=> b!4332371 (= e!2695889 e!2695888)))

(declare-fun res!1776185 () Bool)

(assert (=> b!4332371 (=> res!1776185 e!2695888)))

(assert (=> b!4332371 (= res!1776185 (or (not (is-Cons!48591 (toList!2683 lm!1707))) (not (= (_1!27180 (h!54076 (toList!2683 lm!1707))) hash!377))))))

(assert (=> b!4332371 e!2695886))

(declare-fun res!1776180 () Bool)

(assert (=> b!4332371 (=> (not res!1776180) (not e!2695886))))

(assert (=> b!4332371 (= res!1776180 (forall!8903 (toList!2683 lt!1545974) lambda!134775))))

(declare-fun +!386 (ListLongMap!1333 tuple2!47772) ListLongMap!1333)

(assert (=> b!4332371 (= lt!1545974 (+!386 lm!1707 lt!1545975))))

(assert (=> b!4332371 (= lt!1545975 (tuple2!47773 hash!377 newBucket!200))))

(declare-fun lt!1545972 () Unit!68185)

(declare-fun addValidProp!4 (ListLongMap!1333 Int (_ BitVec 64) List!48714) Unit!68185)

(assert (=> b!4332371 (= lt!1545972 (addValidProp!4 lm!1707 lambda!134775 hash!377 newBucket!200))))

(assert (=> b!4332371 (forall!8903 (toList!2683 lm!1707) lambda!134775)))

(assert (= (and start!417580 res!1776183) b!4332361))

(assert (= (and b!4332361 res!1776181) b!4332368))

(assert (= (and b!4332368 res!1776176) b!4332363))

(assert (= (and b!4332363 res!1776177) b!4332366))

(assert (= (and b!4332366 res!1776182) b!4332370))

(assert (= (and b!4332370 res!1776178) b!4332359))

(assert (= (and b!4332359 (not res!1776186)) b!4332362))

(assert (= (and b!4332362 (not res!1776184)) b!4332371))

(assert (= (and b!4332371 res!1776180) b!4332364))

(assert (= (and b!4332364 res!1776179) b!4332369))

(assert (= (and b!4332371 (not res!1776185)) b!4332367))

(assert (= (and start!417580 (is-Cons!48590 newBucket!200)) b!4332360))

(assert (= start!417580 b!4332365))

(declare-fun m!4926615 () Bool)

(assert (=> b!4332366 m!4926615))

(assert (=> b!4332366 m!4926615))

(declare-fun m!4926617 () Bool)

(assert (=> b!4332366 m!4926617))

(declare-fun m!4926619 () Bool)

(assert (=> b!4332361 m!4926619))

(declare-fun m!4926621 () Bool)

(assert (=> start!417580 m!4926621))

(declare-fun m!4926623 () Bool)

(assert (=> start!417580 m!4926623))

(declare-fun m!4926625 () Bool)

(assert (=> b!4332359 m!4926625))

(declare-fun m!4926627 () Bool)

(assert (=> b!4332359 m!4926627))

(declare-fun m!4926629 () Bool)

(assert (=> b!4332359 m!4926629))

(declare-fun m!4926631 () Bool)

(assert (=> b!4332359 m!4926631))

(declare-fun m!4926633 () Bool)

(assert (=> b!4332359 m!4926633))

(declare-fun m!4926635 () Bool)

(assert (=> b!4332367 m!4926635))

(declare-fun m!4926637 () Bool)

(assert (=> b!4332370 m!4926637))

(declare-fun m!4926639 () Bool)

(assert (=> b!4332362 m!4926639))

(declare-fun m!4926641 () Bool)

(assert (=> b!4332368 m!4926641))

(declare-fun m!4926643 () Bool)

(assert (=> b!4332363 m!4926643))

(declare-fun m!4926645 () Bool)

(assert (=> b!4332371 m!4926645))

(declare-fun m!4926647 () Bool)

(assert (=> b!4332371 m!4926647))

(declare-fun m!4926649 () Bool)

(assert (=> b!4332371 m!4926649))

(assert (=> b!4332371 m!4926621))

(assert (=> b!4332364 m!4926645))

(push 1)

(assert (not b!4332371))

(assert (not b!4332367))

(assert (not start!417580))

(assert (not b!4332359))

(assert (not b!4332362))

(assert (not b!4332361))

(assert (not b!4332366))

(assert (not b!4332364))

(assert tp_is_empty!24639)

(assert (not b!4332370))

(assert tp_is_empty!24637)

(assert (not b!4332368))

(assert (not b!4332360))

(assert (not b!4332363))

(assert (not b!4332365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!608005 () Bool)

(declare-fun d!1273641 () Bool)

(assert (= bs!608005 (and d!1273641 start!417580)))

(declare-fun lambda!134791 () Int)

(assert (=> bs!608005 (not (= lambda!134791 lambda!134775))))

(assert (=> d!1273641 true))

(assert (=> d!1273641 (= (allKeysSameHashInMap!454 lm!1707 hashF!1247) (forall!8903 (toList!2683 lm!1707) lambda!134791))))

(declare-fun bs!608006 () Bool)

(assert (= bs!608006 d!1273641))

(declare-fun m!4926687 () Bool)

(assert (=> bs!608006 m!4926687))

(assert (=> b!4332361 d!1273641))

(declare-fun d!1273643 () Bool)

(declare-fun res!1776224 () Bool)

(declare-fun e!2695912 () Bool)

(assert (=> d!1273643 (=> res!1776224 e!2695912)))

(assert (=> d!1273643 (= res!1776224 (not (is-Cons!48590 newBucket!200)))))

(assert (=> d!1273643 (= (noDuplicateKeys!350 newBucket!200) e!2695912)))

(declare-fun b!4332417 () Bool)

(declare-fun e!2695913 () Bool)

(assert (=> b!4332417 (= e!2695912 e!2695913)))

(declare-fun res!1776225 () Bool)

(assert (=> b!4332417 (=> (not res!1776225) (not e!2695913))))

(declare-fun containsKey!489 (List!48714 K!9943) Bool)

(assert (=> b!4332417 (= res!1776225 (not (containsKey!489 (t!355630 newBucket!200) (_1!27179 (h!54075 newBucket!200)))))))

(declare-fun b!4332418 () Bool)

(assert (=> b!4332418 (= e!2695913 (noDuplicateKeys!350 (t!355630 newBucket!200)))))

(assert (= (and d!1273643 (not res!1776224)) b!4332417))

(assert (= (and b!4332417 res!1776225) b!4332418))

(declare-fun m!4926689 () Bool)

(assert (=> b!4332417 m!4926689))

(declare-fun m!4926691 () Bool)

(assert (=> b!4332418 m!4926691))

(assert (=> b!4332362 d!1273643))

(declare-fun d!1273645 () Bool)

(declare-fun res!1776230 () Bool)

(declare-fun e!2695918 () Bool)

(assert (=> d!1273645 (=> res!1776230 e!2695918)))

(assert (=> d!1273645 (= res!1776230 (is-Nil!48591 (toList!2683 lm!1707)))))

(assert (=> d!1273645 (= (forall!8903 (toList!2683 lm!1707) lambda!134775) e!2695918)))

(declare-fun b!4332423 () Bool)

(declare-fun e!2695919 () Bool)

(assert (=> b!4332423 (= e!2695918 e!2695919)))

(declare-fun res!1776231 () Bool)

(assert (=> b!4332423 (=> (not res!1776231) (not e!2695919))))

(declare-fun dynLambda!20551 (Int tuple2!47772) Bool)

(assert (=> b!4332423 (= res!1776231 (dynLambda!20551 lambda!134775 (h!54076 (toList!2683 lm!1707))))))

(declare-fun b!4332424 () Bool)

(assert (=> b!4332424 (= e!2695919 (forall!8903 (t!355631 (toList!2683 lm!1707)) lambda!134775))))

(assert (= (and d!1273645 (not res!1776230)) b!4332423))

(assert (= (and b!4332423 res!1776231) b!4332424))

(declare-fun b_lambda!128003 () Bool)

(assert (=> (not b_lambda!128003) (not b!4332423)))

(declare-fun m!4926693 () Bool)

(assert (=> b!4332423 m!4926693))

(assert (=> b!4332424 m!4926635))

(assert (=> start!417580 d!1273645))

(declare-fun d!1273647 () Bool)

(declare-fun isStrictlySorted!39 (List!48715) Bool)

(assert (=> d!1273647 (= (inv!64130 lm!1707) (isStrictlySorted!39 (toList!2683 lm!1707)))))

(declare-fun bs!608007 () Bool)

(assert (= bs!608007 d!1273647))

(declare-fun m!4926695 () Bool)

(assert (=> bs!608007 m!4926695))

(assert (=> start!417580 d!1273647))

(declare-fun d!1273649 () Bool)

(declare-fun res!1776232 () Bool)

(declare-fun e!2695920 () Bool)

(assert (=> d!1273649 (=> res!1776232 e!2695920)))

(assert (=> d!1273649 (= res!1776232 (is-Nil!48591 (toList!2683 lt!1545974)))))

(assert (=> d!1273649 (= (forall!8903 (toList!2683 lt!1545974) lambda!134775) e!2695920)))

(declare-fun b!4332425 () Bool)

(declare-fun e!2695921 () Bool)

(assert (=> b!4332425 (= e!2695920 e!2695921)))

(declare-fun res!1776233 () Bool)

(assert (=> b!4332425 (=> (not res!1776233) (not e!2695921))))

(assert (=> b!4332425 (= res!1776233 (dynLambda!20551 lambda!134775 (h!54076 (toList!2683 lt!1545974))))))

(declare-fun b!4332426 () Bool)

(assert (=> b!4332426 (= e!2695921 (forall!8903 (t!355631 (toList!2683 lt!1545974)) lambda!134775))))

(assert (= (and d!1273649 (not res!1776232)) b!4332425))

(assert (= (and b!4332425 res!1776233) b!4332426))

(declare-fun b_lambda!128005 () Bool)

(assert (=> (not b_lambda!128005) (not b!4332425)))

(declare-fun m!4926697 () Bool)

(assert (=> b!4332425 m!4926697))

(declare-fun m!4926699 () Bool)

(assert (=> b!4332426 m!4926699))

(assert (=> b!4332371 d!1273649))

(declare-fun d!1273651 () Bool)

(declare-fun e!2695924 () Bool)

(assert (=> d!1273651 e!2695924))

(declare-fun res!1776239 () Bool)

(assert (=> d!1273651 (=> (not res!1776239) (not e!2695924))))

(declare-fun lt!1546009 () ListLongMap!1333)

(assert (=> d!1273651 (= res!1776239 (contains!10610 lt!1546009 (_1!27180 lt!1545975)))))

(declare-fun lt!1546007 () List!48715)

(assert (=> d!1273651 (= lt!1546009 (ListLongMap!1334 lt!1546007))))

(declare-fun lt!1546006 () Unit!68185)

(declare-fun lt!1546008 () Unit!68185)

(assert (=> d!1273651 (= lt!1546006 lt!1546008)))

(declare-datatypes ((Option!10339 0))(
  ( (None!10338) (Some!10338 (v!43046 List!48714)) )
))
(declare-fun getValueByKey!325 (List!48715 (_ BitVec 64)) Option!10339)

(assert (=> d!1273651 (= (getValueByKey!325 lt!1546007 (_1!27180 lt!1545975)) (Some!10338 (_2!27180 lt!1545975)))))

(declare-fun lemmaContainsTupThenGetReturnValue!115 (List!48715 (_ BitVec 64) List!48714) Unit!68185)

(assert (=> d!1273651 (= lt!1546008 (lemmaContainsTupThenGetReturnValue!115 lt!1546007 (_1!27180 lt!1545975) (_2!27180 lt!1545975)))))

(declare-fun insertStrictlySorted!70 (List!48715 (_ BitVec 64) List!48714) List!48715)

(assert (=> d!1273651 (= lt!1546007 (insertStrictlySorted!70 (toList!2683 lm!1707) (_1!27180 lt!1545975) (_2!27180 lt!1545975)))))

(assert (=> d!1273651 (= (+!386 lm!1707 lt!1545975) lt!1546009)))

(declare-fun b!4332431 () Bool)

(declare-fun res!1776238 () Bool)

(assert (=> b!4332431 (=> (not res!1776238) (not e!2695924))))

(assert (=> b!4332431 (= res!1776238 (= (getValueByKey!325 (toList!2683 lt!1546009) (_1!27180 lt!1545975)) (Some!10338 (_2!27180 lt!1545975))))))

(declare-fun b!4332432 () Bool)

(assert (=> b!4332432 (= e!2695924 (contains!10608 (toList!2683 lt!1546009) lt!1545975))))

(assert (= (and d!1273651 res!1776239) b!4332431))

(assert (= (and b!4332431 res!1776238) b!4332432))

(declare-fun m!4926701 () Bool)

(assert (=> d!1273651 m!4926701))

(declare-fun m!4926703 () Bool)

(assert (=> d!1273651 m!4926703))

(declare-fun m!4926705 () Bool)

(assert (=> d!1273651 m!4926705))

(declare-fun m!4926707 () Bool)

(assert (=> d!1273651 m!4926707))

(declare-fun m!4926709 () Bool)

(assert (=> b!4332431 m!4926709))

(declare-fun m!4926711 () Bool)

(assert (=> b!4332432 m!4926711))

(assert (=> b!4332371 d!1273651))

(declare-fun d!1273653 () Bool)

(assert (=> d!1273653 (forall!8903 (toList!2683 (+!386 lm!1707 (tuple2!47773 hash!377 newBucket!200))) lambda!134775)))

(declare-fun lt!1546012 () Unit!68185)

(declare-fun choose!26492 (ListLongMap!1333 Int (_ BitVec 64) List!48714) Unit!68185)

(assert (=> d!1273653 (= lt!1546012 (choose!26492 lm!1707 lambda!134775 hash!377 newBucket!200))))

(declare-fun e!2695927 () Bool)

(assert (=> d!1273653 e!2695927))

(declare-fun res!1776242 () Bool)

(assert (=> d!1273653 (=> (not res!1776242) (not e!2695927))))

(assert (=> d!1273653 (= res!1776242 (forall!8903 (toList!2683 lm!1707) lambda!134775))))

(assert (=> d!1273653 (= (addValidProp!4 lm!1707 lambda!134775 hash!377 newBucket!200) lt!1546012)))

(declare-fun b!4332436 () Bool)

(assert (=> b!4332436 (= e!2695927 (dynLambda!20551 lambda!134775 (tuple2!47773 hash!377 newBucket!200)))))

(assert (= (and d!1273653 res!1776242) b!4332436))

(declare-fun b_lambda!128007 () Bool)

(assert (=> (not b_lambda!128007) (not b!4332436)))

(declare-fun m!4926713 () Bool)

(assert (=> d!1273653 m!4926713))

(declare-fun m!4926715 () Bool)

(assert (=> d!1273653 m!4926715))

(declare-fun m!4926717 () Bool)

(assert (=> d!1273653 m!4926717))

(assert (=> d!1273653 m!4926621))

(declare-fun m!4926719 () Bool)

(assert (=> b!4332436 m!4926719))

(assert (=> b!4332371 d!1273653))

(assert (=> b!4332371 d!1273645))

(assert (=> b!4332364 d!1273649))

(declare-fun d!1273657 () Bool)

(assert (=> d!1273657 true))

(assert (=> d!1273657 true))

(declare-fun lambda!134794 () Int)

(declare-fun forall!8905 (List!48714 Int) Bool)

(assert (=> d!1273657 (= (allKeysSameHash!308 newBucket!200 hash!377 hashF!1247) (forall!8905 newBucket!200 lambda!134794))))

(declare-fun bs!608008 () Bool)

(assert (= bs!608008 d!1273657))

(declare-fun m!4926721 () Bool)

(assert (=> bs!608008 m!4926721))

(assert (=> b!4332363 d!1273657))

(declare-fun d!1273659 () Bool)

(declare-fun res!1776243 () Bool)

(declare-fun e!2695928 () Bool)

(assert (=> d!1273659 (=> res!1776243 e!2695928)))

(assert (=> d!1273659 (= res!1776243 (is-Nil!48591 (t!355631 (toList!2683 lm!1707))))))

(assert (=> d!1273659 (= (forall!8903 (t!355631 (toList!2683 lm!1707)) lambda!134775) e!2695928)))

(declare-fun b!4332441 () Bool)

(declare-fun e!2695929 () Bool)

(assert (=> b!4332441 (= e!2695928 e!2695929)))

(declare-fun res!1776244 () Bool)

(assert (=> b!4332441 (=> (not res!1776244) (not e!2695929))))

(assert (=> b!4332441 (= res!1776244 (dynLambda!20551 lambda!134775 (h!54076 (t!355631 (toList!2683 lm!1707)))))))

(declare-fun b!4332442 () Bool)

(assert (=> b!4332442 (= e!2695929 (forall!8903 (t!355631 (t!355631 (toList!2683 lm!1707))) lambda!134775))))

(assert (= (and d!1273659 (not res!1776243)) b!4332441))

(assert (= (and b!4332441 res!1776244) b!4332442))

(declare-fun b_lambda!128009 () Bool)

(assert (=> (not b_lambda!128009) (not b!4332441)))

(declare-fun m!4926723 () Bool)

(assert (=> b!4332441 m!4926723))

(declare-fun m!4926725 () Bool)

(assert (=> b!4332442 m!4926725))

(assert (=> b!4332367 d!1273659))

(declare-fun b!4332470 () Bool)

(assert (=> b!4332470 false))

(declare-fun lt!1546036 () Unit!68185)

(declare-fun lt!1546042 () Unit!68185)

(assert (=> b!4332470 (= lt!1546036 lt!1546042)))

(declare-fun containsKey!490 (List!48714 K!9943) Bool)

(assert (=> b!4332470 (containsKey!490 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!60 (List!48714 K!9943) Unit!68185)

(assert (=> b!4332470 (= lt!1546042 (lemmaInGetKeysListThenContainsKey!60 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918))))

(declare-fun e!2695954 () Unit!68185)

(declare-fun Unit!68189 () Unit!68185)

(assert (=> b!4332470 (= e!2695954 Unit!68189)))

(declare-fun b!4332471 () Bool)

(declare-fun e!2695955 () Bool)

(declare-fun e!2695956 () Bool)

(assert (=> b!4332471 (= e!2695955 e!2695956)))

(declare-fun res!1776260 () Bool)

(assert (=> b!4332471 (=> (not res!1776260) (not e!2695956))))

(declare-datatypes ((Option!10340 0))(
  ( (None!10339) (Some!10339 (v!43047 V!10189)) )
))
(declare-fun isDefined!7637 (Option!10340) Bool)

(declare-fun getValueByKey!326 (List!48714 K!9943) Option!10340)

(assert (=> b!4332471 (= res!1776260 (isDefined!7637 (getValueByKey!326 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918)))))

(declare-fun b!4332472 () Bool)

(declare-datatypes ((List!48718 0))(
  ( (Nil!48594) (Cons!48594 (h!54081 K!9943) (t!355634 List!48718)) )
))
(declare-fun e!2695951 () List!48718)

(declare-fun getKeysList!63 (List!48714) List!48718)

(assert (=> b!4332472 (= e!2695951 (getKeysList!63 (toList!2684 (extractMap!409 (toList!2683 lm!1707)))))))

(declare-fun b!4332473 () Bool)

(declare-fun Unit!68190 () Unit!68185)

(assert (=> b!4332473 (= e!2695954 Unit!68190)))

(declare-fun b!4332474 () Bool)

(declare-fun e!2695952 () Unit!68185)

(declare-fun lt!1546040 () Unit!68185)

(assert (=> b!4332474 (= e!2695952 lt!1546040)))

(declare-fun lt!1546038 () Unit!68185)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!241 (List!48714 K!9943) Unit!68185)

(assert (=> b!4332474 (= lt!1546038 (lemmaContainsKeyImpliesGetValueByKeyDefined!241 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918))))

(assert (=> b!4332474 (isDefined!7637 (getValueByKey!326 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918))))

(declare-fun lt!1546035 () Unit!68185)

(assert (=> b!4332474 (= lt!1546035 lt!1546038)))

(declare-fun lemmaInListThenGetKeysListContains!60 (List!48714 K!9943) Unit!68185)

(assert (=> b!4332474 (= lt!1546040 (lemmaInListThenGetKeysListContains!60 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918))))

(declare-fun call!301090 () Bool)

(assert (=> b!4332474 call!301090))

(declare-fun b!4332475 () Bool)

(declare-fun keys!16324 (ListMap!1927) List!48718)

(assert (=> b!4332475 (= e!2695951 (keys!16324 (extractMap!409 (toList!2683 lm!1707))))))

(declare-fun b!4332476 () Bool)

(declare-fun contains!10614 (List!48718 K!9943) Bool)

(assert (=> b!4332476 (= e!2695956 (contains!10614 (keys!16324 (extractMap!409 (toList!2683 lm!1707))) key!3918))))

(declare-fun b!4332477 () Bool)

(assert (=> b!4332477 (= e!2695952 e!2695954)))

(declare-fun c!736891 () Bool)

(assert (=> b!4332477 (= c!736891 call!301090)))

(declare-fun b!4332478 () Bool)

(declare-fun e!2695953 () Bool)

(assert (=> b!4332478 (= e!2695953 (not (contains!10614 (keys!16324 (extractMap!409 (toList!2683 lm!1707))) key!3918)))))

(declare-fun d!1273661 () Bool)

(assert (=> d!1273661 e!2695955))

(declare-fun res!1776262 () Bool)

(assert (=> d!1273661 (=> res!1776262 e!2695955)))

(assert (=> d!1273661 (= res!1776262 e!2695953)))

(declare-fun res!1776261 () Bool)

(assert (=> d!1273661 (=> (not res!1776261) (not e!2695953))))

(declare-fun lt!1546039 () Bool)

(assert (=> d!1273661 (= res!1776261 (not lt!1546039))))

(declare-fun lt!1546037 () Bool)

(assert (=> d!1273661 (= lt!1546039 lt!1546037)))

(declare-fun lt!1546041 () Unit!68185)

(assert (=> d!1273661 (= lt!1546041 e!2695952)))

(declare-fun c!736892 () Bool)

(assert (=> d!1273661 (= c!736892 lt!1546037)))

(assert (=> d!1273661 (= lt!1546037 (containsKey!490 (toList!2684 (extractMap!409 (toList!2683 lm!1707))) key!3918))))

(assert (=> d!1273661 (= (contains!10609 (extractMap!409 (toList!2683 lm!1707)) key!3918) lt!1546039)))

(declare-fun bm!301085 () Bool)

(assert (=> bm!301085 (= call!301090 (contains!10614 e!2695951 key!3918))))

(declare-fun c!736890 () Bool)

(assert (=> bm!301085 (= c!736890 c!736892)))

(assert (= (and d!1273661 c!736892) b!4332474))

(assert (= (and d!1273661 (not c!736892)) b!4332477))

(assert (= (and b!4332477 c!736891) b!4332470))

(assert (= (and b!4332477 (not c!736891)) b!4332473))

(assert (= (or b!4332474 b!4332477) bm!301085))

(assert (= (and bm!301085 c!736890) b!4332472))

(assert (= (and bm!301085 (not c!736890)) b!4332475))

(assert (= (and d!1273661 res!1776261) b!4332478))

(assert (= (and d!1273661 (not res!1776262)) b!4332471))

(assert (= (and b!4332471 res!1776260) b!4332476))

(assert (=> b!4332476 m!4926615))

(declare-fun m!4926741 () Bool)

(assert (=> b!4332476 m!4926741))

(assert (=> b!4332476 m!4926741))

(declare-fun m!4926743 () Bool)

(assert (=> b!4332476 m!4926743))

(declare-fun m!4926745 () Bool)

(assert (=> bm!301085 m!4926745))

(declare-fun m!4926747 () Bool)

(assert (=> b!4332470 m!4926747))

(declare-fun m!4926749 () Bool)

(assert (=> b!4332470 m!4926749))

(declare-fun m!4926751 () Bool)

(assert (=> b!4332474 m!4926751))

(declare-fun m!4926753 () Bool)

(assert (=> b!4332474 m!4926753))

(assert (=> b!4332474 m!4926753))

(declare-fun m!4926755 () Bool)

(assert (=> b!4332474 m!4926755))

(declare-fun m!4926757 () Bool)

(assert (=> b!4332474 m!4926757))

(declare-fun m!4926759 () Bool)

(assert (=> b!4332472 m!4926759))

(assert (=> b!4332475 m!4926615))

(assert (=> b!4332475 m!4926741))

(assert (=> b!4332471 m!4926753))

(assert (=> b!4332471 m!4926753))

(assert (=> b!4332471 m!4926755))

(assert (=> b!4332478 m!4926615))

(assert (=> b!4332478 m!4926741))

(assert (=> b!4332478 m!4926741))

(assert (=> b!4332478 m!4926743))

(assert (=> d!1273661 m!4926747))

(assert (=> b!4332366 d!1273661))

(declare-fun bs!608009 () Bool)

(declare-fun d!1273667 () Bool)

(assert (= bs!608009 (and d!1273667 start!417580)))

(declare-fun lambda!134797 () Int)

(assert (=> bs!608009 (= lambda!134797 lambda!134775)))

(declare-fun bs!608010 () Bool)

(assert (= bs!608010 (and d!1273667 d!1273641)))

(assert (=> bs!608010 (not (= lambda!134797 lambda!134791))))

(declare-fun lt!1546050 () ListMap!1927)

(declare-fun invariantList!613 (List!48714) Bool)

(assert (=> d!1273667 (invariantList!613 (toList!2684 lt!1546050))))

(declare-fun e!2695966 () ListMap!1927)

(assert (=> d!1273667 (= lt!1546050 e!2695966)))

(declare-fun c!736899 () Bool)

(assert (=> d!1273667 (= c!736899 (is-Cons!48591 (toList!2683 lm!1707)))))

(assert (=> d!1273667 (forall!8903 (toList!2683 lm!1707) lambda!134797)))

(assert (=> d!1273667 (= (extractMap!409 (toList!2683 lm!1707)) lt!1546050)))

(declare-fun b!4332494 () Bool)

(declare-fun addToMapMapFromBucket!61 (List!48714 ListMap!1927) ListMap!1927)

(assert (=> b!4332494 (= e!2695966 (addToMapMapFromBucket!61 (_2!27180 (h!54076 (toList!2683 lm!1707))) (extractMap!409 (t!355631 (toList!2683 lm!1707)))))))

(declare-fun b!4332495 () Bool)

(assert (=> b!4332495 (= e!2695966 (ListMap!1928 Nil!48590))))

(assert (= (and d!1273667 c!736899) b!4332494))

(assert (= (and d!1273667 (not c!736899)) b!4332495))

(declare-fun m!4926765 () Bool)

(assert (=> d!1273667 m!4926765))

(declare-fun m!4926767 () Bool)

(assert (=> d!1273667 m!4926767))

(declare-fun m!4926769 () Bool)

(assert (=> b!4332494 m!4926769))

(assert (=> b!4332494 m!4926769))

(declare-fun m!4926771 () Bool)

(assert (=> b!4332494 m!4926771))

(assert (=> b!4332366 d!1273667))

(declare-fun d!1273671 () Bool)

(declare-fun get!15761 (Option!10339) List!48714)

(assert (=> d!1273671 (= (apply!11202 lm!1707 hash!377) (get!15761 (getValueByKey!325 (toList!2683 lm!1707) hash!377)))))

(declare-fun bs!608011 () Bool)

(assert (= bs!608011 d!1273671))

(declare-fun m!4926773 () Bool)

(assert (=> bs!608011 m!4926773))

(assert (=> bs!608011 m!4926773))

(declare-fun m!4926775 () Bool)

(assert (=> bs!608011 m!4926775))

(assert (=> b!4332359 d!1273671))

(declare-fun d!1273673 () Bool)

(assert (=> d!1273673 (dynLambda!20551 lambda!134775 lt!1545970)))

(declare-fun lt!1546054 () Unit!68185)

(declare-fun choose!26493 (List!48715 Int tuple2!47772) Unit!68185)

(assert (=> d!1273673 (= lt!1546054 (choose!26493 (toList!2683 lm!1707) lambda!134775 lt!1545970))))

(declare-fun e!2695971 () Bool)

(assert (=> d!1273673 e!2695971))

(declare-fun res!1776268 () Bool)

(assert (=> d!1273673 (=> (not res!1776268) (not e!2695971))))

(assert (=> d!1273673 (= res!1776268 (forall!8903 (toList!2683 lm!1707) lambda!134775))))

(assert (=> d!1273673 (= (forallContained!1555 (toList!2683 lm!1707) lambda!134775 lt!1545970) lt!1546054)))

(declare-fun b!4332502 () Bool)

(assert (=> b!4332502 (= e!2695971 (contains!10608 (toList!2683 lm!1707) lt!1545970))))

(assert (= (and d!1273673 res!1776268) b!4332502))

(declare-fun b_lambda!128013 () Bool)

(assert (=> (not b_lambda!128013) (not d!1273673)))

(declare-fun m!4926783 () Bool)

(assert (=> d!1273673 m!4926783))

(declare-fun m!4926785 () Bool)

(assert (=> d!1273673 m!4926785))

(assert (=> d!1273673 m!4926621))

(assert (=> b!4332502 m!4926629))

(assert (=> b!4332359 d!1273673))

(declare-fun d!1273677 () Bool)

(declare-fun lt!1546057 () Bool)

(declare-fun content!7588 (List!48715) (Set tuple2!47772))

(assert (=> d!1273677 (= lt!1546057 (set.member lt!1545970 (content!7588 (toList!2683 lm!1707))))))

(declare-fun e!2695977 () Bool)

(assert (=> d!1273677 (= lt!1546057 e!2695977)))

(declare-fun res!1776273 () Bool)

(assert (=> d!1273677 (=> (not res!1776273) (not e!2695977))))

(assert (=> d!1273677 (= res!1776273 (is-Cons!48591 (toList!2683 lm!1707)))))

(assert (=> d!1273677 (= (contains!10608 (toList!2683 lm!1707) lt!1545970) lt!1546057)))

(declare-fun b!4332507 () Bool)

(declare-fun e!2695976 () Bool)

(assert (=> b!4332507 (= e!2695977 e!2695976)))

(declare-fun res!1776274 () Bool)

(assert (=> b!4332507 (=> res!1776274 e!2695976)))

(assert (=> b!4332507 (= res!1776274 (= (h!54076 (toList!2683 lm!1707)) lt!1545970))))

(declare-fun b!4332508 () Bool)

(assert (=> b!4332508 (= e!2695976 (contains!10608 (t!355631 (toList!2683 lm!1707)) lt!1545970))))

(assert (= (and d!1273677 res!1776273) b!4332507))

(assert (= (and b!4332507 (not res!1776274)) b!4332508))

(declare-fun m!4926789 () Bool)

(assert (=> d!1273677 m!4926789))

(declare-fun m!4926791 () Bool)

(assert (=> d!1273677 m!4926791))

(declare-fun m!4926793 () Bool)

(assert (=> b!4332508 m!4926793))

(assert (=> b!4332359 d!1273677))

(declare-fun b!4332525 () Bool)

(declare-fun e!2695988 () List!48714)

(assert (=> b!4332525 (= e!2695988 (Cons!48590 (h!54075 lt!1545971) (removePairForKey!320 (t!355630 lt!1545971) key!3918)))))

(declare-fun d!1273681 () Bool)

(declare-fun lt!1546060 () List!48714)

(assert (=> d!1273681 (not (containsKey!489 lt!1546060 key!3918))))

(declare-fun e!2695989 () List!48714)

(assert (=> d!1273681 (= lt!1546060 e!2695989)))

(declare-fun c!736906 () Bool)

(assert (=> d!1273681 (= c!736906 (and (is-Cons!48590 lt!1545971) (= (_1!27179 (h!54075 lt!1545971)) key!3918)))))

(assert (=> d!1273681 (noDuplicateKeys!350 lt!1545971)))

(assert (=> d!1273681 (= (removePairForKey!320 lt!1545971 key!3918) lt!1546060)))

(declare-fun b!4332524 () Bool)

(assert (=> b!4332524 (= e!2695989 e!2695988)))

(declare-fun c!736907 () Bool)

(assert (=> b!4332524 (= c!736907 (is-Cons!48590 lt!1545971))))

(declare-fun b!4332526 () Bool)

(assert (=> b!4332526 (= e!2695988 Nil!48590)))

(declare-fun b!4332523 () Bool)

(assert (=> b!4332523 (= e!2695989 (t!355630 lt!1545971))))

(assert (= (and d!1273681 c!736906) b!4332523))

(assert (= (and d!1273681 (not c!736906)) b!4332524))

(assert (= (and b!4332524 c!736907) b!4332525))

(assert (= (and b!4332524 (not c!736907)) b!4332526))

(declare-fun m!4926795 () Bool)

(assert (=> b!4332525 m!4926795))

(declare-fun m!4926797 () Bool)

(assert (=> d!1273681 m!4926797))

(declare-fun m!4926799 () Bool)

(assert (=> d!1273681 m!4926799))

(assert (=> b!4332359 d!1273681))

(declare-fun d!1273683 () Bool)

(assert (=> d!1273683 (contains!10608 (toList!2683 lm!1707) (tuple2!47773 hash!377 lt!1545971))))

(declare-fun lt!1546063 () Unit!68185)

(declare-fun choose!26494 (List!48715 (_ BitVec 64) List!48714) Unit!68185)

(assert (=> d!1273683 (= lt!1546063 (choose!26494 (toList!2683 lm!1707) hash!377 lt!1545971))))

(declare-fun e!2695994 () Bool)

(assert (=> d!1273683 e!2695994))

(declare-fun res!1776285 () Bool)

(assert (=> d!1273683 (=> (not res!1776285) (not e!2695994))))

(assert (=> d!1273683 (= res!1776285 (isStrictlySorted!39 (toList!2683 lm!1707)))))

(assert (=> d!1273683 (= (lemmaGetValueByKeyImpliesContainsTuple!197 (toList!2683 lm!1707) hash!377 lt!1545971) lt!1546063)))

(declare-fun b!4332531 () Bool)

(assert (=> b!4332531 (= e!2695994 (= (getValueByKey!325 (toList!2683 lm!1707) hash!377) (Some!10338 lt!1545971)))))

(assert (= (and d!1273683 res!1776285) b!4332531))

(declare-fun m!4926809 () Bool)

(assert (=> d!1273683 m!4926809))

(declare-fun m!4926811 () Bool)

(assert (=> d!1273683 m!4926811))

(assert (=> d!1273683 m!4926695))

(assert (=> b!4332531 m!4926773))

(assert (=> b!4332359 d!1273683))

(declare-fun d!1273689 () Bool)

(declare-fun e!2696000 () Bool)

(assert (=> d!1273689 e!2696000))

(declare-fun res!1776288 () Bool)

(assert (=> d!1273689 (=> res!1776288 e!2696000)))

(declare-fun lt!1546075 () Bool)

(assert (=> d!1273689 (= res!1776288 (not lt!1546075))))

(declare-fun lt!1546072 () Bool)

(assert (=> d!1273689 (= lt!1546075 lt!1546072)))

(declare-fun lt!1546073 () Unit!68185)

(declare-fun e!2695999 () Unit!68185)

(assert (=> d!1273689 (= lt!1546073 e!2695999)))

(declare-fun c!736910 () Bool)

(assert (=> d!1273689 (= c!736910 lt!1546072)))

(declare-fun containsKey!491 (List!48715 (_ BitVec 64)) Bool)

(assert (=> d!1273689 (= lt!1546072 (containsKey!491 (toList!2683 lm!1707) hash!377))))

(assert (=> d!1273689 (= (contains!10610 lm!1707 hash!377) lt!1546075)))

(declare-fun b!4332542 () Bool)

(declare-fun lt!1546074 () Unit!68185)

(assert (=> b!4332542 (= e!2695999 lt!1546074)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!242 (List!48715 (_ BitVec 64)) Unit!68185)

(assert (=> b!4332542 (= lt!1546074 (lemmaContainsKeyImpliesGetValueByKeyDefined!242 (toList!2683 lm!1707) hash!377))))

(declare-fun isDefined!7638 (Option!10339) Bool)

(assert (=> b!4332542 (isDefined!7638 (getValueByKey!325 (toList!2683 lm!1707) hash!377))))

(declare-fun b!4332543 () Bool)

(declare-fun Unit!68191 () Unit!68185)

(assert (=> b!4332543 (= e!2695999 Unit!68191)))

(declare-fun b!4332544 () Bool)

(assert (=> b!4332544 (= e!2696000 (isDefined!7638 (getValueByKey!325 (toList!2683 lm!1707) hash!377)))))

(assert (= (and d!1273689 c!736910) b!4332542))

(assert (= (and d!1273689 (not c!736910)) b!4332543))

(assert (= (and d!1273689 (not res!1776288)) b!4332544))

(declare-fun m!4926815 () Bool)

(assert (=> d!1273689 m!4926815))

(declare-fun m!4926817 () Bool)

(assert (=> b!4332542 m!4926817))

(assert (=> b!4332542 m!4926773))

(assert (=> b!4332542 m!4926773))

(declare-fun m!4926819 () Bool)

(assert (=> b!4332542 m!4926819))

(assert (=> b!4332544 m!4926773))

(assert (=> b!4332544 m!4926773))

(assert (=> b!4332544 m!4926819))

(assert (=> b!4332370 d!1273689))

(declare-fun d!1273693 () Bool)

(declare-fun hash!1287 (Hashable!4742 K!9943) (_ BitVec 64))

(assert (=> d!1273693 (= (hash!1285 hashF!1247 key!3918) (hash!1287 hashF!1247 key!3918))))

(declare-fun bs!608014 () Bool)

(assert (= bs!608014 d!1273693))

(declare-fun m!4926821 () Bool)

(assert (=> bs!608014 m!4926821))

(assert (=> b!4332368 d!1273693))

(declare-fun b!4332549 () Bool)

(declare-fun e!2696003 () Bool)

(declare-fun tp!1328649 () Bool)

(declare-fun tp!1328650 () Bool)

(assert (=> b!4332549 (= e!2696003 (and tp!1328649 tp!1328650))))

(assert (=> b!4332365 (= tp!1328637 e!2696003)))

(assert (= (and b!4332365 (is-Cons!48591 (toList!2683 lm!1707))) b!4332549))

(declare-fun b!4332554 () Bool)

(declare-fun tp!1328653 () Bool)

(declare-fun e!2696006 () Bool)

(assert (=> b!4332554 (= e!2696006 (and tp_is_empty!24637 tp_is_empty!24639 tp!1328653))))

(assert (=> b!4332360 (= tp!1328638 e!2696006)))

(assert (= (and b!4332360 (is-Cons!48590 (t!355630 newBucket!200))) b!4332554))

(declare-fun b_lambda!128019 () Bool)

(assert (= b_lambda!128009 (or start!417580 b_lambda!128019)))

(declare-fun bs!608015 () Bool)

(declare-fun d!1273695 () Bool)

(assert (= bs!608015 (and d!1273695 start!417580)))

(assert (=> bs!608015 (= (dynLambda!20551 lambda!134775 (h!54076 (t!355631 (toList!2683 lm!1707)))) (noDuplicateKeys!350 (_2!27180 (h!54076 (t!355631 (toList!2683 lm!1707))))))))

(declare-fun m!4926823 () Bool)

(assert (=> bs!608015 m!4926823))

(assert (=> b!4332441 d!1273695))

(declare-fun b_lambda!128021 () Bool)

(assert (= b_lambda!128007 (or start!417580 b_lambda!128021)))

(declare-fun bs!608016 () Bool)

(declare-fun d!1273697 () Bool)

(assert (= bs!608016 (and d!1273697 start!417580)))

(assert (=> bs!608016 (= (dynLambda!20551 lambda!134775 (tuple2!47773 hash!377 newBucket!200)) (noDuplicateKeys!350 (_2!27180 (tuple2!47773 hash!377 newBucket!200))))))

(declare-fun m!4926825 () Bool)

(assert (=> bs!608016 m!4926825))

(assert (=> b!4332436 d!1273697))

(declare-fun b_lambda!128023 () Bool)

(assert (= b_lambda!128003 (or start!417580 b_lambda!128023)))

(declare-fun bs!608017 () Bool)

(declare-fun d!1273699 () Bool)

(assert (= bs!608017 (and d!1273699 start!417580)))

(assert (=> bs!608017 (= (dynLambda!20551 lambda!134775 (h!54076 (toList!2683 lm!1707))) (noDuplicateKeys!350 (_2!27180 (h!54076 (toList!2683 lm!1707)))))))

(declare-fun m!4926827 () Bool)

(assert (=> bs!608017 m!4926827))

(assert (=> b!4332423 d!1273699))

(declare-fun b_lambda!128025 () Bool)

(assert (= b_lambda!128013 (or start!417580 b_lambda!128025)))

(declare-fun bs!608018 () Bool)

(declare-fun d!1273701 () Bool)

(assert (= bs!608018 (and d!1273701 start!417580)))

(assert (=> bs!608018 (= (dynLambda!20551 lambda!134775 lt!1545970) (noDuplicateKeys!350 (_2!27180 lt!1545970)))))

(declare-fun m!4926829 () Bool)

(assert (=> bs!608018 m!4926829))

(assert (=> d!1273673 d!1273701))

(declare-fun b_lambda!128027 () Bool)

(assert (= b_lambda!128005 (or start!417580 b_lambda!128027)))

(declare-fun bs!608019 () Bool)

(declare-fun d!1273703 () Bool)

(assert (= bs!608019 (and d!1273703 start!417580)))

(assert (=> bs!608019 (= (dynLambda!20551 lambda!134775 (h!54076 (toList!2683 lt!1545974))) (noDuplicateKeys!350 (_2!27180 (h!54076 (toList!2683 lt!1545974)))))))

(declare-fun m!4926831 () Bool)

(assert (=> bs!608019 m!4926831))

(assert (=> b!4332425 d!1273703))

(push 1)

(assert (not d!1273661))

(assert (not d!1273667))

(assert (not d!1273683))

(assert (not b!4332442))

(assert (not d!1273677))

(assert (not bs!608019))

(assert (not d!1273641))

(assert (not b!4332494))

(assert (not d!1273653))

(assert (not b!4332418))

(assert (not d!1273681))

(assert (not b!4332531))

(assert (not b_lambda!128023))

(assert (not bs!608016))

(assert (not b!4332471))

(assert (not b_lambda!128027))

(assert (not bm!301085))

(assert (not b!4332424))

(assert (not b!4332475))

(assert (not bs!608018))

(assert (not b!4332417))

(assert (not d!1273671))

(assert (not b!4332554))

(assert (not d!1273651))

(assert (not b!4332502))

(assert (not b!4332542))

(assert (not b!4332474))

(assert (not b!4332426))

(assert (not d!1273673))

(assert (not bs!608017))

(assert (not b_lambda!128025))

(assert (not b!4332508))

(assert (not b!4332476))

(assert (not b!4332544))

(assert (not b!4332432))

(assert (not d!1273693))

(assert (not d!1273647))

(assert (not b!4332549))

(assert (not b!4332472))

(assert (not b_lambda!128021))

(assert (not b!4332525))

(assert (not d!1273657))

(assert (not b!4332431))

(assert tp_is_empty!24637)

(assert (not d!1273689))

(assert (not bs!608015))

(assert tp_is_empty!24639)

(assert (not b!4332478))

(assert (not b_lambda!128019))

(assert (not b!4332470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


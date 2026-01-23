; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506776 () Bool)

(assert start!506776)

(declare-fun bs!1173197 () Bool)

(declare-fun b!4853367 () Bool)

(assert (= bs!1173197 (and b!4853367 start!506776)))

(declare-fun lambda!243017 () Int)

(declare-fun lambda!243016 () Int)

(assert (=> bs!1173197 (not (= lambda!243017 lambda!243016))))

(assert (=> b!4853367 true))

(declare-fun b!4853363 () Bool)

(assert (=> b!4853363 true))

(assert (=> b!4853363 true))

(declare-fun e!3034042 () Bool)

(assert (=> b!4853363 (= e!3034042 false)))

(declare-datatypes ((Unit!145810 0))(
  ( (Unit!145811) )
))
(declare-fun lt!1990659 () Unit!145810)

(declare-fun lambda!243018 () Int)

(declare-datatypes ((K!17532 0))(
  ( (K!17533 (val!22331 Int)) )
))
(declare-datatypes ((V!17778 0))(
  ( (V!17779 (val!22332 Int)) )
))
(declare-datatypes ((tuple2!59498 0))(
  ( (tuple2!59499 (_1!33043 K!17532) (_2!33043 V!17778)) )
))
(declare-datatypes ((List!55806 0))(
  ( (Nil!55682) (Cons!55682 (h!62128 tuple2!59498) (t!363302 List!55806)) )
))
(declare-fun lt!1990660 () List!55806)

(declare-fun key!6955 () K!17532)

(declare-fun forallContained!4580 (List!55806 Int tuple2!59498) Unit!145810)

(declare-datatypes ((Option!13744 0))(
  ( (None!13743) (Some!13743 (v!49551 tuple2!59498)) )
))
(declare-fun get!19129 (Option!13744) tuple2!59498)

(declare-fun getPair!1137 (List!55806 K!17532) Option!13744)

(assert (=> b!4853363 (= lt!1990659 (forallContained!4580 lt!1990660 lambda!243018 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955))))))))

(declare-fun lt!1990661 () Unit!145810)

(declare-datatypes ((tuple2!59500 0))(
  ( (tuple2!59501 (_1!33044 (_ BitVec 64)) (_2!33044 List!55806)) )
))
(declare-fun lt!1990662 () tuple2!59500)

(declare-datatypes ((List!55807 0))(
  ( (Nil!55683) (Cons!55683 (h!62129 tuple2!59500) (t!363303 List!55807)) )
))
(declare-datatypes ((ListLongMap!6557 0))(
  ( (ListLongMap!6558 (toList!7907 List!55807)) )
))
(declare-fun lm!2840 () ListLongMap!6557)

(declare-fun forallContained!4581 (List!55807 Int tuple2!59500) Unit!145810)

(assert (=> b!4853363 (= lt!1990661 (forallContained!4581 (toList!7907 lm!2840) lambda!243016 lt!1990662))))

(declare-fun b!4853364 () Bool)

(declare-fun res!2071995 () Bool)

(assert (=> b!4853364 (=> res!2071995 e!3034042)))

(declare-fun containsKey!4758 (List!55806 K!17532) Bool)

(assert (=> b!4853364 (= res!2071995 (not (containsKey!4758 lt!1990660 key!6955)))))

(declare-fun b!4853365 () Bool)

(declare-fun e!3034043 () Bool)

(declare-fun tp!1365209 () Bool)

(assert (=> b!4853365 (= e!3034043 tp!1365209)))

(declare-fun b!4853366 () Bool)

(declare-fun res!2071992 () Bool)

(declare-fun e!3034044 () Bool)

(assert (=> b!4853366 (=> (not res!2071992) (not e!3034044))))

(declare-datatypes ((Hashable!7549 0))(
  ( (HashableExt!7548 (__x!33824 Int)) )
))
(declare-fun hashF!1802 () Hashable!7549)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun hash!5682 (Hashable!7549 K!17532) (_ BitVec 64))

(assert (=> b!4853366 (= res!2071992 (not (= hash!467 (hash!5682 hashF!1802 key!6955))))))

(assert (=> b!4853367 (= e!3034044 (not e!3034042))))

(declare-fun res!2071993 () Bool)

(assert (=> b!4853367 (=> res!2071993 e!3034042)))

(declare-fun allKeysSameHash!2057 (List!55806 (_ BitVec 64) Hashable!7549) Bool)

(assert (=> b!4853367 (= res!2071993 (not (allKeysSameHash!2057 lt!1990660 hash!467 hashF!1802)))))

(declare-fun lt!1990663 () Unit!145810)

(assert (=> b!4853367 (= lt!1990663 (forallContained!4581 (toList!7907 lm!2840) lambda!243017 lt!1990662))))

(declare-fun contains!19332 (List!55807 tuple2!59500) Bool)

(assert (=> b!4853367 (contains!19332 (toList!7907 lm!2840) lt!1990662)))

(assert (=> b!4853367 (= lt!1990662 (tuple2!59501 hash!467 lt!1990660))))

(declare-fun lt!1990664 () Unit!145810)

(declare-fun lemmaGetValueImpliesTupleContained!806 (ListLongMap!6557 (_ BitVec 64) List!55806) Unit!145810)

(assert (=> b!4853367 (= lt!1990664 (lemmaGetValueImpliesTupleContained!806 lm!2840 hash!467 lt!1990660))))

(declare-fun apply!13488 (ListLongMap!6557 (_ BitVec 64)) List!55806)

(assert (=> b!4853367 (= lt!1990660 (apply!13488 lm!2840 hash!467))))

(declare-fun b!4853369 () Bool)

(declare-fun res!2071996 () Bool)

(assert (=> b!4853369 (=> (not res!2071996) (not e!3034044))))

(declare-fun allKeysSameHashInMap!2863 (ListLongMap!6557 Hashable!7549) Bool)

(assert (=> b!4853369 (= res!2071996 (allKeysSameHashInMap!2863 lm!2840 hashF!1802))))

(declare-fun b!4853368 () Bool)

(declare-fun res!2071991 () Bool)

(assert (=> b!4853368 (=> (not res!2071991) (not e!3034044))))

(declare-fun contains!19333 (ListLongMap!6557 (_ BitVec 64)) Bool)

(assert (=> b!4853368 (= res!2071991 (contains!19333 lm!2840 hash!467))))

(declare-fun res!2071994 () Bool)

(assert (=> start!506776 (=> (not res!2071994) (not e!3034044))))

(declare-fun forall!13007 (List!55807 Int) Bool)

(assert (=> start!506776 (= res!2071994 (forall!13007 (toList!7907 lm!2840) lambda!243016))))

(assert (=> start!506776 e!3034044))

(declare-fun inv!71395 (ListLongMap!6557) Bool)

(assert (=> start!506776 (and (inv!71395 lm!2840) e!3034043)))

(assert (=> start!506776 true))

(declare-fun tp_is_empty!35401 () Bool)

(assert (=> start!506776 tp_is_empty!35401))

(assert (= (and start!506776 res!2071994) b!4853369))

(assert (= (and b!4853369 res!2071996) b!4853368))

(assert (= (and b!4853368 res!2071991) b!4853366))

(assert (= (and b!4853366 res!2071992) b!4853367))

(assert (= (and b!4853367 (not res!2071993)) b!4853364))

(assert (= (and b!4853364 (not res!2071995)) b!4853363))

(assert (= start!506776 b!4853365))

(declare-fun m!5851588 () Bool)

(assert (=> b!4853367 m!5851588))

(declare-fun m!5851590 () Bool)

(assert (=> b!4853367 m!5851590))

(declare-fun m!5851592 () Bool)

(assert (=> b!4853367 m!5851592))

(declare-fun m!5851594 () Bool)

(assert (=> b!4853367 m!5851594))

(declare-fun m!5851596 () Bool)

(assert (=> b!4853367 m!5851596))

(declare-fun m!5851598 () Bool)

(assert (=> b!4853369 m!5851598))

(declare-fun m!5851600 () Bool)

(assert (=> b!4853368 m!5851600))

(declare-fun m!5851602 () Bool)

(assert (=> b!4853366 m!5851602))

(declare-fun m!5851604 () Bool)

(assert (=> start!506776 m!5851604))

(declare-fun m!5851606 () Bool)

(assert (=> start!506776 m!5851606))

(declare-fun m!5851608 () Bool)

(assert (=> b!4853363 m!5851608))

(assert (=> b!4853363 m!5851608))

(declare-fun m!5851610 () Bool)

(assert (=> b!4853363 m!5851610))

(declare-fun m!5851612 () Bool)

(assert (=> b!4853363 m!5851612))

(declare-fun m!5851614 () Bool)

(assert (=> b!4853363 m!5851614))

(declare-fun m!5851616 () Bool)

(assert (=> b!4853364 m!5851616))

(push 1)

(assert (not b!4853368))

(assert (not b!4853369))

(assert tp_is_empty!35401)

(assert (not b!4853365))

(assert (not b!4853363))

(assert (not b!4853364))

(assert (not b!4853366))

(assert (not b!4853367))

(assert (not start!506776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1173199 () Bool)

(declare-fun d!1558010 () Bool)

(assert (= bs!1173199 (and d!1558010 start!506776)))

(declare-fun lambda!243032 () Int)

(assert (=> bs!1173199 (not (= lambda!243032 lambda!243016))))

(declare-fun bs!1173200 () Bool)

(assert (= bs!1173200 (and d!1558010 b!4853367)))

(assert (=> bs!1173200 (= lambda!243032 lambda!243017)))

(assert (=> d!1558010 true))

(assert (=> d!1558010 (= (allKeysSameHashInMap!2863 lm!2840 hashF!1802) (forall!13007 (toList!7907 lm!2840) lambda!243032))))

(declare-fun bs!1173201 () Bool)

(assert (= bs!1173201 d!1558010))

(declare-fun m!5851648 () Bool)

(assert (=> bs!1173201 m!5851648))

(assert (=> b!4853369 d!1558010))

(declare-fun d!1558012 () Bool)

(declare-fun res!2072019 () Bool)

(declare-fun e!3034058 () Bool)

(assert (=> d!1558012 (=> res!2072019 e!3034058)))

(assert (=> d!1558012 (= res!2072019 (and (is-Cons!55682 lt!1990660) (= (_1!33043 (h!62128 lt!1990660)) key!6955)))))

(assert (=> d!1558012 (= (containsKey!4758 lt!1990660 key!6955) e!3034058)))

(declare-fun b!4853407 () Bool)

(declare-fun e!3034059 () Bool)

(assert (=> b!4853407 (= e!3034058 e!3034059)))

(declare-fun res!2072020 () Bool)

(assert (=> b!4853407 (=> (not res!2072020) (not e!3034059))))

(assert (=> b!4853407 (= res!2072020 (is-Cons!55682 lt!1990660))))

(declare-fun b!4853408 () Bool)

(assert (=> b!4853408 (= e!3034059 (containsKey!4758 (t!363302 lt!1990660) key!6955))))

(assert (= (and d!1558012 (not res!2072019)) b!4853407))

(assert (= (and b!4853407 res!2072020) b!4853408))

(declare-fun m!5851650 () Bool)

(assert (=> b!4853408 m!5851650))

(assert (=> b!4853364 d!1558012))

(declare-fun d!1558014 () Bool)

(declare-fun hash!5684 (Hashable!7549 K!17532) (_ BitVec 64))

(assert (=> d!1558014 (= (hash!5682 hashF!1802 key!6955) (hash!5684 hashF!1802 key!6955))))

(declare-fun bs!1173202 () Bool)

(assert (= bs!1173202 d!1558014))

(declare-fun m!5851652 () Bool)

(assert (=> bs!1173202 m!5851652))

(assert (=> b!4853366 d!1558014))

(declare-fun bs!1173203 () Bool)

(declare-fun d!1558016 () Bool)

(assert (= bs!1173203 (and d!1558016 b!4853363)))

(declare-fun lambda!243035 () Int)

(assert (=> bs!1173203 (= lambda!243035 lambda!243018)))

(assert (=> d!1558016 true))

(assert (=> d!1558016 true))

(declare-fun forall!13009 (List!55806 Int) Bool)

(assert (=> d!1558016 (= (allKeysSameHash!2057 lt!1990660 hash!467 hashF!1802) (forall!13009 lt!1990660 lambda!243035))))

(declare-fun bs!1173204 () Bool)

(assert (= bs!1173204 d!1558016))

(declare-fun m!5851654 () Bool)

(assert (=> bs!1173204 m!5851654))

(assert (=> b!4853367 d!1558016))

(declare-fun d!1558018 () Bool)

(declare-fun lt!1990685 () Bool)

(declare-fun content!9917 (List!55807) (Set tuple2!59500))

(assert (=> d!1558018 (= lt!1990685 (set.member lt!1990662 (content!9917 (toList!7907 lm!2840))))))

(declare-fun e!3034065 () Bool)

(assert (=> d!1558018 (= lt!1990685 e!3034065)))

(declare-fun res!2072026 () Bool)

(assert (=> d!1558018 (=> (not res!2072026) (not e!3034065))))

(assert (=> d!1558018 (= res!2072026 (is-Cons!55683 (toList!7907 lm!2840)))))

(assert (=> d!1558018 (= (contains!19332 (toList!7907 lm!2840) lt!1990662) lt!1990685)))

(declare-fun b!4853413 () Bool)

(declare-fun e!3034064 () Bool)

(assert (=> b!4853413 (= e!3034065 e!3034064)))

(declare-fun res!2072025 () Bool)

(assert (=> b!4853413 (=> res!2072025 e!3034064)))

(assert (=> b!4853413 (= res!2072025 (= (h!62129 (toList!7907 lm!2840)) lt!1990662))))

(declare-fun b!4853414 () Bool)

(assert (=> b!4853414 (= e!3034064 (contains!19332 (t!363303 (toList!7907 lm!2840)) lt!1990662))))

(assert (= (and d!1558018 res!2072026) b!4853413))

(assert (= (and b!4853413 (not res!2072025)) b!4853414))

(declare-fun m!5851656 () Bool)

(assert (=> d!1558018 m!5851656))

(declare-fun m!5851658 () Bool)

(assert (=> d!1558018 m!5851658))

(declare-fun m!5851660 () Bool)

(assert (=> b!4853414 m!5851660))

(assert (=> b!4853367 d!1558018))

(declare-fun d!1558020 () Bool)

(declare-datatypes ((Option!13746 0))(
  ( (None!13745) (Some!13745 (v!49554 List!55806)) )
))
(declare-fun get!19131 (Option!13746) List!55806)

(declare-fun getValueByKey!2754 (List!55807 (_ BitVec 64)) Option!13746)

(assert (=> d!1558020 (= (apply!13488 lm!2840 hash!467) (get!19131 (getValueByKey!2754 (toList!7907 lm!2840) hash!467)))))

(declare-fun bs!1173205 () Bool)

(assert (= bs!1173205 d!1558020))

(declare-fun m!5851662 () Bool)

(assert (=> bs!1173205 m!5851662))

(assert (=> bs!1173205 m!5851662))

(declare-fun m!5851664 () Bool)

(assert (=> bs!1173205 m!5851664))

(assert (=> b!4853367 d!1558020))

(declare-fun d!1558022 () Bool)

(assert (=> d!1558022 (contains!19332 (toList!7907 lm!2840) (tuple2!59501 hash!467 lt!1990660))))

(declare-fun lt!1990688 () Unit!145810)

(declare-fun choose!35537 (ListLongMap!6557 (_ BitVec 64) List!55806) Unit!145810)

(assert (=> d!1558022 (= lt!1990688 (choose!35537 lm!2840 hash!467 lt!1990660))))

(assert (=> d!1558022 (contains!19333 lm!2840 hash!467)))

(assert (=> d!1558022 (= (lemmaGetValueImpliesTupleContained!806 lm!2840 hash!467 lt!1990660) lt!1990688)))

(declare-fun bs!1173206 () Bool)

(assert (= bs!1173206 d!1558022))

(declare-fun m!5851666 () Bool)

(assert (=> bs!1173206 m!5851666))

(declare-fun m!5851668 () Bool)

(assert (=> bs!1173206 m!5851668))

(assert (=> bs!1173206 m!5851600))

(assert (=> b!4853367 d!1558022))

(declare-fun d!1558024 () Bool)

(declare-fun dynLambda!22382 (Int tuple2!59500) Bool)

(assert (=> d!1558024 (dynLambda!22382 lambda!243017 lt!1990662)))

(declare-fun lt!1990691 () Unit!145810)

(declare-fun choose!35538 (List!55807 Int tuple2!59500) Unit!145810)

(assert (=> d!1558024 (= lt!1990691 (choose!35538 (toList!7907 lm!2840) lambda!243017 lt!1990662))))

(declare-fun e!3034068 () Bool)

(assert (=> d!1558024 e!3034068))

(declare-fun res!2072029 () Bool)

(assert (=> d!1558024 (=> (not res!2072029) (not e!3034068))))

(assert (=> d!1558024 (= res!2072029 (forall!13007 (toList!7907 lm!2840) lambda!243017))))

(assert (=> d!1558024 (= (forallContained!4581 (toList!7907 lm!2840) lambda!243017 lt!1990662) lt!1990691)))

(declare-fun b!4853418 () Bool)

(assert (=> b!4853418 (= e!3034068 (contains!19332 (toList!7907 lm!2840) lt!1990662))))

(assert (= (and d!1558024 res!2072029) b!4853418))

(declare-fun b_lambda!193171 () Bool)

(assert (=> (not b_lambda!193171) (not d!1558024)))

(declare-fun m!5851670 () Bool)

(assert (=> d!1558024 m!5851670))

(declare-fun m!5851672 () Bool)

(assert (=> d!1558024 m!5851672))

(declare-fun m!5851674 () Bool)

(assert (=> d!1558024 m!5851674))

(assert (=> b!4853418 m!5851590))

(assert (=> b!4853367 d!1558024))

(declare-fun d!1558028 () Bool)

(declare-fun res!2072034 () Bool)

(declare-fun e!3034073 () Bool)

(assert (=> d!1558028 (=> res!2072034 e!3034073)))

(assert (=> d!1558028 (= res!2072034 (is-Nil!55683 (toList!7907 lm!2840)))))

(assert (=> d!1558028 (= (forall!13007 (toList!7907 lm!2840) lambda!243016) e!3034073)))

(declare-fun b!4853423 () Bool)

(declare-fun e!3034074 () Bool)

(assert (=> b!4853423 (= e!3034073 e!3034074)))

(declare-fun res!2072035 () Bool)

(assert (=> b!4853423 (=> (not res!2072035) (not e!3034074))))

(assert (=> b!4853423 (= res!2072035 (dynLambda!22382 lambda!243016 (h!62129 (toList!7907 lm!2840))))))

(declare-fun b!4853424 () Bool)

(assert (=> b!4853424 (= e!3034074 (forall!13007 (t!363303 (toList!7907 lm!2840)) lambda!243016))))

(assert (= (and d!1558028 (not res!2072034)) b!4853423))

(assert (= (and b!4853423 res!2072035) b!4853424))

(declare-fun b_lambda!193173 () Bool)

(assert (=> (not b_lambda!193173) (not b!4853423)))

(declare-fun m!5851676 () Bool)

(assert (=> b!4853423 m!5851676))

(declare-fun m!5851678 () Bool)

(assert (=> b!4853424 m!5851678))

(assert (=> start!506776 d!1558028))

(declare-fun d!1558030 () Bool)

(declare-fun isStrictlySorted!1102 (List!55807) Bool)

(assert (=> d!1558030 (= (inv!71395 lm!2840) (isStrictlySorted!1102 (toList!7907 lm!2840)))))

(declare-fun bs!1173207 () Bool)

(assert (= bs!1173207 d!1558030))

(declare-fun m!5851680 () Bool)

(assert (=> bs!1173207 m!5851680))

(assert (=> start!506776 d!1558030))

(declare-fun d!1558032 () Bool)

(declare-fun dynLambda!22383 (Int tuple2!59498) Bool)

(assert (=> d!1558032 (dynLambda!22383 lambda!243018 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955)))))))

(declare-fun lt!1990697 () Unit!145810)

(declare-fun choose!35539 (List!55806 Int tuple2!59498) Unit!145810)

(assert (=> d!1558032 (= lt!1990697 (choose!35539 lt!1990660 lambda!243018 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955))))))))

(declare-fun e!3034080 () Bool)

(assert (=> d!1558032 e!3034080))

(declare-fun res!2072041 () Bool)

(assert (=> d!1558032 (=> (not res!2072041) (not e!3034080))))

(assert (=> d!1558032 (= res!2072041 (forall!13009 lt!1990660 lambda!243018))))

(assert (=> d!1558032 (= (forallContained!4580 lt!1990660 lambda!243018 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955))))) lt!1990697)))

(declare-fun b!4853430 () Bool)

(declare-fun contains!19336 (List!55806 tuple2!59498) Bool)

(assert (=> b!4853430 (= e!3034080 (contains!19336 lt!1990660 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955))))))))

(assert (= (and d!1558032 res!2072041) b!4853430))

(declare-fun b_lambda!193177 () Bool)

(assert (=> (not b_lambda!193177) (not d!1558032)))

(declare-fun m!5851690 () Bool)

(assert (=> d!1558032 m!5851690))

(declare-fun m!5851692 () Bool)

(assert (=> d!1558032 m!5851692))

(declare-fun m!5851694 () Bool)

(assert (=> d!1558032 m!5851694))

(declare-fun m!5851696 () Bool)

(assert (=> b!4853430 m!5851696))

(assert (=> b!4853363 d!1558032))

(declare-fun d!1558036 () Bool)

(assert (=> d!1558036 (= (get!19129 (getPair!1137 lt!1990660 key!6955)) (v!49551 (getPair!1137 lt!1990660 key!6955)))))

(assert (=> b!4853363 d!1558036))

(declare-fun b!4853447 () Bool)

(declare-fun e!3034092 () Bool)

(declare-fun e!3034091 () Bool)

(assert (=> b!4853447 (= e!3034092 e!3034091)))

(declare-fun res!2072052 () Bool)

(assert (=> b!4853447 (=> (not res!2072052) (not e!3034091))))

(declare-fun lt!1990700 () Option!13744)

(declare-fun isDefined!10829 (Option!13744) Bool)

(assert (=> b!4853447 (= res!2072052 (isDefined!10829 lt!1990700))))

(declare-fun b!4853448 () Bool)

(declare-fun res!2072051 () Bool)

(assert (=> b!4853448 (=> (not res!2072051) (not e!3034091))))

(assert (=> b!4853448 (= res!2072051 (= (_1!33043 (get!19129 lt!1990700)) key!6955))))

(declare-fun b!4853449 () Bool)

(declare-fun e!3034094 () Bool)

(assert (=> b!4853449 (= e!3034094 (not (containsKey!4758 lt!1990660 key!6955)))))

(declare-fun b!4853450 () Bool)

(assert (=> b!4853450 (= e!3034091 (contains!19336 lt!1990660 (get!19129 lt!1990700)))))

(declare-fun b!4853451 () Bool)

(declare-fun e!3034093 () Option!13744)

(declare-fun e!3034095 () Option!13744)

(assert (=> b!4853451 (= e!3034093 e!3034095)))

(declare-fun c!825760 () Bool)

(assert (=> b!4853451 (= c!825760 (is-Cons!55682 lt!1990660))))

(declare-fun b!4853452 () Bool)

(assert (=> b!4853452 (= e!3034095 (getPair!1137 (t!363302 lt!1990660) key!6955))))

(declare-fun d!1558038 () Bool)

(assert (=> d!1558038 e!3034092))

(declare-fun res!2072050 () Bool)

(assert (=> d!1558038 (=> res!2072050 e!3034092)))

(assert (=> d!1558038 (= res!2072050 e!3034094)))

(declare-fun res!2072053 () Bool)

(assert (=> d!1558038 (=> (not res!2072053) (not e!3034094))))

(declare-fun isEmpty!29777 (Option!13744) Bool)

(assert (=> d!1558038 (= res!2072053 (isEmpty!29777 lt!1990700))))

(assert (=> d!1558038 (= lt!1990700 e!3034093)))

(declare-fun c!825759 () Bool)

(assert (=> d!1558038 (= c!825759 (and (is-Cons!55682 lt!1990660) (= (_1!33043 (h!62128 lt!1990660)) key!6955)))))

(declare-fun noDuplicateKeys!2633 (List!55806) Bool)

(assert (=> d!1558038 (noDuplicateKeys!2633 lt!1990660)))

(assert (=> d!1558038 (= (getPair!1137 lt!1990660 key!6955) lt!1990700)))

(declare-fun b!4853453 () Bool)

(assert (=> b!4853453 (= e!3034093 (Some!13743 (h!62128 lt!1990660)))))

(declare-fun b!4853454 () Bool)

(assert (=> b!4853454 (= e!3034095 None!13743)))

(assert (= (and d!1558038 c!825759) b!4853453))

(assert (= (and d!1558038 (not c!825759)) b!4853451))

(assert (= (and b!4853451 c!825760) b!4853452))

(assert (= (and b!4853451 (not c!825760)) b!4853454))

(assert (= (and d!1558038 res!2072053) b!4853449))

(assert (= (and d!1558038 (not res!2072050)) b!4853447))

(assert (= (and b!4853447 res!2072052) b!4853448))

(assert (= (and b!4853448 res!2072051) b!4853450))

(assert (=> b!4853449 m!5851616))

(declare-fun m!5851698 () Bool)

(assert (=> b!4853452 m!5851698))

(declare-fun m!5851700 () Bool)

(assert (=> b!4853450 m!5851700))

(assert (=> b!4853450 m!5851700))

(declare-fun m!5851702 () Bool)

(assert (=> b!4853450 m!5851702))

(declare-fun m!5851704 () Bool)

(assert (=> d!1558038 m!5851704))

(declare-fun m!5851706 () Bool)

(assert (=> d!1558038 m!5851706))

(assert (=> b!4853448 m!5851700))

(declare-fun m!5851708 () Bool)

(assert (=> b!4853447 m!5851708))

(assert (=> b!4853363 d!1558038))

(declare-fun d!1558042 () Bool)

(assert (=> d!1558042 (dynLambda!22382 lambda!243016 lt!1990662)))

(declare-fun lt!1990701 () Unit!145810)

(assert (=> d!1558042 (= lt!1990701 (choose!35538 (toList!7907 lm!2840) lambda!243016 lt!1990662))))

(declare-fun e!3034096 () Bool)

(assert (=> d!1558042 e!3034096))

(declare-fun res!2072054 () Bool)

(assert (=> d!1558042 (=> (not res!2072054) (not e!3034096))))

(assert (=> d!1558042 (= res!2072054 (forall!13007 (toList!7907 lm!2840) lambda!243016))))

(assert (=> d!1558042 (= (forallContained!4581 (toList!7907 lm!2840) lambda!243016 lt!1990662) lt!1990701)))

(declare-fun b!4853455 () Bool)

(assert (=> b!4853455 (= e!3034096 (contains!19332 (toList!7907 lm!2840) lt!1990662))))

(assert (= (and d!1558042 res!2072054) b!4853455))

(declare-fun b_lambda!193179 () Bool)

(assert (=> (not b_lambda!193179) (not d!1558042)))

(declare-fun m!5851710 () Bool)

(assert (=> d!1558042 m!5851710))

(declare-fun m!5851712 () Bool)

(assert (=> d!1558042 m!5851712))

(assert (=> d!1558042 m!5851604))

(assert (=> b!4853455 m!5851590))

(assert (=> b!4853363 d!1558042))

(declare-fun d!1558044 () Bool)

(declare-fun e!3034112 () Bool)

(assert (=> d!1558044 e!3034112))

(declare-fun res!2072065 () Bool)

(assert (=> d!1558044 (=> res!2072065 e!3034112)))

(declare-fun lt!1990713 () Bool)

(assert (=> d!1558044 (= res!2072065 (not lt!1990713))))

(declare-fun lt!1990712 () Bool)

(assert (=> d!1558044 (= lt!1990713 lt!1990712)))

(declare-fun lt!1990715 () Unit!145810)

(declare-fun e!3034111 () Unit!145810)

(assert (=> d!1558044 (= lt!1990715 e!3034111)))

(declare-fun c!825767 () Bool)

(assert (=> d!1558044 (= c!825767 lt!1990712)))

(declare-fun containsKey!4760 (List!55807 (_ BitVec 64)) Bool)

(assert (=> d!1558044 (= lt!1990712 (containsKey!4760 (toList!7907 lm!2840) hash!467))))

(assert (=> d!1558044 (= (contains!19333 lm!2840 hash!467) lt!1990713)))

(declare-fun b!4853478 () Bool)

(declare-fun lt!1990714 () Unit!145810)

(assert (=> b!4853478 (= e!3034111 lt!1990714)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2526 (List!55807 (_ BitVec 64)) Unit!145810)

(assert (=> b!4853478 (= lt!1990714 (lemmaContainsKeyImpliesGetValueByKeyDefined!2526 (toList!7907 lm!2840) hash!467))))

(declare-fun isDefined!10830 (Option!13746) Bool)

(assert (=> b!4853478 (isDefined!10830 (getValueByKey!2754 (toList!7907 lm!2840) hash!467))))

(declare-fun b!4853479 () Bool)

(declare-fun Unit!145814 () Unit!145810)

(assert (=> b!4853479 (= e!3034111 Unit!145814)))

(declare-fun b!4853480 () Bool)

(assert (=> b!4853480 (= e!3034112 (isDefined!10830 (getValueByKey!2754 (toList!7907 lm!2840) hash!467)))))

(assert (= (and d!1558044 c!825767) b!4853478))

(assert (= (and d!1558044 (not c!825767)) b!4853479))

(assert (= (and d!1558044 (not res!2072065)) b!4853480))

(declare-fun m!5851714 () Bool)

(assert (=> d!1558044 m!5851714))

(declare-fun m!5851716 () Bool)

(assert (=> b!4853478 m!5851716))

(assert (=> b!4853478 m!5851662))

(assert (=> b!4853478 m!5851662))

(declare-fun m!5851718 () Bool)

(assert (=> b!4853478 m!5851718))

(assert (=> b!4853480 m!5851662))

(assert (=> b!4853480 m!5851662))

(assert (=> b!4853480 m!5851718))

(assert (=> b!4853368 d!1558044))

(declare-fun b!4853485 () Bool)

(declare-fun e!3034115 () Bool)

(declare-fun tp!1365217 () Bool)

(declare-fun tp!1365218 () Bool)

(assert (=> b!4853485 (= e!3034115 (and tp!1365217 tp!1365218))))

(assert (=> b!4853365 (= tp!1365209 e!3034115)))

(assert (= (and b!4853365 (is-Cons!55683 (toList!7907 lm!2840))) b!4853485))

(declare-fun b_lambda!193181 () Bool)

(assert (= b_lambda!193173 (or start!506776 b_lambda!193181)))

(declare-fun bs!1173208 () Bool)

(declare-fun d!1558046 () Bool)

(assert (= bs!1173208 (and d!1558046 start!506776)))

(assert (=> bs!1173208 (= (dynLambda!22382 lambda!243016 (h!62129 (toList!7907 lm!2840))) (noDuplicateKeys!2633 (_2!33044 (h!62129 (toList!7907 lm!2840)))))))

(declare-fun m!5851720 () Bool)

(assert (=> bs!1173208 m!5851720))

(assert (=> b!4853423 d!1558046))

(declare-fun b_lambda!193183 () Bool)

(assert (= b_lambda!193177 (or b!4853363 b_lambda!193183)))

(declare-fun bs!1173209 () Bool)

(declare-fun d!1558048 () Bool)

(assert (= bs!1173209 (and d!1558048 b!4853363)))

(assert (=> bs!1173209 (= (dynLambda!22383 lambda!243018 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955))))) (= (hash!5682 hashF!1802 (_1!33043 (tuple2!59499 key!6955 (_2!33043 (get!19129 (getPair!1137 lt!1990660 key!6955)))))) hash!467))))

(declare-fun m!5851722 () Bool)

(assert (=> bs!1173209 m!5851722))

(assert (=> d!1558032 d!1558048))

(declare-fun b_lambda!193185 () Bool)

(assert (= b_lambda!193171 (or b!4853367 b_lambda!193185)))

(declare-fun bs!1173210 () Bool)

(declare-fun d!1558050 () Bool)

(assert (= bs!1173210 (and d!1558050 b!4853367)))

(assert (=> bs!1173210 (= (dynLambda!22382 lambda!243017 lt!1990662) (allKeysSameHash!2057 (_2!33044 lt!1990662) (_1!33044 lt!1990662) hashF!1802))))

(declare-fun m!5851724 () Bool)

(assert (=> bs!1173210 m!5851724))

(assert (=> d!1558024 d!1558050))

(declare-fun b_lambda!193187 () Bool)

(assert (= b_lambda!193179 (or start!506776 b_lambda!193187)))

(declare-fun bs!1173211 () Bool)

(declare-fun d!1558052 () Bool)

(assert (= bs!1173211 (and d!1558052 start!506776)))

(assert (=> bs!1173211 (= (dynLambda!22382 lambda!243016 lt!1990662) (noDuplicateKeys!2633 (_2!33044 lt!1990662)))))

(declare-fun m!5851726 () Bool)

(assert (=> bs!1173211 m!5851726))

(assert (=> d!1558042 d!1558052))

(push 1)

(assert (not b_lambda!193185))

(assert (not d!1558010))

(assert (not bs!1173211))

(assert (not b!4853485))

(assert (not d!1558018))

(assert tp_is_empty!35401)

(assert (not bs!1173210))

(assert (not b_lambda!193187))

(assert (not b!4853452))

(assert (not d!1558030))

(assert (not d!1558032))

(assert (not b!4853414))

(assert (not bs!1173209))

(assert (not b!4853478))

(assert (not b!4853448))

(assert (not b!4853447))

(assert (not b!4853449))

(assert (not d!1558022))

(assert (not b!4853450))

(assert (not d!1558020))

(assert (not d!1558044))

(assert (not b!4853418))

(assert (not d!1558024))

(assert (not d!1558016))

(assert (not b!4853408))

(assert (not b!4853430))

(assert (not bs!1173208))

(assert (not b!4853455))

(assert (not d!1558042))

(assert (not b!4853424))

(assert (not d!1558038))

(assert (not b!4853480))

(assert (not d!1558014))

(assert (not b_lambda!193183))

(assert (not b_lambda!193181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


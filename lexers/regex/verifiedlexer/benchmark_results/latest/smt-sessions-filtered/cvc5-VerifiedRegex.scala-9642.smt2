; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506530 () Bool)

(assert start!506530)

(declare-fun bs!1173081 () Bool)

(declare-fun b!4852560 () Bool)

(assert (= bs!1173081 (and b!4852560 start!506530)))

(declare-fun lambda!242874 () Int)

(declare-fun lambda!242873 () Int)

(assert (=> bs!1173081 (not (= lambda!242874 lambda!242873))))

(assert (=> b!4852560 true))

(declare-fun b!4852558 () Bool)

(declare-fun e!3033545 () Bool)

(declare-fun tp!1365105 () Bool)

(assert (=> b!4852558 (= e!3033545 tp!1365105)))

(declare-fun b!4852559 () Bool)

(declare-fun res!2071480 () Bool)

(declare-fun e!3033546 () Bool)

(assert (=> b!4852559 (=> (not res!2071480) (not e!3033546))))

(declare-datatypes ((Hashable!7535 0))(
  ( (HashableExt!7534 (__x!33810 Int)) )
))
(declare-fun hashF!1802 () Hashable!7535)

(declare-datatypes ((K!17497 0))(
  ( (K!17498 (val!22303 Int)) )
))
(declare-fun key!6955 () K!17497)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun hash!5662 (Hashable!7535 K!17497) (_ BitVec 64))

(assert (=> b!4852559 (= res!2071480 (not (= hash!467 (hash!5662 hashF!1802 key!6955))))))

(declare-fun e!3033547 () Bool)

(assert (=> b!4852560 (= e!3033546 (not e!3033547))))

(declare-fun res!2071478 () Bool)

(assert (=> b!4852560 (=> res!2071478 e!3033547)))

(declare-datatypes ((V!17743 0))(
  ( (V!17744 (val!22304 Int)) )
))
(declare-datatypes ((tuple2!59442 0))(
  ( (tuple2!59443 (_1!33015 K!17497) (_2!33015 V!17743)) )
))
(declare-datatypes ((List!55778 0))(
  ( (Nil!55654) (Cons!55654 (h!62093 tuple2!59442) (t!363274 List!55778)) )
))
(declare-fun lt!1990319 () List!55778)

(declare-fun allKeysSameHash!2045 (List!55778 (_ BitVec 64) Hashable!7535) Bool)

(assert (=> b!4852560 (= res!2071478 (not (allKeysSameHash!2045 lt!1990319 hash!467 hashF!1802)))))

(declare-datatypes ((Unit!145780 0))(
  ( (Unit!145781) )
))
(declare-fun lt!1990320 () Unit!145780)

(declare-datatypes ((tuple2!59444 0))(
  ( (tuple2!59445 (_1!33016 (_ BitVec 64)) (_2!33016 List!55778)) )
))
(declare-datatypes ((List!55779 0))(
  ( (Nil!55655) (Cons!55655 (h!62094 tuple2!59444) (t!363275 List!55779)) )
))
(declare-datatypes ((ListLongMap!6529 0))(
  ( (ListLongMap!6530 (toList!7893 List!55779)) )
))
(declare-fun lm!2840 () ListLongMap!6529)

(declare-fun lt!1990321 () tuple2!59444)

(declare-fun forallContained!4568 (List!55779 Int tuple2!59444) Unit!145780)

(assert (=> b!4852560 (= lt!1990320 (forallContained!4568 (toList!7893 lm!2840) lambda!242874 lt!1990321))))

(declare-fun contains!19304 (List!55779 tuple2!59444) Bool)

(assert (=> b!4852560 (contains!19304 (toList!7893 lm!2840) lt!1990321)))

(assert (=> b!4852560 (= lt!1990321 (tuple2!59445 hash!467 lt!1990319))))

(declare-fun lt!1990318 () Unit!145780)

(declare-fun lemmaGetValueImpliesTupleContained!796 (ListLongMap!6529 (_ BitVec 64) List!55778) Unit!145780)

(assert (=> b!4852560 (= lt!1990318 (lemmaGetValueImpliesTupleContained!796 lm!2840 hash!467 lt!1990319))))

(declare-fun apply!13474 (ListLongMap!6529 (_ BitVec 64)) List!55778)

(assert (=> b!4852560 (= lt!1990319 (apply!13474 lm!2840 hash!467))))

(declare-fun b!4852561 () Bool)

(declare-fun res!2071483 () Bool)

(assert (=> b!4852561 (=> (not res!2071483) (not e!3033546))))

(declare-fun allKeysSameHashInMap!2849 (ListLongMap!6529 Hashable!7535) Bool)

(assert (=> b!4852561 (= res!2071483 (allKeysSameHashInMap!2849 lm!2840 hashF!1802))))

(declare-fun b!4852562 () Bool)

(declare-fun res!2071482 () Bool)

(assert (=> b!4852562 (=> (not res!2071482) (not e!3033546))))

(declare-fun contains!19305 (ListLongMap!6529 (_ BitVec 64)) Bool)

(assert (=> b!4852562 (= res!2071482 (contains!19305 lm!2840 hash!467))))

(declare-fun b!4852563 () Bool)

(declare-datatypes ((Option!13732 0))(
  ( (None!13731) (Some!13731 (v!49531 tuple2!59442)) )
))
(declare-fun isDefined!10819 (Option!13732) Bool)

(declare-fun getPair!1131 (List!55778 K!17497) Option!13732)

(assert (=> b!4852563 (= e!3033547 (isDefined!10819 (getPair!1131 lt!1990319 key!6955)))))

(declare-fun lt!1990317 () Unit!145780)

(assert (=> b!4852563 (= lt!1990317 (forallContained!4568 (toList!7893 lm!2840) lambda!242873 lt!1990321))))

(declare-fun res!2071479 () Bool)

(assert (=> start!506530 (=> (not res!2071479) (not e!3033546))))

(declare-fun forall!12988 (List!55779 Int) Bool)

(assert (=> start!506530 (= res!2071479 (forall!12988 (toList!7893 lm!2840) lambda!242873))))

(assert (=> start!506530 e!3033546))

(declare-fun inv!71360 (ListLongMap!6529) Bool)

(assert (=> start!506530 (and (inv!71360 lm!2840) e!3033545)))

(assert (=> start!506530 true))

(declare-fun tp_is_empty!35369 () Bool)

(assert (=> start!506530 tp_is_empty!35369))

(declare-fun b!4852564 () Bool)

(declare-fun res!2071481 () Bool)

(assert (=> b!4852564 (=> res!2071481 e!3033547)))

(declare-fun containsKey!4742 (List!55778 K!17497) Bool)

(assert (=> b!4852564 (= res!2071481 (not (containsKey!4742 lt!1990319 key!6955)))))

(assert (= (and start!506530 res!2071479) b!4852561))

(assert (= (and b!4852561 res!2071483) b!4852562))

(assert (= (and b!4852562 res!2071482) b!4852559))

(assert (= (and b!4852559 res!2071480) b!4852560))

(assert (= (and b!4852560 (not res!2071478)) b!4852564))

(assert (= (and b!4852564 (not res!2071481)) b!4852563))

(assert (= start!506530 b!4852558))

(declare-fun m!5850792 () Bool)

(assert (=> b!4852560 m!5850792))

(declare-fun m!5850794 () Bool)

(assert (=> b!4852560 m!5850794))

(declare-fun m!5850796 () Bool)

(assert (=> b!4852560 m!5850796))

(declare-fun m!5850798 () Bool)

(assert (=> b!4852560 m!5850798))

(declare-fun m!5850800 () Bool)

(assert (=> b!4852560 m!5850800))

(declare-fun m!5850802 () Bool)

(assert (=> b!4852563 m!5850802))

(assert (=> b!4852563 m!5850802))

(declare-fun m!5850804 () Bool)

(assert (=> b!4852563 m!5850804))

(declare-fun m!5850806 () Bool)

(assert (=> b!4852563 m!5850806))

(declare-fun m!5850808 () Bool)

(assert (=> b!4852564 m!5850808))

(declare-fun m!5850810 () Bool)

(assert (=> b!4852562 m!5850810))

(declare-fun m!5850812 () Bool)

(assert (=> b!4852561 m!5850812))

(declare-fun m!5850814 () Bool)

(assert (=> b!4852559 m!5850814))

(declare-fun m!5850816 () Bool)

(assert (=> start!506530 m!5850816))

(declare-fun m!5850818 () Bool)

(assert (=> start!506530 m!5850818))

(push 1)

(assert (not b!4852563))

(assert (not b!4852562))

(assert (not b!4852564))

(assert (not b!4852558))

(assert (not b!4852559))

(assert tp_is_empty!35369)

(assert (not b!4852560))

(assert (not start!506530))

(assert (not b!4852561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1173083 () Bool)

(declare-fun d!1557703 () Bool)

(assert (= bs!1173083 (and d!1557703 start!506530)))

(declare-fun lambda!242885 () Int)

(assert (=> bs!1173083 (not (= lambda!242885 lambda!242873))))

(declare-fun bs!1173084 () Bool)

(assert (= bs!1173084 (and d!1557703 b!4852560)))

(assert (=> bs!1173084 (= lambda!242885 lambda!242874)))

(assert (=> d!1557703 true))

(assert (=> d!1557703 (= (allKeysSameHashInMap!2849 lm!2840 hashF!1802) (forall!12988 (toList!7893 lm!2840) lambda!242885))))

(declare-fun bs!1173085 () Bool)

(assert (= bs!1173085 d!1557703))

(declare-fun m!5850848 () Bool)

(assert (=> bs!1173085 m!5850848))

(assert (=> b!4852561 d!1557703))

(declare-fun d!1557705 () Bool)

(assert (=> d!1557705 true))

(assert (=> d!1557705 true))

(declare-fun lambda!242888 () Int)

(declare-fun forall!12990 (List!55778 Int) Bool)

(assert (=> d!1557705 (= (allKeysSameHash!2045 lt!1990319 hash!467 hashF!1802) (forall!12990 lt!1990319 lambda!242888))))

(declare-fun bs!1173086 () Bool)

(assert (= bs!1173086 d!1557705))

(declare-fun m!5850850 () Bool)

(assert (=> bs!1173086 m!5850850))

(assert (=> b!4852560 d!1557705))

(declare-fun d!1557707 () Bool)

(assert (=> d!1557707 (contains!19304 (toList!7893 lm!2840) (tuple2!59445 hash!467 lt!1990319))))

(declare-fun lt!1990339 () Unit!145780)

(declare-fun choose!35525 (ListLongMap!6529 (_ BitVec 64) List!55778) Unit!145780)

(assert (=> d!1557707 (= lt!1990339 (choose!35525 lm!2840 hash!467 lt!1990319))))

(assert (=> d!1557707 (contains!19305 lm!2840 hash!467)))

(assert (=> d!1557707 (= (lemmaGetValueImpliesTupleContained!796 lm!2840 hash!467 lt!1990319) lt!1990339)))

(declare-fun bs!1173087 () Bool)

(assert (= bs!1173087 d!1557707))

(declare-fun m!5850852 () Bool)

(assert (=> bs!1173087 m!5850852))

(declare-fun m!5850854 () Bool)

(assert (=> bs!1173087 m!5850854))

(assert (=> bs!1173087 m!5850810))

(assert (=> b!4852560 d!1557707))

(declare-fun d!1557709 () Bool)

(declare-fun lt!1990342 () Bool)

(declare-fun content!9911 (List!55779) (Set tuple2!59444))

(assert (=> d!1557709 (= lt!1990342 (set.member lt!1990321 (content!9911 (toList!7893 lm!2840))))))

(declare-fun e!3033561 () Bool)

(assert (=> d!1557709 (= lt!1990342 e!3033561)))

(declare-fun res!2071507 () Bool)

(assert (=> d!1557709 (=> (not res!2071507) (not e!3033561))))

(assert (=> d!1557709 (= res!2071507 (is-Cons!55655 (toList!7893 lm!2840)))))

(assert (=> d!1557709 (= (contains!19304 (toList!7893 lm!2840) lt!1990321) lt!1990342)))

(declare-fun b!4852599 () Bool)

(declare-fun e!3033562 () Bool)

(assert (=> b!4852599 (= e!3033561 e!3033562)))

(declare-fun res!2071506 () Bool)

(assert (=> b!4852599 (=> res!2071506 e!3033562)))

(assert (=> b!4852599 (= res!2071506 (= (h!62094 (toList!7893 lm!2840)) lt!1990321))))

(declare-fun b!4852600 () Bool)

(assert (=> b!4852600 (= e!3033562 (contains!19304 (t!363275 (toList!7893 lm!2840)) lt!1990321))))

(assert (= (and d!1557709 res!2071507) b!4852599))

(assert (= (and b!4852599 (not res!2071506)) b!4852600))

(declare-fun m!5850856 () Bool)

(assert (=> d!1557709 m!5850856))

(declare-fun m!5850858 () Bool)

(assert (=> d!1557709 m!5850858))

(declare-fun m!5850860 () Bool)

(assert (=> b!4852600 m!5850860))

(assert (=> b!4852560 d!1557709))

(declare-fun d!1557711 () Bool)

(declare-datatypes ((Option!13734 0))(
  ( (None!13733) (Some!13733 (v!49534 List!55778)) )
))
(declare-fun get!19110 (Option!13734) List!55778)

(declare-fun getValueByKey!2748 (List!55779 (_ BitVec 64)) Option!13734)

(assert (=> d!1557711 (= (apply!13474 lm!2840 hash!467) (get!19110 (getValueByKey!2748 (toList!7893 lm!2840) hash!467)))))

(declare-fun bs!1173088 () Bool)

(assert (= bs!1173088 d!1557711))

(declare-fun m!5850862 () Bool)

(assert (=> bs!1173088 m!5850862))

(assert (=> bs!1173088 m!5850862))

(declare-fun m!5850864 () Bool)

(assert (=> bs!1173088 m!5850864))

(assert (=> b!4852560 d!1557711))

(declare-fun d!1557713 () Bool)

(declare-fun dynLambda!22374 (Int tuple2!59444) Bool)

(assert (=> d!1557713 (dynLambda!22374 lambda!242874 lt!1990321)))

(declare-fun lt!1990345 () Unit!145780)

(declare-fun choose!35526 (List!55779 Int tuple2!59444) Unit!145780)

(assert (=> d!1557713 (= lt!1990345 (choose!35526 (toList!7893 lm!2840) lambda!242874 lt!1990321))))

(declare-fun e!3033565 () Bool)

(assert (=> d!1557713 e!3033565))

(declare-fun res!2071510 () Bool)

(assert (=> d!1557713 (=> (not res!2071510) (not e!3033565))))

(assert (=> d!1557713 (= res!2071510 (forall!12988 (toList!7893 lm!2840) lambda!242874))))

(assert (=> d!1557713 (= (forallContained!4568 (toList!7893 lm!2840) lambda!242874 lt!1990321) lt!1990345)))

(declare-fun b!4852603 () Bool)

(assert (=> b!4852603 (= e!3033565 (contains!19304 (toList!7893 lm!2840) lt!1990321))))

(assert (= (and d!1557713 res!2071510) b!4852603))

(declare-fun b_lambda!193067 () Bool)

(assert (=> (not b_lambda!193067) (not d!1557713)))

(declare-fun m!5850866 () Bool)

(assert (=> d!1557713 m!5850866))

(declare-fun m!5850868 () Bool)

(assert (=> d!1557713 m!5850868))

(declare-fun m!5850870 () Bool)

(assert (=> d!1557713 m!5850870))

(assert (=> b!4852603 m!5850792))

(assert (=> b!4852560 d!1557713))

(declare-fun d!1557715 () Bool)

(declare-fun res!2071515 () Bool)

(declare-fun e!3033570 () Bool)

(assert (=> d!1557715 (=> res!2071515 e!3033570)))

(assert (=> d!1557715 (= res!2071515 (is-Nil!55655 (toList!7893 lm!2840)))))

(assert (=> d!1557715 (= (forall!12988 (toList!7893 lm!2840) lambda!242873) e!3033570)))

(declare-fun b!4852608 () Bool)

(declare-fun e!3033571 () Bool)

(assert (=> b!4852608 (= e!3033570 e!3033571)))

(declare-fun res!2071516 () Bool)

(assert (=> b!4852608 (=> (not res!2071516) (not e!3033571))))

(assert (=> b!4852608 (= res!2071516 (dynLambda!22374 lambda!242873 (h!62094 (toList!7893 lm!2840))))))

(declare-fun b!4852609 () Bool)

(assert (=> b!4852609 (= e!3033571 (forall!12988 (t!363275 (toList!7893 lm!2840)) lambda!242873))))

(assert (= (and d!1557715 (not res!2071515)) b!4852608))

(assert (= (and b!4852608 res!2071516) b!4852609))

(declare-fun b_lambda!193069 () Bool)

(assert (=> (not b_lambda!193069) (not b!4852608)))

(declare-fun m!5850872 () Bool)

(assert (=> b!4852608 m!5850872))

(declare-fun m!5850874 () Bool)

(assert (=> b!4852609 m!5850874))

(assert (=> start!506530 d!1557715))

(declare-fun d!1557719 () Bool)

(declare-fun isStrictlySorted!1096 (List!55779) Bool)

(assert (=> d!1557719 (= (inv!71360 lm!2840) (isStrictlySorted!1096 (toList!7893 lm!2840)))))

(declare-fun bs!1173090 () Bool)

(assert (= bs!1173090 d!1557719))

(declare-fun m!5850878 () Bool)

(assert (=> bs!1173090 m!5850878))

(assert (=> start!506530 d!1557719))

(declare-fun d!1557723 () Bool)

(declare-fun hash!5664 (Hashable!7535 K!17497) (_ BitVec 64))

(assert (=> d!1557723 (= (hash!5662 hashF!1802 key!6955) (hash!5664 hashF!1802 key!6955))))

(declare-fun bs!1173091 () Bool)

(assert (= bs!1173091 d!1557723))

(declare-fun m!5850880 () Bool)

(assert (=> bs!1173091 m!5850880))

(assert (=> b!4852559 d!1557723))

(declare-fun d!1557725 () Bool)

(declare-fun res!2071521 () Bool)

(declare-fun e!3033576 () Bool)

(assert (=> d!1557725 (=> res!2071521 e!3033576)))

(assert (=> d!1557725 (= res!2071521 (and (is-Cons!55654 lt!1990319) (= (_1!33015 (h!62093 lt!1990319)) key!6955)))))

(assert (=> d!1557725 (= (containsKey!4742 lt!1990319 key!6955) e!3033576)))

(declare-fun b!4852614 () Bool)

(declare-fun e!3033577 () Bool)

(assert (=> b!4852614 (= e!3033576 e!3033577)))

(declare-fun res!2071522 () Bool)

(assert (=> b!4852614 (=> (not res!2071522) (not e!3033577))))

(assert (=> b!4852614 (= res!2071522 (is-Cons!55654 lt!1990319))))

(declare-fun b!4852615 () Bool)

(assert (=> b!4852615 (= e!3033577 (containsKey!4742 (t!363274 lt!1990319) key!6955))))

(assert (= (and d!1557725 (not res!2071521)) b!4852614))

(assert (= (and b!4852614 res!2071522) b!4852615))

(declare-fun m!5850882 () Bool)

(assert (=> b!4852615 m!5850882))

(assert (=> b!4852564 d!1557725))

(declare-fun d!1557727 () Bool)

(declare-fun isEmpty!29771 (Option!13732) Bool)

(assert (=> d!1557727 (= (isDefined!10819 (getPair!1131 lt!1990319 key!6955)) (not (isEmpty!29771 (getPair!1131 lt!1990319 key!6955))))))

(declare-fun bs!1173092 () Bool)

(assert (= bs!1173092 d!1557727))

(assert (=> bs!1173092 m!5850802))

(declare-fun m!5850884 () Bool)

(assert (=> bs!1173092 m!5850884))

(assert (=> b!4852563 d!1557727))

(declare-fun b!4852640 () Bool)

(declare-fun e!3033595 () Option!13732)

(declare-fun e!3033596 () Option!13732)

(assert (=> b!4852640 (= e!3033595 e!3033596)))

(declare-fun c!825697 () Bool)

(assert (=> b!4852640 (= c!825697 (is-Cons!55654 lt!1990319))))

(declare-fun b!4852642 () Bool)

(declare-fun e!3033593 () Bool)

(declare-fun e!3033591 () Bool)

(assert (=> b!4852642 (= e!3033593 e!3033591)))

(declare-fun res!2071531 () Bool)

(assert (=> b!4852642 (=> (not res!2071531) (not e!3033591))))

(declare-fun lt!1990350 () Option!13732)

(assert (=> b!4852642 (= res!2071531 (isDefined!10819 lt!1990350))))

(declare-fun b!4852643 () Bool)

(declare-fun e!3033594 () Bool)

(assert (=> b!4852643 (= e!3033594 (not (containsKey!4742 lt!1990319 key!6955)))))

(declare-fun b!4852644 () Bool)

(assert (=> b!4852644 (= e!3033596 None!13731)))

(declare-fun b!4852645 () Bool)

(assert (=> b!4852645 (= e!3033595 (Some!13731 (h!62093 lt!1990319)))))

(declare-fun b!4852646 () Bool)

(declare-fun res!2071534 () Bool)

(assert (=> b!4852646 (=> (not res!2071534) (not e!3033591))))

(declare-fun get!19111 (Option!13732) tuple2!59442)

(assert (=> b!4852646 (= res!2071534 (= (_1!33015 (get!19111 lt!1990350)) key!6955))))

(declare-fun b!4852647 () Bool)

(assert (=> b!4852647 (= e!3033596 (getPair!1131 (t!363274 lt!1990319) key!6955))))

(declare-fun b!4852641 () Bool)

(declare-fun contains!19308 (List!55778 tuple2!59442) Bool)

(assert (=> b!4852641 (= e!3033591 (contains!19308 lt!1990319 (get!19111 lt!1990350)))))

(declare-fun d!1557729 () Bool)

(assert (=> d!1557729 e!3033593))

(declare-fun res!2071533 () Bool)

(assert (=> d!1557729 (=> res!2071533 e!3033593)))

(assert (=> d!1557729 (= res!2071533 e!3033594)))

(declare-fun res!2071532 () Bool)

(assert (=> d!1557729 (=> (not res!2071532) (not e!3033594))))

(assert (=> d!1557729 (= res!2071532 (isEmpty!29771 lt!1990350))))

(assert (=> d!1557729 (= lt!1990350 e!3033595)))

(declare-fun c!825696 () Bool)

(assert (=> d!1557729 (= c!825696 (and (is-Cons!55654 lt!1990319) (= (_1!33015 (h!62093 lt!1990319)) key!6955)))))

(declare-fun noDuplicateKeys!2626 (List!55778) Bool)

(assert (=> d!1557729 (noDuplicateKeys!2626 lt!1990319)))

(assert (=> d!1557729 (= (getPair!1131 lt!1990319 key!6955) lt!1990350)))

(assert (= (and d!1557729 c!825696) b!4852645))

(assert (= (and d!1557729 (not c!825696)) b!4852640))

(assert (= (and b!4852640 c!825697) b!4852647))

(assert (= (and b!4852640 (not c!825697)) b!4852644))

(assert (= (and d!1557729 res!2071532) b!4852643))

(assert (= (and d!1557729 (not res!2071533)) b!4852642))

(assert (= (and b!4852642 res!2071531) b!4852646))

(assert (= (and b!4852646 res!2071534) b!4852641))

(declare-fun m!5850886 () Bool)

(assert (=> d!1557729 m!5850886))

(declare-fun m!5850888 () Bool)

(assert (=> d!1557729 m!5850888))

(declare-fun m!5850890 () Bool)

(assert (=> b!4852641 m!5850890))

(assert (=> b!4852641 m!5850890))

(declare-fun m!5850892 () Bool)

(assert (=> b!4852641 m!5850892))

(declare-fun m!5850894 () Bool)

(assert (=> b!4852642 m!5850894))

(assert (=> b!4852643 m!5850808))

(declare-fun m!5850896 () Bool)

(assert (=> b!4852647 m!5850896))

(assert (=> b!4852646 m!5850890))

(assert (=> b!4852563 d!1557729))

(declare-fun d!1557731 () Bool)

(assert (=> d!1557731 (dynLambda!22374 lambda!242873 lt!1990321)))

(declare-fun lt!1990351 () Unit!145780)

(assert (=> d!1557731 (= lt!1990351 (choose!35526 (toList!7893 lm!2840) lambda!242873 lt!1990321))))

(declare-fun e!3033597 () Bool)

(assert (=> d!1557731 e!3033597))

(declare-fun res!2071535 () Bool)

(assert (=> d!1557731 (=> (not res!2071535) (not e!3033597))))

(assert (=> d!1557731 (= res!2071535 (forall!12988 (toList!7893 lm!2840) lambda!242873))))

(assert (=> d!1557731 (= (forallContained!4568 (toList!7893 lm!2840) lambda!242873 lt!1990321) lt!1990351)))

(declare-fun b!4852648 () Bool)

(assert (=> b!4852648 (= e!3033597 (contains!19304 (toList!7893 lm!2840) lt!1990321))))

(assert (= (and d!1557731 res!2071535) b!4852648))

(declare-fun b_lambda!193071 () Bool)

(assert (=> (not b_lambda!193071) (not d!1557731)))

(declare-fun m!5850898 () Bool)

(assert (=> d!1557731 m!5850898))

(declare-fun m!5850900 () Bool)

(assert (=> d!1557731 m!5850900))

(assert (=> d!1557731 m!5850816))

(assert (=> b!4852648 m!5850792))

(assert (=> b!4852563 d!1557731))

(declare-fun d!1557733 () Bool)

(declare-fun e!3033614 () Bool)

(assert (=> d!1557733 e!3033614))

(declare-fun res!2071550 () Bool)

(assert (=> d!1557733 (=> res!2071550 e!3033614)))

(declare-fun lt!1990361 () Bool)

(assert (=> d!1557733 (= res!2071550 (not lt!1990361))))

(declare-fun lt!1990363 () Bool)

(assert (=> d!1557733 (= lt!1990361 lt!1990363)))

(declare-fun lt!1990362 () Unit!145780)

(declare-fun e!3033613 () Unit!145780)

(assert (=> d!1557733 (= lt!1990362 e!3033613)))

(declare-fun c!825703 () Bool)

(assert (=> d!1557733 (= c!825703 lt!1990363)))

(declare-fun containsKey!4744 (List!55779 (_ BitVec 64)) Bool)

(assert (=> d!1557733 (= lt!1990363 (containsKey!4744 (toList!7893 lm!2840) hash!467))))

(assert (=> d!1557733 (= (contains!19305 lm!2840 hash!467) lt!1990361)))

(declare-fun b!4852671 () Bool)

(declare-fun lt!1990364 () Unit!145780)

(assert (=> b!4852671 (= e!3033613 lt!1990364)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2520 (List!55779 (_ BitVec 64)) Unit!145780)

(assert (=> b!4852671 (= lt!1990364 (lemmaContainsKeyImpliesGetValueByKeyDefined!2520 (toList!7893 lm!2840) hash!467))))

(declare-fun isDefined!10821 (Option!13734) Bool)

(assert (=> b!4852671 (isDefined!10821 (getValueByKey!2748 (toList!7893 lm!2840) hash!467))))

(declare-fun b!4852672 () Bool)

(declare-fun Unit!145784 () Unit!145780)

(assert (=> b!4852672 (= e!3033613 Unit!145784)))

(declare-fun b!4852673 () Bool)

(assert (=> b!4852673 (= e!3033614 (isDefined!10821 (getValueByKey!2748 (toList!7893 lm!2840) hash!467)))))

(assert (= (and d!1557733 c!825703) b!4852671))

(assert (= (and d!1557733 (not c!825703)) b!4852672))

(assert (= (and d!1557733 (not res!2071550)) b!4852673))

(declare-fun m!5850902 () Bool)

(assert (=> d!1557733 m!5850902))

(declare-fun m!5850904 () Bool)

(assert (=> b!4852671 m!5850904))

(assert (=> b!4852671 m!5850862))

(assert (=> b!4852671 m!5850862))

(declare-fun m!5850906 () Bool)

(assert (=> b!4852671 m!5850906))

(assert (=> b!4852673 m!5850862))

(assert (=> b!4852673 m!5850862))

(assert (=> b!4852673 m!5850906))

(assert (=> b!4852562 d!1557733))

(declare-fun b!4852678 () Bool)

(declare-fun e!3033617 () Bool)

(declare-fun tp!1365113 () Bool)

(declare-fun tp!1365114 () Bool)

(assert (=> b!4852678 (= e!3033617 (and tp!1365113 tp!1365114))))

(assert (=> b!4852558 (= tp!1365105 e!3033617)))

(assert (= (and b!4852558 (is-Cons!55655 (toList!7893 lm!2840))) b!4852678))

(declare-fun b_lambda!193073 () Bool)

(assert (= b_lambda!193067 (or b!4852560 b_lambda!193073)))

(declare-fun bs!1173093 () Bool)

(declare-fun d!1557735 () Bool)

(assert (= bs!1173093 (and d!1557735 b!4852560)))

(assert (=> bs!1173093 (= (dynLambda!22374 lambda!242874 lt!1990321) (allKeysSameHash!2045 (_2!33016 lt!1990321) (_1!33016 lt!1990321) hashF!1802))))

(declare-fun m!5850916 () Bool)

(assert (=> bs!1173093 m!5850916))

(assert (=> d!1557713 d!1557735))

(declare-fun b_lambda!193075 () Bool)

(assert (= b_lambda!193071 (or start!506530 b_lambda!193075)))

(declare-fun bs!1173094 () Bool)

(declare-fun d!1557737 () Bool)

(assert (= bs!1173094 (and d!1557737 start!506530)))

(assert (=> bs!1173094 (= (dynLambda!22374 lambda!242873 lt!1990321) (noDuplicateKeys!2626 (_2!33016 lt!1990321)))))

(declare-fun m!5850922 () Bool)

(assert (=> bs!1173094 m!5850922))

(assert (=> d!1557731 d!1557737))

(declare-fun b_lambda!193077 () Bool)

(assert (= b_lambda!193069 (or start!506530 b_lambda!193077)))

(declare-fun bs!1173095 () Bool)

(declare-fun d!1557741 () Bool)

(assert (= bs!1173095 (and d!1557741 start!506530)))

(assert (=> bs!1173095 (= (dynLambda!22374 lambda!242873 (h!62094 (toList!7893 lm!2840))) (noDuplicateKeys!2626 (_2!33016 (h!62094 (toList!7893 lm!2840)))))))

(declare-fun m!5850924 () Bool)

(assert (=> bs!1173095 m!5850924))

(assert (=> b!4852608 d!1557741))

(push 1)

(assert (not d!1557733))

(assert (not b!4852603))

(assert (not d!1557713))

(assert (not b!4852600))

(assert (not b!4852678))

(assert (not d!1557731))

(assert (not d!1557703))

(assert (not b!4852647))

(assert (not b!4852671))

(assert (not d!1557711))

(assert (not b!4852641))

(assert (not bs!1173093))

(assert (not b!4852648))

(assert (not b!4852642))

(assert (not d!1557709))

(assert (not b!4852643))

(assert (not b_lambda!193073))

(assert (not bs!1173094))

(assert (not d!1557719))

(assert (not b!4852615))

(assert tp_is_empty!35369)

(assert (not d!1557705))

(assert (not b_lambda!193077))

(assert (not bs!1173095))

(assert (not b!4852609))

(assert (not d!1557707))

(assert (not d!1557729))

(assert (not d!1557723))

(assert (not b_lambda!193075))

(assert (not d!1557727))

(assert (not b!4852646))

(assert (not b!4852673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


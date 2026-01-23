; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471302 () Bool)

(assert start!471302)

(declare-fun b!4671659 () Bool)

(declare-fun e!2915352 () Bool)

(declare-datatypes ((K!13448 0))(
  ( (K!13449 (val!19029 Int)) )
))
(declare-datatypes ((V!13694 0))(
  ( (V!13695 (val!19030 Int)) )
))
(declare-datatypes ((tuple2!53270 0))(
  ( (tuple2!53271 (_1!29929 K!13448) (_2!29929 V!13694)) )
))
(declare-datatypes ((List!52198 0))(
  ( (Nil!52074) (Cons!52074 (h!58254 tuple2!53270) (t!359336 List!52198)) )
))
(declare-datatypes ((tuple2!53272 0))(
  ( (tuple2!53273 (_1!29930 (_ BitVec 64)) (_2!29930 List!52198)) )
))
(declare-datatypes ((List!52199 0))(
  ( (Nil!52075) (Cons!52075 (h!58255 tuple2!53272) (t!359337 List!52199)) )
))
(declare-datatypes ((ListLongMap!3857 0))(
  ( (ListLongMap!3858 (toList!5327 List!52199)) )
))
(declare-fun lm!2023 () ListLongMap!3857)

(assert (=> b!4671659 (= e!2915352 (= (toList!5327 lm!2023) Nil!52075))))

(declare-fun b!4671660 () Bool)

(declare-fun e!2915354 () Bool)

(declare-fun tp_is_empty!30171 () Bool)

(declare-fun tp!1344021 () Bool)

(declare-fun tp_is_empty!30169 () Bool)

(assert (=> b!4671660 (= e!2915354 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344021))))

(declare-fun b!4671661 () Bool)

(declare-fun res!1966811 () Bool)

(assert (=> b!4671661 (=> (not res!1966811) (not e!2915352))))

(declare-fun newBucket!218 () List!52198)

(declare-fun noDuplicateKeys!1719 (List!52198) Bool)

(assert (=> b!4671661 (= res!1966811 (noDuplicateKeys!1719 newBucket!218))))

(declare-fun b!4671662 () Bool)

(declare-fun tp!1344022 () Bool)

(declare-fun e!2915353 () Bool)

(assert (=> b!4671662 (= e!2915353 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344022))))

(declare-fun b!4671663 () Bool)

(declare-fun res!1966816 () Bool)

(assert (=> b!4671663 (=> (not res!1966816) (not e!2915352))))

(declare-datatypes ((Hashable!6088 0))(
  ( (HashableExt!6087 (__x!31791 Int)) )
))
(declare-fun hashF!1323 () Hashable!6088)

(declare-fun oldBucket!34 () List!52198)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1545 (List!52198 (_ BitVec 64) Hashable!6088) Bool)

(assert (=> b!4671663 (= res!1966816 (allKeysSameHash!1545 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4671664 () Bool)

(declare-fun res!1966818 () Bool)

(assert (=> b!4671664 (=> (not res!1966818) (not e!2915352))))

(declare-fun allKeysSameHashInMap!1633 (ListLongMap!3857 Hashable!6088) Bool)

(assert (=> b!4671664 (= res!1966818 (allKeysSameHashInMap!1633 lm!2023 hashF!1323))))

(declare-fun b!4671665 () Bool)

(declare-fun res!1966814 () Bool)

(assert (=> b!4671665 (=> (not res!1966814) (not e!2915352))))

(declare-fun key!4653 () K!13448)

(declare-fun removePairForKey!1314 (List!52198 K!13448) List!52198)

(assert (=> b!4671665 (= res!1966814 (= (removePairForKey!1314 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4671666 () Bool)

(declare-fun res!1966817 () Bool)

(assert (=> b!4671666 (=> (not res!1966817) (not e!2915352))))

(assert (=> b!4671666 (= res!1966817 (allKeysSameHash!1545 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4671667 () Bool)

(declare-fun res!1966813 () Bool)

(assert (=> b!4671667 (=> (not res!1966813) (not e!2915352))))

(declare-fun hash!3866 (Hashable!6088 K!13448) (_ BitVec 64))

(assert (=> b!4671667 (= res!1966813 (= (hash!3866 hashF!1323 key!4653) hash!405))))

(declare-fun b!4671669 () Bool)

(declare-fun res!1966815 () Bool)

(assert (=> b!4671669 (=> (not res!1966815) (not e!2915352))))

(assert (=> b!4671669 (= res!1966815 (noDuplicateKeys!1719 oldBucket!34))))

(declare-fun b!4671670 () Bool)

(declare-fun e!2915351 () Bool)

(declare-fun tp!1344020 () Bool)

(assert (=> b!4671670 (= e!2915351 tp!1344020)))

(declare-fun b!4671668 () Bool)

(declare-fun res!1966819 () Bool)

(assert (=> b!4671668 (=> (not res!1966819) (not e!2915352))))

(declare-datatypes ((ListMap!4691 0))(
  ( (ListMap!4692 (toList!5328 List!52198)) )
))
(declare-fun contains!15260 (ListMap!4691 K!13448) Bool)

(declare-fun extractMap!1745 (List!52199) ListMap!4691)

(assert (=> b!4671668 (= res!1966819 (contains!15260 (extractMap!1745 (toList!5327 lm!2023)) key!4653))))

(declare-fun res!1966812 () Bool)

(assert (=> start!471302 (=> (not res!1966812) (not e!2915352))))

(declare-fun lambda!202659 () Int)

(declare-fun forall!11119 (List!52199 Int) Bool)

(assert (=> start!471302 (= res!1966812 (forall!11119 (toList!5327 lm!2023) lambda!202659))))

(assert (=> start!471302 e!2915352))

(declare-fun inv!67323 (ListLongMap!3857) Bool)

(assert (=> start!471302 (and (inv!67323 lm!2023) e!2915351)))

(assert (=> start!471302 tp_is_empty!30169))

(assert (=> start!471302 e!2915354))

(assert (=> start!471302 true))

(assert (=> start!471302 e!2915353))

(assert (= (and start!471302 res!1966812) b!4671669))

(assert (= (and b!4671669 res!1966815) b!4671661))

(assert (= (and b!4671661 res!1966811) b!4671665))

(assert (= (and b!4671665 res!1966814) b!4671663))

(assert (= (and b!4671663 res!1966816) b!4671668))

(assert (= (and b!4671668 res!1966819) b!4671667))

(assert (= (and b!4671667 res!1966813) b!4671666))

(assert (= (and b!4671666 res!1966817) b!4671664))

(assert (= (and b!4671664 res!1966818) b!4671659))

(assert (= start!471302 b!4671670))

(assert (= (and start!471302 (is-Cons!52074 oldBucket!34)) b!4671660))

(assert (= (and start!471302 (is-Cons!52074 newBucket!218)) b!4671662))

(declare-fun m!5565511 () Bool)

(assert (=> b!4671666 m!5565511))

(declare-fun m!5565513 () Bool)

(assert (=> b!4671661 m!5565513))

(declare-fun m!5565515 () Bool)

(assert (=> b!4671667 m!5565515))

(declare-fun m!5565517 () Bool)

(assert (=> start!471302 m!5565517))

(declare-fun m!5565519 () Bool)

(assert (=> start!471302 m!5565519))

(declare-fun m!5565521 () Bool)

(assert (=> b!4671665 m!5565521))

(declare-fun m!5565523 () Bool)

(assert (=> b!4671664 m!5565523))

(declare-fun m!5565525 () Bool)

(assert (=> b!4671669 m!5565525))

(declare-fun m!5565527 () Bool)

(assert (=> b!4671668 m!5565527))

(assert (=> b!4671668 m!5565527))

(declare-fun m!5565529 () Bool)

(assert (=> b!4671668 m!5565529))

(declare-fun m!5565531 () Bool)

(assert (=> b!4671663 m!5565531))

(push 1)

(assert (not b!4671660))

(assert (not b!4671668))

(assert (not b!4671667))

(assert (not b!4671669))

(assert tp_is_empty!30171)

(assert (not b!4671662))

(assert tp_is_empty!30169)

(assert (not b!4671664))

(assert (not b!4671666))

(assert (not start!471302))

(assert (not b!4671661))

(assert (not b!4671665))

(assert (not b!4671663))

(assert (not b!4671670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485544 () Bool)

(declare-fun res!1966851 () Bool)

(declare-fun e!2915371 () Bool)

(assert (=> d!1485544 (=> res!1966851 e!2915371)))

(assert (=> d!1485544 (= res!1966851 (not (is-Cons!52074 newBucket!218)))))

(assert (=> d!1485544 (= (noDuplicateKeys!1719 newBucket!218) e!2915371)))

(declare-fun b!4671711 () Bool)

(declare-fun e!2915372 () Bool)

(assert (=> b!4671711 (= e!2915371 e!2915372)))

(declare-fun res!1966852 () Bool)

(assert (=> b!4671711 (=> (not res!1966852) (not e!2915372))))

(declare-fun containsKey!2859 (List!52198 K!13448) Bool)

(assert (=> b!4671711 (= res!1966852 (not (containsKey!2859 (t!359336 newBucket!218) (_1!29929 (h!58254 newBucket!218)))))))

(declare-fun b!4671712 () Bool)

(assert (=> b!4671712 (= e!2915372 (noDuplicateKeys!1719 (t!359336 newBucket!218)))))

(assert (= (and d!1485544 (not res!1966851)) b!4671711))

(assert (= (and b!4671711 res!1966852) b!4671712))

(declare-fun m!5565555 () Bool)

(assert (=> b!4671711 m!5565555))

(declare-fun m!5565557 () Bool)

(assert (=> b!4671712 m!5565557))

(assert (=> b!4671661 d!1485544))

(declare-fun d!1485546 () Bool)

(assert (=> d!1485546 true))

(assert (=> d!1485546 true))

(declare-fun lambda!202665 () Int)

(declare-fun forall!11121 (List!52198 Int) Bool)

(assert (=> d!1485546 (= (allKeysSameHash!1545 newBucket!218 hash!405 hashF!1323) (forall!11121 newBucket!218 lambda!202665))))

(declare-fun bs!1079031 () Bool)

(assert (= bs!1079031 d!1485546))

(declare-fun m!5565559 () Bool)

(assert (=> bs!1079031 m!5565559))

(assert (=> b!4671666 d!1485546))

(declare-fun d!1485548 () Bool)

(declare-fun hash!3868 (Hashable!6088 K!13448) (_ BitVec 64))

(assert (=> d!1485548 (= (hash!3866 hashF!1323 key!4653) (hash!3868 hashF!1323 key!4653))))

(declare-fun bs!1079032 () Bool)

(assert (= bs!1079032 d!1485548))

(declare-fun m!5565561 () Bool)

(assert (=> bs!1079032 m!5565561))

(assert (=> b!4671667 d!1485548))

(declare-fun bs!1079033 () Bool)

(declare-fun d!1485550 () Bool)

(assert (= bs!1079033 (and d!1485550 d!1485546)))

(declare-fun lambda!202666 () Int)

(assert (=> bs!1079033 (= lambda!202666 lambda!202665)))

(assert (=> d!1485550 true))

(assert (=> d!1485550 true))

(assert (=> d!1485550 (= (allKeysSameHash!1545 oldBucket!34 hash!405 hashF!1323) (forall!11121 oldBucket!34 lambda!202666))))

(declare-fun bs!1079034 () Bool)

(assert (= bs!1079034 d!1485550))

(declare-fun m!5565563 () Bool)

(assert (=> bs!1079034 m!5565563))

(assert (=> b!4671663 d!1485550))

(declare-fun b!4671749 () Bool)

(declare-datatypes ((Unit!121288 0))(
  ( (Unit!121289) )
))
(declare-fun e!2915404 () Unit!121288)

(declare-fun lt!1833617 () Unit!121288)

(assert (=> b!4671749 (= e!2915404 lt!1833617)))

(declare-fun lt!1833616 () Unit!121288)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1579 (List!52198 K!13448) Unit!121288)

(assert (=> b!4671749 (= lt!1833616 (lemmaContainsKeyImpliesGetValueByKeyDefined!1579 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(declare-datatypes ((Option!11939 0))(
  ( (None!11938) (Some!11938 (v!46298 V!13694)) )
))
(declare-fun isDefined!9194 (Option!11939) Bool)

(declare-fun getValueByKey!1687 (List!52198 K!13448) Option!11939)

(assert (=> b!4671749 (isDefined!9194 (getValueByKey!1687 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(declare-fun lt!1833614 () Unit!121288)

(assert (=> b!4671749 (= lt!1833614 lt!1833616)))

(declare-fun lemmaInListThenGetKeysListContains!779 (List!52198 K!13448) Unit!121288)

(assert (=> b!4671749 (= lt!1833617 (lemmaInListThenGetKeysListContains!779 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(declare-fun call!326522 () Bool)

(assert (=> b!4671749 call!326522))

(declare-fun d!1485552 () Bool)

(declare-fun e!2915403 () Bool)

(assert (=> d!1485552 e!2915403))

(declare-fun res!1966875 () Bool)

(assert (=> d!1485552 (=> res!1966875 e!2915403)))

(declare-fun e!2915400 () Bool)

(assert (=> d!1485552 (= res!1966875 e!2915400)))

(declare-fun res!1966874 () Bool)

(assert (=> d!1485552 (=> (not res!1966874) (not e!2915400))))

(declare-fun lt!1833619 () Bool)

(assert (=> d!1485552 (= res!1966874 (not lt!1833619))))

(declare-fun lt!1833615 () Bool)

(assert (=> d!1485552 (= lt!1833619 lt!1833615)))

(declare-fun lt!1833620 () Unit!121288)

(assert (=> d!1485552 (= lt!1833620 e!2915404)))

(declare-fun c!799668 () Bool)

(assert (=> d!1485552 (= c!799668 lt!1833615)))

(declare-fun containsKey!2860 (List!52198 K!13448) Bool)

(assert (=> d!1485552 (= lt!1833615 (containsKey!2860 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(assert (=> d!1485552 (= (contains!15260 (extractMap!1745 (toList!5327 lm!2023)) key!4653) lt!1833619)))

(declare-fun b!4671750 () Bool)

(declare-fun e!2915401 () Unit!121288)

(declare-fun Unit!121290 () Unit!121288)

(assert (=> b!4671750 (= e!2915401 Unit!121290)))

(declare-fun b!4671751 () Bool)

(declare-fun e!2915399 () Bool)

(assert (=> b!4671751 (= e!2915403 e!2915399)))

(declare-fun res!1966873 () Bool)

(assert (=> b!4671751 (=> (not res!1966873) (not e!2915399))))

(assert (=> b!4671751 (= res!1966873 (isDefined!9194 (getValueByKey!1687 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653)))))

(declare-fun b!4671752 () Bool)

(assert (=> b!4671752 false))

(declare-fun lt!1833621 () Unit!121288)

(declare-fun lt!1833618 () Unit!121288)

(assert (=> b!4671752 (= lt!1833621 lt!1833618)))

(assert (=> b!4671752 (containsKey!2860 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!783 (List!52198 K!13448) Unit!121288)

(assert (=> b!4671752 (= lt!1833618 (lemmaInGetKeysListThenContainsKey!783 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(declare-fun Unit!121291 () Unit!121288)

(assert (=> b!4671752 (= e!2915401 Unit!121291)))

(declare-fun b!4671753 () Bool)

(assert (=> b!4671753 (= e!2915404 e!2915401)))

(declare-fun c!799667 () Bool)

(assert (=> b!4671753 (= c!799667 call!326522)))

(declare-fun b!4671754 () Bool)

(declare-datatypes ((List!52202 0))(
  ( (Nil!52078) (Cons!52078 (h!58260 K!13448) (t!359340 List!52202)) )
))
(declare-fun e!2915402 () List!52202)

(declare-fun getKeysList!784 (List!52198) List!52202)

(assert (=> b!4671754 (= e!2915402 (getKeysList!784 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))

(declare-fun bm!326517 () Bool)

(declare-fun contains!15262 (List!52202 K!13448) Bool)

(assert (=> bm!326517 (= call!326522 (contains!15262 e!2915402 key!4653))))

(declare-fun c!799669 () Bool)

(assert (=> bm!326517 (= c!799669 c!799668)))

(declare-fun b!4671755 () Bool)

(declare-fun keys!18513 (ListMap!4691) List!52202)

(assert (=> b!4671755 (= e!2915400 (not (contains!15262 (keys!18513 (extractMap!1745 (toList!5327 lm!2023))) key!4653)))))

(declare-fun b!4671756 () Bool)

(assert (=> b!4671756 (= e!2915399 (contains!15262 (keys!18513 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(declare-fun b!4671757 () Bool)

(assert (=> b!4671757 (= e!2915402 (keys!18513 (extractMap!1745 (toList!5327 lm!2023))))))

(assert (= (and d!1485552 c!799668) b!4671749))

(assert (= (and d!1485552 (not c!799668)) b!4671753))

(assert (= (and b!4671753 c!799667) b!4671752))

(assert (= (and b!4671753 (not c!799667)) b!4671750))

(assert (= (or b!4671749 b!4671753) bm!326517))

(assert (= (and bm!326517 c!799669) b!4671754))

(assert (= (and bm!326517 (not c!799669)) b!4671757))

(assert (= (and d!1485552 res!1966874) b!4671755))

(assert (= (and d!1485552 (not res!1966875)) b!4671751))

(assert (= (and b!4671751 res!1966873) b!4671756))

(assert (=> b!4671755 m!5565527))

(declare-fun m!5565577 () Bool)

(assert (=> b!4671755 m!5565577))

(assert (=> b!4671755 m!5565577))

(declare-fun m!5565579 () Bool)

(assert (=> b!4671755 m!5565579))

(declare-fun m!5565581 () Bool)

(assert (=> d!1485552 m!5565581))

(declare-fun m!5565583 () Bool)

(assert (=> b!4671749 m!5565583))

(declare-fun m!5565585 () Bool)

(assert (=> b!4671749 m!5565585))

(assert (=> b!4671749 m!5565585))

(declare-fun m!5565587 () Bool)

(assert (=> b!4671749 m!5565587))

(declare-fun m!5565589 () Bool)

(assert (=> b!4671749 m!5565589))

(assert (=> b!4671756 m!5565527))

(assert (=> b!4671756 m!5565577))

(assert (=> b!4671756 m!5565577))

(assert (=> b!4671756 m!5565579))

(assert (=> b!4671752 m!5565581))

(declare-fun m!5565591 () Bool)

(assert (=> b!4671752 m!5565591))

(assert (=> b!4671757 m!5565527))

(assert (=> b!4671757 m!5565577))

(declare-fun m!5565593 () Bool)

(assert (=> b!4671754 m!5565593))

(assert (=> b!4671751 m!5565585))

(assert (=> b!4671751 m!5565585))

(assert (=> b!4671751 m!5565587))

(declare-fun m!5565595 () Bool)

(assert (=> bm!326517 m!5565595))

(assert (=> b!4671668 d!1485552))

(declare-fun bs!1079037 () Bool)

(declare-fun d!1485562 () Bool)

(assert (= bs!1079037 (and d!1485562 start!471302)))

(declare-fun lambda!202672 () Int)

(assert (=> bs!1079037 (= lambda!202672 lambda!202659)))

(declare-fun lt!1833624 () ListMap!4691)

(declare-fun invariantList!1345 (List!52198) Bool)

(assert (=> d!1485562 (invariantList!1345 (toList!5328 lt!1833624))))

(declare-fun e!2915407 () ListMap!4691)

(assert (=> d!1485562 (= lt!1833624 e!2915407)))

(declare-fun c!799672 () Bool)

(assert (=> d!1485562 (= c!799672 (is-Cons!52075 (toList!5327 lm!2023)))))

(assert (=> d!1485562 (forall!11119 (toList!5327 lm!2023) lambda!202672)))

(assert (=> d!1485562 (= (extractMap!1745 (toList!5327 lm!2023)) lt!1833624)))

(declare-fun b!4671766 () Bool)

(declare-fun addToMapMapFromBucket!1154 (List!52198 ListMap!4691) ListMap!4691)

(assert (=> b!4671766 (= e!2915407 (addToMapMapFromBucket!1154 (_2!29930 (h!58255 (toList!5327 lm!2023))) (extractMap!1745 (t!359337 (toList!5327 lm!2023)))))))

(declare-fun b!4671767 () Bool)

(assert (=> b!4671767 (= e!2915407 (ListMap!4692 Nil!52074))))

(assert (= (and d!1485562 c!799672) b!4671766))

(assert (= (and d!1485562 (not c!799672)) b!4671767))

(declare-fun m!5565601 () Bool)

(assert (=> d!1485562 m!5565601))

(declare-fun m!5565603 () Bool)

(assert (=> d!1485562 m!5565603))

(declare-fun m!5565605 () Bool)

(assert (=> b!4671766 m!5565605))

(assert (=> b!4671766 m!5565605))

(declare-fun m!5565607 () Bool)

(assert (=> b!4671766 m!5565607))

(assert (=> b!4671668 d!1485562))

(declare-fun d!1485568 () Bool)

(declare-fun res!1966876 () Bool)

(declare-fun e!2915408 () Bool)

(assert (=> d!1485568 (=> res!1966876 e!2915408)))

(assert (=> d!1485568 (= res!1966876 (not (is-Cons!52074 oldBucket!34)))))

(assert (=> d!1485568 (= (noDuplicateKeys!1719 oldBucket!34) e!2915408)))

(declare-fun b!4671768 () Bool)

(declare-fun e!2915409 () Bool)

(assert (=> b!4671768 (= e!2915408 e!2915409)))

(declare-fun res!1966877 () Bool)

(assert (=> b!4671768 (=> (not res!1966877) (not e!2915409))))

(assert (=> b!4671768 (= res!1966877 (not (containsKey!2859 (t!359336 oldBucket!34) (_1!29929 (h!58254 oldBucket!34)))))))

(declare-fun b!4671769 () Bool)

(assert (=> b!4671769 (= e!2915409 (noDuplicateKeys!1719 (t!359336 oldBucket!34)))))

(assert (= (and d!1485568 (not res!1966876)) b!4671768))

(assert (= (and b!4671768 res!1966877) b!4671769))

(declare-fun m!5565609 () Bool)

(assert (=> b!4671768 m!5565609))

(declare-fun m!5565611 () Bool)

(assert (=> b!4671769 m!5565611))

(assert (=> b!4671669 d!1485568))

(declare-fun bs!1079038 () Bool)

(declare-fun d!1485570 () Bool)

(assert (= bs!1079038 (and d!1485570 start!471302)))

(declare-fun lambda!202675 () Int)

(assert (=> bs!1079038 (not (= lambda!202675 lambda!202659))))

(declare-fun bs!1079039 () Bool)

(assert (= bs!1079039 (and d!1485570 d!1485562)))

(assert (=> bs!1079039 (not (= lambda!202675 lambda!202672))))

(assert (=> d!1485570 true))

(assert (=> d!1485570 (= (allKeysSameHashInMap!1633 lm!2023 hashF!1323) (forall!11119 (toList!5327 lm!2023) lambda!202675))))

(declare-fun bs!1079040 () Bool)

(assert (= bs!1079040 d!1485570))

(declare-fun m!5565613 () Bool)

(assert (=> bs!1079040 m!5565613))

(assert (=> b!4671664 d!1485570))

(declare-fun b!4671795 () Bool)

(declare-fun e!2915421 () List!52198)

(assert (=> b!4671795 (= e!2915421 Nil!52074)))

(declare-fun b!4671792 () Bool)

(declare-fun e!2915420 () List!52198)

(assert (=> b!4671792 (= e!2915420 (t!359336 oldBucket!34))))

(declare-fun b!4671793 () Bool)

(assert (=> b!4671793 (= e!2915420 e!2915421)))

(declare-fun c!799683 () Bool)

(assert (=> b!4671793 (= c!799683 (is-Cons!52074 oldBucket!34))))

(declare-fun b!4671794 () Bool)

(assert (=> b!4671794 (= e!2915421 (Cons!52074 (h!58254 oldBucket!34) (removePairForKey!1314 (t!359336 oldBucket!34) key!4653)))))

(declare-fun d!1485572 () Bool)

(declare-fun lt!1833630 () List!52198)

(assert (=> d!1485572 (not (containsKey!2859 lt!1833630 key!4653))))

(assert (=> d!1485572 (= lt!1833630 e!2915420)))

(declare-fun c!799684 () Bool)

(assert (=> d!1485572 (= c!799684 (and (is-Cons!52074 oldBucket!34) (= (_1!29929 (h!58254 oldBucket!34)) key!4653)))))

(assert (=> d!1485572 (noDuplicateKeys!1719 oldBucket!34)))

(assert (=> d!1485572 (= (removePairForKey!1314 oldBucket!34 key!4653) lt!1833630)))

(assert (= (and d!1485572 c!799684) b!4671792))

(assert (= (and d!1485572 (not c!799684)) b!4671793))

(assert (= (and b!4671793 c!799683) b!4671794))

(assert (= (and b!4671793 (not c!799683)) b!4671795))

(declare-fun m!5565619 () Bool)

(assert (=> b!4671794 m!5565619))

(declare-fun m!5565621 () Bool)

(assert (=> d!1485572 m!5565621))

(assert (=> d!1485572 m!5565525))

(assert (=> b!4671665 d!1485572))

(declare-fun d!1485576 () Bool)

(declare-fun res!1966882 () Bool)

(declare-fun e!2915426 () Bool)

(assert (=> d!1485576 (=> res!1966882 e!2915426)))

(assert (=> d!1485576 (= res!1966882 (is-Nil!52075 (toList!5327 lm!2023)))))

(assert (=> d!1485576 (= (forall!11119 (toList!5327 lm!2023) lambda!202659) e!2915426)))

(declare-fun b!4671800 () Bool)

(declare-fun e!2915427 () Bool)

(assert (=> b!4671800 (= e!2915426 e!2915427)))

(declare-fun res!1966883 () Bool)

(assert (=> b!4671800 (=> (not res!1966883) (not e!2915427))))

(declare-fun dynLambda!21645 (Int tuple2!53272) Bool)

(assert (=> b!4671800 (= res!1966883 (dynLambda!21645 lambda!202659 (h!58255 (toList!5327 lm!2023))))))

(declare-fun b!4671801 () Bool)

(assert (=> b!4671801 (= e!2915427 (forall!11119 (t!359337 (toList!5327 lm!2023)) lambda!202659))))

(assert (= (and d!1485576 (not res!1966882)) b!4671800))

(assert (= (and b!4671800 res!1966883) b!4671801))

(declare-fun b_lambda!176363 () Bool)

(assert (=> (not b_lambda!176363) (not b!4671800)))

(declare-fun m!5565623 () Bool)

(assert (=> b!4671800 m!5565623))

(declare-fun m!5565625 () Bool)

(assert (=> b!4671801 m!5565625))

(assert (=> start!471302 d!1485576))

(declare-fun d!1485578 () Bool)

(declare-fun isStrictlySorted!585 (List!52199) Bool)

(assert (=> d!1485578 (= (inv!67323 lm!2023) (isStrictlySorted!585 (toList!5327 lm!2023)))))

(declare-fun bs!1079042 () Bool)

(assert (= bs!1079042 d!1485578))

(declare-fun m!5565627 () Bool)

(assert (=> bs!1079042 m!5565627))

(assert (=> start!471302 d!1485578))

(declare-fun b!4671808 () Bool)

(declare-fun tp!1344034 () Bool)

(declare-fun e!2915430 () Bool)

(assert (=> b!4671808 (= e!2915430 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344034))))

(assert (=> b!4671662 (= tp!1344022 e!2915430)))

(assert (= (and b!4671662 (is-Cons!52074 (t!359336 newBucket!218))) b!4671808))

(declare-fun b!4671813 () Bool)

(declare-fun e!2915433 () Bool)

(declare-fun tp!1344039 () Bool)

(declare-fun tp!1344040 () Bool)

(assert (=> b!4671813 (= e!2915433 (and tp!1344039 tp!1344040))))

(assert (=> b!4671670 (= tp!1344020 e!2915433)))

(assert (= (and b!4671670 (is-Cons!52075 (toList!5327 lm!2023))) b!4671813))

(declare-fun b!4671814 () Bool)

(declare-fun e!2915434 () Bool)

(declare-fun tp!1344041 () Bool)

(assert (=> b!4671814 (= e!2915434 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344041))))

(assert (=> b!4671660 (= tp!1344021 e!2915434)))

(assert (= (and b!4671660 (is-Cons!52074 (t!359336 oldBucket!34))) b!4671814))

(declare-fun b_lambda!176365 () Bool)

(assert (= b_lambda!176363 (or start!471302 b_lambda!176365)))

(declare-fun bs!1079044 () Bool)

(declare-fun d!1485582 () Bool)

(assert (= bs!1079044 (and d!1485582 start!471302)))

(assert (=> bs!1079044 (= (dynLambda!21645 lambda!202659 (h!58255 (toList!5327 lm!2023))) (noDuplicateKeys!1719 (_2!29930 (h!58255 (toList!5327 lm!2023)))))))

(declare-fun m!5565631 () Bool)

(assert (=> bs!1079044 m!5565631))

(assert (=> b!4671800 d!1485582))

(push 1)

(assert (not b!4671808))

(assert (not b!4671754))

(assert (not d!1485578))

(assert (not d!1485570))

(assert (not b!4671794))

(assert (not b!4671711))

(assert (not b!4671752))

(assert (not b!4671813))

(assert (not d!1485562))

(assert tp_is_empty!30171)

(assert (not d!1485548))

(assert (not b!4671712))

(assert (not b_lambda!176365))

(assert (not bm!326517))

(assert (not b!4671749))

(assert (not d!1485546))

(assert (not b!4671801))

(assert (not b!4671769))

(assert (not b!4671756))

(assert (not b!4671768))

(assert (not b!4671757))

(assert (not b!4671755))

(assert (not b!4671751))

(assert (not d!1485572))

(assert (not b!4671766))

(assert (not bs!1079044))

(assert (not d!1485550))

(assert (not d!1485552))

(assert (not b!4671814))

(assert tp_is_empty!30169)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485586 () Bool)

(declare-fun res!1966897 () Bool)

(declare-fun e!2915459 () Bool)

(assert (=> d!1485586 (=> res!1966897 e!2915459)))

(assert (=> d!1485586 (= res!1966897 (and (is-Cons!52074 (t!359336 newBucket!218)) (= (_1!29929 (h!58254 (t!359336 newBucket!218))) (_1!29929 (h!58254 newBucket!218)))))))

(assert (=> d!1485586 (= (containsKey!2859 (t!359336 newBucket!218) (_1!29929 (h!58254 newBucket!218))) e!2915459)))

(declare-fun b!4671850 () Bool)

(declare-fun e!2915460 () Bool)

(assert (=> b!4671850 (= e!2915459 e!2915460)))

(declare-fun res!1966898 () Bool)

(assert (=> b!4671850 (=> (not res!1966898) (not e!2915460))))

(assert (=> b!4671850 (= res!1966898 (is-Cons!52074 (t!359336 newBucket!218)))))

(declare-fun b!4671851 () Bool)

(assert (=> b!4671851 (= e!2915460 (containsKey!2859 (t!359336 (t!359336 newBucket!218)) (_1!29929 (h!58254 newBucket!218))))))

(assert (= (and d!1485586 (not res!1966897)) b!4671850))

(assert (= (and b!4671850 res!1966898) b!4671851))

(declare-fun m!5565653 () Bool)

(assert (=> b!4671851 m!5565653))

(assert (=> b!4671711 d!1485586))

(declare-fun d!1485588 () Bool)

(declare-fun res!1966903 () Bool)

(declare-fun e!2915465 () Bool)

(assert (=> d!1485588 (=> res!1966903 e!2915465)))

(assert (=> d!1485588 (= res!1966903 (and (is-Cons!52074 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (= (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) key!4653)))))

(assert (=> d!1485588 (= (containsKey!2860 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653) e!2915465)))

(declare-fun b!4671856 () Bool)

(declare-fun e!2915466 () Bool)

(assert (=> b!4671856 (= e!2915465 e!2915466)))

(declare-fun res!1966904 () Bool)

(assert (=> b!4671856 (=> (not res!1966904) (not e!2915466))))

(assert (=> b!4671856 (= res!1966904 (is-Cons!52074 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))

(declare-fun b!4671857 () Bool)

(assert (=> b!4671857 (= e!2915466 (containsKey!2860 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) key!4653))))

(assert (= (and d!1485588 (not res!1966903)) b!4671856))

(assert (= (and b!4671856 res!1966904) b!4671857))

(declare-fun m!5565655 () Bool)

(assert (=> b!4671857 m!5565655))

(assert (=> d!1485552 d!1485588))

(declare-fun d!1485590 () Bool)

(declare-fun res!1966905 () Bool)

(declare-fun e!2915467 () Bool)

(assert (=> d!1485590 (=> res!1966905 e!2915467)))

(assert (=> d!1485590 (= res!1966905 (not (is-Cons!52074 (t!359336 newBucket!218))))))

(assert (=> d!1485590 (= (noDuplicateKeys!1719 (t!359336 newBucket!218)) e!2915467)))

(declare-fun b!4671858 () Bool)

(declare-fun e!2915468 () Bool)

(assert (=> b!4671858 (= e!2915467 e!2915468)))

(declare-fun res!1966906 () Bool)

(assert (=> b!4671858 (=> (not res!1966906) (not e!2915468))))

(assert (=> b!4671858 (= res!1966906 (not (containsKey!2859 (t!359336 (t!359336 newBucket!218)) (_1!29929 (h!58254 (t!359336 newBucket!218))))))))

(declare-fun b!4671859 () Bool)

(assert (=> b!4671859 (= e!2915468 (noDuplicateKeys!1719 (t!359336 (t!359336 newBucket!218))))))

(assert (= (and d!1485590 (not res!1966905)) b!4671858))

(assert (= (and b!4671858 res!1966906) b!4671859))

(declare-fun m!5565657 () Bool)

(assert (=> b!4671858 m!5565657))

(declare-fun m!5565659 () Bool)

(assert (=> b!4671859 m!5565659))

(assert (=> b!4671712 d!1485590))

(declare-fun d!1485592 () Bool)

(declare-fun res!1966907 () Bool)

(declare-fun e!2915470 () Bool)

(assert (=> d!1485592 (=> res!1966907 e!2915470)))

(assert (=> d!1485592 (= res!1966907 (and (is-Cons!52074 (t!359336 oldBucket!34)) (= (_1!29929 (h!58254 (t!359336 oldBucket!34))) (_1!29929 (h!58254 oldBucket!34)))))))

(assert (=> d!1485592 (= (containsKey!2859 (t!359336 oldBucket!34) (_1!29929 (h!58254 oldBucket!34))) e!2915470)))

(declare-fun b!4671862 () Bool)

(declare-fun e!2915471 () Bool)

(assert (=> b!4671862 (= e!2915470 e!2915471)))

(declare-fun res!1966908 () Bool)

(assert (=> b!4671862 (=> (not res!1966908) (not e!2915471))))

(assert (=> b!4671862 (= res!1966908 (is-Cons!52074 (t!359336 oldBucket!34)))))

(declare-fun b!4671863 () Bool)

(assert (=> b!4671863 (= e!2915471 (containsKey!2859 (t!359336 (t!359336 oldBucket!34)) (_1!29929 (h!58254 oldBucket!34))))))

(assert (= (and d!1485592 (not res!1966907)) b!4671862))

(assert (= (and b!4671862 res!1966908) b!4671863))

(declare-fun m!5565661 () Bool)

(assert (=> b!4671863 m!5565661))

(assert (=> b!4671768 d!1485592))

(declare-fun d!1485594 () Bool)

(declare-fun noDuplicatedKeys!365 (List!52198) Bool)

(assert (=> d!1485594 (= (invariantList!1345 (toList!5328 lt!1833624)) (noDuplicatedKeys!365 (toList!5328 lt!1833624)))))

(declare-fun bs!1079047 () Bool)

(assert (= bs!1079047 d!1485594))

(declare-fun m!5565663 () Bool)

(assert (=> bs!1079047 m!5565663))

(assert (=> d!1485562 d!1485594))

(declare-fun d!1485596 () Bool)

(declare-fun res!1966909 () Bool)

(declare-fun e!2915472 () Bool)

(assert (=> d!1485596 (=> res!1966909 e!2915472)))

(assert (=> d!1485596 (= res!1966909 (is-Nil!52075 (toList!5327 lm!2023)))))

(assert (=> d!1485596 (= (forall!11119 (toList!5327 lm!2023) lambda!202672) e!2915472)))

(declare-fun b!4671864 () Bool)

(declare-fun e!2915473 () Bool)

(assert (=> b!4671864 (= e!2915472 e!2915473)))

(declare-fun res!1966910 () Bool)

(assert (=> b!4671864 (=> (not res!1966910) (not e!2915473))))

(assert (=> b!4671864 (= res!1966910 (dynLambda!21645 lambda!202672 (h!58255 (toList!5327 lm!2023))))))

(declare-fun b!4671865 () Bool)

(assert (=> b!4671865 (= e!2915473 (forall!11119 (t!359337 (toList!5327 lm!2023)) lambda!202672))))

(assert (= (and d!1485596 (not res!1966909)) b!4671864))

(assert (= (and b!4671864 res!1966910) b!4671865))

(declare-fun b_lambda!176367 () Bool)

(assert (=> (not b_lambda!176367) (not b!4671864)))

(declare-fun m!5565665 () Bool)

(assert (=> b!4671864 m!5565665))

(declare-fun m!5565667 () Bool)

(assert (=> b!4671865 m!5565667))

(assert (=> d!1485562 d!1485596))

(declare-fun d!1485598 () Bool)

(declare-fun res!1966911 () Bool)

(declare-fun e!2915474 () Bool)

(assert (=> d!1485598 (=> res!1966911 e!2915474)))

(assert (=> d!1485598 (= res!1966911 (not (is-Cons!52074 (t!359336 oldBucket!34))))))

(assert (=> d!1485598 (= (noDuplicateKeys!1719 (t!359336 oldBucket!34)) e!2915474)))

(declare-fun b!4671866 () Bool)

(declare-fun e!2915475 () Bool)

(assert (=> b!4671866 (= e!2915474 e!2915475)))

(declare-fun res!1966912 () Bool)

(assert (=> b!4671866 (=> (not res!1966912) (not e!2915475))))

(assert (=> b!4671866 (= res!1966912 (not (containsKey!2859 (t!359336 (t!359336 oldBucket!34)) (_1!29929 (h!58254 (t!359336 oldBucket!34))))))))

(declare-fun b!4671867 () Bool)

(assert (=> b!4671867 (= e!2915475 (noDuplicateKeys!1719 (t!359336 (t!359336 oldBucket!34))))))

(assert (= (and d!1485598 (not res!1966911)) b!4671866))

(assert (= (and b!4671866 res!1966912) b!4671867))

(declare-fun m!5565673 () Bool)

(assert (=> b!4671866 m!5565673))

(declare-fun m!5565677 () Bool)

(assert (=> b!4671867 m!5565677))

(assert (=> b!4671769 d!1485598))

(declare-fun d!1485600 () Bool)

(declare-fun res!1966917 () Bool)

(declare-fun e!2915480 () Bool)

(assert (=> d!1485600 (=> res!1966917 e!2915480)))

(assert (=> d!1485600 (= res!1966917 (is-Nil!52074 oldBucket!34))))

(assert (=> d!1485600 (= (forall!11121 oldBucket!34 lambda!202666) e!2915480)))

(declare-fun b!4671872 () Bool)

(declare-fun e!2915481 () Bool)

(assert (=> b!4671872 (= e!2915480 e!2915481)))

(declare-fun res!1966918 () Bool)

(assert (=> b!4671872 (=> (not res!1966918) (not e!2915481))))

(declare-fun dynLambda!21647 (Int tuple2!53270) Bool)

(assert (=> b!4671872 (= res!1966918 (dynLambda!21647 lambda!202666 (h!58254 oldBucket!34)))))

(declare-fun b!4671873 () Bool)

(assert (=> b!4671873 (= e!2915481 (forall!11121 (t!359336 oldBucket!34) lambda!202666))))

(assert (= (and d!1485600 (not res!1966917)) b!4671872))

(assert (= (and b!4671872 res!1966918) b!4671873))

(declare-fun b_lambda!176369 () Bool)

(assert (=> (not b_lambda!176369) (not b!4671872)))

(declare-fun m!5565683 () Bool)

(assert (=> b!4671872 m!5565683))

(declare-fun m!5565685 () Bool)

(assert (=> b!4671873 m!5565685))

(assert (=> d!1485550 d!1485600))

(declare-fun b!4671892 () Bool)

(assert (=> b!4671892 true))

(declare-fun d!1485606 () Bool)

(declare-fun e!2915491 () Bool)

(assert (=> d!1485606 e!2915491))

(declare-fun res!1966927 () Bool)

(assert (=> d!1485606 (=> (not res!1966927) (not e!2915491))))

(declare-fun lt!1833660 () List!52202)

(declare-fun noDuplicate!851 (List!52202) Bool)

(assert (=> d!1485606 (= res!1966927 (noDuplicate!851 lt!1833660))))

(assert (=> d!1485606 (= lt!1833660 (getKeysList!784 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))

(assert (=> d!1485606 (= (keys!18513 (extractMap!1745 (toList!5327 lm!2023))) lt!1833660)))

(declare-fun b!4671891 () Bool)

(declare-fun res!1966925 () Bool)

(assert (=> b!4671891 (=> (not res!1966925) (not e!2915491))))

(declare-fun length!558 (List!52202) Int)

(declare-fun length!559 (List!52198) Int)

(assert (=> b!4671891 (= res!1966925 (= (length!558 lt!1833660) (length!559 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))))

(declare-fun res!1966926 () Bool)

(assert (=> b!4671892 (=> (not res!1966926) (not e!2915491))))

(declare-fun lambda!202687 () Int)

(declare-fun forall!11123 (List!52202 Int) Bool)

(assert (=> b!4671892 (= res!1966926 (forall!11123 lt!1833660 lambda!202687))))

(declare-fun b!4671893 () Bool)

(declare-fun lambda!202688 () Int)

(declare-fun content!9080 (List!52202) (Set K!13448))

(declare-fun map!11524 (List!52198 Int) List!52202)

(assert (=> b!4671893 (= e!2915491 (= (content!9080 lt!1833660) (content!9080 (map!11524 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) lambda!202688))))))

(assert (= (and d!1485606 res!1966927) b!4671891))

(assert (= (and b!4671891 res!1966925) b!4671892))

(assert (= (and b!4671892 res!1966926) b!4671893))

(declare-fun m!5565691 () Bool)

(assert (=> d!1485606 m!5565691))

(assert (=> d!1485606 m!5565593))

(declare-fun m!5565693 () Bool)

(assert (=> b!4671891 m!5565693))

(declare-fun m!5565695 () Bool)

(assert (=> b!4671891 m!5565695))

(declare-fun m!5565697 () Bool)

(assert (=> b!4671892 m!5565697))

(declare-fun m!5565699 () Bool)

(assert (=> b!4671893 m!5565699))

(declare-fun m!5565701 () Bool)

(assert (=> b!4671893 m!5565701))

(assert (=> b!4671893 m!5565701))

(declare-fun m!5565703 () Bool)

(assert (=> b!4671893 m!5565703))

(assert (=> b!4671757 d!1485606))

(declare-fun d!1485610 () Bool)

(declare-fun res!1966932 () Bool)

(declare-fun e!2915496 () Bool)

(assert (=> d!1485610 (=> res!1966932 e!2915496)))

(assert (=> d!1485610 (= res!1966932 (or (is-Nil!52075 (toList!5327 lm!2023)) (is-Nil!52075 (t!359337 (toList!5327 lm!2023)))))))

(assert (=> d!1485610 (= (isStrictlySorted!585 (toList!5327 lm!2023)) e!2915496)))

(declare-fun b!4671900 () Bool)

(declare-fun e!2915497 () Bool)

(assert (=> b!4671900 (= e!2915496 e!2915497)))

(declare-fun res!1966933 () Bool)

(assert (=> b!4671900 (=> (not res!1966933) (not e!2915497))))

(assert (=> b!4671900 (= res!1966933 (bvslt (_1!29930 (h!58255 (toList!5327 lm!2023))) (_1!29930 (h!58255 (t!359337 (toList!5327 lm!2023))))))))

(declare-fun b!4671901 () Bool)

(assert (=> b!4671901 (= e!2915497 (isStrictlySorted!585 (t!359337 (toList!5327 lm!2023))))))

(assert (= (and d!1485610 (not res!1966932)) b!4671900))

(assert (= (and b!4671900 res!1966933) b!4671901))

(declare-fun m!5565705 () Bool)

(assert (=> b!4671901 m!5565705))

(assert (=> d!1485578 d!1485610))

(declare-fun d!1485612 () Bool)

(declare-fun res!1966934 () Bool)

(declare-fun e!2915498 () Bool)

(assert (=> d!1485612 (=> res!1966934 e!2915498)))

(assert (=> d!1485612 (= res!1966934 (is-Nil!52075 (toList!5327 lm!2023)))))

(assert (=> d!1485612 (= (forall!11119 (toList!5327 lm!2023) lambda!202675) e!2915498)))

(declare-fun b!4671902 () Bool)

(declare-fun e!2915499 () Bool)

(assert (=> b!4671902 (= e!2915498 e!2915499)))

(declare-fun res!1966935 () Bool)

(assert (=> b!4671902 (=> (not res!1966935) (not e!2915499))))

(assert (=> b!4671902 (= res!1966935 (dynLambda!21645 lambda!202675 (h!58255 (toList!5327 lm!2023))))))

(declare-fun b!4671903 () Bool)

(assert (=> b!4671903 (= e!2915499 (forall!11119 (t!359337 (toList!5327 lm!2023)) lambda!202675))))

(assert (= (and d!1485612 (not res!1966934)) b!4671902))

(assert (= (and b!4671902 res!1966935) b!4671903))

(declare-fun b_lambda!176373 () Bool)

(assert (=> (not b_lambda!176373) (not b!4671902)))

(declare-fun m!5565707 () Bool)

(assert (=> b!4671902 m!5565707))

(declare-fun m!5565709 () Bool)

(assert (=> b!4671903 m!5565709))

(assert (=> d!1485570 d!1485612))

(declare-fun d!1485614 () Bool)

(declare-fun res!1966936 () Bool)

(declare-fun e!2915500 () Bool)

(assert (=> d!1485614 (=> res!1966936 e!2915500)))

(assert (=> d!1485614 (= res!1966936 (is-Nil!52075 (t!359337 (toList!5327 lm!2023))))))

(assert (=> d!1485614 (= (forall!11119 (t!359337 (toList!5327 lm!2023)) lambda!202659) e!2915500)))

(declare-fun b!4671904 () Bool)

(declare-fun e!2915501 () Bool)

(assert (=> b!4671904 (= e!2915500 e!2915501)))

(declare-fun res!1966937 () Bool)

(assert (=> b!4671904 (=> (not res!1966937) (not e!2915501))))

(assert (=> b!4671904 (= res!1966937 (dynLambda!21645 lambda!202659 (h!58255 (t!359337 (toList!5327 lm!2023)))))))

(declare-fun b!4671905 () Bool)

(assert (=> b!4671905 (= e!2915501 (forall!11119 (t!359337 (t!359337 (toList!5327 lm!2023))) lambda!202659))))

(assert (= (and d!1485614 (not res!1966936)) b!4671904))

(assert (= (and b!4671904 res!1966937) b!4671905))

(declare-fun b_lambda!176375 () Bool)

(assert (=> (not b_lambda!176375) (not b!4671904)))

(declare-fun m!5565711 () Bool)

(assert (=> b!4671904 m!5565711))

(declare-fun m!5565713 () Bool)

(assert (=> b!4671905 m!5565713))

(assert (=> b!4671801 d!1485614))

(assert (=> b!4671752 d!1485588))

(declare-fun d!1485616 () Bool)

(assert (=> d!1485616 (containsKey!2860 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653)))

(declare-fun lt!1833663 () Unit!121288)

(declare-fun choose!32337 (List!52198 K!13448) Unit!121288)

(assert (=> d!1485616 (= lt!1833663 (choose!32337 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(assert (=> d!1485616 (invariantList!1345 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))

(assert (=> d!1485616 (= (lemmaInGetKeysListThenContainsKey!783 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653) lt!1833663)))

(declare-fun bs!1079052 () Bool)

(assert (= bs!1079052 d!1485616))

(assert (=> bs!1079052 m!5565581))

(declare-fun m!5565715 () Bool)

(assert (=> bs!1079052 m!5565715))

(declare-fun m!5565717 () Bool)

(assert (=> bs!1079052 m!5565717))

(assert (=> b!4671752 d!1485616))

(declare-fun d!1485618 () Bool)

(declare-fun res!1966938 () Bool)

(declare-fun e!2915502 () Bool)

(assert (=> d!1485618 (=> res!1966938 e!2915502)))

(assert (=> d!1485618 (= res!1966938 (and (is-Cons!52074 lt!1833630) (= (_1!29929 (h!58254 lt!1833630)) key!4653)))))

(assert (=> d!1485618 (= (containsKey!2859 lt!1833630 key!4653) e!2915502)))

(declare-fun b!4671906 () Bool)

(declare-fun e!2915503 () Bool)

(assert (=> b!4671906 (= e!2915502 e!2915503)))

(declare-fun res!1966939 () Bool)

(assert (=> b!4671906 (=> (not res!1966939) (not e!2915503))))

(assert (=> b!4671906 (= res!1966939 (is-Cons!52074 lt!1833630))))

(declare-fun b!4671907 () Bool)

(assert (=> b!4671907 (= e!2915503 (containsKey!2859 (t!359336 lt!1833630) key!4653))))

(assert (= (and d!1485618 (not res!1966938)) b!4671906))

(assert (= (and b!4671906 res!1966939) b!4671907))

(declare-fun m!5565719 () Bool)

(assert (=> b!4671907 m!5565719))

(assert (=> d!1485572 d!1485618))

(assert (=> d!1485572 d!1485568))

(declare-fun bs!1079053 () Bool)

(declare-fun b!4671927 () Bool)

(assert (= bs!1079053 (and b!4671927 b!4671892)))

(declare-fun lambda!202697 () Int)

(assert (=> bs!1079053 (= (= (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (= lambda!202697 lambda!202687))))

(assert (=> b!4671927 true))

(declare-fun bs!1079054 () Bool)

(declare-fun b!4671928 () Bool)

(assert (= bs!1079054 (and b!4671928 b!4671892)))

(declare-fun lambda!202698 () Int)

(assert (=> bs!1079054 (= (= (Cons!52074 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (= lambda!202698 lambda!202687))))

(declare-fun bs!1079055 () Bool)

(assert (= bs!1079055 (and b!4671928 b!4671927)))

(assert (=> bs!1079055 (= (= (Cons!52074 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) (= lambda!202698 lambda!202697))))

(assert (=> b!4671928 true))

(declare-fun bs!1079056 () Bool)

(declare-fun b!4671931 () Bool)

(assert (= bs!1079056 (and b!4671931 b!4671892)))

(declare-fun lambda!202699 () Int)

(assert (=> bs!1079056 (= lambda!202699 lambda!202687)))

(declare-fun bs!1079057 () Bool)

(assert (= bs!1079057 (and b!4671931 b!4671927)))

(assert (=> bs!1079057 (= (= (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) (= lambda!202699 lambda!202697))))

(declare-fun bs!1079058 () Bool)

(assert (= bs!1079058 (and b!4671931 b!4671928)))

(assert (=> bs!1079058 (= (= (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) (Cons!52074 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))) (= lambda!202699 lambda!202698))))

(assert (=> b!4671931 true))

(declare-fun bs!1079059 () Bool)

(declare-fun b!4671932 () Bool)

(assert (= bs!1079059 (and b!4671932 b!4671893)))

(declare-fun lambda!202700 () Int)

(assert (=> bs!1079059 (= lambda!202700 lambda!202688)))

(declare-fun b!4671926 () Bool)

(declare-fun e!2915514 () Unit!121288)

(declare-fun Unit!121296 () Unit!121288)

(assert (=> b!4671926 (= e!2915514 Unit!121296)))

(assert (=> b!4671927 false))

(declare-fun lt!1833680 () Unit!121288)

(declare-fun forallContained!3319 (List!52202 Int K!13448) Unit!121288)

(assert (=> b!4671927 (= lt!1833680 (forallContained!3319 (getKeysList!784 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) lambda!202697 (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))))

(declare-fun e!2915513 () Unit!121288)

(declare-fun Unit!121297 () Unit!121288)

(assert (=> b!4671927 (= e!2915513 Unit!121297)))

(declare-fun e!2915512 () List!52202)

(assert (=> b!4671928 (= e!2915512 (Cons!52078 (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) (getKeysList!784 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))))

(declare-fun c!799703 () Bool)

(assert (=> b!4671928 (= c!799703 (containsKey!2860 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))))

(declare-fun lt!1833678 () Unit!121288)

(assert (=> b!4671928 (= lt!1833678 e!2915514)))

(declare-fun c!799704 () Bool)

(assert (=> b!4671928 (= c!799704 (contains!15262 (getKeysList!784 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))))

(declare-fun lt!1833679 () Unit!121288)

(assert (=> b!4671928 (= lt!1833679 e!2915513)))

(declare-fun lt!1833682 () List!52202)

(assert (=> b!4671928 (= lt!1833682 (getKeysList!784 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))))

(declare-fun lt!1833681 () Unit!121288)

(declare-fun lemmaForallContainsAddHeadPreserves!271 (List!52198 List!52202 tuple2!53270) Unit!121288)

(assert (=> b!4671928 (= lt!1833681 (lemmaForallContainsAddHeadPreserves!271 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) lt!1833682 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))))

(assert (=> b!4671928 (forall!11123 lt!1833682 lambda!202698)))

(declare-fun lt!1833684 () Unit!121288)

(assert (=> b!4671928 (= lt!1833684 lt!1833681)))

(declare-fun b!4671929 () Bool)

(declare-fun Unit!121298 () Unit!121288)

(assert (=> b!4671929 (= e!2915513 Unit!121298)))

(declare-fun b!4671930 () Bool)

(declare-fun res!1966946 () Bool)

(declare-fun e!2915515 () Bool)

(assert (=> b!4671930 (=> (not res!1966946) (not e!2915515))))

(declare-fun lt!1833683 () List!52202)

(assert (=> b!4671930 (= res!1966946 (= (length!558 lt!1833683) (length!559 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))))

(declare-fun res!1966947 () Bool)

(assert (=> b!4671931 (=> (not res!1966947) (not e!2915515))))

(assert (=> b!4671931 (= res!1966947 (forall!11123 lt!1833683 lambda!202699))))

(assert (=> b!4671932 (= e!2915515 (= (content!9080 lt!1833683) (content!9080 (map!11524 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) lambda!202700))))))

(declare-fun b!4671933 () Bool)

(assert (=> b!4671933 (= e!2915512 Nil!52078)))

(declare-fun b!4671934 () Bool)

(assert (=> b!4671934 false))

(declare-fun Unit!121299 () Unit!121288)

(assert (=> b!4671934 (= e!2915514 Unit!121299)))

(declare-fun d!1485620 () Bool)

(assert (=> d!1485620 e!2915515))

(declare-fun res!1966948 () Bool)

(assert (=> d!1485620 (=> (not res!1966948) (not e!2915515))))

(assert (=> d!1485620 (= res!1966948 (noDuplicate!851 lt!1833683))))

(assert (=> d!1485620 (= lt!1833683 e!2915512)))

(declare-fun c!799705 () Bool)

(assert (=> d!1485620 (= c!799705 (is-Cons!52074 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))

(assert (=> d!1485620 (invariantList!1345 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))

(assert (=> d!1485620 (= (getKeysList!784 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) lt!1833683)))

(assert (= (and d!1485620 c!799705) b!4671928))

(assert (= (and d!1485620 (not c!799705)) b!4671933))

(assert (= (and b!4671928 c!799703) b!4671934))

(assert (= (and b!4671928 (not c!799703)) b!4671926))

(assert (= (and b!4671928 c!799704) b!4671927))

(assert (= (and b!4671928 (not c!799704)) b!4671929))

(assert (= (and d!1485620 res!1966948) b!4671930))

(assert (= (and b!4671930 res!1966946) b!4671931))

(assert (= (and b!4671931 res!1966947) b!4671932))

(declare-fun m!5565721 () Bool)

(assert (=> b!4671928 m!5565721))

(declare-fun m!5565723 () Bool)

(assert (=> b!4671928 m!5565723))

(declare-fun m!5565725 () Bool)

(assert (=> b!4671928 m!5565725))

(declare-fun m!5565727 () Bool)

(assert (=> b!4671928 m!5565727))

(declare-fun m!5565729 () Bool)

(assert (=> b!4671928 m!5565729))

(assert (=> b!4671928 m!5565725))

(declare-fun m!5565731 () Bool)

(assert (=> b!4671932 m!5565731))

(declare-fun m!5565733 () Bool)

(assert (=> b!4671932 m!5565733))

(assert (=> b!4671932 m!5565733))

(declare-fun m!5565735 () Bool)

(assert (=> b!4671932 m!5565735))

(declare-fun m!5565737 () Bool)

(assert (=> b!4671930 m!5565737))

(assert (=> b!4671930 m!5565695))

(assert (=> b!4671927 m!5565725))

(assert (=> b!4671927 m!5565725))

(declare-fun m!5565739 () Bool)

(assert (=> b!4671927 m!5565739))

(declare-fun m!5565741 () Bool)

(assert (=> d!1485620 m!5565741))

(assert (=> d!1485620 m!5565717))

(declare-fun m!5565743 () Bool)

(assert (=> b!4671931 m!5565743))

(assert (=> b!4671754 d!1485620))

(declare-fun d!1485622 () Bool)

(declare-fun lt!1833687 () Bool)

(assert (=> d!1485622 (= lt!1833687 (set.member key!4653 (content!9080 e!2915402)))))

(declare-fun e!2915521 () Bool)

(assert (=> d!1485622 (= lt!1833687 e!2915521)))

(declare-fun res!1966954 () Bool)

(assert (=> d!1485622 (=> (not res!1966954) (not e!2915521))))

(assert (=> d!1485622 (= res!1966954 (is-Cons!52078 e!2915402))))

(assert (=> d!1485622 (= (contains!15262 e!2915402 key!4653) lt!1833687)))

(declare-fun b!4671941 () Bool)

(declare-fun e!2915520 () Bool)

(assert (=> b!4671941 (= e!2915521 e!2915520)))

(declare-fun res!1966953 () Bool)

(assert (=> b!4671941 (=> res!1966953 e!2915520)))

(assert (=> b!4671941 (= res!1966953 (= (h!58260 e!2915402) key!4653))))

(declare-fun b!4671942 () Bool)

(assert (=> b!4671942 (= e!2915520 (contains!15262 (t!359340 e!2915402) key!4653))))

(assert (= (and d!1485622 res!1966954) b!4671941))

(assert (= (and b!4671941 (not res!1966953)) b!4671942))

(declare-fun m!5565745 () Bool)

(assert (=> d!1485622 m!5565745))

(declare-fun m!5565747 () Bool)

(assert (=> d!1485622 m!5565747))

(declare-fun m!5565749 () Bool)

(assert (=> b!4671942 m!5565749))

(assert (=> bm!326517 d!1485622))

(declare-fun d!1485624 () Bool)

(declare-fun res!1966955 () Bool)

(declare-fun e!2915522 () Bool)

(assert (=> d!1485624 (=> res!1966955 e!2915522)))

(assert (=> d!1485624 (= res!1966955 (not (is-Cons!52074 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))

(assert (=> d!1485624 (= (noDuplicateKeys!1719 (_2!29930 (h!58255 (toList!5327 lm!2023)))) e!2915522)))

(declare-fun b!4671943 () Bool)

(declare-fun e!2915523 () Bool)

(assert (=> b!4671943 (= e!2915522 e!2915523)))

(declare-fun res!1966956 () Bool)

(assert (=> b!4671943 (=> (not res!1966956) (not e!2915523))))

(assert (=> b!4671943 (= res!1966956 (not (containsKey!2859 (t!359336 (_2!29930 (h!58255 (toList!5327 lm!2023)))) (_1!29929 (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))))

(declare-fun b!4671944 () Bool)

(assert (=> b!4671944 (= e!2915523 (noDuplicateKeys!1719 (t!359336 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))

(assert (= (and d!1485624 (not res!1966955)) b!4671943))

(assert (= (and b!4671943 res!1966956) b!4671944))

(declare-fun m!5565751 () Bool)

(assert (=> b!4671943 m!5565751))

(declare-fun m!5565753 () Bool)

(assert (=> b!4671944 m!5565753))

(assert (=> bs!1079044 d!1485624))

(declare-fun d!1485626 () Bool)

(declare-fun lt!1833688 () Bool)

(assert (=> d!1485626 (= lt!1833688 (set.member key!4653 (content!9080 (keys!18513 (extractMap!1745 (toList!5327 lm!2023))))))))

(declare-fun e!2915525 () Bool)

(assert (=> d!1485626 (= lt!1833688 e!2915525)))

(declare-fun res!1966958 () Bool)

(assert (=> d!1485626 (=> (not res!1966958) (not e!2915525))))

(assert (=> d!1485626 (= res!1966958 (is-Cons!52078 (keys!18513 (extractMap!1745 (toList!5327 lm!2023)))))))

(assert (=> d!1485626 (= (contains!15262 (keys!18513 (extractMap!1745 (toList!5327 lm!2023))) key!4653) lt!1833688)))

(declare-fun b!4671945 () Bool)

(declare-fun e!2915524 () Bool)

(assert (=> b!4671945 (= e!2915525 e!2915524)))

(declare-fun res!1966957 () Bool)

(assert (=> b!4671945 (=> res!1966957 e!2915524)))

(assert (=> b!4671945 (= res!1966957 (= (h!58260 (keys!18513 (extractMap!1745 (toList!5327 lm!2023)))) key!4653))))

(declare-fun b!4671946 () Bool)

(assert (=> b!4671946 (= e!2915524 (contains!15262 (t!359340 (keys!18513 (extractMap!1745 (toList!5327 lm!2023)))) key!4653))))

(assert (= (and d!1485626 res!1966958) b!4671945))

(assert (= (and b!4671945 (not res!1966957)) b!4671946))

(assert (=> d!1485626 m!5565577))

(declare-fun m!5565755 () Bool)

(assert (=> d!1485626 m!5565755))

(declare-fun m!5565757 () Bool)

(assert (=> d!1485626 m!5565757))

(declare-fun m!5565759 () Bool)

(assert (=> b!4671946 m!5565759))

(assert (=> b!4671755 d!1485626))

(assert (=> b!4671755 d!1485606))

(assert (=> b!4671756 d!1485626))

(assert (=> b!4671756 d!1485606))

(declare-fun b!4671950 () Bool)

(declare-fun e!2915527 () List!52198)

(assert (=> b!4671950 (= e!2915527 Nil!52074)))

(declare-fun b!4671947 () Bool)

(declare-fun e!2915526 () List!52198)

(assert (=> b!4671947 (= e!2915526 (t!359336 (t!359336 oldBucket!34)))))

(declare-fun b!4671948 () Bool)

(assert (=> b!4671948 (= e!2915526 e!2915527)))

(declare-fun c!799706 () Bool)

(assert (=> b!4671948 (= c!799706 (is-Cons!52074 (t!359336 oldBucket!34)))))

(declare-fun b!4671949 () Bool)

(assert (=> b!4671949 (= e!2915527 (Cons!52074 (h!58254 (t!359336 oldBucket!34)) (removePairForKey!1314 (t!359336 (t!359336 oldBucket!34)) key!4653)))))

(declare-fun d!1485628 () Bool)

(declare-fun lt!1833689 () List!52198)

(assert (=> d!1485628 (not (containsKey!2859 lt!1833689 key!4653))))

(assert (=> d!1485628 (= lt!1833689 e!2915526)))

(declare-fun c!799707 () Bool)

(assert (=> d!1485628 (= c!799707 (and (is-Cons!52074 (t!359336 oldBucket!34)) (= (_1!29929 (h!58254 (t!359336 oldBucket!34))) key!4653)))))

(assert (=> d!1485628 (noDuplicateKeys!1719 (t!359336 oldBucket!34))))

(assert (=> d!1485628 (= (removePairForKey!1314 (t!359336 oldBucket!34) key!4653) lt!1833689)))

(assert (= (and d!1485628 c!799707) b!4671947))

(assert (= (and d!1485628 (not c!799707)) b!4671948))

(assert (= (and b!4671948 c!799706) b!4671949))

(assert (= (and b!4671948 (not c!799706)) b!4671950))

(declare-fun m!5565761 () Bool)

(assert (=> b!4671949 m!5565761))

(declare-fun m!5565763 () Bool)

(assert (=> d!1485628 m!5565763))

(assert (=> d!1485628 m!5565611))

(assert (=> b!4671794 d!1485628))

(declare-fun bs!1079060 () Bool)

(declare-fun b!4671963 () Bool)

(assert (= bs!1079060 (and b!4671963 d!1485546)))

(declare-fun lambda!202729 () Int)

(assert (=> bs!1079060 (not (= lambda!202729 lambda!202665))))

(declare-fun bs!1079061 () Bool)

(assert (= bs!1079061 (and b!4671963 d!1485550)))

(assert (=> bs!1079061 (not (= lambda!202729 lambda!202666))))

(assert (=> b!4671963 true))

(declare-fun bs!1079062 () Bool)

(declare-fun b!4671964 () Bool)

(assert (= bs!1079062 (and b!4671964 d!1485546)))

(declare-fun lambda!202730 () Int)

(assert (=> bs!1079062 (not (= lambda!202730 lambda!202665))))

(declare-fun bs!1079063 () Bool)

(assert (= bs!1079063 (and b!4671964 d!1485550)))

(assert (=> bs!1079063 (not (= lambda!202730 lambda!202666))))

(declare-fun bs!1079064 () Bool)

(assert (= bs!1079064 (and b!4671964 b!4671963)))

(assert (=> bs!1079064 (= lambda!202730 lambda!202729)))

(assert (=> b!4671964 true))

(declare-fun lambda!202731 () Int)

(assert (=> bs!1079062 (not (= lambda!202731 lambda!202665))))

(assert (=> bs!1079063 (not (= lambda!202731 lambda!202666))))

(declare-fun lt!1833740 () ListMap!4691)

(assert (=> bs!1079064 (= (= lt!1833740 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) (= lambda!202731 lambda!202729))))

(assert (=> b!4671964 (= (= lt!1833740 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) (= lambda!202731 lambda!202730))))

(assert (=> b!4671964 true))

(declare-fun bs!1079065 () Bool)

(declare-fun d!1485630 () Bool)

(assert (= bs!1079065 (and d!1485630 b!4671964)))

(declare-fun lambda!202732 () Int)

(declare-fun lt!1833738 () ListMap!4691)

(assert (=> bs!1079065 (= (= lt!1833738 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) (= lambda!202732 lambda!202730))))

(declare-fun bs!1079066 () Bool)

(assert (= bs!1079066 (and d!1485630 d!1485546)))

(assert (=> bs!1079066 (not (= lambda!202732 lambda!202665))))

(declare-fun bs!1079067 () Bool)

(assert (= bs!1079067 (and d!1485630 d!1485550)))

(assert (=> bs!1079067 (not (= lambda!202732 lambda!202666))))

(assert (=> bs!1079065 (= (= lt!1833738 lt!1833740) (= lambda!202732 lambda!202731))))

(declare-fun bs!1079068 () Bool)

(assert (= bs!1079068 (and d!1485630 b!4671963)))

(assert (=> bs!1079068 (= (= lt!1833738 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) (= lambda!202732 lambda!202729))))

(assert (=> d!1485630 true))

(declare-fun call!326532 () Bool)

(declare-fun bm!326527 () Bool)

(declare-fun c!799710 () Bool)

(assert (=> bm!326527 (= call!326532 (forall!11121 (toList!5328 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) (ite c!799710 lambda!202729 lambda!202731)))))

(declare-fun e!2915534 () Bool)

(assert (=> d!1485630 e!2915534))

(declare-fun res!1966966 () Bool)

(assert (=> d!1485630 (=> (not res!1966966) (not e!2915534))))

(assert (=> d!1485630 (= res!1966966 (forall!11121 (_2!29930 (h!58255 (toList!5327 lm!2023))) lambda!202732))))

(declare-fun e!2915536 () ListMap!4691)

(assert (=> d!1485630 (= lt!1833738 e!2915536)))

(assert (=> d!1485630 (= c!799710 (is-Nil!52074 (_2!29930 (h!58255 (toList!5327 lm!2023)))))))

(assert (=> d!1485630 (noDuplicateKeys!1719 (_2!29930 (h!58255 (toList!5327 lm!2023))))))

(assert (=> d!1485630 (= (addToMapMapFromBucket!1154 (_2!29930 (h!58255 (toList!5327 lm!2023))) (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) lt!1833738)))

(declare-fun b!4671961 () Bool)

(declare-fun e!2915535 () Bool)

(assert (=> b!4671961 (= e!2915535 (forall!11121 (toList!5328 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) lambda!202731))))

(declare-fun b!4671962 () Bool)

(declare-fun res!1966967 () Bool)

(assert (=> b!4671962 (=> (not res!1966967) (not e!2915534))))

(assert (=> b!4671962 (= res!1966967 (forall!11121 (toList!5328 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) lambda!202732))))

(declare-fun bm!326528 () Bool)

(declare-fun call!326533 () Unit!121288)

(declare-fun lemmaContainsAllItsOwnKeys!637 (ListMap!4691) Unit!121288)

(assert (=> bm!326528 (= call!326533 (lemmaContainsAllItsOwnKeys!637 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))))))

(declare-fun bm!326529 () Bool)

(declare-fun call!326534 () Bool)

(assert (=> bm!326529 (= call!326534 (forall!11121 (ite c!799710 (toList!5328 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) (t!359336 (_2!29930 (h!58255 (toList!5327 lm!2023))))) (ite c!799710 lambda!202729 lambda!202731)))))

(assert (=> b!4671963 (= e!2915536 (extractMap!1745 (t!359337 (toList!5327 lm!2023))))))

(declare-fun lt!1833747 () Unit!121288)

(assert (=> b!4671963 (= lt!1833747 call!326533)))

(assert (=> b!4671963 call!326534))

(declare-fun lt!1833736 () Unit!121288)

(assert (=> b!4671963 (= lt!1833736 lt!1833747)))

(assert (=> b!4671963 call!326532))

(declare-fun lt!1833745 () Unit!121288)

(declare-fun Unit!121300 () Unit!121288)

(assert (=> b!4671963 (= lt!1833745 Unit!121300)))

(assert (=> b!4671964 (= e!2915536 lt!1833740)))

(declare-fun lt!1833746 () ListMap!4691)

(declare-fun +!2043 (ListMap!4691 tuple2!53270) ListMap!4691)

(assert (=> b!4671964 (= lt!1833746 (+!2043 (extractMap!1745 (t!359337 (toList!5327 lm!2023))) (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))

(assert (=> b!4671964 (= lt!1833740 (addToMapMapFromBucket!1154 (t!359336 (_2!29930 (h!58255 (toList!5327 lm!2023)))) (+!2043 (extractMap!1745 (t!359337 (toList!5327 lm!2023))) (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023)))))))))

(declare-fun lt!1833739 () Unit!121288)

(assert (=> b!4671964 (= lt!1833739 call!326533)))

(assert (=> b!4671964 (forall!11121 (toList!5328 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) lambda!202730)))

(declare-fun lt!1833748 () Unit!121288)

(assert (=> b!4671964 (= lt!1833748 lt!1833739)))

(assert (=> b!4671964 (forall!11121 (toList!5328 lt!1833746) lambda!202731)))

(declare-fun lt!1833752 () Unit!121288)

(declare-fun Unit!121301 () Unit!121288)

(assert (=> b!4671964 (= lt!1833752 Unit!121301)))

(assert (=> b!4671964 call!326534))

(declare-fun lt!1833734 () Unit!121288)

(declare-fun Unit!121302 () Unit!121288)

(assert (=> b!4671964 (= lt!1833734 Unit!121302)))

(declare-fun lt!1833750 () Unit!121288)

(declare-fun Unit!121303 () Unit!121288)

(assert (=> b!4671964 (= lt!1833750 Unit!121303)))

(declare-fun lt!1833743 () Unit!121288)

(declare-fun forallContained!3320 (List!52198 Int tuple2!53270) Unit!121288)

(assert (=> b!4671964 (= lt!1833743 (forallContained!3320 (toList!5328 lt!1833746) lambda!202731 (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))

(assert (=> b!4671964 (contains!15260 lt!1833746 (_1!29929 (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))

(declare-fun lt!1833749 () Unit!121288)

(declare-fun Unit!121304 () Unit!121288)

(assert (=> b!4671964 (= lt!1833749 Unit!121304)))

(assert (=> b!4671964 (contains!15260 lt!1833740 (_1!29929 (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023))))))))

(declare-fun lt!1833737 () Unit!121288)

(declare-fun Unit!121305 () Unit!121288)

(assert (=> b!4671964 (= lt!1833737 Unit!121305)))

(assert (=> b!4671964 (forall!11121 (_2!29930 (h!58255 (toList!5327 lm!2023))) lambda!202731)))

(declare-fun lt!1833744 () Unit!121288)

(declare-fun Unit!121306 () Unit!121288)

(assert (=> b!4671964 (= lt!1833744 Unit!121306)))

(assert (=> b!4671964 (forall!11121 (toList!5328 lt!1833746) lambda!202731)))

(declare-fun lt!1833751 () Unit!121288)

(declare-fun Unit!121307 () Unit!121288)

(assert (=> b!4671964 (= lt!1833751 Unit!121307)))

(declare-fun lt!1833732 () Unit!121288)

(declare-fun Unit!121308 () Unit!121288)

(assert (=> b!4671964 (= lt!1833732 Unit!121308)))

(declare-fun lt!1833735 () Unit!121288)

(declare-fun addForallContainsKeyThenBeforeAdding!636 (ListMap!4691 ListMap!4691 K!13448 V!13694) Unit!121288)

(assert (=> b!4671964 (= lt!1833735 (addForallContainsKeyThenBeforeAdding!636 (extractMap!1745 (t!359337 (toList!5327 lm!2023))) lt!1833740 (_1!29929 (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023))))) (_2!29929 (h!58254 (_2!29930 (h!58255 (toList!5327 lm!2023)))))))))

(assert (=> b!4671964 call!326532))

(declare-fun lt!1833742 () Unit!121288)

(assert (=> b!4671964 (= lt!1833742 lt!1833735)))

(assert (=> b!4671964 (forall!11121 (toList!5328 (extractMap!1745 (t!359337 (toList!5327 lm!2023)))) lambda!202731)))

(declare-fun lt!1833741 () Unit!121288)

(declare-fun Unit!121309 () Unit!121288)

(assert (=> b!4671964 (= lt!1833741 Unit!121309)))

(declare-fun res!1966965 () Bool)

(assert (=> b!4671964 (= res!1966965 (forall!11121 (_2!29930 (h!58255 (toList!5327 lm!2023))) lambda!202731))))

(assert (=> b!4671964 (=> (not res!1966965) (not e!2915535))))

(assert (=> b!4671964 e!2915535))

(declare-fun lt!1833733 () Unit!121288)

(declare-fun Unit!121310 () Unit!121288)

(assert (=> b!4671964 (= lt!1833733 Unit!121310)))

(declare-fun b!4671965 () Bool)

(assert (=> b!4671965 (= e!2915534 (invariantList!1345 (toList!5328 lt!1833738)))))

(assert (= (and d!1485630 c!799710) b!4671963))

(assert (= (and d!1485630 (not c!799710)) b!4671964))

(assert (= (and b!4671964 res!1966965) b!4671961))

(assert (= (or b!4671963 b!4671964) bm!326528))

(assert (= (or b!4671963 b!4671964) bm!326529))

(assert (= (or b!4671963 b!4671964) bm!326527))

(assert (= (and d!1485630 res!1966966) b!4671962))

(assert (= (and b!4671962 res!1966967) b!4671965))

(declare-fun m!5565765 () Bool)

(assert (=> d!1485630 m!5565765))

(assert (=> d!1485630 m!5565631))

(declare-fun m!5565767 () Bool)

(assert (=> b!4671965 m!5565767))

(declare-fun m!5565769 () Bool)

(assert (=> bm!326527 m!5565769))

(declare-fun m!5565771 () Bool)

(assert (=> bm!326529 m!5565771))

(declare-fun m!5565773 () Bool)

(assert (=> b!4671962 m!5565773))

(declare-fun m!5565775 () Bool)

(assert (=> b!4671961 m!5565775))

(declare-fun m!5565777 () Bool)

(assert (=> b!4671964 m!5565777))

(declare-fun m!5565779 () Bool)

(assert (=> b!4671964 m!5565779))

(assert (=> b!4671964 m!5565775))

(assert (=> b!4671964 m!5565605))

(declare-fun m!5565781 () Bool)

(assert (=> b!4671964 m!5565781))

(declare-fun m!5565783 () Bool)

(assert (=> b!4671964 m!5565783))

(assert (=> b!4671964 m!5565783))

(declare-fun m!5565785 () Bool)

(assert (=> b!4671964 m!5565785))

(declare-fun m!5565787 () Bool)

(assert (=> b!4671964 m!5565787))

(declare-fun m!5565789 () Bool)

(assert (=> b!4671964 m!5565789))

(declare-fun m!5565791 () Bool)

(assert (=> b!4671964 m!5565791))

(assert (=> b!4671964 m!5565779))

(assert (=> b!4671964 m!5565605))

(assert (=> b!4671964 m!5565785))

(declare-fun m!5565793 () Bool)

(assert (=> b!4671964 m!5565793))

(assert (=> bm!326528 m!5565605))

(declare-fun m!5565795 () Bool)

(assert (=> bm!326528 m!5565795))

(assert (=> b!4671766 d!1485630))

(declare-fun bs!1079069 () Bool)

(declare-fun d!1485634 () Bool)

(assert (= bs!1079069 (and d!1485634 start!471302)))

(declare-fun lambda!202733 () Int)

(assert (=> bs!1079069 (= lambda!202733 lambda!202659)))

(declare-fun bs!1079070 () Bool)

(assert (= bs!1079070 (and d!1485634 d!1485562)))

(assert (=> bs!1079070 (= lambda!202733 lambda!202672)))

(declare-fun bs!1079071 () Bool)

(assert (= bs!1079071 (and d!1485634 d!1485570)))

(assert (=> bs!1079071 (not (= lambda!202733 lambda!202675))))

(declare-fun lt!1833753 () ListMap!4691)

(assert (=> d!1485634 (invariantList!1345 (toList!5328 lt!1833753))))

(declare-fun e!2915543 () ListMap!4691)

(assert (=> d!1485634 (= lt!1833753 e!2915543)))

(declare-fun c!799711 () Bool)

(assert (=> d!1485634 (= c!799711 (is-Cons!52075 (t!359337 (toList!5327 lm!2023))))))

(assert (=> d!1485634 (forall!11119 (t!359337 (toList!5327 lm!2023)) lambda!202733)))

(assert (=> d!1485634 (= (extractMap!1745 (t!359337 (toList!5327 lm!2023))) lt!1833753)))

(declare-fun b!4671974 () Bool)

(assert (=> b!4671974 (= e!2915543 (addToMapMapFromBucket!1154 (_2!29930 (h!58255 (t!359337 (toList!5327 lm!2023)))) (extractMap!1745 (t!359337 (t!359337 (toList!5327 lm!2023))))))))

(declare-fun b!4671975 () Bool)

(assert (=> b!4671975 (= e!2915543 (ListMap!4692 Nil!52074))))

(assert (= (and d!1485634 c!799711) b!4671974))

(assert (= (and d!1485634 (not c!799711)) b!4671975))

(declare-fun m!5565799 () Bool)

(assert (=> d!1485634 m!5565799))

(declare-fun m!5565801 () Bool)

(assert (=> d!1485634 m!5565801))

(declare-fun m!5565803 () Bool)

(assert (=> b!4671974 m!5565803))

(assert (=> b!4671974 m!5565803))

(declare-fun m!5565805 () Bool)

(assert (=> b!4671974 m!5565805))

(assert (=> b!4671766 d!1485634))

(declare-fun d!1485638 () Bool)

(assert (=> d!1485638 (isDefined!9194 (getValueByKey!1687 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(declare-fun lt!1833756 () Unit!121288)

(declare-fun choose!32338 (List!52198 K!13448) Unit!121288)

(assert (=> d!1485638 (= lt!1833756 (choose!32338 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(assert (=> d!1485638 (invariantList!1345 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))

(assert (=> d!1485638 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1579 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653) lt!1833756)))

(declare-fun bs!1079072 () Bool)

(assert (= bs!1079072 d!1485638))

(assert (=> bs!1079072 m!5565585))

(assert (=> bs!1079072 m!5565585))

(assert (=> bs!1079072 m!5565587))

(declare-fun m!5565811 () Bool)

(assert (=> bs!1079072 m!5565811))

(assert (=> bs!1079072 m!5565717))

(assert (=> b!4671749 d!1485638))

(declare-fun d!1485642 () Bool)

(declare-fun isEmpty!29060 (Option!11939) Bool)

(assert (=> d!1485642 (= (isDefined!9194 (getValueByKey!1687 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653)) (not (isEmpty!29060 (getValueByKey!1687 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))))

(declare-fun bs!1079073 () Bool)

(assert (= bs!1079073 d!1485642))

(assert (=> bs!1079073 m!5565585))

(declare-fun m!5565813 () Bool)

(assert (=> bs!1079073 m!5565813))

(assert (=> b!4671749 d!1485642))

(declare-fun b!4671989 () Bool)

(declare-fun e!2915551 () Option!11939)

(assert (=> b!4671989 (= e!2915551 None!11938)))

(declare-fun b!4671986 () Bool)

(declare-fun e!2915550 () Option!11939)

(assert (=> b!4671986 (= e!2915550 (Some!11938 (_2!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))))))))

(declare-fun b!4671987 () Bool)

(assert (=> b!4671987 (= e!2915550 e!2915551)))

(declare-fun c!799717 () Bool)

(assert (=> b!4671987 (= c!799717 (and (is-Cons!52074 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (not (= (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) key!4653))))))

(declare-fun b!4671988 () Bool)

(assert (=> b!4671988 (= e!2915551 (getValueByKey!1687 (t!359336 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) key!4653))))

(declare-fun d!1485644 () Bool)

(declare-fun c!799716 () Bool)

(assert (=> d!1485644 (= c!799716 (and (is-Cons!52074 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) (= (_1!29929 (h!58254 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))) key!4653)))))

(assert (=> d!1485644 (= (getValueByKey!1687 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653) e!2915550)))

(assert (= (and d!1485644 c!799716) b!4671986))

(assert (= (and d!1485644 (not c!799716)) b!4671987))

(assert (= (and b!4671987 c!799717) b!4671988))

(assert (= (and b!4671987 (not c!799717)) b!4671989))

(declare-fun m!5565815 () Bool)

(assert (=> b!4671988 m!5565815))

(assert (=> b!4671749 d!1485644))

(declare-fun d!1485646 () Bool)

(assert (=> d!1485646 (contains!15262 (getKeysList!784 (toList!5328 (extractMap!1745 (toList!5327 lm!2023)))) key!4653)))

(declare-fun lt!1833759 () Unit!121288)

(declare-fun choose!32339 (List!52198 K!13448) Unit!121288)

(assert (=> d!1485646 (= lt!1833759 (choose!32339 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653))))

(assert (=> d!1485646 (invariantList!1345 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))))))

(assert (=> d!1485646 (= (lemmaInListThenGetKeysListContains!779 (toList!5328 (extractMap!1745 (toList!5327 lm!2023))) key!4653) lt!1833759)))

(declare-fun bs!1079074 () Bool)

(assert (= bs!1079074 d!1485646))

(assert (=> bs!1079074 m!5565593))

(assert (=> bs!1079074 m!5565593))

(declare-fun m!5565817 () Bool)

(assert (=> bs!1079074 m!5565817))

(declare-fun m!5565819 () Bool)

(assert (=> bs!1079074 m!5565819))

(assert (=> bs!1079074 m!5565717))

(assert (=> b!4671749 d!1485646))

(declare-fun d!1485648 () Bool)

(declare-fun choose!32340 (Hashable!6088 K!13448) (_ BitVec 64))

(assert (=> d!1485648 (= (hash!3868 hashF!1323 key!4653) (choose!32340 hashF!1323 key!4653))))

(declare-fun bs!1079075 () Bool)

(assert (= bs!1079075 d!1485648))

(declare-fun m!5565821 () Bool)

(assert (=> bs!1079075 m!5565821))

(assert (=> d!1485548 d!1485648))

(declare-fun d!1485650 () Bool)

(declare-fun res!1966976 () Bool)

(declare-fun e!2915552 () Bool)

(assert (=> d!1485650 (=> res!1966976 e!2915552)))

(assert (=> d!1485650 (= res!1966976 (is-Nil!52074 newBucket!218))))

(assert (=> d!1485650 (= (forall!11121 newBucket!218 lambda!202665) e!2915552)))

(declare-fun b!4671990 () Bool)

(declare-fun e!2915553 () Bool)

(assert (=> b!4671990 (= e!2915552 e!2915553)))

(declare-fun res!1966977 () Bool)

(assert (=> b!4671990 (=> (not res!1966977) (not e!2915553))))

(assert (=> b!4671990 (= res!1966977 (dynLambda!21647 lambda!202665 (h!58254 newBucket!218)))))

(declare-fun b!4671991 () Bool)

(assert (=> b!4671991 (= e!2915553 (forall!11121 (t!359336 newBucket!218) lambda!202665))))

(assert (= (and d!1485650 (not res!1966976)) b!4671990))

(assert (= (and b!4671990 res!1966977) b!4671991))

(declare-fun b_lambda!176377 () Bool)

(assert (=> (not b_lambda!176377) (not b!4671990)))

(declare-fun m!5565823 () Bool)

(assert (=> b!4671990 m!5565823))

(declare-fun m!5565825 () Bool)

(assert (=> b!4671991 m!5565825))

(assert (=> d!1485546 d!1485650))

(assert (=> b!4671751 d!1485642))

(assert (=> b!4671751 d!1485644))

(declare-fun b!4671992 () Bool)

(declare-fun tp!1344052 () Bool)

(declare-fun e!2915554 () Bool)

(assert (=> b!4671992 (= e!2915554 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344052))))

(assert (=> b!4671813 (= tp!1344039 e!2915554)))

(assert (= (and b!4671813 (is-Cons!52074 (_2!29930 (h!58255 (toList!5327 lm!2023))))) b!4671992))

(declare-fun b!4671993 () Bool)

(declare-fun e!2915555 () Bool)

(declare-fun tp!1344053 () Bool)

(declare-fun tp!1344054 () Bool)

(assert (=> b!4671993 (= e!2915555 (and tp!1344053 tp!1344054))))

(assert (=> b!4671813 (= tp!1344040 e!2915555)))

(assert (= (and b!4671813 (is-Cons!52075 (t!359337 (toList!5327 lm!2023)))) b!4671993))

(declare-fun tp!1344055 () Bool)

(declare-fun e!2915556 () Bool)

(declare-fun b!4671994 () Bool)

(assert (=> b!4671994 (= e!2915556 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344055))))

(assert (=> b!4671814 (= tp!1344041 e!2915556)))

(assert (= (and b!4671814 (is-Cons!52074 (t!359336 (t!359336 oldBucket!34)))) b!4671994))

(declare-fun tp!1344056 () Bool)

(declare-fun e!2915557 () Bool)

(declare-fun b!4671995 () Bool)

(assert (=> b!4671995 (= e!2915557 (and tp_is_empty!30169 tp_is_empty!30171 tp!1344056))))

(assert (=> b!4671808 (= tp!1344034 e!2915557)))

(assert (= (and b!4671808 (is-Cons!52074 (t!359336 (t!359336 newBucket!218)))) b!4671995))

(declare-fun b_lambda!176379 () Bool)

(assert (= b_lambda!176367 (or d!1485562 b_lambda!176379)))

(declare-fun bs!1079076 () Bool)

(declare-fun d!1485652 () Bool)

(assert (= bs!1079076 (and d!1485652 d!1485562)))

(assert (=> bs!1079076 (= (dynLambda!21645 lambda!202672 (h!58255 (toList!5327 lm!2023))) (noDuplicateKeys!1719 (_2!29930 (h!58255 (toList!5327 lm!2023)))))))

(assert (=> bs!1079076 m!5565631))

(assert (=> b!4671864 d!1485652))

(declare-fun b_lambda!176381 () Bool)

(assert (= b_lambda!176375 (or start!471302 b_lambda!176381)))

(declare-fun bs!1079077 () Bool)

(declare-fun d!1485654 () Bool)

(assert (= bs!1079077 (and d!1485654 start!471302)))

(assert (=> bs!1079077 (= (dynLambda!21645 lambda!202659 (h!58255 (t!359337 (toList!5327 lm!2023)))) (noDuplicateKeys!1719 (_2!29930 (h!58255 (t!359337 (toList!5327 lm!2023))))))))

(declare-fun m!5565827 () Bool)

(assert (=> bs!1079077 m!5565827))

(assert (=> b!4671904 d!1485654))

(declare-fun b_lambda!176383 () Bool)

(assert (= b_lambda!176377 (or d!1485546 b_lambda!176383)))

(declare-fun bs!1079078 () Bool)

(declare-fun d!1485656 () Bool)

(assert (= bs!1079078 (and d!1485656 d!1485546)))

(assert (=> bs!1079078 (= (dynLambda!21647 lambda!202665 (h!58254 newBucket!218)) (= (hash!3866 hashF!1323 (_1!29929 (h!58254 newBucket!218))) hash!405))))

(declare-fun m!5565829 () Bool)

(assert (=> bs!1079078 m!5565829))

(assert (=> b!4671990 d!1485656))

(declare-fun b_lambda!176385 () Bool)

(assert (= b_lambda!176373 (or d!1485570 b_lambda!176385)))

(declare-fun bs!1079079 () Bool)

(declare-fun d!1485658 () Bool)

(assert (= bs!1079079 (and d!1485658 d!1485570)))

(assert (=> bs!1079079 (= (dynLambda!21645 lambda!202675 (h!58255 (toList!5327 lm!2023))) (allKeysSameHash!1545 (_2!29930 (h!58255 (toList!5327 lm!2023))) (_1!29930 (h!58255 (toList!5327 lm!2023))) hashF!1323))))

(declare-fun m!5565831 () Bool)

(assert (=> bs!1079079 m!5565831))

(assert (=> b!4671902 d!1485658))

(declare-fun b_lambda!176387 () Bool)

(assert (= b_lambda!176369 (or d!1485550 b_lambda!176387)))

(declare-fun bs!1079080 () Bool)

(declare-fun d!1485660 () Bool)

(assert (= bs!1079080 (and d!1485660 d!1485550)))

(assert (=> bs!1079080 (= (dynLambda!21647 lambda!202666 (h!58254 oldBucket!34)) (= (hash!3866 hashF!1323 (_1!29929 (h!58254 oldBucket!34))) hash!405))))

(declare-fun m!5565833 () Bool)

(assert (=> bs!1079080 m!5565833))

(assert (=> b!4671872 d!1485660))

(push 1)

(assert (not d!1485634))

(assert (not b!4671974))

(assert (not bs!1079079))

(assert (not b!4671949))

(assert (not b!4671964))

(assert (not d!1485620))

(assert (not d!1485646))

(assert (not d!1485622))

(assert (not b!4671930))

(assert (not d!1485594))

(assert (not d!1485648))

(assert (not b_lambda!176387))

(assert (not bs!1079078))

(assert (not b!4671865))

(assert (not b!4671891))

(assert (not bs!1079077))

(assert (not b!4671873))

(assert (not b!4671858))

(assert (not b!4671905))

(assert (not b!4671992))

(assert (not d!1485606))

(assert (not b!4671946))

(assert (not b!4671903))

(assert (not b!4671892))

(assert (not b_lambda!176383))

(assert (not b!4671928))

(assert (not b!4671901))

(assert (not b!4671893))

(assert (not bm!326528))

(assert (not b!4671867))

(assert (not b!4671988))

(assert (not b!4671851))

(assert (not d!1485626))

(assert (not b!4671931))

(assert (not b!4671907))

(assert (not bm!326529))

(assert (not b_lambda!176385))

(assert (not b!4671991))

(assert (not b!4671993))

(assert (not d!1485628))

(assert (not b!4671863))

(assert (not bm!326527))

(assert (not b!4671944))

(assert (not d!1485642))

(assert (not d!1485616))

(assert tp_is_empty!30171)

(assert (not b!4671965))

(assert (not d!1485638))

(assert (not b!4671962))

(assert (not d!1485630))

(assert (not bs!1079080))

(assert (not b!4671995))

(assert (not b!4671932))

(assert (not b!4671927))

(assert (not b!4671859))

(assert (not b!4671943))

(assert (not b!4671866))

(assert (not b_lambda!176365))

(assert (not b_lambda!176379))

(assert (not b_lambda!176381))

(assert (not bs!1079076))

(assert tp_is_empty!30169)

(assert (not b!4671961))

(assert (not b!4671942))

(assert (not b!4671857))

(assert (not b!4671994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


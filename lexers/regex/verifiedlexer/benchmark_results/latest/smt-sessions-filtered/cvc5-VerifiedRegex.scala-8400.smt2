; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436782 () Bool)

(assert start!436782)

(declare-fun b!4456618 () Bool)

(declare-fun res!1847541 () Bool)

(declare-fun e!2775124 () Bool)

(assert (=> b!4456618 (=> (not res!1847541) (not e!2775124))))

(declare-datatypes ((K!11403 0))(
  ( (K!11404 (val!17393 Int)) )
))
(declare-datatypes ((V!11649 0))(
  ( (V!11650 (val!17394 Int)) )
))
(declare-datatypes ((tuple2!50106 0))(
  ( (tuple2!50107 (_1!28347 K!11403) (_2!28347 V!11649)) )
))
(declare-datatypes ((List!50147 0))(
  ( (Nil!50023) (Cons!50023 (h!55768 tuple2!50106) (t!357097 List!50147)) )
))
(declare-fun l!12858 () List!50147)

(declare-fun noDuplicateKeys!919 (List!50147) Bool)

(assert (=> b!4456618 (= res!1847541 (noDuplicateKeys!919 l!12858))))

(declare-fun b!4456619 () Bool)

(declare-fun e!2775128 () Bool)

(declare-fun tp!1335079 () Bool)

(assert (=> b!4456619 (= e!2775128 tp!1335079)))

(declare-fun b!4456620 () Bool)

(declare-fun e!2775125 () Bool)

(assert (=> b!4456620 (= e!2775125 (not (noDuplicateKeys!919 (t!357097 l!12858))))))

(declare-fun e!2775126 () Bool)

(assert (=> b!4456620 e!2775126))

(declare-fun res!1847536 () Bool)

(assert (=> b!4456620 (=> (not res!1847536) (not e!2775126))))

(declare-datatypes ((ListMap!3083 0))(
  ( (ListMap!3084 (toList!3845 List!50147)) )
))
(declare-fun lt!1647963 () ListMap!3083)

(declare-fun lt!1647966 () ListMap!3083)

(declare-fun eq!478 (ListMap!3083 ListMap!3083) Bool)

(declare-fun addToMapMapFromBucket!513 (List!50147 ListMap!3083) ListMap!3083)

(declare-fun +!1294 (ListMap!3083 tuple2!50106) ListMap!3083)

(assert (=> b!4456620 (= res!1847536 (eq!478 (addToMapMapFromBucket!513 (t!357097 l!12858) (+!1294 lt!1647963 (h!55768 l!12858))) (+!1294 lt!1647966 (h!55768 l!12858))))))

(declare-datatypes ((Unit!86150 0))(
  ( (Unit!86151) )
))
(declare-fun lt!1647965 () Unit!86150)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!225 (ListMap!3083 K!11403 V!11649 List!50147) Unit!86150)

(assert (=> b!4456620 (= lt!1647965 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!225 lt!1647963 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858)) (t!357097 l!12858)))))

(declare-fun key!4412 () K!11403)

(declare-fun contains!12561 (ListMap!3083 K!11403) Bool)

(assert (=> b!4456620 (contains!12561 lt!1647966 key!4412)))

(assert (=> b!4456620 (= lt!1647966 (addToMapMapFromBucket!513 (t!357097 l!12858) lt!1647963))))

(declare-datatypes ((Hashable!5326 0))(
  ( (HashableExt!5325 (__x!31029 Int)) )
))
(declare-fun hashF!1313 () Hashable!5326)

(declare-datatypes ((tuple2!50108 0))(
  ( (tuple2!50109 (_1!28348 (_ BitVec 64)) (_2!28348 List!50147)) )
))
(declare-datatypes ((List!50148 0))(
  ( (Nil!50024) (Cons!50024 (h!55769 tuple2!50108) (t!357098 List!50148)) )
))
(declare-datatypes ((ListLongMap!2501 0))(
  ( (ListLongMap!2502 (toList!3846 List!50148)) )
))
(declare-fun lm!1853 () ListLongMap!2501)

(declare-fun lt!1647964 () Unit!86150)

(declare-fun lemmaAddToMapMaintainsContains!21 (ListLongMap!2501 K!11403 List!50147 Hashable!5326) Unit!86150)

(assert (=> b!4456620 (= lt!1647964 (lemmaAddToMapMaintainsContains!21 lm!1853 key!4412 (t!357097 l!12858) hashF!1313))))

(declare-fun b!4456621 () Bool)

(declare-fun res!1847538 () Bool)

(assert (=> b!4456621 (=> (not res!1847538) (not e!2775125))))

(assert (=> b!4456621 (= res!1847538 (is-Cons!50023 l!12858))))

(declare-fun b!4456622 () Bool)

(assert (=> b!4456622 (= e!2775124 e!2775125)))

(declare-fun res!1847537 () Bool)

(assert (=> b!4456622 (=> (not res!1847537) (not e!2775125))))

(assert (=> b!4456622 (= res!1847537 (contains!12561 lt!1647963 key!4412))))

(declare-fun extractMap!987 (List!50148) ListMap!3083)

(assert (=> b!4456622 (= lt!1647963 (extractMap!987 (toList!3846 lm!1853)))))

(declare-fun res!1847539 () Bool)

(assert (=> start!436782 (=> (not res!1847539) (not e!2775124))))

(declare-fun lambda!160494 () Int)

(declare-fun forall!9844 (List!50148 Int) Bool)

(assert (=> start!436782 (= res!1847539 (forall!9844 (toList!3846 lm!1853) lambda!160494))))

(assert (=> start!436782 e!2775124))

(declare-fun inv!65590 (ListLongMap!2501) Bool)

(assert (=> start!436782 (and (inv!65590 lm!1853) e!2775128)))

(assert (=> start!436782 true))

(declare-fun e!2775127 () Bool)

(assert (=> start!436782 e!2775127))

(declare-fun tp_is_empty!26897 () Bool)

(assert (=> start!436782 tp_is_empty!26897))

(declare-fun b!4456623 () Bool)

(declare-fun tp!1335078 () Bool)

(declare-fun tp_is_empty!26899 () Bool)

(assert (=> b!4456623 (= e!2775127 (and tp_is_empty!26897 tp_is_empty!26899 tp!1335078))))

(declare-fun b!4456624 () Bool)

(assert (=> b!4456624 (= e!2775126 (eq!478 (addToMapMapFromBucket!513 (t!357097 l!12858) (+!1294 lt!1647963 (h!55768 l!12858))) (+!1294 lt!1647966 (h!55768 l!12858))))))

(declare-fun b!4456625 () Bool)

(declare-fun res!1847540 () Bool)

(assert (=> b!4456625 (=> (not res!1847540) (not e!2775124))))

(declare-fun allKeysSameHashInMap!1038 (ListLongMap!2501 Hashable!5326) Bool)

(assert (=> b!4456625 (= res!1847540 (allKeysSameHashInMap!1038 lm!1853 hashF!1313))))

(assert (= (and start!436782 res!1847539) b!4456625))

(assert (= (and b!4456625 res!1847540) b!4456618))

(assert (= (and b!4456618 res!1847541) b!4456622))

(assert (= (and b!4456622 res!1847537) b!4456621))

(assert (= (and b!4456621 res!1847538) b!4456620))

(assert (= (and b!4456620 res!1847536) b!4456624))

(assert (= start!436782 b!4456619))

(assert (= (and start!436782 (is-Cons!50023 l!12858)) b!4456623))

(declare-fun m!5158549 () Bool)

(assert (=> b!4456622 m!5158549))

(declare-fun m!5158551 () Bool)

(assert (=> b!4456622 m!5158551))

(declare-fun m!5158553 () Bool)

(assert (=> b!4456625 m!5158553))

(declare-fun m!5158555 () Bool)

(assert (=> b!4456624 m!5158555))

(assert (=> b!4456624 m!5158555))

(declare-fun m!5158557 () Bool)

(assert (=> b!4456624 m!5158557))

(declare-fun m!5158559 () Bool)

(assert (=> b!4456624 m!5158559))

(assert (=> b!4456624 m!5158557))

(assert (=> b!4456624 m!5158559))

(declare-fun m!5158561 () Bool)

(assert (=> b!4456624 m!5158561))

(declare-fun m!5158563 () Bool)

(assert (=> start!436782 m!5158563))

(declare-fun m!5158565 () Bool)

(assert (=> start!436782 m!5158565))

(declare-fun m!5158567 () Bool)

(assert (=> b!4456620 m!5158567))

(assert (=> b!4456620 m!5158555))

(assert (=> b!4456620 m!5158559))

(declare-fun m!5158569 () Bool)

(assert (=> b!4456620 m!5158569))

(declare-fun m!5158571 () Bool)

(assert (=> b!4456620 m!5158571))

(assert (=> b!4456620 m!5158557))

(assert (=> b!4456620 m!5158559))

(assert (=> b!4456620 m!5158561))

(declare-fun m!5158573 () Bool)

(assert (=> b!4456620 m!5158573))

(declare-fun m!5158575 () Bool)

(assert (=> b!4456620 m!5158575))

(assert (=> b!4456620 m!5158555))

(assert (=> b!4456620 m!5158557))

(declare-fun m!5158577 () Bool)

(assert (=> b!4456618 m!5158577))

(push 1)

(assert tp_is_empty!26897)

(assert (not b!4456624))

(assert (not b!4456618))

(assert (not b!4456620))

(assert (not b!4456625))

(assert (not b!4456619))

(assert (not b!4456623))

(assert tp_is_empty!26899)

(assert (not b!4456622))

(assert (not start!436782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4456664 () Bool)

(assert (=> b!4456664 true))

(declare-fun bs!790940 () Bool)

(declare-fun b!4456663 () Bool)

(assert (= bs!790940 (and b!4456663 b!4456664)))

(declare-fun lambda!160527 () Int)

(declare-fun lambda!160526 () Int)

(assert (=> bs!790940 (= lambda!160527 lambda!160526)))

(assert (=> b!4456663 true))

(declare-fun lt!1648027 () ListMap!3083)

(declare-fun lambda!160528 () Int)

(assert (=> bs!790940 (= (= lt!1648027 lt!1647963) (= lambda!160528 lambda!160526))))

(assert (=> b!4456663 (= (= lt!1648027 lt!1647963) (= lambda!160528 lambda!160527))))

(assert (=> b!4456663 true))

(declare-fun bs!790941 () Bool)

(declare-fun d!1359427 () Bool)

(assert (= bs!790941 (and d!1359427 b!4456664)))

(declare-fun lt!1648039 () ListMap!3083)

(declare-fun lambda!160529 () Int)

(assert (=> bs!790941 (= (= lt!1648039 lt!1647963) (= lambda!160529 lambda!160526))))

(declare-fun bs!790942 () Bool)

(assert (= bs!790942 (and d!1359427 b!4456663)))

(assert (=> bs!790942 (= (= lt!1648039 lt!1647963) (= lambda!160529 lambda!160527))))

(assert (=> bs!790942 (= (= lt!1648039 lt!1648027) (= lambda!160529 lambda!160528))))

(assert (=> d!1359427 true))

(declare-fun b!4456660 () Bool)

(declare-fun res!1847566 () Bool)

(declare-fun e!2775151 () Bool)

(assert (=> b!4456660 (=> (not res!1847566) (not e!2775151))))

(declare-fun forall!9846 (List!50147 Int) Bool)

(assert (=> b!4456660 (= res!1847566 (forall!9846 (toList!3845 lt!1647963) lambda!160529))))

(declare-fun b!4456661 () Bool)

(declare-fun invariantList!880 (List!50147) Bool)

(assert (=> b!4456661 (= e!2775151 (invariantList!880 (toList!3845 lt!1648039)))))

(declare-fun b!4456662 () Bool)

(declare-fun e!2775150 () Bool)

(assert (=> b!4456662 (= e!2775150 (forall!9846 (toList!3845 lt!1647963) lambda!160528))))

(declare-fun call!310175 () Bool)

(declare-fun c!758617 () Bool)

(declare-fun bm!310170 () Bool)

(assert (=> bm!310170 (= call!310175 (forall!9846 (ite c!758617 (toList!3845 lt!1647963) (t!357097 l!12858)) (ite c!758617 lambda!160526 lambda!160528)))))

(declare-fun bm!310171 () Bool)

(declare-fun call!310176 () Unit!86150)

(declare-fun lemmaContainsAllItsOwnKeys!231 (ListMap!3083) Unit!86150)

(assert (=> bm!310171 (= call!310176 (lemmaContainsAllItsOwnKeys!231 lt!1647963))))

(declare-fun e!2775152 () ListMap!3083)

(assert (=> b!4456663 (= e!2775152 lt!1648027)))

(declare-fun lt!1648026 () ListMap!3083)

(assert (=> b!4456663 (= lt!1648026 (+!1294 lt!1647963 (h!55768 (t!357097 l!12858))))))

(assert (=> b!4456663 (= lt!1648027 (addToMapMapFromBucket!513 (t!357097 (t!357097 l!12858)) (+!1294 lt!1647963 (h!55768 (t!357097 l!12858)))))))

(declare-fun lt!1648041 () Unit!86150)

(assert (=> b!4456663 (= lt!1648041 call!310176)))

(assert (=> b!4456663 (forall!9846 (toList!3845 lt!1647963) lambda!160527)))

(declare-fun lt!1648023 () Unit!86150)

(assert (=> b!4456663 (= lt!1648023 lt!1648041)))

(assert (=> b!4456663 (forall!9846 (toList!3845 lt!1648026) lambda!160528)))

(declare-fun lt!1648021 () Unit!86150)

(declare-fun Unit!86154 () Unit!86150)

(assert (=> b!4456663 (= lt!1648021 Unit!86154)))

(assert (=> b!4456663 (forall!9846 (t!357097 (t!357097 l!12858)) lambda!160528)))

(declare-fun lt!1648029 () Unit!86150)

(declare-fun Unit!86155 () Unit!86150)

(assert (=> b!4456663 (= lt!1648029 Unit!86155)))

(declare-fun lt!1648034 () Unit!86150)

(declare-fun Unit!86156 () Unit!86150)

(assert (=> b!4456663 (= lt!1648034 Unit!86156)))

(declare-fun lt!1648031 () Unit!86150)

(declare-fun forallContained!2181 (List!50147 Int tuple2!50106) Unit!86150)

(assert (=> b!4456663 (= lt!1648031 (forallContained!2181 (toList!3845 lt!1648026) lambda!160528 (h!55768 (t!357097 l!12858))))))

(assert (=> b!4456663 (contains!12561 lt!1648026 (_1!28347 (h!55768 (t!357097 l!12858))))))

(declare-fun lt!1648022 () Unit!86150)

(declare-fun Unit!86157 () Unit!86150)

(assert (=> b!4456663 (= lt!1648022 Unit!86157)))

(assert (=> b!4456663 (contains!12561 lt!1648027 (_1!28347 (h!55768 (t!357097 l!12858))))))

(declare-fun lt!1648032 () Unit!86150)

(declare-fun Unit!86158 () Unit!86150)

(assert (=> b!4456663 (= lt!1648032 Unit!86158)))

(assert (=> b!4456663 (forall!9846 (t!357097 l!12858) lambda!160528)))

(declare-fun lt!1648033 () Unit!86150)

(declare-fun Unit!86159 () Unit!86150)

(assert (=> b!4456663 (= lt!1648033 Unit!86159)))

(declare-fun call!310177 () Bool)

(assert (=> b!4456663 call!310177))

(declare-fun lt!1648037 () Unit!86150)

(declare-fun Unit!86160 () Unit!86150)

(assert (=> b!4456663 (= lt!1648037 Unit!86160)))

(declare-fun lt!1648025 () Unit!86150)

(declare-fun Unit!86161 () Unit!86150)

(assert (=> b!4456663 (= lt!1648025 Unit!86161)))

(declare-fun lt!1648024 () Unit!86150)

(declare-fun addForallContainsKeyThenBeforeAdding!230 (ListMap!3083 ListMap!3083 K!11403 V!11649) Unit!86150)

(assert (=> b!4456663 (= lt!1648024 (addForallContainsKeyThenBeforeAdding!230 lt!1647963 lt!1648027 (_1!28347 (h!55768 (t!357097 l!12858))) (_2!28347 (h!55768 (t!357097 l!12858)))))))

(assert (=> b!4456663 (forall!9846 (toList!3845 lt!1647963) lambda!160528)))

(declare-fun lt!1648038 () Unit!86150)

(assert (=> b!4456663 (= lt!1648038 lt!1648024)))

(assert (=> b!4456663 (forall!9846 (toList!3845 lt!1647963) lambda!160528)))

(declare-fun lt!1648030 () Unit!86150)

(declare-fun Unit!86162 () Unit!86150)

(assert (=> b!4456663 (= lt!1648030 Unit!86162)))

(declare-fun res!1847567 () Bool)

(assert (=> b!4456663 (= res!1847567 call!310175)))

(assert (=> b!4456663 (=> (not res!1847567) (not e!2775150))))

(assert (=> b!4456663 e!2775150))

(declare-fun lt!1648035 () Unit!86150)

(declare-fun Unit!86163 () Unit!86150)

(assert (=> b!4456663 (= lt!1648035 Unit!86163)))

(assert (=> b!4456664 (= e!2775152 lt!1647963)))

(declare-fun lt!1648036 () Unit!86150)

(assert (=> b!4456664 (= lt!1648036 call!310176)))

(assert (=> b!4456664 call!310177))

(declare-fun lt!1648028 () Unit!86150)

(assert (=> b!4456664 (= lt!1648028 lt!1648036)))

(assert (=> b!4456664 call!310175))

(declare-fun lt!1648040 () Unit!86150)

(declare-fun Unit!86164 () Unit!86150)

(assert (=> b!4456664 (= lt!1648040 Unit!86164)))

(assert (=> d!1359427 e!2775151))

(declare-fun res!1847568 () Bool)

(assert (=> d!1359427 (=> (not res!1847568) (not e!2775151))))

(assert (=> d!1359427 (= res!1847568 (forall!9846 (t!357097 l!12858) lambda!160529))))

(assert (=> d!1359427 (= lt!1648039 e!2775152)))

(assert (=> d!1359427 (= c!758617 (is-Nil!50023 (t!357097 l!12858)))))

(assert (=> d!1359427 (noDuplicateKeys!919 (t!357097 l!12858))))

(assert (=> d!1359427 (= (addToMapMapFromBucket!513 (t!357097 l!12858) lt!1647963) lt!1648039)))

(declare-fun bm!310172 () Bool)

(assert (=> bm!310172 (= call!310177 (forall!9846 (ite c!758617 (toList!3845 lt!1647963) (toList!3845 lt!1648026)) (ite c!758617 lambda!160526 lambda!160528)))))

(assert (= (and d!1359427 c!758617) b!4456664))

(assert (= (and d!1359427 (not c!758617)) b!4456663))

(assert (= (and b!4456663 res!1847567) b!4456662))

(assert (= (or b!4456664 b!4456663) bm!310171))

(assert (= (or b!4456664 b!4456663) bm!310170))

(assert (= (or b!4456664 b!4456663) bm!310172))

(assert (= (and d!1359427 res!1847568) b!4456660))

(assert (= (and b!4456660 res!1847566) b!4456661))

(declare-fun m!5158613 () Bool)

(assert (=> b!4456662 m!5158613))

(declare-fun m!5158615 () Bool)

(assert (=> bm!310170 m!5158615))

(declare-fun m!5158617 () Bool)

(assert (=> b!4456663 m!5158617))

(declare-fun m!5158619 () Bool)

(assert (=> b!4456663 m!5158619))

(declare-fun m!5158621 () Bool)

(assert (=> b!4456663 m!5158621))

(declare-fun m!5158623 () Bool)

(assert (=> b!4456663 m!5158623))

(assert (=> b!4456663 m!5158613))

(declare-fun m!5158625 () Bool)

(assert (=> b!4456663 m!5158625))

(assert (=> b!4456663 m!5158613))

(declare-fun m!5158627 () Bool)

(assert (=> b!4456663 m!5158627))

(declare-fun m!5158629 () Bool)

(assert (=> b!4456663 m!5158629))

(declare-fun m!5158631 () Bool)

(assert (=> b!4456663 m!5158631))

(assert (=> b!4456663 m!5158625))

(declare-fun m!5158633 () Bool)

(assert (=> b!4456663 m!5158633))

(declare-fun m!5158635 () Bool)

(assert (=> b!4456663 m!5158635))

(declare-fun m!5158637 () Bool)

(assert (=> bm!310171 m!5158637))

(declare-fun m!5158639 () Bool)

(assert (=> bm!310172 m!5158639))

(declare-fun m!5158641 () Bool)

(assert (=> b!4456661 m!5158641))

(declare-fun m!5158643 () Bool)

(assert (=> d!1359427 m!5158643))

(assert (=> d!1359427 m!5158569))

(declare-fun m!5158645 () Bool)

(assert (=> b!4456660 m!5158645))

(assert (=> b!4456620 d!1359427))

(declare-fun d!1359431 () Bool)

(declare-fun res!1847573 () Bool)

(declare-fun e!2775157 () Bool)

(assert (=> d!1359431 (=> res!1847573 e!2775157)))

(assert (=> d!1359431 (= res!1847573 (not (is-Cons!50023 (t!357097 l!12858))))))

(assert (=> d!1359431 (= (noDuplicateKeys!919 (t!357097 l!12858)) e!2775157)))

(declare-fun b!4456671 () Bool)

(declare-fun e!2775158 () Bool)

(assert (=> b!4456671 (= e!2775157 e!2775158)))

(declare-fun res!1847574 () Bool)

(assert (=> b!4456671 (=> (not res!1847574) (not e!2775158))))

(declare-fun containsKey!1331 (List!50147 K!11403) Bool)

(assert (=> b!4456671 (= res!1847574 (not (containsKey!1331 (t!357097 (t!357097 l!12858)) (_1!28347 (h!55768 (t!357097 l!12858))))))))

(declare-fun b!4456672 () Bool)

(assert (=> b!4456672 (= e!2775158 (noDuplicateKeys!919 (t!357097 (t!357097 l!12858))))))

(assert (= (and d!1359431 (not res!1847573)) b!4456671))

(assert (= (and b!4456671 res!1847574) b!4456672))

(declare-fun m!5158647 () Bool)

(assert (=> b!4456671 m!5158647))

(declare-fun m!5158649 () Bool)

(assert (=> b!4456672 m!5158649))

(assert (=> b!4456620 d!1359431))

(declare-fun bs!790943 () Bool)

(declare-fun d!1359433 () Bool)

(assert (= bs!790943 (and d!1359433 start!436782)))

(declare-fun lambda!160532 () Int)

(assert (=> bs!790943 (= lambda!160532 lambda!160494)))

(assert (=> d!1359433 (contains!12561 (addToMapMapFromBucket!513 (t!357097 l!12858) (extractMap!987 (toList!3846 lm!1853))) key!4412)))

(declare-fun lt!1648044 () Unit!86150)

(declare-fun choose!28383 (ListLongMap!2501 K!11403 List!50147 Hashable!5326) Unit!86150)

(assert (=> d!1359433 (= lt!1648044 (choose!28383 lm!1853 key!4412 (t!357097 l!12858) hashF!1313))))

(assert (=> d!1359433 (forall!9844 (toList!3846 lm!1853) lambda!160532)))

(assert (=> d!1359433 (= (lemmaAddToMapMaintainsContains!21 lm!1853 key!4412 (t!357097 l!12858) hashF!1313) lt!1648044)))

(declare-fun bs!790944 () Bool)

(assert (= bs!790944 d!1359433))

(assert (=> bs!790944 m!5158551))

(declare-fun m!5158651 () Bool)

(assert (=> bs!790944 m!5158651))

(declare-fun m!5158653 () Bool)

(assert (=> bs!790944 m!5158653))

(assert (=> bs!790944 m!5158551))

(declare-fun m!5158655 () Bool)

(assert (=> bs!790944 m!5158655))

(assert (=> bs!790944 m!5158655))

(declare-fun m!5158657 () Bool)

(assert (=> bs!790944 m!5158657))

(assert (=> b!4456620 d!1359433))

(declare-fun d!1359435 () Bool)

(declare-fun e!2775161 () Bool)

(assert (=> d!1359435 e!2775161))

(declare-fun res!1847580 () Bool)

(assert (=> d!1359435 (=> (not res!1847580) (not e!2775161))))

(declare-fun lt!1648054 () ListMap!3083)

(assert (=> d!1359435 (= res!1847580 (contains!12561 lt!1648054 (_1!28347 (h!55768 l!12858))))))

(declare-fun lt!1648055 () List!50147)

(assert (=> d!1359435 (= lt!1648054 (ListMap!3084 lt!1648055))))

(declare-fun lt!1648056 () Unit!86150)

(declare-fun lt!1648053 () Unit!86150)

(assert (=> d!1359435 (= lt!1648056 lt!1648053)))

(declare-datatypes ((Option!10858 0))(
  ( (None!10857) (Some!10857 (v!44115 V!11649)) )
))
(declare-fun getValueByKey!844 (List!50147 K!11403) Option!10858)

(assert (=> d!1359435 (= (getValueByKey!844 lt!1648055 (_1!28347 (h!55768 l!12858))) (Some!10857 (_2!28347 (h!55768 l!12858))))))

(declare-fun lemmaContainsTupThenGetReturnValue!549 (List!50147 K!11403 V!11649) Unit!86150)

(assert (=> d!1359435 (= lt!1648053 (lemmaContainsTupThenGetReturnValue!549 lt!1648055 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858))))))

(declare-fun insertNoDuplicatedKeys!243 (List!50147 K!11403 V!11649) List!50147)

(assert (=> d!1359435 (= lt!1648055 (insertNoDuplicatedKeys!243 (toList!3845 lt!1647963) (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858))))))

(assert (=> d!1359435 (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1648054)))

(declare-fun b!4456677 () Bool)

(declare-fun res!1847579 () Bool)

(assert (=> b!4456677 (=> (not res!1847579) (not e!2775161))))

(assert (=> b!4456677 (= res!1847579 (= (getValueByKey!844 (toList!3845 lt!1648054) (_1!28347 (h!55768 l!12858))) (Some!10857 (_2!28347 (h!55768 l!12858)))))))

(declare-fun b!4456678 () Bool)

(declare-fun contains!12563 (List!50147 tuple2!50106) Bool)

(assert (=> b!4456678 (= e!2775161 (contains!12563 (toList!3845 lt!1648054) (h!55768 l!12858)))))

(assert (= (and d!1359435 res!1847580) b!4456677))

(assert (= (and b!4456677 res!1847579) b!4456678))

(declare-fun m!5158659 () Bool)

(assert (=> d!1359435 m!5158659))

(declare-fun m!5158661 () Bool)

(assert (=> d!1359435 m!5158661))

(declare-fun m!5158663 () Bool)

(assert (=> d!1359435 m!5158663))

(declare-fun m!5158665 () Bool)

(assert (=> d!1359435 m!5158665))

(declare-fun m!5158667 () Bool)

(assert (=> b!4456677 m!5158667))

(declare-fun m!5158669 () Bool)

(assert (=> b!4456678 m!5158669))

(assert (=> b!4456620 d!1359435))

(declare-fun d!1359437 () Bool)

(assert (=> d!1359437 (eq!478 (addToMapMapFromBucket!513 (t!357097 l!12858) (+!1294 lt!1647963 (tuple2!50107 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858))))) (+!1294 (addToMapMapFromBucket!513 (t!357097 l!12858) lt!1647963) (tuple2!50107 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858)))))))

(declare-fun lt!1648059 () Unit!86150)

(declare-fun choose!28384 (ListMap!3083 K!11403 V!11649 List!50147) Unit!86150)

(assert (=> d!1359437 (= lt!1648059 (choose!28384 lt!1647963 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858)) (t!357097 l!12858)))))

(assert (=> d!1359437 (not (containsKey!1331 (t!357097 l!12858) (_1!28347 (h!55768 l!12858))))))

(assert (=> d!1359437 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!225 lt!1647963 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858)) (t!357097 l!12858)) lt!1648059)))

(declare-fun bs!790945 () Bool)

(assert (= bs!790945 d!1359437))

(declare-fun m!5158671 () Bool)

(assert (=> bs!790945 m!5158671))

(assert (=> bs!790945 m!5158671))

(declare-fun m!5158673 () Bool)

(assert (=> bs!790945 m!5158673))

(assert (=> bs!790945 m!5158575))

(declare-fun m!5158675 () Bool)

(assert (=> bs!790945 m!5158675))

(declare-fun m!5158677 () Bool)

(assert (=> bs!790945 m!5158677))

(declare-fun m!5158679 () Bool)

(assert (=> bs!790945 m!5158679))

(assert (=> bs!790945 m!5158673))

(assert (=> bs!790945 m!5158675))

(declare-fun m!5158681 () Bool)

(assert (=> bs!790945 m!5158681))

(assert (=> bs!790945 m!5158575))

(assert (=> b!4456620 d!1359437))

(declare-fun bs!790946 () Bool)

(declare-fun b!4456683 () Bool)

(assert (= bs!790946 (and b!4456683 b!4456664)))

(declare-fun lambda!160533 () Int)

(assert (=> bs!790946 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1647963) (= lambda!160533 lambda!160526))))

(declare-fun bs!790947 () Bool)

(assert (= bs!790947 (and b!4456683 b!4456663)))

(assert (=> bs!790947 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1647963) (= lambda!160533 lambda!160527))))

(assert (=> bs!790947 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1648027) (= lambda!160533 lambda!160528))))

(declare-fun bs!790948 () Bool)

(assert (= bs!790948 (and b!4456683 d!1359427)))

(assert (=> bs!790948 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1648039) (= lambda!160533 lambda!160529))))

(assert (=> b!4456683 true))

(declare-fun bs!790949 () Bool)

(declare-fun b!4456682 () Bool)

(assert (= bs!790949 (and b!4456682 d!1359427)))

(declare-fun lambda!160534 () Int)

(assert (=> bs!790949 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1648039) (= lambda!160534 lambda!160529))))

(declare-fun bs!790950 () Bool)

(assert (= bs!790950 (and b!4456682 b!4456663)))

(assert (=> bs!790950 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1647963) (= lambda!160534 lambda!160527))))

(declare-fun bs!790951 () Bool)

(assert (= bs!790951 (and b!4456682 b!4456664)))

(assert (=> bs!790951 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1647963) (= lambda!160534 lambda!160526))))

(declare-fun bs!790952 () Bool)

(assert (= bs!790952 (and b!4456682 b!4456683)))

(assert (=> bs!790952 (= lambda!160534 lambda!160533)))

(assert (=> bs!790950 (= (= (+!1294 lt!1647963 (h!55768 l!12858)) lt!1648027) (= lambda!160534 lambda!160528))))

(assert (=> b!4456682 true))

(declare-fun lt!1648066 () ListMap!3083)

(declare-fun lambda!160535 () Int)

(assert (=> b!4456682 (= (= lt!1648066 (+!1294 lt!1647963 (h!55768 l!12858))) (= lambda!160535 lambda!160534))))

(assert (=> bs!790949 (= (= lt!1648066 lt!1648039) (= lambda!160535 lambda!160529))))

(assert (=> bs!790950 (= (= lt!1648066 lt!1647963) (= lambda!160535 lambda!160527))))

(assert (=> bs!790951 (= (= lt!1648066 lt!1647963) (= lambda!160535 lambda!160526))))

(assert (=> bs!790952 (= (= lt!1648066 (+!1294 lt!1647963 (h!55768 l!12858))) (= lambda!160535 lambda!160533))))

(assert (=> bs!790950 (= (= lt!1648066 lt!1648027) (= lambda!160535 lambda!160528))))

(assert (=> b!4456682 true))

(declare-fun bs!790953 () Bool)

(declare-fun d!1359439 () Bool)

(assert (= bs!790953 (and d!1359439 b!4456682)))

(declare-fun lt!1648078 () ListMap!3083)

(declare-fun lambda!160536 () Int)

(assert (=> bs!790953 (= (= lt!1648078 (+!1294 lt!1647963 (h!55768 l!12858))) (= lambda!160536 lambda!160534))))

(declare-fun bs!790954 () Bool)

(assert (= bs!790954 (and d!1359439 d!1359427)))

(assert (=> bs!790954 (= (= lt!1648078 lt!1648039) (= lambda!160536 lambda!160529))))

(declare-fun bs!790955 () Bool)

(assert (= bs!790955 (and d!1359439 b!4456663)))

(assert (=> bs!790955 (= (= lt!1648078 lt!1647963) (= lambda!160536 lambda!160527))))

(assert (=> bs!790953 (= (= lt!1648078 lt!1648066) (= lambda!160536 lambda!160535))))

(declare-fun bs!790956 () Bool)

(assert (= bs!790956 (and d!1359439 b!4456664)))

(assert (=> bs!790956 (= (= lt!1648078 lt!1647963) (= lambda!160536 lambda!160526))))

(declare-fun bs!790957 () Bool)

(assert (= bs!790957 (and d!1359439 b!4456683)))

(assert (=> bs!790957 (= (= lt!1648078 (+!1294 lt!1647963 (h!55768 l!12858))) (= lambda!160536 lambda!160533))))

(assert (=> bs!790955 (= (= lt!1648078 lt!1648027) (= lambda!160536 lambda!160528))))

(assert (=> d!1359439 true))

(declare-fun b!4456679 () Bool)

(declare-fun res!1847581 () Bool)

(declare-fun e!2775163 () Bool)

(assert (=> b!4456679 (=> (not res!1847581) (not e!2775163))))

(assert (=> b!4456679 (= res!1847581 (forall!9846 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) lambda!160536))))

(declare-fun b!4456680 () Bool)

(assert (=> b!4456680 (= e!2775163 (invariantList!880 (toList!3845 lt!1648078)))))

(declare-fun b!4456681 () Bool)

(declare-fun e!2775162 () Bool)

(assert (=> b!4456681 (= e!2775162 (forall!9846 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) lambda!160535))))

(declare-fun bm!310173 () Bool)

(declare-fun call!310178 () Bool)

(declare-fun c!758618 () Bool)

(assert (=> bm!310173 (= call!310178 (forall!9846 (ite c!758618 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) (t!357097 l!12858)) (ite c!758618 lambda!160533 lambda!160535)))))

(declare-fun bm!310174 () Bool)

(declare-fun call!310179 () Unit!86150)

(assert (=> bm!310174 (= call!310179 (lemmaContainsAllItsOwnKeys!231 (+!1294 lt!1647963 (h!55768 l!12858))))))

(declare-fun e!2775164 () ListMap!3083)

(assert (=> b!4456682 (= e!2775164 lt!1648066)))

(declare-fun lt!1648065 () ListMap!3083)

(assert (=> b!4456682 (= lt!1648065 (+!1294 (+!1294 lt!1647963 (h!55768 l!12858)) (h!55768 (t!357097 l!12858))))))

(assert (=> b!4456682 (= lt!1648066 (addToMapMapFromBucket!513 (t!357097 (t!357097 l!12858)) (+!1294 (+!1294 lt!1647963 (h!55768 l!12858)) (h!55768 (t!357097 l!12858)))))))

(declare-fun lt!1648080 () Unit!86150)

(assert (=> b!4456682 (= lt!1648080 call!310179)))

(assert (=> b!4456682 (forall!9846 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) lambda!160534)))

(declare-fun lt!1648062 () Unit!86150)

(assert (=> b!4456682 (= lt!1648062 lt!1648080)))

(assert (=> b!4456682 (forall!9846 (toList!3845 lt!1648065) lambda!160535)))

(declare-fun lt!1648060 () Unit!86150)

(declare-fun Unit!86165 () Unit!86150)

(assert (=> b!4456682 (= lt!1648060 Unit!86165)))

(assert (=> b!4456682 (forall!9846 (t!357097 (t!357097 l!12858)) lambda!160535)))

(declare-fun lt!1648068 () Unit!86150)

(declare-fun Unit!86166 () Unit!86150)

(assert (=> b!4456682 (= lt!1648068 Unit!86166)))

(declare-fun lt!1648073 () Unit!86150)

(declare-fun Unit!86167 () Unit!86150)

(assert (=> b!4456682 (= lt!1648073 Unit!86167)))

(declare-fun lt!1648070 () Unit!86150)

(assert (=> b!4456682 (= lt!1648070 (forallContained!2181 (toList!3845 lt!1648065) lambda!160535 (h!55768 (t!357097 l!12858))))))

(assert (=> b!4456682 (contains!12561 lt!1648065 (_1!28347 (h!55768 (t!357097 l!12858))))))

(declare-fun lt!1648061 () Unit!86150)

(declare-fun Unit!86168 () Unit!86150)

(assert (=> b!4456682 (= lt!1648061 Unit!86168)))

(assert (=> b!4456682 (contains!12561 lt!1648066 (_1!28347 (h!55768 (t!357097 l!12858))))))

(declare-fun lt!1648071 () Unit!86150)

(declare-fun Unit!86169 () Unit!86150)

(assert (=> b!4456682 (= lt!1648071 Unit!86169)))

(assert (=> b!4456682 (forall!9846 (t!357097 l!12858) lambda!160535)))

(declare-fun lt!1648072 () Unit!86150)

(declare-fun Unit!86170 () Unit!86150)

(assert (=> b!4456682 (= lt!1648072 Unit!86170)))

(declare-fun call!310180 () Bool)

(assert (=> b!4456682 call!310180))

(declare-fun lt!1648076 () Unit!86150)

(declare-fun Unit!86171 () Unit!86150)

(assert (=> b!4456682 (= lt!1648076 Unit!86171)))

(declare-fun lt!1648064 () Unit!86150)

(declare-fun Unit!86172 () Unit!86150)

(assert (=> b!4456682 (= lt!1648064 Unit!86172)))

(declare-fun lt!1648063 () Unit!86150)

(assert (=> b!4456682 (= lt!1648063 (addForallContainsKeyThenBeforeAdding!230 (+!1294 lt!1647963 (h!55768 l!12858)) lt!1648066 (_1!28347 (h!55768 (t!357097 l!12858))) (_2!28347 (h!55768 (t!357097 l!12858)))))))

(assert (=> b!4456682 (forall!9846 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) lambda!160535)))

(declare-fun lt!1648077 () Unit!86150)

(assert (=> b!4456682 (= lt!1648077 lt!1648063)))

(assert (=> b!4456682 (forall!9846 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) lambda!160535)))

(declare-fun lt!1648069 () Unit!86150)

(declare-fun Unit!86173 () Unit!86150)

(assert (=> b!4456682 (= lt!1648069 Unit!86173)))

(declare-fun res!1847582 () Bool)

(assert (=> b!4456682 (= res!1847582 call!310178)))

(assert (=> b!4456682 (=> (not res!1847582) (not e!2775162))))

(assert (=> b!4456682 e!2775162))

(declare-fun lt!1648074 () Unit!86150)

(declare-fun Unit!86174 () Unit!86150)

(assert (=> b!4456682 (= lt!1648074 Unit!86174)))

(assert (=> b!4456683 (= e!2775164 (+!1294 lt!1647963 (h!55768 l!12858)))))

(declare-fun lt!1648075 () Unit!86150)

(assert (=> b!4456683 (= lt!1648075 call!310179)))

(assert (=> b!4456683 call!310180))

(declare-fun lt!1648067 () Unit!86150)

(assert (=> b!4456683 (= lt!1648067 lt!1648075)))

(assert (=> b!4456683 call!310178))

(declare-fun lt!1648079 () Unit!86150)

(declare-fun Unit!86175 () Unit!86150)

(assert (=> b!4456683 (= lt!1648079 Unit!86175)))

(assert (=> d!1359439 e!2775163))

(declare-fun res!1847583 () Bool)

(assert (=> d!1359439 (=> (not res!1847583) (not e!2775163))))

(assert (=> d!1359439 (= res!1847583 (forall!9846 (t!357097 l!12858) lambda!160536))))

(assert (=> d!1359439 (= lt!1648078 e!2775164)))

(assert (=> d!1359439 (= c!758618 (is-Nil!50023 (t!357097 l!12858)))))

(assert (=> d!1359439 (noDuplicateKeys!919 (t!357097 l!12858))))

(assert (=> d!1359439 (= (addToMapMapFromBucket!513 (t!357097 l!12858) (+!1294 lt!1647963 (h!55768 l!12858))) lt!1648078)))

(declare-fun bm!310175 () Bool)

(assert (=> bm!310175 (= call!310180 (forall!9846 (ite c!758618 (toList!3845 (+!1294 lt!1647963 (h!55768 l!12858))) (toList!3845 lt!1648065)) (ite c!758618 lambda!160533 lambda!160535)))))

(assert (= (and d!1359439 c!758618) b!4456683))

(assert (= (and d!1359439 (not c!758618)) b!4456682))

(assert (= (and b!4456682 res!1847582) b!4456681))

(assert (= (or b!4456683 b!4456682) bm!310174))

(assert (= (or b!4456683 b!4456682) bm!310173))

(assert (= (or b!4456683 b!4456682) bm!310175))

(assert (= (and d!1359439 res!1847583) b!4456679))

(assert (= (and b!4456679 res!1847581) b!4456680))

(declare-fun m!5158683 () Bool)

(assert (=> b!4456681 m!5158683))

(declare-fun m!5158685 () Bool)

(assert (=> bm!310173 m!5158685))

(assert (=> b!4456682 m!5158555))

(declare-fun m!5158687 () Bool)

(assert (=> b!4456682 m!5158687))

(declare-fun m!5158689 () Bool)

(assert (=> b!4456682 m!5158689))

(declare-fun m!5158691 () Bool)

(assert (=> b!4456682 m!5158691))

(declare-fun m!5158693 () Bool)

(assert (=> b!4456682 m!5158693))

(assert (=> b!4456682 m!5158683))

(assert (=> b!4456682 m!5158555))

(declare-fun m!5158695 () Bool)

(assert (=> b!4456682 m!5158695))

(assert (=> b!4456682 m!5158683))

(declare-fun m!5158697 () Bool)

(assert (=> b!4456682 m!5158697))

(declare-fun m!5158699 () Bool)

(assert (=> b!4456682 m!5158699))

(declare-fun m!5158701 () Bool)

(assert (=> b!4456682 m!5158701))

(assert (=> b!4456682 m!5158695))

(declare-fun m!5158703 () Bool)

(assert (=> b!4456682 m!5158703))

(declare-fun m!5158705 () Bool)

(assert (=> b!4456682 m!5158705))

(assert (=> bm!310174 m!5158555))

(declare-fun m!5158707 () Bool)

(assert (=> bm!310174 m!5158707))

(declare-fun m!5158709 () Bool)

(assert (=> bm!310175 m!5158709))

(declare-fun m!5158711 () Bool)

(assert (=> b!4456680 m!5158711))

(declare-fun m!5158713 () Bool)

(assert (=> d!1359439 m!5158713))

(assert (=> d!1359439 m!5158569))

(declare-fun m!5158715 () Bool)

(assert (=> b!4456679 m!5158715))

(assert (=> b!4456620 d!1359439))

(declare-fun d!1359441 () Bool)

(declare-fun e!2775178 () Bool)

(assert (=> d!1359441 e!2775178))

(declare-fun res!1847591 () Bool)

(assert (=> d!1359441 (=> res!1847591 e!2775178)))

(declare-fun e!2775179 () Bool)

(assert (=> d!1359441 (= res!1847591 e!2775179)))

(declare-fun res!1847590 () Bool)

(assert (=> d!1359441 (=> (not res!1847590) (not e!2775179))))

(declare-fun lt!1648101 () Bool)

(assert (=> d!1359441 (= res!1847590 (not lt!1648101))))

(declare-fun lt!1648102 () Bool)

(assert (=> d!1359441 (= lt!1648101 lt!1648102)))

(declare-fun lt!1648103 () Unit!86150)

(declare-fun e!2775180 () Unit!86150)

(assert (=> d!1359441 (= lt!1648103 e!2775180)))

(declare-fun c!758627 () Bool)

(assert (=> d!1359441 (= c!758627 lt!1648102)))

(declare-fun containsKey!1332 (List!50147 K!11403) Bool)

(assert (=> d!1359441 (= lt!1648102 (containsKey!1332 (toList!3845 lt!1647966) key!4412))))

(assert (=> d!1359441 (= (contains!12561 lt!1647966 key!4412) lt!1648101)))

(declare-fun b!4456702 () Bool)

(declare-fun e!2775182 () Unit!86150)

(declare-fun Unit!86176 () Unit!86150)

(assert (=> b!4456702 (= e!2775182 Unit!86176)))

(declare-fun b!4456703 () Bool)

(declare-fun e!2775181 () Bool)

(declare-datatypes ((List!50151 0))(
  ( (Nil!50027) (Cons!50027 (h!55772 K!11403) (t!357101 List!50151)) )
))
(declare-fun contains!12564 (List!50151 K!11403) Bool)

(declare-fun keys!17195 (ListMap!3083) List!50151)

(assert (=> b!4456703 (= e!2775181 (contains!12564 (keys!17195 lt!1647966) key!4412))))

(declare-fun b!4456704 () Bool)

(declare-fun e!2775177 () List!50151)

(assert (=> b!4456704 (= e!2775177 (keys!17195 lt!1647966))))

(declare-fun bm!310178 () Bool)

(declare-fun call!310183 () Bool)

(assert (=> bm!310178 (= call!310183 (contains!12564 e!2775177 key!4412))))

(declare-fun c!758625 () Bool)

(assert (=> bm!310178 (= c!758625 c!758627)))

(declare-fun b!4456705 () Bool)

(assert (=> b!4456705 (= e!2775179 (not (contains!12564 (keys!17195 lt!1647966) key!4412)))))

(declare-fun b!4456706 () Bool)

(declare-fun lt!1648099 () Unit!86150)

(assert (=> b!4456706 (= e!2775180 lt!1648099)))

(declare-fun lt!1648098 () Unit!86150)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!749 (List!50147 K!11403) Unit!86150)

(assert (=> b!4456706 (= lt!1648098 (lemmaContainsKeyImpliesGetValueByKeyDefined!749 (toList!3845 lt!1647966) key!4412))))

(declare-fun isDefined!8146 (Option!10858) Bool)

(assert (=> b!4456706 (isDefined!8146 (getValueByKey!844 (toList!3845 lt!1647966) key!4412))))

(declare-fun lt!1648100 () Unit!86150)

(assert (=> b!4456706 (= lt!1648100 lt!1648098)))

(declare-fun lemmaInListThenGetKeysListContains!322 (List!50147 K!11403) Unit!86150)

(assert (=> b!4456706 (= lt!1648099 (lemmaInListThenGetKeysListContains!322 (toList!3845 lt!1647966) key!4412))))

(assert (=> b!4456706 call!310183))

(declare-fun b!4456707 () Bool)

(declare-fun getKeysList!326 (List!50147) List!50151)

(assert (=> b!4456707 (= e!2775177 (getKeysList!326 (toList!3845 lt!1647966)))))

(declare-fun b!4456708 () Bool)

(assert (=> b!4456708 (= e!2775180 e!2775182)))

(declare-fun c!758626 () Bool)

(assert (=> b!4456708 (= c!758626 call!310183)))

(declare-fun b!4456709 () Bool)

(assert (=> b!4456709 false))

(declare-fun lt!1648097 () Unit!86150)

(declare-fun lt!1648104 () Unit!86150)

(assert (=> b!4456709 (= lt!1648097 lt!1648104)))

(assert (=> b!4456709 (containsKey!1332 (toList!3845 lt!1647966) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!324 (List!50147 K!11403) Unit!86150)

(assert (=> b!4456709 (= lt!1648104 (lemmaInGetKeysListThenContainsKey!324 (toList!3845 lt!1647966) key!4412))))

(declare-fun Unit!86177 () Unit!86150)

(assert (=> b!4456709 (= e!2775182 Unit!86177)))

(declare-fun b!4456710 () Bool)

(assert (=> b!4456710 (= e!2775178 e!2775181)))

(declare-fun res!1847592 () Bool)

(assert (=> b!4456710 (=> (not res!1847592) (not e!2775181))))

(assert (=> b!4456710 (= res!1847592 (isDefined!8146 (getValueByKey!844 (toList!3845 lt!1647966) key!4412)))))

(assert (= (and d!1359441 c!758627) b!4456706))

(assert (= (and d!1359441 (not c!758627)) b!4456708))

(assert (= (and b!4456708 c!758626) b!4456709))

(assert (= (and b!4456708 (not c!758626)) b!4456702))

(assert (= (or b!4456706 b!4456708) bm!310178))

(assert (= (and bm!310178 c!758625) b!4456707))

(assert (= (and bm!310178 (not c!758625)) b!4456704))

(assert (= (and d!1359441 res!1847590) b!4456705))

(assert (= (and d!1359441 (not res!1847591)) b!4456710))

(assert (= (and b!4456710 res!1847592) b!4456703))

(declare-fun m!5158717 () Bool)

(assert (=> d!1359441 m!5158717))

(assert (=> b!4456709 m!5158717))

(declare-fun m!5158719 () Bool)

(assert (=> b!4456709 m!5158719))

(declare-fun m!5158721 () Bool)

(assert (=> b!4456705 m!5158721))

(assert (=> b!4456705 m!5158721))

(declare-fun m!5158723 () Bool)

(assert (=> b!4456705 m!5158723))

(declare-fun m!5158725 () Bool)

(assert (=> b!4456706 m!5158725))

(declare-fun m!5158727 () Bool)

(assert (=> b!4456706 m!5158727))

(assert (=> b!4456706 m!5158727))

(declare-fun m!5158729 () Bool)

(assert (=> b!4456706 m!5158729))

(declare-fun m!5158731 () Bool)

(assert (=> b!4456706 m!5158731))

(declare-fun m!5158733 () Bool)

(assert (=> bm!310178 m!5158733))

(declare-fun m!5158735 () Bool)

(assert (=> b!4456707 m!5158735))

(assert (=> b!4456704 m!5158721))

(assert (=> b!4456710 m!5158727))

(assert (=> b!4456710 m!5158727))

(assert (=> b!4456710 m!5158729))

(assert (=> b!4456703 m!5158721))

(assert (=> b!4456703 m!5158721))

(assert (=> b!4456703 m!5158723))

(assert (=> b!4456620 d!1359441))

(declare-fun d!1359443 () Bool)

(declare-fun content!8046 (List!50147) (Set tuple2!50106))

(assert (=> d!1359443 (= (eq!478 (addToMapMapFromBucket!513 (t!357097 l!12858) (+!1294 lt!1647963 (h!55768 l!12858))) (+!1294 lt!1647966 (h!55768 l!12858))) (= (content!8046 (toList!3845 (addToMapMapFromBucket!513 (t!357097 l!12858) (+!1294 lt!1647963 (h!55768 l!12858))))) (content!8046 (toList!3845 (+!1294 lt!1647966 (h!55768 l!12858))))))))

(declare-fun bs!790958 () Bool)

(assert (= bs!790958 d!1359443))

(declare-fun m!5158737 () Bool)

(assert (=> bs!790958 m!5158737))

(declare-fun m!5158739 () Bool)

(assert (=> bs!790958 m!5158739))

(assert (=> b!4456620 d!1359443))

(declare-fun d!1359445 () Bool)

(declare-fun e!2775183 () Bool)

(assert (=> d!1359445 e!2775183))

(declare-fun res!1847594 () Bool)

(assert (=> d!1359445 (=> (not res!1847594) (not e!2775183))))

(declare-fun lt!1648106 () ListMap!3083)

(assert (=> d!1359445 (= res!1847594 (contains!12561 lt!1648106 (_1!28347 (h!55768 l!12858))))))

(declare-fun lt!1648107 () List!50147)

(assert (=> d!1359445 (= lt!1648106 (ListMap!3084 lt!1648107))))

(declare-fun lt!1648108 () Unit!86150)

(declare-fun lt!1648105 () Unit!86150)

(assert (=> d!1359445 (= lt!1648108 lt!1648105)))

(assert (=> d!1359445 (= (getValueByKey!844 lt!1648107 (_1!28347 (h!55768 l!12858))) (Some!10857 (_2!28347 (h!55768 l!12858))))))

(assert (=> d!1359445 (= lt!1648105 (lemmaContainsTupThenGetReturnValue!549 lt!1648107 (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858))))))

(assert (=> d!1359445 (= lt!1648107 (insertNoDuplicatedKeys!243 (toList!3845 lt!1647966) (_1!28347 (h!55768 l!12858)) (_2!28347 (h!55768 l!12858))))))

(assert (=> d!1359445 (= (+!1294 lt!1647966 (h!55768 l!12858)) lt!1648106)))

(declare-fun b!4456711 () Bool)

(declare-fun res!1847593 () Bool)

(assert (=> b!4456711 (=> (not res!1847593) (not e!2775183))))

(assert (=> b!4456711 (= res!1847593 (= (getValueByKey!844 (toList!3845 lt!1648106) (_1!28347 (h!55768 l!12858))) (Some!10857 (_2!28347 (h!55768 l!12858)))))))

(declare-fun b!4456712 () Bool)

(assert (=> b!4456712 (= e!2775183 (contains!12563 (toList!3845 lt!1648106) (h!55768 l!12858)))))

(assert (= (and d!1359445 res!1847594) b!4456711))

(assert (= (and b!4456711 res!1847593) b!4456712))

(declare-fun m!5158741 () Bool)

(assert (=> d!1359445 m!5158741))

(declare-fun m!5158743 () Bool)

(assert (=> d!1359445 m!5158743))

(declare-fun m!5158745 () Bool)

(assert (=> d!1359445 m!5158745))

(declare-fun m!5158747 () Bool)

(assert (=> d!1359445 m!5158747))

(declare-fun m!5158749 () Bool)

(assert (=> b!4456711 m!5158749))

(declare-fun m!5158751 () Bool)

(assert (=> b!4456712 m!5158751))

(assert (=> b!4456620 d!1359445))

(declare-fun bs!790959 () Bool)

(declare-fun d!1359447 () Bool)

(assert (= bs!790959 (and d!1359447 start!436782)))

(declare-fun lambda!160539 () Int)

(assert (=> bs!790959 (not (= lambda!160539 lambda!160494))))

(declare-fun bs!790960 () Bool)

(assert (= bs!790960 (and d!1359447 d!1359433)))

(assert (=> bs!790960 (not (= lambda!160539 lambda!160532))))

(assert (=> d!1359447 true))

(assert (=> d!1359447 (= (allKeysSameHashInMap!1038 lm!1853 hashF!1313) (forall!9844 (toList!3846 lm!1853) lambda!160539))))

(declare-fun bs!790961 () Bool)

(assert (= bs!790961 d!1359447))

(declare-fun m!5158753 () Bool)

(assert (=> bs!790961 m!5158753))

(assert (=> b!4456625 d!1359447))

(declare-fun d!1359449 () Bool)

(declare-fun res!1847595 () Bool)

(declare-fun e!2775184 () Bool)

(assert (=> d!1359449 (=> res!1847595 e!2775184)))

(assert (=> d!1359449 (= res!1847595 (not (is-Cons!50023 l!12858)))))

(assert (=> d!1359449 (= (noDuplicateKeys!919 l!12858) e!2775184)))

(declare-fun b!4456715 () Bool)

(declare-fun e!2775185 () Bool)

(assert (=> b!4456715 (= e!2775184 e!2775185)))

(declare-fun res!1847596 () Bool)

(assert (=> b!4456715 (=> (not res!1847596) (not e!2775185))))

(assert (=> b!4456715 (= res!1847596 (not (containsKey!1331 (t!357097 l!12858) (_1!28347 (h!55768 l!12858)))))))

(declare-fun b!4456716 () Bool)

(assert (=> b!4456716 (= e!2775185 (noDuplicateKeys!919 (t!357097 l!12858)))))

(assert (= (and d!1359449 (not res!1847595)) b!4456715))

(assert (= (and b!4456715 res!1847596) b!4456716))

(assert (=> b!4456715 m!5158677))

(assert (=> b!4456716 m!5158569))

(assert (=> b!4456618 d!1359449))

(declare-fun d!1359451 () Bool)

(declare-fun res!1847601 () Bool)

(declare-fun e!2775190 () Bool)

(assert (=> d!1359451 (=> res!1847601 e!2775190)))

(assert (=> d!1359451 (= res!1847601 (is-Nil!50024 (toList!3846 lm!1853)))))

(assert (=> d!1359451 (= (forall!9844 (toList!3846 lm!1853) lambda!160494) e!2775190)))

(declare-fun b!4456721 () Bool)

(declare-fun e!2775191 () Bool)

(assert (=> b!4456721 (= e!2775190 e!2775191)))

(declare-fun res!1847602 () Bool)

(assert (=> b!4456721 (=> (not res!1847602) (not e!2775191))))

(declare-fun dynLambda!20972 (Int tuple2!50108) Bool)

(assert (=> b!4456721 (= res!1847602 (dynLambda!20972 lambda!160494 (h!55769 (toList!3846 lm!1853))))))

(declare-fun b!4456722 () Bool)

(assert (=> b!4456722 (= e!2775191 (forall!9844 (t!357098 (toList!3846 lm!1853)) lambda!160494))))

(assert (= (and d!1359451 (not res!1847601)) b!4456721))

(assert (= (and b!4456721 res!1847602) b!4456722))

(declare-fun b_lambda!147677 () Bool)

(assert (=> (not b_lambda!147677) (not b!4456721)))

(declare-fun m!5158755 () Bool)

(assert (=> b!4456721 m!5158755))

(declare-fun m!5158757 () Bool)

(assert (=> b!4456722 m!5158757))

(assert (=> start!436782 d!1359451))

(declare-fun d!1359453 () Bool)

(declare-fun isStrictlySorted!309 (List!50148) Bool)

(assert (=> d!1359453 (= (inv!65590 lm!1853) (isStrictlySorted!309 (toList!3846 lm!1853)))))

(declare-fun bs!790962 () Bool)

(assert (= bs!790962 d!1359453))

(declare-fun m!5158759 () Bool)

(assert (=> bs!790962 m!5158759))

(assert (=> start!436782 d!1359453))

(assert (=> b!4456624 d!1359443))

(assert (=> b!4456624 d!1359439))

(assert (=> b!4456624 d!1359435))

(assert (=> b!4456624 d!1359445))

(declare-fun d!1359455 () Bool)

(declare-fun e!2775193 () Bool)

(assert (=> d!1359455 e!2775193))

(declare-fun res!1847604 () Bool)

(assert (=> d!1359455 (=> res!1847604 e!2775193)))

(declare-fun e!2775194 () Bool)

(assert (=> d!1359455 (= res!1847604 e!2775194)))

(declare-fun res!1847603 () Bool)

(assert (=> d!1359455 (=> (not res!1847603) (not e!2775194))))

(declare-fun lt!1648113 () Bool)

(assert (=> d!1359455 (= res!1847603 (not lt!1648113))))

(declare-fun lt!1648114 () Bool)

(assert (=> d!1359455 (= lt!1648113 lt!1648114)))

(declare-fun lt!1648115 () Unit!86150)

(declare-fun e!2775195 () Unit!86150)

(assert (=> d!1359455 (= lt!1648115 e!2775195)))

(declare-fun c!758630 () Bool)

(assert (=> d!1359455 (= c!758630 lt!1648114)))

(assert (=> d!1359455 (= lt!1648114 (containsKey!1332 (toList!3845 lt!1647963) key!4412))))

(assert (=> d!1359455 (= (contains!12561 lt!1647963 key!4412) lt!1648113)))

(declare-fun b!4456723 () Bool)

(declare-fun e!2775197 () Unit!86150)

(declare-fun Unit!86178 () Unit!86150)

(assert (=> b!4456723 (= e!2775197 Unit!86178)))

(declare-fun b!4456724 () Bool)

(declare-fun e!2775196 () Bool)

(assert (=> b!4456724 (= e!2775196 (contains!12564 (keys!17195 lt!1647963) key!4412))))

(declare-fun b!4456725 () Bool)

(declare-fun e!2775192 () List!50151)

(assert (=> b!4456725 (= e!2775192 (keys!17195 lt!1647963))))

(declare-fun bm!310179 () Bool)

(declare-fun call!310184 () Bool)

(assert (=> bm!310179 (= call!310184 (contains!12564 e!2775192 key!4412))))

(declare-fun c!758628 () Bool)

(assert (=> bm!310179 (= c!758628 c!758630)))

(declare-fun b!4456726 () Bool)

(assert (=> b!4456726 (= e!2775194 (not (contains!12564 (keys!17195 lt!1647963) key!4412)))))

(declare-fun b!4456727 () Bool)

(declare-fun lt!1648111 () Unit!86150)

(assert (=> b!4456727 (= e!2775195 lt!1648111)))

(declare-fun lt!1648110 () Unit!86150)

(assert (=> b!4456727 (= lt!1648110 (lemmaContainsKeyImpliesGetValueByKeyDefined!749 (toList!3845 lt!1647963) key!4412))))

(assert (=> b!4456727 (isDefined!8146 (getValueByKey!844 (toList!3845 lt!1647963) key!4412))))

(declare-fun lt!1648112 () Unit!86150)

(assert (=> b!4456727 (= lt!1648112 lt!1648110)))

(assert (=> b!4456727 (= lt!1648111 (lemmaInListThenGetKeysListContains!322 (toList!3845 lt!1647963) key!4412))))

(assert (=> b!4456727 call!310184))

(declare-fun b!4456728 () Bool)

(assert (=> b!4456728 (= e!2775192 (getKeysList!326 (toList!3845 lt!1647963)))))

(declare-fun b!4456729 () Bool)

(assert (=> b!4456729 (= e!2775195 e!2775197)))

(declare-fun c!758629 () Bool)

(assert (=> b!4456729 (= c!758629 call!310184)))

(declare-fun b!4456730 () Bool)

(assert (=> b!4456730 false))

(declare-fun lt!1648109 () Unit!86150)

(declare-fun lt!1648116 () Unit!86150)

(assert (=> b!4456730 (= lt!1648109 lt!1648116)))

(assert (=> b!4456730 (containsKey!1332 (toList!3845 lt!1647963) key!4412)))

(assert (=> b!4456730 (= lt!1648116 (lemmaInGetKeysListThenContainsKey!324 (toList!3845 lt!1647963) key!4412))))

(declare-fun Unit!86180 () Unit!86150)

(assert (=> b!4456730 (= e!2775197 Unit!86180)))

(declare-fun b!4456731 () Bool)

(assert (=> b!4456731 (= e!2775193 e!2775196)))

(declare-fun res!1847605 () Bool)

(assert (=> b!4456731 (=> (not res!1847605) (not e!2775196))))

(assert (=> b!4456731 (= res!1847605 (isDefined!8146 (getValueByKey!844 (toList!3845 lt!1647963) key!4412)))))

(assert (= (and d!1359455 c!758630) b!4456727))

(assert (= (and d!1359455 (not c!758630)) b!4456729))

(assert (= (and b!4456729 c!758629) b!4456730))

(assert (= (and b!4456729 (not c!758629)) b!4456723))

(assert (= (or b!4456727 b!4456729) bm!310179))

(assert (= (and bm!310179 c!758628) b!4456728))

(assert (= (and bm!310179 (not c!758628)) b!4456725))

(assert (= (and d!1359455 res!1847603) b!4456726))

(assert (= (and d!1359455 (not res!1847604)) b!4456731))

(assert (= (and b!4456731 res!1847605) b!4456724))

(declare-fun m!5158761 () Bool)

(assert (=> d!1359455 m!5158761))

(assert (=> b!4456730 m!5158761))

(declare-fun m!5158763 () Bool)

(assert (=> b!4456730 m!5158763))

(declare-fun m!5158765 () Bool)

(assert (=> b!4456726 m!5158765))

(assert (=> b!4456726 m!5158765))

(declare-fun m!5158767 () Bool)

(assert (=> b!4456726 m!5158767))

(declare-fun m!5158769 () Bool)

(assert (=> b!4456727 m!5158769))

(declare-fun m!5158771 () Bool)

(assert (=> b!4456727 m!5158771))

(assert (=> b!4456727 m!5158771))

(declare-fun m!5158773 () Bool)

(assert (=> b!4456727 m!5158773))

(declare-fun m!5158775 () Bool)

(assert (=> b!4456727 m!5158775))

(declare-fun m!5158777 () Bool)

(assert (=> bm!310179 m!5158777))

(declare-fun m!5158779 () Bool)

(assert (=> b!4456728 m!5158779))

(assert (=> b!4456725 m!5158765))

(assert (=> b!4456731 m!5158771))

(assert (=> b!4456731 m!5158771))

(assert (=> b!4456731 m!5158773))

(assert (=> b!4456724 m!5158765))

(assert (=> b!4456724 m!5158765))

(assert (=> b!4456724 m!5158767))

(assert (=> b!4456622 d!1359455))

(declare-fun bs!790963 () Bool)

(declare-fun d!1359457 () Bool)

(assert (= bs!790963 (and d!1359457 start!436782)))

(declare-fun lambda!160544 () Int)

(assert (=> bs!790963 (= lambda!160544 lambda!160494)))

(declare-fun bs!790964 () Bool)

(assert (= bs!790964 (and d!1359457 d!1359433)))

(assert (=> bs!790964 (= lambda!160544 lambda!160532)))

(declare-fun bs!790965 () Bool)

(assert (= bs!790965 (and d!1359457 d!1359447)))

(assert (=> bs!790965 (not (= lambda!160544 lambda!160539))))

(declare-fun lt!1648127 () ListMap!3083)

(assert (=> d!1359457 (invariantList!880 (toList!3845 lt!1648127))))

(declare-fun e!2775202 () ListMap!3083)

(assert (=> d!1359457 (= lt!1648127 e!2775202)))

(declare-fun c!758635 () Bool)

(assert (=> d!1359457 (= c!758635 (is-Cons!50024 (toList!3846 lm!1853)))))

(assert (=> d!1359457 (forall!9844 (toList!3846 lm!1853) lambda!160544)))

(assert (=> d!1359457 (= (extractMap!987 (toList!3846 lm!1853)) lt!1648127)))

(declare-fun b!4456740 () Bool)

(assert (=> b!4456740 (= e!2775202 (addToMapMapFromBucket!513 (_2!28348 (h!55769 (toList!3846 lm!1853))) (extractMap!987 (t!357098 (toList!3846 lm!1853)))))))

(declare-fun b!4456741 () Bool)

(assert (=> b!4456741 (= e!2775202 (ListMap!3084 Nil!50023))))

(assert (= (and d!1359457 c!758635) b!4456740))

(assert (= (and d!1359457 (not c!758635)) b!4456741))

(declare-fun m!5158781 () Bool)

(assert (=> d!1359457 m!5158781))

(declare-fun m!5158783 () Bool)

(assert (=> d!1359457 m!5158783))

(declare-fun m!5158785 () Bool)

(assert (=> b!4456740 m!5158785))

(assert (=> b!4456740 m!5158785))

(declare-fun m!5158787 () Bool)

(assert (=> b!4456740 m!5158787))

(assert (=> b!4456622 d!1359457))

(declare-fun b!4456746 () Bool)

(declare-fun e!2775205 () Bool)

(declare-fun tp!1335090 () Bool)

(declare-fun tp!1335091 () Bool)

(assert (=> b!4456746 (= e!2775205 (and tp!1335090 tp!1335091))))

(assert (=> b!4456619 (= tp!1335079 e!2775205)))

(assert (= (and b!4456619 (is-Cons!50024 (toList!3846 lm!1853))) b!4456746))

(declare-fun tp!1335094 () Bool)

(declare-fun e!2775208 () Bool)

(declare-fun b!4456751 () Bool)

(assert (=> b!4456751 (= e!2775208 (and tp_is_empty!26897 tp_is_empty!26899 tp!1335094))))

(assert (=> b!4456623 (= tp!1335078 e!2775208)))

(assert (= (and b!4456623 (is-Cons!50023 (t!357097 l!12858))) b!4456751))

(declare-fun b_lambda!147679 () Bool)

(assert (= b_lambda!147677 (or start!436782 b_lambda!147679)))

(declare-fun bs!790966 () Bool)

(declare-fun d!1359459 () Bool)

(assert (= bs!790966 (and d!1359459 start!436782)))

(assert (=> bs!790966 (= (dynLambda!20972 lambda!160494 (h!55769 (toList!3846 lm!1853))) (noDuplicateKeys!919 (_2!28348 (h!55769 (toList!3846 lm!1853)))))))

(declare-fun m!5158789 () Bool)

(assert (=> bs!790966 m!5158789))

(assert (=> b!4456721 d!1359459))

(push 1)

(assert tp_is_empty!26897)

(assert (not d!1359447))

(assert (not d!1359455))

(assert (not bm!310174))

(assert (not d!1359441))

(assert (not b!4456751))

(assert (not d!1359427))

(assert (not b!4456663))

(assert (not b!4456710))

(assert (not b!4456722))

(assert (not bs!790966))

(assert (not b!4456727))

(assert (not b!4456671))

(assert (not b!4456677))

(assert (not b!4456731))

(assert (not b!4456709))

(assert (not b!4456728))

(assert (not b!4456730))

(assert (not bm!310170))

(assert (not bm!310171))

(assert (not b!4456706))

(assert (not b!4456725))

(assert (not b_lambda!147679))

(assert (not b!4456680))

(assert (not bm!310179))

(assert (not d!1359443))

(assert (not b!4456711))

(assert (not b!4456703))

(assert (not d!1359435))

(assert (not b!4456682))

(assert (not b!4456712))

(assert (not b!4456707))

(assert (not bm!310178))

(assert (not bm!310175))

(assert (not d!1359457))

(assert (not b!4456661))

(assert (not d!1359445))

(assert (not b!4456704))

(assert (not d!1359439))

(assert (not b!4456715))

(assert (not d!1359433))

(assert (not b!4456724))

(assert (not bm!310172))

(assert (not b!4456681))

(assert (not b!4456705))

(assert (not b!4456662))

(assert tp_is_empty!26899)

(assert (not b!4456672))

(assert (not b!4456740))

(assert (not b!4456678))

(assert (not b!4456746))

(assert (not b!4456726))

(assert (not b!4456716))

(assert (not b!4456660))

(assert (not b!4456679))

(assert (not d!1359437))

(assert (not bm!310173))

(assert (not d!1359453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


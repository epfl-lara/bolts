; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427308 () Bool)

(assert start!427308)

(declare-fun b!4398070 () Bool)

(declare-fun res!1813671 () Bool)

(declare-fun e!2738433 () Bool)

(assert (=> b!4398070 (=> (not res!1813671) (not e!2738433))))

(declare-datatypes ((V!10866 0))(
  ( (V!10867 (val!16767 Int)) )
))
(declare-datatypes ((K!10620 0))(
  ( (K!10621 (val!16768 Int)) )
))
(declare-datatypes ((tuple2!48854 0))(
  ( (tuple2!48855 (_1!27721 K!10620) (_2!27721 V!10866)) )
))
(declare-datatypes ((List!49386 0))(
  ( (Nil!49262) (Cons!49262 (h!54883 tuple2!48854) (t!356320 List!49386)) )
))
(declare-datatypes ((tuple2!48856 0))(
  ( (tuple2!48857 (_1!27722 (_ BitVec 64)) (_2!27722 List!49386)) )
))
(declare-datatypes ((List!49387 0))(
  ( (Nil!49263) (Cons!49263 (h!54884 tuple2!48856) (t!356321 List!49387)) )
))
(declare-datatypes ((ListLongMap!1875 0))(
  ( (ListLongMap!1876 (toList!3225 List!49387)) )
))
(declare-fun lm!1707 () ListLongMap!1875)

(declare-datatypes ((Hashable!5013 0))(
  ( (HashableExt!5012 (__x!30716 Int)) )
))
(declare-fun hashF!1247 () Hashable!5013)

(declare-fun allKeysSameHashInMap!725 (ListLongMap!1875 Hashable!5013) Bool)

(assert (=> b!4398070 (= res!1813671 (allKeysSameHashInMap!725 lm!1707 hashF!1247))))

(declare-fun b!4398071 () Bool)

(declare-fun e!2738439 () Bool)

(declare-fun lt!1604048 () ListLongMap!1875)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11645 (ListLongMap!1875 (_ BitVec 64)) Bool)

(assert (=> b!4398071 (= e!2738439 (contains!11645 lt!1604048 hash!377))))

(declare-fun b!4398072 () Bool)

(declare-fun e!2738436 () Bool)

(assert (=> b!4398072 (= e!2738436 e!2738439)))

(declare-fun res!1813665 () Bool)

(assert (=> b!4398072 (=> res!1813665 e!2738439)))

(declare-fun lambda!148351 () Int)

(declare-fun forall!9350 (List!49387 Int) Bool)

(assert (=> b!4398072 (= res!1813665 (not (forall!9350 (toList!3225 lt!1604048) lambda!148351)))))

(declare-fun key!3918 () K!10620)

(declare-datatypes ((ListMap!2469 0))(
  ( (ListMap!2470 (toList!3226 List!49386)) )
))
(declare-fun contains!11646 (ListMap!2469 K!10620) Bool)

(declare-fun extractMap!680 (List!49387) ListMap!2469)

(assert (=> b!4398072 (contains!11646 (extractMap!680 (toList!3225 lt!1604048)) key!3918)))

(declare-fun tail!7103 (ListLongMap!1875) ListLongMap!1875)

(assert (=> b!4398072 (= lt!1604048 (tail!7103 lm!1707))))

(declare-fun lt!1604045 () ListMap!2469)

(assert (=> b!4398072 (contains!11646 lt!1604045 key!3918)))

(declare-fun newValue!99 () V!10866)

(declare-datatypes ((Unit!78523 0))(
  ( (Unit!78524) )
))
(declare-fun lt!1604053 () Unit!78523)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!80 (List!49386 K!10620 V!10866 ListMap!2469) Unit!78523)

(assert (=> b!4398072 (= lt!1604053 (lemmaAddToMapContainsAndNotInListThenInAcc!80 (_2!27722 (h!54884 (toList!3225 lm!1707))) key!3918 newValue!99 lt!1604045))))

(assert (=> b!4398072 (= lt!1604045 (extractMap!680 (t!356321 (toList!3225 lm!1707))))))

(declare-fun e!2738434 () Bool)

(assert (=> b!4398072 e!2738434))

(declare-fun res!1813663 () Bool)

(assert (=> b!4398072 (=> (not res!1813663) (not e!2738434))))

(declare-fun containsKey!919 (List!49386 K!10620) Bool)

(declare-fun apply!11473 (ListLongMap!1875 (_ BitVec 64)) List!49386)

(assert (=> b!4398072 (= res!1813663 (not (containsKey!919 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))) key!3918)))))

(declare-fun lt!1604046 () Unit!78523)

(declare-fun lemmaNotSameHashThenCannotContainKey!92 (ListLongMap!1875 K!10620 (_ BitVec 64) Hashable!5013) Unit!78523)

(assert (=> b!4398072 (= lt!1604046 (lemmaNotSameHashThenCannotContainKey!92 lm!1707 key!3918 (_1!27722 (h!54884 (toList!3225 lm!1707))) hashF!1247))))

(declare-fun b!4398073 () Bool)

(declare-fun res!1813666 () Bool)

(assert (=> b!4398073 (=> (not res!1813666) (not e!2738433))))

(declare-fun hash!1849 (Hashable!5013 K!10620) (_ BitVec 64))

(assert (=> b!4398073 (= res!1813666 (= (hash!1849 hashF!1247 key!3918) hash!377))))

(declare-fun tp!1331723 () Bool)

(declare-fun e!2738437 () Bool)

(declare-fun b!4398074 () Bool)

(declare-fun tp_is_empty!25723 () Bool)

(declare-fun tp_is_empty!25721 () Bool)

(assert (=> b!4398074 (= e!2738437 (and tp_is_empty!25721 tp_is_empty!25723 tp!1331723))))

(declare-fun res!1813667 () Bool)

(assert (=> start!427308 (=> (not res!1813667) (not e!2738433))))

(assert (=> start!427308 (= res!1813667 (forall!9350 (toList!3225 lm!1707) lambda!148351))))

(assert (=> start!427308 e!2738433))

(assert (=> start!427308 e!2738437))

(assert (=> start!427308 true))

(declare-fun e!2738435 () Bool)

(declare-fun inv!64806 (ListLongMap!1875) Bool)

(assert (=> start!427308 (and (inv!64806 lm!1707) e!2738435)))

(assert (=> start!427308 tp_is_empty!25721))

(assert (=> start!427308 tp_is_empty!25723))

(declare-fun b!4398075 () Bool)

(declare-fun e!2738438 () Bool)

(assert (=> b!4398075 (= e!2738433 (not e!2738438))))

(declare-fun res!1813668 () Bool)

(assert (=> b!4398075 (=> res!1813668 e!2738438)))

(declare-fun newBucket!200 () List!49386)

(declare-fun lt!1604049 () List!49386)

(declare-fun removePairForKey!589 (List!49386 K!10620) List!49386)

(assert (=> b!4398075 (= res!1813668 (not (= newBucket!200 (Cons!49262 (tuple2!48855 key!3918 newValue!99) (removePairForKey!589 lt!1604049 key!3918)))))))

(declare-fun lt!1604047 () tuple2!48856)

(declare-fun lt!1604050 () Unit!78523)

(declare-fun forallContained!1985 (List!49387 Int tuple2!48856) Unit!78523)

(assert (=> b!4398075 (= lt!1604050 (forallContained!1985 (toList!3225 lm!1707) lambda!148351 lt!1604047))))

(declare-fun contains!11647 (List!49387 tuple2!48856) Bool)

(assert (=> b!4398075 (contains!11647 (toList!3225 lm!1707) lt!1604047)))

(assert (=> b!4398075 (= lt!1604047 (tuple2!48857 hash!377 lt!1604049))))

(declare-fun lt!1604054 () Unit!78523)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!466 (List!49387 (_ BitVec 64) List!49386) Unit!78523)

(assert (=> b!4398075 (= lt!1604054 (lemmaGetValueByKeyImpliesContainsTuple!466 (toList!3225 lm!1707) hash!377 lt!1604049))))

(assert (=> b!4398075 (= lt!1604049 (apply!11473 lm!1707 hash!377))))

(declare-fun b!4398076 () Bool)

(declare-fun res!1813673 () Bool)

(assert (=> b!4398076 (=> (not res!1813673) (not e!2738433))))

(assert (=> b!4398076 (= res!1813673 (contains!11646 (extractMap!680 (toList!3225 lm!1707)) key!3918))))

(declare-fun b!4398077 () Bool)

(declare-fun tp!1331724 () Bool)

(assert (=> b!4398077 (= e!2738435 tp!1331724)))

(declare-fun b!4398078 () Bool)

(declare-fun res!1813670 () Bool)

(assert (=> b!4398078 (=> res!1813670 e!2738439)))

(assert (=> b!4398078 (= res!1813670 (not (allKeysSameHashInMap!725 lt!1604048 hashF!1247)))))

(declare-fun b!4398079 () Bool)

(declare-fun res!1813662 () Bool)

(assert (=> b!4398079 (=> res!1813662 e!2738438)))

(declare-fun noDuplicateKeys!621 (List!49386) Bool)

(assert (=> b!4398079 (= res!1813662 (not (noDuplicateKeys!621 newBucket!200)))))

(declare-fun b!4398080 () Bool)

(declare-fun res!1813664 () Bool)

(assert (=> b!4398080 (=> (not res!1813664) (not e!2738433))))

(declare-fun allKeysSameHash!579 (List!49386 (_ BitVec 64) Hashable!5013) Bool)

(assert (=> b!4398080 (= res!1813664 (allKeysSameHash!579 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4398081 () Bool)

(assert (=> b!4398081 (= e!2738434 (not (containsKey!919 (_2!27722 (h!54884 (toList!3225 lm!1707))) key!3918)))))

(declare-fun b!4398082 () Bool)

(declare-fun res!1813661 () Bool)

(assert (=> b!4398082 (=> (not res!1813661) (not e!2738433))))

(assert (=> b!4398082 (= res!1813661 (contains!11645 lm!1707 hash!377))))

(declare-fun b!4398083 () Bool)

(assert (=> b!4398083 (= e!2738438 e!2738436)))

(declare-fun res!1813669 () Bool)

(assert (=> b!4398083 (=> res!1813669 e!2738436)))

(get-info :version)

(assert (=> b!4398083 (= res!1813669 (or (and ((_ is Cons!49263) (toList!3225 lm!1707)) (= (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377)) (not ((_ is Cons!49263) (toList!3225 lm!1707))) (= (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377)))))

(declare-fun e!2738440 () Bool)

(assert (=> b!4398083 e!2738440))

(declare-fun res!1813672 () Bool)

(assert (=> b!4398083 (=> (not res!1813672) (not e!2738440))))

(declare-fun lt!1604051 () ListLongMap!1875)

(assert (=> b!4398083 (= res!1813672 (forall!9350 (toList!3225 lt!1604051) lambda!148351))))

(declare-fun +!858 (ListLongMap!1875 tuple2!48856) ListLongMap!1875)

(assert (=> b!4398083 (= lt!1604051 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200)))))

(declare-fun lt!1604052 () Unit!78523)

(declare-fun addValidProp!267 (ListLongMap!1875 Int (_ BitVec 64) List!49386) Unit!78523)

(assert (=> b!4398083 (= lt!1604052 (addValidProp!267 lm!1707 lambda!148351 hash!377 newBucket!200))))

(assert (=> b!4398083 (forall!9350 (toList!3225 lm!1707) lambda!148351)))

(declare-fun b!4398084 () Bool)

(assert (=> b!4398084 (= e!2738440 (forall!9350 (toList!3225 lt!1604051) lambda!148351))))

(assert (= (and start!427308 res!1813667) b!4398070))

(assert (= (and b!4398070 res!1813671) b!4398073))

(assert (= (and b!4398073 res!1813666) b!4398080))

(assert (= (and b!4398080 res!1813664) b!4398076))

(assert (= (and b!4398076 res!1813673) b!4398082))

(assert (= (and b!4398082 res!1813661) b!4398075))

(assert (= (and b!4398075 (not res!1813668)) b!4398079))

(assert (= (and b!4398079 (not res!1813662)) b!4398083))

(assert (= (and b!4398083 res!1813672) b!4398084))

(assert (= (and b!4398083 (not res!1813669)) b!4398072))

(assert (= (and b!4398072 res!1813663) b!4398081))

(assert (= (and b!4398072 (not res!1813665)) b!4398078))

(assert (= (and b!4398078 (not res!1813670)) b!4398071))

(assert (= (and start!427308 ((_ is Cons!49262) newBucket!200)) b!4398074))

(assert (= start!427308 b!4398077))

(declare-fun m!5059471 () Bool)

(assert (=> b!4398070 m!5059471))

(declare-fun m!5059473 () Bool)

(assert (=> b!4398073 m!5059473))

(declare-fun m!5059475 () Bool)

(assert (=> b!4398079 m!5059475))

(declare-fun m!5059477 () Bool)

(assert (=> b!4398071 m!5059477))

(declare-fun m!5059479 () Bool)

(assert (=> b!4398081 m!5059479))

(declare-fun m!5059481 () Bool)

(assert (=> b!4398082 m!5059481))

(declare-fun m!5059483 () Bool)

(assert (=> b!4398075 m!5059483))

(declare-fun m!5059485 () Bool)

(assert (=> b!4398075 m!5059485))

(declare-fun m!5059487 () Bool)

(assert (=> b!4398075 m!5059487))

(declare-fun m!5059489 () Bool)

(assert (=> b!4398075 m!5059489))

(declare-fun m!5059491 () Bool)

(assert (=> b!4398075 m!5059491))

(declare-fun m!5059493 () Bool)

(assert (=> b!4398083 m!5059493))

(declare-fun m!5059495 () Bool)

(assert (=> b!4398083 m!5059495))

(declare-fun m!5059497 () Bool)

(assert (=> b!4398083 m!5059497))

(declare-fun m!5059499 () Bool)

(assert (=> b!4398083 m!5059499))

(assert (=> b!4398084 m!5059493))

(assert (=> start!427308 m!5059499))

(declare-fun m!5059501 () Bool)

(assert (=> start!427308 m!5059501))

(declare-fun m!5059503 () Bool)

(assert (=> b!4398076 m!5059503))

(assert (=> b!4398076 m!5059503))

(declare-fun m!5059505 () Bool)

(assert (=> b!4398076 m!5059505))

(declare-fun m!5059507 () Bool)

(assert (=> b!4398072 m!5059507))

(declare-fun m!5059509 () Bool)

(assert (=> b!4398072 m!5059509))

(declare-fun m!5059511 () Bool)

(assert (=> b!4398072 m!5059511))

(declare-fun m!5059513 () Bool)

(assert (=> b!4398072 m!5059513))

(declare-fun m!5059515 () Bool)

(assert (=> b!4398072 m!5059515))

(declare-fun m!5059517 () Bool)

(assert (=> b!4398072 m!5059517))

(declare-fun m!5059519 () Bool)

(assert (=> b!4398072 m!5059519))

(declare-fun m!5059521 () Bool)

(assert (=> b!4398072 m!5059521))

(assert (=> b!4398072 m!5059521))

(declare-fun m!5059523 () Bool)

(assert (=> b!4398072 m!5059523))

(assert (=> b!4398072 m!5059517))

(declare-fun m!5059525 () Bool)

(assert (=> b!4398072 m!5059525))

(declare-fun m!5059527 () Bool)

(assert (=> b!4398078 m!5059527))

(declare-fun m!5059529 () Bool)

(assert (=> b!4398080 m!5059529))

(check-sat (not b!4398078) (not b!4398072) (not b!4398076) (not b!4398079) (not b!4398082) (not b!4398073) (not start!427308) (not b!4398071) (not b!4398075) (not b!4398083) tp_is_empty!25723 tp_is_empty!25721 (not b!4398074) (not b!4398081) (not b!4398084) (not b!4398070) (not b!4398077) (not b!4398080))
(check-sat)
(get-model)

(declare-fun d!1325508 () Bool)

(declare-datatypes ((Option!10604 0))(
  ( (None!10603) (Some!10603 (v!43689 List!49386)) )
))
(declare-fun get!16035 (Option!10604) List!49386)

(declare-fun getValueByKey!590 (List!49387 (_ BitVec 64)) Option!10604)

(assert (=> d!1325508 (= (apply!11473 lm!1707 hash!377) (get!16035 (getValueByKey!590 (toList!3225 lm!1707) hash!377)))))

(declare-fun bs!727333 () Bool)

(assert (= bs!727333 d!1325508))

(declare-fun m!5059563 () Bool)

(assert (=> bs!727333 m!5059563))

(assert (=> bs!727333 m!5059563))

(declare-fun m!5059565 () Bool)

(assert (=> bs!727333 m!5059565))

(assert (=> b!4398075 d!1325508))

(declare-fun d!1325510 () Bool)

(declare-fun dynLambda!20754 (Int tuple2!48856) Bool)

(assert (=> d!1325510 (dynLambda!20754 lambda!148351 lt!1604047)))

(declare-fun lt!1604085 () Unit!78523)

(declare-fun choose!27537 (List!49387 Int tuple2!48856) Unit!78523)

(assert (=> d!1325510 (= lt!1604085 (choose!27537 (toList!3225 lm!1707) lambda!148351 lt!1604047))))

(declare-fun e!2738479 () Bool)

(assert (=> d!1325510 e!2738479))

(declare-fun res!1813700 () Bool)

(assert (=> d!1325510 (=> (not res!1813700) (not e!2738479))))

(assert (=> d!1325510 (= res!1813700 (forall!9350 (toList!3225 lm!1707) lambda!148351))))

(assert (=> d!1325510 (= (forallContained!1985 (toList!3225 lm!1707) lambda!148351 lt!1604047) lt!1604085)))

(declare-fun b!4398137 () Bool)

(assert (=> b!4398137 (= e!2738479 (contains!11647 (toList!3225 lm!1707) lt!1604047))))

(assert (= (and d!1325510 res!1813700) b!4398137))

(declare-fun b_lambda!139419 () Bool)

(assert (=> (not b_lambda!139419) (not d!1325510)))

(declare-fun m!5059567 () Bool)

(assert (=> d!1325510 m!5059567))

(declare-fun m!5059569 () Bool)

(assert (=> d!1325510 m!5059569))

(assert (=> d!1325510 m!5059499))

(assert (=> b!4398137 m!5059487))

(assert (=> b!4398075 d!1325510))

(declare-fun d!1325512 () Bool)

(assert (=> d!1325512 (contains!11647 (toList!3225 lm!1707) (tuple2!48857 hash!377 lt!1604049))))

(declare-fun lt!1604096 () Unit!78523)

(declare-fun choose!27538 (List!49387 (_ BitVec 64) List!49386) Unit!78523)

(assert (=> d!1325512 (= lt!1604096 (choose!27538 (toList!3225 lm!1707) hash!377 lt!1604049))))

(declare-fun e!2738488 () Bool)

(assert (=> d!1325512 e!2738488))

(declare-fun res!1813706 () Bool)

(assert (=> d!1325512 (=> (not res!1813706) (not e!2738488))))

(declare-fun isStrictlySorted!172 (List!49387) Bool)

(assert (=> d!1325512 (= res!1813706 (isStrictlySorted!172 (toList!3225 lm!1707)))))

(assert (=> d!1325512 (= (lemmaGetValueByKeyImpliesContainsTuple!466 (toList!3225 lm!1707) hash!377 lt!1604049) lt!1604096)))

(declare-fun b!4398149 () Bool)

(assert (=> b!4398149 (= e!2738488 (= (getValueByKey!590 (toList!3225 lm!1707) hash!377) (Some!10603 lt!1604049)))))

(assert (= (and d!1325512 res!1813706) b!4398149))

(declare-fun m!5059591 () Bool)

(assert (=> d!1325512 m!5059591))

(declare-fun m!5059593 () Bool)

(assert (=> d!1325512 m!5059593))

(declare-fun m!5059595 () Bool)

(assert (=> d!1325512 m!5059595))

(assert (=> b!4398149 m!5059563))

(assert (=> b!4398075 d!1325512))

(declare-fun d!1325516 () Bool)

(declare-fun lt!1604102 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7860 (List!49387) (InoxSet tuple2!48856))

(assert (=> d!1325516 (= lt!1604102 (select (content!7860 (toList!3225 lm!1707)) lt!1604047))))

(declare-fun e!2738496 () Bool)

(assert (=> d!1325516 (= lt!1604102 e!2738496)))

(declare-fun res!1813712 () Bool)

(assert (=> d!1325516 (=> (not res!1813712) (not e!2738496))))

(assert (=> d!1325516 (= res!1813712 ((_ is Cons!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325516 (= (contains!11647 (toList!3225 lm!1707) lt!1604047) lt!1604102)))

(declare-fun b!4398160 () Bool)

(declare-fun e!2738497 () Bool)

(assert (=> b!4398160 (= e!2738496 e!2738497)))

(declare-fun res!1813711 () Bool)

(assert (=> b!4398160 (=> res!1813711 e!2738497)))

(assert (=> b!4398160 (= res!1813711 (= (h!54884 (toList!3225 lm!1707)) lt!1604047))))

(declare-fun b!4398161 () Bool)

(assert (=> b!4398161 (= e!2738497 (contains!11647 (t!356321 (toList!3225 lm!1707)) lt!1604047))))

(assert (= (and d!1325516 res!1813712) b!4398160))

(assert (= (and b!4398160 (not res!1813711)) b!4398161))

(declare-fun m!5059605 () Bool)

(assert (=> d!1325516 m!5059605))

(declare-fun m!5059607 () Bool)

(assert (=> d!1325516 m!5059607))

(declare-fun m!5059609 () Bool)

(assert (=> b!4398161 m!5059609))

(assert (=> b!4398075 d!1325516))

(declare-fun b!4398195 () Bool)

(declare-fun e!2738521 () List!49386)

(assert (=> b!4398195 (= e!2738521 (t!356320 lt!1604049))))

(declare-fun d!1325522 () Bool)

(declare-fun lt!1604117 () List!49386)

(assert (=> d!1325522 (not (containsKey!919 lt!1604117 key!3918))))

(assert (=> d!1325522 (= lt!1604117 e!2738521)))

(declare-fun c!748728 () Bool)

(assert (=> d!1325522 (= c!748728 (and ((_ is Cons!49262) lt!1604049) (= (_1!27721 (h!54883 lt!1604049)) key!3918)))))

(assert (=> d!1325522 (noDuplicateKeys!621 lt!1604049)))

(assert (=> d!1325522 (= (removePairForKey!589 lt!1604049 key!3918) lt!1604117)))

(declare-fun b!4398198 () Bool)

(declare-fun e!2738520 () List!49386)

(assert (=> b!4398198 (= e!2738520 Nil!49262)))

(declare-fun b!4398197 () Bool)

(assert (=> b!4398197 (= e!2738520 (Cons!49262 (h!54883 lt!1604049) (removePairForKey!589 (t!356320 lt!1604049) key!3918)))))

(declare-fun b!4398196 () Bool)

(assert (=> b!4398196 (= e!2738521 e!2738520)))

(declare-fun c!748729 () Bool)

(assert (=> b!4398196 (= c!748729 ((_ is Cons!49262) lt!1604049))))

(assert (= (and d!1325522 c!748728) b!4398195))

(assert (= (and d!1325522 (not c!748728)) b!4398196))

(assert (= (and b!4398196 c!748729) b!4398197))

(assert (= (and b!4398196 (not c!748729)) b!4398198))

(declare-fun m!5059633 () Bool)

(assert (=> d!1325522 m!5059633))

(declare-fun m!5059635 () Bool)

(assert (=> d!1325522 m!5059635))

(declare-fun m!5059637 () Bool)

(assert (=> b!4398197 m!5059637))

(assert (=> b!4398075 d!1325522))

(declare-fun bm!306098 () Bool)

(declare-fun call!306103 () Bool)

(declare-datatypes ((List!49389 0))(
  ( (Nil!49265) (Cons!49265 (h!54888 K!10620) (t!356323 List!49389)) )
))
(declare-fun e!2738568 () List!49389)

(declare-fun contains!11649 (List!49389 K!10620) Bool)

(assert (=> bm!306098 (= call!306103 (contains!11649 e!2738568 key!3918))))

(declare-fun c!748746 () Bool)

(declare-fun c!748745 () Bool)

(assert (=> bm!306098 (= c!748746 c!748745)))

(declare-fun d!1325534 () Bool)

(declare-fun e!2738572 () Bool)

(assert (=> d!1325534 e!2738572))

(declare-fun res!1813756 () Bool)

(assert (=> d!1325534 (=> res!1813756 e!2738572)))

(declare-fun e!2738573 () Bool)

(assert (=> d!1325534 (= res!1813756 e!2738573)))

(declare-fun res!1813758 () Bool)

(assert (=> d!1325534 (=> (not res!1813758) (not e!2738573))))

(declare-fun lt!1604182 () Bool)

(assert (=> d!1325534 (= res!1813758 (not lt!1604182))))

(declare-fun lt!1604177 () Bool)

(assert (=> d!1325534 (= lt!1604182 lt!1604177)))

(declare-fun lt!1604178 () Unit!78523)

(declare-fun e!2738571 () Unit!78523)

(assert (=> d!1325534 (= lt!1604178 e!2738571)))

(assert (=> d!1325534 (= c!748745 lt!1604177)))

(declare-fun containsKey!922 (List!49386 K!10620) Bool)

(assert (=> d!1325534 (= lt!1604177 (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(assert (=> d!1325534 (= (contains!11646 (extractMap!680 (toList!3225 lm!1707)) key!3918) lt!1604182)))

(declare-fun b!4398268 () Bool)

(declare-fun e!2738570 () Unit!78523)

(declare-fun Unit!78533 () Unit!78523)

(assert (=> b!4398268 (= e!2738570 Unit!78533)))

(declare-fun b!4398269 () Bool)

(declare-fun e!2738569 () Bool)

(declare-fun keys!16737 (ListMap!2469) List!49389)

(assert (=> b!4398269 (= e!2738569 (contains!11649 (keys!16737 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(declare-fun b!4398270 () Bool)

(assert (=> b!4398270 (= e!2738568 (keys!16737 (extractMap!680 (toList!3225 lm!1707))))))

(declare-fun b!4398271 () Bool)

(assert (=> b!4398271 (= e!2738571 e!2738570)))

(declare-fun c!748747 () Bool)

(assert (=> b!4398271 (= c!748747 call!306103)))

(declare-fun b!4398272 () Bool)

(declare-fun getKeysList!193 (List!49386) List!49389)

(assert (=> b!4398272 (= e!2738568 (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))

(declare-fun b!4398273 () Bool)

(assert (=> b!4398273 (= e!2738573 (not (contains!11649 (keys!16737 (extractMap!680 (toList!3225 lm!1707))) key!3918)))))

(declare-fun b!4398274 () Bool)

(assert (=> b!4398274 (= e!2738572 e!2738569)))

(declare-fun res!1813757 () Bool)

(assert (=> b!4398274 (=> (not res!1813757) (not e!2738569))))

(declare-datatypes ((Option!10605 0))(
  ( (None!10604) (Some!10604 (v!43690 V!10866)) )
))
(declare-fun isDefined!7897 (Option!10605) Bool)

(declare-fun getValueByKey!591 (List!49386 K!10620) Option!10605)

(assert (=> b!4398274 (= res!1813757 (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918)))))

(declare-fun b!4398275 () Bool)

(declare-fun lt!1604179 () Unit!78523)

(assert (=> b!4398275 (= e!2738571 lt!1604179)))

(declare-fun lt!1604183 () Unit!78523)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!500 (List!49386 K!10620) Unit!78523)

(assert (=> b!4398275 (= lt!1604183 (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(assert (=> b!4398275 (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(declare-fun lt!1604184 () Unit!78523)

(assert (=> b!4398275 (= lt!1604184 lt!1604183)))

(declare-fun lemmaInListThenGetKeysListContains!190 (List!49386 K!10620) Unit!78523)

(assert (=> b!4398275 (= lt!1604179 (lemmaInListThenGetKeysListContains!190 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(assert (=> b!4398275 call!306103))

(declare-fun b!4398276 () Bool)

(assert (=> b!4398276 false))

(declare-fun lt!1604181 () Unit!78523)

(declare-fun lt!1604180 () Unit!78523)

(assert (=> b!4398276 (= lt!1604181 lt!1604180)))

(assert (=> b!4398276 (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!191 (List!49386 K!10620) Unit!78523)

(assert (=> b!4398276 (= lt!1604180 (lemmaInGetKeysListThenContainsKey!191 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(declare-fun Unit!78534 () Unit!78523)

(assert (=> b!4398276 (= e!2738570 Unit!78534)))

(assert (= (and d!1325534 c!748745) b!4398275))

(assert (= (and d!1325534 (not c!748745)) b!4398271))

(assert (= (and b!4398271 c!748747) b!4398276))

(assert (= (and b!4398271 (not c!748747)) b!4398268))

(assert (= (or b!4398275 b!4398271) bm!306098))

(assert (= (and bm!306098 c!748746) b!4398272))

(assert (= (and bm!306098 (not c!748746)) b!4398270))

(assert (= (and d!1325534 res!1813758) b!4398273))

(assert (= (and d!1325534 (not res!1813756)) b!4398274))

(assert (= (and b!4398274 res!1813757) b!4398269))

(assert (=> b!4398273 m!5059503))

(declare-fun m!5059747 () Bool)

(assert (=> b!4398273 m!5059747))

(assert (=> b!4398273 m!5059747))

(declare-fun m!5059749 () Bool)

(assert (=> b!4398273 m!5059749))

(declare-fun m!5059751 () Bool)

(assert (=> b!4398276 m!5059751))

(declare-fun m!5059753 () Bool)

(assert (=> b!4398276 m!5059753))

(assert (=> d!1325534 m!5059751))

(assert (=> b!4398270 m!5059503))

(assert (=> b!4398270 m!5059747))

(declare-fun m!5059755 () Bool)

(assert (=> b!4398275 m!5059755))

(declare-fun m!5059757 () Bool)

(assert (=> b!4398275 m!5059757))

(assert (=> b!4398275 m!5059757))

(declare-fun m!5059759 () Bool)

(assert (=> b!4398275 m!5059759))

(declare-fun m!5059761 () Bool)

(assert (=> b!4398275 m!5059761))

(assert (=> b!4398274 m!5059757))

(assert (=> b!4398274 m!5059757))

(assert (=> b!4398274 m!5059759))

(assert (=> b!4398269 m!5059503))

(assert (=> b!4398269 m!5059747))

(assert (=> b!4398269 m!5059747))

(assert (=> b!4398269 m!5059749))

(declare-fun m!5059763 () Bool)

(assert (=> bm!306098 m!5059763))

(declare-fun m!5059765 () Bool)

(assert (=> b!4398272 m!5059765))

(assert (=> b!4398076 d!1325534))

(declare-fun bs!727366 () Bool)

(declare-fun d!1325572 () Bool)

(assert (= bs!727366 (and d!1325572 start!427308)))

(declare-fun lambda!148369 () Int)

(assert (=> bs!727366 (= lambda!148369 lambda!148351)))

(declare-fun lt!1604187 () ListMap!2469)

(declare-fun invariantList!746 (List!49386) Bool)

(assert (=> d!1325572 (invariantList!746 (toList!3226 lt!1604187))))

(declare-fun e!2738576 () ListMap!2469)

(assert (=> d!1325572 (= lt!1604187 e!2738576)))

(declare-fun c!748750 () Bool)

(assert (=> d!1325572 (= c!748750 ((_ is Cons!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325572 (forall!9350 (toList!3225 lm!1707) lambda!148369)))

(assert (=> d!1325572 (= (extractMap!680 (toList!3225 lm!1707)) lt!1604187)))

(declare-fun b!4398281 () Bool)

(declare-fun addToMapMapFromBucket!291 (List!49386 ListMap!2469) ListMap!2469)

(assert (=> b!4398281 (= e!2738576 (addToMapMapFromBucket!291 (_2!27722 (h!54884 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (toList!3225 lm!1707)))))))

(declare-fun b!4398282 () Bool)

(assert (=> b!4398282 (= e!2738576 (ListMap!2470 Nil!49262))))

(assert (= (and d!1325572 c!748750) b!4398281))

(assert (= (and d!1325572 (not c!748750)) b!4398282))

(declare-fun m!5059767 () Bool)

(assert (=> d!1325572 m!5059767))

(declare-fun m!5059769 () Bool)

(assert (=> d!1325572 m!5059769))

(assert (=> b!4398281 m!5059507))

(assert (=> b!4398281 m!5059507))

(declare-fun m!5059771 () Bool)

(assert (=> b!4398281 m!5059771))

(assert (=> b!4398076 d!1325572))

(declare-fun d!1325574 () Bool)

(declare-fun hash!1853 (Hashable!5013 K!10620) (_ BitVec 64))

(assert (=> d!1325574 (= (hash!1849 hashF!1247 key!3918) (hash!1853 hashF!1247 key!3918))))

(declare-fun bs!727367 () Bool)

(assert (= bs!727367 d!1325574))

(declare-fun m!5059773 () Bool)

(assert (=> bs!727367 m!5059773))

(assert (=> b!4398073 d!1325574))

(declare-fun d!1325576 () Bool)

(declare-fun res!1813763 () Bool)

(declare-fun e!2738581 () Bool)

(assert (=> d!1325576 (=> res!1813763 e!2738581)))

(assert (=> d!1325576 (= res!1813763 ((_ is Nil!49263) (toList!3225 lt!1604051)))))

(assert (=> d!1325576 (= (forall!9350 (toList!3225 lt!1604051) lambda!148351) e!2738581)))

(declare-fun b!4398287 () Bool)

(declare-fun e!2738582 () Bool)

(assert (=> b!4398287 (= e!2738581 e!2738582)))

(declare-fun res!1813764 () Bool)

(assert (=> b!4398287 (=> (not res!1813764) (not e!2738582))))

(assert (=> b!4398287 (= res!1813764 (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 lt!1604051))))))

(declare-fun b!4398288 () Bool)

(assert (=> b!4398288 (= e!2738582 (forall!9350 (t!356321 (toList!3225 lt!1604051)) lambda!148351))))

(assert (= (and d!1325576 (not res!1813763)) b!4398287))

(assert (= (and b!4398287 res!1813764) b!4398288))

(declare-fun b_lambda!139439 () Bool)

(assert (=> (not b_lambda!139439) (not b!4398287)))

(declare-fun m!5059775 () Bool)

(assert (=> b!4398287 m!5059775))

(declare-fun m!5059777 () Bool)

(assert (=> b!4398288 m!5059777))

(assert (=> b!4398083 d!1325576))

(declare-fun d!1325578 () Bool)

(declare-fun e!2738585 () Bool)

(assert (=> d!1325578 e!2738585))

(declare-fun res!1813769 () Bool)

(assert (=> d!1325578 (=> (not res!1813769) (not e!2738585))))

(declare-fun lt!1604199 () ListLongMap!1875)

(assert (=> d!1325578 (= res!1813769 (contains!11645 lt!1604199 (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun lt!1604197 () List!49387)

(assert (=> d!1325578 (= lt!1604199 (ListLongMap!1876 lt!1604197))))

(declare-fun lt!1604196 () Unit!78523)

(declare-fun lt!1604198 () Unit!78523)

(assert (=> d!1325578 (= lt!1604196 lt!1604198)))

(assert (=> d!1325578 (= (getValueByKey!590 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200))) (Some!10603 (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!341 (List!49387 (_ BitVec 64) List!49386) Unit!78523)

(assert (=> d!1325578 (= lt!1604198 (lemmaContainsTupThenGetReturnValue!341 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!200 (List!49387 (_ BitVec 64) List!49386) List!49387)

(assert (=> d!1325578 (= lt!1604197 (insertStrictlySorted!200 (toList!3225 lm!1707) (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(assert (=> d!1325578 (= (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200)) lt!1604199)))

(declare-fun b!4398293 () Bool)

(declare-fun res!1813770 () Bool)

(assert (=> b!4398293 (=> (not res!1813770) (not e!2738585))))

(assert (=> b!4398293 (= res!1813770 (= (getValueByKey!590 (toList!3225 lt!1604199) (_1!27722 (tuple2!48857 hash!377 newBucket!200))) (Some!10603 (_2!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(declare-fun b!4398294 () Bool)

(assert (=> b!4398294 (= e!2738585 (contains!11647 (toList!3225 lt!1604199) (tuple2!48857 hash!377 newBucket!200)))))

(assert (= (and d!1325578 res!1813769) b!4398293))

(assert (= (and b!4398293 res!1813770) b!4398294))

(declare-fun m!5059779 () Bool)

(assert (=> d!1325578 m!5059779))

(declare-fun m!5059781 () Bool)

(assert (=> d!1325578 m!5059781))

(declare-fun m!5059783 () Bool)

(assert (=> d!1325578 m!5059783))

(declare-fun m!5059785 () Bool)

(assert (=> d!1325578 m!5059785))

(declare-fun m!5059787 () Bool)

(assert (=> b!4398293 m!5059787))

(declare-fun m!5059789 () Bool)

(assert (=> b!4398294 m!5059789))

(assert (=> b!4398083 d!1325578))

(declare-fun d!1325580 () Bool)

(assert (=> d!1325580 (forall!9350 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200))) lambda!148351)))

(declare-fun lt!1604202 () Unit!78523)

(declare-fun choose!27539 (ListLongMap!1875 Int (_ BitVec 64) List!49386) Unit!78523)

(assert (=> d!1325580 (= lt!1604202 (choose!27539 lm!1707 lambda!148351 hash!377 newBucket!200))))

(declare-fun e!2738588 () Bool)

(assert (=> d!1325580 e!2738588))

(declare-fun res!1813773 () Bool)

(assert (=> d!1325580 (=> (not res!1813773) (not e!2738588))))

(assert (=> d!1325580 (= res!1813773 (forall!9350 (toList!3225 lm!1707) lambda!148351))))

(assert (=> d!1325580 (= (addValidProp!267 lm!1707 lambda!148351 hash!377 newBucket!200) lt!1604202)))

(declare-fun b!4398298 () Bool)

(assert (=> b!4398298 (= e!2738588 (dynLambda!20754 lambda!148351 (tuple2!48857 hash!377 newBucket!200)))))

(assert (= (and d!1325580 res!1813773) b!4398298))

(declare-fun b_lambda!139441 () Bool)

(assert (=> (not b_lambda!139441) (not b!4398298)))

(assert (=> d!1325580 m!5059495))

(declare-fun m!5059791 () Bool)

(assert (=> d!1325580 m!5059791))

(declare-fun m!5059793 () Bool)

(assert (=> d!1325580 m!5059793))

(assert (=> d!1325580 m!5059499))

(declare-fun m!5059795 () Bool)

(assert (=> b!4398298 m!5059795))

(assert (=> b!4398083 d!1325580))

(declare-fun d!1325582 () Bool)

(declare-fun res!1813774 () Bool)

(declare-fun e!2738589 () Bool)

(assert (=> d!1325582 (=> res!1813774 e!2738589)))

(assert (=> d!1325582 (= res!1813774 ((_ is Nil!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325582 (= (forall!9350 (toList!3225 lm!1707) lambda!148351) e!2738589)))

(declare-fun b!4398299 () Bool)

(declare-fun e!2738590 () Bool)

(assert (=> b!4398299 (= e!2738589 e!2738590)))

(declare-fun res!1813775 () Bool)

(assert (=> b!4398299 (=> (not res!1813775) (not e!2738590))))

(assert (=> b!4398299 (= res!1813775 (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 lm!1707))))))

(declare-fun b!4398300 () Bool)

(assert (=> b!4398300 (= e!2738590 (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148351))))

(assert (= (and d!1325582 (not res!1813774)) b!4398299))

(assert (= (and b!4398299 res!1813775) b!4398300))

(declare-fun b_lambda!139443 () Bool)

(assert (=> (not b_lambda!139443) (not b!4398299)))

(declare-fun m!5059797 () Bool)

(assert (=> b!4398299 m!5059797))

(declare-fun m!5059799 () Bool)

(assert (=> b!4398300 m!5059799))

(assert (=> b!4398083 d!1325582))

(declare-fun d!1325584 () Bool)

(assert (=> d!1325584 (= (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))) (get!16035 (getValueByKey!590 (toList!3225 lm!1707) (_1!27722 (h!54884 (toList!3225 lm!1707))))))))

(declare-fun bs!727368 () Bool)

(assert (= bs!727368 d!1325584))

(declare-fun m!5059801 () Bool)

(assert (=> bs!727368 m!5059801))

(assert (=> bs!727368 m!5059801))

(declare-fun m!5059803 () Bool)

(assert (=> bs!727368 m!5059803))

(assert (=> b!4398072 d!1325584))

(declare-fun bm!306099 () Bool)

(declare-fun call!306104 () Bool)

(declare-fun e!2738591 () List!49389)

(assert (=> bm!306099 (= call!306104 (contains!11649 e!2738591 key!3918))))

(declare-fun c!748752 () Bool)

(declare-fun c!748751 () Bool)

(assert (=> bm!306099 (= c!748752 c!748751)))

(declare-fun d!1325586 () Bool)

(declare-fun e!2738595 () Bool)

(assert (=> d!1325586 e!2738595))

(declare-fun res!1813776 () Bool)

(assert (=> d!1325586 (=> res!1813776 e!2738595)))

(declare-fun e!2738596 () Bool)

(assert (=> d!1325586 (= res!1813776 e!2738596)))

(declare-fun res!1813778 () Bool)

(assert (=> d!1325586 (=> (not res!1813778) (not e!2738596))))

(declare-fun lt!1604208 () Bool)

(assert (=> d!1325586 (= res!1813778 (not lt!1604208))))

(declare-fun lt!1604203 () Bool)

(assert (=> d!1325586 (= lt!1604208 lt!1604203)))

(declare-fun lt!1604204 () Unit!78523)

(declare-fun e!2738594 () Unit!78523)

(assert (=> d!1325586 (= lt!1604204 e!2738594)))

(assert (=> d!1325586 (= c!748751 lt!1604203)))

(assert (=> d!1325586 (= lt!1604203 (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(assert (=> d!1325586 (= (contains!11646 (extractMap!680 (toList!3225 lt!1604048)) key!3918) lt!1604208)))

(declare-fun b!4398301 () Bool)

(declare-fun e!2738593 () Unit!78523)

(declare-fun Unit!78535 () Unit!78523)

(assert (=> b!4398301 (= e!2738593 Unit!78535)))

(declare-fun b!4398302 () Bool)

(declare-fun e!2738592 () Bool)

(assert (=> b!4398302 (= e!2738592 (contains!11649 (keys!16737 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(declare-fun b!4398303 () Bool)

(assert (=> b!4398303 (= e!2738591 (keys!16737 (extractMap!680 (toList!3225 lt!1604048))))))

(declare-fun b!4398304 () Bool)

(assert (=> b!4398304 (= e!2738594 e!2738593)))

(declare-fun c!748753 () Bool)

(assert (=> b!4398304 (= c!748753 call!306104)))

(declare-fun b!4398305 () Bool)

(assert (=> b!4398305 (= e!2738591 (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))

(declare-fun b!4398306 () Bool)

(assert (=> b!4398306 (= e!2738596 (not (contains!11649 (keys!16737 (extractMap!680 (toList!3225 lt!1604048))) key!3918)))))

(declare-fun b!4398307 () Bool)

(assert (=> b!4398307 (= e!2738595 e!2738592)))

(declare-fun res!1813777 () Bool)

(assert (=> b!4398307 (=> (not res!1813777) (not e!2738592))))

(assert (=> b!4398307 (= res!1813777 (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918)))))

(declare-fun b!4398308 () Bool)

(declare-fun lt!1604205 () Unit!78523)

(assert (=> b!4398308 (= e!2738594 lt!1604205)))

(declare-fun lt!1604209 () Unit!78523)

(assert (=> b!4398308 (= lt!1604209 (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(assert (=> b!4398308 (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(declare-fun lt!1604210 () Unit!78523)

(assert (=> b!4398308 (= lt!1604210 lt!1604209)))

(assert (=> b!4398308 (= lt!1604205 (lemmaInListThenGetKeysListContains!190 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(assert (=> b!4398308 call!306104))

(declare-fun b!4398309 () Bool)

(assert (=> b!4398309 false))

(declare-fun lt!1604207 () Unit!78523)

(declare-fun lt!1604206 () Unit!78523)

(assert (=> b!4398309 (= lt!1604207 lt!1604206)))

(assert (=> b!4398309 (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918)))

(assert (=> b!4398309 (= lt!1604206 (lemmaInGetKeysListThenContainsKey!191 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(declare-fun Unit!78536 () Unit!78523)

(assert (=> b!4398309 (= e!2738593 Unit!78536)))

(assert (= (and d!1325586 c!748751) b!4398308))

(assert (= (and d!1325586 (not c!748751)) b!4398304))

(assert (= (and b!4398304 c!748753) b!4398309))

(assert (= (and b!4398304 (not c!748753)) b!4398301))

(assert (= (or b!4398308 b!4398304) bm!306099))

(assert (= (and bm!306099 c!748752) b!4398305))

(assert (= (and bm!306099 (not c!748752)) b!4398303))

(assert (= (and d!1325586 res!1813778) b!4398306))

(assert (= (and d!1325586 (not res!1813776)) b!4398307))

(assert (= (and b!4398307 res!1813777) b!4398302))

(assert (=> b!4398306 m!5059517))

(declare-fun m!5059805 () Bool)

(assert (=> b!4398306 m!5059805))

(assert (=> b!4398306 m!5059805))

(declare-fun m!5059807 () Bool)

(assert (=> b!4398306 m!5059807))

(declare-fun m!5059809 () Bool)

(assert (=> b!4398309 m!5059809))

(declare-fun m!5059811 () Bool)

(assert (=> b!4398309 m!5059811))

(assert (=> d!1325586 m!5059809))

(assert (=> b!4398303 m!5059517))

(assert (=> b!4398303 m!5059805))

(declare-fun m!5059813 () Bool)

(assert (=> b!4398308 m!5059813))

(declare-fun m!5059815 () Bool)

(assert (=> b!4398308 m!5059815))

(assert (=> b!4398308 m!5059815))

(declare-fun m!5059817 () Bool)

(assert (=> b!4398308 m!5059817))

(declare-fun m!5059819 () Bool)

(assert (=> b!4398308 m!5059819))

(assert (=> b!4398307 m!5059815))

(assert (=> b!4398307 m!5059815))

(assert (=> b!4398307 m!5059817))

(assert (=> b!4398302 m!5059517))

(assert (=> b!4398302 m!5059805))

(assert (=> b!4398302 m!5059805))

(assert (=> b!4398302 m!5059807))

(declare-fun m!5059821 () Bool)

(assert (=> bm!306099 m!5059821))

(declare-fun m!5059823 () Bool)

(assert (=> b!4398305 m!5059823))

(assert (=> b!4398072 d!1325586))

(declare-fun d!1325588 () Bool)

(declare-fun res!1813783 () Bool)

(declare-fun e!2738601 () Bool)

(assert (=> d!1325588 (=> res!1813783 e!2738601)))

(assert (=> d!1325588 (= res!1813783 (and ((_ is Cons!49262) (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707))))) (= (_1!27721 (h!54883 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))))) key!3918)))))

(assert (=> d!1325588 (= (containsKey!919 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))) key!3918) e!2738601)))

(declare-fun b!4398314 () Bool)

(declare-fun e!2738602 () Bool)

(assert (=> b!4398314 (= e!2738601 e!2738602)))

(declare-fun res!1813784 () Bool)

(assert (=> b!4398314 (=> (not res!1813784) (not e!2738602))))

(assert (=> b!4398314 (= res!1813784 ((_ is Cons!49262) (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707))))))))

(declare-fun b!4398315 () Bool)

(assert (=> b!4398315 (= e!2738602 (containsKey!919 (t!356320 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707))))) key!3918))))

(assert (= (and d!1325588 (not res!1813783)) b!4398314))

(assert (= (and b!4398314 res!1813784) b!4398315))

(declare-fun m!5059825 () Bool)

(assert (=> b!4398315 m!5059825))

(assert (=> b!4398072 d!1325588))

(declare-fun bm!306100 () Bool)

(declare-fun call!306105 () Bool)

(declare-fun e!2738603 () List!49389)

(assert (=> bm!306100 (= call!306105 (contains!11649 e!2738603 key!3918))))

(declare-fun c!748755 () Bool)

(declare-fun c!748754 () Bool)

(assert (=> bm!306100 (= c!748755 c!748754)))

(declare-fun d!1325590 () Bool)

(declare-fun e!2738607 () Bool)

(assert (=> d!1325590 e!2738607))

(declare-fun res!1813785 () Bool)

(assert (=> d!1325590 (=> res!1813785 e!2738607)))

(declare-fun e!2738608 () Bool)

(assert (=> d!1325590 (= res!1813785 e!2738608)))

(declare-fun res!1813787 () Bool)

(assert (=> d!1325590 (=> (not res!1813787) (not e!2738608))))

(declare-fun lt!1604216 () Bool)

(assert (=> d!1325590 (= res!1813787 (not lt!1604216))))

(declare-fun lt!1604211 () Bool)

(assert (=> d!1325590 (= lt!1604216 lt!1604211)))

(declare-fun lt!1604212 () Unit!78523)

(declare-fun e!2738606 () Unit!78523)

(assert (=> d!1325590 (= lt!1604212 e!2738606)))

(assert (=> d!1325590 (= c!748754 lt!1604211)))

(assert (=> d!1325590 (= lt!1604211 (containsKey!922 (toList!3226 lt!1604045) key!3918))))

(assert (=> d!1325590 (= (contains!11646 lt!1604045 key!3918) lt!1604216)))

(declare-fun b!4398316 () Bool)

(declare-fun e!2738605 () Unit!78523)

(declare-fun Unit!78537 () Unit!78523)

(assert (=> b!4398316 (= e!2738605 Unit!78537)))

(declare-fun b!4398317 () Bool)

(declare-fun e!2738604 () Bool)

(assert (=> b!4398317 (= e!2738604 (contains!11649 (keys!16737 lt!1604045) key!3918))))

(declare-fun b!4398318 () Bool)

(assert (=> b!4398318 (= e!2738603 (keys!16737 lt!1604045))))

(declare-fun b!4398319 () Bool)

(assert (=> b!4398319 (= e!2738606 e!2738605)))

(declare-fun c!748756 () Bool)

(assert (=> b!4398319 (= c!748756 call!306105)))

(declare-fun b!4398320 () Bool)

(assert (=> b!4398320 (= e!2738603 (getKeysList!193 (toList!3226 lt!1604045)))))

(declare-fun b!4398321 () Bool)

(assert (=> b!4398321 (= e!2738608 (not (contains!11649 (keys!16737 lt!1604045) key!3918)))))

(declare-fun b!4398322 () Bool)

(assert (=> b!4398322 (= e!2738607 e!2738604)))

(declare-fun res!1813786 () Bool)

(assert (=> b!4398322 (=> (not res!1813786) (not e!2738604))))

(assert (=> b!4398322 (= res!1813786 (isDefined!7897 (getValueByKey!591 (toList!3226 lt!1604045) key!3918)))))

(declare-fun b!4398323 () Bool)

(declare-fun lt!1604213 () Unit!78523)

(assert (=> b!4398323 (= e!2738606 lt!1604213)))

(declare-fun lt!1604217 () Unit!78523)

(assert (=> b!4398323 (= lt!1604217 (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!3226 lt!1604045) key!3918))))

(assert (=> b!4398323 (isDefined!7897 (getValueByKey!591 (toList!3226 lt!1604045) key!3918))))

(declare-fun lt!1604218 () Unit!78523)

(assert (=> b!4398323 (= lt!1604218 lt!1604217)))

(assert (=> b!4398323 (= lt!1604213 (lemmaInListThenGetKeysListContains!190 (toList!3226 lt!1604045) key!3918))))

(assert (=> b!4398323 call!306105))

(declare-fun b!4398324 () Bool)

(assert (=> b!4398324 false))

(declare-fun lt!1604215 () Unit!78523)

(declare-fun lt!1604214 () Unit!78523)

(assert (=> b!4398324 (= lt!1604215 lt!1604214)))

(assert (=> b!4398324 (containsKey!922 (toList!3226 lt!1604045) key!3918)))

(assert (=> b!4398324 (= lt!1604214 (lemmaInGetKeysListThenContainsKey!191 (toList!3226 lt!1604045) key!3918))))

(declare-fun Unit!78538 () Unit!78523)

(assert (=> b!4398324 (= e!2738605 Unit!78538)))

(assert (= (and d!1325590 c!748754) b!4398323))

(assert (= (and d!1325590 (not c!748754)) b!4398319))

(assert (= (and b!4398319 c!748756) b!4398324))

(assert (= (and b!4398319 (not c!748756)) b!4398316))

(assert (= (or b!4398323 b!4398319) bm!306100))

(assert (= (and bm!306100 c!748755) b!4398320))

(assert (= (and bm!306100 (not c!748755)) b!4398318))

(assert (= (and d!1325590 res!1813787) b!4398321))

(assert (= (and d!1325590 (not res!1813785)) b!4398322))

(assert (= (and b!4398322 res!1813786) b!4398317))

(declare-fun m!5059827 () Bool)

(assert (=> b!4398321 m!5059827))

(assert (=> b!4398321 m!5059827))

(declare-fun m!5059829 () Bool)

(assert (=> b!4398321 m!5059829))

(declare-fun m!5059831 () Bool)

(assert (=> b!4398324 m!5059831))

(declare-fun m!5059833 () Bool)

(assert (=> b!4398324 m!5059833))

(assert (=> d!1325590 m!5059831))

(assert (=> b!4398318 m!5059827))

(declare-fun m!5059835 () Bool)

(assert (=> b!4398323 m!5059835))

(declare-fun m!5059837 () Bool)

(assert (=> b!4398323 m!5059837))

(assert (=> b!4398323 m!5059837))

(declare-fun m!5059839 () Bool)

(assert (=> b!4398323 m!5059839))

(declare-fun m!5059841 () Bool)

(assert (=> b!4398323 m!5059841))

(assert (=> b!4398322 m!5059837))

(assert (=> b!4398322 m!5059837))

(assert (=> b!4398322 m!5059839))

(assert (=> b!4398317 m!5059827))

(assert (=> b!4398317 m!5059827))

(assert (=> b!4398317 m!5059829))

(declare-fun m!5059843 () Bool)

(assert (=> bm!306100 m!5059843))

(declare-fun m!5059845 () Bool)

(assert (=> b!4398320 m!5059845))

(assert (=> b!4398072 d!1325590))

(declare-fun d!1325592 () Bool)

(assert (=> d!1325592 (contains!11646 lt!1604045 key!3918)))

(declare-fun lt!1604221 () Unit!78523)

(declare-fun choose!27540 (List!49386 K!10620 V!10866 ListMap!2469) Unit!78523)

(assert (=> d!1325592 (= lt!1604221 (choose!27540 (_2!27722 (h!54884 (toList!3225 lm!1707))) key!3918 newValue!99 lt!1604045))))

(assert (=> d!1325592 (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lm!1707))))))

(assert (=> d!1325592 (= (lemmaAddToMapContainsAndNotInListThenInAcc!80 (_2!27722 (h!54884 (toList!3225 lm!1707))) key!3918 newValue!99 lt!1604045) lt!1604221)))

(declare-fun bs!727369 () Bool)

(assert (= bs!727369 d!1325592))

(assert (=> bs!727369 m!5059515))

(declare-fun m!5059847 () Bool)

(assert (=> bs!727369 m!5059847))

(declare-fun m!5059849 () Bool)

(assert (=> bs!727369 m!5059849))

(assert (=> b!4398072 d!1325592))

(declare-fun bs!727370 () Bool)

(declare-fun d!1325594 () Bool)

(assert (= bs!727370 (and d!1325594 start!427308)))

(declare-fun lambda!148370 () Int)

(assert (=> bs!727370 (= lambda!148370 lambda!148351)))

(declare-fun bs!727371 () Bool)

(assert (= bs!727371 (and d!1325594 d!1325572)))

(assert (=> bs!727371 (= lambda!148370 lambda!148369)))

(declare-fun lt!1604222 () ListMap!2469)

(assert (=> d!1325594 (invariantList!746 (toList!3226 lt!1604222))))

(declare-fun e!2738609 () ListMap!2469)

(assert (=> d!1325594 (= lt!1604222 e!2738609)))

(declare-fun c!748757 () Bool)

(assert (=> d!1325594 (= c!748757 ((_ is Cons!49263) (toList!3225 lt!1604048)))))

(assert (=> d!1325594 (forall!9350 (toList!3225 lt!1604048) lambda!148370)))

(assert (=> d!1325594 (= (extractMap!680 (toList!3225 lt!1604048)) lt!1604222)))

(declare-fun b!4398325 () Bool)

(assert (=> b!4398325 (= e!2738609 (addToMapMapFromBucket!291 (_2!27722 (h!54884 (toList!3225 lt!1604048))) (extractMap!680 (t!356321 (toList!3225 lt!1604048)))))))

(declare-fun b!4398326 () Bool)

(assert (=> b!4398326 (= e!2738609 (ListMap!2470 Nil!49262))))

(assert (= (and d!1325594 c!748757) b!4398325))

(assert (= (and d!1325594 (not c!748757)) b!4398326))

(declare-fun m!5059851 () Bool)

(assert (=> d!1325594 m!5059851))

(declare-fun m!5059853 () Bool)

(assert (=> d!1325594 m!5059853))

(declare-fun m!5059855 () Bool)

(assert (=> b!4398325 m!5059855))

(assert (=> b!4398325 m!5059855))

(declare-fun m!5059857 () Bool)

(assert (=> b!4398325 m!5059857))

(assert (=> b!4398072 d!1325594))

(declare-fun d!1325596 () Bool)

(declare-fun res!1813788 () Bool)

(declare-fun e!2738610 () Bool)

(assert (=> d!1325596 (=> res!1813788 e!2738610)))

(assert (=> d!1325596 (= res!1813788 ((_ is Nil!49263) (toList!3225 lt!1604048)))))

(assert (=> d!1325596 (= (forall!9350 (toList!3225 lt!1604048) lambda!148351) e!2738610)))

(declare-fun b!4398327 () Bool)

(declare-fun e!2738611 () Bool)

(assert (=> b!4398327 (= e!2738610 e!2738611)))

(declare-fun res!1813789 () Bool)

(assert (=> b!4398327 (=> (not res!1813789) (not e!2738611))))

(assert (=> b!4398327 (= res!1813789 (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 lt!1604048))))))

(declare-fun b!4398328 () Bool)

(assert (=> b!4398328 (= e!2738611 (forall!9350 (t!356321 (toList!3225 lt!1604048)) lambda!148351))))

(assert (= (and d!1325596 (not res!1813788)) b!4398327))

(assert (= (and b!4398327 res!1813789) b!4398328))

(declare-fun b_lambda!139445 () Bool)

(assert (=> (not b_lambda!139445) (not b!4398327)))

(declare-fun m!5059859 () Bool)

(assert (=> b!4398327 m!5059859))

(declare-fun m!5059861 () Bool)

(assert (=> b!4398328 m!5059861))

(assert (=> b!4398072 d!1325596))

(declare-fun d!1325598 () Bool)

(declare-fun tail!7105 (List!49387) List!49387)

(assert (=> d!1325598 (= (tail!7103 lm!1707) (ListLongMap!1876 (tail!7105 (toList!3225 lm!1707))))))

(declare-fun bs!727372 () Bool)

(assert (= bs!727372 d!1325598))

(declare-fun m!5059863 () Bool)

(assert (=> bs!727372 m!5059863))

(assert (=> b!4398072 d!1325598))

(declare-fun bs!727373 () Bool)

(declare-fun d!1325600 () Bool)

(assert (= bs!727373 (and d!1325600 start!427308)))

(declare-fun lambda!148371 () Int)

(assert (=> bs!727373 (= lambda!148371 lambda!148351)))

(declare-fun bs!727374 () Bool)

(assert (= bs!727374 (and d!1325600 d!1325572)))

(assert (=> bs!727374 (= lambda!148371 lambda!148369)))

(declare-fun bs!727375 () Bool)

(assert (= bs!727375 (and d!1325600 d!1325594)))

(assert (=> bs!727375 (= lambda!148371 lambda!148370)))

(declare-fun lt!1604223 () ListMap!2469)

(assert (=> d!1325600 (invariantList!746 (toList!3226 lt!1604223))))

(declare-fun e!2738612 () ListMap!2469)

(assert (=> d!1325600 (= lt!1604223 e!2738612)))

(declare-fun c!748758 () Bool)

(assert (=> d!1325600 (= c!748758 ((_ is Cons!49263) (t!356321 (toList!3225 lm!1707))))))

(assert (=> d!1325600 (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148371)))

(assert (=> d!1325600 (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604223)))

(declare-fun b!4398329 () Bool)

(assert (=> b!4398329 (= e!2738612 (addToMapMapFromBucket!291 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))))))

(declare-fun b!4398330 () Bool)

(assert (=> b!4398330 (= e!2738612 (ListMap!2470 Nil!49262))))

(assert (= (and d!1325600 c!748758) b!4398329))

(assert (= (and d!1325600 (not c!748758)) b!4398330))

(declare-fun m!5059865 () Bool)

(assert (=> d!1325600 m!5059865))

(declare-fun m!5059867 () Bool)

(assert (=> d!1325600 m!5059867))

(declare-fun m!5059869 () Bool)

(assert (=> b!4398329 m!5059869))

(assert (=> b!4398329 m!5059869))

(declare-fun m!5059871 () Bool)

(assert (=> b!4398329 m!5059871))

(assert (=> b!4398072 d!1325600))

(declare-fun bs!727376 () Bool)

(declare-fun d!1325602 () Bool)

(assert (= bs!727376 (and d!1325602 start!427308)))

(declare-fun lambda!148374 () Int)

(assert (=> bs!727376 (= lambda!148374 lambda!148351)))

(declare-fun bs!727377 () Bool)

(assert (= bs!727377 (and d!1325602 d!1325572)))

(assert (=> bs!727377 (= lambda!148374 lambda!148369)))

(declare-fun bs!727378 () Bool)

(assert (= bs!727378 (and d!1325602 d!1325594)))

(assert (=> bs!727378 (= lambda!148374 lambda!148370)))

(declare-fun bs!727379 () Bool)

(assert (= bs!727379 (and d!1325602 d!1325600)))

(assert (=> bs!727379 (= lambda!148374 lambda!148371)))

(assert (=> d!1325602 (not (containsKey!919 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))) key!3918))))

(declare-fun lt!1604226 () Unit!78523)

(declare-fun choose!27541 (ListLongMap!1875 K!10620 (_ BitVec 64) Hashable!5013) Unit!78523)

(assert (=> d!1325602 (= lt!1604226 (choose!27541 lm!1707 key!3918 (_1!27722 (h!54884 (toList!3225 lm!1707))) hashF!1247))))

(assert (=> d!1325602 (forall!9350 (toList!3225 lm!1707) lambda!148374)))

(assert (=> d!1325602 (= (lemmaNotSameHashThenCannotContainKey!92 lm!1707 key!3918 (_1!27722 (h!54884 (toList!3225 lm!1707))) hashF!1247) lt!1604226)))

(declare-fun bs!727380 () Bool)

(assert (= bs!727380 d!1325602))

(assert (=> bs!727380 m!5059521))

(assert (=> bs!727380 m!5059521))

(assert (=> bs!727380 m!5059523))

(declare-fun m!5059873 () Bool)

(assert (=> bs!727380 m!5059873))

(declare-fun m!5059875 () Bool)

(assert (=> bs!727380 m!5059875))

(assert (=> b!4398072 d!1325602))

(assert (=> b!4398084 d!1325576))

(declare-fun d!1325604 () Bool)

(declare-fun res!1813790 () Bool)

(declare-fun e!2738613 () Bool)

(assert (=> d!1325604 (=> res!1813790 e!2738613)))

(assert (=> d!1325604 (= res!1813790 (and ((_ is Cons!49262) (_2!27722 (h!54884 (toList!3225 lm!1707)))) (= (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))) key!3918)))))

(assert (=> d!1325604 (= (containsKey!919 (_2!27722 (h!54884 (toList!3225 lm!1707))) key!3918) e!2738613)))

(declare-fun b!4398331 () Bool)

(declare-fun e!2738614 () Bool)

(assert (=> b!4398331 (= e!2738613 e!2738614)))

(declare-fun res!1813791 () Bool)

(assert (=> b!4398331 (=> (not res!1813791) (not e!2738614))))

(assert (=> b!4398331 (= res!1813791 ((_ is Cons!49262) (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(declare-fun b!4398332 () Bool)

(assert (=> b!4398332 (= e!2738614 (containsKey!919 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707)))) key!3918))))

(assert (= (and d!1325604 (not res!1813790)) b!4398331))

(assert (= (and b!4398331 res!1813791) b!4398332))

(declare-fun m!5059877 () Bool)

(assert (=> b!4398332 m!5059877))

(assert (=> b!4398081 d!1325604))

(declare-fun bs!727381 () Bool)

(declare-fun d!1325606 () Bool)

(assert (= bs!727381 (and d!1325606 d!1325594)))

(declare-fun lambda!148377 () Int)

(assert (=> bs!727381 (not (= lambda!148377 lambda!148370))))

(declare-fun bs!727382 () Bool)

(assert (= bs!727382 (and d!1325606 d!1325572)))

(assert (=> bs!727382 (not (= lambda!148377 lambda!148369))))

(declare-fun bs!727383 () Bool)

(assert (= bs!727383 (and d!1325606 d!1325602)))

(assert (=> bs!727383 (not (= lambda!148377 lambda!148374))))

(declare-fun bs!727384 () Bool)

(assert (= bs!727384 (and d!1325606 d!1325600)))

(assert (=> bs!727384 (not (= lambda!148377 lambda!148371))))

(declare-fun bs!727385 () Bool)

(assert (= bs!727385 (and d!1325606 start!427308)))

(assert (=> bs!727385 (not (= lambda!148377 lambda!148351))))

(assert (=> d!1325606 true))

(assert (=> d!1325606 (= (allKeysSameHashInMap!725 lm!1707 hashF!1247) (forall!9350 (toList!3225 lm!1707) lambda!148377))))

(declare-fun bs!727386 () Bool)

(assert (= bs!727386 d!1325606))

(declare-fun m!5059879 () Bool)

(assert (=> bs!727386 m!5059879))

(assert (=> b!4398070 d!1325606))

(declare-fun d!1325608 () Bool)

(assert (=> d!1325608 true))

(assert (=> d!1325608 true))

(declare-fun lambda!148380 () Int)

(declare-fun forall!9352 (List!49386 Int) Bool)

(assert (=> d!1325608 (= (allKeysSameHash!579 newBucket!200 hash!377 hashF!1247) (forall!9352 newBucket!200 lambda!148380))))

(declare-fun bs!727387 () Bool)

(assert (= bs!727387 d!1325608))

(declare-fun m!5059881 () Bool)

(assert (=> bs!727387 m!5059881))

(assert (=> b!4398080 d!1325608))

(declare-fun d!1325610 () Bool)

(declare-fun e!2738619 () Bool)

(assert (=> d!1325610 e!2738619))

(declare-fun res!1813794 () Bool)

(assert (=> d!1325610 (=> res!1813794 e!2738619)))

(declare-fun lt!1604237 () Bool)

(assert (=> d!1325610 (= res!1813794 (not lt!1604237))))

(declare-fun lt!1604235 () Bool)

(assert (=> d!1325610 (= lt!1604237 lt!1604235)))

(declare-fun lt!1604238 () Unit!78523)

(declare-fun e!2738620 () Unit!78523)

(assert (=> d!1325610 (= lt!1604238 e!2738620)))

(declare-fun c!748761 () Bool)

(assert (=> d!1325610 (= c!748761 lt!1604235)))

(declare-fun containsKey!923 (List!49387 (_ BitVec 64)) Bool)

(assert (=> d!1325610 (= lt!1604235 (containsKey!923 (toList!3225 lm!1707) hash!377))))

(assert (=> d!1325610 (= (contains!11645 lm!1707 hash!377) lt!1604237)))

(declare-fun b!4398345 () Bool)

(declare-fun lt!1604236 () Unit!78523)

(assert (=> b!4398345 (= e!2738620 lt!1604236)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!501 (List!49387 (_ BitVec 64)) Unit!78523)

(assert (=> b!4398345 (= lt!1604236 (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!3225 lm!1707) hash!377))))

(declare-fun isDefined!7898 (Option!10604) Bool)

(assert (=> b!4398345 (isDefined!7898 (getValueByKey!590 (toList!3225 lm!1707) hash!377))))

(declare-fun b!4398346 () Bool)

(declare-fun Unit!78539 () Unit!78523)

(assert (=> b!4398346 (= e!2738620 Unit!78539)))

(declare-fun b!4398347 () Bool)

(assert (=> b!4398347 (= e!2738619 (isDefined!7898 (getValueByKey!590 (toList!3225 lm!1707) hash!377)))))

(assert (= (and d!1325610 c!748761) b!4398345))

(assert (= (and d!1325610 (not c!748761)) b!4398346))

(assert (= (and d!1325610 (not res!1813794)) b!4398347))

(declare-fun m!5059883 () Bool)

(assert (=> d!1325610 m!5059883))

(declare-fun m!5059885 () Bool)

(assert (=> b!4398345 m!5059885))

(assert (=> b!4398345 m!5059563))

(assert (=> b!4398345 m!5059563))

(declare-fun m!5059887 () Bool)

(assert (=> b!4398345 m!5059887))

(assert (=> b!4398347 m!5059563))

(assert (=> b!4398347 m!5059563))

(assert (=> b!4398347 m!5059887))

(assert (=> b!4398082 d!1325610))

(declare-fun d!1325612 () Bool)

(declare-fun e!2738621 () Bool)

(assert (=> d!1325612 e!2738621))

(declare-fun res!1813795 () Bool)

(assert (=> d!1325612 (=> res!1813795 e!2738621)))

(declare-fun lt!1604241 () Bool)

(assert (=> d!1325612 (= res!1813795 (not lt!1604241))))

(declare-fun lt!1604239 () Bool)

(assert (=> d!1325612 (= lt!1604241 lt!1604239)))

(declare-fun lt!1604242 () Unit!78523)

(declare-fun e!2738622 () Unit!78523)

(assert (=> d!1325612 (= lt!1604242 e!2738622)))

(declare-fun c!748762 () Bool)

(assert (=> d!1325612 (= c!748762 lt!1604239)))

(assert (=> d!1325612 (= lt!1604239 (containsKey!923 (toList!3225 lt!1604048) hash!377))))

(assert (=> d!1325612 (= (contains!11645 lt!1604048 hash!377) lt!1604241)))

(declare-fun b!4398348 () Bool)

(declare-fun lt!1604240 () Unit!78523)

(assert (=> b!4398348 (= e!2738622 lt!1604240)))

(assert (=> b!4398348 (= lt!1604240 (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!3225 lt!1604048) hash!377))))

(assert (=> b!4398348 (isDefined!7898 (getValueByKey!590 (toList!3225 lt!1604048) hash!377))))

(declare-fun b!4398349 () Bool)

(declare-fun Unit!78540 () Unit!78523)

(assert (=> b!4398349 (= e!2738622 Unit!78540)))

(declare-fun b!4398350 () Bool)

(assert (=> b!4398350 (= e!2738621 (isDefined!7898 (getValueByKey!590 (toList!3225 lt!1604048) hash!377)))))

(assert (= (and d!1325612 c!748762) b!4398348))

(assert (= (and d!1325612 (not c!748762)) b!4398349))

(assert (= (and d!1325612 (not res!1813795)) b!4398350))

(declare-fun m!5059889 () Bool)

(assert (=> d!1325612 m!5059889))

(declare-fun m!5059891 () Bool)

(assert (=> b!4398348 m!5059891))

(declare-fun m!5059893 () Bool)

(assert (=> b!4398348 m!5059893))

(assert (=> b!4398348 m!5059893))

(declare-fun m!5059895 () Bool)

(assert (=> b!4398348 m!5059895))

(assert (=> b!4398350 m!5059893))

(assert (=> b!4398350 m!5059893))

(assert (=> b!4398350 m!5059895))

(assert (=> b!4398071 d!1325612))

(declare-fun bs!727388 () Bool)

(declare-fun d!1325614 () Bool)

(assert (= bs!727388 (and d!1325614 d!1325594)))

(declare-fun lambda!148381 () Int)

(assert (=> bs!727388 (not (= lambda!148381 lambda!148370))))

(declare-fun bs!727389 () Bool)

(assert (= bs!727389 (and d!1325614 d!1325572)))

(assert (=> bs!727389 (not (= lambda!148381 lambda!148369))))

(declare-fun bs!727390 () Bool)

(assert (= bs!727390 (and d!1325614 d!1325606)))

(assert (=> bs!727390 (= lambda!148381 lambda!148377)))

(declare-fun bs!727391 () Bool)

(assert (= bs!727391 (and d!1325614 d!1325602)))

(assert (=> bs!727391 (not (= lambda!148381 lambda!148374))))

(declare-fun bs!727392 () Bool)

(assert (= bs!727392 (and d!1325614 d!1325600)))

(assert (=> bs!727392 (not (= lambda!148381 lambda!148371))))

(declare-fun bs!727393 () Bool)

(assert (= bs!727393 (and d!1325614 start!427308)))

(assert (=> bs!727393 (not (= lambda!148381 lambda!148351))))

(assert (=> d!1325614 true))

(assert (=> d!1325614 (= (allKeysSameHashInMap!725 lt!1604048 hashF!1247) (forall!9350 (toList!3225 lt!1604048) lambda!148381))))

(declare-fun bs!727394 () Bool)

(assert (= bs!727394 d!1325614))

(declare-fun m!5059897 () Bool)

(assert (=> bs!727394 m!5059897))

(assert (=> b!4398078 d!1325614))

(assert (=> start!427308 d!1325582))

(declare-fun d!1325616 () Bool)

(assert (=> d!1325616 (= (inv!64806 lm!1707) (isStrictlySorted!172 (toList!3225 lm!1707)))))

(declare-fun bs!727395 () Bool)

(assert (= bs!727395 d!1325616))

(assert (=> bs!727395 m!5059595))

(assert (=> start!427308 d!1325616))

(declare-fun d!1325618 () Bool)

(declare-fun res!1813800 () Bool)

(declare-fun e!2738627 () Bool)

(assert (=> d!1325618 (=> res!1813800 e!2738627)))

(assert (=> d!1325618 (= res!1813800 (not ((_ is Cons!49262) newBucket!200)))))

(assert (=> d!1325618 (= (noDuplicateKeys!621 newBucket!200) e!2738627)))

(declare-fun b!4398355 () Bool)

(declare-fun e!2738628 () Bool)

(assert (=> b!4398355 (= e!2738627 e!2738628)))

(declare-fun res!1813801 () Bool)

(assert (=> b!4398355 (=> (not res!1813801) (not e!2738628))))

(assert (=> b!4398355 (= res!1813801 (not (containsKey!919 (t!356320 newBucket!200) (_1!27721 (h!54883 newBucket!200)))))))

(declare-fun b!4398356 () Bool)

(assert (=> b!4398356 (= e!2738628 (noDuplicateKeys!621 (t!356320 newBucket!200)))))

(assert (= (and d!1325618 (not res!1813800)) b!4398355))

(assert (= (and b!4398355 res!1813801) b!4398356))

(declare-fun m!5059899 () Bool)

(assert (=> b!4398355 m!5059899))

(declare-fun m!5059901 () Bool)

(assert (=> b!4398356 m!5059901))

(assert (=> b!4398079 d!1325618))

(declare-fun b!4398361 () Bool)

(declare-fun e!2738631 () Bool)

(declare-fun tp!1331738 () Bool)

(declare-fun tp!1331739 () Bool)

(assert (=> b!4398361 (= e!2738631 (and tp!1331738 tp!1331739))))

(assert (=> b!4398077 (= tp!1331724 e!2738631)))

(assert (= (and b!4398077 ((_ is Cons!49263) (toList!3225 lm!1707))) b!4398361))

(declare-fun tp!1331742 () Bool)

(declare-fun b!4398366 () Bool)

(declare-fun e!2738634 () Bool)

(assert (=> b!4398366 (= e!2738634 (and tp_is_empty!25721 tp_is_empty!25723 tp!1331742))))

(assert (=> b!4398074 (= tp!1331723 e!2738634)))

(assert (= (and b!4398074 ((_ is Cons!49262) (t!356320 newBucket!200))) b!4398366))

(declare-fun b_lambda!139447 () Bool)

(assert (= b_lambda!139439 (or start!427308 b_lambda!139447)))

(declare-fun bs!727396 () Bool)

(declare-fun d!1325620 () Bool)

(assert (= bs!727396 (and d!1325620 start!427308)))

(assert (=> bs!727396 (= (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 lt!1604051))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lt!1604051)))))))

(declare-fun m!5059903 () Bool)

(assert (=> bs!727396 m!5059903))

(assert (=> b!4398287 d!1325620))

(declare-fun b_lambda!139449 () Bool)

(assert (= b_lambda!139443 (or start!427308 b_lambda!139449)))

(declare-fun bs!727397 () Bool)

(declare-fun d!1325622 () Bool)

(assert (= bs!727397 (and d!1325622 start!427308)))

(assert (=> bs!727397 (= (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 lm!1707))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(assert (=> bs!727397 m!5059849))

(assert (=> b!4398299 d!1325622))

(declare-fun b_lambda!139451 () Bool)

(assert (= b_lambda!139445 (or start!427308 b_lambda!139451)))

(declare-fun bs!727398 () Bool)

(declare-fun d!1325624 () Bool)

(assert (= bs!727398 (and d!1325624 start!427308)))

(assert (=> bs!727398 (= (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 lt!1604048))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lt!1604048)))))))

(declare-fun m!5059905 () Bool)

(assert (=> bs!727398 m!5059905))

(assert (=> b!4398327 d!1325624))

(declare-fun b_lambda!139453 () Bool)

(assert (= b_lambda!139419 (or start!427308 b_lambda!139453)))

(declare-fun bs!727399 () Bool)

(declare-fun d!1325626 () Bool)

(assert (= bs!727399 (and d!1325626 start!427308)))

(assert (=> bs!727399 (= (dynLambda!20754 lambda!148351 lt!1604047) (noDuplicateKeys!621 (_2!27722 lt!1604047)))))

(declare-fun m!5059907 () Bool)

(assert (=> bs!727399 m!5059907))

(assert (=> d!1325510 d!1325626))

(declare-fun b_lambda!139455 () Bool)

(assert (= b_lambda!139441 (or start!427308 b_lambda!139455)))

(declare-fun bs!727400 () Bool)

(declare-fun d!1325628 () Bool)

(assert (= bs!727400 (and d!1325628 start!427308)))

(assert (=> bs!727400 (= (dynLambda!20754 lambda!148351 (tuple2!48857 hash!377 newBucket!200)) (noDuplicateKeys!621 (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun m!5059909 () Bool)

(assert (=> bs!727400 m!5059909))

(assert (=> b!4398298 d!1325628))

(check-sat (not b!4398328) (not bs!727397) (not b!4398272) (not b!4398303) (not b!4398309) (not b!4398308) (not b!4398366) (not b!4398281) (not b!4398317) (not bm!306100) (not b!4398137) (not d!1325600) (not d!1325584) (not d!1325590) (not b!4398345) (not b_lambda!139449) (not b!4398320) (not b!4398270) (not d!1325512) (not b_lambda!139447) (not b!4398197) (not d!1325616) (not d!1325608) (not b!4398273) (not d!1325602) (not b!4398300) (not d!1325510) (not d!1325612) (not b!4398307) (not b!4398350) (not b!4398315) (not b!4398288) (not d!1325572) (not bm!306098) (not b!4398329) (not b!4398318) (not b!4398306) (not b!4398348) (not b!4398323) (not b!4398275) (not d!1325522) (not d!1325614) (not b_lambda!139453) (not b!4398305) (not b!4398269) (not d!1325574) (not b_lambda!139455) (not d!1325594) (not b!4398321) (not b!4398324) (not b!4398161) (not b!4398274) (not b!4398355) (not d!1325580) (not b!4398347) (not d!1325578) (not d!1325586) (not b!4398294) (not b!4398322) (not d!1325592) (not b!4398332) (not b!4398276) (not bs!727399) (not b!4398302) (not d!1325606) tp_is_empty!25723 (not d!1325598) (not d!1325516) tp_is_empty!25721 (not d!1325508) (not bs!727396) (not bs!727398) (not d!1325610) (not b!4398356) (not b!4398361) (not b!4398293) (not b!4398149) (not b_lambda!139451) (not bs!727400) (not bm!306099) (not b!4398325) (not d!1325534))
(check-sat)
(get-model)

(declare-fun d!1325674 () Bool)

(declare-fun res!1813860 () Bool)

(declare-fun e!2738700 () Bool)

(assert (=> d!1325674 (=> res!1813860 e!2738700)))

(assert (=> d!1325674 (= res!1813860 (and ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) key!3918)))))

(assert (=> d!1325674 (= (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918) e!2738700)))

(declare-fun b!4398461 () Bool)

(declare-fun e!2738701 () Bool)

(assert (=> b!4398461 (= e!2738700 e!2738701)))

(declare-fun res!1813861 () Bool)

(assert (=> b!4398461 (=> (not res!1813861) (not e!2738701))))

(assert (=> b!4398461 (= res!1813861 ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))

(declare-fun b!4398462 () Bool)

(assert (=> b!4398462 (= e!2738701 (containsKey!922 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) key!3918))))

(assert (= (and d!1325674 (not res!1813860)) b!4398461))

(assert (= (and b!4398461 res!1813861) b!4398462))

(declare-fun m!5060025 () Bool)

(assert (=> b!4398462 m!5060025))

(assert (=> b!4398276 d!1325674))

(declare-fun d!1325676 () Bool)

(assert (=> d!1325676 (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918)))

(declare-fun lt!1604322 () Unit!78523)

(declare-fun choose!27546 (List!49386 K!10620) Unit!78523)

(assert (=> d!1325676 (= lt!1604322 (choose!27546 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(assert (=> d!1325676 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))

(assert (=> d!1325676 (= (lemmaInGetKeysListThenContainsKey!191 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918) lt!1604322)))

(declare-fun bs!727419 () Bool)

(assert (= bs!727419 d!1325676))

(assert (=> bs!727419 m!5059751))

(declare-fun m!5060027 () Bool)

(assert (=> bs!727419 m!5060027))

(declare-fun m!5060029 () Bool)

(assert (=> bs!727419 m!5060029))

(assert (=> b!4398276 d!1325676))

(declare-fun d!1325678 () Bool)

(declare-fun res!1813862 () Bool)

(declare-fun e!2738703 () Bool)

(assert (=> d!1325678 (=> res!1813862 e!2738703)))

(assert (=> d!1325678 (= res!1813862 (and ((_ is Cons!49262) (toList!3226 lt!1604045)) (= (_1!27721 (h!54883 (toList!3226 lt!1604045))) key!3918)))))

(assert (=> d!1325678 (= (containsKey!922 (toList!3226 lt!1604045) key!3918) e!2738703)))

(declare-fun b!4398467 () Bool)

(declare-fun e!2738705 () Bool)

(assert (=> b!4398467 (= e!2738703 e!2738705)))

(declare-fun res!1813863 () Bool)

(assert (=> b!4398467 (=> (not res!1813863) (not e!2738705))))

(assert (=> b!4398467 (= res!1813863 ((_ is Cons!49262) (toList!3226 lt!1604045)))))

(declare-fun b!4398468 () Bool)

(assert (=> b!4398468 (= e!2738705 (containsKey!922 (t!356320 (toList!3226 lt!1604045)) key!3918))))

(assert (= (and d!1325678 (not res!1813862)) b!4398467))

(assert (= (and b!4398467 res!1813863) b!4398468))

(declare-fun m!5060031 () Bool)

(assert (=> b!4398468 m!5060031))

(assert (=> d!1325590 d!1325678))

(declare-fun d!1325680 () Bool)

(assert (=> d!1325680 (= (get!16035 (getValueByKey!590 (toList!3225 lm!1707) (_1!27722 (h!54884 (toList!3225 lm!1707))))) (v!43689 (getValueByKey!590 (toList!3225 lm!1707) (_1!27722 (h!54884 (toList!3225 lm!1707))))))))

(assert (=> d!1325584 d!1325680))

(declare-fun b!4398493 () Bool)

(declare-fun e!2738717 () Option!10604)

(assert (=> b!4398493 (= e!2738717 (getValueByKey!590 (t!356321 (toList!3225 lm!1707)) (_1!27722 (h!54884 (toList!3225 lm!1707)))))))

(declare-fun d!1325682 () Bool)

(declare-fun c!748789 () Bool)

(assert (=> d!1325682 (= c!748789 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (= (_1!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (h!54884 (toList!3225 lm!1707))))))))

(declare-fun e!2738716 () Option!10604)

(assert (=> d!1325682 (= (getValueByKey!590 (toList!3225 lm!1707) (_1!27722 (h!54884 (toList!3225 lm!1707)))) e!2738716)))

(declare-fun b!4398494 () Bool)

(assert (=> b!4398494 (= e!2738717 None!10603)))

(declare-fun b!4398491 () Bool)

(assert (=> b!4398491 (= e!2738716 (Some!10603 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(declare-fun b!4398492 () Bool)

(assert (=> b!4398492 (= e!2738716 e!2738717)))

(declare-fun c!748790 () Bool)

(assert (=> b!4398492 (= c!748790 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (not (= (_1!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (h!54884 (toList!3225 lm!1707)))))))))

(assert (= (and d!1325682 c!748789) b!4398491))

(assert (= (and d!1325682 (not c!748789)) b!4398492))

(assert (= (and b!4398492 c!748790) b!4398493))

(assert (= (and b!4398492 (not c!748790)) b!4398494))

(declare-fun m!5060033 () Bool)

(assert (=> b!4398493 m!5060033))

(assert (=> d!1325584 d!1325682))

(declare-fun d!1325684 () Bool)

(declare-fun res!1813880 () Bool)

(declare-fun e!2738727 () Bool)

(assert (=> d!1325684 (=> res!1813880 e!2738727)))

(assert (=> d!1325684 (= res!1813880 (and ((_ is Cons!49263) (toList!3225 lt!1604048)) (= (_1!27722 (h!54884 (toList!3225 lt!1604048))) hash!377)))))

(assert (=> d!1325684 (= (containsKey!923 (toList!3225 lt!1604048) hash!377) e!2738727)))

(declare-fun b!4398513 () Bool)

(declare-fun e!2738728 () Bool)

(assert (=> b!4398513 (= e!2738727 e!2738728)))

(declare-fun res!1813881 () Bool)

(assert (=> b!4398513 (=> (not res!1813881) (not e!2738728))))

(assert (=> b!4398513 (= res!1813881 (and (or (not ((_ is Cons!49263) (toList!3225 lt!1604048))) (bvsle (_1!27722 (h!54884 (toList!3225 lt!1604048))) hash!377)) ((_ is Cons!49263) (toList!3225 lt!1604048)) (bvslt (_1!27722 (h!54884 (toList!3225 lt!1604048))) hash!377)))))

(declare-fun b!4398514 () Bool)

(assert (=> b!4398514 (= e!2738728 (containsKey!923 (t!356321 (toList!3225 lt!1604048)) hash!377))))

(assert (= (and d!1325684 (not res!1813880)) b!4398513))

(assert (= (and b!4398513 res!1813881) b!4398514))

(declare-fun m!5060075 () Bool)

(assert (=> b!4398514 m!5060075))

(assert (=> d!1325612 d!1325684))

(declare-fun d!1325689 () Bool)

(declare-fun res!1813884 () Bool)

(declare-fun e!2738731 () Bool)

(assert (=> d!1325689 (=> res!1813884 e!2738731)))

(assert (=> d!1325689 (= res!1813884 (and ((_ is Cons!49262) (t!356320 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))))) (= (_1!27721 (h!54883 (t!356320 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707))))))) key!3918)))))

(assert (=> d!1325689 (= (containsKey!919 (t!356320 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707))))) key!3918) e!2738731)))

(declare-fun b!4398517 () Bool)

(declare-fun e!2738732 () Bool)

(assert (=> b!4398517 (= e!2738731 e!2738732)))

(declare-fun res!1813885 () Bool)

(assert (=> b!4398517 (=> (not res!1813885) (not e!2738732))))

(assert (=> b!4398517 (= res!1813885 ((_ is Cons!49262) (t!356320 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))))))))

(declare-fun b!4398518 () Bool)

(assert (=> b!4398518 (= e!2738732 (containsKey!919 (t!356320 (t!356320 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))))) key!3918))))

(assert (= (and d!1325689 (not res!1813884)) b!4398517))

(assert (= (and b!4398517 res!1813885) b!4398518))

(declare-fun m!5060085 () Bool)

(assert (=> b!4398518 m!5060085))

(assert (=> b!4398315 d!1325689))

(declare-fun d!1325694 () Bool)

(declare-fun res!1813889 () Bool)

(declare-fun e!2738734 () Bool)

(assert (=> d!1325694 (=> res!1813889 e!2738734)))

(assert (=> d!1325694 (= res!1813889 (not ((_ is Cons!49262) (_2!27722 lt!1604047))))))

(assert (=> d!1325694 (= (noDuplicateKeys!621 (_2!27722 lt!1604047)) e!2738734)))

(declare-fun b!4398522 () Bool)

(declare-fun e!2738735 () Bool)

(assert (=> b!4398522 (= e!2738734 e!2738735)))

(declare-fun res!1813890 () Bool)

(assert (=> b!4398522 (=> (not res!1813890) (not e!2738735))))

(assert (=> b!4398522 (= res!1813890 (not (containsKey!919 (t!356320 (_2!27722 lt!1604047)) (_1!27721 (h!54883 (_2!27722 lt!1604047))))))))

(declare-fun b!4398523 () Bool)

(assert (=> b!4398523 (= e!2738735 (noDuplicateKeys!621 (t!356320 (_2!27722 lt!1604047))))))

(assert (= (and d!1325694 (not res!1813889)) b!4398522))

(assert (= (and b!4398522 res!1813890) b!4398523))

(declare-fun m!5060087 () Bool)

(assert (=> b!4398522 m!5060087))

(declare-fun m!5060089 () Bool)

(assert (=> b!4398523 m!5060089))

(assert (=> bs!727399 d!1325694))

(declare-fun d!1325696 () Bool)

(declare-fun res!1813891 () Bool)

(declare-fun e!2738736 () Bool)

(assert (=> d!1325696 (=> res!1813891 e!2738736)))

(assert (=> d!1325696 (= res!1813891 (not ((_ is Cons!49262) (t!356320 newBucket!200))))))

(assert (=> d!1325696 (= (noDuplicateKeys!621 (t!356320 newBucket!200)) e!2738736)))

(declare-fun b!4398524 () Bool)

(declare-fun e!2738737 () Bool)

(assert (=> b!4398524 (= e!2738736 e!2738737)))

(declare-fun res!1813892 () Bool)

(assert (=> b!4398524 (=> (not res!1813892) (not e!2738737))))

(assert (=> b!4398524 (= res!1813892 (not (containsKey!919 (t!356320 (t!356320 newBucket!200)) (_1!27721 (h!54883 (t!356320 newBucket!200))))))))

(declare-fun b!4398525 () Bool)

(assert (=> b!4398525 (= e!2738737 (noDuplicateKeys!621 (t!356320 (t!356320 newBucket!200))))))

(assert (= (and d!1325696 (not res!1813891)) b!4398524))

(assert (= (and b!4398524 res!1813892) b!4398525))

(declare-fun m!5060091 () Bool)

(assert (=> b!4398524 m!5060091))

(declare-fun m!5060093 () Bool)

(assert (=> b!4398525 m!5060093))

(assert (=> b!4398356 d!1325696))

(declare-fun d!1325698 () Bool)

(assert (=> d!1325698 (= (tail!7105 (toList!3225 lm!1707)) (t!356321 (toList!3225 lm!1707)))))

(assert (=> d!1325598 d!1325698))

(declare-fun d!1325704 () Bool)

(declare-fun isEmpty!28274 (Option!10605) Bool)

(assert (=> d!1325704 (= (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918)) (not (isEmpty!28274 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))))

(declare-fun bs!727441 () Bool)

(assert (= bs!727441 d!1325704))

(assert (=> bs!727441 m!5059757))

(declare-fun m!5060117 () Bool)

(assert (=> bs!727441 m!5060117))

(assert (=> b!4398274 d!1325704))

(declare-fun b!4398549 () Bool)

(declare-fun e!2738753 () Option!10605)

(assert (=> b!4398549 (= e!2738753 (getValueByKey!591 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) key!3918))))

(declare-fun b!4398548 () Bool)

(declare-fun e!2738752 () Option!10605)

(assert (=> b!4398548 (= e!2738752 e!2738753)))

(declare-fun c!748802 () Bool)

(assert (=> b!4398548 (= c!748802 (and ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (not (= (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) key!3918))))))

(declare-fun b!4398550 () Bool)

(assert (=> b!4398550 (= e!2738753 None!10604)))

(declare-fun d!1325710 () Bool)

(declare-fun c!748801 () Bool)

(assert (=> d!1325710 (= c!748801 (and ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) key!3918)))))

(assert (=> d!1325710 (= (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918) e!2738752)))

(declare-fun b!4398547 () Bool)

(assert (=> b!4398547 (= e!2738752 (Some!10604 (_2!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))))

(assert (= (and d!1325710 c!748801) b!4398547))

(assert (= (and d!1325710 (not c!748801)) b!4398548))

(assert (= (and b!4398548 c!748802) b!4398549))

(assert (= (and b!4398548 (not c!748802)) b!4398550))

(declare-fun m!5060131 () Bool)

(assert (=> b!4398549 m!5060131))

(assert (=> b!4398274 d!1325710))

(declare-fun d!1325718 () Bool)

(declare-fun choose!27547 (Hashable!5013 K!10620) (_ BitVec 64))

(assert (=> d!1325718 (= (hash!1853 hashF!1247 key!3918) (choose!27547 hashF!1247 key!3918))))

(declare-fun bs!727443 () Bool)

(assert (= bs!727443 d!1325718))

(declare-fun m!5060133 () Bool)

(assert (=> bs!727443 m!5060133))

(assert (=> d!1325574 d!1325718))

(declare-fun d!1325720 () Bool)

(assert (=> d!1325720 (= (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918)) (not (isEmpty!28274 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))))

(declare-fun bs!727444 () Bool)

(assert (= bs!727444 d!1325720))

(assert (=> bs!727444 m!5059815))

(declare-fun m!5060135 () Bool)

(assert (=> bs!727444 m!5060135))

(assert (=> b!4398307 d!1325720))

(declare-fun b!4398557 () Bool)

(declare-fun e!2738757 () Option!10605)

(assert (=> b!4398557 (= e!2738757 (getValueByKey!591 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) key!3918))))

(declare-fun b!4398556 () Bool)

(declare-fun e!2738756 () Option!10605)

(assert (=> b!4398556 (= e!2738756 e!2738757)))

(declare-fun c!748804 () Bool)

(assert (=> b!4398556 (= c!748804 (and ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (not (= (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) key!3918))))))

(declare-fun b!4398558 () Bool)

(assert (=> b!4398558 (= e!2738757 None!10604)))

(declare-fun d!1325722 () Bool)

(declare-fun c!748803 () Bool)

(assert (=> d!1325722 (= c!748803 (and ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) key!3918)))))

(assert (=> d!1325722 (= (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918) e!2738756)))

(declare-fun b!4398555 () Bool)

(assert (=> b!4398555 (= e!2738756 (Some!10604 (_2!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))))

(assert (= (and d!1325722 c!748803) b!4398555))

(assert (= (and d!1325722 (not c!748803)) b!4398556))

(assert (= (and b!4398556 c!748804) b!4398557))

(assert (= (and b!4398556 (not c!748804)) b!4398558))

(declare-fun m!5060137 () Bool)

(assert (=> b!4398557 m!5060137))

(assert (=> b!4398307 d!1325722))

(declare-fun b!4398580 () Bool)

(assert (=> b!4398580 true))

(declare-fun d!1325724 () Bool)

(declare-fun e!2738767 () Bool)

(assert (=> d!1325724 e!2738767))

(declare-fun res!1813912 () Bool)

(assert (=> d!1325724 (=> (not res!1813912) (not e!2738767))))

(declare-fun lt!1604362 () List!49389)

(declare-fun noDuplicate!634 (List!49389) Bool)

(assert (=> d!1325724 (= res!1813912 (noDuplicate!634 lt!1604362))))

(assert (=> d!1325724 (= lt!1604362 (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))

(assert (=> d!1325724 (= (keys!16737 (extractMap!680 (toList!3225 lm!1707))) lt!1604362)))

(declare-fun b!4398579 () Bool)

(declare-fun res!1813913 () Bool)

(assert (=> b!4398579 (=> (not res!1813913) (not e!2738767))))

(declare-fun length!124 (List!49389) Int)

(declare-fun length!125 (List!49386) Int)

(assert (=> b!4398579 (= res!1813913 (= (length!124 lt!1604362) (length!125 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))))

(declare-fun res!1813914 () Bool)

(assert (=> b!4398580 (=> (not res!1813914) (not e!2738767))))

(declare-fun lambda!148441 () Int)

(declare-fun forall!9354 (List!49389 Int) Bool)

(assert (=> b!4398580 (= res!1813914 (forall!9354 lt!1604362 lambda!148441))))

(declare-fun b!4398581 () Bool)

(declare-fun lambda!148442 () Int)

(declare-fun content!7862 (List!49389) (InoxSet K!10620))

(declare-fun map!10741 (List!49386 Int) List!49389)

(assert (=> b!4398581 (= e!2738767 (= (content!7862 lt!1604362) (content!7862 (map!10741 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) lambda!148442))))))

(assert (= (and d!1325724 res!1813912) b!4398579))

(assert (= (and b!4398579 res!1813913) b!4398580))

(assert (= (and b!4398580 res!1813914) b!4398581))

(declare-fun m!5060147 () Bool)

(assert (=> d!1325724 m!5060147))

(assert (=> d!1325724 m!5059765))

(declare-fun m!5060149 () Bool)

(assert (=> b!4398579 m!5060149))

(declare-fun m!5060151 () Bool)

(assert (=> b!4398579 m!5060151))

(declare-fun m!5060153 () Bool)

(assert (=> b!4398580 m!5060153))

(declare-fun m!5060155 () Bool)

(assert (=> b!4398581 m!5060155))

(declare-fun m!5060157 () Bool)

(assert (=> b!4398581 m!5060157))

(assert (=> b!4398581 m!5060157))

(declare-fun m!5060159 () Bool)

(assert (=> b!4398581 m!5060159))

(assert (=> b!4398270 d!1325724))

(declare-fun d!1325728 () Bool)

(declare-fun res!1813915 () Bool)

(declare-fun e!2738770 () Bool)

(assert (=> d!1325728 (=> res!1813915 e!2738770)))

(assert (=> d!1325728 (= res!1813915 (and ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) key!3918)))))

(assert (=> d!1325728 (= (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918) e!2738770)))

(declare-fun b!4398588 () Bool)

(declare-fun e!2738771 () Bool)

(assert (=> b!4398588 (= e!2738770 e!2738771)))

(declare-fun res!1813916 () Bool)

(assert (=> b!4398588 (=> (not res!1813916) (not e!2738771))))

(assert (=> b!4398588 (= res!1813916 ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))

(declare-fun b!4398589 () Bool)

(assert (=> b!4398589 (= e!2738771 (containsKey!922 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) key!3918))))

(assert (= (and d!1325728 (not res!1813915)) b!4398588))

(assert (= (and b!4398588 res!1813916) b!4398589))

(declare-fun m!5060161 () Bool)

(assert (=> b!4398589 m!5060161))

(assert (=> b!4398309 d!1325728))

(declare-fun d!1325730 () Bool)

(assert (=> d!1325730 (containsKey!922 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918)))

(declare-fun lt!1604363 () Unit!78523)

(assert (=> d!1325730 (= lt!1604363 (choose!27546 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(assert (=> d!1325730 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))

(assert (=> d!1325730 (= (lemmaInGetKeysListThenContainsKey!191 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918) lt!1604363)))

(declare-fun bs!727445 () Bool)

(assert (= bs!727445 d!1325730))

(assert (=> bs!727445 m!5059809))

(declare-fun m!5060163 () Bool)

(assert (=> bs!727445 m!5060163))

(declare-fun m!5060165 () Bool)

(assert (=> bs!727445 m!5060165))

(assert (=> b!4398309 d!1325730))

(declare-fun bs!727454 () Bool)

(declare-fun b!4398667 () Bool)

(assert (= bs!727454 (and b!4398667 b!4398580)))

(declare-fun lambda!148451 () Int)

(assert (=> bs!727454 (= (= (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148451 lambda!148441))))

(assert (=> b!4398667 true))

(declare-fun bs!727455 () Bool)

(declare-fun b!4398666 () Bool)

(assert (= bs!727455 (and b!4398666 b!4398580)))

(declare-fun lambda!148452 () Int)

(assert (=> bs!727455 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148452 lambda!148441))))

(declare-fun bs!727456 () Bool)

(assert (= bs!727456 (and b!4398666 b!4398667)))

(assert (=> bs!727456 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148452 lambda!148451))))

(assert (=> b!4398666 true))

(declare-fun bs!727457 () Bool)

(declare-fun b!4398672 () Bool)

(assert (= bs!727457 (and b!4398672 b!4398580)))

(declare-fun lambda!148453 () Int)

(assert (=> bs!727457 (= lambda!148453 lambda!148441)))

(declare-fun bs!727458 () Bool)

(assert (= bs!727458 (and b!4398672 b!4398667)))

(assert (=> bs!727458 (= (= (toList!3226 (extractMap!680 (toList!3225 lm!1707))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148453 lambda!148451))))

(declare-fun bs!727459 () Bool)

(assert (= bs!727459 (and b!4398672 b!4398666)))

(assert (=> bs!727459 (= (= (toList!3226 (extractMap!680 (toList!3225 lm!1707))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148453 lambda!148452))))

(assert (=> b!4398672 true))

(declare-fun bs!727460 () Bool)

(declare-fun b!4398674 () Bool)

(assert (= bs!727460 (and b!4398674 b!4398581)))

(declare-fun lambda!148454 () Int)

(assert (=> bs!727460 (= lambda!148454 lambda!148442)))

(declare-fun e!2738824 () List!49389)

(assert (=> b!4398666 (= e!2738824 (Cons!49265 (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))))

(declare-fun c!748833 () Bool)

(assert (=> b!4398666 (= c!748833 (containsKey!922 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))))

(declare-fun lt!1604393 () Unit!78523)

(declare-fun e!2738825 () Unit!78523)

(assert (=> b!4398666 (= lt!1604393 e!2738825)))

(declare-fun c!748832 () Bool)

(assert (=> b!4398666 (= c!748832 (contains!11649 (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))))

(declare-fun lt!1604390 () Unit!78523)

(declare-fun e!2738823 () Unit!78523)

(assert (=> b!4398666 (= lt!1604390 e!2738823)))

(declare-fun lt!1604388 () List!49389)

(assert (=> b!4398666 (= lt!1604388 (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))))

(declare-fun lt!1604391 () Unit!78523)

(declare-fun lemmaForallContainsAddHeadPreserves!56 (List!49386 List!49389 tuple2!48854) Unit!78523)

(assert (=> b!4398666 (= lt!1604391 (lemmaForallContainsAddHeadPreserves!56 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) lt!1604388 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))))

(assert (=> b!4398666 (forall!9354 lt!1604388 lambda!148452)))

(declare-fun lt!1604392 () Unit!78523)

(assert (=> b!4398666 (= lt!1604392 lt!1604391)))

(declare-fun d!1325732 () Bool)

(declare-fun e!2738826 () Bool)

(assert (=> d!1325732 e!2738826))

(declare-fun res!1813958 () Bool)

(assert (=> d!1325732 (=> (not res!1813958) (not e!2738826))))

(declare-fun lt!1604389 () List!49389)

(assert (=> d!1325732 (= res!1813958 (noDuplicate!634 lt!1604389))))

(assert (=> d!1325732 (= lt!1604389 e!2738824)))

(declare-fun c!748831 () Bool)

(assert (=> d!1325732 (= c!748831 ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))

(assert (=> d!1325732 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))

(assert (=> d!1325732 (= (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) lt!1604389)))

(assert (=> b!4398667 false))

(declare-fun lt!1604387 () Unit!78523)

(declare-fun forallContained!1988 (List!49389 Int K!10620) Unit!78523)

(assert (=> b!4398667 (= lt!1604387 (forallContained!1988 (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) lambda!148451 (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))))))

(declare-fun Unit!78557 () Unit!78523)

(assert (=> b!4398667 (= e!2738823 Unit!78557)))

(declare-fun b!4398668 () Bool)

(declare-fun Unit!78558 () Unit!78523)

(assert (=> b!4398668 (= e!2738825 Unit!78558)))

(declare-fun b!4398669 () Bool)

(assert (=> b!4398669 false))

(declare-fun Unit!78559 () Unit!78523)

(assert (=> b!4398669 (= e!2738825 Unit!78559)))

(declare-fun b!4398670 () Bool)

(declare-fun res!1813957 () Bool)

(assert (=> b!4398670 (=> (not res!1813957) (not e!2738826))))

(assert (=> b!4398670 (= res!1813957 (= (length!124 lt!1604389) (length!125 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))))

(declare-fun b!4398671 () Bool)

(assert (=> b!4398671 (= e!2738824 Nil!49265)))

(declare-fun res!1813959 () Bool)

(assert (=> b!4398672 (=> (not res!1813959) (not e!2738826))))

(assert (=> b!4398672 (= res!1813959 (forall!9354 lt!1604389 lambda!148453))))

(declare-fun b!4398673 () Bool)

(declare-fun Unit!78560 () Unit!78523)

(assert (=> b!4398673 (= e!2738823 Unit!78560)))

(assert (=> b!4398674 (= e!2738826 (= (content!7862 lt!1604389) (content!7862 (map!10741 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) lambda!148454))))))

(assert (= (and d!1325732 c!748831) b!4398666))

(assert (= (and d!1325732 (not c!748831)) b!4398671))

(assert (= (and b!4398666 c!748833) b!4398669))

(assert (= (and b!4398666 (not c!748833)) b!4398668))

(assert (= (and b!4398666 c!748832) b!4398667))

(assert (= (and b!4398666 (not c!748832)) b!4398673))

(assert (= (and d!1325732 res!1813958) b!4398670))

(assert (= (and b!4398670 res!1813957) b!4398672))

(assert (= (and b!4398672 res!1813959) b!4398674))

(declare-fun m!5060269 () Bool)

(assert (=> d!1325732 m!5060269))

(assert (=> d!1325732 m!5060029))

(declare-fun m!5060273 () Bool)

(assert (=> b!4398666 m!5060273))

(declare-fun m!5060277 () Bool)

(assert (=> b!4398666 m!5060277))

(declare-fun m!5060279 () Bool)

(assert (=> b!4398666 m!5060279))

(declare-fun m!5060281 () Bool)

(assert (=> b!4398666 m!5060281))

(assert (=> b!4398666 m!5060277))

(declare-fun m!5060283 () Bool)

(assert (=> b!4398666 m!5060283))

(declare-fun m!5060285 () Bool)

(assert (=> b!4398672 m!5060285))

(declare-fun m!5060287 () Bool)

(assert (=> b!4398674 m!5060287))

(declare-fun m!5060289 () Bool)

(assert (=> b!4398674 m!5060289))

(assert (=> b!4398674 m!5060289))

(declare-fun m!5060291 () Bool)

(assert (=> b!4398674 m!5060291))

(declare-fun m!5060293 () Bool)

(assert (=> b!4398670 m!5060293))

(assert (=> b!4398670 m!5060151))

(assert (=> b!4398667 m!5060277))

(assert (=> b!4398667 m!5060277))

(declare-fun m!5060295 () Bool)

(assert (=> b!4398667 m!5060295))

(assert (=> b!4398272 d!1325732))

(declare-fun bs!727462 () Bool)

(declare-fun b!4398698 () Bool)

(assert (= bs!727462 (and b!4398698 b!4398580)))

(declare-fun lambda!148455 () Int)

(assert (=> bs!727462 (= (= (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148455 lambda!148441))))

(declare-fun bs!727463 () Bool)

(assert (= bs!727463 (and b!4398698 b!4398667)))

(assert (=> bs!727463 (= (= (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148455 lambda!148451))))

(declare-fun bs!727464 () Bool)

(assert (= bs!727464 (and b!4398698 b!4398666)))

(assert (=> bs!727464 (= (= (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148455 lambda!148452))))

(declare-fun bs!727465 () Bool)

(assert (= bs!727465 (and b!4398698 b!4398672)))

(assert (=> bs!727465 (= (= (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148455 lambda!148453))))

(assert (=> b!4398698 true))

(declare-fun bs!727466 () Bool)

(declare-fun b!4398697 () Bool)

(assert (= bs!727466 (and b!4398697 b!4398667)))

(declare-fun lambda!148456 () Int)

(assert (=> bs!727466 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148456 lambda!148451))))

(declare-fun bs!727467 () Bool)

(assert (= bs!727467 (and b!4398697 b!4398580)))

(assert (=> bs!727467 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148456 lambda!148441))))

(declare-fun bs!727468 () Bool)

(assert (= bs!727468 (and b!4398697 b!4398666)))

(assert (=> bs!727468 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148456 lambda!148452))))

(declare-fun bs!727469 () Bool)

(assert (= bs!727469 (and b!4398697 b!4398672)))

(assert (=> bs!727469 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148456 lambda!148453))))

(declare-fun bs!727470 () Bool)

(assert (= bs!727470 (and b!4398697 b!4398698)))

(assert (=> bs!727470 (= (= (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148456 lambda!148455))))

(assert (=> b!4398697 true))

(declare-fun bs!727471 () Bool)

(declare-fun b!4398703 () Bool)

(assert (= bs!727471 (and b!4398703 b!4398667)))

(declare-fun lambda!148457 () Int)

(assert (=> bs!727471 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148457 lambda!148451))))

(declare-fun bs!727472 () Bool)

(assert (= bs!727472 (and b!4398703 b!4398580)))

(assert (=> bs!727472 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148457 lambda!148441))))

(declare-fun bs!727473 () Bool)

(assert (= bs!727473 (and b!4398703 b!4398672)))

(assert (=> bs!727473 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148457 lambda!148453))))

(declare-fun bs!727474 () Bool)

(assert (= bs!727474 (and b!4398703 b!4398698)))

(assert (=> bs!727474 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148457 lambda!148455))))

(declare-fun bs!727475 () Bool)

(assert (= bs!727475 (and b!4398703 b!4398697)))

(assert (=> bs!727475 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))) (= lambda!148457 lambda!148456))))

(declare-fun bs!727476 () Bool)

(assert (= bs!727476 (and b!4398703 b!4398666)))

(assert (=> bs!727476 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148457 lambda!148452))))

(assert (=> b!4398703 true))

(declare-fun bs!727477 () Bool)

(declare-fun b!4398705 () Bool)

(assert (= bs!727477 (and b!4398705 b!4398581)))

(declare-fun lambda!148458 () Int)

(assert (=> bs!727477 (= lambda!148458 lambda!148442)))

(declare-fun bs!727478 () Bool)

(assert (= bs!727478 (and b!4398705 b!4398674)))

(assert (=> bs!727478 (= lambda!148458 lambda!148454)))

(declare-fun e!2738844 () List!49389)

(assert (=> b!4398697 (= e!2738844 (Cons!49265 (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))))

(declare-fun c!748840 () Bool)

(assert (=> b!4398697 (= c!748840 (containsKey!922 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))))

(declare-fun lt!1604403 () Unit!78523)

(declare-fun e!2738845 () Unit!78523)

(assert (=> b!4398697 (= lt!1604403 e!2738845)))

(declare-fun c!748839 () Bool)

(assert (=> b!4398697 (= c!748839 (contains!11649 (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))))

(declare-fun lt!1604400 () Unit!78523)

(declare-fun e!2738843 () Unit!78523)

(assert (=> b!4398697 (= lt!1604400 e!2738843)))

(declare-fun lt!1604398 () List!49389)

(assert (=> b!4398697 (= lt!1604398 (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))))

(declare-fun lt!1604401 () Unit!78523)

(assert (=> b!4398697 (= lt!1604401 (lemmaForallContainsAddHeadPreserves!56 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) lt!1604398 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))))

(assert (=> b!4398697 (forall!9354 lt!1604398 lambda!148456)))

(declare-fun lt!1604402 () Unit!78523)

(assert (=> b!4398697 (= lt!1604402 lt!1604401)))

(declare-fun d!1325804 () Bool)

(declare-fun e!2738846 () Bool)

(assert (=> d!1325804 e!2738846))

(declare-fun res!1813973 () Bool)

(assert (=> d!1325804 (=> (not res!1813973) (not e!2738846))))

(declare-fun lt!1604399 () List!49389)

(assert (=> d!1325804 (= res!1813973 (noDuplicate!634 lt!1604399))))

(assert (=> d!1325804 (= lt!1604399 e!2738844)))

(declare-fun c!748838 () Bool)

(assert (=> d!1325804 (= c!748838 ((_ is Cons!49262) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))

(assert (=> d!1325804 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))

(assert (=> d!1325804 (= (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) lt!1604399)))

(assert (=> b!4398698 false))

(declare-fun lt!1604397 () Unit!78523)

(assert (=> b!4398698 (= lt!1604397 (forallContained!1988 (getKeysList!193 (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) lambda!148455 (_1!27721 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))))

(declare-fun Unit!78561 () Unit!78523)

(assert (=> b!4398698 (= e!2738843 Unit!78561)))

(declare-fun b!4398699 () Bool)

(declare-fun Unit!78562 () Unit!78523)

(assert (=> b!4398699 (= e!2738845 Unit!78562)))

(declare-fun b!4398700 () Bool)

(assert (=> b!4398700 false))

(declare-fun Unit!78563 () Unit!78523)

(assert (=> b!4398700 (= e!2738845 Unit!78563)))

(declare-fun b!4398701 () Bool)

(declare-fun res!1813972 () Bool)

(assert (=> b!4398701 (=> (not res!1813972) (not e!2738846))))

(assert (=> b!4398701 (= res!1813972 (= (length!124 lt!1604399) (length!125 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))))

(declare-fun b!4398702 () Bool)

(assert (=> b!4398702 (= e!2738844 Nil!49265)))

(declare-fun res!1813974 () Bool)

(assert (=> b!4398703 (=> (not res!1813974) (not e!2738846))))

(assert (=> b!4398703 (= res!1813974 (forall!9354 lt!1604399 lambda!148457))))

(declare-fun b!4398704 () Bool)

(declare-fun Unit!78564 () Unit!78523)

(assert (=> b!4398704 (= e!2738843 Unit!78564)))

(assert (=> b!4398705 (= e!2738846 (= (content!7862 lt!1604399) (content!7862 (map!10741 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) lambda!148458))))))

(assert (= (and d!1325804 c!748838) b!4398697))

(assert (= (and d!1325804 (not c!748838)) b!4398702))

(assert (= (and b!4398697 c!748840) b!4398700))

(assert (= (and b!4398697 (not c!748840)) b!4398699))

(assert (= (and b!4398697 c!748839) b!4398698))

(assert (= (and b!4398697 (not c!748839)) b!4398704))

(assert (= (and d!1325804 res!1813973) b!4398701))

(assert (= (and b!4398701 res!1813972) b!4398703))

(assert (= (and b!4398703 res!1813974) b!4398705))

(declare-fun m!5060309 () Bool)

(assert (=> d!1325804 m!5060309))

(assert (=> d!1325804 m!5060165))

(declare-fun m!5060311 () Bool)

(assert (=> b!4398697 m!5060311))

(declare-fun m!5060313 () Bool)

(assert (=> b!4398697 m!5060313))

(declare-fun m!5060315 () Bool)

(assert (=> b!4398697 m!5060315))

(declare-fun m!5060317 () Bool)

(assert (=> b!4398697 m!5060317))

(assert (=> b!4398697 m!5060313))

(declare-fun m!5060319 () Bool)

(assert (=> b!4398697 m!5060319))

(declare-fun m!5060321 () Bool)

(assert (=> b!4398703 m!5060321))

(declare-fun m!5060323 () Bool)

(assert (=> b!4398705 m!5060323))

(declare-fun m!5060325 () Bool)

(assert (=> b!4398705 m!5060325))

(assert (=> b!4398705 m!5060325))

(declare-fun m!5060327 () Bool)

(assert (=> b!4398705 m!5060327))

(declare-fun m!5060329 () Bool)

(assert (=> b!4398701 m!5060329))

(declare-fun m!5060331 () Bool)

(assert (=> b!4398701 m!5060331))

(assert (=> b!4398698 m!5060313))

(assert (=> b!4398698 m!5060313))

(declare-fun m!5060333 () Bool)

(assert (=> b!4398698 m!5060333))

(assert (=> b!4398305 d!1325804))

(declare-fun d!1325812 () Bool)

(assert (=> d!1325812 (isDefined!7898 (getValueByKey!590 (toList!3225 lm!1707) hash!377))))

(declare-fun lt!1604406 () Unit!78523)

(declare-fun choose!27549 (List!49387 (_ BitVec 64)) Unit!78523)

(assert (=> d!1325812 (= lt!1604406 (choose!27549 (toList!3225 lm!1707) hash!377))))

(declare-fun e!2738856 () Bool)

(assert (=> d!1325812 e!2738856))

(declare-fun res!1813981 () Bool)

(assert (=> d!1325812 (=> (not res!1813981) (not e!2738856))))

(assert (=> d!1325812 (= res!1813981 (isStrictlySorted!172 (toList!3225 lm!1707)))))

(assert (=> d!1325812 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!3225 lm!1707) hash!377) lt!1604406)))

(declare-fun b!4398719 () Bool)

(assert (=> b!4398719 (= e!2738856 (containsKey!923 (toList!3225 lm!1707) hash!377))))

(assert (= (and d!1325812 res!1813981) b!4398719))

(assert (=> d!1325812 m!5059563))

(assert (=> d!1325812 m!5059563))

(assert (=> d!1325812 m!5059887))

(declare-fun m!5060337 () Bool)

(assert (=> d!1325812 m!5060337))

(assert (=> d!1325812 m!5059595))

(assert (=> b!4398719 m!5059883))

(assert (=> b!4398345 d!1325812))

(declare-fun d!1325818 () Bool)

(declare-fun isEmpty!28275 (Option!10604) Bool)

(assert (=> d!1325818 (= (isDefined!7898 (getValueByKey!590 (toList!3225 lm!1707) hash!377)) (not (isEmpty!28275 (getValueByKey!590 (toList!3225 lm!1707) hash!377))))))

(declare-fun bs!727480 () Bool)

(assert (= bs!727480 d!1325818))

(assert (=> bs!727480 m!5059563))

(declare-fun m!5060345 () Bool)

(assert (=> bs!727480 m!5060345))

(assert (=> b!4398345 d!1325818))

(declare-fun b!4398724 () Bool)

(declare-fun e!2738860 () Option!10604)

(assert (=> b!4398724 (= e!2738860 (getValueByKey!590 (t!356321 (toList!3225 lm!1707)) hash!377))))

(declare-fun d!1325822 () Bool)

(declare-fun c!748844 () Bool)

(assert (=> d!1325822 (= c!748844 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (= (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377)))))

(declare-fun e!2738859 () Option!10604)

(assert (=> d!1325822 (= (getValueByKey!590 (toList!3225 lm!1707) hash!377) e!2738859)))

(declare-fun b!4398725 () Bool)

(assert (=> b!4398725 (= e!2738860 None!10603)))

(declare-fun b!4398722 () Bool)

(assert (=> b!4398722 (= e!2738859 (Some!10603 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(declare-fun b!4398723 () Bool)

(assert (=> b!4398723 (= e!2738859 e!2738860)))

(declare-fun c!748845 () Bool)

(assert (=> b!4398723 (= c!748845 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (not (= (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377))))))

(assert (= (and d!1325822 c!748844) b!4398722))

(assert (= (and d!1325822 (not c!748844)) b!4398723))

(assert (= (and b!4398723 c!748845) b!4398724))

(assert (= (and b!4398723 (not c!748845)) b!4398725))

(declare-fun m!5060347 () Bool)

(assert (=> b!4398724 m!5060347))

(assert (=> b!4398345 d!1325822))

(declare-fun d!1325824 () Bool)

(declare-fun lt!1604408 () Bool)

(assert (=> d!1325824 (= lt!1604408 (select (content!7860 (toList!3225 lm!1707)) (tuple2!48857 hash!377 lt!1604049)))))

(declare-fun e!2738861 () Bool)

(assert (=> d!1325824 (= lt!1604408 e!2738861)))

(declare-fun res!1813985 () Bool)

(assert (=> d!1325824 (=> (not res!1813985) (not e!2738861))))

(assert (=> d!1325824 (= res!1813985 ((_ is Cons!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325824 (= (contains!11647 (toList!3225 lm!1707) (tuple2!48857 hash!377 lt!1604049)) lt!1604408)))

(declare-fun b!4398726 () Bool)

(declare-fun e!2738862 () Bool)

(assert (=> b!4398726 (= e!2738861 e!2738862)))

(declare-fun res!1813984 () Bool)

(assert (=> b!4398726 (=> res!1813984 e!2738862)))

(assert (=> b!4398726 (= res!1813984 (= (h!54884 (toList!3225 lm!1707)) (tuple2!48857 hash!377 lt!1604049)))))

(declare-fun b!4398727 () Bool)

(assert (=> b!4398727 (= e!2738862 (contains!11647 (t!356321 (toList!3225 lm!1707)) (tuple2!48857 hash!377 lt!1604049)))))

(assert (= (and d!1325824 res!1813985) b!4398726))

(assert (= (and b!4398726 (not res!1813984)) b!4398727))

(assert (=> d!1325824 m!5059605))

(declare-fun m!5060349 () Bool)

(assert (=> d!1325824 m!5060349))

(declare-fun m!5060351 () Bool)

(assert (=> b!4398727 m!5060351))

(assert (=> d!1325512 d!1325824))

(declare-fun d!1325828 () Bool)

(assert (=> d!1325828 (contains!11647 (toList!3225 lm!1707) (tuple2!48857 hash!377 lt!1604049))))

(assert (=> d!1325828 true))

(declare-fun _$14!881 () Unit!78523)

(assert (=> d!1325828 (= (choose!27538 (toList!3225 lm!1707) hash!377 lt!1604049) _$14!881)))

(declare-fun bs!727490 () Bool)

(assert (= bs!727490 d!1325828))

(assert (=> bs!727490 m!5059591))

(assert (=> d!1325512 d!1325828))

(declare-fun d!1325830 () Bool)

(declare-fun res!1813993 () Bool)

(declare-fun e!2738871 () Bool)

(assert (=> d!1325830 (=> res!1813993 e!2738871)))

(assert (=> d!1325830 (= res!1813993 (or ((_ is Nil!49263) (toList!3225 lm!1707)) ((_ is Nil!49263) (t!356321 (toList!3225 lm!1707)))))))

(assert (=> d!1325830 (= (isStrictlySorted!172 (toList!3225 lm!1707)) e!2738871)))

(declare-fun b!4398741 () Bool)

(declare-fun e!2738872 () Bool)

(assert (=> b!4398741 (= e!2738871 e!2738872)))

(declare-fun res!1813994 () Bool)

(assert (=> b!4398741 (=> (not res!1813994) (not e!2738872))))

(assert (=> b!4398741 (= res!1813994 (bvslt (_1!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))))))

(declare-fun b!4398742 () Bool)

(assert (=> b!4398742 (= e!2738872 (isStrictlySorted!172 (t!356321 (toList!3225 lm!1707))))))

(assert (= (and d!1325830 (not res!1813993)) b!4398741))

(assert (= (and b!4398741 res!1813994) b!4398742))

(declare-fun m!5060353 () Bool)

(assert (=> b!4398742 m!5060353))

(assert (=> d!1325512 d!1325830))

(assert (=> d!1325616 d!1325830))

(assert (=> b!4398347 d!1325818))

(assert (=> b!4398347 d!1325822))

(declare-fun d!1325832 () Bool)

(assert (=> d!1325832 (isDefined!7897 (getValueByKey!591 (toList!3226 lt!1604045) key!3918))))

(declare-fun lt!1604419 () Unit!78523)

(declare-fun choose!27550 (List!49386 K!10620) Unit!78523)

(assert (=> d!1325832 (= lt!1604419 (choose!27550 (toList!3226 lt!1604045) key!3918))))

(assert (=> d!1325832 (invariantList!746 (toList!3226 lt!1604045))))

(assert (=> d!1325832 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!3226 lt!1604045) key!3918) lt!1604419)))

(declare-fun bs!727509 () Bool)

(assert (= bs!727509 d!1325832))

(assert (=> bs!727509 m!5059837))

(assert (=> bs!727509 m!5059837))

(assert (=> bs!727509 m!5059839))

(declare-fun m!5060383 () Bool)

(assert (=> bs!727509 m!5060383))

(declare-fun m!5060385 () Bool)

(assert (=> bs!727509 m!5060385))

(assert (=> b!4398323 d!1325832))

(declare-fun d!1325840 () Bool)

(assert (=> d!1325840 (= (isDefined!7897 (getValueByKey!591 (toList!3226 lt!1604045) key!3918)) (not (isEmpty!28274 (getValueByKey!591 (toList!3226 lt!1604045) key!3918))))))

(declare-fun bs!727510 () Bool)

(assert (= bs!727510 d!1325840))

(assert (=> bs!727510 m!5059837))

(declare-fun m!5060387 () Bool)

(assert (=> bs!727510 m!5060387))

(assert (=> b!4398323 d!1325840))

(declare-fun b!4398747 () Bool)

(declare-fun e!2738876 () Option!10605)

(assert (=> b!4398747 (= e!2738876 (getValueByKey!591 (t!356320 (toList!3226 lt!1604045)) key!3918))))

(declare-fun b!4398746 () Bool)

(declare-fun e!2738875 () Option!10605)

(assert (=> b!4398746 (= e!2738875 e!2738876)))

(declare-fun c!748850 () Bool)

(assert (=> b!4398746 (= c!748850 (and ((_ is Cons!49262) (toList!3226 lt!1604045)) (not (= (_1!27721 (h!54883 (toList!3226 lt!1604045))) key!3918))))))

(declare-fun b!4398748 () Bool)

(assert (=> b!4398748 (= e!2738876 None!10604)))

(declare-fun d!1325842 () Bool)

(declare-fun c!748849 () Bool)

(assert (=> d!1325842 (= c!748849 (and ((_ is Cons!49262) (toList!3226 lt!1604045)) (= (_1!27721 (h!54883 (toList!3226 lt!1604045))) key!3918)))))

(assert (=> d!1325842 (= (getValueByKey!591 (toList!3226 lt!1604045) key!3918) e!2738875)))

(declare-fun b!4398745 () Bool)

(assert (=> b!4398745 (= e!2738875 (Some!10604 (_2!27721 (h!54883 (toList!3226 lt!1604045)))))))

(assert (= (and d!1325842 c!748849) b!4398745))

(assert (= (and d!1325842 (not c!748849)) b!4398746))

(assert (= (and b!4398746 c!748850) b!4398747))

(assert (= (and b!4398746 (not c!748850)) b!4398748))

(declare-fun m!5060389 () Bool)

(assert (=> b!4398747 m!5060389))

(assert (=> b!4398323 d!1325842))

(declare-fun d!1325846 () Bool)

(assert (=> d!1325846 (contains!11649 (getKeysList!193 (toList!3226 lt!1604045)) key!3918)))

(declare-fun lt!1604425 () Unit!78523)

(declare-fun choose!27551 (List!49386 K!10620) Unit!78523)

(assert (=> d!1325846 (= lt!1604425 (choose!27551 (toList!3226 lt!1604045) key!3918))))

(assert (=> d!1325846 (invariantList!746 (toList!3226 lt!1604045))))

(assert (=> d!1325846 (= (lemmaInListThenGetKeysListContains!190 (toList!3226 lt!1604045) key!3918) lt!1604425)))

(declare-fun bs!727516 () Bool)

(assert (= bs!727516 d!1325846))

(assert (=> bs!727516 m!5059845))

(assert (=> bs!727516 m!5059845))

(declare-fun m!5060407 () Bool)

(assert (=> bs!727516 m!5060407))

(declare-fun m!5060409 () Bool)

(assert (=> bs!727516 m!5060409))

(assert (=> bs!727516 m!5060385))

(assert (=> b!4398323 d!1325846))

(declare-fun d!1325860 () Bool)

(assert (=> d!1325860 (isDefined!7898 (getValueByKey!590 (toList!3225 lt!1604048) hash!377))))

(declare-fun lt!1604426 () Unit!78523)

(assert (=> d!1325860 (= lt!1604426 (choose!27549 (toList!3225 lt!1604048) hash!377))))

(declare-fun e!2738883 () Bool)

(assert (=> d!1325860 e!2738883))

(declare-fun res!1814003 () Bool)

(assert (=> d!1325860 (=> (not res!1814003) (not e!2738883))))

(assert (=> d!1325860 (= res!1814003 (isStrictlySorted!172 (toList!3225 lt!1604048)))))

(assert (=> d!1325860 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!3225 lt!1604048) hash!377) lt!1604426)))

(declare-fun b!4398755 () Bool)

(assert (=> b!4398755 (= e!2738883 (containsKey!923 (toList!3225 lt!1604048) hash!377))))

(assert (= (and d!1325860 res!1814003) b!4398755))

(assert (=> d!1325860 m!5059893))

(assert (=> d!1325860 m!5059893))

(assert (=> d!1325860 m!5059895))

(declare-fun m!5060413 () Bool)

(assert (=> d!1325860 m!5060413))

(declare-fun m!5060415 () Bool)

(assert (=> d!1325860 m!5060415))

(assert (=> b!4398755 m!5059889))

(assert (=> b!4398348 d!1325860))

(declare-fun d!1325864 () Bool)

(assert (=> d!1325864 (= (isDefined!7898 (getValueByKey!590 (toList!3225 lt!1604048) hash!377)) (not (isEmpty!28275 (getValueByKey!590 (toList!3225 lt!1604048) hash!377))))))

(declare-fun bs!727517 () Bool)

(assert (= bs!727517 d!1325864))

(assert (=> bs!727517 m!5059893))

(declare-fun m!5060417 () Bool)

(assert (=> bs!727517 m!5060417))

(assert (=> b!4398348 d!1325864))

(declare-fun b!4398763 () Bool)

(declare-fun e!2738888 () Option!10604)

(assert (=> b!4398763 (= e!2738888 (getValueByKey!590 (t!356321 (toList!3225 lt!1604048)) hash!377))))

(declare-fun d!1325866 () Bool)

(declare-fun c!748852 () Bool)

(assert (=> d!1325866 (= c!748852 (and ((_ is Cons!49263) (toList!3225 lt!1604048)) (= (_1!27722 (h!54884 (toList!3225 lt!1604048))) hash!377)))))

(declare-fun e!2738887 () Option!10604)

(assert (=> d!1325866 (= (getValueByKey!590 (toList!3225 lt!1604048) hash!377) e!2738887)))

(declare-fun b!4398764 () Bool)

(assert (=> b!4398764 (= e!2738888 None!10603)))

(declare-fun b!4398761 () Bool)

(assert (=> b!4398761 (= e!2738887 (Some!10603 (_2!27722 (h!54884 (toList!3225 lt!1604048)))))))

(declare-fun b!4398762 () Bool)

(assert (=> b!4398762 (= e!2738887 e!2738888)))

(declare-fun c!748853 () Bool)

(assert (=> b!4398762 (= c!748853 (and ((_ is Cons!49263) (toList!3225 lt!1604048)) (not (= (_1!27722 (h!54884 (toList!3225 lt!1604048))) hash!377))))))

(assert (= (and d!1325866 c!748852) b!4398761))

(assert (= (and d!1325866 (not c!748852)) b!4398762))

(assert (= (and b!4398762 c!748853) b!4398763))

(assert (= (and b!4398762 (not c!748853)) b!4398764))

(declare-fun m!5060419 () Bool)

(assert (=> b!4398763 m!5060419))

(assert (=> b!4398348 d!1325866))

(declare-fun bs!727611 () Bool)

(declare-fun b!4398794 () Bool)

(assert (= bs!727611 (and b!4398794 d!1325608)))

(declare-fun lambda!148504 () Int)

(assert (=> bs!727611 (not (= lambda!148504 lambda!148380))))

(assert (=> b!4398794 true))

(declare-fun bs!727612 () Bool)

(declare-fun b!4398798 () Bool)

(assert (= bs!727612 (and b!4398798 d!1325608)))

(declare-fun lambda!148505 () Int)

(assert (=> bs!727612 (not (= lambda!148505 lambda!148380))))

(declare-fun bs!727613 () Bool)

(assert (= bs!727613 (and b!4398798 b!4398794)))

(assert (=> bs!727613 (= lambda!148505 lambda!148504)))

(assert (=> b!4398798 true))

(declare-fun lambda!148506 () Int)

(assert (=> bs!727612 (not (= lambda!148506 lambda!148380))))

(declare-fun lt!1604536 () ListMap!2469)

(assert (=> bs!727613 (= (= lt!1604536 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148506 lambda!148504))))

(assert (=> b!4398798 (= (= lt!1604536 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148506 lambda!148505))))

(assert (=> b!4398798 true))

(declare-fun bs!727614 () Bool)

(declare-fun d!1325868 () Bool)

(assert (= bs!727614 (and d!1325868 d!1325608)))

(declare-fun lambda!148507 () Int)

(assert (=> bs!727614 (not (= lambda!148507 lambda!148380))))

(declare-fun bs!727615 () Bool)

(assert (= bs!727615 (and d!1325868 b!4398794)))

(declare-fun lt!1604533 () ListMap!2469)

(assert (=> bs!727615 (= (= lt!1604533 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148507 lambda!148504))))

(declare-fun bs!727616 () Bool)

(assert (= bs!727616 (and d!1325868 b!4398798)))

(assert (=> bs!727616 (= (= lt!1604533 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148507 lambda!148505))))

(assert (=> bs!727616 (= (= lt!1604533 lt!1604536) (= lambda!148507 lambda!148506))))

(assert (=> d!1325868 true))

(declare-fun e!2738908 () ListMap!2469)

(assert (=> b!4398794 (= e!2738908 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707)))))))

(declare-fun lt!1604523 () Unit!78523)

(declare-fun call!306136 () Unit!78523)

(assert (=> b!4398794 (= lt!1604523 call!306136)))

(declare-fun call!306138 () Bool)

(assert (=> b!4398794 call!306138))

(declare-fun lt!1604519 () Unit!78523)

(assert (=> b!4398794 (= lt!1604519 lt!1604523)))

(declare-fun call!306137 () Bool)

(assert (=> b!4398794 call!306137))

(declare-fun lt!1604521 () Unit!78523)

(declare-fun Unit!78569 () Unit!78523)

(assert (=> b!4398794 (= lt!1604521 Unit!78569)))

(declare-fun b!4398795 () Bool)

(declare-fun e!2738907 () Bool)

(assert (=> b!4398795 (= e!2738907 (invariantList!746 (toList!3226 lt!1604533)))))

(declare-fun b!4398796 () Bool)

(declare-fun e!2738906 () Bool)

(assert (=> b!4398796 (= e!2738906 call!306137)))

(declare-fun b!4398797 () Bool)

(declare-fun res!1814021 () Bool)

(assert (=> b!4398797 (=> (not res!1814021) (not e!2738907))))

(assert (=> b!4398797 (= res!1814021 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) lambda!148507))))

(declare-fun bm!306132 () Bool)

(declare-fun c!748861 () Bool)

(assert (=> bm!306132 (= call!306137 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (ite c!748861 lambda!148504 lambda!148506)))))

(declare-fun bm!306133 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!125 (ListMap!2469) Unit!78523)

(assert (=> bm!306133 (= call!306136 (lemmaContainsAllItsOwnKeys!125 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))))))

(assert (=> b!4398798 (= e!2738908 lt!1604536)))

(declare-fun lt!1604529 () ListMap!2469)

(declare-fun +!860 (ListMap!2469 tuple2!48854) ListMap!2469)

(assert (=> b!4398798 (= lt!1604529 (+!860 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707)))) (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))))))

(assert (=> b!4398798 (= lt!1604536 (addToMapMapFromBucket!291 (t!356320 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))) (+!860 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707)))) (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))))))))

(declare-fun lt!1604525 () Unit!78523)

(assert (=> b!4398798 (= lt!1604525 call!306136)))

(assert (=> b!4398798 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) lambda!148505)))

(declare-fun lt!1604534 () Unit!78523)

(assert (=> b!4398798 (= lt!1604534 lt!1604525)))

(assert (=> b!4398798 (forall!9352 (toList!3226 lt!1604529) lambda!148506)))

(declare-fun lt!1604531 () Unit!78523)

(declare-fun Unit!78570 () Unit!78523)

(assert (=> b!4398798 (= lt!1604531 Unit!78570)))

(assert (=> b!4398798 call!306138))

(declare-fun lt!1604526 () Unit!78523)

(declare-fun Unit!78571 () Unit!78523)

(assert (=> b!4398798 (= lt!1604526 Unit!78571)))

(declare-fun lt!1604524 () Unit!78523)

(declare-fun Unit!78572 () Unit!78523)

(assert (=> b!4398798 (= lt!1604524 Unit!78572)))

(declare-fun lt!1604528 () Unit!78523)

(declare-fun forallContained!1989 (List!49386 Int tuple2!48854) Unit!78523)

(assert (=> b!4398798 (= lt!1604528 (forallContained!1989 (toList!3226 lt!1604529) lambda!148506 (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))))))

(assert (=> b!4398798 (contains!11646 lt!1604529 (_1!27721 (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))))))

(declare-fun lt!1604520 () Unit!78523)

(declare-fun Unit!78573 () Unit!78523)

(assert (=> b!4398798 (= lt!1604520 Unit!78573)))

(assert (=> b!4398798 (contains!11646 lt!1604536 (_1!27721 (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))))))

(declare-fun lt!1604530 () Unit!78523)

(declare-fun Unit!78574 () Unit!78523)

(assert (=> b!4398798 (= lt!1604530 Unit!78574)))

(assert (=> b!4398798 (forall!9352 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))) lambda!148506)))

(declare-fun lt!1604522 () Unit!78523)

(declare-fun Unit!78575 () Unit!78523)

(assert (=> b!4398798 (= lt!1604522 Unit!78575)))

(assert (=> b!4398798 (forall!9352 (toList!3226 lt!1604529) lambda!148506)))

(declare-fun lt!1604532 () Unit!78523)

(declare-fun Unit!78576 () Unit!78523)

(assert (=> b!4398798 (= lt!1604532 Unit!78576)))

(declare-fun lt!1604535 () Unit!78523)

(declare-fun Unit!78577 () Unit!78523)

(assert (=> b!4398798 (= lt!1604535 Unit!78577)))

(declare-fun lt!1604537 () Unit!78523)

(declare-fun addForallContainsKeyThenBeforeAdding!125 (ListMap!2469 ListMap!2469 K!10620 V!10866) Unit!78523)

(assert (=> b!4398798 (= lt!1604537 (addForallContainsKeyThenBeforeAdding!125 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707)))) lt!1604536 (_1!27721 (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))) (_2!27721 (h!54883 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))))))))

(assert (=> b!4398798 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) lambda!148506)))

(declare-fun lt!1604527 () Unit!78523)

(assert (=> b!4398798 (= lt!1604527 lt!1604537)))

(assert (=> b!4398798 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) lambda!148506)))

(declare-fun lt!1604539 () Unit!78523)

(declare-fun Unit!78578 () Unit!78523)

(assert (=> b!4398798 (= lt!1604539 Unit!78578)))

(declare-fun res!1814019 () Bool)

(assert (=> b!4398798 (= res!1814019 (forall!9352 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))) lambda!148506))))

(assert (=> b!4398798 (=> (not res!1814019) (not e!2738906))))

(assert (=> b!4398798 e!2738906))

(declare-fun lt!1604538 () Unit!78523)

(declare-fun Unit!78579 () Unit!78523)

(assert (=> b!4398798 (= lt!1604538 Unit!78579)))

(assert (=> d!1325868 e!2738907))

(declare-fun res!1814020 () Bool)

(assert (=> d!1325868 (=> (not res!1814020) (not e!2738907))))

(assert (=> d!1325868 (= res!1814020 (forall!9352 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))) lambda!148507))))

(assert (=> d!1325868 (= lt!1604533 e!2738908)))

(assert (=> d!1325868 (= c!748861 ((_ is Nil!49262) (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))))))

(assert (=> d!1325868 (noDuplicateKeys!621 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))))

(assert (=> d!1325868 (= (addToMapMapFromBucket!291 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) lt!1604533)))

(declare-fun bm!306131 () Bool)

(assert (=> bm!306131 (= call!306138 (forall!9352 (ite c!748861 (toList!3226 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (t!356320 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707)))))) (ite c!748861 lambda!148504 lambda!148506)))))

(assert (= (and d!1325868 c!748861) b!4398794))

(assert (= (and d!1325868 (not c!748861)) b!4398798))

(assert (= (and b!4398798 res!1814019) b!4398796))

(assert (= (or b!4398794 b!4398798) bm!306133))

(assert (= (or b!4398794 b!4398798) bm!306131))

(assert (= (or b!4398794 b!4398796) bm!306132))

(assert (= (and d!1325868 res!1814020) b!4398797))

(assert (= (and b!4398797 res!1814021) b!4398795))

(assert (=> bm!306133 m!5059869))

(declare-fun m!5060529 () Bool)

(assert (=> bm!306133 m!5060529))

(declare-fun m!5060531 () Bool)

(assert (=> b!4398797 m!5060531))

(declare-fun m!5060533 () Bool)

(assert (=> bm!306131 m!5060533))

(declare-fun m!5060535 () Bool)

(assert (=> b!4398798 m!5060535))

(declare-fun m!5060537 () Bool)

(assert (=> b!4398798 m!5060537))

(declare-fun m!5060539 () Bool)

(assert (=> b!4398798 m!5060539))

(declare-fun m!5060541 () Bool)

(assert (=> b!4398798 m!5060541))

(assert (=> b!4398798 m!5060539))

(declare-fun m!5060543 () Bool)

(assert (=> b!4398798 m!5060543))

(declare-fun m!5060545 () Bool)

(assert (=> b!4398798 m!5060545))

(declare-fun m!5060547 () Bool)

(assert (=> b!4398798 m!5060547))

(declare-fun m!5060549 () Bool)

(assert (=> b!4398798 m!5060549))

(assert (=> b!4398798 m!5060545))

(assert (=> b!4398798 m!5060543))

(declare-fun m!5060551 () Bool)

(assert (=> b!4398798 m!5060551))

(assert (=> b!4398798 m!5059869))

(assert (=> b!4398798 m!5060535))

(assert (=> b!4398798 m!5059869))

(declare-fun m!5060553 () Bool)

(assert (=> b!4398798 m!5060553))

(declare-fun m!5060555 () Bool)

(assert (=> bm!306132 m!5060555))

(declare-fun m!5060557 () Bool)

(assert (=> d!1325868 m!5060557))

(declare-fun m!5060559 () Bool)

(assert (=> d!1325868 m!5060559))

(declare-fun m!5060561 () Bool)

(assert (=> b!4398795 m!5060561))

(assert (=> b!4398329 d!1325868))

(declare-fun bs!727617 () Bool)

(declare-fun d!1325898 () Bool)

(assert (= bs!727617 (and d!1325898 d!1325594)))

(declare-fun lambda!148508 () Int)

(assert (=> bs!727617 (= lambda!148508 lambda!148370)))

(declare-fun bs!727618 () Bool)

(assert (= bs!727618 (and d!1325898 d!1325572)))

(assert (=> bs!727618 (= lambda!148508 lambda!148369)))

(declare-fun bs!727619 () Bool)

(assert (= bs!727619 (and d!1325898 d!1325606)))

(assert (=> bs!727619 (not (= lambda!148508 lambda!148377))))

(declare-fun bs!727620 () Bool)

(assert (= bs!727620 (and d!1325898 d!1325602)))

(assert (=> bs!727620 (= lambda!148508 lambda!148374)))

(declare-fun bs!727621 () Bool)

(assert (= bs!727621 (and d!1325898 d!1325600)))

(assert (=> bs!727621 (= lambda!148508 lambda!148371)))

(declare-fun bs!727622 () Bool)

(assert (= bs!727622 (and d!1325898 d!1325614)))

(assert (=> bs!727622 (not (= lambda!148508 lambda!148381))))

(declare-fun bs!727623 () Bool)

(assert (= bs!727623 (and d!1325898 start!427308)))

(assert (=> bs!727623 (= lambda!148508 lambda!148351)))

(declare-fun lt!1604540 () ListMap!2469)

(assert (=> d!1325898 (invariantList!746 (toList!3226 lt!1604540))))

(declare-fun e!2738909 () ListMap!2469)

(assert (=> d!1325898 (= lt!1604540 e!2738909)))

(declare-fun c!748862 () Bool)

(assert (=> d!1325898 (= c!748862 ((_ is Cons!49263) (t!356321 (t!356321 (toList!3225 lm!1707)))))))

(assert (=> d!1325898 (forall!9350 (t!356321 (t!356321 (toList!3225 lm!1707))) lambda!148508)))

(assert (=> d!1325898 (= (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707)))) lt!1604540)))

(declare-fun b!4398801 () Bool)

(assert (=> b!4398801 (= e!2738909 (addToMapMapFromBucket!291 (_2!27722 (h!54884 (t!356321 (t!356321 (toList!3225 lm!1707))))) (extractMap!680 (t!356321 (t!356321 (t!356321 (toList!3225 lm!1707)))))))))

(declare-fun b!4398802 () Bool)

(assert (=> b!4398802 (= e!2738909 (ListMap!2470 Nil!49262))))

(assert (= (and d!1325898 c!748862) b!4398801))

(assert (= (and d!1325898 (not c!748862)) b!4398802))

(declare-fun m!5060563 () Bool)

(assert (=> d!1325898 m!5060563))

(declare-fun m!5060565 () Bool)

(assert (=> d!1325898 m!5060565))

(declare-fun m!5060567 () Bool)

(assert (=> b!4398801 m!5060567))

(assert (=> b!4398801 m!5060567))

(declare-fun m!5060569 () Bool)

(assert (=> b!4398801 m!5060569))

(assert (=> b!4398329 d!1325898))

(declare-fun d!1325900 () Bool)

(declare-fun res!1814022 () Bool)

(declare-fun e!2738910 () Bool)

(assert (=> d!1325900 (=> res!1814022 e!2738910)))

(assert (=> d!1325900 (= res!1814022 (not ((_ is Cons!49262) (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(assert (=> d!1325900 (= (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lm!1707)))) e!2738910)))

(declare-fun b!4398803 () Bool)

(declare-fun e!2738911 () Bool)

(assert (=> b!4398803 (= e!2738910 e!2738911)))

(declare-fun res!1814023 () Bool)

(assert (=> b!4398803 (=> (not res!1814023) (not e!2738911))))

(assert (=> b!4398803 (= res!1814023 (not (containsKey!919 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707)))) (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))))

(declare-fun b!4398804 () Bool)

(assert (=> b!4398804 (= e!2738911 (noDuplicateKeys!621 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(assert (= (and d!1325900 (not res!1814022)) b!4398803))

(assert (= (and b!4398803 res!1814023) b!4398804))

(declare-fun m!5060571 () Bool)

(assert (=> b!4398803 m!5060571))

(declare-fun m!5060573 () Bool)

(assert (=> b!4398804 m!5060573))

(assert (=> bs!727397 d!1325900))

(declare-fun d!1325902 () Bool)

(declare-fun res!1814024 () Bool)

(declare-fun e!2738912 () Bool)

(assert (=> d!1325902 (=> res!1814024 e!2738912)))

(assert (=> d!1325902 (= res!1814024 ((_ is Nil!49263) (t!356321 (toList!3225 lt!1604048))))))

(assert (=> d!1325902 (= (forall!9350 (t!356321 (toList!3225 lt!1604048)) lambda!148351) e!2738912)))

(declare-fun b!4398805 () Bool)

(declare-fun e!2738913 () Bool)

(assert (=> b!4398805 (= e!2738912 e!2738913)))

(declare-fun res!1814025 () Bool)

(assert (=> b!4398805 (=> (not res!1814025) (not e!2738913))))

(assert (=> b!4398805 (= res!1814025 (dynLambda!20754 lambda!148351 (h!54884 (t!356321 (toList!3225 lt!1604048)))))))

(declare-fun b!4398806 () Bool)

(assert (=> b!4398806 (= e!2738913 (forall!9350 (t!356321 (t!356321 (toList!3225 lt!1604048))) lambda!148351))))

(assert (= (and d!1325902 (not res!1814024)) b!4398805))

(assert (= (and b!4398805 res!1814025) b!4398806))

(declare-fun b_lambda!139505 () Bool)

(assert (=> (not b_lambda!139505) (not b!4398805)))

(declare-fun m!5060575 () Bool)

(assert (=> b!4398805 m!5060575))

(declare-fun m!5060577 () Bool)

(assert (=> b!4398806 m!5060577))

(assert (=> b!4398328 d!1325902))

(assert (=> b!4398350 d!1325864))

(assert (=> b!4398350 d!1325866))

(declare-fun bs!727624 () Bool)

(declare-fun b!4398808 () Bool)

(assert (= bs!727624 (and b!4398808 b!4398667)))

(declare-fun lambda!148509 () Int)

(assert (=> bs!727624 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148509 lambda!148451))))

(declare-fun bs!727625 () Bool)

(assert (= bs!727625 (and b!4398808 b!4398580)))

(assert (=> bs!727625 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148509 lambda!148441))))

(declare-fun bs!727626 () Bool)

(assert (= bs!727626 (and b!4398808 b!4398703)))

(assert (=> bs!727626 (= lambda!148509 lambda!148457)))

(declare-fun bs!727627 () Bool)

(assert (= bs!727627 (and b!4398808 b!4398672)))

(assert (=> bs!727627 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148509 lambda!148453))))

(declare-fun bs!727628 () Bool)

(assert (= bs!727628 (and b!4398808 b!4398698)))

(assert (=> bs!727628 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148509 lambda!148455))))

(declare-fun bs!727629 () Bool)

(assert (= bs!727629 (and b!4398808 b!4398697)))

(assert (=> bs!727629 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))) (= lambda!148509 lambda!148456))))

(declare-fun bs!727630 () Bool)

(assert (= bs!727630 (and b!4398808 b!4398666)))

(assert (=> bs!727630 (= (= (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148509 lambda!148452))))

(assert (=> b!4398808 true))

(declare-fun bs!727631 () Bool)

(declare-fun b!4398809 () Bool)

(assert (= bs!727631 (and b!4398809 b!4398581)))

(declare-fun lambda!148510 () Int)

(assert (=> bs!727631 (= lambda!148510 lambda!148442)))

(declare-fun bs!727632 () Bool)

(assert (= bs!727632 (and b!4398809 b!4398674)))

(assert (=> bs!727632 (= lambda!148510 lambda!148454)))

(declare-fun bs!727633 () Bool)

(assert (= bs!727633 (and b!4398809 b!4398705)))

(assert (=> bs!727633 (= lambda!148510 lambda!148458)))

(declare-fun d!1325904 () Bool)

(declare-fun e!2738914 () Bool)

(assert (=> d!1325904 e!2738914))

(declare-fun res!1814026 () Bool)

(assert (=> d!1325904 (=> (not res!1814026) (not e!2738914))))

(declare-fun lt!1604541 () List!49389)

(assert (=> d!1325904 (= res!1814026 (noDuplicate!634 lt!1604541))))

(assert (=> d!1325904 (= lt!1604541 (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))))

(assert (=> d!1325904 (= (keys!16737 (extractMap!680 (toList!3225 lt!1604048))) lt!1604541)))

(declare-fun b!4398807 () Bool)

(declare-fun res!1814027 () Bool)

(assert (=> b!4398807 (=> (not res!1814027) (not e!2738914))))

(assert (=> b!4398807 (= res!1814027 (= (length!124 lt!1604541) (length!125 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))))

(declare-fun res!1814028 () Bool)

(assert (=> b!4398808 (=> (not res!1814028) (not e!2738914))))

(assert (=> b!4398808 (= res!1814028 (forall!9354 lt!1604541 lambda!148509))))

(assert (=> b!4398809 (= e!2738914 (= (content!7862 lt!1604541) (content!7862 (map!10741 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) lambda!148510))))))

(assert (= (and d!1325904 res!1814026) b!4398807))

(assert (= (and b!4398807 res!1814027) b!4398808))

(assert (= (and b!4398808 res!1814028) b!4398809))

(declare-fun m!5060579 () Bool)

(assert (=> d!1325904 m!5060579))

(assert (=> d!1325904 m!5059823))

(declare-fun m!5060581 () Bool)

(assert (=> b!4398807 m!5060581))

(assert (=> b!4398807 m!5060331))

(declare-fun m!5060583 () Bool)

(assert (=> b!4398808 m!5060583))

(declare-fun m!5060585 () Bool)

(assert (=> b!4398809 m!5060585))

(declare-fun m!5060587 () Bool)

(assert (=> b!4398809 m!5060587))

(assert (=> b!4398809 m!5060587))

(declare-fun m!5060589 () Bool)

(assert (=> b!4398809 m!5060589))

(assert (=> b!4398303 d!1325904))

(assert (=> d!1325592 d!1325590))

(declare-fun d!1325906 () Bool)

(assert (=> d!1325906 (contains!11646 lt!1604045 key!3918)))

(assert (=> d!1325906 true))

(declare-fun _$11!1191 () Unit!78523)

(assert (=> d!1325906 (= (choose!27540 (_2!27722 (h!54884 (toList!3225 lm!1707))) key!3918 newValue!99 lt!1604045) _$11!1191)))

(declare-fun bs!727634 () Bool)

(assert (= bs!727634 d!1325906))

(assert (=> bs!727634 m!5059515))

(assert (=> d!1325592 d!1325906))

(assert (=> d!1325592 d!1325900))

(assert (=> d!1325586 d!1325728))

(declare-fun d!1325908 () Bool)

(declare-fun lt!1604544 () Bool)

(assert (=> d!1325908 (= lt!1604544 (select (content!7862 (keys!16737 lt!1604045)) key!3918))))

(declare-fun e!2738920 () Bool)

(assert (=> d!1325908 (= lt!1604544 e!2738920)))

(declare-fun res!1814034 () Bool)

(assert (=> d!1325908 (=> (not res!1814034) (not e!2738920))))

(assert (=> d!1325908 (= res!1814034 ((_ is Cons!49265) (keys!16737 lt!1604045)))))

(assert (=> d!1325908 (= (contains!11649 (keys!16737 lt!1604045) key!3918) lt!1604544)))

(declare-fun b!4398814 () Bool)

(declare-fun e!2738919 () Bool)

(assert (=> b!4398814 (= e!2738920 e!2738919)))

(declare-fun res!1814033 () Bool)

(assert (=> b!4398814 (=> res!1814033 e!2738919)))

(assert (=> b!4398814 (= res!1814033 (= (h!54888 (keys!16737 lt!1604045)) key!3918))))

(declare-fun b!4398815 () Bool)

(assert (=> b!4398815 (= e!2738919 (contains!11649 (t!356323 (keys!16737 lt!1604045)) key!3918))))

(assert (= (and d!1325908 res!1814034) b!4398814))

(assert (= (and b!4398814 (not res!1814033)) b!4398815))

(assert (=> d!1325908 m!5059827))

(declare-fun m!5060591 () Bool)

(assert (=> d!1325908 m!5060591))

(declare-fun m!5060593 () Bool)

(assert (=> d!1325908 m!5060593))

(declare-fun m!5060595 () Bool)

(assert (=> b!4398815 m!5060595))

(assert (=> b!4398321 d!1325908))

(declare-fun bs!727635 () Bool)

(declare-fun b!4398817 () Bool)

(assert (= bs!727635 (and b!4398817 b!4398580)))

(declare-fun lambda!148511 () Int)

(assert (=> bs!727635 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148511 lambda!148441))))

(declare-fun bs!727636 () Bool)

(assert (= bs!727636 (and b!4398817 b!4398703)))

(assert (=> bs!727636 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148511 lambda!148457))))

(declare-fun bs!727637 () Bool)

(assert (= bs!727637 (and b!4398817 b!4398808)))

(assert (=> bs!727637 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148511 lambda!148509))))

(declare-fun bs!727638 () Bool)

(assert (= bs!727638 (and b!4398817 b!4398667)))

(assert (=> bs!727638 (= (= (toList!3226 lt!1604045) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148511 lambda!148451))))

(declare-fun bs!727639 () Bool)

(assert (= bs!727639 (and b!4398817 b!4398672)))

(assert (=> bs!727639 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148511 lambda!148453))))

(declare-fun bs!727640 () Bool)

(assert (= bs!727640 (and b!4398817 b!4398698)))

(assert (=> bs!727640 (= (= (toList!3226 lt!1604045) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148511 lambda!148455))))

(declare-fun bs!727641 () Bool)

(assert (= bs!727641 (and b!4398817 b!4398697)))

(assert (=> bs!727641 (= (= (toList!3226 lt!1604045) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))) (= lambda!148511 lambda!148456))))

(declare-fun bs!727642 () Bool)

(assert (= bs!727642 (and b!4398817 b!4398666)))

(assert (=> bs!727642 (= (= (toList!3226 lt!1604045) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148511 lambda!148452))))

(assert (=> b!4398817 true))

(declare-fun bs!727643 () Bool)

(declare-fun b!4398818 () Bool)

(assert (= bs!727643 (and b!4398818 b!4398581)))

(declare-fun lambda!148512 () Int)

(assert (=> bs!727643 (= lambda!148512 lambda!148442)))

(declare-fun bs!727644 () Bool)

(assert (= bs!727644 (and b!4398818 b!4398674)))

(assert (=> bs!727644 (= lambda!148512 lambda!148454)))

(declare-fun bs!727645 () Bool)

(assert (= bs!727645 (and b!4398818 b!4398705)))

(assert (=> bs!727645 (= lambda!148512 lambda!148458)))

(declare-fun bs!727646 () Bool)

(assert (= bs!727646 (and b!4398818 b!4398809)))

(assert (=> bs!727646 (= lambda!148512 lambda!148510)))

(declare-fun d!1325910 () Bool)

(declare-fun e!2738921 () Bool)

(assert (=> d!1325910 e!2738921))

(declare-fun res!1814035 () Bool)

(assert (=> d!1325910 (=> (not res!1814035) (not e!2738921))))

(declare-fun lt!1604545 () List!49389)

(assert (=> d!1325910 (= res!1814035 (noDuplicate!634 lt!1604545))))

(assert (=> d!1325910 (= lt!1604545 (getKeysList!193 (toList!3226 lt!1604045)))))

(assert (=> d!1325910 (= (keys!16737 lt!1604045) lt!1604545)))

(declare-fun b!4398816 () Bool)

(declare-fun res!1814036 () Bool)

(assert (=> b!4398816 (=> (not res!1814036) (not e!2738921))))

(assert (=> b!4398816 (= res!1814036 (= (length!124 lt!1604545) (length!125 (toList!3226 lt!1604045))))))

(declare-fun res!1814037 () Bool)

(assert (=> b!4398817 (=> (not res!1814037) (not e!2738921))))

(assert (=> b!4398817 (= res!1814037 (forall!9354 lt!1604545 lambda!148511))))

(assert (=> b!4398818 (= e!2738921 (= (content!7862 lt!1604545) (content!7862 (map!10741 (toList!3226 lt!1604045) lambda!148512))))))

(assert (= (and d!1325910 res!1814035) b!4398816))

(assert (= (and b!4398816 res!1814036) b!4398817))

(assert (= (and b!4398817 res!1814037) b!4398818))

(declare-fun m!5060597 () Bool)

(assert (=> d!1325910 m!5060597))

(assert (=> d!1325910 m!5059845))

(declare-fun m!5060599 () Bool)

(assert (=> b!4398816 m!5060599))

(declare-fun m!5060601 () Bool)

(assert (=> b!4398816 m!5060601))

(declare-fun m!5060603 () Bool)

(assert (=> b!4398817 m!5060603))

(declare-fun m!5060605 () Bool)

(assert (=> b!4398818 m!5060605))

(declare-fun m!5060607 () Bool)

(assert (=> b!4398818 m!5060607))

(assert (=> b!4398818 m!5060607))

(declare-fun m!5060609 () Bool)

(assert (=> b!4398818 m!5060609))

(assert (=> b!4398321 d!1325910))

(declare-fun b!4398819 () Bool)

(declare-fun e!2738923 () List!49386)

(assert (=> b!4398819 (= e!2738923 (t!356320 (t!356320 lt!1604049)))))

(declare-fun d!1325912 () Bool)

(declare-fun lt!1604546 () List!49386)

(assert (=> d!1325912 (not (containsKey!919 lt!1604546 key!3918))))

(assert (=> d!1325912 (= lt!1604546 e!2738923)))

(declare-fun c!748863 () Bool)

(assert (=> d!1325912 (= c!748863 (and ((_ is Cons!49262) (t!356320 lt!1604049)) (= (_1!27721 (h!54883 (t!356320 lt!1604049))) key!3918)))))

(assert (=> d!1325912 (noDuplicateKeys!621 (t!356320 lt!1604049))))

(assert (=> d!1325912 (= (removePairForKey!589 (t!356320 lt!1604049) key!3918) lt!1604546)))

(declare-fun b!4398822 () Bool)

(declare-fun e!2738922 () List!49386)

(assert (=> b!4398822 (= e!2738922 Nil!49262)))

(declare-fun b!4398821 () Bool)

(assert (=> b!4398821 (= e!2738922 (Cons!49262 (h!54883 (t!356320 lt!1604049)) (removePairForKey!589 (t!356320 (t!356320 lt!1604049)) key!3918)))))

(declare-fun b!4398820 () Bool)

(assert (=> b!4398820 (= e!2738923 e!2738922)))

(declare-fun c!748864 () Bool)

(assert (=> b!4398820 (= c!748864 ((_ is Cons!49262) (t!356320 lt!1604049)))))

(assert (= (and d!1325912 c!748863) b!4398819))

(assert (= (and d!1325912 (not c!748863)) b!4398820))

(assert (= (and b!4398820 c!748864) b!4398821))

(assert (= (and b!4398820 (not c!748864)) b!4398822))

(declare-fun m!5060611 () Bool)

(assert (=> d!1325912 m!5060611))

(declare-fun m!5060613 () Bool)

(assert (=> d!1325912 m!5060613))

(declare-fun m!5060615 () Bool)

(assert (=> b!4398821 m!5060615))

(assert (=> b!4398197 d!1325912))

(declare-fun d!1325914 () Bool)

(declare-fun c!748867 () Bool)

(assert (=> d!1325914 (= c!748867 ((_ is Nil!49263) (toList!3225 lm!1707)))))

(declare-fun e!2738926 () (InoxSet tuple2!48856))

(assert (=> d!1325914 (= (content!7860 (toList!3225 lm!1707)) e!2738926)))

(declare-fun b!4398827 () Bool)

(assert (=> b!4398827 (= e!2738926 ((as const (Array tuple2!48856 Bool)) false))))

(declare-fun b!4398828 () Bool)

(assert (=> b!4398828 (= e!2738926 ((_ map or) (store ((as const (Array tuple2!48856 Bool)) false) (h!54884 (toList!3225 lm!1707)) true) (content!7860 (t!356321 (toList!3225 lm!1707)))))))

(assert (= (and d!1325914 c!748867) b!4398827))

(assert (= (and d!1325914 (not c!748867)) b!4398828))

(declare-fun m!5060617 () Bool)

(assert (=> b!4398828 m!5060617))

(declare-fun m!5060619 () Bool)

(assert (=> b!4398828 m!5060619))

(assert (=> d!1325516 d!1325914))

(assert (=> d!1325602 d!1325588))

(assert (=> d!1325602 d!1325584))

(declare-fun d!1325916 () Bool)

(assert (=> d!1325916 (not (containsKey!919 (apply!11473 lm!1707 (_1!27722 (h!54884 (toList!3225 lm!1707)))) key!3918))))

(assert (=> d!1325916 true))

(declare-fun _$39!316 () Unit!78523)

(assert (=> d!1325916 (= (choose!27541 lm!1707 key!3918 (_1!27722 (h!54884 (toList!3225 lm!1707))) hashF!1247) _$39!316)))

(declare-fun bs!727647 () Bool)

(assert (= bs!727647 d!1325916))

(assert (=> bs!727647 m!5059521))

(assert (=> bs!727647 m!5059521))

(assert (=> bs!727647 m!5059523))

(assert (=> d!1325602 d!1325916))

(declare-fun d!1325918 () Bool)

(declare-fun res!1814038 () Bool)

(declare-fun e!2738927 () Bool)

(assert (=> d!1325918 (=> res!1814038 e!2738927)))

(assert (=> d!1325918 (= res!1814038 ((_ is Nil!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325918 (= (forall!9350 (toList!3225 lm!1707) lambda!148374) e!2738927)))

(declare-fun b!4398829 () Bool)

(declare-fun e!2738928 () Bool)

(assert (=> b!4398829 (= e!2738927 e!2738928)))

(declare-fun res!1814039 () Bool)

(assert (=> b!4398829 (=> (not res!1814039) (not e!2738928))))

(assert (=> b!4398829 (= res!1814039 (dynLambda!20754 lambda!148374 (h!54884 (toList!3225 lm!1707))))))

(declare-fun b!4398830 () Bool)

(assert (=> b!4398830 (= e!2738928 (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148374))))

(assert (= (and d!1325918 (not res!1814038)) b!4398829))

(assert (= (and b!4398829 res!1814039) b!4398830))

(declare-fun b_lambda!139507 () Bool)

(assert (=> (not b_lambda!139507) (not b!4398829)))

(declare-fun m!5060621 () Bool)

(assert (=> b!4398829 m!5060621))

(declare-fun m!5060623 () Bool)

(assert (=> b!4398830 m!5060623))

(assert (=> d!1325602 d!1325918))

(assert (=> b!4398137 d!1325516))

(declare-fun e!2738930 () Option!10604)

(declare-fun b!4398833 () Bool)

(assert (=> b!4398833 (= e!2738930 (getValueByKey!590 (t!356321 (toList!3225 lt!1604199)) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun d!1325920 () Bool)

(declare-fun c!748868 () Bool)

(assert (=> d!1325920 (= c!748868 (and ((_ is Cons!49263) (toList!3225 lt!1604199)) (= (_1!27722 (h!54884 (toList!3225 lt!1604199))) (_1!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(declare-fun e!2738929 () Option!10604)

(assert (=> d!1325920 (= (getValueByKey!590 (toList!3225 lt!1604199) (_1!27722 (tuple2!48857 hash!377 newBucket!200))) e!2738929)))

(declare-fun b!4398834 () Bool)

(assert (=> b!4398834 (= e!2738930 None!10603)))

(declare-fun b!4398831 () Bool)

(assert (=> b!4398831 (= e!2738929 (Some!10603 (_2!27722 (h!54884 (toList!3225 lt!1604199)))))))

(declare-fun b!4398832 () Bool)

(assert (=> b!4398832 (= e!2738929 e!2738930)))

(declare-fun c!748869 () Bool)

(assert (=> b!4398832 (= c!748869 (and ((_ is Cons!49263) (toList!3225 lt!1604199)) (not (= (_1!27722 (h!54884 (toList!3225 lt!1604199))) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))))

(assert (= (and d!1325920 c!748868) b!4398831))

(assert (= (and d!1325920 (not c!748868)) b!4398832))

(assert (= (and b!4398832 c!748869) b!4398833))

(assert (= (and b!4398832 (not c!748869)) b!4398834))

(declare-fun m!5060625 () Bool)

(assert (=> b!4398833 m!5060625))

(assert (=> b!4398293 d!1325920))

(declare-fun d!1325922 () Bool)

(declare-fun noDuplicatedKeys!150 (List!49386) Bool)

(assert (=> d!1325922 (= (invariantList!746 (toList!3226 lt!1604223)) (noDuplicatedKeys!150 (toList!3226 lt!1604223)))))

(declare-fun bs!727648 () Bool)

(assert (= bs!727648 d!1325922))

(declare-fun m!5060627 () Bool)

(assert (=> bs!727648 m!5060627))

(assert (=> d!1325600 d!1325922))

(declare-fun d!1325924 () Bool)

(declare-fun res!1814040 () Bool)

(declare-fun e!2738931 () Bool)

(assert (=> d!1325924 (=> res!1814040 e!2738931)))

(assert (=> d!1325924 (= res!1814040 ((_ is Nil!49263) (t!356321 (toList!3225 lm!1707))))))

(assert (=> d!1325924 (= (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148371) e!2738931)))

(declare-fun b!4398835 () Bool)

(declare-fun e!2738932 () Bool)

(assert (=> b!4398835 (= e!2738931 e!2738932)))

(declare-fun res!1814041 () Bool)

(assert (=> b!4398835 (=> (not res!1814041) (not e!2738932))))

(assert (=> b!4398835 (= res!1814041 (dynLambda!20754 lambda!148371 (h!54884 (t!356321 (toList!3225 lm!1707)))))))

(declare-fun b!4398836 () Bool)

(assert (=> b!4398836 (= e!2738932 (forall!9350 (t!356321 (t!356321 (toList!3225 lm!1707))) lambda!148371))))

(assert (= (and d!1325924 (not res!1814040)) b!4398835))

(assert (= (and b!4398835 res!1814041) b!4398836))

(declare-fun b_lambda!139509 () Bool)

(assert (=> (not b_lambda!139509) (not b!4398835)))

(declare-fun m!5060629 () Bool)

(assert (=> b!4398835 m!5060629))

(declare-fun m!5060631 () Bool)

(assert (=> b!4398836 m!5060631))

(assert (=> d!1325600 d!1325924))

(declare-fun d!1325926 () Bool)

(declare-fun res!1814042 () Bool)

(declare-fun e!2738933 () Bool)

(assert (=> d!1325926 (=> res!1814042 e!2738933)))

(assert (=> d!1325926 (= res!1814042 (not ((_ is Cons!49262) (_2!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(assert (=> d!1325926 (= (noDuplicateKeys!621 (_2!27722 (tuple2!48857 hash!377 newBucket!200))) e!2738933)))

(declare-fun b!4398837 () Bool)

(declare-fun e!2738934 () Bool)

(assert (=> b!4398837 (= e!2738933 e!2738934)))

(declare-fun res!1814043 () Bool)

(assert (=> b!4398837 (=> (not res!1814043) (not e!2738934))))

(assert (=> b!4398837 (= res!1814043 (not (containsKey!919 (t!356320 (_2!27722 (tuple2!48857 hash!377 newBucket!200))) (_1!27721 (h!54883 (_2!27722 (tuple2!48857 hash!377 newBucket!200)))))))))

(declare-fun b!4398838 () Bool)

(assert (=> b!4398838 (= e!2738934 (noDuplicateKeys!621 (t!356320 (_2!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(assert (= (and d!1325926 (not res!1814042)) b!4398837))

(assert (= (and b!4398837 res!1814043) b!4398838))

(declare-fun m!5060633 () Bool)

(assert (=> b!4398837 m!5060633))

(declare-fun m!5060635 () Bool)

(assert (=> b!4398838 m!5060635))

(assert (=> bs!727400 d!1325926))

(declare-fun d!1325928 () Bool)

(declare-fun lt!1604547 () Bool)

(assert (=> d!1325928 (= lt!1604547 (select (content!7862 e!2738603) key!3918))))

(declare-fun e!2738936 () Bool)

(assert (=> d!1325928 (= lt!1604547 e!2738936)))

(declare-fun res!1814045 () Bool)

(assert (=> d!1325928 (=> (not res!1814045) (not e!2738936))))

(assert (=> d!1325928 (= res!1814045 ((_ is Cons!49265) e!2738603))))

(assert (=> d!1325928 (= (contains!11649 e!2738603 key!3918) lt!1604547)))

(declare-fun b!4398839 () Bool)

(declare-fun e!2738935 () Bool)

(assert (=> b!4398839 (= e!2738936 e!2738935)))

(declare-fun res!1814044 () Bool)

(assert (=> b!4398839 (=> res!1814044 e!2738935)))

(assert (=> b!4398839 (= res!1814044 (= (h!54888 e!2738603) key!3918))))

(declare-fun b!4398840 () Bool)

(assert (=> b!4398840 (= e!2738935 (contains!11649 (t!356323 e!2738603) key!3918))))

(assert (= (and d!1325928 res!1814045) b!4398839))

(assert (= (and b!4398839 (not res!1814044)) b!4398840))

(declare-fun m!5060637 () Bool)

(assert (=> d!1325928 m!5060637))

(declare-fun m!5060639 () Bool)

(assert (=> d!1325928 m!5060639))

(declare-fun m!5060641 () Bool)

(assert (=> b!4398840 m!5060641))

(assert (=> bm!306100 d!1325928))

(declare-fun d!1325930 () Bool)

(declare-fun res!1814046 () Bool)

(declare-fun e!2738937 () Bool)

(assert (=> d!1325930 (=> res!1814046 e!2738937)))

(assert (=> d!1325930 (= res!1814046 ((_ is Nil!49263) (toList!3225 lt!1604048)))))

(assert (=> d!1325930 (= (forall!9350 (toList!3225 lt!1604048) lambda!148381) e!2738937)))

(declare-fun b!4398841 () Bool)

(declare-fun e!2738938 () Bool)

(assert (=> b!4398841 (= e!2738937 e!2738938)))

(declare-fun res!1814047 () Bool)

(assert (=> b!4398841 (=> (not res!1814047) (not e!2738938))))

(assert (=> b!4398841 (= res!1814047 (dynLambda!20754 lambda!148381 (h!54884 (toList!3225 lt!1604048))))))

(declare-fun b!4398842 () Bool)

(assert (=> b!4398842 (= e!2738938 (forall!9350 (t!356321 (toList!3225 lt!1604048)) lambda!148381))))

(assert (= (and d!1325930 (not res!1814046)) b!4398841))

(assert (= (and b!4398841 res!1814047) b!4398842))

(declare-fun b_lambda!139511 () Bool)

(assert (=> (not b_lambda!139511) (not b!4398841)))

(declare-fun m!5060643 () Bool)

(assert (=> b!4398841 m!5060643))

(declare-fun m!5060645 () Bool)

(assert (=> b!4398842 m!5060645))

(assert (=> d!1325614 d!1325930))

(assert (=> b!4398317 d!1325908))

(assert (=> b!4398317 d!1325910))

(declare-fun d!1325932 () Bool)

(assert (=> d!1325932 (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(declare-fun lt!1604548 () Unit!78523)

(assert (=> d!1325932 (= lt!1604548 (choose!27550 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(assert (=> d!1325932 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))

(assert (=> d!1325932 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918) lt!1604548)))

(declare-fun bs!727649 () Bool)

(assert (= bs!727649 d!1325932))

(assert (=> bs!727649 m!5059757))

(assert (=> bs!727649 m!5059757))

(assert (=> bs!727649 m!5059759))

(declare-fun m!5060647 () Bool)

(assert (=> bs!727649 m!5060647))

(assert (=> bs!727649 m!5060029))

(assert (=> b!4398275 d!1325932))

(assert (=> b!4398275 d!1325704))

(assert (=> b!4398275 d!1325710))

(declare-fun d!1325934 () Bool)

(assert (=> d!1325934 (contains!11649 (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) key!3918)))

(declare-fun lt!1604549 () Unit!78523)

(assert (=> d!1325934 (= lt!1604549 (choose!27551 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918))))

(assert (=> d!1325934 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))))

(assert (=> d!1325934 (= (lemmaInListThenGetKeysListContains!190 (toList!3226 (extractMap!680 (toList!3225 lm!1707))) key!3918) lt!1604549)))

(declare-fun bs!727650 () Bool)

(assert (= bs!727650 d!1325934))

(assert (=> bs!727650 m!5059765))

(assert (=> bs!727650 m!5059765))

(declare-fun m!5060649 () Bool)

(assert (=> bs!727650 m!5060649))

(declare-fun m!5060651 () Bool)

(assert (=> bs!727650 m!5060651))

(assert (=> bs!727650 m!5060029))

(assert (=> b!4398275 d!1325934))

(declare-fun d!1325936 () Bool)

(assert (=> d!1325936 (= (invariantList!746 (toList!3226 lt!1604187)) (noDuplicatedKeys!150 (toList!3226 lt!1604187)))))

(declare-fun bs!727651 () Bool)

(assert (= bs!727651 d!1325936))

(declare-fun m!5060653 () Bool)

(assert (=> bs!727651 m!5060653))

(assert (=> d!1325572 d!1325936))

(declare-fun d!1325938 () Bool)

(declare-fun res!1814048 () Bool)

(declare-fun e!2738939 () Bool)

(assert (=> d!1325938 (=> res!1814048 e!2738939)))

(assert (=> d!1325938 (= res!1814048 ((_ is Nil!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325938 (= (forall!9350 (toList!3225 lm!1707) lambda!148369) e!2738939)))

(declare-fun b!4398843 () Bool)

(declare-fun e!2738940 () Bool)

(assert (=> b!4398843 (= e!2738939 e!2738940)))

(declare-fun res!1814049 () Bool)

(assert (=> b!4398843 (=> (not res!1814049) (not e!2738940))))

(assert (=> b!4398843 (= res!1814049 (dynLambda!20754 lambda!148369 (h!54884 (toList!3225 lm!1707))))))

(declare-fun b!4398844 () Bool)

(assert (=> b!4398844 (= e!2738940 (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148369))))

(assert (= (and d!1325938 (not res!1814048)) b!4398843))

(assert (= (and b!4398843 res!1814049) b!4398844))

(declare-fun b_lambda!139513 () Bool)

(assert (=> (not b_lambda!139513) (not b!4398843)))

(declare-fun m!5060655 () Bool)

(assert (=> b!4398843 m!5060655))

(declare-fun m!5060657 () Bool)

(assert (=> b!4398844 m!5060657))

(assert (=> d!1325572 d!1325938))

(declare-fun d!1325940 () Bool)

(declare-fun lt!1604550 () Bool)

(assert (=> d!1325940 (= lt!1604550 (select (content!7862 (keys!16737 (extractMap!680 (toList!3225 lm!1707)))) key!3918))))

(declare-fun e!2738942 () Bool)

(assert (=> d!1325940 (= lt!1604550 e!2738942)))

(declare-fun res!1814051 () Bool)

(assert (=> d!1325940 (=> (not res!1814051) (not e!2738942))))

(assert (=> d!1325940 (= res!1814051 ((_ is Cons!49265) (keys!16737 (extractMap!680 (toList!3225 lm!1707)))))))

(assert (=> d!1325940 (= (contains!11649 (keys!16737 (extractMap!680 (toList!3225 lm!1707))) key!3918) lt!1604550)))

(declare-fun b!4398845 () Bool)

(declare-fun e!2738941 () Bool)

(assert (=> b!4398845 (= e!2738942 e!2738941)))

(declare-fun res!1814050 () Bool)

(assert (=> b!4398845 (=> res!1814050 e!2738941)))

(assert (=> b!4398845 (= res!1814050 (= (h!54888 (keys!16737 (extractMap!680 (toList!3225 lm!1707)))) key!3918))))

(declare-fun b!4398846 () Bool)

(assert (=> b!4398846 (= e!2738941 (contains!11649 (t!356323 (keys!16737 (extractMap!680 (toList!3225 lm!1707)))) key!3918))))

(assert (= (and d!1325940 res!1814051) b!4398845))

(assert (= (and b!4398845 (not res!1814050)) b!4398846))

(assert (=> d!1325940 m!5059747))

(declare-fun m!5060659 () Bool)

(assert (=> d!1325940 m!5060659))

(declare-fun m!5060661 () Bool)

(assert (=> d!1325940 m!5060661))

(declare-fun m!5060663 () Bool)

(assert (=> b!4398846 m!5060663))

(assert (=> b!4398273 d!1325940))

(assert (=> b!4398273 d!1325724))

(declare-fun d!1325942 () Bool)

(declare-fun res!1814052 () Bool)

(declare-fun e!2738943 () Bool)

(assert (=> d!1325942 (=> res!1814052 e!2738943)))

(assert (=> d!1325942 (= res!1814052 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (= (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377)))))

(assert (=> d!1325942 (= (containsKey!923 (toList!3225 lm!1707) hash!377) e!2738943)))

(declare-fun b!4398847 () Bool)

(declare-fun e!2738944 () Bool)

(assert (=> b!4398847 (= e!2738943 e!2738944)))

(declare-fun res!1814053 () Bool)

(assert (=> b!4398847 (=> (not res!1814053) (not e!2738944))))

(assert (=> b!4398847 (= res!1814053 (and (or (not ((_ is Cons!49263) (toList!3225 lm!1707))) (bvsle (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377)) ((_ is Cons!49263) (toList!3225 lm!1707)) (bvslt (_1!27722 (h!54884 (toList!3225 lm!1707))) hash!377)))))

(declare-fun b!4398848 () Bool)

(assert (=> b!4398848 (= e!2738944 (containsKey!923 (t!356321 (toList!3225 lm!1707)) hash!377))))

(assert (= (and d!1325942 (not res!1814052)) b!4398847))

(assert (= (and b!4398847 res!1814053) b!4398848))

(declare-fun m!5060665 () Bool)

(assert (=> b!4398848 m!5060665))

(assert (=> d!1325610 d!1325942))

(assert (=> b!4398149 d!1325822))

(assert (=> d!1325534 d!1325674))

(declare-fun d!1325944 () Bool)

(declare-fun res!1814054 () Bool)

(declare-fun e!2738945 () Bool)

(assert (=> d!1325944 (=> res!1814054 e!2738945)))

(assert (=> d!1325944 (= res!1814054 (and ((_ is Cons!49262) (t!356320 newBucket!200)) (= (_1!27721 (h!54883 (t!356320 newBucket!200))) (_1!27721 (h!54883 newBucket!200)))))))

(assert (=> d!1325944 (= (containsKey!919 (t!356320 newBucket!200) (_1!27721 (h!54883 newBucket!200))) e!2738945)))

(declare-fun b!4398849 () Bool)

(declare-fun e!2738946 () Bool)

(assert (=> b!4398849 (= e!2738945 e!2738946)))

(declare-fun res!1814055 () Bool)

(assert (=> b!4398849 (=> (not res!1814055) (not e!2738946))))

(assert (=> b!4398849 (= res!1814055 ((_ is Cons!49262) (t!356320 newBucket!200)))))

(declare-fun b!4398850 () Bool)

(assert (=> b!4398850 (= e!2738946 (containsKey!919 (t!356320 (t!356320 newBucket!200)) (_1!27721 (h!54883 newBucket!200))))))

(assert (= (and d!1325944 (not res!1814054)) b!4398849))

(assert (= (and b!4398849 res!1814055) b!4398850))

(declare-fun m!5060667 () Bool)

(assert (=> b!4398850 m!5060667))

(assert (=> b!4398355 d!1325944))

(declare-fun d!1325946 () Bool)

(declare-fun res!1814056 () Bool)

(declare-fun e!2738947 () Bool)

(assert (=> d!1325946 (=> res!1814056 e!2738947)))

(assert (=> d!1325946 (= res!1814056 ((_ is Nil!49263) (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200)))))))

(assert (=> d!1325946 (= (forall!9350 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200))) lambda!148351) e!2738947)))

(declare-fun b!4398851 () Bool)

(declare-fun e!2738948 () Bool)

(assert (=> b!4398851 (= e!2738947 e!2738948)))

(declare-fun res!1814057 () Bool)

(assert (=> b!4398851 (=> (not res!1814057) (not e!2738948))))

(assert (=> b!4398851 (= res!1814057 (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200))))))))

(declare-fun b!4398852 () Bool)

(assert (=> b!4398852 (= e!2738948 (forall!9350 (t!356321 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200)))) lambda!148351))))

(assert (= (and d!1325946 (not res!1814056)) b!4398851))

(assert (= (and b!4398851 res!1814057) b!4398852))

(declare-fun b_lambda!139515 () Bool)

(assert (=> (not b_lambda!139515) (not b!4398851)))

(declare-fun m!5060669 () Bool)

(assert (=> b!4398851 m!5060669))

(declare-fun m!5060671 () Bool)

(assert (=> b!4398852 m!5060671))

(assert (=> d!1325580 d!1325946))

(assert (=> d!1325580 d!1325578))

(declare-fun d!1325948 () Bool)

(assert (=> d!1325948 (forall!9350 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200))) lambda!148351)))

(assert (=> d!1325948 true))

(declare-fun _$31!316 () Unit!78523)

(assert (=> d!1325948 (= (choose!27539 lm!1707 lambda!148351 hash!377 newBucket!200) _$31!316)))

(declare-fun bs!727652 () Bool)

(assert (= bs!727652 d!1325948))

(assert (=> bs!727652 m!5059495))

(assert (=> bs!727652 m!5059791))

(assert (=> d!1325580 d!1325948))

(assert (=> d!1325580 d!1325582))

(declare-fun d!1325950 () Bool)

(declare-fun res!1814058 () Bool)

(declare-fun e!2738949 () Bool)

(assert (=> d!1325950 (=> res!1814058 e!2738949)))

(assert (=> d!1325950 (= res!1814058 ((_ is Nil!49263) (toList!3225 lm!1707)))))

(assert (=> d!1325950 (= (forall!9350 (toList!3225 lm!1707) lambda!148377) e!2738949)))

(declare-fun b!4398854 () Bool)

(declare-fun e!2738950 () Bool)

(assert (=> b!4398854 (= e!2738949 e!2738950)))

(declare-fun res!1814059 () Bool)

(assert (=> b!4398854 (=> (not res!1814059) (not e!2738950))))

(assert (=> b!4398854 (= res!1814059 (dynLambda!20754 lambda!148377 (h!54884 (toList!3225 lm!1707))))))

(declare-fun b!4398855 () Bool)

(assert (=> b!4398855 (= e!2738950 (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148377))))

(assert (= (and d!1325950 (not res!1814058)) b!4398854))

(assert (= (and b!4398854 res!1814059) b!4398855))

(declare-fun b_lambda!139517 () Bool)

(assert (=> (not b_lambda!139517) (not b!4398854)))

(declare-fun m!5060673 () Bool)

(assert (=> b!4398854 m!5060673))

(declare-fun m!5060675 () Bool)

(assert (=> b!4398855 m!5060675))

(assert (=> d!1325606 d!1325950))

(declare-fun d!1325952 () Bool)

(declare-fun res!1814060 () Bool)

(declare-fun e!2738951 () Bool)

(assert (=> d!1325952 (=> res!1814060 e!2738951)))

(assert (=> d!1325952 (= res!1814060 (and ((_ is Cons!49262) (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707))))) (= (_1!27721 (h!54883 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707)))))) key!3918)))))

(assert (=> d!1325952 (= (containsKey!919 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707)))) key!3918) e!2738951)))

(declare-fun b!4398856 () Bool)

(declare-fun e!2738952 () Bool)

(assert (=> b!4398856 (= e!2738951 e!2738952)))

(declare-fun res!1814061 () Bool)

(assert (=> b!4398856 (=> (not res!1814061) (not e!2738952))))

(assert (=> b!4398856 (= res!1814061 ((_ is Cons!49262) (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(declare-fun b!4398857 () Bool)

(assert (=> b!4398857 (= e!2738952 (containsKey!919 (t!356320 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707))))) key!3918))))

(assert (= (and d!1325952 (not res!1814060)) b!4398856))

(assert (= (and b!4398856 res!1814061) b!4398857))

(declare-fun m!5060677 () Bool)

(assert (=> b!4398857 m!5060677))

(assert (=> b!4398332 d!1325952))

(declare-fun d!1325954 () Bool)

(declare-fun res!1814062 () Bool)

(declare-fun e!2738953 () Bool)

(assert (=> d!1325954 (=> res!1814062 e!2738953)))

(assert (=> d!1325954 (= res!1814062 (and ((_ is Cons!49262) lt!1604117) (= (_1!27721 (h!54883 lt!1604117)) key!3918)))))

(assert (=> d!1325954 (= (containsKey!919 lt!1604117 key!3918) e!2738953)))

(declare-fun b!4398858 () Bool)

(declare-fun e!2738954 () Bool)

(assert (=> b!4398858 (= e!2738953 e!2738954)))

(declare-fun res!1814063 () Bool)

(assert (=> b!4398858 (=> (not res!1814063) (not e!2738954))))

(assert (=> b!4398858 (= res!1814063 ((_ is Cons!49262) lt!1604117))))

(declare-fun b!4398859 () Bool)

(assert (=> b!4398859 (= e!2738954 (containsKey!919 (t!356320 lt!1604117) key!3918))))

(assert (= (and d!1325954 (not res!1814062)) b!4398858))

(assert (= (and b!4398858 res!1814063) b!4398859))

(declare-fun m!5060679 () Bool)

(assert (=> b!4398859 m!5060679))

(assert (=> d!1325522 d!1325954))

(declare-fun d!1325956 () Bool)

(declare-fun res!1814064 () Bool)

(declare-fun e!2738955 () Bool)

(assert (=> d!1325956 (=> res!1814064 e!2738955)))

(assert (=> d!1325956 (= res!1814064 (not ((_ is Cons!49262) lt!1604049)))))

(assert (=> d!1325956 (= (noDuplicateKeys!621 lt!1604049) e!2738955)))

(declare-fun b!4398860 () Bool)

(declare-fun e!2738956 () Bool)

(assert (=> b!4398860 (= e!2738955 e!2738956)))

(declare-fun res!1814065 () Bool)

(assert (=> b!4398860 (=> (not res!1814065) (not e!2738956))))

(assert (=> b!4398860 (= res!1814065 (not (containsKey!919 (t!356320 lt!1604049) (_1!27721 (h!54883 lt!1604049)))))))

(declare-fun b!4398861 () Bool)

(assert (=> b!4398861 (= e!2738956 (noDuplicateKeys!621 (t!356320 lt!1604049)))))

(assert (= (and d!1325956 (not res!1814064)) b!4398860))

(assert (= (and b!4398860 res!1814065) b!4398861))

(declare-fun m!5060681 () Bool)

(assert (=> b!4398860 m!5060681))

(assert (=> b!4398861 m!5060613))

(assert (=> d!1325522 d!1325956))

(declare-fun d!1325958 () Bool)

(assert (=> d!1325958 (= (get!16035 (getValueByKey!590 (toList!3225 lm!1707) hash!377)) (v!43689 (getValueByKey!590 (toList!3225 lm!1707) hash!377)))))

(assert (=> d!1325508 d!1325958))

(assert (=> d!1325508 d!1325822))

(declare-fun d!1325960 () Bool)

(declare-fun e!2738957 () Bool)

(assert (=> d!1325960 e!2738957))

(declare-fun res!1814066 () Bool)

(assert (=> d!1325960 (=> res!1814066 e!2738957)))

(declare-fun lt!1604553 () Bool)

(assert (=> d!1325960 (= res!1814066 (not lt!1604553))))

(declare-fun lt!1604551 () Bool)

(assert (=> d!1325960 (= lt!1604553 lt!1604551)))

(declare-fun lt!1604554 () Unit!78523)

(declare-fun e!2738958 () Unit!78523)

(assert (=> d!1325960 (= lt!1604554 e!2738958)))

(declare-fun c!748870 () Bool)

(assert (=> d!1325960 (= c!748870 lt!1604551)))

(assert (=> d!1325960 (= lt!1604551 (containsKey!923 (toList!3225 lt!1604199) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(assert (=> d!1325960 (= (contains!11645 lt!1604199 (_1!27722 (tuple2!48857 hash!377 newBucket!200))) lt!1604553)))

(declare-fun b!4398862 () Bool)

(declare-fun lt!1604552 () Unit!78523)

(assert (=> b!4398862 (= e!2738958 lt!1604552)))

(assert (=> b!4398862 (= lt!1604552 (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!3225 lt!1604199) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(assert (=> b!4398862 (isDefined!7898 (getValueByKey!590 (toList!3225 lt!1604199) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun b!4398863 () Bool)

(declare-fun Unit!78602 () Unit!78523)

(assert (=> b!4398863 (= e!2738958 Unit!78602)))

(declare-fun b!4398864 () Bool)

(assert (=> b!4398864 (= e!2738957 (isDefined!7898 (getValueByKey!590 (toList!3225 lt!1604199) (_1!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(assert (= (and d!1325960 c!748870) b!4398862))

(assert (= (and d!1325960 (not c!748870)) b!4398863))

(assert (= (and d!1325960 (not res!1814066)) b!4398864))

(declare-fun m!5060683 () Bool)

(assert (=> d!1325960 m!5060683))

(declare-fun m!5060685 () Bool)

(assert (=> b!4398862 m!5060685))

(assert (=> b!4398862 m!5059787))

(assert (=> b!4398862 m!5059787))

(declare-fun m!5060687 () Bool)

(assert (=> b!4398862 m!5060687))

(assert (=> b!4398864 m!5059787))

(assert (=> b!4398864 m!5059787))

(assert (=> b!4398864 m!5060687))

(assert (=> d!1325578 d!1325960))

(declare-fun e!2738960 () Option!10604)

(declare-fun b!4398867 () Bool)

(assert (=> b!4398867 (= e!2738960 (getValueByKey!590 (t!356321 lt!1604197) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun d!1325962 () Bool)

(declare-fun c!748871 () Bool)

(assert (=> d!1325962 (= c!748871 (and ((_ is Cons!49263) lt!1604197) (= (_1!27722 (h!54884 lt!1604197)) (_1!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(declare-fun e!2738959 () Option!10604)

(assert (=> d!1325962 (= (getValueByKey!590 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200))) e!2738959)))

(declare-fun b!4398868 () Bool)

(assert (=> b!4398868 (= e!2738960 None!10603)))

(declare-fun b!4398865 () Bool)

(assert (=> b!4398865 (= e!2738959 (Some!10603 (_2!27722 (h!54884 lt!1604197))))))

(declare-fun b!4398866 () Bool)

(assert (=> b!4398866 (= e!2738959 e!2738960)))

(declare-fun c!748872 () Bool)

(assert (=> b!4398866 (= c!748872 (and ((_ is Cons!49263) lt!1604197) (not (= (_1!27722 (h!54884 lt!1604197)) (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))))

(assert (= (and d!1325962 c!748871) b!4398865))

(assert (= (and d!1325962 (not c!748871)) b!4398866))

(assert (= (and b!4398866 c!748872) b!4398867))

(assert (= (and b!4398866 (not c!748872)) b!4398868))

(declare-fun m!5060689 () Bool)

(assert (=> b!4398867 m!5060689))

(assert (=> d!1325578 d!1325962))

(declare-fun d!1325964 () Bool)

(assert (=> d!1325964 (= (getValueByKey!590 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200))) (Some!10603 (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun lt!1604557 () Unit!78523)

(declare-fun choose!27553 (List!49387 (_ BitVec 64) List!49386) Unit!78523)

(assert (=> d!1325964 (= lt!1604557 (choose!27553 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun e!2738963 () Bool)

(assert (=> d!1325964 e!2738963))

(declare-fun res!1814071 () Bool)

(assert (=> d!1325964 (=> (not res!1814071) (not e!2738963))))

(assert (=> d!1325964 (= res!1814071 (isStrictlySorted!172 lt!1604197))))

(assert (=> d!1325964 (= (lemmaContainsTupThenGetReturnValue!341 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))) lt!1604557)))

(declare-fun b!4398873 () Bool)

(declare-fun res!1814072 () Bool)

(assert (=> b!4398873 (=> (not res!1814072) (not e!2738963))))

(assert (=> b!4398873 (= res!1814072 (containsKey!923 lt!1604197 (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun b!4398874 () Bool)

(assert (=> b!4398874 (= e!2738963 (contains!11647 lt!1604197 (tuple2!48857 (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(assert (= (and d!1325964 res!1814071) b!4398873))

(assert (= (and b!4398873 res!1814072) b!4398874))

(assert (=> d!1325964 m!5059781))

(declare-fun m!5060691 () Bool)

(assert (=> d!1325964 m!5060691))

(declare-fun m!5060693 () Bool)

(assert (=> d!1325964 m!5060693))

(declare-fun m!5060695 () Bool)

(assert (=> b!4398873 m!5060695))

(declare-fun m!5060697 () Bool)

(assert (=> b!4398874 m!5060697))

(assert (=> d!1325578 d!1325964))

(declare-fun bm!306140 () Bool)

(declare-fun call!306145 () List!49387)

(declare-fun call!306146 () List!49387)

(assert (=> bm!306140 (= call!306145 call!306146)))

(declare-fun b!4398895 () Bool)

(declare-fun e!2738977 () List!49387)

(declare-fun e!2738976 () List!49387)

(assert (=> b!4398895 (= e!2738977 e!2738976)))

(declare-fun c!748883 () Bool)

(assert (=> b!4398895 (= c!748883 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (= (_1!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(declare-fun b!4398896 () Bool)

(assert (=> b!4398896 (= e!2738976 call!306146)))

(declare-fun c!748882 () Bool)

(declare-fun b!4398897 () Bool)

(assert (=> b!4398897 (= c!748882 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (bvsgt (_1!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(declare-fun e!2738978 () List!49387)

(assert (=> b!4398897 (= e!2738976 e!2738978)))

(declare-fun bm!306141 () Bool)

(declare-fun call!306147 () List!49387)

(assert (=> bm!306141 (= call!306146 call!306147)))

(declare-fun b!4398898 () Bool)

(assert (=> b!4398898 (= e!2738977 call!306147)))

(declare-fun e!2738974 () List!49387)

(declare-fun b!4398899 () Bool)

(assert (=> b!4398899 (= e!2738974 (ite c!748883 (t!356321 (toList!3225 lm!1707)) (ite c!748882 (Cons!49263 (h!54884 (toList!3225 lm!1707)) (t!356321 (toList!3225 lm!1707))) Nil!49263)))))

(declare-fun d!1325966 () Bool)

(declare-fun e!2738975 () Bool)

(assert (=> d!1325966 e!2738975))

(declare-fun res!1814077 () Bool)

(assert (=> d!1325966 (=> (not res!1814077) (not e!2738975))))

(declare-fun lt!1604560 () List!49387)

(assert (=> d!1325966 (= res!1814077 (isStrictlySorted!172 lt!1604560))))

(assert (=> d!1325966 (= lt!1604560 e!2738977)))

(declare-fun c!748884 () Bool)

(assert (=> d!1325966 (= c!748884 (and ((_ is Cons!49263) (toList!3225 lm!1707)) (bvslt (_1!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(assert (=> d!1325966 (isStrictlySorted!172 (toList!3225 lm!1707))))

(assert (=> d!1325966 (= (insertStrictlySorted!200 (toList!3225 lm!1707) (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))) lt!1604560)))

(declare-fun b!4398900 () Bool)

(assert (=> b!4398900 (= e!2738975 (contains!11647 lt!1604560 (tuple2!48857 (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200)))))))

(declare-fun bm!306142 () Bool)

(declare-fun $colon$colon!747 (List!49387 tuple2!48856) List!49387)

(assert (=> bm!306142 (= call!306147 ($colon$colon!747 e!2738974 (ite c!748884 (h!54884 (toList!3225 lm!1707)) (tuple2!48857 (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))))

(declare-fun c!748881 () Bool)

(assert (=> bm!306142 (= c!748881 c!748884)))

(declare-fun b!4398901 () Bool)

(assert (=> b!4398901 (= e!2738978 call!306145)))

(declare-fun b!4398902 () Bool)

(assert (=> b!4398902 (= e!2738978 call!306145)))

(declare-fun b!4398903 () Bool)

(assert (=> b!4398903 (= e!2738974 (insertStrictlySorted!200 (t!356321 (toList!3225 lm!1707)) (_1!27722 (tuple2!48857 hash!377 newBucket!200)) (_2!27722 (tuple2!48857 hash!377 newBucket!200))))))

(declare-fun b!4398904 () Bool)

(declare-fun res!1814078 () Bool)

(assert (=> b!4398904 (=> (not res!1814078) (not e!2738975))))

(assert (=> b!4398904 (= res!1814078 (containsKey!923 lt!1604560 (_1!27722 (tuple2!48857 hash!377 newBucket!200))))))

(assert (= (and d!1325966 c!748884) b!4398898))

(assert (= (and d!1325966 (not c!748884)) b!4398895))

(assert (= (and b!4398895 c!748883) b!4398896))

(assert (= (and b!4398895 (not c!748883)) b!4398897))

(assert (= (and b!4398897 c!748882) b!4398901))

(assert (= (and b!4398897 (not c!748882)) b!4398902))

(assert (= (or b!4398901 b!4398902) bm!306140))

(assert (= (or b!4398896 bm!306140) bm!306141))

(assert (= (or b!4398898 bm!306141) bm!306142))

(assert (= (and bm!306142 c!748881) b!4398903))

(assert (= (and bm!306142 (not c!748881)) b!4398899))

(assert (= (and d!1325966 res!1814077) b!4398904))

(assert (= (and b!4398904 res!1814078) b!4398900))

(declare-fun m!5060699 () Bool)

(assert (=> b!4398903 m!5060699))

(declare-fun m!5060701 () Bool)

(assert (=> b!4398904 m!5060701))

(declare-fun m!5060703 () Bool)

(assert (=> d!1325966 m!5060703))

(assert (=> d!1325966 m!5059595))

(declare-fun m!5060705 () Bool)

(assert (=> b!4398900 m!5060705))

(declare-fun m!5060707 () Bool)

(assert (=> bm!306142 m!5060707))

(assert (=> d!1325578 d!1325966))

(declare-fun d!1325968 () Bool)

(assert (=> d!1325968 (isDefined!7897 (getValueByKey!591 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(declare-fun lt!1604561 () Unit!78523)

(assert (=> d!1325968 (= lt!1604561 (choose!27550 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(assert (=> d!1325968 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))

(assert (=> d!1325968 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918) lt!1604561)))

(declare-fun bs!727653 () Bool)

(assert (= bs!727653 d!1325968))

(assert (=> bs!727653 m!5059815))

(assert (=> bs!727653 m!5059815))

(assert (=> bs!727653 m!5059817))

(declare-fun m!5060709 () Bool)

(assert (=> bs!727653 m!5060709))

(assert (=> bs!727653 m!5060165))

(assert (=> b!4398308 d!1325968))

(assert (=> b!4398308 d!1325720))

(assert (=> b!4398308 d!1325722))

(declare-fun d!1325970 () Bool)

(assert (=> d!1325970 (contains!11649 (getKeysList!193 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) key!3918)))

(declare-fun lt!1604562 () Unit!78523)

(assert (=> d!1325970 (= lt!1604562 (choose!27551 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918))))

(assert (=> d!1325970 (invariantList!746 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))))

(assert (=> d!1325970 (= (lemmaInListThenGetKeysListContains!190 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))) key!3918) lt!1604562)))

(declare-fun bs!727654 () Bool)

(assert (= bs!727654 d!1325970))

(assert (=> bs!727654 m!5059823))

(assert (=> bs!727654 m!5059823))

(declare-fun m!5060711 () Bool)

(assert (=> bs!727654 m!5060711))

(declare-fun m!5060713 () Bool)

(assert (=> bs!727654 m!5060713))

(assert (=> bs!727654 m!5060165))

(assert (=> b!4398308 d!1325970))

(declare-fun d!1325972 () Bool)

(declare-fun res!1814079 () Bool)

(declare-fun e!2738979 () Bool)

(assert (=> d!1325972 (=> res!1814079 e!2738979)))

(assert (=> d!1325972 (= res!1814079 ((_ is Nil!49263) (t!356321 (toList!3225 lm!1707))))))

(assert (=> d!1325972 (= (forall!9350 (t!356321 (toList!3225 lm!1707)) lambda!148351) e!2738979)))

(declare-fun b!4398905 () Bool)

(declare-fun e!2738980 () Bool)

(assert (=> b!4398905 (= e!2738979 e!2738980)))

(declare-fun res!1814080 () Bool)

(assert (=> b!4398905 (=> (not res!1814080) (not e!2738980))))

(assert (=> b!4398905 (= res!1814080 (dynLambda!20754 lambda!148351 (h!54884 (t!356321 (toList!3225 lm!1707)))))))

(declare-fun b!4398906 () Bool)

(assert (=> b!4398906 (= e!2738980 (forall!9350 (t!356321 (t!356321 (toList!3225 lm!1707))) lambda!148351))))

(assert (= (and d!1325972 (not res!1814079)) b!4398905))

(assert (= (and b!4398905 res!1814080) b!4398906))

(declare-fun b_lambda!139519 () Bool)

(assert (=> (not b_lambda!139519) (not b!4398905)))

(declare-fun m!5060715 () Bool)

(assert (=> b!4398905 m!5060715))

(declare-fun m!5060717 () Bool)

(assert (=> b!4398906 m!5060717))

(assert (=> b!4398300 d!1325972))

(declare-fun bs!727655 () Bool)

(declare-fun b!4398907 () Bool)

(assert (= bs!727655 (and b!4398907 d!1325608)))

(declare-fun lambda!148513 () Int)

(assert (=> bs!727655 (not (= lambda!148513 lambda!148380))))

(declare-fun bs!727656 () Bool)

(assert (= bs!727656 (and b!4398907 b!4398798)))

(assert (=> bs!727656 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) lt!1604536) (= lambda!148513 lambda!148506))))

(declare-fun bs!727657 () Bool)

(assert (= bs!727657 (and b!4398907 b!4398794)))

(assert (=> bs!727657 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148513 lambda!148504))))

(declare-fun bs!727658 () Bool)

(assert (= bs!727658 (and b!4398907 d!1325868)))

(assert (=> bs!727658 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) lt!1604533) (= lambda!148513 lambda!148507))))

(assert (=> bs!727656 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148513 lambda!148505))))

(assert (=> b!4398907 true))

(declare-fun bs!727659 () Bool)

(declare-fun b!4398911 () Bool)

(assert (= bs!727659 (and b!4398911 d!1325608)))

(declare-fun lambda!148514 () Int)

(assert (=> bs!727659 (not (= lambda!148514 lambda!148380))))

(declare-fun bs!727660 () Bool)

(assert (= bs!727660 (and b!4398911 b!4398798)))

(assert (=> bs!727660 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) lt!1604536) (= lambda!148514 lambda!148506))))

(declare-fun bs!727661 () Bool)

(assert (= bs!727661 (and b!4398911 b!4398907)))

(assert (=> bs!727661 (= lambda!148514 lambda!148513)))

(declare-fun bs!727662 () Bool)

(assert (= bs!727662 (and b!4398911 b!4398794)))

(assert (=> bs!727662 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148514 lambda!148504))))

(declare-fun bs!727663 () Bool)

(assert (= bs!727663 (and b!4398911 d!1325868)))

(assert (=> bs!727663 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) lt!1604533) (= lambda!148514 lambda!148507))))

(assert (=> bs!727660 (= (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148514 lambda!148505))))

(assert (=> b!4398911 true))

(declare-fun lambda!148515 () Int)

(assert (=> bs!727659 (not (= lambda!148515 lambda!148380))))

(declare-fun lt!1604580 () ListMap!2469)

(assert (=> bs!727660 (= (= lt!1604580 lt!1604536) (= lambda!148515 lambda!148506))))

(assert (=> b!4398911 (= (= lt!1604580 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148515 lambda!148514))))

(assert (=> bs!727661 (= (= lt!1604580 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148515 lambda!148513))))

(assert (=> bs!727662 (= (= lt!1604580 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148515 lambda!148504))))

(assert (=> bs!727663 (= (= lt!1604580 lt!1604533) (= lambda!148515 lambda!148507))))

(assert (=> bs!727660 (= (= lt!1604580 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148515 lambda!148505))))

(assert (=> b!4398911 true))

(declare-fun bs!727664 () Bool)

(declare-fun d!1325974 () Bool)

(assert (= bs!727664 (and d!1325974 d!1325608)))

(declare-fun lambda!148516 () Int)

(assert (=> bs!727664 (not (= lambda!148516 lambda!148380))))

(declare-fun bs!727665 () Bool)

(assert (= bs!727665 (and d!1325974 b!4398798)))

(declare-fun lt!1604577 () ListMap!2469)

(assert (=> bs!727665 (= (= lt!1604577 lt!1604536) (= lambda!148516 lambda!148506))))

(declare-fun bs!727666 () Bool)

(assert (= bs!727666 (and d!1325974 b!4398911)))

(assert (=> bs!727666 (= (= lt!1604577 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148516 lambda!148514))))

(declare-fun bs!727667 () Bool)

(assert (= bs!727667 (and d!1325974 b!4398907)))

(assert (=> bs!727667 (= (= lt!1604577 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148516 lambda!148513))))

(declare-fun bs!727668 () Bool)

(assert (= bs!727668 (and d!1325974 b!4398794)))

(assert (=> bs!727668 (= (= lt!1604577 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148516 lambda!148504))))

(declare-fun bs!727669 () Bool)

(assert (= bs!727669 (and d!1325974 d!1325868)))

(assert (=> bs!727669 (= (= lt!1604577 lt!1604533) (= lambda!148516 lambda!148507))))

(assert (=> bs!727665 (= (= lt!1604577 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148516 lambda!148505))))

(assert (=> bs!727666 (= (= lt!1604577 lt!1604580) (= lambda!148516 lambda!148515))))

(assert (=> d!1325974 true))

(declare-fun e!2738983 () ListMap!2469)

(assert (=> b!4398907 (= e!2738983 (extractMap!680 (t!356321 (toList!3225 lt!1604048))))))

(declare-fun lt!1604567 () Unit!78523)

(declare-fun call!306148 () Unit!78523)

(assert (=> b!4398907 (= lt!1604567 call!306148)))

(declare-fun call!306150 () Bool)

(assert (=> b!4398907 call!306150))

(declare-fun lt!1604563 () Unit!78523)

(assert (=> b!4398907 (= lt!1604563 lt!1604567)))

(declare-fun call!306149 () Bool)

(assert (=> b!4398907 call!306149))

(declare-fun lt!1604565 () Unit!78523)

(declare-fun Unit!78607 () Unit!78523)

(assert (=> b!4398907 (= lt!1604565 Unit!78607)))

(declare-fun b!4398908 () Bool)

(declare-fun e!2738982 () Bool)

(assert (=> b!4398908 (= e!2738982 (invariantList!746 (toList!3226 lt!1604577)))))

(declare-fun b!4398909 () Bool)

(declare-fun e!2738981 () Bool)

(assert (=> b!4398909 (= e!2738981 call!306149)))

(declare-fun b!4398910 () Bool)

(declare-fun res!1814083 () Bool)

(assert (=> b!4398910 (=> (not res!1814083) (not e!2738982))))

(assert (=> b!4398910 (= res!1814083 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) lambda!148516))))

(declare-fun bm!306144 () Bool)

(declare-fun c!748885 () Bool)

(assert (=> bm!306144 (= call!306149 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (ite c!748885 lambda!148513 lambda!148515)))))

(declare-fun bm!306145 () Bool)

(assert (=> bm!306145 (= call!306148 (lemmaContainsAllItsOwnKeys!125 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))))))

(assert (=> b!4398911 (= e!2738983 lt!1604580)))

(declare-fun lt!1604573 () ListMap!2469)

(assert (=> b!4398911 (= lt!1604573 (+!860 (extractMap!680 (t!356321 (toList!3225 lt!1604048))) (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))

(assert (=> b!4398911 (= lt!1604580 (addToMapMapFromBucket!291 (t!356320 (_2!27722 (h!54884 (toList!3225 lt!1604048)))) (+!860 (extractMap!680 (t!356321 (toList!3225 lt!1604048))) (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048)))))))))

(declare-fun lt!1604569 () Unit!78523)

(assert (=> b!4398911 (= lt!1604569 call!306148)))

(assert (=> b!4398911 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) lambda!148514)))

(declare-fun lt!1604578 () Unit!78523)

(assert (=> b!4398911 (= lt!1604578 lt!1604569)))

(assert (=> b!4398911 (forall!9352 (toList!3226 lt!1604573) lambda!148515)))

(declare-fun lt!1604575 () Unit!78523)

(declare-fun Unit!78608 () Unit!78523)

(assert (=> b!4398911 (= lt!1604575 Unit!78608)))

(assert (=> b!4398911 call!306150))

(declare-fun lt!1604570 () Unit!78523)

(declare-fun Unit!78609 () Unit!78523)

(assert (=> b!4398911 (= lt!1604570 Unit!78609)))

(declare-fun lt!1604568 () Unit!78523)

(declare-fun Unit!78610 () Unit!78523)

(assert (=> b!4398911 (= lt!1604568 Unit!78610)))

(declare-fun lt!1604572 () Unit!78523)

(assert (=> b!4398911 (= lt!1604572 (forallContained!1989 (toList!3226 lt!1604573) lambda!148515 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))

(assert (=> b!4398911 (contains!11646 lt!1604573 (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))

(declare-fun lt!1604564 () Unit!78523)

(declare-fun Unit!78611 () Unit!78523)

(assert (=> b!4398911 (= lt!1604564 Unit!78611)))

(assert (=> b!4398911 (contains!11646 lt!1604580 (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))

(declare-fun lt!1604574 () Unit!78523)

(declare-fun Unit!78612 () Unit!78523)

(assert (=> b!4398911 (= lt!1604574 Unit!78612)))

(assert (=> b!4398911 (forall!9352 (_2!27722 (h!54884 (toList!3225 lt!1604048))) lambda!148515)))

(declare-fun lt!1604566 () Unit!78523)

(declare-fun Unit!78613 () Unit!78523)

(assert (=> b!4398911 (= lt!1604566 Unit!78613)))

(assert (=> b!4398911 (forall!9352 (toList!3226 lt!1604573) lambda!148515)))

(declare-fun lt!1604576 () Unit!78523)

(declare-fun Unit!78614 () Unit!78523)

(assert (=> b!4398911 (= lt!1604576 Unit!78614)))

(declare-fun lt!1604579 () Unit!78523)

(declare-fun Unit!78615 () Unit!78523)

(assert (=> b!4398911 (= lt!1604579 Unit!78615)))

(declare-fun lt!1604581 () Unit!78523)

(assert (=> b!4398911 (= lt!1604581 (addForallContainsKeyThenBeforeAdding!125 (extractMap!680 (t!356321 (toList!3225 lt!1604048))) lt!1604580 (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048))))) (_2!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048)))))))))

(assert (=> b!4398911 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) lambda!148515)))

(declare-fun lt!1604571 () Unit!78523)

(assert (=> b!4398911 (= lt!1604571 lt!1604581)))

(assert (=> b!4398911 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) lambda!148515)))

(declare-fun lt!1604583 () Unit!78523)

(declare-fun Unit!78616 () Unit!78523)

(assert (=> b!4398911 (= lt!1604583 Unit!78616)))

(declare-fun res!1814081 () Bool)

(assert (=> b!4398911 (= res!1814081 (forall!9352 (_2!27722 (h!54884 (toList!3225 lt!1604048))) lambda!148515))))

(assert (=> b!4398911 (=> (not res!1814081) (not e!2738981))))

(assert (=> b!4398911 e!2738981))

(declare-fun lt!1604582 () Unit!78523)

(declare-fun Unit!78617 () Unit!78523)

(assert (=> b!4398911 (= lt!1604582 Unit!78617)))

(assert (=> d!1325974 e!2738982))

(declare-fun res!1814082 () Bool)

(assert (=> d!1325974 (=> (not res!1814082) (not e!2738982))))

(assert (=> d!1325974 (= res!1814082 (forall!9352 (_2!27722 (h!54884 (toList!3225 lt!1604048))) lambda!148516))))

(assert (=> d!1325974 (= lt!1604577 e!2738983)))

(assert (=> d!1325974 (= c!748885 ((_ is Nil!49262) (_2!27722 (h!54884 (toList!3225 lt!1604048)))))))

(assert (=> d!1325974 (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))

(assert (=> d!1325974 (= (addToMapMapFromBucket!291 (_2!27722 (h!54884 (toList!3225 lt!1604048))) (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) lt!1604577)))

(declare-fun bm!306143 () Bool)

(assert (=> bm!306143 (= call!306150 (forall!9352 (ite c!748885 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (t!356320 (_2!27722 (h!54884 (toList!3225 lt!1604048))))) (ite c!748885 lambda!148513 lambda!148515)))))

(assert (= (and d!1325974 c!748885) b!4398907))

(assert (= (and d!1325974 (not c!748885)) b!4398911))

(assert (= (and b!4398911 res!1814081) b!4398909))

(assert (= (or b!4398907 b!4398911) bm!306145))

(assert (= (or b!4398907 b!4398911) bm!306143))

(assert (= (or b!4398907 b!4398909) bm!306144))

(assert (= (and d!1325974 res!1814082) b!4398910))

(assert (= (and b!4398910 res!1814083) b!4398908))

(assert (=> bm!306145 m!5059855))

(declare-fun m!5060719 () Bool)

(assert (=> bm!306145 m!5060719))

(declare-fun m!5060721 () Bool)

(assert (=> b!4398910 m!5060721))

(declare-fun m!5060723 () Bool)

(assert (=> bm!306143 m!5060723))

(declare-fun m!5060725 () Bool)

(assert (=> b!4398911 m!5060725))

(declare-fun m!5060727 () Bool)

(assert (=> b!4398911 m!5060727))

(declare-fun m!5060729 () Bool)

(assert (=> b!4398911 m!5060729))

(declare-fun m!5060731 () Bool)

(assert (=> b!4398911 m!5060731))

(assert (=> b!4398911 m!5060729))

(declare-fun m!5060733 () Bool)

(assert (=> b!4398911 m!5060733))

(declare-fun m!5060735 () Bool)

(assert (=> b!4398911 m!5060735))

(declare-fun m!5060737 () Bool)

(assert (=> b!4398911 m!5060737))

(declare-fun m!5060739 () Bool)

(assert (=> b!4398911 m!5060739))

(assert (=> b!4398911 m!5060735))

(assert (=> b!4398911 m!5060733))

(declare-fun m!5060741 () Bool)

(assert (=> b!4398911 m!5060741))

(assert (=> b!4398911 m!5059855))

(assert (=> b!4398911 m!5060725))

(assert (=> b!4398911 m!5059855))

(declare-fun m!5060743 () Bool)

(assert (=> b!4398911 m!5060743))

(declare-fun m!5060745 () Bool)

(assert (=> bm!306144 m!5060745))

(declare-fun m!5060747 () Bool)

(assert (=> d!1325974 m!5060747))

(assert (=> d!1325974 m!5059905))

(declare-fun m!5060749 () Bool)

(assert (=> b!4398908 m!5060749))

(assert (=> b!4398325 d!1325974))

(declare-fun bs!727670 () Bool)

(declare-fun d!1325976 () Bool)

(assert (= bs!727670 (and d!1325976 d!1325594)))

(declare-fun lambda!148517 () Int)

(assert (=> bs!727670 (= lambda!148517 lambda!148370)))

(declare-fun bs!727671 () Bool)

(assert (= bs!727671 (and d!1325976 d!1325572)))

(assert (=> bs!727671 (= lambda!148517 lambda!148369)))

(declare-fun bs!727672 () Bool)

(assert (= bs!727672 (and d!1325976 d!1325898)))

(assert (=> bs!727672 (= lambda!148517 lambda!148508)))

(declare-fun bs!727673 () Bool)

(assert (= bs!727673 (and d!1325976 d!1325606)))

(assert (=> bs!727673 (not (= lambda!148517 lambda!148377))))

(declare-fun bs!727674 () Bool)

(assert (= bs!727674 (and d!1325976 d!1325602)))

(assert (=> bs!727674 (= lambda!148517 lambda!148374)))

(declare-fun bs!727675 () Bool)

(assert (= bs!727675 (and d!1325976 d!1325600)))

(assert (=> bs!727675 (= lambda!148517 lambda!148371)))

(declare-fun bs!727676 () Bool)

(assert (= bs!727676 (and d!1325976 d!1325614)))

(assert (=> bs!727676 (not (= lambda!148517 lambda!148381))))

(declare-fun bs!727677 () Bool)

(assert (= bs!727677 (and d!1325976 start!427308)))

(assert (=> bs!727677 (= lambda!148517 lambda!148351)))

(declare-fun lt!1604584 () ListMap!2469)

(assert (=> d!1325976 (invariantList!746 (toList!3226 lt!1604584))))

(declare-fun e!2738984 () ListMap!2469)

(assert (=> d!1325976 (= lt!1604584 e!2738984)))

(declare-fun c!748886 () Bool)

(assert (=> d!1325976 (= c!748886 ((_ is Cons!49263) (t!356321 (toList!3225 lt!1604048))))))

(assert (=> d!1325976 (forall!9350 (t!356321 (toList!3225 lt!1604048)) lambda!148517)))

(assert (=> d!1325976 (= (extractMap!680 (t!356321 (toList!3225 lt!1604048))) lt!1604584)))

(declare-fun b!4398912 () Bool)

(assert (=> b!4398912 (= e!2738984 (addToMapMapFromBucket!291 (_2!27722 (h!54884 (t!356321 (toList!3225 lt!1604048)))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lt!1604048))))))))

(declare-fun b!4398913 () Bool)

(assert (=> b!4398913 (= e!2738984 (ListMap!2470 Nil!49262))))

(assert (= (and d!1325976 c!748886) b!4398912))

(assert (= (and d!1325976 (not c!748886)) b!4398913))

(declare-fun m!5060751 () Bool)

(assert (=> d!1325976 m!5060751))

(declare-fun m!5060753 () Bool)

(assert (=> d!1325976 m!5060753))

(declare-fun m!5060755 () Bool)

(assert (=> b!4398912 m!5060755))

(assert (=> b!4398912 m!5060755))

(declare-fun m!5060757 () Bool)

(assert (=> b!4398912 m!5060757))

(assert (=> b!4398325 d!1325976))

(declare-fun d!1325978 () Bool)

(declare-fun lt!1604585 () Bool)

(assert (=> d!1325978 (= lt!1604585 (select (content!7862 e!2738568) key!3918))))

(declare-fun e!2738986 () Bool)

(assert (=> d!1325978 (= lt!1604585 e!2738986)))

(declare-fun res!1814085 () Bool)

(assert (=> d!1325978 (=> (not res!1814085) (not e!2738986))))

(assert (=> d!1325978 (= res!1814085 ((_ is Cons!49265) e!2738568))))

(assert (=> d!1325978 (= (contains!11649 e!2738568 key!3918) lt!1604585)))

(declare-fun b!4398914 () Bool)

(declare-fun e!2738985 () Bool)

(assert (=> b!4398914 (= e!2738986 e!2738985)))

(declare-fun res!1814084 () Bool)

(assert (=> b!4398914 (=> res!1814084 e!2738985)))

(assert (=> b!4398914 (= res!1814084 (= (h!54888 e!2738568) key!3918))))

(declare-fun b!4398915 () Bool)

(assert (=> b!4398915 (= e!2738985 (contains!11649 (t!356323 e!2738568) key!3918))))

(assert (= (and d!1325978 res!1814085) b!4398914))

(assert (= (and b!4398914 (not res!1814084)) b!4398915))

(declare-fun m!5060759 () Bool)

(assert (=> d!1325978 m!5060759))

(declare-fun m!5060761 () Bool)

(assert (=> d!1325978 m!5060761))

(declare-fun m!5060763 () Bool)

(assert (=> b!4398915 m!5060763))

(assert (=> bm!306098 d!1325978))

(declare-fun d!1325980 () Bool)

(declare-fun res!1814086 () Bool)

(declare-fun e!2738987 () Bool)

(assert (=> d!1325980 (=> res!1814086 e!2738987)))

(assert (=> d!1325980 (= res!1814086 (not ((_ is Cons!49262) (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))

(assert (=> d!1325980 (= (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lt!1604048)))) e!2738987)))

(declare-fun b!4398916 () Bool)

(declare-fun e!2738988 () Bool)

(assert (=> b!4398916 (= e!2738987 e!2738988)))

(declare-fun res!1814087 () Bool)

(assert (=> b!4398916 (=> (not res!1814087) (not e!2738988))))

(assert (=> b!4398916 (= res!1814087 (not (containsKey!919 (t!356320 (_2!27722 (h!54884 (toList!3225 lt!1604048)))) (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))))

(declare-fun b!4398917 () Bool)

(assert (=> b!4398917 (= e!2738988 (noDuplicateKeys!621 (t!356320 (_2!27722 (h!54884 (toList!3225 lt!1604048))))))))

(assert (= (and d!1325980 (not res!1814086)) b!4398916))

(assert (= (and b!4398916 res!1814087) b!4398917))

(declare-fun m!5060765 () Bool)

(assert (=> b!4398916 m!5060765))

(declare-fun m!5060767 () Bool)

(assert (=> b!4398917 m!5060767))

(assert (=> bs!727398 d!1325980))

(declare-fun d!1325982 () Bool)

(declare-fun lt!1604586 () Bool)

(assert (=> d!1325982 (= lt!1604586 (select (content!7862 (keys!16737 (extractMap!680 (toList!3225 lt!1604048)))) key!3918))))

(declare-fun e!2738990 () Bool)

(assert (=> d!1325982 (= lt!1604586 e!2738990)))

(declare-fun res!1814089 () Bool)

(assert (=> d!1325982 (=> (not res!1814089) (not e!2738990))))

(assert (=> d!1325982 (= res!1814089 ((_ is Cons!49265) (keys!16737 (extractMap!680 (toList!3225 lt!1604048)))))))

(assert (=> d!1325982 (= (contains!11649 (keys!16737 (extractMap!680 (toList!3225 lt!1604048))) key!3918) lt!1604586)))

(declare-fun b!4398918 () Bool)

(declare-fun e!2738989 () Bool)

(assert (=> b!4398918 (= e!2738990 e!2738989)))

(declare-fun res!1814088 () Bool)

(assert (=> b!4398918 (=> res!1814088 e!2738989)))

(assert (=> b!4398918 (= res!1814088 (= (h!54888 (keys!16737 (extractMap!680 (toList!3225 lt!1604048)))) key!3918))))

(declare-fun b!4398919 () Bool)

(assert (=> b!4398919 (= e!2738989 (contains!11649 (t!356323 (keys!16737 (extractMap!680 (toList!3225 lt!1604048)))) key!3918))))

(assert (= (and d!1325982 res!1814089) b!4398918))

(assert (= (and b!4398918 (not res!1814088)) b!4398919))

(assert (=> d!1325982 m!5059805))

(declare-fun m!5060769 () Bool)

(assert (=> d!1325982 m!5060769))

(declare-fun m!5060771 () Bool)

(assert (=> d!1325982 m!5060771))

(declare-fun m!5060773 () Bool)

(assert (=> b!4398919 m!5060773))

(assert (=> b!4398306 d!1325982))

(assert (=> b!4398306 d!1325904))

(assert (=> b!4398269 d!1325940))

(assert (=> b!4398269 d!1325724))

(assert (=> b!4398302 d!1325982))

(assert (=> b!4398302 d!1325904))

(assert (=> b!4398324 d!1325678))

(declare-fun d!1325984 () Bool)

(assert (=> d!1325984 (containsKey!922 (toList!3226 lt!1604045) key!3918)))

(declare-fun lt!1604587 () Unit!78523)

(assert (=> d!1325984 (= lt!1604587 (choose!27546 (toList!3226 lt!1604045) key!3918))))

(assert (=> d!1325984 (invariantList!746 (toList!3226 lt!1604045))))

(assert (=> d!1325984 (= (lemmaInGetKeysListThenContainsKey!191 (toList!3226 lt!1604045) key!3918) lt!1604587)))

(declare-fun bs!727678 () Bool)

(assert (= bs!727678 d!1325984))

(assert (=> bs!727678 m!5059831))

(declare-fun m!5060775 () Bool)

(assert (=> bs!727678 m!5060775))

(assert (=> bs!727678 m!5060385))

(assert (=> b!4398324 d!1325984))

(declare-fun bs!727679 () Bool)

(declare-fun b!4398921 () Bool)

(assert (= bs!727679 (and b!4398921 b!4398817)))

(declare-fun lambda!148518 () Int)

(assert (=> bs!727679 (= (= (t!356320 (toList!3226 lt!1604045)) (toList!3226 lt!1604045)) (= lambda!148518 lambda!148511))))

(declare-fun bs!727680 () Bool)

(assert (= bs!727680 (and b!4398921 b!4398580)))

(assert (=> bs!727680 (= (= (t!356320 (toList!3226 lt!1604045)) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148518 lambda!148441))))

(declare-fun bs!727681 () Bool)

(assert (= bs!727681 (and b!4398921 b!4398703)))

(assert (=> bs!727681 (= (= (t!356320 (toList!3226 lt!1604045)) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148518 lambda!148457))))

(declare-fun bs!727682 () Bool)

(assert (= bs!727682 (and b!4398921 b!4398808)))

(assert (=> bs!727682 (= (= (t!356320 (toList!3226 lt!1604045)) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148518 lambda!148509))))

(declare-fun bs!727683 () Bool)

(assert (= bs!727683 (and b!4398921 b!4398667)))

(assert (=> bs!727683 (= (= (t!356320 (toList!3226 lt!1604045)) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148518 lambda!148451))))

(declare-fun bs!727684 () Bool)

(assert (= bs!727684 (and b!4398921 b!4398672)))

(assert (=> bs!727684 (= (= (t!356320 (toList!3226 lt!1604045)) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148518 lambda!148453))))

(declare-fun bs!727685 () Bool)

(assert (= bs!727685 (and b!4398921 b!4398698)))

(assert (=> bs!727685 (= (= (t!356320 (toList!3226 lt!1604045)) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148518 lambda!148455))))

(declare-fun bs!727686 () Bool)

(assert (= bs!727686 (and b!4398921 b!4398697)))

(assert (=> bs!727686 (= (= (t!356320 (toList!3226 lt!1604045)) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))) (= lambda!148518 lambda!148456))))

(declare-fun bs!727687 () Bool)

(assert (= bs!727687 (and b!4398921 b!4398666)))

(assert (=> bs!727687 (= (= (t!356320 (toList!3226 lt!1604045)) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148518 lambda!148452))))

(assert (=> b!4398921 true))

(declare-fun bs!727688 () Bool)

(declare-fun b!4398920 () Bool)

(assert (= bs!727688 (and b!4398920 b!4398817)))

(declare-fun lambda!148519 () Int)

(assert (=> bs!727688 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (toList!3226 lt!1604045)) (= lambda!148519 lambda!148511))))

(declare-fun bs!727689 () Bool)

(assert (= bs!727689 (and b!4398920 b!4398580)))

(assert (=> bs!727689 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148519 lambda!148441))))

(declare-fun bs!727690 () Bool)

(assert (= bs!727690 (and b!4398920 b!4398703)))

(assert (=> bs!727690 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148519 lambda!148457))))

(declare-fun bs!727691 () Bool)

(assert (= bs!727691 (and b!4398920 b!4398921)))

(assert (=> bs!727691 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (t!356320 (toList!3226 lt!1604045))) (= lambda!148519 lambda!148518))))

(declare-fun bs!727692 () Bool)

(assert (= bs!727692 (and b!4398920 b!4398808)))

(assert (=> bs!727692 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148519 lambda!148509))))

(declare-fun bs!727693 () Bool)

(assert (= bs!727693 (and b!4398920 b!4398667)))

(assert (=> bs!727693 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148519 lambda!148451))))

(declare-fun bs!727694 () Bool)

(assert (= bs!727694 (and b!4398920 b!4398672)))

(assert (=> bs!727694 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148519 lambda!148453))))

(declare-fun bs!727695 () Bool)

(assert (= bs!727695 (and b!4398920 b!4398698)))

(assert (=> bs!727695 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148519 lambda!148455))))

(declare-fun bs!727696 () Bool)

(assert (= bs!727696 (and b!4398920 b!4398697)))

(assert (=> bs!727696 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))) (= lambda!148519 lambda!148456))))

(declare-fun bs!727697 () Bool)

(assert (= bs!727697 (and b!4398920 b!4398666)))

(assert (=> bs!727697 (= (= (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045))) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148519 lambda!148452))))

(assert (=> b!4398920 true))

(declare-fun bs!727698 () Bool)

(declare-fun b!4398926 () Bool)

(assert (= bs!727698 (and b!4398926 b!4398817)))

(declare-fun lambda!148520 () Int)

(assert (=> bs!727698 (= lambda!148520 lambda!148511)))

(declare-fun bs!727699 () Bool)

(assert (= bs!727699 (and b!4398926 b!4398580)))

(assert (=> bs!727699 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148520 lambda!148441))))

(declare-fun bs!727700 () Bool)

(assert (= bs!727700 (and b!4398926 b!4398920)))

(assert (=> bs!727700 (= (= (toList!3226 lt!1604045) (Cons!49262 (h!54883 (toList!3226 lt!1604045)) (t!356320 (toList!3226 lt!1604045)))) (= lambda!148520 lambda!148519))))

(declare-fun bs!727701 () Bool)

(assert (= bs!727701 (and b!4398926 b!4398703)))

(assert (=> bs!727701 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148520 lambda!148457))))

(declare-fun bs!727702 () Bool)

(assert (= bs!727702 (and b!4398926 b!4398921)))

(assert (=> bs!727702 (= (= (toList!3226 lt!1604045) (t!356320 (toList!3226 lt!1604045))) (= lambda!148520 lambda!148518))))

(declare-fun bs!727703 () Bool)

(assert (= bs!727703 (and b!4398926 b!4398808)))

(assert (=> bs!727703 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (= lambda!148520 lambda!148509))))

(declare-fun bs!727704 () Bool)

(assert (= bs!727704 (and b!4398926 b!4398667)))

(assert (=> bs!727704 (= (= (toList!3226 lt!1604045) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707))))) (= lambda!148520 lambda!148451))))

(declare-fun bs!727705 () Bool)

(assert (= bs!727705 (and b!4398926 b!4398672)))

(assert (=> bs!727705 (= (= (toList!3226 lt!1604045) (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (= lambda!148520 lambda!148453))))

(declare-fun bs!727706 () Bool)

(assert (= bs!727706 (and b!4398926 b!4398698)))

(assert (=> bs!727706 (= (= (toList!3226 lt!1604045) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048))))) (= lambda!148520 lambda!148455))))

(declare-fun bs!727707 () Bool)

(assert (= bs!727707 (and b!4398926 b!4398697)))

(assert (=> bs!727707 (= (= (toList!3226 lt!1604045) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lt!1604048)))))) (= lambda!148520 lambda!148456))))

(declare-fun bs!727708 () Bool)

(assert (= bs!727708 (and b!4398926 b!4398666)))

(assert (=> bs!727708 (= (= (toList!3226 lt!1604045) (Cons!49262 (h!54883 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))) (t!356320 (toList!3226 (extractMap!680 (toList!3225 lm!1707)))))) (= lambda!148520 lambda!148452))))

(assert (=> b!4398926 true))

(declare-fun bs!727709 () Bool)

(declare-fun b!4398928 () Bool)

(assert (= bs!727709 (and b!4398928 b!4398705)))

(declare-fun lambda!148521 () Int)

(assert (=> bs!727709 (= lambda!148521 lambda!148458)))

(declare-fun bs!727710 () Bool)

(assert (= bs!727710 (and b!4398928 b!4398809)))

(assert (=> bs!727710 (= lambda!148521 lambda!148510)))

(declare-fun bs!727711 () Bool)

(assert (= bs!727711 (and b!4398928 b!4398818)))

(assert (=> bs!727711 (= lambda!148521 lambda!148512)))

(declare-fun bs!727712 () Bool)

(assert (= bs!727712 (and b!4398928 b!4398674)))

(assert (=> bs!727712 (= lambda!148521 lambda!148454)))

(declare-fun bs!727713 () Bool)

(assert (= bs!727713 (and b!4398928 b!4398581)))

(assert (=> bs!727713 (= lambda!148521 lambda!148442)))

(declare-fun e!2738992 () List!49389)

(assert (=> b!4398920 (= e!2738992 (Cons!49265 (_1!27721 (h!54883 (toList!3226 lt!1604045))) (getKeysList!193 (t!356320 (toList!3226 lt!1604045)))))))

(declare-fun c!748889 () Bool)

(assert (=> b!4398920 (= c!748889 (containsKey!922 (t!356320 (toList!3226 lt!1604045)) (_1!27721 (h!54883 (toList!3226 lt!1604045)))))))

(declare-fun lt!1604594 () Unit!78523)

(declare-fun e!2738993 () Unit!78523)

(assert (=> b!4398920 (= lt!1604594 e!2738993)))

(declare-fun c!748888 () Bool)

(assert (=> b!4398920 (= c!748888 (contains!11649 (getKeysList!193 (t!356320 (toList!3226 lt!1604045))) (_1!27721 (h!54883 (toList!3226 lt!1604045)))))))

(declare-fun lt!1604591 () Unit!78523)

(declare-fun e!2738991 () Unit!78523)

(assert (=> b!4398920 (= lt!1604591 e!2738991)))

(declare-fun lt!1604589 () List!49389)

(assert (=> b!4398920 (= lt!1604589 (getKeysList!193 (t!356320 (toList!3226 lt!1604045))))))

(declare-fun lt!1604592 () Unit!78523)

(assert (=> b!4398920 (= lt!1604592 (lemmaForallContainsAddHeadPreserves!56 (t!356320 (toList!3226 lt!1604045)) lt!1604589 (h!54883 (toList!3226 lt!1604045))))))

(assert (=> b!4398920 (forall!9354 lt!1604589 lambda!148519)))

(declare-fun lt!1604593 () Unit!78523)

(assert (=> b!4398920 (= lt!1604593 lt!1604592)))

(declare-fun d!1325986 () Bool)

(declare-fun e!2738994 () Bool)

(assert (=> d!1325986 e!2738994))

(declare-fun res!1814091 () Bool)

(assert (=> d!1325986 (=> (not res!1814091) (not e!2738994))))

(declare-fun lt!1604590 () List!49389)

(assert (=> d!1325986 (= res!1814091 (noDuplicate!634 lt!1604590))))

(assert (=> d!1325986 (= lt!1604590 e!2738992)))

(declare-fun c!748887 () Bool)

(assert (=> d!1325986 (= c!748887 ((_ is Cons!49262) (toList!3226 lt!1604045)))))

(assert (=> d!1325986 (invariantList!746 (toList!3226 lt!1604045))))

(assert (=> d!1325986 (= (getKeysList!193 (toList!3226 lt!1604045)) lt!1604590)))

(assert (=> b!4398921 false))

(declare-fun lt!1604588 () Unit!78523)

(assert (=> b!4398921 (= lt!1604588 (forallContained!1988 (getKeysList!193 (t!356320 (toList!3226 lt!1604045))) lambda!148518 (_1!27721 (h!54883 (toList!3226 lt!1604045)))))))

(declare-fun Unit!78618 () Unit!78523)

(assert (=> b!4398921 (= e!2738991 Unit!78618)))

(declare-fun b!4398922 () Bool)

(declare-fun Unit!78619 () Unit!78523)

(assert (=> b!4398922 (= e!2738993 Unit!78619)))

(declare-fun b!4398923 () Bool)

(assert (=> b!4398923 false))

(declare-fun Unit!78620 () Unit!78523)

(assert (=> b!4398923 (= e!2738993 Unit!78620)))

(declare-fun b!4398924 () Bool)

(declare-fun res!1814090 () Bool)

(assert (=> b!4398924 (=> (not res!1814090) (not e!2738994))))

(assert (=> b!4398924 (= res!1814090 (= (length!124 lt!1604590) (length!125 (toList!3226 lt!1604045))))))

(declare-fun b!4398925 () Bool)

(assert (=> b!4398925 (= e!2738992 Nil!49265)))

(declare-fun res!1814092 () Bool)

(assert (=> b!4398926 (=> (not res!1814092) (not e!2738994))))

(assert (=> b!4398926 (= res!1814092 (forall!9354 lt!1604590 lambda!148520))))

(declare-fun b!4398927 () Bool)

(declare-fun Unit!78621 () Unit!78523)

(assert (=> b!4398927 (= e!2738991 Unit!78621)))

(assert (=> b!4398928 (= e!2738994 (= (content!7862 lt!1604590) (content!7862 (map!10741 (toList!3226 lt!1604045) lambda!148521))))))

(assert (= (and d!1325986 c!748887) b!4398920))

(assert (= (and d!1325986 (not c!748887)) b!4398925))

(assert (= (and b!4398920 c!748889) b!4398923))

(assert (= (and b!4398920 (not c!748889)) b!4398922))

(assert (= (and b!4398920 c!748888) b!4398921))

(assert (= (and b!4398920 (not c!748888)) b!4398927))

(assert (= (and d!1325986 res!1814091) b!4398924))

(assert (= (and b!4398924 res!1814090) b!4398926))

(assert (= (and b!4398926 res!1814092) b!4398928))

(declare-fun m!5060777 () Bool)

(assert (=> d!1325986 m!5060777))

(assert (=> d!1325986 m!5060385))

(declare-fun m!5060779 () Bool)

(assert (=> b!4398920 m!5060779))

(declare-fun m!5060781 () Bool)

(assert (=> b!4398920 m!5060781))

(declare-fun m!5060783 () Bool)

(assert (=> b!4398920 m!5060783))

(declare-fun m!5060785 () Bool)

(assert (=> b!4398920 m!5060785))

(assert (=> b!4398920 m!5060781))

(declare-fun m!5060787 () Bool)

(assert (=> b!4398920 m!5060787))

(declare-fun m!5060789 () Bool)

(assert (=> b!4398926 m!5060789))

(declare-fun m!5060791 () Bool)

(assert (=> b!4398928 m!5060791))

(declare-fun m!5060793 () Bool)

(assert (=> b!4398928 m!5060793))

(assert (=> b!4398928 m!5060793))

(declare-fun m!5060795 () Bool)

(assert (=> b!4398928 m!5060795))

(declare-fun m!5060797 () Bool)

(assert (=> b!4398924 m!5060797))

(assert (=> b!4398924 m!5060601))

(assert (=> b!4398921 m!5060781))

(assert (=> b!4398921 m!5060781))

(declare-fun m!5060799 () Bool)

(assert (=> b!4398921 m!5060799))

(assert (=> b!4398320 d!1325986))

(declare-fun d!1325988 () Bool)

(declare-fun lt!1604595 () Bool)

(assert (=> d!1325988 (= lt!1604595 (select (content!7860 (t!356321 (toList!3225 lm!1707))) lt!1604047))))

(declare-fun e!2738995 () Bool)

(assert (=> d!1325988 (= lt!1604595 e!2738995)))

(declare-fun res!1814094 () Bool)

(assert (=> d!1325988 (=> (not res!1814094) (not e!2738995))))

(assert (=> d!1325988 (= res!1814094 ((_ is Cons!49263) (t!356321 (toList!3225 lm!1707))))))

(assert (=> d!1325988 (= (contains!11647 (t!356321 (toList!3225 lm!1707)) lt!1604047) lt!1604595)))

(declare-fun b!4398929 () Bool)

(declare-fun e!2738996 () Bool)

(assert (=> b!4398929 (= e!2738995 e!2738996)))

(declare-fun res!1814093 () Bool)

(assert (=> b!4398929 (=> res!1814093 e!2738996)))

(assert (=> b!4398929 (= res!1814093 (= (h!54884 (t!356321 (toList!3225 lm!1707))) lt!1604047))))

(declare-fun b!4398930 () Bool)

(assert (=> b!4398930 (= e!2738996 (contains!11647 (t!356321 (t!356321 (toList!3225 lm!1707))) lt!1604047))))

(assert (= (and d!1325988 res!1814094) b!4398929))

(assert (= (and b!4398929 (not res!1814093)) b!4398930))

(assert (=> d!1325988 m!5060619))

(declare-fun m!5060801 () Bool)

(assert (=> d!1325988 m!5060801))

(declare-fun m!5060803 () Bool)

(assert (=> b!4398930 m!5060803))

(assert (=> b!4398161 d!1325988))

(declare-fun d!1325990 () Bool)

(assert (=> d!1325990 (= (invariantList!746 (toList!3226 lt!1604222)) (noDuplicatedKeys!150 (toList!3226 lt!1604222)))))

(declare-fun bs!727714 () Bool)

(assert (= bs!727714 d!1325990))

(declare-fun m!5060805 () Bool)

(assert (=> bs!727714 m!5060805))

(assert (=> d!1325594 d!1325990))

(declare-fun d!1325992 () Bool)

(declare-fun res!1814095 () Bool)

(declare-fun e!2738997 () Bool)

(assert (=> d!1325992 (=> res!1814095 e!2738997)))

(assert (=> d!1325992 (= res!1814095 ((_ is Nil!49263) (toList!3225 lt!1604048)))))

(assert (=> d!1325992 (= (forall!9350 (toList!3225 lt!1604048) lambda!148370) e!2738997)))

(declare-fun b!4398931 () Bool)

(declare-fun e!2738998 () Bool)

(assert (=> b!4398931 (= e!2738997 e!2738998)))

(declare-fun res!1814096 () Bool)

(assert (=> b!4398931 (=> (not res!1814096) (not e!2738998))))

(assert (=> b!4398931 (= res!1814096 (dynLambda!20754 lambda!148370 (h!54884 (toList!3225 lt!1604048))))))

(declare-fun b!4398932 () Bool)

(assert (=> b!4398932 (= e!2738998 (forall!9350 (t!356321 (toList!3225 lt!1604048)) lambda!148370))))

(assert (= (and d!1325992 (not res!1814095)) b!4398931))

(assert (= (and b!4398931 res!1814096) b!4398932))

(declare-fun b_lambda!139521 () Bool)

(assert (=> (not b_lambda!139521) (not b!4398931)))

(declare-fun m!5060807 () Bool)

(assert (=> b!4398931 m!5060807))

(declare-fun m!5060809 () Bool)

(assert (=> b!4398932 m!5060809))

(assert (=> d!1325594 d!1325992))

(declare-fun d!1325994 () Bool)

(declare-fun res!1814097 () Bool)

(declare-fun e!2738999 () Bool)

(assert (=> d!1325994 (=> res!1814097 e!2738999)))

(assert (=> d!1325994 (= res!1814097 ((_ is Nil!49263) (t!356321 (toList!3225 lt!1604051))))))

(assert (=> d!1325994 (= (forall!9350 (t!356321 (toList!3225 lt!1604051)) lambda!148351) e!2738999)))

(declare-fun b!4398933 () Bool)

(declare-fun e!2739000 () Bool)

(assert (=> b!4398933 (= e!2738999 e!2739000)))

(declare-fun res!1814098 () Bool)

(assert (=> b!4398933 (=> (not res!1814098) (not e!2739000))))

(assert (=> b!4398933 (= res!1814098 (dynLambda!20754 lambda!148351 (h!54884 (t!356321 (toList!3225 lt!1604051)))))))

(declare-fun b!4398934 () Bool)

(assert (=> b!4398934 (= e!2739000 (forall!9350 (t!356321 (t!356321 (toList!3225 lt!1604051))) lambda!148351))))

(assert (= (and d!1325994 (not res!1814097)) b!4398933))

(assert (= (and b!4398933 res!1814098) b!4398934))

(declare-fun b_lambda!139523 () Bool)

(assert (=> (not b_lambda!139523) (not b!4398933)))

(declare-fun m!5060811 () Bool)

(assert (=> b!4398933 m!5060811))

(declare-fun m!5060813 () Bool)

(assert (=> b!4398934 m!5060813))

(assert (=> b!4398288 d!1325994))

(declare-fun d!1325996 () Bool)

(declare-fun lt!1604596 () Bool)

(assert (=> d!1325996 (= lt!1604596 (select (content!7862 e!2738591) key!3918))))

(declare-fun e!2739002 () Bool)

(assert (=> d!1325996 (= lt!1604596 e!2739002)))

(declare-fun res!1814100 () Bool)

(assert (=> d!1325996 (=> (not res!1814100) (not e!2739002))))

(assert (=> d!1325996 (= res!1814100 ((_ is Cons!49265) e!2738591))))

(assert (=> d!1325996 (= (contains!11649 e!2738591 key!3918) lt!1604596)))

(declare-fun b!4398935 () Bool)

(declare-fun e!2739001 () Bool)

(assert (=> b!4398935 (= e!2739002 e!2739001)))

(declare-fun res!1814099 () Bool)

(assert (=> b!4398935 (=> res!1814099 e!2739001)))

(assert (=> b!4398935 (= res!1814099 (= (h!54888 e!2738591) key!3918))))

(declare-fun b!4398936 () Bool)

(assert (=> b!4398936 (= e!2739001 (contains!11649 (t!356323 e!2738591) key!3918))))

(assert (= (and d!1325996 res!1814100) b!4398935))

(assert (= (and b!4398935 (not res!1814099)) b!4398936))

(declare-fun m!5060815 () Bool)

(assert (=> d!1325996 m!5060815))

(declare-fun m!5060817 () Bool)

(assert (=> d!1325996 m!5060817))

(declare-fun m!5060819 () Bool)

(assert (=> b!4398936 m!5060819))

(assert (=> bm!306099 d!1325996))

(assert (=> b!4398322 d!1325840))

(assert (=> b!4398322 d!1325842))

(declare-fun bs!727715 () Bool)

(declare-fun b!4398937 () Bool)

(assert (= bs!727715 (and b!4398937 d!1325608)))

(declare-fun lambda!148522 () Int)

(assert (=> bs!727715 (not (= lambda!148522 lambda!148380))))

(declare-fun bs!727716 () Bool)

(assert (= bs!727716 (and b!4398937 d!1325974)))

(assert (=> bs!727716 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604577) (= lambda!148522 lambda!148516))))

(declare-fun bs!727717 () Bool)

(assert (= bs!727717 (and b!4398937 b!4398798)))

(assert (=> bs!727717 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604536) (= lambda!148522 lambda!148506))))

(declare-fun bs!727718 () Bool)

(assert (= bs!727718 (and b!4398937 b!4398911)))

(assert (=> bs!727718 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148522 lambda!148514))))

(declare-fun bs!727719 () Bool)

(assert (= bs!727719 (and b!4398937 b!4398907)))

(assert (=> bs!727719 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148522 lambda!148513))))

(declare-fun bs!727720 () Bool)

(assert (= bs!727720 (and b!4398937 b!4398794)))

(assert (=> bs!727720 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148522 lambda!148504))))

(declare-fun bs!727721 () Bool)

(assert (= bs!727721 (and b!4398937 d!1325868)))

(assert (=> bs!727721 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604533) (= lambda!148522 lambda!148507))))

(assert (=> bs!727717 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148522 lambda!148505))))

(assert (=> bs!727718 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604580) (= lambda!148522 lambda!148515))))

(assert (=> b!4398937 true))

(declare-fun bs!727722 () Bool)

(declare-fun b!4398941 () Bool)

(assert (= bs!727722 (and b!4398941 b!4398937)))

(declare-fun lambda!148523 () Int)

(assert (=> bs!727722 (= lambda!148523 lambda!148522)))

(declare-fun bs!727723 () Bool)

(assert (= bs!727723 (and b!4398941 d!1325608)))

(assert (=> bs!727723 (not (= lambda!148523 lambda!148380))))

(declare-fun bs!727724 () Bool)

(assert (= bs!727724 (and b!4398941 d!1325974)))

(assert (=> bs!727724 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604577) (= lambda!148523 lambda!148516))))

(declare-fun bs!727725 () Bool)

(assert (= bs!727725 (and b!4398941 b!4398798)))

(assert (=> bs!727725 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604536) (= lambda!148523 lambda!148506))))

(declare-fun bs!727726 () Bool)

(assert (= bs!727726 (and b!4398941 b!4398911)))

(assert (=> bs!727726 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148523 lambda!148514))))

(declare-fun bs!727727 () Bool)

(assert (= bs!727727 (and b!4398941 b!4398907)))

(assert (=> bs!727727 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148523 lambda!148513))))

(declare-fun bs!727728 () Bool)

(assert (= bs!727728 (and b!4398941 b!4398794)))

(assert (=> bs!727728 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148523 lambda!148504))))

(declare-fun bs!727729 () Bool)

(assert (= bs!727729 (and b!4398941 d!1325868)))

(assert (=> bs!727729 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604533) (= lambda!148523 lambda!148507))))

(assert (=> bs!727725 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148523 lambda!148505))))

(assert (=> bs!727726 (= (= (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604580) (= lambda!148523 lambda!148515))))

(assert (=> b!4398941 true))

(declare-fun lambda!148524 () Int)

(declare-fun lt!1604614 () ListMap!2469)

(assert (=> bs!727722 (= (= lt!1604614 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) (= lambda!148524 lambda!148522))))

(assert (=> bs!727723 (not (= lambda!148524 lambda!148380))))

(assert (=> bs!727724 (= (= lt!1604614 lt!1604577) (= lambda!148524 lambda!148516))))

(assert (=> bs!727725 (= (= lt!1604614 lt!1604536) (= lambda!148524 lambda!148506))))

(assert (=> bs!727726 (= (= lt!1604614 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148524 lambda!148514))))

(assert (=> bs!727728 (= (= lt!1604614 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148524 lambda!148504))))

(assert (=> bs!727729 (= (= lt!1604614 lt!1604533) (= lambda!148524 lambda!148507))))

(assert (=> bs!727725 (= (= lt!1604614 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148524 lambda!148505))))

(assert (=> bs!727726 (= (= lt!1604614 lt!1604580) (= lambda!148524 lambda!148515))))

(assert (=> b!4398941 (= (= lt!1604614 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) (= lambda!148524 lambda!148523))))

(assert (=> bs!727727 (= (= lt!1604614 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148524 lambda!148513))))

(assert (=> b!4398941 true))

(declare-fun bs!727730 () Bool)

(declare-fun d!1325998 () Bool)

(assert (= bs!727730 (and d!1325998 b!4398937)))

(declare-fun lt!1604611 () ListMap!2469)

(declare-fun lambda!148525 () Int)

(assert (=> bs!727730 (= (= lt!1604611 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) (= lambda!148525 lambda!148522))))

(declare-fun bs!727731 () Bool)

(assert (= bs!727731 (and d!1325998 d!1325608)))

(assert (=> bs!727731 (not (= lambda!148525 lambda!148380))))

(declare-fun bs!727732 () Bool)

(assert (= bs!727732 (and d!1325998 b!4398941)))

(assert (=> bs!727732 (= (= lt!1604611 lt!1604614) (= lambda!148525 lambda!148524))))

(declare-fun bs!727733 () Bool)

(assert (= bs!727733 (and d!1325998 d!1325974)))

(assert (=> bs!727733 (= (= lt!1604611 lt!1604577) (= lambda!148525 lambda!148516))))

(declare-fun bs!727734 () Bool)

(assert (= bs!727734 (and d!1325998 b!4398798)))

(assert (=> bs!727734 (= (= lt!1604611 lt!1604536) (= lambda!148525 lambda!148506))))

(declare-fun bs!727735 () Bool)

(assert (= bs!727735 (and d!1325998 b!4398911)))

(assert (=> bs!727735 (= (= lt!1604611 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148525 lambda!148514))))

(declare-fun bs!727736 () Bool)

(assert (= bs!727736 (and d!1325998 b!4398794)))

(assert (=> bs!727736 (= (= lt!1604611 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148525 lambda!148504))))

(declare-fun bs!727737 () Bool)

(assert (= bs!727737 (and d!1325998 d!1325868)))

(assert (=> bs!727737 (= (= lt!1604611 lt!1604533) (= lambda!148525 lambda!148507))))

(assert (=> bs!727734 (= (= lt!1604611 (extractMap!680 (t!356321 (t!356321 (toList!3225 lm!1707))))) (= lambda!148525 lambda!148505))))

(assert (=> bs!727735 (= (= lt!1604611 lt!1604580) (= lambda!148525 lambda!148515))))

(assert (=> bs!727732 (= (= lt!1604611 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) (= lambda!148525 lambda!148523))))

(declare-fun bs!727738 () Bool)

(assert (= bs!727738 (and d!1325998 b!4398907)))

(assert (=> bs!727738 (= (= lt!1604611 (extractMap!680 (t!356321 (toList!3225 lt!1604048)))) (= lambda!148525 lambda!148513))))

(assert (=> d!1325998 true))

(declare-fun e!2739005 () ListMap!2469)

(assert (=> b!4398937 (= e!2739005 (extractMap!680 (t!356321 (toList!3225 lm!1707))))))

(declare-fun lt!1604601 () Unit!78523)

(declare-fun call!306151 () Unit!78523)

(assert (=> b!4398937 (= lt!1604601 call!306151)))

(declare-fun call!306153 () Bool)

(assert (=> b!4398937 call!306153))

(declare-fun lt!1604597 () Unit!78523)

(assert (=> b!4398937 (= lt!1604597 lt!1604601)))

(declare-fun call!306152 () Bool)

(assert (=> b!4398937 call!306152))

(declare-fun lt!1604599 () Unit!78523)

(declare-fun Unit!78622 () Unit!78523)

(assert (=> b!4398937 (= lt!1604599 Unit!78622)))

(declare-fun b!4398938 () Bool)

(declare-fun e!2739004 () Bool)

(assert (=> b!4398938 (= e!2739004 (invariantList!746 (toList!3226 lt!1604611)))))

(declare-fun b!4398939 () Bool)

(declare-fun e!2739003 () Bool)

(assert (=> b!4398939 (= e!2739003 call!306152)))

(declare-fun b!4398940 () Bool)

(declare-fun res!1814103 () Bool)

(assert (=> b!4398940 (=> (not res!1814103) (not e!2739004))))

(assert (=> b!4398940 (= res!1814103 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) lambda!148525))))

(declare-fun bm!306147 () Bool)

(declare-fun c!748890 () Bool)

(assert (=> bm!306147 (= call!306152 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) (ite c!748890 lambda!148522 lambda!148524)))))

(declare-fun bm!306148 () Bool)

(assert (=> bm!306148 (= call!306151 (lemmaContainsAllItsOwnKeys!125 (extractMap!680 (t!356321 (toList!3225 lm!1707)))))))

(assert (=> b!4398941 (= e!2739005 lt!1604614)))

(declare-fun lt!1604607 () ListMap!2469)

(assert (=> b!4398941 (= lt!1604607 (+!860 (extractMap!680 (t!356321 (toList!3225 lm!1707))) (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(assert (=> b!4398941 (= lt!1604614 (addToMapMapFromBucket!291 (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707)))) (+!860 (extractMap!680 (t!356321 (toList!3225 lm!1707))) (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))))

(declare-fun lt!1604603 () Unit!78523)

(assert (=> b!4398941 (= lt!1604603 call!306151)))

(assert (=> b!4398941 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) lambda!148523)))

(declare-fun lt!1604612 () Unit!78523)

(assert (=> b!4398941 (= lt!1604612 lt!1604603)))

(assert (=> b!4398941 (forall!9352 (toList!3226 lt!1604607) lambda!148524)))

(declare-fun lt!1604609 () Unit!78523)

(declare-fun Unit!78623 () Unit!78523)

(assert (=> b!4398941 (= lt!1604609 Unit!78623)))

(assert (=> b!4398941 call!306153))

(declare-fun lt!1604604 () Unit!78523)

(declare-fun Unit!78624 () Unit!78523)

(assert (=> b!4398941 (= lt!1604604 Unit!78624)))

(declare-fun lt!1604602 () Unit!78523)

(declare-fun Unit!78625 () Unit!78523)

(assert (=> b!4398941 (= lt!1604602 Unit!78625)))

(declare-fun lt!1604606 () Unit!78523)

(assert (=> b!4398941 (= lt!1604606 (forallContained!1989 (toList!3226 lt!1604607) lambda!148524 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(assert (=> b!4398941 (contains!11646 lt!1604607 (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(declare-fun lt!1604598 () Unit!78523)

(declare-fun Unit!78626 () Unit!78523)

(assert (=> b!4398941 (= lt!1604598 Unit!78626)))

(assert (=> b!4398941 (contains!11646 lt!1604614 (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))))))

(declare-fun lt!1604608 () Unit!78523)

(declare-fun Unit!78627 () Unit!78523)

(assert (=> b!4398941 (= lt!1604608 Unit!78627)))

(assert (=> b!4398941 (forall!9352 (_2!27722 (h!54884 (toList!3225 lm!1707))) lambda!148524)))

(declare-fun lt!1604600 () Unit!78523)

(declare-fun Unit!78628 () Unit!78523)

(assert (=> b!4398941 (= lt!1604600 Unit!78628)))

(assert (=> b!4398941 (forall!9352 (toList!3226 lt!1604607) lambda!148524)))

(declare-fun lt!1604610 () Unit!78523)

(declare-fun Unit!78629 () Unit!78523)

(assert (=> b!4398941 (= lt!1604610 Unit!78629)))

(declare-fun lt!1604613 () Unit!78523)

(declare-fun Unit!78630 () Unit!78523)

(assert (=> b!4398941 (= lt!1604613 Unit!78630)))

(declare-fun lt!1604615 () Unit!78523)

(assert (=> b!4398941 (= lt!1604615 (addForallContainsKeyThenBeforeAdding!125 (extractMap!680 (t!356321 (toList!3225 lm!1707))) lt!1604614 (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707))))) (_2!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))))

(assert (=> b!4398941 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) lambda!148524)))

(declare-fun lt!1604605 () Unit!78523)

(assert (=> b!4398941 (= lt!1604605 lt!1604615)))

(assert (=> b!4398941 (forall!9352 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) lambda!148524)))

(declare-fun lt!1604617 () Unit!78523)

(declare-fun Unit!78631 () Unit!78523)

(assert (=> b!4398941 (= lt!1604617 Unit!78631)))

(declare-fun res!1814101 () Bool)

(assert (=> b!4398941 (= res!1814101 (forall!9352 (_2!27722 (h!54884 (toList!3225 lm!1707))) lambda!148524))))

(assert (=> b!4398941 (=> (not res!1814101) (not e!2739003))))

(assert (=> b!4398941 e!2739003))

(declare-fun lt!1604616 () Unit!78523)

(declare-fun Unit!78632 () Unit!78523)

(assert (=> b!4398941 (= lt!1604616 Unit!78632)))

(assert (=> d!1325998 e!2739004))

(declare-fun res!1814102 () Bool)

(assert (=> d!1325998 (=> (not res!1814102) (not e!2739004))))

(assert (=> d!1325998 (= res!1814102 (forall!9352 (_2!27722 (h!54884 (toList!3225 lm!1707))) lambda!148525))))

(assert (=> d!1325998 (= lt!1604611 e!2739005)))

(assert (=> d!1325998 (= c!748890 ((_ is Nil!49262) (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(assert (=> d!1325998 (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lm!1707))))))

(assert (=> d!1325998 (= (addToMapMapFromBucket!291 (_2!27722 (h!54884 (toList!3225 lm!1707))) (extractMap!680 (t!356321 (toList!3225 lm!1707)))) lt!1604611)))

(declare-fun bm!306146 () Bool)

(assert (=> bm!306146 (= call!306153 (forall!9352 (ite c!748890 (toList!3226 (extractMap!680 (t!356321 (toList!3225 lm!1707)))) (t!356320 (_2!27722 (h!54884 (toList!3225 lm!1707))))) (ite c!748890 lambda!148522 lambda!148524)))))

(assert (= (and d!1325998 c!748890) b!4398937))

(assert (= (and d!1325998 (not c!748890)) b!4398941))

(assert (= (and b!4398941 res!1814101) b!4398939))

(assert (= (or b!4398937 b!4398941) bm!306148))

(assert (= (or b!4398937 b!4398941) bm!306146))

(assert (= (or b!4398937 b!4398939) bm!306147))

(assert (= (and d!1325998 res!1814102) b!4398940))

(assert (= (and b!4398940 res!1814103) b!4398938))

(assert (=> bm!306148 m!5059507))

(declare-fun m!5060821 () Bool)

(assert (=> bm!306148 m!5060821))

(declare-fun m!5060823 () Bool)

(assert (=> b!4398940 m!5060823))

(declare-fun m!5060825 () Bool)

(assert (=> bm!306146 m!5060825))

(declare-fun m!5060827 () Bool)

(assert (=> b!4398941 m!5060827))

(declare-fun m!5060829 () Bool)

(assert (=> b!4398941 m!5060829))

(declare-fun m!5060831 () Bool)

(assert (=> b!4398941 m!5060831))

(declare-fun m!5060833 () Bool)

(assert (=> b!4398941 m!5060833))

(assert (=> b!4398941 m!5060831))

(declare-fun m!5060835 () Bool)

(assert (=> b!4398941 m!5060835))

(declare-fun m!5060837 () Bool)

(assert (=> b!4398941 m!5060837))

(declare-fun m!5060839 () Bool)

(assert (=> b!4398941 m!5060839))

(declare-fun m!5060841 () Bool)

(assert (=> b!4398941 m!5060841))

(assert (=> b!4398941 m!5060837))

(assert (=> b!4398941 m!5060835))

(declare-fun m!5060843 () Bool)

(assert (=> b!4398941 m!5060843))

(assert (=> b!4398941 m!5059507))

(assert (=> b!4398941 m!5060827))

(assert (=> b!4398941 m!5059507))

(declare-fun m!5060845 () Bool)

(assert (=> b!4398941 m!5060845))

(declare-fun m!5060847 () Bool)

(assert (=> bm!306147 m!5060847))

(declare-fun m!5060849 () Bool)

(assert (=> d!1325998 m!5060849))

(assert (=> d!1325998 m!5059849))

(declare-fun m!5060851 () Bool)

(assert (=> b!4398938 m!5060851))

(assert (=> b!4398281 d!1325998))

(assert (=> b!4398281 d!1325600))

(declare-fun d!1326000 () Bool)

(declare-fun res!1814104 () Bool)

(declare-fun e!2739006 () Bool)

(assert (=> d!1326000 (=> res!1814104 e!2739006)))

(assert (=> d!1326000 (= res!1814104 (not ((_ is Cons!49262) (_2!27722 (h!54884 (toList!3225 lt!1604051))))))))

(assert (=> d!1326000 (= (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lt!1604051)))) e!2739006)))

(declare-fun b!4398942 () Bool)

(declare-fun e!2739007 () Bool)

(assert (=> b!4398942 (= e!2739006 e!2739007)))

(declare-fun res!1814105 () Bool)

(assert (=> b!4398942 (=> (not res!1814105) (not e!2739007))))

(assert (=> b!4398942 (= res!1814105 (not (containsKey!919 (t!356320 (_2!27722 (h!54884 (toList!3225 lt!1604051)))) (_1!27721 (h!54883 (_2!27722 (h!54884 (toList!3225 lt!1604051))))))))))

(declare-fun b!4398943 () Bool)

(assert (=> b!4398943 (= e!2739007 (noDuplicateKeys!621 (t!356320 (_2!27722 (h!54884 (toList!3225 lt!1604051))))))))

(assert (= (and d!1326000 (not res!1814104)) b!4398942))

(assert (= (and b!4398942 res!1814105) b!4398943))

(declare-fun m!5060853 () Bool)

(assert (=> b!4398942 m!5060853))

(declare-fun m!5060855 () Bool)

(assert (=> b!4398943 m!5060855))

(assert (=> bs!727396 d!1326000))

(assert (=> b!4398318 d!1325910))

(declare-fun d!1326002 () Bool)

(assert (=> d!1326002 (dynLambda!20754 lambda!148351 lt!1604047)))

(assert (=> d!1326002 true))

(declare-fun _$7!1597 () Unit!78523)

(assert (=> d!1326002 (= (choose!27537 (toList!3225 lm!1707) lambda!148351 lt!1604047) _$7!1597)))

(declare-fun b_lambda!139525 () Bool)

(assert (=> (not b_lambda!139525) (not d!1326002)))

(declare-fun bs!727739 () Bool)

(assert (= bs!727739 d!1326002))

(assert (=> bs!727739 m!5059567))

(assert (=> d!1325510 d!1326002))

(assert (=> d!1325510 d!1325582))

(declare-fun d!1326004 () Bool)

(declare-fun lt!1604618 () Bool)

(assert (=> d!1326004 (= lt!1604618 (select (content!7860 (toList!3225 lt!1604199)) (tuple2!48857 hash!377 newBucket!200)))))

(declare-fun e!2739008 () Bool)

(assert (=> d!1326004 (= lt!1604618 e!2739008)))

(declare-fun res!1814107 () Bool)

(assert (=> d!1326004 (=> (not res!1814107) (not e!2739008))))

(assert (=> d!1326004 (= res!1814107 ((_ is Cons!49263) (toList!3225 lt!1604199)))))

(assert (=> d!1326004 (= (contains!11647 (toList!3225 lt!1604199) (tuple2!48857 hash!377 newBucket!200)) lt!1604618)))

(declare-fun b!4398944 () Bool)

(declare-fun e!2739009 () Bool)

(assert (=> b!4398944 (= e!2739008 e!2739009)))

(declare-fun res!1814106 () Bool)

(assert (=> b!4398944 (=> res!1814106 e!2739009)))

(assert (=> b!4398944 (= res!1814106 (= (h!54884 (toList!3225 lt!1604199)) (tuple2!48857 hash!377 newBucket!200)))))

(declare-fun b!4398945 () Bool)

(assert (=> b!4398945 (= e!2739009 (contains!11647 (t!356321 (toList!3225 lt!1604199)) (tuple2!48857 hash!377 newBucket!200)))))

(assert (= (and d!1326004 res!1814107) b!4398944))

(assert (= (and b!4398944 (not res!1814106)) b!4398945))

(declare-fun m!5060857 () Bool)

(assert (=> d!1326004 m!5060857))

(declare-fun m!5060859 () Bool)

(assert (=> d!1326004 m!5060859))

(declare-fun m!5060861 () Bool)

(assert (=> b!4398945 m!5060861))

(assert (=> b!4398294 d!1326004))

(declare-fun d!1326006 () Bool)

(declare-fun res!1814112 () Bool)

(declare-fun e!2739014 () Bool)

(assert (=> d!1326006 (=> res!1814112 e!2739014)))

(assert (=> d!1326006 (= res!1814112 ((_ is Nil!49262) newBucket!200))))

(assert (=> d!1326006 (= (forall!9352 newBucket!200 lambda!148380) e!2739014)))

(declare-fun b!4398950 () Bool)

(declare-fun e!2739015 () Bool)

(assert (=> b!4398950 (= e!2739014 e!2739015)))

(declare-fun res!1814113 () Bool)

(assert (=> b!4398950 (=> (not res!1814113) (not e!2739015))))

(declare-fun dynLambda!20756 (Int tuple2!48854) Bool)

(assert (=> b!4398950 (= res!1814113 (dynLambda!20756 lambda!148380 (h!54883 newBucket!200)))))

(declare-fun b!4398951 () Bool)

(assert (=> b!4398951 (= e!2739015 (forall!9352 (t!356320 newBucket!200) lambda!148380))))

(assert (= (and d!1326006 (not res!1814112)) b!4398950))

(assert (= (and b!4398950 res!1814113) b!4398951))

(declare-fun b_lambda!139527 () Bool)

(assert (=> (not b_lambda!139527) (not b!4398950)))

(declare-fun m!5060863 () Bool)

(assert (=> b!4398950 m!5060863))

(declare-fun m!5060865 () Bool)

(assert (=> b!4398951 m!5060865))

(assert (=> d!1325608 d!1326006))

(declare-fun tp!1331747 () Bool)

(declare-fun e!2739016 () Bool)

(declare-fun b!4398952 () Bool)

(assert (=> b!4398952 (= e!2739016 (and tp_is_empty!25721 tp_is_empty!25723 tp!1331747))))

(assert (=> b!4398366 (= tp!1331742 e!2739016)))

(assert (= (and b!4398366 ((_ is Cons!49262) (t!356320 (t!356320 newBucket!200)))) b!4398952))

(declare-fun e!2739017 () Bool)

(declare-fun tp!1331748 () Bool)

(declare-fun b!4398953 () Bool)

(assert (=> b!4398953 (= e!2739017 (and tp_is_empty!25721 tp_is_empty!25723 tp!1331748))))

(assert (=> b!4398361 (= tp!1331738 e!2739017)))

(assert (= (and b!4398361 ((_ is Cons!49262) (_2!27722 (h!54884 (toList!3225 lm!1707))))) b!4398953))

(declare-fun b!4398954 () Bool)

(declare-fun e!2739018 () Bool)

(declare-fun tp!1331749 () Bool)

(declare-fun tp!1331750 () Bool)

(assert (=> b!4398954 (= e!2739018 (and tp!1331749 tp!1331750))))

(assert (=> b!4398361 (= tp!1331739 e!2739018)))

(assert (= (and b!4398361 ((_ is Cons!49263) (t!356321 (toList!3225 lm!1707)))) b!4398954))

(declare-fun b_lambda!139529 () Bool)

(assert (= b_lambda!139505 (or start!427308 b_lambda!139529)))

(declare-fun bs!727740 () Bool)

(declare-fun d!1326008 () Bool)

(assert (= bs!727740 (and d!1326008 start!427308)))

(assert (=> bs!727740 (= (dynLambda!20754 lambda!148351 (h!54884 (t!356321 (toList!3225 lt!1604048)))) (noDuplicateKeys!621 (_2!27722 (h!54884 (t!356321 (toList!3225 lt!1604048))))))))

(declare-fun m!5060867 () Bool)

(assert (=> bs!727740 m!5060867))

(assert (=> b!4398805 d!1326008))

(declare-fun b_lambda!139531 () Bool)

(assert (= b_lambda!139523 (or start!427308 b_lambda!139531)))

(declare-fun bs!727741 () Bool)

(declare-fun d!1326010 () Bool)

(assert (= bs!727741 (and d!1326010 start!427308)))

(assert (=> bs!727741 (= (dynLambda!20754 lambda!148351 (h!54884 (t!356321 (toList!3225 lt!1604051)))) (noDuplicateKeys!621 (_2!27722 (h!54884 (t!356321 (toList!3225 lt!1604051))))))))

(declare-fun m!5060869 () Bool)

(assert (=> bs!727741 m!5060869))

(assert (=> b!4398933 d!1326010))

(declare-fun b_lambda!139533 () Bool)

(assert (= b_lambda!139527 (or d!1325608 b_lambda!139533)))

(declare-fun bs!727742 () Bool)

(declare-fun d!1326012 () Bool)

(assert (= bs!727742 (and d!1326012 d!1325608)))

(assert (=> bs!727742 (= (dynLambda!20756 lambda!148380 (h!54883 newBucket!200)) (= (hash!1849 hashF!1247 (_1!27721 (h!54883 newBucket!200))) hash!377))))

(declare-fun m!5060871 () Bool)

(assert (=> bs!727742 m!5060871))

(assert (=> b!4398950 d!1326012))

(declare-fun b_lambda!139535 () Bool)

(assert (= b_lambda!139515 (or start!427308 b_lambda!139535)))

(declare-fun bs!727743 () Bool)

(declare-fun d!1326014 () Bool)

(assert (= bs!727743 (and d!1326014 start!427308)))

(assert (=> bs!727743 (= (dynLambda!20754 lambda!148351 (h!54884 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200))))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 (+!858 lm!1707 (tuple2!48857 hash!377 newBucket!200)))))))))

(declare-fun m!5060873 () Bool)

(assert (=> bs!727743 m!5060873))

(assert (=> b!4398851 d!1326014))

(declare-fun b_lambda!139537 () Bool)

(assert (= b_lambda!139513 (or d!1325572 b_lambda!139537)))

(declare-fun bs!727744 () Bool)

(declare-fun d!1326016 () Bool)

(assert (= bs!727744 (and d!1326016 d!1325572)))

(assert (=> bs!727744 (= (dynLambda!20754 lambda!148369 (h!54884 (toList!3225 lm!1707))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(assert (=> bs!727744 m!5059849))

(assert (=> b!4398843 d!1326016))

(declare-fun b_lambda!139539 () Bool)

(assert (= b_lambda!139525 (or start!427308 b_lambda!139539)))

(assert (=> d!1326002 d!1325626))

(declare-fun b_lambda!139541 () Bool)

(assert (= b_lambda!139509 (or d!1325600 b_lambda!139541)))

(declare-fun bs!727745 () Bool)

(declare-fun d!1326018 () Bool)

(assert (= bs!727745 (and d!1326018 d!1325600)))

(assert (=> bs!727745 (= (dynLambda!20754 lambda!148371 (h!54884 (t!356321 (toList!3225 lm!1707)))) (noDuplicateKeys!621 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))))))

(assert (=> bs!727745 m!5060559))

(assert (=> b!4398835 d!1326018))

(declare-fun b_lambda!139543 () Bool)

(assert (= b_lambda!139511 (or d!1325614 b_lambda!139543)))

(declare-fun bs!727746 () Bool)

(declare-fun d!1326020 () Bool)

(assert (= bs!727746 (and d!1326020 d!1325614)))

(assert (=> bs!727746 (= (dynLambda!20754 lambda!148381 (h!54884 (toList!3225 lt!1604048))) (allKeysSameHash!579 (_2!27722 (h!54884 (toList!3225 lt!1604048))) (_1!27722 (h!54884 (toList!3225 lt!1604048))) hashF!1247))))

(declare-fun m!5060875 () Bool)

(assert (=> bs!727746 m!5060875))

(assert (=> b!4398841 d!1326020))

(declare-fun b_lambda!139545 () Bool)

(assert (= b_lambda!139519 (or start!427308 b_lambda!139545)))

(declare-fun bs!727747 () Bool)

(declare-fun d!1326022 () Bool)

(assert (= bs!727747 (and d!1326022 start!427308)))

(assert (=> bs!727747 (= (dynLambda!20754 lambda!148351 (h!54884 (t!356321 (toList!3225 lm!1707)))) (noDuplicateKeys!621 (_2!27722 (h!54884 (t!356321 (toList!3225 lm!1707))))))))

(assert (=> bs!727747 m!5060559))

(assert (=> b!4398905 d!1326022))

(declare-fun b_lambda!139547 () Bool)

(assert (= b_lambda!139521 (or d!1325594 b_lambda!139547)))

(declare-fun bs!727748 () Bool)

(declare-fun d!1326024 () Bool)

(assert (= bs!727748 (and d!1326024 d!1325594)))

(assert (=> bs!727748 (= (dynLambda!20754 lambda!148370 (h!54884 (toList!3225 lt!1604048))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lt!1604048)))))))

(assert (=> bs!727748 m!5059905))

(assert (=> b!4398931 d!1326024))

(declare-fun b_lambda!139549 () Bool)

(assert (= b_lambda!139507 (or d!1325602 b_lambda!139549)))

(declare-fun bs!727749 () Bool)

(declare-fun d!1326026 () Bool)

(assert (= bs!727749 (and d!1326026 d!1325602)))

(assert (=> bs!727749 (= (dynLambda!20754 lambda!148374 (h!54884 (toList!3225 lm!1707))) (noDuplicateKeys!621 (_2!27722 (h!54884 (toList!3225 lm!1707)))))))

(assert (=> bs!727749 m!5059849))

(assert (=> b!4398829 d!1326026))

(declare-fun b_lambda!139551 () Bool)

(assert (= b_lambda!139517 (or d!1325606 b_lambda!139551)))

(declare-fun bs!727750 () Bool)

(declare-fun d!1326028 () Bool)

(assert (= bs!727750 (and d!1326028 d!1325606)))

(assert (=> bs!727750 (= (dynLambda!20754 lambda!148377 (h!54884 (toList!3225 lm!1707))) (allKeysSameHash!579 (_2!27722 (h!54884 (toList!3225 lm!1707))) (_1!27722 (h!54884 (toList!3225 lm!1707))) hashF!1247))))

(declare-fun m!5060877 () Bool)

(assert (=> bs!727750 m!5060877))

(assert (=> b!4398854 d!1326028))

(check-sat (not d!1325986) (not b!4398855) (not b!4398926) (not b!4398523) (not b_lambda!139543) (not d!1325974) (not d!1325976) (not b!4398801) (not b!4398821) (not b!4398798) (not b!4398719) (not b!4398763) (not d!1325718) (not b!4398908) (not b!4398862) (not bm!306133) (not b!4398921) (not b!4398806) (not b!4398579) (not d!1325906) (not d!1325676) (not b!4398525) (not b!4398917) (not d!1325704) (not bs!727747) (not b!4398919) (not b!4398815) (not d!1325864) (not bs!727743) (not b!4398940) (not d!1325988) (not b!4398951) (not b!4398747) (not bs!727749) (not d!1325970) (not b_lambda!139449) (not d!1325936) (not b!4398549) (not b!4398518) (not d!1326004) (not b!4398850) (not d!1325948) (not b!4398742) (not d!1325916) (not d!1325964) (not d!1325908) (not b!4398514) (not bs!727745) (not b!4398943) (not b_lambda!139447) (not d!1325720) (not d!1325928) (not b!4398934) (not d!1325824) (not d!1325978) (not b!4398468) (not d!1325922) (not d!1325934) (not b!4398844) (not b!4398666) (not b_lambda!139529) (not bm!306132) (not b!4398524) (not b!4398846) (not bm!306147) (not b!4398557) (not d!1325812) (not b!4398697) (not bm!306143) (not b_lambda!139549) (not bs!727742) (not bs!727750) (not b!4398857) (not b!4398915) (not bs!727740) (not d!1325998) (not d!1325966) (not d!1325984) (not b!4398900) (not bm!306131) (not b!4398867) (not d!1325732) (not b!4398911) (not d!1325960) (not d!1325860) (not b!4398910) (not b!4398924) (not b!4398797) (not b!4398724) (not b!4398795) (not d!1325804) (not d!1325868) (not d!1325846) (not d!1325968) (not b!4398952) (not b!4398580) (not bm!306145) (not d!1325832) (not b!4398833) (not b_lambda!139537) (not d!1325990) (not b!4398860) (not d!1325724) (not b!4398945) (not bs!727741) (not b!4398808) (not b!4398462) (not b_lambda!139453) (not b_lambda!139535) (not bm!306148) (not b_lambda!139545) (not b!4398938) (not d!1325840) (not b!4398859) (not b!4398703) (not b_lambda!139455) (not b!4398701) (not d!1325730) (not b!4398928) (not b_lambda!139547) (not bs!727746) (not b!4398581) (not b!4398828) (not bm!306144) (not d!1325910) (not b!4398807) (not d!1325932) (not b!4398842) (not b!4398727) (not b!4398954) (not b_lambda!139551) (not d!1325912) (not b!4398818) (not b!4398830) (not b_lambda!139539) (not b!4398873) (not d!1325898) (not b!4398670) (not b!4398852) (not b!4398698) (not b_lambda!139531) (not b!4398667) (not b!4398804) (not b_lambda!139541) (not d!1325904) (not bm!306142) (not b!4398817) (not b!4398930) (not b!4398864) (not d!1325818) (not b!4398755) (not b!4398816) (not b!4398705) (not b!4398942) (not b!4398916) (not bs!727748) (not d!1325940) (not b!4398589) (not b!4398672) (not b!4398932) (not d!1325982) (not d!1325828) (not bm!306146) (not b_lambda!139533) (not b!4398906) (not b!4398809) tp_is_empty!25723 (not b!4398840) tp_is_empty!25721 (not b!4398874) (not b!4398493) (not b!4398912) (not b!4398522) (not d!1325996) (not b!4398904) (not bs!727744) (not b!4398903) (not b!4398920) (not b!4398803) (not b!4398941) (not b!4398848) (not b!4398837) (not b!4398861) (not b!4398936) (not b!4398953) (not b_lambda!139451) (not b!4398674) (not b!4398838) (not b!4398836))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491980 () Bool)

(assert start!491980)

(declare-fun bs!1153410 () Bool)

(declare-fun b!4785485 () Bool)

(assert (= bs!1153410 (and b!4785485 start!491980)))

(declare-fun lambda!229137 () Int)

(declare-fun lambda!229136 () Int)

(assert (=> bs!1153410 (not (= lambda!229137 lambda!229136))))

(assert (=> b!4785485 true))

(assert (=> b!4785485 true))

(assert (=> b!4785485 true))

(declare-fun res!2032729 () Bool)

(declare-fun e!2987867 () Bool)

(assert (=> start!491980 (=> (not res!2032729) (not e!2987867))))

(declare-datatypes ((K!15637 0))(
  ( (K!15638 (val!20815 Int)) )
))
(declare-datatypes ((V!15883 0))(
  ( (V!15884 (val!20816 Int)) )
))
(declare-datatypes ((tuple2!56604 0))(
  ( (tuple2!56605 (_1!31596 K!15637) (_2!31596 V!15883)) )
))
(declare-datatypes ((List!54197 0))(
  ( (Nil!54073) (Cons!54073 (h!60493 tuple2!56604) (t!361647 List!54197)) )
))
(declare-datatypes ((tuple2!56606 0))(
  ( (tuple2!56607 (_1!31597 (_ BitVec 64)) (_2!31597 List!54197)) )
))
(declare-datatypes ((List!54198 0))(
  ( (Nil!54074) (Cons!54074 (h!60494 tuple2!56606) (t!361648 List!54198)) )
))
(declare-datatypes ((ListLongMap!5219 0))(
  ( (ListLongMap!5220 (toList!6797 List!54198)) )
))
(declare-fun lm!2473 () ListLongMap!5219)

(declare-fun forall!12159 (List!54198 Int) Bool)

(assert (=> start!491980 (= res!2032729 (forall!12159 (toList!6797 lm!2473) lambda!229136))))

(assert (=> start!491980 e!2987867))

(declare-fun e!2987864 () Bool)

(declare-fun inv!69664 (ListLongMap!5219) Bool)

(assert (=> start!491980 (and (inv!69664 lm!2473) e!2987864)))

(assert (=> start!491980 true))

(declare-fun tp_is_empty!33317 () Bool)

(assert (=> start!491980 tp_is_empty!33317))

(declare-fun tp_is_empty!33319 () Bool)

(assert (=> start!491980 tp_is_empty!33319))

(declare-fun b!4785481 () Bool)

(declare-fun tp!1357651 () Bool)

(assert (=> b!4785481 (= e!2987864 tp!1357651)))

(declare-fun lt!1947068 () (_ BitVec 64))

(declare-fun b!4785482 () Bool)

(declare-fun key!5896 () K!15637)

(declare-fun e!2987866 () Bool)

(declare-datatypes ((Option!12995 0))(
  ( (None!12994) (Some!12994 (v!48245 tuple2!56604)) )
))
(declare-fun isDefined!10137 (Option!12995) Bool)

(declare-fun getPair!831 (List!54197 K!15637) Option!12995)

(declare-fun apply!12914 (ListLongMap!5219 (_ BitVec 64)) List!54197)

(assert (=> b!4785482 (= e!2987866 (isDefined!10137 (getPair!831 (apply!12914 lm!2473 lt!1947068) key!5896)))))

(declare-fun b!4785483 () Bool)

(declare-fun e!2987865 () Bool)

(assert (=> b!4785483 (= e!2987867 (not e!2987865))))

(declare-fun res!2032725 () Bool)

(assert (=> b!4785483 (=> res!2032725 e!2987865)))

(declare-fun value!3111 () V!15883)

(declare-fun getValue!55 (List!54198 K!15637) V!15883)

(assert (=> b!4785483 (= res!2032725 (not (= (getValue!55 (toList!6797 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!509 (List!54198 K!15637) Bool)

(assert (=> b!4785483 (containsKeyBiggerList!509 (toList!6797 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6859 0))(
  ( (HashableExt!6858 (__x!32882 Int)) )
))
(declare-fun hashF!1559 () Hashable!6859)

(declare-datatypes ((Unit!139478 0))(
  ( (Unit!139479) )
))
(declare-fun lt!1947071 () Unit!139478)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!249 (ListLongMap!5219 K!15637 Hashable!6859) Unit!139478)

(assert (=> b!4785483 (= lt!1947071 (lemmaInLongMapThenContainsKeyBiggerList!249 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4785483 e!2987866))

(declare-fun res!2032727 () Bool)

(assert (=> b!4785483 (=> (not res!2032727) (not e!2987866))))

(declare-fun contains!17646 (ListLongMap!5219 (_ BitVec 64)) Bool)

(assert (=> b!4785483 (= res!2032727 (contains!17646 lm!2473 lt!1947068))))

(declare-fun hash!4876 (Hashable!6859 K!15637) (_ BitVec 64))

(assert (=> b!4785483 (= lt!1947068 (hash!4876 hashF!1559 key!5896))))

(declare-fun lt!1947070 () Unit!139478)

(declare-fun lemmaInGenericMapThenInLongMap!263 (ListLongMap!5219 K!15637 Hashable!6859) Unit!139478)

(assert (=> b!4785483 (= lt!1947070 (lemmaInGenericMapThenInLongMap!263 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4785484 () Bool)

(declare-fun res!2032730 () Bool)

(assert (=> b!4785484 (=> res!2032730 e!2987865)))

(assert (=> b!4785484 (= res!2032730 (not (is-Cons!54074 (toList!6797 lm!2473))))))

(declare-fun e!2987863 () Bool)

(assert (=> b!4785485 (= e!2987865 e!2987863)))

(declare-fun res!2032726 () Bool)

(assert (=> b!4785485 (=> (not res!2032726) (not e!2987863))))

(declare-fun lambda!229138 () Int)

(declare-fun forall!12160 (List!54197 Int) Bool)

(assert (=> b!4785485 (= res!2032726 (forall!12160 (_2!31597 (h!60494 (toList!6797 lm!2473))) lambda!229138))))

(declare-fun lt!1947069 () Unit!139478)

(declare-fun forallContained!4097 (List!54198 Int tuple2!56606) Unit!139478)

(assert (=> b!4785485 (= lt!1947069 (forallContained!4097 (toList!6797 lm!2473) lambda!229137 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785486 () Bool)

(declare-fun res!2032731 () Bool)

(assert (=> b!4785486 (=> (not res!2032731) (not e!2987867))))

(declare-datatypes ((ListMap!6269 0))(
  ( (ListMap!6270 (toList!6798 List!54197)) )
))
(declare-fun contains!17647 (ListMap!6269 K!15637) Bool)

(declare-fun extractMap!2386 (List!54198) ListMap!6269)

(assert (=> b!4785486 (= res!2032731 (contains!17647 (extractMap!2386 (toList!6797 lm!2473)) key!5896))))

(declare-fun b!4785487 () Bool)

(declare-fun res!2032732 () Bool)

(assert (=> b!4785487 (=> res!2032732 e!2987865)))

(declare-fun containsKey!3858 (List!54197 K!15637) Bool)

(assert (=> b!4785487 (= res!2032732 (not (containsKey!3858 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896)))))

(declare-fun b!4785488 () Bool)

(declare-fun res!2032728 () Bool)

(assert (=> b!4785488 (=> (not res!2032728) (not e!2987867))))

(declare-fun allKeysSameHashInMap!2264 (ListLongMap!5219 Hashable!6859) Bool)

(assert (=> b!4785488 (= res!2032728 (allKeysSameHashInMap!2264 lm!2473 hashF!1559))))

(declare-fun b!4785489 () Bool)

(declare-fun contains!17648 (List!54197 tuple2!56604) Bool)

(assert (=> b!4785489 (= e!2987863 (contains!17648 (_2!31597 (h!60494 (toList!6797 lm!2473))) (tuple2!56605 key!5896 value!3111)))))

(assert (= (and start!491980 res!2032729) b!4785488))

(assert (= (and b!4785488 res!2032728) b!4785486))

(assert (= (and b!4785486 res!2032731) b!4785483))

(assert (= (and b!4785483 res!2032727) b!4785482))

(assert (= (and b!4785483 (not res!2032725)) b!4785484))

(assert (= (and b!4785484 (not res!2032730)) b!4785487))

(assert (= (and b!4785487 (not res!2032732)) b!4785485))

(assert (= (and b!4785485 res!2032726) b!4785489))

(assert (= start!491980 b!4785481))

(declare-fun m!5764494 () Bool)

(assert (=> b!4785488 m!5764494))

(declare-fun m!5764496 () Bool)

(assert (=> b!4785482 m!5764496))

(assert (=> b!4785482 m!5764496))

(declare-fun m!5764498 () Bool)

(assert (=> b!4785482 m!5764498))

(assert (=> b!4785482 m!5764498))

(declare-fun m!5764500 () Bool)

(assert (=> b!4785482 m!5764500))

(declare-fun m!5764502 () Bool)

(assert (=> b!4785489 m!5764502))

(declare-fun m!5764504 () Bool)

(assert (=> b!4785485 m!5764504))

(declare-fun m!5764506 () Bool)

(assert (=> b!4785485 m!5764506))

(declare-fun m!5764508 () Bool)

(assert (=> b!4785483 m!5764508))

(declare-fun m!5764510 () Bool)

(assert (=> b!4785483 m!5764510))

(declare-fun m!5764512 () Bool)

(assert (=> b!4785483 m!5764512))

(declare-fun m!5764514 () Bool)

(assert (=> b!4785483 m!5764514))

(declare-fun m!5764516 () Bool)

(assert (=> b!4785483 m!5764516))

(declare-fun m!5764518 () Bool)

(assert (=> b!4785483 m!5764518))

(declare-fun m!5764520 () Bool)

(assert (=> b!4785486 m!5764520))

(assert (=> b!4785486 m!5764520))

(declare-fun m!5764522 () Bool)

(assert (=> b!4785486 m!5764522))

(declare-fun m!5764524 () Bool)

(assert (=> b!4785487 m!5764524))

(declare-fun m!5764526 () Bool)

(assert (=> start!491980 m!5764526))

(declare-fun m!5764528 () Bool)

(assert (=> start!491980 m!5764528))

(push 1)

(assert tp_is_empty!33319)

(assert (not start!491980))

(assert (not b!4785489))

(assert (not b!4785485))

(assert (not b!4785487))

(assert (not b!4785481))

(assert (not b!4785482))

(assert tp_is_empty!33317)

(assert (not b!4785488))

(assert (not b!4785483))

(assert (not b!4785486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1530709 () Bool)

(declare-fun lt!1947086 () Bool)

(declare-fun content!9672 (List!54197) (Set tuple2!56604))

(assert (=> d!1530709 (= lt!1947086 (set.member (tuple2!56605 key!5896 value!3111) (content!9672 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(declare-fun e!2987887 () Bool)

(assert (=> d!1530709 (= lt!1947086 e!2987887)))

(declare-fun res!2032762 () Bool)

(assert (=> d!1530709 (=> (not res!2032762) (not e!2987887))))

(assert (=> d!1530709 (= res!2032762 (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(assert (=> d!1530709 (= (contains!17648 (_2!31597 (h!60494 (toList!6797 lm!2473))) (tuple2!56605 key!5896 value!3111)) lt!1947086)))

(declare-fun b!4785533 () Bool)

(declare-fun e!2987888 () Bool)

(assert (=> b!4785533 (= e!2987887 e!2987888)))

(declare-fun res!2032761 () Bool)

(assert (=> b!4785533 (=> res!2032761 e!2987888)))

(assert (=> b!4785533 (= res!2032761 (= (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (tuple2!56605 key!5896 value!3111)))))

(declare-fun b!4785534 () Bool)

(assert (=> b!4785534 (= e!2987888 (contains!17648 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (tuple2!56605 key!5896 value!3111)))))

(assert (= (and d!1530709 res!2032762) b!4785533))

(assert (= (and b!4785533 (not res!2032761)) b!4785534))

(declare-fun m!5764566 () Bool)

(assert (=> d!1530709 m!5764566))

(declare-fun m!5764568 () Bool)

(assert (=> d!1530709 m!5764568))

(declare-fun m!5764570 () Bool)

(assert (=> b!4785534 m!5764570))

(assert (=> b!4785489 d!1530709))

(declare-fun d!1530711 () Bool)

(declare-fun res!2032767 () Bool)

(declare-fun e!2987893 () Bool)

(assert (=> d!1530711 (=> res!2032767 e!2987893)))

(assert (=> d!1530711 (= res!2032767 (is-Nil!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(assert (=> d!1530711 (= (forall!12160 (_2!31597 (h!60494 (toList!6797 lm!2473))) lambda!229138) e!2987893)))

(declare-fun b!4785539 () Bool)

(declare-fun e!2987894 () Bool)

(assert (=> b!4785539 (= e!2987893 e!2987894)))

(declare-fun res!2032768 () Bool)

(assert (=> b!4785539 (=> (not res!2032768) (not e!2987894))))

(declare-fun dynLambda!22030 (Int tuple2!56604) Bool)

(assert (=> b!4785539 (= res!2032768 (dynLambda!22030 lambda!229138 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(declare-fun b!4785540 () Bool)

(assert (=> b!4785540 (= e!2987894 (forall!12160 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) lambda!229138))))

(assert (= (and d!1530711 (not res!2032767)) b!4785539))

(assert (= (and b!4785539 res!2032768) b!4785540))

(declare-fun b_lambda!186107 () Bool)

(assert (=> (not b_lambda!186107) (not b!4785539)))

(declare-fun m!5764572 () Bool)

(assert (=> b!4785539 m!5764572))

(declare-fun m!5764574 () Bool)

(assert (=> b!4785540 m!5764574))

(assert (=> b!4785485 d!1530711))

(declare-fun d!1530713 () Bool)

(declare-fun dynLambda!22031 (Int tuple2!56606) Bool)

(assert (=> d!1530713 (dynLambda!22031 lambda!229137 (h!60494 (toList!6797 lm!2473)))))

(declare-fun lt!1947089 () Unit!139478)

(declare-fun choose!34387 (List!54198 Int tuple2!56606) Unit!139478)

(assert (=> d!1530713 (= lt!1947089 (choose!34387 (toList!6797 lm!2473) lambda!229137 (h!60494 (toList!6797 lm!2473))))))

(declare-fun e!2987897 () Bool)

(assert (=> d!1530713 e!2987897))

(declare-fun res!2032771 () Bool)

(assert (=> d!1530713 (=> (not res!2032771) (not e!2987897))))

(assert (=> d!1530713 (= res!2032771 (forall!12159 (toList!6797 lm!2473) lambda!229137))))

(assert (=> d!1530713 (= (forallContained!4097 (toList!6797 lm!2473) lambda!229137 (h!60494 (toList!6797 lm!2473))) lt!1947089)))

(declare-fun b!4785543 () Bool)

(declare-fun contains!17652 (List!54198 tuple2!56606) Bool)

(assert (=> b!4785543 (= e!2987897 (contains!17652 (toList!6797 lm!2473) (h!60494 (toList!6797 lm!2473))))))

(assert (= (and d!1530713 res!2032771) b!4785543))

(declare-fun b_lambda!186109 () Bool)

(assert (=> (not b_lambda!186109) (not d!1530713)))

(declare-fun m!5764576 () Bool)

(assert (=> d!1530713 m!5764576))

(declare-fun m!5764578 () Bool)

(assert (=> d!1530713 m!5764578))

(declare-fun m!5764580 () Bool)

(assert (=> d!1530713 m!5764580))

(declare-fun m!5764582 () Bool)

(assert (=> b!4785543 m!5764582))

(assert (=> b!4785485 d!1530713))

(declare-fun b!4785562 () Bool)

(declare-fun e!2987915 () Unit!139478)

(declare-fun e!2987912 () Unit!139478)

(assert (=> b!4785562 (= e!2987915 e!2987912)))

(declare-fun c!815748 () Bool)

(declare-fun call!334835 () Bool)

(assert (=> b!4785562 (= c!815748 call!334835)))

(declare-fun b!4785563 () Bool)

(declare-fun Unit!139482 () Unit!139478)

(assert (=> b!4785563 (= e!2987912 Unit!139482)))

(declare-fun b!4785564 () Bool)

(declare-fun lt!1947109 () Unit!139478)

(assert (=> b!4785564 (= e!2987915 lt!1947109)))

(declare-fun lt!1947110 () Unit!139478)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2104 (List!54197 K!15637) Unit!139478)

(assert (=> b!4785564 (= lt!1947110 (lemmaContainsKeyImpliesGetValueByKeyDefined!2104 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(declare-datatypes ((Option!12997 0))(
  ( (None!12996) (Some!12996 (v!48248 V!15883)) )
))
(declare-fun isDefined!10139 (Option!12997) Bool)

(declare-fun getValueByKey!2312 (List!54197 K!15637) Option!12997)

(assert (=> b!4785564 (isDefined!10139 (getValueByKey!2312 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(declare-fun lt!1947107 () Unit!139478)

(assert (=> b!4785564 (= lt!1947107 lt!1947110)))

(declare-fun lemmaInListThenGetKeysListContains!1051 (List!54197 K!15637) Unit!139478)

(assert (=> b!4785564 (= lt!1947109 (lemmaInListThenGetKeysListContains!1051 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(assert (=> b!4785564 call!334835))

(declare-fun b!4785565 () Bool)

(declare-datatypes ((List!54201 0))(
  ( (Nil!54077) (Cons!54077 (h!60497 K!15637) (t!361651 List!54201)) )
))
(declare-fun e!2987911 () List!54201)

(declare-fun getKeysList!1056 (List!54197) List!54201)

(assert (=> b!4785565 (= e!2987911 (getKeysList!1056 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))

(declare-fun b!4785566 () Bool)

(declare-fun e!2987913 () Bool)

(declare-fun e!2987914 () Bool)

(assert (=> b!4785566 (= e!2987913 e!2987914)))

(declare-fun res!2032778 () Bool)

(assert (=> b!4785566 (=> (not res!2032778) (not e!2987914))))

(assert (=> b!4785566 (= res!2032778 (isDefined!10139 (getValueByKey!2312 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896)))))

(declare-fun b!4785567 () Bool)

(assert (=> b!4785567 false))

(declare-fun lt!1947113 () Unit!139478)

(declare-fun lt!1947108 () Unit!139478)

(assert (=> b!4785567 (= lt!1947113 lt!1947108)))

(declare-fun containsKey!3860 (List!54197 K!15637) Bool)

(assert (=> b!4785567 (containsKey!3860 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1056 (List!54197 K!15637) Unit!139478)

(assert (=> b!4785567 (= lt!1947108 (lemmaInGetKeysListThenContainsKey!1056 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(declare-fun Unit!139483 () Unit!139478)

(assert (=> b!4785567 (= e!2987912 Unit!139483)))

(declare-fun b!4785568 () Bool)

(declare-fun contains!17653 (List!54201 K!15637) Bool)

(declare-fun keys!19715 (ListMap!6269) List!54201)

(assert (=> b!4785568 (= e!2987914 (contains!17653 (keys!19715 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(declare-fun d!1530715 () Bool)

(assert (=> d!1530715 e!2987913))

(declare-fun res!2032779 () Bool)

(assert (=> d!1530715 (=> res!2032779 e!2987913)))

(declare-fun e!2987910 () Bool)

(assert (=> d!1530715 (= res!2032779 e!2987910)))

(declare-fun res!2032780 () Bool)

(assert (=> d!1530715 (=> (not res!2032780) (not e!2987910))))

(declare-fun lt!1947112 () Bool)

(assert (=> d!1530715 (= res!2032780 (not lt!1947112))))

(declare-fun lt!1947111 () Bool)

(assert (=> d!1530715 (= lt!1947112 lt!1947111)))

(declare-fun lt!1947106 () Unit!139478)

(assert (=> d!1530715 (= lt!1947106 e!2987915)))

(declare-fun c!815749 () Bool)

(assert (=> d!1530715 (= c!815749 lt!1947111)))

(assert (=> d!1530715 (= lt!1947111 (containsKey!3860 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(assert (=> d!1530715 (= (contains!17647 (extractMap!2386 (toList!6797 lm!2473)) key!5896) lt!1947112)))

(declare-fun b!4785569 () Bool)

(assert (=> b!4785569 (= e!2987910 (not (contains!17653 (keys!19715 (extractMap!2386 (toList!6797 lm!2473))) key!5896)))))

(declare-fun b!4785570 () Bool)

(assert (=> b!4785570 (= e!2987911 (keys!19715 (extractMap!2386 (toList!6797 lm!2473))))))

(declare-fun bm!334830 () Bool)

(assert (=> bm!334830 (= call!334835 (contains!17653 e!2987911 key!5896))))

(declare-fun c!815750 () Bool)

(assert (=> bm!334830 (= c!815750 c!815749)))

(assert (= (and d!1530715 c!815749) b!4785564))

(assert (= (and d!1530715 (not c!815749)) b!4785562))

(assert (= (and b!4785562 c!815748) b!4785567))

(assert (= (and b!4785562 (not c!815748)) b!4785563))

(assert (= (or b!4785564 b!4785562) bm!334830))

(assert (= (and bm!334830 c!815750) b!4785565))

(assert (= (and bm!334830 (not c!815750)) b!4785570))

(assert (= (and d!1530715 res!2032780) b!4785569))

(assert (= (and d!1530715 (not res!2032779)) b!4785566))

(assert (= (and b!4785566 res!2032778) b!4785568))

(declare-fun m!5764584 () Bool)

(assert (=> bm!334830 m!5764584))

(declare-fun m!5764586 () Bool)

(assert (=> b!4785565 m!5764586))

(assert (=> b!4785568 m!5764520))

(declare-fun m!5764588 () Bool)

(assert (=> b!4785568 m!5764588))

(assert (=> b!4785568 m!5764588))

(declare-fun m!5764590 () Bool)

(assert (=> b!4785568 m!5764590))

(assert (=> b!4785569 m!5764520))

(assert (=> b!4785569 m!5764588))

(assert (=> b!4785569 m!5764588))

(assert (=> b!4785569 m!5764590))

(assert (=> b!4785570 m!5764520))

(assert (=> b!4785570 m!5764588))

(declare-fun m!5764592 () Bool)

(assert (=> b!4785566 m!5764592))

(assert (=> b!4785566 m!5764592))

(declare-fun m!5764594 () Bool)

(assert (=> b!4785566 m!5764594))

(declare-fun m!5764596 () Bool)

(assert (=> b!4785564 m!5764596))

(assert (=> b!4785564 m!5764592))

(assert (=> b!4785564 m!5764592))

(assert (=> b!4785564 m!5764594))

(declare-fun m!5764598 () Bool)

(assert (=> b!4785564 m!5764598))

(declare-fun m!5764600 () Bool)

(assert (=> b!4785567 m!5764600))

(declare-fun m!5764602 () Bool)

(assert (=> b!4785567 m!5764602))

(assert (=> d!1530715 m!5764600))

(assert (=> b!4785486 d!1530715))

(declare-fun bs!1153412 () Bool)

(declare-fun d!1530719 () Bool)

(assert (= bs!1153412 (and d!1530719 start!491980)))

(declare-fun lambda!229150 () Int)

(assert (=> bs!1153412 (= lambda!229150 lambda!229136)))

(declare-fun bs!1153413 () Bool)

(assert (= bs!1153413 (and d!1530719 b!4785485)))

(assert (=> bs!1153413 (not (= lambda!229150 lambda!229137))))

(declare-fun lt!1947116 () ListMap!6269)

(declare-fun invariantList!1710 (List!54197) Bool)

(assert (=> d!1530719 (invariantList!1710 (toList!6798 lt!1947116))))

(declare-fun e!2987918 () ListMap!6269)

(assert (=> d!1530719 (= lt!1947116 e!2987918)))

(declare-fun c!815753 () Bool)

(assert (=> d!1530719 (= c!815753 (is-Cons!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530719 (forall!12159 (toList!6797 lm!2473) lambda!229150)))

(assert (=> d!1530719 (= (extractMap!2386 (toList!6797 lm!2473)) lt!1947116)))

(declare-fun b!4785575 () Bool)

(declare-fun addToMapMapFromBucket!1675 (List!54197 ListMap!6269) ListMap!6269)

(assert (=> b!4785575 (= e!2987918 (addToMapMapFromBucket!1675 (_2!31597 (h!60494 (toList!6797 lm!2473))) (extractMap!2386 (t!361648 (toList!6797 lm!2473)))))))

(declare-fun b!4785576 () Bool)

(assert (=> b!4785576 (= e!2987918 (ListMap!6270 Nil!54073))))

(assert (= (and d!1530719 c!815753) b!4785575))

(assert (= (and d!1530719 (not c!815753)) b!4785576))

(declare-fun m!5764604 () Bool)

(assert (=> d!1530719 m!5764604))

(declare-fun m!5764606 () Bool)

(assert (=> d!1530719 m!5764606))

(declare-fun m!5764608 () Bool)

(assert (=> b!4785575 m!5764608))

(assert (=> b!4785575 m!5764608))

(declare-fun m!5764610 () Bool)

(assert (=> b!4785575 m!5764610))

(assert (=> b!4785486 d!1530719))

(declare-fun d!1530721 () Bool)

(declare-fun res!2032785 () Bool)

(declare-fun e!2987925 () Bool)

(assert (=> d!1530721 (=> res!2032785 e!2987925)))

(assert (=> d!1530721 (= res!2032785 (and (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (= (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))) key!5896)))))

(assert (=> d!1530721 (= (containsKey!3858 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896) e!2987925)))

(declare-fun b!4785585 () Bool)

(declare-fun e!2987926 () Bool)

(assert (=> b!4785585 (= e!2987925 e!2987926)))

(declare-fun res!2032786 () Bool)

(assert (=> b!4785585 (=> (not res!2032786) (not e!2987926))))

(assert (=> b!4785585 (= res!2032786 (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun b!4785586 () Bool)

(assert (=> b!4785586 (= e!2987926 (containsKey!3858 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) key!5896))))

(assert (= (and d!1530721 (not res!2032785)) b!4785585))

(assert (= (and b!4785585 res!2032786) b!4785586))

(declare-fun m!5764612 () Bool)

(assert (=> b!4785586 m!5764612))

(assert (=> b!4785487 d!1530721))

(declare-fun d!1530723 () Bool)

(declare-fun res!2032791 () Bool)

(declare-fun e!2987935 () Bool)

(assert (=> d!1530723 (=> res!2032791 e!2987935)))

(assert (=> d!1530723 (= res!2032791 (is-Nil!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530723 (= (forall!12159 (toList!6797 lm!2473) lambda!229136) e!2987935)))

(declare-fun b!4785599 () Bool)

(declare-fun e!2987936 () Bool)

(assert (=> b!4785599 (= e!2987935 e!2987936)))

(declare-fun res!2032792 () Bool)

(assert (=> b!4785599 (=> (not res!2032792) (not e!2987936))))

(assert (=> b!4785599 (= res!2032792 (dynLambda!22031 lambda!229136 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785600 () Bool)

(assert (=> b!4785600 (= e!2987936 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229136))))

(assert (= (and d!1530723 (not res!2032791)) b!4785599))

(assert (= (and b!4785599 res!2032792) b!4785600))

(declare-fun b_lambda!186111 () Bool)

(assert (=> (not b_lambda!186111) (not b!4785599)))

(declare-fun m!5764614 () Bool)

(assert (=> b!4785599 m!5764614))

(declare-fun m!5764616 () Bool)

(assert (=> b!4785600 m!5764616))

(assert (=> start!491980 d!1530723))

(declare-fun d!1530725 () Bool)

(declare-fun isStrictlySorted!858 (List!54198) Bool)

(assert (=> d!1530725 (= (inv!69664 lm!2473) (isStrictlySorted!858 (toList!6797 lm!2473)))))

(declare-fun bs!1153414 () Bool)

(assert (= bs!1153414 d!1530725))

(declare-fun m!5764618 () Bool)

(assert (=> bs!1153414 m!5764618))

(assert (=> start!491980 d!1530725))

(declare-fun d!1530727 () Bool)

(declare-fun isEmpty!29381 (Option!12995) Bool)

(assert (=> d!1530727 (= (isDefined!10137 (getPair!831 (apply!12914 lm!2473 lt!1947068) key!5896)) (not (isEmpty!29381 (getPair!831 (apply!12914 lm!2473 lt!1947068) key!5896))))))

(declare-fun bs!1153415 () Bool)

(assert (= bs!1153415 d!1530727))

(assert (=> bs!1153415 m!5764498))

(declare-fun m!5764620 () Bool)

(assert (=> bs!1153415 m!5764620))

(assert (=> b!4785482 d!1530727))

(declare-fun b!4785632 () Bool)

(declare-fun e!2987961 () Bool)

(declare-fun lt!1947143 () Option!12995)

(declare-fun get!18409 (Option!12995) tuple2!56604)

(assert (=> b!4785632 (= e!2987961 (contains!17648 (apply!12914 lm!2473 lt!1947068) (get!18409 lt!1947143)))))

(declare-fun d!1530729 () Bool)

(declare-fun e!2987963 () Bool)

(assert (=> d!1530729 e!2987963))

(declare-fun res!2032812 () Bool)

(assert (=> d!1530729 (=> res!2032812 e!2987963)))

(declare-fun e!2987959 () Bool)

(assert (=> d!1530729 (= res!2032812 e!2987959)))

(declare-fun res!2032811 () Bool)

(assert (=> d!1530729 (=> (not res!2032811) (not e!2987959))))

(assert (=> d!1530729 (= res!2032811 (isEmpty!29381 lt!1947143))))

(declare-fun e!2987962 () Option!12995)

(assert (=> d!1530729 (= lt!1947143 e!2987962)))

(declare-fun c!815768 () Bool)

(assert (=> d!1530729 (= c!815768 (and (is-Cons!54073 (apply!12914 lm!2473 lt!1947068)) (= (_1!31596 (h!60493 (apply!12914 lm!2473 lt!1947068))) key!5896)))))

(declare-fun noDuplicateKeys!2307 (List!54197) Bool)

(assert (=> d!1530729 (noDuplicateKeys!2307 (apply!12914 lm!2473 lt!1947068))))

(assert (=> d!1530729 (= (getPair!831 (apply!12914 lm!2473 lt!1947068) key!5896) lt!1947143)))

(declare-fun b!4785633 () Bool)

(assert (=> b!4785633 (= e!2987962 (Some!12994 (h!60493 (apply!12914 lm!2473 lt!1947068))))))

(declare-fun e!2987960 () Option!12995)

(declare-fun b!4785634 () Bool)

(assert (=> b!4785634 (= e!2987960 (getPair!831 (t!361647 (apply!12914 lm!2473 lt!1947068)) key!5896))))

(declare-fun b!4785635 () Bool)

(assert (=> b!4785635 (= e!2987962 e!2987960)))

(declare-fun c!815767 () Bool)

(assert (=> b!4785635 (= c!815767 (is-Cons!54073 (apply!12914 lm!2473 lt!1947068)))))

(declare-fun b!4785636 () Bool)

(declare-fun res!2032810 () Bool)

(assert (=> b!4785636 (=> (not res!2032810) (not e!2987961))))

(assert (=> b!4785636 (= res!2032810 (= (_1!31596 (get!18409 lt!1947143)) key!5896))))

(declare-fun b!4785637 () Bool)

(assert (=> b!4785637 (= e!2987963 e!2987961)))

(declare-fun res!2032813 () Bool)

(assert (=> b!4785637 (=> (not res!2032813) (not e!2987961))))

(assert (=> b!4785637 (= res!2032813 (isDefined!10137 lt!1947143))))

(declare-fun b!4785638 () Bool)

(assert (=> b!4785638 (= e!2987960 None!12994)))

(declare-fun b!4785639 () Bool)

(assert (=> b!4785639 (= e!2987959 (not (containsKey!3858 (apply!12914 lm!2473 lt!1947068) key!5896)))))

(assert (= (and d!1530729 c!815768) b!4785633))

(assert (= (and d!1530729 (not c!815768)) b!4785635))

(assert (= (and b!4785635 c!815767) b!4785634))

(assert (= (and b!4785635 (not c!815767)) b!4785638))

(assert (= (and d!1530729 res!2032811) b!4785639))

(assert (= (and d!1530729 (not res!2032812)) b!4785637))

(assert (= (and b!4785637 res!2032813) b!4785636))

(assert (= (and b!4785636 res!2032810) b!4785632))

(assert (=> b!4785639 m!5764496))

(declare-fun m!5764642 () Bool)

(assert (=> b!4785639 m!5764642))

(declare-fun m!5764644 () Bool)

(assert (=> b!4785634 m!5764644))

(declare-fun m!5764646 () Bool)

(assert (=> b!4785636 m!5764646))

(assert (=> b!4785632 m!5764646))

(assert (=> b!4785632 m!5764496))

(assert (=> b!4785632 m!5764646))

(declare-fun m!5764648 () Bool)

(assert (=> b!4785632 m!5764648))

(declare-fun m!5764650 () Bool)

(assert (=> d!1530729 m!5764650))

(assert (=> d!1530729 m!5764496))

(declare-fun m!5764652 () Bool)

(assert (=> d!1530729 m!5764652))

(declare-fun m!5764654 () Bool)

(assert (=> b!4785637 m!5764654))

(assert (=> b!4785482 d!1530729))

(declare-fun d!1530733 () Bool)

(declare-datatypes ((Option!12998 0))(
  ( (None!12997) (Some!12997 (v!48249 List!54197)) )
))
(declare-fun get!18410 (Option!12998) List!54197)

(declare-fun getValueByKey!2313 (List!54198 (_ BitVec 64)) Option!12998)

(assert (=> d!1530733 (= (apply!12914 lm!2473 lt!1947068) (get!18410 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068)))))

(declare-fun bs!1153416 () Bool)

(assert (= bs!1153416 d!1530733))

(declare-fun m!5764656 () Bool)

(assert (=> bs!1153416 m!5764656))

(assert (=> bs!1153416 m!5764656))

(declare-fun m!5764658 () Bool)

(assert (=> bs!1153416 m!5764658))

(assert (=> b!4785482 d!1530733))

(declare-fun d!1530735 () Bool)

(declare-fun e!2987969 () Bool)

(assert (=> d!1530735 e!2987969))

(declare-fun res!2032816 () Bool)

(assert (=> d!1530735 (=> res!2032816 e!2987969)))

(declare-fun lt!1947153 () Bool)

(assert (=> d!1530735 (= res!2032816 (not lt!1947153))))

(declare-fun lt!1947152 () Bool)

(assert (=> d!1530735 (= lt!1947153 lt!1947152)))

(declare-fun lt!1947154 () Unit!139478)

(declare-fun e!2987968 () Unit!139478)

(assert (=> d!1530735 (= lt!1947154 e!2987968)))

(declare-fun c!815771 () Bool)

(assert (=> d!1530735 (= c!815771 lt!1947152)))

(declare-fun containsKey!3861 (List!54198 (_ BitVec 64)) Bool)

(assert (=> d!1530735 (= lt!1947152 (containsKey!3861 (toList!6797 lm!2473) lt!1947068))))

(assert (=> d!1530735 (= (contains!17646 lm!2473 lt!1947068) lt!1947153)))

(declare-fun b!4785646 () Bool)

(declare-fun lt!1947155 () Unit!139478)

(assert (=> b!4785646 (= e!2987968 lt!1947155)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2105 (List!54198 (_ BitVec 64)) Unit!139478)

(assert (=> b!4785646 (= lt!1947155 (lemmaContainsKeyImpliesGetValueByKeyDefined!2105 (toList!6797 lm!2473) lt!1947068))))

(declare-fun isDefined!10140 (Option!12998) Bool)

(assert (=> b!4785646 (isDefined!10140 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068))))

(declare-fun b!4785647 () Bool)

(declare-fun Unit!139484 () Unit!139478)

(assert (=> b!4785647 (= e!2987968 Unit!139484)))

(declare-fun b!4785648 () Bool)

(assert (=> b!4785648 (= e!2987969 (isDefined!10140 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068)))))

(assert (= (and d!1530735 c!815771) b!4785646))

(assert (= (and d!1530735 (not c!815771)) b!4785647))

(assert (= (and d!1530735 (not res!2032816)) b!4785648))

(declare-fun m!5764660 () Bool)

(assert (=> d!1530735 m!5764660))

(declare-fun m!5764662 () Bool)

(assert (=> b!4785646 m!5764662))

(assert (=> b!4785646 m!5764656))

(assert (=> b!4785646 m!5764656))

(declare-fun m!5764664 () Bool)

(assert (=> b!4785646 m!5764664))

(assert (=> b!4785648 m!5764656))

(assert (=> b!4785648 m!5764656))

(assert (=> b!4785648 m!5764664))

(assert (=> b!4785483 d!1530735))

(declare-fun d!1530737 () Bool)

(declare-fun res!2032823 () Bool)

(declare-fun e!2987976 () Bool)

(assert (=> d!1530737 (=> res!2032823 e!2987976)))

(declare-fun e!2987977 () Bool)

(assert (=> d!1530737 (= res!2032823 e!2987977)))

(declare-fun res!2032825 () Bool)

(assert (=> d!1530737 (=> (not res!2032825) (not e!2987977))))

(assert (=> d!1530737 (= res!2032825 (is-Cons!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530737 (= (containsKeyBiggerList!509 (toList!6797 lm!2473) key!5896) e!2987976)))

(declare-fun b!4785655 () Bool)

(assert (=> b!4785655 (= e!2987977 (containsKey!3858 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896))))

(declare-fun b!4785656 () Bool)

(declare-fun e!2987978 () Bool)

(assert (=> b!4785656 (= e!2987976 e!2987978)))

(declare-fun res!2032824 () Bool)

(assert (=> b!4785656 (=> (not res!2032824) (not e!2987978))))

(assert (=> b!4785656 (= res!2032824 (is-Cons!54074 (toList!6797 lm!2473)))))

(declare-fun b!4785657 () Bool)

(assert (=> b!4785657 (= e!2987978 (containsKeyBiggerList!509 (t!361648 (toList!6797 lm!2473)) key!5896))))

(assert (= (and d!1530737 res!2032825) b!4785655))

(assert (= (and d!1530737 (not res!2032823)) b!4785656))

(assert (= (and b!4785656 res!2032824) b!4785657))

(assert (=> b!4785655 m!5764524))

(declare-fun m!5764666 () Bool)

(assert (=> b!4785657 m!5764666))

(assert (=> b!4785483 d!1530737))

(declare-fun bs!1153417 () Bool)

(declare-fun d!1530739 () Bool)

(assert (= bs!1153417 (and d!1530739 start!491980)))

(declare-fun lambda!229153 () Int)

(assert (=> bs!1153417 (= lambda!229153 lambda!229136)))

(declare-fun bs!1153418 () Bool)

(assert (= bs!1153418 (and d!1530739 b!4785485)))

(assert (=> bs!1153418 (not (= lambda!229153 lambda!229137))))

(declare-fun bs!1153419 () Bool)

(assert (= bs!1153419 (and d!1530739 d!1530719)))

(assert (=> bs!1153419 (= lambda!229153 lambda!229150)))

(assert (=> d!1530739 (containsKeyBiggerList!509 (toList!6797 lm!2473) key!5896)))

(declare-fun lt!1947158 () Unit!139478)

(declare-fun choose!34388 (ListLongMap!5219 K!15637 Hashable!6859) Unit!139478)

(assert (=> d!1530739 (= lt!1947158 (choose!34388 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1530739 (forall!12159 (toList!6797 lm!2473) lambda!229153)))

(assert (=> d!1530739 (= (lemmaInLongMapThenContainsKeyBiggerList!249 lm!2473 key!5896 hashF!1559) lt!1947158)))

(declare-fun bs!1153420 () Bool)

(assert (= bs!1153420 d!1530739))

(assert (=> bs!1153420 m!5764508))

(declare-fun m!5764668 () Bool)

(assert (=> bs!1153420 m!5764668))

(declare-fun m!5764670 () Bool)

(assert (=> bs!1153420 m!5764670))

(assert (=> b!4785483 d!1530739))

(declare-fun bs!1153421 () Bool)

(declare-fun d!1530741 () Bool)

(assert (= bs!1153421 (and d!1530741 start!491980)))

(declare-fun lambda!229158 () Int)

(assert (=> bs!1153421 (= lambda!229158 lambda!229136)))

(declare-fun bs!1153422 () Bool)

(assert (= bs!1153422 (and d!1530741 b!4785485)))

(assert (=> bs!1153422 (not (= lambda!229158 lambda!229137))))

(declare-fun bs!1153423 () Bool)

(assert (= bs!1153423 (and d!1530741 d!1530719)))

(assert (=> bs!1153423 (= lambda!229158 lambda!229150)))

(declare-fun bs!1153424 () Bool)

(assert (= bs!1153424 (and d!1530741 d!1530739)))

(assert (=> bs!1153424 (= lambda!229158 lambda!229153)))

(declare-fun e!2987983 () Bool)

(assert (=> d!1530741 e!2987983))

(declare-fun res!2032828 () Bool)

(assert (=> d!1530741 (=> (not res!2032828) (not e!2987983))))

(assert (=> d!1530741 (= res!2032828 (contains!17646 lm!2473 (hash!4876 hashF!1559 key!5896)))))

(declare-fun lt!1947163 () Unit!139478)

(declare-fun choose!34389 (ListLongMap!5219 K!15637 Hashable!6859) Unit!139478)

(assert (=> d!1530741 (= lt!1947163 (choose!34389 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1530741 (forall!12159 (toList!6797 lm!2473) lambda!229158)))

(assert (=> d!1530741 (= (lemmaInGenericMapThenInLongMap!263 lm!2473 key!5896 hashF!1559) lt!1947163)))

(declare-fun b!4785664 () Bool)

(assert (=> b!4785664 (= e!2987983 (isDefined!10137 (getPair!831 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1530741 res!2032828) b!4785664))

(assert (=> d!1530741 m!5764512))

(assert (=> d!1530741 m!5764512))

(declare-fun m!5764672 () Bool)

(assert (=> d!1530741 m!5764672))

(declare-fun m!5764674 () Bool)

(assert (=> d!1530741 m!5764674))

(declare-fun m!5764676 () Bool)

(assert (=> d!1530741 m!5764676))

(assert (=> b!4785664 m!5764512))

(assert (=> b!4785664 m!5764512))

(declare-fun m!5764678 () Bool)

(assert (=> b!4785664 m!5764678))

(assert (=> b!4785664 m!5764678))

(declare-fun m!5764680 () Bool)

(assert (=> b!4785664 m!5764680))

(assert (=> b!4785664 m!5764680))

(declare-fun m!5764682 () Bool)

(assert (=> b!4785664 m!5764682))

(assert (=> b!4785483 d!1530741))

(declare-fun d!1530743 () Bool)

(declare-fun c!815777 () Bool)

(declare-fun e!2987990 () Bool)

(assert (=> d!1530743 (= c!815777 e!2987990)))

(declare-fun res!2032831 () Bool)

(assert (=> d!1530743 (=> (not res!2032831) (not e!2987990))))

(assert (=> d!1530743 (= res!2032831 (is-Cons!54074 (toList!6797 lm!2473)))))

(declare-fun e!2987989 () V!15883)

(assert (=> d!1530743 (= (getValue!55 (toList!6797 lm!2473) key!5896) e!2987989)))

(declare-fun b!4785675 () Bool)

(assert (=> b!4785675 (= e!2987990 (containsKey!3858 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896))))

(declare-fun b!4785673 () Bool)

(assert (=> b!4785673 (= e!2987989 (_2!31596 (get!18409 (getPair!831 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896))))))

(declare-fun b!4785674 () Bool)

(assert (=> b!4785674 (= e!2987989 (getValue!55 (t!361648 (toList!6797 lm!2473)) key!5896))))

(assert (= (and d!1530743 res!2032831) b!4785675))

(assert (= (and d!1530743 c!815777) b!4785673))

(assert (= (and d!1530743 (not c!815777)) b!4785674))

(assert (=> b!4785675 m!5764524))

(declare-fun m!5764692 () Bool)

(assert (=> b!4785673 m!5764692))

(assert (=> b!4785673 m!5764692))

(declare-fun m!5764694 () Bool)

(assert (=> b!4785673 m!5764694))

(declare-fun m!5764696 () Bool)

(assert (=> b!4785674 m!5764696))

(assert (=> b!4785483 d!1530743))

(declare-fun d!1530747 () Bool)

(declare-fun hash!4878 (Hashable!6859 K!15637) (_ BitVec 64))

(assert (=> d!1530747 (= (hash!4876 hashF!1559 key!5896) (hash!4878 hashF!1559 key!5896))))

(declare-fun bs!1153427 () Bool)

(assert (= bs!1153427 d!1530747))

(declare-fun m!5764698 () Bool)

(assert (=> bs!1153427 m!5764698))

(assert (=> b!4785483 d!1530747))

(declare-fun bs!1153432 () Bool)

(declare-fun d!1530749 () Bool)

(assert (= bs!1153432 (and d!1530749 d!1530741)))

(declare-fun lambda!229165 () Int)

(assert (=> bs!1153432 (not (= lambda!229165 lambda!229158))))

(declare-fun bs!1153433 () Bool)

(assert (= bs!1153433 (and d!1530749 b!4785485)))

(assert (=> bs!1153433 (= lambda!229165 lambda!229137)))

(declare-fun bs!1153434 () Bool)

(assert (= bs!1153434 (and d!1530749 start!491980)))

(assert (=> bs!1153434 (not (= lambda!229165 lambda!229136))))

(declare-fun bs!1153435 () Bool)

(assert (= bs!1153435 (and d!1530749 d!1530719)))

(assert (=> bs!1153435 (not (= lambda!229165 lambda!229150))))

(declare-fun bs!1153436 () Bool)

(assert (= bs!1153436 (and d!1530749 d!1530739)))

(assert (=> bs!1153436 (not (= lambda!229165 lambda!229153))))

(assert (=> d!1530749 true))

(assert (=> d!1530749 (= (allKeysSameHashInMap!2264 lm!2473 hashF!1559) (forall!12159 (toList!6797 lm!2473) lambda!229165))))

(declare-fun bs!1153437 () Bool)

(assert (= bs!1153437 d!1530749))

(declare-fun m!5764702 () Bool)

(assert (=> bs!1153437 m!5764702))

(assert (=> b!4785488 d!1530749))

(declare-fun b!4785680 () Bool)

(declare-fun e!2987993 () Bool)

(declare-fun tp!1357659 () Bool)

(declare-fun tp!1357660 () Bool)

(assert (=> b!4785680 (= e!2987993 (and tp!1357659 tp!1357660))))

(assert (=> b!4785481 (= tp!1357651 e!2987993)))

(assert (= (and b!4785481 (is-Cons!54074 (toList!6797 lm!2473))) b!4785680))

(declare-fun b_lambda!186113 () Bool)

(assert (= b_lambda!186107 (or b!4785485 b_lambda!186113)))

(declare-fun bs!1153438 () Bool)

(declare-fun d!1530753 () Bool)

(assert (= bs!1153438 (and d!1530753 b!4785485)))

(assert (=> bs!1153438 (= (dynLambda!22030 lambda!229138 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))) (= (hash!4876 hashF!1559 (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))))) (_1!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun m!5764704 () Bool)

(assert (=> bs!1153438 m!5764704))

(assert (=> b!4785539 d!1530753))

(declare-fun b_lambda!186115 () Bool)

(assert (= b_lambda!186109 (or b!4785485 b_lambda!186115)))

(declare-fun bs!1153439 () Bool)

(declare-fun d!1530755 () Bool)

(assert (= bs!1153439 (and d!1530755 b!4785485)))

(declare-fun allKeysSameHash!1945 (List!54197 (_ BitVec 64) Hashable!6859) Bool)

(assert (=> bs!1153439 (= (dynLambda!22031 lambda!229137 (h!60494 (toList!6797 lm!2473))) (allKeysSameHash!1945 (_2!31597 (h!60494 (toList!6797 lm!2473))) (_1!31597 (h!60494 (toList!6797 lm!2473))) hashF!1559))))

(declare-fun m!5764706 () Bool)

(assert (=> bs!1153439 m!5764706))

(assert (=> d!1530713 d!1530755))

(declare-fun b_lambda!186117 () Bool)

(assert (= b_lambda!186111 (or start!491980 b_lambda!186117)))

(declare-fun bs!1153440 () Bool)

(declare-fun d!1530757 () Bool)

(assert (= bs!1153440 (and d!1530757 start!491980)))

(assert (=> bs!1153440 (= (dynLambda!22031 lambda!229136 (h!60494 (toList!6797 lm!2473))) (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun m!5764708 () Bool)

(assert (=> bs!1153440 m!5764708))

(assert (=> b!4785599 d!1530757))

(push 1)

(assert (not b!4785674))

(assert tp_is_empty!33319)

(assert (not d!1530719))

(assert (not b!4785570))

(assert (not d!1530725))

(assert (not d!1530739))

(assert (not b!4785566))

(assert (not b!4785655))

(assert (not b!4785569))

(assert (not b!4785534))

(assert (not d!1530727))

(assert (not b!4785657))

(assert (not d!1530733))

(assert (not b!4785673))

(assert (not b!4785568))

(assert (not b!4785543))

(assert (not b!4785639))

(assert (not b!4785564))

(assert (not b!4785637))

(assert (not b!4785567))

(assert (not b!4785680))

(assert (not bm!334830))

(assert (not b!4785664))

(assert (not b!4785600))

(assert (not b_lambda!186113))

(assert (not d!1530735))

(assert (not b!4785632))

(assert (not b!4785575))

(assert (not b_lambda!186115))

(assert (not bs!1153438))

(assert (not d!1530715))

(assert (not b_lambda!186117))

(assert (not d!1530749))

(assert (not d!1530713))

(assert (not b!4785565))

(assert (not b!4785636))

(assert (not bs!1153440))

(assert (not d!1530747))

(assert (not d!1530729))

(assert tp_is_empty!33317)

(assert (not b!4785586))

(assert (not b!4785675))

(assert (not d!1530741))

(assert (not b!4785634))

(assert (not b!4785646))

(assert (not bs!1153439))

(assert (not d!1530709))

(assert (not b!4785648))

(assert (not b!4785540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1530793 () Bool)

(declare-fun res!2032893 () Bool)

(declare-fun e!2988067 () Bool)

(assert (=> d!1530793 (=> res!2032893 e!2988067)))

(assert (=> d!1530793 (= res!2032893 (and (is-Cons!54074 (toList!6797 lm!2473)) (= (_1!31597 (h!60494 (toList!6797 lm!2473))) lt!1947068)))))

(assert (=> d!1530793 (= (containsKey!3861 (toList!6797 lm!2473) lt!1947068) e!2988067)))

(declare-fun b!4785771 () Bool)

(declare-fun e!2988068 () Bool)

(assert (=> b!4785771 (= e!2988067 e!2988068)))

(declare-fun res!2032894 () Bool)

(assert (=> b!4785771 (=> (not res!2032894) (not e!2988068))))

(assert (=> b!4785771 (= res!2032894 (and (or (not (is-Cons!54074 (toList!6797 lm!2473))) (bvsle (_1!31597 (h!60494 (toList!6797 lm!2473))) lt!1947068)) (is-Cons!54074 (toList!6797 lm!2473)) (bvslt (_1!31597 (h!60494 (toList!6797 lm!2473))) lt!1947068)))))

(declare-fun b!4785772 () Bool)

(assert (=> b!4785772 (= e!2988068 (containsKey!3861 (t!361648 (toList!6797 lm!2473)) lt!1947068))))

(assert (= (and d!1530793 (not res!2032893)) b!4785771))

(assert (= (and b!4785771 res!2032894) b!4785772))

(declare-fun m!5764794 () Bool)

(assert (=> b!4785772 m!5764794))

(assert (=> d!1530735 d!1530793))

(declare-fun b!4785780 () Bool)

(assert (=> b!4785780 true))

(declare-fun d!1530795 () Bool)

(declare-fun e!2988071 () Bool)

(assert (=> d!1530795 e!2988071))

(declare-fun res!2032902 () Bool)

(assert (=> d!1530795 (=> (not res!2032902) (not e!2988071))))

(declare-fun lt!1947194 () List!54201)

(declare-fun noDuplicate!904 (List!54201) Bool)

(assert (=> d!1530795 (= res!2032902 (noDuplicate!904 lt!1947194))))

(assert (=> d!1530795 (= lt!1947194 (getKeysList!1056 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))

(assert (=> d!1530795 (= (keys!19715 (extractMap!2386 (toList!6797 lm!2473))) lt!1947194)))

(declare-fun b!4785779 () Bool)

(declare-fun res!2032903 () Bool)

(assert (=> b!4785779 (=> (not res!2032903) (not e!2988071))))

(declare-fun length!664 (List!54201) Int)

(declare-fun length!665 (List!54197) Int)

(assert (=> b!4785779 (= res!2032903 (= (length!664 lt!1947194) (length!665 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))))

(declare-fun res!2032901 () Bool)

(assert (=> b!4785780 (=> (not res!2032901) (not e!2988071))))

(declare-fun lambda!229176 () Int)

(declare-fun forall!12163 (List!54201 Int) Bool)

(assert (=> b!4785780 (= res!2032901 (forall!12163 lt!1947194 lambda!229176))))

(declare-fun lambda!229177 () Int)

(declare-fun b!4785781 () Bool)

(declare-fun content!9674 (List!54201) (Set K!15637))

(declare-fun map!12195 (List!54197 Int) List!54201)

(assert (=> b!4785781 (= e!2988071 (= (content!9674 lt!1947194) (content!9674 (map!12195 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) lambda!229177))))))

(assert (= (and d!1530795 res!2032902) b!4785779))

(assert (= (and b!4785779 res!2032903) b!4785780))

(assert (= (and b!4785780 res!2032901) b!4785781))

(declare-fun m!5764796 () Bool)

(assert (=> d!1530795 m!5764796))

(assert (=> d!1530795 m!5764586))

(declare-fun m!5764798 () Bool)

(assert (=> b!4785779 m!5764798))

(declare-fun m!5764800 () Bool)

(assert (=> b!4785779 m!5764800))

(declare-fun m!5764802 () Bool)

(assert (=> b!4785780 m!5764802))

(declare-fun m!5764804 () Bool)

(assert (=> b!4785781 m!5764804))

(declare-fun m!5764806 () Bool)

(assert (=> b!4785781 m!5764806))

(assert (=> b!4785781 m!5764806))

(declare-fun m!5764808 () Bool)

(assert (=> b!4785781 m!5764808))

(assert (=> b!4785570 d!1530795))

(declare-fun d!1530797 () Bool)

(assert (=> d!1530797 (= (hash!4876 hashF!1559 (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))))) (hash!4878 hashF!1559 (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))))

(declare-fun bs!1153458 () Bool)

(assert (= bs!1153458 d!1530797))

(declare-fun m!5764810 () Bool)

(assert (=> bs!1153458 m!5764810))

(assert (=> bs!1153438 d!1530797))

(declare-fun d!1530799 () Bool)

(declare-fun lt!1947197 () Bool)

(assert (=> d!1530799 (= lt!1947197 (set.member key!5896 (content!9674 e!2987911)))))

(declare-fun e!2988077 () Bool)

(assert (=> d!1530799 (= lt!1947197 e!2988077)))

(declare-fun res!2032908 () Bool)

(assert (=> d!1530799 (=> (not res!2032908) (not e!2988077))))

(assert (=> d!1530799 (= res!2032908 (is-Cons!54077 e!2987911))))

(assert (=> d!1530799 (= (contains!17653 e!2987911 key!5896) lt!1947197)))

(declare-fun b!4785788 () Bool)

(declare-fun e!2988076 () Bool)

(assert (=> b!4785788 (= e!2988077 e!2988076)))

(declare-fun res!2032909 () Bool)

(assert (=> b!4785788 (=> res!2032909 e!2988076)))

(assert (=> b!4785788 (= res!2032909 (= (h!60497 e!2987911) key!5896))))

(declare-fun b!4785789 () Bool)

(assert (=> b!4785789 (= e!2988076 (contains!17653 (t!361651 e!2987911) key!5896))))

(assert (= (and d!1530799 res!2032908) b!4785788))

(assert (= (and b!4785788 (not res!2032909)) b!4785789))

(declare-fun m!5764812 () Bool)

(assert (=> d!1530799 m!5764812))

(declare-fun m!5764814 () Bool)

(assert (=> d!1530799 m!5764814))

(declare-fun m!5764816 () Bool)

(assert (=> b!4785789 m!5764816))

(assert (=> bm!334830 d!1530799))

(declare-fun d!1530801 () Bool)

(declare-fun noDuplicatedKeys!425 (List!54197) Bool)

(assert (=> d!1530801 (= (invariantList!1710 (toList!6798 lt!1947116)) (noDuplicatedKeys!425 (toList!6798 lt!1947116)))))

(declare-fun bs!1153459 () Bool)

(assert (= bs!1153459 d!1530801))

(declare-fun m!5764818 () Bool)

(assert (=> bs!1153459 m!5764818))

(assert (=> d!1530719 d!1530801))

(declare-fun d!1530803 () Bool)

(declare-fun res!2032910 () Bool)

(declare-fun e!2988078 () Bool)

(assert (=> d!1530803 (=> res!2032910 e!2988078)))

(assert (=> d!1530803 (= res!2032910 (is-Nil!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530803 (= (forall!12159 (toList!6797 lm!2473) lambda!229150) e!2988078)))

(declare-fun b!4785790 () Bool)

(declare-fun e!2988079 () Bool)

(assert (=> b!4785790 (= e!2988078 e!2988079)))

(declare-fun res!2032911 () Bool)

(assert (=> b!4785790 (=> (not res!2032911) (not e!2988079))))

(assert (=> b!4785790 (= res!2032911 (dynLambda!22031 lambda!229150 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785791 () Bool)

(assert (=> b!4785791 (= e!2988079 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229150))))

(assert (= (and d!1530803 (not res!2032910)) b!4785790))

(assert (= (and b!4785790 res!2032911) b!4785791))

(declare-fun b_lambda!186131 () Bool)

(assert (=> (not b_lambda!186131) (not b!4785790)))

(declare-fun m!5764820 () Bool)

(assert (=> b!4785790 m!5764820))

(declare-fun m!5764822 () Bool)

(assert (=> b!4785791 m!5764822))

(assert (=> d!1530719 d!1530803))

(declare-fun d!1530805 () Bool)

(declare-fun res!2032916 () Bool)

(declare-fun e!2988084 () Bool)

(assert (=> d!1530805 (=> res!2032916 e!2988084)))

(assert (=> d!1530805 (= res!2032916 (and (is-Cons!54073 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (= (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) key!5896)))))

(assert (=> d!1530805 (= (containsKey!3860 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896) e!2988084)))

(declare-fun b!4785796 () Bool)

(declare-fun e!2988085 () Bool)

(assert (=> b!4785796 (= e!2988084 e!2988085)))

(declare-fun res!2032917 () Bool)

(assert (=> b!4785796 (=> (not res!2032917) (not e!2988085))))

(assert (=> b!4785796 (= res!2032917 (is-Cons!54073 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))

(declare-fun b!4785797 () Bool)

(assert (=> b!4785797 (= e!2988085 (containsKey!3860 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) key!5896))))

(assert (= (and d!1530805 (not res!2032916)) b!4785796))

(assert (= (and b!4785796 res!2032917) b!4785797))

(declare-fun m!5764824 () Bool)

(assert (=> b!4785797 m!5764824))

(assert (=> b!4785567 d!1530805))

(declare-fun d!1530807 () Bool)

(assert (=> d!1530807 (containsKey!3860 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896)))

(declare-fun lt!1947200 () Unit!139478)

(declare-fun choose!34393 (List!54197 K!15637) Unit!139478)

(assert (=> d!1530807 (= lt!1947200 (choose!34393 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(assert (=> d!1530807 (invariantList!1710 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))

(assert (=> d!1530807 (= (lemmaInGetKeysListThenContainsKey!1056 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896) lt!1947200)))

(declare-fun bs!1153460 () Bool)

(assert (= bs!1153460 d!1530807))

(assert (=> bs!1153460 m!5764600))

(declare-fun m!5764826 () Bool)

(assert (=> bs!1153460 m!5764826))

(declare-fun m!5764828 () Bool)

(assert (=> bs!1153460 m!5764828))

(assert (=> b!4785567 d!1530807))

(declare-fun d!1530809 () Bool)

(assert (=> d!1530809 (= (isEmpty!29381 (getPair!831 (apply!12914 lm!2473 lt!1947068) key!5896)) (not (is-Some!12994 (getPair!831 (apply!12914 lm!2473 lt!1947068) key!5896))))))

(assert (=> d!1530727 d!1530809))

(declare-fun d!1530811 () Bool)

(declare-fun lt!1947201 () Bool)

(assert (=> d!1530811 (= lt!1947201 (set.member key!5896 (content!9674 (keys!19715 (extractMap!2386 (toList!6797 lm!2473))))))))

(declare-fun e!2988087 () Bool)

(assert (=> d!1530811 (= lt!1947201 e!2988087)))

(declare-fun res!2032918 () Bool)

(assert (=> d!1530811 (=> (not res!2032918) (not e!2988087))))

(assert (=> d!1530811 (= res!2032918 (is-Cons!54077 (keys!19715 (extractMap!2386 (toList!6797 lm!2473)))))))

(assert (=> d!1530811 (= (contains!17653 (keys!19715 (extractMap!2386 (toList!6797 lm!2473))) key!5896) lt!1947201)))

(declare-fun b!4785798 () Bool)

(declare-fun e!2988086 () Bool)

(assert (=> b!4785798 (= e!2988087 e!2988086)))

(declare-fun res!2032919 () Bool)

(assert (=> b!4785798 (=> res!2032919 e!2988086)))

(assert (=> b!4785798 (= res!2032919 (= (h!60497 (keys!19715 (extractMap!2386 (toList!6797 lm!2473)))) key!5896))))

(declare-fun b!4785799 () Bool)

(assert (=> b!4785799 (= e!2988086 (contains!17653 (t!361651 (keys!19715 (extractMap!2386 (toList!6797 lm!2473)))) key!5896))))

(assert (= (and d!1530811 res!2032918) b!4785798))

(assert (= (and b!4785798 (not res!2032919)) b!4785799))

(assert (=> d!1530811 m!5764588))

(declare-fun m!5764830 () Bool)

(assert (=> d!1530811 m!5764830))

(declare-fun m!5764832 () Bool)

(assert (=> d!1530811 m!5764832))

(declare-fun m!5764834 () Bool)

(assert (=> b!4785799 m!5764834))

(assert (=> b!4785568 d!1530811))

(assert (=> b!4785568 d!1530795))

(declare-fun d!1530813 () Bool)

(declare-fun res!2032920 () Bool)

(declare-fun e!2988088 () Bool)

(assert (=> d!1530813 (=> res!2032920 e!2988088)))

(assert (=> d!1530813 (= res!2032920 (is-Nil!54073 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(assert (=> d!1530813 (= (forall!12160 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) lambda!229138) e!2988088)))

(declare-fun b!4785800 () Bool)

(declare-fun e!2988089 () Bool)

(assert (=> b!4785800 (= e!2988088 e!2988089)))

(declare-fun res!2032921 () Bool)

(assert (=> b!4785800 (=> (not res!2032921) (not e!2988089))))

(assert (=> b!4785800 (= res!2032921 (dynLambda!22030 lambda!229138 (h!60493 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))))

(declare-fun b!4785801 () Bool)

(assert (=> b!4785801 (= e!2988089 (forall!12160 (t!361647 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))) lambda!229138))))

(assert (= (and d!1530813 (not res!2032920)) b!4785800))

(assert (= (and b!4785800 res!2032921) b!4785801))

(declare-fun b_lambda!186133 () Bool)

(assert (=> (not b_lambda!186133) (not b!4785800)))

(declare-fun m!5764836 () Bool)

(assert (=> b!4785800 m!5764836))

(declare-fun m!5764838 () Bool)

(assert (=> b!4785801 m!5764838))

(assert (=> b!4785540 d!1530813))

(declare-fun d!1530815 () Bool)

(declare-fun res!2032922 () Bool)

(declare-fun e!2988090 () Bool)

(assert (=> d!1530815 (=> res!2032922 e!2988090)))

(assert (=> d!1530815 (= res!2032922 (and (is-Cons!54073 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))) (= (_1!31596 (h!60493 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))))) key!5896)))))

(assert (=> d!1530815 (= (containsKey!3858 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) key!5896) e!2988090)))

(declare-fun b!4785802 () Bool)

(declare-fun e!2988091 () Bool)

(assert (=> b!4785802 (= e!2988090 e!2988091)))

(declare-fun res!2032923 () Bool)

(assert (=> b!4785802 (=> (not res!2032923) (not e!2988091))))

(assert (=> b!4785802 (= res!2032923 (is-Cons!54073 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(declare-fun b!4785803 () Bool)

(assert (=> b!4785803 (= e!2988091 (containsKey!3858 (t!361647 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))) key!5896))))

(assert (= (and d!1530815 (not res!2032922)) b!4785802))

(assert (= (and b!4785802 res!2032923) b!4785803))

(declare-fun m!5764840 () Bool)

(assert (=> b!4785803 m!5764840))

(assert (=> b!4785586 d!1530815))

(assert (=> b!4785569 d!1530811))

(assert (=> b!4785569 d!1530795))

(declare-fun d!1530817 () Bool)

(declare-fun c!815792 () Bool)

(assert (=> d!1530817 (= c!815792 (is-Nil!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun e!2988094 () (Set tuple2!56604))

(assert (=> d!1530817 (= (content!9672 (_2!31597 (h!60494 (toList!6797 lm!2473)))) e!2988094)))

(declare-fun b!4785808 () Bool)

(assert (=> b!4785808 (= e!2988094 (as set.empty (Set tuple2!56604)))))

(declare-fun b!4785809 () Bool)

(assert (=> b!4785809 (= e!2988094 (set.union (set.insert (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (as set.empty (Set tuple2!56604))) (content!9672 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))))

(assert (= (and d!1530817 c!815792) b!4785808))

(assert (= (and d!1530817 (not c!815792)) b!4785809))

(declare-fun m!5764842 () Bool)

(assert (=> b!4785809 m!5764842))

(declare-fun m!5764844 () Bool)

(assert (=> b!4785809 m!5764844))

(assert (=> d!1530709 d!1530817))

(assert (=> d!1530739 d!1530737))

(declare-fun d!1530819 () Bool)

(assert (=> d!1530819 (containsKeyBiggerList!509 (toList!6797 lm!2473) key!5896)))

(assert (=> d!1530819 true))

(declare-fun _$33!787 () Unit!139478)

(assert (=> d!1530819 (= (choose!34388 lm!2473 key!5896 hashF!1559) _$33!787)))

(declare-fun bs!1153461 () Bool)

(assert (= bs!1153461 d!1530819))

(assert (=> bs!1153461 m!5764508))

(assert (=> d!1530739 d!1530819))

(declare-fun d!1530821 () Bool)

(declare-fun res!2032924 () Bool)

(declare-fun e!2988095 () Bool)

(assert (=> d!1530821 (=> res!2032924 e!2988095)))

(assert (=> d!1530821 (= res!2032924 (is-Nil!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530821 (= (forall!12159 (toList!6797 lm!2473) lambda!229153) e!2988095)))

(declare-fun b!4785810 () Bool)

(declare-fun e!2988096 () Bool)

(assert (=> b!4785810 (= e!2988095 e!2988096)))

(declare-fun res!2032925 () Bool)

(assert (=> b!4785810 (=> (not res!2032925) (not e!2988096))))

(assert (=> b!4785810 (= res!2032925 (dynLambda!22031 lambda!229153 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785811 () Bool)

(assert (=> b!4785811 (= e!2988096 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229153))))

(assert (= (and d!1530821 (not res!2032924)) b!4785810))

(assert (= (and b!4785810 res!2032925) b!4785811))

(declare-fun b_lambda!186135 () Bool)

(assert (=> (not b_lambda!186135) (not b!4785810)))

(declare-fun m!5764846 () Bool)

(assert (=> b!4785810 m!5764846))

(declare-fun m!5764848 () Bool)

(assert (=> b!4785811 m!5764848))

(assert (=> d!1530739 d!1530821))

(declare-fun d!1530823 () Bool)

(assert (=> d!1530823 (= (get!18409 (getPair!831 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896)) (v!48245 (getPair!831 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896)))))

(assert (=> b!4785673 d!1530823))

(declare-fun b!4785812 () Bool)

(declare-fun e!2988099 () Bool)

(declare-fun lt!1947202 () Option!12995)

(assert (=> b!4785812 (= e!2988099 (contains!17648 (_2!31597 (h!60494 (toList!6797 lm!2473))) (get!18409 lt!1947202)))))

(declare-fun d!1530825 () Bool)

(declare-fun e!2988101 () Bool)

(assert (=> d!1530825 e!2988101))

(declare-fun res!2032928 () Bool)

(assert (=> d!1530825 (=> res!2032928 e!2988101)))

(declare-fun e!2988097 () Bool)

(assert (=> d!1530825 (= res!2032928 e!2988097)))

(declare-fun res!2032927 () Bool)

(assert (=> d!1530825 (=> (not res!2032927) (not e!2988097))))

(assert (=> d!1530825 (= res!2032927 (isEmpty!29381 lt!1947202))))

(declare-fun e!2988100 () Option!12995)

(assert (=> d!1530825 (= lt!1947202 e!2988100)))

(declare-fun c!815794 () Bool)

(assert (=> d!1530825 (= c!815794 (and (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (= (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))) key!5896)))))

(assert (=> d!1530825 (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473))))))

(assert (=> d!1530825 (= (getPair!831 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896) lt!1947202)))

(declare-fun b!4785813 () Bool)

(assert (=> b!4785813 (= e!2988100 (Some!12994 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(declare-fun b!4785814 () Bool)

(declare-fun e!2988098 () Option!12995)

(assert (=> b!4785814 (= e!2988098 (getPair!831 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) key!5896))))

(declare-fun b!4785815 () Bool)

(assert (=> b!4785815 (= e!2988100 e!2988098)))

(declare-fun c!815793 () Bool)

(assert (=> b!4785815 (= c!815793 (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun b!4785816 () Bool)

(declare-fun res!2032926 () Bool)

(assert (=> b!4785816 (=> (not res!2032926) (not e!2988099))))

(assert (=> b!4785816 (= res!2032926 (= (_1!31596 (get!18409 lt!1947202)) key!5896))))

(declare-fun b!4785817 () Bool)

(assert (=> b!4785817 (= e!2988101 e!2988099)))

(declare-fun res!2032929 () Bool)

(assert (=> b!4785817 (=> (not res!2032929) (not e!2988099))))

(assert (=> b!4785817 (= res!2032929 (isDefined!10137 lt!1947202))))

(declare-fun b!4785818 () Bool)

(assert (=> b!4785818 (= e!2988098 None!12994)))

(declare-fun b!4785819 () Bool)

(assert (=> b!4785819 (= e!2988097 (not (containsKey!3858 (_2!31597 (h!60494 (toList!6797 lm!2473))) key!5896)))))

(assert (= (and d!1530825 c!815794) b!4785813))

(assert (= (and d!1530825 (not c!815794)) b!4785815))

(assert (= (and b!4785815 c!815793) b!4785814))

(assert (= (and b!4785815 (not c!815793)) b!4785818))

(assert (= (and d!1530825 res!2032927) b!4785819))

(assert (= (and d!1530825 (not res!2032928)) b!4785817))

(assert (= (and b!4785817 res!2032929) b!4785816))

(assert (= (and b!4785816 res!2032926) b!4785812))

(assert (=> b!4785819 m!5764524))

(declare-fun m!5764850 () Bool)

(assert (=> b!4785814 m!5764850))

(declare-fun m!5764852 () Bool)

(assert (=> b!4785816 m!5764852))

(assert (=> b!4785812 m!5764852))

(assert (=> b!4785812 m!5764852))

(declare-fun m!5764854 () Bool)

(assert (=> b!4785812 m!5764854))

(declare-fun m!5764856 () Bool)

(assert (=> d!1530825 m!5764856))

(assert (=> d!1530825 m!5764708))

(declare-fun m!5764858 () Bool)

(assert (=> b!4785817 m!5764858))

(assert (=> b!4785673 d!1530825))

(declare-fun bs!1153462 () Bool)

(declare-fun b!4785838 () Bool)

(assert (= bs!1153462 (and b!4785838 b!4785780)))

(declare-fun lambda!229186 () Int)

(assert (=> bs!1153462 (= (= (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (= lambda!229186 lambda!229176))))

(assert (=> b!4785838 true))

(declare-fun bs!1153463 () Bool)

(declare-fun b!4785841 () Bool)

(assert (= bs!1153463 (and b!4785841 b!4785780)))

(declare-fun lambda!229187 () Int)

(assert (=> bs!1153463 (= (= (Cons!54073 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (= lambda!229187 lambda!229176))))

(declare-fun bs!1153464 () Bool)

(assert (= bs!1153464 (and b!4785841 b!4785838)))

(assert (=> bs!1153464 (= (= (Cons!54073 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) (= lambda!229187 lambda!229186))))

(assert (=> b!4785841 true))

(declare-fun bs!1153465 () Bool)

(declare-fun b!4785842 () Bool)

(assert (= bs!1153465 (and b!4785842 b!4785780)))

(declare-fun lambda!229188 () Int)

(assert (=> bs!1153465 (= lambda!229188 lambda!229176)))

(declare-fun bs!1153466 () Bool)

(assert (= bs!1153466 (and b!4785842 b!4785838)))

(assert (=> bs!1153466 (= (= (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) (= lambda!229188 lambda!229186))))

(declare-fun bs!1153467 () Bool)

(assert (= bs!1153467 (and b!4785842 b!4785841)))

(assert (=> bs!1153467 (= (= (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) (Cons!54073 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))) (= lambda!229188 lambda!229187))))

(assert (=> b!4785842 true))

(declare-fun bs!1153468 () Bool)

(declare-fun b!4785840 () Bool)

(assert (= bs!1153468 (and b!4785840 b!4785781)))

(declare-fun lambda!229189 () Int)

(assert (=> bs!1153468 (= lambda!229189 lambda!229177)))

(assert (=> b!4785838 false))

(declare-fun lt!1947219 () Unit!139478)

(declare-fun forallContained!4099 (List!54201 Int K!15637) Unit!139478)

(assert (=> b!4785838 (= lt!1947219 (forallContained!4099 (getKeysList!1056 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) lambda!229186 (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))))

(declare-fun e!2988113 () Unit!139478)

(declare-fun Unit!139488 () Unit!139478)

(assert (=> b!4785838 (= e!2988113 Unit!139488)))

(declare-fun b!4785839 () Bool)

(declare-fun res!2032938 () Bool)

(declare-fun e!2988110 () Bool)

(assert (=> b!4785839 (=> (not res!2032938) (not e!2988110))))

(declare-fun lt!1947217 () List!54201)

(assert (=> b!4785839 (= res!2032938 (= (length!664 lt!1947217) (length!665 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))))

(assert (=> b!4785840 (= e!2988110 (= (content!9674 lt!1947217) (content!9674 (map!12195 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) lambda!229189))))))

(declare-fun e!2988111 () List!54201)

(assert (=> b!4785841 (= e!2988111 (Cons!54077 (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) (getKeysList!1056 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))))

(declare-fun c!815801 () Bool)

(assert (=> b!4785841 (= c!815801 (containsKey!3860 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))))

(declare-fun lt!1947218 () Unit!139478)

(declare-fun e!2988112 () Unit!139478)

(assert (=> b!4785841 (= lt!1947218 e!2988112)))

(declare-fun c!815803 () Bool)

(assert (=> b!4785841 (= c!815803 (contains!17653 (getKeysList!1056 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))))

(declare-fun lt!1947220 () Unit!139478)

(assert (=> b!4785841 (= lt!1947220 e!2988113)))

(declare-fun lt!1947222 () List!54201)

(assert (=> b!4785841 (= lt!1947222 (getKeysList!1056 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))))

(declare-fun lt!1947223 () Unit!139478)

(declare-fun lemmaForallContainsAddHeadPreserves!321 (List!54197 List!54201 tuple2!56604) Unit!139478)

(assert (=> b!4785841 (= lt!1947223 (lemmaForallContainsAddHeadPreserves!321 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) lt!1947222 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))))

(assert (=> b!4785841 (forall!12163 lt!1947222 lambda!229187)))

(declare-fun lt!1947221 () Unit!139478)

(assert (=> b!4785841 (= lt!1947221 lt!1947223)))

(declare-fun res!2032937 () Bool)

(assert (=> b!4785842 (=> (not res!2032937) (not e!2988110))))

(assert (=> b!4785842 (= res!2032937 (forall!12163 lt!1947217 lambda!229188))))

(declare-fun d!1530827 () Bool)

(assert (=> d!1530827 e!2988110))

(declare-fun res!2032936 () Bool)

(assert (=> d!1530827 (=> (not res!2032936) (not e!2988110))))

(assert (=> d!1530827 (= res!2032936 (noDuplicate!904 lt!1947217))))

(assert (=> d!1530827 (= lt!1947217 e!2988111)))

(declare-fun c!815802 () Bool)

(assert (=> d!1530827 (= c!815802 (is-Cons!54073 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))

(assert (=> d!1530827 (invariantList!1710 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))

(assert (=> d!1530827 (= (getKeysList!1056 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) lt!1947217)))

(declare-fun b!4785843 () Bool)

(assert (=> b!4785843 false))

(declare-fun Unit!139489 () Unit!139478)

(assert (=> b!4785843 (= e!2988112 Unit!139489)))

(declare-fun b!4785844 () Bool)

(assert (=> b!4785844 (= e!2988111 Nil!54077)))

(declare-fun b!4785845 () Bool)

(declare-fun Unit!139490 () Unit!139478)

(assert (=> b!4785845 (= e!2988113 Unit!139490)))

(declare-fun b!4785846 () Bool)

(declare-fun Unit!139491 () Unit!139478)

(assert (=> b!4785846 (= e!2988112 Unit!139491)))

(assert (= (and d!1530827 c!815802) b!4785841))

(assert (= (and d!1530827 (not c!815802)) b!4785844))

(assert (= (and b!4785841 c!815801) b!4785843))

(assert (= (and b!4785841 (not c!815801)) b!4785846))

(assert (= (and b!4785841 c!815803) b!4785838))

(assert (= (and b!4785841 (not c!815803)) b!4785845))

(assert (= (and d!1530827 res!2032936) b!4785839))

(assert (= (and b!4785839 res!2032938) b!4785842))

(assert (= (and b!4785842 res!2032937) b!4785840))

(declare-fun m!5764860 () Bool)

(assert (=> b!4785839 m!5764860))

(assert (=> b!4785839 m!5764800))

(declare-fun m!5764862 () Bool)

(assert (=> b!4785840 m!5764862))

(declare-fun m!5764864 () Bool)

(assert (=> b!4785840 m!5764864))

(assert (=> b!4785840 m!5764864))

(declare-fun m!5764866 () Bool)

(assert (=> b!4785840 m!5764866))

(declare-fun m!5764868 () Bool)

(assert (=> b!4785841 m!5764868))

(declare-fun m!5764870 () Bool)

(assert (=> b!4785841 m!5764870))

(assert (=> b!4785841 m!5764870))

(declare-fun m!5764872 () Bool)

(assert (=> b!4785841 m!5764872))

(declare-fun m!5764874 () Bool)

(assert (=> b!4785841 m!5764874))

(declare-fun m!5764876 () Bool)

(assert (=> b!4785841 m!5764876))

(declare-fun m!5764878 () Bool)

(assert (=> d!1530827 m!5764878))

(assert (=> d!1530827 m!5764828))

(declare-fun m!5764880 () Bool)

(assert (=> b!4785842 m!5764880))

(assert (=> b!4785838 m!5764870))

(assert (=> b!4785838 m!5764870))

(declare-fun m!5764882 () Bool)

(assert (=> b!4785838 m!5764882))

(assert (=> b!4785565 d!1530827))

(declare-fun d!1530829 () Bool)

(declare-fun c!815804 () Bool)

(declare-fun e!2988115 () Bool)

(assert (=> d!1530829 (= c!815804 e!2988115)))

(declare-fun res!2032939 () Bool)

(assert (=> d!1530829 (=> (not res!2032939) (not e!2988115))))

(assert (=> d!1530829 (= res!2032939 (is-Cons!54074 (t!361648 (toList!6797 lm!2473))))))

(declare-fun e!2988114 () V!15883)

(assert (=> d!1530829 (= (getValue!55 (t!361648 (toList!6797 lm!2473)) key!5896) e!2988114)))

(declare-fun b!4785851 () Bool)

(assert (=> b!4785851 (= e!2988115 (containsKey!3858 (_2!31597 (h!60494 (t!361648 (toList!6797 lm!2473)))) key!5896))))

(declare-fun b!4785849 () Bool)

(assert (=> b!4785849 (= e!2988114 (_2!31596 (get!18409 (getPair!831 (_2!31597 (h!60494 (t!361648 (toList!6797 lm!2473)))) key!5896))))))

(declare-fun b!4785850 () Bool)

(assert (=> b!4785850 (= e!2988114 (getValue!55 (t!361648 (t!361648 (toList!6797 lm!2473))) key!5896))))

(assert (= (and d!1530829 res!2032939) b!4785851))

(assert (= (and d!1530829 c!815804) b!4785849))

(assert (= (and d!1530829 (not c!815804)) b!4785850))

(declare-fun m!5764884 () Bool)

(assert (=> b!4785851 m!5764884))

(declare-fun m!5764886 () Bool)

(assert (=> b!4785849 m!5764886))

(assert (=> b!4785849 m!5764886))

(declare-fun m!5764888 () Bool)

(assert (=> b!4785849 m!5764888))

(declare-fun m!5764890 () Bool)

(assert (=> b!4785850 m!5764890))

(assert (=> b!4785674 d!1530829))

(declare-fun d!1530831 () Bool)

(declare-fun isEmpty!29383 (Option!12997) Bool)

(assert (=> d!1530831 (= (isDefined!10139 (getValueByKey!2312 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896)) (not (isEmpty!29383 (getValueByKey!2312 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))))

(declare-fun bs!1153469 () Bool)

(assert (= bs!1153469 d!1530831))

(assert (=> bs!1153469 m!5764592))

(declare-fun m!5764892 () Bool)

(assert (=> bs!1153469 m!5764892))

(assert (=> b!4785566 d!1530831))

(declare-fun b!4785862 () Bool)

(declare-fun e!2988121 () Option!12997)

(assert (=> b!4785862 (= e!2988121 (getValueByKey!2312 (t!361647 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) key!5896))))

(declare-fun b!4785860 () Bool)

(declare-fun e!2988120 () Option!12997)

(assert (=> b!4785860 (= e!2988120 (Some!12996 (_2!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))))))))

(declare-fun b!4785863 () Bool)

(assert (=> b!4785863 (= e!2988121 None!12996)))

(declare-fun b!4785861 () Bool)

(assert (=> b!4785861 (= e!2988120 e!2988121)))

(declare-fun c!815810 () Bool)

(assert (=> b!4785861 (= c!815810 (and (is-Cons!54073 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (not (= (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) key!5896))))))

(declare-fun d!1530833 () Bool)

(declare-fun c!815809 () Bool)

(assert (=> d!1530833 (= c!815809 (and (is-Cons!54073 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) (= (_1!31596 (h!60493 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))) key!5896)))))

(assert (=> d!1530833 (= (getValueByKey!2312 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896) e!2988120)))

(assert (= (and d!1530833 c!815809) b!4785860))

(assert (= (and d!1530833 (not c!815809)) b!4785861))

(assert (= (and b!4785861 c!815810) b!4785862))

(assert (= (and b!4785861 (not c!815810)) b!4785863))

(declare-fun m!5764894 () Bool)

(assert (=> b!4785862 m!5764894))

(assert (=> b!4785566 d!1530833))

(declare-fun d!1530835 () Bool)

(declare-fun e!2988123 () Bool)

(assert (=> d!1530835 e!2988123))

(declare-fun res!2032940 () Bool)

(assert (=> d!1530835 (=> res!2032940 e!2988123)))

(declare-fun lt!1947225 () Bool)

(assert (=> d!1530835 (= res!2032940 (not lt!1947225))))

(declare-fun lt!1947224 () Bool)

(assert (=> d!1530835 (= lt!1947225 lt!1947224)))

(declare-fun lt!1947226 () Unit!139478)

(declare-fun e!2988122 () Unit!139478)

(assert (=> d!1530835 (= lt!1947226 e!2988122)))

(declare-fun c!815811 () Bool)

(assert (=> d!1530835 (= c!815811 lt!1947224)))

(assert (=> d!1530835 (= lt!1947224 (containsKey!3861 (toList!6797 lm!2473) (hash!4876 hashF!1559 key!5896)))))

(assert (=> d!1530835 (= (contains!17646 lm!2473 (hash!4876 hashF!1559 key!5896)) lt!1947225)))

(declare-fun b!4785864 () Bool)

(declare-fun lt!1947227 () Unit!139478)

(assert (=> b!4785864 (= e!2988122 lt!1947227)))

(assert (=> b!4785864 (= lt!1947227 (lemmaContainsKeyImpliesGetValueByKeyDefined!2105 (toList!6797 lm!2473) (hash!4876 hashF!1559 key!5896)))))

(assert (=> b!4785864 (isDefined!10140 (getValueByKey!2313 (toList!6797 lm!2473) (hash!4876 hashF!1559 key!5896)))))

(declare-fun b!4785865 () Bool)

(declare-fun Unit!139492 () Unit!139478)

(assert (=> b!4785865 (= e!2988122 Unit!139492)))

(declare-fun b!4785866 () Bool)

(assert (=> b!4785866 (= e!2988123 (isDefined!10140 (getValueByKey!2313 (toList!6797 lm!2473) (hash!4876 hashF!1559 key!5896))))))

(assert (= (and d!1530835 c!815811) b!4785864))

(assert (= (and d!1530835 (not c!815811)) b!4785865))

(assert (= (and d!1530835 (not res!2032940)) b!4785866))

(assert (=> d!1530835 m!5764512))

(declare-fun m!5764896 () Bool)

(assert (=> d!1530835 m!5764896))

(assert (=> b!4785864 m!5764512))

(declare-fun m!5764898 () Bool)

(assert (=> b!4785864 m!5764898))

(assert (=> b!4785864 m!5764512))

(declare-fun m!5764900 () Bool)

(assert (=> b!4785864 m!5764900))

(assert (=> b!4785864 m!5764900))

(declare-fun m!5764902 () Bool)

(assert (=> b!4785864 m!5764902))

(assert (=> b!4785866 m!5764512))

(assert (=> b!4785866 m!5764900))

(assert (=> b!4785866 m!5764900))

(assert (=> b!4785866 m!5764902))

(assert (=> d!1530741 d!1530835))

(assert (=> d!1530741 d!1530747))

(declare-fun d!1530837 () Bool)

(declare-fun e!2988126 () Bool)

(assert (=> d!1530837 e!2988126))

(declare-fun res!2032943 () Bool)

(assert (=> d!1530837 (=> (not res!2032943) (not e!2988126))))

(assert (=> d!1530837 (= res!2032943 (contains!17646 lm!2473 (hash!4876 hashF!1559 key!5896)))))

(assert (=> d!1530837 true))

(declare-fun _$5!169 () Unit!139478)

(assert (=> d!1530837 (= (choose!34389 lm!2473 key!5896 hashF!1559) _$5!169)))

(declare-fun b!4785869 () Bool)

(assert (=> b!4785869 (= e!2988126 (isDefined!10137 (getPair!831 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1530837 res!2032943) b!4785869))

(assert (=> d!1530837 m!5764512))

(assert (=> d!1530837 m!5764512))

(assert (=> d!1530837 m!5764672))

(assert (=> b!4785869 m!5764512))

(assert (=> b!4785869 m!5764512))

(assert (=> b!4785869 m!5764678))

(assert (=> b!4785869 m!5764678))

(assert (=> b!4785869 m!5764680))

(assert (=> b!4785869 m!5764680))

(assert (=> b!4785869 m!5764682))

(assert (=> d!1530741 d!1530837))

(declare-fun d!1530839 () Bool)

(declare-fun res!2032944 () Bool)

(declare-fun e!2988127 () Bool)

(assert (=> d!1530839 (=> res!2032944 e!2988127)))

(assert (=> d!1530839 (= res!2032944 (is-Nil!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530839 (= (forall!12159 (toList!6797 lm!2473) lambda!229158) e!2988127)))

(declare-fun b!4785870 () Bool)

(declare-fun e!2988128 () Bool)

(assert (=> b!4785870 (= e!2988127 e!2988128)))

(declare-fun res!2032945 () Bool)

(assert (=> b!4785870 (=> (not res!2032945) (not e!2988128))))

(assert (=> b!4785870 (= res!2032945 (dynLambda!22031 lambda!229158 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785871 () Bool)

(assert (=> b!4785871 (= e!2988128 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229158))))

(assert (= (and d!1530839 (not res!2032944)) b!4785870))

(assert (= (and b!4785870 res!2032945) b!4785871))

(declare-fun b_lambda!186137 () Bool)

(assert (=> (not b_lambda!186137) (not b!4785870)))

(declare-fun m!5764904 () Bool)

(assert (=> b!4785870 m!5764904))

(declare-fun m!5764906 () Bool)

(assert (=> b!4785871 m!5764906))

(assert (=> d!1530741 d!1530839))

(assert (=> b!4785675 d!1530721))

(assert (=> d!1530715 d!1530805))

(declare-fun d!1530841 () Bool)

(assert (=> d!1530841 (isDefined!10140 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068))))

(declare-fun lt!1947230 () Unit!139478)

(declare-fun choose!34394 (List!54198 (_ BitVec 64)) Unit!139478)

(assert (=> d!1530841 (= lt!1947230 (choose!34394 (toList!6797 lm!2473) lt!1947068))))

(declare-fun e!2988131 () Bool)

(assert (=> d!1530841 e!2988131))

(declare-fun res!2032948 () Bool)

(assert (=> d!1530841 (=> (not res!2032948) (not e!2988131))))

(assert (=> d!1530841 (= res!2032948 (isStrictlySorted!858 (toList!6797 lm!2473)))))

(assert (=> d!1530841 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2105 (toList!6797 lm!2473) lt!1947068) lt!1947230)))

(declare-fun b!4785874 () Bool)

(assert (=> b!4785874 (= e!2988131 (containsKey!3861 (toList!6797 lm!2473) lt!1947068))))

(assert (= (and d!1530841 res!2032948) b!4785874))

(assert (=> d!1530841 m!5764656))

(assert (=> d!1530841 m!5764656))

(assert (=> d!1530841 m!5764664))

(declare-fun m!5764908 () Bool)

(assert (=> d!1530841 m!5764908))

(assert (=> d!1530841 m!5764618))

(assert (=> b!4785874 m!5764660))

(assert (=> b!4785646 d!1530841))

(declare-fun d!1530843 () Bool)

(declare-fun isEmpty!29384 (Option!12998) Bool)

(assert (=> d!1530843 (= (isDefined!10140 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068)) (not (isEmpty!29384 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068))))))

(declare-fun bs!1153470 () Bool)

(assert (= bs!1153470 d!1530843))

(assert (=> bs!1153470 m!5764656))

(declare-fun m!5764910 () Bool)

(assert (=> bs!1153470 m!5764910))

(assert (=> b!4785646 d!1530843))

(declare-fun b!4785884 () Bool)

(declare-fun e!2988136 () Option!12998)

(declare-fun e!2988137 () Option!12998)

(assert (=> b!4785884 (= e!2988136 e!2988137)))

(declare-fun c!815817 () Bool)

(assert (=> b!4785884 (= c!815817 (and (is-Cons!54074 (toList!6797 lm!2473)) (not (= (_1!31597 (h!60494 (toList!6797 lm!2473))) lt!1947068))))))

(declare-fun b!4785883 () Bool)

(assert (=> b!4785883 (= e!2988136 (Some!12997 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun b!4785885 () Bool)

(assert (=> b!4785885 (= e!2988137 (getValueByKey!2313 (t!361648 (toList!6797 lm!2473)) lt!1947068))))

(declare-fun b!4785886 () Bool)

(assert (=> b!4785886 (= e!2988137 None!12997)))

(declare-fun d!1530845 () Bool)

(declare-fun c!815816 () Bool)

(assert (=> d!1530845 (= c!815816 (and (is-Cons!54074 (toList!6797 lm!2473)) (= (_1!31597 (h!60494 (toList!6797 lm!2473))) lt!1947068)))))

(assert (=> d!1530845 (= (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068) e!2988136)))

(assert (= (and d!1530845 c!815816) b!4785883))

(assert (= (and d!1530845 (not c!815816)) b!4785884))

(assert (= (and b!4785884 c!815817) b!4785885))

(assert (= (and b!4785884 (not c!815817)) b!4785886))

(declare-fun m!5764912 () Bool)

(assert (=> b!4785885 m!5764912))

(assert (=> b!4785646 d!1530845))

(declare-fun d!1530847 () Bool)

(declare-fun res!2032949 () Bool)

(declare-fun e!2988138 () Bool)

(assert (=> d!1530847 (=> res!2032949 e!2988138)))

(assert (=> d!1530847 (= res!2032949 (and (is-Cons!54073 (apply!12914 lm!2473 lt!1947068)) (= (_1!31596 (h!60493 (apply!12914 lm!2473 lt!1947068))) key!5896)))))

(assert (=> d!1530847 (= (containsKey!3858 (apply!12914 lm!2473 lt!1947068) key!5896) e!2988138)))

(declare-fun b!4785887 () Bool)

(declare-fun e!2988139 () Bool)

(assert (=> b!4785887 (= e!2988138 e!2988139)))

(declare-fun res!2032950 () Bool)

(assert (=> b!4785887 (=> (not res!2032950) (not e!2988139))))

(assert (=> b!4785887 (= res!2032950 (is-Cons!54073 (apply!12914 lm!2473 lt!1947068)))))

(declare-fun b!4785888 () Bool)

(assert (=> b!4785888 (= e!2988139 (containsKey!3858 (t!361647 (apply!12914 lm!2473 lt!1947068)) key!5896))))

(assert (= (and d!1530847 (not res!2032949)) b!4785887))

(assert (= (and b!4785887 res!2032950) b!4785888))

(declare-fun m!5764914 () Bool)

(assert (=> b!4785888 m!5764914))

(assert (=> b!4785639 d!1530847))

(declare-fun d!1530849 () Bool)

(assert (=> d!1530849 (= (isDefined!10137 (getPair!831 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29381 (getPair!831 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1153471 () Bool)

(assert (= bs!1153471 d!1530849))

(assert (=> bs!1153471 m!5764680))

(declare-fun m!5764916 () Bool)

(assert (=> bs!1153471 m!5764916))

(assert (=> b!4785664 d!1530849))

(declare-fun lt!1947231 () Option!12995)

(declare-fun b!4785889 () Bool)

(declare-fun e!2988142 () Bool)

(assert (=> b!4785889 (= e!2988142 (contains!17648 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) (get!18409 lt!1947231)))))

(declare-fun d!1530851 () Bool)

(declare-fun e!2988144 () Bool)

(assert (=> d!1530851 e!2988144))

(declare-fun res!2032953 () Bool)

(assert (=> d!1530851 (=> res!2032953 e!2988144)))

(declare-fun e!2988140 () Bool)

(assert (=> d!1530851 (= res!2032953 e!2988140)))

(declare-fun res!2032952 () Bool)

(assert (=> d!1530851 (=> (not res!2032952) (not e!2988140))))

(assert (=> d!1530851 (= res!2032952 (isEmpty!29381 lt!1947231))))

(declare-fun e!2988143 () Option!12995)

(assert (=> d!1530851 (= lt!1947231 e!2988143)))

(declare-fun c!815819 () Bool)

(assert (=> d!1530851 (= c!815819 (and (is-Cons!54073 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896))) (= (_1!31596 (h!60493 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1530851 (noDuplicateKeys!2307 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)))))

(assert (=> d!1530851 (= (getPair!831 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) key!5896) lt!1947231)))

(declare-fun b!4785890 () Bool)

(assert (=> b!4785890 (= e!2988143 (Some!12994 (h!60493 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)))))))

(declare-fun e!2988141 () Option!12995)

(declare-fun b!4785891 () Bool)

(assert (=> b!4785891 (= e!2988141 (getPair!831 (t!361647 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4785892 () Bool)

(assert (=> b!4785892 (= e!2988143 e!2988141)))

(declare-fun c!815818 () Bool)

(assert (=> b!4785892 (= c!815818 (is-Cons!54073 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896))))))

(declare-fun b!4785893 () Bool)

(declare-fun res!2032951 () Bool)

(assert (=> b!4785893 (=> (not res!2032951) (not e!2988142))))

(assert (=> b!4785893 (= res!2032951 (= (_1!31596 (get!18409 lt!1947231)) key!5896))))

(declare-fun b!4785894 () Bool)

(assert (=> b!4785894 (= e!2988144 e!2988142)))

(declare-fun res!2032954 () Bool)

(assert (=> b!4785894 (=> (not res!2032954) (not e!2988142))))

(assert (=> b!4785894 (= res!2032954 (isDefined!10137 lt!1947231))))

(declare-fun b!4785895 () Bool)

(assert (=> b!4785895 (= e!2988141 None!12994)))

(declare-fun b!4785896 () Bool)

(assert (=> b!4785896 (= e!2988140 (not (containsKey!3858 (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1530851 c!815819) b!4785890))

(assert (= (and d!1530851 (not c!815819)) b!4785892))

(assert (= (and b!4785892 c!815818) b!4785891))

(assert (= (and b!4785892 (not c!815818)) b!4785895))

(assert (= (and d!1530851 res!2032952) b!4785896))

(assert (= (and d!1530851 (not res!2032953)) b!4785894))

(assert (= (and b!4785894 res!2032954) b!4785893))

(assert (= (and b!4785893 res!2032951) b!4785889))

(assert (=> b!4785896 m!5764678))

(declare-fun m!5764918 () Bool)

(assert (=> b!4785896 m!5764918))

(declare-fun m!5764920 () Bool)

(assert (=> b!4785891 m!5764920))

(declare-fun m!5764922 () Bool)

(assert (=> b!4785893 m!5764922))

(assert (=> b!4785889 m!5764922))

(assert (=> b!4785889 m!5764678))

(assert (=> b!4785889 m!5764922))

(declare-fun m!5764924 () Bool)

(assert (=> b!4785889 m!5764924))

(declare-fun m!5764926 () Bool)

(assert (=> d!1530851 m!5764926))

(assert (=> d!1530851 m!5764678))

(declare-fun m!5764928 () Bool)

(assert (=> d!1530851 m!5764928))

(declare-fun m!5764930 () Bool)

(assert (=> b!4785894 m!5764930))

(assert (=> b!4785664 d!1530851))

(declare-fun d!1530853 () Bool)

(assert (=> d!1530853 (= (apply!12914 lm!2473 (hash!4876 hashF!1559 key!5896)) (get!18410 (getValueByKey!2313 (toList!6797 lm!2473) (hash!4876 hashF!1559 key!5896))))))

(declare-fun bs!1153472 () Bool)

(assert (= bs!1153472 d!1530853))

(assert (=> bs!1153472 m!5764512))

(assert (=> bs!1153472 m!5764900))

(assert (=> bs!1153472 m!5764900))

(declare-fun m!5764932 () Bool)

(assert (=> bs!1153472 m!5764932))

(assert (=> b!4785664 d!1530853))

(assert (=> b!4785664 d!1530747))

(declare-fun d!1530855 () Bool)

(declare-fun res!2032959 () Bool)

(declare-fun e!2988149 () Bool)

(assert (=> d!1530855 (=> res!2032959 e!2988149)))

(assert (=> d!1530855 (= res!2032959 (not (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(assert (=> d!1530855 (= (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473)))) e!2988149)))

(declare-fun b!4785901 () Bool)

(declare-fun e!2988150 () Bool)

(assert (=> b!4785901 (= e!2988149 e!2988150)))

(declare-fun res!2032960 () Bool)

(assert (=> b!4785901 (=> (not res!2032960) (not e!2988150))))

(assert (=> b!4785901 (= res!2032960 (not (containsKey!3858 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))))

(declare-fun b!4785902 () Bool)

(assert (=> b!4785902 (= e!2988150 (noDuplicateKeys!2307 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(assert (= (and d!1530855 (not res!2032959)) b!4785901))

(assert (= (and b!4785901 res!2032960) b!4785902))

(declare-fun m!5764934 () Bool)

(assert (=> b!4785901 m!5764934))

(declare-fun m!5764936 () Bool)

(assert (=> b!4785902 m!5764936))

(assert (=> bs!1153440 d!1530855))

(declare-fun d!1530857 () Bool)

(declare-fun res!2032961 () Bool)

(declare-fun e!2988151 () Bool)

(assert (=> d!1530857 (=> res!2032961 e!2988151)))

(assert (=> d!1530857 (= res!2032961 (is-Nil!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530857 (= (forall!12159 (toList!6797 lm!2473) lambda!229165) e!2988151)))

(declare-fun b!4785903 () Bool)

(declare-fun e!2988152 () Bool)

(assert (=> b!4785903 (= e!2988151 e!2988152)))

(declare-fun res!2032962 () Bool)

(assert (=> b!4785903 (=> (not res!2032962) (not e!2988152))))

(assert (=> b!4785903 (= res!2032962 (dynLambda!22031 lambda!229165 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785904 () Bool)

(assert (=> b!4785904 (= e!2988152 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229165))))

(assert (= (and d!1530857 (not res!2032961)) b!4785903))

(assert (= (and b!4785903 res!2032962) b!4785904))

(declare-fun b_lambda!186139 () Bool)

(assert (=> (not b_lambda!186139) (not b!4785903)))

(declare-fun m!5764938 () Bool)

(assert (=> b!4785903 m!5764938))

(declare-fun m!5764940 () Bool)

(assert (=> b!4785904 m!5764940))

(assert (=> d!1530749 d!1530857))

(declare-fun d!1530859 () Bool)

(assert (=> d!1530859 (isDefined!10139 (getValueByKey!2312 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(declare-fun lt!1947234 () Unit!139478)

(declare-fun choose!34395 (List!54197 K!15637) Unit!139478)

(assert (=> d!1530859 (= lt!1947234 (choose!34395 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(assert (=> d!1530859 (invariantList!1710 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))

(assert (=> d!1530859 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2104 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896) lt!1947234)))

(declare-fun bs!1153473 () Bool)

(assert (= bs!1153473 d!1530859))

(assert (=> bs!1153473 m!5764592))

(assert (=> bs!1153473 m!5764592))

(assert (=> bs!1153473 m!5764594))

(declare-fun m!5764942 () Bool)

(assert (=> bs!1153473 m!5764942))

(assert (=> bs!1153473 m!5764828))

(assert (=> b!4785564 d!1530859))

(assert (=> b!4785564 d!1530831))

(assert (=> b!4785564 d!1530833))

(declare-fun d!1530861 () Bool)

(assert (=> d!1530861 (contains!17653 (getKeysList!1056 (toList!6798 (extractMap!2386 (toList!6797 lm!2473)))) key!5896)))

(declare-fun lt!1947237 () Unit!139478)

(declare-fun choose!34396 (List!54197 K!15637) Unit!139478)

(assert (=> d!1530861 (= lt!1947237 (choose!34396 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896))))

(assert (=> d!1530861 (invariantList!1710 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))))))

(assert (=> d!1530861 (= (lemmaInListThenGetKeysListContains!1051 (toList!6798 (extractMap!2386 (toList!6797 lm!2473))) key!5896) lt!1947237)))

(declare-fun bs!1153474 () Bool)

(assert (= bs!1153474 d!1530861))

(assert (=> bs!1153474 m!5764586))

(assert (=> bs!1153474 m!5764586))

(declare-fun m!5764944 () Bool)

(assert (=> bs!1153474 m!5764944))

(declare-fun m!5764946 () Bool)

(assert (=> bs!1153474 m!5764946))

(assert (=> bs!1153474 m!5764828))

(assert (=> b!4785564 d!1530861))

(assert (=> b!4785648 d!1530843))

(assert (=> b!4785648 d!1530845))

(declare-fun d!1530863 () Bool)

(assert (=> d!1530863 (= (get!18409 lt!1947143) (v!48245 lt!1947143))))

(assert (=> b!4785636 d!1530863))

(declare-fun d!1530865 () Bool)

(declare-fun res!2032967 () Bool)

(declare-fun e!2988157 () Bool)

(assert (=> d!1530865 (=> res!2032967 e!2988157)))

(assert (=> d!1530865 (= res!2032967 (or (is-Nil!54074 (toList!6797 lm!2473)) (is-Nil!54074 (t!361648 (toList!6797 lm!2473)))))))

(assert (=> d!1530865 (= (isStrictlySorted!858 (toList!6797 lm!2473)) e!2988157)))

(declare-fun b!4785909 () Bool)

(declare-fun e!2988158 () Bool)

(assert (=> b!4785909 (= e!2988157 e!2988158)))

(declare-fun res!2032968 () Bool)

(assert (=> b!4785909 (=> (not res!2032968) (not e!2988158))))

(assert (=> b!4785909 (= res!2032968 (bvslt (_1!31597 (h!60494 (toList!6797 lm!2473))) (_1!31597 (h!60494 (t!361648 (toList!6797 lm!2473))))))))

(declare-fun b!4785910 () Bool)

(assert (=> b!4785910 (= e!2988158 (isStrictlySorted!858 (t!361648 (toList!6797 lm!2473))))))

(assert (= (and d!1530865 (not res!2032967)) b!4785909))

(assert (= (and b!4785909 res!2032968) b!4785910))

(declare-fun m!5764948 () Bool)

(assert (=> b!4785910 m!5764948))

(assert (=> d!1530725 d!1530865))

(declare-fun d!1530867 () Bool)

(assert (=> d!1530867 (= (isDefined!10137 lt!1947143) (not (isEmpty!29381 lt!1947143)))))

(declare-fun bs!1153475 () Bool)

(assert (= bs!1153475 d!1530867))

(assert (=> bs!1153475 m!5764650))

(assert (=> b!4785637 d!1530867))

(declare-fun d!1530869 () Bool)

(declare-fun res!2032969 () Bool)

(declare-fun e!2988159 () Bool)

(assert (=> d!1530869 (=> res!2032969 e!2988159)))

(declare-fun e!2988160 () Bool)

(assert (=> d!1530869 (= res!2032969 e!2988160)))

(declare-fun res!2032971 () Bool)

(assert (=> d!1530869 (=> (not res!2032971) (not e!2988160))))

(assert (=> d!1530869 (= res!2032971 (is-Cons!54074 (t!361648 (toList!6797 lm!2473))))))

(assert (=> d!1530869 (= (containsKeyBiggerList!509 (t!361648 (toList!6797 lm!2473)) key!5896) e!2988159)))

(declare-fun b!4785911 () Bool)

(assert (=> b!4785911 (= e!2988160 (containsKey!3858 (_2!31597 (h!60494 (t!361648 (toList!6797 lm!2473)))) key!5896))))

(declare-fun b!4785912 () Bool)

(declare-fun e!2988161 () Bool)

(assert (=> b!4785912 (= e!2988159 e!2988161)))

(declare-fun res!2032970 () Bool)

(assert (=> b!4785912 (=> (not res!2032970) (not e!2988161))))

(assert (=> b!4785912 (= res!2032970 (is-Cons!54074 (t!361648 (toList!6797 lm!2473))))))

(declare-fun b!4785913 () Bool)

(assert (=> b!4785913 (= e!2988161 (containsKeyBiggerList!509 (t!361648 (t!361648 (toList!6797 lm!2473))) key!5896))))

(assert (= (and d!1530869 res!2032971) b!4785911))

(assert (= (and d!1530869 (not res!2032969)) b!4785912))

(assert (= (and b!4785912 res!2032970) b!4785913))

(assert (=> b!4785911 m!5764884))

(declare-fun m!5764950 () Bool)

(assert (=> b!4785913 m!5764950))

(assert (=> b!4785657 d!1530869))

(declare-fun lt!1947238 () Option!12995)

(declare-fun e!2988164 () Bool)

(declare-fun b!4785914 () Bool)

(assert (=> b!4785914 (= e!2988164 (contains!17648 (t!361647 (apply!12914 lm!2473 lt!1947068)) (get!18409 lt!1947238)))))

(declare-fun d!1530871 () Bool)

(declare-fun e!2988166 () Bool)

(assert (=> d!1530871 e!2988166))

(declare-fun res!2032974 () Bool)

(assert (=> d!1530871 (=> res!2032974 e!2988166)))

(declare-fun e!2988162 () Bool)

(assert (=> d!1530871 (= res!2032974 e!2988162)))

(declare-fun res!2032973 () Bool)

(assert (=> d!1530871 (=> (not res!2032973) (not e!2988162))))

(assert (=> d!1530871 (= res!2032973 (isEmpty!29381 lt!1947238))))

(declare-fun e!2988165 () Option!12995)

(assert (=> d!1530871 (= lt!1947238 e!2988165)))

(declare-fun c!815821 () Bool)

(assert (=> d!1530871 (= c!815821 (and (is-Cons!54073 (t!361647 (apply!12914 lm!2473 lt!1947068))) (= (_1!31596 (h!60493 (t!361647 (apply!12914 lm!2473 lt!1947068)))) key!5896)))))

(assert (=> d!1530871 (noDuplicateKeys!2307 (t!361647 (apply!12914 lm!2473 lt!1947068)))))

(assert (=> d!1530871 (= (getPair!831 (t!361647 (apply!12914 lm!2473 lt!1947068)) key!5896) lt!1947238)))

(declare-fun b!4785915 () Bool)

(assert (=> b!4785915 (= e!2988165 (Some!12994 (h!60493 (t!361647 (apply!12914 lm!2473 lt!1947068)))))))

(declare-fun b!4785916 () Bool)

(declare-fun e!2988163 () Option!12995)

(assert (=> b!4785916 (= e!2988163 (getPair!831 (t!361647 (t!361647 (apply!12914 lm!2473 lt!1947068))) key!5896))))

(declare-fun b!4785917 () Bool)

(assert (=> b!4785917 (= e!2988165 e!2988163)))

(declare-fun c!815820 () Bool)

(assert (=> b!4785917 (= c!815820 (is-Cons!54073 (t!361647 (apply!12914 lm!2473 lt!1947068))))))

(declare-fun b!4785918 () Bool)

(declare-fun res!2032972 () Bool)

(assert (=> b!4785918 (=> (not res!2032972) (not e!2988164))))

(assert (=> b!4785918 (= res!2032972 (= (_1!31596 (get!18409 lt!1947238)) key!5896))))

(declare-fun b!4785919 () Bool)

(assert (=> b!4785919 (= e!2988166 e!2988164)))

(declare-fun res!2032975 () Bool)

(assert (=> b!4785919 (=> (not res!2032975) (not e!2988164))))

(assert (=> b!4785919 (= res!2032975 (isDefined!10137 lt!1947238))))

(declare-fun b!4785920 () Bool)

(assert (=> b!4785920 (= e!2988163 None!12994)))

(declare-fun b!4785921 () Bool)

(assert (=> b!4785921 (= e!2988162 (not (containsKey!3858 (t!361647 (apply!12914 lm!2473 lt!1947068)) key!5896)))))

(assert (= (and d!1530871 c!815821) b!4785915))

(assert (= (and d!1530871 (not c!815821)) b!4785917))

(assert (= (and b!4785917 c!815820) b!4785916))

(assert (= (and b!4785917 (not c!815820)) b!4785920))

(assert (= (and d!1530871 res!2032973) b!4785921))

(assert (= (and d!1530871 (not res!2032974)) b!4785919))

(assert (= (and b!4785919 res!2032975) b!4785918))

(assert (= (and b!4785918 res!2032972) b!4785914))

(assert (=> b!4785921 m!5764914))

(declare-fun m!5764952 () Bool)

(assert (=> b!4785916 m!5764952))

(declare-fun m!5764954 () Bool)

(assert (=> b!4785918 m!5764954))

(assert (=> b!4785914 m!5764954))

(assert (=> b!4785914 m!5764954))

(declare-fun m!5764956 () Bool)

(assert (=> b!4785914 m!5764956))

(declare-fun m!5764958 () Bool)

(assert (=> d!1530871 m!5764958))

(declare-fun m!5764960 () Bool)

(assert (=> d!1530871 m!5764960))

(declare-fun m!5764962 () Bool)

(assert (=> b!4785919 m!5764962))

(assert (=> b!4785634 d!1530871))

(declare-fun bs!1153476 () Bool)

(declare-fun d!1530873 () Bool)

(assert (= bs!1153476 (and d!1530873 b!4785485)))

(declare-fun lambda!229192 () Int)

(assert (=> bs!1153476 (= lambda!229192 lambda!229138)))

(assert (=> d!1530873 true))

(assert (=> d!1530873 true))

(assert (=> d!1530873 (= (allKeysSameHash!1945 (_2!31597 (h!60494 (toList!6797 lm!2473))) (_1!31597 (h!60494 (toList!6797 lm!2473))) hashF!1559) (forall!12160 (_2!31597 (h!60494 (toList!6797 lm!2473))) lambda!229192))))

(declare-fun bs!1153477 () Bool)

(assert (= bs!1153477 d!1530873))

(declare-fun m!5764964 () Bool)

(assert (=> bs!1153477 m!5764964))

(assert (=> bs!1153439 d!1530873))

(assert (=> b!4785655 d!1530721))

(declare-fun d!1530875 () Bool)

(assert (=> d!1530875 (= (get!18410 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068)) (v!48249 (getValueByKey!2313 (toList!6797 lm!2473) lt!1947068)))))

(assert (=> d!1530733 d!1530875))

(assert (=> d!1530733 d!1530845))

(declare-fun d!1530877 () Bool)

(assert (=> d!1530877 (= (isEmpty!29381 lt!1947143) (not (is-Some!12994 lt!1947143)))))

(assert (=> d!1530729 d!1530877))

(declare-fun d!1530879 () Bool)

(declare-fun res!2032976 () Bool)

(declare-fun e!2988167 () Bool)

(assert (=> d!1530879 (=> res!2032976 e!2988167)))

(assert (=> d!1530879 (= res!2032976 (not (is-Cons!54073 (apply!12914 lm!2473 lt!1947068))))))

(assert (=> d!1530879 (= (noDuplicateKeys!2307 (apply!12914 lm!2473 lt!1947068)) e!2988167)))

(declare-fun b!4785924 () Bool)

(declare-fun e!2988168 () Bool)

(assert (=> b!4785924 (= e!2988167 e!2988168)))

(declare-fun res!2032977 () Bool)

(assert (=> b!4785924 (=> (not res!2032977) (not e!2988168))))

(assert (=> b!4785924 (= res!2032977 (not (containsKey!3858 (t!361647 (apply!12914 lm!2473 lt!1947068)) (_1!31596 (h!60493 (apply!12914 lm!2473 lt!1947068))))))))

(declare-fun b!4785925 () Bool)

(assert (=> b!4785925 (= e!2988168 (noDuplicateKeys!2307 (t!361647 (apply!12914 lm!2473 lt!1947068))))))

(assert (= (and d!1530879 (not res!2032976)) b!4785924))

(assert (= (and b!4785924 res!2032977) b!4785925))

(declare-fun m!5764966 () Bool)

(assert (=> b!4785924 m!5764966))

(assert (=> b!4785925 m!5764960))

(assert (=> d!1530729 d!1530879))

(declare-fun d!1530881 () Bool)

(declare-fun choose!34397 (Hashable!6859 K!15637) (_ BitVec 64))

(assert (=> d!1530881 (= (hash!4878 hashF!1559 key!5896) (choose!34397 hashF!1559 key!5896))))

(declare-fun bs!1153478 () Bool)

(assert (= bs!1153478 d!1530881))

(declare-fun m!5764968 () Bool)

(assert (=> bs!1153478 m!5764968))

(assert (=> d!1530747 d!1530881))

(declare-fun d!1530883 () Bool)

(declare-fun res!2032978 () Bool)

(declare-fun e!2988169 () Bool)

(assert (=> d!1530883 (=> res!2032978 e!2988169)))

(assert (=> d!1530883 (= res!2032978 (is-Nil!54074 (t!361648 (toList!6797 lm!2473))))))

(assert (=> d!1530883 (= (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229136) e!2988169)))

(declare-fun b!4785926 () Bool)

(declare-fun e!2988170 () Bool)

(assert (=> b!4785926 (= e!2988169 e!2988170)))

(declare-fun res!2032979 () Bool)

(assert (=> b!4785926 (=> (not res!2032979) (not e!2988170))))

(assert (=> b!4785926 (= res!2032979 (dynLambda!22031 lambda!229136 (h!60494 (t!361648 (toList!6797 lm!2473)))))))

(declare-fun b!4785927 () Bool)

(assert (=> b!4785927 (= e!2988170 (forall!12159 (t!361648 (t!361648 (toList!6797 lm!2473))) lambda!229136))))

(assert (= (and d!1530883 (not res!2032978)) b!4785926))

(assert (= (and b!4785926 res!2032979) b!4785927))

(declare-fun b_lambda!186141 () Bool)

(assert (=> (not b_lambda!186141) (not b!4785926)))

(declare-fun m!5764970 () Bool)

(assert (=> b!4785926 m!5764970))

(declare-fun m!5764972 () Bool)

(assert (=> b!4785927 m!5764972))

(assert (=> b!4785600 d!1530883))

(declare-fun d!1530885 () Bool)

(declare-fun lt!1947241 () Bool)

(declare-fun content!9675 (List!54198) (Set tuple2!56606))

(assert (=> d!1530885 (= lt!1947241 (set.member (h!60494 (toList!6797 lm!2473)) (content!9675 (toList!6797 lm!2473))))))

(declare-fun e!2988175 () Bool)

(assert (=> d!1530885 (= lt!1947241 e!2988175)))

(declare-fun res!2032985 () Bool)

(assert (=> d!1530885 (=> (not res!2032985) (not e!2988175))))

(assert (=> d!1530885 (= res!2032985 (is-Cons!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530885 (= (contains!17652 (toList!6797 lm!2473) (h!60494 (toList!6797 lm!2473))) lt!1947241)))

(declare-fun b!4785932 () Bool)

(declare-fun e!2988176 () Bool)

(assert (=> b!4785932 (= e!2988175 e!2988176)))

(declare-fun res!2032984 () Bool)

(assert (=> b!4785932 (=> res!2032984 e!2988176)))

(assert (=> b!4785932 (= res!2032984 (= (h!60494 (toList!6797 lm!2473)) (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785933 () Bool)

(assert (=> b!4785933 (= e!2988176 (contains!17652 (t!361648 (toList!6797 lm!2473)) (h!60494 (toList!6797 lm!2473))))))

(assert (= (and d!1530885 res!2032985) b!4785932))

(assert (= (and b!4785932 (not res!2032984)) b!4785933))

(declare-fun m!5764974 () Bool)

(assert (=> d!1530885 m!5764974))

(declare-fun m!5764976 () Bool)

(assert (=> d!1530885 m!5764976))

(declare-fun m!5764978 () Bool)

(assert (=> b!4785933 m!5764978))

(assert (=> b!4785543 d!1530885))

(declare-fun d!1530887 () Bool)

(assert (=> d!1530887 (dynLambda!22031 lambda!229137 (h!60494 (toList!6797 lm!2473)))))

(assert (=> d!1530887 true))

(declare-fun _$7!2365 () Unit!139478)

(assert (=> d!1530887 (= (choose!34387 (toList!6797 lm!2473) lambda!229137 (h!60494 (toList!6797 lm!2473))) _$7!2365)))

(declare-fun b_lambda!186143 () Bool)

(assert (=> (not b_lambda!186143) (not d!1530887)))

(declare-fun bs!1153479 () Bool)

(assert (= bs!1153479 d!1530887))

(assert (=> bs!1153479 m!5764576))

(assert (=> d!1530713 d!1530887))

(declare-fun d!1530889 () Bool)

(declare-fun res!2032986 () Bool)

(declare-fun e!2988177 () Bool)

(assert (=> d!1530889 (=> res!2032986 e!2988177)))

(assert (=> d!1530889 (= res!2032986 (is-Nil!54074 (toList!6797 lm!2473)))))

(assert (=> d!1530889 (= (forall!12159 (toList!6797 lm!2473) lambda!229137) e!2988177)))

(declare-fun b!4785934 () Bool)

(declare-fun e!2988178 () Bool)

(assert (=> b!4785934 (= e!2988177 e!2988178)))

(declare-fun res!2032987 () Bool)

(assert (=> b!4785934 (=> (not res!2032987) (not e!2988178))))

(assert (=> b!4785934 (= res!2032987 (dynLambda!22031 lambda!229137 (h!60494 (toList!6797 lm!2473))))))

(declare-fun b!4785935 () Bool)

(assert (=> b!4785935 (= e!2988178 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229137))))

(assert (= (and d!1530889 (not res!2032986)) b!4785934))

(assert (= (and b!4785934 res!2032987) b!4785935))

(declare-fun b_lambda!186145 () Bool)

(assert (=> (not b_lambda!186145) (not b!4785934)))

(assert (=> b!4785934 m!5764576))

(declare-fun m!5764980 () Bool)

(assert (=> b!4785935 m!5764980))

(assert (=> d!1530713 d!1530889))

(declare-fun lt!1947242 () Bool)

(declare-fun d!1530891 () Bool)

(assert (=> d!1530891 (= lt!1947242 (set.member (get!18409 lt!1947143) (content!9672 (apply!12914 lm!2473 lt!1947068))))))

(declare-fun e!2988179 () Bool)

(assert (=> d!1530891 (= lt!1947242 e!2988179)))

(declare-fun res!2032989 () Bool)

(assert (=> d!1530891 (=> (not res!2032989) (not e!2988179))))

(assert (=> d!1530891 (= res!2032989 (is-Cons!54073 (apply!12914 lm!2473 lt!1947068)))))

(assert (=> d!1530891 (= (contains!17648 (apply!12914 lm!2473 lt!1947068) (get!18409 lt!1947143)) lt!1947242)))

(declare-fun b!4785936 () Bool)

(declare-fun e!2988180 () Bool)

(assert (=> b!4785936 (= e!2988179 e!2988180)))

(declare-fun res!2032988 () Bool)

(assert (=> b!4785936 (=> res!2032988 e!2988180)))

(assert (=> b!4785936 (= res!2032988 (= (h!60493 (apply!12914 lm!2473 lt!1947068)) (get!18409 lt!1947143)))))

(declare-fun b!4785937 () Bool)

(assert (=> b!4785937 (= e!2988180 (contains!17648 (t!361647 (apply!12914 lm!2473 lt!1947068)) (get!18409 lt!1947143)))))

(assert (= (and d!1530891 res!2032989) b!4785936))

(assert (= (and b!4785936 (not res!2032988)) b!4785937))

(assert (=> d!1530891 m!5764496))

(declare-fun m!5764982 () Bool)

(assert (=> d!1530891 m!5764982))

(assert (=> d!1530891 m!5764646))

(declare-fun m!5764984 () Bool)

(assert (=> d!1530891 m!5764984))

(assert (=> b!4785937 m!5764646))

(declare-fun m!5764986 () Bool)

(assert (=> b!4785937 m!5764986))

(assert (=> b!4785632 d!1530891))

(assert (=> b!4785632 d!1530863))

(declare-fun bs!1153482 () Bool)

(declare-fun b!4785958 () Bool)

(assert (= bs!1153482 (and b!4785958 b!4785485)))

(declare-fun lambda!229221 () Int)

(assert (=> bs!1153482 (not (= lambda!229221 lambda!229138))))

(declare-fun bs!1153483 () Bool)

(assert (= bs!1153483 (and b!4785958 d!1530873)))

(assert (=> bs!1153483 (not (= lambda!229221 lambda!229192))))

(assert (=> b!4785958 true))

(declare-fun bs!1153484 () Bool)

(declare-fun b!4785956 () Bool)

(assert (= bs!1153484 (and b!4785956 b!4785485)))

(declare-fun lambda!229222 () Int)

(assert (=> bs!1153484 (not (= lambda!229222 lambda!229138))))

(declare-fun bs!1153485 () Bool)

(assert (= bs!1153485 (and b!4785956 d!1530873)))

(assert (=> bs!1153485 (not (= lambda!229222 lambda!229192))))

(declare-fun bs!1153486 () Bool)

(assert (= bs!1153486 (and b!4785956 b!4785958)))

(assert (=> bs!1153486 (= lambda!229222 lambda!229221)))

(assert (=> b!4785956 true))

(declare-fun lambda!229223 () Int)

(assert (=> bs!1153484 (not (= lambda!229223 lambda!229138))))

(assert (=> bs!1153485 (not (= lambda!229223 lambda!229192))))

(declare-fun lt!1947297 () ListMap!6269)

(assert (=> bs!1153486 (= (= lt!1947297 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) (= lambda!229223 lambda!229221))))

(assert (=> b!4785956 (= (= lt!1947297 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) (= lambda!229223 lambda!229222))))

(assert (=> b!4785956 true))

(declare-fun bs!1153487 () Bool)

(declare-fun d!1530893 () Bool)

(assert (= bs!1153487 (and d!1530893 b!4785956)))

(declare-fun lt!1947304 () ListMap!6269)

(declare-fun lambda!229224 () Int)

(assert (=> bs!1153487 (= (= lt!1947304 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) (= lambda!229224 lambda!229222))))

(declare-fun bs!1153488 () Bool)

(assert (= bs!1153488 (and d!1530893 b!4785485)))

(assert (=> bs!1153488 (not (= lambda!229224 lambda!229138))))

(declare-fun bs!1153489 () Bool)

(assert (= bs!1153489 (and d!1530893 b!4785958)))

(assert (=> bs!1153489 (= (= lt!1947304 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) (= lambda!229224 lambda!229221))))

(declare-fun bs!1153490 () Bool)

(assert (= bs!1153490 (and d!1530893 d!1530873)))

(assert (=> bs!1153490 (not (= lambda!229224 lambda!229192))))

(assert (=> bs!1153487 (= (= lt!1947304 lt!1947297) (= lambda!229224 lambda!229223))))

(assert (=> d!1530893 true))

(declare-fun e!2988193 () Bool)

(assert (=> d!1530893 e!2988193))

(declare-fun res!2033003 () Bool)

(assert (=> d!1530893 (=> (not res!2033003) (not e!2988193))))

(assert (=> d!1530893 (= res!2033003 (forall!12160 (_2!31597 (h!60494 (toList!6797 lm!2473))) lambda!229224))))

(declare-fun e!2988195 () ListMap!6269)

(assert (=> d!1530893 (= lt!1947304 e!2988195)))

(declare-fun c!815825 () Bool)

(assert (=> d!1530893 (= c!815825 (is-Nil!54073 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(assert (=> d!1530893 (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473))))))

(assert (=> d!1530893 (= (addToMapMapFromBucket!1675 (_2!31597 (h!60494 (toList!6797 lm!2473))) (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) lt!1947304)))

(declare-fun b!4785955 () Bool)

(declare-fun e!2988194 () Bool)

(assert (=> b!4785955 (= e!2988194 (forall!12160 (toList!6798 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) lambda!229223))))

(assert (=> b!4785956 (= e!2988195 lt!1947297)))

(declare-fun lt!1947291 () ListMap!6269)

(declare-fun +!2472 (ListMap!6269 tuple2!56604) ListMap!6269)

(assert (=> b!4785956 (= lt!1947291 (+!2472 (extractMap!2386 (t!361648 (toList!6797 lm!2473))) (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(assert (=> b!4785956 (= lt!1947297 (addToMapMapFromBucket!1675 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (+!2472 (extractMap!2386 (t!361648 (toList!6797 lm!2473))) (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))))

(declare-fun lt!1947288 () Unit!139478)

(declare-fun call!334846 () Unit!139478)

(assert (=> b!4785956 (= lt!1947288 call!334846)))

(assert (=> b!4785956 (forall!12160 (toList!6798 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) lambda!229222)))

(declare-fun lt!1947292 () Unit!139478)

(assert (=> b!4785956 (= lt!1947292 lt!1947288)))

(assert (=> b!4785956 (forall!12160 (toList!6798 lt!1947291) lambda!229223)))

(declare-fun lt!1947290 () Unit!139478)

(declare-fun Unit!139493 () Unit!139478)

(assert (=> b!4785956 (= lt!1947290 Unit!139493)))

(assert (=> b!4785956 (forall!12160 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) lambda!229223)))

(declare-fun lt!1947302 () Unit!139478)

(declare-fun Unit!139494 () Unit!139478)

(assert (=> b!4785956 (= lt!1947302 Unit!139494)))

(declare-fun lt!1947296 () Unit!139478)

(declare-fun Unit!139495 () Unit!139478)

(assert (=> b!4785956 (= lt!1947296 Unit!139495)))

(declare-fun lt!1947286 () Unit!139478)

(declare-fun forallContained!4100 (List!54197 Int tuple2!56604) Unit!139478)

(assert (=> b!4785956 (= lt!1947286 (forallContained!4100 (toList!6798 lt!1947291) lambda!229223 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(assert (=> b!4785956 (contains!17647 lt!1947291 (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(declare-fun lt!1947298 () Unit!139478)

(declare-fun Unit!139496 () Unit!139478)

(assert (=> b!4785956 (= lt!1947298 Unit!139496)))

(assert (=> b!4785956 (contains!17647 lt!1947297 (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(declare-fun lt!1947293 () Unit!139478)

(declare-fun Unit!139497 () Unit!139478)

(assert (=> b!4785956 (= lt!1947293 Unit!139497)))

(assert (=> b!4785956 (forall!12160 (_2!31597 (h!60494 (toList!6797 lm!2473))) lambda!229223)))

(declare-fun lt!1947295 () Unit!139478)

(declare-fun Unit!139498 () Unit!139478)

(assert (=> b!4785956 (= lt!1947295 Unit!139498)))

(declare-fun call!334845 () Bool)

(assert (=> b!4785956 call!334845))

(declare-fun lt!1947287 () Unit!139478)

(declare-fun Unit!139499 () Unit!139478)

(assert (=> b!4785956 (= lt!1947287 Unit!139499)))

(declare-fun lt!1947303 () Unit!139478)

(declare-fun Unit!139500 () Unit!139478)

(assert (=> b!4785956 (= lt!1947303 Unit!139500)))

(declare-fun lt!1947300 () Unit!139478)

(declare-fun addForallContainsKeyThenBeforeAdding!927 (ListMap!6269 ListMap!6269 K!15637 V!15883) Unit!139478)

(assert (=> b!4785956 (= lt!1947300 (addForallContainsKeyThenBeforeAdding!927 (extractMap!2386 (t!361648 (toList!6797 lm!2473))) lt!1947297 (_1!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473))))) (_2!31596 (h!60493 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))))

(assert (=> b!4785956 (forall!12160 (toList!6798 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) lambda!229223)))

(declare-fun lt!1947299 () Unit!139478)

(assert (=> b!4785956 (= lt!1947299 lt!1947300)))

(declare-fun call!334847 () Bool)

(assert (=> b!4785956 call!334847))

(declare-fun lt!1947306 () Unit!139478)

(declare-fun Unit!139501 () Unit!139478)

(assert (=> b!4785956 (= lt!1947306 Unit!139501)))

(declare-fun res!2033002 () Bool)

(assert (=> b!4785956 (= res!2033002 (forall!12160 (_2!31597 (h!60494 (toList!6797 lm!2473))) lambda!229223))))

(assert (=> b!4785956 (=> (not res!2033002) (not e!2988194))))

(assert (=> b!4785956 e!2988194))

(declare-fun lt!1947305 () Unit!139478)

(declare-fun Unit!139502 () Unit!139478)

(assert (=> b!4785956 (= lt!1947305 Unit!139502)))

(declare-fun b!4785957 () Bool)

(declare-fun res!2033001 () Bool)

(assert (=> b!4785957 (=> (not res!2033001) (not e!2988193))))

(assert (=> b!4785957 (= res!2033001 (forall!12160 (toList!6798 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) lambda!229224))))

(declare-fun bm!334840 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!928 (ListMap!6269) Unit!139478)

(assert (=> bm!334840 (= call!334846 (lemmaContainsAllItsOwnKeys!928 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))))))

(assert (=> b!4785958 (= e!2988195 (extractMap!2386 (t!361648 (toList!6797 lm!2473))))))

(declare-fun lt!1947301 () Unit!139478)

(assert (=> b!4785958 (= lt!1947301 call!334846)))

(assert (=> b!4785958 call!334847))

(declare-fun lt!1947289 () Unit!139478)

(assert (=> b!4785958 (= lt!1947289 lt!1947301)))

(assert (=> b!4785958 call!334845))

(declare-fun lt!1947294 () Unit!139478)

(declare-fun Unit!139503 () Unit!139478)

(assert (=> b!4785958 (= lt!1947294 Unit!139503)))

(declare-fun bm!334841 () Bool)

(assert (=> bm!334841 (= call!334847 (forall!12160 (toList!6798 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) (ite c!815825 lambda!229221 lambda!229223)))))

(declare-fun bm!334842 () Bool)

(assert (=> bm!334842 (= call!334845 (forall!12160 (ite c!815825 (toList!6798 (extractMap!2386 (t!361648 (toList!6797 lm!2473)))) (toList!6798 lt!1947291)) (ite c!815825 lambda!229221 lambda!229223)))))

(declare-fun b!4785959 () Bool)

(assert (=> b!4785959 (= e!2988193 (invariantList!1710 (toList!6798 lt!1947304)))))

(assert (= (and d!1530893 c!815825) b!4785958))

(assert (= (and d!1530893 (not c!815825)) b!4785956))

(assert (= (and b!4785956 res!2033002) b!4785955))

(assert (= (or b!4785958 b!4785956) bm!334842))

(assert (= (or b!4785958 b!4785956) bm!334841))

(assert (= (or b!4785958 b!4785956) bm!334840))

(assert (= (and d!1530893 res!2033003) b!4785957))

(assert (= (and b!4785957 res!2033001) b!4785959))

(declare-fun m!5765004 () Bool)

(assert (=> b!4785956 m!5765004))

(declare-fun m!5765006 () Bool)

(assert (=> b!4785956 m!5765006))

(assert (=> b!4785956 m!5764608))

(declare-fun m!5765008 () Bool)

(assert (=> b!4785956 m!5765008))

(declare-fun m!5765010 () Bool)

(assert (=> b!4785956 m!5765010))

(assert (=> b!4785956 m!5764608))

(declare-fun m!5765012 () Bool)

(assert (=> b!4785956 m!5765012))

(declare-fun m!5765014 () Bool)

(assert (=> b!4785956 m!5765014))

(declare-fun m!5765016 () Bool)

(assert (=> b!4785956 m!5765016))

(declare-fun m!5765018 () Bool)

(assert (=> b!4785956 m!5765018))

(declare-fun m!5765020 () Bool)

(assert (=> b!4785956 m!5765020))

(declare-fun m!5765022 () Bool)

(assert (=> b!4785956 m!5765022))

(assert (=> b!4785956 m!5765020))

(assert (=> b!4785956 m!5765008))

(declare-fun m!5765024 () Bool)

(assert (=> b!4785956 m!5765024))

(declare-fun m!5765026 () Bool)

(assert (=> bm!334842 m!5765026))

(assert (=> bm!334840 m!5764608))

(declare-fun m!5765028 () Bool)

(assert (=> bm!334840 m!5765028))

(declare-fun m!5765030 () Bool)

(assert (=> d!1530893 m!5765030))

(assert (=> d!1530893 m!5764708))

(declare-fun m!5765032 () Bool)

(assert (=> b!4785959 m!5765032))

(declare-fun m!5765034 () Bool)

(assert (=> bm!334841 m!5765034))

(assert (=> b!4785955 m!5765022))

(declare-fun m!5765036 () Bool)

(assert (=> b!4785957 m!5765036))

(assert (=> b!4785575 d!1530893))

(declare-fun bs!1153491 () Bool)

(declare-fun d!1530909 () Bool)

(assert (= bs!1153491 (and d!1530909 d!1530741)))

(declare-fun lambda!229225 () Int)

(assert (=> bs!1153491 (= lambda!229225 lambda!229158)))

(declare-fun bs!1153492 () Bool)

(assert (= bs!1153492 (and d!1530909 b!4785485)))

(assert (=> bs!1153492 (not (= lambda!229225 lambda!229137))))

(declare-fun bs!1153493 () Bool)

(assert (= bs!1153493 (and d!1530909 start!491980)))

(assert (=> bs!1153493 (= lambda!229225 lambda!229136)))

(declare-fun bs!1153494 () Bool)

(assert (= bs!1153494 (and d!1530909 d!1530719)))

(assert (=> bs!1153494 (= lambda!229225 lambda!229150)))

(declare-fun bs!1153495 () Bool)

(assert (= bs!1153495 (and d!1530909 d!1530739)))

(assert (=> bs!1153495 (= lambda!229225 lambda!229153)))

(declare-fun bs!1153496 () Bool)

(assert (= bs!1153496 (and d!1530909 d!1530749)))

(assert (=> bs!1153496 (not (= lambda!229225 lambda!229165))))

(declare-fun lt!1947307 () ListMap!6269)

(assert (=> d!1530909 (invariantList!1710 (toList!6798 lt!1947307))))

(declare-fun e!2988196 () ListMap!6269)

(assert (=> d!1530909 (= lt!1947307 e!2988196)))

(declare-fun c!815826 () Bool)

(assert (=> d!1530909 (= c!815826 (is-Cons!54074 (t!361648 (toList!6797 lm!2473))))))

(assert (=> d!1530909 (forall!12159 (t!361648 (toList!6797 lm!2473)) lambda!229225)))

(assert (=> d!1530909 (= (extractMap!2386 (t!361648 (toList!6797 lm!2473))) lt!1947307)))

(declare-fun b!4785962 () Bool)

(assert (=> b!4785962 (= e!2988196 (addToMapMapFromBucket!1675 (_2!31597 (h!60494 (t!361648 (toList!6797 lm!2473)))) (extractMap!2386 (t!361648 (t!361648 (toList!6797 lm!2473))))))))

(declare-fun b!4785963 () Bool)

(assert (=> b!4785963 (= e!2988196 (ListMap!6270 Nil!54073))))

(assert (= (and d!1530909 c!815826) b!4785962))

(assert (= (and d!1530909 (not c!815826)) b!4785963))

(declare-fun m!5765038 () Bool)

(assert (=> d!1530909 m!5765038))

(declare-fun m!5765040 () Bool)

(assert (=> d!1530909 m!5765040))

(declare-fun m!5765042 () Bool)

(assert (=> b!4785962 m!5765042))

(assert (=> b!4785962 m!5765042))

(declare-fun m!5765044 () Bool)

(assert (=> b!4785962 m!5765044))

(assert (=> b!4785575 d!1530909))

(declare-fun d!1530911 () Bool)

(declare-fun lt!1947308 () Bool)

(assert (=> d!1530911 (= lt!1947308 (set.member (tuple2!56605 key!5896 value!3111) (content!9672 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))))

(declare-fun e!2988197 () Bool)

(assert (=> d!1530911 (= lt!1947308 e!2988197)))

(declare-fun res!2033005 () Bool)

(assert (=> d!1530911 (=> (not res!2033005) (not e!2988197))))

(assert (=> d!1530911 (= res!2033005 (is-Cons!54073 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))))))

(assert (=> d!1530911 (= (contains!17648 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))) (tuple2!56605 key!5896 value!3111)) lt!1947308)))

(declare-fun b!4785964 () Bool)

(declare-fun e!2988198 () Bool)

(assert (=> b!4785964 (= e!2988197 e!2988198)))

(declare-fun res!2033004 () Bool)

(assert (=> b!4785964 (=> res!2033004 e!2988198)))

(assert (=> b!4785964 (= res!2033004 (= (h!60493 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))) (tuple2!56605 key!5896 value!3111)))))

(declare-fun b!4785965 () Bool)

(assert (=> b!4785965 (= e!2988198 (contains!17648 (t!361647 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))) (tuple2!56605 key!5896 value!3111)))))

(assert (= (and d!1530911 res!2033005) b!4785964))

(assert (= (and b!4785964 (not res!2033004)) b!4785965))

(assert (=> d!1530911 m!5764844))

(declare-fun m!5765046 () Bool)

(assert (=> d!1530911 m!5765046))

(declare-fun m!5765048 () Bool)

(assert (=> b!4785965 m!5765048))

(assert (=> b!4785534 d!1530911))

(declare-fun b!4785970 () Bool)

(declare-fun tp!1357669 () Bool)

(declare-fun e!2988201 () Bool)

(assert (=> b!4785970 (= e!2988201 (and tp_is_empty!33317 tp_is_empty!33319 tp!1357669))))

(assert (=> b!4785680 (= tp!1357659 e!2988201)))

(assert (= (and b!4785680 (is-Cons!54073 (_2!31597 (h!60494 (toList!6797 lm!2473))))) b!4785970))

(declare-fun b!4785971 () Bool)

(declare-fun e!2988202 () Bool)

(declare-fun tp!1357670 () Bool)

(declare-fun tp!1357671 () Bool)

(assert (=> b!4785971 (= e!2988202 (and tp!1357670 tp!1357671))))

(assert (=> b!4785680 (= tp!1357660 e!2988202)))

(assert (= (and b!4785680 (is-Cons!54074 (t!361648 (toList!6797 lm!2473)))) b!4785971))

(declare-fun b_lambda!186151 () Bool)

(assert (= b_lambda!186137 (or d!1530741 b_lambda!186151)))

(declare-fun bs!1153497 () Bool)

(declare-fun d!1530913 () Bool)

(assert (= bs!1153497 (and d!1530913 d!1530741)))

(assert (=> bs!1153497 (= (dynLambda!22031 lambda!229158 (h!60494 (toList!6797 lm!2473))) (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(assert (=> bs!1153497 m!5764708))

(assert (=> b!4785870 d!1530913))

(declare-fun b_lambda!186153 () Bool)

(assert (= b_lambda!186143 (or b!4785485 b_lambda!186153)))

(assert (=> d!1530887 d!1530755))

(declare-fun b_lambda!186155 () Bool)

(assert (= b_lambda!186141 (or start!491980 b_lambda!186155)))

(declare-fun bs!1153498 () Bool)

(declare-fun d!1530915 () Bool)

(assert (= bs!1153498 (and d!1530915 start!491980)))

(assert (=> bs!1153498 (= (dynLambda!22031 lambda!229136 (h!60494 (t!361648 (toList!6797 lm!2473)))) (noDuplicateKeys!2307 (_2!31597 (h!60494 (t!361648 (toList!6797 lm!2473))))))))

(declare-fun m!5765050 () Bool)

(assert (=> bs!1153498 m!5765050))

(assert (=> b!4785926 d!1530915))

(declare-fun b_lambda!186157 () Bool)

(assert (= b_lambda!186145 (or b!4785485 b_lambda!186157)))

(assert (=> b!4785934 d!1530755))

(declare-fun b_lambda!186159 () Bool)

(assert (= b_lambda!186135 (or d!1530739 b_lambda!186159)))

(declare-fun bs!1153499 () Bool)

(declare-fun d!1530917 () Bool)

(assert (= bs!1153499 (and d!1530917 d!1530739)))

(assert (=> bs!1153499 (= (dynLambda!22031 lambda!229153 (h!60494 (toList!6797 lm!2473))) (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(assert (=> bs!1153499 m!5764708))

(assert (=> b!4785810 d!1530917))

(declare-fun b_lambda!186161 () Bool)

(assert (= b_lambda!186133 (or b!4785485 b_lambda!186161)))

(declare-fun bs!1153500 () Bool)

(declare-fun d!1530919 () Bool)

(assert (= bs!1153500 (and d!1530919 b!4785485)))

(assert (=> bs!1153500 (= (dynLambda!22030 lambda!229138 (h!60493 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473)))))) (= (hash!4876 hashF!1559 (_1!31596 (h!60493 (t!361647 (_2!31597 (h!60494 (toList!6797 lm!2473))))))) (_1!31597 (h!60494 (toList!6797 lm!2473)))))))

(declare-fun m!5765052 () Bool)

(assert (=> bs!1153500 m!5765052))

(assert (=> b!4785800 d!1530919))

(declare-fun b_lambda!186163 () Bool)

(assert (= b_lambda!186139 (or d!1530749 b_lambda!186163)))

(declare-fun bs!1153501 () Bool)

(declare-fun d!1530921 () Bool)

(assert (= bs!1153501 (and d!1530921 d!1530749)))

(assert (=> bs!1153501 (= (dynLambda!22031 lambda!229165 (h!60494 (toList!6797 lm!2473))) (allKeysSameHash!1945 (_2!31597 (h!60494 (toList!6797 lm!2473))) (_1!31597 (h!60494 (toList!6797 lm!2473))) hashF!1559))))

(assert (=> bs!1153501 m!5764706))

(assert (=> b!4785903 d!1530921))

(declare-fun b_lambda!186165 () Bool)

(assert (= b_lambda!186131 (or d!1530719 b_lambda!186165)))

(declare-fun bs!1153502 () Bool)

(declare-fun d!1530923 () Bool)

(assert (= bs!1153502 (and d!1530923 d!1530719)))

(assert (=> bs!1153502 (= (dynLambda!22031 lambda!229150 (h!60494 (toList!6797 lm!2473))) (noDuplicateKeys!2307 (_2!31597 (h!60494 (toList!6797 lm!2473)))))))

(assert (=> bs!1153502 m!5764708))

(assert (=> b!4785790 d!1530923))

(push 1)

(assert (not b!4785772))

(assert (not b_lambda!186151))

(assert (not d!1530799))

(assert (not b!4785864))

(assert tp_is_empty!33319)

(assert (not b!4785894))

(assert (not b!4785888))

(assert (not b!4785817))

(assert (not b_lambda!186165))

(assert (not b!4785904))

(assert (not b!4785871))

(assert (not b_lambda!186153))

(assert (not b!4785924))

(assert (not b!4785896))

(assert (not d!1530867))

(assert (not bs!1153502))

(assert (not b!4785842))

(assert (not bm!334841))

(assert (not b!4785959))

(assert (not b!4785916))

(assert (not b!4785850))

(assert (not b_lambda!186161))

(assert (not b!4785971))

(assert (not b!4785901))

(assert (not b!4785893))

(assert (not b_lambda!186113))

(assert (not d!1530837))

(assert (not d!1530861))

(assert (not b!4785925))

(assert (not bs!1153500))

(assert (not d!1530807))

(assert (not bm!334842))

(assert (not b!4785874))

(assert (not b_lambda!186115))

(assert (not b_lambda!186163))

(assert (not b!4785862))

(assert (not b_lambda!186157))

(assert (not d!1530881))

(assert (not d!1530835))

(assert (not d!1530891))

(assert (not b!4785838))

(assert (not b!4785819))

(assert (not b_lambda!186117))

(assert (not b!4785921))

(assert (not bm!334840))

(assert (not b!4785799))

(assert (not b!4785791))

(assert (not d!1530853))

(assert (not b!4785779))

(assert (not b_lambda!186155))

(assert (not b!4785914))

(assert (not b!4785956))

(assert (not d!1530893))

(assert (not b!4785814))

(assert (not b!4785910))

(assert (not d!1530819))

(assert (not b!4785816))

(assert (not b!4785913))

(assert (not b!4785797))

(assert (not bs!1153499))

(assert (not b!4785919))

(assert (not b!4785803))

(assert (not b!4785849))

(assert (not b!4785891))

(assert (not b_lambda!186159))

(assert (not b!4785902))

(assert (not b!4785811))

(assert (not d!1530797))

(assert (not b!4785789))

(assert (not b!4785780))

(assert (not bs!1153498))

(assert (not d!1530841))

(assert (not b!4785955))

(assert (not b!4785840))

(assert (not d!1530831))

(assert (not b!4785869))

(assert (not d!1530849))

(assert (not d!1530827))

(assert (not b!4785957))

(assert (not b!4785970))

(assert (not d!1530811))

(assert (not b!4785889))

(assert (not b!4785866))

(assert (not d!1530909))

(assert (not d!1530795))

(assert (not d!1530801))

(assert (not b!4785933))

(assert (not b!4785801))

(assert (not d!1530825))

(assert (not d!1530873))

(assert (not d!1530851))

(assert tp_is_empty!33317)

(assert (not d!1530911))

(assert (not b!4785937))

(assert (not b!4785918))

(assert (not b!4785927))

(assert (not d!1530885))

(assert (not bs!1153501))

(assert (not b!4785935))

(assert (not b!4785839))

(assert (not b!4785781))

(assert (not bs!1153497))

(assert (not b!4785841))

(assert (not b!4785962))

(assert (not d!1530859))

(assert (not d!1530871))

(assert (not b!4785911))

(assert (not b!4785965))

(assert (not b!4785885))

(assert (not b!4785812))

(assert (not b!4785809))

(assert (not d!1530843))

(assert (not b!4785851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


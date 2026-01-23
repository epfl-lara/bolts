; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489528 () Bool)

(assert start!489528)

(declare-fun b!4775927 () Bool)

(declare-fun res!2026776 () Bool)

(declare-fun e!2981486 () Bool)

(assert (=> b!4775927 (=> res!2026776 e!2981486)))

(declare-datatypes ((K!15427 0))(
  ( (K!15428 (val!20647 Int)) )
))
(declare-datatypes ((V!15673 0))(
  ( (V!15674 (val!20648 Int)) )
))
(declare-datatypes ((tuple2!56268 0))(
  ( (tuple2!56269 (_1!31428 K!15427) (_2!31428 V!15673)) )
))
(declare-datatypes ((List!53997 0))(
  ( (Nil!53873) (Cons!53873 (h!60287 tuple2!56268) (t!361447 List!53997)) )
))
(declare-datatypes ((tuple2!56270 0))(
  ( (tuple2!56271 (_1!31429 (_ BitVec 64)) (_2!31429 List!53997)) )
))
(declare-datatypes ((List!53998 0))(
  ( (Nil!53874) (Cons!53874 (h!60288 tuple2!56270) (t!361448 List!53998)) )
))
(declare-datatypes ((ListLongMap!5051 0))(
  ( (ListLongMap!5052 (toList!6633 List!53998)) )
))
(declare-fun lm!2709 () ListLongMap!5051)

(declare-fun lt!1939077 () (_ BitVec 64))

(assert (=> b!4775927 (= res!2026776 (or (and (is-Cons!53874 (toList!6633 lm!2709)) (= (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939077)) (not (is-Cons!53874 (toList!6633 lm!2709)))))))

(declare-fun b!4775928 () Bool)

(declare-fun e!2981485 () Bool)

(declare-fun tp!1357119 () Bool)

(assert (=> b!4775928 (= e!2981485 tp!1357119)))

(declare-fun b!4775929 () Bool)

(declare-fun res!2026779 () Bool)

(declare-fun e!2981487 () Bool)

(assert (=> b!4775929 (=> (not res!2026779) (not e!2981487))))

(declare-datatypes ((Hashable!6775 0))(
  ( (HashableExt!6774 (__x!32798 Int)) )
))
(declare-fun hashF!1687 () Hashable!6775)

(declare-fun allKeysSameHashInMap!2180 (ListLongMap!5051 Hashable!6775) Bool)

(assert (=> b!4775929 (= res!2026779 (allKeysSameHashInMap!2180 lm!2709 hashF!1687))))

(declare-fun res!2026780 () Bool)

(assert (=> start!489528 (=> (not res!2026780) (not e!2981487))))

(declare-fun lambda!226736 () Int)

(declare-fun forall!12043 (List!53998 Int) Bool)

(assert (=> start!489528 (= res!2026780 (forall!12043 (toList!6633 lm!2709) lambda!226736))))

(assert (=> start!489528 e!2981487))

(declare-fun inv!69454 (ListLongMap!5051) Bool)

(assert (=> start!489528 (and (inv!69454 lm!2709) e!2981485)))

(assert (=> start!489528 true))

(declare-fun tp_is_empty!33029 () Bool)

(assert (=> start!489528 tp_is_empty!33029))

(declare-fun tp_is_empty!33031 () Bool)

(assert (=> start!489528 tp_is_empty!33031))

(declare-fun b!4775930 () Bool)

(declare-fun e!2981488 () Bool)

(declare-fun isEmpty!29317 (ListLongMap!5051) Bool)

(assert (=> b!4775930 (= e!2981488 (not (isEmpty!29317 lm!2709)))))

(declare-fun key!6641 () K!15427)

(declare-fun containsKeyBiggerList!431 (List!53998 K!15427) Bool)

(declare-fun tail!9164 (List!53998) List!53998)

(assert (=> b!4775930 (containsKeyBiggerList!431 (tail!9164 (toList!6633 lm!2709)) key!6641)))

(declare-datatypes ((Unit!138868 0))(
  ( (Unit!138869) )
))
(declare-fun lt!1939072 () Unit!138868)

(declare-fun lemmaInBiggerListButNotHeadThenTail!1 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> b!4775930 (= lt!1939072 (lemmaInBiggerListButNotHeadThenTail!1 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775931 () Bool)

(assert (=> b!4775931 (= e!2981486 e!2981488)))

(declare-fun res!2026778 () Bool)

(assert (=> b!4775931 (=> res!2026778 e!2981488)))

(declare-fun containsKey!3746 (List!53997 K!15427) Bool)

(assert (=> b!4775931 (= res!2026778 (containsKey!3746 (_2!31429 (h!60288 (toList!6633 lm!2709))) key!6641))))

(declare-fun apply!12838 (ListLongMap!5051 (_ BitVec 64)) List!53997)

(assert (=> b!4775931 (not (containsKey!3746 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))) key!6641))))

(declare-fun lt!1939074 () Unit!138868)

(declare-fun lemmaNotSameHashThenCannotContainKey!167 (ListLongMap!5051 K!15427 (_ BitVec 64) Hashable!6775) Unit!138868)

(assert (=> b!4775931 (= lt!1939074 (lemmaNotSameHashThenCannotContainKey!167 lm!2709 key!6641 (_1!31429 (h!60288 (toList!6633 lm!2709))) hashF!1687))))

(declare-fun b!4775932 () Bool)

(assert (=> b!4775932 (= e!2981487 (not e!2981486))))

(declare-fun res!2026777 () Bool)

(assert (=> b!4775932 (=> res!2026777 e!2981486)))

(declare-datatypes ((Option!12864 0))(
  ( (None!12863) (Some!12863 (v!48024 tuple2!56268)) )
))
(declare-fun lt!1939078 () Option!12864)

(declare-fun v!11584 () V!15673)

(declare-fun get!18280 (Option!12864) tuple2!56268)

(assert (=> b!4775932 (= res!2026777 (not (= (_2!31428 (get!18280 lt!1939078)) v!11584)))))

(declare-fun isDefined!10008 (Option!12864) Bool)

(assert (=> b!4775932 (isDefined!10008 lt!1939078)))

(declare-fun lt!1939079 () List!53997)

(declare-fun getPair!763 (List!53997 K!15427) Option!12864)

(assert (=> b!4775932 (= lt!1939078 (getPair!763 lt!1939079 key!6641))))

(declare-fun lt!1939068 () tuple2!56270)

(declare-fun lt!1939071 () Unit!138868)

(declare-fun forallContained!4000 (List!53998 Int tuple2!56270) Unit!138868)

(assert (=> b!4775932 (= lt!1939071 (forallContained!4000 (toList!6633 lm!2709) lambda!226736 lt!1939068))))

(declare-fun lt!1939075 () Unit!138868)

(declare-fun lemmaInGenMapThenGetPairDefined!537 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> b!4775932 (= lt!1939075 (lemmaInGenMapThenGetPairDefined!537 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1939069 () Unit!138868)

(assert (=> b!4775932 (= lt!1939069 (forallContained!4000 (toList!6633 lm!2709) lambda!226736 lt!1939068))))

(declare-fun contains!17361 (List!53998 tuple2!56270) Bool)

(assert (=> b!4775932 (contains!17361 (toList!6633 lm!2709) lt!1939068)))

(assert (=> b!4775932 (= lt!1939068 (tuple2!56271 lt!1939077 lt!1939079))))

(declare-fun lt!1939073 () Unit!138868)

(declare-fun lemmaGetValueImpliesTupleContained!566 (ListLongMap!5051 (_ BitVec 64) List!53997) Unit!138868)

(assert (=> b!4775932 (= lt!1939073 (lemmaGetValueImpliesTupleContained!566 lm!2709 lt!1939077 lt!1939079))))

(assert (=> b!4775932 (= lt!1939079 (apply!12838 lm!2709 lt!1939077))))

(declare-fun contains!17362 (ListLongMap!5051 (_ BitVec 64)) Bool)

(assert (=> b!4775932 (contains!17362 lm!2709 lt!1939077)))

(declare-fun hash!4747 (Hashable!6775 K!15427) (_ BitVec 64))

(assert (=> b!4775932 (= lt!1939077 (hash!4747 hashF!1687 key!6641))))

(declare-fun lt!1939076 () Unit!138868)

(declare-fun lemmaInGenMapThenLongMapContainsHash!979 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> b!4775932 (= lt!1939076 (lemmaInGenMapThenLongMapContainsHash!979 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6109 0))(
  ( (ListMap!6110 (toList!6634 List!53997)) )
))
(declare-fun contains!17363 (ListMap!6109 K!15427) Bool)

(declare-fun extractMap!2306 (List!53998) ListMap!6109)

(assert (=> b!4775932 (contains!17363 (extractMap!2306 (toList!6633 lm!2709)) key!6641)))

(declare-fun lt!1939070 () Unit!138868)

(declare-fun lemmaListContainsThenExtractedMapContains!627 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> b!4775932 (= lt!1939070 (lemmaListContainsThenExtractedMapContains!627 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775933 () Bool)

(declare-fun res!2026775 () Bool)

(assert (=> b!4775933 (=> (not res!2026775) (not e!2981487))))

(assert (=> b!4775933 (= res!2026775 (containsKeyBiggerList!431 (toList!6633 lm!2709) key!6641))))

(assert (= (and start!489528 res!2026780) b!4775929))

(assert (= (and b!4775929 res!2026779) b!4775933))

(assert (= (and b!4775933 res!2026775) b!4775932))

(assert (= (and b!4775932 (not res!2026777)) b!4775927))

(assert (= (and b!4775927 (not res!2026776)) b!4775931))

(assert (= (and b!4775931 (not res!2026778)) b!4775930))

(assert (= start!489528 b!4775928))

(declare-fun m!5750664 () Bool)

(assert (=> b!4775930 m!5750664))

(declare-fun m!5750666 () Bool)

(assert (=> b!4775930 m!5750666))

(assert (=> b!4775930 m!5750666))

(declare-fun m!5750668 () Bool)

(assert (=> b!4775930 m!5750668))

(declare-fun m!5750670 () Bool)

(assert (=> b!4775930 m!5750670))

(declare-fun m!5750672 () Bool)

(assert (=> b!4775933 m!5750672))

(declare-fun m!5750674 () Bool)

(assert (=> b!4775929 m!5750674))

(declare-fun m!5750676 () Bool)

(assert (=> b!4775932 m!5750676))

(declare-fun m!5750678 () Bool)

(assert (=> b!4775932 m!5750678))

(assert (=> b!4775932 m!5750676))

(declare-fun m!5750680 () Bool)

(assert (=> b!4775932 m!5750680))

(declare-fun m!5750682 () Bool)

(assert (=> b!4775932 m!5750682))

(declare-fun m!5750684 () Bool)

(assert (=> b!4775932 m!5750684))

(declare-fun m!5750686 () Bool)

(assert (=> b!4775932 m!5750686))

(declare-fun m!5750688 () Bool)

(assert (=> b!4775932 m!5750688))

(declare-fun m!5750690 () Bool)

(assert (=> b!4775932 m!5750690))

(declare-fun m!5750692 () Bool)

(assert (=> b!4775932 m!5750692))

(declare-fun m!5750694 () Bool)

(assert (=> b!4775932 m!5750694))

(declare-fun m!5750696 () Bool)

(assert (=> b!4775932 m!5750696))

(declare-fun m!5750698 () Bool)

(assert (=> b!4775932 m!5750698))

(declare-fun m!5750700 () Bool)

(assert (=> b!4775932 m!5750700))

(assert (=> b!4775932 m!5750684))

(declare-fun m!5750702 () Bool)

(assert (=> b!4775932 m!5750702))

(declare-fun m!5750704 () Bool)

(assert (=> start!489528 m!5750704))

(declare-fun m!5750706 () Bool)

(assert (=> start!489528 m!5750706))

(declare-fun m!5750708 () Bool)

(assert (=> b!4775931 m!5750708))

(declare-fun m!5750710 () Bool)

(assert (=> b!4775931 m!5750710))

(assert (=> b!4775931 m!5750710))

(declare-fun m!5750712 () Bool)

(assert (=> b!4775931 m!5750712))

(declare-fun m!5750714 () Bool)

(assert (=> b!4775931 m!5750714))

(push 1)

(assert (not b!4775930))

(assert (not b!4775928))

(assert tp_is_empty!33031)

(assert (not b!4775929))

(assert (not b!4775931))

(assert (not start!489528))

(assert (not b!4775932))

(assert tp_is_empty!33029)

(assert (not b!4775933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1526107 () Bool)

(declare-fun res!2026807 () Bool)

(declare-fun e!2981509 () Bool)

(assert (=> d!1526107 (=> res!2026807 e!2981509)))

(declare-fun e!2981508 () Bool)

(assert (=> d!1526107 (= res!2026807 e!2981508)))

(declare-fun res!2026806 () Bool)

(assert (=> d!1526107 (=> (not res!2026806) (not e!2981508))))

(assert (=> d!1526107 (= res!2026806 (is-Cons!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526107 (= (containsKeyBiggerList!431 (toList!6633 lm!2709) key!6641) e!2981509)))

(declare-fun b!4775961 () Bool)

(assert (=> b!4775961 (= e!2981508 (containsKey!3746 (_2!31429 (h!60288 (toList!6633 lm!2709))) key!6641))))

(declare-fun b!4775962 () Bool)

(declare-fun e!2981507 () Bool)

(assert (=> b!4775962 (= e!2981509 e!2981507)))

(declare-fun res!2026805 () Bool)

(assert (=> b!4775962 (=> (not res!2026805) (not e!2981507))))

(assert (=> b!4775962 (= res!2026805 (is-Cons!53874 (toList!6633 lm!2709)))))

(declare-fun b!4775963 () Bool)

(assert (=> b!4775963 (= e!2981507 (containsKeyBiggerList!431 (t!361448 (toList!6633 lm!2709)) key!6641))))

(assert (= (and d!1526107 res!2026806) b!4775961))

(assert (= (and d!1526107 (not res!2026807)) b!4775962))

(assert (= (and b!4775962 res!2026805) b!4775963))

(assert (=> b!4775961 m!5750708))

(declare-fun m!5750768 () Bool)

(assert (=> b!4775963 m!5750768))

(assert (=> b!4775933 d!1526107))

(declare-fun bs!1150571 () Bool)

(declare-fun d!1526109 () Bool)

(assert (= bs!1150571 (and d!1526109 start!489528)))

(declare-fun lambda!226746 () Int)

(assert (=> bs!1150571 (not (= lambda!226746 lambda!226736))))

(assert (=> d!1526109 true))

(assert (=> d!1526109 (= (allKeysSameHashInMap!2180 lm!2709 hashF!1687) (forall!12043 (toList!6633 lm!2709) lambda!226746))))

(declare-fun bs!1150572 () Bool)

(assert (= bs!1150572 d!1526109))

(declare-fun m!5750770 () Bool)

(assert (=> bs!1150572 m!5750770))

(assert (=> b!4775929 d!1526109))

(declare-fun d!1526111 () Bool)

(declare-fun res!2026812 () Bool)

(declare-fun e!2981514 () Bool)

(assert (=> d!1526111 (=> res!2026812 e!2981514)))

(assert (=> d!1526111 (= res!2026812 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526111 (= (forall!12043 (toList!6633 lm!2709) lambda!226736) e!2981514)))

(declare-fun b!4775970 () Bool)

(declare-fun e!2981515 () Bool)

(assert (=> b!4775970 (= e!2981514 e!2981515)))

(declare-fun res!2026813 () Bool)

(assert (=> b!4775970 (=> (not res!2026813) (not e!2981515))))

(declare-fun dynLambda!21992 (Int tuple2!56270) Bool)

(assert (=> b!4775970 (= res!2026813 (dynLambda!21992 lambda!226736 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4775971 () Bool)

(assert (=> b!4775971 (= e!2981515 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226736))))

(assert (= (and d!1526111 (not res!2026812)) b!4775970))

(assert (= (and b!4775970 res!2026813) b!4775971))

(declare-fun b_lambda!184951 () Bool)

(assert (=> (not b_lambda!184951) (not b!4775970)))

(declare-fun m!5750772 () Bool)

(assert (=> b!4775970 m!5750772))

(declare-fun m!5750774 () Bool)

(assert (=> b!4775971 m!5750774))

(assert (=> start!489528 d!1526111))

(declare-fun d!1526113 () Bool)

(declare-fun isStrictlySorted!832 (List!53998) Bool)

(assert (=> d!1526113 (= (inv!69454 lm!2709) (isStrictlySorted!832 (toList!6633 lm!2709)))))

(declare-fun bs!1150573 () Bool)

(assert (= bs!1150573 d!1526113))

(declare-fun m!5750776 () Bool)

(assert (=> bs!1150573 m!5750776))

(assert (=> start!489528 d!1526113))

(declare-fun d!1526115 () Bool)

(declare-fun isEmpty!29319 (List!53998) Bool)

(assert (=> d!1526115 (= (isEmpty!29317 lm!2709) (isEmpty!29319 (toList!6633 lm!2709)))))

(declare-fun bs!1150574 () Bool)

(assert (= bs!1150574 d!1526115))

(declare-fun m!5750778 () Bool)

(assert (=> bs!1150574 m!5750778))

(assert (=> b!4775930 d!1526115))

(declare-fun d!1526119 () Bool)

(declare-fun res!2026816 () Bool)

(declare-fun e!2981518 () Bool)

(assert (=> d!1526119 (=> res!2026816 e!2981518)))

(declare-fun e!2981517 () Bool)

(assert (=> d!1526119 (= res!2026816 e!2981517)))

(declare-fun res!2026815 () Bool)

(assert (=> d!1526119 (=> (not res!2026815) (not e!2981517))))

(assert (=> d!1526119 (= res!2026815 (is-Cons!53874 (tail!9164 (toList!6633 lm!2709))))))

(assert (=> d!1526119 (= (containsKeyBiggerList!431 (tail!9164 (toList!6633 lm!2709)) key!6641) e!2981518)))

(declare-fun b!4775972 () Bool)

(assert (=> b!4775972 (= e!2981517 (containsKey!3746 (_2!31429 (h!60288 (tail!9164 (toList!6633 lm!2709)))) key!6641))))

(declare-fun b!4775973 () Bool)

(declare-fun e!2981516 () Bool)

(assert (=> b!4775973 (= e!2981518 e!2981516)))

(declare-fun res!2026814 () Bool)

(assert (=> b!4775973 (=> (not res!2026814) (not e!2981516))))

(assert (=> b!4775973 (= res!2026814 (is-Cons!53874 (tail!9164 (toList!6633 lm!2709))))))

(declare-fun b!4775974 () Bool)

(assert (=> b!4775974 (= e!2981516 (containsKeyBiggerList!431 (t!361448 (tail!9164 (toList!6633 lm!2709))) key!6641))))

(assert (= (and d!1526119 res!2026815) b!4775972))

(assert (= (and d!1526119 (not res!2026816)) b!4775973))

(assert (= (and b!4775973 res!2026814) b!4775974))

(declare-fun m!5750780 () Bool)

(assert (=> b!4775972 m!5750780))

(declare-fun m!5750782 () Bool)

(assert (=> b!4775974 m!5750782))

(assert (=> b!4775930 d!1526119))

(declare-fun d!1526121 () Bool)

(assert (=> d!1526121 (= (tail!9164 (toList!6633 lm!2709)) (t!361448 (toList!6633 lm!2709)))))

(assert (=> b!4775930 d!1526121))

(declare-fun bs!1150575 () Bool)

(declare-fun d!1526123 () Bool)

(assert (= bs!1150575 (and d!1526123 start!489528)))

(declare-fun lambda!226749 () Int)

(assert (=> bs!1150575 (= lambda!226749 lambda!226736)))

(declare-fun bs!1150576 () Bool)

(assert (= bs!1150576 (and d!1526123 d!1526109)))

(assert (=> bs!1150576 (not (= lambda!226749 lambda!226746))))

(assert (=> d!1526123 (containsKeyBiggerList!431 (tail!9164 (toList!6633 lm!2709)) key!6641)))

(declare-fun lt!1939118 () Unit!138868)

(declare-fun choose!34133 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> d!1526123 (= lt!1939118 (choose!34133 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526123 (forall!12043 (toList!6633 lm!2709) lambda!226749)))

(assert (=> d!1526123 (= (lemmaInBiggerListButNotHeadThenTail!1 lm!2709 key!6641 hashF!1687) lt!1939118)))

(declare-fun bs!1150577 () Bool)

(assert (= bs!1150577 d!1526123))

(assert (=> bs!1150577 m!5750666))

(assert (=> bs!1150577 m!5750666))

(assert (=> bs!1150577 m!5750668))

(declare-fun m!5750784 () Bool)

(assert (=> bs!1150577 m!5750784))

(declare-fun m!5750786 () Bool)

(assert (=> bs!1150577 m!5750786))

(assert (=> b!4775930 d!1526123))

(declare-fun d!1526125 () Bool)

(declare-fun res!2026827 () Bool)

(declare-fun e!2981529 () Bool)

(assert (=> d!1526125 (=> res!2026827 e!2981529)))

(assert (=> d!1526125 (= res!2026827 (and (is-Cons!53873 (_2!31429 (h!60288 (toList!6633 lm!2709)))) (= (_1!31428 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))) key!6641)))))

(assert (=> d!1526125 (= (containsKey!3746 (_2!31429 (h!60288 (toList!6633 lm!2709))) key!6641) e!2981529)))

(declare-fun b!4775985 () Bool)

(declare-fun e!2981530 () Bool)

(assert (=> b!4775985 (= e!2981529 e!2981530)))

(declare-fun res!2026828 () Bool)

(assert (=> b!4775985 (=> (not res!2026828) (not e!2981530))))

(assert (=> b!4775985 (= res!2026828 (is-Cons!53873 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(declare-fun b!4775986 () Bool)

(assert (=> b!4775986 (= e!2981530 (containsKey!3746 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709)))) key!6641))))

(assert (= (and d!1526125 (not res!2026827)) b!4775985))

(assert (= (and b!4775985 res!2026828) b!4775986))

(declare-fun m!5750790 () Bool)

(assert (=> b!4775986 m!5750790))

(assert (=> b!4775931 d!1526125))

(declare-fun d!1526127 () Bool)

(declare-fun res!2026829 () Bool)

(declare-fun e!2981531 () Bool)

(assert (=> d!1526127 (=> res!2026829 e!2981531)))

(assert (=> d!1526127 (= res!2026829 (and (is-Cons!53873 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709))))) (= (_1!31428 (h!60287 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))))) key!6641)))))

(assert (=> d!1526127 (= (containsKey!3746 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))) key!6641) e!2981531)))

(declare-fun b!4775987 () Bool)

(declare-fun e!2981532 () Bool)

(assert (=> b!4775987 (= e!2981531 e!2981532)))

(declare-fun res!2026830 () Bool)

(assert (=> b!4775987 (=> (not res!2026830) (not e!2981532))))

(assert (=> b!4775987 (= res!2026830 (is-Cons!53873 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709))))))))

(declare-fun b!4775988 () Bool)

(assert (=> b!4775988 (= e!2981532 (containsKey!3746 (t!361447 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709))))) key!6641))))

(assert (= (and d!1526127 (not res!2026829)) b!4775987))

(assert (= (and b!4775987 res!2026830) b!4775988))

(declare-fun m!5750794 () Bool)

(assert (=> b!4775988 m!5750794))

(assert (=> b!4775931 d!1526127))

(declare-fun d!1526131 () Bool)

(declare-datatypes ((Option!12866 0))(
  ( (None!12865) (Some!12865 (v!48029 List!53997)) )
))
(declare-fun get!18282 (Option!12866) List!53997)

(declare-fun getValueByKey!2249 (List!53998 (_ BitVec 64)) Option!12866)

(assert (=> d!1526131 (= (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))) (get!18282 (getValueByKey!2249 (toList!6633 lm!2709) (_1!31429 (h!60288 (toList!6633 lm!2709))))))))

(declare-fun bs!1150578 () Bool)

(assert (= bs!1150578 d!1526131))

(declare-fun m!5750796 () Bool)

(assert (=> bs!1150578 m!5750796))

(assert (=> bs!1150578 m!5750796))

(declare-fun m!5750798 () Bool)

(assert (=> bs!1150578 m!5750798))

(assert (=> b!4775931 d!1526131))

(declare-fun bs!1150580 () Bool)

(declare-fun d!1526133 () Bool)

(assert (= bs!1150580 (and d!1526133 start!489528)))

(declare-fun lambda!226752 () Int)

(assert (=> bs!1150580 (= lambda!226752 lambda!226736)))

(declare-fun bs!1150581 () Bool)

(assert (= bs!1150581 (and d!1526133 d!1526109)))

(assert (=> bs!1150581 (not (= lambda!226752 lambda!226746))))

(declare-fun bs!1150582 () Bool)

(assert (= bs!1150582 (and d!1526133 d!1526123)))

(assert (=> bs!1150582 (= lambda!226752 lambda!226749)))

(assert (=> d!1526133 (not (containsKey!3746 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))) key!6641))))

(declare-fun lt!1939121 () Unit!138868)

(declare-fun choose!34134 (ListLongMap!5051 K!15427 (_ BitVec 64) Hashable!6775) Unit!138868)

(assert (=> d!1526133 (= lt!1939121 (choose!34134 lm!2709 key!6641 (_1!31429 (h!60288 (toList!6633 lm!2709))) hashF!1687))))

(assert (=> d!1526133 (forall!12043 (toList!6633 lm!2709) lambda!226752)))

(assert (=> d!1526133 (= (lemmaNotSameHashThenCannotContainKey!167 lm!2709 key!6641 (_1!31429 (h!60288 (toList!6633 lm!2709))) hashF!1687) lt!1939121)))

(declare-fun bs!1150583 () Bool)

(assert (= bs!1150583 d!1526133))

(assert (=> bs!1150583 m!5750710))

(assert (=> bs!1150583 m!5750710))

(assert (=> bs!1150583 m!5750712))

(declare-fun m!5750802 () Bool)

(assert (=> bs!1150583 m!5750802))

(declare-fun m!5750804 () Bool)

(assert (=> bs!1150583 m!5750804))

(assert (=> b!4775931 d!1526133))

(declare-fun d!1526137 () Bool)

(declare-fun e!2981546 () Bool)

(assert (=> d!1526137 e!2981546))

(declare-fun res!2026841 () Bool)

(assert (=> d!1526137 (=> res!2026841 e!2981546)))

(declare-fun lt!1939133 () Bool)

(assert (=> d!1526137 (= res!2026841 (not lt!1939133))))

(declare-fun lt!1939130 () Bool)

(assert (=> d!1526137 (= lt!1939133 lt!1939130)))

(declare-fun lt!1939131 () Unit!138868)

(declare-fun e!2981545 () Unit!138868)

(assert (=> d!1526137 (= lt!1939131 e!2981545)))

(declare-fun c!814318 () Bool)

(assert (=> d!1526137 (= c!814318 lt!1939130)))

(declare-fun containsKey!3748 (List!53998 (_ BitVec 64)) Bool)

(assert (=> d!1526137 (= lt!1939130 (containsKey!3748 (toList!6633 lm!2709) lt!1939077))))

(assert (=> d!1526137 (= (contains!17362 lm!2709 lt!1939077) lt!1939133)))

(declare-fun b!4776003 () Bool)

(declare-fun lt!1939132 () Unit!138868)

(assert (=> b!4776003 (= e!2981545 lt!1939132)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2043 (List!53998 (_ BitVec 64)) Unit!138868)

(assert (=> b!4776003 (= lt!1939132 (lemmaContainsKeyImpliesGetValueByKeyDefined!2043 (toList!6633 lm!2709) lt!1939077))))

(declare-fun isDefined!10010 (Option!12866) Bool)

(assert (=> b!4776003 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077))))

(declare-fun b!4776004 () Bool)

(declare-fun Unit!138872 () Unit!138868)

(assert (=> b!4776004 (= e!2981545 Unit!138872)))

(declare-fun b!4776005 () Bool)

(assert (=> b!4776005 (= e!2981546 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077)))))

(assert (= (and d!1526137 c!814318) b!4776003))

(assert (= (and d!1526137 (not c!814318)) b!4776004))

(assert (= (and d!1526137 (not res!2026841)) b!4776005))

(declare-fun m!5750810 () Bool)

(assert (=> d!1526137 m!5750810))

(declare-fun m!5750812 () Bool)

(assert (=> b!4776003 m!5750812))

(declare-fun m!5750814 () Bool)

(assert (=> b!4776003 m!5750814))

(assert (=> b!4776003 m!5750814))

(declare-fun m!5750816 () Bool)

(assert (=> b!4776003 m!5750816))

(assert (=> b!4776005 m!5750814))

(assert (=> b!4776005 m!5750814))

(assert (=> b!4776005 m!5750816))

(assert (=> b!4775932 d!1526137))

(declare-fun bs!1150586 () Bool)

(declare-fun d!1526143 () Bool)

(assert (= bs!1150586 (and d!1526143 start!489528)))

(declare-fun lambda!226758 () Int)

(assert (=> bs!1150586 (= lambda!226758 lambda!226736)))

(declare-fun bs!1150587 () Bool)

(assert (= bs!1150587 (and d!1526143 d!1526109)))

(assert (=> bs!1150587 (not (= lambda!226758 lambda!226746))))

(declare-fun bs!1150588 () Bool)

(assert (= bs!1150588 (and d!1526143 d!1526123)))

(assert (=> bs!1150588 (= lambda!226758 lambda!226749)))

(declare-fun bs!1150589 () Bool)

(assert (= bs!1150589 (and d!1526143 d!1526133)))

(assert (=> bs!1150589 (= lambda!226758 lambda!226752)))

(assert (=> d!1526143 (contains!17363 (extractMap!2306 (toList!6633 lm!2709)) key!6641)))

(declare-fun lt!1939139 () Unit!138868)

(declare-fun choose!34135 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> d!1526143 (= lt!1939139 (choose!34135 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526143 (forall!12043 (toList!6633 lm!2709) lambda!226758)))

(assert (=> d!1526143 (= (lemmaListContainsThenExtractedMapContains!627 lm!2709 key!6641 hashF!1687) lt!1939139)))

(declare-fun bs!1150590 () Bool)

(assert (= bs!1150590 d!1526143))

(assert (=> bs!1150590 m!5750684))

(assert (=> bs!1150590 m!5750684))

(assert (=> bs!1150590 m!5750702))

(declare-fun m!5750822 () Bool)

(assert (=> bs!1150590 m!5750822))

(declare-fun m!5750824 () Bool)

(assert (=> bs!1150590 m!5750824))

(assert (=> b!4775932 d!1526143))

(declare-fun d!1526147 () Bool)

(assert (=> d!1526147 (= (get!18280 lt!1939078) (v!48024 lt!1939078))))

(assert (=> b!4775932 d!1526147))

(declare-fun d!1526149 () Bool)

(declare-fun isEmpty!29320 (Option!12864) Bool)

(assert (=> d!1526149 (= (isDefined!10008 lt!1939078) (not (isEmpty!29320 lt!1939078)))))

(declare-fun bs!1150592 () Bool)

(assert (= bs!1150592 d!1526149))

(declare-fun m!5750830 () Bool)

(assert (=> bs!1150592 m!5750830))

(assert (=> b!4775932 d!1526149))

(declare-fun d!1526153 () Bool)

(assert (=> d!1526153 (= (apply!12838 lm!2709 lt!1939077) (get!18282 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077)))))

(declare-fun bs!1150593 () Bool)

(assert (= bs!1150593 d!1526153))

(assert (=> bs!1150593 m!5750814))

(assert (=> bs!1150593 m!5750814))

(declare-fun m!5750832 () Bool)

(assert (=> bs!1150593 m!5750832))

(assert (=> b!4775932 d!1526153))

(declare-fun d!1526155 () Bool)

(declare-fun lt!1939142 () Bool)

(declare-fun content!9614 (List!53998) (Set tuple2!56270))

(assert (=> d!1526155 (= lt!1939142 (set.member lt!1939068 (content!9614 (toList!6633 lm!2709))))))

(declare-fun e!2981557 () Bool)

(assert (=> d!1526155 (= lt!1939142 e!2981557)))

(declare-fun res!2026852 () Bool)

(assert (=> d!1526155 (=> (not res!2026852) (not e!2981557))))

(assert (=> d!1526155 (= res!2026852 (is-Cons!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526155 (= (contains!17361 (toList!6633 lm!2709) lt!1939068) lt!1939142)))

(declare-fun b!4776016 () Bool)

(declare-fun e!2981558 () Bool)

(assert (=> b!4776016 (= e!2981557 e!2981558)))

(declare-fun res!2026853 () Bool)

(assert (=> b!4776016 (=> res!2026853 e!2981558)))

(assert (=> b!4776016 (= res!2026853 (= (h!60288 (toList!6633 lm!2709)) lt!1939068))))

(declare-fun b!4776017 () Bool)

(assert (=> b!4776017 (= e!2981558 (contains!17361 (t!361448 (toList!6633 lm!2709)) lt!1939068))))

(assert (= (and d!1526155 res!2026852) b!4776016))

(assert (= (and b!4776016 (not res!2026853)) b!4776017))

(declare-fun m!5750834 () Bool)

(assert (=> d!1526155 m!5750834))

(declare-fun m!5750836 () Bool)

(assert (=> d!1526155 m!5750836))

(declare-fun m!5750838 () Bool)

(assert (=> b!4776017 m!5750838))

(assert (=> b!4775932 d!1526155))

(declare-fun bs!1150597 () Bool)

(declare-fun d!1526157 () Bool)

(assert (= bs!1150597 (and d!1526157 d!1526109)))

(declare-fun lambda!226764 () Int)

(assert (=> bs!1150597 (not (= lambda!226764 lambda!226746))))

(declare-fun bs!1150598 () Bool)

(assert (= bs!1150598 (and d!1526157 d!1526143)))

(assert (=> bs!1150598 (= lambda!226764 lambda!226758)))

(declare-fun bs!1150599 () Bool)

(assert (= bs!1150599 (and d!1526157 start!489528)))

(assert (=> bs!1150599 (= lambda!226764 lambda!226736)))

(declare-fun bs!1150600 () Bool)

(assert (= bs!1150600 (and d!1526157 d!1526133)))

(assert (=> bs!1150600 (= lambda!226764 lambda!226752)))

(declare-fun bs!1150601 () Bool)

(assert (= bs!1150601 (and d!1526157 d!1526123)))

(assert (=> bs!1150601 (= lambda!226764 lambda!226749)))

(declare-fun lt!1939145 () ListMap!6109)

(declare-fun invariantList!1681 (List!53997) Bool)

(assert (=> d!1526157 (invariantList!1681 (toList!6634 lt!1939145))))

(declare-fun e!2981564 () ListMap!6109)

(assert (=> d!1526157 (= lt!1939145 e!2981564)))

(declare-fun c!814321 () Bool)

(assert (=> d!1526157 (= c!814321 (is-Cons!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526157 (forall!12043 (toList!6633 lm!2709) lambda!226764)))

(assert (=> d!1526157 (= (extractMap!2306 (toList!6633 lm!2709)) lt!1939145)))

(declare-fun b!4776027 () Bool)

(declare-fun addToMapMapFromBucket!1646 (List!53997 ListMap!6109) ListMap!6109)

(assert (=> b!4776027 (= e!2981564 (addToMapMapFromBucket!1646 (_2!31429 (h!60288 (toList!6633 lm!2709))) (extractMap!2306 (t!361448 (toList!6633 lm!2709)))))))

(declare-fun b!4776028 () Bool)

(assert (=> b!4776028 (= e!2981564 (ListMap!6110 Nil!53873))))

(assert (= (and d!1526157 c!814321) b!4776027))

(assert (= (and d!1526157 (not c!814321)) b!4776028))

(declare-fun m!5750844 () Bool)

(assert (=> d!1526157 m!5750844))

(declare-fun m!5750846 () Bool)

(assert (=> d!1526157 m!5750846))

(declare-fun m!5750848 () Bool)

(assert (=> b!4776027 m!5750848))

(assert (=> b!4776027 m!5750848))

(declare-fun m!5750850 () Bool)

(assert (=> b!4776027 m!5750850))

(assert (=> b!4775932 d!1526157))

(declare-fun bs!1150602 () Bool)

(declare-fun d!1526163 () Bool)

(assert (= bs!1150602 (and d!1526163 d!1526157)))

(declare-fun lambda!226767 () Int)

(assert (=> bs!1150602 (= lambda!226767 lambda!226764)))

(declare-fun bs!1150603 () Bool)

(assert (= bs!1150603 (and d!1526163 d!1526109)))

(assert (=> bs!1150603 (not (= lambda!226767 lambda!226746))))

(declare-fun bs!1150604 () Bool)

(assert (= bs!1150604 (and d!1526163 d!1526143)))

(assert (=> bs!1150604 (= lambda!226767 lambda!226758)))

(declare-fun bs!1150605 () Bool)

(assert (= bs!1150605 (and d!1526163 start!489528)))

(assert (=> bs!1150605 (= lambda!226767 lambda!226736)))

(declare-fun bs!1150606 () Bool)

(assert (= bs!1150606 (and d!1526163 d!1526133)))

(assert (=> bs!1150606 (= lambda!226767 lambda!226752)))

(declare-fun bs!1150607 () Bool)

(assert (= bs!1150607 (and d!1526163 d!1526123)))

(assert (=> bs!1150607 (= lambda!226767 lambda!226749)))

(assert (=> d!1526163 (contains!17362 lm!2709 (hash!4747 hashF!1687 key!6641))))

(declare-fun lt!1939150 () Unit!138868)

(declare-fun choose!34136 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> d!1526163 (= lt!1939150 (choose!34136 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526163 (forall!12043 (toList!6633 lm!2709) lambda!226767)))

(assert (=> d!1526163 (= (lemmaInGenMapThenLongMapContainsHash!979 lm!2709 key!6641 hashF!1687) lt!1939150)))

(declare-fun bs!1150608 () Bool)

(assert (= bs!1150608 d!1526163))

(assert (=> bs!1150608 m!5750690))

(assert (=> bs!1150608 m!5750690))

(declare-fun m!5750852 () Bool)

(assert (=> bs!1150608 m!5750852))

(declare-fun m!5750854 () Bool)

(assert (=> bs!1150608 m!5750854))

(declare-fun m!5750856 () Bool)

(assert (=> bs!1150608 m!5750856))

(assert (=> b!4775932 d!1526163))

(declare-fun b!4776050 () Bool)

(declare-fun e!2981582 () Bool)

(declare-datatypes ((List!54001 0))(
  ( (Nil!53877) (Cons!53877 (h!60291 K!15427) (t!361451 List!54001)) )
))
(declare-fun contains!17367 (List!54001 K!15427) Bool)

(declare-fun keys!19597 (ListMap!6109) List!54001)

(assert (=> b!4776050 (= e!2981582 (contains!17367 (keys!19597 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(declare-fun b!4776051 () Bool)

(declare-fun e!2981583 () List!54001)

(declare-fun getKeysList!1025 (List!53997) List!54001)

(assert (=> b!4776051 (= e!2981583 (getKeysList!1025 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))

(declare-fun b!4776052 () Bool)

(declare-fun e!2981580 () Bool)

(assert (=> b!4776052 (= e!2981580 (not (contains!17367 (keys!19597 (extractMap!2306 (toList!6633 lm!2709))) key!6641)))))

(declare-fun b!4776053 () Bool)

(declare-fun e!2981585 () Unit!138868)

(declare-fun lt!1939169 () Unit!138868)

(assert (=> b!4776053 (= e!2981585 lt!1939169)))

(declare-fun lt!1939173 () Unit!138868)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2044 (List!53997 K!15427) Unit!138868)

(assert (=> b!4776053 (= lt!1939173 (lemmaContainsKeyImpliesGetValueByKeyDefined!2044 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(declare-datatypes ((Option!12867 0))(
  ( (None!12866) (Some!12866 (v!48030 V!15673)) )
))
(declare-fun isDefined!10011 (Option!12867) Bool)

(declare-fun getValueByKey!2250 (List!53997 K!15427) Option!12867)

(assert (=> b!4776053 (isDefined!10011 (getValueByKey!2250 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(declare-fun lt!1939172 () Unit!138868)

(assert (=> b!4776053 (= lt!1939172 lt!1939173)))

(declare-fun lemmaInListThenGetKeysListContains!1020 (List!53997 K!15427) Unit!138868)

(assert (=> b!4776053 (= lt!1939169 (lemmaInListThenGetKeysListContains!1020 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(declare-fun call!334567 () Bool)

(assert (=> b!4776053 call!334567))

(declare-fun b!4776054 () Bool)

(declare-fun e!2981584 () Unit!138868)

(assert (=> b!4776054 (= e!2981585 e!2981584)))

(declare-fun c!814329 () Bool)

(assert (=> b!4776054 (= c!814329 call!334567)))

(declare-fun d!1526165 () Bool)

(declare-fun e!2981581 () Bool)

(assert (=> d!1526165 e!2981581))

(declare-fun res!2026868 () Bool)

(assert (=> d!1526165 (=> res!2026868 e!2981581)))

(assert (=> d!1526165 (= res!2026868 e!2981580)))

(declare-fun res!2026866 () Bool)

(assert (=> d!1526165 (=> (not res!2026866) (not e!2981580))))

(declare-fun lt!1939170 () Bool)

(assert (=> d!1526165 (= res!2026866 (not lt!1939170))))

(declare-fun lt!1939168 () Bool)

(assert (=> d!1526165 (= lt!1939170 lt!1939168)))

(declare-fun lt!1939174 () Unit!138868)

(assert (=> d!1526165 (= lt!1939174 e!2981585)))

(declare-fun c!814328 () Bool)

(assert (=> d!1526165 (= c!814328 lt!1939168)))

(declare-fun containsKey!3749 (List!53997 K!15427) Bool)

(assert (=> d!1526165 (= lt!1939168 (containsKey!3749 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(assert (=> d!1526165 (= (contains!17363 (extractMap!2306 (toList!6633 lm!2709)) key!6641) lt!1939170)))

(declare-fun b!4776055 () Bool)

(assert (=> b!4776055 false))

(declare-fun lt!1939171 () Unit!138868)

(declare-fun lt!1939175 () Unit!138868)

(assert (=> b!4776055 (= lt!1939171 lt!1939175)))

(assert (=> b!4776055 (containsKey!3749 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1024 (List!53997 K!15427) Unit!138868)

(assert (=> b!4776055 (= lt!1939175 (lemmaInGetKeysListThenContainsKey!1024 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(declare-fun Unit!138873 () Unit!138868)

(assert (=> b!4776055 (= e!2981584 Unit!138873)))

(declare-fun b!4776056 () Bool)

(assert (=> b!4776056 (= e!2981583 (keys!19597 (extractMap!2306 (toList!6633 lm!2709))))))

(declare-fun bm!334562 () Bool)

(assert (=> bm!334562 (= call!334567 (contains!17367 e!2981583 key!6641))))

(declare-fun c!814330 () Bool)

(assert (=> bm!334562 (= c!814330 c!814328)))

(declare-fun b!4776057 () Bool)

(assert (=> b!4776057 (= e!2981581 e!2981582)))

(declare-fun res!2026867 () Bool)

(assert (=> b!4776057 (=> (not res!2026867) (not e!2981582))))

(assert (=> b!4776057 (= res!2026867 (isDefined!10011 (getValueByKey!2250 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641)))))

(declare-fun b!4776058 () Bool)

(declare-fun Unit!138874 () Unit!138868)

(assert (=> b!4776058 (= e!2981584 Unit!138874)))

(assert (= (and d!1526165 c!814328) b!4776053))

(assert (= (and d!1526165 (not c!814328)) b!4776054))

(assert (= (and b!4776054 c!814329) b!4776055))

(assert (= (and b!4776054 (not c!814329)) b!4776058))

(assert (= (or b!4776053 b!4776054) bm!334562))

(assert (= (and bm!334562 c!814330) b!4776051))

(assert (= (and bm!334562 (not c!814330)) b!4776056))

(assert (= (and d!1526165 res!2026866) b!4776052))

(assert (= (and d!1526165 (not res!2026868)) b!4776057))

(assert (= (and b!4776057 res!2026867) b!4776050))

(assert (=> b!4776050 m!5750684))

(declare-fun m!5750862 () Bool)

(assert (=> b!4776050 m!5750862))

(assert (=> b!4776050 m!5750862))

(declare-fun m!5750864 () Bool)

(assert (=> b!4776050 m!5750864))

(assert (=> b!4776056 m!5750684))

(assert (=> b!4776056 m!5750862))

(declare-fun m!5750866 () Bool)

(assert (=> b!4776051 m!5750866))

(declare-fun m!5750868 () Bool)

(assert (=> b!4776055 m!5750868))

(declare-fun m!5750870 () Bool)

(assert (=> b!4776055 m!5750870))

(declare-fun m!5750872 () Bool)

(assert (=> b!4776053 m!5750872))

(declare-fun m!5750874 () Bool)

(assert (=> b!4776053 m!5750874))

(assert (=> b!4776053 m!5750874))

(declare-fun m!5750876 () Bool)

(assert (=> b!4776053 m!5750876))

(declare-fun m!5750878 () Bool)

(assert (=> b!4776053 m!5750878))

(declare-fun m!5750880 () Bool)

(assert (=> bm!334562 m!5750880))

(assert (=> b!4776057 m!5750874))

(assert (=> b!4776057 m!5750874))

(assert (=> b!4776057 m!5750876))

(assert (=> d!1526165 m!5750868))

(assert (=> b!4776052 m!5750684))

(assert (=> b!4776052 m!5750862))

(assert (=> b!4776052 m!5750862))

(assert (=> b!4776052 m!5750864))

(assert (=> b!4775932 d!1526165))

(declare-fun b!4776075 () Bool)

(declare-fun e!2981597 () Option!12864)

(assert (=> b!4776075 (= e!2981597 (Some!12863 (h!60287 lt!1939079)))))

(declare-fun b!4776076 () Bool)

(declare-fun e!2981598 () Bool)

(declare-fun lt!1939178 () Option!12864)

(declare-fun contains!17368 (List!53997 tuple2!56268) Bool)

(assert (=> b!4776076 (= e!2981598 (contains!17368 lt!1939079 (get!18280 lt!1939178)))))

(declare-fun b!4776077 () Bool)

(declare-fun res!2026880 () Bool)

(assert (=> b!4776077 (=> (not res!2026880) (not e!2981598))))

(assert (=> b!4776077 (= res!2026880 (= (_1!31428 (get!18280 lt!1939178)) key!6641))))

(declare-fun b!4776078 () Bool)

(declare-fun e!2981600 () Option!12864)

(assert (=> b!4776078 (= e!2981600 (getPair!763 (t!361447 lt!1939079) key!6641))))

(declare-fun b!4776079 () Bool)

(assert (=> b!4776079 (= e!2981600 None!12863)))

(declare-fun d!1526169 () Bool)

(declare-fun e!2981596 () Bool)

(assert (=> d!1526169 e!2981596))

(declare-fun res!2026879 () Bool)

(assert (=> d!1526169 (=> res!2026879 e!2981596)))

(declare-fun e!2981599 () Bool)

(assert (=> d!1526169 (= res!2026879 e!2981599)))

(declare-fun res!2026878 () Bool)

(assert (=> d!1526169 (=> (not res!2026878) (not e!2981599))))

(assert (=> d!1526169 (= res!2026878 (isEmpty!29320 lt!1939178))))

(assert (=> d!1526169 (= lt!1939178 e!2981597)))

(declare-fun c!814335 () Bool)

(assert (=> d!1526169 (= c!814335 (and (is-Cons!53873 lt!1939079) (= (_1!31428 (h!60287 lt!1939079)) key!6641)))))

(declare-fun noDuplicateKeys!2278 (List!53997) Bool)

(assert (=> d!1526169 (noDuplicateKeys!2278 lt!1939079)))

(assert (=> d!1526169 (= (getPair!763 lt!1939079 key!6641) lt!1939178)))

(declare-fun b!4776080 () Bool)

(assert (=> b!4776080 (= e!2981599 (not (containsKey!3746 lt!1939079 key!6641)))))

(declare-fun b!4776081 () Bool)

(assert (=> b!4776081 (= e!2981596 e!2981598)))

(declare-fun res!2026877 () Bool)

(assert (=> b!4776081 (=> (not res!2026877) (not e!2981598))))

(assert (=> b!4776081 (= res!2026877 (isDefined!10008 lt!1939178))))

(declare-fun b!4776082 () Bool)

(assert (=> b!4776082 (= e!2981597 e!2981600)))

(declare-fun c!814336 () Bool)

(assert (=> b!4776082 (= c!814336 (is-Cons!53873 lt!1939079))))

(assert (= (and d!1526169 c!814335) b!4776075))

(assert (= (and d!1526169 (not c!814335)) b!4776082))

(assert (= (and b!4776082 c!814336) b!4776078))

(assert (= (and b!4776082 (not c!814336)) b!4776079))

(assert (= (and d!1526169 res!2026878) b!4776080))

(assert (= (and d!1526169 (not res!2026879)) b!4776081))

(assert (= (and b!4776081 res!2026877) b!4776077))

(assert (= (and b!4776077 res!2026880) b!4776076))

(declare-fun m!5750882 () Bool)

(assert (=> b!4776077 m!5750882))

(assert (=> b!4776076 m!5750882))

(assert (=> b!4776076 m!5750882))

(declare-fun m!5750884 () Bool)

(assert (=> b!4776076 m!5750884))

(declare-fun m!5750886 () Bool)

(assert (=> b!4776081 m!5750886))

(declare-fun m!5750888 () Bool)

(assert (=> b!4776080 m!5750888))

(declare-fun m!5750890 () Bool)

(assert (=> b!4776078 m!5750890))

(declare-fun m!5750892 () Bool)

(assert (=> d!1526169 m!5750892))

(declare-fun m!5750894 () Bool)

(assert (=> d!1526169 m!5750894))

(assert (=> b!4775932 d!1526169))

(declare-fun d!1526171 () Bool)

(assert (=> d!1526171 (dynLambda!21992 lambda!226736 lt!1939068)))

(declare-fun lt!1939183 () Unit!138868)

(declare-fun choose!34137 (List!53998 Int tuple2!56270) Unit!138868)

(assert (=> d!1526171 (= lt!1939183 (choose!34137 (toList!6633 lm!2709) lambda!226736 lt!1939068))))

(declare-fun e!2981603 () Bool)

(assert (=> d!1526171 e!2981603))

(declare-fun res!2026883 () Bool)

(assert (=> d!1526171 (=> (not res!2026883) (not e!2981603))))

(assert (=> d!1526171 (= res!2026883 (forall!12043 (toList!6633 lm!2709) lambda!226736))))

(assert (=> d!1526171 (= (forallContained!4000 (toList!6633 lm!2709) lambda!226736 lt!1939068) lt!1939183)))

(declare-fun b!4776085 () Bool)

(assert (=> b!4776085 (= e!2981603 (contains!17361 (toList!6633 lm!2709) lt!1939068))))

(assert (= (and d!1526171 res!2026883) b!4776085))

(declare-fun b_lambda!184957 () Bool)

(assert (=> (not b_lambda!184957) (not d!1526171)))

(declare-fun m!5750896 () Bool)

(assert (=> d!1526171 m!5750896))

(declare-fun m!5750898 () Bool)

(assert (=> d!1526171 m!5750898))

(assert (=> d!1526171 m!5750704))

(assert (=> b!4776085 m!5750678))

(assert (=> b!4775932 d!1526171))

(declare-fun bs!1150616 () Bool)

(declare-fun d!1526173 () Bool)

(assert (= bs!1150616 (and d!1526173 d!1526157)))

(declare-fun lambda!226777 () Int)

(assert (=> bs!1150616 (= lambda!226777 lambda!226764)))

(declare-fun bs!1150617 () Bool)

(assert (= bs!1150617 (and d!1526173 d!1526109)))

(assert (=> bs!1150617 (not (= lambda!226777 lambda!226746))))

(declare-fun bs!1150618 () Bool)

(assert (= bs!1150618 (and d!1526173 d!1526163)))

(assert (=> bs!1150618 (= lambda!226777 lambda!226767)))

(declare-fun bs!1150619 () Bool)

(assert (= bs!1150619 (and d!1526173 d!1526143)))

(assert (=> bs!1150619 (= lambda!226777 lambda!226758)))

(declare-fun bs!1150620 () Bool)

(assert (= bs!1150620 (and d!1526173 start!489528)))

(assert (=> bs!1150620 (= lambda!226777 lambda!226736)))

(declare-fun bs!1150621 () Bool)

(assert (= bs!1150621 (and d!1526173 d!1526133)))

(assert (=> bs!1150621 (= lambda!226777 lambda!226752)))

(declare-fun bs!1150622 () Bool)

(assert (= bs!1150622 (and d!1526173 d!1526123)))

(assert (=> bs!1150622 (= lambda!226777 lambda!226749)))

(declare-fun b!4776104 () Bool)

(declare-fun res!2026897 () Bool)

(declare-fun e!2981615 () Bool)

(assert (=> b!4776104 (=> (not res!2026897) (not e!2981615))))

(assert (=> b!4776104 (= res!2026897 (allKeysSameHashInMap!2180 lm!2709 hashF!1687))))

(declare-fun lt!1939219 () (_ BitVec 64))

(declare-fun b!4776107 () Bool)

(declare-fun lt!1939218 () List!53997)

(declare-fun e!2981614 () Bool)

(assert (=> b!4776107 (= e!2981614 (= (getValueByKey!2249 (toList!6633 lm!2709) lt!1939219) (Some!12865 lt!1939218)))))

(assert (=> d!1526173 e!2981615))

(declare-fun res!2026898 () Bool)

(assert (=> d!1526173 (=> (not res!2026898) (not e!2981615))))

(assert (=> d!1526173 (= res!2026898 (forall!12043 (toList!6633 lm!2709) lambda!226777))))

(declare-fun lt!1939216 () Unit!138868)

(declare-fun choose!34138 (ListLongMap!5051 K!15427 Hashable!6775) Unit!138868)

(assert (=> d!1526173 (= lt!1939216 (choose!34138 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526173 (forall!12043 (toList!6633 lm!2709) lambda!226777)))

(assert (=> d!1526173 (= (lemmaInGenMapThenGetPairDefined!537 lm!2709 key!6641 hashF!1687) lt!1939216)))

(declare-fun b!4776106 () Bool)

(assert (=> b!4776106 (= e!2981615 (isDefined!10008 (getPair!763 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1939222 () Unit!138868)

(assert (=> b!4776106 (= lt!1939222 (forallContained!4000 (toList!6633 lm!2709) lambda!226777 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))))

(declare-fun lt!1939220 () Unit!138868)

(declare-fun lt!1939223 () Unit!138868)

(assert (=> b!4776106 (= lt!1939220 lt!1939223)))

(assert (=> b!4776106 (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939219 lt!1939218))))

(assert (=> b!4776106 (= lt!1939223 (lemmaGetValueImpliesTupleContained!566 lm!2709 lt!1939219 lt!1939218))))

(assert (=> b!4776106 e!2981614))

(declare-fun res!2026896 () Bool)

(assert (=> b!4776106 (=> (not res!2026896) (not e!2981614))))

(assert (=> b!4776106 (= res!2026896 (contains!17362 lm!2709 lt!1939219))))

(assert (=> b!4776106 (= lt!1939218 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))

(assert (=> b!4776106 (= lt!1939219 (hash!4747 hashF!1687 key!6641))))

(declare-fun lt!1939221 () Unit!138868)

(declare-fun lt!1939217 () Unit!138868)

(assert (=> b!4776106 (= lt!1939221 lt!1939217)))

(assert (=> b!4776106 (contains!17362 lm!2709 (hash!4747 hashF!1687 key!6641))))

(assert (=> b!4776106 (= lt!1939217 (lemmaInGenMapThenLongMapContainsHash!979 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776105 () Bool)

(declare-fun res!2026895 () Bool)

(assert (=> b!4776105 (=> (not res!2026895) (not e!2981615))))

(assert (=> b!4776105 (= res!2026895 (contains!17363 (extractMap!2306 (toList!6633 lm!2709)) key!6641))))

(assert (= (and d!1526173 res!2026898) b!4776104))

(assert (= (and b!4776104 res!2026897) b!4776105))

(assert (= (and b!4776105 res!2026895) b!4776106))

(assert (= (and b!4776106 res!2026896) b!4776107))

(declare-fun m!5750920 () Bool)

(assert (=> b!4776107 m!5750920))

(declare-fun m!5750922 () Bool)

(assert (=> d!1526173 m!5750922))

(declare-fun m!5750924 () Bool)

(assert (=> d!1526173 m!5750924))

(assert (=> d!1526173 m!5750922))

(assert (=> b!4776104 m!5750674))

(assert (=> b!4776105 m!5750684))

(assert (=> b!4776105 m!5750684))

(assert (=> b!4776105 m!5750702))

(declare-fun m!5750926 () Bool)

(assert (=> b!4776106 m!5750926))

(assert (=> b!4776106 m!5750694))

(declare-fun m!5750928 () Bool)

(assert (=> b!4776106 m!5750928))

(assert (=> b!4776106 m!5750690))

(declare-fun m!5750930 () Bool)

(assert (=> b!4776106 m!5750930))

(assert (=> b!4776106 m!5750690))

(assert (=> b!4776106 m!5750852))

(declare-fun m!5750932 () Bool)

(assert (=> b!4776106 m!5750932))

(declare-fun m!5750934 () Bool)

(assert (=> b!4776106 m!5750934))

(declare-fun m!5750936 () Bool)

(assert (=> b!4776106 m!5750936))

(declare-fun m!5750938 () Bool)

(assert (=> b!4776106 m!5750938))

(assert (=> b!4776106 m!5750930))

(assert (=> b!4776106 m!5750936))

(assert (=> b!4776106 m!5750690))

(assert (=> b!4775932 d!1526173))

(declare-fun d!1526185 () Bool)

(assert (=> d!1526185 (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939077 lt!1939079))))

(declare-fun lt!1939226 () Unit!138868)

(declare-fun choose!34139 (ListLongMap!5051 (_ BitVec 64) List!53997) Unit!138868)

(assert (=> d!1526185 (= lt!1939226 (choose!34139 lm!2709 lt!1939077 lt!1939079))))

(assert (=> d!1526185 (contains!17362 lm!2709 lt!1939077)))

(assert (=> d!1526185 (= (lemmaGetValueImpliesTupleContained!566 lm!2709 lt!1939077 lt!1939079) lt!1939226)))

(declare-fun bs!1150623 () Bool)

(assert (= bs!1150623 d!1526185))

(declare-fun m!5750940 () Bool)

(assert (=> bs!1150623 m!5750940))

(declare-fun m!5750942 () Bool)

(assert (=> bs!1150623 m!5750942))

(assert (=> bs!1150623 m!5750686))

(assert (=> b!4775932 d!1526185))

(declare-fun d!1526187 () Bool)

(declare-fun hash!4751 (Hashable!6775 K!15427) (_ BitVec 64))

(assert (=> d!1526187 (= (hash!4747 hashF!1687 key!6641) (hash!4751 hashF!1687 key!6641))))

(declare-fun bs!1150624 () Bool)

(assert (= bs!1150624 d!1526187))

(declare-fun m!5750944 () Bool)

(assert (=> bs!1150624 m!5750944))

(assert (=> b!4775932 d!1526187))

(declare-fun b!4776113 () Bool)

(declare-fun e!2981618 () Bool)

(declare-fun tp!1357127 () Bool)

(declare-fun tp!1357128 () Bool)

(assert (=> b!4776113 (= e!2981618 (and tp!1357127 tp!1357128))))

(assert (=> b!4775928 (= tp!1357119 e!2981618)))

(assert (= (and b!4775928 (is-Cons!53874 (toList!6633 lm!2709))) b!4776113))

(declare-fun b_lambda!184959 () Bool)

(assert (= b_lambda!184951 (or start!489528 b_lambda!184959)))

(declare-fun bs!1150625 () Bool)

(declare-fun d!1526189 () Bool)

(assert (= bs!1150625 (and d!1526189 start!489528)))

(assert (=> bs!1150625 (= (dynLambda!21992 lambda!226736 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(declare-fun m!5750946 () Bool)

(assert (=> bs!1150625 m!5750946))

(assert (=> b!4775970 d!1526189))

(declare-fun b_lambda!184961 () Bool)

(assert (= b_lambda!184957 (or start!489528 b_lambda!184961)))

(declare-fun bs!1150626 () Bool)

(declare-fun d!1526191 () Bool)

(assert (= bs!1150626 (and d!1526191 start!489528)))

(assert (=> bs!1150626 (= (dynLambda!21992 lambda!226736 lt!1939068) (noDuplicateKeys!2278 (_2!31429 lt!1939068)))))

(declare-fun m!5750948 () Bool)

(assert (=> bs!1150626 m!5750948))

(assert (=> d!1526171 d!1526191))

(push 1)

(assert (not b!4776076))

(assert (not b_lambda!184959))

(assert (not b!4776080))

(assert (not d!1526153))

(assert (not b!4776078))

(assert (not b!4776077))

(assert (not b!4776056))

(assert (not bs!1150626))

(assert (not d!1526131))

(assert (not b!4776017))

(assert (not d!1526109))

(assert (not b!4776057))

(assert (not b!4776113))

(assert (not bm!334562))

(assert (not b!4775988))

(assert (not d!1526157))

(assert (not d!1526185))

(assert (not b!4776050))

(assert (not b!4776055))

(assert (not b!4775974))

(assert (not d!1526133))

(assert (not d!1526113))

(assert tp_is_empty!33031)

(assert (not d!1526187))

(assert (not b!4775972))

(assert (not b!4776053))

(assert (not b!4776106))

(assert (not b!4776003))

(assert (not b!4776027))

(assert (not d!1526163))

(assert (not b!4775971))

(assert (not b!4776051))

(assert tp_is_empty!33029)

(assert (not b!4775961))

(assert (not d!1526169))

(assert (not d!1526173))

(assert (not b!4776085))

(assert (not d!1526137))

(assert (not d!1526165))

(assert (not bs!1150625))

(assert (not b!4775986))

(assert (not b!4775963))

(assert (not b!4776107))

(assert (not d!1526115))

(assert (not b!4776052))

(assert (not b!4776081))

(assert (not b_lambda!184961))

(assert (not b!4776005))

(assert (not b!4776105))

(assert (not d!1526149))

(assert (not b!4776104))

(assert (not d!1526143))

(assert (not d!1526171))

(assert (not d!1526155))

(assert (not d!1526123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1526123 d!1526119))

(assert (=> d!1526123 d!1526121))

(declare-fun d!1526219 () Bool)

(assert (=> d!1526219 (containsKeyBiggerList!431 (tail!9164 (toList!6633 lm!2709)) key!6641)))

(assert (=> d!1526219 true))

(declare-fun _$37!365 () Unit!138868)

(assert (=> d!1526219 (= (choose!34133 lm!2709 key!6641 hashF!1687) _$37!365)))

(declare-fun bs!1150655 () Bool)

(assert (= bs!1150655 d!1526219))

(assert (=> bs!1150655 m!5750666))

(assert (=> bs!1150655 m!5750666))

(assert (=> bs!1150655 m!5750668))

(assert (=> d!1526123 d!1526219))

(declare-fun d!1526221 () Bool)

(declare-fun res!2026941 () Bool)

(declare-fun e!2981673 () Bool)

(assert (=> d!1526221 (=> res!2026941 e!2981673)))

(assert (=> d!1526221 (= res!2026941 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526221 (= (forall!12043 (toList!6633 lm!2709) lambda!226749) e!2981673)))

(declare-fun b!4776197 () Bool)

(declare-fun e!2981674 () Bool)

(assert (=> b!4776197 (= e!2981673 e!2981674)))

(declare-fun res!2026942 () Bool)

(assert (=> b!4776197 (=> (not res!2026942) (not e!2981674))))

(assert (=> b!4776197 (= res!2026942 (dynLambda!21992 lambda!226749 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776198 () Bool)

(assert (=> b!4776198 (= e!2981674 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226749))))

(assert (= (and d!1526221 (not res!2026941)) b!4776197))

(assert (= (and b!4776197 res!2026942) b!4776198))

(declare-fun b_lambda!184967 () Bool)

(assert (=> (not b_lambda!184967) (not b!4776197)))

(declare-fun m!5751040 () Bool)

(assert (=> b!4776197 m!5751040))

(declare-fun m!5751042 () Bool)

(assert (=> b!4776198 m!5751042))

(assert (=> d!1526123 d!1526221))

(declare-fun d!1526223 () Bool)

(declare-fun res!2026947 () Bool)

(declare-fun e!2981679 () Bool)

(assert (=> d!1526223 (=> res!2026947 e!2981679)))

(assert (=> d!1526223 (= res!2026947 (not (is-Cons!53873 (_2!31429 lt!1939068))))))

(assert (=> d!1526223 (= (noDuplicateKeys!2278 (_2!31429 lt!1939068)) e!2981679)))

(declare-fun b!4776203 () Bool)

(declare-fun e!2981680 () Bool)

(assert (=> b!4776203 (= e!2981679 e!2981680)))

(declare-fun res!2026948 () Bool)

(assert (=> b!4776203 (=> (not res!2026948) (not e!2981680))))

(assert (=> b!4776203 (= res!2026948 (not (containsKey!3746 (t!361447 (_2!31429 lt!1939068)) (_1!31428 (h!60287 (_2!31429 lt!1939068))))))))

(declare-fun b!4776204 () Bool)

(assert (=> b!4776204 (= e!2981680 (noDuplicateKeys!2278 (t!361447 (_2!31429 lt!1939068))))))

(assert (= (and d!1526223 (not res!2026947)) b!4776203))

(assert (= (and b!4776203 res!2026948) b!4776204))

(declare-fun m!5751044 () Bool)

(assert (=> b!4776203 m!5751044))

(declare-fun m!5751046 () Bool)

(assert (=> b!4776204 m!5751046))

(assert (=> bs!1150626 d!1526223))

(assert (=> b!4776085 d!1526155))

(assert (=> d!1526143 d!1526165))

(assert (=> d!1526143 d!1526157))

(declare-fun d!1526225 () Bool)

(assert (=> d!1526225 (contains!17363 (extractMap!2306 (toList!6633 lm!2709)) key!6641)))

(assert (=> d!1526225 true))

(declare-fun _$34!889 () Unit!138868)

(assert (=> d!1526225 (= (choose!34135 lm!2709 key!6641 hashF!1687) _$34!889)))

(declare-fun bs!1150656 () Bool)

(assert (= bs!1150656 d!1526225))

(assert (=> bs!1150656 m!5750684))

(assert (=> bs!1150656 m!5750684))

(assert (=> bs!1150656 m!5750702))

(assert (=> d!1526143 d!1526225))

(declare-fun d!1526227 () Bool)

(declare-fun res!2026949 () Bool)

(declare-fun e!2981681 () Bool)

(assert (=> d!1526227 (=> res!2026949 e!2981681)))

(assert (=> d!1526227 (= res!2026949 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526227 (= (forall!12043 (toList!6633 lm!2709) lambda!226758) e!2981681)))

(declare-fun b!4776205 () Bool)

(declare-fun e!2981682 () Bool)

(assert (=> b!4776205 (= e!2981681 e!2981682)))

(declare-fun res!2026950 () Bool)

(assert (=> b!4776205 (=> (not res!2026950) (not e!2981682))))

(assert (=> b!4776205 (= res!2026950 (dynLambda!21992 lambda!226758 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776206 () Bool)

(assert (=> b!4776206 (= e!2981682 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226758))))

(assert (= (and d!1526227 (not res!2026949)) b!4776205))

(assert (= (and b!4776205 res!2026950) b!4776206))

(declare-fun b_lambda!184969 () Bool)

(assert (=> (not b_lambda!184969) (not b!4776205)))

(declare-fun m!5751048 () Bool)

(assert (=> b!4776205 m!5751048))

(declare-fun m!5751050 () Bool)

(assert (=> b!4776206 m!5751050))

(assert (=> d!1526143 d!1526227))

(declare-fun d!1526229 () Bool)

(declare-fun noDuplicatedKeys!411 (List!53997) Bool)

(assert (=> d!1526229 (= (invariantList!1681 (toList!6634 lt!1939145)) (noDuplicatedKeys!411 (toList!6634 lt!1939145)))))

(declare-fun bs!1150657 () Bool)

(assert (= bs!1150657 d!1526229))

(declare-fun m!5751052 () Bool)

(assert (=> bs!1150657 m!5751052))

(assert (=> d!1526157 d!1526229))

(declare-fun d!1526231 () Bool)

(declare-fun res!2026951 () Bool)

(declare-fun e!2981683 () Bool)

(assert (=> d!1526231 (=> res!2026951 e!2981683)))

(assert (=> d!1526231 (= res!2026951 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526231 (= (forall!12043 (toList!6633 lm!2709) lambda!226764) e!2981683)))

(declare-fun b!4776207 () Bool)

(declare-fun e!2981684 () Bool)

(assert (=> b!4776207 (= e!2981683 e!2981684)))

(declare-fun res!2026952 () Bool)

(assert (=> b!4776207 (=> (not res!2026952) (not e!2981684))))

(assert (=> b!4776207 (= res!2026952 (dynLambda!21992 lambda!226764 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776208 () Bool)

(assert (=> b!4776208 (= e!2981684 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226764))))

(assert (= (and d!1526231 (not res!2026951)) b!4776207))

(assert (= (and b!4776207 res!2026952) b!4776208))

(declare-fun b_lambda!184971 () Bool)

(assert (=> (not b_lambda!184971) (not b!4776207)))

(declare-fun m!5751054 () Bool)

(assert (=> b!4776207 m!5751054))

(declare-fun m!5751056 () Bool)

(assert (=> b!4776208 m!5751056))

(assert (=> d!1526157 d!1526231))

(declare-fun d!1526233 () Bool)

(assert (=> d!1526233 (= (get!18282 (getValueByKey!2249 (toList!6633 lm!2709) (_1!31429 (h!60288 (toList!6633 lm!2709))))) (v!48029 (getValueByKey!2249 (toList!6633 lm!2709) (_1!31429 (h!60288 (toList!6633 lm!2709))))))))

(assert (=> d!1526131 d!1526233))

(declare-fun b!4776219 () Bool)

(declare-fun e!2981690 () Option!12866)

(assert (=> b!4776219 (= e!2981690 (getValueByKey!2249 (t!361448 (toList!6633 lm!2709)) (_1!31429 (h!60288 (toList!6633 lm!2709)))))))

(declare-fun b!4776218 () Bool)

(declare-fun e!2981689 () Option!12866)

(assert (=> b!4776218 (= e!2981689 e!2981690)))

(declare-fun c!814363 () Bool)

(assert (=> b!4776218 (= c!814363 (and (is-Cons!53874 (toList!6633 lm!2709)) (not (= (_1!31429 (h!60288 (toList!6633 lm!2709))) (_1!31429 (h!60288 (toList!6633 lm!2709)))))))))

(declare-fun b!4776217 () Bool)

(assert (=> b!4776217 (= e!2981689 (Some!12865 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(declare-fun b!4776220 () Bool)

(assert (=> b!4776220 (= e!2981690 None!12865)))

(declare-fun d!1526235 () Bool)

(declare-fun c!814362 () Bool)

(assert (=> d!1526235 (= c!814362 (and (is-Cons!53874 (toList!6633 lm!2709)) (= (_1!31429 (h!60288 (toList!6633 lm!2709))) (_1!31429 (h!60288 (toList!6633 lm!2709))))))))

(assert (=> d!1526235 (= (getValueByKey!2249 (toList!6633 lm!2709) (_1!31429 (h!60288 (toList!6633 lm!2709)))) e!2981689)))

(assert (= (and d!1526235 c!814362) b!4776217))

(assert (= (and d!1526235 (not c!814362)) b!4776218))

(assert (= (and b!4776218 c!814363) b!4776219))

(assert (= (and b!4776218 (not c!814363)) b!4776220))

(declare-fun m!5751058 () Bool)

(assert (=> b!4776219 m!5751058))

(assert (=> d!1526131 d!1526235))

(declare-fun d!1526237 () Bool)

(declare-fun res!2026953 () Bool)

(declare-fun e!2981691 () Bool)

(assert (=> d!1526237 (=> res!2026953 e!2981691)))

(assert (=> d!1526237 (= res!2026953 (and (is-Cons!53873 lt!1939079) (= (_1!31428 (h!60287 lt!1939079)) key!6641)))))

(assert (=> d!1526237 (= (containsKey!3746 lt!1939079 key!6641) e!2981691)))

(declare-fun b!4776221 () Bool)

(declare-fun e!2981692 () Bool)

(assert (=> b!4776221 (= e!2981691 e!2981692)))

(declare-fun res!2026954 () Bool)

(assert (=> b!4776221 (=> (not res!2026954) (not e!2981692))))

(assert (=> b!4776221 (= res!2026954 (is-Cons!53873 lt!1939079))))

(declare-fun b!4776222 () Bool)

(assert (=> b!4776222 (= e!2981692 (containsKey!3746 (t!361447 lt!1939079) key!6641))))

(assert (= (and d!1526237 (not res!2026953)) b!4776221))

(assert (= (and b!4776221 res!2026954) b!4776222))

(declare-fun m!5751060 () Bool)

(assert (=> b!4776222 m!5751060))

(assert (=> b!4776080 d!1526237))

(declare-fun d!1526239 () Bool)

(declare-fun lt!1939292 () Bool)

(declare-fun content!9616 (List!54001) (Set K!15427))

(assert (=> d!1526239 (= lt!1939292 (set.member key!6641 (content!9616 e!2981583)))))

(declare-fun e!2981698 () Bool)

(assert (=> d!1526239 (= lt!1939292 e!2981698)))

(declare-fun res!2026959 () Bool)

(assert (=> d!1526239 (=> (not res!2026959) (not e!2981698))))

(assert (=> d!1526239 (= res!2026959 (is-Cons!53877 e!2981583))))

(assert (=> d!1526239 (= (contains!17367 e!2981583 key!6641) lt!1939292)))

(declare-fun b!4776227 () Bool)

(declare-fun e!2981697 () Bool)

(assert (=> b!4776227 (= e!2981698 e!2981697)))

(declare-fun res!2026960 () Bool)

(assert (=> b!4776227 (=> res!2026960 e!2981697)))

(assert (=> b!4776227 (= res!2026960 (= (h!60291 e!2981583) key!6641))))

(declare-fun b!4776228 () Bool)

(assert (=> b!4776228 (= e!2981697 (contains!17367 (t!361451 e!2981583) key!6641))))

(assert (= (and d!1526239 res!2026959) b!4776227))

(assert (= (and b!4776227 (not res!2026960)) b!4776228))

(declare-fun m!5751062 () Bool)

(assert (=> d!1526239 m!5751062))

(declare-fun m!5751064 () Bool)

(assert (=> d!1526239 m!5751064))

(declare-fun m!5751066 () Bool)

(assert (=> b!4776228 m!5751066))

(assert (=> bm!334562 d!1526239))

(declare-fun d!1526241 () Bool)

(declare-fun res!2026965 () Bool)

(declare-fun e!2981703 () Bool)

(assert (=> d!1526241 (=> res!2026965 e!2981703)))

(assert (=> d!1526241 (= res!2026965 (or (is-Nil!53874 (toList!6633 lm!2709)) (is-Nil!53874 (t!361448 (toList!6633 lm!2709)))))))

(assert (=> d!1526241 (= (isStrictlySorted!832 (toList!6633 lm!2709)) e!2981703)))

(declare-fun b!4776233 () Bool)

(declare-fun e!2981704 () Bool)

(assert (=> b!4776233 (= e!2981703 e!2981704)))

(declare-fun res!2026966 () Bool)

(assert (=> b!4776233 (=> (not res!2026966) (not e!2981704))))

(assert (=> b!4776233 (= res!2026966 (bvslt (_1!31429 (h!60288 (toList!6633 lm!2709))) (_1!31429 (h!60288 (t!361448 (toList!6633 lm!2709))))))))

(declare-fun b!4776234 () Bool)

(assert (=> b!4776234 (= e!2981704 (isStrictlySorted!832 (t!361448 (toList!6633 lm!2709))))))

(assert (= (and d!1526241 (not res!2026965)) b!4776233))

(assert (= (and b!4776233 res!2026966) b!4776234))

(declare-fun m!5751068 () Bool)

(assert (=> b!4776234 m!5751068))

(assert (=> d!1526113 d!1526241))

(declare-fun b!4776235 () Bool)

(declare-fun e!2981706 () Option!12864)

(assert (=> b!4776235 (= e!2981706 (Some!12863 (h!60287 (t!361447 lt!1939079))))))

(declare-fun b!4776236 () Bool)

(declare-fun e!2981707 () Bool)

(declare-fun lt!1939293 () Option!12864)

(assert (=> b!4776236 (= e!2981707 (contains!17368 (t!361447 lt!1939079) (get!18280 lt!1939293)))))

(declare-fun b!4776237 () Bool)

(declare-fun res!2026970 () Bool)

(assert (=> b!4776237 (=> (not res!2026970) (not e!2981707))))

(assert (=> b!4776237 (= res!2026970 (= (_1!31428 (get!18280 lt!1939293)) key!6641))))

(declare-fun b!4776238 () Bool)

(declare-fun e!2981709 () Option!12864)

(assert (=> b!4776238 (= e!2981709 (getPair!763 (t!361447 (t!361447 lt!1939079)) key!6641))))

(declare-fun b!4776239 () Bool)

(assert (=> b!4776239 (= e!2981709 None!12863)))

(declare-fun d!1526243 () Bool)

(declare-fun e!2981705 () Bool)

(assert (=> d!1526243 e!2981705))

(declare-fun res!2026969 () Bool)

(assert (=> d!1526243 (=> res!2026969 e!2981705)))

(declare-fun e!2981708 () Bool)

(assert (=> d!1526243 (= res!2026969 e!2981708)))

(declare-fun res!2026968 () Bool)

(assert (=> d!1526243 (=> (not res!2026968) (not e!2981708))))

(assert (=> d!1526243 (= res!2026968 (isEmpty!29320 lt!1939293))))

(assert (=> d!1526243 (= lt!1939293 e!2981706)))

(declare-fun c!814364 () Bool)

(assert (=> d!1526243 (= c!814364 (and (is-Cons!53873 (t!361447 lt!1939079)) (= (_1!31428 (h!60287 (t!361447 lt!1939079))) key!6641)))))

(assert (=> d!1526243 (noDuplicateKeys!2278 (t!361447 lt!1939079))))

(assert (=> d!1526243 (= (getPair!763 (t!361447 lt!1939079) key!6641) lt!1939293)))

(declare-fun b!4776240 () Bool)

(assert (=> b!4776240 (= e!2981708 (not (containsKey!3746 (t!361447 lt!1939079) key!6641)))))

(declare-fun b!4776241 () Bool)

(assert (=> b!4776241 (= e!2981705 e!2981707)))

(declare-fun res!2026967 () Bool)

(assert (=> b!4776241 (=> (not res!2026967) (not e!2981707))))

(assert (=> b!4776241 (= res!2026967 (isDefined!10008 lt!1939293))))

(declare-fun b!4776242 () Bool)

(assert (=> b!4776242 (= e!2981706 e!2981709)))

(declare-fun c!814365 () Bool)

(assert (=> b!4776242 (= c!814365 (is-Cons!53873 (t!361447 lt!1939079)))))

(assert (= (and d!1526243 c!814364) b!4776235))

(assert (= (and d!1526243 (not c!814364)) b!4776242))

(assert (= (and b!4776242 c!814365) b!4776238))

(assert (= (and b!4776242 (not c!814365)) b!4776239))

(assert (= (and d!1526243 res!2026968) b!4776240))

(assert (= (and d!1526243 (not res!2026969)) b!4776241))

(assert (= (and b!4776241 res!2026967) b!4776237))

(assert (= (and b!4776237 res!2026970) b!4776236))

(declare-fun m!5751070 () Bool)

(assert (=> b!4776237 m!5751070))

(assert (=> b!4776236 m!5751070))

(assert (=> b!4776236 m!5751070))

(declare-fun m!5751072 () Bool)

(assert (=> b!4776236 m!5751072))

(declare-fun m!5751074 () Bool)

(assert (=> b!4776241 m!5751074))

(assert (=> b!4776240 m!5751060))

(declare-fun m!5751076 () Bool)

(assert (=> b!4776238 m!5751076))

(declare-fun m!5751078 () Bool)

(assert (=> d!1526243 m!5751078))

(declare-fun m!5751080 () Bool)

(assert (=> d!1526243 m!5751080))

(assert (=> b!4776078 d!1526243))

(declare-fun d!1526245 () Bool)

(declare-fun res!2026975 () Bool)

(declare-fun e!2981714 () Bool)

(assert (=> d!1526245 (=> res!2026975 e!2981714)))

(assert (=> d!1526245 (= res!2026975 (and (is-Cons!53873 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (= (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) key!6641)))))

(assert (=> d!1526245 (= (containsKey!3749 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641) e!2981714)))

(declare-fun b!4776247 () Bool)

(declare-fun e!2981715 () Bool)

(assert (=> b!4776247 (= e!2981714 e!2981715)))

(declare-fun res!2026976 () Bool)

(assert (=> b!4776247 (=> (not res!2026976) (not e!2981715))))

(assert (=> b!4776247 (= res!2026976 (is-Cons!53873 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))

(declare-fun b!4776248 () Bool)

(assert (=> b!4776248 (= e!2981715 (containsKey!3749 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) key!6641))))

(assert (= (and d!1526245 (not res!2026975)) b!4776247))

(assert (= (and b!4776247 res!2026976) b!4776248))

(declare-fun m!5751082 () Bool)

(assert (=> b!4776248 m!5751082))

(assert (=> b!4776055 d!1526245))

(declare-fun d!1526247 () Bool)

(assert (=> d!1526247 (containsKey!3749 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641)))

(declare-fun lt!1939296 () Unit!138868)

(declare-fun choose!34147 (List!53997 K!15427) Unit!138868)

(assert (=> d!1526247 (= lt!1939296 (choose!34147 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(assert (=> d!1526247 (invariantList!1681 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))

(assert (=> d!1526247 (= (lemmaInGetKeysListThenContainsKey!1024 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641) lt!1939296)))

(declare-fun bs!1150658 () Bool)

(assert (= bs!1150658 d!1526247))

(assert (=> bs!1150658 m!5750868))

(declare-fun m!5751084 () Bool)

(assert (=> bs!1150658 m!5751084))

(declare-fun m!5751086 () Bool)

(assert (=> bs!1150658 m!5751086))

(assert (=> b!4776055 d!1526247))

(declare-fun d!1526249 () Bool)

(declare-fun lt!1939299 () Bool)

(declare-fun content!9617 (List!53997) (Set tuple2!56268))

(assert (=> d!1526249 (= lt!1939299 (set.member (get!18280 lt!1939178) (content!9617 lt!1939079)))))

(declare-fun e!2981721 () Bool)

(assert (=> d!1526249 (= lt!1939299 e!2981721)))

(declare-fun res!2026981 () Bool)

(assert (=> d!1526249 (=> (not res!2026981) (not e!2981721))))

(assert (=> d!1526249 (= res!2026981 (is-Cons!53873 lt!1939079))))

(assert (=> d!1526249 (= (contains!17368 lt!1939079 (get!18280 lt!1939178)) lt!1939299)))

(declare-fun b!4776253 () Bool)

(declare-fun e!2981720 () Bool)

(assert (=> b!4776253 (= e!2981721 e!2981720)))

(declare-fun res!2026982 () Bool)

(assert (=> b!4776253 (=> res!2026982 e!2981720)))

(assert (=> b!4776253 (= res!2026982 (= (h!60287 lt!1939079) (get!18280 lt!1939178)))))

(declare-fun b!4776254 () Bool)

(assert (=> b!4776254 (= e!2981720 (contains!17368 (t!361447 lt!1939079) (get!18280 lt!1939178)))))

(assert (= (and d!1526249 res!2026981) b!4776253))

(assert (= (and b!4776253 (not res!2026982)) b!4776254))

(declare-fun m!5751088 () Bool)

(assert (=> d!1526249 m!5751088))

(assert (=> d!1526249 m!5750882))

(declare-fun m!5751090 () Bool)

(assert (=> d!1526249 m!5751090))

(assert (=> b!4776254 m!5750882))

(declare-fun m!5751092 () Bool)

(assert (=> b!4776254 m!5751092))

(assert (=> b!4776076 d!1526249))

(declare-fun d!1526251 () Bool)

(assert (=> d!1526251 (= (get!18280 lt!1939178) (v!48024 lt!1939178))))

(assert (=> b!4776076 d!1526251))

(declare-fun d!1526253 () Bool)

(declare-fun res!2026983 () Bool)

(declare-fun e!2981722 () Bool)

(assert (=> d!1526253 (=> res!2026983 e!2981722)))

(assert (=> d!1526253 (= res!2026983 (and (is-Cons!53873 (_2!31429 (h!60288 (tail!9164 (toList!6633 lm!2709))))) (= (_1!31428 (h!60287 (_2!31429 (h!60288 (tail!9164 (toList!6633 lm!2709)))))) key!6641)))))

(assert (=> d!1526253 (= (containsKey!3746 (_2!31429 (h!60288 (tail!9164 (toList!6633 lm!2709)))) key!6641) e!2981722)))

(declare-fun b!4776255 () Bool)

(declare-fun e!2981723 () Bool)

(assert (=> b!4776255 (= e!2981722 e!2981723)))

(declare-fun res!2026984 () Bool)

(assert (=> b!4776255 (=> (not res!2026984) (not e!2981723))))

(assert (=> b!4776255 (= res!2026984 (is-Cons!53873 (_2!31429 (h!60288 (tail!9164 (toList!6633 lm!2709))))))))

(declare-fun b!4776256 () Bool)

(assert (=> b!4776256 (= e!2981723 (containsKey!3746 (t!361447 (_2!31429 (h!60288 (tail!9164 (toList!6633 lm!2709))))) key!6641))))

(assert (= (and d!1526253 (not res!2026983)) b!4776255))

(assert (= (and b!4776255 res!2026984) b!4776256))

(declare-fun m!5751094 () Bool)

(assert (=> b!4776256 m!5751094))

(assert (=> b!4775972 d!1526253))

(declare-fun d!1526255 () Bool)

(declare-fun lt!1939300 () Bool)

(assert (=> d!1526255 (= lt!1939300 (set.member key!6641 (content!9616 (keys!19597 (extractMap!2306 (toList!6633 lm!2709))))))))

(declare-fun e!2981725 () Bool)

(assert (=> d!1526255 (= lt!1939300 e!2981725)))

(declare-fun res!2026985 () Bool)

(assert (=> d!1526255 (=> (not res!2026985) (not e!2981725))))

(assert (=> d!1526255 (= res!2026985 (is-Cons!53877 (keys!19597 (extractMap!2306 (toList!6633 lm!2709)))))))

(assert (=> d!1526255 (= (contains!17367 (keys!19597 (extractMap!2306 (toList!6633 lm!2709))) key!6641) lt!1939300)))

(declare-fun b!4776257 () Bool)

(declare-fun e!2981724 () Bool)

(assert (=> b!4776257 (= e!2981725 e!2981724)))

(declare-fun res!2026986 () Bool)

(assert (=> b!4776257 (=> res!2026986 e!2981724)))

(assert (=> b!4776257 (= res!2026986 (= (h!60291 (keys!19597 (extractMap!2306 (toList!6633 lm!2709)))) key!6641))))

(declare-fun b!4776258 () Bool)

(assert (=> b!4776258 (= e!2981724 (contains!17367 (t!361451 (keys!19597 (extractMap!2306 (toList!6633 lm!2709)))) key!6641))))

(assert (= (and d!1526255 res!2026985) b!4776257))

(assert (= (and b!4776257 (not res!2026986)) b!4776258))

(assert (=> d!1526255 m!5750862))

(declare-fun m!5751096 () Bool)

(assert (=> d!1526255 m!5751096))

(declare-fun m!5751098 () Bool)

(assert (=> d!1526255 m!5751098))

(declare-fun m!5751100 () Bool)

(assert (=> b!4776258 m!5751100))

(assert (=> b!4776050 d!1526255))

(declare-fun b!4776266 () Bool)

(assert (=> b!4776266 true))

(declare-fun d!1526257 () Bool)

(declare-fun e!2981728 () Bool)

(assert (=> d!1526257 e!2981728))

(declare-fun res!2026994 () Bool)

(assert (=> d!1526257 (=> (not res!2026994) (not e!2981728))))

(declare-fun lt!1939303 () List!54001)

(declare-fun noDuplicate!888 (List!54001) Bool)

(assert (=> d!1526257 (= res!2026994 (noDuplicate!888 lt!1939303))))

(assert (=> d!1526257 (= lt!1939303 (getKeysList!1025 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))

(assert (=> d!1526257 (= (keys!19597 (extractMap!2306 (toList!6633 lm!2709))) lt!1939303)))

(declare-fun b!4776265 () Bool)

(declare-fun res!2026995 () Bool)

(assert (=> b!4776265 (=> (not res!2026995) (not e!2981728))))

(declare-fun length!632 (List!54001) Int)

(declare-fun length!633 (List!53997) Int)

(assert (=> b!4776265 (= res!2026995 (= (length!632 lt!1939303) (length!633 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))))

(declare-fun res!2026993 () Bool)

(assert (=> b!4776266 (=> (not res!2026993) (not e!2981728))))

(declare-fun lambda!226798 () Int)

(declare-fun forall!12045 (List!54001 Int) Bool)

(assert (=> b!4776266 (= res!2026993 (forall!12045 lt!1939303 lambda!226798))))

(declare-fun lambda!226799 () Int)

(declare-fun b!4776267 () Bool)

(declare-fun map!12137 (List!53997 Int) List!54001)

(assert (=> b!4776267 (= e!2981728 (= (content!9616 lt!1939303) (content!9616 (map!12137 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) lambda!226799))))))

(assert (= (and d!1526257 res!2026994) b!4776265))

(assert (= (and b!4776265 res!2026995) b!4776266))

(assert (= (and b!4776266 res!2026993) b!4776267))

(declare-fun m!5751102 () Bool)

(assert (=> d!1526257 m!5751102))

(assert (=> d!1526257 m!5750866))

(declare-fun m!5751104 () Bool)

(assert (=> b!4776265 m!5751104))

(declare-fun m!5751106 () Bool)

(assert (=> b!4776265 m!5751106))

(declare-fun m!5751108 () Bool)

(assert (=> b!4776266 m!5751108))

(declare-fun m!5751110 () Bool)

(assert (=> b!4776267 m!5751110))

(declare-fun m!5751112 () Bool)

(assert (=> b!4776267 m!5751112))

(assert (=> b!4776267 m!5751112))

(declare-fun m!5751114 () Bool)

(assert (=> b!4776267 m!5751114))

(assert (=> b!4776050 d!1526257))

(declare-fun lt!1939304 () Bool)

(declare-fun d!1526259 () Bool)

(assert (=> d!1526259 (= lt!1939304 (set.member (tuple2!56271 lt!1939077 lt!1939079) (content!9614 (toList!6633 lm!2709))))))

(declare-fun e!2981729 () Bool)

(assert (=> d!1526259 (= lt!1939304 e!2981729)))

(declare-fun res!2026996 () Bool)

(assert (=> d!1526259 (=> (not res!2026996) (not e!2981729))))

(assert (=> d!1526259 (= res!2026996 (is-Cons!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526259 (= (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939077 lt!1939079)) lt!1939304)))

(declare-fun b!4776270 () Bool)

(declare-fun e!2981730 () Bool)

(assert (=> b!4776270 (= e!2981729 e!2981730)))

(declare-fun res!2026997 () Bool)

(assert (=> b!4776270 (=> res!2026997 e!2981730)))

(assert (=> b!4776270 (= res!2026997 (= (h!60288 (toList!6633 lm!2709)) (tuple2!56271 lt!1939077 lt!1939079)))))

(declare-fun b!4776271 () Bool)

(assert (=> b!4776271 (= e!2981730 (contains!17361 (t!361448 (toList!6633 lm!2709)) (tuple2!56271 lt!1939077 lt!1939079)))))

(assert (= (and d!1526259 res!2026996) b!4776270))

(assert (= (and b!4776270 (not res!2026997)) b!4776271))

(assert (=> d!1526259 m!5750834))

(declare-fun m!5751116 () Bool)

(assert (=> d!1526259 m!5751116))

(declare-fun m!5751118 () Bool)

(assert (=> b!4776271 m!5751118))

(assert (=> d!1526185 d!1526259))

(declare-fun d!1526261 () Bool)

(assert (=> d!1526261 (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939077 lt!1939079))))

(assert (=> d!1526261 true))

(declare-fun _$41!469 () Unit!138868)

(assert (=> d!1526261 (= (choose!34139 lm!2709 lt!1939077 lt!1939079) _$41!469)))

(declare-fun bs!1150659 () Bool)

(assert (= bs!1150659 d!1526261))

(assert (=> bs!1150659 m!5750940))

(assert (=> d!1526185 d!1526261))

(assert (=> d!1526185 d!1526137))

(declare-fun bs!1150660 () Bool)

(declare-fun b!4776296 () Bool)

(assert (= bs!1150660 (and b!4776296 b!4776266)))

(declare-fun lambda!226808 () Int)

(assert (=> bs!1150660 (= (= (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (= lambda!226808 lambda!226798))))

(assert (=> b!4776296 true))

(declare-fun bs!1150661 () Bool)

(declare-fun b!4776298 () Bool)

(assert (= bs!1150661 (and b!4776298 b!4776266)))

(declare-fun lambda!226809 () Int)

(assert (=> bs!1150661 (= (= (Cons!53873 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (= lambda!226809 lambda!226798))))

(declare-fun bs!1150662 () Bool)

(assert (= bs!1150662 (and b!4776298 b!4776296)))

(assert (=> bs!1150662 (= (= (Cons!53873 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) (= lambda!226809 lambda!226808))))

(assert (=> b!4776298 true))

(declare-fun bs!1150663 () Bool)

(declare-fun b!4776297 () Bool)

(assert (= bs!1150663 (and b!4776297 b!4776266)))

(declare-fun lambda!226810 () Int)

(assert (=> bs!1150663 (= lambda!226810 lambda!226798)))

(declare-fun bs!1150664 () Bool)

(assert (= bs!1150664 (and b!4776297 b!4776296)))

(assert (=> bs!1150664 (= (= (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) (= lambda!226810 lambda!226808))))

(declare-fun bs!1150665 () Bool)

(assert (= bs!1150665 (and b!4776297 b!4776298)))

(assert (=> bs!1150665 (= (= (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) (Cons!53873 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))) (= lambda!226810 lambda!226809))))

(assert (=> b!4776297 true))

(declare-fun bs!1150666 () Bool)

(declare-fun b!4776293 () Bool)

(assert (= bs!1150666 (and b!4776293 b!4776267)))

(declare-fun lambda!226811 () Int)

(assert (=> bs!1150666 (= lambda!226811 lambda!226799)))

(declare-fun b!4776291 () Bool)

(declare-fun e!2981739 () Unit!138868)

(declare-fun Unit!138878 () Unit!138868)

(assert (=> b!4776291 (= e!2981739 Unit!138878)))

(declare-fun b!4776292 () Bool)

(declare-fun e!2981742 () List!54001)

(assert (=> b!4776292 (= e!2981742 Nil!53877)))

(declare-fun d!1526263 () Bool)

(declare-fun e!2981740 () Bool)

(assert (=> d!1526263 e!2981740))

(declare-fun res!2027006 () Bool)

(assert (=> d!1526263 (=> (not res!2027006) (not e!2981740))))

(declare-fun lt!1939323 () List!54001)

(assert (=> d!1526263 (= res!2027006 (noDuplicate!888 lt!1939323))))

(assert (=> d!1526263 (= lt!1939323 e!2981742)))

(declare-fun c!814373 () Bool)

(assert (=> d!1526263 (= c!814373 (is-Cons!53873 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))

(assert (=> d!1526263 (invariantList!1681 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))

(assert (=> d!1526263 (= (getKeysList!1025 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) lt!1939323)))

(assert (=> b!4776293 (= e!2981740 (= (content!9616 lt!1939323) (content!9616 (map!12137 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) lambda!226811))))))

(declare-fun b!4776294 () Bool)

(declare-fun res!2027004 () Bool)

(assert (=> b!4776294 (=> (not res!2027004) (not e!2981740))))

(assert (=> b!4776294 (= res!2027004 (= (length!632 lt!1939323) (length!633 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))))

(declare-fun b!4776295 () Bool)

(assert (=> b!4776295 false))

(declare-fun Unit!138879 () Unit!138868)

(assert (=> b!4776295 (= e!2981739 Unit!138879)))

(assert (=> b!4776296 false))

(declare-fun lt!1939325 () Unit!138868)

(declare-fun forallContained!4002 (List!54001 Int K!15427) Unit!138868)

(assert (=> b!4776296 (= lt!1939325 (forallContained!4002 (getKeysList!1025 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) lambda!226808 (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))))

(declare-fun e!2981741 () Unit!138868)

(declare-fun Unit!138880 () Unit!138868)

(assert (=> b!4776296 (= e!2981741 Unit!138880)))

(declare-fun res!2027005 () Bool)

(assert (=> b!4776297 (=> (not res!2027005) (not e!2981740))))

(assert (=> b!4776297 (= res!2027005 (forall!12045 lt!1939323 lambda!226810))))

(assert (=> b!4776298 (= e!2981742 (Cons!53877 (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) (getKeysList!1025 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))))

(declare-fun c!814372 () Bool)

(assert (=> b!4776298 (= c!814372 (containsKey!3749 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))))

(declare-fun lt!1939320 () Unit!138868)

(assert (=> b!4776298 (= lt!1939320 e!2981739)))

(declare-fun c!814374 () Bool)

(assert (=> b!4776298 (= c!814374 (contains!17367 (getKeysList!1025 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))))

(declare-fun lt!1939324 () Unit!138868)

(assert (=> b!4776298 (= lt!1939324 e!2981741)))

(declare-fun lt!1939319 () List!54001)

(assert (=> b!4776298 (= lt!1939319 (getKeysList!1025 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))))

(declare-fun lt!1939321 () Unit!138868)

(declare-fun lemmaForallContainsAddHeadPreserves!306 (List!53997 List!54001 tuple2!56268) Unit!138868)

(assert (=> b!4776298 (= lt!1939321 (lemmaForallContainsAddHeadPreserves!306 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) lt!1939319 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))))

(assert (=> b!4776298 (forall!12045 lt!1939319 lambda!226809)))

(declare-fun lt!1939322 () Unit!138868)

(assert (=> b!4776298 (= lt!1939322 lt!1939321)))

(declare-fun b!4776299 () Bool)

(declare-fun Unit!138881 () Unit!138868)

(assert (=> b!4776299 (= e!2981741 Unit!138881)))

(assert (= (and d!1526263 c!814373) b!4776298))

(assert (= (and d!1526263 (not c!814373)) b!4776292))

(assert (= (and b!4776298 c!814372) b!4776295))

(assert (= (and b!4776298 (not c!814372)) b!4776291))

(assert (= (and b!4776298 c!814374) b!4776296))

(assert (= (and b!4776298 (not c!814374)) b!4776299))

(assert (= (and d!1526263 res!2027006) b!4776294))

(assert (= (and b!4776294 res!2027004) b!4776297))

(assert (= (and b!4776297 res!2027005) b!4776293))

(declare-fun m!5751120 () Bool)

(assert (=> b!4776296 m!5751120))

(assert (=> b!4776296 m!5751120))

(declare-fun m!5751122 () Bool)

(assert (=> b!4776296 m!5751122))

(assert (=> b!4776298 m!5751120))

(declare-fun m!5751124 () Bool)

(assert (=> b!4776298 m!5751124))

(declare-fun m!5751126 () Bool)

(assert (=> b!4776298 m!5751126))

(assert (=> b!4776298 m!5751120))

(declare-fun m!5751128 () Bool)

(assert (=> b!4776298 m!5751128))

(declare-fun m!5751130 () Bool)

(assert (=> b!4776298 m!5751130))

(declare-fun m!5751132 () Bool)

(assert (=> b!4776297 m!5751132))

(declare-fun m!5751134 () Bool)

(assert (=> d!1526263 m!5751134))

(assert (=> d!1526263 m!5751086))

(declare-fun m!5751136 () Bool)

(assert (=> b!4776294 m!5751136))

(assert (=> b!4776294 m!5751106))

(declare-fun m!5751138 () Bool)

(assert (=> b!4776293 m!5751138))

(declare-fun m!5751140 () Bool)

(assert (=> b!4776293 m!5751140))

(assert (=> b!4776293 m!5751140))

(declare-fun m!5751142 () Bool)

(assert (=> b!4776293 m!5751142))

(assert (=> b!4776051 d!1526263))

(declare-fun d!1526265 () Bool)

(declare-fun isEmpty!29323 (Option!12866) Bool)

(assert (=> d!1526265 (= (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077)) (not (isEmpty!29323 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077))))))

(declare-fun bs!1150667 () Bool)

(assert (= bs!1150667 d!1526265))

(assert (=> bs!1150667 m!5750814))

(declare-fun m!5751144 () Bool)

(assert (=> bs!1150667 m!5751144))

(assert (=> b!4776005 d!1526265))

(declare-fun b!4776304 () Bool)

(declare-fun e!2981744 () Option!12866)

(assert (=> b!4776304 (= e!2981744 (getValueByKey!2249 (t!361448 (toList!6633 lm!2709)) lt!1939077))))

(declare-fun b!4776303 () Bool)

(declare-fun e!2981743 () Option!12866)

(assert (=> b!4776303 (= e!2981743 e!2981744)))

(declare-fun c!814376 () Bool)

(assert (=> b!4776303 (= c!814376 (and (is-Cons!53874 (toList!6633 lm!2709)) (not (= (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939077))))))

(declare-fun b!4776302 () Bool)

(assert (=> b!4776302 (= e!2981743 (Some!12865 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(declare-fun b!4776305 () Bool)

(assert (=> b!4776305 (= e!2981744 None!12865)))

(declare-fun d!1526267 () Bool)

(declare-fun c!814375 () Bool)

(assert (=> d!1526267 (= c!814375 (and (is-Cons!53874 (toList!6633 lm!2709)) (= (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939077)))))

(assert (=> d!1526267 (= (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077) e!2981743)))

(assert (= (and d!1526267 c!814375) b!4776302))

(assert (= (and d!1526267 (not c!814375)) b!4776303))

(assert (= (and b!4776303 c!814376) b!4776304))

(assert (= (and b!4776303 (not c!814376)) b!4776305))

(declare-fun m!5751146 () Bool)

(assert (=> b!4776304 m!5751146))

(assert (=> b!4776005 d!1526267))

(declare-fun d!1526269 () Bool)

(assert (=> d!1526269 (isDefined!10011 (getValueByKey!2250 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(declare-fun lt!1939328 () Unit!138868)

(declare-fun choose!34148 (List!53997 K!15427) Unit!138868)

(assert (=> d!1526269 (= lt!1939328 (choose!34148 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(assert (=> d!1526269 (invariantList!1681 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))

(assert (=> d!1526269 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2044 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641) lt!1939328)))

(declare-fun bs!1150668 () Bool)

(assert (= bs!1150668 d!1526269))

(assert (=> bs!1150668 m!5750874))

(assert (=> bs!1150668 m!5750874))

(assert (=> bs!1150668 m!5750876))

(declare-fun m!5751148 () Bool)

(assert (=> bs!1150668 m!5751148))

(assert (=> bs!1150668 m!5751086))

(assert (=> b!4776053 d!1526269))

(declare-fun d!1526271 () Bool)

(declare-fun isEmpty!29324 (Option!12867) Bool)

(assert (=> d!1526271 (= (isDefined!10011 (getValueByKey!2250 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641)) (not (isEmpty!29324 (getValueByKey!2250 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))))

(declare-fun bs!1150669 () Bool)

(assert (= bs!1150669 d!1526271))

(assert (=> bs!1150669 m!5750874))

(declare-fun m!5751150 () Bool)

(assert (=> bs!1150669 m!5751150))

(assert (=> b!4776053 d!1526271))

(declare-fun b!4776315 () Bool)

(declare-fun e!2981749 () Option!12867)

(declare-fun e!2981750 () Option!12867)

(assert (=> b!4776315 (= e!2981749 e!2981750)))

(declare-fun c!814382 () Bool)

(assert (=> b!4776315 (= c!814382 (and (is-Cons!53873 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (not (= (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) key!6641))))))

(declare-fun b!4776314 () Bool)

(assert (=> b!4776314 (= e!2981749 (Some!12866 (_2!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))))))))

(declare-fun d!1526273 () Bool)

(declare-fun c!814381 () Bool)

(assert (=> d!1526273 (= c!814381 (and (is-Cons!53873 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) (= (_1!31428 (h!60287 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))) key!6641)))))

(assert (=> d!1526273 (= (getValueByKey!2250 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641) e!2981749)))

(declare-fun b!4776316 () Bool)

(assert (=> b!4776316 (= e!2981750 (getValueByKey!2250 (t!361447 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) key!6641))))

(declare-fun b!4776317 () Bool)

(assert (=> b!4776317 (= e!2981750 None!12866)))

(assert (= (and d!1526273 c!814381) b!4776314))

(assert (= (and d!1526273 (not c!814381)) b!4776315))

(assert (= (and b!4776315 c!814382) b!4776316))

(assert (= (and b!4776315 (not c!814382)) b!4776317))

(declare-fun m!5751152 () Bool)

(assert (=> b!4776316 m!5751152))

(assert (=> b!4776053 d!1526273))

(declare-fun d!1526275 () Bool)

(assert (=> d!1526275 (contains!17367 (getKeysList!1025 (toList!6634 (extractMap!2306 (toList!6633 lm!2709)))) key!6641)))

(declare-fun lt!1939331 () Unit!138868)

(declare-fun choose!34149 (List!53997 K!15427) Unit!138868)

(assert (=> d!1526275 (= lt!1939331 (choose!34149 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641))))

(assert (=> d!1526275 (invariantList!1681 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))))))

(assert (=> d!1526275 (= (lemmaInListThenGetKeysListContains!1020 (toList!6634 (extractMap!2306 (toList!6633 lm!2709))) key!6641) lt!1939331)))

(declare-fun bs!1150670 () Bool)

(assert (= bs!1150670 d!1526275))

(assert (=> bs!1150670 m!5750866))

(assert (=> bs!1150670 m!5750866))

(declare-fun m!5751154 () Bool)

(assert (=> bs!1150670 m!5751154))

(declare-fun m!5751156 () Bool)

(assert (=> bs!1150670 m!5751156))

(assert (=> bs!1150670 m!5751086))

(assert (=> b!4776053 d!1526275))

(declare-fun d!1526277 () Bool)

(declare-fun res!2027007 () Bool)

(declare-fun e!2981751 () Bool)

(assert (=> d!1526277 (=> res!2027007 e!2981751)))

(assert (=> d!1526277 (= res!2027007 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526277 (= (forall!12043 (toList!6633 lm!2709) lambda!226777) e!2981751)))

(declare-fun b!4776318 () Bool)

(declare-fun e!2981752 () Bool)

(assert (=> b!4776318 (= e!2981751 e!2981752)))

(declare-fun res!2027008 () Bool)

(assert (=> b!4776318 (=> (not res!2027008) (not e!2981752))))

(assert (=> b!4776318 (= res!2027008 (dynLambda!21992 lambda!226777 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776319 () Bool)

(assert (=> b!4776319 (= e!2981752 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226777))))

(assert (= (and d!1526277 (not res!2027007)) b!4776318))

(assert (= (and b!4776318 res!2027008) b!4776319))

(declare-fun b_lambda!184973 () Bool)

(assert (=> (not b_lambda!184973) (not b!4776318)))

(declare-fun m!5751158 () Bool)

(assert (=> b!4776318 m!5751158))

(declare-fun m!5751160 () Bool)

(assert (=> b!4776319 m!5751160))

(assert (=> d!1526173 d!1526277))

(declare-fun bs!1150671 () Bool)

(declare-fun d!1526279 () Bool)

(assert (= bs!1150671 (and d!1526279 d!1526157)))

(declare-fun lambda!226814 () Int)

(assert (=> bs!1150671 (= lambda!226814 lambda!226764)))

(declare-fun bs!1150672 () Bool)

(assert (= bs!1150672 (and d!1526279 d!1526109)))

(assert (=> bs!1150672 (not (= lambda!226814 lambda!226746))))

(declare-fun bs!1150673 () Bool)

(assert (= bs!1150673 (and d!1526279 d!1526163)))

(assert (=> bs!1150673 (= lambda!226814 lambda!226767)))

(declare-fun bs!1150674 () Bool)

(assert (= bs!1150674 (and d!1526279 d!1526143)))

(assert (=> bs!1150674 (= lambda!226814 lambda!226758)))

(declare-fun bs!1150675 () Bool)

(assert (= bs!1150675 (and d!1526279 d!1526173)))

(assert (=> bs!1150675 (= lambda!226814 lambda!226777)))

(declare-fun bs!1150676 () Bool)

(assert (= bs!1150676 (and d!1526279 start!489528)))

(assert (=> bs!1150676 (= lambda!226814 lambda!226736)))

(declare-fun bs!1150677 () Bool)

(assert (= bs!1150677 (and d!1526279 d!1526133)))

(assert (=> bs!1150677 (= lambda!226814 lambda!226752)))

(declare-fun bs!1150678 () Bool)

(assert (= bs!1150678 (and d!1526279 d!1526123)))

(assert (=> bs!1150678 (= lambda!226814 lambda!226749)))

(assert (=> d!1526279 (isDefined!10008 (getPair!763 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1939349 () Unit!138868)

(assert (=> d!1526279 (= lt!1939349 (forallContained!4000 (toList!6633 lm!2709) lambda!226814 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))))

(declare-fun lt!1939351 () Unit!138868)

(declare-fun lt!1939348 () Unit!138868)

(assert (=> d!1526279 (= lt!1939351 lt!1939348)))

(declare-fun lt!1939347 () (_ BitVec 64))

(declare-fun lt!1939352 () List!53997)

(assert (=> d!1526279 (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939347 lt!1939352))))

(assert (=> d!1526279 (= lt!1939348 (lemmaGetValueImpliesTupleContained!566 lm!2709 lt!1939347 lt!1939352))))

(assert (=> d!1526279 (= lt!1939352 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))

(assert (=> d!1526279 (= lt!1939347 (hash!4747 hashF!1687 key!6641))))

(declare-fun lt!1939346 () Unit!138868)

(declare-fun lt!1939350 () Unit!138868)

(assert (=> d!1526279 (= lt!1939346 lt!1939350)))

(assert (=> d!1526279 (contains!17362 lm!2709 (hash!4747 hashF!1687 key!6641))))

(assert (=> d!1526279 (= lt!1939350 (lemmaInGenMapThenLongMapContainsHash!979 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526279 true))

(declare-fun _$25!301 () Unit!138868)

(assert (=> d!1526279 (= (choose!34138 lm!2709 key!6641 hashF!1687) _$25!301)))

(declare-fun bs!1150679 () Bool)

(assert (= bs!1150679 d!1526279))

(assert (=> bs!1150679 m!5750690))

(assert (=> bs!1150679 m!5750690))

(assert (=> bs!1150679 m!5750930))

(assert (=> bs!1150679 m!5750694))

(declare-fun m!5751162 () Bool)

(assert (=> bs!1150679 m!5751162))

(declare-fun m!5751164 () Bool)

(assert (=> bs!1150679 m!5751164))

(declare-fun m!5751166 () Bool)

(assert (=> bs!1150679 m!5751166))

(assert (=> bs!1150679 m!5750690))

(assert (=> bs!1150679 m!5750852))

(assert (=> bs!1150679 m!5750930))

(assert (=> bs!1150679 m!5750936))

(assert (=> bs!1150679 m!5750936))

(assert (=> bs!1150679 m!5750938))

(assert (=> d!1526173 d!1526279))

(assert (=> d!1526133 d!1526127))

(assert (=> d!1526133 d!1526131))

(declare-fun d!1526281 () Bool)

(assert (=> d!1526281 (not (containsKey!3746 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))) key!6641))))

(assert (=> d!1526281 true))

(declare-fun _$39!379 () Unit!138868)

(assert (=> d!1526281 (= (choose!34134 lm!2709 key!6641 (_1!31429 (h!60288 (toList!6633 lm!2709))) hashF!1687) _$39!379)))

(declare-fun bs!1150680 () Bool)

(assert (= bs!1150680 d!1526281))

(assert (=> bs!1150680 m!5750710))

(assert (=> bs!1150680 m!5750710))

(assert (=> bs!1150680 m!5750712))

(assert (=> d!1526133 d!1526281))

(declare-fun d!1526283 () Bool)

(declare-fun res!2027009 () Bool)

(declare-fun e!2981753 () Bool)

(assert (=> d!1526283 (=> res!2027009 e!2981753)))

(assert (=> d!1526283 (= res!2027009 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526283 (= (forall!12043 (toList!6633 lm!2709) lambda!226752) e!2981753)))

(declare-fun b!4776320 () Bool)

(declare-fun e!2981754 () Bool)

(assert (=> b!4776320 (= e!2981753 e!2981754)))

(declare-fun res!2027010 () Bool)

(assert (=> b!4776320 (=> (not res!2027010) (not e!2981754))))

(assert (=> b!4776320 (= res!2027010 (dynLambda!21992 lambda!226752 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776321 () Bool)

(assert (=> b!4776321 (= e!2981754 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226752))))

(assert (= (and d!1526283 (not res!2027009)) b!4776320))

(assert (= (and b!4776320 res!2027010) b!4776321))

(declare-fun b_lambda!184975 () Bool)

(assert (=> (not b_lambda!184975) (not b!4776320)))

(declare-fun m!5751168 () Bool)

(assert (=> b!4776320 m!5751168))

(declare-fun m!5751170 () Bool)

(assert (=> b!4776321 m!5751170))

(assert (=> d!1526133 d!1526283))

(declare-fun d!1526285 () Bool)

(declare-fun lt!1939353 () Bool)

(assert (=> d!1526285 (= lt!1939353 (set.member lt!1939068 (content!9614 (t!361448 (toList!6633 lm!2709)))))))

(declare-fun e!2981755 () Bool)

(assert (=> d!1526285 (= lt!1939353 e!2981755)))

(declare-fun res!2027011 () Bool)

(assert (=> d!1526285 (=> (not res!2027011) (not e!2981755))))

(assert (=> d!1526285 (= res!2027011 (is-Cons!53874 (t!361448 (toList!6633 lm!2709))))))

(assert (=> d!1526285 (= (contains!17361 (t!361448 (toList!6633 lm!2709)) lt!1939068) lt!1939353)))

(declare-fun b!4776322 () Bool)

(declare-fun e!2981756 () Bool)

(assert (=> b!4776322 (= e!2981755 e!2981756)))

(declare-fun res!2027012 () Bool)

(assert (=> b!4776322 (=> res!2027012 e!2981756)))

(assert (=> b!4776322 (= res!2027012 (= (h!60288 (t!361448 (toList!6633 lm!2709))) lt!1939068))))

(declare-fun b!4776323 () Bool)

(assert (=> b!4776323 (= e!2981756 (contains!17361 (t!361448 (t!361448 (toList!6633 lm!2709))) lt!1939068))))

(assert (= (and d!1526285 res!2027011) b!4776322))

(assert (= (and b!4776322 (not res!2027012)) b!4776323))

(declare-fun m!5751172 () Bool)

(assert (=> d!1526285 m!5751172))

(declare-fun m!5751174 () Bool)

(assert (=> d!1526285 m!5751174))

(declare-fun m!5751176 () Bool)

(assert (=> b!4776323 m!5751176))

(assert (=> b!4776017 d!1526285))

(declare-fun d!1526287 () Bool)

(declare-fun res!2027013 () Bool)

(declare-fun e!2981757 () Bool)

(assert (=> d!1526287 (=> res!2027013 e!2981757)))

(assert (=> d!1526287 (= res!2027013 (is-Nil!53874 (t!361448 (toList!6633 lm!2709))))))

(assert (=> d!1526287 (= (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226736) e!2981757)))

(declare-fun b!4776324 () Bool)

(declare-fun e!2981758 () Bool)

(assert (=> b!4776324 (= e!2981757 e!2981758)))

(declare-fun res!2027014 () Bool)

(assert (=> b!4776324 (=> (not res!2027014) (not e!2981758))))

(assert (=> b!4776324 (= res!2027014 (dynLambda!21992 lambda!226736 (h!60288 (t!361448 (toList!6633 lm!2709)))))))

(declare-fun b!4776325 () Bool)

(assert (=> b!4776325 (= e!2981758 (forall!12043 (t!361448 (t!361448 (toList!6633 lm!2709))) lambda!226736))))

(assert (= (and d!1526287 (not res!2027013)) b!4776324))

(assert (= (and b!4776324 res!2027014) b!4776325))

(declare-fun b_lambda!184977 () Bool)

(assert (=> (not b_lambda!184977) (not b!4776324)))

(declare-fun m!5751178 () Bool)

(assert (=> b!4776324 m!5751178))

(declare-fun m!5751180 () Bool)

(assert (=> b!4776325 m!5751180))

(assert (=> b!4775971 d!1526287))

(declare-fun b!4776328 () Bool)

(declare-fun e!2981760 () Option!12866)

(assert (=> b!4776328 (= e!2981760 (getValueByKey!2249 (t!361448 (toList!6633 lm!2709)) lt!1939219))))

(declare-fun b!4776327 () Bool)

(declare-fun e!2981759 () Option!12866)

(assert (=> b!4776327 (= e!2981759 e!2981760)))

(declare-fun c!814384 () Bool)

(assert (=> b!4776327 (= c!814384 (and (is-Cons!53874 (toList!6633 lm!2709)) (not (= (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939219))))))

(declare-fun b!4776326 () Bool)

(assert (=> b!4776326 (= e!2981759 (Some!12865 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(declare-fun b!4776329 () Bool)

(assert (=> b!4776329 (= e!2981760 None!12865)))

(declare-fun d!1526289 () Bool)

(declare-fun c!814383 () Bool)

(assert (=> d!1526289 (= c!814383 (and (is-Cons!53874 (toList!6633 lm!2709)) (= (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939219)))))

(assert (=> d!1526289 (= (getValueByKey!2249 (toList!6633 lm!2709) lt!1939219) e!2981759)))

(assert (= (and d!1526289 c!814383) b!4776326))

(assert (= (and d!1526289 (not c!814383)) b!4776327))

(assert (= (and b!4776327 c!814384) b!4776328))

(assert (= (and b!4776327 (not c!814384)) b!4776329))

(declare-fun m!5751182 () Bool)

(assert (=> b!4776328 m!5751182))

(assert (=> b!4776107 d!1526289))

(assert (=> d!1526165 d!1526245))

(declare-fun d!1526291 () Bool)

(declare-fun res!2027015 () Bool)

(declare-fun e!2981761 () Bool)

(assert (=> d!1526291 (=> res!2027015 e!2981761)))

(assert (=> d!1526291 (= res!2027015 (and (is-Cons!53873 (t!361447 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))))) (= (_1!31428 (h!60287 (t!361447 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709))))))) key!6641)))))

(assert (=> d!1526291 (= (containsKey!3746 (t!361447 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709))))) key!6641) e!2981761)))

(declare-fun b!4776330 () Bool)

(declare-fun e!2981762 () Bool)

(assert (=> b!4776330 (= e!2981761 e!2981762)))

(declare-fun res!2027016 () Bool)

(assert (=> b!4776330 (=> (not res!2027016) (not e!2981762))))

(assert (=> b!4776330 (= res!2027016 (is-Cons!53873 (t!361447 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))))))))

(declare-fun b!4776331 () Bool)

(assert (=> b!4776331 (= e!2981762 (containsKey!3746 (t!361447 (t!361447 (apply!12838 lm!2709 (_1!31429 (h!60288 (toList!6633 lm!2709)))))) key!6641))))

(assert (= (and d!1526291 (not res!2027015)) b!4776330))

(assert (= (and b!4776330 res!2027016) b!4776331))

(declare-fun m!5751184 () Bool)

(assert (=> b!4776331 m!5751184))

(assert (=> b!4775988 d!1526291))

(assert (=> b!4776105 d!1526165))

(assert (=> b!4776105 d!1526157))

(assert (=> b!4776104 d!1526109))

(declare-fun b!4776457 () Bool)

(assert (=> b!4776457 true))

(declare-fun bs!1150697 () Bool)

(declare-fun b!4776458 () Bool)

(assert (= bs!1150697 (and b!4776458 b!4776457)))

(declare-fun lambda!226853 () Int)

(declare-fun lambda!226852 () Int)

(assert (=> bs!1150697 (= lambda!226853 lambda!226852)))

(assert (=> b!4776458 true))

(declare-fun lambda!226854 () Int)

(declare-fun lt!1939453 () ListMap!6109)

(assert (=> bs!1150697 (= (= lt!1939453 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) (= lambda!226854 lambda!226852))))

(assert (=> b!4776458 (= (= lt!1939453 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) (= lambda!226854 lambda!226853))))

(assert (=> b!4776458 true))

(declare-fun bs!1150698 () Bool)

(declare-fun d!1526293 () Bool)

(assert (= bs!1150698 (and d!1526293 b!4776457)))

(declare-fun lambda!226855 () Int)

(declare-fun lt!1939441 () ListMap!6109)

(assert (=> bs!1150698 (= (= lt!1939441 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) (= lambda!226855 lambda!226852))))

(declare-fun bs!1150699 () Bool)

(assert (= bs!1150699 (and d!1526293 b!4776458)))

(assert (=> bs!1150699 (= (= lt!1939441 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) (= lambda!226855 lambda!226853))))

(assert (=> bs!1150699 (= (= lt!1939441 lt!1939453) (= lambda!226855 lambda!226854))))

(assert (=> d!1526293 true))

(declare-fun b!4776456 () Bool)

(declare-fun res!2027096 () Bool)

(declare-fun e!2981855 () Bool)

(assert (=> b!4776456 (=> (not res!2027096) (not e!2981855))))

(declare-fun forall!12046 (List!53997 Int) Bool)

(assert (=> b!4776456 (= res!2027096 (forall!12046 (toList!6634 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) lambda!226855))))

(declare-fun e!2981854 () ListMap!6109)

(assert (=> b!4776457 (= e!2981854 (extractMap!2306 (t!361448 (toList!6633 lm!2709))))))

(declare-fun lt!1939448 () Unit!138868)

(declare-fun call!334577 () Unit!138868)

(assert (=> b!4776457 (= lt!1939448 call!334577)))

(declare-fun call!334578 () Bool)

(assert (=> b!4776457 call!334578))

(declare-fun lt!1939455 () Unit!138868)

(assert (=> b!4776457 (= lt!1939455 lt!1939448)))

(declare-fun call!334579 () Bool)

(assert (=> b!4776457 call!334579))

(declare-fun lt!1939450 () Unit!138868)

(declare-fun Unit!138882 () Unit!138868)

(assert (=> b!4776457 (= lt!1939450 Unit!138882)))

(declare-fun bm!334572 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!912 (ListMap!6109) Unit!138868)

(assert (=> bm!334572 (= call!334577 (lemmaContainsAllItsOwnKeys!912 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))))))

(assert (=> d!1526293 e!2981855))

(declare-fun res!2027097 () Bool)

(assert (=> d!1526293 (=> (not res!2027097) (not e!2981855))))

(assert (=> d!1526293 (= res!2027097 (forall!12046 (_2!31429 (h!60288 (toList!6633 lm!2709))) lambda!226855))))

(assert (=> d!1526293 (= lt!1939441 e!2981854)))

(declare-fun c!814406 () Bool)

(assert (=> d!1526293 (= c!814406 (is-Nil!53873 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> d!1526293 (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709))))))

(assert (=> d!1526293 (= (addToMapMapFromBucket!1646 (_2!31429 (h!60288 (toList!6633 lm!2709))) (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) lt!1939441)))

(declare-fun bm!334573 () Bool)

(assert (=> bm!334573 (= call!334578 (forall!12046 (toList!6634 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) (ite c!814406 lambda!226852 lambda!226854)))))

(declare-fun bm!334574 () Bool)

(assert (=> bm!334574 (= call!334579 (forall!12046 (ite c!814406 (toList!6634 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709))))) (ite c!814406 lambda!226852 lambda!226854)))))

(assert (=> b!4776458 (= e!2981854 lt!1939453)))

(declare-fun lt!1939452 () ListMap!6109)

(declare-fun +!2456 (ListMap!6109 tuple2!56268) ListMap!6109)

(assert (=> b!4776458 (= lt!1939452 (+!2456 (extractMap!2306 (t!361448 (toList!6633 lm!2709))) (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(assert (=> b!4776458 (= lt!1939453 (addToMapMapFromBucket!1646 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709)))) (+!2456 (extractMap!2306 (t!361448 (toList!6633 lm!2709))) (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))))

(declare-fun lt!1939447 () Unit!138868)

(assert (=> b!4776458 (= lt!1939447 call!334577)))

(assert (=> b!4776458 (forall!12046 (toList!6634 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) lambda!226853)))

(declare-fun lt!1939436 () Unit!138868)

(assert (=> b!4776458 (= lt!1939436 lt!1939447)))

(assert (=> b!4776458 (forall!12046 (toList!6634 lt!1939452) lambda!226854)))

(declare-fun lt!1939439 () Unit!138868)

(declare-fun Unit!138883 () Unit!138868)

(assert (=> b!4776458 (= lt!1939439 Unit!138883)))

(assert (=> b!4776458 call!334579))

(declare-fun lt!1939442 () Unit!138868)

(declare-fun Unit!138884 () Unit!138868)

(assert (=> b!4776458 (= lt!1939442 Unit!138884)))

(declare-fun lt!1939446 () Unit!138868)

(declare-fun Unit!138885 () Unit!138868)

(assert (=> b!4776458 (= lt!1939446 Unit!138885)))

(declare-fun lt!1939454 () Unit!138868)

(declare-fun forallContained!4003 (List!53997 Int tuple2!56268) Unit!138868)

(assert (=> b!4776458 (= lt!1939454 (forallContained!4003 (toList!6634 lt!1939452) lambda!226854 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(assert (=> b!4776458 (contains!17363 lt!1939452 (_1!31428 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(declare-fun lt!1939456 () Unit!138868)

(declare-fun Unit!138886 () Unit!138868)

(assert (=> b!4776458 (= lt!1939456 Unit!138886)))

(assert (=> b!4776458 (contains!17363 lt!1939453 (_1!31428 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(declare-fun lt!1939443 () Unit!138868)

(declare-fun Unit!138887 () Unit!138868)

(assert (=> b!4776458 (= lt!1939443 Unit!138887)))

(assert (=> b!4776458 (forall!12046 (_2!31429 (h!60288 (toList!6633 lm!2709))) lambda!226854)))

(declare-fun lt!1939437 () Unit!138868)

(declare-fun Unit!138888 () Unit!138868)

(assert (=> b!4776458 (= lt!1939437 Unit!138888)))

(assert (=> b!4776458 (forall!12046 (toList!6634 lt!1939452) lambda!226854)))

(declare-fun lt!1939449 () Unit!138868)

(declare-fun Unit!138889 () Unit!138868)

(assert (=> b!4776458 (= lt!1939449 Unit!138889)))

(declare-fun lt!1939438 () Unit!138868)

(declare-fun Unit!138890 () Unit!138868)

(assert (=> b!4776458 (= lt!1939438 Unit!138890)))

(declare-fun lt!1939451 () Unit!138868)

(declare-fun addForallContainsKeyThenBeforeAdding!911 (ListMap!6109 ListMap!6109 K!15427 V!15673) Unit!138868)

(assert (=> b!4776458 (= lt!1939451 (addForallContainsKeyThenBeforeAdding!911 (extractMap!2306 (t!361448 (toList!6633 lm!2709))) lt!1939453 (_1!31428 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))) (_2!31428 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))))

(assert (=> b!4776458 call!334578))

(declare-fun lt!1939445 () Unit!138868)

(assert (=> b!4776458 (= lt!1939445 lt!1939451)))

(assert (=> b!4776458 (forall!12046 (toList!6634 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) lambda!226854)))

(declare-fun lt!1939440 () Unit!138868)

(declare-fun Unit!138891 () Unit!138868)

(assert (=> b!4776458 (= lt!1939440 Unit!138891)))

(declare-fun res!2027098 () Bool)

(assert (=> b!4776458 (= res!2027098 (forall!12046 (_2!31429 (h!60288 (toList!6633 lm!2709))) lambda!226854))))

(declare-fun e!2981856 () Bool)

(assert (=> b!4776458 (=> (not res!2027098) (not e!2981856))))

(assert (=> b!4776458 e!2981856))

(declare-fun lt!1939444 () Unit!138868)

(declare-fun Unit!138892 () Unit!138868)

(assert (=> b!4776458 (= lt!1939444 Unit!138892)))

(declare-fun b!4776459 () Bool)

(assert (=> b!4776459 (= e!2981855 (invariantList!1681 (toList!6634 lt!1939441)))))

(declare-fun b!4776460 () Bool)

(assert (=> b!4776460 (= e!2981856 (forall!12046 (toList!6634 (extractMap!2306 (t!361448 (toList!6633 lm!2709)))) lambda!226854))))

(assert (= (and d!1526293 c!814406) b!4776457))

(assert (= (and d!1526293 (not c!814406)) b!4776458))

(assert (= (and b!4776458 res!2027098) b!4776460))

(assert (= (or b!4776457 b!4776458) bm!334572))

(assert (= (or b!4776457 b!4776458) bm!334574))

(assert (= (or b!4776457 b!4776458) bm!334573))

(assert (= (and d!1526293 res!2027097) b!4776456))

(assert (= (and b!4776456 res!2027096) b!4776459))

(assert (=> bm!334572 m!5750848))

(declare-fun m!5751308 () Bool)

(assert (=> bm!334572 m!5751308))

(declare-fun m!5751310 () Bool)

(assert (=> bm!334573 m!5751310))

(declare-fun m!5751312 () Bool)

(assert (=> b!4776460 m!5751312))

(declare-fun m!5751314 () Bool)

(assert (=> b!4776456 m!5751314))

(declare-fun m!5751316 () Bool)

(assert (=> b!4776458 m!5751316))

(declare-fun m!5751318 () Bool)

(assert (=> b!4776458 m!5751318))

(declare-fun m!5751320 () Bool)

(assert (=> b!4776458 m!5751320))

(declare-fun m!5751322 () Bool)

(assert (=> b!4776458 m!5751322))

(declare-fun m!5751324 () Bool)

(assert (=> b!4776458 m!5751324))

(declare-fun m!5751326 () Bool)

(assert (=> b!4776458 m!5751326))

(assert (=> b!4776458 m!5750848))

(declare-fun m!5751328 () Bool)

(assert (=> b!4776458 m!5751328))

(declare-fun m!5751330 () Bool)

(assert (=> b!4776458 m!5751330))

(declare-fun m!5751332 () Bool)

(assert (=> b!4776458 m!5751332))

(assert (=> b!4776458 m!5750848))

(assert (=> b!4776458 m!5751320))

(assert (=> b!4776458 m!5751312))

(assert (=> b!4776458 m!5751326))

(assert (=> b!4776458 m!5751332))

(declare-fun m!5751334 () Bool)

(assert (=> b!4776459 m!5751334))

(declare-fun m!5751336 () Bool)

(assert (=> d!1526293 m!5751336))

(assert (=> d!1526293 m!5750946))

(declare-fun m!5751338 () Bool)

(assert (=> bm!334574 m!5751338))

(assert (=> b!4776027 d!1526293))

(declare-fun bs!1150700 () Bool)

(declare-fun d!1526371 () Bool)

(assert (= bs!1150700 (and d!1526371 d!1526157)))

(declare-fun lambda!226856 () Int)

(assert (=> bs!1150700 (= lambda!226856 lambda!226764)))

(declare-fun bs!1150701 () Bool)

(assert (= bs!1150701 (and d!1526371 d!1526109)))

(assert (=> bs!1150701 (not (= lambda!226856 lambda!226746))))

(declare-fun bs!1150702 () Bool)

(assert (= bs!1150702 (and d!1526371 d!1526163)))

(assert (=> bs!1150702 (= lambda!226856 lambda!226767)))

(declare-fun bs!1150703 () Bool)

(assert (= bs!1150703 (and d!1526371 d!1526279)))

(assert (=> bs!1150703 (= lambda!226856 lambda!226814)))

(declare-fun bs!1150704 () Bool)

(assert (= bs!1150704 (and d!1526371 d!1526143)))

(assert (=> bs!1150704 (= lambda!226856 lambda!226758)))

(declare-fun bs!1150705 () Bool)

(assert (= bs!1150705 (and d!1526371 d!1526173)))

(assert (=> bs!1150705 (= lambda!226856 lambda!226777)))

(declare-fun bs!1150706 () Bool)

(assert (= bs!1150706 (and d!1526371 start!489528)))

(assert (=> bs!1150706 (= lambda!226856 lambda!226736)))

(declare-fun bs!1150707 () Bool)

(assert (= bs!1150707 (and d!1526371 d!1526133)))

(assert (=> bs!1150707 (= lambda!226856 lambda!226752)))

(declare-fun bs!1150708 () Bool)

(assert (= bs!1150708 (and d!1526371 d!1526123)))

(assert (=> bs!1150708 (= lambda!226856 lambda!226749)))

(declare-fun lt!1939457 () ListMap!6109)

(assert (=> d!1526371 (invariantList!1681 (toList!6634 lt!1939457))))

(declare-fun e!2981857 () ListMap!6109)

(assert (=> d!1526371 (= lt!1939457 e!2981857)))

(declare-fun c!814407 () Bool)

(assert (=> d!1526371 (= c!814407 (is-Cons!53874 (t!361448 (toList!6633 lm!2709))))))

(assert (=> d!1526371 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226856)))

(assert (=> d!1526371 (= (extractMap!2306 (t!361448 (toList!6633 lm!2709))) lt!1939457)))

(declare-fun b!4776463 () Bool)

(assert (=> b!4776463 (= e!2981857 (addToMapMapFromBucket!1646 (_2!31429 (h!60288 (t!361448 (toList!6633 lm!2709)))) (extractMap!2306 (t!361448 (t!361448 (toList!6633 lm!2709))))))))

(declare-fun b!4776464 () Bool)

(assert (=> b!4776464 (= e!2981857 (ListMap!6110 Nil!53873))))

(assert (= (and d!1526371 c!814407) b!4776463))

(assert (= (and d!1526371 (not c!814407)) b!4776464))

(declare-fun m!5751340 () Bool)

(assert (=> d!1526371 m!5751340))

(declare-fun m!5751342 () Bool)

(assert (=> d!1526371 m!5751342))

(declare-fun m!5751344 () Bool)

(assert (=> b!4776463 m!5751344))

(assert (=> b!4776463 m!5751344))

(declare-fun m!5751346 () Bool)

(assert (=> b!4776463 m!5751346))

(assert (=> b!4776027 d!1526371))

(declare-fun d!1526373 () Bool)

(assert (=> d!1526373 (= (isEmpty!29320 lt!1939178) (not (is-Some!12863 lt!1939178)))))

(assert (=> d!1526169 d!1526373))

(declare-fun d!1526375 () Bool)

(declare-fun res!2027099 () Bool)

(declare-fun e!2981858 () Bool)

(assert (=> d!1526375 (=> res!2027099 e!2981858)))

(assert (=> d!1526375 (= res!2027099 (not (is-Cons!53873 lt!1939079)))))

(assert (=> d!1526375 (= (noDuplicateKeys!2278 lt!1939079) e!2981858)))

(declare-fun b!4776465 () Bool)

(declare-fun e!2981859 () Bool)

(assert (=> b!4776465 (= e!2981858 e!2981859)))

(declare-fun res!2027100 () Bool)

(assert (=> b!4776465 (=> (not res!2027100) (not e!2981859))))

(assert (=> b!4776465 (= res!2027100 (not (containsKey!3746 (t!361447 lt!1939079) (_1!31428 (h!60287 lt!1939079)))))))

(declare-fun b!4776466 () Bool)

(assert (=> b!4776466 (= e!2981859 (noDuplicateKeys!2278 (t!361447 lt!1939079)))))

(assert (= (and d!1526375 (not res!2027099)) b!4776465))

(assert (= (and b!4776465 res!2027100) b!4776466))

(declare-fun m!5751348 () Bool)

(assert (=> b!4776465 m!5751348))

(assert (=> b!4776466 m!5751080))

(assert (=> d!1526169 d!1526375))

(declare-fun d!1526377 () Bool)

(assert (=> d!1526377 (= (isDefined!10008 lt!1939178) (not (isEmpty!29320 lt!1939178)))))

(declare-fun bs!1150709 () Bool)

(assert (= bs!1150709 d!1526377))

(assert (=> bs!1150709 m!5750892))

(assert (=> b!4776081 d!1526377))

(assert (=> b!4775961 d!1526125))

(assert (=> b!4776057 d!1526271))

(assert (=> b!4776057 d!1526273))

(declare-fun d!1526379 () Bool)

(declare-fun res!2027101 () Bool)

(declare-fun e!2981860 () Bool)

(assert (=> d!1526379 (=> res!2027101 e!2981860)))

(assert (=> d!1526379 (= res!2027101 (and (is-Cons!53873 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709))))) (= (_1!31428 (h!60287 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709)))))) key!6641)))))

(assert (=> d!1526379 (= (containsKey!3746 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709)))) key!6641) e!2981860)))

(declare-fun b!4776467 () Bool)

(declare-fun e!2981861 () Bool)

(assert (=> b!4776467 (= e!2981860 e!2981861)))

(declare-fun res!2027102 () Bool)

(assert (=> b!4776467 (=> (not res!2027102) (not e!2981861))))

(assert (=> b!4776467 (= res!2027102 (is-Cons!53873 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(declare-fun b!4776468 () Bool)

(assert (=> b!4776468 (= e!2981861 (containsKey!3746 (t!361447 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709))))) key!6641))))

(assert (= (and d!1526379 (not res!2027101)) b!4776467))

(assert (= (and b!4776467 res!2027102) b!4776468))

(declare-fun m!5751350 () Bool)

(assert (=> b!4776468 m!5751350))

(assert (=> b!4775986 d!1526379))

(declare-fun d!1526381 () Bool)

(declare-fun res!2027105 () Bool)

(declare-fun e!2981864 () Bool)

(assert (=> d!1526381 (=> res!2027105 e!2981864)))

(declare-fun e!2981863 () Bool)

(assert (=> d!1526381 (= res!2027105 e!2981863)))

(declare-fun res!2027104 () Bool)

(assert (=> d!1526381 (=> (not res!2027104) (not e!2981863))))

(assert (=> d!1526381 (= res!2027104 (is-Cons!53874 (t!361448 (toList!6633 lm!2709))))))

(assert (=> d!1526381 (= (containsKeyBiggerList!431 (t!361448 (toList!6633 lm!2709)) key!6641) e!2981864)))

(declare-fun b!4776469 () Bool)

(assert (=> b!4776469 (= e!2981863 (containsKey!3746 (_2!31429 (h!60288 (t!361448 (toList!6633 lm!2709)))) key!6641))))

(declare-fun b!4776470 () Bool)

(declare-fun e!2981862 () Bool)

(assert (=> b!4776470 (= e!2981864 e!2981862)))

(declare-fun res!2027103 () Bool)

(assert (=> b!4776470 (=> (not res!2027103) (not e!2981862))))

(assert (=> b!4776470 (= res!2027103 (is-Cons!53874 (t!361448 (toList!6633 lm!2709))))))

(declare-fun b!4776471 () Bool)

(assert (=> b!4776471 (= e!2981862 (containsKeyBiggerList!431 (t!361448 (t!361448 (toList!6633 lm!2709))) key!6641))))

(assert (= (and d!1526381 res!2027104) b!4776469))

(assert (= (and d!1526381 (not res!2027105)) b!4776470))

(assert (= (and b!4776470 res!2027103) b!4776471))

(declare-fun m!5751352 () Bool)

(assert (=> b!4776469 m!5751352))

(declare-fun m!5751354 () Bool)

(assert (=> b!4776471 m!5751354))

(assert (=> b!4775963 d!1526381))

(declare-fun d!1526383 () Bool)

(declare-fun res!2027106 () Bool)

(declare-fun e!2981865 () Bool)

(assert (=> d!1526383 (=> res!2027106 e!2981865)))

(assert (=> d!1526383 (= res!2027106 (not (is-Cons!53873 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(assert (=> d!1526383 (= (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))) e!2981865)))

(declare-fun b!4776472 () Bool)

(declare-fun e!2981866 () Bool)

(assert (=> b!4776472 (= e!2981865 e!2981866)))

(declare-fun res!2027107 () Bool)

(assert (=> b!4776472 (=> (not res!2027107) (not e!2981866))))

(assert (=> b!4776472 (= res!2027107 (not (containsKey!3746 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709)))) (_1!31428 (h!60287 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))))

(declare-fun b!4776473 () Bool)

(assert (=> b!4776473 (= e!2981866 (noDuplicateKeys!2278 (t!361447 (_2!31429 (h!60288 (toList!6633 lm!2709))))))))

(assert (= (and d!1526383 (not res!2027106)) b!4776472))

(assert (= (and b!4776472 res!2027107) b!4776473))

(declare-fun m!5751356 () Bool)

(assert (=> b!4776472 m!5751356))

(declare-fun m!5751358 () Bool)

(assert (=> b!4776473 m!5751358))

(assert (=> bs!1150625 d!1526383))

(assert (=> b!4776056 d!1526257))

(assert (=> b!4776077 d!1526251))

(declare-fun d!1526385 () Bool)

(assert (=> d!1526385 (= (get!18282 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077)) (v!48029 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077)))))

(assert (=> d!1526153 d!1526385))

(assert (=> d!1526153 d!1526267))

(declare-fun d!1526387 () Bool)

(assert (=> d!1526387 (dynLambda!21992 lambda!226736 lt!1939068)))

(assert (=> d!1526387 true))

(declare-fun _$7!2317 () Unit!138868)

(assert (=> d!1526387 (= (choose!34137 (toList!6633 lm!2709) lambda!226736 lt!1939068) _$7!2317)))

(declare-fun b_lambda!184989 () Bool)

(assert (=> (not b_lambda!184989) (not d!1526387)))

(declare-fun bs!1150710 () Bool)

(assert (= bs!1150710 d!1526387))

(assert (=> bs!1150710 m!5750896))

(assert (=> d!1526171 d!1526387))

(assert (=> d!1526171 d!1526111))

(declare-fun d!1526389 () Bool)

(declare-fun res!2027108 () Bool)

(declare-fun e!2981867 () Bool)

(assert (=> d!1526389 (=> res!2027108 e!2981867)))

(assert (=> d!1526389 (= res!2027108 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526389 (= (forall!12043 (toList!6633 lm!2709) lambda!226746) e!2981867)))

(declare-fun b!4776474 () Bool)

(declare-fun e!2981868 () Bool)

(assert (=> b!4776474 (= e!2981867 e!2981868)))

(declare-fun res!2027109 () Bool)

(assert (=> b!4776474 (=> (not res!2027109) (not e!2981868))))

(assert (=> b!4776474 (= res!2027109 (dynLambda!21992 lambda!226746 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776475 () Bool)

(assert (=> b!4776475 (= e!2981868 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226746))))

(assert (= (and d!1526389 (not res!2027108)) b!4776474))

(assert (= (and b!4776474 res!2027109) b!4776475))

(declare-fun b_lambda!184991 () Bool)

(assert (=> (not b_lambda!184991) (not b!4776474)))

(declare-fun m!5751360 () Bool)

(assert (=> b!4776474 m!5751360))

(declare-fun m!5751362 () Bool)

(assert (=> b!4776475 m!5751362))

(assert (=> d!1526109 d!1526389))

(declare-fun d!1526391 () Bool)

(declare-fun res!2027114 () Bool)

(declare-fun e!2981873 () Bool)

(assert (=> d!1526391 (=> res!2027114 e!2981873)))

(assert (=> d!1526391 (= res!2027114 (and (is-Cons!53874 (toList!6633 lm!2709)) (= (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939077)))))

(assert (=> d!1526391 (= (containsKey!3748 (toList!6633 lm!2709) lt!1939077) e!2981873)))

(declare-fun b!4776480 () Bool)

(declare-fun e!2981874 () Bool)

(assert (=> b!4776480 (= e!2981873 e!2981874)))

(declare-fun res!2027115 () Bool)

(assert (=> b!4776480 (=> (not res!2027115) (not e!2981874))))

(assert (=> b!4776480 (= res!2027115 (and (or (not (is-Cons!53874 (toList!6633 lm!2709))) (bvsle (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939077)) (is-Cons!53874 (toList!6633 lm!2709)) (bvslt (_1!31429 (h!60288 (toList!6633 lm!2709))) lt!1939077)))))

(declare-fun b!4776481 () Bool)

(assert (=> b!4776481 (= e!2981874 (containsKey!3748 (t!361448 (toList!6633 lm!2709)) lt!1939077))))

(assert (= (and d!1526391 (not res!2027114)) b!4776480))

(assert (= (and b!4776480 res!2027115) b!4776481))

(declare-fun m!5751364 () Bool)

(assert (=> b!4776481 m!5751364))

(assert (=> d!1526137 d!1526391))

(declare-fun d!1526393 () Bool)

(assert (=> d!1526393 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939077))))

(declare-fun lt!1939460 () Unit!138868)

(declare-fun choose!34152 (List!53998 (_ BitVec 64)) Unit!138868)

(assert (=> d!1526393 (= lt!1939460 (choose!34152 (toList!6633 lm!2709) lt!1939077))))

(declare-fun e!2981877 () Bool)

(assert (=> d!1526393 e!2981877))

(declare-fun res!2027118 () Bool)

(assert (=> d!1526393 (=> (not res!2027118) (not e!2981877))))

(assert (=> d!1526393 (= res!2027118 (isStrictlySorted!832 (toList!6633 lm!2709)))))

(assert (=> d!1526393 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2043 (toList!6633 lm!2709) lt!1939077) lt!1939460)))

(declare-fun b!4776484 () Bool)

(assert (=> b!4776484 (= e!2981877 (containsKey!3748 (toList!6633 lm!2709) lt!1939077))))

(assert (= (and d!1526393 res!2027118) b!4776484))

(assert (=> d!1526393 m!5750814))

(assert (=> d!1526393 m!5750814))

(assert (=> d!1526393 m!5750816))

(declare-fun m!5751366 () Bool)

(assert (=> d!1526393 m!5751366))

(assert (=> d!1526393 m!5750776))

(assert (=> b!4776484 m!5750810))

(assert (=> b!4776003 d!1526393))

(assert (=> b!4776003 d!1526265))

(assert (=> b!4776003 d!1526267))

(declare-fun d!1526395 () Bool)

(declare-fun res!2027121 () Bool)

(declare-fun e!2981880 () Bool)

(assert (=> d!1526395 (=> res!2027121 e!2981880)))

(declare-fun e!2981879 () Bool)

(assert (=> d!1526395 (= res!2027121 e!2981879)))

(declare-fun res!2027120 () Bool)

(assert (=> d!1526395 (=> (not res!2027120) (not e!2981879))))

(assert (=> d!1526395 (= res!2027120 (is-Cons!53874 (t!361448 (tail!9164 (toList!6633 lm!2709)))))))

(assert (=> d!1526395 (= (containsKeyBiggerList!431 (t!361448 (tail!9164 (toList!6633 lm!2709))) key!6641) e!2981880)))

(declare-fun b!4776485 () Bool)

(assert (=> b!4776485 (= e!2981879 (containsKey!3746 (_2!31429 (h!60288 (t!361448 (tail!9164 (toList!6633 lm!2709))))) key!6641))))

(declare-fun b!4776486 () Bool)

(declare-fun e!2981878 () Bool)

(assert (=> b!4776486 (= e!2981880 e!2981878)))

(declare-fun res!2027119 () Bool)

(assert (=> b!4776486 (=> (not res!2027119) (not e!2981878))))

(assert (=> b!4776486 (= res!2027119 (is-Cons!53874 (t!361448 (tail!9164 (toList!6633 lm!2709)))))))

(declare-fun b!4776487 () Bool)

(assert (=> b!4776487 (= e!2981878 (containsKeyBiggerList!431 (t!361448 (t!361448 (tail!9164 (toList!6633 lm!2709)))) key!6641))))

(assert (= (and d!1526395 res!2027120) b!4776485))

(assert (= (and d!1526395 (not res!2027121)) b!4776486))

(assert (= (and b!4776486 res!2027119) b!4776487))

(declare-fun m!5751368 () Bool)

(assert (=> b!4776485 m!5751368))

(declare-fun m!5751370 () Bool)

(assert (=> b!4776487 m!5751370))

(assert (=> b!4775974 d!1526395))

(assert (=> b!4776052 d!1526255))

(assert (=> b!4776052 d!1526257))

(declare-fun d!1526397 () Bool)

(declare-fun c!814410 () Bool)

(assert (=> d!1526397 (= c!814410 (is-Nil!53874 (toList!6633 lm!2709)))))

(declare-fun e!2981883 () (Set tuple2!56270))

(assert (=> d!1526397 (= (content!9614 (toList!6633 lm!2709)) e!2981883)))

(declare-fun b!4776492 () Bool)

(assert (=> b!4776492 (= e!2981883 (as set.empty (Set tuple2!56270)))))

(declare-fun b!4776493 () Bool)

(assert (=> b!4776493 (= e!2981883 (set.union (set.insert (h!60288 (toList!6633 lm!2709)) (as set.empty (Set tuple2!56270))) (content!9614 (t!361448 (toList!6633 lm!2709)))))))

(assert (= (and d!1526397 c!814410) b!4776492))

(assert (= (and d!1526397 (not c!814410)) b!4776493))

(declare-fun m!5751372 () Bool)

(assert (=> b!4776493 m!5751372))

(assert (=> b!4776493 m!5751172))

(assert (=> d!1526155 d!1526397))

(declare-fun d!1526399 () Bool)

(assert (=> d!1526399 (= (isEmpty!29319 (toList!6633 lm!2709)) (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526115 d!1526399))

(declare-fun d!1526401 () Bool)

(declare-fun choose!34153 (Hashable!6775 K!15427) (_ BitVec 64))

(assert (=> d!1526401 (= (hash!4751 hashF!1687 key!6641) (choose!34153 hashF!1687 key!6641))))

(declare-fun bs!1150711 () Bool)

(assert (= bs!1150711 d!1526401))

(declare-fun m!5751374 () Bool)

(assert (=> bs!1150711 m!5751374))

(assert (=> d!1526187 d!1526401))

(declare-fun d!1526403 () Bool)

(declare-fun e!2981885 () Bool)

(assert (=> d!1526403 e!2981885))

(declare-fun res!2027122 () Bool)

(assert (=> d!1526403 (=> res!2027122 e!2981885)))

(declare-fun lt!1939464 () Bool)

(assert (=> d!1526403 (= res!2027122 (not lt!1939464))))

(declare-fun lt!1939461 () Bool)

(assert (=> d!1526403 (= lt!1939464 lt!1939461)))

(declare-fun lt!1939462 () Unit!138868)

(declare-fun e!2981884 () Unit!138868)

(assert (=> d!1526403 (= lt!1939462 e!2981884)))

(declare-fun c!814411 () Bool)

(assert (=> d!1526403 (= c!814411 lt!1939461)))

(assert (=> d!1526403 (= lt!1939461 (containsKey!3748 (toList!6633 lm!2709) (hash!4747 hashF!1687 key!6641)))))

(assert (=> d!1526403 (= (contains!17362 lm!2709 (hash!4747 hashF!1687 key!6641)) lt!1939464)))

(declare-fun b!4776494 () Bool)

(declare-fun lt!1939463 () Unit!138868)

(assert (=> b!4776494 (= e!2981884 lt!1939463)))

(assert (=> b!4776494 (= lt!1939463 (lemmaContainsKeyImpliesGetValueByKeyDefined!2043 (toList!6633 lm!2709) (hash!4747 hashF!1687 key!6641)))))

(assert (=> b!4776494 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) (hash!4747 hashF!1687 key!6641)))))

(declare-fun b!4776495 () Bool)

(declare-fun Unit!138893 () Unit!138868)

(assert (=> b!4776495 (= e!2981884 Unit!138893)))

(declare-fun b!4776496 () Bool)

(assert (=> b!4776496 (= e!2981885 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) (hash!4747 hashF!1687 key!6641))))))

(assert (= (and d!1526403 c!814411) b!4776494))

(assert (= (and d!1526403 (not c!814411)) b!4776495))

(assert (= (and d!1526403 (not res!2027122)) b!4776496))

(assert (=> d!1526403 m!5750690))

(declare-fun m!5751376 () Bool)

(assert (=> d!1526403 m!5751376))

(assert (=> b!4776494 m!5750690))

(declare-fun m!5751378 () Bool)

(assert (=> b!4776494 m!5751378))

(assert (=> b!4776494 m!5750690))

(declare-fun m!5751380 () Bool)

(assert (=> b!4776494 m!5751380))

(assert (=> b!4776494 m!5751380))

(declare-fun m!5751382 () Bool)

(assert (=> b!4776494 m!5751382))

(assert (=> b!4776496 m!5750690))

(assert (=> b!4776496 m!5751380))

(assert (=> b!4776496 m!5751380))

(assert (=> b!4776496 m!5751382))

(assert (=> d!1526163 d!1526403))

(assert (=> d!1526163 d!1526187))

(declare-fun d!1526405 () Bool)

(assert (=> d!1526405 (contains!17362 lm!2709 (hash!4747 hashF!1687 key!6641))))

(assert (=> d!1526405 true))

(declare-fun _$27!1572 () Unit!138868)

(assert (=> d!1526405 (= (choose!34136 lm!2709 key!6641 hashF!1687) _$27!1572)))

(declare-fun bs!1150712 () Bool)

(assert (= bs!1150712 d!1526405))

(assert (=> bs!1150712 m!5750690))

(assert (=> bs!1150712 m!5750690))

(assert (=> bs!1150712 m!5750852))

(assert (=> d!1526163 d!1526405))

(declare-fun d!1526407 () Bool)

(declare-fun res!2027123 () Bool)

(declare-fun e!2981886 () Bool)

(assert (=> d!1526407 (=> res!2027123 e!2981886)))

(assert (=> d!1526407 (= res!2027123 (is-Nil!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526407 (= (forall!12043 (toList!6633 lm!2709) lambda!226767) e!2981886)))

(declare-fun b!4776497 () Bool)

(declare-fun e!2981887 () Bool)

(assert (=> b!4776497 (= e!2981886 e!2981887)))

(declare-fun res!2027124 () Bool)

(assert (=> b!4776497 (=> (not res!2027124) (not e!2981887))))

(assert (=> b!4776497 (= res!2027124 (dynLambda!21992 lambda!226767 (h!60288 (toList!6633 lm!2709))))))

(declare-fun b!4776498 () Bool)

(assert (=> b!4776498 (= e!2981887 (forall!12043 (t!361448 (toList!6633 lm!2709)) lambda!226767))))

(assert (= (and d!1526407 (not res!2027123)) b!4776497))

(assert (= (and b!4776497 res!2027124) b!4776498))

(declare-fun b_lambda!184993 () Bool)

(assert (=> (not b_lambda!184993) (not b!4776497)))

(declare-fun m!5751384 () Bool)

(assert (=> b!4776497 m!5751384))

(declare-fun m!5751386 () Bool)

(assert (=> b!4776498 m!5751386))

(assert (=> d!1526163 d!1526407))

(declare-fun d!1526409 () Bool)

(assert (=> d!1526409 (= (isEmpty!29320 lt!1939078) (not (is-Some!12863 lt!1939078)))))

(assert (=> d!1526149 d!1526409))

(assert (=> b!4776106 d!1526163))

(declare-fun d!1526411 () Bool)

(assert (=> d!1526411 (= (isDefined!10008 (getPair!763 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29320 (getPair!763 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1150713 () Bool)

(assert (= bs!1150713 d!1526411))

(assert (=> bs!1150713 m!5750936))

(declare-fun m!5751388 () Bool)

(assert (=> bs!1150713 m!5751388))

(assert (=> b!4776106 d!1526411))

(declare-fun d!1526413 () Bool)

(assert (=> d!1526413 (dynLambda!21992 lambda!226777 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641))))))

(declare-fun lt!1939465 () Unit!138868)

(assert (=> d!1526413 (= lt!1939465 (choose!34137 (toList!6633 lm!2709) lambda!226777 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))))

(declare-fun e!2981888 () Bool)

(assert (=> d!1526413 e!2981888))

(declare-fun res!2027125 () Bool)

(assert (=> d!1526413 (=> (not res!2027125) (not e!2981888))))

(assert (=> d!1526413 (= res!2027125 (forall!12043 (toList!6633 lm!2709) lambda!226777))))

(assert (=> d!1526413 (= (forallContained!4000 (toList!6633 lm!2709) lambda!226777 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))) lt!1939465)))

(declare-fun b!4776499 () Bool)

(assert (=> b!4776499 (= e!2981888 (contains!17361 (toList!6633 lm!2709) (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))))

(assert (= (and d!1526413 res!2027125) b!4776499))

(declare-fun b_lambda!184995 () Bool)

(assert (=> (not b_lambda!184995) (not d!1526413)))

(declare-fun m!5751390 () Bool)

(assert (=> d!1526413 m!5751390))

(declare-fun m!5751392 () Bool)

(assert (=> d!1526413 m!5751392))

(assert (=> d!1526413 m!5750922))

(declare-fun m!5751394 () Bool)

(assert (=> b!4776499 m!5751394))

(assert (=> b!4776106 d!1526413))

(declare-fun d!1526415 () Bool)

(assert (=> d!1526415 (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939219 lt!1939218))))

(declare-fun lt!1939466 () Unit!138868)

(assert (=> d!1526415 (= lt!1939466 (choose!34139 lm!2709 lt!1939219 lt!1939218))))

(assert (=> d!1526415 (contains!17362 lm!2709 lt!1939219)))

(assert (=> d!1526415 (= (lemmaGetValueImpliesTupleContained!566 lm!2709 lt!1939219 lt!1939218) lt!1939466)))

(declare-fun bs!1150714 () Bool)

(assert (= bs!1150714 d!1526415))

(assert (=> bs!1150714 m!5750934))

(declare-fun m!5751396 () Bool)

(assert (=> bs!1150714 m!5751396))

(assert (=> bs!1150714 m!5750928))

(assert (=> b!4776106 d!1526415))

(assert (=> b!4776106 d!1526403))

(declare-fun d!1526417 () Bool)

(declare-fun e!2981890 () Bool)

(assert (=> d!1526417 e!2981890))

(declare-fun res!2027126 () Bool)

(assert (=> d!1526417 (=> res!2027126 e!2981890)))

(declare-fun lt!1939470 () Bool)

(assert (=> d!1526417 (= res!2027126 (not lt!1939470))))

(declare-fun lt!1939467 () Bool)

(assert (=> d!1526417 (= lt!1939470 lt!1939467)))

(declare-fun lt!1939468 () Unit!138868)

(declare-fun e!2981889 () Unit!138868)

(assert (=> d!1526417 (= lt!1939468 e!2981889)))

(declare-fun c!814412 () Bool)

(assert (=> d!1526417 (= c!814412 lt!1939467)))

(assert (=> d!1526417 (= lt!1939467 (containsKey!3748 (toList!6633 lm!2709) lt!1939219))))

(assert (=> d!1526417 (= (contains!17362 lm!2709 lt!1939219) lt!1939470)))

(declare-fun b!4776500 () Bool)

(declare-fun lt!1939469 () Unit!138868)

(assert (=> b!4776500 (= e!2981889 lt!1939469)))

(assert (=> b!4776500 (= lt!1939469 (lemmaContainsKeyImpliesGetValueByKeyDefined!2043 (toList!6633 lm!2709) lt!1939219))))

(assert (=> b!4776500 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939219))))

(declare-fun b!4776501 () Bool)

(declare-fun Unit!138894 () Unit!138868)

(assert (=> b!4776501 (= e!2981889 Unit!138894)))

(declare-fun b!4776502 () Bool)

(assert (=> b!4776502 (= e!2981890 (isDefined!10010 (getValueByKey!2249 (toList!6633 lm!2709) lt!1939219)))))

(assert (= (and d!1526417 c!814412) b!4776500))

(assert (= (and d!1526417 (not c!814412)) b!4776501))

(assert (= (and d!1526417 (not res!2027126)) b!4776502))

(declare-fun m!5751398 () Bool)

(assert (=> d!1526417 m!5751398))

(declare-fun m!5751400 () Bool)

(assert (=> b!4776500 m!5751400))

(assert (=> b!4776500 m!5750920))

(assert (=> b!4776500 m!5750920))

(declare-fun m!5751402 () Bool)

(assert (=> b!4776500 m!5751402))

(assert (=> b!4776502 m!5750920))

(assert (=> b!4776502 m!5750920))

(assert (=> b!4776502 m!5751402))

(assert (=> b!4776106 d!1526417))

(declare-fun d!1526419 () Bool)

(assert (=> d!1526419 (= (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) (get!18282 (getValueByKey!2249 (toList!6633 lm!2709) (hash!4747 hashF!1687 key!6641))))))

(declare-fun bs!1150715 () Bool)

(assert (= bs!1150715 d!1526419))

(assert (=> bs!1150715 m!5750690))

(assert (=> bs!1150715 m!5751380))

(assert (=> bs!1150715 m!5751380))

(declare-fun m!5751404 () Bool)

(assert (=> bs!1150715 m!5751404))

(assert (=> b!4776106 d!1526419))

(declare-fun b!4776503 () Bool)

(declare-fun e!2981892 () Option!12864)

(assert (=> b!4776503 (= e!2981892 (Some!12863 (h!60287 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))))

(declare-fun b!4776504 () Bool)

(declare-fun e!2981893 () Bool)

(declare-fun lt!1939471 () Option!12864)

(assert (=> b!4776504 (= e!2981893 (contains!17368 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) (get!18280 lt!1939471)))))

(declare-fun b!4776505 () Bool)

(declare-fun res!2027130 () Bool)

(assert (=> b!4776505 (=> (not res!2027130) (not e!2981893))))

(assert (=> b!4776505 (= res!2027130 (= (_1!31428 (get!18280 lt!1939471)) key!6641))))

(declare-fun b!4776506 () Bool)

(declare-fun e!2981895 () Option!12864)

(assert (=> b!4776506 (= e!2981895 (getPair!763 (t!361447 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641))) key!6641))))

(declare-fun b!4776507 () Bool)

(assert (=> b!4776507 (= e!2981895 None!12863)))

(declare-fun d!1526421 () Bool)

(declare-fun e!2981891 () Bool)

(assert (=> d!1526421 e!2981891))

(declare-fun res!2027129 () Bool)

(assert (=> d!1526421 (=> res!2027129 e!2981891)))

(declare-fun e!2981894 () Bool)

(assert (=> d!1526421 (= res!2027129 e!2981894)))

(declare-fun res!2027128 () Bool)

(assert (=> d!1526421 (=> (not res!2027128) (not e!2981894))))

(assert (=> d!1526421 (= res!2027128 (isEmpty!29320 lt!1939471))))

(assert (=> d!1526421 (= lt!1939471 e!2981892)))

(declare-fun c!814413 () Bool)

(assert (=> d!1526421 (= c!814413 (and (is-Cons!53873 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641))) (= (_1!31428 (h!60287 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1526421 (noDuplicateKeys!2278 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))))

(assert (=> d!1526421 (= (getPair!763 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) key!6641) lt!1939471)))

(declare-fun b!4776508 () Bool)

(assert (=> b!4776508 (= e!2981894 (not (containsKey!3746 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)) key!6641)))))

(declare-fun b!4776509 () Bool)

(assert (=> b!4776509 (= e!2981891 e!2981893)))

(declare-fun res!2027127 () Bool)

(assert (=> b!4776509 (=> (not res!2027127) (not e!2981893))))

(assert (=> b!4776509 (= res!2027127 (isDefined!10008 lt!1939471))))

(declare-fun b!4776510 () Bool)

(assert (=> b!4776510 (= e!2981892 e!2981895)))

(declare-fun c!814414 () Bool)

(assert (=> b!4776510 (= c!814414 (is-Cons!53873 (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641))))))

(assert (= (and d!1526421 c!814413) b!4776503))

(assert (= (and d!1526421 (not c!814413)) b!4776510))

(assert (= (and b!4776510 c!814414) b!4776506))

(assert (= (and b!4776510 (not c!814414)) b!4776507))

(assert (= (and d!1526421 res!2027128) b!4776508))

(assert (= (and d!1526421 (not res!2027129)) b!4776509))

(assert (= (and b!4776509 res!2027127) b!4776505))

(assert (= (and b!4776505 res!2027130) b!4776504))

(declare-fun m!5751406 () Bool)

(assert (=> b!4776505 m!5751406))

(assert (=> b!4776504 m!5751406))

(assert (=> b!4776504 m!5750930))

(assert (=> b!4776504 m!5751406))

(declare-fun m!5751408 () Bool)

(assert (=> b!4776504 m!5751408))

(declare-fun m!5751410 () Bool)

(assert (=> b!4776509 m!5751410))

(assert (=> b!4776508 m!5750930))

(declare-fun m!5751412 () Bool)

(assert (=> b!4776508 m!5751412))

(declare-fun m!5751414 () Bool)

(assert (=> b!4776506 m!5751414))

(declare-fun m!5751416 () Bool)

(assert (=> d!1526421 m!5751416))

(assert (=> d!1526421 m!5750930))

(declare-fun m!5751418 () Bool)

(assert (=> d!1526421 m!5751418))

(assert (=> b!4776106 d!1526421))

(assert (=> b!4776106 d!1526187))

(declare-fun lt!1939472 () Bool)

(declare-fun d!1526423 () Bool)

(assert (=> d!1526423 (= lt!1939472 (set.member (tuple2!56271 lt!1939219 lt!1939218) (content!9614 (toList!6633 lm!2709))))))

(declare-fun e!2981896 () Bool)

(assert (=> d!1526423 (= lt!1939472 e!2981896)))

(declare-fun res!2027131 () Bool)

(assert (=> d!1526423 (=> (not res!2027131) (not e!2981896))))

(assert (=> d!1526423 (= res!2027131 (is-Cons!53874 (toList!6633 lm!2709)))))

(assert (=> d!1526423 (= (contains!17361 (toList!6633 lm!2709) (tuple2!56271 lt!1939219 lt!1939218)) lt!1939472)))

(declare-fun b!4776511 () Bool)

(declare-fun e!2981897 () Bool)

(assert (=> b!4776511 (= e!2981896 e!2981897)))

(declare-fun res!2027132 () Bool)

(assert (=> b!4776511 (=> res!2027132 e!2981897)))

(assert (=> b!4776511 (= res!2027132 (= (h!60288 (toList!6633 lm!2709)) (tuple2!56271 lt!1939219 lt!1939218)))))

(declare-fun b!4776512 () Bool)

(assert (=> b!4776512 (= e!2981897 (contains!17361 (t!361448 (toList!6633 lm!2709)) (tuple2!56271 lt!1939219 lt!1939218)))))

(assert (= (and d!1526423 res!2027131) b!4776511))

(assert (= (and b!4776511 (not res!2027132)) b!4776512))

(assert (=> d!1526423 m!5750834))

(declare-fun m!5751420 () Bool)

(assert (=> d!1526423 m!5751420))

(declare-fun m!5751422 () Bool)

(assert (=> b!4776512 m!5751422))

(assert (=> b!4776106 d!1526423))

(declare-fun tp!1357137 () Bool)

(declare-fun b!4776517 () Bool)

(declare-fun e!2981900 () Bool)

(assert (=> b!4776517 (= e!2981900 (and tp_is_empty!33029 tp_is_empty!33031 tp!1357137))))

(assert (=> b!4776113 (= tp!1357127 e!2981900)))

(assert (= (and b!4776113 (is-Cons!53873 (_2!31429 (h!60288 (toList!6633 lm!2709))))) b!4776517))

(declare-fun b!4776518 () Bool)

(declare-fun e!2981901 () Bool)

(declare-fun tp!1357138 () Bool)

(declare-fun tp!1357139 () Bool)

(assert (=> b!4776518 (= e!2981901 (and tp!1357138 tp!1357139))))

(assert (=> b!4776113 (= tp!1357128 e!2981901)))

(assert (= (and b!4776113 (is-Cons!53874 (t!361448 (toList!6633 lm!2709)))) b!4776518))

(declare-fun b_lambda!184997 () Bool)

(assert (= b_lambda!184971 (or d!1526157 b_lambda!184997)))

(declare-fun bs!1150716 () Bool)

(declare-fun d!1526425 () Bool)

(assert (= bs!1150716 (and d!1526425 d!1526157)))

(assert (=> bs!1150716 (= (dynLambda!21992 lambda!226764 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> bs!1150716 m!5750946))

(assert (=> b!4776207 d!1526425))

(declare-fun b_lambda!184999 () Bool)

(assert (= b_lambda!184995 (or d!1526173 b_lambda!184999)))

(declare-fun bs!1150717 () Bool)

(declare-fun d!1526427 () Bool)

(assert (= bs!1150717 (and d!1526427 d!1526173)))

(assert (=> bs!1150717 (= (dynLambda!21992 lambda!226777 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641)))) (noDuplicateKeys!2278 (_2!31429 (tuple2!56271 (hash!4747 hashF!1687 key!6641) (apply!12838 lm!2709 (hash!4747 hashF!1687 key!6641))))))))

(declare-fun m!5751424 () Bool)

(assert (=> bs!1150717 m!5751424))

(assert (=> d!1526413 d!1526427))

(declare-fun b_lambda!185001 () Bool)

(assert (= b_lambda!184989 (or start!489528 b_lambda!185001)))

(assert (=> d!1526387 d!1526191))

(declare-fun b_lambda!185003 () Bool)

(assert (= b_lambda!184973 (or d!1526173 b_lambda!185003)))

(declare-fun bs!1150718 () Bool)

(declare-fun d!1526429 () Bool)

(assert (= bs!1150718 (and d!1526429 d!1526173)))

(assert (=> bs!1150718 (= (dynLambda!21992 lambda!226777 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> bs!1150718 m!5750946))

(assert (=> b!4776318 d!1526429))

(declare-fun b_lambda!185005 () Bool)

(assert (= b_lambda!184975 (or d!1526133 b_lambda!185005)))

(declare-fun bs!1150719 () Bool)

(declare-fun d!1526431 () Bool)

(assert (= bs!1150719 (and d!1526431 d!1526133)))

(assert (=> bs!1150719 (= (dynLambda!21992 lambda!226752 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> bs!1150719 m!5750946))

(assert (=> b!4776320 d!1526431))

(declare-fun b_lambda!185007 () Bool)

(assert (= b_lambda!184969 (or d!1526143 b_lambda!185007)))

(declare-fun bs!1150720 () Bool)

(declare-fun d!1526433 () Bool)

(assert (= bs!1150720 (and d!1526433 d!1526143)))

(assert (=> bs!1150720 (= (dynLambda!21992 lambda!226758 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> bs!1150720 m!5750946))

(assert (=> b!4776205 d!1526433))

(declare-fun b_lambda!185009 () Bool)

(assert (= b_lambda!184967 (or d!1526123 b_lambda!185009)))

(declare-fun bs!1150721 () Bool)

(declare-fun d!1526435 () Bool)

(assert (= bs!1150721 (and d!1526435 d!1526123)))

(assert (=> bs!1150721 (= (dynLambda!21992 lambda!226749 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> bs!1150721 m!5750946))

(assert (=> b!4776197 d!1526435))

(declare-fun b_lambda!185011 () Bool)

(assert (= b_lambda!184993 (or d!1526163 b_lambda!185011)))

(declare-fun bs!1150722 () Bool)

(declare-fun d!1526437 () Bool)

(assert (= bs!1150722 (and d!1526437 d!1526163)))

(assert (=> bs!1150722 (= (dynLambda!21992 lambda!226767 (h!60288 (toList!6633 lm!2709))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (toList!6633 lm!2709)))))))

(assert (=> bs!1150722 m!5750946))

(assert (=> b!4776497 d!1526437))

(declare-fun b_lambda!185013 () Bool)

(assert (= b_lambda!184977 (or start!489528 b_lambda!185013)))

(declare-fun bs!1150723 () Bool)

(declare-fun d!1526439 () Bool)

(assert (= bs!1150723 (and d!1526439 start!489528)))

(assert (=> bs!1150723 (= (dynLambda!21992 lambda!226736 (h!60288 (t!361448 (toList!6633 lm!2709)))) (noDuplicateKeys!2278 (_2!31429 (h!60288 (t!361448 (toList!6633 lm!2709))))))))

(declare-fun m!5751426 () Bool)

(assert (=> bs!1150723 m!5751426))

(assert (=> b!4776324 d!1526439))

(declare-fun b_lambda!185015 () Bool)

(assert (= b_lambda!184991 (or d!1526109 b_lambda!185015)))

(declare-fun bs!1150724 () Bool)

(declare-fun d!1526441 () Bool)

(assert (= bs!1150724 (and d!1526441 d!1526109)))

(declare-fun allKeysSameHash!1931 (List!53997 (_ BitVec 64) Hashable!6775) Bool)

(assert (=> bs!1150724 (= (dynLambda!21992 lambda!226746 (h!60288 (toList!6633 lm!2709))) (allKeysSameHash!1931 (_2!31429 (h!60288 (toList!6633 lm!2709))) (_1!31429 (h!60288 (toList!6633 lm!2709))) hashF!1687))))

(declare-fun m!5751428 () Bool)

(assert (=> bs!1150724 m!5751428))

(assert (=> b!4776474 d!1526441))

(push 1)

(assert (not b!4776204))

(assert (not d!1526269))

(assert (not b!4776499))

(assert (not b!4776518))

(assert (not b!4776493))

(assert (not b!4776256))

(assert (not bs!1150716))

(assert (not b!4776458))

(assert (not b!4776267))

(assert (not b!4776206))

(assert (not b!4776238))

(assert (not b_lambda!185011))

(assert (not b!4776502))

(assert (not b!4776456))

(assert (not b!4776508))

(assert (not b!4776293))

(assert (not b_lambda!184959))

(assert (not b!4776271))

(assert (not d!1526261))

(assert (not bs!1150720))

(assert (not b!4776234))

(assert (not d!1526281))

(assert (not d!1526421))

(assert (not b!4776294))

(assert (not b_lambda!185009))

(assert (not bs!1150718))

(assert (not b!4776473))

(assert (not b!4776475))

(assert (not b!4776304))

(assert (not d!1526257))

(assert (not d!1526219))

(assert (not b!4776331))

(assert (not b_lambda!185013))

(assert (not d!1526279))

(assert (not b!4776208))

(assert (not b!4776222))

(assert (not b!4776203))

(assert (not bs!1150717))

(assert (not d!1526265))

(assert (not b!4776236))

(assert (not b!4776498))

(assert (not d!1526423))

(assert (not b_lambda!185001))

(assert (not b!4776459))

(assert (not b!4776228))

(assert (not d!1526417))

(assert (not b_lambda!185015))

(assert (not b!4776328))

(assert (not d!1526239))

(assert (not d!1526247))

(assert (not d!1526263))

(assert tp_is_empty!33031)

(assert (not b!4776466))

(assert (not b!4776198))

(assert (not b!4776265))

(assert (not b!4776512))

(assert (not d!1526377))

(assert (not b!4776496))

(assert (not b!4776472))

(assert (not d!1526405))

(assert (not b!4776323))

(assert (not b!4776469))

(assert (not b!4776297))

(assert (not d!1526255))

(assert (not bs!1150724))

(assert (not b!4776248))

(assert (not b!4776506))

(assert (not b!4776240))

(assert (not b!4776504))

(assert (not b!4776319))

(assert (not b!4776484))

(assert (not d!1526249))

(assert tp_is_empty!33029)

(assert (not b!4776460))

(assert (not b_lambda!184997))

(assert (not d!1526293))

(assert (not d!1526275))

(assert (not d!1526243))

(assert (not d!1526415))

(assert (not b_lambda!185003))

(assert (not d!1526403))

(assert (not d!1526419))

(assert (not b!4776465))

(assert (not bm!334574))

(assert (not b!4776254))

(assert (not d!1526271))

(assert (not d!1526225))

(assert (not bm!334572))

(assert (not b_lambda!185007))

(assert (not b!4776505))

(assert (not b!4776325))

(assert (not b!4776471))

(assert (not b!4776485))

(assert (not bs!1150721))

(assert (not b_lambda!184961))

(assert (not b_lambda!185005))

(assert (not b!4776487))

(assert (not b!4776241))

(assert (not d!1526401))

(assert (not d!1526411))

(assert (not b!4776517))

(assert (not b!4776237))

(assert (not d!1526413))

(assert (not b!4776296))

(assert (not d!1526285))

(assert (not b!4776219))

(assert (not d!1526393))

(assert (not bs!1150719))

(assert (not b!4776481))

(assert (not b!4776258))

(assert (not d!1526229))

(assert (not b!4776316))

(assert (not b_lambda!184999))

(assert (not b!4776500))

(assert (not b!4776463))

(assert (not b!4776298))

(assert (not b!4776321))

(assert (not bs!1150722))

(assert (not b!4776468))

(assert (not b!4776266))

(assert (not bs!1150723))

(assert (not bm!334573))

(assert (not d!1526371))

(assert (not d!1526259))

(assert (not b!4776494))

(assert (not b!4776509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


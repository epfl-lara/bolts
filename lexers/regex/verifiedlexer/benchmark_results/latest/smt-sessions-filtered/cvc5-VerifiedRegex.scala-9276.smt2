; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!492452 () Bool)

(assert start!492452)

(declare-fun bs!1153780 () Bool)

(declare-fun b!4787432 () Bool)

(assert (= bs!1153780 (and b!4787432 start!492452)))

(declare-fun lambda!229559 () Int)

(declare-fun lambda!229558 () Int)

(assert (=> bs!1153780 (not (= lambda!229559 lambda!229558))))

(assert (=> b!4787432 true))

(assert (=> b!4787432 true))

(assert (=> b!4787432 true))

(declare-fun b!4787423 () Bool)

(declare-fun res!2033903 () Bool)

(declare-fun e!2989134 () Bool)

(assert (=> b!4787423 (=> (not res!2033903) (not e!2989134))))

(declare-datatypes ((K!15667 0))(
  ( (K!15668 (val!20839 Int)) )
))
(declare-datatypes ((V!15913 0))(
  ( (V!15914 (val!20840 Int)) )
))
(declare-datatypes ((tuple2!56652 0))(
  ( (tuple2!56653 (_1!31620 K!15667) (_2!31620 V!15913)) )
))
(declare-datatypes ((List!54227 0))(
  ( (Nil!54103) (Cons!54103 (h!60527 tuple2!56652) (t!361677 List!54227)) )
))
(declare-datatypes ((tuple2!56654 0))(
  ( (tuple2!56655 (_1!31621 (_ BitVec 64)) (_2!31621 List!54227)) )
))
(declare-datatypes ((List!54228 0))(
  ( (Nil!54104) (Cons!54104 (h!60528 tuple2!56654) (t!361678 List!54228)) )
))
(declare-datatypes ((ListLongMap!5243 0))(
  ( (ListLongMap!5244 (toList!6821 List!54228)) )
))
(declare-fun lm!2473 () ListLongMap!5243)

(declare-fun key!5896 () K!15667)

(declare-datatypes ((ListMap!6293 0))(
  ( (ListMap!6294 (toList!6822 List!54227)) )
))
(declare-fun contains!17690 (ListMap!6293 K!15667) Bool)

(declare-fun extractMap!2398 (List!54228) ListMap!6293)

(assert (=> b!4787423 (= res!2033903 (contains!17690 (extractMap!2398 (toList!6821 lm!2473)) key!5896))))

(declare-fun b!4787424 () Bool)

(declare-fun e!2989135 () Bool)

(declare-fun e!2989127 () Bool)

(assert (=> b!4787424 (= e!2989135 e!2989127)))

(declare-fun res!2033898 () Bool)

(assert (=> b!4787424 (=> res!2033898 e!2989127)))

(declare-fun e!2989136 () Bool)

(assert (=> b!4787424 (= res!2033898 e!2989136)))

(declare-fun res!2033902 () Bool)

(assert (=> b!4787424 (=> (not res!2033902) (not e!2989136))))

(declare-fun e!2989131 () Bool)

(assert (=> b!4787424 (= res!2033902 e!2989131)))

(declare-fun res!2033896 () Bool)

(assert (=> b!4787424 (=> res!2033896 e!2989131)))

(declare-fun lt!1948150 () Bool)

(assert (=> b!4787424 (= res!2033896 (not lt!1948150))))

(declare-fun lt!1948153 () ListMap!6293)

(assert (=> b!4787424 (= lt!1948150 (contains!17690 lt!1948153 key!5896))))

(declare-fun b!4787425 () Bool)

(assert (=> b!4787425 (= e!2989131 true)))

(declare-fun lt!1948152 () V!15913)

(declare-fun apply!12928 (ListMap!6293 K!15667) V!15913)

(assert (=> b!4787425 (= lt!1948152 (apply!12928 lt!1948153 key!5896))))

(declare-fun b!4787426 () Bool)

(declare-fun e!2989129 () Bool)

(declare-fun tp!1357743 () Bool)

(assert (=> b!4787426 (= e!2989129 tp!1357743)))

(declare-fun b!4787427 () Bool)

(declare-fun e!2989133 () Bool)

(assert (=> b!4787427 (= e!2989133 e!2989135)))

(declare-fun res!2033894 () Bool)

(assert (=> b!4787427 (=> res!2033894 e!2989135)))

(declare-fun lt!1948149 () ListMap!6293)

(assert (=> b!4787427 (= res!2033894 (not (contains!17690 lt!1948149 key!5896)))))

(declare-fun addToMapMapFromBucket!1683 (List!54227 ListMap!6293) ListMap!6293)

(assert (=> b!4787427 (= lt!1948149 (addToMapMapFromBucket!1683 (_2!31621 (h!60528 (toList!6821 lm!2473))) lt!1948153))))

(declare-fun e!2989130 () Bool)

(declare-fun lt!1948146 () (_ BitVec 64))

(declare-fun b!4787428 () Bool)

(declare-datatypes ((Option!13018 0))(
  ( (None!13017) (Some!13017 (v!48280 tuple2!56652)) )
))
(declare-fun isDefined!10160 (Option!13018) Bool)

(declare-fun getPair!843 (List!54227 K!15667) Option!13018)

(declare-fun apply!12929 (ListLongMap!5243 (_ BitVec 64)) List!54227)

(assert (=> b!4787428 (= e!2989130 (isDefined!10160 (getPair!843 (apply!12929 lm!2473 lt!1948146) key!5896)))))

(declare-fun res!2033904 () Bool)

(assert (=> start!492452 (=> (not res!2033904) (not e!2989134))))

(declare-fun forall!12181 (List!54228 Int) Bool)

(assert (=> start!492452 (= res!2033904 (forall!12181 (toList!6821 lm!2473) lambda!229558))))

(assert (=> start!492452 e!2989134))

(declare-fun inv!69694 (ListLongMap!5243) Bool)

(assert (=> start!492452 (and (inv!69694 lm!2473) e!2989129)))

(assert (=> start!492452 true))

(declare-fun tp_is_empty!33365 () Bool)

(assert (=> start!492452 tp_is_empty!33365))

(declare-fun tp_is_empty!33367 () Bool)

(assert (=> start!492452 tp_is_empty!33367))

(declare-fun b!4787429 () Bool)

(declare-fun e!2989132 () Bool)

(assert (=> b!4787429 (= e!2989136 e!2989132)))

(declare-fun res!2033905 () Bool)

(assert (=> b!4787429 (=> res!2033905 e!2989132)))

(declare-fun lt!1948147 () tuple2!56652)

(declare-fun contains!17691 (List!54227 tuple2!56652) Bool)

(assert (=> b!4787429 (= res!2033905 (not (contains!17691 (_2!31621 (h!60528 (toList!6821 lm!2473))) lt!1948147)))))

(declare-fun b!4787430 () Bool)

(declare-fun res!2033901 () Bool)

(declare-fun e!2989128 () Bool)

(assert (=> b!4787430 (=> res!2033901 e!2989128)))

(declare-fun containsKey!3881 (List!54227 K!15667) Bool)

(assert (=> b!4787430 (= res!2033901 (not (containsKey!3881 (_2!31621 (h!60528 (toList!6821 lm!2473))) key!5896)))))

(declare-fun b!4787431 () Bool)

(assert (=> b!4787431 (= e!2989127 (forall!12181 (toList!6821 lm!2473) lambda!229558))))

(declare-fun value!3111 () V!15913)

(assert (=> b!4787431 (= (apply!12928 lt!1948149 key!5896) value!3111)))

(declare-datatypes ((Unit!139587 0))(
  ( (Unit!139588) )
))
(declare-fun lt!1948143 () Unit!139587)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!1 (List!54227 ListMap!6293 K!15667 V!15913) Unit!139587)

(assert (=> b!4787431 (= lt!1948143 (lemmaAddToMapFromBucketMaintainsMapping!1 (_2!31621 (h!60528 (toList!6821 lm!2473))) lt!1948153 key!5896 value!3111))))

(assert (=> b!4787432 (= e!2989128 e!2989133)))

(declare-fun res!2033895 () Bool)

(assert (=> b!4787432 (=> res!2033895 e!2989133)))

(declare-fun noDuplicateKeys!2314 (List!54227) Bool)

(assert (=> b!4787432 (= res!2033895 (not (noDuplicateKeys!2314 (_2!31621 (h!60528 (toList!6821 lm!2473))))))))

(assert (=> b!4787432 (= lt!1948153 (extractMap!2398 (t!361678 (toList!6821 lm!2473))))))

(declare-fun lt!1948144 () ListLongMap!5243)

(assert (=> b!4787432 (not (contains!17690 (extractMap!2398 (toList!6821 lt!1948144)) key!5896))))

(declare-datatypes ((Hashable!6871 0))(
  ( (HashableExt!6870 (__x!32894 Int)) )
))
(declare-fun hashF!1559 () Hashable!6871)

(declare-fun lt!1948145 () Unit!139587)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!5 (ListLongMap!5243 K!15667 Hashable!6871) Unit!139587)

(assert (=> b!4787432 (= lt!1948145 (lemmaHashNotInLongMapThenNotInGenerated!5 lt!1948144 key!5896 hashF!1559))))

(declare-fun tail!9220 (ListLongMap!5243) ListLongMap!5243)

(assert (=> b!4787432 (= lt!1948144 (tail!9220 lm!2473))))

(declare-fun lambda!229560 () Int)

(declare-fun lt!1948142 () Unit!139587)

(declare-fun forallContained!4125 (List!54227 Int tuple2!56652) Unit!139587)

(assert (=> b!4787432 (= lt!1948142 (forallContained!4125 (_2!31621 (h!60528 (toList!6821 lm!2473))) lambda!229560 lt!1948147))))

(assert (=> b!4787432 (= lt!1948147 (tuple2!56653 key!5896 value!3111))))

(declare-fun lt!1948148 () Unit!139587)

(declare-fun forallContained!4126 (List!54228 Int tuple2!56654) Unit!139587)

(assert (=> b!4787432 (= lt!1948148 (forallContained!4126 (toList!6821 lm!2473) lambda!229559 (h!60528 (toList!6821 lm!2473))))))

(declare-fun b!4787433 () Bool)

(declare-fun res!2033893 () Bool)

(assert (=> b!4787433 (=> (not res!2033893) (not e!2989134))))

(declare-fun allKeysSameHashInMap!2276 (ListLongMap!5243 Hashable!6871) Bool)

(assert (=> b!4787433 (= res!2033893 (allKeysSameHashInMap!2276 lm!2473 hashF!1559))))

(declare-fun b!4787434 () Bool)

(assert (=> b!4787434 (= e!2989134 (not e!2989128))))

(declare-fun res!2033899 () Bool)

(assert (=> b!4787434 (=> res!2033899 e!2989128)))

(declare-fun getValue!67 (List!54228 K!15667) V!15913)

(assert (=> b!4787434 (= res!2033899 (not (= (getValue!67 (toList!6821 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!521 (List!54228 K!15667) Bool)

(assert (=> b!4787434 (containsKeyBiggerList!521 (toList!6821 lm!2473) key!5896)))

(declare-fun lt!1948151 () Unit!139587)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!261 (ListLongMap!5243 K!15667 Hashable!6871) Unit!139587)

(assert (=> b!4787434 (= lt!1948151 (lemmaInLongMapThenContainsKeyBiggerList!261 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4787434 e!2989130))

(declare-fun res!2033897 () Bool)

(assert (=> b!4787434 (=> (not res!2033897) (not e!2989130))))

(declare-fun contains!17692 (ListLongMap!5243 (_ BitVec 64)) Bool)

(assert (=> b!4787434 (= res!2033897 (contains!17692 lm!2473 lt!1948146))))

(declare-fun hash!4893 (Hashable!6871 K!15667) (_ BitVec 64))

(assert (=> b!4787434 (= lt!1948146 (hash!4893 hashF!1559 key!5896))))

(declare-fun lt!1948154 () Unit!139587)

(declare-fun lemmaInGenericMapThenInLongMap!275 (ListLongMap!5243 K!15667 Hashable!6871) Unit!139587)

(assert (=> b!4787434 (= lt!1948154 (lemmaInGenericMapThenInLongMap!275 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4787435 () Bool)

(assert (=> b!4787435 (= e!2989132 lt!1948150)))

(declare-fun b!4787436 () Bool)

(declare-fun res!2033900 () Bool)

(assert (=> b!4787436 (=> res!2033900 e!2989128)))

(assert (=> b!4787436 (= res!2033900 (not (is-Cons!54104 (toList!6821 lm!2473))))))

(assert (= (and start!492452 res!2033904) b!4787433))

(assert (= (and b!4787433 res!2033893) b!4787423))

(assert (= (and b!4787423 res!2033903) b!4787434))

(assert (= (and b!4787434 res!2033897) b!4787428))

(assert (= (and b!4787434 (not res!2033899)) b!4787436))

(assert (= (and b!4787436 (not res!2033900)) b!4787430))

(assert (= (and b!4787430 (not res!2033901)) b!4787432))

(assert (= (and b!4787432 (not res!2033895)) b!4787427))

(assert (= (and b!4787427 (not res!2033894)) b!4787424))

(assert (= (and b!4787424 (not res!2033896)) b!4787425))

(assert (= (and b!4787424 res!2033902) b!4787429))

(assert (= (and b!4787429 (not res!2033905)) b!4787435))

(assert (= (and b!4787424 (not res!2033898)) b!4787431))

(assert (= start!492452 b!4787426))

(declare-fun m!5766726 () Bool)

(assert (=> b!4787423 m!5766726))

(assert (=> b!4787423 m!5766726))

(declare-fun m!5766728 () Bool)

(assert (=> b!4787423 m!5766728))

(declare-fun m!5766730 () Bool)

(assert (=> b!4787432 m!5766730))

(declare-fun m!5766732 () Bool)

(assert (=> b!4787432 m!5766732))

(assert (=> b!4787432 m!5766732))

(declare-fun m!5766734 () Bool)

(assert (=> b!4787432 m!5766734))

(declare-fun m!5766736 () Bool)

(assert (=> b!4787432 m!5766736))

(declare-fun m!5766738 () Bool)

(assert (=> b!4787432 m!5766738))

(declare-fun m!5766740 () Bool)

(assert (=> b!4787432 m!5766740))

(declare-fun m!5766742 () Bool)

(assert (=> b!4787432 m!5766742))

(declare-fun m!5766744 () Bool)

(assert (=> b!4787432 m!5766744))

(declare-fun m!5766746 () Bool)

(assert (=> b!4787433 m!5766746))

(declare-fun m!5766748 () Bool)

(assert (=> b!4787434 m!5766748))

(declare-fun m!5766750 () Bool)

(assert (=> b!4787434 m!5766750))

(declare-fun m!5766752 () Bool)

(assert (=> b!4787434 m!5766752))

(declare-fun m!5766754 () Bool)

(assert (=> b!4787434 m!5766754))

(declare-fun m!5766756 () Bool)

(assert (=> b!4787434 m!5766756))

(declare-fun m!5766758 () Bool)

(assert (=> b!4787434 m!5766758))

(declare-fun m!5766760 () Bool)

(assert (=> start!492452 m!5766760))

(declare-fun m!5766762 () Bool)

(assert (=> start!492452 m!5766762))

(declare-fun m!5766764 () Bool)

(assert (=> b!4787428 m!5766764))

(assert (=> b!4787428 m!5766764))

(declare-fun m!5766766 () Bool)

(assert (=> b!4787428 m!5766766))

(assert (=> b!4787428 m!5766766))

(declare-fun m!5766768 () Bool)

(assert (=> b!4787428 m!5766768))

(declare-fun m!5766770 () Bool)

(assert (=> b!4787424 m!5766770))

(declare-fun m!5766772 () Bool)

(assert (=> b!4787425 m!5766772))

(declare-fun m!5766774 () Bool)

(assert (=> b!4787430 m!5766774))

(assert (=> b!4787431 m!5766760))

(declare-fun m!5766776 () Bool)

(assert (=> b!4787431 m!5766776))

(declare-fun m!5766778 () Bool)

(assert (=> b!4787431 m!5766778))

(declare-fun m!5766780 () Bool)

(assert (=> b!4787429 m!5766780))

(declare-fun m!5766782 () Bool)

(assert (=> b!4787427 m!5766782))

(declare-fun m!5766784 () Bool)

(assert (=> b!4787427 m!5766784))

(push 1)

(assert tp_is_empty!33367)

(assert (not b!4787432))

(assert (not b!4787433))

(assert (not b!4787434))

(assert (not b!4787430))

(assert (not b!4787427))

(assert (not b!4787431))

(assert (not start!492452))

(assert (not b!4787428))

(assert (not b!4787425))

(assert (not b!4787429))

(assert (not b!4787426))

(assert (not b!4787424))

(assert tp_is_empty!33365)

(assert (not b!4787423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


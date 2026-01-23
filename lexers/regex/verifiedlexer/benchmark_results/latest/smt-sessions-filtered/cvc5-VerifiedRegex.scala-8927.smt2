; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!478610 () Bool)

(assert start!478610)

(declare-fun b!4710560 () Bool)

(declare-fun res!1990838 () Bool)

(declare-fun e!2938027 () Bool)

(assert (=> b!4710560 (=> res!1990838 e!2938027)))

(declare-datatypes ((K!14038 0))(
  ( (K!14039 (val!19501 Int)) )
))
(declare-datatypes ((V!14284 0))(
  ( (V!14285 (val!19502 Int)) )
))
(declare-datatypes ((tuple2!54214 0))(
  ( (tuple2!54215 (_1!30401 K!14038) (_2!30401 V!14284)) )
))
(declare-datatypes ((List!52799 0))(
  ( (Nil!52675) (Cons!52675 (h!58984 tuple2!54214) (t!360037 List!52799)) )
))
(declare-fun lt!1875014 () List!52799)

(declare-fun key!4653 () K!14038)

(declare-fun containsKey!3258 (List!52799 K!14038) Bool)

(assert (=> b!4710560 (= res!1990838 (containsKey!3258 lt!1875014 key!4653))))

(declare-fun b!4710561 () Bool)

(declare-fun e!2938021 () Bool)

(declare-fun e!2938029 () Bool)

(assert (=> b!4710561 (= e!2938021 e!2938029)))

(declare-fun res!1990834 () Bool)

(assert (=> b!4710561 (=> res!1990834 e!2938029)))

(declare-datatypes ((ListMap!5163 0))(
  ( (ListMap!5164 (toList!5799 List!52799)) )
))
(declare-fun lt!1875012 () ListMap!5163)

(declare-fun lt!1875011 () ListMap!5163)

(declare-fun -!729 (ListMap!5163 K!14038) ListMap!5163)

(assert (=> b!4710561 (= res!1990834 (not (= (-!729 lt!1875011 key!4653) lt!1875012)))))

(declare-fun oldBucket!34 () List!52799)

(declare-fun +!2219 (ListMap!5163 tuple2!54214) ListMap!5163)

(assert (=> b!4710561 (= (-!729 (+!2219 lt!1875012 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))) key!4653) lt!1875012)))

(declare-datatypes ((Unit!127876 0))(
  ( (Unit!127877) )
))
(declare-fun lt!1875006 () Unit!127876)

(declare-fun addThenRemoveForNewKeyIsSame!60 (ListMap!5163 K!14038 V!14284) Unit!127876)

(assert (=> b!4710561 (= lt!1875006 (addThenRemoveForNewKeyIsSame!60 lt!1875012 key!4653 (_2!30401 (h!58984 oldBucket!34))))))

(declare-fun b!4710562 () Bool)

(declare-fun res!1990829 () Bool)

(declare-fun e!2938028 () Bool)

(assert (=> b!4710562 (=> (not res!1990829) (not e!2938028))))

(declare-fun newBucket!218 () List!52799)

(declare-fun removePairForKey!1550 (List!52799 K!14038) List!52799)

(assert (=> b!4710562 (= res!1990829 (= (removePairForKey!1550 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4710563 () Bool)

(declare-fun res!1990832 () Bool)

(assert (=> b!4710563 (=> (not res!1990832) (not e!2938028))))

(declare-fun noDuplicateKeys!1955 (List!52799) Bool)

(assert (=> b!4710563 (= res!1990832 (noDuplicateKeys!1955 newBucket!218))))

(declare-fun b!4710564 () Bool)

(declare-fun e!2938024 () Bool)

(assert (=> b!4710564 (= e!2938028 e!2938024)))

(declare-fun res!1990837 () Bool)

(assert (=> b!4710564 (=> (not res!1990837) (not e!2938024))))

(declare-fun lt!1875009 () ListMap!5163)

(declare-fun contains!15977 (ListMap!5163 K!14038) Bool)

(assert (=> b!4710564 (= res!1990837 (contains!15977 lt!1875009 key!4653))))

(declare-datatypes ((tuple2!54216 0))(
  ( (tuple2!54217 (_1!30402 (_ BitVec 64)) (_2!30402 List!52799)) )
))
(declare-datatypes ((List!52800 0))(
  ( (Nil!52676) (Cons!52676 (h!58985 tuple2!54216) (t!360038 List!52800)) )
))
(declare-datatypes ((ListLongMap!4329 0))(
  ( (ListLongMap!4330 (toList!5800 List!52800)) )
))
(declare-fun lm!2023 () ListLongMap!4329)

(declare-fun extractMap!1981 (List!52800) ListMap!5163)

(assert (=> b!4710564 (= lt!1875009 (extractMap!1981 (toList!5800 lm!2023)))))

(declare-fun b!4710565 () Bool)

(declare-fun e!2938023 () Bool)

(assert (=> b!4710565 (= e!2938023 e!2938027)))

(declare-fun res!1990824 () Bool)

(assert (=> b!4710565 (=> res!1990824 e!2938027)))

(declare-fun lt!1875007 () ListMap!5163)

(declare-fun eq!1092 (ListMap!5163 ListMap!5163) Bool)

(declare-fun addToMapMapFromBucket!1385 (List!52799 ListMap!5163) ListMap!5163)

(assert (=> b!4710565 (= res!1990824 (not (eq!1092 lt!1875011 (addToMapMapFromBucket!1385 oldBucket!34 lt!1875007))))))

(assert (=> b!4710565 (= lt!1875011 (+!2219 lt!1875012 (h!58984 oldBucket!34)))))

(declare-fun lt!1875005 () tuple2!54214)

(assert (=> b!4710565 (eq!1092 (addToMapMapFromBucket!1385 (Cons!52675 lt!1875005 lt!1875014) lt!1875007) (+!2219 lt!1875012 lt!1875005))))

(declare-fun lt!1875008 () Unit!127876)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!341 (tuple2!54214 List!52799 ListMap!5163) Unit!127876)

(assert (=> b!4710565 (= lt!1875008 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!341 lt!1875005 lt!1875014 lt!1875007))))

(declare-fun head!10149 (List!52799) tuple2!54214)

(assert (=> b!4710565 (= lt!1875005 (head!10149 oldBucket!34))))

(declare-fun b!4710566 () Bool)

(declare-fun e!2938032 () Bool)

(declare-fun e!2938025 () Bool)

(assert (=> b!4710566 (= e!2938032 (not e!2938025))))

(declare-fun res!1990821 () Bool)

(assert (=> b!4710566 (=> res!1990821 e!2938025)))

(assert (=> b!4710566 (= res!1990821 (or (not (is-Cons!52675 oldBucket!34)) (not (= (_1!30401 (h!58984 oldBucket!34)) key!4653))))))

(assert (=> b!4710566 (= lt!1875009 (addToMapMapFromBucket!1385 (_2!30402 (h!58985 (toList!5800 lm!2023))) lt!1875007))))

(assert (=> b!4710566 (= lt!1875007 (extractMap!1981 (t!360038 (toList!5800 lm!2023))))))

(declare-fun tail!8853 (ListLongMap!4329) ListLongMap!4329)

(assert (=> b!4710566 (= (t!360038 (toList!5800 lm!2023)) (toList!5800 (tail!8853 lm!2023)))))

(declare-fun b!4710567 () Bool)

(declare-fun res!1990820 () Bool)

(assert (=> b!4710567 (=> (not res!1990820) (not e!2938024))))

(declare-datatypes ((Hashable!6324 0))(
  ( (HashableExt!6323 (__x!32027 Int)) )
))
(declare-fun hashF!1323 () Hashable!6324)

(declare-fun allKeysSameHashInMap!1869 (ListLongMap!4329 Hashable!6324) Bool)

(assert (=> b!4710567 (= res!1990820 (allKeysSameHashInMap!1869 lm!2023 hashF!1323))))

(declare-fun b!4710568 () Bool)

(declare-fun e!2938022 () Bool)

(declare-fun e!2938033 () Bool)

(assert (=> b!4710568 (= e!2938022 e!2938033)))

(declare-fun res!1990839 () Bool)

(assert (=> b!4710568 (=> res!1990839 e!2938033)))

(declare-fun lt!1875003 () ListMap!5163)

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4710568 (= res!1990839 (not (= lt!1875003 (extractMap!1981 (Cons!52676 (tuple2!54217 hash!405 newBucket!218) (t!360038 (toList!5800 lm!2023)))))))))

(declare-fun lt!1875010 () List!52800)

(assert (=> b!4710568 (= lt!1875003 (extractMap!1981 lt!1875010))))

(assert (=> b!4710568 (= lt!1875010 (Cons!52676 (tuple2!54217 hash!405 lt!1875014) (t!360038 (toList!5800 lm!2023))))))

(declare-fun b!4710569 () Bool)

(declare-fun res!1990831 () Bool)

(assert (=> b!4710569 (=> (not res!1990831) (not e!2938024))))

(declare-fun allKeysSameHash!1781 (List!52799 (_ BitVec 64) Hashable!6324) Bool)

(assert (=> b!4710569 (= res!1990831 (allKeysSameHash!1781 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1347466 () Bool)

(declare-fun b!4710570 () Bool)

(declare-fun tp_is_empty!31113 () Bool)

(declare-fun tp_is_empty!31115 () Bool)

(declare-fun e!2938030 () Bool)

(assert (=> b!4710570 (= e!2938030 (and tp_is_empty!31113 tp_is_empty!31115 tp!1347466))))

(declare-fun b!4710571 () Bool)

(assert (=> b!4710571 (= e!2938027 e!2938021)))

(declare-fun res!1990835 () Bool)

(assert (=> b!4710571 (=> res!1990835 e!2938021)))

(assert (=> b!4710571 (= res!1990835 (contains!15977 lt!1875012 key!4653))))

(assert (=> b!4710571 (not (contains!15977 lt!1875003 key!4653))))

(declare-fun lt!1875004 () Unit!127876)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!409 (ListLongMap!4329 K!14038 Hashable!6324) Unit!127876)

(assert (=> b!4710571 (= lt!1875004 (lemmaNotInItsHashBucketThenNotInMap!409 (ListLongMap!4330 lt!1875010) key!4653 hashF!1323))))

(declare-fun b!4710572 () Bool)

(declare-fun res!1990828 () Bool)

(assert (=> b!4710572 (=> (not res!1990828) (not e!2938028))))

(assert (=> b!4710572 (= res!1990828 (noDuplicateKeys!1955 oldBucket!34))))

(declare-fun b!4710573 () Bool)

(declare-fun e!2938031 () Bool)

(declare-fun tp!1347465 () Bool)

(assert (=> b!4710573 (= e!2938031 tp!1347465)))

(declare-fun b!4710574 () Bool)

(declare-fun res!1990833 () Bool)

(assert (=> b!4710574 (=> res!1990833 e!2938027)))

(assert (=> b!4710574 (= res!1990833 (not (= lt!1875012 lt!1875003)))))

(declare-fun b!4710575 () Bool)

(assert (=> b!4710575 (= e!2938033 e!2938023)))

(declare-fun res!1990823 () Bool)

(assert (=> b!4710575 (=> res!1990823 e!2938023)))

(assert (=> b!4710575 (= res!1990823 (not (= lt!1875012 (addToMapMapFromBucket!1385 newBucket!218 lt!1875007))))))

(assert (=> b!4710575 (= lt!1875012 (addToMapMapFromBucket!1385 lt!1875014 lt!1875007))))

(declare-fun b!4710576 () Bool)

(declare-fun res!1990830 () Bool)

(assert (=> b!4710576 (=> (not res!1990830) (not e!2938032))))

(assert (=> b!4710576 (= res!1990830 (is-Cons!52676 (toList!5800 lm!2023)))))

(declare-fun b!4710577 () Bool)

(assert (=> b!4710577 (= e!2938024 e!2938032)))

(declare-fun res!1990836 () Bool)

(assert (=> b!4710577 (=> (not res!1990836) (not e!2938032))))

(declare-fun lt!1875013 () tuple2!54216)

(declare-fun head!10150 (List!52800) tuple2!54216)

(assert (=> b!4710577 (= res!1990836 (= (head!10150 (toList!5800 lm!2023)) lt!1875013))))

(assert (=> b!4710577 (= lt!1875013 (tuple2!54217 hash!405 oldBucket!34))))

(declare-fun b!4710578 () Bool)

(declare-fun res!1990825 () Bool)

(assert (=> b!4710578 (=> (not res!1990825) (not e!2938028))))

(assert (=> b!4710578 (= res!1990825 (allKeysSameHash!1781 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4710579 () Bool)

(assert (=> b!4710579 (= e!2938029 (eq!1092 lt!1875011 (extractMap!1981 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023))))))))

(declare-fun b!4710580 () Bool)

(declare-fun res!1990826 () Bool)

(assert (=> b!4710580 (=> (not res!1990826) (not e!2938024))))

(declare-fun hash!4279 (Hashable!6324 K!14038) (_ BitVec 64))

(assert (=> b!4710580 (= res!1990826 (= (hash!4279 hashF!1323 key!4653) hash!405))))

(declare-fun res!1990822 () Bool)

(assert (=> start!478610 (=> (not res!1990822) (not e!2938028))))

(declare-fun lambda!212620 () Int)

(declare-fun forall!11486 (List!52800 Int) Bool)

(assert (=> start!478610 (= res!1990822 (forall!11486 (toList!5800 lm!2023) lambda!212620))))

(assert (=> start!478610 e!2938028))

(declare-fun inv!67913 (ListLongMap!4329) Bool)

(assert (=> start!478610 (and (inv!67913 lm!2023) e!2938031)))

(assert (=> start!478610 tp_is_empty!31113))

(assert (=> start!478610 e!2938030))

(assert (=> start!478610 true))

(declare-fun e!2938026 () Bool)

(assert (=> start!478610 e!2938026))

(declare-fun tp!1347464 () Bool)

(declare-fun b!4710581 () Bool)

(assert (=> b!4710581 (= e!2938026 (and tp_is_empty!31113 tp_is_empty!31115 tp!1347464))))

(declare-fun b!4710582 () Bool)

(assert (=> b!4710582 (= e!2938025 e!2938022)))

(declare-fun res!1990827 () Bool)

(assert (=> b!4710582 (=> res!1990827 e!2938022)))

(assert (=> b!4710582 (= res!1990827 (not (= lt!1875014 newBucket!218)))))

(declare-fun tail!8854 (List!52799) List!52799)

(assert (=> b!4710582 (= lt!1875014 (tail!8854 oldBucket!34))))

(assert (= (and start!478610 res!1990822) b!4710572))

(assert (= (and b!4710572 res!1990828) b!4710563))

(assert (= (and b!4710563 res!1990832) b!4710562))

(assert (= (and b!4710562 res!1990829) b!4710578))

(assert (= (and b!4710578 res!1990825) b!4710564))

(assert (= (and b!4710564 res!1990837) b!4710580))

(assert (= (and b!4710580 res!1990826) b!4710569))

(assert (= (and b!4710569 res!1990831) b!4710567))

(assert (= (and b!4710567 res!1990820) b!4710577))

(assert (= (and b!4710577 res!1990836) b!4710576))

(assert (= (and b!4710576 res!1990830) b!4710566))

(assert (= (and b!4710566 (not res!1990821)) b!4710582))

(assert (= (and b!4710582 (not res!1990827)) b!4710568))

(assert (= (and b!4710568 (not res!1990839)) b!4710575))

(assert (= (and b!4710575 (not res!1990823)) b!4710565))

(assert (= (and b!4710565 (not res!1990824)) b!4710560))

(assert (= (and b!4710560 (not res!1990838)) b!4710574))

(assert (= (and b!4710574 (not res!1990833)) b!4710571))

(assert (= (and b!4710571 (not res!1990835)) b!4710561))

(assert (= (and b!4710561 (not res!1990834)) b!4710579))

(assert (= start!478610 b!4710573))

(assert (= (and start!478610 (is-Cons!52675 oldBucket!34)) b!4710570))

(assert (= (and start!478610 (is-Cons!52675 newBucket!218)) b!4710581))

(declare-fun m!5635725 () Bool)

(assert (=> b!4710575 m!5635725))

(declare-fun m!5635727 () Bool)

(assert (=> b!4710575 m!5635727))

(declare-fun m!5635729 () Bool)

(assert (=> b!4710569 m!5635729))

(declare-fun m!5635731 () Bool)

(assert (=> b!4710564 m!5635731))

(declare-fun m!5635733 () Bool)

(assert (=> b!4710564 m!5635733))

(declare-fun m!5635735 () Bool)

(assert (=> b!4710565 m!5635735))

(declare-fun m!5635737 () Bool)

(assert (=> b!4710565 m!5635737))

(assert (=> b!4710565 m!5635735))

(declare-fun m!5635739 () Bool)

(assert (=> b!4710565 m!5635739))

(declare-fun m!5635741 () Bool)

(assert (=> b!4710565 m!5635741))

(assert (=> b!4710565 m!5635739))

(declare-fun m!5635743 () Bool)

(assert (=> b!4710565 m!5635743))

(declare-fun m!5635745 () Bool)

(assert (=> b!4710565 m!5635745))

(assert (=> b!4710565 m!5635743))

(declare-fun m!5635747 () Bool)

(assert (=> b!4710565 m!5635747))

(declare-fun m!5635749 () Bool)

(assert (=> b!4710565 m!5635749))

(declare-fun m!5635751 () Bool)

(assert (=> b!4710580 m!5635751))

(declare-fun m!5635753 () Bool)

(assert (=> b!4710568 m!5635753))

(declare-fun m!5635755 () Bool)

(assert (=> b!4710568 m!5635755))

(declare-fun m!5635757 () Bool)

(assert (=> b!4710566 m!5635757))

(declare-fun m!5635759 () Bool)

(assert (=> b!4710566 m!5635759))

(declare-fun m!5635761 () Bool)

(assert (=> b!4710566 m!5635761))

(declare-fun m!5635763 () Bool)

(assert (=> b!4710572 m!5635763))

(declare-fun m!5635765 () Bool)

(assert (=> b!4710577 m!5635765))

(declare-fun m!5635767 () Bool)

(assert (=> b!4710571 m!5635767))

(declare-fun m!5635769 () Bool)

(assert (=> b!4710571 m!5635769))

(declare-fun m!5635771 () Bool)

(assert (=> b!4710571 m!5635771))

(declare-fun m!5635773 () Bool)

(assert (=> b!4710579 m!5635773))

(assert (=> b!4710579 m!5635773))

(declare-fun m!5635775 () Bool)

(assert (=> b!4710579 m!5635775))

(declare-fun m!5635777 () Bool)

(assert (=> b!4710567 m!5635777))

(declare-fun m!5635779 () Bool)

(assert (=> b!4710578 m!5635779))

(declare-fun m!5635781 () Bool)

(assert (=> b!4710561 m!5635781))

(declare-fun m!5635783 () Bool)

(assert (=> b!4710561 m!5635783))

(assert (=> b!4710561 m!5635783))

(declare-fun m!5635785 () Bool)

(assert (=> b!4710561 m!5635785))

(declare-fun m!5635787 () Bool)

(assert (=> b!4710561 m!5635787))

(declare-fun m!5635789 () Bool)

(assert (=> b!4710560 m!5635789))

(declare-fun m!5635791 () Bool)

(assert (=> b!4710562 m!5635791))

(declare-fun m!5635793 () Bool)

(assert (=> start!478610 m!5635793))

(declare-fun m!5635795 () Bool)

(assert (=> start!478610 m!5635795))

(declare-fun m!5635797 () Bool)

(assert (=> b!4710563 m!5635797))

(declare-fun m!5635799 () Bool)

(assert (=> b!4710582 m!5635799))

(push 1)

(assert (not b!4710573))

(assert (not b!4710567))

(assert (not b!4710578))

(assert (not b!4710575))

(assert (not b!4710565))

(assert tp_is_empty!31115)

(assert (not b!4710568))

(assert (not b!4710564))

(assert (not b!4710577))

(assert (not b!4710562))

(assert (not b!4710561))

(assert (not b!4710569))

(assert (not b!4710560))

(assert (not b!4710570))

(assert tp_is_empty!31113)

(assert (not b!4710563))

(assert (not b!4710579))

(assert (not b!4710581))

(assert (not b!4710580))

(assert (not b!4710566))

(assert (not b!4710571))

(assert (not b!4710572))

(assert (not start!478610))

(assert (not b!4710582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1498970 () Bool)

(declare-fun res!1990904 () Bool)

(declare-fun e!2938083 () Bool)

(assert (=> d!1498970 (=> res!1990904 e!2938083)))

(assert (=> d!1498970 (= res!1990904 (is-Nil!52676 (toList!5800 lm!2023)))))

(assert (=> d!1498970 (= (forall!11486 (toList!5800 lm!2023) lambda!212620) e!2938083)))

(declare-fun b!4710668 () Bool)

(declare-fun e!2938084 () Bool)

(assert (=> b!4710668 (= e!2938083 e!2938084)))

(declare-fun res!1990905 () Bool)

(assert (=> b!4710668 (=> (not res!1990905) (not e!2938084))))

(declare-fun dynLambda!21776 (Int tuple2!54216) Bool)

(assert (=> b!4710668 (= res!1990905 (dynLambda!21776 lambda!212620 (h!58985 (toList!5800 lm!2023))))))

(declare-fun b!4710669 () Bool)

(assert (=> b!4710669 (= e!2938084 (forall!11486 (t!360038 (toList!5800 lm!2023)) lambda!212620))))

(assert (= (and d!1498970 (not res!1990904)) b!4710668))

(assert (= (and b!4710668 res!1990905) b!4710669))

(declare-fun b_lambda!177645 () Bool)

(assert (=> (not b_lambda!177645) (not b!4710668)))

(declare-fun m!5635883 () Bool)

(assert (=> b!4710668 m!5635883))

(declare-fun m!5635885 () Bool)

(assert (=> b!4710669 m!5635885))

(assert (=> start!478610 d!1498970))

(declare-fun d!1498972 () Bool)

(declare-fun isStrictlySorted!712 (List!52800) Bool)

(assert (=> d!1498972 (= (inv!67913 lm!2023) (isStrictlySorted!712 (toList!5800 lm!2023)))))

(declare-fun bs!1101729 () Bool)

(assert (= bs!1101729 d!1498972))

(declare-fun m!5635887 () Bool)

(assert (=> bs!1101729 m!5635887))

(assert (=> start!478610 d!1498972))

(declare-fun d!1498974 () Bool)

(declare-fun hash!4281 (Hashable!6324 K!14038) (_ BitVec 64))

(assert (=> d!1498974 (= (hash!4279 hashF!1323 key!4653) (hash!4281 hashF!1323 key!4653))))

(declare-fun bs!1101730 () Bool)

(assert (= bs!1101730 d!1498974))

(declare-fun m!5635889 () Bool)

(assert (=> bs!1101730 m!5635889))

(assert (=> b!4710580 d!1498974))

(declare-fun d!1498976 () Bool)

(assert (=> d!1498976 (= (tail!8854 oldBucket!34) (t!360037 oldBucket!34))))

(assert (=> b!4710582 d!1498976))

(declare-fun d!1498978 () Bool)

(declare-fun e!2938087 () Bool)

(assert (=> d!1498978 e!2938087))

(declare-fun res!1990908 () Bool)

(assert (=> d!1498978 (=> (not res!1990908) (not e!2938087))))

(declare-fun lt!1875056 () ListMap!5163)

(assert (=> d!1498978 (= res!1990908 (not (contains!15977 lt!1875056 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!386 (List!52799 K!14038) List!52799)

(assert (=> d!1498978 (= lt!1875056 (ListMap!5164 (removePresrvNoDuplicatedKeys!386 (toList!5799 lt!1875011) key!4653)))))

(assert (=> d!1498978 (= (-!729 lt!1875011 key!4653) lt!1875056)))

(declare-fun b!4710672 () Bool)

(declare-datatypes ((List!52803 0))(
  ( (Nil!52679) (Cons!52679 (h!58990 K!14038) (t!360042 List!52803)) )
))
(declare-fun content!9331 (List!52803) (Set K!14038))

(declare-fun keys!18878 (ListMap!5163) List!52803)

(assert (=> b!4710672 (= e!2938087 (= (set.minus (content!9331 (keys!18878 lt!1875011)) (set.insert key!4653 (as set.empty (Set K!14038)))) (content!9331 (keys!18878 lt!1875056))))))

(assert (= (and d!1498978 res!1990908) b!4710672))

(declare-fun m!5635891 () Bool)

(assert (=> d!1498978 m!5635891))

(declare-fun m!5635893 () Bool)

(assert (=> d!1498978 m!5635893))

(declare-fun m!5635895 () Bool)

(assert (=> b!4710672 m!5635895))

(assert (=> b!4710672 m!5635895))

(declare-fun m!5635897 () Bool)

(assert (=> b!4710672 m!5635897))

(declare-fun m!5635899 () Bool)

(assert (=> b!4710672 m!5635899))

(assert (=> b!4710672 m!5635899))

(declare-fun m!5635901 () Bool)

(assert (=> b!4710672 m!5635901))

(declare-fun m!5635903 () Bool)

(assert (=> b!4710672 m!5635903))

(assert (=> b!4710561 d!1498978))

(declare-fun d!1498980 () Bool)

(declare-fun e!2938088 () Bool)

(assert (=> d!1498980 e!2938088))

(declare-fun res!1990909 () Bool)

(assert (=> d!1498980 (=> (not res!1990909) (not e!2938088))))

(declare-fun lt!1875057 () ListMap!5163)

(assert (=> d!1498980 (= res!1990909 (not (contains!15977 lt!1875057 key!4653)))))

(assert (=> d!1498980 (= lt!1875057 (ListMap!5164 (removePresrvNoDuplicatedKeys!386 (toList!5799 (+!2219 lt!1875012 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))) key!4653)))))

(assert (=> d!1498980 (= (-!729 (+!2219 lt!1875012 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))) key!4653) lt!1875057)))

(declare-fun b!4710673 () Bool)

(assert (=> b!4710673 (= e!2938088 (= (set.minus (content!9331 (keys!18878 (+!2219 lt!1875012 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))))) (set.insert key!4653 (as set.empty (Set K!14038)))) (content!9331 (keys!18878 lt!1875057))))))

(assert (= (and d!1498980 res!1990909) b!4710673))

(declare-fun m!5635905 () Bool)

(assert (=> d!1498980 m!5635905))

(declare-fun m!5635907 () Bool)

(assert (=> d!1498980 m!5635907))

(assert (=> b!4710673 m!5635783))

(declare-fun m!5635909 () Bool)

(assert (=> b!4710673 m!5635909))

(assert (=> b!4710673 m!5635909))

(declare-fun m!5635911 () Bool)

(assert (=> b!4710673 m!5635911))

(declare-fun m!5635913 () Bool)

(assert (=> b!4710673 m!5635913))

(assert (=> b!4710673 m!5635913))

(declare-fun m!5635915 () Bool)

(assert (=> b!4710673 m!5635915))

(assert (=> b!4710673 m!5635903))

(assert (=> b!4710561 d!1498980))

(declare-fun d!1498982 () Bool)

(declare-fun e!2938091 () Bool)

(assert (=> d!1498982 e!2938091))

(declare-fun res!1990915 () Bool)

(assert (=> d!1498982 (=> (not res!1990915) (not e!2938091))))

(declare-fun lt!1875067 () ListMap!5163)

(assert (=> d!1498982 (= res!1990915 (contains!15977 lt!1875067 (_1!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))))))

(declare-fun lt!1875066 () List!52799)

(assert (=> d!1498982 (= lt!1875067 (ListMap!5164 lt!1875066))))

(declare-fun lt!1875068 () Unit!127876)

(declare-fun lt!1875069 () Unit!127876)

(assert (=> d!1498982 (= lt!1875068 lt!1875069)))

(declare-datatypes ((Option!12266 0))(
  ( (None!12265) (Some!12265 (v!46792 V!14284)) )
))
(declare-fun getValueByKey!1898 (List!52799 K!14038) Option!12266)

(assert (=> d!1498982 (= (getValueByKey!1898 lt!1875066 (_1!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))) (Some!12265 (_2!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1061 (List!52799 K!14038 V!14284) Unit!127876)

(assert (=> d!1498982 (= lt!1875069 (lemmaContainsTupThenGetReturnValue!1061 lt!1875066 (_1!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))) (_2!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!569 (List!52799 K!14038 V!14284) List!52799)

(assert (=> d!1498982 (= lt!1875066 (insertNoDuplicatedKeys!569 (toList!5799 lt!1875012) (_1!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))) (_2!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))))))

(assert (=> d!1498982 (= (+!2219 lt!1875012 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))) lt!1875067)))

(declare-fun b!4710678 () Bool)

(declare-fun res!1990914 () Bool)

(assert (=> b!4710678 (=> (not res!1990914) (not e!2938091))))

(assert (=> b!4710678 (= res!1990914 (= (getValueByKey!1898 (toList!5799 lt!1875067) (_1!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34))))) (Some!12265 (_2!30401 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))))))))

(declare-fun b!4710679 () Bool)

(declare-fun contains!15979 (List!52799 tuple2!54214) Bool)

(assert (=> b!4710679 (= e!2938091 (contains!15979 (toList!5799 lt!1875067) (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))))))

(assert (= (and d!1498982 res!1990915) b!4710678))

(assert (= (and b!4710678 res!1990914) b!4710679))

(declare-fun m!5635917 () Bool)

(assert (=> d!1498982 m!5635917))

(declare-fun m!5635919 () Bool)

(assert (=> d!1498982 m!5635919))

(declare-fun m!5635921 () Bool)

(assert (=> d!1498982 m!5635921))

(declare-fun m!5635923 () Bool)

(assert (=> d!1498982 m!5635923))

(declare-fun m!5635925 () Bool)

(assert (=> b!4710678 m!5635925))

(declare-fun m!5635927 () Bool)

(assert (=> b!4710679 m!5635927))

(assert (=> b!4710561 d!1498982))

(declare-fun d!1498984 () Bool)

(assert (=> d!1498984 (= (-!729 (+!2219 lt!1875012 (tuple2!54215 key!4653 (_2!30401 (h!58984 oldBucket!34)))) key!4653) lt!1875012)))

(declare-fun lt!1875072 () Unit!127876)

(declare-fun choose!33114 (ListMap!5163 K!14038 V!14284) Unit!127876)

(assert (=> d!1498984 (= lt!1875072 (choose!33114 lt!1875012 key!4653 (_2!30401 (h!58984 oldBucket!34))))))

(assert (=> d!1498984 (not (contains!15977 lt!1875012 key!4653))))

(assert (=> d!1498984 (= (addThenRemoveForNewKeyIsSame!60 lt!1875012 key!4653 (_2!30401 (h!58984 oldBucket!34))) lt!1875072)))

(declare-fun bs!1101731 () Bool)

(assert (= bs!1101731 d!1498984))

(assert (=> bs!1101731 m!5635783))

(assert (=> bs!1101731 m!5635783))

(assert (=> bs!1101731 m!5635785))

(declare-fun m!5635929 () Bool)

(assert (=> bs!1101731 m!5635929))

(assert (=> bs!1101731 m!5635767))

(assert (=> b!4710561 d!1498984))

(declare-fun d!1498986 () Bool)

(declare-fun res!1990920 () Bool)

(declare-fun e!2938096 () Bool)

(assert (=> d!1498986 (=> res!1990920 e!2938096)))

(assert (=> d!1498986 (= res!1990920 (and (is-Cons!52675 lt!1875014) (= (_1!30401 (h!58984 lt!1875014)) key!4653)))))

(assert (=> d!1498986 (= (containsKey!3258 lt!1875014 key!4653) e!2938096)))

(declare-fun b!4710684 () Bool)

(declare-fun e!2938097 () Bool)

(assert (=> b!4710684 (= e!2938096 e!2938097)))

(declare-fun res!1990921 () Bool)

(assert (=> b!4710684 (=> (not res!1990921) (not e!2938097))))

(assert (=> b!4710684 (= res!1990921 (is-Cons!52675 lt!1875014))))

(declare-fun b!4710685 () Bool)

(assert (=> b!4710685 (= e!2938097 (containsKey!3258 (t!360037 lt!1875014) key!4653))))

(assert (= (and d!1498986 (not res!1990920)) b!4710684))

(assert (= (and b!4710684 res!1990921) b!4710685))

(declare-fun m!5635931 () Bool)

(assert (=> b!4710685 m!5635931))

(assert (=> b!4710560 d!1498986))

(declare-fun b!4710704 () Bool)

(declare-fun e!2938113 () List!52803)

(assert (=> b!4710704 (= e!2938113 (keys!18878 lt!1875012))))

(declare-fun b!4710705 () Bool)

(declare-fun getKeysList!913 (List!52799) List!52803)

(assert (=> b!4710705 (= e!2938113 (getKeysList!913 (toList!5799 lt!1875012)))))

(declare-fun bm!329323 () Bool)

(declare-fun call!329328 () Bool)

(declare-fun contains!15980 (List!52803 K!14038) Bool)

(assert (=> bm!329323 (= call!329328 (contains!15980 e!2938113 key!4653))))

(declare-fun c!804773 () Bool)

(declare-fun c!804772 () Bool)

(assert (=> bm!329323 (= c!804773 c!804772)))

(declare-fun b!4710707 () Bool)

(assert (=> b!4710707 false))

(declare-fun lt!1875091 () Unit!127876)

(declare-fun lt!1875096 () Unit!127876)

(assert (=> b!4710707 (= lt!1875091 lt!1875096)))

(declare-fun containsKey!3260 (List!52799 K!14038) Bool)

(assert (=> b!4710707 (containsKey!3260 (toList!5799 lt!1875012) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!912 (List!52799 K!14038) Unit!127876)

(assert (=> b!4710707 (= lt!1875096 (lemmaInGetKeysListThenContainsKey!912 (toList!5799 lt!1875012) key!4653))))

(declare-fun e!2938111 () Unit!127876)

(declare-fun Unit!127880 () Unit!127876)

(assert (=> b!4710707 (= e!2938111 Unit!127880)))

(declare-fun b!4710708 () Bool)

(declare-fun e!2938114 () Bool)

(declare-fun e!2938110 () Bool)

(assert (=> b!4710708 (= e!2938114 e!2938110)))

(declare-fun res!1990928 () Bool)

(assert (=> b!4710708 (=> (not res!1990928) (not e!2938110))))

(declare-fun isDefined!9521 (Option!12266) Bool)

(assert (=> b!4710708 (= res!1990928 (isDefined!9521 (getValueByKey!1898 (toList!5799 lt!1875012) key!4653)))))

(declare-fun b!4710709 () Bool)

(declare-fun Unit!127881 () Unit!127876)

(assert (=> b!4710709 (= e!2938111 Unit!127881)))

(declare-fun b!4710710 () Bool)

(assert (=> b!4710710 (= e!2938110 (contains!15980 (keys!18878 lt!1875012) key!4653))))

(declare-fun d!1498988 () Bool)

(assert (=> d!1498988 e!2938114))

(declare-fun res!1990929 () Bool)

(assert (=> d!1498988 (=> res!1990929 e!2938114)))

(declare-fun e!2938115 () Bool)

(assert (=> d!1498988 (= res!1990929 e!2938115)))

(declare-fun res!1990930 () Bool)

(assert (=> d!1498988 (=> (not res!1990930) (not e!2938115))))

(declare-fun lt!1875090 () Bool)

(assert (=> d!1498988 (= res!1990930 (not lt!1875090))))

(declare-fun lt!1875094 () Bool)

(assert (=> d!1498988 (= lt!1875090 lt!1875094)))

(declare-fun lt!1875089 () Unit!127876)

(declare-fun e!2938112 () Unit!127876)

(assert (=> d!1498988 (= lt!1875089 e!2938112)))

(assert (=> d!1498988 (= c!804772 lt!1875094)))

(assert (=> d!1498988 (= lt!1875094 (containsKey!3260 (toList!5799 lt!1875012) key!4653))))

(assert (=> d!1498988 (= (contains!15977 lt!1875012 key!4653) lt!1875090)))

(declare-fun b!4710706 () Bool)

(assert (=> b!4710706 (= e!2938115 (not (contains!15980 (keys!18878 lt!1875012) key!4653)))))

(declare-fun b!4710711 () Bool)

(declare-fun lt!1875093 () Unit!127876)

(assert (=> b!4710711 (= e!2938112 lt!1875093)))

(declare-fun lt!1875092 () Unit!127876)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1790 (List!52799 K!14038) Unit!127876)

(assert (=> b!4710711 (= lt!1875092 (lemmaContainsKeyImpliesGetValueByKeyDefined!1790 (toList!5799 lt!1875012) key!4653))))

(assert (=> b!4710711 (isDefined!9521 (getValueByKey!1898 (toList!5799 lt!1875012) key!4653))))

(declare-fun lt!1875095 () Unit!127876)

(assert (=> b!4710711 (= lt!1875095 lt!1875092)))

(declare-fun lemmaInListThenGetKeysListContains!908 (List!52799 K!14038) Unit!127876)

(assert (=> b!4710711 (= lt!1875093 (lemmaInListThenGetKeysListContains!908 (toList!5799 lt!1875012) key!4653))))

(assert (=> b!4710711 call!329328))

(declare-fun b!4710712 () Bool)

(assert (=> b!4710712 (= e!2938112 e!2938111)))

(declare-fun c!804774 () Bool)

(assert (=> b!4710712 (= c!804774 call!329328)))

(assert (= (and d!1498988 c!804772) b!4710711))

(assert (= (and d!1498988 (not c!804772)) b!4710712))

(assert (= (and b!4710712 c!804774) b!4710707))

(assert (= (and b!4710712 (not c!804774)) b!4710709))

(assert (= (or b!4710711 b!4710712) bm!329323))

(assert (= (and bm!329323 c!804773) b!4710705))

(assert (= (and bm!329323 (not c!804773)) b!4710704))

(assert (= (and d!1498988 res!1990930) b!4710706))

(assert (= (and d!1498988 (not res!1990929)) b!4710708))

(assert (= (and b!4710708 res!1990928) b!4710710))

(declare-fun m!5635933 () Bool)

(assert (=> bm!329323 m!5635933))

(declare-fun m!5635935 () Bool)

(assert (=> b!4710707 m!5635935))

(declare-fun m!5635937 () Bool)

(assert (=> b!4710707 m!5635937))

(declare-fun m!5635939 () Bool)

(assert (=> b!4710706 m!5635939))

(assert (=> b!4710706 m!5635939))

(declare-fun m!5635941 () Bool)

(assert (=> b!4710706 m!5635941))

(declare-fun m!5635943 () Bool)

(assert (=> b!4710711 m!5635943))

(declare-fun m!5635945 () Bool)

(assert (=> b!4710711 m!5635945))

(assert (=> b!4710711 m!5635945))

(declare-fun m!5635947 () Bool)

(assert (=> b!4710711 m!5635947))

(declare-fun m!5635949 () Bool)

(assert (=> b!4710711 m!5635949))

(assert (=> b!4710708 m!5635945))

(assert (=> b!4710708 m!5635945))

(assert (=> b!4710708 m!5635947))

(assert (=> d!1498988 m!5635935))

(declare-fun m!5635951 () Bool)

(assert (=> b!4710705 m!5635951))

(assert (=> b!4710710 m!5635939))

(assert (=> b!4710710 m!5635939))

(assert (=> b!4710710 m!5635941))

(assert (=> b!4710704 m!5635939))

(assert (=> b!4710571 d!1498988))

(declare-fun b!4710713 () Bool)

(declare-fun e!2938119 () List!52803)

(assert (=> b!4710713 (= e!2938119 (keys!18878 lt!1875003))))

(declare-fun b!4710714 () Bool)

(assert (=> b!4710714 (= e!2938119 (getKeysList!913 (toList!5799 lt!1875003)))))

(declare-fun bm!329324 () Bool)

(declare-fun call!329329 () Bool)

(assert (=> bm!329324 (= call!329329 (contains!15980 e!2938119 key!4653))))

(declare-fun c!804776 () Bool)

(declare-fun c!804775 () Bool)

(assert (=> bm!329324 (= c!804776 c!804775)))

(declare-fun b!4710716 () Bool)

(assert (=> b!4710716 false))

(declare-fun lt!1875099 () Unit!127876)

(declare-fun lt!1875104 () Unit!127876)

(assert (=> b!4710716 (= lt!1875099 lt!1875104)))

(assert (=> b!4710716 (containsKey!3260 (toList!5799 lt!1875003) key!4653)))

(assert (=> b!4710716 (= lt!1875104 (lemmaInGetKeysListThenContainsKey!912 (toList!5799 lt!1875003) key!4653))))

(declare-fun e!2938117 () Unit!127876)

(declare-fun Unit!127882 () Unit!127876)

(assert (=> b!4710716 (= e!2938117 Unit!127882)))

(declare-fun b!4710717 () Bool)

(declare-fun e!2938120 () Bool)

(declare-fun e!2938116 () Bool)

(assert (=> b!4710717 (= e!2938120 e!2938116)))

(declare-fun res!1990931 () Bool)

(assert (=> b!4710717 (=> (not res!1990931) (not e!2938116))))

(assert (=> b!4710717 (= res!1990931 (isDefined!9521 (getValueByKey!1898 (toList!5799 lt!1875003) key!4653)))))

(declare-fun b!4710718 () Bool)

(declare-fun Unit!127883 () Unit!127876)

(assert (=> b!4710718 (= e!2938117 Unit!127883)))

(declare-fun b!4710719 () Bool)

(assert (=> b!4710719 (= e!2938116 (contains!15980 (keys!18878 lt!1875003) key!4653))))

(declare-fun d!1498990 () Bool)

(assert (=> d!1498990 e!2938120))

(declare-fun res!1990932 () Bool)

(assert (=> d!1498990 (=> res!1990932 e!2938120)))

(declare-fun e!2938121 () Bool)

(assert (=> d!1498990 (= res!1990932 e!2938121)))

(declare-fun res!1990933 () Bool)

(assert (=> d!1498990 (=> (not res!1990933) (not e!2938121))))

(declare-fun lt!1875098 () Bool)

(assert (=> d!1498990 (= res!1990933 (not lt!1875098))))

(declare-fun lt!1875102 () Bool)

(assert (=> d!1498990 (= lt!1875098 lt!1875102)))

(declare-fun lt!1875097 () Unit!127876)

(declare-fun e!2938118 () Unit!127876)

(assert (=> d!1498990 (= lt!1875097 e!2938118)))

(assert (=> d!1498990 (= c!804775 lt!1875102)))

(assert (=> d!1498990 (= lt!1875102 (containsKey!3260 (toList!5799 lt!1875003) key!4653))))

(assert (=> d!1498990 (= (contains!15977 lt!1875003 key!4653) lt!1875098)))

(declare-fun b!4710715 () Bool)

(assert (=> b!4710715 (= e!2938121 (not (contains!15980 (keys!18878 lt!1875003) key!4653)))))

(declare-fun b!4710720 () Bool)

(declare-fun lt!1875101 () Unit!127876)

(assert (=> b!4710720 (= e!2938118 lt!1875101)))

(declare-fun lt!1875100 () Unit!127876)

(assert (=> b!4710720 (= lt!1875100 (lemmaContainsKeyImpliesGetValueByKeyDefined!1790 (toList!5799 lt!1875003) key!4653))))

(assert (=> b!4710720 (isDefined!9521 (getValueByKey!1898 (toList!5799 lt!1875003) key!4653))))

(declare-fun lt!1875103 () Unit!127876)

(assert (=> b!4710720 (= lt!1875103 lt!1875100)))

(assert (=> b!4710720 (= lt!1875101 (lemmaInListThenGetKeysListContains!908 (toList!5799 lt!1875003) key!4653))))

(assert (=> b!4710720 call!329329))

(declare-fun b!4710721 () Bool)

(assert (=> b!4710721 (= e!2938118 e!2938117)))

(declare-fun c!804777 () Bool)

(assert (=> b!4710721 (= c!804777 call!329329)))

(assert (= (and d!1498990 c!804775) b!4710720))

(assert (= (and d!1498990 (not c!804775)) b!4710721))

(assert (= (and b!4710721 c!804777) b!4710716))

(assert (= (and b!4710721 (not c!804777)) b!4710718))

(assert (= (or b!4710720 b!4710721) bm!329324))

(assert (= (and bm!329324 c!804776) b!4710714))

(assert (= (and bm!329324 (not c!804776)) b!4710713))

(assert (= (and d!1498990 res!1990933) b!4710715))

(assert (= (and d!1498990 (not res!1990932)) b!4710717))

(assert (= (and b!4710717 res!1990931) b!4710719))

(declare-fun m!5635953 () Bool)

(assert (=> bm!329324 m!5635953))

(declare-fun m!5635955 () Bool)

(assert (=> b!4710716 m!5635955))

(declare-fun m!5635957 () Bool)

(assert (=> b!4710716 m!5635957))

(declare-fun m!5635959 () Bool)

(assert (=> b!4710715 m!5635959))

(assert (=> b!4710715 m!5635959))

(declare-fun m!5635961 () Bool)

(assert (=> b!4710715 m!5635961))

(declare-fun m!5635963 () Bool)

(assert (=> b!4710720 m!5635963))

(declare-fun m!5635965 () Bool)

(assert (=> b!4710720 m!5635965))

(assert (=> b!4710720 m!5635965))

(declare-fun m!5635967 () Bool)

(assert (=> b!4710720 m!5635967))

(declare-fun m!5635969 () Bool)

(assert (=> b!4710720 m!5635969))

(assert (=> b!4710717 m!5635965))

(assert (=> b!4710717 m!5635965))

(assert (=> b!4710717 m!5635967))

(assert (=> d!1498990 m!5635955))

(declare-fun m!5635971 () Bool)

(assert (=> b!4710714 m!5635971))

(assert (=> b!4710719 m!5635959))

(assert (=> b!4710719 m!5635959))

(assert (=> b!4710719 m!5635961))

(assert (=> b!4710713 m!5635959))

(assert (=> b!4710571 d!1498990))

(declare-fun bs!1101732 () Bool)

(declare-fun d!1498992 () Bool)

(assert (= bs!1101732 (and d!1498992 start!478610)))

(declare-fun lambda!212626 () Int)

(assert (=> bs!1101732 (= lambda!212626 lambda!212620)))

(assert (=> d!1498992 (not (contains!15977 (extractMap!1981 (toList!5800 (ListLongMap!4330 lt!1875010))) key!4653))))

(declare-fun lt!1875107 () Unit!127876)

(declare-fun choose!33115 (ListLongMap!4329 K!14038 Hashable!6324) Unit!127876)

(assert (=> d!1498992 (= lt!1875107 (choose!33115 (ListLongMap!4330 lt!1875010) key!4653 hashF!1323))))

(assert (=> d!1498992 (forall!11486 (toList!5800 (ListLongMap!4330 lt!1875010)) lambda!212626)))

(assert (=> d!1498992 (= (lemmaNotInItsHashBucketThenNotInMap!409 (ListLongMap!4330 lt!1875010) key!4653 hashF!1323) lt!1875107)))

(declare-fun bs!1101733 () Bool)

(assert (= bs!1101733 d!1498992))

(declare-fun m!5635973 () Bool)

(assert (=> bs!1101733 m!5635973))

(assert (=> bs!1101733 m!5635973))

(declare-fun m!5635975 () Bool)

(assert (=> bs!1101733 m!5635975))

(declare-fun m!5635977 () Bool)

(assert (=> bs!1101733 m!5635977))

(declare-fun m!5635979 () Bool)

(assert (=> bs!1101733 m!5635979))

(assert (=> b!4710571 d!1498992))

(declare-fun b!4710732 () Bool)

(declare-fun e!2938127 () List!52799)

(assert (=> b!4710732 (= e!2938127 (Cons!52675 (h!58984 oldBucket!34) (removePairForKey!1550 (t!360037 oldBucket!34) key!4653)))))

(declare-fun b!4710730 () Bool)

(declare-fun e!2938126 () List!52799)

(assert (=> b!4710730 (= e!2938126 (t!360037 oldBucket!34))))

(declare-fun b!4710733 () Bool)

(assert (=> b!4710733 (= e!2938127 Nil!52675)))

(declare-fun b!4710731 () Bool)

(assert (=> b!4710731 (= e!2938126 e!2938127)))

(declare-fun c!804783 () Bool)

(assert (=> b!4710731 (= c!804783 (is-Cons!52675 oldBucket!34))))

(declare-fun d!1498994 () Bool)

(declare-fun lt!1875110 () List!52799)

(assert (=> d!1498994 (not (containsKey!3258 lt!1875110 key!4653))))

(assert (=> d!1498994 (= lt!1875110 e!2938126)))

(declare-fun c!804782 () Bool)

(assert (=> d!1498994 (= c!804782 (and (is-Cons!52675 oldBucket!34) (= (_1!30401 (h!58984 oldBucket!34)) key!4653)))))

(assert (=> d!1498994 (noDuplicateKeys!1955 oldBucket!34)))

(assert (=> d!1498994 (= (removePairForKey!1550 oldBucket!34 key!4653) lt!1875110)))

(assert (= (and d!1498994 c!804782) b!4710730))

(assert (= (and d!1498994 (not c!804782)) b!4710731))

(assert (= (and b!4710731 c!804783) b!4710732))

(assert (= (and b!4710731 (not c!804783)) b!4710733))

(declare-fun m!5635981 () Bool)

(assert (=> b!4710732 m!5635981))

(declare-fun m!5635983 () Bool)

(assert (=> d!1498994 m!5635983))

(assert (=> d!1498994 m!5635763))

(assert (=> b!4710562 d!1498994))

(declare-fun d!1498996 () Bool)

(declare-fun res!1990938 () Bool)

(declare-fun e!2938132 () Bool)

(assert (=> d!1498996 (=> res!1990938 e!2938132)))

(assert (=> d!1498996 (= res!1990938 (not (is-Cons!52675 oldBucket!34)))))

(assert (=> d!1498996 (= (noDuplicateKeys!1955 oldBucket!34) e!2938132)))

(declare-fun b!4710738 () Bool)

(declare-fun e!2938133 () Bool)

(assert (=> b!4710738 (= e!2938132 e!2938133)))

(declare-fun res!1990939 () Bool)

(assert (=> b!4710738 (=> (not res!1990939) (not e!2938133))))

(assert (=> b!4710738 (= res!1990939 (not (containsKey!3258 (t!360037 oldBucket!34) (_1!30401 (h!58984 oldBucket!34)))))))

(declare-fun b!4710739 () Bool)

(assert (=> b!4710739 (= e!2938133 (noDuplicateKeys!1955 (t!360037 oldBucket!34)))))

(assert (= (and d!1498996 (not res!1990938)) b!4710738))

(assert (= (and b!4710738 res!1990939) b!4710739))

(declare-fun m!5635985 () Bool)

(assert (=> b!4710738 m!5635985))

(declare-fun m!5635987 () Bool)

(assert (=> b!4710739 m!5635987))

(assert (=> b!4710572 d!1498996))

(declare-fun d!1498998 () Bool)

(declare-fun res!1990940 () Bool)

(declare-fun e!2938134 () Bool)

(assert (=> d!1498998 (=> res!1990940 e!2938134)))

(assert (=> d!1498998 (= res!1990940 (not (is-Cons!52675 newBucket!218)))))

(assert (=> d!1498998 (= (noDuplicateKeys!1955 newBucket!218) e!2938134)))

(declare-fun b!4710740 () Bool)

(declare-fun e!2938135 () Bool)

(assert (=> b!4710740 (= e!2938134 e!2938135)))

(declare-fun res!1990941 () Bool)

(assert (=> b!4710740 (=> (not res!1990941) (not e!2938135))))

(assert (=> b!4710740 (= res!1990941 (not (containsKey!3258 (t!360037 newBucket!218) (_1!30401 (h!58984 newBucket!218)))))))

(declare-fun b!4710741 () Bool)

(assert (=> b!4710741 (= e!2938135 (noDuplicateKeys!1955 (t!360037 newBucket!218)))))

(assert (= (and d!1498998 (not res!1990940)) b!4710740))

(assert (= (and b!4710740 res!1990941) b!4710741))

(declare-fun m!5635989 () Bool)

(assert (=> b!4710740 m!5635989))

(declare-fun m!5635991 () Bool)

(assert (=> b!4710741 m!5635991))

(assert (=> b!4710563 d!1498998))

(declare-fun b!4710758 () Bool)

(assert (=> b!4710758 true))

(declare-fun bs!1101734 () Bool)

(declare-fun b!4710760 () Bool)

(assert (= bs!1101734 (and b!4710760 b!4710758)))

(declare-fun lambda!212680 () Int)

(declare-fun lambda!212679 () Int)

(assert (=> bs!1101734 (= lambda!212680 lambda!212679)))

(assert (=> b!4710760 true))

(declare-fun lt!1875196 () ListMap!5163)

(declare-fun lambda!212681 () Int)

(assert (=> bs!1101734 (= (= lt!1875196 lt!1875007) (= lambda!212681 lambda!212679))))

(assert (=> b!4710760 (= (= lt!1875196 lt!1875007) (= lambda!212681 lambda!212680))))

(assert (=> b!4710760 true))

(declare-fun bs!1101735 () Bool)

(declare-fun d!1499000 () Bool)

(assert (= bs!1101735 (and d!1499000 b!4710758)))

(declare-fun lt!1875211 () ListMap!5163)

(declare-fun lambda!212685 () Int)

(assert (=> bs!1101735 (= (= lt!1875211 lt!1875007) (= lambda!212685 lambda!212679))))

(declare-fun bs!1101736 () Bool)

(assert (= bs!1101736 (and d!1499000 b!4710760)))

(assert (=> bs!1101736 (= (= lt!1875211 lt!1875007) (= lambda!212685 lambda!212680))))

(assert (=> bs!1101736 (= (= lt!1875211 lt!1875196) (= lambda!212685 lambda!212681))))

(assert (=> d!1499000 true))

(declare-fun e!2938148 () Bool)

(assert (=> d!1499000 e!2938148))

(declare-fun res!1990952 () Bool)

(assert (=> d!1499000 (=> (not res!1990952) (not e!2938148))))

(declare-fun forall!11488 (List!52799 Int) Bool)

(assert (=> d!1499000 (= res!1990952 (forall!11488 oldBucket!34 lambda!212685))))

(declare-fun e!2938146 () ListMap!5163)

(assert (=> d!1499000 (= lt!1875211 e!2938146)))

(declare-fun c!804788 () Bool)

(assert (=> d!1499000 (= c!804788 (is-Nil!52675 oldBucket!34))))

(assert (=> d!1499000 (noDuplicateKeys!1955 oldBucket!34)))

(assert (=> d!1499000 (= (addToMapMapFromBucket!1385 oldBucket!34 lt!1875007) lt!1875211)))

(assert (=> b!4710758 (= e!2938146 lt!1875007)))

(declare-fun lt!1875207 () Unit!127876)

(declare-fun call!329339 () Unit!127876)

(assert (=> b!4710758 (= lt!1875207 call!329339)))

(declare-fun call!329340 () Bool)

(assert (=> b!4710758 call!329340))

(declare-fun lt!1875202 () Unit!127876)

(assert (=> b!4710758 (= lt!1875202 lt!1875207)))

(declare-fun call!329338 () Bool)

(assert (=> b!4710758 call!329338))

(declare-fun lt!1875201 () Unit!127876)

(declare-fun Unit!127884 () Unit!127876)

(assert (=> b!4710758 (= lt!1875201 Unit!127884)))

(declare-fun b!4710759 () Bool)

(declare-fun invariantList!1473 (List!52799) Bool)

(assert (=> b!4710759 (= e!2938148 (invariantList!1473 (toList!5799 lt!1875211)))))

(declare-fun bm!329331 () Bool)

(assert (=> bm!329331 (= call!329340 (forall!11488 (ite c!804788 (toList!5799 lt!1875007) oldBucket!34) (ite c!804788 lambda!212679 lambda!212681)))))

(declare-fun bm!329332 () Bool)

(assert (=> bm!329332 (= call!329338 (forall!11488 (toList!5799 lt!1875007) (ite c!804788 lambda!212679 lambda!212680)))))

(assert (=> b!4710760 (= e!2938146 lt!1875196)))

(declare-fun lt!1875200 () ListMap!5163)

(assert (=> b!4710760 (= lt!1875200 (+!2219 lt!1875007 (h!58984 oldBucket!34)))))

(assert (=> b!4710760 (= lt!1875196 (addToMapMapFromBucket!1385 (t!360037 oldBucket!34) (+!2219 lt!1875007 (h!58984 oldBucket!34))))))

(declare-fun lt!1875206 () Unit!127876)

(assert (=> b!4710760 (= lt!1875206 call!329339)))

(assert (=> b!4710760 call!329338))

(declare-fun lt!1875209 () Unit!127876)

(assert (=> b!4710760 (= lt!1875209 lt!1875206)))

(assert (=> b!4710760 (forall!11488 (toList!5799 lt!1875200) lambda!212681)))

(declare-fun lt!1875205 () Unit!127876)

(declare-fun Unit!127885 () Unit!127876)

(assert (=> b!4710760 (= lt!1875205 Unit!127885)))

(assert (=> b!4710760 (forall!11488 (t!360037 oldBucket!34) lambda!212681)))

(declare-fun lt!1875195 () Unit!127876)

(declare-fun Unit!127886 () Unit!127876)

(assert (=> b!4710760 (= lt!1875195 Unit!127886)))

(declare-fun lt!1875208 () Unit!127876)

(declare-fun Unit!127887 () Unit!127876)

(assert (=> b!4710760 (= lt!1875208 Unit!127887)))

(declare-fun lt!1875199 () Unit!127876)

(declare-fun forallContained!3561 (List!52799 Int tuple2!54214) Unit!127876)

(assert (=> b!4710760 (= lt!1875199 (forallContained!3561 (toList!5799 lt!1875200) lambda!212681 (h!58984 oldBucket!34)))))

(assert (=> b!4710760 (contains!15977 lt!1875200 (_1!30401 (h!58984 oldBucket!34)))))

(declare-fun lt!1875197 () Unit!127876)

(declare-fun Unit!127888 () Unit!127876)

(assert (=> b!4710760 (= lt!1875197 Unit!127888)))

(assert (=> b!4710760 (contains!15977 lt!1875196 (_1!30401 (h!58984 oldBucket!34)))))

(declare-fun lt!1875198 () Unit!127876)

(declare-fun Unit!127889 () Unit!127876)

(assert (=> b!4710760 (= lt!1875198 Unit!127889)))

(assert (=> b!4710760 call!329340))

(declare-fun lt!1875203 () Unit!127876)

(declare-fun Unit!127890 () Unit!127876)

(assert (=> b!4710760 (= lt!1875203 Unit!127890)))

(assert (=> b!4710760 (forall!11488 (toList!5799 lt!1875200) lambda!212681)))

(declare-fun lt!1875204 () Unit!127876)

(declare-fun Unit!127891 () Unit!127876)

(assert (=> b!4710760 (= lt!1875204 Unit!127891)))

(declare-fun lt!1875213 () Unit!127876)

(declare-fun Unit!127892 () Unit!127876)

(assert (=> b!4710760 (= lt!1875213 Unit!127892)))

(declare-fun lt!1875214 () Unit!127876)

(declare-fun addForallContainsKeyThenBeforeAdding!760 (ListMap!5163 ListMap!5163 K!14038 V!14284) Unit!127876)

(assert (=> b!4710760 (= lt!1875214 (addForallContainsKeyThenBeforeAdding!760 lt!1875007 lt!1875196 (_1!30401 (h!58984 oldBucket!34)) (_2!30401 (h!58984 oldBucket!34))))))

(assert (=> b!4710760 (forall!11488 (toList!5799 lt!1875007) lambda!212681)))

(declare-fun lt!1875212 () Unit!127876)

(assert (=> b!4710760 (= lt!1875212 lt!1875214)))

(assert (=> b!4710760 (forall!11488 (toList!5799 lt!1875007) lambda!212681)))

(declare-fun lt!1875210 () Unit!127876)

(declare-fun Unit!127893 () Unit!127876)

(assert (=> b!4710760 (= lt!1875210 Unit!127893)))

(declare-fun res!1990950 () Bool)

(assert (=> b!4710760 (= res!1990950 (forall!11488 oldBucket!34 lambda!212681))))

(declare-fun e!2938147 () Bool)

(assert (=> b!4710760 (=> (not res!1990950) (not e!2938147))))

(assert (=> b!4710760 e!2938147))

(declare-fun lt!1875215 () Unit!127876)

(declare-fun Unit!127894 () Unit!127876)

(assert (=> b!4710760 (= lt!1875215 Unit!127894)))

(declare-fun bm!329333 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!761 (ListMap!5163) Unit!127876)

(assert (=> bm!329333 (= call!329339 (lemmaContainsAllItsOwnKeys!761 lt!1875007))))

(declare-fun b!4710761 () Bool)

(assert (=> b!4710761 (= e!2938147 (forall!11488 (toList!5799 lt!1875007) lambda!212681))))

(declare-fun b!4710762 () Bool)

(declare-fun res!1990951 () Bool)

(assert (=> b!4710762 (=> (not res!1990951) (not e!2938148))))

(assert (=> b!4710762 (= res!1990951 (forall!11488 (toList!5799 lt!1875007) lambda!212685))))

(assert (= (and d!1499000 c!804788) b!4710758))

(assert (= (and d!1499000 (not c!804788)) b!4710760))

(assert (= (and b!4710760 res!1990950) b!4710761))

(assert (= (or b!4710758 b!4710760) bm!329333))

(assert (= (or b!4710758 b!4710760) bm!329332))

(assert (= (or b!4710758 b!4710760) bm!329331))

(assert (= (and d!1499000 res!1990952) b!4710762))

(assert (= (and b!4710762 res!1990951) b!4710759))

(declare-fun m!5635993 () Bool)

(assert (=> b!4710760 m!5635993))

(declare-fun m!5635995 () Bool)

(assert (=> b!4710760 m!5635995))

(declare-fun m!5635997 () Bool)

(assert (=> b!4710760 m!5635997))

(declare-fun m!5635999 () Bool)

(assert (=> b!4710760 m!5635999))

(declare-fun m!5636001 () Bool)

(assert (=> b!4710760 m!5636001))

(assert (=> b!4710760 m!5635995))

(declare-fun m!5636003 () Bool)

(assert (=> b!4710760 m!5636003))

(declare-fun m!5636005 () Bool)

(assert (=> b!4710760 m!5636005))

(declare-fun m!5636007 () Bool)

(assert (=> b!4710760 m!5636007))

(assert (=> b!4710760 m!5635993))

(declare-fun m!5636009 () Bool)

(assert (=> b!4710760 m!5636009))

(declare-fun m!5636011 () Bool)

(assert (=> b!4710760 m!5636011))

(assert (=> b!4710760 m!5636005))

(assert (=> b!4710761 m!5635993))

(declare-fun m!5636013 () Bool)

(assert (=> d!1499000 m!5636013))

(assert (=> d!1499000 m!5635763))

(declare-fun m!5636015 () Bool)

(assert (=> bm!329333 m!5636015))

(declare-fun m!5636017 () Bool)

(assert (=> b!4710762 m!5636017))

(declare-fun m!5636019 () Bool)

(assert (=> bm!329332 m!5636019))

(declare-fun m!5636021 () Bool)

(assert (=> b!4710759 m!5636021))

(declare-fun m!5636023 () Bool)

(assert (=> bm!329331 m!5636023))

(assert (=> b!4710565 d!1499000))

(declare-fun d!1499002 () Bool)

(declare-fun e!2938151 () Bool)

(assert (=> d!1499002 e!2938151))

(declare-fun res!1990958 () Bool)

(assert (=> d!1499002 (=> (not res!1990958) (not e!2938151))))

(declare-fun lt!1875217 () ListMap!5163)

(assert (=> d!1499002 (= res!1990958 (contains!15977 lt!1875217 (_1!30401 (h!58984 oldBucket!34))))))

(declare-fun lt!1875216 () List!52799)

(assert (=> d!1499002 (= lt!1875217 (ListMap!5164 lt!1875216))))

(declare-fun lt!1875218 () Unit!127876)

(declare-fun lt!1875219 () Unit!127876)

(assert (=> d!1499002 (= lt!1875218 lt!1875219)))

(assert (=> d!1499002 (= (getValueByKey!1898 lt!1875216 (_1!30401 (h!58984 oldBucket!34))) (Some!12265 (_2!30401 (h!58984 oldBucket!34))))))

(assert (=> d!1499002 (= lt!1875219 (lemmaContainsTupThenGetReturnValue!1061 lt!1875216 (_1!30401 (h!58984 oldBucket!34)) (_2!30401 (h!58984 oldBucket!34))))))

(assert (=> d!1499002 (= lt!1875216 (insertNoDuplicatedKeys!569 (toList!5799 lt!1875012) (_1!30401 (h!58984 oldBucket!34)) (_2!30401 (h!58984 oldBucket!34))))))

(assert (=> d!1499002 (= (+!2219 lt!1875012 (h!58984 oldBucket!34)) lt!1875217)))

(declare-fun b!4710769 () Bool)

(declare-fun res!1990957 () Bool)

(assert (=> b!4710769 (=> (not res!1990957) (not e!2938151))))

(assert (=> b!4710769 (= res!1990957 (= (getValueByKey!1898 (toList!5799 lt!1875217) (_1!30401 (h!58984 oldBucket!34))) (Some!12265 (_2!30401 (h!58984 oldBucket!34)))))))

(declare-fun b!4710770 () Bool)

(assert (=> b!4710770 (= e!2938151 (contains!15979 (toList!5799 lt!1875217) (h!58984 oldBucket!34)))))

(assert (= (and d!1499002 res!1990958) b!4710769))

(assert (= (and b!4710769 res!1990957) b!4710770))

(declare-fun m!5636025 () Bool)

(assert (=> d!1499002 m!5636025))

(declare-fun m!5636027 () Bool)

(assert (=> d!1499002 m!5636027))

(declare-fun m!5636029 () Bool)

(assert (=> d!1499002 m!5636029))

(declare-fun m!5636031 () Bool)

(assert (=> d!1499002 m!5636031))

(declare-fun m!5636033 () Bool)

(assert (=> b!4710769 m!5636033))

(declare-fun m!5636035 () Bool)

(assert (=> b!4710770 m!5636035))

(assert (=> b!4710565 d!1499002))

(declare-fun d!1499004 () Bool)

(declare-fun e!2938152 () Bool)

(assert (=> d!1499004 e!2938152))

(declare-fun res!1990960 () Bool)

(assert (=> d!1499004 (=> (not res!1990960) (not e!2938152))))

(declare-fun lt!1875221 () ListMap!5163)

(assert (=> d!1499004 (= res!1990960 (contains!15977 lt!1875221 (_1!30401 lt!1875005)))))

(declare-fun lt!1875220 () List!52799)

(assert (=> d!1499004 (= lt!1875221 (ListMap!5164 lt!1875220))))

(declare-fun lt!1875222 () Unit!127876)

(declare-fun lt!1875223 () Unit!127876)

(assert (=> d!1499004 (= lt!1875222 lt!1875223)))

(assert (=> d!1499004 (= (getValueByKey!1898 lt!1875220 (_1!30401 lt!1875005)) (Some!12265 (_2!30401 lt!1875005)))))

(assert (=> d!1499004 (= lt!1875223 (lemmaContainsTupThenGetReturnValue!1061 lt!1875220 (_1!30401 lt!1875005) (_2!30401 lt!1875005)))))

(assert (=> d!1499004 (= lt!1875220 (insertNoDuplicatedKeys!569 (toList!5799 lt!1875012) (_1!30401 lt!1875005) (_2!30401 lt!1875005)))))

(assert (=> d!1499004 (= (+!2219 lt!1875012 lt!1875005) lt!1875221)))

(declare-fun b!4710771 () Bool)

(declare-fun res!1990959 () Bool)

(assert (=> b!4710771 (=> (not res!1990959) (not e!2938152))))

(assert (=> b!4710771 (= res!1990959 (= (getValueByKey!1898 (toList!5799 lt!1875221) (_1!30401 lt!1875005)) (Some!12265 (_2!30401 lt!1875005))))))

(declare-fun b!4710772 () Bool)

(assert (=> b!4710772 (= e!2938152 (contains!15979 (toList!5799 lt!1875221) lt!1875005))))

(assert (= (and d!1499004 res!1990960) b!4710771))

(assert (= (and b!4710771 res!1990959) b!4710772))

(declare-fun m!5636037 () Bool)

(assert (=> d!1499004 m!5636037))

(declare-fun m!5636039 () Bool)

(assert (=> d!1499004 m!5636039))

(declare-fun m!5636041 () Bool)

(assert (=> d!1499004 m!5636041))

(declare-fun m!5636043 () Bool)

(assert (=> d!1499004 m!5636043))

(declare-fun m!5636045 () Bool)

(assert (=> b!4710771 m!5636045))

(declare-fun m!5636047 () Bool)

(assert (=> b!4710772 m!5636047))

(assert (=> b!4710565 d!1499004))

(declare-fun d!1499006 () Bool)

(declare-fun content!9332 (List!52799) (Set tuple2!54214))

(assert (=> d!1499006 (= (eq!1092 (addToMapMapFromBucket!1385 (Cons!52675 lt!1875005 lt!1875014) lt!1875007) (+!2219 lt!1875012 lt!1875005)) (= (content!9332 (toList!5799 (addToMapMapFromBucket!1385 (Cons!52675 lt!1875005 lt!1875014) lt!1875007))) (content!9332 (toList!5799 (+!2219 lt!1875012 lt!1875005)))))))

(declare-fun bs!1101737 () Bool)

(assert (= bs!1101737 d!1499006))

(declare-fun m!5636049 () Bool)

(assert (=> bs!1101737 m!5636049))

(declare-fun m!5636051 () Bool)

(assert (=> bs!1101737 m!5636051))

(assert (=> b!4710565 d!1499006))

(declare-fun d!1499008 () Bool)

(assert (=> d!1499008 (eq!1092 (addToMapMapFromBucket!1385 (Cons!52675 lt!1875005 lt!1875014) lt!1875007) (+!2219 (addToMapMapFromBucket!1385 lt!1875014 lt!1875007) lt!1875005))))

(declare-fun lt!1875247 () Unit!127876)

(declare-fun choose!33116 (tuple2!54214 List!52799 ListMap!5163) Unit!127876)

(assert (=> d!1499008 (= lt!1875247 (choose!33116 lt!1875005 lt!1875014 lt!1875007))))

(assert (=> d!1499008 (noDuplicateKeys!1955 lt!1875014)))

(assert (=> d!1499008 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!341 lt!1875005 lt!1875014 lt!1875007) lt!1875247)))

(declare-fun bs!1101741 () Bool)

(assert (= bs!1101741 d!1499008))

(assert (=> bs!1101741 m!5635727))

(declare-fun m!5636089 () Bool)

(assert (=> bs!1101741 m!5636089))

(assert (=> bs!1101741 m!5635735))

(assert (=> bs!1101741 m!5635735))

(declare-fun m!5636091 () Bool)

(assert (=> bs!1101741 m!5636091))

(declare-fun m!5636093 () Bool)

(assert (=> bs!1101741 m!5636093))

(assert (=> bs!1101741 m!5635727))

(assert (=> bs!1101741 m!5636091))

(declare-fun m!5636095 () Bool)

(assert (=> bs!1101741 m!5636095))

(assert (=> b!4710565 d!1499008))

(declare-fun bs!1101742 () Bool)

(declare-fun b!4710780 () Bool)

(assert (= bs!1101742 (and b!4710780 b!4710758)))

(declare-fun lambda!212691 () Int)

(assert (=> bs!1101742 (= lambda!212691 lambda!212679)))

(declare-fun bs!1101743 () Bool)

(assert (= bs!1101743 (and b!4710780 b!4710760)))

(assert (=> bs!1101743 (= lambda!212691 lambda!212680)))

(assert (=> bs!1101743 (= (= lt!1875007 lt!1875196) (= lambda!212691 lambda!212681))))

(declare-fun bs!1101744 () Bool)

(assert (= bs!1101744 (and b!4710780 d!1499000)))

(assert (=> bs!1101744 (= (= lt!1875007 lt!1875211) (= lambda!212691 lambda!212685))))

(assert (=> b!4710780 true))

(declare-fun bs!1101745 () Bool)

(declare-fun b!4710782 () Bool)

(assert (= bs!1101745 (and b!4710782 b!4710760)))

(declare-fun lambda!212692 () Int)

(assert (=> bs!1101745 (= (= lt!1875007 lt!1875196) (= lambda!212692 lambda!212681))))

(declare-fun bs!1101746 () Bool)

(assert (= bs!1101746 (and b!4710782 d!1499000)))

(assert (=> bs!1101746 (= (= lt!1875007 lt!1875211) (= lambda!212692 lambda!212685))))

(declare-fun bs!1101747 () Bool)

(assert (= bs!1101747 (and b!4710782 b!4710758)))

(assert (=> bs!1101747 (= lambda!212692 lambda!212679)))

(declare-fun bs!1101748 () Bool)

(assert (= bs!1101748 (and b!4710782 b!4710780)))

(assert (=> bs!1101748 (= lambda!212692 lambda!212691)))

(assert (=> bs!1101745 (= lambda!212692 lambda!212680)))

(assert (=> b!4710782 true))

(declare-fun lt!1875249 () ListMap!5163)

(declare-fun lambda!212693 () Int)

(assert (=> bs!1101745 (= (= lt!1875249 lt!1875196) (= lambda!212693 lambda!212681))))

(assert (=> bs!1101746 (= (= lt!1875249 lt!1875211) (= lambda!212693 lambda!212685))))

(assert (=> bs!1101747 (= (= lt!1875249 lt!1875007) (= lambda!212693 lambda!212679))))

(assert (=> bs!1101748 (= (= lt!1875249 lt!1875007) (= lambda!212693 lambda!212691))))

(assert (=> b!4710782 (= (= lt!1875249 lt!1875007) (= lambda!212693 lambda!212692))))

(assert (=> bs!1101745 (= (= lt!1875249 lt!1875007) (= lambda!212693 lambda!212680))))

(assert (=> b!4710782 true))

(declare-fun bs!1101749 () Bool)

(declare-fun d!1499012 () Bool)

(assert (= bs!1101749 (and d!1499012 b!4710760)))

(declare-fun lambda!212694 () Int)

(declare-fun lt!1875264 () ListMap!5163)

(assert (=> bs!1101749 (= (= lt!1875264 lt!1875196) (= lambda!212694 lambda!212681))))

(declare-fun bs!1101750 () Bool)

(assert (= bs!1101750 (and d!1499012 d!1499000)))

(assert (=> bs!1101750 (= (= lt!1875264 lt!1875211) (= lambda!212694 lambda!212685))))

(declare-fun bs!1101751 () Bool)

(assert (= bs!1101751 (and d!1499012 b!4710782)))

(assert (=> bs!1101751 (= (= lt!1875264 lt!1875249) (= lambda!212694 lambda!212693))))

(declare-fun bs!1101752 () Bool)

(assert (= bs!1101752 (and d!1499012 b!4710758)))

(assert (=> bs!1101752 (= (= lt!1875264 lt!1875007) (= lambda!212694 lambda!212679))))

(declare-fun bs!1101753 () Bool)

(assert (= bs!1101753 (and d!1499012 b!4710780)))

(assert (=> bs!1101753 (= (= lt!1875264 lt!1875007) (= lambda!212694 lambda!212691))))

(assert (=> bs!1101751 (= (= lt!1875264 lt!1875007) (= lambda!212694 lambda!212692))))

(assert (=> bs!1101749 (= (= lt!1875264 lt!1875007) (= lambda!212694 lambda!212680))))

(assert (=> d!1499012 true))

(declare-fun e!2938158 () Bool)

(assert (=> d!1499012 e!2938158))

(declare-fun res!1990966 () Bool)

(assert (=> d!1499012 (=> (not res!1990966) (not e!2938158))))

(assert (=> d!1499012 (= res!1990966 (forall!11488 (Cons!52675 lt!1875005 lt!1875014) lambda!212694))))

(declare-fun e!2938156 () ListMap!5163)

(assert (=> d!1499012 (= lt!1875264 e!2938156)))

(declare-fun c!804790 () Bool)

(assert (=> d!1499012 (= c!804790 (is-Nil!52675 (Cons!52675 lt!1875005 lt!1875014)))))

(assert (=> d!1499012 (noDuplicateKeys!1955 (Cons!52675 lt!1875005 lt!1875014))))

(assert (=> d!1499012 (= (addToMapMapFromBucket!1385 (Cons!52675 lt!1875005 lt!1875014) lt!1875007) lt!1875264)))

(assert (=> b!4710780 (= e!2938156 lt!1875007)))

(declare-fun lt!1875260 () Unit!127876)

(declare-fun call!329349 () Unit!127876)

(assert (=> b!4710780 (= lt!1875260 call!329349)))

(declare-fun call!329350 () Bool)

(assert (=> b!4710780 call!329350))

(declare-fun lt!1875255 () Unit!127876)

(assert (=> b!4710780 (= lt!1875255 lt!1875260)))

(declare-fun call!329348 () Bool)

(assert (=> b!4710780 call!329348))

(declare-fun lt!1875254 () Unit!127876)

(declare-fun Unit!127895 () Unit!127876)

(assert (=> b!4710780 (= lt!1875254 Unit!127895)))

(declare-fun b!4710781 () Bool)

(assert (=> b!4710781 (= e!2938158 (invariantList!1473 (toList!5799 lt!1875264)))))

(declare-fun bm!329343 () Bool)

(assert (=> bm!329343 (= call!329350 (forall!11488 (ite c!804790 (toList!5799 lt!1875007) (Cons!52675 lt!1875005 lt!1875014)) (ite c!804790 lambda!212691 lambda!212693)))))

(declare-fun bm!329344 () Bool)

(assert (=> bm!329344 (= call!329348 (forall!11488 (toList!5799 lt!1875007) (ite c!804790 lambda!212691 lambda!212692)))))

(assert (=> b!4710782 (= e!2938156 lt!1875249)))

(declare-fun lt!1875253 () ListMap!5163)

(assert (=> b!4710782 (= lt!1875253 (+!2219 lt!1875007 (h!58984 (Cons!52675 lt!1875005 lt!1875014))))))

(assert (=> b!4710782 (= lt!1875249 (addToMapMapFromBucket!1385 (t!360037 (Cons!52675 lt!1875005 lt!1875014)) (+!2219 lt!1875007 (h!58984 (Cons!52675 lt!1875005 lt!1875014)))))))

(declare-fun lt!1875259 () Unit!127876)

(assert (=> b!4710782 (= lt!1875259 call!329349)))

(assert (=> b!4710782 call!329348))

(declare-fun lt!1875262 () Unit!127876)

(assert (=> b!4710782 (= lt!1875262 lt!1875259)))

(assert (=> b!4710782 (forall!11488 (toList!5799 lt!1875253) lambda!212693)))

(declare-fun lt!1875258 () Unit!127876)

(declare-fun Unit!127896 () Unit!127876)

(assert (=> b!4710782 (= lt!1875258 Unit!127896)))

(assert (=> b!4710782 (forall!11488 (t!360037 (Cons!52675 lt!1875005 lt!1875014)) lambda!212693)))

(declare-fun lt!1875248 () Unit!127876)

(declare-fun Unit!127897 () Unit!127876)

(assert (=> b!4710782 (= lt!1875248 Unit!127897)))

(declare-fun lt!1875261 () Unit!127876)

(declare-fun Unit!127898 () Unit!127876)

(assert (=> b!4710782 (= lt!1875261 Unit!127898)))

(declare-fun lt!1875252 () Unit!127876)

(assert (=> b!4710782 (= lt!1875252 (forallContained!3561 (toList!5799 lt!1875253) lambda!212693 (h!58984 (Cons!52675 lt!1875005 lt!1875014))))))

(assert (=> b!4710782 (contains!15977 lt!1875253 (_1!30401 (h!58984 (Cons!52675 lt!1875005 lt!1875014))))))

(declare-fun lt!1875250 () Unit!127876)

(declare-fun Unit!127899 () Unit!127876)

(assert (=> b!4710782 (= lt!1875250 Unit!127899)))

(assert (=> b!4710782 (contains!15977 lt!1875249 (_1!30401 (h!58984 (Cons!52675 lt!1875005 lt!1875014))))))

(declare-fun lt!1875251 () Unit!127876)

(declare-fun Unit!127900 () Unit!127876)

(assert (=> b!4710782 (= lt!1875251 Unit!127900)))

(assert (=> b!4710782 call!329350))

(declare-fun lt!1875256 () Unit!127876)

(declare-fun Unit!127901 () Unit!127876)

(assert (=> b!4710782 (= lt!1875256 Unit!127901)))

(assert (=> b!4710782 (forall!11488 (toList!5799 lt!1875253) lambda!212693)))

(declare-fun lt!1875257 () Unit!127876)

(declare-fun Unit!127902 () Unit!127876)

(assert (=> b!4710782 (= lt!1875257 Unit!127902)))

(declare-fun lt!1875266 () Unit!127876)

(declare-fun Unit!127903 () Unit!127876)

(assert (=> b!4710782 (= lt!1875266 Unit!127903)))

(declare-fun lt!1875267 () Unit!127876)

(assert (=> b!4710782 (= lt!1875267 (addForallContainsKeyThenBeforeAdding!760 lt!1875007 lt!1875249 (_1!30401 (h!58984 (Cons!52675 lt!1875005 lt!1875014))) (_2!30401 (h!58984 (Cons!52675 lt!1875005 lt!1875014)))))))

(assert (=> b!4710782 (forall!11488 (toList!5799 lt!1875007) lambda!212693)))

(declare-fun lt!1875265 () Unit!127876)

(assert (=> b!4710782 (= lt!1875265 lt!1875267)))

(assert (=> b!4710782 (forall!11488 (toList!5799 lt!1875007) lambda!212693)))

(declare-fun lt!1875263 () Unit!127876)

(declare-fun Unit!127905 () Unit!127876)

(assert (=> b!4710782 (= lt!1875263 Unit!127905)))

(declare-fun res!1990964 () Bool)

(assert (=> b!4710782 (= res!1990964 (forall!11488 (Cons!52675 lt!1875005 lt!1875014) lambda!212693))))

(declare-fun e!2938157 () Bool)

(assert (=> b!4710782 (=> (not res!1990964) (not e!2938157))))

(assert (=> b!4710782 e!2938157))

(declare-fun lt!1875268 () Unit!127876)

(declare-fun Unit!127906 () Unit!127876)

(assert (=> b!4710782 (= lt!1875268 Unit!127906)))

(declare-fun bm!329345 () Bool)

(assert (=> bm!329345 (= call!329349 (lemmaContainsAllItsOwnKeys!761 lt!1875007))))

(declare-fun b!4710783 () Bool)

(assert (=> b!4710783 (= e!2938157 (forall!11488 (toList!5799 lt!1875007) lambda!212693))))

(declare-fun b!4710784 () Bool)

(declare-fun res!1990965 () Bool)

(assert (=> b!4710784 (=> (not res!1990965) (not e!2938158))))

(assert (=> b!4710784 (= res!1990965 (forall!11488 (toList!5799 lt!1875007) lambda!212694))))

(assert (= (and d!1499012 c!804790) b!4710780))

(assert (= (and d!1499012 (not c!804790)) b!4710782))

(assert (= (and b!4710782 res!1990964) b!4710783))

(assert (= (or b!4710780 b!4710782) bm!329345))

(assert (= (or b!4710780 b!4710782) bm!329344))

(assert (= (or b!4710780 b!4710782) bm!329343))

(assert (= (and d!1499012 res!1990966) b!4710784))

(assert (= (and b!4710784 res!1990965) b!4710781))

(declare-fun m!5636097 () Bool)

(assert (=> b!4710782 m!5636097))

(declare-fun m!5636099 () Bool)

(assert (=> b!4710782 m!5636099))

(declare-fun m!5636101 () Bool)

(assert (=> b!4710782 m!5636101))

(declare-fun m!5636103 () Bool)

(assert (=> b!4710782 m!5636103))

(declare-fun m!5636105 () Bool)

(assert (=> b!4710782 m!5636105))

(assert (=> b!4710782 m!5636099))

(declare-fun m!5636107 () Bool)

(assert (=> b!4710782 m!5636107))

(declare-fun m!5636109 () Bool)

(assert (=> b!4710782 m!5636109))

(declare-fun m!5636111 () Bool)

(assert (=> b!4710782 m!5636111))

(assert (=> b!4710782 m!5636097))

(declare-fun m!5636113 () Bool)

(assert (=> b!4710782 m!5636113))

(declare-fun m!5636115 () Bool)

(assert (=> b!4710782 m!5636115))

(assert (=> b!4710782 m!5636109))

(assert (=> b!4710783 m!5636097))

(declare-fun m!5636117 () Bool)

(assert (=> d!1499012 m!5636117))

(declare-fun m!5636119 () Bool)

(assert (=> d!1499012 m!5636119))

(assert (=> bm!329345 m!5636015))

(declare-fun m!5636121 () Bool)

(assert (=> b!4710784 m!5636121))

(declare-fun m!5636123 () Bool)

(assert (=> bm!329344 m!5636123))

(declare-fun m!5636125 () Bool)

(assert (=> b!4710781 m!5636125))

(declare-fun m!5636127 () Bool)

(assert (=> bm!329343 m!5636127))

(assert (=> b!4710565 d!1499012))

(declare-fun d!1499014 () Bool)

(assert (=> d!1499014 (= (eq!1092 lt!1875011 (addToMapMapFromBucket!1385 oldBucket!34 lt!1875007)) (= (content!9332 (toList!5799 lt!1875011)) (content!9332 (toList!5799 (addToMapMapFromBucket!1385 oldBucket!34 lt!1875007)))))))

(declare-fun bs!1101754 () Bool)

(assert (= bs!1101754 d!1499014))

(declare-fun m!5636129 () Bool)

(assert (=> bs!1101754 m!5636129))

(declare-fun m!5636131 () Bool)

(assert (=> bs!1101754 m!5636131))

(assert (=> b!4710565 d!1499014))

(declare-fun d!1499016 () Bool)

(assert (=> d!1499016 (= (head!10149 oldBucket!34) (h!58984 oldBucket!34))))

(assert (=> b!4710565 d!1499016))

(declare-fun b!4710789 () Bool)

(declare-fun e!2938164 () List!52803)

(assert (=> b!4710789 (= e!2938164 (keys!18878 lt!1875009))))

(declare-fun b!4710790 () Bool)

(assert (=> b!4710790 (= e!2938164 (getKeysList!913 (toList!5799 lt!1875009)))))

(declare-fun bm!329346 () Bool)

(declare-fun call!329351 () Bool)

(assert (=> bm!329346 (= call!329351 (contains!15980 e!2938164 key!4653))))

(declare-fun c!804794 () Bool)

(declare-fun c!804793 () Bool)

(assert (=> bm!329346 (= c!804794 c!804793)))

(declare-fun b!4710792 () Bool)

(assert (=> b!4710792 false))

(declare-fun lt!1875273 () Unit!127876)

(declare-fun lt!1875278 () Unit!127876)

(assert (=> b!4710792 (= lt!1875273 lt!1875278)))

(assert (=> b!4710792 (containsKey!3260 (toList!5799 lt!1875009) key!4653)))

(assert (=> b!4710792 (= lt!1875278 (lemmaInGetKeysListThenContainsKey!912 (toList!5799 lt!1875009) key!4653))))

(declare-fun e!2938162 () Unit!127876)

(declare-fun Unit!127912 () Unit!127876)

(assert (=> b!4710792 (= e!2938162 Unit!127912)))

(declare-fun b!4710793 () Bool)

(declare-fun e!2938165 () Bool)

(declare-fun e!2938161 () Bool)

(assert (=> b!4710793 (= e!2938165 e!2938161)))

(declare-fun res!1990967 () Bool)

(assert (=> b!4710793 (=> (not res!1990967) (not e!2938161))))

(assert (=> b!4710793 (= res!1990967 (isDefined!9521 (getValueByKey!1898 (toList!5799 lt!1875009) key!4653)))))

(declare-fun b!4710794 () Bool)

(declare-fun Unit!127916 () Unit!127876)

(assert (=> b!4710794 (= e!2938162 Unit!127916)))

(declare-fun b!4710795 () Bool)

(assert (=> b!4710795 (= e!2938161 (contains!15980 (keys!18878 lt!1875009) key!4653))))

(declare-fun d!1499018 () Bool)

(assert (=> d!1499018 e!2938165))

(declare-fun res!1990968 () Bool)

(assert (=> d!1499018 (=> res!1990968 e!2938165)))

(declare-fun e!2938166 () Bool)

(assert (=> d!1499018 (= res!1990968 e!2938166)))

(declare-fun res!1990969 () Bool)

(assert (=> d!1499018 (=> (not res!1990969) (not e!2938166))))

(declare-fun lt!1875272 () Bool)

(assert (=> d!1499018 (= res!1990969 (not lt!1875272))))

(declare-fun lt!1875276 () Bool)

(assert (=> d!1499018 (= lt!1875272 lt!1875276)))

(declare-fun lt!1875271 () Unit!127876)

(declare-fun e!2938163 () Unit!127876)

(assert (=> d!1499018 (= lt!1875271 e!2938163)))

(assert (=> d!1499018 (= c!804793 lt!1875276)))

(assert (=> d!1499018 (= lt!1875276 (containsKey!3260 (toList!5799 lt!1875009) key!4653))))

(assert (=> d!1499018 (= (contains!15977 lt!1875009 key!4653) lt!1875272)))

(declare-fun b!4710791 () Bool)

(assert (=> b!4710791 (= e!2938166 (not (contains!15980 (keys!18878 lt!1875009) key!4653)))))

(declare-fun b!4710796 () Bool)

(declare-fun lt!1875275 () Unit!127876)

(assert (=> b!4710796 (= e!2938163 lt!1875275)))

(declare-fun lt!1875274 () Unit!127876)

(assert (=> b!4710796 (= lt!1875274 (lemmaContainsKeyImpliesGetValueByKeyDefined!1790 (toList!5799 lt!1875009) key!4653))))

(assert (=> b!4710796 (isDefined!9521 (getValueByKey!1898 (toList!5799 lt!1875009) key!4653))))

(declare-fun lt!1875277 () Unit!127876)

(assert (=> b!4710796 (= lt!1875277 lt!1875274)))

(assert (=> b!4710796 (= lt!1875275 (lemmaInListThenGetKeysListContains!908 (toList!5799 lt!1875009) key!4653))))

(assert (=> b!4710796 call!329351))

(declare-fun b!4710797 () Bool)

(assert (=> b!4710797 (= e!2938163 e!2938162)))

(declare-fun c!804795 () Bool)

(assert (=> b!4710797 (= c!804795 call!329351)))

(assert (= (and d!1499018 c!804793) b!4710796))

(assert (= (and d!1499018 (not c!804793)) b!4710797))

(assert (= (and b!4710797 c!804795) b!4710792))

(assert (= (and b!4710797 (not c!804795)) b!4710794))

(assert (= (or b!4710796 b!4710797) bm!329346))

(assert (= (and bm!329346 c!804794) b!4710790))

(assert (= (and bm!329346 (not c!804794)) b!4710789))

(assert (= (and d!1499018 res!1990969) b!4710791))

(assert (= (and d!1499018 (not res!1990968)) b!4710793))

(assert (= (and b!4710793 res!1990967) b!4710795))

(declare-fun m!5636133 () Bool)

(assert (=> bm!329346 m!5636133))

(declare-fun m!5636135 () Bool)

(assert (=> b!4710792 m!5636135))

(declare-fun m!5636137 () Bool)

(assert (=> b!4710792 m!5636137))

(declare-fun m!5636139 () Bool)

(assert (=> b!4710791 m!5636139))

(assert (=> b!4710791 m!5636139))

(declare-fun m!5636141 () Bool)

(assert (=> b!4710791 m!5636141))

(declare-fun m!5636143 () Bool)

(assert (=> b!4710796 m!5636143))

(declare-fun m!5636145 () Bool)

(assert (=> b!4710796 m!5636145))

(assert (=> b!4710796 m!5636145))

(declare-fun m!5636147 () Bool)

(assert (=> b!4710796 m!5636147))

(declare-fun m!5636149 () Bool)

(assert (=> b!4710796 m!5636149))

(assert (=> b!4710793 m!5636145))

(assert (=> b!4710793 m!5636145))

(assert (=> b!4710793 m!5636147))

(assert (=> d!1499018 m!5636135))

(declare-fun m!5636151 () Bool)

(assert (=> b!4710790 m!5636151))

(assert (=> b!4710795 m!5636139))

(assert (=> b!4710795 m!5636139))

(assert (=> b!4710795 m!5636141))

(assert (=> b!4710789 m!5636139))

(assert (=> b!4710564 d!1499018))

(declare-fun bs!1101761 () Bool)

(declare-fun d!1499020 () Bool)

(assert (= bs!1101761 (and d!1499020 start!478610)))

(declare-fun lambda!212703 () Int)

(assert (=> bs!1101761 (= lambda!212703 lambda!212620)))

(declare-fun bs!1101762 () Bool)

(assert (= bs!1101762 (and d!1499020 d!1498992)))

(assert (=> bs!1101762 (= lambda!212703 lambda!212626)))

(declare-fun lt!1875282 () ListMap!5163)

(assert (=> d!1499020 (invariantList!1473 (toList!5799 lt!1875282))))

(declare-fun e!2938170 () ListMap!5163)

(assert (=> d!1499020 (= lt!1875282 e!2938170)))

(declare-fun c!804799 () Bool)

(assert (=> d!1499020 (= c!804799 (is-Cons!52676 (toList!5800 lm!2023)))))

(assert (=> d!1499020 (forall!11486 (toList!5800 lm!2023) lambda!212703)))

(assert (=> d!1499020 (= (extractMap!1981 (toList!5800 lm!2023)) lt!1875282)))

(declare-fun b!4710808 () Bool)

(assert (=> b!4710808 (= e!2938170 (addToMapMapFromBucket!1385 (_2!30402 (h!58985 (toList!5800 lm!2023))) (extractMap!1981 (t!360038 (toList!5800 lm!2023)))))))

(declare-fun b!4710809 () Bool)

(assert (=> b!4710809 (= e!2938170 (ListMap!5164 Nil!52675))))

(assert (= (and d!1499020 c!804799) b!4710808))

(assert (= (and d!1499020 (not c!804799)) b!4710809))

(declare-fun m!5636165 () Bool)

(assert (=> d!1499020 m!5636165))

(declare-fun m!5636167 () Bool)

(assert (=> d!1499020 m!5636167))

(assert (=> b!4710808 m!5635759))

(assert (=> b!4710808 m!5635759))

(declare-fun m!5636169 () Bool)

(assert (=> b!4710808 m!5636169))

(assert (=> b!4710564 d!1499020))

(declare-fun bs!1101763 () Bool)

(declare-fun b!4710810 () Bool)

(assert (= bs!1101763 (and b!4710810 b!4710760)))

(declare-fun lambda!212704 () Int)

(assert (=> bs!1101763 (= (= lt!1875007 lt!1875196) (= lambda!212704 lambda!212681))))

(declare-fun bs!1101764 () Bool)

(assert (= bs!1101764 (and b!4710810 b!4710782)))

(assert (=> bs!1101764 (= (= lt!1875007 lt!1875249) (= lambda!212704 lambda!212693))))

(declare-fun bs!1101765 () Bool)

(assert (= bs!1101765 (and b!4710810 b!4710758)))

(assert (=> bs!1101765 (= lambda!212704 lambda!212679)))

(declare-fun bs!1101766 () Bool)

(assert (= bs!1101766 (and b!4710810 b!4710780)))

(assert (=> bs!1101766 (= lambda!212704 lambda!212691)))

(assert (=> bs!1101764 (= lambda!212704 lambda!212692)))

(assert (=> bs!1101763 (= lambda!212704 lambda!212680)))

(declare-fun bs!1101767 () Bool)

(assert (= bs!1101767 (and b!4710810 d!1499012)))

(assert (=> bs!1101767 (= (= lt!1875007 lt!1875264) (= lambda!212704 lambda!212694))))

(declare-fun bs!1101768 () Bool)

(assert (= bs!1101768 (and b!4710810 d!1499000)))

(assert (=> bs!1101768 (= (= lt!1875007 lt!1875211) (= lambda!212704 lambda!212685))))

(assert (=> b!4710810 true))

(declare-fun bs!1101769 () Bool)

(declare-fun b!4710812 () Bool)

(assert (= bs!1101769 (and b!4710812 b!4710760)))

(declare-fun lambda!212705 () Int)

(assert (=> bs!1101769 (= (= lt!1875007 lt!1875196) (= lambda!212705 lambda!212681))))

(declare-fun bs!1101770 () Bool)

(assert (= bs!1101770 (and b!4710812 b!4710782)))

(assert (=> bs!1101770 (= (= lt!1875007 lt!1875249) (= lambda!212705 lambda!212693))))

(declare-fun bs!1101771 () Bool)

(assert (= bs!1101771 (and b!4710812 b!4710758)))

(assert (=> bs!1101771 (= lambda!212705 lambda!212679)))

(declare-fun bs!1101772 () Bool)

(assert (= bs!1101772 (and b!4710812 b!4710810)))

(assert (=> bs!1101772 (= lambda!212705 lambda!212704)))

(declare-fun bs!1101773 () Bool)

(assert (= bs!1101773 (and b!4710812 b!4710780)))

(assert (=> bs!1101773 (= lambda!212705 lambda!212691)))

(assert (=> bs!1101770 (= lambda!212705 lambda!212692)))

(assert (=> bs!1101769 (= lambda!212705 lambda!212680)))

(declare-fun bs!1101774 () Bool)

(assert (= bs!1101774 (and b!4710812 d!1499012)))

(assert (=> bs!1101774 (= (= lt!1875007 lt!1875264) (= lambda!212705 lambda!212694))))

(declare-fun bs!1101775 () Bool)

(assert (= bs!1101775 (and b!4710812 d!1499000)))

(assert (=> bs!1101775 (= (= lt!1875007 lt!1875211) (= lambda!212705 lambda!212685))))

(assert (=> b!4710812 true))

(declare-fun lambda!212706 () Int)

(declare-fun lt!1875284 () ListMap!5163)

(assert (=> b!4710812 (= (= lt!1875284 lt!1875007) (= lambda!212706 lambda!212705))))

(assert (=> bs!1101769 (= (= lt!1875284 lt!1875196) (= lambda!212706 lambda!212681))))

(assert (=> bs!1101770 (= (= lt!1875284 lt!1875249) (= lambda!212706 lambda!212693))))

(assert (=> bs!1101771 (= (= lt!1875284 lt!1875007) (= lambda!212706 lambda!212679))))

(assert (=> bs!1101772 (= (= lt!1875284 lt!1875007) (= lambda!212706 lambda!212704))))

(assert (=> bs!1101773 (= (= lt!1875284 lt!1875007) (= lambda!212706 lambda!212691))))

(assert (=> bs!1101770 (= (= lt!1875284 lt!1875007) (= lambda!212706 lambda!212692))))

(assert (=> bs!1101769 (= (= lt!1875284 lt!1875007) (= lambda!212706 lambda!212680))))

(assert (=> bs!1101774 (= (= lt!1875284 lt!1875264) (= lambda!212706 lambda!212694))))

(assert (=> bs!1101775 (= (= lt!1875284 lt!1875211) (= lambda!212706 lambda!212685))))

(assert (=> b!4710812 true))

(declare-fun bs!1101776 () Bool)

(declare-fun d!1499028 () Bool)

(assert (= bs!1101776 (and d!1499028 b!4710812)))

(declare-fun lt!1875299 () ListMap!5163)

(declare-fun lambda!212707 () Int)

(assert (=> bs!1101776 (= (= lt!1875299 lt!1875007) (= lambda!212707 lambda!212705))))

(assert (=> bs!1101776 (= (= lt!1875299 lt!1875284) (= lambda!212707 lambda!212706))))

(declare-fun bs!1101777 () Bool)

(assert (= bs!1101777 (and d!1499028 b!4710760)))

(assert (=> bs!1101777 (= (= lt!1875299 lt!1875196) (= lambda!212707 lambda!212681))))

(declare-fun bs!1101778 () Bool)

(assert (= bs!1101778 (and d!1499028 b!4710782)))

(assert (=> bs!1101778 (= (= lt!1875299 lt!1875249) (= lambda!212707 lambda!212693))))

(declare-fun bs!1101779 () Bool)

(assert (= bs!1101779 (and d!1499028 b!4710758)))

(assert (=> bs!1101779 (= (= lt!1875299 lt!1875007) (= lambda!212707 lambda!212679))))

(declare-fun bs!1101780 () Bool)

(assert (= bs!1101780 (and d!1499028 b!4710810)))

(assert (=> bs!1101780 (= (= lt!1875299 lt!1875007) (= lambda!212707 lambda!212704))))

(declare-fun bs!1101781 () Bool)

(assert (= bs!1101781 (and d!1499028 b!4710780)))

(assert (=> bs!1101781 (= (= lt!1875299 lt!1875007) (= lambda!212707 lambda!212691))))

(assert (=> bs!1101778 (= (= lt!1875299 lt!1875007) (= lambda!212707 lambda!212692))))

(assert (=> bs!1101777 (= (= lt!1875299 lt!1875007) (= lambda!212707 lambda!212680))))

(declare-fun bs!1101782 () Bool)

(assert (= bs!1101782 (and d!1499028 d!1499012)))

(assert (=> bs!1101782 (= (= lt!1875299 lt!1875264) (= lambda!212707 lambda!212694))))

(declare-fun bs!1101783 () Bool)

(assert (= bs!1101783 (and d!1499028 d!1499000)))

(assert (=> bs!1101783 (= (= lt!1875299 lt!1875211) (= lambda!212707 lambda!212685))))

(assert (=> d!1499028 true))

(declare-fun e!2938173 () Bool)

(assert (=> d!1499028 e!2938173))

(declare-fun res!1990972 () Bool)

(assert (=> d!1499028 (=> (not res!1990972) (not e!2938173))))

(assert (=> d!1499028 (= res!1990972 (forall!11488 newBucket!218 lambda!212707))))

(declare-fun e!2938171 () ListMap!5163)

(assert (=> d!1499028 (= lt!1875299 e!2938171)))

(declare-fun c!804800 () Bool)

(assert (=> d!1499028 (= c!804800 (is-Nil!52675 newBucket!218))))

(assert (=> d!1499028 (noDuplicateKeys!1955 newBucket!218)))

(assert (=> d!1499028 (= (addToMapMapFromBucket!1385 newBucket!218 lt!1875007) lt!1875299)))

(assert (=> b!4710810 (= e!2938171 lt!1875007)))

(declare-fun lt!1875295 () Unit!127876)

(declare-fun call!329353 () Unit!127876)

(assert (=> b!4710810 (= lt!1875295 call!329353)))

(declare-fun call!329354 () Bool)

(assert (=> b!4710810 call!329354))

(declare-fun lt!1875290 () Unit!127876)

(assert (=> b!4710810 (= lt!1875290 lt!1875295)))

(declare-fun call!329352 () Bool)

(assert (=> b!4710810 call!329352))

(declare-fun lt!1875289 () Unit!127876)

(declare-fun Unit!127919 () Unit!127876)

(assert (=> b!4710810 (= lt!1875289 Unit!127919)))

(declare-fun b!4710811 () Bool)

(assert (=> b!4710811 (= e!2938173 (invariantList!1473 (toList!5799 lt!1875299)))))

(declare-fun bm!329347 () Bool)

(assert (=> bm!329347 (= call!329354 (forall!11488 (ite c!804800 (toList!5799 lt!1875007) newBucket!218) (ite c!804800 lambda!212704 lambda!212706)))))

(declare-fun bm!329348 () Bool)

(assert (=> bm!329348 (= call!329352 (forall!11488 (toList!5799 lt!1875007) (ite c!804800 lambda!212704 lambda!212705)))))

(assert (=> b!4710812 (= e!2938171 lt!1875284)))

(declare-fun lt!1875288 () ListMap!5163)

(assert (=> b!4710812 (= lt!1875288 (+!2219 lt!1875007 (h!58984 newBucket!218)))))

(assert (=> b!4710812 (= lt!1875284 (addToMapMapFromBucket!1385 (t!360037 newBucket!218) (+!2219 lt!1875007 (h!58984 newBucket!218))))))

(declare-fun lt!1875294 () Unit!127876)

(assert (=> b!4710812 (= lt!1875294 call!329353)))

(assert (=> b!4710812 call!329352))

(declare-fun lt!1875297 () Unit!127876)

(assert (=> b!4710812 (= lt!1875297 lt!1875294)))

(assert (=> b!4710812 (forall!11488 (toList!5799 lt!1875288) lambda!212706)))

(declare-fun lt!1875293 () Unit!127876)

(declare-fun Unit!127920 () Unit!127876)

(assert (=> b!4710812 (= lt!1875293 Unit!127920)))

(assert (=> b!4710812 (forall!11488 (t!360037 newBucket!218) lambda!212706)))

(declare-fun lt!1875283 () Unit!127876)

(declare-fun Unit!127921 () Unit!127876)

(assert (=> b!4710812 (= lt!1875283 Unit!127921)))

(declare-fun lt!1875296 () Unit!127876)

(declare-fun Unit!127922 () Unit!127876)

(assert (=> b!4710812 (= lt!1875296 Unit!127922)))

(declare-fun lt!1875287 () Unit!127876)

(assert (=> b!4710812 (= lt!1875287 (forallContained!3561 (toList!5799 lt!1875288) lambda!212706 (h!58984 newBucket!218)))))

(assert (=> b!4710812 (contains!15977 lt!1875288 (_1!30401 (h!58984 newBucket!218)))))

(declare-fun lt!1875285 () Unit!127876)

(declare-fun Unit!127924 () Unit!127876)

(assert (=> b!4710812 (= lt!1875285 Unit!127924)))

(assert (=> b!4710812 (contains!15977 lt!1875284 (_1!30401 (h!58984 newBucket!218)))))

(declare-fun lt!1875286 () Unit!127876)

(declare-fun Unit!127925 () Unit!127876)

(assert (=> b!4710812 (= lt!1875286 Unit!127925)))

(assert (=> b!4710812 call!329354))

(declare-fun lt!1875291 () Unit!127876)

(declare-fun Unit!127926 () Unit!127876)

(assert (=> b!4710812 (= lt!1875291 Unit!127926)))

(assert (=> b!4710812 (forall!11488 (toList!5799 lt!1875288) lambda!212706)))

(declare-fun lt!1875292 () Unit!127876)

(declare-fun Unit!127927 () Unit!127876)

(assert (=> b!4710812 (= lt!1875292 Unit!127927)))

(declare-fun lt!1875301 () Unit!127876)

(declare-fun Unit!127928 () Unit!127876)

(assert (=> b!4710812 (= lt!1875301 Unit!127928)))

(declare-fun lt!1875302 () Unit!127876)

(assert (=> b!4710812 (= lt!1875302 (addForallContainsKeyThenBeforeAdding!760 lt!1875007 lt!1875284 (_1!30401 (h!58984 newBucket!218)) (_2!30401 (h!58984 newBucket!218))))))

(assert (=> b!4710812 (forall!11488 (toList!5799 lt!1875007) lambda!212706)))

(declare-fun lt!1875300 () Unit!127876)

(assert (=> b!4710812 (= lt!1875300 lt!1875302)))

(assert (=> b!4710812 (forall!11488 (toList!5799 lt!1875007) lambda!212706)))

(declare-fun lt!1875298 () Unit!127876)

(declare-fun Unit!127930 () Unit!127876)

(assert (=> b!4710812 (= lt!1875298 Unit!127930)))

(declare-fun res!1990970 () Bool)

(assert (=> b!4710812 (= res!1990970 (forall!11488 newBucket!218 lambda!212706))))

(declare-fun e!2938172 () Bool)

(assert (=> b!4710812 (=> (not res!1990970) (not e!2938172))))

(assert (=> b!4710812 e!2938172))

(declare-fun lt!1875303 () Unit!127876)

(declare-fun Unit!127931 () Unit!127876)

(assert (=> b!4710812 (= lt!1875303 Unit!127931)))

(declare-fun bm!329349 () Bool)

(assert (=> bm!329349 (= call!329353 (lemmaContainsAllItsOwnKeys!761 lt!1875007))))

(declare-fun b!4710813 () Bool)

(assert (=> b!4710813 (= e!2938172 (forall!11488 (toList!5799 lt!1875007) lambda!212706))))

(declare-fun b!4710814 () Bool)

(declare-fun res!1990971 () Bool)

(assert (=> b!4710814 (=> (not res!1990971) (not e!2938173))))

(assert (=> b!4710814 (= res!1990971 (forall!11488 (toList!5799 lt!1875007) lambda!212707))))

(assert (= (and d!1499028 c!804800) b!4710810))

(assert (= (and d!1499028 (not c!804800)) b!4710812))

(assert (= (and b!4710812 res!1990970) b!4710813))

(assert (= (or b!4710810 b!4710812) bm!329349))

(assert (= (or b!4710810 b!4710812) bm!329348))

(assert (= (or b!4710810 b!4710812) bm!329347))

(assert (= (and d!1499028 res!1990972) b!4710814))

(assert (= (and b!4710814 res!1990971) b!4710811))

(declare-fun m!5636171 () Bool)

(assert (=> b!4710812 m!5636171))

(declare-fun m!5636173 () Bool)

(assert (=> b!4710812 m!5636173))

(declare-fun m!5636175 () Bool)

(assert (=> b!4710812 m!5636175))

(declare-fun m!5636177 () Bool)

(assert (=> b!4710812 m!5636177))

(declare-fun m!5636179 () Bool)

(assert (=> b!4710812 m!5636179))

(assert (=> b!4710812 m!5636173))

(declare-fun m!5636181 () Bool)

(assert (=> b!4710812 m!5636181))

(declare-fun m!5636183 () Bool)

(assert (=> b!4710812 m!5636183))

(declare-fun m!5636185 () Bool)

(assert (=> b!4710812 m!5636185))

(assert (=> b!4710812 m!5636171))

(declare-fun m!5636187 () Bool)

(assert (=> b!4710812 m!5636187))

(declare-fun m!5636189 () Bool)

(assert (=> b!4710812 m!5636189))

(assert (=> b!4710812 m!5636183))

(assert (=> b!4710813 m!5636171))

(declare-fun m!5636191 () Bool)

(assert (=> d!1499028 m!5636191))

(assert (=> d!1499028 m!5635797))

(assert (=> bm!329349 m!5636015))

(declare-fun m!5636193 () Bool)

(assert (=> b!4710814 m!5636193))

(declare-fun m!5636195 () Bool)

(assert (=> bm!329348 m!5636195))

(declare-fun m!5636197 () Bool)

(assert (=> b!4710811 m!5636197))

(declare-fun m!5636199 () Bool)

(assert (=> bm!329347 m!5636199))

(assert (=> b!4710575 d!1499028))

(declare-fun bs!1101784 () Bool)

(declare-fun b!4710833 () Bool)

(assert (= bs!1101784 (and b!4710833 b!4710812)))

(declare-fun lambda!212708 () Int)

(assert (=> bs!1101784 (= lambda!212708 lambda!212705)))

(assert (=> bs!1101784 (= (= lt!1875007 lt!1875284) (= lambda!212708 lambda!212706))))

(declare-fun bs!1101785 () Bool)

(assert (= bs!1101785 (and b!4710833 b!4710760)))

(assert (=> bs!1101785 (= (= lt!1875007 lt!1875196) (= lambda!212708 lambda!212681))))

(declare-fun bs!1101786 () Bool)

(assert (= bs!1101786 (and b!4710833 b!4710782)))

(assert (=> bs!1101786 (= (= lt!1875007 lt!1875249) (= lambda!212708 lambda!212693))))

(declare-fun bs!1101787 () Bool)

(assert (= bs!1101787 (and b!4710833 b!4710758)))

(assert (=> bs!1101787 (= lambda!212708 lambda!212679)))

(declare-fun bs!1101788 () Bool)

(assert (= bs!1101788 (and b!4710833 b!4710810)))

(assert (=> bs!1101788 (= lambda!212708 lambda!212704)))

(declare-fun bs!1101789 () Bool)

(assert (= bs!1101789 (and b!4710833 b!4710780)))

(assert (=> bs!1101789 (= lambda!212708 lambda!212691)))

(assert (=> bs!1101786 (= lambda!212708 lambda!212692)))

(declare-fun bs!1101790 () Bool)

(assert (= bs!1101790 (and b!4710833 d!1499028)))

(assert (=> bs!1101790 (= (= lt!1875007 lt!1875299) (= lambda!212708 lambda!212707))))

(assert (=> bs!1101785 (= lambda!212708 lambda!212680)))

(declare-fun bs!1101791 () Bool)

(assert (= bs!1101791 (and b!4710833 d!1499012)))

(assert (=> bs!1101791 (= (= lt!1875007 lt!1875264) (= lambda!212708 lambda!212694))))

(declare-fun bs!1101792 () Bool)

(assert (= bs!1101792 (and b!4710833 d!1499000)))

(assert (=> bs!1101792 (= (= lt!1875007 lt!1875211) (= lambda!212708 lambda!212685))))

(assert (=> b!4710833 true))

(declare-fun bs!1101793 () Bool)

(declare-fun b!4710835 () Bool)

(assert (= bs!1101793 (and b!4710835 b!4710812)))

(declare-fun lambda!212709 () Int)

(assert (=> bs!1101793 (= lambda!212709 lambda!212705)))

(assert (=> bs!1101793 (= (= lt!1875007 lt!1875284) (= lambda!212709 lambda!212706))))

(declare-fun bs!1101794 () Bool)

(assert (= bs!1101794 (and b!4710835 b!4710782)))

(assert (=> bs!1101794 (= (= lt!1875007 lt!1875249) (= lambda!212709 lambda!212693))))

(declare-fun bs!1101795 () Bool)

(assert (= bs!1101795 (and b!4710835 b!4710758)))

(assert (=> bs!1101795 (= lambda!212709 lambda!212679)))

(declare-fun bs!1101796 () Bool)

(assert (= bs!1101796 (and b!4710835 b!4710810)))

(assert (=> bs!1101796 (= lambda!212709 lambda!212704)))

(declare-fun bs!1101797 () Bool)

(assert (= bs!1101797 (and b!4710835 b!4710780)))

(assert (=> bs!1101797 (= lambda!212709 lambda!212691)))

(assert (=> bs!1101794 (= lambda!212709 lambda!212692)))

(declare-fun bs!1101798 () Bool)

(assert (= bs!1101798 (and b!4710835 d!1499028)))

(assert (=> bs!1101798 (= (= lt!1875007 lt!1875299) (= lambda!212709 lambda!212707))))

(declare-fun bs!1101799 () Bool)

(assert (= bs!1101799 (and b!4710835 b!4710760)))

(assert (=> bs!1101799 (= lambda!212709 lambda!212680)))

(assert (=> bs!1101799 (= (= lt!1875007 lt!1875196) (= lambda!212709 lambda!212681))))

(declare-fun bs!1101800 () Bool)

(assert (= bs!1101800 (and b!4710835 b!4710833)))

(assert (=> bs!1101800 (= lambda!212709 lambda!212708)))

(declare-fun bs!1101801 () Bool)

(assert (= bs!1101801 (and b!4710835 d!1499012)))

(assert (=> bs!1101801 (= (= lt!1875007 lt!1875264) (= lambda!212709 lambda!212694))))

(declare-fun bs!1101802 () Bool)

(assert (= bs!1101802 (and b!4710835 d!1499000)))

(assert (=> bs!1101802 (= (= lt!1875007 lt!1875211) (= lambda!212709 lambda!212685))))

(assert (=> b!4710835 true))

(declare-fun lt!1875321 () ListMap!5163)

(declare-fun lambda!212710 () Int)

(assert (=> bs!1101793 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212705))))

(assert (=> bs!1101793 (= (= lt!1875321 lt!1875284) (= lambda!212710 lambda!212706))))

(assert (=> bs!1101794 (= (= lt!1875321 lt!1875249) (= lambda!212710 lambda!212693))))

(assert (=> bs!1101796 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212704))))

(assert (=> bs!1101797 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212691))))

(assert (=> bs!1101794 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212692))))

(assert (=> bs!1101798 (= (= lt!1875321 lt!1875299) (= lambda!212710 lambda!212707))))

(assert (=> bs!1101799 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212680))))

(assert (=> bs!1101799 (= (= lt!1875321 lt!1875196) (= lambda!212710 lambda!212681))))

(assert (=> bs!1101800 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212708))))

(assert (=> bs!1101801 (= (= lt!1875321 lt!1875264) (= lambda!212710 lambda!212694))))

(assert (=> bs!1101802 (= (= lt!1875321 lt!1875211) (= lambda!212710 lambda!212685))))

(assert (=> bs!1101795 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212679))))

(assert (=> b!4710835 (= (= lt!1875321 lt!1875007) (= lambda!212710 lambda!212709))))

(assert (=> b!4710835 true))

(declare-fun bs!1101803 () Bool)

(declare-fun d!1499030 () Bool)

(assert (= bs!1101803 (and d!1499030 b!4710812)))

(declare-fun lambda!212711 () Int)

(declare-fun lt!1875336 () ListMap!5163)

(assert (=> bs!1101803 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212705))))

(assert (=> bs!1101803 (= (= lt!1875336 lt!1875284) (= lambda!212711 lambda!212706))))

(declare-fun bs!1101804 () Bool)

(assert (= bs!1101804 (and d!1499030 b!4710835)))

(assert (=> bs!1101804 (= (= lt!1875336 lt!1875321) (= lambda!212711 lambda!212710))))

(declare-fun bs!1101805 () Bool)

(assert (= bs!1101805 (and d!1499030 b!4710782)))

(assert (=> bs!1101805 (= (= lt!1875336 lt!1875249) (= lambda!212711 lambda!212693))))

(declare-fun bs!1101806 () Bool)

(assert (= bs!1101806 (and d!1499030 b!4710810)))

(assert (=> bs!1101806 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212704))))

(declare-fun bs!1101807 () Bool)

(assert (= bs!1101807 (and d!1499030 b!4710780)))

(assert (=> bs!1101807 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212691))))

(assert (=> bs!1101805 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212692))))

(declare-fun bs!1101808 () Bool)

(assert (= bs!1101808 (and d!1499030 d!1499028)))

(assert (=> bs!1101808 (= (= lt!1875336 lt!1875299) (= lambda!212711 lambda!212707))))

(declare-fun bs!1101809 () Bool)

(assert (= bs!1101809 (and d!1499030 b!4710760)))

(assert (=> bs!1101809 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212680))))

(assert (=> bs!1101809 (= (= lt!1875336 lt!1875196) (= lambda!212711 lambda!212681))))

(declare-fun bs!1101810 () Bool)

(assert (= bs!1101810 (and d!1499030 b!4710833)))

(assert (=> bs!1101810 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212708))))

(declare-fun bs!1101811 () Bool)

(assert (= bs!1101811 (and d!1499030 d!1499012)))

(assert (=> bs!1101811 (= (= lt!1875336 lt!1875264) (= lambda!212711 lambda!212694))))

(declare-fun bs!1101812 () Bool)

(assert (= bs!1101812 (and d!1499030 d!1499000)))

(assert (=> bs!1101812 (= (= lt!1875336 lt!1875211) (= lambda!212711 lambda!212685))))

(declare-fun bs!1101813 () Bool)

(assert (= bs!1101813 (and d!1499030 b!4710758)))

(assert (=> bs!1101813 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212679))))

(assert (=> bs!1101804 (= (= lt!1875336 lt!1875007) (= lambda!212711 lambda!212709))))

(assert (=> d!1499030 true))

(declare-fun e!2938188 () Bool)

(assert (=> d!1499030 e!2938188))

(declare-fun res!1990981 () Bool)

(assert (=> d!1499030 (=> (not res!1990981) (not e!2938188))))

(assert (=> d!1499030 (= res!1990981 (forall!11488 lt!1875014 lambda!212711))))

(declare-fun e!2938186 () ListMap!5163)

(assert (=> d!1499030 (= lt!1875336 e!2938186)))

(declare-fun c!804807 () Bool)

(assert (=> d!1499030 (= c!804807 (is-Nil!52675 lt!1875014))))

(assert (=> d!1499030 (noDuplicateKeys!1955 lt!1875014)))

(assert (=> d!1499030 (= (addToMapMapFromBucket!1385 lt!1875014 lt!1875007) lt!1875336)))

(assert (=> b!4710833 (= e!2938186 lt!1875007)))

(declare-fun lt!1875332 () Unit!127876)

(declare-fun call!329358 () Unit!127876)

(assert (=> b!4710833 (= lt!1875332 call!329358)))

(declare-fun call!329359 () Bool)

(assert (=> b!4710833 call!329359))

(declare-fun lt!1875327 () Unit!127876)

(assert (=> b!4710833 (= lt!1875327 lt!1875332)))

(declare-fun call!329357 () Bool)

(assert (=> b!4710833 call!329357))

(declare-fun lt!1875326 () Unit!127876)

(declare-fun Unit!127934 () Unit!127876)

(assert (=> b!4710833 (= lt!1875326 Unit!127934)))

(declare-fun b!4710834 () Bool)

(assert (=> b!4710834 (= e!2938188 (invariantList!1473 (toList!5799 lt!1875336)))))

(declare-fun bm!329352 () Bool)

(assert (=> bm!329352 (= call!329359 (forall!11488 (ite c!804807 (toList!5799 lt!1875007) lt!1875014) (ite c!804807 lambda!212708 lambda!212710)))))

(declare-fun bm!329353 () Bool)

(assert (=> bm!329353 (= call!329357 (forall!11488 (toList!5799 lt!1875007) (ite c!804807 lambda!212708 lambda!212709)))))

(assert (=> b!4710835 (= e!2938186 lt!1875321)))

(declare-fun lt!1875325 () ListMap!5163)

(assert (=> b!4710835 (= lt!1875325 (+!2219 lt!1875007 (h!58984 lt!1875014)))))

(assert (=> b!4710835 (= lt!1875321 (addToMapMapFromBucket!1385 (t!360037 lt!1875014) (+!2219 lt!1875007 (h!58984 lt!1875014))))))

(declare-fun lt!1875331 () Unit!127876)

(assert (=> b!4710835 (= lt!1875331 call!329358)))

(assert (=> b!4710835 call!329357))

(declare-fun lt!1875334 () Unit!127876)

(assert (=> b!4710835 (= lt!1875334 lt!1875331)))

(assert (=> b!4710835 (forall!11488 (toList!5799 lt!1875325) lambda!212710)))

(declare-fun lt!1875330 () Unit!127876)

(declare-fun Unit!127935 () Unit!127876)

(assert (=> b!4710835 (= lt!1875330 Unit!127935)))

(assert (=> b!4710835 (forall!11488 (t!360037 lt!1875014) lambda!212710)))

(declare-fun lt!1875320 () Unit!127876)

(declare-fun Unit!127936 () Unit!127876)

(assert (=> b!4710835 (= lt!1875320 Unit!127936)))

(declare-fun lt!1875333 () Unit!127876)

(declare-fun Unit!127937 () Unit!127876)

(assert (=> b!4710835 (= lt!1875333 Unit!127937)))

(declare-fun lt!1875324 () Unit!127876)

(assert (=> b!4710835 (= lt!1875324 (forallContained!3561 (toList!5799 lt!1875325) lambda!212710 (h!58984 lt!1875014)))))

(assert (=> b!4710835 (contains!15977 lt!1875325 (_1!30401 (h!58984 lt!1875014)))))

(declare-fun lt!1875322 () Unit!127876)

(declare-fun Unit!127938 () Unit!127876)

(assert (=> b!4710835 (= lt!1875322 Unit!127938)))

(assert (=> b!4710835 (contains!15977 lt!1875321 (_1!30401 (h!58984 lt!1875014)))))

(declare-fun lt!1875323 () Unit!127876)

(declare-fun Unit!127939 () Unit!127876)

(assert (=> b!4710835 (= lt!1875323 Unit!127939)))

(assert (=> b!4710835 call!329359))

(declare-fun lt!1875328 () Unit!127876)

(declare-fun Unit!127940 () Unit!127876)

(assert (=> b!4710835 (= lt!1875328 Unit!127940)))

(assert (=> b!4710835 (forall!11488 (toList!5799 lt!1875325) lambda!212710)))

(declare-fun lt!1875329 () Unit!127876)

(declare-fun Unit!127941 () Unit!127876)

(assert (=> b!4710835 (= lt!1875329 Unit!127941)))

(declare-fun lt!1875338 () Unit!127876)

(declare-fun Unit!127942 () Unit!127876)

(assert (=> b!4710835 (= lt!1875338 Unit!127942)))

(declare-fun lt!1875339 () Unit!127876)

(assert (=> b!4710835 (= lt!1875339 (addForallContainsKeyThenBeforeAdding!760 lt!1875007 lt!1875321 (_1!30401 (h!58984 lt!1875014)) (_2!30401 (h!58984 lt!1875014))))))

(assert (=> b!4710835 (forall!11488 (toList!5799 lt!1875007) lambda!212710)))

(declare-fun lt!1875337 () Unit!127876)

(assert (=> b!4710835 (= lt!1875337 lt!1875339)))

(assert (=> b!4710835 (forall!11488 (toList!5799 lt!1875007) lambda!212710)))

(declare-fun lt!1875335 () Unit!127876)

(declare-fun Unit!127943 () Unit!127876)

(assert (=> b!4710835 (= lt!1875335 Unit!127943)))

(declare-fun res!1990979 () Bool)

(assert (=> b!4710835 (= res!1990979 (forall!11488 lt!1875014 lambda!212710))))

(declare-fun e!2938187 () Bool)

(assert (=> b!4710835 (=> (not res!1990979) (not e!2938187))))

(assert (=> b!4710835 e!2938187))

(declare-fun lt!1875340 () Unit!127876)

(declare-fun Unit!127944 () Unit!127876)

(assert (=> b!4710835 (= lt!1875340 Unit!127944)))

(declare-fun bm!329354 () Bool)

(assert (=> bm!329354 (= call!329358 (lemmaContainsAllItsOwnKeys!761 lt!1875007))))

(declare-fun b!4710836 () Bool)

(assert (=> b!4710836 (= e!2938187 (forall!11488 (toList!5799 lt!1875007) lambda!212710))))

(declare-fun b!4710837 () Bool)

(declare-fun res!1990980 () Bool)

(assert (=> b!4710837 (=> (not res!1990980) (not e!2938188))))

(assert (=> b!4710837 (= res!1990980 (forall!11488 (toList!5799 lt!1875007) lambda!212711))))

(assert (= (and d!1499030 c!804807) b!4710833))

(assert (= (and d!1499030 (not c!804807)) b!4710835))

(assert (= (and b!4710835 res!1990979) b!4710836))

(assert (= (or b!4710833 b!4710835) bm!329354))

(assert (= (or b!4710833 b!4710835) bm!329353))

(assert (= (or b!4710833 b!4710835) bm!329352))

(assert (= (and d!1499030 res!1990981) b!4710837))

(assert (= (and b!4710837 res!1990980) b!4710834))

(declare-fun m!5636241 () Bool)

(assert (=> b!4710835 m!5636241))

(declare-fun m!5636243 () Bool)

(assert (=> b!4710835 m!5636243))

(declare-fun m!5636245 () Bool)

(assert (=> b!4710835 m!5636245))

(declare-fun m!5636247 () Bool)

(assert (=> b!4710835 m!5636247))

(declare-fun m!5636249 () Bool)

(assert (=> b!4710835 m!5636249))

(assert (=> b!4710835 m!5636243))

(declare-fun m!5636251 () Bool)

(assert (=> b!4710835 m!5636251))

(declare-fun m!5636253 () Bool)

(assert (=> b!4710835 m!5636253))

(declare-fun m!5636255 () Bool)

(assert (=> b!4710835 m!5636255))

(assert (=> b!4710835 m!5636241))

(declare-fun m!5636257 () Bool)

(assert (=> b!4710835 m!5636257))

(declare-fun m!5636259 () Bool)

(assert (=> b!4710835 m!5636259))

(assert (=> b!4710835 m!5636253))

(assert (=> b!4710836 m!5636241))

(declare-fun m!5636261 () Bool)

(assert (=> d!1499030 m!5636261))

(assert (=> d!1499030 m!5636095))

(assert (=> bm!329354 m!5636015))

(declare-fun m!5636263 () Bool)

(assert (=> b!4710837 m!5636263))

(declare-fun m!5636265 () Bool)

(assert (=> bm!329353 m!5636265))

(declare-fun m!5636267 () Bool)

(assert (=> b!4710834 m!5636267))

(declare-fun m!5636269 () Bool)

(assert (=> bm!329352 m!5636269))

(assert (=> b!4710575 d!1499030))

(declare-fun bs!1101814 () Bool)

(declare-fun b!4710856 () Bool)

(assert (= bs!1101814 (and b!4710856 d!1499030)))

(declare-fun lambda!212712 () Int)

(assert (=> bs!1101814 (= (= lt!1875007 lt!1875336) (= lambda!212712 lambda!212711))))

(declare-fun bs!1101815 () Bool)

(assert (= bs!1101815 (and b!4710856 b!4710812)))

(assert (=> bs!1101815 (= lambda!212712 lambda!212705)))

(assert (=> bs!1101815 (= (= lt!1875007 lt!1875284) (= lambda!212712 lambda!212706))))

(declare-fun bs!1101816 () Bool)

(assert (= bs!1101816 (and b!4710856 b!4710835)))

(assert (=> bs!1101816 (= (= lt!1875007 lt!1875321) (= lambda!212712 lambda!212710))))

(declare-fun bs!1101817 () Bool)

(assert (= bs!1101817 (and b!4710856 b!4710782)))

(assert (=> bs!1101817 (= (= lt!1875007 lt!1875249) (= lambda!212712 lambda!212693))))

(declare-fun bs!1101818 () Bool)

(assert (= bs!1101818 (and b!4710856 b!4710810)))

(assert (=> bs!1101818 (= lambda!212712 lambda!212704)))

(declare-fun bs!1101819 () Bool)

(assert (= bs!1101819 (and b!4710856 b!4710780)))

(assert (=> bs!1101819 (= lambda!212712 lambda!212691)))

(assert (=> bs!1101817 (= lambda!212712 lambda!212692)))

(declare-fun bs!1101820 () Bool)

(assert (= bs!1101820 (and b!4710856 d!1499028)))

(assert (=> bs!1101820 (= (= lt!1875007 lt!1875299) (= lambda!212712 lambda!212707))))

(declare-fun bs!1101821 () Bool)

(assert (= bs!1101821 (and b!4710856 b!4710760)))

(assert (=> bs!1101821 (= lambda!212712 lambda!212680)))

(assert (=> bs!1101821 (= (= lt!1875007 lt!1875196) (= lambda!212712 lambda!212681))))

(declare-fun bs!1101822 () Bool)

(assert (= bs!1101822 (and b!4710856 b!4710833)))

(assert (=> bs!1101822 (= lambda!212712 lambda!212708)))

(declare-fun bs!1101823 () Bool)

(assert (= bs!1101823 (and b!4710856 d!1499012)))

(assert (=> bs!1101823 (= (= lt!1875007 lt!1875264) (= lambda!212712 lambda!212694))))

(declare-fun bs!1101824 () Bool)

(assert (= bs!1101824 (and b!4710856 d!1499000)))

(assert (=> bs!1101824 (= (= lt!1875007 lt!1875211) (= lambda!212712 lambda!212685))))

(declare-fun bs!1101825 () Bool)

(assert (= bs!1101825 (and b!4710856 b!4710758)))

(assert (=> bs!1101825 (= lambda!212712 lambda!212679)))

(assert (=> bs!1101816 (= lambda!212712 lambda!212709)))

(assert (=> b!4710856 true))

(declare-fun bs!1101826 () Bool)

(declare-fun b!4710858 () Bool)

(assert (= bs!1101826 (and b!4710858 d!1499030)))

(declare-fun lambda!212713 () Int)

(assert (=> bs!1101826 (= (= lt!1875007 lt!1875336) (= lambda!212713 lambda!212711))))

(declare-fun bs!1101827 () Bool)

(assert (= bs!1101827 (and b!4710858 b!4710812)))

(assert (=> bs!1101827 (= lambda!212713 lambda!212705)))

(assert (=> bs!1101827 (= (= lt!1875007 lt!1875284) (= lambda!212713 lambda!212706))))

(declare-fun bs!1101828 () Bool)

(assert (= bs!1101828 (and b!4710858 b!4710835)))

(assert (=> bs!1101828 (= (= lt!1875007 lt!1875321) (= lambda!212713 lambda!212710))))

(declare-fun bs!1101829 () Bool)

(assert (= bs!1101829 (and b!4710858 b!4710782)))

(assert (=> bs!1101829 (= (= lt!1875007 lt!1875249) (= lambda!212713 lambda!212693))))

(declare-fun bs!1101830 () Bool)

(assert (= bs!1101830 (and b!4710858 b!4710810)))

(assert (=> bs!1101830 (= lambda!212713 lambda!212704)))

(declare-fun bs!1101831 () Bool)

(assert (= bs!1101831 (and b!4710858 b!4710780)))

(assert (=> bs!1101831 (= lambda!212713 lambda!212691)))

(declare-fun bs!1101832 () Bool)

(assert (= bs!1101832 (and b!4710858 d!1499028)))

(assert (=> bs!1101832 (= (= lt!1875007 lt!1875299) (= lambda!212713 lambda!212707))))

(declare-fun bs!1101833 () Bool)

(assert (= bs!1101833 (and b!4710858 b!4710760)))

(assert (=> bs!1101833 (= lambda!212713 lambda!212680)))

(assert (=> bs!1101833 (= (= lt!1875007 lt!1875196) (= lambda!212713 lambda!212681))))

(declare-fun bs!1101834 () Bool)

(assert (= bs!1101834 (and b!4710858 b!4710833)))

(assert (=> bs!1101834 (= lambda!212713 lambda!212708)))

(declare-fun bs!1101835 () Bool)

(assert (= bs!1101835 (and b!4710858 d!1499012)))

(assert (=> bs!1101835 (= (= lt!1875007 lt!1875264) (= lambda!212713 lambda!212694))))

(declare-fun bs!1101836 () Bool)

(assert (= bs!1101836 (and b!4710858 d!1499000)))

(assert (=> bs!1101836 (= (= lt!1875007 lt!1875211) (= lambda!212713 lambda!212685))))

(declare-fun bs!1101837 () Bool)

(assert (= bs!1101837 (and b!4710858 b!4710758)))

(assert (=> bs!1101837 (= lambda!212713 lambda!212679)))

(assert (=> bs!1101828 (= lambda!212713 lambda!212709)))

(declare-fun bs!1101838 () Bool)

(assert (= bs!1101838 (and b!4710858 b!4710856)))

(assert (=> bs!1101838 (= lambda!212713 lambda!212712)))

(assert (=> bs!1101829 (= lambda!212713 lambda!212692)))

(assert (=> b!4710858 true))

(declare-fun lt!1875358 () ListMap!5163)

(declare-fun lambda!212714 () Int)

(assert (=> bs!1101826 (= (= lt!1875358 lt!1875336) (= lambda!212714 lambda!212711))))

(assert (=> bs!1101827 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212705))))

(assert (=> bs!1101827 (= (= lt!1875358 lt!1875284) (= lambda!212714 lambda!212706))))

(assert (=> b!4710858 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212713))))

(assert (=> bs!1101828 (= (= lt!1875358 lt!1875321) (= lambda!212714 lambda!212710))))

(assert (=> bs!1101829 (= (= lt!1875358 lt!1875249) (= lambda!212714 lambda!212693))))

(assert (=> bs!1101830 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212704))))

(assert (=> bs!1101831 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212691))))

(assert (=> bs!1101832 (= (= lt!1875358 lt!1875299) (= lambda!212714 lambda!212707))))

(assert (=> bs!1101833 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212680))))

(assert (=> bs!1101833 (= (= lt!1875358 lt!1875196) (= lambda!212714 lambda!212681))))

(assert (=> bs!1101834 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212708))))

(assert (=> bs!1101835 (= (= lt!1875358 lt!1875264) (= lambda!212714 lambda!212694))))

(assert (=> bs!1101836 (= (= lt!1875358 lt!1875211) (= lambda!212714 lambda!212685))))

(assert (=> bs!1101837 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212679))))

(assert (=> bs!1101828 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212709))))

(assert (=> bs!1101838 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212712))))

(assert (=> bs!1101829 (= (= lt!1875358 lt!1875007) (= lambda!212714 lambda!212692))))

(assert (=> b!4710858 true))

(declare-fun bs!1101839 () Bool)

(declare-fun d!1499036 () Bool)

(assert (= bs!1101839 (and d!1499036 d!1499030)))

(declare-fun lambda!212715 () Int)

(declare-fun lt!1875373 () ListMap!5163)

(assert (=> bs!1101839 (= (= lt!1875373 lt!1875336) (= lambda!212715 lambda!212711))))

(declare-fun bs!1101840 () Bool)

(assert (= bs!1101840 (and d!1499036 b!4710812)))

(assert (=> bs!1101840 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212705))))

(declare-fun bs!1101841 () Bool)

(assert (= bs!1101841 (and d!1499036 b!4710858)))

(assert (=> bs!1101841 (= (= lt!1875373 lt!1875358) (= lambda!212715 lambda!212714))))

(assert (=> bs!1101840 (= (= lt!1875373 lt!1875284) (= lambda!212715 lambda!212706))))

(assert (=> bs!1101841 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212713))))

(declare-fun bs!1101842 () Bool)

(assert (= bs!1101842 (and d!1499036 b!4710835)))

(assert (=> bs!1101842 (= (= lt!1875373 lt!1875321) (= lambda!212715 lambda!212710))))

(declare-fun bs!1101843 () Bool)

(assert (= bs!1101843 (and d!1499036 b!4710782)))

(assert (=> bs!1101843 (= (= lt!1875373 lt!1875249) (= lambda!212715 lambda!212693))))

(declare-fun bs!1101844 () Bool)

(assert (= bs!1101844 (and d!1499036 b!4710810)))

(assert (=> bs!1101844 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212704))))

(declare-fun bs!1101845 () Bool)

(assert (= bs!1101845 (and d!1499036 b!4710780)))

(assert (=> bs!1101845 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212691))))

(declare-fun bs!1101846 () Bool)

(assert (= bs!1101846 (and d!1499036 d!1499028)))

(assert (=> bs!1101846 (= (= lt!1875373 lt!1875299) (= lambda!212715 lambda!212707))))

(declare-fun bs!1101847 () Bool)

(assert (= bs!1101847 (and d!1499036 b!4710760)))

(assert (=> bs!1101847 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212680))))

(assert (=> bs!1101847 (= (= lt!1875373 lt!1875196) (= lambda!212715 lambda!212681))))

(declare-fun bs!1101848 () Bool)

(assert (= bs!1101848 (and d!1499036 b!4710833)))

(assert (=> bs!1101848 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212708))))

(declare-fun bs!1101849 () Bool)

(assert (= bs!1101849 (and d!1499036 d!1499012)))

(assert (=> bs!1101849 (= (= lt!1875373 lt!1875264) (= lambda!212715 lambda!212694))))

(declare-fun bs!1101850 () Bool)

(assert (= bs!1101850 (and d!1499036 d!1499000)))

(assert (=> bs!1101850 (= (= lt!1875373 lt!1875211) (= lambda!212715 lambda!212685))))

(declare-fun bs!1101851 () Bool)

(assert (= bs!1101851 (and d!1499036 b!4710758)))

(assert (=> bs!1101851 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212679))))

(assert (=> bs!1101842 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212709))))

(declare-fun bs!1101852 () Bool)

(assert (= bs!1101852 (and d!1499036 b!4710856)))

(assert (=> bs!1101852 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212712))))

(assert (=> bs!1101843 (= (= lt!1875373 lt!1875007) (= lambda!212715 lambda!212692))))

(assert (=> d!1499036 true))

(declare-fun e!2938203 () Bool)

(assert (=> d!1499036 e!2938203))

(declare-fun res!1990990 () Bool)

(assert (=> d!1499036 (=> (not res!1990990) (not e!2938203))))

(assert (=> d!1499036 (= res!1990990 (forall!11488 (_2!30402 (h!58985 (toList!5800 lm!2023))) lambda!212715))))

(declare-fun e!2938201 () ListMap!5163)

(assert (=> d!1499036 (= lt!1875373 e!2938201)))

(declare-fun c!804814 () Bool)

(assert (=> d!1499036 (= c!804814 (is-Nil!52675 (_2!30402 (h!58985 (toList!5800 lm!2023)))))))

(assert (=> d!1499036 (noDuplicateKeys!1955 (_2!30402 (h!58985 (toList!5800 lm!2023))))))

(assert (=> d!1499036 (= (addToMapMapFromBucket!1385 (_2!30402 (h!58985 (toList!5800 lm!2023))) lt!1875007) lt!1875373)))

(assert (=> b!4710856 (= e!2938201 lt!1875007)))

(declare-fun lt!1875369 () Unit!127876)

(declare-fun call!329363 () Unit!127876)

(assert (=> b!4710856 (= lt!1875369 call!329363)))

(declare-fun call!329364 () Bool)

(assert (=> b!4710856 call!329364))

(declare-fun lt!1875364 () Unit!127876)

(assert (=> b!4710856 (= lt!1875364 lt!1875369)))

(declare-fun call!329362 () Bool)

(assert (=> b!4710856 call!329362))

(declare-fun lt!1875363 () Unit!127876)

(declare-fun Unit!127956 () Unit!127876)

(assert (=> b!4710856 (= lt!1875363 Unit!127956)))

(declare-fun b!4710857 () Bool)

(assert (=> b!4710857 (= e!2938203 (invariantList!1473 (toList!5799 lt!1875373)))))

(declare-fun bm!329357 () Bool)

(assert (=> bm!329357 (= call!329364 (forall!11488 (ite c!804814 (toList!5799 lt!1875007) (_2!30402 (h!58985 (toList!5800 lm!2023)))) (ite c!804814 lambda!212712 lambda!212714)))))

(declare-fun bm!329358 () Bool)

(assert (=> bm!329358 (= call!329362 (forall!11488 (toList!5799 lt!1875007) (ite c!804814 lambda!212712 lambda!212713)))))

(assert (=> b!4710858 (= e!2938201 lt!1875358)))

(declare-fun lt!1875362 () ListMap!5163)

(assert (=> b!4710858 (= lt!1875362 (+!2219 lt!1875007 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023))))))))

(assert (=> b!4710858 (= lt!1875358 (addToMapMapFromBucket!1385 (t!360037 (_2!30402 (h!58985 (toList!5800 lm!2023)))) (+!2219 lt!1875007 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023)))))))))

(declare-fun lt!1875368 () Unit!127876)

(assert (=> b!4710858 (= lt!1875368 call!329363)))

(assert (=> b!4710858 call!329362))

(declare-fun lt!1875371 () Unit!127876)

(assert (=> b!4710858 (= lt!1875371 lt!1875368)))

(assert (=> b!4710858 (forall!11488 (toList!5799 lt!1875362) lambda!212714)))

(declare-fun lt!1875367 () Unit!127876)

(declare-fun Unit!127957 () Unit!127876)

(assert (=> b!4710858 (= lt!1875367 Unit!127957)))

(assert (=> b!4710858 (forall!11488 (t!360037 (_2!30402 (h!58985 (toList!5800 lm!2023)))) lambda!212714)))

(declare-fun lt!1875357 () Unit!127876)

(declare-fun Unit!127958 () Unit!127876)

(assert (=> b!4710858 (= lt!1875357 Unit!127958)))

(declare-fun lt!1875370 () Unit!127876)

(declare-fun Unit!127959 () Unit!127876)

(assert (=> b!4710858 (= lt!1875370 Unit!127959)))

(declare-fun lt!1875361 () Unit!127876)

(assert (=> b!4710858 (= lt!1875361 (forallContained!3561 (toList!5799 lt!1875362) lambda!212714 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023))))))))

(assert (=> b!4710858 (contains!15977 lt!1875362 (_1!30401 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023))))))))

(declare-fun lt!1875359 () Unit!127876)

(declare-fun Unit!127960 () Unit!127876)

(assert (=> b!4710858 (= lt!1875359 Unit!127960)))

(assert (=> b!4710858 (contains!15977 lt!1875358 (_1!30401 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023))))))))

(declare-fun lt!1875360 () Unit!127876)

(declare-fun Unit!127961 () Unit!127876)

(assert (=> b!4710858 (= lt!1875360 Unit!127961)))

(assert (=> b!4710858 call!329364))

(declare-fun lt!1875365 () Unit!127876)

(declare-fun Unit!127962 () Unit!127876)

(assert (=> b!4710858 (= lt!1875365 Unit!127962)))

(assert (=> b!4710858 (forall!11488 (toList!5799 lt!1875362) lambda!212714)))

(declare-fun lt!1875366 () Unit!127876)

(declare-fun Unit!127963 () Unit!127876)

(assert (=> b!4710858 (= lt!1875366 Unit!127963)))

(declare-fun lt!1875375 () Unit!127876)

(declare-fun Unit!127964 () Unit!127876)

(assert (=> b!4710858 (= lt!1875375 Unit!127964)))

(declare-fun lt!1875376 () Unit!127876)

(assert (=> b!4710858 (= lt!1875376 (addForallContainsKeyThenBeforeAdding!760 lt!1875007 lt!1875358 (_1!30401 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023))))) (_2!30401 (h!58984 (_2!30402 (h!58985 (toList!5800 lm!2023)))))))))

(assert (=> b!4710858 (forall!11488 (toList!5799 lt!1875007) lambda!212714)))

(declare-fun lt!1875374 () Unit!127876)

(assert (=> b!4710858 (= lt!1875374 lt!1875376)))

(assert (=> b!4710858 (forall!11488 (toList!5799 lt!1875007) lambda!212714)))

(declare-fun lt!1875372 () Unit!127876)

(declare-fun Unit!127965 () Unit!127876)

(assert (=> b!4710858 (= lt!1875372 Unit!127965)))

(declare-fun res!1990988 () Bool)

(assert (=> b!4710858 (= res!1990988 (forall!11488 (_2!30402 (h!58985 (toList!5800 lm!2023))) lambda!212714))))

(declare-fun e!2938202 () Bool)

(assert (=> b!4710858 (=> (not res!1990988) (not e!2938202))))

(assert (=> b!4710858 e!2938202))

(declare-fun lt!1875377 () Unit!127876)

(declare-fun Unit!127966 () Unit!127876)

(assert (=> b!4710858 (= lt!1875377 Unit!127966)))

(declare-fun bm!329359 () Bool)

(assert (=> bm!329359 (= call!329363 (lemmaContainsAllItsOwnKeys!761 lt!1875007))))

(declare-fun b!4710859 () Bool)

(assert (=> b!4710859 (= e!2938202 (forall!11488 (toList!5799 lt!1875007) lambda!212714))))

(declare-fun b!4710860 () Bool)

(declare-fun res!1990989 () Bool)

(assert (=> b!4710860 (=> (not res!1990989) (not e!2938203))))

(assert (=> b!4710860 (= res!1990989 (forall!11488 (toList!5799 lt!1875007) lambda!212715))))

(assert (= (and d!1499036 c!804814) b!4710856))

(assert (= (and d!1499036 (not c!804814)) b!4710858))

(assert (= (and b!4710858 res!1990988) b!4710859))

(assert (= (or b!4710856 b!4710858) bm!329359))

(assert (= (or b!4710856 b!4710858) bm!329358))

(assert (= (or b!4710856 b!4710858) bm!329357))

(assert (= (and d!1499036 res!1990990) b!4710860))

(assert (= (and b!4710860 res!1990989) b!4710857))

(declare-fun m!5636271 () Bool)

(assert (=> b!4710858 m!5636271))

(declare-fun m!5636273 () Bool)

(assert (=> b!4710858 m!5636273))

(declare-fun m!5636275 () Bool)

(assert (=> b!4710858 m!5636275))

(declare-fun m!5636277 () Bool)

(assert (=> b!4710858 m!5636277))

(declare-fun m!5636279 () Bool)

(assert (=> b!4710858 m!5636279))

(assert (=> b!4710858 m!5636273))

(declare-fun m!5636281 () Bool)

(assert (=> b!4710858 m!5636281))

(declare-fun m!5636283 () Bool)

(assert (=> b!4710858 m!5636283))

(declare-fun m!5636285 () Bool)

(assert (=> b!4710858 m!5636285))

(assert (=> b!4710858 m!5636271))

(declare-fun m!5636287 () Bool)

(assert (=> b!4710858 m!5636287))

(declare-fun m!5636289 () Bool)

(assert (=> b!4710858 m!5636289))

(assert (=> b!4710858 m!5636283))

(assert (=> b!4710859 m!5636271))

(declare-fun m!5636291 () Bool)

(assert (=> d!1499036 m!5636291))

(declare-fun m!5636293 () Bool)

(assert (=> d!1499036 m!5636293))

(assert (=> bm!329359 m!5636015))

(declare-fun m!5636295 () Bool)

(assert (=> b!4710860 m!5636295))

(declare-fun m!5636297 () Bool)

(assert (=> bm!329358 m!5636297))

(declare-fun m!5636299 () Bool)

(assert (=> b!4710857 m!5636299))

(declare-fun m!5636303 () Bool)

(assert (=> bm!329357 m!5636303))

(assert (=> b!4710566 d!1499036))

(declare-fun bs!1101856 () Bool)

(declare-fun d!1499038 () Bool)

(assert (= bs!1101856 (and d!1499038 start!478610)))

(declare-fun lambda!212719 () Int)

(assert (=> bs!1101856 (= lambda!212719 lambda!212620)))

(declare-fun bs!1101857 () Bool)

(assert (= bs!1101857 (and d!1499038 d!1498992)))

(assert (=> bs!1101857 (= lambda!212719 lambda!212626)))

(declare-fun bs!1101858 () Bool)

(assert (= bs!1101858 (and d!1499038 d!1499020)))

(assert (=> bs!1101858 (= lambda!212719 lambda!212703)))

(declare-fun lt!1875381 () ListMap!5163)

(assert (=> d!1499038 (invariantList!1473 (toList!5799 lt!1875381))))

(declare-fun e!2938204 () ListMap!5163)

(assert (=> d!1499038 (= lt!1875381 e!2938204)))

(declare-fun c!804815 () Bool)

(assert (=> d!1499038 (= c!804815 (is-Cons!52676 (t!360038 (toList!5800 lm!2023))))))

(assert (=> d!1499038 (forall!11486 (t!360038 (toList!5800 lm!2023)) lambda!212719)))

(assert (=> d!1499038 (= (extractMap!1981 (t!360038 (toList!5800 lm!2023))) lt!1875381)))

(declare-fun b!4710861 () Bool)

(assert (=> b!4710861 (= e!2938204 (addToMapMapFromBucket!1385 (_2!30402 (h!58985 (t!360038 (toList!5800 lm!2023)))) (extractMap!1981 (t!360038 (t!360038 (toList!5800 lm!2023))))))))

(declare-fun b!4710862 () Bool)

(assert (=> b!4710862 (= e!2938204 (ListMap!5164 Nil!52675))))

(assert (= (and d!1499038 c!804815) b!4710861))

(assert (= (and d!1499038 (not c!804815)) b!4710862))

(declare-fun m!5636311 () Bool)

(assert (=> d!1499038 m!5636311))

(declare-fun m!5636313 () Bool)

(assert (=> d!1499038 m!5636313))

(declare-fun m!5636315 () Bool)

(assert (=> b!4710861 m!5636315))

(assert (=> b!4710861 m!5636315))

(declare-fun m!5636317 () Bool)

(assert (=> b!4710861 m!5636317))

(assert (=> b!4710566 d!1499038))

(declare-fun d!1499042 () Bool)

(declare-fun tail!8858 (List!52800) List!52800)

(assert (=> d!1499042 (= (tail!8853 lm!2023) (ListLongMap!4330 (tail!8858 (toList!5800 lm!2023))))))

(declare-fun bs!1101868 () Bool)

(assert (= bs!1101868 d!1499042))

(declare-fun m!5636319 () Bool)

(assert (=> bs!1101868 m!5636319))

(assert (=> b!4710566 d!1499042))

(declare-fun d!1499044 () Bool)

(assert (=> d!1499044 (= (head!10150 (toList!5800 lm!2023)) (h!58985 (toList!5800 lm!2023)))))

(assert (=> b!4710577 d!1499044))

(declare-fun bs!1101875 () Bool)

(declare-fun d!1499046 () Bool)

(assert (= bs!1101875 (and d!1499046 d!1499030)))

(declare-fun lambda!212726 () Int)

(assert (=> bs!1101875 (not (= lambda!212726 lambda!212711))))

(declare-fun bs!1101876 () Bool)

(assert (= bs!1101876 (and d!1499046 b!4710812)))

(assert (=> bs!1101876 (not (= lambda!212726 lambda!212705))))

(declare-fun bs!1101877 () Bool)

(assert (= bs!1101877 (and d!1499046 b!4710858)))

(assert (=> bs!1101877 (not (= lambda!212726 lambda!212714))))

(assert (=> bs!1101876 (not (= lambda!212726 lambda!212706))))

(assert (=> bs!1101877 (not (= lambda!212726 lambda!212713))))

(declare-fun bs!1101878 () Bool)

(assert (= bs!1101878 (and d!1499046 b!4710835)))

(assert (=> bs!1101878 (not (= lambda!212726 lambda!212710))))

(declare-fun bs!1101879 () Bool)

(assert (= bs!1101879 (and d!1499046 b!4710782)))

(assert (=> bs!1101879 (not (= lambda!212726 lambda!212693))))

(declare-fun bs!1101880 () Bool)

(assert (= bs!1101880 (and d!1499046 b!4710810)))

(assert (=> bs!1101880 (not (= lambda!212726 lambda!212704))))

(declare-fun bs!1101881 () Bool)

(assert (= bs!1101881 (and d!1499046 d!1499036)))

(assert (=> bs!1101881 (not (= lambda!212726 lambda!212715))))

(declare-fun bs!1101882 () Bool)

(assert (= bs!1101882 (and d!1499046 b!4710780)))

(assert (=> bs!1101882 (not (= lambda!212726 lambda!212691))))

(declare-fun bs!1101883 () Bool)

(assert (= bs!1101883 (and d!1499046 d!1499028)))

(assert (=> bs!1101883 (not (= lambda!212726 lambda!212707))))

(declare-fun bs!1101884 () Bool)

(assert (= bs!1101884 (and d!1499046 b!4710760)))

(assert (=> bs!1101884 (not (= lambda!212726 lambda!212680))))

(assert (=> bs!1101884 (not (= lambda!212726 lambda!212681))))

(declare-fun bs!1101885 () Bool)

(assert (= bs!1101885 (and d!1499046 b!4710833)))

(assert (=> bs!1101885 (not (= lambda!212726 lambda!212708))))

(declare-fun bs!1101886 () Bool)

(assert (= bs!1101886 (and d!1499046 d!1499012)))

(assert (=> bs!1101886 (not (= lambda!212726 lambda!212694))))

(declare-fun bs!1101887 () Bool)

(assert (= bs!1101887 (and d!1499046 d!1499000)))

(assert (=> bs!1101887 (not (= lambda!212726 lambda!212685))))

(declare-fun bs!1101888 () Bool)

(assert (= bs!1101888 (and d!1499046 b!4710758)))

(assert (=> bs!1101888 (not (= lambda!212726 lambda!212679))))

(assert (=> bs!1101878 (not (= lambda!212726 lambda!212709))))

(declare-fun bs!1101889 () Bool)

(assert (= bs!1101889 (and d!1499046 b!4710856)))

(assert (=> bs!1101889 (not (= lambda!212726 lambda!212712))))

(assert (=> bs!1101879 (not (= lambda!212726 lambda!212692))))

(assert (=> d!1499046 true))

(assert (=> d!1499046 true))

(assert (=> d!1499046 (= (allKeysSameHash!1781 oldBucket!34 hash!405 hashF!1323) (forall!11488 oldBucket!34 lambda!212726))))

(declare-fun bs!1101890 () Bool)

(assert (= bs!1101890 d!1499046))

(declare-fun m!5636345 () Bool)

(assert (=> bs!1101890 m!5636345))

(assert (=> b!4710578 d!1499046))

(declare-fun bs!1101906 () Bool)

(declare-fun d!1499048 () Bool)

(assert (= bs!1101906 (and d!1499048 start!478610)))

(declare-fun lambda!212731 () Int)

(assert (=> bs!1101906 (not (= lambda!212731 lambda!212620))))

(declare-fun bs!1101907 () Bool)

(assert (= bs!1101907 (and d!1499048 d!1498992)))

(assert (=> bs!1101907 (not (= lambda!212731 lambda!212626))))

(declare-fun bs!1101908 () Bool)

(assert (= bs!1101908 (and d!1499048 d!1499020)))

(assert (=> bs!1101908 (not (= lambda!212731 lambda!212703))))

(declare-fun bs!1101909 () Bool)

(assert (= bs!1101909 (and d!1499048 d!1499038)))

(assert (=> bs!1101909 (not (= lambda!212731 lambda!212719))))

(assert (=> d!1499048 true))

(assert (=> d!1499048 (= (allKeysSameHashInMap!1869 lm!2023 hashF!1323) (forall!11486 (toList!5800 lm!2023) lambda!212731))))

(declare-fun bs!1101910 () Bool)

(assert (= bs!1101910 d!1499048))

(declare-fun m!5636355 () Bool)

(assert (=> bs!1101910 m!5636355))

(assert (=> b!4710567 d!1499048))

(declare-fun bs!1101911 () Bool)

(declare-fun d!1499052 () Bool)

(assert (= bs!1101911 (and d!1499052 d!1499030)))

(declare-fun lambda!212733 () Int)

(assert (=> bs!1101911 (not (= lambda!212733 lambda!212711))))

(declare-fun bs!1101912 () Bool)

(assert (= bs!1101912 (and d!1499052 b!4710812)))

(assert (=> bs!1101912 (not (= lambda!212733 lambda!212705))))

(declare-fun bs!1101913 () Bool)

(assert (= bs!1101913 (and d!1499052 b!4710858)))

(assert (=> bs!1101913 (not (= lambda!212733 lambda!212714))))

(assert (=> bs!1101912 (not (= lambda!212733 lambda!212706))))

(assert (=> bs!1101913 (not (= lambda!212733 lambda!212713))))

(declare-fun bs!1101914 () Bool)

(assert (= bs!1101914 (and d!1499052 b!4710835)))

(assert (=> bs!1101914 (not (= lambda!212733 lambda!212710))))

(declare-fun bs!1101915 () Bool)

(assert (= bs!1101915 (and d!1499052 b!4710782)))

(assert (=> bs!1101915 (not (= lambda!212733 lambda!212693))))

(declare-fun bs!1101916 () Bool)

(assert (= bs!1101916 (and d!1499052 b!4710810)))

(assert (=> bs!1101916 (not (= lambda!212733 lambda!212704))))

(declare-fun bs!1101917 () Bool)

(assert (= bs!1101917 (and d!1499052 d!1499036)))

(assert (=> bs!1101917 (not (= lambda!212733 lambda!212715))))

(declare-fun bs!1101918 () Bool)

(assert (= bs!1101918 (and d!1499052 b!4710780)))

(assert (=> bs!1101918 (not (= lambda!212733 lambda!212691))))

(declare-fun bs!1101919 () Bool)

(assert (= bs!1101919 (and d!1499052 d!1499028)))

(assert (=> bs!1101919 (not (= lambda!212733 lambda!212707))))

(declare-fun bs!1101920 () Bool)

(assert (= bs!1101920 (and d!1499052 b!4710760)))

(assert (=> bs!1101920 (not (= lambda!212733 lambda!212680))))

(assert (=> bs!1101920 (not (= lambda!212733 lambda!212681))))

(declare-fun bs!1101921 () Bool)

(assert (= bs!1101921 (and d!1499052 b!4710833)))

(assert (=> bs!1101921 (not (= lambda!212733 lambda!212708))))

(declare-fun bs!1101922 () Bool)

(assert (= bs!1101922 (and d!1499052 d!1499012)))

(assert (=> bs!1101922 (not (= lambda!212733 lambda!212694))))

(declare-fun bs!1101923 () Bool)

(assert (= bs!1101923 (and d!1499052 d!1499000)))

(assert (=> bs!1101923 (not (= lambda!212733 lambda!212685))))

(declare-fun bs!1101924 () Bool)

(assert (= bs!1101924 (and d!1499052 b!4710758)))

(assert (=> bs!1101924 (not (= lambda!212733 lambda!212679))))

(assert (=> bs!1101914 (not (= lambda!212733 lambda!212709))))

(assert (=> bs!1101915 (not (= lambda!212733 lambda!212692))))

(declare-fun bs!1101926 () Bool)

(assert (= bs!1101926 (and d!1499052 d!1499046)))

(assert (=> bs!1101926 (= lambda!212733 lambda!212726)))

(declare-fun bs!1101929 () Bool)

(assert (= bs!1101929 (and d!1499052 b!4710856)))

(assert (=> bs!1101929 (not (= lambda!212733 lambda!212712))))

(assert (=> d!1499052 true))

(assert (=> d!1499052 true))

(assert (=> d!1499052 (= (allKeysSameHash!1781 newBucket!218 hash!405 hashF!1323) (forall!11488 newBucket!218 lambda!212733))))

(declare-fun bs!1101932 () Bool)

(assert (= bs!1101932 d!1499052))

(declare-fun m!5636357 () Bool)

(assert (=> bs!1101932 m!5636357))

(assert (=> b!4710569 d!1499052))

(declare-fun bs!1101935 () Bool)

(declare-fun d!1499054 () Bool)

(assert (= bs!1101935 (and d!1499054 d!1499048)))

(declare-fun lambda!212735 () Int)

(assert (=> bs!1101935 (not (= lambda!212735 lambda!212731))))

(declare-fun bs!1101937 () Bool)

(assert (= bs!1101937 (and d!1499054 d!1498992)))

(assert (=> bs!1101937 (= lambda!212735 lambda!212626)))

(declare-fun bs!1101939 () Bool)

(assert (= bs!1101939 (and d!1499054 d!1499038)))

(assert (=> bs!1101939 (= lambda!212735 lambda!212719)))

(declare-fun bs!1101940 () Bool)

(assert (= bs!1101940 (and d!1499054 start!478610)))

(assert (=> bs!1101940 (= lambda!212735 lambda!212620)))

(declare-fun bs!1101941 () Bool)

(assert (= bs!1101941 (and d!1499054 d!1499020)))

(assert (=> bs!1101941 (= lambda!212735 lambda!212703)))

(declare-fun lt!1875424 () ListMap!5163)

(assert (=> d!1499054 (invariantList!1473 (toList!5799 lt!1875424))))

(declare-fun e!2938211 () ListMap!5163)

(assert (=> d!1499054 (= lt!1875424 e!2938211)))

(declare-fun c!804818 () Bool)

(assert (=> d!1499054 (= c!804818 (is-Cons!52676 (Cons!52676 (tuple2!54217 hash!405 newBucket!218) (t!360038 (toList!5800 lm!2023)))))))

(assert (=> d!1499054 (forall!11486 (Cons!52676 (tuple2!54217 hash!405 newBucket!218) (t!360038 (toList!5800 lm!2023))) lambda!212735)))

(assert (=> d!1499054 (= (extractMap!1981 (Cons!52676 (tuple2!54217 hash!405 newBucket!218) (t!360038 (toList!5800 lm!2023)))) lt!1875424)))

(declare-fun b!4710879 () Bool)

(assert (=> b!4710879 (= e!2938211 (addToMapMapFromBucket!1385 (_2!30402 (h!58985 (Cons!52676 (tuple2!54217 hash!405 newBucket!218) (t!360038 (toList!5800 lm!2023))))) (extractMap!1981 (t!360038 (Cons!52676 (tuple2!54217 hash!405 newBucket!218) (t!360038 (toList!5800 lm!2023)))))))))

(declare-fun b!4710880 () Bool)

(assert (=> b!4710880 (= e!2938211 (ListMap!5164 Nil!52675))))

(assert (= (and d!1499054 c!804818) b!4710879))

(assert (= (and d!1499054 (not c!804818)) b!4710880))

(declare-fun m!5636359 () Bool)

(assert (=> d!1499054 m!5636359))

(declare-fun m!5636361 () Bool)

(assert (=> d!1499054 m!5636361))

(declare-fun m!5636363 () Bool)

(assert (=> b!4710879 m!5636363))

(assert (=> b!4710879 m!5636363))

(declare-fun m!5636365 () Bool)

(assert (=> b!4710879 m!5636365))

(assert (=> b!4710568 d!1499054))

(declare-fun bs!1101942 () Bool)

(declare-fun d!1499056 () Bool)

(assert (= bs!1101942 (and d!1499056 d!1499048)))

(declare-fun lambda!212736 () Int)

(assert (=> bs!1101942 (not (= lambda!212736 lambda!212731))))

(declare-fun bs!1101943 () Bool)

(assert (= bs!1101943 (and d!1499056 d!1498992)))

(assert (=> bs!1101943 (= lambda!212736 lambda!212626)))

(declare-fun bs!1101944 () Bool)

(assert (= bs!1101944 (and d!1499056 d!1499038)))

(assert (=> bs!1101944 (= lambda!212736 lambda!212719)))

(declare-fun bs!1101945 () Bool)

(assert (= bs!1101945 (and d!1499056 d!1499054)))

(assert (=> bs!1101945 (= lambda!212736 lambda!212735)))

(declare-fun bs!1101946 () Bool)

(assert (= bs!1101946 (and d!1499056 start!478610)))

(assert (=> bs!1101946 (= lambda!212736 lambda!212620)))

(declare-fun bs!1101947 () Bool)

(assert (= bs!1101947 (and d!1499056 d!1499020)))

(assert (=> bs!1101947 (= lambda!212736 lambda!212703)))

(declare-fun lt!1875425 () ListMap!5163)

(assert (=> d!1499056 (invariantList!1473 (toList!5799 lt!1875425))))

(declare-fun e!2938212 () ListMap!5163)

(assert (=> d!1499056 (= lt!1875425 e!2938212)))

(declare-fun c!804819 () Bool)

(assert (=> d!1499056 (= c!804819 (is-Cons!52676 lt!1875010))))

(assert (=> d!1499056 (forall!11486 lt!1875010 lambda!212736)))

(assert (=> d!1499056 (= (extractMap!1981 lt!1875010) lt!1875425)))

(declare-fun b!4710881 () Bool)

(assert (=> b!4710881 (= e!2938212 (addToMapMapFromBucket!1385 (_2!30402 (h!58985 lt!1875010)) (extractMap!1981 (t!360038 lt!1875010))))))

(declare-fun b!4710882 () Bool)

(assert (=> b!4710882 (= e!2938212 (ListMap!5164 Nil!52675))))

(assert (= (and d!1499056 c!804819) b!4710881))

(assert (= (and d!1499056 (not c!804819)) b!4710882))

(declare-fun m!5636399 () Bool)

(assert (=> d!1499056 m!5636399))

(declare-fun m!5636401 () Bool)

(assert (=> d!1499056 m!5636401))

(declare-fun m!5636405 () Bool)

(assert (=> b!4710881 m!5636405))

(assert (=> b!4710881 m!5636405))

(declare-fun m!5636407 () Bool)

(assert (=> b!4710881 m!5636407))

(assert (=> b!4710568 d!1499056))

(declare-fun d!1499060 () Bool)

(assert (=> d!1499060 (= (eq!1092 lt!1875011 (extractMap!1981 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023))))) (= (content!9332 (toList!5799 lt!1875011)) (content!9332 (toList!5799 (extractMap!1981 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023))))))))))

(declare-fun bs!1101948 () Bool)

(assert (= bs!1101948 d!1499060))

(assert (=> bs!1101948 m!5636129))

(declare-fun m!5636409 () Bool)

(assert (=> bs!1101948 m!5636409))

(assert (=> b!4710579 d!1499060))

(declare-fun bs!1101949 () Bool)

(declare-fun d!1499062 () Bool)

(assert (= bs!1101949 (and d!1499062 d!1499048)))

(declare-fun lambda!212737 () Int)

(assert (=> bs!1101949 (not (= lambda!212737 lambda!212731))))

(declare-fun bs!1101950 () Bool)

(assert (= bs!1101950 (and d!1499062 d!1498992)))

(assert (=> bs!1101950 (= lambda!212737 lambda!212626)))

(declare-fun bs!1101951 () Bool)

(assert (= bs!1101951 (and d!1499062 d!1499056)))

(assert (=> bs!1101951 (= lambda!212737 lambda!212736)))

(declare-fun bs!1101952 () Bool)

(assert (= bs!1101952 (and d!1499062 d!1499038)))

(assert (=> bs!1101952 (= lambda!212737 lambda!212719)))

(declare-fun bs!1101953 () Bool)

(assert (= bs!1101953 (and d!1499062 d!1499054)))

(assert (=> bs!1101953 (= lambda!212737 lambda!212735)))

(declare-fun bs!1101954 () Bool)

(assert (= bs!1101954 (and d!1499062 start!478610)))

(assert (=> bs!1101954 (= lambda!212737 lambda!212620)))

(declare-fun bs!1101955 () Bool)

(assert (= bs!1101955 (and d!1499062 d!1499020)))

(assert (=> bs!1101955 (= lambda!212737 lambda!212703)))

(declare-fun lt!1875426 () ListMap!5163)

(assert (=> d!1499062 (invariantList!1473 (toList!5799 lt!1875426))))

(declare-fun e!2938213 () ListMap!5163)

(assert (=> d!1499062 (= lt!1875426 e!2938213)))

(declare-fun c!804820 () Bool)

(assert (=> d!1499062 (= c!804820 (is-Cons!52676 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023)))))))

(assert (=> d!1499062 (forall!11486 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023))) lambda!212737)))

(assert (=> d!1499062 (= (extractMap!1981 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023)))) lt!1875426)))

(declare-fun b!4710883 () Bool)

(assert (=> b!4710883 (= e!2938213 (addToMapMapFromBucket!1385 (_2!30402 (h!58985 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023))))) (extractMap!1981 (t!360038 (Cons!52676 lt!1875013 (t!360038 (toList!5800 lm!2023)))))))))

(declare-fun b!4710884 () Bool)

(assert (=> b!4710884 (= e!2938213 (ListMap!5164 Nil!52675))))

(assert (= (and d!1499062 c!804820) b!4710883))

(assert (= (and d!1499062 (not c!804820)) b!4710884))

(declare-fun m!5636411 () Bool)

(assert (=> d!1499062 m!5636411))

(declare-fun m!5636413 () Bool)

(assert (=> d!1499062 m!5636413))

(declare-fun m!5636415 () Bool)

(assert (=> b!4710883 m!5636415))

(assert (=> b!4710883 m!5636415))

(declare-fun m!5636417 () Bool)

(assert (=> b!4710883 m!5636417))

(assert (=> b!4710579 d!1499062))

(declare-fun e!2938216 () Bool)

(declare-fun b!4710889 () Bool)

(declare-fun tp!1347478 () Bool)

(assert (=> b!4710889 (= e!2938216 (and tp_is_empty!31113 tp_is_empty!31115 tp!1347478))))

(assert (=> b!4710570 (= tp!1347466 e!2938216)))

(assert (= (and b!4710570 (is-Cons!52675 (t!360037 oldBucket!34))) b!4710889))

(declare-fun b!4710892 () Bool)

(declare-fun e!2938217 () Bool)

(declare-fun tp!1347479 () Bool)

(assert (=> b!4710892 (= e!2938217 (and tp_is_empty!31113 tp_is_empty!31115 tp!1347479))))

(assert (=> b!4710581 (= tp!1347464 e!2938217)))

(assert (= (and b!4710581 (is-Cons!52675 (t!360037 newBucket!218))) b!4710892))

(declare-fun b!4710897 () Bool)

(declare-fun e!2938220 () Bool)

(declare-fun tp!1347484 () Bool)

(declare-fun tp!1347485 () Bool)

(assert (=> b!4710897 (= e!2938220 (and tp!1347484 tp!1347485))))

(assert (=> b!4710573 (= tp!1347465 e!2938220)))

(assert (= (and b!4710573 (is-Cons!52676 (toList!5800 lm!2023))) b!4710897))

(declare-fun b_lambda!177647 () Bool)

(assert (= b_lambda!177645 (or start!478610 b_lambda!177647)))

(declare-fun bs!1101960 () Bool)

(declare-fun d!1499066 () Bool)

(assert (= bs!1101960 (and d!1499066 start!478610)))

(assert (=> bs!1101960 (= (dynLambda!21776 lambda!212620 (h!58985 (toList!5800 lm!2023))) (noDuplicateKeys!1955 (_2!30402 (h!58985 (toList!5800 lm!2023)))))))

(assert (=> bs!1101960 m!5636293))

(assert (=> b!4710668 d!1499066))

(push 1)

(assert (not b!4710760))

(assert (not b!4710860))

(assert (not d!1499060))

(assert (not b!4710715))

(assert (not bm!329347))

(assert (not b!4710720))

(assert (not b!4710738))

(assert (not b!4710796))

(assert (not bm!329353))

(assert (not b!4710708))

(assert (not b!4710769))

(assert (not bm!329343))

(assert (not d!1498982))

(assert (not b!4710784))

(assert (not b!4710795))

(assert (not b!4710889))

(assert (not d!1499002))

(assert (not b!4710814))

(assert (not d!1499020))

(assert (not b!4710739))

(assert (not d!1499042))

(assert (not b!4710717))

(assert (not b!4710811))

(assert (not d!1499046))

(assert (not b!4710772))

(assert (not b!4710836))

(assert (not bm!329324))

(assert (not b!4710793))

(assert (not b!4710740))

(assert (not d!1499030))

(assert (not b!4710770))

(assert tp_is_empty!31113)

(assert (not d!1499028))

(assert (not d!1498980))

(assert (not b!4710710))

(assert (not bm!329352))

(assert (not b!4710791))

(assert (not b!4710883))

(assert (not bm!329331))

(assert (not b!4710679))

(assert (not d!1499062))

(assert (not d!1499036))

(assert (not bm!329333))

(assert (not b!4710673))

(assert (not b!4710857))

(assert (not b!4710808))

(assert (not bm!329323))

(assert (not d!1498988))

(assert (not b!4710741))

(assert (not b!4710783))

(assert (not bm!329357))

(assert (not b!4710897))

(assert (not d!1499054))

(assert (not b!4710707))

(assert tp_is_empty!31115)

(assert (not bm!329344))

(assert (not b!4710837))

(assert (not d!1498990))

(assert (not d!1498978))

(assert (not b!4710705))

(assert (not d!1499008))

(assert (not b!4710762))

(assert (not b_lambda!177647))

(assert (not d!1499012))

(assert (not d!1499006))

(assert (not d!1499018))

(assert (not d!1498972))

(assert (not d!1499038))

(assert (not b!4710669))

(assert (not b!4710672))

(assert (not bm!329348))

(assert (not bm!329354))

(assert (not b!4710678))

(assert (not b!4710716))

(assert (not b!4710713))

(assert (not b!4710792))

(assert (not b!4710834))

(assert (not d!1499056))

(assert (not bm!329345))

(assert (not d!1499000))

(assert (not b!4710812))

(assert (not bm!329359))

(assert (not b!4710782))

(assert (not b!4710732))

(assert (not d!1498974))

(assert (not b!4710706))

(assert (not b!4710881))

(assert (not d!1498994))

(assert (not b!4710835))

(assert (not b!4710892))

(assert (not b!4710781))

(assert (not b!4710711))

(assert (not d!1498992))

(assert (not b!4710714))

(assert (not bm!329346))

(assert (not b!4710759))

(assert (not b!4710879))

(assert (not d!1499014))

(assert (not b!4710789))

(assert (not d!1498984))

(assert (not bm!329332))

(assert (not b!4710704))

(assert (not b!4710761))

(assert (not d!1499004))

(assert (not bm!329358))

(assert (not d!1499048))

(assert (not b!4710790))

(assert (not b!4710861))

(assert (not b!4710685))

(assert (not b!4710813))

(assert (not b!4710859))

(assert (not b!4710858))

(assert (not bs!1101960))

(assert (not b!4710771))

(assert (not bm!329349))

(assert (not d!1499052))

(assert (not b!4710719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


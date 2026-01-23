; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471092 () Bool)

(assert start!471092)

(declare-fun tp_is_empty!30063 () Bool)

(declare-fun e!2914676 () Bool)

(declare-fun tp_is_empty!30061 () Bool)

(declare-fun tp!1343802 () Bool)

(declare-fun b!4670675 () Bool)

(assert (=> b!4670675 (= e!2914676 (and tp_is_empty!30061 tp_is_empty!30063 tp!1343802))))

(declare-fun b!4670676 () Bool)

(declare-fun e!2914678 () Bool)

(assert (=> b!4670676 (= e!2914678 true)))

(declare-fun lt!1832793 () Bool)

(declare-datatypes ((K!13380 0))(
  ( (K!13381 (val!18975 Int)) )
))
(declare-datatypes ((V!13626 0))(
  ( (V!13627 (val!18976 Int)) )
))
(declare-datatypes ((tuple2!53208 0))(
  ( (tuple2!53209 (_1!29898 K!13380) (_2!29898 V!13626)) )
))
(declare-datatypes ((List!52157 0))(
  ( (Nil!52033) (Cons!52033 (h!58213 tuple2!53208) (t!359295 List!52157)) )
))
(declare-fun l!12991 () List!52157)

(declare-fun noDuplicateKeys!1692 (List!52157) Bool)

(assert (=> b!4670676 (= lt!1832793 (noDuplicateKeys!1692 (t!359295 l!12991)))))

(declare-fun b!4670677 () Bool)

(declare-fun res!1966150 () Bool)

(declare-fun e!2914677 () Bool)

(assert (=> b!4670677 (=> (not res!1966150) (not e!2914677))))

(get-info :version)

(assert (=> b!4670677 (= res!1966150 ((_ is Cons!52033) l!12991))))

(declare-fun b!4670678 () Bool)

(declare-fun e!2914675 () Bool)

(declare-fun tp!1343803 () Bool)

(assert (=> b!4670678 (= e!2914675 tp!1343803)))

(declare-fun b!4670679 () Bool)

(declare-fun res!1966152 () Bool)

(assert (=> b!4670679 (=> (not res!1966152) (not e!2914677))))

(assert (=> b!4670679 (= res!1966152 (noDuplicateKeys!1692 l!12991))))

(declare-fun b!4670680 () Bool)

(assert (=> b!4670680 (= e!2914677 (not e!2914678))))

(declare-fun res!1966151 () Bool)

(assert (=> b!4670680 (=> res!1966151 e!2914678)))

(declare-fun key!4532 () K!13380)

(declare-fun containsKey!2836 (List!52157 K!13380) Bool)

(assert (=> b!4670680 (= res!1966151 (containsKey!2836 (t!359295 l!12991) key!4532))))

(declare-datatypes ((ListMap!4653 0))(
  ( (ListMap!4654 (toList!5304 List!52157)) )
))
(declare-fun lhm!57 () ListMap!4653)

(declare-fun lt!1832791 () ListMap!4653)

(declare-fun -!626 (ListMap!4653 K!13380) ListMap!4653)

(declare-fun +!2028 (ListMap!4653 tuple2!53208) ListMap!4653)

(assert (=> b!4670680 (= (-!626 lt!1832791 key!4532) (+!2028 (-!626 lhm!57 key!4532) (h!58213 l!12991)))))

(declare-datatypes ((Unit!121126 0))(
  ( (Unit!121127) )
))
(declare-fun lt!1832792 () Unit!121126)

(declare-fun addRemoveCommutativeForDiffKeys!67 (ListMap!4653 K!13380 V!13626 K!13380) Unit!121126)

(assert (=> b!4670680 (= lt!1832792 (addRemoveCommutativeForDiffKeys!67 lhm!57 (_1!29898 (h!58213 l!12991)) (_2!29898 (h!58213 l!12991)) key!4532))))

(assert (=> b!4670680 (= lt!1832791 (+!2028 lhm!57 (h!58213 l!12991)))))

(declare-fun res!1966149 () Bool)

(assert (=> start!471092 (=> (not res!1966149) (not e!2914677))))

(assert (=> start!471092 (= res!1966149 (not (containsKey!2836 l!12991 key!4532)))))

(assert (=> start!471092 e!2914677))

(assert (=> start!471092 e!2914676))

(assert (=> start!471092 tp_is_empty!30061))

(declare-fun inv!67258 (ListMap!4653) Bool)

(assert (=> start!471092 (and (inv!67258 lhm!57) e!2914675)))

(assert (= (and start!471092 res!1966149) b!4670679))

(assert (= (and b!4670679 res!1966152) b!4670677))

(assert (= (and b!4670677 res!1966150) b!4670680))

(assert (= (and b!4670680 (not res!1966151)) b!4670676))

(assert (= (and start!471092 ((_ is Cons!52033) l!12991)) b!4670675))

(assert (= start!471092 b!4670678))

(declare-fun m!5563987 () Bool)

(assert (=> b!4670676 m!5563987))

(declare-fun m!5563989 () Bool)

(assert (=> b!4670679 m!5563989))

(declare-fun m!5563991 () Bool)

(assert (=> b!4670680 m!5563991))

(declare-fun m!5563993 () Bool)

(assert (=> b!4670680 m!5563993))

(declare-fun m!5563995 () Bool)

(assert (=> b!4670680 m!5563995))

(declare-fun m!5563997 () Bool)

(assert (=> b!4670680 m!5563997))

(declare-fun m!5563999 () Bool)

(assert (=> b!4670680 m!5563999))

(assert (=> b!4670680 m!5563995))

(declare-fun m!5564001 () Bool)

(assert (=> b!4670680 m!5564001))

(declare-fun m!5564003 () Bool)

(assert (=> start!471092 m!5564003))

(declare-fun m!5564005 () Bool)

(assert (=> start!471092 m!5564005))

(check-sat tp_is_empty!30063 (not start!471092) (not b!4670678) (not b!4670676) (not b!4670675) tp_is_empty!30061 (not b!4670679) (not b!4670680))
(check-sat)

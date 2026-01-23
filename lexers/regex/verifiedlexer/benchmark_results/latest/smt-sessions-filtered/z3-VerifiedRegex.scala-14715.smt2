; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758034 () Bool)

(assert start!758034)

(declare-fun tp_is_empty!54733 () Bool)

(declare-fun b!8049075 () Bool)

(declare-fun e!4742634 () Bool)

(declare-fun tp_is_empty!54731 () Bool)

(declare-fun tp!2413408 () Bool)

(assert (=> b!8049075 (= e!4742634 (and tp_is_empty!54731 tp_is_empty!54733 tp!2413408))))

(declare-fun b!8049076 () Bool)

(declare-fun e!4742632 () Bool)

(declare-fun lt!2723501 () Bool)

(assert (=> b!8049076 (= e!4742632 (not lt!2723501))))

(declare-fun b!8049077 () Bool)

(declare-fun e!4742635 () Bool)

(declare-datatypes ((K!22708 0))(
  ( (K!22709 (val!32839 Int)) )
))
(declare-datatypes ((V!22962 0))(
  ( (V!22963 (val!32840 Int)) )
))
(declare-datatypes ((tuple2!70804 0))(
  ( (tuple2!70805 (_1!38705 K!22708) (_2!38705 V!22962)) )
))
(declare-datatypes ((List!75611 0))(
  ( (Nil!75485) (Cons!75485 (h!81933 tuple2!70804) (t!391383 List!75611)) )
))
(declare-fun l!14636 () List!75611)

(declare-fun key!6222 () K!22708)

(declare-fun containsKey!4792 (List!75611 K!22708) Bool)

(assert (=> b!8049077 (= e!4742635 (not (containsKey!4792 l!14636 key!6222)))))

(declare-fun b!8049078 () Bool)

(declare-fun e!4742631 () Bool)

(declare-fun e!4742633 () Bool)

(assert (=> b!8049078 (= e!4742631 e!4742633)))

(declare-fun res!3181880 () Bool)

(assert (=> b!8049078 (=> (not res!3181880) (not e!4742633))))

(declare-fun e!4742637 () Bool)

(assert (=> b!8049078 (= res!3181880 e!4742637)))

(declare-fun res!3181879 () Bool)

(assert (=> b!8049078 (=> res!3181879 e!4742637)))

(assert (=> b!8049078 (= res!3181879 e!4742635)))

(declare-fun res!3181878 () Bool)

(assert (=> b!8049078 (=> (not res!3181878) (not e!4742635))))

(assert (=> b!8049078 (= res!3181878 lt!2723501)))

(declare-datatypes ((ListMap!7207 0))(
  ( (ListMap!7208 (toList!11878 List!75611)) )
))
(declare-fun acc!1298 () ListMap!7207)

(declare-fun contains!21106 (ListMap!7207 K!22708) Bool)

(assert (=> b!8049078 (= lt!2723501 (contains!21106 acc!1298 key!6222))))

(declare-fun b!8049079 () Bool)

(declare-fun res!3181882 () Bool)

(assert (=> b!8049079 (=> (not res!3181882) (not e!4742635))))

(declare-fun value!3131 () V!22962)

(declare-fun apply!14391 (ListMap!7207 K!22708) V!22962)

(assert (=> b!8049079 (= res!3181882 (= (apply!14391 acc!1298 key!6222) value!3131))))

(declare-fun res!3181881 () Bool)

(assert (=> start!758034 (=> (not res!3181881) (not e!4742631))))

(declare-fun noDuplicateKeys!2664 (List!75611) Bool)

(assert (=> start!758034 (= res!3181881 (noDuplicateKeys!2664 l!14636))))

(assert (=> start!758034 e!4742631))

(assert (=> start!758034 e!4742634))

(declare-fun e!4742638 () Bool)

(declare-fun inv!97197 (ListMap!7207) Bool)

(assert (=> start!758034 (and (inv!97197 acc!1298) e!4742638)))

(assert (=> start!758034 tp_is_empty!54731))

(assert (=> start!758034 tp_is_empty!54733))

(declare-fun b!8049080 () Bool)

(assert (=> b!8049080 (= e!4742637 e!4742632)))

(declare-fun res!3181877 () Bool)

(assert (=> b!8049080 (=> (not res!3181877) (not e!4742632))))

(assert (=> b!8049080 (= res!3181877 (containsKey!4792 l!14636 key!6222))))

(declare-fun b!8049081 () Bool)

(declare-fun e!4742636 () Bool)

(assert (=> b!8049081 (= e!4742633 e!4742636)))

(declare-fun res!3181886 () Bool)

(assert (=> b!8049081 (=> (not res!3181886) (not e!4742636))))

(assert (=> b!8049081 (= res!3181886 (= (_1!38705 (h!81933 l!14636)) key!6222))))

(declare-fun lt!2723500 () ListMap!7207)

(declare-fun addToMapMapFromBucket!1945 (List!75611 ListMap!7207) ListMap!7207)

(declare-fun +!2630 (ListMap!7207 tuple2!70804) ListMap!7207)

(assert (=> b!8049081 (= lt!2723500 (addToMapMapFromBucket!1945 (t!391383 l!14636) (+!2630 acc!1298 (h!81933 l!14636))))))

(declare-fun b!8049082 () Bool)

(declare-fun res!3181883 () Bool)

(assert (=> b!8049082 (=> (not res!3181883) (not e!4742633))))

(get-info :version)

(assert (=> b!8049082 (= res!3181883 (not ((_ is Nil!75485) l!14636)))))

(declare-fun b!8049083 () Bool)

(declare-fun res!3181885 () Bool)

(assert (=> b!8049083 (=> (not res!3181885) (not e!4742632))))

(declare-fun contains!21107 (List!75611 tuple2!70804) Bool)

(assert (=> b!8049083 (= res!3181885 (contains!21107 l!14636 (tuple2!70805 key!6222 value!3131)))))

(declare-fun b!8049084 () Bool)

(declare-fun tp!2413409 () Bool)

(assert (=> b!8049084 (= e!4742638 tp!2413409)))

(declare-fun b!8049085 () Bool)

(assert (=> b!8049085 (= e!4742636 false)))

(declare-fun lt!2723502 () Bool)

(assert (=> b!8049085 (= lt!2723502 (containsKey!4792 (t!391383 l!14636) key!6222))))

(declare-fun b!8049086 () Bool)

(declare-fun res!3181884 () Bool)

(assert (=> b!8049086 (=> (not res!3181884) (not e!4742631))))

(assert (=> b!8049086 (= res!3181884 (contains!21106 (addToMapMapFromBucket!1945 l!14636 acc!1298) key!6222))))

(assert (= (and start!758034 res!3181881) b!8049086))

(assert (= (and b!8049086 res!3181884) b!8049078))

(assert (= (and b!8049078 res!3181878) b!8049079))

(assert (= (and b!8049079 res!3181882) b!8049077))

(assert (= (and b!8049078 (not res!3181879)) b!8049080))

(assert (= (and b!8049080 res!3181877) b!8049083))

(assert (= (and b!8049083 res!3181885) b!8049076))

(assert (= (and b!8049078 res!3181880) b!8049082))

(assert (= (and b!8049082 res!3181883) b!8049081))

(assert (= (and b!8049081 res!3181886) b!8049085))

(assert (= (and start!758034 ((_ is Cons!75485) l!14636)) b!8049075))

(assert (= start!758034 b!8049084))

(declare-fun m!8400230 () Bool)

(assert (=> b!8049080 m!8400230))

(declare-fun m!8400232 () Bool)

(assert (=> b!8049085 m!8400232))

(declare-fun m!8400234 () Bool)

(assert (=> start!758034 m!8400234))

(declare-fun m!8400236 () Bool)

(assert (=> start!758034 m!8400236))

(assert (=> b!8049077 m!8400230))

(declare-fun m!8400238 () Bool)

(assert (=> b!8049086 m!8400238))

(assert (=> b!8049086 m!8400238))

(declare-fun m!8400240 () Bool)

(assert (=> b!8049086 m!8400240))

(declare-fun m!8400242 () Bool)

(assert (=> b!8049081 m!8400242))

(assert (=> b!8049081 m!8400242))

(declare-fun m!8400244 () Bool)

(assert (=> b!8049081 m!8400244))

(declare-fun m!8400246 () Bool)

(assert (=> b!8049083 m!8400246))

(declare-fun m!8400248 () Bool)

(assert (=> b!8049079 m!8400248))

(declare-fun m!8400250 () Bool)

(assert (=> b!8049078 m!8400250))

(check-sat (not b!8049075) (not b!8049079) (not start!758034) (not b!8049077) (not b!8049078) (not b!8049080) tp_is_empty!54731 (not b!8049081) (not b!8049086) (not b!8049085) (not b!8049084) tp_is_empty!54733 (not b!8049083))
(check-sat)

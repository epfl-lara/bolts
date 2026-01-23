; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436056 () Bool)

(assert start!436056)

(declare-datatypes ((V!11486 0))(
  ( (V!11487 (val!17263 Int)) )
))
(declare-fun newValue!93 () V!11486)

(declare-datatypes ((K!11240 0))(
  ( (K!11241 (val!17264 Int)) )
))
(declare-datatypes ((tuple2!49846 0))(
  ( (tuple2!49847 (_1!28217 K!11240) (_2!28217 V!11486)) )
))
(declare-datatypes ((List!49997 0))(
  ( (Nil!49873) (Cons!49873 (h!55618 tuple2!49846) (t!356947 List!49997)) )
))
(declare-fun newBucket!194 () List!49997)

(declare-fun e!2772842 () Bool)

(declare-fun lt!1645063 () Bool)

(declare-fun b!4452793 () Bool)

(declare-fun key!3717 () K!11240)

(assert (=> b!4452793 (= e!2772842 (and (not lt!1645063) (= newBucket!194 (Cons!49873 (tuple2!49847 key!3717 newValue!93) Nil!49873))))))

(declare-fun b!4452794 () Bool)

(declare-fun e!2772846 () Bool)

(declare-datatypes ((tuple2!49848 0))(
  ( (tuple2!49849 (_1!28218 (_ BitVec 64)) (_2!28218 List!49997)) )
))
(declare-datatypes ((List!49998 0))(
  ( (Nil!49874) (Cons!49874 (h!55619 tuple2!49848) (t!356948 List!49998)) )
))
(declare-datatypes ((ListLongMap!2371 0))(
  ( (ListLongMap!2372 (toList!3721 List!49998)) )
))
(declare-fun lm!1616 () ListLongMap!2371)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4452794 (= e!2772846 (or (and ((_ is Cons!49874) (toList!3721 lm!1616)) (= (_1!28218 (h!55619 (toList!3721 lm!1616))) hash!366)) (and ((_ is Cons!49874) (toList!3721 lm!1616)) (not (= (_1!28218 (h!55619 (toList!3721 lm!1616))) hash!366))) ((_ is Nil!49874) (toList!3721 lm!1616))))))

(declare-fun b!4452795 () Bool)

(declare-fun res!1845314 () Bool)

(declare-fun e!2772843 () Bool)

(assert (=> b!4452795 (=> (not res!1845314) (not e!2772843))))

(declare-datatypes ((ListMap!2965 0))(
  ( (ListMap!2966 (toList!3722 List!49997)) )
))
(declare-fun contains!12471 (ListMap!2965 K!11240) Bool)

(declare-fun extractMap!928 (List!49998) ListMap!2965)

(assert (=> b!4452795 (= res!1845314 (not (contains!12471 (extractMap!928 (toList!3721 lm!1616)) key!3717)))))

(declare-fun b!4452796 () Bool)

(declare-fun res!1845312 () Bool)

(assert (=> b!4452796 (=> (not res!1845312) (not e!2772843))))

(declare-datatypes ((Hashable!5261 0))(
  ( (HashableExt!5260 (__x!30964 Int)) )
))
(declare-fun hashF!1220 () Hashable!5261)

(declare-fun hash!2358 (Hashable!5261 K!11240) (_ BitVec 64))

(assert (=> b!4452796 (= res!1845312 (= (hash!2358 hashF!1220 key!3717) hash!366))))

(declare-fun e!2772848 () Bool)

(declare-fun tp_is_empty!26713 () Bool)

(declare-fun tp!1334586 () Bool)

(declare-fun tp_is_empty!26715 () Bool)

(declare-fun b!4452797 () Bool)

(assert (=> b!4452797 (= e!2772848 (and tp_is_empty!26715 tp_is_empty!26713 tp!1334586))))

(declare-fun res!1845317 () Bool)

(assert (=> start!436056 (=> (not res!1845317) (not e!2772843))))

(declare-fun lambda!159318 () Int)

(declare-fun forall!9762 (List!49998 Int) Bool)

(assert (=> start!436056 (= res!1845317 (forall!9762 (toList!3721 lm!1616) lambda!159318))))

(assert (=> start!436056 e!2772843))

(assert (=> start!436056 tp_is_empty!26713))

(assert (=> start!436056 tp_is_empty!26715))

(assert (=> start!436056 e!2772848))

(declare-fun e!2772847 () Bool)

(declare-fun inv!65426 (ListLongMap!2371) Bool)

(assert (=> start!436056 (and (inv!65426 lm!1616) e!2772847)))

(assert (=> start!436056 true))

(declare-fun b!4452798 () Bool)

(declare-fun e!2772845 () Bool)

(declare-fun apply!11719 (ListLongMap!2371 (_ BitVec 64)) List!49997)

(assert (=> b!4452798 (= e!2772845 (= newBucket!194 (Cons!49873 (tuple2!49847 key!3717 newValue!93) (apply!11719 lm!1616 hash!366))))))

(declare-fun b!4452799 () Bool)

(declare-fun e!2772844 () Bool)

(assert (=> b!4452799 (= e!2772843 e!2772844)))

(declare-fun res!1845313 () Bool)

(assert (=> b!4452799 (=> (not res!1845313) (not e!2772844))))

(assert (=> b!4452799 (= res!1845313 e!2772842)))

(declare-fun res!1845316 () Bool)

(assert (=> b!4452799 (=> res!1845316 e!2772842)))

(assert (=> b!4452799 (= res!1845316 e!2772845)))

(declare-fun res!1845318 () Bool)

(assert (=> b!4452799 (=> (not res!1845318) (not e!2772845))))

(assert (=> b!4452799 (= res!1845318 lt!1645063)))

(declare-fun contains!12472 (ListLongMap!2371 (_ BitVec 64)) Bool)

(assert (=> b!4452799 (= lt!1645063 (contains!12472 lm!1616 hash!366))))

(declare-fun b!4452800 () Bool)

(declare-fun res!1845320 () Bool)

(assert (=> b!4452800 (=> (not res!1845320) (not e!2772843))))

(declare-fun allKeysSameHashInMap!973 (ListLongMap!2371 Hashable!5261) Bool)

(assert (=> b!4452800 (= res!1845320 (allKeysSameHashInMap!973 lm!1616 hashF!1220))))

(declare-fun b!4452801 () Bool)

(declare-fun tp!1334585 () Bool)

(assert (=> b!4452801 (= e!2772847 tp!1334585)))

(declare-fun b!4452802 () Bool)

(declare-fun res!1845315 () Bool)

(assert (=> b!4452802 (=> (not res!1845315) (not e!2772844))))

(declare-fun noDuplicateKeys!867 (List!49997) Bool)

(assert (=> b!4452802 (= res!1845315 (noDuplicateKeys!867 newBucket!194))))

(declare-fun b!4452803 () Bool)

(assert (=> b!4452803 (= e!2772844 (not e!2772846))))

(declare-fun res!1845319 () Bool)

(assert (=> b!4452803 (=> res!1845319 e!2772846)))

(declare-fun lt!1645065 () ListLongMap!2371)

(assert (=> b!4452803 (= res!1845319 (not (forall!9762 (toList!3721 lt!1645065) lambda!159318)))))

(assert (=> b!4452803 (forall!9762 (toList!3721 lt!1645065) lambda!159318)))

(declare-fun +!1270 (ListLongMap!2371 tuple2!49848) ListLongMap!2371)

(assert (=> b!4452803 (= lt!1645065 (+!1270 lm!1616 (tuple2!49849 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!85677 0))(
  ( (Unit!85678) )
))
(declare-fun lt!1645064 () Unit!85677)

(declare-fun addValidProp!505 (ListLongMap!2371 Int (_ BitVec 64) List!49997) Unit!85677)

(assert (=> b!4452803 (= lt!1645064 (addValidProp!505 lm!1616 lambda!159318 hash!366 newBucket!194))))

(declare-fun b!4452804 () Bool)

(declare-fun res!1845311 () Bool)

(assert (=> b!4452804 (=> (not res!1845311) (not e!2772843))))

(declare-fun allKeysSameHash!827 (List!49997 (_ BitVec 64) Hashable!5261) Bool)

(assert (=> b!4452804 (= res!1845311 (allKeysSameHash!827 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4452805 () Bool)

(declare-fun res!1845321 () Bool)

(assert (=> b!4452805 (=> (not res!1845321) (not e!2772844))))

(assert (=> b!4452805 (= res!1845321 (forall!9762 (toList!3721 lm!1616) lambda!159318))))

(assert (= (and start!436056 res!1845317) b!4452800))

(assert (= (and b!4452800 res!1845320) b!4452796))

(assert (= (and b!4452796 res!1845312) b!4452804))

(assert (= (and b!4452804 res!1845311) b!4452795))

(assert (= (and b!4452795 res!1845314) b!4452799))

(assert (= (and b!4452799 res!1845318) b!4452798))

(assert (= (and b!4452799 (not res!1845316)) b!4452793))

(assert (= (and b!4452799 res!1845313) b!4452802))

(assert (= (and b!4452802 res!1845315) b!4452805))

(assert (= (and b!4452805 res!1845321) b!4452803))

(assert (= (and b!4452803 (not res!1845319)) b!4452794))

(assert (= (and start!436056 ((_ is Cons!49873) newBucket!194)) b!4452797))

(assert (= start!436056 b!4452801))

(declare-fun m!5153631 () Bool)

(assert (=> start!436056 m!5153631))

(declare-fun m!5153633 () Bool)

(assert (=> start!436056 m!5153633))

(declare-fun m!5153635 () Bool)

(assert (=> b!4452796 m!5153635))

(declare-fun m!5153637 () Bool)

(assert (=> b!4452803 m!5153637))

(assert (=> b!4452803 m!5153637))

(declare-fun m!5153639 () Bool)

(assert (=> b!4452803 m!5153639))

(declare-fun m!5153641 () Bool)

(assert (=> b!4452803 m!5153641))

(assert (=> b!4452805 m!5153631))

(declare-fun m!5153643 () Bool)

(assert (=> b!4452804 m!5153643))

(declare-fun m!5153645 () Bool)

(assert (=> b!4452795 m!5153645))

(assert (=> b!4452795 m!5153645))

(declare-fun m!5153647 () Bool)

(assert (=> b!4452795 m!5153647))

(declare-fun m!5153649 () Bool)

(assert (=> b!4452802 m!5153649))

(declare-fun m!5153651 () Bool)

(assert (=> b!4452800 m!5153651))

(declare-fun m!5153653 () Bool)

(assert (=> b!4452798 m!5153653))

(declare-fun m!5153655 () Bool)

(assert (=> b!4452799 m!5153655))

(check-sat (not b!4452802) (not b!4452799) tp_is_empty!26713 (not b!4452795) (not b!4452797) (not b!4452796) tp_is_empty!26715 (not b!4452805) (not b!4452803) (not b!4452800) (not b!4452804) (not start!436056) (not b!4452798) (not b!4452801))
(check-sat)

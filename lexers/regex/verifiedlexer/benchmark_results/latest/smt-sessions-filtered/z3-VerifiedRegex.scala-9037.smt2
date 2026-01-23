; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485816 () Bool)

(assert start!485816)

(declare-fun b!4753903 () Bool)

(declare-fun e!2965593 () Bool)

(assert (=> b!4753903 (= e!2965593 false)))

(declare-datatypes ((K!14590 0))(
  ( (K!14591 (val!19943 Int)) )
))
(declare-datatypes ((V!14836 0))(
  ( (V!14837 (val!19944 Int)) )
))
(declare-datatypes ((tuple2!54912 0))(
  ( (tuple2!54913 (_1!30750 K!14590) (_2!30750 V!14836)) )
))
(declare-datatypes ((List!53240 0))(
  ( (Nil!53116) (Cons!53116 (h!59513 tuple2!54912) (t!360584 List!53240)) )
))
(declare-datatypes ((ListMap!5597 0))(
  ( (ListMap!5598 (toList!6144 List!53240)) )
))
(declare-fun lt!1919990 () ListMap!5597)

(declare-fun lt!1919989 () ListMap!5597)

(declare-fun lt!1919987 () tuple2!54912)

(declare-fun +!2410 (ListMap!5597 tuple2!54912) ListMap!5597)

(assert (=> b!4753903 (= lt!1919990 (+!2410 lt!1919989 lt!1919987))))

(declare-fun lt!1919991 () ListMap!5597)

(declare-fun l!13029 () List!53240)

(declare-fun lt!1919988 () ListMap!5597)

(declare-fun addToMapMapFromBucket!1596 (List!53240 ListMap!5597) ListMap!5597)

(assert (=> b!4753903 (= lt!1919991 (addToMapMapFromBucket!1596 l!13029 lt!1919988))))

(declare-fun lhm!63 () ListMap!5597)

(assert (=> b!4753903 (= lt!1919989 (addToMapMapFromBucket!1596 l!13029 lhm!63))))

(assert (=> b!4753903 (= lt!1919988 (+!2410 lhm!63 lt!1919987))))

(declare-fun key!4572 () K!14590)

(declare-fun value!2966 () V!14836)

(assert (=> b!4753903 (= lt!1919987 (tuple2!54913 key!4572 value!2966))))

(declare-fun res!2016405 () Bool)

(assert (=> start!485816 (=> (not res!2016405) (not e!2965593))))

(declare-fun containsKey!3582 (List!53240 K!14590) Bool)

(assert (=> start!485816 (= res!2016405 (not (containsKey!3582 l!13029 key!4572)))))

(assert (=> start!485816 e!2965593))

(declare-fun e!2965592 () Bool)

(assert (=> start!485816 e!2965592))

(declare-fun tp_is_empty!31997 () Bool)

(assert (=> start!485816 tp_is_empty!31997))

(declare-fun tp_is_empty!31999 () Bool)

(assert (=> start!485816 tp_is_empty!31999))

(declare-fun e!2965594 () Bool)

(declare-fun inv!68460 (ListMap!5597) Bool)

(assert (=> start!485816 (and (inv!68460 lhm!63) e!2965594)))

(declare-fun b!4753904 () Bool)

(declare-fun tp!1350413 () Bool)

(assert (=> b!4753904 (= e!2965594 tp!1350413)))

(declare-fun b!4753905 () Bool)

(declare-fun res!2016403 () Bool)

(assert (=> b!4753905 (=> (not res!2016403) (not e!2965593))))

(get-info :version)

(assert (=> b!4753905 (= res!2016403 (not ((_ is Cons!53116) l!13029)))))

(declare-fun tp!1350412 () Bool)

(declare-fun b!4753906 () Bool)

(assert (=> b!4753906 (= e!2965592 (and tp_is_empty!31997 tp_is_empty!31999 tp!1350412))))

(declare-fun b!4753907 () Bool)

(declare-fun res!2016404 () Bool)

(assert (=> b!4753907 (=> (not res!2016404) (not e!2965593))))

(declare-fun noDuplicateKeys!2176 (List!53240) Bool)

(assert (=> b!4753907 (= res!2016404 (noDuplicateKeys!2176 l!13029))))

(assert (= (and start!485816 res!2016405) b!4753907))

(assert (= (and b!4753907 res!2016404) b!4753905))

(assert (= (and b!4753905 res!2016403) b!4753903))

(assert (= (and start!485816 ((_ is Cons!53116) l!13029)) b!4753906))

(assert (= start!485816 b!4753904))

(declare-fun m!5721713 () Bool)

(assert (=> b!4753903 m!5721713))

(declare-fun m!5721715 () Bool)

(assert (=> b!4753903 m!5721715))

(declare-fun m!5721717 () Bool)

(assert (=> b!4753903 m!5721717))

(declare-fun m!5721719 () Bool)

(assert (=> b!4753903 m!5721719))

(declare-fun m!5721721 () Bool)

(assert (=> start!485816 m!5721721))

(declare-fun m!5721723 () Bool)

(assert (=> start!485816 m!5721723))

(declare-fun m!5721725 () Bool)

(assert (=> b!4753907 m!5721725))

(check-sat (not b!4753904) (not b!4753907) (not start!485816) (not b!4753903) tp_is_empty!31999 (not b!4753906) tp_is_empty!31997)
(check-sat)

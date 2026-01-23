; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485132 () Bool)

(assert start!485132)

(declare-fun b!4748804 () Bool)

(declare-fun res!2013303 () Bool)

(declare-fun e!2962119 () Bool)

(assert (=> b!4748804 (=> (not res!2013303) (not e!2962119))))

(declare-datatypes ((K!14440 0))(
  ( (K!14441 (val!19823 Int)) )
))
(declare-datatypes ((V!14686 0))(
  ( (V!14687 (val!19824 Int)) )
))
(declare-datatypes ((tuple2!54792 0))(
  ( (tuple2!54793 (_1!30690 K!14440) (_2!30690 V!14686)) )
))
(declare-datatypes ((List!53174 0))(
  ( (Nil!53050) (Cons!53050 (h!59447 tuple2!54792) (t!360496 List!53174)) )
))
(declare-datatypes ((ListMap!5481 0))(
  ( (ListMap!5482 (toList!6086 List!53174)) )
))
(declare-fun lt!1911785 () ListMap!5481)

(declare-fun l!14304 () List!53174)

(declare-fun acc!1214 () ListMap!5481)

(declare-fun eq!1193 (ListMap!5481 ListMap!5481) Bool)

(declare-fun addToMapMapFromBucket!1542 (List!53174 ListMap!5481) ListMap!5481)

(assert (=> b!4748804 (= res!2013303 (eq!1193 lt!1911785 (addToMapMapFromBucket!1542 l!14304 acc!1214)))))

(declare-fun res!2013302 () Bool)

(declare-fun e!2962121 () Bool)

(assert (=> start!485132 (=> (not res!2013302) (not e!2962121))))

(declare-fun noDuplicateKeys!2116 (List!53174) Bool)

(assert (=> start!485132 (= res!2013302 (noDuplicateKeys!2116 l!14304))))

(assert (=> start!485132 e!2962121))

(declare-fun e!2962123 () Bool)

(assert (=> start!485132 e!2962123))

(declare-fun tp_is_empty!31757 () Bool)

(declare-fun tp_is_empty!31759 () Bool)

(assert (=> start!485132 (and tp_is_empty!31757 tp_is_empty!31759)))

(declare-fun e!2962122 () Bool)

(declare-fun inv!68312 (ListMap!5481) Bool)

(assert (=> start!485132 (and (inv!68312 acc!1214) e!2962122)))

(declare-fun b!4748805 () Bool)

(declare-fun tp!1349913 () Bool)

(assert (=> b!4748805 (= e!2962122 tp!1349913)))

(declare-fun lt!1911787 () ListMap!5481)

(declare-fun lt!1911789 () ListMap!5481)

(declare-fun b!4748806 () Bool)

(declare-fun t!14174 () tuple2!54792)

(declare-fun +!2352 (ListMap!5481 tuple2!54792) ListMap!5481)

(assert (=> b!4748806 (= e!2962119 (eq!1193 lt!1911787 (addToMapMapFromBucket!1542 (t!360496 l!14304) (+!2352 lt!1911789 t!14174))))))

(declare-fun e!2962124 () Bool)

(declare-fun lt!1911788 () ListMap!5481)

(declare-fun b!4748807 () Bool)

(declare-fun lt!1911783 () ListMap!5481)

(assert (=> b!4748807 (= e!2962124 (eq!1193 lt!1911788 (addToMapMapFromBucket!1542 (t!360496 l!14304) (+!2352 lt!1911783 (h!59447 l!14304)))))))

(declare-fun b!4748808 () Bool)

(declare-fun res!2013299 () Bool)

(declare-fun e!2962120 () Bool)

(assert (=> b!4748808 (=> (not res!2013299) (not e!2962120))))

(get-info :version)

(assert (=> b!4748808 (= res!2013299 (not ((_ is Nil!53050) l!14304)))))

(declare-fun b!4748809 () Bool)

(assert (=> b!4748809 (= e!2962120 (not true))))

(assert (=> b!4748809 (eq!1193 (+!2352 lt!1911789 t!14174) (+!2352 (+!2352 acc!1214 t!14174) (h!59447 l!14304)))))

(declare-datatypes ((Unit!135037 0))(
  ( (Unit!135038) )
))
(declare-fun lt!1911782 () Unit!135037)

(declare-fun addCommutativeForDiffKeys!8 (ListMap!5481 K!14440 V!14686 K!14440 V!14686) Unit!135037)

(assert (=> b!4748809 (= lt!1911782 (addCommutativeForDiffKeys!8 acc!1214 (_1!30690 (h!59447 l!14304)) (_2!30690 (h!59447 l!14304)) (_1!30690 t!14174) (_2!30690 t!14174)))))

(assert (=> b!4748809 e!2962124))

(declare-fun res!2013298 () Bool)

(assert (=> b!4748809 (=> (not res!2013298) (not e!2962124))))

(assert (=> b!4748809 (= res!2013298 (eq!1193 lt!1911788 (addToMapMapFromBucket!1542 l!14304 lt!1911783)))))

(assert (=> b!4748809 (= lt!1911783 (+!2352 acc!1214 t!14174))))

(declare-fun lt!1911786 () List!53174)

(assert (=> b!4748809 (= lt!1911788 (addToMapMapFromBucket!1542 lt!1911786 acc!1214))))

(assert (=> b!4748809 e!2962119))

(declare-fun res!2013300 () Bool)

(assert (=> b!4748809 (=> (not res!2013300) (not e!2962119))))

(assert (=> b!4748809 (= res!2013300 (eq!1193 lt!1911787 (+!2352 lt!1911785 t!14174)))))

(assert (=> b!4748809 (= lt!1911787 (addToMapMapFromBucket!1542 (Cons!53050 t!14174 (t!360496 l!14304)) lt!1911789))))

(declare-fun lt!1911784 () Unit!135037)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!440 (tuple2!54792 List!53174 ListMap!5481) Unit!135037)

(assert (=> b!4748809 (= lt!1911784 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!440 t!14174 (t!360496 l!14304) lt!1911789))))

(assert (=> b!4748809 (= lt!1911785 (addToMapMapFromBucket!1542 (t!360496 l!14304) lt!1911789))))

(assert (=> b!4748809 (= lt!1911789 (+!2352 acc!1214 (h!59447 l!14304)))))

(declare-fun tp!1349912 () Bool)

(declare-fun b!4748810 () Bool)

(assert (=> b!4748810 (= e!2962123 (and tp_is_empty!31757 tp_is_empty!31759 tp!1349912))))

(declare-fun b!4748811 () Bool)

(assert (=> b!4748811 (= e!2962121 e!2962120)))

(declare-fun res!2013301 () Bool)

(assert (=> b!4748811 (=> (not res!2013301) (not e!2962120))))

(assert (=> b!4748811 (= res!2013301 (noDuplicateKeys!2116 lt!1911786))))

(assert (=> b!4748811 (= lt!1911786 (Cons!53050 t!14174 l!14304))))

(assert (= (and start!485132 res!2013302) b!4748811))

(assert (= (and b!4748811 res!2013301) b!4748808))

(assert (= (and b!4748808 res!2013299) b!4748809))

(assert (= (and b!4748809 res!2013300) b!4748804))

(assert (= (and b!4748804 res!2013303) b!4748806))

(assert (= (and b!4748809 res!2013298) b!4748807))

(assert (= (and start!485132 ((_ is Cons!53050) l!14304)) b!4748810))

(assert (= start!485132 b!4748805))

(declare-fun m!5707989 () Bool)

(assert (=> b!4748804 m!5707989))

(assert (=> b!4748804 m!5707989))

(declare-fun m!5707991 () Bool)

(assert (=> b!4748804 m!5707991))

(declare-fun m!5707993 () Bool)

(assert (=> b!4748809 m!5707993))

(declare-fun m!5707995 () Bool)

(assert (=> b!4748809 m!5707995))

(declare-fun m!5707997 () Bool)

(assert (=> b!4748809 m!5707997))

(declare-fun m!5707999 () Bool)

(assert (=> b!4748809 m!5707999))

(declare-fun m!5708001 () Bool)

(assert (=> b!4748809 m!5708001))

(declare-fun m!5708003 () Bool)

(assert (=> b!4748809 m!5708003))

(declare-fun m!5708005 () Bool)

(assert (=> b!4748809 m!5708005))

(assert (=> b!4748809 m!5707993))

(declare-fun m!5708007 () Bool)

(assert (=> b!4748809 m!5708007))

(declare-fun m!5708009 () Bool)

(assert (=> b!4748809 m!5708009))

(declare-fun m!5708011 () Bool)

(assert (=> b!4748809 m!5708011))

(assert (=> b!4748809 m!5707999))

(declare-fun m!5708013 () Bool)

(assert (=> b!4748809 m!5708013))

(assert (=> b!4748809 m!5707995))

(declare-fun m!5708015 () Bool)

(assert (=> b!4748809 m!5708015))

(declare-fun m!5708017 () Bool)

(assert (=> b!4748809 m!5708017))

(assert (=> b!4748809 m!5708017))

(assert (=> b!4748809 m!5708007))

(declare-fun m!5708019 () Bool)

(assert (=> b!4748809 m!5708019))

(declare-fun m!5708021 () Bool)

(assert (=> b!4748807 m!5708021))

(assert (=> b!4748807 m!5708021))

(declare-fun m!5708023 () Bool)

(assert (=> b!4748807 m!5708023))

(assert (=> b!4748807 m!5708023))

(declare-fun m!5708025 () Bool)

(assert (=> b!4748807 m!5708025))

(declare-fun m!5708027 () Bool)

(assert (=> start!485132 m!5708027))

(declare-fun m!5708029 () Bool)

(assert (=> start!485132 m!5708029))

(assert (=> b!4748806 m!5708017))

(assert (=> b!4748806 m!5708017))

(declare-fun m!5708031 () Bool)

(assert (=> b!4748806 m!5708031))

(assert (=> b!4748806 m!5708031))

(declare-fun m!5708033 () Bool)

(assert (=> b!4748806 m!5708033))

(declare-fun m!5708035 () Bool)

(assert (=> b!4748811 m!5708035))

(check-sat (not start!485132) tp_is_empty!31759 (not b!4748810) (not b!4748811) (not b!4748807) (not b!4748804) (not b!4748805) (not b!4748809) tp_is_empty!31757 (not b!4748806))
(check-sat)

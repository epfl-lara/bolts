; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461420 () Bool)

(assert start!461420)

(declare-fun b!4613199 () Bool)

(declare-fun e!2877562 () Bool)

(declare-fun tp_is_empty!28981 () Bool)

(declare-fun tp!1341419 () Bool)

(declare-fun tp_is_empty!28983 () Bool)

(assert (=> b!4613199 (= e!2877562 (and tp_is_empty!28981 tp_is_empty!28983 tp!1341419))))

(declare-fun b!4613200 () Bool)

(declare-fun e!2877559 () Bool)

(declare-datatypes ((K!12705 0))(
  ( (K!12706 (val!18435 Int)) )
))
(declare-datatypes ((V!12951 0))(
  ( (V!12952 (val!18436 Int)) )
))
(declare-datatypes ((tuple2!52134 0))(
  ( (tuple2!52135 (_1!29361 K!12705) (_2!29361 V!12951)) )
))
(declare-datatypes ((List!51445 0))(
  ( (Nil!51321) (Cons!51321 (h!57325 tuple2!52134) (t!358441 List!51445)) )
))
(declare-datatypes ((ListMap!4113 0))(
  ( (ListMap!4114 (toList!4810 List!51445)) )
))
(declare-fun lt!1768432 () ListMap!4113)

(assert (=> b!4613200 (= e!2877559 (= lt!1768432 (ListMap!4114 Nil!51321)))))

(declare-fun b!4613201 () Bool)

(declare-fun res!1932146 () Bool)

(declare-fun e!2877558 () Bool)

(assert (=> b!4613201 (=> res!1932146 e!2877558)))

(declare-fun lt!1768431 () List!51445)

(declare-fun key!4968 () K!12705)

(declare-fun containsKey!2294 (List!51445 K!12705) Bool)

(assert (=> b!4613201 (= res!1932146 (containsKey!2294 lt!1768431 key!4968))))

(declare-fun b!4613202 () Bool)

(declare-fun e!2877561 () Bool)

(declare-fun e!2877560 () Bool)

(assert (=> b!4613202 (= e!2877561 e!2877560)))

(declare-fun res!1932150 () Bool)

(assert (=> b!4613202 (=> res!1932150 e!2877560)))

(declare-fun lt!1768430 () ListMap!4113)

(declare-fun newBucket!224 () List!51445)

(declare-fun addToMapMapFromBucket!883 (List!51445 ListMap!4113) ListMap!4113)

(assert (=> b!4613202 (= res!1932150 (not (= lt!1768430 (addToMapMapFromBucket!883 newBucket!224 (ListMap!4114 Nil!51321)))))))

(assert (=> b!4613202 (= lt!1768430 (addToMapMapFromBucket!883 lt!1768431 (ListMap!4114 Nil!51321)))))

(declare-fun b!4613203 () Bool)

(declare-fun res!1932142 () Bool)

(declare-fun e!2877557 () Bool)

(assert (=> b!4613203 (=> (not res!1932142) (not e!2877557))))

(declare-datatypes ((Hashable!5819 0))(
  ( (HashableExt!5818 (__x!31522 Int)) )
))
(declare-fun hashF!1389 () Hashable!5819)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1276 (List!51445 (_ BitVec 64) Hashable!5819) Bool)

(assert (=> b!4613203 (= res!1932142 (allKeysSameHash!1276 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1932147 () Bool)

(declare-fun e!2877555 () Bool)

(assert (=> start!461420 (=> (not res!1932147) (not e!2877555))))

(declare-fun oldBucket!40 () List!51445)

(declare-fun noDuplicateKeys!1422 (List!51445) Bool)

(assert (=> start!461420 (= res!1932147 (noDuplicateKeys!1422 oldBucket!40))))

(assert (=> start!461420 e!2877555))

(assert (=> start!461420 true))

(assert (=> start!461420 e!2877562))

(assert (=> start!461420 tp_is_empty!28981))

(declare-fun e!2877556 () Bool)

(assert (=> start!461420 e!2877556))

(declare-fun b!4613204 () Bool)

(declare-fun res!1932152 () Bool)

(assert (=> b!4613204 (=> (not res!1932152) (not e!2877555))))

(assert (=> b!4613204 (= res!1932152 (allKeysSameHash!1276 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4613205 () Bool)

(declare-fun e!2877553 () Bool)

(declare-fun e!2877554 () Bool)

(assert (=> b!4613205 (= e!2877553 e!2877554)))

(declare-fun res!1932148 () Bool)

(assert (=> b!4613205 (=> res!1932148 e!2877554)))

(assert (=> b!4613205 (= res!1932148 (not (= lt!1768431 newBucket!224)))))

(declare-fun tail!8069 (List!51445) List!51445)

(assert (=> b!4613205 (= lt!1768431 (tail!8069 oldBucket!40))))

(declare-fun lt!1768429 () ListMap!4113)

(declare-fun b!4613206 () Bool)

(assert (=> b!4613206 (= e!2877558 (or (not (= lt!1768430 lt!1768429)) (not (= oldBucket!40 Nil!51321))))))

(declare-fun b!4613207 () Bool)

(assert (=> b!4613207 (= e!2877560 e!2877558)))

(declare-fun res!1932144 () Bool)

(assert (=> b!4613207 (=> res!1932144 e!2877558)))

(declare-fun eq!765 (ListMap!4113 ListMap!4113) Bool)

(declare-fun +!1807 (ListMap!4113 tuple2!52134) ListMap!4113)

(assert (=> b!4613207 (= res!1932144 (not (eq!765 (+!1807 lt!1768430 (h!57325 oldBucket!40)) (addToMapMapFromBucket!883 oldBucket!40 (ListMap!4114 Nil!51321)))))))

(declare-fun lt!1768435 () tuple2!52134)

(assert (=> b!4613207 (eq!765 (addToMapMapFromBucket!883 (Cons!51321 lt!1768435 lt!1768431) (ListMap!4114 Nil!51321)) (+!1807 lt!1768430 lt!1768435))))

(declare-datatypes ((Unit!109614 0))(
  ( (Unit!109615) )
))
(declare-fun lt!1768433 () Unit!109614)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!16 (tuple2!52134 List!51445 ListMap!4113) Unit!109614)

(assert (=> b!4613207 (= lt!1768433 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!16 lt!1768435 lt!1768431 (ListMap!4114 Nil!51321)))))

(declare-fun head!9582 (List!51445) tuple2!52134)

(assert (=> b!4613207 (= lt!1768435 (head!9582 oldBucket!40))))

(declare-fun b!4613208 () Bool)

(declare-fun res!1932140 () Bool)

(assert (=> b!4613208 (=> (not res!1932140) (not e!2877555))))

(assert (=> b!4613208 (= res!1932140 (noDuplicateKeys!1422 newBucket!224))))

(declare-fun b!4613209 () Bool)

(declare-fun res!1932141 () Bool)

(assert (=> b!4613209 (=> (not res!1932141) (not e!2877557))))

(declare-fun hash!3367 (Hashable!5819 K!12705) (_ BitVec 64))

(assert (=> b!4613209 (= res!1932141 (= (hash!3367 hashF!1389 key!4968) hash!414))))

(declare-fun b!4613210 () Bool)

(declare-fun res!1932139 () Bool)

(assert (=> b!4613210 (=> (not res!1932139) (not e!2877555))))

(declare-fun removePairForKey!1045 (List!51445 K!12705) List!51445)

(assert (=> b!4613210 (= res!1932139 (= (removePairForKey!1045 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4613211 () Bool)

(assert (=> b!4613211 (= e!2877555 e!2877557)))

(declare-fun res!1932143 () Bool)

(assert (=> b!4613211 (=> (not res!1932143) (not e!2877557))))

(declare-fun lt!1768434 () ListMap!4113)

(declare-fun contains!14292 (ListMap!4113 K!12705) Bool)

(assert (=> b!4613211 (= res!1932143 (contains!14292 lt!1768434 key!4968))))

(declare-datatypes ((tuple2!52136 0))(
  ( (tuple2!52137 (_1!29362 (_ BitVec 64)) (_2!29362 List!51445)) )
))
(declare-datatypes ((List!51446 0))(
  ( (Nil!51322) (Cons!51322 (h!57326 tuple2!52136) (t!358442 List!51446)) )
))
(declare-fun extractMap!1478 (List!51446) ListMap!4113)

(assert (=> b!4613211 (= lt!1768434 (extractMap!1478 (Cons!51322 (tuple2!52137 hash!414 oldBucket!40) Nil!51322)))))

(declare-fun b!4613212 () Bool)

(assert (=> b!4613212 (= e!2877554 e!2877561)))

(declare-fun res!1932151 () Bool)

(assert (=> b!4613212 (=> res!1932151 e!2877561)))

(assert (=> b!4613212 (= res!1932151 (not (= lt!1768429 (extractMap!1478 (Cons!51322 (tuple2!52137 hash!414 newBucket!224) Nil!51322)))))))

(assert (=> b!4613212 (= lt!1768429 (extractMap!1478 (Cons!51322 (tuple2!52137 hash!414 lt!1768431) Nil!51322)))))

(declare-fun b!4613213 () Bool)

(assert (=> b!4613213 (= e!2877557 (not e!2877553))))

(declare-fun res!1932149 () Bool)

(assert (=> b!4613213 (=> res!1932149 e!2877553)))

(get-info :version)

(assert (=> b!4613213 (= res!1932149 (or (not ((_ is Cons!51321) oldBucket!40)) (not (= (_1!29361 (h!57325 oldBucket!40)) key!4968))))))

(assert (=> b!4613213 e!2877559))

(declare-fun res!1932145 () Bool)

(assert (=> b!4613213 (=> (not res!1932145) (not e!2877559))))

(assert (=> b!4613213 (= res!1932145 (= lt!1768434 (addToMapMapFromBucket!883 oldBucket!40 lt!1768432)))))

(assert (=> b!4613213 (= lt!1768432 (extractMap!1478 Nil!51322))))

(assert (=> b!4613213 true))

(declare-fun tp!1341418 () Bool)

(declare-fun b!4613214 () Bool)

(assert (=> b!4613214 (= e!2877556 (and tp_is_empty!28981 tp_is_empty!28983 tp!1341418))))

(assert (= (and start!461420 res!1932147) b!4613208))

(assert (= (and b!4613208 res!1932140) b!4613210))

(assert (= (and b!4613210 res!1932139) b!4613204))

(assert (= (and b!4613204 res!1932152) b!4613211))

(assert (= (and b!4613211 res!1932143) b!4613209))

(assert (= (and b!4613209 res!1932141) b!4613203))

(assert (= (and b!4613203 res!1932142) b!4613213))

(assert (= (and b!4613213 res!1932145) b!4613200))

(assert (= (and b!4613213 (not res!1932149)) b!4613205))

(assert (= (and b!4613205 (not res!1932148)) b!4613212))

(assert (= (and b!4613212 (not res!1932151)) b!4613202))

(assert (= (and b!4613202 (not res!1932150)) b!4613207))

(assert (= (and b!4613207 (not res!1932144)) b!4613201))

(assert (= (and b!4613201 (not res!1932146)) b!4613206))

(assert (= (and start!461420 ((_ is Cons!51321) oldBucket!40)) b!4613199))

(assert (= (and start!461420 ((_ is Cons!51321) newBucket!224)) b!4613214))

(declare-fun m!5444779 () Bool)

(assert (=> b!4613202 m!5444779))

(declare-fun m!5444781 () Bool)

(assert (=> b!4613202 m!5444781))

(declare-fun m!5444783 () Bool)

(assert (=> b!4613205 m!5444783))

(declare-fun m!5444785 () Bool)

(assert (=> b!4613210 m!5444785))

(declare-fun m!5444787 () Bool)

(assert (=> b!4613201 m!5444787))

(declare-fun m!5444789 () Bool)

(assert (=> b!4613209 m!5444789))

(declare-fun m!5444791 () Bool)

(assert (=> b!4613212 m!5444791))

(declare-fun m!5444793 () Bool)

(assert (=> b!4613212 m!5444793))

(declare-fun m!5444795 () Bool)

(assert (=> b!4613211 m!5444795))

(declare-fun m!5444797 () Bool)

(assert (=> b!4613211 m!5444797))

(declare-fun m!5444799 () Bool)

(assert (=> b!4613213 m!5444799))

(declare-fun m!5444801 () Bool)

(assert (=> b!4613213 m!5444801))

(declare-fun m!5444803 () Bool)

(assert (=> start!461420 m!5444803))

(declare-fun m!5444805 () Bool)

(assert (=> b!4613208 m!5444805))

(declare-fun m!5444807 () Bool)

(assert (=> b!4613203 m!5444807))

(declare-fun m!5444809 () Bool)

(assert (=> b!4613204 m!5444809))

(declare-fun m!5444811 () Bool)

(assert (=> b!4613207 m!5444811))

(declare-fun m!5444813 () Bool)

(assert (=> b!4613207 m!5444813))

(declare-fun m!5444815 () Bool)

(assert (=> b!4613207 m!5444815))

(declare-fun m!5444817 () Bool)

(assert (=> b!4613207 m!5444817))

(declare-fun m!5444819 () Bool)

(assert (=> b!4613207 m!5444819))

(assert (=> b!4613207 m!5444811))

(declare-fun m!5444821 () Bool)

(assert (=> b!4613207 m!5444821))

(declare-fun m!5444823 () Bool)

(assert (=> b!4613207 m!5444823))

(assert (=> b!4613207 m!5444817))

(declare-fun m!5444825 () Bool)

(assert (=> b!4613207 m!5444825))

(assert (=> b!4613207 m!5444813))

(assert (=> b!4613207 m!5444823))

(check-sat (not b!4613208) (not b!4613204) (not b!4613214) (not b!4613210) (not b!4613211) (not b!4613207) tp_is_empty!28981 (not b!4613205) (not b!4613201) tp_is_empty!28983 (not b!4613209) (not b!4613202) (not b!4613203) (not b!4613213) (not b!4613212) (not b!4613199) (not start!461420))
(check-sat)

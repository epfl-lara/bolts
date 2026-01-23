; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437500 () Bool)

(assert start!437500)

(declare-fun b!4461318 () Bool)

(declare-fun res!1850123 () Bool)

(declare-fun e!2778054 () Bool)

(assert (=> b!4461318 (=> (not res!1850123) (not e!2778054))))

(declare-datatypes ((K!11590 0))(
  ( (K!11591 (val!17543 Int)) )
))
(declare-datatypes ((V!11836 0))(
  ( (V!11837 (val!17544 Int)) )
))
(declare-datatypes ((tuple2!50354 0))(
  ( (tuple2!50355 (_1!28471 K!11590) (_2!28471 V!11836)) )
))
(declare-datatypes ((List!50303 0))(
  ( (Nil!50179) (Cons!50179 (h!55924 tuple2!50354) (t!357253 List!50303)) )
))
(declare-datatypes ((tuple2!50356 0))(
  ( (tuple2!50357 (_1!28472 (_ BitVec 64)) (_2!28472 List!50303)) )
))
(declare-datatypes ((List!50304 0))(
  ( (Nil!50180) (Cons!50180 (h!55925 tuple2!50356) (t!357254 List!50304)) )
))
(declare-datatypes ((ListLongMap!2599 0))(
  ( (ListLongMap!2600 (toList!3967 List!50304)) )
))
(declare-fun lm!1477 () ListLongMap!2599)

(declare-datatypes ((Hashable!5375 0))(
  ( (HashableExt!5374 (__x!31078 Int)) )
))
(declare-fun hashF!1107 () Hashable!5375)

(declare-fun allKeysSameHashInMap!1087 (ListLongMap!2599 Hashable!5375) Bool)

(assert (=> b!4461318 (= res!1850123 (allKeysSameHashInMap!1087 lm!1477 hashF!1107))))

(declare-fun b!4461319 () Bool)

(declare-fun lambda!161849 () Int)

(declare-fun forall!9920 (List!50304 Int) Bool)

(assert (=> b!4461319 (= e!2778054 (not (forall!9920 (toList!3967 lm!1477) lambda!161849)))))

(declare-fun res!1850118 () Bool)

(assert (=> start!437500 (=> (not res!1850118) (not e!2778054))))

(assert (=> start!437500 (= res!1850118 (forall!9920 (toList!3967 lm!1477) lambda!161849))))

(assert (=> start!437500 e!2778054))

(assert (=> start!437500 true))

(declare-fun e!2778053 () Bool)

(declare-fun inv!65774 (ListLongMap!2599) Bool)

(assert (=> start!437500 (and (inv!65774 lm!1477) e!2778053)))

(declare-fun tp_is_empty!27197 () Bool)

(assert (=> start!437500 tp_is_empty!27197))

(declare-fun e!2778055 () Bool)

(assert (=> start!437500 e!2778055))

(declare-fun b!4461320 () Bool)

(declare-fun res!1850121 () Bool)

(assert (=> b!4461320 (=> (not res!1850121) (not e!2778054))))

(declare-fun key!3287 () K!11590)

(declare-datatypes ((ListMap!3229 0))(
  ( (ListMap!3230 (toList!3968 List!50303)) )
))
(declare-fun contains!12686 (ListMap!3229 K!11590) Bool)

(declare-fun extractMap!1036 (List!50304) ListMap!3229)

(assert (=> b!4461320 (= res!1850121 (contains!12686 (extractMap!1036 (toList!3967 lm!1477)) key!3287))))

(declare-fun b!4461321 () Bool)

(declare-fun res!1850119 () Bool)

(assert (=> b!4461321 (=> (not res!1850119) (not e!2778054))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun hash!2362 (Hashable!5375 K!11590) (_ BitVec 64))

(assert (=> b!4461321 (= res!1850119 (= (hash!2362 hashF!1107 key!3287) hash!344))))

(declare-fun tp!1335766 () Bool)

(declare-fun tp_is_empty!27199 () Bool)

(declare-fun b!4461322 () Bool)

(assert (=> b!4461322 (= e!2778055 (and tp_is_empty!27197 tp_is_empty!27199 tp!1335766))))

(declare-fun b!4461323 () Bool)

(declare-fun res!1850122 () Bool)

(assert (=> b!4461323 (=> (not res!1850122) (not e!2778054))))

(declare-fun newBucket!178 () List!50303)

(declare-fun allKeysSameHash!836 (List!50303 (_ BitVec 64) Hashable!5375) Bool)

(assert (=> b!4461323 (= res!1850122 (allKeysSameHash!836 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4461324 () Bool)

(declare-fun res!1850120 () Bool)

(assert (=> b!4461324 (=> (not res!1850120) (not e!2778054))))

(assert (=> b!4461324 (= res!1850120 (forall!9920 (toList!3967 lm!1477) lambda!161849))))

(declare-fun b!4461325 () Bool)

(declare-fun tp!1335767 () Bool)

(assert (=> b!4461325 (= e!2778053 tp!1335767)))

(assert (= (and start!437500 res!1850118) b!4461318))

(assert (= (and b!4461318 res!1850123) b!4461320))

(assert (= (and b!4461320 res!1850121) b!4461321))

(assert (= (and b!4461321 res!1850119) b!4461323))

(assert (= (and b!4461323 res!1850122) b!4461324))

(assert (= (and b!4461324 res!1850120) b!4461319))

(assert (= start!437500 b!4461325))

(get-info :version)

(assert (= (and start!437500 ((_ is Cons!50179) newBucket!178)) b!4461322))

(declare-fun m!5164307 () Bool)

(assert (=> b!4461324 m!5164307))

(declare-fun m!5164309 () Bool)

(assert (=> b!4461318 m!5164309))

(declare-fun m!5164311 () Bool)

(assert (=> b!4461323 m!5164311))

(declare-fun m!5164313 () Bool)

(assert (=> b!4461321 m!5164313))

(assert (=> start!437500 m!5164307))

(declare-fun m!5164315 () Bool)

(assert (=> start!437500 m!5164315))

(declare-fun m!5164317 () Bool)

(assert (=> b!4461320 m!5164317))

(assert (=> b!4461320 m!5164317))

(declare-fun m!5164319 () Bool)

(assert (=> b!4461320 m!5164319))

(assert (=> b!4461319 m!5164307))

(check-sat (not b!4461325) (not b!4461320) (not b!4461318) tp_is_empty!27199 tp_is_empty!27197 (not b!4461321) (not b!4461319) (not start!437500) (not b!4461324) (not b!4461323) (not b!4461322))
(check-sat)

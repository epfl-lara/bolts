; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758042 () Bool)

(assert start!758042)

(declare-fun b!8049290 () Bool)

(declare-fun e!4742764 () Bool)

(declare-fun e!4742763 () Bool)

(assert (=> b!8049290 (= e!4742764 (not e!4742763))))

(declare-fun res!3182075 () Bool)

(assert (=> b!8049290 (=> res!3182075 e!4742763)))

(declare-datatypes ((K!22718 0))(
  ( (K!22719 (val!32847 Int)) )
))
(declare-datatypes ((V!22972 0))(
  ( (V!22973 (val!32848 Int)) )
))
(declare-datatypes ((tuple2!70812 0))(
  ( (tuple2!70813 (_1!38709 K!22718) (_2!38709 V!22972)) )
))
(declare-datatypes ((List!75615 0))(
  ( (Nil!75489) (Cons!75489 (h!81937 tuple2!70812) (t!391387 List!75615)) )
))
(declare-fun l!14636 () List!75615)

(declare-fun value!3131 () V!22972)

(assert (=> b!8049290 (= res!3182075 (not (= (_2!38709 (h!81937 l!14636)) value!3131)))))

(declare-fun key!6222 () K!22718)

(declare-fun contains!21114 (List!75615 tuple2!70812) Bool)

(assert (=> b!8049290 (not (contains!21114 (t!391387 l!14636) (tuple2!70813 key!6222 value!3131)))))

(declare-datatypes ((Unit!171264 0))(
  ( (Unit!171265) )
))
(declare-fun lt!2723571 () Unit!171264)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!8 (List!75615 K!22718 V!22972) Unit!171264)

(assert (=> b!8049290 (= lt!2723571 (lemmaNotContainsKeyThenCannotContainPair!8 (t!391387 l!14636) key!6222 value!3131))))

(declare-fun b!8049291 () Bool)

(declare-fun e!4742765 () Bool)

(assert (=> b!8049291 (= e!4742765 true)))

(declare-fun lt!2723572 () Bool)

(declare-fun containsKey!4796 (List!75615 K!22718) Bool)

(assert (=> b!8049291 (= lt!2723572 (containsKey!4796 (t!391387 l!14636) key!6222))))

(declare-fun b!8049292 () Bool)

(declare-fun e!4742768 () Bool)

(declare-fun lt!2723574 () Bool)

(assert (=> b!8049292 (= e!4742768 (not lt!2723574))))

(declare-fun b!8049293 () Bool)

(declare-fun res!3182083 () Bool)

(assert (=> b!8049293 (=> res!3182083 e!4742763)))

(assert (=> b!8049293 (= res!3182083 e!4742765)))

(declare-fun res!3182073 () Bool)

(assert (=> b!8049293 (=> (not res!3182073) (not e!4742765))))

(declare-fun e!4742767 () Bool)

(assert (=> b!8049293 (= res!3182073 e!4742767)))

(declare-fun res!3182084 () Bool)

(assert (=> b!8049293 (=> res!3182084 e!4742767)))

(declare-datatypes ((ListMap!7215 0))(
  ( (ListMap!7216 (toList!11882 List!75615)) )
))
(declare-fun lt!2723570 () ListMap!7215)

(declare-fun contains!21115 (ListMap!7215 K!22718) Bool)

(assert (=> b!8049293 (= res!3182084 (not (contains!21115 lt!2723570 key!6222)))))

(declare-fun b!8049294 () Bool)

(declare-fun e!4742766 () Bool)

(assert (=> b!8049294 (= e!4742766 e!4742764)))

(declare-fun res!3182071 () Bool)

(assert (=> b!8049294 (=> (not res!3182071) (not e!4742764))))

(assert (=> b!8049294 (= res!3182071 (= (_1!38709 (h!81937 l!14636)) key!6222))))

(declare-fun lt!2723569 () ListMap!7215)

(declare-fun addToMapMapFromBucket!1949 (List!75615 ListMap!7215) ListMap!7215)

(assert (=> b!8049294 (= lt!2723569 (addToMapMapFromBucket!1949 (t!391387 l!14636) lt!2723570))))

(declare-fun acc!1298 () ListMap!7215)

(declare-fun +!2634 (ListMap!7215 tuple2!70812) ListMap!7215)

(assert (=> b!8049294 (= lt!2723570 (+!2634 acc!1298 (h!81937 l!14636)))))

(declare-fun b!8049295 () Bool)

(declare-fun res!3182082 () Bool)

(assert (=> b!8049295 (=> res!3182082 e!4742767)))

(declare-fun apply!14395 (ListMap!7215 K!22718) V!22972)

(assert (=> b!8049295 (= res!3182082 (not (= (apply!14395 lt!2723570 key!6222) value!3131)))))

(declare-fun b!8049296 () Bool)

(declare-fun tp_is_empty!54747 () Bool)

(declare-fun tp!2413433 () Bool)

(declare-fun tp_is_empty!54749 () Bool)

(declare-fun e!4742770 () Bool)

(assert (=> b!8049296 (= e!4742770 (and tp_is_empty!54747 tp_is_empty!54749 tp!2413433))))

(declare-fun b!8049297 () Bool)

(declare-fun e!4742769 () Bool)

(assert (=> b!8049297 (= e!4742769 e!4742768)))

(declare-fun res!3182069 () Bool)

(assert (=> b!8049297 (=> (not res!3182069) (not e!4742768))))

(assert (=> b!8049297 (= res!3182069 (containsKey!4796 l!14636 key!6222))))

(declare-fun b!8049298 () Bool)

(assert (=> b!8049298 (= e!4742767 (containsKey!4796 (t!391387 l!14636) key!6222))))

(declare-fun res!3182079 () Bool)

(declare-fun e!4742760 () Bool)

(assert (=> start!758042 (=> (not res!3182079) (not e!4742760))))

(declare-fun noDuplicateKeys!2668 (List!75615) Bool)

(assert (=> start!758042 (= res!3182079 (noDuplicateKeys!2668 l!14636))))

(assert (=> start!758042 e!4742760))

(assert (=> start!758042 e!4742770))

(declare-fun e!4742761 () Bool)

(declare-fun inv!97207 (ListMap!7215) Bool)

(assert (=> start!758042 (and (inv!97207 acc!1298) e!4742761)))

(assert (=> start!758042 tp_is_empty!54747))

(assert (=> start!758042 tp_is_empty!54749))

(declare-fun b!8049299 () Bool)

(declare-fun res!3182076 () Bool)

(assert (=> b!8049299 (=> res!3182076 e!4742763)))

(assert (=> b!8049299 (= res!3182076 (not (contains!21115 lt!2723569 key!6222)))))

(declare-fun b!8049300 () Bool)

(assert (=> b!8049300 (= e!4742760 e!4742766)))

(declare-fun res!3182078 () Bool)

(assert (=> b!8049300 (=> (not res!3182078) (not e!4742766))))

(assert (=> b!8049300 (= res!3182078 e!4742769)))

(declare-fun res!3182081 () Bool)

(assert (=> b!8049300 (=> res!3182081 e!4742769)))

(declare-fun e!4742762 () Bool)

(assert (=> b!8049300 (= res!3182081 e!4742762)))

(declare-fun res!3182074 () Bool)

(assert (=> b!8049300 (=> (not res!3182074) (not e!4742762))))

(assert (=> b!8049300 (= res!3182074 lt!2723574)))

(assert (=> b!8049300 (= lt!2723574 (contains!21115 acc!1298 key!6222))))

(declare-fun b!8049301 () Bool)

(assert (=> b!8049301 (= e!4742763 true)))

(assert (=> b!8049301 (= (apply!14395 lt!2723569 key!6222) value!3131)))

(declare-fun lt!2723573 () Unit!171264)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!14 (List!75615 ListMap!7215 K!22718 V!22972) Unit!171264)

(assert (=> b!8049301 (= lt!2723573 (lemmaAddToMapFromBucketMaintainsMapping!14 (t!391387 l!14636) lt!2723570 key!6222 value!3131))))

(declare-fun b!8049302 () Bool)

(declare-fun res!3182080 () Bool)

(assert (=> b!8049302 (=> (not res!3182080) (not e!4742760))))

(assert (=> b!8049302 (= res!3182080 (contains!21115 (addToMapMapFromBucket!1949 l!14636 acc!1298) key!6222))))

(declare-fun b!8049303 () Bool)

(declare-fun tp!2413432 () Bool)

(assert (=> b!8049303 (= e!4742761 tp!2413432)))

(declare-fun b!8049304 () Bool)

(declare-fun res!3182072 () Bool)

(assert (=> b!8049304 (=> (not res!3182072) (not e!4742762))))

(assert (=> b!8049304 (= res!3182072 (= (apply!14395 acc!1298 key!6222) value!3131))))

(declare-fun b!8049305 () Bool)

(declare-fun res!3182070 () Bool)

(assert (=> b!8049305 (=> (not res!3182070) (not e!4742768))))

(assert (=> b!8049305 (= res!3182070 (contains!21114 l!14636 (tuple2!70813 key!6222 value!3131)))))

(declare-fun b!8049306 () Bool)

(assert (=> b!8049306 (= e!4742762 (not (containsKey!4796 l!14636 key!6222)))))

(declare-fun b!8049307 () Bool)

(declare-fun res!3182077 () Bool)

(assert (=> b!8049307 (=> res!3182077 e!4742763)))

(assert (=> b!8049307 (= res!3182077 (not (noDuplicateKeys!2668 (t!391387 l!14636))))))

(declare-fun b!8049308 () Bool)

(declare-fun res!3182068 () Bool)

(assert (=> b!8049308 (=> (not res!3182068) (not e!4742766))))

(get-info :version)

(assert (=> b!8049308 (= res!3182068 (not ((_ is Nil!75489) l!14636)))))

(assert (= (and start!758042 res!3182079) b!8049302))

(assert (= (and b!8049302 res!3182080) b!8049300))

(assert (= (and b!8049300 res!3182074) b!8049304))

(assert (= (and b!8049304 res!3182072) b!8049306))

(assert (= (and b!8049300 (not res!3182081)) b!8049297))

(assert (= (and b!8049297 res!3182069) b!8049305))

(assert (= (and b!8049305 res!3182070) b!8049292))

(assert (= (and b!8049300 res!3182078) b!8049308))

(assert (= (and b!8049308 res!3182068) b!8049294))

(assert (= (and b!8049294 res!3182071) b!8049290))

(assert (= (and b!8049290 (not res!3182075)) b!8049307))

(assert (= (and b!8049307 (not res!3182077)) b!8049299))

(assert (= (and b!8049299 (not res!3182076)) b!8049293))

(assert (= (and b!8049293 (not res!3182084)) b!8049295))

(assert (= (and b!8049295 (not res!3182082)) b!8049298))

(assert (= (and b!8049293 res!3182073) b!8049291))

(assert (= (and b!8049293 (not res!3182083)) b!8049301))

(assert (= (and start!758042 ((_ is Cons!75489) l!14636)) b!8049296))

(assert (= start!758042 b!8049303))

(declare-fun m!8400358 () Bool)

(assert (=> b!8049299 m!8400358))

(declare-fun m!8400360 () Bool)

(assert (=> b!8049307 m!8400360))

(declare-fun m!8400362 () Bool)

(assert (=> b!8049300 m!8400362))

(declare-fun m!8400364 () Bool)

(assert (=> b!8049306 m!8400364))

(declare-fun m!8400366 () Bool)

(assert (=> b!8049301 m!8400366))

(declare-fun m!8400368 () Bool)

(assert (=> b!8049301 m!8400368))

(declare-fun m!8400370 () Bool)

(assert (=> b!8049305 m!8400370))

(declare-fun m!8400372 () Bool)

(assert (=> b!8049295 m!8400372))

(declare-fun m!8400374 () Bool)

(assert (=> b!8049298 m!8400374))

(declare-fun m!8400376 () Bool)

(assert (=> b!8049302 m!8400376))

(assert (=> b!8049302 m!8400376))

(declare-fun m!8400378 () Bool)

(assert (=> b!8049302 m!8400378))

(declare-fun m!8400380 () Bool)

(assert (=> start!758042 m!8400380))

(declare-fun m!8400382 () Bool)

(assert (=> start!758042 m!8400382))

(declare-fun m!8400384 () Bool)

(assert (=> b!8049290 m!8400384))

(declare-fun m!8400386 () Bool)

(assert (=> b!8049290 m!8400386))

(declare-fun m!8400388 () Bool)

(assert (=> b!8049293 m!8400388))

(assert (=> b!8049297 m!8400364))

(declare-fun m!8400390 () Bool)

(assert (=> b!8049304 m!8400390))

(declare-fun m!8400392 () Bool)

(assert (=> b!8049294 m!8400392))

(declare-fun m!8400394 () Bool)

(assert (=> b!8049294 m!8400394))

(assert (=> b!8049291 m!8400374))

(check-sat tp_is_empty!54749 (not b!8049300) (not b!8049304) (not b!8049307) (not b!8049303) (not b!8049295) (not b!8049298) (not start!758042) (not b!8049297) (not b!8049294) (not b!8049305) (not b!8049296) (not b!8049299) (not b!8049302) (not b!8049293) (not b!8049291) (not b!8049301) tp_is_empty!54747 (not b!8049290) (not b!8049306))
(check-sat)

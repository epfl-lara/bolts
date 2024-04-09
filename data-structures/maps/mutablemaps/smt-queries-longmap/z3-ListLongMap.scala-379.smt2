; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7182 () Bool)

(assert start!7182)

(declare-fun res!26925 () Bool)

(declare-fun e!29308 () Bool)

(assert (=> start!7182 (=> (not res!26925) (not e!29308))))

(declare-datatypes ((B!856 0))(
  ( (B!857 (val!1015 Int)) )
))
(declare-datatypes ((tuple2!1682 0))(
  ( (tuple2!1683 (_1!851 (_ BitVec 64)) (_2!851 B!856)) )
))
(declare-datatypes ((List!1249 0))(
  ( (Nil!1246) (Cons!1245 (h!1825 tuple2!1682) (t!4282 List!1249)) )
))
(declare-fun l!812 () List!1249)

(declare-fun isStrictlySorted!223 (List!1249) Bool)

(assert (=> start!7182 (= res!26925 (isStrictlySorted!223 l!812))))

(assert (=> start!7182 e!29308))

(declare-fun e!29309 () Bool)

(assert (=> start!7182 e!29309))

(assert (=> start!7182 true))

(declare-fun b!46028 () Bool)

(declare-fun res!26926 () Bool)

(assert (=> b!46028 (=> (not res!26926) (not e!29308))))

(get-info :version)

(assert (=> b!46028 (= res!26926 (not ((_ is Cons!1245) l!812)))))

(declare-fun b!46029 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!38 (List!1249 (_ BitVec 64)) List!1249)

(assert (=> b!46029 (= e!29308 (not (isStrictlySorted!223 (removeStrictlySorted!38 l!812 key1!43))))))

(declare-fun b!46030 () Bool)

(declare-fun tp_is_empty!1953 () Bool)

(declare-fun tp!6041 () Bool)

(assert (=> b!46030 (= e!29309 (and tp_is_empty!1953 tp!6041))))

(assert (= (and start!7182 res!26925) b!46028))

(assert (= (and b!46028 res!26926) b!46029))

(assert (= (and start!7182 ((_ is Cons!1245) l!812)) b!46030))

(declare-fun m!40599 () Bool)

(assert (=> start!7182 m!40599))

(declare-fun m!40601 () Bool)

(assert (=> b!46029 m!40601))

(assert (=> b!46029 m!40601))

(declare-fun m!40603 () Bool)

(assert (=> b!46029 m!40603))

(check-sat (not start!7182) (not b!46029) (not b!46030) tp_is_empty!1953)
(check-sat)
(get-model)

(declare-fun d!9032 () Bool)

(declare-fun res!26945 () Bool)

(declare-fun e!29329 () Bool)

(assert (=> d!9032 (=> res!26945 e!29329)))

(assert (=> d!9032 (= res!26945 (or ((_ is Nil!1246) l!812) ((_ is Nil!1246) (t!4282 l!812))))))

(assert (=> d!9032 (= (isStrictlySorted!223 l!812) e!29329)))

(declare-fun b!46054 () Bool)

(declare-fun e!29331 () Bool)

(assert (=> b!46054 (= e!29329 e!29331)))

(declare-fun res!26947 () Bool)

(assert (=> b!46054 (=> (not res!26947) (not e!29331))))

(assert (=> b!46054 (= res!26947 (bvslt (_1!851 (h!1825 l!812)) (_1!851 (h!1825 (t!4282 l!812)))))))

(declare-fun b!46055 () Bool)

(assert (=> b!46055 (= e!29331 (isStrictlySorted!223 (t!4282 l!812)))))

(assert (= (and d!9032 (not res!26945)) b!46054))

(assert (= (and b!46054 res!26947) b!46055))

(declare-fun m!40614 () Bool)

(assert (=> b!46055 m!40614))

(assert (=> start!7182 d!9032))

(declare-fun d!9040 () Bool)

(declare-fun res!26954 () Bool)

(declare-fun e!29337 () Bool)

(assert (=> d!9040 (=> res!26954 e!29337)))

(assert (=> d!9040 (= res!26954 (or ((_ is Nil!1246) (removeStrictlySorted!38 l!812 key1!43)) ((_ is Nil!1246) (t!4282 (removeStrictlySorted!38 l!812 key1!43)))))))

(assert (=> d!9040 (= (isStrictlySorted!223 (removeStrictlySorted!38 l!812 key1!43)) e!29337)))

(declare-fun b!46061 () Bool)

(declare-fun e!29339 () Bool)

(assert (=> b!46061 (= e!29337 e!29339)))

(declare-fun res!26956 () Bool)

(assert (=> b!46061 (=> (not res!26956) (not e!29339))))

(assert (=> b!46061 (= res!26956 (bvslt (_1!851 (h!1825 (removeStrictlySorted!38 l!812 key1!43))) (_1!851 (h!1825 (t!4282 (removeStrictlySorted!38 l!812 key1!43))))))))

(declare-fun b!46063 () Bool)

(assert (=> b!46063 (= e!29339 (isStrictlySorted!223 (t!4282 (removeStrictlySorted!38 l!812 key1!43))))))

(assert (= (and d!9040 (not res!26954)) b!46061))

(assert (= (and b!46061 res!26956) b!46063))

(declare-fun m!40619 () Bool)

(assert (=> b!46063 m!40619))

(assert (=> b!46029 d!9040))

(declare-fun d!9045 () Bool)

(declare-fun e!29359 () Bool)

(assert (=> d!9045 e!29359))

(declare-fun res!26963 () Bool)

(assert (=> d!9045 (=> (not res!26963) (not e!29359))))

(declare-fun lt!20277 () List!1249)

(assert (=> d!9045 (= res!26963 (isStrictlySorted!223 lt!20277))))

(declare-fun e!29358 () List!1249)

(assert (=> d!9045 (= lt!20277 e!29358)))

(declare-fun c!6238 () Bool)

(assert (=> d!9045 (= c!6238 (and ((_ is Cons!1245) l!812) (= (_1!851 (h!1825 l!812)) key1!43)))))

(assert (=> d!9045 (isStrictlySorted!223 l!812)))

(assert (=> d!9045 (= (removeStrictlySorted!38 l!812 key1!43) lt!20277)))

(declare-fun b!46094 () Bool)

(declare-fun e!29360 () List!1249)

(assert (=> b!46094 (= e!29358 e!29360)))

(declare-fun c!6239 () Bool)

(assert (=> b!46094 (= c!6239 (and ((_ is Cons!1245) l!812) (not (= (_1!851 (h!1825 l!812)) key1!43))))))

(declare-fun b!46095 () Bool)

(assert (=> b!46095 (= e!29358 (t!4282 l!812))))

(declare-fun b!46096 () Bool)

(assert (=> b!46096 (= e!29360 Nil!1246)))

(declare-fun b!46097 () Bool)

(declare-fun containsKey!83 (List!1249 (_ BitVec 64)) Bool)

(assert (=> b!46097 (= e!29359 (not (containsKey!83 lt!20277 key1!43)))))

(declare-fun b!46098 () Bool)

(declare-fun $colon$colon!38 (List!1249 tuple2!1682) List!1249)

(assert (=> b!46098 (= e!29360 ($colon$colon!38 (removeStrictlySorted!38 (t!4282 l!812) key1!43) (h!1825 l!812)))))

(assert (= (and d!9045 c!6238) b!46095))

(assert (= (and d!9045 (not c!6238)) b!46094))

(assert (= (and b!46094 c!6239) b!46098))

(assert (= (and b!46094 (not c!6239)) b!46096))

(assert (= (and d!9045 res!26963) b!46097))

(declare-fun m!40623 () Bool)

(assert (=> d!9045 m!40623))

(assert (=> d!9045 m!40599))

(declare-fun m!40629 () Bool)

(assert (=> b!46097 m!40629))

(declare-fun m!40633 () Bool)

(assert (=> b!46098 m!40633))

(assert (=> b!46098 m!40633))

(declare-fun m!40641 () Bool)

(assert (=> b!46098 m!40641))

(assert (=> b!46029 d!9045))

(declare-fun b!46121 () Bool)

(declare-fun e!29373 () Bool)

(declare-fun tp!6051 () Bool)

(assert (=> b!46121 (= e!29373 (and tp_is_empty!1953 tp!6051))))

(assert (=> b!46030 (= tp!6041 e!29373)))

(assert (= (and b!46030 ((_ is Cons!1245) (t!4282 l!812))) b!46121))

(check-sat (not b!46055) (not b!46098) (not b!46121) (not d!9045) tp_is_empty!1953 (not b!46063) (not b!46097))
(check-sat)

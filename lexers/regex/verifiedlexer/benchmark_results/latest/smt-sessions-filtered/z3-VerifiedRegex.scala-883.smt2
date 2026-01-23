; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46564 () Bool)

(assert start!46564)

(declare-fun b!514057 () Bool)

(declare-fun b_free!13379 () Bool)

(declare-fun b_next!13379 () Bool)

(assert (=> b!514057 (= b_free!13379 (not b_next!13379))))

(declare-fun tp!160172 () Bool)

(declare-fun b_and!50809 () Bool)

(assert (=> b!514057 (= tp!160172 b_and!50809)))

(declare-fun b!514053 () Bool)

(declare-fun b_free!13381 () Bool)

(declare-fun b_next!13381 () Bool)

(assert (=> b!514053 (= b_free!13381 (not b_next!13381))))

(declare-fun tp!160167 () Bool)

(declare-fun b_and!50811 () Bool)

(assert (=> b!514053 (= tp!160167 b_and!50811)))

(declare-fun b_free!13383 () Bool)

(declare-fun b_next!13383 () Bool)

(assert (=> start!46564 (= b_free!13383 (not b_next!13383))))

(declare-fun tp!160169 () Bool)

(declare-fun b_and!50813 () Bool)

(assert (=> start!46564 (= tp!160169 b_and!50813)))

(declare-fun tp!160171 () Bool)

(declare-fun tp!160170 () Bool)

(declare-fun e!307236 () Bool)

(declare-datatypes ((V!1430 0))(
  ( (V!1431 (val!1729 Int)) )
))
(declare-datatypes ((K!1332 0))(
  ( (K!1333 (val!1730 Int)) )
))
(declare-datatypes ((tuple2!5612 0))(
  ( (tuple2!5613 (_1!3022 K!1332) (_2!3022 V!1430)) )
))
(declare-datatypes ((List!4682 0))(
  ( (Nil!4672) (Cons!4672 (h!10069 tuple2!5612) (t!73208 List!4682)) )
))
(declare-datatypes ((array!1859 0))(
  ( (array!1860 (arr!858 (Array (_ BitVec 32) List!4682)) (size!3792 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!459 0))(
  ( (HashableExt!458 (__x!3352 Int)) )
))
(declare-datatypes ((array!1861 0))(
  ( (array!1862 (arr!859 (Array (_ BitVec 32) (_ BitVec 64))) (size!3793 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!974 0))(
  ( (LongMapFixedSize!975 (defaultEntry!838 Int) (mask!1895 (_ BitVec 32)) (extraKeys!733 (_ BitVec 32)) (zeroValue!743 List!4682) (minValue!743 List!4682) (_size!1083 (_ BitVec 32)) (_keys!778 array!1861) (_values!765 array!1859) (_vacant!548 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1889 0))(
  ( (Cell!1890 (v!15691 LongMapFixedSize!974)) )
))
(declare-datatypes ((MutLongMap!487 0))(
  ( (LongMap!487 (underlying!1153 Cell!1889)) (MutLongMapExt!486 (__x!3353 Int)) )
))
(declare-datatypes ((Cell!1891 0))(
  ( (Cell!1892 (v!15692 MutLongMap!487)) )
))
(declare-datatypes ((MutableMap!459 0))(
  ( (MutableMapExt!458 (__x!3354 Int)) (HashMap!459 (underlying!1154 Cell!1891) (hashF!2335 Hashable!459) (_size!1084 (_ BitVec 32)) (defaultValue!608 Int)) )
))
(declare-fun hm!65 () MutableMap!459)

(declare-fun e!307242 () Bool)

(declare-fun array_inv!619 (array!1861) Bool)

(declare-fun array_inv!620 (array!1859) Bool)

(assert (=> b!514053 (= e!307242 (and tp!160167 tp!160170 tp!160171 (array_inv!619 (_keys!778 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) (array_inv!620 (_values!765 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) e!307236))))

(declare-fun b!514054 () Bool)

(declare-fun e!307243 () Bool)

(declare-fun e!307241 () Bool)

(assert (=> b!514054 (= e!307243 e!307241)))

(declare-fun res!217947 () Bool)

(assert (=> b!514054 (=> (not res!217947) (not e!307241))))

(declare-datatypes ((tuple2!5614 0))(
  ( (tuple2!5615 (_1!3023 Bool) (_2!3023 MutableMap!459)) )
))
(declare-fun lt!212769 () tuple2!5614)

(declare-fun valid!443 (MutableMap!459) Bool)

(assert (=> b!514054 (= res!217947 (valid!443 (_2!3023 lt!212769)))))

(declare-fun k0!1740 () K!1332)

(declare-fun remove!13 (MutableMap!459 K!1332) tuple2!5614)

(assert (=> b!514054 (= lt!212769 (remove!13 hm!65 k0!1740))))

(declare-datatypes ((ListMap!127 0))(
  ( (ListMap!128 (toList!377 List!4682)) )
))
(declare-fun lt!212768 () ListMap!127)

(declare-fun lt!212767 () ListMap!127)

(declare-fun -!10 (ListMap!127 K!1332) ListMap!127)

(assert (=> b!514054 (= lt!212768 (-!10 lt!212767 k0!1740))))

(declare-fun b!514055 () Bool)

(declare-fun res!217946 () Bool)

(declare-fun e!307239 () Bool)

(assert (=> b!514055 (=> (not res!217946) (not e!307239))))

(assert (=> b!514055 (= res!217946 (valid!443 hm!65))))

(declare-fun b!514056 () Bool)

(declare-fun tp!160168 () Bool)

(declare-fun mapRes!1879 () Bool)

(assert (=> b!514056 (= e!307236 (and tp!160168 mapRes!1879))))

(declare-fun condMapEmpty!1879 () Bool)

(declare-fun mapDefault!1879 () List!4682)

(assert (=> b!514056 (= condMapEmpty!1879 (= (arr!858 (_values!765 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) ((as const (Array (_ BitVec 32) List!4682)) mapDefault!1879)))))

(declare-fun e!307238 () Bool)

(declare-fun e!307240 () Bool)

(assert (=> b!514057 (= e!307238 (and e!307240 tp!160172))))

(declare-fun mapNonEmpty!1879 () Bool)

(declare-fun tp!160173 () Bool)

(declare-fun tp!160174 () Bool)

(assert (=> mapNonEmpty!1879 (= mapRes!1879 (and tp!160173 tp!160174))))

(declare-fun mapValue!1879 () List!4682)

(declare-fun mapRest!1879 () (Array (_ BitVec 32) List!4682))

(declare-fun mapKey!1879 () (_ BitVec 32))

(assert (=> mapNonEmpty!1879 (= (arr!858 (_values!765 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) (store mapRest!1879 mapKey!1879 mapValue!1879))))

(declare-fun b!514059 () Bool)

(get-info :version)

(assert (=> b!514059 (= e!307241 (and (_1!3023 lt!212769) (not ((_ is HashMap!459) (_2!3023 lt!212769)))))))

(declare-fun b!514060 () Bool)

(declare-fun e!307234 () Bool)

(assert (=> b!514060 (= e!307234 e!307242)))

(declare-fun b!514061 () Bool)

(declare-fun res!217950 () Bool)

(assert (=> b!514061 (=> (not res!217950) (not e!307241))))

(declare-fun invariantList!44 (List!4682) Bool)

(declare-fun map!980 (MutableMap!459) ListMap!127)

(assert (=> b!514061 (= res!217950 (invariantList!44 (toList!377 (map!980 (_2!3023 lt!212769)))))))

(declare-fun b!514062 () Bool)

(declare-fun e!307237 () Bool)

(declare-fun lt!212770 () MutLongMap!487)

(assert (=> b!514062 (= e!307240 (and e!307237 ((_ is LongMap!487) lt!212770)))))

(assert (=> b!514062 (= lt!212770 (v!15692 (underlying!1154 hm!65)))))

(declare-fun b!514063 () Bool)

(assert (=> b!514063 (= e!307237 e!307234)))

(declare-fun mapIsEmpty!1879 () Bool)

(assert (=> mapIsEmpty!1879 mapRes!1879))

(declare-fun b!514058 () Bool)

(assert (=> b!514058 (= e!307239 e!307243)))

(declare-fun res!217948 () Bool)

(assert (=> b!514058 (=> (not res!217948) (not e!307243))))

(declare-fun p!6060 () Int)

(declare-fun forall!1361 (List!4682 Int) Bool)

(assert (=> b!514058 (= res!217948 (forall!1361 (toList!377 lt!212767) p!6060))))

(assert (=> b!514058 (= lt!212767 (map!980 hm!65))))

(declare-fun res!217949 () Bool)

(assert (=> start!46564 (=> (not res!217949) (not e!307239))))

(assert (=> start!46564 (= res!217949 ((_ is HashMap!459) hm!65))))

(assert (=> start!46564 e!307239))

(assert (=> start!46564 e!307238))

(assert (=> start!46564 tp!160169))

(declare-fun tp_is_empty!2539 () Bool)

(assert (=> start!46564 tp_is_empty!2539))

(assert (= (and start!46564 res!217949) b!514055))

(assert (= (and b!514055 res!217946) b!514058))

(assert (= (and b!514058 res!217948) b!514054))

(assert (= (and b!514054 res!217947) b!514061))

(assert (= (and b!514061 res!217950) b!514059))

(assert (= (and b!514056 condMapEmpty!1879) mapIsEmpty!1879))

(assert (= (and b!514056 (not condMapEmpty!1879)) mapNonEmpty!1879))

(assert (= b!514053 b!514056))

(assert (= b!514060 b!514053))

(assert (= b!514063 b!514060))

(assert (= (and b!514062 ((_ is LongMap!487) (v!15692 (underlying!1154 hm!65)))) b!514063))

(assert (= b!514057 b!514062))

(assert (= (and start!46564 ((_ is HashMap!459) hm!65)) b!514057))

(declare-fun m!760091 () Bool)

(assert (=> mapNonEmpty!1879 m!760091))

(declare-fun m!760093 () Bool)

(assert (=> b!514053 m!760093))

(declare-fun m!760095 () Bool)

(assert (=> b!514053 m!760095))

(declare-fun m!760097 () Bool)

(assert (=> b!514061 m!760097))

(declare-fun m!760099 () Bool)

(assert (=> b!514061 m!760099))

(declare-fun m!760101 () Bool)

(assert (=> b!514055 m!760101))

(declare-fun m!760103 () Bool)

(assert (=> b!514054 m!760103))

(declare-fun m!760105 () Bool)

(assert (=> b!514054 m!760105))

(declare-fun m!760107 () Bool)

(assert (=> b!514054 m!760107))

(declare-fun m!760109 () Bool)

(assert (=> b!514058 m!760109))

(declare-fun m!760111 () Bool)

(assert (=> b!514058 m!760111))

(check-sat (not b!514056) (not mapNonEmpty!1879) (not b!514054) b_and!50809 (not b_next!13379) (not b_next!13381) (not b!514058) (not b!514053) b_and!50811 (not b!514061) (not b!514055) tp_is_empty!2539 b_and!50813 (not b_next!13383))
(check-sat b_and!50809 (not b_next!13379) (not b_next!13381) b_and!50811 b_and!50813 (not b_next!13383))
(get-model)

(declare-fun d!184280 () Bool)

(declare-fun res!217955 () Bool)

(declare-fun e!307246 () Bool)

(assert (=> d!184280 (=> (not res!217955) (not e!307246))))

(declare-fun valid!444 (MutLongMap!487) Bool)

(assert (=> d!184280 (= res!217955 (valid!444 (v!15692 (underlying!1154 hm!65))))))

(assert (=> d!184280 (= (valid!443 hm!65) e!307246)))

(declare-fun b!514068 () Bool)

(declare-fun res!217956 () Bool)

(assert (=> b!514068 (=> (not res!217956) (not e!307246))))

(declare-fun lambda!14309 () Int)

(declare-datatypes ((tuple2!5616 0))(
  ( (tuple2!5617 (_1!3024 (_ BitVec 64)) (_2!3024 List!4682)) )
))
(declare-datatypes ((List!4683 0))(
  ( (Nil!4673) (Cons!4673 (h!10070 tuple2!5616) (t!73211 List!4683)) )
))
(declare-fun forall!1362 (List!4683 Int) Bool)

(declare-datatypes ((ListLongMap!59 0))(
  ( (ListLongMap!60 (toList!378 List!4683)) )
))
(declare-fun map!981 (MutLongMap!487) ListLongMap!59)

(assert (=> b!514068 (= res!217956 (forall!1362 (toList!378 (map!981 (v!15692 (underlying!1154 hm!65)))) lambda!14309))))

(declare-fun b!514069 () Bool)

(declare-fun allKeysSameHashInMap!18 (ListLongMap!59 Hashable!459) Bool)

(assert (=> b!514069 (= e!307246 (allKeysSameHashInMap!18 (map!981 (v!15692 (underlying!1154 hm!65))) (hashF!2335 hm!65)))))

(assert (= (and d!184280 res!217955) b!514068))

(assert (= (and b!514068 res!217956) b!514069))

(declare-fun m!760113 () Bool)

(assert (=> d!184280 m!760113))

(declare-fun m!760115 () Bool)

(assert (=> b!514068 m!760115))

(declare-fun m!760117 () Bool)

(assert (=> b!514068 m!760117))

(assert (=> b!514069 m!760115))

(assert (=> b!514069 m!760115))

(declare-fun m!760119 () Bool)

(assert (=> b!514069 m!760119))

(assert (=> b!514055 d!184280))

(declare-fun d!184282 () Bool)

(declare-fun noDuplicatedKeys!7 (List!4682) Bool)

(assert (=> d!184282 (= (invariantList!44 (toList!377 (map!980 (_2!3023 lt!212769)))) (noDuplicatedKeys!7 (toList!377 (map!980 (_2!3023 lt!212769)))))))

(declare-fun bs!59411 () Bool)

(assert (= bs!59411 d!184282))

(declare-fun m!760121 () Bool)

(assert (=> bs!59411 m!760121))

(assert (=> b!514061 d!184282))

(declare-fun d!184284 () Bool)

(declare-fun lt!212773 () ListMap!127)

(assert (=> d!184284 (invariantList!44 (toList!377 lt!212773))))

(declare-fun extractMap!11 (List!4683) ListMap!127)

(assert (=> d!184284 (= lt!212773 (extractMap!11 (toList!378 (map!981 (v!15692 (underlying!1154 (_2!3023 lt!212769)))))))))

(assert (=> d!184284 (valid!443 (_2!3023 lt!212769))))

(assert (=> d!184284 (= (map!980 (_2!3023 lt!212769)) lt!212773)))

(declare-fun bs!59412 () Bool)

(assert (= bs!59412 d!184284))

(declare-fun m!760123 () Bool)

(assert (=> bs!59412 m!760123))

(declare-fun m!760125 () Bool)

(assert (=> bs!59412 m!760125))

(declare-fun m!760127 () Bool)

(assert (=> bs!59412 m!760127))

(assert (=> bs!59412 m!760103))

(assert (=> b!514061 d!184284))

(declare-fun d!184286 () Bool)

(assert (=> d!184286 (= (array_inv!619 (_keys!778 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) (bvsge (size!3793 (_keys!778 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514053 d!184286))

(declare-fun d!184288 () Bool)

(assert (=> d!184288 (= (array_inv!620 (_values!765 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) (bvsge (size!3792 (_values!765 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514053 d!184288))

(declare-fun d!184290 () Bool)

(declare-fun res!217961 () Bool)

(declare-fun e!307251 () Bool)

(assert (=> d!184290 (=> res!217961 e!307251)))

(assert (=> d!184290 (= res!217961 ((_ is Nil!4672) (toList!377 lt!212767)))))

(assert (=> d!184290 (= (forall!1361 (toList!377 lt!212767) p!6060) e!307251)))

(declare-fun b!514074 () Bool)

(declare-fun e!307252 () Bool)

(assert (=> b!514074 (= e!307251 e!307252)))

(declare-fun res!217962 () Bool)

(assert (=> b!514074 (=> (not res!217962) (not e!307252))))

(declare-fun dynLambda!2966 (Int tuple2!5612) Bool)

(assert (=> b!514074 (= res!217962 (dynLambda!2966 p!6060 (h!10069 (toList!377 lt!212767))))))

(declare-fun b!514075 () Bool)

(assert (=> b!514075 (= e!307252 (forall!1361 (t!73208 (toList!377 lt!212767)) p!6060))))

(assert (= (and d!184290 (not res!217961)) b!514074))

(assert (= (and b!514074 res!217962) b!514075))

(declare-fun b_lambda!19973 () Bool)

(assert (=> (not b_lambda!19973) (not b!514074)))

(declare-fun t!73210 () Bool)

(declare-fun tb!47125 () Bool)

(assert (=> (and start!46564 (= p!6060 p!6060) t!73210) tb!47125))

(declare-fun result!52140 () Bool)

(assert (=> tb!47125 (= result!52140 true)))

(assert (=> b!514074 t!73210))

(declare-fun b_and!50815 () Bool)

(assert (= b_and!50813 (and (=> t!73210 result!52140) b_and!50815)))

(declare-fun m!760129 () Bool)

(assert (=> b!514074 m!760129))

(declare-fun m!760131 () Bool)

(assert (=> b!514075 m!760131))

(assert (=> b!514058 d!184290))

(declare-fun d!184292 () Bool)

(declare-fun lt!212774 () ListMap!127)

(assert (=> d!184292 (invariantList!44 (toList!377 lt!212774))))

(assert (=> d!184292 (= lt!212774 (extractMap!11 (toList!378 (map!981 (v!15692 (underlying!1154 hm!65))))))))

(assert (=> d!184292 (valid!443 hm!65)))

(assert (=> d!184292 (= (map!980 hm!65) lt!212774)))

(declare-fun bs!59413 () Bool)

(assert (= bs!59413 d!184292))

(declare-fun m!760133 () Bool)

(assert (=> bs!59413 m!760133))

(assert (=> bs!59413 m!760115))

(declare-fun m!760135 () Bool)

(assert (=> bs!59413 m!760135))

(assert (=> bs!59413 m!760101))

(assert (=> b!514058 d!184292))

(declare-fun bs!59414 () Bool)

(declare-fun b!514076 () Bool)

(assert (= bs!59414 (and b!514076 b!514068)))

(declare-fun lambda!14310 () Int)

(assert (=> bs!59414 (= lambda!14310 lambda!14309)))

(declare-fun d!184294 () Bool)

(declare-fun res!217963 () Bool)

(declare-fun e!307253 () Bool)

(assert (=> d!184294 (=> (not res!217963) (not e!307253))))

(assert (=> d!184294 (= res!217963 (valid!444 (v!15692 (underlying!1154 (_2!3023 lt!212769)))))))

(assert (=> d!184294 (= (valid!443 (_2!3023 lt!212769)) e!307253)))

(declare-fun res!217964 () Bool)

(assert (=> b!514076 (=> (not res!217964) (not e!307253))))

(assert (=> b!514076 (= res!217964 (forall!1362 (toList!378 (map!981 (v!15692 (underlying!1154 (_2!3023 lt!212769))))) lambda!14310))))

(declare-fun b!514077 () Bool)

(assert (=> b!514077 (= e!307253 (allKeysSameHashInMap!18 (map!981 (v!15692 (underlying!1154 (_2!3023 lt!212769)))) (hashF!2335 (_2!3023 lt!212769))))))

(assert (= (and d!184294 res!217963) b!514076))

(assert (= (and b!514076 res!217964) b!514077))

(declare-fun m!760137 () Bool)

(assert (=> d!184294 m!760137))

(assert (=> b!514076 m!760125))

(declare-fun m!760139 () Bool)

(assert (=> b!514076 m!760139))

(assert (=> b!514077 m!760125))

(assert (=> b!514077 m!760125))

(declare-fun m!760141 () Bool)

(assert (=> b!514077 m!760141))

(assert (=> b!514054 d!184294))

(declare-fun bs!59415 () Bool)

(declare-fun b!514102 () Bool)

(assert (= bs!59415 (and b!514102 b!514068)))

(declare-fun lambda!14317 () Int)

(assert (=> bs!59415 (= lambda!14317 lambda!14309)))

(declare-fun bs!59416 () Bool)

(assert (= bs!59416 (and b!514102 b!514076)))

(assert (=> bs!59416 (= lambda!14317 lambda!14310)))

(declare-fun d!184296 () Bool)

(declare-fun e!307267 () Bool)

(assert (=> d!184296 e!307267))

(declare-fun res!217971 () Bool)

(assert (=> d!184296 (=> (not res!217971) (not e!307267))))

(declare-fun lt!212852 () tuple2!5614)

(assert (=> d!184296 (= res!217971 ((_ is HashMap!459) (_2!3023 lt!212852)))))

(declare-fun e!307266 () tuple2!5614)

(assert (=> d!184296 (= lt!212852 e!307266)))

(declare-fun c!99787 () Bool)

(declare-fun lt!212849 () Bool)

(assert (=> d!184296 (= c!99787 (not lt!212849))))

(declare-fun contains!1061 (MutableMap!459 K!1332) Bool)

(assert (=> d!184296 (= lt!212849 (contains!1061 hm!65 k0!1740))))

(assert (=> d!184296 (valid!443 hm!65)))

(assert (=> d!184296 (= (remove!13 hm!65 k0!1740) lt!212852)))

(declare-fun b!514100 () Bool)

(declare-fun e!307271 () Bool)

(declare-fun call!37384 () Bool)

(assert (=> b!514100 (= e!307271 call!37384)))

(declare-fun bm!37372 () Bool)

(declare-fun call!37381 () ListMap!127)

(declare-datatypes ((Unit!8439 0))(
  ( (Unit!8440) )
))
(declare-datatypes ((tuple2!5618 0))(
  ( (tuple2!5619 (_1!3025 Unit!8439) (_2!3025 MutableMap!459)) )
))
(declare-fun lt!212843 () tuple2!5618)

(assert (=> bm!37372 (= call!37381 (map!980 (_2!3025 lt!212843)))))

(declare-fun b!514101 () Bool)

(assert (=> b!514101 (= e!307271 call!37384)))

(declare-datatypes ((tuple2!5620 0))(
  ( (tuple2!5621 (_1!3026 Bool) (_2!3026 MutLongMap!487)) )
))
(declare-fun lt!212856 () tuple2!5620)

(assert (=> b!514102 (= e!307266 (tuple2!5615 (_1!3026 lt!212856) (_2!3025 lt!212843)))))

(declare-fun lt!212851 () (_ BitVec 64))

(declare-fun hash!504 (Hashable!459 K!1332) (_ BitVec 64))

(assert (=> b!514102 (= lt!212851 (hash!504 (hashF!2335 hm!65) k0!1740))))

(declare-fun lt!212848 () List!4682)

(declare-fun apply!1173 (MutLongMap!487 (_ BitVec 64)) List!4682)

(assert (=> b!514102 (= lt!212848 (apply!1173 (v!15692 (underlying!1154 hm!65)) lt!212851))))

(declare-fun lt!212854 () Unit!8439)

(declare-fun forallContained!436 (List!4683 Int tuple2!5616) Unit!8439)

(assert (=> b!514102 (= lt!212854 (forallContained!436 (toList!378 (map!981 (v!15692 (underlying!1154 hm!65)))) lambda!14317 (tuple2!5617 lt!212851 (apply!1173 (v!15692 (underlying!1154 hm!65)) lt!212851))))))

(declare-fun lt!212842 () ListMap!127)

(assert (=> b!514102 (= lt!212842 (map!980 hm!65))))

(declare-fun lt!212861 () ListLongMap!59)

(assert (=> b!514102 (= lt!212861 (map!981 (v!15692 (underlying!1154 hm!65))))))

(declare-fun lt!212846 () List!4682)

(declare-fun removePairForKey!5 (List!4682 K!1332) List!4682)

(assert (=> b!514102 (= lt!212846 (removePairForKey!5 lt!212848 k0!1740))))

(declare-fun update!44 (MutLongMap!487 (_ BitVec 64) List!4682) tuple2!5620)

(assert (=> b!514102 (= lt!212856 (update!44 (v!15692 (underlying!1154 hm!65)) lt!212851 lt!212846))))

(declare-fun Unit!8441 () Unit!8439)

(declare-fun Unit!8442 () Unit!8439)

(assert (=> b!514102 (= lt!212843 (ite (and (_1!3026 lt!212856) lt!212849) (tuple2!5619 Unit!8441 (HashMap!459 (Cell!1892 (_2!3026 lt!212856)) (hashF!2335 hm!65) (bvsub (_size!1084 hm!65) #b00000000000000000000000000000001) (defaultValue!608 hm!65))) (tuple2!5619 Unit!8442 (HashMap!459 (Cell!1892 (_2!3026 lt!212856)) (hashF!2335 hm!65) (_size!1084 hm!65) (defaultValue!608 hm!65)))))))

(declare-fun lt!212835 () Unit!8439)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!5 (List!4682 K!1332) Unit!8439)

(assert (=> b!514102 (= lt!212835 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!5 lt!212848 k0!1740))))

(declare-fun noDuplicateKeys!7 (List!4682) Bool)

(assert (=> b!514102 (noDuplicateKeys!7 (removePairForKey!5 lt!212848 k0!1740))))

(declare-fun lt!212862 () Unit!8439)

(assert (=> b!514102 (= lt!212862 lt!212835)))

(declare-fun c!99789 () Bool)

(assert (=> b!514102 (= c!99789 (_1!3026 lt!212856))))

(declare-fun lt!212847 () Unit!8439)

(declare-fun e!307269 () Unit!8439)

(assert (=> b!514102 (= lt!212847 e!307269)))

(declare-fun bm!37373 () Bool)

(declare-fun call!37379 () ListMap!127)

(declare-fun e!307270 () ListMap!127)

(declare-fun eq!10 (ListMap!127 ListMap!127) Bool)

(assert (=> bm!37373 (= call!37384 (eq!10 call!37379 e!307270))))

(declare-fun c!99786 () Bool)

(declare-fun c!99788 () Bool)

(assert (=> bm!37373 (= c!99786 c!99788)))

(declare-fun b!514103 () Bool)

(assert (=> b!514103 (= e!307267 e!307271)))

(assert (=> b!514103 (= c!99788 (_1!3023 lt!212852))))

(declare-fun b!514104 () Bool)

(assert (=> b!514104 (= e!307266 (tuple2!5615 true hm!65))))

(declare-fun lt!212860 () ListLongMap!59)

(declare-fun call!37382 () ListLongMap!59)

(assert (=> b!514104 (= lt!212860 call!37382)))

(declare-fun lt!212859 () Unit!8439)

(declare-fun lemmaRemoveNotContainedDoesNotChange!3 (ListLongMap!59 K!1332 Hashable!459) Unit!8439)

(assert (=> b!514104 (= lt!212859 (lemmaRemoveNotContainedDoesNotChange!3 lt!212860 k0!1740 (hashF!2335 hm!65)))))

(declare-fun call!37377 () ListMap!127)

(declare-fun call!37378 () ListMap!127)

(assert (=> b!514104 (= call!37377 call!37378)))

(declare-fun lt!212836 () Unit!8439)

(assert (=> b!514104 (= lt!212836 lt!212859)))

(declare-fun bm!37374 () Bool)

(assert (=> bm!37374 (= call!37382 (map!981 (ite c!99787 (v!15692 (underlying!1154 hm!65)) (v!15692 (underlying!1154 (_2!3025 lt!212843))))))))

(declare-fun b!514105 () Bool)

(assert (=> b!514105 (eq!10 call!37381 call!37378)))

(declare-fun lt!212845 () Unit!8439)

(declare-fun lt!212853 () Unit!8439)

(assert (=> b!514105 (= lt!212845 lt!212853)))

(declare-fun +!14 (ListLongMap!59 tuple2!5616) ListLongMap!59)

(assert (=> b!514105 (eq!10 (extractMap!11 (toList!378 (+!14 lt!212861 (tuple2!5617 lt!212851 lt!212846)))) (-!10 call!37377 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!3 (ListLongMap!59 (_ BitVec 64) List!4682 K!1332 Hashable!459) Unit!8439)

(assert (=> b!514105 (= lt!212853 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!3 lt!212861 lt!212851 lt!212846 k0!1740 (hashF!2335 (_2!3025 lt!212843))))))

(declare-fun lt!212839 () Unit!8439)

(declare-fun Unit!8443 () Unit!8439)

(assert (=> b!514105 (= lt!212839 Unit!8443)))

(declare-fun contains!1062 (ListMap!127 K!1332) Bool)

(assert (=> b!514105 (contains!1062 lt!212842 k0!1740)))

(declare-fun lt!212850 () Unit!8439)

(declare-fun Unit!8444 () Unit!8439)

(assert (=> b!514105 (= lt!212850 Unit!8444)))

(declare-fun call!37383 () Bool)

(assert (=> b!514105 call!37383))

(declare-fun lt!212858 () Unit!8439)

(declare-fun Unit!8445 () Unit!8439)

(assert (=> b!514105 (= lt!212858 Unit!8445)))

(assert (=> b!514105 (allKeysSameHashInMap!18 call!37382 (hashF!2335 (_2!3025 lt!212843)))))

(declare-fun lt!212841 () Unit!8439)

(declare-fun Unit!8446 () Unit!8439)

(assert (=> b!514105 (= lt!212841 Unit!8446)))

(assert (=> b!514105 (forall!1362 (toList!378 call!37382) lambda!14317)))

(declare-fun lt!212855 () Unit!8439)

(declare-fun lt!212844 () Unit!8439)

(assert (=> b!514105 (= lt!212855 lt!212844)))

(declare-fun e!307268 () Bool)

(assert (=> b!514105 e!307268))

(declare-fun res!217973 () Bool)

(assert (=> b!514105 (=> (not res!217973) (not e!307268))))

(declare-fun lt!212840 () ListLongMap!59)

(assert (=> b!514105 (= res!217973 (forall!1362 (toList!378 lt!212840) lambda!14317))))

(assert (=> b!514105 (= lt!212840 (+!14 lt!212861 (tuple2!5617 lt!212851 lt!212846)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!5 (ListLongMap!59 (_ BitVec 64) List!4682 Hashable!459) Unit!8439)

(assert (=> b!514105 (= lt!212844 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!5 lt!212861 lt!212851 lt!212846 (hashF!2335 (_2!3025 lt!212843))))))

(declare-fun lt!212838 () Unit!8439)

(declare-fun lt!212837 () Unit!8439)

(assert (=> b!514105 (= lt!212838 lt!212837)))

(declare-fun allKeysSameHash!6 (List!4682 (_ BitVec 64) Hashable!459) Bool)

(assert (=> b!514105 (allKeysSameHash!6 (removePairForKey!5 lt!212848 k0!1740) lt!212851 (hashF!2335 (_2!3025 lt!212843)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!5 (List!4682 K!1332 (_ BitVec 64) Hashable!459) Unit!8439)

(assert (=> b!514105 (= lt!212837 (lemmaRemovePairForKeyPreservesHash!5 lt!212848 k0!1740 lt!212851 (hashF!2335 (_2!3025 lt!212843))))))

(declare-fun lt!212857 () Unit!8439)

(declare-fun lt!212863 () Unit!8439)

(assert (=> b!514105 (= lt!212857 lt!212863)))

(assert (=> b!514105 (allKeysSameHash!6 lt!212848 lt!212851 (hashF!2335 (_2!3025 lt!212843)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!5 (List!4683 (_ BitVec 64) List!4682 Hashable!459) Unit!8439)

(assert (=> b!514105 (= lt!212863 (lemmaInLongMapAllKeySameHashThenForTuple!5 (toList!378 lt!212861) lt!212851 lt!212848 (hashF!2335 (_2!3025 lt!212843))))))

(declare-fun Unit!8447 () Unit!8439)

(assert (=> b!514105 (= e!307269 Unit!8447)))

(declare-fun bm!37375 () Bool)

(declare-fun call!37380 () ListMap!127)

(assert (=> bm!37375 (= call!37380 (map!980 hm!65))))

(declare-fun bm!37376 () Bool)

(assert (=> bm!37376 (= call!37379 (map!980 (_2!3023 lt!212852)))))

(declare-fun b!514106 () Bool)

(assert (=> b!514106 (= call!37381 lt!212842)))

(declare-fun lt!212864 () Unit!8439)

(declare-fun Unit!8448 () Unit!8439)

(assert (=> b!514106 (= lt!212864 Unit!8448)))

(assert (=> b!514106 call!37383))

(declare-fun Unit!8449 () Unit!8439)

(assert (=> b!514106 (= e!307269 Unit!8449)))

(declare-fun b!514107 () Bool)

(assert (=> b!514107 (= e!307268 (allKeysSameHashInMap!18 lt!212840 (hashF!2335 (_2!3025 lt!212843))))))

(declare-fun b!514108 () Bool)

(declare-fun res!217972 () Bool)

(assert (=> b!514108 (=> (not res!217972) (not e!307267))))

(assert (=> b!514108 (= res!217972 (valid!443 (_2!3023 lt!212852)))))

(declare-fun bm!37377 () Bool)

(assert (=> bm!37377 (= call!37378 (-!10 (ite c!99787 call!37377 lt!212842) k0!1740))))

(declare-fun bm!37378 () Bool)

(assert (=> bm!37378 (= call!37383 (valid!443 (_2!3025 lt!212843)))))

(declare-fun bm!37379 () Bool)

(assert (=> bm!37379 (= call!37377 (extractMap!11 (ite c!99787 (toList!378 lt!212860) (toList!378 lt!212861))))))

(declare-fun b!514109 () Bool)

(assert (=> b!514109 (= e!307270 call!37380)))

(declare-fun b!514110 () Bool)

(assert (=> b!514110 (= e!307270 (-!10 call!37380 k0!1740))))

(assert (= (and d!184296 c!99787) b!514104))

(assert (= (and d!184296 (not c!99787)) b!514102))

(assert (= (and b!514102 c!99789) b!514105))

(assert (= (and b!514102 (not c!99789)) b!514106))

(assert (= (and b!514105 res!217973) b!514107))

(assert (= (or b!514105 b!514106) bm!37378))

(assert (= (or b!514105 b!514106) bm!37372))

(assert (= (or b!514104 b!514105) bm!37374))

(assert (= (or b!514104 b!514105) bm!37379))

(assert (= (or b!514104 b!514105) bm!37377))

(assert (= (and d!184296 res!217971) b!514108))

(assert (= (and b!514108 res!217972) b!514103))

(assert (= (and b!514103 c!99788) b!514100))

(assert (= (and b!514103 (not c!99788)) b!514101))

(assert (= (or b!514100 b!514101) bm!37376))

(assert (= (or b!514100 b!514101) bm!37375))

(assert (= (or b!514100 b!514101) bm!37373))

(assert (= (and bm!37373 c!99786) b!514110))

(assert (= (and bm!37373 (not c!99786)) b!514109))

(declare-fun m!760143 () Bool)

(assert (=> bm!37373 m!760143))

(declare-fun m!760145 () Bool)

(assert (=> bm!37374 m!760145))

(declare-fun m!760147 () Bool)

(assert (=> b!514105 m!760147))

(declare-fun m!760149 () Bool)

(assert (=> b!514105 m!760149))

(declare-fun m!760151 () Bool)

(assert (=> b!514105 m!760151))

(declare-fun m!760153 () Bool)

(assert (=> b!514105 m!760153))

(declare-fun m!760155 () Bool)

(assert (=> b!514105 m!760155))

(declare-fun m!760157 () Bool)

(assert (=> b!514105 m!760157))

(declare-fun m!760159 () Bool)

(assert (=> b!514105 m!760159))

(declare-fun m!760161 () Bool)

(assert (=> b!514105 m!760161))

(declare-fun m!760163 () Bool)

(assert (=> b!514105 m!760163))

(declare-fun m!760165 () Bool)

(assert (=> b!514105 m!760165))

(declare-fun m!760167 () Bool)

(assert (=> b!514105 m!760167))

(declare-fun m!760169 () Bool)

(assert (=> b!514105 m!760169))

(assert (=> b!514105 m!760151))

(declare-fun m!760171 () Bool)

(assert (=> b!514105 m!760171))

(declare-fun m!760173 () Bool)

(assert (=> b!514105 m!760173))

(declare-fun m!760175 () Bool)

(assert (=> b!514105 m!760175))

(assert (=> b!514105 m!760159))

(assert (=> b!514105 m!760173))

(declare-fun m!760177 () Bool)

(assert (=> b!514105 m!760177))

(declare-fun m!760179 () Bool)

(assert (=> d!184296 m!760179))

(assert (=> d!184296 m!760101))

(declare-fun m!760181 () Bool)

(assert (=> bm!37376 m!760181))

(declare-fun m!760183 () Bool)

(assert (=> b!514104 m!760183))

(assert (=> bm!37375 m!760111))

(declare-fun m!760185 () Bool)

(assert (=> bm!37372 m!760185))

(declare-fun m!760187 () Bool)

(assert (=> bm!37378 m!760187))

(assert (=> b!514102 m!760151))

(declare-fun m!760189 () Bool)

(assert (=> b!514102 m!760189))

(declare-fun m!760191 () Bool)

(assert (=> b!514102 m!760191))

(declare-fun m!760193 () Bool)

(assert (=> b!514102 m!760193))

(declare-fun m!760195 () Bool)

(assert (=> b!514102 m!760195))

(assert (=> b!514102 m!760111))

(assert (=> b!514102 m!760115))

(declare-fun m!760197 () Bool)

(assert (=> b!514102 m!760197))

(assert (=> b!514102 m!760151))

(declare-fun m!760199 () Bool)

(assert (=> b!514102 m!760199))

(declare-fun m!760201 () Bool)

(assert (=> bm!37379 m!760201))

(declare-fun m!760203 () Bool)

(assert (=> bm!37377 m!760203))

(declare-fun m!760205 () Bool)

(assert (=> b!514107 m!760205))

(declare-fun m!760207 () Bool)

(assert (=> b!514110 m!760207))

(declare-fun m!760209 () Bool)

(assert (=> b!514108 m!760209))

(assert (=> b!514054 d!184296))

(declare-fun d!184298 () Bool)

(declare-fun e!307274 () Bool)

(assert (=> d!184298 e!307274))

(declare-fun res!217976 () Bool)

(assert (=> d!184298 (=> (not res!217976) (not e!307274))))

(declare-fun lt!212867 () ListMap!127)

(assert (=> d!184298 (= res!217976 (not (contains!1062 lt!212867 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!3 (List!4682 K!1332) List!4682)

(assert (=> d!184298 (= lt!212867 (ListMap!128 (removePresrvNoDuplicatedKeys!3 (toList!377 lt!212767) k0!1740)))))

(assert (=> d!184298 (= (-!10 lt!212767 k0!1740) lt!212867)))

(declare-fun b!514113 () Bool)

(declare-datatypes ((List!4684 0))(
  ( (Nil!4674) (Cons!4674 (h!10071 K!1332) (t!73212 List!4684)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!810 (List!4684) (InoxSet K!1332))

(declare-fun keys!1810 (ListMap!127) List!4684)

(assert (=> b!514113 (= e!307274 (= ((_ map and) (content!810 (keys!1810 lt!212767)) ((_ map not) (store ((as const (Array K!1332 Bool)) false) k0!1740 true))) (content!810 (keys!1810 lt!212867))))))

(assert (= (and d!184298 res!217976) b!514113))

(declare-fun m!760211 () Bool)

(assert (=> d!184298 m!760211))

(declare-fun m!760213 () Bool)

(assert (=> d!184298 m!760213))

(declare-fun m!760215 () Bool)

(assert (=> b!514113 m!760215))

(declare-fun m!760217 () Bool)

(assert (=> b!514113 m!760217))

(declare-fun m!760219 () Bool)

(assert (=> b!514113 m!760219))

(declare-fun m!760221 () Bool)

(assert (=> b!514113 m!760221))

(assert (=> b!514113 m!760217))

(assert (=> b!514113 m!760221))

(declare-fun m!760223 () Bool)

(assert (=> b!514113 m!760223))

(assert (=> b!514054 d!184298))

(declare-fun tp_is_empty!2541 () Bool)

(declare-fun b!514118 () Bool)

(declare-fun tp!160177 () Bool)

(declare-fun e!307277 () Bool)

(assert (=> b!514118 (= e!307277 (and tp_is_empty!2539 tp_is_empty!2541 tp!160177))))

(assert (=> b!514056 (= tp!160168 e!307277)))

(assert (= (and b!514056 ((_ is Cons!4672) mapDefault!1879)) b!514118))

(declare-fun e!307278 () Bool)

(declare-fun tp!160178 () Bool)

(declare-fun b!514119 () Bool)

(assert (=> b!514119 (= e!307278 (and tp_is_empty!2539 tp_is_empty!2541 tp!160178))))

(assert (=> b!514053 (= tp!160170 e!307278)))

(assert (= (and b!514053 ((_ is Cons!4672) (zeroValue!743 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65))))))) b!514119))

(declare-fun b!514120 () Bool)

(declare-fun tp!160179 () Bool)

(declare-fun e!307279 () Bool)

(assert (=> b!514120 (= e!307279 (and tp_is_empty!2539 tp_is_empty!2541 tp!160179))))

(assert (=> b!514053 (= tp!160171 e!307279)))

(assert (= (and b!514053 ((_ is Cons!4672) (minValue!743 (v!15691 (underlying!1153 (v!15692 (underlying!1154 hm!65))))))) b!514120))

(declare-fun e!307284 () Bool)

(declare-fun b!514127 () Bool)

(declare-fun tp!160187 () Bool)

(assert (=> b!514127 (= e!307284 (and tp_is_empty!2539 tp_is_empty!2541 tp!160187))))

(declare-fun mapNonEmpty!1882 () Bool)

(declare-fun mapRes!1882 () Bool)

(declare-fun tp!160186 () Bool)

(assert (=> mapNonEmpty!1882 (= mapRes!1882 (and tp!160186 e!307284))))

(declare-fun mapKey!1882 () (_ BitVec 32))

(declare-fun mapRest!1882 () (Array (_ BitVec 32) List!4682))

(declare-fun mapValue!1882 () List!4682)

(assert (=> mapNonEmpty!1882 (= mapRest!1879 (store mapRest!1882 mapKey!1882 mapValue!1882))))

(declare-fun condMapEmpty!1882 () Bool)

(declare-fun mapDefault!1882 () List!4682)

(assert (=> mapNonEmpty!1879 (= condMapEmpty!1882 (= mapRest!1879 ((as const (Array (_ BitVec 32) List!4682)) mapDefault!1882)))))

(declare-fun e!307285 () Bool)

(assert (=> mapNonEmpty!1879 (= tp!160173 (and e!307285 mapRes!1882))))

(declare-fun b!514128 () Bool)

(declare-fun tp!160188 () Bool)

(assert (=> b!514128 (= e!307285 (and tp_is_empty!2539 tp_is_empty!2541 tp!160188))))

(declare-fun mapIsEmpty!1882 () Bool)

(assert (=> mapIsEmpty!1882 mapRes!1882))

(assert (= (and mapNonEmpty!1879 condMapEmpty!1882) mapIsEmpty!1882))

(assert (= (and mapNonEmpty!1879 (not condMapEmpty!1882)) mapNonEmpty!1882))

(assert (= (and mapNonEmpty!1882 ((_ is Cons!4672) mapValue!1882)) b!514127))

(assert (= (and mapNonEmpty!1879 ((_ is Cons!4672) mapDefault!1882)) b!514128))

(declare-fun m!760225 () Bool)

(assert (=> mapNonEmpty!1882 m!760225))

(declare-fun b!514129 () Bool)

(declare-fun e!307286 () Bool)

(declare-fun tp!160189 () Bool)

(assert (=> b!514129 (= e!307286 (and tp_is_empty!2539 tp_is_empty!2541 tp!160189))))

(assert (=> mapNonEmpty!1879 (= tp!160174 e!307286)))

(assert (= (and mapNonEmpty!1879 ((_ is Cons!4672) mapValue!1879)) b!514129))

(declare-fun b_lambda!19975 () Bool)

(assert (= b_lambda!19973 (or (and start!46564 b_free!13383) b_lambda!19975)))

(check-sat (not b!514119) (not b!514105) (not b!514077) (not b!514108) (not b_next!13381) (not bm!37378) (not d!184294) (not d!184282) (not d!184298) (not bm!37372) (not b!514075) (not bm!37376) tp_is_empty!2539 (not b!514113) (not bm!37377) (not bm!37373) (not b_next!13383) b_and!50815 (not b!514068) (not b!514107) tp_is_empty!2541 (not bm!37379) (not b!514104) (not b!514069) (not bm!37375) b_and!50809 (not b_lambda!19975) (not d!184284) (not bm!37374) (not b!514118) (not b!514076) (not d!184292) (not d!184280) (not b_next!13379) (not b!514102) (not b!514110) (not b!514120) (not b!514128) (not mapNonEmpty!1882) (not b!514129) (not b!514127) b_and!50811 (not d!184296))
(check-sat (not b_next!13383) b_and!50815 b_and!50809 (not b_next!13379) (not b_next!13381) b_and!50811)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415912 () Bool)

(assert start!415912)

(declare-fun b!4321235 () Bool)

(declare-fun b_free!128971 () Bool)

(declare-fun b_next!129675 () Bool)

(assert (=> b!4321235 (= b_free!128971 (not b_next!129675))))

(declare-fun tp!1326934 () Bool)

(declare-fun b_and!340513 () Bool)

(assert (=> b!4321235 (= tp!1326934 b_and!340513)))

(declare-fun b!4321229 () Bool)

(declare-fun b_free!128973 () Bool)

(declare-fun b_next!129677 () Bool)

(assert (=> b!4321229 (= b_free!128973 (not b_next!129677))))

(declare-fun tp!1326938 () Bool)

(declare-fun b_and!340515 () Bool)

(assert (=> b!4321229 (= tp!1326938 b_and!340515)))

(declare-fun res!1770940 () Bool)

(declare-fun e!2688463 () Bool)

(assert (=> start!415912 (=> (not res!1770940) (not e!2688463))))

(declare-datatypes ((V!9831 0))(
  ( (V!9832 (val!15961 Int)) )
))
(declare-datatypes ((K!9629 0))(
  ( (K!9630 (val!15962 Int)) )
))
(declare-datatypes ((tuple2!47184 0))(
  ( (tuple2!47185 (_1!26878 K!9629) (_2!26878 V!9831)) )
))
(declare-datatypes ((List!48502 0))(
  ( (Nil!48378) (Cons!48378 (h!53838 tuple2!47184) (t!355381 List!48502)) )
))
(declare-datatypes ((array!17232 0))(
  ( (array!17233 (arr!7691 (Array (_ BitVec 32) (_ BitVec 64))) (size!35730 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4669 0))(
  ( (HashableExt!4668 (__x!30284 Int)) )
))
(declare-datatypes ((array!17234 0))(
  ( (array!17235 (arr!7692 (Array (_ BitVec 32) List!48502)) (size!35731 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9506 0))(
  ( (LongMapFixedSize!9507 (defaultEntry!5148 Int) (mask!13375 (_ BitVec 32)) (extraKeys!5010 (_ BitVec 32)) (zeroValue!5021 List!48502) (minValue!5021 List!48502) (_size!9550 (_ BitVec 32)) (_keys!5066 array!17232) (_values!5044 array!17234) (_vacant!4815 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18821 0))(
  ( (Cell!18822 (v!42752 LongMapFixedSize!9506)) )
))
(declare-datatypes ((MutLongMap!4753 0))(
  ( (LongMap!4753 (underlying!9735 Cell!18821)) (MutLongMapExt!4752 (__x!30285 Int)) )
))
(declare-datatypes ((Cell!18823 0))(
  ( (Cell!18824 (v!42753 MutLongMap!4753)) )
))
(declare-datatypes ((MutableMap!4659 0))(
  ( (MutableMapExt!4658 (__x!30286 Int)) (HashMap!4659 (underlying!9736 Cell!18823) (hashF!6919 Hashable!4669) (_size!9551 (_ BitVec 32)) (defaultValue!4830 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4659)

(get-info :version)

(assert (=> start!415912 (= res!1770940 ((_ is HashMap!4659) thiss!42308))))

(assert (=> start!415912 e!2688463))

(declare-fun e!2688453 () Bool)

(assert (=> start!415912 e!2688453))

(declare-fun tp_is_empty!24109 () Bool)

(assert (=> start!415912 tp_is_empty!24109))

(declare-fun tp_is_empty!24111 () Bool)

(assert (=> start!415912 tp_is_empty!24111))

(declare-fun b!4321228 () Bool)

(declare-datatypes ((Unit!67766 0))(
  ( (Unit!67767) )
))
(declare-fun e!2688454 () Unit!67766)

(declare-fun lt!1539318 () Unit!67766)

(assert (=> b!4321228 (= e!2688454 lt!1539318)))

(declare-fun lt!1539313 () Unit!67766)

(declare-fun lt!1539310 () (_ BitVec 64))

(declare-fun lt!1539320 () List!48502)

(declare-datatypes ((tuple2!47186 0))(
  ( (tuple2!47187 (_1!26879 (_ BitVec 64)) (_2!26879 List!48502)) )
))
(declare-datatypes ((List!48503 0))(
  ( (Nil!48379) (Cons!48379 (h!53839 tuple2!47186) (t!355382 List!48503)) )
))
(declare-datatypes ((ListLongMap!1171 0))(
  ( (ListLongMap!1172 (toList!2554 List!48503)) )
))
(declare-fun lt!1539311 () ListLongMap!1171)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!229 (List!48503 (_ BitVec 64) List!48502 Hashable!4669) Unit!67766)

(assert (=> b!4321228 (= lt!1539313 (lemmaInLongMapAllKeySameHashThenForTuple!229 (toList!2554 lt!1539311) lt!1539310 lt!1539320 (hashF!6919 thiss!42308)))))

(declare-fun allKeysSameHash!244 (List!48502 (_ BitVec 64) Hashable!4669) Bool)

(assert (=> b!4321228 (allKeysSameHash!244 lt!1539320 lt!1539310 (hashF!6919 thiss!42308))))

(declare-fun key!2048 () K!9629)

(declare-fun lemmaRemovePairForKeyPreservesHash!220 (List!48502 K!9629 (_ BitVec 64) Hashable!4669) Unit!67766)

(assert (=> b!4321228 (= lt!1539318 (lemmaRemovePairForKeyPreservesHash!220 lt!1539320 key!2048 lt!1539310 (hashF!6919 thiss!42308)))))

(declare-fun removePairForKey!267 (List!48502 K!9629) List!48502)

(assert (=> b!4321228 (allKeysSameHash!244 (removePairForKey!267 lt!1539320 key!2048) lt!1539310 (hashF!6919 thiss!42308))))

(declare-fun e!2688461 () Bool)

(assert (=> b!4321229 (= e!2688453 (and e!2688461 tp!1326938))))

(declare-fun mapIsEmpty!21186 () Bool)

(declare-fun mapRes!21186 () Bool)

(assert (=> mapIsEmpty!21186 mapRes!21186))

(declare-fun b!4321230 () Bool)

(declare-fun e!2688462 () Bool)

(declare-fun e!2688459 () Bool)

(assert (=> b!4321230 (= e!2688462 (not e!2688459))))

(declare-fun res!1770941 () Bool)

(assert (=> b!4321230 (=> res!1770941 e!2688459)))

(declare-fun lambda!133834 () Int)

(declare-fun forall!8811 (List!48503 Int) Bool)

(assert (=> b!4321230 (= res!1770941 (not (forall!8811 (toList!2554 lt!1539311) lambda!133834)))))

(declare-fun e!2688450 () Bool)

(assert (=> b!4321230 e!2688450))

(declare-fun res!1770939 () Bool)

(assert (=> b!4321230 (=> (not res!1770939) (not e!2688450))))

(declare-fun lt!1539314 () ListLongMap!1171)

(assert (=> b!4321230 (= res!1770939 (forall!8811 (toList!2554 lt!1539314) lambda!133834))))

(declare-fun lt!1539317 () List!48502)

(declare-fun +!330 (ListLongMap!1171 tuple2!47186) ListLongMap!1171)

(assert (=> b!4321230 (= lt!1539314 (+!330 lt!1539311 (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun lt!1539315 () Unit!67766)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!180 (ListLongMap!1171 (_ BitVec 64) List!48502 Hashable!4669) Unit!67766)

(assert (=> b!4321230 (= lt!1539315 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!180 lt!1539311 lt!1539310 lt!1539317 (hashF!6919 thiss!42308)))))

(declare-fun lt!1539316 () Unit!67766)

(assert (=> b!4321230 (= lt!1539316 e!2688454)))

(declare-fun c!734921 () Bool)

(declare-fun isEmpty!28118 (List!48502) Bool)

(assert (=> b!4321230 (= c!734921 (not (isEmpty!28118 lt!1539320)))))

(declare-fun b!4321231 () Bool)

(declare-fun e!2688451 () Bool)

(declare-fun tp!1326940 () Bool)

(assert (=> b!4321231 (= e!2688451 (and tp!1326940 mapRes!21186))))

(declare-fun condMapEmpty!21186 () Bool)

(declare-fun mapDefault!21186 () List!48502)

(assert (=> b!4321231 (= condMapEmpty!21186 (= (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48502)) mapDefault!21186)))))

(declare-fun b!4321232 () Bool)

(declare-fun e!2688458 () Bool)

(assert (=> b!4321232 (= e!2688458 e!2688462)))

(declare-fun res!1770938 () Bool)

(assert (=> b!4321232 (=> (not res!1770938) (not e!2688462))))

(declare-datatypes ((tuple2!47188 0))(
  ( (tuple2!47189 (_1!26880 Bool) (_2!26880 MutLongMap!4753)) )
))
(declare-fun update!529 (MutLongMap!4753 (_ BitVec 64) List!48502) tuple2!47188)

(assert (=> b!4321232 (= res!1770938 (_1!26880 (update!529 (v!42753 (underlying!9736 thiss!42308)) lt!1539310 lt!1539317)))))

(declare-fun v!9179 () V!9831)

(assert (=> b!4321232 (= lt!1539317 (Cons!48378 (tuple2!47185 key!2048 v!9179) lt!1539320))))

(declare-fun e!2688460 () List!48502)

(assert (=> b!4321232 (= lt!1539320 e!2688460)))

(declare-fun c!734920 () Bool)

(declare-fun contains!10424 (MutLongMap!4753 (_ BitVec 64)) Bool)

(assert (=> b!4321232 (= c!734920 (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539310))))

(declare-fun hash!1175 (Hashable!4669 K!9629) (_ BitVec 64))

(assert (=> b!4321232 (= lt!1539310 (hash!1175 (hashF!6919 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!21186 () Bool)

(declare-fun tp!1326937 () Bool)

(declare-fun tp!1326939 () Bool)

(assert (=> mapNonEmpty!21186 (= mapRes!21186 (and tp!1326937 tp!1326939))))

(declare-fun mapRest!21186 () (Array (_ BitVec 32) List!48502))

(declare-fun mapValue!21186 () List!48502)

(declare-fun mapKey!21186 () (_ BitVec 32))

(assert (=> mapNonEmpty!21186 (= (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (store mapRest!21186 mapKey!21186 mapValue!21186))))

(declare-fun b!4321233 () Bool)

(assert (=> b!4321233 (= e!2688459 (allKeysSameHash!244 lt!1539317 lt!1539310 (hashF!6919 thiss!42308)))))

(declare-fun b!4321234 () Bool)

(declare-fun res!1770942 () Bool)

(assert (=> b!4321234 (=> res!1770942 e!2688459)))

(declare-fun allKeysSameHashInMap!388 (ListLongMap!1171 Hashable!4669) Bool)

(assert (=> b!4321234 (= res!1770942 (not (allKeysSameHashInMap!388 lt!1539311 (hashF!6919 thiss!42308))))))

(declare-fun tp!1326936 () Bool)

(declare-fun e!2688455 () Bool)

(declare-fun tp!1326935 () Bool)

(declare-fun array_inv!5537 (array!17232) Bool)

(declare-fun array_inv!5538 (array!17234) Bool)

(assert (=> b!4321235 (= e!2688455 (and tp!1326934 tp!1326936 tp!1326935 (array_inv!5537 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (array_inv!5538 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) e!2688451))))

(declare-fun b!4321236 () Bool)

(declare-fun Unit!67768 () Unit!67766)

(assert (=> b!4321236 (= e!2688454 Unit!67768)))

(declare-fun b!4321237 () Bool)

(declare-fun e!2688456 () Bool)

(declare-fun e!2688457 () Bool)

(assert (=> b!4321237 (= e!2688456 e!2688457)))

(declare-fun b!4321238 () Bool)

(assert (=> b!4321238 (= e!2688460 Nil!48378)))

(declare-fun b!4321239 () Bool)

(assert (=> b!4321239 (= e!2688463 e!2688458)))

(declare-fun res!1770943 () Bool)

(assert (=> b!4321239 (=> (not res!1770943) (not e!2688458))))

(declare-fun contains!10425 (MutableMap!4659 K!9629) Bool)

(assert (=> b!4321239 (= res!1770943 (not (contains!10425 thiss!42308 key!2048)))))

(declare-fun map!10405 (MutLongMap!4753) ListLongMap!1171)

(assert (=> b!4321239 (= lt!1539311 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))

(declare-datatypes ((ListMap!1831 0))(
  ( (ListMap!1832 (toList!2555 List!48502)) )
))
(declare-fun lt!1539319 () ListMap!1831)

(declare-fun map!10406 (MutableMap!4659) ListMap!1831)

(assert (=> b!4321239 (= lt!1539319 (map!10406 thiss!42308))))

(declare-fun b!4321240 () Bool)

(declare-fun res!1770944 () Bool)

(assert (=> b!4321240 (=> (not res!1770944) (not e!2688463))))

(declare-fun valid!3763 (MutableMap!4659) Bool)

(assert (=> b!4321240 (= res!1770944 (valid!3763 thiss!42308))))

(declare-fun b!4321241 () Bool)

(declare-fun lt!1539312 () MutLongMap!4753)

(assert (=> b!4321241 (= e!2688461 (and e!2688456 ((_ is LongMap!4753) lt!1539312)))))

(assert (=> b!4321241 (= lt!1539312 (v!42753 (underlying!9736 thiss!42308)))))

(declare-fun b!4321242 () Bool)

(declare-fun apply!11139 (MutLongMap!4753 (_ BitVec 64)) List!48502)

(assert (=> b!4321242 (= e!2688460 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539310))))

(declare-fun b!4321243 () Bool)

(assert (=> b!4321243 (= e!2688450 (allKeysSameHashInMap!388 lt!1539314 (hashF!6919 thiss!42308)))))

(declare-fun b!4321244 () Bool)

(assert (=> b!4321244 (= e!2688457 e!2688455)))

(assert (= (and start!415912 res!1770940) b!4321240))

(assert (= (and b!4321240 res!1770944) b!4321239))

(assert (= (and b!4321239 res!1770943) b!4321232))

(assert (= (and b!4321232 c!734920) b!4321242))

(assert (= (and b!4321232 (not c!734920)) b!4321238))

(assert (= (and b!4321232 res!1770938) b!4321230))

(assert (= (and b!4321230 c!734921) b!4321228))

(assert (= (and b!4321230 (not c!734921)) b!4321236))

(assert (= (and b!4321230 res!1770939) b!4321243))

(assert (= (and b!4321230 (not res!1770941)) b!4321234))

(assert (= (and b!4321234 (not res!1770942)) b!4321233))

(assert (= (and b!4321231 condMapEmpty!21186) mapIsEmpty!21186))

(assert (= (and b!4321231 (not condMapEmpty!21186)) mapNonEmpty!21186))

(assert (= b!4321235 b!4321231))

(assert (= b!4321244 b!4321235))

(assert (= b!4321237 b!4321244))

(assert (= (and b!4321241 ((_ is LongMap!4753) (v!42753 (underlying!9736 thiss!42308)))) b!4321237))

(assert (= b!4321229 b!4321241))

(assert (= (and start!415912 ((_ is HashMap!4659) thiss!42308)) b!4321229))

(declare-fun m!4915203 () Bool)

(assert (=> mapNonEmpty!21186 m!4915203))

(declare-fun m!4915205 () Bool)

(assert (=> b!4321240 m!4915205))

(declare-fun m!4915207 () Bool)

(assert (=> b!4321242 m!4915207))

(declare-fun m!4915209 () Bool)

(assert (=> b!4321239 m!4915209))

(declare-fun m!4915211 () Bool)

(assert (=> b!4321239 m!4915211))

(declare-fun m!4915213 () Bool)

(assert (=> b!4321239 m!4915213))

(declare-fun m!4915215 () Bool)

(assert (=> b!4321228 m!4915215))

(declare-fun m!4915217 () Bool)

(assert (=> b!4321228 m!4915217))

(declare-fun m!4915219 () Bool)

(assert (=> b!4321228 m!4915219))

(declare-fun m!4915221 () Bool)

(assert (=> b!4321228 m!4915221))

(assert (=> b!4321228 m!4915219))

(declare-fun m!4915223 () Bool)

(assert (=> b!4321228 m!4915223))

(declare-fun m!4915225 () Bool)

(assert (=> b!4321233 m!4915225))

(declare-fun m!4915227 () Bool)

(assert (=> b!4321235 m!4915227))

(declare-fun m!4915229 () Bool)

(assert (=> b!4321235 m!4915229))

(declare-fun m!4915231 () Bool)

(assert (=> b!4321230 m!4915231))

(declare-fun m!4915233 () Bool)

(assert (=> b!4321230 m!4915233))

(declare-fun m!4915235 () Bool)

(assert (=> b!4321230 m!4915235))

(declare-fun m!4915237 () Bool)

(assert (=> b!4321230 m!4915237))

(declare-fun m!4915239 () Bool)

(assert (=> b!4321230 m!4915239))

(declare-fun m!4915241 () Bool)

(assert (=> b!4321234 m!4915241))

(declare-fun m!4915243 () Bool)

(assert (=> b!4321243 m!4915243))

(declare-fun m!4915245 () Bool)

(assert (=> b!4321232 m!4915245))

(declare-fun m!4915247 () Bool)

(assert (=> b!4321232 m!4915247))

(declare-fun m!4915249 () Bool)

(assert (=> b!4321232 m!4915249))

(check-sat (not b!4321242) (not b!4321234) (not b!4321230) (not b!4321228) (not mapNonEmpty!21186) (not b!4321231) (not b!4321235) b_and!340515 (not b_next!129675) tp_is_empty!24109 (not b!4321243) (not b!4321239) (not b!4321233) (not b!4321240) (not b!4321232) tp_is_empty!24111 b_and!340513 (not b_next!129677))
(check-sat b_and!340513 b_and!340515 (not b_next!129677) (not b_next!129675))
(get-model)

(declare-fun b!4321263 () Bool)

(declare-fun e!2688478 () Bool)

(declare-fun e!2688476 () Bool)

(assert (=> b!4321263 (= e!2688478 e!2688476)))

(declare-fun c!734928 () Bool)

(declare-fun lt!1539332 () tuple2!47188)

(assert (=> b!4321263 (= c!734928 (_1!26880 lt!1539332))))

(declare-fun b!4321264 () Bool)

(declare-fun e!2688475 () Bool)

(assert (=> b!4321264 (= e!2688476 e!2688475)))

(declare-fun res!1770952 () Bool)

(declare-fun call!299497 () ListLongMap!1171)

(declare-fun contains!10426 (ListLongMap!1171 (_ BitVec 64)) Bool)

(assert (=> b!4321264 (= res!1770952 (contains!10426 call!299497 lt!1539310))))

(assert (=> b!4321264 (=> (not res!1770952) (not e!2688475))))

(declare-fun b!4321265 () Bool)

(declare-fun res!1770951 () Bool)

(assert (=> b!4321265 (=> (not res!1770951) (not e!2688478))))

(declare-fun valid!3764 (MutLongMap!4753) Bool)

(assert (=> b!4321265 (= res!1770951 (valid!3764 (_2!26880 lt!1539332)))))

(declare-fun b!4321266 () Bool)

(declare-fun call!299498 () ListLongMap!1171)

(assert (=> b!4321266 (= e!2688475 (= call!299497 (+!330 call!299498 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4321267 () Bool)

(declare-fun e!2688477 () tuple2!47188)

(declare-fun lt!1539330 () tuple2!47188)

(assert (=> b!4321267 (= e!2688477 (tuple2!47189 (_1!26880 lt!1539330) (_2!26880 lt!1539330)))))

(declare-fun repack!84 (MutLongMap!4753) tuple2!47188)

(assert (=> b!4321267 (= lt!1539330 (repack!84 (v!42753 (underlying!9736 thiss!42308))))))

(declare-fun b!4321268 () Bool)

(assert (=> b!4321268 (= e!2688476 (= call!299497 call!299498))))

(declare-fun b!4321269 () Bool)

(declare-fun e!2688474 () tuple2!47188)

(declare-datatypes ((tuple2!47190 0))(
  ( (tuple2!47191 (_1!26881 Bool) (_2!26881 LongMapFixedSize!9506)) )
))
(declare-fun lt!1539331 () tuple2!47190)

(assert (=> b!4321269 (= e!2688474 (tuple2!47189 (_1!26881 lt!1539331) (LongMap!4753 (Cell!18822 (_2!26881 lt!1539331)))))))

(declare-fun lt!1539329 () tuple2!47188)

(declare-fun update!530 (LongMapFixedSize!9506 (_ BitVec 64) List!48502) tuple2!47190)

(assert (=> b!4321269 (= lt!1539331 (update!530 (v!42752 (underlying!9735 (_2!26880 lt!1539329))) lt!1539310 lt!1539317))))

(declare-fun b!4321270 () Bool)

(assert (=> b!4321270 (= e!2688477 (tuple2!47189 true (v!42753 (underlying!9736 thiss!42308))))))

(declare-fun d!1270507 () Bool)

(assert (=> d!1270507 e!2688478))

(declare-fun res!1770953 () Bool)

(assert (=> d!1270507 (=> (not res!1770953) (not e!2688478))))

(assert (=> d!1270507 (= res!1770953 ((_ is LongMap!4753) (_2!26880 lt!1539332)))))

(assert (=> d!1270507 (= lt!1539332 e!2688474)))

(declare-fun c!734930 () Bool)

(assert (=> d!1270507 (= c!734930 (_1!26880 lt!1539329))))

(assert (=> d!1270507 (= lt!1539329 e!2688477)))

(declare-fun c!734929 () Bool)

(declare-fun imbalanced!80 (MutLongMap!4753) Bool)

(assert (=> d!1270507 (= c!734929 (imbalanced!80 (v!42753 (underlying!9736 thiss!42308))))))

(assert (=> d!1270507 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270507 (= (update!529 (v!42753 (underlying!9736 thiss!42308)) lt!1539310 lt!1539317) lt!1539332)))

(declare-fun b!4321271 () Bool)

(assert (=> b!4321271 (= e!2688474 (tuple2!47189 false (_2!26880 lt!1539329)))))

(declare-fun bm!299492 () Bool)

(assert (=> bm!299492 (= call!299497 (map!10405 (_2!26880 lt!1539332)))))

(declare-fun bm!299493 () Bool)

(assert (=> bm!299493 (= call!299498 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))

(assert (= (and d!1270507 c!734929) b!4321267))

(assert (= (and d!1270507 (not c!734929)) b!4321270))

(assert (= (and d!1270507 c!734930) b!4321269))

(assert (= (and d!1270507 (not c!734930)) b!4321271))

(assert (= (and d!1270507 res!1770953) b!4321265))

(assert (= (and b!4321265 res!1770951) b!4321263))

(assert (= (and b!4321263 c!734928) b!4321264))

(assert (= (and b!4321263 (not c!734928)) b!4321268))

(assert (= (and b!4321264 res!1770952) b!4321266))

(assert (= (or b!4321266 b!4321268) bm!299493))

(assert (= (or b!4321264 b!4321266 b!4321268) bm!299492))

(assert (=> bm!299493 m!4915211))

(declare-fun m!4915251 () Bool)

(assert (=> b!4321266 m!4915251))

(declare-fun m!4915253 () Bool)

(assert (=> b!4321264 m!4915253))

(declare-fun m!4915255 () Bool)

(assert (=> d!1270507 m!4915255))

(declare-fun m!4915257 () Bool)

(assert (=> d!1270507 m!4915257))

(declare-fun m!4915259 () Bool)

(assert (=> b!4321267 m!4915259))

(declare-fun m!4915261 () Bool)

(assert (=> b!4321269 m!4915261))

(declare-fun m!4915263 () Bool)

(assert (=> bm!299492 m!4915263))

(declare-fun m!4915265 () Bool)

(assert (=> b!4321265 m!4915265))

(assert (=> b!4321232 d!1270507))

(declare-fun d!1270509 () Bool)

(declare-fun lt!1539335 () Bool)

(assert (=> d!1270509 (= lt!1539335 (contains!10426 (map!10405 (v!42753 (underlying!9736 thiss!42308))) lt!1539310))))

(declare-fun contains!10427 (LongMapFixedSize!9506 (_ BitVec 64)) Bool)

(assert (=> d!1270509 (= lt!1539335 (contains!10427 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(assert (=> d!1270509 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270509 (= (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539310) lt!1539335)))

(declare-fun bs!606463 () Bool)

(assert (= bs!606463 d!1270509))

(assert (=> bs!606463 m!4915211))

(assert (=> bs!606463 m!4915211))

(declare-fun m!4915267 () Bool)

(assert (=> bs!606463 m!4915267))

(declare-fun m!4915269 () Bool)

(assert (=> bs!606463 m!4915269))

(assert (=> bs!606463 m!4915257))

(assert (=> b!4321232 d!1270509))

(declare-fun d!1270511 () Bool)

(declare-fun hash!1179 (Hashable!4669 K!9629) (_ BitVec 64))

(assert (=> d!1270511 (= (hash!1175 (hashF!6919 thiss!42308) key!2048) (hash!1179 (hashF!6919 thiss!42308) key!2048))))

(declare-fun bs!606464 () Bool)

(assert (= bs!606464 d!1270511))

(declare-fun m!4915271 () Bool)

(assert (=> bs!606464 m!4915271))

(assert (=> b!4321232 d!1270511))

(declare-fun d!1270513 () Bool)

(declare-fun e!2688481 () Bool)

(assert (=> d!1270513 e!2688481))

(declare-fun c!734933 () Bool)

(assert (=> d!1270513 (= c!734933 (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539310))))

(declare-fun lt!1539338 () List!48502)

(declare-fun apply!11140 (LongMapFixedSize!9506 (_ BitVec 64)) List!48502)

(assert (=> d!1270513 (= lt!1539338 (apply!11140 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(assert (=> d!1270513 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270513 (= (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539310) lt!1539338)))

(declare-fun b!4321276 () Bool)

(declare-datatypes ((Option!10300 0))(
  ( (None!10299) (Some!10299 (v!42758 List!48502)) )
))
(declare-fun get!15675 (Option!10300) List!48502)

(declare-fun getValueByKey!297 (List!48503 (_ BitVec 64)) Option!10300)

(assert (=> b!4321276 (= e!2688481 (= lt!1539338 (get!15675 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))))

(declare-fun b!4321277 () Bool)

(declare-fun dynLambda!20506 (Int (_ BitVec 64)) List!48502)

(assert (=> b!4321277 (= e!2688481 (= lt!1539338 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310)))))

(assert (=> b!4321277 ((_ is LongMap!4753) (v!42753 (underlying!9736 thiss!42308)))))

(assert (= (and d!1270513 c!734933) b!4321276))

(assert (= (and d!1270513 (not c!734933)) b!4321277))

(declare-fun b_lambda!127215 () Bool)

(assert (=> (not b_lambda!127215) (not b!4321277)))

(declare-fun t!355384 () Bool)

(declare-fun tb!257365 () Bool)

(assert (=> (and b!4321235 (= (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) t!355384) tb!257365))

(assert (=> b!4321277 t!355384))

(declare-fun result!314878 () Bool)

(declare-fun b_and!340517 () Bool)

(assert (= b_and!340513 (and (=> t!355384 result!314878) b_and!340517)))

(assert (=> d!1270513 m!4915247))

(declare-fun m!4915273 () Bool)

(assert (=> d!1270513 m!4915273))

(assert (=> d!1270513 m!4915257))

(assert (=> b!4321276 m!4915211))

(declare-fun m!4915275 () Bool)

(assert (=> b!4321276 m!4915275))

(assert (=> b!4321276 m!4915275))

(declare-fun m!4915277 () Bool)

(assert (=> b!4321276 m!4915277))

(declare-fun m!4915279 () Bool)

(assert (=> b!4321277 m!4915279))

(assert (=> b!4321242 d!1270513))

(declare-fun d!1270515 () Bool)

(assert (=> d!1270515 true))

(assert (=> d!1270515 true))

(declare-fun lambda!133837 () Int)

(declare-fun forall!8812 (List!48502 Int) Bool)

(assert (=> d!1270515 (= (allKeysSameHash!244 (removePairForKey!267 lt!1539320 key!2048) lt!1539310 (hashF!6919 thiss!42308)) (forall!8812 (removePairForKey!267 lt!1539320 key!2048) lambda!133837))))

(declare-fun bs!606465 () Bool)

(assert (= bs!606465 d!1270515))

(assert (=> bs!606465 m!4915219))

(declare-fun m!4915281 () Bool)

(assert (=> bs!606465 m!4915281))

(assert (=> b!4321228 d!1270515))

(declare-fun bs!606466 () Bool)

(declare-fun d!1270517 () Bool)

(assert (= bs!606466 (and d!1270517 d!1270515)))

(declare-fun lambda!133838 () Int)

(assert (=> bs!606466 (= lambda!133838 lambda!133837)))

(assert (=> d!1270517 true))

(assert (=> d!1270517 true))

(assert (=> d!1270517 (= (allKeysSameHash!244 lt!1539320 lt!1539310 (hashF!6919 thiss!42308)) (forall!8812 lt!1539320 lambda!133838))))

(declare-fun bs!606467 () Bool)

(assert (= bs!606467 d!1270517))

(declare-fun m!4915283 () Bool)

(assert (=> bs!606467 m!4915283))

(assert (=> b!4321228 d!1270517))

(declare-fun bs!606468 () Bool)

(declare-fun d!1270519 () Bool)

(assert (= bs!606468 (and d!1270519 b!4321230)))

(declare-fun lambda!133841 () Int)

(assert (=> bs!606468 (not (= lambda!133841 lambda!133834))))

(assert (=> d!1270519 true))

(assert (=> d!1270519 (allKeysSameHash!244 lt!1539320 lt!1539310 (hashF!6919 thiss!42308))))

(declare-fun lt!1539341 () Unit!67766)

(declare-fun choose!26393 (List!48503 (_ BitVec 64) List!48502 Hashable!4669) Unit!67766)

(assert (=> d!1270519 (= lt!1539341 (choose!26393 (toList!2554 lt!1539311) lt!1539310 lt!1539320 (hashF!6919 thiss!42308)))))

(assert (=> d!1270519 (forall!8811 (toList!2554 lt!1539311) lambda!133841)))

(assert (=> d!1270519 (= (lemmaInLongMapAllKeySameHashThenForTuple!229 (toList!2554 lt!1539311) lt!1539310 lt!1539320 (hashF!6919 thiss!42308)) lt!1539341)))

(declare-fun bs!606469 () Bool)

(assert (= bs!606469 d!1270519))

(assert (=> bs!606469 m!4915223))

(declare-fun m!4915285 () Bool)

(assert (=> bs!606469 m!4915285))

(declare-fun m!4915287 () Bool)

(assert (=> bs!606469 m!4915287))

(assert (=> b!4321228 d!1270519))

(declare-fun d!1270521 () Bool)

(assert (=> d!1270521 (allKeysSameHash!244 (removePairForKey!267 lt!1539320 key!2048) lt!1539310 (hashF!6919 thiss!42308))))

(declare-fun lt!1539344 () Unit!67766)

(declare-fun choose!26394 (List!48502 K!9629 (_ BitVec 64) Hashable!4669) Unit!67766)

(assert (=> d!1270521 (= lt!1539344 (choose!26394 lt!1539320 key!2048 lt!1539310 (hashF!6919 thiss!42308)))))

(declare-fun noDuplicateKeys!262 (List!48502) Bool)

(assert (=> d!1270521 (noDuplicateKeys!262 lt!1539320)))

(assert (=> d!1270521 (= (lemmaRemovePairForKeyPreservesHash!220 lt!1539320 key!2048 lt!1539310 (hashF!6919 thiss!42308)) lt!1539344)))

(declare-fun bs!606470 () Bool)

(assert (= bs!606470 d!1270521))

(assert (=> bs!606470 m!4915219))

(assert (=> bs!606470 m!4915219))

(assert (=> bs!606470 m!4915221))

(declare-fun m!4915289 () Bool)

(assert (=> bs!606470 m!4915289))

(declare-fun m!4915291 () Bool)

(assert (=> bs!606470 m!4915291))

(assert (=> b!4321228 d!1270521))

(declare-fun b!4321292 () Bool)

(declare-fun e!2688486 () List!48502)

(assert (=> b!4321292 (= e!2688486 (t!355381 lt!1539320))))

(declare-fun b!4321293 () Bool)

(declare-fun e!2688487 () List!48502)

(assert (=> b!4321293 (= e!2688486 e!2688487)))

(declare-fun c!734939 () Bool)

(assert (=> b!4321293 (= c!734939 ((_ is Cons!48378) lt!1539320))))

(declare-fun b!4321295 () Bool)

(assert (=> b!4321295 (= e!2688487 Nil!48378)))

(declare-fun b!4321294 () Bool)

(assert (=> b!4321294 (= e!2688487 (Cons!48378 (h!53838 lt!1539320) (removePairForKey!267 (t!355381 lt!1539320) key!2048)))))

(declare-fun d!1270523 () Bool)

(declare-fun lt!1539347 () List!48502)

(declare-fun containsKey!400 (List!48502 K!9629) Bool)

(assert (=> d!1270523 (not (containsKey!400 lt!1539347 key!2048))))

(assert (=> d!1270523 (= lt!1539347 e!2688486)))

(declare-fun c!734938 () Bool)

(assert (=> d!1270523 (= c!734938 (and ((_ is Cons!48378) lt!1539320) (= (_1!26878 (h!53838 lt!1539320)) key!2048)))))

(assert (=> d!1270523 (noDuplicateKeys!262 lt!1539320)))

(assert (=> d!1270523 (= (removePairForKey!267 lt!1539320 key!2048) lt!1539347)))

(assert (= (and d!1270523 c!734938) b!4321292))

(assert (= (and d!1270523 (not c!734938)) b!4321293))

(assert (= (and b!4321293 c!734939) b!4321294))

(assert (= (and b!4321293 (not c!734939)) b!4321295))

(declare-fun m!4915293 () Bool)

(assert (=> b!4321294 m!4915293))

(declare-fun m!4915295 () Bool)

(assert (=> d!1270523 m!4915295))

(assert (=> d!1270523 m!4915291))

(assert (=> b!4321228 d!1270523))

(declare-fun d!1270525 () Bool)

(assert (=> d!1270525 (= (array_inv!5537 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (bvsge (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4321235 d!1270525))

(declare-fun d!1270527 () Bool)

(assert (=> d!1270527 (= (array_inv!5538 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (bvsge (size!35731 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4321235 d!1270527))

(declare-fun bs!606471 () Bool)

(declare-fun d!1270529 () Bool)

(assert (= bs!606471 (and d!1270529 b!4321230)))

(declare-fun lambda!133846 () Int)

(assert (=> bs!606471 (= lambda!133846 lambda!133834)))

(declare-fun bs!606472 () Bool)

(assert (= bs!606472 (and d!1270529 d!1270519)))

(assert (=> bs!606472 (not (= lambda!133846 lambda!133841))))

(declare-fun e!2688490 () Bool)

(assert (=> d!1270529 e!2688490))

(declare-fun res!1770956 () Bool)

(assert (=> d!1270529 (=> (not res!1770956) (not e!2688490))))

(declare-fun lt!1539353 () ListLongMap!1171)

(assert (=> d!1270529 (= res!1770956 (forall!8811 (toList!2554 lt!1539353) lambda!133846))))

(assert (=> d!1270529 (= lt!1539353 (+!330 lt!1539311 (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun lt!1539352 () Unit!67766)

(declare-fun choose!26395 (ListLongMap!1171 (_ BitVec 64) List!48502 Hashable!4669) Unit!67766)

(assert (=> d!1270529 (= lt!1539352 (choose!26395 lt!1539311 lt!1539310 lt!1539317 (hashF!6919 thiss!42308)))))

(assert (=> d!1270529 (forall!8811 (toList!2554 lt!1539311) lambda!133846)))

(assert (=> d!1270529 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!180 lt!1539311 lt!1539310 lt!1539317 (hashF!6919 thiss!42308)) lt!1539352)))

(declare-fun b!4321298 () Bool)

(assert (=> b!4321298 (= e!2688490 (allKeysSameHashInMap!388 lt!1539353 (hashF!6919 thiss!42308)))))

(assert (= (and d!1270529 res!1770956) b!4321298))

(declare-fun m!4915297 () Bool)

(assert (=> d!1270529 m!4915297))

(assert (=> d!1270529 m!4915233))

(declare-fun m!4915299 () Bool)

(assert (=> d!1270529 m!4915299))

(declare-fun m!4915301 () Bool)

(assert (=> d!1270529 m!4915301))

(declare-fun m!4915303 () Bool)

(assert (=> b!4321298 m!4915303))

(assert (=> b!4321230 d!1270529))

(declare-fun d!1270531 () Bool)

(declare-fun res!1770961 () Bool)

(declare-fun e!2688495 () Bool)

(assert (=> d!1270531 (=> res!1770961 e!2688495)))

(assert (=> d!1270531 (= res!1770961 ((_ is Nil!48379) (toList!2554 lt!1539311)))))

(assert (=> d!1270531 (= (forall!8811 (toList!2554 lt!1539311) lambda!133834) e!2688495)))

(declare-fun b!4321303 () Bool)

(declare-fun e!2688496 () Bool)

(assert (=> b!4321303 (= e!2688495 e!2688496)))

(declare-fun res!1770962 () Bool)

(assert (=> b!4321303 (=> (not res!1770962) (not e!2688496))))

(declare-fun dynLambda!20507 (Int tuple2!47186) Bool)

(assert (=> b!4321303 (= res!1770962 (dynLambda!20507 lambda!133834 (h!53839 (toList!2554 lt!1539311))))))

(declare-fun b!4321304 () Bool)

(assert (=> b!4321304 (= e!2688496 (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133834))))

(assert (= (and d!1270531 (not res!1770961)) b!4321303))

(assert (= (and b!4321303 res!1770962) b!4321304))

(declare-fun b_lambda!127217 () Bool)

(assert (=> (not b_lambda!127217) (not b!4321303)))

(declare-fun m!4915305 () Bool)

(assert (=> b!4321303 m!4915305))

(declare-fun m!4915307 () Bool)

(assert (=> b!4321304 m!4915307))

(assert (=> b!4321230 d!1270531))

(declare-fun d!1270533 () Bool)

(assert (=> d!1270533 (= (isEmpty!28118 lt!1539320) ((_ is Nil!48378) lt!1539320))))

(assert (=> b!4321230 d!1270533))

(declare-fun d!1270535 () Bool)

(declare-fun e!2688499 () Bool)

(assert (=> d!1270535 e!2688499))

(declare-fun res!1770967 () Bool)

(assert (=> d!1270535 (=> (not res!1770967) (not e!2688499))))

(declare-fun lt!1539362 () ListLongMap!1171)

(assert (=> d!1270535 (= res!1770967 (contains!10426 lt!1539362 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lt!1539364 () List!48503)

(assert (=> d!1270535 (= lt!1539362 (ListLongMap!1172 lt!1539364))))

(declare-fun lt!1539365 () Unit!67766)

(declare-fun lt!1539363 () Unit!67766)

(assert (=> d!1270535 (= lt!1539365 lt!1539363)))

(assert (=> d!1270535 (= (getValueByKey!297 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lemmaContainsTupThenGetReturnValue!96 (List!48503 (_ BitVec 64) List!48502) Unit!67766)

(assert (=> d!1270535 (= lt!1539363 (lemmaContainsTupThenGetReturnValue!96 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun insertStrictlySorted!56 (List!48503 (_ BitVec 64) List!48502) List!48503)

(assert (=> d!1270535 (= lt!1539364 (insertStrictlySorted!56 (toList!2554 lt!1539311) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270535 (= (+!330 lt!1539311 (tuple2!47187 lt!1539310 lt!1539317)) lt!1539362)))

(declare-fun b!4321309 () Bool)

(declare-fun res!1770968 () Bool)

(assert (=> b!4321309 (=> (not res!1770968) (not e!2688499))))

(assert (=> b!4321309 (= res!1770968 (= (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4321310 () Bool)

(declare-fun contains!10428 (List!48503 tuple2!47186) Bool)

(assert (=> b!4321310 (= e!2688499 (contains!10428 (toList!2554 lt!1539362) (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (= (and d!1270535 res!1770967) b!4321309))

(assert (= (and b!4321309 res!1770968) b!4321310))

(declare-fun m!4915309 () Bool)

(assert (=> d!1270535 m!4915309))

(declare-fun m!4915311 () Bool)

(assert (=> d!1270535 m!4915311))

(declare-fun m!4915313 () Bool)

(assert (=> d!1270535 m!4915313))

(declare-fun m!4915315 () Bool)

(assert (=> d!1270535 m!4915315))

(declare-fun m!4915317 () Bool)

(assert (=> b!4321309 m!4915317))

(declare-fun m!4915319 () Bool)

(assert (=> b!4321310 m!4915319))

(assert (=> b!4321230 d!1270535))

(declare-fun d!1270537 () Bool)

(declare-fun res!1770969 () Bool)

(declare-fun e!2688500 () Bool)

(assert (=> d!1270537 (=> res!1770969 e!2688500)))

(assert (=> d!1270537 (= res!1770969 ((_ is Nil!48379) (toList!2554 lt!1539314)))))

(assert (=> d!1270537 (= (forall!8811 (toList!2554 lt!1539314) lambda!133834) e!2688500)))

(declare-fun b!4321311 () Bool)

(declare-fun e!2688501 () Bool)

(assert (=> b!4321311 (= e!2688500 e!2688501)))

(declare-fun res!1770970 () Bool)

(assert (=> b!4321311 (=> (not res!1770970) (not e!2688501))))

(assert (=> b!4321311 (= res!1770970 (dynLambda!20507 lambda!133834 (h!53839 (toList!2554 lt!1539314))))))

(declare-fun b!4321312 () Bool)

(assert (=> b!4321312 (= e!2688501 (forall!8811 (t!355382 (toList!2554 lt!1539314)) lambda!133834))))

(assert (= (and d!1270537 (not res!1770969)) b!4321311))

(assert (= (and b!4321311 res!1770970) b!4321312))

(declare-fun b_lambda!127219 () Bool)

(assert (=> (not b_lambda!127219) (not b!4321311)))

(declare-fun m!4915321 () Bool)

(assert (=> b!4321311 m!4915321))

(declare-fun m!4915323 () Bool)

(assert (=> b!4321312 m!4915323))

(assert (=> b!4321230 d!1270537))

(declare-fun bs!606473 () Bool)

(declare-fun b!4321317 () Bool)

(assert (= bs!606473 (and b!4321317 b!4321230)))

(declare-fun lambda!133849 () Int)

(assert (=> bs!606473 (= lambda!133849 lambda!133834)))

(declare-fun bs!606474 () Bool)

(assert (= bs!606474 (and b!4321317 d!1270519)))

(assert (=> bs!606474 (not (= lambda!133849 lambda!133841))))

(declare-fun bs!606475 () Bool)

(assert (= bs!606475 (and b!4321317 d!1270529)))

(assert (=> bs!606475 (= lambda!133849 lambda!133846)))

(declare-fun d!1270539 () Bool)

(declare-fun res!1770975 () Bool)

(declare-fun e!2688504 () Bool)

(assert (=> d!1270539 (=> (not res!1770975) (not e!2688504))))

(assert (=> d!1270539 (= res!1770975 (valid!3764 (v!42753 (underlying!9736 thiss!42308))))))

(assert (=> d!1270539 (= (valid!3763 thiss!42308) e!2688504)))

(declare-fun res!1770976 () Bool)

(assert (=> b!4321317 (=> (not res!1770976) (not e!2688504))))

(assert (=> b!4321317 (= res!1770976 (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133849))))

(declare-fun b!4321318 () Bool)

(assert (=> b!4321318 (= e!2688504 (allKeysSameHashInMap!388 (map!10405 (v!42753 (underlying!9736 thiss!42308))) (hashF!6919 thiss!42308)))))

(assert (= (and d!1270539 res!1770975) b!4321317))

(assert (= (and b!4321317 res!1770976) b!4321318))

(assert (=> d!1270539 m!4915257))

(assert (=> b!4321317 m!4915211))

(declare-fun m!4915325 () Bool)

(assert (=> b!4321317 m!4915325))

(assert (=> b!4321318 m!4915211))

(assert (=> b!4321318 m!4915211))

(declare-fun m!4915327 () Bool)

(assert (=> b!4321318 m!4915327))

(assert (=> b!4321240 d!1270539))

(declare-fun bs!606476 () Bool)

(declare-fun b!4321343 () Bool)

(assert (= bs!606476 (and b!4321343 b!4321230)))

(declare-fun lambda!133852 () Int)

(assert (=> bs!606476 (= lambda!133852 lambda!133834)))

(declare-fun bs!606477 () Bool)

(assert (= bs!606477 (and b!4321343 d!1270519)))

(assert (=> bs!606477 (not (= lambda!133852 lambda!133841))))

(declare-fun bs!606478 () Bool)

(assert (= bs!606478 (and b!4321343 d!1270529)))

(assert (=> bs!606478 (= lambda!133852 lambda!133846)))

(declare-fun bs!606479 () Bool)

(assert (= bs!606479 (and b!4321343 b!4321317)))

(assert (=> bs!606479 (= lambda!133852 lambda!133849)))

(declare-fun bm!299506 () Bool)

(declare-fun call!299512 () (_ BitVec 64))

(assert (=> bm!299506 (= call!299512 (hash!1175 (hashF!6919 thiss!42308) key!2048))))

(declare-fun b!4321341 () Bool)

(declare-fun e!2688525 () Bool)

(declare-fun call!299516 () Bool)

(assert (=> b!4321341 (= e!2688525 call!299516)))

(declare-fun bm!299507 () Bool)

(declare-datatypes ((Option!10301 0))(
  ( (None!10300) (Some!10300 (v!42759 tuple2!47184)) )
))
(declare-fun call!299514 () Option!10301)

(declare-fun call!299511 () List!48502)

(declare-fun getPair!162 (List!48502 K!9629) Option!10301)

(assert (=> bm!299507 (= call!299514 (getPair!162 call!299511 key!2048))))

(declare-fun b!4321342 () Bool)

(declare-fun e!2688522 () Unit!67766)

(declare-fun Unit!67769 () Unit!67766)

(assert (=> b!4321342 (= e!2688522 Unit!67769)))

(declare-fun lt!1539410 () (_ BitVec 64))

(declare-fun forallContained!1532 (List!48503 Int tuple2!47186) Unit!67766)

(assert (=> b!4321343 (= e!2688522 (forallContained!1532 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun c!734948 () Bool)

(assert (=> b!4321343 (= c!734948 (not (contains!10428 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))))

(declare-fun lt!1539411 () Unit!67766)

(declare-fun e!2688520 () Unit!67766)

(assert (=> b!4321343 (= lt!1539411 e!2688520)))

(declare-fun b!4321344 () Bool)

(declare-fun e!2688524 () Unit!67766)

(declare-fun e!2688521 () Unit!67766)

(assert (=> b!4321344 (= e!2688524 e!2688521)))

(declare-fun res!1770985 () Bool)

(declare-fun call!299513 () Bool)

(assert (=> b!4321344 (= res!1770985 call!299513)))

(assert (=> b!4321344 (=> (not res!1770985) (not e!2688525))))

(declare-fun c!734949 () Bool)

(assert (=> b!4321344 (= c!734949 e!2688525)))

(declare-fun b!4321345 () Bool)

(declare-fun Unit!67770 () Unit!67766)

(assert (=> b!4321345 (= e!2688520 Unit!67770)))

(declare-fun lt!1539421 () ListLongMap!1171)

(declare-fun call!299515 () ListLongMap!1171)

(declare-fun c!734950 () Bool)

(declare-fun bm!299508 () Bool)

(declare-fun apply!11141 (ListLongMap!1171 (_ BitVec 64)) List!48502)

(assert (=> bm!299508 (= call!299511 (apply!11141 (ite c!734950 lt!1539421 call!299515) call!299512))))

(declare-fun b!4321346 () Bool)

(declare-fun lt!1539419 () Unit!67766)

(assert (=> b!4321346 (= e!2688524 lt!1539419)))

(assert (=> b!4321346 (= lt!1539421 call!299515)))

(declare-fun lemmaInGenericMapThenInLongMap!162 (ListLongMap!1171 K!9629 Hashable!4669) Unit!67766)

(assert (=> b!4321346 (= lt!1539419 (lemmaInGenericMapThenInLongMap!162 lt!1539421 key!2048 (hashF!6919 thiss!42308)))))

(declare-fun res!1770983 () Bool)

(assert (=> b!4321346 (= res!1770983 call!299513)))

(declare-fun e!2688523 () Bool)

(assert (=> b!4321346 (=> (not res!1770983) (not e!2688523))))

(assert (=> b!4321346 e!2688523))

(declare-fun b!4321347 () Bool)

(declare-fun Unit!67771 () Unit!67766)

(assert (=> b!4321347 (= e!2688521 Unit!67771)))

(declare-fun bm!299509 () Bool)

(assert (=> bm!299509 (= call!299515 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))

(declare-fun bm!299510 () Bool)

(declare-fun isDefined!7601 (Option!10301) Bool)

(assert (=> bm!299510 (= call!299516 (isDefined!7601 call!299514))))

(declare-fun bm!299511 () Bool)

(assert (=> bm!299511 (= call!299513 (contains!10426 (ite c!734950 lt!1539421 call!299515) call!299512))))

(declare-fun b!4321348 () Bool)

(assert (=> b!4321348 false))

(declare-fun lt!1539412 () Unit!67766)

(declare-fun lt!1539415 () Unit!67766)

(assert (=> b!4321348 (= lt!1539412 lt!1539415)))

(declare-fun lt!1539416 () List!48503)

(declare-fun lt!1539424 () List!48502)

(assert (=> b!4321348 (contains!10428 lt!1539416 (tuple2!47187 lt!1539410 lt!1539424))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!174 (List!48503 (_ BitVec 64) List!48502) Unit!67766)

(assert (=> b!4321348 (= lt!1539415 (lemmaGetValueByKeyImpliesContainsTuple!174 lt!1539416 lt!1539410 lt!1539424))))

(assert (=> b!4321348 (= lt!1539424 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))

(assert (=> b!4321348 (= lt!1539416 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))

(declare-fun lt!1539407 () Unit!67766)

(declare-fun lt!1539418 () Unit!67766)

(assert (=> b!4321348 (= lt!1539407 lt!1539418)))

(declare-fun lt!1539408 () List!48503)

(declare-fun isDefined!7602 (Option!10300) Bool)

(assert (=> b!4321348 (isDefined!7602 (getValueByKey!297 lt!1539408 lt!1539410))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!216 (List!48503 (_ BitVec 64)) Unit!67766)

(assert (=> b!4321348 (= lt!1539418 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 lt!1539408 lt!1539410))))

(assert (=> b!4321348 (= lt!1539408 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))

(declare-fun lt!1539417 () Unit!67766)

(declare-fun lt!1539406 () Unit!67766)

(assert (=> b!4321348 (= lt!1539417 lt!1539406)))

(declare-fun lt!1539409 () List!48503)

(declare-fun containsKey!401 (List!48503 (_ BitVec 64)) Bool)

(assert (=> b!4321348 (containsKey!401 lt!1539409 lt!1539410)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!163 (List!48503 (_ BitVec 64)) Unit!67766)

(assert (=> b!4321348 (= lt!1539406 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!163 lt!1539409 lt!1539410))))

(assert (=> b!4321348 (= lt!1539409 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))

(declare-fun Unit!67772 () Unit!67766)

(assert (=> b!4321348 (= e!2688520 Unit!67772)))

(declare-fun d!1270541 () Bool)

(declare-fun lt!1539413 () Bool)

(declare-fun contains!10429 (ListMap!1831 K!9629) Bool)

(assert (=> d!1270541 (= lt!1539413 (contains!10429 (map!10406 thiss!42308) key!2048))))

(declare-fun e!2688519 () Bool)

(assert (=> d!1270541 (= lt!1539413 e!2688519)))

(declare-fun res!1770984 () Bool)

(assert (=> d!1270541 (=> (not res!1770984) (not e!2688519))))

(assert (=> d!1270541 (= res!1770984 (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))

(declare-fun lt!1539422 () Unit!67766)

(assert (=> d!1270541 (= lt!1539422 e!2688524)))

(declare-fun extractMap!368 (List!48503) ListMap!1831)

(assert (=> d!1270541 (= c!734950 (contains!10429 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) key!2048))))

(declare-fun lt!1539414 () Unit!67766)

(assert (=> d!1270541 (= lt!1539414 e!2688522)))

(declare-fun c!734951 () Bool)

(assert (=> d!1270541 (= c!734951 (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))

(assert (=> d!1270541 (= lt!1539410 (hash!1175 (hashF!6919 thiss!42308) key!2048))))

(assert (=> d!1270541 (valid!3763 thiss!42308)))

(assert (=> d!1270541 (= (contains!10425 thiss!42308 key!2048) lt!1539413)))

(declare-fun b!4321349 () Bool)

(assert (=> b!4321349 (= e!2688519 (isDefined!7601 (getPair!162 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048)))))

(declare-fun b!4321350 () Bool)

(assert (=> b!4321350 false))

(declare-fun lt!1539425 () Unit!67766)

(declare-fun lt!1539423 () Unit!67766)

(assert (=> b!4321350 (= lt!1539425 lt!1539423)))

(declare-fun lt!1539420 () ListLongMap!1171)

(assert (=> b!4321350 (contains!10429 (extractMap!368 (toList!2554 lt!1539420)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!162 (ListLongMap!1171 K!9629 Hashable!4669) Unit!67766)

(assert (=> b!4321350 (= lt!1539423 (lemmaInLongMapThenInGenericMap!162 lt!1539420 key!2048 (hashF!6919 thiss!42308)))))

(assert (=> b!4321350 (= lt!1539420 call!299515)))

(declare-fun Unit!67773 () Unit!67766)

(assert (=> b!4321350 (= e!2688521 Unit!67773)))

(declare-fun b!4321351 () Bool)

(assert (=> b!4321351 (= e!2688523 call!299516)))

(assert (= (and d!1270541 c!734951) b!4321343))

(assert (= (and d!1270541 (not c!734951)) b!4321342))

(assert (= (and b!4321343 c!734948) b!4321348))

(assert (= (and b!4321343 (not c!734948)) b!4321345))

(assert (= (and d!1270541 c!734950) b!4321346))

(assert (= (and d!1270541 (not c!734950)) b!4321344))

(assert (= (and b!4321346 res!1770983) b!4321351))

(assert (= (and b!4321344 res!1770985) b!4321341))

(assert (= (and b!4321344 c!734949) b!4321350))

(assert (= (and b!4321344 (not c!734949)) b!4321347))

(assert (= (or b!4321346 b!4321351 b!4321344 b!4321341) bm!299506))

(assert (= (or b!4321346 b!4321344 b!4321341 b!4321350) bm!299509))

(assert (= (or b!4321351 b!4321341) bm!299508))

(assert (= (or b!4321346 b!4321344) bm!299511))

(assert (= (or b!4321351 b!4321341) bm!299507))

(assert (= (or b!4321351 b!4321341) bm!299510))

(assert (= (and d!1270541 res!1770984) b!4321349))

(declare-fun m!4915329 () Bool)

(assert (=> b!4321346 m!4915329))

(assert (=> bm!299506 m!4915249))

(assert (=> bm!299509 m!4915211))

(declare-fun m!4915331 () Bool)

(assert (=> b!4321348 m!4915331))

(assert (=> b!4321348 m!4915211))

(declare-fun m!4915333 () Bool)

(assert (=> b!4321348 m!4915333))

(declare-fun m!4915335 () Bool)

(assert (=> b!4321348 m!4915335))

(declare-fun m!4915337 () Bool)

(assert (=> b!4321348 m!4915337))

(declare-fun m!4915339 () Bool)

(assert (=> b!4321348 m!4915339))

(declare-fun m!4915341 () Bool)

(assert (=> b!4321348 m!4915341))

(declare-fun m!4915343 () Bool)

(assert (=> b!4321348 m!4915343))

(assert (=> b!4321348 m!4915337))

(declare-fun m!4915345 () Bool)

(assert (=> b!4321348 m!4915345))

(declare-fun m!4915347 () Bool)

(assert (=> bm!299508 m!4915347))

(assert (=> b!4321343 m!4915211))

(assert (=> b!4321343 m!4915335))

(declare-fun m!4915349 () Bool)

(assert (=> b!4321343 m!4915349))

(declare-fun m!4915351 () Bool)

(assert (=> b!4321343 m!4915351))

(declare-fun m!4915353 () Bool)

(assert (=> bm!299511 m!4915353))

(assert (=> b!4321349 m!4915335))

(assert (=> b!4321349 m!4915335))

(declare-fun m!4915355 () Bool)

(assert (=> b!4321349 m!4915355))

(assert (=> b!4321349 m!4915355))

(declare-fun m!4915357 () Bool)

(assert (=> b!4321349 m!4915357))

(declare-fun m!4915359 () Bool)

(assert (=> bm!299510 m!4915359))

(assert (=> d!1270541 m!4915211))

(assert (=> d!1270541 m!4915213))

(assert (=> d!1270541 m!4915213))

(declare-fun m!4915361 () Bool)

(assert (=> d!1270541 m!4915361))

(assert (=> d!1270541 m!4915249))

(declare-fun m!4915363 () Bool)

(assert (=> d!1270541 m!4915363))

(declare-fun m!4915365 () Bool)

(assert (=> d!1270541 m!4915365))

(assert (=> d!1270541 m!4915363))

(assert (=> d!1270541 m!4915205))

(declare-fun m!4915367 () Bool)

(assert (=> d!1270541 m!4915367))

(declare-fun m!4915369 () Bool)

(assert (=> b!4321350 m!4915369))

(assert (=> b!4321350 m!4915369))

(declare-fun m!4915371 () Bool)

(assert (=> b!4321350 m!4915371))

(declare-fun m!4915373 () Bool)

(assert (=> b!4321350 m!4915373))

(declare-fun m!4915375 () Bool)

(assert (=> bm!299507 m!4915375))

(assert (=> b!4321239 d!1270541))

(declare-fun d!1270543 () Bool)

(declare-fun map!10407 (LongMapFixedSize!9506) ListLongMap!1171)

(assert (=> d!1270543 (= (map!10405 (v!42753 (underlying!9736 thiss!42308))) (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun bs!606480 () Bool)

(assert (= bs!606480 d!1270543))

(declare-fun m!4915377 () Bool)

(assert (=> bs!606480 m!4915377))

(assert (=> b!4321239 d!1270543))

(declare-fun d!1270545 () Bool)

(declare-fun lt!1539428 () ListMap!1831)

(declare-fun invariantList!601 (List!48502) Bool)

(assert (=> d!1270545 (invariantList!601 (toList!2555 lt!1539428))))

(assert (=> d!1270545 (= lt!1539428 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270545 (valid!3763 thiss!42308)))

(assert (=> d!1270545 (= (map!10406 thiss!42308) lt!1539428)))

(declare-fun bs!606481 () Bool)

(assert (= bs!606481 d!1270545))

(declare-fun m!4915379 () Bool)

(assert (=> bs!606481 m!4915379))

(assert (=> bs!606481 m!4915211))

(assert (=> bs!606481 m!4915363))

(assert (=> bs!606481 m!4915205))

(assert (=> b!4321239 d!1270545))

(declare-fun bs!606482 () Bool)

(declare-fun d!1270547 () Bool)

(assert (= bs!606482 (and d!1270547 b!4321317)))

(declare-fun lambda!133855 () Int)

(assert (=> bs!606482 (not (= lambda!133855 lambda!133849))))

(declare-fun bs!606483 () Bool)

(assert (= bs!606483 (and d!1270547 b!4321230)))

(assert (=> bs!606483 (not (= lambda!133855 lambda!133834))))

(declare-fun bs!606484 () Bool)

(assert (= bs!606484 (and d!1270547 d!1270529)))

(assert (=> bs!606484 (not (= lambda!133855 lambda!133846))))

(declare-fun bs!606485 () Bool)

(assert (= bs!606485 (and d!1270547 b!4321343)))

(assert (=> bs!606485 (not (= lambda!133855 lambda!133852))))

(declare-fun bs!606486 () Bool)

(assert (= bs!606486 (and d!1270547 d!1270519)))

(assert (=> bs!606486 (= lambda!133855 lambda!133841)))

(assert (=> d!1270547 true))

(assert (=> d!1270547 (= (allKeysSameHashInMap!388 lt!1539311 (hashF!6919 thiss!42308)) (forall!8811 (toList!2554 lt!1539311) lambda!133855))))

(declare-fun bs!606487 () Bool)

(assert (= bs!606487 d!1270547))

(declare-fun m!4915381 () Bool)

(assert (=> bs!606487 m!4915381))

(assert (=> b!4321234 d!1270547))

(declare-fun bs!606488 () Bool)

(declare-fun d!1270549 () Bool)

(assert (= bs!606488 (and d!1270549 d!1270515)))

(declare-fun lambda!133856 () Int)

(assert (=> bs!606488 (= lambda!133856 lambda!133837)))

(declare-fun bs!606489 () Bool)

(assert (= bs!606489 (and d!1270549 d!1270517)))

(assert (=> bs!606489 (= lambda!133856 lambda!133838)))

(assert (=> d!1270549 true))

(assert (=> d!1270549 true))

(assert (=> d!1270549 (= (allKeysSameHash!244 lt!1539317 lt!1539310 (hashF!6919 thiss!42308)) (forall!8812 lt!1539317 lambda!133856))))

(declare-fun bs!606490 () Bool)

(assert (= bs!606490 d!1270549))

(declare-fun m!4915383 () Bool)

(assert (=> bs!606490 m!4915383))

(assert (=> b!4321233 d!1270549))

(declare-fun bs!606491 () Bool)

(declare-fun d!1270551 () Bool)

(assert (= bs!606491 (and d!1270551 d!1270547)))

(declare-fun lambda!133857 () Int)

(assert (=> bs!606491 (= lambda!133857 lambda!133855)))

(declare-fun bs!606492 () Bool)

(assert (= bs!606492 (and d!1270551 b!4321317)))

(assert (=> bs!606492 (not (= lambda!133857 lambda!133849))))

(declare-fun bs!606493 () Bool)

(assert (= bs!606493 (and d!1270551 b!4321230)))

(assert (=> bs!606493 (not (= lambda!133857 lambda!133834))))

(declare-fun bs!606494 () Bool)

(assert (= bs!606494 (and d!1270551 d!1270529)))

(assert (=> bs!606494 (not (= lambda!133857 lambda!133846))))

(declare-fun bs!606495 () Bool)

(assert (= bs!606495 (and d!1270551 b!4321343)))

(assert (=> bs!606495 (not (= lambda!133857 lambda!133852))))

(declare-fun bs!606496 () Bool)

(assert (= bs!606496 (and d!1270551 d!1270519)))

(assert (=> bs!606496 (= lambda!133857 lambda!133841)))

(assert (=> d!1270551 true))

(assert (=> d!1270551 (= (allKeysSameHashInMap!388 lt!1539314 (hashF!6919 thiss!42308)) (forall!8811 (toList!2554 lt!1539314) lambda!133857))))

(declare-fun bs!606497 () Bool)

(assert (= bs!606497 d!1270551))

(declare-fun m!4915385 () Bool)

(assert (=> bs!606497 m!4915385))

(assert (=> b!4321243 d!1270551))

(declare-fun e!2688531 () Bool)

(declare-fun tp!1326948 () Bool)

(declare-fun b!4321359 () Bool)

(assert (=> b!4321359 (= e!2688531 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326948))))

(declare-fun mapIsEmpty!21189 () Bool)

(declare-fun mapRes!21189 () Bool)

(assert (=> mapIsEmpty!21189 mapRes!21189))

(declare-fun condMapEmpty!21189 () Bool)

(declare-fun mapDefault!21189 () List!48502)

(assert (=> mapNonEmpty!21186 (= condMapEmpty!21189 (= mapRest!21186 ((as const (Array (_ BitVec 32) List!48502)) mapDefault!21189)))))

(assert (=> mapNonEmpty!21186 (= tp!1326937 (and e!2688531 mapRes!21189))))

(declare-fun tp!1326947 () Bool)

(declare-fun b!4321358 () Bool)

(declare-fun e!2688530 () Bool)

(assert (=> b!4321358 (= e!2688530 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326947))))

(declare-fun mapNonEmpty!21189 () Bool)

(declare-fun tp!1326949 () Bool)

(assert (=> mapNonEmpty!21189 (= mapRes!21189 (and tp!1326949 e!2688530))))

(declare-fun mapValue!21189 () List!48502)

(declare-fun mapKey!21189 () (_ BitVec 32))

(declare-fun mapRest!21189 () (Array (_ BitVec 32) List!48502))

(assert (=> mapNonEmpty!21189 (= mapRest!21186 (store mapRest!21189 mapKey!21189 mapValue!21189))))

(assert (= (and mapNonEmpty!21186 condMapEmpty!21189) mapIsEmpty!21189))

(assert (= (and mapNonEmpty!21186 (not condMapEmpty!21189)) mapNonEmpty!21189))

(assert (= (and mapNonEmpty!21189 ((_ is Cons!48378) mapValue!21189)) b!4321358))

(assert (= (and mapNonEmpty!21186 ((_ is Cons!48378) mapDefault!21189)) b!4321359))

(declare-fun m!4915387 () Bool)

(assert (=> mapNonEmpty!21189 m!4915387))

(declare-fun tp!1326952 () Bool)

(declare-fun b!4321364 () Bool)

(declare-fun e!2688534 () Bool)

(assert (=> b!4321364 (= e!2688534 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326952))))

(assert (=> mapNonEmpty!21186 (= tp!1326939 e!2688534)))

(assert (= (and mapNonEmpty!21186 ((_ is Cons!48378) mapValue!21186)) b!4321364))

(declare-fun e!2688535 () Bool)

(declare-fun b!4321365 () Bool)

(declare-fun tp!1326953 () Bool)

(assert (=> b!4321365 (= e!2688535 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326953))))

(assert (=> b!4321235 (= tp!1326936 e!2688535)))

(assert (= (and b!4321235 ((_ is Cons!48378) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) b!4321365))

(declare-fun b!4321366 () Bool)

(declare-fun e!2688536 () Bool)

(declare-fun tp!1326954 () Bool)

(assert (=> b!4321366 (= e!2688536 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326954))))

(assert (=> b!4321235 (= tp!1326935 e!2688536)))

(assert (= (and b!4321235 ((_ is Cons!48378) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) b!4321366))

(declare-fun e!2688537 () Bool)

(declare-fun tp!1326955 () Bool)

(declare-fun b!4321367 () Bool)

(assert (=> b!4321367 (= e!2688537 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326955))))

(assert (=> b!4321231 (= tp!1326940 e!2688537)))

(assert (= (and b!4321231 ((_ is Cons!48378) mapDefault!21186)) b!4321367))

(declare-fun b_lambda!127221 () Bool)

(assert (= b_lambda!127217 (or b!4321230 b_lambda!127221)))

(declare-fun bs!606498 () Bool)

(declare-fun d!1270553 () Bool)

(assert (= bs!606498 (and d!1270553 b!4321230)))

(assert (=> bs!606498 (= (dynLambda!20507 lambda!133834 (h!53839 (toList!2554 lt!1539311))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))))

(declare-fun m!4915389 () Bool)

(assert (=> bs!606498 m!4915389))

(assert (=> b!4321303 d!1270553))

(declare-fun b_lambda!127223 () Bool)

(assert (= b_lambda!127215 (or (and b!4321235 b_free!128971) b_lambda!127223)))

(declare-fun b_lambda!127225 () Bool)

(assert (= b_lambda!127219 (or b!4321230 b_lambda!127225)))

(declare-fun bs!606499 () Bool)

(declare-fun d!1270555 () Bool)

(assert (= bs!606499 (and d!1270555 b!4321230)))

(assert (=> bs!606499 (= (dynLambda!20507 lambda!133834 (h!53839 (toList!2554 lt!1539314))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))))

(declare-fun m!4915391 () Bool)

(assert (=> bs!606499 m!4915391))

(assert (=> b!4321311 d!1270555))

(check-sat (not d!1270543) (not bm!299506) (not b!4321365) (not b!4321367) (not d!1270513) (not b_lambda!127225) b_and!340515 (not d!1270547) b_and!340517 (not d!1270517) (not d!1270521) tp_is_empty!24109 (not bm!299507) (not d!1270551) (not b!4321364) (not b!4321267) (not b!4321312) (not b!4321266) (not b!4321348) (not b_lambda!127223) (not b!4321265) (not tb!257365) (not b!4321264) (not d!1270545) (not b!4321309) (not b!4321366) (not bm!299508) (not bm!299511) (not d!1270511) (not b!4321359) (not b!4321317) (not d!1270539) (not b!4321346) (not b!4321298) (not bm!299492) (not d!1270541) (not d!1270523) (not b!4321304) (not b!4321276) (not bs!606498) (not bm!299510) (not b!4321350) (not bm!299509) (not bs!606499) tp_is_empty!24111 (not b_next!129677) (not d!1270515) (not d!1270529) (not d!1270535) (not b!4321343) (not d!1270507) (not b!4321318) (not mapNonEmpty!21189) (not d!1270549) (not d!1270519) (not bm!299493) (not b!4321349) (not b!4321269) (not b_lambda!127221) (not d!1270509) (not b!4321358) (not b_next!129675) (not b!4321310) (not b!4321294))
(check-sat b_and!340517 b_and!340515 (not b_next!129677) (not b_next!129675))
(get-model)

(declare-fun call!299582 () ListLongMap!1171)

(declare-fun lt!1539494 () (_ BitVec 32))

(declare-fun lt!1539499 () array!17234)

(declare-fun c!734978 () Bool)

(declare-fun c!734981 () Bool)

(declare-fun bm!299560 () Bool)

(declare-fun getCurrentListMap!24 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) Int) ListLongMap!1171)

(assert (=> bm!299560 (= call!299582 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321448 () Bool)

(declare-fun e!2688600 () Bool)

(declare-datatypes ((SeekEntryResult!21 0))(
  ( (Found!21 (index!1464 (_ BitVec 32))) (Undefined!21) (MissingZero!21 (index!1465 (_ BitVec 32))) (MissingVacant!21 (index!1466 (_ BitVec 32))) (Intermediate!21 (undefined!102 Bool) (index!1467 (_ BitVec 32)) (x!750097 (_ BitVec 32))) )
))
(declare-fun lt!1539508 () SeekEntryResult!21)

(assert (=> b!4321448 (= e!2688600 ((_ is Undefined!21) lt!1539508))))

(declare-fun b!4321449 () Bool)

(declare-fun c!734983 () Bool)

(assert (=> b!4321449 (= c!734983 ((_ is MissingVacant!21) lt!1539508))))

(declare-fun e!2688586 () Bool)

(assert (=> b!4321449 (= e!2688586 e!2688600)))

(declare-fun b!4321450 () Bool)

(declare-fun e!2688588 () ListLongMap!1171)

(assert (=> b!4321450 (= e!2688588 call!299582)))

(declare-fun b!4321451 () Bool)

(declare-fun e!2688584 () Unit!67766)

(declare-fun lt!1539490 () Unit!67766)

(assert (=> b!4321451 (= e!2688584 lt!1539490)))

(declare-fun call!299572 () Unit!67766)

(assert (=> b!4321451 (= lt!1539490 call!299572)))

(declare-fun lt!1539487 () SeekEntryResult!21)

(declare-fun call!299574 () SeekEntryResult!21)

(assert (=> b!4321451 (= lt!1539487 call!299574)))

(declare-fun res!1771014 () Bool)

(assert (=> b!4321451 (= res!1771014 ((_ is Found!21) lt!1539487))))

(declare-fun e!2688581 () Bool)

(assert (=> b!4321451 (=> (not res!1771014) (not e!2688581))))

(assert (=> b!4321451 e!2688581))

(declare-fun bm!299561 () Bool)

(declare-fun c!734988 () Bool)

(declare-fun c!734986 () Bool)

(assert (=> bm!299561 (= c!734988 c!734986)))

(declare-fun call!299588 () Bool)

(declare-fun lt!1539497 () SeekEntryResult!21)

(assert (=> bm!299561 (= call!299588 (contains!10426 e!2688588 (ite c!734986 lt!1539310 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497)))))))

(declare-fun b!4321452 () Bool)

(declare-fun e!2688598 () tuple2!47190)

(declare-fun e!2688594 () tuple2!47190)

(assert (=> b!4321452 (= e!2688598 e!2688594)))

(assert (=> b!4321452 (= c!734978 (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!1270557 () Bool)

(declare-fun e!2688597 () Bool)

(assert (=> d!1270557 e!2688597))

(declare-fun res!1771026 () Bool)

(assert (=> d!1270557 (=> (not res!1771026) (not e!2688597))))

(declare-fun lt!1539503 () tuple2!47190)

(declare-fun valid!3765 (LongMapFixedSize!9506) Bool)

(assert (=> d!1270557 (= res!1771026 (valid!3765 (_2!26881 lt!1539503)))))

(assert (=> d!1270557 (= lt!1539503 e!2688598)))

(assert (=> d!1270557 (= c!734981 (= lt!1539310 (bvneg lt!1539310)))))

(assert (=> d!1270557 (valid!3765 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))

(assert (=> d!1270557 (= (update!530 (v!42752 (underlying!9735 (_2!26880 lt!1539329))) lt!1539310 lt!1539317) lt!1539503)))

(declare-fun b!4321453 () Bool)

(declare-fun c!734979 () Bool)

(declare-fun lt!1539506 () SeekEntryResult!21)

(assert (=> b!4321453 (= c!734979 ((_ is MissingVacant!21) lt!1539506))))

(declare-fun e!2688590 () Bool)

(declare-fun e!2688591 () Bool)

(assert (=> b!4321453 (= e!2688590 e!2688591)))

(declare-fun bm!299562 () Bool)

(declare-fun call!299571 () SeekEntryResult!21)

(declare-fun call!299586 () SeekEntryResult!21)

(assert (=> bm!299562 (= call!299571 call!299586)))

(declare-fun bm!299563 () Bool)

(declare-fun call!299570 () Bool)

(declare-fun call!299569 () Bool)

(assert (=> bm!299563 (= call!299570 call!299569)))

(declare-fun b!4321454 () Bool)

(declare-fun e!2688587 () Bool)

(declare-fun call!299565 () Bool)

(assert (=> b!4321454 (= e!2688587 (not call!299565))))

(declare-fun b!4321455 () Bool)

(declare-fun e!2688585 () Bool)

(declare-fun call!299577 () Bool)

(assert (=> b!4321455 (= e!2688585 (not call!299577))))

(declare-fun bm!299564 () Bool)

(declare-fun call!299573 () Bool)

(declare-fun call!299575 () Bool)

(assert (=> bm!299564 (= call!299573 call!299575)))

(declare-fun b!4321456 () Bool)

(declare-fun e!2688589 () tuple2!47190)

(declare-fun e!2688599 () tuple2!47190)

(assert (=> b!4321456 (= e!2688589 e!2688599)))

(declare-fun c!734987 () Bool)

(assert (=> b!4321456 (= c!734987 ((_ is MissingZero!21) lt!1539497))))

(declare-fun bm!299565 () Bool)

(assert (=> bm!299565 (= call!299575 call!299569)))

(declare-fun b!4321457 () Bool)

(declare-fun lt!1539502 () Unit!67766)

(declare-fun lt!1539495 () Unit!67766)

(assert (=> b!4321457 (= lt!1539502 lt!1539495)))

(assert (=> b!4321457 call!299588))

(declare-fun lemmaValidKeyInArrayIsInListMap!14 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) Int) Unit!67766)

(assert (=> b!4321457 (= lt!1539495 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (index!1464 lt!1539497) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> b!4321457 (= lt!1539499 (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun lt!1539507 () Unit!67766)

(declare-fun lt!1539485 () Unit!67766)

(assert (=> b!4321457 (= lt!1539507 lt!1539485)))

(declare-fun call!299584 () ListLongMap!1171)

(assert (=> b!4321457 (= call!299584 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) (_ BitVec 64) List!48502 Int) Unit!67766)

(assert (=> b!4321457 (= lt!1539485 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (index!1464 lt!1539497) lt!1539310 lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1539483 () Unit!67766)

(assert (=> b!4321457 (= lt!1539483 e!2688584)))

(declare-fun c!734982 () Bool)

(declare-fun call!299576 () ListLongMap!1171)

(assert (=> b!4321457 (= c!734982 (contains!10426 call!299576 lt!1539310))))

(assert (=> b!4321457 (= e!2688599 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_size!9550 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (_vacant!4815 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299566 () Bool)

(declare-fun call!299579 () Bool)

(assert (=> bm!299566 (= call!299579 call!299570)))

(declare-fun b!4321458 () Bool)

(declare-fun e!2688582 () Unit!67766)

(declare-fun lt!1539500 () Unit!67766)

(assert (=> b!4321458 (= e!2688582 lt!1539500)))

(declare-fun call!299578 () Unit!67766)

(assert (=> b!4321458 (= lt!1539500 call!299578)))

(assert (=> b!4321458 (= lt!1539506 call!299571)))

(declare-fun c!734990 () Bool)

(assert (=> b!4321458 (= c!734990 ((_ is MissingZero!21) lt!1539506))))

(assert (=> b!4321458 e!2688590))

(declare-fun bm!299567 () Bool)

(declare-fun call!299581 () ListLongMap!1171)

(declare-fun call!299566 () ListLongMap!1171)

(assert (=> bm!299567 (= call!299581 call!299566)))

(declare-fun b!4321459 () Bool)

(declare-fun res!1771017 () Bool)

(assert (=> b!4321459 (=> (not res!1771017) (not e!2688587))))

(assert (=> b!4321459 (= res!1771017 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1465 lt!1539506)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4321460 () Bool)

(assert (=> b!4321460 (= e!2688581 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539487)) lt!1539310))))

(declare-fun b!4321461 () Bool)

(declare-fun res!1771020 () Bool)

(assert (=> b!4321461 (=> (not res!1771020) (not e!2688585))))

(assert (=> b!4321461 (= res!1771020 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1465 lt!1539508)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299568 () Bool)

(assert (=> bm!299568 (= call!299574 call!299586)))

(declare-fun e!2688593 () Bool)

(declare-fun call!299587 () ListLongMap!1171)

(declare-fun call!299567 () ListLongMap!1171)

(declare-fun b!4321462 () Bool)

(assert (=> b!4321462 (= e!2688593 (= call!299587 (+!330 call!299567 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4321463 () Bool)

(declare-fun res!1771016 () Bool)

(assert (=> b!4321463 (=> (not res!1771016) (not e!2688585))))

(assert (=> b!4321463 (= res!1771016 call!299579)))

(assert (=> b!4321463 (= e!2688586 e!2688585)))

(declare-fun b!4321464 () Bool)

(declare-fun lt!1539489 () tuple2!47190)

(declare-fun call!299585 () tuple2!47190)

(assert (=> b!4321464 (= lt!1539489 call!299585)))

(assert (=> b!4321464 (= e!2688599 (tuple2!47191 (_1!26881 lt!1539489) (_2!26881 lt!1539489)))))

(declare-fun bm!299569 () Bool)

(declare-fun call!299583 () ListLongMap!1171)

(assert (=> bm!299569 (= call!299583 call!299582)))

(declare-fun bm!299570 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17232 (_ BitVec 32)) SeekEntryResult!21)

(assert (=> bm!299570 (= call!299586 (seekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321465 () Bool)

(declare-fun res!1771018 () Bool)

(assert (=> b!4321465 (= res!1771018 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1466 lt!1539508)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2688592 () Bool)

(assert (=> b!4321465 (=> (not res!1771018) (not e!2688592))))

(declare-fun bm!299571 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) Int) Unit!67766)

(assert (=> bm!299571 (= call!299578 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321466 () Bool)

(declare-fun e!2688596 () Bool)

(assert (=> b!4321466 (= e!2688597 e!2688596)))

(declare-fun c!734985 () Bool)

(assert (=> b!4321466 (= c!734985 (_1!26881 lt!1539503))))

(declare-fun b!4321467 () Bool)

(assert (=> b!4321467 (= e!2688591 ((_ is Undefined!21) lt!1539506))))

(declare-fun bm!299572 () Bool)

(assert (=> bm!299572 (= call!299567 (map!10407 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(declare-fun b!4321468 () Bool)

(assert (=> b!4321468 (= e!2688588 call!299576)))

(declare-fun b!4321469 () Bool)

(declare-fun e!2688580 () tuple2!47190)

(assert (=> b!4321469 (= e!2688598 e!2688580)))

(assert (=> b!4321469 (= lt!1539497 (seekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> b!4321469 (= c!734986 ((_ is Undefined!21) lt!1539497))))

(declare-fun bm!299573 () Bool)

(assert (=> bm!299573 (= call!299584 (+!330 (ite c!734981 (ite c!734978 call!299583 call!299581) call!299576) (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4321470 () Bool)

(declare-fun res!1771023 () Bool)

(assert (=> b!4321470 (= res!1771023 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1466 lt!1539506)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2688595 () Bool)

(assert (=> b!4321470 (=> (not res!1771023) (not e!2688595))))

(declare-fun bm!299574 () Bool)

(declare-fun lt!1539509 () (_ BitVec 32))

(assert (=> bm!299574 (= call!299566 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321471 () Bool)

(assert (=> b!4321471 (= e!2688592 (not call!299577))))

(declare-fun b!4321472 () Bool)

(assert (=> b!4321472 (= e!2688596 e!2688593)))

(declare-fun res!1771024 () Bool)

(assert (=> b!4321472 (= res!1771024 (contains!10426 call!299587 lt!1539310))))

(assert (=> b!4321472 (=> (not res!1771024) (not e!2688593))))

(declare-fun b!4321473 () Bool)

(assert (=> b!4321473 (= e!2688600 e!2688592)))

(declare-fun res!1771019 () Bool)

(assert (=> b!4321473 (= res!1771019 call!299579)))

(assert (=> b!4321473 (=> (not res!1771019) (not e!2688592))))

(declare-fun bm!299575 () Bool)

(declare-fun call!299568 () Bool)

(declare-fun arrayContainsKey!0 (array!17232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!299575 (= call!299568 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun bm!299576 () Bool)

(assert (=> bm!299576 (= call!299577 call!299568)))

(declare-fun b!4321474 () Bool)

(declare-fun Unit!67774 () Unit!67766)

(assert (=> b!4321474 (= e!2688582 Unit!67774)))

(declare-fun lt!1539505 () Unit!67766)

(assert (=> b!4321474 (= lt!1539505 call!299572)))

(declare-fun lt!1539498 () SeekEntryResult!21)

(assert (=> b!4321474 (= lt!1539498 call!299571)))

(declare-fun res!1771027 () Bool)

(assert (=> b!4321474 (= res!1771027 ((_ is Found!21) lt!1539498))))

(declare-fun e!2688583 () Bool)

(assert (=> b!4321474 (=> (not res!1771027) (not e!2688583))))

(assert (=> b!4321474 e!2688583))

(declare-fun lt!1539491 () Unit!67766)

(assert (=> b!4321474 (= lt!1539491 lt!1539505)))

(assert (=> b!4321474 false))

(declare-fun bm!299577 () Bool)

(declare-fun c!734989 () Bool)

(declare-fun updateHelperNewKey!11 (LongMapFixedSize!9506 (_ BitVec 64) List!48502 (_ BitVec 32)) tuple2!47190)

(assert (=> bm!299577 (= call!299585 (updateHelperNewKey!11 (v!42752 (underlying!9735 (_2!26880 lt!1539329))) lt!1539310 lt!1539317 (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497))))))

(declare-fun bm!299578 () Bool)

(assert (=> bm!299578 (= call!299565 call!299568)))

(declare-fun b!4321475 () Bool)

(declare-fun res!1771021 () Bool)

(assert (=> b!4321475 (=> (not res!1771021) (not e!2688587))))

(assert (=> b!4321475 (= res!1771021 call!299573)))

(assert (=> b!4321475 (= e!2688590 e!2688587)))

(declare-fun b!4321476 () Bool)

(declare-fun Unit!67775 () Unit!67766)

(assert (=> b!4321476 (= e!2688584 Unit!67775)))

(declare-fun lt!1539492 () Unit!67766)

(assert (=> b!4321476 (= lt!1539492 call!299578)))

(assert (=> b!4321476 (= lt!1539508 call!299574)))

(declare-fun c!734980 () Bool)

(assert (=> b!4321476 (= c!734980 ((_ is MissingZero!21) lt!1539508))))

(assert (=> b!4321476 e!2688586))

(declare-fun lt!1539504 () Unit!67766)

(assert (=> b!4321476 (= lt!1539504 lt!1539492)))

(assert (=> b!4321476 false))

(declare-fun b!4321477 () Bool)

(declare-fun lt!1539501 () Unit!67766)

(assert (=> b!4321477 (= lt!1539501 e!2688582)))

(declare-fun c!734984 () Bool)

(assert (=> b!4321477 (= c!734984 call!299588)))

(assert (=> b!4321477 (= e!2688580 (tuple2!47191 false (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(declare-fun b!4321478 () Bool)

(declare-fun lt!1539486 () Unit!67766)

(declare-fun lt!1539493 () Unit!67766)

(assert (=> b!4321478 (= lt!1539486 lt!1539493)))

(declare-fun call!299580 () ListLongMap!1171)

(assert (=> b!4321478 (= call!299580 call!299583)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 List!48502 Int) Unit!67766)

(assert (=> b!4321478 (= lt!1539493 (lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> b!4321478 (= lt!1539494 (bvor (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000010))))

(assert (=> b!4321478 (= e!2688594 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (bvor (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000010) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (_size!9550 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_vacant!4815 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4321479 () Bool)

(assert (=> b!4321479 (= e!2688583 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539498)) lt!1539310))))

(declare-fun b!4321480 () Bool)

(assert (=> b!4321480 (= e!2688596 (= call!299587 call!299567))))

(declare-fun bm!299579 () Bool)

(assert (=> bm!299579 (= call!299580 call!299584)))

(declare-fun b!4321481 () Bool)

(declare-fun lt!1539484 () tuple2!47190)

(assert (=> b!4321481 (= e!2688589 (tuple2!47191 (_1!26881 lt!1539484) (_2!26881 lt!1539484)))))

(assert (=> b!4321481 (= lt!1539484 call!299585)))

(declare-fun bm!299580 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) Int) Unit!67766)

(assert (=> bm!299580 (= call!299572 (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun bm!299581 () Bool)

(assert (=> bm!299581 (= call!299587 (map!10407 (_2!26881 lt!1539503)))))

(declare-fun b!4321482 () Bool)

(assert (=> b!4321482 (= c!734989 ((_ is MissingVacant!21) lt!1539497))))

(assert (=> b!4321482 (= e!2688580 e!2688589)))

(declare-fun b!4321483 () Bool)

(declare-fun res!1771025 () Bool)

(assert (=> b!4321483 (= res!1771025 call!299575)))

(assert (=> b!4321483 (=> (not res!1771025) (not e!2688583))))

(declare-fun bm!299582 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!299582 (= call!299569 (inRange!0 (ite c!734986 (ite c!734984 (index!1464 lt!1539498) (ite c!734990 (index!1465 lt!1539506) (index!1466 lt!1539506))) (ite c!734982 (index!1464 lt!1539487) (ite c!734980 (index!1465 lt!1539508) (index!1466 lt!1539508)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321484 () Bool)

(declare-fun res!1771022 () Bool)

(assert (=> b!4321484 (= res!1771022 call!299570)))

(assert (=> b!4321484 (=> (not res!1771022) (not e!2688581))))

(declare-fun b!4321485 () Bool)

(declare-fun lt!1539488 () Unit!67766)

(declare-fun lt!1539496 () Unit!67766)

(assert (=> b!4321485 (= lt!1539488 lt!1539496)))

(assert (=> b!4321485 (= call!299580 call!299581)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 List!48502 Int) Unit!67766)

(assert (=> b!4321485 (= lt!1539496 (lemmaChangeZeroKeyThenAddPairToListMap!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539509 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> b!4321485 (= lt!1539509 (bvor (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001))))

(assert (=> b!4321485 (= e!2688594 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (bvor (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001) lt!1539317 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_size!9550 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_vacant!4815 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299583 () Bool)

(assert (=> bm!299583 (= call!299576 call!299566)))

(declare-fun b!4321486 () Bool)

(assert (=> b!4321486 (= e!2688595 (not call!299565))))

(declare-fun b!4321487 () Bool)

(assert (=> b!4321487 (= e!2688591 e!2688595)))

(declare-fun res!1771015 () Bool)

(assert (=> b!4321487 (= res!1771015 call!299573)))

(assert (=> b!4321487 (=> (not res!1771015) (not e!2688595))))

(assert (= (and d!1270557 c!734981) b!4321452))

(assert (= (and d!1270557 (not c!734981)) b!4321469))

(assert (= (and b!4321452 c!734978) b!4321485))

(assert (= (and b!4321452 (not c!734978)) b!4321478))

(assert (= (or b!4321485 b!4321478) bm!299569))

(assert (= (or b!4321485 b!4321478) bm!299567))

(assert (= (or b!4321485 b!4321478) bm!299579))

(assert (= (and b!4321469 c!734986) b!4321477))

(assert (= (and b!4321469 (not c!734986)) b!4321482))

(assert (= (and b!4321477 c!734984) b!4321474))

(assert (= (and b!4321477 (not c!734984)) b!4321458))

(assert (= (and b!4321474 res!1771027) b!4321483))

(assert (= (and b!4321483 res!1771025) b!4321479))

(assert (= (and b!4321458 c!734990) b!4321475))

(assert (= (and b!4321458 (not c!734990)) b!4321453))

(assert (= (and b!4321475 res!1771021) b!4321459))

(assert (= (and b!4321459 res!1771017) b!4321454))

(assert (= (and b!4321453 c!734979) b!4321487))

(assert (= (and b!4321453 (not c!734979)) b!4321467))

(assert (= (and b!4321487 res!1771015) b!4321470))

(assert (= (and b!4321470 res!1771023) b!4321486))

(assert (= (or b!4321454 b!4321486) bm!299578))

(assert (= (or b!4321475 b!4321487) bm!299564))

(assert (= (or b!4321483 bm!299564) bm!299565))

(assert (= (or b!4321474 b!4321458) bm!299562))

(assert (= (and b!4321482 c!734989) b!4321481))

(assert (= (and b!4321482 (not c!734989)) b!4321456))

(assert (= (and b!4321456 c!734987) b!4321464))

(assert (= (and b!4321456 (not c!734987)) b!4321457))

(assert (= (and b!4321457 c!734982) b!4321451))

(assert (= (and b!4321457 (not c!734982)) b!4321476))

(assert (= (and b!4321451 res!1771014) b!4321484))

(assert (= (and b!4321484 res!1771022) b!4321460))

(assert (= (and b!4321476 c!734980) b!4321463))

(assert (= (and b!4321476 (not c!734980)) b!4321449))

(assert (= (and b!4321463 res!1771016) b!4321461))

(assert (= (and b!4321461 res!1771020) b!4321455))

(assert (= (and b!4321449 c!734983) b!4321473))

(assert (= (and b!4321449 (not c!734983)) b!4321448))

(assert (= (and b!4321473 res!1771019) b!4321465))

(assert (= (and b!4321465 res!1771018) b!4321471))

(assert (= (or b!4321455 b!4321471) bm!299576))

(assert (= (or b!4321463 b!4321473) bm!299566))

(assert (= (or b!4321484 bm!299566) bm!299563))

(assert (= (or b!4321451 b!4321476) bm!299568))

(assert (= (or b!4321481 b!4321464) bm!299577))

(assert (= (or bm!299565 bm!299563) bm!299582))

(assert (= (or bm!299562 bm!299568) bm!299570))

(assert (= (or b!4321458 b!4321476) bm!299571))

(assert (= (or b!4321474 b!4321451) bm!299580))

(assert (= (or bm!299578 bm!299576) bm!299575))

(assert (= (or b!4321477 b!4321457) bm!299583))

(assert (= (or b!4321477 b!4321457) bm!299561))

(assert (= (and bm!299561 c!734988) b!4321468))

(assert (= (and bm!299561 (not c!734988)) b!4321450))

(assert (= (or bm!299569 b!4321450) bm!299560))

(assert (= (or bm!299567 bm!299583) bm!299574))

(assert (= (or bm!299579 b!4321457) bm!299573))

(assert (= (and d!1270557 res!1771026) b!4321466))

(assert (= (and b!4321466 c!734985) b!4321472))

(assert (= (and b!4321466 (not c!734985)) b!4321480))

(assert (= (and b!4321472 res!1771024) b!4321462))

(assert (= (or b!4321462 b!4321480) bm!299572))

(assert (= (or b!4321472 b!4321462 b!4321480) bm!299581))

(declare-fun m!4915393 () Bool)

(assert (=> b!4321485 m!4915393))

(declare-fun m!4915395 () Bool)

(assert (=> bm!299580 m!4915395))

(declare-fun m!4915397 () Bool)

(assert (=> b!4321472 m!4915397))

(declare-fun m!4915399 () Bool)

(assert (=> b!4321457 m!4915399))

(declare-fun m!4915401 () Bool)

(assert (=> b!4321457 m!4915401))

(declare-fun m!4915403 () Bool)

(assert (=> b!4321457 m!4915403))

(declare-fun m!4915405 () Bool)

(assert (=> b!4321457 m!4915405))

(declare-fun m!4915407 () Bool)

(assert (=> b!4321457 m!4915407))

(declare-fun m!4915409 () Bool)

(assert (=> b!4321470 m!4915409))

(declare-fun m!4915411 () Bool)

(assert (=> bm!299560 m!4915411))

(declare-fun m!4915413 () Bool)

(assert (=> bm!299577 m!4915413))

(declare-fun m!4915415 () Bool)

(assert (=> b!4321465 m!4915415))

(declare-fun m!4915417 () Bool)

(assert (=> b!4321462 m!4915417))

(declare-fun m!4915419 () Bool)

(assert (=> bm!299575 m!4915419))

(declare-fun m!4915421 () Bool)

(assert (=> d!1270557 m!4915421))

(declare-fun m!4915423 () Bool)

(assert (=> d!1270557 m!4915423))

(declare-fun m!4915425 () Bool)

(assert (=> b!4321478 m!4915425))

(declare-fun m!4915427 () Bool)

(assert (=> bm!299561 m!4915427))

(declare-fun m!4915429 () Bool)

(assert (=> bm!299561 m!4915429))

(declare-fun m!4915431 () Bool)

(assert (=> bm!299570 m!4915431))

(declare-fun m!4915433 () Bool)

(assert (=> b!4321479 m!4915433))

(declare-fun m!4915435 () Bool)

(assert (=> b!4321460 m!4915435))

(declare-fun m!4915437 () Bool)

(assert (=> b!4321461 m!4915437))

(assert (=> b!4321469 m!4915431))

(declare-fun m!4915439 () Bool)

(assert (=> bm!299582 m!4915439))

(declare-fun m!4915441 () Bool)

(assert (=> bm!299571 m!4915441))

(declare-fun m!4915443 () Bool)

(assert (=> bm!299574 m!4915443))

(declare-fun m!4915445 () Bool)

(assert (=> b!4321459 m!4915445))

(declare-fun m!4915447 () Bool)

(assert (=> bm!299573 m!4915447))

(declare-fun m!4915449 () Bool)

(assert (=> bm!299581 m!4915449))

(declare-fun m!4915451 () Bool)

(assert (=> bm!299572 m!4915451))

(assert (=> b!4321269 d!1270557))

(declare-fun d!1270559 () Bool)

(assert (=> d!1270559 (= (get!15675 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310)) (v!42758 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310)))))

(assert (=> b!4321276 d!1270559))

(declare-fun b!4321496 () Bool)

(declare-fun e!2688605 () Option!10300)

(assert (=> b!4321496 (= e!2688605 (Some!10299 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4321498 () Bool)

(declare-fun e!2688606 () Option!10300)

(assert (=> b!4321498 (= e!2688606 (getValueByKey!297 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(declare-fun d!1270561 () Bool)

(declare-fun c!734995 () Bool)

(assert (=> d!1270561 (= c!734995 (and ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (= (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)))))

(assert (=> d!1270561 (= (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310) e!2688605)))

(declare-fun b!4321499 () Bool)

(assert (=> b!4321499 (= e!2688606 None!10299)))

(declare-fun b!4321497 () Bool)

(assert (=> b!4321497 (= e!2688605 e!2688606)))

(declare-fun c!734996 () Bool)

(assert (=> b!4321497 (= c!734996 (and ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (not (= (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310))))))

(assert (= (and d!1270561 c!734995) b!4321496))

(assert (= (and d!1270561 (not c!734995)) b!4321497))

(assert (= (and b!4321497 c!734996) b!4321498))

(assert (= (and b!4321497 (not c!734996)) b!4321499))

(declare-fun m!4915453 () Bool)

(assert (=> b!4321498 m!4915453))

(assert (=> b!4321276 d!1270561))

(assert (=> b!4321276 d!1270543))

(assert (=> d!1270519 d!1270517))

(declare-fun d!1270563 () Bool)

(assert (=> d!1270563 (allKeysSameHash!244 lt!1539320 lt!1539310 (hashF!6919 thiss!42308))))

(assert (=> d!1270563 true))

(declare-fun _$19!986 () Unit!67766)

(assert (=> d!1270563 (= (choose!26393 (toList!2554 lt!1539311) lt!1539310 lt!1539320 (hashF!6919 thiss!42308)) _$19!986)))

(declare-fun bs!606500 () Bool)

(assert (= bs!606500 d!1270563))

(assert (=> bs!606500 m!4915223))

(assert (=> d!1270519 d!1270563))

(declare-fun d!1270565 () Bool)

(declare-fun res!1771028 () Bool)

(declare-fun e!2688607 () Bool)

(assert (=> d!1270565 (=> res!1771028 e!2688607)))

(assert (=> d!1270565 (= res!1771028 ((_ is Nil!48379) (toList!2554 lt!1539311)))))

(assert (=> d!1270565 (= (forall!8811 (toList!2554 lt!1539311) lambda!133841) e!2688607)))

(declare-fun b!4321500 () Bool)

(declare-fun e!2688608 () Bool)

(assert (=> b!4321500 (= e!2688607 e!2688608)))

(declare-fun res!1771029 () Bool)

(assert (=> b!4321500 (=> (not res!1771029) (not e!2688608))))

(assert (=> b!4321500 (= res!1771029 (dynLambda!20507 lambda!133841 (h!53839 (toList!2554 lt!1539311))))))

(declare-fun b!4321501 () Bool)

(assert (=> b!4321501 (= e!2688608 (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133841))))

(assert (= (and d!1270565 (not res!1771028)) b!4321500))

(assert (= (and b!4321500 res!1771029) b!4321501))

(declare-fun b_lambda!127227 () Bool)

(assert (=> (not b_lambda!127227) (not b!4321500)))

(declare-fun m!4915455 () Bool)

(assert (=> b!4321500 m!4915455))

(declare-fun m!4915457 () Bool)

(assert (=> b!4321501 m!4915457))

(assert (=> d!1270519 d!1270565))

(declare-fun d!1270567 () Bool)

(declare-fun res!1771034 () Bool)

(declare-fun e!2688613 () Bool)

(assert (=> d!1270567 (=> res!1771034 e!2688613)))

(assert (=> d!1270567 (= res!1771034 ((_ is Nil!48378) lt!1539317))))

(assert (=> d!1270567 (= (forall!8812 lt!1539317 lambda!133856) e!2688613)))

(declare-fun b!4321506 () Bool)

(declare-fun e!2688614 () Bool)

(assert (=> b!4321506 (= e!2688613 e!2688614)))

(declare-fun res!1771035 () Bool)

(assert (=> b!4321506 (=> (not res!1771035) (not e!2688614))))

(declare-fun dynLambda!20508 (Int tuple2!47184) Bool)

(assert (=> b!4321506 (= res!1771035 (dynLambda!20508 lambda!133856 (h!53838 lt!1539317)))))

(declare-fun b!4321507 () Bool)

(assert (=> b!4321507 (= e!2688614 (forall!8812 (t!355381 lt!1539317) lambda!133856))))

(assert (= (and d!1270567 (not res!1771034)) b!4321506))

(assert (= (and b!4321506 res!1771035) b!4321507))

(declare-fun b_lambda!127229 () Bool)

(assert (=> (not b_lambda!127229) (not b!4321506)))

(declare-fun m!4915459 () Bool)

(assert (=> b!4321506 m!4915459))

(declare-fun m!4915461 () Bool)

(assert (=> b!4321507 m!4915461))

(assert (=> d!1270549 d!1270567))

(declare-fun d!1270569 () Bool)

(declare-fun res!1771036 () Bool)

(declare-fun e!2688615 () Bool)

(assert (=> d!1270569 (=> res!1771036 e!2688615)))

(assert (=> d!1270569 (= res!1771036 ((_ is Nil!48378) (removePairForKey!267 lt!1539320 key!2048)))))

(assert (=> d!1270569 (= (forall!8812 (removePairForKey!267 lt!1539320 key!2048) lambda!133837) e!2688615)))

(declare-fun b!4321508 () Bool)

(declare-fun e!2688616 () Bool)

(assert (=> b!4321508 (= e!2688615 e!2688616)))

(declare-fun res!1771037 () Bool)

(assert (=> b!4321508 (=> (not res!1771037) (not e!2688616))))

(assert (=> b!4321508 (= res!1771037 (dynLambda!20508 lambda!133837 (h!53838 (removePairForKey!267 lt!1539320 key!2048))))))

(declare-fun b!4321509 () Bool)

(assert (=> b!4321509 (= e!2688616 (forall!8812 (t!355381 (removePairForKey!267 lt!1539320 key!2048)) lambda!133837))))

(assert (= (and d!1270569 (not res!1771036)) b!4321508))

(assert (= (and b!4321508 res!1771037) b!4321509))

(declare-fun b_lambda!127231 () Bool)

(assert (=> (not b_lambda!127231) (not b!4321508)))

(declare-fun m!4915463 () Bool)

(assert (=> b!4321508 m!4915463))

(declare-fun m!4915465 () Bool)

(assert (=> b!4321509 m!4915465))

(assert (=> d!1270515 d!1270569))

(declare-fun bm!299592 () Bool)

(declare-fun call!299597 () tuple2!47190)

(declare-fun call!299598 () tuple2!47190)

(assert (=> bm!299592 (= call!299597 call!299598)))

(declare-fun bm!299593 () Bool)

(declare-fun call!299600 () LongMapFixedSize!9506)

(declare-fun lt!1539530 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!27 ((_ BitVec 32) Int) LongMapFixedSize!9506)

(assert (=> bm!299593 (= call!299600 (getNewLongMapFixedSize!27 lt!1539530 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun d!1270571 () Bool)

(declare-fun e!2688630 () Bool)

(assert (=> d!1270571 e!2688630))

(declare-fun res!1771043 () Bool)

(assert (=> d!1270571 (=> (not res!1771043) (not e!2688630))))

(declare-fun lt!1539532 () tuple2!47188)

(assert (=> d!1270571 (= res!1771043 ((_ is LongMap!4753) (_2!26880 lt!1539532)))))

(declare-datatypes ((tuple3!5506 0))(
  ( (tuple3!5507 (_1!26882 Bool) (_2!26882 Cell!18821) (_3!3286 MutLongMap!4753)) )
))
(declare-fun lt!1539534 () tuple3!5506)

(assert (=> d!1270571 (= lt!1539532 (tuple2!47189 (_1!26882 lt!1539534) (_3!3286 lt!1539534)))))

(declare-fun e!2688632 () tuple3!5506)

(assert (=> d!1270571 (= lt!1539534 e!2688632)))

(declare-fun c!735007 () Bool)

(declare-datatypes ((tuple2!47192 0))(
  ( (tuple2!47193 (_1!26883 Bool) (_2!26883 Cell!18821)) )
))
(declare-fun lt!1539539 () tuple2!47192)

(assert (=> d!1270571 (= c!735007 (not (_1!26883 lt!1539539)))))

(declare-fun e!2688629 () tuple2!47192)

(assert (=> d!1270571 (= lt!1539539 e!2688629)))

(declare-fun c!735006 () Bool)

(assert (=> d!1270571 (= c!735006 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1539531 () Cell!18821)

(assert (=> d!1270571 (= lt!1539531 (Cell!18822 (getNewLongMapFixedSize!27 lt!1539530 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun computeNewMask!13 (MutLongMap!4753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1270571 (= lt!1539530 (computeNewMask!13 (v!42753 (underlying!9736 thiss!42308)) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270571 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270571 (= (repack!84 (v!42753 (underlying!9736 thiss!42308))) lt!1539532)))

(declare-fun bm!299594 () Bool)

(declare-fun call!299599 () LongMapFixedSize!9506)

(assert (=> bm!299594 (= call!299599 call!299600)))

(declare-fun b!4321530 () Bool)

(declare-fun lt!1539533 () tuple2!47190)

(assert (=> b!4321530 (= e!2688632 (ite (_1!26881 lt!1539533) (tuple3!5507 true (underlying!9735 (v!42753 (underlying!9736 thiss!42308))) (LongMap!4753 (Cell!18822 (_2!26881 lt!1539533)))) (tuple3!5507 false (Cell!18822 (_2!26881 lt!1539533)) (v!42753 (underlying!9736 thiss!42308)))))))

(declare-fun repackFrom!13 (MutLongMap!4753 LongMapFixedSize!9506 (_ BitVec 32)) tuple2!47190)

(assert (=> b!4321530 (= lt!1539533 (repackFrom!13 (v!42753 (underlying!9736 thiss!42308)) (v!42752 (_2!26883 lt!1539539)) (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4321531 () Bool)

(declare-fun e!2688634 () Bool)

(assert (=> b!4321531 (= e!2688634 (= (map!10405 (_2!26880 lt!1539532)) (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))

(declare-fun b!4321532 () Bool)

(assert (=> b!4321532 (= e!2688630 e!2688634)))

(declare-fun res!1771042 () Bool)

(assert (=> b!4321532 (=> res!1771042 e!2688634)))

(assert (=> b!4321532 (= res!1771042 (= (_1!26880 lt!1539532) false))))

(declare-fun b!4321533 () Bool)

(declare-fun e!2688631 () tuple2!47192)

(declare-fun lt!1539537 () tuple2!47190)

(assert (=> b!4321533 (= e!2688631 (tuple2!47193 (_1!26881 lt!1539537) (Cell!18822 (_2!26881 lt!1539537))))))

(assert (=> b!4321533 (= lt!1539537 call!299597)))

(declare-fun b!4321534 () Bool)

(declare-fun lt!1539536 () tuple2!47190)

(declare-fun lt!1539538 () tuple2!47190)

(assert (=> b!4321534 (= e!2688629 (tuple2!47193 (and (_1!26881 lt!1539536) (_1!26881 lt!1539538)) (Cell!18822 (_2!26881 lt!1539538))))))

(assert (=> b!4321534 (= lt!1539536 (update!530 call!299600 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4321534 (= lt!1539538 call!299598)))

(declare-fun b!4321535 () Bool)

(declare-fun lt!1539535 () tuple2!47190)

(assert (=> b!4321535 (= lt!1539535 call!299597)))

(declare-fun e!2688633 () tuple2!47192)

(assert (=> b!4321535 (= e!2688633 (tuple2!47193 (_1!26881 lt!1539535) (Cell!18822 (_2!26881 lt!1539535))))))

(declare-fun b!4321536 () Bool)

(assert (=> b!4321536 (= e!2688629 e!2688633)))

(declare-fun c!735005 () Bool)

(assert (=> b!4321536 (= c!735005 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4321537 () Bool)

(declare-fun c!735008 () Bool)

(assert (=> b!4321537 (= c!735008 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4321537 (= e!2688633 e!2688631)))

(declare-fun b!4321538 () Bool)

(assert (=> b!4321538 (= e!2688631 (tuple2!47193 true lt!1539531))))

(declare-fun b!4321539 () Bool)

(assert (=> b!4321539 (= e!2688632 (tuple3!5507 false (_2!26883 lt!1539539) (v!42753 (underlying!9736 thiss!42308))))))

(declare-fun bm!299595 () Bool)

(assert (=> bm!299595 (= call!299598 (update!530 (ite c!735006 (_2!26881 lt!1539536) call!299599) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (= (and d!1270571 c!735006) b!4321534))

(assert (= (and d!1270571 (not c!735006)) b!4321536))

(assert (= (and b!4321536 c!735005) b!4321535))

(assert (= (and b!4321536 (not c!735005)) b!4321537))

(assert (= (and b!4321537 c!735008) b!4321533))

(assert (= (and b!4321537 (not c!735008)) b!4321538))

(assert (= (or b!4321535 b!4321533) bm!299594))

(assert (= (or b!4321535 b!4321533) bm!299592))

(assert (= (or b!4321534 bm!299594) bm!299593))

(assert (= (or b!4321534 bm!299592) bm!299595))

(assert (= (and d!1270571 c!735007) b!4321539))

(assert (= (and d!1270571 (not c!735007)) b!4321530))

(assert (= (and d!1270571 res!1771043) b!4321532))

(assert (= (and b!4321532 (not res!1771042)) b!4321531))

(declare-fun m!4915467 () Bool)

(assert (=> d!1270571 m!4915467))

(declare-fun m!4915469 () Bool)

(assert (=> d!1270571 m!4915469))

(assert (=> d!1270571 m!4915257))

(declare-fun m!4915471 () Bool)

(assert (=> b!4321531 m!4915471))

(assert (=> b!4321531 m!4915211))

(declare-fun m!4915473 () Bool)

(assert (=> bm!299595 m!4915473))

(declare-fun m!4915475 () Bool)

(assert (=> b!4321530 m!4915475))

(declare-fun m!4915477 () Bool)

(assert (=> b!4321534 m!4915477))

(assert (=> bm!299593 m!4915467))

(assert (=> b!4321267 d!1270571))

(declare-fun b!4321556 () Bool)

(declare-fun e!2688648 () Option!10301)

(assert (=> b!4321556 (= e!2688648 (getPair!162 (t!355381 call!299511) key!2048))))

(declare-fun b!4321557 () Bool)

(declare-fun e!2688645 () Option!10301)

(assert (=> b!4321557 (= e!2688645 (Some!10300 (h!53838 call!299511)))))

(declare-fun b!4321558 () Bool)

(assert (=> b!4321558 (= e!2688648 None!10300)))

(declare-fun b!4321559 () Bool)

(declare-fun e!2688647 () Bool)

(assert (=> b!4321559 (= e!2688647 (not (containsKey!400 call!299511 key!2048)))))

(declare-fun b!4321561 () Bool)

(declare-fun e!2688646 () Bool)

(declare-fun lt!1539542 () Option!10301)

(declare-fun contains!10430 (List!48502 tuple2!47184) Bool)

(declare-fun get!15676 (Option!10301) tuple2!47184)

(assert (=> b!4321561 (= e!2688646 (contains!10430 call!299511 (get!15676 lt!1539542)))))

(declare-fun b!4321562 () Bool)

(declare-fun e!2688649 () Bool)

(assert (=> b!4321562 (= e!2688649 e!2688646)))

(declare-fun res!1771052 () Bool)

(assert (=> b!4321562 (=> (not res!1771052) (not e!2688646))))

(assert (=> b!4321562 (= res!1771052 (isDefined!7601 lt!1539542))))

(declare-fun b!4321563 () Bool)

(assert (=> b!4321563 (= e!2688645 e!2688648)))

(declare-fun c!735013 () Bool)

(assert (=> b!4321563 (= c!735013 ((_ is Cons!48378) call!299511))))

(declare-fun b!4321560 () Bool)

(declare-fun res!1771053 () Bool)

(assert (=> b!4321560 (=> (not res!1771053) (not e!2688646))))

(assert (=> b!4321560 (= res!1771053 (= (_1!26878 (get!15676 lt!1539542)) key!2048))))

(declare-fun d!1270573 () Bool)

(assert (=> d!1270573 e!2688649))

(declare-fun res!1771054 () Bool)

(assert (=> d!1270573 (=> res!1771054 e!2688649)))

(assert (=> d!1270573 (= res!1771054 e!2688647)))

(declare-fun res!1771055 () Bool)

(assert (=> d!1270573 (=> (not res!1771055) (not e!2688647))))

(declare-fun isEmpty!28119 (Option!10301) Bool)

(assert (=> d!1270573 (= res!1771055 (isEmpty!28119 lt!1539542))))

(assert (=> d!1270573 (= lt!1539542 e!2688645)))

(declare-fun c!735014 () Bool)

(assert (=> d!1270573 (= c!735014 (and ((_ is Cons!48378) call!299511) (= (_1!26878 (h!53838 call!299511)) key!2048)))))

(assert (=> d!1270573 (noDuplicateKeys!262 call!299511)))

(assert (=> d!1270573 (= (getPair!162 call!299511 key!2048) lt!1539542)))

(assert (= (and d!1270573 c!735014) b!4321557))

(assert (= (and d!1270573 (not c!735014)) b!4321563))

(assert (= (and b!4321563 c!735013) b!4321556))

(assert (= (and b!4321563 (not c!735013)) b!4321558))

(assert (= (and d!1270573 res!1771055) b!4321559))

(assert (= (and d!1270573 (not res!1771054)) b!4321562))

(assert (= (and b!4321562 res!1771052) b!4321560))

(assert (= (and b!4321560 res!1771053) b!4321561))

(declare-fun m!4915479 () Bool)

(assert (=> b!4321556 m!4915479))

(declare-fun m!4915481 () Bool)

(assert (=> b!4321561 m!4915481))

(assert (=> b!4321561 m!4915481))

(declare-fun m!4915483 () Bool)

(assert (=> b!4321561 m!4915483))

(assert (=> b!4321560 m!4915481))

(declare-fun m!4915485 () Bool)

(assert (=> d!1270573 m!4915485))

(declare-fun m!4915487 () Bool)

(assert (=> d!1270573 m!4915487))

(declare-fun m!4915489 () Bool)

(assert (=> b!4321559 m!4915489))

(declare-fun m!4915491 () Bool)

(assert (=> b!4321562 m!4915491))

(assert (=> bm!299507 d!1270573))

(declare-fun d!1270575 () Bool)

(declare-fun e!2688654 () Bool)

(assert (=> d!1270575 e!2688654))

(declare-fun res!1771058 () Bool)

(assert (=> d!1270575 (=> res!1771058 e!2688654)))

(declare-fun lt!1539553 () Bool)

(assert (=> d!1270575 (= res!1771058 (not lt!1539553))))

(declare-fun lt!1539554 () Bool)

(assert (=> d!1270575 (= lt!1539553 lt!1539554)))

(declare-fun lt!1539551 () Unit!67766)

(declare-fun e!2688655 () Unit!67766)

(assert (=> d!1270575 (= lt!1539551 e!2688655)))

(declare-fun c!735017 () Bool)

(assert (=> d!1270575 (= c!735017 lt!1539554)))

(assert (=> d!1270575 (= lt!1539554 (containsKey!401 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270575 (= (contains!10426 lt!1539362 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1539553)))

(declare-fun b!4321570 () Bool)

(declare-fun lt!1539552 () Unit!67766)

(assert (=> b!4321570 (= e!2688655 lt!1539552)))

(assert (=> b!4321570 (= lt!1539552 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> b!4321570 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4321571 () Bool)

(declare-fun Unit!67776 () Unit!67766)

(assert (=> b!4321571 (= e!2688655 Unit!67776)))

(declare-fun b!4321572 () Bool)

(assert (=> b!4321572 (= e!2688654 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (= (and d!1270575 c!735017) b!4321570))

(assert (= (and d!1270575 (not c!735017)) b!4321571))

(assert (= (and d!1270575 (not res!1771058)) b!4321572))

(declare-fun m!4915493 () Bool)

(assert (=> d!1270575 m!4915493))

(declare-fun m!4915495 () Bool)

(assert (=> b!4321570 m!4915495))

(assert (=> b!4321570 m!4915317))

(assert (=> b!4321570 m!4915317))

(declare-fun m!4915497 () Bool)

(assert (=> b!4321570 m!4915497))

(assert (=> b!4321572 m!4915317))

(assert (=> b!4321572 m!4915317))

(assert (=> b!4321572 m!4915497))

(assert (=> d!1270535 d!1270575))

(declare-fun b!4321573 () Bool)

(declare-fun e!2688656 () Option!10300)

(assert (=> b!4321573 (= e!2688656 (Some!10299 (_2!26879 (h!53839 lt!1539364))))))

(declare-fun e!2688657 () Option!10300)

(declare-fun b!4321575 () Bool)

(assert (=> b!4321575 (= e!2688657 (getValueByKey!297 (t!355382 lt!1539364) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun d!1270577 () Bool)

(declare-fun c!735018 () Bool)

(assert (=> d!1270577 (= c!735018 (and ((_ is Cons!48379) lt!1539364) (= (_1!26879 (h!53839 lt!1539364)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270577 (= (getValueByKey!297 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2688656)))

(declare-fun b!4321576 () Bool)

(assert (=> b!4321576 (= e!2688657 None!10299)))

(declare-fun b!4321574 () Bool)

(assert (=> b!4321574 (= e!2688656 e!2688657)))

(declare-fun c!735019 () Bool)

(assert (=> b!4321574 (= c!735019 (and ((_ is Cons!48379) lt!1539364) (not (= (_1!26879 (h!53839 lt!1539364)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(assert (= (and d!1270577 c!735018) b!4321573))

(assert (= (and d!1270577 (not c!735018)) b!4321574))

(assert (= (and b!4321574 c!735019) b!4321575))

(assert (= (and b!4321574 (not c!735019)) b!4321576))

(declare-fun m!4915499 () Bool)

(assert (=> b!4321575 m!4915499))

(assert (=> d!1270535 d!1270577))

(declare-fun d!1270579 () Bool)

(assert (=> d!1270579 (= (getValueByKey!297 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lt!1539557 () Unit!67766)

(declare-fun choose!26396 (List!48503 (_ BitVec 64) List!48502) Unit!67766)

(assert (=> d!1270579 (= lt!1539557 (choose!26396 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun e!2688660 () Bool)

(assert (=> d!1270579 e!2688660))

(declare-fun res!1771063 () Bool)

(assert (=> d!1270579 (=> (not res!1771063) (not e!2688660))))

(declare-fun isStrictlySorted!21 (List!48503) Bool)

(assert (=> d!1270579 (= res!1771063 (isStrictlySorted!21 lt!1539364))))

(assert (=> d!1270579 (= (lemmaContainsTupThenGetReturnValue!96 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1539557)))

(declare-fun b!4321581 () Bool)

(declare-fun res!1771064 () Bool)

(assert (=> b!4321581 (=> (not res!1771064) (not e!2688660))))

(assert (=> b!4321581 (= res!1771064 (containsKey!401 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4321582 () Bool)

(assert (=> b!4321582 (= e!2688660 (contains!10428 lt!1539364 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (= (and d!1270579 res!1771063) b!4321581))

(assert (= (and b!4321581 res!1771064) b!4321582))

(assert (=> d!1270579 m!4915311))

(declare-fun m!4915501 () Bool)

(assert (=> d!1270579 m!4915501))

(declare-fun m!4915503 () Bool)

(assert (=> d!1270579 m!4915503))

(declare-fun m!4915505 () Bool)

(assert (=> b!4321581 m!4915505))

(declare-fun m!4915507 () Bool)

(assert (=> b!4321582 m!4915507))

(assert (=> d!1270535 d!1270579))

(declare-fun c!735031 () Bool)

(declare-fun b!4321603 () Bool)

(assert (=> b!4321603 (= c!735031 (and ((_ is Cons!48379) (toList!2554 lt!1539311)) (bvsgt (_1!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun e!2688671 () List!48503)

(declare-fun e!2688672 () List!48503)

(assert (=> b!4321603 (= e!2688671 e!2688672)))

(declare-fun e!2688673 () Bool)

(declare-fun b!4321604 () Bool)

(declare-fun lt!1539560 () List!48503)

(assert (=> b!4321604 (= e!2688673 (contains!10428 lt!1539560 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun call!299609 () List!48503)

(declare-fun c!735028 () Bool)

(declare-fun bm!299602 () Bool)

(declare-fun e!2688674 () List!48503)

(declare-fun $colon$colon!661 (List!48503 tuple2!47186) List!48503)

(assert (=> bm!299602 (= call!299609 ($colon$colon!661 e!2688674 (ite c!735028 (h!53839 (toList!2554 lt!1539311)) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(declare-fun c!735029 () Bool)

(assert (=> bm!299602 (= c!735029 c!735028)))

(declare-fun b!4321606 () Bool)

(declare-fun call!299608 () List!48503)

(assert (=> b!4321606 (= e!2688672 call!299608)))

(declare-fun b!4321607 () Bool)

(assert (=> b!4321607 (= e!2688672 call!299608)))

(declare-fun b!4321608 () Bool)

(declare-fun call!299607 () List!48503)

(assert (=> b!4321608 (= e!2688671 call!299607)))

(declare-fun b!4321609 () Bool)

(declare-fun e!2688675 () List!48503)

(assert (=> b!4321609 (= e!2688675 e!2688671)))

(declare-fun c!735030 () Bool)

(assert (=> b!4321609 (= c!735030 (and ((_ is Cons!48379) (toList!2554 lt!1539311)) (= (_1!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun bm!299603 () Bool)

(assert (=> bm!299603 (= call!299607 call!299609)))

(declare-fun b!4321610 () Bool)

(assert (=> b!4321610 (= e!2688675 call!299609)))

(declare-fun b!4321611 () Bool)

(assert (=> b!4321611 (= e!2688674 (insertStrictlySorted!56 (t!355382 (toList!2554 lt!1539311)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4321605 () Bool)

(assert (=> b!4321605 (= e!2688674 (ite c!735030 (t!355382 (toList!2554 lt!1539311)) (ite c!735031 (Cons!48379 (h!53839 (toList!2554 lt!1539311)) (t!355382 (toList!2554 lt!1539311))) Nil!48379)))))

(declare-fun d!1270581 () Bool)

(assert (=> d!1270581 e!2688673))

(declare-fun res!1771069 () Bool)

(assert (=> d!1270581 (=> (not res!1771069) (not e!2688673))))

(assert (=> d!1270581 (= res!1771069 (isStrictlySorted!21 lt!1539560))))

(assert (=> d!1270581 (= lt!1539560 e!2688675)))

(assert (=> d!1270581 (= c!735028 (and ((_ is Cons!48379) (toList!2554 lt!1539311)) (bvslt (_1!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270581 (isStrictlySorted!21 (toList!2554 lt!1539311))))

(assert (=> d!1270581 (= (insertStrictlySorted!56 (toList!2554 lt!1539311) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1539560)))

(declare-fun b!4321612 () Bool)

(declare-fun res!1771070 () Bool)

(assert (=> b!4321612 (=> (not res!1771070) (not e!2688673))))

(assert (=> b!4321612 (= res!1771070 (containsKey!401 lt!1539560 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun bm!299604 () Bool)

(assert (=> bm!299604 (= call!299608 call!299607)))

(assert (= (and d!1270581 c!735028) b!4321610))

(assert (= (and d!1270581 (not c!735028)) b!4321609))

(assert (= (and b!4321609 c!735030) b!4321608))

(assert (= (and b!4321609 (not c!735030)) b!4321603))

(assert (= (and b!4321603 c!735031) b!4321607))

(assert (= (and b!4321603 (not c!735031)) b!4321606))

(assert (= (or b!4321607 b!4321606) bm!299604))

(assert (= (or b!4321608 bm!299604) bm!299603))

(assert (= (or b!4321610 bm!299603) bm!299602))

(assert (= (and bm!299602 c!735029) b!4321611))

(assert (= (and bm!299602 (not c!735029)) b!4321605))

(assert (= (and d!1270581 res!1771069) b!4321612))

(assert (= (and b!4321612 res!1771070) b!4321604))

(declare-fun m!4915509 () Bool)

(assert (=> b!4321612 m!4915509))

(declare-fun m!4915511 () Bool)

(assert (=> d!1270581 m!4915511))

(declare-fun m!4915513 () Bool)

(assert (=> d!1270581 m!4915513))

(declare-fun m!4915515 () Bool)

(assert (=> b!4321611 m!4915515))

(declare-fun m!4915517 () Bool)

(assert (=> b!4321604 m!4915517))

(declare-fun m!4915519 () Bool)

(assert (=> bm!299602 m!4915519))

(assert (=> d!1270535 d!1270581))

(declare-fun d!1270583 () Bool)

(declare-fun e!2688676 () Bool)

(assert (=> d!1270583 e!2688676))

(declare-fun res!1771071 () Bool)

(assert (=> d!1270583 (=> (not res!1771071) (not e!2688676))))

(declare-fun lt!1539561 () ListLongMap!1171)

(assert (=> d!1270583 (= res!1771071 (contains!10426 lt!1539561 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lt!1539563 () List!48503)

(assert (=> d!1270583 (= lt!1539561 (ListLongMap!1172 lt!1539563))))

(declare-fun lt!1539564 () Unit!67766)

(declare-fun lt!1539562 () Unit!67766)

(assert (=> d!1270583 (= lt!1539564 lt!1539562)))

(assert (=> d!1270583 (= (getValueByKey!297 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270583 (= lt!1539562 (lemmaContainsTupThenGetReturnValue!96 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270583 (= lt!1539563 (insertStrictlySorted!56 (toList!2554 call!299498) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270583 (= (+!330 call!299498 (tuple2!47187 lt!1539310 lt!1539317)) lt!1539561)))

(declare-fun b!4321613 () Bool)

(declare-fun res!1771072 () Bool)

(assert (=> b!4321613 (=> (not res!1771072) (not e!2688676))))

(assert (=> b!4321613 (= res!1771072 (= (getValueByKey!297 (toList!2554 lt!1539561) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4321614 () Bool)

(assert (=> b!4321614 (= e!2688676 (contains!10428 (toList!2554 lt!1539561) (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (= (and d!1270583 res!1771071) b!4321613))

(assert (= (and b!4321613 res!1771072) b!4321614))

(declare-fun m!4915521 () Bool)

(assert (=> d!1270583 m!4915521))

(declare-fun m!4915523 () Bool)

(assert (=> d!1270583 m!4915523))

(declare-fun m!4915525 () Bool)

(assert (=> d!1270583 m!4915525))

(declare-fun m!4915527 () Bool)

(assert (=> d!1270583 m!4915527))

(declare-fun m!4915529 () Bool)

(assert (=> b!4321613 m!4915529))

(declare-fun m!4915531 () Bool)

(assert (=> b!4321614 m!4915531))

(assert (=> b!4321266 d!1270583))

(declare-fun d!1270585 () Bool)

(assert (=> d!1270585 (= (imbalanced!80 (v!42753 (underlying!9736 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (bvsgt (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270507 d!1270585))

(declare-fun d!1270587 () Bool)

(assert (=> d!1270587 (= (valid!3764 (v!42753 (underlying!9736 thiss!42308))) (valid!3765 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun bs!606501 () Bool)

(assert (= bs!606501 d!1270587))

(declare-fun m!4915533 () Bool)

(assert (=> bs!606501 m!4915533))

(assert (=> d!1270507 d!1270587))

(assert (=> bm!299506 d!1270511))

(declare-fun d!1270589 () Bool)

(declare-fun res!1771077 () Bool)

(declare-fun e!2688681 () Bool)

(assert (=> d!1270589 (=> res!1771077 e!2688681)))

(assert (=> d!1270589 (= res!1771077 (not ((_ is Cons!48378) (_2!26879 (h!53839 (toList!2554 lt!1539311))))))))

(assert (=> d!1270589 (= (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539311)))) e!2688681)))

(declare-fun b!4321619 () Bool)

(declare-fun e!2688682 () Bool)

(assert (=> b!4321619 (= e!2688681 e!2688682)))

(declare-fun res!1771078 () Bool)

(assert (=> b!4321619 (=> (not res!1771078) (not e!2688682))))

(assert (=> b!4321619 (= res!1771078 (not (containsKey!400 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311)))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539311))))))))))

(declare-fun b!4321620 () Bool)

(assert (=> b!4321620 (= e!2688682 (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311))))))))

(assert (= (and d!1270589 (not res!1771077)) b!4321619))

(assert (= (and b!4321619 res!1771078) b!4321620))

(declare-fun m!4915535 () Bool)

(assert (=> b!4321619 m!4915535))

(declare-fun m!4915537 () Bool)

(assert (=> b!4321620 m!4915537))

(assert (=> bs!606498 d!1270589))

(declare-fun d!1270591 () Bool)

(assert (=> d!1270591 (= (valid!3764 (_2!26880 lt!1539332)) (valid!3765 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))))))

(declare-fun bs!606502 () Bool)

(assert (= bs!606502 d!1270591))

(declare-fun m!4915539 () Bool)

(assert (=> bs!606502 m!4915539))

(assert (=> b!4321265 d!1270591))

(declare-fun d!1270593 () Bool)

(declare-fun e!2688683 () Bool)

(assert (=> d!1270593 e!2688683))

(declare-fun res!1771079 () Bool)

(assert (=> d!1270593 (=> res!1771079 e!2688683)))

(declare-fun lt!1539567 () Bool)

(assert (=> d!1270593 (= res!1771079 (not lt!1539567))))

(declare-fun lt!1539568 () Bool)

(assert (=> d!1270593 (= lt!1539567 lt!1539568)))

(declare-fun lt!1539565 () Unit!67766)

(declare-fun e!2688684 () Unit!67766)

(assert (=> d!1270593 (= lt!1539565 e!2688684)))

(declare-fun c!735032 () Bool)

(assert (=> d!1270593 (= c!735032 lt!1539568)))

(assert (=> d!1270593 (= lt!1539568 (containsKey!401 (toList!2554 call!299497) lt!1539310))))

(assert (=> d!1270593 (= (contains!10426 call!299497 lt!1539310) lt!1539567)))

(declare-fun b!4321621 () Bool)

(declare-fun lt!1539566 () Unit!67766)

(assert (=> b!4321621 (= e!2688684 lt!1539566)))

(assert (=> b!4321621 (= lt!1539566 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 call!299497) lt!1539310))))

(assert (=> b!4321621 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299497) lt!1539310))))

(declare-fun b!4321622 () Bool)

(declare-fun Unit!67777 () Unit!67766)

(assert (=> b!4321622 (= e!2688684 Unit!67777)))

(declare-fun b!4321623 () Bool)

(assert (=> b!4321623 (= e!2688683 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299497) lt!1539310)))))

(assert (= (and d!1270593 c!735032) b!4321621))

(assert (= (and d!1270593 (not c!735032)) b!4321622))

(assert (= (and d!1270593 (not res!1771079)) b!4321623))

(declare-fun m!4915541 () Bool)

(assert (=> d!1270593 m!4915541))

(declare-fun m!4915543 () Bool)

(assert (=> b!4321621 m!4915543))

(declare-fun m!4915545 () Bool)

(assert (=> b!4321621 m!4915545))

(assert (=> b!4321621 m!4915545))

(declare-fun m!4915547 () Bool)

(assert (=> b!4321621 m!4915547))

(assert (=> b!4321623 m!4915545))

(assert (=> b!4321623 m!4915545))

(assert (=> b!4321623 m!4915547))

(assert (=> b!4321264 d!1270593))

(declare-fun bs!606503 () Bool)

(declare-fun d!1270595 () Bool)

(assert (= bs!606503 (and d!1270595 b!4321317)))

(declare-fun lambda!133858 () Int)

(assert (=> bs!606503 (not (= lambda!133858 lambda!133849))))

(declare-fun bs!606504 () Bool)

(assert (= bs!606504 (and d!1270595 b!4321230)))

(assert (=> bs!606504 (not (= lambda!133858 lambda!133834))))

(declare-fun bs!606505 () Bool)

(assert (= bs!606505 (and d!1270595 d!1270529)))

(assert (=> bs!606505 (not (= lambda!133858 lambda!133846))))

(declare-fun bs!606506 () Bool)

(assert (= bs!606506 (and d!1270595 b!4321343)))

(assert (=> bs!606506 (not (= lambda!133858 lambda!133852))))

(declare-fun bs!606507 () Bool)

(assert (= bs!606507 (and d!1270595 d!1270519)))

(assert (=> bs!606507 (= lambda!133858 lambda!133841)))

(declare-fun bs!606508 () Bool)

(assert (= bs!606508 (and d!1270595 d!1270547)))

(assert (=> bs!606508 (= lambda!133858 lambda!133855)))

(declare-fun bs!606509 () Bool)

(assert (= bs!606509 (and d!1270595 d!1270551)))

(assert (=> bs!606509 (= lambda!133858 lambda!133857)))

(assert (=> d!1270595 true))

(assert (=> d!1270595 (= (allKeysSameHashInMap!388 (map!10405 (v!42753 (underlying!9736 thiss!42308))) (hashF!6919 thiss!42308)) (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133858))))

(declare-fun bs!606510 () Bool)

(assert (= bs!606510 d!1270595))

(declare-fun m!4915549 () Bool)

(assert (=> bs!606510 m!4915549))

(assert (=> b!4321318 d!1270595))

(assert (=> b!4321318 d!1270543))

(declare-fun d!1270597 () Bool)

(declare-fun choose!26397 (Hashable!4669 K!9629) (_ BitVec 64))

(assert (=> d!1270597 (= (hash!1179 (hashF!6919 thiss!42308) key!2048) (choose!26397 (hashF!6919 thiss!42308) key!2048))))

(declare-fun bs!606511 () Bool)

(assert (= bs!606511 d!1270597))

(declare-fun m!4915551 () Bool)

(assert (=> bs!606511 m!4915551))

(assert (=> d!1270511 d!1270597))

(assert (=> d!1270539 d!1270587))

(declare-fun d!1270599 () Bool)

(declare-fun res!1771080 () Bool)

(declare-fun e!2688685 () Bool)

(assert (=> d!1270599 (=> res!1771080 e!2688685)))

(assert (=> d!1270599 (= res!1771080 ((_ is Nil!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270599 (= (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133849) e!2688685)))

(declare-fun b!4321624 () Bool)

(declare-fun e!2688686 () Bool)

(assert (=> b!4321624 (= e!2688685 e!2688686)))

(declare-fun res!1771081 () Bool)

(assert (=> b!4321624 (=> (not res!1771081) (not e!2688686))))

(assert (=> b!4321624 (= res!1771081 (dynLambda!20507 lambda!133849 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321625 () Bool)

(assert (=> b!4321625 (= e!2688686 (forall!8811 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lambda!133849))))

(assert (= (and d!1270599 (not res!1771080)) b!4321624))

(assert (= (and b!4321624 res!1771081) b!4321625))

(declare-fun b_lambda!127233 () Bool)

(assert (=> (not b_lambda!127233) (not b!4321624)))

(declare-fun m!4915553 () Bool)

(assert (=> b!4321624 m!4915553))

(declare-fun m!4915555 () Bool)

(assert (=> b!4321625 m!4915555))

(assert (=> b!4321317 d!1270599))

(assert (=> b!4321317 d!1270543))

(declare-fun d!1270601 () Bool)

(declare-fun res!1771082 () Bool)

(declare-fun e!2688687 () Bool)

(assert (=> d!1270601 (=> res!1771082 e!2688687)))

(assert (=> d!1270601 (= res!1771082 ((_ is Nil!48378) lt!1539320))))

(assert (=> d!1270601 (= (forall!8812 lt!1539320 lambda!133838) e!2688687)))

(declare-fun b!4321626 () Bool)

(declare-fun e!2688688 () Bool)

(assert (=> b!4321626 (= e!2688687 e!2688688)))

(declare-fun res!1771083 () Bool)

(assert (=> b!4321626 (=> (not res!1771083) (not e!2688688))))

(assert (=> b!4321626 (= res!1771083 (dynLambda!20508 lambda!133838 (h!53838 lt!1539320)))))

(declare-fun b!4321627 () Bool)

(assert (=> b!4321627 (= e!2688688 (forall!8812 (t!355381 lt!1539320) lambda!133838))))

(assert (= (and d!1270601 (not res!1771082)) b!4321626))

(assert (= (and b!4321626 res!1771083) b!4321627))

(declare-fun b_lambda!127235 () Bool)

(assert (=> (not b_lambda!127235) (not b!4321626)))

(declare-fun m!4915557 () Bool)

(assert (=> b!4321626 m!4915557))

(declare-fun m!4915559 () Bool)

(assert (=> b!4321627 m!4915559))

(assert (=> d!1270517 d!1270601))

(declare-fun bs!606512 () Bool)

(declare-fun d!1270603 () Bool)

(assert (= bs!606512 (and d!1270603 b!4321317)))

(declare-fun lambda!133859 () Int)

(assert (=> bs!606512 (not (= lambda!133859 lambda!133849))))

(declare-fun bs!606513 () Bool)

(assert (= bs!606513 (and d!1270603 b!4321230)))

(assert (=> bs!606513 (not (= lambda!133859 lambda!133834))))

(declare-fun bs!606514 () Bool)

(assert (= bs!606514 (and d!1270603 d!1270529)))

(assert (=> bs!606514 (not (= lambda!133859 lambda!133846))))

(declare-fun bs!606515 () Bool)

(assert (= bs!606515 (and d!1270603 d!1270519)))

(assert (=> bs!606515 (= lambda!133859 lambda!133841)))

(declare-fun bs!606516 () Bool)

(assert (= bs!606516 (and d!1270603 d!1270547)))

(assert (=> bs!606516 (= lambda!133859 lambda!133855)))

(declare-fun bs!606517 () Bool)

(assert (= bs!606517 (and d!1270603 d!1270551)))

(assert (=> bs!606517 (= lambda!133859 lambda!133857)))

(declare-fun bs!606518 () Bool)

(assert (= bs!606518 (and d!1270603 d!1270595)))

(assert (=> bs!606518 (= lambda!133859 lambda!133858)))

(declare-fun bs!606519 () Bool)

(assert (= bs!606519 (and d!1270603 b!4321343)))

(assert (=> bs!606519 (not (= lambda!133859 lambda!133852))))

(assert (=> d!1270603 true))

(assert (=> d!1270603 (= (allKeysSameHashInMap!388 lt!1539353 (hashF!6919 thiss!42308)) (forall!8811 (toList!2554 lt!1539353) lambda!133859))))

(declare-fun bs!606520 () Bool)

(assert (= bs!606520 d!1270603))

(declare-fun m!4915561 () Bool)

(assert (=> bs!606520 m!4915561))

(assert (=> b!4321298 d!1270603))

(declare-fun b!4321646 () Bool)

(declare-fun e!2688702 () Unit!67766)

(declare-fun e!2688705 () Unit!67766)

(assert (=> b!4321646 (= e!2688702 e!2688705)))

(declare-fun c!735039 () Bool)

(declare-fun call!299612 () Bool)

(assert (=> b!4321646 (= c!735039 call!299612)))

(declare-fun b!4321647 () Bool)

(declare-fun e!2688704 () Bool)

(declare-datatypes ((List!48504 0))(
  ( (Nil!48380) (Cons!48380 (h!53841 K!9629) (t!355387 List!48504)) )
))
(declare-fun contains!10431 (List!48504 K!9629) Bool)

(declare-fun keys!16173 (ListMap!1831) List!48504)

(assert (=> b!4321647 (= e!2688704 (contains!10431 (keys!16173 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(declare-fun bm!299607 () Bool)

(declare-fun e!2688706 () List!48504)

(assert (=> bm!299607 (= call!299612 (contains!10431 e!2688706 key!2048))))

(declare-fun c!735041 () Bool)

(declare-fun c!735040 () Bool)

(assert (=> bm!299607 (= c!735041 c!735040)))

(declare-fun d!1270605 () Bool)

(declare-fun e!2688703 () Bool)

(assert (=> d!1270605 e!2688703))

(declare-fun res!1771091 () Bool)

(assert (=> d!1270605 (=> res!1771091 e!2688703)))

(declare-fun e!2688701 () Bool)

(assert (=> d!1270605 (= res!1771091 e!2688701)))

(declare-fun res!1771092 () Bool)

(assert (=> d!1270605 (=> (not res!1771092) (not e!2688701))))

(declare-fun lt!1539589 () Bool)

(assert (=> d!1270605 (= res!1771092 (not lt!1539589))))

(declare-fun lt!1539587 () Bool)

(assert (=> d!1270605 (= lt!1539589 lt!1539587)))

(declare-fun lt!1539585 () Unit!67766)

(assert (=> d!1270605 (= lt!1539585 e!2688702)))

(assert (=> d!1270605 (= c!735040 lt!1539587)))

(declare-fun containsKey!402 (List!48502 K!9629) Bool)

(assert (=> d!1270605 (= lt!1539587 (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(assert (=> d!1270605 (= (contains!10429 (extractMap!368 (toList!2554 lt!1539420)) key!2048) lt!1539589)))

(declare-fun b!4321648 () Bool)

(assert (=> b!4321648 (= e!2688703 e!2688704)))

(declare-fun res!1771090 () Bool)

(assert (=> b!4321648 (=> (not res!1771090) (not e!2688704))))

(declare-datatypes ((Option!10302 0))(
  ( (None!10301) (Some!10301 (v!42766 V!9831)) )
))
(declare-fun isDefined!7603 (Option!10302) Bool)

(declare-fun getValueByKey!298 (List!48502 K!9629) Option!10302)

(assert (=> b!4321648 (= res!1771090 (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048)))))

(declare-fun b!4321649 () Bool)

(declare-fun Unit!67778 () Unit!67766)

(assert (=> b!4321649 (= e!2688705 Unit!67778)))

(declare-fun b!4321650 () Bool)

(assert (=> b!4321650 false))

(declare-fun lt!1539586 () Unit!67766)

(declare-fun lt!1539591 () Unit!67766)

(assert (=> b!4321650 (= lt!1539586 lt!1539591)))

(assert (=> b!4321650 (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!53 (List!48502 K!9629) Unit!67766)

(assert (=> b!4321650 (= lt!1539591 (lemmaInGetKeysListThenContainsKey!53 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(declare-fun Unit!67779 () Unit!67766)

(assert (=> b!4321650 (= e!2688705 Unit!67779)))

(declare-fun b!4321651 () Bool)

(declare-fun getKeysList!56 (List!48502) List!48504)

(assert (=> b!4321651 (= e!2688706 (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))

(declare-fun b!4321652 () Bool)

(assert (=> b!4321652 (= e!2688701 (not (contains!10431 (keys!16173 (extractMap!368 (toList!2554 lt!1539420))) key!2048)))))

(declare-fun b!4321653 () Bool)

(assert (=> b!4321653 (= e!2688706 (keys!16173 (extractMap!368 (toList!2554 lt!1539420))))))

(declare-fun b!4321654 () Bool)

(declare-fun lt!1539592 () Unit!67766)

(assert (=> b!4321654 (= e!2688702 lt!1539592)))

(declare-fun lt!1539590 () Unit!67766)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!217 (List!48502 K!9629) Unit!67766)

(assert (=> b!4321654 (= lt!1539590 (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(assert (=> b!4321654 (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(declare-fun lt!1539588 () Unit!67766)

(assert (=> b!4321654 (= lt!1539588 lt!1539590)))

(declare-fun lemmaInListThenGetKeysListContains!53 (List!48502 K!9629) Unit!67766)

(assert (=> b!4321654 (= lt!1539592 (lemmaInListThenGetKeysListContains!53 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(assert (=> b!4321654 call!299612))

(assert (= (and d!1270605 c!735040) b!4321654))

(assert (= (and d!1270605 (not c!735040)) b!4321646))

(assert (= (and b!4321646 c!735039) b!4321650))

(assert (= (and b!4321646 (not c!735039)) b!4321649))

(assert (= (or b!4321654 b!4321646) bm!299607))

(assert (= (and bm!299607 c!735041) b!4321651))

(assert (= (and bm!299607 (not c!735041)) b!4321653))

(assert (= (and d!1270605 res!1771092) b!4321652))

(assert (= (and d!1270605 (not res!1771091)) b!4321648))

(assert (= (and b!4321648 res!1771090) b!4321647))

(declare-fun m!4915563 () Bool)

(assert (=> b!4321654 m!4915563))

(declare-fun m!4915565 () Bool)

(assert (=> b!4321654 m!4915565))

(assert (=> b!4321654 m!4915565))

(declare-fun m!4915567 () Bool)

(assert (=> b!4321654 m!4915567))

(declare-fun m!4915569 () Bool)

(assert (=> b!4321654 m!4915569))

(assert (=> b!4321647 m!4915369))

(declare-fun m!4915571 () Bool)

(assert (=> b!4321647 m!4915571))

(assert (=> b!4321647 m!4915571))

(declare-fun m!4915573 () Bool)

(assert (=> b!4321647 m!4915573))

(declare-fun m!4915575 () Bool)

(assert (=> bm!299607 m!4915575))

(assert (=> b!4321648 m!4915565))

(assert (=> b!4321648 m!4915565))

(assert (=> b!4321648 m!4915567))

(declare-fun m!4915577 () Bool)

(assert (=> b!4321651 m!4915577))

(declare-fun m!4915579 () Bool)

(assert (=> d!1270605 m!4915579))

(assert (=> b!4321653 m!4915369))

(assert (=> b!4321653 m!4915571))

(assert (=> b!4321652 m!4915369))

(assert (=> b!4321652 m!4915571))

(assert (=> b!4321652 m!4915571))

(assert (=> b!4321652 m!4915573))

(assert (=> b!4321650 m!4915579))

(declare-fun m!4915581 () Bool)

(assert (=> b!4321650 m!4915581))

(assert (=> b!4321350 d!1270605))

(declare-fun bs!606521 () Bool)

(declare-fun d!1270607 () Bool)

(assert (= bs!606521 (and d!1270607 b!4321317)))

(declare-fun lambda!133862 () Int)

(assert (=> bs!606521 (= lambda!133862 lambda!133849)))

(declare-fun bs!606522 () Bool)

(assert (= bs!606522 (and d!1270607 b!4321230)))

(assert (=> bs!606522 (= lambda!133862 lambda!133834)))

(declare-fun bs!606523 () Bool)

(assert (= bs!606523 (and d!1270607 d!1270519)))

(assert (=> bs!606523 (not (= lambda!133862 lambda!133841))))

(declare-fun bs!606524 () Bool)

(assert (= bs!606524 (and d!1270607 d!1270547)))

(assert (=> bs!606524 (not (= lambda!133862 lambda!133855))))

(declare-fun bs!606525 () Bool)

(assert (= bs!606525 (and d!1270607 d!1270551)))

(assert (=> bs!606525 (not (= lambda!133862 lambda!133857))))

(declare-fun bs!606526 () Bool)

(assert (= bs!606526 (and d!1270607 d!1270529)))

(assert (=> bs!606526 (= lambda!133862 lambda!133846)))

(declare-fun bs!606527 () Bool)

(assert (= bs!606527 (and d!1270607 d!1270603)))

(assert (=> bs!606527 (not (= lambda!133862 lambda!133859))))

(declare-fun bs!606528 () Bool)

(assert (= bs!606528 (and d!1270607 d!1270595)))

(assert (=> bs!606528 (not (= lambda!133862 lambda!133858))))

(declare-fun bs!606529 () Bool)

(assert (= bs!606529 (and d!1270607 b!4321343)))

(assert (=> bs!606529 (= lambda!133862 lambda!133852)))

(declare-fun lt!1539595 () ListMap!1831)

(assert (=> d!1270607 (invariantList!601 (toList!2555 lt!1539595))))

(declare-fun e!2688709 () ListMap!1831)

(assert (=> d!1270607 (= lt!1539595 e!2688709)))

(declare-fun c!735044 () Bool)

(assert (=> d!1270607 (= c!735044 ((_ is Cons!48379) (toList!2554 lt!1539420)))))

(assert (=> d!1270607 (forall!8811 (toList!2554 lt!1539420) lambda!133862)))

(assert (=> d!1270607 (= (extractMap!368 (toList!2554 lt!1539420)) lt!1539595)))

(declare-fun b!4321659 () Bool)

(declare-fun addToMapMapFromBucket!51 (List!48502 ListMap!1831) ListMap!1831)

(assert (=> b!4321659 (= e!2688709 (addToMapMapFromBucket!51 (_2!26879 (h!53839 (toList!2554 lt!1539420))) (extractMap!368 (t!355382 (toList!2554 lt!1539420)))))))

(declare-fun b!4321660 () Bool)

(assert (=> b!4321660 (= e!2688709 (ListMap!1832 Nil!48378))))

(assert (= (and d!1270607 c!735044) b!4321659))

(assert (= (and d!1270607 (not c!735044)) b!4321660))

(declare-fun m!4915583 () Bool)

(assert (=> d!1270607 m!4915583))

(declare-fun m!4915585 () Bool)

(assert (=> d!1270607 m!4915585))

(declare-fun m!4915587 () Bool)

(assert (=> b!4321659 m!4915587))

(assert (=> b!4321659 m!4915587))

(declare-fun m!4915589 () Bool)

(assert (=> b!4321659 m!4915589))

(assert (=> b!4321350 d!1270607))

(declare-fun bs!606530 () Bool)

(declare-fun d!1270609 () Bool)

(assert (= bs!606530 (and d!1270609 d!1270607)))

(declare-fun lambda!133865 () Int)

(assert (=> bs!606530 (= lambda!133865 lambda!133862)))

(declare-fun bs!606531 () Bool)

(assert (= bs!606531 (and d!1270609 b!4321317)))

(assert (=> bs!606531 (= lambda!133865 lambda!133849)))

(declare-fun bs!606532 () Bool)

(assert (= bs!606532 (and d!1270609 b!4321230)))

(assert (=> bs!606532 (= lambda!133865 lambda!133834)))

(declare-fun bs!606533 () Bool)

(assert (= bs!606533 (and d!1270609 d!1270519)))

(assert (=> bs!606533 (not (= lambda!133865 lambda!133841))))

(declare-fun bs!606534 () Bool)

(assert (= bs!606534 (and d!1270609 d!1270547)))

(assert (=> bs!606534 (not (= lambda!133865 lambda!133855))))

(declare-fun bs!606535 () Bool)

(assert (= bs!606535 (and d!1270609 d!1270551)))

(assert (=> bs!606535 (not (= lambda!133865 lambda!133857))))

(declare-fun bs!606536 () Bool)

(assert (= bs!606536 (and d!1270609 d!1270529)))

(assert (=> bs!606536 (= lambda!133865 lambda!133846)))

(declare-fun bs!606537 () Bool)

(assert (= bs!606537 (and d!1270609 d!1270603)))

(assert (=> bs!606537 (not (= lambda!133865 lambda!133859))))

(declare-fun bs!606538 () Bool)

(assert (= bs!606538 (and d!1270609 d!1270595)))

(assert (=> bs!606538 (not (= lambda!133865 lambda!133858))))

(declare-fun bs!606539 () Bool)

(assert (= bs!606539 (and d!1270609 b!4321343)))

(assert (=> bs!606539 (= lambda!133865 lambda!133852)))

(assert (=> d!1270609 (contains!10429 (extractMap!368 (toList!2554 lt!1539420)) key!2048)))

(declare-fun lt!1539598 () Unit!67766)

(declare-fun choose!26398 (ListLongMap!1171 K!9629 Hashable!4669) Unit!67766)

(assert (=> d!1270609 (= lt!1539598 (choose!26398 lt!1539420 key!2048 (hashF!6919 thiss!42308)))))

(assert (=> d!1270609 (forall!8811 (toList!2554 lt!1539420) lambda!133865)))

(assert (=> d!1270609 (= (lemmaInLongMapThenInGenericMap!162 lt!1539420 key!2048 (hashF!6919 thiss!42308)) lt!1539598)))

(declare-fun bs!606540 () Bool)

(assert (= bs!606540 d!1270609))

(assert (=> bs!606540 m!4915369))

(assert (=> bs!606540 m!4915369))

(assert (=> bs!606540 m!4915371))

(declare-fun m!4915591 () Bool)

(assert (=> bs!606540 m!4915591))

(declare-fun m!4915593 () Bool)

(assert (=> bs!606540 m!4915593))

(assert (=> b!4321350 d!1270609))

(declare-fun d!1270611 () Bool)

(declare-fun noDuplicatedKeys!103 (List!48502) Bool)

(assert (=> d!1270611 (= (invariantList!601 (toList!2555 lt!1539428)) (noDuplicatedKeys!103 (toList!2555 lt!1539428)))))

(declare-fun bs!606541 () Bool)

(assert (= bs!606541 d!1270611))

(declare-fun m!4915595 () Bool)

(assert (=> bs!606541 m!4915595))

(assert (=> d!1270545 d!1270611))

(declare-fun bs!606542 () Bool)

(declare-fun d!1270613 () Bool)

(assert (= bs!606542 (and d!1270613 d!1270607)))

(declare-fun lambda!133866 () Int)

(assert (=> bs!606542 (= lambda!133866 lambda!133862)))

(declare-fun bs!606543 () Bool)

(assert (= bs!606543 (and d!1270613 b!4321317)))

(assert (=> bs!606543 (= lambda!133866 lambda!133849)))

(declare-fun bs!606544 () Bool)

(assert (= bs!606544 (and d!1270613 b!4321230)))

(assert (=> bs!606544 (= lambda!133866 lambda!133834)))

(declare-fun bs!606545 () Bool)

(assert (= bs!606545 (and d!1270613 d!1270609)))

(assert (=> bs!606545 (= lambda!133866 lambda!133865)))

(declare-fun bs!606546 () Bool)

(assert (= bs!606546 (and d!1270613 d!1270519)))

(assert (=> bs!606546 (not (= lambda!133866 lambda!133841))))

(declare-fun bs!606547 () Bool)

(assert (= bs!606547 (and d!1270613 d!1270547)))

(assert (=> bs!606547 (not (= lambda!133866 lambda!133855))))

(declare-fun bs!606548 () Bool)

(assert (= bs!606548 (and d!1270613 d!1270551)))

(assert (=> bs!606548 (not (= lambda!133866 lambda!133857))))

(declare-fun bs!606549 () Bool)

(assert (= bs!606549 (and d!1270613 d!1270529)))

(assert (=> bs!606549 (= lambda!133866 lambda!133846)))

(declare-fun bs!606550 () Bool)

(assert (= bs!606550 (and d!1270613 d!1270603)))

(assert (=> bs!606550 (not (= lambda!133866 lambda!133859))))

(declare-fun bs!606551 () Bool)

(assert (= bs!606551 (and d!1270613 d!1270595)))

(assert (=> bs!606551 (not (= lambda!133866 lambda!133858))))

(declare-fun bs!606552 () Bool)

(assert (= bs!606552 (and d!1270613 b!4321343)))

(assert (=> bs!606552 (= lambda!133866 lambda!133852)))

(declare-fun lt!1539599 () ListMap!1831)

(assert (=> d!1270613 (invariantList!601 (toList!2555 lt!1539599))))

(declare-fun e!2688710 () ListMap!1831)

(assert (=> d!1270613 (= lt!1539599 e!2688710)))

(declare-fun c!735045 () Bool)

(assert (=> d!1270613 (= c!735045 ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270613 (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133866)))

(assert (=> d!1270613 (= (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lt!1539599)))

(declare-fun b!4321661 () Bool)

(assert (=> b!4321661 (= e!2688710 (addToMapMapFromBucket!51 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4321662 () Bool)

(assert (=> b!4321662 (= e!2688710 (ListMap!1832 Nil!48378))))

(assert (= (and d!1270613 c!735045) b!4321661))

(assert (= (and d!1270613 (not c!735045)) b!4321662))

(declare-fun m!4915597 () Bool)

(assert (=> d!1270613 m!4915597))

(declare-fun m!4915599 () Bool)

(assert (=> d!1270613 m!4915599))

(declare-fun m!4915601 () Bool)

(assert (=> b!4321661 m!4915601))

(assert (=> b!4321661 m!4915601))

(declare-fun m!4915603 () Bool)

(assert (=> b!4321661 m!4915603))

(assert (=> d!1270545 d!1270613))

(assert (=> d!1270545 d!1270543))

(assert (=> d!1270545 d!1270539))

(declare-fun b!4321663 () Bool)

(declare-fun e!2688711 () List!48502)

(assert (=> b!4321663 (= e!2688711 (t!355381 (t!355381 lt!1539320)))))

(declare-fun b!4321664 () Bool)

(declare-fun e!2688712 () List!48502)

(assert (=> b!4321664 (= e!2688711 e!2688712)))

(declare-fun c!735047 () Bool)

(assert (=> b!4321664 (= c!735047 ((_ is Cons!48378) (t!355381 lt!1539320)))))

(declare-fun b!4321666 () Bool)

(assert (=> b!4321666 (= e!2688712 Nil!48378)))

(declare-fun b!4321665 () Bool)

(assert (=> b!4321665 (= e!2688712 (Cons!48378 (h!53838 (t!355381 lt!1539320)) (removePairForKey!267 (t!355381 (t!355381 lt!1539320)) key!2048)))))

(declare-fun d!1270615 () Bool)

(declare-fun lt!1539600 () List!48502)

(assert (=> d!1270615 (not (containsKey!400 lt!1539600 key!2048))))

(assert (=> d!1270615 (= lt!1539600 e!2688711)))

(declare-fun c!735046 () Bool)

(assert (=> d!1270615 (= c!735046 (and ((_ is Cons!48378) (t!355381 lt!1539320)) (= (_1!26878 (h!53838 (t!355381 lt!1539320))) key!2048)))))

(assert (=> d!1270615 (noDuplicateKeys!262 (t!355381 lt!1539320))))

(assert (=> d!1270615 (= (removePairForKey!267 (t!355381 lt!1539320) key!2048) lt!1539600)))

(assert (= (and d!1270615 c!735046) b!4321663))

(assert (= (and d!1270615 (not c!735046)) b!4321664))

(assert (= (and b!4321664 c!735047) b!4321665))

(assert (= (and b!4321664 (not c!735047)) b!4321666))

(declare-fun m!4915605 () Bool)

(assert (=> b!4321665 m!4915605))

(declare-fun m!4915607 () Bool)

(assert (=> d!1270615 m!4915607))

(declare-fun m!4915609 () Bool)

(assert (=> d!1270615 m!4915609))

(assert (=> b!4321294 d!1270615))

(declare-fun d!1270617 () Bool)

(assert (=> d!1270617 (= (isDefined!7601 (getPair!162 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048)) (not (isEmpty!28119 (getPair!162 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048))))))

(declare-fun bs!606553 () Bool)

(assert (= bs!606553 d!1270617))

(assert (=> bs!606553 m!4915355))

(declare-fun m!4915611 () Bool)

(assert (=> bs!606553 m!4915611))

(assert (=> b!4321349 d!1270617))

(declare-fun b!4321667 () Bool)

(declare-fun e!2688716 () Option!10301)

(assert (=> b!4321667 (= e!2688716 (getPair!162 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) key!2048))))

(declare-fun b!4321668 () Bool)

(declare-fun e!2688713 () Option!10301)

(assert (=> b!4321668 (= e!2688713 (Some!10300 (h!53838 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun b!4321669 () Bool)

(assert (=> b!4321669 (= e!2688716 None!10300)))

(declare-fun b!4321670 () Bool)

(declare-fun e!2688715 () Bool)

(assert (=> b!4321670 (= e!2688715 (not (containsKey!400 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048)))))

(declare-fun lt!1539601 () Option!10301)

(declare-fun b!4321672 () Bool)

(declare-fun e!2688714 () Bool)

(assert (=> b!4321672 (= e!2688714 (contains!10430 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) (get!15676 lt!1539601)))))

(declare-fun b!4321673 () Bool)

(declare-fun e!2688717 () Bool)

(assert (=> b!4321673 (= e!2688717 e!2688714)))

(declare-fun res!1771093 () Bool)

(assert (=> b!4321673 (=> (not res!1771093) (not e!2688714))))

(assert (=> b!4321673 (= res!1771093 (isDefined!7601 lt!1539601))))

(declare-fun b!4321674 () Bool)

(assert (=> b!4321674 (= e!2688713 e!2688716)))

(declare-fun c!735048 () Bool)

(assert (=> b!4321674 (= c!735048 ((_ is Cons!48378) (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))

(declare-fun b!4321671 () Bool)

(declare-fun res!1771094 () Bool)

(assert (=> b!4321671 (=> (not res!1771094) (not e!2688714))))

(assert (=> b!4321671 (= res!1771094 (= (_1!26878 (get!15676 lt!1539601)) key!2048))))

(declare-fun d!1270619 () Bool)

(assert (=> d!1270619 e!2688717))

(declare-fun res!1771095 () Bool)

(assert (=> d!1270619 (=> res!1771095 e!2688717)))

(assert (=> d!1270619 (= res!1771095 e!2688715)))

(declare-fun res!1771096 () Bool)

(assert (=> d!1270619 (=> (not res!1771096) (not e!2688715))))

(assert (=> d!1270619 (= res!1771096 (isEmpty!28119 lt!1539601))))

(assert (=> d!1270619 (= lt!1539601 e!2688713)))

(declare-fun c!735049 () Bool)

(assert (=> d!1270619 (= c!735049 (and ((_ is Cons!48378) (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (= (_1!26878 (h!53838 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) key!2048)))))

(assert (=> d!1270619 (noDuplicateKeys!262 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))

(assert (=> d!1270619 (= (getPair!162 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048) lt!1539601)))

(assert (= (and d!1270619 c!735049) b!4321668))

(assert (= (and d!1270619 (not c!735049)) b!4321674))

(assert (= (and b!4321674 c!735048) b!4321667))

(assert (= (and b!4321674 (not c!735048)) b!4321669))

(assert (= (and d!1270619 res!1771096) b!4321670))

(assert (= (and d!1270619 (not res!1771095)) b!4321673))

(assert (= (and b!4321673 res!1771093) b!4321671))

(assert (= (and b!4321671 res!1771094) b!4321672))

(declare-fun m!4915613 () Bool)

(assert (=> b!4321667 m!4915613))

(declare-fun m!4915615 () Bool)

(assert (=> b!4321672 m!4915615))

(assert (=> b!4321672 m!4915335))

(assert (=> b!4321672 m!4915615))

(declare-fun m!4915617 () Bool)

(assert (=> b!4321672 m!4915617))

(assert (=> b!4321671 m!4915615))

(declare-fun m!4915619 () Bool)

(assert (=> d!1270619 m!4915619))

(assert (=> d!1270619 m!4915335))

(declare-fun m!4915621 () Bool)

(assert (=> d!1270619 m!4915621))

(assert (=> b!4321670 m!4915335))

(declare-fun m!4915623 () Bool)

(assert (=> b!4321670 m!4915623))

(declare-fun m!4915625 () Bool)

(assert (=> b!4321673 m!4915625))

(assert (=> b!4321349 d!1270619))

(declare-fun d!1270621 () Bool)

(declare-fun e!2688718 () Bool)

(assert (=> d!1270621 e!2688718))

(declare-fun c!735050 () Bool)

(assert (=> d!1270621 (= c!735050 (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))

(declare-fun lt!1539602 () List!48502)

(assert (=> d!1270621 (= lt!1539602 (apply!11140 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))

(assert (=> d!1270621 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270621 (= (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) lt!1539602)))

(declare-fun b!4321675 () Bool)

(assert (=> b!4321675 (= e!2688718 (= lt!1539602 (get!15675 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))))

(declare-fun b!4321676 () Bool)

(assert (=> b!4321676 (= e!2688718 (= lt!1539602 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410)))))

(assert (=> b!4321676 ((_ is LongMap!4753) (v!42753 (underlying!9736 thiss!42308)))))

(assert (= (and d!1270621 c!735050) b!4321675))

(assert (= (and d!1270621 (not c!735050)) b!4321676))

(declare-fun b_lambda!127237 () Bool)

(assert (=> (not b_lambda!127237) (not b!4321676)))

(declare-fun t!355386 () Bool)

(declare-fun tb!257367 () Bool)

(assert (=> (and b!4321235 (= (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) t!355386) tb!257367))

(assert (=> b!4321676 t!355386))

(declare-fun result!314884 () Bool)

(declare-fun b_and!340519 () Bool)

(assert (= b_and!340517 (and (=> t!355386 result!314884) b_and!340519)))

(assert (=> d!1270621 m!4915367))

(declare-fun m!4915627 () Bool)

(assert (=> d!1270621 m!4915627))

(assert (=> d!1270621 m!4915257))

(assert (=> b!4321675 m!4915211))

(declare-fun m!4915629 () Bool)

(assert (=> b!4321675 m!4915629))

(assert (=> b!4321675 m!4915629))

(declare-fun m!4915631 () Bool)

(assert (=> b!4321675 m!4915631))

(declare-fun m!4915633 () Bool)

(assert (=> b!4321676 m!4915633))

(assert (=> b!4321349 d!1270621))

(declare-fun d!1270623 () Bool)

(declare-fun e!2688719 () Bool)

(assert (=> d!1270623 e!2688719))

(declare-fun res!1771097 () Bool)

(assert (=> d!1270623 (=> res!1771097 e!2688719)))

(declare-fun lt!1539605 () Bool)

(assert (=> d!1270623 (= res!1771097 (not lt!1539605))))

(declare-fun lt!1539606 () Bool)

(assert (=> d!1270623 (= lt!1539605 lt!1539606)))

(declare-fun lt!1539603 () Unit!67766)

(declare-fun e!2688720 () Unit!67766)

(assert (=> d!1270623 (= lt!1539603 e!2688720)))

(declare-fun c!735051 () Bool)

(assert (=> d!1270623 (= c!735051 lt!1539606)))

(assert (=> d!1270623 (= lt!1539606 (containsKey!401 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))

(assert (=> d!1270623 (= (contains!10426 (ite c!734950 lt!1539421 call!299515) call!299512) lt!1539605)))

(declare-fun b!4321677 () Bool)

(declare-fun lt!1539604 () Unit!67766)

(assert (=> b!4321677 (= e!2688720 lt!1539604)))

(assert (=> b!4321677 (= lt!1539604 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))

(assert (=> b!4321677 (isDefined!7602 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))

(declare-fun b!4321678 () Bool)

(declare-fun Unit!67780 () Unit!67766)

(assert (=> b!4321678 (= e!2688720 Unit!67780)))

(declare-fun b!4321679 () Bool)

(assert (=> b!4321679 (= e!2688719 (isDefined!7602 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512)))))

(assert (= (and d!1270623 c!735051) b!4321677))

(assert (= (and d!1270623 (not c!735051)) b!4321678))

(assert (= (and d!1270623 (not res!1771097)) b!4321679))

(declare-fun m!4915635 () Bool)

(assert (=> d!1270623 m!4915635))

(declare-fun m!4915637 () Bool)

(assert (=> b!4321677 m!4915637))

(declare-fun m!4915639 () Bool)

(assert (=> b!4321677 m!4915639))

(assert (=> b!4321677 m!4915639))

(declare-fun m!4915641 () Bool)

(assert (=> b!4321677 m!4915641))

(assert (=> b!4321679 m!4915639))

(assert (=> b!4321679 m!4915639))

(assert (=> b!4321679 m!4915641))

(assert (=> bm!299511 d!1270623))

(assert (=> b!4321348 d!1270621))

(declare-fun d!1270625 () Bool)

(declare-fun res!1771102 () Bool)

(declare-fun e!2688725 () Bool)

(assert (=> d!1270625 (=> res!1771102 e!2688725)))

(assert (=> d!1270625 (= res!1771102 (and ((_ is Cons!48379) lt!1539409) (= (_1!26879 (h!53839 lt!1539409)) lt!1539410)))))

(assert (=> d!1270625 (= (containsKey!401 lt!1539409 lt!1539410) e!2688725)))

(declare-fun b!4321684 () Bool)

(declare-fun e!2688726 () Bool)

(assert (=> b!4321684 (= e!2688725 e!2688726)))

(declare-fun res!1771103 () Bool)

(assert (=> b!4321684 (=> (not res!1771103) (not e!2688726))))

(assert (=> b!4321684 (= res!1771103 (and (or (not ((_ is Cons!48379) lt!1539409)) (bvsle (_1!26879 (h!53839 lt!1539409)) lt!1539410)) ((_ is Cons!48379) lt!1539409) (bvslt (_1!26879 (h!53839 lt!1539409)) lt!1539410)))))

(declare-fun b!4321685 () Bool)

(assert (=> b!4321685 (= e!2688726 (containsKey!401 (t!355382 lt!1539409) lt!1539410))))

(assert (= (and d!1270625 (not res!1771102)) b!4321684))

(assert (= (and b!4321684 res!1771103) b!4321685))

(declare-fun m!4915643 () Bool)

(assert (=> b!4321685 m!4915643))

(assert (=> b!4321348 d!1270625))

(declare-fun lt!1539609 () Bool)

(declare-fun d!1270627 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7570 (List!48503) (InoxSet tuple2!47186))

(assert (=> d!1270627 (= lt!1539609 (select (content!7570 lt!1539416) (tuple2!47187 lt!1539410 lt!1539424)))))

(declare-fun e!2688732 () Bool)

(assert (=> d!1270627 (= lt!1539609 e!2688732)))

(declare-fun res!1771109 () Bool)

(assert (=> d!1270627 (=> (not res!1771109) (not e!2688732))))

(assert (=> d!1270627 (= res!1771109 ((_ is Cons!48379) lt!1539416))))

(assert (=> d!1270627 (= (contains!10428 lt!1539416 (tuple2!47187 lt!1539410 lt!1539424)) lt!1539609)))

(declare-fun b!4321690 () Bool)

(declare-fun e!2688731 () Bool)

(assert (=> b!4321690 (= e!2688732 e!2688731)))

(declare-fun res!1771108 () Bool)

(assert (=> b!4321690 (=> res!1771108 e!2688731)))

(assert (=> b!4321690 (= res!1771108 (= (h!53839 lt!1539416) (tuple2!47187 lt!1539410 lt!1539424)))))

(declare-fun b!4321691 () Bool)

(assert (=> b!4321691 (= e!2688731 (contains!10428 (t!355382 lt!1539416) (tuple2!47187 lt!1539410 lt!1539424)))))

(assert (= (and d!1270627 res!1771109) b!4321690))

(assert (= (and b!4321690 (not res!1771108)) b!4321691))

(declare-fun m!4915645 () Bool)

(assert (=> d!1270627 m!4915645))

(declare-fun m!4915647 () Bool)

(assert (=> d!1270627 m!4915647))

(declare-fun m!4915649 () Bool)

(assert (=> b!4321691 m!4915649))

(assert (=> b!4321348 d!1270627))

(declare-fun d!1270629 () Bool)

(assert (=> d!1270629 (containsKey!401 lt!1539409 lt!1539410)))

(declare-fun lt!1539612 () Unit!67766)

(declare-fun choose!26399 (List!48503 (_ BitVec 64)) Unit!67766)

(assert (=> d!1270629 (= lt!1539612 (choose!26399 lt!1539409 lt!1539410))))

(declare-fun e!2688735 () Bool)

(assert (=> d!1270629 e!2688735))

(declare-fun res!1771112 () Bool)

(assert (=> d!1270629 (=> (not res!1771112) (not e!2688735))))

(assert (=> d!1270629 (= res!1771112 (isStrictlySorted!21 lt!1539409))))

(assert (=> d!1270629 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!163 lt!1539409 lt!1539410) lt!1539612)))

(declare-fun b!4321694 () Bool)

(assert (=> b!4321694 (= e!2688735 (isDefined!7602 (getValueByKey!297 lt!1539409 lt!1539410)))))

(assert (= (and d!1270629 res!1771112) b!4321694))

(assert (=> d!1270629 m!4915341))

(declare-fun m!4915651 () Bool)

(assert (=> d!1270629 m!4915651))

(declare-fun m!4915653 () Bool)

(assert (=> d!1270629 m!4915653))

(declare-fun m!4915655 () Bool)

(assert (=> b!4321694 m!4915655))

(assert (=> b!4321694 m!4915655))

(declare-fun m!4915657 () Bool)

(assert (=> b!4321694 m!4915657))

(assert (=> b!4321348 d!1270629))

(declare-fun d!1270631 () Bool)

(declare-fun isEmpty!28120 (Option!10300) Bool)

(assert (=> d!1270631 (= (isDefined!7602 (getValueByKey!297 lt!1539408 lt!1539410)) (not (isEmpty!28120 (getValueByKey!297 lt!1539408 lt!1539410))))))

(declare-fun bs!606554 () Bool)

(assert (= bs!606554 d!1270631))

(assert (=> bs!606554 m!4915337))

(declare-fun m!4915659 () Bool)

(assert (=> bs!606554 m!4915659))

(assert (=> b!4321348 d!1270631))

(declare-fun d!1270633 () Bool)

(assert (=> d!1270633 (isDefined!7602 (getValueByKey!297 lt!1539408 lt!1539410))))

(declare-fun lt!1539615 () Unit!67766)

(declare-fun choose!26400 (List!48503 (_ BitVec 64)) Unit!67766)

(assert (=> d!1270633 (= lt!1539615 (choose!26400 lt!1539408 lt!1539410))))

(declare-fun e!2688738 () Bool)

(assert (=> d!1270633 e!2688738))

(declare-fun res!1771115 () Bool)

(assert (=> d!1270633 (=> (not res!1771115) (not e!2688738))))

(assert (=> d!1270633 (= res!1771115 (isStrictlySorted!21 lt!1539408))))

(assert (=> d!1270633 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!216 lt!1539408 lt!1539410) lt!1539615)))

(declare-fun b!4321697 () Bool)

(assert (=> b!4321697 (= e!2688738 (containsKey!401 lt!1539408 lt!1539410))))

(assert (= (and d!1270633 res!1771115) b!4321697))

(assert (=> d!1270633 m!4915337))

(assert (=> d!1270633 m!4915337))

(assert (=> d!1270633 m!4915339))

(declare-fun m!4915661 () Bool)

(assert (=> d!1270633 m!4915661))

(declare-fun m!4915663 () Bool)

(assert (=> d!1270633 m!4915663))

(declare-fun m!4915665 () Bool)

(assert (=> b!4321697 m!4915665))

(assert (=> b!4321348 d!1270633))

(assert (=> b!4321348 d!1270543))

(declare-fun b!4321698 () Bool)

(declare-fun e!2688739 () Option!10300)

(assert (=> b!4321698 (= e!2688739 (Some!10299 (_2!26879 (h!53839 lt!1539408))))))

(declare-fun b!4321700 () Bool)

(declare-fun e!2688740 () Option!10300)

(assert (=> b!4321700 (= e!2688740 (getValueByKey!297 (t!355382 lt!1539408) lt!1539410))))

(declare-fun d!1270635 () Bool)

(declare-fun c!735052 () Bool)

(assert (=> d!1270635 (= c!735052 (and ((_ is Cons!48379) lt!1539408) (= (_1!26879 (h!53839 lt!1539408)) lt!1539410)))))

(assert (=> d!1270635 (= (getValueByKey!297 lt!1539408 lt!1539410) e!2688739)))

(declare-fun b!4321701 () Bool)

(assert (=> b!4321701 (= e!2688740 None!10299)))

(declare-fun b!4321699 () Bool)

(assert (=> b!4321699 (= e!2688739 e!2688740)))

(declare-fun c!735053 () Bool)

(assert (=> b!4321699 (= c!735053 (and ((_ is Cons!48379) lt!1539408) (not (= (_1!26879 (h!53839 lt!1539408)) lt!1539410))))))

(assert (= (and d!1270635 c!735052) b!4321698))

(assert (= (and d!1270635 (not c!735052)) b!4321699))

(assert (= (and b!4321699 c!735053) b!4321700))

(assert (= (and b!4321699 (not c!735053)) b!4321701))

(declare-fun m!4915667 () Bool)

(assert (=> b!4321700 m!4915667))

(assert (=> b!4321348 d!1270635))

(declare-fun d!1270637 () Bool)

(assert (=> d!1270637 (contains!10428 lt!1539416 (tuple2!47187 lt!1539410 lt!1539424))))

(declare-fun lt!1539618 () Unit!67766)

(declare-fun choose!26401 (List!48503 (_ BitVec 64) List!48502) Unit!67766)

(assert (=> d!1270637 (= lt!1539618 (choose!26401 lt!1539416 lt!1539410 lt!1539424))))

(declare-fun e!2688743 () Bool)

(assert (=> d!1270637 e!2688743))

(declare-fun res!1771118 () Bool)

(assert (=> d!1270637 (=> (not res!1771118) (not e!2688743))))

(assert (=> d!1270637 (= res!1771118 (isStrictlySorted!21 lt!1539416))))

(assert (=> d!1270637 (= (lemmaGetValueByKeyImpliesContainsTuple!174 lt!1539416 lt!1539410 lt!1539424) lt!1539618)))

(declare-fun b!4321704 () Bool)

(assert (=> b!4321704 (= e!2688743 (= (getValueByKey!297 lt!1539416 lt!1539410) (Some!10299 lt!1539424)))))

(assert (= (and d!1270637 res!1771118) b!4321704))

(assert (=> d!1270637 m!4915333))

(declare-fun m!4915669 () Bool)

(assert (=> d!1270637 m!4915669))

(declare-fun m!4915671 () Bool)

(assert (=> d!1270637 m!4915671))

(declare-fun m!4915673 () Bool)

(assert (=> b!4321704 m!4915673))

(assert (=> b!4321348 d!1270637))

(declare-fun d!1270639 () Bool)

(assert (=> d!1270639 (= (isDefined!7601 call!299514) (not (isEmpty!28119 call!299514)))))

(declare-fun bs!606555 () Bool)

(assert (= bs!606555 d!1270639))

(declare-fun m!4915675 () Bool)

(assert (=> bs!606555 m!4915675))

(assert (=> bm!299510 d!1270639))

(declare-fun b!4321705 () Bool)

(declare-fun e!2688744 () Option!10300)

(assert (=> b!4321705 (= e!2688744 (Some!10299 (_2!26879 (h!53839 (toList!2554 lt!1539362)))))))

(declare-fun b!4321707 () Bool)

(declare-fun e!2688745 () Option!10300)

(assert (=> b!4321707 (= e!2688745 (getValueByKey!297 (t!355382 (toList!2554 lt!1539362)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun c!735054 () Bool)

(declare-fun d!1270641 () Bool)

(assert (=> d!1270641 (= c!735054 (and ((_ is Cons!48379) (toList!2554 lt!1539362)) (= (_1!26879 (h!53839 (toList!2554 lt!1539362))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270641 (= (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2688744)))

(declare-fun b!4321708 () Bool)

(assert (=> b!4321708 (= e!2688745 None!10299)))

(declare-fun b!4321706 () Bool)

(assert (=> b!4321706 (= e!2688744 e!2688745)))

(declare-fun c!735055 () Bool)

(assert (=> b!4321706 (= c!735055 (and ((_ is Cons!48379) (toList!2554 lt!1539362)) (not (= (_1!26879 (h!53839 (toList!2554 lt!1539362))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(assert (= (and d!1270641 c!735054) b!4321705))

(assert (= (and d!1270641 (not c!735054)) b!4321706))

(assert (= (and b!4321706 c!735055) b!4321707))

(assert (= (and b!4321706 (not c!735055)) b!4321708))

(declare-fun m!4915677 () Bool)

(assert (=> b!4321707 m!4915677))

(assert (=> b!4321309 d!1270641))

(declare-fun d!1270643 () Bool)

(declare-fun lt!1539619 () Bool)

(assert (=> d!1270643 (= lt!1539619 (select (content!7570 (toList!2554 lt!1539362)) (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun e!2688747 () Bool)

(assert (=> d!1270643 (= lt!1539619 e!2688747)))

(declare-fun res!1771120 () Bool)

(assert (=> d!1270643 (=> (not res!1771120) (not e!2688747))))

(assert (=> d!1270643 (= res!1771120 ((_ is Cons!48379) (toList!2554 lt!1539362)))))

(assert (=> d!1270643 (= (contains!10428 (toList!2554 lt!1539362) (tuple2!47187 lt!1539310 lt!1539317)) lt!1539619)))

(declare-fun b!4321709 () Bool)

(declare-fun e!2688746 () Bool)

(assert (=> b!4321709 (= e!2688747 e!2688746)))

(declare-fun res!1771119 () Bool)

(assert (=> b!4321709 (=> res!1771119 e!2688746)))

(assert (=> b!4321709 (= res!1771119 (= (h!53839 (toList!2554 lt!1539362)) (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun b!4321710 () Bool)

(assert (=> b!4321710 (= e!2688746 (contains!10428 (t!355382 (toList!2554 lt!1539362)) (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (= (and d!1270643 res!1771120) b!4321709))

(assert (= (and b!4321709 (not res!1771119)) b!4321710))

(declare-fun m!4915679 () Bool)

(assert (=> d!1270643 m!4915679))

(declare-fun m!4915681 () Bool)

(assert (=> d!1270643 m!4915681))

(declare-fun m!4915683 () Bool)

(assert (=> b!4321710 m!4915683))

(assert (=> b!4321310 d!1270643))

(assert (=> d!1270521 d!1270515))

(assert (=> d!1270521 d!1270523))

(declare-fun d!1270645 () Bool)

(assert (=> d!1270645 (allKeysSameHash!244 (removePairForKey!267 lt!1539320 key!2048) lt!1539310 (hashF!6919 thiss!42308))))

(assert (=> d!1270645 true))

(declare-fun _$20!131 () Unit!67766)

(assert (=> d!1270645 (= (choose!26394 lt!1539320 key!2048 lt!1539310 (hashF!6919 thiss!42308)) _$20!131)))

(declare-fun bs!606556 () Bool)

(assert (= bs!606556 d!1270645))

(assert (=> bs!606556 m!4915219))

(assert (=> bs!606556 m!4915219))

(assert (=> bs!606556 m!4915221))

(assert (=> d!1270521 d!1270645))

(declare-fun d!1270647 () Bool)

(declare-fun res!1771121 () Bool)

(declare-fun e!2688748 () Bool)

(assert (=> d!1270647 (=> res!1771121 e!2688748)))

(assert (=> d!1270647 (= res!1771121 (not ((_ is Cons!48378) lt!1539320)))))

(assert (=> d!1270647 (= (noDuplicateKeys!262 lt!1539320) e!2688748)))

(declare-fun b!4321711 () Bool)

(declare-fun e!2688749 () Bool)

(assert (=> b!4321711 (= e!2688748 e!2688749)))

(declare-fun res!1771122 () Bool)

(assert (=> b!4321711 (=> (not res!1771122) (not e!2688749))))

(assert (=> b!4321711 (= res!1771122 (not (containsKey!400 (t!355381 lt!1539320) (_1!26878 (h!53838 lt!1539320)))))))

(declare-fun b!4321712 () Bool)

(assert (=> b!4321712 (= e!2688749 (noDuplicateKeys!262 (t!355381 lt!1539320)))))

(assert (= (and d!1270647 (not res!1771121)) b!4321711))

(assert (= (and b!4321711 res!1771122) b!4321712))

(declare-fun m!4915685 () Bool)

(assert (=> b!4321711 m!4915685))

(assert (=> b!4321712 m!4915609))

(assert (=> d!1270521 d!1270647))

(declare-fun d!1270649 () Bool)

(declare-fun res!1771123 () Bool)

(declare-fun e!2688750 () Bool)

(assert (=> d!1270649 (=> res!1771123 e!2688750)))

(assert (=> d!1270649 (= res!1771123 ((_ is Nil!48379) (toList!2554 lt!1539314)))))

(assert (=> d!1270649 (= (forall!8811 (toList!2554 lt!1539314) lambda!133857) e!2688750)))

(declare-fun b!4321713 () Bool)

(declare-fun e!2688751 () Bool)

(assert (=> b!4321713 (= e!2688750 e!2688751)))

(declare-fun res!1771124 () Bool)

(assert (=> b!4321713 (=> (not res!1771124) (not e!2688751))))

(assert (=> b!4321713 (= res!1771124 (dynLambda!20507 lambda!133857 (h!53839 (toList!2554 lt!1539314))))))

(declare-fun b!4321714 () Bool)

(assert (=> b!4321714 (= e!2688751 (forall!8811 (t!355382 (toList!2554 lt!1539314)) lambda!133857))))

(assert (= (and d!1270649 (not res!1771123)) b!4321713))

(assert (= (and b!4321713 res!1771124) b!4321714))

(declare-fun b_lambda!127239 () Bool)

(assert (=> (not b_lambda!127239) (not b!4321713)))

(declare-fun m!4915687 () Bool)

(assert (=> b!4321713 m!4915687))

(declare-fun m!4915689 () Bool)

(assert (=> b!4321714 m!4915689))

(assert (=> d!1270551 d!1270649))

(declare-fun d!1270651 () Bool)

(declare-fun res!1771125 () Bool)

(declare-fun e!2688752 () Bool)

(assert (=> d!1270651 (=> res!1771125 e!2688752)))

(assert (=> d!1270651 (= res!1771125 ((_ is Nil!48379) (toList!2554 lt!1539353)))))

(assert (=> d!1270651 (= (forall!8811 (toList!2554 lt!1539353) lambda!133846) e!2688752)))

(declare-fun b!4321715 () Bool)

(declare-fun e!2688753 () Bool)

(assert (=> b!4321715 (= e!2688752 e!2688753)))

(declare-fun res!1771126 () Bool)

(assert (=> b!4321715 (=> (not res!1771126) (not e!2688753))))

(assert (=> b!4321715 (= res!1771126 (dynLambda!20507 lambda!133846 (h!53839 (toList!2554 lt!1539353))))))

(declare-fun b!4321716 () Bool)

(assert (=> b!4321716 (= e!2688753 (forall!8811 (t!355382 (toList!2554 lt!1539353)) lambda!133846))))

(assert (= (and d!1270651 (not res!1771125)) b!4321715))

(assert (= (and b!4321715 res!1771126) b!4321716))

(declare-fun b_lambda!127241 () Bool)

(assert (=> (not b_lambda!127241) (not b!4321715)))

(declare-fun m!4915691 () Bool)

(assert (=> b!4321715 m!4915691))

(declare-fun m!4915693 () Bool)

(assert (=> b!4321716 m!4915693))

(assert (=> d!1270529 d!1270651))

(assert (=> d!1270529 d!1270535))

(declare-fun bs!606557 () Bool)

(declare-fun d!1270653 () Bool)

(assert (= bs!606557 (and d!1270653 d!1270607)))

(declare-fun lambda!133869 () Int)

(assert (=> bs!606557 (= lambda!133869 lambda!133862)))

(declare-fun bs!606558 () Bool)

(assert (= bs!606558 (and d!1270653 b!4321317)))

(assert (=> bs!606558 (= lambda!133869 lambda!133849)))

(declare-fun bs!606559 () Bool)

(assert (= bs!606559 (and d!1270653 d!1270613)))

(assert (=> bs!606559 (= lambda!133869 lambda!133866)))

(declare-fun bs!606560 () Bool)

(assert (= bs!606560 (and d!1270653 b!4321230)))

(assert (=> bs!606560 (= lambda!133869 lambda!133834)))

(declare-fun bs!606561 () Bool)

(assert (= bs!606561 (and d!1270653 d!1270609)))

(assert (=> bs!606561 (= lambda!133869 lambda!133865)))

(declare-fun bs!606562 () Bool)

(assert (= bs!606562 (and d!1270653 d!1270519)))

(assert (=> bs!606562 (not (= lambda!133869 lambda!133841))))

(declare-fun bs!606563 () Bool)

(assert (= bs!606563 (and d!1270653 d!1270547)))

(assert (=> bs!606563 (not (= lambda!133869 lambda!133855))))

(declare-fun bs!606564 () Bool)

(assert (= bs!606564 (and d!1270653 d!1270551)))

(assert (=> bs!606564 (not (= lambda!133869 lambda!133857))))

(declare-fun bs!606565 () Bool)

(assert (= bs!606565 (and d!1270653 d!1270529)))

(assert (=> bs!606565 (= lambda!133869 lambda!133846)))

(declare-fun bs!606566 () Bool)

(assert (= bs!606566 (and d!1270653 d!1270603)))

(assert (=> bs!606566 (not (= lambda!133869 lambda!133859))))

(declare-fun bs!606567 () Bool)

(assert (= bs!606567 (and d!1270653 d!1270595)))

(assert (=> bs!606567 (not (= lambda!133869 lambda!133858))))

(declare-fun bs!606568 () Bool)

(assert (= bs!606568 (and d!1270653 b!4321343)))

(assert (=> bs!606568 (= lambda!133869 lambda!133852)))

(declare-fun e!2688756 () Bool)

(assert (=> d!1270653 e!2688756))

(declare-fun res!1771129 () Bool)

(assert (=> d!1270653 (=> (not res!1771129) (not e!2688756))))

(declare-fun lt!1539622 () ListLongMap!1171)

(assert (=> d!1270653 (= res!1771129 (forall!8811 (toList!2554 lt!1539622) lambda!133869))))

(assert (=> d!1270653 (= lt!1539622 (+!330 lt!1539311 (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (=> d!1270653 true))

(declare-fun _$21!139 () Unit!67766)

(assert (=> d!1270653 (= (choose!26395 lt!1539311 lt!1539310 lt!1539317 (hashF!6919 thiss!42308)) _$21!139)))

(declare-fun b!4321719 () Bool)

(assert (=> b!4321719 (= e!2688756 (allKeysSameHashInMap!388 lt!1539622 (hashF!6919 thiss!42308)))))

(assert (= (and d!1270653 res!1771129) b!4321719))

(declare-fun m!4915695 () Bool)

(assert (=> d!1270653 m!4915695))

(assert (=> d!1270653 m!4915233))

(declare-fun m!4915697 () Bool)

(assert (=> b!4321719 m!4915697))

(assert (=> d!1270529 d!1270653))

(declare-fun d!1270655 () Bool)

(declare-fun res!1771130 () Bool)

(declare-fun e!2688757 () Bool)

(assert (=> d!1270655 (=> res!1771130 e!2688757)))

(assert (=> d!1270655 (= res!1771130 ((_ is Nil!48379) (toList!2554 lt!1539311)))))

(assert (=> d!1270655 (= (forall!8811 (toList!2554 lt!1539311) lambda!133846) e!2688757)))

(declare-fun b!4321720 () Bool)

(declare-fun e!2688758 () Bool)

(assert (=> b!4321720 (= e!2688757 e!2688758)))

(declare-fun res!1771131 () Bool)

(assert (=> b!4321720 (=> (not res!1771131) (not e!2688758))))

(assert (=> b!4321720 (= res!1771131 (dynLambda!20507 lambda!133846 (h!53839 (toList!2554 lt!1539311))))))

(declare-fun b!4321721 () Bool)

(assert (=> b!4321721 (= e!2688758 (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133846))))

(assert (= (and d!1270655 (not res!1771130)) b!4321720))

(assert (= (and b!4321720 res!1771131) b!4321721))

(declare-fun b_lambda!127243 () Bool)

(assert (=> (not b_lambda!127243) (not b!4321720)))

(declare-fun m!4915699 () Bool)

(assert (=> b!4321720 m!4915699))

(declare-fun m!4915701 () Bool)

(assert (=> b!4321721 m!4915701))

(assert (=> d!1270529 d!1270655))

(declare-fun d!1270657 () Bool)

(declare-fun res!1771132 () Bool)

(declare-fun e!2688759 () Bool)

(assert (=> d!1270657 (=> res!1771132 e!2688759)))

(assert (=> d!1270657 (= res!1771132 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539311))))))

(assert (=> d!1270657 (= (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133834) e!2688759)))

(declare-fun b!4321722 () Bool)

(declare-fun e!2688760 () Bool)

(assert (=> b!4321722 (= e!2688759 e!2688760)))

(declare-fun res!1771133 () Bool)

(assert (=> b!4321722 (=> (not res!1771133) (not e!2688760))))

(assert (=> b!4321722 (= res!1771133 (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))

(declare-fun b!4321723 () Bool)

(assert (=> b!4321723 (= e!2688760 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539311))) lambda!133834))))

(assert (= (and d!1270657 (not res!1771132)) b!4321722))

(assert (= (and b!4321722 res!1771133) b!4321723))

(declare-fun b_lambda!127245 () Bool)

(assert (=> (not b_lambda!127245) (not b!4321722)))

(declare-fun m!4915703 () Bool)

(assert (=> b!4321722 m!4915703))

(declare-fun m!4915705 () Bool)

(assert (=> b!4321723 m!4915705))

(assert (=> b!4321304 d!1270657))

(declare-fun d!1270659 () Bool)

(declare-fun res!1771134 () Bool)

(declare-fun e!2688761 () Bool)

(assert (=> d!1270659 (=> res!1771134 e!2688761)))

(assert (=> d!1270659 (= res!1771134 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539314))))))

(assert (=> d!1270659 (= (forall!8811 (t!355382 (toList!2554 lt!1539314)) lambda!133834) e!2688761)))

(declare-fun b!4321724 () Bool)

(declare-fun e!2688762 () Bool)

(assert (=> b!4321724 (= e!2688761 e!2688762)))

(declare-fun res!1771135 () Bool)

(assert (=> b!4321724 (=> (not res!1771135) (not e!2688762))))

(assert (=> b!4321724 (= res!1771135 (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (toList!2554 lt!1539314)))))))

(declare-fun b!4321725 () Bool)

(assert (=> b!4321725 (= e!2688762 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539314))) lambda!133834))))

(assert (= (and d!1270659 (not res!1771134)) b!4321724))

(assert (= (and b!4321724 res!1771135) b!4321725))

(declare-fun b_lambda!127247 () Bool)

(assert (=> (not b_lambda!127247) (not b!4321724)))

(declare-fun m!4915707 () Bool)

(assert (=> b!4321724 m!4915707))

(declare-fun m!4915709 () Bool)

(assert (=> b!4321725 m!4915709))

(assert (=> b!4321312 d!1270659))

(assert (=> bm!299509 d!1270543))

(declare-fun bs!606569 () Bool)

(declare-fun d!1270661 () Bool)

(assert (= bs!606569 (and d!1270661 d!1270607)))

(declare-fun lambda!133872 () Int)

(assert (=> bs!606569 (= lambda!133872 lambda!133862)))

(declare-fun bs!606570 () Bool)

(assert (= bs!606570 (and d!1270661 b!4321317)))

(assert (=> bs!606570 (= lambda!133872 lambda!133849)))

(declare-fun bs!606571 () Bool)

(assert (= bs!606571 (and d!1270661 d!1270613)))

(assert (=> bs!606571 (= lambda!133872 lambda!133866)))

(declare-fun bs!606572 () Bool)

(assert (= bs!606572 (and d!1270661 d!1270609)))

(assert (=> bs!606572 (= lambda!133872 lambda!133865)))

(declare-fun bs!606573 () Bool)

(assert (= bs!606573 (and d!1270661 d!1270519)))

(assert (=> bs!606573 (not (= lambda!133872 lambda!133841))))

(declare-fun bs!606574 () Bool)

(assert (= bs!606574 (and d!1270661 d!1270547)))

(assert (=> bs!606574 (not (= lambda!133872 lambda!133855))))

(declare-fun bs!606575 () Bool)

(assert (= bs!606575 (and d!1270661 d!1270551)))

(assert (=> bs!606575 (not (= lambda!133872 lambda!133857))))

(declare-fun bs!606576 () Bool)

(assert (= bs!606576 (and d!1270661 b!4321230)))

(assert (=> bs!606576 (= lambda!133872 lambda!133834)))

(declare-fun bs!606577 () Bool)

(assert (= bs!606577 (and d!1270661 d!1270653)))

(assert (=> bs!606577 (= lambda!133872 lambda!133869)))

(declare-fun bs!606578 () Bool)

(assert (= bs!606578 (and d!1270661 d!1270529)))

(assert (=> bs!606578 (= lambda!133872 lambda!133846)))

(declare-fun bs!606579 () Bool)

(assert (= bs!606579 (and d!1270661 d!1270603)))

(assert (=> bs!606579 (not (= lambda!133872 lambda!133859))))

(declare-fun bs!606580 () Bool)

(assert (= bs!606580 (and d!1270661 d!1270595)))

(assert (=> bs!606580 (not (= lambda!133872 lambda!133858))))

(declare-fun bs!606581 () Bool)

(assert (= bs!606581 (and d!1270661 b!4321343)))

(assert (=> bs!606581 (= lambda!133872 lambda!133852)))

(declare-fun e!2688765 () Bool)

(assert (=> d!1270661 e!2688765))

(declare-fun res!1771138 () Bool)

(assert (=> d!1270661 (=> (not res!1771138) (not e!2688765))))

(assert (=> d!1270661 (= res!1771138 (contains!10426 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)))))

(declare-fun lt!1539625 () Unit!67766)

(declare-fun choose!26402 (ListLongMap!1171 K!9629 Hashable!4669) Unit!67766)

(assert (=> d!1270661 (= lt!1539625 (choose!26402 lt!1539421 key!2048 (hashF!6919 thiss!42308)))))

(assert (=> d!1270661 (forall!8811 (toList!2554 lt!1539421) lambda!133872)))

(assert (=> d!1270661 (= (lemmaInGenericMapThenInLongMap!162 lt!1539421 key!2048 (hashF!6919 thiss!42308)) lt!1539625)))

(declare-fun b!4321728 () Bool)

(assert (=> b!4321728 (= e!2688765 (isDefined!7601 (getPair!162 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1270661 res!1771138) b!4321728))

(assert (=> d!1270661 m!4915249))

(assert (=> d!1270661 m!4915249))

(declare-fun m!4915711 () Bool)

(assert (=> d!1270661 m!4915711))

(declare-fun m!4915713 () Bool)

(assert (=> d!1270661 m!4915713))

(declare-fun m!4915715 () Bool)

(assert (=> d!1270661 m!4915715))

(assert (=> b!4321728 m!4915249))

(assert (=> b!4321728 m!4915249))

(declare-fun m!4915717 () Bool)

(assert (=> b!4321728 m!4915717))

(assert (=> b!4321728 m!4915717))

(declare-fun m!4915719 () Bool)

(assert (=> b!4321728 m!4915719))

(assert (=> b!4321728 m!4915719))

(declare-fun m!4915721 () Bool)

(assert (=> b!4321728 m!4915721))

(assert (=> b!4321346 d!1270661))

(declare-fun d!1270663 () Bool)

(assert (=> d!1270663 (= (apply!11141 (ite c!734950 lt!1539421 call!299515) call!299512) (get!15675 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512)))))

(declare-fun bs!606582 () Bool)

(assert (= bs!606582 d!1270663))

(assert (=> bs!606582 m!4915639))

(assert (=> bs!606582 m!4915639))

(declare-fun m!4915723 () Bool)

(assert (=> bs!606582 m!4915723))

(assert (=> bm!299508 d!1270663))

(declare-fun d!1270665 () Bool)

(assert (=> d!1270665 (= (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun bs!606583 () Bool)

(assert (= bs!606583 d!1270665))

(declare-fun m!4915725 () Bool)

(assert (=> bs!606583 m!4915725))

(assert (=> d!1270543 d!1270665))

(assert (=> bm!299493 d!1270543))

(declare-fun d!1270667 () Bool)

(assert (=> d!1270667 (= (map!10405 (_2!26880 lt!1539332)) (map!10407 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))))))

(declare-fun bs!606584 () Bool)

(assert (= bs!606584 d!1270667))

(declare-fun m!4915727 () Bool)

(assert (=> bs!606584 m!4915727))

(assert (=> bm!299492 d!1270667))

(assert (=> d!1270541 d!1270511))

(declare-fun b!4321729 () Bool)

(declare-fun e!2688767 () Unit!67766)

(declare-fun e!2688770 () Unit!67766)

(assert (=> b!4321729 (= e!2688767 e!2688770)))

(declare-fun c!735056 () Bool)

(declare-fun call!299613 () Bool)

(assert (=> b!4321729 (= c!735056 call!299613)))

(declare-fun b!4321730 () Bool)

(declare-fun e!2688769 () Bool)

(assert (=> b!4321730 (= e!2688769 (contains!10431 (keys!16173 (map!10406 thiss!42308)) key!2048))))

(declare-fun bm!299608 () Bool)

(declare-fun e!2688771 () List!48504)

(assert (=> bm!299608 (= call!299613 (contains!10431 e!2688771 key!2048))))

(declare-fun c!735058 () Bool)

(declare-fun c!735057 () Bool)

(assert (=> bm!299608 (= c!735058 c!735057)))

(declare-fun d!1270669 () Bool)

(declare-fun e!2688768 () Bool)

(assert (=> d!1270669 e!2688768))

(declare-fun res!1771140 () Bool)

(assert (=> d!1270669 (=> res!1771140 e!2688768)))

(declare-fun e!2688766 () Bool)

(assert (=> d!1270669 (= res!1771140 e!2688766)))

(declare-fun res!1771141 () Bool)

(assert (=> d!1270669 (=> (not res!1771141) (not e!2688766))))

(declare-fun lt!1539630 () Bool)

(assert (=> d!1270669 (= res!1771141 (not lt!1539630))))

(declare-fun lt!1539628 () Bool)

(assert (=> d!1270669 (= lt!1539630 lt!1539628)))

(declare-fun lt!1539626 () Unit!67766)

(assert (=> d!1270669 (= lt!1539626 e!2688767)))

(assert (=> d!1270669 (= c!735057 lt!1539628)))

(assert (=> d!1270669 (= lt!1539628 (containsKey!402 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(assert (=> d!1270669 (= (contains!10429 (map!10406 thiss!42308) key!2048) lt!1539630)))

(declare-fun b!4321731 () Bool)

(assert (=> b!4321731 (= e!2688768 e!2688769)))

(declare-fun res!1771139 () Bool)

(assert (=> b!4321731 (=> (not res!1771139) (not e!2688769))))

(assert (=> b!4321731 (= res!1771139 (isDefined!7603 (getValueByKey!298 (toList!2555 (map!10406 thiss!42308)) key!2048)))))

(declare-fun b!4321732 () Bool)

(declare-fun Unit!67781 () Unit!67766)

(assert (=> b!4321732 (= e!2688770 Unit!67781)))

(declare-fun b!4321733 () Bool)

(assert (=> b!4321733 false))

(declare-fun lt!1539627 () Unit!67766)

(declare-fun lt!1539632 () Unit!67766)

(assert (=> b!4321733 (= lt!1539627 lt!1539632)))

(assert (=> b!4321733 (containsKey!402 (toList!2555 (map!10406 thiss!42308)) key!2048)))

(assert (=> b!4321733 (= lt!1539632 (lemmaInGetKeysListThenContainsKey!53 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(declare-fun Unit!67782 () Unit!67766)

(assert (=> b!4321733 (= e!2688770 Unit!67782)))

(declare-fun b!4321734 () Bool)

(assert (=> b!4321734 (= e!2688771 (getKeysList!56 (toList!2555 (map!10406 thiss!42308))))))

(declare-fun b!4321735 () Bool)

(assert (=> b!4321735 (= e!2688766 (not (contains!10431 (keys!16173 (map!10406 thiss!42308)) key!2048)))))

(declare-fun b!4321736 () Bool)

(assert (=> b!4321736 (= e!2688771 (keys!16173 (map!10406 thiss!42308)))))

(declare-fun b!4321737 () Bool)

(declare-fun lt!1539633 () Unit!67766)

(assert (=> b!4321737 (= e!2688767 lt!1539633)))

(declare-fun lt!1539631 () Unit!67766)

(assert (=> b!4321737 (= lt!1539631 (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(assert (=> b!4321737 (isDefined!7603 (getValueByKey!298 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(declare-fun lt!1539629 () Unit!67766)

(assert (=> b!4321737 (= lt!1539629 lt!1539631)))

(assert (=> b!4321737 (= lt!1539633 (lemmaInListThenGetKeysListContains!53 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(assert (=> b!4321737 call!299613))

(assert (= (and d!1270669 c!735057) b!4321737))

(assert (= (and d!1270669 (not c!735057)) b!4321729))

(assert (= (and b!4321729 c!735056) b!4321733))

(assert (= (and b!4321729 (not c!735056)) b!4321732))

(assert (= (or b!4321737 b!4321729) bm!299608))

(assert (= (and bm!299608 c!735058) b!4321734))

(assert (= (and bm!299608 (not c!735058)) b!4321736))

(assert (= (and d!1270669 res!1771141) b!4321735))

(assert (= (and d!1270669 (not res!1771140)) b!4321731))

(assert (= (and b!4321731 res!1771139) b!4321730))

(declare-fun m!4915729 () Bool)

(assert (=> b!4321737 m!4915729))

(declare-fun m!4915731 () Bool)

(assert (=> b!4321737 m!4915731))

(assert (=> b!4321737 m!4915731))

(declare-fun m!4915733 () Bool)

(assert (=> b!4321737 m!4915733))

(declare-fun m!4915735 () Bool)

(assert (=> b!4321737 m!4915735))

(assert (=> b!4321730 m!4915213))

(declare-fun m!4915737 () Bool)

(assert (=> b!4321730 m!4915737))

(assert (=> b!4321730 m!4915737))

(declare-fun m!4915739 () Bool)

(assert (=> b!4321730 m!4915739))

(declare-fun m!4915741 () Bool)

(assert (=> bm!299608 m!4915741))

(assert (=> b!4321731 m!4915731))

(assert (=> b!4321731 m!4915731))

(assert (=> b!4321731 m!4915733))

(declare-fun m!4915743 () Bool)

(assert (=> b!4321734 m!4915743))

(declare-fun m!4915745 () Bool)

(assert (=> d!1270669 m!4915745))

(assert (=> b!4321736 m!4915213))

(assert (=> b!4321736 m!4915737))

(assert (=> b!4321735 m!4915213))

(assert (=> b!4321735 m!4915737))

(assert (=> b!4321735 m!4915737))

(assert (=> b!4321735 m!4915739))

(assert (=> b!4321733 m!4915745))

(declare-fun m!4915747 () Bool)

(assert (=> b!4321733 m!4915747))

(assert (=> d!1270541 d!1270669))

(declare-fun d!1270671 () Bool)

(declare-fun lt!1539634 () Bool)

(assert (=> d!1270671 (= lt!1539634 (contains!10426 (map!10405 (v!42753 (underlying!9736 thiss!42308))) lt!1539410))))

(assert (=> d!1270671 (= lt!1539634 (contains!10427 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))

(assert (=> d!1270671 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270671 (= (contains!10424 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) lt!1539634)))

(declare-fun bs!606585 () Bool)

(assert (= bs!606585 d!1270671))

(assert (=> bs!606585 m!4915211))

(assert (=> bs!606585 m!4915211))

(declare-fun m!4915749 () Bool)

(assert (=> bs!606585 m!4915749))

(declare-fun m!4915751 () Bool)

(assert (=> bs!606585 m!4915751))

(assert (=> bs!606585 m!4915257))

(assert (=> d!1270541 d!1270671))

(declare-fun b!4321738 () Bool)

(declare-fun e!2688773 () Unit!67766)

(declare-fun e!2688776 () Unit!67766)

(assert (=> b!4321738 (= e!2688773 e!2688776)))

(declare-fun c!735059 () Bool)

(declare-fun call!299614 () Bool)

(assert (=> b!4321738 (= c!735059 call!299614)))

(declare-fun b!4321739 () Bool)

(declare-fun e!2688775 () Bool)

(assert (=> b!4321739 (= e!2688775 (contains!10431 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(declare-fun bm!299609 () Bool)

(declare-fun e!2688777 () List!48504)

(assert (=> bm!299609 (= call!299614 (contains!10431 e!2688777 key!2048))))

(declare-fun c!735061 () Bool)

(declare-fun c!735060 () Bool)

(assert (=> bm!299609 (= c!735061 c!735060)))

(declare-fun d!1270673 () Bool)

(declare-fun e!2688774 () Bool)

(assert (=> d!1270673 e!2688774))

(declare-fun res!1771143 () Bool)

(assert (=> d!1270673 (=> res!1771143 e!2688774)))

(declare-fun e!2688772 () Bool)

(assert (=> d!1270673 (= res!1771143 e!2688772)))

(declare-fun res!1771144 () Bool)

(assert (=> d!1270673 (=> (not res!1771144) (not e!2688772))))

(declare-fun lt!1539639 () Bool)

(assert (=> d!1270673 (= res!1771144 (not lt!1539639))))

(declare-fun lt!1539637 () Bool)

(assert (=> d!1270673 (= lt!1539639 lt!1539637)))

(declare-fun lt!1539635 () Unit!67766)

(assert (=> d!1270673 (= lt!1539635 e!2688773)))

(assert (=> d!1270673 (= c!735060 lt!1539637)))

(assert (=> d!1270673 (= lt!1539637 (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(assert (=> d!1270673 (= (contains!10429 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) key!2048) lt!1539639)))

(declare-fun b!4321740 () Bool)

(assert (=> b!4321740 (= e!2688774 e!2688775)))

(declare-fun res!1771142 () Bool)

(assert (=> b!4321740 (=> (not res!1771142) (not e!2688775))))

(assert (=> b!4321740 (= res!1771142 (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048)))))

(declare-fun b!4321741 () Bool)

(declare-fun Unit!67783 () Unit!67766)

(assert (=> b!4321741 (= e!2688776 Unit!67783)))

(declare-fun b!4321742 () Bool)

(assert (=> b!4321742 false))

(declare-fun lt!1539636 () Unit!67766)

(declare-fun lt!1539641 () Unit!67766)

(assert (=> b!4321742 (= lt!1539636 lt!1539641)))

(assert (=> b!4321742 (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048)))

(assert (=> b!4321742 (= lt!1539641 (lemmaInGetKeysListThenContainsKey!53 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(declare-fun Unit!67784 () Unit!67766)

(assert (=> b!4321742 (= e!2688776 Unit!67784)))

(declare-fun b!4321743 () Bool)

(assert (=> b!4321743 (= e!2688777 (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4321744 () Bool)

(assert (=> b!4321744 (= e!2688772 (not (contains!10431 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048)))))

(declare-fun b!4321745 () Bool)

(assert (=> b!4321745 (= e!2688777 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321746 () Bool)

(declare-fun lt!1539642 () Unit!67766)

(assert (=> b!4321746 (= e!2688773 lt!1539642)))

(declare-fun lt!1539640 () Unit!67766)

(assert (=> b!4321746 (= lt!1539640 (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(assert (=> b!4321746 (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(declare-fun lt!1539638 () Unit!67766)

(assert (=> b!4321746 (= lt!1539638 lt!1539640)))

(assert (=> b!4321746 (= lt!1539642 (lemmaInListThenGetKeysListContains!53 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(assert (=> b!4321746 call!299614))

(assert (= (and d!1270673 c!735060) b!4321746))

(assert (= (and d!1270673 (not c!735060)) b!4321738))

(assert (= (and b!4321738 c!735059) b!4321742))

(assert (= (and b!4321738 (not c!735059)) b!4321741))

(assert (= (or b!4321746 b!4321738) bm!299609))

(assert (= (and bm!299609 c!735061) b!4321743))

(assert (= (and bm!299609 (not c!735061)) b!4321745))

(assert (= (and d!1270673 res!1771144) b!4321744))

(assert (= (and d!1270673 (not res!1771143)) b!4321740))

(assert (= (and b!4321740 res!1771142) b!4321739))

(declare-fun m!4915753 () Bool)

(assert (=> b!4321746 m!4915753))

(declare-fun m!4915755 () Bool)

(assert (=> b!4321746 m!4915755))

(assert (=> b!4321746 m!4915755))

(declare-fun m!4915757 () Bool)

(assert (=> b!4321746 m!4915757))

(declare-fun m!4915759 () Bool)

(assert (=> b!4321746 m!4915759))

(assert (=> b!4321739 m!4915363))

(declare-fun m!4915761 () Bool)

(assert (=> b!4321739 m!4915761))

(assert (=> b!4321739 m!4915761))

(declare-fun m!4915763 () Bool)

(assert (=> b!4321739 m!4915763))

(declare-fun m!4915765 () Bool)

(assert (=> bm!299609 m!4915765))

(assert (=> b!4321740 m!4915755))

(assert (=> b!4321740 m!4915755))

(assert (=> b!4321740 m!4915757))

(declare-fun m!4915767 () Bool)

(assert (=> b!4321743 m!4915767))

(declare-fun m!4915769 () Bool)

(assert (=> d!1270673 m!4915769))

(assert (=> b!4321745 m!4915363))

(assert (=> b!4321745 m!4915761))

(assert (=> b!4321744 m!4915363))

(assert (=> b!4321744 m!4915761))

(assert (=> b!4321744 m!4915761))

(assert (=> b!4321744 m!4915763))

(assert (=> b!4321742 m!4915769))

(declare-fun m!4915771 () Bool)

(assert (=> b!4321742 m!4915771))

(assert (=> d!1270541 d!1270673))

(assert (=> d!1270541 d!1270539))

(assert (=> d!1270541 d!1270545))

(assert (=> d!1270541 d!1270613))

(assert (=> d!1270541 d!1270543))

(assert (=> d!1270513 d!1270509))

(declare-fun b!4321783 () Bool)

(declare-fun res!1771155 () Bool)

(declare-fun e!2688807 () Bool)

(assert (=> b!4321783 (=> (not res!1771155) (not e!2688807))))

(assert (=> b!4321783 (= res!1771155 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun e!2688803 () Bool)

(assert (=> b!4321783 (= e!2688803 e!2688807)))

(declare-fun b!4321784 () Bool)

(declare-fun e!2688806 () List!48502)

(declare-fun e!2688805 () List!48502)

(assert (=> b!4321784 (= e!2688806 e!2688805)))

(declare-fun c!735081 () Bool)

(assert (=> b!4321784 (= c!735081 (and (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4321785 () Bool)

(declare-fun res!1771154 () Bool)

(declare-fun e!2688810 () Bool)

(assert (=> b!4321785 (=> (not res!1771154) (not e!2688810))))

(assert (=> b!4321785 (= res!1771154 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4321785 (= e!2688803 e!2688810)))

(declare-fun b!4321787 () Bool)

(declare-fun call!299625 () List!48502)

(declare-fun lt!1539665 () SeekEntryResult!21)

(assert (=> b!4321787 (= e!2688807 (= call!299625 (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))))))

(declare-fun b!4321788 () Bool)

(declare-fun e!2688802 () List!48502)

(assert (=> b!4321788 (= e!2688802 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(declare-fun bm!299618 () Bool)

(declare-fun call!299626 () ListLongMap!1171)

(assert (=> bm!299618 (= call!299626 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321789 () Bool)

(declare-fun lt!1539675 () Unit!67766)

(declare-fun lt!1539671 () Unit!67766)

(assert (=> b!4321789 (= lt!1539675 lt!1539671)))

(declare-fun e!2688808 () Bool)

(assert (=> b!4321789 e!2688808))

(declare-fun c!735078 () Bool)

(assert (=> b!4321789 (= c!735078 (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) (_ BitVec 32) Int) Unit!67766)

(assert (=> b!4321789 (= lt!1539671 (lemmaKeyInListMapThenSameValueInArray!11 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539665) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539667 () Unit!67766)

(declare-fun lt!1539666 () Unit!67766)

(assert (=> b!4321789 (= lt!1539667 lt!1539666)))

(assert (=> b!4321789 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665)))))

(assert (=> b!4321789 (= lt!1539666 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1539665) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539672 () Unit!67766)

(declare-fun lt!1539670 () Unit!67766)

(assert (=> b!4321789 (= lt!1539672 lt!1539670)))

(assert (=> b!4321789 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17232 (_ BitVec 64) (_ BitVec 32)) Unit!67766)

(assert (=> b!4321789 (= lt!1539670 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539665)))))

(assert (=> b!4321789 (= e!2688802 (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665)))))

(declare-fun b!4321790 () Bool)

(declare-fun e!2688800 () Bool)

(declare-fun call!299623 () List!48502)

(assert (=> b!4321790 (= e!2688800 (= call!299623 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321791 () Bool)

(declare-fun c!735080 () Bool)

(assert (=> b!4321791 (= c!735080 (and (= lt!1539310 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2688809 () List!48502)

(assert (=> b!4321791 (= e!2688805 e!2688809)))

(declare-fun b!4321792 () Bool)

(declare-fun e!2688801 () Bool)

(declare-fun lt!1539668 () List!48502)

(assert (=> b!4321792 (= e!2688801 (= lt!1539668 (get!15675 (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310))))))

(declare-fun bm!299619 () Bool)

(assert (=> bm!299619 (= call!299625 call!299623)))

(declare-fun b!4321793 () Bool)

(declare-fun e!2688804 () Bool)

(declare-fun lt!1539673 () SeekEntryResult!21)

(assert (=> b!4321793 (= e!2688804 (inRange!0 (index!1464 lt!1539673) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321794 () Bool)

(assert (=> b!4321794 (= e!2688808 e!2688803)))

(declare-fun c!735077 () Bool)

(assert (=> b!4321794 (= c!735077 (= lt!1539310 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4321795 () Bool)

(assert (=> b!4321795 (= e!2688805 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun d!1270675 () Bool)

(assert (=> d!1270675 e!2688801))

(declare-fun c!735079 () Bool)

(assert (=> d!1270675 (= c!735079 (contains!10427 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(assert (=> d!1270675 (= lt!1539668 e!2688806)))

(declare-fun c!735082 () Bool)

(assert (=> d!1270675 (= c!735082 (= lt!1539310 (bvneg lt!1539310)))))

(assert (=> d!1270675 (valid!3765 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))

(assert (=> d!1270675 (= (apply!11140 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310) lt!1539668)))

(declare-fun b!4321786 () Bool)

(assert (=> b!4321786 (= e!2688809 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(declare-fun call!299624 () ListLongMap!1171)

(declare-fun bm!299620 () Bool)

(assert (=> bm!299620 (= call!299623 (apply!11141 (ite c!735078 call!299626 call!299624) lt!1539310))))

(declare-fun b!4321796 () Bool)

(assert (=> b!4321796 (= e!2688806 e!2688802)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!17232 (_ BitVec 32)) SeekEntryResult!21)

(assert (=> b!4321796 (= lt!1539665 (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539674 () Unit!67766)

(declare-fun lemmaSeekEntryGivesInRangeIndex!11 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64)) Unit!67766)

(assert (=> b!4321796 (= lt!1539674 (lemmaSeekEntryGivesInRangeIndex!11 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(assert (=> b!4321796 (= lt!1539673 (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun res!1771156 () Bool)

(assert (=> b!4321796 (= res!1771156 (not ((_ is Found!21) lt!1539673)))))

(assert (=> b!4321796 (=> res!1771156 e!2688804)))

(assert (=> b!4321796 e!2688804))

(declare-fun lt!1539669 () Unit!67766)

(assert (=> b!4321796 (= lt!1539669 lt!1539674)))

(declare-fun c!735076 () Bool)

(assert (=> b!4321796 (= c!735076 ((_ is Found!21) lt!1539665))))

(declare-fun bm!299621 () Bool)

(assert (=> bm!299621 (= call!299624 call!299626)))

(declare-fun b!4321797 () Bool)

(assert (=> b!4321797 (= e!2688809 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun b!4321798 () Bool)

(assert (=> b!4321798 (= e!2688801 (= lt!1539668 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310)))))

(declare-fun b!4321799 () Bool)

(assert (=> b!4321799 (= e!2688810 (= call!299625 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321800 () Bool)

(assert (=> b!4321800 (= e!2688808 e!2688800)))

(declare-fun res!1771153 () Bool)

(assert (=> b!4321800 (= res!1771153 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4321800 (=> (not res!1771153) (not e!2688800))))

(assert (= (and d!1270675 c!735082) b!4321784))

(assert (= (and d!1270675 (not c!735082)) b!4321796))

(assert (= (and b!4321784 c!735081) b!4321795))

(assert (= (and b!4321784 (not c!735081)) b!4321791))

(assert (= (and b!4321791 c!735080) b!4321797))

(assert (= (and b!4321791 (not c!735080)) b!4321786))

(assert (= (and b!4321796 (not res!1771156)) b!4321793))

(assert (= (and b!4321796 c!735076) b!4321789))

(assert (= (and b!4321796 (not c!735076)) b!4321788))

(assert (= (and b!4321789 c!735078) b!4321800))

(assert (= (and b!4321789 (not c!735078)) b!4321794))

(assert (= (and b!4321800 res!1771153) b!4321790))

(assert (= (and b!4321794 c!735077) b!4321785))

(assert (= (and b!4321794 (not c!735077)) b!4321783))

(assert (= (and b!4321785 res!1771154) b!4321799))

(assert (= (and b!4321783 res!1771155) b!4321787))

(assert (= (or b!4321799 b!4321787) bm!299621))

(assert (= (or b!4321799 b!4321787) bm!299619))

(assert (= (or b!4321790 bm!299621) bm!299618))

(assert (= (or b!4321790 bm!299619) bm!299620))

(assert (= (and d!1270675 c!735079) b!4321792))

(assert (= (and d!1270675 (not c!735079)) b!4321798))

(declare-fun b_lambda!127249 () Bool)

(assert (=> (not b_lambda!127249) (not b!4321788)))

(assert (=> b!4321788 t!355384))

(declare-fun b_and!340521 () Bool)

(assert (= b_and!340519 (and (=> t!355384 result!314878) b_and!340521)))

(declare-fun b_lambda!127251 () Bool)

(assert (=> (not b_lambda!127251) (not b!4321786)))

(assert (=> b!4321786 t!355384))

(declare-fun b_and!340523 () Bool)

(assert (= b_and!340521 (and (=> t!355384 result!314878) b_and!340523)))

(declare-fun b_lambda!127253 () Bool)

(assert (=> (not b_lambda!127253) (not b!4321798)))

(assert (=> b!4321798 t!355384))

(declare-fun b_and!340525 () Bool)

(assert (= b_and!340523 (and (=> t!355384 result!314878) b_and!340525)))

(declare-fun m!4915773 () Bool)

(assert (=> b!4321793 m!4915773))

(assert (=> b!4321798 m!4915279))

(declare-fun m!4915775 () Bool)

(assert (=> bm!299620 m!4915775))

(declare-fun m!4915777 () Bool)

(assert (=> b!4321787 m!4915777))

(declare-fun m!4915779 () Bool)

(assert (=> b!4321796 m!4915779))

(declare-fun m!4915781 () Bool)

(assert (=> b!4321796 m!4915781))

(assert (=> d!1270675 m!4915269))

(assert (=> d!1270675 m!4915533))

(assert (=> b!4321792 m!4915377))

(declare-fun m!4915783 () Bool)

(assert (=> b!4321792 m!4915783))

(assert (=> b!4321792 m!4915783))

(declare-fun m!4915785 () Bool)

(assert (=> b!4321792 m!4915785))

(declare-fun m!4915787 () Bool)

(assert (=> b!4321783 m!4915787))

(assert (=> b!4321786 m!4915279))

(declare-fun m!4915789 () Bool)

(assert (=> b!4321789 m!4915789))

(assert (=> b!4321789 m!4915725))

(declare-fun m!4915791 () Bool)

(assert (=> b!4321789 m!4915791))

(declare-fun m!4915793 () Bool)

(assert (=> b!4321789 m!4915793))

(assert (=> b!4321789 m!4915791))

(assert (=> b!4321789 m!4915787))

(declare-fun m!4915795 () Bool)

(assert (=> b!4321789 m!4915795))

(declare-fun m!4915797 () Bool)

(assert (=> b!4321789 m!4915797))

(assert (=> b!4321789 m!4915777))

(assert (=> b!4321789 m!4915725))

(assert (=> b!4321788 m!4915279))

(assert (=> bm!299618 m!4915725))

(assert (=> d!1270513 d!1270675))

(assert (=> d!1270513 d!1270587))

(declare-fun d!1270677 () Bool)

(declare-fun res!1771157 () Bool)

(declare-fun e!2688811 () Bool)

(assert (=> d!1270677 (=> res!1771157 e!2688811)))

(assert (=> d!1270677 (= res!1771157 (not ((_ is Cons!48378) (_2!26879 (h!53839 (toList!2554 lt!1539314))))))))

(assert (=> d!1270677 (= (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539314)))) e!2688811)))

(declare-fun b!4321801 () Bool)

(declare-fun e!2688812 () Bool)

(assert (=> b!4321801 (= e!2688811 e!2688812)))

(declare-fun res!1771158 () Bool)

(assert (=> b!4321801 (=> (not res!1771158) (not e!2688812))))

(assert (=> b!4321801 (= res!1771158 (not (containsKey!400 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314)))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539314))))))))))

(declare-fun b!4321802 () Bool)

(assert (=> b!4321802 (= e!2688812 (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314))))))))

(assert (= (and d!1270677 (not res!1771157)) b!4321801))

(assert (= (and b!4321801 res!1771158) b!4321802))

(declare-fun m!4915799 () Bool)

(assert (=> b!4321801 m!4915799))

(declare-fun m!4915801 () Bool)

(assert (=> b!4321802 m!4915801))

(assert (=> bs!606499 d!1270677))

(declare-fun d!1270679 () Bool)

(declare-fun res!1771163 () Bool)

(declare-fun e!2688817 () Bool)

(assert (=> d!1270679 (=> res!1771163 e!2688817)))

(assert (=> d!1270679 (= res!1771163 (and ((_ is Cons!48378) lt!1539347) (= (_1!26878 (h!53838 lt!1539347)) key!2048)))))

(assert (=> d!1270679 (= (containsKey!400 lt!1539347 key!2048) e!2688817)))

(declare-fun b!4321807 () Bool)

(declare-fun e!2688818 () Bool)

(assert (=> b!4321807 (= e!2688817 e!2688818)))

(declare-fun res!1771164 () Bool)

(assert (=> b!4321807 (=> (not res!1771164) (not e!2688818))))

(assert (=> b!4321807 (= res!1771164 ((_ is Cons!48378) lt!1539347))))

(declare-fun b!4321808 () Bool)

(assert (=> b!4321808 (= e!2688818 (containsKey!400 (t!355381 lt!1539347) key!2048))))

(assert (= (and d!1270679 (not res!1771163)) b!4321807))

(assert (= (and b!4321807 res!1771164) b!4321808))

(declare-fun m!4915803 () Bool)

(assert (=> b!4321808 m!4915803))

(assert (=> d!1270523 d!1270679))

(assert (=> d!1270523 d!1270647))

(declare-fun d!1270681 () Bool)

(assert (=> d!1270681 (dynLambda!20507 lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))

(declare-fun lt!1539678 () Unit!67766)

(declare-fun choose!26403 (List!48503 Int tuple2!47186) Unit!67766)

(assert (=> d!1270681 (= lt!1539678 (choose!26403 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun e!2688821 () Bool)

(assert (=> d!1270681 e!2688821))

(declare-fun res!1771167 () Bool)

(assert (=> d!1270681 (=> (not res!1771167) (not e!2688821))))

(assert (=> d!1270681 (= res!1771167 (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133852))))

(assert (=> d!1270681 (= (forallContained!1532 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) lt!1539678)))

(declare-fun b!4321811 () Bool)

(assert (=> b!4321811 (= e!2688821 (contains!10428 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(assert (= (and d!1270681 res!1771167) b!4321811))

(declare-fun b_lambda!127255 () Bool)

(assert (=> (not b_lambda!127255) (not d!1270681)))

(declare-fun m!4915805 () Bool)

(assert (=> d!1270681 m!4915805))

(declare-fun m!4915807 () Bool)

(assert (=> d!1270681 m!4915807))

(declare-fun m!4915809 () Bool)

(assert (=> d!1270681 m!4915809))

(assert (=> b!4321811 m!4915351))

(assert (=> b!4321343 d!1270681))

(assert (=> b!4321343 d!1270543))

(assert (=> b!4321343 d!1270621))

(declare-fun d!1270683 () Bool)

(declare-fun lt!1539679 () Bool)

(assert (=> d!1270683 (= lt!1539679 (select (content!7570 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun e!2688823 () Bool)

(assert (=> d!1270683 (= lt!1539679 e!2688823)))

(declare-fun res!1771169 () Bool)

(assert (=> d!1270683 (=> (not res!1771169) (not e!2688823))))

(assert (=> d!1270683 (= res!1771169 ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270683 (= (contains!10428 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) lt!1539679)))

(declare-fun b!4321812 () Bool)

(declare-fun e!2688822 () Bool)

(assert (=> b!4321812 (= e!2688823 e!2688822)))

(declare-fun res!1771168 () Bool)

(assert (=> b!4321812 (=> res!1771168 e!2688822)))

(assert (=> b!4321812 (= res!1771168 (= (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun b!4321813 () Bool)

(assert (=> b!4321813 (= e!2688822 (contains!10428 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(assert (= (and d!1270683 res!1771169) b!4321812))

(assert (= (and b!4321812 (not res!1771168)) b!4321813))

(declare-fun m!4915811 () Bool)

(assert (=> d!1270683 m!4915811))

(declare-fun m!4915813 () Bool)

(assert (=> d!1270683 m!4915813))

(declare-fun m!4915815 () Bool)

(assert (=> b!4321813 m!4915815))

(assert (=> b!4321343 d!1270683))

(declare-fun d!1270685 () Bool)

(declare-fun e!2688824 () Bool)

(assert (=> d!1270685 e!2688824))

(declare-fun res!1771170 () Bool)

(assert (=> d!1270685 (=> res!1771170 e!2688824)))

(declare-fun lt!1539682 () Bool)

(assert (=> d!1270685 (= res!1771170 (not lt!1539682))))

(declare-fun lt!1539683 () Bool)

(assert (=> d!1270685 (= lt!1539682 lt!1539683)))

(declare-fun lt!1539680 () Unit!67766)

(declare-fun e!2688825 () Unit!67766)

(assert (=> d!1270685 (= lt!1539680 e!2688825)))

(declare-fun c!735083 () Bool)

(assert (=> d!1270685 (= c!735083 lt!1539683)))

(assert (=> d!1270685 (= lt!1539683 (containsKey!401 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(assert (=> d!1270685 (= (contains!10426 (map!10405 (v!42753 (underlying!9736 thiss!42308))) lt!1539310) lt!1539682)))

(declare-fun b!4321814 () Bool)

(declare-fun lt!1539681 () Unit!67766)

(assert (=> b!4321814 (= e!2688825 lt!1539681)))

(assert (=> b!4321814 (= lt!1539681 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(assert (=> b!4321814 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(declare-fun b!4321815 () Bool)

(declare-fun Unit!67785 () Unit!67766)

(assert (=> b!4321815 (= e!2688825 Unit!67785)))

(declare-fun b!4321816 () Bool)

(assert (=> b!4321816 (= e!2688824 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310)))))

(assert (= (and d!1270685 c!735083) b!4321814))

(assert (= (and d!1270685 (not c!735083)) b!4321815))

(assert (= (and d!1270685 (not res!1771170)) b!4321816))

(declare-fun m!4915817 () Bool)

(assert (=> d!1270685 m!4915817))

(declare-fun m!4915819 () Bool)

(assert (=> b!4321814 m!4915819))

(assert (=> b!4321814 m!4915275))

(assert (=> b!4321814 m!4915275))

(declare-fun m!4915821 () Bool)

(assert (=> b!4321814 m!4915821))

(assert (=> b!4321816 m!4915275))

(assert (=> b!4321816 m!4915275))

(assert (=> b!4321816 m!4915821))

(assert (=> d!1270509 d!1270685))

(assert (=> d!1270509 d!1270543))

(declare-fun b!4321837 () Bool)

(declare-fun e!2688836 () Bool)

(assert (=> b!4321837 (= e!2688836 (ite (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!299628 () Bool)

(declare-fun call!299634 () ListLongMap!1171)

(assert (=> bm!299628 (= call!299634 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4321838 () Bool)

(declare-fun e!2688838 () Bool)

(declare-fun e!2688837 () Bool)

(assert (=> b!4321838 (= e!2688838 e!2688837)))

(declare-fun c!735098 () Bool)

(assert (=> b!4321838 (= c!735098 (= lt!1539310 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1539719 () SeekEntryResult!21)

(declare-fun bm!299629 () Bool)

(declare-fun c!735094 () Bool)

(declare-fun call!299635 () Bool)

(assert (=> bm!299629 (= call!299635 (contains!10426 call!299634 (ite c!735094 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719)) lt!1539310)))))

(declare-fun bm!299630 () Bool)

(declare-fun call!299633 () Bool)

(assert (=> bm!299630 (= call!299633 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun b!4321839 () Bool)

(declare-fun e!2688840 () Bool)

(assert (=> b!4321839 (= e!2688840 true)))

(declare-fun lt!1539727 () Unit!67766)

(assert (=> b!4321839 (= lt!1539727 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539719)))))

(assert (=> b!4321839 call!299633))

(declare-fun lt!1539714 () Unit!67766)

(assert (=> b!4321839 (= lt!1539714 lt!1539727)))

(declare-fun lt!1539720 () Unit!67766)

(assert (=> b!4321839 (= lt!1539720 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1539719) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4321839 call!299635))

(declare-fun lt!1539724 () Unit!67766)

(assert (=> b!4321839 (= lt!1539724 lt!1539720)))

(declare-fun b!4321840 () Bool)

(assert (=> b!4321840 (= c!735094 ((_ is Found!21) lt!1539719))))

(assert (=> b!4321840 (= lt!1539719 (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4321840 (= e!2688837 e!2688840)))

(declare-fun d!1270687 () Bool)

(declare-fun lt!1539716 () Bool)

(assert (=> d!1270687 (= lt!1539716 (contains!10426 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(assert (=> d!1270687 (= lt!1539716 e!2688838)))

(declare-fun c!735096 () Bool)

(assert (=> d!1270687 (= c!735096 (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1270687 (valid!3765 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))

(assert (=> d!1270687 (= (contains!10427 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310) lt!1539716)))

(declare-fun b!4321841 () Bool)

(assert (=> b!4321841 false))

(declare-fun lt!1539718 () Unit!67766)

(declare-fun lt!1539722 () Unit!67766)

(assert (=> b!4321841 (= lt!1539718 lt!1539722)))

(declare-fun lt!1539725 () SeekEntryResult!21)

(declare-fun lt!1539717 () (_ BitVec 32))

(assert (=> b!4321841 (and ((_ is Found!21) lt!1539725) (= (index!1464 lt!1539725) lt!1539717))))

(assert (=> b!4321841 (= lt!1539725 (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!17232 (_ BitVec 32)) Unit!67766)

(assert (=> b!4321841 (= lt!1539722 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1539310 lt!1539717 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539726 () Unit!67766)

(declare-fun lt!1539728 () Unit!67766)

(assert (=> b!4321841 (= lt!1539726 lt!1539728)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17232 (_ BitVec 32)) Bool)

(assert (=> b!4321841 (arrayForallSeekEntryOrOpenFound!0 lt!1539717 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!17232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67766)

(assert (=> b!4321841 (= lt!1539728 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 lt!1539717))))

(declare-fun arrayScanForKey!0 (array!17232 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4321841 (= lt!1539717 (arrayScanForKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun lt!1539721 () Unit!67766)

(declare-fun lt!1539715 () Unit!67766)

(assert (=> b!4321841 (= lt!1539721 lt!1539715)))

(assert (=> b!4321841 e!2688836))

(declare-fun c!735095 () Bool)

(assert (=> b!4321841 (= c!735095 (and (not (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1539310 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!17 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) Int) Unit!67766)

(assert (=> b!4321841 (= lt!1539715 (lemmaKeyInListMapIsInArray!17 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun e!2688839 () Unit!67766)

(declare-fun Unit!67786 () Unit!67766)

(assert (=> b!4321841 (= e!2688839 Unit!67786)))

(declare-fun b!4321842 () Bool)

(declare-fun Unit!67787 () Unit!67766)

(assert (=> b!4321842 (= e!2688839 Unit!67787)))

(declare-fun b!4321843 () Bool)

(assert (=> b!4321843 (= e!2688837 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4321844 () Bool)

(assert (=> b!4321844 (= e!2688840 false)))

(declare-fun c!735097 () Bool)

(assert (=> b!4321844 (= c!735097 call!299635)))

(declare-fun lt!1539723 () Unit!67766)

(assert (=> b!4321844 (= lt!1539723 e!2688839)))

(declare-fun b!4321845 () Bool)

(assert (=> b!4321845 (= e!2688838 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4321846 () Bool)

(assert (=> b!4321846 (= e!2688836 call!299633)))

(assert (= (and d!1270687 c!735096) b!4321845))

(assert (= (and d!1270687 (not c!735096)) b!4321838))

(assert (= (and b!4321838 c!735098) b!4321843))

(assert (= (and b!4321838 (not c!735098)) b!4321840))

(assert (= (and b!4321840 c!735094) b!4321839))

(assert (= (and b!4321840 (not c!735094)) b!4321844))

(assert (= (and b!4321844 c!735097) b!4321841))

(assert (= (and b!4321844 (not c!735097)) b!4321842))

(assert (= (and b!4321841 c!735095) b!4321846))

(assert (= (and b!4321841 (not c!735095)) b!4321837))

(assert (= (or b!4321839 b!4321846) bm!299630))

(assert (= (or b!4321839 b!4321844) bm!299628))

(assert (= (or b!4321839 b!4321844) bm!299629))

(assert (=> b!4321840 m!4915779))

(assert (=> bm!299630 m!4915787))

(assert (=> bm!299628 m!4915725))

(declare-fun m!4915823 () Bool)

(assert (=> b!4321839 m!4915823))

(declare-fun m!4915825 () Bool)

(assert (=> b!4321839 m!4915825))

(declare-fun m!4915827 () Bool)

(assert (=> bm!299629 m!4915827))

(declare-fun m!4915829 () Bool)

(assert (=> bm!299629 m!4915829))

(assert (=> d!1270687 m!4915377))

(assert (=> d!1270687 m!4915377))

(declare-fun m!4915831 () Bool)

(assert (=> d!1270687 m!4915831))

(assert (=> d!1270687 m!4915533))

(declare-fun m!4915833 () Bool)

(assert (=> b!4321841 m!4915833))

(declare-fun m!4915835 () Bool)

(assert (=> b!4321841 m!4915835))

(declare-fun m!4915837 () Bool)

(assert (=> b!4321841 m!4915837))

(declare-fun m!4915839 () Bool)

(assert (=> b!4321841 m!4915839))

(declare-fun m!4915841 () Bool)

(assert (=> b!4321841 m!4915841))

(assert (=> b!4321841 m!4915779))

(assert (=> d!1270509 d!1270687))

(assert (=> d!1270509 d!1270587))

(declare-fun d!1270689 () Bool)

(declare-fun res!1771171 () Bool)

(declare-fun e!2688841 () Bool)

(assert (=> d!1270689 (=> res!1771171 e!2688841)))

(assert (=> d!1270689 (= res!1771171 ((_ is Nil!48379) (toList!2554 lt!1539311)))))

(assert (=> d!1270689 (= (forall!8811 (toList!2554 lt!1539311) lambda!133855) e!2688841)))

(declare-fun b!4321847 () Bool)

(declare-fun e!2688842 () Bool)

(assert (=> b!4321847 (= e!2688841 e!2688842)))

(declare-fun res!1771172 () Bool)

(assert (=> b!4321847 (=> (not res!1771172) (not e!2688842))))

(assert (=> b!4321847 (= res!1771172 (dynLambda!20507 lambda!133855 (h!53839 (toList!2554 lt!1539311))))))

(declare-fun b!4321848 () Bool)

(assert (=> b!4321848 (= e!2688842 (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133855))))

(assert (= (and d!1270689 (not res!1771171)) b!4321847))

(assert (= (and b!4321847 res!1771172) b!4321848))

(declare-fun b_lambda!127257 () Bool)

(assert (=> (not b_lambda!127257) (not b!4321847)))

(declare-fun m!4915843 () Bool)

(assert (=> b!4321847 m!4915843))

(declare-fun m!4915845 () Bool)

(assert (=> b!4321848 m!4915845))

(assert (=> d!1270547 d!1270689))

(declare-fun tp!1326956 () Bool)

(declare-fun b!4321849 () Bool)

(declare-fun e!2688843 () Bool)

(assert (=> b!4321849 (= e!2688843 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326956))))

(assert (=> b!4321359 (= tp!1326948 e!2688843)))

(assert (= (and b!4321359 ((_ is Cons!48378) (t!355381 mapDefault!21189))) b!4321849))

(declare-fun b!4321850 () Bool)

(declare-fun tp!1326957 () Bool)

(declare-fun e!2688844 () Bool)

(assert (=> b!4321850 (= e!2688844 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326957))))

(assert (=> b!4321365 (= tp!1326953 e!2688844)))

(assert (= (and b!4321365 ((_ is Cons!48378) (t!355381 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) b!4321850))

(declare-fun e!2688845 () Bool)

(declare-fun b!4321851 () Bool)

(declare-fun tp!1326958 () Bool)

(assert (=> b!4321851 (= e!2688845 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326958))))

(assert (=> b!4321367 (= tp!1326955 e!2688845)))

(assert (= (and b!4321367 ((_ is Cons!48378) (t!355381 mapDefault!21186))) b!4321851))

(declare-fun tp!1326959 () Bool)

(declare-fun e!2688846 () Bool)

(declare-fun b!4321852 () Bool)

(assert (=> b!4321852 (= e!2688846 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326959))))

(assert (=> b!4321358 (= tp!1326947 e!2688846)))

(assert (= (and b!4321358 ((_ is Cons!48378) (t!355381 mapValue!21189))) b!4321852))

(declare-fun b!4321854 () Bool)

(declare-fun tp!1326961 () Bool)

(declare-fun e!2688848 () Bool)

(assert (=> b!4321854 (= e!2688848 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326961))))

(declare-fun mapIsEmpty!21190 () Bool)

(declare-fun mapRes!21190 () Bool)

(assert (=> mapIsEmpty!21190 mapRes!21190))

(declare-fun condMapEmpty!21190 () Bool)

(declare-fun mapDefault!21190 () List!48502)

(assert (=> mapNonEmpty!21189 (= condMapEmpty!21190 (= mapRest!21189 ((as const (Array (_ BitVec 32) List!48502)) mapDefault!21190)))))

(assert (=> mapNonEmpty!21189 (= tp!1326949 (and e!2688848 mapRes!21190))))

(declare-fun e!2688847 () Bool)

(declare-fun b!4321853 () Bool)

(declare-fun tp!1326960 () Bool)

(assert (=> b!4321853 (= e!2688847 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326960))))

(declare-fun mapNonEmpty!21190 () Bool)

(declare-fun tp!1326962 () Bool)

(assert (=> mapNonEmpty!21190 (= mapRes!21190 (and tp!1326962 e!2688847))))

(declare-fun mapKey!21190 () (_ BitVec 32))

(declare-fun mapValue!21190 () List!48502)

(declare-fun mapRest!21190 () (Array (_ BitVec 32) List!48502))

(assert (=> mapNonEmpty!21190 (= mapRest!21189 (store mapRest!21190 mapKey!21190 mapValue!21190))))

(assert (= (and mapNonEmpty!21189 condMapEmpty!21190) mapIsEmpty!21190))

(assert (= (and mapNonEmpty!21189 (not condMapEmpty!21190)) mapNonEmpty!21190))

(assert (= (and mapNonEmpty!21190 ((_ is Cons!48378) mapValue!21190)) b!4321853))

(assert (= (and mapNonEmpty!21189 ((_ is Cons!48378) mapDefault!21190)) b!4321854))

(declare-fun m!4915847 () Bool)

(assert (=> mapNonEmpty!21190 m!4915847))

(declare-fun b!4321855 () Bool)

(declare-fun e!2688849 () Bool)

(declare-fun tp!1326963 () Bool)

(assert (=> b!4321855 (= e!2688849 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326963))))

(assert (=> b!4321364 (= tp!1326952 e!2688849)))

(assert (= (and b!4321364 ((_ is Cons!48378) (t!355381 mapValue!21186))) b!4321855))

(declare-fun tp!1326964 () Bool)

(declare-fun b!4321856 () Bool)

(declare-fun e!2688850 () Bool)

(assert (=> b!4321856 (= e!2688850 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326964))))

(assert (=> tb!257365 (= result!314878 e!2688850)))

(assert (= (and tb!257365 ((_ is Cons!48378) (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))) b!4321856))

(declare-fun tp!1326965 () Bool)

(declare-fun e!2688851 () Bool)

(declare-fun b!4321857 () Bool)

(assert (=> b!4321857 (= e!2688851 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326965))))

(assert (=> b!4321366 (= tp!1326954 e!2688851)))

(assert (= (and b!4321366 ((_ is Cons!48378) (t!355381 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) b!4321857))

(declare-fun b_lambda!127259 () Bool)

(assert (= b_lambda!127245 (or b!4321230 b_lambda!127259)))

(declare-fun bs!606586 () Bool)

(declare-fun d!1270691 () Bool)

(assert (= bs!606586 (and d!1270691 b!4321230)))

(assert (=> bs!606586 (= (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311))))))))

(declare-fun m!4915849 () Bool)

(assert (=> bs!606586 m!4915849))

(assert (=> b!4321722 d!1270691))

(declare-fun b_lambda!127261 () Bool)

(assert (= b_lambda!127249 (or (and b!4321235 b_free!128971) b_lambda!127261)))

(declare-fun b_lambda!127263 () Bool)

(assert (= b_lambda!127239 (or d!1270551 b_lambda!127263)))

(declare-fun bs!606587 () Bool)

(declare-fun d!1270693 () Bool)

(assert (= bs!606587 (and d!1270693 d!1270551)))

(assert (=> bs!606587 (= (dynLambda!20507 lambda!133857 (h!53839 (toList!2554 lt!1539314))) (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 lt!1539314))) (_1!26879 (h!53839 (toList!2554 lt!1539314))) (hashF!6919 thiss!42308)))))

(declare-fun m!4915851 () Bool)

(assert (=> bs!606587 m!4915851))

(assert (=> b!4321713 d!1270693))

(declare-fun b_lambda!127265 () Bool)

(assert (= b_lambda!127229 (or d!1270549 b_lambda!127265)))

(declare-fun bs!606588 () Bool)

(declare-fun d!1270695 () Bool)

(assert (= bs!606588 (and d!1270695 d!1270549)))

(assert (=> bs!606588 (= (dynLambda!20508 lambda!133856 (h!53838 lt!1539317)) (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 lt!1539317))) lt!1539310))))

(declare-fun m!4915853 () Bool)

(assert (=> bs!606588 m!4915853))

(assert (=> b!4321506 d!1270695))

(declare-fun b_lambda!127267 () Bool)

(assert (= b_lambda!127235 (or d!1270517 b_lambda!127267)))

(declare-fun bs!606589 () Bool)

(declare-fun d!1270697 () Bool)

(assert (= bs!606589 (and d!1270697 d!1270517)))

(assert (=> bs!606589 (= (dynLambda!20508 lambda!133838 (h!53838 lt!1539320)) (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 lt!1539320))) lt!1539310))))

(declare-fun m!4915855 () Bool)

(assert (=> bs!606589 m!4915855))

(assert (=> b!4321626 d!1270697))

(declare-fun b_lambda!127269 () Bool)

(assert (= b_lambda!127255 (or b!4321343 b_lambda!127269)))

(declare-fun bs!606590 () Bool)

(declare-fun d!1270699 () Bool)

(assert (= bs!606590 (and d!1270699 b!4321343)))

(assert (=> bs!606590 (= (dynLambda!20507 lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) (noDuplicateKeys!262 (_2!26879 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))))

(declare-fun m!4915857 () Bool)

(assert (=> bs!606590 m!4915857))

(assert (=> d!1270681 d!1270699))

(declare-fun b_lambda!127271 () Bool)

(assert (= b_lambda!127251 (or (and b!4321235 b_free!128971) b_lambda!127271)))

(declare-fun b_lambda!127273 () Bool)

(assert (= b_lambda!127233 (or b!4321317 b_lambda!127273)))

(declare-fun bs!606591 () Bool)

(declare-fun d!1270701 () Bool)

(assert (= bs!606591 (and d!1270701 b!4321317)))

(assert (=> bs!606591 (= (dynLambda!20507 lambda!133849 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun m!4915859 () Bool)

(assert (=> bs!606591 m!4915859))

(assert (=> b!4321624 d!1270701))

(declare-fun b_lambda!127275 () Bool)

(assert (= b_lambda!127227 (or d!1270519 b_lambda!127275)))

(declare-fun bs!606592 () Bool)

(declare-fun d!1270703 () Bool)

(assert (= bs!606592 (and d!1270703 d!1270519)))

(assert (=> bs!606592 (= (dynLambda!20507 lambda!133841 (h!53839 (toList!2554 lt!1539311))) (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (h!53839 (toList!2554 lt!1539311))) (hashF!6919 thiss!42308)))))

(declare-fun m!4915861 () Bool)

(assert (=> bs!606592 m!4915861))

(assert (=> b!4321500 d!1270703))

(declare-fun b_lambda!127277 () Bool)

(assert (= b_lambda!127253 (or (and b!4321235 b_free!128971) b_lambda!127277)))

(declare-fun b_lambda!127279 () Bool)

(assert (= b_lambda!127241 (or d!1270529 b_lambda!127279)))

(declare-fun bs!606593 () Bool)

(declare-fun d!1270705 () Bool)

(assert (= bs!606593 (and d!1270705 d!1270529)))

(assert (=> bs!606593 (= (dynLambda!20507 lambda!133846 (h!53839 (toList!2554 lt!1539353))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539353)))))))

(declare-fun m!4915863 () Bool)

(assert (=> bs!606593 m!4915863))

(assert (=> b!4321715 d!1270705))

(declare-fun b_lambda!127281 () Bool)

(assert (= b_lambda!127243 (or d!1270529 b_lambda!127281)))

(declare-fun bs!606594 () Bool)

(declare-fun d!1270707 () Bool)

(assert (= bs!606594 (and d!1270707 d!1270529)))

(assert (=> bs!606594 (= (dynLambda!20507 lambda!133846 (h!53839 (toList!2554 lt!1539311))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))))

(assert (=> bs!606594 m!4915389))

(assert (=> b!4321720 d!1270707))

(declare-fun b_lambda!127283 () Bool)

(assert (= b_lambda!127247 (or b!4321230 b_lambda!127283)))

(declare-fun bs!606595 () Bool)

(declare-fun d!1270709 () Bool)

(assert (= bs!606595 (and d!1270709 b!4321230)))

(assert (=> bs!606595 (= (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (toList!2554 lt!1539314)))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314))))))))

(declare-fun m!4915865 () Bool)

(assert (=> bs!606595 m!4915865))

(assert (=> b!4321724 d!1270709))

(declare-fun b_lambda!127285 () Bool)

(assert (= b_lambda!127231 (or d!1270515 b_lambda!127285)))

(declare-fun bs!606596 () Bool)

(declare-fun d!1270711 () Bool)

(assert (= bs!606596 (and d!1270711 d!1270515)))

(assert (=> bs!606596 (= (dynLambda!20508 lambda!133837 (h!53838 (removePairForKey!267 lt!1539320 key!2048))) (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 (removePairForKey!267 lt!1539320 key!2048)))) lt!1539310))))

(declare-fun m!4915867 () Bool)

(assert (=> bs!606596 m!4915867))

(assert (=> b!4321508 d!1270711))

(declare-fun b_lambda!127287 () Bool)

(assert (= b_lambda!127237 (or (and b!4321235 b_free!128971) b_lambda!127287)))

(declare-fun b_lambda!127289 () Bool)

(assert (= b_lambda!127257 (or d!1270547 b_lambda!127289)))

(declare-fun bs!606597 () Bool)

(declare-fun d!1270713 () Bool)

(assert (= bs!606597 (and d!1270713 d!1270547)))

(assert (=> bs!606597 (= (dynLambda!20507 lambda!133855 (h!53839 (toList!2554 lt!1539311))) (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (h!53839 (toList!2554 lt!1539311))) (hashF!6919 thiss!42308)))))

(assert (=> bs!606597 m!4915861))

(assert (=> b!4321847 d!1270713))

(check-sat (not b!4321612) (not bs!606597) (not b!4321723) (not d!1270643) (not b_lambda!127275) (not d!1270645) (not d!1270675) (not b!4321793) (not b!4321685) (not b_lambda!127269) (not b!4321469) (not b!4321570) (not bm!299571) (not d!1270607) (not b_lambda!127287) (not b!4321737) (not d!1270627) (not d!1270683) (not b!4321661) (not d!1270637) (not bm!299630) (not bm!299581) (not d!1270673) tp_is_empty!24109 (not d!1270611) (not bs!606594) (not bm!299575) (not bm!299593) (not b!4321716) (not b!4321855) (not b!4321672) (not b!4321700) (not b!4321743) (not bm!299582) (not bm!299620) (not b!4321625) (not b!4321623) (not b_lambda!127271) (not d!1270613) (not b!4321659) (not b!4321619) (not d!1270639) (not d!1270663) (not d!1270629) (not b!4321721) (not b_lambda!127223) (not b!4321816) (not d!1270621) (not b!4321531) (not b!4321691) (not b!4321745) (not b!4321853) (not d!1270619) (not mapNonEmpty!21190) (not bm!299560) (not b!4321620) (not b!4321561) (not b!4321710) (not b!4321530) (not tb!257367) (not b!4321730) (not bs!606588) (not b_lambda!127283) (not bm!299580) (not bm!299607) (not b!4321813) (not b!4321841) (not d!1270573) (not b!4321651) (not b_lambda!127279) (not b!4321857) (not b!4321854) (not b!4321711) (not b!4321734) (not b!4321575) (not bm!299570) (not b!4321501) (not d!1270685) (not b!4321581) (not bm!299577) (not b_lambda!127267) (not b!4321679) (not b_lambda!127277) (not bm!299628) (not b_lambda!127273) (not d!1270557) (not b!4321850) (not b!4321840) (not d!1270617) (not bm!299574) (not d!1270579) (not bs!606591) (not b!4321731) (not bs!606592) (not b!4321559) (not d!1270583) (not b!4321665) (not b!4321746) (not b!4321801) (not b!4321534) (not b!4321560) (not d!1270615) (not b!4321478) (not b_lambda!127261) (not b!4321562) (not b!4321462) (not d!1270653) (not b!4321653) (not b!4321648) (not b_lambda!127281) (not bm!299595) (not b!4321507) (not b!4321783) (not b!4321485) (not b!4321654) (not b!4321457) (not b!4321736) (not d!1270595) (not b!4321735) (not d!1270669) (not b!4321849) (not b!4321652) (not b!4321719) (not bm!299618) (not b!4321694) (not b!4321498) (not d!1270605) (not b!4321582) (not b!4321671) (not b!4321604) (not b!4321808) b_and!340525 (not b!4321814) (not b!4321704) (not d!1270563) (not b!4321811) (not b!4321697) (not d!1270631) (not bm!299572) (not d!1270603) (not d!1270671) tp_is_empty!24111 (not b!4321614) (not d!1270597) (not b!4321673) (not b_next!129677) (not b!4321852) (not bm!299608) (not b!4321796) (not bm!299602) (not b!4321856) (not b!4321712) (not b!4321740) (not b!4321556) (not b!4321509) (not b!4321650) (not b_lambda!127265) (not d!1270575) (not bm!299629) (not bs!606587) (not b!4321670) (not b!4321472) (not bm!299573) (not b!4321728) (not b!4321675) (not d!1270593) (not b!4321621) (not b!4321848) (not d!1270623) (not d!1270667) (not b!4321572) (not b_lambda!127225) (not bs!606596) (not b_lambda!127289) (not b!4321611) (not d!1270581) (not b!4321647) (not b!4321733) (not d!1270687) (not b_lambda!127263) (not bs!606586) (not bs!606593) (not b!4321742) b_and!340515 (not d!1270571) (not b!4321792) (not bs!606595) (not b!4321627) (not b!4321739) (not b!4321789) (not b!4321802) (not b!4321667) (not b!4321707) (not d!1270609) (not b_lambda!127285) (not b_lambda!127259) (not d!1270591) (not d!1270681) (not b_next!129675) (not b_lambda!127221) (not bs!606589) (not bm!299561) (not bs!606590) (not d!1270661) (not d!1270587) (not d!1270633) (not d!1270665) (not b!4321725) (not b!4321839) (not b!4321744) (not b!4321613) (not b!4321677) (not b!4321851) (not b!4321714) (not bm!299609))
(check-sat b_and!340525 b_and!340515 (not b_next!129677) (not b_next!129675))
(get-model)

(declare-fun d!1270715 () Bool)

(declare-fun res!1771173 () Bool)

(declare-fun e!2688852 () Bool)

(assert (=> d!1270715 (=> res!1771173 e!2688852)))

(assert (=> d!1270715 (= res!1771173 ((_ is Nil!48379) (t!355382 (t!355382 (toList!2554 lt!1539314)))))))

(assert (=> d!1270715 (= (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539314))) lambda!133834) e!2688852)))

(declare-fun b!4321858 () Bool)

(declare-fun e!2688853 () Bool)

(assert (=> b!4321858 (= e!2688852 e!2688853)))

(declare-fun res!1771174 () Bool)

(assert (=> b!4321858 (=> (not res!1771174) (not e!2688853))))

(assert (=> b!4321858 (= res!1771174 (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (t!355382 (toList!2554 lt!1539314))))))))

(declare-fun b!4321859 () Bool)

(assert (=> b!4321859 (= e!2688853 (forall!8811 (t!355382 (t!355382 (t!355382 (toList!2554 lt!1539314)))) lambda!133834))))

(assert (= (and d!1270715 (not res!1771173)) b!4321858))

(assert (= (and b!4321858 res!1771174) b!4321859))

(declare-fun b_lambda!127291 () Bool)

(assert (=> (not b_lambda!127291) (not b!4321858)))

(declare-fun m!4915869 () Bool)

(assert (=> b!4321858 m!4915869))

(declare-fun m!4915871 () Bool)

(assert (=> b!4321859 m!4915871))

(assert (=> b!4321725 d!1270715))

(declare-fun d!1270717 () Bool)

(declare-fun e!2688856 () Bool)

(assert (=> d!1270717 e!2688856))

(declare-fun res!1771177 () Bool)

(assert (=> d!1270717 (=> (not res!1771177) (not e!2688856))))

(assert (=> d!1270717 (= res!1771177 (and (bvsge (index!1464 lt!1539497) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539497) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))))

(declare-fun lt!1539731 () Unit!67766)

(declare-fun choose!26404 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) Int) Unit!67766)

(assert (=> d!1270717 (= lt!1539731 (choose!26404 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (index!1464 lt!1539497) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!1270717 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270717 (= (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (index!1464 lt!1539497) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539731)))

(declare-fun b!4321862 () Bool)

(assert (=> b!4321862 (= e!2688856 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497))))))

(assert (= (and d!1270717 res!1771177) b!4321862))

(declare-fun m!4915873 () Bool)

(assert (=> d!1270717 m!4915873))

(declare-fun m!4915875 () Bool)

(assert (=> d!1270717 m!4915875))

(declare-fun m!4915877 () Bool)

(assert (=> b!4321862 m!4915877))

(assert (=> b!4321862 m!4915427))

(assert (=> b!4321862 m!4915877))

(assert (=> b!4321862 m!4915427))

(declare-fun m!4915879 () Bool)

(assert (=> b!4321862 m!4915879))

(assert (=> b!4321457 d!1270717))

(declare-fun b!4321905 () Bool)

(declare-fun e!2688892 () Bool)

(declare-fun call!299656 () Bool)

(assert (=> b!4321905 (= e!2688892 (not call!299656))))

(declare-fun b!4321906 () Bool)

(declare-fun res!1771202 () Bool)

(declare-fun e!2688886 () Bool)

(assert (=> b!4321906 (=> (not res!1771202) (not e!2688886))))

(declare-fun e!2688893 () Bool)

(assert (=> b!4321906 (= res!1771202 e!2688893)))

(declare-fun res!1771204 () Bool)

(assert (=> b!4321906 (=> res!1771204 e!2688893)))

(declare-fun e!2688888 () Bool)

(assert (=> b!4321906 (= res!1771204 (not e!2688888))))

(declare-fun res!1771197 () Bool)

(assert (=> b!4321906 (=> (not res!1771197) (not e!2688888))))

(assert (=> b!4321906 (= res!1771197 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299645 () Bool)

(declare-fun call!299655 () ListLongMap!1171)

(declare-fun call!299654 () ListLongMap!1171)

(assert (=> bm!299645 (= call!299655 call!299654)))

(declare-fun b!4321907 () Bool)

(declare-fun e!2688894 () Unit!67766)

(declare-fun Unit!67788 () Unit!67766)

(assert (=> b!4321907 (= e!2688894 Unit!67788)))

(declare-fun b!4321908 () Bool)

(declare-fun lt!1539797 () Unit!67766)

(assert (=> b!4321908 (= e!2688894 lt!1539797)))

(declare-fun lt!1539776 () ListLongMap!1171)

(declare-fun getCurrentListMapNoExtraKeys!3 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) Int) ListLongMap!1171)

(assert (=> b!4321908 (= lt!1539776 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1539795 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539795 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539790 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539790 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1539781 () Unit!67766)

(declare-fun addStillContains!3 (ListLongMap!1171 (_ BitVec 64) List!48502 (_ BitVec 64)) Unit!67766)

(assert (=> b!4321908 (= lt!1539781 (addStillContains!3 lt!1539776 lt!1539795 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539790))))

(assert (=> b!4321908 (contains!10426 (+!330 lt!1539776 (tuple2!47187 lt!1539795 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1539790)))

(declare-fun lt!1539789 () Unit!67766)

(assert (=> b!4321908 (= lt!1539789 lt!1539781)))

(declare-fun lt!1539779 () ListLongMap!1171)

(assert (=> b!4321908 (= lt!1539779 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1539782 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539782 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539793 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539793 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1539788 () Unit!67766)

(declare-fun addApplyDifferent!3 (ListLongMap!1171 (_ BitVec 64) List!48502 (_ BitVec 64)) Unit!67766)

(assert (=> b!4321908 (= lt!1539788 (addApplyDifferent!3 lt!1539779 lt!1539782 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539793))))

(assert (=> b!4321908 (= (apply!11141 (+!330 lt!1539779 (tuple2!47187 lt!1539782 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1539793) (apply!11141 lt!1539779 lt!1539793))))

(declare-fun lt!1539778 () Unit!67766)

(assert (=> b!4321908 (= lt!1539778 lt!1539788)))

(declare-fun lt!1539780 () ListLongMap!1171)

(assert (=> b!4321908 (= lt!1539780 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1539792 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539792 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539784 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539784 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1539785 () Unit!67766)

(assert (=> b!4321908 (= lt!1539785 (addApplyDifferent!3 lt!1539780 lt!1539792 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539784))))

(assert (=> b!4321908 (= (apply!11141 (+!330 lt!1539780 (tuple2!47187 lt!1539792 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1539784) (apply!11141 lt!1539780 lt!1539784))))

(declare-fun lt!1539783 () Unit!67766)

(assert (=> b!4321908 (= lt!1539783 lt!1539785)))

(declare-fun lt!1539796 () ListLongMap!1171)

(assert (=> b!4321908 (= lt!1539796 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1539777 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539777 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539794 () (_ BitVec 64))

(assert (=> b!4321908 (= lt!1539794 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(assert (=> b!4321908 (= lt!1539797 (addApplyDifferent!3 lt!1539796 lt!1539777 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539794))))

(assert (=> b!4321908 (= (apply!11141 (+!330 lt!1539796 (tuple2!47187 lt!1539777 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1539794) (apply!11141 lt!1539796 lt!1539794))))

(declare-fun e!2688891 () Bool)

(declare-fun b!4321909 () Bool)

(declare-fun lt!1539791 () ListLongMap!1171)

(assert (=> b!4321909 (= e!2688891 (= (apply!11141 lt!1539791 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)) (select (arr!7692 (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))) #b00000000000000000000000000000000)))))

(assert (=> b!4321909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35731 (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))))

(assert (=> b!4321909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4321910 () Bool)

(declare-fun e!2688884 () Bool)

(assert (=> b!4321910 (= e!2688884 (= (apply!11141 lt!1539791 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321911 () Bool)

(declare-fun e!2688890 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4321911 (= e!2688890 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(declare-fun b!4321912 () Bool)

(declare-fun e!2688883 () ListLongMap!1171)

(declare-fun call!299653 () ListLongMap!1171)

(assert (=> b!4321912 (= e!2688883 call!299653)))

(declare-fun call!299651 () ListLongMap!1171)

(declare-fun c!735115 () Bool)

(declare-fun bm!299646 () Bool)

(declare-fun c!735113 () Bool)

(declare-fun call!299652 () ListLongMap!1171)

(assert (=> bm!299646 (= call!299654 (+!330 (ite c!735113 call!299651 (ite c!735115 call!299652 call!299653)) (ite (or c!735113 c!735115) (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))))

(declare-fun bm!299647 () Bool)

(declare-fun call!299650 () Bool)

(assert (=> bm!299647 (= call!299650 (contains!10426 lt!1539791 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4321913 () Bool)

(assert (=> b!4321913 (= e!2688893 e!2688891)))

(declare-fun res!1771199 () Bool)

(assert (=> b!4321913 (=> (not res!1771199) (not e!2688891))))

(assert (=> b!4321913 (= res!1771199 (contains!10426 lt!1539791 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(assert (=> b!4321913 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4321914 () Bool)

(assert (=> b!4321914 (= e!2688892 e!2688884)))

(declare-fun res!1771203 () Bool)

(assert (=> b!4321914 (= res!1771203 call!299656)))

(assert (=> b!4321914 (=> (not res!1771203) (not e!2688884))))

(declare-fun b!4321915 () Bool)

(declare-fun e!2688885 () ListLongMap!1171)

(declare-fun e!2688889 () ListLongMap!1171)

(assert (=> b!4321915 (= e!2688885 e!2688889)))

(assert (=> b!4321915 (= c!735115 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4321916 () Bool)

(declare-fun e!2688887 () Bool)

(declare-fun e!2688895 () Bool)

(assert (=> b!4321916 (= e!2688887 e!2688895)))

(declare-fun res!1771196 () Bool)

(assert (=> b!4321916 (= res!1771196 call!299650)))

(assert (=> b!4321916 (=> (not res!1771196) (not e!2688895))))

(declare-fun b!4321917 () Bool)

(assert (=> b!4321917 (= e!2688888 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(declare-fun b!4321918 () Bool)

(declare-fun res!1771201 () Bool)

(assert (=> b!4321918 (=> (not res!1771201) (not e!2688886))))

(assert (=> b!4321918 (= res!1771201 e!2688892)))

(declare-fun c!735114 () Bool)

(assert (=> b!4321918 (= c!735114 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4321919 () Bool)

(assert (=> b!4321919 (= e!2688889 call!299655)))

(declare-fun bm!299648 () Bool)

(assert (=> bm!299648 (= call!299653 call!299652)))

(declare-fun b!4321920 () Bool)

(assert (=> b!4321920 (= e!2688885 (+!330 call!299654 (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299649 () Bool)

(assert (=> bm!299649 (= call!299656 (contains!10426 lt!1539791 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299650 () Bool)

(assert (=> bm!299650 (= call!299651 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4321921 () Bool)

(declare-fun c!735112 () Bool)

(assert (=> b!4321921 (= c!735112 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4321921 (= e!2688889 e!2688883)))

(declare-fun b!4321922 () Bool)

(assert (=> b!4321922 (= e!2688887 (not call!299650))))

(declare-fun d!1270719 () Bool)

(assert (=> d!1270719 e!2688886))

(declare-fun res!1771198 () Bool)

(assert (=> d!1270719 (=> (not res!1771198) (not e!2688886))))

(assert (=> d!1270719 (= res!1771198 (or (bvsge #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))))

(declare-fun lt!1539786 () ListLongMap!1171)

(assert (=> d!1270719 (= lt!1539791 lt!1539786)))

(declare-fun lt!1539787 () Unit!67766)

(assert (=> d!1270719 (= lt!1539787 e!2688894)))

(declare-fun c!735111 () Bool)

(assert (=> d!1270719 (= c!735111 e!2688890)))

(declare-fun res!1771200 () Bool)

(assert (=> d!1270719 (=> (not res!1771200) (not e!2688890))))

(assert (=> d!1270719 (= res!1771200 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (=> d!1270719 (= lt!1539786 e!2688885)))

(assert (=> d!1270719 (= c!735113 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270719 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270719 (= (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539791)))

(declare-fun b!4321923 () Bool)

(assert (=> b!4321923 (= e!2688886 e!2688887)))

(declare-fun c!735116 () Bool)

(assert (=> b!4321923 (= c!735116 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4321924 () Bool)

(assert (=> b!4321924 (= e!2688883 call!299655)))

(declare-fun bm!299651 () Bool)

(assert (=> bm!299651 (= call!299652 call!299651)))

(declare-fun b!4321925 () Bool)

(assert (=> b!4321925 (= e!2688895 (= (apply!11141 lt!1539791 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (= (and d!1270719 c!735113) b!4321920))

(assert (= (and d!1270719 (not c!735113)) b!4321915))

(assert (= (and b!4321915 c!735115) b!4321919))

(assert (= (and b!4321915 (not c!735115)) b!4321921))

(assert (= (and b!4321921 c!735112) b!4321924))

(assert (= (and b!4321921 (not c!735112)) b!4321912))

(assert (= (or b!4321924 b!4321912) bm!299648))

(assert (= (or b!4321919 bm!299648) bm!299651))

(assert (= (or b!4321919 b!4321924) bm!299645))

(assert (= (or b!4321920 bm!299651) bm!299650))

(assert (= (or b!4321920 bm!299645) bm!299646))

(assert (= (and d!1270719 res!1771200) b!4321911))

(assert (= (and d!1270719 c!735111) b!4321908))

(assert (= (and d!1270719 (not c!735111)) b!4321907))

(assert (= (and d!1270719 res!1771198) b!4321906))

(assert (= (and b!4321906 res!1771197) b!4321917))

(assert (= (and b!4321906 (not res!1771204)) b!4321913))

(assert (= (and b!4321913 res!1771199) b!4321909))

(assert (= (and b!4321906 res!1771202) b!4321918))

(assert (= (and b!4321918 c!735114) b!4321914))

(assert (= (and b!4321918 (not c!735114)) b!4321905))

(assert (= (and b!4321914 res!1771203) b!4321910))

(assert (= (or b!4321914 b!4321905) bm!299649))

(assert (= (and b!4321918 res!1771201) b!4321923))

(assert (= (and b!4321923 c!735116) b!4321916))

(assert (= (and b!4321923 (not c!735116)) b!4321922))

(assert (= (and b!4321916 res!1771196) b!4321925))

(assert (= (or b!4321916 b!4321922) bm!299647))

(declare-fun m!4915881 () Bool)

(assert (=> b!4321910 m!4915881))

(declare-fun m!4915883 () Bool)

(assert (=> bm!299647 m!4915883))

(assert (=> d!1270719 m!4915875))

(declare-fun m!4915885 () Bool)

(assert (=> bm!299650 m!4915885))

(declare-fun m!4915887 () Bool)

(assert (=> bm!299646 m!4915887))

(declare-fun m!4915889 () Bool)

(assert (=> b!4321913 m!4915889))

(assert (=> b!4321913 m!4915889))

(declare-fun m!4915891 () Bool)

(assert (=> b!4321913 m!4915891))

(assert (=> b!4321917 m!4915889))

(assert (=> b!4321917 m!4915889))

(declare-fun m!4915893 () Bool)

(assert (=> b!4321917 m!4915893))

(assert (=> b!4321908 m!4915889))

(declare-fun m!4915895 () Bool)

(assert (=> b!4321908 m!4915895))

(declare-fun m!4915897 () Bool)

(assert (=> b!4321908 m!4915897))

(declare-fun m!4915899 () Bool)

(assert (=> b!4321908 m!4915899))

(declare-fun m!4915901 () Bool)

(assert (=> b!4321908 m!4915901))

(declare-fun m!4915903 () Bool)

(assert (=> b!4321908 m!4915903))

(declare-fun m!4915905 () Bool)

(assert (=> b!4321908 m!4915905))

(declare-fun m!4915907 () Bool)

(assert (=> b!4321908 m!4915907))

(declare-fun m!4915909 () Bool)

(assert (=> b!4321908 m!4915909))

(assert (=> b!4321908 m!4915885))

(assert (=> b!4321908 m!4915907))

(declare-fun m!4915911 () Bool)

(assert (=> b!4321908 m!4915911))

(declare-fun m!4915913 () Bool)

(assert (=> b!4321908 m!4915913))

(assert (=> b!4321908 m!4915911))

(declare-fun m!4915915 () Bool)

(assert (=> b!4321908 m!4915915))

(assert (=> b!4321908 m!4915905))

(declare-fun m!4915917 () Bool)

(assert (=> b!4321908 m!4915917))

(declare-fun m!4915919 () Bool)

(assert (=> b!4321908 m!4915919))

(assert (=> b!4321908 m!4915897))

(declare-fun m!4915921 () Bool)

(assert (=> b!4321908 m!4915921))

(declare-fun m!4915923 () Bool)

(assert (=> b!4321908 m!4915923))

(assert (=> b!4321909 m!4915889))

(assert (=> b!4321909 m!4915889))

(declare-fun m!4915925 () Bool)

(assert (=> b!4321909 m!4915925))

(declare-fun m!4915927 () Bool)

(assert (=> b!4321909 m!4915927))

(declare-fun m!4915929 () Bool)

(assert (=> b!4321925 m!4915929))

(declare-fun m!4915931 () Bool)

(assert (=> bm!299649 m!4915931))

(declare-fun m!4915933 () Bool)

(assert (=> b!4321920 m!4915933))

(assert (=> b!4321911 m!4915889))

(assert (=> b!4321911 m!4915889))

(assert (=> b!4321911 m!4915893))

(assert (=> b!4321457 d!1270719))

(declare-fun d!1270721 () Bool)

(declare-fun e!2688898 () Bool)

(assert (=> d!1270721 e!2688898))

(declare-fun res!1771207 () Bool)

(assert (=> d!1270721 (=> (not res!1771207) (not e!2688898))))

(assert (=> d!1270721 (= res!1771207 (and (bvsge (index!1464 lt!1539497) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539497) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))))

(declare-fun lt!1539800 () Unit!67766)

(declare-fun choose!26405 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) (_ BitVec 64) List!48502 Int) Unit!67766)

(assert (=> d!1270721 (= lt!1539800 (choose!26405 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (index!1464 lt!1539497) lt!1539310 lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1270721 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270721 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (index!1464 lt!1539497) lt!1539310 lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539800)))

(declare-fun b!4321928 () Bool)

(assert (=> b!4321928 (= e!2688898 (= (+!330 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (tuple2!47187 lt!1539310 lt!1539317)) (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (= (and d!1270721 res!1771207) b!4321928))

(declare-fun m!4915935 () Bool)

(assert (=> d!1270721 m!4915935))

(assert (=> d!1270721 m!4915875))

(declare-fun m!4915937 () Bool)

(assert (=> b!4321928 m!4915937))

(assert (=> b!4321928 m!4915937))

(declare-fun m!4915939 () Bool)

(assert (=> b!4321928 m!4915939))

(assert (=> b!4321928 m!4915407))

(assert (=> b!4321928 m!4915401))

(assert (=> b!4321457 d!1270721))

(declare-fun d!1270723 () Bool)

(declare-fun e!2688899 () Bool)

(assert (=> d!1270723 e!2688899))

(declare-fun res!1771208 () Bool)

(assert (=> d!1270723 (=> res!1771208 e!2688899)))

(declare-fun lt!1539803 () Bool)

(assert (=> d!1270723 (= res!1771208 (not lt!1539803))))

(declare-fun lt!1539804 () Bool)

(assert (=> d!1270723 (= lt!1539803 lt!1539804)))

(declare-fun lt!1539801 () Unit!67766)

(declare-fun e!2688900 () Unit!67766)

(assert (=> d!1270723 (= lt!1539801 e!2688900)))

(declare-fun c!735117 () Bool)

(assert (=> d!1270723 (= c!735117 lt!1539804)))

(assert (=> d!1270723 (= lt!1539804 (containsKey!401 (toList!2554 call!299576) lt!1539310))))

(assert (=> d!1270723 (= (contains!10426 call!299576 lt!1539310) lt!1539803)))

(declare-fun b!4321929 () Bool)

(declare-fun lt!1539802 () Unit!67766)

(assert (=> b!4321929 (= e!2688900 lt!1539802)))

(assert (=> b!4321929 (= lt!1539802 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 call!299576) lt!1539310))))

(assert (=> b!4321929 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299576) lt!1539310))))

(declare-fun b!4321930 () Bool)

(declare-fun Unit!67789 () Unit!67766)

(assert (=> b!4321930 (= e!2688900 Unit!67789)))

(declare-fun b!4321931 () Bool)

(assert (=> b!4321931 (= e!2688899 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299576) lt!1539310)))))

(assert (= (and d!1270723 c!735117) b!4321929))

(assert (= (and d!1270723 (not c!735117)) b!4321930))

(assert (= (and d!1270723 (not res!1771208)) b!4321931))

(declare-fun m!4915941 () Bool)

(assert (=> d!1270723 m!4915941))

(declare-fun m!4915943 () Bool)

(assert (=> b!4321929 m!4915943))

(declare-fun m!4915945 () Bool)

(assert (=> b!4321929 m!4915945))

(assert (=> b!4321929 m!4915945))

(declare-fun m!4915947 () Bool)

(assert (=> b!4321929 m!4915947))

(assert (=> b!4321931 m!4915945))

(assert (=> b!4321931 m!4915945))

(assert (=> b!4321931 m!4915947))

(assert (=> b!4321457 d!1270723))

(declare-fun d!1270725 () Bool)

(declare-fun res!1771209 () Bool)

(declare-fun e!2688901 () Bool)

(assert (=> d!1270725 (=> res!1771209 e!2688901)))

(assert (=> d!1270725 (= res!1771209 ((_ is Nil!48379) (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270725 (= (forall!8811 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lambda!133849) e!2688901)))

(declare-fun b!4321932 () Bool)

(declare-fun e!2688902 () Bool)

(assert (=> b!4321932 (= e!2688901 e!2688902)))

(declare-fun res!1771210 () Bool)

(assert (=> b!4321932 (=> (not res!1771210) (not e!2688902))))

(assert (=> b!4321932 (= res!1771210 (dynLambda!20507 lambda!133849 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4321933 () Bool)

(assert (=> b!4321933 (= e!2688902 (forall!8811 (t!355382 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lambda!133849))))

(assert (= (and d!1270725 (not res!1771209)) b!4321932))

(assert (= (and b!4321932 res!1771210) b!4321933))

(declare-fun b_lambda!127293 () Bool)

(assert (=> (not b_lambda!127293) (not b!4321932)))

(declare-fun m!4915949 () Bool)

(assert (=> b!4321932 m!4915949))

(declare-fun m!4915951 () Bool)

(assert (=> b!4321933 m!4915951))

(assert (=> b!4321625 d!1270725))

(declare-fun b!4321934 () Bool)

(declare-fun e!2688903 () Option!10300)

(assert (=> b!4321934 (= e!2688903 (Some!10299 (_2!26879 (h!53839 (toList!2554 lt!1539561)))))))

(declare-fun e!2688904 () Option!10300)

(declare-fun b!4321936 () Bool)

(assert (=> b!4321936 (= e!2688904 (getValueByKey!297 (t!355382 (toList!2554 lt!1539561)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun c!735118 () Bool)

(declare-fun d!1270727 () Bool)

(assert (=> d!1270727 (= c!735118 (and ((_ is Cons!48379) (toList!2554 lt!1539561)) (= (_1!26879 (h!53839 (toList!2554 lt!1539561))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270727 (= (getValueByKey!297 (toList!2554 lt!1539561) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2688903)))

(declare-fun b!4321937 () Bool)

(assert (=> b!4321937 (= e!2688904 None!10299)))

(declare-fun b!4321935 () Bool)

(assert (=> b!4321935 (= e!2688903 e!2688904)))

(declare-fun c!735119 () Bool)

(assert (=> b!4321935 (= c!735119 (and ((_ is Cons!48379) (toList!2554 lt!1539561)) (not (= (_1!26879 (h!53839 (toList!2554 lt!1539561))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(assert (= (and d!1270727 c!735118) b!4321934))

(assert (= (and d!1270727 (not c!735118)) b!4321935))

(assert (= (and b!4321935 c!735119) b!4321936))

(assert (= (and b!4321935 (not c!735119)) b!4321937))

(declare-fun m!4915953 () Bool)

(assert (=> b!4321936 m!4915953))

(assert (=> b!4321613 d!1270727))

(declare-fun d!1270729 () Bool)

(assert (=> d!1270729 (= (isDefined!7602 (getValueByKey!297 lt!1539409 lt!1539410)) (not (isEmpty!28120 (getValueByKey!297 lt!1539409 lt!1539410))))))

(declare-fun bs!606598 () Bool)

(assert (= bs!606598 d!1270729))

(assert (=> bs!606598 m!4915655))

(declare-fun m!4915955 () Bool)

(assert (=> bs!606598 m!4915955))

(assert (=> b!4321694 d!1270729))

(declare-fun b!4321938 () Bool)

(declare-fun e!2688905 () Option!10300)

(assert (=> b!4321938 (= e!2688905 (Some!10299 (_2!26879 (h!53839 lt!1539409))))))

(declare-fun b!4321940 () Bool)

(declare-fun e!2688906 () Option!10300)

(assert (=> b!4321940 (= e!2688906 (getValueByKey!297 (t!355382 lt!1539409) lt!1539410))))

(declare-fun d!1270731 () Bool)

(declare-fun c!735120 () Bool)

(assert (=> d!1270731 (= c!735120 (and ((_ is Cons!48379) lt!1539409) (= (_1!26879 (h!53839 lt!1539409)) lt!1539410)))))

(assert (=> d!1270731 (= (getValueByKey!297 lt!1539409 lt!1539410) e!2688905)))

(declare-fun b!4321941 () Bool)

(assert (=> b!4321941 (= e!2688906 None!10299)))

(declare-fun b!4321939 () Bool)

(assert (=> b!4321939 (= e!2688905 e!2688906)))

(declare-fun c!735121 () Bool)

(assert (=> b!4321939 (= c!735121 (and ((_ is Cons!48379) lt!1539409) (not (= (_1!26879 (h!53839 lt!1539409)) lt!1539410))))))

(assert (= (and d!1270731 c!735120) b!4321938))

(assert (= (and d!1270731 (not c!735120)) b!4321939))

(assert (= (and b!4321939 c!735121) b!4321940))

(assert (= (and b!4321939 (not c!735121)) b!4321941))

(declare-fun m!4915957 () Bool)

(assert (=> b!4321940 m!4915957))

(assert (=> b!4321694 d!1270731))

(declare-fun b!4321960 () Bool)

(assert (=> b!4321960 true))

(declare-fun bs!606599 () Bool)

(declare-fun b!4321966 () Bool)

(assert (= bs!606599 (and b!4321966 b!4321960)))

(declare-fun lambda!133882 () Int)

(declare-fun lambda!133881 () Int)

(assert (=> bs!606599 (= (= (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133882 lambda!133881))))

(assert (=> b!4321966 true))

(declare-fun bs!606600 () Bool)

(declare-fun b!4321961 () Bool)

(assert (= bs!606600 (and b!4321961 b!4321960)))

(declare-fun lambda!133883 () Int)

(assert (=> bs!606600 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133883 lambda!133881))))

(declare-fun bs!606601 () Bool)

(assert (= bs!606601 (and b!4321961 b!4321966)))

(assert (=> bs!606601 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133883 lambda!133882))))

(assert (=> b!4321961 true))

(assert (=> b!4321960 false))

(declare-fun lt!1539823 () Unit!67766)

(declare-fun forallContained!1533 (List!48504 Int K!9629) Unit!67766)

(assert (=> b!4321960 (= lt!1539823 (forallContained!1533 (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) lambda!133881 (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun e!2688916 () Unit!67766)

(declare-fun Unit!67790 () Unit!67766)

(assert (=> b!4321960 (= e!2688916 Unit!67790)))

(declare-fun res!1771218 () Bool)

(declare-fun e!2688915 () Bool)

(assert (=> b!4321961 (=> (not res!1771218) (not e!2688915))))

(declare-fun lt!1539819 () List!48504)

(declare-fun forall!8813 (List!48504 Int) Bool)

(assert (=> b!4321961 (= res!1771218 (forall!8813 lt!1539819 lambda!133883))))

(declare-fun lambda!133884 () Int)

(declare-fun b!4321962 () Bool)

(declare-fun content!7571 (List!48504) (InoxSet K!9629))

(declare-fun map!10408 (List!48502 Int) List!48504)

(assert (=> b!4321962 (= e!2688915 (= (content!7571 lt!1539819) (content!7571 (map!10408 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lambda!133884))))))

(declare-fun d!1270733 () Bool)

(assert (=> d!1270733 e!2688915))

(declare-fun res!1771217 () Bool)

(assert (=> d!1270733 (=> (not res!1771217) (not e!2688915))))

(declare-fun noDuplicate!587 (List!48504) Bool)

(assert (=> d!1270733 (= res!1771217 (noDuplicate!587 lt!1539819))))

(declare-fun e!2688918 () List!48504)

(assert (=> d!1270733 (= lt!1539819 e!2688918)))

(declare-fun c!735128 () Bool)

(assert (=> d!1270733 (= c!735128 ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270733 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270733 (= (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539819)))

(declare-fun b!4321963 () Bool)

(declare-fun e!2688917 () Unit!67766)

(declare-fun Unit!67791 () Unit!67766)

(assert (=> b!4321963 (= e!2688917 Unit!67791)))

(declare-fun b!4321964 () Bool)

(assert (=> b!4321964 false))

(declare-fun Unit!67792 () Unit!67766)

(assert (=> b!4321964 (= e!2688917 Unit!67792)))

(declare-fun b!4321965 () Bool)

(assert (=> b!4321965 (= e!2688918 Nil!48380)))

(assert (=> b!4321966 (= e!2688918 (Cons!48380 (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun c!735129 () Bool)

(assert (=> b!4321966 (= c!735129 (containsKey!402 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun lt!1539824 () Unit!67766)

(assert (=> b!4321966 (= lt!1539824 e!2688917)))

(declare-fun c!735130 () Bool)

(assert (=> b!4321966 (= c!735130 (contains!10431 (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun lt!1539822 () Unit!67766)

(assert (=> b!4321966 (= lt!1539822 e!2688916)))

(declare-fun lt!1539820 () List!48504)

(assert (=> b!4321966 (= lt!1539820 (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun lt!1539821 () Unit!67766)

(declare-fun lemmaForallContainsAddHeadPreserves!9 (List!48502 List!48504 tuple2!47184) Unit!67766)

(assert (=> b!4321966 (= lt!1539821 (lemmaForallContainsAddHeadPreserves!9 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539820 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (=> b!4321966 (forall!8813 lt!1539820 lambda!133882)))

(declare-fun lt!1539825 () Unit!67766)

(assert (=> b!4321966 (= lt!1539825 lt!1539821)))

(declare-fun b!4321967 () Bool)

(declare-fun Unit!67793 () Unit!67766)

(assert (=> b!4321967 (= e!2688916 Unit!67793)))

(declare-fun b!4321968 () Bool)

(declare-fun res!1771219 () Bool)

(assert (=> b!4321968 (=> (not res!1771219) (not e!2688915))))

(declare-fun length!30 (List!48504) Int)

(declare-fun length!31 (List!48502) Int)

(assert (=> b!4321968 (= res!1771219 (= (length!30 lt!1539819) (length!31 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (= (and d!1270733 c!735128) b!4321966))

(assert (= (and d!1270733 (not c!735128)) b!4321965))

(assert (= (and b!4321966 c!735129) b!4321964))

(assert (= (and b!4321966 (not c!735129)) b!4321963))

(assert (= (and b!4321966 c!735130) b!4321960))

(assert (= (and b!4321966 (not c!735130)) b!4321967))

(assert (= (and d!1270733 res!1771217) b!4321968))

(assert (= (and b!4321968 res!1771219) b!4321961))

(assert (= (and b!4321961 res!1771218) b!4321962))

(declare-fun m!4915959 () Bool)

(assert (=> d!1270733 m!4915959))

(declare-fun m!4915961 () Bool)

(assert (=> d!1270733 m!4915961))

(declare-fun m!4915963 () Bool)

(assert (=> b!4321962 m!4915963))

(declare-fun m!4915965 () Bool)

(assert (=> b!4321962 m!4915965))

(assert (=> b!4321962 m!4915965))

(declare-fun m!4915967 () Bool)

(assert (=> b!4321962 m!4915967))

(declare-fun m!4915969 () Bool)

(assert (=> b!4321960 m!4915969))

(assert (=> b!4321960 m!4915969))

(declare-fun m!4915971 () Bool)

(assert (=> b!4321960 m!4915971))

(declare-fun m!4915973 () Bool)

(assert (=> b!4321966 m!4915973))

(assert (=> b!4321966 m!4915969))

(declare-fun m!4915975 () Bool)

(assert (=> b!4321966 m!4915975))

(assert (=> b!4321966 m!4915969))

(declare-fun m!4915977 () Bool)

(assert (=> b!4321966 m!4915977))

(declare-fun m!4915979 () Bool)

(assert (=> b!4321966 m!4915979))

(declare-fun m!4915981 () Bool)

(assert (=> b!4321968 m!4915981))

(declare-fun m!4915983 () Bool)

(assert (=> b!4321968 m!4915983))

(declare-fun m!4915985 () Bool)

(assert (=> b!4321961 m!4915985))

(assert (=> b!4321743 d!1270733))

(declare-fun d!1270735 () Bool)

(declare-fun lt!1539828 () Bool)

(assert (=> d!1270735 (= lt!1539828 (select (content!7571 e!2688706) key!2048))))

(declare-fun e!2688923 () Bool)

(assert (=> d!1270735 (= lt!1539828 e!2688923)))

(declare-fun res!1771225 () Bool)

(assert (=> d!1270735 (=> (not res!1771225) (not e!2688923))))

(assert (=> d!1270735 (= res!1771225 ((_ is Cons!48380) e!2688706))))

(assert (=> d!1270735 (= (contains!10431 e!2688706 key!2048) lt!1539828)))

(declare-fun b!4321975 () Bool)

(declare-fun e!2688924 () Bool)

(assert (=> b!4321975 (= e!2688923 e!2688924)))

(declare-fun res!1771224 () Bool)

(assert (=> b!4321975 (=> res!1771224 e!2688924)))

(assert (=> b!4321975 (= res!1771224 (= (h!53841 e!2688706) key!2048))))

(declare-fun b!4321976 () Bool)

(assert (=> b!4321976 (= e!2688924 (contains!10431 (t!355387 e!2688706) key!2048))))

(assert (= (and d!1270735 res!1771225) b!4321975))

(assert (= (and b!4321975 (not res!1771224)) b!4321976))

(declare-fun m!4915987 () Bool)

(assert (=> d!1270735 m!4915987))

(declare-fun m!4915989 () Bool)

(assert (=> d!1270735 m!4915989))

(declare-fun m!4915991 () Bool)

(assert (=> b!4321976 m!4915991))

(assert (=> bm!299607 d!1270735))

(assert (=> d!1270563 d!1270517))

(declare-fun d!1270737 () Bool)

(declare-fun res!1771226 () Bool)

(declare-fun e!2688925 () Bool)

(assert (=> d!1270737 (=> res!1771226 e!2688925)))

(assert (=> d!1270737 (= res!1771226 (not ((_ is Cons!48378) (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))))))

(assert (=> d!1270737 (= (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314))))) e!2688925)))

(declare-fun b!4321977 () Bool)

(declare-fun e!2688926 () Bool)

(assert (=> b!4321977 (= e!2688925 e!2688926)))

(declare-fun res!1771227 () Bool)

(assert (=> b!4321977 (=> (not res!1771227) (not e!2688926))))

(assert (=> b!4321977 (= res!1771227 (not (containsKey!400 (t!355381 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314))))) (_1!26878 (h!53838 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))))))))

(declare-fun b!4321978 () Bool)

(assert (=> b!4321978 (= e!2688926 (noDuplicateKeys!262 (t!355381 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))))))

(assert (= (and d!1270737 (not res!1771226)) b!4321977))

(assert (= (and b!4321977 res!1771227) b!4321978))

(declare-fun m!4915993 () Bool)

(assert (=> b!4321977 m!4915993))

(declare-fun m!4915995 () Bool)

(assert (=> b!4321978 m!4915995))

(assert (=> b!4321802 d!1270737))

(declare-fun d!1270739 () Bool)

(declare-fun lt!1539829 () Bool)

(assert (=> d!1270739 (= lt!1539829 (select (content!7571 e!2688777) key!2048))))

(declare-fun e!2688927 () Bool)

(assert (=> d!1270739 (= lt!1539829 e!2688927)))

(declare-fun res!1771229 () Bool)

(assert (=> d!1270739 (=> (not res!1771229) (not e!2688927))))

(assert (=> d!1270739 (= res!1771229 ((_ is Cons!48380) e!2688777))))

(assert (=> d!1270739 (= (contains!10431 e!2688777 key!2048) lt!1539829)))

(declare-fun b!4321979 () Bool)

(declare-fun e!2688928 () Bool)

(assert (=> b!4321979 (= e!2688927 e!2688928)))

(declare-fun res!1771228 () Bool)

(assert (=> b!4321979 (=> res!1771228 e!2688928)))

(assert (=> b!4321979 (= res!1771228 (= (h!53841 e!2688777) key!2048))))

(declare-fun b!4321980 () Bool)

(assert (=> b!4321980 (= e!2688928 (contains!10431 (t!355387 e!2688777) key!2048))))

(assert (= (and d!1270739 res!1771229) b!4321979))

(assert (= (and b!4321979 (not res!1771228)) b!4321980))

(declare-fun m!4915997 () Bool)

(assert (=> d!1270739 m!4915997))

(declare-fun m!4915999 () Bool)

(assert (=> d!1270739 m!4915999))

(declare-fun m!4916001 () Bool)

(assert (=> b!4321980 m!4916001))

(assert (=> bm!299609 d!1270739))

(declare-fun d!1270741 () Bool)

(assert (=> d!1270741 (= (map!10407 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun bs!606602 () Bool)

(assert (= bs!606602 d!1270741))

(assert (=> bs!606602 m!4915937))

(assert (=> bm!299572 d!1270741))

(declare-fun d!1270743 () Bool)

(assert (=> d!1270743 (= (isEmpty!28119 lt!1539542) (not ((_ is Some!10300) lt!1539542)))))

(assert (=> d!1270573 d!1270743))

(declare-fun d!1270745 () Bool)

(declare-fun res!1771230 () Bool)

(declare-fun e!2688929 () Bool)

(assert (=> d!1270745 (=> res!1771230 e!2688929)))

(assert (=> d!1270745 (= res!1771230 (not ((_ is Cons!48378) call!299511)))))

(assert (=> d!1270745 (= (noDuplicateKeys!262 call!299511) e!2688929)))

(declare-fun b!4321981 () Bool)

(declare-fun e!2688930 () Bool)

(assert (=> b!4321981 (= e!2688929 e!2688930)))

(declare-fun res!1771231 () Bool)

(assert (=> b!4321981 (=> (not res!1771231) (not e!2688930))))

(assert (=> b!4321981 (= res!1771231 (not (containsKey!400 (t!355381 call!299511) (_1!26878 (h!53838 call!299511)))))))

(declare-fun b!4321982 () Bool)

(assert (=> b!4321982 (= e!2688930 (noDuplicateKeys!262 (t!355381 call!299511)))))

(assert (= (and d!1270745 (not res!1771230)) b!4321981))

(assert (= (and b!4321981 res!1771231) b!4321982))

(declare-fun m!4916003 () Bool)

(assert (=> b!4321981 m!4916003))

(declare-fun m!4916005 () Bool)

(assert (=> b!4321982 m!4916005))

(assert (=> d!1270573 d!1270745))

(declare-fun b!4321995 () Bool)

(declare-fun e!2688938 () SeekEntryResult!21)

(declare-fun lt!1539841 () SeekEntryResult!21)

(assert (=> b!4321995 (= e!2688938 (MissingZero!21 (index!1467 lt!1539841)))))

(declare-fun b!4321996 () Bool)

(declare-fun c!735139 () Bool)

(declare-fun lt!1539838 () (_ BitVec 64))

(assert (=> b!4321996 (= c!735139 (= lt!1539838 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2688939 () SeekEntryResult!21)

(assert (=> b!4321996 (= e!2688939 e!2688938)))

(declare-fun d!1270747 () Bool)

(declare-fun lt!1539840 () SeekEntryResult!21)

(assert (=> d!1270747 (and (or ((_ is MissingVacant!21) lt!1539840) (not ((_ is Found!21) lt!1539840)) (and (bvsge (index!1464 lt!1539840) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539840) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))) (not ((_ is MissingVacant!21) lt!1539840)) (or (not ((_ is Found!21) lt!1539840)) (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539840)) lt!1539310)))))

(declare-fun e!2688937 () SeekEntryResult!21)

(assert (=> d!1270747 (= lt!1539840 e!2688937)))

(declare-fun c!735138 () Bool)

(assert (=> d!1270747 (= c!735138 (and ((_ is Intermediate!21) lt!1539841) (undefined!102 lt!1539841)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17232 (_ BitVec 32)) SeekEntryResult!21)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1270747 (= lt!1539841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!1539310 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270747 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270747 (= (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539840)))

(declare-fun b!4321997 () Bool)

(assert (=> b!4321997 (= e!2688937 e!2688939)))

(assert (=> b!4321997 (= lt!1539838 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1467 lt!1539841)))))

(declare-fun c!735137 () Bool)

(assert (=> b!4321997 (= c!735137 (= lt!1539838 lt!1539310))))

(declare-fun b!4321998 () Bool)

(assert (=> b!4321998 (= e!2688937 Undefined!21)))

(declare-fun b!4321999 () Bool)

(declare-fun lt!1539839 () SeekEntryResult!21)

(assert (=> b!4321999 (= e!2688938 (ite ((_ is MissingVacant!21) lt!1539839) (MissingZero!21 (index!1466 lt!1539839)) lt!1539839))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17232 (_ BitVec 32)) SeekEntryResult!21)

(assert (=> b!4321999 (= lt!1539839 (seekKeyOrZeroReturnVacant!0 (x!750097 lt!1539841) (index!1467 lt!1539841) (index!1467 lt!1539841) lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322000 () Bool)

(assert (=> b!4322000 (= e!2688939 (Found!21 (index!1467 lt!1539841)))))

(assert (= (and d!1270747 c!735138) b!4321998))

(assert (= (and d!1270747 (not c!735138)) b!4321997))

(assert (= (and b!4321997 c!735137) b!4322000))

(assert (= (and b!4321997 (not c!735137)) b!4321996))

(assert (= (and b!4321996 c!735139) b!4321995))

(assert (= (and b!4321996 (not c!735139)) b!4321999))

(declare-fun m!4916007 () Bool)

(assert (=> d!1270747 m!4916007))

(declare-fun m!4916009 () Bool)

(assert (=> d!1270747 m!4916009))

(assert (=> d!1270747 m!4916009))

(declare-fun m!4916011 () Bool)

(assert (=> d!1270747 m!4916011))

(declare-fun m!4916013 () Bool)

(assert (=> d!1270747 m!4916013))

(declare-fun m!4916015 () Bool)

(assert (=> b!4321997 m!4916015))

(declare-fun m!4916017 () Bool)

(assert (=> b!4321999 m!4916017))

(assert (=> b!4321840 d!1270747))

(declare-fun d!1270749 () Bool)

(declare-fun res!1771236 () Bool)

(declare-fun e!2688944 () Bool)

(assert (=> d!1270749 (=> res!1771236 e!2688944)))

(assert (=> d!1270749 (= res!1771236 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000) lt!1539310))))

(assert (=> d!1270749 (= (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000) e!2688944)))

(declare-fun b!4322005 () Bool)

(declare-fun e!2688945 () Bool)

(assert (=> b!4322005 (= e!2688944 e!2688945)))

(declare-fun res!1771237 () Bool)

(assert (=> b!4322005 (=> (not res!1771237) (not e!2688945))))

(assert (=> b!4322005 (= res!1771237 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322006 () Bool)

(assert (=> b!4322006 (= e!2688945 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1270749 (not res!1771236)) b!4322005))

(assert (= (and b!4322005 res!1771237) b!4322006))

(declare-fun m!4916019 () Bool)

(assert (=> d!1270749 m!4916019))

(declare-fun m!4916021 () Bool)

(assert (=> b!4322006 m!4916021))

(assert (=> b!4321783 d!1270749))

(declare-fun d!1270751 () Bool)

(assert (=> d!1270751 (= (isDefined!7601 lt!1539542) (not (isEmpty!28119 lt!1539542)))))

(declare-fun bs!606603 () Bool)

(assert (= bs!606603 d!1270751))

(assert (=> bs!606603 m!4915485))

(assert (=> b!4321562 d!1270751))

(declare-fun d!1270753 () Bool)

(assert (=> d!1270753 (= (+!330 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1539844 () Unit!67766)

(declare-fun choose!26406 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 List!48502 Int) Unit!67766)

(assert (=> d!1270753 (= lt!1539844 (choose!26406 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1270753 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270753 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539844)))

(declare-fun bs!606604 () Bool)

(assert (= bs!606604 d!1270753))

(declare-fun m!4916023 () Bool)

(assert (=> bs!606604 m!4916023))

(assert (=> bs!606604 m!4915937))

(declare-fun m!4916025 () Bool)

(assert (=> bs!606604 m!4916025))

(assert (=> bs!606604 m!4915937))

(assert (=> bs!606604 m!4915875))

(declare-fun m!4916027 () Bool)

(assert (=> bs!606604 m!4916027))

(assert (=> b!4321478 d!1270753))

(declare-fun d!1270755 () Bool)

(declare-fun lt!1539852 () SeekEntryResult!21)

(assert (=> d!1270755 (and (or ((_ is Undefined!21) lt!1539852) (not ((_ is Found!21) lt!1539852)) (and (bvsge (index!1464 lt!1539852) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539852) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))) (or ((_ is Undefined!21) lt!1539852) ((_ is Found!21) lt!1539852) (not ((_ is MissingZero!21) lt!1539852)) (and (bvsge (index!1465 lt!1539852) #b00000000000000000000000000000000) (bvslt (index!1465 lt!1539852) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))) (or ((_ is Undefined!21) lt!1539852) ((_ is Found!21) lt!1539852) ((_ is MissingZero!21) lt!1539852) (not ((_ is MissingVacant!21) lt!1539852)) (and (bvsge (index!1466 lt!1539852) #b00000000000000000000000000000000) (bvslt (index!1466 lt!1539852) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))) (or ((_ is Undefined!21) lt!1539852) (ite ((_ is Found!21) lt!1539852) (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539852)) lt!1539310) (ite ((_ is MissingZero!21) lt!1539852) (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1465 lt!1539852)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!21) lt!1539852) (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1466 lt!1539852)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!2688953 () SeekEntryResult!21)

(assert (=> d!1270755 (= lt!1539852 e!2688953)))

(declare-fun c!735148 () Bool)

(declare-fun lt!1539853 () SeekEntryResult!21)

(assert (=> d!1270755 (= c!735148 (and ((_ is Intermediate!21) lt!1539853) (undefined!102 lt!1539853)))))

(assert (=> d!1270755 (= lt!1539853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!1539310 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1270755 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270755 (= (seekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539852)))

(declare-fun b!4322019 () Bool)

(declare-fun e!2688954 () SeekEntryResult!21)

(assert (=> b!4322019 (= e!2688954 (MissingZero!21 (index!1467 lt!1539853)))))

(declare-fun b!4322020 () Bool)

(declare-fun c!735146 () Bool)

(declare-fun lt!1539851 () (_ BitVec 64))

(assert (=> b!4322020 (= c!735146 (= lt!1539851 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2688952 () SeekEntryResult!21)

(assert (=> b!4322020 (= e!2688952 e!2688954)))

(declare-fun b!4322021 () Bool)

(assert (=> b!4322021 (= e!2688954 (seekKeyOrZeroReturnVacant!0 (x!750097 lt!1539853) (index!1467 lt!1539853) (index!1467 lt!1539853) lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322022 () Bool)

(assert (=> b!4322022 (= e!2688953 Undefined!21)))

(declare-fun b!4322023 () Bool)

(assert (=> b!4322023 (= e!2688952 (Found!21 (index!1467 lt!1539853)))))

(declare-fun b!4322024 () Bool)

(assert (=> b!4322024 (= e!2688953 e!2688952)))

(assert (=> b!4322024 (= lt!1539851 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1467 lt!1539853)))))

(declare-fun c!735147 () Bool)

(assert (=> b!4322024 (= c!735147 (= lt!1539851 lt!1539310))))

(assert (= (and d!1270755 c!735148) b!4322022))

(assert (= (and d!1270755 (not c!735148)) b!4322024))

(assert (= (and b!4322024 c!735147) b!4322023))

(assert (= (and b!4322024 (not c!735147)) b!4322020))

(assert (= (and b!4322020 c!735146) b!4322019))

(assert (= (and b!4322020 (not c!735146)) b!4322021))

(declare-fun m!4916029 () Bool)

(assert (=> d!1270755 m!4916029))

(declare-fun m!4916031 () Bool)

(assert (=> d!1270755 m!4916031))

(declare-fun m!4916033 () Bool)

(assert (=> d!1270755 m!4916033))

(declare-fun m!4916035 () Bool)

(assert (=> d!1270755 m!4916035))

(assert (=> d!1270755 m!4916033))

(declare-fun m!4916037 () Bool)

(assert (=> d!1270755 m!4916037))

(assert (=> d!1270755 m!4915875))

(declare-fun m!4916039 () Bool)

(assert (=> b!4322021 m!4916039))

(declare-fun m!4916041 () Bool)

(assert (=> b!4322024 m!4916041))

(assert (=> bm!299570 d!1270755))

(declare-fun d!1270757 () Bool)

(assert (=> d!1270757 (= (isEmpty!28119 call!299514) (not ((_ is Some!10300) call!299514)))))

(assert (=> d!1270639 d!1270757))

(declare-fun b!4322025 () Bool)

(declare-fun e!2688964 () Bool)

(declare-fun call!299663 () Bool)

(assert (=> b!4322025 (= e!2688964 (not call!299663))))

(declare-fun b!4322026 () Bool)

(declare-fun res!1771244 () Bool)

(declare-fun e!2688958 () Bool)

(assert (=> b!4322026 (=> (not res!1771244) (not e!2688958))))

(declare-fun e!2688965 () Bool)

(assert (=> b!4322026 (= res!1771244 e!2688965)))

(declare-fun res!1771246 () Bool)

(assert (=> b!4322026 (=> res!1771246 e!2688965)))

(declare-fun e!2688960 () Bool)

(assert (=> b!4322026 (= res!1771246 (not e!2688960))))

(declare-fun res!1771239 () Bool)

(assert (=> b!4322026 (=> (not res!1771239) (not e!2688960))))

(assert (=> b!4322026 (= res!1771239 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun bm!299652 () Bool)

(declare-fun call!299662 () ListLongMap!1171)

(declare-fun call!299661 () ListLongMap!1171)

(assert (=> bm!299652 (= call!299662 call!299661)))

(declare-fun b!4322027 () Bool)

(declare-fun e!2688966 () Unit!67766)

(declare-fun Unit!67794 () Unit!67766)

(assert (=> b!4322027 (= e!2688966 Unit!67794)))

(declare-fun b!4322028 () Bool)

(declare-fun lt!1539875 () Unit!67766)

(assert (=> b!4322028 (= e!2688966 lt!1539875)))

(declare-fun lt!1539854 () ListLongMap!1171)

(assert (=> b!4322028 (= lt!1539854 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539873 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539873 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539868 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539868 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1539859 () Unit!67766)

(assert (=> b!4322028 (= lt!1539859 (addStillContains!3 lt!1539854 lt!1539873 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539868))))

(assert (=> b!4322028 (contains!10426 (+!330 lt!1539854 (tuple2!47187 lt!1539873 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539868)))

(declare-fun lt!1539867 () Unit!67766)

(assert (=> b!4322028 (= lt!1539867 lt!1539859)))

(declare-fun lt!1539857 () ListLongMap!1171)

(assert (=> b!4322028 (= lt!1539857 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539860 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539860 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539871 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539871 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1539866 () Unit!67766)

(assert (=> b!4322028 (= lt!1539866 (addApplyDifferent!3 lt!1539857 lt!1539860 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539871))))

(assert (=> b!4322028 (= (apply!11141 (+!330 lt!1539857 (tuple2!47187 lt!1539860 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539871) (apply!11141 lt!1539857 lt!1539871))))

(declare-fun lt!1539856 () Unit!67766)

(assert (=> b!4322028 (= lt!1539856 lt!1539866)))

(declare-fun lt!1539858 () ListLongMap!1171)

(assert (=> b!4322028 (= lt!1539858 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539870 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539870 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539862 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539862 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1539863 () Unit!67766)

(assert (=> b!4322028 (= lt!1539863 (addApplyDifferent!3 lt!1539858 lt!1539870 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539862))))

(assert (=> b!4322028 (= (apply!11141 (+!330 lt!1539858 (tuple2!47187 lt!1539870 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539862) (apply!11141 lt!1539858 lt!1539862))))

(declare-fun lt!1539861 () Unit!67766)

(assert (=> b!4322028 (= lt!1539861 lt!1539863)))

(declare-fun lt!1539874 () ListLongMap!1171)

(assert (=> b!4322028 (= lt!1539874 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539855 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539855 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1539872 () (_ BitVec 64))

(assert (=> b!4322028 (= lt!1539872 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4322028 (= lt!1539875 (addApplyDifferent!3 lt!1539874 lt!1539855 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539872))))

(assert (=> b!4322028 (= (apply!11141 (+!330 lt!1539874 (tuple2!47187 lt!1539855 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539872) (apply!11141 lt!1539874 lt!1539872))))

(declare-fun b!4322029 () Bool)

(declare-fun e!2688963 () Bool)

(declare-fun lt!1539869 () ListLongMap!1171)

(assert (=> b!4322029 (= e!2688963 (= (apply!11141 lt!1539869 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000)) (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000)))))

(assert (=> b!4322029 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35731 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> b!4322029 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322030 () Bool)

(declare-fun e!2688956 () Bool)

(assert (=> b!4322030 (= e!2688956 (= (apply!11141 lt!1539869 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322031 () Bool)

(declare-fun e!2688962 () Bool)

(assert (=> b!4322031 (= e!2688962 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000)))))

(declare-fun b!4322032 () Bool)

(declare-fun e!2688955 () ListLongMap!1171)

(declare-fun call!299660 () ListLongMap!1171)

(assert (=> b!4322032 (= e!2688955 call!299660)))

(declare-fun c!735151 () Bool)

(declare-fun c!735153 () Bool)

(declare-fun bm!299653 () Bool)

(declare-fun call!299659 () ListLongMap!1171)

(declare-fun call!299658 () ListLongMap!1171)

(assert (=> bm!299653 (= call!299661 (+!330 (ite c!735151 call!299658 (ite c!735153 call!299659 call!299660)) (ite (or c!735151 c!735153) (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun bm!299654 () Bool)

(declare-fun call!299657 () Bool)

(assert (=> bm!299654 (= call!299657 (contains!10426 lt!1539869 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322033 () Bool)

(assert (=> b!4322033 (= e!2688965 e!2688963)))

(declare-fun res!1771241 () Bool)

(assert (=> b!4322033 (=> (not res!1771241) (not e!2688963))))

(assert (=> b!4322033 (= res!1771241 (contains!10426 lt!1539869 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000)))))

(assert (=> b!4322033 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322034 () Bool)

(assert (=> b!4322034 (= e!2688964 e!2688956)))

(declare-fun res!1771245 () Bool)

(assert (=> b!4322034 (= res!1771245 call!299663)))

(assert (=> b!4322034 (=> (not res!1771245) (not e!2688956))))

(declare-fun b!4322035 () Bool)

(declare-fun e!2688957 () ListLongMap!1171)

(declare-fun e!2688961 () ListLongMap!1171)

(assert (=> b!4322035 (= e!2688957 e!2688961)))

(assert (=> b!4322035 (= c!735153 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322036 () Bool)

(declare-fun e!2688959 () Bool)

(declare-fun e!2688967 () Bool)

(assert (=> b!4322036 (= e!2688959 e!2688967)))

(declare-fun res!1771238 () Bool)

(assert (=> b!4322036 (= res!1771238 call!299657)))

(assert (=> b!4322036 (=> (not res!1771238) (not e!2688967))))

(declare-fun b!4322037 () Bool)

(assert (=> b!4322037 (= e!2688960 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000)))))

(declare-fun b!4322038 () Bool)

(declare-fun res!1771243 () Bool)

(assert (=> b!4322038 (=> (not res!1771243) (not e!2688958))))

(assert (=> b!4322038 (= res!1771243 e!2688964)))

(declare-fun c!735152 () Bool)

(assert (=> b!4322038 (= c!735152 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4322039 () Bool)

(assert (=> b!4322039 (= e!2688961 call!299662)))

(declare-fun bm!299655 () Bool)

(assert (=> bm!299655 (= call!299660 call!299659)))

(declare-fun b!4322040 () Bool)

(assert (=> b!4322040 (= e!2688957 (+!330 call!299661 (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun bm!299656 () Bool)

(assert (=> bm!299656 (= call!299663 (contains!10426 lt!1539869 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299657 () Bool)

(assert (=> bm!299657 (= call!299658 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322041 () Bool)

(declare-fun c!735150 () Bool)

(assert (=> b!4322041 (= c!735150 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4322041 (= e!2688961 e!2688955)))

(declare-fun b!4322042 () Bool)

(assert (=> b!4322042 (= e!2688959 (not call!299657))))

(declare-fun d!1270759 () Bool)

(assert (=> d!1270759 e!2688958))

(declare-fun res!1771240 () Bool)

(assert (=> d!1270759 (=> (not res!1771240) (not e!2688958))))

(assert (=> d!1270759 (= res!1771240 (or (bvsge #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun lt!1539864 () ListLongMap!1171)

(assert (=> d!1270759 (= lt!1539869 lt!1539864)))

(declare-fun lt!1539865 () Unit!67766)

(assert (=> d!1270759 (= lt!1539865 e!2688966)))

(declare-fun c!735149 () Bool)

(assert (=> d!1270759 (= c!735149 e!2688962)))

(declare-fun res!1771242 () Bool)

(assert (=> d!1270759 (=> (not res!1771242) (not e!2688962))))

(assert (=> d!1270759 (= res!1771242 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270759 (= lt!1539864 e!2688957)))

(assert (=> d!1270759 (= c!735151 (and (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270759 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270759 (= (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539869)))

(declare-fun b!4322043 () Bool)

(assert (=> b!4322043 (= e!2688958 e!2688959)))

(declare-fun c!735154 () Bool)

(assert (=> b!4322043 (= c!735154 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322044 () Bool)

(assert (=> b!4322044 (= e!2688955 call!299662)))

(declare-fun bm!299658 () Bool)

(assert (=> bm!299658 (= call!299659 call!299658)))

(declare-fun b!4322045 () Bool)

(assert (=> b!4322045 (= e!2688967 (= (apply!11141 lt!1539869 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (= (and d!1270759 c!735151) b!4322040))

(assert (= (and d!1270759 (not c!735151)) b!4322035))

(assert (= (and b!4322035 c!735153) b!4322039))

(assert (= (and b!4322035 (not c!735153)) b!4322041))

(assert (= (and b!4322041 c!735150) b!4322044))

(assert (= (and b!4322041 (not c!735150)) b!4322032))

(assert (= (or b!4322044 b!4322032) bm!299655))

(assert (= (or b!4322039 bm!299655) bm!299658))

(assert (= (or b!4322039 b!4322044) bm!299652))

(assert (= (or b!4322040 bm!299658) bm!299657))

(assert (= (or b!4322040 bm!299652) bm!299653))

(assert (= (and d!1270759 res!1771242) b!4322031))

(assert (= (and d!1270759 c!735149) b!4322028))

(assert (= (and d!1270759 (not c!735149)) b!4322027))

(assert (= (and d!1270759 res!1771240) b!4322026))

(assert (= (and b!4322026 res!1771239) b!4322037))

(assert (= (and b!4322026 (not res!1771246)) b!4322033))

(assert (= (and b!4322033 res!1771241) b!4322029))

(assert (= (and b!4322026 res!1771244) b!4322038))

(assert (= (and b!4322038 c!735152) b!4322034))

(assert (= (and b!4322038 (not c!735152)) b!4322025))

(assert (= (and b!4322034 res!1771245) b!4322030))

(assert (= (or b!4322034 b!4322025) bm!299656))

(assert (= (and b!4322038 res!1771243) b!4322043))

(assert (= (and b!4322043 c!735154) b!4322036))

(assert (= (and b!4322043 (not c!735154)) b!4322042))

(assert (= (and b!4322036 res!1771238) b!4322045))

(assert (= (or b!4322036 b!4322042) bm!299654))

(declare-fun m!4916043 () Bool)

(assert (=> b!4322030 m!4916043))

(declare-fun m!4916045 () Bool)

(assert (=> bm!299654 m!4916045))

(assert (=> d!1270759 m!4916013))

(declare-fun m!4916047 () Bool)

(assert (=> bm!299657 m!4916047))

(declare-fun m!4916049 () Bool)

(assert (=> bm!299653 m!4916049))

(assert (=> b!4322033 m!4916019))

(assert (=> b!4322033 m!4916019))

(declare-fun m!4916051 () Bool)

(assert (=> b!4322033 m!4916051))

(assert (=> b!4322037 m!4916019))

(assert (=> b!4322037 m!4916019))

(declare-fun m!4916053 () Bool)

(assert (=> b!4322037 m!4916053))

(assert (=> b!4322028 m!4916019))

(declare-fun m!4916055 () Bool)

(assert (=> b!4322028 m!4916055))

(declare-fun m!4916057 () Bool)

(assert (=> b!4322028 m!4916057))

(declare-fun m!4916059 () Bool)

(assert (=> b!4322028 m!4916059))

(declare-fun m!4916061 () Bool)

(assert (=> b!4322028 m!4916061))

(declare-fun m!4916063 () Bool)

(assert (=> b!4322028 m!4916063))

(declare-fun m!4916065 () Bool)

(assert (=> b!4322028 m!4916065))

(declare-fun m!4916067 () Bool)

(assert (=> b!4322028 m!4916067))

(declare-fun m!4916069 () Bool)

(assert (=> b!4322028 m!4916069))

(assert (=> b!4322028 m!4916047))

(assert (=> b!4322028 m!4916067))

(declare-fun m!4916071 () Bool)

(assert (=> b!4322028 m!4916071))

(declare-fun m!4916073 () Bool)

(assert (=> b!4322028 m!4916073))

(assert (=> b!4322028 m!4916071))

(declare-fun m!4916075 () Bool)

(assert (=> b!4322028 m!4916075))

(assert (=> b!4322028 m!4916065))

(declare-fun m!4916077 () Bool)

(assert (=> b!4322028 m!4916077))

(declare-fun m!4916079 () Bool)

(assert (=> b!4322028 m!4916079))

(assert (=> b!4322028 m!4916057))

(declare-fun m!4916081 () Bool)

(assert (=> b!4322028 m!4916081))

(declare-fun m!4916083 () Bool)

(assert (=> b!4322028 m!4916083))

(assert (=> b!4322029 m!4916019))

(assert (=> b!4322029 m!4916019))

(declare-fun m!4916085 () Bool)

(assert (=> b!4322029 m!4916085))

(declare-fun m!4916087 () Bool)

(assert (=> b!4322029 m!4916087))

(declare-fun m!4916089 () Bool)

(assert (=> b!4322045 m!4916089))

(declare-fun m!4916091 () Bool)

(assert (=> bm!299656 m!4916091))

(declare-fun m!4916093 () Bool)

(assert (=> b!4322040 m!4916093))

(assert (=> b!4322031 m!4916019))

(assert (=> b!4322031 m!4916019))

(assert (=> b!4322031 m!4916053))

(assert (=> bm!299628 d!1270759))

(declare-fun b!4322058 () Bool)

(declare-fun e!2688975 () Unit!67766)

(declare-fun Unit!67795 () Unit!67766)

(assert (=> b!4322058 (= e!2688975 Unit!67795)))

(declare-fun d!1270761 () Bool)

(declare-fun e!2688974 () Bool)

(assert (=> d!1270761 e!2688974))

(declare-fun res!1771252 () Bool)

(assert (=> d!1270761 (=> (not res!1771252) (not e!2688974))))

(declare-fun lt!1539939 () LongMapFixedSize!9506)

(assert (=> d!1270761 (= res!1771252 (valid!3765 lt!1539939))))

(declare-fun lt!1539938 () LongMapFixedSize!9506)

(assert (=> d!1270761 (= lt!1539939 lt!1539938)))

(declare-fun lt!1539931 () Unit!67766)

(assert (=> d!1270761 (= lt!1539931 e!2688975)))

(declare-fun c!735160 () Bool)

(assert (=> d!1270761 (= c!735160 (not (= (map!10407 lt!1539938) (ListLongMap!1172 Nil!48379))))))

(declare-fun lt!1539926 () Unit!67766)

(declare-fun lt!1539930 () Unit!67766)

(assert (=> d!1270761 (= lt!1539926 lt!1539930)))

(declare-fun lt!1539936 () array!17232)

(declare-fun lt!1539928 () (_ BitVec 32))

(declare-datatypes ((List!48505 0))(
  ( (Nil!48381) (Cons!48381 (h!53842 (_ BitVec 64)) (t!355391 List!48505)) )
))
(declare-fun lt!1539937 () List!48505)

(declare-fun arrayNoDuplicates!0 (array!17232 (_ BitVec 32) List!48505) Bool)

(assert (=> d!1270761 (arrayNoDuplicates!0 lt!1539936 lt!1539928 lt!1539937)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!17232 (_ BitVec 32) (_ BitVec 32) List!48505) Unit!67766)

(assert (=> d!1270761 (= lt!1539930 (lemmaArrayNoDuplicatesInAll0Array!0 lt!1539936 lt!1539928 (bvadd lt!1539530 #b00000000000000000000000000000001) lt!1539937))))

(assert (=> d!1270761 (= lt!1539937 Nil!48381)))

(assert (=> d!1270761 (= lt!1539928 #b00000000000000000000000000000000)))

(assert (=> d!1270761 (= lt!1539936 (array!17233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1539530 #b00000000000000000000000000000001)))))

(declare-fun lt!1539945 () Unit!67766)

(declare-fun lt!1539940 () Unit!67766)

(assert (=> d!1270761 (= lt!1539945 lt!1539940)))

(declare-fun lt!1539934 () (_ BitVec 32))

(declare-fun lt!1539932 () array!17232)

(assert (=> d!1270761 (arrayForallSeekEntryOrOpenFound!0 lt!1539934 lt!1539932 lt!1539530)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!17232 (_ BitVec 32) (_ BitVec 32)) Unit!67766)

(assert (=> d!1270761 (= lt!1539940 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!1539932 lt!1539530 lt!1539934))))

(assert (=> d!1270761 (= lt!1539934 #b00000000000000000000000000000000)))

(assert (=> d!1270761 (= lt!1539932 (array!17233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1539530 #b00000000000000000000000000000001)))))

(declare-fun lt!1539944 () Unit!67766)

(declare-fun lt!1539933 () Unit!67766)

(assert (=> d!1270761 (= lt!1539944 lt!1539933)))

(declare-fun lt!1539942 () array!17232)

(declare-fun lt!1539946 () (_ BitVec 32))

(declare-fun lt!1539943 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!17232 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1270761 (= (arrayCountValidKeys!0 lt!1539942 lt!1539946 lt!1539943) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!17232 (_ BitVec 32) (_ BitVec 32)) Unit!67766)

(assert (=> d!1270761 (= lt!1539933 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!1539942 lt!1539946 lt!1539943))))

(assert (=> d!1270761 (= lt!1539943 (bvadd lt!1539530 #b00000000000000000000000000000001))))

(assert (=> d!1270761 (= lt!1539946 #b00000000000000000000000000000000)))

(assert (=> d!1270761 (= lt!1539942 (array!17233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1539530 #b00000000000000000000000000000001)))))

(declare-fun lt!1539927 () List!48502)

(assert (=> d!1270761 (= lt!1539938 (LongMapFixedSize!9507 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539530 #b00000000000000000000000000000000 lt!1539927 lt!1539927 #b00000000000000000000000000000000 (array!17233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1539530 #b00000000000000000000000000000001)) (array!17235 ((as const (Array (_ BitVec 32) List!48502)) lt!1539927) (bvadd lt!1539530 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!1270761 (= lt!1539927 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1270761 (validMask!0 lt!1539530)))

(assert (=> d!1270761 (= (getNewLongMapFixedSize!27 lt!1539530 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539939)))

(declare-fun b!4322059 () Bool)

(assert (=> b!4322059 (= e!2688974 (= (map!10407 lt!1539939) (ListLongMap!1172 Nil!48379)))))

(declare-fun b!4322060 () Bool)

(declare-fun Unit!67796 () Unit!67766)

(assert (=> b!4322060 (= e!2688975 Unit!67796)))

(declare-fun lt!1539924 () tuple2!47186)

(declare-fun head!9022 (List!48503) tuple2!47186)

(assert (=> b!4322060 (= lt!1539924 (head!9022 (toList!2554 (map!10407 lt!1539938))))))

(declare-fun lt!1539941 () array!17232)

(assert (=> b!4322060 (= lt!1539941 (array!17233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1539530 #b00000000000000000000000000000001)))))

(declare-fun lt!1539929 () (_ BitVec 32))

(assert (=> b!4322060 (= lt!1539929 #b00000000000000000000000000000000)))

(declare-fun lt!1539925 () Unit!67766)

(assert (=> b!4322060 (= lt!1539925 (lemmaKeyInListMapIsInArray!17 lt!1539941 (array!17235 ((as const (Array (_ BitVec 32) List!48502)) lt!1539927) (bvadd lt!1539530 #b00000000000000000000000000000001)) lt!1539530 lt!1539929 lt!1539927 lt!1539927 (_1!26879 lt!1539924) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun c!735159 () Bool)

(assert (=> b!4322060 (= c!735159 (and (not (= (_1!26879 lt!1539924) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!26879 lt!1539924) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!2688976 () Bool)

(assert (=> b!4322060 e!2688976))

(declare-fun lt!1539947 () Unit!67766)

(assert (=> b!4322060 (= lt!1539947 lt!1539925)))

(declare-fun lt!1539935 () (_ BitVec 32))

(assert (=> b!4322060 (= lt!1539935 (arrayScanForKey!0 (array!17233 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1539530 #b00000000000000000000000000000001)) (_1!26879 lt!1539924) #b00000000000000000000000000000000))))

(assert (=> b!4322060 false))

(declare-fun b!4322061 () Bool)

(assert (=> b!4322061 (= e!2688976 (arrayContainsKey!0 lt!1539941 (_1!26879 lt!1539924) #b00000000000000000000000000000000))))

(declare-fun b!4322062 () Bool)

(assert (=> b!4322062 (= e!2688976 (ite (= (_1!26879 lt!1539924) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!1539929 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!1539929 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4322063 () Bool)

(declare-fun res!1771251 () Bool)

(assert (=> b!4322063 (=> (not res!1771251) (not e!2688974))))

(assert (=> b!4322063 (= res!1771251 (= (mask!13375 lt!1539939) lt!1539530))))

(assert (= (and d!1270761 c!735160) b!4322060))

(assert (= (and d!1270761 (not c!735160)) b!4322058))

(assert (= (and b!4322060 c!735159) b!4322061))

(assert (= (and b!4322060 (not c!735159)) b!4322062))

(assert (= (and d!1270761 res!1771252) b!4322063))

(assert (= (and b!4322063 res!1771251) b!4322059))

(declare-fun b_lambda!127295 () Bool)

(assert (=> (not b_lambda!127295) (not d!1270761)))

(declare-fun t!355389 () Bool)

(declare-fun tb!257369 () Bool)

(assert (=> (and b!4321235 (= (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) t!355389) tb!257369))

(assert (=> d!1270761 t!355389))

(declare-fun result!314886 () Bool)

(declare-fun b_and!340527 () Bool)

(assert (= b_and!340525 (and (=> t!355389 result!314886) b_and!340527)))

(declare-fun m!4916095 () Bool)

(assert (=> d!1270761 m!4916095))

(declare-fun m!4916097 () Bool)

(assert (=> d!1270761 m!4916097))

(declare-fun m!4916099 () Bool)

(assert (=> d!1270761 m!4916099))

(declare-fun m!4916101 () Bool)

(assert (=> d!1270761 m!4916101))

(declare-fun m!4916103 () Bool)

(assert (=> d!1270761 m!4916103))

(declare-fun m!4916105 () Bool)

(assert (=> d!1270761 m!4916105))

(declare-fun m!4916107 () Bool)

(assert (=> d!1270761 m!4916107))

(declare-fun m!4916109 () Bool)

(assert (=> d!1270761 m!4916109))

(declare-fun m!4916111 () Bool)

(assert (=> d!1270761 m!4916111))

(declare-fun m!4916113 () Bool)

(assert (=> d!1270761 m!4916113))

(declare-fun m!4916115 () Bool)

(assert (=> b!4322059 m!4916115))

(assert (=> b!4322060 m!4916113))

(declare-fun m!4916117 () Bool)

(assert (=> b!4322060 m!4916117))

(declare-fun m!4916119 () Bool)

(assert (=> b!4322060 m!4916119))

(declare-fun m!4916121 () Bool)

(assert (=> b!4322060 m!4916121))

(declare-fun m!4916123 () Bool)

(assert (=> b!4322061 m!4916123))

(assert (=> bm!299593 d!1270761))

(declare-fun d!1270763 () Bool)

(declare-fun c!735163 () Bool)

(assert (=> d!1270763 (= c!735163 ((_ is Nil!48379) (toList!2554 lt!1539362)))))

(declare-fun e!2688979 () (InoxSet tuple2!47186))

(assert (=> d!1270763 (= (content!7570 (toList!2554 lt!1539362)) e!2688979)))

(declare-fun b!4322068 () Bool)

(assert (=> b!4322068 (= e!2688979 ((as const (Array tuple2!47186 Bool)) false))))

(declare-fun b!4322069 () Bool)

(assert (=> b!4322069 (= e!2688979 ((_ map or) (store ((as const (Array tuple2!47186 Bool)) false) (h!53839 (toList!2554 lt!1539362)) true) (content!7570 (t!355382 (toList!2554 lt!1539362)))))))

(assert (= (and d!1270763 c!735163) b!4322068))

(assert (= (and d!1270763 (not c!735163)) b!4322069))

(declare-fun m!4916125 () Bool)

(assert (=> b!4322069 m!4916125))

(declare-fun m!4916127 () Bool)

(assert (=> b!4322069 m!4916127))

(assert (=> d!1270643 d!1270763))

(assert (=> b!4321796 d!1270747))

(declare-fun d!1270765 () Bool)

(declare-fun e!2688982 () Bool)

(assert (=> d!1270765 e!2688982))

(declare-fun res!1771255 () Bool)

(assert (=> d!1270765 (=> res!1771255 e!2688982)))

(declare-fun lt!1539953 () SeekEntryResult!21)

(assert (=> d!1270765 (= res!1771255 (not ((_ is Found!21) lt!1539953)))))

(assert (=> d!1270765 (= lt!1539953 (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1539952 () Unit!67766)

(declare-fun choose!26407 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64)) Unit!67766)

(assert (=> d!1270765 (= lt!1539952 (choose!26407 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(assert (=> d!1270765 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270765 (= (lemmaSeekEntryGivesInRangeIndex!11 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310) lt!1539952)))

(declare-fun b!4322072 () Bool)

(assert (=> b!4322072 (= e!2688982 (inRange!0 (index!1464 lt!1539953) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (= (and d!1270765 (not res!1771255)) b!4322072))

(assert (=> d!1270765 m!4915779))

(declare-fun m!4916129 () Bool)

(assert (=> d!1270765 m!4916129))

(assert (=> d!1270765 m!4916013))

(declare-fun m!4916131 () Bool)

(assert (=> b!4322072 m!4916131))

(assert (=> b!4321796 d!1270765))

(declare-fun d!1270767 () Bool)

(declare-fun lt!1539956 () Bool)

(declare-fun content!7572 (List!48502) (InoxSet tuple2!47184))

(assert (=> d!1270767 (= lt!1539956 (select (content!7572 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (get!15676 lt!1539601)))))

(declare-fun e!2688987 () Bool)

(assert (=> d!1270767 (= lt!1539956 e!2688987)))

(declare-fun res!1771261 () Bool)

(assert (=> d!1270767 (=> (not res!1771261) (not e!2688987))))

(assert (=> d!1270767 (= res!1771261 ((_ is Cons!48378) (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))

(assert (=> d!1270767 (= (contains!10430 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) (get!15676 lt!1539601)) lt!1539956)))

(declare-fun b!4322077 () Bool)

(declare-fun e!2688988 () Bool)

(assert (=> b!4322077 (= e!2688987 e!2688988)))

(declare-fun res!1771260 () Bool)

(assert (=> b!4322077 (=> res!1771260 e!2688988)))

(assert (=> b!4322077 (= res!1771260 (= (h!53838 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (get!15676 lt!1539601)))))

(declare-fun b!4322078 () Bool)

(assert (=> b!4322078 (= e!2688988 (contains!10430 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (get!15676 lt!1539601)))))

(assert (= (and d!1270767 res!1771261) b!4322077))

(assert (= (and b!4322077 (not res!1771260)) b!4322078))

(assert (=> d!1270767 m!4915335))

(declare-fun m!4916133 () Bool)

(assert (=> d!1270767 m!4916133))

(assert (=> d!1270767 m!4915615))

(declare-fun m!4916135 () Bool)

(assert (=> d!1270767 m!4916135))

(assert (=> b!4322078 m!4915615))

(declare-fun m!4916137 () Bool)

(assert (=> b!4322078 m!4916137))

(assert (=> b!4321672 d!1270767))

(declare-fun d!1270769 () Bool)

(assert (=> d!1270769 (= (get!15676 lt!1539601) (v!42759 lt!1539601))))

(assert (=> b!4321672 d!1270769))

(declare-fun d!1270771 () Bool)

(declare-fun e!2688989 () Bool)

(assert (=> d!1270771 e!2688989))

(declare-fun res!1771262 () Bool)

(assert (=> d!1270771 (=> res!1771262 e!2688989)))

(declare-fun lt!1539959 () Bool)

(assert (=> d!1270771 (= res!1771262 (not lt!1539959))))

(declare-fun lt!1539960 () Bool)

(assert (=> d!1270771 (= lt!1539959 lt!1539960)))

(declare-fun lt!1539957 () Unit!67766)

(declare-fun e!2688990 () Unit!67766)

(assert (=> d!1270771 (= lt!1539957 e!2688990)))

(declare-fun c!735164 () Bool)

(assert (=> d!1270771 (= c!735164 lt!1539960)))

(assert (=> d!1270771 (= lt!1539960 (containsKey!401 (toList!2554 lt!1539421) (hash!1175 (hashF!6919 thiss!42308) key!2048)))))

(assert (=> d!1270771 (= (contains!10426 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) lt!1539959)))

(declare-fun b!4322079 () Bool)

(declare-fun lt!1539958 () Unit!67766)

(assert (=> b!4322079 (= e!2688990 lt!1539958)))

(assert (=> b!4322079 (= lt!1539958 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 lt!1539421) (hash!1175 (hashF!6919 thiss!42308) key!2048)))))

(assert (=> b!4322079 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539421) (hash!1175 (hashF!6919 thiss!42308) key!2048)))))

(declare-fun b!4322080 () Bool)

(declare-fun Unit!67797 () Unit!67766)

(assert (=> b!4322080 (= e!2688990 Unit!67797)))

(declare-fun b!4322081 () Bool)

(assert (=> b!4322081 (= e!2688989 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539421) (hash!1175 (hashF!6919 thiss!42308) key!2048))))))

(assert (= (and d!1270771 c!735164) b!4322079))

(assert (= (and d!1270771 (not c!735164)) b!4322080))

(assert (= (and d!1270771 (not res!1771262)) b!4322081))

(assert (=> d!1270771 m!4915249))

(declare-fun m!4916139 () Bool)

(assert (=> d!1270771 m!4916139))

(assert (=> b!4322079 m!4915249))

(declare-fun m!4916141 () Bool)

(assert (=> b!4322079 m!4916141))

(assert (=> b!4322079 m!4915249))

(declare-fun m!4916143 () Bool)

(assert (=> b!4322079 m!4916143))

(assert (=> b!4322079 m!4916143))

(declare-fun m!4916145 () Bool)

(assert (=> b!4322079 m!4916145))

(assert (=> b!4322081 m!4915249))

(assert (=> b!4322081 m!4916143))

(assert (=> b!4322081 m!4916143))

(assert (=> b!4322081 m!4916145))

(assert (=> d!1270661 d!1270771))

(assert (=> d!1270661 d!1270511))

(declare-fun d!1270773 () Bool)

(declare-fun e!2688993 () Bool)

(assert (=> d!1270773 e!2688993))

(declare-fun res!1771265 () Bool)

(assert (=> d!1270773 (=> (not res!1771265) (not e!2688993))))

(assert (=> d!1270773 (= res!1771265 (contains!10426 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)))))

(assert (=> d!1270773 true))

(declare-fun _$5!163 () Unit!67766)

(assert (=> d!1270773 (= (choose!26402 lt!1539421 key!2048 (hashF!6919 thiss!42308)) _$5!163)))

(declare-fun b!4322084 () Bool)

(assert (=> b!4322084 (= e!2688993 (isDefined!7601 (getPair!162 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1270773 res!1771265) b!4322084))

(assert (=> d!1270773 m!4915249))

(assert (=> d!1270773 m!4915249))

(assert (=> d!1270773 m!4915711))

(assert (=> b!4322084 m!4915249))

(assert (=> b!4322084 m!4915249))

(assert (=> b!4322084 m!4915717))

(assert (=> b!4322084 m!4915717))

(assert (=> b!4322084 m!4915719))

(assert (=> b!4322084 m!4915719))

(assert (=> b!4322084 m!4915721))

(assert (=> d!1270661 d!1270773))

(declare-fun d!1270775 () Bool)

(declare-fun res!1771266 () Bool)

(declare-fun e!2688994 () Bool)

(assert (=> d!1270775 (=> res!1771266 e!2688994)))

(assert (=> d!1270775 (= res!1771266 ((_ is Nil!48379) (toList!2554 lt!1539421)))))

(assert (=> d!1270775 (= (forall!8811 (toList!2554 lt!1539421) lambda!133872) e!2688994)))

(declare-fun b!4322085 () Bool)

(declare-fun e!2688995 () Bool)

(assert (=> b!4322085 (= e!2688994 e!2688995)))

(declare-fun res!1771267 () Bool)

(assert (=> b!4322085 (=> (not res!1771267) (not e!2688995))))

(assert (=> b!4322085 (= res!1771267 (dynLambda!20507 lambda!133872 (h!53839 (toList!2554 lt!1539421))))))

(declare-fun b!4322086 () Bool)

(assert (=> b!4322086 (= e!2688995 (forall!8811 (t!355382 (toList!2554 lt!1539421)) lambda!133872))))

(assert (= (and d!1270775 (not res!1771266)) b!4322085))

(assert (= (and b!4322085 res!1771267) b!4322086))

(declare-fun b_lambda!127297 () Bool)

(assert (=> (not b_lambda!127297) (not b!4322085)))

(declare-fun m!4916147 () Bool)

(assert (=> b!4322085 m!4916147))

(declare-fun m!4916149 () Bool)

(assert (=> b!4322086 m!4916149))

(assert (=> d!1270661 d!1270775))

(declare-fun e!2689017 () Bool)

(declare-fun lt!1540035 () tuple2!47190)

(declare-fun b!4322121 () Bool)

(assert (=> b!4322121 (= e!2689017 (= (map!10407 (_2!26881 lt!1540035)) (+!330 (map!10407 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4322122 () Bool)

(declare-fun res!1771286 () Bool)

(declare-fun call!299672 () Bool)

(assert (=> b!4322122 (= res!1771286 call!299672)))

(declare-fun e!2689013 () Bool)

(assert (=> b!4322122 (=> (not res!1771286) (not e!2689013))))

(declare-fun b!4322123 () Bool)

(declare-fun e!2689019 () Bool)

(declare-fun call!299675 () Bool)

(assert (=> b!4322123 (= e!2689019 (not call!299675))))

(declare-fun b!4322124 () Bool)

(declare-fun res!1771291 () Bool)

(declare-fun lt!1540030 () SeekEntryResult!21)

(assert (=> b!4322124 (= res!1771291 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1466 lt!1540030)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2689014 () Bool)

(assert (=> b!4322124 (=> (not res!1771291) (not e!2689014))))

(declare-fun bm!299667 () Bool)

(assert (=> bm!299667 (= call!299675 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun b!4322125 () Bool)

(declare-fun e!2689012 () Unit!67766)

(declare-fun Unit!67798 () Unit!67766)

(assert (=> b!4322125 (= e!2689012 Unit!67798)))

(declare-fun lt!1540032 () Unit!67766)

(assert (=> b!4322125 (= lt!1540032 (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540047 () SeekEntryResult!21)

(declare-fun call!299673 () SeekEntryResult!21)

(assert (=> b!4322125 (= lt!1540047 call!299673)))

(declare-fun res!1771293 () Bool)

(assert (=> b!4322125 (= res!1771293 ((_ is Found!21) lt!1540047))))

(assert (=> b!4322125 (=> (not res!1771293) (not e!2689013))))

(assert (=> b!4322125 e!2689013))

(declare-fun lt!1540034 () Unit!67766)

(assert (=> b!4322125 (= lt!1540034 lt!1540032)))

(assert (=> b!4322125 false))

(declare-fun b!4322126 () Bool)

(declare-fun e!2689015 () Unit!67766)

(declare-fun Unit!67799 () Unit!67766)

(assert (=> b!4322126 (= e!2689015 Unit!67799)))

(declare-fun c!735173 () Bool)

(declare-fun bm!299668 () Bool)

(declare-fun c!735174 () Bool)

(assert (=> bm!299668 (= call!299672 (inRange!0 (ite c!735174 (index!1464 lt!1540047) (ite c!735173 (index!1465 lt!1540030) (index!1466 lt!1540030))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322127 () Bool)

(declare-fun res!1771292 () Bool)

(assert (=> b!4322127 (=> (not res!1771292) (not e!2689017))))

(assert (=> b!4322127 (= res!1771292 (contains!10426 (map!10407 (_2!26881 lt!1540035)) lt!1539310))))

(declare-fun b!4322128 () Bool)

(declare-fun lt!1540022 () Unit!67766)

(assert (=> b!4322128 (= e!2689012 lt!1540022)))

(assert (=> b!4322128 (= lt!1540022 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> b!4322128 (= lt!1540030 call!299673)))

(assert (=> b!4322128 (= c!735173 ((_ is MissingZero!21) lt!1540030))))

(declare-fun e!2689018 () Bool)

(assert (=> b!4322128 e!2689018))

(declare-fun b!4322129 () Bool)

(declare-fun res!1771287 () Bool)

(assert (=> b!4322129 (=> (not res!1771287) (not e!2689017))))

(assert (=> b!4322129 (= res!1771287 (valid!3765 (_2!26881 lt!1540035)))))

(declare-fun bm!299669 () Bool)

(declare-fun call!299674 () Bool)

(assert (=> bm!299669 (= call!299674 call!299672)))

(declare-fun b!4322130 () Bool)

(declare-fun e!2689016 () Bool)

(assert (=> b!4322130 (= e!2689016 ((_ is Undefined!21) lt!1540030))))

(declare-fun b!4322131 () Bool)

(assert (=> b!4322131 (= e!2689016 e!2689014)))

(declare-fun res!1771294 () Bool)

(assert (=> b!4322131 (= res!1771294 call!299674)))

(assert (=> b!4322131 (=> (not res!1771294) (not e!2689014))))

(declare-fun b!4322132 () Bool)

(declare-fun c!735176 () Bool)

(assert (=> b!4322132 (= c!735176 ((_ is MissingVacant!21) lt!1540030))))

(assert (=> b!4322132 (= e!2689018 e!2689016)))

(declare-fun b!4322133 () Bool)

(declare-fun res!1771288 () Bool)

(assert (=> b!4322133 (=> (not res!1771288) (not e!2689019))))

(assert (=> b!4322133 (= res!1771288 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1465 lt!1540030)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322134 () Bool)

(declare-fun Unit!67800 () Unit!67766)

(assert (=> b!4322134 (= e!2689015 Unit!67800)))

(declare-fun lt!1540050 () Unit!67766)

(declare-fun lemmaArrayContainsKeyThenInListMap!2 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) (_ BitVec 32) Int) Unit!67766)

(assert (=> b!4322134 (= lt!1540050 (lemmaArrayContainsKeyThenInListMap!2 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> b!4322134 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539310)))

(declare-fun lt!1540038 () Unit!67766)

(assert (=> b!4322134 (= lt!1540038 lt!1540050)))

(assert (=> b!4322134 false))

(declare-fun d!1270777 () Bool)

(assert (=> d!1270777 e!2689017))

(declare-fun res!1771289 () Bool)

(assert (=> d!1270777 (=> (not res!1771289) (not e!2689017))))

(assert (=> d!1270777 (= res!1771289 (_1!26881 lt!1540035))))

(assert (=> d!1270777 (= lt!1540035 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (bvadd (_size!9550 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001) (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (_vacant!4815 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun lt!1540025 () Unit!67766)

(declare-fun lt!1540037 () Unit!67766)

(assert (=> d!1270777 (= lt!1540025 lt!1540037)))

(declare-fun lt!1540044 () array!17234)

(declare-fun lt!1540027 () array!17232)

(assert (=> d!1270777 (contains!10426 (getCurrentListMap!24 lt!1540027 lt!1540044 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (select (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497))))))

(assert (=> d!1270777 (= lt!1540037 (lemmaValidKeyInArrayIsInListMap!14 lt!1540027 lt!1540044 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1270777 (= lt!1540044 (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (=> d!1270777 (= lt!1540027 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun lt!1540031 () Unit!67766)

(declare-fun lt!1540024 () Unit!67766)

(assert (=> d!1270777 (= lt!1540031 lt!1540024)))

(declare-fun lt!1540023 () array!17232)

(assert (=> d!1270777 (= (arrayCountValidKeys!0 lt!1540023 (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) (bvadd (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!17232 (_ BitVec 32)) Unit!67766)

(assert (=> d!1270777 (= lt!1540024 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!1540023 (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497))))))

(assert (=> d!1270777 (= lt!1540023 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun lt!1540046 () Unit!67766)

(declare-fun lt!1540028 () Unit!67766)

(assert (=> d!1270777 (= lt!1540046 lt!1540028)))

(declare-fun lt!1540048 () array!17232)

(assert (=> d!1270777 (arrayContainsKey!0 lt!1540048 lt!1539310 #b00000000000000000000000000000000)))

(assert (=> d!1270777 (= lt!1540028 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!1540048 lt!1539310 (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497))))))

(assert (=> d!1270777 (= lt!1540048 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun lt!1540045 () Unit!67766)

(declare-fun lt!1540043 () Unit!67766)

(assert (=> d!1270777 (= lt!1540045 lt!1540043)))

(assert (=> d!1270777 (= (+!330 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (tuple2!47187 lt!1539310 lt!1539317)) (getCurrentListMap!24 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (array!17235 (store (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539317) (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!2 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 32) (_ BitVec 64) List!48502 Int) Unit!67766)

(assert (=> d!1270777 (= lt!1540043 (lemmaAddValidKeyToArrayThenAddPairToListMap!2 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310 lt!1539317 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540049 () Unit!67766)

(declare-fun lt!1540041 () Unit!67766)

(assert (=> d!1270777 (= lt!1540049 lt!1540041)))

(assert (=> d!1270777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!17232 (_ BitVec 32) (_ BitVec 32)) Unit!67766)

(assert (=> d!1270777 (= lt!1540041 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540021 () Unit!67766)

(declare-fun lt!1540033 () Unit!67766)

(assert (=> d!1270777 (= lt!1540021 lt!1540033)))

(assert (=> d!1270777 (= (arrayCountValidKeys!0 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (bvadd (arrayCountValidKeys!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!17232 (_ BitVec 32) (_ BitVec 64)) Unit!67766)

(assert (=> d!1270777 (= lt!1540033 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310))))

(declare-fun lt!1540026 () Unit!67766)

(declare-fun lt!1540036 () Unit!67766)

(assert (=> d!1270777 (= lt!1540026 lt!1540036)))

(declare-fun lt!1540042 () (_ BitVec 32))

(declare-fun lt!1540039 () List!48505)

(assert (=> d!1270777 (arrayNoDuplicates!0 (array!17233 (store (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1539310) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1540042 lt!1540039)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!17232 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!48505) Unit!67766)

(assert (=> d!1270777 (= lt!1540036 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497)) lt!1540042 lt!1540039))))

(assert (=> d!1270777 (= lt!1540039 Nil!48381)))

(assert (=> d!1270777 (= lt!1540042 #b00000000000000000000000000000000)))

(declare-fun lt!1540029 () Unit!67766)

(assert (=> d!1270777 (= lt!1540029 e!2689015)))

(declare-fun c!735175 () Bool)

(assert (=> d!1270777 (= c!735175 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun lt!1540040 () Unit!67766)

(assert (=> d!1270777 (= lt!1540040 e!2689012)))

(assert (=> d!1270777 (= c!735174 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1539310))))

(assert (=> d!1270777 (valid!3765 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))

(assert (=> d!1270777 (= (updateHelperNewKey!11 (v!42752 (underlying!9735 (_2!26880 lt!1539329))) lt!1539310 lt!1539317 (ite c!734989 (index!1466 lt!1539497) (index!1465 lt!1539497))) lt!1540035)))

(declare-fun bm!299670 () Bool)

(assert (=> bm!299670 (= call!299673 (seekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322135 () Bool)

(declare-fun res!1771290 () Bool)

(assert (=> b!4322135 (=> (not res!1771290) (not e!2689019))))

(assert (=> b!4322135 (= res!1771290 call!299674)))

(assert (=> b!4322135 (= e!2689018 e!2689019)))

(declare-fun b!4322136 () Bool)

(assert (=> b!4322136 (= e!2689014 (not call!299675))))

(declare-fun b!4322137 () Bool)

(assert (=> b!4322137 (= e!2689013 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1540047)) lt!1539310))))

(assert (= (and d!1270777 c!735174) b!4322125))

(assert (= (and d!1270777 (not c!735174)) b!4322128))

(assert (= (and b!4322125 res!1771293) b!4322122))

(assert (= (and b!4322122 res!1771286) b!4322137))

(assert (= (and b!4322128 c!735173) b!4322135))

(assert (= (and b!4322128 (not c!735173)) b!4322132))

(assert (= (and b!4322135 res!1771290) b!4322133))

(assert (= (and b!4322133 res!1771288) b!4322123))

(assert (= (and b!4322132 c!735176) b!4322131))

(assert (= (and b!4322132 (not c!735176)) b!4322130))

(assert (= (and b!4322131 res!1771294) b!4322124))

(assert (= (and b!4322124 res!1771291) b!4322136))

(assert (= (or b!4322123 b!4322136) bm!299667))

(assert (= (or b!4322135 b!4322131) bm!299669))

(assert (= (or b!4322122 bm!299669) bm!299668))

(assert (= (or b!4322125 b!4322128) bm!299670))

(assert (= (and d!1270777 c!735175) b!4322134))

(assert (= (and d!1270777 (not c!735175)) b!4322126))

(assert (= (and d!1270777 res!1771289) b!4322129))

(assert (= (and b!4322129 res!1771287) b!4322127))

(assert (= (and b!4322127 res!1771292) b!4322121))

(declare-fun m!4916151 () Bool)

(assert (=> d!1270777 m!4916151))

(assert (=> d!1270777 m!4915937))

(declare-fun m!4916153 () Bool)

(assert (=> d!1270777 m!4916153))

(declare-fun m!4916155 () Bool)

(assert (=> d!1270777 m!4916155))

(declare-fun m!4916157 () Bool)

(assert (=> d!1270777 m!4916157))

(declare-fun m!4916159 () Bool)

(assert (=> d!1270777 m!4916159))

(assert (=> d!1270777 m!4915423))

(declare-fun m!4916161 () Bool)

(assert (=> d!1270777 m!4916161))

(declare-fun m!4916163 () Bool)

(assert (=> d!1270777 m!4916163))

(declare-fun m!4916165 () Bool)

(assert (=> d!1270777 m!4916165))

(declare-fun m!4916167 () Bool)

(assert (=> d!1270777 m!4916167))

(declare-fun m!4916169 () Bool)

(assert (=> d!1270777 m!4916169))

(assert (=> d!1270777 m!4916155))

(declare-fun m!4916171 () Bool)

(assert (=> d!1270777 m!4916171))

(declare-fun m!4916173 () Bool)

(assert (=> d!1270777 m!4916173))

(declare-fun m!4916175 () Bool)

(assert (=> d!1270777 m!4916175))

(assert (=> d!1270777 m!4915937))

(declare-fun m!4916177 () Bool)

(assert (=> d!1270777 m!4916177))

(declare-fun m!4916179 () Bool)

(assert (=> d!1270777 m!4916179))

(declare-fun m!4916181 () Bool)

(assert (=> d!1270777 m!4916181))

(assert (=> d!1270777 m!4915419))

(declare-fun m!4916183 () Bool)

(assert (=> d!1270777 m!4916183))

(declare-fun m!4916185 () Bool)

(assert (=> d!1270777 m!4916185))

(assert (=> d!1270777 m!4916157))

(declare-fun m!4916187 () Bool)

(assert (=> d!1270777 m!4916187))

(declare-fun m!4916189 () Bool)

(assert (=> d!1270777 m!4916189))

(assert (=> d!1270777 m!4915937))

(assert (=> d!1270777 m!4915939))

(assert (=> bm!299667 m!4915419))

(declare-fun m!4916191 () Bool)

(assert (=> b!4322121 m!4916191))

(assert (=> b!4322121 m!4915451))

(assert (=> b!4322121 m!4915451))

(declare-fun m!4916193 () Bool)

(assert (=> b!4322121 m!4916193))

(assert (=> b!4322127 m!4916191))

(assert (=> b!4322127 m!4916191))

(declare-fun m!4916195 () Bool)

(assert (=> b!4322127 m!4916195))

(assert (=> b!4322125 m!4915395))

(declare-fun m!4916197 () Bool)

(assert (=> b!4322129 m!4916197))

(declare-fun m!4916199 () Bool)

(assert (=> bm!299668 m!4916199))

(declare-fun m!4916201 () Bool)

(assert (=> b!4322133 m!4916201))

(assert (=> bm!299670 m!4915431))

(declare-fun m!4916203 () Bool)

(assert (=> b!4322124 m!4916203))

(assert (=> b!4322128 m!4915441))

(declare-fun m!4916205 () Bool)

(assert (=> b!4322137 m!4916205))

(declare-fun m!4916207 () Bool)

(assert (=> b!4322134 m!4916207))

(assert (=> b!4322134 m!4915937))

(assert (=> b!4322134 m!4915937))

(assert (=> b!4322134 m!4916177))

(assert (=> bm!299577 d!1270777))

(declare-fun d!1270779 () Bool)

(assert (=> d!1270779 (= (isDefined!7601 (getPair!162 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) key!2048)) (not (isEmpty!28119 (getPair!162 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) key!2048))))))

(declare-fun bs!606605 () Bool)

(assert (= bs!606605 d!1270779))

(assert (=> bs!606605 m!4915719))

(declare-fun m!4916209 () Bool)

(assert (=> bs!606605 m!4916209))

(assert (=> b!4321728 d!1270779))

(declare-fun b!4322138 () Bool)

(declare-fun e!2689023 () Option!10301)

(assert (=> b!4322138 (= e!2689023 (getPair!162 (t!355381 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048))) key!2048))))

(declare-fun e!2689020 () Option!10301)

(declare-fun b!4322139 () Bool)

(assert (=> b!4322139 (= e!2689020 (Some!10300 (h!53838 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)))))))

(declare-fun b!4322140 () Bool)

(assert (=> b!4322140 (= e!2689023 None!10300)))

(declare-fun e!2689022 () Bool)

(declare-fun b!4322141 () Bool)

(assert (=> b!4322141 (= e!2689022 (not (containsKey!400 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) key!2048)))))

(declare-fun lt!1540051 () Option!10301)

(declare-fun b!4322143 () Bool)

(declare-fun e!2689021 () Bool)

(assert (=> b!4322143 (= e!2689021 (contains!10430 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) (get!15676 lt!1540051)))))

(declare-fun b!4322144 () Bool)

(declare-fun e!2689024 () Bool)

(assert (=> b!4322144 (= e!2689024 e!2689021)))

(declare-fun res!1771295 () Bool)

(assert (=> b!4322144 (=> (not res!1771295) (not e!2689021))))

(assert (=> b!4322144 (= res!1771295 (isDefined!7601 lt!1540051))))

(declare-fun b!4322145 () Bool)

(assert (=> b!4322145 (= e!2689020 e!2689023)))

(declare-fun c!735177 () Bool)

(assert (=> b!4322145 (= c!735177 ((_ is Cons!48378) (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048))))))

(declare-fun b!4322142 () Bool)

(declare-fun res!1771296 () Bool)

(assert (=> b!4322142 (=> (not res!1771296) (not e!2689021))))

(assert (=> b!4322142 (= res!1771296 (= (_1!26878 (get!15676 lt!1540051)) key!2048))))

(declare-fun d!1270781 () Bool)

(assert (=> d!1270781 e!2689024))

(declare-fun res!1771297 () Bool)

(assert (=> d!1270781 (=> res!1771297 e!2689024)))

(assert (=> d!1270781 (= res!1771297 e!2689022)))

(declare-fun res!1771298 () Bool)

(assert (=> d!1270781 (=> (not res!1771298) (not e!2689022))))

(assert (=> d!1270781 (= res!1771298 (isEmpty!28119 lt!1540051))))

(assert (=> d!1270781 (= lt!1540051 e!2689020)))

(declare-fun c!735178 () Bool)

(assert (=> d!1270781 (= c!735178 (and ((_ is Cons!48378) (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048))) (= (_1!26878 (h!53838 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)))) key!2048)))))

(assert (=> d!1270781 (noDuplicateKeys!262 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)))))

(assert (=> d!1270781 (= (getPair!162 (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) key!2048) lt!1540051)))

(assert (= (and d!1270781 c!735178) b!4322139))

(assert (= (and d!1270781 (not c!735178)) b!4322145))

(assert (= (and b!4322145 c!735177) b!4322138))

(assert (= (and b!4322145 (not c!735177)) b!4322140))

(assert (= (and d!1270781 res!1771298) b!4322141))

(assert (= (and d!1270781 (not res!1771297)) b!4322144))

(assert (= (and b!4322144 res!1771295) b!4322142))

(assert (= (and b!4322142 res!1771296) b!4322143))

(declare-fun m!4916211 () Bool)

(assert (=> b!4322138 m!4916211))

(declare-fun m!4916213 () Bool)

(assert (=> b!4322143 m!4916213))

(assert (=> b!4322143 m!4915717))

(assert (=> b!4322143 m!4916213))

(declare-fun m!4916215 () Bool)

(assert (=> b!4322143 m!4916215))

(assert (=> b!4322142 m!4916213))

(declare-fun m!4916217 () Bool)

(assert (=> d!1270781 m!4916217))

(assert (=> d!1270781 m!4915717))

(declare-fun m!4916219 () Bool)

(assert (=> d!1270781 m!4916219))

(assert (=> b!4322141 m!4915717))

(declare-fun m!4916221 () Bool)

(assert (=> b!4322141 m!4916221))

(declare-fun m!4916223 () Bool)

(assert (=> b!4322144 m!4916223))

(assert (=> b!4321728 d!1270781))

(declare-fun d!1270783 () Bool)

(assert (=> d!1270783 (= (apply!11141 lt!1539421 (hash!1175 (hashF!6919 thiss!42308) key!2048)) (get!15675 (getValueByKey!297 (toList!2554 lt!1539421) (hash!1175 (hashF!6919 thiss!42308) key!2048))))))

(declare-fun bs!606606 () Bool)

(assert (= bs!606606 d!1270783))

(assert (=> bs!606606 m!4915249))

(assert (=> bs!606606 m!4916143))

(assert (=> bs!606606 m!4916143))

(declare-fun m!4916225 () Bool)

(assert (=> bs!606606 m!4916225))

(assert (=> b!4321728 d!1270783))

(assert (=> b!4321728 d!1270511))

(declare-fun d!1270785 () Bool)

(declare-fun e!2689025 () Bool)

(assert (=> d!1270785 e!2689025))

(declare-fun res!1771299 () Bool)

(assert (=> d!1270785 (=> (not res!1771299) (not e!2689025))))

(declare-fun lt!1540052 () ListLongMap!1171)

(assert (=> d!1270785 (= res!1771299 (contains!10426 lt!1540052 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lt!1540054 () List!48503)

(assert (=> d!1270785 (= lt!1540052 (ListLongMap!1172 lt!1540054))))

(declare-fun lt!1540055 () Unit!67766)

(declare-fun lt!1540053 () Unit!67766)

(assert (=> d!1270785 (= lt!1540055 lt!1540053)))

(assert (=> d!1270785 (= (getValueByKey!297 lt!1540054 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270785 (= lt!1540053 (lemmaContainsTupThenGetReturnValue!96 lt!1540054 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270785 (= lt!1540054 (insertStrictlySorted!56 (toList!2554 call!299567) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270785 (= (+!330 call!299567 (tuple2!47187 lt!1539310 lt!1539317)) lt!1540052)))

(declare-fun b!4322146 () Bool)

(declare-fun res!1771300 () Bool)

(assert (=> b!4322146 (=> (not res!1771300) (not e!2689025))))

(assert (=> b!4322146 (= res!1771300 (= (getValueByKey!297 (toList!2554 lt!1540052) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4322147 () Bool)

(assert (=> b!4322147 (= e!2689025 (contains!10428 (toList!2554 lt!1540052) (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (= (and d!1270785 res!1771299) b!4322146))

(assert (= (and b!4322146 res!1771300) b!4322147))

(declare-fun m!4916227 () Bool)

(assert (=> d!1270785 m!4916227))

(declare-fun m!4916229 () Bool)

(assert (=> d!1270785 m!4916229))

(declare-fun m!4916231 () Bool)

(assert (=> d!1270785 m!4916231))

(declare-fun m!4916233 () Bool)

(assert (=> d!1270785 m!4916233))

(declare-fun m!4916235 () Bool)

(assert (=> b!4322146 m!4916235))

(declare-fun m!4916237 () Bool)

(assert (=> b!4322147 m!4916237))

(assert (=> b!4321462 d!1270785))

(assert (=> d!1270637 d!1270627))

(declare-fun d!1270787 () Bool)

(assert (=> d!1270787 (contains!10428 lt!1539416 (tuple2!47187 lt!1539410 lt!1539424))))

(assert (=> d!1270787 true))

(declare-fun _$14!708 () Unit!67766)

(assert (=> d!1270787 (= (choose!26401 lt!1539416 lt!1539410 lt!1539424) _$14!708)))

(declare-fun bs!606607 () Bool)

(assert (= bs!606607 d!1270787))

(assert (=> bs!606607 m!4915333))

(assert (=> d!1270637 d!1270787))

(declare-fun d!1270789 () Bool)

(declare-fun res!1771305 () Bool)

(declare-fun e!2689030 () Bool)

(assert (=> d!1270789 (=> res!1771305 e!2689030)))

(assert (=> d!1270789 (= res!1771305 (or ((_ is Nil!48379) lt!1539416) ((_ is Nil!48379) (t!355382 lt!1539416))))))

(assert (=> d!1270789 (= (isStrictlySorted!21 lt!1539416) e!2689030)))

(declare-fun b!4322152 () Bool)

(declare-fun e!2689031 () Bool)

(assert (=> b!4322152 (= e!2689030 e!2689031)))

(declare-fun res!1771306 () Bool)

(assert (=> b!4322152 (=> (not res!1771306) (not e!2689031))))

(assert (=> b!4322152 (= res!1771306 (bvslt (_1!26879 (h!53839 lt!1539416)) (_1!26879 (h!53839 (t!355382 lt!1539416)))))))

(declare-fun b!4322153 () Bool)

(assert (=> b!4322153 (= e!2689031 (isStrictlySorted!21 (t!355382 lt!1539416)))))

(assert (= (and d!1270789 (not res!1771305)) b!4322152))

(assert (= (and b!4322152 res!1771306) b!4322153))

(declare-fun m!4916239 () Bool)

(assert (=> b!4322153 m!4916239))

(assert (=> d!1270637 d!1270789))

(declare-fun d!1270791 () Bool)

(declare-fun res!1771307 () Bool)

(declare-fun e!2689032 () Bool)

(assert (=> d!1270791 (=> res!1771307 e!2689032)))

(assert (=> d!1270791 (= res!1771307 (not ((_ is Cons!48378) (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (=> d!1270791 (= (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) e!2689032)))

(declare-fun b!4322154 () Bool)

(declare-fun e!2689033 () Bool)

(assert (=> b!4322154 (= e!2689032 e!2689033)))

(declare-fun res!1771308 () Bool)

(assert (=> b!4322154 (=> (not res!1771308) (not e!2689033))))

(assert (=> b!4322154 (= res!1771308 (not (containsKey!400 (t!355381 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))))

(declare-fun b!4322155 () Bool)

(assert (=> b!4322155 (= e!2689033 (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (= (and d!1270791 (not res!1771307)) b!4322154))

(assert (= (and b!4322154 res!1771308) b!4322155))

(declare-fun m!4916241 () Bool)

(assert (=> b!4322154 m!4916241))

(declare-fun m!4916243 () Bool)

(assert (=> b!4322155 m!4916243))

(assert (=> bs!606591 d!1270791))

(declare-fun d!1270793 () Bool)

(assert (=> d!1270793 (= (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))) (not (isEmpty!28120 (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(declare-fun bs!606608 () Bool)

(assert (= bs!606608 d!1270793))

(assert (=> bs!606608 m!4915317))

(declare-fun m!4916245 () Bool)

(assert (=> bs!606608 m!4916245))

(assert (=> b!4321572 d!1270793))

(assert (=> b!4321572 d!1270641))

(declare-fun d!1270795 () Bool)

(assert (=> d!1270795 (= (isDefined!7602 (getValueByKey!297 (toList!2554 call!299497) lt!1539310)) (not (isEmpty!28120 (getValueByKey!297 (toList!2554 call!299497) lt!1539310))))))

(declare-fun bs!606609 () Bool)

(assert (= bs!606609 d!1270795))

(assert (=> bs!606609 m!4915545))

(declare-fun m!4916247 () Bool)

(assert (=> bs!606609 m!4916247))

(assert (=> b!4321623 d!1270795))

(declare-fun b!4322156 () Bool)

(declare-fun e!2689034 () Option!10300)

(assert (=> b!4322156 (= e!2689034 (Some!10299 (_2!26879 (h!53839 (toList!2554 call!299497)))))))

(declare-fun b!4322158 () Bool)

(declare-fun e!2689035 () Option!10300)

(assert (=> b!4322158 (= e!2689035 (getValueByKey!297 (t!355382 (toList!2554 call!299497)) lt!1539310))))

(declare-fun d!1270797 () Bool)

(declare-fun c!735179 () Bool)

(assert (=> d!1270797 (= c!735179 (and ((_ is Cons!48379) (toList!2554 call!299497)) (= (_1!26879 (h!53839 (toList!2554 call!299497))) lt!1539310)))))

(assert (=> d!1270797 (= (getValueByKey!297 (toList!2554 call!299497) lt!1539310) e!2689034)))

(declare-fun b!4322159 () Bool)

(assert (=> b!4322159 (= e!2689035 None!10299)))

(declare-fun b!4322157 () Bool)

(assert (=> b!4322157 (= e!2689034 e!2689035)))

(declare-fun c!735180 () Bool)

(assert (=> b!4322157 (= c!735180 (and ((_ is Cons!48379) (toList!2554 call!299497)) (not (= (_1!26879 (h!53839 (toList!2554 call!299497))) lt!1539310))))))

(assert (= (and d!1270797 c!735179) b!4322156))

(assert (= (and d!1270797 (not c!735179)) b!4322157))

(assert (= (and b!4322157 c!735180) b!4322158))

(assert (= (and b!4322157 (not c!735180)) b!4322159))

(declare-fun m!4916249 () Bool)

(assert (=> b!4322158 m!4916249))

(assert (=> b!4321623 d!1270797))

(declare-fun d!1270799 () Bool)

(assert (=> d!1270799 (= (invariantList!601 (toList!2555 lt!1539595)) (noDuplicatedKeys!103 (toList!2555 lt!1539595)))))

(declare-fun bs!606610 () Bool)

(assert (= bs!606610 d!1270799))

(declare-fun m!4916251 () Bool)

(assert (=> bs!606610 m!4916251))

(assert (=> d!1270607 d!1270799))

(declare-fun d!1270801 () Bool)

(declare-fun res!1771309 () Bool)

(declare-fun e!2689036 () Bool)

(assert (=> d!1270801 (=> res!1771309 e!2689036)))

(assert (=> d!1270801 (= res!1771309 ((_ is Nil!48379) (toList!2554 lt!1539420)))))

(assert (=> d!1270801 (= (forall!8811 (toList!2554 lt!1539420) lambda!133862) e!2689036)))

(declare-fun b!4322160 () Bool)

(declare-fun e!2689037 () Bool)

(assert (=> b!4322160 (= e!2689036 e!2689037)))

(declare-fun res!1771310 () Bool)

(assert (=> b!4322160 (=> (not res!1771310) (not e!2689037))))

(assert (=> b!4322160 (= res!1771310 (dynLambda!20507 lambda!133862 (h!53839 (toList!2554 lt!1539420))))))

(declare-fun b!4322161 () Bool)

(assert (=> b!4322161 (= e!2689037 (forall!8811 (t!355382 (toList!2554 lt!1539420)) lambda!133862))))

(assert (= (and d!1270801 (not res!1771309)) b!4322160))

(assert (= (and b!4322160 res!1771310) b!4322161))

(declare-fun b_lambda!127299 () Bool)

(assert (=> (not b_lambda!127299) (not b!4322160)))

(declare-fun m!4916253 () Bool)

(assert (=> b!4322160 m!4916253))

(declare-fun m!4916255 () Bool)

(assert (=> b!4322161 m!4916255))

(assert (=> d!1270607 d!1270801))

(assert (=> d!1270675 d!1270687))

(declare-fun d!1270803 () Bool)

(declare-fun res!1771317 () Bool)

(declare-fun e!2689040 () Bool)

(assert (=> d!1270803 (=> (not res!1771317) (not e!2689040))))

(declare-fun simpleValid!9 (LongMapFixedSize!9506) Bool)

(assert (=> d!1270803 (= res!1771317 (simpleValid!9 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270803 (= (valid!3765 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) e!2689040)))

(declare-fun b!4322168 () Bool)

(declare-fun res!1771318 () Bool)

(assert (=> b!4322168 (=> (not res!1771318) (not e!2689040))))

(assert (=> b!4322168 (= res!1771318 (= (arrayCountValidKeys!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322169 () Bool)

(declare-fun res!1771319 () Bool)

(assert (=> b!4322169 (=> (not res!1771319) (not e!2689040))))

(assert (=> b!4322169 (= res!1771319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322170 () Bool)

(assert (=> b!4322170 (= e!2689040 (arrayNoDuplicates!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 Nil!48381))))

(assert (= (and d!1270803 res!1771317) b!4322168))

(assert (= (and b!4322168 res!1771318) b!4322169))

(assert (= (and b!4322169 res!1771319) b!4322170))

(declare-fun m!4916257 () Bool)

(assert (=> d!1270803 m!4916257))

(declare-fun m!4916259 () Bool)

(assert (=> b!4322168 m!4916259))

(declare-fun m!4916261 () Bool)

(assert (=> b!4322169 m!4916261))

(declare-fun m!4916263 () Bool)

(assert (=> b!4322170 m!4916263))

(assert (=> d!1270675 d!1270803))

(declare-fun d!1270805 () Bool)

(declare-fun res!1771320 () Bool)

(declare-fun e!2689041 () Bool)

(assert (=> d!1270805 (=> res!1771320 e!2689041)))

(assert (=> d!1270805 (= res!1771320 (and ((_ is Cons!48379) lt!1539364) (= (_1!26879 (h!53839 lt!1539364)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270805 (= (containsKey!401 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2689041)))

(declare-fun b!4322171 () Bool)

(declare-fun e!2689042 () Bool)

(assert (=> b!4322171 (= e!2689041 e!2689042)))

(declare-fun res!1771321 () Bool)

(assert (=> b!4322171 (=> (not res!1771321) (not e!2689042))))

(assert (=> b!4322171 (= res!1771321 (and (or (not ((_ is Cons!48379) lt!1539364)) (bvsle (_1!26879 (h!53839 lt!1539364)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))) ((_ is Cons!48379) lt!1539364) (bvslt (_1!26879 (h!53839 lt!1539364)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4322172 () Bool)

(assert (=> b!4322172 (= e!2689042 (containsKey!401 (t!355382 lt!1539364) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (= (and d!1270805 (not res!1771320)) b!4322171))

(assert (= (and b!4322171 res!1771321) b!4322172))

(declare-fun m!4916265 () Bool)

(assert (=> b!4322172 m!4916265))

(assert (=> b!4321581 d!1270805))

(declare-fun bs!606611 () Bool)

(declare-fun b!4322173 () Bool)

(assert (= bs!606611 (and b!4322173 b!4321960)))

(declare-fun lambda!133885 () Int)

(assert (=> bs!606611 (= (= (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133885 lambda!133881))))

(declare-fun bs!606612 () Bool)

(assert (= bs!606612 (and b!4322173 b!4321966)))

(assert (=> bs!606612 (= (= (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133885 lambda!133882))))

(declare-fun bs!606613 () Bool)

(assert (= bs!606613 (and b!4322173 b!4321961)))

(assert (=> bs!606613 (= (= (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133885 lambda!133883))))

(assert (=> b!4322173 true))

(declare-fun bs!606614 () Bool)

(declare-fun b!4322179 () Bool)

(assert (= bs!606614 (and b!4322179 b!4321960)))

(declare-fun lambda!133886 () Int)

(assert (=> bs!606614 (= (= (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133886 lambda!133881))))

(declare-fun bs!606615 () Bool)

(assert (= bs!606615 (and b!4322179 b!4321966)))

(assert (=> bs!606615 (= (= (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133886 lambda!133882))))

(declare-fun bs!606616 () Bool)

(assert (= bs!606616 (and b!4322179 b!4321961)))

(assert (=> bs!606616 (= (= (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133886 lambda!133883))))

(declare-fun bs!606617 () Bool)

(assert (= bs!606617 (and b!4322179 b!4322173)))

(assert (=> bs!606617 (= (= (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133886 lambda!133885))))

(assert (=> b!4322179 true))

(declare-fun bs!606618 () Bool)

(declare-fun b!4322174 () Bool)

(assert (= bs!606618 (and b!4322174 b!4322173)))

(declare-fun lambda!133887 () Int)

(assert (=> bs!606618 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133887 lambda!133885))))

(declare-fun bs!606619 () Bool)

(assert (= bs!606619 (and b!4322174 b!4322179)))

(assert (=> bs!606619 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133887 lambda!133886))))

(declare-fun bs!606620 () Bool)

(assert (= bs!606620 (and b!4322174 b!4321960)))

(assert (=> bs!606620 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133887 lambda!133881))))

(declare-fun bs!606621 () Bool)

(assert (= bs!606621 (and b!4322174 b!4321961)))

(assert (=> bs!606621 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133887 lambda!133883))))

(declare-fun bs!606622 () Bool)

(assert (= bs!606622 (and b!4322174 b!4321966)))

(assert (=> bs!606622 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133887 lambda!133882))))

(assert (=> b!4322174 true))

(declare-fun bs!606623 () Bool)

(declare-fun b!4322175 () Bool)

(assert (= bs!606623 (and b!4322175 b!4321962)))

(declare-fun lambda!133888 () Int)

(assert (=> bs!606623 (= lambda!133888 lambda!133884)))

(assert (=> b!4322173 false))

(declare-fun lt!1540060 () Unit!67766)

(assert (=> b!4322173 (= lt!1540060 (forallContained!1533 (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) lambda!133885 (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))))

(declare-fun e!2689044 () Unit!67766)

(declare-fun Unit!67801 () Unit!67766)

(assert (=> b!4322173 (= e!2689044 Unit!67801)))

(declare-fun res!1771323 () Bool)

(declare-fun e!2689043 () Bool)

(assert (=> b!4322174 (=> (not res!1771323) (not e!2689043))))

(declare-fun lt!1540056 () List!48504)

(assert (=> b!4322174 (= res!1771323 (forall!8813 lt!1540056 lambda!133887))))

(assert (=> b!4322175 (= e!2689043 (= (content!7571 lt!1540056) (content!7571 (map!10408 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) lambda!133888))))))

(declare-fun d!1270807 () Bool)

(assert (=> d!1270807 e!2689043))

(declare-fun res!1771322 () Bool)

(assert (=> d!1270807 (=> (not res!1771322) (not e!2689043))))

(assert (=> d!1270807 (= res!1771322 (noDuplicate!587 lt!1540056))))

(declare-fun e!2689046 () List!48504)

(assert (=> d!1270807 (= lt!1540056 e!2689046)))

(declare-fun c!735181 () Bool)

(assert (=> d!1270807 (= c!735181 ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))

(assert (=> d!1270807 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))

(assert (=> d!1270807 (= (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) lt!1540056)))

(declare-fun b!4322176 () Bool)

(declare-fun e!2689045 () Unit!67766)

(declare-fun Unit!67802 () Unit!67766)

(assert (=> b!4322176 (= e!2689045 Unit!67802)))

(declare-fun b!4322177 () Bool)

(assert (=> b!4322177 false))

(declare-fun Unit!67803 () Unit!67766)

(assert (=> b!4322177 (= e!2689045 Unit!67803)))

(declare-fun b!4322178 () Bool)

(assert (=> b!4322178 (= e!2689046 Nil!48380)))

(assert (=> b!4322179 (= e!2689046 (Cons!48380 (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))))

(declare-fun c!735182 () Bool)

(assert (=> b!4322179 (= c!735182 (containsKey!402 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))))

(declare-fun lt!1540061 () Unit!67766)

(assert (=> b!4322179 (= lt!1540061 e!2689045)))

(declare-fun c!735183 () Bool)

(assert (=> b!4322179 (= c!735183 (contains!10431 (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))))

(declare-fun lt!1540059 () Unit!67766)

(assert (=> b!4322179 (= lt!1540059 e!2689044)))

(declare-fun lt!1540057 () List!48504)

(assert (=> b!4322179 (= lt!1540057 (getKeysList!56 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))))

(declare-fun lt!1540058 () Unit!67766)

(assert (=> b!4322179 (= lt!1540058 (lemmaForallContainsAddHeadPreserves!9 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) lt!1540057 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))))

(assert (=> b!4322179 (forall!8813 lt!1540057 lambda!133886)))

(declare-fun lt!1540062 () Unit!67766)

(assert (=> b!4322179 (= lt!1540062 lt!1540058)))

(declare-fun b!4322180 () Bool)

(declare-fun Unit!67804 () Unit!67766)

(assert (=> b!4322180 (= e!2689044 Unit!67804)))

(declare-fun b!4322181 () Bool)

(declare-fun res!1771324 () Bool)

(assert (=> b!4322181 (=> (not res!1771324) (not e!2689043))))

(assert (=> b!4322181 (= res!1771324 (= (length!30 lt!1540056) (length!31 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))))

(assert (= (and d!1270807 c!735181) b!4322179))

(assert (= (and d!1270807 (not c!735181)) b!4322178))

(assert (= (and b!4322179 c!735182) b!4322177))

(assert (= (and b!4322179 (not c!735182)) b!4322176))

(assert (= (and b!4322179 c!735183) b!4322173))

(assert (= (and b!4322179 (not c!735183)) b!4322180))

(assert (= (and d!1270807 res!1771322) b!4322181))

(assert (= (and b!4322181 res!1771324) b!4322174))

(assert (= (and b!4322174 res!1771323) b!4322175))

(declare-fun m!4916267 () Bool)

(assert (=> d!1270807 m!4916267))

(declare-fun m!4916269 () Bool)

(assert (=> d!1270807 m!4916269))

(declare-fun m!4916271 () Bool)

(assert (=> b!4322175 m!4916271))

(declare-fun m!4916273 () Bool)

(assert (=> b!4322175 m!4916273))

(assert (=> b!4322175 m!4916273))

(declare-fun m!4916275 () Bool)

(assert (=> b!4322175 m!4916275))

(declare-fun m!4916277 () Bool)

(assert (=> b!4322173 m!4916277))

(assert (=> b!4322173 m!4916277))

(declare-fun m!4916279 () Bool)

(assert (=> b!4322173 m!4916279))

(declare-fun m!4916281 () Bool)

(assert (=> b!4322179 m!4916281))

(assert (=> b!4322179 m!4916277))

(declare-fun m!4916283 () Bool)

(assert (=> b!4322179 m!4916283))

(assert (=> b!4322179 m!4916277))

(declare-fun m!4916285 () Bool)

(assert (=> b!4322179 m!4916285))

(declare-fun m!4916287 () Bool)

(assert (=> b!4322179 m!4916287))

(declare-fun m!4916289 () Bool)

(assert (=> b!4322181 m!4916289))

(declare-fun m!4916291 () Bool)

(assert (=> b!4322181 m!4916291))

(declare-fun m!4916293 () Bool)

(assert (=> b!4322174 m!4916293))

(assert (=> b!4321651 d!1270807))

(declare-fun d!1270809 () Bool)

(declare-fun res!1771325 () Bool)

(declare-fun e!2689047 () Bool)

(assert (=> d!1270809 (=> res!1771325 e!2689047)))

(assert (=> d!1270809 (= res!1771325 (not ((_ is Cons!48378) (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))))

(assert (=> d!1270809 (= (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311))))) e!2689047)))

(declare-fun b!4322182 () Bool)

(declare-fun e!2689048 () Bool)

(assert (=> b!4322182 (= e!2689047 e!2689048)))

(declare-fun res!1771326 () Bool)

(assert (=> b!4322182 (=> (not res!1771326) (not e!2689048))))

(assert (=> b!4322182 (= res!1771326 (not (containsKey!400 (t!355381 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))))))

(declare-fun b!4322183 () Bool)

(assert (=> b!4322183 (= e!2689048 (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))))

(assert (= (and d!1270809 (not res!1771325)) b!4322182))

(assert (= (and b!4322182 res!1771326) b!4322183))

(declare-fun m!4916295 () Bool)

(assert (=> b!4322182 m!4916295))

(declare-fun m!4916297 () Bool)

(assert (=> b!4322183 m!4916297))

(assert (=> bs!606586 d!1270809))

(declare-fun b!4322184 () Bool)

(declare-fun e!2689049 () Option!10300)

(assert (=> b!4322184 (= e!2689049 (Some!10299 (_2!26879 (h!53839 lt!1539416))))))

(declare-fun b!4322186 () Bool)

(declare-fun e!2689050 () Option!10300)

(assert (=> b!4322186 (= e!2689050 (getValueByKey!297 (t!355382 lt!1539416) lt!1539410))))

(declare-fun d!1270811 () Bool)

(declare-fun c!735184 () Bool)

(assert (=> d!1270811 (= c!735184 (and ((_ is Cons!48379) lt!1539416) (= (_1!26879 (h!53839 lt!1539416)) lt!1539410)))))

(assert (=> d!1270811 (= (getValueByKey!297 lt!1539416 lt!1539410) e!2689049)))

(declare-fun b!4322187 () Bool)

(assert (=> b!4322187 (= e!2689050 None!10299)))

(declare-fun b!4322185 () Bool)

(assert (=> b!4322185 (= e!2689049 e!2689050)))

(declare-fun c!735185 () Bool)

(assert (=> b!4322185 (= c!735185 (and ((_ is Cons!48379) lt!1539416) (not (= (_1!26879 (h!53839 lt!1539416)) lt!1539410))))))

(assert (= (and d!1270811 c!735184) b!4322184))

(assert (= (and d!1270811 (not c!735184)) b!4322185))

(assert (= (and b!4322185 c!735185) b!4322186))

(assert (= (and b!4322185 (not c!735185)) b!4322187))

(declare-fun m!4916299 () Bool)

(assert (=> b!4322186 m!4916299))

(assert (=> b!4321704 d!1270811))

(declare-fun d!1270813 () Bool)

(assert (=> d!1270813 (= (inRange!0 (index!1464 lt!1539673) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (and (bvsge (index!1464 lt!1539673) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539673) (bvadd (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001))))))

(assert (=> b!4321793 d!1270813))

(declare-fun bs!606624 () Bool)

(declare-fun b!4322195 () Bool)

(assert (= bs!606624 (and b!4322195 b!4322173)))

(declare-fun lambda!133893 () Int)

(assert (=> bs!606624 (= (= (toList!2555 (map!10406 thiss!42308)) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133893 lambda!133885))))

(declare-fun bs!606625 () Bool)

(assert (= bs!606625 (and b!4322195 b!4322179)))

(assert (=> bs!606625 (= (= (toList!2555 (map!10406 thiss!42308)) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133893 lambda!133886))))

(declare-fun bs!606626 () Bool)

(assert (= bs!606626 (and b!4322195 b!4321960)))

(assert (=> bs!606626 (= (= (toList!2555 (map!10406 thiss!42308)) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133893 lambda!133881))))

(declare-fun bs!606627 () Bool)

(assert (= bs!606627 (and b!4322195 b!4321961)))

(assert (=> bs!606627 (= (= (toList!2555 (map!10406 thiss!42308)) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133893 lambda!133883))))

(declare-fun bs!606628 () Bool)

(assert (= bs!606628 (and b!4322195 b!4322174)))

(assert (=> bs!606628 (= (= (toList!2555 (map!10406 thiss!42308)) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133893 lambda!133887))))

(declare-fun bs!606629 () Bool)

(assert (= bs!606629 (and b!4322195 b!4321966)))

(assert (=> bs!606629 (= (= (toList!2555 (map!10406 thiss!42308)) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133893 lambda!133882))))

(assert (=> b!4322195 true))

(declare-fun bs!606630 () Bool)

(declare-fun b!4322196 () Bool)

(assert (= bs!606630 (and b!4322196 b!4321962)))

(declare-fun lambda!133894 () Int)

(assert (=> bs!606630 (= lambda!133894 lambda!133884)))

(declare-fun bs!606631 () Bool)

(assert (= bs!606631 (and b!4322196 b!4322175)))

(assert (=> bs!606631 (= lambda!133894 lambda!133888)))

(declare-fun d!1270815 () Bool)

(declare-fun e!2689053 () Bool)

(assert (=> d!1270815 e!2689053))

(declare-fun res!1771333 () Bool)

(assert (=> d!1270815 (=> (not res!1771333) (not e!2689053))))

(declare-fun lt!1540065 () List!48504)

(assert (=> d!1270815 (= res!1771333 (noDuplicate!587 lt!1540065))))

(assert (=> d!1270815 (= lt!1540065 (getKeysList!56 (toList!2555 (map!10406 thiss!42308))))))

(assert (=> d!1270815 (= (keys!16173 (map!10406 thiss!42308)) lt!1540065)))

(declare-fun b!4322194 () Bool)

(declare-fun res!1771334 () Bool)

(assert (=> b!4322194 (=> (not res!1771334) (not e!2689053))))

(assert (=> b!4322194 (= res!1771334 (= (length!30 lt!1540065) (length!31 (toList!2555 (map!10406 thiss!42308)))))))

(declare-fun res!1771335 () Bool)

(assert (=> b!4322195 (=> (not res!1771335) (not e!2689053))))

(assert (=> b!4322195 (= res!1771335 (forall!8813 lt!1540065 lambda!133893))))

(assert (=> b!4322196 (= e!2689053 (= (content!7571 lt!1540065) (content!7571 (map!10408 (toList!2555 (map!10406 thiss!42308)) lambda!133894))))))

(assert (= (and d!1270815 res!1771333) b!4322194))

(assert (= (and b!4322194 res!1771334) b!4322195))

(assert (= (and b!4322195 res!1771335) b!4322196))

(declare-fun m!4916301 () Bool)

(assert (=> d!1270815 m!4916301))

(assert (=> d!1270815 m!4915743))

(declare-fun m!4916303 () Bool)

(assert (=> b!4322194 m!4916303))

(declare-fun m!4916305 () Bool)

(assert (=> b!4322194 m!4916305))

(declare-fun m!4916307 () Bool)

(assert (=> b!4322195 m!4916307))

(declare-fun m!4916309 () Bool)

(assert (=> b!4322196 m!4916309))

(declare-fun m!4916311 () Bool)

(assert (=> b!4322196 m!4916311))

(assert (=> b!4322196 m!4916311))

(declare-fun m!4916313 () Bool)

(assert (=> b!4322196 m!4916313))

(assert (=> b!4321736 d!1270815))

(declare-fun b!4322199 () Bool)

(declare-fun e!2689063 () Bool)

(declare-fun call!299682 () Bool)

(assert (=> b!4322199 (= e!2689063 (not call!299682))))

(declare-fun b!4322200 () Bool)

(declare-fun res!1771342 () Bool)

(declare-fun e!2689057 () Bool)

(assert (=> b!4322200 (=> (not res!1771342) (not e!2689057))))

(declare-fun e!2689064 () Bool)

(assert (=> b!4322200 (= res!1771342 e!2689064)))

(declare-fun res!1771344 () Bool)

(assert (=> b!4322200 (=> res!1771344 e!2689064)))

(declare-fun e!2689059 () Bool)

(assert (=> b!4322200 (= res!1771344 (not e!2689059))))

(declare-fun res!1771337 () Bool)

(assert (=> b!4322200 (=> (not res!1771337) (not e!2689059))))

(assert (=> b!4322200 (= res!1771337 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299671 () Bool)

(declare-fun call!299681 () ListLongMap!1171)

(declare-fun call!299680 () ListLongMap!1171)

(assert (=> bm!299671 (= call!299681 call!299680)))

(declare-fun b!4322201 () Bool)

(declare-fun e!2689065 () Unit!67766)

(declare-fun Unit!67805 () Unit!67766)

(assert (=> b!4322201 (= e!2689065 Unit!67805)))

(declare-fun b!4322202 () Bool)

(declare-fun lt!1540087 () Unit!67766)

(assert (=> b!4322202 (= e!2689065 lt!1540087)))

(declare-fun lt!1540066 () ListLongMap!1171)

(assert (=> b!4322202 (= lt!1540066 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540085 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540085 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540080 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540080 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1540071 () Unit!67766)

(assert (=> b!4322202 (= lt!1540071 (addStillContains!3 lt!1540066 lt!1540085 (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540080))))

(assert (=> b!4322202 (contains!10426 (+!330 lt!1540066 (tuple2!47187 lt!1540085 (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))) lt!1540080)))

(declare-fun lt!1540079 () Unit!67766)

(assert (=> b!4322202 (= lt!1540079 lt!1540071)))

(declare-fun lt!1540069 () ListLongMap!1171)

(assert (=> b!4322202 (= lt!1540069 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540072 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540072 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540083 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540083 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1540078 () Unit!67766)

(assert (=> b!4322202 (= lt!1540078 (addApplyDifferent!3 lt!1540069 lt!1540072 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1540083))))

(assert (=> b!4322202 (= (apply!11141 (+!330 lt!1540069 (tuple2!47187 lt!1540072 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1540083) (apply!11141 lt!1540069 lt!1540083))))

(declare-fun lt!1540068 () Unit!67766)

(assert (=> b!4322202 (= lt!1540068 lt!1540078)))

(declare-fun lt!1540070 () ListLongMap!1171)

(assert (=> b!4322202 (= lt!1540070 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540082 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540082 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540074 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540074 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1540075 () Unit!67766)

(assert (=> b!4322202 (= lt!1540075 (addApplyDifferent!3 lt!1540070 lt!1540082 (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540074))))

(assert (=> b!4322202 (= (apply!11141 (+!330 lt!1540070 (tuple2!47187 lt!1540082 (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))) lt!1540074) (apply!11141 lt!1540070 lt!1540074))))

(declare-fun lt!1540073 () Unit!67766)

(assert (=> b!4322202 (= lt!1540073 lt!1540075)))

(declare-fun lt!1540086 () ListLongMap!1171)

(assert (=> b!4322202 (= lt!1540086 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540067 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540067 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540084 () (_ BitVec 64))

(assert (=> b!4322202 (= lt!1540084 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(assert (=> b!4322202 (= lt!1540087 (addApplyDifferent!3 lt!1540086 lt!1540067 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1540084))))

(assert (=> b!4322202 (= (apply!11141 (+!330 lt!1540086 (tuple2!47187 lt!1540067 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1540084) (apply!11141 lt!1540086 lt!1540084))))

(declare-fun b!4322203 () Bool)

(declare-fun e!2689062 () Bool)

(declare-fun lt!1540081 () ListLongMap!1171)

(assert (=> b!4322203 (= e!2689062 (= (apply!11141 lt!1540081 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)) (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(assert (=> b!4322203 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35731 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (=> b!4322203 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322204 () Bool)

(declare-fun e!2689055 () Bool)

(assert (=> b!4322204 (= e!2689055 (= (apply!11141 lt!1540081 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322205 () Bool)

(declare-fun e!2689061 () Bool)

(assert (=> b!4322205 (= e!2689061 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(declare-fun b!4322206 () Bool)

(declare-fun e!2689054 () ListLongMap!1171)

(declare-fun call!299679 () ListLongMap!1171)

(assert (=> b!4322206 (= e!2689054 call!299679)))

(declare-fun bm!299672 () Bool)

(declare-fun c!735188 () Bool)

(declare-fun call!299677 () ListLongMap!1171)

(declare-fun c!735190 () Bool)

(declare-fun call!299678 () ListLongMap!1171)

(assert (=> bm!299672 (= call!299680 (+!330 (ite c!735188 call!299677 (ite c!735190 call!299678 call!299679)) (ite (or c!735188 c!735190) (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))))

(declare-fun bm!299673 () Bool)

(declare-fun call!299676 () Bool)

(assert (=> bm!299673 (= call!299676 (contains!10426 lt!1540081 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322207 () Bool)

(assert (=> b!4322207 (= e!2689064 e!2689062)))

(declare-fun res!1771339 () Bool)

(assert (=> b!4322207 (=> (not res!1771339) (not e!2689062))))

(assert (=> b!4322207 (= res!1771339 (contains!10426 lt!1540081 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(assert (=> b!4322207 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322208 () Bool)

(assert (=> b!4322208 (= e!2689063 e!2689055)))

(declare-fun res!1771343 () Bool)

(assert (=> b!4322208 (= res!1771343 call!299682)))

(assert (=> b!4322208 (=> (not res!1771343) (not e!2689055))))

(declare-fun b!4322209 () Bool)

(declare-fun e!2689056 () ListLongMap!1171)

(declare-fun e!2689060 () ListLongMap!1171)

(assert (=> b!4322209 (= e!2689056 e!2689060)))

(assert (=> b!4322209 (= c!735190 (and (not (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322210 () Bool)

(declare-fun e!2689058 () Bool)

(declare-fun e!2689066 () Bool)

(assert (=> b!4322210 (= e!2689058 e!2689066)))

(declare-fun res!1771336 () Bool)

(assert (=> b!4322210 (= res!1771336 call!299676)))

(assert (=> b!4322210 (=> (not res!1771336) (not e!2689066))))

(declare-fun b!4322211 () Bool)

(assert (=> b!4322211 (= e!2689059 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(declare-fun b!4322212 () Bool)

(declare-fun res!1771341 () Bool)

(assert (=> b!4322212 (=> (not res!1771341) (not e!2689057))))

(assert (=> b!4322212 (= res!1771341 e!2689063)))

(declare-fun c!735189 () Bool)

(assert (=> b!4322212 (= c!735189 (not (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4322213 () Bool)

(assert (=> b!4322213 (= e!2689060 call!299681)))

(declare-fun bm!299674 () Bool)

(assert (=> bm!299674 (= call!299679 call!299678)))

(declare-fun b!4322214 () Bool)

(assert (=> b!4322214 (= e!2689056 (+!330 call!299680 (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299675 () Bool)

(assert (=> bm!299675 (= call!299682 (contains!10426 lt!1540081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299676 () Bool)

(assert (=> bm!299676 (= call!299677 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322215 () Bool)

(declare-fun c!735187 () Bool)

(assert (=> b!4322215 (= c!735187 (and (not (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4322215 (= e!2689060 e!2689054)))

(declare-fun b!4322216 () Bool)

(assert (=> b!4322216 (= e!2689058 (not call!299676))))

(declare-fun d!1270817 () Bool)

(assert (=> d!1270817 e!2689057))

(declare-fun res!1771338 () Bool)

(assert (=> d!1270817 (=> (not res!1771338) (not e!2689057))))

(assert (=> d!1270817 (= res!1771338 (or (bvsge #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))))

(declare-fun lt!1540076 () ListLongMap!1171)

(assert (=> d!1270817 (= lt!1540081 lt!1540076)))

(declare-fun lt!1540077 () Unit!67766)

(assert (=> d!1270817 (= lt!1540077 e!2689065)))

(declare-fun c!735186 () Bool)

(assert (=> d!1270817 (= c!735186 e!2689061)))

(declare-fun res!1771340 () Bool)

(assert (=> d!1270817 (=> (not res!1771340) (not e!2689061))))

(assert (=> d!1270817 (= res!1771340 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (=> d!1270817 (= lt!1540076 e!2689056)))

(assert (=> d!1270817 (= c!735188 (and (not (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270817 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270817 (= (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (ite (and c!734981 c!734978) lt!1539317 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540081)))

(declare-fun b!4322217 () Bool)

(assert (=> b!4322217 (= e!2689057 e!2689058)))

(declare-fun c!735191 () Bool)

(assert (=> b!4322217 (= c!735191 (not (= (bvand (ite (and c!734981 c!734978) lt!1539509 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322218 () Bool)

(assert (=> b!4322218 (= e!2689054 call!299681)))

(declare-fun bm!299677 () Bool)

(assert (=> bm!299677 (= call!299678 call!299677)))

(declare-fun b!4322219 () Bool)

(assert (=> b!4322219 (= e!2689066 (= (apply!11141 lt!1540081 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (= (and d!1270817 c!735188) b!4322214))

(assert (= (and d!1270817 (not c!735188)) b!4322209))

(assert (= (and b!4322209 c!735190) b!4322213))

(assert (= (and b!4322209 (not c!735190)) b!4322215))

(assert (= (and b!4322215 c!735187) b!4322218))

(assert (= (and b!4322215 (not c!735187)) b!4322206))

(assert (= (or b!4322218 b!4322206) bm!299674))

(assert (= (or b!4322213 bm!299674) bm!299677))

(assert (= (or b!4322213 b!4322218) bm!299671))

(assert (= (or b!4322214 bm!299677) bm!299676))

(assert (= (or b!4322214 bm!299671) bm!299672))

(assert (= (and d!1270817 res!1771340) b!4322205))

(assert (= (and d!1270817 c!735186) b!4322202))

(assert (= (and d!1270817 (not c!735186)) b!4322201))

(assert (= (and d!1270817 res!1771338) b!4322200))

(assert (= (and b!4322200 res!1771337) b!4322211))

(assert (= (and b!4322200 (not res!1771344)) b!4322207))

(assert (= (and b!4322207 res!1771339) b!4322203))

(assert (= (and b!4322200 res!1771342) b!4322212))

(assert (= (and b!4322212 c!735189) b!4322208))

(assert (= (and b!4322212 (not c!735189)) b!4322199))

(assert (= (and b!4322208 res!1771343) b!4322204))

(assert (= (or b!4322208 b!4322199) bm!299675))

(assert (= (and b!4322212 res!1771341) b!4322217))

(assert (= (and b!4322217 c!735191) b!4322210))

(assert (= (and b!4322217 (not c!735191)) b!4322216))

(assert (= (and b!4322210 res!1771336) b!4322219))

(assert (= (or b!4322210 b!4322216) bm!299673))

(declare-fun m!4916315 () Bool)

(assert (=> b!4322204 m!4916315))

(declare-fun m!4916317 () Bool)

(assert (=> bm!299673 m!4916317))

(assert (=> d!1270817 m!4915875))

(declare-fun m!4916319 () Bool)

(assert (=> bm!299676 m!4916319))

(declare-fun m!4916321 () Bool)

(assert (=> bm!299672 m!4916321))

(assert (=> b!4322207 m!4915889))

(assert (=> b!4322207 m!4915889))

(declare-fun m!4916323 () Bool)

(assert (=> b!4322207 m!4916323))

(assert (=> b!4322211 m!4915889))

(assert (=> b!4322211 m!4915889))

(assert (=> b!4322211 m!4915893))

(assert (=> b!4322202 m!4915889))

(declare-fun m!4916325 () Bool)

(assert (=> b!4322202 m!4916325))

(declare-fun m!4916327 () Bool)

(assert (=> b!4322202 m!4916327))

(declare-fun m!4916329 () Bool)

(assert (=> b!4322202 m!4916329))

(declare-fun m!4916331 () Bool)

(assert (=> b!4322202 m!4916331))

(declare-fun m!4916333 () Bool)

(assert (=> b!4322202 m!4916333))

(declare-fun m!4916335 () Bool)

(assert (=> b!4322202 m!4916335))

(declare-fun m!4916337 () Bool)

(assert (=> b!4322202 m!4916337))

(declare-fun m!4916339 () Bool)

(assert (=> b!4322202 m!4916339))

(assert (=> b!4322202 m!4916319))

(assert (=> b!4322202 m!4916337))

(declare-fun m!4916341 () Bool)

(assert (=> b!4322202 m!4916341))

(declare-fun m!4916343 () Bool)

(assert (=> b!4322202 m!4916343))

(assert (=> b!4322202 m!4916341))

(declare-fun m!4916345 () Bool)

(assert (=> b!4322202 m!4916345))

(assert (=> b!4322202 m!4916335))

(declare-fun m!4916347 () Bool)

(assert (=> b!4322202 m!4916347))

(declare-fun m!4916349 () Bool)

(assert (=> b!4322202 m!4916349))

(assert (=> b!4322202 m!4916327))

(declare-fun m!4916351 () Bool)

(assert (=> b!4322202 m!4916351))

(declare-fun m!4916353 () Bool)

(assert (=> b!4322202 m!4916353))

(assert (=> b!4322203 m!4915889))

(assert (=> b!4322203 m!4915889))

(declare-fun m!4916355 () Bool)

(assert (=> b!4322203 m!4916355))

(declare-fun m!4916357 () Bool)

(assert (=> b!4322203 m!4916357))

(declare-fun m!4916359 () Bool)

(assert (=> b!4322219 m!4916359))

(declare-fun m!4916361 () Bool)

(assert (=> bm!299675 m!4916361))

(declare-fun m!4916363 () Bool)

(assert (=> b!4322214 m!4916363))

(assert (=> b!4322205 m!4915889))

(assert (=> b!4322205 m!4915889))

(assert (=> b!4322205 m!4915893))

(assert (=> bm!299574 d!1270817))

(declare-fun d!1270819 () Bool)

(declare-fun res!1771345 () Bool)

(declare-fun e!2689067 () Bool)

(assert (=> d!1270819 (=> res!1771345 e!2689067)))

(assert (=> d!1270819 (= res!1771345 ((_ is Nil!48379) (toList!2554 lt!1539353)))))

(assert (=> d!1270819 (= (forall!8811 (toList!2554 lt!1539353) lambda!133859) e!2689067)))

(declare-fun b!4322220 () Bool)

(declare-fun e!2689068 () Bool)

(assert (=> b!4322220 (= e!2689067 e!2689068)))

(declare-fun res!1771346 () Bool)

(assert (=> b!4322220 (=> (not res!1771346) (not e!2689068))))

(assert (=> b!4322220 (= res!1771346 (dynLambda!20507 lambda!133859 (h!53839 (toList!2554 lt!1539353))))))

(declare-fun b!4322221 () Bool)

(assert (=> b!4322221 (= e!2689068 (forall!8811 (t!355382 (toList!2554 lt!1539353)) lambda!133859))))

(assert (= (and d!1270819 (not res!1771345)) b!4322220))

(assert (= (and b!4322220 res!1771346) b!4322221))

(declare-fun b_lambda!127301 () Bool)

(assert (=> (not b_lambda!127301) (not b!4322220)))

(declare-fun m!4916365 () Bool)

(assert (=> b!4322220 m!4916365))

(declare-fun m!4916367 () Bool)

(assert (=> b!4322221 m!4916367))

(assert (=> d!1270603 d!1270819))

(declare-fun d!1270821 () Bool)

(declare-fun lt!1540088 () Bool)

(assert (=> d!1270821 (= lt!1540088 (select (content!7571 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) key!2048))))

(declare-fun e!2689069 () Bool)

(assert (=> d!1270821 (= lt!1540088 e!2689069)))

(declare-fun res!1771348 () Bool)

(assert (=> d!1270821 (=> (not res!1771348) (not e!2689069))))

(assert (=> d!1270821 (= res!1771348 ((_ is Cons!48380) (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270821 (= (contains!10431 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048) lt!1540088)))

(declare-fun b!4322222 () Bool)

(declare-fun e!2689070 () Bool)

(assert (=> b!4322222 (= e!2689069 e!2689070)))

(declare-fun res!1771347 () Bool)

(assert (=> b!4322222 (=> res!1771347 e!2689070)))

(assert (=> b!4322222 (= res!1771347 (= (h!53841 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) key!2048))))

(declare-fun b!4322223 () Bool)

(assert (=> b!4322223 (= e!2689070 (contains!10431 (t!355387 (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) key!2048))))

(assert (= (and d!1270821 res!1771348) b!4322222))

(assert (= (and b!4322222 (not res!1771347)) b!4322223))

(assert (=> d!1270821 m!4915761))

(declare-fun m!4916369 () Bool)

(assert (=> d!1270821 m!4916369))

(declare-fun m!4916371 () Bool)

(assert (=> d!1270821 m!4916371))

(declare-fun m!4916373 () Bool)

(assert (=> b!4322223 m!4916373))

(assert (=> b!4321744 d!1270821))

(declare-fun bs!606632 () Bool)

(declare-fun b!4322225 () Bool)

(assert (= bs!606632 (and b!4322225 b!4322173)))

(declare-fun lambda!133895 () Int)

(assert (=> bs!606632 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133895 lambda!133885))))

(declare-fun bs!606633 () Bool)

(assert (= bs!606633 (and b!4322225 b!4322179)))

(assert (=> bs!606633 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133895 lambda!133886))))

(declare-fun bs!606634 () Bool)

(assert (= bs!606634 (and b!4322225 b!4322195)))

(assert (=> bs!606634 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (toList!2555 (map!10406 thiss!42308))) (= lambda!133895 lambda!133893))))

(declare-fun bs!606635 () Bool)

(assert (= bs!606635 (and b!4322225 b!4321960)))

(assert (=> bs!606635 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133895 lambda!133881))))

(declare-fun bs!606636 () Bool)

(assert (= bs!606636 (and b!4322225 b!4321961)))

(assert (=> bs!606636 (= lambda!133895 lambda!133883)))

(declare-fun bs!606637 () Bool)

(assert (= bs!606637 (and b!4322225 b!4322174)))

(assert (=> bs!606637 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133895 lambda!133887))))

(declare-fun bs!606638 () Bool)

(assert (= bs!606638 (and b!4322225 b!4321966)))

(assert (=> bs!606638 (= (= (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133895 lambda!133882))))

(assert (=> b!4322225 true))

(declare-fun bs!606639 () Bool)

(declare-fun b!4322226 () Bool)

(assert (= bs!606639 (and b!4322226 b!4321962)))

(declare-fun lambda!133896 () Int)

(assert (=> bs!606639 (= lambda!133896 lambda!133884)))

(declare-fun bs!606640 () Bool)

(assert (= bs!606640 (and b!4322226 b!4322175)))

(assert (=> bs!606640 (= lambda!133896 lambda!133888)))

(declare-fun bs!606641 () Bool)

(assert (= bs!606641 (and b!4322226 b!4322196)))

(assert (=> bs!606641 (= lambda!133896 lambda!133894)))

(declare-fun d!1270823 () Bool)

(declare-fun e!2689071 () Bool)

(assert (=> d!1270823 e!2689071))

(declare-fun res!1771349 () Bool)

(assert (=> d!1270823 (=> (not res!1771349) (not e!2689071))))

(declare-fun lt!1540089 () List!48504)

(assert (=> d!1270823 (= res!1771349 (noDuplicate!587 lt!1540089))))

(assert (=> d!1270823 (= lt!1540089 (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270823 (= (keys!16173 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540089)))

(declare-fun b!4322224 () Bool)

(declare-fun res!1771350 () Bool)

(assert (=> b!4322224 (=> (not res!1771350) (not e!2689071))))

(assert (=> b!4322224 (= res!1771350 (= (length!30 lt!1540089) (length!31 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun res!1771351 () Bool)

(assert (=> b!4322225 (=> (not res!1771351) (not e!2689071))))

(assert (=> b!4322225 (= res!1771351 (forall!8813 lt!1540089 lambda!133895))))

(assert (=> b!4322226 (= e!2689071 (= (content!7571 lt!1540089) (content!7571 (map!10408 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lambda!133896))))))

(assert (= (and d!1270823 res!1771349) b!4322224))

(assert (= (and b!4322224 res!1771350) b!4322225))

(assert (= (and b!4322225 res!1771351) b!4322226))

(declare-fun m!4916375 () Bool)

(assert (=> d!1270823 m!4916375))

(assert (=> d!1270823 m!4915767))

(declare-fun m!4916377 () Bool)

(assert (=> b!4322224 m!4916377))

(assert (=> b!4322224 m!4915983))

(declare-fun m!4916379 () Bool)

(assert (=> b!4322225 m!4916379))

(declare-fun m!4916381 () Bool)

(assert (=> b!4322226 m!4916381))

(declare-fun m!4916383 () Bool)

(assert (=> b!4322226 m!4916383))

(assert (=> b!4322226 m!4916383))

(declare-fun m!4916385 () Bool)

(assert (=> b!4322226 m!4916385))

(assert (=> b!4321744 d!1270823))

(declare-fun d!1270825 () Bool)

(declare-fun isEmpty!28121 (Option!10302) Bool)

(assert (=> d!1270825 (= (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048)) (not (isEmpty!28121 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))))

(declare-fun bs!606642 () Bool)

(assert (= bs!606642 d!1270825))

(assert (=> bs!606642 m!4915565))

(declare-fun m!4916387 () Bool)

(assert (=> bs!606642 m!4916387))

(assert (=> b!4321648 d!1270825))

(declare-fun b!4322236 () Bool)

(declare-fun e!2689076 () Option!10302)

(declare-fun e!2689077 () Option!10302)

(assert (=> b!4322236 (= e!2689076 e!2689077)))

(declare-fun c!735197 () Bool)

(assert (=> b!4322236 (= c!735197 (and ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (not (= (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) key!2048))))))

(declare-fun b!4322235 () Bool)

(assert (=> b!4322235 (= e!2689076 (Some!10301 (_2!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))))

(declare-fun d!1270827 () Bool)

(declare-fun c!735196 () Bool)

(assert (=> d!1270827 (= c!735196 (and ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) key!2048)))))

(assert (=> d!1270827 (= (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048) e!2689076)))

(declare-fun b!4322238 () Bool)

(assert (=> b!4322238 (= e!2689077 None!10301)))

(declare-fun b!4322237 () Bool)

(assert (=> b!4322237 (= e!2689077 (getValueByKey!298 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) key!2048))))

(assert (= (and d!1270827 c!735196) b!4322235))

(assert (= (and d!1270827 (not c!735196)) b!4322236))

(assert (= (and b!4322236 c!735197) b!4322237))

(assert (= (and b!4322236 (not c!735197)) b!4322238))

(declare-fun m!4916389 () Bool)

(assert (=> b!4322237 m!4916389))

(assert (=> b!4321648 d!1270827))

(declare-fun d!1270829 () Bool)

(assert (=> d!1270829 (= (invariantList!601 (toList!2555 lt!1539599)) (noDuplicatedKeys!103 (toList!2555 lt!1539599)))))

(declare-fun bs!606643 () Bool)

(assert (= bs!606643 d!1270829))

(declare-fun m!4916391 () Bool)

(assert (=> bs!606643 m!4916391))

(assert (=> d!1270613 d!1270829))

(declare-fun d!1270831 () Bool)

(declare-fun res!1771352 () Bool)

(declare-fun e!2689078 () Bool)

(assert (=> d!1270831 (=> res!1771352 e!2689078)))

(assert (=> d!1270831 (= res!1771352 ((_ is Nil!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270831 (= (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133866) e!2689078)))

(declare-fun b!4322239 () Bool)

(declare-fun e!2689079 () Bool)

(assert (=> b!4322239 (= e!2689078 e!2689079)))

(declare-fun res!1771353 () Bool)

(assert (=> b!4322239 (=> (not res!1771353) (not e!2689079))))

(assert (=> b!4322239 (= res!1771353 (dynLambda!20507 lambda!133866 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322240 () Bool)

(assert (=> b!4322240 (= e!2689079 (forall!8811 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lambda!133866))))

(assert (= (and d!1270831 (not res!1771352)) b!4322239))

(assert (= (and b!4322239 res!1771353) b!4322240))

(declare-fun b_lambda!127303 () Bool)

(assert (=> (not b_lambda!127303) (not b!4322239)))

(declare-fun m!4916393 () Bool)

(assert (=> b!4322239 m!4916393))

(declare-fun m!4916395 () Bool)

(assert (=> b!4322240 m!4916395))

(assert (=> d!1270613 d!1270831))

(declare-fun d!1270833 () Bool)

(declare-fun res!1771358 () Bool)

(declare-fun e!2689084 () Bool)

(assert (=> d!1270833 (=> res!1771358 e!2689084)))

(assert (=> d!1270833 (= res!1771358 (and ((_ is Cons!48378) (toList!2555 (map!10406 thiss!42308))) (= (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308)))) key!2048)))))

(assert (=> d!1270833 (= (containsKey!402 (toList!2555 (map!10406 thiss!42308)) key!2048) e!2689084)))

(declare-fun b!4322245 () Bool)

(declare-fun e!2689085 () Bool)

(assert (=> b!4322245 (= e!2689084 e!2689085)))

(declare-fun res!1771359 () Bool)

(assert (=> b!4322245 (=> (not res!1771359) (not e!2689085))))

(assert (=> b!4322245 (= res!1771359 ((_ is Cons!48378) (toList!2555 (map!10406 thiss!42308))))))

(declare-fun b!4322246 () Bool)

(assert (=> b!4322246 (= e!2689085 (containsKey!402 (t!355381 (toList!2555 (map!10406 thiss!42308))) key!2048))))

(assert (= (and d!1270833 (not res!1771358)) b!4322245))

(assert (= (and b!4322245 res!1771359) b!4322246))

(declare-fun m!4916397 () Bool)

(assert (=> b!4322246 m!4916397))

(assert (=> b!4321733 d!1270833))

(declare-fun d!1270835 () Bool)

(assert (=> d!1270835 (containsKey!402 (toList!2555 (map!10406 thiss!42308)) key!2048)))

(declare-fun lt!1540092 () Unit!67766)

(declare-fun choose!26408 (List!48502 K!9629) Unit!67766)

(assert (=> d!1270835 (= lt!1540092 (choose!26408 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(assert (=> d!1270835 (invariantList!601 (toList!2555 (map!10406 thiss!42308)))))

(assert (=> d!1270835 (= (lemmaInGetKeysListThenContainsKey!53 (toList!2555 (map!10406 thiss!42308)) key!2048) lt!1540092)))

(declare-fun bs!606644 () Bool)

(assert (= bs!606644 d!1270835))

(assert (=> bs!606644 m!4915745))

(declare-fun m!4916399 () Bool)

(assert (=> bs!606644 m!4916399))

(declare-fun m!4916401 () Bool)

(assert (=> bs!606644 m!4916401))

(assert (=> b!4321733 d!1270835))

(declare-fun d!1270837 () Bool)

(assert (=> d!1270837 (= (inRange!0 (ite c!734986 (ite c!734984 (index!1464 lt!1539498) (ite c!734990 (index!1465 lt!1539506) (index!1466 lt!1539506))) (ite c!734982 (index!1464 lt!1539487) (ite c!734980 (index!1465 lt!1539508) (index!1466 lt!1539508)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (and (bvsge (ite c!734986 (ite c!734984 (index!1464 lt!1539498) (ite c!734990 (index!1465 lt!1539506) (index!1466 lt!1539506))) (ite c!734982 (index!1464 lt!1539487) (ite c!734980 (index!1465 lt!1539508) (index!1466 lt!1539508)))) #b00000000000000000000000000000000) (bvslt (ite c!734986 (ite c!734984 (index!1464 lt!1539498) (ite c!734990 (index!1465 lt!1539506) (index!1466 lt!1539506))) (ite c!734982 (index!1464 lt!1539487) (ite c!734980 (index!1465 lt!1539508) (index!1466 lt!1539508)))) (bvadd (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000001))))))

(assert (=> bm!299582 d!1270837))

(declare-fun d!1270839 () Bool)

(declare-fun lt!1540093 () Bool)

(assert (=> d!1270839 (= lt!1540093 (select (content!7571 (keys!16173 (map!10406 thiss!42308))) key!2048))))

(declare-fun e!2689086 () Bool)

(assert (=> d!1270839 (= lt!1540093 e!2689086)))

(declare-fun res!1771361 () Bool)

(assert (=> d!1270839 (=> (not res!1771361) (not e!2689086))))

(assert (=> d!1270839 (= res!1771361 ((_ is Cons!48380) (keys!16173 (map!10406 thiss!42308))))))

(assert (=> d!1270839 (= (contains!10431 (keys!16173 (map!10406 thiss!42308)) key!2048) lt!1540093)))

(declare-fun b!4322247 () Bool)

(declare-fun e!2689087 () Bool)

(assert (=> b!4322247 (= e!2689086 e!2689087)))

(declare-fun res!1771360 () Bool)

(assert (=> b!4322247 (=> res!1771360 e!2689087)))

(assert (=> b!4322247 (= res!1771360 (= (h!53841 (keys!16173 (map!10406 thiss!42308))) key!2048))))

(declare-fun b!4322248 () Bool)

(assert (=> b!4322248 (= e!2689087 (contains!10431 (t!355387 (keys!16173 (map!10406 thiss!42308))) key!2048))))

(assert (= (and d!1270839 res!1771361) b!4322247))

(assert (= (and b!4322247 (not res!1771360)) b!4322248))

(assert (=> d!1270839 m!4915737))

(declare-fun m!4916403 () Bool)

(assert (=> d!1270839 m!4916403))

(declare-fun m!4916405 () Bool)

(assert (=> d!1270839 m!4916405))

(declare-fun m!4916407 () Bool)

(assert (=> b!4322248 m!4916407))

(assert (=> b!4321730 d!1270839))

(assert (=> b!4321730 d!1270815))

(declare-fun d!1270841 () Bool)

(declare-fun lt!1540099 () SeekEntryResult!21)

(assert (=> d!1270841 (and ((_ is Found!21) lt!1540099) (= (index!1464 lt!1540099) lt!1539717))))

(assert (=> d!1270841 (= lt!1540099 (seekEntry!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1540098 () Unit!67766)

(declare-fun choose!259 ((_ BitVec 64) (_ BitVec 32) array!17232 (_ BitVec 32)) Unit!67766)

(assert (=> d!1270841 (= lt!1540098 (choose!259 lt!1539310 lt!1539717 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270841 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270841 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1539310 lt!1539717 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540098)))

(declare-fun bs!606645 () Bool)

(assert (= bs!606645 d!1270841))

(assert (=> bs!606645 m!4915779))

(declare-fun m!4916409 () Bool)

(assert (=> bs!606645 m!4916409))

(assert (=> bs!606645 m!4916013))

(assert (=> b!4321841 d!1270841))

(declare-fun b!4322257 () Bool)

(declare-fun e!2689094 () Bool)

(declare-fun call!299685 () Bool)

(assert (=> b!4322257 (= e!2689094 call!299685)))

(declare-fun b!4322258 () Bool)

(declare-fun e!2689096 () Bool)

(assert (=> b!4322258 (= e!2689096 call!299685)))

(declare-fun b!4322259 () Bool)

(assert (=> b!4322259 (= e!2689094 e!2689096)))

(declare-fun lt!1540106 () (_ BitVec 64))

(assert (=> b!4322259 (= lt!1540106 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539717))))

(declare-fun lt!1540108 () Unit!67766)

(assert (=> b!4322259 (= lt!1540108 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1540106 lt!1539717))))

(assert (=> b!4322259 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1540106 #b00000000000000000000000000000000)))

(declare-fun lt!1540107 () Unit!67766)

(assert (=> b!4322259 (= lt!1540107 lt!1540108)))

(declare-fun res!1771366 () Bool)

(assert (=> b!4322259 (= res!1771366 (= (seekEntryOrOpen!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539717) (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (Found!21 lt!1539717)))))

(assert (=> b!4322259 (=> (not res!1771366) (not e!2689096))))

(declare-fun d!1270843 () Bool)

(declare-fun res!1771367 () Bool)

(declare-fun e!2689095 () Bool)

(assert (=> d!1270843 (=> res!1771367 e!2689095)))

(assert (=> d!1270843 (= res!1771367 (bvsge lt!1539717 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270843 (= (arrayForallSeekEntryOrOpenFound!0 lt!1539717 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) e!2689095)))

(declare-fun bm!299680 () Bool)

(assert (=> bm!299680 (= call!299685 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!1539717 #b00000000000000000000000000000001) (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322260 () Bool)

(assert (=> b!4322260 (= e!2689095 e!2689094)))

(declare-fun c!735200 () Bool)

(assert (=> b!4322260 (= c!735200 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539717)))))

(assert (= (and d!1270843 (not res!1771367)) b!4322260))

(assert (= (and b!4322260 c!735200) b!4322259))

(assert (= (and b!4322260 (not c!735200)) b!4322257))

(assert (= (and b!4322259 res!1771366) b!4322258))

(assert (= (or b!4322258 b!4322257) bm!299680))

(declare-fun m!4916411 () Bool)

(assert (=> b!4322259 m!4916411))

(declare-fun m!4916413 () Bool)

(assert (=> b!4322259 m!4916413))

(declare-fun m!4916415 () Bool)

(assert (=> b!4322259 m!4916415))

(assert (=> b!4322259 m!4916411))

(declare-fun m!4916417 () Bool)

(assert (=> b!4322259 m!4916417))

(declare-fun m!4916419 () Bool)

(assert (=> bm!299680 m!4916419))

(assert (=> b!4322260 m!4916411))

(assert (=> b!4322260 m!4916411))

(declare-fun m!4916421 () Bool)

(assert (=> b!4322260 m!4916421))

(assert (=> b!4321841 d!1270843))

(declare-fun d!1270845 () Bool)

(declare-fun lt!1540111 () (_ BitVec 32))

(assert (=> d!1270845 (and (or (bvslt lt!1540111 #b00000000000000000000000000000000) (bvsge lt!1540111 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (and (bvsge lt!1540111 #b00000000000000000000000000000000) (bvslt lt!1540111 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))) (bvsge lt!1540111 #b00000000000000000000000000000000) (bvslt lt!1540111 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540111) lt!1539310))))

(declare-fun e!2689099 () (_ BitVec 32))

(assert (=> d!1270845 (= lt!1540111 e!2689099)))

(declare-fun c!735203 () Bool)

(assert (=> d!1270845 (= c!735203 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000000) lt!1539310))))

(assert (=> d!1270845 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (bvslt (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b01111111111111111111111111111111))))

(assert (=> d!1270845 (= (arrayScanForKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000) lt!1540111)))

(declare-fun b!4322265 () Bool)

(assert (=> b!4322265 (= e!2689099 #b00000000000000000000000000000000)))

(declare-fun b!4322266 () Bool)

(assert (=> b!4322266 (= e!2689099 (arrayScanForKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1270845 c!735203) b!4322265))

(assert (= (and d!1270845 (not c!735203)) b!4322266))

(declare-fun m!4916423 () Bool)

(assert (=> d!1270845 m!4916423))

(assert (=> d!1270845 m!4916019))

(declare-fun m!4916425 () Bool)

(assert (=> b!4322266 m!4916425))

(assert (=> b!4321841 d!1270845))

(declare-fun d!1270847 () Bool)

(declare-fun e!2689102 () Bool)

(assert (=> d!1270847 e!2689102))

(declare-fun c!735206 () Bool)

(assert (=> d!1270847 (= c!735206 (and (not (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1539310 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1540114 () Unit!67766)

(declare-fun choose!26409 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) Int) Unit!67766)

(assert (=> d!1270847 (= lt!1540114 (choose!26409 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270847 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270847 (= (lemmaKeyInListMapIsInArray!17 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540114)))

(declare-fun b!4322271 () Bool)

(assert (=> b!4322271 (= e!2689102 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun b!4322272 () Bool)

(assert (=> b!4322272 (= e!2689102 (ite (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!1270847 c!735206) b!4322271))

(assert (= (and d!1270847 (not c!735206)) b!4322272))

(declare-fun m!4916427 () Bool)

(assert (=> d!1270847 m!4916427))

(assert (=> d!1270847 m!4916013))

(assert (=> b!4322271 m!4915787))

(assert (=> b!4321841 d!1270847))

(declare-fun d!1270849 () Bool)

(assert (=> d!1270849 (arrayForallSeekEntryOrOpenFound!0 lt!1539717 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun lt!1540117 () Unit!67766)

(declare-fun choose!979 (array!17232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67766)

(assert (=> d!1270849 (= lt!1540117 (choose!979 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 lt!1539717))))

(assert (=> d!1270849 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270849 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 lt!1539717) lt!1540117)))

(declare-fun bs!606646 () Bool)

(assert (= bs!606646 d!1270849))

(assert (=> bs!606646 m!4915841))

(declare-fun m!4916429 () Bool)

(assert (=> bs!606646 m!4916429))

(assert (=> bs!606646 m!4916013))

(assert (=> b!4321841 d!1270849))

(assert (=> b!4321841 d!1270747))

(declare-fun d!1270851 () Bool)

(declare-fun lt!1540118 () Bool)

(assert (=> d!1270851 (= lt!1540118 (select (content!7570 (toList!2554 lt!1539561)) (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun e!2689104 () Bool)

(assert (=> d!1270851 (= lt!1540118 e!2689104)))

(declare-fun res!1771369 () Bool)

(assert (=> d!1270851 (=> (not res!1771369) (not e!2689104))))

(assert (=> d!1270851 (= res!1771369 ((_ is Cons!48379) (toList!2554 lt!1539561)))))

(assert (=> d!1270851 (= (contains!10428 (toList!2554 lt!1539561) (tuple2!47187 lt!1539310 lt!1539317)) lt!1540118)))

(declare-fun b!4322273 () Bool)

(declare-fun e!2689103 () Bool)

(assert (=> b!4322273 (= e!2689104 e!2689103)))

(declare-fun res!1771368 () Bool)

(assert (=> b!4322273 (=> res!1771368 e!2689103)))

(assert (=> b!4322273 (= res!1771368 (= (h!53839 (toList!2554 lt!1539561)) (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun b!4322274 () Bool)

(assert (=> b!4322274 (= e!2689103 (contains!10428 (t!355382 (toList!2554 lt!1539561)) (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (= (and d!1270851 res!1771369) b!4322273))

(assert (= (and b!4322273 (not res!1771368)) b!4322274))

(declare-fun m!4916431 () Bool)

(assert (=> d!1270851 m!4916431))

(declare-fun m!4916433 () Bool)

(assert (=> d!1270851 m!4916433))

(declare-fun m!4916435 () Bool)

(assert (=> b!4322274 m!4916435))

(assert (=> b!4321614 d!1270851))

(declare-fun b!4322275 () Bool)

(declare-fun c!735210 () Bool)

(assert (=> b!4322275 (= c!735210 (and ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539311))) (bvsgt (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun e!2689105 () List!48503)

(declare-fun e!2689106 () List!48503)

(assert (=> b!4322275 (= e!2689105 e!2689106)))

(declare-fun b!4322276 () Bool)

(declare-fun lt!1540119 () List!48503)

(declare-fun e!2689107 () Bool)

(assert (=> b!4322276 (= e!2689107 (contains!10428 lt!1540119 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun c!735207 () Bool)

(declare-fun call!299688 () List!48503)

(declare-fun bm!299681 () Bool)

(declare-fun e!2689108 () List!48503)

(assert (=> bm!299681 (= call!299688 ($colon$colon!661 e!2689108 (ite c!735207 (h!53839 (t!355382 (toList!2554 lt!1539311))) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(declare-fun c!735208 () Bool)

(assert (=> bm!299681 (= c!735208 c!735207)))

(declare-fun b!4322278 () Bool)

(declare-fun call!299687 () List!48503)

(assert (=> b!4322278 (= e!2689106 call!299687)))

(declare-fun b!4322279 () Bool)

(assert (=> b!4322279 (= e!2689106 call!299687)))

(declare-fun b!4322280 () Bool)

(declare-fun call!299686 () List!48503)

(assert (=> b!4322280 (= e!2689105 call!299686)))

(declare-fun b!4322281 () Bool)

(declare-fun e!2689109 () List!48503)

(assert (=> b!4322281 (= e!2689109 e!2689105)))

(declare-fun c!735209 () Bool)

(assert (=> b!4322281 (= c!735209 (and ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539311))) (= (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun bm!299682 () Bool)

(assert (=> bm!299682 (= call!299686 call!299688)))

(declare-fun b!4322282 () Bool)

(assert (=> b!4322282 (= e!2689109 call!299688)))

(declare-fun b!4322283 () Bool)

(assert (=> b!4322283 (= e!2689108 (insertStrictlySorted!56 (t!355382 (t!355382 (toList!2554 lt!1539311))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4322277 () Bool)

(assert (=> b!4322277 (= e!2689108 (ite c!735209 (t!355382 (t!355382 (toList!2554 lt!1539311))) (ite c!735210 (Cons!48379 (h!53839 (t!355382 (toList!2554 lt!1539311))) (t!355382 (t!355382 (toList!2554 lt!1539311)))) Nil!48379)))))

(declare-fun d!1270853 () Bool)

(assert (=> d!1270853 e!2689107))

(declare-fun res!1771370 () Bool)

(assert (=> d!1270853 (=> (not res!1771370) (not e!2689107))))

(assert (=> d!1270853 (= res!1771370 (isStrictlySorted!21 lt!1540119))))

(assert (=> d!1270853 (= lt!1540119 e!2689109)))

(assert (=> d!1270853 (= c!735207 (and ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539311))) (bvslt (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270853 (isStrictlySorted!21 (t!355382 (toList!2554 lt!1539311)))))

(assert (=> d!1270853 (= (insertStrictlySorted!56 (t!355382 (toList!2554 lt!1539311)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1540119)))

(declare-fun b!4322284 () Bool)

(declare-fun res!1771371 () Bool)

(assert (=> b!4322284 (=> (not res!1771371) (not e!2689107))))

(assert (=> b!4322284 (= res!1771371 (containsKey!401 lt!1540119 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun bm!299683 () Bool)

(assert (=> bm!299683 (= call!299687 call!299686)))

(assert (= (and d!1270853 c!735207) b!4322282))

(assert (= (and d!1270853 (not c!735207)) b!4322281))

(assert (= (and b!4322281 c!735209) b!4322280))

(assert (= (and b!4322281 (not c!735209)) b!4322275))

(assert (= (and b!4322275 c!735210) b!4322279))

(assert (= (and b!4322275 (not c!735210)) b!4322278))

(assert (= (or b!4322279 b!4322278) bm!299683))

(assert (= (or b!4322280 bm!299683) bm!299682))

(assert (= (or b!4322282 bm!299682) bm!299681))

(assert (= (and bm!299681 c!735208) b!4322283))

(assert (= (and bm!299681 (not c!735208)) b!4322277))

(assert (= (and d!1270853 res!1771370) b!4322284))

(assert (= (and b!4322284 res!1771371) b!4322276))

(declare-fun m!4916437 () Bool)

(assert (=> b!4322284 m!4916437))

(declare-fun m!4916439 () Bool)

(assert (=> d!1270853 m!4916439))

(declare-fun m!4916441 () Bool)

(assert (=> d!1270853 m!4916441))

(declare-fun m!4916443 () Bool)

(assert (=> b!4322283 m!4916443))

(declare-fun m!4916445 () Bool)

(assert (=> b!4322276 m!4916445))

(declare-fun m!4916447 () Bool)

(assert (=> bm!299681 m!4916447))

(assert (=> b!4321611 d!1270853))

(declare-fun d!1270855 () Bool)

(declare-fun res!1771372 () Bool)

(declare-fun e!2689110 () Bool)

(assert (=> d!1270855 (=> res!1771372 e!2689110)))

(assert (=> d!1270855 (= res!1771372 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539311))))))

(assert (=> d!1270855 (= (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133846) e!2689110)))

(declare-fun b!4322285 () Bool)

(declare-fun e!2689111 () Bool)

(assert (=> b!4322285 (= e!2689110 e!2689111)))

(declare-fun res!1771373 () Bool)

(assert (=> b!4322285 (=> (not res!1771373) (not e!2689111))))

(assert (=> b!4322285 (= res!1771373 (dynLambda!20507 lambda!133846 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))

(declare-fun b!4322286 () Bool)

(assert (=> b!4322286 (= e!2689111 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539311))) lambda!133846))))

(assert (= (and d!1270855 (not res!1771372)) b!4322285))

(assert (= (and b!4322285 res!1771373) b!4322286))

(declare-fun b_lambda!127305 () Bool)

(assert (=> (not b_lambda!127305) (not b!4322285)))

(declare-fun m!4916449 () Bool)

(assert (=> b!4322285 m!4916449))

(declare-fun m!4916451 () Bool)

(assert (=> b!4322286 m!4916451))

(assert (=> b!4321721 d!1270855))

(declare-fun d!1270857 () Bool)

(assert (=> d!1270857 (= (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310)) (not (isEmpty!28120 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))))

(declare-fun bs!606647 () Bool)

(assert (= bs!606647 d!1270857))

(assert (=> bs!606647 m!4915275))

(declare-fun m!4916453 () Bool)

(assert (=> bs!606647 m!4916453))

(assert (=> b!4321816 d!1270857))

(assert (=> b!4321816 d!1270561))

(declare-fun lt!1540136 () array!17234)

(declare-fun c!735214 () Bool)

(declare-fun lt!1540131 () (_ BitVec 32))

(declare-fun c!735211 () Bool)

(declare-fun call!299706 () ListLongMap!1171)

(declare-fun bm!299684 () Bool)

(assert (=> bm!299684 (= call!299706 (getCurrentListMap!24 (_keys!5066 call!299600) (ite c!735214 (_values!5044 call!299600) lt!1540136) (mask!13375 call!299600) (ite c!735214 (ite c!735211 (extraKeys!5010 call!299600) lt!1540131) (extraKeys!5010 call!299600)) (zeroValue!5021 call!299600) (ite c!735214 (ite c!735211 (minValue!5021 call!299600) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (minValue!5021 call!299600)) #b00000000000000000000000000000000 (defaultEntry!5148 call!299600)))))

(declare-fun b!4322287 () Bool)

(declare-fun e!2689132 () Bool)

(declare-fun lt!1540145 () SeekEntryResult!21)

(assert (=> b!4322287 (= e!2689132 ((_ is Undefined!21) lt!1540145))))

(declare-fun b!4322288 () Bool)

(declare-fun c!735216 () Bool)

(assert (=> b!4322288 (= c!735216 ((_ is MissingVacant!21) lt!1540145))))

(declare-fun e!2689118 () Bool)

(assert (=> b!4322288 (= e!2689118 e!2689132)))

(declare-fun b!4322289 () Bool)

(declare-fun e!2689120 () ListLongMap!1171)

(assert (=> b!4322289 (= e!2689120 call!299706)))

(declare-fun b!4322290 () Bool)

(declare-fun e!2689116 () Unit!67766)

(declare-fun lt!1540127 () Unit!67766)

(assert (=> b!4322290 (= e!2689116 lt!1540127)))

(declare-fun call!299696 () Unit!67766)

(assert (=> b!4322290 (= lt!1540127 call!299696)))

(declare-fun lt!1540124 () SeekEntryResult!21)

(declare-fun call!299698 () SeekEntryResult!21)

(assert (=> b!4322290 (= lt!1540124 call!299698)))

(declare-fun res!1771374 () Bool)

(assert (=> b!4322290 (= res!1771374 ((_ is Found!21) lt!1540124))))

(declare-fun e!2689113 () Bool)

(assert (=> b!4322290 (=> (not res!1771374) (not e!2689113))))

(assert (=> b!4322290 e!2689113))

(declare-fun bm!299685 () Bool)

(declare-fun c!735221 () Bool)

(declare-fun c!735219 () Bool)

(assert (=> bm!299685 (= c!735221 c!735219)))

(declare-fun lt!1540134 () SeekEntryResult!21)

(declare-fun call!299712 () Bool)

(assert (=> bm!299685 (= call!299712 (contains!10426 e!2689120 (ite c!735219 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!7691 (_keys!5066 call!299600)) (index!1464 lt!1540134)))))))

(declare-fun b!4322291 () Bool)

(declare-fun e!2689130 () tuple2!47190)

(declare-fun e!2689126 () tuple2!47190)

(assert (=> b!4322291 (= e!2689130 e!2689126)))

(assert (=> b!4322291 (= c!735211 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!1270859 () Bool)

(declare-fun e!2689129 () Bool)

(assert (=> d!1270859 e!2689129))

(declare-fun res!1771386 () Bool)

(assert (=> d!1270859 (=> (not res!1771386) (not e!2689129))))

(declare-fun lt!1540140 () tuple2!47190)

(assert (=> d!1270859 (= res!1771386 (valid!3765 (_2!26881 lt!1540140)))))

(assert (=> d!1270859 (= lt!1540140 e!2689130)))

(assert (=> d!1270859 (= c!735214 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!1270859 (valid!3765 call!299600)))

(assert (=> d!1270859 (= (update!530 call!299600 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540140)))

(declare-fun b!4322292 () Bool)

(declare-fun c!735212 () Bool)

(declare-fun lt!1540143 () SeekEntryResult!21)

(assert (=> b!4322292 (= c!735212 ((_ is MissingVacant!21) lt!1540143))))

(declare-fun e!2689122 () Bool)

(declare-fun e!2689123 () Bool)

(assert (=> b!4322292 (= e!2689122 e!2689123)))

(declare-fun bm!299686 () Bool)

(declare-fun call!299695 () SeekEntryResult!21)

(declare-fun call!299710 () SeekEntryResult!21)

(assert (=> bm!299686 (= call!299695 call!299710)))

(declare-fun bm!299687 () Bool)

(declare-fun call!299694 () Bool)

(declare-fun call!299693 () Bool)

(assert (=> bm!299687 (= call!299694 call!299693)))

(declare-fun b!4322293 () Bool)

(declare-fun e!2689119 () Bool)

(declare-fun call!299689 () Bool)

(assert (=> b!4322293 (= e!2689119 (not call!299689))))

(declare-fun b!4322294 () Bool)

(declare-fun e!2689117 () Bool)

(declare-fun call!299701 () Bool)

(assert (=> b!4322294 (= e!2689117 (not call!299701))))

(declare-fun bm!299688 () Bool)

(declare-fun call!299697 () Bool)

(declare-fun call!299699 () Bool)

(assert (=> bm!299688 (= call!299697 call!299699)))

(declare-fun b!4322295 () Bool)

(declare-fun e!2689121 () tuple2!47190)

(declare-fun e!2689131 () tuple2!47190)

(assert (=> b!4322295 (= e!2689121 e!2689131)))

(declare-fun c!735220 () Bool)

(assert (=> b!4322295 (= c!735220 ((_ is MissingZero!21) lt!1540134))))

(declare-fun bm!299689 () Bool)

(assert (=> bm!299689 (= call!299699 call!299693)))

(declare-fun b!4322296 () Bool)

(declare-fun lt!1540139 () Unit!67766)

(declare-fun lt!1540132 () Unit!67766)

(assert (=> b!4322296 (= lt!1540139 lt!1540132)))

(assert (=> b!4322296 call!299712))

(assert (=> b!4322296 (= lt!1540132 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 call!299600) lt!1540136 (mask!13375 call!299600) (extraKeys!5010 call!299600) (zeroValue!5021 call!299600) (minValue!5021 call!299600) (index!1464 lt!1540134) (defaultEntry!5148 call!299600)))))

(assert (=> b!4322296 (= lt!1540136 (array!17235 (store (arr!7692 (_values!5044 call!299600)) (index!1464 lt!1540134) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (size!35731 (_values!5044 call!299600))))))

(declare-fun lt!1540144 () Unit!67766)

(declare-fun lt!1540122 () Unit!67766)

(assert (=> b!4322296 (= lt!1540144 lt!1540122)))

(declare-fun call!299708 () ListLongMap!1171)

(assert (=> b!4322296 (= call!299708 (getCurrentListMap!24 (_keys!5066 call!299600) (array!17235 (store (arr!7692 (_values!5044 call!299600)) (index!1464 lt!1540134) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (size!35731 (_values!5044 call!299600))) (mask!13375 call!299600) (extraKeys!5010 call!299600) (zeroValue!5021 call!299600) (minValue!5021 call!299600) #b00000000000000000000000000000000 (defaultEntry!5148 call!299600)))))

(assert (=> b!4322296 (= lt!1540122 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (_keys!5066 call!299600) (_values!5044 call!299600) (mask!13375 call!299600) (extraKeys!5010 call!299600) (zeroValue!5021 call!299600) (minValue!5021 call!299600) (index!1464 lt!1540134) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (defaultEntry!5148 call!299600)))))

(declare-fun lt!1540120 () Unit!67766)

(assert (=> b!4322296 (= lt!1540120 e!2689116)))

(declare-fun c!735215 () Bool)

(declare-fun call!299700 () ListLongMap!1171)

(assert (=> b!4322296 (= c!735215 (contains!10426 call!299700 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4322296 (= e!2689131 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 call!299600) (mask!13375 call!299600) (extraKeys!5010 call!299600) (zeroValue!5021 call!299600) (minValue!5021 call!299600) (_size!9550 call!299600) (_keys!5066 call!299600) (array!17235 (store (arr!7692 (_values!5044 call!299600)) (index!1464 lt!1540134) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (size!35731 (_values!5044 call!299600))) (_vacant!4815 call!299600))))))

(declare-fun bm!299690 () Bool)

(declare-fun call!299703 () Bool)

(assert (=> bm!299690 (= call!299703 call!299694)))

(declare-fun b!4322297 () Bool)

(declare-fun e!2689114 () Unit!67766)

(declare-fun lt!1540137 () Unit!67766)

(assert (=> b!4322297 (= e!2689114 lt!1540137)))

(declare-fun call!299702 () Unit!67766)

(assert (=> b!4322297 (= lt!1540137 call!299702)))

(assert (=> b!4322297 (= lt!1540143 call!299695)))

(declare-fun c!735223 () Bool)

(assert (=> b!4322297 (= c!735223 ((_ is MissingZero!21) lt!1540143))))

(assert (=> b!4322297 e!2689122))

(declare-fun bm!299691 () Bool)

(declare-fun call!299705 () ListLongMap!1171)

(declare-fun call!299690 () ListLongMap!1171)

(assert (=> bm!299691 (= call!299705 call!299690)))

(declare-fun b!4322298 () Bool)

(declare-fun res!1771377 () Bool)

(assert (=> b!4322298 (=> (not res!1771377) (not e!2689119))))

(assert (=> b!4322298 (= res!1771377 (= (select (arr!7691 (_keys!5066 call!299600)) (index!1465 lt!1540143)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322299 () Bool)

(assert (=> b!4322299 (= e!2689113 (= (select (arr!7691 (_keys!5066 call!299600)) (index!1464 lt!1540124)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322300 () Bool)

(declare-fun res!1771380 () Bool)

(assert (=> b!4322300 (=> (not res!1771380) (not e!2689117))))

(assert (=> b!4322300 (= res!1771380 (= (select (arr!7691 (_keys!5066 call!299600)) (index!1465 lt!1540145)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299692 () Bool)

(assert (=> bm!299692 (= call!299698 call!299710)))

(declare-fun e!2689125 () Bool)

(declare-fun call!299711 () ListLongMap!1171)

(declare-fun b!4322301 () Bool)

(declare-fun call!299691 () ListLongMap!1171)

(assert (=> b!4322301 (= e!2689125 (= call!299711 (+!330 call!299691 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun b!4322302 () Bool)

(declare-fun res!1771376 () Bool)

(assert (=> b!4322302 (=> (not res!1771376) (not e!2689117))))

(assert (=> b!4322302 (= res!1771376 call!299703)))

(assert (=> b!4322302 (= e!2689118 e!2689117)))

(declare-fun b!4322303 () Bool)

(declare-fun lt!1540126 () tuple2!47190)

(declare-fun call!299709 () tuple2!47190)

(assert (=> b!4322303 (= lt!1540126 call!299709)))

(assert (=> b!4322303 (= e!2689131 (tuple2!47191 (_1!26881 lt!1540126) (_2!26881 lt!1540126)))))

(declare-fun bm!299693 () Bool)

(declare-fun call!299707 () ListLongMap!1171)

(assert (=> bm!299693 (= call!299707 call!299706)))

(declare-fun bm!299694 () Bool)

(assert (=> bm!299694 (= call!299710 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5066 call!299600) (mask!13375 call!299600)))))

(declare-fun b!4322304 () Bool)

(declare-fun res!1771378 () Bool)

(assert (=> b!4322304 (= res!1771378 (= (select (arr!7691 (_keys!5066 call!299600)) (index!1466 lt!1540145)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2689124 () Bool)

(assert (=> b!4322304 (=> (not res!1771378) (not e!2689124))))

(declare-fun bm!299695 () Bool)

(assert (=> bm!299695 (= call!299702 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!5066 call!299600) (_values!5044 call!299600) (mask!13375 call!299600) (extraKeys!5010 call!299600) (zeroValue!5021 call!299600) (minValue!5021 call!299600) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5148 call!299600)))))

(declare-fun b!4322305 () Bool)

(declare-fun e!2689128 () Bool)

(assert (=> b!4322305 (= e!2689129 e!2689128)))

(declare-fun c!735218 () Bool)

(assert (=> b!4322305 (= c!735218 (_1!26881 lt!1540140))))

(declare-fun b!4322306 () Bool)

(assert (=> b!4322306 (= e!2689123 ((_ is Undefined!21) lt!1540143))))

(declare-fun bm!299696 () Bool)

(assert (=> bm!299696 (= call!299691 (map!10407 call!299600))))

(declare-fun b!4322307 () Bool)

(assert (=> b!4322307 (= e!2689120 call!299700)))

(declare-fun b!4322308 () Bool)

(declare-fun e!2689112 () tuple2!47190)

(assert (=> b!4322308 (= e!2689130 e!2689112)))

(assert (=> b!4322308 (= lt!1540134 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5066 call!299600) (mask!13375 call!299600)))))

(assert (=> b!4322308 (= c!735219 ((_ is Undefined!21) lt!1540134))))

(declare-fun bm!299697 () Bool)

(assert (=> bm!299697 (= call!299708 (+!330 (ite c!735214 (ite c!735211 call!299707 call!299705) call!299700) (ite c!735214 (ite c!735211 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun b!4322309 () Bool)

(declare-fun res!1771383 () Bool)

(assert (=> b!4322309 (= res!1771383 (= (select (arr!7691 (_keys!5066 call!299600)) (index!1466 lt!1540143)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2689127 () Bool)

(assert (=> b!4322309 (=> (not res!1771383) (not e!2689127))))

(declare-fun lt!1540146 () (_ BitVec 32))

(declare-fun bm!299698 () Bool)

(assert (=> bm!299698 (= call!299690 (getCurrentListMap!24 (_keys!5066 call!299600) (_values!5044 call!299600) (mask!13375 call!299600) (ite (and c!735214 c!735211) lt!1540146 (extraKeys!5010 call!299600)) (ite (and c!735214 c!735211) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 call!299600)) (minValue!5021 call!299600) #b00000000000000000000000000000000 (defaultEntry!5148 call!299600)))))

(declare-fun b!4322310 () Bool)

(assert (=> b!4322310 (= e!2689124 (not call!299701))))

(declare-fun b!4322311 () Bool)

(assert (=> b!4322311 (= e!2689128 e!2689125)))

(declare-fun res!1771384 () Bool)

(assert (=> b!4322311 (= res!1771384 (contains!10426 call!299711 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4322311 (=> (not res!1771384) (not e!2689125))))

(declare-fun b!4322312 () Bool)

(assert (=> b!4322312 (= e!2689132 e!2689124)))

(declare-fun res!1771379 () Bool)

(assert (=> b!4322312 (= res!1771379 call!299703)))

(assert (=> b!4322312 (=> (not res!1771379) (not e!2689124))))

(declare-fun bm!299699 () Bool)

(declare-fun call!299692 () Bool)

(assert (=> bm!299699 (= call!299692 (arrayContainsKey!0 (_keys!5066 call!299600) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun bm!299700 () Bool)

(assert (=> bm!299700 (= call!299701 call!299692)))

(declare-fun b!4322313 () Bool)

(declare-fun Unit!67806 () Unit!67766)

(assert (=> b!4322313 (= e!2689114 Unit!67806)))

(declare-fun lt!1540142 () Unit!67766)

(assert (=> b!4322313 (= lt!1540142 call!299696)))

(declare-fun lt!1540135 () SeekEntryResult!21)

(assert (=> b!4322313 (= lt!1540135 call!299695)))

(declare-fun res!1771387 () Bool)

(assert (=> b!4322313 (= res!1771387 ((_ is Found!21) lt!1540135))))

(declare-fun e!2689115 () Bool)

(assert (=> b!4322313 (=> (not res!1771387) (not e!2689115))))

(assert (=> b!4322313 e!2689115))

(declare-fun lt!1540128 () Unit!67766)

(assert (=> b!4322313 (= lt!1540128 lt!1540142)))

(assert (=> b!4322313 false))

(declare-fun bm!299701 () Bool)

(declare-fun c!735222 () Bool)

(assert (=> bm!299701 (= call!299709 (updateHelperNewKey!11 call!299600 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735222 (index!1466 lt!1540134) (index!1465 lt!1540134))))))

(declare-fun bm!299702 () Bool)

(assert (=> bm!299702 (= call!299689 call!299692)))

(declare-fun b!4322314 () Bool)

(declare-fun res!1771381 () Bool)

(assert (=> b!4322314 (=> (not res!1771381) (not e!2689119))))

(assert (=> b!4322314 (= res!1771381 call!299697)))

(assert (=> b!4322314 (= e!2689122 e!2689119)))

(declare-fun b!4322315 () Bool)

(declare-fun Unit!67807 () Unit!67766)

(assert (=> b!4322315 (= e!2689116 Unit!67807)))

(declare-fun lt!1540129 () Unit!67766)

(assert (=> b!4322315 (= lt!1540129 call!299702)))

(assert (=> b!4322315 (= lt!1540145 call!299698)))

(declare-fun c!735213 () Bool)

(assert (=> b!4322315 (= c!735213 ((_ is MissingZero!21) lt!1540145))))

(assert (=> b!4322315 e!2689118))

(declare-fun lt!1540141 () Unit!67766)

(assert (=> b!4322315 (= lt!1540141 lt!1540129)))

(assert (=> b!4322315 false))

(declare-fun b!4322316 () Bool)

(declare-fun lt!1540138 () Unit!67766)

(assert (=> b!4322316 (= lt!1540138 e!2689114)))

(declare-fun c!735217 () Bool)

(assert (=> b!4322316 (= c!735217 call!299712)))

(assert (=> b!4322316 (= e!2689112 (tuple2!47191 false call!299600))))

(declare-fun b!4322317 () Bool)

(declare-fun lt!1540123 () Unit!67766)

(declare-fun lt!1540130 () Unit!67766)

(assert (=> b!4322317 (= lt!1540123 lt!1540130)))

(declare-fun call!299704 () ListLongMap!1171)

(assert (=> b!4322317 (= call!299704 call!299707)))

(assert (=> b!4322317 (= lt!1540130 (lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (_keys!5066 call!299600) (_values!5044 call!299600) (mask!13375 call!299600) (extraKeys!5010 call!299600) lt!1540131 (zeroValue!5021 call!299600) (minValue!5021 call!299600) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (defaultEntry!5148 call!299600)))))

(assert (=> b!4322317 (= lt!1540131 (bvor (extraKeys!5010 call!299600) #b00000000000000000000000000000010))))

(assert (=> b!4322317 (= e!2689126 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 call!299600) (mask!13375 call!299600) (bvor (extraKeys!5010 call!299600) #b00000000000000000000000000000010) (zeroValue!5021 call!299600) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_size!9550 call!299600) (_keys!5066 call!299600) (_values!5044 call!299600) (_vacant!4815 call!299600))))))

(declare-fun b!4322318 () Bool)

(assert (=> b!4322318 (= e!2689115 (= (select (arr!7691 (_keys!5066 call!299600)) (index!1464 lt!1540135)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322319 () Bool)

(assert (=> b!4322319 (= e!2689128 (= call!299711 call!299691))))

(declare-fun bm!299703 () Bool)

(assert (=> bm!299703 (= call!299704 call!299708)))

(declare-fun b!4322320 () Bool)

(declare-fun lt!1540121 () tuple2!47190)

(assert (=> b!4322320 (= e!2689121 (tuple2!47191 (_1!26881 lt!1540121) (_2!26881 lt!1540121)))))

(assert (=> b!4322320 (= lt!1540121 call!299709)))

(declare-fun bm!299704 () Bool)

(assert (=> bm!299704 (= call!299696 (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!5066 call!299600) (_values!5044 call!299600) (mask!13375 call!299600) (extraKeys!5010 call!299600) (zeroValue!5021 call!299600) (minValue!5021 call!299600) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5148 call!299600)))))

(declare-fun bm!299705 () Bool)

(assert (=> bm!299705 (= call!299711 (map!10407 (_2!26881 lt!1540140)))))

(declare-fun b!4322321 () Bool)

(assert (=> b!4322321 (= c!735222 ((_ is MissingVacant!21) lt!1540134))))

(assert (=> b!4322321 (= e!2689112 e!2689121)))

(declare-fun b!4322322 () Bool)

(declare-fun res!1771385 () Bool)

(assert (=> b!4322322 (= res!1771385 call!299699)))

(assert (=> b!4322322 (=> (not res!1771385) (not e!2689115))))

(declare-fun bm!299706 () Bool)

(assert (=> bm!299706 (= call!299693 (inRange!0 (ite c!735219 (ite c!735217 (index!1464 lt!1540135) (ite c!735223 (index!1465 lt!1540143) (index!1466 lt!1540143))) (ite c!735215 (index!1464 lt!1540124) (ite c!735213 (index!1465 lt!1540145) (index!1466 lt!1540145)))) (mask!13375 call!299600)))))

(declare-fun b!4322323 () Bool)

(declare-fun res!1771382 () Bool)

(assert (=> b!4322323 (= res!1771382 call!299694)))

(assert (=> b!4322323 (=> (not res!1771382) (not e!2689113))))

(declare-fun b!4322324 () Bool)

(declare-fun lt!1540125 () Unit!67766)

(declare-fun lt!1540133 () Unit!67766)

(assert (=> b!4322324 (= lt!1540125 lt!1540133)))

(assert (=> b!4322324 (= call!299704 call!299705)))

(assert (=> b!4322324 (= lt!1540133 (lemmaChangeZeroKeyThenAddPairToListMap!11 (_keys!5066 call!299600) (_values!5044 call!299600) (mask!13375 call!299600) (extraKeys!5010 call!299600) lt!1540146 (zeroValue!5021 call!299600) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 call!299600) (defaultEntry!5148 call!299600)))))

(assert (=> b!4322324 (= lt!1540146 (bvor (extraKeys!5010 call!299600) #b00000000000000000000000000000001))))

(assert (=> b!4322324 (= e!2689126 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 call!299600) (mask!13375 call!299600) (bvor (extraKeys!5010 call!299600) #b00000000000000000000000000000001) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 call!299600) (_size!9550 call!299600) (_keys!5066 call!299600) (_values!5044 call!299600) (_vacant!4815 call!299600))))))

(declare-fun bm!299707 () Bool)

(assert (=> bm!299707 (= call!299700 call!299690)))

(declare-fun b!4322325 () Bool)

(assert (=> b!4322325 (= e!2689127 (not call!299689))))

(declare-fun b!4322326 () Bool)

(assert (=> b!4322326 (= e!2689123 e!2689127)))

(declare-fun res!1771375 () Bool)

(assert (=> b!4322326 (= res!1771375 call!299697)))

(assert (=> b!4322326 (=> (not res!1771375) (not e!2689127))))

(assert (= (and d!1270859 c!735214) b!4322291))

(assert (= (and d!1270859 (not c!735214)) b!4322308))

(assert (= (and b!4322291 c!735211) b!4322324))

(assert (= (and b!4322291 (not c!735211)) b!4322317))

(assert (= (or b!4322324 b!4322317) bm!299693))

(assert (= (or b!4322324 b!4322317) bm!299691))

(assert (= (or b!4322324 b!4322317) bm!299703))

(assert (= (and b!4322308 c!735219) b!4322316))

(assert (= (and b!4322308 (not c!735219)) b!4322321))

(assert (= (and b!4322316 c!735217) b!4322313))

(assert (= (and b!4322316 (not c!735217)) b!4322297))

(assert (= (and b!4322313 res!1771387) b!4322322))

(assert (= (and b!4322322 res!1771385) b!4322318))

(assert (= (and b!4322297 c!735223) b!4322314))

(assert (= (and b!4322297 (not c!735223)) b!4322292))

(assert (= (and b!4322314 res!1771381) b!4322298))

(assert (= (and b!4322298 res!1771377) b!4322293))

(assert (= (and b!4322292 c!735212) b!4322326))

(assert (= (and b!4322292 (not c!735212)) b!4322306))

(assert (= (and b!4322326 res!1771375) b!4322309))

(assert (= (and b!4322309 res!1771383) b!4322325))

(assert (= (or b!4322293 b!4322325) bm!299702))

(assert (= (or b!4322314 b!4322326) bm!299688))

(assert (= (or b!4322322 bm!299688) bm!299689))

(assert (= (or b!4322313 b!4322297) bm!299686))

(assert (= (and b!4322321 c!735222) b!4322320))

(assert (= (and b!4322321 (not c!735222)) b!4322295))

(assert (= (and b!4322295 c!735220) b!4322303))

(assert (= (and b!4322295 (not c!735220)) b!4322296))

(assert (= (and b!4322296 c!735215) b!4322290))

(assert (= (and b!4322296 (not c!735215)) b!4322315))

(assert (= (and b!4322290 res!1771374) b!4322323))

(assert (= (and b!4322323 res!1771382) b!4322299))

(assert (= (and b!4322315 c!735213) b!4322302))

(assert (= (and b!4322315 (not c!735213)) b!4322288))

(assert (= (and b!4322302 res!1771376) b!4322300))

(assert (= (and b!4322300 res!1771380) b!4322294))

(assert (= (and b!4322288 c!735216) b!4322312))

(assert (= (and b!4322288 (not c!735216)) b!4322287))

(assert (= (and b!4322312 res!1771379) b!4322304))

(assert (= (and b!4322304 res!1771378) b!4322310))

(assert (= (or b!4322294 b!4322310) bm!299700))

(assert (= (or b!4322302 b!4322312) bm!299690))

(assert (= (or b!4322323 bm!299690) bm!299687))

(assert (= (or b!4322290 b!4322315) bm!299692))

(assert (= (or b!4322320 b!4322303) bm!299701))

(assert (= (or bm!299689 bm!299687) bm!299706))

(assert (= (or bm!299686 bm!299692) bm!299694))

(assert (= (or b!4322297 b!4322315) bm!299695))

(assert (= (or b!4322313 b!4322290) bm!299704))

(assert (= (or bm!299702 bm!299700) bm!299699))

(assert (= (or b!4322316 b!4322296) bm!299707))

(assert (= (or b!4322316 b!4322296) bm!299685))

(assert (= (and bm!299685 c!735221) b!4322307))

(assert (= (and bm!299685 (not c!735221)) b!4322289))

(assert (= (or bm!299693 b!4322289) bm!299684))

(assert (= (or bm!299691 bm!299707) bm!299698))

(assert (= (or bm!299703 b!4322296) bm!299697))

(assert (= (and d!1270859 res!1771386) b!4322305))

(assert (= (and b!4322305 c!735218) b!4322311))

(assert (= (and b!4322305 (not c!735218)) b!4322319))

(assert (= (and b!4322311 res!1771384) b!4322301))

(assert (= (or b!4322301 b!4322319) bm!299696))

(assert (= (or b!4322311 b!4322301 b!4322319) bm!299705))

(declare-fun m!4916455 () Bool)

(assert (=> b!4322324 m!4916455))

(declare-fun m!4916457 () Bool)

(assert (=> bm!299704 m!4916457))

(declare-fun m!4916459 () Bool)

(assert (=> b!4322311 m!4916459))

(declare-fun m!4916461 () Bool)

(assert (=> b!4322296 m!4916461))

(declare-fun m!4916463 () Bool)

(assert (=> b!4322296 m!4916463))

(declare-fun m!4916465 () Bool)

(assert (=> b!4322296 m!4916465))

(declare-fun m!4916467 () Bool)

(assert (=> b!4322296 m!4916467))

(declare-fun m!4916469 () Bool)

(assert (=> b!4322296 m!4916469))

(declare-fun m!4916471 () Bool)

(assert (=> b!4322309 m!4916471))

(declare-fun m!4916473 () Bool)

(assert (=> bm!299684 m!4916473))

(declare-fun m!4916475 () Bool)

(assert (=> bm!299701 m!4916475))

(declare-fun m!4916477 () Bool)

(assert (=> b!4322304 m!4916477))

(declare-fun m!4916479 () Bool)

(assert (=> b!4322301 m!4916479))

(declare-fun m!4916481 () Bool)

(assert (=> bm!299699 m!4916481))

(declare-fun m!4916483 () Bool)

(assert (=> d!1270859 m!4916483))

(declare-fun m!4916485 () Bool)

(assert (=> d!1270859 m!4916485))

(declare-fun m!4916487 () Bool)

(assert (=> b!4322317 m!4916487))

(declare-fun m!4916489 () Bool)

(assert (=> bm!299685 m!4916489))

(declare-fun m!4916491 () Bool)

(assert (=> bm!299685 m!4916491))

(declare-fun m!4916493 () Bool)

(assert (=> bm!299694 m!4916493))

(declare-fun m!4916495 () Bool)

(assert (=> b!4322318 m!4916495))

(declare-fun m!4916497 () Bool)

(assert (=> b!4322299 m!4916497))

(declare-fun m!4916499 () Bool)

(assert (=> b!4322300 m!4916499))

(assert (=> b!4322308 m!4916493))

(declare-fun m!4916501 () Bool)

(assert (=> bm!299706 m!4916501))

(declare-fun m!4916503 () Bool)

(assert (=> bm!299695 m!4916503))

(declare-fun m!4916505 () Bool)

(assert (=> bm!299698 m!4916505))

(declare-fun m!4916507 () Bool)

(assert (=> b!4322298 m!4916507))

(declare-fun m!4916509 () Bool)

(assert (=> bm!299697 m!4916509))

(declare-fun m!4916511 () Bool)

(assert (=> bm!299705 m!4916511))

(declare-fun m!4916513 () Bool)

(assert (=> bm!299696 m!4916513))

(assert (=> b!4321534 d!1270859))

(declare-fun lt!1540147 () Bool)

(declare-fun d!1270861 () Bool)

(assert (=> d!1270861 (= lt!1540147 (select (content!7570 (t!355382 lt!1539416)) (tuple2!47187 lt!1539410 lt!1539424)))))

(declare-fun e!2689134 () Bool)

(assert (=> d!1270861 (= lt!1540147 e!2689134)))

(declare-fun res!1771389 () Bool)

(assert (=> d!1270861 (=> (not res!1771389) (not e!2689134))))

(assert (=> d!1270861 (= res!1771389 ((_ is Cons!48379) (t!355382 lt!1539416)))))

(assert (=> d!1270861 (= (contains!10428 (t!355382 lt!1539416) (tuple2!47187 lt!1539410 lt!1539424)) lt!1540147)))

(declare-fun b!4322327 () Bool)

(declare-fun e!2689133 () Bool)

(assert (=> b!4322327 (= e!2689134 e!2689133)))

(declare-fun res!1771388 () Bool)

(assert (=> b!4322327 (=> res!1771388 e!2689133)))

(assert (=> b!4322327 (= res!1771388 (= (h!53839 (t!355382 lt!1539416)) (tuple2!47187 lt!1539410 lt!1539424)))))

(declare-fun b!4322328 () Bool)

(assert (=> b!4322328 (= e!2689133 (contains!10428 (t!355382 (t!355382 lt!1539416)) (tuple2!47187 lt!1539410 lt!1539424)))))

(assert (= (and d!1270861 res!1771389) b!4322327))

(assert (= (and b!4322327 (not res!1771388)) b!4322328))

(declare-fun m!4916515 () Bool)

(assert (=> d!1270861 m!4916515))

(declare-fun m!4916517 () Bool)

(assert (=> d!1270861 m!4916517))

(declare-fun m!4916519 () Bool)

(assert (=> b!4322328 m!4916519))

(assert (=> b!4321691 d!1270861))

(declare-fun d!1270863 () Bool)

(declare-fun e!2689137 () Bool)

(assert (=> d!1270863 e!2689137))

(declare-fun res!1771395 () Bool)

(assert (=> d!1270863 (=> (not res!1771395) (not e!2689137))))

(declare-fun lt!1540152 () SeekEntryResult!21)

(assert (=> d!1270863 (= res!1771395 ((_ is Found!21) lt!1540152))))

(assert (=> d!1270863 (= lt!1540152 (seekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540153 () Unit!67766)

(declare-fun choose!26410 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) Int) Unit!67766)

(assert (=> d!1270863 (= lt!1540153 (choose!26410 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1270863 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270863 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540153)))

(declare-fun b!4322333 () Bool)

(declare-fun res!1771394 () Bool)

(assert (=> b!4322333 (=> (not res!1771394) (not e!2689137))))

(assert (=> b!4322333 (= res!1771394 (inRange!0 (index!1464 lt!1540152) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322334 () Bool)

(assert (=> b!4322334 (= e!2689137 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1540152)) lt!1539310))))

(assert (=> b!4322334 (and (bvsge (index!1464 lt!1540152) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1540152) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (= (and d!1270863 res!1771395) b!4322333))

(assert (= (and b!4322333 res!1771394) b!4322334))

(assert (=> d!1270863 m!4915431))

(declare-fun m!4916521 () Bool)

(assert (=> d!1270863 m!4916521))

(assert (=> d!1270863 m!4915875))

(declare-fun m!4916523 () Bool)

(assert (=> b!4322333 m!4916523))

(declare-fun m!4916525 () Bool)

(assert (=> b!4322334 m!4916525))

(assert (=> bm!299580 d!1270863))

(assert (=> d!1270633 d!1270631))

(assert (=> d!1270633 d!1270635))

(declare-fun d!1270865 () Bool)

(assert (=> d!1270865 (isDefined!7602 (getValueByKey!297 lt!1539408 lt!1539410))))

(assert (=> d!1270865 true))

(declare-fun _$13!1433 () Unit!67766)

(assert (=> d!1270865 (= (choose!26400 lt!1539408 lt!1539410) _$13!1433)))

(declare-fun bs!606648 () Bool)

(assert (= bs!606648 d!1270865))

(assert (=> bs!606648 m!4915337))

(assert (=> bs!606648 m!4915337))

(assert (=> bs!606648 m!4915339))

(assert (=> d!1270633 d!1270865))

(declare-fun d!1270867 () Bool)

(declare-fun res!1771396 () Bool)

(declare-fun e!2689138 () Bool)

(assert (=> d!1270867 (=> res!1771396 e!2689138)))

(assert (=> d!1270867 (= res!1771396 (or ((_ is Nil!48379) lt!1539408) ((_ is Nil!48379) (t!355382 lt!1539408))))))

(assert (=> d!1270867 (= (isStrictlySorted!21 lt!1539408) e!2689138)))

(declare-fun b!4322335 () Bool)

(declare-fun e!2689139 () Bool)

(assert (=> b!4322335 (= e!2689138 e!2689139)))

(declare-fun res!1771397 () Bool)

(assert (=> b!4322335 (=> (not res!1771397) (not e!2689139))))

(assert (=> b!4322335 (= res!1771397 (bvslt (_1!26879 (h!53839 lt!1539408)) (_1!26879 (h!53839 (t!355382 lt!1539408)))))))

(declare-fun b!4322336 () Bool)

(assert (=> b!4322336 (= e!2689139 (isStrictlySorted!21 (t!355382 lt!1539408)))))

(assert (= (and d!1270867 (not res!1771396)) b!4322335))

(assert (= (and b!4322335 res!1771397) b!4322336))

(declare-fun m!4916527 () Bool)

(assert (=> b!4322336 m!4916527))

(assert (=> d!1270633 d!1270867))

(declare-fun d!1270869 () Bool)

(declare-fun res!1771398 () Bool)

(declare-fun e!2689140 () Bool)

(assert (=> d!1270869 (=> res!1771398 e!2689140)))

(assert (=> d!1270869 (= res!1771398 (not ((_ is Cons!48378) (_2!26879 (h!53839 (toList!2554 lt!1539353))))))))

(assert (=> d!1270869 (= (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539353)))) e!2689140)))

(declare-fun b!4322337 () Bool)

(declare-fun e!2689141 () Bool)

(assert (=> b!4322337 (= e!2689140 e!2689141)))

(declare-fun res!1771399 () Bool)

(assert (=> b!4322337 (=> (not res!1771399) (not e!2689141))))

(assert (=> b!4322337 (= res!1771399 (not (containsKey!400 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539353)))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539353))))))))))

(declare-fun b!4322338 () Bool)

(assert (=> b!4322338 (= e!2689141 (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539353))))))))

(assert (= (and d!1270869 (not res!1771398)) b!4322337))

(assert (= (and b!4322337 res!1771399) b!4322338))

(declare-fun m!4916529 () Bool)

(assert (=> b!4322337 m!4916529))

(declare-fun m!4916531 () Bool)

(assert (=> b!4322338 m!4916531))

(assert (=> bs!606593 d!1270869))

(declare-fun d!1270871 () Bool)

(declare-fun res!1771400 () Bool)

(declare-fun e!2689142 () Bool)

(assert (=> d!1270871 (=> res!1771400 e!2689142)))

(assert (=> d!1270871 (= res!1771400 (and ((_ is Cons!48379) (toList!2554 call!299497)) (= (_1!26879 (h!53839 (toList!2554 call!299497))) lt!1539310)))))

(assert (=> d!1270871 (= (containsKey!401 (toList!2554 call!299497) lt!1539310) e!2689142)))

(declare-fun b!4322339 () Bool)

(declare-fun e!2689143 () Bool)

(assert (=> b!4322339 (= e!2689142 e!2689143)))

(declare-fun res!1771401 () Bool)

(assert (=> b!4322339 (=> (not res!1771401) (not e!2689143))))

(assert (=> b!4322339 (= res!1771401 (and (or (not ((_ is Cons!48379) (toList!2554 call!299497))) (bvsle (_1!26879 (h!53839 (toList!2554 call!299497))) lt!1539310)) ((_ is Cons!48379) (toList!2554 call!299497)) (bvslt (_1!26879 (h!53839 (toList!2554 call!299497))) lt!1539310)))))

(declare-fun b!4322340 () Bool)

(assert (=> b!4322340 (= e!2689143 (containsKey!401 (t!355382 (toList!2554 call!299497)) lt!1539310))))

(assert (= (and d!1270871 (not res!1771400)) b!4322339))

(assert (= (and b!4322339 res!1771401) b!4322340))

(declare-fun m!4916533 () Bool)

(assert (=> b!4322340 m!4916533))

(assert (=> d!1270593 d!1270871))

(declare-fun d!1270873 () Bool)

(declare-fun res!1771402 () Bool)

(declare-fun e!2689144 () Bool)

(assert (=> d!1270873 (=> res!1771402 e!2689144)))

(assert (=> d!1270873 (= res!1771402 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539311))))))

(assert (=> d!1270873 (= (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133841) e!2689144)))

(declare-fun b!4322341 () Bool)

(declare-fun e!2689145 () Bool)

(assert (=> b!4322341 (= e!2689144 e!2689145)))

(declare-fun res!1771403 () Bool)

(assert (=> b!4322341 (=> (not res!1771403) (not e!2689145))))

(assert (=> b!4322341 (= res!1771403 (dynLambda!20507 lambda!133841 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))

(declare-fun b!4322342 () Bool)

(assert (=> b!4322342 (= e!2689145 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539311))) lambda!133841))))

(assert (= (and d!1270873 (not res!1771402)) b!4322341))

(assert (= (and b!4322341 res!1771403) b!4322342))

(declare-fun b_lambda!127307 () Bool)

(assert (=> (not b_lambda!127307) (not b!4322341)))

(declare-fun m!4916535 () Bool)

(assert (=> b!4322341 m!4916535))

(declare-fun m!4916537 () Bool)

(assert (=> b!4322342 m!4916537))

(assert (=> b!4321501 d!1270873))

(declare-fun d!1270875 () Bool)

(assert (=> d!1270875 (= (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048)) (not (isEmpty!28121 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))))

(declare-fun bs!606649 () Bool)

(assert (= bs!606649 d!1270875))

(assert (=> bs!606649 m!4915755))

(declare-fun m!4916539 () Bool)

(assert (=> bs!606649 m!4916539))

(assert (=> b!4321740 d!1270875))

(declare-fun b!4322344 () Bool)

(declare-fun e!2689146 () Option!10302)

(declare-fun e!2689147 () Option!10302)

(assert (=> b!4322344 (= e!2689146 e!2689147)))

(declare-fun c!735225 () Bool)

(assert (=> b!4322344 (= c!735225 (and ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (not (= (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) key!2048))))))

(declare-fun b!4322343 () Bool)

(assert (=> b!4322343 (= e!2689146 (Some!10301 (_2!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun d!1270877 () Bool)

(declare-fun c!735224 () Bool)

(assert (=> d!1270877 (= c!735224 (and ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) key!2048)))))

(assert (=> d!1270877 (= (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048) e!2689146)))

(declare-fun b!4322346 () Bool)

(assert (=> b!4322346 (= e!2689147 None!10301)))

(declare-fun b!4322345 () Bool)

(assert (=> b!4322345 (= e!2689147 (getValueByKey!298 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) key!2048))))

(assert (= (and d!1270877 c!735224) b!4322343))

(assert (= (and d!1270877 (not c!735224)) b!4322344))

(assert (= (and b!4322344 c!735225) b!4322345))

(assert (= (and b!4322344 (not c!735225)) b!4322346))

(declare-fun m!4916541 () Bool)

(assert (=> b!4322345 m!4916541))

(assert (=> b!4321740 d!1270877))

(declare-fun d!1270879 () Bool)

(assert (=> d!1270879 (isDefined!7602 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))

(declare-fun lt!1540154 () Unit!67766)

(assert (=> d!1270879 (= lt!1540154 (choose!26400 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))

(declare-fun e!2689148 () Bool)

(assert (=> d!1270879 e!2689148))

(declare-fun res!1771404 () Bool)

(assert (=> d!1270879 (=> (not res!1771404) (not e!2689148))))

(assert (=> d!1270879 (= res!1771404 (isStrictlySorted!21 (toList!2554 (ite c!734950 lt!1539421 call!299515))))))

(assert (=> d!1270879 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512) lt!1540154)))

(declare-fun b!4322347 () Bool)

(assert (=> b!4322347 (= e!2689148 (containsKey!401 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))

(assert (= (and d!1270879 res!1771404) b!4322347))

(assert (=> d!1270879 m!4915639))

(assert (=> d!1270879 m!4915639))

(assert (=> d!1270879 m!4915641))

(declare-fun m!4916543 () Bool)

(assert (=> d!1270879 m!4916543))

(declare-fun m!4916545 () Bool)

(assert (=> d!1270879 m!4916545))

(assert (=> b!4322347 m!4915635))

(assert (=> b!4321677 d!1270879))

(declare-fun d!1270881 () Bool)

(assert (=> d!1270881 (= (isDefined!7602 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512)) (not (isEmpty!28120 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512))))))

(declare-fun bs!606650 () Bool)

(assert (= bs!606650 d!1270881))

(assert (=> bs!606650 m!4915639))

(declare-fun m!4916547 () Bool)

(assert (=> bs!606650 m!4916547))

(assert (=> b!4321677 d!1270881))

(declare-fun e!2689149 () Option!10300)

(declare-fun b!4322348 () Bool)

(assert (=> b!4322348 (= e!2689149 (Some!10299 (_2!26879 (h!53839 (toList!2554 (ite c!734950 lt!1539421 call!299515))))))))

(declare-fun e!2689150 () Option!10300)

(declare-fun b!4322350 () Bool)

(assert (=> b!4322350 (= e!2689150 (getValueByKey!297 (t!355382 (toList!2554 (ite c!734950 lt!1539421 call!299515))) call!299512))))

(declare-fun c!735226 () Bool)

(declare-fun d!1270883 () Bool)

(assert (=> d!1270883 (= c!735226 (and ((_ is Cons!48379) (toList!2554 (ite c!734950 lt!1539421 call!299515))) (= (_1!26879 (h!53839 (toList!2554 (ite c!734950 lt!1539421 call!299515)))) call!299512)))))

(assert (=> d!1270883 (= (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512) e!2689149)))

(declare-fun b!4322351 () Bool)

(assert (=> b!4322351 (= e!2689150 None!10299)))

(declare-fun b!4322349 () Bool)

(assert (=> b!4322349 (= e!2689149 e!2689150)))

(declare-fun c!735227 () Bool)

(assert (=> b!4322349 (= c!735227 (and ((_ is Cons!48379) (toList!2554 (ite c!734950 lt!1539421 call!299515))) (not (= (_1!26879 (h!53839 (toList!2554 (ite c!734950 lt!1539421 call!299515)))) call!299512))))))

(assert (= (and d!1270883 c!735226) b!4322348))

(assert (= (and d!1270883 (not c!735226)) b!4322349))

(assert (= (and b!4322349 c!735227) b!4322350))

(assert (= (and b!4322349 (not c!735227)) b!4322351))

(declare-fun m!4916549 () Bool)

(assert (=> b!4322350 m!4916549))

(assert (=> b!4321677 d!1270883))

(declare-fun bm!299712 () Bool)

(declare-fun lt!1540160 () SeekEntryResult!21)

(declare-fun c!735233 () Bool)

(declare-fun call!299717 () Bool)

(assert (=> bm!299712 (= call!299717 (inRange!0 (ite c!735233 (index!1465 lt!1540160) (index!1466 lt!1540160)) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322369 () Bool)

(declare-fun res!1771416 () Bool)

(declare-fun e!2689159 () Bool)

(assert (=> b!4322369 (=> (not res!1771416) (not e!2689159))))

(assert (=> b!4322369 (= res!1771416 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1466 lt!1540160)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4322369 (and (bvsge (index!1466 lt!1540160) #b00000000000000000000000000000000) (bvslt (index!1466 lt!1540160) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322370 () Bool)

(declare-fun e!2689160 () Bool)

(declare-fun call!299718 () Bool)

(assert (=> b!4322370 (= e!2689160 (not call!299718))))

(declare-fun b!4322371 () Bool)

(declare-fun e!2689161 () Bool)

(assert (=> b!4322371 (= e!2689161 ((_ is Undefined!21) lt!1540160))))

(declare-fun b!4322372 () Bool)

(declare-fun e!2689162 () Bool)

(assert (=> b!4322372 (= e!2689162 e!2689160)))

(declare-fun res!1771414 () Bool)

(assert (=> b!4322372 (= res!1771414 call!299717)))

(assert (=> b!4322372 (=> (not res!1771414) (not e!2689160))))

(declare-fun b!4322373 () Bool)

(assert (=> b!4322373 (and (bvsge (index!1465 lt!1540160) #b00000000000000000000000000000000) (bvslt (index!1465 lt!1540160) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun res!1771415 () Bool)

(assert (=> b!4322373 (= res!1771415 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1465 lt!1540160)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4322373 (=> (not res!1771415) (not e!2689160))))

(declare-fun bm!299713 () Bool)

(assert (=> bm!299713 (= call!299718 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun b!4322374 () Bool)

(assert (=> b!4322374 (= e!2689162 e!2689161)))

(declare-fun c!735232 () Bool)

(assert (=> b!4322374 (= c!735232 ((_ is MissingVacant!21) lt!1540160))))

(declare-fun b!4322375 () Bool)

(assert (=> b!4322375 (= e!2689159 (not call!299718))))

(declare-fun d!1270885 () Bool)

(assert (=> d!1270885 e!2689162))

(assert (=> d!1270885 (= c!735233 ((_ is MissingZero!21) lt!1540160))))

(assert (=> d!1270885 (= lt!1540160 (seekEntryOrOpen!0 lt!1539310 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540159 () Unit!67766)

(declare-fun choose!26411 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) Int) Unit!67766)

(assert (=> d!1270885 (= lt!1540159 (choose!26411 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1270885 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1270885 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540159)))

(declare-fun b!4322368 () Bool)

(declare-fun res!1771413 () Bool)

(assert (=> b!4322368 (=> (not res!1771413) (not e!2689159))))

(assert (=> b!4322368 (= res!1771413 call!299717)))

(assert (=> b!4322368 (= e!2689161 e!2689159)))

(assert (= (and d!1270885 c!735233) b!4322372))

(assert (= (and d!1270885 (not c!735233)) b!4322374))

(assert (= (and b!4322372 res!1771414) b!4322373))

(assert (= (and b!4322373 res!1771415) b!4322370))

(assert (= (and b!4322374 c!735232) b!4322368))

(assert (= (and b!4322374 (not c!735232)) b!4322371))

(assert (= (and b!4322368 res!1771413) b!4322369))

(assert (= (and b!4322369 res!1771416) b!4322375))

(assert (= (or b!4322370 b!4322375) bm!299713))

(assert (= (or b!4322372 b!4322368) bm!299712))

(declare-fun m!4916551 () Bool)

(assert (=> b!4322373 m!4916551))

(declare-fun m!4916553 () Bool)

(assert (=> bm!299712 m!4916553))

(assert (=> bm!299713 m!4915419))

(assert (=> d!1270885 m!4915431))

(declare-fun m!4916555 () Bool)

(assert (=> d!1270885 m!4916555))

(assert (=> d!1270885 m!4915875))

(declare-fun m!4916557 () Bool)

(assert (=> b!4322369 m!4916557))

(assert (=> bm!299571 d!1270885))

(declare-fun d!1270887 () Bool)

(declare-fun res!1771417 () Bool)

(declare-fun e!2689163 () Bool)

(assert (=> d!1270887 (=> res!1771417 e!2689163)))

(assert (=> d!1270887 (= res!1771417 (and ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) key!2048)))))

(assert (=> d!1270887 (= (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048) e!2689163)))

(declare-fun b!4322376 () Bool)

(declare-fun e!2689164 () Bool)

(assert (=> b!4322376 (= e!2689163 e!2689164)))

(declare-fun res!1771418 () Bool)

(assert (=> b!4322376 (=> (not res!1771418) (not e!2689164))))

(assert (=> b!4322376 (= res!1771418 ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322377 () Bool)

(assert (=> b!4322377 (= e!2689164 (containsKey!402 (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) key!2048))))

(assert (= (and d!1270887 (not res!1771417)) b!4322376))

(assert (= (and b!4322376 res!1771418) b!4322377))

(declare-fun m!4916559 () Bool)

(assert (=> b!4322377 m!4916559))

(assert (=> d!1270673 d!1270887))

(declare-fun d!1270889 () Bool)

(declare-fun res!1771419 () Bool)

(declare-fun e!2689165 () Bool)

(assert (=> d!1270889 (=> res!1771419 e!2689165)))

(assert (=> d!1270889 (= res!1771419 ((_ is Nil!48378) (t!355381 lt!1539320)))))

(assert (=> d!1270889 (= (forall!8812 (t!355381 lt!1539320) lambda!133838) e!2689165)))

(declare-fun b!4322378 () Bool)

(declare-fun e!2689166 () Bool)

(assert (=> b!4322378 (= e!2689165 e!2689166)))

(declare-fun res!1771420 () Bool)

(assert (=> b!4322378 (=> (not res!1771420) (not e!2689166))))

(assert (=> b!4322378 (= res!1771420 (dynLambda!20508 lambda!133838 (h!53838 (t!355381 lt!1539320))))))

(declare-fun b!4322379 () Bool)

(assert (=> b!4322379 (= e!2689166 (forall!8812 (t!355381 (t!355381 lt!1539320)) lambda!133838))))

(assert (= (and d!1270889 (not res!1771419)) b!4322378))

(assert (= (and b!4322378 res!1771420) b!4322379))

(declare-fun b_lambda!127309 () Bool)

(assert (=> (not b_lambda!127309) (not b!4322378)))

(declare-fun m!4916561 () Bool)

(assert (=> b!4322378 m!4916561))

(declare-fun m!4916563 () Bool)

(assert (=> b!4322379 m!4916563))

(assert (=> b!4321627 d!1270889))

(declare-fun d!1270891 () Bool)

(declare-fun res!1771421 () Bool)

(declare-fun e!2689167 () Bool)

(assert (=> d!1270891 (=> res!1771421 e!2689167)))

(assert (=> d!1270891 (= res!1771421 ((_ is Nil!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1270891 (= (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133858) e!2689167)))

(declare-fun b!4322380 () Bool)

(declare-fun e!2689168 () Bool)

(assert (=> b!4322380 (= e!2689167 e!2689168)))

(declare-fun res!1771422 () Bool)

(assert (=> b!4322380 (=> (not res!1771422) (not e!2689168))))

(assert (=> b!4322380 (= res!1771422 (dynLambda!20507 lambda!133858 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322381 () Bool)

(assert (=> b!4322381 (= e!2689168 (forall!8811 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lambda!133858))))

(assert (= (and d!1270891 (not res!1771421)) b!4322380))

(assert (= (and b!4322380 res!1771422) b!4322381))

(declare-fun b_lambda!127311 () Bool)

(assert (=> (not b_lambda!127311) (not b!4322380)))

(declare-fun m!4916565 () Bool)

(assert (=> b!4322380 m!4916565))

(declare-fun m!4916567 () Bool)

(assert (=> b!4322381 m!4916567))

(assert (=> d!1270595 d!1270891))

(declare-fun bs!606651 () Bool)

(declare-fun d!1270893 () Bool)

(assert (= bs!606651 (and d!1270893 d!1270607)))

(declare-fun lambda!133897 () Int)

(assert (=> bs!606651 (not (= lambda!133897 lambda!133862))))

(declare-fun bs!606652 () Bool)

(assert (= bs!606652 (and d!1270893 d!1270661)))

(assert (=> bs!606652 (not (= lambda!133897 lambda!133872))))

(declare-fun bs!606653 () Bool)

(assert (= bs!606653 (and d!1270893 b!4321317)))

(assert (=> bs!606653 (not (= lambda!133897 lambda!133849))))

(declare-fun bs!606654 () Bool)

(assert (= bs!606654 (and d!1270893 d!1270613)))

(assert (=> bs!606654 (not (= lambda!133897 lambda!133866))))

(declare-fun bs!606655 () Bool)

(assert (= bs!606655 (and d!1270893 d!1270609)))

(assert (=> bs!606655 (not (= lambda!133897 lambda!133865))))

(declare-fun bs!606656 () Bool)

(assert (= bs!606656 (and d!1270893 d!1270519)))

(assert (=> bs!606656 (= lambda!133897 lambda!133841)))

(declare-fun bs!606657 () Bool)

(assert (= bs!606657 (and d!1270893 d!1270547)))

(assert (=> bs!606657 (= lambda!133897 lambda!133855)))

(declare-fun bs!606658 () Bool)

(assert (= bs!606658 (and d!1270893 d!1270551)))

(assert (=> bs!606658 (= lambda!133897 lambda!133857)))

(declare-fun bs!606659 () Bool)

(assert (= bs!606659 (and d!1270893 b!4321230)))

(assert (=> bs!606659 (not (= lambda!133897 lambda!133834))))

(declare-fun bs!606660 () Bool)

(assert (= bs!606660 (and d!1270893 d!1270653)))

(assert (=> bs!606660 (not (= lambda!133897 lambda!133869))))

(declare-fun bs!606661 () Bool)

(assert (= bs!606661 (and d!1270893 d!1270529)))

(assert (=> bs!606661 (not (= lambda!133897 lambda!133846))))

(declare-fun bs!606662 () Bool)

(assert (= bs!606662 (and d!1270893 d!1270603)))

(assert (=> bs!606662 (= lambda!133897 lambda!133859)))

(declare-fun bs!606663 () Bool)

(assert (= bs!606663 (and d!1270893 d!1270595)))

(assert (=> bs!606663 (= lambda!133897 lambda!133858)))

(declare-fun bs!606664 () Bool)

(assert (= bs!606664 (and d!1270893 b!4321343)))

(assert (=> bs!606664 (not (= lambda!133897 lambda!133852))))

(assert (=> d!1270893 true))

(assert (=> d!1270893 (= (allKeysSameHashInMap!388 lt!1539622 (hashF!6919 thiss!42308)) (forall!8811 (toList!2554 lt!1539622) lambda!133897))))

(declare-fun bs!606665 () Bool)

(assert (= bs!606665 d!1270893))

(declare-fun m!4916569 () Bool)

(assert (=> bs!606665 m!4916569))

(assert (=> b!4321719 d!1270893))

(declare-fun d!1270895 () Bool)

(declare-fun res!1771427 () Bool)

(declare-fun e!2689173 () Bool)

(assert (=> d!1270895 (=> res!1771427 e!2689173)))

(assert (=> d!1270895 (= res!1771427 (or ((_ is Nil!48378) (toList!2555 lt!1539428)) ((_ is Nil!48378) (t!355381 (toList!2555 lt!1539428)))))))

(assert (=> d!1270895 (= (noDuplicatedKeys!103 (toList!2555 lt!1539428)) e!2689173)))

(declare-fun b!4322386 () Bool)

(declare-fun e!2689174 () Bool)

(assert (=> b!4322386 (= e!2689173 e!2689174)))

(declare-fun res!1771428 () Bool)

(assert (=> b!4322386 (=> (not res!1771428) (not e!2689174))))

(assert (=> b!4322386 (= res!1771428 (not (containsKey!402 (t!355381 (toList!2555 lt!1539428)) (_1!26878 (h!53838 (toList!2555 lt!1539428))))))))

(declare-fun b!4322387 () Bool)

(assert (=> b!4322387 (= e!2689174 (noDuplicatedKeys!103 (t!355381 (toList!2555 lt!1539428))))))

(assert (= (and d!1270895 (not res!1771427)) b!4322386))

(assert (= (and b!4322386 res!1771428) b!4322387))

(declare-fun m!4916571 () Bool)

(assert (=> b!4322386 m!4916571))

(declare-fun m!4916573 () Bool)

(assert (=> b!4322387 m!4916573))

(assert (=> d!1270611 d!1270895))

(declare-fun bm!299740 () Bool)

(declare-fun call!299753 () tuple2!47190)

(declare-fun lt!1540247 () tuple2!47190)

(declare-fun c!735250 () Bool)

(assert (=> bm!299740 (= call!299753 (repackFrom!13 (v!42753 (underlying!9736 thiss!42308)) (ite c!735250 (_2!26881 lt!1540247) (v!42752 (_2!26883 lt!1539539))) (bvsub (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun call!299754 () ListLongMap!1171)

(declare-fun lt!1540251 () (_ BitVec 64))

(declare-fun call!299746 () ListLongMap!1171)

(declare-fun call!299751 () ListLongMap!1171)

(declare-fun c!735251 () Bool)

(declare-fun bm!299741 () Bool)

(declare-fun lt!1540225 () (_ BitVec 64))

(assert (=> bm!299741 (= call!299754 (+!330 (ite c!735251 call!299751 call!299746) (ite c!735251 (tuple2!47187 lt!1540251 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1540225 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun b!4322416 () Bool)

(declare-fun e!2689196 () Unit!67766)

(declare-fun Unit!67808 () Unit!67766)

(assert (=> b!4322416 (= e!2689196 Unit!67808)))

(declare-fun call!299747 () ListLongMap!1171)

(declare-fun lt!1540227 () List!48502)

(declare-fun call!299756 () ListLongMap!1171)

(declare-fun call!299745 () ListLongMap!1171)

(declare-fun lt!1540252 () (_ BitVec 64))

(declare-fun bm!299742 () Bool)

(assert (=> bm!299742 (= call!299747 (+!330 (ite c!735251 call!299756 call!299745) (tuple2!47187 lt!1540252 lt!1540227)))))

(declare-fun lt!1540249 () ListLongMap!1171)

(declare-fun lt!1540248 () ListLongMap!1171)

(declare-fun bm!299743 () Bool)

(declare-fun call!299748 () Unit!67766)

(declare-fun lt!1540232 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!4 (ListLongMap!1171 (_ BitVec 64) List!48502 (_ BitVec 64) List!48502) Unit!67766)

(assert (=> bm!299743 (= call!299748 (addCommutativeForDiffKeys!4 (ite c!735251 lt!1540249 lt!1540248) lt!1540252 lt!1540227 (ite c!735251 lt!1540232 lt!1540225) (ite c!735251 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322417 () Bool)

(declare-fun e!2689195 () tuple2!47190)

(assert (=> b!4322417 (= e!2689195 (tuple2!47191 false (_2!26881 lt!1540247)))))

(declare-fun bm!299744 () Bool)

(declare-fun lt!1540242 () (_ BitVec 64))

(declare-fun lt!1540241 () ListLongMap!1171)

(assert (=> bm!299744 (= call!299745 (+!330 (ite c!735251 lt!1540249 lt!1540241) (ite c!735251 (tuple2!47187 lt!1540232 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1540242 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun lt!1540233 () ListLongMap!1171)

(declare-fun bm!299745 () Bool)

(assert (=> bm!299745 (= call!299756 (+!330 (ite c!735251 lt!1540233 lt!1540248) (ite c!735251 (tuple2!47187 lt!1540251 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1540225 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun b!4322418 () Bool)

(declare-fun e!2689193 () Bool)

(declare-fun e!2689191 () Bool)

(assert (=> b!4322418 (= e!2689193 e!2689191)))

(declare-fun res!1771433 () Bool)

(assert (=> b!4322418 (=> (not res!1771433) (not e!2689191))))

(declare-fun lt!1540245 () tuple2!47190)

(assert (=> b!4322418 (= res!1771433 (valid!3765 (_2!26881 lt!1540245)))))

(declare-fun b!4322419 () Bool)

(declare-fun e!2689197 () tuple2!47190)

(declare-fun e!2689194 () tuple2!47190)

(assert (=> b!4322419 (= e!2689197 e!2689194)))

(declare-fun c!735246 () Bool)

(assert (=> b!4322419 (= c!735246 (bvsgt (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!4322420 () Bool)

(declare-fun e!2689192 () tuple2!47190)

(declare-fun lt!1540236 () tuple2!47190)

(assert (=> b!4322420 (= e!2689192 (tuple2!47191 (_1!26881 lt!1540236) (_2!26881 lt!1540236)))))

(declare-fun call!299755 () ListLongMap!1171)

(assert (=> b!4322420 (= lt!1540233 call!299755)))

(assert (=> b!4322420 (= lt!1540251 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540255 () Unit!67766)

(declare-fun call!299752 () Unit!67766)

(assert (=> b!4322420 (= lt!1540255 call!299752)))

(assert (=> b!4322420 (= call!299754 call!299747)))

(declare-fun lt!1540250 () Unit!67766)

(assert (=> b!4322420 (= lt!1540250 lt!1540255)))

(declare-fun call!299749 () ListLongMap!1171)

(assert (=> b!4322420 (= lt!1540249 call!299749)))

(assert (=> b!4322420 (= lt!1540232 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540243 () Unit!67766)

(assert (=> b!4322420 (= lt!1540243 call!299748)))

(declare-fun call!299757 () ListLongMap!1171)

(declare-fun call!299750 () ListLongMap!1171)

(assert (=> b!4322420 (= call!299757 call!299750)))

(declare-fun lt!1540256 () Unit!67766)

(assert (=> b!4322420 (= lt!1540256 lt!1540243)))

(assert (=> b!4322420 (= lt!1540236 call!299753)))

(declare-fun bm!299747 () Bool)

(assert (=> bm!299747 (= call!299755 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (bvadd (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun bm!299748 () Bool)

(assert (=> bm!299748 (= call!299749 (+!330 call!299755 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322421 () Bool)

(declare-fun e!2689198 () Bool)

(assert (=> b!4322421 (= e!2689198 (ite (= lt!1540252 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!299749 () Bool)

(assert (=> bm!299749 (= call!299752 (addCommutativeForDiffKeys!4 (ite c!735251 lt!1540233 lt!1540241) lt!1540252 lt!1540227 (ite c!735251 lt!1540251 lt!1540242) (ite c!735251 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322422 () Bool)

(declare-fun lt!1540246 () tuple2!47190)

(assert (=> b!4322422 (= lt!1540246 call!299753)))

(assert (=> b!4322422 (= e!2689194 (tuple2!47191 (_1!26881 lt!1540246) (_2!26881 lt!1540246)))))

(declare-fun b!4322423 () Bool)

(declare-fun lt!1540226 () (_ BitVec 32))

(assert (=> b!4322423 (= e!2689198 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1540252 lt!1540226))))

(declare-fun b!4322424 () Bool)

(assert (=> b!4322424 false))

(declare-fun lt!1540237 () Unit!67766)

(declare-fun lt!1540238 () Unit!67766)

(assert (=> b!4322424 (= lt!1540237 lt!1540238)))

(declare-fun lt!1540229 () (_ BitVec 32))

(assert (=> b!4322424 (not (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1540252 lt!1540229))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!17232 (_ BitVec 32) (_ BitVec 64) List!48505) Unit!67766)

(assert (=> b!4322424 (= lt!1540238 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1540229 lt!1540252 (Cons!48381 lt!1540252 Nil!48381)))))

(assert (=> b!4322424 (= lt!1540229 (bvadd (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!1540240 () Unit!67766)

(declare-fun lt!1540234 () Unit!67766)

(assert (=> b!4322424 (= lt!1540240 lt!1540234)))

(assert (=> b!4322424 (arrayNoDuplicates!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) Nil!48381)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!17232 (_ BitVec 32) (_ BitVec 32)) Unit!67766)

(assert (=> b!4322424 (= lt!1540234 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun lt!1540254 () Unit!67766)

(declare-fun lt!1540239 () Unit!67766)

(assert (=> b!4322424 (= lt!1540254 lt!1540239)))

(assert (=> b!4322424 e!2689198))

(declare-fun c!735249 () Bool)

(assert (=> b!4322424 (= c!735249 (and (not (= lt!1540252 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1540252 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!3 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) (_ BitVec 32) Int) Unit!67766)

(assert (=> b!4322424 (= lt!1540239 (lemmaListMapContainsThenArrayContainsFrom!3 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1540252 lt!1540226 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4322424 (= lt!1540226 (bvadd (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!67809 () Unit!67766)

(assert (=> b!4322424 (= e!2689196 Unit!67809)))

(declare-fun b!4322425 () Bool)

(assert (=> b!4322425 (= e!2689194 (tuple2!47191 true (v!42752 (_2!26883 lt!1539539))))))

(declare-fun b!4322426 () Bool)

(assert (=> b!4322426 (= e!2689192 (tuple2!47191 true (_2!26881 lt!1540247)))))

(assert (=> b!4322426 (= lt!1540248 call!299755)))

(assert (=> b!4322426 (= lt!1540225 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540231 () Unit!67766)

(assert (=> b!4322426 (= lt!1540231 call!299748)))

(assert (=> b!4322426 (= call!299754 call!299750)))

(declare-fun lt!1540244 () Unit!67766)

(assert (=> b!4322426 (= lt!1540244 lt!1540231)))

(assert (=> b!4322426 (= lt!1540241 call!299749)))

(assert (=> b!4322426 (= lt!1540242 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540253 () Unit!67766)

(assert (=> b!4322426 (= lt!1540253 call!299752)))

(assert (=> b!4322426 (= call!299757 call!299747)))

(declare-fun lt!1540235 () Unit!67766)

(assert (=> b!4322426 (= lt!1540235 lt!1540253)))

(declare-fun bm!299750 () Bool)

(assert (=> bm!299750 (= call!299757 (+!330 (ite c!735251 call!299746 call!299751) (ite c!735251 (tuple2!47187 lt!1540232 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1540242 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun bm!299751 () Bool)

(assert (=> bm!299751 (= call!299750 (+!330 (ite c!735251 call!299745 call!299756) (tuple2!47187 lt!1540252 lt!1540227)))))

(declare-fun d!1270897 () Bool)

(assert (=> d!1270897 e!2689193))

(declare-fun res!1771434 () Bool)

(assert (=> d!1270897 (=> res!1771434 e!2689193)))

(assert (=> d!1270897 (= res!1771434 (not (_1!26881 lt!1540245)))))

(assert (=> d!1270897 (= lt!1540245 e!2689197)))

(assert (=> d!1270897 (= c!735250 (and (not (= lt!1540252 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1540252 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1540228 () ListLongMap!1171)

(assert (=> d!1270897 (= lt!1540228 (map!10407 (v!42752 (_2!26883 lt!1539539))))))

(assert (=> d!1270897 (= lt!1540227 (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001)))))

(assert (=> d!1270897 (= lt!1540252 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001)))))

(assert (=> d!1270897 (valid!3764 (v!42753 (underlying!9736 thiss!42308)))))

(assert (=> d!1270897 (= (repackFrom!13 (v!42753 (underlying!9736 thiss!42308)) (v!42752 (_2!26883 lt!1539539)) (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001)) lt!1540245)))

(declare-fun bm!299746 () Bool)

(assert (=> bm!299746 (= call!299746 (+!330 (ite c!735251 lt!1540249 lt!1540248) (tuple2!47187 lt!1540252 lt!1540227)))))

(declare-fun b!4322427 () Bool)

(assert (=> b!4322427 (= e!2689191 (= (map!10407 (_2!26881 lt!1540245)) (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4322427 ((_ is LongMap!4753) (v!42753 (underlying!9736 thiss!42308)))))

(declare-fun b!4322428 () Bool)

(assert (=> b!4322428 (= e!2689197 e!2689195)))

(assert (=> b!4322428 (= lt!1540247 (update!530 (v!42752 (_2!26883 lt!1539539)) lt!1540252 lt!1540227))))

(declare-fun c!735248 () Bool)

(assert (=> b!4322428 (= c!735248 (contains!10426 lt!1540228 lt!1540252))))

(declare-fun lt!1540230 () Unit!67766)

(assert (=> b!4322428 (= lt!1540230 e!2689196)))

(declare-fun c!735247 () Bool)

(assert (=> b!4322428 (= c!735247 (_1!26881 lt!1540247))))

(declare-fun b!4322429 () Bool)

(assert (=> b!4322429 (= c!735251 (bvsgt (bvsub (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!4322429 (= e!2689195 e!2689192)))

(declare-fun bm!299752 () Bool)

(assert (=> bm!299752 (= call!299751 (+!330 (ite c!735251 lt!1540233 lt!1540241) (tuple2!47187 lt!1540252 lt!1540227)))))

(assert (= (and d!1270897 c!735250) b!4322428))

(assert (= (and d!1270897 (not c!735250)) b!4322419))

(assert (= (and b!4322428 c!735248) b!4322424))

(assert (= (and b!4322428 (not c!735248)) b!4322416))

(assert (= (and b!4322424 c!735249) b!4322423))

(assert (= (and b!4322424 (not c!735249)) b!4322421))

(assert (= (and b!4322428 c!735247) b!4322429))

(assert (= (and b!4322428 (not c!735247)) b!4322417))

(assert (= (and b!4322429 c!735251) b!4322420))

(assert (= (and b!4322429 (not c!735251)) b!4322426))

(assert (= (or b!4322420 b!4322426) bm!299744))

(assert (= (or b!4322420 b!4322426) bm!299752))

(assert (= (or b!4322420 b!4322426) bm!299747))

(assert (= (or b!4322420 b!4322426) bm!299746))

(assert (= (or b!4322420 b!4322426) bm!299743))

(assert (= (or b!4322420 b!4322426) bm!299749))

(assert (= (or b!4322420 b!4322426) bm!299745))

(assert (= (or b!4322420 b!4322426) bm!299750))

(assert (= (or b!4322420 b!4322426) bm!299741))

(assert (= (or b!4322420 b!4322426) bm!299748))

(assert (= (or b!4322420 b!4322426) bm!299751))

(assert (= (or b!4322420 b!4322426) bm!299742))

(assert (= (and b!4322419 c!735246) b!4322422))

(assert (= (and b!4322419 (not c!735246)) b!4322425))

(assert (= (or b!4322420 b!4322422) bm!299740))

(assert (= (and d!1270897 (not res!1771434)) b!4322418))

(assert (= (and b!4322418 res!1771433) b!4322427))

(declare-fun m!4916575 () Bool)

(assert (=> bm!299743 m!4916575))

(declare-fun m!4916577 () Bool)

(assert (=> bm!299752 m!4916577))

(declare-fun m!4916579 () Bool)

(assert (=> bm!299744 m!4916579))

(declare-fun m!4916581 () Bool)

(assert (=> bm!299740 m!4916581))

(declare-fun m!4916583 () Bool)

(assert (=> b!4322428 m!4916583))

(declare-fun m!4916585 () Bool)

(assert (=> b!4322428 m!4916585))

(declare-fun m!4916587 () Bool)

(assert (=> bm!299742 m!4916587))

(declare-fun m!4916589 () Bool)

(assert (=> bm!299749 m!4916589))

(declare-fun m!4916591 () Bool)

(assert (=> d!1270897 m!4916591))

(declare-fun m!4916593 () Bool)

(assert (=> d!1270897 m!4916593))

(declare-fun m!4916595 () Bool)

(assert (=> d!1270897 m!4916595))

(assert (=> d!1270897 m!4915257))

(declare-fun m!4916597 () Bool)

(assert (=> b!4322427 m!4916597))

(assert (=> b!4322427 m!4915377))

(declare-fun m!4916599 () Bool)

(assert (=> bm!299751 m!4916599))

(declare-fun m!4916601 () Bool)

(assert (=> b!4322423 m!4916601))

(declare-fun m!4916603 () Bool)

(assert (=> b!4322424 m!4916603))

(declare-fun m!4916605 () Bool)

(assert (=> b!4322424 m!4916605))

(declare-fun m!4916607 () Bool)

(assert (=> b!4322424 m!4916607))

(declare-fun m!4916609 () Bool)

(assert (=> b!4322424 m!4916609))

(declare-fun m!4916611 () Bool)

(assert (=> b!4322424 m!4916611))

(declare-fun m!4916613 () Bool)

(assert (=> bm!299750 m!4916613))

(declare-fun m!4916615 () Bool)

(assert (=> bm!299745 m!4916615))

(declare-fun m!4916617 () Bool)

(assert (=> bm!299747 m!4916617))

(declare-fun m!4916619 () Bool)

(assert (=> bm!299746 m!4916619))

(declare-fun m!4916621 () Bool)

(assert (=> bm!299748 m!4916621))

(declare-fun m!4916623 () Bool)

(assert (=> bm!299741 m!4916623))

(declare-fun m!4916625 () Bool)

(assert (=> b!4322418 m!4916625))

(assert (=> b!4321530 d!1270897))

(declare-fun d!1270899 () Bool)

(declare-fun e!2689199 () Bool)

(assert (=> d!1270899 e!2689199))

(declare-fun res!1771435 () Bool)

(assert (=> d!1270899 (=> res!1771435 e!2689199)))

(declare-fun lt!1540259 () Bool)

(assert (=> d!1270899 (= res!1771435 (not lt!1540259))))

(declare-fun lt!1540260 () Bool)

(assert (=> d!1270899 (= lt!1540259 lt!1540260)))

(declare-fun lt!1540257 () Unit!67766)

(declare-fun e!2689200 () Unit!67766)

(assert (=> d!1270899 (= lt!1540257 e!2689200)))

(declare-fun c!735252 () Bool)

(assert (=> d!1270899 (= c!735252 lt!1540260)))

(assert (=> d!1270899 (= lt!1540260 (containsKey!401 (toList!2554 call!299634) (ite c!735094 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719)) lt!1539310)))))

(assert (=> d!1270899 (= (contains!10426 call!299634 (ite c!735094 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719)) lt!1539310)) lt!1540259)))

(declare-fun b!4322430 () Bool)

(declare-fun lt!1540258 () Unit!67766)

(assert (=> b!4322430 (= e!2689200 lt!1540258)))

(assert (=> b!4322430 (= lt!1540258 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 call!299634) (ite c!735094 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719)) lt!1539310)))))

(assert (=> b!4322430 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299634) (ite c!735094 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719)) lt!1539310)))))

(declare-fun b!4322431 () Bool)

(declare-fun Unit!67810 () Unit!67766)

(assert (=> b!4322431 (= e!2689200 Unit!67810)))

(declare-fun b!4322432 () Bool)

(assert (=> b!4322432 (= e!2689199 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299634) (ite c!735094 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719)) lt!1539310))))))

(assert (= (and d!1270899 c!735252) b!4322430))

(assert (= (and d!1270899 (not c!735252)) b!4322431))

(assert (= (and d!1270899 (not res!1771435)) b!4322432))

(declare-fun m!4916627 () Bool)

(assert (=> d!1270899 m!4916627))

(declare-fun m!4916629 () Bool)

(assert (=> b!4322430 m!4916629))

(declare-fun m!4916631 () Bool)

(assert (=> b!4322430 m!4916631))

(assert (=> b!4322430 m!4916631))

(declare-fun m!4916633 () Bool)

(assert (=> b!4322430 m!4916633))

(assert (=> b!4322432 m!4916631))

(assert (=> b!4322432 m!4916631))

(assert (=> b!4322432 m!4916633))

(assert (=> bm!299629 d!1270899))

(declare-fun d!1270901 () Bool)

(declare-fun e!2689201 () Bool)

(assert (=> d!1270901 e!2689201))

(declare-fun res!1771436 () Bool)

(assert (=> d!1270901 (=> res!1771436 e!2689201)))

(declare-fun lt!1540263 () Bool)

(assert (=> d!1270901 (= res!1771436 (not lt!1540263))))

(declare-fun lt!1540264 () Bool)

(assert (=> d!1270901 (= lt!1540263 lt!1540264)))

(declare-fun lt!1540261 () Unit!67766)

(declare-fun e!2689202 () Unit!67766)

(assert (=> d!1270901 (= lt!1540261 e!2689202)))

(declare-fun c!735253 () Bool)

(assert (=> d!1270901 (= c!735253 lt!1540264)))

(assert (=> d!1270901 (= lt!1540264 (containsKey!401 (toList!2554 lt!1539561) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1270901 (= (contains!10426 lt!1539561 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1540263)))

(declare-fun b!4322433 () Bool)

(declare-fun lt!1540262 () Unit!67766)

(assert (=> b!4322433 (= e!2689202 lt!1540262)))

(assert (=> b!4322433 (= lt!1540262 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 lt!1539561) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> b!4322433 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539561) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4322434 () Bool)

(declare-fun Unit!67811 () Unit!67766)

(assert (=> b!4322434 (= e!2689202 Unit!67811)))

(declare-fun b!4322435 () Bool)

(assert (=> b!4322435 (= e!2689201 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539561) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (= (and d!1270901 c!735253) b!4322433))

(assert (= (and d!1270901 (not c!735253)) b!4322434))

(assert (= (and d!1270901 (not res!1771436)) b!4322435))

(declare-fun m!4916635 () Bool)

(assert (=> d!1270901 m!4916635))

(declare-fun m!4916637 () Bool)

(assert (=> b!4322433 m!4916637))

(assert (=> b!4322433 m!4915529))

(assert (=> b!4322433 m!4915529))

(declare-fun m!4916639 () Bool)

(assert (=> b!4322433 m!4916639))

(assert (=> b!4322435 m!4915529))

(assert (=> b!4322435 m!4915529))

(assert (=> b!4322435 m!4916639))

(assert (=> d!1270583 d!1270901))

(declare-fun b!4322436 () Bool)

(declare-fun e!2689203 () Option!10300)

(assert (=> b!4322436 (= e!2689203 (Some!10299 (_2!26879 (h!53839 lt!1539563))))))

(declare-fun e!2689204 () Option!10300)

(declare-fun b!4322438 () Bool)

(assert (=> b!4322438 (= e!2689204 (getValueByKey!297 (t!355382 lt!1539563) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun c!735254 () Bool)

(declare-fun d!1270903 () Bool)

(assert (=> d!1270903 (= c!735254 (and ((_ is Cons!48379) lt!1539563) (= (_1!26879 (h!53839 lt!1539563)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270903 (= (getValueByKey!297 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2689203)))

(declare-fun b!4322439 () Bool)

(assert (=> b!4322439 (= e!2689204 None!10299)))

(declare-fun b!4322437 () Bool)

(assert (=> b!4322437 (= e!2689203 e!2689204)))

(declare-fun c!735255 () Bool)

(assert (=> b!4322437 (= c!735255 (and ((_ is Cons!48379) lt!1539563) (not (= (_1!26879 (h!53839 lt!1539563)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(assert (= (and d!1270903 c!735254) b!4322436))

(assert (= (and d!1270903 (not c!735254)) b!4322437))

(assert (= (and b!4322437 c!735255) b!4322438))

(assert (= (and b!4322437 (not c!735255)) b!4322439))

(declare-fun m!4916641 () Bool)

(assert (=> b!4322438 m!4916641))

(assert (=> d!1270583 d!1270903))

(declare-fun d!1270905 () Bool)

(assert (=> d!1270905 (= (getValueByKey!297 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lt!1540265 () Unit!67766)

(assert (=> d!1270905 (= lt!1540265 (choose!26396 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun e!2689205 () Bool)

(assert (=> d!1270905 e!2689205))

(declare-fun res!1771437 () Bool)

(assert (=> d!1270905 (=> (not res!1771437) (not e!2689205))))

(assert (=> d!1270905 (= res!1771437 (isStrictlySorted!21 lt!1539563))))

(assert (=> d!1270905 (= (lemmaContainsTupThenGetReturnValue!96 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1540265)))

(declare-fun b!4322440 () Bool)

(declare-fun res!1771438 () Bool)

(assert (=> b!4322440 (=> (not res!1771438) (not e!2689205))))

(assert (=> b!4322440 (= res!1771438 (containsKey!401 lt!1539563 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4322441 () Bool)

(assert (=> b!4322441 (= e!2689205 (contains!10428 lt!1539563 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (= (and d!1270905 res!1771437) b!4322440))

(assert (= (and b!4322440 res!1771438) b!4322441))

(assert (=> d!1270905 m!4915523))

(declare-fun m!4916643 () Bool)

(assert (=> d!1270905 m!4916643))

(declare-fun m!4916645 () Bool)

(assert (=> d!1270905 m!4916645))

(declare-fun m!4916647 () Bool)

(assert (=> b!4322440 m!4916647))

(declare-fun m!4916649 () Bool)

(assert (=> b!4322441 m!4916649))

(assert (=> d!1270583 d!1270905))

(declare-fun b!4322442 () Bool)

(declare-fun c!735259 () Bool)

(assert (=> b!4322442 (= c!735259 (and ((_ is Cons!48379) (toList!2554 call!299498)) (bvsgt (_1!26879 (h!53839 (toList!2554 call!299498))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun e!2689206 () List!48503)

(declare-fun e!2689207 () List!48503)

(assert (=> b!4322442 (= e!2689206 e!2689207)))

(declare-fun e!2689208 () Bool)

(declare-fun lt!1540266 () List!48503)

(declare-fun b!4322443 () Bool)

(assert (=> b!4322443 (= e!2689208 (contains!10428 lt!1540266 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun e!2689209 () List!48503)

(declare-fun c!735256 () Bool)

(declare-fun call!299760 () List!48503)

(declare-fun bm!299753 () Bool)

(assert (=> bm!299753 (= call!299760 ($colon$colon!661 e!2689209 (ite c!735256 (h!53839 (toList!2554 call!299498)) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(declare-fun c!735257 () Bool)

(assert (=> bm!299753 (= c!735257 c!735256)))

(declare-fun b!4322445 () Bool)

(declare-fun call!299759 () List!48503)

(assert (=> b!4322445 (= e!2689207 call!299759)))

(declare-fun b!4322446 () Bool)

(assert (=> b!4322446 (= e!2689207 call!299759)))

(declare-fun b!4322447 () Bool)

(declare-fun call!299758 () List!48503)

(assert (=> b!4322447 (= e!2689206 call!299758)))

(declare-fun b!4322448 () Bool)

(declare-fun e!2689210 () List!48503)

(assert (=> b!4322448 (= e!2689210 e!2689206)))

(declare-fun c!735258 () Bool)

(assert (=> b!4322448 (= c!735258 (and ((_ is Cons!48379) (toList!2554 call!299498)) (= (_1!26879 (h!53839 (toList!2554 call!299498))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun bm!299754 () Bool)

(assert (=> bm!299754 (= call!299758 call!299760)))

(declare-fun b!4322449 () Bool)

(assert (=> b!4322449 (= e!2689210 call!299760)))

(declare-fun b!4322450 () Bool)

(assert (=> b!4322450 (= e!2689209 (insertStrictlySorted!56 (t!355382 (toList!2554 call!299498)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun b!4322444 () Bool)

(assert (=> b!4322444 (= e!2689209 (ite c!735258 (t!355382 (toList!2554 call!299498)) (ite c!735259 (Cons!48379 (h!53839 (toList!2554 call!299498)) (t!355382 (toList!2554 call!299498))) Nil!48379)))))

(declare-fun d!1270907 () Bool)

(assert (=> d!1270907 e!2689208))

(declare-fun res!1771439 () Bool)

(assert (=> d!1270907 (=> (not res!1771439) (not e!2689208))))

(assert (=> d!1270907 (= res!1771439 (isStrictlySorted!21 lt!1540266))))

(assert (=> d!1270907 (= lt!1540266 e!2689210)))

(assert (=> d!1270907 (= c!735256 (and ((_ is Cons!48379) (toList!2554 call!299498)) (bvslt (_1!26879 (h!53839 (toList!2554 call!299498))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270907 (isStrictlySorted!21 (toList!2554 call!299498))))

(assert (=> d!1270907 (= (insertStrictlySorted!56 (toList!2554 call!299498) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1540266)))

(declare-fun b!4322451 () Bool)

(declare-fun res!1771440 () Bool)

(assert (=> b!4322451 (=> (not res!1771440) (not e!2689208))))

(assert (=> b!4322451 (= res!1771440 (containsKey!401 lt!1540266 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun bm!299755 () Bool)

(assert (=> bm!299755 (= call!299759 call!299758)))

(assert (= (and d!1270907 c!735256) b!4322449))

(assert (= (and d!1270907 (not c!735256)) b!4322448))

(assert (= (and b!4322448 c!735258) b!4322447))

(assert (= (and b!4322448 (not c!735258)) b!4322442))

(assert (= (and b!4322442 c!735259) b!4322446))

(assert (= (and b!4322442 (not c!735259)) b!4322445))

(assert (= (or b!4322446 b!4322445) bm!299755))

(assert (= (or b!4322447 bm!299755) bm!299754))

(assert (= (or b!4322449 bm!299754) bm!299753))

(assert (= (and bm!299753 c!735257) b!4322450))

(assert (= (and bm!299753 (not c!735257)) b!4322444))

(assert (= (and d!1270907 res!1771439) b!4322451))

(assert (= (and b!4322451 res!1771440) b!4322443))

(declare-fun m!4916651 () Bool)

(assert (=> b!4322451 m!4916651))

(declare-fun m!4916653 () Bool)

(assert (=> d!1270907 m!4916653))

(declare-fun m!4916655 () Bool)

(assert (=> d!1270907 m!4916655))

(declare-fun m!4916657 () Bool)

(assert (=> b!4322450 m!4916657))

(declare-fun m!4916659 () Bool)

(assert (=> b!4322443 m!4916659))

(declare-fun m!4916661 () Bool)

(assert (=> bm!299753 m!4916661))

(assert (=> d!1270583 d!1270907))

(declare-fun bs!606666 () Bool)

(declare-fun d!1270909 () Bool)

(assert (= bs!606666 (and d!1270909 d!1270515)))

(declare-fun lambda!133898 () Int)

(assert (=> bs!606666 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539311))) lt!1539310) (= lambda!133898 lambda!133837))))

(declare-fun bs!606667 () Bool)

(assert (= bs!606667 (and d!1270909 d!1270517)))

(assert (=> bs!606667 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539311))) lt!1539310) (= lambda!133898 lambda!133838))))

(declare-fun bs!606668 () Bool)

(assert (= bs!606668 (and d!1270909 d!1270549)))

(assert (=> bs!606668 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539311))) lt!1539310) (= lambda!133898 lambda!133856))))

(assert (=> d!1270909 true))

(assert (=> d!1270909 true))

(assert (=> d!1270909 (= (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (h!53839 (toList!2554 lt!1539311))) (hashF!6919 thiss!42308)) (forall!8812 (_2!26879 (h!53839 (toList!2554 lt!1539311))) lambda!133898))))

(declare-fun bs!606669 () Bool)

(assert (= bs!606669 d!1270909))

(declare-fun m!4916663 () Bool)

(assert (=> bs!606669 m!4916663))

(assert (=> bs!606592 d!1270909))

(declare-fun d!1270911 () Bool)

(declare-fun res!1771441 () Bool)

(declare-fun e!2689211 () Bool)

(assert (=> d!1270911 (=> res!1771441 e!2689211)))

(assert (=> d!1270911 (= res!1771441 (and ((_ is Cons!48379) lt!1539408) (= (_1!26879 (h!53839 lt!1539408)) lt!1539410)))))

(assert (=> d!1270911 (= (containsKey!401 lt!1539408 lt!1539410) e!2689211)))

(declare-fun b!4322452 () Bool)

(declare-fun e!2689212 () Bool)

(assert (=> b!4322452 (= e!2689211 e!2689212)))

(declare-fun res!1771442 () Bool)

(assert (=> b!4322452 (=> (not res!1771442) (not e!2689212))))

(assert (=> b!4322452 (= res!1771442 (and (or (not ((_ is Cons!48379) lt!1539408)) (bvsle (_1!26879 (h!53839 lt!1539408)) lt!1539410)) ((_ is Cons!48379) lt!1539408) (bvslt (_1!26879 (h!53839 lt!1539408)) lt!1539410)))))

(declare-fun b!4322453 () Bool)

(assert (=> b!4322453 (= e!2689212 (containsKey!401 (t!355382 lt!1539408) lt!1539410))))

(assert (= (and d!1270911 (not res!1771441)) b!4322452))

(assert (= (and b!4322452 res!1771442) b!4322453))

(declare-fun m!4916665 () Bool)

(assert (=> b!4322453 m!4916665))

(assert (=> b!4321697 d!1270911))

(declare-fun d!1270913 () Bool)

(declare-fun res!1771443 () Bool)

(declare-fun e!2689213 () Bool)

(assert (=> d!1270913 (=> (not res!1771443) (not e!2689213))))

(assert (=> d!1270913 (= res!1771443 (simpleValid!9 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))))))

(assert (=> d!1270913 (= (valid!3765 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) e!2689213)))

(declare-fun b!4322454 () Bool)

(declare-fun res!1771444 () Bool)

(assert (=> b!4322454 (=> (not res!1771444) (not e!2689213))))

(assert (=> b!4322454 (= res!1771444 (= (arrayCountValidKeys!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))))) (_size!9550 (v!42752 (underlying!9735 (_2!26880 lt!1539332))))))))

(declare-fun b!4322455 () Bool)

(declare-fun res!1771445 () Bool)

(assert (=> b!4322455 (=> (not res!1771445) (not e!2689213))))

(assert (=> b!4322455 (= res!1771445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539332))))))))

(declare-fun b!4322456 () Bool)

(assert (=> b!4322456 (= e!2689213 (arrayNoDuplicates!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) #b00000000000000000000000000000000 Nil!48381))))

(assert (= (and d!1270913 res!1771443) b!4322454))

(assert (= (and b!4322454 res!1771444) b!4322455))

(assert (= (and b!4322455 res!1771445) b!4322456))

(declare-fun m!4916667 () Bool)

(assert (=> d!1270913 m!4916667))

(declare-fun m!4916669 () Bool)

(assert (=> b!4322454 m!4916669))

(declare-fun m!4916671 () Bool)

(assert (=> b!4322455 m!4916671))

(declare-fun m!4916673 () Bool)

(assert (=> b!4322456 m!4916673))

(assert (=> d!1270591 d!1270913))

(declare-fun d!1270915 () Bool)

(declare-fun res!1771446 () Bool)

(declare-fun e!2689214 () Bool)

(assert (=> d!1270915 (=> res!1771446 e!2689214)))

(assert (=> d!1270915 (= res!1771446 (and ((_ is Cons!48379) (toList!2554 lt!1539362)) (= (_1!26879 (h!53839 (toList!2554 lt!1539362))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270915 (= (containsKey!401 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2689214)))

(declare-fun b!4322457 () Bool)

(declare-fun e!2689215 () Bool)

(assert (=> b!4322457 (= e!2689214 e!2689215)))

(declare-fun res!1771447 () Bool)

(assert (=> b!4322457 (=> (not res!1771447) (not e!2689215))))

(assert (=> b!4322457 (= res!1771447 (and (or (not ((_ is Cons!48379) (toList!2554 lt!1539362))) (bvsle (_1!26879 (h!53839 (toList!2554 lt!1539362))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))) ((_ is Cons!48379) (toList!2554 lt!1539362)) (bvslt (_1!26879 (h!53839 (toList!2554 lt!1539362))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4322458 () Bool)

(assert (=> b!4322458 (= e!2689215 (containsKey!401 (t!355382 (toList!2554 lt!1539362)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (= (and d!1270915 (not res!1771446)) b!4322457))

(assert (= (and b!4322457 res!1771447) b!4322458))

(declare-fun m!4916675 () Bool)

(assert (=> b!4322458 m!4916675))

(assert (=> d!1270575 d!1270915))

(declare-fun d!1270917 () Bool)

(declare-fun c!735260 () Bool)

(assert (=> d!1270917 (= c!735260 ((_ is Nil!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun e!2689216 () (InoxSet tuple2!47186))

(assert (=> d!1270917 (= (content!7570 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) e!2689216)))

(declare-fun b!4322459 () Bool)

(assert (=> b!4322459 (= e!2689216 ((as const (Array tuple2!47186 Bool)) false))))

(declare-fun b!4322460 () Bool)

(assert (=> b!4322460 (= e!2689216 ((_ map or) (store ((as const (Array tuple2!47186 Bool)) false) (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) true) (content!7570 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (= (and d!1270917 c!735260) b!4322459))

(assert (= (and d!1270917 (not c!735260)) b!4322460))

(declare-fun m!4916677 () Bool)

(assert (=> b!4322460 m!4916677))

(declare-fun m!4916679 () Bool)

(assert (=> b!4322460 m!4916679))

(assert (=> d!1270683 d!1270917))

(declare-fun d!1270919 () Bool)

(declare-fun res!1771448 () Bool)

(declare-fun e!2689217 () Bool)

(assert (=> d!1270919 (=> res!1771448 e!2689217)))

(assert (=> d!1270919 (= res!1771448 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539314))))))

(assert (=> d!1270919 (= (forall!8811 (t!355382 (toList!2554 lt!1539314)) lambda!133857) e!2689217)))

(declare-fun b!4322461 () Bool)

(declare-fun e!2689218 () Bool)

(assert (=> b!4322461 (= e!2689217 e!2689218)))

(declare-fun res!1771449 () Bool)

(assert (=> b!4322461 (=> (not res!1771449) (not e!2689218))))

(assert (=> b!4322461 (= res!1771449 (dynLambda!20507 lambda!133857 (h!53839 (t!355382 (toList!2554 lt!1539314)))))))

(declare-fun b!4322462 () Bool)

(assert (=> b!4322462 (= e!2689218 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539314))) lambda!133857))))

(assert (= (and d!1270919 (not res!1771448)) b!4322461))

(assert (= (and b!4322461 res!1771449) b!4322462))

(declare-fun b_lambda!127313 () Bool)

(assert (=> (not b_lambda!127313) (not b!4322461)))

(declare-fun m!4916681 () Bool)

(assert (=> b!4322461 m!4916681))

(declare-fun m!4916683 () Bool)

(assert (=> b!4322462 m!4916683))

(assert (=> b!4321714 d!1270919))

(declare-fun d!1270921 () Bool)

(assert (=> d!1270921 (= (get!15675 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410)) (v!42758 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410)))))

(assert (=> b!4321675 d!1270921))

(declare-fun b!4322463 () Bool)

(declare-fun e!2689219 () Option!10300)

(assert (=> b!4322463 (= e!2689219 (Some!10299 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322465 () Bool)

(declare-fun e!2689220 () Option!10300)

(assert (=> b!4322465 (= e!2689220 (getValueByKey!297 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410))))

(declare-fun d!1270923 () Bool)

(declare-fun c!735261 () Bool)

(assert (=> d!1270923 (= c!735261 (and ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (= (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539410)))))

(assert (=> d!1270923 (= (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410) e!2689219)))

(declare-fun b!4322466 () Bool)

(assert (=> b!4322466 (= e!2689220 None!10299)))

(declare-fun b!4322464 () Bool)

(assert (=> b!4322464 (= e!2689219 e!2689220)))

(declare-fun c!735262 () Bool)

(assert (=> b!4322464 (= c!735262 (and ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (not (= (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539410))))))

(assert (= (and d!1270923 c!735261) b!4322463))

(assert (= (and d!1270923 (not c!735261)) b!4322464))

(assert (= (and b!4322464 c!735262) b!4322465))

(assert (= (and b!4322464 (not c!735262)) b!4322466))

(declare-fun m!4916685 () Bool)

(assert (=> b!4322465 m!4916685))

(assert (=> b!4321675 d!1270923))

(assert (=> b!4321675 d!1270543))

(declare-fun d!1270925 () Bool)

(declare-fun res!1771450 () Bool)

(declare-fun e!2689221 () Bool)

(assert (=> d!1270925 (=> res!1771450 e!2689221)))

(assert (=> d!1270925 (= res!1771450 (and ((_ is Cons!48379) (toList!2554 (ite c!734950 lt!1539421 call!299515))) (= (_1!26879 (h!53839 (toList!2554 (ite c!734950 lt!1539421 call!299515)))) call!299512)))))

(assert (=> d!1270925 (= (containsKey!401 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512) e!2689221)))

(declare-fun b!4322467 () Bool)

(declare-fun e!2689222 () Bool)

(assert (=> b!4322467 (= e!2689221 e!2689222)))

(declare-fun res!1771451 () Bool)

(assert (=> b!4322467 (=> (not res!1771451) (not e!2689222))))

(assert (=> b!4322467 (= res!1771451 (and (or (not ((_ is Cons!48379) (toList!2554 (ite c!734950 lt!1539421 call!299515)))) (bvsle (_1!26879 (h!53839 (toList!2554 (ite c!734950 lt!1539421 call!299515)))) call!299512)) ((_ is Cons!48379) (toList!2554 (ite c!734950 lt!1539421 call!299515))) (bvslt (_1!26879 (h!53839 (toList!2554 (ite c!734950 lt!1539421 call!299515)))) call!299512)))))

(declare-fun b!4322468 () Bool)

(assert (=> b!4322468 (= e!2689222 (containsKey!401 (t!355382 (toList!2554 (ite c!734950 lt!1539421 call!299515))) call!299512))))

(assert (= (and d!1270925 (not res!1771450)) b!4322467))

(assert (= (and b!4322467 res!1771451) b!4322468))

(declare-fun m!4916687 () Bool)

(assert (=> b!4322468 m!4916687))

(assert (=> d!1270623 d!1270925))

(declare-fun d!1270927 () Bool)

(declare-fun res!1771452 () Bool)

(declare-fun e!2689223 () Bool)

(assert (=> d!1270927 (=> res!1771452 e!2689223)))

(assert (=> d!1270927 (= res!1771452 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539311))))))

(assert (=> d!1270927 (= (forall!8811 (t!355382 (toList!2554 lt!1539311)) lambda!133855) e!2689223)))

(declare-fun b!4322469 () Bool)

(declare-fun e!2689224 () Bool)

(assert (=> b!4322469 (= e!2689223 e!2689224)))

(declare-fun res!1771453 () Bool)

(assert (=> b!4322469 (=> (not res!1771453) (not e!2689224))))

(assert (=> b!4322469 (= res!1771453 (dynLambda!20507 lambda!133855 (h!53839 (t!355382 (toList!2554 lt!1539311)))))))

(declare-fun b!4322470 () Bool)

(assert (=> b!4322470 (= e!2689224 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539311))) lambda!133855))))

(assert (= (and d!1270927 (not res!1771452)) b!4322469))

(assert (= (and b!4322469 res!1771453) b!4322470))

(declare-fun b_lambda!127315 () Bool)

(assert (=> (not b_lambda!127315) (not b!4322469)))

(declare-fun m!4916689 () Bool)

(assert (=> b!4322469 m!4916689))

(declare-fun m!4916691 () Bool)

(assert (=> b!4322470 m!4916691))

(assert (=> b!4321848 d!1270927))

(declare-fun d!1270929 () Bool)

(declare-fun lt!1540267 () Bool)

(assert (=> d!1270929 (= lt!1540267 (select (content!7570 lt!1539560) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun e!2689226 () Bool)

(assert (=> d!1270929 (= lt!1540267 e!2689226)))

(declare-fun res!1771455 () Bool)

(assert (=> d!1270929 (=> (not res!1771455) (not e!2689226))))

(assert (=> d!1270929 (= res!1771455 ((_ is Cons!48379) lt!1539560))))

(assert (=> d!1270929 (= (contains!10428 lt!1539560 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))) lt!1540267)))

(declare-fun b!4322471 () Bool)

(declare-fun e!2689225 () Bool)

(assert (=> b!4322471 (= e!2689226 e!2689225)))

(declare-fun res!1771454 () Bool)

(assert (=> b!4322471 (=> res!1771454 e!2689225)))

(assert (=> b!4322471 (= res!1771454 (= (h!53839 lt!1539560) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4322472 () Bool)

(assert (=> b!4322472 (= e!2689225 (contains!10428 (t!355382 lt!1539560) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (= (and d!1270929 res!1771455) b!4322471))

(assert (= (and b!4322471 (not res!1771454)) b!4322472))

(declare-fun m!4916693 () Bool)

(assert (=> d!1270929 m!4916693))

(declare-fun m!4916695 () Bool)

(assert (=> d!1270929 m!4916695))

(declare-fun m!4916697 () Bool)

(assert (=> b!4322472 m!4916697))

(assert (=> b!4321604 d!1270929))

(declare-fun d!1270931 () Bool)

(assert (=> d!1270931 (= (isDefined!7601 lt!1539601) (not (isEmpty!28119 lt!1539601)))))

(declare-fun bs!606670 () Bool)

(assert (= bs!606670 d!1270931))

(assert (=> bs!606670 m!4915619))

(assert (=> b!4321673 d!1270931))

(declare-fun bs!606671 () Bool)

(declare-fun b!4322484 () Bool)

(assert (= bs!606671 (and b!4322484 d!1270515)))

(declare-fun lambda!133927 () Int)

(assert (=> bs!606671 (not (= lambda!133927 lambda!133837))))

(declare-fun bs!606672 () Bool)

(assert (= bs!606672 (and b!4322484 d!1270517)))

(assert (=> bs!606672 (not (= lambda!133927 lambda!133838))))

(declare-fun bs!606673 () Bool)

(assert (= bs!606673 (and b!4322484 d!1270549)))

(assert (=> bs!606673 (not (= lambda!133927 lambda!133856))))

(declare-fun bs!606674 () Bool)

(assert (= bs!606674 (and b!4322484 d!1270909)))

(assert (=> bs!606674 (not (= lambda!133927 lambda!133898))))

(assert (=> b!4322484 true))

(declare-fun bs!606675 () Bool)

(declare-fun b!4322485 () Bool)

(assert (= bs!606675 (and b!4322485 d!1270517)))

(declare-fun lambda!133928 () Int)

(assert (=> bs!606675 (not (= lambda!133928 lambda!133838))))

(declare-fun bs!606676 () Bool)

(assert (= bs!606676 (and b!4322485 d!1270515)))

(assert (=> bs!606676 (not (= lambda!133928 lambda!133837))))

(declare-fun bs!606677 () Bool)

(assert (= bs!606677 (and b!4322485 d!1270549)))

(assert (=> bs!606677 (not (= lambda!133928 lambda!133856))))

(declare-fun bs!606678 () Bool)

(assert (= bs!606678 (and b!4322485 b!4322484)))

(assert (=> bs!606678 (= lambda!133928 lambda!133927)))

(declare-fun bs!606679 () Bool)

(assert (= bs!606679 (and b!4322485 d!1270909)))

(assert (=> bs!606679 (not (= lambda!133928 lambda!133898))))

(assert (=> b!4322485 true))

(declare-fun lambda!133929 () Int)

(assert (=> bs!606675 (not (= lambda!133929 lambda!133838))))

(assert (=> bs!606676 (not (= lambda!133929 lambda!133837))))

(assert (=> bs!606677 (not (= lambda!133929 lambda!133856))))

(declare-fun lt!1540330 () ListMap!1831)

(assert (=> bs!606678 (= (= lt!1540330 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133929 lambda!133927))))

(assert (=> bs!606679 (not (= lambda!133929 lambda!133898))))

(assert (=> b!4322485 (= (= lt!1540330 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133929 lambda!133928))))

(assert (=> b!4322485 true))

(declare-fun bs!606680 () Bool)

(declare-fun d!1270933 () Bool)

(assert (= bs!606680 (and d!1270933 d!1270517)))

(declare-fun lambda!133930 () Int)

(assert (=> bs!606680 (not (= lambda!133930 lambda!133838))))

(declare-fun bs!606681 () Bool)

(assert (= bs!606681 (and d!1270933 b!4322485)))

(declare-fun lt!1540315 () ListMap!1831)

(assert (=> bs!606681 (= (= lt!1540315 lt!1540330) (= lambda!133930 lambda!133929))))

(declare-fun bs!606682 () Bool)

(assert (= bs!606682 (and d!1270933 d!1270515)))

(assert (=> bs!606682 (not (= lambda!133930 lambda!133837))))

(declare-fun bs!606683 () Bool)

(assert (= bs!606683 (and d!1270933 d!1270549)))

(assert (=> bs!606683 (not (= lambda!133930 lambda!133856))))

(declare-fun bs!606684 () Bool)

(assert (= bs!606684 (and d!1270933 b!4322484)))

(assert (=> bs!606684 (= (= lt!1540315 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133930 lambda!133927))))

(declare-fun bs!606685 () Bool)

(assert (= bs!606685 (and d!1270933 d!1270909)))

(assert (=> bs!606685 (not (= lambda!133930 lambda!133898))))

(assert (=> bs!606681 (= (= lt!1540315 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133930 lambda!133928))))

(assert (=> d!1270933 true))

(declare-fun c!735265 () Bool)

(declare-fun bm!299762 () Bool)

(declare-fun lt!1540323 () ListMap!1831)

(declare-fun call!299769 () Bool)

(assert (=> bm!299762 (= call!299769 (forall!8812 (ite c!735265 (toList!2555 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (toList!2555 lt!1540323)) (ite c!735265 lambda!133927 lambda!133929)))))

(declare-fun e!2689234 () Bool)

(assert (=> d!1270933 e!2689234))

(declare-fun res!1771463 () Bool)

(assert (=> d!1270933 (=> (not res!1771463) (not e!2689234))))

(assert (=> d!1270933 (= res!1771463 (forall!8812 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lambda!133930))))

(declare-fun e!2689233 () ListMap!1831)

(assert (=> d!1270933 (= lt!1540315 e!2689233)))

(assert (=> d!1270933 (= c!735265 ((_ is Nil!48378) (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1270933 (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270933 (= (addToMapMapFromBucket!51 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lt!1540315)))

(declare-fun bm!299763 () Bool)

(declare-fun call!299767 () Unit!67766)

(declare-fun lemmaContainsAllItsOwnKeys!5 (ListMap!1831) Unit!67766)

(assert (=> bm!299763 (= call!299767 (lemmaContainsAllItsOwnKeys!5 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322483 () Bool)

(declare-fun res!1771462 () Bool)

(assert (=> b!4322483 (=> (not res!1771462) (not e!2689234))))

(assert (=> b!4322483 (= res!1771462 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lambda!133930))))

(assert (=> b!4322484 (= e!2689233 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1540318 () Unit!67766)

(assert (=> b!4322484 (= lt!1540318 call!299767)))

(assert (=> b!4322484 call!299769))

(declare-fun lt!1540324 () Unit!67766)

(assert (=> b!4322484 (= lt!1540324 lt!1540318)))

(declare-fun call!299768 () Bool)

(assert (=> b!4322484 call!299768))

(declare-fun lt!1540320 () Unit!67766)

(declare-fun Unit!67812 () Unit!67766)

(assert (=> b!4322484 (= lt!1540320 Unit!67812)))

(assert (=> b!4322485 (= e!2689233 lt!1540330)))

(declare-fun +!331 (ListMap!1831 tuple2!47184) ListMap!1831)

(assert (=> b!4322485 (= lt!1540323 (+!331 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (=> b!4322485 (= lt!1540330 (addToMapMapFromBucket!51 (t!355381 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (+!331 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun lt!1540317 () Unit!67766)

(assert (=> b!4322485 (= lt!1540317 call!299767)))

(assert (=> b!4322485 call!299768))

(declare-fun lt!1540328 () Unit!67766)

(assert (=> b!4322485 (= lt!1540328 lt!1540317)))

(assert (=> b!4322485 call!299769))

(declare-fun lt!1540314 () Unit!67766)

(declare-fun Unit!67813 () Unit!67766)

(assert (=> b!4322485 (= lt!1540314 Unit!67813)))

(assert (=> b!4322485 (forall!8812 (t!355381 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lambda!133929)))

(declare-fun lt!1540319 () Unit!67766)

(declare-fun Unit!67814 () Unit!67766)

(assert (=> b!4322485 (= lt!1540319 Unit!67814)))

(declare-fun lt!1540325 () Unit!67766)

(declare-fun Unit!67815 () Unit!67766)

(assert (=> b!4322485 (= lt!1540325 Unit!67815)))

(declare-fun lt!1540327 () Unit!67766)

(declare-fun forallContained!1534 (List!48502 Int tuple2!47184) Unit!67766)

(assert (=> b!4322485 (= lt!1540327 (forallContained!1534 (toList!2555 lt!1540323) lambda!133929 (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(assert (=> b!4322485 (contains!10429 lt!1540323 (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun lt!1540316 () Unit!67766)

(declare-fun Unit!67816 () Unit!67766)

(assert (=> b!4322485 (= lt!1540316 Unit!67816)))

(assert (=> b!4322485 (contains!10429 lt!1540330 (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun lt!1540312 () Unit!67766)

(declare-fun Unit!67817 () Unit!67766)

(assert (=> b!4322485 (= lt!1540312 Unit!67817)))

(assert (=> b!4322485 (forall!8812 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lambda!133929)))

(declare-fun lt!1540313 () Unit!67766)

(declare-fun Unit!67818 () Unit!67766)

(assert (=> b!4322485 (= lt!1540313 Unit!67818)))

(assert (=> b!4322485 (forall!8812 (toList!2555 lt!1540323) lambda!133929)))

(declare-fun lt!1540310 () Unit!67766)

(declare-fun Unit!67819 () Unit!67766)

(assert (=> b!4322485 (= lt!1540310 Unit!67819)))

(declare-fun lt!1540322 () Unit!67766)

(declare-fun Unit!67820 () Unit!67766)

(assert (=> b!4322485 (= lt!1540322 Unit!67820)))

(declare-fun lt!1540311 () Unit!67766)

(declare-fun addForallContainsKeyThenBeforeAdding!5 (ListMap!1831 ListMap!1831 K!9629 V!9831) Unit!67766)

(assert (=> b!4322485 (= lt!1540311 (addForallContainsKeyThenBeforeAdding!5 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540330 (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (_2!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))))

(assert (=> b!4322485 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lambda!133929)))

(declare-fun lt!1540326 () Unit!67766)

(assert (=> b!4322485 (= lt!1540326 lt!1540311)))

(assert (=> b!4322485 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lambda!133929)))

(declare-fun lt!1540321 () Unit!67766)

(declare-fun Unit!67821 () Unit!67766)

(assert (=> b!4322485 (= lt!1540321 Unit!67821)))

(declare-fun res!1771464 () Bool)

(assert (=> b!4322485 (= res!1771464 (forall!8812 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lambda!133929))))

(declare-fun e!2689235 () Bool)

(assert (=> b!4322485 (=> (not res!1771464) (not e!2689235))))

(assert (=> b!4322485 e!2689235))

(declare-fun lt!1540329 () Unit!67766)

(declare-fun Unit!67822 () Unit!67766)

(assert (=> b!4322485 (= lt!1540329 Unit!67822)))

(declare-fun b!4322486 () Bool)

(assert (=> b!4322486 (= e!2689234 (invariantList!601 (toList!2555 lt!1540315)))))

(declare-fun b!4322487 () Bool)

(assert (=> b!4322487 (= e!2689235 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lambda!133929))))

(declare-fun bm!299764 () Bool)

(assert (=> bm!299764 (= call!299768 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (ite c!735265 lambda!133927 lambda!133928)))))

(assert (= (and d!1270933 c!735265) b!4322484))

(assert (= (and d!1270933 (not c!735265)) b!4322485))

(assert (= (and b!4322485 res!1771464) b!4322487))

(assert (= (or b!4322484 b!4322485) bm!299763))

(assert (= (or b!4322484 b!4322485) bm!299762))

(assert (= (or b!4322484 b!4322485) bm!299764))

(assert (= (and d!1270933 res!1771463) b!4322483))

(assert (= (and b!4322483 res!1771462) b!4322486))

(declare-fun m!4916699 () Bool)

(assert (=> b!4322485 m!4916699))

(declare-fun m!4916701 () Bool)

(assert (=> b!4322485 m!4916701))

(declare-fun m!4916703 () Bool)

(assert (=> b!4322485 m!4916703))

(declare-fun m!4916705 () Bool)

(assert (=> b!4322485 m!4916705))

(declare-fun m!4916707 () Bool)

(assert (=> b!4322485 m!4916707))

(assert (=> b!4322485 m!4916699))

(assert (=> b!4322485 m!4916707))

(declare-fun m!4916709 () Bool)

(assert (=> b!4322485 m!4916709))

(declare-fun m!4916711 () Bool)

(assert (=> b!4322485 m!4916711))

(assert (=> b!4322485 m!4915601))

(declare-fun m!4916713 () Bool)

(assert (=> b!4322485 m!4916713))

(assert (=> b!4322485 m!4915601))

(assert (=> b!4322485 m!4916709))

(declare-fun m!4916715 () Bool)

(assert (=> b!4322485 m!4916715))

(declare-fun m!4916717 () Bool)

(assert (=> b!4322485 m!4916717))

(declare-fun m!4916719 () Bool)

(assert (=> b!4322486 m!4916719))

(declare-fun m!4916721 () Bool)

(assert (=> d!1270933 m!4916721))

(assert (=> d!1270933 m!4915859))

(declare-fun m!4916723 () Bool)

(assert (=> b!4322483 m!4916723))

(assert (=> bm!299763 m!4915601))

(declare-fun m!4916725 () Bool)

(assert (=> bm!299763 m!4916725))

(declare-fun m!4916727 () Bool)

(assert (=> bm!299764 m!4916727))

(declare-fun m!4916729 () Bool)

(assert (=> bm!299762 m!4916729))

(assert (=> b!4322487 m!4916699))

(assert (=> b!4321661 d!1270933))

(declare-fun bs!606686 () Bool)

(declare-fun d!1270935 () Bool)

(assert (= bs!606686 (and d!1270935 d!1270661)))

(declare-fun lambda!133931 () Int)

(assert (=> bs!606686 (= lambda!133931 lambda!133872)))

(declare-fun bs!606687 () Bool)

(assert (= bs!606687 (and d!1270935 b!4321317)))

(assert (=> bs!606687 (= lambda!133931 lambda!133849)))

(declare-fun bs!606688 () Bool)

(assert (= bs!606688 (and d!1270935 d!1270613)))

(assert (=> bs!606688 (= lambda!133931 lambda!133866)))

(declare-fun bs!606689 () Bool)

(assert (= bs!606689 (and d!1270935 d!1270609)))

(assert (=> bs!606689 (= lambda!133931 lambda!133865)))

(declare-fun bs!606690 () Bool)

(assert (= bs!606690 (and d!1270935 d!1270519)))

(assert (=> bs!606690 (not (= lambda!133931 lambda!133841))))

(declare-fun bs!606691 () Bool)

(assert (= bs!606691 (and d!1270935 d!1270607)))

(assert (=> bs!606691 (= lambda!133931 lambda!133862)))

(declare-fun bs!606692 () Bool)

(assert (= bs!606692 (and d!1270935 d!1270893)))

(assert (=> bs!606692 (not (= lambda!133931 lambda!133897))))

(declare-fun bs!606693 () Bool)

(assert (= bs!606693 (and d!1270935 d!1270547)))

(assert (=> bs!606693 (not (= lambda!133931 lambda!133855))))

(declare-fun bs!606694 () Bool)

(assert (= bs!606694 (and d!1270935 d!1270551)))

(assert (=> bs!606694 (not (= lambda!133931 lambda!133857))))

(declare-fun bs!606695 () Bool)

(assert (= bs!606695 (and d!1270935 b!4321230)))

(assert (=> bs!606695 (= lambda!133931 lambda!133834)))

(declare-fun bs!606696 () Bool)

(assert (= bs!606696 (and d!1270935 d!1270653)))

(assert (=> bs!606696 (= lambda!133931 lambda!133869)))

(declare-fun bs!606697 () Bool)

(assert (= bs!606697 (and d!1270935 d!1270529)))

(assert (=> bs!606697 (= lambda!133931 lambda!133846)))

(declare-fun bs!606698 () Bool)

(assert (= bs!606698 (and d!1270935 d!1270603)))

(assert (=> bs!606698 (not (= lambda!133931 lambda!133859))))

(declare-fun bs!606699 () Bool)

(assert (= bs!606699 (and d!1270935 d!1270595)))

(assert (=> bs!606699 (not (= lambda!133931 lambda!133858))))

(declare-fun bs!606700 () Bool)

(assert (= bs!606700 (and d!1270935 b!4321343)))

(assert (=> bs!606700 (= lambda!133931 lambda!133852)))

(declare-fun lt!1540331 () ListMap!1831)

(assert (=> d!1270935 (invariantList!601 (toList!2555 lt!1540331))))

(declare-fun e!2689236 () ListMap!1831)

(assert (=> d!1270935 (= lt!1540331 e!2689236)))

(declare-fun c!735266 () Bool)

(assert (=> d!1270935 (= c!735266 ((_ is Cons!48379) (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1270935 (forall!8811 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lambda!133931)))

(assert (=> d!1270935 (= (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540331)))

(declare-fun b!4322490 () Bool)

(assert (=> b!4322490 (= e!2689236 (addToMapMapFromBucket!51 (_2!26879 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (extractMap!368 (t!355382 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun b!4322491 () Bool)

(assert (=> b!4322491 (= e!2689236 (ListMap!1832 Nil!48378))))

(assert (= (and d!1270935 c!735266) b!4322490))

(assert (= (and d!1270935 (not c!735266)) b!4322491))

(declare-fun m!4916731 () Bool)

(assert (=> d!1270935 m!4916731))

(declare-fun m!4916733 () Bool)

(assert (=> d!1270935 m!4916733))

(declare-fun m!4916735 () Bool)

(assert (=> b!4322490 m!4916735))

(assert (=> b!4322490 m!4916735))

(declare-fun m!4916737 () Bool)

(assert (=> b!4322490 m!4916737))

(assert (=> b!4321661 d!1270935))

(declare-fun d!1270937 () Bool)

(assert (=> d!1270937 (isDefined!7603 (getValueByKey!298 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(declare-fun lt!1540334 () Unit!67766)

(declare-fun choose!26412 (List!48502 K!9629) Unit!67766)

(assert (=> d!1270937 (= lt!1540334 (choose!26412 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(assert (=> d!1270937 (invariantList!601 (toList!2555 (map!10406 thiss!42308)))))

(assert (=> d!1270937 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!2555 (map!10406 thiss!42308)) key!2048) lt!1540334)))

(declare-fun bs!606701 () Bool)

(assert (= bs!606701 d!1270937))

(assert (=> bs!606701 m!4915731))

(assert (=> bs!606701 m!4915731))

(assert (=> bs!606701 m!4915733))

(declare-fun m!4916739 () Bool)

(assert (=> bs!606701 m!4916739))

(assert (=> bs!606701 m!4916401))

(assert (=> b!4321737 d!1270937))

(declare-fun d!1270939 () Bool)

(assert (=> d!1270939 (= (isDefined!7603 (getValueByKey!298 (toList!2555 (map!10406 thiss!42308)) key!2048)) (not (isEmpty!28121 (getValueByKey!298 (toList!2555 (map!10406 thiss!42308)) key!2048))))))

(declare-fun bs!606702 () Bool)

(assert (= bs!606702 d!1270939))

(assert (=> bs!606702 m!4915731))

(declare-fun m!4916741 () Bool)

(assert (=> bs!606702 m!4916741))

(assert (=> b!4321737 d!1270939))

(declare-fun b!4322493 () Bool)

(declare-fun e!2689237 () Option!10302)

(declare-fun e!2689238 () Option!10302)

(assert (=> b!4322493 (= e!2689237 e!2689238)))

(declare-fun c!735268 () Bool)

(assert (=> b!4322493 (= c!735268 (and ((_ is Cons!48378) (toList!2555 (map!10406 thiss!42308))) (not (= (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308)))) key!2048))))))

(declare-fun b!4322492 () Bool)

(assert (=> b!4322492 (= e!2689237 (Some!10301 (_2!26878 (h!53838 (toList!2555 (map!10406 thiss!42308))))))))

(declare-fun d!1270941 () Bool)

(declare-fun c!735267 () Bool)

(assert (=> d!1270941 (= c!735267 (and ((_ is Cons!48378) (toList!2555 (map!10406 thiss!42308))) (= (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308)))) key!2048)))))

(assert (=> d!1270941 (= (getValueByKey!298 (toList!2555 (map!10406 thiss!42308)) key!2048) e!2689237)))

(declare-fun b!4322495 () Bool)

(assert (=> b!4322495 (= e!2689238 None!10301)))

(declare-fun b!4322494 () Bool)

(assert (=> b!4322494 (= e!2689238 (getValueByKey!298 (t!355381 (toList!2555 (map!10406 thiss!42308))) key!2048))))

(assert (= (and d!1270941 c!735267) b!4322492))

(assert (= (and d!1270941 (not c!735267)) b!4322493))

(assert (= (and b!4322493 c!735268) b!4322494))

(assert (= (and b!4322493 (not c!735268)) b!4322495))

(declare-fun m!4916743 () Bool)

(assert (=> b!4322494 m!4916743))

(assert (=> b!4321737 d!1270941))

(declare-fun d!1270943 () Bool)

(assert (=> d!1270943 (contains!10431 (getKeysList!56 (toList!2555 (map!10406 thiss!42308))) key!2048)))

(declare-fun lt!1540337 () Unit!67766)

(declare-fun choose!26413 (List!48502 K!9629) Unit!67766)

(assert (=> d!1270943 (= lt!1540337 (choose!26413 (toList!2555 (map!10406 thiss!42308)) key!2048))))

(assert (=> d!1270943 (invariantList!601 (toList!2555 (map!10406 thiss!42308)))))

(assert (=> d!1270943 (= (lemmaInListThenGetKeysListContains!53 (toList!2555 (map!10406 thiss!42308)) key!2048) lt!1540337)))

(declare-fun bs!606703 () Bool)

(assert (= bs!606703 d!1270943))

(assert (=> bs!606703 m!4915743))

(assert (=> bs!606703 m!4915743))

(declare-fun m!4916745 () Bool)

(assert (=> bs!606703 m!4916745))

(declare-fun m!4916747 () Bool)

(assert (=> bs!606703 m!4916747))

(assert (=> bs!606703 m!4916401))

(assert (=> b!4321737 d!1270943))

(declare-fun d!1270945 () Bool)

(declare-fun res!1771465 () Bool)

(declare-fun e!2689239 () Bool)

(assert (=> d!1270945 (=> res!1771465 e!2689239)))

(assert (=> d!1270945 (= res!1771465 (= (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000) lt!1539310))))

(assert (=> d!1270945 (= (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 #b00000000000000000000000000000000) e!2689239)))

(declare-fun b!4322496 () Bool)

(declare-fun e!2689240 () Bool)

(assert (=> b!4322496 (= e!2689239 e!2689240)))

(declare-fun res!1771466 () Bool)

(assert (=> b!4322496 (=> (not res!1771466) (not e!2689240))))

(assert (=> b!4322496 (= res!1771466 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322497 () Bool)

(assert (=> b!4322497 (= e!2689240 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539310 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1270945 (not res!1771465)) b!4322496))

(assert (= (and b!4322496 res!1771466) b!4322497))

(assert (=> d!1270945 m!4915889))

(declare-fun m!4916749 () Bool)

(assert (=> b!4322497 m!4916749))

(assert (=> bm!299575 d!1270945))

(declare-fun lt!1540338 () Bool)

(declare-fun d!1270947 () Bool)

(assert (=> d!1270947 (= lt!1540338 (select (content!7570 lt!1539364) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun e!2689242 () Bool)

(assert (=> d!1270947 (= lt!1540338 e!2689242)))

(declare-fun res!1771468 () Bool)

(assert (=> d!1270947 (=> (not res!1771468) (not e!2689242))))

(assert (=> d!1270947 (= res!1771468 ((_ is Cons!48379) lt!1539364))))

(assert (=> d!1270947 (= (contains!10428 lt!1539364 (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))) lt!1540338)))

(declare-fun b!4322498 () Bool)

(declare-fun e!2689241 () Bool)

(assert (=> b!4322498 (= e!2689242 e!2689241)))

(declare-fun res!1771467 () Bool)

(assert (=> b!4322498 (=> res!1771467 e!2689241)))

(assert (=> b!4322498 (= res!1771467 (= (h!53839 lt!1539364) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4322499 () Bool)

(assert (=> b!4322499 (= e!2689241 (contains!10428 (t!355382 lt!1539364) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (= (and d!1270947 res!1771468) b!4322498))

(assert (= (and b!4322498 (not res!1771467)) b!4322499))

(declare-fun m!4916751 () Bool)

(assert (=> d!1270947 m!4916751))

(declare-fun m!4916753 () Bool)

(assert (=> d!1270947 m!4916753))

(declare-fun m!4916755 () Bool)

(assert (=> b!4322499 m!4916755))

(assert (=> b!4321582 d!1270947))

(declare-fun bs!606704 () Bool)

(declare-fun b!4322501 () Bool)

(assert (= bs!606704 (and b!4322501 d!1270933)))

(declare-fun lambda!133932 () Int)

(assert (=> bs!606704 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) lt!1540315) (= lambda!133932 lambda!133930))))

(declare-fun bs!606705 () Bool)

(assert (= bs!606705 (and b!4322501 d!1270517)))

(assert (=> bs!606705 (not (= lambda!133932 lambda!133838))))

(declare-fun bs!606706 () Bool)

(assert (= bs!606706 (and b!4322501 b!4322485)))

(assert (=> bs!606706 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) lt!1540330) (= lambda!133932 lambda!133929))))

(declare-fun bs!606707 () Bool)

(assert (= bs!606707 (and b!4322501 d!1270515)))

(assert (=> bs!606707 (not (= lambda!133932 lambda!133837))))

(declare-fun bs!606708 () Bool)

(assert (= bs!606708 (and b!4322501 d!1270549)))

(assert (=> bs!606708 (not (= lambda!133932 lambda!133856))))

(declare-fun bs!606709 () Bool)

(assert (= bs!606709 (and b!4322501 b!4322484)))

(assert (=> bs!606709 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133932 lambda!133927))))

(declare-fun bs!606710 () Bool)

(assert (= bs!606710 (and b!4322501 d!1270909)))

(assert (=> bs!606710 (not (= lambda!133932 lambda!133898))))

(assert (=> bs!606706 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133932 lambda!133928))))

(assert (=> b!4322501 true))

(declare-fun bs!606711 () Bool)

(declare-fun b!4322502 () Bool)

(assert (= bs!606711 (and b!4322502 d!1270933)))

(declare-fun lambda!133933 () Int)

(assert (=> bs!606711 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) lt!1540315) (= lambda!133933 lambda!133930))))

(declare-fun bs!606712 () Bool)

(assert (= bs!606712 (and b!4322502 b!4322485)))

(assert (=> bs!606712 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) lt!1540330) (= lambda!133933 lambda!133929))))

(declare-fun bs!606713 () Bool)

(assert (= bs!606713 (and b!4322502 d!1270515)))

(assert (=> bs!606713 (not (= lambda!133933 lambda!133837))))

(declare-fun bs!606714 () Bool)

(assert (= bs!606714 (and b!4322502 d!1270549)))

(assert (=> bs!606714 (not (= lambda!133933 lambda!133856))))

(declare-fun bs!606715 () Bool)

(assert (= bs!606715 (and b!4322502 b!4322484)))

(assert (=> bs!606715 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133933 lambda!133927))))

(declare-fun bs!606716 () Bool)

(assert (= bs!606716 (and b!4322502 d!1270517)))

(assert (=> bs!606716 (not (= lambda!133933 lambda!133838))))

(declare-fun bs!606717 () Bool)

(assert (= bs!606717 (and b!4322502 b!4322501)))

(assert (=> bs!606717 (= lambda!133933 lambda!133932)))

(declare-fun bs!606718 () Bool)

(assert (= bs!606718 (and b!4322502 d!1270909)))

(assert (=> bs!606718 (not (= lambda!133933 lambda!133898))))

(assert (=> bs!606712 (= (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133933 lambda!133928))))

(assert (=> b!4322502 true))

(declare-fun lt!1540359 () ListMap!1831)

(declare-fun lambda!133934 () Int)

(assert (=> bs!606711 (= (= lt!1540359 lt!1540315) (= lambda!133934 lambda!133930))))

(assert (=> b!4322502 (= (= lt!1540359 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) (= lambda!133934 lambda!133933))))

(assert (=> bs!606712 (= (= lt!1540359 lt!1540330) (= lambda!133934 lambda!133929))))

(assert (=> bs!606713 (not (= lambda!133934 lambda!133837))))

(assert (=> bs!606714 (not (= lambda!133934 lambda!133856))))

(assert (=> bs!606715 (= (= lt!1540359 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133934 lambda!133927))))

(assert (=> bs!606716 (not (= lambda!133934 lambda!133838))))

(assert (=> bs!606717 (= (= lt!1540359 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) (= lambda!133934 lambda!133932))))

(assert (=> bs!606718 (not (= lambda!133934 lambda!133898))))

(assert (=> bs!606712 (= (= lt!1540359 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133934 lambda!133928))))

(assert (=> b!4322502 true))

(declare-fun bs!606719 () Bool)

(declare-fun d!1270949 () Bool)

(assert (= bs!606719 (and d!1270949 d!1270933)))

(declare-fun lambda!133935 () Int)

(declare-fun lt!1540344 () ListMap!1831)

(assert (=> bs!606719 (= (= lt!1540344 lt!1540315) (= lambda!133935 lambda!133930))))

(declare-fun bs!606720 () Bool)

(assert (= bs!606720 (and d!1270949 b!4322502)))

(assert (=> bs!606720 (= (= lt!1540344 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) (= lambda!133935 lambda!133933))))

(declare-fun bs!606721 () Bool)

(assert (= bs!606721 (and d!1270949 b!4322485)))

(assert (=> bs!606721 (= (= lt!1540344 lt!1540330) (= lambda!133935 lambda!133929))))

(declare-fun bs!606722 () Bool)

(assert (= bs!606722 (and d!1270949 d!1270515)))

(assert (=> bs!606722 (not (= lambda!133935 lambda!133837))))

(declare-fun bs!606723 () Bool)

(assert (= bs!606723 (and d!1270949 d!1270549)))

(assert (=> bs!606723 (not (= lambda!133935 lambda!133856))))

(declare-fun bs!606724 () Bool)

(assert (= bs!606724 (and d!1270949 b!4322484)))

(assert (=> bs!606724 (= (= lt!1540344 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133935 lambda!133927))))

(assert (=> bs!606720 (= (= lt!1540344 lt!1540359) (= lambda!133935 lambda!133934))))

(declare-fun bs!606725 () Bool)

(assert (= bs!606725 (and d!1270949 d!1270517)))

(assert (=> bs!606725 (not (= lambda!133935 lambda!133838))))

(declare-fun bs!606726 () Bool)

(assert (= bs!606726 (and d!1270949 b!4322501)))

(assert (=> bs!606726 (= (= lt!1540344 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) (= lambda!133935 lambda!133932))))

(declare-fun bs!606727 () Bool)

(assert (= bs!606727 (and d!1270949 d!1270909)))

(assert (=> bs!606727 (not (= lambda!133935 lambda!133898))))

(assert (=> bs!606721 (= (= lt!1540344 (extractMap!368 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133935 lambda!133928))))

(assert (=> d!1270949 true))

(declare-fun c!735269 () Bool)

(declare-fun lt!1540352 () ListMap!1831)

(declare-fun bm!299765 () Bool)

(declare-fun call!299772 () Bool)

(assert (=> bm!299765 (= call!299772 (forall!8812 (ite c!735269 (toList!2555 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) (toList!2555 lt!1540352)) (ite c!735269 lambda!133932 lambda!133934)))))

(declare-fun e!2689244 () Bool)

(assert (=> d!1270949 e!2689244))

(declare-fun res!1771470 () Bool)

(assert (=> d!1270949 (=> (not res!1771470) (not e!2689244))))

(assert (=> d!1270949 (= res!1771470 (forall!8812 (_2!26879 (h!53839 (toList!2554 lt!1539420))) lambda!133935))))

(declare-fun e!2689243 () ListMap!1831)

(assert (=> d!1270949 (= lt!1540344 e!2689243)))

(assert (=> d!1270949 (= c!735269 ((_ is Nil!48378) (_2!26879 (h!53839 (toList!2554 lt!1539420)))))))

(assert (=> d!1270949 (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539420))))))

(assert (=> d!1270949 (= (addToMapMapFromBucket!51 (_2!26879 (h!53839 (toList!2554 lt!1539420))) (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) lt!1540344)))

(declare-fun bm!299766 () Bool)

(declare-fun call!299770 () Unit!67766)

(assert (=> bm!299766 (= call!299770 (lemmaContainsAllItsOwnKeys!5 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))))))

(declare-fun b!4322500 () Bool)

(declare-fun res!1771469 () Bool)

(assert (=> b!4322500 (=> (not res!1771469) (not e!2689244))))

(assert (=> b!4322500 (= res!1771469 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) lambda!133935))))

(assert (=> b!4322501 (= e!2689243 (extractMap!368 (t!355382 (toList!2554 lt!1539420))))))

(declare-fun lt!1540347 () Unit!67766)

(assert (=> b!4322501 (= lt!1540347 call!299770)))

(assert (=> b!4322501 call!299772))

(declare-fun lt!1540353 () Unit!67766)

(assert (=> b!4322501 (= lt!1540353 lt!1540347)))

(declare-fun call!299771 () Bool)

(assert (=> b!4322501 call!299771))

(declare-fun lt!1540349 () Unit!67766)

(declare-fun Unit!67823 () Unit!67766)

(assert (=> b!4322501 (= lt!1540349 Unit!67823)))

(assert (=> b!4322502 (= e!2689243 lt!1540359)))

(assert (=> b!4322502 (= lt!1540352 (+!331 (extractMap!368 (t!355382 (toList!2554 lt!1539420))) (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420))))))))

(assert (=> b!4322502 (= lt!1540359 (addToMapMapFromBucket!51 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539420)))) (+!331 (extractMap!368 (t!355382 (toList!2554 lt!1539420))) (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420)))))))))

(declare-fun lt!1540346 () Unit!67766)

(assert (=> b!4322502 (= lt!1540346 call!299770)))

(assert (=> b!4322502 call!299771))

(declare-fun lt!1540357 () Unit!67766)

(assert (=> b!4322502 (= lt!1540357 lt!1540346)))

(assert (=> b!4322502 call!299772))

(declare-fun lt!1540343 () Unit!67766)

(declare-fun Unit!67824 () Unit!67766)

(assert (=> b!4322502 (= lt!1540343 Unit!67824)))

(assert (=> b!4322502 (forall!8812 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539420)))) lambda!133934)))

(declare-fun lt!1540348 () Unit!67766)

(declare-fun Unit!67825 () Unit!67766)

(assert (=> b!4322502 (= lt!1540348 Unit!67825)))

(declare-fun lt!1540354 () Unit!67766)

(declare-fun Unit!67826 () Unit!67766)

(assert (=> b!4322502 (= lt!1540354 Unit!67826)))

(declare-fun lt!1540356 () Unit!67766)

(assert (=> b!4322502 (= lt!1540356 (forallContained!1534 (toList!2555 lt!1540352) lambda!133934 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420))))))))

(assert (=> b!4322502 (contains!10429 lt!1540352 (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420))))))))

(declare-fun lt!1540345 () Unit!67766)

(declare-fun Unit!67827 () Unit!67766)

(assert (=> b!4322502 (= lt!1540345 Unit!67827)))

(assert (=> b!4322502 (contains!10429 lt!1540359 (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420))))))))

(declare-fun lt!1540341 () Unit!67766)

(declare-fun Unit!67828 () Unit!67766)

(assert (=> b!4322502 (= lt!1540341 Unit!67828)))

(assert (=> b!4322502 (forall!8812 (_2!26879 (h!53839 (toList!2554 lt!1539420))) lambda!133934)))

(declare-fun lt!1540342 () Unit!67766)

(declare-fun Unit!67829 () Unit!67766)

(assert (=> b!4322502 (= lt!1540342 Unit!67829)))

(assert (=> b!4322502 (forall!8812 (toList!2555 lt!1540352) lambda!133934)))

(declare-fun lt!1540339 () Unit!67766)

(declare-fun Unit!67830 () Unit!67766)

(assert (=> b!4322502 (= lt!1540339 Unit!67830)))

(declare-fun lt!1540351 () Unit!67766)

(declare-fun Unit!67831 () Unit!67766)

(assert (=> b!4322502 (= lt!1540351 Unit!67831)))

(declare-fun lt!1540340 () Unit!67766)

(assert (=> b!4322502 (= lt!1540340 (addForallContainsKeyThenBeforeAdding!5 (extractMap!368 (t!355382 (toList!2554 lt!1539420))) lt!1540359 (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420))))) (_2!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539420)))))))))

(assert (=> b!4322502 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) lambda!133934)))

(declare-fun lt!1540355 () Unit!67766)

(assert (=> b!4322502 (= lt!1540355 lt!1540340)))

(assert (=> b!4322502 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) lambda!133934)))

(declare-fun lt!1540350 () Unit!67766)

(declare-fun Unit!67832 () Unit!67766)

(assert (=> b!4322502 (= lt!1540350 Unit!67832)))

(declare-fun res!1771471 () Bool)

(assert (=> b!4322502 (= res!1771471 (forall!8812 (_2!26879 (h!53839 (toList!2554 lt!1539420))) lambda!133934))))

(declare-fun e!2689245 () Bool)

(assert (=> b!4322502 (=> (not res!1771471) (not e!2689245))))

(assert (=> b!4322502 e!2689245))

(declare-fun lt!1540358 () Unit!67766)

(declare-fun Unit!67833 () Unit!67766)

(assert (=> b!4322502 (= lt!1540358 Unit!67833)))

(declare-fun b!4322503 () Bool)

(assert (=> b!4322503 (= e!2689244 (invariantList!601 (toList!2555 lt!1540344)))))

(declare-fun b!4322504 () Bool)

(assert (=> b!4322504 (= e!2689245 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) lambda!133934))))

(declare-fun bm!299767 () Bool)

(assert (=> bm!299767 (= call!299771 (forall!8812 (toList!2555 (extractMap!368 (t!355382 (toList!2554 lt!1539420)))) (ite c!735269 lambda!133932 lambda!133933)))))

(assert (= (and d!1270949 c!735269) b!4322501))

(assert (= (and d!1270949 (not c!735269)) b!4322502))

(assert (= (and b!4322502 res!1771471) b!4322504))

(assert (= (or b!4322501 b!4322502) bm!299766))

(assert (= (or b!4322501 b!4322502) bm!299765))

(assert (= (or b!4322501 b!4322502) bm!299767))

(assert (= (and d!1270949 res!1771470) b!4322500))

(assert (= (and b!4322500 res!1771469) b!4322503))

(declare-fun m!4916757 () Bool)

(assert (=> b!4322502 m!4916757))

(declare-fun m!4916759 () Bool)

(assert (=> b!4322502 m!4916759))

(declare-fun m!4916761 () Bool)

(assert (=> b!4322502 m!4916761))

(declare-fun m!4916763 () Bool)

(assert (=> b!4322502 m!4916763))

(declare-fun m!4916765 () Bool)

(assert (=> b!4322502 m!4916765))

(assert (=> b!4322502 m!4916757))

(assert (=> b!4322502 m!4916765))

(declare-fun m!4916767 () Bool)

(assert (=> b!4322502 m!4916767))

(declare-fun m!4916769 () Bool)

(assert (=> b!4322502 m!4916769))

(assert (=> b!4322502 m!4915587))

(declare-fun m!4916771 () Bool)

(assert (=> b!4322502 m!4916771))

(assert (=> b!4322502 m!4915587))

(assert (=> b!4322502 m!4916767))

(declare-fun m!4916773 () Bool)

(assert (=> b!4322502 m!4916773))

(declare-fun m!4916775 () Bool)

(assert (=> b!4322502 m!4916775))

(declare-fun m!4916777 () Bool)

(assert (=> b!4322503 m!4916777))

(declare-fun m!4916779 () Bool)

(assert (=> d!1270949 m!4916779))

(declare-fun m!4916781 () Bool)

(assert (=> d!1270949 m!4916781))

(declare-fun m!4916783 () Bool)

(assert (=> b!4322500 m!4916783))

(assert (=> bm!299766 m!4915587))

(declare-fun m!4916785 () Bool)

(assert (=> bm!299766 m!4916785))

(declare-fun m!4916787 () Bool)

(assert (=> bm!299767 m!4916787))

(declare-fun m!4916789 () Bool)

(assert (=> bm!299765 m!4916789))

(assert (=> b!4322504 m!4916757))

(assert (=> b!4321659 d!1270949))

(declare-fun bs!606728 () Bool)

(declare-fun d!1270951 () Bool)

(assert (= bs!606728 (and d!1270951 d!1270661)))

(declare-fun lambda!133936 () Int)

(assert (=> bs!606728 (= lambda!133936 lambda!133872)))

(declare-fun bs!606729 () Bool)

(assert (= bs!606729 (and d!1270951 b!4321317)))

(assert (=> bs!606729 (= lambda!133936 lambda!133849)))

(declare-fun bs!606730 () Bool)

(assert (= bs!606730 (and d!1270951 d!1270613)))

(assert (=> bs!606730 (= lambda!133936 lambda!133866)))

(declare-fun bs!606731 () Bool)

(assert (= bs!606731 (and d!1270951 d!1270609)))

(assert (=> bs!606731 (= lambda!133936 lambda!133865)))

(declare-fun bs!606732 () Bool)

(assert (= bs!606732 (and d!1270951 d!1270935)))

(assert (=> bs!606732 (= lambda!133936 lambda!133931)))

(declare-fun bs!606733 () Bool)

(assert (= bs!606733 (and d!1270951 d!1270519)))

(assert (=> bs!606733 (not (= lambda!133936 lambda!133841))))

(declare-fun bs!606734 () Bool)

(assert (= bs!606734 (and d!1270951 d!1270607)))

(assert (=> bs!606734 (= lambda!133936 lambda!133862)))

(declare-fun bs!606735 () Bool)

(assert (= bs!606735 (and d!1270951 d!1270893)))

(assert (=> bs!606735 (not (= lambda!133936 lambda!133897))))

(declare-fun bs!606736 () Bool)

(assert (= bs!606736 (and d!1270951 d!1270547)))

(assert (=> bs!606736 (not (= lambda!133936 lambda!133855))))

(declare-fun bs!606737 () Bool)

(assert (= bs!606737 (and d!1270951 d!1270551)))

(assert (=> bs!606737 (not (= lambda!133936 lambda!133857))))

(declare-fun bs!606738 () Bool)

(assert (= bs!606738 (and d!1270951 b!4321230)))

(assert (=> bs!606738 (= lambda!133936 lambda!133834)))

(declare-fun bs!606739 () Bool)

(assert (= bs!606739 (and d!1270951 d!1270653)))

(assert (=> bs!606739 (= lambda!133936 lambda!133869)))

(declare-fun bs!606740 () Bool)

(assert (= bs!606740 (and d!1270951 d!1270529)))

(assert (=> bs!606740 (= lambda!133936 lambda!133846)))

(declare-fun bs!606741 () Bool)

(assert (= bs!606741 (and d!1270951 d!1270603)))

(assert (=> bs!606741 (not (= lambda!133936 lambda!133859))))

(declare-fun bs!606742 () Bool)

(assert (= bs!606742 (and d!1270951 d!1270595)))

(assert (=> bs!606742 (not (= lambda!133936 lambda!133858))))

(declare-fun bs!606743 () Bool)

(assert (= bs!606743 (and d!1270951 b!4321343)))

(assert (=> bs!606743 (= lambda!133936 lambda!133852)))

(declare-fun lt!1540360 () ListMap!1831)

(assert (=> d!1270951 (invariantList!601 (toList!2555 lt!1540360))))

(declare-fun e!2689246 () ListMap!1831)

(assert (=> d!1270951 (= lt!1540360 e!2689246)))

(declare-fun c!735270 () Bool)

(assert (=> d!1270951 (= c!735270 ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539420))))))

(assert (=> d!1270951 (forall!8811 (t!355382 (toList!2554 lt!1539420)) lambda!133936)))

(assert (=> d!1270951 (= (extractMap!368 (t!355382 (toList!2554 lt!1539420))) lt!1540360)))

(declare-fun b!4322505 () Bool)

(assert (=> b!4322505 (= e!2689246 (addToMapMapFromBucket!51 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539420)))) (extractMap!368 (t!355382 (t!355382 (toList!2554 lt!1539420))))))))

(declare-fun b!4322506 () Bool)

(assert (=> b!4322506 (= e!2689246 (ListMap!1832 Nil!48378))))

(assert (= (and d!1270951 c!735270) b!4322505))

(assert (= (and d!1270951 (not c!735270)) b!4322506))

(declare-fun m!4916791 () Bool)

(assert (=> d!1270951 m!4916791))

(declare-fun m!4916793 () Bool)

(assert (=> d!1270951 m!4916793))

(declare-fun m!4916795 () Bool)

(assert (=> b!4322505 m!4916795))

(assert (=> b!4322505 m!4916795))

(declare-fun m!4916797 () Bool)

(assert (=> b!4322505 m!4916797))

(assert (=> b!4321659 d!1270951))

(declare-fun bs!606744 () Bool)

(declare-fun d!1270953 () Bool)

(assert (= bs!606744 (and d!1270953 d!1270933)))

(declare-fun lambda!133937 () Int)

(assert (=> bs!606744 (not (= lambda!133937 lambda!133930))))

(declare-fun bs!606745 () Bool)

(assert (= bs!606745 (and d!1270953 b!4322502)))

(assert (=> bs!606745 (not (= lambda!133937 lambda!133933))))

(declare-fun bs!606746 () Bool)

(assert (= bs!606746 (and d!1270953 b!4322485)))

(assert (=> bs!606746 (not (= lambda!133937 lambda!133929))))

(declare-fun bs!606747 () Bool)

(assert (= bs!606747 (and d!1270953 d!1270515)))

(assert (=> bs!606747 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539314))) lt!1539310) (= lambda!133937 lambda!133837))))

(declare-fun bs!606748 () Bool)

(assert (= bs!606748 (and d!1270953 d!1270549)))

(assert (=> bs!606748 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539314))) lt!1539310) (= lambda!133937 lambda!133856))))

(declare-fun bs!606749 () Bool)

(assert (= bs!606749 (and d!1270953 b!4322484)))

(assert (=> bs!606749 (not (= lambda!133937 lambda!133927))))

(assert (=> bs!606745 (not (= lambda!133937 lambda!133934))))

(declare-fun bs!606750 () Bool)

(assert (= bs!606750 (and d!1270953 d!1270517)))

(assert (=> bs!606750 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539314))) lt!1539310) (= lambda!133937 lambda!133838))))

(declare-fun bs!606751 () Bool)

(assert (= bs!606751 (and d!1270953 b!4322501)))

(assert (=> bs!606751 (not (= lambda!133937 lambda!133932))))

(declare-fun bs!606752 () Bool)

(assert (= bs!606752 (and d!1270953 d!1270949)))

(assert (=> bs!606752 (not (= lambda!133937 lambda!133935))))

(declare-fun bs!606753 () Bool)

(assert (= bs!606753 (and d!1270953 d!1270909)))

(assert (=> bs!606753 (= (= (_1!26879 (h!53839 (toList!2554 lt!1539314))) (_1!26879 (h!53839 (toList!2554 lt!1539311)))) (= lambda!133937 lambda!133898))))

(assert (=> bs!606746 (not (= lambda!133937 lambda!133928))))

(assert (=> d!1270953 true))

(assert (=> d!1270953 true))

(assert (=> d!1270953 (= (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 lt!1539314))) (_1!26879 (h!53839 (toList!2554 lt!1539314))) (hashF!6919 thiss!42308)) (forall!8812 (_2!26879 (h!53839 (toList!2554 lt!1539314))) lambda!133937))))

(declare-fun bs!606754 () Bool)

(assert (= bs!606754 d!1270953))

(declare-fun m!4916799 () Bool)

(assert (=> bs!606754 m!4916799))

(assert (=> bs!606587 d!1270953))

(assert (=> d!1270609 d!1270605))

(assert (=> d!1270609 d!1270607))

(declare-fun d!1270955 () Bool)

(assert (=> d!1270955 (contains!10429 (extractMap!368 (toList!2554 lt!1539420)) key!2048)))

(assert (=> d!1270955 true))

(declare-fun _$6!604 () Unit!67766)

(assert (=> d!1270955 (= (choose!26398 lt!1539420 key!2048 (hashF!6919 thiss!42308)) _$6!604)))

(declare-fun bs!606755 () Bool)

(assert (= bs!606755 d!1270955))

(assert (=> bs!606755 m!4915369))

(assert (=> bs!606755 m!4915369))

(assert (=> bs!606755 m!4915371))

(assert (=> d!1270609 d!1270955))

(declare-fun d!1270957 () Bool)

(declare-fun res!1771472 () Bool)

(declare-fun e!2689247 () Bool)

(assert (=> d!1270957 (=> res!1771472 e!2689247)))

(assert (=> d!1270957 (= res!1771472 ((_ is Nil!48379) (toList!2554 lt!1539420)))))

(assert (=> d!1270957 (= (forall!8811 (toList!2554 lt!1539420) lambda!133865) e!2689247)))

(declare-fun b!4322507 () Bool)

(declare-fun e!2689248 () Bool)

(assert (=> b!4322507 (= e!2689247 e!2689248)))

(declare-fun res!1771473 () Bool)

(assert (=> b!4322507 (=> (not res!1771473) (not e!2689248))))

(assert (=> b!4322507 (= res!1771473 (dynLambda!20507 lambda!133865 (h!53839 (toList!2554 lt!1539420))))))

(declare-fun b!4322508 () Bool)

(assert (=> b!4322508 (= e!2689248 (forall!8811 (t!355382 (toList!2554 lt!1539420)) lambda!133865))))

(assert (= (and d!1270957 (not res!1771472)) b!4322507))

(assert (= (and b!4322507 res!1771473) b!4322508))

(declare-fun b_lambda!127317 () Bool)

(assert (=> (not b_lambda!127317) (not b!4322507)))

(declare-fun m!4916801 () Bool)

(assert (=> b!4322507 m!4916801))

(declare-fun m!4916803 () Bool)

(assert (=> b!4322508 m!4916803))

(assert (=> d!1270609 d!1270957))

(declare-fun d!1270959 () Bool)

(declare-fun e!2689249 () Bool)

(assert (=> d!1270959 e!2689249))

(declare-fun res!1771474 () Bool)

(assert (=> d!1270959 (=> res!1771474 e!2689249)))

(declare-fun lt!1540363 () Bool)

(assert (=> d!1270959 (= res!1771474 (not lt!1540363))))

(declare-fun lt!1540364 () Bool)

(assert (=> d!1270959 (= lt!1540363 lt!1540364)))

(declare-fun lt!1540361 () Unit!67766)

(declare-fun e!2689250 () Unit!67766)

(assert (=> d!1270959 (= lt!1540361 e!2689250)))

(declare-fun c!735271 () Bool)

(assert (=> d!1270959 (= c!735271 lt!1540364)))

(assert (=> d!1270959 (= lt!1540364 (containsKey!401 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310))))

(assert (=> d!1270959 (= (contains!10426 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310) lt!1540363)))

(declare-fun b!4322509 () Bool)

(declare-fun lt!1540362 () Unit!67766)

(assert (=> b!4322509 (= e!2689250 lt!1540362)))

(assert (=> b!4322509 (= lt!1540362 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310))))

(assert (=> b!4322509 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310))))

(declare-fun b!4322510 () Bool)

(declare-fun Unit!67834 () Unit!67766)

(assert (=> b!4322510 (= e!2689250 Unit!67834)))

(declare-fun b!4322511 () Bool)

(assert (=> b!4322511 (= e!2689249 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)))))

(assert (= (and d!1270959 c!735271) b!4322509))

(assert (= (and d!1270959 (not c!735271)) b!4322510))

(assert (= (and d!1270959 (not res!1771474)) b!4322511))

(declare-fun m!4916805 () Bool)

(assert (=> d!1270959 m!4916805))

(declare-fun m!4916807 () Bool)

(assert (=> b!4322509 m!4916807))

(assert (=> b!4322509 m!4915783))

(assert (=> b!4322509 m!4915783))

(declare-fun m!4916809 () Bool)

(assert (=> b!4322509 m!4916809))

(assert (=> b!4322511 m!4915783))

(assert (=> b!4322511 m!4915783))

(assert (=> b!4322511 m!4916809))

(assert (=> d!1270687 d!1270959))

(assert (=> d!1270687 d!1270665))

(assert (=> d!1270687 d!1270803))

(assert (=> d!1270629 d!1270625))

(declare-fun d!1270961 () Bool)

(assert (=> d!1270961 (containsKey!401 lt!1539409 lt!1539410)))

(assert (=> d!1270961 true))

(declare-fun _$12!1160 () Unit!67766)

(assert (=> d!1270961 (= (choose!26399 lt!1539409 lt!1539410) _$12!1160)))

(declare-fun bs!606756 () Bool)

(assert (= bs!606756 d!1270961))

(assert (=> bs!606756 m!4915341))

(assert (=> d!1270629 d!1270961))

(declare-fun d!1270963 () Bool)

(declare-fun res!1771475 () Bool)

(declare-fun e!2689251 () Bool)

(assert (=> d!1270963 (=> res!1771475 e!2689251)))

(assert (=> d!1270963 (= res!1771475 (or ((_ is Nil!48379) lt!1539409) ((_ is Nil!48379) (t!355382 lt!1539409))))))

(assert (=> d!1270963 (= (isStrictlySorted!21 lt!1539409) e!2689251)))

(declare-fun b!4322512 () Bool)

(declare-fun e!2689252 () Bool)

(assert (=> b!4322512 (= e!2689251 e!2689252)))

(declare-fun res!1771476 () Bool)

(assert (=> b!4322512 (=> (not res!1771476) (not e!2689252))))

(assert (=> b!4322512 (= res!1771476 (bvslt (_1!26879 (h!53839 lt!1539409)) (_1!26879 (h!53839 (t!355382 lt!1539409)))))))

(declare-fun b!4322513 () Bool)

(assert (=> b!4322513 (= e!2689252 (isStrictlySorted!21 (t!355382 lt!1539409)))))

(assert (= (and d!1270963 (not res!1771475)) b!4322512))

(assert (= (and b!4322512 res!1771476) b!4322513))

(declare-fun m!4916811 () Bool)

(assert (=> b!4322513 m!4916811))

(assert (=> d!1270629 d!1270963))

(declare-fun d!1270965 () Bool)

(declare-fun res!1771477 () Bool)

(declare-fun e!2689253 () Bool)

(assert (=> d!1270965 (=> res!1771477 e!2689253)))

(assert (=> d!1270965 (= res!1771477 (not ((_ is Cons!48378) (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314)))))))))

(assert (=> d!1270965 (= (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314))))) e!2689253)))

(declare-fun b!4322514 () Bool)

(declare-fun e!2689254 () Bool)

(assert (=> b!4322514 (= e!2689253 e!2689254)))

(declare-fun res!1771478 () Bool)

(assert (=> b!4322514 (=> (not res!1771478) (not e!2689254))))

(assert (=> b!4322514 (= res!1771478 (not (containsKey!400 (t!355381 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314)))))))))))

(declare-fun b!4322515 () Bool)

(assert (=> b!4322515 (= e!2689254 (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314)))))))))

(assert (= (and d!1270965 (not res!1771477)) b!4322514))

(assert (= (and b!4322514 res!1771478) b!4322515))

(declare-fun m!4916813 () Bool)

(assert (=> b!4322514 m!4916813))

(declare-fun m!4916815 () Bool)

(assert (=> b!4322515 m!4916815))

(assert (=> bs!606595 d!1270965))

(assert (=> d!1270621 d!1270671))

(declare-fun b!4322516 () Bool)

(declare-fun res!1771481 () Bool)

(declare-fun e!2689262 () Bool)

(assert (=> b!4322516 (=> (not res!1771481) (not e!2689262))))

(assert (=> b!4322516 (= res!1771481 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 #b00000000000000000000000000000000))))

(declare-fun e!2689258 () Bool)

(assert (=> b!4322516 (= e!2689258 e!2689262)))

(declare-fun b!4322517 () Bool)

(declare-fun e!2689261 () List!48502)

(declare-fun e!2689260 () List!48502)

(assert (=> b!4322517 (= e!2689261 e!2689260)))

(declare-fun c!735277 () Bool)

(assert (=> b!4322517 (= c!735277 (and (= lt!1539410 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4322518 () Bool)

(declare-fun res!1771480 () Bool)

(declare-fun e!2689265 () Bool)

(assert (=> b!4322518 (=> (not res!1771480) (not e!2689265))))

(assert (=> b!4322518 (= res!1771480 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4322518 (= e!2689258 e!2689265)))

(declare-fun lt!1540365 () SeekEntryResult!21)

(declare-fun b!4322520 () Bool)

(declare-fun call!299775 () List!48502)

(assert (=> b!4322520 (= e!2689262 (= call!299775 (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1540365))))))

(declare-fun b!4322521 () Bool)

(declare-fun e!2689257 () List!48502)

(assert (=> b!4322521 (= e!2689257 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410))))

(declare-fun bm!299768 () Bool)

(declare-fun call!299776 () ListLongMap!1171)

(assert (=> bm!299768 (= call!299776 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322522 () Bool)

(declare-fun lt!1540375 () Unit!67766)

(declare-fun lt!1540371 () Unit!67766)

(assert (=> b!4322522 (= lt!1540375 lt!1540371)))

(declare-fun e!2689263 () Bool)

(assert (=> b!4322522 e!2689263))

(declare-fun c!735274 () Bool)

(assert (=> b!4322522 (= c!735274 (= lt!1539410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4322522 (= lt!1540371 (lemmaKeyInListMapThenSameValueInArray!11 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 (index!1464 lt!1540365) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1540367 () Unit!67766)

(declare-fun lt!1540366 () Unit!67766)

(assert (=> b!4322522 (= lt!1540367 lt!1540366)))

(assert (=> b!4322522 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1540365)))))

(assert (=> b!4322522 (= lt!1540366 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1540365) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1540372 () Unit!67766)

(declare-fun lt!1540370 () Unit!67766)

(assert (=> b!4322522 (= lt!1540372 lt!1540370)))

(assert (=> b!4322522 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 #b00000000000000000000000000000000)))

(assert (=> b!4322522 (= lt!1540370 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 (index!1464 lt!1540365)))))

(assert (=> b!4322522 (= e!2689257 (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1540365)))))

(declare-fun b!4322523 () Bool)

(declare-fun e!2689255 () Bool)

(declare-fun call!299773 () List!48502)

(assert (=> b!4322523 (= e!2689255 (= call!299773 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322524 () Bool)

(declare-fun c!735276 () Bool)

(assert (=> b!4322524 (= c!735276 (and (= lt!1539410 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2689264 () List!48502)

(assert (=> b!4322524 (= e!2689260 e!2689264)))

(declare-fun e!2689256 () Bool)

(declare-fun lt!1540368 () List!48502)

(declare-fun b!4322525 () Bool)

(assert (=> b!4322525 (= e!2689256 (= lt!1540368 (get!15675 (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539410))))))

(declare-fun bm!299769 () Bool)

(assert (=> bm!299769 (= call!299775 call!299773)))

(declare-fun b!4322526 () Bool)

(declare-fun e!2689259 () Bool)

(declare-fun lt!1540373 () SeekEntryResult!21)

(assert (=> b!4322526 (= e!2689259 (inRange!0 (index!1464 lt!1540373) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322527 () Bool)

(assert (=> b!4322527 (= e!2689263 e!2689258)))

(declare-fun c!735273 () Bool)

(assert (=> b!4322527 (= c!735273 (= lt!1539410 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322528 () Bool)

(assert (=> b!4322528 (= e!2689260 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun d!1270967 () Bool)

(assert (=> d!1270967 e!2689256))

(declare-fun c!735275 () Bool)

(assert (=> d!1270967 (= c!735275 (contains!10427 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))

(assert (=> d!1270967 (= lt!1540368 e!2689261)))

(declare-fun c!735278 () Bool)

(assert (=> d!1270967 (= c!735278 (= lt!1539410 (bvneg lt!1539410)))))

(assert (=> d!1270967 (valid!3765 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))

(assert (=> d!1270967 (= (apply!11140 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410) lt!1540368)))

(declare-fun b!4322519 () Bool)

(assert (=> b!4322519 (= e!2689264 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410))))

(declare-fun bm!299770 () Bool)

(declare-fun call!299774 () ListLongMap!1171)

(assert (=> bm!299770 (= call!299773 (apply!11141 (ite c!735274 call!299776 call!299774) lt!1539410))))

(declare-fun b!4322529 () Bool)

(assert (=> b!4322529 (= e!2689261 e!2689257)))

(assert (=> b!4322529 (= lt!1540365 (seekEntry!0 lt!1539410 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1540374 () Unit!67766)

(assert (=> b!4322529 (= lt!1540374 (lemmaSeekEntryGivesInRangeIndex!11 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410))))

(assert (=> b!4322529 (= lt!1540373 (seekEntry!0 lt!1539410 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun res!1771482 () Bool)

(assert (=> b!4322529 (= res!1771482 (not ((_ is Found!21) lt!1540373)))))

(assert (=> b!4322529 (=> res!1771482 e!2689259)))

(assert (=> b!4322529 e!2689259))

(declare-fun lt!1540369 () Unit!67766)

(assert (=> b!4322529 (= lt!1540369 lt!1540374)))

(declare-fun c!735272 () Bool)

(assert (=> b!4322529 (= c!735272 ((_ is Found!21) lt!1540365))))

(declare-fun bm!299771 () Bool)

(assert (=> bm!299771 (= call!299774 call!299776)))

(declare-fun b!4322530 () Bool)

(assert (=> b!4322530 (= e!2689264 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(declare-fun b!4322531 () Bool)

(assert (=> b!4322531 (= e!2689256 (= lt!1540368 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410)))))

(declare-fun b!4322532 () Bool)

(assert (=> b!4322532 (= e!2689265 (= call!299775 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322533 () Bool)

(assert (=> b!4322533 (= e!2689263 e!2689255)))

(declare-fun res!1771479 () Bool)

(assert (=> b!4322533 (= res!1771479 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4322533 (=> (not res!1771479) (not e!2689255))))

(assert (= (and d!1270967 c!735278) b!4322517))

(assert (= (and d!1270967 (not c!735278)) b!4322529))

(assert (= (and b!4322517 c!735277) b!4322528))

(assert (= (and b!4322517 (not c!735277)) b!4322524))

(assert (= (and b!4322524 c!735276) b!4322530))

(assert (= (and b!4322524 (not c!735276)) b!4322519))

(assert (= (and b!4322529 (not res!1771482)) b!4322526))

(assert (= (and b!4322529 c!735272) b!4322522))

(assert (= (and b!4322529 (not c!735272)) b!4322521))

(assert (= (and b!4322522 c!735274) b!4322533))

(assert (= (and b!4322522 (not c!735274)) b!4322527))

(assert (= (and b!4322533 res!1771479) b!4322523))

(assert (= (and b!4322527 c!735273) b!4322518))

(assert (= (and b!4322527 (not c!735273)) b!4322516))

(assert (= (and b!4322518 res!1771480) b!4322532))

(assert (= (and b!4322516 res!1771481) b!4322520))

(assert (= (or b!4322532 b!4322520) bm!299771))

(assert (= (or b!4322532 b!4322520) bm!299769))

(assert (= (or b!4322523 bm!299771) bm!299768))

(assert (= (or b!4322523 bm!299769) bm!299770))

(assert (= (and d!1270967 c!735275) b!4322525))

(assert (= (and d!1270967 (not c!735275)) b!4322531))

(declare-fun b_lambda!127319 () Bool)

(assert (=> (not b_lambda!127319) (not b!4322521)))

(assert (=> b!4322521 t!355386))

(declare-fun b_and!340529 () Bool)

(assert (= b_and!340527 (and (=> t!355386 result!314884) b_and!340529)))

(declare-fun b_lambda!127321 () Bool)

(assert (=> (not b_lambda!127321) (not b!4322519)))

(assert (=> b!4322519 t!355386))

(declare-fun b_and!340531 () Bool)

(assert (= b_and!340529 (and (=> t!355386 result!314884) b_and!340531)))

(declare-fun b_lambda!127323 () Bool)

(assert (=> (not b_lambda!127323) (not b!4322531)))

(assert (=> b!4322531 t!355386))

(declare-fun b_and!340533 () Bool)

(assert (= b_and!340531 (and (=> t!355386 result!314884) b_and!340533)))

(declare-fun m!4916817 () Bool)

(assert (=> b!4322526 m!4916817))

(assert (=> b!4322531 m!4915633))

(declare-fun m!4916819 () Bool)

(assert (=> bm!299770 m!4916819))

(declare-fun m!4916821 () Bool)

(assert (=> b!4322520 m!4916821))

(declare-fun m!4916823 () Bool)

(assert (=> b!4322529 m!4916823))

(declare-fun m!4916825 () Bool)

(assert (=> b!4322529 m!4916825))

(assert (=> d!1270967 m!4915751))

(assert (=> d!1270967 m!4915533))

(assert (=> b!4322525 m!4915377))

(declare-fun m!4916827 () Bool)

(assert (=> b!4322525 m!4916827))

(assert (=> b!4322525 m!4916827))

(declare-fun m!4916829 () Bool)

(assert (=> b!4322525 m!4916829))

(declare-fun m!4916831 () Bool)

(assert (=> b!4322516 m!4916831))

(assert (=> b!4322519 m!4915633))

(declare-fun m!4916833 () Bool)

(assert (=> b!4322522 m!4916833))

(assert (=> b!4322522 m!4915725))

(declare-fun m!4916835 () Bool)

(assert (=> b!4322522 m!4916835))

(declare-fun m!4916837 () Bool)

(assert (=> b!4322522 m!4916837))

(assert (=> b!4322522 m!4916835))

(assert (=> b!4322522 m!4916831))

(declare-fun m!4916839 () Bool)

(assert (=> b!4322522 m!4916839))

(declare-fun m!4916841 () Bool)

(assert (=> b!4322522 m!4916841))

(assert (=> b!4322522 m!4916821))

(assert (=> b!4322522 m!4915725))

(assert (=> b!4322521 m!4915633))

(assert (=> bm!299768 m!4915725))

(assert (=> d!1270621 d!1270967))

(assert (=> d!1270621 d!1270587))

(declare-fun d!1270969 () Bool)

(declare-fun lt!1540376 () Bool)

(assert (=> d!1270969 (= lt!1540376 (select (content!7571 (keys!16173 (extractMap!368 (toList!2554 lt!1539420)))) key!2048))))

(declare-fun e!2689266 () Bool)

(assert (=> d!1270969 (= lt!1540376 e!2689266)))

(declare-fun res!1771484 () Bool)

(assert (=> d!1270969 (=> (not res!1771484) (not e!2689266))))

(assert (=> d!1270969 (= res!1771484 ((_ is Cons!48380) (keys!16173 (extractMap!368 (toList!2554 lt!1539420)))))))

(assert (=> d!1270969 (= (contains!10431 (keys!16173 (extractMap!368 (toList!2554 lt!1539420))) key!2048) lt!1540376)))

(declare-fun b!4322534 () Bool)

(declare-fun e!2689267 () Bool)

(assert (=> b!4322534 (= e!2689266 e!2689267)))

(declare-fun res!1771483 () Bool)

(assert (=> b!4322534 (=> res!1771483 e!2689267)))

(assert (=> b!4322534 (= res!1771483 (= (h!53841 (keys!16173 (extractMap!368 (toList!2554 lt!1539420)))) key!2048))))

(declare-fun b!4322535 () Bool)

(assert (=> b!4322535 (= e!2689267 (contains!10431 (t!355387 (keys!16173 (extractMap!368 (toList!2554 lt!1539420)))) key!2048))))

(assert (= (and d!1270969 res!1771484) b!4322534))

(assert (= (and b!4322534 (not res!1771483)) b!4322535))

(assert (=> d!1270969 m!4915571))

(declare-fun m!4916843 () Bool)

(assert (=> d!1270969 m!4916843))

(declare-fun m!4916845 () Bool)

(assert (=> d!1270969 m!4916845))

(declare-fun m!4916847 () Bool)

(assert (=> b!4322535 m!4916847))

(assert (=> b!4321652 d!1270969))

(declare-fun bs!606757 () Bool)

(declare-fun b!4322537 () Bool)

(assert (= bs!606757 (and b!4322537 b!4322173)))

(declare-fun lambda!133938 () Int)

(assert (=> bs!606757 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133938 lambda!133885))))

(declare-fun bs!606758 () Bool)

(assert (= bs!606758 (and b!4322537 b!4322179)))

(assert (=> bs!606758 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133938 lambda!133886))))

(declare-fun bs!606759 () Bool)

(assert (= bs!606759 (and b!4322537 b!4322195)))

(assert (=> bs!606759 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (toList!2555 (map!10406 thiss!42308))) (= lambda!133938 lambda!133893))))

(declare-fun bs!606760 () Bool)

(assert (= bs!606760 (and b!4322537 b!4321960)))

(assert (=> bs!606760 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133938 lambda!133881))))

(declare-fun bs!606761 () Bool)

(assert (= bs!606761 (and b!4322537 b!4321961)))

(assert (=> bs!606761 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133938 lambda!133883))))

(declare-fun bs!606762 () Bool)

(assert (= bs!606762 (and b!4322537 b!4322174)))

(assert (=> bs!606762 (= lambda!133938 lambda!133887)))

(declare-fun bs!606763 () Bool)

(assert (= bs!606763 (and b!4322537 b!4321966)))

(assert (=> bs!606763 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133938 lambda!133882))))

(declare-fun bs!606764 () Bool)

(assert (= bs!606764 (and b!4322537 b!4322225)))

(assert (=> bs!606764 (= (= (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133938 lambda!133895))))

(assert (=> b!4322537 true))

(declare-fun bs!606765 () Bool)

(declare-fun b!4322538 () Bool)

(assert (= bs!606765 (and b!4322538 b!4321962)))

(declare-fun lambda!133939 () Int)

(assert (=> bs!606765 (= lambda!133939 lambda!133884)))

(declare-fun bs!606766 () Bool)

(assert (= bs!606766 (and b!4322538 b!4322175)))

(assert (=> bs!606766 (= lambda!133939 lambda!133888)))

(declare-fun bs!606767 () Bool)

(assert (= bs!606767 (and b!4322538 b!4322196)))

(assert (=> bs!606767 (= lambda!133939 lambda!133894)))

(declare-fun bs!606768 () Bool)

(assert (= bs!606768 (and b!4322538 b!4322226)))

(assert (=> bs!606768 (= lambda!133939 lambda!133896)))

(declare-fun d!1270971 () Bool)

(declare-fun e!2689268 () Bool)

(assert (=> d!1270971 e!2689268))

(declare-fun res!1771485 () Bool)

(assert (=> d!1270971 (=> (not res!1771485) (not e!2689268))))

(declare-fun lt!1540377 () List!48504)

(assert (=> d!1270971 (= res!1771485 (noDuplicate!587 lt!1540377))))

(assert (=> d!1270971 (= lt!1540377 (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))

(assert (=> d!1270971 (= (keys!16173 (extractMap!368 (toList!2554 lt!1539420))) lt!1540377)))

(declare-fun b!4322536 () Bool)

(declare-fun res!1771486 () Bool)

(assert (=> b!4322536 (=> (not res!1771486) (not e!2689268))))

(assert (=> b!4322536 (= res!1771486 (= (length!30 lt!1540377) (length!31 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))))

(declare-fun res!1771487 () Bool)

(assert (=> b!4322537 (=> (not res!1771487) (not e!2689268))))

(assert (=> b!4322537 (= res!1771487 (forall!8813 lt!1540377 lambda!133938))))

(assert (=> b!4322538 (= e!2689268 (= (content!7571 lt!1540377) (content!7571 (map!10408 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) lambda!133939))))))

(assert (= (and d!1270971 res!1771485) b!4322536))

(assert (= (and b!4322536 res!1771486) b!4322537))

(assert (= (and b!4322537 res!1771487) b!4322538))

(declare-fun m!4916849 () Bool)

(assert (=> d!1270971 m!4916849))

(assert (=> d!1270971 m!4915577))

(declare-fun m!4916851 () Bool)

(assert (=> b!4322536 m!4916851))

(assert (=> b!4322536 m!4916291))

(declare-fun m!4916853 () Bool)

(assert (=> b!4322537 m!4916853))

(declare-fun m!4916855 () Bool)

(assert (=> b!4322538 m!4916855))

(declare-fun m!4916857 () Bool)

(assert (=> b!4322538 m!4916857))

(assert (=> b!4322538 m!4916857))

(declare-fun m!4916859 () Bool)

(assert (=> b!4322538 m!4916859))

(assert (=> b!4321652 d!1270971))

(assert (=> bs!606594 d!1270589))

(assert (=> d!1270645 d!1270515))

(assert (=> d!1270645 d!1270523))

(declare-fun d!1270973 () Bool)

(declare-fun res!1771488 () Bool)

(declare-fun e!2689269 () Bool)

(assert (=> d!1270973 (=> res!1771488 e!2689269)))

(assert (=> d!1270973 (= res!1771488 ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539353))))))

(assert (=> d!1270973 (= (forall!8811 (t!355382 (toList!2554 lt!1539353)) lambda!133846) e!2689269)))

(declare-fun b!4322539 () Bool)

(declare-fun e!2689270 () Bool)

(assert (=> b!4322539 (= e!2689269 e!2689270)))

(declare-fun res!1771489 () Bool)

(assert (=> b!4322539 (=> (not res!1771489) (not e!2689270))))

(assert (=> b!4322539 (= res!1771489 (dynLambda!20507 lambda!133846 (h!53839 (t!355382 (toList!2554 lt!1539353)))))))

(declare-fun b!4322540 () Bool)

(assert (=> b!4322540 (= e!2689270 (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539353))) lambda!133846))))

(assert (= (and d!1270973 (not res!1771488)) b!4322539))

(assert (= (and b!4322539 res!1771489) b!4322540))

(declare-fun b_lambda!127325 () Bool)

(assert (=> (not b_lambda!127325) (not b!4322539)))

(declare-fun m!4916861 () Bool)

(assert (=> b!4322539 m!4916861))

(declare-fun m!4916863 () Bool)

(assert (=> b!4322540 m!4916863))

(assert (=> b!4321716 d!1270973))

(assert (=> b!4321745 d!1270823))

(declare-fun b!4322541 () Bool)

(declare-fun e!2689271 () Option!10300)

(assert (=> b!4322541 (= e!2689271 (Some!10299 (_2!26879 (h!53839 (t!355382 lt!1539364)))))))

(declare-fun b!4322543 () Bool)

(declare-fun e!2689272 () Option!10300)

(assert (=> b!4322543 (= e!2689272 (getValueByKey!297 (t!355382 (t!355382 lt!1539364)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun c!735279 () Bool)

(declare-fun d!1270975 () Bool)

(assert (=> d!1270975 (= c!735279 (and ((_ is Cons!48379) (t!355382 lt!1539364)) (= (_1!26879 (h!53839 (t!355382 lt!1539364))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270975 (= (getValueByKey!297 (t!355382 lt!1539364) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2689271)))

(declare-fun b!4322544 () Bool)

(assert (=> b!4322544 (= e!2689272 None!10299)))

(declare-fun b!4322542 () Bool)

(assert (=> b!4322542 (= e!2689271 e!2689272)))

(declare-fun c!735280 () Bool)

(assert (=> b!4322542 (= c!735280 (and ((_ is Cons!48379) (t!355382 lt!1539364)) (not (= (_1!26879 (h!53839 (t!355382 lt!1539364))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(assert (= (and d!1270975 c!735279) b!4322541))

(assert (= (and d!1270975 (not c!735279)) b!4322542))

(assert (= (and b!4322542 c!735280) b!4322543))

(assert (= (and b!4322542 (not c!735280)) b!4322544))

(declare-fun m!4916865 () Bool)

(assert (=> b!4322543 m!4916865))

(assert (=> b!4321575 d!1270975))

(declare-fun d!1270977 () Bool)

(declare-fun res!1771490 () Bool)

(declare-fun e!2689273 () Bool)

(assert (=> d!1270977 (=> res!1771490 e!2689273)))

(assert (=> d!1270977 (= res!1771490 (and ((_ is Cons!48378) (t!355381 lt!1539320)) (= (_1!26878 (h!53838 (t!355381 lt!1539320))) (_1!26878 (h!53838 lt!1539320)))))))

(assert (=> d!1270977 (= (containsKey!400 (t!355381 lt!1539320) (_1!26878 (h!53838 lt!1539320))) e!2689273)))

(declare-fun b!4322545 () Bool)

(declare-fun e!2689274 () Bool)

(assert (=> b!4322545 (= e!2689273 e!2689274)))

(declare-fun res!1771491 () Bool)

(assert (=> b!4322545 (=> (not res!1771491) (not e!2689274))))

(assert (=> b!4322545 (= res!1771491 ((_ is Cons!48378) (t!355381 lt!1539320)))))

(declare-fun b!4322546 () Bool)

(assert (=> b!4322546 (= e!2689274 (containsKey!400 (t!355381 (t!355381 lt!1539320)) (_1!26878 (h!53838 lt!1539320))))))

(assert (= (and d!1270977 (not res!1771490)) b!4322545))

(assert (= (and b!4322545 res!1771491) b!4322546))

(declare-fun m!4916867 () Bool)

(assert (=> b!4322546 m!4916867))

(assert (=> b!4321711 d!1270977))

(declare-fun d!1270979 () Bool)

(assert (=> d!1270979 (= (map!10407 (_2!26881 lt!1539503)) (getCurrentListMap!24 (_keys!5066 (_2!26881 lt!1539503)) (_values!5044 (_2!26881 lt!1539503)) (mask!13375 (_2!26881 lt!1539503)) (extraKeys!5010 (_2!26881 lt!1539503)) (zeroValue!5021 (_2!26881 lt!1539503)) (minValue!5021 (_2!26881 lt!1539503)) #b00000000000000000000000000000000 (defaultEntry!5148 (_2!26881 lt!1539503))))))

(declare-fun bs!606769 () Bool)

(assert (= bs!606769 d!1270979))

(declare-fun m!4916869 () Bool)

(assert (=> bs!606769 m!4916869))

(assert (=> bm!299581 d!1270979))

(assert (=> b!4321469 d!1270755))

(assert (=> bm!299618 d!1270759))

(declare-fun d!1270981 () Bool)

(declare-fun lt!1540378 () Bool)

(assert (=> d!1270981 (= lt!1540378 (select (content!7571 e!2688771) key!2048))))

(declare-fun e!2689275 () Bool)

(assert (=> d!1270981 (= lt!1540378 e!2689275)))

(declare-fun res!1771493 () Bool)

(assert (=> d!1270981 (=> (not res!1771493) (not e!2689275))))

(assert (=> d!1270981 (= res!1771493 ((_ is Cons!48380) e!2688771))))

(assert (=> d!1270981 (= (contains!10431 e!2688771 key!2048) lt!1540378)))

(declare-fun b!4322547 () Bool)

(declare-fun e!2689276 () Bool)

(assert (=> b!4322547 (= e!2689275 e!2689276)))

(declare-fun res!1771492 () Bool)

(assert (=> b!4322547 (=> res!1771492 e!2689276)))

(assert (=> b!4322547 (= res!1771492 (= (h!53841 e!2688771) key!2048))))

(declare-fun b!4322548 () Bool)

(assert (=> b!4322548 (= e!2689276 (contains!10431 (t!355387 e!2688771) key!2048))))

(assert (= (and d!1270981 res!1771493) b!4322547))

(assert (= (and b!4322547 (not res!1771492)) b!4322548))

(declare-fun m!4916871 () Bool)

(assert (=> d!1270981 m!4916871))

(declare-fun m!4916873 () Bool)

(assert (=> d!1270981 m!4916873))

(declare-fun m!4916875 () Bool)

(assert (=> b!4322548 m!4916875))

(assert (=> bm!299608 d!1270981))

(declare-fun d!1270983 () Bool)

(assert (=> d!1270983 (= (get!15675 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512)) (v!42758 (getValueByKey!297 (toList!2554 (ite c!734950 lt!1539421 call!299515)) call!299512)))))

(assert (=> d!1270663 d!1270983))

(assert (=> d!1270663 d!1270883))

(declare-fun d!1270985 () Bool)

(declare-fun res!1771494 () Bool)

(declare-fun e!2689277 () Bool)

(assert (=> d!1270985 (=> res!1771494 e!2689277)))

(assert (=> d!1270985 (= res!1771494 (and ((_ is Cons!48379) lt!1539560) (= (_1!26879 (h!53839 lt!1539560)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1270985 (= (containsKey!401 lt!1539560 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2689277)))

(declare-fun b!4322549 () Bool)

(declare-fun e!2689278 () Bool)

(assert (=> b!4322549 (= e!2689277 e!2689278)))

(declare-fun res!1771495 () Bool)

(assert (=> b!4322549 (=> (not res!1771495) (not e!2689278))))

(assert (=> b!4322549 (= res!1771495 (and (or (not ((_ is Cons!48379) lt!1539560)) (bvsle (_1!26879 (h!53839 lt!1539560)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))) ((_ is Cons!48379) lt!1539560) (bvslt (_1!26879 (h!53839 lt!1539560)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun b!4322550 () Bool)

(assert (=> b!4322550 (= e!2689278 (containsKey!401 (t!355382 lt!1539560) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (= (and d!1270985 (not res!1771494)) b!4322549))

(assert (= (and b!4322549 res!1771495) b!4322550))

(declare-fun m!4916877 () Bool)

(assert (=> b!4322550 m!4916877))

(assert (=> b!4321612 d!1270985))

(declare-fun b!4322551 () Bool)

(declare-fun e!2689279 () List!48502)

(assert (=> b!4322551 (= e!2689279 (t!355381 (t!355381 (t!355381 lt!1539320))))))

(declare-fun b!4322552 () Bool)

(declare-fun e!2689280 () List!48502)

(assert (=> b!4322552 (= e!2689279 e!2689280)))

(declare-fun c!735282 () Bool)

(assert (=> b!4322552 (= c!735282 ((_ is Cons!48378) (t!355381 (t!355381 lt!1539320))))))

(declare-fun b!4322554 () Bool)

(assert (=> b!4322554 (= e!2689280 Nil!48378)))

(declare-fun b!4322553 () Bool)

(assert (=> b!4322553 (= e!2689280 (Cons!48378 (h!53838 (t!355381 (t!355381 lt!1539320))) (removePairForKey!267 (t!355381 (t!355381 (t!355381 lt!1539320))) key!2048)))))

(declare-fun d!1270987 () Bool)

(declare-fun lt!1540379 () List!48502)

(assert (=> d!1270987 (not (containsKey!400 lt!1540379 key!2048))))

(assert (=> d!1270987 (= lt!1540379 e!2689279)))

(declare-fun c!735281 () Bool)

(assert (=> d!1270987 (= c!735281 (and ((_ is Cons!48378) (t!355381 (t!355381 lt!1539320))) (= (_1!26878 (h!53838 (t!355381 (t!355381 lt!1539320)))) key!2048)))))

(assert (=> d!1270987 (noDuplicateKeys!262 (t!355381 (t!355381 lt!1539320)))))

(assert (=> d!1270987 (= (removePairForKey!267 (t!355381 (t!355381 lt!1539320)) key!2048) lt!1540379)))

(assert (= (and d!1270987 c!735281) b!4322551))

(assert (= (and d!1270987 (not c!735281)) b!4322552))

(assert (= (and b!4322552 c!735282) b!4322553))

(assert (= (and b!4322552 (not c!735282)) b!4322554))

(declare-fun m!4916879 () Bool)

(assert (=> b!4322553 m!4916879))

(declare-fun m!4916881 () Bool)

(assert (=> d!1270987 m!4916881))

(declare-fun m!4916883 () Bool)

(assert (=> d!1270987 m!4916883))

(assert (=> b!4321665 d!1270987))

(declare-fun d!1270989 () Bool)

(assert (=> d!1270989 (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 lt!1539320))) (hash!1179 (hashF!6919 thiss!42308) (_1!26878 (h!53838 lt!1539320))))))

(declare-fun bs!606770 () Bool)

(assert (= bs!606770 d!1270989))

(declare-fun m!4916885 () Bool)

(assert (=> bs!606770 m!4916885))

(assert (=> bs!606589 d!1270989))

(declare-fun d!1270991 () Bool)

(assert (=> d!1270991 (= (map!10405 (_2!26880 lt!1539532)) (map!10407 (v!42752 (underlying!9735 (_2!26880 lt!1539532)))))))

(declare-fun bs!606771 () Bool)

(assert (= bs!606771 d!1270991))

(declare-fun m!4916887 () Bool)

(assert (=> bs!606771 m!4916887))

(assert (=> b!4321531 d!1270991))

(assert (=> b!4321531 d!1270543))

(declare-fun d!1270993 () Bool)

(declare-fun res!1771496 () Bool)

(declare-fun e!2689281 () Bool)

(assert (=> d!1270993 (=> res!1771496 e!2689281)))

(assert (=> d!1270993 (= res!1771496 (and ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= (_1!26878 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) key!2048)))))

(assert (=> d!1270993 (= (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048) e!2689281)))

(declare-fun b!4322555 () Bool)

(declare-fun e!2689282 () Bool)

(assert (=> b!4322555 (= e!2689281 e!2689282)))

(declare-fun res!1771497 () Bool)

(assert (=> b!4322555 (=> (not res!1771497) (not e!2689282))))

(assert (=> b!4322555 (= res!1771497 ((_ is Cons!48378) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))))

(declare-fun b!4322556 () Bool)

(assert (=> b!4322556 (= e!2689282 (containsKey!402 (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) key!2048))))

(assert (= (and d!1270993 (not res!1771496)) b!4322555))

(assert (= (and b!4322555 res!1771497) b!4322556))

(declare-fun m!4916889 () Bool)

(assert (=> b!4322556 m!4916889))

(assert (=> d!1270605 d!1270993))

(declare-fun d!1270995 () Bool)

(declare-fun res!1771498 () Bool)

(declare-fun e!2689283 () Bool)

(assert (=> d!1270995 (=> res!1771498 e!2689283)))

(assert (=> d!1270995 (= res!1771498 (or ((_ is Nil!48379) lt!1539560) ((_ is Nil!48379) (t!355382 lt!1539560))))))

(assert (=> d!1270995 (= (isStrictlySorted!21 lt!1539560) e!2689283)))

(declare-fun b!4322557 () Bool)

(declare-fun e!2689284 () Bool)

(assert (=> b!4322557 (= e!2689283 e!2689284)))

(declare-fun res!1771499 () Bool)

(assert (=> b!4322557 (=> (not res!1771499) (not e!2689284))))

(assert (=> b!4322557 (= res!1771499 (bvslt (_1!26879 (h!53839 lt!1539560)) (_1!26879 (h!53839 (t!355382 lt!1539560)))))))

(declare-fun b!4322558 () Bool)

(assert (=> b!4322558 (= e!2689284 (isStrictlySorted!21 (t!355382 lt!1539560)))))

(assert (= (and d!1270995 (not res!1771498)) b!4322557))

(assert (= (and b!4322557 res!1771499) b!4322558))

(declare-fun m!4916891 () Bool)

(assert (=> b!4322558 m!4916891))

(assert (=> d!1270581 d!1270995))

(declare-fun d!1270997 () Bool)

(declare-fun res!1771500 () Bool)

(declare-fun e!2689285 () Bool)

(assert (=> d!1270997 (=> res!1771500 e!2689285)))

(assert (=> d!1270997 (= res!1771500 (or ((_ is Nil!48379) (toList!2554 lt!1539311)) ((_ is Nil!48379) (t!355382 (toList!2554 lt!1539311)))))))

(assert (=> d!1270997 (= (isStrictlySorted!21 (toList!2554 lt!1539311)) e!2689285)))

(declare-fun b!4322559 () Bool)

(declare-fun e!2689286 () Bool)

(assert (=> b!4322559 (= e!2689285 e!2689286)))

(declare-fun res!1771501 () Bool)

(assert (=> b!4322559 (=> (not res!1771501) (not e!2689286))))

(assert (=> b!4322559 (= res!1771501 (bvslt (_1!26879 (h!53839 (toList!2554 lt!1539311))) (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539311))))))))

(declare-fun b!4322560 () Bool)

(assert (=> b!4322560 (= e!2689286 (isStrictlySorted!21 (t!355382 (toList!2554 lt!1539311))))))

(assert (= (and d!1270997 (not res!1771500)) b!4322559))

(assert (= (and b!4322559 res!1771501) b!4322560))

(assert (=> b!4322560 m!4916441))

(assert (=> d!1270581 d!1270997))

(declare-fun d!1270999 () Bool)

(assert (=> d!1270999 (= (get!15676 lt!1539542) (v!42759 lt!1539542))))

(assert (=> b!4321560 d!1270999))

(declare-fun d!1271001 () Bool)

(declare-fun lt!1540380 () Bool)

(assert (=> d!1271001 (= lt!1540380 (select (content!7570 (t!355382 (toList!2554 lt!1539362))) (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun e!2689288 () Bool)

(assert (=> d!1271001 (= lt!1540380 e!2689288)))

(declare-fun res!1771503 () Bool)

(assert (=> d!1271001 (=> (not res!1771503) (not e!2689288))))

(assert (=> d!1271001 (= res!1771503 ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539362))))))

(assert (=> d!1271001 (= (contains!10428 (t!355382 (toList!2554 lt!1539362)) (tuple2!47187 lt!1539310 lt!1539317)) lt!1540380)))

(declare-fun b!4322561 () Bool)

(declare-fun e!2689287 () Bool)

(assert (=> b!4322561 (= e!2689288 e!2689287)))

(declare-fun res!1771502 () Bool)

(assert (=> b!4322561 (=> res!1771502 e!2689287)))

(assert (=> b!4322561 (= res!1771502 (= (h!53839 (t!355382 (toList!2554 lt!1539362))) (tuple2!47187 lt!1539310 lt!1539317)))))

(declare-fun b!4322562 () Bool)

(assert (=> b!4322562 (= e!2689287 (contains!10428 (t!355382 (t!355382 (toList!2554 lt!1539362))) (tuple2!47187 lt!1539310 lt!1539317)))))

(assert (= (and d!1271001 res!1771503) b!4322561))

(assert (= (and b!4322561 (not res!1771502)) b!4322562))

(assert (=> d!1271001 m!4916127))

(declare-fun m!4916893 () Bool)

(assert (=> d!1271001 m!4916893))

(declare-fun m!4916895 () Bool)

(assert (=> b!4322562 m!4916895))

(assert (=> b!4321710 d!1271001))

(assert (=> bm!299630 d!1270749))

(declare-fun d!1271003 () Bool)

(declare-fun res!1771504 () Bool)

(declare-fun e!2689289 () Bool)

(assert (=> d!1271003 (=> res!1771504 e!2689289)))

(assert (=> d!1271003 (= res!1771504 (and ((_ is Cons!48378) call!299511) (= (_1!26878 (h!53838 call!299511)) key!2048)))))

(assert (=> d!1271003 (= (containsKey!400 call!299511 key!2048) e!2689289)))

(declare-fun b!4322563 () Bool)

(declare-fun e!2689290 () Bool)

(assert (=> b!4322563 (= e!2689289 e!2689290)))

(declare-fun res!1771505 () Bool)

(assert (=> b!4322563 (=> (not res!1771505) (not e!2689290))))

(assert (=> b!4322563 (= res!1771505 ((_ is Cons!48378) call!299511))))

(declare-fun b!4322564 () Bool)

(assert (=> b!4322564 (= e!2689290 (containsKey!400 (t!355381 call!299511) key!2048))))

(assert (= (and d!1271003 (not res!1771504)) b!4322563))

(assert (= (and b!4322563 res!1771505) b!4322564))

(declare-fun m!4916897 () Bool)

(assert (=> b!4322564 m!4916897))

(assert (=> b!4321559 d!1271003))

(declare-fun d!1271005 () Bool)

(declare-fun c!735283 () Bool)

(assert (=> d!1271005 (= c!735283 ((_ is Nil!48379) lt!1539416))))

(declare-fun e!2689291 () (InoxSet tuple2!47186))

(assert (=> d!1271005 (= (content!7570 lt!1539416) e!2689291)))

(declare-fun b!4322565 () Bool)

(assert (=> b!4322565 (= e!2689291 ((as const (Array tuple2!47186 Bool)) false))))

(declare-fun b!4322566 () Bool)

(assert (=> b!4322566 (= e!2689291 ((_ map or) (store ((as const (Array tuple2!47186 Bool)) false) (h!53839 lt!1539416) true) (content!7570 (t!355382 lt!1539416))))))

(assert (= (and d!1271005 c!735283) b!4322565))

(assert (= (and d!1271005 (not c!735283)) b!4322566))

(declare-fun m!4916899 () Bool)

(assert (=> b!4322566 m!4916899))

(assert (=> b!4322566 m!4916515))

(assert (=> d!1270627 d!1271005))

(declare-fun d!1271007 () Bool)

(assert (=> d!1271007 (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 lt!1539317))) (hash!1179 (hashF!6919 thiss!42308) (_1!26878 (h!53838 lt!1539317))))))

(declare-fun bs!606772 () Bool)

(assert (= bs!606772 d!1271007))

(declare-fun m!4916901 () Bool)

(assert (=> bs!606772 m!4916901))

(assert (=> bs!606588 d!1271007))

(declare-fun d!1271009 () Bool)

(assert (=> d!1271009 (= ($colon$colon!661 e!2688674 (ite c!735028 (h!53839 (toList!2554 lt!1539311)) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))) (Cons!48379 (ite c!735028 (h!53839 (toList!2554 lt!1539311)) (tuple2!47187 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317)))) e!2688674))))

(assert (=> bm!299602 d!1271009))

(declare-fun d!1271011 () Bool)

(declare-fun res!1771506 () Bool)

(declare-fun e!2689292 () Bool)

(assert (=> d!1271011 (=> res!1771506 e!2689292)))

(assert (=> d!1271011 (= res!1771506 (and ((_ is Cons!48379) (t!355382 lt!1539409)) (= (_1!26879 (h!53839 (t!355382 lt!1539409))) lt!1539410)))))

(assert (=> d!1271011 (= (containsKey!401 (t!355382 lt!1539409) lt!1539410) e!2689292)))

(declare-fun b!4322567 () Bool)

(declare-fun e!2689293 () Bool)

(assert (=> b!4322567 (= e!2689292 e!2689293)))

(declare-fun res!1771507 () Bool)

(assert (=> b!4322567 (=> (not res!1771507) (not e!2689293))))

(assert (=> b!4322567 (= res!1771507 (and (or (not ((_ is Cons!48379) (t!355382 lt!1539409))) (bvsle (_1!26879 (h!53839 (t!355382 lt!1539409))) lt!1539410)) ((_ is Cons!48379) (t!355382 lt!1539409)) (bvslt (_1!26879 (h!53839 (t!355382 lt!1539409))) lt!1539410)))))

(declare-fun b!4322568 () Bool)

(assert (=> b!4322568 (= e!2689293 (containsKey!401 (t!355382 (t!355382 lt!1539409)) lt!1539410))))

(assert (= (and d!1271011 (not res!1771506)) b!4322567))

(assert (= (and b!4322567 res!1771507) b!4322568))

(declare-fun m!4916903 () Bool)

(assert (=> b!4322568 m!4916903))

(assert (=> b!4321685 d!1271011))

(declare-fun d!1271013 () Bool)

(assert (=> d!1271013 (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 (removePairForKey!267 lt!1539320 key!2048)))) (hash!1179 (hashF!6919 thiss!42308) (_1!26878 (h!53838 (removePairForKey!267 lt!1539320 key!2048)))))))

(declare-fun bs!606773 () Bool)

(assert (= bs!606773 d!1271013))

(declare-fun m!4916905 () Bool)

(assert (=> bs!606773 m!4916905))

(assert (=> bs!606596 d!1271013))

(declare-fun d!1271015 () Bool)

(assert (=> d!1271015 (= (isEmpty!28120 (getValueByKey!297 lt!1539408 lt!1539410)) (not ((_ is Some!10299) (getValueByKey!297 lt!1539408 lt!1539410))))))

(assert (=> d!1270631 d!1271015))

(declare-fun d!1271017 () Bool)

(declare-fun res!1771508 () Bool)

(declare-fun e!2689294 () Bool)

(assert (=> d!1271017 (=> res!1771508 e!2689294)))

(assert (=> d!1271017 (= res!1771508 ((_ is Nil!48379) (toList!2554 lt!1539622)))))

(assert (=> d!1271017 (= (forall!8811 (toList!2554 lt!1539622) lambda!133869) e!2689294)))

(declare-fun b!4322569 () Bool)

(declare-fun e!2689295 () Bool)

(assert (=> b!4322569 (= e!2689294 e!2689295)))

(declare-fun res!1771509 () Bool)

(assert (=> b!4322569 (=> (not res!1771509) (not e!2689295))))

(assert (=> b!4322569 (= res!1771509 (dynLambda!20507 lambda!133869 (h!53839 (toList!2554 lt!1539622))))))

(declare-fun b!4322570 () Bool)

(assert (=> b!4322570 (= e!2689295 (forall!8811 (t!355382 (toList!2554 lt!1539622)) lambda!133869))))

(assert (= (and d!1271017 (not res!1771508)) b!4322569))

(assert (= (and b!4322569 res!1771509) b!4322570))

(declare-fun b_lambda!127327 () Bool)

(assert (=> (not b_lambda!127327) (not b!4322569)))

(declare-fun m!4916907 () Bool)

(assert (=> b!4322569 m!4916907))

(declare-fun m!4916909 () Bool)

(assert (=> b!4322570 m!4916909))

(assert (=> d!1270653 d!1271017))

(assert (=> d!1270653 d!1270535))

(declare-fun d!1271019 () Bool)

(declare-fun res!1771510 () Bool)

(declare-fun e!2689296 () Bool)

(assert (=> d!1271019 (=> res!1771510 e!2689296)))

(assert (=> d!1271019 (= res!1771510 (and ((_ is Cons!48378) (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (= (_1!26878 (h!53838 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) key!2048)))))

(assert (=> d!1271019 (= (containsKey!400 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048) e!2689296)))

(declare-fun b!4322571 () Bool)

(declare-fun e!2689297 () Bool)

(assert (=> b!4322571 (= e!2689296 e!2689297)))

(declare-fun res!1771511 () Bool)

(assert (=> b!4322571 (=> (not res!1771511) (not e!2689297))))

(assert (=> b!4322571 (= res!1771511 ((_ is Cons!48378) (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))

(declare-fun b!4322572 () Bool)

(assert (=> b!4322572 (= e!2689297 (containsKey!400 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) key!2048))))

(assert (= (and d!1271019 (not res!1771510)) b!4322571))

(assert (= (and b!4322571 res!1771511) b!4322572))

(declare-fun m!4916911 () Bool)

(assert (=> b!4322572 m!4916911))

(assert (=> b!4321670 d!1271019))

(declare-fun d!1271021 () Bool)

(declare-fun e!2689298 () Bool)

(assert (=> d!1271021 e!2689298))

(declare-fun res!1771512 () Bool)

(assert (=> d!1271021 (=> res!1771512 e!2689298)))

(declare-fun lt!1540383 () Bool)

(assert (=> d!1271021 (= res!1771512 (not lt!1540383))))

(declare-fun lt!1540384 () Bool)

(assert (=> d!1271021 (= lt!1540383 lt!1540384)))

(declare-fun lt!1540381 () Unit!67766)

(declare-fun e!2689299 () Unit!67766)

(assert (=> d!1271021 (= lt!1540381 e!2689299)))

(declare-fun c!735284 () Bool)

(assert (=> d!1271021 (= c!735284 lt!1540384)))

(assert (=> d!1271021 (= lt!1540384 (containsKey!401 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))

(assert (=> d!1271021 (= (contains!10426 (map!10405 (v!42753 (underlying!9736 thiss!42308))) lt!1539410) lt!1540383)))

(declare-fun b!4322573 () Bool)

(declare-fun lt!1540382 () Unit!67766)

(assert (=> b!4322573 (= e!2689299 lt!1540382)))

(assert (=> b!4322573 (= lt!1540382 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))

(assert (=> b!4322573 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410))))

(declare-fun b!4322574 () Bool)

(declare-fun Unit!67835 () Unit!67766)

(assert (=> b!4322574 (= e!2689299 Unit!67835)))

(declare-fun b!4322575 () Bool)

(assert (=> b!4322575 (= e!2689298 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410)))))

(assert (= (and d!1271021 c!735284) b!4322573))

(assert (= (and d!1271021 (not c!735284)) b!4322574))

(assert (= (and d!1271021 (not res!1771512)) b!4322575))

(declare-fun m!4916913 () Bool)

(assert (=> d!1271021 m!4916913))

(declare-fun m!4916915 () Bool)

(assert (=> b!4322573 m!4916915))

(assert (=> b!4322573 m!4915629))

(assert (=> b!4322573 m!4915629))

(declare-fun m!4916917 () Bool)

(assert (=> b!4322573 m!4916917))

(assert (=> b!4322575 m!4915629))

(assert (=> b!4322575 m!4915629))

(assert (=> b!4322575 m!4916917))

(assert (=> d!1270671 d!1271021))

(assert (=> d!1270671 d!1270543))

(declare-fun b!4322576 () Bool)

(declare-fun e!2689300 () Bool)

(assert (=> b!4322576 (= e!2689300 (ite (= lt!1539410 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!299772 () Bool)

(declare-fun call!299778 () ListLongMap!1171)

(assert (=> bm!299772 (= call!299778 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322577 () Bool)

(declare-fun e!2689302 () Bool)

(declare-fun e!2689301 () Bool)

(assert (=> b!4322577 (= e!2689302 e!2689301)))

(declare-fun c!735289 () Bool)

(assert (=> b!4322577 (= c!735289 (= lt!1539410 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!735285 () Bool)

(declare-fun lt!1540390 () SeekEntryResult!21)

(declare-fun bm!299773 () Bool)

(declare-fun call!299779 () Bool)

(assert (=> bm!299773 (= call!299779 (contains!10426 call!299778 (ite c!735285 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1540390)) lt!1539410)))))

(declare-fun bm!299774 () Bool)

(declare-fun call!299777 () Bool)

(assert (=> bm!299774 (= call!299777 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 #b00000000000000000000000000000000))))

(declare-fun b!4322578 () Bool)

(declare-fun e!2689304 () Bool)

(assert (=> b!4322578 (= e!2689304 true)))

(declare-fun lt!1540398 () Unit!67766)

(assert (=> b!4322578 (= lt!1540398 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 (index!1464 lt!1540390)))))

(assert (=> b!4322578 call!299777))

(declare-fun lt!1540385 () Unit!67766)

(assert (=> b!4322578 (= lt!1540385 lt!1540398)))

(declare-fun lt!1540391 () Unit!67766)

(assert (=> b!4322578 (= lt!1540391 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1540390) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4322578 call!299779))

(declare-fun lt!1540395 () Unit!67766)

(assert (=> b!4322578 (= lt!1540395 lt!1540391)))

(declare-fun b!4322579 () Bool)

(assert (=> b!4322579 (= c!735285 ((_ is Found!21) lt!1540390))))

(assert (=> b!4322579 (= lt!1540390 (seekEntry!0 lt!1539410 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4322579 (= e!2689301 e!2689304)))

(declare-fun d!1271023 () Bool)

(declare-fun lt!1540387 () Bool)

(assert (=> d!1271023 (= lt!1540387 (contains!10426 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410))))

(assert (=> d!1271023 (= lt!1540387 e!2689302)))

(declare-fun c!735287 () Bool)

(assert (=> d!1271023 (= c!735287 (= lt!1539410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1271023 (valid!3765 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))

(assert (=> d!1271023 (= (contains!10427 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))) lt!1539410) lt!1540387)))

(declare-fun b!4322580 () Bool)

(assert (=> b!4322580 false))

(declare-fun lt!1540389 () Unit!67766)

(declare-fun lt!1540393 () Unit!67766)

(assert (=> b!4322580 (= lt!1540389 lt!1540393)))

(declare-fun lt!1540396 () SeekEntryResult!21)

(declare-fun lt!1540388 () (_ BitVec 32))

(assert (=> b!4322580 (and ((_ is Found!21) lt!1540396) (= (index!1464 lt!1540396) lt!1540388))))

(assert (=> b!4322580 (= lt!1540396 (seekEntry!0 lt!1539410 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> b!4322580 (= lt!1540393 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1539410 lt!1540388 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun lt!1540397 () Unit!67766)

(declare-fun lt!1540399 () Unit!67766)

(assert (=> b!4322580 (= lt!1540397 lt!1540399)))

(assert (=> b!4322580 (arrayForallSeekEntryOrOpenFound!0 lt!1540388 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> b!4322580 (= lt!1540399 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 lt!1540388))))

(assert (=> b!4322580 (= lt!1540388 (arrayScanForKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 #b00000000000000000000000000000000))))

(declare-fun lt!1540392 () Unit!67766)

(declare-fun lt!1540386 () Unit!67766)

(assert (=> b!4322580 (= lt!1540392 lt!1540386)))

(assert (=> b!4322580 e!2689300))

(declare-fun c!735286 () Bool)

(assert (=> b!4322580 (= c!735286 (and (not (= lt!1539410 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1539410 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4322580 (= lt!1540386 (lemmaKeyInListMapIsInArray!17 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun e!2689303 () Unit!67766)

(declare-fun Unit!67836 () Unit!67766)

(assert (=> b!4322580 (= e!2689303 Unit!67836)))

(declare-fun b!4322581 () Bool)

(declare-fun Unit!67837 () Unit!67766)

(assert (=> b!4322581 (= e!2689303 Unit!67837)))

(declare-fun b!4322582 () Bool)

(assert (=> b!4322582 (= e!2689301 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322583 () Bool)

(assert (=> b!4322583 (= e!2689304 false)))

(declare-fun c!735288 () Bool)

(assert (=> b!4322583 (= c!735288 call!299779)))

(declare-fun lt!1540394 () Unit!67766)

(assert (=> b!4322583 (= lt!1540394 e!2689303)))

(declare-fun b!4322584 () Bool)

(assert (=> b!4322584 (= e!2689302 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4322585 () Bool)

(assert (=> b!4322585 (= e!2689300 call!299777)))

(assert (= (and d!1271023 c!735287) b!4322584))

(assert (= (and d!1271023 (not c!735287)) b!4322577))

(assert (= (and b!4322577 c!735289) b!4322582))

(assert (= (and b!4322577 (not c!735289)) b!4322579))

(assert (= (and b!4322579 c!735285) b!4322578))

(assert (= (and b!4322579 (not c!735285)) b!4322583))

(assert (= (and b!4322583 c!735288) b!4322580))

(assert (= (and b!4322583 (not c!735288)) b!4322581))

(assert (= (and b!4322580 c!735286) b!4322585))

(assert (= (and b!4322580 (not c!735286)) b!4322576))

(assert (= (or b!4322578 b!4322585) bm!299774))

(assert (= (or b!4322578 b!4322583) bm!299772))

(assert (= (or b!4322578 b!4322583) bm!299773))

(assert (=> b!4322579 m!4916823))

(assert (=> bm!299774 m!4916831))

(assert (=> bm!299772 m!4915725))

(declare-fun m!4916919 () Bool)

(assert (=> b!4322578 m!4916919))

(declare-fun m!4916921 () Bool)

(assert (=> b!4322578 m!4916921))

(declare-fun m!4916923 () Bool)

(assert (=> bm!299773 m!4916923))

(declare-fun m!4916925 () Bool)

(assert (=> bm!299773 m!4916925))

(assert (=> d!1271023 m!4915377))

(assert (=> d!1271023 m!4915377))

(declare-fun m!4916927 () Bool)

(assert (=> d!1271023 m!4916927))

(assert (=> d!1271023 m!4915533))

(declare-fun m!4916929 () Bool)

(assert (=> b!4322580 m!4916929))

(declare-fun m!4916931 () Bool)

(assert (=> b!4322580 m!4916931))

(declare-fun m!4916933 () Bool)

(assert (=> b!4322580 m!4916933))

(declare-fun m!4916935 () Bool)

(assert (=> b!4322580 m!4916935))

(declare-fun m!4916937 () Bool)

(assert (=> b!4322580 m!4916937))

(assert (=> b!4322580 m!4916823))

(assert (=> d!1270671 d!1271023))

(assert (=> d!1270671 d!1270587))

(declare-fun b!4322586 () Bool)

(declare-fun e!2689314 () Bool)

(declare-fun call!299786 () Bool)

(assert (=> b!4322586 (= e!2689314 (not call!299786))))

(declare-fun b!4322587 () Bool)

(declare-fun res!1771519 () Bool)

(declare-fun e!2689308 () Bool)

(assert (=> b!4322587 (=> (not res!1771519) (not e!2689308))))

(declare-fun e!2689315 () Bool)

(assert (=> b!4322587 (= res!1771519 e!2689315)))

(declare-fun res!1771521 () Bool)

(assert (=> b!4322587 (=> res!1771521 e!2689315)))

(declare-fun e!2689310 () Bool)

(assert (=> b!4322587 (= res!1771521 (not e!2689310))))

(declare-fun res!1771514 () Bool)

(assert (=> b!4322587 (=> (not res!1771514) (not e!2689310))))

(assert (=> b!4322587 (= res!1771514 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun bm!299775 () Bool)

(declare-fun call!299785 () ListLongMap!1171)

(declare-fun call!299784 () ListLongMap!1171)

(assert (=> bm!299775 (= call!299785 call!299784)))

(declare-fun b!4322588 () Bool)

(declare-fun e!2689316 () Unit!67766)

(declare-fun Unit!67838 () Unit!67766)

(assert (=> b!4322588 (= e!2689316 Unit!67838)))

(declare-fun b!4322589 () Bool)

(declare-fun lt!1540421 () Unit!67766)

(assert (=> b!4322589 (= e!2689316 lt!1540421)))

(declare-fun lt!1540400 () ListLongMap!1171)

(assert (=> b!4322589 (= lt!1540400 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540419 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540419 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540414 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540414 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1540405 () Unit!67766)

(assert (=> b!4322589 (= lt!1540405 (addStillContains!3 lt!1540400 lt!1540419 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1540414))))

(assert (=> b!4322589 (contains!10426 (+!330 lt!1540400 (tuple2!47187 lt!1540419 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1540414)))

(declare-fun lt!1540413 () Unit!67766)

(assert (=> b!4322589 (= lt!1540413 lt!1540405)))

(declare-fun lt!1540403 () ListLongMap!1171)

(assert (=> b!4322589 (= lt!1540403 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540406 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540406 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540417 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540417 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1540412 () Unit!67766)

(assert (=> b!4322589 (= lt!1540412 (addApplyDifferent!3 lt!1540403 lt!1540406 (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540417))))

(assert (=> b!4322589 (= (apply!11141 (+!330 lt!1540403 (tuple2!47187 lt!1540406 (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))) lt!1540417) (apply!11141 lt!1540403 lt!1540417))))

(declare-fun lt!1540402 () Unit!67766)

(assert (=> b!4322589 (= lt!1540402 lt!1540412)))

(declare-fun lt!1540404 () ListLongMap!1171)

(assert (=> b!4322589 (= lt!1540404 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540416 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540416 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540408 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540408 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(declare-fun lt!1540409 () Unit!67766)

(assert (=> b!4322589 (= lt!1540409 (addApplyDifferent!3 lt!1540404 lt!1540416 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1540408))))

(assert (=> b!4322589 (= (apply!11141 (+!330 lt!1540404 (tuple2!47187 lt!1540416 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) lt!1540408) (apply!11141 lt!1540404 lt!1540408))))

(declare-fun lt!1540407 () Unit!67766)

(assert (=> b!4322589 (= lt!1540407 lt!1540409)))

(declare-fun lt!1540420 () ListLongMap!1171)

(assert (=> b!4322589 (= lt!1540420 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540401 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540401 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1540418 () (_ BitVec 64))

(assert (=> b!4322589 (= lt!1540418 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000))))

(assert (=> b!4322589 (= lt!1540421 (addApplyDifferent!3 lt!1540420 lt!1540401 (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540418))))

(assert (=> b!4322589 (= (apply!11141 (+!330 lt!1540420 (tuple2!47187 lt!1540401 (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))) lt!1540418) (apply!11141 lt!1540420 lt!1540418))))

(declare-fun e!2689313 () Bool)

(declare-fun b!4322590 () Bool)

(declare-fun lt!1540415 () ListLongMap!1171)

(assert (=> b!4322590 (= e!2689313 (= (apply!11141 lt!1540415 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)) (select (arr!7692 (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499)) #b00000000000000000000000000000000)))))

(assert (=> b!4322590 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35731 (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499))))))

(assert (=> b!4322590 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322591 () Bool)

(declare-fun e!2689306 () Bool)

(assert (=> b!4322591 (= e!2689306 (= (apply!11141 lt!1540415 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322592 () Bool)

(declare-fun e!2689312 () Bool)

(assert (=> b!4322592 (= e!2689312 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(declare-fun b!4322593 () Bool)

(declare-fun e!2689305 () ListLongMap!1171)

(declare-fun call!299783 () ListLongMap!1171)

(assert (=> b!4322593 (= e!2689305 call!299783)))

(declare-fun call!299782 () ListLongMap!1171)

(declare-fun c!735294 () Bool)

(declare-fun bm!299776 () Bool)

(declare-fun call!299781 () ListLongMap!1171)

(declare-fun c!735292 () Bool)

(assert (=> bm!299776 (= call!299784 (+!330 (ite c!735292 call!299781 (ite c!735294 call!299782 call!299783)) (ite (or c!735292 c!735294) (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))))

(declare-fun bm!299777 () Bool)

(declare-fun call!299780 () Bool)

(assert (=> bm!299777 (= call!299780 (contains!10426 lt!1540415 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322594 () Bool)

(assert (=> b!4322594 (= e!2689315 e!2689313)))

(declare-fun res!1771516 () Bool)

(assert (=> b!4322594 (=> (not res!1771516) (not e!2689313))))

(assert (=> b!4322594 (= res!1771516 (contains!10426 lt!1540415 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(assert (=> b!4322594 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(declare-fun b!4322595 () Bool)

(assert (=> b!4322595 (= e!2689314 e!2689306)))

(declare-fun res!1771520 () Bool)

(assert (=> b!4322595 (= res!1771520 call!299786)))

(assert (=> b!4322595 (=> (not res!1771520) (not e!2689306))))

(declare-fun b!4322596 () Bool)

(declare-fun e!2689307 () ListLongMap!1171)

(declare-fun e!2689311 () ListLongMap!1171)

(assert (=> b!4322596 (= e!2689307 e!2689311)))

(assert (=> b!4322596 (= c!735294 (and (not (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322597 () Bool)

(declare-fun e!2689309 () Bool)

(declare-fun e!2689317 () Bool)

(assert (=> b!4322597 (= e!2689309 e!2689317)))

(declare-fun res!1771513 () Bool)

(assert (=> b!4322597 (= res!1771513 call!299780)))

(assert (=> b!4322597 (=> (not res!1771513) (not e!2689317))))

(declare-fun b!4322598 () Bool)

(assert (=> b!4322598 (= e!2689310 (validKeyInArray!0 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000)))))

(declare-fun b!4322599 () Bool)

(declare-fun res!1771518 () Bool)

(assert (=> b!4322599 (=> (not res!1771518) (not e!2689308))))

(assert (=> b!4322599 (= res!1771518 e!2689314)))

(declare-fun c!735293 () Bool)

(assert (=> b!4322599 (= c!735293 (not (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4322600 () Bool)

(assert (=> b!4322600 (= e!2689311 call!299785)))

(declare-fun bm!299778 () Bool)

(assert (=> bm!299778 (= call!299783 call!299782)))

(declare-fun b!4322601 () Bool)

(assert (=> b!4322601 (= e!2689307 (+!330 call!299784 (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))))

(declare-fun bm!299779 () Bool)

(assert (=> bm!299779 (= call!299786 (contains!10426 lt!1540415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299780 () Bool)

(assert (=> bm!299780 (= call!299781 (getCurrentListMapNoExtraKeys!3 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun c!735291 () Bool)

(declare-fun b!4322602 () Bool)

(assert (=> b!4322602 (= c!735291 (and (not (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4322602 (= e!2689311 e!2689305)))

(declare-fun b!4322603 () Bool)

(assert (=> b!4322603 (= e!2689309 (not call!299780))))

(declare-fun d!1271025 () Bool)

(assert (=> d!1271025 e!2689308))

(declare-fun res!1771515 () Bool)

(assert (=> d!1271025 (=> (not res!1771515) (not e!2689308))))

(assert (=> d!1271025 (= res!1771515 (or (bvsge #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))))

(declare-fun lt!1540410 () ListLongMap!1171)

(assert (=> d!1271025 (= lt!1540415 lt!1540410)))

(declare-fun lt!1540411 () Unit!67766)

(assert (=> d!1271025 (= lt!1540411 e!2689316)))

(declare-fun c!735290 () Bool)

(assert (=> d!1271025 (= c!735290 e!2689312)))

(declare-fun res!1771517 () Bool)

(assert (=> d!1271025 (=> (not res!1771517) (not e!2689312))))

(assert (=> d!1271025 (= res!1771517 (bvslt #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (=> d!1271025 (= lt!1540410 e!2689307)))

(assert (=> d!1271025 (= c!735292 (and (not (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1271025 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1271025 (= (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539499) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540415)))

(declare-fun b!4322604 () Bool)

(assert (=> b!4322604 (= e!2689308 e!2689309)))

(declare-fun c!735295 () Bool)

(assert (=> b!4322604 (= c!735295 (not (= (bvand (ite c!734981 (ite c!734978 (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539494) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4322605 () Bool)

(assert (=> b!4322605 (= e!2689305 call!299785)))

(declare-fun bm!299781 () Bool)

(assert (=> bm!299781 (= call!299782 call!299781)))

(declare-fun b!4322606 () Bool)

(assert (=> b!4322606 (= e!2689317 (= (apply!11141 lt!1540415 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!734981 (ite c!734978 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))))

(assert (= (and d!1271025 c!735292) b!4322601))

(assert (= (and d!1271025 (not c!735292)) b!4322596))

(assert (= (and b!4322596 c!735294) b!4322600))

(assert (= (and b!4322596 (not c!735294)) b!4322602))

(assert (= (and b!4322602 c!735291) b!4322605))

(assert (= (and b!4322602 (not c!735291)) b!4322593))

(assert (= (or b!4322605 b!4322593) bm!299778))

(assert (= (or b!4322600 bm!299778) bm!299781))

(assert (= (or b!4322600 b!4322605) bm!299775))

(assert (= (or b!4322601 bm!299781) bm!299780))

(assert (= (or b!4322601 bm!299775) bm!299776))

(assert (= (and d!1271025 res!1771517) b!4322592))

(assert (= (and d!1271025 c!735290) b!4322589))

(assert (= (and d!1271025 (not c!735290)) b!4322588))

(assert (= (and d!1271025 res!1771515) b!4322587))

(assert (= (and b!4322587 res!1771514) b!4322598))

(assert (= (and b!4322587 (not res!1771521)) b!4322594))

(assert (= (and b!4322594 res!1771516) b!4322590))

(assert (= (and b!4322587 res!1771519) b!4322599))

(assert (= (and b!4322599 c!735293) b!4322595))

(assert (= (and b!4322599 (not c!735293)) b!4322586))

(assert (= (and b!4322595 res!1771520) b!4322591))

(assert (= (or b!4322595 b!4322586) bm!299779))

(assert (= (and b!4322599 res!1771518) b!4322604))

(assert (= (and b!4322604 c!735295) b!4322597))

(assert (= (and b!4322604 (not c!735295)) b!4322603))

(assert (= (and b!4322597 res!1771513) b!4322606))

(assert (= (or b!4322597 b!4322603) bm!299777))

(declare-fun m!4916939 () Bool)

(assert (=> b!4322591 m!4916939))

(declare-fun m!4916941 () Bool)

(assert (=> bm!299777 m!4916941))

(assert (=> d!1271025 m!4915875))

(declare-fun m!4916943 () Bool)

(assert (=> bm!299780 m!4916943))

(declare-fun m!4916945 () Bool)

(assert (=> bm!299776 m!4916945))

(assert (=> b!4322594 m!4915889))

(assert (=> b!4322594 m!4915889))

(declare-fun m!4916947 () Bool)

(assert (=> b!4322594 m!4916947))

(assert (=> b!4322598 m!4915889))

(assert (=> b!4322598 m!4915889))

(assert (=> b!4322598 m!4915893))

(assert (=> b!4322589 m!4915889))

(declare-fun m!4916949 () Bool)

(assert (=> b!4322589 m!4916949))

(declare-fun m!4916951 () Bool)

(assert (=> b!4322589 m!4916951))

(declare-fun m!4916953 () Bool)

(assert (=> b!4322589 m!4916953))

(declare-fun m!4916955 () Bool)

(assert (=> b!4322589 m!4916955))

(declare-fun m!4916957 () Bool)

(assert (=> b!4322589 m!4916957))

(declare-fun m!4916959 () Bool)

(assert (=> b!4322589 m!4916959))

(declare-fun m!4916961 () Bool)

(assert (=> b!4322589 m!4916961))

(declare-fun m!4916963 () Bool)

(assert (=> b!4322589 m!4916963))

(assert (=> b!4322589 m!4916943))

(assert (=> b!4322589 m!4916961))

(declare-fun m!4916965 () Bool)

(assert (=> b!4322589 m!4916965))

(declare-fun m!4916967 () Bool)

(assert (=> b!4322589 m!4916967))

(assert (=> b!4322589 m!4916965))

(declare-fun m!4916969 () Bool)

(assert (=> b!4322589 m!4916969))

(assert (=> b!4322589 m!4916959))

(declare-fun m!4916971 () Bool)

(assert (=> b!4322589 m!4916971))

(declare-fun m!4916973 () Bool)

(assert (=> b!4322589 m!4916973))

(assert (=> b!4322589 m!4916951))

(declare-fun m!4916975 () Bool)

(assert (=> b!4322589 m!4916975))

(declare-fun m!4916977 () Bool)

(assert (=> b!4322589 m!4916977))

(assert (=> b!4322590 m!4915889))

(assert (=> b!4322590 m!4915889))

(declare-fun m!4916979 () Bool)

(assert (=> b!4322590 m!4916979))

(declare-fun m!4916981 () Bool)

(assert (=> b!4322590 m!4916981))

(declare-fun m!4916983 () Bool)

(assert (=> b!4322606 m!4916983))

(declare-fun m!4916985 () Bool)

(assert (=> bm!299779 m!4916985))

(declare-fun m!4916987 () Bool)

(assert (=> b!4322601 m!4916987))

(assert (=> b!4322592 m!4915889))

(assert (=> b!4322592 m!4915889))

(assert (=> b!4322592 m!4915893))

(assert (=> bm!299560 d!1271025))

(declare-fun d!1271027 () Bool)

(assert (=> d!1271027 true))

(assert (=> d!1271027 true))

(declare-fun res!1771524 () (_ BitVec 64))

(assert (=> d!1271027 (= (choose!26397 (hashF!6919 thiss!42308) key!2048) res!1771524)))

(assert (=> d!1270597 d!1271027))

(declare-fun d!1271029 () Bool)

(declare-fun res!1771525 () Bool)

(declare-fun e!2689318 () Bool)

(assert (=> d!1271029 (=> res!1771525 e!2689318)))

(assert (=> d!1271029 (= res!1771525 (and ((_ is Cons!48378) (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311))))) (= (_1!26878 (h!53838 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539311))))))))))

(assert (=> d!1271029 (= (containsKey!400 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311)))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))) e!2689318)))

(declare-fun b!4322607 () Bool)

(declare-fun e!2689319 () Bool)

(assert (=> b!4322607 (= e!2689318 e!2689319)))

(declare-fun res!1771526 () Bool)

(assert (=> b!4322607 (=> (not res!1771526) (not e!2689319))))

(assert (=> b!4322607 (= res!1771526 ((_ is Cons!48378) (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311))))))))

(declare-fun b!4322608 () Bool)

(assert (=> b!4322608 (= e!2689319 (containsKey!400 (t!355381 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))))))

(assert (= (and d!1271029 (not res!1771525)) b!4322607))

(assert (= (and b!4322607 res!1771526) b!4322608))

(declare-fun m!4916989 () Bool)

(assert (=> b!4322608 m!4916989))

(assert (=> b!4321619 d!1271029))

(declare-fun d!1271031 () Bool)

(assert (=> d!1271031 (= (get!15675 (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)) (v!42758 (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)))))

(assert (=> b!4321792 d!1271031))

(declare-fun b!4322609 () Bool)

(declare-fun e!2689320 () Option!10300)

(assert (=> b!4322609 (= e!2689320 (Some!10299 (_2!26879 (h!53839 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))))

(declare-fun b!4322611 () Bool)

(declare-fun e!2689321 () Option!10300)

(assert (=> b!4322611 (= e!2689321 (getValueByKey!297 (t!355382 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539310))))

(declare-fun d!1271033 () Bool)

(declare-fun c!735296 () Bool)

(assert (=> d!1271033 (= c!735296 (and ((_ is Cons!48379) (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (= (_1!26879 (h!53839 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) lt!1539310)))))

(assert (=> d!1271033 (= (getValueByKey!297 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310) e!2689320)))

(declare-fun b!4322612 () Bool)

(assert (=> b!4322612 (= e!2689321 None!10299)))

(declare-fun b!4322610 () Bool)

(assert (=> b!4322610 (= e!2689320 e!2689321)))

(declare-fun c!735297 () Bool)

(assert (=> b!4322610 (= c!735297 (and ((_ is Cons!48379) (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (not (= (_1!26879 (h!53839 (toList!2554 (map!10407 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) lt!1539310))))))

(assert (= (and d!1271033 c!735296) b!4322609))

(assert (= (and d!1271033 (not c!735296)) b!4322610))

(assert (= (and b!4322610 c!735297) b!4322611))

(assert (= (and b!4322610 (not c!735297)) b!4322612))

(declare-fun m!4916991 () Bool)

(assert (=> b!4322611 m!4916991))

(assert (=> b!4321792 d!1271033))

(assert (=> b!4321792 d!1270665))

(declare-fun bs!606774 () Bool)

(declare-fun b!4322613 () Bool)

(assert (= bs!606774 (and b!4322613 b!4322173)))

(declare-fun lambda!133940 () Int)

(assert (=> bs!606774 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133940 lambda!133885))))

(declare-fun bs!606775 () Bool)

(assert (= bs!606775 (and b!4322613 b!4322179)))

(assert (=> bs!606775 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133940 lambda!133886))))

(declare-fun bs!606776 () Bool)

(assert (= bs!606776 (and b!4322613 b!4322537)))

(assert (=> bs!606776 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133940 lambda!133938))))

(declare-fun bs!606777 () Bool)

(assert (= bs!606777 (and b!4322613 b!4322195)))

(assert (=> bs!606777 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (toList!2555 (map!10406 thiss!42308))) (= lambda!133940 lambda!133893))))

(declare-fun bs!606778 () Bool)

(assert (= bs!606778 (and b!4322613 b!4321960)))

(assert (=> bs!606778 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133940 lambda!133881))))

(declare-fun bs!606779 () Bool)

(assert (= bs!606779 (and b!4322613 b!4321961)))

(assert (=> bs!606779 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133940 lambda!133883))))

(declare-fun bs!606780 () Bool)

(assert (= bs!606780 (and b!4322613 b!4322174)))

(assert (=> bs!606780 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133940 lambda!133887))))

(declare-fun bs!606781 () Bool)

(assert (= bs!606781 (and b!4322613 b!4321966)))

(assert (=> bs!606781 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133940 lambda!133882))))

(declare-fun bs!606782 () Bool)

(assert (= bs!606782 (and b!4322613 b!4322225)))

(assert (=> bs!606782 (= (= (t!355381 (toList!2555 (map!10406 thiss!42308))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133940 lambda!133895))))

(assert (=> b!4322613 true))

(declare-fun bs!606783 () Bool)

(declare-fun b!4322619 () Bool)

(assert (= bs!606783 (and b!4322619 b!4322173)))

(declare-fun lambda!133941 () Int)

(assert (=> bs!606783 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133941 lambda!133885))))

(declare-fun bs!606784 () Bool)

(assert (= bs!606784 (and b!4322619 b!4322179)))

(assert (=> bs!606784 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133941 lambda!133886))))

(declare-fun bs!606785 () Bool)

(assert (= bs!606785 (and b!4322619 b!4322537)))

(assert (=> bs!606785 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133941 lambda!133938))))

(declare-fun bs!606786 () Bool)

(assert (= bs!606786 (and b!4322619 b!4322195)))

(assert (=> bs!606786 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (toList!2555 (map!10406 thiss!42308))) (= lambda!133941 lambda!133893))))

(declare-fun bs!606787 () Bool)

(assert (= bs!606787 (and b!4322619 b!4321960)))

(assert (=> bs!606787 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133941 lambda!133881))))

(declare-fun bs!606788 () Bool)

(assert (= bs!606788 (and b!4322619 b!4321961)))

(assert (=> bs!606788 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133941 lambda!133883))))

(declare-fun bs!606789 () Bool)

(assert (= bs!606789 (and b!4322619 b!4321966)))

(assert (=> bs!606789 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133941 lambda!133882))))

(declare-fun bs!606790 () Bool)

(assert (= bs!606790 (and b!4322619 b!4322225)))

(assert (=> bs!606790 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133941 lambda!133895))))

(declare-fun bs!606791 () Bool)

(assert (= bs!606791 (and b!4322619 b!4322613)))

(assert (=> bs!606791 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (= lambda!133941 lambda!133940))))

(declare-fun bs!606792 () Bool)

(assert (= bs!606792 (and b!4322619 b!4322174)))

(assert (=> bs!606792 (= (= (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133941 lambda!133887))))

(assert (=> b!4322619 true))

(declare-fun bs!606793 () Bool)

(declare-fun b!4322614 () Bool)

(assert (= bs!606793 (and b!4322614 b!4322173)))

(declare-fun lambda!133942 () Int)

(assert (=> bs!606793 (= (= (toList!2555 (map!10406 thiss!42308)) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))) (= lambda!133942 lambda!133885))))

(declare-fun bs!606794 () Bool)

(assert (= bs!606794 (and b!4322614 b!4322537)))

(assert (=> bs!606794 (= (= (toList!2555 (map!10406 thiss!42308)) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133942 lambda!133938))))

(declare-fun bs!606795 () Bool)

(assert (= bs!606795 (and b!4322614 b!4322195)))

(assert (=> bs!606795 (= lambda!133942 lambda!133893)))

(declare-fun bs!606796 () Bool)

(assert (= bs!606796 (and b!4322614 b!4321960)))

(assert (=> bs!606796 (= (= (toList!2555 (map!10406 thiss!42308)) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))) (= lambda!133942 lambda!133881))))

(declare-fun bs!606797 () Bool)

(assert (= bs!606797 (and b!4322614 b!4321961)))

(assert (=> bs!606797 (= (= (toList!2555 (map!10406 thiss!42308)) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133942 lambda!133883))))

(declare-fun bs!606798 () Bool)

(assert (= bs!606798 (and b!4322614 b!4321966)))

(assert (=> bs!606798 (= (= (toList!2555 (map!10406 thiss!42308)) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))) (= lambda!133942 lambda!133882))))

(declare-fun bs!606799 () Bool)

(assert (= bs!606799 (and b!4322614 b!4322225)))

(assert (=> bs!606799 (= (= (toList!2555 (map!10406 thiss!42308)) (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (= lambda!133942 lambda!133895))))

(declare-fun bs!606800 () Bool)

(assert (= bs!606800 (and b!4322614 b!4322179)))

(assert (=> bs!606800 (= (= (toList!2555 (map!10406 thiss!42308)) (Cons!48378 (h!53838 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (t!355381 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))))) (= lambda!133942 lambda!133886))))

(declare-fun bs!606801 () Bool)

(assert (= bs!606801 (and b!4322614 b!4322619)))

(assert (=> bs!606801 (= (= (toList!2555 (map!10406 thiss!42308)) (Cons!48378 (h!53838 (toList!2555 (map!10406 thiss!42308))) (t!355381 (toList!2555 (map!10406 thiss!42308))))) (= lambda!133942 lambda!133941))))

(declare-fun bs!606802 () Bool)

(assert (= bs!606802 (and b!4322614 b!4322613)))

(assert (=> bs!606802 (= (= (toList!2555 (map!10406 thiss!42308)) (t!355381 (toList!2555 (map!10406 thiss!42308)))) (= lambda!133942 lambda!133940))))

(declare-fun bs!606803 () Bool)

(assert (= bs!606803 (and b!4322614 b!4322174)))

(assert (=> bs!606803 (= (= (toList!2555 (map!10406 thiss!42308)) (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) (= lambda!133942 lambda!133887))))

(assert (=> b!4322614 true))

(declare-fun bs!606804 () Bool)

(declare-fun b!4322615 () Bool)

(assert (= bs!606804 (and b!4322615 b!4321962)))

(declare-fun lambda!133943 () Int)

(assert (=> bs!606804 (= lambda!133943 lambda!133884)))

(declare-fun bs!606805 () Bool)

(assert (= bs!606805 (and b!4322615 b!4322538)))

(assert (=> bs!606805 (= lambda!133943 lambda!133939)))

(declare-fun bs!606806 () Bool)

(assert (= bs!606806 (and b!4322615 b!4322196)))

(assert (=> bs!606806 (= lambda!133943 lambda!133894)))

(declare-fun bs!606807 () Bool)

(assert (= bs!606807 (and b!4322615 b!4322226)))

(assert (=> bs!606807 (= lambda!133943 lambda!133896)))

(declare-fun bs!606808 () Bool)

(assert (= bs!606808 (and b!4322615 b!4322175)))

(assert (=> bs!606808 (= lambda!133943 lambda!133888)))

(assert (=> b!4322613 false))

(declare-fun lt!1540426 () Unit!67766)

(assert (=> b!4322613 (= lt!1540426 (forallContained!1533 (getKeysList!56 (t!355381 (toList!2555 (map!10406 thiss!42308)))) lambda!133940 (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308))))))))

(declare-fun e!2689323 () Unit!67766)

(declare-fun Unit!67839 () Unit!67766)

(assert (=> b!4322613 (= e!2689323 Unit!67839)))

(declare-fun res!1771528 () Bool)

(declare-fun e!2689322 () Bool)

(assert (=> b!4322614 (=> (not res!1771528) (not e!2689322))))

(declare-fun lt!1540422 () List!48504)

(assert (=> b!4322614 (= res!1771528 (forall!8813 lt!1540422 lambda!133942))))

(assert (=> b!4322615 (= e!2689322 (= (content!7571 lt!1540422) (content!7571 (map!10408 (toList!2555 (map!10406 thiss!42308)) lambda!133943))))))

(declare-fun d!1271035 () Bool)

(assert (=> d!1271035 e!2689322))

(declare-fun res!1771527 () Bool)

(assert (=> d!1271035 (=> (not res!1771527) (not e!2689322))))

(assert (=> d!1271035 (= res!1771527 (noDuplicate!587 lt!1540422))))

(declare-fun e!2689325 () List!48504)

(assert (=> d!1271035 (= lt!1540422 e!2689325)))

(declare-fun c!735298 () Bool)

(assert (=> d!1271035 (= c!735298 ((_ is Cons!48378) (toList!2555 (map!10406 thiss!42308))))))

(assert (=> d!1271035 (invariantList!601 (toList!2555 (map!10406 thiss!42308)))))

(assert (=> d!1271035 (= (getKeysList!56 (toList!2555 (map!10406 thiss!42308))) lt!1540422)))

(declare-fun b!4322616 () Bool)

(declare-fun e!2689324 () Unit!67766)

(declare-fun Unit!67840 () Unit!67766)

(assert (=> b!4322616 (= e!2689324 Unit!67840)))

(declare-fun b!4322617 () Bool)

(assert (=> b!4322617 false))

(declare-fun Unit!67841 () Unit!67766)

(assert (=> b!4322617 (= e!2689324 Unit!67841)))

(declare-fun b!4322618 () Bool)

(assert (=> b!4322618 (= e!2689325 Nil!48380)))

(assert (=> b!4322619 (= e!2689325 (Cons!48380 (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308)))) (getKeysList!56 (t!355381 (toList!2555 (map!10406 thiss!42308))))))))

(declare-fun c!735299 () Bool)

(assert (=> b!4322619 (= c!735299 (containsKey!402 (t!355381 (toList!2555 (map!10406 thiss!42308))) (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308))))))))

(declare-fun lt!1540427 () Unit!67766)

(assert (=> b!4322619 (= lt!1540427 e!2689324)))

(declare-fun c!735300 () Bool)

(assert (=> b!4322619 (= c!735300 (contains!10431 (getKeysList!56 (t!355381 (toList!2555 (map!10406 thiss!42308)))) (_1!26878 (h!53838 (toList!2555 (map!10406 thiss!42308))))))))

(declare-fun lt!1540425 () Unit!67766)

(assert (=> b!4322619 (= lt!1540425 e!2689323)))

(declare-fun lt!1540423 () List!48504)

(assert (=> b!4322619 (= lt!1540423 (getKeysList!56 (t!355381 (toList!2555 (map!10406 thiss!42308)))))))

(declare-fun lt!1540424 () Unit!67766)

(assert (=> b!4322619 (= lt!1540424 (lemmaForallContainsAddHeadPreserves!9 (t!355381 (toList!2555 (map!10406 thiss!42308))) lt!1540423 (h!53838 (toList!2555 (map!10406 thiss!42308)))))))

(assert (=> b!4322619 (forall!8813 lt!1540423 lambda!133941)))

(declare-fun lt!1540428 () Unit!67766)

(assert (=> b!4322619 (= lt!1540428 lt!1540424)))

(declare-fun b!4322620 () Bool)

(declare-fun Unit!67842 () Unit!67766)

(assert (=> b!4322620 (= e!2689323 Unit!67842)))

(declare-fun b!4322621 () Bool)

(declare-fun res!1771529 () Bool)

(assert (=> b!4322621 (=> (not res!1771529) (not e!2689322))))

(assert (=> b!4322621 (= res!1771529 (= (length!30 lt!1540422) (length!31 (toList!2555 (map!10406 thiss!42308)))))))

(assert (= (and d!1271035 c!735298) b!4322619))

(assert (= (and d!1271035 (not c!735298)) b!4322618))

(assert (= (and b!4322619 c!735299) b!4322617))

(assert (= (and b!4322619 (not c!735299)) b!4322616))

(assert (= (and b!4322619 c!735300) b!4322613))

(assert (= (and b!4322619 (not c!735300)) b!4322620))

(assert (= (and d!1271035 res!1771527) b!4322621))

(assert (= (and b!4322621 res!1771529) b!4322614))

(assert (= (and b!4322614 res!1771528) b!4322615))

(declare-fun m!4916993 () Bool)

(assert (=> d!1271035 m!4916993))

(assert (=> d!1271035 m!4916401))

(declare-fun m!4916995 () Bool)

(assert (=> b!4322615 m!4916995))

(declare-fun m!4916997 () Bool)

(assert (=> b!4322615 m!4916997))

(assert (=> b!4322615 m!4916997))

(declare-fun m!4916999 () Bool)

(assert (=> b!4322615 m!4916999))

(declare-fun m!4917001 () Bool)

(assert (=> b!4322613 m!4917001))

(assert (=> b!4322613 m!4917001))

(declare-fun m!4917003 () Bool)

(assert (=> b!4322613 m!4917003))

(declare-fun m!4917005 () Bool)

(assert (=> b!4322619 m!4917005))

(assert (=> b!4322619 m!4917001))

(declare-fun m!4917007 () Bool)

(assert (=> b!4322619 m!4917007))

(assert (=> b!4322619 m!4917001))

(declare-fun m!4917009 () Bool)

(assert (=> b!4322619 m!4917009))

(declare-fun m!4917011 () Bool)

(assert (=> b!4322619 m!4917011))

(declare-fun m!4917013 () Bool)

(assert (=> b!4322621 m!4917013))

(assert (=> b!4322621 m!4916305))

(declare-fun m!4917015 () Bool)

(assert (=> b!4322614 m!4917015))

(assert (=> b!4321734 d!1271035))

(assert (=> b!4321653 d!1270971))

(declare-fun d!1271037 () Bool)

(assert (=> d!1271037 (isDefined!7602 (getValueByKey!297 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun lt!1540429 () Unit!67766)

(assert (=> d!1271037 (= lt!1540429 (choose!26400 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun e!2689326 () Bool)

(assert (=> d!1271037 e!2689326))

(declare-fun res!1771530 () Bool)

(assert (=> d!1271037 (=> (not res!1771530) (not e!2689326))))

(assert (=> d!1271037 (= res!1771530 (isStrictlySorted!21 (toList!2554 lt!1539362)))))

(assert (=> d!1271037 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) lt!1540429)))

(declare-fun b!4322622 () Bool)

(assert (=> b!4322622 (= e!2689326 (containsKey!401 (toList!2554 lt!1539362) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (= (and d!1271037 res!1771530) b!4322622))

(assert (=> d!1271037 m!4915317))

(assert (=> d!1271037 m!4915317))

(assert (=> d!1271037 m!4915497))

(declare-fun m!4917017 () Bool)

(assert (=> d!1271037 m!4917017))

(declare-fun m!4917019 () Bool)

(assert (=> d!1271037 m!4917019))

(assert (=> b!4322622 m!4915493))

(assert (=> b!4321570 d!1271037))

(assert (=> b!4321570 d!1270793))

(assert (=> b!4321570 d!1270641))

(declare-fun d!1271039 () Bool)

(declare-fun res!1771531 () Bool)

(declare-fun e!2689327 () Bool)

(assert (=> d!1271039 (=> res!1771531 e!2689327)))

(assert (=> d!1271039 (= res!1771531 ((_ is Nil!48378) (t!355381 lt!1539317)))))

(assert (=> d!1271039 (= (forall!8812 (t!355381 lt!1539317) lambda!133856) e!2689327)))

(declare-fun b!4322623 () Bool)

(declare-fun e!2689328 () Bool)

(assert (=> b!4322623 (= e!2689327 e!2689328)))

(declare-fun res!1771532 () Bool)

(assert (=> b!4322623 (=> (not res!1771532) (not e!2689328))))

(assert (=> b!4322623 (= res!1771532 (dynLambda!20508 lambda!133856 (h!53838 (t!355381 lt!1539317))))))

(declare-fun b!4322624 () Bool)

(assert (=> b!4322624 (= e!2689328 (forall!8812 (t!355381 (t!355381 lt!1539317)) lambda!133856))))

(assert (= (and d!1271039 (not res!1771531)) b!4322623))

(assert (= (and b!4322623 res!1771532) b!4322624))

(declare-fun b_lambda!127329 () Bool)

(assert (=> (not b_lambda!127329) (not b!4322623)))

(declare-fun m!4917021 () Bool)

(assert (=> b!4322623 m!4917021))

(declare-fun m!4917023 () Bool)

(assert (=> b!4322624 m!4917023))

(assert (=> b!4321507 d!1271039))

(declare-fun d!1271041 () Bool)

(assert (=> d!1271041 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299497) lt!1539310))))

(declare-fun lt!1540430 () Unit!67766)

(assert (=> d!1271041 (= lt!1540430 (choose!26400 (toList!2554 call!299497) lt!1539310))))

(declare-fun e!2689329 () Bool)

(assert (=> d!1271041 e!2689329))

(declare-fun res!1771533 () Bool)

(assert (=> d!1271041 (=> (not res!1771533) (not e!2689329))))

(assert (=> d!1271041 (= res!1771533 (isStrictlySorted!21 (toList!2554 call!299497)))))

(assert (=> d!1271041 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 call!299497) lt!1539310) lt!1540430)))

(declare-fun b!4322625 () Bool)

(assert (=> b!4322625 (= e!2689329 (containsKey!401 (toList!2554 call!299497) lt!1539310))))

(assert (= (and d!1271041 res!1771533) b!4322625))

(assert (=> d!1271041 m!4915545))

(assert (=> d!1271041 m!4915545))

(assert (=> d!1271041 m!4915547))

(declare-fun m!4917025 () Bool)

(assert (=> d!1271041 m!4917025))

(declare-fun m!4917027 () Bool)

(assert (=> d!1271041 m!4917027))

(assert (=> b!4322625 m!4915541))

(assert (=> b!4321621 d!1271041))

(assert (=> b!4321621 d!1270795))

(assert (=> b!4321621 d!1270797))

(declare-fun bm!299782 () Bool)

(declare-fun lt!1540447 () array!17234)

(declare-fun lt!1540442 () (_ BitVec 32))

(declare-fun call!299804 () ListLongMap!1171)

(declare-fun c!735301 () Bool)

(declare-fun c!735304 () Bool)

(assert (=> bm!299782 (= call!299804 (getCurrentListMap!24 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735304 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) lt!1540447) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735304 (ite c!735301 (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) lt!1540442) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735304 (ite c!735301 (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599))) #b00000000000000000000000000000000 (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun b!4322626 () Bool)

(declare-fun e!2689350 () Bool)

(declare-fun lt!1540456 () SeekEntryResult!21)

(assert (=> b!4322626 (= e!2689350 ((_ is Undefined!21) lt!1540456))))

(declare-fun b!4322627 () Bool)

(declare-fun c!735306 () Bool)

(assert (=> b!4322627 (= c!735306 ((_ is MissingVacant!21) lt!1540456))))

(declare-fun e!2689336 () Bool)

(assert (=> b!4322627 (= e!2689336 e!2689350)))

(declare-fun b!4322628 () Bool)

(declare-fun e!2689338 () ListLongMap!1171)

(assert (=> b!4322628 (= e!2689338 call!299804)))

(declare-fun b!4322629 () Bool)

(declare-fun e!2689334 () Unit!67766)

(declare-fun lt!1540438 () Unit!67766)

(assert (=> b!4322629 (= e!2689334 lt!1540438)))

(declare-fun call!299794 () Unit!67766)

(assert (=> b!4322629 (= lt!1540438 call!299794)))

(declare-fun lt!1540435 () SeekEntryResult!21)

(declare-fun call!299796 () SeekEntryResult!21)

(assert (=> b!4322629 (= lt!1540435 call!299796)))

(declare-fun res!1771534 () Bool)

(assert (=> b!4322629 (= res!1771534 ((_ is Found!21) lt!1540435))))

(declare-fun e!2689331 () Bool)

(assert (=> b!4322629 (=> (not res!1771534) (not e!2689331))))

(assert (=> b!4322629 e!2689331))

(declare-fun bm!299783 () Bool)

(declare-fun c!735311 () Bool)

(declare-fun c!735309 () Bool)

(assert (=> bm!299783 (= c!735311 c!735309)))

(declare-fun lt!1540445 () SeekEntryResult!21)

(declare-fun call!299810 () Bool)

(assert (=> bm!299783 (= call!299810 (contains!10426 e!2689338 (ite c!735309 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1464 lt!1540445)))))))

(declare-fun b!4322630 () Bool)

(declare-fun e!2689348 () tuple2!47190)

(declare-fun e!2689344 () tuple2!47190)

(assert (=> b!4322630 (= e!2689348 e!2689344)))

(assert (=> b!4322630 (= c!735301 (= (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!1271043 () Bool)

(declare-fun e!2689347 () Bool)

(assert (=> d!1271043 e!2689347))

(declare-fun res!1771546 () Bool)

(assert (=> d!1271043 (=> (not res!1771546) (not e!2689347))))

(declare-fun lt!1540451 () tuple2!47190)

(assert (=> d!1271043 (= res!1771546 (valid!3765 (_2!26881 lt!1540451)))))

(assert (=> d!1271043 (= lt!1540451 e!2689348)))

(assert (=> d!1271043 (= c!735304 (= (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!1271043 (valid!3765 (ite c!735006 (_2!26881 lt!1539536) call!299599))))

(assert (=> d!1271043 (= (update!530 (ite c!735006 (_2!26881 lt!1539536) call!299599) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) lt!1540451)))

(declare-fun b!4322631 () Bool)

(declare-fun c!735302 () Bool)

(declare-fun lt!1540454 () SeekEntryResult!21)

(assert (=> b!4322631 (= c!735302 ((_ is MissingVacant!21) lt!1540454))))

(declare-fun e!2689340 () Bool)

(declare-fun e!2689341 () Bool)

(assert (=> b!4322631 (= e!2689340 e!2689341)))

(declare-fun bm!299784 () Bool)

(declare-fun call!299793 () SeekEntryResult!21)

(declare-fun call!299808 () SeekEntryResult!21)

(assert (=> bm!299784 (= call!299793 call!299808)))

(declare-fun bm!299785 () Bool)

(declare-fun call!299792 () Bool)

(declare-fun call!299791 () Bool)

(assert (=> bm!299785 (= call!299792 call!299791)))

(declare-fun b!4322632 () Bool)

(declare-fun e!2689337 () Bool)

(declare-fun call!299787 () Bool)

(assert (=> b!4322632 (= e!2689337 (not call!299787))))

(declare-fun b!4322633 () Bool)

(declare-fun e!2689335 () Bool)

(declare-fun call!299799 () Bool)

(assert (=> b!4322633 (= e!2689335 (not call!299799))))

(declare-fun bm!299786 () Bool)

(declare-fun call!299795 () Bool)

(declare-fun call!299797 () Bool)

(assert (=> bm!299786 (= call!299795 call!299797)))

(declare-fun b!4322634 () Bool)

(declare-fun e!2689339 () tuple2!47190)

(declare-fun e!2689349 () tuple2!47190)

(assert (=> b!4322634 (= e!2689339 e!2689349)))

(declare-fun c!735310 () Bool)

(assert (=> b!4322634 (= c!735310 ((_ is MissingZero!21) lt!1540445))))

(declare-fun bm!299787 () Bool)

(assert (=> bm!299787 (= call!299797 call!299791)))

(declare-fun b!4322635 () Bool)

(declare-fun lt!1540450 () Unit!67766)

(declare-fun lt!1540443 () Unit!67766)

(assert (=> b!4322635 (= lt!1540450 lt!1540443)))

(assert (=> b!4322635 call!299810))

(assert (=> b!4322635 (= lt!1540443 (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) lt!1540447 (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (index!1464 lt!1540445) (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(assert (=> b!4322635 (= lt!1540447 (array!17235 (store (arr!7692 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1464 lt!1540445) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) (size!35731 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)))))))

(declare-fun lt!1540455 () Unit!67766)

(declare-fun lt!1540433 () Unit!67766)

(assert (=> b!4322635 (= lt!1540455 lt!1540433)))

(declare-fun call!299806 () ListLongMap!1171)

(assert (=> b!4322635 (= call!299806 (getCurrentListMap!24 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (array!17235 (store (arr!7692 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1464 lt!1540445) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) (size!35731 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)))) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) #b00000000000000000000000000000000 (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(assert (=> b!4322635 (= lt!1540433 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (index!1464 lt!1540445) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun lt!1540431 () Unit!67766)

(assert (=> b!4322635 (= lt!1540431 e!2689334)))

(declare-fun c!735305 () Bool)

(declare-fun call!299798 () ListLongMap!1171)

(assert (=> b!4322635 (= c!735305 (contains!10426 call!299798 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4322635 (= e!2689349 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_size!9550 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (array!17235 (store (arr!7692 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1464 lt!1540445) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) (size!35731 (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)))) (_vacant!4815 (ite c!735006 (_2!26881 lt!1539536) call!299599)))))))

(declare-fun bm!299788 () Bool)

(declare-fun call!299801 () Bool)

(assert (=> bm!299788 (= call!299801 call!299792)))

(declare-fun b!4322636 () Bool)

(declare-fun e!2689332 () Unit!67766)

(declare-fun lt!1540448 () Unit!67766)

(assert (=> b!4322636 (= e!2689332 lt!1540448)))

(declare-fun call!299800 () Unit!67766)

(assert (=> b!4322636 (= lt!1540448 call!299800)))

(assert (=> b!4322636 (= lt!1540454 call!299793)))

(declare-fun c!735313 () Bool)

(assert (=> b!4322636 (= c!735313 ((_ is MissingZero!21) lt!1540454))))

(assert (=> b!4322636 e!2689340))

(declare-fun bm!299789 () Bool)

(declare-fun call!299803 () ListLongMap!1171)

(declare-fun call!299788 () ListLongMap!1171)

(assert (=> bm!299789 (= call!299803 call!299788)))

(declare-fun b!4322637 () Bool)

(declare-fun res!1771537 () Bool)

(assert (=> b!4322637 (=> (not res!1771537) (not e!2689337))))

(assert (=> b!4322637 (= res!1771537 (= (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1465 lt!1540454)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4322638 () Bool)

(assert (=> b!4322638 (= e!2689331 (= (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1464 lt!1540435)) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!4322639 () Bool)

(declare-fun res!1771540 () Bool)

(assert (=> b!4322639 (=> (not res!1771540) (not e!2689335))))

(assert (=> b!4322639 (= res!1771540 (= (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1465 lt!1540456)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299790 () Bool)

(assert (=> bm!299790 (= call!299796 call!299808)))

(declare-fun call!299809 () ListLongMap!1171)

(declare-fun call!299789 () ListLongMap!1171)

(declare-fun e!2689343 () Bool)

(declare-fun b!4322640 () Bool)

(assert (=> b!4322640 (= e!2689343 (= call!299809 (+!330 call!299789 (tuple2!47187 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))))

(declare-fun b!4322641 () Bool)

(declare-fun res!1771536 () Bool)

(assert (=> b!4322641 (=> (not res!1771536) (not e!2689335))))

(assert (=> b!4322641 (= res!1771536 call!299801)))

(assert (=> b!4322641 (= e!2689336 e!2689335)))

(declare-fun b!4322642 () Bool)

(declare-fun lt!1540437 () tuple2!47190)

(declare-fun call!299807 () tuple2!47190)

(assert (=> b!4322642 (= lt!1540437 call!299807)))

(assert (=> b!4322642 (= e!2689349 (tuple2!47191 (_1!26881 lt!1540437) (_2!26881 lt!1540437)))))

(declare-fun bm!299791 () Bool)

(declare-fun call!299805 () ListLongMap!1171)

(assert (=> bm!299791 (= call!299805 call!299804)))

(declare-fun bm!299792 () Bool)

(assert (=> bm!299792 (= call!299808 (seekEntryOrOpen!0 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun res!1771538 () Bool)

(declare-fun b!4322643 () Bool)

(assert (=> b!4322643 (= res!1771538 (= (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1466 lt!1540456)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2689342 () Bool)

(assert (=> b!4322643 (=> (not res!1771538) (not e!2689342))))

(declare-fun bm!299793 () Bool)

(assert (=> bm!299793 (= call!299800 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun b!4322644 () Bool)

(declare-fun e!2689346 () Bool)

(assert (=> b!4322644 (= e!2689347 e!2689346)))

(declare-fun c!735308 () Bool)

(assert (=> b!4322644 (= c!735308 (_1!26881 lt!1540451))))

(declare-fun b!4322645 () Bool)

(assert (=> b!4322645 (= e!2689341 ((_ is Undefined!21) lt!1540454))))

(declare-fun bm!299794 () Bool)

(assert (=> bm!299794 (= call!299789 (map!10407 (ite c!735006 (_2!26881 lt!1539536) call!299599)))))

(declare-fun b!4322646 () Bool)

(assert (=> b!4322646 (= e!2689338 call!299798)))

(declare-fun b!4322647 () Bool)

(declare-fun e!2689330 () tuple2!47190)

(assert (=> b!4322647 (= e!2689348 e!2689330)))

(assert (=> b!4322647 (= lt!1540445 (seekEntryOrOpen!0 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(assert (=> b!4322647 (= c!735309 ((_ is Undefined!21) lt!1540445))))

(declare-fun bm!299795 () Bool)

(assert (=> bm!299795 (= call!299806 (+!330 (ite c!735304 (ite c!735301 call!299805 call!299803) call!299798) (ite c!735304 (ite c!735301 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))) (tuple2!47187 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))))

(declare-fun res!1771543 () Bool)

(declare-fun b!4322648 () Bool)

(assert (=> b!4322648 (= res!1771543 (= (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1466 lt!1540454)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2689345 () Bool)

(assert (=> b!4322648 (=> (not res!1771543) (not e!2689345))))

(declare-fun bm!299796 () Bool)

(declare-fun lt!1540457 () (_ BitVec 32))

(assert (=> bm!299796 (= call!299788 (getCurrentListMap!24 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite (and c!735304 c!735301) lt!1540457 (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (ite (and c!735304 c!735301) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) #b00000000000000000000000000000000 (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun b!4322649 () Bool)

(assert (=> b!4322649 (= e!2689342 (not call!299799))))

(declare-fun b!4322650 () Bool)

(assert (=> b!4322650 (= e!2689346 e!2689343)))

(declare-fun res!1771544 () Bool)

(assert (=> b!4322650 (= res!1771544 (contains!10426 call!299809 (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4322650 (=> (not res!1771544) (not e!2689343))))

(declare-fun b!4322651 () Bool)

(assert (=> b!4322651 (= e!2689350 e!2689342)))

(declare-fun res!1771539 () Bool)

(assert (=> b!4322651 (= res!1771539 call!299801)))

(assert (=> b!4322651 (=> (not res!1771539) (not e!2689342))))

(declare-fun call!299790 () Bool)

(declare-fun bm!299797 () Bool)

(assert (=> bm!299797 (= call!299790 (arrayContainsKey!0 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun bm!299798 () Bool)

(assert (=> bm!299798 (= call!299799 call!299790)))

(declare-fun b!4322652 () Bool)

(declare-fun Unit!67843 () Unit!67766)

(assert (=> b!4322652 (= e!2689332 Unit!67843)))

(declare-fun lt!1540453 () Unit!67766)

(assert (=> b!4322652 (= lt!1540453 call!299794)))

(declare-fun lt!1540446 () SeekEntryResult!21)

(assert (=> b!4322652 (= lt!1540446 call!299793)))

(declare-fun res!1771547 () Bool)

(assert (=> b!4322652 (= res!1771547 ((_ is Found!21) lt!1540446))))

(declare-fun e!2689333 () Bool)

(assert (=> b!4322652 (=> (not res!1771547) (not e!2689333))))

(assert (=> b!4322652 e!2689333))

(declare-fun lt!1540439 () Unit!67766)

(assert (=> b!4322652 (= lt!1540439 lt!1540453)))

(assert (=> b!4322652 false))

(declare-fun bm!299799 () Bool)

(declare-fun c!735312 () Bool)

(assert (=> bm!299799 (= call!299807 (updateHelperNewKey!11 (ite c!735006 (_2!26881 lt!1539536) call!299599) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (ite c!735312 (index!1466 lt!1540445) (index!1465 lt!1540445))))))

(declare-fun bm!299800 () Bool)

(assert (=> bm!299800 (= call!299787 call!299790)))

(declare-fun b!4322653 () Bool)

(declare-fun res!1771541 () Bool)

(assert (=> b!4322653 (=> (not res!1771541) (not e!2689337))))

(assert (=> b!4322653 (= res!1771541 call!299795)))

(assert (=> b!4322653 (= e!2689340 e!2689337)))

(declare-fun b!4322654 () Bool)

(declare-fun Unit!67844 () Unit!67766)

(assert (=> b!4322654 (= e!2689334 Unit!67844)))

(declare-fun lt!1540440 () Unit!67766)

(assert (=> b!4322654 (= lt!1540440 call!299800)))

(assert (=> b!4322654 (= lt!1540456 call!299796)))

(declare-fun c!735303 () Bool)

(assert (=> b!4322654 (= c!735303 ((_ is MissingZero!21) lt!1540456))))

(assert (=> b!4322654 e!2689336))

(declare-fun lt!1540452 () Unit!67766)

(assert (=> b!4322654 (= lt!1540452 lt!1540440)))

(assert (=> b!4322654 false))

(declare-fun b!4322655 () Bool)

(declare-fun lt!1540449 () Unit!67766)

(assert (=> b!4322655 (= lt!1540449 e!2689332)))

(declare-fun c!735307 () Bool)

(assert (=> b!4322655 (= c!735307 call!299810)))

(assert (=> b!4322655 (= e!2689330 (tuple2!47191 false (ite c!735006 (_2!26881 lt!1539536) call!299599)))))

(declare-fun b!4322656 () Bool)

(declare-fun lt!1540434 () Unit!67766)

(declare-fun lt!1540441 () Unit!67766)

(assert (=> b!4322656 (= lt!1540434 lt!1540441)))

(declare-fun call!299802 () ListLongMap!1171)

(assert (=> b!4322656 (= call!299802 call!299805)))

(assert (=> b!4322656 (= lt!1540441 (lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) lt!1540442 (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(assert (=> b!4322656 (= lt!1540442 (bvor (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) #b00000000000000000000000000000010))))

(assert (=> b!4322656 (= e!2689344 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (bvor (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) #b00000000000000000000000000000010) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (_size!9550 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_vacant!4815 (ite c!735006 (_2!26881 lt!1539536) call!299599)))))))

(declare-fun b!4322657 () Bool)

(assert (=> b!4322657 (= e!2689333 (= (select (arr!7691 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599))) (index!1464 lt!1540446)) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!4322658 () Bool)

(assert (=> b!4322658 (= e!2689346 (= call!299809 call!299789))))

(declare-fun bm!299801 () Bool)

(assert (=> bm!299801 (= call!299802 call!299806)))

(declare-fun b!4322659 () Bool)

(declare-fun lt!1540432 () tuple2!47190)

(assert (=> b!4322659 (= e!2689339 (tuple2!47191 (_1!26881 lt!1540432) (_2!26881 lt!1540432)))))

(assert (=> b!4322659 (= lt!1540432 call!299807)))

(declare-fun bm!299802 () Bool)

(assert (=> bm!299802 (= call!299794 (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735005 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun bm!299803 () Bool)

(assert (=> bm!299803 (= call!299809 (map!10407 (_2!26881 lt!1540451)))))

(declare-fun b!4322660 () Bool)

(assert (=> b!4322660 (= c!735312 ((_ is MissingVacant!21) lt!1540445))))

(assert (=> b!4322660 (= e!2689330 e!2689339)))

(declare-fun b!4322661 () Bool)

(declare-fun res!1771545 () Bool)

(assert (=> b!4322661 (= res!1771545 call!299797)))

(assert (=> b!4322661 (=> (not res!1771545) (not e!2689333))))

(declare-fun bm!299804 () Bool)

(assert (=> bm!299804 (= call!299791 (inRange!0 (ite c!735309 (ite c!735307 (index!1464 lt!1540446) (ite c!735313 (index!1465 lt!1540454) (index!1466 lt!1540454))) (ite c!735305 (index!1464 lt!1540435) (ite c!735303 (index!1465 lt!1540456) (index!1466 lt!1540456)))) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(declare-fun b!4322662 () Bool)

(declare-fun res!1771542 () Bool)

(assert (=> b!4322662 (= res!1771542 call!299792)))

(assert (=> b!4322662 (=> (not res!1771542) (not e!2689331))))

(declare-fun b!4322663 () Bool)

(declare-fun lt!1540436 () Unit!67766)

(declare-fun lt!1540444 () Unit!67766)

(assert (=> b!4322663 (= lt!1540436 lt!1540444)))

(assert (=> b!4322663 (= call!299802 call!299803)))

(assert (=> b!4322663 (= lt!1540444 (lemmaChangeZeroKeyThenAddPairToListMap!11 (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) lt!1540457 (zeroValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599))))))

(assert (=> b!4322663 (= lt!1540457 (bvor (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) #b00000000000000000000000000000001))))

(assert (=> b!4322663 (= e!2689344 (tuple2!47191 true (LongMapFixedSize!9507 (defaultEntry!5148 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (mask!13375 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (bvor (extraKeys!5010 (ite c!735006 (_2!26881 lt!1539536) call!299599)) #b00000000000000000000000000000001) (ite c!735006 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (ite c!735005 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (minValue!5021 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_size!9550 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_keys!5066 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_values!5044 (ite c!735006 (_2!26881 lt!1539536) call!299599)) (_vacant!4815 (ite c!735006 (_2!26881 lt!1539536) call!299599)))))))

(declare-fun bm!299805 () Bool)

(assert (=> bm!299805 (= call!299798 call!299788)))

(declare-fun b!4322664 () Bool)

(assert (=> b!4322664 (= e!2689345 (not call!299787))))

(declare-fun b!4322665 () Bool)

(assert (=> b!4322665 (= e!2689341 e!2689345)))

(declare-fun res!1771535 () Bool)

(assert (=> b!4322665 (= res!1771535 call!299795)))

(assert (=> b!4322665 (=> (not res!1771535) (not e!2689345))))

(assert (= (and d!1271043 c!735304) b!4322630))

(assert (= (and d!1271043 (not c!735304)) b!4322647))

(assert (= (and b!4322630 c!735301) b!4322663))

(assert (= (and b!4322630 (not c!735301)) b!4322656))

(assert (= (or b!4322663 b!4322656) bm!299791))

(assert (= (or b!4322663 b!4322656) bm!299789))

(assert (= (or b!4322663 b!4322656) bm!299801))

(assert (= (and b!4322647 c!735309) b!4322655))

(assert (= (and b!4322647 (not c!735309)) b!4322660))

(assert (= (and b!4322655 c!735307) b!4322652))

(assert (= (and b!4322655 (not c!735307)) b!4322636))

(assert (= (and b!4322652 res!1771547) b!4322661))

(assert (= (and b!4322661 res!1771545) b!4322657))

(assert (= (and b!4322636 c!735313) b!4322653))

(assert (= (and b!4322636 (not c!735313)) b!4322631))

(assert (= (and b!4322653 res!1771541) b!4322637))

(assert (= (and b!4322637 res!1771537) b!4322632))

(assert (= (and b!4322631 c!735302) b!4322665))

(assert (= (and b!4322631 (not c!735302)) b!4322645))

(assert (= (and b!4322665 res!1771535) b!4322648))

(assert (= (and b!4322648 res!1771543) b!4322664))

(assert (= (or b!4322632 b!4322664) bm!299800))

(assert (= (or b!4322653 b!4322665) bm!299786))

(assert (= (or b!4322661 bm!299786) bm!299787))

(assert (= (or b!4322652 b!4322636) bm!299784))

(assert (= (and b!4322660 c!735312) b!4322659))

(assert (= (and b!4322660 (not c!735312)) b!4322634))

(assert (= (and b!4322634 c!735310) b!4322642))

(assert (= (and b!4322634 (not c!735310)) b!4322635))

(assert (= (and b!4322635 c!735305) b!4322629))

(assert (= (and b!4322635 (not c!735305)) b!4322654))

(assert (= (and b!4322629 res!1771534) b!4322662))

(assert (= (and b!4322662 res!1771542) b!4322638))

(assert (= (and b!4322654 c!735303) b!4322641))

(assert (= (and b!4322654 (not c!735303)) b!4322627))

(assert (= (and b!4322641 res!1771536) b!4322639))

(assert (= (and b!4322639 res!1771540) b!4322633))

(assert (= (and b!4322627 c!735306) b!4322651))

(assert (= (and b!4322627 (not c!735306)) b!4322626))

(assert (= (and b!4322651 res!1771539) b!4322643))

(assert (= (and b!4322643 res!1771538) b!4322649))

(assert (= (or b!4322633 b!4322649) bm!299798))

(assert (= (or b!4322641 b!4322651) bm!299788))

(assert (= (or b!4322662 bm!299788) bm!299785))

(assert (= (or b!4322629 b!4322654) bm!299790))

(assert (= (or b!4322659 b!4322642) bm!299799))

(assert (= (or bm!299787 bm!299785) bm!299804))

(assert (= (or bm!299784 bm!299790) bm!299792))

(assert (= (or b!4322636 b!4322654) bm!299793))

(assert (= (or b!4322652 b!4322629) bm!299802))

(assert (= (or bm!299800 bm!299798) bm!299797))

(assert (= (or b!4322655 b!4322635) bm!299805))

(assert (= (or b!4322655 b!4322635) bm!299783))

(assert (= (and bm!299783 c!735311) b!4322646))

(assert (= (and bm!299783 (not c!735311)) b!4322628))

(assert (= (or bm!299791 b!4322628) bm!299782))

(assert (= (or bm!299789 bm!299805) bm!299796))

(assert (= (or bm!299801 b!4322635) bm!299795))

(assert (= (and d!1271043 res!1771546) b!4322644))

(assert (= (and b!4322644 c!735308) b!4322650))

(assert (= (and b!4322644 (not c!735308)) b!4322658))

(assert (= (and b!4322650 res!1771544) b!4322640))

(assert (= (or b!4322640 b!4322658) bm!299794))

(assert (= (or b!4322650 b!4322640 b!4322658) bm!299803))

(declare-fun m!4917029 () Bool)

(assert (=> b!4322663 m!4917029))

(declare-fun m!4917031 () Bool)

(assert (=> bm!299802 m!4917031))

(declare-fun m!4917033 () Bool)

(assert (=> b!4322650 m!4917033))

(declare-fun m!4917035 () Bool)

(assert (=> b!4322635 m!4917035))

(declare-fun m!4917037 () Bool)

(assert (=> b!4322635 m!4917037))

(declare-fun m!4917039 () Bool)

(assert (=> b!4322635 m!4917039))

(declare-fun m!4917041 () Bool)

(assert (=> b!4322635 m!4917041))

(declare-fun m!4917043 () Bool)

(assert (=> b!4322635 m!4917043))

(declare-fun m!4917045 () Bool)

(assert (=> b!4322648 m!4917045))

(declare-fun m!4917047 () Bool)

(assert (=> bm!299782 m!4917047))

(declare-fun m!4917049 () Bool)

(assert (=> bm!299799 m!4917049))

(declare-fun m!4917051 () Bool)

(assert (=> b!4322643 m!4917051))

(declare-fun m!4917053 () Bool)

(assert (=> b!4322640 m!4917053))

(declare-fun m!4917055 () Bool)

(assert (=> bm!299797 m!4917055))

(declare-fun m!4917057 () Bool)

(assert (=> d!1271043 m!4917057))

(declare-fun m!4917059 () Bool)

(assert (=> d!1271043 m!4917059))

(declare-fun m!4917061 () Bool)

(assert (=> b!4322656 m!4917061))

(declare-fun m!4917063 () Bool)

(assert (=> bm!299783 m!4917063))

(declare-fun m!4917065 () Bool)

(assert (=> bm!299783 m!4917065))

(declare-fun m!4917067 () Bool)

(assert (=> bm!299792 m!4917067))

(declare-fun m!4917069 () Bool)

(assert (=> b!4322657 m!4917069))

(declare-fun m!4917071 () Bool)

(assert (=> b!4322638 m!4917071))

(declare-fun m!4917073 () Bool)

(assert (=> b!4322639 m!4917073))

(assert (=> b!4322647 m!4917067))

(declare-fun m!4917075 () Bool)

(assert (=> bm!299804 m!4917075))

(declare-fun m!4917077 () Bool)

(assert (=> bm!299793 m!4917077))

(declare-fun m!4917079 () Bool)

(assert (=> bm!299796 m!4917079))

(declare-fun m!4917081 () Bool)

(assert (=> b!4322637 m!4917081))

(declare-fun m!4917083 () Bool)

(assert (=> bm!299795 m!4917083))

(declare-fun m!4917085 () Bool)

(assert (=> bm!299803 m!4917085))

(declare-fun m!4917087 () Bool)

(assert (=> bm!299794 m!4917087))

(assert (=> bm!299595 d!1271043))

(declare-fun d!1271045 () Bool)

(declare-fun res!1771548 () Bool)

(declare-fun e!2689351 () Bool)

(assert (=> d!1271045 (=> res!1771548 e!2689351)))

(assert (=> d!1271045 (= res!1771548 (and ((_ is Cons!48378) (t!355381 lt!1539347)) (= (_1!26878 (h!53838 (t!355381 lt!1539347))) key!2048)))))

(assert (=> d!1271045 (= (containsKey!400 (t!355381 lt!1539347) key!2048) e!2689351)))

(declare-fun b!4322666 () Bool)

(declare-fun e!2689352 () Bool)

(assert (=> b!4322666 (= e!2689351 e!2689352)))

(declare-fun res!1771549 () Bool)

(assert (=> b!4322666 (=> (not res!1771549) (not e!2689352))))

(assert (=> b!4322666 (= res!1771549 ((_ is Cons!48378) (t!355381 lt!1539347)))))

(declare-fun b!4322667 () Bool)

(assert (=> b!4322667 (= e!2689352 (containsKey!400 (t!355381 (t!355381 lt!1539347)) key!2048))))

(assert (= (and d!1271045 (not res!1771548)) b!4322666))

(assert (= (and b!4322666 res!1771549) b!4322667))

(declare-fun m!4917089 () Bool)

(assert (=> b!4322667 m!4917089))

(assert (=> b!4321808 d!1271045))

(assert (=> b!4321650 d!1270993))

(declare-fun d!1271047 () Bool)

(assert (=> d!1271047 (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048)))

(declare-fun lt!1540458 () Unit!67766)

(assert (=> d!1271047 (= lt!1540458 (choose!26408 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(assert (=> d!1271047 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))

(assert (=> d!1271047 (= (lemmaInGetKeysListThenContainsKey!53 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048) lt!1540458)))

(declare-fun bs!606809 () Bool)

(assert (= bs!606809 d!1271047))

(assert (=> bs!606809 m!4915579))

(declare-fun m!4917091 () Bool)

(assert (=> bs!606809 m!4917091))

(assert (=> bs!606809 m!4916269))

(assert (=> b!4321650 d!1271047))

(assert (=> b!4321811 d!1270683))

(declare-fun d!1271049 () Bool)

(declare-fun res!1771550 () Bool)

(declare-fun e!2689353 () Bool)

(assert (=> d!1271049 (=> res!1771550 e!2689353)))

(assert (=> d!1271049 (= res!1771550 (not ((_ is Cons!48378) (_2!26879 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))))

(assert (=> d!1271049 (= (noDuplicateKeys!262 (_2!26879 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))) e!2689353)))

(declare-fun b!4322668 () Bool)

(declare-fun e!2689354 () Bool)

(assert (=> b!4322668 (= e!2689353 e!2689354)))

(declare-fun res!1771551 () Bool)

(assert (=> b!4322668 (=> (not res!1771551) (not e!2689354))))

(assert (=> b!4322668 (= res!1771551 (not (containsKey!400 (t!355381 (_2!26879 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))) (_1!26878 (h!53838 (_2!26879 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))))))

(declare-fun b!4322669 () Bool)

(assert (=> b!4322669 (= e!2689354 (noDuplicateKeys!262 (t!355381 (_2!26879 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))))

(assert (= (and d!1271049 (not res!1771550)) b!4322668))

(assert (= (and b!4322668 res!1771551) b!4322669))

(declare-fun m!4917093 () Bool)

(assert (=> b!4322668 m!4917093))

(declare-fun m!4917095 () Bool)

(assert (=> b!4322669 m!4917095))

(assert (=> bs!606590 d!1271049))

(assert (=> b!4321679 d!1270881))

(assert (=> b!4321679 d!1270883))

(assert (=> b!4321647 d!1270969))

(assert (=> b!4321647 d!1270971))

(declare-fun d!1271051 () Bool)

(declare-fun e!2689355 () Bool)

(assert (=> d!1271051 e!2689355))

(declare-fun res!1771552 () Bool)

(assert (=> d!1271051 (=> (not res!1771552) (not e!2689355))))

(declare-fun lt!1540459 () ListLongMap!1171)

(assert (=> d!1271051 (= res!1771552 (contains!10426 lt!1540459 (_1!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317)))))))

(declare-fun lt!1540461 () List!48503)

(assert (=> d!1271051 (= lt!1540459 (ListLongMap!1172 lt!1540461))))

(declare-fun lt!1540462 () Unit!67766)

(declare-fun lt!1540460 () Unit!67766)

(assert (=> d!1271051 (= lt!1540462 lt!1540460)))

(assert (=> d!1271051 (= (getValueByKey!297 lt!1540461 (_1!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317)))) (Some!10299 (_2!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1271051 (= lt!1540460 (lemmaContainsTupThenGetReturnValue!96 lt!1540461 (_1!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317))) (_2!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1271051 (= lt!1540461 (insertStrictlySorted!56 (toList!2554 (ite c!734981 (ite c!734978 call!299583 call!299581) call!299576)) (_1!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317))) (_2!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1271051 (= (+!330 (ite c!734981 (ite c!734978 call!299583 call!299581) call!299576) (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317))) lt!1540459)))

(declare-fun b!4322670 () Bool)

(declare-fun res!1771553 () Bool)

(assert (=> b!4322670 (=> (not res!1771553) (not e!2689355))))

(assert (=> b!4322670 (= res!1771553 (= (getValueByKey!297 (toList!2554 lt!1540459) (_1!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317)))) (Some!10299 (_2!26879 (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317))))))))

(declare-fun b!4322671 () Bool)

(assert (=> b!4322671 (= e!2689355 (contains!10428 (toList!2554 lt!1540459) (ite c!734981 (ite c!734978 (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317) (tuple2!47187 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (= (and d!1271051 res!1771552) b!4322670))

(assert (= (and b!4322670 res!1771553) b!4322671))

(declare-fun m!4917097 () Bool)

(assert (=> d!1271051 m!4917097))

(declare-fun m!4917099 () Bool)

(assert (=> d!1271051 m!4917099))

(declare-fun m!4917101 () Bool)

(assert (=> d!1271051 m!4917101))

(declare-fun m!4917103 () Bool)

(assert (=> d!1271051 m!4917103))

(declare-fun m!4917105 () Bool)

(assert (=> b!4322670 m!4917105))

(declare-fun m!4917107 () Bool)

(assert (=> b!4322671 m!4917107))

(assert (=> bm!299573 d!1271051))

(declare-fun d!1271053 () Bool)

(declare-fun lt!1540463 () Bool)

(assert (=> d!1271053 (= lt!1540463 (select (content!7570 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun e!2689357 () Bool)

(assert (=> d!1271053 (= lt!1540463 e!2689357)))

(declare-fun res!1771555 () Bool)

(assert (=> d!1271053 (=> (not res!1771555) (not e!2689357))))

(assert (=> d!1271053 (= res!1771555 ((_ is Cons!48379) (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271053 (= (contains!10428 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) lt!1540463)))

(declare-fun b!4322672 () Bool)

(declare-fun e!2689356 () Bool)

(assert (=> b!4322672 (= e!2689357 e!2689356)))

(declare-fun res!1771554 () Bool)

(assert (=> b!4322672 (=> res!1771554 e!2689356)))

(assert (=> b!4322672 (= res!1771554 (= (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun b!4322673 () Bool)

(assert (=> b!4322673 (= e!2689356 (contains!10428 (t!355382 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(assert (= (and d!1271053 res!1771555) b!4322672))

(assert (= (and b!4322672 (not res!1771554)) b!4322673))

(assert (=> d!1271053 m!4916679))

(declare-fun m!4917109 () Bool)

(assert (=> d!1271053 m!4917109))

(declare-fun m!4917111 () Bool)

(assert (=> b!4322673 m!4917111))

(assert (=> b!4321813 d!1271053))

(assert (=> d!1270587 d!1270803))

(assert (=> b!4321789 d!1270759))

(declare-fun d!1271055 () Bool)

(declare-fun e!2689358 () Bool)

(assert (=> d!1271055 e!2689358))

(declare-fun res!1771556 () Bool)

(assert (=> d!1271055 (=> (not res!1771556) (not e!2689358))))

(assert (=> d!1271055 (= res!1771556 (and (bvsge (index!1464 lt!1539665) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539665) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun lt!1540464 () Unit!67766)

(assert (=> d!1271055 (= lt!1540464 (choose!26404 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1539665) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271055 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1271055 (= (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1539665) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540464)))

(declare-fun b!4322674 () Bool)

(assert (=> b!4322674 (= e!2689358 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))))))

(assert (= (and d!1271055 res!1771556) b!4322674))

(declare-fun m!4917113 () Bool)

(assert (=> d!1271055 m!4917113))

(assert (=> d!1271055 m!4916013))

(assert (=> b!4322674 m!4915725))

(assert (=> b!4322674 m!4915791))

(assert (=> b!4322674 m!4915725))

(assert (=> b!4322674 m!4915791))

(assert (=> b!4322674 m!4915793))

(assert (=> b!4321789 d!1271055))

(declare-fun bm!299814 () Bool)

(declare-fun c!735319 () Bool)

(declare-fun call!299822 () List!48502)

(declare-fun call!299819 () ListLongMap!1171)

(declare-fun call!299821 () ListLongMap!1171)

(assert (=> bm!299814 (= call!299822 (apply!11141 (ite c!735319 call!299821 call!299819) lt!1539310))))

(declare-fun b!4322689 () Bool)

(declare-fun e!2689373 () Bool)

(declare-fun e!2689371 () Bool)

(assert (=> b!4322689 (= e!2689373 e!2689371)))

(declare-fun res!1771565 () Bool)

(assert (=> b!4322689 (= res!1771565 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4322689 (=> (not res!1771565) (not e!2689371))))

(declare-fun e!2689370 () Bool)

(declare-fun b!4322690 () Bool)

(declare-fun call!299820 () List!48502)

(assert (=> b!4322690 (= e!2689370 (= call!299820 (select (arr!7692 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))))))

(assert (=> b!4322690 (and (bvsge (index!1464 lt!1539665) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539665) (size!35731 (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(declare-fun b!4322691 () Bool)

(declare-fun res!1771564 () Bool)

(assert (=> b!4322691 (=> (not res!1771564) (not e!2689370))))

(assert (=> b!4322691 (= res!1771564 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000))))

(declare-fun e!2689369 () Bool)

(assert (=> b!4322691 (= e!2689369 e!2689370)))

(declare-fun b!4322692 () Bool)

(assert (=> b!4322692 (= e!2689373 e!2689369)))

(declare-fun c!735318 () Bool)

(assert (=> b!4322692 (= c!735318 (= lt!1539310 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299815 () Bool)

(assert (=> bm!299815 (= call!299820 call!299822)))

(declare-fun bm!299816 () Bool)

(assert (=> bm!299816 (= call!299819 call!299821)))

(declare-fun b!4322693 () Bool)

(declare-fun res!1771563 () Bool)

(declare-fun e!2689372 () Bool)

(assert (=> b!4322693 (=> (not res!1771563) (not e!2689372))))

(assert (=> b!4322693 (= res!1771563 (not (= (bvand (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4322693 (= e!2689369 e!2689372)))

(declare-fun b!4322694 () Bool)

(assert (=> b!4322694 (= e!2689371 (= call!299822 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun d!1271057 () Bool)

(assert (=> d!1271057 e!2689373))

(assert (=> d!1271057 (= c!735319 (= lt!1539310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1540467 () Unit!67766)

(declare-fun choose!26414 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 (_ BitVec 64) (_ BitVec 32) Int) Unit!67766)

(assert (=> d!1271057 (= lt!1540467 (choose!26414 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539665) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271057 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1271057 (= (lemmaKeyInListMapThenSameValueInArray!11 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539665) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540467)))

(declare-fun bm!299817 () Bool)

(assert (=> bm!299817 (= call!299821 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322695 () Bool)

(assert (=> b!4322695 (= e!2689372 (= call!299820 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (= (and d!1271057 c!735319) b!4322689))

(assert (= (and d!1271057 (not c!735319)) b!4322692))

(assert (= (and b!4322689 res!1771565) b!4322694))

(assert (= (and b!4322692 c!735318) b!4322693))

(assert (= (and b!4322692 (not c!735318)) b!4322691))

(assert (= (and b!4322693 res!1771563) b!4322695))

(assert (= (and b!4322691 res!1771564) b!4322690))

(assert (= (or b!4322695 b!4322690) bm!299816))

(assert (= (or b!4322695 b!4322690) bm!299815))

(assert (= (or b!4322694 bm!299816) bm!299817))

(assert (= (or b!4322694 bm!299815) bm!299814))

(assert (=> b!4322690 m!4915777))

(declare-fun m!4917115 () Bool)

(assert (=> bm!299814 m!4917115))

(declare-fun m!4917117 () Bool)

(assert (=> d!1271057 m!4917117))

(assert (=> d!1271057 m!4916013))

(assert (=> b!4322691 m!4915787))

(assert (=> bm!299817 m!4915725))

(assert (=> b!4321789 d!1271057))

(declare-fun d!1271059 () Bool)

(declare-fun e!2689374 () Bool)

(assert (=> d!1271059 e!2689374))

(declare-fun res!1771566 () Bool)

(assert (=> d!1271059 (=> res!1771566 e!2689374)))

(declare-fun lt!1540470 () Bool)

(assert (=> d!1271059 (= res!1771566 (not lt!1540470))))

(declare-fun lt!1540471 () Bool)

(assert (=> d!1271059 (= lt!1540470 lt!1540471)))

(declare-fun lt!1540468 () Unit!67766)

(declare-fun e!2689375 () Unit!67766)

(assert (=> d!1271059 (= lt!1540468 e!2689375)))

(declare-fun c!735320 () Bool)

(assert (=> d!1271059 (= c!735320 lt!1540471)))

(assert (=> d!1271059 (= lt!1540471 (containsKey!401 (toList!2554 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))))))

(assert (=> d!1271059 (= (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))) lt!1540470)))

(declare-fun b!4322696 () Bool)

(declare-fun lt!1540469 () Unit!67766)

(assert (=> b!4322696 (= e!2689375 lt!1540469)))

(assert (=> b!4322696 (= lt!1540469 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))))))

(assert (=> b!4322696 (isDefined!7602 (getValueByKey!297 (toList!2554 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665))))))

(declare-fun b!4322697 () Bool)

(declare-fun Unit!67845 () Unit!67766)

(assert (=> b!4322697 (= e!2689375 Unit!67845)))

(declare-fun b!4322698 () Bool)

(assert (=> b!4322698 (= e!2689374 (isDefined!7602 (getValueByKey!297 (toList!2554 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539665)))))))

(assert (= (and d!1271059 c!735320) b!4322696))

(assert (= (and d!1271059 (not c!735320)) b!4322697))

(assert (= (and d!1271059 (not res!1771566)) b!4322698))

(assert (=> d!1271059 m!4915791))

(declare-fun m!4917119 () Bool)

(assert (=> d!1271059 m!4917119))

(assert (=> b!4322696 m!4915791))

(declare-fun m!4917121 () Bool)

(assert (=> b!4322696 m!4917121))

(assert (=> b!4322696 m!4915791))

(declare-fun m!4917123 () Bool)

(assert (=> b!4322696 m!4917123))

(assert (=> b!4322696 m!4917123))

(declare-fun m!4917125 () Bool)

(assert (=> b!4322696 m!4917125))

(assert (=> b!4322698 m!4915791))

(assert (=> b!4322698 m!4917123))

(assert (=> b!4322698 m!4917123))

(assert (=> b!4322698 m!4917125))

(assert (=> b!4321789 d!1271059))

(assert (=> b!4321789 d!1270749))

(declare-fun d!1271061 () Bool)

(assert (=> d!1271061 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000)))

(declare-fun lt!1540474 () Unit!67766)

(declare-fun choose!683 (array!17232 (_ BitVec 64) (_ BitVec 32)) Unit!67766)

(assert (=> d!1271061 (= lt!1540474 (choose!683 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539665)))))

(assert (=> d!1271061 (bvsge (index!1464 lt!1539665) #b00000000000000000000000000000000)))

(assert (=> d!1271061 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539665)) lt!1540474)))

(declare-fun bs!606810 () Bool)

(assert (= bs!606810 d!1271061))

(assert (=> bs!606810 m!4915787))

(declare-fun m!4917127 () Bool)

(assert (=> bs!606810 m!4917127))

(assert (=> b!4321789 d!1271061))

(assert (=> b!4321731 d!1270939))

(assert (=> b!4321731 d!1270941))

(declare-fun d!1271063 () Bool)

(declare-fun res!1771567 () Bool)

(declare-fun e!2689376 () Bool)

(assert (=> d!1271063 (=> res!1771567 e!2689376)))

(assert (=> d!1271063 (= res!1771567 (not ((_ is Cons!48378) (t!355381 lt!1539320))))))

(assert (=> d!1271063 (= (noDuplicateKeys!262 (t!355381 lt!1539320)) e!2689376)))

(declare-fun b!4322699 () Bool)

(declare-fun e!2689377 () Bool)

(assert (=> b!4322699 (= e!2689376 e!2689377)))

(declare-fun res!1771568 () Bool)

(assert (=> b!4322699 (=> (not res!1771568) (not e!2689377))))

(assert (=> b!4322699 (= res!1771568 (not (containsKey!400 (t!355381 (t!355381 lt!1539320)) (_1!26878 (h!53838 (t!355381 lt!1539320))))))))

(declare-fun b!4322700 () Bool)

(assert (=> b!4322700 (= e!2689377 (noDuplicateKeys!262 (t!355381 (t!355381 lt!1539320))))))

(assert (= (and d!1271063 (not res!1771567)) b!4322699))

(assert (= (and b!4322699 res!1771568) b!4322700))

(declare-fun m!4917129 () Bool)

(assert (=> b!4322699 m!4917129))

(assert (=> b!4322700 m!4916883))

(assert (=> b!4321712 d!1271063))

(assert (=> b!4321742 d!1270887))

(declare-fun d!1271065 () Bool)

(assert (=> d!1271065 (containsKey!402 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048)))

(declare-fun lt!1540475 () Unit!67766)

(assert (=> d!1271065 (= lt!1540475 (choose!26408 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(assert (=> d!1271065 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271065 (= (lemmaInGetKeysListThenContainsKey!53 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048) lt!1540475)))

(declare-fun bs!606811 () Bool)

(assert (= bs!606811 d!1271065))

(assert (=> bs!606811 m!4915769))

(declare-fun m!4917131 () Bool)

(assert (=> bs!606811 m!4917131))

(assert (=> bs!606811 m!4915961))

(assert (=> b!4321742 d!1271065))

(declare-fun d!1271067 () Bool)

(assert (=> d!1271067 (arrayContainsKey!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 #b00000000000000000000000000000000)))

(declare-fun lt!1540476 () Unit!67766)

(assert (=> d!1271067 (= lt!1540476 (choose!683 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539719)))))

(assert (=> d!1271067 (bvsge (index!1464 lt!1539719) #b00000000000000000000000000000000)))

(assert (=> d!1271067 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310 (index!1464 lt!1539719)) lt!1540476)))

(declare-fun bs!606812 () Bool)

(assert (= bs!606812 d!1271067))

(assert (=> bs!606812 m!4915787))

(declare-fun m!4917133 () Bool)

(assert (=> bs!606812 m!4917133))

(assert (=> b!4321839 d!1271067))

(declare-fun d!1271069 () Bool)

(declare-fun e!2689378 () Bool)

(assert (=> d!1271069 e!2689378))

(declare-fun res!1771569 () Bool)

(assert (=> d!1271069 (=> (not res!1771569) (not e!2689378))))

(assert (=> d!1271069 (= res!1771569 (and (bvsge (index!1464 lt!1539719) #b00000000000000000000000000000000) (bvslt (index!1464 lt!1539719) (size!35730 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun lt!1540477 () Unit!67766)

(assert (=> d!1271069 (= lt!1540477 (choose!26404 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1539719) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271069 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1271069 (= (lemmaValidKeyInArrayIsInListMap!14 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (index!1464 lt!1539719) (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540477)))

(declare-fun b!4322701 () Bool)

(assert (=> b!4322701 (= e!2689378 (contains!10426 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_values!5044 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (extraKeys!5010 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (index!1464 lt!1539719))))))

(assert (= (and d!1271069 res!1771569) b!4322701))

(declare-fun m!4917135 () Bool)

(assert (=> d!1271069 m!4917135))

(assert (=> d!1271069 m!4916013))

(assert (=> b!4322701 m!4915725))

(assert (=> b!4322701 m!4915827))

(assert (=> b!4322701 m!4915725))

(assert (=> b!4322701 m!4915827))

(declare-fun m!4917137 () Bool)

(assert (=> b!4322701 m!4917137))

(assert (=> b!4321839 d!1271069))

(declare-fun d!1271071 () Bool)

(declare-fun res!1771570 () Bool)

(declare-fun e!2689379 () Bool)

(assert (=> d!1271071 (=> res!1771570 e!2689379)))

(assert (=> d!1271071 (= res!1771570 ((_ is Nil!48378) (t!355381 (removePairForKey!267 lt!1539320 key!2048))))))

(assert (=> d!1271071 (= (forall!8812 (t!355381 (removePairForKey!267 lt!1539320 key!2048)) lambda!133837) e!2689379)))

(declare-fun b!4322702 () Bool)

(declare-fun e!2689380 () Bool)

(assert (=> b!4322702 (= e!2689379 e!2689380)))

(declare-fun res!1771571 () Bool)

(assert (=> b!4322702 (=> (not res!1771571) (not e!2689380))))

(assert (=> b!4322702 (= res!1771571 (dynLambda!20508 lambda!133837 (h!53838 (t!355381 (removePairForKey!267 lt!1539320 key!2048)))))))

(declare-fun b!4322703 () Bool)

(assert (=> b!4322703 (= e!2689380 (forall!8812 (t!355381 (t!355381 (removePairForKey!267 lt!1539320 key!2048))) lambda!133837))))

(assert (= (and d!1271071 (not res!1771570)) b!4322702))

(assert (= (and b!4322702 res!1771571) b!4322703))

(declare-fun b_lambda!127331 () Bool)

(assert (=> (not b_lambda!127331) (not b!4322702)))

(declare-fun m!4917139 () Bool)

(assert (=> b!4322702 m!4917139))

(declare-fun m!4917141 () Bool)

(assert (=> b!4322703 m!4917141))

(assert (=> b!4321509 d!1271071))

(declare-fun d!1271073 () Bool)

(declare-fun res!1771572 () Bool)

(declare-fun e!2689381 () Bool)

(assert (=> d!1271073 (=> res!1771572 e!2689381)))

(assert (=> d!1271073 (= res!1771572 (and ((_ is Cons!48378) (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314))))) (= (_1!26878 (h!53838 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539314))))))))))

(assert (=> d!1271073 (= (containsKey!400 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314)))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))) e!2689381)))

(declare-fun b!4322704 () Bool)

(declare-fun e!2689382 () Bool)

(assert (=> b!4322704 (= e!2689381 e!2689382)))

(declare-fun res!1771573 () Bool)

(assert (=> b!4322704 (=> (not res!1771573) (not e!2689382))))

(assert (=> b!4322704 (= res!1771573 ((_ is Cons!48378) (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314))))))))

(declare-fun b!4322705 () Bool)

(assert (=> b!4322705 (= e!2689382 (containsKey!400 (t!355381 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539314))))) (_1!26878 (h!53838 (_2!26879 (h!53839 (toList!2554 lt!1539314)))))))))

(assert (= (and d!1271073 (not res!1771572)) b!4322704))

(assert (= (and b!4322704 res!1771573) b!4322705))

(declare-fun m!4917143 () Bool)

(assert (=> b!4322705 m!4917143))

(assert (=> b!4321801 d!1271073))

(assert (=> b!4321739 d!1270821))

(assert (=> b!4321739 d!1270823))

(assert (=> d!1270669 d!1270833))

(declare-fun b!4322706 () Bool)

(declare-fun e!2689383 () Option!10300)

(assert (=> b!4322706 (= e!2689383 (Some!10299 (_2!26879 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun b!4322708 () Bool)

(declare-fun e!2689384 () Option!10300)

(assert (=> b!4322708 (= e!2689384 (getValueByKey!297 (t!355382 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310))))

(declare-fun d!1271075 () Bool)

(declare-fun c!735321 () Bool)

(assert (=> d!1271075 (= c!735321 (and ((_ is Cons!48379) (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (= (_1!26879 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539310)))))

(assert (=> d!1271075 (= (getValueByKey!297 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310) e!2689383)))

(declare-fun b!4322709 () Bool)

(assert (=> b!4322709 (= e!2689384 None!10299)))

(declare-fun b!4322707 () Bool)

(assert (=> b!4322707 (= e!2689383 e!2689384)))

(declare-fun c!735322 () Bool)

(assert (=> b!4322707 (= c!735322 (and ((_ is Cons!48379) (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (not (= (_1!26879 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) lt!1539310))))))

(assert (= (and d!1271075 c!735321) b!4322706))

(assert (= (and d!1271075 (not c!735321)) b!4322707))

(assert (= (and b!4322707 c!735322) b!4322708))

(assert (= (and b!4322707 (not c!735322)) b!4322709))

(declare-fun m!4917145 () Bool)

(assert (=> b!4322708 m!4917145))

(assert (=> b!4321498 d!1271075))

(declare-fun d!1271077 () Bool)

(declare-fun lt!1540478 () Bool)

(assert (=> d!1271077 (= lt!1540478 (select (content!7572 call!299511) (get!15676 lt!1539542)))))

(declare-fun e!2689385 () Bool)

(assert (=> d!1271077 (= lt!1540478 e!2689385)))

(declare-fun res!1771575 () Bool)

(assert (=> d!1271077 (=> (not res!1771575) (not e!2689385))))

(assert (=> d!1271077 (= res!1771575 ((_ is Cons!48378) call!299511))))

(assert (=> d!1271077 (= (contains!10430 call!299511 (get!15676 lt!1539542)) lt!1540478)))

(declare-fun b!4322710 () Bool)

(declare-fun e!2689386 () Bool)

(assert (=> b!4322710 (= e!2689385 e!2689386)))

(declare-fun res!1771574 () Bool)

(assert (=> b!4322710 (=> res!1771574 e!2689386)))

(assert (=> b!4322710 (= res!1771574 (= (h!53838 call!299511) (get!15676 lt!1539542)))))

(declare-fun b!4322711 () Bool)

(assert (=> b!4322711 (= e!2689386 (contains!10430 (t!355381 call!299511) (get!15676 lt!1539542)))))

(assert (= (and d!1271077 res!1771575) b!4322710))

(assert (= (and b!4322710 (not res!1771574)) b!4322711))

(declare-fun m!4917147 () Bool)

(assert (=> d!1271077 m!4917147))

(assert (=> d!1271077 m!4915481))

(declare-fun m!4917149 () Bool)

(assert (=> d!1271077 m!4917149))

(assert (=> b!4322711 m!4915481))

(declare-fun m!4917151 () Bool)

(assert (=> b!4322711 m!4917151))

(assert (=> b!4321561 d!1271077))

(assert (=> b!4321561 d!1270999))

(declare-fun d!1271079 () Bool)

(assert (=> d!1271079 (isDefined!7602 (getValueByKey!297 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(declare-fun lt!1540479 () Unit!67766)

(assert (=> d!1271079 (= lt!1540479 (choose!26400 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(declare-fun e!2689387 () Bool)

(assert (=> d!1271079 e!2689387))

(declare-fun res!1771576 () Bool)

(assert (=> d!1271079 (=> (not res!1771576) (not e!2689387))))

(assert (=> d!1271079 (= res!1771576 (isStrictlySorted!21 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1271079 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310) lt!1540479)))

(declare-fun b!4322712 () Bool)

(assert (=> b!4322712 (= e!2689387 (containsKey!401 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310))))

(assert (= (and d!1271079 res!1771576) b!4322712))

(assert (=> d!1271079 m!4915275))

(assert (=> d!1271079 m!4915275))

(assert (=> d!1271079 m!4915821))

(declare-fun m!4917153 () Bool)

(assert (=> d!1271079 m!4917153))

(declare-fun m!4917155 () Bool)

(assert (=> d!1271079 m!4917155))

(assert (=> b!4322712 m!4915817))

(assert (=> b!4321814 d!1271079))

(assert (=> b!4321814 d!1270857))

(assert (=> b!4321814 d!1270561))

(declare-fun d!1271081 () Bool)

(declare-fun e!2689388 () Bool)

(assert (=> d!1271081 e!2689388))

(declare-fun res!1771577 () Bool)

(assert (=> d!1271081 (=> res!1771577 e!2689388)))

(declare-fun lt!1540482 () Bool)

(assert (=> d!1271081 (= res!1771577 (not lt!1540482))))

(declare-fun lt!1540483 () Bool)

(assert (=> d!1271081 (= lt!1540482 lt!1540483)))

(declare-fun lt!1540480 () Unit!67766)

(declare-fun e!2689389 () Unit!67766)

(assert (=> d!1271081 (= lt!1540480 e!2689389)))

(declare-fun c!735323 () Bool)

(assert (=> d!1271081 (= c!735323 lt!1540483)))

(assert (=> d!1271081 (= lt!1540483 (containsKey!401 (toList!2554 e!2688588) (ite c!734986 lt!1539310 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497)))))))

(assert (=> d!1271081 (= (contains!10426 e!2688588 (ite c!734986 lt!1539310 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497)))) lt!1540482)))

(declare-fun b!4322713 () Bool)

(declare-fun lt!1540481 () Unit!67766)

(assert (=> b!4322713 (= e!2689389 lt!1540481)))

(assert (=> b!4322713 (= lt!1540481 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 e!2688588) (ite c!734986 lt!1539310 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497)))))))

(assert (=> b!4322713 (isDefined!7602 (getValueByKey!297 (toList!2554 e!2688588) (ite c!734986 lt!1539310 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497)))))))

(declare-fun b!4322714 () Bool)

(declare-fun Unit!67846 () Unit!67766)

(assert (=> b!4322714 (= e!2689389 Unit!67846)))

(declare-fun b!4322715 () Bool)

(assert (=> b!4322715 (= e!2689388 (isDefined!7602 (getValueByKey!297 (toList!2554 e!2688588) (ite c!734986 lt!1539310 (select (arr!7691 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (index!1464 lt!1539497))))))))

(assert (= (and d!1271081 c!735323) b!4322713))

(assert (= (and d!1271081 (not c!735323)) b!4322714))

(assert (= (and d!1271081 (not res!1771577)) b!4322715))

(declare-fun m!4917157 () Bool)

(assert (=> d!1271081 m!4917157))

(declare-fun m!4917159 () Bool)

(assert (=> b!4322713 m!4917159))

(declare-fun m!4917161 () Bool)

(assert (=> b!4322713 m!4917161))

(assert (=> b!4322713 m!4917161))

(declare-fun m!4917163 () Bool)

(assert (=> b!4322713 m!4917163))

(assert (=> b!4322715 m!4917161))

(assert (=> b!4322715 m!4917161))

(assert (=> b!4322715 m!4917163))

(assert (=> bm!299561 d!1271081))

(declare-fun d!1271083 () Bool)

(assert (=> d!1271083 (= (isEmpty!28119 lt!1539601) (not ((_ is Some!10300) lt!1539601)))))

(assert (=> d!1270619 d!1271083))

(declare-fun d!1271085 () Bool)

(declare-fun res!1771578 () Bool)

(declare-fun e!2689390 () Bool)

(assert (=> d!1271085 (=> res!1771578 e!2689390)))

(assert (=> d!1271085 (= res!1771578 (not ((_ is Cons!48378) (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(assert (=> d!1271085 (= (noDuplicateKeys!262 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) e!2689390)))

(declare-fun b!4322716 () Bool)

(declare-fun e!2689391 () Bool)

(assert (=> b!4322716 (= e!2689390 e!2689391)))

(declare-fun res!1771579 () Bool)

(assert (=> b!4322716 (=> (not res!1771579) (not e!2689391))))

(assert (=> b!4322716 (= res!1771579 (not (containsKey!400 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (_1!26878 (h!53838 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))))

(declare-fun b!4322717 () Bool)

(assert (=> b!4322717 (= e!2689391 (noDuplicateKeys!262 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(assert (= (and d!1271085 (not res!1771578)) b!4322716))

(assert (= (and b!4322716 res!1771579) b!4322717))

(declare-fun m!4917165 () Bool)

(assert (=> b!4322716 m!4917165))

(declare-fun m!4917167 () Bool)

(assert (=> b!4322717 m!4917167))

(assert (=> d!1270619 d!1271085))

(assert (=> bs!606597 d!1270909))

(declare-fun d!1271087 () Bool)

(assert (=> d!1271087 (= (map!10407 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539332)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539332))))))))

(declare-fun bs!606813 () Bool)

(assert (= bs!606813 d!1271087))

(declare-fun m!4917169 () Bool)

(assert (=> bs!606813 m!4917169))

(assert (=> d!1270667 d!1271087))

(declare-fun b!4322718 () Bool)

(declare-fun e!2689395 () Option!10301)

(assert (=> b!4322718 (= e!2689395 (getPair!162 (t!355381 (t!355381 call!299511)) key!2048))))

(declare-fun b!4322719 () Bool)

(declare-fun e!2689392 () Option!10301)

(assert (=> b!4322719 (= e!2689392 (Some!10300 (h!53838 (t!355381 call!299511))))))

(declare-fun b!4322720 () Bool)

(assert (=> b!4322720 (= e!2689395 None!10300)))

(declare-fun b!4322721 () Bool)

(declare-fun e!2689394 () Bool)

(assert (=> b!4322721 (= e!2689394 (not (containsKey!400 (t!355381 call!299511) key!2048)))))

(declare-fun b!4322723 () Bool)

(declare-fun e!2689393 () Bool)

(declare-fun lt!1540484 () Option!10301)

(assert (=> b!4322723 (= e!2689393 (contains!10430 (t!355381 call!299511) (get!15676 lt!1540484)))))

(declare-fun b!4322724 () Bool)

(declare-fun e!2689396 () Bool)

(assert (=> b!4322724 (= e!2689396 e!2689393)))

(declare-fun res!1771580 () Bool)

(assert (=> b!4322724 (=> (not res!1771580) (not e!2689393))))

(assert (=> b!4322724 (= res!1771580 (isDefined!7601 lt!1540484))))

(declare-fun b!4322725 () Bool)

(assert (=> b!4322725 (= e!2689392 e!2689395)))

(declare-fun c!735324 () Bool)

(assert (=> b!4322725 (= c!735324 ((_ is Cons!48378) (t!355381 call!299511)))))

(declare-fun b!4322722 () Bool)

(declare-fun res!1771581 () Bool)

(assert (=> b!4322722 (=> (not res!1771581) (not e!2689393))))

(assert (=> b!4322722 (= res!1771581 (= (_1!26878 (get!15676 lt!1540484)) key!2048))))

(declare-fun d!1271089 () Bool)

(assert (=> d!1271089 e!2689396))

(declare-fun res!1771582 () Bool)

(assert (=> d!1271089 (=> res!1771582 e!2689396)))

(assert (=> d!1271089 (= res!1771582 e!2689394)))

(declare-fun res!1771583 () Bool)

(assert (=> d!1271089 (=> (not res!1771583) (not e!2689394))))

(assert (=> d!1271089 (= res!1771583 (isEmpty!28119 lt!1540484))))

(assert (=> d!1271089 (= lt!1540484 e!2689392)))

(declare-fun c!735325 () Bool)

(assert (=> d!1271089 (= c!735325 (and ((_ is Cons!48378) (t!355381 call!299511)) (= (_1!26878 (h!53838 (t!355381 call!299511))) key!2048)))))

(assert (=> d!1271089 (noDuplicateKeys!262 (t!355381 call!299511))))

(assert (=> d!1271089 (= (getPair!162 (t!355381 call!299511) key!2048) lt!1540484)))

(assert (= (and d!1271089 c!735325) b!4322719))

(assert (= (and d!1271089 (not c!735325)) b!4322725))

(assert (= (and b!4322725 c!735324) b!4322718))

(assert (= (and b!4322725 (not c!735324)) b!4322720))

(assert (= (and d!1271089 res!1771583) b!4322721))

(assert (= (and d!1271089 (not res!1771582)) b!4322724))

(assert (= (and b!4322724 res!1771580) b!4322722))

(assert (= (and b!4322722 res!1771581) b!4322723))

(declare-fun m!4917171 () Bool)

(assert (=> b!4322718 m!4917171))

(declare-fun m!4917173 () Bool)

(assert (=> b!4322723 m!4917173))

(assert (=> b!4322723 m!4917173))

(declare-fun m!4917175 () Bool)

(assert (=> b!4322723 m!4917175))

(assert (=> b!4322722 m!4917173))

(declare-fun m!4917177 () Bool)

(assert (=> d!1271089 m!4917177))

(assert (=> d!1271089 m!4916005))

(assert (=> b!4322721 m!4916897))

(declare-fun m!4917179 () Bool)

(assert (=> b!4322724 m!4917179))

(assert (=> b!4321556 d!1271089))

(declare-fun d!1271091 () Bool)

(declare-fun res!1771584 () Bool)

(declare-fun e!2689397 () Bool)

(assert (=> d!1271091 (=> res!1771584 e!2689397)))

(assert (=> d!1271091 (= res!1771584 (and ((_ is Cons!48378) lt!1539600) (= (_1!26878 (h!53838 lt!1539600)) key!2048)))))

(assert (=> d!1271091 (= (containsKey!400 lt!1539600 key!2048) e!2689397)))

(declare-fun b!4322726 () Bool)

(declare-fun e!2689398 () Bool)

(assert (=> b!4322726 (= e!2689397 e!2689398)))

(declare-fun res!1771585 () Bool)

(assert (=> b!4322726 (=> (not res!1771585) (not e!2689398))))

(assert (=> b!4322726 (= res!1771585 ((_ is Cons!48378) lt!1539600))))

(declare-fun b!4322727 () Bool)

(assert (=> b!4322727 (= e!2689398 (containsKey!400 (t!355381 lt!1539600) key!2048))))

(assert (= (and d!1271091 (not res!1771584)) b!4322726))

(assert (= (and b!4322726 res!1771585) b!4322727))

(declare-fun m!4917181 () Bool)

(assert (=> b!4322727 m!4917181))

(assert (=> d!1270615 d!1271091))

(assert (=> d!1270615 d!1271063))

(declare-fun d!1271093 () Bool)

(declare-fun res!1771586 () Bool)

(declare-fun e!2689399 () Bool)

(assert (=> d!1271093 (=> res!1771586 e!2689399)))

(assert (=> d!1271093 (= res!1771586 ((_ is Nil!48379) (t!355382 (t!355382 (toList!2554 lt!1539311)))))))

(assert (=> d!1271093 (= (forall!8811 (t!355382 (t!355382 (toList!2554 lt!1539311))) lambda!133834) e!2689399)))

(declare-fun b!4322728 () Bool)

(declare-fun e!2689400 () Bool)

(assert (=> b!4322728 (= e!2689399 e!2689400)))

(declare-fun res!1771587 () Bool)

(assert (=> b!4322728 (=> (not res!1771587) (not e!2689400))))

(assert (=> b!4322728 (= res!1771587 (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (t!355382 (toList!2554 lt!1539311))))))))

(declare-fun b!4322729 () Bool)

(assert (=> b!4322729 (= e!2689400 (forall!8811 (t!355382 (t!355382 (t!355382 (toList!2554 lt!1539311)))) lambda!133834))))

(assert (= (and d!1271093 (not res!1771586)) b!4322728))

(assert (= (and b!4322728 res!1771587) b!4322729))

(declare-fun b_lambda!127333 () Bool)

(assert (=> (not b_lambda!127333) (not b!4322728)))

(declare-fun m!4917183 () Bool)

(assert (=> b!4322728 m!4917183))

(declare-fun m!4917185 () Bool)

(assert (=> b!4322729 m!4917185))

(assert (=> b!4321723 d!1271093))

(declare-fun d!1271095 () Bool)

(assert (=> d!1271095 (dynLambda!20507 lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))

(assert (=> d!1271095 true))

(declare-fun _$7!1417 () Unit!67766)

(assert (=> d!1271095 (= (choose!26403 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133852 (tuple2!47187 lt!1539410 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) _$7!1417)))

(declare-fun b_lambda!127335 () Bool)

(assert (=> (not b_lambda!127335) (not d!1271095)))

(declare-fun bs!606814 () Bool)

(assert (= bs!606814 d!1271095))

(assert (=> bs!606814 m!4915805))

(assert (=> d!1270681 d!1271095))

(declare-fun d!1271097 () Bool)

(declare-fun res!1771588 () Bool)

(declare-fun e!2689401 () Bool)

(assert (=> d!1271097 (=> res!1771588 e!2689401)))

(assert (=> d!1271097 (= res!1771588 ((_ is Nil!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1271097 (= (forall!8811 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lambda!133852) e!2689401)))

(declare-fun b!4322730 () Bool)

(declare-fun e!2689402 () Bool)

(assert (=> b!4322730 (= e!2689401 e!2689402)))

(declare-fun res!1771589 () Bool)

(assert (=> b!4322730 (=> (not res!1771589) (not e!2689402))))

(assert (=> b!4322730 (= res!1771589 (dynLambda!20507 lambda!133852 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(declare-fun b!4322731 () Bool)

(assert (=> b!4322731 (= e!2689402 (forall!8811 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lambda!133852))))

(assert (= (and d!1271097 (not res!1771588)) b!4322730))

(assert (= (and b!4322730 res!1771589) b!4322731))

(declare-fun b_lambda!127337 () Bool)

(assert (=> (not b_lambda!127337) (not b!4322730)))

(declare-fun m!4917187 () Bool)

(assert (=> b!4322730 m!4917187))

(declare-fun m!4917189 () Bool)

(assert (=> b!4322731 m!4917189))

(assert (=> d!1270681 d!1271097))

(declare-fun d!1271099 () Bool)

(assert (=> d!1271099 (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(declare-fun lt!1540485 () Unit!67766)

(assert (=> d!1271099 (= lt!1540485 (choose!26412 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(assert (=> d!1271099 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))

(assert (=> d!1271099 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048) lt!1540485)))

(declare-fun bs!606815 () Bool)

(assert (= bs!606815 d!1271099))

(assert (=> bs!606815 m!4915565))

(assert (=> bs!606815 m!4915565))

(assert (=> bs!606815 m!4915567))

(declare-fun m!4917191 () Bool)

(assert (=> bs!606815 m!4917191))

(assert (=> bs!606815 m!4916269))

(assert (=> b!4321654 d!1271099))

(assert (=> b!4321654 d!1270825))

(assert (=> b!4321654 d!1270827))

(declare-fun d!1271101 () Bool)

(assert (=> d!1271101 (contains!10431 (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 lt!1539420)))) key!2048)))

(declare-fun lt!1540486 () Unit!67766)

(assert (=> d!1271101 (= lt!1540486 (choose!26413 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048))))

(assert (=> d!1271101 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))))))

(assert (=> d!1271101 (= (lemmaInListThenGetKeysListContains!53 (toList!2555 (extractMap!368 (toList!2554 lt!1539420))) key!2048) lt!1540486)))

(declare-fun bs!606816 () Bool)

(assert (= bs!606816 d!1271101))

(assert (=> bs!606816 m!4915577))

(assert (=> bs!606816 m!4915577))

(declare-fun m!4917193 () Bool)

(assert (=> bs!606816 m!4917193))

(declare-fun m!4917195 () Bool)

(assert (=> bs!606816 m!4917195))

(assert (=> bs!606816 m!4916269))

(assert (=> b!4321654 d!1271101))

(declare-fun d!1271103 () Bool)

(declare-fun res!1771590 () Bool)

(declare-fun e!2689403 () Bool)

(assert (=> d!1271103 (=> res!1771590 e!2689403)))

(assert (=> d!1271103 (= res!1771590 (and ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (= (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)))))

(assert (=> d!1271103 (= (containsKey!401 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))) lt!1539310) e!2689403)))

(declare-fun b!4322732 () Bool)

(declare-fun e!2689404 () Bool)

(assert (=> b!4322732 (= e!2689403 e!2689404)))

(declare-fun res!1771591 () Bool)

(assert (=> b!4322732 (=> (not res!1771591) (not e!2689404))))

(assert (=> b!4322732 (= res!1771591 (and (or (not ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (bvsle (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)) ((_ is Cons!48379) (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) (bvslt (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) lt!1539310)))))

(declare-fun b!4322733 () Bool)

(assert (=> b!4322733 (= e!2689404 (containsKey!401 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310))))

(assert (= (and d!1271103 (not res!1771590)) b!4322732))

(assert (= (and b!4322732 res!1771591) b!4322733))

(declare-fun m!4917197 () Bool)

(assert (=> b!4322733 m!4917197))

(assert (=> d!1270685 d!1271103))

(declare-fun d!1271105 () Bool)

(assert (=> d!1271105 (= (apply!11141 (ite c!735078 call!299626 call!299624) lt!1539310) (get!15675 (getValueByKey!297 (toList!2554 (ite c!735078 call!299626 call!299624)) lt!1539310)))))

(declare-fun bs!606817 () Bool)

(assert (= bs!606817 d!1271105))

(declare-fun m!4917199 () Bool)

(assert (=> bs!606817 m!4917199))

(assert (=> bs!606817 m!4917199))

(declare-fun m!4917201 () Bool)

(assert (=> bs!606817 m!4917201))

(assert (=> bm!299620 d!1271105))

(assert (=> b!4321671 d!1270769))

(assert (=> d!1270579 d!1270577))

(declare-fun d!1271107 () Bool)

(assert (=> d!1271107 (= (getValueByKey!297 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) (Some!10299 (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(assert (=> d!1271107 true))

(declare-fun _$23!166 () Unit!67766)

(assert (=> d!1271107 (= (choose!26396 lt!1539364 (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)) (_2!26879 (tuple2!47187 lt!1539310 lt!1539317))) _$23!166)))

(declare-fun bs!606818 () Bool)

(assert (= bs!606818 d!1271107))

(assert (=> bs!606818 m!4915311))

(assert (=> d!1270579 d!1271107))

(declare-fun d!1271109 () Bool)

(declare-fun res!1771592 () Bool)

(declare-fun e!2689405 () Bool)

(assert (=> d!1271109 (=> res!1771592 e!2689405)))

(assert (=> d!1271109 (= res!1771592 (or ((_ is Nil!48379) lt!1539364) ((_ is Nil!48379) (t!355382 lt!1539364))))))

(assert (=> d!1271109 (= (isStrictlySorted!21 lt!1539364) e!2689405)))

(declare-fun b!4322734 () Bool)

(declare-fun e!2689406 () Bool)

(assert (=> b!4322734 (= e!2689405 e!2689406)))

(declare-fun res!1771593 () Bool)

(assert (=> b!4322734 (=> (not res!1771593) (not e!2689406))))

(assert (=> b!4322734 (= res!1771593 (bvslt (_1!26879 (h!53839 lt!1539364)) (_1!26879 (h!53839 (t!355382 lt!1539364)))))))

(declare-fun b!4322735 () Bool)

(assert (=> b!4322735 (= e!2689406 (isStrictlySorted!21 (t!355382 lt!1539364)))))

(assert (= (and d!1271109 (not res!1771592)) b!4322734))

(assert (= (and b!4322734 res!1771593) b!4322735))

(declare-fun m!4917203 () Bool)

(assert (=> b!4322735 m!4917203))

(assert (=> d!1270579 d!1271109))

(declare-fun b!4322736 () Bool)

(declare-fun e!2689407 () Option!10300)

(assert (=> b!4322736 (= e!2689407 (Some!10299 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539362))))))))

(declare-fun b!4322738 () Bool)

(declare-fun e!2689408 () Option!10300)

(assert (=> b!4322738 (= e!2689408 (getValueByKey!297 (t!355382 (t!355382 (toList!2554 lt!1539362))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))

(declare-fun c!735326 () Bool)

(declare-fun d!1271111 () Bool)

(assert (=> d!1271111 (= c!735326 (and ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539362))) (= (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539362)))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317)))))))

(assert (=> d!1271111 (= (getValueByKey!297 (t!355382 (toList!2554 lt!1539362)) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))) e!2689407)))

(declare-fun b!4322739 () Bool)

(assert (=> b!4322739 (= e!2689408 None!10299)))

(declare-fun b!4322737 () Bool)

(assert (=> b!4322737 (= e!2689407 e!2689408)))

(declare-fun c!735327 () Bool)

(assert (=> b!4322737 (= c!735327 (and ((_ is Cons!48379) (t!355382 (toList!2554 lt!1539362))) (not (= (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539362)))) (_1!26879 (tuple2!47187 lt!1539310 lt!1539317))))))))

(assert (= (and d!1271111 c!735326) b!4322736))

(assert (= (and d!1271111 (not c!735326)) b!4322737))

(assert (= (and b!4322737 c!735327) b!4322738))

(assert (= (and b!4322737 (not c!735327)) b!4322739))

(declare-fun m!4917205 () Bool)

(assert (=> b!4322738 m!4917205))

(assert (=> b!4321707 d!1271111))

(declare-fun d!1271113 () Bool)

(assert (=> d!1271113 (= (isEmpty!28119 (getPair!162 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048)) (not ((_ is Some!10300) (getPair!162 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410) key!2048))))))

(assert (=> d!1270617 d!1271113))

(assert (=> b!4321735 d!1270839))

(assert (=> b!4321735 d!1270815))

(assert (=> d!1270571 d!1270761))

(declare-fun d!1271115 () Bool)

(declare-fun e!2689413 () Bool)

(assert (=> d!1271115 e!2689413))

(declare-fun res!1771596 () Bool)

(assert (=> d!1271115 (=> (not res!1771596) (not e!2689413))))

(declare-fun lt!1540491 () (_ BitVec 32))

(assert (=> d!1271115 (= res!1771596 (validMask!0 lt!1540491))))

(declare-datatypes ((tuple2!47194 0))(
  ( (tuple2!47195 (_1!26884 Unit!67766) (_2!26884 (_ BitVec 32))) )
))
(declare-fun e!2689414 () tuple2!47194)

(assert (=> d!1271115 (= lt!1540491 (_2!26884 e!2689414))))

(declare-fun c!735330 () Bool)

(declare-fun lt!1540492 () tuple2!47194)

(assert (=> d!1271115 (= c!735330 (and (bvsgt (_2!26884 lt!1540492) #b00000000000000000000000000001000) (bvslt (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (bvlshr (_2!26884 lt!1540492) #b00000000000000000000000000000011))))))

(declare-fun Unit!67847 () Unit!67766)

(declare-fun Unit!67848 () Unit!67766)

(assert (=> d!1271115 (= lt!1540492 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))) (tuple2!47195 Unit!67847 (bvand (bvadd (bvshl (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!47195 Unit!67848 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> d!1271115 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))

(assert (=> d!1271115 (= (computeNewMask!13 (v!42753 (underlying!9736 thiss!42308)) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308)))))) lt!1540491)))

(declare-fun b!4322746 () Bool)

(declare-fun computeNewMaskWhile!3 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!47194)

(assert (=> b!4322746 (= e!2689414 (computeNewMaskWhile!3 (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_vacant!4815 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (mask!13375 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (_2!26884 lt!1540492)))))

(declare-fun b!4322747 () Bool)

(declare-fun Unit!67849 () Unit!67766)

(assert (=> b!4322747 (= e!2689414 (tuple2!47195 Unit!67849 (_2!26884 lt!1540492)))))

(declare-fun b!4322748 () Bool)

(assert (=> b!4322748 (= e!2689413 (bvsle (_size!9550 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) (bvadd lt!1540491 #b00000000000000000000000000000001)))))

(assert (= (and d!1271115 c!735330) b!4322746))

(assert (= (and d!1271115 (not c!735330)) b!4322747))

(assert (= (and d!1271115 res!1771596) b!4322748))

(declare-fun m!4917207 () Bool)

(assert (=> d!1271115 m!4917207))

(assert (=> d!1271115 m!4916013))

(declare-fun m!4917209 () Bool)

(assert (=> b!4322746 m!4917209))

(assert (=> d!1270571 d!1271115))

(assert (=> d!1270571 d!1270587))

(declare-fun b!4322749 () Bool)

(declare-fun e!2689418 () Option!10301)

(assert (=> b!4322749 (= e!2689418 (getPair!162 (t!355381 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) key!2048))))

(declare-fun b!4322750 () Bool)

(declare-fun e!2689415 () Option!10301)

(assert (=> b!4322750 (= e!2689415 (Some!10300 (h!53838 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))))

(declare-fun b!4322751 () Bool)

(assert (=> b!4322751 (= e!2689418 None!10300)))

(declare-fun e!2689417 () Bool)

(declare-fun b!4322752 () Bool)

(assert (=> b!4322752 (= e!2689417 (not (containsKey!400 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) key!2048)))))

(declare-fun b!4322754 () Bool)

(declare-fun lt!1540493 () Option!10301)

(declare-fun e!2689416 () Bool)

(assert (=> b!4322754 (= e!2689416 (contains!10430 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) (get!15676 lt!1540493)))))

(declare-fun b!4322755 () Bool)

(declare-fun e!2689419 () Bool)

(assert (=> b!4322755 (= e!2689419 e!2689416)))

(declare-fun res!1771597 () Bool)

(assert (=> b!4322755 (=> (not res!1771597) (not e!2689416))))

(assert (=> b!4322755 (= res!1771597 (isDefined!7601 lt!1540493))))

(declare-fun b!4322756 () Bool)

(assert (=> b!4322756 (= e!2689415 e!2689418)))

(declare-fun c!735331 () Bool)

(assert (=> b!4322756 (= c!735331 ((_ is Cons!48378) (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))))))

(declare-fun b!4322753 () Bool)

(declare-fun res!1771598 () Bool)

(assert (=> b!4322753 (=> (not res!1771598) (not e!2689416))))

(assert (=> b!4322753 (= res!1771598 (= (_1!26878 (get!15676 lt!1540493)) key!2048))))

(declare-fun d!1271117 () Bool)

(assert (=> d!1271117 e!2689419))

(declare-fun res!1771599 () Bool)

(assert (=> d!1271117 (=> res!1771599 e!2689419)))

(assert (=> d!1271117 (= res!1771599 e!2689417)))

(declare-fun res!1771600 () Bool)

(assert (=> d!1271117 (=> (not res!1771600) (not e!2689417))))

(assert (=> d!1271117 (= res!1771600 (isEmpty!28119 lt!1540493))))

(assert (=> d!1271117 (= lt!1540493 e!2689415)))

(declare-fun c!735332 () Bool)

(assert (=> d!1271117 (= c!735332 (and ((_ is Cons!48378) (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410))) (= (_1!26878 (h!53838 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))) key!2048)))))

(assert (=> d!1271117 (noDuplicateKeys!262 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)))))

(assert (=> d!1271117 (= (getPair!162 (t!355381 (apply!11139 (v!42753 (underlying!9736 thiss!42308)) lt!1539410)) key!2048) lt!1540493)))

(assert (= (and d!1271117 c!735332) b!4322750))

(assert (= (and d!1271117 (not c!735332)) b!4322756))

(assert (= (and b!4322756 c!735331) b!4322749))

(assert (= (and b!4322756 (not c!735331)) b!4322751))

(assert (= (and d!1271117 res!1771600) b!4322752))

(assert (= (and d!1271117 (not res!1771599)) b!4322755))

(assert (= (and b!4322755 res!1771597) b!4322753))

(assert (= (and b!4322753 res!1771598) b!4322754))

(declare-fun m!4917211 () Bool)

(assert (=> b!4322749 m!4917211))

(declare-fun m!4917213 () Bool)

(assert (=> b!4322754 m!4917213))

(assert (=> b!4322754 m!4917213))

(declare-fun m!4917215 () Bool)

(assert (=> b!4322754 m!4917215))

(assert (=> b!4322753 m!4917213))

(declare-fun m!4917217 () Bool)

(assert (=> d!1271117 m!4917217))

(assert (=> d!1271117 m!4917167))

(assert (=> b!4322752 m!4916911))

(declare-fun m!4917219 () Bool)

(assert (=> b!4322755 m!4917219))

(assert (=> b!4321667 d!1271117))

(declare-fun d!1271119 () Bool)

(declare-fun res!1771601 () Bool)

(declare-fun e!2689420 () Bool)

(assert (=> d!1271119 (=> res!1771601 e!2689420)))

(assert (=> d!1271119 (= res!1771601 (not ((_ is Cons!48378) (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))))))

(assert (=> d!1271119 (= (noDuplicateKeys!262 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311))))) e!2689420)))

(declare-fun b!4322757 () Bool)

(declare-fun e!2689421 () Bool)

(assert (=> b!4322757 (= e!2689420 e!2689421)))

(declare-fun res!1771602 () Bool)

(assert (=> b!4322757 (=> (not res!1771602) (not e!2689421))))

(assert (=> b!4322757 (= res!1771602 (not (containsKey!400 (t!355381 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311))))) (_1!26878 (h!53838 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))))))))

(declare-fun b!4322758 () Bool)

(assert (=> b!4322758 (= e!2689421 (noDuplicateKeys!262 (t!355381 (t!355381 (_2!26879 (h!53839 (toList!2554 lt!1539311)))))))))

(assert (= (and d!1271119 (not res!1771601)) b!4322757))

(assert (= (and b!4322757 res!1771602) b!4322758))

(declare-fun m!4917221 () Bool)

(assert (=> b!4322757 m!4917221))

(declare-fun m!4917223 () Bool)

(assert (=> b!4322758 m!4917223))

(assert (=> b!4321620 d!1271119))

(declare-fun d!1271121 () Bool)

(assert (=> d!1271121 (isDefined!7603 (getValueByKey!298 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(declare-fun lt!1540494 () Unit!67766)

(assert (=> d!1271121 (= lt!1540494 (choose!26412 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(assert (=> d!1271121 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271121 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!217 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048) lt!1540494)))

(declare-fun bs!606819 () Bool)

(assert (= bs!606819 d!1271121))

(assert (=> bs!606819 m!4915755))

(assert (=> bs!606819 m!4915755))

(assert (=> bs!606819 m!4915757))

(declare-fun m!4917225 () Bool)

(assert (=> bs!606819 m!4917225))

(assert (=> bs!606819 m!4915961))

(assert (=> b!4321746 d!1271121))

(assert (=> b!4321746 d!1270875))

(assert (=> b!4321746 d!1270877))

(declare-fun d!1271123 () Bool)

(assert (=> d!1271123 (contains!10431 (getKeysList!56 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) key!2048)))

(declare-fun lt!1540495 () Unit!67766)

(assert (=> d!1271123 (= lt!1540495 (choose!26413 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048))))

(assert (=> d!1271123 (invariantList!601 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))

(assert (=> d!1271123 (= (lemmaInListThenGetKeysListContains!53 (toList!2555 (extractMap!368 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) key!2048) lt!1540495)))

(declare-fun bs!606820 () Bool)

(assert (= bs!606820 d!1271123))

(assert (=> bs!606820 m!4915767))

(assert (=> bs!606820 m!4915767))

(declare-fun m!4917227 () Bool)

(assert (=> bs!606820 m!4917227))

(declare-fun m!4917229 () Bool)

(assert (=> bs!606820 m!4917229))

(assert (=> bs!606820 m!4915961))

(assert (=> b!4321746 d!1271123))

(declare-fun d!1271125 () Bool)

(declare-fun res!1771603 () Bool)

(declare-fun e!2689422 () Bool)

(assert (=> d!1271125 (=> (not res!1771603) (not e!2689422))))

(assert (=> d!1271125 (= res!1771603 (simpleValid!9 (_2!26881 lt!1539503)))))

(assert (=> d!1271125 (= (valid!3765 (_2!26881 lt!1539503)) e!2689422)))

(declare-fun b!4322759 () Bool)

(declare-fun res!1771604 () Bool)

(assert (=> b!4322759 (=> (not res!1771604) (not e!2689422))))

(assert (=> b!4322759 (= res!1771604 (= (arrayCountValidKeys!0 (_keys!5066 (_2!26881 lt!1539503)) #b00000000000000000000000000000000 (size!35730 (_keys!5066 (_2!26881 lt!1539503)))) (_size!9550 (_2!26881 lt!1539503))))))

(declare-fun b!4322760 () Bool)

(declare-fun res!1771605 () Bool)

(assert (=> b!4322760 (=> (not res!1771605) (not e!2689422))))

(assert (=> b!4322760 (= res!1771605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5066 (_2!26881 lt!1539503)) (mask!13375 (_2!26881 lt!1539503))))))

(declare-fun b!4322761 () Bool)

(assert (=> b!4322761 (= e!2689422 (arrayNoDuplicates!0 (_keys!5066 (_2!26881 lt!1539503)) #b00000000000000000000000000000000 Nil!48381))))

(assert (= (and d!1271125 res!1771603) b!4322759))

(assert (= (and b!4322759 res!1771604) b!4322760))

(assert (= (and b!4322760 res!1771605) b!4322761))

(declare-fun m!4917231 () Bool)

(assert (=> d!1271125 m!4917231))

(declare-fun m!4917233 () Bool)

(assert (=> b!4322759 m!4917233))

(declare-fun m!4917235 () Bool)

(assert (=> b!4322760 m!4917235))

(declare-fun m!4917237 () Bool)

(assert (=> b!4322761 m!4917237))

(assert (=> d!1270557 d!1271125))

(declare-fun d!1271127 () Bool)

(declare-fun res!1771606 () Bool)

(declare-fun e!2689423 () Bool)

(assert (=> d!1271127 (=> (not res!1771606) (not e!2689423))))

(assert (=> d!1271127 (= res!1771606 (simpleValid!9 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1271127 (= (valid!3765 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) e!2689423)))

(declare-fun b!4322762 () Bool)

(declare-fun res!1771607 () Bool)

(assert (=> b!4322762 (=> (not res!1771607) (not e!2689423))))

(assert (=> b!4322762 (= res!1771607 (= (arrayCountValidKeys!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (size!35730 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))) (_size!9550 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322763 () Bool)

(declare-fun res!1771608 () Bool)

(assert (=> b!4322763 (=> (not res!1771608) (not e!2689423))))

(assert (=> b!4322763 (= res!1771608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun b!4322764 () Bool)

(assert (=> b!4322764 (= e!2689423 (arrayNoDuplicates!0 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 Nil!48381))))

(assert (= (and d!1271127 res!1771606) b!4322762))

(assert (= (and b!4322762 res!1771607) b!4322763))

(assert (= (and b!4322763 res!1771608) b!4322764))

(declare-fun m!4917239 () Bool)

(assert (=> d!1271127 m!4917239))

(assert (=> b!4322762 m!4916151))

(declare-fun m!4917241 () Bool)

(assert (=> b!4322763 m!4917241))

(declare-fun m!4917243 () Bool)

(assert (=> b!4322764 m!4917243))

(assert (=> d!1270557 d!1271127))

(declare-fun d!1271129 () Bool)

(assert (=> d!1271129 (= (+!330 (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) (tuple2!47187 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1539317)) (getCurrentListMap!24 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539509 lt!1539317 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) #b00000000000000000000000000000000 (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(declare-fun lt!1540498 () Unit!67766)

(declare-fun choose!26415 (array!17232 array!17234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48502 List!48502 List!48502 Int) Unit!67766)

(assert (=> d!1271129 (= lt!1540498 (choose!26415 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539509 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))))))

(assert (=> d!1271129 (validMask!0 (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))))))

(assert (=> d!1271129 (= (lemmaChangeZeroKeyThenAddPairToListMap!11 (_keys!5066 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (_values!5044 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (mask!13375 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (extraKeys!5010 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539509 (zeroValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) lt!1539317 (minValue!5021 (v!42752 (underlying!9735 (_2!26880 lt!1539329)))) (defaultEntry!5148 (v!42752 (underlying!9735 (_2!26880 lt!1539329))))) lt!1540498)))

(declare-fun bs!606821 () Bool)

(assert (= bs!606821 d!1271129))

(declare-fun m!4917245 () Bool)

(assert (=> bs!606821 m!4917245))

(assert (=> bs!606821 m!4915937))

(declare-fun m!4917247 () Bool)

(assert (=> bs!606821 m!4917247))

(assert (=> bs!606821 m!4915937))

(assert (=> bs!606821 m!4915875))

(declare-fun m!4917249 () Bool)

(assert (=> bs!606821 m!4917249))

(assert (=> b!4321485 d!1271129))

(declare-fun d!1271131 () Bool)

(declare-fun e!2689424 () Bool)

(assert (=> d!1271131 e!2689424))

(declare-fun res!1771609 () Bool)

(assert (=> d!1271131 (=> res!1771609 e!2689424)))

(declare-fun lt!1540501 () Bool)

(assert (=> d!1271131 (= res!1771609 (not lt!1540501))))

(declare-fun lt!1540502 () Bool)

(assert (=> d!1271131 (= lt!1540501 lt!1540502)))

(declare-fun lt!1540499 () Unit!67766)

(declare-fun e!2689425 () Unit!67766)

(assert (=> d!1271131 (= lt!1540499 e!2689425)))

(declare-fun c!735333 () Bool)

(assert (=> d!1271131 (= c!735333 lt!1540502)))

(assert (=> d!1271131 (= lt!1540502 (containsKey!401 (toList!2554 call!299587) lt!1539310))))

(assert (=> d!1271131 (= (contains!10426 call!299587 lt!1539310) lt!1540501)))

(declare-fun b!4322765 () Bool)

(declare-fun lt!1540500 () Unit!67766)

(assert (=> b!4322765 (= e!2689425 lt!1540500)))

(assert (=> b!4322765 (= lt!1540500 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!2554 call!299587) lt!1539310))))

(assert (=> b!4322765 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299587) lt!1539310))))

(declare-fun b!4322766 () Bool)

(declare-fun Unit!67850 () Unit!67766)

(assert (=> b!4322766 (= e!2689425 Unit!67850)))

(declare-fun b!4322767 () Bool)

(assert (=> b!4322767 (= e!2689424 (isDefined!7602 (getValueByKey!297 (toList!2554 call!299587) lt!1539310)))))

(assert (= (and d!1271131 c!735333) b!4322765))

(assert (= (and d!1271131 (not c!735333)) b!4322766))

(assert (= (and d!1271131 (not res!1771609)) b!4322767))

(declare-fun m!4917251 () Bool)

(assert (=> d!1271131 m!4917251))

(declare-fun m!4917253 () Bool)

(assert (=> b!4322765 m!4917253))

(declare-fun m!4917255 () Bool)

(assert (=> b!4322765 m!4917255))

(assert (=> b!4322765 m!4917255))

(declare-fun m!4917257 () Bool)

(assert (=> b!4322765 m!4917257))

(assert (=> b!4322767 m!4917255))

(assert (=> b!4322767 m!4917255))

(assert (=> b!4322767 m!4917257))

(assert (=> b!4321472 d!1271131))

(declare-fun b!4322768 () Bool)

(declare-fun e!2689426 () Option!10300)

(assert (=> b!4322768 (= e!2689426 (Some!10299 (_2!26879 (h!53839 (t!355382 lt!1539408)))))))

(declare-fun b!4322770 () Bool)

(declare-fun e!2689427 () Option!10300)

(assert (=> b!4322770 (= e!2689427 (getValueByKey!297 (t!355382 (t!355382 lt!1539408)) lt!1539410))))

(declare-fun d!1271133 () Bool)

(declare-fun c!735334 () Bool)

(assert (=> d!1271133 (= c!735334 (and ((_ is Cons!48379) (t!355382 lt!1539408)) (= (_1!26879 (h!53839 (t!355382 lt!1539408))) lt!1539410)))))

(assert (=> d!1271133 (= (getValueByKey!297 (t!355382 lt!1539408) lt!1539410) e!2689426)))

(declare-fun b!4322771 () Bool)

(assert (=> b!4322771 (= e!2689427 None!10299)))

(declare-fun b!4322769 () Bool)

(assert (=> b!4322769 (= e!2689426 e!2689427)))

(declare-fun c!735335 () Bool)

(assert (=> b!4322769 (= c!735335 (and ((_ is Cons!48379) (t!355382 lt!1539408)) (not (= (_1!26879 (h!53839 (t!355382 lt!1539408))) lt!1539410))))))

(assert (= (and d!1271133 c!735334) b!4322768))

(assert (= (and d!1271133 (not c!735334)) b!4322769))

(assert (= (and b!4322769 c!735335) b!4322770))

(assert (= (and b!4322769 (not c!735335)) b!4322771))

(declare-fun m!4917259 () Bool)

(assert (=> b!4322770 m!4917259))

(assert (=> b!4321700 d!1271133))

(assert (=> d!1270665 d!1270759))

(declare-fun e!2689428 () Bool)

(declare-fun b!4322772 () Bool)

(declare-fun tp!1326966 () Bool)

(assert (=> b!4322772 (= e!2689428 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326966))))

(assert (=> b!4321853 (= tp!1326960 e!2689428)))

(assert (= (and b!4321853 ((_ is Cons!48378) (t!355381 mapValue!21190))) b!4322772))

(declare-fun e!2689430 () Bool)

(declare-fun b!4322774 () Bool)

(declare-fun tp!1326968 () Bool)

(assert (=> b!4322774 (= e!2689430 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326968))))

(declare-fun mapIsEmpty!21191 () Bool)

(declare-fun mapRes!21191 () Bool)

(assert (=> mapIsEmpty!21191 mapRes!21191))

(declare-fun condMapEmpty!21191 () Bool)

(declare-fun mapDefault!21191 () List!48502)

(assert (=> mapNonEmpty!21190 (= condMapEmpty!21191 (= mapRest!21190 ((as const (Array (_ BitVec 32) List!48502)) mapDefault!21191)))))

(assert (=> mapNonEmpty!21190 (= tp!1326962 (and e!2689430 mapRes!21191))))

(declare-fun tp!1326967 () Bool)

(declare-fun b!4322773 () Bool)

(declare-fun e!2689429 () Bool)

(assert (=> b!4322773 (= e!2689429 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326967))))

(declare-fun mapNonEmpty!21191 () Bool)

(declare-fun tp!1326969 () Bool)

(assert (=> mapNonEmpty!21191 (= mapRes!21191 (and tp!1326969 e!2689429))))

(declare-fun mapRest!21191 () (Array (_ BitVec 32) List!48502))

(declare-fun mapKey!21191 () (_ BitVec 32))

(declare-fun mapValue!21191 () List!48502)

(assert (=> mapNonEmpty!21191 (= mapRest!21190 (store mapRest!21191 mapKey!21191 mapValue!21191))))

(assert (= (and mapNonEmpty!21190 condMapEmpty!21191) mapIsEmpty!21191))

(assert (= (and mapNonEmpty!21190 (not condMapEmpty!21191)) mapNonEmpty!21191))

(assert (= (and mapNonEmpty!21191 ((_ is Cons!48378) mapValue!21191)) b!4322773))

(assert (= (and mapNonEmpty!21190 ((_ is Cons!48378) mapDefault!21191)) b!4322774))

(declare-fun m!4917261 () Bool)

(assert (=> mapNonEmpty!21191 m!4917261))

(declare-fun e!2689431 () Bool)

(declare-fun b!4322775 () Bool)

(declare-fun tp!1326970 () Bool)

(assert (=> b!4322775 (= e!2689431 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326970))))

(assert (=> b!4321854 (= tp!1326961 e!2689431)))

(assert (= (and b!4321854 ((_ is Cons!48378) (t!355381 mapDefault!21190))) b!4322775))

(declare-fun e!2689432 () Bool)

(declare-fun b!4322776 () Bool)

(declare-fun tp!1326971 () Bool)

(assert (=> b!4322776 (= e!2689432 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326971))))

(assert (=> b!4321850 (= tp!1326957 e!2689432)))

(assert (= (and b!4321850 ((_ is Cons!48378) (t!355381 (t!355381 (zeroValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))) b!4322776))

(declare-fun b!4322777 () Bool)

(declare-fun tp!1326972 () Bool)

(declare-fun e!2689433 () Bool)

(assert (=> b!4322777 (= e!2689433 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326972))))

(assert (=> b!4321857 (= tp!1326965 e!2689433)))

(assert (= (and b!4321857 ((_ is Cons!48378) (t!355381 (t!355381 (minValue!5021 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))))))) b!4322777))

(declare-fun tp!1326973 () Bool)

(declare-fun e!2689434 () Bool)

(declare-fun b!4322778 () Bool)

(assert (=> b!4322778 (= e!2689434 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326973))))

(assert (=> tb!257367 (= result!314884 e!2689434)))

(assert (= (and tb!257367 ((_ is Cons!48378) (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539410))) b!4322778))

(declare-fun tp!1326974 () Bool)

(declare-fun e!2689435 () Bool)

(declare-fun b!4322779 () Bool)

(assert (=> b!4322779 (= e!2689435 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326974))))

(assert (=> b!4321852 (= tp!1326959 e!2689435)))

(assert (= (and b!4321852 ((_ is Cons!48378) (t!355381 (t!355381 mapValue!21189)))) b!4322779))

(declare-fun e!2689436 () Bool)

(declare-fun b!4322780 () Bool)

(declare-fun tp!1326975 () Bool)

(assert (=> b!4322780 (= e!2689436 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326975))))

(assert (=> b!4321849 (= tp!1326956 e!2689436)))

(assert (= (and b!4321849 ((_ is Cons!48378) (t!355381 (t!355381 mapDefault!21189)))) b!4322780))

(declare-fun e!2689437 () Bool)

(declare-fun tp!1326976 () Bool)

(declare-fun b!4322781 () Bool)

(assert (=> b!4322781 (= e!2689437 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326976))))

(assert (=> b!4321856 (= tp!1326964 e!2689437)))

(assert (= (and b!4321856 ((_ is Cons!48378) (t!355381 (dynLambda!20506 (defaultEntry!5148 (v!42752 (underlying!9735 (v!42753 (underlying!9736 thiss!42308))))) lt!1539310)))) b!4322781))

(declare-fun e!2689438 () Bool)

(declare-fun tp!1326977 () Bool)

(declare-fun b!4322782 () Bool)

(assert (=> b!4322782 (= e!2689438 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326977))))

(assert (=> b!4321851 (= tp!1326958 e!2689438)))

(assert (= (and b!4321851 ((_ is Cons!48378) (t!355381 (t!355381 mapDefault!21186)))) b!4322782))

(declare-fun b!4322783 () Bool)

(declare-fun e!2689439 () Bool)

(declare-fun tp!1326978 () Bool)

(assert (=> b!4322783 (= e!2689439 (and tp_is_empty!24109 tp_is_empty!24111 tp!1326978))))

(assert (=> b!4321855 (= tp!1326963 e!2689439)))

(assert (= (and b!4321855 ((_ is Cons!48378) (t!355381 (t!355381 mapValue!21186)))) b!4322783))

(declare-fun b_lambda!127339 () Bool)

(assert (= b_lambda!127337 (or b!4321343 b_lambda!127339)))

(declare-fun bs!606822 () Bool)

(declare-fun d!1271135 () Bool)

(assert (= bs!606822 (and d!1271135 b!4321343)))

(assert (=> bs!606822 (= (dynLambda!20507 lambda!133852 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> bs!606822 m!4915859))

(assert (=> b!4322730 d!1271135))

(declare-fun b_lambda!127341 () Bool)

(assert (= b_lambda!127301 (or d!1270603 b_lambda!127341)))

(declare-fun bs!606823 () Bool)

(declare-fun d!1271137 () Bool)

(assert (= bs!606823 (and d!1271137 d!1270603)))

(assert (=> bs!606823 (= (dynLambda!20507 lambda!133859 (h!53839 (toList!2554 lt!1539353))) (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 lt!1539353))) (_1!26879 (h!53839 (toList!2554 lt!1539353))) (hashF!6919 thiss!42308)))))

(declare-fun m!4917263 () Bool)

(assert (=> bs!606823 m!4917263))

(assert (=> b!4322220 d!1271137))

(declare-fun b_lambda!127343 () Bool)

(assert (= b_lambda!127317 (or d!1270609 b_lambda!127343)))

(declare-fun bs!606824 () Bool)

(declare-fun d!1271139 () Bool)

(assert (= bs!606824 (and d!1271139 d!1270609)))

(assert (=> bs!606824 (= (dynLambda!20507 lambda!133865 (h!53839 (toList!2554 lt!1539420))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539420)))))))

(assert (=> bs!606824 m!4916781))

(assert (=> b!4322507 d!1271139))

(declare-fun b_lambda!127345 () Bool)

(assert (= b_lambda!127315 (or d!1270547 b_lambda!127345)))

(declare-fun bs!606825 () Bool)

(declare-fun d!1271141 () Bool)

(assert (= bs!606825 (and d!1271141 d!1270547)))

(assert (=> bs!606825 (= (dynLambda!20507 lambda!133855 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (allKeysSameHash!244 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (hashF!6919 thiss!42308)))))

(declare-fun m!4917265 () Bool)

(assert (=> bs!606825 m!4917265))

(assert (=> b!4322469 d!1271141))

(declare-fun b_lambda!127347 () Bool)

(assert (= b_lambda!127297 (or d!1270661 b_lambda!127347)))

(declare-fun bs!606826 () Bool)

(declare-fun d!1271143 () Bool)

(assert (= bs!606826 (and d!1271143 d!1270661)))

(assert (=> bs!606826 (= (dynLambda!20507 lambda!133872 (h!53839 (toList!2554 lt!1539421))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539421)))))))

(declare-fun m!4917267 () Bool)

(assert (=> bs!606826 m!4917267))

(assert (=> b!4322085 d!1271143))

(declare-fun b_lambda!127349 () Bool)

(assert (= b_lambda!127309 (or d!1270517 b_lambda!127349)))

(declare-fun bs!606827 () Bool)

(declare-fun d!1271145 () Bool)

(assert (= bs!606827 (and d!1271145 d!1270517)))

(assert (=> bs!606827 (= (dynLambda!20508 lambda!133838 (h!53838 (t!355381 lt!1539320))) (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 (t!355381 lt!1539320)))) lt!1539310))))

(declare-fun m!4917269 () Bool)

(assert (=> bs!606827 m!4917269))

(assert (=> b!4322378 d!1271145))

(declare-fun b_lambda!127351 () Bool)

(assert (= b_lambda!127321 (or (and b!4321235 b_free!128971) b_lambda!127351)))

(declare-fun b_lambda!127353 () Bool)

(assert (= b_lambda!127329 (or d!1270549 b_lambda!127353)))

(declare-fun bs!606828 () Bool)

(declare-fun d!1271147 () Bool)

(assert (= bs!606828 (and d!1271147 d!1270549)))

(assert (=> bs!606828 (= (dynLambda!20508 lambda!133856 (h!53838 (t!355381 lt!1539317))) (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 (t!355381 lt!1539317)))) lt!1539310))))

(declare-fun m!4917271 () Bool)

(assert (=> bs!606828 m!4917271))

(assert (=> b!4322623 d!1271147))

(declare-fun b_lambda!127355 () Bool)

(assert (= b_lambda!127313 (or d!1270551 b_lambda!127355)))

(declare-fun bs!606829 () Bool)

(declare-fun d!1271149 () Bool)

(assert (= bs!606829 (and d!1271149 d!1270551)))

(assert (=> bs!606829 (= (dynLambda!20507 lambda!133857 (h!53839 (t!355382 (toList!2554 lt!1539314)))) (allKeysSameHash!244 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539314)))) (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539314)))) (hashF!6919 thiss!42308)))))

(declare-fun m!4917273 () Bool)

(assert (=> bs!606829 m!4917273))

(assert (=> b!4322461 d!1271149))

(declare-fun b_lambda!127357 () Bool)

(assert (= b_lambda!127335 (or b!4321343 b_lambda!127357)))

(assert (=> d!1271095 d!1270699))

(declare-fun b_lambda!127359 () Bool)

(assert (= b_lambda!127319 (or (and b!4321235 b_free!128971) b_lambda!127359)))

(declare-fun b_lambda!127361 () Bool)

(assert (= b_lambda!127295 (or (and b!4321235 b_free!128971) b_lambda!127361)))

(declare-fun b_lambda!127363 () Bool)

(assert (= b_lambda!127331 (or d!1270515 b_lambda!127363)))

(declare-fun bs!606830 () Bool)

(declare-fun d!1271151 () Bool)

(assert (= bs!606830 (and d!1271151 d!1270515)))

(assert (=> bs!606830 (= (dynLambda!20508 lambda!133837 (h!53838 (t!355381 (removePairForKey!267 lt!1539320 key!2048)))) (= (hash!1175 (hashF!6919 thiss!42308) (_1!26878 (h!53838 (t!355381 (removePairForKey!267 lt!1539320 key!2048))))) lt!1539310))))

(declare-fun m!4917275 () Bool)

(assert (=> bs!606830 m!4917275))

(assert (=> b!4322702 d!1271151))

(declare-fun b_lambda!127365 () Bool)

(assert (= b_lambda!127299 (or d!1270607 b_lambda!127365)))

(declare-fun bs!606831 () Bool)

(declare-fun d!1271153 () Bool)

(assert (= bs!606831 (and d!1271153 d!1270607)))

(assert (=> bs!606831 (= (dynLambda!20507 lambda!133862 (h!53839 (toList!2554 lt!1539420))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539420)))))))

(assert (=> bs!606831 m!4916781))

(assert (=> b!4322160 d!1271153))

(declare-fun b_lambda!127367 () Bool)

(assert (= b_lambda!127305 (or d!1270529 b_lambda!127367)))

(declare-fun bs!606832 () Bool)

(declare-fun d!1271155 () Bool)

(assert (= bs!606832 (and d!1271155 d!1270529)))

(assert (=> bs!606832 (= (dynLambda!20507 lambda!133846 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311))))))))

(assert (=> bs!606832 m!4915849))

(assert (=> b!4322285 d!1271155))

(declare-fun b_lambda!127369 () Bool)

(assert (= b_lambda!127307 (or d!1270519 b_lambda!127369)))

(declare-fun bs!606833 () Bool)

(declare-fun d!1271157 () Bool)

(assert (= bs!606833 (and d!1271157 d!1270519)))

(assert (=> bs!606833 (= (dynLambda!20507 lambda!133841 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (allKeysSameHash!244 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (_1!26879 (h!53839 (t!355382 (toList!2554 lt!1539311)))) (hashF!6919 thiss!42308)))))

(assert (=> bs!606833 m!4917265))

(assert (=> b!4322341 d!1271157))

(declare-fun b_lambda!127371 () Bool)

(assert (= b_lambda!127311 (or d!1270595 b_lambda!127371)))

(declare-fun bs!606834 () Bool)

(declare-fun d!1271159 () Bool)

(assert (= bs!606834 (and d!1271159 d!1270595)))

(assert (=> bs!606834 (= (dynLambda!20507 lambda!133858 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (allKeysSameHash!244 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (_1!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (hashF!6919 thiss!42308)))))

(declare-fun m!4917277 () Bool)

(assert (=> bs!606834 m!4917277))

(assert (=> b!4322380 d!1271159))

(declare-fun b_lambda!127373 () Bool)

(assert (= b_lambda!127333 (or b!4321230 b_lambda!127373)))

(declare-fun bs!606835 () Bool)

(declare-fun d!1271161 () Bool)

(assert (= bs!606835 (and d!1271161 b!4321230)))

(assert (=> bs!606835 (= (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (t!355382 (toList!2554 lt!1539311))))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (t!355382 (toList!2554 lt!1539311)))))))))

(declare-fun m!4917279 () Bool)

(assert (=> bs!606835 m!4917279))

(assert (=> b!4322728 d!1271161))

(declare-fun b_lambda!127375 () Bool)

(assert (= b_lambda!127327 (or d!1270653 b_lambda!127375)))

(declare-fun bs!606836 () Bool)

(declare-fun d!1271163 () Bool)

(assert (= bs!606836 (and d!1271163 d!1270653)))

(assert (=> bs!606836 (= (dynLambda!20507 lambda!133869 (h!53839 (toList!2554 lt!1539622))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 lt!1539622)))))))

(declare-fun m!4917281 () Bool)

(assert (=> bs!606836 m!4917281))

(assert (=> b!4322569 d!1271163))

(declare-fun b_lambda!127377 () Bool)

(assert (= b_lambda!127323 (or (and b!4321235 b_free!128971) b_lambda!127377)))

(declare-fun b_lambda!127379 () Bool)

(assert (= b_lambda!127325 (or d!1270529 b_lambda!127379)))

(declare-fun bs!606837 () Bool)

(declare-fun d!1271165 () Bool)

(assert (= bs!606837 (and d!1271165 d!1270529)))

(assert (=> bs!606837 (= (dynLambda!20507 lambda!133846 (h!53839 (t!355382 (toList!2554 lt!1539353)))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 lt!1539353))))))))

(declare-fun m!4917283 () Bool)

(assert (=> bs!606837 m!4917283))

(assert (=> b!4322539 d!1271165))

(declare-fun b_lambda!127381 () Bool)

(assert (= b_lambda!127291 (or b!4321230 b_lambda!127381)))

(declare-fun bs!606838 () Bool)

(declare-fun d!1271167 () Bool)

(assert (= bs!606838 (and d!1271167 b!4321230)))

(assert (=> bs!606838 (= (dynLambda!20507 lambda!133834 (h!53839 (t!355382 (t!355382 (toList!2554 lt!1539314))))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (t!355382 (toList!2554 lt!1539314)))))))))

(declare-fun m!4917285 () Bool)

(assert (=> bs!606838 m!4917285))

(assert (=> b!4321858 d!1271167))

(declare-fun b_lambda!127383 () Bool)

(assert (= b_lambda!127303 (or d!1270613 b_lambda!127383)))

(declare-fun bs!606839 () Bool)

(declare-fun d!1271169 () Bool)

(assert (= bs!606839 (and d!1271169 d!1270613)))

(assert (=> bs!606839 (= (dynLambda!20507 lambda!133866 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))) (noDuplicateKeys!262 (_2!26879 (h!53839 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))))))

(assert (=> bs!606839 m!4915859))

(assert (=> b!4322239 d!1271169))

(declare-fun b_lambda!127385 () Bool)

(assert (= b_lambda!127293 (or b!4321317 b_lambda!127385)))

(declare-fun bs!606840 () Bool)

(declare-fun d!1271171 () Bool)

(assert (= bs!606840 (and d!1271171 b!4321317)))

(assert (=> bs!606840 (= (dynLambda!20507 lambda!133849 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308))))))) (noDuplicateKeys!262 (_2!26879 (h!53839 (t!355382 (toList!2554 (map!10405 (v!42753 (underlying!9736 thiss!42308)))))))))))

(declare-fun m!4917287 () Bool)

(assert (=> bs!606840 m!4917287))

(assert (=> b!4321932 d!1271171))

(check-sat (not d!1270771) (not d!1270929) (not bm!299802) (not d!1271035) (not d!1270935) (not b!4322611) (not b!4321981) (not b!4322727) (not d!1270803) (not b!4322515) (not b!4322598) (not b!4322271) (not d!1270931) (not bs!606822) (not b!4322154) (not bm!299656) (not b!4322284) (not bs!606832) (not b!4322754) (not b!4322712) (not d!1270879) (not bm!299670) b_and!340533 (not b!4321960) (not bm!299713) (not d!1271059) (not d!1271089) (not d!1271037) (not bm!299649) (not b!4322172) (not b!4322240) (not d!1270901) (not b!4322668) (not b_lambda!127269) (not d!1270721) (not b_lambda!127275) (not b!4322619) (not b!4322483) (not b!4321999) (not b_lambda!127349) (not b!4322606) (not b!4322777) (not bm!299794) (not b!4321911) (not b!4322086) (not d!1271121) (not b!4322454) (not bs!606835) (not bm!299712) (not b!4322701) (not b!4322635) (not d!1270755) (not d!1271051) (not b!4322301) (not b!4322753) (not d!1270849) (not b_lambda!127287) (not b!4322621) (not b!4322502) (not d!1270847) (not d!1270863) (not b!4322575) (not bm!299646) (not b!4322608) (not d!1271043) (not b_lambda!127365) (not b!4322772) (not b!4322590) (not bm!299817) (not b_lambda!127343) (not b!4322580) (not b!4322773) (not d!1270735) (not b!4322550) (not b!4322592) (not b!4322328) (not b!4322699) (not b!4322770) (not b_lambda!127355) (not bm!299774) (not b!4322511) (not b!4321910) (not b!4322647) (not b!4322746) (not b!4322715) (not b!4322760) (not b!4322336) (not b!4322779) (not b!4322698) (not b!4322214) (not d!1270875) (not bm!299746) (not b!4322724) (not b!4321920) (not b!4322308) tp_is_empty!24109 (not bm!299773) (not bm!299672) (not bm!299776) (not d!1270989) (not b!4322129) (not bm!299753) (not bm!299650) (not b!4322246) (not bm!299704) (not b!4322337) (not b!4321929) (not bm!299750) (not b!4322487) (not b!4322671) (not b!4322465) (not b!4322462) (not b!4321966) (not b!4322625) (not bm!299697) (not b!4322764) (not b!4322196) (not b!4322640) (not b!4322033) (not d!1270773) (not b!4322423) (not b!4322059) (not bm!299698) (not d!1270987) (not d!1270905) (not b!4322624) (not b!4321936) (not b!4322615) (not b!4321928) (not b!4322460) (not b!4322347) (not bs!606824) (not b!4321982) (not b!4322174) (not b!4322674) (not b_lambda!127359) (not b_lambda!127271) (not d!1270861) (not b!4321908) (not b!4322717) (not bm!299695) (not b!4322182) (not mapNonEmpty!21191) (not b!4322276) (not b!4322147) (not b!4322333) (not b_lambda!127383) (not d!1270859) (not bm!299767) (not bm!299740) (not bm!299792) (not d!1271115) (not b!4322656) (not b!4322183) (not b!4322223) (not b!4322248) (not d!1270829) (not b!4322143) (not b!4322560) (not b!4321980) (not d!1270759) (not b_lambda!127223) (not d!1270939) (not b!4322762) (not bs!606828) (not bm!299762) (not bs!606836) (not b!4322155) (not b!4322566) (not b!4322589) (not b!4322451) (not d!1270815) (not bm!299770) (not bs!606833) (not b!4322381) (not b_lambda!127357) (not bm!299657) (not b!4322613) (not b!4322435) (not d!1270753) (not d!1270729) (not b!4322538) (not d!1270795) (not b!4322468) (not bm!299685) (not d!1271127) (not b_lambda!127283) (not b!4322441) (not bm!299768) (not b!4322127) (not bm!299745) (not b!4322226) (not d!1270781) (not d!1271079) (not b!4322443) (not b!4322673) (not b_lambda!127371) (not b!4321917) (not d!1271013) (not b!4322386) (not b_lambda!127361) (not bm!299749) (not bm!299705) (not b!4322700) (not bs!606826) (not bm!299779) (not b!4322345) (not b!4322061) (not bm!299796) (not bs!606840) (not b!4322780) (not d!1270751) (not b!4322614) (not b_lambda!127279) (not b!4322729) (not bm!299747) (not b!4322731) (not d!1270741) (not d!1271065) (not b!4322540) (not b!4322564) (not b!4322205) (not b!4322778) (not b!4322765) (not b!4322458) (not b!4322045) (not b!4322438) (not b!4322516) (not d!1270823) (not b!4322060) (not b!4322211) (not b!4322472) (not b!4322543) (not d!1270955) (not b!4322072) (not b!4322558) (not b!4322735) (not d!1271041) (not bs!606839) (not d!1270913) (not b!4322266) (not b_lambda!127267) (not b!4322224) (not b!4322722) (not bm!299741) (not b_lambda!127273) (not b!4322774) (not b!4322342) (not bm!299676) (not b_lambda!127277) (not d!1271123) (not b!4322259) (not b_lambda!127341) (not d!1271101) (not d!1270777) (not bm!299675) (not b!4322028) (not b!4322069) (not d!1270719) (not b!4322424) (not d!1270969) (not b!4322202) (not b!4322153) (not b!4321978) (not bs!606829) (not b_lambda!127367) (not b!4321968) (not bm!299797) (not b!4322283) (not d!1270841) (not b!4322237) (not b!4322650) (not b_lambda!127373) (not b!4322274) (not b!4322146) (not b!4322427) (not d!1270881) (not d!1270949) (not b!4322497) (not b!4322755) (not d!1270747) (not b!4322430) (not d!1270893) (not b!4322711) (not b!4322572) (not bm!299748) (not d!1270961) (not d!1270787) (not b_lambda!127363) (not b!4322179) (not b!4322225) (not bs!606827) (not d!1270943) (not b_lambda!127261) (not b!4322669) (not b!4322776) (not b!4322470) (not bs!606830) (not b!4321961) (not b!4322749) (not bm!299696) (not b!4322782) (not b!4322194) (not b!4322738) (not d!1270767) (not d!1271131) (not d!1270821) (not b!4322428) (not d!1270783) (not b!4322260) (not b!4322418) (not b_lambda!127369) (not b_lambda!127281) (not bm!299780) (not b!4322144) (not b!4322723) (not b!4322721) (not b!4322485) (not b!4322494) (not d!1270733) (not b!4322513) (not b!4321925) (not b!4322286) (not b!4322514) (not b!4322377) (not d!1270885) (not b!4322691) (not d!1271025) (not b!4322186) (not b!4322029) (not d!1271105) (not bm!299701) (not d!1270779) (not b!4322535) (not b_lambda!127381) (not b!4322775) (not d!1271007) (not b!4322455) (not d!1271053) (not b!4322204) (not bm!299799) (not bm!299795) (not bm!299744) (not bm!299751) (not b!4322387) (not b!4322767) (not b!4322040) (not b!4322562) (not d!1270857) (not b!4322207) (not b!4322324) (not b!4322128) (not d!1271077) (not b!4322696) (not bm!299763) (not b!4322078) (not b!4322508) (not b!4322536) (not b!4322752) (not b!4322757) (not d!1270899) (not d!1270967) (not d!1271069) (not b!4322158) (not d!1271099) (not d!1271125) (not bm!299699) (not d!1271107) (not b!4322031) (not d!1270959) (not b!4322311) (not bm!299680) (not b_lambda!127347) (not bm!299668) (not d!1270799) (not b_lambda!127351) (not d!1270717) (not d!1271067) (not bm!299752) (not bs!606831) (not b!4321913) (not b!4322556) (not b!4322203) (not b!4322622) (not d!1270951) (not b!4322570) (not d!1270835) (not b!4322526) (not b!4322170) (not b!4322716) (not d!1270947) (not b_lambda!127375) (not b!4322525) (not d!1271061) tp_is_empty!24111 (not b!4322573) (not b!4322081) (not bm!299681) (not bm!299653) (not b!4322084) (not b!4322168) (not d!1271129) (not d!1270981) (not b_next!129677) (not d!1270907) (not b!4321862) (not d!1270865) (not d!1270909) (not b!4322221) (not b!4322663) (not bm!299673) (not b_lambda!127265) (not d!1271057) (not b!4322432) (not b!4322553) (not d!1270851) (not bm!299814) (not d!1270979) (not b!4322338) (not d!1270817) (not d!1271023) (not b!4322505) (not b!4321933) (not b!4322548) (not b!4322529) (not b!4322138) (not d!1270853) (not b!4322703) (not b!4322175) (not d!1270897) (not b!4322453) (not bs!606837) (not d!1270933) (not b_lambda!127339) (not b!4322705) (not b!4322486) (not bm!299765) (not bs!606834) (not b!4322121) (not b!4322219) (not b_lambda!127225) (not d!1271087) (not b_lambda!127289) (not bm!299766) (not b!4322579) (not b!4322713) (not bm!299684) (not bs!606838) (not d!1270971) (not b!4322601) (not b!4322173) (not b!4321859) (not b!4322670) (not b!4322708) (not bs!606823) (not b!4322500) (not b!4322781) (not d!1270793) (not b!4322037) (not b!4322161) (not d!1271021) (not d!1270953) (not b!4322578) (not bm!299647) (not b!4322537) (not b!4322758) (not b_lambda!127263) (not b!4322317) (not b!4322134) (not bm!299803) (not b!4322021) (not b!4322340) (not b!4321976) b_and!340515 (not bm!299783) (not b!4322169) (not b!4322181) (not b!4322546) (not d!1271081) (not b_lambda!127377) (not b!4321962) (not b!4322667) (not d!1270807) (not b!4322568) (not b!4322030) (not d!1270937) (not b!4321931) (not d!1271117) (not b!4321909) (not bm!299764) (not d!1271047) (not b!4322350) (not b_lambda!127385) (not b!4322296) (not b!4322733) (not bm!299772) (not b!4322591) (not b!4322141) (not d!1271001) (not b_lambda!127285) (not bs!606825) (not bm!299654) (not b_next!129675) (not bm!299667) (not b!4322379) (not b!4322509) (not b_lambda!127353) (not b_lambda!127221) (not b!4322006) (not d!1270761) (not b!4321940) (not bm!299782) (not b!4322718) (not bm!299793) (not d!1271055) (not b_lambda!127259) (not b!4322079) (not bm!299743) (not d!1270825) (not d!1270723) (not b!4322433) (not b!4322783) (not b_lambda!127345) (not bm!299706) (not b!4322504) (not d!1270785) (not b!4322761) (not bm!299777) (not b!4322763) (not b!4322490) (not d!1270991) (not b!4322499) (not b!4322142) (not bm!299804) (not b!4322522) (not b_lambda!127379) (not bm!299694) (not b!4322456) (not tb!257369) (not d!1270739) (not b!4322450) (not b!4322195) (not b!4322594) (not b!4321977) (not b!4322440) (not b!4322759) (not bm!299742) (not b!4322125) (not b!4322503) (not d!1270839) (not d!1270765))
(check-sat b_and!340533 b_and!340515 (not b_next!129677) (not b_next!129675))

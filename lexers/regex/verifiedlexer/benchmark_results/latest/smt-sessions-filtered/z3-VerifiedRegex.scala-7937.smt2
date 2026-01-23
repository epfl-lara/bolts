; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413146 () Bool)

(assert start!413146)

(declare-fun b!4302130 () Bool)

(declare-fun b_free!128179 () Bool)

(declare-fun b_next!128883 () Bool)

(assert (=> b!4302130 (= b_free!128179 (not b_next!128883))))

(declare-fun tp!1321959 () Bool)

(declare-fun b_and!339563 () Bool)

(assert (=> b!4302130 (= tp!1321959 b_and!339563)))

(declare-fun b!4302125 () Bool)

(declare-fun b_free!128181 () Bool)

(declare-fun b_next!128885 () Bool)

(assert (=> b!4302125 (= b_free!128181 (not b_next!128885))))

(declare-fun tp!1321958 () Bool)

(declare-fun b_and!339565 () Bool)

(assert (=> b!4302125 (= tp!1321958 b_and!339565)))

(declare-fun mapNonEmpty!20437 () Bool)

(declare-fun mapRes!20437 () Bool)

(declare-fun tp!1321962 () Bool)

(declare-fun tp!1321961 () Bool)

(assert (=> mapNonEmpty!20437 (= mapRes!20437 (and tp!1321962 tp!1321961))))

(declare-datatypes ((K!9134 0))(
  ( (K!9135 (val!15565 Int)) )
))
(declare-datatypes ((V!9336 0))(
  ( (V!9337 (val!15566 Int)) )
))
(declare-datatypes ((tuple2!46050 0))(
  ( (tuple2!46051 (_1!26304 K!9134) (_2!26304 V!9336)) )
))
(declare-datatypes ((List!48120 0))(
  ( (Nil!47996) (Cons!47996 (h!53416 tuple2!46050) (t!354889 List!48120)) )
))
(declare-fun mapRest!20437 () (Array (_ BitVec 32) List!48120))

(declare-fun mapValue!20437 () List!48120)

(declare-fun mapKey!20437 () (_ BitVec 32))

(declare-datatypes ((array!16342 0))(
  ( (array!16343 (arr!7295 (Array (_ BitVec 32) (_ BitVec 64))) (size!35334 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4471 0))(
  ( (HashableExt!4470 (__x!29690 Int)) )
))
(declare-datatypes ((array!16344 0))(
  ( (array!16345 (arr!7296 (Array (_ BitVec 32) List!48120)) (size!35335 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9110 0))(
  ( (LongMapFixedSize!9111 (defaultEntry!4940 Int) (mask!13061 (_ BitVec 32)) (extraKeys!4804 (_ BitVec 32)) (zeroValue!4814 List!48120) (minValue!4814 List!48120) (_size!9153 (_ BitVec 32)) (_keys!4855 array!16342) (_values!4836 array!16344) (_vacant!4616 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18029 0))(
  ( (Cell!18030 (v!41992 LongMapFixedSize!9110)) )
))
(declare-datatypes ((MutLongMap!4555 0))(
  ( (LongMap!4555 (underlying!9339 Cell!18029)) (MutLongMapExt!4554 (__x!29691 Int)) )
))
(declare-datatypes ((Cell!18031 0))(
  ( (Cell!18032 (v!41993 MutLongMap!4555)) )
))
(declare-datatypes ((MutableMap!4461 0))(
  ( (MutableMapExt!4460 (__x!29692 Int)) (HashMap!4461 (underlying!9340 Cell!18031) (hashF!6506 Hashable!4471) (_size!9154 (_ BitVec 32)) (defaultValue!4632 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4461)

(assert (=> mapNonEmpty!20437 (= (arr!7296 (_values!4836 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) (store mapRest!20437 mapKey!20437 mapValue!20437))))

(declare-fun b!4302122 () Bool)

(declare-fun e!2674474 () Bool)

(declare-fun e!2674480 () Bool)

(assert (=> b!4302122 (= e!2674474 e!2674480)))

(declare-fun b!4302123 () Bool)

(declare-fun e!2674479 () Bool)

(declare-fun e!2674475 () Bool)

(assert (=> b!4302123 (= e!2674479 e!2674475)))

(declare-fun res!1763155 () Bool)

(assert (=> b!4302123 (=> (not res!1763155) (not e!2674475))))

(declare-fun lt!1523803 () (_ BitVec 64))

(declare-fun lt!1523801 () List!48120)

(declare-fun v!9179 () V!9336)

(declare-fun key!2048 () K!9134)

(declare-datatypes ((tuple2!46052 0))(
  ( (tuple2!46053 (_1!26305 Bool) (_2!26305 MutLongMap!4555)) )
))
(declare-fun update!352 (MutLongMap!4555 (_ BitVec 64) List!48120) tuple2!46052)

(assert (=> b!4302123 (= res!1763155 (_1!26305 (update!352 (v!41993 (underlying!9340 thiss!42308)) lt!1523803 (Cons!47996 (tuple2!46051 key!2048 v!9179) lt!1523801))))))

(declare-fun lt!1523799 () List!48120)

(declare-fun removePairForKey!155 (List!48120 K!9134) List!48120)

(assert (=> b!4302123 (= lt!1523801 (removePairForKey!155 lt!1523799 key!2048))))

(declare-fun apply!10898 (MutLongMap!4555 (_ BitVec 64)) List!48120)

(assert (=> b!4302123 (= lt!1523799 (apply!10898 (v!41993 (underlying!9340 thiss!42308)) lt!1523803))))

(declare-fun hash!858 (Hashable!4471 K!9134) (_ BitVec 64))

(assert (=> b!4302123 (= lt!1523803 (hash!858 (hashF!6506 thiss!42308) key!2048))))

(declare-fun b!4302124 () Bool)

(declare-fun e!2674478 () Bool)

(assert (=> b!4302124 (= e!2674478 e!2674474)))

(declare-fun res!1763154 () Bool)

(declare-fun e!2674477 () Bool)

(assert (=> start!413146 (=> (not res!1763154) (not e!2674477))))

(get-info :version)

(assert (=> start!413146 (= res!1763154 ((_ is HashMap!4461) thiss!42308))))

(assert (=> start!413146 e!2674477))

(declare-fun e!2674473 () Bool)

(assert (=> start!413146 e!2674473))

(declare-fun tp_is_empty!23359 () Bool)

(assert (=> start!413146 tp_is_empty!23359))

(declare-fun tp_is_empty!23361 () Bool)

(assert (=> start!413146 tp_is_empty!23361))

(declare-fun e!2674482 () Bool)

(assert (=> b!4302125 (= e!2674473 (and e!2674482 tp!1321958))))

(declare-fun b!4302126 () Bool)

(assert (=> b!4302126 (= e!2674477 e!2674479)))

(declare-fun res!1763156 () Bool)

(assert (=> b!4302126 (=> (not res!1763156) (not e!2674479))))

(declare-fun contains!9915 (MutableMap!4461 K!9134) Bool)

(assert (=> b!4302126 (= res!1763156 (contains!9915 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46054 0))(
  ( (tuple2!46055 (_1!26306 (_ BitVec 64)) (_2!26306 List!48120)) )
))
(declare-datatypes ((List!48121 0))(
  ( (Nil!47997) (Cons!47997 (h!53417 tuple2!46054) (t!354890 List!48121)) )
))
(declare-datatypes ((ListLongMap!843 0))(
  ( (ListLongMap!844 (toList!2236 List!48121)) )
))
(declare-fun lt!1523798 () ListLongMap!843)

(declare-fun map!9957 (MutLongMap!4555) ListLongMap!843)

(assert (=> b!4302126 (= lt!1523798 (map!9957 (v!41993 (underlying!9340 thiss!42308))))))

(declare-datatypes ((ListMap!1523 0))(
  ( (ListMap!1524 (toList!2237 List!48120)) )
))
(declare-fun lt!1523797 () ListMap!1523)

(declare-fun map!9958 (MutableMap!4461) ListMap!1523)

(assert (=> b!4302126 (= lt!1523797 (map!9958 thiss!42308))))

(declare-fun b!4302127 () Bool)

(declare-fun res!1763157 () Bool)

(assert (=> b!4302127 (=> (not res!1763157) (not e!2674477))))

(declare-fun valid!3539 (MutableMap!4461) Bool)

(assert (=> b!4302127 (= res!1763157 (valid!3539 thiss!42308))))

(declare-fun b!4302128 () Bool)

(declare-fun noDuplicateKeys!160 (List!48120) Bool)

(assert (=> b!4302128 (= e!2674475 (not (noDuplicateKeys!160 lt!1523799)))))

(assert (=> b!4302128 (noDuplicateKeys!160 lt!1523801)))

(declare-datatypes ((Unit!66974 0))(
  ( (Unit!66975) )
))
(declare-fun lt!1523804 () Unit!66974)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!133 (List!48120 K!9134) Unit!66974)

(assert (=> b!4302128 (= lt!1523804 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!133 lt!1523799 key!2048))))

(declare-fun allKeysSameHash!130 (List!48120 (_ BitVec 64) Hashable!4471) Bool)

(assert (=> b!4302128 (allKeysSameHash!130 lt!1523801 lt!1523803 (hashF!6506 thiss!42308))))

(declare-fun lt!1523800 () Unit!66974)

(declare-fun lemmaRemovePairForKeyPreservesHash!116 (List!48120 K!9134 (_ BitVec 64) Hashable!4471) Unit!66974)

(assert (=> b!4302128 (= lt!1523800 (lemmaRemovePairForKeyPreservesHash!116 lt!1523799 key!2048 lt!1523803 (hashF!6506 thiss!42308)))))

(assert (=> b!4302128 (allKeysSameHash!130 lt!1523799 lt!1523803 (hashF!6506 thiss!42308))))

(declare-fun lt!1523805 () Unit!66974)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!121 (List!48121 (_ BitVec 64) List!48120 Hashable!4471) Unit!66974)

(assert (=> b!4302128 (= lt!1523805 (lemmaInLongMapAllKeySameHashThenForTuple!121 (toList!2236 lt!1523798) lt!1523803 lt!1523799 (hashF!6506 thiss!42308)))))

(declare-fun b!4302129 () Bool)

(declare-fun lt!1523802 () MutLongMap!4555)

(assert (=> b!4302129 (= e!2674482 (and e!2674478 ((_ is LongMap!4555) lt!1523802)))))

(assert (=> b!4302129 (= lt!1523802 (v!41993 (underlying!9340 thiss!42308)))))

(declare-fun tp!1321964 () Bool)

(declare-fun e!2674481 () Bool)

(declare-fun tp!1321963 () Bool)

(declare-fun array_inv!5231 (array!16342) Bool)

(declare-fun array_inv!5232 (array!16344) Bool)

(assert (=> b!4302130 (= e!2674480 (and tp!1321959 tp!1321963 tp!1321964 (array_inv!5231 (_keys!4855 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) (array_inv!5232 (_values!4836 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) e!2674481))))

(declare-fun b!4302131 () Bool)

(declare-fun tp!1321960 () Bool)

(assert (=> b!4302131 (= e!2674481 (and tp!1321960 mapRes!20437))))

(declare-fun condMapEmpty!20437 () Bool)

(declare-fun mapDefault!20437 () List!48120)

(assert (=> b!4302131 (= condMapEmpty!20437 (= (arr!7296 (_values!4836 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48120)) mapDefault!20437)))))

(declare-fun mapIsEmpty!20437 () Bool)

(assert (=> mapIsEmpty!20437 mapRes!20437))

(assert (= (and start!413146 res!1763154) b!4302127))

(assert (= (and b!4302127 res!1763157) b!4302126))

(assert (= (and b!4302126 res!1763156) b!4302123))

(assert (= (and b!4302123 res!1763155) b!4302128))

(assert (= (and b!4302131 condMapEmpty!20437) mapIsEmpty!20437))

(assert (= (and b!4302131 (not condMapEmpty!20437)) mapNonEmpty!20437))

(assert (= b!4302130 b!4302131))

(assert (= b!4302122 b!4302130))

(assert (= b!4302124 b!4302122))

(assert (= (and b!4302129 ((_ is LongMap!4555) (v!41993 (underlying!9340 thiss!42308)))) b!4302124))

(assert (= b!4302125 b!4302129))

(assert (= (and start!413146 ((_ is HashMap!4461) thiss!42308)) b!4302125))

(declare-fun m!4894213 () Bool)

(assert (=> b!4302126 m!4894213))

(declare-fun m!4894215 () Bool)

(assert (=> b!4302126 m!4894215))

(declare-fun m!4894217 () Bool)

(assert (=> b!4302126 m!4894217))

(declare-fun m!4894219 () Bool)

(assert (=> b!4302123 m!4894219))

(declare-fun m!4894221 () Bool)

(assert (=> b!4302123 m!4894221))

(declare-fun m!4894223 () Bool)

(assert (=> b!4302123 m!4894223))

(declare-fun m!4894225 () Bool)

(assert (=> b!4302123 m!4894225))

(declare-fun m!4894227 () Bool)

(assert (=> mapNonEmpty!20437 m!4894227))

(declare-fun m!4894229 () Bool)

(assert (=> b!4302130 m!4894229))

(declare-fun m!4894231 () Bool)

(assert (=> b!4302130 m!4894231))

(declare-fun m!4894233 () Bool)

(assert (=> b!4302127 m!4894233))

(declare-fun m!4894235 () Bool)

(assert (=> b!4302128 m!4894235))

(declare-fun m!4894237 () Bool)

(assert (=> b!4302128 m!4894237))

(declare-fun m!4894239 () Bool)

(assert (=> b!4302128 m!4894239))

(declare-fun m!4894241 () Bool)

(assert (=> b!4302128 m!4894241))

(declare-fun m!4894243 () Bool)

(assert (=> b!4302128 m!4894243))

(declare-fun m!4894245 () Bool)

(assert (=> b!4302128 m!4894245))

(declare-fun m!4894247 () Bool)

(assert (=> b!4302128 m!4894247))

(check-sat (not b!4302131) (not b_next!128883) (not b!4302130) b_and!339565 (not b!4302123) (not b!4302128) (not b!4302126) b_and!339563 tp_is_empty!23361 tp_is_empty!23359 (not b!4302127) (not mapNonEmpty!20437) (not b_next!128885))
(check-sat b_and!339563 b_and!339565 (not b_next!128885) (not b_next!128883))
(get-model)

(declare-fun d!1266876 () Bool)

(declare-fun res!1763162 () Bool)

(declare-fun e!2674485 () Bool)

(assert (=> d!1266876 (=> (not res!1763162) (not e!2674485))))

(declare-fun valid!3540 (MutLongMap!4555) Bool)

(assert (=> d!1266876 (= res!1763162 (valid!3540 (v!41993 (underlying!9340 thiss!42308))))))

(assert (=> d!1266876 (= (valid!3539 thiss!42308) e!2674485)))

(declare-fun b!4302136 () Bool)

(declare-fun res!1763163 () Bool)

(assert (=> b!4302136 (=> (not res!1763163) (not e!2674485))))

(declare-fun lambda!132081 () Int)

(declare-fun forall!8651 (List!48121 Int) Bool)

(assert (=> b!4302136 (= res!1763163 (forall!8651 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))) lambda!132081))))

(declare-fun b!4302137 () Bool)

(declare-fun allKeysSameHashInMap!280 (ListLongMap!843 Hashable!4471) Bool)

(assert (=> b!4302137 (= e!2674485 (allKeysSameHashInMap!280 (map!9957 (v!41993 (underlying!9340 thiss!42308))) (hashF!6506 thiss!42308)))))

(assert (= (and d!1266876 res!1763162) b!4302136))

(assert (= (and b!4302136 res!1763163) b!4302137))

(declare-fun m!4894249 () Bool)

(assert (=> d!1266876 m!4894249))

(assert (=> b!4302136 m!4894215))

(declare-fun m!4894251 () Bool)

(assert (=> b!4302136 m!4894251))

(assert (=> b!4302137 m!4894215))

(assert (=> b!4302137 m!4894215))

(declare-fun m!4894253 () Bool)

(assert (=> b!4302137 m!4894253))

(assert (=> b!4302127 d!1266876))

(declare-fun b!4302156 () Bool)

(declare-fun res!1763172 () Bool)

(declare-fun e!2674498 () Bool)

(assert (=> b!4302156 (=> (not res!1763172) (not e!2674498))))

(declare-fun lt!1523815 () tuple2!46052)

(assert (=> b!4302156 (= res!1763172 (valid!3540 (_2!26305 lt!1523815)))))

(declare-fun call!296668 () ListLongMap!843)

(declare-fun e!2674496 () Bool)

(declare-fun call!296669 () ListLongMap!843)

(declare-fun b!4302158 () Bool)

(declare-fun +!187 (ListLongMap!843 tuple2!46054) ListLongMap!843)

(assert (=> b!4302158 (= e!2674496 (= call!296669 (+!187 call!296668 (tuple2!46055 lt!1523803 (Cons!47996 (tuple2!46051 key!2048 v!9179) lt!1523801)))))))

(declare-fun b!4302159 () Bool)

(declare-fun e!2674499 () tuple2!46052)

(declare-datatypes ((tuple2!46056 0))(
  ( (tuple2!46057 (_1!26307 Bool) (_2!26307 LongMapFixedSize!9110)) )
))
(declare-fun lt!1523814 () tuple2!46056)

(assert (=> b!4302159 (= e!2674499 (tuple2!46053 (_1!26307 lt!1523814) (LongMap!4555 (Cell!18030 (_2!26307 lt!1523814)))))))

(declare-fun lt!1523817 () tuple2!46052)

(declare-fun update!353 (LongMapFixedSize!9110 (_ BitVec 64) List!48120) tuple2!46056)

(assert (=> b!4302159 (= lt!1523814 (update!353 (v!41992 (underlying!9339 (_2!26305 lt!1523817))) lt!1523803 (Cons!47996 (tuple2!46051 key!2048 v!9179) lt!1523801)))))

(declare-fun b!4302160 () Bool)

(declare-fun e!2674497 () tuple2!46052)

(assert (=> b!4302160 (= e!2674497 (tuple2!46053 true (v!41993 (underlying!9340 thiss!42308))))))

(declare-fun b!4302161 () Bool)

(declare-fun e!2674500 () Bool)

(assert (=> b!4302161 (= e!2674498 e!2674500)))

(declare-fun c!731702 () Bool)

(assert (=> b!4302161 (= c!731702 (_1!26305 lt!1523815))))

(declare-fun bm!296663 () Bool)

(assert (=> bm!296663 (= call!296668 (map!9957 (v!41993 (underlying!9340 thiss!42308))))))

(declare-fun bm!296664 () Bool)

(assert (=> bm!296664 (= call!296669 (map!9957 (_2!26305 lt!1523815)))))

(declare-fun b!4302157 () Bool)

(declare-fun lt!1523816 () tuple2!46052)

(assert (=> b!4302157 (= e!2674497 (tuple2!46053 (_1!26305 lt!1523816) (_2!26305 lt!1523816)))))

(declare-fun repack!38 (MutLongMap!4555) tuple2!46052)

(assert (=> b!4302157 (= lt!1523816 (repack!38 (v!41993 (underlying!9340 thiss!42308))))))

(declare-fun d!1266878 () Bool)

(assert (=> d!1266878 e!2674498))

(declare-fun res!1763171 () Bool)

(assert (=> d!1266878 (=> (not res!1763171) (not e!2674498))))

(assert (=> d!1266878 (= res!1763171 ((_ is LongMap!4555) (_2!26305 lt!1523815)))))

(assert (=> d!1266878 (= lt!1523815 e!2674499)))

(declare-fun c!731700 () Bool)

(assert (=> d!1266878 (= c!731700 (_1!26305 lt!1523817))))

(assert (=> d!1266878 (= lt!1523817 e!2674497)))

(declare-fun c!731701 () Bool)

(declare-fun imbalanced!34 (MutLongMap!4555) Bool)

(assert (=> d!1266878 (= c!731701 (imbalanced!34 (v!41993 (underlying!9340 thiss!42308))))))

(assert (=> d!1266878 (valid!3540 (v!41993 (underlying!9340 thiss!42308)))))

(assert (=> d!1266878 (= (update!352 (v!41993 (underlying!9340 thiss!42308)) lt!1523803 (Cons!47996 (tuple2!46051 key!2048 v!9179) lt!1523801)) lt!1523815)))

(declare-fun b!4302162 () Bool)

(assert (=> b!4302162 (= e!2674500 e!2674496)))

(declare-fun res!1763170 () Bool)

(declare-fun contains!9916 (ListLongMap!843 (_ BitVec 64)) Bool)

(assert (=> b!4302162 (= res!1763170 (contains!9916 call!296669 lt!1523803))))

(assert (=> b!4302162 (=> (not res!1763170) (not e!2674496))))

(declare-fun b!4302163 () Bool)

(assert (=> b!4302163 (= e!2674500 (= call!296669 call!296668))))

(declare-fun b!4302164 () Bool)

(assert (=> b!4302164 (= e!2674499 (tuple2!46053 false (_2!26305 lt!1523817)))))

(assert (= (and d!1266878 c!731701) b!4302157))

(assert (= (and d!1266878 (not c!731701)) b!4302160))

(assert (= (and d!1266878 c!731700) b!4302159))

(assert (= (and d!1266878 (not c!731700)) b!4302164))

(assert (= (and d!1266878 res!1763171) b!4302156))

(assert (= (and b!4302156 res!1763172) b!4302161))

(assert (= (and b!4302161 c!731702) b!4302162))

(assert (= (and b!4302161 (not c!731702)) b!4302163))

(assert (= (and b!4302162 res!1763170) b!4302158))

(assert (= (or b!4302158 b!4302163) bm!296663))

(assert (= (or b!4302162 b!4302158 b!4302163) bm!296664))

(declare-fun m!4894255 () Bool)

(assert (=> b!4302159 m!4894255))

(assert (=> bm!296663 m!4894215))

(declare-fun m!4894257 () Bool)

(assert (=> b!4302156 m!4894257))

(declare-fun m!4894259 () Bool)

(assert (=> b!4302157 m!4894259))

(declare-fun m!4894261 () Bool)

(assert (=> b!4302158 m!4894261))

(declare-fun m!4894263 () Bool)

(assert (=> b!4302162 m!4894263))

(declare-fun m!4894265 () Bool)

(assert (=> d!1266878 m!4894265))

(assert (=> d!1266878 m!4894249))

(declare-fun m!4894267 () Bool)

(assert (=> bm!296664 m!4894267))

(assert (=> b!4302123 d!1266878))

(declare-fun b!4302176 () Bool)

(declare-fun e!2674505 () List!48120)

(assert (=> b!4302176 (= e!2674505 Nil!47996)))

(declare-fun b!4302173 () Bool)

(declare-fun e!2674506 () List!48120)

(assert (=> b!4302173 (= e!2674506 (t!354889 lt!1523799))))

(declare-fun d!1266880 () Bool)

(declare-fun lt!1523820 () List!48120)

(declare-fun containsKey!248 (List!48120 K!9134) Bool)

(assert (=> d!1266880 (not (containsKey!248 lt!1523820 key!2048))))

(assert (=> d!1266880 (= lt!1523820 e!2674506)))

(declare-fun c!731708 () Bool)

(assert (=> d!1266880 (= c!731708 (and ((_ is Cons!47996) lt!1523799) (= (_1!26304 (h!53416 lt!1523799)) key!2048)))))

(assert (=> d!1266880 (noDuplicateKeys!160 lt!1523799)))

(assert (=> d!1266880 (= (removePairForKey!155 lt!1523799 key!2048) lt!1523820)))

(declare-fun b!4302175 () Bool)

(assert (=> b!4302175 (= e!2674505 (Cons!47996 (h!53416 lt!1523799) (removePairForKey!155 (t!354889 lt!1523799) key!2048)))))

(declare-fun b!4302174 () Bool)

(assert (=> b!4302174 (= e!2674506 e!2674505)))

(declare-fun c!731707 () Bool)

(assert (=> b!4302174 (= c!731707 ((_ is Cons!47996) lt!1523799))))

(assert (= (and d!1266880 c!731708) b!4302173))

(assert (= (and d!1266880 (not c!731708)) b!4302174))

(assert (= (and b!4302174 c!731707) b!4302175))

(assert (= (and b!4302174 (not c!731707)) b!4302176))

(declare-fun m!4894269 () Bool)

(assert (=> d!1266880 m!4894269))

(assert (=> d!1266880 m!4894239))

(declare-fun m!4894271 () Bool)

(assert (=> b!4302175 m!4894271))

(assert (=> b!4302123 d!1266880))

(declare-fun d!1266882 () Bool)

(declare-fun e!2674509 () Bool)

(assert (=> d!1266882 e!2674509))

(declare-fun c!731711 () Bool)

(declare-fun contains!9917 (MutLongMap!4555 (_ BitVec 64)) Bool)

(assert (=> d!1266882 (= c!731711 (contains!9917 (v!41993 (underlying!9340 thiss!42308)) lt!1523803))))

(declare-fun lt!1523823 () List!48120)

(declare-fun apply!10899 (LongMapFixedSize!9110 (_ BitVec 64)) List!48120)

(assert (=> d!1266882 (= lt!1523823 (apply!10899 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))) lt!1523803))))

(assert (=> d!1266882 (valid!3540 (v!41993 (underlying!9340 thiss!42308)))))

(assert (=> d!1266882 (= (apply!10898 (v!41993 (underlying!9340 thiss!42308)) lt!1523803) lt!1523823)))

(declare-fun b!4302181 () Bool)

(declare-datatypes ((Option!10175 0))(
  ( (None!10174) (Some!10174 (v!41998 List!48120)) )
))
(declare-fun get!15522 (Option!10175) List!48120)

(declare-fun getValueByKey!221 (List!48121 (_ BitVec 64)) Option!10175)

(assert (=> b!4302181 (= e!2674509 (= lt!1523823 (get!15522 (getValueByKey!221 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))) lt!1523803))))))

(declare-fun b!4302182 () Bool)

(declare-fun dynLambda!20381 (Int (_ BitVec 64)) List!48120)

(assert (=> b!4302182 (= e!2674509 (= lt!1523823 (dynLambda!20381 (defaultEntry!4940 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308))))) lt!1523803)))))

(assert (=> b!4302182 ((_ is LongMap!4555) (v!41993 (underlying!9340 thiss!42308)))))

(assert (= (and d!1266882 c!731711) b!4302181))

(assert (= (and d!1266882 (not c!731711)) b!4302182))

(declare-fun b_lambda!126439 () Bool)

(assert (=> (not b_lambda!126439) (not b!4302182)))

(declare-fun t!354892 () Bool)

(declare-fun tb!257255 () Bool)

(assert (=> (and b!4302130 (= (defaultEntry!4940 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308))))) (defaultEntry!4940 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) t!354892) tb!257255))

(assert (=> b!4302182 t!354892))

(declare-fun result!314572 () Bool)

(declare-fun b_and!339567 () Bool)

(assert (= b_and!339563 (and (=> t!354892 result!314572) b_and!339567)))

(declare-fun m!4894273 () Bool)

(assert (=> d!1266882 m!4894273))

(declare-fun m!4894275 () Bool)

(assert (=> d!1266882 m!4894275))

(assert (=> d!1266882 m!4894249))

(assert (=> b!4302181 m!4894215))

(declare-fun m!4894277 () Bool)

(assert (=> b!4302181 m!4894277))

(assert (=> b!4302181 m!4894277))

(declare-fun m!4894279 () Bool)

(assert (=> b!4302181 m!4894279))

(declare-fun m!4894281 () Bool)

(assert (=> b!4302182 m!4894281))

(assert (=> b!4302123 d!1266882))

(declare-fun d!1266884 () Bool)

(declare-fun hash!861 (Hashable!4471 K!9134) (_ BitVec 64))

(assert (=> d!1266884 (= (hash!858 (hashF!6506 thiss!42308) key!2048) (hash!861 (hashF!6506 thiss!42308) key!2048))))

(declare-fun bs!604085 () Bool)

(assert (= bs!604085 d!1266884))

(declare-fun m!4894283 () Bool)

(assert (=> bs!604085 m!4894283))

(assert (=> b!4302123 d!1266884))

(declare-fun d!1266886 () Bool)

(assert (=> d!1266886 true))

(assert (=> d!1266886 true))

(declare-fun lambda!132084 () Int)

(declare-fun forall!8652 (List!48120 Int) Bool)

(assert (=> d!1266886 (= (allKeysSameHash!130 lt!1523799 lt!1523803 (hashF!6506 thiss!42308)) (forall!8652 lt!1523799 lambda!132084))))

(declare-fun bs!604086 () Bool)

(assert (= bs!604086 d!1266886))

(declare-fun m!4894285 () Bool)

(assert (=> bs!604086 m!4894285))

(assert (=> b!4302128 d!1266886))

(declare-fun d!1266888 () Bool)

(declare-fun res!1763177 () Bool)

(declare-fun e!2674514 () Bool)

(assert (=> d!1266888 (=> res!1763177 e!2674514)))

(assert (=> d!1266888 (= res!1763177 (not ((_ is Cons!47996) lt!1523801)))))

(assert (=> d!1266888 (= (noDuplicateKeys!160 lt!1523801) e!2674514)))

(declare-fun b!4302191 () Bool)

(declare-fun e!2674515 () Bool)

(assert (=> b!4302191 (= e!2674514 e!2674515)))

(declare-fun res!1763178 () Bool)

(assert (=> b!4302191 (=> (not res!1763178) (not e!2674515))))

(assert (=> b!4302191 (= res!1763178 (not (containsKey!248 (t!354889 lt!1523801) (_1!26304 (h!53416 lt!1523801)))))))

(declare-fun b!4302192 () Bool)

(assert (=> b!4302192 (= e!2674515 (noDuplicateKeys!160 (t!354889 lt!1523801)))))

(assert (= (and d!1266888 (not res!1763177)) b!4302191))

(assert (= (and b!4302191 res!1763178) b!4302192))

(declare-fun m!4894287 () Bool)

(assert (=> b!4302191 m!4894287))

(declare-fun m!4894289 () Bool)

(assert (=> b!4302192 m!4894289))

(assert (=> b!4302128 d!1266888))

(declare-fun d!1266890 () Bool)

(assert (=> d!1266890 (noDuplicateKeys!160 (removePairForKey!155 lt!1523799 key!2048))))

(declare-fun lt!1523826 () Unit!66974)

(declare-fun choose!26181 (List!48120 K!9134) Unit!66974)

(assert (=> d!1266890 (= lt!1523826 (choose!26181 lt!1523799 key!2048))))

(assert (=> d!1266890 (noDuplicateKeys!160 lt!1523799)))

(assert (=> d!1266890 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!133 lt!1523799 key!2048) lt!1523826)))

(declare-fun bs!604087 () Bool)

(assert (= bs!604087 d!1266890))

(assert (=> bs!604087 m!4894221))

(assert (=> bs!604087 m!4894221))

(declare-fun m!4894291 () Bool)

(assert (=> bs!604087 m!4894291))

(declare-fun m!4894293 () Bool)

(assert (=> bs!604087 m!4894293))

(assert (=> bs!604087 m!4894239))

(assert (=> b!4302128 d!1266890))

(declare-fun d!1266892 () Bool)

(declare-fun res!1763179 () Bool)

(declare-fun e!2674516 () Bool)

(assert (=> d!1266892 (=> res!1763179 e!2674516)))

(assert (=> d!1266892 (= res!1763179 (not ((_ is Cons!47996) lt!1523799)))))

(assert (=> d!1266892 (= (noDuplicateKeys!160 lt!1523799) e!2674516)))

(declare-fun b!4302193 () Bool)

(declare-fun e!2674517 () Bool)

(assert (=> b!4302193 (= e!2674516 e!2674517)))

(declare-fun res!1763180 () Bool)

(assert (=> b!4302193 (=> (not res!1763180) (not e!2674517))))

(assert (=> b!4302193 (= res!1763180 (not (containsKey!248 (t!354889 lt!1523799) (_1!26304 (h!53416 lt!1523799)))))))

(declare-fun b!4302194 () Bool)

(assert (=> b!4302194 (= e!2674517 (noDuplicateKeys!160 (t!354889 lt!1523799)))))

(assert (= (and d!1266892 (not res!1763179)) b!4302193))

(assert (= (and b!4302193 res!1763180) b!4302194))

(declare-fun m!4894295 () Bool)

(assert (=> b!4302193 m!4894295))

(declare-fun m!4894297 () Bool)

(assert (=> b!4302194 m!4894297))

(assert (=> b!4302128 d!1266892))

(declare-fun d!1266894 () Bool)

(assert (=> d!1266894 (allKeysSameHash!130 (removePairForKey!155 lt!1523799 key!2048) lt!1523803 (hashF!6506 thiss!42308))))

(declare-fun lt!1523829 () Unit!66974)

(declare-fun choose!26182 (List!48120 K!9134 (_ BitVec 64) Hashable!4471) Unit!66974)

(assert (=> d!1266894 (= lt!1523829 (choose!26182 lt!1523799 key!2048 lt!1523803 (hashF!6506 thiss!42308)))))

(assert (=> d!1266894 (noDuplicateKeys!160 lt!1523799)))

(assert (=> d!1266894 (= (lemmaRemovePairForKeyPreservesHash!116 lt!1523799 key!2048 lt!1523803 (hashF!6506 thiss!42308)) lt!1523829)))

(declare-fun bs!604088 () Bool)

(assert (= bs!604088 d!1266894))

(assert (=> bs!604088 m!4894221))

(assert (=> bs!604088 m!4894221))

(declare-fun m!4894299 () Bool)

(assert (=> bs!604088 m!4894299))

(declare-fun m!4894301 () Bool)

(assert (=> bs!604088 m!4894301))

(assert (=> bs!604088 m!4894239))

(assert (=> b!4302128 d!1266894))

(declare-fun bs!604089 () Bool)

(declare-fun d!1266896 () Bool)

(assert (= bs!604089 (and d!1266896 b!4302136)))

(declare-fun lambda!132087 () Int)

(assert (=> bs!604089 (not (= lambda!132087 lambda!132081))))

(assert (=> d!1266896 true))

(assert (=> d!1266896 (allKeysSameHash!130 lt!1523799 lt!1523803 (hashF!6506 thiss!42308))))

(declare-fun lt!1523832 () Unit!66974)

(declare-fun choose!26183 (List!48121 (_ BitVec 64) List!48120 Hashable!4471) Unit!66974)

(assert (=> d!1266896 (= lt!1523832 (choose!26183 (toList!2236 lt!1523798) lt!1523803 lt!1523799 (hashF!6506 thiss!42308)))))

(assert (=> d!1266896 (forall!8651 (toList!2236 lt!1523798) lambda!132087)))

(assert (=> d!1266896 (= (lemmaInLongMapAllKeySameHashThenForTuple!121 (toList!2236 lt!1523798) lt!1523803 lt!1523799 (hashF!6506 thiss!42308)) lt!1523832)))

(declare-fun bs!604090 () Bool)

(assert (= bs!604090 d!1266896))

(assert (=> bs!604090 m!4894241))

(declare-fun m!4894303 () Bool)

(assert (=> bs!604090 m!4894303))

(declare-fun m!4894305 () Bool)

(assert (=> bs!604090 m!4894305))

(assert (=> b!4302128 d!1266896))

(declare-fun bs!604091 () Bool)

(declare-fun d!1266898 () Bool)

(assert (= bs!604091 (and d!1266898 d!1266886)))

(declare-fun lambda!132088 () Int)

(assert (=> bs!604091 (= lambda!132088 lambda!132084)))

(assert (=> d!1266898 true))

(assert (=> d!1266898 true))

(assert (=> d!1266898 (= (allKeysSameHash!130 lt!1523801 lt!1523803 (hashF!6506 thiss!42308)) (forall!8652 lt!1523801 lambda!132088))))

(declare-fun bs!604092 () Bool)

(assert (= bs!604092 d!1266898))

(declare-fun m!4894307 () Bool)

(assert (=> bs!604092 m!4894307))

(assert (=> b!4302128 d!1266898))

(declare-fun d!1266900 () Bool)

(assert (=> d!1266900 (= (array_inv!5231 (_keys!4855 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) (bvsge (size!35334 (_keys!4855 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4302130 d!1266900))

(declare-fun d!1266902 () Bool)

(assert (=> d!1266902 (= (array_inv!5232 (_values!4836 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) (bvsge (size!35335 (_values!4836 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4302130 d!1266902))

(declare-fun bs!604093 () Bool)

(declare-fun b!4302226 () Bool)

(assert (= bs!604093 (and b!4302226 b!4302136)))

(declare-fun lambda!132091 () Int)

(assert (=> bs!604093 (= lambda!132091 lambda!132081)))

(declare-fun bs!604094 () Bool)

(assert (= bs!604094 (and b!4302226 d!1266896)))

(assert (=> bs!604094 (not (= lambda!132091 lambda!132087))))

(declare-fun bm!296677 () Bool)

(declare-datatypes ((Option!10176 0))(
  ( (None!10175) (Some!10175 (v!41999 tuple2!46050)) )
))
(declare-fun call!296683 () Option!10176)

(declare-fun call!296686 () List!48120)

(declare-fun getPair!113 (List!48120 K!9134) Option!10176)

(assert (=> bm!296677 (= call!296683 (getPair!113 call!296686 key!2048))))

(declare-fun b!4302219 () Bool)

(declare-fun e!2674537 () Unit!66974)

(declare-fun Unit!66976 () Unit!66974)

(assert (=> b!4302219 (= e!2674537 Unit!66976)))

(declare-fun bm!296678 () Bool)

(declare-fun call!296687 () ListLongMap!843)

(assert (=> bm!296678 (= call!296687 (map!9957 (v!41993 (underlying!9340 thiss!42308))))))

(declare-fun bm!296679 () Bool)

(declare-fun call!296682 () Bool)

(declare-fun isDefined!7484 (Option!10176) Bool)

(assert (=> bm!296679 (= call!296682 (isDefined!7484 call!296683))))

(declare-fun call!296685 () Bool)

(declare-fun call!296684 () (_ BitVec 64))

(declare-fun c!731720 () Bool)

(declare-fun lt!1523880 () ListLongMap!843)

(declare-fun bm!296680 () Bool)

(assert (=> bm!296680 (= call!296685 (contains!9916 (ite c!731720 lt!1523880 call!296687) call!296684))))

(declare-fun d!1266904 () Bool)

(declare-fun lt!1523892 () Bool)

(declare-fun contains!9918 (ListMap!1523 K!9134) Bool)

(assert (=> d!1266904 (= lt!1523892 (contains!9918 (map!9958 thiss!42308) key!2048))))

(declare-fun e!2674534 () Bool)

(assert (=> d!1266904 (= lt!1523892 e!2674534)))

(declare-fun res!1763189 () Bool)

(assert (=> d!1266904 (=> (not res!1763189) (not e!2674534))))

(declare-fun lt!1523890 () (_ BitVec 64))

(assert (=> d!1266904 (= res!1763189 (contains!9917 (v!41993 (underlying!9340 thiss!42308)) lt!1523890))))

(declare-fun lt!1523873 () Unit!66974)

(declare-fun e!2674536 () Unit!66974)

(assert (=> d!1266904 (= lt!1523873 e!2674536)))

(declare-fun extractMap!280 (List!48121) ListMap!1523)

(assert (=> d!1266904 (= c!731720 (contains!9918 (extractMap!280 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308))))) key!2048))))

(declare-fun lt!1523881 () Unit!66974)

(declare-fun e!2674533 () Unit!66974)

(assert (=> d!1266904 (= lt!1523881 e!2674533)))

(declare-fun c!731722 () Bool)

(assert (=> d!1266904 (= c!731722 (contains!9917 (v!41993 (underlying!9340 thiss!42308)) lt!1523890))))

(assert (=> d!1266904 (= lt!1523890 (hash!858 (hashF!6506 thiss!42308) key!2048))))

(assert (=> d!1266904 (valid!3539 thiss!42308)))

(assert (=> d!1266904 (= (contains!9915 thiss!42308 key!2048) lt!1523892)))

(declare-fun b!4302220 () Bool)

(declare-fun e!2674535 () Unit!66974)

(declare-fun Unit!66977 () Unit!66974)

(assert (=> b!4302220 (= e!2674535 Unit!66977)))

(declare-fun b!4302221 () Bool)

(declare-fun e!2674532 () Bool)

(assert (=> b!4302221 (= e!2674532 call!296682)))

(declare-fun b!4302222 () Bool)

(assert (=> b!4302222 false))

(declare-fun lt!1523883 () Unit!66974)

(declare-fun lt!1523875 () Unit!66974)

(assert (=> b!4302222 (= lt!1523883 lt!1523875)))

(declare-fun lt!1523886 () ListLongMap!843)

(assert (=> b!4302222 (contains!9918 (extractMap!280 (toList!2236 lt!1523886)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!113 (ListLongMap!843 K!9134 Hashable!4471) Unit!66974)

(assert (=> b!4302222 (= lt!1523875 (lemmaInLongMapThenInGenericMap!113 lt!1523886 key!2048 (hashF!6506 thiss!42308)))))

(assert (=> b!4302222 (= lt!1523886 call!296687)))

(declare-fun Unit!66978 () Unit!66974)

(assert (=> b!4302222 (= e!2674537 Unit!66978)))

(declare-fun bm!296681 () Bool)

(declare-fun apply!10900 (ListLongMap!843 (_ BitVec 64)) List!48120)

(assert (=> bm!296681 (= call!296686 (apply!10900 (ite c!731720 lt!1523880 call!296687) call!296684))))

(declare-fun b!4302223 () Bool)

(assert (=> b!4302223 false))

(declare-fun lt!1523891 () Unit!66974)

(declare-fun lt!1523884 () Unit!66974)

(assert (=> b!4302223 (= lt!1523891 lt!1523884)))

(declare-fun lt!1523889 () List!48121)

(declare-fun lt!1523879 () List!48120)

(declare-fun contains!9919 (List!48121 tuple2!46054) Bool)

(assert (=> b!4302223 (contains!9919 lt!1523889 (tuple2!46055 lt!1523890 lt!1523879))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!119 (List!48121 (_ BitVec 64) List!48120) Unit!66974)

(assert (=> b!4302223 (= lt!1523884 (lemmaGetValueByKeyImpliesContainsTuple!119 lt!1523889 lt!1523890 lt!1523879))))

(assert (=> b!4302223 (= lt!1523879 (apply!10898 (v!41993 (underlying!9340 thiss!42308)) lt!1523890))))

(assert (=> b!4302223 (= lt!1523889 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))))))

(declare-fun lt!1523877 () Unit!66974)

(declare-fun lt!1523888 () Unit!66974)

(assert (=> b!4302223 (= lt!1523877 lt!1523888)))

(declare-fun lt!1523874 () List!48121)

(declare-fun isDefined!7485 (Option!10175) Bool)

(assert (=> b!4302223 (isDefined!7485 (getValueByKey!221 lt!1523874 lt!1523890))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!148 (List!48121 (_ BitVec 64)) Unit!66974)

(assert (=> b!4302223 (= lt!1523888 (lemmaContainsKeyImpliesGetValueByKeyDefined!148 lt!1523874 lt!1523890))))

(assert (=> b!4302223 (= lt!1523874 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))))))

(declare-fun lt!1523882 () Unit!66974)

(declare-fun lt!1523885 () Unit!66974)

(assert (=> b!4302223 (= lt!1523882 lt!1523885)))

(declare-fun lt!1523876 () List!48121)

(declare-fun containsKey!249 (List!48121 (_ BitVec 64)) Bool)

(assert (=> b!4302223 (containsKey!249 lt!1523876 lt!1523890)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!114 (List!48121 (_ BitVec 64)) Unit!66974)

(assert (=> b!4302223 (= lt!1523885 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!114 lt!1523876 lt!1523890))))

(assert (=> b!4302223 (= lt!1523876 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))))))

(declare-fun Unit!66979 () Unit!66974)

(assert (=> b!4302223 (= e!2674535 Unit!66979)))

(declare-fun b!4302224 () Bool)

(declare-fun Unit!66980 () Unit!66974)

(assert (=> b!4302224 (= e!2674533 Unit!66980)))

(declare-fun b!4302225 () Bool)

(assert (=> b!4302225 (= e!2674534 (isDefined!7484 (getPair!113 (apply!10898 (v!41993 (underlying!9340 thiss!42308)) lt!1523890) key!2048)))))

(declare-fun forallContained!1475 (List!48121 Int tuple2!46054) Unit!66974)

(assert (=> b!4302226 (= e!2674533 (forallContained!1475 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))) lambda!132091 (tuple2!46055 lt!1523890 (apply!10898 (v!41993 (underlying!9340 thiss!42308)) lt!1523890))))))

(declare-fun c!731723 () Bool)

(assert (=> b!4302226 (= c!731723 (not (contains!9919 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308)))) (tuple2!46055 lt!1523890 (apply!10898 (v!41993 (underlying!9340 thiss!42308)) lt!1523890)))))))

(declare-fun lt!1523878 () Unit!66974)

(assert (=> b!4302226 (= lt!1523878 e!2674535)))

(declare-fun b!4302227 () Bool)

(declare-fun lt!1523887 () Unit!66974)

(assert (=> b!4302227 (= e!2674536 lt!1523887)))

(assert (=> b!4302227 (= lt!1523880 call!296687)))

(declare-fun lemmaInGenericMapThenInLongMap!113 (ListLongMap!843 K!9134 Hashable!4471) Unit!66974)

(assert (=> b!4302227 (= lt!1523887 (lemmaInGenericMapThenInLongMap!113 lt!1523880 key!2048 (hashF!6506 thiss!42308)))))

(declare-fun res!1763187 () Bool)

(assert (=> b!4302227 (= res!1763187 call!296685)))

(assert (=> b!4302227 (=> (not res!1763187) (not e!2674532))))

(assert (=> b!4302227 e!2674532))

(declare-fun bm!296682 () Bool)

(assert (=> bm!296682 (= call!296684 (hash!858 (hashF!6506 thiss!42308) key!2048))))

(declare-fun b!4302228 () Bool)

(assert (=> b!4302228 (= e!2674536 e!2674537)))

(declare-fun res!1763188 () Bool)

(assert (=> b!4302228 (= res!1763188 call!296685)))

(declare-fun e!2674538 () Bool)

(assert (=> b!4302228 (=> (not res!1763188) (not e!2674538))))

(declare-fun c!731721 () Bool)

(assert (=> b!4302228 (= c!731721 e!2674538)))

(declare-fun b!4302229 () Bool)

(assert (=> b!4302229 (= e!2674538 call!296682)))

(assert (= (and d!1266904 c!731722) b!4302226))

(assert (= (and d!1266904 (not c!731722)) b!4302224))

(assert (= (and b!4302226 c!731723) b!4302223))

(assert (= (and b!4302226 (not c!731723)) b!4302220))

(assert (= (and d!1266904 c!731720) b!4302227))

(assert (= (and d!1266904 (not c!731720)) b!4302228))

(assert (= (and b!4302227 res!1763187) b!4302221))

(assert (= (and b!4302228 res!1763188) b!4302229))

(assert (= (and b!4302228 c!731721) b!4302222))

(assert (= (and b!4302228 (not c!731721)) b!4302219))

(assert (= (or b!4302227 b!4302228 b!4302229 b!4302222) bm!296678))

(assert (= (or b!4302227 b!4302221 b!4302228 b!4302229) bm!296682))

(assert (= (or b!4302227 b!4302228) bm!296680))

(assert (= (or b!4302221 b!4302229) bm!296681))

(assert (= (or b!4302221 b!4302229) bm!296677))

(assert (= (or b!4302221 b!4302229) bm!296679))

(assert (= (and d!1266904 res!1763189) b!4302225))

(declare-fun m!4894309 () Bool)

(assert (=> bm!296680 m!4894309))

(declare-fun m!4894311 () Bool)

(assert (=> b!4302222 m!4894311))

(assert (=> b!4302222 m!4894311))

(declare-fun m!4894313 () Bool)

(assert (=> b!4302222 m!4894313))

(declare-fun m!4894315 () Bool)

(assert (=> b!4302222 m!4894315))

(declare-fun m!4894317 () Bool)

(assert (=> b!4302227 m!4894317))

(assert (=> bm!296678 m!4894215))

(declare-fun m!4894319 () Bool)

(assert (=> b!4302223 m!4894319))

(declare-fun m!4894321 () Bool)

(assert (=> b!4302223 m!4894321))

(declare-fun m!4894323 () Bool)

(assert (=> b!4302223 m!4894323))

(declare-fun m!4894325 () Bool)

(assert (=> b!4302223 m!4894325))

(declare-fun m!4894327 () Bool)

(assert (=> b!4302223 m!4894327))

(assert (=> b!4302223 m!4894321))

(declare-fun m!4894329 () Bool)

(assert (=> b!4302223 m!4894329))

(declare-fun m!4894331 () Bool)

(assert (=> b!4302223 m!4894331))

(declare-fun m!4894333 () Bool)

(assert (=> b!4302223 m!4894333))

(assert (=> b!4302223 m!4894215))

(declare-fun m!4894335 () Bool)

(assert (=> bm!296679 m!4894335))

(declare-fun m!4894337 () Bool)

(assert (=> d!1266904 m!4894337))

(declare-fun m!4894339 () Bool)

(assert (=> d!1266904 m!4894339))

(assert (=> d!1266904 m!4894225))

(assert (=> d!1266904 m!4894233))

(assert (=> d!1266904 m!4894217))

(declare-fun m!4894341 () Bool)

(assert (=> d!1266904 m!4894341))

(assert (=> d!1266904 m!4894337))

(assert (=> d!1266904 m!4894215))

(assert (=> d!1266904 m!4894217))

(declare-fun m!4894343 () Bool)

(assert (=> d!1266904 m!4894343))

(declare-fun m!4894345 () Bool)

(assert (=> bm!296681 m!4894345))

(assert (=> b!4302225 m!4894325))

(assert (=> b!4302225 m!4894325))

(declare-fun m!4894347 () Bool)

(assert (=> b!4302225 m!4894347))

(assert (=> b!4302225 m!4894347))

(declare-fun m!4894349 () Bool)

(assert (=> b!4302225 m!4894349))

(declare-fun m!4894351 () Bool)

(assert (=> bm!296677 m!4894351))

(assert (=> bm!296682 m!4894225))

(assert (=> b!4302226 m!4894215))

(assert (=> b!4302226 m!4894325))

(declare-fun m!4894353 () Bool)

(assert (=> b!4302226 m!4894353))

(declare-fun m!4894355 () Bool)

(assert (=> b!4302226 m!4894355))

(assert (=> b!4302126 d!1266904))

(declare-fun d!1266906 () Bool)

(declare-fun map!9959 (LongMapFixedSize!9110) ListLongMap!843)

(assert (=> d!1266906 (= (map!9957 (v!41993 (underlying!9340 thiss!42308))) (map!9959 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308))))))))

(declare-fun bs!604095 () Bool)

(assert (= bs!604095 d!1266906))

(declare-fun m!4894357 () Bool)

(assert (=> bs!604095 m!4894357))

(assert (=> b!4302126 d!1266906))

(declare-fun d!1266908 () Bool)

(declare-fun lt!1523895 () ListMap!1523)

(declare-fun invariantList!552 (List!48120) Bool)

(assert (=> d!1266908 (invariantList!552 (toList!2237 lt!1523895))))

(assert (=> d!1266908 (= lt!1523895 (extractMap!280 (toList!2236 (map!9957 (v!41993 (underlying!9340 thiss!42308))))))))

(assert (=> d!1266908 (valid!3539 thiss!42308)))

(assert (=> d!1266908 (= (map!9958 thiss!42308) lt!1523895)))

(declare-fun bs!604096 () Bool)

(assert (= bs!604096 d!1266908))

(declare-fun m!4894359 () Bool)

(assert (=> bs!604096 m!4894359))

(assert (=> bs!604096 m!4894215))

(assert (=> bs!604096 m!4894337))

(assert (=> bs!604096 m!4894233))

(assert (=> b!4302126 d!1266908))

(declare-fun mapNonEmpty!20440 () Bool)

(declare-fun mapRes!20440 () Bool)

(declare-fun tp!1321971 () Bool)

(declare-fun e!2674543 () Bool)

(assert (=> mapNonEmpty!20440 (= mapRes!20440 (and tp!1321971 e!2674543))))

(declare-fun mapKey!20440 () (_ BitVec 32))

(declare-fun mapRest!20440 () (Array (_ BitVec 32) List!48120))

(declare-fun mapValue!20440 () List!48120)

(assert (=> mapNonEmpty!20440 (= mapRest!20437 (store mapRest!20440 mapKey!20440 mapValue!20440))))

(declare-fun tp!1321972 () Bool)

(declare-fun b!4302237 () Bool)

(declare-fun e!2674544 () Bool)

(assert (=> b!4302237 (= e!2674544 (and tp_is_empty!23359 tp_is_empty!23361 tp!1321972))))

(declare-fun mapIsEmpty!20440 () Bool)

(assert (=> mapIsEmpty!20440 mapRes!20440))

(declare-fun condMapEmpty!20440 () Bool)

(declare-fun mapDefault!20440 () List!48120)

(assert (=> mapNonEmpty!20437 (= condMapEmpty!20440 (= mapRest!20437 ((as const (Array (_ BitVec 32) List!48120)) mapDefault!20440)))))

(assert (=> mapNonEmpty!20437 (= tp!1321962 (and e!2674544 mapRes!20440))))

(declare-fun b!4302236 () Bool)

(declare-fun tp!1321973 () Bool)

(assert (=> b!4302236 (= e!2674543 (and tp_is_empty!23359 tp_is_empty!23361 tp!1321973))))

(assert (= (and mapNonEmpty!20437 condMapEmpty!20440) mapIsEmpty!20440))

(assert (= (and mapNonEmpty!20437 (not condMapEmpty!20440)) mapNonEmpty!20440))

(assert (= (and mapNonEmpty!20440 ((_ is Cons!47996) mapValue!20440)) b!4302236))

(assert (= (and mapNonEmpty!20437 ((_ is Cons!47996) mapDefault!20440)) b!4302237))

(declare-fun m!4894361 () Bool)

(assert (=> mapNonEmpty!20440 m!4894361))

(declare-fun e!2674547 () Bool)

(declare-fun tp!1321976 () Bool)

(declare-fun b!4302242 () Bool)

(assert (=> b!4302242 (= e!2674547 (and tp_is_empty!23359 tp_is_empty!23361 tp!1321976))))

(assert (=> mapNonEmpty!20437 (= tp!1321961 e!2674547)))

(assert (= (and mapNonEmpty!20437 ((_ is Cons!47996) mapValue!20437)) b!4302242))

(declare-fun b!4302243 () Bool)

(declare-fun e!2674548 () Bool)

(declare-fun tp!1321977 () Bool)

(assert (=> b!4302243 (= e!2674548 (and tp_is_empty!23359 tp_is_empty!23361 tp!1321977))))

(assert (=> b!4302130 (= tp!1321963 e!2674548)))

(assert (= (and b!4302130 ((_ is Cons!47996) (zeroValue!4814 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308))))))) b!4302243))

(declare-fun e!2674549 () Bool)

(declare-fun tp!1321978 () Bool)

(declare-fun b!4302244 () Bool)

(assert (=> b!4302244 (= e!2674549 (and tp_is_empty!23359 tp_is_empty!23361 tp!1321978))))

(assert (=> b!4302130 (= tp!1321964 e!2674549)))

(assert (= (and b!4302130 ((_ is Cons!47996) (minValue!4814 (v!41992 (underlying!9339 (v!41993 (underlying!9340 thiss!42308))))))) b!4302244))

(declare-fun e!2674550 () Bool)

(declare-fun b!4302245 () Bool)

(declare-fun tp!1321979 () Bool)

(assert (=> b!4302245 (= e!2674550 (and tp_is_empty!23359 tp_is_empty!23361 tp!1321979))))

(assert (=> b!4302131 (= tp!1321960 e!2674550)))

(assert (= (and b!4302131 ((_ is Cons!47996) mapDefault!20437)) b!4302245))

(declare-fun b_lambda!126441 () Bool)

(assert (= b_lambda!126439 (or (and b!4302130 b_free!128179) b_lambda!126441)))

(check-sat (not b_next!128883) (not tb!257255) (not b!4302137) (not d!1266880) (not b!4302236) (not b!4302194) (not d!1266876) (not d!1266896) (not bm!296677) (not b!4302226) (not b!4302192) (not d!1266898) (not b!4302157) (not b!4302225) (not b!4302136) b_and!339567 (not b!4302156) (not b!4302223) (not d!1266882) (not bm!296664) (not b!4302243) (not bm!296681) (not bm!296678) (not b!4302181) (not b!4302159) (not b!4302245) (not bm!296679) tp_is_empty!23359 (not b!4302175) (not d!1266884) (not b!4302222) (not b!4302242) (not b!4302227) b_and!339565 (not d!1266886) (not bm!296680) (not b!4302237) (not d!1266894) (not b_next!128885) (not b!4302193) (not d!1266878) (not d!1266890) (not mapNonEmpty!20440) (not d!1266906) (not b!4302158) (not b!4302191) (not b!4302162) (not bm!296682) (not bm!296663) (not b_lambda!126441) (not d!1266908) (not d!1266904) tp_is_empty!23361 (not b!4302244))
(check-sat b_and!339567 b_and!339565 (not b_next!128885) (not b_next!128883))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46588 () Bool)

(assert start!46588)

(declare-fun b!514265 () Bool)

(declare-fun b_free!13403 () Bool)

(declare-fun b_next!13403 () Bool)

(assert (=> b!514265 (= b_free!13403 (not b_next!13403))))

(declare-fun tp!160279 () Bool)

(declare-fun b_and!50835 () Bool)

(assert (=> b!514265 (= tp!160279 b_and!50835)))

(declare-fun b_free!13405 () Bool)

(declare-fun b_next!13405 () Bool)

(assert (=> start!46588 (= b_free!13405 (not b_next!13405))))

(declare-fun tp!160278 () Bool)

(declare-fun b_and!50837 () Bool)

(assert (=> start!46588 (= tp!160278 b_and!50837)))

(declare-fun b!514277 () Bool)

(declare-fun b_free!13407 () Bool)

(declare-fun b_next!13407 () Bool)

(assert (=> b!514277 (= b_free!13407 (not b_next!13407))))

(declare-fun tp!160282 () Bool)

(declare-fun b_and!50839 () Bool)

(assert (=> b!514277 (= tp!160282 b_and!50839)))

(declare-fun e!307410 () Bool)

(declare-fun tp!160283 () Bool)

(declare-fun e!307404 () Bool)

(declare-datatypes ((V!1440 0))(
  ( (V!1441 (val!1737 Int)) )
))
(declare-datatypes ((K!1342 0))(
  ( (K!1343 (val!1738 Int)) )
))
(declare-datatypes ((tuple2!5632 0))(
  ( (tuple2!5633 (_1!3032 K!1342) (_2!3032 V!1440)) )
))
(declare-datatypes ((List!4688 0))(
  ( (Nil!4678) (Cons!4678 (h!10075 tuple2!5632) (t!73216 List!4688)) )
))
(declare-datatypes ((array!1877 0))(
  ( (array!1878 (arr!866 (Array (_ BitVec 32) List!4688)) (size!3800 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!463 0))(
  ( (HashableExt!462 (__x!3364 Int)) )
))
(declare-datatypes ((array!1879 0))(
  ( (array!1880 (arr!867 (Array (_ BitVec 32) (_ BitVec 64))) (size!3801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!982 0))(
  ( (LongMapFixedSize!983 (defaultEntry!842 Int) (mask!1901 (_ BitVec 32)) (extraKeys!737 (_ BitVec 32)) (zeroValue!747 List!4688) (minValue!747 List!4688) (_size!1091 (_ BitVec 32)) (_keys!782 array!1879) (_values!769 array!1877) (_vacant!552 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1905 0))(
  ( (Cell!1906 (v!15699 LongMapFixedSize!982)) )
))
(declare-datatypes ((MutLongMap!491 0))(
  ( (LongMap!491 (underlying!1161 Cell!1905)) (MutLongMapExt!490 (__x!3365 Int)) )
))
(declare-datatypes ((Cell!1907 0))(
  ( (Cell!1908 (v!15700 MutLongMap!491)) )
))
(declare-datatypes ((MutableMap!463 0))(
  ( (MutableMapExt!462 (__x!3366 Int)) (HashMap!463 (underlying!1162 Cell!1907) (hashF!2339 Hashable!463) (_size!1092 (_ BitVec 32)) (defaultValue!612 Int)) )
))
(declare-fun hm!65 () MutableMap!463)

(declare-fun tp!160280 () Bool)

(declare-fun array_inv!627 (array!1879) Bool)

(declare-fun array_inv!628 (array!1877) Bool)

(assert (=> b!514265 (= e!307410 (and tp!160279 tp!160283 tp!160280 (array_inv!627 (_keys!782 (v!15699 (underlying!1161 (v!15700 (underlying!1162 hm!65)))))) (array_inv!628 (_values!769 (v!15699 (underlying!1161 (v!15700 (underlying!1162 hm!65)))))) e!307404))))

(declare-fun b!514266 () Bool)

(declare-fun e!307412 () Bool)

(declare-fun e!307406 () Bool)

(declare-fun lt!212923 () MutLongMap!491)

(get-info :version)

(assert (=> b!514266 (= e!307412 (and e!307406 ((_ is LongMap!491) lt!212923)))))

(assert (=> b!514266 (= lt!212923 (v!15700 (underlying!1162 hm!65)))))

(declare-fun b!514267 () Bool)

(declare-fun e!307402 () Bool)

(declare-fun e!307403 () Bool)

(assert (=> b!514267 (= e!307402 e!307403)))

(declare-fun res!218049 () Bool)

(assert (=> b!514267 (=> (not res!218049) (not e!307403))))

(declare-datatypes ((tuple2!5634 0))(
  ( (tuple2!5635 (_1!3033 Bool) (_2!3033 MutableMap!463)) )
))
(declare-fun lt!212925 () tuple2!5634)

(declare-fun valid!447 (MutableMap!463) Bool)

(assert (=> b!514267 (= res!218049 (valid!447 (_2!3033 lt!212925)))))

(declare-fun k0!1740 () K!1342)

(declare-fun remove!16 (MutableMap!463 K!1342) tuple2!5634)

(assert (=> b!514267 (= lt!212925 (remove!16 hm!65 k0!1740))))

(declare-datatypes ((ListMap!135 0))(
  ( (ListMap!136 (toList!382 List!4688)) )
))
(declare-fun lt!212927 () ListMap!135)

(declare-fun lt!212924 () ListMap!135)

(declare-fun -!13 (ListMap!135 K!1342) ListMap!135)

(assert (=> b!514267 (= lt!212927 (-!13 lt!212924 k0!1740))))

(declare-fun b!514268 () Bool)

(declare-fun e!307411 () Bool)

(assert (=> b!514268 (= e!307403 e!307411)))

(declare-fun res!218048 () Bool)

(assert (=> b!514268 (=> (not res!218048) (not e!307411))))

(declare-fun lt!212926 () ListMap!135)

(declare-fun invariantList!47 (List!4688) Bool)

(assert (=> b!514268 (= res!218048 (invariantList!47 (toList!382 lt!212926)))))

(declare-fun map!987 (MutableMap!463) ListMap!135)

(assert (=> b!514268 (= lt!212926 (map!987 (_2!3033 lt!212925)))))

(declare-fun b!514269 () Bool)

(declare-fun res!218050 () Bool)

(assert (=> b!514269 (=> (not res!218050) (not e!307411))))

(assert (=> b!514269 (= res!218050 (invariantList!47 (toList!382 lt!212924)))))

(declare-fun res!218053 () Bool)

(declare-fun e!307405 () Bool)

(assert (=> start!46588 (=> (not res!218053) (not e!307405))))

(assert (=> start!46588 (= res!218053 ((_ is HashMap!463) hm!65))))

(assert (=> start!46588 e!307405))

(declare-fun e!307407 () Bool)

(assert (=> start!46588 e!307407))

(assert (=> start!46588 tp!160278))

(declare-fun tp_is_empty!2549 () Bool)

(assert (=> start!46588 tp_is_empty!2549))

(declare-fun mapIsEmpty!1894 () Bool)

(declare-fun mapRes!1894 () Bool)

(assert (=> mapIsEmpty!1894 mapRes!1894))

(declare-fun b!514270 () Bool)

(declare-fun res!218047 () Bool)

(assert (=> b!514270 (=> (not res!218047) (not e!307411))))

(assert (=> b!514270 (= res!218047 (_1!3033 lt!212925))))

(declare-fun b!514271 () Bool)

(declare-fun res!218046 () Bool)

(assert (=> b!514271 (=> (not res!218046) (not e!307405))))

(assert (=> b!514271 (= res!218046 (valid!447 hm!65))))

(declare-fun b!514272 () Bool)

(declare-fun res!218051 () Bool)

(assert (=> b!514272 (=> (not res!218051) (not e!307411))))

(declare-fun eq!11 (ListMap!135 ListMap!135) Bool)

(assert (=> b!514272 (= res!218051 (eq!11 lt!212926 lt!212927))))

(declare-fun b!514273 () Bool)

(assert (=> b!514273 (= e!307411 false)))

(declare-fun b!514274 () Bool)

(declare-fun e!307408 () Bool)

(assert (=> b!514274 (= e!307406 e!307408)))

(declare-fun b!514275 () Bool)

(declare-fun res!218054 () Bool)

(assert (=> b!514275 (=> (not res!218054) (not e!307411))))

(assert (=> b!514275 (= res!218054 (invariantList!47 (toList!382 lt!212927)))))

(declare-fun b!514276 () Bool)

(assert (=> b!514276 (= e!307408 e!307410)))

(assert (=> b!514277 (= e!307407 (and e!307412 tp!160282))))

(declare-fun b!514278 () Bool)

(assert (=> b!514278 (= e!307405 e!307402)))

(declare-fun res!218052 () Bool)

(assert (=> b!514278 (=> (not res!218052) (not e!307402))))

(declare-fun p!6060 () Int)

(declare-fun forall!1366 (List!4688 Int) Bool)

(assert (=> b!514278 (= res!218052 (forall!1366 (toList!382 lt!212924) p!6060))))

(assert (=> b!514278 (= lt!212924 (map!987 hm!65))))

(declare-fun mapNonEmpty!1894 () Bool)

(declare-fun tp!160281 () Bool)

(declare-fun tp!160284 () Bool)

(assert (=> mapNonEmpty!1894 (= mapRes!1894 (and tp!160281 tp!160284))))

(declare-fun mapRest!1894 () (Array (_ BitVec 32) List!4688))

(declare-fun mapValue!1894 () List!4688)

(declare-fun mapKey!1894 () (_ BitVec 32))

(assert (=> mapNonEmpty!1894 (= (arr!866 (_values!769 (v!15699 (underlying!1161 (v!15700 (underlying!1162 hm!65)))))) (store mapRest!1894 mapKey!1894 mapValue!1894))))

(declare-fun b!514279 () Bool)

(declare-fun tp!160285 () Bool)

(assert (=> b!514279 (= e!307404 (and tp!160285 mapRes!1894))))

(declare-fun condMapEmpty!1894 () Bool)

(declare-fun mapDefault!1894 () List!4688)

(assert (=> b!514279 (= condMapEmpty!1894 (= (arr!866 (_values!769 (v!15699 (underlying!1161 (v!15700 (underlying!1162 hm!65)))))) ((as const (Array (_ BitVec 32) List!4688)) mapDefault!1894)))))

(assert (= (and start!46588 res!218053) b!514271))

(assert (= (and b!514271 res!218046) b!514278))

(assert (= (and b!514278 res!218052) b!514267))

(assert (= (and b!514267 res!218049) b!514268))

(assert (= (and b!514268 res!218048) b!514270))

(assert (= (and b!514270 res!218047) b!514272))

(assert (= (and b!514272 res!218051) b!514275))

(assert (= (and b!514275 res!218054) b!514269))

(assert (= (and b!514269 res!218050) b!514273))

(assert (= (and b!514279 condMapEmpty!1894) mapIsEmpty!1894))

(assert (= (and b!514279 (not condMapEmpty!1894)) mapNonEmpty!1894))

(assert (= b!514265 b!514279))

(assert (= b!514276 b!514265))

(assert (= b!514274 b!514276))

(assert (= (and b!514266 ((_ is LongMap!491) (v!15700 (underlying!1162 hm!65)))) b!514274))

(assert (= b!514277 b!514266))

(assert (= (and start!46588 ((_ is HashMap!463) hm!65)) b!514277))

(declare-fun m!760299 () Bool)

(assert (=> mapNonEmpty!1894 m!760299))

(declare-fun m!760301 () Bool)

(assert (=> b!514268 m!760301))

(declare-fun m!760303 () Bool)

(assert (=> b!514268 m!760303))

(declare-fun m!760305 () Bool)

(assert (=> b!514271 m!760305))

(declare-fun m!760307 () Bool)

(assert (=> b!514275 m!760307))

(declare-fun m!760309 () Bool)

(assert (=> b!514278 m!760309))

(declare-fun m!760311 () Bool)

(assert (=> b!514278 m!760311))

(declare-fun m!760313 () Bool)

(assert (=> b!514272 m!760313))

(declare-fun m!760315 () Bool)

(assert (=> b!514269 m!760315))

(declare-fun m!760317 () Bool)

(assert (=> b!514265 m!760317))

(declare-fun m!760319 () Bool)

(assert (=> b!514265 m!760319))

(declare-fun m!760321 () Bool)

(assert (=> b!514267 m!760321))

(declare-fun m!760323 () Bool)

(assert (=> b!514267 m!760323))

(declare-fun m!760325 () Bool)

(assert (=> b!514267 m!760325))

(check-sat (not b!514279) (not b!514272) (not b_next!13403) (not b!514267) b_and!50837 b_and!50839 (not b!514265) (not b_next!13407) (not mapNonEmpty!1894) (not b!514268) tp_is_empty!2549 (not b!514275) (not b!514269) (not b!514278) b_and!50835 (not b!514271) (not b_next!13405))
(check-sat (not b_next!13403) b_and!50837 b_and!50839 b_and!50835 (not b_next!13407) (not b_next!13405))

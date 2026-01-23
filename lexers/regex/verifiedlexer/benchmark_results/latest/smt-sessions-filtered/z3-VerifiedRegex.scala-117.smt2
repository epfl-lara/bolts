; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!872 () Bool)

(assert start!872)

(declare-fun b!27426 () Bool)

(declare-fun b_free!13 () Bool)

(declare-fun b_next!13 () Bool)

(assert (=> b!27426 (= b_free!13 (not b_next!13))))

(declare-fun tp!18863 () Bool)

(declare-fun b_and!13 () Bool)

(assert (=> b!27426 (= tp!18863 b_and!13)))

(declare-fun b!27421 () Bool)

(declare-fun b_free!15 () Bool)

(declare-fun b_next!15 () Bool)

(assert (=> b!27421 (= b_free!15 (not b_next!15))))

(declare-fun tp!18861 () Bool)

(declare-fun b_and!15 () Bool)

(assert (=> b!27421 (= tp!18861 b_and!15)))

(declare-fun b!27419 () Bool)

(declare-fun e!10962 () Bool)

(declare-fun e!10956 () Bool)

(assert (=> b!27419 (= e!10962 e!10956)))

(declare-fun b!27420 () Bool)

(declare-fun res!25640 () Bool)

(declare-fun e!10960 () Bool)

(assert (=> b!27420 (=> (not res!25640) (not e!10960))))

(declare-datatypes ((K!450 0))(
  ( (K!451 (val!146 Int)) )
))
(declare-datatypes ((V!496 0))(
  ( (V!497 (val!147 Int)) )
))
(declare-datatypes ((tuple2!6 0))(
  ( (tuple2!7 (_1!3 K!450) (_2!3 V!496)) )
))
(declare-datatypes ((List!127 0))(
  ( (Nil!125) (Cons!125 (h!5521 tuple2!6) (t!14606 List!127)) )
))
(declare-datatypes ((array!15 0))(
  ( (array!16 (arr!38 (Array (_ BitVec 32) (_ BitVec 64))) (size!236 (_ BitVec 32))) )
))
(declare-datatypes ((array!17 0))(
  ( (array!18 (arr!39 (Array (_ BitVec 32) List!127)) (size!237 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10 0))(
  ( (LongMapFixedSize!11 (defaultEntry!338 Int) (mask!639 (_ BitVec 32)) (extraKeys!250 (_ BitVec 32)) (zeroValue!260 List!127) (minValue!260 List!127) (_size!146 (_ BitVec 32)) (_keys!293 array!15) (_values!282 array!17) (_vacant!65 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17 0))(
  ( (Cell!18 (v!11903 LongMapFixedSize!10)) )
))
(declare-datatypes ((Hashable!5 0))(
  ( (HashableExt!4 (__x!382 Int)) )
))
(declare-datatypes ((MutLongMap!5 0))(
  ( (LongMap!5 (underlying!209 Cell!17)) (MutLongMapExt!4 (__x!383 Int)) )
))
(declare-datatypes ((Cell!19 0))(
  ( (Cell!20 (v!11904 MutLongMap!5)) )
))
(declare-datatypes ((MutableMap!5 0))(
  ( (MutableMapExt!4 (__x!384 Int)) (HashMap!5 (underlying!210 Cell!19) (hashF!1865 Hashable!5) (_size!147 (_ BitVec 32)) (defaultValue!151 Int)) )
))
(declare-fun thiss!47677 () MutableMap!5)

(get-info :version)

(assert (=> b!27420 (= res!25640 (not ((_ is MutableMapExt!4) thiss!47677)))))

(declare-fun res!25639 () Bool)

(assert (=> start!872 (=> (not res!25639) (not e!10960))))

(declare-fun valid!15 (MutableMap!5) Bool)

(assert (=> start!872 (= res!25639 (valid!15 thiss!47677))))

(assert (=> start!872 e!10960))

(declare-fun e!10957 () Bool)

(assert (=> start!872 e!10957))

(declare-fun e!10963 () Bool)

(assert (=> b!27421 (= e!10957 (and e!10963 tp!18861))))

(declare-fun b!27422 () Bool)

(declare-fun e!10959 () Bool)

(assert (=> b!27422 (= e!10956 e!10959)))

(declare-fun b!27423 () Bool)

(declare-fun lt!1115 () MutLongMap!5)

(assert (=> b!27423 (= e!10963 (and e!10962 ((_ is LongMap!5) lt!1115)))))

(assert (=> b!27423 (= lt!1115 (v!11904 (underlying!210 thiss!47677)))))

(declare-fun b!27424 () Bool)

(declare-fun valid!16 (MutableMap!5) Bool)

(assert (=> b!27424 (= e!10960 (not (valid!16 thiss!47677)))))

(declare-fun b!27425 () Bool)

(declare-fun e!10958 () Bool)

(declare-fun tp!18860 () Bool)

(declare-fun mapRes!11 () Bool)

(assert (=> b!27425 (= e!10958 (and tp!18860 mapRes!11))))

(declare-fun condMapEmpty!11 () Bool)

(declare-fun mapDefault!11 () List!127)

(assert (=> b!27425 (= condMapEmpty!11 (= (arr!39 (_values!282 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) ((as const (Array (_ BitVec 32) List!127)) mapDefault!11)))))

(declare-fun tp!18865 () Bool)

(declare-fun tp!18862 () Bool)

(declare-fun array_inv!5 (array!15) Bool)

(declare-fun array_inv!6 (array!17) Bool)

(assert (=> b!27426 (= e!10959 (and tp!18863 tp!18862 tp!18865 (array_inv!5 (_keys!293 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) (array_inv!6 (_values!282 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) e!10958))))

(declare-fun mapNonEmpty!11 () Bool)

(declare-fun tp!18859 () Bool)

(declare-fun tp!18864 () Bool)

(assert (=> mapNonEmpty!11 (= mapRes!11 (and tp!18859 tp!18864))))

(declare-fun mapKey!11 () (_ BitVec 32))

(declare-fun mapRest!11 () (Array (_ BitVec 32) List!127))

(declare-fun mapValue!11 () List!127)

(assert (=> mapNonEmpty!11 (= (arr!39 (_values!282 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) (store mapRest!11 mapKey!11 mapValue!11))))

(declare-fun mapIsEmpty!11 () Bool)

(assert (=> mapIsEmpty!11 mapRes!11))

(assert (= (and start!872 res!25639) b!27420))

(assert (= (and b!27420 res!25640) b!27424))

(assert (= (and b!27425 condMapEmpty!11) mapIsEmpty!11))

(assert (= (and b!27425 (not condMapEmpty!11)) mapNonEmpty!11))

(assert (= b!27426 b!27425))

(assert (= b!27422 b!27426))

(assert (= b!27419 b!27422))

(assert (= (and b!27423 ((_ is LongMap!5) (v!11904 (underlying!210 thiss!47677)))) b!27419))

(assert (= b!27421 b!27423))

(assert (= (and start!872 ((_ is HashMap!5) thiss!47677)) b!27421))

(declare-fun m!4189 () Bool)

(assert (=> start!872 m!4189))

(declare-fun m!4191 () Bool)

(assert (=> b!27424 m!4191))

(declare-fun m!4193 () Bool)

(assert (=> b!27426 m!4193))

(declare-fun m!4195 () Bool)

(assert (=> b!27426 m!4195))

(declare-fun m!4197 () Bool)

(assert (=> mapNonEmpty!11 m!4197))

(check-sat (not b_next!15) (not start!872) (not b!27424) (not b!27425) (not b!27426) b_and!15 b_and!13 (not b_next!13) (not mapNonEmpty!11))
(check-sat b_and!13 b_and!15 (not b_next!13) (not b_next!15))
(get-model)

(declare-fun d!1836 () Bool)

(declare-fun c!14745 () Bool)

(assert (=> d!1836 (= c!14745 ((_ is MutableMapExt!4) thiss!47677))))

(declare-fun e!10966 () Bool)

(assert (=> d!1836 (= (valid!15 thiss!47677) e!10966)))

(declare-fun b!27431 () Bool)

(declare-fun valid!17 (MutableMap!5) Bool)

(assert (=> b!27431 (= e!10966 (valid!17 thiss!47677))))

(declare-fun b!27432 () Bool)

(assert (=> b!27432 (= e!10966 (valid!16 thiss!47677))))

(assert (= (and d!1836 c!14745) b!27431))

(assert (= (and d!1836 (not c!14745)) b!27432))

(declare-fun m!4199 () Bool)

(assert (=> b!27431 m!4199))

(assert (=> b!27432 m!4191))

(assert (=> start!872 d!1836))

(declare-fun d!1838 () Bool)

(assert (=> d!1838 (= (array_inv!5 (_keys!293 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) (bvsge (size!236 (_keys!293 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) #b00000000000000000000000000000000))))

(assert (=> b!27426 d!1838))

(declare-fun d!1840 () Bool)

(assert (=> d!1840 (= (array_inv!6 (_values!282 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) (bvsge (size!237 (_values!282 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677)))))) #b00000000000000000000000000000000))))

(assert (=> b!27426 d!1840))

(declare-fun d!1842 () Bool)

(declare-fun res!25645 () Bool)

(declare-fun e!10969 () Bool)

(assert (=> d!1842 (=> (not res!25645) (not e!10969))))

(declare-fun valid!18 (MutLongMap!5) Bool)

(assert (=> d!1842 (= res!25645 (valid!18 (v!11904 (underlying!210 thiss!47677))))))

(assert (=> d!1842 (= (valid!16 thiss!47677) e!10969)))

(declare-fun b!27437 () Bool)

(declare-fun res!25646 () Bool)

(assert (=> b!27437 (=> (not res!25646) (not e!10969))))

(declare-fun lambda!2 () Int)

(declare-datatypes ((tuple2!8 0))(
  ( (tuple2!9 (_1!4 (_ BitVec 64)) (_2!4 List!127)) )
))
(declare-datatypes ((List!128 0))(
  ( (Nil!126) (Cons!126 (h!5522 tuple2!8) (t!14607 List!128)) )
))
(declare-fun forall!11 (List!128 Int) Bool)

(declare-datatypes ((ListLongMap!5 0))(
  ( (ListLongMap!6 (toList!140 List!128)) )
))
(declare-fun map!142 (MutLongMap!5) ListLongMap!5)

(assert (=> b!27437 (= res!25646 (forall!11 (toList!140 (map!142 (v!11904 (underlying!210 thiss!47677)))) lambda!2))))

(declare-fun b!27438 () Bool)

(declare-fun allKeysSameHashInMap!1 (ListLongMap!5 Hashable!5) Bool)

(assert (=> b!27438 (= e!10969 (allKeysSameHashInMap!1 (map!142 (v!11904 (underlying!210 thiss!47677))) (hashF!1865 thiss!47677)))))

(assert (= (and d!1842 res!25645) b!27437))

(assert (= (and b!27437 res!25646) b!27438))

(declare-fun m!4201 () Bool)

(assert (=> d!1842 m!4201))

(declare-fun m!4203 () Bool)

(assert (=> b!27437 m!4203))

(declare-fun m!4205 () Bool)

(assert (=> b!27437 m!4205))

(assert (=> b!27438 m!4203))

(assert (=> b!27438 m!4203))

(declare-fun m!4207 () Bool)

(assert (=> b!27438 m!4207))

(assert (=> b!27424 d!1842))

(declare-fun mapIsEmpty!14 () Bool)

(declare-fun mapRes!14 () Bool)

(assert (=> mapIsEmpty!14 mapRes!14))

(declare-fun tp_is_empty!281 () Bool)

(declare-fun tp!18874 () Bool)

(declare-fun b!27445 () Bool)

(declare-fun e!10974 () Bool)

(declare-fun tp_is_empty!283 () Bool)

(assert (=> b!27445 (= e!10974 (and tp_is_empty!281 tp_is_empty!283 tp!18874))))

(declare-fun condMapEmpty!14 () Bool)

(declare-fun mapDefault!14 () List!127)

(assert (=> mapNonEmpty!11 (= condMapEmpty!14 (= mapRest!11 ((as const (Array (_ BitVec 32) List!127)) mapDefault!14)))))

(declare-fun e!10975 () Bool)

(assert (=> mapNonEmpty!11 (= tp!18859 (and e!10975 mapRes!14))))

(declare-fun mapNonEmpty!14 () Bool)

(declare-fun tp!18873 () Bool)

(assert (=> mapNonEmpty!14 (= mapRes!14 (and tp!18873 e!10974))))

(declare-fun mapRest!14 () (Array (_ BitVec 32) List!127))

(declare-fun mapKey!14 () (_ BitVec 32))

(declare-fun mapValue!14 () List!127)

(assert (=> mapNonEmpty!14 (= mapRest!11 (store mapRest!14 mapKey!14 mapValue!14))))

(declare-fun b!27446 () Bool)

(declare-fun tp!18872 () Bool)

(assert (=> b!27446 (= e!10975 (and tp_is_empty!281 tp_is_empty!283 tp!18872))))

(assert (= (and mapNonEmpty!11 condMapEmpty!14) mapIsEmpty!14))

(assert (= (and mapNonEmpty!11 (not condMapEmpty!14)) mapNonEmpty!14))

(assert (= (and mapNonEmpty!14 ((_ is Cons!125) mapValue!14)) b!27445))

(assert (= (and mapNonEmpty!11 ((_ is Cons!125) mapDefault!14)) b!27446))

(declare-fun m!4209 () Bool)

(assert (=> mapNonEmpty!14 m!4209))

(declare-fun b!27451 () Bool)

(declare-fun tp!18877 () Bool)

(declare-fun e!10978 () Bool)

(assert (=> b!27451 (= e!10978 (and tp_is_empty!281 tp_is_empty!283 tp!18877))))

(assert (=> mapNonEmpty!11 (= tp!18864 e!10978)))

(assert (= (and mapNonEmpty!11 ((_ is Cons!125) mapValue!11)) b!27451))

(declare-fun e!10979 () Bool)

(declare-fun tp!18878 () Bool)

(declare-fun b!27452 () Bool)

(assert (=> b!27452 (= e!10979 (and tp_is_empty!281 tp_is_empty!283 tp!18878))))

(assert (=> b!27426 (= tp!18862 e!10979)))

(assert (= (and b!27426 ((_ is Cons!125) (zeroValue!260 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677))))))) b!27452))

(declare-fun b!27453 () Bool)

(declare-fun e!10980 () Bool)

(declare-fun tp!18879 () Bool)

(assert (=> b!27453 (= e!10980 (and tp_is_empty!281 tp_is_empty!283 tp!18879))))

(assert (=> b!27426 (= tp!18865 e!10980)))

(assert (= (and b!27426 ((_ is Cons!125) (minValue!260 (v!11903 (underlying!209 (v!11904 (underlying!210 thiss!47677))))))) b!27453))

(declare-fun b!27454 () Bool)

(declare-fun tp!18880 () Bool)

(declare-fun e!10981 () Bool)

(assert (=> b!27454 (= e!10981 (and tp_is_empty!281 tp_is_empty!283 tp!18880))))

(assert (=> b!27425 (= tp!18860 e!10981)))

(assert (= (and b!27425 ((_ is Cons!125) mapDefault!11)) b!27454))

(check-sat (not b_next!15) tp_is_empty!281 (not b!27446) (not b!27431) (not b!27452) (not d!1842) b_and!15 (not mapNonEmpty!14) b_and!13 (not b!27454) (not b!27451) (not b_next!13) (not b!27432) (not b!27445) (not b!27453) tp_is_empty!283 (not b!27437) (not b!27438))
(check-sat b_and!13 b_and!15 (not b_next!13) (not b_next!15))

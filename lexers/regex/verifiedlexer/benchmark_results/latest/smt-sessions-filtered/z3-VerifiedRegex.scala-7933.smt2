; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413130 () Bool)

(assert start!413130)

(declare-fun b!4301824 () Bool)

(declare-fun b_free!128147 () Bool)

(declare-fun b_next!128851 () Bool)

(assert (=> b!4301824 (= b_free!128147 (not b_next!128851))))

(declare-fun tp!1321793 () Bool)

(declare-fun b_and!339531 () Bool)

(assert (=> b!4301824 (= tp!1321793 b_and!339531)))

(declare-fun b!4301821 () Bool)

(declare-fun b_free!128149 () Bool)

(declare-fun b_next!128853 () Bool)

(assert (=> b!4301821 (= b_free!128149 (not b_next!128853))))

(declare-fun tp!1321794 () Bool)

(declare-fun b_and!339533 () Bool)

(assert (=> b!4301821 (= tp!1321794 b_and!339533)))

(declare-fun b!4301841 () Bool)

(declare-fun e!2674209 () Bool)

(declare-fun e!2674210 () Bool)

(declare-datatypes ((V!9316 0))(
  ( (V!9317 (val!15549 Int)) )
))
(declare-datatypes ((K!9114 0))(
  ( (K!9115 (val!15550 Int)) )
))
(declare-datatypes ((tuple2!46010 0))(
  ( (tuple2!46011 (_1!26284 K!9114) (_2!26284 V!9316)) )
))
(declare-datatypes ((List!48107 0))(
  ( (Nil!47983) (Cons!47983 (h!53403 tuple2!46010) (t!354876 List!48107)) )
))
(declare-datatypes ((array!16310 0))(
  ( (array!16311 (arr!7279 (Array (_ BitVec 32) (_ BitVec 64))) (size!35318 (_ BitVec 32))) )
))
(declare-datatypes ((array!16312 0))(
  ( (array!16313 (arr!7280 (Array (_ BitVec 32) List!48107)) (size!35319 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9094 0))(
  ( (LongMapFixedSize!9095 (defaultEntry!4932 Int) (mask!13049 (_ BitVec 32)) (extraKeys!4796 (_ BitVec 32)) (zeroValue!4806 List!48107) (minValue!4806 List!48107) (_size!9137 (_ BitVec 32)) (_keys!4847 array!16310) (_values!4828 array!16312) (_vacant!4608 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17997 0))(
  ( (Cell!17998 (v!41976 LongMapFixedSize!9094)) )
))
(declare-datatypes ((MutLongMap!4547 0))(
  ( (LongMap!4547 (underlying!9323 Cell!17997)) (MutLongMapExt!4546 (__x!29666 Int)) )
))
(declare-fun lt!1523619 () MutLongMap!4547)

(get-info :version)

(assert (=> b!4301841 (= e!2674209 (and e!2674210 ((_ is LongMap!4547) lt!1523619)))))

(declare-datatypes ((Hashable!4463 0))(
  ( (HashableExt!4462 (__x!29667 Int)) )
))
(declare-datatypes ((Cell!17999 0))(
  ( (Cell!18000 (v!41977 MutLongMap!4547)) )
))
(declare-datatypes ((MutableMap!4453 0))(
  ( (MutableMapExt!4452 (__x!29668 Int)) (HashMap!4453 (underlying!9324 Cell!17999) (hashF!6498 Hashable!4463) (_size!9138 (_ BitVec 32)) (defaultValue!4624 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4453)

(assert (=> b!4301841 (= lt!1523619 (v!41977 (underlying!9324 thiss!42308)))))

(declare-fun b!4301842 () Bool)

(declare-fun e!2674211 () Bool)

(assert (=> b!4301842 (= e!2674211 e!2674209)))

(declare-fun b!4301843 () Bool)

(declare-fun e!2674212 () Bool)

(assert (=> b!4301843 (= e!2674212 true)))

(declare-fun b!4301844 () Bool)

(declare-fun e!2674208 () Bool)

(assert (=> b!4301844 (= e!2674210 e!2674208)))

(declare-fun b!4301845 () Bool)

(assert (=> b!4301845 (= e!2674208 e!2674212)))

(declare-fun b!4301817 () Bool)

(assert (=> b!4301817 e!2674211))

(assert (= b!4301845 b!4301843))

(assert (= b!4301844 b!4301845))

(assert (= (and b!4301841 ((_ is LongMap!4547) (v!41977 (underlying!9324 thiss!42308)))) b!4301844))

(assert (= b!4301842 b!4301841))

(assert (= (and b!4301817 ((_ is HashMap!4453) thiss!42308)) b!4301842))

(declare-fun lambda!132072 () Int)

(declare-fun order!25051 () Int)

(declare-fun order!25049 () Int)

(declare-fun dynLambda!20372 (Int Int) Int)

(declare-fun dynLambda!20373 (Int Int) Int)

(assert (=> b!4301843 (< (dynLambda!20372 order!25049 (defaultEntry!4932 (v!41976 (underlying!9323 (v!41977 (underlying!9324 thiss!42308)))))) (dynLambda!20373 order!25051 lambda!132072))))

(declare-fun order!25053 () Int)

(declare-fun dynLambda!20374 (Int Int) Int)

(assert (=> b!4301842 (< (dynLambda!20374 order!25053 (defaultValue!4624 thiss!42308)) (dynLambda!20373 order!25051 lambda!132072))))

(declare-fun res!1763046 () Bool)

(declare-fun e!2674196 () Bool)

(assert (=> b!4301817 (=> (not res!1763046) (not e!2674196))))

(declare-datatypes ((tuple2!46012 0))(
  ( (tuple2!46013 (_1!26285 (_ BitVec 64)) (_2!26285 List!48107)) )
))
(declare-datatypes ((List!48108 0))(
  ( (Nil!47984) (Cons!47984 (h!53404 tuple2!46012) (t!354877 List!48108)) )
))
(declare-datatypes ((ListLongMap!833 0))(
  ( (ListLongMap!834 (toList!2226 List!48108)) )
))
(declare-fun lt!1523616 () ListLongMap!833)

(declare-fun forall!8648 (List!48108 Int) Bool)

(assert (=> b!4301817 (= res!1763046 (forall!8648 (toList!2226 lt!1523616) lambda!132072))))

(declare-fun b!4301818 () Bool)

(declare-fun e!2674188 () Bool)

(declare-fun e!2674192 () Bool)

(assert (=> b!4301818 (= e!2674188 e!2674192)))

(declare-fun res!1763044 () Bool)

(declare-fun e!2674189 () Bool)

(assert (=> start!413130 (=> (not res!1763044) (not e!2674189))))

(assert (=> start!413130 (= res!1763044 ((_ is HashMap!4453) thiss!42308))))

(assert (=> start!413130 e!2674189))

(declare-fun e!2674194 () Bool)

(assert (=> start!413130 e!2674194))

(declare-fun tp_is_empty!23327 () Bool)

(assert (=> start!413130 tp_is_empty!23327))

(declare-fun tp_is_empty!23329 () Bool)

(assert (=> start!413130 tp_is_empty!23329))

(declare-fun mapIsEmpty!20413 () Bool)

(declare-fun mapRes!20413 () Bool)

(assert (=> mapIsEmpty!20413 mapRes!20413))

(declare-fun b!4301819 () Bool)

(declare-fun e!2674195 () Bool)

(declare-fun e!2674190 () Bool)

(declare-fun lt!1523614 () MutLongMap!4547)

(assert (=> b!4301819 (= e!2674195 (and e!2674190 ((_ is LongMap!4547) lt!1523614)))))

(assert (=> b!4301819 (= lt!1523614 (v!41977 (underlying!9324 thiss!42308)))))

(declare-fun b!4301820 () Bool)

(assert (=> b!4301820 (= e!2674190 e!2674188)))

(declare-fun mapNonEmpty!20413 () Bool)

(declare-fun tp!1321791 () Bool)

(declare-fun tp!1321790 () Bool)

(assert (=> mapNonEmpty!20413 (= mapRes!20413 (and tp!1321791 tp!1321790))))

(declare-fun mapRest!20413 () (Array (_ BitVec 32) List!48107))

(declare-fun mapKey!20413 () (_ BitVec 32))

(declare-fun mapValue!20413 () List!48107)

(assert (=> mapNonEmpty!20413 (= (arr!7280 (_values!4828 (v!41976 (underlying!9323 (v!41977 (underlying!9324 thiss!42308)))))) (store mapRest!20413 mapKey!20413 mapValue!20413))))

(assert (=> b!4301821 (= e!2674194 (and e!2674195 tp!1321794))))

(declare-fun b!4301822 () Bool)

(declare-fun res!1763049 () Bool)

(assert (=> b!4301822 (=> (not res!1763049) (not e!2674189))))

(declare-fun valid!3533 (MutableMap!4453) Bool)

(assert (=> b!4301822 (= res!1763049 (valid!3533 thiss!42308))))

(declare-fun b!4301823 () Bool)

(declare-fun e!2674193 () Bool)

(assert (=> b!4301823 (= e!2674189 e!2674193)))

(declare-fun res!1763045 () Bool)

(assert (=> b!4301823 (=> (not res!1763045) (not e!2674193))))

(declare-fun key!2048 () K!9114)

(declare-fun contains!9907 (MutableMap!4453 K!9114) Bool)

(assert (=> b!4301823 (= res!1763045 (contains!9907 thiss!42308 key!2048))))

(declare-fun map!9943 (MutLongMap!4547) ListLongMap!833)

(assert (=> b!4301823 (= lt!1523616 (map!9943 (v!41977 (underlying!9324 thiss!42308))))))

(declare-datatypes ((ListMap!1513 0))(
  ( (ListMap!1514 (toList!2227 List!48107)) )
))
(declare-fun lt!1523612 () ListMap!1513)

(declare-fun map!9944 (MutableMap!4453) ListMap!1513)

(assert (=> b!4301823 (= lt!1523612 (map!9944 thiss!42308))))

(declare-fun tp!1321796 () Bool)

(declare-fun tp!1321795 () Bool)

(declare-fun e!2674191 () Bool)

(declare-fun array_inv!5219 (array!16310) Bool)

(declare-fun array_inv!5220 (array!16312) Bool)

(assert (=> b!4301824 (= e!2674192 (and tp!1321793 tp!1321796 tp!1321795 (array_inv!5219 (_keys!4847 (v!41976 (underlying!9323 (v!41977 (underlying!9324 thiss!42308)))))) (array_inv!5220 (_values!4828 (v!41976 (underlying!9323 (v!41977 (underlying!9324 thiss!42308)))))) e!2674191))))

(declare-fun b!4301825 () Bool)

(declare-fun res!1763048 () Bool)

(assert (=> b!4301825 (=> (not res!1763048) (not e!2674196))))

(declare-fun lt!1523615 () List!48107)

(declare-fun lt!1523613 () (_ BitVec 64))

(declare-fun contains!9908 (List!48108 tuple2!46012) Bool)

(assert (=> b!4301825 (= res!1763048 (contains!9908 (toList!2226 lt!1523616) (tuple2!46013 lt!1523613 lt!1523615)))))

(declare-fun b!4301826 () Bool)

(assert (=> b!4301826 (= e!2674196 (not (forall!8648 (toList!2226 lt!1523616) lambda!132072)))))

(declare-fun b!4301827 () Bool)

(declare-fun tp!1321792 () Bool)

(assert (=> b!4301827 (= e!2674191 (and tp!1321792 mapRes!20413))))

(declare-fun condMapEmpty!20413 () Bool)

(declare-fun mapDefault!20413 () List!48107)

(assert (=> b!4301827 (= condMapEmpty!20413 (= (arr!7280 (_values!4828 (v!41976 (underlying!9323 (v!41977 (underlying!9324 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48107)) mapDefault!20413)))))

(declare-fun b!4301828 () Bool)

(assert (=> b!4301828 (= e!2674193 e!2674196)))

(declare-fun res!1763047 () Bool)

(assert (=> b!4301828 (=> (not res!1763047) (not e!2674196))))

(declare-fun v!9179 () V!9316)

(declare-datatypes ((tuple2!46014 0))(
  ( (tuple2!46015 (_1!26286 Bool) (_2!26286 MutLongMap!4547)) )
))
(declare-fun update!345 (MutLongMap!4547 (_ BitVec 64) List!48107) tuple2!46014)

(declare-fun removePairForKey!148 (List!48107 K!9114) List!48107)

(assert (=> b!4301828 (= res!1763047 (_1!26286 (update!345 (v!41977 (underlying!9324 thiss!42308)) lt!1523613 (Cons!47983 (tuple2!46011 key!2048 v!9179) (removePairForKey!148 lt!1523615 key!2048)))))))

(declare-fun apply!10891 (MutLongMap!4547 (_ BitVec 64)) List!48107)

(assert (=> b!4301828 (= lt!1523615 (apply!10891 (v!41977 (underlying!9324 thiss!42308)) lt!1523613))))

(declare-fun hash!851 (Hashable!4463 K!9114) (_ BitVec 64))

(assert (=> b!4301828 (= lt!1523613 (hash!851 (hashF!6498 thiss!42308) key!2048))))

(assert (= (and start!413130 res!1763044) b!4301822))

(assert (= (and b!4301822 res!1763049) b!4301823))

(assert (= (and b!4301823 res!1763045) b!4301828))

(assert (= (and b!4301828 res!1763047) b!4301817))

(assert (= (and b!4301817 res!1763046) b!4301825))

(assert (= (and b!4301825 res!1763048) b!4301826))

(assert (= (and b!4301827 condMapEmpty!20413) mapIsEmpty!20413))

(assert (= (and b!4301827 (not condMapEmpty!20413)) mapNonEmpty!20413))

(assert (= b!4301824 b!4301827))

(assert (= b!4301818 b!4301824))

(assert (= b!4301820 b!4301818))

(assert (= (and b!4301819 ((_ is LongMap!4547) (v!41977 (underlying!9324 thiss!42308)))) b!4301820))

(assert (= b!4301821 b!4301819))

(assert (= (and start!413130 ((_ is HashMap!4453) thiss!42308)) b!4301821))

(declare-fun m!4893979 () Bool)

(assert (=> b!4301828 m!4893979))

(declare-fun m!4893981 () Bool)

(assert (=> b!4301828 m!4893981))

(declare-fun m!4893983 () Bool)

(assert (=> b!4301828 m!4893983))

(declare-fun m!4893985 () Bool)

(assert (=> b!4301828 m!4893985))

(declare-fun m!4893987 () Bool)

(assert (=> b!4301826 m!4893987))

(declare-fun m!4893989 () Bool)

(assert (=> b!4301823 m!4893989))

(declare-fun m!4893991 () Bool)

(assert (=> b!4301823 m!4893991))

(declare-fun m!4893993 () Bool)

(assert (=> b!4301823 m!4893993))

(declare-fun m!4893995 () Bool)

(assert (=> b!4301824 m!4893995))

(declare-fun m!4893997 () Bool)

(assert (=> b!4301824 m!4893997))

(declare-fun m!4893999 () Bool)

(assert (=> mapNonEmpty!20413 m!4893999))

(declare-fun m!4894001 () Bool)

(assert (=> b!4301825 m!4894001))

(declare-fun m!4894003 () Bool)

(assert (=> b!4301822 m!4894003))

(assert (=> b!4301817 m!4893987))

(check-sat (not b!4301825) b_and!339531 (not b!4301822) tp_is_empty!23329 (not b_next!128853) (not b_next!128851) tp_is_empty!23327 (not b!4301826) (not b!4301823) (not b!4301817) (not mapNonEmpty!20413) (not b!4301828) b_and!339533 (not b!4301824) (not b!4301827))
(check-sat b_and!339531 b_and!339533 (not b_next!128853) (not b_next!128851))

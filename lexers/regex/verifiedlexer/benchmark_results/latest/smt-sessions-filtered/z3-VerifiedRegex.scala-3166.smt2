; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185494 () Bool)

(assert start!185494)

(declare-fun b!1858540 () Bool)

(declare-fun b_free!51965 () Bool)

(declare-fun b_next!52669 () Bool)

(assert (=> b!1858540 (= b_free!51965 (not b_next!52669))))

(declare-fun tp!529837 () Bool)

(declare-fun b_and!144223 () Bool)

(assert (=> b!1858540 (= tp!529837 b_and!144223)))

(declare-fun b!1858537 () Bool)

(declare-fun e!1186825 () Bool)

(declare-fun e!1186824 () Bool)

(assert (=> b!1858537 (= e!1186825 e!1186824)))

(declare-fun mapNonEmpty!8841 () Bool)

(declare-fun mapRes!8841 () Bool)

(declare-fun tp!529838 () Bool)

(declare-fun tp_is_empty!8571 () Bool)

(assert (=> mapNonEmpty!8841 (= mapRes!8841 (and tp!529838 tp_is_empty!8571))))

(declare-datatypes ((V!3873 0))(
  ( (V!3874 (val!5888 Int)) )
))
(declare-datatypes ((array!6531 0))(
  ( (array!6532 (arr!2902 (Array (_ BitVec 32) (_ BitVec 64))) (size!16287 (_ BitVec 32))) )
))
(declare-datatypes ((array!6533 0))(
  ( (array!6534 (arr!2903 (Array (_ BitVec 32) V!3873)) (size!16288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3804 0))(
  ( (LongMapFixedSize!3805 (defaultEntry!2267 Int) (mask!5617 (_ BitVec 32)) (extraKeys!2150 (_ BitVec 32)) (zeroValue!2160 V!3873) (minValue!2160 V!3873) (_size!3880 (_ BitVec 32)) (_keys!2199 array!6531) (_values!2182 array!6533) (_vacant!1963 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7483 0))(
  ( (Cell!7484 (v!26046 LongMapFixedSize!3804)) )
))
(declare-datatypes ((MutLongMap!1902 0))(
  ( (LongMap!1902 (underlying!4020 Cell!7483)) (MutLongMapExt!1901 (__x!12971 Int)) )
))
(declare-fun thiss!47603 () MutLongMap!1902)

(declare-fun mapValue!8841 () V!3873)

(declare-fun mapRest!8841 () (Array (_ BitVec 32) V!3873))

(declare-fun mapKey!8841 () (_ BitVec 32))

(assert (=> mapNonEmpty!8841 (= (arr!2903 (_values!2182 (v!26046 (underlying!4020 thiss!47603)))) (store mapRest!8841 mapKey!8841 mapValue!8841))))

(declare-fun b!1858538 () Bool)

(declare-fun e!1186823 () Bool)

(assert (=> b!1858538 (= e!1186823 (and tp_is_empty!8571 mapRes!8841))))

(declare-fun condMapEmpty!8841 () Bool)

(declare-fun mapDefault!8841 () V!3873)

(assert (=> b!1858538 (= condMapEmpty!8841 (= (arr!2903 (_values!2182 (v!26046 (underlying!4020 thiss!47603)))) ((as const (Array (_ BitVec 32) V!3873)) mapDefault!8841)))))

(declare-fun b!1858539 () Bool)

(declare-fun e!1186826 () Bool)

(assert (=> b!1858539 (= e!1186826 e!1186825)))

(declare-fun res!832535 () Bool)

(declare-fun e!1186828 () Bool)

(assert (=> start!185494 (=> (not res!832535) (not e!1186828))))

(declare-fun valid!1523 (MutLongMap!1902) Bool)

(assert (=> start!185494 (= res!832535 (valid!1523 thiss!47603))))

(assert (=> start!185494 e!1186828))

(assert (=> start!185494 e!1186826))

(assert (=> start!185494 true))

(declare-fun array_inv!2087 (array!6531) Bool)

(declare-fun array_inv!2088 (array!6533) Bool)

(assert (=> b!1858540 (= e!1186824 (and tp!529837 tp_is_empty!8571 (array_inv!2087 (_keys!2199 (v!26046 (underlying!4020 thiss!47603)))) (array_inv!2088 (_values!2182 (v!26046 (underlying!4020 thiss!47603)))) e!1186823))))

(declare-fun b!1858541 () Bool)

(declare-fun key!7122 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((tuple2!19852 0))(
  ( (tuple2!19853 (_1!11353 Bool) (_2!11353 MutLongMap!1902)) )
))
(declare-fun remove!52 (MutLongMap!1902 (_ BitVec 64)) tuple2!19852)

(assert (=> b!1858541 (= e!1186828 (not ((_ is LongMap!1902) (_2!11353 (remove!52 thiss!47603 key!7122)))))))

(declare-fun b!1858542 () Bool)

(declare-fun res!832534 () Bool)

(assert (=> b!1858542 (=> (not res!832534) (not e!1186828))))

(assert (=> b!1858542 (= res!832534 ((_ is LongMap!1902) thiss!47603))))

(declare-fun mapIsEmpty!8841 () Bool)

(assert (=> mapIsEmpty!8841 mapRes!8841))

(assert (= (and start!185494 res!832535) b!1858542))

(assert (= (and b!1858542 res!832534) b!1858541))

(assert (= (and b!1858538 condMapEmpty!8841) mapIsEmpty!8841))

(assert (= (and b!1858538 (not condMapEmpty!8841)) mapNonEmpty!8841))

(assert (= b!1858540 b!1858538))

(assert (= b!1858537 b!1858540))

(assert (= b!1858539 b!1858537))

(assert (= (and start!185494 ((_ is LongMap!1902) thiss!47603)) b!1858539))

(declare-fun m!2282051 () Bool)

(assert (=> mapNonEmpty!8841 m!2282051))

(declare-fun m!2282053 () Bool)

(assert (=> start!185494 m!2282053))

(declare-fun m!2282055 () Bool)

(assert (=> b!1858540 m!2282055))

(declare-fun m!2282057 () Bool)

(assert (=> b!1858540 m!2282057))

(declare-fun m!2282059 () Bool)

(assert (=> b!1858541 m!2282059))

(check-sat (not b!1858540) tp_is_empty!8571 (not start!185494) (not mapNonEmpty!8841) (not b!1858541) (not b_next!52669) b_and!144223)
(check-sat b_and!144223 (not b_next!52669))
(get-model)

(declare-fun bm!115528 () Bool)

(declare-datatypes ((tuple2!19854 0))(
  ( (tuple2!19855 (_1!11354 (_ BitVec 64)) (_2!11354 V!3873)) )
))
(declare-datatypes ((List!20687 0))(
  ( (Nil!20607) (Cons!20607 (h!26008 tuple2!19854) (t!172552 List!20687)) )
))
(declare-datatypes ((ListLongMap!209 0))(
  ( (ListLongMap!210 (toList!990 List!20687)) )
))
(declare-fun call!115534 () ListLongMap!209)

(declare-fun lt!717210 () tuple2!19852)

(declare-fun map!4353 (MutLongMap!1902) ListLongMap!209)

(assert (=> bm!115528 (= call!115534 (map!4353 (_2!11353 lt!717210)))))

(declare-fun d!567111 () Bool)

(declare-fun e!1186834 () Bool)

(assert (=> d!567111 e!1186834))

(declare-fun res!832541 () Bool)

(assert (=> d!567111 (=> (not res!832541) (not e!1186834))))

(assert (=> d!567111 (= res!832541 ((_ is LongMap!1902) (_2!11353 lt!717210)))))

(declare-datatypes ((tuple2!19856 0))(
  ( (tuple2!19857 (_1!11355 Bool) (_2!11355 LongMapFixedSize!3804)) )
))
(declare-fun lt!717211 () tuple2!19856)

(assert (=> d!567111 (= lt!717210 (tuple2!19853 (_1!11355 lt!717211) (LongMap!1902 (Cell!7484 (_2!11355 lt!717211)))))))

(declare-fun remove!53 (LongMapFixedSize!3804 (_ BitVec 64)) tuple2!19856)

(assert (=> d!567111 (= lt!717211 (remove!53 (v!26046 (underlying!4020 thiss!47603)) key!7122))))

(declare-fun valid!1524 (MutLongMap!1902) Bool)

(assert (=> d!567111 (valid!1524 thiss!47603)))

(assert (=> d!567111 (= (remove!52 thiss!47603 key!7122) lt!717210)))

(declare-fun b!1858551 () Bool)

(declare-fun e!1186833 () Bool)

(declare-fun call!115533 () ListLongMap!209)

(assert (=> b!1858551 (= e!1186833 (= call!115534 call!115533))))

(declare-fun b!1858552 () Bool)

(declare-fun res!832540 () Bool)

(assert (=> b!1858552 (=> (not res!832540) (not e!1186834))))

(assert (=> b!1858552 (= res!832540 (valid!1524 (_2!11353 lt!717210)))))

(declare-fun bm!115529 () Bool)

(assert (=> bm!115529 (= call!115533 (map!4353 thiss!47603))))

(declare-fun b!1858553 () Bool)

(declare-fun -!99 (ListLongMap!209 (_ BitVec 64)) ListLongMap!209)

(assert (=> b!1858553 (= e!1186833 (= call!115534 (-!99 call!115533 key!7122)))))

(declare-fun b!1858554 () Bool)

(assert (=> b!1858554 (= e!1186834 e!1186833)))

(declare-fun c!302574 () Bool)

(assert (=> b!1858554 (= c!302574 (_1!11353 lt!717210))))

(assert (= (and d!567111 res!832541) b!1858552))

(assert (= (and b!1858552 res!832540) b!1858554))

(assert (= (and b!1858554 c!302574) b!1858553))

(assert (= (and b!1858554 (not c!302574)) b!1858551))

(assert (= (or b!1858553 b!1858551) bm!115529))

(assert (= (or b!1858553 b!1858551) bm!115528))

(declare-fun m!2282061 () Bool)

(assert (=> bm!115529 m!2282061))

(declare-fun m!2282063 () Bool)

(assert (=> bm!115528 m!2282063))

(declare-fun m!2282065 () Bool)

(assert (=> d!567111 m!2282065))

(declare-fun m!2282067 () Bool)

(assert (=> d!567111 m!2282067))

(declare-fun m!2282069 () Bool)

(assert (=> b!1858553 m!2282069))

(declare-fun m!2282071 () Bool)

(assert (=> b!1858552 m!2282071))

(assert (=> b!1858541 d!567111))

(declare-fun d!567113 () Bool)

(assert (=> d!567113 (= (array_inv!2087 (_keys!2199 (v!26046 (underlying!4020 thiss!47603)))) (bvsge (size!16287 (_keys!2199 (v!26046 (underlying!4020 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858540 d!567113))

(declare-fun d!567115 () Bool)

(assert (=> d!567115 (= (array_inv!2088 (_values!2182 (v!26046 (underlying!4020 thiss!47603)))) (bvsge (size!16288 (_values!2182 (v!26046 (underlying!4020 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858540 d!567115))

(declare-fun d!567117 () Bool)

(declare-fun c!302577 () Bool)

(assert (=> d!567117 (= c!302577 ((_ is LongMap!1902) thiss!47603))))

(declare-fun e!1186837 () Bool)

(assert (=> d!567117 (= (valid!1523 thiss!47603) e!1186837)))

(declare-fun b!1858559 () Bool)

(assert (=> b!1858559 (= e!1186837 (valid!1524 thiss!47603))))

(declare-fun b!1858560 () Bool)

(declare-fun valid!1525 (MutLongMap!1902) Bool)

(assert (=> b!1858560 (= e!1186837 (valid!1525 thiss!47603))))

(assert (= (and d!567117 c!302577) b!1858559))

(assert (= (and d!567117 (not c!302577)) b!1858560))

(assert (=> b!1858559 m!2282067))

(declare-fun m!2282073 () Bool)

(assert (=> b!1858560 m!2282073))

(assert (=> start!185494 d!567117))

(declare-fun condMapEmpty!8844 () Bool)

(declare-fun mapDefault!8844 () V!3873)

(assert (=> mapNonEmpty!8841 (= condMapEmpty!8844 (= mapRest!8841 ((as const (Array (_ BitVec 32) V!3873)) mapDefault!8844)))))

(declare-fun mapRes!8844 () Bool)

(assert (=> mapNonEmpty!8841 (= tp!529838 (and tp_is_empty!8571 mapRes!8844))))

(declare-fun mapIsEmpty!8844 () Bool)

(assert (=> mapIsEmpty!8844 mapRes!8844))

(declare-fun mapNonEmpty!8844 () Bool)

(declare-fun tp!529841 () Bool)

(assert (=> mapNonEmpty!8844 (= mapRes!8844 (and tp!529841 tp_is_empty!8571))))

(declare-fun mapValue!8844 () V!3873)

(declare-fun mapRest!8844 () (Array (_ BitVec 32) V!3873))

(declare-fun mapKey!8844 () (_ BitVec 32))

(assert (=> mapNonEmpty!8844 (= mapRest!8841 (store mapRest!8844 mapKey!8844 mapValue!8844))))

(assert (= (and mapNonEmpty!8841 condMapEmpty!8844) mapIsEmpty!8844))

(assert (= (and mapNonEmpty!8841 (not condMapEmpty!8844)) mapNonEmpty!8844))

(declare-fun m!2282075 () Bool)

(assert (=> mapNonEmpty!8844 m!2282075))

(check-sat (not b!1858553) (not b!1858552) (not bm!115529) (not d!567111) (not b!1858559) tp_is_empty!8571 (not bm!115528) (not mapNonEmpty!8844) (not b!1858560) (not b_next!52669) b_and!144223)
(check-sat b_and!144223 (not b_next!52669))

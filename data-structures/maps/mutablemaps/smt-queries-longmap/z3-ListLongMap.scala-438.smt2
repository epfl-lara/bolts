; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8254 () Bool)

(assert start!8254)

(declare-fun b!52397 () Bool)

(declare-fun b_free!1649 () Bool)

(declare-fun b_next!1649 () Bool)

(assert (=> b!52397 (= b_free!1649 (not b_next!1649))))

(declare-fun tp!7047 () Bool)

(declare-fun b_and!2869 () Bool)

(assert (=> b!52397 (= tp!7047 b_and!2869)))

(declare-fun b!52401 () Bool)

(declare-fun b_free!1651 () Bool)

(declare-fun b_next!1651 () Bool)

(assert (=> b!52401 (= b_free!1651 (not b_next!1651))))

(declare-fun tp!7050 () Bool)

(declare-fun b_and!2871 () Bool)

(assert (=> b!52401 (= tp!7050 b_and!2871)))

(declare-fun mapNonEmpty!2393 () Bool)

(declare-fun mapRes!2394 () Bool)

(declare-fun tp!7048 () Bool)

(declare-fun e!34100 () Bool)

(assert (=> mapNonEmpty!2393 (= mapRes!2394 (and tp!7048 e!34100))))

(declare-datatypes ((V!2635 0))(
  ( (V!2636 (val!1165 Int)) )
))
(declare-datatypes ((ValueCell!777 0))(
  ( (ValueCellFull!777 (v!2215 V!2635)) (EmptyCell!777) )
))
(declare-fun mapRest!2394 () (Array (_ BitVec 32) ValueCell!777))

(declare-datatypes ((array!3404 0))(
  ( (array!3405 (arr!1624 (Array (_ BitVec 32) (_ BitVec 64))) (size!1853 (_ BitVec 32))) )
))
(declare-datatypes ((array!3406 0))(
  ( (array!3407 (arr!1625 (Array (_ BitVec 32) ValueCell!777)) (size!1854 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!462 0))(
  ( (LongMapFixedSize!463 (defaultEntry!1945 Int) (mask!5768 (_ BitVec 32)) (extraKeys!1836 (_ BitVec 32)) (zeroValue!1863 V!2635) (minValue!1863 V!2635) (_size!280 (_ BitVec 32)) (_keys!3565 array!3404) (_values!1928 array!3406) (_vacant!280 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!462)

(declare-fun mapKey!2394 () (_ BitVec 32))

(declare-fun mapValue!2394 () ValueCell!777)

(assert (=> mapNonEmpty!2393 (= (arr!1625 (_values!1928 newMap!16)) (store mapRest!2394 mapKey!2394 mapValue!2394))))

(declare-fun b!52394 () Bool)

(declare-fun e!34097 () Bool)

(declare-fun e!34096 () Bool)

(assert (=> b!52394 (= e!34097 (and e!34096 mapRes!2394))))

(declare-fun condMapEmpty!2394 () Bool)

(declare-fun mapDefault!2394 () ValueCell!777)

(assert (=> b!52394 (= condMapEmpty!2394 (= (arr!1625 (_values!1928 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!777)) mapDefault!2394)))))

(declare-fun b!52396 () Bool)

(declare-fun tp_is_empty!2241 () Bool)

(assert (=> b!52396 (= e!34096 tp_is_empty!2241)))

(declare-fun mapIsEmpty!2393 () Bool)

(assert (=> mapIsEmpty!2393 mapRes!2394))

(declare-fun e!34103 () Bool)

(declare-datatypes ((Cell!278 0))(
  ( (Cell!279 (v!2216 LongMapFixedSize!462)) )
))
(declare-datatypes ((LongMap!278 0))(
  ( (LongMap!279 (underlying!150 Cell!278)) )
))
(declare-fun thiss!992 () LongMap!278)

(declare-fun e!34092 () Bool)

(declare-fun array_inv!949 (array!3404) Bool)

(declare-fun array_inv!950 (array!3406) Bool)

(assert (=> b!52397 (= e!34092 (and tp!7047 tp_is_empty!2241 (array_inv!949 (_keys!3565 (v!2216 (underlying!150 thiss!992)))) (array_inv!950 (_values!1928 (v!2216 (underlying!150 thiss!992)))) e!34103))))

(declare-fun mapIsEmpty!2394 () Bool)

(declare-fun mapRes!2393 () Bool)

(assert (=> mapIsEmpty!2394 mapRes!2393))

(declare-fun b!52398 () Bool)

(declare-fun e!34098 () Bool)

(assert (=> b!52398 (= e!34103 (and e!34098 mapRes!2393))))

(declare-fun condMapEmpty!2393 () Bool)

(declare-fun mapDefault!2393 () ValueCell!777)

(assert (=> b!52398 (= condMapEmpty!2393 (= (arr!1625 (_values!1928 (v!2216 (underlying!150 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!777)) mapDefault!2393)))))

(declare-fun b!52399 () Bool)

(declare-fun e!34094 () Bool)

(assert (=> b!52399 (= e!34094 e!34092)))

(declare-fun b!52400 () Bool)

(assert (=> b!52400 (= e!34100 tp_is_empty!2241)))

(declare-fun e!34099 () Bool)

(assert (=> b!52401 (= e!34099 (and tp!7050 tp_is_empty!2241 (array_inv!949 (_keys!3565 newMap!16)) (array_inv!950 (_values!1928 newMap!16)) e!34097))))

(declare-fun res!29799 () Bool)

(declare-fun e!34093 () Bool)

(assert (=> start!8254 (=> (not res!29799) (not e!34093))))

(declare-fun valid!164 (LongMap!278) Bool)

(assert (=> start!8254 (= res!29799 (valid!164 thiss!992))))

(assert (=> start!8254 e!34093))

(declare-fun e!34102 () Bool)

(assert (=> start!8254 e!34102))

(assert (=> start!8254 true))

(assert (=> start!8254 e!34099))

(declare-fun b!52395 () Bool)

(declare-fun res!29801 () Bool)

(assert (=> b!52395 (=> (not res!29801) (not e!34093))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!52395 (= res!29801 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1853 (_keys!3565 (v!2216 (underlying!150 thiss!992)))))))))

(declare-fun b!52402 () Bool)

(assert (=> b!52402 (= e!34098 tp_is_empty!2241)))

(declare-fun mapNonEmpty!2394 () Bool)

(declare-fun tp!7049 () Bool)

(declare-fun e!34101 () Bool)

(assert (=> mapNonEmpty!2394 (= mapRes!2393 (and tp!7049 e!34101))))

(declare-fun mapKey!2393 () (_ BitVec 32))

(declare-fun mapValue!2393 () ValueCell!777)

(declare-fun mapRest!2393 () (Array (_ BitVec 32) ValueCell!777))

(assert (=> mapNonEmpty!2394 (= (arr!1625 (_values!1928 (v!2216 (underlying!150 thiss!992)))) (store mapRest!2393 mapKey!2393 mapValue!2393))))

(declare-fun b!52403 () Bool)

(assert (=> b!52403 (= e!34101 tp_is_empty!2241)))

(declare-fun b!52404 () Bool)

(declare-fun res!29800 () Bool)

(assert (=> b!52404 (=> (not res!29800) (not e!34093))))

(declare-fun valid!165 (LongMapFixedSize!462) Bool)

(assert (=> b!52404 (= res!29800 (valid!165 newMap!16))))

(declare-fun b!52405 () Bool)

(assert (=> b!52405 (= e!34102 e!34094)))

(declare-fun b!52406 () Bool)

(assert (=> b!52406 (= e!34093 false)))

(declare-datatypes ((tuple2!1850 0))(
  ( (tuple2!1851 (_1!935 (_ BitVec 64)) (_2!935 V!2635)) )
))
(declare-datatypes ((List!1358 0))(
  ( (Nil!1355) (Cons!1354 (h!1934 tuple2!1850) (t!4400 List!1358)) )
))
(declare-datatypes ((ListLongMap!1269 0))(
  ( (ListLongMap!1270 (toList!650 List!1358)) )
))
(declare-fun lt!21282 () ListLongMap!1269)

(declare-fun map!1013 (LongMapFixedSize!462) ListLongMap!1269)

(assert (=> b!52406 (= lt!21282 (map!1013 newMap!16))))

(declare-fun lt!21283 () ListLongMap!1269)

(declare-fun getCurrentListMap!359 (array!3404 array!3406 (_ BitVec 32) (_ BitVec 32) V!2635 V!2635 (_ BitVec 32) Int) ListLongMap!1269)

(assert (=> b!52406 (= lt!21283 (getCurrentListMap!359 (_keys!3565 (v!2216 (underlying!150 thiss!992))) (_values!1928 (v!2216 (underlying!150 thiss!992))) (mask!5768 (v!2216 (underlying!150 thiss!992))) (extraKeys!1836 (v!2216 (underlying!150 thiss!992))) (zeroValue!1863 (v!2216 (underlying!150 thiss!992))) (minValue!1863 (v!2216 (underlying!150 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1945 (v!2216 (underlying!150 thiss!992)))))))

(declare-fun b!52407 () Bool)

(declare-fun res!29802 () Bool)

(assert (=> b!52407 (=> (not res!29802) (not e!34093))))

(assert (=> b!52407 (= res!29802 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5768 newMap!16)) (_size!280 (v!2216 (underlying!150 thiss!992)))))))

(assert (= (and start!8254 res!29799) b!52395))

(assert (= (and b!52395 res!29801) b!52404))

(assert (= (and b!52404 res!29800) b!52407))

(assert (= (and b!52407 res!29802) b!52406))

(assert (= (and b!52398 condMapEmpty!2393) mapIsEmpty!2394))

(assert (= (and b!52398 (not condMapEmpty!2393)) mapNonEmpty!2394))

(get-info :version)

(assert (= (and mapNonEmpty!2394 ((_ is ValueCellFull!777) mapValue!2393)) b!52403))

(assert (= (and b!52398 ((_ is ValueCellFull!777) mapDefault!2393)) b!52402))

(assert (= b!52397 b!52398))

(assert (= b!52399 b!52397))

(assert (= b!52405 b!52399))

(assert (= start!8254 b!52405))

(assert (= (and b!52394 condMapEmpty!2394) mapIsEmpty!2393))

(assert (= (and b!52394 (not condMapEmpty!2394)) mapNonEmpty!2393))

(assert (= (and mapNonEmpty!2393 ((_ is ValueCellFull!777) mapValue!2394)) b!52400))

(assert (= (and b!52394 ((_ is ValueCellFull!777) mapDefault!2394)) b!52396))

(assert (= b!52401 b!52394))

(assert (= start!8254 b!52401))

(declare-fun m!44851 () Bool)

(assert (=> start!8254 m!44851))

(declare-fun m!44853 () Bool)

(assert (=> mapNonEmpty!2394 m!44853))

(declare-fun m!44855 () Bool)

(assert (=> b!52404 m!44855))

(declare-fun m!44857 () Bool)

(assert (=> b!52406 m!44857))

(declare-fun m!44859 () Bool)

(assert (=> b!52406 m!44859))

(declare-fun m!44861 () Bool)

(assert (=> mapNonEmpty!2393 m!44861))

(declare-fun m!44863 () Bool)

(assert (=> b!52397 m!44863))

(declare-fun m!44865 () Bool)

(assert (=> b!52397 m!44865))

(declare-fun m!44867 () Bool)

(assert (=> b!52401 m!44867))

(declare-fun m!44869 () Bool)

(assert (=> b!52401 m!44869))

(check-sat (not b_next!1649) (not b!52397) (not mapNonEmpty!2394) (not b_next!1651) (not start!8254) tp_is_empty!2241 (not b!52404) (not b!52406) (not b!52401) b_and!2871 b_and!2869 (not mapNonEmpty!2393))
(check-sat b_and!2869 b_and!2871 (not b_next!1649) (not b_next!1651))

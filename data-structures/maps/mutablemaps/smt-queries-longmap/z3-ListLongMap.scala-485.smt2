; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10522 () Bool)

(assert start!10522)

(declare-fun b!82645 () Bool)

(declare-fun b_free!2213 () Bool)

(declare-fun b_next!2213 () Bool)

(assert (=> b!82645 (= b_free!2213 (not b_next!2213))))

(declare-fun tp!8856 () Bool)

(declare-fun b_and!5013 () Bool)

(assert (=> b!82645 (= tp!8856 b_and!5013)))

(declare-fun b!82662 () Bool)

(declare-fun b_free!2215 () Bool)

(declare-fun b_next!2215 () Bool)

(assert (=> b!82662 (= b_free!2215 (not b_next!2215))))

(declare-fun tp!8858 () Bool)

(declare-fun b_and!5015 () Bool)

(assert (=> b!82662 (= tp!8858 b_and!5015)))

(declare-fun b!82643 () Bool)

(declare-fun e!53934 () Bool)

(declare-fun e!53947 () Bool)

(assert (=> b!82643 (= e!53934 (not e!53947))))

(declare-fun res!42832 () Bool)

(assert (=> b!82643 (=> res!42832 e!53947)))

(declare-datatypes ((V!3011 0))(
  ( (V!3012 (val!1306 Int)) )
))
(declare-datatypes ((array!4002 0))(
  ( (array!4003 (arr!1906 (Array (_ BitVec 32) (_ BitVec 64))) (size!2149 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!918 0))(
  ( (ValueCellFull!918 (v!2625 V!3011)) (EmptyCell!918) )
))
(declare-datatypes ((array!4004 0))(
  ( (array!4005 (arr!1907 (Array (_ BitVec 32) ValueCell!918)) (size!2150 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!744 0))(
  ( (LongMapFixedSize!745 (defaultEntry!2314 Int) (mask!6330 (_ BitVec 32)) (extraKeys!2157 (_ BitVec 32)) (zeroValue!2208 V!3011) (minValue!2208 V!3011) (_size!421 (_ BitVec 32)) (_keys!3982 array!4002) (_values!2297 array!4004) (_vacant!421 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!552 0))(
  ( (Cell!553 (v!2626 LongMapFixedSize!744)) )
))
(declare-datatypes ((LongMap!552 0))(
  ( (LongMap!553 (underlying!287 Cell!552)) )
))
(declare-fun thiss!992 () LongMap!552)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!82643 (= res!42832 (not (validMask!0 (mask!6330 (v!2626 (underlying!287 thiss!992))))))))

(declare-datatypes ((tuple2!2212 0))(
  ( (tuple2!2213 (_1!1116 (_ BitVec 64)) (_2!1116 V!3011)) )
))
(declare-datatypes ((List!1543 0))(
  ( (Nil!1540) (Cons!1539 (h!2129 tuple2!2212) (t!5235 List!1543)) )
))
(declare-datatypes ((ListLongMap!1477 0))(
  ( (ListLongMap!1478 (toList!754 List!1543)) )
))
(declare-fun lt!38595 () ListLongMap!1477)

(declare-fun lt!38592 () ListLongMap!1477)

(declare-fun lt!38585 () tuple2!2212)

(declare-fun lt!38589 () tuple2!2212)

(declare-fun +!112 (ListLongMap!1477 tuple2!2212) ListLongMap!1477)

(assert (=> b!82643 (= (+!112 lt!38592 lt!38589) (+!112 (+!112 lt!38595 lt!38589) lt!38585))))

(assert (=> b!82643 (= lt!38589 (tuple2!2213 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2208 (v!2626 (underlying!287 thiss!992)))))))

(declare-datatypes ((Unit!2437 0))(
  ( (Unit!2438) )
))
(declare-fun lt!38584 () Unit!2437)

(declare-fun lt!38593 () V!3011)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!31 (ListLongMap!1477 (_ BitVec 64) V!3011 (_ BitVec 64) V!3011) Unit!2437)

(assert (=> b!82643 (= lt!38584 (addCommutativeForDiffKeys!31 lt!38595 (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) lt!38593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2208 (v!2626 (underlying!287 thiss!992)))))))

(declare-fun lt!38598 () ListLongMap!1477)

(assert (=> b!82643 (= lt!38598 lt!38592)))

(assert (=> b!82643 (= lt!38592 (+!112 lt!38595 lt!38585))))

(declare-fun lt!38590 () ListLongMap!1477)

(declare-fun lt!38600 () tuple2!2212)

(assert (=> b!82643 (= lt!38598 (+!112 lt!38590 lt!38600))))

(declare-fun lt!38597 () ListLongMap!1477)

(assert (=> b!82643 (= lt!38595 (+!112 lt!38597 lt!38600))))

(assert (=> b!82643 (= lt!38600 (tuple2!2213 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2208 (v!2626 (underlying!287 thiss!992)))))))

(assert (=> b!82643 (= lt!38590 (+!112 lt!38597 lt!38585))))

(assert (=> b!82643 (= lt!38585 (tuple2!2213 (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) lt!38593))))

(declare-fun lt!38596 () Unit!2437)

(assert (=> b!82643 (= lt!38596 (addCommutativeForDiffKeys!31 lt!38597 (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) lt!38593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2208 (v!2626 (underlying!287 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!76 (array!4002 array!4004 (_ BitVec 32) (_ BitVec 32) V!3011 V!3011 (_ BitVec 32) Int) ListLongMap!1477)

(assert (=> b!82643 (= lt!38597 (getCurrentListMapNoExtraKeys!76 (_keys!3982 (v!2626 (underlying!287 thiss!992))) (_values!2297 (v!2626 (underlying!287 thiss!992))) (mask!6330 (v!2626 (underlying!287 thiss!992))) (extraKeys!2157 (v!2626 (underlying!287 thiss!992))) (zeroValue!2208 (v!2626 (underlying!287 thiss!992))) (minValue!2208 (v!2626 (underlying!287 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2314 (v!2626 (underlying!287 thiss!992)))))))

(declare-fun b!82644 () Bool)

(declare-fun e!53939 () Bool)

(declare-fun e!53938 () Bool)

(declare-fun mapRes!3355 () Bool)

(assert (=> b!82644 (= e!53939 (and e!53938 mapRes!3355))))

(declare-fun condMapEmpty!3355 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!744)

(declare-fun mapDefault!3356 () ValueCell!918)

(assert (=> b!82644 (= condMapEmpty!3355 (= (arr!1907 (_values!2297 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!918)) mapDefault!3356)))))

(declare-fun e!53935 () Bool)

(declare-fun e!53943 () Bool)

(declare-fun tp_is_empty!2523 () Bool)

(declare-fun array_inv!1137 (array!4002) Bool)

(declare-fun array_inv!1138 (array!4004) Bool)

(assert (=> b!82645 (= e!53935 (and tp!8856 tp_is_empty!2523 (array_inv!1137 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) (array_inv!1138 (_values!2297 (v!2626 (underlying!287 thiss!992)))) e!53943))))

(declare-fun b!82646 () Bool)

(declare-fun e!53932 () Bool)

(assert (=> b!82646 (= e!53932 tp_is_empty!2523)))

(declare-fun b!82647 () Bool)

(declare-fun e!53945 () Bool)

(declare-fun e!53931 () Bool)

(assert (=> b!82647 (= e!53945 e!53931)))

(declare-fun res!42834 () Bool)

(assert (=> b!82647 (=> (not res!42834) (not e!53931))))

(assert (=> b!82647 (= res!42834 (and (not (= (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1202 (ValueCell!918 V!3011) V!3011)

(declare-fun dynLambda!349 (Int (_ BitVec 64)) V!3011)

(assert (=> b!82647 (= lt!38593 (get!1202 (select (arr!1907 (_values!2297 (v!2626 (underlying!287 thiss!992)))) from!355) (dynLambda!349 (defaultEntry!2314 (v!2626 (underlying!287 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!82648 () Bool)

(declare-fun res!42831 () Bool)

(declare-fun e!53946 () Bool)

(assert (=> b!82648 (=> (not res!42831) (not e!53946))))

(declare-fun valid!320 (LongMapFixedSize!744) Bool)

(assert (=> b!82648 (= res!42831 (valid!320 newMap!16))))

(declare-fun res!42835 () Bool)

(assert (=> start!10522 (=> (not res!42835) (not e!53946))))

(declare-fun valid!321 (LongMap!552) Bool)

(assert (=> start!10522 (= res!42835 (valid!321 thiss!992))))

(assert (=> start!10522 e!53946))

(declare-fun e!53930 () Bool)

(assert (=> start!10522 e!53930))

(assert (=> start!10522 true))

(declare-fun e!53941 () Bool)

(assert (=> start!10522 e!53941))

(declare-fun b!82649 () Bool)

(declare-fun e!53944 () Unit!2437)

(declare-fun Unit!2439 () Unit!2437)

(assert (=> b!82649 (= e!53944 Unit!2439)))

(declare-fun mapNonEmpty!3355 () Bool)

(declare-fun tp!8857 () Bool)

(assert (=> mapNonEmpty!3355 (= mapRes!3355 (and tp!8857 e!53932))))

(declare-fun mapValue!3355 () ValueCell!918)

(declare-fun mapKey!3356 () (_ BitVec 32))

(declare-fun mapRest!3355 () (Array (_ BitVec 32) ValueCell!918))

(assert (=> mapNonEmpty!3355 (= (arr!1907 (_values!2297 newMap!16)) (store mapRest!3355 mapKey!3356 mapValue!3355))))

(declare-fun b!82650 () Bool)

(assert (=> b!82650 (= e!53946 e!53945)))

(declare-fun res!42837 () Bool)

(assert (=> b!82650 (=> (not res!42837) (not e!53945))))

(declare-fun lt!38591 () ListLongMap!1477)

(declare-fun lt!38583 () ListLongMap!1477)

(assert (=> b!82650 (= res!42837 (= lt!38591 lt!38583))))

(declare-fun map!1187 (LongMapFixedSize!744) ListLongMap!1477)

(assert (=> b!82650 (= lt!38583 (map!1187 newMap!16))))

(declare-fun getCurrentListMap!439 (array!4002 array!4004 (_ BitVec 32) (_ BitVec 32) V!3011 V!3011 (_ BitVec 32) Int) ListLongMap!1477)

(assert (=> b!82650 (= lt!38591 (getCurrentListMap!439 (_keys!3982 (v!2626 (underlying!287 thiss!992))) (_values!2297 (v!2626 (underlying!287 thiss!992))) (mask!6330 (v!2626 (underlying!287 thiss!992))) (extraKeys!2157 (v!2626 (underlying!287 thiss!992))) (zeroValue!2208 (v!2626 (underlying!287 thiss!992))) (minValue!2208 (v!2626 (underlying!287 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2314 (v!2626 (underlying!287 thiss!992)))))))

(declare-fun b!82651 () Bool)

(declare-fun res!42830 () Bool)

(assert (=> b!82651 (=> (not res!42830) (not e!53946))))

(assert (=> b!82651 (= res!42830 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6330 newMap!16)) (_size!421 (v!2626 (underlying!287 thiss!992)))))))

(declare-fun b!82652 () Bool)

(declare-fun e!53942 () Bool)

(assert (=> b!82652 (= e!53942 tp_is_empty!2523)))

(declare-fun mapNonEmpty!3356 () Bool)

(declare-fun mapRes!3356 () Bool)

(declare-fun tp!8855 () Bool)

(assert (=> mapNonEmpty!3356 (= mapRes!3356 (and tp!8855 e!53942))))

(declare-fun mapRest!3356 () (Array (_ BitVec 32) ValueCell!918))

(declare-fun mapValue!3356 () ValueCell!918)

(declare-fun mapKey!3355 () (_ BitVec 32))

(assert (=> mapNonEmpty!3356 (= (arr!1907 (_values!2297 (v!2626 (underlying!287 thiss!992)))) (store mapRest!3356 mapKey!3355 mapValue!3356))))

(declare-fun b!82653 () Bool)

(declare-fun res!42833 () Bool)

(assert (=> b!82653 (=> (not res!42833) (not e!53946))))

(assert (=> b!82653 (= res!42833 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2149 (_keys!3982 (v!2626 (underlying!287 thiss!992)))))))))

(declare-fun b!82654 () Bool)

(assert (=> b!82654 (= e!53931 e!53934)))

(declare-fun res!42836 () Bool)

(assert (=> b!82654 (=> (not res!42836) (not e!53934))))

(declare-datatypes ((tuple2!2214 0))(
  ( (tuple2!2215 (_1!1117 Bool) (_2!1117 LongMapFixedSize!744)) )
))
(declare-fun lt!38586 () tuple2!2214)

(assert (=> b!82654 (= res!42836 (and (_1!1117 lt!38586) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!38599 () Unit!2437)

(assert (=> b!82654 (= lt!38599 e!53944)))

(declare-fun c!13168 () Bool)

(declare-fun contains!755 (ListLongMap!1477 (_ BitVec 64)) Bool)

(assert (=> b!82654 (= c!13168 (contains!755 lt!38583 (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355)))))

(declare-fun update!117 (LongMapFixedSize!744 (_ BitVec 64) V!3011) tuple2!2214)

(assert (=> b!82654 (= lt!38586 (update!117 newMap!16 (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) lt!38593))))

(declare-fun b!82655 () Bool)

(declare-fun e!53940 () Bool)

(assert (=> b!82655 (= e!53940 e!53935)))

(declare-fun b!82656 () Bool)

(declare-fun Unit!2440 () Unit!2437)

(assert (=> b!82656 (= e!53944 Unit!2440)))

(declare-fun lt!38588 () Unit!2437)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!68 (array!4002 array!4004 (_ BitVec 32) (_ BitVec 32) V!3011 V!3011 (_ BitVec 64) (_ BitVec 32) Int) Unit!2437)

(assert (=> b!82656 (= lt!38588 (lemmaListMapContainsThenArrayContainsFrom!68 (_keys!3982 (v!2626 (underlying!287 thiss!992))) (_values!2297 (v!2626 (underlying!287 thiss!992))) (mask!6330 (v!2626 (underlying!287 thiss!992))) (extraKeys!2157 (v!2626 (underlying!287 thiss!992))) (zeroValue!2208 (v!2626 (underlying!287 thiss!992))) (minValue!2208 (v!2626 (underlying!287 thiss!992))) (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2314 (v!2626 (underlying!287 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!82656 (arrayContainsKey!0 (_keys!3982 (v!2626 (underlying!287 thiss!992))) (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!38594 () Unit!2437)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4002 (_ BitVec 32) (_ BitVec 32)) Unit!2437)

(assert (=> b!82656 (= lt!38594 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3982 (v!2626 (underlying!287 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1544 0))(
  ( (Nil!1541) (Cons!1540 (h!2130 (_ BitVec 64)) (t!5236 List!1544)) )
))
(declare-fun arrayNoDuplicates!0 (array!4002 (_ BitVec 32) List!1544) Bool)

(assert (=> b!82656 (arrayNoDuplicates!0 (_keys!3982 (v!2626 (underlying!287 thiss!992))) from!355 Nil!1541)))

(declare-fun lt!38587 () Unit!2437)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4002 (_ BitVec 32) (_ BitVec 64) List!1544) Unit!2437)

(assert (=> b!82656 (= lt!38587 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3982 (v!2626 (underlying!287 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) (Cons!1540 (select (arr!1906 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) from!355) Nil!1541)))))

(assert (=> b!82656 false))

(declare-fun b!82657 () Bool)

(declare-fun e!53933 () Bool)

(assert (=> b!82657 (= e!53943 (and e!53933 mapRes!3356))))

(declare-fun condMapEmpty!3356 () Bool)

(declare-fun mapDefault!3355 () ValueCell!918)

(assert (=> b!82657 (= condMapEmpty!3356 (= (arr!1907 (_values!2297 (v!2626 (underlying!287 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!918)) mapDefault!3355)))))

(declare-fun b!82658 () Bool)

(assert (=> b!82658 (= e!53938 tp_is_empty!2523)))

(declare-fun b!82659 () Bool)

(assert (=> b!82659 (= e!53947 (or (not (= (size!2150 (_values!2297 (v!2626 (underlying!287 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6330 (v!2626 (underlying!287 thiss!992)))))) (not (= (size!2149 (_keys!3982 (v!2626 (underlying!287 thiss!992)))) (size!2150 (_values!2297 (v!2626 (underlying!287 thiss!992)))))) (bvsge (mask!6330 (v!2626 (underlying!287 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3355 () Bool)

(assert (=> mapIsEmpty!3355 mapRes!3356))

(declare-fun mapIsEmpty!3356 () Bool)

(assert (=> mapIsEmpty!3356 mapRes!3355))

(declare-fun b!82660 () Bool)

(assert (=> b!82660 (= e!53930 e!53940)))

(declare-fun b!82661 () Bool)

(assert (=> b!82661 (= e!53933 tp_is_empty!2523)))

(assert (=> b!82662 (= e!53941 (and tp!8858 tp_is_empty!2523 (array_inv!1137 (_keys!3982 newMap!16)) (array_inv!1138 (_values!2297 newMap!16)) e!53939))))

(assert (= (and start!10522 res!42835) b!82653))

(assert (= (and b!82653 res!42833) b!82648))

(assert (= (and b!82648 res!42831) b!82651))

(assert (= (and b!82651 res!42830) b!82650))

(assert (= (and b!82650 res!42837) b!82647))

(assert (= (and b!82647 res!42834) b!82654))

(assert (= (and b!82654 c!13168) b!82656))

(assert (= (and b!82654 (not c!13168)) b!82649))

(assert (= (and b!82654 res!42836) b!82643))

(assert (= (and b!82643 (not res!42832)) b!82659))

(assert (= (and b!82657 condMapEmpty!3356) mapIsEmpty!3355))

(assert (= (and b!82657 (not condMapEmpty!3356)) mapNonEmpty!3356))

(get-info :version)

(assert (= (and mapNonEmpty!3356 ((_ is ValueCellFull!918) mapValue!3356)) b!82652))

(assert (= (and b!82657 ((_ is ValueCellFull!918) mapDefault!3355)) b!82661))

(assert (= b!82645 b!82657))

(assert (= b!82655 b!82645))

(assert (= b!82660 b!82655))

(assert (= start!10522 b!82660))

(assert (= (and b!82644 condMapEmpty!3355) mapIsEmpty!3356))

(assert (= (and b!82644 (not condMapEmpty!3355)) mapNonEmpty!3355))

(assert (= (and mapNonEmpty!3355 ((_ is ValueCellFull!918) mapValue!3355)) b!82646))

(assert (= (and b!82644 ((_ is ValueCellFull!918) mapDefault!3356)) b!82658))

(assert (= b!82662 b!82644))

(assert (= start!10522 b!82662))

(declare-fun b_lambda!3687 () Bool)

(assert (=> (not b_lambda!3687) (not b!82647)))

(declare-fun t!5232 () Bool)

(declare-fun tb!1661 () Bool)

(assert (=> (and b!82645 (= (defaultEntry!2314 (v!2626 (underlying!287 thiss!992))) (defaultEntry!2314 (v!2626 (underlying!287 thiss!992)))) t!5232) tb!1661))

(declare-fun result!2871 () Bool)

(assert (=> tb!1661 (= result!2871 tp_is_empty!2523)))

(assert (=> b!82647 t!5232))

(declare-fun b_and!5017 () Bool)

(assert (= b_and!5013 (and (=> t!5232 result!2871) b_and!5017)))

(declare-fun tb!1663 () Bool)

(declare-fun t!5234 () Bool)

(assert (=> (and b!82662 (= (defaultEntry!2314 newMap!16) (defaultEntry!2314 (v!2626 (underlying!287 thiss!992)))) t!5234) tb!1663))

(declare-fun result!2875 () Bool)

(assert (= result!2875 result!2871))

(assert (=> b!82647 t!5234))

(declare-fun b_and!5019 () Bool)

(assert (= b_and!5015 (and (=> t!5234 result!2875) b_and!5019)))

(declare-fun m!85379 () Bool)

(assert (=> mapNonEmpty!3356 m!85379))

(declare-fun m!85381 () Bool)

(assert (=> b!82654 m!85381))

(assert (=> b!82654 m!85381))

(declare-fun m!85383 () Bool)

(assert (=> b!82654 m!85383))

(assert (=> b!82654 m!85381))

(declare-fun m!85385 () Bool)

(assert (=> b!82654 m!85385))

(declare-fun m!85387 () Bool)

(assert (=> b!82662 m!85387))

(declare-fun m!85389 () Bool)

(assert (=> b!82662 m!85389))

(declare-fun m!85391 () Bool)

(assert (=> mapNonEmpty!3355 m!85391))

(declare-fun m!85393 () Bool)

(assert (=> b!82648 m!85393))

(declare-fun m!85395 () Bool)

(assert (=> b!82650 m!85395))

(declare-fun m!85397 () Bool)

(assert (=> b!82650 m!85397))

(declare-fun m!85399 () Bool)

(assert (=> b!82645 m!85399))

(declare-fun m!85401 () Bool)

(assert (=> b!82645 m!85401))

(declare-fun m!85403 () Bool)

(assert (=> b!82643 m!85403))

(declare-fun m!85405 () Bool)

(assert (=> b!82643 m!85405))

(assert (=> b!82643 m!85381))

(declare-fun m!85407 () Bool)

(assert (=> b!82643 m!85407))

(assert (=> b!82643 m!85381))

(declare-fun m!85409 () Bool)

(assert (=> b!82643 m!85409))

(assert (=> b!82643 m!85381))

(declare-fun m!85411 () Bool)

(assert (=> b!82643 m!85411))

(declare-fun m!85413 () Bool)

(assert (=> b!82643 m!85413))

(declare-fun m!85415 () Bool)

(assert (=> b!82643 m!85415))

(declare-fun m!85417 () Bool)

(assert (=> b!82643 m!85417))

(declare-fun m!85419 () Bool)

(assert (=> b!82643 m!85419))

(declare-fun m!85421 () Bool)

(assert (=> b!82643 m!85421))

(assert (=> b!82643 m!85417))

(declare-fun m!85423 () Bool)

(assert (=> b!82643 m!85423))

(declare-fun m!85425 () Bool)

(assert (=> b!82656 m!85425))

(declare-fun m!85427 () Bool)

(assert (=> b!82656 m!85427))

(assert (=> b!82656 m!85381))

(declare-fun m!85429 () Bool)

(assert (=> b!82656 m!85429))

(assert (=> b!82656 m!85381))

(assert (=> b!82656 m!85381))

(declare-fun m!85431 () Bool)

(assert (=> b!82656 m!85431))

(assert (=> b!82656 m!85381))

(declare-fun m!85433 () Bool)

(assert (=> b!82656 m!85433))

(assert (=> b!82647 m!85381))

(declare-fun m!85435 () Bool)

(assert (=> b!82647 m!85435))

(declare-fun m!85437 () Bool)

(assert (=> b!82647 m!85437))

(assert (=> b!82647 m!85435))

(assert (=> b!82647 m!85437))

(declare-fun m!85439 () Bool)

(assert (=> b!82647 m!85439))

(declare-fun m!85441 () Bool)

(assert (=> start!10522 m!85441))

(check-sat b_and!5017 b_and!5019 (not start!10522) (not b!82662) (not b_next!2213) tp_is_empty!2523 (not b!82643) (not b!82645) (not b!82647) (not b!82654) (not b_lambda!3687) (not mapNonEmpty!3355) (not b!82650) (not mapNonEmpty!3356) (not b!82648) (not b_next!2215) (not b!82656))
(check-sat b_and!5017 b_and!5019 (not b_next!2213) (not b_next!2215))

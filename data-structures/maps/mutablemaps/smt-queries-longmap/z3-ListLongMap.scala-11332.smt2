; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131930 () Bool)

(assert start!131930)

(declare-fun b_free!31611 () Bool)

(declare-fun b_next!31611 () Bool)

(assert (=> start!131930 (= b_free!31611 (not b_next!31611))))

(declare-fun tp!111085 () Bool)

(declare-fun b_and!51031 () Bool)

(assert (=> start!131930 (= tp!111085 b_and!51031)))

(declare-fun b!1544094 () Bool)

(declare-fun res!1059352 () Bool)

(declare-fun e!859483 () Bool)

(assert (=> b!1544094 (=> (not res!1059352) (not e!859483))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!102947 0))(
  ( (array!102948 (arr!49671 (Array (_ BitVec 32) (_ BitVec 64))) (size!50222 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102947)

(assert (=> b!1544094 (= res!1059352 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50222 _keys!618))))))

(declare-fun mapIsEmpty!58534 () Bool)

(declare-fun mapRes!58534 () Bool)

(assert (=> mapIsEmpty!58534 mapRes!58534))

(declare-fun b!1544095 () Bool)

(declare-datatypes ((V!58959 0))(
  ( (V!58960 (val!19021 Int)) )
))
(declare-datatypes ((tuple2!24572 0))(
  ( (tuple2!24573 (_1!12296 (_ BitVec 64)) (_2!12296 V!58959)) )
))
(declare-datatypes ((List!36094 0))(
  ( (Nil!36091) (Cons!36090 (h!37536 tuple2!24572) (t!50795 List!36094)) )
))
(declare-datatypes ((ListLongMap!22193 0))(
  ( (ListLongMap!22194 (toList!11112 List!36094)) )
))
(declare-fun e!859487 () ListLongMap!22193)

(declare-fun call!68808 () ListLongMap!22193)

(assert (=> b!1544095 (= e!859487 call!68808)))

(declare-fun b!1544096 () Bool)

(declare-fun e!859485 () Bool)

(declare-fun tp_is_empty!37887 () Bool)

(assert (=> b!1544096 (= e!859485 tp_is_empty!37887)))

(declare-fun zeroValue!436 () V!58959)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68804 () Bool)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18033 0))(
  ( (ValueCellFull!18033 (v!21819 V!58959)) (EmptyCell!18033) )
))
(declare-datatypes ((array!102949 0))(
  ( (array!102950 (arr!49672 (Array (_ BitVec 32) ValueCell!18033)) (size!50223 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102949)

(declare-fun minValue!436 () V!58959)

(declare-fun call!68807 () ListLongMap!22193)

(declare-fun getCurrentListMapNoExtraKeys!6563 (array!102947 array!102949 (_ BitVec 32) (_ BitVec 32) V!58959 V!58959 (_ BitVec 32) Int) ListLongMap!22193)

(assert (=> bm!68804 (= call!68807 (getCurrentListMapNoExtraKeys!6563 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1059349 () Bool)

(assert (=> start!131930 (=> (not res!1059349) (not e!859483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131930 (= res!1059349 (validMask!0 mask!926))))

(assert (=> start!131930 e!859483))

(declare-fun array_inv!38563 (array!102947) Bool)

(assert (=> start!131930 (array_inv!38563 _keys!618)))

(assert (=> start!131930 tp_is_empty!37887))

(assert (=> start!131930 true))

(assert (=> start!131930 tp!111085))

(declare-fun e!859484 () Bool)

(declare-fun array_inv!38564 (array!102949) Bool)

(assert (=> start!131930 (and (array_inv!38564 _values!470) e!859484)))

(declare-fun mapNonEmpty!58534 () Bool)

(declare-fun tp!111086 () Bool)

(declare-fun e!859489 () Bool)

(assert (=> mapNonEmpty!58534 (= mapRes!58534 (and tp!111086 e!859489))))

(declare-fun mapRest!58534 () (Array (_ BitVec 32) ValueCell!18033))

(declare-fun mapValue!58534 () ValueCell!18033)

(declare-fun mapKey!58534 () (_ BitVec 32))

(assert (=> mapNonEmpty!58534 (= (arr!49672 _values!470) (store mapRest!58534 mapKey!58534 mapValue!58534))))

(declare-fun b!1544097 () Bool)

(declare-fun call!68809 () ListLongMap!22193)

(assert (=> b!1544097 (= e!859487 call!68809)))

(declare-fun b!1544098 () Bool)

(assert (=> b!1544098 (= e!859484 (and e!859485 mapRes!58534))))

(declare-fun condMapEmpty!58534 () Bool)

(declare-fun mapDefault!58534 () ValueCell!18033)

(assert (=> b!1544098 (= condMapEmpty!58534 (= (arr!49672 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18033)) mapDefault!58534)))))

(declare-fun bm!68805 () Bool)

(declare-fun call!68810 () ListLongMap!22193)

(assert (=> bm!68805 (= call!68808 call!68810)))

(declare-fun b!1544099 () Bool)

(declare-fun res!1059351 () Bool)

(assert (=> b!1544099 (=> (not res!1059351) (not e!859483))))

(assert (=> b!1544099 (= res!1059351 (and (= (size!50223 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50222 _keys!618) (size!50223 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544100 () Bool)

(declare-fun res!1059353 () Bool)

(assert (=> b!1544100 (=> (not res!1059353) (not e!859483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102947 (_ BitVec 32)) Bool)

(assert (=> b!1544100 (= res!1059353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544101 () Bool)

(declare-fun c!141312 () Bool)

(declare-fun lt!666028 () Bool)

(assert (=> b!1544101 (= c!141312 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666028))))

(declare-fun e!859486 () ListLongMap!22193)

(assert (=> b!1544101 (= e!859486 e!859487)))

(declare-fun bm!68806 () Bool)

(declare-fun call!68811 () ListLongMap!22193)

(assert (=> bm!68806 (= call!68809 call!68811)))

(declare-fun b!1544102 () Bool)

(assert (=> b!1544102 (= e!859483 false)))

(declare-fun lt!666029 () ListLongMap!22193)

(declare-fun e!859488 () ListLongMap!22193)

(assert (=> b!1544102 (= lt!666029 e!859488)))

(declare-fun c!141313 () Bool)

(assert (=> b!1544102 (= c!141313 (and (not lt!666028) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544102 (= lt!666028 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!68807 () Bool)

(assert (=> bm!68807 (= call!68811 call!68807)))

(declare-fun b!1544103 () Bool)

(declare-fun res!1059350 () Bool)

(assert (=> b!1544103 (=> (not res!1059350) (not e!859483))))

(declare-datatypes ((List!36095 0))(
  ( (Nil!36092) (Cons!36091 (h!37537 (_ BitVec 64)) (t!50796 List!36095)) )
))
(declare-fun arrayNoDuplicates!0 (array!102947 (_ BitVec 32) List!36095) Bool)

(assert (=> b!1544103 (= res!1059350 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36092))))

(declare-fun b!1544104 () Bool)

(assert (=> b!1544104 (= e!859488 e!859486)))

(declare-fun c!141314 () Bool)

(assert (=> b!1544104 (= c!141314 (and (not lt!666028) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1544105 () Bool)

(assert (=> b!1544105 (= e!859486 call!68808)))

(declare-fun bm!68808 () Bool)

(declare-fun +!4849 (ListLongMap!22193 tuple2!24572) ListLongMap!22193)

(assert (=> bm!68808 (= call!68810 (+!4849 (ite c!141313 call!68807 (ite c!141314 call!68811 call!68809)) (ite (or c!141313 c!141314) (tuple2!24573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544106 () Bool)

(assert (=> b!1544106 (= e!859488 (+!4849 call!68810 (tuple2!24573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544107 () Bool)

(assert (=> b!1544107 (= e!859489 tp_is_empty!37887)))

(assert (= (and start!131930 res!1059349) b!1544099))

(assert (= (and b!1544099 res!1059351) b!1544100))

(assert (= (and b!1544100 res!1059353) b!1544103))

(assert (= (and b!1544103 res!1059350) b!1544094))

(assert (= (and b!1544094 res!1059352) b!1544102))

(assert (= (and b!1544102 c!141313) b!1544106))

(assert (= (and b!1544102 (not c!141313)) b!1544104))

(assert (= (and b!1544104 c!141314) b!1544105))

(assert (= (and b!1544104 (not c!141314)) b!1544101))

(assert (= (and b!1544101 c!141312) b!1544095))

(assert (= (and b!1544101 (not c!141312)) b!1544097))

(assert (= (or b!1544095 b!1544097) bm!68806))

(assert (= (or b!1544105 bm!68806) bm!68807))

(assert (= (or b!1544105 b!1544095) bm!68805))

(assert (= (or b!1544106 bm!68807) bm!68804))

(assert (= (or b!1544106 bm!68805) bm!68808))

(assert (= (and b!1544098 condMapEmpty!58534) mapIsEmpty!58534))

(assert (= (and b!1544098 (not condMapEmpty!58534)) mapNonEmpty!58534))

(get-info :version)

(assert (= (and mapNonEmpty!58534 ((_ is ValueCellFull!18033) mapValue!58534)) b!1544107))

(assert (= (and b!1544098 ((_ is ValueCellFull!18033) mapDefault!58534)) b!1544096))

(assert (= start!131930 b!1544098))

(declare-fun m!1425109 () Bool)

(assert (=> mapNonEmpty!58534 m!1425109))

(declare-fun m!1425111 () Bool)

(assert (=> b!1544100 m!1425111))

(declare-fun m!1425113 () Bool)

(assert (=> bm!68808 m!1425113))

(declare-fun m!1425115 () Bool)

(assert (=> start!131930 m!1425115))

(declare-fun m!1425117 () Bool)

(assert (=> start!131930 m!1425117))

(declare-fun m!1425119 () Bool)

(assert (=> start!131930 m!1425119))

(declare-fun m!1425121 () Bool)

(assert (=> b!1544106 m!1425121))

(declare-fun m!1425123 () Bool)

(assert (=> b!1544103 m!1425123))

(declare-fun m!1425125 () Bool)

(assert (=> bm!68804 m!1425125))

(check-sat (not mapNonEmpty!58534) (not bm!68808) tp_is_empty!37887 (not b!1544100) (not b!1544103) b_and!51031 (not b!1544106) (not start!131930) (not b_next!31611) (not bm!68804))
(check-sat b_and!51031 (not b_next!31611))

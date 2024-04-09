; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131960 () Bool)

(assert start!131960)

(declare-fun b_free!31641 () Bool)

(declare-fun b_next!31641 () Bool)

(assert (=> start!131960 (= b_free!31641 (not b_next!31641))))

(declare-fun tp!111176 () Bool)

(declare-fun b_and!51061 () Bool)

(assert (=> start!131960 (= tp!111176 b_and!51061)))

(declare-datatypes ((V!58999 0))(
  ( (V!59000 (val!19036 Int)) )
))
(declare-fun zeroValue!436 () V!58999)

(declare-datatypes ((tuple2!24600 0))(
  ( (tuple2!24601 (_1!12310 (_ BitVec 64)) (_2!12310 V!58999)) )
))
(declare-datatypes ((List!36119 0))(
  ( (Nil!36116) (Cons!36115 (h!37561 tuple2!24600) (t!50820 List!36119)) )
))
(declare-datatypes ((ListLongMap!22221 0))(
  ( (ListLongMap!22222 (toList!11126 List!36119)) )
))
(declare-fun call!69032 () ListLongMap!22221)

(declare-fun call!69033 () ListLongMap!22221)

(declare-fun call!69036 () ListLongMap!22221)

(declare-fun minValue!436 () V!58999)

(declare-fun call!69034 () ListLongMap!22221)

(declare-fun c!141448 () Bool)

(declare-fun bm!69029 () Bool)

(declare-fun c!141447 () Bool)

(declare-fun +!4858 (ListLongMap!22221 tuple2!24600) ListLongMap!22221)

(assert (=> bm!69029 (= call!69033 (+!4858 (ite c!141447 call!69032 (ite c!141448 call!69036 call!69034)) (ite (or c!141447 c!141448) (tuple2!24601 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24601 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69030 () Bool)

(declare-datatypes ((array!103007 0))(
  ( (array!103008 (arr!49701 (Array (_ BitVec 32) (_ BitVec 64))) (size!50252 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103007)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18048 0))(
  ( (ValueCellFull!18048 (v!21834 V!58999)) (EmptyCell!18048) )
))
(declare-datatypes ((array!103009 0))(
  ( (array!103010 (arr!49702 (Array (_ BitVec 32) ValueCell!18048)) (size!50253 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103009)

(declare-fun getCurrentListMapNoExtraKeys!6575 (array!103007 array!103009 (_ BitVec 32) (_ BitVec 32) V!58999 V!58999 (_ BitVec 32) Int) ListLongMap!22221)

(assert (=> bm!69030 (= call!69032 (getCurrentListMapNoExtraKeys!6575 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544724 () Bool)

(declare-fun c!141449 () Bool)

(declare-fun lt!666119 () Bool)

(assert (=> b!1544724 (= c!141449 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666119))))

(declare-fun e!859842 () ListLongMap!22221)

(declare-fun e!859846 () ListLongMap!22221)

(assert (=> b!1544724 (= e!859842 e!859846)))

(declare-fun bm!69031 () Bool)

(assert (=> bm!69031 (= call!69034 call!69036)))

(declare-fun mapIsEmpty!58579 () Bool)

(declare-fun mapRes!58579 () Bool)

(assert (=> mapIsEmpty!58579 mapRes!58579))

(declare-fun b!1544725 () Bool)

(declare-fun e!859849 () ListLongMap!22221)

(assert (=> b!1544725 (= e!859849 e!859842)))

(assert (=> b!1544725 (= c!141448 (and (not lt!666119) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1544726 () Bool)

(declare-fun e!859844 () Bool)

(declare-fun tp_is_empty!37917 () Bool)

(assert (=> b!1544726 (= e!859844 tp_is_empty!37917)))

(declare-fun res!1059577 () Bool)

(declare-fun e!859848 () Bool)

(assert (=> start!131960 (=> (not res!1059577) (not e!859848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131960 (= res!1059577 (validMask!0 mask!926))))

(assert (=> start!131960 e!859848))

(declare-fun array_inv!38583 (array!103007) Bool)

(assert (=> start!131960 (array_inv!38583 _keys!618)))

(assert (=> start!131960 tp_is_empty!37917))

(assert (=> start!131960 true))

(assert (=> start!131960 tp!111176))

(declare-fun e!859843 () Bool)

(declare-fun array_inv!38584 (array!103009) Bool)

(assert (=> start!131960 (and (array_inv!38584 _values!470) e!859843)))

(declare-fun b!1544727 () Bool)

(declare-fun e!859845 () Bool)

(assert (=> b!1544727 (= e!859843 (and e!859845 mapRes!58579))))

(declare-fun condMapEmpty!58579 () Bool)

(declare-fun mapDefault!58579 () ValueCell!18048)

(assert (=> b!1544727 (= condMapEmpty!58579 (= (arr!49702 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18048)) mapDefault!58579)))))

(declare-fun b!1544728 () Bool)

(declare-fun res!1059576 () Bool)

(assert (=> b!1544728 (=> (not res!1059576) (not e!859848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103007 (_ BitVec 32)) Bool)

(assert (=> b!1544728 (= res!1059576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69032 () Bool)

(declare-fun call!69035 () ListLongMap!22221)

(assert (=> bm!69032 (= call!69035 call!69033)))

(declare-fun b!1544729 () Bool)

(assert (=> b!1544729 (= e!859846 call!69035)))

(declare-fun b!1544730 () Bool)

(assert (=> b!1544730 (= e!859848 false)))

(declare-fun lt!666118 () ListLongMap!22221)

(assert (=> b!1544730 (= lt!666118 e!859849)))

(assert (=> b!1544730 (= c!141447 (and (not lt!666119) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544730 (= lt!666119 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544731 () Bool)

(declare-fun res!1059575 () Bool)

(assert (=> b!1544731 (=> (not res!1059575) (not e!859848))))

(declare-datatypes ((List!36120 0))(
  ( (Nil!36117) (Cons!36116 (h!37562 (_ BitVec 64)) (t!50821 List!36120)) )
))
(declare-fun arrayNoDuplicates!0 (array!103007 (_ BitVec 32) List!36120) Bool)

(assert (=> b!1544731 (= res!1059575 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36117))))

(declare-fun bm!69033 () Bool)

(assert (=> bm!69033 (= call!69036 call!69032)))

(declare-fun mapNonEmpty!58579 () Bool)

(declare-fun tp!111175 () Bool)

(assert (=> mapNonEmpty!58579 (= mapRes!58579 (and tp!111175 e!859844))))

(declare-fun mapKey!58579 () (_ BitVec 32))

(declare-fun mapValue!58579 () ValueCell!18048)

(declare-fun mapRest!58579 () (Array (_ BitVec 32) ValueCell!18048))

(assert (=> mapNonEmpty!58579 (= (arr!49702 _values!470) (store mapRest!58579 mapKey!58579 mapValue!58579))))

(declare-fun b!1544732 () Bool)

(declare-fun res!1059578 () Bool)

(assert (=> b!1544732 (=> (not res!1059578) (not e!859848))))

(assert (=> b!1544732 (= res!1059578 (and (= (size!50253 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50252 _keys!618) (size!50253 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544733 () Bool)

(assert (=> b!1544733 (= e!859846 call!69034)))

(declare-fun b!1544734 () Bool)

(assert (=> b!1544734 (= e!859842 call!69035)))

(declare-fun b!1544735 () Bool)

(assert (=> b!1544735 (= e!859849 (+!4858 call!69033 (tuple2!24601 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544736 () Bool)

(assert (=> b!1544736 (= e!859845 tp_is_empty!37917)))

(declare-fun b!1544737 () Bool)

(declare-fun res!1059574 () Bool)

(assert (=> b!1544737 (=> (not res!1059574) (not e!859848))))

(assert (=> b!1544737 (= res!1059574 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50252 _keys!618))))))

(assert (= (and start!131960 res!1059577) b!1544732))

(assert (= (and b!1544732 res!1059578) b!1544728))

(assert (= (and b!1544728 res!1059576) b!1544731))

(assert (= (and b!1544731 res!1059575) b!1544737))

(assert (= (and b!1544737 res!1059574) b!1544730))

(assert (= (and b!1544730 c!141447) b!1544735))

(assert (= (and b!1544730 (not c!141447)) b!1544725))

(assert (= (and b!1544725 c!141448) b!1544734))

(assert (= (and b!1544725 (not c!141448)) b!1544724))

(assert (= (and b!1544724 c!141449) b!1544729))

(assert (= (and b!1544724 (not c!141449)) b!1544733))

(assert (= (or b!1544729 b!1544733) bm!69031))

(assert (= (or b!1544734 bm!69031) bm!69033))

(assert (= (or b!1544734 b!1544729) bm!69032))

(assert (= (or b!1544735 bm!69033) bm!69030))

(assert (= (or b!1544735 bm!69032) bm!69029))

(assert (= (and b!1544727 condMapEmpty!58579) mapIsEmpty!58579))

(assert (= (and b!1544727 (not condMapEmpty!58579)) mapNonEmpty!58579))

(get-info :version)

(assert (= (and mapNonEmpty!58579 ((_ is ValueCellFull!18048) mapValue!58579)) b!1544726))

(assert (= (and b!1544727 ((_ is ValueCellFull!18048) mapDefault!58579)) b!1544736))

(assert (= start!131960 b!1544727))

(declare-fun m!1425379 () Bool)

(assert (=> b!1544728 m!1425379))

(declare-fun m!1425381 () Bool)

(assert (=> bm!69029 m!1425381))

(declare-fun m!1425383 () Bool)

(assert (=> bm!69030 m!1425383))

(declare-fun m!1425385 () Bool)

(assert (=> start!131960 m!1425385))

(declare-fun m!1425387 () Bool)

(assert (=> start!131960 m!1425387))

(declare-fun m!1425389 () Bool)

(assert (=> start!131960 m!1425389))

(declare-fun m!1425391 () Bool)

(assert (=> b!1544735 m!1425391))

(declare-fun m!1425393 () Bool)

(assert (=> mapNonEmpty!58579 m!1425393))

(declare-fun m!1425395 () Bool)

(assert (=> b!1544731 m!1425395))

(check-sat (not mapNonEmpty!58579) tp_is_empty!37917 (not b!1544728) (not b!1544735) (not bm!69030) (not b_next!31641) b_and!51061 (not start!131960) (not b!1544731) (not bm!69029))
(check-sat b_and!51061 (not b_next!31641))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131924 () Bool)

(assert start!131924)

(declare-fun b_free!31605 () Bool)

(declare-fun b_next!31605 () Bool)

(assert (=> start!131924 (= b_free!31605 (not b_next!31605))))

(declare-fun tp!111067 () Bool)

(declare-fun b_and!51025 () Bool)

(assert (=> start!131924 (= tp!111067 b_and!51025)))

(declare-fun b!1543968 () Bool)

(declare-fun c!141285 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666011 () Bool)

(assert (=> b!1543968 (= c!141285 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666011))))

(declare-datatypes ((V!58951 0))(
  ( (V!58952 (val!19018 Int)) )
))
(declare-datatypes ((tuple2!24566 0))(
  ( (tuple2!24567 (_1!12293 (_ BitVec 64)) (_2!12293 V!58951)) )
))
(declare-datatypes ((List!36089 0))(
  ( (Nil!36086) (Cons!36085 (h!37531 tuple2!24566) (t!50790 List!36089)) )
))
(declare-datatypes ((ListLongMap!22187 0))(
  ( (ListLongMap!22188 (toList!11109 List!36089)) )
))
(declare-fun e!859415 () ListLongMap!22187)

(declare-fun e!859410 () ListLongMap!22187)

(assert (=> b!1543968 (= e!859415 e!859410)))

(declare-fun bm!68759 () Bool)

(declare-fun call!68765 () ListLongMap!22187)

(declare-fun call!68766 () ListLongMap!22187)

(assert (=> bm!68759 (= call!68765 call!68766)))

(declare-fun b!1543969 () Bool)

(declare-fun res!1059307 () Bool)

(declare-fun e!859414 () Bool)

(assert (=> b!1543969 (=> (not res!1059307) (not e!859414))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!102937 0))(
  ( (array!102938 (arr!49666 (Array (_ BitVec 32) (_ BitVec 64))) (size!50217 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102937)

(assert (=> b!1543969 (= res!1059307 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50217 _keys!618))))))

(declare-fun b!1543970 () Bool)

(assert (=> b!1543970 (= e!859414 false)))

(declare-fun lt!666010 () ListLongMap!22187)

(declare-fun e!859413 () ListLongMap!22187)

(assert (=> b!1543970 (= lt!666010 e!859413)))

(declare-fun c!141287 () Bool)

(assert (=> b!1543970 (= c!141287 (and (not lt!666011) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1543970 (= lt!666011 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!58525 () Bool)

(declare-fun mapRes!58525 () Bool)

(declare-fun tp!111068 () Bool)

(declare-fun e!859412 () Bool)

(assert (=> mapNonEmpty!58525 (= mapRes!58525 (and tp!111068 e!859412))))

(declare-fun mapKey!58525 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18030 0))(
  ( (ValueCellFull!18030 (v!21816 V!58951)) (EmptyCell!18030) )
))
(declare-fun mapRest!58525 () (Array (_ BitVec 32) ValueCell!18030))

(declare-datatypes ((array!102939 0))(
  ( (array!102940 (arr!49667 (Array (_ BitVec 32) ValueCell!18030)) (size!50218 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102939)

(declare-fun mapValue!58525 () ValueCell!18030)

(assert (=> mapNonEmpty!58525 (= (arr!49667 _values!470) (store mapRest!58525 mapKey!58525 mapValue!58525))))

(declare-fun b!1543971 () Bool)

(declare-fun res!1059306 () Bool)

(assert (=> b!1543971 (=> (not res!1059306) (not e!859414))))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1543971 (= res!1059306 (and (= (size!50218 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50217 _keys!618) (size!50218 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543972 () Bool)

(declare-fun call!68763 () ListLongMap!22187)

(declare-fun minValue!436 () V!58951)

(declare-fun +!4847 (ListLongMap!22187 tuple2!24566) ListLongMap!22187)

(assert (=> b!1543972 (= e!859413 (+!4847 call!68763 (tuple2!24567 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1543973 () Bool)

(declare-fun call!68764 () ListLongMap!22187)

(assert (=> b!1543973 (= e!859415 call!68764)))

(declare-fun b!1543974 () Bool)

(assert (=> b!1543974 (= e!859410 call!68764)))

(declare-fun zeroValue!436 () V!58951)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68760 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6561 (array!102937 array!102939 (_ BitVec 32) (_ BitVec 32) V!58951 V!58951 (_ BitVec 32) Int) ListLongMap!22187)

(assert (=> bm!68760 (= call!68766 (getCurrentListMapNoExtraKeys!6561 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1543975 () Bool)

(declare-fun e!859416 () Bool)

(declare-fun e!859411 () Bool)

(assert (=> b!1543975 (= e!859416 (and e!859411 mapRes!58525))))

(declare-fun condMapEmpty!58525 () Bool)

(declare-fun mapDefault!58525 () ValueCell!18030)

(assert (=> b!1543975 (= condMapEmpty!58525 (= (arr!49667 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18030)) mapDefault!58525)))))

(declare-fun res!1059308 () Bool)

(assert (=> start!131924 (=> (not res!1059308) (not e!859414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131924 (= res!1059308 (validMask!0 mask!926))))

(assert (=> start!131924 e!859414))

(declare-fun array_inv!38559 (array!102937) Bool)

(assert (=> start!131924 (array_inv!38559 _keys!618)))

(declare-fun tp_is_empty!37881 () Bool)

(assert (=> start!131924 tp_is_empty!37881))

(assert (=> start!131924 true))

(assert (=> start!131924 tp!111067))

(declare-fun array_inv!38560 (array!102939) Bool)

(assert (=> start!131924 (and (array_inv!38560 _values!470) e!859416)))

(declare-fun b!1543976 () Bool)

(declare-fun res!1059304 () Bool)

(assert (=> b!1543976 (=> (not res!1059304) (not e!859414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102937 (_ BitVec 32)) Bool)

(assert (=> b!1543976 (= res!1059304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun call!68762 () ListLongMap!22187)

(declare-fun bm!68761 () Bool)

(declare-fun c!141286 () Bool)

(assert (=> bm!68761 (= call!68763 (+!4847 (ite c!141287 call!68766 (ite c!141286 call!68765 call!68762)) (ite (or c!141287 c!141286) (tuple2!24567 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24567 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1543977 () Bool)

(assert (=> b!1543977 (= e!859410 call!68762)))

(declare-fun bm!68762 () Bool)

(assert (=> bm!68762 (= call!68762 call!68765)))

(declare-fun mapIsEmpty!58525 () Bool)

(assert (=> mapIsEmpty!58525 mapRes!58525))

(declare-fun b!1543978 () Bool)

(assert (=> b!1543978 (= e!859413 e!859415)))

(assert (=> b!1543978 (= c!141286 (and (not lt!666011) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1543979 () Bool)

(declare-fun res!1059305 () Bool)

(assert (=> b!1543979 (=> (not res!1059305) (not e!859414))))

(declare-datatypes ((List!36090 0))(
  ( (Nil!36087) (Cons!36086 (h!37532 (_ BitVec 64)) (t!50791 List!36090)) )
))
(declare-fun arrayNoDuplicates!0 (array!102937 (_ BitVec 32) List!36090) Bool)

(assert (=> b!1543979 (= res!1059305 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36087))))

(declare-fun b!1543980 () Bool)

(assert (=> b!1543980 (= e!859412 tp_is_empty!37881)))

(declare-fun b!1543981 () Bool)

(assert (=> b!1543981 (= e!859411 tp_is_empty!37881)))

(declare-fun bm!68763 () Bool)

(assert (=> bm!68763 (= call!68764 call!68763)))

(assert (= (and start!131924 res!1059308) b!1543971))

(assert (= (and b!1543971 res!1059306) b!1543976))

(assert (= (and b!1543976 res!1059304) b!1543979))

(assert (= (and b!1543979 res!1059305) b!1543969))

(assert (= (and b!1543969 res!1059307) b!1543970))

(assert (= (and b!1543970 c!141287) b!1543972))

(assert (= (and b!1543970 (not c!141287)) b!1543978))

(assert (= (and b!1543978 c!141286) b!1543973))

(assert (= (and b!1543978 (not c!141286)) b!1543968))

(assert (= (and b!1543968 c!141285) b!1543974))

(assert (= (and b!1543968 (not c!141285)) b!1543977))

(assert (= (or b!1543974 b!1543977) bm!68762))

(assert (= (or b!1543973 bm!68762) bm!68759))

(assert (= (or b!1543973 b!1543974) bm!68763))

(assert (= (or b!1543972 bm!68759) bm!68760))

(assert (= (or b!1543972 bm!68763) bm!68761))

(assert (= (and b!1543975 condMapEmpty!58525) mapIsEmpty!58525))

(assert (= (and b!1543975 (not condMapEmpty!58525)) mapNonEmpty!58525))

(get-info :version)

(assert (= (and mapNonEmpty!58525 ((_ is ValueCellFull!18030) mapValue!58525)) b!1543980))

(assert (= (and b!1543975 ((_ is ValueCellFull!18030) mapDefault!58525)) b!1543981))

(assert (= start!131924 b!1543975))

(declare-fun m!1425055 () Bool)

(assert (=> bm!68760 m!1425055))

(declare-fun m!1425057 () Bool)

(assert (=> b!1543972 m!1425057))

(declare-fun m!1425059 () Bool)

(assert (=> mapNonEmpty!58525 m!1425059))

(declare-fun m!1425061 () Bool)

(assert (=> start!131924 m!1425061))

(declare-fun m!1425063 () Bool)

(assert (=> start!131924 m!1425063))

(declare-fun m!1425065 () Bool)

(assert (=> start!131924 m!1425065))

(declare-fun m!1425067 () Bool)

(assert (=> b!1543979 m!1425067))

(declare-fun m!1425069 () Bool)

(assert (=> bm!68761 m!1425069))

(declare-fun m!1425071 () Bool)

(assert (=> b!1543976 m!1425071))

(check-sat (not b!1543976) b_and!51025 (not mapNonEmpty!58525) (not bm!68760) (not bm!68761) (not b_next!31605) (not start!131924) tp_is_empty!37881 (not b!1543979) (not b!1543972))
(check-sat b_and!51025 (not b_next!31605))

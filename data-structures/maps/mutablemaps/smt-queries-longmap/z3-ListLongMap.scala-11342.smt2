; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131990 () Bool)

(assert start!131990)

(declare-fun b_free!31671 () Bool)

(declare-fun b_next!31671 () Bool)

(assert (=> start!131990 (= b_free!31671 (not b_next!31671))))

(declare-fun tp!111265 () Bool)

(declare-fun b_and!51091 () Bool)

(assert (=> start!131990 (= tp!111265 b_and!51091)))

(declare-fun b!1545418 () Bool)

(declare-fun res!1059865 () Bool)

(declare-fun e!860235 () Bool)

(assert (=> b!1545418 (=> (not res!1059865) (not e!860235))))

(declare-datatypes ((array!103067 0))(
  ( (array!103068 (arr!49731 (Array (_ BitVec 32) (_ BitVec 64))) (size!50282 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103067)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545418 (= res!1059865 (validKeyInArray!0 (select (arr!49731 _keys!618) from!762)))))

(declare-fun b!1545419 () Bool)

(declare-fun res!1059869 () Bool)

(declare-fun e!860237 () Bool)

(assert (=> b!1545419 (=> (not res!1059869) (not e!860237))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!59039 0))(
  ( (V!59040 (val!19051 Int)) )
))
(declare-datatypes ((ValueCell!18063 0))(
  ( (ValueCellFull!18063 (v!21849 V!59039)) (EmptyCell!18063) )
))
(declare-datatypes ((array!103069 0))(
  ( (array!103070 (arr!49732 (Array (_ BitVec 32) ValueCell!18063)) (size!50283 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103069)

(assert (=> b!1545419 (= res!1059869 (and (= (size!50283 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50282 _keys!618) (size!50283 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545420 () Bool)

(declare-datatypes ((tuple2!24630 0))(
  ( (tuple2!24631 (_1!12325 (_ BitVec 64)) (_2!12325 V!59039)) )
))
(declare-datatypes ((List!36146 0))(
  ( (Nil!36143) (Cons!36142 (h!37588 tuple2!24630) (t!50847 List!36146)) )
))
(declare-datatypes ((ListLongMap!22251 0))(
  ( (ListLongMap!22252 (toList!11141 List!36146)) )
))
(declare-fun e!860238 () ListLongMap!22251)

(declare-fun call!69259 () ListLongMap!22251)

(assert (=> b!1545420 (= e!860238 call!69259)))

(declare-fun b!1545421 () Bool)

(declare-fun res!1059864 () Bool)

(assert (=> b!1545421 (=> (not res!1059864) (not e!860237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103067 (_ BitVec 32)) Bool)

(assert (=> b!1545421 (= res!1059864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545422 () Bool)

(declare-fun e!860239 () Bool)

(declare-fun tp_is_empty!37947 () Bool)

(assert (=> b!1545422 (= e!860239 tp_is_empty!37947)))

(declare-fun b!1545423 () Bool)

(declare-fun e!860242 () Bool)

(declare-fun e!860240 () Bool)

(declare-fun mapRes!58624 () Bool)

(assert (=> b!1545423 (= e!860242 (and e!860240 mapRes!58624))))

(declare-fun condMapEmpty!58624 () Bool)

(declare-fun mapDefault!58624 () ValueCell!18063)

(assert (=> b!1545423 (= condMapEmpty!58624 (= (arr!49732 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18063)) mapDefault!58624)))))

(declare-fun bm!69254 () Bool)

(declare-fun call!69258 () ListLongMap!22251)

(assert (=> bm!69254 (= call!69259 call!69258)))

(declare-fun mapNonEmpty!58624 () Bool)

(declare-fun tp!111266 () Bool)

(assert (=> mapNonEmpty!58624 (= mapRes!58624 (and tp!111266 e!860239))))

(declare-fun mapValue!58624 () ValueCell!18063)

(declare-fun mapKey!58624 () (_ BitVec 32))

(declare-fun mapRest!58624 () (Array (_ BitVec 32) ValueCell!18063))

(assert (=> mapNonEmpty!58624 (= (arr!49732 _values!470) (store mapRest!58624 mapKey!58624 mapValue!58624))))

(declare-fun b!1545424 () Bool)

(declare-fun e!860241 () ListLongMap!22251)

(assert (=> b!1545424 (= e!860241 e!860238)))

(declare-fun c!141583 () Bool)

(declare-fun lt!666264 () Bool)

(assert (=> b!1545424 (= c!141583 (and (not lt!666264) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69255 () Bool)

(declare-fun call!69261 () ListLongMap!22251)

(declare-fun call!69257 () ListLongMap!22251)

(assert (=> bm!69255 (= call!69261 call!69257)))

(declare-fun b!1545425 () Bool)

(declare-fun e!860234 () ListLongMap!22251)

(assert (=> b!1545425 (= e!860234 call!69261)))

(declare-fun b!1545426 () Bool)

(declare-fun res!1059866 () Bool)

(assert (=> b!1545426 (=> (not res!1059866) (not e!860237))))

(declare-datatypes ((List!36147 0))(
  ( (Nil!36144) (Cons!36143 (h!37589 (_ BitVec 64)) (t!50848 List!36147)) )
))
(declare-fun arrayNoDuplicates!0 (array!103067 (_ BitVec 32) List!36147) Bool)

(assert (=> b!1545426 (= res!1059866 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36144))))

(declare-fun bm!69256 () Bool)

(declare-fun call!69260 () ListLongMap!22251)

(assert (=> bm!69256 (= call!69257 call!69260)))

(declare-fun res!1059867 () Bool)

(assert (=> start!131990 (=> (not res!1059867) (not e!860237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131990 (= res!1059867 (validMask!0 mask!926))))

(assert (=> start!131990 e!860237))

(declare-fun array_inv!38601 (array!103067) Bool)

(assert (=> start!131990 (array_inv!38601 _keys!618)))

(assert (=> start!131990 tp_is_empty!37947))

(assert (=> start!131990 true))

(assert (=> start!131990 tp!111265))

(declare-fun array_inv!38602 (array!103069) Bool)

(assert (=> start!131990 (and (array_inv!38602 _values!470) e!860242)))

(declare-fun b!1545427 () Bool)

(declare-fun minValue!436 () V!59039)

(declare-fun +!4871 (ListLongMap!22251 tuple2!24630) ListLongMap!22251)

(assert (=> b!1545427 (= e!860241 (+!4871 call!69258 (tuple2!24631 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545428 () Bool)

(declare-fun res!1059868 () Bool)

(assert (=> b!1545428 (=> (not res!1059868) (not e!860237))))

(assert (=> b!1545428 (= res!1059868 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50282 _keys!618))))))

(declare-fun zeroValue!436 () V!59039)

(declare-fun c!141584 () Bool)

(declare-fun bm!69257 () Bool)

(assert (=> bm!69257 (= call!69258 (+!4871 (ite c!141584 call!69260 (ite c!141583 call!69257 call!69261)) (ite (or c!141584 c!141583) (tuple2!24631 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24631 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545429 () Bool)

(assert (=> b!1545429 (= e!860234 call!69259)))

(declare-fun b!1545430 () Bool)

(assert (=> b!1545430 (= e!860235 (not true))))

(declare-fun lt!666265 () ListLongMap!22251)

(declare-fun contains!10044 (ListLongMap!22251 (_ BitVec 64)) Bool)

(assert (=> b!1545430 (contains!10044 (+!4871 lt!666265 (tuple2!24631 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49731 _keys!618) from!762))))

(declare-datatypes ((Unit!51450 0))(
  ( (Unit!51451) )
))
(declare-fun lt!666263 () Unit!51450)

(declare-fun addStillContains!1226 (ListLongMap!22251 (_ BitVec 64) V!59039 (_ BitVec 64)) Unit!51450)

(assert (=> b!1545430 (= lt!666263 (addStillContains!1226 lt!666265 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49731 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6590 (array!103067 array!103069 (_ BitVec 32) (_ BitVec 32) V!59039 V!59039 (_ BitVec 32) Int) ListLongMap!22251)

(assert (=> b!1545430 (= lt!666265 (getCurrentListMapNoExtraKeys!6590 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69258 () Bool)

(assert (=> bm!69258 (= call!69260 (getCurrentListMapNoExtraKeys!6590 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58624 () Bool)

(assert (=> mapIsEmpty!58624 mapRes!58624))

(declare-fun b!1545431 () Bool)

(declare-fun c!141582 () Bool)

(assert (=> b!1545431 (= c!141582 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666264))))

(assert (=> b!1545431 (= e!860238 e!860234)))

(declare-fun b!1545432 () Bool)

(assert (=> b!1545432 (= e!860240 tp_is_empty!37947)))

(declare-fun b!1545433 () Bool)

(assert (=> b!1545433 (= e!860237 e!860235)))

(declare-fun res!1059863 () Bool)

(assert (=> b!1545433 (=> (not res!1059863) (not e!860235))))

(assert (=> b!1545433 (= res!1059863 (bvslt from!762 (size!50282 _keys!618)))))

(declare-fun lt!666266 () ListLongMap!22251)

(assert (=> b!1545433 (= lt!666266 e!860241)))

(assert (=> b!1545433 (= c!141584 (and (not lt!666264) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545433 (= lt!666264 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and start!131990 res!1059867) b!1545419))

(assert (= (and b!1545419 res!1059869) b!1545421))

(assert (= (and b!1545421 res!1059864) b!1545426))

(assert (= (and b!1545426 res!1059866) b!1545428))

(assert (= (and b!1545428 res!1059868) b!1545433))

(assert (= (and b!1545433 c!141584) b!1545427))

(assert (= (and b!1545433 (not c!141584)) b!1545424))

(assert (= (and b!1545424 c!141583) b!1545420))

(assert (= (and b!1545424 (not c!141583)) b!1545431))

(assert (= (and b!1545431 c!141582) b!1545429))

(assert (= (and b!1545431 (not c!141582)) b!1545425))

(assert (= (or b!1545429 b!1545425) bm!69255))

(assert (= (or b!1545420 bm!69255) bm!69256))

(assert (= (or b!1545420 b!1545429) bm!69254))

(assert (= (or b!1545427 bm!69256) bm!69258))

(assert (= (or b!1545427 bm!69254) bm!69257))

(assert (= (and b!1545433 res!1059863) b!1545418))

(assert (= (and b!1545418 res!1059865) b!1545430))

(assert (= (and b!1545423 condMapEmpty!58624) mapIsEmpty!58624))

(assert (= (and b!1545423 (not condMapEmpty!58624)) mapNonEmpty!58624))

(get-info :version)

(assert (= (and mapNonEmpty!58624 ((_ is ValueCellFull!18063) mapValue!58624)) b!1545422))

(assert (= (and b!1545423 ((_ is ValueCellFull!18063) mapDefault!58624)) b!1545432))

(assert (= start!131990 b!1545423))

(declare-fun m!1425737 () Bool)

(assert (=> mapNonEmpty!58624 m!1425737))

(declare-fun m!1425739 () Bool)

(assert (=> b!1545427 m!1425739))

(declare-fun m!1425741 () Bool)

(assert (=> b!1545426 m!1425741))

(declare-fun m!1425743 () Bool)

(assert (=> start!131990 m!1425743))

(declare-fun m!1425745 () Bool)

(assert (=> start!131990 m!1425745))

(declare-fun m!1425747 () Bool)

(assert (=> start!131990 m!1425747))

(declare-fun m!1425749 () Bool)

(assert (=> b!1545430 m!1425749))

(declare-fun m!1425751 () Bool)

(assert (=> b!1545430 m!1425751))

(declare-fun m!1425753 () Bool)

(assert (=> b!1545430 m!1425753))

(assert (=> b!1545430 m!1425749))

(declare-fun m!1425755 () Bool)

(assert (=> b!1545430 m!1425755))

(assert (=> b!1545430 m!1425749))

(declare-fun m!1425757 () Bool)

(assert (=> b!1545430 m!1425757))

(assert (=> b!1545430 m!1425755))

(declare-fun m!1425759 () Bool)

(assert (=> bm!69257 m!1425759))

(assert (=> bm!69258 m!1425753))

(assert (=> b!1545418 m!1425749))

(assert (=> b!1545418 m!1425749))

(declare-fun m!1425761 () Bool)

(assert (=> b!1545418 m!1425761))

(declare-fun m!1425763 () Bool)

(assert (=> b!1545421 m!1425763))

(check-sat (not b_next!31671) (not bm!69257) (not bm!69258) (not b!1545421) (not start!131990) b_and!51091 (not mapNonEmpty!58624) (not b!1545427) (not b!1545418) tp_is_empty!37947 (not b!1545430) (not b!1545426))
(check-sat b_and!51091 (not b_next!31671))

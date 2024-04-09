; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132280 () Bool)

(assert start!132280)

(declare-fun b_free!31899 () Bool)

(declare-fun b_next!31899 () Bool)

(assert (=> start!132280 (= b_free!31899 (not b_next!31899))))

(declare-fun tp!111959 () Bool)

(declare-fun b_and!51343 () Bool)

(assert (=> start!132280 (= tp!111959 b_and!51343)))

(declare-fun b!1551334 () Bool)

(declare-fun res!1062460 () Bool)

(declare-fun e!863620 () Bool)

(assert (=> b!1551334 (=> (not res!1062460) (not e!863620))))

(declare-datatypes ((array!103507 0))(
  ( (array!103508 (arr!49948 (Array (_ BitVec 32) (_ BitVec 64))) (size!50499 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103507)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551334 (= res!1062460 (validKeyInArray!0 (select (arr!49948 _keys!618) from!762)))))

(declare-fun bm!71000 () Bool)

(declare-datatypes ((V!59343 0))(
  ( (V!59344 (val!19165 Int)) )
))
(declare-datatypes ((tuple2!24846 0))(
  ( (tuple2!24847 (_1!12433 (_ BitVec 64)) (_2!12433 V!59343)) )
))
(declare-datatypes ((List!36331 0))(
  ( (Nil!36328) (Cons!36327 (h!37773 tuple2!24846) (t!51050 List!36331)) )
))
(declare-datatypes ((ListLongMap!22467 0))(
  ( (ListLongMap!22468 (toList!11249 List!36331)) )
))
(declare-fun call!71005 () ListLongMap!22467)

(declare-fun call!71007 () ListLongMap!22467)

(assert (=> bm!71000 (= call!71005 call!71007)))

(declare-fun res!1062456 () Bool)

(declare-fun e!863613 () Bool)

(assert (=> start!132280 (=> (not res!1062456) (not e!863613))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132280 (= res!1062456 (validMask!0 mask!926))))

(assert (=> start!132280 e!863613))

(declare-fun array_inv!38755 (array!103507) Bool)

(assert (=> start!132280 (array_inv!38755 _keys!618)))

(declare-fun tp_is_empty!38175 () Bool)

(assert (=> start!132280 tp_is_empty!38175))

(assert (=> start!132280 true))

(assert (=> start!132280 tp!111959))

(declare-datatypes ((ValueCell!18177 0))(
  ( (ValueCellFull!18177 (v!21966 V!59343)) (EmptyCell!18177) )
))
(declare-datatypes ((array!103509 0))(
  ( (array!103510 (arr!49949 (Array (_ BitVec 32) ValueCell!18177)) (size!50500 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103509)

(declare-fun e!863616 () Bool)

(declare-fun array_inv!38756 (array!103509) Bool)

(assert (=> start!132280 (and (array_inv!38756 _values!470) e!863616)))

(declare-fun zeroValue!436 () V!59343)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59343)

(declare-fun bm!71001 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6674 (array!103507 array!103509 (_ BitVec 32) (_ BitVec 32) V!59343 V!59343 (_ BitVec 32) Int) ListLongMap!22467)

(assert (=> bm!71001 (= call!71007 (getCurrentListMapNoExtraKeys!6674 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58975 () Bool)

(declare-fun mapRes!58975 () Bool)

(declare-fun tp!111958 () Bool)

(declare-fun e!863619 () Bool)

(assert (=> mapNonEmpty!58975 (= mapRes!58975 (and tp!111958 e!863619))))

(declare-fun mapValue!58975 () ValueCell!18177)

(declare-fun mapRest!58975 () (Array (_ BitVec 32) ValueCell!18177))

(declare-fun mapKey!58975 () (_ BitVec 32))

(assert (=> mapNonEmpty!58975 (= (arr!49949 _values!470) (store mapRest!58975 mapKey!58975 mapValue!58975))))

(declare-fun c!142709 () Bool)

(declare-fun c!142710 () Bool)

(declare-fun bm!71002 () Bool)

(declare-fun call!71004 () ListLongMap!22467)

(declare-fun call!71006 () ListLongMap!22467)

(declare-fun +!4956 (ListLongMap!22467 tuple2!24846) ListLongMap!22467)

(assert (=> bm!71002 (= call!71004 (+!4956 (ite c!142709 call!71007 (ite c!142710 call!71005 call!71006)) (ite (or c!142709 c!142710) (tuple2!24847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1551335 () Bool)

(assert (=> b!1551335 (= e!863619 tp_is_empty!38175)))

(declare-fun b!1551336 () Bool)

(declare-fun e!863617 () ListLongMap!22467)

(assert (=> b!1551336 (= e!863617 (+!4956 call!71004 (tuple2!24847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!71003 () Bool)

(declare-fun call!71003 () ListLongMap!22467)

(assert (=> bm!71003 (= call!71003 call!71004)))

(declare-fun b!1551337 () Bool)

(declare-fun c!142711 () Bool)

(declare-fun lt!668621 () Bool)

(assert (=> b!1551337 (= c!142711 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668621))))

(declare-fun e!863618 () ListLongMap!22467)

(declare-fun e!863614 () ListLongMap!22467)

(assert (=> b!1551337 (= e!863618 e!863614)))

(declare-fun mapIsEmpty!58975 () Bool)

(assert (=> mapIsEmpty!58975 mapRes!58975))

(declare-fun b!1551338 () Bool)

(declare-fun res!1062454 () Bool)

(assert (=> b!1551338 (=> (not res!1062454) (not e!863613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103507 (_ BitVec 32)) Bool)

(assert (=> b!1551338 (= res!1062454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551339 () Bool)

(assert (=> b!1551339 (= e!863618 call!71003)))

(declare-fun b!1551340 () Bool)

(declare-fun res!1062457 () Bool)

(assert (=> b!1551340 (=> (not res!1062457) (not e!863613))))

(declare-datatypes ((List!36332 0))(
  ( (Nil!36329) (Cons!36328 (h!37774 (_ BitVec 64)) (t!51051 List!36332)) )
))
(declare-fun arrayNoDuplicates!0 (array!103507 (_ BitVec 32) List!36332) Bool)

(assert (=> b!1551340 (= res!1062457 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36329))))

(declare-fun b!1551341 () Bool)

(assert (=> b!1551341 (= e!863614 call!71003)))

(declare-fun b!1551342 () Bool)

(declare-fun e!863621 () Bool)

(assert (=> b!1551342 (= e!863621 tp_is_empty!38175)))

(declare-fun b!1551343 () Bool)

(declare-fun res!1062458 () Bool)

(assert (=> b!1551343 (=> (not res!1062458) (not e!863613))))

(assert (=> b!1551343 (= res!1062458 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50499 _keys!618))))))

(declare-fun b!1551344 () Bool)

(assert (=> b!1551344 (= e!863616 (and e!863621 mapRes!58975))))

(declare-fun condMapEmpty!58975 () Bool)

(declare-fun mapDefault!58975 () ValueCell!18177)

(assert (=> b!1551344 (= condMapEmpty!58975 (= (arr!49949 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18177)) mapDefault!58975)))))

(declare-fun b!1551345 () Bool)

(declare-fun res!1062459 () Bool)

(assert (=> b!1551345 (=> (not res!1062459) (not e!863613))))

(assert (=> b!1551345 (= res!1062459 (and (= (size!50500 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50499 _keys!618) (size!50500 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551346 () Bool)

(assert (=> b!1551346 (= e!863613 e!863620)))

(declare-fun res!1062455 () Bool)

(assert (=> b!1551346 (=> (not res!1062455) (not e!863620))))

(assert (=> b!1551346 (= res!1062455 (bvslt from!762 (size!50499 _keys!618)))))

(declare-fun lt!668620 () ListLongMap!22467)

(assert (=> b!1551346 (= lt!668620 e!863617)))

(assert (=> b!1551346 (= c!142709 (and (not lt!668621) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551346 (= lt!668621 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!71004 () Bool)

(assert (=> bm!71004 (= call!71006 call!71005)))

(declare-fun b!1551347 () Bool)

(assert (=> b!1551347 (= e!863614 call!71006)))

(declare-fun b!1551348 () Bool)

(assert (=> b!1551348 (= e!863617 e!863618)))

(assert (=> b!1551348 (= c!142710 (and (not lt!668621) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551349 () Bool)

(assert (=> b!1551349 (= e!863620 (not true))))

(declare-fun lt!668615 () ListLongMap!22467)

(declare-fun lt!668622 () V!59343)

(declare-fun apply!1124 (ListLongMap!22467 (_ BitVec 64)) V!59343)

(assert (=> b!1551349 (= (apply!1124 lt!668615 (select (arr!49948 _keys!618) from!762)) lt!668622)))

(declare-datatypes ((Unit!51599 0))(
  ( (Unit!51600) )
))
(declare-fun lt!668619 () Unit!51599)

(declare-fun lt!668618 () ListLongMap!22467)

(declare-fun addApplyDifferent!625 (ListLongMap!22467 (_ BitVec 64) V!59343 (_ BitVec 64)) Unit!51599)

(assert (=> b!1551349 (= lt!668619 (addApplyDifferent!625 lt!668618 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49948 _keys!618) from!762)))))

(declare-fun lt!668616 () V!59343)

(assert (=> b!1551349 (= lt!668616 lt!668622)))

(assert (=> b!1551349 (= lt!668622 (apply!1124 lt!668618 (select (arr!49948 _keys!618) from!762)))))

(assert (=> b!1551349 (= lt!668616 (apply!1124 (+!4956 lt!668618 (tuple2!24847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49948 _keys!618) from!762)))))

(declare-fun lt!668623 () Unit!51599)

(assert (=> b!1551349 (= lt!668623 (addApplyDifferent!625 lt!668618 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49948 _keys!618) from!762)))))

(declare-fun contains!10119 (ListLongMap!22467 (_ BitVec 64)) Bool)

(assert (=> b!1551349 (contains!10119 lt!668615 (select (arr!49948 _keys!618) from!762))))

(assert (=> b!1551349 (= lt!668615 (+!4956 lt!668618 (tuple2!24847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!668617 () Unit!51599)

(declare-fun addStillContains!1292 (ListLongMap!22467 (_ BitVec 64) V!59343 (_ BitVec 64)) Unit!51599)

(assert (=> b!1551349 (= lt!668617 (addStillContains!1292 lt!668618 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49948 _keys!618) from!762)))))

(assert (=> b!1551349 (= lt!668618 (getCurrentListMapNoExtraKeys!6674 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(assert (= (and start!132280 res!1062456) b!1551345))

(assert (= (and b!1551345 res!1062459) b!1551338))

(assert (= (and b!1551338 res!1062454) b!1551340))

(assert (= (and b!1551340 res!1062457) b!1551343))

(assert (= (and b!1551343 res!1062458) b!1551346))

(assert (= (and b!1551346 c!142709) b!1551336))

(assert (= (and b!1551346 (not c!142709)) b!1551348))

(assert (= (and b!1551348 c!142710) b!1551339))

(assert (= (and b!1551348 (not c!142710)) b!1551337))

(assert (= (and b!1551337 c!142711) b!1551341))

(assert (= (and b!1551337 (not c!142711)) b!1551347))

(assert (= (or b!1551341 b!1551347) bm!71004))

(assert (= (or b!1551339 bm!71004) bm!71000))

(assert (= (or b!1551339 b!1551341) bm!71003))

(assert (= (or b!1551336 bm!71000) bm!71001))

(assert (= (or b!1551336 bm!71003) bm!71002))

(assert (= (and b!1551346 res!1062455) b!1551334))

(assert (= (and b!1551334 res!1062460) b!1551349))

(assert (= (and b!1551344 condMapEmpty!58975) mapIsEmpty!58975))

(assert (= (and b!1551344 (not condMapEmpty!58975)) mapNonEmpty!58975))

(get-info :version)

(assert (= (and mapNonEmpty!58975 ((_ is ValueCellFull!18177) mapValue!58975)) b!1551335))

(assert (= (and b!1551344 ((_ is ValueCellFull!18177) mapDefault!58975)) b!1551342))

(assert (= start!132280 b!1551344))

(declare-fun m!1430049 () Bool)

(assert (=> b!1551336 m!1430049))

(declare-fun m!1430051 () Bool)

(assert (=> bm!71002 m!1430051))

(declare-fun m!1430053 () Bool)

(assert (=> bm!71001 m!1430053))

(declare-fun m!1430055 () Bool)

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430057 () Bool)

(assert (=> b!1551349 m!1430057))

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430059 () Bool)

(assert (=> b!1551349 m!1430059))

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430061 () Bool)

(assert (=> b!1551349 m!1430061))

(assert (=> b!1551349 m!1430055))

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430063 () Bool)

(assert (=> b!1551349 m!1430063))

(declare-fun m!1430065 () Bool)

(assert (=> b!1551349 m!1430065))

(declare-fun m!1430067 () Bool)

(assert (=> b!1551349 m!1430067))

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430069 () Bool)

(assert (=> b!1551349 m!1430069))

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430071 () Bool)

(assert (=> b!1551349 m!1430071))

(assert (=> b!1551349 m!1430055))

(declare-fun m!1430073 () Bool)

(assert (=> b!1551349 m!1430073))

(assert (=> b!1551349 m!1430053))

(assert (=> b!1551349 m!1430067))

(declare-fun m!1430075 () Bool)

(assert (=> b!1551340 m!1430075))

(declare-fun m!1430077 () Bool)

(assert (=> mapNonEmpty!58975 m!1430077))

(declare-fun m!1430079 () Bool)

(assert (=> b!1551338 m!1430079))

(assert (=> b!1551334 m!1430055))

(assert (=> b!1551334 m!1430055))

(declare-fun m!1430081 () Bool)

(assert (=> b!1551334 m!1430081))

(declare-fun m!1430083 () Bool)

(assert (=> start!132280 m!1430083))

(declare-fun m!1430085 () Bool)

(assert (=> start!132280 m!1430085))

(declare-fun m!1430087 () Bool)

(assert (=> start!132280 m!1430087))

(check-sat (not bm!71002) (not b_next!31899) (not start!132280) (not b!1551349) (not bm!71001) tp_is_empty!38175 (not b!1551340) (not b!1551334) (not b!1551336) (not b!1551338) (not mapNonEmpty!58975) b_and!51343)
(check-sat b_and!51343 (not b_next!31899))

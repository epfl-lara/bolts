; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131942 () Bool)

(assert start!131942)

(declare-fun b_free!31623 () Bool)

(declare-fun b_next!31623 () Bool)

(assert (=> start!131942 (= b_free!31623 (not b_next!31623))))

(declare-fun tp!111122 () Bool)

(declare-fun b_and!51043 () Bool)

(assert (=> start!131942 (= tp!111122 b_and!51043)))

(declare-fun b!1544346 () Bool)

(declare-datatypes ((V!58975 0))(
  ( (V!58976 (val!19027 Int)) )
))
(declare-datatypes ((tuple2!24584 0))(
  ( (tuple2!24585 (_1!12302 (_ BitVec 64)) (_2!12302 V!58975)) )
))
(declare-datatypes ((List!36104 0))(
  ( (Nil!36101) (Cons!36100 (h!37546 tuple2!24584) (t!50805 List!36104)) )
))
(declare-datatypes ((ListLongMap!22205 0))(
  ( (ListLongMap!22206 (toList!11118 List!36104)) )
))
(declare-fun e!859632 () ListLongMap!22205)

(declare-fun call!68897 () ListLongMap!22205)

(assert (=> b!1544346 (= e!859632 call!68897)))

(declare-fun mapIsEmpty!58552 () Bool)

(declare-fun mapRes!58552 () Bool)

(assert (=> mapIsEmpty!58552 mapRes!58552))

(declare-fun b!1544347 () Bool)

(declare-fun e!859626 () ListLongMap!22205)

(declare-fun call!68900 () ListLongMap!22205)

(declare-fun minValue!436 () V!58975)

(declare-fun +!4853 (ListLongMap!22205 tuple2!24584) ListLongMap!22205)

(assert (=> b!1544347 (= e!859626 (+!4853 call!68900 (tuple2!24585 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544349 () Bool)

(declare-fun e!859628 () Bool)

(declare-fun tp_is_empty!37899 () Bool)

(assert (=> b!1544349 (= e!859628 tp_is_empty!37899)))

(declare-fun zeroValue!436 () V!58975)

(declare-fun c!141368 () Bool)

(declare-fun call!68898 () ListLongMap!22205)

(declare-fun bm!68894 () Bool)

(declare-fun call!68899 () ListLongMap!22205)

(declare-fun call!68901 () ListLongMap!22205)

(declare-fun c!141366 () Bool)

(assert (=> bm!68894 (= call!68900 (+!4853 (ite c!141368 call!68901 (ite c!141366 call!68899 call!68898)) (ite (or c!141368 c!141366) (tuple2!24585 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24585 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544350 () Bool)

(declare-fun e!859630 () Bool)

(assert (=> b!1544350 (= e!859630 false)))

(declare-fun lt!666065 () ListLongMap!22205)

(assert (=> b!1544350 (= lt!666065 e!859626)))

(declare-fun lt!666064 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544350 (= c!141368 (and (not lt!666064) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544350 (= lt!666064 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544351 () Bool)

(declare-fun res!1059441 () Bool)

(assert (=> b!1544351 (=> (not res!1059441) (not e!859630))))

(declare-datatypes ((ValueCell!18039 0))(
  ( (ValueCellFull!18039 (v!21825 V!58975)) (EmptyCell!18039) )
))
(declare-datatypes ((array!102971 0))(
  ( (array!102972 (arr!49683 (Array (_ BitVec 32) ValueCell!18039)) (size!50234 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102971)

(declare-datatypes ((array!102973 0))(
  ( (array!102974 (arr!49684 (Array (_ BitVec 32) (_ BitVec 64))) (size!50235 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102973)

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1544351 (= res!1059441 (and (= (size!50234 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50235 _keys!618) (size!50234 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!68895 () Bool)

(assert (=> bm!68895 (= call!68898 call!68899)))

(declare-fun b!1544352 () Bool)

(declare-fun res!1059442 () Bool)

(assert (=> b!1544352 (=> (not res!1059442) (not e!859630))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1544352 (= res!1059442 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50235 _keys!618))))))

(declare-fun b!1544353 () Bool)

(declare-fun res!1059443 () Bool)

(assert (=> b!1544353 (=> (not res!1059443) (not e!859630))))

(declare-datatypes ((List!36105 0))(
  ( (Nil!36102) (Cons!36101 (h!37547 (_ BitVec 64)) (t!50806 List!36105)) )
))
(declare-fun arrayNoDuplicates!0 (array!102973 (_ BitVec 32) List!36105) Bool)

(assert (=> b!1544353 (= res!1059443 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36102))))

(declare-fun mapNonEmpty!58552 () Bool)

(declare-fun tp!111121 () Bool)

(declare-fun e!859627 () Bool)

(assert (=> mapNonEmpty!58552 (= mapRes!58552 (and tp!111121 e!859627))))

(declare-fun mapRest!58552 () (Array (_ BitVec 32) ValueCell!18039))

(declare-fun mapKey!58552 () (_ BitVec 32))

(declare-fun mapValue!58552 () ValueCell!18039)

(assert (=> mapNonEmpty!58552 (= (arr!49683 _values!470) (store mapRest!58552 mapKey!58552 mapValue!58552))))

(declare-fun b!1544354 () Bool)

(declare-fun e!859629 () Bool)

(assert (=> b!1544354 (= e!859629 (and e!859628 mapRes!58552))))

(declare-fun condMapEmpty!58552 () Bool)

(declare-fun mapDefault!58552 () ValueCell!18039)

(assert (=> b!1544354 (= condMapEmpty!58552 (= (arr!49683 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18039)) mapDefault!58552)))))

(declare-fun bm!68896 () Bool)

(assert (=> bm!68896 (= call!68897 call!68900)))

(declare-fun res!1059439 () Bool)

(assert (=> start!131942 (=> (not res!1059439) (not e!859630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131942 (= res!1059439 (validMask!0 mask!926))))

(assert (=> start!131942 e!859630))

(declare-fun array_inv!38571 (array!102973) Bool)

(assert (=> start!131942 (array_inv!38571 _keys!618)))

(assert (=> start!131942 tp_is_empty!37899))

(assert (=> start!131942 true))

(assert (=> start!131942 tp!111122))

(declare-fun array_inv!38572 (array!102971) Bool)

(assert (=> start!131942 (and (array_inv!38572 _values!470) e!859629)))

(declare-fun b!1544348 () Bool)

(declare-fun e!859631 () ListLongMap!22205)

(assert (=> b!1544348 (= e!859631 call!68897)))

(declare-fun b!1544355 () Bool)

(assert (=> b!1544355 (= e!859627 tp_is_empty!37899)))

(declare-fun b!1544356 () Bool)

(assert (=> b!1544356 (= e!859626 e!859631)))

(assert (=> b!1544356 (= c!141366 (and (not lt!666064) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1544357 () Bool)

(declare-fun res!1059440 () Bool)

(assert (=> b!1544357 (=> (not res!1059440) (not e!859630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102973 (_ BitVec 32)) Bool)

(assert (=> b!1544357 (= res!1059440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544358 () Bool)

(declare-fun c!141367 () Bool)

(assert (=> b!1544358 (= c!141367 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666064))))

(assert (=> b!1544358 (= e!859631 e!859632)))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68897 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6568 (array!102973 array!102971 (_ BitVec 32) (_ BitVec 32) V!58975 V!58975 (_ BitVec 32) Int) ListLongMap!22205)

(assert (=> bm!68897 (= call!68901 (getCurrentListMapNoExtraKeys!6568 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!68898 () Bool)

(assert (=> bm!68898 (= call!68899 call!68901)))

(declare-fun b!1544359 () Bool)

(assert (=> b!1544359 (= e!859632 call!68898)))

(assert (= (and start!131942 res!1059439) b!1544351))

(assert (= (and b!1544351 res!1059441) b!1544357))

(assert (= (and b!1544357 res!1059440) b!1544353))

(assert (= (and b!1544353 res!1059443) b!1544352))

(assert (= (and b!1544352 res!1059442) b!1544350))

(assert (= (and b!1544350 c!141368) b!1544347))

(assert (= (and b!1544350 (not c!141368)) b!1544356))

(assert (= (and b!1544356 c!141366) b!1544348))

(assert (= (and b!1544356 (not c!141366)) b!1544358))

(assert (= (and b!1544358 c!141367) b!1544346))

(assert (= (and b!1544358 (not c!141367)) b!1544359))

(assert (= (or b!1544346 b!1544359) bm!68895))

(assert (= (or b!1544348 bm!68895) bm!68898))

(assert (= (or b!1544348 b!1544346) bm!68896))

(assert (= (or b!1544347 bm!68898) bm!68897))

(assert (= (or b!1544347 bm!68896) bm!68894))

(assert (= (and b!1544354 condMapEmpty!58552) mapIsEmpty!58552))

(assert (= (and b!1544354 (not condMapEmpty!58552)) mapNonEmpty!58552))

(get-info :version)

(assert (= (and mapNonEmpty!58552 ((_ is ValueCellFull!18039) mapValue!58552)) b!1544355))

(assert (= (and b!1544354 ((_ is ValueCellFull!18039) mapDefault!58552)) b!1544349))

(assert (= start!131942 b!1544354))

(declare-fun m!1425217 () Bool)

(assert (=> bm!68897 m!1425217))

(declare-fun m!1425219 () Bool)

(assert (=> bm!68894 m!1425219))

(declare-fun m!1425221 () Bool)

(assert (=> mapNonEmpty!58552 m!1425221))

(declare-fun m!1425223 () Bool)

(assert (=> b!1544357 m!1425223))

(declare-fun m!1425225 () Bool)

(assert (=> b!1544347 m!1425225))

(declare-fun m!1425227 () Bool)

(assert (=> start!131942 m!1425227))

(declare-fun m!1425229 () Bool)

(assert (=> start!131942 m!1425229))

(declare-fun m!1425231 () Bool)

(assert (=> start!131942 m!1425231))

(declare-fun m!1425233 () Bool)

(assert (=> b!1544353 m!1425233))

(check-sat (not b_next!31623) (not mapNonEmpty!58552) (not b!1544353) (not start!131942) (not bm!68894) (not b!1544347) (not b!1544357) (not bm!68897) tp_is_empty!37899 b_and!51043)
(check-sat b_and!51043 (not b_next!31623))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97468 () Bool)

(assert start!97468)

(declare-fun b_free!23403 () Bool)

(declare-fun b_next!23403 () Bool)

(assert (=> start!97468 (= b_free!23403 (not b_next!23403))))

(declare-fun tp!82509 () Bool)

(declare-fun b_and!37663 () Bool)

(assert (=> start!97468 (= tp!82509 b_and!37663)))

(declare-fun b!1111443 () Bool)

(declare-fun res!741774 () Bool)

(declare-fun e!633812 () Bool)

(assert (=> b!1111443 (=> (not res!741774) (not e!633812))))

(declare-datatypes ((array!72190 0))(
  ( (array!72191 (arr!34744 (Array (_ BitVec 32) (_ BitVec 64))) (size!35281 (_ BitVec 32))) )
))
(declare-fun lt!496327 () array!72190)

(declare-datatypes ((List!24373 0))(
  ( (Nil!24370) (Cons!24369 (h!25578 (_ BitVec 64)) (t!34829 List!24373)) )
))
(declare-fun arrayNoDuplicates!0 (array!72190 (_ BitVec 32) List!24373) Bool)

(assert (=> b!1111443 (= res!741774 (arrayNoDuplicates!0 lt!496327 #b00000000000000000000000000000000 Nil!24370))))

(declare-datatypes ((V!42011 0))(
  ( (V!42012 (val!13888 Int)) )
))
(declare-datatypes ((tuple2!17638 0))(
  ( (tuple2!17639 (_1!8829 (_ BitVec 64)) (_2!8829 V!42011)) )
))
(declare-datatypes ((List!24374 0))(
  ( (Nil!24371) (Cons!24370 (h!25579 tuple2!17638) (t!34830 List!24374)) )
))
(declare-datatypes ((ListLongMap!15619 0))(
  ( (ListLongMap!15620 (toList!7825 List!24374)) )
))
(declare-fun call!46907 () ListLongMap!15619)

(declare-fun _keys!1208 () array!72190)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13122 0))(
  ( (ValueCellFull!13122 (v!16522 V!42011)) (EmptyCell!13122) )
))
(declare-datatypes ((array!72192 0))(
  ( (array!72193 (arr!34745 (Array (_ BitVec 32) ValueCell!13122)) (size!35282 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72192)

(declare-fun minValue!944 () V!42011)

(declare-fun bm!46903 () Bool)

(declare-fun zeroValue!944 () V!42011)

(declare-fun getCurrentListMapNoExtraKeys!4286 (array!72190 array!72192 (_ BitVec 32) (_ BitVec 32) V!42011 V!42011 (_ BitVec 32) Int) ListLongMap!15619)

(assert (=> bm!46903 (= call!46907 (getCurrentListMapNoExtraKeys!4286 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111444 () Bool)

(declare-fun res!741776 () Bool)

(declare-fun e!633815 () Bool)

(assert (=> b!1111444 (=> (not res!741776) (not e!633815))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111444 (= res!741776 (validKeyInArray!0 k0!934))))

(declare-fun b!1111445 () Bool)

(declare-fun e!633810 () Bool)

(declare-fun tp_is_empty!27663 () Bool)

(assert (=> b!1111445 (= e!633810 tp_is_empty!27663)))

(declare-fun b!1111446 () Bool)

(declare-fun res!741782 () Bool)

(assert (=> b!1111446 (=> (not res!741782) (not e!633815))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1111446 (= res!741782 (= (select (arr!34744 _keys!1208) i!673) k0!934))))

(declare-fun b!1111447 () Bool)

(declare-fun res!741783 () Bool)

(assert (=> b!1111447 (=> (not res!741783) (not e!633815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111447 (= res!741783 (validMask!0 mask!1564))))

(declare-fun res!741780 () Bool)

(assert (=> start!97468 (=> (not res!741780) (not e!633815))))

(assert (=> start!97468 (= res!741780 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35281 _keys!1208))))))

(assert (=> start!97468 e!633815))

(assert (=> start!97468 tp_is_empty!27663))

(declare-fun array_inv!26592 (array!72190) Bool)

(assert (=> start!97468 (array_inv!26592 _keys!1208)))

(assert (=> start!97468 true))

(assert (=> start!97468 tp!82509))

(declare-fun e!633813 () Bool)

(declare-fun array_inv!26593 (array!72192) Bool)

(assert (=> start!97468 (and (array_inv!26593 _values!996) e!633813)))

(declare-fun b!1111448 () Bool)

(declare-fun e!633814 () Bool)

(declare-fun call!46906 () ListLongMap!15619)

(assert (=> b!1111448 (= e!633814 (= call!46906 call!46907))))

(declare-fun b!1111449 () Bool)

(declare-fun e!633808 () Bool)

(assert (=> b!1111449 (= e!633808 true)))

(assert (=> b!1111449 e!633814))

(declare-fun c!109256 () Bool)

(assert (=> b!1111449 (= c!109256 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36389 0))(
  ( (Unit!36390) )
))
(declare-fun lt!496329 () Unit!36389)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!300 (array!72190 array!72192 (_ BitVec 32) (_ BitVec 32) V!42011 V!42011 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36389)

(assert (=> b!1111449 (= lt!496329 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!300 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46904 () Bool)

(declare-fun dynLambda!2408 (Int (_ BitVec 64)) V!42011)

(assert (=> bm!46904 (= call!46906 (getCurrentListMapNoExtraKeys!4286 lt!496327 (array!72193 (store (arr!34745 _values!996) i!673 (ValueCellFull!13122 (dynLambda!2408 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35282 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111450 () Bool)

(declare-fun res!741773 () Bool)

(assert (=> b!1111450 (=> (not res!741773) (not e!633815))))

(assert (=> b!1111450 (= res!741773 (and (= (size!35282 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35281 _keys!1208) (size!35282 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111451 () Bool)

(declare-fun res!741777 () Bool)

(assert (=> b!1111451 (=> (not res!741777) (not e!633815))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72190 (_ BitVec 32)) Bool)

(assert (=> b!1111451 (= res!741777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111452 () Bool)

(declare-fun -!1046 (ListLongMap!15619 (_ BitVec 64)) ListLongMap!15619)

(assert (=> b!1111452 (= e!633814 (= call!46906 (-!1046 call!46907 k0!934)))))

(declare-fun mapIsEmpty!43312 () Bool)

(declare-fun mapRes!43312 () Bool)

(assert (=> mapIsEmpty!43312 mapRes!43312))

(declare-fun b!1111453 () Bool)

(declare-fun res!741781 () Bool)

(assert (=> b!1111453 (=> (not res!741781) (not e!633815))))

(assert (=> b!1111453 (= res!741781 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24370))))

(declare-fun b!1111454 () Bool)

(declare-fun e!633811 () Bool)

(assert (=> b!1111454 (= e!633813 (and e!633811 mapRes!43312))))

(declare-fun condMapEmpty!43312 () Bool)

(declare-fun mapDefault!43312 () ValueCell!13122)

(assert (=> b!1111454 (= condMapEmpty!43312 (= (arr!34745 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13122)) mapDefault!43312)))))

(declare-fun b!1111455 () Bool)

(assert (=> b!1111455 (= e!633812 (not e!633808))))

(declare-fun res!741779 () Bool)

(assert (=> b!1111455 (=> res!741779 e!633808)))

(assert (=> b!1111455 (= res!741779 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35281 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111455 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496328 () Unit!36389)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72190 (_ BitVec 64) (_ BitVec 32)) Unit!36389)

(assert (=> b!1111455 (= lt!496328 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1111456 () Bool)

(assert (=> b!1111456 (= e!633811 tp_is_empty!27663)))

(declare-fun b!1111457 () Bool)

(assert (=> b!1111457 (= e!633815 e!633812)))

(declare-fun res!741775 () Bool)

(assert (=> b!1111457 (=> (not res!741775) (not e!633812))))

(assert (=> b!1111457 (= res!741775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496327 mask!1564))))

(assert (=> b!1111457 (= lt!496327 (array!72191 (store (arr!34744 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35281 _keys!1208)))))

(declare-fun b!1111458 () Bool)

(declare-fun res!741778 () Bool)

(assert (=> b!1111458 (=> (not res!741778) (not e!633815))))

(assert (=> b!1111458 (= res!741778 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35281 _keys!1208))))))

(declare-fun mapNonEmpty!43312 () Bool)

(declare-fun tp!82508 () Bool)

(assert (=> mapNonEmpty!43312 (= mapRes!43312 (and tp!82508 e!633810))))

(declare-fun mapKey!43312 () (_ BitVec 32))

(declare-fun mapValue!43312 () ValueCell!13122)

(declare-fun mapRest!43312 () (Array (_ BitVec 32) ValueCell!13122))

(assert (=> mapNonEmpty!43312 (= (arr!34745 _values!996) (store mapRest!43312 mapKey!43312 mapValue!43312))))

(assert (= (and start!97468 res!741780) b!1111447))

(assert (= (and b!1111447 res!741783) b!1111450))

(assert (= (and b!1111450 res!741773) b!1111451))

(assert (= (and b!1111451 res!741777) b!1111453))

(assert (= (and b!1111453 res!741781) b!1111458))

(assert (= (and b!1111458 res!741778) b!1111444))

(assert (= (and b!1111444 res!741776) b!1111446))

(assert (= (and b!1111446 res!741782) b!1111457))

(assert (= (and b!1111457 res!741775) b!1111443))

(assert (= (and b!1111443 res!741774) b!1111455))

(assert (= (and b!1111455 (not res!741779)) b!1111449))

(assert (= (and b!1111449 c!109256) b!1111452))

(assert (= (and b!1111449 (not c!109256)) b!1111448))

(assert (= (or b!1111452 b!1111448) bm!46904))

(assert (= (or b!1111452 b!1111448) bm!46903))

(assert (= (and b!1111454 condMapEmpty!43312) mapIsEmpty!43312))

(assert (= (and b!1111454 (not condMapEmpty!43312)) mapNonEmpty!43312))

(get-info :version)

(assert (= (and mapNonEmpty!43312 ((_ is ValueCellFull!13122) mapValue!43312)) b!1111445))

(assert (= (and b!1111454 ((_ is ValueCellFull!13122) mapDefault!43312)) b!1111456))

(assert (= start!97468 b!1111454))

(declare-fun b_lambda!18459 () Bool)

(assert (=> (not b_lambda!18459) (not bm!46904)))

(declare-fun t!34828 () Bool)

(declare-fun tb!8277 () Bool)

(assert (=> (and start!97468 (= defaultEntry!1004 defaultEntry!1004) t!34828) tb!8277))

(declare-fun result!17107 () Bool)

(assert (=> tb!8277 (= result!17107 tp_is_empty!27663)))

(assert (=> bm!46904 t!34828))

(declare-fun b_and!37665 () Bool)

(assert (= b_and!37663 (and (=> t!34828 result!17107) b_and!37665)))

(declare-fun m!1029345 () Bool)

(assert (=> b!1111449 m!1029345))

(declare-fun m!1029347 () Bool)

(assert (=> start!97468 m!1029347))

(declare-fun m!1029349 () Bool)

(assert (=> start!97468 m!1029349))

(declare-fun m!1029351 () Bool)

(assert (=> b!1111443 m!1029351))

(declare-fun m!1029353 () Bool)

(assert (=> b!1111457 m!1029353))

(declare-fun m!1029355 () Bool)

(assert (=> b!1111457 m!1029355))

(declare-fun m!1029357 () Bool)

(assert (=> b!1111444 m!1029357))

(declare-fun m!1029359 () Bool)

(assert (=> b!1111447 m!1029359))

(declare-fun m!1029361 () Bool)

(assert (=> b!1111455 m!1029361))

(declare-fun m!1029363 () Bool)

(assert (=> b!1111455 m!1029363))

(declare-fun m!1029365 () Bool)

(assert (=> b!1111446 m!1029365))

(declare-fun m!1029367 () Bool)

(assert (=> bm!46903 m!1029367))

(declare-fun m!1029369 () Bool)

(assert (=> b!1111452 m!1029369))

(declare-fun m!1029371 () Bool)

(assert (=> bm!46904 m!1029371))

(declare-fun m!1029373 () Bool)

(assert (=> bm!46904 m!1029373))

(declare-fun m!1029375 () Bool)

(assert (=> bm!46904 m!1029375))

(declare-fun m!1029377 () Bool)

(assert (=> b!1111451 m!1029377))

(declare-fun m!1029379 () Bool)

(assert (=> mapNonEmpty!43312 m!1029379))

(declare-fun m!1029381 () Bool)

(assert (=> b!1111453 m!1029381))

(check-sat (not b!1111449) (not b_next!23403) (not mapNonEmpty!43312) (not b!1111444) (not start!97468) (not b!1111452) (not b_lambda!18459) b_and!37665 (not bm!46904) (not b!1111443) (not b!1111447) tp_is_empty!27663 (not bm!46903) (not b!1111455) (not b!1111457) (not b!1111453) (not b!1111451))
(check-sat b_and!37665 (not b_next!23403))

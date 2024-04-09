; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97810 () Bool)

(assert start!97810)

(declare-fun b_free!23475 () Bool)

(declare-fun b_next!23475 () Bool)

(assert (=> start!97810 (= b_free!23475 (not b_next!23475))))

(declare-fun tp!83130 () Bool)

(declare-fun b_and!37771 () Bool)

(assert (=> start!97810 (= tp!83130 b_and!37771)))

(declare-fun b!1118364 () Bool)

(declare-fun res!747020 () Bool)

(declare-fun e!637051 () Bool)

(assert (=> b!1118364 (=> (not res!747020) (not e!637051))))

(declare-datatypes ((array!72840 0))(
  ( (array!72841 (arr!35069 (Array (_ BitVec 32) (_ BitVec 64))) (size!35606 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72840)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42467 0))(
  ( (V!42468 (val!14059 Int)) )
))
(declare-datatypes ((ValueCell!13293 0))(
  ( (ValueCellFull!13293 (v!16693 V!42467)) (EmptyCell!13293) )
))
(declare-datatypes ((array!72842 0))(
  ( (array!72843 (arr!35070 (Array (_ BitVec 32) ValueCell!13293)) (size!35607 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72842)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1118364 (= res!747020 (and (= (size!35607 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35606 _keys!1208) (size!35607 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43825 () Bool)

(declare-fun mapRes!43825 () Bool)

(assert (=> mapIsEmpty!43825 mapRes!43825))

(declare-fun b!1118365 () Bool)

(declare-fun res!747021 () Bool)

(assert (=> b!1118365 (=> (not res!747021) (not e!637051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72840 (_ BitVec 32)) Bool)

(assert (=> b!1118365 (= res!747021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118366 () Bool)

(declare-fun res!747011 () Bool)

(assert (=> b!1118366 (=> (not res!747011) (not e!637051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118366 (= res!747011 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43825 () Bool)

(declare-fun tp!83129 () Bool)

(declare-fun e!637050 () Bool)

(assert (=> mapNonEmpty!43825 (= mapRes!43825 (and tp!83129 e!637050))))

(declare-fun mapValue!43825 () ValueCell!13293)

(declare-fun mapKey!43825 () (_ BitVec 32))

(declare-fun mapRest!43825 () (Array (_ BitVec 32) ValueCell!13293))

(assert (=> mapNonEmpty!43825 (= (arr!35070 _values!996) (store mapRest!43825 mapKey!43825 mapValue!43825))))

(declare-fun b!1118367 () Bool)

(declare-fun res!747015 () Bool)

(declare-fun e!637053 () Bool)

(assert (=> b!1118367 (=> (not res!747015) (not e!637053))))

(declare-fun lt!497463 () array!72840)

(declare-datatypes ((List!24524 0))(
  ( (Nil!24521) (Cons!24520 (h!25729 (_ BitVec 64)) (t!35012 List!24524)) )
))
(declare-fun arrayNoDuplicates!0 (array!72840 (_ BitVec 32) List!24524) Bool)

(assert (=> b!1118367 (= res!747015 (arrayNoDuplicates!0 lt!497463 #b00000000000000000000000000000000 Nil!24521))))

(declare-fun b!1118368 () Bool)

(assert (=> b!1118368 (= e!637051 e!637053)))

(declare-fun res!747019 () Bool)

(assert (=> b!1118368 (=> (not res!747019) (not e!637053))))

(assert (=> b!1118368 (= res!747019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497463 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118368 (= lt!497463 (array!72841 (store (arr!35069 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35606 _keys!1208)))))

(declare-fun b!1118369 () Bool)

(declare-fun res!747018 () Bool)

(assert (=> b!1118369 (=> (not res!747018) (not e!637051))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1118369 (= res!747018 (= (select (arr!35069 _keys!1208) i!673) k0!934))))

(declare-fun b!1118370 () Bool)

(declare-fun res!747017 () Bool)

(assert (=> b!1118370 (=> (not res!747017) (not e!637051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118370 (= res!747017 (validKeyInArray!0 k0!934))))

(declare-fun res!747013 () Bool)

(assert (=> start!97810 (=> (not res!747013) (not e!637051))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97810 (= res!747013 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35606 _keys!1208))))))

(assert (=> start!97810 e!637051))

(declare-fun tp_is_empty!28005 () Bool)

(assert (=> start!97810 tp_is_empty!28005))

(declare-fun array_inv!26810 (array!72840) Bool)

(assert (=> start!97810 (array_inv!26810 _keys!1208)))

(assert (=> start!97810 true))

(assert (=> start!97810 tp!83130))

(declare-fun e!637052 () Bool)

(declare-fun array_inv!26811 (array!72842) Bool)

(assert (=> start!97810 (and (array_inv!26811 _values!996) e!637052)))

(declare-fun b!1118371 () Bool)

(declare-fun e!637054 () Bool)

(assert (=> b!1118371 (= e!637053 (not e!637054))))

(declare-fun res!747012 () Bool)

(assert (=> b!1118371 (=> res!747012 e!637054)))

(assert (=> b!1118371 (= res!747012 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118371 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36615 0))(
  ( (Unit!36616) )
))
(declare-fun lt!497462 () Unit!36615)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72840 (_ BitVec 64) (_ BitVec 32)) Unit!36615)

(assert (=> b!1118371 (= lt!497462 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118372 () Bool)

(declare-fun e!637055 () Bool)

(assert (=> b!1118372 (= e!637052 (and e!637055 mapRes!43825))))

(declare-fun condMapEmpty!43825 () Bool)

(declare-fun mapDefault!43825 () ValueCell!13293)

(assert (=> b!1118372 (= condMapEmpty!43825 (= (arr!35070 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13293)) mapDefault!43825)))))

(declare-fun b!1118373 () Bool)

(declare-fun res!747016 () Bool)

(assert (=> b!1118373 (=> (not res!747016) (not e!637051))))

(assert (=> b!1118373 (= res!747016 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24521))))

(declare-fun b!1118374 () Bool)

(declare-fun res!747014 () Bool)

(assert (=> b!1118374 (=> (not res!747014) (not e!637051))))

(assert (=> b!1118374 (= res!747014 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35606 _keys!1208))))))

(declare-fun b!1118375 () Bool)

(assert (=> b!1118375 (= e!637055 tp_is_empty!28005)))

(declare-fun b!1118376 () Bool)

(assert (=> b!1118376 (= e!637050 tp_is_empty!28005)))

(declare-fun b!1118377 () Bool)

(assert (=> b!1118377 (= e!637054 true)))

(declare-fun zeroValue!944 () V!42467)

(declare-fun minValue!944 () V!42467)

(declare-datatypes ((tuple2!17688 0))(
  ( (tuple2!17689 (_1!8854 (_ BitVec 64)) (_2!8854 V!42467)) )
))
(declare-datatypes ((List!24525 0))(
  ( (Nil!24522) (Cons!24521 (h!25730 tuple2!17688) (t!35013 List!24525)) )
))
(declare-datatypes ((ListLongMap!15669 0))(
  ( (ListLongMap!15670 (toList!7850 List!24525)) )
))
(declare-fun lt!497461 () ListLongMap!15669)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4311 (array!72840 array!72842 (_ BitVec 32) (_ BitVec 32) V!42467 V!42467 (_ BitVec 32) Int) ListLongMap!15669)

(assert (=> b!1118377 (= lt!497461 (getCurrentListMapNoExtraKeys!4311 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!97810 res!747013) b!1118366))

(assert (= (and b!1118366 res!747011) b!1118364))

(assert (= (and b!1118364 res!747020) b!1118365))

(assert (= (and b!1118365 res!747021) b!1118373))

(assert (= (and b!1118373 res!747016) b!1118374))

(assert (= (and b!1118374 res!747014) b!1118370))

(assert (= (and b!1118370 res!747017) b!1118369))

(assert (= (and b!1118369 res!747018) b!1118368))

(assert (= (and b!1118368 res!747019) b!1118367))

(assert (= (and b!1118367 res!747015) b!1118371))

(assert (= (and b!1118371 (not res!747012)) b!1118377))

(assert (= (and b!1118372 condMapEmpty!43825) mapIsEmpty!43825))

(assert (= (and b!1118372 (not condMapEmpty!43825)) mapNonEmpty!43825))

(get-info :version)

(assert (= (and mapNonEmpty!43825 ((_ is ValueCellFull!13293) mapValue!43825)) b!1118376))

(assert (= (and b!1118372 ((_ is ValueCellFull!13293) mapDefault!43825)) b!1118375))

(assert (= start!97810 b!1118372))

(declare-fun m!1034033 () Bool)

(assert (=> b!1118377 m!1034033))

(declare-fun m!1034035 () Bool)

(assert (=> b!1118373 m!1034035))

(declare-fun m!1034037 () Bool)

(assert (=> b!1118366 m!1034037))

(declare-fun m!1034039 () Bool)

(assert (=> b!1118368 m!1034039))

(declare-fun m!1034041 () Bool)

(assert (=> b!1118368 m!1034041))

(declare-fun m!1034043 () Bool)

(assert (=> b!1118367 m!1034043))

(declare-fun m!1034045 () Bool)

(assert (=> start!97810 m!1034045))

(declare-fun m!1034047 () Bool)

(assert (=> start!97810 m!1034047))

(declare-fun m!1034049 () Bool)

(assert (=> b!1118370 m!1034049))

(declare-fun m!1034051 () Bool)

(assert (=> mapNonEmpty!43825 m!1034051))

(declare-fun m!1034053 () Bool)

(assert (=> b!1118371 m!1034053))

(declare-fun m!1034055 () Bool)

(assert (=> b!1118371 m!1034055))

(declare-fun m!1034057 () Bool)

(assert (=> b!1118365 m!1034057))

(declare-fun m!1034059 () Bool)

(assert (=> b!1118369 m!1034059))

(check-sat (not b_next!23475) (not b!1118370) (not b!1118377) (not b!1118367) tp_is_empty!28005 (not b!1118366) (not b!1118368) (not b!1118373) (not b!1118371) (not start!97810) (not mapNonEmpty!43825) (not b!1118365) b_and!37771)
(check-sat b_and!37771 (not b_next!23475))

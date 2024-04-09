; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97858 () Bool)

(assert start!97858)

(declare-fun b_free!23523 () Bool)

(declare-fun b_next!23523 () Bool)

(assert (=> start!97858 (= b_free!23523 (not b_next!23523))))

(declare-fun tp!83274 () Bool)

(declare-fun b_and!37851 () Bool)

(assert (=> start!97858 (= tp!83274 b_and!37851)))

(declare-fun b!1119404 () Bool)

(declare-fun e!637559 () Bool)

(declare-fun tp_is_empty!28053 () Bool)

(assert (=> b!1119404 (= e!637559 tp_is_empty!28053)))

(declare-fun b!1119405 () Bool)

(declare-fun e!637558 () Bool)

(declare-fun e!637556 () Bool)

(assert (=> b!1119405 (= e!637558 e!637556)))

(declare-fun res!747805 () Bool)

(assert (=> b!1119405 (=> (not res!747805) (not e!637556))))

(declare-datatypes ((array!72934 0))(
  ( (array!72935 (arr!35116 (Array (_ BitVec 32) (_ BitVec 64))) (size!35653 (_ BitVec 32))) )
))
(declare-fun lt!497727 () array!72934)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72934 (_ BitVec 32)) Bool)

(assert (=> b!1119405 (= res!747805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497727 mask!1564))))

(declare-fun _keys!1208 () array!72934)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119405 (= lt!497727 (array!72935 (store (arr!35116 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35653 _keys!1208)))))

(declare-fun b!1119406 () Bool)

(declare-fun res!747806 () Bool)

(assert (=> b!1119406 (=> (not res!747806) (not e!637558))))

(assert (=> b!1119406 (= res!747806 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35653 _keys!1208))))))

(declare-fun mapIsEmpty!43897 () Bool)

(declare-fun mapRes!43897 () Bool)

(assert (=> mapIsEmpty!43897 mapRes!43897))

(declare-fun b!1119407 () Bool)

(declare-fun res!747807 () Bool)

(assert (=> b!1119407 (=> (not res!747807) (not e!637558))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1119407 (= res!747807 (= (select (arr!35116 _keys!1208) i!673) k0!934))))

(declare-fun b!1119408 () Bool)

(declare-fun res!747804 () Bool)

(assert (=> b!1119408 (=> (not res!747804) (not e!637558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119408 (= res!747804 (validKeyInArray!0 k0!934))))

(declare-fun b!1119409 () Bool)

(declare-fun res!747812 () Bool)

(assert (=> b!1119409 (=> (not res!747812) (not e!637558))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42531 0))(
  ( (V!42532 (val!14083 Int)) )
))
(declare-datatypes ((ValueCell!13317 0))(
  ( (ValueCellFull!13317 (v!16717 V!42531)) (EmptyCell!13317) )
))
(declare-datatypes ((array!72936 0))(
  ( (array!72937 (arr!35117 (Array (_ BitVec 32) ValueCell!13317)) (size!35654 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72936)

(assert (=> b!1119409 (= res!747812 (and (= (size!35654 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35653 _keys!1208) (size!35654 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43897 () Bool)

(declare-fun tp!83273 () Bool)

(declare-fun e!637553 () Bool)

(assert (=> mapNonEmpty!43897 (= mapRes!43897 (and tp!83273 e!637553))))

(declare-fun mapKey!43897 () (_ BitVec 32))

(declare-fun mapValue!43897 () ValueCell!13317)

(declare-fun mapRest!43897 () (Array (_ BitVec 32) ValueCell!13317))

(assert (=> mapNonEmpty!43897 (= (arr!35117 _values!996) (store mapRest!43897 mapKey!43897 mapValue!43897))))

(declare-fun res!747803 () Bool)

(assert (=> start!97858 (=> (not res!747803) (not e!637558))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97858 (= res!747803 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35653 _keys!1208))))))

(assert (=> start!97858 e!637558))

(assert (=> start!97858 tp_is_empty!28053))

(declare-fun array_inv!26842 (array!72934) Bool)

(assert (=> start!97858 (array_inv!26842 _keys!1208)))

(assert (=> start!97858 true))

(assert (=> start!97858 tp!83274))

(declare-fun e!637555 () Bool)

(declare-fun array_inv!26843 (array!72936) Bool)

(assert (=> start!97858 (and (array_inv!26843 _values!996) e!637555)))

(declare-fun b!1119410 () Bool)

(declare-fun res!747813 () Bool)

(assert (=> b!1119410 (=> (not res!747813) (not e!637556))))

(declare-datatypes ((List!24558 0))(
  ( (Nil!24555) (Cons!24554 (h!25763 (_ BitVec 64)) (t!35080 List!24558)) )
))
(declare-fun arrayNoDuplicates!0 (array!72934 (_ BitVec 32) List!24558) Bool)

(assert (=> b!1119410 (= res!747813 (arrayNoDuplicates!0 lt!497727 #b00000000000000000000000000000000 Nil!24555))))

(declare-fun b!1119411 () Bool)

(declare-fun e!637554 () Bool)

(assert (=> b!1119411 (= e!637556 (not e!637554))))

(declare-fun res!747810 () Bool)

(assert (=> b!1119411 (=> res!747810 e!637554)))

(assert (=> b!1119411 (= res!747810 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119411 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36649 0))(
  ( (Unit!36650) )
))
(declare-fun lt!497730 () Unit!36649)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72934 (_ BitVec 64) (_ BitVec 32)) Unit!36649)

(assert (=> b!1119411 (= lt!497730 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1119412 () Bool)

(declare-fun res!747811 () Bool)

(assert (=> b!1119412 (=> (not res!747811) (not e!637558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119412 (= res!747811 (validMask!0 mask!1564))))

(declare-fun b!1119413 () Bool)

(declare-fun res!747809 () Bool)

(assert (=> b!1119413 (=> (not res!747809) (not e!637558))))

(assert (=> b!1119413 (= res!747809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119414 () Bool)

(assert (=> b!1119414 (= e!637554 true)))

(declare-fun zeroValue!944 () V!42531)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17722 0))(
  ( (tuple2!17723 (_1!8871 (_ BitVec 64)) (_2!8871 V!42531)) )
))
(declare-datatypes ((List!24559 0))(
  ( (Nil!24556) (Cons!24555 (h!25764 tuple2!17722) (t!35081 List!24559)) )
))
(declare-datatypes ((ListLongMap!15703 0))(
  ( (ListLongMap!15704 (toList!7867 List!24559)) )
))
(declare-fun lt!497729 () ListLongMap!15703)

(declare-fun minValue!944 () V!42531)

(declare-fun getCurrentListMapNoExtraKeys!4328 (array!72934 array!72936 (_ BitVec 32) (_ BitVec 32) V!42531 V!42531 (_ BitVec 32) Int) ListLongMap!15703)

(declare-fun dynLambda!2430 (Int (_ BitVec 64)) V!42531)

(assert (=> b!1119414 (= lt!497729 (getCurrentListMapNoExtraKeys!4328 lt!497727 (array!72937 (store (arr!35117 _values!996) i!673 (ValueCellFull!13317 (dynLambda!2430 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35654 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497728 () ListLongMap!15703)

(assert (=> b!1119414 (= lt!497728 (getCurrentListMapNoExtraKeys!4328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119415 () Bool)

(assert (=> b!1119415 (= e!637555 (and e!637559 mapRes!43897))))

(declare-fun condMapEmpty!43897 () Bool)

(declare-fun mapDefault!43897 () ValueCell!13317)

(assert (=> b!1119415 (= condMapEmpty!43897 (= (arr!35117 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13317)) mapDefault!43897)))))

(declare-fun b!1119416 () Bool)

(assert (=> b!1119416 (= e!637553 tp_is_empty!28053)))

(declare-fun b!1119417 () Bool)

(declare-fun res!747808 () Bool)

(assert (=> b!1119417 (=> (not res!747808) (not e!637558))))

(assert (=> b!1119417 (= res!747808 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24555))))

(assert (= (and start!97858 res!747803) b!1119412))

(assert (= (and b!1119412 res!747811) b!1119409))

(assert (= (and b!1119409 res!747812) b!1119413))

(assert (= (and b!1119413 res!747809) b!1119417))

(assert (= (and b!1119417 res!747808) b!1119406))

(assert (= (and b!1119406 res!747806) b!1119408))

(assert (= (and b!1119408 res!747804) b!1119407))

(assert (= (and b!1119407 res!747807) b!1119405))

(assert (= (and b!1119405 res!747805) b!1119410))

(assert (= (and b!1119410 res!747813) b!1119411))

(assert (= (and b!1119411 (not res!747810)) b!1119414))

(assert (= (and b!1119415 condMapEmpty!43897) mapIsEmpty!43897))

(assert (= (and b!1119415 (not condMapEmpty!43897)) mapNonEmpty!43897))

(get-info :version)

(assert (= (and mapNonEmpty!43897 ((_ is ValueCellFull!13317) mapValue!43897)) b!1119416))

(assert (= (and b!1119415 ((_ is ValueCellFull!13317) mapDefault!43897)) b!1119404))

(assert (= start!97858 b!1119415))

(declare-fun b_lambda!18527 () Bool)

(assert (=> (not b_lambda!18527) (not b!1119414)))

(declare-fun t!35079 () Bool)

(declare-fun tb!8343 () Bool)

(assert (=> (and start!97858 (= defaultEntry!1004 defaultEntry!1004) t!35079) tb!8343))

(declare-fun result!17239 () Bool)

(assert (=> tb!8343 (= result!17239 tp_is_empty!28053)))

(assert (=> b!1119414 t!35079))

(declare-fun b_and!37853 () Bool)

(assert (= b_and!37851 (and (=> t!35079 result!17239) b_and!37853)))

(declare-fun m!1034801 () Bool)

(assert (=> b!1119407 m!1034801))

(declare-fun m!1034803 () Bool)

(assert (=> b!1119405 m!1034803))

(declare-fun m!1034805 () Bool)

(assert (=> b!1119405 m!1034805))

(declare-fun m!1034807 () Bool)

(assert (=> b!1119412 m!1034807))

(declare-fun m!1034809 () Bool)

(assert (=> start!97858 m!1034809))

(declare-fun m!1034811 () Bool)

(assert (=> start!97858 m!1034811))

(declare-fun m!1034813 () Bool)

(assert (=> mapNonEmpty!43897 m!1034813))

(declare-fun m!1034815 () Bool)

(assert (=> b!1119413 m!1034815))

(declare-fun m!1034817 () Bool)

(assert (=> b!1119417 m!1034817))

(declare-fun m!1034819 () Bool)

(assert (=> b!1119410 m!1034819))

(declare-fun m!1034821 () Bool)

(assert (=> b!1119408 m!1034821))

(declare-fun m!1034823 () Bool)

(assert (=> b!1119414 m!1034823))

(declare-fun m!1034825 () Bool)

(assert (=> b!1119414 m!1034825))

(declare-fun m!1034827 () Bool)

(assert (=> b!1119414 m!1034827))

(declare-fun m!1034829 () Bool)

(assert (=> b!1119414 m!1034829))

(declare-fun m!1034831 () Bool)

(assert (=> b!1119411 m!1034831))

(declare-fun m!1034833 () Bool)

(assert (=> b!1119411 m!1034833))

(check-sat (not b!1119411) (not b!1119413) (not start!97858) (not b!1119408) (not b!1119410) b_and!37853 (not b!1119405) tp_is_empty!28053 (not b!1119412) (not b_next!23523) (not b_lambda!18527) (not b!1119414) (not b!1119417) (not mapNonEmpty!43897))
(check-sat b_and!37853 (not b_next!23523))

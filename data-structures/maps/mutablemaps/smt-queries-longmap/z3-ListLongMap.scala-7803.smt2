; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97600 () Bool)

(assert start!97600)

(declare-fun b!1114210 () Bool)

(declare-fun res!743804 () Bool)

(declare-fun e!635104 () Bool)

(assert (=> b!1114210 (=> (not res!743804) (not e!635104))))

(declare-datatypes ((array!72438 0))(
  ( (array!72439 (arr!34868 (Array (_ BitVec 32) (_ BitVec 64))) (size!35405 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72438)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1114210 (= res!743804 (= (select (arr!34868 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43510 () Bool)

(declare-fun mapRes!43510 () Bool)

(assert (=> mapIsEmpty!43510 mapRes!43510))

(declare-fun b!1114211 () Bool)

(declare-fun res!743811 () Bool)

(declare-fun e!635101 () Bool)

(assert (=> b!1114211 (=> (not res!743811) (not e!635101))))

(declare-fun lt!496772 () array!72438)

(declare-datatypes ((List!24431 0))(
  ( (Nil!24428) (Cons!24427 (h!25636 (_ BitVec 64)) (t!34919 List!24431)) )
))
(declare-fun arrayNoDuplicates!0 (array!72438 (_ BitVec 32) List!24431) Bool)

(assert (=> b!1114211 (= res!743811 (arrayNoDuplicates!0 lt!496772 #b00000000000000000000000000000000 Nil!24428))))

(declare-fun mapNonEmpty!43510 () Bool)

(declare-fun tp!82755 () Bool)

(declare-fun e!635103 () Bool)

(assert (=> mapNonEmpty!43510 (= mapRes!43510 (and tp!82755 e!635103))))

(declare-fun mapKey!43510 () (_ BitVec 32))

(declare-datatypes ((V!42187 0))(
  ( (V!42188 (val!13954 Int)) )
))
(declare-datatypes ((ValueCell!13188 0))(
  ( (ValueCellFull!13188 (v!16588 V!42187)) (EmptyCell!13188) )
))
(declare-datatypes ((array!72440 0))(
  ( (array!72441 (arr!34869 (Array (_ BitVec 32) ValueCell!13188)) (size!35406 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72440)

(declare-fun mapValue!43510 () ValueCell!13188)

(declare-fun mapRest!43510 () (Array (_ BitVec 32) ValueCell!13188))

(assert (=> mapNonEmpty!43510 (= (arr!34869 _values!996) (store mapRest!43510 mapKey!43510 mapValue!43510))))

(declare-fun res!743806 () Bool)

(assert (=> start!97600 (=> (not res!743806) (not e!635104))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97600 (= res!743806 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35405 _keys!1208))))))

(assert (=> start!97600 e!635104))

(declare-fun array_inv!26674 (array!72438) Bool)

(assert (=> start!97600 (array_inv!26674 _keys!1208)))

(assert (=> start!97600 true))

(declare-fun e!635100 () Bool)

(declare-fun array_inv!26675 (array!72440) Bool)

(assert (=> start!97600 (and (array_inv!26675 _values!996) e!635100)))

(declare-fun b!1114212 () Bool)

(declare-fun res!743808 () Bool)

(assert (=> b!1114212 (=> (not res!743808) (not e!635104))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114212 (= res!743808 (and (= (size!35406 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35405 _keys!1208) (size!35406 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114213 () Bool)

(declare-fun res!743803 () Bool)

(assert (=> b!1114213 (=> (not res!743803) (not e!635104))))

(assert (=> b!1114213 (= res!743803 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35405 _keys!1208))))))

(declare-fun b!1114214 () Bool)

(declare-fun res!743802 () Bool)

(assert (=> b!1114214 (=> (not res!743802) (not e!635104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114214 (= res!743802 (validKeyInArray!0 k0!934))))

(declare-fun b!1114215 () Bool)

(declare-fun e!635102 () Bool)

(declare-fun tp_is_empty!27795 () Bool)

(assert (=> b!1114215 (= e!635102 tp_is_empty!27795)))

(declare-fun b!1114216 () Bool)

(assert (=> b!1114216 (= e!635104 e!635101)))

(declare-fun res!743805 () Bool)

(assert (=> b!1114216 (=> (not res!743805) (not e!635101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72438 (_ BitVec 32)) Bool)

(assert (=> b!1114216 (= res!743805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496772 mask!1564))))

(assert (=> b!1114216 (= lt!496772 (array!72439 (store (arr!34868 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35405 _keys!1208)))))

(declare-fun b!1114217 () Bool)

(assert (=> b!1114217 (= e!635100 (and e!635102 mapRes!43510))))

(declare-fun condMapEmpty!43510 () Bool)

(declare-fun mapDefault!43510 () ValueCell!13188)

(assert (=> b!1114217 (= condMapEmpty!43510 (= (arr!34869 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13188)) mapDefault!43510)))))

(declare-fun b!1114218 () Bool)

(declare-fun res!743807 () Bool)

(assert (=> b!1114218 (=> (not res!743807) (not e!635104))))

(assert (=> b!1114218 (= res!743807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114219 () Bool)

(declare-fun res!743809 () Bool)

(assert (=> b!1114219 (=> (not res!743809) (not e!635104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114219 (= res!743809 (validMask!0 mask!1564))))

(declare-fun b!1114220 () Bool)

(declare-fun res!743810 () Bool)

(assert (=> b!1114220 (=> (not res!743810) (not e!635104))))

(assert (=> b!1114220 (= res!743810 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24428))))

(declare-fun b!1114221 () Bool)

(assert (=> b!1114221 (= e!635101 (not true))))

(declare-fun arrayContainsKey!0 (array!72438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114221 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36475 0))(
  ( (Unit!36476) )
))
(declare-fun lt!496773 () Unit!36475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72438 (_ BitVec 64) (_ BitVec 32)) Unit!36475)

(assert (=> b!1114221 (= lt!496773 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114222 () Bool)

(assert (=> b!1114222 (= e!635103 tp_is_empty!27795)))

(assert (= (and start!97600 res!743806) b!1114219))

(assert (= (and b!1114219 res!743809) b!1114212))

(assert (= (and b!1114212 res!743808) b!1114218))

(assert (= (and b!1114218 res!743807) b!1114220))

(assert (= (and b!1114220 res!743810) b!1114213))

(assert (= (and b!1114213 res!743803) b!1114214))

(assert (= (and b!1114214 res!743802) b!1114210))

(assert (= (and b!1114210 res!743804) b!1114216))

(assert (= (and b!1114216 res!743805) b!1114211))

(assert (= (and b!1114211 res!743811) b!1114221))

(assert (= (and b!1114217 condMapEmpty!43510) mapIsEmpty!43510))

(assert (= (and b!1114217 (not condMapEmpty!43510)) mapNonEmpty!43510))

(get-info :version)

(assert (= (and mapNonEmpty!43510 ((_ is ValueCellFull!13188) mapValue!43510)) b!1114222))

(assert (= (and b!1114217 ((_ is ValueCellFull!13188) mapDefault!43510)) b!1114215))

(assert (= start!97600 b!1114217))

(declare-fun m!1031265 () Bool)

(assert (=> start!97600 m!1031265))

(declare-fun m!1031267 () Bool)

(assert (=> start!97600 m!1031267))

(declare-fun m!1031269 () Bool)

(assert (=> b!1114218 m!1031269))

(declare-fun m!1031271 () Bool)

(assert (=> b!1114214 m!1031271))

(declare-fun m!1031273 () Bool)

(assert (=> b!1114219 m!1031273))

(declare-fun m!1031275 () Bool)

(assert (=> b!1114221 m!1031275))

(declare-fun m!1031277 () Bool)

(assert (=> b!1114221 m!1031277))

(declare-fun m!1031279 () Bool)

(assert (=> b!1114210 m!1031279))

(declare-fun m!1031281 () Bool)

(assert (=> b!1114211 m!1031281))

(declare-fun m!1031283 () Bool)

(assert (=> mapNonEmpty!43510 m!1031283))

(declare-fun m!1031285 () Bool)

(assert (=> b!1114216 m!1031285))

(declare-fun m!1031287 () Bool)

(assert (=> b!1114216 m!1031287))

(declare-fun m!1031289 () Bool)

(assert (=> b!1114220 m!1031289))

(check-sat (not b!1114211) (not b!1114216) tp_is_empty!27795 (not b!1114219) (not b!1114214) (not mapNonEmpty!43510) (not b!1114221) (not start!97600) (not b!1114218) (not b!1114220))
(check-sat)

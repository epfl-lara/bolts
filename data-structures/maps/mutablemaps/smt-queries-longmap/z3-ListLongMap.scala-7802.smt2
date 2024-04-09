; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97594 () Bool)

(assert start!97594)

(declare-fun mapNonEmpty!43501 () Bool)

(declare-fun mapRes!43501 () Bool)

(declare-fun tp!82746 () Bool)

(declare-fun e!635050 () Bool)

(assert (=> mapNonEmpty!43501 (= mapRes!43501 (and tp!82746 e!635050))))

(declare-fun mapKey!43501 () (_ BitVec 32))

(declare-datatypes ((V!42179 0))(
  ( (V!42180 (val!13951 Int)) )
))
(declare-datatypes ((ValueCell!13185 0))(
  ( (ValueCellFull!13185 (v!16585 V!42179)) (EmptyCell!13185) )
))
(declare-datatypes ((array!72426 0))(
  ( (array!72427 (arr!34862 (Array (_ BitVec 32) ValueCell!13185)) (size!35399 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72426)

(declare-fun mapValue!43501 () ValueCell!13185)

(declare-fun mapRest!43501 () (Array (_ BitVec 32) ValueCell!13185))

(assert (=> mapNonEmpty!43501 (= (arr!34862 _values!996) (store mapRest!43501 mapKey!43501 mapValue!43501))))

(declare-fun b!1114094 () Bool)

(declare-fun e!635048 () Bool)

(declare-fun tp_is_empty!27789 () Bool)

(assert (=> b!1114094 (= e!635048 tp_is_empty!27789)))

(declare-fun mapIsEmpty!43501 () Bool)

(assert (=> mapIsEmpty!43501 mapRes!43501))

(declare-fun b!1114095 () Bool)

(declare-fun e!635051 () Bool)

(declare-fun e!635047 () Bool)

(assert (=> b!1114095 (= e!635051 e!635047)))

(declare-fun res!743716 () Bool)

(assert (=> b!1114095 (=> (not res!743716) (not e!635047))))

(declare-datatypes ((array!72428 0))(
  ( (array!72429 (arr!34863 (Array (_ BitVec 32) (_ BitVec 64))) (size!35400 (_ BitVec 32))) )
))
(declare-fun lt!496755 () array!72428)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72428 (_ BitVec 32)) Bool)

(assert (=> b!1114095 (= res!743716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496755 mask!1564))))

(declare-fun _keys!1208 () array!72428)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114095 (= lt!496755 (array!72429 (store (arr!34863 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35400 _keys!1208)))))

(declare-fun b!1114096 () Bool)

(assert (=> b!1114096 (= e!635047 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114096 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36471 0))(
  ( (Unit!36472) )
))
(declare-fun lt!496754 () Unit!36471)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72428 (_ BitVec 64) (_ BitVec 32)) Unit!36471)

(assert (=> b!1114096 (= lt!496754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114097 () Bool)

(assert (=> b!1114097 (= e!635050 tp_is_empty!27789)))

(declare-fun b!1114098 () Bool)

(declare-fun res!743714 () Bool)

(assert (=> b!1114098 (=> (not res!743714) (not e!635051))))

(assert (=> b!1114098 (= res!743714 (= (select (arr!34863 _keys!1208) i!673) k0!934))))

(declare-fun res!743712 () Bool)

(assert (=> start!97594 (=> (not res!743712) (not e!635051))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97594 (= res!743712 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35400 _keys!1208))))))

(assert (=> start!97594 e!635051))

(declare-fun array_inv!26668 (array!72428) Bool)

(assert (=> start!97594 (array_inv!26668 _keys!1208)))

(assert (=> start!97594 true))

(declare-fun e!635049 () Bool)

(declare-fun array_inv!26669 (array!72426) Bool)

(assert (=> start!97594 (and (array_inv!26669 _values!996) e!635049)))

(declare-fun b!1114093 () Bool)

(declare-fun res!743719 () Bool)

(assert (=> b!1114093 (=> (not res!743719) (not e!635047))))

(declare-datatypes ((List!24429 0))(
  ( (Nil!24426) (Cons!24425 (h!25634 (_ BitVec 64)) (t!34917 List!24429)) )
))
(declare-fun arrayNoDuplicates!0 (array!72428 (_ BitVec 32) List!24429) Bool)

(assert (=> b!1114093 (= res!743719 (arrayNoDuplicates!0 lt!496755 #b00000000000000000000000000000000 Nil!24426))))

(declare-fun b!1114099 () Bool)

(declare-fun res!743715 () Bool)

(assert (=> b!1114099 (=> (not res!743715) (not e!635051))))

(assert (=> b!1114099 (= res!743715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114100 () Bool)

(declare-fun res!743717 () Bool)

(assert (=> b!1114100 (=> (not res!743717) (not e!635051))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114100 (= res!743717 (and (= (size!35399 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35400 _keys!1208) (size!35399 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114101 () Bool)

(declare-fun res!743713 () Bool)

(assert (=> b!1114101 (=> (not res!743713) (not e!635051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114101 (= res!743713 (validKeyInArray!0 k0!934))))

(declare-fun b!1114102 () Bool)

(declare-fun res!743721 () Bool)

(assert (=> b!1114102 (=> (not res!743721) (not e!635051))))

(assert (=> b!1114102 (= res!743721 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24426))))

(declare-fun b!1114103 () Bool)

(declare-fun res!743718 () Bool)

(assert (=> b!1114103 (=> (not res!743718) (not e!635051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114103 (= res!743718 (validMask!0 mask!1564))))

(declare-fun b!1114104 () Bool)

(declare-fun res!743720 () Bool)

(assert (=> b!1114104 (=> (not res!743720) (not e!635051))))

(assert (=> b!1114104 (= res!743720 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35400 _keys!1208))))))

(declare-fun b!1114105 () Bool)

(assert (=> b!1114105 (= e!635049 (and e!635048 mapRes!43501))))

(declare-fun condMapEmpty!43501 () Bool)

(declare-fun mapDefault!43501 () ValueCell!13185)

(assert (=> b!1114105 (= condMapEmpty!43501 (= (arr!34862 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13185)) mapDefault!43501)))))

(assert (= (and start!97594 res!743712) b!1114103))

(assert (= (and b!1114103 res!743718) b!1114100))

(assert (= (and b!1114100 res!743717) b!1114099))

(assert (= (and b!1114099 res!743715) b!1114102))

(assert (= (and b!1114102 res!743721) b!1114104))

(assert (= (and b!1114104 res!743720) b!1114101))

(assert (= (and b!1114101 res!743713) b!1114098))

(assert (= (and b!1114098 res!743714) b!1114095))

(assert (= (and b!1114095 res!743716) b!1114093))

(assert (= (and b!1114093 res!743719) b!1114096))

(assert (= (and b!1114105 condMapEmpty!43501) mapIsEmpty!43501))

(assert (= (and b!1114105 (not condMapEmpty!43501)) mapNonEmpty!43501))

(get-info :version)

(assert (= (and mapNonEmpty!43501 ((_ is ValueCellFull!13185) mapValue!43501)) b!1114097))

(assert (= (and b!1114105 ((_ is ValueCellFull!13185) mapDefault!43501)) b!1114094))

(assert (= start!97594 b!1114105))

(declare-fun m!1031187 () Bool)

(assert (=> b!1114095 m!1031187))

(declare-fun m!1031189 () Bool)

(assert (=> b!1114095 m!1031189))

(declare-fun m!1031191 () Bool)

(assert (=> b!1114096 m!1031191))

(declare-fun m!1031193 () Bool)

(assert (=> b!1114096 m!1031193))

(declare-fun m!1031195 () Bool)

(assert (=> b!1114098 m!1031195))

(declare-fun m!1031197 () Bool)

(assert (=> b!1114101 m!1031197))

(declare-fun m!1031199 () Bool)

(assert (=> b!1114099 m!1031199))

(declare-fun m!1031201 () Bool)

(assert (=> b!1114103 m!1031201))

(declare-fun m!1031203 () Bool)

(assert (=> b!1114093 m!1031203))

(declare-fun m!1031205 () Bool)

(assert (=> mapNonEmpty!43501 m!1031205))

(declare-fun m!1031207 () Bool)

(assert (=> start!97594 m!1031207))

(declare-fun m!1031209 () Bool)

(assert (=> start!97594 m!1031209))

(declare-fun m!1031211 () Bool)

(assert (=> b!1114102 m!1031211))

(check-sat (not b!1114103) (not start!97594) (not b!1114099) (not b!1114093) (not b!1114096) (not b!1114102) (not mapNonEmpty!43501) (not b!1114101) tp_is_empty!27789 (not b!1114095))
(check-sat)

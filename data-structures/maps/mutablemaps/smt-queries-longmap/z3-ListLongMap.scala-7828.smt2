; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97750 () Bool)

(assert start!97750)

(declare-fun b!1117135 () Bool)

(declare-fun e!636452 () Bool)

(declare-fun tp_is_empty!27945 () Bool)

(assert (=> b!1117135 (= e!636452 tp_is_empty!27945)))

(declare-fun mapIsEmpty!43735 () Bool)

(declare-fun mapRes!43735 () Bool)

(assert (=> mapIsEmpty!43735 mapRes!43735))

(declare-fun b!1117136 () Bool)

(declare-fun e!636450 () Bool)

(declare-fun e!636455 () Bool)

(assert (=> b!1117136 (= e!636450 e!636455)))

(declare-fun res!746058 () Bool)

(assert (=> b!1117136 (=> (not res!746058) (not e!636455))))

(declare-datatypes ((array!72724 0))(
  ( (array!72725 (arr!35011 (Array (_ BitVec 32) (_ BitVec 64))) (size!35548 (_ BitVec 32))) )
))
(declare-fun lt!497223 () array!72724)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72724 (_ BitVec 32)) Bool)

(assert (=> b!1117136 (= res!746058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497223 mask!1564))))

(declare-fun _keys!1208 () array!72724)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117136 (= lt!497223 (array!72725 (store (arr!35011 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35548 _keys!1208)))))

(declare-fun b!1117137 () Bool)

(declare-fun e!636454 () Bool)

(assert (=> b!1117137 (= e!636454 tp_is_empty!27945)))

(declare-fun b!1117138 () Bool)

(declare-fun res!746054 () Bool)

(assert (=> b!1117138 (=> (not res!746054) (not e!636450))))

(declare-datatypes ((List!24487 0))(
  ( (Nil!24484) (Cons!24483 (h!25692 (_ BitVec 64)) (t!34975 List!24487)) )
))
(declare-fun arrayNoDuplicates!0 (array!72724 (_ BitVec 32) List!24487) Bool)

(assert (=> b!1117138 (= res!746054 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24484))))

(declare-fun res!746060 () Bool)

(assert (=> start!97750 (=> (not res!746060) (not e!636450))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97750 (= res!746060 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35548 _keys!1208))))))

(assert (=> start!97750 e!636450))

(declare-fun array_inv!26766 (array!72724) Bool)

(assert (=> start!97750 (array_inv!26766 _keys!1208)))

(assert (=> start!97750 true))

(declare-datatypes ((V!42387 0))(
  ( (V!42388 (val!14029 Int)) )
))
(declare-datatypes ((ValueCell!13263 0))(
  ( (ValueCellFull!13263 (v!16663 V!42387)) (EmptyCell!13263) )
))
(declare-datatypes ((array!72726 0))(
  ( (array!72727 (arr!35012 (Array (_ BitVec 32) ValueCell!13263)) (size!35549 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72726)

(declare-fun e!636453 () Bool)

(declare-fun array_inv!26767 (array!72726) Bool)

(assert (=> start!97750 (and (array_inv!26767 _values!996) e!636453)))

(declare-fun b!1117139 () Bool)

(declare-fun res!746057 () Bool)

(assert (=> b!1117139 (=> (not res!746057) (not e!636450))))

(assert (=> b!1117139 (= res!746057 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35548 _keys!1208))))))

(declare-fun b!1117140 () Bool)

(assert (=> b!1117140 (= e!636453 (and e!636454 mapRes!43735))))

(declare-fun condMapEmpty!43735 () Bool)

(declare-fun mapDefault!43735 () ValueCell!13263)

(assert (=> b!1117140 (= condMapEmpty!43735 (= (arr!35012 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13263)) mapDefault!43735)))))

(declare-fun b!1117141 () Bool)

(declare-fun res!746061 () Bool)

(assert (=> b!1117141 (=> (not res!746061) (not e!636450))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117141 (= res!746061 (validKeyInArray!0 k0!934))))

(declare-fun b!1117142 () Bool)

(declare-fun res!746052 () Bool)

(assert (=> b!1117142 (=> (not res!746052) (not e!636450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117142 (= res!746052 (validMask!0 mask!1564))))

(declare-fun b!1117143 () Bool)

(declare-fun res!746053 () Bool)

(assert (=> b!1117143 (=> (not res!746053) (not e!636450))))

(assert (=> b!1117143 (= res!746053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117144 () Bool)

(declare-fun res!746055 () Bool)

(assert (=> b!1117144 (=> (not res!746055) (not e!636450))))

(assert (=> b!1117144 (= res!746055 (= (select (arr!35011 _keys!1208) i!673) k0!934))))

(declare-fun b!1117145 () Bool)

(declare-fun res!746059 () Bool)

(assert (=> b!1117145 (=> (not res!746059) (not e!636455))))

(assert (=> b!1117145 (= res!746059 (arrayNoDuplicates!0 lt!497223 #b00000000000000000000000000000000 Nil!24484))))

(declare-fun mapNonEmpty!43735 () Bool)

(declare-fun tp!82980 () Bool)

(assert (=> mapNonEmpty!43735 (= mapRes!43735 (and tp!82980 e!636452))))

(declare-fun mapValue!43735 () ValueCell!13263)

(declare-fun mapRest!43735 () (Array (_ BitVec 32) ValueCell!13263))

(declare-fun mapKey!43735 () (_ BitVec 32))

(assert (=> mapNonEmpty!43735 (= (arr!35012 _values!996) (store mapRest!43735 mapKey!43735 mapValue!43735))))

(declare-fun b!1117146 () Bool)

(declare-fun res!746056 () Bool)

(assert (=> b!1117146 (=> (not res!746056) (not e!636450))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117146 (= res!746056 (and (= (size!35549 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35548 _keys!1208) (size!35549 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117147 () Bool)

(assert (=> b!1117147 (= e!636455 (not true))))

(declare-fun arrayContainsKey!0 (array!72724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117147 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36569 0))(
  ( (Unit!36570) )
))
(declare-fun lt!497222 () Unit!36569)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72724 (_ BitVec 64) (_ BitVec 32)) Unit!36569)

(assert (=> b!1117147 (= lt!497222 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97750 res!746060) b!1117142))

(assert (= (and b!1117142 res!746052) b!1117146))

(assert (= (and b!1117146 res!746056) b!1117143))

(assert (= (and b!1117143 res!746053) b!1117138))

(assert (= (and b!1117138 res!746054) b!1117139))

(assert (= (and b!1117139 res!746057) b!1117141))

(assert (= (and b!1117141 res!746061) b!1117144))

(assert (= (and b!1117144 res!746055) b!1117136))

(assert (= (and b!1117136 res!746058) b!1117145))

(assert (= (and b!1117145 res!746059) b!1117147))

(assert (= (and b!1117140 condMapEmpty!43735) mapIsEmpty!43735))

(assert (= (and b!1117140 (not condMapEmpty!43735)) mapNonEmpty!43735))

(get-info :version)

(assert (= (and mapNonEmpty!43735 ((_ is ValueCellFull!13263) mapValue!43735)) b!1117135))

(assert (= (and b!1117140 ((_ is ValueCellFull!13263) mapDefault!43735)) b!1117137))

(assert (= start!97750 b!1117140))

(declare-fun m!1033215 () Bool)

(assert (=> mapNonEmpty!43735 m!1033215))

(declare-fun m!1033217 () Bool)

(assert (=> b!1117143 m!1033217))

(declare-fun m!1033219 () Bool)

(assert (=> start!97750 m!1033219))

(declare-fun m!1033221 () Bool)

(assert (=> start!97750 m!1033221))

(declare-fun m!1033223 () Bool)

(assert (=> b!1117144 m!1033223))

(declare-fun m!1033225 () Bool)

(assert (=> b!1117147 m!1033225))

(declare-fun m!1033227 () Bool)

(assert (=> b!1117147 m!1033227))

(declare-fun m!1033229 () Bool)

(assert (=> b!1117141 m!1033229))

(declare-fun m!1033231 () Bool)

(assert (=> b!1117145 m!1033231))

(declare-fun m!1033233 () Bool)

(assert (=> b!1117138 m!1033233))

(declare-fun m!1033235 () Bool)

(assert (=> b!1117136 m!1033235))

(declare-fun m!1033237 () Bool)

(assert (=> b!1117136 m!1033237))

(declare-fun m!1033239 () Bool)

(assert (=> b!1117142 m!1033239))

(check-sat (not b!1117145) (not b!1117138) (not b!1117142) (not b!1117147) (not b!1117136) tp_is_empty!27945 (not mapNonEmpty!43735) (not b!1117143) (not start!97750) (not b!1117141))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97696 () Bool)

(assert start!97696)

(declare-fun mapNonEmpty!43654 () Bool)

(declare-fun mapRes!43654 () Bool)

(declare-fun tp!82899 () Bool)

(declare-fun e!635969 () Bool)

(assert (=> mapNonEmpty!43654 (= mapRes!43654 (and tp!82899 e!635969))))

(declare-fun mapKey!43654 () (_ BitVec 32))

(declare-datatypes ((V!42315 0))(
  ( (V!42316 (val!14002 Int)) )
))
(declare-datatypes ((ValueCell!13236 0))(
  ( (ValueCellFull!13236 (v!16636 V!42315)) (EmptyCell!13236) )
))
(declare-fun mapRest!43654 () (Array (_ BitVec 32) ValueCell!13236))

(declare-datatypes ((array!72622 0))(
  ( (array!72623 (arr!34960 (Array (_ BitVec 32) ValueCell!13236)) (size!35497 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72622)

(declare-fun mapValue!43654 () ValueCell!13236)

(assert (=> mapNonEmpty!43654 (= (arr!34960 _values!996) (store mapRest!43654 mapKey!43654 mapValue!43654))))

(declare-fun b!1116082 () Bool)

(declare-fun tp_is_empty!27891 () Bool)

(assert (=> b!1116082 (= e!635969 tp_is_empty!27891)))

(declare-fun b!1116083 () Bool)

(declare-fun res!745242 () Bool)

(declare-fun e!635967 () Bool)

(assert (=> b!1116083 (=> (not res!745242) (not e!635967))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116083 (= res!745242 (validMask!0 mask!1564))))

(declare-fun b!1116084 () Bool)

(declare-fun res!745247 () Bool)

(assert (=> b!1116084 (=> (not res!745247) (not e!635967))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!72624 0))(
  ( (array!72625 (arr!34961 (Array (_ BitVec 32) (_ BitVec 64))) (size!35498 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72624)

(assert (=> b!1116084 (= res!745247 (and (= (size!35497 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35498 _keys!1208) (size!35497 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116085 () Bool)

(declare-fun res!745248 () Bool)

(assert (=> b!1116085 (=> (not res!745248) (not e!635967))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1116085 (= res!745248 (= (select (arr!34961 _keys!1208) i!673) k0!934))))

(declare-fun b!1116087 () Bool)

(declare-fun e!635964 () Bool)

(declare-fun e!635968 () Bool)

(assert (=> b!1116087 (= e!635964 (and e!635968 mapRes!43654))))

(declare-fun condMapEmpty!43654 () Bool)

(declare-fun mapDefault!43654 () ValueCell!13236)

(assert (=> b!1116087 (= condMapEmpty!43654 (= (arr!34960 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13236)) mapDefault!43654)))))

(declare-fun mapIsEmpty!43654 () Bool)

(assert (=> mapIsEmpty!43654 mapRes!43654))

(declare-fun b!1116088 () Bool)

(declare-fun res!745243 () Bool)

(assert (=> b!1116088 (=> (not res!745243) (not e!635967))))

(declare-datatypes ((List!24468 0))(
  ( (Nil!24465) (Cons!24464 (h!25673 (_ BitVec 64)) (t!34956 List!24468)) )
))
(declare-fun arrayNoDuplicates!0 (array!72624 (_ BitVec 32) List!24468) Bool)

(assert (=> b!1116088 (= res!745243 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24465))))

(declare-fun b!1116089 () Bool)

(declare-fun e!635965 () Bool)

(assert (=> b!1116089 (= e!635965 (not true))))

(declare-fun arrayContainsKey!0 (array!72624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116089 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36531 0))(
  ( (Unit!36532) )
))
(declare-fun lt!497061 () Unit!36531)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72624 (_ BitVec 64) (_ BitVec 32)) Unit!36531)

(assert (=> b!1116089 (= lt!497061 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1116090 () Bool)

(declare-fun res!745250 () Bool)

(assert (=> b!1116090 (=> (not res!745250) (not e!635967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72624 (_ BitVec 32)) Bool)

(assert (=> b!1116090 (= res!745250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116091 () Bool)

(assert (=> b!1116091 (= e!635968 tp_is_empty!27891)))

(declare-fun b!1116092 () Bool)

(assert (=> b!1116092 (= e!635967 e!635965)))

(declare-fun res!745251 () Bool)

(assert (=> b!1116092 (=> (not res!745251) (not e!635965))))

(declare-fun lt!497060 () array!72624)

(assert (=> b!1116092 (= res!745251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497060 mask!1564))))

(assert (=> b!1116092 (= lt!497060 (array!72625 (store (arr!34961 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35498 _keys!1208)))))

(declare-fun b!1116086 () Bool)

(declare-fun res!745249 () Bool)

(assert (=> b!1116086 (=> (not res!745249) (not e!635967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116086 (= res!745249 (validKeyInArray!0 k0!934))))

(declare-fun res!745245 () Bool)

(assert (=> start!97696 (=> (not res!745245) (not e!635967))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97696 (= res!745245 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35498 _keys!1208))))))

(assert (=> start!97696 e!635967))

(declare-fun array_inv!26730 (array!72624) Bool)

(assert (=> start!97696 (array_inv!26730 _keys!1208)))

(assert (=> start!97696 true))

(declare-fun array_inv!26731 (array!72622) Bool)

(assert (=> start!97696 (and (array_inv!26731 _values!996) e!635964)))

(declare-fun b!1116093 () Bool)

(declare-fun res!745246 () Bool)

(assert (=> b!1116093 (=> (not res!745246) (not e!635965))))

(assert (=> b!1116093 (= res!745246 (arrayNoDuplicates!0 lt!497060 #b00000000000000000000000000000000 Nil!24465))))

(declare-fun b!1116094 () Bool)

(declare-fun res!745244 () Bool)

(assert (=> b!1116094 (=> (not res!745244) (not e!635967))))

(assert (=> b!1116094 (= res!745244 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35498 _keys!1208))))))

(assert (= (and start!97696 res!745245) b!1116083))

(assert (= (and b!1116083 res!745242) b!1116084))

(assert (= (and b!1116084 res!745247) b!1116090))

(assert (= (and b!1116090 res!745250) b!1116088))

(assert (= (and b!1116088 res!745243) b!1116094))

(assert (= (and b!1116094 res!745244) b!1116086))

(assert (= (and b!1116086 res!745249) b!1116085))

(assert (= (and b!1116085 res!745248) b!1116092))

(assert (= (and b!1116092 res!745251) b!1116093))

(assert (= (and b!1116093 res!745246) b!1116089))

(assert (= (and b!1116087 condMapEmpty!43654) mapIsEmpty!43654))

(assert (= (and b!1116087 (not condMapEmpty!43654)) mapNonEmpty!43654))

(get-info :version)

(assert (= (and mapNonEmpty!43654 ((_ is ValueCellFull!13236) mapValue!43654)) b!1116082))

(assert (= (and b!1116087 ((_ is ValueCellFull!13236) mapDefault!43654)) b!1116091))

(assert (= start!97696 b!1116087))

(declare-fun m!1032513 () Bool)

(assert (=> b!1116088 m!1032513))

(declare-fun m!1032515 () Bool)

(assert (=> b!1116083 m!1032515))

(declare-fun m!1032517 () Bool)

(assert (=> b!1116085 m!1032517))

(declare-fun m!1032519 () Bool)

(assert (=> mapNonEmpty!43654 m!1032519))

(declare-fun m!1032521 () Bool)

(assert (=> b!1116090 m!1032521))

(declare-fun m!1032523 () Bool)

(assert (=> b!1116086 m!1032523))

(declare-fun m!1032525 () Bool)

(assert (=> b!1116092 m!1032525))

(declare-fun m!1032527 () Bool)

(assert (=> b!1116092 m!1032527))

(declare-fun m!1032529 () Bool)

(assert (=> b!1116093 m!1032529))

(declare-fun m!1032531 () Bool)

(assert (=> b!1116089 m!1032531))

(declare-fun m!1032533 () Bool)

(assert (=> b!1116089 m!1032533))

(declare-fun m!1032535 () Bool)

(assert (=> start!97696 m!1032535))

(declare-fun m!1032537 () Bool)

(assert (=> start!97696 m!1032537))

(check-sat (not mapNonEmpty!43654) (not start!97696) (not b!1116089) (not b!1116093) tp_is_empty!27891 (not b!1116090) (not b!1116092) (not b!1116088) (not b!1116086) (not b!1116083))
(check-sat)

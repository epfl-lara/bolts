; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97720 () Bool)

(assert start!97720)

(declare-fun b!1116550 () Bool)

(declare-fun e!636184 () Bool)

(declare-fun tp_is_empty!27915 () Bool)

(assert (=> b!1116550 (= e!636184 tp_is_empty!27915)))

(declare-fun mapNonEmpty!43690 () Bool)

(declare-fun mapRes!43690 () Bool)

(declare-fun tp!82935 () Bool)

(assert (=> mapNonEmpty!43690 (= mapRes!43690 (and tp!82935 e!636184))))

(declare-datatypes ((V!42347 0))(
  ( (V!42348 (val!14014 Int)) )
))
(declare-datatypes ((ValueCell!13248 0))(
  ( (ValueCellFull!13248 (v!16648 V!42347)) (EmptyCell!13248) )
))
(declare-fun mapRest!43690 () (Array (_ BitVec 32) ValueCell!13248))

(declare-datatypes ((array!72668 0))(
  ( (array!72669 (arr!34983 (Array (_ BitVec 32) ValueCell!13248)) (size!35520 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72668)

(declare-fun mapValue!43690 () ValueCell!13248)

(declare-fun mapKey!43690 () (_ BitVec 32))

(assert (=> mapNonEmpty!43690 (= (arr!34983 _values!996) (store mapRest!43690 mapKey!43690 mapValue!43690))))

(declare-fun b!1116551 () Bool)

(declare-fun res!745606 () Bool)

(declare-fun e!636185 () Bool)

(assert (=> b!1116551 (=> (not res!745606) (not e!636185))))

(declare-datatypes ((array!72670 0))(
  ( (array!72671 (arr!34984 (Array (_ BitVec 32) (_ BitVec 64))) (size!35521 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72670)

(declare-datatypes ((List!24477 0))(
  ( (Nil!24474) (Cons!24473 (h!25682 (_ BitVec 64)) (t!34965 List!24477)) )
))
(declare-fun arrayNoDuplicates!0 (array!72670 (_ BitVec 32) List!24477) Bool)

(assert (=> b!1116551 (= res!745606 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24474))))

(declare-fun b!1116552 () Bool)

(declare-fun res!745608 () Bool)

(declare-fun e!636182 () Bool)

(assert (=> b!1116552 (=> (not res!745608) (not e!636182))))

(declare-fun lt!497132 () array!72670)

(assert (=> b!1116552 (= res!745608 (arrayNoDuplicates!0 lt!497132 #b00000000000000000000000000000000 Nil!24474))))

(declare-fun mapIsEmpty!43690 () Bool)

(assert (=> mapIsEmpty!43690 mapRes!43690))

(declare-fun b!1116553 () Bool)

(declare-fun res!745611 () Bool)

(assert (=> b!1116553 (=> (not res!745611) (not e!636185))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116553 (= res!745611 (validKeyInArray!0 k0!934))))

(declare-fun b!1116555 () Bool)

(declare-fun e!636183 () Bool)

(assert (=> b!1116555 (= e!636183 tp_is_empty!27915)))

(declare-fun b!1116556 () Bool)

(assert (=> b!1116556 (= e!636185 e!636182)))

(declare-fun res!745603 () Bool)

(assert (=> b!1116556 (=> (not res!745603) (not e!636182))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72670 (_ BitVec 32)) Bool)

(assert (=> b!1116556 (= res!745603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497132 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116556 (= lt!497132 (array!72671 (store (arr!34984 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35521 _keys!1208)))))

(declare-fun b!1116557 () Bool)

(declare-fun res!745602 () Bool)

(assert (=> b!1116557 (=> (not res!745602) (not e!636185))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116557 (= res!745602 (and (= (size!35520 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35521 _keys!1208) (size!35520 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116558 () Bool)

(declare-fun res!745610 () Bool)

(assert (=> b!1116558 (=> (not res!745610) (not e!636185))))

(assert (=> b!1116558 (= res!745610 (= (select (arr!34984 _keys!1208) i!673) k0!934))))

(declare-fun b!1116559 () Bool)

(declare-fun res!745605 () Bool)

(assert (=> b!1116559 (=> (not res!745605) (not e!636185))))

(assert (=> b!1116559 (= res!745605 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35521 _keys!1208))))))

(declare-fun b!1116560 () Bool)

(declare-fun e!636181 () Bool)

(assert (=> b!1116560 (= e!636181 (and e!636183 mapRes!43690))))

(declare-fun condMapEmpty!43690 () Bool)

(declare-fun mapDefault!43690 () ValueCell!13248)

(assert (=> b!1116560 (= condMapEmpty!43690 (= (arr!34983 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13248)) mapDefault!43690)))))

(declare-fun b!1116561 () Bool)

(assert (=> b!1116561 (= e!636182 (not true))))

(declare-fun arrayContainsKey!0 (array!72670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116561 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36549 0))(
  ( (Unit!36550) )
))
(declare-fun lt!497133 () Unit!36549)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72670 (_ BitVec 64) (_ BitVec 32)) Unit!36549)

(assert (=> b!1116561 (= lt!497133 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1116562 () Bool)

(declare-fun res!745607 () Bool)

(assert (=> b!1116562 (=> (not res!745607) (not e!636185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116562 (= res!745607 (validMask!0 mask!1564))))

(declare-fun b!1116554 () Bool)

(declare-fun res!745604 () Bool)

(assert (=> b!1116554 (=> (not res!745604) (not e!636185))))

(assert (=> b!1116554 (= res!745604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!745609 () Bool)

(assert (=> start!97720 (=> (not res!745609) (not e!636185))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97720 (= res!745609 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35521 _keys!1208))))))

(assert (=> start!97720 e!636185))

(declare-fun array_inv!26746 (array!72670) Bool)

(assert (=> start!97720 (array_inv!26746 _keys!1208)))

(assert (=> start!97720 true))

(declare-fun array_inv!26747 (array!72668) Bool)

(assert (=> start!97720 (and (array_inv!26747 _values!996) e!636181)))

(assert (= (and start!97720 res!745609) b!1116562))

(assert (= (and b!1116562 res!745607) b!1116557))

(assert (= (and b!1116557 res!745602) b!1116554))

(assert (= (and b!1116554 res!745604) b!1116551))

(assert (= (and b!1116551 res!745606) b!1116559))

(assert (= (and b!1116559 res!745605) b!1116553))

(assert (= (and b!1116553 res!745611) b!1116558))

(assert (= (and b!1116558 res!745610) b!1116556))

(assert (= (and b!1116556 res!745603) b!1116552))

(assert (= (and b!1116552 res!745608) b!1116561))

(assert (= (and b!1116560 condMapEmpty!43690) mapIsEmpty!43690))

(assert (= (and b!1116560 (not condMapEmpty!43690)) mapNonEmpty!43690))

(get-info :version)

(assert (= (and mapNonEmpty!43690 ((_ is ValueCellFull!13248) mapValue!43690)) b!1116550))

(assert (= (and b!1116560 ((_ is ValueCellFull!13248) mapDefault!43690)) b!1116555))

(assert (= start!97720 b!1116560))

(declare-fun m!1032825 () Bool)

(assert (=> b!1116561 m!1032825))

(declare-fun m!1032827 () Bool)

(assert (=> b!1116561 m!1032827))

(declare-fun m!1032829 () Bool)

(assert (=> b!1116553 m!1032829))

(declare-fun m!1032831 () Bool)

(assert (=> start!97720 m!1032831))

(declare-fun m!1032833 () Bool)

(assert (=> start!97720 m!1032833))

(declare-fun m!1032835 () Bool)

(assert (=> b!1116556 m!1032835))

(declare-fun m!1032837 () Bool)

(assert (=> b!1116556 m!1032837))

(declare-fun m!1032839 () Bool)

(assert (=> b!1116558 m!1032839))

(declare-fun m!1032841 () Bool)

(assert (=> b!1116552 m!1032841))

(declare-fun m!1032843 () Bool)

(assert (=> b!1116562 m!1032843))

(declare-fun m!1032845 () Bool)

(assert (=> b!1116554 m!1032845))

(declare-fun m!1032847 () Bool)

(assert (=> b!1116551 m!1032847))

(declare-fun m!1032849 () Bool)

(assert (=> mapNonEmpty!43690 m!1032849))

(check-sat (not b!1116551) (not b!1116556) tp_is_empty!27915 (not mapNonEmpty!43690) (not b!1116553) (not b!1116552) (not start!97720) (not b!1116554) (not b!1116562) (not b!1116561))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4270 () Bool)

(assert start!4270)

(declare-fun b_free!1137 () Bool)

(declare-fun b_next!1137 () Bool)

(assert (=> start!4270 (= b_free!1137 (not b_next!1137))))

(declare-fun tp!4836 () Bool)

(declare-fun b_and!1953 () Bool)

(assert (=> start!4270 (= tp!4836 b_and!1953)))

(declare-fun b!32707 () Bool)

(declare-fun res!19841 () Bool)

(declare-fun e!20784 () Bool)

(assert (=> b!32707 (=> (not res!19841) (not e!20784))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32707 (= res!19841 (validKeyInArray!0 k0!1304))))

(declare-fun b!32708 () Bool)

(declare-fun res!19846 () Bool)

(assert (=> b!32708 (=> (not res!19846) (not e!20784))))

(declare-datatypes ((V!1813 0))(
  ( (V!1814 (val!772 Int)) )
))
(declare-datatypes ((ValueCell!546 0))(
  ( (ValueCellFull!546 (v!1863 V!1813)) (EmptyCell!546) )
))
(declare-datatypes ((array!2191 0))(
  ( (array!2192 (arr!1047 (Array (_ BitVec 32) ValueCell!546)) (size!1148 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2191)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2193 0))(
  ( (array!2194 (arr!1048 (Array (_ BitVec 32) (_ BitVec 64))) (size!1149 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2193)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!32708 (= res!19846 (and (= (size!1148 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1149 _keys!1833) (size!1148 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32709 () Bool)

(declare-fun e!20783 () Bool)

(assert (=> b!32709 (= e!20784 e!20783)))

(declare-fun res!19842 () Bool)

(assert (=> b!32709 (=> (not res!19842) (not e!20783))))

(declare-datatypes ((tuple2!1248 0))(
  ( (tuple2!1249 (_1!634 (_ BitVec 64)) (_2!634 V!1813)) )
))
(declare-datatypes ((List!850 0))(
  ( (Nil!847) (Cons!846 (h!1413 tuple2!1248) (t!3549 List!850)) )
))
(declare-datatypes ((ListLongMap!829 0))(
  ( (ListLongMap!830 (toList!430 List!850)) )
))
(declare-fun lt!11866 () ListLongMap!829)

(declare-fun contains!369 (ListLongMap!829 (_ BitVec 64)) Bool)

(assert (=> b!32709 (= res!19842 (not (contains!369 lt!11866 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1813)

(declare-fun minValue!1443 () V!1813)

(declare-fun getCurrentListMap!255 (array!2193 array!2191 (_ BitVec 32) (_ BitVec 32) V!1813 V!1813 (_ BitVec 32) Int) ListLongMap!829)

(assert (=> b!32709 (= lt!11866 (getCurrentListMap!255 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32710 () Bool)

(declare-fun res!19844 () Bool)

(assert (=> b!32710 (=> (not res!19844) (not e!20783))))

(declare-fun arrayContainsKey!0 (array!2193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32710 (= res!19844 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1771 () Bool)

(declare-fun mapRes!1771 () Bool)

(assert (=> mapIsEmpty!1771 mapRes!1771))

(declare-fun res!19843 () Bool)

(assert (=> start!4270 (=> (not res!19843) (not e!20784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4270 (= res!19843 (validMask!0 mask!2294))))

(assert (=> start!4270 e!20784))

(assert (=> start!4270 true))

(assert (=> start!4270 tp!4836))

(declare-fun e!20786 () Bool)

(declare-fun array_inv!695 (array!2191) Bool)

(assert (=> start!4270 (and (array_inv!695 _values!1501) e!20786)))

(declare-fun array_inv!696 (array!2193) Bool)

(assert (=> start!4270 (array_inv!696 _keys!1833)))

(declare-fun tp_is_empty!1491 () Bool)

(assert (=> start!4270 tp_is_empty!1491))

(declare-fun b!32711 () Bool)

(assert (=> b!32711 (= e!20783 (not true))))

(declare-fun lt!11867 () (_ BitVec 32))

(assert (=> b!32711 (contains!369 lt!11866 (select (arr!1048 _keys!1833) lt!11867))))

(declare-datatypes ((Unit!715 0))(
  ( (Unit!716) )
))
(declare-fun lt!11868 () Unit!715)

(declare-fun lemmaValidKeyInArrayIsInListMap!45 (array!2193 array!2191 (_ BitVec 32) (_ BitVec 32) V!1813 V!1813 (_ BitVec 32) Int) Unit!715)

(assert (=> b!32711 (= lt!11868 (lemmaValidKeyInArrayIsInListMap!45 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11867 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2193 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32711 (= lt!11867 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32712 () Bool)

(declare-fun e!20785 () Bool)

(assert (=> b!32712 (= e!20786 (and e!20785 mapRes!1771))))

(declare-fun condMapEmpty!1771 () Bool)

(declare-fun mapDefault!1771 () ValueCell!546)

(assert (=> b!32712 (= condMapEmpty!1771 (= (arr!1047 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!546)) mapDefault!1771)))))

(declare-fun b!32713 () Bool)

(declare-fun res!19840 () Bool)

(assert (=> b!32713 (=> (not res!19840) (not e!20784))))

(declare-datatypes ((List!851 0))(
  ( (Nil!848) (Cons!847 (h!1414 (_ BitVec 64)) (t!3550 List!851)) )
))
(declare-fun arrayNoDuplicates!0 (array!2193 (_ BitVec 32) List!851) Bool)

(assert (=> b!32713 (= res!19840 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!848))))

(declare-fun b!32714 () Bool)

(assert (=> b!32714 (= e!20785 tp_is_empty!1491)))

(declare-fun b!32715 () Bool)

(declare-fun res!19845 () Bool)

(assert (=> b!32715 (=> (not res!19845) (not e!20784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2193 (_ BitVec 32)) Bool)

(assert (=> b!32715 (= res!19845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32716 () Bool)

(declare-fun e!20788 () Bool)

(assert (=> b!32716 (= e!20788 tp_is_empty!1491)))

(declare-fun mapNonEmpty!1771 () Bool)

(declare-fun tp!4837 () Bool)

(assert (=> mapNonEmpty!1771 (= mapRes!1771 (and tp!4837 e!20788))))

(declare-fun mapRest!1771 () (Array (_ BitVec 32) ValueCell!546))

(declare-fun mapKey!1771 () (_ BitVec 32))

(declare-fun mapValue!1771 () ValueCell!546)

(assert (=> mapNonEmpty!1771 (= (arr!1047 _values!1501) (store mapRest!1771 mapKey!1771 mapValue!1771))))

(assert (= (and start!4270 res!19843) b!32708))

(assert (= (and b!32708 res!19846) b!32715))

(assert (= (and b!32715 res!19845) b!32713))

(assert (= (and b!32713 res!19840) b!32707))

(assert (= (and b!32707 res!19841) b!32709))

(assert (= (and b!32709 res!19842) b!32710))

(assert (= (and b!32710 res!19844) b!32711))

(assert (= (and b!32712 condMapEmpty!1771) mapIsEmpty!1771))

(assert (= (and b!32712 (not condMapEmpty!1771)) mapNonEmpty!1771))

(get-info :version)

(assert (= (and mapNonEmpty!1771 ((_ is ValueCellFull!546) mapValue!1771)) b!32716))

(assert (= (and b!32712 ((_ is ValueCellFull!546) mapDefault!1771)) b!32714))

(assert (= start!4270 b!32712))

(declare-fun m!26165 () Bool)

(assert (=> b!32711 m!26165))

(assert (=> b!32711 m!26165))

(declare-fun m!26167 () Bool)

(assert (=> b!32711 m!26167))

(declare-fun m!26169 () Bool)

(assert (=> b!32711 m!26169))

(declare-fun m!26171 () Bool)

(assert (=> b!32711 m!26171))

(declare-fun m!26173 () Bool)

(assert (=> b!32710 m!26173))

(declare-fun m!26175 () Bool)

(assert (=> b!32715 m!26175))

(declare-fun m!26177 () Bool)

(assert (=> b!32707 m!26177))

(declare-fun m!26179 () Bool)

(assert (=> b!32709 m!26179))

(declare-fun m!26181 () Bool)

(assert (=> b!32709 m!26181))

(declare-fun m!26183 () Bool)

(assert (=> start!4270 m!26183))

(declare-fun m!26185 () Bool)

(assert (=> start!4270 m!26185))

(declare-fun m!26187 () Bool)

(assert (=> start!4270 m!26187))

(declare-fun m!26189 () Bool)

(assert (=> b!32713 m!26189))

(declare-fun m!26191 () Bool)

(assert (=> mapNonEmpty!1771 m!26191))

(check-sat (not b!32707) (not start!4270) tp_is_empty!1491 b_and!1953 (not b!32711) (not mapNonEmpty!1771) (not b!32713) (not b_next!1137) (not b!32709) (not b!32715) (not b!32710))
(check-sat b_and!1953 (not b_next!1137))

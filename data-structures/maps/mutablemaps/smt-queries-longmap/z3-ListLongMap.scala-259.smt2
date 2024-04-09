; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4276 () Bool)

(assert start!4276)

(declare-fun b_free!1143 () Bool)

(declare-fun b_next!1143 () Bool)

(assert (=> start!4276 (= b_free!1143 (not b_next!1143))))

(declare-fun tp!4855 () Bool)

(declare-fun b_and!1959 () Bool)

(assert (=> start!4276 (= tp!4855 b_and!1959)))

(declare-fun res!19904 () Bool)

(declare-fun e!20841 () Bool)

(assert (=> start!4276 (=> (not res!19904) (not e!20841))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4276 (= res!19904 (validMask!0 mask!2294))))

(assert (=> start!4276 e!20841))

(assert (=> start!4276 true))

(assert (=> start!4276 tp!4855))

(declare-datatypes ((V!1821 0))(
  ( (V!1822 (val!775 Int)) )
))
(declare-datatypes ((ValueCell!549 0))(
  ( (ValueCellFull!549 (v!1866 V!1821)) (EmptyCell!549) )
))
(declare-datatypes ((array!2203 0))(
  ( (array!2204 (arr!1053 (Array (_ BitVec 32) ValueCell!549)) (size!1154 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2203)

(declare-fun e!20839 () Bool)

(declare-fun array_inv!701 (array!2203) Bool)

(assert (=> start!4276 (and (array_inv!701 _values!1501) e!20839)))

(declare-datatypes ((array!2205 0))(
  ( (array!2206 (arr!1054 (Array (_ BitVec 32) (_ BitVec 64))) (size!1155 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2205)

(declare-fun array_inv!702 (array!2205) Bool)

(assert (=> start!4276 (array_inv!702 _keys!1833)))

(declare-fun tp_is_empty!1497 () Bool)

(assert (=> start!4276 tp_is_empty!1497))

(declare-fun b!32797 () Bool)

(declare-fun res!19903 () Bool)

(declare-fun e!20837 () Bool)

(assert (=> b!32797 (=> (not res!19903) (not e!20837))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32797 (= res!19903 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32798 () Bool)

(declare-fun e!20840 () Bool)

(assert (=> b!32798 (= e!20840 tp_is_empty!1497)))

(declare-fun b!32799 () Bool)

(declare-fun res!19907 () Bool)

(assert (=> b!32799 (=> (not res!19907) (not e!20841))))

(declare-datatypes ((List!856 0))(
  ( (Nil!853) (Cons!852 (h!1419 (_ BitVec 64)) (t!3555 List!856)) )
))
(declare-fun arrayNoDuplicates!0 (array!2205 (_ BitVec 32) List!856) Bool)

(assert (=> b!32799 (= res!19907 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!853))))

(declare-fun mapNonEmpty!1780 () Bool)

(declare-fun mapRes!1780 () Bool)

(declare-fun tp!4854 () Bool)

(declare-fun e!20842 () Bool)

(assert (=> mapNonEmpty!1780 (= mapRes!1780 (and tp!4854 e!20842))))

(declare-fun mapValue!1780 () ValueCell!549)

(declare-fun mapRest!1780 () (Array (_ BitVec 32) ValueCell!549))

(declare-fun mapKey!1780 () (_ BitVec 32))

(assert (=> mapNonEmpty!1780 (= (arr!1053 _values!1501) (store mapRest!1780 mapKey!1780 mapValue!1780))))

(declare-fun b!32800 () Bool)

(assert (=> b!32800 (= e!20839 (and e!20840 mapRes!1780))))

(declare-fun condMapEmpty!1780 () Bool)

(declare-fun mapDefault!1780 () ValueCell!549)

(assert (=> b!32800 (= condMapEmpty!1780 (= (arr!1053 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!549)) mapDefault!1780)))))

(declare-fun b!32801 () Bool)

(assert (=> b!32801 (= e!20837 (not (= (size!1155 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((tuple2!1254 0))(
  ( (tuple2!1255 (_1!637 (_ BitVec 64)) (_2!637 V!1821)) )
))
(declare-datatypes ((List!857 0))(
  ( (Nil!854) (Cons!853 (h!1420 tuple2!1254) (t!3556 List!857)) )
))
(declare-datatypes ((ListLongMap!835 0))(
  ( (ListLongMap!836 (toList!433 List!857)) )
))
(declare-fun lt!11895 () ListLongMap!835)

(declare-fun lt!11893 () (_ BitVec 32))

(declare-fun contains!372 (ListLongMap!835 (_ BitVec 64)) Bool)

(assert (=> b!32801 (contains!372 lt!11895 (select (arr!1054 _keys!1833) lt!11893))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!719 0))(
  ( (Unit!720) )
))
(declare-fun lt!11894 () Unit!719)

(declare-fun zeroValue!1443 () V!1821)

(declare-fun minValue!1443 () V!1821)

(declare-fun lemmaValidKeyInArrayIsInListMap!47 (array!2205 array!2203 (_ BitVec 32) (_ BitVec 32) V!1821 V!1821 (_ BitVec 32) Int) Unit!719)

(assert (=> b!32801 (= lt!11894 (lemmaValidKeyInArrayIsInListMap!47 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11893 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2205 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32801 (= lt!11893 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1780 () Bool)

(assert (=> mapIsEmpty!1780 mapRes!1780))

(declare-fun b!32802 () Bool)

(declare-fun res!19906 () Bool)

(assert (=> b!32802 (=> (not res!19906) (not e!20841))))

(assert (=> b!32802 (= res!19906 (and (= (size!1154 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1155 _keys!1833) (size!1154 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32803 () Bool)

(assert (=> b!32803 (= e!20842 tp_is_empty!1497)))

(declare-fun b!32804 () Bool)

(assert (=> b!32804 (= e!20841 e!20837)))

(declare-fun res!19905 () Bool)

(assert (=> b!32804 (=> (not res!19905) (not e!20837))))

(assert (=> b!32804 (= res!19905 (not (contains!372 lt!11895 k0!1304)))))

(declare-fun getCurrentListMap!258 (array!2205 array!2203 (_ BitVec 32) (_ BitVec 32) V!1821 V!1821 (_ BitVec 32) Int) ListLongMap!835)

(assert (=> b!32804 (= lt!11895 (getCurrentListMap!258 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32805 () Bool)

(declare-fun res!19908 () Bool)

(assert (=> b!32805 (=> (not res!19908) (not e!20841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2205 (_ BitVec 32)) Bool)

(assert (=> b!32805 (= res!19908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32806 () Bool)

(declare-fun res!19909 () Bool)

(assert (=> b!32806 (=> (not res!19909) (not e!20841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32806 (= res!19909 (validKeyInArray!0 k0!1304))))

(assert (= (and start!4276 res!19904) b!32802))

(assert (= (and b!32802 res!19906) b!32805))

(assert (= (and b!32805 res!19908) b!32799))

(assert (= (and b!32799 res!19907) b!32806))

(assert (= (and b!32806 res!19909) b!32804))

(assert (= (and b!32804 res!19905) b!32797))

(assert (= (and b!32797 res!19903) b!32801))

(assert (= (and b!32800 condMapEmpty!1780) mapIsEmpty!1780))

(assert (= (and b!32800 (not condMapEmpty!1780)) mapNonEmpty!1780))

(get-info :version)

(assert (= (and mapNonEmpty!1780 ((_ is ValueCellFull!549) mapValue!1780)) b!32803))

(assert (= (and b!32800 ((_ is ValueCellFull!549) mapDefault!1780)) b!32798))

(assert (= start!4276 b!32800))

(declare-fun m!26249 () Bool)

(assert (=> b!32801 m!26249))

(assert (=> b!32801 m!26249))

(declare-fun m!26251 () Bool)

(assert (=> b!32801 m!26251))

(declare-fun m!26253 () Bool)

(assert (=> b!32801 m!26253))

(declare-fun m!26255 () Bool)

(assert (=> b!32801 m!26255))

(declare-fun m!26257 () Bool)

(assert (=> b!32805 m!26257))

(declare-fun m!26259 () Bool)

(assert (=> b!32806 m!26259))

(declare-fun m!26261 () Bool)

(assert (=> mapNonEmpty!1780 m!26261))

(declare-fun m!26263 () Bool)

(assert (=> start!4276 m!26263))

(declare-fun m!26265 () Bool)

(assert (=> start!4276 m!26265))

(declare-fun m!26267 () Bool)

(assert (=> start!4276 m!26267))

(declare-fun m!26269 () Bool)

(assert (=> b!32804 m!26269))

(declare-fun m!26271 () Bool)

(assert (=> b!32804 m!26271))

(declare-fun m!26273 () Bool)

(assert (=> b!32797 m!26273))

(declare-fun m!26275 () Bool)

(assert (=> b!32799 m!26275))

(check-sat (not b!32806) (not b!32805) (not start!4276) b_and!1959 (not b!32797) (not b!32801) tp_is_empty!1497 (not b!32799) (not mapNonEmpty!1780) (not b_next!1143) (not b!32804))
(check-sat b_and!1959 (not b_next!1143))

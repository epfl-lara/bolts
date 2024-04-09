; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113332 () Bool)

(assert start!113332)

(declare-fun b_free!31347 () Bool)

(declare-fun b_next!31347 () Bool)

(assert (=> start!113332 (= b_free!31347 (not b_next!31347))))

(declare-fun tp!109846 () Bool)

(declare-fun b_and!50579 () Bool)

(assert (=> start!113332 (= tp!109846 b_and!50579)))

(declare-fun res!891903 () Bool)

(declare-fun e!765055 () Bool)

(assert (=> start!113332 (=> (not res!891903) (not e!765055))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113332 (= res!891903 (validMask!0 mask!1977))))

(assert (=> start!113332 e!765055))

(declare-fun tp_is_empty!37347 () Bool)

(assert (=> start!113332 tp_is_empty!37347))

(assert (=> start!113332 true))

(declare-datatypes ((array!91491 0))(
  ( (array!91492 (arr!44197 (Array (_ BitVec 32) (_ BitVec 64))) (size!44748 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91491)

(declare-fun array_inv!33227 (array!91491) Bool)

(assert (=> start!113332 (array_inv!33227 _keys!1571)))

(declare-datatypes ((V!54899 0))(
  ( (V!54900 (val!18748 Int)) )
))
(declare-datatypes ((ValueCell!17775 0))(
  ( (ValueCellFull!17775 (v!21394 V!54899)) (EmptyCell!17775) )
))
(declare-datatypes ((array!91493 0))(
  ( (array!91494 (arr!44198 (Array (_ BitVec 32) ValueCell!17775)) (size!44749 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91493)

(declare-fun e!765053 () Bool)

(declare-fun array_inv!33228 (array!91493) Bool)

(assert (=> start!113332 (and (array_inv!33228 _values!1303) e!765053)))

(assert (=> start!113332 tp!109846))

(declare-fun b!1344154 () Bool)

(declare-fun e!765054 () Bool)

(declare-fun mapRes!57727 () Bool)

(assert (=> b!1344154 (= e!765053 (and e!765054 mapRes!57727))))

(declare-fun condMapEmpty!57727 () Bool)

(declare-fun mapDefault!57727 () ValueCell!17775)

(assert (=> b!1344154 (= condMapEmpty!57727 (= (arr!44198 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17775)) mapDefault!57727)))))

(declare-fun b!1344155 () Bool)

(declare-fun e!765056 () Bool)

(assert (=> b!1344155 (= e!765056 tp_is_empty!37347)))

(declare-fun b!1344156 () Bool)

(declare-fun res!891905 () Bool)

(assert (=> b!1344156 (=> (not res!891905) (not e!765055))))

(declare-datatypes ((List!31479 0))(
  ( (Nil!31476) (Cons!31475 (h!32684 (_ BitVec 64)) (t!46010 List!31479)) )
))
(declare-fun arrayNoDuplicates!0 (array!91491 (_ BitVec 32) List!31479) Bool)

(assert (=> b!1344156 (= res!891905 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31476))))

(declare-fun b!1344157 () Bool)

(declare-fun res!891901 () Bool)

(assert (=> b!1344157 (=> (not res!891901) (not e!765055))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344157 (= res!891901 (and (= (size!44749 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44748 _keys!1571) (size!44749 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344158 () Bool)

(declare-fun res!891904 () Bool)

(assert (=> b!1344158 (=> (not res!891904) (not e!765055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91491 (_ BitVec 32)) Bool)

(assert (=> b!1344158 (= res!891904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57727 () Bool)

(assert (=> mapIsEmpty!57727 mapRes!57727))

(declare-fun b!1344159 () Bool)

(assert (=> b!1344159 (= e!765054 tp_is_empty!37347)))

(declare-fun b!1344160 () Bool)

(declare-fun res!891902 () Bool)

(assert (=> b!1344160 (=> (not res!891902) (not e!765055))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344160 (= res!891902 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44748 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344161 () Bool)

(assert (=> b!1344161 (= e!765055 false)))

(declare-fun minValue!1245 () V!54899)

(declare-fun lt!595102 () Bool)

(declare-fun zeroValue!1245 () V!54899)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24306 0))(
  ( (tuple2!24307 (_1!12163 (_ BitVec 64)) (_2!12163 V!54899)) )
))
(declare-datatypes ((List!31480 0))(
  ( (Nil!31477) (Cons!31476 (h!32685 tuple2!24306) (t!46011 List!31480)) )
))
(declare-datatypes ((ListLongMap!21975 0))(
  ( (ListLongMap!21976 (toList!11003 List!31480)) )
))
(declare-fun contains!9115 (ListLongMap!21975 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5896 (array!91491 array!91493 (_ BitVec 32) (_ BitVec 32) V!54899 V!54899 (_ BitVec 32) Int) ListLongMap!21975)

(assert (=> b!1344161 (= lt!595102 (contains!9115 (getCurrentListMap!5896 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57727 () Bool)

(declare-fun tp!109847 () Bool)

(assert (=> mapNonEmpty!57727 (= mapRes!57727 (and tp!109847 e!765056))))

(declare-fun mapRest!57727 () (Array (_ BitVec 32) ValueCell!17775))

(declare-fun mapValue!57727 () ValueCell!17775)

(declare-fun mapKey!57727 () (_ BitVec 32))

(assert (=> mapNonEmpty!57727 (= (arr!44198 _values!1303) (store mapRest!57727 mapKey!57727 mapValue!57727))))

(assert (= (and start!113332 res!891903) b!1344157))

(assert (= (and b!1344157 res!891901) b!1344158))

(assert (= (and b!1344158 res!891904) b!1344156))

(assert (= (and b!1344156 res!891905) b!1344160))

(assert (= (and b!1344160 res!891902) b!1344161))

(assert (= (and b!1344154 condMapEmpty!57727) mapIsEmpty!57727))

(assert (= (and b!1344154 (not condMapEmpty!57727)) mapNonEmpty!57727))

(get-info :version)

(assert (= (and mapNonEmpty!57727 ((_ is ValueCellFull!17775) mapValue!57727)) b!1344155))

(assert (= (and b!1344154 ((_ is ValueCellFull!17775) mapDefault!57727)) b!1344159))

(assert (= start!113332 b!1344154))

(declare-fun m!1231859 () Bool)

(assert (=> b!1344158 m!1231859))

(declare-fun m!1231861 () Bool)

(assert (=> mapNonEmpty!57727 m!1231861))

(declare-fun m!1231863 () Bool)

(assert (=> b!1344161 m!1231863))

(assert (=> b!1344161 m!1231863))

(declare-fun m!1231865 () Bool)

(assert (=> b!1344161 m!1231865))

(declare-fun m!1231867 () Bool)

(assert (=> b!1344156 m!1231867))

(declare-fun m!1231869 () Bool)

(assert (=> start!113332 m!1231869))

(declare-fun m!1231871 () Bool)

(assert (=> start!113332 m!1231871))

(declare-fun m!1231873 () Bool)

(assert (=> start!113332 m!1231873))

(check-sat (not b!1344158) (not b!1344156) (not b!1344161) (not mapNonEmpty!57727) b_and!50579 tp_is_empty!37347 (not start!113332) (not b_next!31347))
(check-sat b_and!50579 (not b_next!31347))

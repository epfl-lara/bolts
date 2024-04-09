; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113434 () Bool)

(assert start!113434)

(declare-fun b_free!31449 () Bool)

(declare-fun b_next!31449 () Bool)

(assert (=> start!113434 (= b_free!31449 (not b_next!31449))))

(declare-fun tp!110152 () Bool)

(declare-fun b_and!50747 () Bool)

(assert (=> start!113434 (= tp!110152 b_and!50747)))

(declare-fun b!1346029 () Bool)

(declare-fun e!765900 () Bool)

(assert (=> b!1346029 (= e!765900 false)))

(declare-datatypes ((V!55035 0))(
  ( (V!55036 (val!18799 Int)) )
))
(declare-fun minValue!1245 () V!55035)

(declare-fun lt!595408 () Bool)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91693 0))(
  ( (array!91694 (arr!44298 (Array (_ BitVec 32) (_ BitVec 64))) (size!44849 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91693)

(declare-fun zeroValue!1245 () V!55035)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17826 0))(
  ( (ValueCellFull!17826 (v!21445 V!55035)) (EmptyCell!17826) )
))
(declare-datatypes ((array!91695 0))(
  ( (array!91696 (arr!44299 (Array (_ BitVec 32) ValueCell!17826)) (size!44850 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91695)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24372 0))(
  ( (tuple2!24373 (_1!12196 (_ BitVec 64)) (_2!12196 V!55035)) )
))
(declare-datatypes ((List!31544 0))(
  ( (Nil!31541) (Cons!31540 (h!32749 tuple2!24372) (t!46141 List!31544)) )
))
(declare-datatypes ((ListLongMap!22041 0))(
  ( (ListLongMap!22042 (toList!11036 List!31544)) )
))
(declare-fun contains!9148 (ListLongMap!22041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5927 (array!91693 array!91695 (_ BitVec 32) (_ BitVec 32) V!55035 V!55035 (_ BitVec 32) Int) ListLongMap!22041)

(assert (=> b!1346029 (= lt!595408 (contains!9148 (getCurrentListMap!5927 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346030 () Bool)

(declare-fun res!893252 () Bool)

(assert (=> b!1346030 (=> (not res!893252) (not e!765900))))

(assert (=> b!1346030 (= res!893252 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44849 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346031 () Bool)

(declare-fun res!893254 () Bool)

(assert (=> b!1346031 (=> (not res!893254) (not e!765900))))

(declare-datatypes ((List!31545 0))(
  ( (Nil!31542) (Cons!31541 (h!32750 (_ BitVec 64)) (t!46142 List!31545)) )
))
(declare-fun arrayNoDuplicates!0 (array!91693 (_ BitVec 32) List!31545) Bool)

(assert (=> b!1346031 (= res!893254 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31542))))

(declare-fun mapNonEmpty!57880 () Bool)

(declare-fun mapRes!57880 () Bool)

(declare-fun tp!110153 () Bool)

(declare-fun e!765898 () Bool)

(assert (=> mapNonEmpty!57880 (= mapRes!57880 (and tp!110153 e!765898))))

(declare-fun mapValue!57880 () ValueCell!17826)

(declare-fun mapKey!57880 () (_ BitVec 32))

(declare-fun mapRest!57880 () (Array (_ BitVec 32) ValueCell!17826))

(assert (=> mapNonEmpty!57880 (= (arr!44299 _values!1303) (store mapRest!57880 mapKey!57880 mapValue!57880))))

(declare-fun b!1346032 () Bool)

(declare-fun res!893251 () Bool)

(assert (=> b!1346032 (=> (not res!893251) (not e!765900))))

(assert (=> b!1346032 (= res!893251 (and (= (size!44850 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44849 _keys!1571) (size!44850 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346033 () Bool)

(declare-fun e!765899 () Bool)

(declare-fun tp_is_empty!37449 () Bool)

(assert (=> b!1346033 (= e!765899 tp_is_empty!37449)))

(declare-fun b!1346034 () Bool)

(declare-fun res!893255 () Bool)

(assert (=> b!1346034 (=> (not res!893255) (not e!765900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91693 (_ BitVec 32)) Bool)

(assert (=> b!1346034 (= res!893255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57880 () Bool)

(assert (=> mapIsEmpty!57880 mapRes!57880))

(declare-fun b!1346036 () Bool)

(assert (=> b!1346036 (= e!765898 tp_is_empty!37449)))

(declare-fun res!893253 () Bool)

(assert (=> start!113434 (=> (not res!893253) (not e!765900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113434 (= res!893253 (validMask!0 mask!1977))))

(assert (=> start!113434 e!765900))

(assert (=> start!113434 tp_is_empty!37449))

(assert (=> start!113434 true))

(declare-fun array_inv!33295 (array!91693) Bool)

(assert (=> start!113434 (array_inv!33295 _keys!1571)))

(declare-fun e!765902 () Bool)

(declare-fun array_inv!33296 (array!91695) Bool)

(assert (=> start!113434 (and (array_inv!33296 _values!1303) e!765902)))

(assert (=> start!113434 tp!110152))

(declare-fun b!1346035 () Bool)

(assert (=> b!1346035 (= e!765902 (and e!765899 mapRes!57880))))

(declare-fun condMapEmpty!57880 () Bool)

(declare-fun mapDefault!57880 () ValueCell!17826)

(assert (=> b!1346035 (= condMapEmpty!57880 (= (arr!44299 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17826)) mapDefault!57880)))))

(assert (= (and start!113434 res!893253) b!1346032))

(assert (= (and b!1346032 res!893251) b!1346034))

(assert (= (and b!1346034 res!893255) b!1346031))

(assert (= (and b!1346031 res!893254) b!1346030))

(assert (= (and b!1346030 res!893252) b!1346029))

(assert (= (and b!1346035 condMapEmpty!57880) mapIsEmpty!57880))

(assert (= (and b!1346035 (not condMapEmpty!57880)) mapNonEmpty!57880))

(get-info :version)

(assert (= (and mapNonEmpty!57880 ((_ is ValueCellFull!17826) mapValue!57880)) b!1346036))

(assert (= (and b!1346035 ((_ is ValueCellFull!17826) mapDefault!57880)) b!1346033))

(assert (= start!113434 b!1346035))

(declare-fun m!1233323 () Bool)

(assert (=> mapNonEmpty!57880 m!1233323))

(declare-fun m!1233325 () Bool)

(assert (=> start!113434 m!1233325))

(declare-fun m!1233327 () Bool)

(assert (=> start!113434 m!1233327))

(declare-fun m!1233329 () Bool)

(assert (=> start!113434 m!1233329))

(declare-fun m!1233331 () Bool)

(assert (=> b!1346031 m!1233331))

(declare-fun m!1233333 () Bool)

(assert (=> b!1346034 m!1233333))

(declare-fun m!1233335 () Bool)

(assert (=> b!1346029 m!1233335))

(assert (=> b!1346029 m!1233335))

(declare-fun m!1233337 () Bool)

(assert (=> b!1346029 m!1233337))

(check-sat (not b!1346034) (not b!1346031) b_and!50747 (not b_next!31449) tp_is_empty!37449 (not b!1346029) (not start!113434) (not mapNonEmpty!57880))
(check-sat b_and!50747 (not b_next!31449))

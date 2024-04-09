; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113320 () Bool)

(assert start!113320)

(declare-fun b_free!31335 () Bool)

(declare-fun b_next!31335 () Bool)

(assert (=> start!113320 (= b_free!31335 (not b_next!31335))))

(declare-fun tp!109810 () Bool)

(declare-fun b_and!50567 () Bool)

(assert (=> start!113320 (= tp!109810 b_and!50567)))

(declare-fun b!1344010 () Bool)

(declare-fun e!764964 () Bool)

(declare-fun tp_is_empty!37335 () Bool)

(assert (=> b!1344010 (= e!764964 tp_is_empty!37335)))

(declare-fun mapNonEmpty!57709 () Bool)

(declare-fun mapRes!57709 () Bool)

(declare-fun tp!109811 () Bool)

(declare-fun e!764962 () Bool)

(assert (=> mapNonEmpty!57709 (= mapRes!57709 (and tp!109811 e!764962))))

(declare-fun mapKey!57709 () (_ BitVec 32))

(declare-datatypes ((V!54883 0))(
  ( (V!54884 (val!18742 Int)) )
))
(declare-datatypes ((ValueCell!17769 0))(
  ( (ValueCellFull!17769 (v!21388 V!54883)) (EmptyCell!17769) )
))
(declare-fun mapValue!57709 () ValueCell!17769)

(declare-fun mapRest!57709 () (Array (_ BitVec 32) ValueCell!17769))

(declare-datatypes ((array!91469 0))(
  ( (array!91470 (arr!44186 (Array (_ BitVec 32) ValueCell!17769)) (size!44737 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91469)

(assert (=> mapNonEmpty!57709 (= (arr!44186 _values!1303) (store mapRest!57709 mapKey!57709 mapValue!57709))))

(declare-fun res!891812 () Bool)

(declare-fun e!764963 () Bool)

(assert (=> start!113320 (=> (not res!891812) (not e!764963))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113320 (= res!891812 (validMask!0 mask!1977))))

(assert (=> start!113320 e!764963))

(assert (=> start!113320 tp_is_empty!37335))

(assert (=> start!113320 true))

(declare-datatypes ((array!91471 0))(
  ( (array!91472 (arr!44187 (Array (_ BitVec 32) (_ BitVec 64))) (size!44738 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91471)

(declare-fun array_inv!33221 (array!91471) Bool)

(assert (=> start!113320 (array_inv!33221 _keys!1571)))

(declare-fun e!764966 () Bool)

(declare-fun array_inv!33222 (array!91469) Bool)

(assert (=> start!113320 (and (array_inv!33222 _values!1303) e!764966)))

(assert (=> start!113320 tp!109810))

(declare-fun b!1344011 () Bool)

(assert (=> b!1344011 (= e!764966 (and e!764964 mapRes!57709))))

(declare-fun condMapEmpty!57709 () Bool)

(declare-fun mapDefault!57709 () ValueCell!17769)

(assert (=> b!1344011 (= condMapEmpty!57709 (= (arr!44186 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17769)) mapDefault!57709)))))

(declare-fun b!1344012 () Bool)

(assert (=> b!1344012 (= e!764963 false)))

(declare-fun minValue!1245 () V!54883)

(declare-fun zeroValue!1245 () V!54883)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lt!595084 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24302 0))(
  ( (tuple2!24303 (_1!12161 (_ BitVec 64)) (_2!12161 V!54883)) )
))
(declare-datatypes ((List!31474 0))(
  ( (Nil!31471) (Cons!31470 (h!32679 tuple2!24302) (t!46005 List!31474)) )
))
(declare-datatypes ((ListLongMap!21971 0))(
  ( (ListLongMap!21972 (toList!11001 List!31474)) )
))
(declare-fun contains!9113 (ListLongMap!21971 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5894 (array!91471 array!91469 (_ BitVec 32) (_ BitVec 32) V!54883 V!54883 (_ BitVec 32) Int) ListLongMap!21971)

(assert (=> b!1344012 (= lt!595084 (contains!9113 (getCurrentListMap!5894 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1344013 () Bool)

(assert (=> b!1344013 (= e!764962 tp_is_empty!37335)))

(declare-fun b!1344014 () Bool)

(declare-fun res!891811 () Bool)

(assert (=> b!1344014 (=> (not res!891811) (not e!764963))))

(assert (=> b!1344014 (= res!891811 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44738 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344015 () Bool)

(declare-fun res!891814 () Bool)

(assert (=> b!1344015 (=> (not res!891814) (not e!764963))))

(assert (=> b!1344015 (= res!891814 (and (= (size!44737 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44738 _keys!1571) (size!44737 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344016 () Bool)

(declare-fun res!891813 () Bool)

(assert (=> b!1344016 (=> (not res!891813) (not e!764963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91471 (_ BitVec 32)) Bool)

(assert (=> b!1344016 (= res!891813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57709 () Bool)

(assert (=> mapIsEmpty!57709 mapRes!57709))

(declare-fun b!1344017 () Bool)

(declare-fun res!891815 () Bool)

(assert (=> b!1344017 (=> (not res!891815) (not e!764963))))

(declare-datatypes ((List!31475 0))(
  ( (Nil!31472) (Cons!31471 (h!32680 (_ BitVec 64)) (t!46006 List!31475)) )
))
(declare-fun arrayNoDuplicates!0 (array!91471 (_ BitVec 32) List!31475) Bool)

(assert (=> b!1344017 (= res!891815 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31472))))

(assert (= (and start!113320 res!891812) b!1344015))

(assert (= (and b!1344015 res!891814) b!1344016))

(assert (= (and b!1344016 res!891813) b!1344017))

(assert (= (and b!1344017 res!891815) b!1344014))

(assert (= (and b!1344014 res!891811) b!1344012))

(assert (= (and b!1344011 condMapEmpty!57709) mapIsEmpty!57709))

(assert (= (and b!1344011 (not condMapEmpty!57709)) mapNonEmpty!57709))

(get-info :version)

(assert (= (and mapNonEmpty!57709 ((_ is ValueCellFull!17769) mapValue!57709)) b!1344013))

(assert (= (and b!1344011 ((_ is ValueCellFull!17769) mapDefault!57709)) b!1344010))

(assert (= start!113320 b!1344011))

(declare-fun m!1231763 () Bool)

(assert (=> b!1344017 m!1231763))

(declare-fun m!1231765 () Bool)

(assert (=> mapNonEmpty!57709 m!1231765))

(declare-fun m!1231767 () Bool)

(assert (=> b!1344012 m!1231767))

(assert (=> b!1344012 m!1231767))

(declare-fun m!1231769 () Bool)

(assert (=> b!1344012 m!1231769))

(declare-fun m!1231771 () Bool)

(assert (=> b!1344016 m!1231771))

(declare-fun m!1231773 () Bool)

(assert (=> start!113320 m!1231773))

(declare-fun m!1231775 () Bool)

(assert (=> start!113320 m!1231775))

(declare-fun m!1231777 () Bool)

(assert (=> start!113320 m!1231777))

(check-sat (not b!1344016) (not b_next!31335) b_and!50567 (not b!1344017) (not b!1344012) tp_is_empty!37335 (not start!113320) (not mapNonEmpty!57709))
(check-sat b_and!50567 (not b_next!31335))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113308 () Bool)

(assert start!113308)

(declare-fun b_free!31323 () Bool)

(declare-fun b_next!31323 () Bool)

(assert (=> start!113308 (= b_free!31323 (not b_next!31323))))

(declare-fun tp!109774 () Bool)

(declare-fun b_and!50555 () Bool)

(assert (=> start!113308 (= tp!109774 b_and!50555)))

(declare-fun b!1343866 () Bool)

(declare-fun res!891723 () Bool)

(declare-fun e!764876 () Bool)

(assert (=> b!1343866 (=> (not res!891723) (not e!764876))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91445 0))(
  ( (array!91446 (arr!44174 (Array (_ BitVec 32) (_ BitVec 64))) (size!44725 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91445)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343866 (= res!891723 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44725 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343867 () Bool)

(declare-fun e!764874 () Bool)

(declare-fun tp_is_empty!37323 () Bool)

(assert (=> b!1343867 (= e!764874 tp_is_empty!37323)))

(declare-fun res!891721 () Bool)

(assert (=> start!113308 (=> (not res!891721) (not e!764876))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113308 (= res!891721 (validMask!0 mask!1977))))

(assert (=> start!113308 e!764876))

(assert (=> start!113308 tp_is_empty!37323))

(assert (=> start!113308 true))

(declare-fun array_inv!33211 (array!91445) Bool)

(assert (=> start!113308 (array_inv!33211 _keys!1571)))

(declare-datatypes ((V!54867 0))(
  ( (V!54868 (val!18736 Int)) )
))
(declare-datatypes ((ValueCell!17763 0))(
  ( (ValueCellFull!17763 (v!21382 V!54867)) (EmptyCell!17763) )
))
(declare-datatypes ((array!91447 0))(
  ( (array!91448 (arr!44175 (Array (_ BitVec 32) ValueCell!17763)) (size!44726 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91447)

(declare-fun e!764873 () Bool)

(declare-fun array_inv!33212 (array!91447) Bool)

(assert (=> start!113308 (and (array_inv!33212 _values!1303) e!764873)))

(assert (=> start!113308 tp!109774))

(declare-fun b!1343868 () Bool)

(declare-fun res!891725 () Bool)

(assert (=> b!1343868 (=> (not res!891725) (not e!764876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91445 (_ BitVec 32)) Bool)

(assert (=> b!1343868 (= res!891725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57691 () Bool)

(declare-fun mapRes!57691 () Bool)

(assert (=> mapIsEmpty!57691 mapRes!57691))

(declare-fun b!1343869 () Bool)

(declare-fun e!764875 () Bool)

(assert (=> b!1343869 (= e!764873 (and e!764875 mapRes!57691))))

(declare-fun condMapEmpty!57691 () Bool)

(declare-fun mapDefault!57691 () ValueCell!17763)

(assert (=> b!1343869 (= condMapEmpty!57691 (= (arr!44175 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17763)) mapDefault!57691)))))

(declare-fun b!1343870 () Bool)

(assert (=> b!1343870 (= e!764876 false)))

(declare-fun minValue!1245 () V!54867)

(declare-fun zeroValue!1245 () V!54867)

(declare-fun defaultEntry!1306 () Int)

(declare-fun lt!595066 () Bool)

(declare-datatypes ((tuple2!24292 0))(
  ( (tuple2!24293 (_1!12156 (_ BitVec 64)) (_2!12156 V!54867)) )
))
(declare-datatypes ((List!31466 0))(
  ( (Nil!31463) (Cons!31462 (h!32671 tuple2!24292) (t!45997 List!31466)) )
))
(declare-datatypes ((ListLongMap!21961 0))(
  ( (ListLongMap!21962 (toList!10996 List!31466)) )
))
(declare-fun contains!9108 (ListLongMap!21961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5889 (array!91445 array!91447 (_ BitVec 32) (_ BitVec 32) V!54867 V!54867 (_ BitVec 32) Int) ListLongMap!21961)

(assert (=> b!1343870 (= lt!595066 (contains!9108 (getCurrentListMap!5889 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343871 () Bool)

(declare-fun res!891722 () Bool)

(assert (=> b!1343871 (=> (not res!891722) (not e!764876))))

(declare-datatypes ((List!31467 0))(
  ( (Nil!31464) (Cons!31463 (h!32672 (_ BitVec 64)) (t!45998 List!31467)) )
))
(declare-fun arrayNoDuplicates!0 (array!91445 (_ BitVec 32) List!31467) Bool)

(assert (=> b!1343871 (= res!891722 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31464))))

(declare-fun b!1343872 () Bool)

(assert (=> b!1343872 (= e!764875 tp_is_empty!37323)))

(declare-fun b!1343873 () Bool)

(declare-fun res!891724 () Bool)

(assert (=> b!1343873 (=> (not res!891724) (not e!764876))))

(assert (=> b!1343873 (= res!891724 (and (= (size!44726 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44725 _keys!1571) (size!44726 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57691 () Bool)

(declare-fun tp!109775 () Bool)

(assert (=> mapNonEmpty!57691 (= mapRes!57691 (and tp!109775 e!764874))))

(declare-fun mapKey!57691 () (_ BitVec 32))

(declare-fun mapValue!57691 () ValueCell!17763)

(declare-fun mapRest!57691 () (Array (_ BitVec 32) ValueCell!17763))

(assert (=> mapNonEmpty!57691 (= (arr!44175 _values!1303) (store mapRest!57691 mapKey!57691 mapValue!57691))))

(assert (= (and start!113308 res!891721) b!1343873))

(assert (= (and b!1343873 res!891724) b!1343868))

(assert (= (and b!1343868 res!891725) b!1343871))

(assert (= (and b!1343871 res!891722) b!1343866))

(assert (= (and b!1343866 res!891723) b!1343870))

(assert (= (and b!1343869 condMapEmpty!57691) mapIsEmpty!57691))

(assert (= (and b!1343869 (not condMapEmpty!57691)) mapNonEmpty!57691))

(get-info :version)

(assert (= (and mapNonEmpty!57691 ((_ is ValueCellFull!17763) mapValue!57691)) b!1343867))

(assert (= (and b!1343869 ((_ is ValueCellFull!17763) mapDefault!57691)) b!1343872))

(assert (= start!113308 b!1343869))

(declare-fun m!1231667 () Bool)

(assert (=> mapNonEmpty!57691 m!1231667))

(declare-fun m!1231669 () Bool)

(assert (=> b!1343870 m!1231669))

(assert (=> b!1343870 m!1231669))

(declare-fun m!1231671 () Bool)

(assert (=> b!1343870 m!1231671))

(declare-fun m!1231673 () Bool)

(assert (=> b!1343868 m!1231673))

(declare-fun m!1231675 () Bool)

(assert (=> start!113308 m!1231675))

(declare-fun m!1231677 () Bool)

(assert (=> start!113308 m!1231677))

(declare-fun m!1231679 () Bool)

(assert (=> start!113308 m!1231679))

(declare-fun m!1231681 () Bool)

(assert (=> b!1343871 m!1231681))

(check-sat (not b_next!31323) (not b!1343868) b_and!50555 (not b!1343871) (not b!1343870) (not start!113308) (not mapNonEmpty!57691) tp_is_empty!37323)
(check-sat b_and!50555 (not b_next!31323))

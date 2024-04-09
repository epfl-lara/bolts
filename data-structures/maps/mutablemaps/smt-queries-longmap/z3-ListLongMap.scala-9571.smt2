; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113326 () Bool)

(assert start!113326)

(declare-fun b_free!31341 () Bool)

(declare-fun b_next!31341 () Bool)

(assert (=> start!113326 (= b_free!31341 (not b_next!31341))))

(declare-fun tp!109828 () Bool)

(declare-fun b_and!50573 () Bool)

(assert (=> start!113326 (= tp!109828 b_and!50573)))

(declare-fun mapIsEmpty!57718 () Bool)

(declare-fun mapRes!57718 () Bool)

(assert (=> mapIsEmpty!57718 mapRes!57718))

(declare-fun b!1344082 () Bool)

(declare-fun res!891860 () Bool)

(declare-fun e!765010 () Bool)

(assert (=> b!1344082 (=> (not res!891860) (not e!765010))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91481 0))(
  ( (array!91482 (arr!44192 (Array (_ BitVec 32) (_ BitVec 64))) (size!44743 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91481)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344082 (= res!891860 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44743 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344083 () Bool)

(assert (=> b!1344083 (= e!765010 false)))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!54891 0))(
  ( (V!54892 (val!18745 Int)) )
))
(declare-fun zeroValue!1245 () V!54891)

(declare-datatypes ((ValueCell!17772 0))(
  ( (ValueCellFull!17772 (v!21391 V!54891)) (EmptyCell!17772) )
))
(declare-datatypes ((array!91483 0))(
  ( (array!91484 (arr!44193 (Array (_ BitVec 32) ValueCell!17772)) (size!44744 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91483)

(declare-fun minValue!1245 () V!54891)

(declare-fun lt!595093 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24304 0))(
  ( (tuple2!24305 (_1!12162 (_ BitVec 64)) (_2!12162 V!54891)) )
))
(declare-datatypes ((List!31477 0))(
  ( (Nil!31474) (Cons!31473 (h!32682 tuple2!24304) (t!46008 List!31477)) )
))
(declare-datatypes ((ListLongMap!21973 0))(
  ( (ListLongMap!21974 (toList!11002 List!31477)) )
))
(declare-fun contains!9114 (ListLongMap!21973 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5895 (array!91481 array!91483 (_ BitVec 32) (_ BitVec 32) V!54891 V!54891 (_ BitVec 32) Int) ListLongMap!21973)

(assert (=> b!1344083 (= lt!595093 (contains!9114 (getCurrentListMap!5895 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1344084 () Bool)

(declare-fun res!891859 () Bool)

(assert (=> b!1344084 (=> (not res!891859) (not e!765010))))

(declare-datatypes ((List!31478 0))(
  ( (Nil!31475) (Cons!31474 (h!32683 (_ BitVec 64)) (t!46009 List!31478)) )
))
(declare-fun arrayNoDuplicates!0 (array!91481 (_ BitVec 32) List!31478) Bool)

(assert (=> b!1344084 (= res!891859 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31475))))

(declare-fun res!891858 () Bool)

(assert (=> start!113326 (=> (not res!891858) (not e!765010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113326 (= res!891858 (validMask!0 mask!1977))))

(assert (=> start!113326 e!765010))

(declare-fun tp_is_empty!37341 () Bool)

(assert (=> start!113326 tp_is_empty!37341))

(assert (=> start!113326 true))

(declare-fun array_inv!33223 (array!91481) Bool)

(assert (=> start!113326 (array_inv!33223 _keys!1571)))

(declare-fun e!765009 () Bool)

(declare-fun array_inv!33224 (array!91483) Bool)

(assert (=> start!113326 (and (array_inv!33224 _values!1303) e!765009)))

(assert (=> start!113326 tp!109828))

(declare-fun b!1344085 () Bool)

(declare-fun e!765008 () Bool)

(assert (=> b!1344085 (= e!765009 (and e!765008 mapRes!57718))))

(declare-fun condMapEmpty!57718 () Bool)

(declare-fun mapDefault!57718 () ValueCell!17772)

(assert (=> b!1344085 (= condMapEmpty!57718 (= (arr!44193 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17772)) mapDefault!57718)))))

(declare-fun b!1344086 () Bool)

(assert (=> b!1344086 (= e!765008 tp_is_empty!37341)))

(declare-fun b!1344087 () Bool)

(declare-fun res!891856 () Bool)

(assert (=> b!1344087 (=> (not res!891856) (not e!765010))))

(assert (=> b!1344087 (= res!891856 (and (= (size!44744 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44743 _keys!1571) (size!44744 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344088 () Bool)

(declare-fun e!765011 () Bool)

(assert (=> b!1344088 (= e!765011 tp_is_empty!37341)))

(declare-fun mapNonEmpty!57718 () Bool)

(declare-fun tp!109829 () Bool)

(assert (=> mapNonEmpty!57718 (= mapRes!57718 (and tp!109829 e!765011))))

(declare-fun mapValue!57718 () ValueCell!17772)

(declare-fun mapKey!57718 () (_ BitVec 32))

(declare-fun mapRest!57718 () (Array (_ BitVec 32) ValueCell!17772))

(assert (=> mapNonEmpty!57718 (= (arr!44193 _values!1303) (store mapRest!57718 mapKey!57718 mapValue!57718))))

(declare-fun b!1344089 () Bool)

(declare-fun res!891857 () Bool)

(assert (=> b!1344089 (=> (not res!891857) (not e!765010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91481 (_ BitVec 32)) Bool)

(assert (=> b!1344089 (= res!891857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!113326 res!891858) b!1344087))

(assert (= (and b!1344087 res!891856) b!1344089))

(assert (= (and b!1344089 res!891857) b!1344084))

(assert (= (and b!1344084 res!891859) b!1344082))

(assert (= (and b!1344082 res!891860) b!1344083))

(assert (= (and b!1344085 condMapEmpty!57718) mapIsEmpty!57718))

(assert (= (and b!1344085 (not condMapEmpty!57718)) mapNonEmpty!57718))

(get-info :version)

(assert (= (and mapNonEmpty!57718 ((_ is ValueCellFull!17772) mapValue!57718)) b!1344088))

(assert (= (and b!1344085 ((_ is ValueCellFull!17772) mapDefault!57718)) b!1344086))

(assert (= start!113326 b!1344085))

(declare-fun m!1231811 () Bool)

(assert (=> mapNonEmpty!57718 m!1231811))

(declare-fun m!1231813 () Bool)

(assert (=> start!113326 m!1231813))

(declare-fun m!1231815 () Bool)

(assert (=> start!113326 m!1231815))

(declare-fun m!1231817 () Bool)

(assert (=> start!113326 m!1231817))

(declare-fun m!1231819 () Bool)

(assert (=> b!1344083 m!1231819))

(assert (=> b!1344083 m!1231819))

(declare-fun m!1231821 () Bool)

(assert (=> b!1344083 m!1231821))

(declare-fun m!1231823 () Bool)

(assert (=> b!1344089 m!1231823))

(declare-fun m!1231825 () Bool)

(assert (=> b!1344084 m!1231825))

(check-sat (not mapNonEmpty!57718) (not b!1344084) tp_is_empty!37341 (not b_next!31341) (not start!113326) b_and!50573 (not b!1344083) (not b!1344089))
(check-sat b_and!50573 (not b_next!31341))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113098 () Bool)

(assert start!113098)

(declare-fun b_free!31113 () Bool)

(declare-fun b_next!31113 () Bool)

(assert (=> start!113098 (= b_free!31113 (not b_next!31113))))

(declare-fun tp!109144 () Bool)

(declare-fun b_and!50153 () Bool)

(assert (=> start!113098 (= tp!109144 b_and!50153)))

(declare-fun b!1339975 () Bool)

(declare-fun res!888968 () Bool)

(declare-fun e!763301 () Bool)

(assert (=> b!1339975 (=> (not res!888968) (not e!763301))))

(declare-datatypes ((array!91043 0))(
  ( (array!91044 (arr!43973 (Array (_ BitVec 32) (_ BitVec 64))) (size!44524 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91043)

(declare-datatypes ((List!31316 0))(
  ( (Nil!31313) (Cons!31312 (h!32521 (_ BitVec 64)) (t!45655 List!31316)) )
))
(declare-fun arrayNoDuplicates!0 (array!91043 (_ BitVec 32) List!31316) Bool)

(assert (=> b!1339975 (= res!888968 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31313))))

(declare-fun mapNonEmpty!57376 () Bool)

(declare-fun mapRes!57376 () Bool)

(declare-fun tp!109145 () Bool)

(declare-fun e!763297 () Bool)

(assert (=> mapNonEmpty!57376 (= mapRes!57376 (and tp!109145 e!763297))))

(declare-datatypes ((V!54587 0))(
  ( (V!54588 (val!18631 Int)) )
))
(declare-datatypes ((ValueCell!17658 0))(
  ( (ValueCellFull!17658 (v!21277 V!54587)) (EmptyCell!17658) )
))
(declare-fun mapValue!57376 () ValueCell!17658)

(declare-fun mapKey!57376 () (_ BitVec 32))

(declare-datatypes ((array!91045 0))(
  ( (array!91046 (arr!43974 (Array (_ BitVec 32) ValueCell!17658)) (size!44525 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91045)

(declare-fun mapRest!57376 () (Array (_ BitVec 32) ValueCell!17658))

(assert (=> mapNonEmpty!57376 (= (arr!43974 _values!1303) (store mapRest!57376 mapKey!57376 mapValue!57376))))

(declare-fun b!1339976 () Bool)

(declare-fun res!888970 () Bool)

(assert (=> b!1339976 (=> (not res!888970) (not e!763301))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339976 (= res!888970 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44524 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339977 () Bool)

(declare-fun res!888971 () Bool)

(assert (=> b!1339977 (=> (not res!888971) (not e!763301))))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1339977 (= res!888971 (and (= (size!44525 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44524 _keys!1571) (size!44525 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339978 () Bool)

(declare-fun e!763298 () Bool)

(declare-fun e!763299 () Bool)

(assert (=> b!1339978 (= e!763298 (and e!763299 mapRes!57376))))

(declare-fun condMapEmpty!57376 () Bool)

(declare-fun mapDefault!57376 () ValueCell!17658)

(assert (=> b!1339978 (= condMapEmpty!57376 (= (arr!43974 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17658)) mapDefault!57376)))))

(declare-fun b!1339979 () Bool)

(declare-fun res!888967 () Bool)

(assert (=> b!1339979 (=> (not res!888967) (not e!763301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91043 (_ BitVec 32)) Bool)

(assert (=> b!1339979 (= res!888967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339980 () Bool)

(assert (=> b!1339980 (= e!763301 false)))

(declare-fun minValue!1245 () V!54587)

(declare-fun lt!593896 () Bool)

(declare-fun zeroValue!1245 () V!54587)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24130 0))(
  ( (tuple2!24131 (_1!12075 (_ BitVec 64)) (_2!12075 V!54587)) )
))
(declare-datatypes ((List!31317 0))(
  ( (Nil!31314) (Cons!31313 (h!32522 tuple2!24130) (t!45656 List!31317)) )
))
(declare-datatypes ((ListLongMap!21799 0))(
  ( (ListLongMap!21800 (toList!10915 List!31317)) )
))
(declare-fun contains!9027 (ListLongMap!21799 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5819 (array!91043 array!91045 (_ BitVec 32) (_ BitVec 32) V!54587 V!54587 (_ BitVec 32) Int) ListLongMap!21799)

(assert (=> b!1339980 (= lt!593896 (contains!9027 (getCurrentListMap!5819 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1339981 () Bool)

(declare-fun tp_is_empty!37113 () Bool)

(assert (=> b!1339981 (= e!763299 tp_is_empty!37113)))

(declare-fun res!888969 () Bool)

(assert (=> start!113098 (=> (not res!888969) (not e!763301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113098 (= res!888969 (validMask!0 mask!1977))))

(assert (=> start!113098 e!763301))

(assert (=> start!113098 tp_is_empty!37113))

(assert (=> start!113098 true))

(declare-fun array_inv!33079 (array!91043) Bool)

(assert (=> start!113098 (array_inv!33079 _keys!1571)))

(declare-fun array_inv!33080 (array!91045) Bool)

(assert (=> start!113098 (and (array_inv!33080 _values!1303) e!763298)))

(assert (=> start!113098 tp!109144))

(declare-fun mapIsEmpty!57376 () Bool)

(assert (=> mapIsEmpty!57376 mapRes!57376))

(declare-fun b!1339982 () Bool)

(assert (=> b!1339982 (= e!763297 tp_is_empty!37113)))

(assert (= (and start!113098 res!888969) b!1339977))

(assert (= (and b!1339977 res!888971) b!1339979))

(assert (= (and b!1339979 res!888967) b!1339975))

(assert (= (and b!1339975 res!888968) b!1339976))

(assert (= (and b!1339976 res!888970) b!1339980))

(assert (= (and b!1339978 condMapEmpty!57376) mapIsEmpty!57376))

(assert (= (and b!1339978 (not condMapEmpty!57376)) mapNonEmpty!57376))

(get-info :version)

(assert (= (and mapNonEmpty!57376 ((_ is ValueCellFull!17658) mapValue!57376)) b!1339982))

(assert (= (and b!1339978 ((_ is ValueCellFull!17658) mapDefault!57376)) b!1339981))

(assert (= start!113098 b!1339978))

(declare-fun m!1227857 () Bool)

(assert (=> b!1339975 m!1227857))

(declare-fun m!1227859 () Bool)

(assert (=> b!1339980 m!1227859))

(assert (=> b!1339980 m!1227859))

(declare-fun m!1227861 () Bool)

(assert (=> b!1339980 m!1227861))

(declare-fun m!1227863 () Bool)

(assert (=> b!1339979 m!1227863))

(declare-fun m!1227865 () Bool)

(assert (=> start!113098 m!1227865))

(declare-fun m!1227867 () Bool)

(assert (=> start!113098 m!1227867))

(declare-fun m!1227869 () Bool)

(assert (=> start!113098 m!1227869))

(declare-fun m!1227871 () Bool)

(assert (=> mapNonEmpty!57376 m!1227871))

(check-sat (not b!1339979) b_and!50153 (not start!113098) tp_is_empty!37113 (not b!1339980) (not b_next!31113) (not mapNonEmpty!57376) (not b!1339975))
(check-sat b_and!50153 (not b_next!31113))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111388 () Bool)

(assert start!111388)

(declare-fun b_free!30009 () Bool)

(declare-fun b_next!30009 () Bool)

(assert (=> start!111388 (= b_free!30009 (not b_next!30009))))

(declare-fun tp!105504 () Bool)

(declare-fun b_and!48239 () Bool)

(assert (=> start!111388 (= tp!105504 b_and!48239)))

(declare-fun b!1317527 () Bool)

(declare-fun e!751882 () Bool)

(declare-fun tp_is_empty!35829 () Bool)

(assert (=> b!1317527 (= e!751882 tp_is_empty!35829)))

(declare-fun res!874506 () Bool)

(declare-fun e!751879 () Bool)

(assert (=> start!111388 (=> (not res!874506) (not e!751879))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111388 (= res!874506 (validMask!0 mask!2019))))

(assert (=> start!111388 e!751879))

(declare-datatypes ((array!88565 0))(
  ( (array!88566 (arr!42752 (Array (_ BitVec 32) (_ BitVec 64))) (size!43303 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88565)

(declare-fun array_inv!32243 (array!88565) Bool)

(assert (=> start!111388 (array_inv!32243 _keys!1609)))

(assert (=> start!111388 true))

(assert (=> start!111388 tp_is_empty!35829))

(declare-datatypes ((V!52875 0))(
  ( (V!52876 (val!17989 Int)) )
))
(declare-datatypes ((ValueCell!17016 0))(
  ( (ValueCellFull!17016 (v!20617 V!52875)) (EmptyCell!17016) )
))
(declare-datatypes ((array!88567 0))(
  ( (array!88568 (arr!42753 (Array (_ BitVec 32) ValueCell!17016)) (size!43304 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88567)

(declare-fun e!751878 () Bool)

(declare-fun array_inv!32244 (array!88567) Bool)

(assert (=> start!111388 (and (array_inv!32244 _values!1337) e!751878)))

(assert (=> start!111388 tp!105504))

(declare-fun mapIsEmpty!55391 () Bool)

(declare-fun mapRes!55391 () Bool)

(assert (=> mapIsEmpty!55391 mapRes!55391))

(declare-fun b!1317528 () Bool)

(assert (=> b!1317528 (= e!751878 (and e!751882 mapRes!55391))))

(declare-fun condMapEmpty!55391 () Bool)

(declare-fun mapDefault!55391 () ValueCell!17016)

(assert (=> b!1317528 (= condMapEmpty!55391 (= (arr!42753 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17016)) mapDefault!55391)))))

(declare-fun b!1317529 () Bool)

(declare-fun res!874510 () Bool)

(assert (=> b!1317529 (=> (not res!874510) (not e!751879))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1317529 (= res!874510 (and (= (size!43304 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43303 _keys!1609) (size!43304 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317530 () Bool)

(assert (=> b!1317530 (= e!751879 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52875)

(declare-fun minValue!1279 () V!52875)

(declare-fun lt!586321 () Bool)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23302 0))(
  ( (tuple2!23303 (_1!11661 (_ BitVec 64)) (_2!11661 V!52875)) )
))
(declare-datatypes ((List!30491 0))(
  ( (Nil!30488) (Cons!30487 (h!31696 tuple2!23302) (t!44106 List!30491)) )
))
(declare-datatypes ((ListLongMap!20971 0))(
  ( (ListLongMap!20972 (toList!10501 List!30491)) )
))
(declare-fun contains!8592 (ListLongMap!20971 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5457 (array!88565 array!88567 (_ BitVec 32) (_ BitVec 32) V!52875 V!52875 (_ BitVec 32) Int) ListLongMap!20971)

(assert (=> b!1317530 (= lt!586321 (contains!8592 (getCurrentListMap!5457 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1317531 () Bool)

(declare-fun res!874507 () Bool)

(assert (=> b!1317531 (=> (not res!874507) (not e!751879))))

(assert (=> b!1317531 (= res!874507 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43303 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317532 () Bool)

(declare-fun res!874509 () Bool)

(assert (=> b!1317532 (=> (not res!874509) (not e!751879))))

(declare-datatypes ((List!30492 0))(
  ( (Nil!30489) (Cons!30488 (h!31697 (_ BitVec 64)) (t!44107 List!30492)) )
))
(declare-fun arrayNoDuplicates!0 (array!88565 (_ BitVec 32) List!30492) Bool)

(assert (=> b!1317532 (= res!874509 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30489))))

(declare-fun mapNonEmpty!55391 () Bool)

(declare-fun tp!105503 () Bool)

(declare-fun e!751881 () Bool)

(assert (=> mapNonEmpty!55391 (= mapRes!55391 (and tp!105503 e!751881))))

(declare-fun mapRest!55391 () (Array (_ BitVec 32) ValueCell!17016))

(declare-fun mapKey!55391 () (_ BitVec 32))

(declare-fun mapValue!55391 () ValueCell!17016)

(assert (=> mapNonEmpty!55391 (= (arr!42753 _values!1337) (store mapRest!55391 mapKey!55391 mapValue!55391))))

(declare-fun b!1317533 () Bool)

(assert (=> b!1317533 (= e!751881 tp_is_empty!35829)))

(declare-fun b!1317534 () Bool)

(declare-fun res!874508 () Bool)

(assert (=> b!1317534 (=> (not res!874508) (not e!751879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88565 (_ BitVec 32)) Bool)

(assert (=> b!1317534 (= res!874508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111388 res!874506) b!1317529))

(assert (= (and b!1317529 res!874510) b!1317534))

(assert (= (and b!1317534 res!874508) b!1317532))

(assert (= (and b!1317532 res!874509) b!1317531))

(assert (= (and b!1317531 res!874507) b!1317530))

(assert (= (and b!1317528 condMapEmpty!55391) mapIsEmpty!55391))

(assert (= (and b!1317528 (not condMapEmpty!55391)) mapNonEmpty!55391))

(get-info :version)

(assert (= (and mapNonEmpty!55391 ((_ is ValueCellFull!17016) mapValue!55391)) b!1317533))

(assert (= (and b!1317528 ((_ is ValueCellFull!17016) mapDefault!55391)) b!1317527))

(assert (= start!111388 b!1317528))

(declare-fun m!1205359 () Bool)

(assert (=> b!1317530 m!1205359))

(assert (=> b!1317530 m!1205359))

(declare-fun m!1205361 () Bool)

(assert (=> b!1317530 m!1205361))

(declare-fun m!1205363 () Bool)

(assert (=> b!1317532 m!1205363))

(declare-fun m!1205365 () Bool)

(assert (=> mapNonEmpty!55391 m!1205365))

(declare-fun m!1205367 () Bool)

(assert (=> b!1317534 m!1205367))

(declare-fun m!1205369 () Bool)

(assert (=> start!111388 m!1205369))

(declare-fun m!1205371 () Bool)

(assert (=> start!111388 m!1205371))

(declare-fun m!1205373 () Bool)

(assert (=> start!111388 m!1205373))

(check-sat (not b!1317530) tp_is_empty!35829 (not b!1317534) b_and!48239 (not start!111388) (not mapNonEmpty!55391) (not b!1317532) (not b_next!30009))
(check-sat b_and!48239 (not b_next!30009))

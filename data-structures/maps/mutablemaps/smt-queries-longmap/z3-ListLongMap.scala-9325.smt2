; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111424 () Bool)

(assert start!111424)

(declare-fun b_free!30045 () Bool)

(declare-fun b_next!30045 () Bool)

(assert (=> start!111424 (= b_free!30045 (not b_next!30045))))

(declare-fun tp!105611 () Bool)

(declare-fun b_and!48275 () Bool)

(assert (=> start!111424 (= tp!105611 b_and!48275)))

(declare-fun res!874778 () Bool)

(declare-fun e!752150 () Bool)

(assert (=> start!111424 (=> (not res!874778) (not e!752150))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111424 (= res!874778 (validMask!0 mask!2019))))

(assert (=> start!111424 e!752150))

(declare-datatypes ((array!88633 0))(
  ( (array!88634 (arr!42786 (Array (_ BitVec 32) (_ BitVec 64))) (size!43337 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88633)

(declare-fun array_inv!32265 (array!88633) Bool)

(assert (=> start!111424 (array_inv!32265 _keys!1609)))

(assert (=> start!111424 true))

(declare-fun tp_is_empty!35865 () Bool)

(assert (=> start!111424 tp_is_empty!35865))

(declare-datatypes ((V!52923 0))(
  ( (V!52924 (val!18007 Int)) )
))
(declare-datatypes ((ValueCell!17034 0))(
  ( (ValueCellFull!17034 (v!20635 V!52923)) (EmptyCell!17034) )
))
(declare-datatypes ((array!88635 0))(
  ( (array!88636 (arr!42787 (Array (_ BitVec 32) ValueCell!17034)) (size!43338 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88635)

(declare-fun e!752148 () Bool)

(declare-fun array_inv!32266 (array!88635) Bool)

(assert (=> start!111424 (and (array_inv!32266 _values!1337) e!752148)))

(assert (=> start!111424 tp!105611))

(declare-fun b!1317959 () Bool)

(declare-fun res!874776 () Bool)

(assert (=> b!1317959 (=> (not res!874776) (not e!752150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88633 (_ BitVec 32)) Bool)

(assert (=> b!1317959 (= res!874776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55445 () Bool)

(declare-fun mapRes!55445 () Bool)

(assert (=> mapIsEmpty!55445 mapRes!55445))

(declare-fun b!1317960 () Bool)

(declare-fun e!752149 () Bool)

(assert (=> b!1317960 (= e!752149 tp_is_empty!35865)))

(declare-fun b!1317961 () Bool)

(declare-fun e!752152 () Bool)

(assert (=> b!1317961 (= e!752152 tp_is_empty!35865)))

(declare-fun b!1317962 () Bool)

(assert (=> b!1317962 (= e!752148 (and e!752149 mapRes!55445))))

(declare-fun condMapEmpty!55445 () Bool)

(declare-fun mapDefault!55445 () ValueCell!17034)

(assert (=> b!1317962 (= condMapEmpty!55445 (= (arr!42787 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17034)) mapDefault!55445)))))

(declare-fun b!1317963 () Bool)

(assert (=> b!1317963 (= e!752150 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52923)

(declare-fun minValue!1279 () V!52923)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!586375 () Bool)

(declare-datatypes ((tuple2!23322 0))(
  ( (tuple2!23323 (_1!11671 (_ BitVec 64)) (_2!11671 V!52923)) )
))
(declare-datatypes ((List!30512 0))(
  ( (Nil!30509) (Cons!30508 (h!31717 tuple2!23322) (t!44127 List!30512)) )
))
(declare-datatypes ((ListLongMap!20991 0))(
  ( (ListLongMap!20992 (toList!10511 List!30512)) )
))
(declare-fun contains!8602 (ListLongMap!20991 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5467 (array!88633 array!88635 (_ BitVec 32) (_ BitVec 32) V!52923 V!52923 (_ BitVec 32) Int) ListLongMap!20991)

(assert (=> b!1317963 (= lt!586375 (contains!8602 (getCurrentListMap!5467 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1317964 () Bool)

(declare-fun res!874780 () Bool)

(assert (=> b!1317964 (=> (not res!874780) (not e!752150))))

(assert (=> b!1317964 (= res!874780 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43337 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55445 () Bool)

(declare-fun tp!105612 () Bool)

(assert (=> mapNonEmpty!55445 (= mapRes!55445 (and tp!105612 e!752152))))

(declare-fun mapValue!55445 () ValueCell!17034)

(declare-fun mapRest!55445 () (Array (_ BitVec 32) ValueCell!17034))

(declare-fun mapKey!55445 () (_ BitVec 32))

(assert (=> mapNonEmpty!55445 (= (arr!42787 _values!1337) (store mapRest!55445 mapKey!55445 mapValue!55445))))

(declare-fun b!1317965 () Bool)

(declare-fun res!874777 () Bool)

(assert (=> b!1317965 (=> (not res!874777) (not e!752150))))

(declare-datatypes ((List!30513 0))(
  ( (Nil!30510) (Cons!30509 (h!31718 (_ BitVec 64)) (t!44128 List!30513)) )
))
(declare-fun arrayNoDuplicates!0 (array!88633 (_ BitVec 32) List!30513) Bool)

(assert (=> b!1317965 (= res!874777 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30510))))

(declare-fun b!1317966 () Bool)

(declare-fun res!874779 () Bool)

(assert (=> b!1317966 (=> (not res!874779) (not e!752150))))

(assert (=> b!1317966 (= res!874779 (and (= (size!43338 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43337 _keys!1609) (size!43338 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(assert (= (and start!111424 res!874778) b!1317966))

(assert (= (and b!1317966 res!874779) b!1317959))

(assert (= (and b!1317959 res!874776) b!1317965))

(assert (= (and b!1317965 res!874777) b!1317964))

(assert (= (and b!1317964 res!874780) b!1317963))

(assert (= (and b!1317962 condMapEmpty!55445) mapIsEmpty!55445))

(assert (= (and b!1317962 (not condMapEmpty!55445)) mapNonEmpty!55445))

(get-info :version)

(assert (= (and mapNonEmpty!55445 ((_ is ValueCellFull!17034) mapValue!55445)) b!1317961))

(assert (= (and b!1317962 ((_ is ValueCellFull!17034) mapDefault!55445)) b!1317960))

(assert (= start!111424 b!1317962))

(declare-fun m!1205647 () Bool)

(assert (=> b!1317963 m!1205647))

(assert (=> b!1317963 m!1205647))

(declare-fun m!1205649 () Bool)

(assert (=> b!1317963 m!1205649))

(declare-fun m!1205651 () Bool)

(assert (=> b!1317965 m!1205651))

(declare-fun m!1205653 () Bool)

(assert (=> b!1317959 m!1205653))

(declare-fun m!1205655 () Bool)

(assert (=> start!111424 m!1205655))

(declare-fun m!1205657 () Bool)

(assert (=> start!111424 m!1205657))

(declare-fun m!1205659 () Bool)

(assert (=> start!111424 m!1205659))

(declare-fun m!1205661 () Bool)

(assert (=> mapNonEmpty!55445 m!1205661))

(check-sat (not b_next!30045) (not b!1317959) b_and!48275 (not start!111424) (not b!1317965) (not mapNonEmpty!55445) (not b!1317963) tp_is_empty!35865)
(check-sat b_and!48275 (not b_next!30045))

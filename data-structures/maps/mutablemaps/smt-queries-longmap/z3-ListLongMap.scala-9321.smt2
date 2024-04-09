; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111400 () Bool)

(assert start!111400)

(declare-fun b_free!30021 () Bool)

(declare-fun b_next!30021 () Bool)

(assert (=> start!111400 (= b_free!30021 (not b_next!30021))))

(declare-fun tp!105539 () Bool)

(declare-fun b_and!48251 () Bool)

(assert (=> start!111400 (= tp!105539 b_and!48251)))

(declare-fun b!1317672 () Bool)

(declare-fun res!874596 () Bool)

(declare-fun e!751972 () Bool)

(assert (=> b!1317672 (=> (not res!874596) (not e!751972))))

(declare-datatypes ((array!88587 0))(
  ( (array!88588 (arr!42763 (Array (_ BitVec 32) (_ BitVec 64))) (size!43314 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88587)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1317672 (= res!874596 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43314 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317673 () Bool)

(declare-fun e!751969 () Bool)

(declare-fun tp_is_empty!35841 () Bool)

(assert (=> b!1317673 (= e!751969 tp_is_empty!35841)))

(declare-fun b!1317674 () Bool)

(declare-fun res!874599 () Bool)

(assert (=> b!1317674 (=> (not res!874599) (not e!751972))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88587 (_ BitVec 32)) Bool)

(assert (=> b!1317674 (= res!874599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317675 () Bool)

(assert (=> b!1317675 (= e!751972 false)))

(declare-datatypes ((V!52891 0))(
  ( (V!52892 (val!17995 Int)) )
))
(declare-fun zeroValue!1279 () V!52891)

(declare-datatypes ((ValueCell!17022 0))(
  ( (ValueCellFull!17022 (v!20623 V!52891)) (EmptyCell!17022) )
))
(declare-datatypes ((array!88589 0))(
  ( (array!88590 (arr!42764 (Array (_ BitVec 32) ValueCell!17022)) (size!43315 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88589)

(declare-fun minValue!1279 () V!52891)

(declare-fun lt!586339 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23310 0))(
  ( (tuple2!23311 (_1!11665 (_ BitVec 64)) (_2!11665 V!52891)) )
))
(declare-datatypes ((List!30498 0))(
  ( (Nil!30495) (Cons!30494 (h!31703 tuple2!23310) (t!44113 List!30498)) )
))
(declare-datatypes ((ListLongMap!20979 0))(
  ( (ListLongMap!20980 (toList!10505 List!30498)) )
))
(declare-fun contains!8596 (ListLongMap!20979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5461 (array!88587 array!88589 (_ BitVec 32) (_ BitVec 32) V!52891 V!52891 (_ BitVec 32) Int) ListLongMap!20979)

(assert (=> b!1317675 (= lt!586339 (contains!8596 (getCurrentListMap!5461 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1317676 () Bool)

(declare-fun res!874598 () Bool)

(assert (=> b!1317676 (=> (not res!874598) (not e!751972))))

(declare-datatypes ((List!30499 0))(
  ( (Nil!30496) (Cons!30495 (h!31704 (_ BitVec 64)) (t!44114 List!30499)) )
))
(declare-fun arrayNoDuplicates!0 (array!88587 (_ BitVec 32) List!30499) Bool)

(assert (=> b!1317676 (= res!874598 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30496))))

(declare-fun b!1317677 () Bool)

(declare-fun e!751971 () Bool)

(assert (=> b!1317677 (= e!751971 tp_is_empty!35841)))

(declare-fun mapNonEmpty!55409 () Bool)

(declare-fun mapRes!55409 () Bool)

(declare-fun tp!105540 () Bool)

(assert (=> mapNonEmpty!55409 (= mapRes!55409 (and tp!105540 e!751971))))

(declare-fun mapValue!55409 () ValueCell!17022)

(declare-fun mapRest!55409 () (Array (_ BitVec 32) ValueCell!17022))

(declare-fun mapKey!55409 () (_ BitVec 32))

(assert (=> mapNonEmpty!55409 (= (arr!42764 _values!1337) (store mapRest!55409 mapKey!55409 mapValue!55409))))

(declare-fun mapIsEmpty!55409 () Bool)

(assert (=> mapIsEmpty!55409 mapRes!55409))

(declare-fun b!1317678 () Bool)

(declare-fun e!751968 () Bool)

(assert (=> b!1317678 (= e!751968 (and e!751969 mapRes!55409))))

(declare-fun condMapEmpty!55409 () Bool)

(declare-fun mapDefault!55409 () ValueCell!17022)

(assert (=> b!1317678 (= condMapEmpty!55409 (= (arr!42764 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17022)) mapDefault!55409)))))

(declare-fun res!874597 () Bool)

(assert (=> start!111400 (=> (not res!874597) (not e!751972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111400 (= res!874597 (validMask!0 mask!2019))))

(assert (=> start!111400 e!751972))

(declare-fun array_inv!32249 (array!88587) Bool)

(assert (=> start!111400 (array_inv!32249 _keys!1609)))

(assert (=> start!111400 true))

(assert (=> start!111400 tp_is_empty!35841))

(declare-fun array_inv!32250 (array!88589) Bool)

(assert (=> start!111400 (and (array_inv!32250 _values!1337) e!751968)))

(assert (=> start!111400 tp!105539))

(declare-fun b!1317671 () Bool)

(declare-fun res!874600 () Bool)

(assert (=> b!1317671 (=> (not res!874600) (not e!751972))))

(assert (=> b!1317671 (= res!874600 (and (= (size!43315 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43314 _keys!1609) (size!43315 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(assert (= (and start!111400 res!874597) b!1317671))

(assert (= (and b!1317671 res!874600) b!1317674))

(assert (= (and b!1317674 res!874599) b!1317676))

(assert (= (and b!1317676 res!874598) b!1317672))

(assert (= (and b!1317672 res!874596) b!1317675))

(assert (= (and b!1317678 condMapEmpty!55409) mapIsEmpty!55409))

(assert (= (and b!1317678 (not condMapEmpty!55409)) mapNonEmpty!55409))

(get-info :version)

(assert (= (and mapNonEmpty!55409 ((_ is ValueCellFull!17022) mapValue!55409)) b!1317677))

(assert (= (and b!1317678 ((_ is ValueCellFull!17022) mapDefault!55409)) b!1317673))

(assert (= start!111400 b!1317678))

(declare-fun m!1205455 () Bool)

(assert (=> start!111400 m!1205455))

(declare-fun m!1205457 () Bool)

(assert (=> start!111400 m!1205457))

(declare-fun m!1205459 () Bool)

(assert (=> start!111400 m!1205459))

(declare-fun m!1205461 () Bool)

(assert (=> b!1317674 m!1205461))

(declare-fun m!1205463 () Bool)

(assert (=> mapNonEmpty!55409 m!1205463))

(declare-fun m!1205465 () Bool)

(assert (=> b!1317675 m!1205465))

(assert (=> b!1317675 m!1205465))

(declare-fun m!1205467 () Bool)

(assert (=> b!1317675 m!1205467))

(declare-fun m!1205469 () Bool)

(assert (=> b!1317676 m!1205469))

(check-sat (not b!1317676) (not b!1317674) tp_is_empty!35841 (not b!1317675) (not b_next!30021) b_and!48251 (not mapNonEmpty!55409) (not start!111400))
(check-sat b_and!48251 (not b_next!30021))

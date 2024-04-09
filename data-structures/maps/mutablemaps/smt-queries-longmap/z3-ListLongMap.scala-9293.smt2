; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111144 () Bool)

(assert start!111144)

(declare-fun b_free!29943 () Bool)

(declare-fun b_next!29943 () Bool)

(assert (=> start!111144 (= b_free!29943 (not b_next!29943))))

(declare-fun tp!105152 () Bool)

(declare-fun b_and!48161 () Bool)

(assert (=> start!111144 (= tp!105152 b_and!48161)))

(declare-fun mapIsEmpty!55138 () Bool)

(declare-fun mapRes!55138 () Bool)

(assert (=> mapIsEmpty!55138 mapRes!55138))

(declare-fun b!1315425 () Bool)

(declare-fun res!873350 () Bool)

(declare-fun e!750409 () Bool)

(assert (=> b!1315425 (=> (not res!873350) (not e!750409))))

(declare-datatypes ((array!88269 0))(
  ( (array!88270 (arr!42610 (Array (_ BitVec 32) (_ BitVec 64))) (size!43161 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88269)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88269 (_ BitVec 32)) Bool)

(assert (=> b!1315425 (= res!873350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55138 () Bool)

(declare-fun tp!105151 () Bool)

(declare-fun e!750410 () Bool)

(assert (=> mapNonEmpty!55138 (= mapRes!55138 (and tp!105151 e!750410))))

(declare-datatypes ((V!52667 0))(
  ( (V!52668 (val!17911 Int)) )
))
(declare-datatypes ((ValueCell!16938 0))(
  ( (ValueCellFull!16938 (v!20536 V!52667)) (EmptyCell!16938) )
))
(declare-fun mapValue!55138 () ValueCell!16938)

(declare-datatypes ((array!88271 0))(
  ( (array!88272 (arr!42611 (Array (_ BitVec 32) ValueCell!16938)) (size!43162 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88271)

(declare-fun mapKey!55138 () (_ BitVec 32))

(declare-fun mapRest!55138 () (Array (_ BitVec 32) ValueCell!16938))

(assert (=> mapNonEmpty!55138 (= (arr!42611 _values!1354) (store mapRest!55138 mapKey!55138 mapValue!55138))))

(declare-fun b!1315426 () Bool)

(declare-fun e!750406 () Bool)

(declare-fun e!750408 () Bool)

(assert (=> b!1315426 (= e!750406 (and e!750408 mapRes!55138))))

(declare-fun condMapEmpty!55138 () Bool)

(declare-fun mapDefault!55138 () ValueCell!16938)

(assert (=> b!1315426 (= condMapEmpty!55138 (= (arr!42611 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16938)) mapDefault!55138)))))

(declare-fun b!1315427 () Bool)

(declare-fun res!873348 () Bool)

(assert (=> b!1315427 (=> (not res!873348) (not e!750409))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315427 (= res!873348 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43161 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!873347 () Bool)

(assert (=> start!111144 (=> (not res!873347) (not e!750409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111144 (= res!873347 (validMask!0 mask!2040))))

(assert (=> start!111144 e!750409))

(assert (=> start!111144 tp!105152))

(declare-fun array_inv!32153 (array!88269) Bool)

(assert (=> start!111144 (array_inv!32153 _keys!1628)))

(assert (=> start!111144 true))

(declare-fun tp_is_empty!35673 () Bool)

(assert (=> start!111144 tp_is_empty!35673))

(declare-fun array_inv!32154 (array!88271) Bool)

(assert (=> start!111144 (and (array_inv!32154 _values!1354) e!750406)))

(declare-fun b!1315428 () Bool)

(assert (=> b!1315428 (= e!750409 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585856 () Bool)

(declare-fun minValue!1296 () V!52667)

(declare-fun zeroValue!1296 () V!52667)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23256 0))(
  ( (tuple2!23257 (_1!11638 (_ BitVec 64)) (_2!11638 V!52667)) )
))
(declare-datatypes ((List!30425 0))(
  ( (Nil!30422) (Cons!30421 (h!31630 tuple2!23256) (t!44038 List!30425)) )
))
(declare-datatypes ((ListLongMap!20925 0))(
  ( (ListLongMap!20926 (toList!10478 List!30425)) )
))
(declare-fun contains!8564 (ListLongMap!20925 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5434 (array!88269 array!88271 (_ BitVec 32) (_ BitVec 32) V!52667 V!52667 (_ BitVec 32) Int) ListLongMap!20925)

(assert (=> b!1315428 (= lt!585856 (contains!8564 (getCurrentListMap!5434 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315429 () Bool)

(declare-fun res!873346 () Bool)

(assert (=> b!1315429 (=> (not res!873346) (not e!750409))))

(assert (=> b!1315429 (= res!873346 (and (= (size!43162 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43161 _keys!1628) (size!43162 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315430 () Bool)

(assert (=> b!1315430 (= e!750408 tp_is_empty!35673)))

(declare-fun b!1315431 () Bool)

(assert (=> b!1315431 (= e!750410 tp_is_empty!35673)))

(declare-fun b!1315432 () Bool)

(declare-fun res!873349 () Bool)

(assert (=> b!1315432 (=> (not res!873349) (not e!750409))))

(declare-datatypes ((List!30426 0))(
  ( (Nil!30423) (Cons!30422 (h!31631 (_ BitVec 64)) (t!44039 List!30426)) )
))
(declare-fun arrayNoDuplicates!0 (array!88269 (_ BitVec 32) List!30426) Bool)

(assert (=> b!1315432 (= res!873349 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30423))))

(assert (= (and start!111144 res!873347) b!1315429))

(assert (= (and b!1315429 res!873346) b!1315425))

(assert (= (and b!1315425 res!873350) b!1315432))

(assert (= (and b!1315432 res!873349) b!1315427))

(assert (= (and b!1315427 res!873348) b!1315428))

(assert (= (and b!1315426 condMapEmpty!55138) mapIsEmpty!55138))

(assert (= (and b!1315426 (not condMapEmpty!55138)) mapNonEmpty!55138))

(get-info :version)

(assert (= (and mapNonEmpty!55138 ((_ is ValueCellFull!16938) mapValue!55138)) b!1315431))

(assert (= (and b!1315426 ((_ is ValueCellFull!16938) mapDefault!55138)) b!1315430))

(assert (= start!111144 b!1315426))

(declare-fun m!1203631 () Bool)

(assert (=> mapNonEmpty!55138 m!1203631))

(declare-fun m!1203633 () Bool)

(assert (=> b!1315432 m!1203633))

(declare-fun m!1203635 () Bool)

(assert (=> b!1315428 m!1203635))

(assert (=> b!1315428 m!1203635))

(declare-fun m!1203637 () Bool)

(assert (=> b!1315428 m!1203637))

(declare-fun m!1203639 () Bool)

(assert (=> start!111144 m!1203639))

(declare-fun m!1203641 () Bool)

(assert (=> start!111144 m!1203641))

(declare-fun m!1203643 () Bool)

(assert (=> start!111144 m!1203643))

(declare-fun m!1203645 () Bool)

(assert (=> b!1315425 m!1203645))

(check-sat (not b!1315432) (not b!1315428) (not b_next!29943) (not b!1315425) (not start!111144) (not mapNonEmpty!55138) b_and!48161 tp_is_empty!35673)
(check-sat b_and!48161 (not b_next!29943))

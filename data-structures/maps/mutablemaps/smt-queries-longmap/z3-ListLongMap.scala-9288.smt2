; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111114 () Bool)

(assert start!111114)

(declare-fun b_free!29913 () Bool)

(declare-fun b_next!29913 () Bool)

(assert (=> start!111114 (= b_free!29913 (not b_next!29913))))

(declare-fun tp!105062 () Bool)

(declare-fun b_and!48131 () Bool)

(assert (=> start!111114 (= tp!105062 b_and!48131)))

(declare-fun b!1315029 () Bool)

(declare-fun e!750182 () Bool)

(declare-fun tp_is_empty!35643 () Bool)

(assert (=> b!1315029 (= e!750182 tp_is_empty!35643)))

(declare-fun mapIsEmpty!55093 () Bool)

(declare-fun mapRes!55093 () Bool)

(assert (=> mapIsEmpty!55093 mapRes!55093))

(declare-fun mapNonEmpty!55093 () Bool)

(declare-fun tp!105061 () Bool)

(declare-fun e!750185 () Bool)

(assert (=> mapNonEmpty!55093 (= mapRes!55093 (and tp!105061 e!750185))))

(declare-datatypes ((V!52627 0))(
  ( (V!52628 (val!17896 Int)) )
))
(declare-datatypes ((ValueCell!16923 0))(
  ( (ValueCellFull!16923 (v!20521 V!52627)) (EmptyCell!16923) )
))
(declare-fun mapValue!55093 () ValueCell!16923)

(declare-fun mapRest!55093 () (Array (_ BitVec 32) ValueCell!16923))

(declare-fun mapKey!55093 () (_ BitVec 32))

(declare-datatypes ((array!88215 0))(
  ( (array!88216 (arr!42583 (Array (_ BitVec 32) ValueCell!16923)) (size!43134 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88215)

(assert (=> mapNonEmpty!55093 (= (arr!42583 _values!1354) (store mapRest!55093 mapKey!55093 mapValue!55093))))

(declare-fun b!1315030 () Bool)

(declare-fun e!750184 () Bool)

(assert (=> b!1315030 (= e!750184 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun lt!585811 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52627)

(declare-fun zeroValue!1296 () V!52627)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((array!88217 0))(
  ( (array!88218 (arr!42584 (Array (_ BitVec 32) (_ BitVec 64))) (size!43135 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88217)

(declare-datatypes ((tuple2!23240 0))(
  ( (tuple2!23241 (_1!11630 (_ BitVec 64)) (_2!11630 V!52627)) )
))
(declare-datatypes ((List!30407 0))(
  ( (Nil!30404) (Cons!30403 (h!31612 tuple2!23240) (t!44020 List!30407)) )
))
(declare-datatypes ((ListLongMap!20909 0))(
  ( (ListLongMap!20910 (toList!10470 List!30407)) )
))
(declare-fun contains!8556 (ListLongMap!20909 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5426 (array!88217 array!88215 (_ BitVec 32) (_ BitVec 32) V!52627 V!52627 (_ BitVec 32) Int) ListLongMap!20909)

(assert (=> b!1315030 (= lt!585811 (contains!8556 (getCurrentListMap!5426 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315031 () Bool)

(declare-fun res!873087 () Bool)

(assert (=> b!1315031 (=> (not res!873087) (not e!750184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88217 (_ BitVec 32)) Bool)

(assert (=> b!1315031 (= res!873087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315032 () Bool)

(declare-fun res!873086 () Bool)

(assert (=> b!1315032 (=> (not res!873086) (not e!750184))))

(assert (=> b!1315032 (= res!873086 (and (= (size!43134 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43135 _keys!1628) (size!43134 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315033 () Bool)

(declare-fun e!750181 () Bool)

(assert (=> b!1315033 (= e!750181 (and e!750182 mapRes!55093))))

(declare-fun condMapEmpty!55093 () Bool)

(declare-fun mapDefault!55093 () ValueCell!16923)

(assert (=> b!1315033 (= condMapEmpty!55093 (= (arr!42583 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16923)) mapDefault!55093)))))

(declare-fun b!1315034 () Bool)

(assert (=> b!1315034 (= e!750185 tp_is_empty!35643)))

(declare-fun b!1315035 () Bool)

(declare-fun res!873088 () Bool)

(assert (=> b!1315035 (=> (not res!873088) (not e!750184))))

(assert (=> b!1315035 (= res!873088 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43135 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315036 () Bool)

(declare-fun res!873089 () Bool)

(assert (=> b!1315036 (=> (not res!873089) (not e!750184))))

(declare-datatypes ((List!30408 0))(
  ( (Nil!30405) (Cons!30404 (h!31613 (_ BitVec 64)) (t!44021 List!30408)) )
))
(declare-fun arrayNoDuplicates!0 (array!88217 (_ BitVec 32) List!30408) Bool)

(assert (=> b!1315036 (= res!873089 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30405))))

(declare-fun res!873085 () Bool)

(assert (=> start!111114 (=> (not res!873085) (not e!750184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111114 (= res!873085 (validMask!0 mask!2040))))

(assert (=> start!111114 e!750184))

(assert (=> start!111114 tp!105062))

(declare-fun array_inv!32137 (array!88217) Bool)

(assert (=> start!111114 (array_inv!32137 _keys!1628)))

(assert (=> start!111114 true))

(assert (=> start!111114 tp_is_empty!35643))

(declare-fun array_inv!32138 (array!88215) Bool)

(assert (=> start!111114 (and (array_inv!32138 _values!1354) e!750181)))

(assert (= (and start!111114 res!873085) b!1315032))

(assert (= (and b!1315032 res!873086) b!1315031))

(assert (= (and b!1315031 res!873087) b!1315036))

(assert (= (and b!1315036 res!873089) b!1315035))

(assert (= (and b!1315035 res!873088) b!1315030))

(assert (= (and b!1315033 condMapEmpty!55093) mapIsEmpty!55093))

(assert (= (and b!1315033 (not condMapEmpty!55093)) mapNonEmpty!55093))

(get-info :version)

(assert (= (and mapNonEmpty!55093 ((_ is ValueCellFull!16923) mapValue!55093)) b!1315034))

(assert (= (and b!1315033 ((_ is ValueCellFull!16923) mapDefault!55093)) b!1315029))

(assert (= start!111114 b!1315033))

(declare-fun m!1203361 () Bool)

(assert (=> start!111114 m!1203361))

(declare-fun m!1203363 () Bool)

(assert (=> start!111114 m!1203363))

(declare-fun m!1203365 () Bool)

(assert (=> start!111114 m!1203365))

(declare-fun m!1203367 () Bool)

(assert (=> b!1315031 m!1203367))

(declare-fun m!1203369 () Bool)

(assert (=> b!1315030 m!1203369))

(assert (=> b!1315030 m!1203369))

(declare-fun m!1203371 () Bool)

(assert (=> b!1315030 m!1203371))

(declare-fun m!1203373 () Bool)

(assert (=> b!1315036 m!1203373))

(declare-fun m!1203375 () Bool)

(assert (=> mapNonEmpty!55093 m!1203375))

(check-sat (not b!1315030) b_and!48131 (not b!1315036) (not b!1315031) tp_is_empty!35643 (not mapNonEmpty!55093) (not start!111114) (not b_next!29913))
(check-sat b_and!48131 (not b_next!29913))

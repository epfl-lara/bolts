; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111132 () Bool)

(assert start!111132)

(declare-fun b_free!29931 () Bool)

(declare-fun b_next!29931 () Bool)

(assert (=> start!111132 (= b_free!29931 (not b_next!29931))))

(declare-fun tp!105115 () Bool)

(declare-fun b_and!48149 () Bool)

(assert (=> start!111132 (= tp!105115 b_and!48149)))

(declare-fun b!1315281 () Bool)

(declare-fun e!750317 () Bool)

(declare-fun tp_is_empty!35661 () Bool)

(assert (=> b!1315281 (= e!750317 tp_is_empty!35661)))

(declare-fun b!1315282 () Bool)

(declare-fun res!873259 () Bool)

(declare-fun e!750316 () Bool)

(assert (=> b!1315282 (=> (not res!873259) (not e!750316))))

(declare-datatypes ((array!88247 0))(
  ( (array!88248 (arr!42599 (Array (_ BitVec 32) (_ BitVec 64))) (size!43150 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88247)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315282 (= res!873259 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43150 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315283 () Bool)

(declare-fun res!873260 () Bool)

(assert (=> b!1315283 (=> (not res!873260) (not e!750316))))

(declare-datatypes ((List!30417 0))(
  ( (Nil!30414) (Cons!30413 (h!31622 (_ BitVec 64)) (t!44030 List!30417)) )
))
(declare-fun arrayNoDuplicates!0 (array!88247 (_ BitVec 32) List!30417) Bool)

(assert (=> b!1315283 (= res!873260 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30414))))

(declare-fun mapIsEmpty!55120 () Bool)

(declare-fun mapRes!55120 () Bool)

(assert (=> mapIsEmpty!55120 mapRes!55120))

(declare-fun b!1315284 () Bool)

(declare-fun e!750319 () Bool)

(assert (=> b!1315284 (= e!750319 tp_is_empty!35661)))

(declare-fun mapNonEmpty!55120 () Bool)

(declare-fun tp!105116 () Bool)

(assert (=> mapNonEmpty!55120 (= mapRes!55120 (and tp!105116 e!750319))))

(declare-datatypes ((V!52651 0))(
  ( (V!52652 (val!17905 Int)) )
))
(declare-datatypes ((ValueCell!16932 0))(
  ( (ValueCellFull!16932 (v!20530 V!52651)) (EmptyCell!16932) )
))
(declare-fun mapRest!55120 () (Array (_ BitVec 32) ValueCell!16932))

(declare-datatypes ((array!88249 0))(
  ( (array!88250 (arr!42600 (Array (_ BitVec 32) ValueCell!16932)) (size!43151 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88249)

(declare-fun mapKey!55120 () (_ BitVec 32))

(declare-fun mapValue!55120 () ValueCell!16932)

(assert (=> mapNonEmpty!55120 (= (arr!42600 _values!1354) (store mapRest!55120 mapKey!55120 mapValue!55120))))

(declare-fun b!1315286 () Bool)

(declare-fun res!873258 () Bool)

(assert (=> b!1315286 (=> (not res!873258) (not e!750316))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315286 (= res!873258 (and (= (size!43151 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43150 _keys!1628) (size!43151 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315287 () Bool)

(declare-fun e!750320 () Bool)

(assert (=> b!1315287 (= e!750320 (and e!750317 mapRes!55120))))

(declare-fun condMapEmpty!55120 () Bool)

(declare-fun mapDefault!55120 () ValueCell!16932)

(assert (=> b!1315287 (= condMapEmpty!55120 (= (arr!42600 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16932)) mapDefault!55120)))))

(declare-fun b!1315288 () Bool)

(declare-fun res!873256 () Bool)

(assert (=> b!1315288 (=> (not res!873256) (not e!750316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88247 (_ BitVec 32)) Bool)

(assert (=> b!1315288 (= res!873256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315285 () Bool)

(assert (=> b!1315285 (= e!750316 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52651)

(declare-fun lt!585838 () Bool)

(declare-fun zeroValue!1296 () V!52651)

(declare-datatypes ((tuple2!23250 0))(
  ( (tuple2!23251 (_1!11635 (_ BitVec 64)) (_2!11635 V!52651)) )
))
(declare-datatypes ((List!30418 0))(
  ( (Nil!30415) (Cons!30414 (h!31623 tuple2!23250) (t!44031 List!30418)) )
))
(declare-datatypes ((ListLongMap!20919 0))(
  ( (ListLongMap!20920 (toList!10475 List!30418)) )
))
(declare-fun contains!8561 (ListLongMap!20919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5431 (array!88247 array!88249 (_ BitVec 32) (_ BitVec 32) V!52651 V!52651 (_ BitVec 32) Int) ListLongMap!20919)

(assert (=> b!1315285 (= lt!585838 (contains!8561 (getCurrentListMap!5431 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!873257 () Bool)

(assert (=> start!111132 (=> (not res!873257) (not e!750316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111132 (= res!873257 (validMask!0 mask!2040))))

(assert (=> start!111132 e!750316))

(assert (=> start!111132 tp!105115))

(declare-fun array_inv!32147 (array!88247) Bool)

(assert (=> start!111132 (array_inv!32147 _keys!1628)))

(assert (=> start!111132 true))

(assert (=> start!111132 tp_is_empty!35661))

(declare-fun array_inv!32148 (array!88249) Bool)

(assert (=> start!111132 (and (array_inv!32148 _values!1354) e!750320)))

(assert (= (and start!111132 res!873257) b!1315286))

(assert (= (and b!1315286 res!873258) b!1315288))

(assert (= (and b!1315288 res!873256) b!1315283))

(assert (= (and b!1315283 res!873260) b!1315282))

(assert (= (and b!1315282 res!873259) b!1315285))

(assert (= (and b!1315287 condMapEmpty!55120) mapIsEmpty!55120))

(assert (= (and b!1315287 (not condMapEmpty!55120)) mapNonEmpty!55120))

(get-info :version)

(assert (= (and mapNonEmpty!55120 ((_ is ValueCellFull!16932) mapValue!55120)) b!1315284))

(assert (= (and b!1315287 ((_ is ValueCellFull!16932) mapDefault!55120)) b!1315281))

(assert (= start!111132 b!1315287))

(declare-fun m!1203535 () Bool)

(assert (=> mapNonEmpty!55120 m!1203535))

(declare-fun m!1203537 () Bool)

(assert (=> b!1315285 m!1203537))

(assert (=> b!1315285 m!1203537))

(declare-fun m!1203539 () Bool)

(assert (=> b!1315285 m!1203539))

(declare-fun m!1203541 () Bool)

(assert (=> b!1315283 m!1203541))

(declare-fun m!1203543 () Bool)

(assert (=> start!111132 m!1203543))

(declare-fun m!1203545 () Bool)

(assert (=> start!111132 m!1203545))

(declare-fun m!1203547 () Bool)

(assert (=> start!111132 m!1203547))

(declare-fun m!1203549 () Bool)

(assert (=> b!1315288 m!1203549))

(check-sat (not b_next!29931) (not mapNonEmpty!55120) b_and!48149 (not b!1315285) (not start!111132) (not b!1315283) (not b!1315288) tp_is_empty!35661)
(check-sat b_and!48149 (not b_next!29931))

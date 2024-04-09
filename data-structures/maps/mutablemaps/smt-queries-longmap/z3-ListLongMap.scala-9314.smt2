; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111358 () Bool)

(assert start!111358)

(declare-fun b!1317238 () Bool)

(declare-fun e!751653 () Bool)

(declare-fun tp_is_empty!35799 () Bool)

(assert (=> b!1317238 (= e!751653 tp_is_empty!35799)))

(declare-fun b!1317239 () Bool)

(declare-fun e!751655 () Bool)

(assert (=> b!1317239 (= e!751655 false)))

(declare-fun lt!586285 () Bool)

(declare-datatypes ((array!88509 0))(
  ( (array!88510 (arr!42724 (Array (_ BitVec 32) (_ BitVec 64))) (size!43275 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88509)

(declare-datatypes ((List!30481 0))(
  ( (Nil!30478) (Cons!30477 (h!31686 (_ BitVec 64)) (t!44096 List!30481)) )
))
(declare-fun arrayNoDuplicates!0 (array!88509 (_ BitVec 32) List!30481) Bool)

(assert (=> b!1317239 (= lt!586285 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30478))))

(declare-fun mapIsEmpty!55346 () Bool)

(declare-fun mapRes!55346 () Bool)

(assert (=> mapIsEmpty!55346 mapRes!55346))

(declare-fun b!1317240 () Bool)

(declare-fun res!874353 () Bool)

(assert (=> b!1317240 (=> (not res!874353) (not e!751655))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52835 0))(
  ( (V!52836 (val!17974 Int)) )
))
(declare-datatypes ((ValueCell!17001 0))(
  ( (ValueCellFull!17001 (v!20602 V!52835)) (EmptyCell!17001) )
))
(declare-datatypes ((array!88511 0))(
  ( (array!88512 (arr!42725 (Array (_ BitVec 32) ValueCell!17001)) (size!43276 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88511)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317240 (= res!874353 (and (= (size!43276 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43275 _keys!1609) (size!43276 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!874354 () Bool)

(assert (=> start!111358 (=> (not res!874354) (not e!751655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111358 (= res!874354 (validMask!0 mask!2019))))

(assert (=> start!111358 e!751655))

(assert (=> start!111358 true))

(declare-fun e!751657 () Bool)

(declare-fun array_inv!32231 (array!88511) Bool)

(assert (=> start!111358 (and (array_inv!32231 _values!1337) e!751657)))

(declare-fun array_inv!32232 (array!88509) Bool)

(assert (=> start!111358 (array_inv!32232 _keys!1609)))

(declare-fun b!1317241 () Bool)

(declare-fun e!751656 () Bool)

(assert (=> b!1317241 (= e!751656 tp_is_empty!35799)))

(declare-fun b!1317242 () Bool)

(assert (=> b!1317242 (= e!751657 (and e!751656 mapRes!55346))))

(declare-fun condMapEmpty!55346 () Bool)

(declare-fun mapDefault!55346 () ValueCell!17001)

(assert (=> b!1317242 (= condMapEmpty!55346 (= (arr!42725 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17001)) mapDefault!55346)))))

(declare-fun mapNonEmpty!55346 () Bool)

(declare-fun tp!105453 () Bool)

(assert (=> mapNonEmpty!55346 (= mapRes!55346 (and tp!105453 e!751653))))

(declare-fun mapKey!55346 () (_ BitVec 32))

(declare-fun mapRest!55346 () (Array (_ BitVec 32) ValueCell!17001))

(declare-fun mapValue!55346 () ValueCell!17001)

(assert (=> mapNonEmpty!55346 (= (arr!42725 _values!1337) (store mapRest!55346 mapKey!55346 mapValue!55346))))

(declare-fun b!1317243 () Bool)

(declare-fun res!874352 () Bool)

(assert (=> b!1317243 (=> (not res!874352) (not e!751655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88509 (_ BitVec 32)) Bool)

(assert (=> b!1317243 (= res!874352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111358 res!874354) b!1317240))

(assert (= (and b!1317240 res!874353) b!1317243))

(assert (= (and b!1317243 res!874352) b!1317239))

(assert (= (and b!1317242 condMapEmpty!55346) mapIsEmpty!55346))

(assert (= (and b!1317242 (not condMapEmpty!55346)) mapNonEmpty!55346))

(get-info :version)

(assert (= (and mapNonEmpty!55346 ((_ is ValueCellFull!17001) mapValue!55346)) b!1317238))

(assert (= (and b!1317242 ((_ is ValueCellFull!17001) mapDefault!55346)) b!1317241))

(assert (= start!111358 b!1317242))

(declare-fun m!1205175 () Bool)

(assert (=> b!1317239 m!1205175))

(declare-fun m!1205177 () Bool)

(assert (=> start!111358 m!1205177))

(declare-fun m!1205179 () Bool)

(assert (=> start!111358 m!1205179))

(declare-fun m!1205181 () Bool)

(assert (=> start!111358 m!1205181))

(declare-fun m!1205183 () Bool)

(assert (=> mapNonEmpty!55346 m!1205183))

(declare-fun m!1205185 () Bool)

(assert (=> b!1317243 m!1205185))

(check-sat (not mapNonEmpty!55346) (not start!111358) (not b!1317243) tp_is_empty!35799 (not b!1317239))
(check-sat)

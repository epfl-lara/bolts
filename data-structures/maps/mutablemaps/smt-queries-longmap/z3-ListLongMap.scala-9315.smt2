; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111364 () Bool)

(assert start!111364)

(declare-fun b!1317292 () Bool)

(declare-fun e!751699 () Bool)

(declare-fun e!751702 () Bool)

(declare-fun mapRes!55355 () Bool)

(assert (=> b!1317292 (= e!751699 (and e!751702 mapRes!55355))))

(declare-fun condMapEmpty!55355 () Bool)

(declare-datatypes ((V!52843 0))(
  ( (V!52844 (val!17977 Int)) )
))
(declare-datatypes ((ValueCell!17004 0))(
  ( (ValueCellFull!17004 (v!20605 V!52843)) (EmptyCell!17004) )
))
(declare-datatypes ((array!88521 0))(
  ( (array!88522 (arr!42730 (Array (_ BitVec 32) ValueCell!17004)) (size!43281 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88521)

(declare-fun mapDefault!55355 () ValueCell!17004)

(assert (=> b!1317292 (= condMapEmpty!55355 (= (arr!42730 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17004)) mapDefault!55355)))))

(declare-fun mapIsEmpty!55355 () Bool)

(assert (=> mapIsEmpty!55355 mapRes!55355))

(declare-fun b!1317293 () Bool)

(declare-fun tp_is_empty!35805 () Bool)

(assert (=> b!1317293 (= e!751702 tp_is_empty!35805)))

(declare-fun res!874381 () Bool)

(declare-fun e!751700 () Bool)

(assert (=> start!111364 (=> (not res!874381) (not e!751700))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111364 (= res!874381 (validMask!0 mask!2019))))

(assert (=> start!111364 e!751700))

(assert (=> start!111364 true))

(declare-fun array_inv!32233 (array!88521) Bool)

(assert (=> start!111364 (and (array_inv!32233 _values!1337) e!751699)))

(declare-datatypes ((array!88523 0))(
  ( (array!88524 (arr!42731 (Array (_ BitVec 32) (_ BitVec 64))) (size!43282 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88523)

(declare-fun array_inv!32234 (array!88523) Bool)

(assert (=> start!111364 (array_inv!32234 _keys!1609)))

(declare-fun b!1317294 () Bool)

(declare-fun res!874380 () Bool)

(assert (=> b!1317294 (=> (not res!874380) (not e!751700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88523 (_ BitVec 32)) Bool)

(assert (=> b!1317294 (= res!874380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317295 () Bool)

(declare-fun res!874379 () Bool)

(assert (=> b!1317295 (=> (not res!874379) (not e!751700))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1317295 (= res!874379 (and (= (size!43281 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43282 _keys!1609) (size!43281 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317296 () Bool)

(assert (=> b!1317296 (= e!751700 false)))

(declare-fun lt!586294 () Bool)

(declare-datatypes ((List!30483 0))(
  ( (Nil!30480) (Cons!30479 (h!31688 (_ BitVec 64)) (t!44098 List!30483)) )
))
(declare-fun arrayNoDuplicates!0 (array!88523 (_ BitVec 32) List!30483) Bool)

(assert (=> b!1317296 (= lt!586294 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30480))))

(declare-fun b!1317297 () Bool)

(declare-fun e!751698 () Bool)

(assert (=> b!1317297 (= e!751698 tp_is_empty!35805)))

(declare-fun mapNonEmpty!55355 () Bool)

(declare-fun tp!105462 () Bool)

(assert (=> mapNonEmpty!55355 (= mapRes!55355 (and tp!105462 e!751698))))

(declare-fun mapValue!55355 () ValueCell!17004)

(declare-fun mapKey!55355 () (_ BitVec 32))

(declare-fun mapRest!55355 () (Array (_ BitVec 32) ValueCell!17004))

(assert (=> mapNonEmpty!55355 (= (arr!42730 _values!1337) (store mapRest!55355 mapKey!55355 mapValue!55355))))

(assert (= (and start!111364 res!874381) b!1317295))

(assert (= (and b!1317295 res!874379) b!1317294))

(assert (= (and b!1317294 res!874380) b!1317296))

(assert (= (and b!1317292 condMapEmpty!55355) mapIsEmpty!55355))

(assert (= (and b!1317292 (not condMapEmpty!55355)) mapNonEmpty!55355))

(get-info :version)

(assert (= (and mapNonEmpty!55355 ((_ is ValueCellFull!17004) mapValue!55355)) b!1317297))

(assert (= (and b!1317292 ((_ is ValueCellFull!17004) mapDefault!55355)) b!1317293))

(assert (= start!111364 b!1317292))

(declare-fun m!1205211 () Bool)

(assert (=> start!111364 m!1205211))

(declare-fun m!1205213 () Bool)

(assert (=> start!111364 m!1205213))

(declare-fun m!1205215 () Bool)

(assert (=> start!111364 m!1205215))

(declare-fun m!1205217 () Bool)

(assert (=> b!1317294 m!1205217))

(declare-fun m!1205219 () Bool)

(assert (=> b!1317296 m!1205219))

(declare-fun m!1205221 () Bool)

(assert (=> mapNonEmpty!55355 m!1205221))

(check-sat (not start!111364) (not b!1317296) tp_is_empty!35805 (not b!1317294) (not mapNonEmpty!55355))
(check-sat)

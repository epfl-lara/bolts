; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111346 () Bool)

(assert start!111346)

(declare-fun b!1317130 () Bool)

(declare-fun e!751564 () Bool)

(declare-fun tp_is_empty!35787 () Bool)

(assert (=> b!1317130 (= e!751564 tp_is_empty!35787)))

(declare-fun mapNonEmpty!55328 () Bool)

(declare-fun mapRes!55328 () Bool)

(declare-fun tp!105435 () Bool)

(declare-fun e!751563 () Bool)

(assert (=> mapNonEmpty!55328 (= mapRes!55328 (and tp!105435 e!751563))))

(declare-fun mapKey!55328 () (_ BitVec 32))

(declare-datatypes ((V!52819 0))(
  ( (V!52820 (val!17968 Int)) )
))
(declare-datatypes ((ValueCell!16995 0))(
  ( (ValueCellFull!16995 (v!20596 V!52819)) (EmptyCell!16995) )
))
(declare-fun mapRest!55328 () (Array (_ BitVec 32) ValueCell!16995))

(declare-datatypes ((array!88487 0))(
  ( (array!88488 (arr!42713 (Array (_ BitVec 32) ValueCell!16995)) (size!43264 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88487)

(declare-fun mapValue!55328 () ValueCell!16995)

(assert (=> mapNonEmpty!55328 (= (arr!42713 _values!1337) (store mapRest!55328 mapKey!55328 mapValue!55328))))

(declare-fun b!1317132 () Bool)

(declare-fun e!751567 () Bool)

(assert (=> b!1317132 (= e!751567 false)))

(declare-fun lt!586267 () Bool)

(declare-datatypes ((array!88489 0))(
  ( (array!88490 (arr!42714 (Array (_ BitVec 32) (_ BitVec 64))) (size!43265 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88489)

(declare-datatypes ((List!30477 0))(
  ( (Nil!30474) (Cons!30473 (h!31682 (_ BitVec 64)) (t!44092 List!30477)) )
))
(declare-fun arrayNoDuplicates!0 (array!88489 (_ BitVec 32) List!30477) Bool)

(assert (=> b!1317132 (= lt!586267 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30474))))

(declare-fun mapIsEmpty!55328 () Bool)

(assert (=> mapIsEmpty!55328 mapRes!55328))

(declare-fun b!1317133 () Bool)

(declare-fun e!751566 () Bool)

(assert (=> b!1317133 (= e!751566 (and e!751564 mapRes!55328))))

(declare-fun condMapEmpty!55328 () Bool)

(declare-fun mapDefault!55328 () ValueCell!16995)

(assert (=> b!1317133 (= condMapEmpty!55328 (= (arr!42713 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16995)) mapDefault!55328)))))

(declare-fun b!1317131 () Bool)

(assert (=> b!1317131 (= e!751563 tp_is_empty!35787)))

(declare-fun res!874299 () Bool)

(assert (=> start!111346 (=> (not res!874299) (not e!751567))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111346 (= res!874299 (validMask!0 mask!2019))))

(assert (=> start!111346 e!751567))

(assert (=> start!111346 true))

(declare-fun array_inv!32223 (array!88487) Bool)

(assert (=> start!111346 (and (array_inv!32223 _values!1337) e!751566)))

(declare-fun array_inv!32224 (array!88489) Bool)

(assert (=> start!111346 (array_inv!32224 _keys!1609)))

(declare-fun b!1317134 () Bool)

(declare-fun res!874298 () Bool)

(assert (=> b!1317134 (=> (not res!874298) (not e!751567))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1317134 (= res!874298 (and (= (size!43264 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43265 _keys!1609) (size!43264 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317135 () Bool)

(declare-fun res!874300 () Bool)

(assert (=> b!1317135 (=> (not res!874300) (not e!751567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88489 (_ BitVec 32)) Bool)

(assert (=> b!1317135 (= res!874300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111346 res!874299) b!1317134))

(assert (= (and b!1317134 res!874298) b!1317135))

(assert (= (and b!1317135 res!874300) b!1317132))

(assert (= (and b!1317133 condMapEmpty!55328) mapIsEmpty!55328))

(assert (= (and b!1317133 (not condMapEmpty!55328)) mapNonEmpty!55328))

(get-info :version)

(assert (= (and mapNonEmpty!55328 ((_ is ValueCellFull!16995) mapValue!55328)) b!1317131))

(assert (= (and b!1317133 ((_ is ValueCellFull!16995) mapDefault!55328)) b!1317130))

(assert (= start!111346 b!1317133))

(declare-fun m!1205103 () Bool)

(assert (=> mapNonEmpty!55328 m!1205103))

(declare-fun m!1205105 () Bool)

(assert (=> b!1317132 m!1205105))

(declare-fun m!1205107 () Bool)

(assert (=> start!111346 m!1205107))

(declare-fun m!1205109 () Bool)

(assert (=> start!111346 m!1205109))

(declare-fun m!1205111 () Bool)

(assert (=> start!111346 m!1205111))

(declare-fun m!1205113 () Bool)

(assert (=> b!1317135 m!1205113))

(check-sat (not b!1317132) tp_is_empty!35787 (not start!111346) (not b!1317135) (not mapNonEmpty!55328))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4080 () Bool)

(assert start!4080)

(declare-fun b_free!987 () Bool)

(declare-fun b_next!987 () Bool)

(assert (=> start!4080 (= b_free!987 (not b_next!987))))

(declare-fun tp!4380 () Bool)

(declare-fun b_and!1799 () Bool)

(assert (=> start!4080 (= tp!4380 b_and!1799)))

(declare-fun b!30224 () Bool)

(declare-fun e!19429 () Bool)

(declare-fun tp_is_empty!1341 () Bool)

(assert (=> b!30224 (= e!19429 tp_is_empty!1341)))

(declare-fun b!30225 () Bool)

(declare-fun e!19428 () Bool)

(assert (=> b!30225 (= e!19428 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!103 0))(
  ( (MissingZero!103 (index!2534 (_ BitVec 32))) (Found!103 (index!2535 (_ BitVec 32))) (Intermediate!103 (undefined!915 Bool) (index!2536 (_ BitVec 32)) (x!6509 (_ BitVec 32))) (Undefined!103) (MissingVacant!103 (index!2537 (_ BitVec 32))) )
))
(declare-fun lt!11406 () SeekEntryResult!103)

(declare-datatypes ((array!1899 0))(
  ( (array!1900 (arr!903 (Array (_ BitVec 32) (_ BitVec 64))) (size!1004 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1899)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1899 (_ BitVec 32)) SeekEntryResult!103)

(assert (=> b!30225 (= lt!11406 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!30226 () Bool)

(declare-fun e!19431 () Bool)

(declare-fun mapRes!1540 () Bool)

(assert (=> b!30226 (= e!19431 (and e!19429 mapRes!1540))))

(declare-fun condMapEmpty!1540 () Bool)

(declare-datatypes ((V!1613 0))(
  ( (V!1614 (val!697 Int)) )
))
(declare-datatypes ((ValueCell!471 0))(
  ( (ValueCellFull!471 (v!1786 V!1613)) (EmptyCell!471) )
))
(declare-datatypes ((array!1901 0))(
  ( (array!1902 (arr!904 (Array (_ BitVec 32) ValueCell!471)) (size!1005 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1901)

(declare-fun mapDefault!1540 () ValueCell!471)

(assert (=> b!30226 (= condMapEmpty!1540 (= (arr!904 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!471)) mapDefault!1540)))))

(declare-fun res!18172 () Bool)

(assert (=> start!4080 (=> (not res!18172) (not e!19428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4080 (= res!18172 (validMask!0 mask!2294))))

(assert (=> start!4080 e!19428))

(assert (=> start!4080 true))

(assert (=> start!4080 tp!4380))

(declare-fun array_inv!605 (array!1901) Bool)

(assert (=> start!4080 (and (array_inv!605 _values!1501) e!19431)))

(declare-fun array_inv!606 (array!1899) Bool)

(assert (=> start!4080 (array_inv!606 _keys!1833)))

(assert (=> start!4080 tp_is_empty!1341))

(declare-fun b!30227 () Bool)

(declare-fun res!18173 () Bool)

(assert (=> b!30227 (=> (not res!18173) (not e!19428))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30227 (= res!18173 (and (= (size!1005 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1004 _keys!1833) (size!1005 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30228 () Bool)

(declare-fun res!18178 () Bool)

(assert (=> b!30228 (=> (not res!18178) (not e!19428))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1613)

(declare-fun minValue!1443 () V!1613)

(declare-datatypes ((tuple2!1138 0))(
  ( (tuple2!1139 (_1!579 (_ BitVec 64)) (_2!579 V!1613)) )
))
(declare-datatypes ((List!741 0))(
  ( (Nil!738) (Cons!737 (h!1304 tuple2!1138) (t!3436 List!741)) )
))
(declare-datatypes ((ListLongMap!719 0))(
  ( (ListLongMap!720 (toList!375 List!741)) )
))
(declare-fun contains!312 (ListLongMap!719 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!202 (array!1899 array!1901 (_ BitVec 32) (_ BitVec 32) V!1613 V!1613 (_ BitVec 32) Int) ListLongMap!719)

(assert (=> b!30228 (= res!18178 (not (contains!312 (getCurrentListMap!202 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30229 () Bool)

(declare-fun res!18177 () Bool)

(assert (=> b!30229 (=> (not res!18177) (not e!19428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30229 (= res!18177 (validKeyInArray!0 k0!1304))))

(declare-fun b!30230 () Bool)

(declare-fun e!19430 () Bool)

(assert (=> b!30230 (= e!19430 tp_is_empty!1341)))

(declare-fun mapNonEmpty!1540 () Bool)

(declare-fun tp!4381 () Bool)

(assert (=> mapNonEmpty!1540 (= mapRes!1540 (and tp!4381 e!19430))))

(declare-fun mapKey!1540 () (_ BitVec 32))

(declare-fun mapRest!1540 () (Array (_ BitVec 32) ValueCell!471))

(declare-fun mapValue!1540 () ValueCell!471)

(assert (=> mapNonEmpty!1540 (= (arr!904 _values!1501) (store mapRest!1540 mapKey!1540 mapValue!1540))))

(declare-fun mapIsEmpty!1540 () Bool)

(assert (=> mapIsEmpty!1540 mapRes!1540))

(declare-fun b!30231 () Bool)

(declare-fun res!18175 () Bool)

(assert (=> b!30231 (=> (not res!18175) (not e!19428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1899 (_ BitVec 32)) Bool)

(assert (=> b!30231 (= res!18175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30232 () Bool)

(declare-fun res!18176 () Bool)

(assert (=> b!30232 (=> (not res!18176) (not e!19428))))

(declare-fun arrayContainsKey!0 (array!1899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30232 (= res!18176 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30233 () Bool)

(declare-fun res!18174 () Bool)

(assert (=> b!30233 (=> (not res!18174) (not e!19428))))

(declare-datatypes ((List!742 0))(
  ( (Nil!739) (Cons!738 (h!1305 (_ BitVec 64)) (t!3437 List!742)) )
))
(declare-fun arrayNoDuplicates!0 (array!1899 (_ BitVec 32) List!742) Bool)

(assert (=> b!30233 (= res!18174 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!739))))

(assert (= (and start!4080 res!18172) b!30227))

(assert (= (and b!30227 res!18173) b!30231))

(assert (= (and b!30231 res!18175) b!30233))

(assert (= (and b!30233 res!18174) b!30229))

(assert (= (and b!30229 res!18177) b!30228))

(assert (= (and b!30228 res!18178) b!30232))

(assert (= (and b!30232 res!18176) b!30225))

(assert (= (and b!30226 condMapEmpty!1540) mapIsEmpty!1540))

(assert (= (and b!30226 (not condMapEmpty!1540)) mapNonEmpty!1540))

(get-info :version)

(assert (= (and mapNonEmpty!1540 ((_ is ValueCellFull!471) mapValue!1540)) b!30230))

(assert (= (and b!30226 ((_ is ValueCellFull!471) mapDefault!1540)) b!30224))

(assert (= start!4080 b!30226))

(declare-fun m!24307 () Bool)

(assert (=> b!30229 m!24307))

(declare-fun m!24309 () Bool)

(assert (=> start!4080 m!24309))

(declare-fun m!24311 () Bool)

(assert (=> start!4080 m!24311))

(declare-fun m!24313 () Bool)

(assert (=> start!4080 m!24313))

(declare-fun m!24315 () Bool)

(assert (=> b!30225 m!24315))

(declare-fun m!24317 () Bool)

(assert (=> b!30233 m!24317))

(declare-fun m!24319 () Bool)

(assert (=> b!30228 m!24319))

(assert (=> b!30228 m!24319))

(declare-fun m!24321 () Bool)

(assert (=> b!30228 m!24321))

(declare-fun m!24323 () Bool)

(assert (=> b!30232 m!24323))

(declare-fun m!24325 () Bool)

(assert (=> b!30231 m!24325))

(declare-fun m!24327 () Bool)

(assert (=> mapNonEmpty!1540 m!24327))

(check-sat b_and!1799 (not b!30232) (not b_next!987) (not b!30229) (not b!30233) (not b!30228) tp_is_empty!1341 (not mapNonEmpty!1540) (not b!30225) (not b!30231) (not start!4080))
(check-sat b_and!1799 (not b_next!987))

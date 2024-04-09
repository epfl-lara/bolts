; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95652 () Bool)

(assert start!95652)

(declare-fun b_free!22269 () Bool)

(declare-fun b_next!22269 () Bool)

(assert (=> start!95652 (= b_free!22269 (not b_next!22269))))

(declare-fun tp!78656 () Bool)

(declare-fun b_and!35265 () Bool)

(assert (=> start!95652 (= tp!78656 b_and!35265)))

(declare-fun mapNonEmpty!41161 () Bool)

(declare-fun mapRes!41161 () Bool)

(declare-fun tp!78657 () Bool)

(declare-fun e!617614 () Bool)

(assert (=> mapNonEmpty!41161 (= mapRes!41161 (and tp!78657 e!617614))))

(declare-datatypes ((V!40155 0))(
  ( (V!40156 (val!13192 Int)) )
))
(declare-datatypes ((ValueCell!12426 0))(
  ( (ValueCellFull!12426 (v!15814 V!40155)) (EmptyCell!12426) )
))
(declare-datatypes ((array!69448 0))(
  ( (array!69449 (arr!33394 (Array (_ BitVec 32) ValueCell!12426)) (size!33931 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69448)

(declare-fun mapRest!41161 () (Array (_ BitVec 32) ValueCell!12426))

(declare-fun mapValue!41161 () ValueCell!12426)

(declare-fun mapKey!41161 () (_ BitVec 32))

(assert (=> mapNonEmpty!41161 (= (arr!33394 _values!874) (store mapRest!41161 mapKey!41161 mapValue!41161))))

(declare-fun b!1080307 () Bool)

(declare-fun res!720091 () Bool)

(declare-fun e!617612 () Bool)

(assert (=> b!1080307 (=> (not res!720091) (not e!617612))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69450 0))(
  ( (array!69451 (arr!33395 (Array (_ BitVec 32) (_ BitVec 64))) (size!33932 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69450)

(assert (=> b!1080307 (= res!720091 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33932 _keys!1070))))))

(declare-fun b!1080308 () Bool)

(declare-fun res!720087 () Bool)

(assert (=> b!1080308 (=> (not res!720087) (not e!617612))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69450 (_ BitVec 32)) Bool)

(assert (=> b!1080308 (= res!720087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41161 () Bool)

(assert (=> mapIsEmpty!41161 mapRes!41161))

(declare-fun b!1080309 () Bool)

(declare-fun res!720093 () Bool)

(assert (=> b!1080309 (=> (not res!720093) (not e!617612))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080309 (= res!720093 (validKeyInArray!0 k0!904))))

(declare-fun res!720094 () Bool)

(assert (=> start!95652 (=> (not res!720094) (not e!617612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95652 (= res!720094 (validMask!0 mask!1414))))

(assert (=> start!95652 e!617612))

(assert (=> start!95652 tp!78656))

(assert (=> start!95652 true))

(declare-fun tp_is_empty!26271 () Bool)

(assert (=> start!95652 tp_is_empty!26271))

(declare-fun array_inv!25648 (array!69450) Bool)

(assert (=> start!95652 (array_inv!25648 _keys!1070)))

(declare-fun e!617617 () Bool)

(declare-fun array_inv!25649 (array!69448) Bool)

(assert (=> start!95652 (and (array_inv!25649 _values!874) e!617617)))

(declare-fun b!1080310 () Bool)

(declare-fun e!617616 () Bool)

(assert (=> b!1080310 (= e!617616 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40155)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16778 0))(
  ( (tuple2!16779 (_1!8399 (_ BitVec 64)) (_2!8399 V!40155)) )
))
(declare-datatypes ((List!23400 0))(
  ( (Nil!23397) (Cons!23396 (h!24605 tuple2!16778) (t!32766 List!23400)) )
))
(declare-datatypes ((ListLongMap!14759 0))(
  ( (ListLongMap!14760 (toList!7395 List!23400)) )
))
(declare-fun lt!478974 () ListLongMap!14759)

(declare-fun zeroValue!831 () V!40155)

(declare-fun getCurrentListMapNoExtraKeys!3906 (array!69450 array!69448 (_ BitVec 32) (_ BitVec 32) V!40155 V!40155 (_ BitVec 32) Int) ListLongMap!14759)

(assert (=> b!1080310 (= lt!478974 (getCurrentListMapNoExtraKeys!3906 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080310 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35469 0))(
  ( (Unit!35470) )
))
(declare-fun lt!478976 () Unit!35469)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69450 (_ BitVec 64) (_ BitVec 32)) Unit!35469)

(assert (=> b!1080310 (= lt!478976 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080311 () Bool)

(declare-fun e!617613 () Bool)

(assert (=> b!1080311 (= e!617613 tp_is_empty!26271)))

(declare-fun b!1080312 () Bool)

(declare-fun res!720090 () Bool)

(assert (=> b!1080312 (=> (not res!720090) (not e!617612))))

(assert (=> b!1080312 (= res!720090 (and (= (size!33931 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33932 _keys!1070) (size!33931 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080313 () Bool)

(assert (=> b!1080313 (= e!617614 tp_is_empty!26271)))

(declare-fun b!1080314 () Bool)

(assert (=> b!1080314 (= e!617617 (and e!617613 mapRes!41161))))

(declare-fun condMapEmpty!41161 () Bool)

(declare-fun mapDefault!41161 () ValueCell!12426)

(assert (=> b!1080314 (= condMapEmpty!41161 (= (arr!33394 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12426)) mapDefault!41161)))))

(declare-fun b!1080315 () Bool)

(declare-fun res!720088 () Bool)

(assert (=> b!1080315 (=> (not res!720088) (not e!617612))))

(assert (=> b!1080315 (= res!720088 (= (select (arr!33395 _keys!1070) i!650) k0!904))))

(declare-fun b!1080316 () Bool)

(assert (=> b!1080316 (= e!617612 e!617616)))

(declare-fun res!720095 () Bool)

(assert (=> b!1080316 (=> (not res!720095) (not e!617616))))

(declare-fun lt!478975 () array!69450)

(assert (=> b!1080316 (= res!720095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478975 mask!1414))))

(assert (=> b!1080316 (= lt!478975 (array!69451 (store (arr!33395 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33932 _keys!1070)))))

(declare-fun b!1080317 () Bool)

(declare-fun res!720092 () Bool)

(assert (=> b!1080317 (=> (not res!720092) (not e!617612))))

(declare-datatypes ((List!23401 0))(
  ( (Nil!23398) (Cons!23397 (h!24606 (_ BitVec 64)) (t!32767 List!23401)) )
))
(declare-fun arrayNoDuplicates!0 (array!69450 (_ BitVec 32) List!23401) Bool)

(assert (=> b!1080317 (= res!720092 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23398))))

(declare-fun b!1080318 () Bool)

(declare-fun res!720089 () Bool)

(assert (=> b!1080318 (=> (not res!720089) (not e!617616))))

(assert (=> b!1080318 (= res!720089 (arrayNoDuplicates!0 lt!478975 #b00000000000000000000000000000000 Nil!23398))))

(assert (= (and start!95652 res!720094) b!1080312))

(assert (= (and b!1080312 res!720090) b!1080308))

(assert (= (and b!1080308 res!720087) b!1080317))

(assert (= (and b!1080317 res!720092) b!1080307))

(assert (= (and b!1080307 res!720091) b!1080309))

(assert (= (and b!1080309 res!720093) b!1080315))

(assert (= (and b!1080315 res!720088) b!1080316))

(assert (= (and b!1080316 res!720095) b!1080318))

(assert (= (and b!1080318 res!720089) b!1080310))

(assert (= (and b!1080314 condMapEmpty!41161) mapIsEmpty!41161))

(assert (= (and b!1080314 (not condMapEmpty!41161)) mapNonEmpty!41161))

(get-info :version)

(assert (= (and mapNonEmpty!41161 ((_ is ValueCellFull!12426) mapValue!41161)) b!1080313))

(assert (= (and b!1080314 ((_ is ValueCellFull!12426) mapDefault!41161)) b!1080311))

(assert (= start!95652 b!1080314))

(declare-fun m!998419 () Bool)

(assert (=> b!1080310 m!998419))

(declare-fun m!998421 () Bool)

(assert (=> b!1080310 m!998421))

(declare-fun m!998423 () Bool)

(assert (=> b!1080310 m!998423))

(declare-fun m!998425 () Bool)

(assert (=> b!1080315 m!998425))

(declare-fun m!998427 () Bool)

(assert (=> b!1080309 m!998427))

(declare-fun m!998429 () Bool)

(assert (=> mapNonEmpty!41161 m!998429))

(declare-fun m!998431 () Bool)

(assert (=> start!95652 m!998431))

(declare-fun m!998433 () Bool)

(assert (=> start!95652 m!998433))

(declare-fun m!998435 () Bool)

(assert (=> start!95652 m!998435))

(declare-fun m!998437 () Bool)

(assert (=> b!1080316 m!998437))

(declare-fun m!998439 () Bool)

(assert (=> b!1080316 m!998439))

(declare-fun m!998441 () Bool)

(assert (=> b!1080317 m!998441))

(declare-fun m!998443 () Bool)

(assert (=> b!1080308 m!998443))

(declare-fun m!998445 () Bool)

(assert (=> b!1080318 m!998445))

(check-sat tp_is_empty!26271 (not start!95652) b_and!35265 (not b!1080309) (not b!1080308) (not b!1080317) (not b!1080310) (not b!1080318) (not mapNonEmpty!41161) (not b!1080316) (not b_next!22269))
(check-sat b_and!35265 (not b_next!22269))

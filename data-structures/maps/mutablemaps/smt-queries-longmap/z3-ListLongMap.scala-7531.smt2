; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95528 () Bool)

(assert start!95528)

(declare-fun b!1078336 () Bool)

(declare-fun res!718625 () Bool)

(declare-fun e!616602 () Bool)

(assert (=> b!1078336 (=> (not res!718625) (not e!616602))))

(declare-datatypes ((array!69240 0))(
  ( (array!69241 (arr!33291 (Array (_ BitVec 32) (_ BitVec 64))) (size!33828 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69240)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69240 (_ BitVec 32)) Bool)

(assert (=> b!1078336 (= res!718625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078337 () Bool)

(declare-fun e!616605 () Bool)

(declare-fun tp_is_empty!26163 () Bool)

(assert (=> b!1078337 (= e!616605 tp_is_empty!26163)))

(declare-fun b!1078338 () Bool)

(declare-fun res!718628 () Bool)

(assert (=> b!1078338 (=> (not res!718628) (not e!616602))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078338 (= res!718628 (validKeyInArray!0 k0!904))))

(declare-fun b!1078339 () Bool)

(declare-fun res!718626 () Bool)

(assert (=> b!1078339 (=> (not res!718626) (not e!616602))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078339 (= res!718626 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33828 _keys!1070))))))

(declare-fun b!1078340 () Bool)

(declare-fun e!616604 () Bool)

(assert (=> b!1078340 (= e!616604 false)))

(declare-fun lt!478603 () Bool)

(declare-fun lt!478604 () array!69240)

(declare-datatypes ((List!23351 0))(
  ( (Nil!23348) (Cons!23347 (h!24556 (_ BitVec 64)) (t!32717 List!23351)) )
))
(declare-fun arrayNoDuplicates!0 (array!69240 (_ BitVec 32) List!23351) Bool)

(assert (=> b!1078340 (= lt!478603 (arrayNoDuplicates!0 lt!478604 #b00000000000000000000000000000000 Nil!23348))))

(declare-fun b!1078341 () Bool)

(declare-fun res!718632 () Bool)

(assert (=> b!1078341 (=> (not res!718632) (not e!616602))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40011 0))(
  ( (V!40012 (val!13138 Int)) )
))
(declare-datatypes ((ValueCell!12372 0))(
  ( (ValueCellFull!12372 (v!15760 V!40011)) (EmptyCell!12372) )
))
(declare-datatypes ((array!69242 0))(
  ( (array!69243 (arr!33292 (Array (_ BitVec 32) ValueCell!12372)) (size!33829 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69242)

(assert (=> b!1078341 (= res!718632 (and (= (size!33829 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33828 _keys!1070) (size!33829 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078342 () Bool)

(declare-fun e!616601 () Bool)

(assert (=> b!1078342 (= e!616601 tp_is_empty!26163)))

(declare-fun mapIsEmpty!40996 () Bool)

(declare-fun mapRes!40996 () Bool)

(assert (=> mapIsEmpty!40996 mapRes!40996))

(declare-fun b!1078343 () Bool)

(assert (=> b!1078343 (= e!616602 e!616604)))

(declare-fun res!718629 () Bool)

(assert (=> b!1078343 (=> (not res!718629) (not e!616604))))

(assert (=> b!1078343 (= res!718629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478604 mask!1414))))

(assert (=> b!1078343 (= lt!478604 (array!69241 (store (arr!33291 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33828 _keys!1070)))))

(declare-fun b!1078344 () Bool)

(declare-fun res!718630 () Bool)

(assert (=> b!1078344 (=> (not res!718630) (not e!616602))))

(assert (=> b!1078344 (= res!718630 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23348))))

(declare-fun b!1078335 () Bool)

(declare-fun e!616600 () Bool)

(assert (=> b!1078335 (= e!616600 (and e!616601 mapRes!40996))))

(declare-fun condMapEmpty!40996 () Bool)

(declare-fun mapDefault!40996 () ValueCell!12372)

(assert (=> b!1078335 (= condMapEmpty!40996 (= (arr!33292 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12372)) mapDefault!40996)))))

(declare-fun res!718631 () Bool)

(assert (=> start!95528 (=> (not res!718631) (not e!616602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95528 (= res!718631 (validMask!0 mask!1414))))

(assert (=> start!95528 e!616602))

(assert (=> start!95528 true))

(declare-fun array_inv!25582 (array!69240) Bool)

(assert (=> start!95528 (array_inv!25582 _keys!1070)))

(declare-fun array_inv!25583 (array!69242) Bool)

(assert (=> start!95528 (and (array_inv!25583 _values!874) e!616600)))

(declare-fun mapNonEmpty!40996 () Bool)

(declare-fun tp!78459 () Bool)

(assert (=> mapNonEmpty!40996 (= mapRes!40996 (and tp!78459 e!616605))))

(declare-fun mapValue!40996 () ValueCell!12372)

(declare-fun mapRest!40996 () (Array (_ BitVec 32) ValueCell!12372))

(declare-fun mapKey!40996 () (_ BitVec 32))

(assert (=> mapNonEmpty!40996 (= (arr!33292 _values!874) (store mapRest!40996 mapKey!40996 mapValue!40996))))

(declare-fun b!1078345 () Bool)

(declare-fun res!718627 () Bool)

(assert (=> b!1078345 (=> (not res!718627) (not e!616602))))

(assert (=> b!1078345 (= res!718627 (= (select (arr!33291 _keys!1070) i!650) k0!904))))

(assert (= (and start!95528 res!718631) b!1078341))

(assert (= (and b!1078341 res!718632) b!1078336))

(assert (= (and b!1078336 res!718625) b!1078344))

(assert (= (and b!1078344 res!718630) b!1078339))

(assert (= (and b!1078339 res!718626) b!1078338))

(assert (= (and b!1078338 res!718628) b!1078345))

(assert (= (and b!1078345 res!718627) b!1078343))

(assert (= (and b!1078343 res!718629) b!1078340))

(assert (= (and b!1078335 condMapEmpty!40996) mapIsEmpty!40996))

(assert (= (and b!1078335 (not condMapEmpty!40996)) mapNonEmpty!40996))

(get-info :version)

(assert (= (and mapNonEmpty!40996 ((_ is ValueCellFull!12372) mapValue!40996)) b!1078337))

(assert (= (and b!1078335 ((_ is ValueCellFull!12372) mapDefault!40996)) b!1078342))

(assert (= start!95528 b!1078335))

(declare-fun m!996989 () Bool)

(assert (=> b!1078344 m!996989))

(declare-fun m!996991 () Bool)

(assert (=> mapNonEmpty!40996 m!996991))

(declare-fun m!996993 () Bool)

(assert (=> b!1078343 m!996993))

(declare-fun m!996995 () Bool)

(assert (=> b!1078343 m!996995))

(declare-fun m!996997 () Bool)

(assert (=> b!1078340 m!996997))

(declare-fun m!996999 () Bool)

(assert (=> b!1078338 m!996999))

(declare-fun m!997001 () Bool)

(assert (=> b!1078336 m!997001))

(declare-fun m!997003 () Bool)

(assert (=> b!1078345 m!997003))

(declare-fun m!997005 () Bool)

(assert (=> start!95528 m!997005))

(declare-fun m!997007 () Bool)

(assert (=> start!95528 m!997007))

(declare-fun m!997009 () Bool)

(assert (=> start!95528 m!997009))

(check-sat (not mapNonEmpty!40996) (not b!1078340) (not b!1078338) (not b!1078344) (not b!1078336) (not b!1078343) (not start!95528) tp_is_empty!26163)
(check-sat)

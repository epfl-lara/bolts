; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95432 () Bool)

(assert start!95432)

(declare-fun mapNonEmpty!40906 () Bool)

(declare-fun mapRes!40906 () Bool)

(declare-fun tp!78369 () Bool)

(declare-fun e!616065 () Bool)

(assert (=> mapNonEmpty!40906 (= mapRes!40906 (and tp!78369 e!616065))))

(declare-datatypes ((V!39939 0))(
  ( (V!39940 (val!13111 Int)) )
))
(declare-datatypes ((ValueCell!12345 0))(
  ( (ValueCellFull!12345 (v!15732 V!39939)) (EmptyCell!12345) )
))
(declare-fun mapRest!40906 () (Array (_ BitVec 32) ValueCell!12345))

(declare-fun mapKey!40906 () (_ BitVec 32))

(declare-fun mapValue!40906 () ValueCell!12345)

(declare-datatypes ((array!69128 0))(
  ( (array!69129 (arr!33238 (Array (_ BitVec 32) ValueCell!12345)) (size!33775 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69128)

(assert (=> mapNonEmpty!40906 (= (arr!33238 _values!874) (store mapRest!40906 mapKey!40906 mapValue!40906))))

(declare-fun b!1077372 () Bool)

(declare-fun res!717972 () Bool)

(declare-fun e!616064 () Bool)

(assert (=> b!1077372 (=> (not res!717972) (not e!616064))))

(declare-datatypes ((array!69130 0))(
  ( (array!69131 (arr!33239 (Array (_ BitVec 32) (_ BitVec 64))) (size!33776 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69130)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69130 (_ BitVec 32)) Bool)

(assert (=> b!1077372 (= res!717972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!717973 () Bool)

(assert (=> start!95432 (=> (not res!717973) (not e!616064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95432 (= res!717973 (validMask!0 mask!1414))))

(assert (=> start!95432 e!616064))

(assert (=> start!95432 true))

(declare-fun e!616063 () Bool)

(declare-fun array_inv!25540 (array!69128) Bool)

(assert (=> start!95432 (and (array_inv!25540 _values!874) e!616063)))

(declare-fun array_inv!25541 (array!69130) Bool)

(assert (=> start!95432 (array_inv!25541 _keys!1070)))

(declare-fun b!1077373 () Bool)

(declare-fun res!717971 () Bool)

(assert (=> b!1077373 (=> (not res!717971) (not e!616064))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077373 (= res!717971 (and (= (size!33775 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33776 _keys!1070) (size!33775 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077374 () Bool)

(declare-fun e!616066 () Bool)

(declare-fun tp_is_empty!26109 () Bool)

(assert (=> b!1077374 (= e!616066 tp_is_empty!26109)))

(declare-fun b!1077375 () Bool)

(assert (=> b!1077375 (= e!616065 tp_is_empty!26109)))

(declare-fun b!1077376 () Bool)

(assert (=> b!1077376 (= e!616064 false)))

(declare-fun lt!478522 () Bool)

(declare-datatypes ((List!23332 0))(
  ( (Nil!23329) (Cons!23328 (h!24537 (_ BitVec 64)) (t!32698 List!23332)) )
))
(declare-fun arrayNoDuplicates!0 (array!69130 (_ BitVec 32) List!23332) Bool)

(assert (=> b!1077376 (= lt!478522 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23329))))

(declare-fun b!1077377 () Bool)

(assert (=> b!1077377 (= e!616063 (and e!616066 mapRes!40906))))

(declare-fun condMapEmpty!40906 () Bool)

(declare-fun mapDefault!40906 () ValueCell!12345)

(assert (=> b!1077377 (= condMapEmpty!40906 (= (arr!33238 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12345)) mapDefault!40906)))))

(declare-fun mapIsEmpty!40906 () Bool)

(assert (=> mapIsEmpty!40906 mapRes!40906))

(assert (= (and start!95432 res!717973) b!1077373))

(assert (= (and b!1077373 res!717971) b!1077372))

(assert (= (and b!1077372 res!717972) b!1077376))

(assert (= (and b!1077377 condMapEmpty!40906) mapIsEmpty!40906))

(assert (= (and b!1077377 (not condMapEmpty!40906)) mapNonEmpty!40906))

(get-info :version)

(assert (= (and mapNonEmpty!40906 ((_ is ValueCellFull!12345) mapValue!40906)) b!1077375))

(assert (= (and b!1077377 ((_ is ValueCellFull!12345) mapDefault!40906)) b!1077374))

(assert (= start!95432 b!1077377))

(declare-fun m!996373 () Bool)

(assert (=> mapNonEmpty!40906 m!996373))

(declare-fun m!996375 () Bool)

(assert (=> b!1077372 m!996375))

(declare-fun m!996377 () Bool)

(assert (=> start!95432 m!996377))

(declare-fun m!996379 () Bool)

(assert (=> start!95432 m!996379))

(declare-fun m!996381 () Bool)

(assert (=> start!95432 m!996381))

(declare-fun m!996383 () Bool)

(assert (=> b!1077376 m!996383))

(check-sat (not mapNonEmpty!40906) tp_is_empty!26109 (not b!1077372) (not start!95432) (not b!1077376))
(check-sat)

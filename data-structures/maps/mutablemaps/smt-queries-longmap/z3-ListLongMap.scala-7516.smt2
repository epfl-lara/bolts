; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95352 () Bool)

(assert start!95352)

(declare-fun mapNonEmpty!40837 () Bool)

(declare-fun mapRes!40837 () Bool)

(declare-fun tp!78300 () Bool)

(declare-fun e!615701 () Bool)

(assert (=> mapNonEmpty!40837 (= mapRes!40837 (and tp!78300 e!615701))))

(declare-datatypes ((V!39891 0))(
  ( (V!39892 (val!13093 Int)) )
))
(declare-datatypes ((ValueCell!12327 0))(
  ( (ValueCellFull!12327 (v!15713 V!39891)) (EmptyCell!12327) )
))
(declare-datatypes ((array!69060 0))(
  ( (array!69061 (arr!33209 (Array (_ BitVec 32) ValueCell!12327)) (size!33746 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69060)

(declare-fun mapValue!40837 () ValueCell!12327)

(declare-fun mapRest!40837 () (Array (_ BitVec 32) ValueCell!12327))

(declare-fun mapKey!40837 () (_ BitVec 32))

(assert (=> mapNonEmpty!40837 (= (arr!33209 _values!874) (store mapRest!40837 mapKey!40837 mapValue!40837))))

(declare-fun b!1076930 () Bool)

(declare-fun e!615697 () Bool)

(declare-fun tp_is_empty!26073 () Bool)

(assert (=> b!1076930 (= e!615697 tp_is_empty!26073)))

(declare-fun b!1076931 () Bool)

(declare-fun e!615700 () Bool)

(assert (=> b!1076931 (= e!615700 (and e!615697 mapRes!40837))))

(declare-fun condMapEmpty!40837 () Bool)

(declare-fun mapDefault!40837 () ValueCell!12327)

(assert (=> b!1076931 (= condMapEmpty!40837 (= (arr!33209 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12327)) mapDefault!40837)))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun b!1076932 () Bool)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun e!615698 () Bool)

(declare-datatypes ((array!69062 0))(
  ( (array!69063 (arr!33210 (Array (_ BitVec 32) (_ BitVec 64))) (size!33747 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69062)

(assert (=> b!1076932 (= e!615698 (and (= (size!33746 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33747 _keys!1070) (size!33746 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011) (not (= (size!33747 _keys!1070) (bvadd #b00000000000000000000000000000001 mask!1414)))))))

(declare-fun b!1076933 () Bool)

(assert (=> b!1076933 (= e!615701 tp_is_empty!26073)))

(declare-fun res!717755 () Bool)

(assert (=> start!95352 (=> (not res!717755) (not e!615698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95352 (= res!717755 (validMask!0 mask!1414))))

(assert (=> start!95352 e!615698))

(assert (=> start!95352 true))

(declare-fun array_inv!25518 (array!69060) Bool)

(assert (=> start!95352 (and (array_inv!25518 _values!874) e!615700)))

(declare-fun array_inv!25519 (array!69062) Bool)

(assert (=> start!95352 (array_inv!25519 _keys!1070)))

(declare-fun mapIsEmpty!40837 () Bool)

(assert (=> mapIsEmpty!40837 mapRes!40837))

(assert (= (and start!95352 res!717755) b!1076932))

(assert (= (and b!1076931 condMapEmpty!40837) mapIsEmpty!40837))

(assert (= (and b!1076931 (not condMapEmpty!40837)) mapNonEmpty!40837))

(get-info :version)

(assert (= (and mapNonEmpty!40837 ((_ is ValueCellFull!12327) mapValue!40837)) b!1076933))

(assert (= (and b!1076931 ((_ is ValueCellFull!12327) mapDefault!40837)) b!1076930))

(assert (= start!95352 b!1076931))

(declare-fun m!996101 () Bool)

(assert (=> mapNonEmpty!40837 m!996101))

(declare-fun m!996103 () Bool)

(assert (=> start!95352 m!996103))

(declare-fun m!996105 () Bool)

(assert (=> start!95352 m!996105))

(declare-fun m!996107 () Bool)

(assert (=> start!95352 m!996107))

(check-sat (not start!95352) (not mapNonEmpty!40837) tp_is_empty!26073)
(check-sat)

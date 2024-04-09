; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78068 () Bool)

(assert start!78068)

(declare-fun b_free!16567 () Bool)

(declare-fun b_next!16567 () Bool)

(assert (=> start!78068 (= b_free!16567 (not b_next!16567))))

(declare-fun tp!57973 () Bool)

(declare-fun b_and!27157 () Bool)

(assert (=> start!78068 (= tp!57973 b_and!27157)))

(declare-fun mapNonEmpty!30199 () Bool)

(declare-fun mapRes!30199 () Bool)

(declare-fun tp!57972 () Bool)

(declare-fun e!510788 () Bool)

(assert (=> mapNonEmpty!30199 (= mapRes!30199 (and tp!57972 e!510788))))

(declare-datatypes ((V!30279 0))(
  ( (V!30280 (val!9543 Int)) )
))
(declare-datatypes ((ValueCell!9011 0))(
  ( (ValueCellFull!9011 (v!12052 V!30279)) (EmptyCell!9011) )
))
(declare-datatypes ((array!53980 0))(
  ( (array!53981 (arr!25942 (Array (_ BitVec 32) ValueCell!9011)) (size!26402 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53980)

(declare-fun mapKey!30199 () (_ BitVec 32))

(declare-fun mapValue!30199 () ValueCell!9011)

(declare-fun mapRest!30199 () (Array (_ BitVec 32) ValueCell!9011))

(assert (=> mapNonEmpty!30199 (= (arr!25942 _values!1152) (store mapRest!30199 mapKey!30199 mapValue!30199))))

(declare-fun b!910818 () Bool)

(declare-fun res!614679 () Bool)

(declare-fun e!510784 () Bool)

(assert (=> b!910818 (=> (not res!614679) (not e!510784))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53982 0))(
  ( (array!53983 (arr!25943 (Array (_ BitVec 32) (_ BitVec 64))) (size!26403 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53982)

(assert (=> b!910818 (= res!614679 (and (= (size!26402 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26403 _keys!1386) (size!26402 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30199 () Bool)

(assert (=> mapIsEmpty!30199 mapRes!30199))

(declare-fun res!614678 () Bool)

(assert (=> start!78068 (=> (not res!614678) (not e!510784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78068 (= res!614678 (validMask!0 mask!1756))))

(assert (=> start!78068 e!510784))

(declare-fun e!510785 () Bool)

(declare-fun array_inv!20266 (array!53980) Bool)

(assert (=> start!78068 (and (array_inv!20266 _values!1152) e!510785)))

(assert (=> start!78068 tp!57973))

(assert (=> start!78068 true))

(declare-fun tp_is_empty!18985 () Bool)

(assert (=> start!78068 tp_is_empty!18985))

(declare-fun array_inv!20267 (array!53982) Bool)

(assert (=> start!78068 (array_inv!20267 _keys!1386)))

(declare-fun b!910819 () Bool)

(assert (=> b!910819 (= e!510788 tp_is_empty!18985)))

(declare-fun b!910820 () Bool)

(declare-fun e!510786 () Bool)

(assert (=> b!910820 (= e!510785 (and e!510786 mapRes!30199))))

(declare-fun condMapEmpty!30199 () Bool)

(declare-fun mapDefault!30199 () ValueCell!9011)


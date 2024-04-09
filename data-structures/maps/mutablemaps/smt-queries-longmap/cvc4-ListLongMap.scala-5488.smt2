; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72744 () Bool)

(assert start!72744)

(declare-fun b!843833 () Bool)

(declare-fun e!470937 () Bool)

(declare-fun tp_is_empty!15767 () Bool)

(assert (=> b!843833 (= e!470937 tp_is_empty!15767)))

(declare-fun mapNonEmpty!25250 () Bool)

(declare-fun mapRes!25250 () Bool)

(declare-fun tp!48569 () Bool)

(assert (=> mapNonEmpty!25250 (= mapRes!25250 (and tp!48569 e!470937))))

(declare-datatypes ((V!26069 0))(
  ( (V!26070 (val!7931 Int)) )
))
(declare-datatypes ((ValueCell!7444 0))(
  ( (ValueCellFull!7444 (v!10352 V!26069)) (EmptyCell!7444) )
))
(declare-fun mapValue!25250 () ValueCell!7444)

(declare-fun mapRest!25250 () (Array (_ BitVec 32) ValueCell!7444))

(declare-fun mapKey!25250 () (_ BitVec 32))

(declare-datatypes ((array!47758 0))(
  ( (array!47759 (arr!22906 (Array (_ BitVec 32) ValueCell!7444)) (size!23347 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47758)

(assert (=> mapNonEmpty!25250 (= (arr!22906 _values!688) (store mapRest!25250 mapKey!25250 mapValue!25250))))

(declare-fun b!843834 () Bool)

(declare-fun res!573485 () Bool)

(declare-fun e!470939 () Bool)

(assert (=> b!843834 (=> (not res!573485) (not e!470939))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47760 0))(
  ( (array!47761 (arr!22907 (Array (_ BitVec 32) (_ BitVec 64))) (size!23348 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47760)

(assert (=> b!843834 (= res!573485 (and (= (size!23347 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23348 _keys!868) (size!23347 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843835 () Bool)

(assert (=> b!843835 (= e!470939 false)))

(declare-fun lt!381162 () Bool)

(declare-datatypes ((List!16325 0))(
  ( (Nil!16322) (Cons!16321 (h!17452 (_ BitVec 64)) (t!22704 List!16325)) )
))
(declare-fun arrayNoDuplicates!0 (array!47760 (_ BitVec 32) List!16325) Bool)

(assert (=> b!843835 (= lt!381162 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16322))))

(declare-fun b!843836 () Bool)

(declare-fun e!470940 () Bool)

(declare-fun e!470936 () Bool)

(assert (=> b!843836 (= e!470940 (and e!470936 mapRes!25250))))

(declare-fun condMapEmpty!25250 () Bool)

(declare-fun mapDefault!25250 () ValueCell!7444)


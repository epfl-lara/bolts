; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72782 () Bool)

(assert start!72782)

(declare-fun b!844232 () Bool)

(declare-fun e!471221 () Bool)

(declare-fun tp_is_empty!15805 () Bool)

(assert (=> b!844232 (= e!471221 tp_is_empty!15805)))

(declare-fun mapNonEmpty!25307 () Bool)

(declare-fun mapRes!25307 () Bool)

(declare-fun tp!48626 () Bool)

(declare-fun e!471224 () Bool)

(assert (=> mapNonEmpty!25307 (= mapRes!25307 (and tp!48626 e!471224))))

(declare-datatypes ((V!26121 0))(
  ( (V!26122 (val!7950 Int)) )
))
(declare-datatypes ((ValueCell!7463 0))(
  ( (ValueCellFull!7463 (v!10371 V!26121)) (EmptyCell!7463) )
))
(declare-fun mapRest!25307 () (Array (_ BitVec 32) ValueCell!7463))

(declare-fun mapValue!25307 () ValueCell!7463)

(declare-fun mapKey!25307 () (_ BitVec 32))

(declare-datatypes ((array!47826 0))(
  ( (array!47827 (arr!22940 (Array (_ BitVec 32) ValueCell!7463)) (size!23381 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47826)

(assert (=> mapNonEmpty!25307 (= (arr!22940 _values!688) (store mapRest!25307 mapKey!25307 mapValue!25307))))

(declare-fun b!844233 () Bool)

(declare-fun res!573714 () Bool)

(declare-fun e!471223 () Bool)

(assert (=> b!844233 (=> (not res!573714) (not e!471223))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47828 0))(
  ( (array!47829 (arr!22941 (Array (_ BitVec 32) (_ BitVec 64))) (size!23382 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47828)

(assert (=> b!844233 (= res!573714 (and (= (size!23381 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23382 _keys!868) (size!23381 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!573713 () Bool)

(assert (=> start!72782 (=> (not res!573713) (not e!471223))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72782 (= res!573713 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23382 _keys!868))))))

(assert (=> start!72782 e!471223))

(assert (=> start!72782 true))

(declare-fun array_inv!18224 (array!47828) Bool)

(assert (=> start!72782 (array_inv!18224 _keys!868)))

(declare-fun e!471222 () Bool)

(declare-fun array_inv!18225 (array!47826) Bool)

(assert (=> start!72782 (and (array_inv!18225 _values!688) e!471222)))

(declare-fun b!844234 () Bool)

(declare-fun res!573711 () Bool)

(assert (=> b!844234 (=> (not res!573711) (not e!471223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47828 (_ BitVec 32)) Bool)

(assert (=> b!844234 (= res!573711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844235 () Bool)

(assert (=> b!844235 (= e!471222 (and e!471221 mapRes!25307))))

(declare-fun condMapEmpty!25307 () Bool)

(declare-fun mapDefault!25307 () ValueCell!7463)


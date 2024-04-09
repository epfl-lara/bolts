; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72780 () Bool)

(assert start!72780)

(declare-fun b!844211 () Bool)

(declare-fun res!573701 () Bool)

(declare-fun e!471209 () Bool)

(assert (=> b!844211 (=> (not res!573701) (not e!471209))))

(declare-datatypes ((array!47822 0))(
  ( (array!47823 (arr!22938 (Array (_ BitVec 32) (_ BitVec 64))) (size!23379 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47822)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47822 (_ BitVec 32)) Bool)

(assert (=> b!844211 (= res!573701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844212 () Bool)

(declare-fun res!573702 () Bool)

(assert (=> b!844212 (=> (not res!573702) (not e!471209))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26117 0))(
  ( (V!26118 (val!7949 Int)) )
))
(declare-datatypes ((ValueCell!7462 0))(
  ( (ValueCellFull!7462 (v!10370 V!26117)) (EmptyCell!7462) )
))
(declare-datatypes ((array!47824 0))(
  ( (array!47825 (arr!22939 (Array (_ BitVec 32) ValueCell!7462)) (size!23380 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47824)

(assert (=> b!844212 (= res!573702 (and (= (size!23380 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23379 _keys!868) (size!23380 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25304 () Bool)

(declare-fun mapRes!25304 () Bool)

(declare-fun tp!48623 () Bool)

(declare-fun e!471208 () Bool)

(assert (=> mapNonEmpty!25304 (= mapRes!25304 (and tp!48623 e!471208))))

(declare-fun mapValue!25304 () ValueCell!7462)

(declare-fun mapRest!25304 () (Array (_ BitVec 32) ValueCell!7462))

(declare-fun mapKey!25304 () (_ BitVec 32))

(assert (=> mapNonEmpty!25304 (= (arr!22939 _values!688) (store mapRest!25304 mapKey!25304 mapValue!25304))))

(declare-fun b!844213 () Bool)

(declare-fun e!471207 () Bool)

(declare-fun e!471206 () Bool)

(assert (=> b!844213 (= e!471207 (and e!471206 mapRes!25304))))

(declare-fun condMapEmpty!25304 () Bool)

(declare-fun mapDefault!25304 () ValueCell!7462)


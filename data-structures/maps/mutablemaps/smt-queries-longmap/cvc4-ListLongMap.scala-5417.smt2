; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72318 () Bool)

(assert start!72318)

(declare-fun b!837416 () Bool)

(declare-fun e!467419 () Bool)

(declare-fun tp_is_empty!15341 () Bool)

(assert (=> b!837416 (= e!467419 tp_is_empty!15341)))

(declare-fun b!837417 () Bool)

(declare-fun res!569634 () Bool)

(declare-fun e!467421 () Bool)

(assert (=> b!837417 (=> (not res!569634) (not e!467421))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837417 (= res!569634 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24611 () Bool)

(declare-fun mapRes!24611 () Bool)

(assert (=> mapIsEmpty!24611 mapRes!24611))

(declare-fun b!837418 () Bool)

(declare-fun e!467420 () Bool)

(assert (=> b!837418 (= e!467420 tp_is_empty!15341)))

(declare-fun mapNonEmpty!24611 () Bool)

(declare-fun tp!47606 () Bool)

(assert (=> mapNonEmpty!24611 (= mapRes!24611 (and tp!47606 e!467419))))

(declare-datatypes ((V!25501 0))(
  ( (V!25502 (val!7718 Int)) )
))
(declare-datatypes ((ValueCell!7231 0))(
  ( (ValueCellFull!7231 (v!10139 V!25501)) (EmptyCell!7231) )
))
(declare-fun mapRest!24611 () (Array (_ BitVec 32) ValueCell!7231))

(declare-fun mapValue!24611 () ValueCell!7231)

(declare-datatypes ((array!46942 0))(
  ( (array!46943 (arr!22498 (Array (_ BitVec 32) ValueCell!7231)) (size!22939 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46942)

(declare-fun mapKey!24611 () (_ BitVec 32))

(assert (=> mapNonEmpty!24611 (= (arr!22498 _values!688) (store mapRest!24611 mapKey!24611 mapValue!24611))))

(declare-fun b!837420 () Bool)

(declare-fun res!569631 () Bool)

(assert (=> b!837420 (=> (not res!569631) (not e!467421))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!46944 0))(
  ( (array!46945 (arr!22499 (Array (_ BitVec 32) (_ BitVec 64))) (size!22940 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46944)

(assert (=> b!837420 (= res!569631 (and (= (size!22939 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22940 _keys!868) (size!22939 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837421 () Bool)

(declare-fun e!467417 () Bool)

(assert (=> b!837421 (= e!467417 (and e!467420 mapRes!24611))))

(declare-fun condMapEmpty!24611 () Bool)

(declare-fun mapDefault!24611 () ValueCell!7231)


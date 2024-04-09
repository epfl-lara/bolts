; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72324 () Bool)

(assert start!72324)

(declare-fun b!837479 () Bool)

(declare-fun e!467465 () Bool)

(declare-fun tp_is_empty!15347 () Bool)

(assert (=> b!837479 (= e!467465 tp_is_empty!15347)))

(declare-fun b!837480 () Bool)

(declare-fun res!569667 () Bool)

(declare-fun e!467466 () Bool)

(assert (=> b!837480 (=> (not res!569667) (not e!467466))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!46954 0))(
  ( (array!46955 (arr!22504 (Array (_ BitVec 32) (_ BitVec 64))) (size!22945 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46954)

(declare-datatypes ((V!25509 0))(
  ( (V!25510 (val!7721 Int)) )
))
(declare-datatypes ((ValueCell!7234 0))(
  ( (ValueCellFull!7234 (v!10142 V!25509)) (EmptyCell!7234) )
))
(declare-datatypes ((array!46956 0))(
  ( (array!46957 (arr!22505 (Array (_ BitVec 32) ValueCell!7234)) (size!22946 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46956)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!837480 (= res!569667 (and (= (size!22946 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22945 _keys!868) (size!22946 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!24620 () Bool)

(declare-fun mapRes!24620 () Bool)

(assert (=> mapIsEmpty!24620 mapRes!24620))

(declare-fun b!837481 () Bool)

(declare-fun res!569668 () Bool)

(assert (=> b!837481 (=> (not res!569668) (not e!467466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837481 (= res!569668 (validMask!0 mask!1196))))

(declare-fun b!837482 () Bool)

(declare-fun e!467463 () Bool)

(assert (=> b!837482 (= e!467463 (and e!467465 mapRes!24620))))

(declare-fun condMapEmpty!24620 () Bool)

(declare-fun mapDefault!24620 () ValueCell!7234)


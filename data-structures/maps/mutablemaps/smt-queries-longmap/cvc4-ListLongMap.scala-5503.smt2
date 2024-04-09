; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72834 () Bool)

(assert start!72834)

(declare-fun b!844778 () Bool)

(declare-fun res!574025 () Bool)

(declare-fun e!471612 () Bool)

(assert (=> b!844778 (=> (not res!574025) (not e!471612))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47926 0))(
  ( (array!47927 (arr!22990 (Array (_ BitVec 32) (_ BitVec 64))) (size!23431 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47926)

(declare-datatypes ((V!26189 0))(
  ( (V!26190 (val!7976 Int)) )
))
(declare-datatypes ((ValueCell!7489 0))(
  ( (ValueCellFull!7489 (v!10397 V!26189)) (EmptyCell!7489) )
))
(declare-datatypes ((array!47928 0))(
  ( (array!47929 (arr!22991 (Array (_ BitVec 32) ValueCell!7489)) (size!23432 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47928)

(assert (=> b!844778 (= res!574025 (and (= (size!23432 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23431 _keys!868) (size!23432 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844779 () Bool)

(declare-fun e!471611 () Bool)

(declare-fun e!471615 () Bool)

(declare-fun mapRes!25385 () Bool)

(assert (=> b!844779 (= e!471611 (and e!471615 mapRes!25385))))

(declare-fun condMapEmpty!25385 () Bool)

(declare-fun mapDefault!25385 () ValueCell!7489)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72344 () Bool)

(assert start!72344)

(declare-fun res!569788 () Bool)

(declare-fun e!467615 () Bool)

(assert (=> start!72344 (=> (not res!569788) (not e!467615))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46994 0))(
  ( (array!46995 (arr!22524 (Array (_ BitVec 32) (_ BitVec 64))) (size!22965 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46994)

(assert (=> start!72344 (= res!569788 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22965 _keys!868))))))

(assert (=> start!72344 e!467615))

(assert (=> start!72344 true))

(declare-fun array_inv!17920 (array!46994) Bool)

(assert (=> start!72344 (array_inv!17920 _keys!868)))

(declare-datatypes ((V!25537 0))(
  ( (V!25538 (val!7731 Int)) )
))
(declare-datatypes ((ValueCell!7244 0))(
  ( (ValueCellFull!7244 (v!10152 V!25537)) (EmptyCell!7244) )
))
(declare-datatypes ((array!46996 0))(
  ( (array!46997 (arr!22525 (Array (_ BitVec 32) ValueCell!7244)) (size!22966 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46996)

(declare-fun e!467612 () Bool)

(declare-fun array_inv!17921 (array!46996) Bool)

(assert (=> start!72344 (and (array_inv!17921 _values!688) e!467612)))

(declare-fun mapIsEmpty!24650 () Bool)

(declare-fun mapRes!24650 () Bool)

(assert (=> mapIsEmpty!24650 mapRes!24650))

(declare-fun b!837689 () Bool)

(declare-fun res!569789 () Bool)

(assert (=> b!837689 (=> (not res!569789) (not e!467615))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46994 (_ BitVec 32)) Bool)

(assert (=> b!837689 (= res!569789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837690 () Bool)

(declare-fun e!467614 () Bool)

(declare-fun tp_is_empty!15367 () Bool)

(assert (=> b!837690 (= e!467614 tp_is_empty!15367)))

(declare-fun b!837691 () Bool)

(declare-fun e!467616 () Bool)

(assert (=> b!837691 (= e!467612 (and e!467616 mapRes!24650))))

(declare-fun condMapEmpty!24650 () Bool)

(declare-fun mapDefault!24650 () ValueCell!7244)


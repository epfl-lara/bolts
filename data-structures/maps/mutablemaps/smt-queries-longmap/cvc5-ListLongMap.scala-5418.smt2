; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72320 () Bool)

(assert start!72320)

(declare-fun b!837437 () Bool)

(declare-fun e!467435 () Bool)

(assert (=> b!837437 (= e!467435 false)))

(declare-fun lt!380526 () Bool)

(declare-datatypes ((array!46946 0))(
  ( (array!46947 (arr!22500 (Array (_ BitVec 32) (_ BitVec 64))) (size!22941 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46946)

(declare-datatypes ((List!16084 0))(
  ( (Nil!16081) (Cons!16080 (h!17211 (_ BitVec 64)) (t!22463 List!16084)) )
))
(declare-fun arrayNoDuplicates!0 (array!46946 (_ BitVec 32) List!16084) Bool)

(assert (=> b!837437 (= lt!380526 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16081))))

(declare-fun b!837438 () Bool)

(declare-fun res!569646 () Bool)

(assert (=> b!837438 (=> (not res!569646) (not e!467435))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837438 (= res!569646 (validMask!0 mask!1196))))

(declare-fun b!837439 () Bool)

(declare-fun e!467433 () Bool)

(declare-fun tp_is_empty!15343 () Bool)

(assert (=> b!837439 (= e!467433 tp_is_empty!15343)))

(declare-fun b!837440 () Bool)

(declare-fun e!467434 () Bool)

(declare-fun e!467436 () Bool)

(declare-fun mapRes!24614 () Bool)

(assert (=> b!837440 (= e!467434 (and e!467436 mapRes!24614))))

(declare-fun condMapEmpty!24614 () Bool)

(declare-datatypes ((V!25505 0))(
  ( (V!25506 (val!7719 Int)) )
))
(declare-datatypes ((ValueCell!7232 0))(
  ( (ValueCellFull!7232 (v!10140 V!25505)) (EmptyCell!7232) )
))
(declare-datatypes ((array!46948 0))(
  ( (array!46949 (arr!22501 (Array (_ BitVec 32) ValueCell!7232)) (size!22942 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46948)

(declare-fun mapDefault!24614 () ValueCell!7232)


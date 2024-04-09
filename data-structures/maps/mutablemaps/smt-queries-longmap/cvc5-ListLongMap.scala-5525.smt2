; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72962 () Bool)

(assert start!72962)

(declare-fun b_free!13849 () Bool)

(declare-fun b_next!13849 () Bool)

(assert (=> start!72962 (= b_free!13849 (not b_next!13849))))

(declare-fun tp!49052 () Bool)

(declare-fun b_and!22953 () Bool)

(assert (=> start!72962 (= tp!49052 b_and!22953)))

(declare-fun b!846742 () Bool)

(declare-fun e!472573 () Bool)

(declare-fun tp_is_empty!15985 () Bool)

(assert (=> b!846742 (= e!472573 tp_is_empty!15985)))

(declare-fun b!846743 () Bool)

(declare-fun res!575417 () Bool)

(declare-fun e!472574 () Bool)

(assert (=> b!846743 (=> (not res!575417) (not e!472574))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846743 (= res!575417 (validKeyInArray!0 k!854))))

(declare-fun b!846744 () Bool)

(declare-fun res!575411 () Bool)

(assert (=> b!846744 (=> (not res!575411) (not e!472574))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846744 (= res!575411 (validMask!0 mask!1196))))

(declare-fun b!846745 () Bool)

(declare-fun res!575416 () Bool)

(assert (=> b!846745 (=> (not res!575416) (not e!472574))))

(declare-datatypes ((array!48168 0))(
  ( (array!48169 (arr!23111 (Array (_ BitVec 32) (_ BitVec 64))) (size!23552 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48168)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48168 (_ BitVec 32)) Bool)

(assert (=> b!846745 (= res!575416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846746 () Bool)

(declare-fun e!472571 () Bool)

(declare-fun e!472572 () Bool)

(declare-fun mapRes!25577 () Bool)

(assert (=> b!846746 (= e!472571 (and e!472572 mapRes!25577))))

(declare-fun condMapEmpty!25577 () Bool)

(declare-datatypes ((V!26361 0))(
  ( (V!26362 (val!8040 Int)) )
))
(declare-datatypes ((ValueCell!7553 0))(
  ( (ValueCellFull!7553 (v!10461 V!26361)) (EmptyCell!7553) )
))
(declare-datatypes ((array!48170 0))(
  ( (array!48171 (arr!23112 (Array (_ BitVec 32) ValueCell!7553)) (size!23553 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48170)

(declare-fun mapDefault!25577 () ValueCell!7553)


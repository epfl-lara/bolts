; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72612 () Bool)

(assert start!72612)

(declare-fun b!842447 () Bool)

(declare-fun res!572691 () Bool)

(declare-fun e!469946 () Bool)

(assert (=> b!842447 (=> (not res!572691) (not e!469946))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47512 0))(
  ( (array!47513 (arr!22783 (Array (_ BitVec 32) (_ BitVec 64))) (size!23224 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47512)

(declare-datatypes ((V!25893 0))(
  ( (V!25894 (val!7865 Int)) )
))
(declare-datatypes ((ValueCell!7378 0))(
  ( (ValueCellFull!7378 (v!10286 V!25893)) (EmptyCell!7378) )
))
(declare-datatypes ((array!47514 0))(
  ( (array!47515 (arr!22784 (Array (_ BitVec 32) ValueCell!7378)) (size!23225 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47514)

(assert (=> b!842447 (= res!572691 (and (= (size!23225 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23224 _keys!868) (size!23225 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842448 () Bool)

(declare-fun e!469949 () Bool)

(declare-fun e!469948 () Bool)

(declare-fun mapRes!25052 () Bool)

(assert (=> b!842448 (= e!469949 (and e!469948 mapRes!25052))))

(declare-fun condMapEmpty!25052 () Bool)

(declare-fun mapDefault!25052 () ValueCell!7378)


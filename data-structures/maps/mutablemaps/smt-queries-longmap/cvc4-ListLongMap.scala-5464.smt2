; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72600 () Bool)

(assert start!72600)

(declare-fun b!842321 () Bool)

(declare-fun res!572622 () Bool)

(declare-fun e!469859 () Bool)

(assert (=> b!842321 (=> (not res!572622) (not e!469859))))

(declare-datatypes ((array!47488 0))(
  ( (array!47489 (arr!22771 (Array (_ BitVec 32) (_ BitVec 64))) (size!23212 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47488)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47488 (_ BitVec 32)) Bool)

(assert (=> b!842321 (= res!572622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842322 () Bool)

(declare-fun res!572620 () Bool)

(assert (=> b!842322 (=> (not res!572620) (not e!469859))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!25877 0))(
  ( (V!25878 (val!7859 Int)) )
))
(declare-datatypes ((ValueCell!7372 0))(
  ( (ValueCellFull!7372 (v!10280 V!25877)) (EmptyCell!7372) )
))
(declare-datatypes ((array!47490 0))(
  ( (array!47491 (arr!22772 (Array (_ BitVec 32) ValueCell!7372)) (size!23213 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47490)

(assert (=> b!842322 (= res!572620 (and (= (size!23213 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23212 _keys!868) (size!23213 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842323 () Bool)

(declare-fun e!469857 () Bool)

(declare-fun e!469858 () Bool)

(declare-fun mapRes!25034 () Bool)

(assert (=> b!842323 (= e!469857 (and e!469858 mapRes!25034))))

(declare-fun condMapEmpty!25034 () Bool)

(declare-fun mapDefault!25034 () ValueCell!7372)


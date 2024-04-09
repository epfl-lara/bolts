; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72836 () Bool)

(assert start!72836)

(declare-fun b!844799 () Bool)

(declare-fun res!574037 () Bool)

(declare-fun e!471629 () Bool)

(assert (=> b!844799 (=> (not res!574037) (not e!471629))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844799 (= res!574037 (validMask!0 mask!1196))))

(declare-fun b!844800 () Bool)

(declare-fun e!471627 () Bool)

(declare-fun e!471626 () Bool)

(declare-fun mapRes!25388 () Bool)

(assert (=> b!844800 (= e!471627 (and e!471626 mapRes!25388))))

(declare-fun condMapEmpty!25388 () Bool)

(declare-datatypes ((V!26193 0))(
  ( (V!26194 (val!7977 Int)) )
))
(declare-datatypes ((ValueCell!7490 0))(
  ( (ValueCellFull!7490 (v!10398 V!26193)) (EmptyCell!7490) )
))
(declare-datatypes ((array!47930 0))(
  ( (array!47931 (arr!22992 (Array (_ BitVec 32) ValueCell!7490)) (size!23433 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47930)

(declare-fun mapDefault!25388 () ValueCell!7490)


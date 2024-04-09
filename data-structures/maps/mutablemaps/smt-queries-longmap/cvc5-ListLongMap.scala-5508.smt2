; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72860 () Bool)

(assert start!72860)

(declare-fun b_free!13747 () Bool)

(declare-fun b_next!13747 () Bool)

(assert (=> start!72860 (= b_free!13747 (not b_next!13747))))

(declare-fun tp!48745 () Bool)

(declare-fun b_and!22851 () Bool)

(assert (=> start!72860 (= tp!48745 b_and!22851)))

(declare-fun mapIsEmpty!25424 () Bool)

(declare-fun mapRes!25424 () Bool)

(assert (=> mapIsEmpty!25424 mapRes!25424))

(declare-fun b!845059 () Bool)

(declare-fun res!574187 () Bool)

(declare-fun e!471807 () Bool)

(assert (=> b!845059 (=> (not res!574187) (not e!471807))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845059 (= res!574187 (validMask!0 mask!1196))))

(declare-fun b!845060 () Bool)

(declare-fun res!574190 () Bool)

(assert (=> b!845060 (=> (not res!574190) (not e!471807))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47970 0))(
  ( (array!47971 (arr!23012 (Array (_ BitVec 32) (_ BitVec 64))) (size!23453 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47970)

(assert (=> b!845060 (= res!574190 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23453 _keys!868))))))

(declare-fun b!845061 () Bool)

(declare-fun e!471808 () Bool)

(declare-fun e!471810 () Bool)

(assert (=> b!845061 (= e!471808 (and e!471810 mapRes!25424))))

(declare-fun condMapEmpty!25424 () Bool)

(declare-datatypes ((V!26225 0))(
  ( (V!26226 (val!7989 Int)) )
))
(declare-datatypes ((ValueCell!7502 0))(
  ( (ValueCellFull!7502 (v!10410 V!26225)) (EmptyCell!7502) )
))
(declare-datatypes ((array!47972 0))(
  ( (array!47973 (arr!23013 (Array (_ BitVec 32) ValueCell!7502)) (size!23454 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47972)

(declare-fun mapDefault!25424 () ValueCell!7502)


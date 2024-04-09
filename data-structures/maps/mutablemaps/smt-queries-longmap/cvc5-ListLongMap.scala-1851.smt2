; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33482 () Bool)

(assert start!33482)

(declare-fun b!332050 () Bool)

(declare-fun e!203877 () Bool)

(declare-fun tp_is_empty!6727 () Bool)

(assert (=> b!332050 (= e!203877 tp_is_empty!6727)))

(declare-fun mapIsEmpty!11475 () Bool)

(declare-fun mapRes!11475 () Bool)

(assert (=> mapIsEmpty!11475 mapRes!11475))

(declare-fun res!182995 () Bool)

(declare-fun e!203880 () Bool)

(assert (=> start!33482 (=> (not res!182995) (not e!203880))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33482 (= res!182995 (validMask!0 mask!2385))))

(assert (=> start!33482 e!203880))

(assert (=> start!33482 true))

(declare-datatypes ((V!9947 0))(
  ( (V!9948 (val!3408 Int)) )
))
(declare-datatypes ((ValueCell!3020 0))(
  ( (ValueCellFull!3020 (v!5563 V!9947)) (EmptyCell!3020) )
))
(declare-datatypes ((array!17049 0))(
  ( (array!17050 (arr!8056 (Array (_ BitVec 32) ValueCell!3020)) (size!8408 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17049)

(declare-fun e!203879 () Bool)

(declare-fun array_inv!5990 (array!17049) Bool)

(assert (=> start!33482 (and (array_inv!5990 _values!1525) e!203879)))

(declare-datatypes ((array!17051 0))(
  ( (array!17052 (arr!8057 (Array (_ BitVec 32) (_ BitVec 64))) (size!8409 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17051)

(declare-fun array_inv!5991 (array!17051) Bool)

(assert (=> start!33482 (array_inv!5991 _keys!1895)))

(declare-fun b!332051 () Bool)

(declare-fun res!182994 () Bool)

(assert (=> b!332051 (=> (not res!182994) (not e!203880))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332051 (= res!182994 (and (= (size!8408 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8409 _keys!1895) (size!8408 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332052 () Bool)

(declare-fun e!203876 () Bool)

(assert (=> b!332052 (= e!203876 tp_is_empty!6727)))

(declare-fun b!332053 () Bool)

(assert (=> b!332053 (= e!203879 (and e!203877 mapRes!11475))))

(declare-fun condMapEmpty!11475 () Bool)

(declare-fun mapDefault!11475 () ValueCell!3020)


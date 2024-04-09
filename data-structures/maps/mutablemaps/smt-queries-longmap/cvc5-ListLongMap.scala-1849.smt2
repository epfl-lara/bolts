; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33470 () Bool)

(assert start!33470)

(declare-fun b!331942 () Bool)

(declare-fun res!182941 () Bool)

(declare-fun e!203789 () Bool)

(assert (=> b!331942 (=> (not res!182941) (not e!203789))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9931 0))(
  ( (V!9932 (val!3402 Int)) )
))
(declare-datatypes ((ValueCell!3014 0))(
  ( (ValueCellFull!3014 (v!5557 V!9931)) (EmptyCell!3014) )
))
(declare-datatypes ((array!17027 0))(
  ( (array!17028 (arr!8045 (Array (_ BitVec 32) ValueCell!3014)) (size!8397 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17027)

(declare-datatypes ((array!17029 0))(
  ( (array!17030 (arr!8046 (Array (_ BitVec 32) (_ BitVec 64))) (size!8398 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17029)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331942 (= res!182941 (and (= (size!8397 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8398 _keys!1895) (size!8397 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11457 () Bool)

(declare-fun mapRes!11457 () Bool)

(assert (=> mapIsEmpty!11457 mapRes!11457))

(declare-fun res!182940 () Bool)

(assert (=> start!33470 (=> (not res!182940) (not e!203789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33470 (= res!182940 (validMask!0 mask!2385))))

(assert (=> start!33470 e!203789))

(assert (=> start!33470 true))

(declare-fun e!203787 () Bool)

(declare-fun array_inv!5980 (array!17027) Bool)

(assert (=> start!33470 (and (array_inv!5980 _values!1525) e!203787)))

(declare-fun array_inv!5981 (array!17029) Bool)

(assert (=> start!33470 (array_inv!5981 _keys!1895)))

(declare-fun b!331943 () Bool)

(declare-fun e!203790 () Bool)

(assert (=> b!331943 (= e!203787 (and e!203790 mapRes!11457))))

(declare-fun condMapEmpty!11457 () Bool)

(declare-fun mapDefault!11457 () ValueCell!3014)


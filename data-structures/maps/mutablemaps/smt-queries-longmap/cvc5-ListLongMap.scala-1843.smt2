; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33404 () Bool)

(assert start!33404)

(declare-fun b!331502 () Bool)

(declare-fun e!203446 () Bool)

(declare-datatypes ((array!16953 0))(
  ( (array!16954 (arr!8011 (Array (_ BitVec 32) (_ BitVec 64))) (size!8363 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16953)

(assert (=> b!331502 (= e!203446 (and (bvsle #b00000000000000000000000000000000 (size!8363 _keys!1895)) (bvsge (size!8363 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun res!182705 () Bool)

(assert (=> start!33404 (=> (not res!182705) (not e!203446))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33404 (= res!182705 (validMask!0 mask!2385))))

(assert (=> start!33404 e!203446))

(assert (=> start!33404 true))

(declare-datatypes ((V!9883 0))(
  ( (V!9884 (val!3384 Int)) )
))
(declare-datatypes ((ValueCell!2996 0))(
  ( (ValueCellFull!2996 (v!5538 V!9883)) (EmptyCell!2996) )
))
(declare-datatypes ((array!16955 0))(
  ( (array!16956 (arr!8012 (Array (_ BitVec 32) ValueCell!2996)) (size!8364 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16955)

(declare-fun e!203443 () Bool)

(declare-fun array_inv!5960 (array!16955) Bool)

(assert (=> start!33404 (and (array_inv!5960 _values!1525) e!203443)))

(declare-fun array_inv!5961 (array!16953) Bool)

(assert (=> start!33404 (array_inv!5961 _keys!1895)))

(declare-fun mapIsEmpty!11394 () Bool)

(declare-fun mapRes!11394 () Bool)

(assert (=> mapIsEmpty!11394 mapRes!11394))

(declare-fun b!331503 () Bool)

(declare-fun e!203444 () Bool)

(assert (=> b!331503 (= e!203443 (and e!203444 mapRes!11394))))

(declare-fun condMapEmpty!11394 () Bool)

(declare-fun mapDefault!11394 () ValueCell!2996)


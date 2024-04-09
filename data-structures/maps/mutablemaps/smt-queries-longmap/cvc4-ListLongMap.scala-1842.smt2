; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33394 () Bool)

(assert start!33394)

(declare-fun mapIsEmpty!11388 () Bool)

(declare-fun mapRes!11388 () Bool)

(assert (=> mapIsEmpty!11388 mapRes!11388))

(declare-fun b!331464 () Bool)

(declare-fun res!182691 () Bool)

(declare-fun e!203416 () Bool)

(assert (=> b!331464 (=> (not res!182691) (not e!203416))))

(declare-datatypes ((array!16947 0))(
  ( (array!16948 (arr!8009 (Array (_ BitVec 32) (_ BitVec 64))) (size!8361 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16947)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16947 (_ BitVec 32)) Bool)

(assert (=> b!331464 (= res!182691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331465 () Bool)

(declare-fun e!203414 () Bool)

(declare-fun tp_is_empty!6677 () Bool)

(assert (=> b!331465 (= e!203414 tp_is_empty!6677)))

(declare-fun b!331466 () Bool)

(declare-fun e!203412 () Bool)

(assert (=> b!331466 (= e!203412 (and e!203414 mapRes!11388))))

(declare-fun condMapEmpty!11388 () Bool)

(declare-datatypes ((V!9879 0))(
  ( (V!9880 (val!3383 Int)) )
))
(declare-datatypes ((ValueCell!2995 0))(
  ( (ValueCellFull!2995 (v!5537 V!9879)) (EmptyCell!2995) )
))
(declare-datatypes ((array!16949 0))(
  ( (array!16950 (arr!8010 (Array (_ BitVec 32) ValueCell!2995)) (size!8362 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16949)

(declare-fun mapDefault!11388 () ValueCell!2995)


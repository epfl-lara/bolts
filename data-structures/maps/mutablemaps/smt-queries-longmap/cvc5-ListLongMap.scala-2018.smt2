; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35192 () Bool)

(assert start!35192)

(declare-fun b_free!7777 () Bool)

(declare-fun b_next!7777 () Bool)

(assert (=> start!35192 (= b_free!7777 (not b_next!7777))))

(declare-fun tp!26922 () Bool)

(declare-fun b_and!15033 () Bool)

(assert (=> start!35192 (= tp!26922 b_and!15033)))

(declare-fun b!352496 () Bool)

(declare-fun e!215871 () Bool)

(assert (=> b!352496 (= e!215871 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3462 0))(
  ( (MissingZero!3462 (index!16027 (_ BitVec 32))) (Found!3462 (index!16028 (_ BitVec 32))) (Intermediate!3462 (undefined!4274 Bool) (index!16029 (_ BitVec 32)) (x!35073 (_ BitVec 32))) (Undefined!3462) (MissingVacant!3462 (index!16030 (_ BitVec 32))) )
))
(declare-fun lt!165291 () SeekEntryResult!3462)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!19007 0))(
  ( (array!19008 (arr!9002 (Array (_ BitVec 32) (_ BitVec 64))) (size!9354 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19007)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19007 (_ BitVec 32)) SeekEntryResult!3462)

(assert (=> b!352496 (= lt!165291 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13077 () Bool)

(declare-fun mapRes!13077 () Bool)

(assert (=> mapIsEmpty!13077 mapRes!13077))

(declare-fun res!195529 () Bool)

(assert (=> start!35192 (=> (not res!195529) (not e!215871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35192 (= res!195529 (validMask!0 mask!2385))))

(assert (=> start!35192 e!215871))

(assert (=> start!35192 true))

(declare-fun tp_is_empty!7729 () Bool)

(assert (=> start!35192 tp_is_empty!7729))

(assert (=> start!35192 tp!26922))

(declare-datatypes ((V!11283 0))(
  ( (V!11284 (val!3909 Int)) )
))
(declare-datatypes ((ValueCell!3521 0))(
  ( (ValueCellFull!3521 (v!6096 V!11283)) (EmptyCell!3521) )
))
(declare-datatypes ((array!19009 0))(
  ( (array!19010 (arr!9003 (Array (_ BitVec 32) ValueCell!3521)) (size!9355 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19009)

(declare-fun e!215867 () Bool)

(declare-fun array_inv!6632 (array!19009) Bool)

(assert (=> start!35192 (and (array_inv!6632 _values!1525) e!215867)))

(declare-fun array_inv!6633 (array!19007) Bool)

(assert (=> start!35192 (array_inv!6633 _keys!1895)))

(declare-fun b!352497 () Bool)

(declare-fun e!215868 () Bool)

(assert (=> b!352497 (= e!215868 tp_is_empty!7729)))

(declare-fun b!352498 () Bool)

(assert (=> b!352498 (= e!215867 (and e!215868 mapRes!13077))))

(declare-fun condMapEmpty!13077 () Bool)

(declare-fun mapDefault!13077 () ValueCell!3521)


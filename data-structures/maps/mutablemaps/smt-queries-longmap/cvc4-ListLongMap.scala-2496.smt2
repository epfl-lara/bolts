; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38806 () Bool)

(assert start!38806)

(declare-fun b!404558 () Bool)

(declare-fun res!233440 () Bool)

(declare-fun e!243351 () Bool)

(assert (=> b!404558 (=> (not res!233440) (not e!243351))))

(declare-datatypes ((array!24297 0))(
  ( (array!24298 (arr!11595 (Array (_ BitVec 32) (_ BitVec 64))) (size!11947 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24297)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404558 (= res!233440 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!404559 () Bool)

(declare-fun e!243355 () Bool)

(assert (=> b!404559 (= e!243351 e!243355)))

(declare-fun res!233438 () Bool)

(assert (=> b!404559 (=> (not res!233438) (not e!243355))))

(declare-fun lt!188192 () array!24297)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24297 (_ BitVec 32)) Bool)

(assert (=> b!404559 (= res!233438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188192 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404559 (= lt!188192 (array!24298 (store (arr!11595 _keys!709) i!563 k!794) (size!11947 _keys!709)))))

(declare-fun b!404560 () Bool)

(declare-fun res!233433 () Bool)

(assert (=> b!404560 (=> (not res!233433) (not e!243351))))

(assert (=> b!404560 (= res!233433 (or (= (select (arr!11595 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11595 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404561 () Bool)

(assert (=> b!404561 (= e!243355 false)))

(declare-fun lt!188193 () Bool)

(declare-datatypes ((List!6727 0))(
  ( (Nil!6724) (Cons!6723 (h!7579 (_ BitVec 64)) (t!11909 List!6727)) )
))
(declare-fun arrayNoDuplicates!0 (array!24297 (_ BitVec 32) List!6727) Bool)

(assert (=> b!404561 (= lt!188193 (arrayNoDuplicates!0 lt!188192 #b00000000000000000000000000000000 Nil!6724))))

(declare-fun b!404563 () Bool)

(declare-fun e!243353 () Bool)

(declare-fun e!243350 () Bool)

(declare-fun mapRes!16947 () Bool)

(assert (=> b!404563 (= e!243353 (and e!243350 mapRes!16947))))

(declare-fun condMapEmpty!16947 () Bool)

(declare-datatypes ((V!14727 0))(
  ( (V!14728 (val!5153 Int)) )
))
(declare-datatypes ((ValueCell!4765 0))(
  ( (ValueCellFull!4765 (v!7396 V!14727)) (EmptyCell!4765) )
))
(declare-datatypes ((array!24299 0))(
  ( (array!24300 (arr!11596 (Array (_ BitVec 32) ValueCell!4765)) (size!11948 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24299)

(declare-fun mapDefault!16947 () ValueCell!4765)


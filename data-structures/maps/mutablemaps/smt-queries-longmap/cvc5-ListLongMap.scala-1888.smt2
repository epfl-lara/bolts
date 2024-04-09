; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33788 () Bool)

(assert start!33788)

(declare-fun b_free!6997 () Bool)

(declare-fun b_next!6997 () Bool)

(assert (=> start!33788 (= b_free!6997 (not b_next!6997))))

(declare-fun tp!24498 () Bool)

(declare-fun b_and!14197 () Bool)

(assert (=> start!33788 (= tp!24498 b_and!14197)))

(declare-fun b!335839 () Bool)

(declare-fun res!185441 () Bool)

(declare-fun e!206164 () Bool)

(assert (=> b!335839 (=> (not res!185441) (not e!206164))))

(declare-datatypes ((array!17477 0))(
  ( (array!17478 (arr!8265 (Array (_ BitVec 32) (_ BitVec 64))) (size!8617 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17477)

(declare-datatypes ((List!4753 0))(
  ( (Nil!4750) (Cons!4749 (h!5605 (_ BitVec 64)) (t!9851 List!4753)) )
))
(declare-fun arrayNoDuplicates!0 (array!17477 (_ BitVec 32) List!4753) Bool)

(assert (=> b!335839 (= res!185441 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4750))))

(declare-fun b!335840 () Bool)

(declare-fun res!185436 () Bool)

(assert (=> b!335840 (=> (not res!185436) (not e!206164))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10243 0))(
  ( (V!10244 (val!3519 Int)) )
))
(declare-datatypes ((ValueCell!3131 0))(
  ( (ValueCellFull!3131 (v!5678 V!10243)) (EmptyCell!3131) )
))
(declare-datatypes ((array!17479 0))(
  ( (array!17480 (arr!8266 (Array (_ BitVec 32) ValueCell!3131)) (size!8618 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17479)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335840 (= res!185436 (and (= (size!8618 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8617 _keys!1895) (size!8618 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335841 () Bool)

(declare-fun res!185437 () Bool)

(assert (=> b!335841 (=> (not res!185437) (not e!206164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17477 (_ BitVec 32)) Bool)

(assert (=> b!335841 (= res!185437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11823 () Bool)

(declare-fun mapRes!11823 () Bool)

(assert (=> mapIsEmpty!11823 mapRes!11823))

(declare-fun res!185440 () Bool)

(assert (=> start!33788 (=> (not res!185440) (not e!206164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33788 (= res!185440 (validMask!0 mask!2385))))

(assert (=> start!33788 e!206164))

(assert (=> start!33788 true))

(declare-fun tp_is_empty!6949 () Bool)

(assert (=> start!33788 tp_is_empty!6949))

(assert (=> start!33788 tp!24498))

(declare-fun e!206162 () Bool)

(declare-fun array_inv!6126 (array!17479) Bool)

(assert (=> start!33788 (and (array_inv!6126 _values!1525) e!206162)))

(declare-fun array_inv!6127 (array!17477) Bool)

(assert (=> start!33788 (array_inv!6127 _keys!1895)))

(declare-fun b!335842 () Bool)

(declare-fun res!185438 () Bool)

(assert (=> b!335842 (=> (not res!185438) (not e!206164))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335842 (= res!185438 (validKeyInArray!0 k!1348))))

(declare-fun b!335843 () Bool)

(declare-datatypes ((SeekEntryResult!3205 0))(
  ( (MissingZero!3205 (index!14999 (_ BitVec 32))) (Found!3205 (index!15000 (_ BitVec 32))) (Intermediate!3205 (undefined!4017 Bool) (index!15001 (_ BitVec 32)) (x!33496 (_ BitVec 32))) (Undefined!3205) (MissingVacant!3205 (index!15002 (_ BitVec 32))) )
))
(declare-fun lt!160014 () SeekEntryResult!3205)

(assert (=> b!335843 (= e!206164 (and (not (is-Found!3205 lt!160014)) (is-MissingZero!3205 lt!160014) (bvslt #b00000000000000000000000000000000 (size!8617 _keys!1895)) (bvsge (size!8617 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17477 (_ BitVec 32)) SeekEntryResult!3205)

(assert (=> b!335843 (= lt!160014 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335844 () Bool)

(declare-fun e!206165 () Bool)

(assert (=> b!335844 (= e!206162 (and e!206165 mapRes!11823))))

(declare-fun condMapEmpty!11823 () Bool)

(declare-fun mapDefault!11823 () ValueCell!3131)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35196 () Bool)

(assert start!35196)

(declare-fun b_free!7781 () Bool)

(declare-fun b_next!7781 () Bool)

(assert (=> start!35196 (= b_free!7781 (not b_next!7781))))

(declare-fun tp!26933 () Bool)

(declare-fun b_and!15037 () Bool)

(assert (=> start!35196 (= tp!26933 b_and!15037)))

(declare-fun b!352550 () Bool)

(declare-fun res!195563 () Bool)

(declare-fun e!215899 () Bool)

(assert (=> b!352550 (=> (not res!195563) (not e!215899))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11287 0))(
  ( (V!11288 (val!3911 Int)) )
))
(declare-datatypes ((ValueCell!3523 0))(
  ( (ValueCellFull!3523 (v!6098 V!11287)) (EmptyCell!3523) )
))
(declare-datatypes ((array!19015 0))(
  ( (array!19016 (arr!9006 (Array (_ BitVec 32) ValueCell!3523)) (size!9358 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19015)

(declare-datatypes ((array!19017 0))(
  ( (array!19018 (arr!9007 (Array (_ BitVec 32) (_ BitVec 64))) (size!9359 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19017)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352550 (= res!195563 (and (= (size!9358 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9359 _keys!1895) (size!9358 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352551 () Bool)

(assert (=> b!352551 (= e!215899 false)))

(declare-datatypes ((SeekEntryResult!3464 0))(
  ( (MissingZero!3464 (index!16035 (_ BitVec 32))) (Found!3464 (index!16036 (_ BitVec 32))) (Intermediate!3464 (undefined!4276 Bool) (index!16037 (_ BitVec 32)) (x!35075 (_ BitVec 32))) (Undefined!3464) (MissingVacant!3464 (index!16038 (_ BitVec 32))) )
))
(declare-fun lt!165297 () SeekEntryResult!3464)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19017 (_ BitVec 32)) SeekEntryResult!3464)

(assert (=> b!352551 (= lt!165297 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!352552 () Bool)

(declare-fun res!195565 () Bool)

(assert (=> b!352552 (=> (not res!195565) (not e!215899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19017 (_ BitVec 32)) Bool)

(assert (=> b!352552 (= res!195565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352553 () Bool)

(declare-fun res!195561 () Bool)

(assert (=> b!352553 (=> (not res!195561) (not e!215899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352553 (= res!195561 (validKeyInArray!0 k!1348))))

(declare-fun b!352554 () Bool)

(declare-fun e!215897 () Bool)

(declare-fun e!215901 () Bool)

(declare-fun mapRes!13083 () Bool)

(assert (=> b!352554 (= e!215897 (and e!215901 mapRes!13083))))

(declare-fun condMapEmpty!13083 () Bool)

(declare-fun mapDefault!13083 () ValueCell!3523)


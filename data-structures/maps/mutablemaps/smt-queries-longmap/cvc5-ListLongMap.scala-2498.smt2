; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38814 () Bool)

(assert start!38814)

(declare-fun b!404714 () Bool)

(declare-fun res!233561 () Bool)

(declare-fun e!243424 () Bool)

(assert (=> b!404714 (=> (not res!233561) (not e!243424))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24313 0))(
  ( (array!24314 (arr!11603 (Array (_ BitVec 32) (_ BitVec 64))) (size!11955 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24313)

(assert (=> b!404714 (= res!233561 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11955 _keys!709))))))

(declare-fun b!404715 () Bool)

(declare-fun e!243426 () Bool)

(assert (=> b!404715 (= e!243426 false)))

(declare-fun lt!188216 () Bool)

(declare-fun lt!188217 () array!24313)

(declare-datatypes ((List!6730 0))(
  ( (Nil!6727) (Cons!6726 (h!7582 (_ BitVec 64)) (t!11912 List!6730)) )
))
(declare-fun arrayNoDuplicates!0 (array!24313 (_ BitVec 32) List!6730) Bool)

(assert (=> b!404715 (= lt!188216 (arrayNoDuplicates!0 lt!188217 #b00000000000000000000000000000000 Nil!6727))))

(declare-fun b!404716 () Bool)

(declare-fun e!243427 () Bool)

(declare-fun tp_is_empty!10225 () Bool)

(assert (=> b!404716 (= e!243427 tp_is_empty!10225)))

(declare-fun b!404717 () Bool)

(declare-fun e!243422 () Bool)

(assert (=> b!404717 (= e!243422 tp_is_empty!10225)))

(declare-fun b!404718 () Bool)

(declare-fun res!233555 () Bool)

(assert (=> b!404718 (=> (not res!233555) (not e!243424))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24313 (_ BitVec 32)) Bool)

(assert (=> b!404718 (= res!233555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!16959 () Bool)

(declare-fun mapRes!16959 () Bool)

(assert (=> mapIsEmpty!16959 mapRes!16959))

(declare-fun b!404719 () Bool)

(declare-fun res!233556 () Bool)

(assert (=> b!404719 (=> (not res!233556) (not e!243424))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404719 (= res!233556 (validKeyInArray!0 k!794))))

(declare-fun b!404720 () Bool)

(declare-fun e!243425 () Bool)

(assert (=> b!404720 (= e!243425 (and e!243422 mapRes!16959))))

(declare-fun condMapEmpty!16959 () Bool)

(declare-datatypes ((V!14739 0))(
  ( (V!14740 (val!5157 Int)) )
))
(declare-datatypes ((ValueCell!4769 0))(
  ( (ValueCellFull!4769 (v!7400 V!14739)) (EmptyCell!4769) )
))
(declare-datatypes ((array!24315 0))(
  ( (array!24316 (arr!11604 (Array (_ BitVec 32) ValueCell!4769)) (size!11956 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24315)

(declare-fun mapDefault!16959 () ValueCell!4769)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38122 () Bool)

(assert start!38122)

(declare-fun b_free!9017 () Bool)

(declare-fun b_next!9017 () Bool)

(assert (=> start!38122 (= b_free!9017 (not b_next!9017))))

(declare-fun tp!31829 () Bool)

(declare-fun b_and!16385 () Bool)

(assert (=> start!38122 (= tp!31829 b_and!16385)))

(declare-fun b!392493 () Bool)

(declare-fun e!237679 () Bool)

(declare-fun tp_is_empty!9689 () Bool)

(assert (=> b!392493 (= e!237679 tp_is_empty!9689)))

(declare-fun res!224868 () Bool)

(declare-fun e!237680 () Bool)

(assert (=> start!38122 (=> (not res!224868) (not e!237680))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38122 (= res!224868 (validMask!0 mask!970))))

(assert (=> start!38122 e!237680))

(declare-datatypes ((V!14023 0))(
  ( (V!14024 (val!4889 Int)) )
))
(declare-datatypes ((ValueCell!4501 0))(
  ( (ValueCellFull!4501 (v!7118 V!14023)) (EmptyCell!4501) )
))
(declare-datatypes ((array!23257 0))(
  ( (array!23258 (arr!11085 (Array (_ BitVec 32) ValueCell!4501)) (size!11437 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23257)

(declare-fun e!237685 () Bool)

(declare-fun array_inv!8126 (array!23257) Bool)

(assert (=> start!38122 (and (array_inv!8126 _values!506) e!237685)))

(assert (=> start!38122 tp!31829))

(assert (=> start!38122 true))

(assert (=> start!38122 tp_is_empty!9689))

(declare-datatypes ((array!23259 0))(
  ( (array!23260 (arr!11086 (Array (_ BitVec 32) (_ BitVec 64))) (size!11438 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23259)

(declare-fun array_inv!8127 (array!23259) Bool)

(assert (=> start!38122 (array_inv!8127 _keys!658)))

(declare-fun b!392494 () Bool)

(declare-fun e!237681 () Bool)

(assert (=> b!392494 (= e!237680 e!237681)))

(declare-fun res!224856 () Bool)

(assert (=> b!392494 (=> (not res!224856) (not e!237681))))

(declare-fun lt!185563 () array!23259)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23259 (_ BitVec 32)) Bool)

(assert (=> b!392494 (= res!224856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185563 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392494 (= lt!185563 (array!23260 (store (arr!11086 _keys!658) i!548 k!778) (size!11438 _keys!658)))))

(declare-fun b!392495 () Bool)

(declare-fun mapRes!16125 () Bool)

(assert (=> b!392495 (= e!237685 (and e!237679 mapRes!16125))))

(declare-fun condMapEmpty!16125 () Bool)

(declare-fun mapDefault!16125 () ValueCell!4501)


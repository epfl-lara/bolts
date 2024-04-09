; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75758 () Bool)

(assert start!75758)

(declare-fun b!890289 () Bool)

(declare-fun b_free!15701 () Bool)

(declare-fun b_next!15701 () Bool)

(assert (=> b!890289 (= b_free!15701 (not b_next!15701))))

(declare-fun tp!55073 () Bool)

(declare-fun b_and!25959 () Bool)

(assert (=> b!890289 (= tp!55073 b_and!25959)))

(declare-fun b!890282 () Bool)

(declare-fun e!496575 () Bool)

(declare-fun e!496572 () Bool)

(assert (=> b!890282 (= e!496575 (not e!496572))))

(declare-fun res!603330 () Bool)

(assert (=> b!890282 (=> res!603330 e!496572)))

(declare-datatypes ((SeekEntryResult!8793 0))(
  ( (MissingZero!8793 (index!37542 (_ BitVec 32))) (Found!8793 (index!37543 (_ BitVec 32))) (Intermediate!8793 (undefined!9605 Bool) (index!37544 (_ BitVec 32)) (x!75626 (_ BitVec 32))) (Undefined!8793) (MissingVacant!8793 (index!37545 (_ BitVec 32))) )
))
(declare-fun lt!402243 () SeekEntryResult!8793)

(assert (=> b!890282 (= res!603330 (not (is-Found!8793 lt!402243)))))

(declare-fun e!496570 () Bool)

(assert (=> b!890282 e!496570))

(declare-fun res!603336 () Bool)

(assert (=> b!890282 (=> res!603336 e!496570)))

(assert (=> b!890282 (= res!603336 (not (is-Found!8793 lt!402243)))))

(declare-datatypes ((Unit!30271 0))(
  ( (Unit!30272) )
))
(declare-fun lt!402242 () Unit!30271)

(declare-datatypes ((array!52024 0))(
  ( (array!52025 (arr!25014 (Array (_ BitVec 32) (_ BitVec 64))) (size!25459 (_ BitVec 32))) )
))
(declare-datatypes ((V!29003 0))(
  ( (V!29004 (val!9065 Int)) )
))
(declare-datatypes ((ValueCell!8533 0))(
  ( (ValueCellFull!8533 (v!11537 V!29003)) (EmptyCell!8533) )
))
(declare-datatypes ((array!52026 0))(
  ( (array!52027 (arr!25015 (Array (_ BitVec 32) ValueCell!8533)) (size!25460 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4082 0))(
  ( (LongMapFixedSize!4083 (defaultEntry!5238 Int) (mask!25704 (_ BitVec 32)) (extraKeys!4932 (_ BitVec 32)) (zeroValue!5036 V!29003) (minValue!5036 V!29003) (_size!2096 (_ BitVec 32)) (_keys!9917 array!52024) (_values!5223 array!52026) (_vacant!2096 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4082)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!15 (array!52024 array!52026 (_ BitVec 32) (_ BitVec 32) V!29003 V!29003 (_ BitVec 64)) Unit!30271)

(assert (=> b!890282 (= lt!402242 (lemmaSeekEntryGivesInRangeIndex!15 (_keys!9917 thiss!1181) (_values!5223 thiss!1181) (mask!25704 thiss!1181) (extraKeys!4932 thiss!1181) (zeroValue!5036 thiss!1181) (minValue!5036 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52024 (_ BitVec 32)) SeekEntryResult!8793)

(assert (=> b!890282 (= lt!402243 (seekEntry!0 key!785 (_keys!9917 thiss!1181) (mask!25704 thiss!1181)))))

(declare-fun b!890283 () Bool)

(declare-fun e!496569 () Bool)

(declare-fun e!496571 () Bool)

(declare-fun mapRes!28598 () Bool)

(assert (=> b!890283 (= e!496569 (and e!496571 mapRes!28598))))

(declare-fun condMapEmpty!28598 () Bool)

(declare-fun mapDefault!28598 () ValueCell!8533)


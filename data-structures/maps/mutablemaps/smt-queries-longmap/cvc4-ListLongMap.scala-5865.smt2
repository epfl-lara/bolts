; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75752 () Bool)

(assert start!75752)

(declare-fun b!890188 () Bool)

(declare-fun b_free!15695 () Bool)

(declare-fun b_next!15695 () Bool)

(assert (=> b!890188 (= b_free!15695 (not b_next!15695))))

(declare-fun tp!55055 () Bool)

(declare-fun b_and!25953 () Bool)

(assert (=> b!890188 (= tp!55055 b_and!25953)))

(declare-fun b!890183 () Bool)

(declare-fun e!496489 () Bool)

(assert (=> b!890183 (= e!496489 true)))

(declare-fun lt!402207 () Bool)

(declare-datatypes ((array!52012 0))(
  ( (array!52013 (arr!25008 (Array (_ BitVec 32) (_ BitVec 64))) (size!25453 (_ BitVec 32))) )
))
(declare-datatypes ((V!28995 0))(
  ( (V!28996 (val!9062 Int)) )
))
(declare-datatypes ((ValueCell!8530 0))(
  ( (ValueCellFull!8530 (v!11534 V!28995)) (EmptyCell!8530) )
))
(declare-datatypes ((array!52014 0))(
  ( (array!52015 (arr!25009 (Array (_ BitVec 32) ValueCell!8530)) (size!25454 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4076 0))(
  ( (LongMapFixedSize!4077 (defaultEntry!5235 Int) (mask!25699 (_ BitVec 32)) (extraKeys!4929 (_ BitVec 32)) (zeroValue!5033 V!28995) (minValue!5033 V!28995) (_size!2093 (_ BitVec 32)) (_keys!9914 array!52012) (_values!5220 array!52014) (_vacant!2093 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4076)

(declare-datatypes ((List!17801 0))(
  ( (Nil!17798) (Cons!17797 (h!18928 (_ BitVec 64)) (t!25108 List!17801)) )
))
(declare-fun arrayNoDuplicates!0 (array!52012 (_ BitVec 32) List!17801) Bool)

(assert (=> b!890183 (= lt!402207 (arrayNoDuplicates!0 (_keys!9914 thiss!1181) #b00000000000000000000000000000000 Nil!17798))))

(declare-fun b!890184 () Bool)

(declare-fun e!496496 () Bool)

(declare-fun e!496491 () Bool)

(assert (=> b!890184 (= e!496496 (not e!496491))))

(declare-fun res!603267 () Bool)

(assert (=> b!890184 (=> res!603267 e!496491)))

(declare-datatypes ((SeekEntryResult!8790 0))(
  ( (MissingZero!8790 (index!37530 (_ BitVec 32))) (Found!8790 (index!37531 (_ BitVec 32))) (Intermediate!8790 (undefined!9602 Bool) (index!37532 (_ BitVec 32)) (x!75615 (_ BitVec 32))) (Undefined!8790) (MissingVacant!8790 (index!37533 (_ BitVec 32))) )
))
(declare-fun lt!402205 () SeekEntryResult!8790)

(assert (=> b!890184 (= res!603267 (not (is-Found!8790 lt!402205)))))

(declare-fun e!496488 () Bool)

(assert (=> b!890184 e!496488))

(declare-fun res!603271 () Bool)

(assert (=> b!890184 (=> res!603271 e!496488)))

(assert (=> b!890184 (= res!603271 (not (is-Found!8790 lt!402205)))))

(declare-datatypes ((Unit!30265 0))(
  ( (Unit!30266) )
))
(declare-fun lt!402206 () Unit!30265)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!12 (array!52012 array!52014 (_ BitVec 32) (_ BitVec 32) V!28995 V!28995 (_ BitVec 64)) Unit!30265)

(assert (=> b!890184 (= lt!402206 (lemmaSeekEntryGivesInRangeIndex!12 (_keys!9914 thiss!1181) (_values!5220 thiss!1181) (mask!25699 thiss!1181) (extraKeys!4929 thiss!1181) (zeroValue!5033 thiss!1181) (minValue!5033 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52012 (_ BitVec 32)) SeekEntryResult!8790)

(assert (=> b!890184 (= lt!402205 (seekEntry!0 key!785 (_keys!9914 thiss!1181) (mask!25699 thiss!1181)))))

(declare-fun b!890185 () Bool)

(declare-fun e!496494 () Bool)

(declare-fun tp_is_empty!18023 () Bool)

(assert (=> b!890185 (= e!496494 tp_is_empty!18023)))

(declare-fun b!890186 () Bool)

(declare-fun e!496492 () Bool)

(declare-fun mapRes!28589 () Bool)

(assert (=> b!890186 (= e!496492 (and e!496494 mapRes!28589))))

(declare-fun condMapEmpty!28589 () Bool)

(declare-fun mapDefault!28589 () ValueCell!8530)


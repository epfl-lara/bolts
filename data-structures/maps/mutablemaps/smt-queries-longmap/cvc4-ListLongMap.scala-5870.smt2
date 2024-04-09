; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75782 () Bool)

(assert start!75782)

(declare-fun b!890688 () Bool)

(declare-fun b_free!15725 () Bool)

(declare-fun b_next!15725 () Bool)

(assert (=> b!890688 (= b_free!15725 (not b_next!15725))))

(declare-fun tp!55145 () Bool)

(declare-fun b_and!25983 () Bool)

(assert (=> b!890688 (= tp!55145 b_and!25983)))

(declare-fun b!890678 () Bool)

(declare-fun e!496895 () Bool)

(declare-fun tp_is_empty!18053 () Bool)

(assert (=> b!890678 (= e!496895 tp_is_empty!18053)))

(declare-fun b!890679 () Bool)

(declare-fun e!496899 () Bool)

(assert (=> b!890679 (= e!496899 tp_is_empty!18053)))

(declare-fun b!890680 () Bool)

(declare-fun e!496898 () Bool)

(declare-fun e!496894 () Bool)

(assert (=> b!890680 (= e!496898 e!496894)))

(declare-fun res!603583 () Bool)

(assert (=> b!890680 (=> res!603583 e!496894)))

(declare-datatypes ((array!52072 0))(
  ( (array!52073 (arr!25038 (Array (_ BitVec 32) (_ BitVec 64))) (size!25483 (_ BitVec 32))) )
))
(declare-datatypes ((V!29035 0))(
  ( (V!29036 (val!9077 Int)) )
))
(declare-datatypes ((ValueCell!8545 0))(
  ( (ValueCellFull!8545 (v!11549 V!29035)) (EmptyCell!8545) )
))
(declare-datatypes ((array!52074 0))(
  ( (array!52075 (arr!25039 (Array (_ BitVec 32) ValueCell!8545)) (size!25484 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4106 0))(
  ( (LongMapFixedSize!4107 (defaultEntry!5250 Int) (mask!25724 (_ BitVec 32)) (extraKeys!4944 (_ BitVec 32)) (zeroValue!5048 V!29035) (minValue!5048 V!29035) (_size!2108 (_ BitVec 32)) (_keys!9929 array!52072) (_values!5235 array!52074) (_vacant!2108 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4106)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890680 (= res!603583 (not (validMask!0 (mask!25724 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890680 (arrayContainsKey!0 (_keys!9929 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8804 0))(
  ( (MissingZero!8804 (index!37586 (_ BitVec 32))) (Found!8804 (index!37587 (_ BitVec 32))) (Intermediate!8804 (undefined!9616 Bool) (index!37588 (_ BitVec 32)) (x!75669 (_ BitVec 32))) (Undefined!8804) (MissingVacant!8804 (index!37589 (_ BitVec 32))) )
))
(declare-fun lt!402386 () SeekEntryResult!8804)

(declare-datatypes ((Unit!30293 0))(
  ( (Unit!30294) )
))
(declare-fun lt!402384 () Unit!30293)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52072 (_ BitVec 64) (_ BitVec 32)) Unit!30293)

(assert (=> b!890680 (= lt!402384 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9929 thiss!1181) key!785 (index!37587 lt!402386)))))

(declare-fun b!890681 () Bool)

(declare-fun res!603587 () Bool)

(declare-fun e!496896 () Bool)

(assert (=> b!890681 (=> (not res!603587) (not e!496896))))

(assert (=> b!890681 (= res!603587 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890682 () Bool)

(assert (=> b!890682 (= e!496896 (not e!496898))))

(declare-fun res!603585 () Bool)

(assert (=> b!890682 (=> res!603585 e!496898)))

(assert (=> b!890682 (= res!603585 (not (is-Found!8804 lt!402386)))))

(declare-fun e!496900 () Bool)

(assert (=> b!890682 e!496900))

(declare-fun res!603586 () Bool)

(assert (=> b!890682 (=> res!603586 e!496900)))

(assert (=> b!890682 (= res!603586 (not (is-Found!8804 lt!402386)))))

(declare-fun lt!402385 () Unit!30293)

(declare-fun lemmaSeekEntryGivesInRangeIndex!26 (array!52072 array!52074 (_ BitVec 32) (_ BitVec 32) V!29035 V!29035 (_ BitVec 64)) Unit!30293)

(assert (=> b!890682 (= lt!402385 (lemmaSeekEntryGivesInRangeIndex!26 (_keys!9929 thiss!1181) (_values!5235 thiss!1181) (mask!25724 thiss!1181) (extraKeys!4944 thiss!1181) (zeroValue!5048 thiss!1181) (minValue!5048 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52072 (_ BitVec 32)) SeekEntryResult!8804)

(assert (=> b!890682 (= lt!402386 (seekEntry!0 key!785 (_keys!9929 thiss!1181) (mask!25724 thiss!1181)))))

(declare-fun b!890683 () Bool)

(declare-fun res!603582 () Bool)

(assert (=> b!890683 (=> res!603582 e!496894)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52072 (_ BitVec 32)) Bool)

(assert (=> b!890683 (= res!603582 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9929 thiss!1181) (mask!25724 thiss!1181))))))

(declare-fun res!603584 () Bool)

(assert (=> start!75782 (=> (not res!603584) (not e!496896))))

(declare-fun valid!1584 (LongMapFixedSize!4106) Bool)

(assert (=> start!75782 (= res!603584 (valid!1584 thiss!1181))))

(assert (=> start!75782 e!496896))

(declare-fun e!496893 () Bool)

(assert (=> start!75782 e!496893))

(assert (=> start!75782 true))

(declare-fun b!890684 () Bool)

(declare-fun e!496901 () Bool)

(declare-fun mapRes!28634 () Bool)

(assert (=> b!890684 (= e!496901 (and e!496899 mapRes!28634))))

(declare-fun condMapEmpty!28634 () Bool)

(declare-fun mapDefault!28634 () ValueCell!8545)


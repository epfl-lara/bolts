; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76980 () Bool)

(assert start!76980)

(declare-fun b!899145 () Bool)

(declare-fun b_free!16031 () Bool)

(declare-fun b_next!16031 () Bool)

(assert (=> b!899145 (= b_free!16031 (not b_next!16031))))

(declare-fun tp!56171 () Bool)

(declare-fun b_and!26355 () Bool)

(assert (=> b!899145 (= tp!56171 b_and!26355)))

(declare-fun b!899142 () Bool)

(declare-fun e!503125 () Bool)

(declare-fun e!503122 () Bool)

(assert (=> b!899142 (= e!503125 e!503122)))

(declare-fun res!607561 () Bool)

(assert (=> b!899142 (=> res!607561 e!503122)))

(declare-datatypes ((array!52746 0))(
  ( (array!52747 (arr!25344 (Array (_ BitVec 32) (_ BitVec 64))) (size!25802 (_ BitVec 32))) )
))
(declare-datatypes ((V!29443 0))(
  ( (V!29444 (val!9230 Int)) )
))
(declare-datatypes ((ValueCell!8698 0))(
  ( (ValueCellFull!8698 (v!11720 V!29443)) (EmptyCell!8698) )
))
(declare-datatypes ((array!52748 0))(
  ( (array!52749 (arr!25345 (Array (_ BitVec 32) ValueCell!8698)) (size!25803 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4412 0))(
  ( (LongMapFixedSize!4413 (defaultEntry!5428 Int) (mask!26173 (_ BitVec 32)) (extraKeys!5148 (_ BitVec 32)) (zeroValue!5252 V!29443) (minValue!5252 V!29443) (_size!2261 (_ BitVec 32)) (_keys!10211 array!52746) (_values!5439 array!52748) (_vacant!2261 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4412)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!899142 (= res!607561 (not (validMask!0 (mask!26173 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8919 0))(
  ( (MissingZero!8919 (index!38046 (_ BitVec 32))) (Found!8919 (index!38047 (_ BitVec 32))) (Intermediate!8919 (undefined!9731 Bool) (index!38048 (_ BitVec 32)) (x!76611 (_ BitVec 32))) (Undefined!8919) (MissingVacant!8919 (index!38049 (_ BitVec 32))) )
))
(declare-fun lt!406063 () SeekEntryResult!8919)

(declare-datatypes ((tuple2!12064 0))(
  ( (tuple2!12065 (_1!6042 (_ BitVec 64)) (_2!6042 V!29443)) )
))
(declare-datatypes ((List!17923 0))(
  ( (Nil!17920) (Cons!17919 (h!19063 tuple2!12064) (t!25276 List!17923)) )
))
(declare-datatypes ((ListLongMap!10775 0))(
  ( (ListLongMap!10776 (toList!5403 List!17923)) )
))
(declare-fun contains!4406 (ListLongMap!10775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2646 (array!52746 array!52748 (_ BitVec 32) (_ BitVec 32) V!29443 V!29443 (_ BitVec 32) Int) ListLongMap!10775)

(assert (=> b!899142 (contains!4406 (getCurrentListMap!2646 (_keys!10211 thiss!1181) (_values!5439 thiss!1181) (mask!26173 thiss!1181) (extraKeys!5148 thiss!1181) (zeroValue!5252 thiss!1181) (minValue!5252 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5428 thiss!1181)) (select (arr!25344 (_keys!10211 thiss!1181)) (index!38047 lt!406063)))))

(declare-datatypes ((Unit!30529 0))(
  ( (Unit!30530) )
))
(declare-fun lt!406065 () Unit!30529)

(declare-fun lemmaValidKeyInArrayIsInListMap!239 (array!52746 array!52748 (_ BitVec 32) (_ BitVec 32) V!29443 V!29443 (_ BitVec 32) Int) Unit!30529)

(assert (=> b!899142 (= lt!406065 (lemmaValidKeyInArrayIsInListMap!239 (_keys!10211 thiss!1181) (_values!5439 thiss!1181) (mask!26173 thiss!1181) (extraKeys!5148 thiss!1181) (zeroValue!5252 thiss!1181) (minValue!5252 thiss!1181) (index!38047 lt!406063) (defaultEntry!5428 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!899142 (arrayContainsKey!0 (_keys!10211 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406066 () Unit!30529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52746 (_ BitVec 64) (_ BitVec 32)) Unit!30529)

(assert (=> b!899142 (= lt!406066 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10211 thiss!1181) key!785 (index!38047 lt!406063)))))

(declare-fun b!899143 () Bool)

(declare-fun e!503126 () Bool)

(declare-fun tp_is_empty!18359 () Bool)

(assert (=> b!899143 (= e!503126 tp_is_empty!18359)))

(declare-fun mapNonEmpty!29201 () Bool)

(declare-fun mapRes!29201 () Bool)

(declare-fun tp!56170 () Bool)

(assert (=> mapNonEmpty!29201 (= mapRes!29201 (and tp!56170 e!503126))))

(declare-fun mapRest!29201 () (Array (_ BitVec 32) ValueCell!8698))

(declare-fun mapValue!29201 () ValueCell!8698)

(declare-fun mapKey!29201 () (_ BitVec 32))

(assert (=> mapNonEmpty!29201 (= (arr!25345 (_values!5439 thiss!1181)) (store mapRest!29201 mapKey!29201 mapValue!29201))))

(declare-fun res!607559 () Bool)

(declare-fun e!503124 () Bool)

(assert (=> start!76980 (=> (not res!607559) (not e!503124))))

(declare-fun valid!1682 (LongMapFixedSize!4412) Bool)

(assert (=> start!76980 (= res!607559 (valid!1682 thiss!1181))))

(assert (=> start!76980 e!503124))

(declare-fun e!503127 () Bool)

(assert (=> start!76980 e!503127))

(assert (=> start!76980 true))

(declare-fun b!899144 () Bool)

(declare-fun res!607563 () Bool)

(assert (=> b!899144 (=> (not res!607563) (not e!503124))))

(assert (=> b!899144 (= res!607563 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!29201 () Bool)

(assert (=> mapIsEmpty!29201 mapRes!29201))

(declare-fun e!503129 () Bool)

(declare-fun array_inv!19864 (array!52746) Bool)

(declare-fun array_inv!19865 (array!52748) Bool)

(assert (=> b!899145 (= e!503127 (and tp!56171 tp_is_empty!18359 (array_inv!19864 (_keys!10211 thiss!1181)) (array_inv!19865 (_values!5439 thiss!1181)) e!503129))))

(declare-fun b!899146 () Bool)

(assert (=> b!899146 (= e!503124 (not e!503125))))

(declare-fun res!607560 () Bool)

(assert (=> b!899146 (=> res!607560 e!503125)))

(assert (=> b!899146 (= res!607560 (not (is-Found!8919 lt!406063)))))

(declare-fun e!503130 () Bool)

(assert (=> b!899146 e!503130))

(declare-fun res!607562 () Bool)

(assert (=> b!899146 (=> res!607562 e!503130)))

(assert (=> b!899146 (= res!607562 (not (is-Found!8919 lt!406063)))))

(declare-fun lt!406064 () Unit!30529)

(declare-fun lemmaSeekEntryGivesInRangeIndex!101 (array!52746 array!52748 (_ BitVec 32) (_ BitVec 32) V!29443 V!29443 (_ BitVec 64)) Unit!30529)

(assert (=> b!899146 (= lt!406064 (lemmaSeekEntryGivesInRangeIndex!101 (_keys!10211 thiss!1181) (_values!5439 thiss!1181) (mask!26173 thiss!1181) (extraKeys!5148 thiss!1181) (zeroValue!5252 thiss!1181) (minValue!5252 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52746 (_ BitVec 32)) SeekEntryResult!8919)

(assert (=> b!899146 (= lt!406063 (seekEntry!0 key!785 (_keys!10211 thiss!1181) (mask!26173 thiss!1181)))))

(declare-fun b!899147 () Bool)

(assert (=> b!899147 (= e!503122 (or (not (= (size!25803 (_values!5439 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26173 thiss!1181)))) (not (= (size!25802 (_keys!10211 thiss!1181)) (size!25803 (_values!5439 thiss!1181)))) (bvsge (mask!26173 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!899148 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!899148 (= e!503130 (inRange!0 (index!38047 lt!406063) (mask!26173 thiss!1181)))))

(declare-fun b!899149 () Bool)

(declare-fun e!503123 () Bool)

(assert (=> b!899149 (= e!503123 tp_is_empty!18359)))

(declare-fun b!899150 () Bool)

(assert (=> b!899150 (= e!503129 (and e!503123 mapRes!29201))))

(declare-fun condMapEmpty!29201 () Bool)

(declare-fun mapDefault!29201 () ValueCell!8698)


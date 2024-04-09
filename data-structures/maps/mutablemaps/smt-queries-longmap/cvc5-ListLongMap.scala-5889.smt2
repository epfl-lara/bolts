; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75928 () Bool)

(assert start!75928)

(declare-fun b!892884 () Bool)

(declare-fun b_free!15835 () Bool)

(declare-fun b_next!15835 () Bool)

(assert (=> b!892884 (= b_free!15835 (not b_next!15835))))

(declare-fun tp!55477 () Bool)

(declare-fun b_and!26115 () Bool)

(assert (=> b!892884 (= tp!55477 b_and!26115)))

(declare-fun b!892880 () Bool)

(declare-fun e!498581 () Bool)

(assert (=> b!892880 (= e!498581 (not true))))

(declare-fun e!498578 () Bool)

(assert (=> b!892880 e!498578))

(declare-fun res!604870 () Bool)

(assert (=> b!892880 (=> res!604870 e!498578)))

(declare-datatypes ((SeekEntryResult!8849 0))(
  ( (MissingZero!8849 (index!37766 (_ BitVec 32))) (Found!8849 (index!37767 (_ BitVec 32))) (Intermediate!8849 (undefined!9661 Bool) (index!37768 (_ BitVec 32)) (x!75894 (_ BitVec 32))) (Undefined!8849) (MissingVacant!8849 (index!37769 (_ BitVec 32))) )
))
(declare-fun lt!403451 () SeekEntryResult!8849)

(assert (=> b!892880 (= res!604870 (not (is-Found!8849 lt!403451)))))

(declare-datatypes ((Unit!30383 0))(
  ( (Unit!30384) )
))
(declare-fun lt!403452 () Unit!30383)

(declare-datatypes ((array!52294 0))(
  ( (array!52295 (arr!25148 (Array (_ BitVec 32) (_ BitVec 64))) (size!25593 (_ BitVec 32))) )
))
(declare-datatypes ((V!29183 0))(
  ( (V!29184 (val!9132 Int)) )
))
(declare-datatypes ((ValueCell!8600 0))(
  ( (ValueCellFull!8600 (v!11607 V!29183)) (EmptyCell!8600) )
))
(declare-datatypes ((array!52296 0))(
  ( (array!52297 (arr!25149 (Array (_ BitVec 32) ValueCell!8600)) (size!25594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4216 0))(
  ( (LongMapFixedSize!4217 (defaultEntry!5308 Int) (mask!25823 (_ BitVec 32)) (extraKeys!5003 (_ BitVec 32)) (zeroValue!5107 V!29183) (minValue!5107 V!29183) (_size!2163 (_ BitVec 32)) (_keys!9989 array!52294) (_values!5294 array!52296) (_vacant!2163 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4216)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!63 (array!52294 array!52296 (_ BitVec 32) (_ BitVec 32) V!29183 V!29183 (_ BitVec 64)) Unit!30383)

(assert (=> b!892880 (= lt!403452 (lemmaSeekEntryGivesInRangeIndex!63 (_keys!9989 thiss!1181) (_values!5294 thiss!1181) (mask!25823 thiss!1181) (extraKeys!5003 thiss!1181) (zeroValue!5107 thiss!1181) (minValue!5107 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52294 (_ BitVec 32)) SeekEntryResult!8849)

(assert (=> b!892880 (= lt!403451 (seekEntry!0 key!785 (_keys!9989 thiss!1181) (mask!25823 thiss!1181)))))

(declare-fun b!892881 () Bool)

(declare-fun e!498583 () Bool)

(declare-fun e!498579 () Bool)

(declare-fun mapRes!28802 () Bool)

(assert (=> b!892881 (= e!498583 (and e!498579 mapRes!28802))))

(declare-fun condMapEmpty!28802 () Bool)

(declare-fun mapDefault!28802 () ValueCell!8600)


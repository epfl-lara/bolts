; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89412 () Bool)

(assert start!89412)

(declare-fun b!1024509 () Bool)

(declare-fun b_free!20375 () Bool)

(declare-fun b_next!20375 () Bool)

(assert (=> b!1024509 (= b_free!20375 (not b_next!20375))))

(declare-fun tp!72171 () Bool)

(declare-fun b_and!32639 () Bool)

(assert (=> b!1024509 (= tp!72171 b_and!32639)))

(declare-fun b!1024507 () Bool)

(declare-fun res!686028 () Bool)

(declare-fun e!577565 () Bool)

(assert (=> b!1024507 (=> res!686028 e!577565)))

(declare-datatypes ((List!21836 0))(
  ( (Nil!21833) (Cons!21832 (h!23030 (_ BitVec 64)) (t!30905 List!21836)) )
))
(declare-fun contains!5964 (List!21836 (_ BitVec 64)) Bool)

(assert (=> b!1024507 (= res!686028 (contains!5964 Nil!21833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024508 () Bool)

(declare-fun e!577567 () Bool)

(declare-fun tp_is_empty!24095 () Bool)

(assert (=> b!1024508 (= e!577567 tp_is_empty!24095)))

(declare-fun e!577562 () Bool)

(declare-datatypes ((V!36999 0))(
  ( (V!37000 (val!12098 Int)) )
))
(declare-datatypes ((ValueCell!11344 0))(
  ( (ValueCellFull!11344 (v!14668 V!36999)) (EmptyCell!11344) )
))
(declare-datatypes ((array!64224 0))(
  ( (array!64225 (arr!30917 (Array (_ BitVec 32) (_ BitVec 64))) (size!31431 (_ BitVec 32))) )
))
(declare-datatypes ((array!64226 0))(
  ( (array!64227 (arr!30918 (Array (_ BitVec 32) ValueCell!11344)) (size!31432 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5282 0))(
  ( (LongMapFixedSize!5283 (defaultEntry!5993 Int) (mask!29640 (_ BitVec 32)) (extraKeys!5725 (_ BitVec 32)) (zeroValue!5829 V!36999) (minValue!5829 V!36999) (_size!2696 (_ BitVec 32)) (_keys!11137 array!64224) (_values!6016 array!64226) (_vacant!2696 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5282)

(declare-fun e!577564 () Bool)

(declare-fun array_inv!23815 (array!64224) Bool)

(declare-fun array_inv!23816 (array!64226) Bool)

(assert (=> b!1024509 (= e!577564 (and tp!72171 tp_is_empty!24095 (array_inv!23815 (_keys!11137 thiss!1427)) (array_inv!23816 (_values!6016 thiss!1427)) e!577562))))

(declare-fun b!1024510 () Bool)

(declare-fun res!686029 () Bool)

(declare-fun e!577566 () Bool)

(assert (=> b!1024510 (=> (not res!686029) (not e!577566))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024510 (= res!686029 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!37571 () Bool)

(declare-fun mapRes!37571 () Bool)

(assert (=> mapIsEmpty!37571 mapRes!37571))

(declare-fun b!1024511 () Bool)

(declare-fun e!577561 () Bool)

(assert (=> b!1024511 (= e!577561 (not e!577565))))

(declare-fun res!686034 () Bool)

(assert (=> b!1024511 (=> res!686034 e!577565)))

(assert (=> b!1024511 (= res!686034 (or (bvsge (size!31431 (_keys!11137 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31431 (_keys!11137 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9587 0))(
  ( (MissingZero!9587 (index!40718 (_ BitVec 32))) (Found!9587 (index!40719 (_ BitVec 32))) (Intermediate!9587 (undefined!10399 Bool) (index!40720 (_ BitVec 32)) (x!91076 (_ BitVec 32))) (Undefined!9587) (MissingVacant!9587 (index!40721 (_ BitVec 32))) )
))
(declare-fun lt!450626 () SeekEntryResult!9587)

(declare-fun arrayCountValidKeys!0 (array!64224 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024511 (= (arrayCountValidKeys!0 (array!64225 (store (arr!30917 (_keys!11137 thiss!1427)) (index!40719 lt!450626) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31431 (_keys!11137 thiss!1427))) #b00000000000000000000000000000000 (size!31431 (_keys!11137 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11137 thiss!1427) #b00000000000000000000000000000000 (size!31431 (_keys!11137 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33320 0))(
  ( (Unit!33321) )
))
(declare-fun lt!450628 () Unit!33320)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64224 (_ BitVec 32) (_ BitVec 64)) Unit!33320)

(assert (=> b!1024511 (= lt!450628 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11137 thiss!1427) (index!40719 lt!450626) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024512 () Bool)

(declare-fun res!686032 () Bool)

(assert (=> b!1024512 (=> res!686032 e!577565)))

(declare-fun noDuplicate!1474 (List!21836) Bool)

(assert (=> b!1024512 (= res!686032 (not (noDuplicate!1474 Nil!21833)))))

(declare-fun b!1024513 () Bool)

(declare-fun res!686031 () Bool)

(assert (=> b!1024513 (=> res!686031 e!577565)))

(assert (=> b!1024513 (= res!686031 (contains!5964 Nil!21833 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024514 () Bool)

(declare-fun e!577568 () Bool)

(assert (=> b!1024514 (= e!577562 (and e!577568 mapRes!37571))))

(declare-fun condMapEmpty!37571 () Bool)

(declare-fun mapDefault!37571 () ValueCell!11344)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91268 () Bool)

(assert start!91268)

(declare-fun b!1040836 () Bool)

(declare-fun b_free!21029 () Bool)

(declare-fun b_next!21029 () Bool)

(assert (=> b!1040836 (= b_free!21029 (not b_next!21029))))

(declare-fun tp!74292 () Bool)

(declare-fun b_and!33579 () Bool)

(assert (=> b!1040836 (= tp!74292 b_and!33579)))

(declare-fun e!589410 () Bool)

(declare-fun tp_is_empty!24749 () Bool)

(declare-fun e!589411 () Bool)

(declare-datatypes ((V!37871 0))(
  ( (V!37872 (val!12425 Int)) )
))
(declare-datatypes ((ValueCell!11671 0))(
  ( (ValueCellFull!11671 (v!15013 V!37871)) (EmptyCell!11671) )
))
(declare-datatypes ((array!65624 0))(
  ( (array!65625 (arr!31571 (Array (_ BitVec 32) (_ BitVec 64))) (size!32103 (_ BitVec 32))) )
))
(declare-datatypes ((array!65626 0))(
  ( (array!65627 (arr!31572 (Array (_ BitVec 32) ValueCell!11671)) (size!32104 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5936 0))(
  ( (LongMapFixedSize!5937 (defaultEntry!6350 Int) (mask!30352 (_ BitVec 32)) (extraKeys!6078 (_ BitVec 32)) (zeroValue!6184 V!37871) (minValue!6184 V!37871) (_size!3023 (_ BitVec 32)) (_keys!11573 array!65624) (_values!6373 array!65626) (_vacant!3023 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5936)

(declare-fun array_inv!24237 (array!65624) Bool)

(declare-fun array_inv!24238 (array!65626) Bool)

(assert (=> b!1040836 (= e!589411 (and tp!74292 tp_is_empty!24749 (array_inv!24237 (_keys!11573 thiss!1427)) (array_inv!24238 (_values!6373 thiss!1427)) e!589410))))

(declare-fun mapNonEmpty!38710 () Bool)

(declare-fun mapRes!38710 () Bool)

(declare-fun tp!74291 () Bool)

(declare-fun e!589407 () Bool)

(assert (=> mapNonEmpty!38710 (= mapRes!38710 (and tp!74291 e!589407))))

(declare-fun mapRest!38710 () (Array (_ BitVec 32) ValueCell!11671))

(declare-fun mapValue!38710 () ValueCell!11671)

(declare-fun mapKey!38710 () (_ BitVec 32))

(assert (=> mapNonEmpty!38710 (= (arr!31572 (_values!6373 thiss!1427)) (store mapRest!38710 mapKey!38710 mapValue!38710))))

(declare-fun b!1040837 () Bool)

(declare-fun e!589406 () Bool)

(declare-fun e!589409 () Bool)

(assert (=> b!1040837 (= e!589406 e!589409)))

(declare-fun res!693936 () Bool)

(assert (=> b!1040837 (=> (not res!693936) (not e!589409))))

(declare-datatypes ((SeekEntryResult!9803 0))(
  ( (MissingZero!9803 (index!41582 (_ BitVec 32))) (Found!9803 (index!41583 (_ BitVec 32))) (Intermediate!9803 (undefined!10615 Bool) (index!41584 (_ BitVec 32)) (x!92918 (_ BitVec 32))) (Undefined!9803) (MissingVacant!9803 (index!41585 (_ BitVec 32))) )
))
(declare-fun lt!458752 () SeekEntryResult!9803)

(assert (=> b!1040837 (= res!693936 (is-Found!9803 lt!458752))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65624 (_ BitVec 32)) SeekEntryResult!9803)

(assert (=> b!1040837 (= lt!458752 (seekEntry!0 key!909 (_keys!11573 thiss!1427) (mask!30352 thiss!1427)))))

(declare-fun b!1040838 () Bool)

(declare-fun res!693935 () Bool)

(assert (=> b!1040838 (=> (not res!693935) (not e!589406))))

(assert (=> b!1040838 (= res!693935 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040840 () Bool)

(declare-fun e!589405 () Bool)

(assert (=> b!1040840 (= e!589405 tp_is_empty!24749)))

(declare-fun mapIsEmpty!38710 () Bool)

(assert (=> mapIsEmpty!38710 mapRes!38710))

(declare-fun b!1040841 () Bool)

(assert (=> b!1040841 (= e!589410 (and e!589405 mapRes!38710))))

(declare-fun condMapEmpty!38710 () Bool)

(declare-fun mapDefault!38710 () ValueCell!11671)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90076 () Bool)

(assert start!90076)

(declare-fun b!1031114 () Bool)

(declare-fun b_free!20647 () Bool)

(declare-fun b_next!20647 () Bool)

(assert (=> b!1031114 (= b_free!20647 (not b_next!20647))))

(declare-fun tp!73012 () Bool)

(declare-fun b_and!33079 () Bool)

(assert (=> b!1031114 (= tp!73012 b_and!33079)))

(declare-fun b!1031113 () Bool)

(declare-fun e!582384 () Bool)

(declare-fun tp_is_empty!24367 () Bool)

(assert (=> b!1031113 (= e!582384 tp_is_empty!24367)))

(declare-fun e!582386 () Bool)

(declare-fun e!582387 () Bool)

(declare-datatypes ((V!37363 0))(
  ( (V!37364 (val!12234 Int)) )
))
(declare-datatypes ((ValueCell!11480 0))(
  ( (ValueCellFull!11480 (v!14812 V!37363)) (EmptyCell!11480) )
))
(declare-datatypes ((array!64782 0))(
  ( (array!64783 (arr!31189 (Array (_ BitVec 32) (_ BitVec 64))) (size!31707 (_ BitVec 32))) )
))
(declare-datatypes ((array!64784 0))(
  ( (array!64785 (arr!31190 (Array (_ BitVec 32) ValueCell!11480)) (size!31708 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5554 0))(
  ( (LongMapFixedSize!5555 (defaultEntry!6151 Int) (mask!29938 (_ BitVec 32)) (extraKeys!5883 (_ BitVec 32)) (zeroValue!5987 V!37363) (minValue!5987 V!37363) (_size!2832 (_ BitVec 32)) (_keys!11321 array!64782) (_values!6174 array!64784) (_vacant!2832 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5554)

(declare-fun array_inv!23987 (array!64782) Bool)

(declare-fun array_inv!23988 (array!64784) Bool)

(assert (=> b!1031114 (= e!582386 (and tp!73012 tp_is_empty!24367 (array_inv!23987 (_keys!11321 thiss!1427)) (array_inv!23988 (_values!6174 thiss!1427)) e!582387))))

(declare-fun mapIsEmpty!38004 () Bool)

(declare-fun mapRes!38004 () Bool)

(assert (=> mapIsEmpty!38004 mapRes!38004))

(declare-fun b!1031115 () Bool)

(declare-fun res!689538 () Bool)

(declare-fun e!582391 () Bool)

(assert (=> b!1031115 (=> res!689538 e!582391)))

(declare-datatypes ((Unit!33688 0))(
  ( (Unit!33689) )
))
(declare-datatypes ((tuple2!15740 0))(
  ( (tuple2!15741 (_1!7880 Unit!33688) (_2!7880 LongMapFixedSize!5554)) )
))
(declare-fun lt!455115 () tuple2!15740)

(assert (=> b!1031115 (= res!689538 (or (not (= (size!31708 (_values!6174 (_2!7880 lt!455115))) (bvadd #b00000000000000000000000000000001 (mask!29938 (_2!7880 lt!455115))))) (not (= (size!31707 (_keys!11321 (_2!7880 lt!455115))) (size!31708 (_values!6174 (_2!7880 lt!455115))))) (bvslt (mask!29938 (_2!7880 lt!455115)) #b00000000000000000000000000000000) (bvslt (extraKeys!5883 (_2!7880 lt!455115)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5883 (_2!7880 lt!455115)) #b00000000000000000000000000000011)))))

(declare-fun b!1031116 () Bool)

(declare-fun res!689540 () Bool)

(assert (=> b!1031116 (=> res!689540 e!582391)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64782 (_ BitVec 32)) Bool)

(assert (=> b!1031116 (= res!689540 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11321 (_2!7880 lt!455115)) (mask!29938 (_2!7880 lt!455115)))))))

(declare-fun b!1031117 () Bool)

(declare-fun e!582389 () Bool)

(declare-fun e!582390 () Bool)

(assert (=> b!1031117 (= e!582389 e!582390)))

(declare-fun res!689543 () Bool)

(assert (=> b!1031117 (=> (not res!689543) (not e!582390))))

(declare-datatypes ((SeekEntryResult!9693 0))(
  ( (MissingZero!9693 (index!41142 (_ BitVec 32))) (Found!9693 (index!41143 (_ BitVec 32))) (Intermediate!9693 (undefined!10505 Bool) (index!41144 (_ BitVec 32)) (x!91796 (_ BitVec 32))) (Undefined!9693) (MissingVacant!9693 (index!41145 (_ BitVec 32))) )
))
(declare-fun lt!455112 () SeekEntryResult!9693)

(assert (=> b!1031117 (= res!689543 (is-Found!9693 lt!455112))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64782 (_ BitVec 32)) SeekEntryResult!9693)

(assert (=> b!1031117 (= lt!455112 (seekEntry!0 key!909 (_keys!11321 thiss!1427) (mask!29938 thiss!1427)))))

(declare-fun b!1031118 () Bool)

(assert (=> b!1031118 (= e!582387 (and e!582384 mapRes!38004))))

(declare-fun condMapEmpty!38004 () Bool)

(declare-fun mapDefault!38004 () ValueCell!11480)


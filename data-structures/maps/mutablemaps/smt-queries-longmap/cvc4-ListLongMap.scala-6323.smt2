; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81354 () Bool)

(assert start!81354)

(declare-fun b!951014 () Bool)

(declare-fun b_free!18263 () Bool)

(declare-fun b_next!18263 () Bool)

(assert (=> b!951014 (= b_free!18263 (not b_next!18263))))

(declare-fun tp!63396 () Bool)

(declare-fun b_and!29747 () Bool)

(assert (=> b!951014 (= tp!63396 b_and!29747)))

(declare-fun e!535536 () Bool)

(declare-datatypes ((V!32659 0))(
  ( (V!32660 (val!10436 Int)) )
))
(declare-datatypes ((ValueCell!9904 0))(
  ( (ValueCellFull!9904 (v!12982 V!32659)) (EmptyCell!9904) )
))
(declare-datatypes ((array!57588 0))(
  ( (array!57589 (arr!27687 (Array (_ BitVec 32) ValueCell!9904)) (size!28166 (_ BitVec 32))) )
))
(declare-datatypes ((array!57590 0))(
  ( (array!57591 (arr!27688 (Array (_ BitVec 32) (_ BitVec 64))) (size!28167 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4958 0))(
  ( (LongMapFixedSize!4959 (defaultEntry!5798 Int) (mask!27607 (_ BitVec 32)) (extraKeys!5530 (_ BitVec 32)) (zeroValue!5634 V!32659) (minValue!5634 V!32659) (_size!2534 (_ BitVec 32)) (_keys!10736 array!57590) (_values!5821 array!57588) (_vacant!2534 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4958)

(declare-fun e!535532 () Bool)

(declare-fun tp_is_empty!20771 () Bool)

(declare-fun array_inv!21432 (array!57590) Bool)

(declare-fun array_inv!21433 (array!57588) Bool)

(assert (=> b!951014 (= e!535536 (and tp!63396 tp_is_empty!20771 (array_inv!21432 (_keys!10736 thiss!1141)) (array_inv!21433 (_values!5821 thiss!1141)) e!535532))))

(declare-fun b!951016 () Bool)

(declare-fun e!535537 () Bool)

(declare-fun lt!428354 () (_ BitVec 32))

(assert (=> b!951016 (= e!535537 (or (not (= (size!28167 (_keys!10736 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27607 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!28167 (_keys!10736 thiss!1141))) (and (bvsge lt!428354 #b00000000000000000000000000000000) (bvsle lt!428354 (size!28167 (_keys!10736 thiss!1141))))))))

(declare-fun mapIsEmpty!33078 () Bool)

(declare-fun mapRes!33078 () Bool)

(assert (=> mapIsEmpty!33078 mapRes!33078))

(declare-fun b!951017 () Bool)

(declare-fun res!637532 () Bool)

(declare-fun e!535533 () Bool)

(assert (=> b!951017 (=> (not res!637532) (not e!535533))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9136 0))(
  ( (MissingZero!9136 (index!38914 (_ BitVec 32))) (Found!9136 (index!38915 (_ BitVec 32))) (Intermediate!9136 (undefined!9948 Bool) (index!38916 (_ BitVec 32)) (x!81809 (_ BitVec 32))) (Undefined!9136) (MissingVacant!9136 (index!38917 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57590 (_ BitVec 32)) SeekEntryResult!9136)

(assert (=> b!951017 (= res!637532 (not (is-Found!9136 (seekEntry!0 key!756 (_keys!10736 thiss!1141) (mask!27607 thiss!1141)))))))

(declare-fun b!951018 () Bool)

(declare-fun e!535531 () Bool)

(assert (=> b!951018 (= e!535531 tp_is_empty!20771)))

(declare-fun b!951019 () Bool)

(declare-fun e!535535 () Bool)

(assert (=> b!951019 (= e!535532 (and e!535535 mapRes!33078))))

(declare-fun condMapEmpty!33078 () Bool)

(declare-fun mapDefault!33078 () ValueCell!9904)


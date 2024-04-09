; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80446 () Bool)

(assert start!80446)

(declare-fun b!944489 () Bool)

(declare-fun b_free!18061 () Bool)

(declare-fun b_next!18061 () Bool)

(assert (=> b!944489 (= b_free!18061 (not b_next!18061))))

(declare-fun tp!62693 () Bool)

(declare-fun b_and!29497 () Bool)

(assert (=> b!944489 (= tp!62693 b_and!29497)))

(declare-fun b!944485 () Bool)

(declare-fun res!634598 () Bool)

(declare-fun e!531169 () Bool)

(assert (=> b!944485 (=> (not res!634598) (not e!531169))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!944485 (= res!634598 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944486 () Bool)

(declare-fun e!531170 () Bool)

(assert (=> b!944486 (= e!531170 true)))

(declare-datatypes ((SeekEntryResult!9063 0))(
  ( (MissingZero!9063 (index!38622 (_ BitVec 32))) (Found!9063 (index!38623 (_ BitVec 32))) (Intermediate!9063 (undefined!9875 Bool) (index!38624 (_ BitVec 32)) (x!81123 (_ BitVec 32))) (Undefined!9063) (MissingVacant!9063 (index!38625 (_ BitVec 32))) )
))
(declare-fun lt!425639 () SeekEntryResult!9063)

(declare-datatypes ((V!32391 0))(
  ( (V!32392 (val!10335 Int)) )
))
(declare-datatypes ((ValueCell!9803 0))(
  ( (ValueCellFull!9803 (v!12867 V!32391)) (EmptyCell!9803) )
))
(declare-datatypes ((array!57128 0))(
  ( (array!57129 (arr!27485 (Array (_ BitVec 32) ValueCell!9803)) (size!27952 (_ BitVec 32))) )
))
(declare-datatypes ((array!57130 0))(
  ( (array!57131 (arr!27486 (Array (_ BitVec 32) (_ BitVec 64))) (size!27953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4756 0))(
  ( (LongMapFixedSize!4757 (defaultEntry!5673 Int) (mask!27320 (_ BitVec 32)) (extraKeys!5405 (_ BitVec 32)) (zeroValue!5509 V!32391) (minValue!5509 V!32391) (_size!2433 (_ BitVec 32)) (_keys!10547 array!57130) (_values!5696 array!57128) (_vacant!2433 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4756)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57130 (_ BitVec 32)) SeekEntryResult!9063)

(assert (=> b!944486 (= lt!425639 (seekEntryOrOpen!0 key!756 (_keys!10547 thiss!1141) (mask!27320 thiss!1141)))))

(declare-fun b!944488 () Bool)

(declare-fun e!531167 () Bool)

(declare-fun e!531171 () Bool)

(declare-fun mapRes!32679 () Bool)

(assert (=> b!944488 (= e!531167 (and e!531171 mapRes!32679))))

(declare-fun condMapEmpty!32679 () Bool)

(declare-fun mapDefault!32679 () ValueCell!9803)


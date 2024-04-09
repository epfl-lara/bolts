; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80570 () Bool)

(assert start!80570)

(declare-fun b!945532 () Bool)

(declare-fun b_free!18113 () Bool)

(declare-fun b_next!18113 () Bool)

(assert (=> b!945532 (= b_free!18113 (not b_next!18113))))

(declare-fun tp!62864 () Bool)

(declare-fun b_and!29553 () Bool)

(assert (=> b!945532 (= tp!62864 b_and!29553)))

(declare-fun res!635076 () Bool)

(declare-fun e!531905 () Bool)

(assert (=> start!80570 (=> (not res!635076) (not e!531905))))

(declare-datatypes ((V!32459 0))(
  ( (V!32460 (val!10361 Int)) )
))
(declare-datatypes ((ValueCell!9829 0))(
  ( (ValueCellFull!9829 (v!12895 V!32459)) (EmptyCell!9829) )
))
(declare-datatypes ((array!57240 0))(
  ( (array!57241 (arr!27537 (Array (_ BitVec 32) ValueCell!9829)) (size!28006 (_ BitVec 32))) )
))
(declare-datatypes ((array!57242 0))(
  ( (array!57243 (arr!27538 (Array (_ BitVec 32) (_ BitVec 64))) (size!28007 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4808 0))(
  ( (LongMapFixedSize!4809 (defaultEntry!5701 Int) (mask!27368 (_ BitVec 32)) (extraKeys!5433 (_ BitVec 32)) (zeroValue!5537 V!32459) (minValue!5537 V!32459) (_size!2459 (_ BitVec 32)) (_keys!10579 array!57242) (_values!5724 array!57240) (_vacant!2459 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4808)

(declare-fun valid!1813 (LongMapFixedSize!4808) Bool)

(assert (=> start!80570 (= res!635076 (valid!1813 thiss!1141))))

(assert (=> start!80570 e!531905))

(declare-fun e!531909 () Bool)

(assert (=> start!80570 e!531909))

(assert (=> start!80570 true))

(declare-fun b!945530 () Bool)

(declare-datatypes ((SeekEntryResult!9083 0))(
  ( (MissingZero!9083 (index!38702 (_ BitVec 32))) (Found!9083 (index!38703 (_ BitVec 32))) (Intermediate!9083 (undefined!9895 Bool) (index!38704 (_ BitVec 32)) (x!81255 (_ BitVec 32))) (Undefined!9083) (MissingVacant!9083 (index!38705 (_ BitVec 32))) )
))
(declare-fun lt!426020 () SeekEntryResult!9083)

(assert (=> b!945530 (= e!531905 (and (is-Found!9083 lt!426020) (bvsge (index!38703 lt!426020) #b00000000000000000000000000000000) (bvslt (index!38703 lt!426020) (size!28007 (_keys!10579 thiss!1141))) (bvsge (size!28007 (_keys!10579 thiss!1141)) #b01111111111111111111111111111111)))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57242 (_ BitVec 32)) SeekEntryResult!9083)

(assert (=> b!945530 (= lt!426020 (seekEntry!0 key!756 (_keys!10579 thiss!1141) (mask!27368 thiss!1141)))))

(declare-fun mapIsEmpty!32771 () Bool)

(declare-fun mapRes!32771 () Bool)

(assert (=> mapIsEmpty!32771 mapRes!32771))

(declare-fun b!945531 () Bool)

(declare-fun e!531910 () Bool)

(declare-fun e!531906 () Bool)

(assert (=> b!945531 (= e!531910 (and e!531906 mapRes!32771))))

(declare-fun condMapEmpty!32771 () Bool)

(declare-fun mapDefault!32771 () ValueCell!9829)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80432 () Bool)

(assert start!80432)

(declare-fun b!944241 () Bool)

(declare-fun b_free!18047 () Bool)

(declare-fun b_next!18047 () Bool)

(assert (=> b!944241 (= b_free!18047 (not b_next!18047))))

(declare-fun tp!62652 () Bool)

(declare-fun b_and!29483 () Bool)

(assert (=> b!944241 (= tp!62652 b_and!29483)))

(declare-fun b!944235 () Bool)

(declare-fun e!531021 () Bool)

(assert (=> b!944235 (= e!531021 true)))

(declare-fun lt!425556 () Bool)

(declare-datatypes ((V!32371 0))(
  ( (V!32372 (val!10328 Int)) )
))
(declare-datatypes ((ValueCell!9796 0))(
  ( (ValueCellFull!9796 (v!12860 V!32371)) (EmptyCell!9796) )
))
(declare-datatypes ((array!57100 0))(
  ( (array!57101 (arr!27471 (Array (_ BitVec 32) ValueCell!9796)) (size!27938 (_ BitVec 32))) )
))
(declare-datatypes ((array!57102 0))(
  ( (array!57103 (arr!27472 (Array (_ BitVec 32) (_ BitVec 64))) (size!27939 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4742 0))(
  ( (LongMapFixedSize!4743 (defaultEntry!5666 Int) (mask!27307 (_ BitVec 32)) (extraKeys!5398 (_ BitVec 32)) (zeroValue!5502 V!32371) (minValue!5502 V!32371) (_size!2426 (_ BitVec 32)) (_keys!10540 array!57102) (_values!5689 array!57100) (_vacant!2426 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4742)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57102 (_ BitVec 32)) Bool)

(assert (=> b!944235 (= lt!425556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10540 thiss!1141) (mask!27307 thiss!1141)))))

(declare-fun mapNonEmpty!32658 () Bool)

(declare-fun mapRes!32658 () Bool)

(declare-fun tp!62651 () Bool)

(declare-fun e!531022 () Bool)

(assert (=> mapNonEmpty!32658 (= mapRes!32658 (and tp!62651 e!531022))))

(declare-fun mapKey!32658 () (_ BitVec 32))

(declare-fun mapRest!32658 () (Array (_ BitVec 32) ValueCell!9796))

(declare-fun mapValue!32658 () ValueCell!9796)

(assert (=> mapNonEmpty!32658 (= (arr!27471 (_values!5689 thiss!1141)) (store mapRest!32658 mapKey!32658 mapValue!32658))))

(declare-fun b!944236 () Bool)

(declare-fun res!634429 () Bool)

(declare-fun e!531018 () Bool)

(assert (=> b!944236 (=> (not res!634429) (not e!531018))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9057 0))(
  ( (MissingZero!9057 (index!38598 (_ BitVec 32))) (Found!9057 (index!38599 (_ BitVec 32))) (Intermediate!9057 (undefined!9869 Bool) (index!38600 (_ BitVec 32)) (x!81093 (_ BitVec 32))) (Undefined!9057) (MissingVacant!9057 (index!38601 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57102 (_ BitVec 32)) SeekEntryResult!9057)

(assert (=> b!944236 (= res!634429 (not (is-Found!9057 (seekEntry!0 key!756 (_keys!10540 thiss!1141) (mask!27307 thiss!1141)))))))

(declare-fun b!944237 () Bool)

(declare-fun res!634432 () Bool)

(assert (=> b!944237 (=> (not res!634432) (not e!531018))))

(assert (=> b!944237 (= res!634432 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944238 () Bool)

(declare-fun e!531024 () Bool)

(declare-fun e!531019 () Bool)

(assert (=> b!944238 (= e!531024 (and e!531019 mapRes!32658))))

(declare-fun condMapEmpty!32658 () Bool)

(declare-fun mapDefault!32658 () ValueCell!9796)


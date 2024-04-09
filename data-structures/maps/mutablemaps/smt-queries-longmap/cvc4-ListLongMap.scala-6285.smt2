; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80420 () Bool)

(assert start!80420)

(declare-fun b!944064 () Bool)

(declare-fun b_free!18035 () Bool)

(declare-fun b_next!18035 () Bool)

(assert (=> b!944064 (= b_free!18035 (not b_next!18035))))

(declare-fun tp!62616 () Bool)

(declare-fun b_and!29471 () Bool)

(assert (=> b!944064 (= tp!62616 b_and!29471)))

(declare-fun b!944055 () Bool)

(declare-fun e!530893 () Bool)

(declare-fun e!530894 () Bool)

(assert (=> b!944055 (= e!530893 (not e!530894))))

(declare-fun res!634320 () Bool)

(assert (=> b!944055 (=> res!634320 e!530894)))

(declare-datatypes ((V!32355 0))(
  ( (V!32356 (val!10322 Int)) )
))
(declare-datatypes ((ValueCell!9790 0))(
  ( (ValueCellFull!9790 (v!12854 V!32355)) (EmptyCell!9790) )
))
(declare-datatypes ((array!57076 0))(
  ( (array!57077 (arr!27459 (Array (_ BitVec 32) ValueCell!9790)) (size!27926 (_ BitVec 32))) )
))
(declare-datatypes ((array!57078 0))(
  ( (array!57079 (arr!27460 (Array (_ BitVec 32) (_ BitVec 64))) (size!27927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4730 0))(
  ( (LongMapFixedSize!4731 (defaultEntry!5660 Int) (mask!27297 (_ BitVec 32)) (extraKeys!5392 (_ BitVec 32)) (zeroValue!5496 V!32355) (minValue!5496 V!32355) (_size!2420 (_ BitVec 32)) (_keys!10534 array!57078) (_values!5683 array!57076) (_vacant!2420 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4730)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944055 (= res!634320 (not (validMask!0 (mask!27297 thiss!1141))))))

(declare-fun lt!425504 () (_ BitVec 32))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57078 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944055 (= lt!425504 (arrayScanForKey!0 (_keys!10534 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944055 (arrayContainsKey!0 (_keys!10534 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31839 0))(
  ( (Unit!31840) )
))
(declare-fun lt!425503 () Unit!31839)

(declare-fun lemmaKeyInListMapIsInArray!303 (array!57078 array!57076 (_ BitVec 32) (_ BitVec 32) V!32355 V!32355 (_ BitVec 64) Int) Unit!31839)

(assert (=> b!944055 (= lt!425503 (lemmaKeyInListMapIsInArray!303 (_keys!10534 thiss!1141) (_values!5683 thiss!1141) (mask!27297 thiss!1141) (extraKeys!5392 thiss!1141) (zeroValue!5496 thiss!1141) (minValue!5496 thiss!1141) key!756 (defaultEntry!5660 thiss!1141)))))

(declare-fun b!944056 () Bool)

(declare-fun e!530895 () Bool)

(declare-fun e!530896 () Bool)

(declare-fun mapRes!32640 () Bool)

(assert (=> b!944056 (= e!530895 (and e!530896 mapRes!32640))))

(declare-fun condMapEmpty!32640 () Bool)

(declare-fun mapDefault!32640 () ValueCell!9790)


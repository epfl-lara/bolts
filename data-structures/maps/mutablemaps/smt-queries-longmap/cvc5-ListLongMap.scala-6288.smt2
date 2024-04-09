; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80434 () Bool)

(assert start!80434)

(declare-fun b!944275 () Bool)

(declare-fun b_free!18049 () Bool)

(declare-fun b_next!18049 () Bool)

(assert (=> b!944275 (= b_free!18049 (not b_next!18049))))

(declare-fun tp!62657 () Bool)

(declare-fun b_and!29485 () Bool)

(assert (=> b!944275 (= tp!62657 b_and!29485)))

(declare-fun b!944269 () Bool)

(declare-fun e!531044 () Bool)

(declare-fun tp_is_empty!20557 () Bool)

(assert (=> b!944269 (= e!531044 tp_is_empty!20557)))

(declare-fun b!944270 () Bool)

(declare-fun res!634456 () Bool)

(declare-fun e!531039 () Bool)

(assert (=> b!944270 (=> res!634456 e!531039)))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944270 (= res!634456 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944271 () Bool)

(declare-fun e!531042 () Bool)

(assert (=> b!944271 (= e!531042 tp_is_empty!20557)))

(declare-fun b!944272 () Bool)

(assert (=> b!944272 (= e!531039 true)))

(declare-datatypes ((SeekEntryResult!9058 0))(
  ( (MissingZero!9058 (index!38602 (_ BitVec 32))) (Found!9058 (index!38603 (_ BitVec 32))) (Intermediate!9058 (undefined!9870 Bool) (index!38604 (_ BitVec 32)) (x!81102 (_ BitVec 32))) (Undefined!9058) (MissingVacant!9058 (index!38605 (_ BitVec 32))) )
))
(declare-fun lt!425567 () SeekEntryResult!9058)

(declare-datatypes ((V!32375 0))(
  ( (V!32376 (val!10329 Int)) )
))
(declare-datatypes ((ValueCell!9797 0))(
  ( (ValueCellFull!9797 (v!12861 V!32375)) (EmptyCell!9797) )
))
(declare-datatypes ((array!57104 0))(
  ( (array!57105 (arr!27473 (Array (_ BitVec 32) ValueCell!9797)) (size!27940 (_ BitVec 32))) )
))
(declare-datatypes ((array!57106 0))(
  ( (array!57107 (arr!27474 (Array (_ BitVec 32) (_ BitVec 64))) (size!27941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4744 0))(
  ( (LongMapFixedSize!4745 (defaultEntry!5667 Int) (mask!27310 (_ BitVec 32)) (extraKeys!5399 (_ BitVec 32)) (zeroValue!5503 V!32375) (minValue!5503 V!32375) (_size!2427 (_ BitVec 32)) (_keys!10541 array!57106) (_values!5690 array!57104) (_vacant!2427 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4744)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57106 (_ BitVec 32)) SeekEntryResult!9058)

(assert (=> b!944272 (= lt!425567 (seekEntryOrOpen!0 key!756 (_keys!10541 thiss!1141) (mask!27310 thiss!1141)))))

(declare-fun b!944273 () Bool)

(declare-fun res!634452 () Bool)

(assert (=> b!944273 (=> res!634452 e!531039)))

(assert (=> b!944273 (= res!634452 (not (= (size!27941 (_keys!10541 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27310 thiss!1141)))))))

(declare-fun e!531040 () Bool)

(declare-fun e!531045 () Bool)

(declare-fun array_inv!21290 (array!57106) Bool)

(declare-fun array_inv!21291 (array!57104) Bool)

(assert (=> b!944275 (= e!531040 (and tp!62657 tp_is_empty!20557 (array_inv!21290 (_keys!10541 thiss!1141)) (array_inv!21291 (_values!5690 thiss!1141)) e!531045))))

(declare-fun mapIsEmpty!32661 () Bool)

(declare-fun mapRes!32661 () Bool)

(assert (=> mapIsEmpty!32661 mapRes!32661))

(declare-fun b!944276 () Bool)

(declare-fun res!634454 () Bool)

(declare-fun e!531041 () Bool)

(assert (=> b!944276 (=> (not res!634454) (not e!531041))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57106 (_ BitVec 32)) SeekEntryResult!9058)

(assert (=> b!944276 (= res!634454 (not (is-Found!9058 (seekEntry!0 key!756 (_keys!10541 thiss!1141) (mask!27310 thiss!1141)))))))

(declare-fun b!944277 () Bool)

(assert (=> b!944277 (= e!531045 (and e!531042 mapRes!32661))))

(declare-fun condMapEmpty!32661 () Bool)

(declare-fun mapDefault!32661 () ValueCell!9797)


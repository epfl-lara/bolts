; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80194 () Bool)

(assert start!80194)

(declare-fun b!941806 () Bool)

(declare-fun b_free!17929 () Bool)

(declare-fun b_next!17929 () Bool)

(assert (=> b!941806 (= b_free!17929 (not b_next!17929))))

(declare-fun tp!62280 () Bool)

(declare-fun b_and!29359 () Bool)

(assert (=> b!941806 (= tp!62280 b_and!29359)))

(declare-fun mapNonEmpty!32464 () Bool)

(declare-fun mapRes!32464 () Bool)

(declare-fun tp!62281 () Bool)

(declare-fun e!529544 () Bool)

(assert (=> mapNonEmpty!32464 (= mapRes!32464 (and tp!62281 e!529544))))

(declare-fun mapKey!32464 () (_ BitVec 32))

(declare-datatypes ((V!32215 0))(
  ( (V!32216 (val!10269 Int)) )
))
(declare-datatypes ((ValueCell!9737 0))(
  ( (ValueCellFull!9737 (v!12800 V!32215)) (EmptyCell!9737) )
))
(declare-datatypes ((array!56854 0))(
  ( (array!56855 (arr!27353 (Array (_ BitVec 32) ValueCell!9737)) (size!27818 (_ BitVec 32))) )
))
(declare-datatypes ((array!56856 0))(
  ( (array!56857 (arr!27354 (Array (_ BitVec 32) (_ BitVec 64))) (size!27819 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4624 0))(
  ( (LongMapFixedSize!4625 (defaultEntry!5603 Int) (mask!27185 (_ BitVec 32)) (extraKeys!5335 (_ BitVec 32)) (zeroValue!5439 V!32215) (minValue!5439 V!32215) (_size!2367 (_ BitVec 32)) (_keys!10463 array!56856) (_values!5626 array!56854) (_vacant!2367 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4624)

(declare-fun mapRest!32464 () (Array (_ BitVec 32) ValueCell!9737))

(declare-fun mapValue!32464 () ValueCell!9737)

(assert (=> mapNonEmpty!32464 (= (arr!27353 (_values!5626 thiss!1141)) (store mapRest!32464 mapKey!32464 mapValue!32464))))

(declare-fun res!633098 () Bool)

(declare-fun e!529543 () Bool)

(assert (=> start!80194 (=> (not res!633098) (not e!529543))))

(declare-fun valid!1751 (LongMapFixedSize!4624) Bool)

(assert (=> start!80194 (= res!633098 (valid!1751 thiss!1141))))

(assert (=> start!80194 e!529543))

(declare-fun e!529540 () Bool)

(assert (=> start!80194 e!529540))

(assert (=> start!80194 true))

(declare-fun b!941805 () Bool)

(assert (=> b!941805 (= e!529543 (and (= (size!27818 (_values!5626 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27185 thiss!1141))) (= (size!27819 (_keys!10463 thiss!1141)) (size!27818 (_values!5626 thiss!1141))) (bvsge (mask!27185 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5335 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5335 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun e!529545 () Bool)

(declare-fun tp_is_empty!20437 () Bool)

(declare-fun array_inv!21212 (array!56856) Bool)

(declare-fun array_inv!21213 (array!56854) Bool)

(assert (=> b!941806 (= e!529540 (and tp!62280 tp_is_empty!20437 (array_inv!21212 (_keys!10463 thiss!1141)) (array_inv!21213 (_values!5626 thiss!1141)) e!529545))))

(declare-fun b!941807 () Bool)

(declare-fun res!633095 () Bool)

(assert (=> b!941807 (=> (not res!633095) (not e!529543))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!941807 (= res!633095 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941808 () Bool)

(declare-fun res!633096 () Bool)

(assert (=> b!941808 (=> (not res!633096) (not e!529543))))

(declare-datatypes ((SeekEntryResult!9018 0))(
  ( (MissingZero!9018 (index!38442 (_ BitVec 32))) (Found!9018 (index!38443 (_ BitVec 32))) (Intermediate!9018 (undefined!9830 Bool) (index!38444 (_ BitVec 32)) (x!80843 (_ BitVec 32))) (Undefined!9018) (MissingVacant!9018 (index!38445 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56856 (_ BitVec 32)) SeekEntryResult!9018)

(assert (=> b!941808 (= res!633096 (not (is-Found!9018 (seekEntry!0 key!756 (_keys!10463 thiss!1141) (mask!27185 thiss!1141)))))))

(declare-fun b!941809 () Bool)

(declare-fun e!529542 () Bool)

(assert (=> b!941809 (= e!529545 (and e!529542 mapRes!32464))))

(declare-fun condMapEmpty!32464 () Bool)

(declare-fun mapDefault!32464 () ValueCell!9737)


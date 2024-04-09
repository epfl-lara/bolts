; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80704 () Bool)

(assert start!80704)

(declare-fun b!946322 () Bool)

(declare-fun b_free!18139 () Bool)

(declare-fun b_next!18139 () Bool)

(assert (=> b!946322 (= b_free!18139 (not b_next!18139))))

(declare-fun tp!62959 () Bool)

(declare-fun b_and!29579 () Bool)

(assert (=> b!946322 (= tp!62959 b_and!29579)))

(declare-fun b!946319 () Bool)

(declare-fun e!532487 () Bool)

(declare-datatypes ((V!32495 0))(
  ( (V!32496 (val!10374 Int)) )
))
(declare-datatypes ((ValueCell!9842 0))(
  ( (ValueCellFull!9842 (v!12908 V!32495)) (EmptyCell!9842) )
))
(declare-datatypes ((array!57302 0))(
  ( (array!57303 (arr!27563 (Array (_ BitVec 32) ValueCell!9842)) (size!28035 (_ BitVec 32))) )
))
(declare-datatypes ((array!57304 0))(
  ( (array!57305 (arr!27564 (Array (_ BitVec 32) (_ BitVec 64))) (size!28036 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4834 0))(
  ( (LongMapFixedSize!4835 (defaultEntry!5714 Int) (mask!27412 (_ BitVec 32)) (extraKeys!5446 (_ BitVec 32)) (zeroValue!5550 V!32495) (minValue!5550 V!32495) (_size!2472 (_ BitVec 32)) (_keys!10606 array!57304) (_values!5737 array!57302) (_vacant!2472 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4834)

(assert (=> b!946319 (= e!532487 (or (not (= (size!28035 (_values!5737 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27412 thiss!1141)))) (not (= (size!28036 (_keys!10606 thiss!1141)) (size!28035 (_values!5737 thiss!1141)))) (bvsge (mask!27412 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!946320 () Bool)

(declare-fun res!635399 () Bool)

(declare-fun e!532485 () Bool)

(assert (=> b!946320 (=> (not res!635399) (not e!532485))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946320 (= res!635399 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!946321 () Bool)

(declare-fun e!532490 () Bool)

(declare-fun tp_is_empty!20647 () Bool)

(assert (=> b!946321 (= e!532490 tp_is_empty!20647)))

(declare-fun e!532486 () Bool)

(declare-fun e!532483 () Bool)

(declare-fun array_inv!21350 (array!57304) Bool)

(declare-fun array_inv!21351 (array!57302) Bool)

(assert (=> b!946322 (= e!532483 (and tp!62959 tp_is_empty!20647 (array_inv!21350 (_keys!10606 thiss!1141)) (array_inv!21351 (_values!5737 thiss!1141)) e!532486))))

(declare-fun b!946323 () Bool)

(declare-fun e!532489 () Bool)

(assert (=> b!946323 (= e!532489 tp_is_empty!20647)))

(declare-fun res!635398 () Bool)

(assert (=> start!80704 (=> (not res!635398) (not e!532485))))

(declare-fun valid!1822 (LongMapFixedSize!4834) Bool)

(assert (=> start!80704 (= res!635398 (valid!1822 thiss!1141))))

(assert (=> start!80704 e!532485))

(assert (=> start!80704 e!532483))

(assert (=> start!80704 true))

(declare-fun b!946324 () Bool)

(declare-fun e!532484 () Bool)

(assert (=> b!946324 (= e!532484 (not e!532487))))

(declare-fun res!635396 () Bool)

(assert (=> b!946324 (=> res!635396 e!532487)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946324 (= res!635396 (not (validMask!0 (mask!27412 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946324 (arrayContainsKey!0 (_keys!10606 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31899 0))(
  ( (Unit!31900) )
))
(declare-fun lt!426247 () Unit!31899)

(declare-datatypes ((SeekEntryResult!9091 0))(
  ( (MissingZero!9091 (index!38734 (_ BitVec 32))) (Found!9091 (index!38735 (_ BitVec 32))) (Intermediate!9091 (undefined!9903 Bool) (index!38736 (_ BitVec 32)) (x!81370 (_ BitVec 32))) (Undefined!9091) (MissingVacant!9091 (index!38737 (_ BitVec 32))) )
))
(declare-fun lt!426248 () SeekEntryResult!9091)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57304 (_ BitVec 64) (_ BitVec 32)) Unit!31899)

(assert (=> b!946324 (= lt!426247 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10606 thiss!1141) key!756 (index!38735 lt!426248)))))

(declare-fun b!946325 () Bool)

(assert (=> b!946325 (= e!532485 e!532484)))

(declare-fun res!635397 () Bool)

(assert (=> b!946325 (=> (not res!635397) (not e!532484))))

(assert (=> b!946325 (= res!635397 (is-Found!9091 lt!426248))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57304 (_ BitVec 32)) SeekEntryResult!9091)

(assert (=> b!946325 (= lt!426248 (seekEntry!0 key!756 (_keys!10606 thiss!1141) (mask!27412 thiss!1141)))))

(declare-fun mapIsEmpty!32828 () Bool)

(declare-fun mapRes!32828 () Bool)

(assert (=> mapIsEmpty!32828 mapRes!32828))

(declare-fun mapNonEmpty!32828 () Bool)

(declare-fun tp!62960 () Bool)

(assert (=> mapNonEmpty!32828 (= mapRes!32828 (and tp!62960 e!532489))))

(declare-fun mapValue!32828 () ValueCell!9842)

(declare-fun mapRest!32828 () (Array (_ BitVec 32) ValueCell!9842))

(declare-fun mapKey!32828 () (_ BitVec 32))

(assert (=> mapNonEmpty!32828 (= (arr!27563 (_values!5737 thiss!1141)) (store mapRest!32828 mapKey!32828 mapValue!32828))))

(declare-fun b!946326 () Bool)

(assert (=> b!946326 (= e!532486 (and e!532490 mapRes!32828))))

(declare-fun condMapEmpty!32828 () Bool)

(declare-fun mapDefault!32828 () ValueCell!9842)


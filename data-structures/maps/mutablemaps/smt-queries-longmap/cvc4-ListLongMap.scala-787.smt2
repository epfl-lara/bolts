; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18764 () Bool)

(assert start!18764)

(declare-fun b!185288 () Bool)

(declare-fun b_free!4565 () Bool)

(declare-fun b_next!4565 () Bool)

(assert (=> b!185288 (= b_free!4565 (not b_next!4565))))

(declare-fun tp!16488 () Bool)

(declare-fun b_and!11181 () Bool)

(assert (=> b!185288 (= tp!16488 b_and!11181)))

(declare-fun res!87665 () Bool)

(declare-fun e!121938 () Bool)

(assert (=> start!18764 (=> (not res!87665) (not e!121938))))

(declare-datatypes ((V!5429 0))(
  ( (V!5430 (val!2213 Int)) )
))
(declare-datatypes ((ValueCell!1825 0))(
  ( (ValueCellFull!1825 (v!4118 V!5429)) (EmptyCell!1825) )
))
(declare-datatypes ((array!7878 0))(
  ( (array!7879 (arr!3720 (Array (_ BitVec 32) (_ BitVec 64))) (size!4036 (_ BitVec 32))) )
))
(declare-datatypes ((array!7880 0))(
  ( (array!7881 (arr!3721 (Array (_ BitVec 32) ValueCell!1825)) (size!4037 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2558 0))(
  ( (LongMapFixedSize!2559 (defaultEntry!3779 Int) (mask!8882 (_ BitVec 32)) (extraKeys!3516 (_ BitVec 32)) (zeroValue!3620 V!5429) (minValue!3620 V!5429) (_size!1328 (_ BitVec 32)) (_keys!5716 array!7878) (_values!3762 array!7880) (_vacant!1328 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2558)

(declare-fun valid!1047 (LongMapFixedSize!2558) Bool)

(assert (=> start!18764 (= res!87665 (valid!1047 thiss!1248))))

(assert (=> start!18764 e!121938))

(declare-fun e!121941 () Bool)

(assert (=> start!18764 e!121941))

(assert (=> start!18764 true))

(declare-fun b!185281 () Bool)

(declare-fun res!87659 () Bool)

(assert (=> b!185281 (=> (not res!87659) (not e!121938))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!185281 (= res!87659 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185282 () Bool)

(declare-fun res!87661 () Bool)

(declare-fun e!121943 () Bool)

(assert (=> b!185282 (=> (not res!87661) (not e!121943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7878 (_ BitVec 32)) Bool)

(assert (=> b!185282 (= res!87661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5716 thiss!1248) (mask!8882 thiss!1248)))))

(declare-fun b!185283 () Bool)

(declare-fun res!87662 () Bool)

(assert (=> b!185283 (=> (not res!87662) (not e!121943))))

(declare-datatypes ((tuple2!3444 0))(
  ( (tuple2!3445 (_1!1732 (_ BitVec 64)) (_2!1732 V!5429)) )
))
(declare-datatypes ((List!2378 0))(
  ( (Nil!2375) (Cons!2374 (h!3007 tuple2!3444) (t!7266 List!2378)) )
))
(declare-datatypes ((ListLongMap!2375 0))(
  ( (ListLongMap!2376 (toList!1203 List!2378)) )
))
(declare-fun contains!1291 (ListLongMap!2375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!846 (array!7878 array!7880 (_ BitVec 32) (_ BitVec 32) V!5429 V!5429 (_ BitVec 32) Int) ListLongMap!2375)

(assert (=> b!185283 (= res!87662 (not (contains!1291 (getCurrentListMap!846 (_keys!5716 thiss!1248) (_values!3762 thiss!1248) (mask!8882 thiss!1248) (extraKeys!3516 thiss!1248) (zeroValue!3620 thiss!1248) (minValue!3620 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3779 thiss!1248)) key!828)))))

(declare-fun b!185284 () Bool)

(assert (=> b!185284 (= e!121938 e!121943)))

(declare-fun res!87660 () Bool)

(assert (=> b!185284 (=> (not res!87660) (not e!121943))))

(declare-datatypes ((SeekEntryResult!642 0))(
  ( (MissingZero!642 (index!4738 (_ BitVec 32))) (Found!642 (index!4739 (_ BitVec 32))) (Intermediate!642 (undefined!1454 Bool) (index!4740 (_ BitVec 32)) (x!20136 (_ BitVec 32))) (Undefined!642) (MissingVacant!642 (index!4741 (_ BitVec 32))) )
))
(declare-fun lt!91672 () SeekEntryResult!642)

(assert (=> b!185284 (= res!87660 (and (not (is-Undefined!642 lt!91672)) (not (is-MissingVacant!642 lt!91672)) (not (is-MissingZero!642 lt!91672)) (is-Found!642 lt!91672)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7878 (_ BitVec 32)) SeekEntryResult!642)

(assert (=> b!185284 (= lt!91672 (seekEntryOrOpen!0 key!828 (_keys!5716 thiss!1248) (mask!8882 thiss!1248)))))

(declare-fun mapIsEmpty!7461 () Bool)

(declare-fun mapRes!7461 () Bool)

(assert (=> mapIsEmpty!7461 mapRes!7461))

(declare-fun b!185285 () Bool)

(declare-datatypes ((List!2379 0))(
  ( (Nil!2376) (Cons!2375 (h!3008 (_ BitVec 64)) (t!7267 List!2379)) )
))
(declare-fun arrayNoDuplicates!0 (array!7878 (_ BitVec 32) List!2379) Bool)

(assert (=> b!185285 (= e!121943 (not (arrayNoDuplicates!0 (_keys!5716 thiss!1248) #b00000000000000000000000000000000 Nil!2376)))))

(declare-fun b!185286 () Bool)

(declare-fun res!87664 () Bool)

(assert (=> b!185286 (=> (not res!87664) (not e!121943))))

(assert (=> b!185286 (= res!87664 (and (= (size!4037 (_values!3762 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8882 thiss!1248))) (= (size!4036 (_keys!5716 thiss!1248)) (size!4037 (_values!3762 thiss!1248))) (bvsge (mask!8882 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3516 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3516 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185287 () Bool)

(declare-fun res!87663 () Bool)

(assert (=> b!185287 (=> (not res!87663) (not e!121943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185287 (= res!87663 (validMask!0 (mask!8882 thiss!1248)))))

(declare-fun mapNonEmpty!7461 () Bool)

(declare-fun tp!16487 () Bool)

(declare-fun e!121944 () Bool)

(assert (=> mapNonEmpty!7461 (= mapRes!7461 (and tp!16487 e!121944))))

(declare-fun mapValue!7461 () ValueCell!1825)

(declare-fun mapRest!7461 () (Array (_ BitVec 32) ValueCell!1825))

(declare-fun mapKey!7461 () (_ BitVec 32))

(assert (=> mapNonEmpty!7461 (= (arr!3721 (_values!3762 thiss!1248)) (store mapRest!7461 mapKey!7461 mapValue!7461))))

(declare-fun tp_is_empty!4337 () Bool)

(declare-fun e!121942 () Bool)

(declare-fun array_inv!2397 (array!7878) Bool)

(declare-fun array_inv!2398 (array!7880) Bool)

(assert (=> b!185288 (= e!121941 (and tp!16488 tp_is_empty!4337 (array_inv!2397 (_keys!5716 thiss!1248)) (array_inv!2398 (_values!3762 thiss!1248)) e!121942))))

(declare-fun b!185289 () Bool)

(declare-fun e!121939 () Bool)

(assert (=> b!185289 (= e!121939 tp_is_empty!4337)))

(declare-fun b!185290 () Bool)

(assert (=> b!185290 (= e!121944 tp_is_empty!4337)))

(declare-fun b!185291 () Bool)

(assert (=> b!185291 (= e!121942 (and e!121939 mapRes!7461))))

(declare-fun condMapEmpty!7461 () Bool)

(declare-fun mapDefault!7461 () ValueCell!1825)


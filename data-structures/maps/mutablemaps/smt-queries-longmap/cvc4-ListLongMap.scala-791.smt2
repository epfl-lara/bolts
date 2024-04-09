; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18826 () Bool)

(assert start!18826)

(declare-fun b!185926 () Bool)

(declare-fun b_free!4589 () Bool)

(declare-fun b_next!4589 () Bool)

(assert (=> b!185926 (= b_free!4589 (not b_next!4589))))

(declare-fun tp!16565 () Bool)

(declare-fun b_and!11209 () Bool)

(assert (=> b!185926 (= tp!16565 b_and!11209)))

(declare-fun res!87977 () Bool)

(declare-fun e!122380 () Bool)

(assert (=> start!18826 (=> (not res!87977) (not e!122380))))

(declare-datatypes ((V!5461 0))(
  ( (V!5462 (val!2225 Int)) )
))
(declare-datatypes ((ValueCell!1837 0))(
  ( (ValueCellFull!1837 (v!4132 V!5461)) (EmptyCell!1837) )
))
(declare-datatypes ((array!7930 0))(
  ( (array!7931 (arr!3744 (Array (_ BitVec 32) (_ BitVec 64))) (size!4060 (_ BitVec 32))) )
))
(declare-datatypes ((array!7932 0))(
  ( (array!7933 (arr!3745 (Array (_ BitVec 32) ValueCell!1837)) (size!4061 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2582 0))(
  ( (LongMapFixedSize!2583 (defaultEntry!3793 Int) (mask!8910 (_ BitVec 32)) (extraKeys!3530 (_ BitVec 32)) (zeroValue!3634 V!5461) (minValue!3634 V!5461) (_size!1340 (_ BitVec 32)) (_keys!5734 array!7930) (_values!3776 array!7932) (_vacant!1340 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2582)

(declare-fun valid!1056 (LongMapFixedSize!2582) Bool)

(assert (=> start!18826 (= res!87977 (valid!1056 thiss!1248))))

(assert (=> start!18826 e!122380))

(declare-fun e!122379 () Bool)

(assert (=> start!18826 e!122379))

(assert (=> start!18826 true))

(declare-fun b!185923 () Bool)

(declare-fun e!122382 () Bool)

(assert (=> b!185923 (= e!122380 e!122382)))

(declare-fun res!87978 () Bool)

(assert (=> b!185923 (=> (not res!87978) (not e!122382))))

(declare-datatypes ((SeekEntryResult!651 0))(
  ( (MissingZero!651 (index!4774 (_ BitVec 32))) (Found!651 (index!4775 (_ BitVec 32))) (Intermediate!651 (undefined!1463 Bool) (index!4776 (_ BitVec 32)) (x!20197 (_ BitVec 32))) (Undefined!651) (MissingVacant!651 (index!4777 (_ BitVec 32))) )
))
(declare-fun lt!91943 () SeekEntryResult!651)

(assert (=> b!185923 (= res!87978 (and (not (is-Undefined!651 lt!91943)) (not (is-MissingVacant!651 lt!91943)) (not (is-MissingZero!651 lt!91943)) (is-Found!651 lt!91943)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7930 (_ BitVec 32)) SeekEntryResult!651)

(assert (=> b!185923 (= lt!91943 (seekEntryOrOpen!0 key!828 (_keys!5734 thiss!1248) (mask!8910 thiss!1248)))))

(declare-fun mapIsEmpty!7503 () Bool)

(declare-fun mapRes!7503 () Bool)

(assert (=> mapIsEmpty!7503 mapRes!7503))

(declare-fun e!122374 () Bool)

(declare-fun b!185924 () Bool)

(assert (=> b!185924 (= e!122374 (= (select (arr!3744 (_keys!5734 thiss!1248)) (index!4775 lt!91943)) key!828))))

(declare-fun b!185925 () Bool)

(declare-datatypes ((Unit!5602 0))(
  ( (Unit!5603) )
))
(declare-fun e!122375 () Unit!5602)

(declare-fun Unit!5604 () Unit!5602)

(assert (=> b!185925 (= e!122375 Unit!5604)))

(declare-fun lt!91945 () Unit!5602)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!144 (array!7930 array!7932 (_ BitVec 32) (_ BitVec 32) V!5461 V!5461 (_ BitVec 64) Int) Unit!5602)

(assert (=> b!185925 (= lt!91945 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!144 (_keys!5734 thiss!1248) (_values!3776 thiss!1248) (mask!8910 thiss!1248) (extraKeys!3530 thiss!1248) (zeroValue!3634 thiss!1248) (minValue!3634 thiss!1248) key!828 (defaultEntry!3793 thiss!1248)))))

(assert (=> b!185925 false))

(declare-fun e!122378 () Bool)

(declare-fun tp_is_empty!4361 () Bool)

(declare-fun array_inv!2411 (array!7930) Bool)

(declare-fun array_inv!2412 (array!7932) Bool)

(assert (=> b!185926 (= e!122379 (and tp!16565 tp_is_empty!4361 (array_inv!2411 (_keys!5734 thiss!1248)) (array_inv!2412 (_values!3776 thiss!1248)) e!122378))))

(declare-fun b!185927 () Bool)

(declare-fun e!122376 () Bool)

(assert (=> b!185927 (= e!122376 tp_is_empty!4361)))

(declare-fun b!185928 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185928 (= e!122382 (not (validMask!0 (mask!8910 thiss!1248))))))

(declare-fun lt!91942 () Unit!5602)

(assert (=> b!185928 (= lt!91942 e!122375)))

(declare-fun c!33312 () Bool)

(declare-datatypes ((tuple2!3462 0))(
  ( (tuple2!3463 (_1!1741 (_ BitVec 64)) (_2!1741 V!5461)) )
))
(declare-datatypes ((List!2392 0))(
  ( (Nil!2389) (Cons!2388 (h!3021 tuple2!3462) (t!7284 List!2392)) )
))
(declare-datatypes ((ListLongMap!2393 0))(
  ( (ListLongMap!2394 (toList!1212 List!2392)) )
))
(declare-fun contains!1302 (ListLongMap!2393 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!855 (array!7930 array!7932 (_ BitVec 32) (_ BitVec 32) V!5461 V!5461 (_ BitVec 32) Int) ListLongMap!2393)

(assert (=> b!185928 (= c!33312 (contains!1302 (getCurrentListMap!855 (_keys!5734 thiss!1248) (_values!3776 thiss!1248) (mask!8910 thiss!1248) (extraKeys!3530 thiss!1248) (zeroValue!3634 thiss!1248) (minValue!3634 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3793 thiss!1248)) key!828))))

(declare-fun b!185929 () Bool)

(declare-fun res!87980 () Bool)

(assert (=> b!185929 (=> (not res!87980) (not e!122380))))

(assert (=> b!185929 (= res!87980 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7503 () Bool)

(declare-fun tp!16566 () Bool)

(declare-fun e!122381 () Bool)

(assert (=> mapNonEmpty!7503 (= mapRes!7503 (and tp!16566 e!122381))))

(declare-fun mapKey!7503 () (_ BitVec 32))

(declare-fun mapValue!7503 () ValueCell!1837)

(declare-fun mapRest!7503 () (Array (_ BitVec 32) ValueCell!1837))

(assert (=> mapNonEmpty!7503 (= (arr!3745 (_values!3776 thiss!1248)) (store mapRest!7503 mapKey!7503 mapValue!7503))))

(declare-fun b!185930 () Bool)

(assert (=> b!185930 (= e!122378 (and e!122376 mapRes!7503))))

(declare-fun condMapEmpty!7503 () Bool)

(declare-fun mapDefault!7503 () ValueCell!1837)


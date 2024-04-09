; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19738 () Bool)

(assert start!19738)

(declare-fun b!193260 () Bool)

(declare-fun b_free!4705 () Bool)

(declare-fun b_next!4705 () Bool)

(assert (=> b!193260 (= b_free!4705 (not b_next!4705))))

(declare-fun tp!16979 () Bool)

(declare-fun b_and!11429 () Bool)

(assert (=> b!193260 (= tp!16979 b_and!11429)))

(declare-fun b!193253 () Bool)

(declare-fun res!91334 () Bool)

(declare-fun e!127166 () Bool)

(assert (=> b!193253 (=> res!91334 e!127166)))

(declare-datatypes ((V!5617 0))(
  ( (V!5618 (val!2283 Int)) )
))
(declare-datatypes ((ValueCell!1895 0))(
  ( (ValueCellFull!1895 (v!4235 V!5617)) (EmptyCell!1895) )
))
(declare-datatypes ((array!8200 0))(
  ( (array!8201 (arr!3860 (Array (_ BitVec 32) (_ BitVec 64))) (size!4184 (_ BitVec 32))) )
))
(declare-datatypes ((array!8202 0))(
  ( (array!8203 (arr!3861 (Array (_ BitVec 32) ValueCell!1895)) (size!4185 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2698 0))(
  ( (LongMapFixedSize!2699 (defaultEntry!3945 Int) (mask!9196 (_ BitVec 32)) (extraKeys!3682 (_ BitVec 32)) (zeroValue!3786 V!5617) (minValue!3786 V!5617) (_size!1398 (_ BitVec 32)) (_keys!5935 array!8200) (_values!3928 array!8202) (_vacant!1398 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2698)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8200 (_ BitVec 32)) Bool)

(assert (=> b!193253 (= res!91334 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5935 thiss!1248) (mask!9196 thiss!1248))))))

(declare-fun b!193254 () Bool)

(declare-fun e!127170 () Bool)

(declare-fun tp_is_empty!4477 () Bool)

(assert (=> b!193254 (= e!127170 tp_is_empty!4477)))

(declare-fun b!193255 () Bool)

(declare-fun res!91332 () Bool)

(declare-fun e!127163 () Bool)

(assert (=> b!193255 (=> (not res!91332) (not e!127163))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!193255 (= res!91332 (not (= key!828 (bvneg key!828))))))

(declare-fun b!193256 () Bool)

(declare-fun res!91331 () Bool)

(assert (=> b!193256 (=> res!91331 e!127166)))

(assert (=> b!193256 (= res!91331 (or (not (= (size!4185 (_values!3928 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9196 thiss!1248)))) (not (= (size!4184 (_keys!5935 thiss!1248)) (size!4185 (_values!3928 thiss!1248)))) (bvslt (mask!9196 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3682 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3682 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!193257 () Bool)

(declare-datatypes ((Unit!5850 0))(
  ( (Unit!5851) )
))
(declare-fun e!127171 () Unit!5850)

(declare-fun lt!96244 () Unit!5850)

(assert (=> b!193257 (= e!127171 lt!96244)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!182 (array!8200 array!8202 (_ BitVec 32) (_ BitVec 32) V!5617 V!5617 (_ BitVec 64) Int) Unit!5850)

(assert (=> b!193257 (= lt!96244 (lemmaInListMapThenSeekEntryOrOpenFindsIt!182 (_keys!5935 thiss!1248) (_values!3928 thiss!1248) (mask!9196 thiss!1248) (extraKeys!3682 thiss!1248) (zeroValue!3786 thiss!1248) (minValue!3786 thiss!1248) key!828 (defaultEntry!3945 thiss!1248)))))

(declare-fun res!91329 () Bool)

(declare-datatypes ((SeekEntryResult!697 0))(
  ( (MissingZero!697 (index!4958 (_ BitVec 32))) (Found!697 (index!4959 (_ BitVec 32))) (Intermediate!697 (undefined!1509 Bool) (index!4960 (_ BitVec 32)) (x!20657 (_ BitVec 32))) (Undefined!697) (MissingVacant!697 (index!4961 (_ BitVec 32))) )
))
(declare-fun lt!96240 () SeekEntryResult!697)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193257 (= res!91329 (inRange!0 (index!4959 lt!96240) (mask!9196 thiss!1248)))))

(declare-fun e!127162 () Bool)

(assert (=> b!193257 (=> (not res!91329) (not e!127162))))

(assert (=> b!193257 e!127162))

(declare-fun b!193258 () Bool)

(declare-fun e!127169 () Bool)

(assert (=> b!193258 (= e!127163 e!127169)))

(declare-fun res!91335 () Bool)

(assert (=> b!193258 (=> (not res!91335) (not e!127169))))

(assert (=> b!193258 (= res!91335 (and (not (is-Undefined!697 lt!96240)) (not (is-MissingVacant!697 lt!96240)) (not (is-MissingZero!697 lt!96240)) (is-Found!697 lt!96240)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8200 (_ BitVec 32)) SeekEntryResult!697)

(assert (=> b!193258 (= lt!96240 (seekEntryOrOpen!0 key!828 (_keys!5935 thiss!1248) (mask!9196 thiss!1248)))))

(declare-fun b!193259 () Bool)

(declare-fun e!127167 () Bool)

(assert (=> b!193259 (= e!127167 tp_is_empty!4477)))

(declare-fun e!127164 () Bool)

(declare-fun e!127168 () Bool)

(declare-fun array_inv!2495 (array!8200) Bool)

(declare-fun array_inv!2496 (array!8202) Bool)

(assert (=> b!193260 (= e!127164 (and tp!16979 tp_is_empty!4477 (array_inv!2495 (_keys!5935 thiss!1248)) (array_inv!2496 (_values!3928 thiss!1248)) e!127168))))

(declare-fun mapIsEmpty!7742 () Bool)

(declare-fun mapRes!7742 () Bool)

(assert (=> mapIsEmpty!7742 mapRes!7742))

(declare-fun b!193261 () Bool)

(declare-fun Unit!5852 () Unit!5850)

(assert (=> b!193261 (= e!127171 Unit!5852)))

(declare-fun lt!96241 () Unit!5850)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!189 (array!8200 array!8202 (_ BitVec 32) (_ BitVec 32) V!5617 V!5617 (_ BitVec 64) Int) Unit!5850)

(assert (=> b!193261 (= lt!96241 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!189 (_keys!5935 thiss!1248) (_values!3928 thiss!1248) (mask!9196 thiss!1248) (extraKeys!3682 thiss!1248) (zeroValue!3786 thiss!1248) (minValue!3786 thiss!1248) key!828 (defaultEntry!3945 thiss!1248)))))

(assert (=> b!193261 false))

(declare-fun res!91336 () Bool)

(assert (=> start!19738 (=> (not res!91336) (not e!127163))))

(declare-fun valid!1099 (LongMapFixedSize!2698) Bool)

(assert (=> start!19738 (= res!91336 (valid!1099 thiss!1248))))

(assert (=> start!19738 e!127163))

(assert (=> start!19738 e!127164))

(assert (=> start!19738 true))

(assert (=> start!19738 tp_is_empty!4477))

(declare-fun mapNonEmpty!7742 () Bool)

(declare-fun tp!16978 () Bool)

(assert (=> mapNonEmpty!7742 (= mapRes!7742 (and tp!16978 e!127170))))

(declare-fun mapRest!7742 () (Array (_ BitVec 32) ValueCell!1895))

(declare-fun mapValue!7742 () ValueCell!1895)

(declare-fun mapKey!7742 () (_ BitVec 32))

(assert (=> mapNonEmpty!7742 (= (arr!3861 (_values!3928 thiss!1248)) (store mapRest!7742 mapKey!7742 mapValue!7742))))

(declare-fun b!193262 () Bool)

(declare-fun res!91333 () Bool)

(assert (=> b!193262 (=> res!91333 e!127166)))

(declare-datatypes ((List!2457 0))(
  ( (Nil!2454) (Cons!2453 (h!3094 (_ BitVec 64)) (t!7387 List!2457)) )
))
(declare-fun arrayNoDuplicates!0 (array!8200 (_ BitVec 32) List!2457) Bool)

(assert (=> b!193262 (= res!91333 (not (arrayNoDuplicates!0 (_keys!5935 thiss!1248) #b00000000000000000000000000000000 Nil!2454)))))

(declare-fun b!193263 () Bool)

(assert (=> b!193263 (= e!127166 (and (bvsge (index!4959 lt!96240) #b00000000000000000000000000000000) (bvslt (index!4959 lt!96240) (size!4184 (_keys!5935 thiss!1248)))))))

(declare-fun b!193264 () Bool)

(assert (=> b!193264 (= e!127169 (not e!127166))))

(declare-fun res!91330 () Bool)

(assert (=> b!193264 (=> res!91330 e!127166)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193264 (= res!91330 (not (validMask!0 (mask!9196 thiss!1248))))))

(declare-fun v!309 () V!5617)

(declare-datatypes ((tuple2!3542 0))(
  ( (tuple2!3543 (_1!1781 (_ BitVec 64)) (_2!1781 V!5617)) )
))
(declare-datatypes ((List!2458 0))(
  ( (Nil!2455) (Cons!2454 (h!3095 tuple2!3542) (t!7388 List!2458)) )
))
(declare-datatypes ((ListLongMap!2473 0))(
  ( (ListLongMap!2474 (toList!1252 List!2458)) )
))
(declare-fun lt!96242 () ListLongMap!2473)

(declare-fun +!310 (ListLongMap!2473 tuple2!3542) ListLongMap!2473)

(declare-fun getCurrentListMap!895 (array!8200 array!8202 (_ BitVec 32) (_ BitVec 32) V!5617 V!5617 (_ BitVec 32) Int) ListLongMap!2473)

(assert (=> b!193264 (= (+!310 lt!96242 (tuple2!3543 key!828 v!309)) (getCurrentListMap!895 (_keys!5935 thiss!1248) (array!8203 (store (arr!3861 (_values!3928 thiss!1248)) (index!4959 lt!96240) (ValueCellFull!1895 v!309)) (size!4185 (_values!3928 thiss!1248))) (mask!9196 thiss!1248) (extraKeys!3682 thiss!1248) (zeroValue!3786 thiss!1248) (minValue!3786 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3945 thiss!1248)))))

(declare-fun lt!96245 () Unit!5850)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!116 (array!8200 array!8202 (_ BitVec 32) (_ BitVec 32) V!5617 V!5617 (_ BitVec 32) (_ BitVec 64) V!5617 Int) Unit!5850)

(assert (=> b!193264 (= lt!96245 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!116 (_keys!5935 thiss!1248) (_values!3928 thiss!1248) (mask!9196 thiss!1248) (extraKeys!3682 thiss!1248) (zeroValue!3786 thiss!1248) (minValue!3786 thiss!1248) (index!4959 lt!96240) key!828 v!309 (defaultEntry!3945 thiss!1248)))))

(declare-fun lt!96243 () Unit!5850)

(assert (=> b!193264 (= lt!96243 e!127171)))

(declare-fun c!34846 () Bool)

(declare-fun contains!1367 (ListLongMap!2473 (_ BitVec 64)) Bool)

(assert (=> b!193264 (= c!34846 (contains!1367 lt!96242 key!828))))

(assert (=> b!193264 (= lt!96242 (getCurrentListMap!895 (_keys!5935 thiss!1248) (_values!3928 thiss!1248) (mask!9196 thiss!1248) (extraKeys!3682 thiss!1248) (zeroValue!3786 thiss!1248) (minValue!3786 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3945 thiss!1248)))))

(declare-fun b!193265 () Bool)

(assert (=> b!193265 (= e!127162 (= (select (arr!3860 (_keys!5935 thiss!1248)) (index!4959 lt!96240)) key!828))))

(declare-fun b!193266 () Bool)

(assert (=> b!193266 (= e!127168 (and e!127167 mapRes!7742))))

(declare-fun condMapEmpty!7742 () Bool)

(declare-fun mapDefault!7742 () ValueCell!1895)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16608 () Bool)

(assert start!16608)

(declare-fun b!165462 () Bool)

(declare-fun b_free!3901 () Bool)

(declare-fun b_next!3901 () Bool)

(assert (=> b!165462 (= b_free!3901 (not b_next!3901))))

(declare-fun tp!14303 () Bool)

(declare-fun b_and!10333 () Bool)

(assert (=> b!165462 (= tp!14303 b_and!10333)))

(declare-fun b!165459 () Bool)

(declare-fun res!78531 () Bool)

(declare-fun e!108545 () Bool)

(assert (=> b!165459 (=> (not res!78531) (not e!108545))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165459 (= res!78531 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165460 () Bool)

(declare-fun res!78529 () Bool)

(declare-fun e!108547 () Bool)

(assert (=> b!165460 (=> (not res!78529) (not e!108547))))

(declare-datatypes ((V!4585 0))(
  ( (V!4586 (val!1896 Int)) )
))
(declare-datatypes ((ValueCell!1508 0))(
  ( (ValueCellFull!1508 (v!3757 V!4585)) (EmptyCell!1508) )
))
(declare-datatypes ((array!6502 0))(
  ( (array!6503 (arr!3086 (Array (_ BitVec 32) (_ BitVec 64))) (size!3374 (_ BitVec 32))) )
))
(declare-datatypes ((array!6504 0))(
  ( (array!6505 (arr!3087 (Array (_ BitVec 32) ValueCell!1508)) (size!3375 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1924 0))(
  ( (LongMapFixedSize!1925 (defaultEntry!3404 Int) (mask!8117 (_ BitVec 32)) (extraKeys!3145 (_ BitVec 32)) (zeroValue!3247 V!4585) (minValue!3247 V!4585) (_size!1011 (_ BitVec 32)) (_keys!5229 array!6502) (_values!3387 array!6504) (_vacant!1011 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1924)

(declare-datatypes ((tuple2!3068 0))(
  ( (tuple2!3069 (_1!1544 (_ BitVec 64)) (_2!1544 V!4585)) )
))
(declare-datatypes ((List!2076 0))(
  ( (Nil!2073) (Cons!2072 (h!2689 tuple2!3068) (t!6886 List!2076)) )
))
(declare-datatypes ((ListLongMap!2037 0))(
  ( (ListLongMap!2038 (toList!1034 List!2076)) )
))
(declare-fun contains!1070 (ListLongMap!2037 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!687 (array!6502 array!6504 (_ BitVec 32) (_ BitVec 32) V!4585 V!4585 (_ BitVec 32) Int) ListLongMap!2037)

(assert (=> b!165460 (= res!78529 (not (contains!1070 (getCurrentListMap!687 (_keys!5229 thiss!1248) (_values!3387 thiss!1248) (mask!8117 thiss!1248) (extraKeys!3145 thiss!1248) (zeroValue!3247 thiss!1248) (minValue!3247 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3404 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!6273 () Bool)

(declare-fun mapRes!6273 () Bool)

(declare-fun tp!14304 () Bool)

(declare-fun e!108548 () Bool)

(assert (=> mapNonEmpty!6273 (= mapRes!6273 (and tp!14304 e!108548))))

(declare-fun mapRest!6273 () (Array (_ BitVec 32) ValueCell!1508))

(declare-fun mapKey!6273 () (_ BitVec 32))

(declare-fun mapValue!6273 () ValueCell!1508)

(assert (=> mapNonEmpty!6273 (= (arr!3087 (_values!3387 thiss!1248)) (store mapRest!6273 mapKey!6273 mapValue!6273))))

(declare-fun b!165461 () Bool)

(declare-fun res!78526 () Bool)

(assert (=> b!165461 (=> (not res!78526) (not e!108547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6502 (_ BitVec 32)) Bool)

(assert (=> b!165461 (= res!78526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5229 thiss!1248) (mask!8117 thiss!1248)))))

(declare-fun e!108546 () Bool)

(declare-fun e!108550 () Bool)

(declare-fun tp_is_empty!3703 () Bool)

(declare-fun array_inv!1973 (array!6502) Bool)

(declare-fun array_inv!1974 (array!6504) Bool)

(assert (=> b!165462 (= e!108550 (and tp!14303 tp_is_empty!3703 (array_inv!1973 (_keys!5229 thiss!1248)) (array_inv!1974 (_values!3387 thiss!1248)) e!108546))))

(declare-fun b!165463 () Bool)

(assert (=> b!165463 (= e!108548 tp_is_empty!3703)))

(declare-fun mapIsEmpty!6273 () Bool)

(assert (=> mapIsEmpty!6273 mapRes!6273))

(declare-fun b!165464 () Bool)

(declare-fun res!78525 () Bool)

(assert (=> b!165464 (=> (not res!78525) (not e!108547))))

(assert (=> b!165464 (= res!78525 (and (= (size!3375 (_values!3387 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8117 thiss!1248))) (= (size!3374 (_keys!5229 thiss!1248)) (size!3375 (_values!3387 thiss!1248))) (bvsge (mask!8117 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3145 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3145 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165466 () Bool)

(assert (=> b!165466 (= e!108547 false)))

(declare-fun lt!83104 () Bool)

(declare-datatypes ((List!2077 0))(
  ( (Nil!2074) (Cons!2073 (h!2690 (_ BitVec 64)) (t!6887 List!2077)) )
))
(declare-fun arrayNoDuplicates!0 (array!6502 (_ BitVec 32) List!2077) Bool)

(assert (=> b!165466 (= lt!83104 (arrayNoDuplicates!0 (_keys!5229 thiss!1248) #b00000000000000000000000000000000 Nil!2074))))

(declare-fun b!165467 () Bool)

(declare-fun res!78527 () Bool)

(assert (=> b!165467 (=> (not res!78527) (not e!108547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165467 (= res!78527 (validMask!0 (mask!8117 thiss!1248)))))

(declare-fun b!165468 () Bool)

(assert (=> b!165468 (= e!108545 e!108547)))

(declare-fun res!78528 () Bool)

(assert (=> b!165468 (=> (not res!78528) (not e!108547))))

(declare-datatypes ((SeekEntryResult!447 0))(
  ( (MissingZero!447 (index!3956 (_ BitVec 32))) (Found!447 (index!3957 (_ BitVec 32))) (Intermediate!447 (undefined!1259 Bool) (index!3958 (_ BitVec 32)) (x!18355 (_ BitVec 32))) (Undefined!447) (MissingVacant!447 (index!3959 (_ BitVec 32))) )
))
(declare-fun lt!83105 () SeekEntryResult!447)

(assert (=> b!165468 (= res!78528 (and (not (is-Undefined!447 lt!83105)) (not (is-MissingVacant!447 lt!83105)) (not (is-MissingZero!447 lt!83105)) (is-Found!447 lt!83105)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6502 (_ BitVec 32)) SeekEntryResult!447)

(assert (=> b!165468 (= lt!83105 (seekEntryOrOpen!0 key!828 (_keys!5229 thiss!1248) (mask!8117 thiss!1248)))))

(declare-fun b!165469 () Bool)

(declare-fun e!108544 () Bool)

(assert (=> b!165469 (= e!108544 tp_is_empty!3703)))

(declare-fun res!78530 () Bool)

(assert (=> start!16608 (=> (not res!78530) (not e!108545))))

(declare-fun valid!843 (LongMapFixedSize!1924) Bool)

(assert (=> start!16608 (= res!78530 (valid!843 thiss!1248))))

(assert (=> start!16608 e!108545))

(assert (=> start!16608 e!108550))

(assert (=> start!16608 true))

(declare-fun b!165465 () Bool)

(assert (=> b!165465 (= e!108546 (and e!108544 mapRes!6273))))

(declare-fun condMapEmpty!6273 () Bool)

(declare-fun mapDefault!6273 () ValueCell!1508)


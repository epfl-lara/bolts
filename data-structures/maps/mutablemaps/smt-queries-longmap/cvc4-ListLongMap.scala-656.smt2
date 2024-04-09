; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16300 () Bool)

(assert start!16300)

(declare-fun b!162475 () Bool)

(declare-fun b_free!3749 () Bool)

(declare-fun b_next!3749 () Bool)

(assert (=> b!162475 (= b_free!3749 (not b_next!3749))))

(declare-fun tp!13816 () Bool)

(declare-fun b_and!10181 () Bool)

(assert (=> b!162475 (= tp!13816 b_and!10181)))

(declare-fun b!162468 () Bool)

(declare-fun res!76958 () Bool)

(declare-fun e!106505 () Bool)

(assert (=> b!162468 (=> (not res!76958) (not e!106505))))

(declare-datatypes ((V!4381 0))(
  ( (V!4382 (val!1820 Int)) )
))
(declare-datatypes ((ValueCell!1432 0))(
  ( (ValueCellFull!1432 (v!3681 V!4381)) (EmptyCell!1432) )
))
(declare-datatypes ((array!6180 0))(
  ( (array!6181 (arr!2934 (Array (_ BitVec 32) (_ BitVec 64))) (size!3218 (_ BitVec 32))) )
))
(declare-datatypes ((array!6182 0))(
  ( (array!6183 (arr!2935 (Array (_ BitVec 32) ValueCell!1432)) (size!3219 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1772 0))(
  ( (LongMapFixedSize!1773 (defaultEntry!3328 Int) (mask!7952 (_ BitVec 32)) (extraKeys!3069 (_ BitVec 32)) (zeroValue!3171 V!4381) (minValue!3171 V!4381) (_size!935 (_ BitVec 32)) (_keys!5129 array!6180) (_values!3311 array!6182) (_vacant!935 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2994 0))(
  ( (tuple2!2995 (_1!1507 Bool) (_2!1507 LongMapFixedSize!1772)) )
))
(declare-fun lt!82492 () tuple2!2994)

(assert (=> b!162468 (= res!76958 (_1!1507 lt!82492))))

(declare-fun mapIsEmpty!6014 () Bool)

(declare-fun mapRes!6014 () Bool)

(assert (=> mapIsEmpty!6014 mapRes!6014))

(declare-fun b!162469 () Bool)

(declare-fun e!106504 () Bool)

(declare-fun tp_is_empty!3551 () Bool)

(assert (=> b!162469 (= e!106504 tp_is_empty!3551)))

(declare-fun mapNonEmpty!6014 () Bool)

(declare-fun tp!13817 () Bool)

(declare-fun e!106502 () Bool)

(assert (=> mapNonEmpty!6014 (= mapRes!6014 (and tp!13817 e!106502))))

(declare-fun mapValue!6014 () ValueCell!1432)

(declare-fun mapRest!6014 () (Array (_ BitVec 32) ValueCell!1432))

(declare-fun mapKey!6014 () (_ BitVec 32))

(declare-fun thiss!1248 () LongMapFixedSize!1772)

(assert (=> mapNonEmpty!6014 (= (arr!2935 (_values!3311 thiss!1248)) (store mapRest!6014 mapKey!6014 mapValue!6014))))

(declare-fun b!162470 () Bool)

(declare-fun res!76957 () Bool)

(declare-fun e!106506 () Bool)

(assert (=> b!162470 (=> (not res!76957) (not e!106506))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162470 (= res!76957 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162471 () Bool)

(declare-fun e!106507 () Bool)

(assert (=> b!162471 (= e!106507 e!106505)))

(declare-fun res!76955 () Bool)

(assert (=> b!162471 (=> (not res!76955) (not e!106505))))

(declare-fun valid!793 (LongMapFixedSize!1772) Bool)

(assert (=> b!162471 (= res!76955 (valid!793 (_2!1507 lt!82492)))))

(declare-datatypes ((SeekEntryResult!394 0))(
  ( (MissingZero!394 (index!3744 (_ BitVec 32))) (Found!394 (index!3745 (_ BitVec 32))) (Intermediate!394 (undefined!1206 Bool) (index!3746 (_ BitVec 32)) (x!17986 (_ BitVec 32))) (Undefined!394) (MissingVacant!394 (index!3747 (_ BitVec 32))) )
))
(declare-fun lt!82493 () SeekEntryResult!394)

(declare-fun v!309 () V!4381)

(declare-fun updateHelperNewKey!84 (LongMapFixedSize!1772 (_ BitVec 64) V!4381 (_ BitVec 32)) tuple2!2994)

(assert (=> b!162471 (= lt!82492 (updateHelperNewKey!84 thiss!1248 key!828 v!309 (index!3744 lt!82493)))))

(declare-fun b!162472 () Bool)

(assert (=> b!162472 (= e!106505 false)))

(declare-fun lt!82491 () Bool)

(declare-datatypes ((tuple2!2996 0))(
  ( (tuple2!2997 (_1!1508 (_ BitVec 64)) (_2!1508 V!4381)) )
))
(declare-datatypes ((List!2005 0))(
  ( (Nil!2002) (Cons!2001 (h!2614 tuple2!2996) (t!6815 List!2005)) )
))
(declare-datatypes ((ListLongMap!1975 0))(
  ( (ListLongMap!1976 (toList!1003 List!2005)) )
))
(declare-fun contains!1033 (ListLongMap!1975 (_ BitVec 64)) Bool)

(declare-fun map!1687 (LongMapFixedSize!1772) ListLongMap!1975)

(assert (=> b!162472 (= lt!82491 (contains!1033 (map!1687 (_2!1507 lt!82492)) key!828))))

(declare-fun b!162473 () Bool)

(assert (=> b!162473 (= e!106506 e!106507)))

(declare-fun res!76954 () Bool)

(assert (=> b!162473 (=> (not res!76954) (not e!106507))))

(assert (=> b!162473 (= res!76954 (and (not (is-Undefined!394 lt!82493)) (not (is-MissingVacant!394 lt!82493)) (is-MissingZero!394 lt!82493)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6180 (_ BitVec 32)) SeekEntryResult!394)

(assert (=> b!162473 (= lt!82493 (seekEntryOrOpen!0 key!828 (_keys!5129 thiss!1248) (mask!7952 thiss!1248)))))

(declare-fun res!76956 () Bool)

(assert (=> start!16300 (=> (not res!76956) (not e!106506))))

(assert (=> start!16300 (= res!76956 (valid!793 thiss!1248))))

(assert (=> start!16300 e!106506))

(declare-fun e!106503 () Bool)

(assert (=> start!16300 e!106503))

(assert (=> start!16300 true))

(assert (=> start!16300 tp_is_empty!3551))

(declare-fun b!162474 () Bool)

(declare-fun e!106501 () Bool)

(assert (=> b!162474 (= e!106501 (and e!106504 mapRes!6014))))

(declare-fun condMapEmpty!6014 () Bool)

(declare-fun mapDefault!6014 () ValueCell!1432)


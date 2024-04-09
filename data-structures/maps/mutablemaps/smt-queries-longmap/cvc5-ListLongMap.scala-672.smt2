; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16548 () Bool)

(assert start!16548)

(declare-fun b!164471 () Bool)

(declare-fun b_free!3841 () Bool)

(declare-fun b_next!3841 () Bool)

(assert (=> b!164471 (= b_free!3841 (not b_next!3841))))

(declare-fun tp!14123 () Bool)

(declare-fun b_and!10273 () Bool)

(assert (=> b!164471 (= tp!14123 b_and!10273)))

(declare-fun b!164469 () Bool)

(declare-fun res!77895 () Bool)

(declare-fun e!107920 () Bool)

(assert (=> b!164469 (=> (not res!77895) (not e!107920))))

(declare-datatypes ((V!4505 0))(
  ( (V!4506 (val!1866 Int)) )
))
(declare-datatypes ((ValueCell!1478 0))(
  ( (ValueCellFull!1478 (v!3727 V!4505)) (EmptyCell!1478) )
))
(declare-datatypes ((array!6382 0))(
  ( (array!6383 (arr!3026 (Array (_ BitVec 32) (_ BitVec 64))) (size!3314 (_ BitVec 32))) )
))
(declare-datatypes ((array!6384 0))(
  ( (array!6385 (arr!3027 (Array (_ BitVec 32) ValueCell!1478)) (size!3315 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1864 0))(
  ( (LongMapFixedSize!1865 (defaultEntry!3374 Int) (mask!8067 (_ BitVec 32)) (extraKeys!3115 (_ BitVec 32)) (zeroValue!3217 V!4505) (minValue!3217 V!4505) (_size!981 (_ BitVec 32)) (_keys!5199 array!6382) (_values!3357 array!6384) (_vacant!981 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1864)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164469 (= res!77895 (validMask!0 (mask!8067 thiss!1248)))))

(declare-fun b!164470 () Bool)

(declare-fun e!107917 () Bool)

(declare-fun tp_is_empty!3643 () Bool)

(assert (=> b!164470 (= e!107917 tp_is_empty!3643)))

(declare-fun e!107918 () Bool)

(declare-fun e!107916 () Bool)

(declare-fun array_inv!1931 (array!6382) Bool)

(declare-fun array_inv!1932 (array!6384) Bool)

(assert (=> b!164471 (= e!107918 (and tp!14123 tp_is_empty!3643 (array_inv!1931 (_keys!5199 thiss!1248)) (array_inv!1932 (_values!3357 thiss!1248)) e!107916))))

(declare-fun b!164472 () Bool)

(declare-fun e!107914 () Bool)

(assert (=> b!164472 (= e!107914 e!107920)))

(declare-fun res!77897 () Bool)

(assert (=> b!164472 (=> (not res!77897) (not e!107920))))

(declare-datatypes ((SeekEntryResult!428 0))(
  ( (MissingZero!428 (index!3880 (_ BitVec 32))) (Found!428 (index!3881 (_ BitVec 32))) (Intermediate!428 (undefined!1240 Bool) (index!3882 (_ BitVec 32)) (x!18256 (_ BitVec 32))) (Undefined!428) (MissingVacant!428 (index!3883 (_ BitVec 32))) )
))
(declare-fun lt!82924 () SeekEntryResult!428)

(assert (=> b!164472 (= res!77897 (and (not (is-Undefined!428 lt!82924)) (not (is-MissingVacant!428 lt!82924)) (not (is-MissingZero!428 lt!82924)) (is-Found!428 lt!82924)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6382 (_ BitVec 32)) SeekEntryResult!428)

(assert (=> b!164472 (= lt!82924 (seekEntryOrOpen!0 key!828 (_keys!5199 thiss!1248) (mask!8067 thiss!1248)))))

(declare-fun b!164473 () Bool)

(declare-fun res!77896 () Bool)

(assert (=> b!164473 (=> (not res!77896) (not e!107920))))

(assert (=> b!164473 (= res!77896 (and (= (size!3315 (_values!3357 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8067 thiss!1248))) (= (size!3314 (_keys!5199 thiss!1248)) (size!3315 (_values!3357 thiss!1248))) (bvsge (mask!8067 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3115 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3115 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164474 () Bool)

(declare-fun res!77898 () Bool)

(assert (=> b!164474 (=> (not res!77898) (not e!107914))))

(assert (=> b!164474 (= res!77898 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164475 () Bool)

(declare-fun res!77900 () Bool)

(assert (=> b!164475 (=> (not res!77900) (not e!107920))))

(declare-datatypes ((tuple2!3026 0))(
  ( (tuple2!3027 (_1!1523 (_ BitVec 64)) (_2!1523 V!4505)) )
))
(declare-datatypes ((List!2032 0))(
  ( (Nil!2029) (Cons!2028 (h!2645 tuple2!3026) (t!6842 List!2032)) )
))
(declare-datatypes ((ListLongMap!1995 0))(
  ( (ListLongMap!1996 (toList!1013 List!2032)) )
))
(declare-fun contains!1049 (ListLongMap!1995 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!666 (array!6382 array!6384 (_ BitVec 32) (_ BitVec 32) V!4505 V!4505 (_ BitVec 32) Int) ListLongMap!1995)

(assert (=> b!164475 (= res!77900 (contains!1049 (getCurrentListMap!666 (_keys!5199 thiss!1248) (_values!3357 thiss!1248) (mask!8067 thiss!1248) (extraKeys!3115 thiss!1248) (zeroValue!3217 thiss!1248) (minValue!3217 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3374 thiss!1248)) key!828))))

(declare-fun b!164476 () Bool)

(assert (=> b!164476 (= e!107920 false)))

(declare-fun lt!82925 () Bool)

(declare-datatypes ((List!2033 0))(
  ( (Nil!2030) (Cons!2029 (h!2646 (_ BitVec 64)) (t!6843 List!2033)) )
))
(declare-fun arrayNoDuplicates!0 (array!6382 (_ BitVec 32) List!2033) Bool)

(assert (=> b!164476 (= lt!82925 (arrayNoDuplicates!0 (_keys!5199 thiss!1248) #b00000000000000000000000000000000 Nil!2030))))

(declare-fun mapNonEmpty!6183 () Bool)

(declare-fun mapRes!6183 () Bool)

(declare-fun tp!14124 () Bool)

(assert (=> mapNonEmpty!6183 (= mapRes!6183 (and tp!14124 e!107917))))

(declare-fun mapKey!6183 () (_ BitVec 32))

(declare-fun mapRest!6183 () (Array (_ BitVec 32) ValueCell!1478))

(declare-fun mapValue!6183 () ValueCell!1478)

(assert (=> mapNonEmpty!6183 (= (arr!3027 (_values!3357 thiss!1248)) (store mapRest!6183 mapKey!6183 mapValue!6183))))

(declare-fun b!164477 () Bool)

(declare-fun e!107915 () Bool)

(assert (=> b!164477 (= e!107915 tp_is_empty!3643)))

(declare-fun res!77901 () Bool)

(assert (=> start!16548 (=> (not res!77901) (not e!107914))))

(declare-fun valid!822 (LongMapFixedSize!1864) Bool)

(assert (=> start!16548 (= res!77901 (valid!822 thiss!1248))))

(assert (=> start!16548 e!107914))

(assert (=> start!16548 e!107918))

(assert (=> start!16548 true))

(declare-fun mapIsEmpty!6183 () Bool)

(assert (=> mapIsEmpty!6183 mapRes!6183))

(declare-fun b!164478 () Bool)

(assert (=> b!164478 (= e!107916 (and e!107915 mapRes!6183))))

(declare-fun condMapEmpty!6183 () Bool)

(declare-fun mapDefault!6183 () ValueCell!1478)


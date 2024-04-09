; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19676 () Bool)

(assert start!19676)

(declare-fun b!192728 () Bool)

(declare-fun b_free!4697 () Bool)

(declare-fun b_next!4697 () Bool)

(assert (=> b!192728 (= b_free!4697 (not b_next!4697))))

(declare-fun tp!16948 () Bool)

(declare-fun b_and!11413 () Bool)

(assert (=> b!192728 (= tp!16948 b_and!11413)))

(declare-fun b!192719 () Bool)

(declare-fun res!91073 () Bool)

(declare-fun e!126820 () Bool)

(assert (=> b!192719 (=> (not res!91073) (not e!126820))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!192719 (= res!91073 (not (= key!828 (bvneg key!828))))))

(declare-fun b!192720 () Bool)

(declare-fun e!126826 () Bool)

(declare-datatypes ((V!5605 0))(
  ( (V!5606 (val!2279 Int)) )
))
(declare-datatypes ((ValueCell!1891 0))(
  ( (ValueCellFull!1891 (v!4225 V!5605)) (EmptyCell!1891) )
))
(declare-datatypes ((array!8180 0))(
  ( (array!8181 (arr!3852 (Array (_ BitVec 32) (_ BitVec 64))) (size!4176 (_ BitVec 32))) )
))
(declare-datatypes ((array!8182 0))(
  ( (array!8183 (arr!3853 (Array (_ BitVec 32) ValueCell!1891)) (size!4177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2690 0))(
  ( (LongMapFixedSize!2691 (defaultEntry!3933 Int) (mask!9172 (_ BitVec 32)) (extraKeys!3670 (_ BitVec 32)) (zeroValue!3774 V!5605) (minValue!3774 V!5605) (_size!1394 (_ BitVec 32)) (_keys!5919 array!8180) (_values!3916 array!8182) (_vacant!1394 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2690)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8180 (_ BitVec 32)) Bool)

(assert (=> b!192720 (= e!126826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5919 thiss!1248) (mask!9172 thiss!1248)))))

(declare-fun res!91074 () Bool)

(assert (=> start!19676 (=> (not res!91074) (not e!126820))))

(declare-fun valid!1096 (LongMapFixedSize!2690) Bool)

(assert (=> start!19676 (= res!91074 (valid!1096 thiss!1248))))

(assert (=> start!19676 e!126820))

(declare-fun e!126818 () Bool)

(assert (=> start!19676 e!126818))

(assert (=> start!19676 true))

(declare-fun tp_is_empty!4469 () Bool)

(assert (=> start!19676 tp_is_empty!4469))

(declare-fun b!192721 () Bool)

(declare-datatypes ((Unit!5832 0))(
  ( (Unit!5833) )
))
(declare-fun e!126824 () Unit!5832)

(declare-fun Unit!5834 () Unit!5832)

(assert (=> b!192721 (= e!126824 Unit!5834)))

(declare-fun lt!95880 () Unit!5832)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!185 (array!8180 array!8182 (_ BitVec 32) (_ BitVec 32) V!5605 V!5605 (_ BitVec 64) Int) Unit!5832)

(assert (=> b!192721 (= lt!95880 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!185 (_keys!5919 thiss!1248) (_values!3916 thiss!1248) (mask!9172 thiss!1248) (extraKeys!3670 thiss!1248) (zeroValue!3774 thiss!1248) (minValue!3774 thiss!1248) key!828 (defaultEntry!3933 thiss!1248)))))

(assert (=> b!192721 false))

(declare-fun mapIsEmpty!7724 () Bool)

(declare-fun mapRes!7724 () Bool)

(assert (=> mapIsEmpty!7724 mapRes!7724))

(declare-fun b!192722 () Bool)

(declare-fun e!126822 () Bool)

(assert (=> b!192722 (= e!126822 tp_is_empty!4469)))

(declare-fun b!192723 () Bool)

(declare-fun lt!95878 () Unit!5832)

(assert (=> b!192723 (= e!126824 lt!95878)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!179 (array!8180 array!8182 (_ BitVec 32) (_ BitVec 32) V!5605 V!5605 (_ BitVec 64) Int) Unit!5832)

(assert (=> b!192723 (= lt!95878 (lemmaInListMapThenSeekEntryOrOpenFindsIt!179 (_keys!5919 thiss!1248) (_values!3916 thiss!1248) (mask!9172 thiss!1248) (extraKeys!3670 thiss!1248) (zeroValue!3774 thiss!1248) (minValue!3774 thiss!1248) key!828 (defaultEntry!3933 thiss!1248)))))

(declare-fun res!91078 () Bool)

(declare-datatypes ((SeekEntryResult!694 0))(
  ( (MissingZero!694 (index!4946 (_ BitVec 32))) (Found!694 (index!4947 (_ BitVec 32))) (Intermediate!694 (undefined!1506 Bool) (index!4948 (_ BitVec 32)) (x!20618 (_ BitVec 32))) (Undefined!694) (MissingVacant!694 (index!4949 (_ BitVec 32))) )
))
(declare-fun lt!95879 () SeekEntryResult!694)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!192723 (= res!91078 (inRange!0 (index!4947 lt!95879) (mask!9172 thiss!1248)))))

(declare-fun e!126827 () Bool)

(assert (=> b!192723 (=> (not res!91078) (not e!126827))))

(assert (=> b!192723 e!126827))

(declare-fun b!192724 () Bool)

(declare-fun res!91076 () Bool)

(assert (=> b!192724 (=> res!91076 e!126826)))

(assert (=> b!192724 (= res!91076 (or (not (= (size!4177 (_values!3916 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9172 thiss!1248)))) (not (= (size!4176 (_keys!5919 thiss!1248)) (size!4177 (_values!3916 thiss!1248)))) (bvslt (mask!9172 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3670 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3670 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!192725 () Bool)

(declare-fun e!126825 () Bool)

(assert (=> b!192725 (= e!126825 tp_is_empty!4469)))

(declare-fun b!192726 () Bool)

(assert (=> b!192726 (= e!126827 (= (select (arr!3852 (_keys!5919 thiss!1248)) (index!4947 lt!95879)) key!828))))

(declare-fun b!192727 () Bool)

(declare-fun e!126823 () Bool)

(assert (=> b!192727 (= e!126820 e!126823)))

(declare-fun res!91075 () Bool)

(assert (=> b!192727 (=> (not res!91075) (not e!126823))))

(assert (=> b!192727 (= res!91075 (and (not (is-Undefined!694 lt!95879)) (not (is-MissingVacant!694 lt!95879)) (not (is-MissingZero!694 lt!95879)) (is-Found!694 lt!95879)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8180 (_ BitVec 32)) SeekEntryResult!694)

(assert (=> b!192727 (= lt!95879 (seekEntryOrOpen!0 key!828 (_keys!5919 thiss!1248) (mask!9172 thiss!1248)))))

(declare-fun e!126819 () Bool)

(declare-fun array_inv!2489 (array!8180) Bool)

(declare-fun array_inv!2490 (array!8182) Bool)

(assert (=> b!192728 (= e!126818 (and tp!16948 tp_is_empty!4469 (array_inv!2489 (_keys!5919 thiss!1248)) (array_inv!2490 (_values!3916 thiss!1248)) e!126819))))

(declare-fun b!192729 () Bool)

(assert (=> b!192729 (= e!126823 (not e!126826))))

(declare-fun res!91077 () Bool)

(assert (=> b!192729 (=> res!91077 e!126826)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!192729 (= res!91077 (not (validMask!0 (mask!9172 thiss!1248))))))

(declare-fun v!309 () V!5605)

(declare-datatypes ((tuple2!3536 0))(
  ( (tuple2!3537 (_1!1778 (_ BitVec 64)) (_2!1778 V!5605)) )
))
(declare-datatypes ((List!2451 0))(
  ( (Nil!2448) (Cons!2447 (h!3088 tuple2!3536) (t!7377 List!2451)) )
))
(declare-datatypes ((ListLongMap!2467 0))(
  ( (ListLongMap!2468 (toList!1249 List!2451)) )
))
(declare-fun lt!95883 () ListLongMap!2467)

(declare-fun +!307 (ListLongMap!2467 tuple2!3536) ListLongMap!2467)

(declare-fun getCurrentListMap!892 (array!8180 array!8182 (_ BitVec 32) (_ BitVec 32) V!5605 V!5605 (_ BitVec 32) Int) ListLongMap!2467)

(assert (=> b!192729 (= (+!307 lt!95883 (tuple2!3537 key!828 v!309)) (getCurrentListMap!892 (_keys!5919 thiss!1248) (array!8183 (store (arr!3853 (_values!3916 thiss!1248)) (index!4947 lt!95879) (ValueCellFull!1891 v!309)) (size!4177 (_values!3916 thiss!1248))) (mask!9172 thiss!1248) (extraKeys!3670 thiss!1248) (zeroValue!3774 thiss!1248) (minValue!3774 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3933 thiss!1248)))))

(declare-fun lt!95882 () Unit!5832)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!113 (array!8180 array!8182 (_ BitVec 32) (_ BitVec 32) V!5605 V!5605 (_ BitVec 32) (_ BitVec 64) V!5605 Int) Unit!5832)

(assert (=> b!192729 (= lt!95882 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!113 (_keys!5919 thiss!1248) (_values!3916 thiss!1248) (mask!9172 thiss!1248) (extraKeys!3670 thiss!1248) (zeroValue!3774 thiss!1248) (minValue!3774 thiss!1248) (index!4947 lt!95879) key!828 v!309 (defaultEntry!3933 thiss!1248)))))

(declare-fun lt!95881 () Unit!5832)

(assert (=> b!192729 (= lt!95881 e!126824)))

(declare-fun c!34741 () Bool)

(declare-fun contains!1361 (ListLongMap!2467 (_ BitVec 64)) Bool)

(assert (=> b!192729 (= c!34741 (contains!1361 lt!95883 key!828))))

(assert (=> b!192729 (= lt!95883 (getCurrentListMap!892 (_keys!5919 thiss!1248) (_values!3916 thiss!1248) (mask!9172 thiss!1248) (extraKeys!3670 thiss!1248) (zeroValue!3774 thiss!1248) (minValue!3774 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3933 thiss!1248)))))

(declare-fun mapNonEmpty!7724 () Bool)

(declare-fun tp!16949 () Bool)

(assert (=> mapNonEmpty!7724 (= mapRes!7724 (and tp!16949 e!126825))))

(declare-fun mapValue!7724 () ValueCell!1891)

(declare-fun mapKey!7724 () (_ BitVec 32))

(declare-fun mapRest!7724 () (Array (_ BitVec 32) ValueCell!1891))

(assert (=> mapNonEmpty!7724 (= (arr!3853 (_values!3916 thiss!1248)) (store mapRest!7724 mapKey!7724 mapValue!7724))))

(declare-fun b!192730 () Bool)

(assert (=> b!192730 (= e!126819 (and e!126822 mapRes!7724))))

(declare-fun condMapEmpty!7724 () Bool)

(declare-fun mapDefault!7724 () ValueCell!1891)


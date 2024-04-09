; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22060 () Bool)

(assert start!22060)

(declare-fun b!227842 () Bool)

(declare-fun b_free!6115 () Bool)

(declare-fun b_next!6115 () Bool)

(assert (=> b!227842 (= b_free!6115 (not b_next!6115))))

(declare-fun tp!21486 () Bool)

(declare-fun b_and!13031 () Bool)

(assert (=> b!227842 (= tp!21486 b_and!13031)))

(declare-fun b!227839 () Bool)

(declare-fun e!147834 () Bool)

(declare-fun tp_is_empty!5977 () Bool)

(assert (=> b!227839 (= e!147834 tp_is_empty!5977)))

(declare-fun b!227840 () Bool)

(declare-fun res!112174 () Bool)

(declare-fun e!147823 () Bool)

(assert (=> b!227840 (=> (not res!112174) (not e!147823))))

(declare-fun call!21178 () Bool)

(assert (=> b!227840 (= res!112174 call!21178)))

(declare-fun e!147824 () Bool)

(assert (=> b!227840 (= e!147824 e!147823)))

(declare-fun b!227841 () Bool)

(declare-fun res!112168 () Bool)

(assert (=> b!227841 (=> (not res!112168) (not e!147823))))

(declare-datatypes ((V!7617 0))(
  ( (V!7618 (val!3033 Int)) )
))
(declare-datatypes ((ValueCell!2645 0))(
  ( (ValueCellFull!2645 (v!5049 V!7617)) (EmptyCell!2645) )
))
(declare-datatypes ((array!11196 0))(
  ( (array!11197 (arr!5317 (Array (_ BitVec 32) ValueCell!2645)) (size!5650 (_ BitVec 32))) )
))
(declare-datatypes ((array!11198 0))(
  ( (array!11199 (arr!5318 (Array (_ BitVec 32) (_ BitVec 64))) (size!5651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3190 0))(
  ( (LongMapFixedSize!3191 (defaultEntry!4254 Int) (mask!10120 (_ BitVec 32)) (extraKeys!3991 (_ BitVec 32)) (zeroValue!4095 V!7617) (minValue!4095 V!7617) (_size!1644 (_ BitVec 32)) (_keys!6308 array!11198) (_values!4237 array!11196) (_vacant!1644 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3190)

(declare-datatypes ((SeekEntryResult!910 0))(
  ( (MissingZero!910 (index!5810 (_ BitVec 32))) (Found!910 (index!5811 (_ BitVec 32))) (Intermediate!910 (undefined!1722 Bool) (index!5812 (_ BitVec 32)) (x!23314 (_ BitVec 32))) (Undefined!910) (MissingVacant!910 (index!5813 (_ BitVec 32))) )
))
(declare-fun lt!114686 () SeekEntryResult!910)

(assert (=> b!227841 (= res!112168 (= (select (arr!5318 (_keys!6308 thiss!1504)) (index!5810 lt!114686)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!147833 () Bool)

(declare-fun e!147829 () Bool)

(declare-fun array_inv!3507 (array!11198) Bool)

(declare-fun array_inv!3508 (array!11196) Bool)

(assert (=> b!227842 (= e!147833 (and tp!21486 tp_is_empty!5977 (array_inv!3507 (_keys!6308 thiss!1504)) (array_inv!3508 (_values!4237 thiss!1504)) e!147829))))

(declare-fun mapIsEmpty!10135 () Bool)

(declare-fun mapRes!10135 () Bool)

(assert (=> mapIsEmpty!10135 mapRes!10135))

(declare-fun bm!21174 () Bool)

(declare-fun call!21177 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21174 (= call!21177 (arrayContainsKey!0 (_keys!6308 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!112176 () Bool)

(declare-fun e!147830 () Bool)

(assert (=> start!22060 (=> (not res!112176) (not e!147830))))

(declare-fun valid!1270 (LongMapFixedSize!3190) Bool)

(assert (=> start!22060 (= res!112176 (valid!1270 thiss!1504))))

(assert (=> start!22060 e!147830))

(assert (=> start!22060 e!147833))

(assert (=> start!22060 true))

(declare-fun b!227843 () Bool)

(declare-fun e!147826 () Bool)

(assert (=> b!227843 (= e!147830 e!147826)))

(declare-fun res!112172 () Bool)

(assert (=> b!227843 (=> (not res!112172) (not e!147826))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!227843 (= res!112172 (or (= lt!114686 (MissingZero!910 index!297)) (= lt!114686 (MissingVacant!910 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11198 (_ BitVec 32)) SeekEntryResult!910)

(assert (=> b!227843 (= lt!114686 (seekEntryOrOpen!0 key!932 (_keys!6308 thiss!1504) (mask!10120 thiss!1504)))))

(declare-fun b!227844 () Bool)

(declare-fun e!147828 () Bool)

(assert (=> b!227844 (= e!147828 (is-Undefined!910 lt!114686))))

(declare-fun b!227845 () Bool)

(declare-fun e!147832 () Bool)

(declare-fun e!147822 () Bool)

(assert (=> b!227845 (= e!147832 (not e!147822))))

(declare-fun res!112170 () Bool)

(assert (=> b!227845 (=> res!112170 e!147822)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227845 (= res!112170 (not (validMask!0 (mask!10120 thiss!1504))))))

(declare-fun lt!114683 () array!11198)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11198 (_ BitVec 32)) Bool)

(assert (=> b!227845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114683 (mask!10120 thiss!1504))))

(declare-datatypes ((Unit!6913 0))(
  ( (Unit!6914) )
))
(declare-fun lt!114689 () Unit!6913)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11198 (_ BitVec 32) (_ BitVec 32)) Unit!6913)

(assert (=> b!227845 (= lt!114689 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6308 thiss!1504) index!297 (mask!10120 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11198 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227845 (= (arrayCountValidKeys!0 lt!114683 #b00000000000000000000000000000000 (size!5651 (_keys!6308 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6308 thiss!1504) #b00000000000000000000000000000000 (size!5651 (_keys!6308 thiss!1504)))))))

(declare-fun lt!114687 () Unit!6913)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11198 (_ BitVec 32) (_ BitVec 64)) Unit!6913)

(assert (=> b!227845 (= lt!114687 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6308 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3419 0))(
  ( (Nil!3416) (Cons!3415 (h!4063 (_ BitVec 64)) (t!8386 List!3419)) )
))
(declare-fun arrayNoDuplicates!0 (array!11198 (_ BitVec 32) List!3419) Bool)

(assert (=> b!227845 (arrayNoDuplicates!0 lt!114683 #b00000000000000000000000000000000 Nil!3416)))

(assert (=> b!227845 (= lt!114683 (array!11199 (store (arr!5318 (_keys!6308 thiss!1504)) index!297 key!932) (size!5651 (_keys!6308 thiss!1504))))))

(declare-fun lt!114693 () Unit!6913)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11198 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3419) Unit!6913)

(assert (=> b!227845 (= lt!114693 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6308 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3416))))

(declare-fun lt!114688 () Unit!6913)

(declare-fun e!147831 () Unit!6913)

(assert (=> b!227845 (= lt!114688 e!147831)))

(declare-fun c!37768 () Bool)

(assert (=> b!227845 (= c!37768 (arrayContainsKey!0 (_keys!6308 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227846 () Bool)

(declare-fun res!112169 () Bool)

(assert (=> b!227846 (=> res!112169 e!147822)))

(assert (=> b!227846 (= res!112169 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6308 thiss!1504) (mask!10120 thiss!1504))))))

(declare-fun mapNonEmpty!10135 () Bool)

(declare-fun tp!21487 () Bool)

(assert (=> mapNonEmpty!10135 (= mapRes!10135 (and tp!21487 e!147834))))

(declare-fun mapRest!10135 () (Array (_ BitVec 32) ValueCell!2645))

(declare-fun mapKey!10135 () (_ BitVec 32))

(declare-fun mapValue!10135 () ValueCell!2645)

(assert (=> mapNonEmpty!10135 (= (arr!5317 (_values!4237 thiss!1504)) (store mapRest!10135 mapKey!10135 mapValue!10135))))

(declare-fun b!227847 () Bool)

(declare-fun Unit!6915 () Unit!6913)

(assert (=> b!227847 (= e!147831 Unit!6915)))

(declare-fun b!227848 () Bool)

(declare-fun res!112177 () Bool)

(assert (=> b!227848 (= res!112177 (= (select (arr!5318 (_keys!6308 thiss!1504)) (index!5813 lt!114686)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!147821 () Bool)

(assert (=> b!227848 (=> (not res!112177) (not e!147821))))

(declare-fun b!227849 () Bool)

(declare-fun e!147827 () Unit!6913)

(declare-fun lt!114690 () Unit!6913)

(assert (=> b!227849 (= e!147827 lt!114690)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!281 (array!11198 array!11196 (_ BitVec 32) (_ BitVec 32) V!7617 V!7617 (_ BitVec 64) Int) Unit!6913)

(assert (=> b!227849 (= lt!114690 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!281 (_keys!6308 thiss!1504) (_values!4237 thiss!1504) (mask!10120 thiss!1504) (extraKeys!3991 thiss!1504) (zeroValue!4095 thiss!1504) (minValue!4095 thiss!1504) key!932 (defaultEntry!4254 thiss!1504)))))

(declare-fun c!37769 () Bool)

(assert (=> b!227849 (= c!37769 (is-MissingZero!910 lt!114686))))

(assert (=> b!227849 e!147824))

(declare-fun b!227850 () Bool)

(assert (=> b!227850 (= e!147826 e!147832)))

(declare-fun res!112175 () Bool)

(assert (=> b!227850 (=> (not res!112175) (not e!147832))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!227850 (= res!112175 (inRange!0 index!297 (mask!10120 thiss!1504)))))

(declare-fun lt!114692 () Unit!6913)

(assert (=> b!227850 (= lt!114692 e!147827)))

(declare-fun c!37767 () Bool)

(declare-datatypes ((tuple2!4474 0))(
  ( (tuple2!4475 (_1!2247 (_ BitVec 64)) (_2!2247 V!7617)) )
))
(declare-datatypes ((List!3420 0))(
  ( (Nil!3417) (Cons!3416 (h!4064 tuple2!4474) (t!8387 List!3420)) )
))
(declare-datatypes ((ListLongMap!3401 0))(
  ( (ListLongMap!3402 (toList!1716 List!3420)) )
))
(declare-fun contains!1584 (ListLongMap!3401 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1239 (array!11198 array!11196 (_ BitVec 32) (_ BitVec 32) V!7617 V!7617 (_ BitVec 32) Int) ListLongMap!3401)

(assert (=> b!227850 (= c!37767 (contains!1584 (getCurrentListMap!1239 (_keys!6308 thiss!1504) (_values!4237 thiss!1504) (mask!10120 thiss!1504) (extraKeys!3991 thiss!1504) (zeroValue!4095 thiss!1504) (minValue!4095 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4254 thiss!1504)) key!932))))

(declare-fun b!227851 () Bool)

(assert (=> b!227851 (= e!147821 (not call!21177))))

(declare-fun b!227852 () Bool)

(declare-fun Unit!6916 () Unit!6913)

(assert (=> b!227852 (= e!147827 Unit!6916)))

(declare-fun lt!114684 () Unit!6913)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!269 (array!11198 array!11196 (_ BitVec 32) (_ BitVec 32) V!7617 V!7617 (_ BitVec 64) Int) Unit!6913)

(assert (=> b!227852 (= lt!114684 (lemmaInListMapThenSeekEntryOrOpenFindsIt!269 (_keys!6308 thiss!1504) (_values!4237 thiss!1504) (mask!10120 thiss!1504) (extraKeys!3991 thiss!1504) (zeroValue!4095 thiss!1504) (minValue!4095 thiss!1504) key!932 (defaultEntry!4254 thiss!1504)))))

(assert (=> b!227852 false))

(declare-fun b!227853 () Bool)

(declare-fun res!112173 () Bool)

(assert (=> b!227853 (=> res!112173 e!147822)))

(assert (=> b!227853 (= res!112173 (or (not (= (size!5650 (_values!4237 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10120 thiss!1504)))) (not (= (size!5651 (_keys!6308 thiss!1504)) (size!5650 (_values!4237 thiss!1504)))) (bvslt (mask!10120 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3991 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3991 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227854 () Bool)

(assert (=> b!227854 (= e!147828 e!147821)))

(declare-fun res!112171 () Bool)

(assert (=> b!227854 (= res!112171 call!21178)))

(assert (=> b!227854 (=> (not res!112171) (not e!147821))))

(declare-fun b!227855 () Bool)

(declare-fun c!37766 () Bool)

(assert (=> b!227855 (= c!37766 (is-MissingVacant!910 lt!114686))))

(assert (=> b!227855 (= e!147824 e!147828)))

(declare-fun b!227856 () Bool)

(assert (=> b!227856 (= e!147822 true)))

(declare-fun lt!114691 () Bool)

(assert (=> b!227856 (= lt!114691 (arrayNoDuplicates!0 (_keys!6308 thiss!1504) #b00000000000000000000000000000000 Nil!3416))))

(declare-fun b!227857 () Bool)

(declare-fun res!112167 () Bool)

(assert (=> b!227857 (=> (not res!112167) (not e!147830))))

(assert (=> b!227857 (= res!112167 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227858 () Bool)

(assert (=> b!227858 (= e!147823 (not call!21177))))

(declare-fun b!227859 () Bool)

(declare-fun Unit!6917 () Unit!6913)

(assert (=> b!227859 (= e!147831 Unit!6917)))

(declare-fun lt!114685 () Unit!6913)

(declare-fun lemmaArrayContainsKeyThenInListMap!105 (array!11198 array!11196 (_ BitVec 32) (_ BitVec 32) V!7617 V!7617 (_ BitVec 64) (_ BitVec 32) Int) Unit!6913)

(assert (=> b!227859 (= lt!114685 (lemmaArrayContainsKeyThenInListMap!105 (_keys!6308 thiss!1504) (_values!4237 thiss!1504) (mask!10120 thiss!1504) (extraKeys!3991 thiss!1504) (zeroValue!4095 thiss!1504) (minValue!4095 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4254 thiss!1504)))))

(assert (=> b!227859 false))

(declare-fun b!227860 () Bool)

(declare-fun e!147835 () Bool)

(assert (=> b!227860 (= e!147829 (and e!147835 mapRes!10135))))

(declare-fun condMapEmpty!10135 () Bool)

(declare-fun mapDefault!10135 () ValueCell!2645)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21908 () Bool)

(assert start!21908)

(declare-fun b!221803 () Bool)

(declare-fun b_free!5963 () Bool)

(declare-fun b_next!5963 () Bool)

(assert (=> b!221803 (= b_free!5963 (not b_next!5963))))

(declare-fun tp!21031 () Bool)

(declare-fun b_and!12879 () Bool)

(assert (=> b!221803 (= tp!21031 b_and!12879)))

(declare-fun b!221780 () Bool)

(declare-fun e!144137 () Bool)

(declare-fun e!144147 () Bool)

(assert (=> b!221780 (= e!144137 e!144147)))

(declare-fun res!108857 () Bool)

(assert (=> b!221780 (=> (not res!108857) (not e!144147))))

(declare-datatypes ((SeekEntryResult!840 0))(
  ( (MissingZero!840 (index!5530 (_ BitVec 32))) (Found!840 (index!5531 (_ BitVec 32))) (Intermediate!840 (undefined!1652 Bool) (index!5532 (_ BitVec 32)) (x!23036 (_ BitVec 32))) (Undefined!840) (MissingVacant!840 (index!5533 (_ BitVec 32))) )
))
(declare-fun lt!112524 () SeekEntryResult!840)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221780 (= res!108857 (or (= lt!112524 (MissingZero!840 index!297)) (= lt!112524 (MissingVacant!840 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7413 0))(
  ( (V!7414 (val!2957 Int)) )
))
(declare-datatypes ((ValueCell!2569 0))(
  ( (ValueCellFull!2569 (v!4973 V!7413)) (EmptyCell!2569) )
))
(declare-datatypes ((array!10892 0))(
  ( (array!10893 (arr!5165 (Array (_ BitVec 32) ValueCell!2569)) (size!5498 (_ BitVec 32))) )
))
(declare-datatypes ((array!10894 0))(
  ( (array!10895 (arr!5166 (Array (_ BitVec 32) (_ BitVec 64))) (size!5499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3038 0))(
  ( (LongMapFixedSize!3039 (defaultEntry!4178 Int) (mask!9992 (_ BitVec 32)) (extraKeys!3915 (_ BitVec 32)) (zeroValue!4019 V!7413) (minValue!4019 V!7413) (_size!1568 (_ BitVec 32)) (_keys!6232 array!10894) (_values!4161 array!10892) (_vacant!1568 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3038)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10894 (_ BitVec 32)) SeekEntryResult!840)

(assert (=> b!221780 (= lt!112524 (seekEntryOrOpen!0 key!932 (_keys!6232 thiss!1504) (mask!9992 thiss!1504)))))

(declare-fun mapNonEmpty!9907 () Bool)

(declare-fun mapRes!9907 () Bool)

(declare-fun tp!21030 () Bool)

(declare-fun e!144152 () Bool)

(assert (=> mapNonEmpty!9907 (= mapRes!9907 (and tp!21030 e!144152))))

(declare-fun mapRest!9907 () (Array (_ BitVec 32) ValueCell!2569))

(declare-fun mapValue!9907 () ValueCell!2569)

(declare-fun mapKey!9907 () (_ BitVec 32))

(assert (=> mapNonEmpty!9907 (= (arr!5165 (_values!4161 thiss!1504)) (store mapRest!9907 mapKey!9907 mapValue!9907))))

(declare-fun b!221781 () Bool)

(declare-fun e!144154 () Bool)

(declare-fun e!144141 () Bool)

(assert (=> b!221781 (= e!144154 e!144141)))

(declare-fun res!108858 () Bool)

(assert (=> b!221781 (=> (not res!108858) (not e!144141))))

(assert (=> b!221781 (= res!108858 (and (bvslt (size!5499 (_keys!6232 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5499 (_keys!6232 thiss!1504)))))))

(declare-datatypes ((Unit!6630 0))(
  ( (Unit!6631) )
))
(declare-fun lt!112521 () Unit!6630)

(declare-fun e!144148 () Unit!6630)

(assert (=> b!221781 (= lt!112521 e!144148)))

(declare-fun c!36855 () Bool)

(declare-fun arrayContainsKey!0 (array!10894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221781 (= c!36855 (arrayContainsKey!0 (_keys!6232 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221782 () Bool)

(declare-fun Unit!6632 () Unit!6630)

(assert (=> b!221782 (= e!144148 Unit!6632)))

(declare-fun call!20721 () Bool)

(declare-fun bm!20718 () Bool)

(declare-fun c!36857 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20718 (= call!20721 (inRange!0 (ite c!36857 (index!5530 lt!112524) (index!5533 lt!112524)) (mask!9992 thiss!1504)))))

(declare-fun b!221783 () Bool)

(declare-fun Unit!6633 () Unit!6630)

(assert (=> b!221783 (= e!144148 Unit!6633)))

(declare-fun lt!112527 () Unit!6630)

(declare-fun lemmaArrayContainsKeyThenInListMap!54 (array!10894 array!10892 (_ BitVec 32) (_ BitVec 32) V!7413 V!7413 (_ BitVec 64) (_ BitVec 32) Int) Unit!6630)

(assert (=> b!221783 (= lt!112527 (lemmaArrayContainsKeyThenInListMap!54 (_keys!6232 thiss!1504) (_values!4161 thiss!1504) (mask!9992 thiss!1504) (extraKeys!3915 thiss!1504) (zeroValue!4019 thiss!1504) (minValue!4019 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4178 thiss!1504)))))

(assert (=> b!221783 false))

(declare-fun mapIsEmpty!9907 () Bool)

(assert (=> mapIsEmpty!9907 mapRes!9907))

(declare-fun b!221784 () Bool)

(declare-fun res!108848 () Bool)

(assert (=> b!221784 (=> (not res!108848) (not e!144141))))

(declare-datatypes ((List!3312 0))(
  ( (Nil!3309) (Cons!3308 (h!3956 (_ BitVec 64)) (t!8279 List!3312)) )
))
(declare-fun noDuplicate!65 (List!3312) Bool)

(assert (=> b!221784 (= res!108848 (noDuplicate!65 Nil!3309))))

(declare-fun b!221785 () Bool)

(assert (=> b!221785 (= e!144147 e!144154)))

(declare-fun res!108852 () Bool)

(assert (=> b!221785 (=> (not res!108852) (not e!144154))))

(assert (=> b!221785 (= res!108852 (inRange!0 index!297 (mask!9992 thiss!1504)))))

(declare-fun lt!112525 () Unit!6630)

(declare-fun e!144145 () Unit!6630)

(assert (=> b!221785 (= lt!112525 e!144145)))

(declare-fun c!36856 () Bool)

(declare-datatypes ((tuple2!4386 0))(
  ( (tuple2!4387 (_1!2203 (_ BitVec 64)) (_2!2203 V!7413)) )
))
(declare-datatypes ((List!3313 0))(
  ( (Nil!3310) (Cons!3309 (h!3957 tuple2!4386) (t!8280 List!3313)) )
))
(declare-datatypes ((ListLongMap!3313 0))(
  ( (ListLongMap!3314 (toList!1672 List!3313)) )
))
(declare-fun contains!1511 (ListLongMap!3313 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1195 (array!10894 array!10892 (_ BitVec 32) (_ BitVec 32) V!7413 V!7413 (_ BitVec 32) Int) ListLongMap!3313)

(assert (=> b!221785 (= c!36856 (contains!1511 (getCurrentListMap!1195 (_keys!6232 thiss!1504) (_values!4161 thiss!1504) (mask!9992 thiss!1504) (extraKeys!3915 thiss!1504) (zeroValue!4019 thiss!1504) (minValue!4019 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4178 thiss!1504)) key!932))))

(declare-fun b!221786 () Bool)

(declare-fun e!144149 () Bool)

(declare-fun tp_is_empty!5825 () Bool)

(assert (=> b!221786 (= e!144149 tp_is_empty!5825)))

(declare-fun b!221787 () Bool)

(declare-fun res!108847 () Bool)

(assert (=> b!221787 (= res!108847 (= (select (arr!5166 (_keys!6232 thiss!1504)) (index!5533 lt!112524)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!144151 () Bool)

(assert (=> b!221787 (=> (not res!108847) (not e!144151))))

(declare-fun res!108853 () Bool)

(assert (=> start!21908 (=> (not res!108853) (not e!144137))))

(declare-fun valid!1219 (LongMapFixedSize!3038) Bool)

(assert (=> start!21908 (= res!108853 (valid!1219 thiss!1504))))

(assert (=> start!21908 e!144137))

(declare-fun e!144138 () Bool)

(assert (=> start!21908 e!144138))

(assert (=> start!21908 true))

(declare-fun b!221788 () Bool)

(assert (=> b!221788 (= e!144152 tp_is_empty!5825)))

(declare-fun b!221789 () Bool)

(declare-fun e!144146 () Bool)

(assert (=> b!221789 (= e!144146 e!144151)))

(declare-fun res!108856 () Bool)

(assert (=> b!221789 (= res!108856 call!20721)))

(assert (=> b!221789 (=> (not res!108856) (not e!144151))))

(declare-fun b!221790 () Bool)

(declare-fun e!144144 () Bool)

(declare-fun call!20722 () Bool)

(assert (=> b!221790 (= e!144144 (not call!20722))))

(declare-fun b!221791 () Bool)

(declare-fun e!144143 () Bool)

(declare-fun e!144140 () Bool)

(assert (=> b!221791 (= e!144143 e!144140)))

(declare-fun res!108846 () Bool)

(assert (=> b!221791 (=> (not res!108846) (not e!144140))))

(assert (=> b!221791 (= res!108846 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!221792 () Bool)

(assert (=> b!221792 (= e!144151 (not call!20722))))

(declare-fun b!221793 () Bool)

(declare-fun e!144142 () Bool)

(declare-fun contains!1512 (List!3312 (_ BitVec 64)) Bool)

(assert (=> b!221793 (= e!144142 (contains!1512 Nil!3309 key!932))))

(declare-fun b!221794 () Bool)

(declare-fun res!108854 () Bool)

(assert (=> b!221794 (=> (not res!108854) (not e!144144))))

(assert (=> b!221794 (= res!108854 (= (select (arr!5166 (_keys!6232 thiss!1504)) (index!5530 lt!112524)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!221795 () Bool)

(declare-fun Unit!6634 () Unit!6630)

(assert (=> b!221795 (= e!144145 Unit!6634)))

(declare-fun lt!112523 () Unit!6630)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!220 (array!10894 array!10892 (_ BitVec 32) (_ BitVec 32) V!7413 V!7413 (_ BitVec 64) Int) Unit!6630)

(assert (=> b!221795 (= lt!112523 (lemmaInListMapThenSeekEntryOrOpenFindsIt!220 (_keys!6232 thiss!1504) (_values!4161 thiss!1504) (mask!9992 thiss!1504) (extraKeys!3915 thiss!1504) (zeroValue!4019 thiss!1504) (minValue!4019 thiss!1504) key!932 (defaultEntry!4178 thiss!1504)))))

(assert (=> b!221795 false))

(declare-fun b!221796 () Bool)

(declare-fun e!144150 () Bool)

(assert (=> b!221796 (= e!144150 (and e!144149 mapRes!9907))))

(declare-fun condMapEmpty!9907 () Bool)

(declare-fun mapDefault!9907 () ValueCell!2569)


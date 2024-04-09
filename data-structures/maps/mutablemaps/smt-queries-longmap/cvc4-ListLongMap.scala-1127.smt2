; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23162 () Bool)

(assert start!23162)

(declare-fun b!242818 () Bool)

(declare-fun b_free!6515 () Bool)

(declare-fun b_next!6515 () Bool)

(assert (=> b!242818 (= b_free!6515 (not b_next!6515))))

(declare-fun tp!22761 () Bool)

(declare-fun b_and!13511 () Bool)

(assert (=> b!242818 (= tp!22761 b_and!13511)))

(declare-fun b!242795 () Bool)

(declare-fun e!157582 () Bool)

(declare-fun tp_is_empty!6377 () Bool)

(assert (=> b!242795 (= e!157582 tp_is_empty!6377)))

(declare-fun b!242796 () Bool)

(declare-fun e!157583 () Bool)

(declare-datatypes ((SeekEntryResult!1078 0))(
  ( (MissingZero!1078 (index!6482 (_ BitVec 32))) (Found!1078 (index!6483 (_ BitVec 32))) (Intermediate!1078 (undefined!1890 Bool) (index!6484 (_ BitVec 32)) (x!24302 (_ BitVec 32))) (Undefined!1078) (MissingVacant!1078 (index!6485 (_ BitVec 32))) )
))
(declare-fun lt!121949 () SeekEntryResult!1078)

(assert (=> b!242796 (= e!157583 (is-Undefined!1078 lt!121949))))

(declare-fun bm!22626 () Bool)

(declare-fun call!22630 () Bool)

(declare-datatypes ((V!8149 0))(
  ( (V!8150 (val!3233 Int)) )
))
(declare-datatypes ((ValueCell!2845 0))(
  ( (ValueCellFull!2845 (v!5272 V!8149)) (EmptyCell!2845) )
))
(declare-datatypes ((array!12040 0))(
  ( (array!12041 (arr!5717 (Array (_ BitVec 32) ValueCell!2845)) (size!6059 (_ BitVec 32))) )
))
(declare-datatypes ((array!12042 0))(
  ( (array!12043 (arr!5718 (Array (_ BitVec 32) (_ BitVec 64))) (size!6060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3590 0))(
  ( (LongMapFixedSize!3591 (defaultEntry!4500 Int) (mask!10585 (_ BitVec 32)) (extraKeys!4237 (_ BitVec 32)) (zeroValue!4341 V!8149) (minValue!4341 V!8149) (_size!1844 (_ BitVec 32)) (_keys!6609 array!12042) (_values!4483 array!12040) (_vacant!1844 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3590)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22626 (= call!22630 (arrayContainsKey!0 (_keys!6609 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242797 () Bool)

(declare-fun res!118992 () Bool)

(declare-fun e!157596 () Bool)

(assert (=> b!242797 (=> (not res!118992) (not e!157596))))

(declare-datatypes ((List!3660 0))(
  ( (Nil!3657) (Cons!3656 (h!4313 (_ BitVec 64)) (t!8671 List!3660)) )
))
(declare-fun noDuplicate!93 (List!3660) Bool)

(assert (=> b!242797 (= res!118992 (noDuplicate!93 Nil!3657))))

(declare-fun b!242798 () Bool)

(declare-fun res!118993 () Bool)

(assert (=> b!242798 (=> (not res!118993) (not e!157596))))

(declare-fun contains!1747 (List!3660 (_ BitVec 64)) Bool)

(assert (=> b!242798 (= res!118993 (not (contains!1747 Nil!3657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!118997 () Bool)

(declare-fun e!157585 () Bool)

(assert (=> start!23162 (=> (not res!118997) (not e!157585))))

(declare-fun valid!1400 (LongMapFixedSize!3590) Bool)

(assert (=> start!23162 (= res!118997 (valid!1400 thiss!1504))))

(assert (=> start!23162 e!157585))

(declare-fun e!157594 () Bool)

(assert (=> start!23162 e!157594))

(assert (=> start!23162 true))

(declare-fun b!242799 () Bool)

(declare-fun res!118999 () Bool)

(declare-fun e!157584 () Bool)

(assert (=> b!242799 (=> (not res!118999) (not e!157584))))

(declare-fun call!22629 () Bool)

(assert (=> b!242799 (= res!118999 call!22629)))

(declare-fun e!157588 () Bool)

(assert (=> b!242799 (= e!157588 e!157584)))

(declare-fun b!242800 () Bool)

(declare-datatypes ((Unit!7489 0))(
  ( (Unit!7490) )
))
(declare-fun e!157598 () Unit!7489)

(declare-fun lt!121950 () Unit!7489)

(assert (=> b!242800 (= e!157598 lt!121950)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!365 (array!12042 array!12040 (_ BitVec 32) (_ BitVec 32) V!8149 V!8149 (_ BitVec 64) Int) Unit!7489)

(assert (=> b!242800 (= lt!121950 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!365 (_keys!6609 thiss!1504) (_values!4483 thiss!1504) (mask!10585 thiss!1504) (extraKeys!4237 thiss!1504) (zeroValue!4341 thiss!1504) (minValue!4341 thiss!1504) key!932 (defaultEntry!4500 thiss!1504)))))

(declare-fun c!40508 () Bool)

(assert (=> b!242800 (= c!40508 (is-MissingZero!1078 lt!121949))))

(assert (=> b!242800 e!157588))

(declare-fun b!242801 () Bool)

(declare-fun e!157587 () Unit!7489)

(declare-fun Unit!7491 () Unit!7489)

(assert (=> b!242801 (= e!157587 Unit!7491)))

(declare-fun lt!121954 () Unit!7489)

(declare-fun lemmaArrayContainsKeyThenInListMap!162 (array!12042 array!12040 (_ BitVec 32) (_ BitVec 32) V!8149 V!8149 (_ BitVec 64) (_ BitVec 32) Int) Unit!7489)

(assert (=> b!242801 (= lt!121954 (lemmaArrayContainsKeyThenInListMap!162 (_keys!6609 thiss!1504) (_values!4483 thiss!1504) (mask!10585 thiss!1504) (extraKeys!4237 thiss!1504) (zeroValue!4341 thiss!1504) (minValue!4341 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4500 thiss!1504)))))

(assert (=> b!242801 false))

(declare-fun b!242802 () Bool)

(declare-fun e!157593 () Bool)

(assert (=> b!242802 (= e!157593 e!157596)))

(declare-fun res!119006 () Bool)

(assert (=> b!242802 (=> (not res!119006) (not e!157596))))

(assert (=> b!242802 (= res!119006 (and (bvslt (size!6060 (_keys!6609 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6060 (_keys!6609 thiss!1504)))))))

(declare-fun lt!121952 () Unit!7489)

(assert (=> b!242802 (= lt!121952 e!157587)))

(declare-fun c!40511 () Bool)

(assert (=> b!242802 (= c!40511 (arrayContainsKey!0 (_keys!6609 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242803 () Bool)

(declare-fun res!119002 () Bool)

(assert (=> b!242803 (=> (not res!119002) (not e!157584))))

(assert (=> b!242803 (= res!119002 (= (select (arr!5718 (_keys!6609 thiss!1504)) (index!6482 lt!121949)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242804 () Bool)

(declare-fun Unit!7492 () Unit!7489)

(assert (=> b!242804 (= e!157598 Unit!7492)))

(declare-fun lt!121951 () Unit!7489)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!358 (array!12042 array!12040 (_ BitVec 32) (_ BitVec 32) V!8149 V!8149 (_ BitVec 64) Int) Unit!7489)

(assert (=> b!242804 (= lt!121951 (lemmaInListMapThenSeekEntryOrOpenFindsIt!358 (_keys!6609 thiss!1504) (_values!4483 thiss!1504) (mask!10585 thiss!1504) (extraKeys!4237 thiss!1504) (zeroValue!4341 thiss!1504) (minValue!4341 thiss!1504) key!932 (defaultEntry!4500 thiss!1504)))))

(assert (=> b!242804 false))

(declare-fun mapNonEmpty!10810 () Bool)

(declare-fun mapRes!10810 () Bool)

(declare-fun tp!22762 () Bool)

(declare-fun e!157590 () Bool)

(assert (=> mapNonEmpty!10810 (= mapRes!10810 (and tp!22762 e!157590))))

(declare-fun mapKey!10810 () (_ BitVec 32))

(declare-fun mapRest!10810 () (Array (_ BitVec 32) ValueCell!2845))

(declare-fun mapValue!10810 () ValueCell!2845)

(assert (=> mapNonEmpty!10810 (= (arr!5717 (_values!4483 thiss!1504)) (store mapRest!10810 mapKey!10810 mapValue!10810))))

(declare-fun b!242805 () Bool)

(declare-fun Unit!7493 () Unit!7489)

(assert (=> b!242805 (= e!157587 Unit!7493)))

(declare-fun b!242806 () Bool)

(declare-fun e!157592 () Bool)

(assert (=> b!242806 (= e!157592 (not call!22630))))

(declare-fun b!242807 () Bool)

(declare-fun res!118995 () Bool)

(assert (=> b!242807 (=> (not res!118995) (not e!157585))))

(assert (=> b!242807 (= res!118995 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!242808 () Bool)

(declare-fun e!157591 () Bool)

(assert (=> b!242808 (= e!157591 (not (contains!1747 Nil!3657 key!932)))))

(declare-fun b!242809 () Bool)

(declare-fun e!157597 () Bool)

(assert (=> b!242809 (= e!157597 e!157593)))

(declare-fun res!119000 () Bool)

(assert (=> b!242809 (=> (not res!119000) (not e!157593))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!242809 (= res!119000 (inRange!0 index!297 (mask!10585 thiss!1504)))))

(declare-fun lt!121953 () Unit!7489)

(assert (=> b!242809 (= lt!121953 e!157598)))

(declare-fun c!40509 () Bool)

(declare-datatypes ((tuple2!4758 0))(
  ( (tuple2!4759 (_1!2389 (_ BitVec 64)) (_2!2389 V!8149)) )
))
(declare-datatypes ((List!3661 0))(
  ( (Nil!3658) (Cons!3657 (h!4314 tuple2!4758) (t!8672 List!3661)) )
))
(declare-datatypes ((ListLongMap!3685 0))(
  ( (ListLongMap!3686 (toList!1858 List!3661)) )
))
(declare-fun contains!1748 (ListLongMap!3685 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1381 (array!12042 array!12040 (_ BitVec 32) (_ BitVec 32) V!8149 V!8149 (_ BitVec 32) Int) ListLongMap!3685)

(assert (=> b!242809 (= c!40509 (contains!1748 (getCurrentListMap!1381 (_keys!6609 thiss!1504) (_values!4483 thiss!1504) (mask!10585 thiss!1504) (extraKeys!4237 thiss!1504) (zeroValue!4341 thiss!1504) (minValue!4341 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4500 thiss!1504)) key!932))))

(declare-fun b!242810 () Bool)

(declare-fun res!118998 () Bool)

(assert (=> b!242810 (=> (not res!118998) (not e!157596))))

(assert (=> b!242810 (= res!118998 (not (contains!1747 Nil!3657 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!242811 () Bool)

(declare-fun e!157586 () Bool)

(assert (=> b!242811 (= e!157586 (contains!1747 Nil!3657 key!932))))

(declare-fun b!242812 () Bool)

(declare-fun c!40510 () Bool)

(assert (=> b!242812 (= c!40510 (is-MissingVacant!1078 lt!121949))))

(assert (=> b!242812 (= e!157588 e!157583)))

(declare-fun bm!22627 () Bool)

(assert (=> bm!22627 (= call!22629 (inRange!0 (ite c!40508 (index!6482 lt!121949) (index!6485 lt!121949)) (mask!10585 thiss!1504)))))

(declare-fun b!242813 () Bool)

(assert (=> b!242813 (= e!157584 (not call!22630))))

(declare-fun b!242814 () Bool)

(declare-fun res!118994 () Bool)

(assert (=> b!242814 (=> (not res!118994) (not e!157596))))

(assert (=> b!242814 (= res!118994 e!157591)))

(declare-fun res!119005 () Bool)

(assert (=> b!242814 (=> res!119005 e!157591)))

(assert (=> b!242814 (= res!119005 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!242815 () Bool)

(assert (=> b!242815 (= e!157590 tp_is_empty!6377)))

(declare-fun b!242816 () Bool)

(declare-fun res!119001 () Bool)

(assert (=> b!242816 (= res!119001 (= (select (arr!5718 (_keys!6609 thiss!1504)) (index!6485 lt!121949)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242816 (=> (not res!119001) (not e!157592))))

(declare-fun mapIsEmpty!10810 () Bool)

(assert (=> mapIsEmpty!10810 mapRes!10810))

(declare-fun b!242817 () Bool)

(declare-fun e!157595 () Bool)

(assert (=> b!242817 (= e!157595 (and e!157582 mapRes!10810))))

(declare-fun condMapEmpty!10810 () Bool)

(declare-fun mapDefault!10810 () ValueCell!2845)


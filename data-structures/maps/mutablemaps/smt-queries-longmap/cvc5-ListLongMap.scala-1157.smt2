; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24302 () Bool)

(assert start!24302)

(declare-fun b!254529 () Bool)

(declare-fun b_free!6691 () Bool)

(declare-fun b_next!6691 () Bool)

(assert (=> b!254529 (= b_free!6691 (not b_next!6691))))

(declare-fun tp!23361 () Bool)

(declare-fun b_and!13751 () Bool)

(assert (=> b!254529 (= tp!23361 b_and!13751)))

(declare-fun res!124617 () Bool)

(declare-fun e!165000 () Bool)

(assert (=> start!24302 (=> (not res!124617) (not e!165000))))

(declare-datatypes ((V!8385 0))(
  ( (V!8386 (val!3321 Int)) )
))
(declare-datatypes ((ValueCell!2933 0))(
  ( (ValueCellFull!2933 (v!5391 V!8385)) (EmptyCell!2933) )
))
(declare-datatypes ((array!12436 0))(
  ( (array!12437 (arr!5893 (Array (_ BitVec 32) ValueCell!2933)) (size!6240 (_ BitVec 32))) )
))
(declare-datatypes ((array!12438 0))(
  ( (array!12439 (arr!5894 (Array (_ BitVec 32) (_ BitVec 64))) (size!6241 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3766 0))(
  ( (LongMapFixedSize!3767 (defaultEntry!4696 Int) (mask!10944 (_ BitVec 32)) (extraKeys!4433 (_ BitVec 32)) (zeroValue!4537 V!8385) (minValue!4537 V!8385) (_size!1932 (_ BitVec 32)) (_keys!6850 array!12438) (_values!4679 array!12436) (_vacant!1932 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3766)

(declare-fun valid!1464 (LongMapFixedSize!3766) Bool)

(assert (=> start!24302 (= res!124617 (valid!1464 thiss!1504))))

(assert (=> start!24302 e!165000))

(declare-fun e!164992 () Bool)

(assert (=> start!24302 e!164992))

(assert (=> start!24302 true))

(declare-fun tp_is_empty!6553 () Bool)

(assert (=> start!24302 tp_is_empty!6553))

(declare-fun b!254520 () Bool)

(declare-fun res!124615 () Bool)

(declare-fun e!164996 () Bool)

(assert (=> b!254520 (=> (not res!124615) (not e!164996))))

(declare-datatypes ((SeekEntryResult!1161 0))(
  ( (MissingZero!1161 (index!6814 (_ BitVec 32))) (Found!1161 (index!6815 (_ BitVec 32))) (Intermediate!1161 (undefined!1973 Bool) (index!6816 (_ BitVec 32)) (x!24885 (_ BitVec 32))) (Undefined!1161) (MissingVacant!1161 (index!6817 (_ BitVec 32))) )
))
(declare-fun lt!127583 () SeekEntryResult!1161)

(assert (=> b!254520 (= res!124615 (= (select (arr!5894 (_keys!6850 thiss!1504)) (index!6814 lt!127583)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254521 () Bool)

(declare-fun e!164988 () Bool)

(declare-fun call!24016 () Bool)

(assert (=> b!254521 (= e!164988 (not call!24016))))

(declare-fun b!254522 () Bool)

(declare-fun res!124614 () Bool)

(assert (=> b!254522 (=> (not res!124614) (not e!165000))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!254522 (= res!124614 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254523 () Bool)

(declare-fun e!164993 () Bool)

(assert (=> b!254523 (= e!164993 (is-Undefined!1161 lt!127583))))

(declare-fun b!254524 () Bool)

(declare-fun res!124616 () Bool)

(assert (=> b!254524 (= res!124616 (= (select (arr!5894 (_keys!6850 thiss!1504)) (index!6817 lt!127583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254524 (=> (not res!124616) (not e!164988))))

(declare-fun mapNonEmpty!11145 () Bool)

(declare-fun mapRes!11145 () Bool)

(declare-fun tp!23360 () Bool)

(declare-fun e!164999 () Bool)

(assert (=> mapNonEmpty!11145 (= mapRes!11145 (and tp!23360 e!164999))))

(declare-fun mapKey!11145 () (_ BitVec 32))

(declare-fun mapValue!11145 () ValueCell!2933)

(declare-fun mapRest!11145 () (Array (_ BitVec 32) ValueCell!2933))

(assert (=> mapNonEmpty!11145 (= (arr!5893 (_values!4679 thiss!1504)) (store mapRest!11145 mapKey!11145 mapValue!11145))))

(declare-fun b!254525 () Bool)

(declare-fun e!164990 () Bool)

(declare-fun e!164989 () Bool)

(assert (=> b!254525 (= e!164990 e!164989)))

(declare-fun res!124612 () Bool)

(assert (=> b!254525 (=> (not res!124612) (not e!164989))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254525 (= res!124612 (inRange!0 index!297 (mask!10944 thiss!1504)))))

(declare-datatypes ((Unit!7888 0))(
  ( (Unit!7889) )
))
(declare-fun lt!127590 () Unit!7888)

(declare-fun e!164987 () Unit!7888)

(assert (=> b!254525 (= lt!127590 e!164987)))

(declare-fun c!42919 () Bool)

(declare-datatypes ((tuple2!4886 0))(
  ( (tuple2!4887 (_1!2453 (_ BitVec 64)) (_2!2453 V!8385)) )
))
(declare-datatypes ((List!3792 0))(
  ( (Nil!3789) (Cons!3788 (h!4450 tuple2!4886) (t!8847 List!3792)) )
))
(declare-datatypes ((ListLongMap!3813 0))(
  ( (ListLongMap!3814 (toList!1922 List!3792)) )
))
(declare-fun lt!127584 () ListLongMap!3813)

(declare-fun contains!1846 (ListLongMap!3813 (_ BitVec 64)) Bool)

(assert (=> b!254525 (= c!42919 (contains!1846 lt!127584 key!932))))

(declare-fun getCurrentListMap!1445 (array!12438 array!12436 (_ BitVec 32) (_ BitVec 32) V!8385 V!8385 (_ BitVec 32) Int) ListLongMap!3813)

(assert (=> b!254525 (= lt!127584 (getCurrentListMap!1445 (_keys!6850 thiss!1504) (_values!4679 thiss!1504) (mask!10944 thiss!1504) (extraKeys!4433 thiss!1504) (zeroValue!4537 thiss!1504) (minValue!4537 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4696 thiss!1504)))))

(declare-fun b!254526 () Bool)

(assert (=> b!254526 (= e!165000 e!164990)))

(declare-fun res!124610 () Bool)

(assert (=> b!254526 (=> (not res!124610) (not e!164990))))

(assert (=> b!254526 (= res!124610 (or (= lt!127583 (MissingZero!1161 index!297)) (= lt!127583 (MissingVacant!1161 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12438 (_ BitVec 32)) SeekEntryResult!1161)

(assert (=> b!254526 (= lt!127583 (seekEntryOrOpen!0 key!932 (_keys!6850 thiss!1504) (mask!10944 thiss!1504)))))

(declare-fun b!254527 () Bool)

(declare-fun e!164998 () Bool)

(assert (=> b!254527 (= e!164998 tp_is_empty!6553)))

(declare-fun b!254528 () Bool)

(declare-fun Unit!7890 () Unit!7888)

(assert (=> b!254528 (= e!164987 Unit!7890)))

(declare-fun lt!127589 () Unit!7888)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!419 (array!12438 array!12436 (_ BitVec 32) (_ BitVec 32) V!8385 V!8385 (_ BitVec 64) Int) Unit!7888)

(assert (=> b!254528 (= lt!127589 (lemmaInListMapThenSeekEntryOrOpenFindsIt!419 (_keys!6850 thiss!1504) (_values!4679 thiss!1504) (mask!10944 thiss!1504) (extraKeys!4433 thiss!1504) (zeroValue!4537 thiss!1504) (minValue!4537 thiss!1504) key!932 (defaultEntry!4696 thiss!1504)))))

(assert (=> b!254528 false))

(declare-fun e!164991 () Bool)

(declare-fun array_inv!3887 (array!12438) Bool)

(declare-fun array_inv!3888 (array!12436) Bool)

(assert (=> b!254529 (= e!164992 (and tp!23361 tp_is_empty!6553 (array_inv!3887 (_keys!6850 thiss!1504)) (array_inv!3888 (_values!4679 thiss!1504)) e!164991))))

(declare-fun b!254530 () Bool)

(declare-fun res!124613 () Bool)

(assert (=> b!254530 (=> (not res!124613) (not e!164996))))

(declare-fun call!24017 () Bool)

(assert (=> b!254530 (= res!124613 call!24017)))

(declare-fun e!164994 () Bool)

(assert (=> b!254530 (= e!164994 e!164996)))

(declare-fun b!254531 () Bool)

(declare-fun c!42916 () Bool)

(assert (=> b!254531 (= c!42916 (is-MissingVacant!1161 lt!127583))))

(assert (=> b!254531 (= e!164994 e!164993)))

(declare-fun b!254532 () Bool)

(declare-fun e!164997 () Unit!7888)

(declare-fun Unit!7891 () Unit!7888)

(assert (=> b!254532 (= e!164997 Unit!7891)))

(declare-fun b!254533 () Bool)

(assert (=> b!254533 (= e!164993 e!164988)))

(declare-fun res!124611 () Bool)

(assert (=> b!254533 (= res!124611 call!24017)))

(assert (=> b!254533 (=> (not res!124611) (not e!164988))))

(declare-fun b!254534 () Bool)

(declare-fun lt!127585 () Unit!7888)

(assert (=> b!254534 (= e!164987 lt!127585)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!419 (array!12438 array!12436 (_ BitVec 32) (_ BitVec 32) V!8385 V!8385 (_ BitVec 64) Int) Unit!7888)

(assert (=> b!254534 (= lt!127585 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!419 (_keys!6850 thiss!1504) (_values!4679 thiss!1504) (mask!10944 thiss!1504) (extraKeys!4433 thiss!1504) (zeroValue!4537 thiss!1504) (minValue!4537 thiss!1504) key!932 (defaultEntry!4696 thiss!1504)))))

(declare-fun c!42918 () Bool)

(assert (=> b!254534 (= c!42918 (is-MissingZero!1161 lt!127583))))

(assert (=> b!254534 e!164994))

(declare-fun b!254535 () Bool)

(assert (=> b!254535 (= e!164996 (not call!24016))))

(declare-fun b!254536 () Bool)

(declare-fun Unit!7892 () Unit!7888)

(assert (=> b!254536 (= e!164997 Unit!7892)))

(declare-fun lt!127579 () Unit!7888)

(declare-fun lemmaArrayContainsKeyThenInListMap!224 (array!12438 array!12436 (_ BitVec 32) (_ BitVec 32) V!8385 V!8385 (_ BitVec 64) (_ BitVec 32) Int) Unit!7888)

(assert (=> b!254536 (= lt!127579 (lemmaArrayContainsKeyThenInListMap!224 (_keys!6850 thiss!1504) (_values!4679 thiss!1504) (mask!10944 thiss!1504) (extraKeys!4433 thiss!1504) (zeroValue!4537 thiss!1504) (minValue!4537 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4696 thiss!1504)))))

(assert (=> b!254536 false))

(declare-fun b!254537 () Bool)

(assert (=> b!254537 (= e!164991 (and e!164998 mapRes!11145))))

(declare-fun condMapEmpty!11145 () Bool)

(declare-fun mapDefault!11145 () ValueCell!2933)


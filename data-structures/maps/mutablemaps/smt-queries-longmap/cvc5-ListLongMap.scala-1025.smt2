; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21844 () Bool)

(assert start!21844)

(declare-fun b!219640 () Bool)

(declare-fun b_free!5899 () Bool)

(declare-fun b_next!5899 () Bool)

(assert (=> b!219640 (= b_free!5899 (not b_next!5899))))

(declare-fun tp!20839 () Bool)

(declare-fun b_and!12815 () Bool)

(assert (=> b!219640 (= tp!20839 b_and!12815)))

(declare-fun b!219620 () Bool)

(declare-fun res!107670 () Bool)

(declare-fun e!142858 () Bool)

(assert (=> b!219620 (=> (not res!107670) (not e!142858))))

(declare-datatypes ((V!7329 0))(
  ( (V!7330 (val!2925 Int)) )
))
(declare-datatypes ((ValueCell!2537 0))(
  ( (ValueCellFull!2537 (v!4941 V!7329)) (EmptyCell!2537) )
))
(declare-datatypes ((array!10764 0))(
  ( (array!10765 (arr!5101 (Array (_ BitVec 32) ValueCell!2537)) (size!5434 (_ BitVec 32))) )
))
(declare-datatypes ((array!10766 0))(
  ( (array!10767 (arr!5102 (Array (_ BitVec 32) (_ BitVec 64))) (size!5435 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2974 0))(
  ( (LongMapFixedSize!2975 (defaultEntry!4146 Int) (mask!9940 (_ BitVec 32)) (extraKeys!3883 (_ BitVec 32)) (zeroValue!3987 V!7329) (minValue!3987 V!7329) (_size!1536 (_ BitVec 32)) (_keys!6200 array!10766) (_values!4129 array!10764) (_vacant!1536 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2974)

(declare-datatypes ((SeekEntryResult!810 0))(
  ( (MissingZero!810 (index!5410 (_ BitVec 32))) (Found!810 (index!5411 (_ BitVec 32))) (Intermediate!810 (undefined!1622 Bool) (index!5412 (_ BitVec 32)) (x!22926 (_ BitVec 32))) (Undefined!810) (MissingVacant!810 (index!5413 (_ BitVec 32))) )
))
(declare-fun lt!112028 () SeekEntryResult!810)

(assert (=> b!219620 (= res!107670 (= (select (arr!5102 (_keys!6200 thiss!1504)) (index!5410 lt!112028)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219622 () Bool)

(declare-fun e!142855 () Bool)

(assert (=> b!219622 (= e!142855 false)))

(declare-fun lt!112026 () Bool)

(declare-datatypes ((List!3264 0))(
  ( (Nil!3261) (Cons!3260 (h!3908 (_ BitVec 64)) (t!8231 List!3264)) )
))
(declare-fun arrayNoDuplicates!0 (array!10766 (_ BitVec 32) List!3264) Bool)

(assert (=> b!219622 (= lt!112026 (arrayNoDuplicates!0 (_keys!6200 thiss!1504) #b00000000000000000000000000000000 Nil!3261))))

(declare-fun b!219623 () Bool)

(declare-fun c!36560 () Bool)

(assert (=> b!219623 (= c!36560 (is-MissingVacant!810 lt!112028))))

(declare-fun e!142850 () Bool)

(declare-fun e!142857 () Bool)

(assert (=> b!219623 (= e!142850 e!142857)))

(declare-fun b!219624 () Bool)

(declare-fun e!142859 () Bool)

(assert (=> b!219624 (= e!142859 e!142855)))

(declare-fun res!107663 () Bool)

(assert (=> b!219624 (=> (not res!107663) (not e!142855))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!219624 (= res!107663 (inRange!0 index!297 (mask!9940 thiss!1504)))))

(declare-datatypes ((Unit!6546 0))(
  ( (Unit!6547) )
))
(declare-fun lt!112029 () Unit!6546)

(declare-fun e!142853 () Unit!6546)

(assert (=> b!219624 (= lt!112029 e!142853)))

(declare-fun c!36559 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4338 0))(
  ( (tuple2!4339 (_1!2179 (_ BitVec 64)) (_2!2179 V!7329)) )
))
(declare-datatypes ((List!3265 0))(
  ( (Nil!3262) (Cons!3261 (h!3909 tuple2!4338) (t!8232 List!3265)) )
))
(declare-datatypes ((ListLongMap!3265 0))(
  ( (ListLongMap!3266 (toList!1648 List!3265)) )
))
(declare-fun contains!1485 (ListLongMap!3265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1171 (array!10766 array!10764 (_ BitVec 32) (_ BitVec 32) V!7329 V!7329 (_ BitVec 32) Int) ListLongMap!3265)

(assert (=> b!219624 (= c!36559 (contains!1485 (getCurrentListMap!1171 (_keys!6200 thiss!1504) (_values!4129 thiss!1504) (mask!9940 thiss!1504) (extraKeys!3883 thiss!1504) (zeroValue!3987 thiss!1504) (minValue!3987 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4146 thiss!1504)) key!932))))

(declare-fun b!219625 () Bool)

(declare-fun e!142854 () Bool)

(declare-fun call!20529 () Bool)

(assert (=> b!219625 (= e!142854 (not call!20529))))

(declare-fun b!219626 () Bool)

(declare-fun res!107669 () Bool)

(assert (=> b!219626 (=> (not res!107669) (not e!142858))))

(declare-fun call!20530 () Bool)

(assert (=> b!219626 (= res!107669 call!20530)))

(assert (=> b!219626 (= e!142850 e!142858)))

(declare-fun b!219627 () Bool)

(declare-fun e!142860 () Bool)

(declare-fun tp_is_empty!5761 () Bool)

(assert (=> b!219627 (= e!142860 tp_is_empty!5761)))

(declare-fun bm!20526 () Bool)

(declare-fun arrayContainsKey!0 (array!10766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20526 (= call!20529 (arrayContainsKey!0 (_keys!6200 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219628 () Bool)

(declare-fun res!107671 () Bool)

(assert (=> b!219628 (=> (not res!107671) (not e!142855))))

(assert (=> b!219628 (= res!107671 (and (= (size!5434 (_values!4129 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9940 thiss!1504))) (= (size!5435 (_keys!6200 thiss!1504)) (size!5434 (_values!4129 thiss!1504))) (bvsge (mask!9940 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3883 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3883 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!219629 () Bool)

(assert (=> b!219629 (= e!142857 e!142854)))

(declare-fun res!107660 () Bool)

(assert (=> b!219629 (= res!107660 call!20530)))

(assert (=> b!219629 (=> (not res!107660) (not e!142854))))

(declare-fun b!219630 () Bool)

(assert (=> b!219630 (= e!142858 (not call!20529))))

(declare-fun b!219631 () Bool)

(declare-fun res!107664 () Bool)

(declare-fun e!142856 () Bool)

(assert (=> b!219631 (=> (not res!107664) (not e!142856))))

(assert (=> b!219631 (= res!107664 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9811 () Bool)

(declare-fun mapRes!9811 () Bool)

(declare-fun tp!20838 () Bool)

(assert (=> mapNonEmpty!9811 (= mapRes!9811 (and tp!20838 e!142860))))

(declare-fun mapValue!9811 () ValueCell!2537)

(declare-fun mapKey!9811 () (_ BitVec 32))

(declare-fun mapRest!9811 () (Array (_ BitVec 32) ValueCell!2537))

(assert (=> mapNonEmpty!9811 (= (arr!5101 (_values!4129 thiss!1504)) (store mapRest!9811 mapKey!9811 mapValue!9811))))

(declare-fun b!219632 () Bool)

(declare-fun Unit!6548 () Unit!6546)

(assert (=> b!219632 (= e!142853 Unit!6548)))

(declare-fun lt!112025 () Unit!6546)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!197 (array!10766 array!10764 (_ BitVec 32) (_ BitVec 32) V!7329 V!7329 (_ BitVec 64) Int) Unit!6546)

(assert (=> b!219632 (= lt!112025 (lemmaInListMapThenSeekEntryOrOpenFindsIt!197 (_keys!6200 thiss!1504) (_values!4129 thiss!1504) (mask!9940 thiss!1504) (extraKeys!3883 thiss!1504) (zeroValue!3987 thiss!1504) (minValue!3987 thiss!1504) key!932 (defaultEntry!4146 thiss!1504)))))

(assert (=> b!219632 false))

(declare-fun res!107662 () Bool)

(assert (=> start!21844 (=> (not res!107662) (not e!142856))))

(declare-fun valid!1195 (LongMapFixedSize!2974) Bool)

(assert (=> start!21844 (= res!107662 (valid!1195 thiss!1504))))

(assert (=> start!21844 e!142856))

(declare-fun e!142851 () Bool)

(assert (=> start!21844 e!142851))

(assert (=> start!21844 true))

(declare-fun b!219621 () Bool)

(declare-fun res!107666 () Bool)

(assert (=> b!219621 (=> (not res!107666) (not e!142855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!219621 (= res!107666 (validMask!0 (mask!9940 thiss!1504)))))

(declare-fun b!219633 () Bool)

(assert (=> b!219633 (= e!142857 (is-Undefined!810 lt!112028))))

(declare-fun b!219634 () Bool)

(declare-fun res!107667 () Bool)

(assert (=> b!219634 (=> (not res!107667) (not e!142855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10766 (_ BitVec 32)) Bool)

(assert (=> b!219634 (= res!107667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6200 thiss!1504) (mask!9940 thiss!1504)))))

(declare-fun b!219635 () Bool)

(declare-fun lt!112027 () Unit!6546)

(assert (=> b!219635 (= e!142853 lt!112027)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!206 (array!10766 array!10764 (_ BitVec 32) (_ BitVec 32) V!7329 V!7329 (_ BitVec 64) Int) Unit!6546)

(assert (=> b!219635 (= lt!112027 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!206 (_keys!6200 thiss!1504) (_values!4129 thiss!1504) (mask!9940 thiss!1504) (extraKeys!3883 thiss!1504) (zeroValue!3987 thiss!1504) (minValue!3987 thiss!1504) key!932 (defaultEntry!4146 thiss!1504)))))

(declare-fun c!36558 () Bool)

(assert (=> b!219635 (= c!36558 (is-MissingZero!810 lt!112028))))

(assert (=> b!219635 e!142850))

(declare-fun mapIsEmpty!9811 () Bool)

(assert (=> mapIsEmpty!9811 mapRes!9811))

(declare-fun b!219636 () Bool)

(assert (=> b!219636 (= e!142856 e!142859)))

(declare-fun res!107665 () Bool)

(assert (=> b!219636 (=> (not res!107665) (not e!142859))))

(assert (=> b!219636 (= res!107665 (or (= lt!112028 (MissingZero!810 index!297)) (= lt!112028 (MissingVacant!810 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10766 (_ BitVec 32)) SeekEntryResult!810)

(assert (=> b!219636 (= lt!112028 (seekEntryOrOpen!0 key!932 (_keys!6200 thiss!1504) (mask!9940 thiss!1504)))))

(declare-fun b!219637 () Bool)

(declare-fun e!142849 () Bool)

(declare-fun e!142861 () Bool)

(assert (=> b!219637 (= e!142849 (and e!142861 mapRes!9811))))

(declare-fun condMapEmpty!9811 () Bool)

(declare-fun mapDefault!9811 () ValueCell!2537)


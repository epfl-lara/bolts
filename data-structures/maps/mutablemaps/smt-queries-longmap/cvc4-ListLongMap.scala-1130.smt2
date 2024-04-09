; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23234 () Bool)

(assert start!23234)

(declare-fun b!243922 () Bool)

(declare-fun b_free!6533 () Bool)

(declare-fun b_next!6533 () Bool)

(assert (=> b!243922 (= b_free!6533 (not b_next!6533))))

(declare-fun tp!22821 () Bool)

(declare-fun b_and!13533 () Bool)

(assert (=> b!243922 (= tp!22821 b_and!13533)))

(declare-fun b!243895 () Bool)

(declare-fun res!119607 () Bool)

(declare-fun e!158283 () Bool)

(assert (=> b!243895 (=> (not res!119607) (not e!158283))))

(declare-fun call!22741 () Bool)

(assert (=> b!243895 (= res!119607 call!22741)))

(declare-fun e!158281 () Bool)

(assert (=> b!243895 (= e!158281 e!158283)))

(declare-fun bm!22737 () Bool)

(declare-fun call!22740 () Bool)

(declare-datatypes ((V!8173 0))(
  ( (V!8174 (val!3242 Int)) )
))
(declare-datatypes ((ValueCell!2854 0))(
  ( (ValueCellFull!2854 (v!5285 V!8173)) (EmptyCell!2854) )
))
(declare-datatypes ((array!12080 0))(
  ( (array!12081 (arr!5735 (Array (_ BitVec 32) ValueCell!2854)) (size!6077 (_ BitVec 32))) )
))
(declare-datatypes ((array!12082 0))(
  ( (array!12083 (arr!5736 (Array (_ BitVec 32) (_ BitVec 64))) (size!6078 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3608 0))(
  ( (LongMapFixedSize!3609 (defaultEntry!4517 Int) (mask!10612 (_ BitVec 32)) (extraKeys!4254 (_ BitVec 32)) (zeroValue!4358 V!8173) (minValue!4358 V!8173) (_size!1853 (_ BitVec 32)) (_keys!6628 array!12082) (_values!4500 array!12080) (_vacant!1853 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3608)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22737 (= call!22740 (arrayContainsKey!0 (_keys!6628 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243896 () Bool)

(assert (=> b!243896 (= e!158283 (not call!22740))))

(declare-fun mapIsEmpty!10843 () Bool)

(declare-fun mapRes!10843 () Bool)

(assert (=> mapIsEmpty!10843 mapRes!10843))

(declare-fun res!119613 () Bool)

(declare-fun e!158282 () Bool)

(assert (=> start!23234 (=> (not res!119613) (not e!158282))))

(declare-fun valid!1405 (LongMapFixedSize!3608) Bool)

(assert (=> start!23234 (= res!119613 (valid!1405 thiss!1504))))

(assert (=> start!23234 e!158282))

(declare-fun e!158285 () Bool)

(assert (=> start!23234 e!158285))

(assert (=> start!23234 true))

(declare-fun b!243897 () Bool)

(declare-fun res!119605 () Bool)

(declare-fun e!158279 () Bool)

(assert (=> b!243897 (=> (not res!119605) (not e!158279))))

(declare-datatypes ((List!3672 0))(
  ( (Nil!3669) (Cons!3668 (h!4325 (_ BitVec 64)) (t!8687 List!3672)) )
))
(declare-fun arrayNoDuplicates!0 (array!12082 (_ BitVec 32) List!3672) Bool)

(assert (=> b!243897 (= res!119605 (arrayNoDuplicates!0 (_keys!6628 thiss!1504) #b00000000000000000000000000000000 Nil!3669))))

(declare-fun b!243898 () Bool)

(declare-fun res!119604 () Bool)

(assert (=> b!243898 (=> (not res!119604) (not e!158279))))

(declare-fun contains!1757 (List!3672 (_ BitVec 64)) Bool)

(assert (=> b!243898 (= res!119604 (not (contains!1757 Nil!3669 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!243899 () Bool)

(declare-fun res!119614 () Bool)

(assert (=> b!243899 (=> (not res!119614) (not e!158283))))

(declare-datatypes ((SeekEntryResult!1087 0))(
  ( (MissingZero!1087 (index!6518 (_ BitVec 32))) (Found!1087 (index!6519 (_ BitVec 32))) (Intermediate!1087 (undefined!1899 Bool) (index!6520 (_ BitVec 32)) (x!24355 (_ BitVec 32))) (Undefined!1087) (MissingVacant!1087 (index!6521 (_ BitVec 32))) )
))
(declare-fun lt!122334 () SeekEntryResult!1087)

(assert (=> b!243899 (= res!119614 (= (select (arr!5736 (_keys!6628 thiss!1504)) (index!6518 lt!122334)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243900 () Bool)

(declare-datatypes ((Unit!7526 0))(
  ( (Unit!7527) )
))
(declare-fun e!158295 () Unit!7526)

(declare-fun Unit!7528 () Unit!7526)

(assert (=> b!243900 (= e!158295 Unit!7528)))

(declare-fun b!243901 () Bool)

(declare-fun e!158280 () Bool)

(assert (=> b!243901 (= e!158280 (contains!1757 Nil!3669 key!932))))

(declare-fun mapNonEmpty!10843 () Bool)

(declare-fun tp!22822 () Bool)

(declare-fun e!158284 () Bool)

(assert (=> mapNonEmpty!10843 (= mapRes!10843 (and tp!22822 e!158284))))

(declare-fun mapRest!10843 () (Array (_ BitVec 32) ValueCell!2854))

(declare-fun mapValue!10843 () ValueCell!2854)

(declare-fun mapKey!10843 () (_ BitVec 32))

(assert (=> mapNonEmpty!10843 (= (arr!5735 (_values!4500 thiss!1504)) (store mapRest!10843 mapKey!10843 mapValue!10843))))

(declare-fun b!243902 () Bool)

(declare-fun e!158288 () Bool)

(assert (=> b!243902 (= e!158288 (not (contains!1757 Nil!3669 key!932)))))

(declare-fun b!243903 () Bool)

(declare-fun e!158286 () Unit!7526)

(declare-fun Unit!7529 () Unit!7526)

(assert (=> b!243903 (= e!158286 Unit!7529)))

(declare-fun lt!122337 () Unit!7526)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!365 (array!12082 array!12080 (_ BitVec 32) (_ BitVec 32) V!8173 V!8173 (_ BitVec 64) Int) Unit!7526)

(assert (=> b!243903 (= lt!122337 (lemmaInListMapThenSeekEntryOrOpenFindsIt!365 (_keys!6628 thiss!1504) (_values!4500 thiss!1504) (mask!10612 thiss!1504) (extraKeys!4254 thiss!1504) (zeroValue!4358 thiss!1504) (minValue!4358 thiss!1504) key!932 (defaultEntry!4517 thiss!1504)))))

(assert (=> b!243903 false))

(declare-fun b!243904 () Bool)

(declare-fun e!158290 () Bool)

(declare-fun e!158291 () Bool)

(assert (=> b!243904 (= e!158290 e!158291)))

(declare-fun res!119603 () Bool)

(assert (=> b!243904 (=> (not res!119603) (not e!158291))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!243904 (= res!119603 (inRange!0 index!297 (mask!10612 thiss!1504)))))

(declare-fun lt!122339 () Unit!7526)

(assert (=> b!243904 (= lt!122339 e!158286)))

(declare-fun c!40692 () Bool)

(declare-datatypes ((tuple2!4766 0))(
  ( (tuple2!4767 (_1!2393 (_ BitVec 64)) (_2!2393 V!8173)) )
))
(declare-datatypes ((List!3673 0))(
  ( (Nil!3670) (Cons!3669 (h!4326 tuple2!4766) (t!8688 List!3673)) )
))
(declare-datatypes ((ListLongMap!3693 0))(
  ( (ListLongMap!3694 (toList!1862 List!3673)) )
))
(declare-fun contains!1758 (ListLongMap!3693 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1385 (array!12082 array!12080 (_ BitVec 32) (_ BitVec 32) V!8173 V!8173 (_ BitVec 32) Int) ListLongMap!3693)

(assert (=> b!243904 (= c!40692 (contains!1758 (getCurrentListMap!1385 (_keys!6628 thiss!1504) (_values!4500 thiss!1504) (mask!10612 thiss!1504) (extraKeys!4254 thiss!1504) (zeroValue!4358 thiss!1504) (minValue!4358 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4517 thiss!1504)) key!932))))

(declare-fun b!243905 () Bool)

(declare-fun e!158294 () Bool)

(declare-fun tp_is_empty!6395 () Bool)

(assert (=> b!243905 (= e!158294 tp_is_empty!6395)))

(declare-fun b!243906 () Bool)

(declare-fun e!158296 () Bool)

(assert (=> b!243906 (= e!158296 (and e!158294 mapRes!10843))))

(declare-fun condMapEmpty!10843 () Bool)

(declare-fun mapDefault!10843 () ValueCell!2854)


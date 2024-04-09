; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22922 () Bool)

(assert start!22922)

(declare-fun b!238734 () Bool)

(declare-fun b_free!6413 () Bool)

(declare-fun b_next!6413 () Bool)

(assert (=> b!238734 (= b_free!6413 (not b_next!6413))))

(declare-fun tp!22442 () Bool)

(declare-fun b_and!13397 () Bool)

(assert (=> b!238734 (= tp!22442 b_and!13397)))

(declare-fun b!238717 () Bool)

(declare-datatypes ((Unit!7322 0))(
  ( (Unit!7323) )
))
(declare-fun e!155000 () Unit!7322)

(declare-fun Unit!7324 () Unit!7322)

(assert (=> b!238717 (= e!155000 Unit!7324)))

(declare-fun lt!120676 () Unit!7322)

(declare-datatypes ((V!8013 0))(
  ( (V!8014 (val!3182 Int)) )
))
(declare-datatypes ((ValueCell!2794 0))(
  ( (ValueCellFull!2794 (v!5216 V!8013)) (EmptyCell!2794) )
))
(declare-datatypes ((array!11828 0))(
  ( (array!11829 (arr!5615 (Array (_ BitVec 32) ValueCell!2794)) (size!5956 (_ BitVec 32))) )
))
(declare-datatypes ((array!11830 0))(
  ( (array!11831 (arr!5616 (Array (_ BitVec 32) (_ BitVec 64))) (size!5957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3488 0))(
  ( (LongMapFixedSize!3489 (defaultEntry!4429 Int) (mask!10467 (_ BitVec 32)) (extraKeys!4166 (_ BitVec 32)) (zeroValue!4270 V!8013) (minValue!4270 V!8013) (_size!1793 (_ BitVec 32)) (_keys!6531 array!11830) (_values!4412 array!11828) (_vacant!1793 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3488)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!320 (array!11830 array!11828 (_ BitVec 32) (_ BitVec 32) V!8013 V!8013 (_ BitVec 64) Int) Unit!7322)

(assert (=> b!238717 (= lt!120676 (lemmaInListMapThenSeekEntryOrOpenFindsIt!320 (_keys!6531 thiss!1504) (_values!4412 thiss!1504) (mask!10467 thiss!1504) (extraKeys!4166 thiss!1504) (zeroValue!4270 thiss!1504) (minValue!4270 thiss!1504) key!932 (defaultEntry!4429 thiss!1504)))))

(assert (=> b!238717 false))

(declare-fun b!238718 () Bool)

(declare-fun e!155008 () Bool)

(declare-datatypes ((SeekEntryResult!1032 0))(
  ( (MissingZero!1032 (index!6298 (_ BitVec 32))) (Found!1032 (index!6299 (_ BitVec 32))) (Intermediate!1032 (undefined!1844 Bool) (index!6300 (_ BitVec 32)) (x!24072 (_ BitVec 32))) (Undefined!1032) (MissingVacant!1032 (index!6301 (_ BitVec 32))) )
))
(declare-fun lt!120678 () SeekEntryResult!1032)

(assert (=> b!238718 (= e!155008 (is-Undefined!1032 lt!120678))))

(declare-fun b!238719 () Bool)

(declare-fun e!155012 () Bool)

(declare-fun e!155009 () Bool)

(assert (=> b!238719 (= e!155012 e!155009)))

(declare-fun res!117008 () Bool)

(assert (=> b!238719 (=> (not res!117008) (not e!155009))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!238719 (= res!117008 (inRange!0 index!297 (mask!10467 thiss!1504)))))

(declare-fun lt!120679 () Unit!7322)

(assert (=> b!238719 (= lt!120679 e!155000)))

(declare-fun c!39791 () Bool)

(declare-datatypes ((tuple2!4686 0))(
  ( (tuple2!4687 (_1!2353 (_ BitVec 64)) (_2!2353 V!8013)) )
))
(declare-datatypes ((List!3607 0))(
  ( (Nil!3604) (Cons!3603 (h!4259 tuple2!4686) (t!8610 List!3607)) )
))
(declare-datatypes ((ListLongMap!3613 0))(
  ( (ListLongMap!3614 (toList!1822 List!3607)) )
))
(declare-fun contains!1704 (ListLongMap!3613 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1345 (array!11830 array!11828 (_ BitVec 32) (_ BitVec 32) V!8013 V!8013 (_ BitVec 32) Int) ListLongMap!3613)

(assert (=> b!238719 (= c!39791 (contains!1704 (getCurrentListMap!1345 (_keys!6531 thiss!1504) (_values!4412 thiss!1504) (mask!10467 thiss!1504) (extraKeys!4166 thiss!1504) (zeroValue!4270 thiss!1504) (minValue!4270 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4429 thiss!1504)) key!932))))

(declare-fun b!238720 () Bool)

(declare-fun e!155005 () Bool)

(declare-fun call!22197 () Bool)

(assert (=> b!238720 (= e!155005 (not call!22197))))

(declare-fun b!238721 () Bool)

(declare-fun res!117003 () Bool)

(assert (=> b!238721 (= res!117003 (= (select (arr!5616 (_keys!6531 thiss!1504)) (index!6301 lt!120678)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155004 () Bool)

(assert (=> b!238721 (=> (not res!117003) (not e!155004))))

(declare-fun b!238722 () Bool)

(declare-fun res!117011 () Bool)

(assert (=> b!238722 (=> (not res!117011) (not e!155009))))

(declare-fun arrayContainsKey!0 (array!11830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!238722 (= res!117011 (arrayContainsKey!0 (_keys!6531 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238723 () Bool)

(declare-fun res!117004 () Bool)

(assert (=> b!238723 (=> (not res!117004) (not e!155005))))

(assert (=> b!238723 (= res!117004 (= (select (arr!5616 (_keys!6531 thiss!1504)) (index!6298 lt!120678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!238724 () Bool)

(declare-fun c!39793 () Bool)

(assert (=> b!238724 (= c!39793 (is-MissingVacant!1032 lt!120678))))

(declare-fun e!155006 () Bool)

(assert (=> b!238724 (= e!155006 e!155008)))

(declare-fun b!238725 () Bool)

(declare-fun e!155007 () Bool)

(declare-fun tp_is_empty!6275 () Bool)

(assert (=> b!238725 (= e!155007 tp_is_empty!6275)))

(declare-fun call!22198 () Bool)

(declare-fun bm!22194 () Bool)

(declare-fun c!39792 () Bool)

(assert (=> bm!22194 (= call!22198 (inRange!0 (ite c!39792 (index!6298 lt!120678) (index!6301 lt!120678)) (mask!10467 thiss!1504)))))

(declare-fun res!117009 () Bool)

(declare-fun e!155001 () Bool)

(assert (=> start!22922 (=> (not res!117009) (not e!155001))))

(declare-fun valid!1368 (LongMapFixedSize!3488) Bool)

(assert (=> start!22922 (= res!117009 (valid!1368 thiss!1504))))

(assert (=> start!22922 e!155001))

(declare-fun e!155003 () Bool)

(assert (=> start!22922 e!155003))

(assert (=> start!22922 true))

(declare-fun mapIsEmpty!10644 () Bool)

(declare-fun mapRes!10644 () Bool)

(assert (=> mapIsEmpty!10644 mapRes!10644))

(declare-fun b!238726 () Bool)

(declare-fun res!117007 () Bool)

(assert (=> b!238726 (=> (not res!117007) (not e!155005))))

(assert (=> b!238726 (= res!117007 call!22198)))

(assert (=> b!238726 (= e!155006 e!155005)))

(declare-fun b!238727 () Bool)

(declare-fun res!117005 () Bool)

(assert (=> b!238727 (=> (not res!117005) (not e!155001))))

(assert (=> b!238727 (= res!117005 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!238728 () Bool)

(assert (=> b!238728 (= e!155008 e!155004)))

(declare-fun res!117006 () Bool)

(assert (=> b!238728 (= res!117006 call!22198)))

(assert (=> b!238728 (=> (not res!117006) (not e!155004))))

(declare-fun mapNonEmpty!10644 () Bool)

(declare-fun tp!22443 () Bool)

(declare-fun e!155002 () Bool)

(assert (=> mapNonEmpty!10644 (= mapRes!10644 (and tp!22443 e!155002))))

(declare-fun mapKey!10644 () (_ BitVec 32))

(declare-fun mapValue!10644 () ValueCell!2794)

(declare-fun mapRest!10644 () (Array (_ BitVec 32) ValueCell!2794))

(assert (=> mapNonEmpty!10644 (= (arr!5615 (_values!4412 thiss!1504)) (store mapRest!10644 mapKey!10644 mapValue!10644))))

(declare-fun b!238729 () Bool)

(assert (=> b!238729 (= e!155004 (not call!22197))))

(declare-fun b!238730 () Bool)

(declare-fun e!155010 () Bool)

(assert (=> b!238730 (= e!155010 (and e!155007 mapRes!10644))))

(declare-fun condMapEmpty!10644 () Bool)

(declare-fun mapDefault!10644 () ValueCell!2794)


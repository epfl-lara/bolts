; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24284 () Bool)

(assert start!24284)

(declare-fun b!253891 () Bool)

(declare-fun b_free!6673 () Bool)

(declare-fun b_next!6673 () Bool)

(assert (=> b!253891 (= b_free!6673 (not b_next!6673))))

(declare-fun tp!23306 () Bool)

(declare-fun b_and!13733 () Bool)

(assert (=> b!253891 (= tp!23306 b_and!13733)))

(declare-fun b!253884 () Bool)

(declare-fun res!124300 () Bool)

(declare-fun e!164597 () Bool)

(assert (=> b!253884 (=> res!124300 e!164597)))

(declare-datatypes ((V!8361 0))(
  ( (V!8362 (val!3312 Int)) )
))
(declare-datatypes ((ValueCell!2924 0))(
  ( (ValueCellFull!2924 (v!5382 V!8361)) (EmptyCell!2924) )
))
(declare-datatypes ((array!12400 0))(
  ( (array!12401 (arr!5875 (Array (_ BitVec 32) ValueCell!2924)) (size!6222 (_ BitVec 32))) )
))
(declare-datatypes ((array!12402 0))(
  ( (array!12403 (arr!5876 (Array (_ BitVec 32) (_ BitVec 64))) (size!6223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3748 0))(
  ( (LongMapFixedSize!3749 (defaultEntry!4687 Int) (mask!10929 (_ BitVec 32)) (extraKeys!4424 (_ BitVec 32)) (zeroValue!4528 V!8361) (minValue!4528 V!8361) (_size!1923 (_ BitVec 32)) (_keys!6841 array!12402) (_values!4670 array!12400) (_vacant!1923 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3748)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12402 (_ BitVec 32)) Bool)

(assert (=> b!253884 (= res!124300 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6841 thiss!1504) (mask!10929 thiss!1504))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun b!253885 () Bool)

(declare-fun lt!127289 () Bool)

(assert (=> b!253885 (= e!164597 (or (and (not (= (select (arr!5876 (_keys!6841 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5876 (_keys!6841 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000))) (not lt!127289)))))

(declare-fun b!253886 () Bool)

(declare-fun e!164586 () Bool)

(declare-fun e!164593 () Bool)

(assert (=> b!253886 (= e!164586 e!164593)))

(declare-fun res!124298 () Bool)

(declare-fun call!23962 () Bool)

(assert (=> b!253886 (= res!124298 call!23962)))

(assert (=> b!253886 (=> (not res!124298) (not e!164593))))

(declare-fun b!253887 () Bool)

(declare-datatypes ((Unit!7852 0))(
  ( (Unit!7853) )
))
(declare-fun e!164596 () Unit!7852)

(declare-fun Unit!7854 () Unit!7852)

(assert (=> b!253887 (= e!164596 Unit!7854)))

(declare-fun lt!127287 () Unit!7852)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!412 (array!12402 array!12400 (_ BitVec 32) (_ BitVec 32) V!8361 V!8361 (_ BitVec 64) Int) Unit!7852)

(assert (=> b!253887 (= lt!127287 (lemmaInListMapThenSeekEntryOrOpenFindsIt!412 (_keys!6841 thiss!1504) (_values!4670 thiss!1504) (mask!10929 thiss!1504) (extraKeys!4424 thiss!1504) (zeroValue!4528 thiss!1504) (minValue!4528 thiss!1504) key!932 (defaultEntry!4687 thiss!1504)))))

(assert (=> b!253887 false))

(declare-fun mapNonEmpty!11118 () Bool)

(declare-fun mapRes!11118 () Bool)

(declare-fun tp!23307 () Bool)

(declare-fun e!164587 () Bool)

(assert (=> mapNonEmpty!11118 (= mapRes!11118 (and tp!23307 e!164587))))

(declare-fun mapKey!11118 () (_ BitVec 32))

(declare-fun mapRest!11118 () (Array (_ BitVec 32) ValueCell!2924))

(declare-fun mapValue!11118 () ValueCell!2924)

(assert (=> mapNonEmpty!11118 (= (arr!5875 (_values!4670 thiss!1504)) (store mapRest!11118 mapKey!11118 mapValue!11118))))

(declare-fun b!253888 () Bool)

(declare-fun e!164584 () Bool)

(declare-fun tp_is_empty!6535 () Bool)

(assert (=> b!253888 (= e!164584 tp_is_empty!6535)))

(declare-fun b!253889 () Bool)

(declare-fun c!42811 () Bool)

(declare-datatypes ((SeekEntryResult!1153 0))(
  ( (MissingZero!1153 (index!6782 (_ BitVec 32))) (Found!1153 (index!6783 (_ BitVec 32))) (Intermediate!1153 (undefined!1965 Bool) (index!6784 (_ BitVec 32)) (x!24853 (_ BitVec 32))) (Undefined!1153) (MissingVacant!1153 (index!6785 (_ BitVec 32))) )
))
(declare-fun lt!127283 () SeekEntryResult!1153)

(assert (=> b!253889 (= c!42811 (is-MissingVacant!1153 lt!127283))))

(declare-fun e!164588 () Bool)

(assert (=> b!253889 (= e!164588 e!164586)))

(declare-fun b!253890 () Bool)

(declare-fun call!23963 () Bool)

(assert (=> b!253890 (= e!164593 (not call!23963))))

(declare-fun e!164598 () Bool)

(declare-fun e!164595 () Bool)

(declare-fun array_inv!3875 (array!12402) Bool)

(declare-fun array_inv!3876 (array!12400) Bool)

(assert (=> b!253891 (= e!164598 (and tp!23306 tp_is_empty!6535 (array_inv!3875 (_keys!6841 thiss!1504)) (array_inv!3876 (_values!4670 thiss!1504)) e!164595))))

(declare-fun b!253892 () Bool)

(declare-fun e!164592 () Bool)

(declare-fun e!164594 () Bool)

(assert (=> b!253892 (= e!164592 e!164594)))

(declare-fun res!124302 () Bool)

(assert (=> b!253892 (=> (not res!124302) (not e!164594))))

(assert (=> b!253892 (= res!124302 (or (= lt!127283 (MissingZero!1153 index!297)) (= lt!127283 (MissingVacant!1153 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12402 (_ BitVec 32)) SeekEntryResult!1153)

(assert (=> b!253892 (= lt!127283 (seekEntryOrOpen!0 key!932 (_keys!6841 thiss!1504) (mask!10929 thiss!1504)))))

(declare-fun c!42809 () Bool)

(declare-fun bm!23959 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23959 (= call!23962 (inRange!0 (ite c!42809 (index!6782 lt!127283) (index!6785 lt!127283)) (mask!10929 thiss!1504)))))

(declare-fun b!253894 () Bool)

(declare-fun res!124309 () Bool)

(assert (=> b!253894 (=> res!124309 e!164597)))

(declare-datatypes ((List!3776 0))(
  ( (Nil!3773) (Cons!3772 (h!4434 (_ BitVec 64)) (t!8831 List!3776)) )
))
(declare-fun arrayNoDuplicates!0 (array!12402 (_ BitVec 32) List!3776) Bool)

(assert (=> b!253894 (= res!124309 (not (arrayNoDuplicates!0 (_keys!6841 thiss!1504) #b00000000000000000000000000000000 Nil!3773)))))

(declare-fun b!253895 () Bool)

(declare-fun res!124307 () Bool)

(assert (=> b!253895 (=> res!124307 e!164597)))

(assert (=> b!253895 (= res!124307 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6223 (_keys!6841 thiss!1504)))))))

(declare-fun b!253896 () Bool)

(declare-fun res!124304 () Bool)

(assert (=> b!253896 (= res!124304 (= (select (arr!5876 (_keys!6841 thiss!1504)) (index!6785 lt!127283)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253896 (=> (not res!124304) (not e!164593))))

(declare-fun mapIsEmpty!11118 () Bool)

(assert (=> mapIsEmpty!11118 mapRes!11118))

(declare-fun b!253897 () Bool)

(declare-fun e!164591 () Unit!7852)

(declare-fun Unit!7855 () Unit!7852)

(assert (=> b!253897 (= e!164591 Unit!7855)))

(declare-fun lt!127281 () Unit!7852)

(declare-fun lemmaArrayContainsKeyThenInListMap!217 (array!12402 array!12400 (_ BitVec 32) (_ BitVec 32) V!8361 V!8361 (_ BitVec 64) (_ BitVec 32) Int) Unit!7852)

(assert (=> b!253897 (= lt!127281 (lemmaArrayContainsKeyThenInListMap!217 (_keys!6841 thiss!1504) (_values!4670 thiss!1504) (mask!10929 thiss!1504) (extraKeys!4424 thiss!1504) (zeroValue!4528 thiss!1504) (minValue!4528 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4687 thiss!1504)))))

(assert (=> b!253897 false))

(declare-fun b!253898 () Bool)

(assert (=> b!253898 (= e!164586 (is-Undefined!1153 lt!127283))))

(declare-fun b!253899 () Bool)

(declare-fun res!124310 () Bool)

(declare-fun e!164589 () Bool)

(assert (=> b!253899 (=> (not res!124310) (not e!164589))))

(assert (=> b!253899 (= res!124310 call!23962)))

(assert (=> b!253899 (= e!164588 e!164589)))

(declare-fun b!253900 () Bool)

(assert (=> b!253900 (= e!164595 (and e!164584 mapRes!11118))))

(declare-fun condMapEmpty!11118 () Bool)

(declare-fun mapDefault!11118 () ValueCell!2924)


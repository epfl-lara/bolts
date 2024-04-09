; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21910 () Bool)

(assert start!21910)

(declare-fun b!221869 () Bool)

(declare-fun b_free!5965 () Bool)

(declare-fun b_next!5965 () Bool)

(assert (=> b!221869 (= b_free!5965 (not b_next!5965))))

(declare-fun tp!21037 () Bool)

(declare-fun b_and!12881 () Bool)

(assert (=> b!221869 (= tp!21037 b_and!12881)))

(declare-fun b!221864 () Bool)

(declare-fun e!144197 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((List!3314 0))(
  ( (Nil!3311) (Cons!3310 (h!3958 (_ BitVec 64)) (t!8281 List!3314)) )
))
(declare-fun contains!1513 (List!3314 (_ BitVec 64)) Bool)

(assert (=> b!221864 (= e!144197 (contains!1513 Nil!3311 key!932))))

(declare-fun b!221865 () Bool)

(declare-fun e!144198 () Bool)

(declare-fun tp_is_empty!5827 () Bool)

(assert (=> b!221865 (= e!144198 tp_is_empty!5827)))

(declare-fun b!221866 () Bool)

(declare-fun e!144199 () Bool)

(declare-fun call!20728 () Bool)

(assert (=> b!221866 (= e!144199 (not call!20728))))

(declare-fun b!221867 () Bool)

(declare-fun res!108905 () Bool)

(assert (=> b!221867 (=> (not res!108905) (not e!144199))))

(declare-datatypes ((V!7417 0))(
  ( (V!7418 (val!2958 Int)) )
))
(declare-datatypes ((ValueCell!2570 0))(
  ( (ValueCellFull!2570 (v!4974 V!7417)) (EmptyCell!2570) )
))
(declare-datatypes ((array!10896 0))(
  ( (array!10897 (arr!5167 (Array (_ BitVec 32) ValueCell!2570)) (size!5500 (_ BitVec 32))) )
))
(declare-datatypes ((array!10898 0))(
  ( (array!10899 (arr!5168 (Array (_ BitVec 32) (_ BitVec 64))) (size!5501 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3040 0))(
  ( (LongMapFixedSize!3041 (defaultEntry!4179 Int) (mask!9995 (_ BitVec 32)) (extraKeys!3916 (_ BitVec 32)) (zeroValue!4020 V!7417) (minValue!4020 V!7417) (_size!1569 (_ BitVec 32)) (_keys!6233 array!10898) (_values!4162 array!10896) (_vacant!1569 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3040)

(declare-datatypes ((SeekEntryResult!841 0))(
  ( (MissingZero!841 (index!5534 (_ BitVec 32))) (Found!841 (index!5535 (_ BitVec 32))) (Intermediate!841 (undefined!1653 Bool) (index!5536 (_ BitVec 32)) (x!23045 (_ BitVec 32))) (Undefined!841) (MissingVacant!841 (index!5537 (_ BitVec 32))) )
))
(declare-fun lt!112544 () SeekEntryResult!841)

(assert (=> b!221867 (= res!108905 (= (select (arr!5168 (_keys!6233 thiss!1504)) (index!5534 lt!112544)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!221868 () Bool)

(declare-datatypes ((Unit!6635 0))(
  ( (Unit!6636) )
))
(declare-fun e!144206 () Unit!6635)

(declare-fun Unit!6637 () Unit!6635)

(assert (=> b!221868 (= e!144206 Unit!6637)))

(declare-fun lt!112542 () Unit!6635)

(declare-fun lemmaArrayContainsKeyThenInListMap!55 (array!10898 array!10896 (_ BitVec 32) (_ BitVec 32) V!7417 V!7417 (_ BitVec 64) (_ BitVec 32) Int) Unit!6635)

(assert (=> b!221868 (= lt!112542 (lemmaArrayContainsKeyThenInListMap!55 (_keys!6233 thiss!1504) (_values!4162 thiss!1504) (mask!9995 thiss!1504) (extraKeys!3916 thiss!1504) (zeroValue!4020 thiss!1504) (minValue!4020 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4179 thiss!1504)))))

(assert (=> b!221868 false))

(declare-fun e!144204 () Bool)

(declare-fun e!144200 () Bool)

(declare-fun array_inv!3411 (array!10898) Bool)

(declare-fun array_inv!3412 (array!10896) Bool)

(assert (=> b!221869 (= e!144200 (and tp!21037 tp_is_empty!5827 (array_inv!3411 (_keys!6233 thiss!1504)) (array_inv!3412 (_values!4162 thiss!1504)) e!144204))))

(declare-fun b!221870 () Bool)

(declare-fun e!144195 () Bool)

(assert (=> b!221870 (= e!144195 (not call!20728))))

(declare-fun b!221871 () Bool)

(declare-fun res!108898 () Bool)

(declare-fun e!144202 () Bool)

(assert (=> b!221871 (=> (not res!108898) (not e!144202))))

(assert (=> b!221871 (= res!108898 (not (contains!1513 Nil!3311 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!221872 () Bool)

(declare-fun e!144205 () Bool)

(declare-fun e!144196 () Bool)

(assert (=> b!221872 (= e!144205 e!144196)))

(declare-fun res!108896 () Bool)

(assert (=> b!221872 (=> (not res!108896) (not e!144196))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221872 (= res!108896 (or (= lt!112544 (MissingZero!841 index!297)) (= lt!112544 (MissingVacant!841 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10898 (_ BitVec 32)) SeekEntryResult!841)

(assert (=> b!221872 (= lt!112544 (seekEntryOrOpen!0 key!932 (_keys!6233 thiss!1504) (mask!9995 thiss!1504)))))

(declare-fun mapIsEmpty!9910 () Bool)

(declare-fun mapRes!9910 () Bool)

(assert (=> mapIsEmpty!9910 mapRes!9910))

(declare-fun c!36866 () Bool)

(declare-fun bm!20724 () Bool)

(declare-fun call!20727 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20724 (= call!20727 (inRange!0 (ite c!36866 (index!5534 lt!112544) (index!5537 lt!112544)) (mask!9995 thiss!1504)))))

(declare-fun b!221873 () Bool)

(declare-fun e!144191 () Bool)

(assert (=> b!221873 (= e!144196 e!144191)))

(declare-fun res!108902 () Bool)

(assert (=> b!221873 (=> (not res!108902) (not e!144191))))

(assert (=> b!221873 (= res!108902 (inRange!0 index!297 (mask!9995 thiss!1504)))))

(declare-fun lt!112548 () Unit!6635)

(declare-fun e!144203 () Unit!6635)

(assert (=> b!221873 (= lt!112548 e!144203)))

(declare-fun c!36868 () Bool)

(declare-datatypes ((tuple2!4388 0))(
  ( (tuple2!4389 (_1!2204 (_ BitVec 64)) (_2!2204 V!7417)) )
))
(declare-datatypes ((List!3315 0))(
  ( (Nil!3312) (Cons!3311 (h!3959 tuple2!4388) (t!8282 List!3315)) )
))
(declare-datatypes ((ListLongMap!3315 0))(
  ( (ListLongMap!3316 (toList!1673 List!3315)) )
))
(declare-fun contains!1514 (ListLongMap!3315 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1196 (array!10898 array!10896 (_ BitVec 32) (_ BitVec 32) V!7417 V!7417 (_ BitVec 32) Int) ListLongMap!3315)

(assert (=> b!221873 (= c!36868 (contains!1514 (getCurrentListMap!1196 (_keys!6233 thiss!1504) (_values!4162 thiss!1504) (mask!9995 thiss!1504) (extraKeys!3916 thiss!1504) (zeroValue!4020 thiss!1504) (minValue!4020 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4179 thiss!1504)) key!932))))

(declare-fun b!221874 () Bool)

(declare-fun e!144207 () Bool)

(assert (=> b!221874 (= e!144207 tp_is_empty!5827)))

(declare-fun mapNonEmpty!9910 () Bool)

(declare-fun tp!21036 () Bool)

(assert (=> mapNonEmpty!9910 (= mapRes!9910 (and tp!21036 e!144198))))

(declare-fun mapValue!9910 () ValueCell!2570)

(declare-fun mapKey!9910 () (_ BitVec 32))

(declare-fun mapRest!9910 () (Array (_ BitVec 32) ValueCell!2570))

(assert (=> mapNonEmpty!9910 (= (arr!5167 (_values!4162 thiss!1504)) (store mapRest!9910 mapKey!9910 mapValue!9910))))

(declare-fun b!221875 () Bool)

(declare-fun Unit!6638 () Unit!6635)

(assert (=> b!221875 (= e!144203 Unit!6638)))

(declare-fun lt!112543 () Unit!6635)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!221 (array!10898 array!10896 (_ BitVec 32) (_ BitVec 32) V!7417 V!7417 (_ BitVec 64) Int) Unit!6635)

(assert (=> b!221875 (= lt!112543 (lemmaInListMapThenSeekEntryOrOpenFindsIt!221 (_keys!6233 thiss!1504) (_values!4162 thiss!1504) (mask!9995 thiss!1504) (extraKeys!3916 thiss!1504) (zeroValue!4020 thiss!1504) (minValue!4020 thiss!1504) key!932 (defaultEntry!4179 thiss!1504)))))

(assert (=> b!221875 false))

(declare-fun b!221876 () Bool)

(declare-fun e!144193 () Bool)

(assert (=> b!221876 (= e!144193 (is-Undefined!841 lt!112544))))

(declare-fun b!221877 () Bool)

(declare-fun Unit!6639 () Unit!6635)

(assert (=> b!221877 (= e!144206 Unit!6639)))

(declare-fun b!221878 () Bool)

(declare-fun e!144208 () Bool)

(declare-fun e!144192 () Bool)

(assert (=> b!221878 (= e!144208 e!144192)))

(declare-fun res!108906 () Bool)

(assert (=> b!221878 (=> (not res!108906) (not e!144192))))

(assert (=> b!221878 (= res!108906 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!221879 () Bool)

(assert (=> b!221879 (= e!144193 e!144195)))

(declare-fun res!108907 () Bool)

(assert (=> b!221879 (= res!108907 call!20727)))

(assert (=> b!221879 (=> (not res!108907) (not e!144195))))

(declare-fun b!221880 () Bool)

(declare-fun res!108894 () Bool)

(assert (=> b!221880 (=> (not res!108894) (not e!144199))))

(assert (=> b!221880 (= res!108894 call!20727)))

(declare-fun e!144201 () Bool)

(assert (=> b!221880 (= e!144201 e!144199)))

(declare-fun b!221881 () Bool)

(declare-fun res!108899 () Bool)

(assert (=> b!221881 (=> (not res!108899) (not e!144202))))

(assert (=> b!221881 (= res!108899 e!144208)))

(declare-fun res!108893 () Bool)

(assert (=> b!221881 (=> res!108893 e!144208)))

(assert (=> b!221881 (= res!108893 e!144197)))

(declare-fun res!108897 () Bool)

(assert (=> b!221881 (=> (not res!108897) (not e!144197))))

(assert (=> b!221881 (= res!108897 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun bm!20725 () Bool)

(declare-fun arrayContainsKey!0 (array!10898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20725 (= call!20728 (arrayContainsKey!0 (_keys!6233 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221882 () Bool)

(assert (=> b!221882 (= e!144191 e!144202)))

(declare-fun res!108903 () Bool)

(assert (=> b!221882 (=> (not res!108903) (not e!144202))))

(assert (=> b!221882 (= res!108903 (and (bvslt (size!5501 (_keys!6233 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5501 (_keys!6233 thiss!1504)))))))

(declare-fun lt!112547 () Unit!6635)

(assert (=> b!221882 (= lt!112547 e!144206)))

(declare-fun c!36869 () Bool)

(assert (=> b!221882 (= c!36869 (arrayContainsKey!0 (_keys!6233 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221883 () Bool)

(declare-fun res!108904 () Bool)

(assert (=> b!221883 (=> (not res!108904) (not e!144205))))

(assert (=> b!221883 (= res!108904 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221884 () Bool)

(declare-fun res!108900 () Bool)

(assert (=> b!221884 (=> (not res!108900) (not e!144202))))

(declare-fun noDuplicate!66 (List!3314) Bool)

(assert (=> b!221884 (= res!108900 (noDuplicate!66 Nil!3311))))

(declare-fun b!221885 () Bool)

(assert (=> b!221885 (= e!144204 (and e!144207 mapRes!9910))))

(declare-fun condMapEmpty!9910 () Bool)

(declare-fun mapDefault!9910 () ValueCell!2570)


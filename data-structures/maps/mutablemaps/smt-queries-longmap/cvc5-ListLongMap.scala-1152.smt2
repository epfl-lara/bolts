; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24234 () Bool)

(assert start!24234)

(declare-fun b!253212 () Bool)

(declare-fun b_free!6661 () Bool)

(declare-fun b_next!6661 () Bool)

(assert (=> b!253212 (= b_free!6661 (not b_next!6661))))

(declare-fun tp!23268 () Bool)

(declare-fun b_and!13719 () Bool)

(assert (=> b!253212 (= tp!23268 b_and!13719)))

(declare-fun call!23887 () Bool)

(declare-fun c!42685 () Bool)

(declare-datatypes ((V!8345 0))(
  ( (V!8346 (val!3306 Int)) )
))
(declare-datatypes ((ValueCell!2918 0))(
  ( (ValueCellFull!2918 (v!5375 V!8345)) (EmptyCell!2918) )
))
(declare-datatypes ((array!12374 0))(
  ( (array!12375 (arr!5863 (Array (_ BitVec 32) ValueCell!2918)) (size!6210 (_ BitVec 32))) )
))
(declare-datatypes ((array!12376 0))(
  ( (array!12377 (arr!5864 (Array (_ BitVec 32) (_ BitVec 64))) (size!6211 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3736 0))(
  ( (LongMapFixedSize!3737 (defaultEntry!4677 Int) (mask!10910 (_ BitVec 32)) (extraKeys!4414 (_ BitVec 32)) (zeroValue!4518 V!8345) (minValue!4518 V!8345) (_size!1917 (_ BitVec 32)) (_keys!6829 array!12376) (_values!4660 array!12374) (_vacant!1917 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3736)

(declare-fun bm!23884 () Bool)

(declare-datatypes ((SeekEntryResult!1148 0))(
  ( (MissingZero!1148 (index!6762 (_ BitVec 32))) (Found!1148 (index!6763 (_ BitVec 32))) (Intermediate!1148 (undefined!1960 Bool) (index!6764 (_ BitVec 32)) (x!24822 (_ BitVec 32))) (Undefined!1148) (MissingVacant!1148 (index!6765 (_ BitVec 32))) )
))
(declare-fun lt!126979 () SeekEntryResult!1148)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23884 (= call!23887 (inRange!0 (ite c!42685 (index!6762 lt!126979) (index!6765 lt!126979)) (mask!10910 thiss!1504)))))

(declare-fun b!253208 () Bool)

(declare-fun e!164182 () Bool)

(declare-fun call!23888 () Bool)

(assert (=> b!253208 (= e!164182 (not call!23888))))

(declare-fun b!253209 () Bool)

(declare-fun e!164189 () Bool)

(declare-fun e!164194 () Bool)

(assert (=> b!253209 (= e!164189 e!164194)))

(declare-fun res!123964 () Bool)

(assert (=> b!253209 (=> (not res!123964) (not e!164194))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!253209 (= res!123964 (or (= lt!126979 (MissingZero!1148 index!297)) (= lt!126979 (MissingVacant!1148 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12376 (_ BitVec 32)) SeekEntryResult!1148)

(assert (=> b!253209 (= lt!126979 (seekEntryOrOpen!0 key!932 (_keys!6829 thiss!1504) (mask!10910 thiss!1504)))))

(declare-fun b!253210 () Bool)

(declare-fun res!123953 () Bool)

(declare-fun e!164195 () Bool)

(assert (=> b!253210 (=> res!123953 e!164195)))

(declare-datatypes ((List!3770 0))(
  ( (Nil!3767) (Cons!3766 (h!4428 (_ BitVec 64)) (t!8823 List!3770)) )
))
(declare-fun arrayNoDuplicates!0 (array!12376 (_ BitVec 32) List!3770) Bool)

(assert (=> b!253210 (= res!123953 (not (arrayNoDuplicates!0 (_keys!6829 thiss!1504) #b00000000000000000000000000000000 Nil!3767)))))

(declare-fun bm!23885 () Bool)

(declare-fun arrayContainsKey!0 (array!12376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23885 (= call!23888 (arrayContainsKey!0 (_keys!6829 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253211 () Bool)

(declare-fun res!123962 () Bool)

(assert (=> b!253211 (=> res!123962 e!164195)))

(assert (=> b!253211 (= res!123962 (or (not (= (size!6210 (_values!4660 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10910 thiss!1504)))) (not (= (size!6211 (_keys!6829 thiss!1504)) (size!6210 (_values!4660 thiss!1504)))) (bvslt (mask!10910 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4414 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4414 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun e!164196 () Bool)

(declare-fun e!164193 () Bool)

(declare-fun tp_is_empty!6523 () Bool)

(declare-fun array_inv!3869 (array!12376) Bool)

(declare-fun array_inv!3870 (array!12374) Bool)

(assert (=> b!253212 (= e!164193 (and tp!23268 tp_is_empty!6523 (array_inv!3869 (_keys!6829 thiss!1504)) (array_inv!3870 (_values!4660 thiss!1504)) e!164196))))

(declare-fun b!253213 () Bool)

(declare-fun res!123954 () Bool)

(assert (=> b!253213 (= res!123954 (= (select (arr!5864 (_keys!6829 thiss!1504)) (index!6765 lt!126979)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253213 (=> (not res!123954) (not e!164182))))

(declare-fun mapIsEmpty!11097 () Bool)

(declare-fun mapRes!11097 () Bool)

(assert (=> mapIsEmpty!11097 mapRes!11097))

(declare-fun b!253214 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!253214 (= e!164195 (validKeyInArray!0 key!932))))

(declare-fun b!253215 () Bool)

(declare-fun e!164186 () Bool)

(assert (=> b!253215 (= e!164196 (and e!164186 mapRes!11097))))

(declare-fun condMapEmpty!11097 () Bool)

(declare-fun mapDefault!11097 () ValueCell!2918)


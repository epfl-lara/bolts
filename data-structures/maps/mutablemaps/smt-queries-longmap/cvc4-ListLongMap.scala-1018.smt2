; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21724 () Bool)

(assert start!21724)

(declare-fun b!218178 () Bool)

(declare-fun b_free!5861 () Bool)

(declare-fun b_next!5861 () Bool)

(assert (=> b!218178 (= b_free!5861 (not b_next!5861))))

(declare-fun tp!20718 () Bool)

(declare-fun b_and!12769 () Bool)

(assert (=> b!218178 (= tp!20718 b_and!12769)))

(declare-fun b!218174 () Bool)

(declare-fun e!141932 () Bool)

(declare-fun e!141934 () Bool)

(assert (=> b!218174 (= e!141932 e!141934)))

(declare-fun res!106965 () Bool)

(assert (=> b!218174 (=> (not res!106965) (not e!141934))))

(declare-datatypes ((SeekEntryResult!793 0))(
  ( (MissingZero!793 (index!5342 (_ BitVec 32))) (Found!793 (index!5343 (_ BitVec 32))) (Intermediate!793 (undefined!1605 Bool) (index!5344 (_ BitVec 32)) (x!22825 (_ BitVec 32))) (Undefined!793) (MissingVacant!793 (index!5345 (_ BitVec 32))) )
))
(declare-fun lt!111511 () SeekEntryResult!793)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218174 (= res!106965 (or (= lt!111511 (MissingZero!793 index!297)) (= lt!111511 (MissingVacant!793 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7277 0))(
  ( (V!7278 (val!2906 Int)) )
))
(declare-datatypes ((ValueCell!2518 0))(
  ( (ValueCellFull!2518 (v!4920 V!7277)) (EmptyCell!2518) )
))
(declare-datatypes ((array!10684 0))(
  ( (array!10685 (arr!5063 (Array (_ BitVec 32) ValueCell!2518)) (size!5395 (_ BitVec 32))) )
))
(declare-datatypes ((array!10686 0))(
  ( (array!10687 (arr!5064 (Array (_ BitVec 32) (_ BitVec 64))) (size!5396 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2936 0))(
  ( (LongMapFixedSize!2937 (defaultEntry!4118 Int) (mask!9889 (_ BitVec 32)) (extraKeys!3855 (_ BitVec 32)) (zeroValue!3959 V!7277) (minValue!3959 V!7277) (_size!1517 (_ BitVec 32)) (_keys!6167 array!10686) (_values!4101 array!10684) (_vacant!1517 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2936)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10686 (_ BitVec 32)) SeekEntryResult!793)

(assert (=> b!218174 (= lt!111511 (seekEntryOrOpen!0 key!932 (_keys!6167 thiss!1504) (mask!9889 thiss!1504)))))

(declare-fun b!218175 () Bool)

(declare-fun e!141930 () Bool)

(declare-fun tp_is_empty!5723 () Bool)

(assert (=> b!218175 (= e!141930 tp_is_empty!5723)))

(declare-fun mapNonEmpty!9747 () Bool)

(declare-fun mapRes!9747 () Bool)

(declare-fun tp!20717 () Bool)

(assert (=> mapNonEmpty!9747 (= mapRes!9747 (and tp!20717 e!141930))))

(declare-fun mapRest!9747 () (Array (_ BitVec 32) ValueCell!2518))

(declare-fun mapKey!9747 () (_ BitVec 32))

(declare-fun mapValue!9747 () ValueCell!2518)

(assert (=> mapNonEmpty!9747 (= (arr!5063 (_values!4101 thiss!1504)) (store mapRest!9747 mapKey!9747 mapValue!9747))))

(declare-fun b!218177 () Bool)

(declare-fun e!141936 () Bool)

(assert (=> b!218177 (= e!141936 tp_is_empty!5723)))

(declare-fun e!141933 () Bool)

(declare-fun e!141935 () Bool)

(declare-fun array_inv!3347 (array!10686) Bool)

(declare-fun array_inv!3348 (array!10684) Bool)

(assert (=> b!218178 (= e!141933 (and tp!20718 tp_is_empty!5723 (array_inv!3347 (_keys!6167 thiss!1504)) (array_inv!3348 (_values!4101 thiss!1504)) e!141935))))

(declare-fun b!218179 () Bool)

(declare-fun res!106959 () Bool)

(assert (=> b!218179 (=> (not res!106959) (not e!141934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218179 (= res!106959 (validMask!0 (mask!9889 thiss!1504)))))

(declare-fun b!218180 () Bool)

(assert (=> b!218180 (= e!141934 false)))

(declare-fun lt!111510 () Bool)

(declare-datatypes ((List!3244 0))(
  ( (Nil!3241) (Cons!3240 (h!3887 (_ BitVec 64)) (t!8207 List!3244)) )
))
(declare-fun arrayNoDuplicates!0 (array!10686 (_ BitVec 32) List!3244) Bool)

(assert (=> b!218180 (= lt!111510 (arrayNoDuplicates!0 (_keys!6167 thiss!1504) #b00000000000000000000000000000000 Nil!3241))))

(declare-fun mapIsEmpty!9747 () Bool)

(assert (=> mapIsEmpty!9747 mapRes!9747))

(declare-fun b!218181 () Bool)

(declare-fun res!106964 () Bool)

(assert (=> b!218181 (=> (not res!106964) (not e!141934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10686 (_ BitVec 32)) Bool)

(assert (=> b!218181 (= res!106964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6167 thiss!1504) (mask!9889 thiss!1504)))))

(declare-fun b!218182 () Bool)

(declare-fun res!106963 () Bool)

(assert (=> b!218182 (=> (not res!106963) (not e!141934))))

(declare-datatypes ((tuple2!4314 0))(
  ( (tuple2!4315 (_1!2167 (_ BitVec 64)) (_2!2167 V!7277)) )
))
(declare-datatypes ((List!3245 0))(
  ( (Nil!3242) (Cons!3241 (h!3888 tuple2!4314) (t!8208 List!3245)) )
))
(declare-datatypes ((ListLongMap!3241 0))(
  ( (ListLongMap!3242 (toList!1636 List!3245)) )
))
(declare-fun contains!1471 (ListLongMap!3241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1159 (array!10686 array!10684 (_ BitVec 32) (_ BitVec 32) V!7277 V!7277 (_ BitVec 32) Int) ListLongMap!3241)

(assert (=> b!218182 (= res!106963 (not (contains!1471 (getCurrentListMap!1159 (_keys!6167 thiss!1504) (_values!4101 thiss!1504) (mask!9889 thiss!1504) (extraKeys!3855 thiss!1504) (zeroValue!3959 thiss!1504) (minValue!3959 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4118 thiss!1504)) key!932)))))

(declare-fun b!218183 () Bool)

(declare-fun res!106962 () Bool)

(assert (=> b!218183 (=> (not res!106962) (not e!141934))))

(assert (=> b!218183 (= res!106962 (and (= (size!5395 (_values!4101 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9889 thiss!1504))) (= (size!5396 (_keys!6167 thiss!1504)) (size!5395 (_values!4101 thiss!1504))) (bvsge (mask!9889 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3855 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3855 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!218184 () Bool)

(declare-fun res!106960 () Bool)

(assert (=> b!218184 (=> (not res!106960) (not e!141932))))

(assert (=> b!218184 (= res!106960 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!106961 () Bool)

(assert (=> start!21724 (=> (not res!106961) (not e!141932))))

(declare-fun valid!1182 (LongMapFixedSize!2936) Bool)

(assert (=> start!21724 (= res!106961 (valid!1182 thiss!1504))))

(assert (=> start!21724 e!141932))

(assert (=> start!21724 e!141933))

(assert (=> start!21724 true))

(declare-fun b!218176 () Bool)

(assert (=> b!218176 (= e!141935 (and e!141936 mapRes!9747))))

(declare-fun condMapEmpty!9747 () Bool)

(declare-fun mapDefault!9747 () ValueCell!2518)


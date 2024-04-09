; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21652 () Bool)

(assert start!21652)

(declare-fun b!216990 () Bool)

(declare-fun b_free!5789 () Bool)

(declare-fun b_next!5789 () Bool)

(assert (=> b!216990 (= b_free!5789 (not b_next!5789))))

(declare-fun tp!20501 () Bool)

(declare-fun b_and!12697 () Bool)

(assert (=> b!216990 (= tp!20501 b_and!12697)))

(declare-fun b!216986 () Bool)

(declare-fun res!106208 () Bool)

(declare-fun e!141177 () Bool)

(assert (=> b!216986 (=> (not res!106208) (not e!141177))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216986 (= res!106208 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216987 () Bool)

(declare-fun e!141178 () Bool)

(assert (=> b!216987 (= e!141177 e!141178)))

(declare-fun res!106205 () Bool)

(assert (=> b!216987 (=> (not res!106205) (not e!141178))))

(declare-datatypes ((SeekEntryResult!768 0))(
  ( (MissingZero!768 (index!5242 (_ BitVec 32))) (Found!768 (index!5243 (_ BitVec 32))) (Intermediate!768 (undefined!1580 Bool) (index!5244 (_ BitVec 32)) (x!22704 (_ BitVec 32))) (Undefined!768) (MissingVacant!768 (index!5245 (_ BitVec 32))) )
))
(declare-fun lt!111295 () SeekEntryResult!768)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216987 (= res!106205 (or (= lt!111295 (MissingZero!768 index!297)) (= lt!111295 (MissingVacant!768 index!297))))))

(declare-datatypes ((V!7181 0))(
  ( (V!7182 (val!2870 Int)) )
))
(declare-datatypes ((ValueCell!2482 0))(
  ( (ValueCellFull!2482 (v!4884 V!7181)) (EmptyCell!2482) )
))
(declare-datatypes ((array!10540 0))(
  ( (array!10541 (arr!4991 (Array (_ BitVec 32) ValueCell!2482)) (size!5323 (_ BitVec 32))) )
))
(declare-datatypes ((array!10542 0))(
  ( (array!10543 (arr!4992 (Array (_ BitVec 32) (_ BitVec 64))) (size!5324 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2864 0))(
  ( (LongMapFixedSize!2865 (defaultEntry!4082 Int) (mask!9829 (_ BitVec 32)) (extraKeys!3819 (_ BitVec 32)) (zeroValue!3923 V!7181) (minValue!3923 V!7181) (_size!1481 (_ BitVec 32)) (_keys!6131 array!10542) (_values!4065 array!10540) (_vacant!1481 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2864)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10542 (_ BitVec 32)) SeekEntryResult!768)

(assert (=> b!216987 (= lt!111295 (seekEntryOrOpen!0 key!932 (_keys!6131 thiss!1504) (mask!9829 thiss!1504)))))

(declare-fun mapNonEmpty!9639 () Bool)

(declare-fun mapRes!9639 () Bool)

(declare-fun tp!20502 () Bool)

(declare-fun e!141174 () Bool)

(assert (=> mapNonEmpty!9639 (= mapRes!9639 (and tp!20502 e!141174))))

(declare-fun mapValue!9639 () ValueCell!2482)

(declare-fun mapRest!9639 () (Array (_ BitVec 32) ValueCell!2482))

(declare-fun mapKey!9639 () (_ BitVec 32))

(assert (=> mapNonEmpty!9639 (= (arr!4991 (_values!4065 thiss!1504)) (store mapRest!9639 mapKey!9639 mapValue!9639))))

(declare-fun b!216988 () Bool)

(declare-fun res!106204 () Bool)

(assert (=> b!216988 (=> (not res!106204) (not e!141178))))

(declare-datatypes ((tuple2!4266 0))(
  ( (tuple2!4267 (_1!2143 (_ BitVec 64)) (_2!2143 V!7181)) )
))
(declare-datatypes ((List!3193 0))(
  ( (Nil!3190) (Cons!3189 (h!3836 tuple2!4266) (t!8156 List!3193)) )
))
(declare-datatypes ((ListLongMap!3193 0))(
  ( (ListLongMap!3194 (toList!1612 List!3193)) )
))
(declare-fun contains!1447 (ListLongMap!3193 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1135 (array!10542 array!10540 (_ BitVec 32) (_ BitVec 32) V!7181 V!7181 (_ BitVec 32) Int) ListLongMap!3193)

(assert (=> b!216988 (= res!106204 (contains!1447 (getCurrentListMap!1135 (_keys!6131 thiss!1504) (_values!4065 thiss!1504) (mask!9829 thiss!1504) (extraKeys!3819 thiss!1504) (zeroValue!3923 thiss!1504) (minValue!3923 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4082 thiss!1504)) key!932))))

(declare-fun b!216989 () Bool)

(declare-fun res!106209 () Bool)

(assert (=> b!216989 (=> (not res!106209) (not e!141178))))

(assert (=> b!216989 (= res!106209 (and (= (size!5323 (_values!4065 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9829 thiss!1504))) (= (size!5324 (_keys!6131 thiss!1504)) (size!5323 (_values!4065 thiss!1504))) (bvsge (mask!9829 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3819 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3819 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9639 () Bool)

(assert (=> mapIsEmpty!9639 mapRes!9639))

(declare-fun e!141180 () Bool)

(declare-fun e!141179 () Bool)

(declare-fun tp_is_empty!5651 () Bool)

(declare-fun array_inv!3293 (array!10542) Bool)

(declare-fun array_inv!3294 (array!10540) Bool)

(assert (=> b!216990 (= e!141179 (and tp!20501 tp_is_empty!5651 (array_inv!3293 (_keys!6131 thiss!1504)) (array_inv!3294 (_values!4065 thiss!1504)) e!141180))))

(declare-fun res!106203 () Bool)

(assert (=> start!21652 (=> (not res!106203) (not e!141177))))

(declare-fun valid!1156 (LongMapFixedSize!2864) Bool)

(assert (=> start!21652 (= res!106203 (valid!1156 thiss!1504))))

(assert (=> start!21652 e!141177))

(assert (=> start!21652 e!141179))

(assert (=> start!21652 true))

(declare-fun b!216991 () Bool)

(assert (=> b!216991 (= e!141174 tp_is_empty!5651)))

(declare-fun b!216992 () Bool)

(declare-fun res!106207 () Bool)

(assert (=> b!216992 (=> (not res!106207) (not e!141178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10542 (_ BitVec 32)) Bool)

(assert (=> b!216992 (= res!106207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6131 thiss!1504) (mask!9829 thiss!1504)))))

(declare-fun b!216993 () Bool)

(declare-fun e!141176 () Bool)

(assert (=> b!216993 (= e!141176 tp_is_empty!5651)))

(declare-fun b!216994 () Bool)

(assert (=> b!216994 (= e!141178 false)))

(declare-fun lt!111294 () Bool)

(declare-datatypes ((List!3194 0))(
  ( (Nil!3191) (Cons!3190 (h!3837 (_ BitVec 64)) (t!8157 List!3194)) )
))
(declare-fun arrayNoDuplicates!0 (array!10542 (_ BitVec 32) List!3194) Bool)

(assert (=> b!216994 (= lt!111294 (arrayNoDuplicates!0 (_keys!6131 thiss!1504) #b00000000000000000000000000000000 Nil!3191))))

(declare-fun b!216995 () Bool)

(assert (=> b!216995 (= e!141180 (and e!141176 mapRes!9639))))

(declare-fun condMapEmpty!9639 () Bool)

(declare-fun mapDefault!9639 () ValueCell!2482)


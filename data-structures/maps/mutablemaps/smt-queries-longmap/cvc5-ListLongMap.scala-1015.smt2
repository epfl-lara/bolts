; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21702 () Bool)

(assert start!21702)

(declare-fun b!217813 () Bool)

(declare-fun b_free!5839 () Bool)

(declare-fun b_next!5839 () Bool)

(assert (=> b!217813 (= b_free!5839 (not b_next!5839))))

(declare-fun tp!20652 () Bool)

(declare-fun b_and!12747 () Bool)

(assert (=> b!217813 (= tp!20652 b_and!12747)))

(declare-fun res!106733 () Bool)

(declare-fun e!141701 () Bool)

(assert (=> start!21702 (=> (not res!106733) (not e!141701))))

(declare-datatypes ((V!7249 0))(
  ( (V!7250 (val!2895 Int)) )
))
(declare-datatypes ((ValueCell!2507 0))(
  ( (ValueCellFull!2507 (v!4909 V!7249)) (EmptyCell!2507) )
))
(declare-datatypes ((array!10640 0))(
  ( (array!10641 (arr!5041 (Array (_ BitVec 32) ValueCell!2507)) (size!5373 (_ BitVec 32))) )
))
(declare-datatypes ((array!10642 0))(
  ( (array!10643 (arr!5042 (Array (_ BitVec 32) (_ BitVec 64))) (size!5374 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2914 0))(
  ( (LongMapFixedSize!2915 (defaultEntry!4107 Int) (mask!9872 (_ BitVec 32)) (extraKeys!3844 (_ BitVec 32)) (zeroValue!3948 V!7249) (minValue!3948 V!7249) (_size!1506 (_ BitVec 32)) (_keys!6156 array!10642) (_values!4090 array!10640) (_vacant!1506 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2914)

(declare-fun valid!1174 (LongMapFixedSize!2914) Bool)

(assert (=> start!21702 (= res!106733 (valid!1174 thiss!1504))))

(assert (=> start!21702 e!141701))

(declare-fun e!141705 () Bool)

(assert (=> start!21702 e!141705))

(assert (=> start!21702 true))

(declare-fun b!217811 () Bool)

(declare-fun res!106728 () Bool)

(assert (=> b!217811 (=> (not res!106728) (not e!141701))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217811 (= res!106728 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217812 () Bool)

(declare-fun res!106729 () Bool)

(declare-fun e!141699 () Bool)

(assert (=> b!217812 (=> (not res!106729) (not e!141699))))

(assert (=> b!217812 (= res!106729 (and (= (size!5373 (_values!4090 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9872 thiss!1504))) (= (size!5374 (_keys!6156 thiss!1504)) (size!5373 (_values!4090 thiss!1504))) (bvsge (mask!9872 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3844 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3844 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!5701 () Bool)

(declare-fun e!141703 () Bool)

(declare-fun array_inv!3329 (array!10642) Bool)

(declare-fun array_inv!3330 (array!10640) Bool)

(assert (=> b!217813 (= e!141705 (and tp!20652 tp_is_empty!5701 (array_inv!3329 (_keys!6156 thiss!1504)) (array_inv!3330 (_values!4090 thiss!1504)) e!141703))))

(declare-fun b!217814 () Bool)

(declare-fun res!106734 () Bool)

(assert (=> b!217814 (=> (not res!106734) (not e!141699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10642 (_ BitVec 32)) Bool)

(assert (=> b!217814 (= res!106734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6156 thiss!1504) (mask!9872 thiss!1504)))))

(declare-fun b!217815 () Bool)

(assert (=> b!217815 (= e!141699 false)))

(declare-fun lt!111445 () Bool)

(declare-datatypes ((List!3227 0))(
  ( (Nil!3224) (Cons!3223 (h!3870 (_ BitVec 64)) (t!8190 List!3227)) )
))
(declare-fun arrayNoDuplicates!0 (array!10642 (_ BitVec 32) List!3227) Bool)

(assert (=> b!217815 (= lt!111445 (arrayNoDuplicates!0 (_keys!6156 thiss!1504) #b00000000000000000000000000000000 Nil!3224))))

(declare-fun mapIsEmpty!9714 () Bool)

(declare-fun mapRes!9714 () Bool)

(assert (=> mapIsEmpty!9714 mapRes!9714))

(declare-fun b!217816 () Bool)

(declare-fun e!141702 () Bool)

(assert (=> b!217816 (= e!141702 tp_is_empty!5701)))

(declare-fun b!217817 () Bool)

(assert (=> b!217817 (= e!141701 e!141699)))

(declare-fun res!106732 () Bool)

(assert (=> b!217817 (=> (not res!106732) (not e!141699))))

(declare-datatypes ((SeekEntryResult!785 0))(
  ( (MissingZero!785 (index!5310 (_ BitVec 32))) (Found!785 (index!5311 (_ BitVec 32))) (Intermediate!785 (undefined!1597 Bool) (index!5312 (_ BitVec 32)) (x!22793 (_ BitVec 32))) (Undefined!785) (MissingVacant!785 (index!5313 (_ BitVec 32))) )
))
(declare-fun lt!111444 () SeekEntryResult!785)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217817 (= res!106732 (or (= lt!111444 (MissingZero!785 index!297)) (= lt!111444 (MissingVacant!785 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10642 (_ BitVec 32)) SeekEntryResult!785)

(assert (=> b!217817 (= lt!111444 (seekEntryOrOpen!0 key!932 (_keys!6156 thiss!1504) (mask!9872 thiss!1504)))))

(declare-fun b!217818 () Bool)

(declare-fun res!106730 () Bool)

(assert (=> b!217818 (=> (not res!106730) (not e!141699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217818 (= res!106730 (validMask!0 (mask!9872 thiss!1504)))))

(declare-fun b!217819 () Bool)

(declare-fun e!141704 () Bool)

(assert (=> b!217819 (= e!141704 tp_is_empty!5701)))

(declare-fun mapNonEmpty!9714 () Bool)

(declare-fun tp!20651 () Bool)

(assert (=> mapNonEmpty!9714 (= mapRes!9714 (and tp!20651 e!141702))))

(declare-fun mapRest!9714 () (Array (_ BitVec 32) ValueCell!2507))

(declare-fun mapKey!9714 () (_ BitVec 32))

(declare-fun mapValue!9714 () ValueCell!2507)

(assert (=> mapNonEmpty!9714 (= (arr!5041 (_values!4090 thiss!1504)) (store mapRest!9714 mapKey!9714 mapValue!9714))))

(declare-fun b!217820 () Bool)

(declare-fun res!106731 () Bool)

(assert (=> b!217820 (=> (not res!106731) (not e!141699))))

(declare-datatypes ((tuple2!4298 0))(
  ( (tuple2!4299 (_1!2159 (_ BitVec 64)) (_2!2159 V!7249)) )
))
(declare-datatypes ((List!3228 0))(
  ( (Nil!3225) (Cons!3224 (h!3871 tuple2!4298) (t!8191 List!3228)) )
))
(declare-datatypes ((ListLongMap!3225 0))(
  ( (ListLongMap!3226 (toList!1628 List!3228)) )
))
(declare-fun contains!1463 (ListLongMap!3225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1151 (array!10642 array!10640 (_ BitVec 32) (_ BitVec 32) V!7249 V!7249 (_ BitVec 32) Int) ListLongMap!3225)

(assert (=> b!217820 (= res!106731 (not (contains!1463 (getCurrentListMap!1151 (_keys!6156 thiss!1504) (_values!4090 thiss!1504) (mask!9872 thiss!1504) (extraKeys!3844 thiss!1504) (zeroValue!3948 thiss!1504) (minValue!3948 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4107 thiss!1504)) key!932)))))

(declare-fun b!217821 () Bool)

(assert (=> b!217821 (= e!141703 (and e!141704 mapRes!9714))))

(declare-fun condMapEmpty!9714 () Bool)

(declare-fun mapDefault!9714 () ValueCell!2507)


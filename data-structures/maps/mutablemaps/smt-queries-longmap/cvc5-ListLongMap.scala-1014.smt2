; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21696 () Bool)

(assert start!21696)

(declare-fun b!217722 () Bool)

(declare-fun b_free!5833 () Bool)

(declare-fun b_next!5833 () Bool)

(assert (=> b!217722 (= b_free!5833 (not b_next!5833))))

(declare-fun tp!20633 () Bool)

(declare-fun b_and!12741 () Bool)

(assert (=> b!217722 (= tp!20633 b_and!12741)))

(declare-fun b!217712 () Bool)

(declare-fun res!106666 () Bool)

(declare-fun e!141638 () Bool)

(assert (=> b!217712 (=> (not res!106666) (not e!141638))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217712 (= res!106666 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217713 () Bool)

(declare-fun e!141639 () Bool)

(declare-fun tp_is_empty!5695 () Bool)

(assert (=> b!217713 (= e!141639 tp_is_empty!5695)))

(declare-fun b!217714 () Bool)

(declare-fun e!141641 () Bool)

(assert (=> b!217714 (= e!141638 e!141641)))

(declare-fun res!106671 () Bool)

(assert (=> b!217714 (=> (not res!106671) (not e!141641))))

(declare-datatypes ((SeekEntryResult!782 0))(
  ( (MissingZero!782 (index!5298 (_ BitVec 32))) (Found!782 (index!5299 (_ BitVec 32))) (Intermediate!782 (undefined!1594 Bool) (index!5300 (_ BitVec 32)) (x!22782 (_ BitVec 32))) (Undefined!782) (MissingVacant!782 (index!5301 (_ BitVec 32))) )
))
(declare-fun lt!111427 () SeekEntryResult!782)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217714 (= res!106671 (or (= lt!111427 (MissingZero!782 index!297)) (= lt!111427 (MissingVacant!782 index!297))))))

(declare-datatypes ((V!7241 0))(
  ( (V!7242 (val!2892 Int)) )
))
(declare-datatypes ((ValueCell!2504 0))(
  ( (ValueCellFull!2504 (v!4906 V!7241)) (EmptyCell!2504) )
))
(declare-datatypes ((array!10628 0))(
  ( (array!10629 (arr!5035 (Array (_ BitVec 32) ValueCell!2504)) (size!5367 (_ BitVec 32))) )
))
(declare-datatypes ((array!10630 0))(
  ( (array!10631 (arr!5036 (Array (_ BitVec 32) (_ BitVec 64))) (size!5368 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2908 0))(
  ( (LongMapFixedSize!2909 (defaultEntry!4104 Int) (mask!9867 (_ BitVec 32)) (extraKeys!3841 (_ BitVec 32)) (zeroValue!3945 V!7241) (minValue!3945 V!7241) (_size!1503 (_ BitVec 32)) (_keys!6153 array!10630) (_values!4087 array!10628) (_vacant!1503 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2908)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10630 (_ BitVec 32)) SeekEntryResult!782)

(assert (=> b!217714 (= lt!111427 (seekEntryOrOpen!0 key!932 (_keys!6153 thiss!1504) (mask!9867 thiss!1504)))))

(declare-fun res!106667 () Bool)

(assert (=> start!21696 (=> (not res!106667) (not e!141638))))

(declare-fun valid!1171 (LongMapFixedSize!2908) Bool)

(assert (=> start!21696 (= res!106667 (valid!1171 thiss!1504))))

(assert (=> start!21696 e!141638))

(declare-fun e!141637 () Bool)

(assert (=> start!21696 e!141637))

(assert (=> start!21696 true))

(declare-fun mapIsEmpty!9705 () Bool)

(declare-fun mapRes!9705 () Bool)

(assert (=> mapIsEmpty!9705 mapRes!9705))

(declare-fun b!217715 () Bool)

(declare-fun res!106669 () Bool)

(assert (=> b!217715 (=> (not res!106669) (not e!141641))))

(declare-datatypes ((tuple2!4292 0))(
  ( (tuple2!4293 (_1!2156 (_ BitVec 64)) (_2!2156 V!7241)) )
))
(declare-datatypes ((List!3221 0))(
  ( (Nil!3218) (Cons!3217 (h!3864 tuple2!4292) (t!8184 List!3221)) )
))
(declare-datatypes ((ListLongMap!3219 0))(
  ( (ListLongMap!3220 (toList!1625 List!3221)) )
))
(declare-fun contains!1460 (ListLongMap!3219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1148 (array!10630 array!10628 (_ BitVec 32) (_ BitVec 32) V!7241 V!7241 (_ BitVec 32) Int) ListLongMap!3219)

(assert (=> b!217715 (= res!106669 (not (contains!1460 (getCurrentListMap!1148 (_keys!6153 thiss!1504) (_values!4087 thiss!1504) (mask!9867 thiss!1504) (extraKeys!3841 thiss!1504) (zeroValue!3945 thiss!1504) (minValue!3945 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4104 thiss!1504)) key!932)))))

(declare-fun b!217716 () Bool)

(declare-fun res!106665 () Bool)

(assert (=> b!217716 (=> (not res!106665) (not e!141641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217716 (= res!106665 (validMask!0 (mask!9867 thiss!1504)))))

(declare-fun b!217717 () Bool)

(declare-fun res!106670 () Bool)

(assert (=> b!217717 (=> (not res!106670) (not e!141641))))

(assert (=> b!217717 (= res!106670 (and (= (size!5367 (_values!4087 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9867 thiss!1504))) (= (size!5368 (_keys!6153 thiss!1504)) (size!5367 (_values!4087 thiss!1504))) (bvsge (mask!9867 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3841 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3841 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9705 () Bool)

(declare-fun tp!20634 () Bool)

(declare-fun e!141640 () Bool)

(assert (=> mapNonEmpty!9705 (= mapRes!9705 (and tp!20634 e!141640))))

(declare-fun mapKey!9705 () (_ BitVec 32))

(declare-fun mapValue!9705 () ValueCell!2504)

(declare-fun mapRest!9705 () (Array (_ BitVec 32) ValueCell!2504))

(assert (=> mapNonEmpty!9705 (= (arr!5035 (_values!4087 thiss!1504)) (store mapRest!9705 mapKey!9705 mapValue!9705))))

(declare-fun b!217718 () Bool)

(assert (=> b!217718 (= e!141640 tp_is_empty!5695)))

(declare-fun b!217719 () Bool)

(declare-fun res!106668 () Bool)

(assert (=> b!217719 (=> (not res!106668) (not e!141641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10630 (_ BitVec 32)) Bool)

(assert (=> b!217719 (= res!106668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6153 thiss!1504) (mask!9867 thiss!1504)))))

(declare-fun b!217720 () Bool)

(assert (=> b!217720 (= e!141641 false)))

(declare-fun lt!111426 () Bool)

(declare-datatypes ((List!3222 0))(
  ( (Nil!3219) (Cons!3218 (h!3865 (_ BitVec 64)) (t!8185 List!3222)) )
))
(declare-fun arrayNoDuplicates!0 (array!10630 (_ BitVec 32) List!3222) Bool)

(assert (=> b!217720 (= lt!111426 (arrayNoDuplicates!0 (_keys!6153 thiss!1504) #b00000000000000000000000000000000 Nil!3219))))

(declare-fun b!217721 () Bool)

(declare-fun e!141636 () Bool)

(assert (=> b!217721 (= e!141636 (and e!141639 mapRes!9705))))

(declare-fun condMapEmpty!9705 () Bool)

(declare-fun mapDefault!9705 () ValueCell!2504)


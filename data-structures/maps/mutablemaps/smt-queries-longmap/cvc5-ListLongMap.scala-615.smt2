; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16022 () Bool)

(assert start!16022)

(declare-fun b!158872 () Bool)

(declare-fun b_free!3499 () Bool)

(declare-fun b_next!3499 () Bool)

(assert (=> b!158872 (= b_free!3499 (not b_next!3499))))

(declare-fun tp!13061 () Bool)

(declare-fun b_and!9931 () Bool)

(assert (=> b!158872 (= tp!13061 b_and!9931)))

(declare-fun e!104044 () Bool)

(declare-fun e!104045 () Bool)

(declare-datatypes ((V!4049 0))(
  ( (V!4050 (val!1695 Int)) )
))
(declare-datatypes ((ValueCell!1307 0))(
  ( (ValueCellFull!1307 (v!3556 V!4049)) (EmptyCell!1307) )
))
(declare-datatypes ((array!5676 0))(
  ( (array!5677 (arr!2684 (Array (_ BitVec 32) (_ BitVec 64))) (size!2968 (_ BitVec 32))) )
))
(declare-datatypes ((array!5678 0))(
  ( (array!5679 (arr!2685 (Array (_ BitVec 32) ValueCell!1307)) (size!2969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1522 0))(
  ( (LongMapFixedSize!1523 (defaultEntry!3203 Int) (mask!7739 (_ BitVec 32)) (extraKeys!2944 (_ BitVec 32)) (zeroValue!3046 V!4049) (minValue!3046 V!4049) (_size!810 (_ BitVec 32)) (_keys!5000 array!5676) (_values!3186 array!5678) (_vacant!810 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1522)

(declare-fun tp_is_empty!3301 () Bool)

(declare-fun array_inv!1701 (array!5676) Bool)

(declare-fun array_inv!1702 (array!5678) Bool)

(assert (=> b!158872 (= e!104044 (and tp!13061 tp_is_empty!3301 (array_inv!1701 (_keys!5000 thiss!1248)) (array_inv!1702 (_values!3186 thiss!1248)) e!104045))))

(declare-fun mapNonEmpty!5633 () Bool)

(declare-fun mapRes!5633 () Bool)

(declare-fun tp!13060 () Bool)

(declare-fun e!104042 () Bool)

(assert (=> mapNonEmpty!5633 (= mapRes!5633 (and tp!13060 e!104042))))

(declare-fun mapValue!5633 () ValueCell!1307)

(declare-fun mapRest!5633 () (Array (_ BitVec 32) ValueCell!1307))

(declare-fun mapKey!5633 () (_ BitVec 32))

(assert (=> mapNonEmpty!5633 (= (arr!2685 (_values!3186 thiss!1248)) (store mapRest!5633 mapKey!5633 mapValue!5633))))

(declare-fun b!158873 () Bool)

(declare-fun res!75024 () Bool)

(declare-fun e!104040 () Bool)

(assert (=> b!158873 (=> (not res!75024) (not e!104040))))

(assert (=> b!158873 (= res!75024 (and (= (size!2969 (_values!3186 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7739 thiss!1248))) (= (size!2968 (_keys!5000 thiss!1248)) (size!2969 (_values!3186 thiss!1248))) (bvsge (mask!7739 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2944 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2944 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!158874 () Bool)

(assert (=> b!158874 (= e!104042 tp_is_empty!3301)))

(declare-fun b!158875 () Bool)

(declare-fun res!75029 () Bool)

(assert (=> b!158875 (=> (not res!75029) (not e!104040))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!158875 (= res!75029 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158876 () Bool)

(declare-fun e!104041 () Bool)

(assert (=> b!158876 (= e!104041 tp_is_empty!3301)))

(declare-fun res!75027 () Bool)

(assert (=> start!16022 (=> (not res!75027) (not e!104040))))

(declare-fun valid!713 (LongMapFixedSize!1522) Bool)

(assert (=> start!16022 (= res!75027 (valid!713 thiss!1248))))

(assert (=> start!16022 e!104040))

(assert (=> start!16022 e!104044))

(assert (=> start!16022 true))

(declare-fun mapIsEmpty!5633 () Bool)

(assert (=> mapIsEmpty!5633 mapRes!5633))

(declare-fun b!158877 () Bool)

(declare-fun res!75028 () Bool)

(assert (=> b!158877 (=> (not res!75028) (not e!104040))))

(declare-datatypes ((SeekEntryResult!315 0))(
  ( (MissingZero!315 (index!3428 (_ BitVec 32))) (Found!315 (index!3429 (_ BitVec 32))) (Intermediate!315 (undefined!1127 Bool) (index!3430 (_ BitVec 32)) (x!17563 (_ BitVec 32))) (Undefined!315) (MissingVacant!315 (index!3431 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5676 (_ BitVec 32)) SeekEntryResult!315)

(assert (=> b!158877 (= res!75028 (is-Undefined!315 (seekEntryOrOpen!0 key!828 (_keys!5000 thiss!1248) (mask!7739 thiss!1248))))))

(declare-fun b!158878 () Bool)

(declare-fun res!75025 () Bool)

(assert (=> b!158878 (=> (not res!75025) (not e!104040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158878 (= res!75025 (validMask!0 (mask!7739 thiss!1248)))))

(declare-fun b!158879 () Bool)

(declare-datatypes ((List!1907 0))(
  ( (Nil!1904) (Cons!1903 (h!2516 (_ BitVec 64)) (t!6717 List!1907)) )
))
(declare-fun arrayNoDuplicates!0 (array!5676 (_ BitVec 32) List!1907) Bool)

(assert (=> b!158879 (= e!104040 (not (arrayNoDuplicates!0 (_keys!5000 thiss!1248) #b00000000000000000000000000000000 Nil!1904)))))

(declare-fun b!158880 () Bool)

(declare-fun res!75026 () Bool)

(assert (=> b!158880 (=> (not res!75026) (not e!104040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5676 (_ BitVec 32)) Bool)

(assert (=> b!158880 (= res!75026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5000 thiss!1248) (mask!7739 thiss!1248)))))

(declare-fun b!158881 () Bool)

(assert (=> b!158881 (= e!104045 (and e!104041 mapRes!5633))))

(declare-fun condMapEmpty!5633 () Bool)

(declare-fun mapDefault!5633 () ValueCell!1307)


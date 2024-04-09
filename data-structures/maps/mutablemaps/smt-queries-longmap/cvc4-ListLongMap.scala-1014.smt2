; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21700 () Bool)

(assert start!21700)

(declare-fun b!217783 () Bool)

(declare-fun b_free!5837 () Bool)

(declare-fun b_next!5837 () Bool)

(assert (=> b!217783 (= b_free!5837 (not b_next!5837))))

(declare-fun tp!20645 () Bool)

(declare-fun b_and!12745 () Bool)

(assert (=> b!217783 (= tp!20645 b_and!12745)))

(declare-fun b!217778 () Bool)

(declare-fun e!141679 () Bool)

(declare-fun e!141680 () Bool)

(assert (=> b!217778 (= e!141679 e!141680)))

(declare-fun res!106713 () Bool)

(assert (=> b!217778 (=> (not res!106713) (not e!141680))))

(declare-datatypes ((SeekEntryResult!784 0))(
  ( (MissingZero!784 (index!5306 (_ BitVec 32))) (Found!784 (index!5307 (_ BitVec 32))) (Intermediate!784 (undefined!1596 Bool) (index!5308 (_ BitVec 32)) (x!22784 (_ BitVec 32))) (Undefined!784) (MissingVacant!784 (index!5309 (_ BitVec 32))) )
))
(declare-fun lt!111439 () SeekEntryResult!784)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217778 (= res!106713 (or (= lt!111439 (MissingZero!784 index!297)) (= lt!111439 (MissingVacant!784 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7245 0))(
  ( (V!7246 (val!2894 Int)) )
))
(declare-datatypes ((ValueCell!2506 0))(
  ( (ValueCellFull!2506 (v!4908 V!7245)) (EmptyCell!2506) )
))
(declare-datatypes ((array!10636 0))(
  ( (array!10637 (arr!5039 (Array (_ BitVec 32) ValueCell!2506)) (size!5371 (_ BitVec 32))) )
))
(declare-datatypes ((array!10638 0))(
  ( (array!10639 (arr!5040 (Array (_ BitVec 32) (_ BitVec 64))) (size!5372 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2912 0))(
  ( (LongMapFixedSize!2913 (defaultEntry!4106 Int) (mask!9869 (_ BitVec 32)) (extraKeys!3843 (_ BitVec 32)) (zeroValue!3947 V!7245) (minValue!3947 V!7245) (_size!1505 (_ BitVec 32)) (_keys!6155 array!10638) (_values!4089 array!10636) (_vacant!1505 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2912)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10638 (_ BitVec 32)) SeekEntryResult!784)

(assert (=> b!217778 (= lt!111439 (seekEntryOrOpen!0 key!932 (_keys!6155 thiss!1504) (mask!9869 thiss!1504)))))

(declare-fun b!217779 () Bool)

(declare-fun res!106707 () Bool)

(assert (=> b!217779 (=> (not res!106707) (not e!141679))))

(assert (=> b!217779 (= res!106707 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217780 () Bool)

(declare-fun res!106712 () Bool)

(assert (=> b!217780 (=> (not res!106712) (not e!141680))))

(declare-datatypes ((tuple2!4296 0))(
  ( (tuple2!4297 (_1!2158 (_ BitVec 64)) (_2!2158 V!7245)) )
))
(declare-datatypes ((List!3225 0))(
  ( (Nil!3222) (Cons!3221 (h!3868 tuple2!4296) (t!8188 List!3225)) )
))
(declare-datatypes ((ListLongMap!3223 0))(
  ( (ListLongMap!3224 (toList!1627 List!3225)) )
))
(declare-fun contains!1462 (ListLongMap!3223 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1150 (array!10638 array!10636 (_ BitVec 32) (_ BitVec 32) V!7245 V!7245 (_ BitVec 32) Int) ListLongMap!3223)

(assert (=> b!217780 (= res!106712 (not (contains!1462 (getCurrentListMap!1150 (_keys!6155 thiss!1504) (_values!4089 thiss!1504) (mask!9869 thiss!1504) (extraKeys!3843 thiss!1504) (zeroValue!3947 thiss!1504) (minValue!3947 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4106 thiss!1504)) key!932)))))

(declare-fun b!217781 () Bool)

(declare-fun res!106708 () Bool)

(assert (=> b!217781 (=> (not res!106708) (not e!141680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217781 (= res!106708 (validMask!0 (mask!9869 thiss!1504)))))

(declare-fun tp_is_empty!5699 () Bool)

(declare-fun e!141681 () Bool)

(declare-fun e!141678 () Bool)

(declare-fun array_inv!3327 (array!10638) Bool)

(declare-fun array_inv!3328 (array!10636) Bool)

(assert (=> b!217783 (= e!141678 (and tp!20645 tp_is_empty!5699 (array_inv!3327 (_keys!6155 thiss!1504)) (array_inv!3328 (_values!4089 thiss!1504)) e!141681))))

(declare-fun b!217784 () Bool)

(declare-fun e!141683 () Bool)

(assert (=> b!217784 (= e!141683 tp_is_empty!5699)))

(declare-fun b!217785 () Bool)

(declare-fun res!106711 () Bool)

(assert (=> b!217785 (=> (not res!106711) (not e!141680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10638 (_ BitVec 32)) Bool)

(assert (=> b!217785 (= res!106711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6155 thiss!1504) (mask!9869 thiss!1504)))))

(declare-fun b!217786 () Bool)

(declare-fun e!141682 () Bool)

(assert (=> b!217786 (= e!141682 tp_is_empty!5699)))

(declare-fun mapIsEmpty!9711 () Bool)

(declare-fun mapRes!9711 () Bool)

(assert (=> mapIsEmpty!9711 mapRes!9711))

(declare-fun b!217787 () Bool)

(declare-fun res!106710 () Bool)

(assert (=> b!217787 (=> (not res!106710) (not e!141680))))

(assert (=> b!217787 (= res!106710 (and (= (size!5371 (_values!4089 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9869 thiss!1504))) (= (size!5372 (_keys!6155 thiss!1504)) (size!5371 (_values!4089 thiss!1504))) (bvsge (mask!9869 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3843 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3843 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217782 () Bool)

(assert (=> b!217782 (= e!141680 false)))

(declare-fun lt!111438 () Bool)

(declare-datatypes ((List!3226 0))(
  ( (Nil!3223) (Cons!3222 (h!3869 (_ BitVec 64)) (t!8189 List!3226)) )
))
(declare-fun arrayNoDuplicates!0 (array!10638 (_ BitVec 32) List!3226) Bool)

(assert (=> b!217782 (= lt!111438 (arrayNoDuplicates!0 (_keys!6155 thiss!1504) #b00000000000000000000000000000000 Nil!3223))))

(declare-fun res!106709 () Bool)

(assert (=> start!21700 (=> (not res!106709) (not e!141679))))

(declare-fun valid!1173 (LongMapFixedSize!2912) Bool)

(assert (=> start!21700 (= res!106709 (valid!1173 thiss!1504))))

(assert (=> start!21700 e!141679))

(assert (=> start!21700 e!141678))

(assert (=> start!21700 true))

(declare-fun mapNonEmpty!9711 () Bool)

(declare-fun tp!20646 () Bool)

(assert (=> mapNonEmpty!9711 (= mapRes!9711 (and tp!20646 e!141683))))

(declare-fun mapRest!9711 () (Array (_ BitVec 32) ValueCell!2506))

(declare-fun mapValue!9711 () ValueCell!2506)

(declare-fun mapKey!9711 () (_ BitVec 32))

(assert (=> mapNonEmpty!9711 (= (arr!5039 (_values!4089 thiss!1504)) (store mapRest!9711 mapKey!9711 mapValue!9711))))

(declare-fun b!217788 () Bool)

(assert (=> b!217788 (= e!141681 (and e!141682 mapRes!9711))))

(declare-fun condMapEmpty!9711 () Bool)

(declare-fun mapDefault!9711 () ValueCell!2506)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16366 () Bool)

(assert start!16366)

(declare-fun b!163010 () Bool)

(declare-fun b_free!3781 () Bool)

(declare-fun b_next!3781 () Bool)

(assert (=> b!163010 (= b_free!3781 (not b_next!3781))))

(declare-fun tp!13920 () Bool)

(declare-fun b_and!10213 () Bool)

(assert (=> b!163010 (= tp!13920 b_and!10213)))

(declare-fun b!163003 () Bool)

(declare-fun e!106940 () Bool)

(declare-datatypes ((V!4425 0))(
  ( (V!4426 (val!1836 Int)) )
))
(declare-datatypes ((ValueCell!1448 0))(
  ( (ValueCellFull!1448 (v!3697 V!4425)) (EmptyCell!1448) )
))
(declare-datatypes ((array!6248 0))(
  ( (array!6249 (arr!2966 (Array (_ BitVec 32) (_ BitVec 64))) (size!3251 (_ BitVec 32))) )
))
(declare-datatypes ((array!6250 0))(
  ( (array!6251 (arr!2967 (Array (_ BitVec 32) ValueCell!1448)) (size!3252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1804 0))(
  ( (LongMapFixedSize!1805 (defaultEntry!3344 Int) (mask!7988 (_ BitVec 32)) (extraKeys!3085 (_ BitVec 32)) (zeroValue!3187 V!4425) (minValue!3187 V!4425) (_size!951 (_ BitVec 32)) (_keys!5150 array!6248) (_values!3327 array!6250) (_vacant!951 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1804)

(assert (=> b!163003 (= e!106940 (and (= (size!3252 (_values!3327 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7988 thiss!1248))) (not (= (size!3251 (_keys!5150 thiss!1248)) (size!3252 (_values!3327 thiss!1248))))))))

(declare-fun b!163004 () Bool)

(declare-fun res!77185 () Bool)

(assert (=> b!163004 (=> (not res!77185) (not e!106940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163004 (= res!77185 (validMask!0 (mask!7988 thiss!1248)))))

(declare-fun mapNonEmpty!6069 () Bool)

(declare-fun mapRes!6069 () Bool)

(declare-fun tp!13919 () Bool)

(declare-fun e!106944 () Bool)

(assert (=> mapNonEmpty!6069 (= mapRes!6069 (and tp!13919 e!106944))))

(declare-fun mapValue!6069 () ValueCell!1448)

(declare-fun mapRest!6069 () (Array (_ BitVec 32) ValueCell!1448))

(declare-fun mapKey!6069 () (_ BitVec 32))

(assert (=> mapNonEmpty!6069 (= (arr!2967 (_values!3327 thiss!1248)) (store mapRest!6069 mapKey!6069 mapValue!6069))))

(declare-fun mapIsEmpty!6069 () Bool)

(assert (=> mapIsEmpty!6069 mapRes!6069))

(declare-fun res!77187 () Bool)

(declare-fun e!106942 () Bool)

(assert (=> start!16366 (=> (not res!77187) (not e!106942))))

(declare-fun valid!802 (LongMapFixedSize!1804) Bool)

(assert (=> start!16366 (= res!77187 (valid!802 thiss!1248))))

(assert (=> start!16366 e!106942))

(declare-fun e!106939 () Bool)

(assert (=> start!16366 e!106939))

(assert (=> start!16366 true))

(declare-fun b!163005 () Bool)

(declare-fun res!77184 () Bool)

(assert (=> b!163005 (=> (not res!77184) (not e!106942))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163005 (= res!77184 (not (= key!828 (bvneg key!828))))))

(declare-fun b!163006 () Bool)

(declare-fun e!106943 () Bool)

(declare-fun tp_is_empty!3583 () Bool)

(assert (=> b!163006 (= e!106943 tp_is_empty!3583)))

(declare-fun b!163007 () Bool)

(assert (=> b!163007 (= e!106944 tp_is_empty!3583)))

(declare-fun b!163008 () Bool)

(assert (=> b!163008 (= e!106942 e!106940)))

(declare-fun res!77186 () Bool)

(assert (=> b!163008 (=> (not res!77186) (not e!106940))))

(declare-datatypes ((SeekEntryResult!404 0))(
  ( (MissingZero!404 (index!3784 (_ BitVec 32))) (Found!404 (index!3785 (_ BitVec 32))) (Intermediate!404 (undefined!1216 Bool) (index!3786 (_ BitVec 32)) (x!18069 (_ BitVec 32))) (Undefined!404) (MissingVacant!404 (index!3787 (_ BitVec 32))) )
))
(declare-fun lt!82625 () SeekEntryResult!404)

(assert (=> b!163008 (= res!77186 (and (not (is-Undefined!404 lt!82625)) (not (is-MissingVacant!404 lt!82625)) (not (is-MissingZero!404 lt!82625)) (is-Found!404 lt!82625)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6248 (_ BitVec 32)) SeekEntryResult!404)

(assert (=> b!163008 (= lt!82625 (seekEntryOrOpen!0 key!828 (_keys!5150 thiss!1248) (mask!7988 thiss!1248)))))

(declare-fun b!163009 () Bool)

(declare-fun e!106945 () Bool)

(assert (=> b!163009 (= e!106945 (and e!106943 mapRes!6069))))

(declare-fun condMapEmpty!6069 () Bool)

(declare-fun mapDefault!6069 () ValueCell!1448)


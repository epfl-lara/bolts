; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16412 () Bool)

(assert start!16412)

(declare-fun b!163320 () Bool)

(declare-fun b_free!3793 () Bool)

(declare-fun b_next!3793 () Bool)

(assert (=> b!163320 (= b_free!3793 (not b_next!3793))))

(declare-fun tp!13962 () Bool)

(declare-fun b_and!10225 () Bool)

(assert (=> b!163320 (= tp!13962 b_and!10225)))

(declare-fun b!163315 () Bool)

(declare-fun e!107161 () Bool)

(declare-fun e!107158 () Bool)

(assert (=> b!163315 (= e!107161 e!107158)))

(declare-fun res!77314 () Bool)

(assert (=> b!163315 (=> (not res!77314) (not e!107158))))

(declare-datatypes ((SeekEntryResult!409 0))(
  ( (MissingZero!409 (index!3804 (_ BitVec 32))) (Found!409 (index!3805 (_ BitVec 32))) (Intermediate!409 (undefined!1221 Bool) (index!3806 (_ BitVec 32)) (x!18115 (_ BitVec 32))) (Undefined!409) (MissingVacant!409 (index!3807 (_ BitVec 32))) )
))
(declare-fun lt!82691 () SeekEntryResult!409)

(assert (=> b!163315 (= res!77314 (and (not (is-Undefined!409 lt!82691)) (not (is-MissingVacant!409 lt!82691)) (not (is-MissingZero!409 lt!82691)) (is-Found!409 lt!82691)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4441 0))(
  ( (V!4442 (val!1842 Int)) )
))
(declare-datatypes ((ValueCell!1454 0))(
  ( (ValueCellFull!1454 (v!3703 V!4441)) (EmptyCell!1454) )
))
(declare-datatypes ((array!6276 0))(
  ( (array!6277 (arr!2978 (Array (_ BitVec 32) (_ BitVec 64))) (size!3264 (_ BitVec 32))) )
))
(declare-datatypes ((array!6278 0))(
  ( (array!6279 (arr!2979 (Array (_ BitVec 32) ValueCell!1454)) (size!3265 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1816 0))(
  ( (LongMapFixedSize!1817 (defaultEntry!3350 Int) (mask!8006 (_ BitVec 32)) (extraKeys!3091 (_ BitVec 32)) (zeroValue!3193 V!4441) (minValue!3193 V!4441) (_size!957 (_ BitVec 32)) (_keys!5161 array!6276) (_values!3333 array!6278) (_vacant!957 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1816)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6276 (_ BitVec 32)) SeekEntryResult!409)

(assert (=> b!163315 (= lt!82691 (seekEntryOrOpen!0 key!828 (_keys!5161 thiss!1248) (mask!8006 thiss!1248)))))

(declare-fun mapIsEmpty!6094 () Bool)

(declare-fun mapRes!6094 () Bool)

(assert (=> mapIsEmpty!6094 mapRes!6094))

(declare-fun mapNonEmpty!6094 () Bool)

(declare-fun tp!13963 () Bool)

(declare-fun e!107157 () Bool)

(assert (=> mapNonEmpty!6094 (= mapRes!6094 (and tp!13963 e!107157))))

(declare-fun mapRest!6094 () (Array (_ BitVec 32) ValueCell!1454))

(declare-fun mapValue!6094 () ValueCell!1454)

(declare-fun mapKey!6094 () (_ BitVec 32))

(assert (=> mapNonEmpty!6094 (= (arr!2979 (_values!3333 thiss!1248)) (store mapRest!6094 mapKey!6094 mapValue!6094))))

(declare-fun b!163316 () Bool)

(declare-fun res!77311 () Bool)

(assert (=> b!163316 (=> (not res!77311) (not e!107158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163316 (= res!77311 (validMask!0 (mask!8006 thiss!1248)))))

(declare-fun b!163318 () Bool)

(assert (=> b!163318 (= e!107158 (and (= (size!3265 (_values!3333 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8006 thiss!1248))) (= (size!3264 (_keys!5161 thiss!1248)) (size!3265 (_values!3333 thiss!1248))) (bvsge (mask!8006 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3091 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!163319 () Bool)

(declare-fun tp_is_empty!3595 () Bool)

(assert (=> b!163319 (= e!107157 tp_is_empty!3595)))

(declare-fun e!107163 () Bool)

(declare-fun e!107160 () Bool)

(declare-fun array_inv!1897 (array!6276) Bool)

(declare-fun array_inv!1898 (array!6278) Bool)

(assert (=> b!163320 (= e!107163 (and tp!13962 tp_is_empty!3595 (array_inv!1897 (_keys!5161 thiss!1248)) (array_inv!1898 (_values!3333 thiss!1248)) e!107160))))

(declare-fun b!163321 () Bool)

(declare-fun res!77313 () Bool)

(assert (=> b!163321 (=> (not res!77313) (not e!107161))))

(assert (=> b!163321 (= res!77313 (not (= key!828 (bvneg key!828))))))

(declare-fun b!163322 () Bool)

(declare-fun e!107159 () Bool)

(assert (=> b!163322 (= e!107159 tp_is_empty!3595)))

(declare-fun b!163317 () Bool)

(assert (=> b!163317 (= e!107160 (and e!107159 mapRes!6094))))

(declare-fun condMapEmpty!6094 () Bool)

(declare-fun mapDefault!6094 () ValueCell!1454)


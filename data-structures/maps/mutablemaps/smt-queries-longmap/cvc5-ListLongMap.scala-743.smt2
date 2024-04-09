; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17262 () Bool)

(assert start!17262)

(declare-fun b!172999 () Bool)

(declare-fun b_free!4297 () Bool)

(declare-fun b_next!4297 () Bool)

(assert (=> b!172999 (= b_free!4297 (not b_next!4297))))

(declare-fun tp!15548 () Bool)

(declare-fun b_and!10755 () Bool)

(assert (=> b!172999 (= tp!15548 b_and!10755)))

(declare-fun b!172995 () Bool)

(declare-fun e!114275 () Bool)

(declare-datatypes ((V!5073 0))(
  ( (V!5074 (val!2079 Int)) )
))
(declare-datatypes ((ValueCell!1691 0))(
  ( (ValueCellFull!1691 (v!3943 V!5073)) (EmptyCell!1691) )
))
(declare-datatypes ((array!7264 0))(
  ( (array!7265 (arr!3452 (Array (_ BitVec 32) (_ BitVec 64))) (size!3751 (_ BitVec 32))) )
))
(declare-datatypes ((array!7266 0))(
  ( (array!7267 (arr!3453 (Array (_ BitVec 32) ValueCell!1691)) (size!3752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2290 0))(
  ( (LongMapFixedSize!2291 (defaultEntry!3591 Int) (mask!8455 (_ BitVec 32)) (extraKeys!3330 (_ BitVec 32)) (zeroValue!3432 V!5073) (minValue!3434 V!5073) (_size!1194 (_ BitVec 32)) (_keys!5430 array!7264) (_values!3574 array!7266) (_vacant!1194 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2290)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7264 (_ BitVec 32)) Bool)

(assert (=> b!172995 (= e!114275 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5430 thiss!1248) (mask!8455 thiss!1248))))))

(declare-fun b!172996 () Bool)

(declare-fun res!82148 () Bool)

(assert (=> b!172996 (=> (not res!82148) (not e!114275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172996 (= res!82148 (validMask!0 (mask!8455 thiss!1248)))))

(declare-fun b!172997 () Bool)

(declare-fun res!82149 () Bool)

(assert (=> b!172997 (=> (not res!82149) (not e!114275))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172997 (= res!82149 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172998 () Bool)

(declare-fun e!114273 () Bool)

(declare-fun tp_is_empty!4069 () Bool)

(assert (=> b!172998 (= e!114273 tp_is_empty!4069)))

(declare-fun mapNonEmpty!6924 () Bool)

(declare-fun mapRes!6924 () Bool)

(declare-fun tp!15549 () Bool)

(declare-fun e!114274 () Bool)

(assert (=> mapNonEmpty!6924 (= mapRes!6924 (and tp!15549 e!114274))))

(declare-fun mapKey!6924 () (_ BitVec 32))

(declare-fun mapValue!6924 () ValueCell!1691)

(declare-fun mapRest!6924 () (Array (_ BitVec 32) ValueCell!1691))

(assert (=> mapNonEmpty!6924 (= (arr!3453 (_values!3574 thiss!1248)) (store mapRest!6924 mapKey!6924 mapValue!6924))))

(declare-fun e!114277 () Bool)

(declare-fun e!114276 () Bool)

(declare-fun array_inv!2199 (array!7264) Bool)

(declare-fun array_inv!2200 (array!7266) Bool)

(assert (=> b!172999 (= e!114277 (and tp!15548 tp_is_empty!4069 (array_inv!2199 (_keys!5430 thiss!1248)) (array_inv!2200 (_values!3574 thiss!1248)) e!114276))))

(declare-fun b!173000 () Bool)

(assert (=> b!173000 (= e!114274 tp_is_empty!4069)))

(declare-fun b!173001 () Bool)

(declare-fun res!82147 () Bool)

(assert (=> b!173001 (=> (not res!82147) (not e!114275))))

(assert (=> b!173001 (= res!82147 (and (= (size!3752 (_values!3574 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8455 thiss!1248))) (= (size!3751 (_keys!5430 thiss!1248)) (size!3752 (_values!3574 thiss!1248))) (bvsge (mask!8455 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3330 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3330 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3330 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3330 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!3330 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3330 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!3330 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!173002 () Bool)

(assert (=> b!173002 (= e!114276 (and e!114273 mapRes!6924))))

(declare-fun condMapEmpty!6924 () Bool)

(declare-fun mapDefault!6924 () ValueCell!1691)


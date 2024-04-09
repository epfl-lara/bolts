; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17266 () Bool)

(assert start!17266)

(declare-fun b!173046 () Bool)

(declare-fun b_free!4301 () Bool)

(declare-fun b_next!4301 () Bool)

(assert (=> b!173046 (= b_free!4301 (not b_next!4301))))

(declare-fun tp!15561 () Bool)

(declare-fun b_and!10759 () Bool)

(assert (=> b!173046 (= tp!15561 b_and!10759)))

(declare-fun b!173043 () Bool)

(declare-fun e!114311 () Bool)

(declare-datatypes ((V!5077 0))(
  ( (V!5078 (val!2081 Int)) )
))
(declare-datatypes ((ValueCell!1693 0))(
  ( (ValueCellFull!1693 (v!3945 V!5077)) (EmptyCell!1693) )
))
(declare-datatypes ((array!7272 0))(
  ( (array!7273 (arr!3456 (Array (_ BitVec 32) (_ BitVec 64))) (size!3755 (_ BitVec 32))) )
))
(declare-datatypes ((array!7274 0))(
  ( (array!7275 (arr!3457 (Array (_ BitVec 32) ValueCell!1693)) (size!3756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2294 0))(
  ( (LongMapFixedSize!2295 (defaultEntry!3593 Int) (mask!8457 (_ BitVec 32)) (extraKeys!3332 (_ BitVec 32)) (zeroValue!3434 V!5077) (minValue!3436 V!5077) (_size!1196 (_ BitVec 32)) (_keys!5432 array!7272) (_values!3576 array!7274) (_vacant!1196 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2294)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7272 (_ BitVec 32)) Bool)

(assert (=> b!173043 (= e!114311 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5432 thiss!1248) (mask!8457 thiss!1248))))))

(declare-fun mapIsEmpty!6930 () Bool)

(declare-fun mapRes!6930 () Bool)

(assert (=> mapIsEmpty!6930 mapRes!6930))

(declare-fun b!173044 () Bool)

(declare-fun res!82171 () Bool)

(assert (=> b!173044 (=> (not res!82171) (not e!114311))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!173044 (= res!82171 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173045 () Bool)

(declare-fun res!82172 () Bool)

(assert (=> b!173045 (=> (not res!82172) (not e!114311))))

(assert (=> b!173045 (= res!82172 (and (= (size!3756 (_values!3576 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8457 thiss!1248))) (= (size!3755 (_keys!5432 thiss!1248)) (size!3756 (_values!3576 thiss!1248))) (bvsge (mask!8457 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3332 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3332 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3332 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3332 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!3332 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3332 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!3332 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun tp_is_empty!4073 () Bool)

(declare-fun e!114309 () Bool)

(declare-fun e!114308 () Bool)

(declare-fun array_inv!2203 (array!7272) Bool)

(declare-fun array_inv!2204 (array!7274) Bool)

(assert (=> b!173046 (= e!114309 (and tp!15561 tp_is_empty!4073 (array_inv!2203 (_keys!5432 thiss!1248)) (array_inv!2204 (_values!3576 thiss!1248)) e!114308))))

(declare-fun b!173047 () Bool)

(declare-fun e!114312 () Bool)

(assert (=> b!173047 (= e!114312 tp_is_empty!4073)))

(declare-fun b!173048 () Bool)

(declare-fun e!114310 () Bool)

(assert (=> b!173048 (= e!114308 (and e!114310 mapRes!6930))))

(declare-fun condMapEmpty!6930 () Bool)

(declare-fun mapDefault!6930 () ValueCell!1693)


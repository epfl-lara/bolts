; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17242 () Bool)

(assert start!17242)

(declare-fun b!172788 () Bool)

(declare-fun b_free!4277 () Bool)

(declare-fun b_next!4277 () Bool)

(assert (=> b!172788 (= b_free!4277 (not b_next!4277))))

(declare-fun tp!15489 () Bool)

(declare-fun b_and!10735 () Bool)

(assert (=> b!172788 (= tp!15489 b_and!10735)))

(declare-fun b!172783 () Bool)

(declare-fun res!82056 () Bool)

(declare-fun e!114096 () Bool)

(assert (=> b!172783 (=> (not res!82056) (not e!114096))))

(declare-datatypes ((V!5045 0))(
  ( (V!5046 (val!2069 Int)) )
))
(declare-datatypes ((ValueCell!1681 0))(
  ( (ValueCellFull!1681 (v!3933 V!5045)) (EmptyCell!1681) )
))
(declare-datatypes ((array!7224 0))(
  ( (array!7225 (arr!3432 (Array (_ BitVec 32) (_ BitVec 64))) (size!3731 (_ BitVec 32))) )
))
(declare-datatypes ((array!7226 0))(
  ( (array!7227 (arr!3433 (Array (_ BitVec 32) ValueCell!1681)) (size!3732 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2270 0))(
  ( (LongMapFixedSize!2271 (defaultEntry!3581 Int) (mask!8437 (_ BitVec 32)) (extraKeys!3320 (_ BitVec 32)) (zeroValue!3422 V!5045) (minValue!3424 V!5045) (_size!1184 (_ BitVec 32)) (_keys!5420 array!7224) (_values!3564 array!7226) (_vacant!1184 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2270)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172783 (= res!82056 (validMask!0 (mask!8437 thiss!1248)))))

(declare-fun res!82054 () Bool)

(assert (=> start!17242 (=> (not res!82054) (not e!114096))))

(declare-fun valid!954 (LongMapFixedSize!2270) Bool)

(assert (=> start!17242 (= res!82054 (valid!954 thiss!1248))))

(assert (=> start!17242 e!114096))

(declare-fun e!114094 () Bool)

(assert (=> start!17242 e!114094))

(assert (=> start!17242 true))

(declare-fun mapIsEmpty!6894 () Bool)

(declare-fun mapRes!6894 () Bool)

(assert (=> mapIsEmpty!6894 mapRes!6894))

(declare-fun b!172784 () Bool)

(declare-fun e!114095 () Bool)

(declare-fun e!114092 () Bool)

(assert (=> b!172784 (= e!114095 (and e!114092 mapRes!6894))))

(declare-fun condMapEmpty!6894 () Bool)

(declare-fun mapDefault!6894 () ValueCell!1681)


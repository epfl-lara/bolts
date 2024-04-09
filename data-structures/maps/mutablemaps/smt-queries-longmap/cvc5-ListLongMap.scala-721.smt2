; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16858 () Bool)

(assert start!16858)

(declare-fun b!169730 () Bool)

(declare-fun b_free!4165 () Bool)

(declare-fun b_next!4165 () Bool)

(assert (=> b!169730 (= b_free!4165 (not b_next!4165))))

(declare-fun tp!15100 () Bool)

(declare-fun b_and!10597 () Bool)

(assert (=> b!169730 (= tp!15100 b_and!10597)))

(declare-fun b!169724 () Bool)

(declare-fun e!111949 () Bool)

(declare-fun e!111954 () Bool)

(declare-fun mapRes!6673 () Bool)

(assert (=> b!169724 (= e!111949 (and e!111954 mapRes!6673))))

(declare-fun condMapEmpty!6673 () Bool)

(declare-datatypes ((V!4897 0))(
  ( (V!4898 (val!2013 Int)) )
))
(declare-datatypes ((ValueCell!1625 0))(
  ( (ValueCellFull!1625 (v!3874 V!4897)) (EmptyCell!1625) )
))
(declare-datatypes ((array!6972 0))(
  ( (array!6973 (arr!3320 (Array (_ BitVec 32) (_ BitVec 64))) (size!3609 (_ BitVec 32))) )
))
(declare-datatypes ((array!6974 0))(
  ( (array!6975 (arr!3321 (Array (_ BitVec 32) ValueCell!1625)) (size!3610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2158 0))(
  ( (LongMapFixedSize!2159 (defaultEntry!3521 Int) (mask!8314 (_ BitVec 32)) (extraKeys!3262 (_ BitVec 32)) (zeroValue!3364 V!4897) (minValue!3364 V!4897) (_size!1128 (_ BitVec 32)) (_keys!5347 array!6972) (_values!3504 array!6974) (_vacant!1128 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2158)

(declare-fun mapDefault!6673 () ValueCell!1625)


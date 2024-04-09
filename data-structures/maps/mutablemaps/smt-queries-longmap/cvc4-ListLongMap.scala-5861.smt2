; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75728 () Bool)

(assert start!75728)

(declare-fun b!889904 () Bool)

(declare-fun b_free!15671 () Bool)

(declare-fun b_next!15671 () Bool)

(assert (=> b!889904 (= b_free!15671 (not b_next!15671))))

(declare-fun tp!54982 () Bool)

(declare-fun b_and!25929 () Bool)

(assert (=> b!889904 (= tp!54982 b_and!25929)))

(declare-fun b!889899 () Bool)

(declare-fun e!496226 () Bool)

(declare-fun e!496220 () Bool)

(declare-fun mapRes!28553 () Bool)

(assert (=> b!889899 (= e!496226 (and e!496220 mapRes!28553))))

(declare-fun condMapEmpty!28553 () Bool)

(declare-datatypes ((array!51964 0))(
  ( (array!51965 (arr!24984 (Array (_ BitVec 32) (_ BitVec 64))) (size!25429 (_ BitVec 32))) )
))
(declare-datatypes ((V!28963 0))(
  ( (V!28964 (val!9050 Int)) )
))
(declare-datatypes ((ValueCell!8518 0))(
  ( (ValueCellFull!8518 (v!11522 V!28963)) (EmptyCell!8518) )
))
(declare-datatypes ((array!51966 0))(
  ( (array!51967 (arr!24985 (Array (_ BitVec 32) ValueCell!8518)) (size!25430 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4052 0))(
  ( (LongMapFixedSize!4053 (defaultEntry!5223 Int) (mask!25679 (_ BitVec 32)) (extraKeys!4917 (_ BitVec 32)) (zeroValue!5021 V!28963) (minValue!5021 V!28963) (_size!2081 (_ BitVec 32)) (_keys!9902 array!51964) (_values!5208 array!51966) (_vacant!2081 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4052)

(declare-fun mapDefault!28553 () ValueCell!8518)


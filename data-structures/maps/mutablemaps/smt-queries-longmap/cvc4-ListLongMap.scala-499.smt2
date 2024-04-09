; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11328 () Bool)

(assert start!11328)

(declare-fun b!93625 () Bool)

(declare-fun b_free!2385 () Bool)

(declare-fun b_next!2385 () Bool)

(assert (=> b!93625 (= b_free!2385 (not b_next!2385))))

(declare-fun tp!9419 () Bool)

(declare-fun b_and!5709 () Bool)

(assert (=> b!93625 (= tp!9419 b_and!5709)))

(declare-fun b!93620 () Bool)

(declare-fun b_free!2387 () Bool)

(declare-fun b_next!2387 () Bool)

(assert (=> b!93620 (= b_free!2387 (not b_next!2387))))

(declare-fun tp!9420 () Bool)

(declare-fun b_and!5711 () Bool)

(assert (=> b!93620 (= tp!9420 b_and!5711)))

(declare-fun res!47473 () Bool)

(declare-fun e!61135 () Bool)

(assert (=> start!11328 (=> (not res!47473) (not e!61135))))

(declare-datatypes ((V!3125 0))(
  ( (V!3126 (val!1349 Int)) )
))
(declare-datatypes ((array!4190 0))(
  ( (array!4191 (arr!1992 (Array (_ BitVec 32) (_ BitVec 64))) (size!2240 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!961 0))(
  ( (ValueCellFull!961 (v!2756 V!3125)) (EmptyCell!961) )
))
(declare-datatypes ((array!4192 0))(
  ( (array!4193 (arr!1993 (Array (_ BitVec 32) ValueCell!961)) (size!2241 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!830 0))(
  ( (LongMapFixedSize!831 (defaultEntry!2432 Int) (mask!6504 (_ BitVec 32)) (extraKeys!2261 (_ BitVec 32)) (zeroValue!2319 V!3125) (minValue!2319 V!3125) (_size!464 (_ BitVec 32)) (_keys!4114 array!4190) (_values!2415 array!4192) (_vacant!464 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!634 0))(
  ( (Cell!635 (v!2757 LongMapFixedSize!830)) )
))
(declare-datatypes ((LongMap!634 0))(
  ( (LongMap!635 (underlying!328 Cell!634)) )
))
(declare-fun thiss!992 () LongMap!634)

(declare-fun valid!372 (LongMap!634) Bool)

(assert (=> start!11328 (= res!47473 (valid!372 thiss!992))))

(assert (=> start!11328 e!61135))

(declare-fun e!61142 () Bool)

(assert (=> start!11328 e!61142))

(assert (=> start!11328 true))

(declare-fun e!61139 () Bool)

(assert (=> start!11328 e!61139))

(declare-fun b!93608 () Bool)

(declare-fun e!61130 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!93608 (= e!61130 (not (validMask!0 (mask!6504 (v!2757 (underlying!328 thiss!992))))))))

(declare-fun b!93609 () Bool)

(declare-fun e!61140 () Bool)

(assert (=> b!93609 (= e!61142 e!61140)))

(declare-fun b!93610 () Bool)

(declare-fun e!61141 () Bool)

(declare-fun tp_is_empty!2609 () Bool)

(assert (=> b!93610 (= e!61141 tp_is_empty!2609)))

(declare-fun b!93611 () Bool)

(declare-fun res!47474 () Bool)

(assert (=> b!93611 (=> (not res!47474) (not e!61135))))

(declare-fun newMap!16 () LongMapFixedSize!830)

(declare-fun valid!373 (LongMapFixedSize!830) Bool)

(assert (=> b!93611 (= res!47474 (valid!373 newMap!16))))

(declare-fun b!93612 () Bool)

(declare-fun e!61129 () Bool)

(declare-fun e!61133 () Bool)

(declare-fun mapRes!3660 () Bool)

(assert (=> b!93612 (= e!61129 (and e!61133 mapRes!3660))))

(declare-fun condMapEmpty!3660 () Bool)

(declare-fun mapDefault!3660 () ValueCell!961)


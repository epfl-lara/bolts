; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16884 () Bool)

(assert start!16884)

(declare-fun b!169905 () Bool)

(declare-fun b_free!4175 () Bool)

(declare-fun b_next!4175 () Bool)

(assert (=> b!169905 (= b_free!4175 (not b_next!4175))))

(declare-fun tp!15133 () Bool)

(declare-fun b_and!10607 () Bool)

(assert (=> b!169905 (= tp!15133 b_and!10607)))

(declare-fun b!169899 () Bool)

(declare-fun e!112080 () Bool)

(declare-fun tp_is_empty!3947 () Bool)

(assert (=> b!169899 (= e!112080 tp_is_empty!3947)))

(declare-fun b!169900 () Bool)

(declare-fun e!112082 () Bool)

(declare-datatypes ((V!4909 0))(
  ( (V!4910 (val!2018 Int)) )
))
(declare-datatypes ((ValueCell!1630 0))(
  ( (ValueCellFull!1630 (v!3879 V!4909)) (EmptyCell!1630) )
))
(declare-datatypes ((array!6994 0))(
  ( (array!6995 (arr!3330 (Array (_ BitVec 32) (_ BitVec 64))) (size!3620 (_ BitVec 32))) )
))
(declare-datatypes ((array!6996 0))(
  ( (array!6997 (arr!3331 (Array (_ BitVec 32) ValueCell!1630)) (size!3621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2168 0))(
  ( (LongMapFixedSize!2169 (defaultEntry!3526 Int) (mask!8323 (_ BitVec 32)) (extraKeys!3267 (_ BitVec 32)) (zeroValue!3369 V!4909) (minValue!3369 V!4909) (_size!1133 (_ BitVec 32)) (_keys!5353 array!6994) (_values!3509 array!6996) (_vacant!1133 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2168)

(assert (=> b!169900 (= e!112082 (and (= (size!3621 (_values!3509 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8323 thiss!1248))) (not (= (size!3620 (_keys!5353 thiss!1248)) (size!3621 (_values!3509 thiss!1248))))))))

(declare-fun b!169901 () Bool)

(declare-fun e!112083 () Bool)

(declare-fun e!112081 () Bool)

(declare-fun mapRes!6692 () Bool)

(assert (=> b!169901 (= e!112083 (and e!112081 mapRes!6692))))

(declare-fun condMapEmpty!6692 () Bool)

(declare-fun mapDefault!6692 () ValueCell!1630)


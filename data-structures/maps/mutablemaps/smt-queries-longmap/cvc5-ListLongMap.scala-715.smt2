; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16806 () Bool)

(assert start!16806)

(declare-fun b!169078 () Bool)

(declare-fun b_free!4099 () Bool)

(declare-fun b_next!4099 () Bool)

(assert (=> b!169078 (= b_free!4099 (not b_next!4099))))

(declare-fun tp!14901 () Bool)

(declare-fun b_and!10531 () Bool)

(assert (=> b!169078 (= tp!14901 b_and!10531)))

(declare-fun b!169079 () Bool)

(declare-fun b_free!4101 () Bool)

(declare-fun b_next!4101 () Bool)

(assert (=> b!169079 (= b_free!4101 (not b_next!4101))))

(declare-fun tp!14902 () Bool)

(declare-fun b_and!10533 () Bool)

(assert (=> b!169079 (= tp!14902 b_and!10533)))

(declare-fun b!169077 () Bool)

(declare-fun e!111316 () Bool)

(declare-fun e!111311 () Bool)

(declare-fun mapRes!6572 () Bool)

(assert (=> b!169077 (= e!111316 (and e!111311 mapRes!6572))))

(declare-fun condMapEmpty!6573 () Bool)

(declare-datatypes ((V!4849 0))(
  ( (V!4850 (val!1995 Int)) )
))
(declare-datatypes ((ValueCell!1607 0))(
  ( (ValueCellFull!1607 (v!3856 V!4849)) (EmptyCell!1607) )
))
(declare-datatypes ((array!6898 0))(
  ( (array!6899 (arr!3284 (Array (_ BitVec 32) (_ BitVec 64))) (size!3572 (_ BitVec 32))) )
))
(declare-datatypes ((array!6900 0))(
  ( (array!6901 (arr!3285 (Array (_ BitVec 32) ValueCell!1607)) (size!3573 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2122 0))(
  ( (LongMapFixedSize!2123 (defaultEntry!3503 Int) (mask!8282 (_ BitVec 32)) (extraKeys!3244 (_ BitVec 32)) (zeroValue!3346 V!4849) (minValue!3346 V!4849) (_size!1110 (_ BitVec 32)) (_keys!5328 array!6898) (_values!3486 array!6900) (_vacant!1110 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2122)

(declare-fun mapDefault!6572 () ValueCell!1607)


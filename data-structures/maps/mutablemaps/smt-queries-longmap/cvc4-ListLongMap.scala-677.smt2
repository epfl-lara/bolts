; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16582 () Bool)

(assert start!16582)

(declare-fun b!165031 () Bool)

(declare-fun b_free!3875 () Bool)

(declare-fun b_next!3875 () Bool)

(assert (=> b!165031 (= b_free!3875 (not b_next!3875))))

(declare-fun tp!14225 () Bool)

(declare-fun b_and!10307 () Bool)

(assert (=> b!165031 (= tp!14225 b_and!10307)))

(declare-fun b!165030 () Bool)

(declare-fun e!108276 () Bool)

(declare-fun tp_is_empty!3677 () Bool)

(assert (=> b!165030 (= e!108276 tp_is_empty!3677)))

(declare-fun e!108273 () Bool)

(declare-fun e!108277 () Bool)

(declare-datatypes ((V!4549 0))(
  ( (V!4550 (val!1883 Int)) )
))
(declare-datatypes ((ValueCell!1495 0))(
  ( (ValueCellFull!1495 (v!3744 V!4549)) (EmptyCell!1495) )
))
(declare-datatypes ((array!6450 0))(
  ( (array!6451 (arr!3060 (Array (_ BitVec 32) (_ BitVec 64))) (size!3348 (_ BitVec 32))) )
))
(declare-datatypes ((array!6452 0))(
  ( (array!6453 (arr!3061 (Array (_ BitVec 32) ValueCell!1495)) (size!3349 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1898 0))(
  ( (LongMapFixedSize!1899 (defaultEntry!3391 Int) (mask!8094 (_ BitVec 32)) (extraKeys!3132 (_ BitVec 32)) (zeroValue!3234 V!4549) (minValue!3234 V!4549) (_size!998 (_ BitVec 32)) (_keys!5216 array!6450) (_values!3374 array!6452) (_vacant!998 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1898)

(declare-fun array_inv!1955 (array!6450) Bool)

(declare-fun array_inv!1956 (array!6452) Bool)

(assert (=> b!165031 (= e!108273 (and tp!14225 tp_is_empty!3677 (array_inv!1955 (_keys!5216 thiss!1248)) (array_inv!1956 (_values!3374 thiss!1248)) e!108277))))

(declare-fun b!165032 () Bool)

(declare-fun e!108275 () Bool)

(declare-fun mapRes!6234 () Bool)

(assert (=> b!165032 (= e!108277 (and e!108275 mapRes!6234))))

(declare-fun condMapEmpty!6234 () Bool)

(declare-fun mapDefault!6234 () ValueCell!1495)


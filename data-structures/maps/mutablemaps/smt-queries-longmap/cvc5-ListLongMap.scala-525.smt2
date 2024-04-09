; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13152 () Bool)

(assert start!13152)

(declare-fun b!115499 () Bool)

(declare-fun b_free!2689 () Bool)

(declare-fun b_next!2689 () Bool)

(assert (=> b!115499 (= b_free!2689 (not b_next!2689))))

(declare-fun tp!10432 () Bool)

(declare-fun b_and!7181 () Bool)

(assert (=> b!115499 (= tp!10432 b_and!7181)))

(declare-fun b!115506 () Bool)

(declare-fun b_free!2691 () Bool)

(declare-fun b_next!2691 () Bool)

(assert (=> b!115506 (= b_free!2691 (not b_next!2691))))

(declare-fun tp!10429 () Bool)

(declare-fun b_and!7183 () Bool)

(assert (=> b!115506 (= tp!10429 b_and!7183)))

(declare-fun b!115493 () Bool)

(declare-fun res!56679 () Bool)

(declare-fun e!75298 () Bool)

(assert (=> b!115493 (=> (not res!56679) (not e!75298))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3329 0))(
  ( (V!3330 (val!1425 Int)) )
))
(declare-datatypes ((array!4524 0))(
  ( (array!4525 (arr!2144 (Array (_ BitVec 32) (_ BitVec 64))) (size!2404 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1037 0))(
  ( (ValueCellFull!1037 (v!3016 V!3329)) (EmptyCell!1037) )
))
(declare-datatypes ((array!4526 0))(
  ( (array!4527 (arr!2145 (Array (_ BitVec 32) ValueCell!1037)) (size!2405 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!982 0))(
  ( (LongMapFixedSize!983 (defaultEntry!2700 Int) (mask!6906 (_ BitVec 32)) (extraKeys!2489 (_ BitVec 32)) (zeroValue!2567 V!3329) (minValue!2567 V!3329) (_size!540 (_ BitVec 32)) (_keys!4422 array!4524) (_values!2683 array!4526) (_vacant!540 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!778 0))(
  ( (Cell!779 (v!3017 LongMapFixedSize!982)) )
))
(declare-datatypes ((LongMap!778 0))(
  ( (LongMap!779 (underlying!400 Cell!778)) )
))
(declare-fun thiss!992 () LongMap!778)

(assert (=> b!115493 (= res!56679 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2404 (_keys!4422 (v!3017 (underlying!400 thiss!992)))))))))

(declare-fun res!56680 () Bool)

(assert (=> start!13152 (=> (not res!56680) (not e!75298))))

(declare-fun valid!456 (LongMap!778) Bool)

(assert (=> start!13152 (= res!56680 (valid!456 thiss!992))))

(assert (=> start!13152 e!75298))

(declare-fun e!75300 () Bool)

(assert (=> start!13152 e!75300))

(assert (=> start!13152 true))

(declare-fun e!75289 () Bool)

(assert (=> start!13152 e!75289))

(declare-fun mapIsEmpty!4215 () Bool)

(declare-fun mapRes!4215 () Bool)

(assert (=> mapIsEmpty!4215 mapRes!4215))

(declare-fun b!115494 () Bool)

(declare-fun e!75295 () Bool)

(assert (=> b!115494 (= e!75300 e!75295)))

(declare-fun b!115495 () Bool)

(declare-fun e!75292 () Bool)

(declare-fun e!75293 () Bool)

(assert (=> b!115495 (= e!75292 (and e!75293 mapRes!4215))))

(declare-fun condMapEmpty!4215 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!982)

(declare-fun mapDefault!4215 () ValueCell!1037)


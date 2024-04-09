; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18080 () Bool)

(assert start!18080)

(declare-fun b!179871 () Bool)

(declare-fun b_free!4439 () Bool)

(declare-fun b_next!4439 () Bool)

(assert (=> b!179871 (= b_free!4439 (not b_next!4439))))

(declare-fun tp!16048 () Bool)

(declare-fun b_and!10991 () Bool)

(assert (=> b!179871 (= tp!16048 b_and!10991)))

(declare-fun b!179865 () Bool)

(declare-fun res!85226 () Bool)

(declare-fun e!118464 () Bool)

(assert (=> b!179865 (=> (not res!85226) (not e!118464))))

(declare-datatypes ((V!5261 0))(
  ( (V!5262 (val!2150 Int)) )
))
(declare-datatypes ((ValueCell!1762 0))(
  ( (ValueCellFull!1762 (v!4035 V!5261)) (EmptyCell!1762) )
))
(declare-datatypes ((array!7590 0))(
  ( (array!7591 (arr!3594 (Array (_ BitVec 32) (_ BitVec 64))) (size!3902 (_ BitVec 32))) )
))
(declare-datatypes ((array!7592 0))(
  ( (array!7593 (arr!3595 (Array (_ BitVec 32) ValueCell!1762)) (size!3903 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2432 0))(
  ( (LongMapFixedSize!2433 (defaultEntry!3692 Int) (mask!8683 (_ BitVec 32)) (extraKeys!3429 (_ BitVec 32)) (zeroValue!3533 V!5261) (minValue!3533 V!5261) (_size!1265 (_ BitVec 32)) (_keys!5583 array!7590) (_values!3675 array!7592) (_vacant!1265 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2432)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3336 0))(
  ( (tuple2!3337 (_1!1678 (_ BitVec 64)) (_2!1678 V!5261)) )
))
(declare-datatypes ((List!2304 0))(
  ( (Nil!2301) (Cons!2300 (h!2925 tuple2!3336) (t!7160 List!2304)) )
))
(declare-datatypes ((ListLongMap!2277 0))(
  ( (ListLongMap!2278 (toList!1154 List!2304)) )
))
(declare-fun contains!1224 (ListLongMap!2277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!801 (array!7590 array!7592 (_ BitVec 32) (_ BitVec 32) V!5261 V!5261 (_ BitVec 32) Int) ListLongMap!2277)

(assert (=> b!179865 (= res!85226 (not (contains!1224 (getCurrentListMap!801 (_keys!5583 thiss!1248) (_values!3675 thiss!1248) (mask!8683 thiss!1248) (extraKeys!3429 thiss!1248) (zeroValue!3533 thiss!1248) (minValue!3533 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3692 thiss!1248)) key!828)))))

(declare-fun b!179866 () Bool)

(declare-fun res!85230 () Bool)

(assert (=> b!179866 (=> (not res!85230) (not e!118464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179866 (= res!85230 (validMask!0 (mask!8683 thiss!1248)))))

(declare-fun b!179867 () Bool)

(declare-fun e!118465 () Bool)

(declare-fun e!118463 () Bool)

(declare-fun mapRes!7210 () Bool)

(assert (=> b!179867 (= e!118465 (and e!118463 mapRes!7210))))

(declare-fun condMapEmpty!7210 () Bool)

(declare-fun mapDefault!7210 () ValueCell!1762)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75824 () Bool)

(assert start!75824)

(declare-fun b!891407 () Bool)

(declare-fun b_free!15767 () Bool)

(declare-fun b_next!15767 () Bool)

(assert (=> b!891407 (= b_free!15767 (not b_next!15767))))

(declare-fun tp!55271 () Bool)

(declare-fun b_and!26025 () Bool)

(assert (=> b!891407 (= tp!55271 b_and!26025)))

(declare-fun b!891398 () Bool)

(declare-fun e!497464 () Bool)

(assert (=> b!891398 (= e!497464 true)))

(declare-fun lt!402693 () Bool)

(declare-datatypes ((V!29091 0))(
  ( (V!29092 (val!9098 Int)) )
))
(declare-datatypes ((tuple2!11976 0))(
  ( (tuple2!11977 (_1!5998 (_ BitVec 64)) (_2!5998 V!29091)) )
))
(declare-datatypes ((List!17829 0))(
  ( (Nil!17826) (Cons!17825 (h!18956 tuple2!11976) (t!25136 List!17829)) )
))
(declare-datatypes ((ListLongMap!10687 0))(
  ( (ListLongMap!10688 (toList!5359 List!17829)) )
))
(declare-fun lt!402692 () ListLongMap!10687)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4336 (ListLongMap!10687 (_ BitVec 64)) Bool)

(assert (=> b!891398 (= lt!402693 (contains!4336 lt!402692 key!785))))

(declare-fun b!891399 () Bool)

(declare-fun res!604053 () Bool)

(assert (=> b!891399 (=> res!604053 e!497464)))

(declare-datatypes ((array!52156 0))(
  ( (array!52157 (arr!25080 (Array (_ BitVec 32) (_ BitVec 64))) (size!25525 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8566 0))(
  ( (ValueCellFull!8566 (v!11570 V!29091)) (EmptyCell!8566) )
))
(declare-datatypes ((array!52158 0))(
  ( (array!52159 (arr!25081 (Array (_ BitVec 32) ValueCell!8566)) (size!25526 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4148 0))(
  ( (LongMapFixedSize!4149 (defaultEntry!5271 Int) (mask!25759 (_ BitVec 32)) (extraKeys!4965 (_ BitVec 32)) (zeroValue!5069 V!29091) (minValue!5069 V!29091) (_size!2129 (_ BitVec 32)) (_keys!9950 array!52156) (_values!5256 array!52158) (_vacant!2129 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4148)

(assert (=> b!891399 (= res!604053 (or (not (= (size!25526 (_values!5256 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25759 thiss!1181)))) (not (= (size!25525 (_keys!9950 thiss!1181)) (size!25526 (_values!5256 thiss!1181)))) (bvslt (mask!25759 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4965 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4965 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891400 () Bool)

(declare-fun e!497468 () Bool)

(declare-fun e!497461 () Bool)

(declare-fun mapRes!28697 () Bool)

(assert (=> b!891400 (= e!497468 (and e!497461 mapRes!28697))))

(declare-fun condMapEmpty!28697 () Bool)

(declare-fun mapDefault!28697 () ValueCell!8566)


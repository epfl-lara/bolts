; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2948 () Bool)

(assert start!2948)

(declare-fun b!16880 () Bool)

(declare-fun b_free!587 () Bool)

(declare-fun b_next!587 () Bool)

(assert (=> b!16880 (= b_free!587 (not b_next!587))))

(declare-fun tp!2947 () Bool)

(declare-fun b_and!1231 () Bool)

(assert (=> b!16880 (= tp!2947 b_and!1231)))

(declare-fun b!16874 () Bool)

(declare-fun e!10523 () Bool)

(declare-fun e!10528 () Bool)

(declare-fun mapRes!707 () Bool)

(assert (=> b!16874 (= e!10523 (and e!10528 mapRes!707))))

(declare-fun condMapEmpty!707 () Bool)

(declare-datatypes ((V!959 0))(
  ( (V!960 (val!452 Int)) )
))
(declare-datatypes ((ValueCell!226 0))(
  ( (ValueCellFull!226 (v!1404 V!959)) (EmptyCell!226) )
))
(declare-datatypes ((array!897 0))(
  ( (array!898 (arr!431 (Array (_ BitVec 32) ValueCell!226)) (size!520 (_ BitVec 32))) )
))
(declare-datatypes ((array!899 0))(
  ( (array!900 (arr!432 (Array (_ BitVec 32) (_ BitVec 64))) (size!521 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!38 0))(
  ( (LongMapFixedSize!39 (defaultEntry!1629 Int) (mask!4539 (_ BitVec 32)) (extraKeys!1543 (_ BitVec 32)) (zeroValue!1566 V!959) (minValue!1566 V!959) (_size!50 (_ BitVec 32)) (_keys!3054 array!899) (_values!1627 array!897) (_vacant!50 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!38 0))(
  ( (Cell!39 (v!1405 LongMapFixedSize!38)) )
))
(declare-datatypes ((LongMap!38 0))(
  ( (LongMap!39 (underlying!30 Cell!38)) )
))
(declare-fun thiss!848 () LongMap!38)

(declare-fun mapDefault!707 () ValueCell!226)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3254 () Bool)

(assert start!3254)

(declare-fun b!19936 () Bool)

(declare-fun b_free!697 () Bool)

(declare-fun b_next!697 () Bool)

(assert (=> b!19936 (= b_free!697 (not b_next!697))))

(declare-fun tp!3313 () Bool)

(declare-fun b_and!1367 () Bool)

(assert (=> b!19936 (= tp!3313 b_and!1367)))

(declare-fun b!19935 () Bool)

(declare-fun e!12957 () Bool)

(declare-fun e!12954 () Bool)

(declare-fun mapRes!907 () Bool)

(assert (=> b!19935 (= e!12957 (and e!12954 mapRes!907))))

(declare-fun condMapEmpty!907 () Bool)

(declare-datatypes ((V!1107 0))(
  ( (V!1108 (val!507 Int)) )
))
(declare-datatypes ((ValueCell!281 0))(
  ( (ValueCellFull!281 (v!1531 V!1107)) (EmptyCell!281) )
))
(declare-datatypes ((array!1135 0))(
  ( (array!1136 (arr!541 (Array (_ BitVec 32) ValueCell!281)) (size!634 (_ BitVec 32))) )
))
(declare-datatypes ((array!1137 0))(
  ( (array!1138 (arr!542 (Array (_ BitVec 32) (_ BitVec 64))) (size!635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!148 0))(
  ( (LongMapFixedSize!149 (defaultEntry!1695 Int) (mask!4653 (_ BitVec 32)) (extraKeys!1603 (_ BitVec 32)) (zeroValue!1627 V!1107) (minValue!1627 V!1107) (_size!110 (_ BitVec 32)) (_keys!3121 array!1137) (_values!1689 array!1135) (_vacant!110 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!148 0))(
  ( (Cell!149 (v!1532 LongMapFixedSize!148)) )
))
(declare-datatypes ((LongMap!148 0))(
  ( (LongMap!149 (underlying!85 Cell!148)) )
))
(declare-fun thiss!938 () LongMap!148)

(declare-fun mapDefault!907 () ValueCell!281)


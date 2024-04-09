; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80504 () Bool)

(assert start!80504)

(declare-fun b!945102 () Bool)

(declare-fun b_free!18091 () Bool)

(declare-fun b_next!18091 () Bool)

(assert (=> b!945102 (= b_free!18091 (not b_next!18091))))

(declare-fun tp!62788 () Bool)

(declare-fun b_and!29529 () Bool)

(assert (=> b!945102 (= tp!62788 b_and!29529)))

(declare-fun b!945097 () Bool)

(declare-fun e!531570 () Bool)

(declare-fun e!531575 () Bool)

(declare-fun mapRes!32728 () Bool)

(assert (=> b!945097 (= e!531570 (and e!531575 mapRes!32728))))

(declare-fun condMapEmpty!32728 () Bool)

(declare-datatypes ((V!32431 0))(
  ( (V!32432 (val!10350 Int)) )
))
(declare-datatypes ((ValueCell!9818 0))(
  ( (ValueCellFull!9818 (v!12883 V!32431)) (EmptyCell!9818) )
))
(declare-datatypes ((array!57190 0))(
  ( (array!57191 (arr!27515 (Array (_ BitVec 32) ValueCell!9818)) (size!27983 (_ BitVec 32))) )
))
(declare-datatypes ((array!57192 0))(
  ( (array!57193 (arr!27516 (Array (_ BitVec 32) (_ BitVec 64))) (size!27984 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4786 0))(
  ( (LongMapFixedSize!4787 (defaultEntry!5689 Int) (mask!27347 (_ BitVec 32)) (extraKeys!5421 (_ BitVec 32)) (zeroValue!5525 V!32431) (minValue!5525 V!32431) (_size!2448 (_ BitVec 32)) (_keys!10564 array!57192) (_values!5712 array!57190) (_vacant!2448 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4786)

(declare-fun mapDefault!32728 () ValueCell!9818)


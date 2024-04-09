; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80600 () Bool)

(assert start!80600)

(declare-fun b!945728 () Bool)

(declare-fun b_free!18119 () Bool)

(declare-fun b_next!18119 () Bool)

(assert (=> b!945728 (= b_free!18119 (not b_next!18119))))

(declare-fun tp!62885 () Bool)

(declare-fun b_and!29559 () Bool)

(assert (=> b!945728 (= tp!62885 b_and!29559)))

(declare-fun b!945725 () Bool)

(declare-fun e!532044 () Bool)

(declare-fun e!532043 () Bool)

(declare-fun mapRes!32784 () Bool)

(assert (=> b!945725 (= e!532044 (and e!532043 mapRes!32784))))

(declare-fun condMapEmpty!32784 () Bool)

(declare-datatypes ((V!32467 0))(
  ( (V!32468 (val!10364 Int)) )
))
(declare-datatypes ((ValueCell!9832 0))(
  ( (ValueCellFull!9832 (v!12898 V!32467)) (EmptyCell!9832) )
))
(declare-datatypes ((array!57254 0))(
  ( (array!57255 (arr!27543 (Array (_ BitVec 32) ValueCell!9832)) (size!28013 (_ BitVec 32))) )
))
(declare-datatypes ((array!57256 0))(
  ( (array!57257 (arr!27544 (Array (_ BitVec 32) (_ BitVec 64))) (size!28014 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4814 0))(
  ( (LongMapFixedSize!4815 (defaultEntry!5704 Int) (mask!27379 (_ BitVec 32)) (extraKeys!5436 (_ BitVec 32)) (zeroValue!5540 V!32467) (minValue!5540 V!32467) (_size!2462 (_ BitVec 32)) (_keys!10586 array!57256) (_values!5727 array!57254) (_vacant!2462 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4814)

(declare-fun mapDefault!32784 () ValueCell!9832)


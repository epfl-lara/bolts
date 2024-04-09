; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80636 () Bool)

(assert start!80636)

(declare-fun b!945943 () Bool)

(declare-fun b_free!18131 () Bool)

(declare-fun b_next!18131 () Bool)

(assert (=> b!945943 (= b_free!18131 (not b_next!18131))))

(declare-fun tp!62927 () Bool)

(declare-fun b_and!29571 () Bool)

(assert (=> b!945943 (= tp!62927 b_and!29571)))

(declare-fun res!635240 () Bool)

(declare-fun e!532228 () Bool)

(assert (=> start!80636 (=> (not res!635240) (not e!532228))))

(declare-datatypes ((V!32483 0))(
  ( (V!32484 (val!10370 Int)) )
))
(declare-datatypes ((ValueCell!9838 0))(
  ( (ValueCellFull!9838 (v!12904 V!32483)) (EmptyCell!9838) )
))
(declare-datatypes ((array!57282 0))(
  ( (array!57283 (arr!27555 (Array (_ BitVec 32) ValueCell!9838)) (size!28025 (_ BitVec 32))) )
))
(declare-datatypes ((array!57284 0))(
  ( (array!57285 (arr!27556 (Array (_ BitVec 32) (_ BitVec 64))) (size!28026 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4826 0))(
  ( (LongMapFixedSize!4827 (defaultEntry!5710 Int) (mask!27392 (_ BitVec 32)) (extraKeys!5442 (_ BitVec 32)) (zeroValue!5546 V!32483) (minValue!5546 V!32483) (_size!2468 (_ BitVec 32)) (_keys!10594 array!57284) (_values!5733 array!57282) (_vacant!2468 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4826)

(declare-fun valid!1819 (LongMapFixedSize!4826) Bool)

(assert (=> start!80636 (= res!635240 (valid!1819 thiss!1141))))

(assert (=> start!80636 e!532228))

(declare-fun e!532224 () Bool)

(assert (=> start!80636 e!532224))

(assert (=> start!80636 true))

(declare-fun b!945941 () Bool)

(declare-fun e!532223 () Bool)

(declare-fun e!532229 () Bool)

(declare-fun mapRes!32808 () Bool)

(assert (=> b!945941 (= e!532223 (and e!532229 mapRes!32808))))

(declare-fun condMapEmpty!32808 () Bool)

(declare-fun mapDefault!32808 () ValueCell!9838)


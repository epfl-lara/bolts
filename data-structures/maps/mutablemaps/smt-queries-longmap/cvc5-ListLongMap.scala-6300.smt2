; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80612 () Bool)

(assert start!80612)

(declare-fun b!945790 () Bool)

(declare-fun b_free!18121 () Bool)

(declare-fun b_next!18121 () Bool)

(assert (=> b!945790 (= b_free!18121 (not b_next!18121))))

(declare-fun tp!62895 () Bool)

(declare-fun b_and!29561 () Bool)

(assert (=> b!945790 (= tp!62895 b_and!29561)))

(declare-fun res!635174 () Bool)

(declare-fun e!532086 () Bool)

(assert (=> start!80612 (=> (not res!635174) (not e!532086))))

(declare-datatypes ((V!32471 0))(
  ( (V!32472 (val!10365 Int)) )
))
(declare-datatypes ((ValueCell!9833 0))(
  ( (ValueCellFull!9833 (v!12899 V!32471)) (EmptyCell!9833) )
))
(declare-datatypes ((array!57260 0))(
  ( (array!57261 (arr!27545 (Array (_ BitVec 32) ValueCell!9833)) (size!28015 (_ BitVec 32))) )
))
(declare-datatypes ((array!57262 0))(
  ( (array!57263 (arr!27546 (Array (_ BitVec 32) (_ BitVec 64))) (size!28016 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4816 0))(
  ( (LongMapFixedSize!4817 (defaultEntry!5705 Int) (mask!27383 (_ BitVec 32)) (extraKeys!5437 (_ BitVec 32)) (zeroValue!5541 V!32471) (minValue!5541 V!32471) (_size!2463 (_ BitVec 32)) (_keys!10588 array!57262) (_values!5728 array!57260) (_vacant!2463 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4816)

(declare-fun valid!1815 (LongMapFixedSize!4816) Bool)

(assert (=> start!80612 (= res!635174 (valid!1815 thiss!1141))))

(assert (=> start!80612 e!532086))

(declare-fun e!532089 () Bool)

(assert (=> start!80612 e!532089))

(assert (=> start!80612 true))

(declare-fun b!945787 () Bool)

(declare-fun e!532091 () Bool)

(declare-fun e!532087 () Bool)

(declare-fun mapRes!32790 () Bool)

(assert (=> b!945787 (= e!532091 (and e!532087 mapRes!32790))))

(declare-fun condMapEmpty!32790 () Bool)

(declare-fun mapDefault!32790 () ValueCell!9833)


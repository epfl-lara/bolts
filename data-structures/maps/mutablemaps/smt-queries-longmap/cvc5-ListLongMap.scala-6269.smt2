; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80224 () Bool)

(assert start!80224)

(declare-fun b!942018 () Bool)

(declare-fun b_free!17935 () Bool)

(declare-fun b_next!17935 () Bool)

(assert (=> b!942018 (= b_free!17935 (not b_next!17935))))

(declare-fun tp!62303 () Bool)

(declare-fun b_and!29365 () Bool)

(assert (=> b!942018 (= tp!62303 b_and!29365)))

(declare-fun b!942012 () Bool)

(declare-fun res!633182 () Bool)

(declare-fun e!529673 () Bool)

(assert (=> b!942012 (=> (not res!633182) (not e!529673))))

(declare-datatypes ((V!32223 0))(
  ( (V!32224 (val!10272 Int)) )
))
(declare-datatypes ((ValueCell!9740 0))(
  ( (ValueCellFull!9740 (v!12803 V!32223)) (EmptyCell!9740) )
))
(declare-datatypes ((array!56868 0))(
  ( (array!56869 (arr!27359 (Array (_ BitVec 32) ValueCell!9740)) (size!27825 (_ BitVec 32))) )
))
(declare-datatypes ((array!56870 0))(
  ( (array!56871 (arr!27360 (Array (_ BitVec 32) (_ BitVec 64))) (size!27826 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4630 0))(
  ( (LongMapFixedSize!4631 (defaultEntry!5606 Int) (mask!27196 (_ BitVec 32)) (extraKeys!5338 (_ BitVec 32)) (zeroValue!5442 V!32223) (minValue!5442 V!32223) (_size!2370 (_ BitVec 32)) (_keys!10470 array!56870) (_values!5629 array!56868) (_vacant!2370 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4630)

(assert (=> b!942012 (= res!633182 (and (= (size!27825 (_values!5629 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27196 thiss!1141))) (= (size!27826 (_keys!10470 thiss!1141)) (size!27825 (_values!5629 thiss!1141))) (bvsge (mask!27196 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5338 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5338 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942013 () Bool)

(declare-fun e!529669 () Bool)

(declare-fun e!529671 () Bool)

(declare-fun mapRes!32477 () Bool)

(assert (=> b!942013 (= e!529669 (and e!529671 mapRes!32477))))

(declare-fun condMapEmpty!32477 () Bool)

(declare-fun mapDefault!32477 () ValueCell!9740)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79920 () Bool)

(assert start!79920)

(declare-fun b!939441 () Bool)

(declare-fun b_free!17789 () Bool)

(declare-fun b_next!17789 () Bool)

(assert (=> b!939441 (= b_free!17789 (not b_next!17789))))

(declare-fun tp!61831 () Bool)

(declare-fun b_and!29219 () Bool)

(assert (=> b!939441 (= tp!61831 b_and!29219)))

(declare-fun b!939440 () Bool)

(declare-fun e!527743 () Bool)

(declare-fun tp_is_empty!20297 () Bool)

(assert (=> b!939440 (= e!527743 tp_is_empty!20297)))

(declare-fun mapIsEmpty!32225 () Bool)

(declare-fun mapRes!32225 () Bool)

(assert (=> mapIsEmpty!32225 mapRes!32225))

(declare-fun e!527745 () Bool)

(declare-datatypes ((V!32027 0))(
  ( (V!32028 (val!10199 Int)) )
))
(declare-datatypes ((ValueCell!9667 0))(
  ( (ValueCellFull!9667 (v!12730 V!32027)) (EmptyCell!9667) )
))
(declare-datatypes ((array!56558 0))(
  ( (array!56559 (arr!27213 (Array (_ BitVec 32) ValueCell!9667)) (size!27673 (_ BitVec 32))) )
))
(declare-datatypes ((array!56560 0))(
  ( (array!56561 (arr!27214 (Array (_ BitVec 32) (_ BitVec 64))) (size!27674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4484 0))(
  ( (LongMapFixedSize!4485 (defaultEntry!5533 Int) (mask!27040 (_ BitVec 32)) (extraKeys!5265 (_ BitVec 32)) (zeroValue!5369 V!32027) (minValue!5369 V!32027) (_size!2297 (_ BitVec 32)) (_keys!10377 array!56560) (_values!5556 array!56558) (_vacant!2297 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4484)

(declare-fun e!527746 () Bool)

(declare-fun array_inv!21116 (array!56560) Bool)

(declare-fun array_inv!21117 (array!56558) Bool)

(assert (=> b!939441 (= e!527746 (and tp!61831 tp_is_empty!20297 (array_inv!21116 (_keys!10377 thiss!1141)) (array_inv!21117 (_values!5556 thiss!1141)) e!527745))))

(declare-fun lt!424509 () Bool)

(declare-fun valid!1704 (LongMapFixedSize!4484) Bool)

(assert (=> start!79920 (= lt!424509 (valid!1704 thiss!1141))))

(assert (=> start!79920 false))

(assert (=> start!79920 e!527746))

(declare-fun b!939442 () Bool)

(declare-fun e!527747 () Bool)

(assert (=> b!939442 (= e!527745 (and e!527747 mapRes!32225))))

(declare-fun condMapEmpty!32225 () Bool)

(declare-fun mapDefault!32225 () ValueCell!9667)


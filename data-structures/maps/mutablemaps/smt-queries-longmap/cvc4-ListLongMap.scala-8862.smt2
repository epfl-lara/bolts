; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107584 () Bool)

(assert start!107584)

(declare-fun b!1273294 () Bool)

(declare-fun b_free!27719 () Bool)

(declare-fun b_next!27719 () Bool)

(assert (=> b!1273294 (= b_free!27719 (not b_next!27719))))

(declare-fun tp!97702 () Bool)

(declare-fun b_and!45785 () Bool)

(assert (=> b!1273294 (= tp!97702 b_and!45785)))

(declare-fun e!726479 () Bool)

(declare-fun tp_is_empty!33089 () Bool)

(declare-fun e!726480 () Bool)

(declare-datatypes ((V!49311 0))(
  ( (V!49312 (val!16619 Int)) )
))
(declare-datatypes ((ValueCell!15691 0))(
  ( (ValueCellFull!15691 (v!19254 V!49311)) (EmptyCell!15691) )
))
(declare-datatypes ((array!83391 0))(
  ( (array!83392 (arr!40217 (Array (_ BitVec 32) ValueCell!15691)) (size!40759 (_ BitVec 32))) )
))
(declare-datatypes ((array!83393 0))(
  ( (array!83394 (arr!40218 (Array (_ BitVec 32) (_ BitVec 64))) (size!40760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6146 0))(
  ( (LongMapFixedSize!6147 (defaultEntry!6719 Int) (mask!34493 (_ BitVec 32)) (extraKeys!6398 (_ BitVec 32)) (zeroValue!6504 V!49311) (minValue!6504 V!49311) (_size!3128 (_ BitVec 32)) (_keys!12130 array!83393) (_values!6742 array!83391) (_vacant!3128 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6146)

(declare-fun array_inv!30529 (array!83393) Bool)

(declare-fun array_inv!30530 (array!83391) Bool)

(assert (=> b!1273294 (= e!726479 (and tp!97702 tp_is_empty!33089 (array_inv!30529 (_keys!12130 thiss!1551)) (array_inv!30530 (_values!6742 thiss!1551)) e!726480))))

(declare-fun res!846849 () Bool)

(declare-fun e!726483 () Bool)

(assert (=> start!107584 (=> (not res!846849) (not e!726483))))

(declare-fun simpleValid!464 (LongMapFixedSize!6146) Bool)

(assert (=> start!107584 (= res!846849 (simpleValid!464 thiss!1551))))

(assert (=> start!107584 e!726483))

(assert (=> start!107584 e!726479))

(declare-fun b!1273295 () Bool)

(declare-fun e!726482 () Bool)

(assert (=> b!1273295 (= e!726482 tp_is_empty!33089)))

(declare-fun b!1273296 () Bool)

(declare-fun e!726481 () Bool)

(declare-fun mapRes!51252 () Bool)

(assert (=> b!1273296 (= e!726480 (and e!726481 mapRes!51252))))

(declare-fun condMapEmpty!51252 () Bool)

(declare-fun mapDefault!51252 () ValueCell!15691)


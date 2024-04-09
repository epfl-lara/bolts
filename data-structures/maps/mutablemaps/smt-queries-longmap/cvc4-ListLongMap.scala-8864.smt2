; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107612 () Bool)

(assert start!107612)

(declare-fun b!1273438 () Bool)

(declare-fun b_free!27731 () Bool)

(declare-fun b_next!27731 () Bool)

(assert (=> b!1273438 (= b_free!27731 (not b_next!27731))))

(declare-fun tp!97744 () Bool)

(declare-fun b_and!45797 () Bool)

(assert (=> b!1273438 (= tp!97744 b_and!45797)))

(declare-fun b!1273434 () Bool)

(declare-fun e!726610 () Bool)

(declare-fun tp_is_empty!33101 () Bool)

(assert (=> b!1273434 (= e!726610 tp_is_empty!33101)))

(declare-fun res!846900 () Bool)

(declare-fun e!726611 () Bool)

(assert (=> start!107612 (=> (not res!846900) (not e!726611))))

(declare-datatypes ((V!49327 0))(
  ( (V!49328 (val!16625 Int)) )
))
(declare-datatypes ((ValueCell!15697 0))(
  ( (ValueCellFull!15697 (v!19260 V!49327)) (EmptyCell!15697) )
))
(declare-datatypes ((array!83419 0))(
  ( (array!83420 (arr!40229 (Array (_ BitVec 32) ValueCell!15697)) (size!40773 (_ BitVec 32))) )
))
(declare-datatypes ((array!83421 0))(
  ( (array!83422 (arr!40230 (Array (_ BitVec 32) (_ BitVec 64))) (size!40774 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6158 0))(
  ( (LongMapFixedSize!6159 (defaultEntry!6725 Int) (mask!34504 (_ BitVec 32)) (extraKeys!6404 (_ BitVec 32)) (zeroValue!6510 V!49327) (minValue!6510 V!49327) (_size!3134 (_ BitVec 32)) (_keys!12136 array!83421) (_values!6748 array!83419) (_vacant!3134 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6158)

(declare-fun simpleValid!468 (LongMapFixedSize!6158) Bool)

(assert (=> start!107612 (= res!846900 (simpleValid!468 thiss!1551))))

(assert (=> start!107612 e!726611))

(declare-fun e!726612 () Bool)

(assert (=> start!107612 e!726612))

(declare-fun b!1273435 () Bool)

(declare-fun e!726607 () Bool)

(declare-fun e!726608 () Bool)

(declare-fun mapRes!51277 () Bool)

(assert (=> b!1273435 (= e!726607 (and e!726608 mapRes!51277))))

(declare-fun condMapEmpty!51277 () Bool)

(declare-fun mapDefault!51277 () ValueCell!15697)


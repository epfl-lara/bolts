; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108114 () Bool)

(assert start!108114)

(declare-fun b_free!27791 () Bool)

(declare-fun b_next!27791 () Bool)

(assert (=> start!108114 (= b_free!27791 (not b_next!27791))))

(declare-fun tp!98328 () Bool)

(declare-fun b_and!45857 () Bool)

(assert (=> start!108114 (= tp!98328 b_and!45857)))

(declare-fun b!1276278 () Bool)

(declare-fun e!728815 () Bool)

(declare-fun e!728814 () Bool)

(declare-fun mapRes!51542 () Bool)

(assert (=> b!1276278 (= e!728815 (and e!728814 mapRes!51542))))

(declare-fun condMapEmpty!51542 () Bool)

(declare-datatypes ((V!49557 0))(
  ( (V!49558 (val!16745 Int)) )
))
(declare-datatypes ((ValueCell!15772 0))(
  ( (ValueCellFull!15772 (v!19340 V!49557)) (EmptyCell!15772) )
))
(declare-datatypes ((array!83733 0))(
  ( (array!83734 (arr!40373 (Array (_ BitVec 32) ValueCell!15772)) (size!40924 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83733)

(declare-fun mapDefault!51542 () ValueCell!15772)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107174 () Bool)

(assert start!107174)

(declare-fun b_free!27643 () Bool)

(declare-fun b_next!27643 () Bool)

(assert (=> start!107174 (= b_free!27643 (not b_next!27643))))

(declare-fun tp!97157 () Bool)

(declare-fun b_and!45685 () Bool)

(assert (=> start!107174 (= tp!97157 b_and!45685)))

(declare-fun mapIsEmpty!50821 () Bool)

(declare-fun mapRes!50821 () Bool)

(assert (=> mapIsEmpty!50821 mapRes!50821))

(declare-fun b!1270153 () Bool)

(declare-fun e!724010 () Bool)

(declare-fun e!724012 () Bool)

(assert (=> b!1270153 (= e!724010 (and e!724012 mapRes!50821))))

(declare-fun condMapEmpty!50821 () Bool)

(declare-datatypes ((V!48963 0))(
  ( (V!48964 (val!16488 Int)) )
))
(declare-datatypes ((ValueCell!15560 0))(
  ( (ValueCellFull!15560 (v!19123 V!48963)) (EmptyCell!15560) )
))
(declare-datatypes ((array!82887 0))(
  ( (array!82888 (arr!39976 (Array (_ BitVec 32) ValueCell!15560)) (size!40513 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82887)

(declare-fun mapDefault!50821 () ValueCell!15560)


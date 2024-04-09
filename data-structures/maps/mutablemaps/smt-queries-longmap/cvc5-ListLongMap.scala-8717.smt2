; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105810 () Bool)

(assert start!105810)

(declare-fun b_free!27337 () Bool)

(declare-fun b_next!27337 () Bool)

(assert (=> start!105810 (= b_free!27337 (not b_next!27337))))

(declare-fun tp!95540 () Bool)

(declare-fun b_and!45243 () Bool)

(assert (=> start!105810 (= tp!95540 b_and!45243)))

(declare-fun b!1259860 () Bool)

(declare-fun e!716837 () Bool)

(declare-fun e!716836 () Bool)

(declare-fun mapRes!50158 () Bool)

(assert (=> b!1259860 (= e!716837 (and e!716836 mapRes!50158))))

(declare-fun condMapEmpty!50158 () Bool)

(declare-datatypes ((V!48351 0))(
  ( (V!48352 (val!16182 Int)) )
))
(declare-datatypes ((ValueCell!15356 0))(
  ( (ValueCellFull!15356 (v!18885 V!48351)) (EmptyCell!15356) )
))
(declare-datatypes ((array!82091 0))(
  ( (array!82092 (arr!39595 (Array (_ BitVec 32) ValueCell!15356)) (size!40132 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82091)

(declare-fun mapDefault!50158 () ValueCell!15356)


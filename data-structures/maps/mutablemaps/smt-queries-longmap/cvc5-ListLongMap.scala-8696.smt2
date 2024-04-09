; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105632 () Bool)

(assert start!105632)

(declare-fun b_free!27211 () Bool)

(declare-fun b_next!27211 () Bool)

(assert (=> start!105632 (= b_free!27211 (not b_next!27211))))

(declare-fun tp!95154 () Bool)

(declare-fun b_and!45087 () Bool)

(assert (=> start!105632 (= tp!95154 b_and!45087)))

(declare-fun b!1257833 () Bool)

(declare-fun e!715338 () Bool)

(declare-fun e!715337 () Bool)

(declare-fun mapRes!49960 () Bool)

(assert (=> b!1257833 (= e!715338 (and e!715337 mapRes!49960))))

(declare-fun condMapEmpty!49960 () Bool)

(declare-datatypes ((V!48183 0))(
  ( (V!48184 (val!16119 Int)) )
))
(declare-datatypes ((ValueCell!15293 0))(
  ( (ValueCellFull!15293 (v!18821 V!48183)) (EmptyCell!15293) )
))
(declare-datatypes ((array!81853 0))(
  ( (array!81854 (arr!39479 (Array (_ BitVec 32) ValueCell!15293)) (size!40016 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81853)

(declare-fun mapDefault!49960 () ValueCell!15293)


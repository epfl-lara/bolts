; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105734 () Bool)

(assert start!105734)

(declare-fun b_free!27283 () Bool)

(declare-fun b_next!27283 () Bool)

(assert (=> start!105734 (= b_free!27283 (not b_next!27283))))

(declare-fun tp!95375 () Bool)

(declare-fun b_and!45177 () Bool)

(assert (=> start!105734 (= tp!95375 b_and!45177)))

(declare-fun b!1258943 () Bool)

(declare-fun e!716149 () Bool)

(declare-fun e!716151 () Bool)

(declare-fun mapRes!50074 () Bool)

(assert (=> b!1258943 (= e!716149 (and e!716151 mapRes!50074))))

(declare-fun condMapEmpty!50074 () Bool)

(declare-datatypes ((V!48279 0))(
  ( (V!48280 (val!16155 Int)) )
))
(declare-datatypes ((ValueCell!15329 0))(
  ( (ValueCellFull!15329 (v!18857 V!48279)) (EmptyCell!15329) )
))
(declare-datatypes ((array!81985 0))(
  ( (array!81986 (arr!39543 (Array (_ BitVec 32) ValueCell!15329)) (size!40080 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81985)

(declare-fun mapDefault!50074 () ValueCell!15329)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100482 () Bool)

(assert start!100482)

(declare-fun b_free!25769 () Bool)

(declare-fun b_next!25769 () Bool)

(assert (=> start!100482 (= b_free!25769 (not b_next!25769))))

(declare-fun tp!90298 () Bool)

(declare-fun b_and!42439 () Bool)

(assert (=> start!100482 (= tp!90298 b_and!42439)))

(declare-fun b!1199256 () Bool)

(declare-fun e!681194 () Bool)

(declare-fun e!681193 () Bool)

(declare-fun mapRes!47552 () Bool)

(assert (=> b!1199256 (= e!681194 (and e!681193 mapRes!47552))))

(declare-fun condMapEmpty!47552 () Bool)

(declare-datatypes ((V!45757 0))(
  ( (V!45758 (val!15293 Int)) )
))
(declare-datatypes ((ValueCell!14527 0))(
  ( (ValueCellFull!14527 (v!17932 V!45757)) (EmptyCell!14527) )
))
(declare-datatypes ((array!77704 0))(
  ( (array!77705 (arr!37493 (Array (_ BitVec 32) ValueCell!14527)) (size!38030 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77704)

(declare-fun mapDefault!47552 () ValueCell!14527)


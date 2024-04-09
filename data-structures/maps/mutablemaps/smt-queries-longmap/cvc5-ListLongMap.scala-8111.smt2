; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99568 () Bool)

(assert start!99568)

(declare-fun b_free!25111 () Bool)

(declare-fun b_next!25111 () Bool)

(assert (=> start!99568 (= b_free!25111 (not b_next!25111))))

(declare-fun tp!88047 () Bool)

(declare-fun b_and!41103 () Bool)

(assert (=> start!99568 (= tp!88047 b_and!41103)))

(declare-fun mapIsEmpty!46289 () Bool)

(declare-fun mapRes!46289 () Bool)

(assert (=> mapIsEmpty!46289 mapRes!46289))

(declare-fun b!1177386 () Bool)

(declare-fun e!669349 () Bool)

(declare-fun e!669345 () Bool)

(assert (=> b!1177386 (= e!669349 (and e!669345 mapRes!46289))))

(declare-fun condMapEmpty!46289 () Bool)

(declare-datatypes ((V!44649 0))(
  ( (V!44650 (val!14877 Int)) )
))
(declare-datatypes ((ValueCell!14111 0))(
  ( (ValueCellFull!14111 (v!17516 V!44649)) (EmptyCell!14111) )
))
(declare-datatypes ((array!76058 0))(
  ( (array!76059 (arr!36675 (Array (_ BitVec 32) ValueCell!14111)) (size!37212 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76058)

(declare-fun mapDefault!46289 () ValueCell!14111)


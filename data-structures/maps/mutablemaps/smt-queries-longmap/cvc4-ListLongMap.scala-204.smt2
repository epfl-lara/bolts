; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3908 () Bool)

(assert start!3908)

(declare-fun b_free!815 () Bool)

(declare-fun b_next!815 () Bool)

(assert (=> start!3908 (= b_free!815 (not b_next!815))))

(declare-fun tp!3864 () Bool)

(declare-fun b_and!1627 () Bool)

(assert (=> start!3908 (= tp!3864 b_and!1627)))

(declare-fun b!27635 () Bool)

(declare-fun e!17978 () Bool)

(declare-fun e!17977 () Bool)

(declare-fun mapRes!1282 () Bool)

(assert (=> b!27635 (= e!17978 (and e!17977 mapRes!1282))))

(declare-fun condMapEmpty!1282 () Bool)

(declare-datatypes ((V!1383 0))(
  ( (V!1384 (val!611 Int)) )
))
(declare-datatypes ((ValueCell!385 0))(
  ( (ValueCellFull!385 (v!1700 V!1383)) (EmptyCell!385) )
))
(declare-datatypes ((array!1569 0))(
  ( (array!1570 (arr!738 (Array (_ BitVec 32) ValueCell!385)) (size!839 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1569)

(declare-fun mapDefault!1282 () ValueCell!385)


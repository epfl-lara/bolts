; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4070 () Bool)

(assert start!4070)

(declare-fun b_free!977 () Bool)

(declare-fun b_next!977 () Bool)

(assert (=> start!4070 (= b_free!977 (not b_next!977))))

(declare-fun tp!4350 () Bool)

(declare-fun b_and!1789 () Bool)

(assert (=> start!4070 (= tp!4350 b_and!1789)))

(declare-fun b!30074 () Bool)

(declare-fun e!19357 () Bool)

(declare-fun e!19355 () Bool)

(declare-fun mapRes!1525 () Bool)

(assert (=> b!30074 (= e!19357 (and e!19355 mapRes!1525))))

(declare-fun condMapEmpty!1525 () Bool)

(declare-datatypes ((V!1599 0))(
  ( (V!1600 (val!692 Int)) )
))
(declare-datatypes ((ValueCell!466 0))(
  ( (ValueCellFull!466 (v!1781 V!1599)) (EmptyCell!466) )
))
(declare-datatypes ((array!1881 0))(
  ( (array!1882 (arr!894 (Array (_ BitVec 32) ValueCell!466)) (size!995 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1881)

(declare-fun mapDefault!1525 () ValueCell!466)


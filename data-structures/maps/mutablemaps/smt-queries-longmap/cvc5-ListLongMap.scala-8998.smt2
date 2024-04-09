; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108784 () Bool)

(assert start!108784)

(declare-fun b_free!28261 () Bool)

(declare-fun b_next!28261 () Bool)

(assert (=> start!108784 (= b_free!28261 (not b_next!28261))))

(declare-fun tp!99899 () Bool)

(declare-fun b_and!46337 () Bool)

(assert (=> start!108784 (= tp!99899 b_and!46337)))

(declare-fun b!1284038 () Bool)

(declare-fun e!733493 () Bool)

(declare-fun e!733491 () Bool)

(declare-fun mapRes!52409 () Bool)

(assert (=> b!1284038 (= e!733493 (and e!733491 mapRes!52409))))

(declare-fun condMapEmpty!52409 () Bool)

(declare-datatypes ((V!50305 0))(
  ( (V!50306 (val!17025 Int)) )
))
(declare-datatypes ((ValueCell!16052 0))(
  ( (ValueCellFull!16052 (v!19625 V!50305)) (EmptyCell!16052) )
))
(declare-datatypes ((array!84819 0))(
  ( (array!84820 (arr!40907 (Array (_ BitVec 32) ValueCell!16052)) (size!41458 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84819)

(declare-fun mapDefault!52409 () ValueCell!16052)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132132 () Bool)

(assert start!132132)

(declare-fun b_free!31813 () Bool)

(declare-fun b_next!31813 () Bool)

(assert (=> start!132132 (= b_free!31813 (not b_next!31813))))

(declare-fun tp!111692 () Bool)

(declare-fun b_and!51233 () Bool)

(assert (=> start!132132 (= tp!111692 b_and!51233)))

(declare-fun b!1548826 () Bool)

(declare-datatypes ((V!59229 0))(
  ( (V!59230 (val!19122 Int)) )
))
(declare-datatypes ((tuple2!24766 0))(
  ( (tuple2!24767 (_1!12393 (_ BitVec 64)) (_2!12393 V!59229)) )
))
(declare-datatypes ((List!36267 0))(
  ( (Nil!36264) (Cons!36263 (h!37709 tuple2!24766) (t!50968 List!36267)) )
))
(declare-datatypes ((ListLongMap!22387 0))(
  ( (ListLongMap!22388 (toList!11209 List!36267)) )
))
(declare-fun e!862152 () ListLongMap!22387)

(declare-fun call!70325 () ListLongMap!22387)

(assert (=> b!1548826 (= e!862152 call!70325)))

(declare-fun b!1548827 () Bool)

(declare-fun e!862154 () Bool)

(declare-fun e!862159 () Bool)

(declare-fun mapRes!58837 () Bool)

(assert (=> b!1548827 (= e!862154 (and e!862159 mapRes!58837))))

(declare-fun condMapEmpty!58837 () Bool)

(declare-datatypes ((ValueCell!18134 0))(
  ( (ValueCellFull!18134 (v!21920 V!59229)) (EmptyCell!18134) )
))
(declare-datatypes ((array!103341 0))(
  ( (array!103342 (arr!49868 (Array (_ BitVec 32) ValueCell!18134)) (size!50419 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103341)

(declare-fun mapDefault!58837 () ValueCell!18134)


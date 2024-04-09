; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132118 () Bool)

(assert start!132118)

(declare-fun b_free!31799 () Bool)

(declare-fun b_next!31799 () Bool)

(assert (=> start!132118 (= b_free!31799 (not b_next!31799))))

(declare-fun tp!111649 () Bool)

(declare-fun b_and!51219 () Bool)

(assert (=> start!132118 (= tp!111649 b_and!51219)))

(declare-fun b!1548490 () Bool)

(declare-fun e!861970 () Bool)

(declare-fun e!861962 () Bool)

(declare-fun mapRes!58816 () Bool)

(assert (=> b!1548490 (= e!861970 (and e!861962 mapRes!58816))))

(declare-fun condMapEmpty!58816 () Bool)

(declare-datatypes ((V!59209 0))(
  ( (V!59210 (val!19115 Int)) )
))
(declare-datatypes ((ValueCell!18127 0))(
  ( (ValueCellFull!18127 (v!21913 V!59209)) (EmptyCell!18127) )
))
(declare-datatypes ((array!103315 0))(
  ( (array!103316 (arr!49855 (Array (_ BitVec 32) ValueCell!18127)) (size!50406 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103315)

(declare-fun mapDefault!58816 () ValueCell!18127)


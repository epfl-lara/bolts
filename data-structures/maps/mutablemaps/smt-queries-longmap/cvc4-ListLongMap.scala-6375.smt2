; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82018 () Bool)

(assert start!82018)

(declare-fun b!956143 () Bool)

(declare-fun e!538776 () Bool)

(declare-fun e!538773 () Bool)

(declare-fun mapRes!33505 () Bool)

(assert (=> b!956143 (= e!538776 (and e!538773 mapRes!33505))))

(declare-fun condMapEmpty!33505 () Bool)

(declare-datatypes ((V!33021 0))(
  ( (V!33022 (val!10565 Int)) )
))
(declare-datatypes ((ValueCell!10033 0))(
  ( (ValueCellFull!10033 (v!13120 V!33021)) (EmptyCell!10033) )
))
(declare-datatypes ((array!58179 0))(
  ( (array!58180 (arr!27965 (Array (_ BitVec 32) ValueCell!10033)) (size!28445 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58179)

(declare-fun mapDefault!33505 () ValueCell!10033)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97746 () Bool)

(assert start!97746)

(declare-fun b!1117057 () Bool)

(declare-fun e!636419 () Bool)

(declare-fun e!636417 () Bool)

(declare-fun mapRes!43729 () Bool)

(assert (=> b!1117057 (= e!636419 (and e!636417 mapRes!43729))))

(declare-fun condMapEmpty!43729 () Bool)

(declare-datatypes ((V!42381 0))(
  ( (V!42382 (val!14027 Int)) )
))
(declare-datatypes ((ValueCell!13261 0))(
  ( (ValueCellFull!13261 (v!16661 V!42381)) (EmptyCell!13261) )
))
(declare-datatypes ((array!72718 0))(
  ( (array!72719 (arr!35008 (Array (_ BitVec 32) ValueCell!13261)) (size!35545 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72718)

(declare-fun mapDefault!43729 () ValueCell!13261)


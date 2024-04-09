; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81770 () Bool)

(assert start!81770)

(declare-fun mapIsEmpty!33184 () Bool)

(declare-fun mapRes!33184 () Bool)

(assert (=> mapIsEmpty!33184 mapRes!33184))

(declare-fun b!953535 () Bool)

(declare-fun e!537147 () Bool)

(declare-fun tp_is_empty!20825 () Bool)

(assert (=> b!953535 (= e!537147 tp_is_empty!20825)))

(declare-fun b!953536 () Bool)

(declare-fun e!537151 () Bool)

(declare-fun e!537149 () Bool)

(assert (=> b!953536 (= e!537151 (and e!537149 mapRes!33184))))

(declare-fun condMapEmpty!33184 () Bool)

(declare-datatypes ((V!32749 0))(
  ( (V!32750 (val!10463 Int)) )
))
(declare-datatypes ((ValueCell!9931 0))(
  ( (ValueCellFull!9931 (v!13017 V!32749)) (EmptyCell!9931) )
))
(declare-datatypes ((array!57773 0))(
  ( (array!57774 (arr!27767 (Array (_ BitVec 32) ValueCell!9931)) (size!28247 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57773)

(declare-fun mapDefault!33184 () ValueCell!9931)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81788 () Bool)

(assert start!81788)

(declare-fun b!953631 () Bool)

(declare-fun e!537247 () Bool)

(declare-datatypes ((array!57797 0))(
  ( (array!57798 (arr!27778 (Array (_ BitVec 32) (_ BitVec 64))) (size!28258 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57797)

(assert (=> b!953631 (= e!537247 (bvsgt #b00000000000000000000000000000000 (size!28258 _keys!1441)))))

(declare-fun b!953632 () Bool)

(declare-fun e!537246 () Bool)

(declare-fun tp_is_empty!20837 () Bool)

(assert (=> b!953632 (= e!537246 tp_is_empty!20837)))

(declare-fun mapNonEmpty!33205 () Bool)

(declare-fun mapRes!33205 () Bool)

(declare-fun tp!63595 () Bool)

(assert (=> mapNonEmpty!33205 (= mapRes!33205 (and tp!63595 e!537246))))

(declare-fun mapKey!33205 () (_ BitVec 32))

(declare-datatypes ((V!32765 0))(
  ( (V!32766 (val!10469 Int)) )
))
(declare-datatypes ((ValueCell!9937 0))(
  ( (ValueCellFull!9937 (v!13023 V!32765)) (EmptyCell!9937) )
))
(declare-fun mapValue!33205 () ValueCell!9937)

(declare-fun mapRest!33205 () (Array (_ BitVec 32) ValueCell!9937))

(declare-datatypes ((array!57799 0))(
  ( (array!57800 (arr!27779 (Array (_ BitVec 32) ValueCell!9937)) (size!28259 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57799)

(assert (=> mapNonEmpty!33205 (= (arr!27779 _values!1197) (store mapRest!33205 mapKey!33205 mapValue!33205))))

(declare-fun b!953633 () Bool)

(declare-fun e!537243 () Bool)

(declare-fun e!537244 () Bool)

(assert (=> b!953633 (= e!537243 (and e!537244 mapRes!33205))))

(declare-fun condMapEmpty!33205 () Bool)

(declare-fun mapDefault!33205 () ValueCell!9937)


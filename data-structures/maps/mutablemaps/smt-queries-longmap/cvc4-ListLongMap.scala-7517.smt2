; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95360 () Bool)

(assert start!95360)

(declare-fun b!1076978 () Bool)

(declare-fun e!615761 () Bool)

(declare-fun tp_is_empty!26081 () Bool)

(assert (=> b!1076978 (= e!615761 tp_is_empty!26081)))

(declare-fun mapNonEmpty!40849 () Bool)

(declare-fun mapRes!40849 () Bool)

(declare-fun tp!78312 () Bool)

(assert (=> mapNonEmpty!40849 (= mapRes!40849 (and tp!78312 e!615761))))

(declare-datatypes ((V!39901 0))(
  ( (V!39902 (val!13097 Int)) )
))
(declare-datatypes ((ValueCell!12331 0))(
  ( (ValueCellFull!12331 (v!15717 V!39901)) (EmptyCell!12331) )
))
(declare-datatypes ((array!69076 0))(
  ( (array!69077 (arr!33217 (Array (_ BitVec 32) ValueCell!12331)) (size!33754 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69076)

(declare-fun mapValue!40849 () ValueCell!12331)

(declare-fun mapRest!40849 () (Array (_ BitVec 32) ValueCell!12331))

(declare-fun mapKey!40849 () (_ BitVec 32))

(assert (=> mapNonEmpty!40849 (= (arr!33217 _values!874) (store mapRest!40849 mapKey!40849 mapValue!40849))))

(declare-fun b!1076979 () Bool)

(declare-fun e!615757 () Bool)

(declare-fun e!615759 () Bool)

(assert (=> b!1076979 (= e!615757 (and e!615759 mapRes!40849))))

(declare-fun condMapEmpty!40849 () Bool)

(declare-fun mapDefault!40849 () ValueCell!12331)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106972 () Bool)

(assert start!106972)

(declare-fun mapNonEmpty!50545 () Bool)

(declare-fun mapRes!50545 () Bool)

(declare-fun tp!96725 () Bool)

(declare-fun e!722601 () Bool)

(assert (=> mapNonEmpty!50545 (= mapRes!50545 (and tp!96725 e!722601))))

(declare-datatypes ((V!48723 0))(
  ( (V!48724 (val!16398 Int)) )
))
(declare-datatypes ((ValueCell!15470 0))(
  ( (ValueCellFull!15470 (v!19032 V!48723)) (EmptyCell!15470) )
))
(declare-datatypes ((array!82545 0))(
  ( (array!82546 (arr!39807 (Array (_ BitVec 32) ValueCell!15470)) (size!40344 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82545)

(declare-fun mapRest!50545 () (Array (_ BitVec 32) ValueCell!15470))

(declare-fun mapValue!50545 () ValueCell!15470)

(declare-fun mapKey!50545 () (_ BitVec 32))

(assert (=> mapNonEmpty!50545 (= (arr!39807 _values!1134) (store mapRest!50545 mapKey!50545 mapValue!50545))))

(declare-fun b!1268129 () Bool)

(declare-fun res!844148 () Bool)

(declare-fun e!722600 () Bool)

(assert (=> b!1268129 (=> (not res!844148) (not e!722600))))

(declare-datatypes ((array!82547 0))(
  ( (array!82548 (arr!39808 (Array (_ BitVec 32) (_ BitVec 64))) (size!40345 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82547)

(assert (=> b!1268129 (= res!844148 (and (bvsle #b00000000000000000000000000000000 (size!40345 _keys!1364)) (bvslt (size!40345 _keys!1364) #b01111111111111111111111111111111)))))

(declare-fun b!1268130 () Bool)

(declare-fun res!844147 () Bool)

(assert (=> b!1268130 (=> (not res!844147) (not e!722600))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82547 (_ BitVec 32)) Bool)

(assert (=> b!1268130 (= res!844147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268131 () Bool)

(declare-fun tp_is_empty!32647 () Bool)

(assert (=> b!1268131 (= e!722601 tp_is_empty!32647)))

(declare-fun b!1268132 () Bool)

(declare-fun e!722604 () Bool)

(declare-fun e!722603 () Bool)

(assert (=> b!1268132 (= e!722604 (and e!722603 mapRes!50545))))

(declare-fun condMapEmpty!50545 () Bool)

(declare-fun mapDefault!50545 () ValueCell!15470)


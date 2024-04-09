; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!640 () Bool)

(assert start!640)

(declare-fun b_free!113 () Bool)

(declare-fun b_next!113 () Bool)

(assert (=> start!640 (= b_free!113 (not b_next!113))))

(declare-fun tp!556 () Bool)

(declare-fun b_and!251 () Bool)

(assert (=> start!640 (= tp!556 b_and!251)))

(declare-fun mapIsEmpty!245 () Bool)

(declare-fun mapRes!245 () Bool)

(assert (=> mapIsEmpty!245 mapRes!245))

(declare-fun res!5560 () Bool)

(declare-fun e!2148 () Bool)

(assert (=> start!640 (=> (not res!5560) (not e!2148))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!640 (= res!5560 (validMask!0 mask!2250))))

(assert (=> start!640 e!2148))

(assert (=> start!640 tp!556))

(assert (=> start!640 true))

(declare-datatypes ((V!431 0))(
  ( (V!432 (val!101 Int)) )
))
(declare-datatypes ((ValueCell!79 0))(
  ( (ValueCellFull!79 (v!1188 V!431)) (EmptyCell!79) )
))
(declare-datatypes ((array!315 0))(
  ( (array!316 (arr!150 (Array (_ BitVec 32) ValueCell!79)) (size!212 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!315)

(declare-fun e!2146 () Bool)

(declare-fun array_inv!105 (array!315) Bool)

(assert (=> start!640 (and (array_inv!105 _values!1492) e!2146)))

(declare-fun tp_is_empty!191 () Bool)

(assert (=> start!640 tp_is_empty!191))

(declare-datatypes ((array!317 0))(
  ( (array!318 (arr!151 (Array (_ BitVec 32) (_ BitVec 64))) (size!213 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!317)

(declare-fun array_inv!106 (array!317) Bool)

(assert (=> start!640 (array_inv!106 _keys!1806)))

(declare-fun b!4120 () Bool)

(declare-fun res!5557 () Bool)

(assert (=> b!4120 (=> (not res!5557) (not e!2148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!317 (_ BitVec 32)) Bool)

(assert (=> b!4120 (= res!5557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4121 () Bool)

(declare-fun res!5558 () Bool)

(assert (=> b!4121 (=> (not res!5558) (not e!2148))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4121 (= res!5558 (and (= (size!212 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!213 _keys!1806) (size!212 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4122 () Bool)

(declare-fun res!5559 () Bool)

(assert (=> b!4122 (=> (not res!5559) (not e!2148))))

(declare-datatypes ((List!94 0))(
  ( (Nil!91) (Cons!90 (h!656 (_ BitVec 64)) (t!2221 List!94)) )
))
(declare-fun arrayNoDuplicates!0 (array!317 (_ BitVec 32) List!94) Bool)

(assert (=> b!4122 (= res!5559 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!91))))

(declare-fun b!4123 () Bool)

(declare-fun e!2150 () Bool)

(assert (=> b!4123 (= e!2150 tp_is_empty!191)))

(declare-fun b!4124 () Bool)

(declare-fun e!2149 () Bool)

(assert (=> b!4124 (= e!2149 tp_is_empty!191)))

(declare-fun mapNonEmpty!245 () Bool)

(declare-fun tp!557 () Bool)

(assert (=> mapNonEmpty!245 (= mapRes!245 (and tp!557 e!2149))))

(declare-fun mapKey!245 () (_ BitVec 32))

(declare-fun mapValue!245 () ValueCell!79)

(declare-fun mapRest!245 () (Array (_ BitVec 32) ValueCell!79))

(assert (=> mapNonEmpty!245 (= (arr!150 _values!1492) (store mapRest!245 mapKey!245 mapValue!245))))

(declare-fun b!4125 () Bool)

(assert (=> b!4125 (= e!2146 (and e!2150 mapRes!245))))

(declare-fun condMapEmpty!245 () Bool)

(declare-fun mapDefault!245 () ValueCell!79)


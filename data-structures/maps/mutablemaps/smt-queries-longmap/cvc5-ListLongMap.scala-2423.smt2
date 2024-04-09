; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38282 () Bool)

(assert start!38282)

(declare-fun b!394653 () Bool)

(declare-fun res!226280 () Bool)

(declare-fun e!238943 () Bool)

(assert (=> b!394653 (=> (not res!226280) (not e!238943))))

(declare-datatypes ((array!23431 0))(
  ( (array!23432 (arr!11168 (Array (_ BitVec 32) (_ BitVec 64))) (size!11520 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23431)

(assert (=> b!394653 (= res!226280 (and (bvsle #b00000000000000000000000000000000 (size!11520 _keys!709)) (bvslt (size!11520 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!394654 () Bool)

(declare-fun e!238944 () Bool)

(declare-fun tp_is_empty!9775 () Bool)

(assert (=> b!394654 (= e!238944 tp_is_empty!9775)))

(declare-fun res!226279 () Bool)

(assert (=> start!38282 (=> (not res!226279) (not e!238943))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38282 (= res!226279 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11520 _keys!709))))))

(assert (=> start!38282 e!238943))

(assert (=> start!38282 true))

(declare-datatypes ((V!14139 0))(
  ( (V!14140 (val!4932 Int)) )
))
(declare-datatypes ((ValueCell!4544 0))(
  ( (ValueCellFull!4544 (v!7173 V!14139)) (EmptyCell!4544) )
))
(declare-datatypes ((array!23433 0))(
  ( (array!23434 (arr!11169 (Array (_ BitVec 32) ValueCell!4544)) (size!11521 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23433)

(declare-fun e!238940 () Bool)

(declare-fun array_inv!8176 (array!23433) Bool)

(assert (=> start!38282 (and (array_inv!8176 _values!549) e!238940)))

(declare-fun array_inv!8177 (array!23431) Bool)

(assert (=> start!38282 (array_inv!8177 _keys!709)))

(declare-fun b!394655 () Bool)

(declare-fun e!238942 () Bool)

(assert (=> b!394655 (= e!238942 tp_is_empty!9775)))

(declare-fun b!394656 () Bool)

(declare-fun res!226283 () Bool)

(assert (=> b!394656 (=> (not res!226283) (not e!238943))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394656 (= res!226283 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16266 () Bool)

(declare-fun mapRes!16266 () Bool)

(declare-fun tp!32061 () Bool)

(assert (=> mapNonEmpty!16266 (= mapRes!16266 (and tp!32061 e!238942))))

(declare-fun mapKey!16266 () (_ BitVec 32))

(declare-fun mapValue!16266 () ValueCell!4544)

(declare-fun mapRest!16266 () (Array (_ BitVec 32) ValueCell!4544))

(assert (=> mapNonEmpty!16266 (= (arr!11169 _values!549) (store mapRest!16266 mapKey!16266 mapValue!16266))))

(declare-fun mapIsEmpty!16266 () Bool)

(assert (=> mapIsEmpty!16266 mapRes!16266))

(declare-fun b!394657 () Bool)

(declare-fun res!226281 () Bool)

(assert (=> b!394657 (=> (not res!226281) (not e!238943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23431 (_ BitVec 32)) Bool)

(assert (=> b!394657 (= res!226281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394658 () Bool)

(assert (=> b!394658 (= e!238940 (and e!238944 mapRes!16266))))

(declare-fun condMapEmpty!16266 () Bool)

(declare-fun mapDefault!16266 () ValueCell!4544)


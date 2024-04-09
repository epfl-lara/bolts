; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38268 () Bool)

(assert start!38268)

(declare-fun mapNonEmpty!16254 () Bool)

(declare-fun mapRes!16254 () Bool)

(declare-fun tp!32049 () Bool)

(declare-fun e!238881 () Bool)

(assert (=> mapNonEmpty!16254 (= mapRes!16254 (and tp!32049 e!238881))))

(declare-fun mapKey!16254 () (_ BitVec 32))

(declare-datatypes ((V!14131 0))(
  ( (V!14132 (val!4929 Int)) )
))
(declare-datatypes ((ValueCell!4541 0))(
  ( (ValueCellFull!4541 (v!7170 V!14131)) (EmptyCell!4541) )
))
(declare-datatypes ((array!23419 0))(
  ( (array!23420 (arr!11163 (Array (_ BitVec 32) ValueCell!4541)) (size!11515 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23419)

(declare-fun mapValue!16254 () ValueCell!4541)

(declare-fun mapRest!16254 () (Array (_ BitVec 32) ValueCell!4541))

(assert (=> mapNonEmpty!16254 (= (arr!11163 _values!549) (store mapRest!16254 mapKey!16254 mapValue!16254))))

(declare-fun res!226235 () Bool)

(declare-fun e!238880 () Bool)

(assert (=> start!38268 (=> (not res!226235) (not e!238880))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23421 0))(
  ( (array!23422 (arr!11164 (Array (_ BitVec 32) (_ BitVec 64))) (size!11516 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23421)

(assert (=> start!38268 (= res!226235 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11516 _keys!709))))))

(assert (=> start!38268 e!238880))

(assert (=> start!38268 true))

(declare-fun e!238882 () Bool)

(declare-fun array_inv!8172 (array!23419) Bool)

(assert (=> start!38268 (and (array_inv!8172 _values!549) e!238882)))

(declare-fun array_inv!8173 (array!23421) Bool)

(assert (=> start!38268 (array_inv!8173 _keys!709)))

(declare-fun b!394568 () Bool)

(declare-fun e!238884 () Bool)

(declare-fun tp_is_empty!9769 () Bool)

(assert (=> b!394568 (= e!238884 tp_is_empty!9769)))

(declare-fun b!394569 () Bool)

(assert (=> b!394569 (= e!238880 (and (bvsle #b00000000000000000000000000000000 (size!11516 _keys!709)) (bvsge (size!11516 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!394570 () Bool)

(declare-fun res!226238 () Bool)

(assert (=> b!394570 (=> (not res!226238) (not e!238880))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394570 (= res!226238 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16254 () Bool)

(assert (=> mapIsEmpty!16254 mapRes!16254))

(declare-fun b!394571 () Bool)

(assert (=> b!394571 (= e!238882 (and e!238884 mapRes!16254))))

(declare-fun condMapEmpty!16254 () Bool)

(declare-fun mapDefault!16254 () ValueCell!4541)


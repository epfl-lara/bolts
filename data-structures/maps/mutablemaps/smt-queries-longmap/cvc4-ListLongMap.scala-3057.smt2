; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43196 () Bool)

(assert start!43196)

(declare-fun b!478483 () Bool)

(declare-fun e!281367 () Bool)

(declare-fun tp_is_empty!13577 () Bool)

(assert (=> b!478483 (= e!281367 tp_is_empty!13577)))

(declare-fun res!285543 () Bool)

(declare-fun e!281369 () Bool)

(assert (=> start!43196 (=> (not res!285543) (not e!281369))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43196 (= res!285543 (validMask!0 mask!2352))))

(assert (=> start!43196 e!281369))

(assert (=> start!43196 true))

(declare-datatypes ((V!19173 0))(
  ( (V!19174 (val!6836 Int)) )
))
(declare-datatypes ((ValueCell!6427 0))(
  ( (ValueCellFull!6427 (v!9121 V!19173)) (EmptyCell!6427) )
))
(declare-datatypes ((array!30799 0))(
  ( (array!30800 (arr!14804 (Array (_ BitVec 32) ValueCell!6427)) (size!15162 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30799)

(declare-fun e!281371 () Bool)

(declare-fun array_inv!10668 (array!30799) Bool)

(assert (=> start!43196 (and (array_inv!10668 _values!1516) e!281371)))

(declare-datatypes ((array!30801 0))(
  ( (array!30802 (arr!14805 (Array (_ BitVec 32) (_ BitVec 64))) (size!15163 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30801)

(declare-fun array_inv!10669 (array!30801) Bool)

(assert (=> start!43196 (array_inv!10669 _keys!1874)))

(declare-fun b!478484 () Bool)

(assert (=> b!478484 (= e!281369 false)))

(declare-fun lt!217712 () Bool)

(declare-datatypes ((List!9095 0))(
  ( (Nil!9092) (Cons!9091 (h!9947 (_ BitVec 64)) (t!15309 List!9095)) )
))
(declare-fun arrayNoDuplicates!0 (array!30801 (_ BitVec 32) List!9095) Bool)

(assert (=> b!478484 (= lt!217712 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9092))))

(declare-fun mapNonEmpty!22060 () Bool)

(declare-fun mapRes!22060 () Bool)

(declare-fun tp!42535 () Bool)

(assert (=> mapNonEmpty!22060 (= mapRes!22060 (and tp!42535 e!281367))))

(declare-fun mapKey!22060 () (_ BitVec 32))

(declare-fun mapRest!22060 () (Array (_ BitVec 32) ValueCell!6427))

(declare-fun mapValue!22060 () ValueCell!6427)

(assert (=> mapNonEmpty!22060 (= (arr!14804 _values!1516) (store mapRest!22060 mapKey!22060 mapValue!22060))))

(declare-fun b!478485 () Bool)

(declare-fun e!281368 () Bool)

(assert (=> b!478485 (= e!281368 tp_is_empty!13577)))

(declare-fun b!478486 () Bool)

(assert (=> b!478486 (= e!281371 (and e!281368 mapRes!22060))))

(declare-fun condMapEmpty!22060 () Bool)

(declare-fun mapDefault!22060 () ValueCell!6427)


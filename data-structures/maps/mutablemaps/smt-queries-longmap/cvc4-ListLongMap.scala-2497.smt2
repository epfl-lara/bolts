; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38812 () Bool)

(assert start!38812)

(declare-fun res!233524 () Bool)

(declare-fun e!243407 () Bool)

(assert (=> start!38812 (=> (not res!233524) (not e!243407))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24309 0))(
  ( (array!24310 (arr!11601 (Array (_ BitVec 32) (_ BitVec 64))) (size!11953 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24309)

(assert (=> start!38812 (= res!233524 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11953 _keys!709))))))

(assert (=> start!38812 e!243407))

(assert (=> start!38812 true))

(declare-datatypes ((V!14735 0))(
  ( (V!14736 (val!5156 Int)) )
))
(declare-datatypes ((ValueCell!4768 0))(
  ( (ValueCellFull!4768 (v!7399 V!14735)) (EmptyCell!4768) )
))
(declare-datatypes ((array!24311 0))(
  ( (array!24312 (arr!11602 (Array (_ BitVec 32) ValueCell!4768)) (size!11954 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24311)

(declare-fun e!243404 () Bool)

(declare-fun array_inv!8476 (array!24311) Bool)

(assert (=> start!38812 (and (array_inv!8476 _values!549) e!243404)))

(declare-fun array_inv!8477 (array!24309) Bool)

(assert (=> start!38812 (array_inv!8477 _keys!709)))

(declare-fun b!404675 () Bool)

(declare-fun res!233525 () Bool)

(assert (=> b!404675 (=> (not res!233525) (not e!243407))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24309 (_ BitVec 32)) Bool)

(assert (=> b!404675 (= res!233525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16956 () Bool)

(declare-fun mapRes!16956 () Bool)

(declare-fun tp!33075 () Bool)

(declare-fun e!243409 () Bool)

(assert (=> mapNonEmpty!16956 (= mapRes!16956 (and tp!33075 e!243409))))

(declare-fun mapKey!16956 () (_ BitVec 32))

(declare-fun mapValue!16956 () ValueCell!4768)

(declare-fun mapRest!16956 () (Array (_ BitVec 32) ValueCell!4768))

(assert (=> mapNonEmpty!16956 (= (arr!11602 _values!549) (store mapRest!16956 mapKey!16956 mapValue!16956))))

(declare-fun b!404676 () Bool)

(declare-fun e!243408 () Bool)

(assert (=> b!404676 (= e!243404 (and e!243408 mapRes!16956))))

(declare-fun condMapEmpty!16956 () Bool)

(declare-fun mapDefault!16956 () ValueCell!4768)


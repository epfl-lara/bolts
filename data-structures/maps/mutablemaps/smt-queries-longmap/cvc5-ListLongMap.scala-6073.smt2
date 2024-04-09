; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78574 () Bool)

(assert start!78574)

(declare-fun b!915458 () Bool)

(declare-fun res!617306 () Bool)

(declare-fun e!513861 () Bool)

(assert (=> b!915458 (=> (not res!617306) (not e!513861))))

(declare-datatypes ((array!54538 0))(
  ( (array!54539 (arr!26210 (Array (_ BitVec 32) (_ BitVec 64))) (size!26670 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54538)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54538 (_ BitVec 32)) Bool)

(assert (=> b!915458 (= res!617306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30657 () Bool)

(declare-fun mapRes!30657 () Bool)

(assert (=> mapIsEmpty!30657 mapRes!30657))

(declare-fun mapNonEmpty!30657 () Bool)

(declare-fun tp!58725 () Bool)

(declare-fun e!513862 () Bool)

(assert (=> mapNonEmpty!30657 (= mapRes!30657 (and tp!58725 e!513862))))

(declare-fun mapKey!30657 () (_ BitVec 32))

(declare-datatypes ((V!30655 0))(
  ( (V!30656 (val!9684 Int)) )
))
(declare-datatypes ((ValueCell!9152 0))(
  ( (ValueCellFull!9152 (v!12202 V!30655)) (EmptyCell!9152) )
))
(declare-fun mapRest!30657 () (Array (_ BitVec 32) ValueCell!9152))

(declare-datatypes ((array!54540 0))(
  ( (array!54541 (arr!26211 (Array (_ BitVec 32) ValueCell!9152)) (size!26671 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54540)

(declare-fun mapValue!30657 () ValueCell!9152)

(assert (=> mapNonEmpty!30657 (= (arr!26211 _values!1231) (store mapRest!30657 mapKey!30657 mapValue!30657))))

(declare-fun b!915459 () Bool)

(declare-fun e!513863 () Bool)

(declare-fun e!513860 () Bool)

(assert (=> b!915459 (= e!513863 (and e!513860 mapRes!30657))))

(declare-fun condMapEmpty!30657 () Bool)

(declare-fun mapDefault!30657 () ValueCell!9152)


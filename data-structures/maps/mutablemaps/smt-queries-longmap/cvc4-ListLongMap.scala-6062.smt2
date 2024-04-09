; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78482 () Bool)

(assert start!78482)

(declare-fun mapNonEmpty!30555 () Bool)

(declare-fun mapRes!30555 () Bool)

(declare-fun tp!58623 () Bool)

(declare-fun e!513321 () Bool)

(assert (=> mapNonEmpty!30555 (= mapRes!30555 (and tp!58623 e!513321))))

(declare-datatypes ((V!30571 0))(
  ( (V!30572 (val!9653 Int)) )
))
(declare-datatypes ((ValueCell!9121 0))(
  ( (ValueCellFull!9121 (v!12170 V!30571)) (EmptyCell!9121) )
))
(declare-fun mapValue!30555 () ValueCell!9121)

(declare-datatypes ((array!54418 0))(
  ( (array!54419 (arr!26153 (Array (_ BitVec 32) ValueCell!9121)) (size!26613 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54418)

(declare-fun mapKey!30555 () (_ BitVec 32))

(declare-fun mapRest!30555 () (Array (_ BitVec 32) ValueCell!9121))

(assert (=> mapNonEmpty!30555 (= (arr!26153 _values!1231) (store mapRest!30555 mapKey!30555 mapValue!30555))))

(declare-fun res!616952 () Bool)

(declare-fun e!513323 () Bool)

(assert (=> start!78482 (=> (not res!616952) (not e!513323))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78482 (= res!616952 (validMask!0 mask!1881))))

(assert (=> start!78482 e!513323))

(assert (=> start!78482 true))

(declare-fun e!513322 () Bool)

(declare-fun array_inv!20408 (array!54418) Bool)

(assert (=> start!78482 (and (array_inv!20408 _values!1231) e!513322)))

(declare-datatypes ((array!54420 0))(
  ( (array!54421 (arr!26154 (Array (_ BitVec 32) (_ BitVec 64))) (size!26614 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54420)

(declare-fun array_inv!20409 (array!54420) Bool)

(assert (=> start!78482 (array_inv!20409 _keys!1487)))

(declare-fun b!914782 () Bool)

(declare-fun res!616951 () Bool)

(assert (=> b!914782 (=> (not res!616951) (not e!513323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54420 (_ BitVec 32)) Bool)

(assert (=> b!914782 (= res!616951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!914783 () Bool)

(declare-fun e!513325 () Bool)

(declare-fun tp_is_empty!19205 () Bool)

(assert (=> b!914783 (= e!513325 tp_is_empty!19205)))

(declare-fun b!914784 () Bool)

(assert (=> b!914784 (= e!513321 tp_is_empty!19205)))

(declare-fun b!914785 () Bool)

(assert (=> b!914785 (= e!513323 (and (bvsle #b00000000000000000000000000000000 (size!26614 _keys!1487)) (bvsge (size!26614 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun b!914786 () Bool)

(assert (=> b!914786 (= e!513322 (and e!513325 mapRes!30555))))

(declare-fun condMapEmpty!30555 () Bool)

(declare-fun mapDefault!30555 () ValueCell!9121)


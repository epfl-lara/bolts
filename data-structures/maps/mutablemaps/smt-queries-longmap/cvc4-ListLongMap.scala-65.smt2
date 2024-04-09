; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!926 () Bool)

(assert start!926)

(declare-fun b_free!299 () Bool)

(declare-fun b_next!299 () Bool)

(assert (=> start!926 (= b_free!299 (not b_next!299))))

(declare-fun tp!1130 () Bool)

(declare-fun b_and!447 () Bool)

(assert (=> start!926 (= tp!1130 b_and!447)))

(declare-fun b!7785 () Bool)

(declare-fun e!4382 () Bool)

(declare-fun tp_is_empty!377 () Bool)

(assert (=> b!7785 (= e!4382 tp_is_empty!377)))

(declare-fun mapIsEmpty!539 () Bool)

(declare-fun mapRes!539 () Bool)

(assert (=> mapIsEmpty!539 mapRes!539))

(declare-fun b!7786 () Bool)

(declare-fun res!7606 () Bool)

(declare-fun e!4380 () Bool)

(assert (=> b!7786 (=> (not res!7606) (not e!4380))))

(declare-datatypes ((array!683 0))(
  ( (array!684 (arr!329 (Array (_ BitVec 32) (_ BitVec 64))) (size!391 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!683)

(declare-datatypes ((List!225 0))(
  ( (Nil!222) (Cons!221 (h!787 (_ BitVec 64)) (t!2362 List!225)) )
))
(declare-fun arrayNoDuplicates!0 (array!683 (_ BitVec 32) List!225) Bool)

(assert (=> b!7786 (= res!7606 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!222))))

(declare-fun b!7787 () Bool)

(declare-fun e!4381 () Bool)

(assert (=> b!7787 (= e!4381 (and e!4382 mapRes!539))))

(declare-fun condMapEmpty!539 () Bool)

(declare-datatypes ((V!679 0))(
  ( (V!680 (val!194 Int)) )
))
(declare-datatypes ((ValueCell!172 0))(
  ( (ValueCellFull!172 (v!1286 V!679)) (EmptyCell!172) )
))
(declare-datatypes ((array!685 0))(
  ( (array!686 (arr!330 (Array (_ BitVec 32) ValueCell!172)) (size!392 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!685)

(declare-fun mapDefault!539 () ValueCell!172)


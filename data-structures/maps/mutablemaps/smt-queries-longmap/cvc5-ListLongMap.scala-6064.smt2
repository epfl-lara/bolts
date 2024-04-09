; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78508 () Bool)

(assert start!78508)

(declare-fun mapIsEmpty!30573 () Bool)

(declare-fun mapRes!30573 () Bool)

(assert (=> mapIsEmpty!30573 mapRes!30573))

(declare-fun b!914915 () Bool)

(declare-fun res!617025 () Bool)

(declare-fun e!513419 () Bool)

(assert (=> b!914915 (=> (not res!617025) (not e!513419))))

(declare-datatypes ((array!54438 0))(
  ( (array!54439 (arr!26161 (Array (_ BitVec 32) (_ BitVec 64))) (size!26621 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54438)

(assert (=> b!914915 (= res!617025 (and (bvsle #b00000000000000000000000000000000 (size!26621 _keys!1487)) (bvslt (size!26621 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun b!914916 () Bool)

(declare-fun e!513422 () Bool)

(declare-datatypes ((List!18472 0))(
  ( (Nil!18469) (Cons!18468 (h!19614 (_ BitVec 64)) (t!26093 List!18472)) )
))
(declare-fun contains!4704 (List!18472 (_ BitVec 64)) Bool)

(assert (=> b!914916 (= e!513422 (contains!4704 Nil!18469 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!30573 () Bool)

(declare-fun tp!58641 () Bool)

(declare-fun e!513424 () Bool)

(assert (=> mapNonEmpty!30573 (= mapRes!30573 (and tp!58641 e!513424))))

(declare-fun mapKey!30573 () (_ BitVec 32))

(declare-datatypes ((V!30583 0))(
  ( (V!30584 (val!9657 Int)) )
))
(declare-datatypes ((ValueCell!9125 0))(
  ( (ValueCellFull!9125 (v!12174 V!30583)) (EmptyCell!9125) )
))
(declare-fun mapValue!30573 () ValueCell!9125)

(declare-fun mapRest!30573 () (Array (_ BitVec 32) ValueCell!9125))

(declare-datatypes ((array!54440 0))(
  ( (array!54441 (arr!26162 (Array (_ BitVec 32) ValueCell!9125)) (size!26622 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54440)

(assert (=> mapNonEmpty!30573 (= (arr!26162 _values!1231) (store mapRest!30573 mapKey!30573 mapValue!30573))))

(declare-fun b!914917 () Bool)

(declare-fun res!617021 () Bool)

(assert (=> b!914917 (=> (not res!617021) (not e!513419))))

(declare-fun noDuplicate!1332 (List!18472) Bool)

(assert (=> b!914917 (= res!617021 (noDuplicate!1332 Nil!18469))))

(declare-fun b!914918 () Bool)

(declare-fun res!617023 () Bool)

(assert (=> b!914918 (=> (not res!617023) (not e!513419))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54438 (_ BitVec 32)) Bool)

(assert (=> b!914918 (= res!617023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!914919 () Bool)

(declare-fun e!513420 () Bool)

(declare-fun e!513421 () Bool)

(assert (=> b!914919 (= e!513420 (and e!513421 mapRes!30573))))

(declare-fun condMapEmpty!30573 () Bool)

(declare-fun mapDefault!30573 () ValueCell!9125)


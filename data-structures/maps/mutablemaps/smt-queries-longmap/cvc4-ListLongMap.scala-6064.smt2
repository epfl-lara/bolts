; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78512 () Bool)

(assert start!78512)

(declare-fun b!914969 () Bool)

(declare-fun e!513460 () Bool)

(declare-fun tp_is_empty!19217 () Bool)

(assert (=> b!914969 (= e!513460 tp_is_empty!19217)))

(declare-fun b!914970 () Bool)

(declare-fun res!617060 () Bool)

(declare-fun e!513457 () Bool)

(assert (=> b!914970 (=> (not res!617060) (not e!513457))))

(declare-datatypes ((array!54446 0))(
  ( (array!54447 (arr!26165 (Array (_ BitVec 32) (_ BitVec 64))) (size!26625 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54446)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54446 (_ BitVec 32)) Bool)

(assert (=> b!914970 (= res!617060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!914971 () Bool)

(declare-fun e!513458 () Bool)

(assert (=> b!914971 (= e!513457 e!513458)))

(declare-fun res!617058 () Bool)

(assert (=> b!914971 (=> res!617058 e!513458)))

(declare-datatypes ((List!18474 0))(
  ( (Nil!18471) (Cons!18470 (h!19616 (_ BitVec 64)) (t!26095 List!18474)) )
))
(declare-fun contains!4706 (List!18474 (_ BitVec 64)) Bool)

(assert (=> b!914971 (= res!617058 (contains!4706 Nil!18471 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914972 () Bool)

(assert (=> b!914972 (= e!513458 (contains!4706 Nil!18471 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914973 () Bool)

(declare-fun res!617061 () Bool)

(assert (=> b!914973 (=> (not res!617061) (not e!513457))))

(assert (=> b!914973 (= res!617061 (and (bvsle #b00000000000000000000000000000000 (size!26625 _keys!1487)) (bvslt (size!26625 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!30579 () Bool)

(declare-fun mapRes!30579 () Bool)

(declare-fun tp!58647 () Bool)

(assert (=> mapNonEmpty!30579 (= mapRes!30579 (and tp!58647 e!513460))))

(declare-datatypes ((V!30587 0))(
  ( (V!30588 (val!9659 Int)) )
))
(declare-datatypes ((ValueCell!9127 0))(
  ( (ValueCellFull!9127 (v!12176 V!30587)) (EmptyCell!9127) )
))
(declare-fun mapRest!30579 () (Array (_ BitVec 32) ValueCell!9127))

(declare-fun mapValue!30579 () ValueCell!9127)

(declare-fun mapKey!30579 () (_ BitVec 32))

(declare-datatypes ((array!54448 0))(
  ( (array!54449 (arr!26166 (Array (_ BitVec 32) ValueCell!9127)) (size!26626 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54448)

(assert (=> mapNonEmpty!30579 (= (arr!26166 _values!1231) (store mapRest!30579 mapKey!30579 mapValue!30579))))

(declare-fun b!914974 () Bool)

(declare-fun e!513456 () Bool)

(declare-fun e!513455 () Bool)

(assert (=> b!914974 (= e!513456 (and e!513455 mapRes!30579))))

(declare-fun condMapEmpty!30579 () Bool)

(declare-fun mapDefault!30579 () ValueCell!9127)


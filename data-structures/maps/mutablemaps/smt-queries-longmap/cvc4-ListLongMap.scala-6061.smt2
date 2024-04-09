; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78468 () Bool)

(assert start!78468)

(declare-fun b!914708 () Bool)

(declare-fun e!513265 () Bool)

(declare-fun tp_is_empty!19199 () Bool)

(assert (=> b!914708 (= e!513265 tp_is_empty!19199)))

(declare-fun b!914709 () Bool)

(declare-fun e!513263 () Bool)

(declare-datatypes ((array!54404 0))(
  ( (array!54405 (arr!26147 (Array (_ BitVec 32) (_ BitVec 64))) (size!26607 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54404)

(assert (=> b!914709 (= e!513263 (bvsgt #b00000000000000000000000000000000 (size!26607 _keys!1487)))))

(declare-fun b!914710 () Bool)

(declare-fun e!513261 () Bool)

(assert (=> b!914710 (= e!513261 tp_is_empty!19199)))

(declare-fun mapNonEmpty!30543 () Bool)

(declare-fun mapRes!30543 () Bool)

(declare-fun tp!58611 () Bool)

(assert (=> mapNonEmpty!30543 (= mapRes!30543 (and tp!58611 e!513265))))

(declare-datatypes ((V!30563 0))(
  ( (V!30564 (val!9650 Int)) )
))
(declare-datatypes ((ValueCell!9118 0))(
  ( (ValueCellFull!9118 (v!12167 V!30563)) (EmptyCell!9118) )
))
(declare-fun mapRest!30543 () (Array (_ BitVec 32) ValueCell!9118))

(declare-datatypes ((array!54406 0))(
  ( (array!54407 (arr!26148 (Array (_ BitVec 32) ValueCell!9118)) (size!26608 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54406)

(declare-fun mapValue!30543 () ValueCell!9118)

(declare-fun mapKey!30543 () (_ BitVec 32))

(assert (=> mapNonEmpty!30543 (= (arr!26148 _values!1231) (store mapRest!30543 mapKey!30543 mapValue!30543))))

(declare-fun b!914711 () Bool)

(declare-fun e!513262 () Bool)

(assert (=> b!914711 (= e!513262 (and e!513261 mapRes!30543))))

(declare-fun condMapEmpty!30543 () Bool)

(declare-fun mapDefault!30543 () ValueCell!9118)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112228 () Bool)

(assert start!112228)

(declare-fun b_free!30587 () Bool)

(declare-fun b_next!30587 () Bool)

(assert (=> start!112228 (= b_free!30587 (not b_next!30587))))

(declare-fun tp!107398 () Bool)

(declare-fun b_and!49247 () Bool)

(assert (=> start!112228 (= tp!107398 b_and!49247)))

(declare-fun b!1328635 () Bool)

(declare-fun e!757575 () Bool)

(declare-fun e!757576 () Bool)

(declare-fun mapRes!56419 () Bool)

(assert (=> b!1328635 (= e!757575 (and e!757576 mapRes!56419))))

(declare-fun condMapEmpty!56419 () Bool)

(declare-datatypes ((V!53765 0))(
  ( (V!53766 (val!18323 Int)) )
))
(declare-datatypes ((ValueCell!17350 0))(
  ( (ValueCellFull!17350 (v!20958 V!53765)) (EmptyCell!17350) )
))
(declare-datatypes ((array!89853 0))(
  ( (array!89854 (arr!43388 (Array (_ BitVec 32) ValueCell!17350)) (size!43939 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89853)

(declare-fun mapDefault!56419 () ValueCell!17350)


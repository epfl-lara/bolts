; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95942 () Bool)

(assert start!95942)

(declare-fun b_free!22559 () Bool)

(declare-fun b_next!22559 () Bool)

(assert (=> start!95942 (= b_free!22559 (not b_next!22559))))

(declare-fun tp!79526 () Bool)

(declare-fun b_and!35811 () Bool)

(assert (=> start!95942 (= tp!79526 b_and!35811)))

(declare-fun b!1085979 () Bool)

(declare-fun res!724203 () Bool)

(declare-fun e!620411 () Bool)

(assert (=> b!1085979 (=> (not res!724203) (not e!620411))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70018 0))(
  ( (array!70019 (arr!33679 (Array (_ BitVec 32) (_ BitVec 64))) (size!34216 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70018)

(assert (=> b!1085979 (= res!724203 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34216 _keys!1070))))))

(declare-fun b!1085980 () Bool)

(declare-fun res!724199 () Bool)

(assert (=> b!1085980 (=> (not res!724199) (not e!620411))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40541 0))(
  ( (V!40542 (val!13337 Int)) )
))
(declare-datatypes ((ValueCell!12571 0))(
  ( (ValueCellFull!12571 (v!15959 V!40541)) (EmptyCell!12571) )
))
(declare-datatypes ((array!70020 0))(
  ( (array!70021 (arr!33680 (Array (_ BitVec 32) ValueCell!12571)) (size!34217 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70020)

(assert (=> b!1085980 (= res!724199 (and (= (size!34217 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34216 _keys!1070) (size!34217 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085981 () Bool)

(declare-fun e!620415 () Bool)

(declare-fun e!620409 () Bool)

(declare-fun mapRes!41596 () Bool)

(assert (=> b!1085981 (= e!620415 (and e!620409 mapRes!41596))))

(declare-fun condMapEmpty!41596 () Bool)

(declare-fun mapDefault!41596 () ValueCell!12571)


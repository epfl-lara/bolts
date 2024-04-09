; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111768 () Bool)

(assert start!111768)

(declare-fun b_free!30389 () Bool)

(declare-fun b_next!30389 () Bool)

(assert (=> start!111768 (= b_free!30389 (not b_next!30389))))

(declare-fun tp!106644 () Bool)

(declare-fun b_and!48937 () Bool)

(assert (=> start!111768 (= tp!106644 b_and!48937)))

(declare-fun mapIsEmpty!55961 () Bool)

(declare-fun mapRes!55961 () Bool)

(assert (=> mapIsEmpty!55961 mapRes!55961))

(declare-fun b!1323863 () Bool)

(declare-fun e!754732 () Bool)

(declare-fun e!754731 () Bool)

(assert (=> b!1323863 (= e!754732 (and e!754731 mapRes!55961))))

(declare-fun condMapEmpty!55961 () Bool)

(declare-datatypes ((V!53381 0))(
  ( (V!53382 (val!18179 Int)) )
))
(declare-datatypes ((ValueCell!17206 0))(
  ( (ValueCellFull!17206 (v!20807 V!53381)) (EmptyCell!17206) )
))
(declare-datatypes ((array!89289 0))(
  ( (array!89290 (arr!43114 (Array (_ BitVec 32) ValueCell!17206)) (size!43665 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89289)

(declare-fun mapDefault!55961 () ValueCell!17206)


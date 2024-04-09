; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111762 () Bool)

(assert start!111762)

(declare-fun b_free!30383 () Bool)

(declare-fun b_next!30383 () Bool)

(assert (=> start!111762 (= b_free!30383 (not b_next!30383))))

(declare-fun tp!106625 () Bool)

(declare-fun b_and!48931 () Bool)

(assert (=> start!111762 (= tp!106625 b_and!48931)))

(declare-fun mapNonEmpty!55952 () Bool)

(declare-fun mapRes!55952 () Bool)

(declare-fun tp!106626 () Bool)

(declare-fun e!754687 () Bool)

(assert (=> mapNonEmpty!55952 (= mapRes!55952 (and tp!106626 e!754687))))

(declare-datatypes ((V!53373 0))(
  ( (V!53374 (val!18176 Int)) )
))
(declare-datatypes ((ValueCell!17203 0))(
  ( (ValueCellFull!17203 (v!20804 V!53373)) (EmptyCell!17203) )
))
(declare-fun mapRest!55952 () (Array (_ BitVec 32) ValueCell!17203))

(declare-datatypes ((array!89281 0))(
  ( (array!89282 (arr!43110 (Array (_ BitVec 32) ValueCell!17203)) (size!43661 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89281)

(declare-fun mapValue!55952 () ValueCell!17203)

(declare-fun mapKey!55952 () (_ BitVec 32))

(assert (=> mapNonEmpty!55952 (= (arr!43110 _values!1337) (store mapRest!55952 mapKey!55952 mapValue!55952))))

(declare-fun b!1323791 () Bool)

(declare-fun e!754686 () Bool)

(declare-fun e!754684 () Bool)

(assert (=> b!1323791 (= e!754686 (and e!754684 mapRes!55952))))

(declare-fun condMapEmpty!55952 () Bool)

(declare-fun mapDefault!55952 () ValueCell!17203)


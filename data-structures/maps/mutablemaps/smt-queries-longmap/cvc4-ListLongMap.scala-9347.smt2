; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111558 () Bool)

(assert start!111558)

(declare-fun b_free!30179 () Bool)

(declare-fun b_next!30179 () Bool)

(assert (=> start!111558 (= b_free!30179 (not b_next!30179))))

(declare-fun tp!106013 () Bool)

(declare-fun b_and!48527 () Bool)

(assert (=> start!111558 (= tp!106013 b_and!48527)))

(declare-fun b!1320249 () Bool)

(declare-fun res!876349 () Bool)

(declare-fun e!753157 () Bool)

(assert (=> b!1320249 (=> (not res!876349) (not e!753157))))

(declare-datatypes ((array!88893 0))(
  ( (array!88894 (arr!42916 (Array (_ BitVec 32) (_ BitVec 64))) (size!43467 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88893)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320249 (= res!876349 (not (= (select (arr!42916 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320250 () Bool)

(declare-fun e!753153 () Bool)

(declare-fun e!753155 () Bool)

(declare-fun mapRes!55646 () Bool)

(assert (=> b!1320250 (= e!753153 (and e!753155 mapRes!55646))))

(declare-fun condMapEmpty!55646 () Bool)

(declare-datatypes ((V!53101 0))(
  ( (V!53102 (val!18074 Int)) )
))
(declare-datatypes ((ValueCell!17101 0))(
  ( (ValueCellFull!17101 (v!20702 V!53101)) (EmptyCell!17101) )
))
(declare-datatypes ((array!88895 0))(
  ( (array!88896 (arr!42917 (Array (_ BitVec 32) ValueCell!17101)) (size!43468 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88895)

(declare-fun mapDefault!55646 () ValueCell!17101)


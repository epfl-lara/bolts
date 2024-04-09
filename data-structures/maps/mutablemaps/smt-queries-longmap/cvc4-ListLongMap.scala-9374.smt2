; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111720 () Bool)

(assert start!111720)

(declare-fun b_free!30341 () Bool)

(declare-fun b_next!30341 () Bool)

(assert (=> start!111720 (= b_free!30341 (not b_next!30341))))

(declare-fun tp!106499 () Bool)

(declare-fun b_and!48851 () Bool)

(assert (=> start!111720 (= tp!106499 b_and!48851)))

(declare-fun b!1323084 () Bool)

(declare-fun res!878294 () Bool)

(declare-fun e!754370 () Bool)

(assert (=> b!1323084 (=> (not res!878294) (not e!754370))))

(declare-datatypes ((array!89197 0))(
  ( (array!89198 (arr!43068 (Array (_ BitVec 32) (_ BitVec 64))) (size!43619 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89197)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323084 (= res!878294 (validKeyInArray!0 (select (arr!43068 _keys!1609) from!2000)))))

(declare-fun b!1323085 () Bool)

(declare-fun res!878292 () Bool)

(assert (=> b!1323085 (=> (not res!878292) (not e!754370))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1323085 (= res!878292 (not (= (select (arr!43068 _keys!1609) from!2000) k!1164)))))

(declare-fun mapIsEmpty!55889 () Bool)

(declare-fun mapRes!55889 () Bool)

(assert (=> mapIsEmpty!55889 mapRes!55889))

(declare-fun b!1323086 () Bool)

(declare-fun e!754372 () Bool)

(declare-fun e!754371 () Bool)

(assert (=> b!1323086 (= e!754372 (and e!754371 mapRes!55889))))

(declare-fun condMapEmpty!55889 () Bool)

(declare-datatypes ((V!53317 0))(
  ( (V!53318 (val!18155 Int)) )
))
(declare-datatypes ((ValueCell!17182 0))(
  ( (ValueCellFull!17182 (v!20783 V!53317)) (EmptyCell!17182) )
))
(declare-datatypes ((array!89199 0))(
  ( (array!89200 (arr!43069 (Array (_ BitVec 32) ValueCell!17182)) (size!43620 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89199)

(declare-fun mapDefault!55889 () ValueCell!17182)


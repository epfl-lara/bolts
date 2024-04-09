; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111960 () Bool)

(assert start!111960)

(declare-fun b_free!30523 () Bool)

(declare-fun b_next!30523 () Bool)

(assert (=> start!111960 (= b_free!30523 (not b_next!30523))))

(declare-fun tp!107049 () Bool)

(declare-fun b_and!49151 () Bool)

(assert (=> start!111960 (= tp!107049 b_and!49151)))

(declare-fun b!1326332 () Bool)

(declare-fun res!880374 () Bool)

(declare-fun e!755995 () Bool)

(assert (=> b!1326332 (=> (not res!880374) (not e!755995))))

(declare-datatypes ((array!89553 0))(
  ( (array!89554 (arr!43245 (Array (_ BitVec 32) (_ BitVec 64))) (size!43796 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89553)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326332 (= res!880374 (validKeyInArray!0 (select (arr!43245 _keys!1609) from!2000)))))

(declare-fun b!1326333 () Bool)

(declare-fun res!880378 () Bool)

(assert (=> b!1326333 (=> (not res!880378) (not e!755995))))

(declare-datatypes ((V!53561 0))(
  ( (V!53562 (val!18246 Int)) )
))
(declare-datatypes ((ValueCell!17273 0))(
  ( (ValueCellFull!17273 (v!20877 V!53561)) (EmptyCell!17273) )
))
(declare-datatypes ((array!89555 0))(
  ( (array!89556 (arr!43246 (Array (_ BitVec 32) ValueCell!17273)) (size!43797 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89555)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1326333 (= res!880378 (and (= (size!43797 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43796 _keys!1609) (size!43797 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326334 () Bool)

(declare-fun e!755993 () Bool)

(declare-fun e!755992 () Bool)

(declare-fun mapRes!56166 () Bool)

(assert (=> b!1326334 (= e!755993 (and e!755992 mapRes!56166))))

(declare-fun condMapEmpty!56166 () Bool)

(declare-fun mapDefault!56166 () ValueCell!17273)


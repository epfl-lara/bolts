; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111954 () Bool)

(assert start!111954)

(declare-fun b_free!30517 () Bool)

(declare-fun b_next!30517 () Bool)

(assert (=> start!111954 (= b_free!30517 (not b_next!30517))))

(declare-fun tp!107031 () Bool)

(declare-fun b_and!49139 () Bool)

(assert (=> start!111954 (= tp!107031 b_and!49139)))

(declare-fun mapIsEmpty!56157 () Bool)

(declare-fun mapRes!56157 () Bool)

(assert (=> mapIsEmpty!56157 mapRes!56157))

(declare-fun b!1326227 () Bool)

(declare-fun res!880304 () Bool)

(declare-fun e!755950 () Bool)

(assert (=> b!1326227 (=> (not res!880304) (not e!755950))))

(declare-datatypes ((array!89541 0))(
  ( (array!89542 (arr!43239 (Array (_ BitVec 32) (_ BitVec 64))) (size!43790 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89541)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326227 (= res!880304 (validKeyInArray!0 (select (arr!43239 _keys!1609) from!2000)))))

(declare-fun res!880301 () Bool)

(assert (=> start!111954 (=> (not res!880301) (not e!755950))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111954 (= res!880301 (validMask!0 mask!2019))))

(assert (=> start!111954 e!755950))

(declare-fun array_inv!32579 (array!89541) Bool)

(assert (=> start!111954 (array_inv!32579 _keys!1609)))

(assert (=> start!111954 true))

(declare-fun tp_is_empty!36337 () Bool)

(assert (=> start!111954 tp_is_empty!36337))

(declare-datatypes ((V!53553 0))(
  ( (V!53554 (val!18243 Int)) )
))
(declare-datatypes ((ValueCell!17270 0))(
  ( (ValueCellFull!17270 (v!20874 V!53553)) (EmptyCell!17270) )
))
(declare-datatypes ((array!89543 0))(
  ( (array!89544 (arr!43240 (Array (_ BitVec 32) ValueCell!17270)) (size!43791 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89543)

(declare-fun e!755949 () Bool)

(declare-fun array_inv!32580 (array!89543) Bool)

(assert (=> start!111954 (and (array_inv!32580 _values!1337) e!755949)))

(assert (=> start!111954 tp!107031))

(declare-fun b!1326228 () Bool)

(declare-fun e!755947 () Bool)

(assert (=> b!1326228 (= e!755949 (and e!755947 mapRes!56157))))

(declare-fun condMapEmpty!56157 () Bool)

(declare-fun mapDefault!56157 () ValueCell!17270)


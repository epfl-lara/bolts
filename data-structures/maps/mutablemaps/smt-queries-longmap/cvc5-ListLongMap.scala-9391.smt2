; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111818 () Bool)

(assert start!111818)

(declare-fun b_free!30439 () Bool)

(declare-fun b_next!30439 () Bool)

(assert (=> start!111818 (= b_free!30439 (not b_next!30439))))

(declare-fun tp!106794 () Bool)

(declare-fun b_and!48987 () Bool)

(assert (=> start!111818 (= tp!106794 b_and!48987)))

(declare-fun b!1324490 () Bool)

(declare-fun res!879216 () Bool)

(declare-fun e!755106 () Bool)

(assert (=> b!1324490 (=> (not res!879216) (not e!755106))))

(declare-datatypes ((array!89387 0))(
  ( (array!89388 (arr!43163 (Array (_ BitVec 32) (_ BitVec 64))) (size!43714 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89387)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53449 0))(
  ( (V!53450 (val!18204 Int)) )
))
(declare-datatypes ((ValueCell!17231 0))(
  ( (ValueCellFull!17231 (v!20832 V!53449)) (EmptyCell!17231) )
))
(declare-datatypes ((array!89389 0))(
  ( (array!89390 (arr!43164 (Array (_ BitVec 32) ValueCell!17231)) (size!43715 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89389)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324490 (= res!879216 (and (= (size!43715 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43714 _keys!1609) (size!43715 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324491 () Bool)

(declare-fun e!755105 () Bool)

(declare-fun e!755104 () Bool)

(declare-fun mapRes!56036 () Bool)

(assert (=> b!1324491 (= e!755105 (and e!755104 mapRes!56036))))

(declare-fun condMapEmpty!56036 () Bool)

(declare-fun mapDefault!56036 () ValueCell!17231)


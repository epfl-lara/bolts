; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111800 () Bool)

(assert start!111800)

(declare-fun b_free!30421 () Bool)

(declare-fun b_next!30421 () Bool)

(assert (=> start!111800 (= b_free!30421 (not b_next!30421))))

(declare-fun tp!106740 () Bool)

(declare-fun b_and!48969 () Bool)

(assert (=> start!111800 (= tp!106740 b_and!48969)))

(declare-fun b!1324247 () Bool)

(declare-fun res!879058 () Bool)

(declare-fun e!754971 () Bool)

(assert (=> b!1324247 (=> (not res!879058) (not e!754971))))

(declare-datatypes ((array!89351 0))(
  ( (array!89352 (arr!43145 (Array (_ BitVec 32) (_ BitVec 64))) (size!43696 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89351)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53425 0))(
  ( (V!53426 (val!18195 Int)) )
))
(declare-datatypes ((ValueCell!17222 0))(
  ( (ValueCellFull!17222 (v!20823 V!53425)) (EmptyCell!17222) )
))
(declare-datatypes ((array!89353 0))(
  ( (array!89354 (arr!43146 (Array (_ BitVec 32) ValueCell!17222)) (size!43697 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89353)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324247 (= res!879058 (and (= (size!43697 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43696 _keys!1609) (size!43697 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324248 () Bool)

(assert (=> b!1324248 (= e!754971 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53425)

(declare-fun minValue!1279 () V!53425)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589396 () Bool)

(declare-datatypes ((tuple2!23608 0))(
  ( (tuple2!23609 (_1!11814 (_ BitVec 64)) (_2!11814 V!53425)) )
))
(declare-datatypes ((List!30782 0))(
  ( (Nil!30779) (Cons!30778 (h!31987 tuple2!23608) (t!44715 List!30782)) )
))
(declare-datatypes ((ListLongMap!21277 0))(
  ( (ListLongMap!21278 (toList!10654 List!30782)) )
))
(declare-fun contains!8745 (ListLongMap!21277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5591 (array!89351 array!89353 (_ BitVec 32) (_ BitVec 32) V!53425 V!53425 (_ BitVec 32) Int) ListLongMap!21277)

(assert (=> b!1324248 (= lt!589396 (contains!8745 (getCurrentListMap!5591 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324249 () Bool)

(declare-fun e!754969 () Bool)

(declare-fun e!754968 () Bool)

(declare-fun mapRes!56009 () Bool)

(assert (=> b!1324249 (= e!754969 (and e!754968 mapRes!56009))))

(declare-fun condMapEmpty!56009 () Bool)

(declare-fun mapDefault!56009 () ValueCell!17222)


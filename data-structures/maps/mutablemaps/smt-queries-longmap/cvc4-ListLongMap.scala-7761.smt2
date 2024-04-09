; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97350 () Bool)

(assert start!97350)

(declare-fun b_free!23285 () Bool)

(declare-fun b_next!23285 () Bool)

(assert (=> start!97350 (= b_free!23285 (not b_next!23285))))

(declare-fun tp!82155 () Bool)

(declare-fun b_and!37423 () Bool)

(assert (=> start!97350 (= tp!82155 b_and!37423)))

(declare-fun b!1108469 () Bool)

(declare-fun res!739834 () Bool)

(declare-fun e!632386 () Bool)

(assert (=> b!1108469 (=> (not res!739834) (not e!632386))))

(declare-datatypes ((array!71958 0))(
  ( (array!71959 (arr!34628 (Array (_ BitVec 32) (_ BitVec 64))) (size!35165 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71958)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1108469 (= res!739834 (= (select (arr!34628 _keys!1208) i!673) k!934))))

(declare-fun b!1108470 () Bool)

(declare-fun e!632381 () Bool)

(assert (=> b!1108470 (= e!632386 e!632381)))

(declare-fun res!739836 () Bool)

(assert (=> b!1108470 (=> (not res!739836) (not e!632381))))

(declare-fun lt!495797 () array!71958)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71958 (_ BitVec 32)) Bool)

(assert (=> b!1108470 (= res!739836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495797 mask!1564))))

(assert (=> b!1108470 (= lt!495797 (array!71959 (store (arr!34628 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35165 _keys!1208)))))

(declare-fun mapIsEmpty!43135 () Bool)

(declare-fun mapRes!43135 () Bool)

(assert (=> mapIsEmpty!43135 mapRes!43135))

(declare-fun b!1108471 () Bool)

(declare-fun e!632380 () Bool)

(declare-fun e!632385 () Bool)

(assert (=> b!1108471 (= e!632380 (and e!632385 mapRes!43135))))

(declare-fun condMapEmpty!43135 () Bool)

(declare-datatypes ((V!41853 0))(
  ( (V!41854 (val!13829 Int)) )
))
(declare-datatypes ((ValueCell!13063 0))(
  ( (ValueCellFull!13063 (v!16463 V!41853)) (EmptyCell!13063) )
))
(declare-datatypes ((array!71960 0))(
  ( (array!71961 (arr!34629 (Array (_ BitVec 32) ValueCell!13063)) (size!35166 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71960)

(declare-fun mapDefault!43135 () ValueCell!13063)


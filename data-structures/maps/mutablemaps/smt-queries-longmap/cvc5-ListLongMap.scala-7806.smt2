; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97616 () Bool)

(assert start!97616)

(declare-fun b!1114522 () Bool)

(declare-fun e!635244 () Bool)

(assert (=> b!1114522 (= e!635244 (not true))))

(declare-datatypes ((array!72470 0))(
  ( (array!72471 (arr!34884 (Array (_ BitVec 32) (_ BitVec 64))) (size!35421 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72470)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114522 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36483 0))(
  ( (Unit!36484) )
))
(declare-fun lt!496821 () Unit!36483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72470 (_ BitVec 64) (_ BitVec 32)) Unit!36483)

(assert (=> b!1114522 (= lt!496821 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!744050 () Bool)

(declare-fun e!635247 () Bool)

(assert (=> start!97616 (=> (not res!744050) (not e!635247))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97616 (= res!744050 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35421 _keys!1208))))))

(assert (=> start!97616 e!635247))

(declare-fun array_inv!26686 (array!72470) Bool)

(assert (=> start!97616 (array_inv!26686 _keys!1208)))

(assert (=> start!97616 true))

(declare-datatypes ((V!42209 0))(
  ( (V!42210 (val!13962 Int)) )
))
(declare-datatypes ((ValueCell!13196 0))(
  ( (ValueCellFull!13196 (v!16596 V!42209)) (EmptyCell!13196) )
))
(declare-datatypes ((array!72472 0))(
  ( (array!72473 (arr!34885 (Array (_ BitVec 32) ValueCell!13196)) (size!35422 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72472)

(declare-fun e!635248 () Bool)

(declare-fun array_inv!26687 (array!72472) Bool)

(assert (=> start!97616 (and (array_inv!26687 _values!996) e!635248)))

(declare-fun mapNonEmpty!43534 () Bool)

(declare-fun mapRes!43534 () Bool)

(declare-fun tp!82779 () Bool)

(declare-fun e!635245 () Bool)

(assert (=> mapNonEmpty!43534 (= mapRes!43534 (and tp!82779 e!635245))))

(declare-fun mapKey!43534 () (_ BitVec 32))

(declare-fun mapValue!43534 () ValueCell!13196)

(declare-fun mapRest!43534 () (Array (_ BitVec 32) ValueCell!13196))

(assert (=> mapNonEmpty!43534 (= (arr!34885 _values!996) (store mapRest!43534 mapKey!43534 mapValue!43534))))

(declare-fun b!1114523 () Bool)

(declare-fun res!744047 () Bool)

(assert (=> b!1114523 (=> (not res!744047) (not e!635247))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114523 (= res!744047 (validMask!0 mask!1564))))

(declare-fun b!1114524 () Bool)

(declare-fun e!635249 () Bool)

(assert (=> b!1114524 (= e!635248 (and e!635249 mapRes!43534))))

(declare-fun condMapEmpty!43534 () Bool)

(declare-fun mapDefault!43534 () ValueCell!13196)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97650 () Bool)

(assert start!97650)

(declare-fun b!1115185 () Bool)

(declare-fun res!744558 () Bool)

(declare-fun e!635552 () Bool)

(assert (=> b!1115185 (=> (not res!744558) (not e!635552))))

(declare-datatypes ((array!72534 0))(
  ( (array!72535 (arr!34916 (Array (_ BitVec 32) (_ BitVec 64))) (size!35453 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72534)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1115185 (= res!744558 (= (select (arr!34916 _keys!1208) i!673) k!934))))

(declare-fun b!1115186 () Bool)

(declare-fun res!744557 () Bool)

(assert (=> b!1115186 (=> (not res!744557) (not e!635552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115186 (= res!744557 (validKeyInArray!0 k!934))))

(declare-fun b!1115187 () Bool)

(declare-fun res!744556 () Bool)

(declare-fun e!635555 () Bool)

(assert (=> b!1115187 (=> (not res!744556) (not e!635555))))

(declare-fun lt!496923 () array!72534)

(declare-datatypes ((List!24450 0))(
  ( (Nil!24447) (Cons!24446 (h!25655 (_ BitVec 64)) (t!34938 List!24450)) )
))
(declare-fun arrayNoDuplicates!0 (array!72534 (_ BitVec 32) List!24450) Bool)

(assert (=> b!1115187 (= res!744556 (arrayNoDuplicates!0 lt!496923 #b00000000000000000000000000000000 Nil!24447))))

(declare-fun b!1115189 () Bool)

(declare-fun e!635550 () Bool)

(declare-fun tp_is_empty!27845 () Bool)

(assert (=> b!1115189 (= e!635550 tp_is_empty!27845)))

(declare-fun b!1115190 () Bool)

(assert (=> b!1115190 (= e!635555 (not true))))

(declare-fun arrayContainsKey!0 (array!72534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115190 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36503 0))(
  ( (Unit!36504) )
))
(declare-fun lt!496922 () Unit!36503)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72534 (_ BitVec 64) (_ BitVec 32)) Unit!36503)

(assert (=> b!1115190 (= lt!496922 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1115191 () Bool)

(declare-fun res!744553 () Bool)

(assert (=> b!1115191 (=> (not res!744553) (not e!635552))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72534 (_ BitVec 32)) Bool)

(assert (=> b!1115191 (= res!744553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115192 () Bool)

(declare-fun res!744561 () Bool)

(assert (=> b!1115192 (=> (not res!744561) (not e!635552))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42253 0))(
  ( (V!42254 (val!13979 Int)) )
))
(declare-datatypes ((ValueCell!13213 0))(
  ( (ValueCellFull!13213 (v!16613 V!42253)) (EmptyCell!13213) )
))
(declare-datatypes ((array!72536 0))(
  ( (array!72537 (arr!34917 (Array (_ BitVec 32) ValueCell!13213)) (size!35454 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72536)

(assert (=> b!1115192 (= res!744561 (and (= (size!35454 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35453 _keys!1208) (size!35454 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115193 () Bool)

(declare-fun e!635553 () Bool)

(declare-fun e!635554 () Bool)

(declare-fun mapRes!43585 () Bool)

(assert (=> b!1115193 (= e!635553 (and e!635554 mapRes!43585))))

(declare-fun condMapEmpty!43585 () Bool)

(declare-fun mapDefault!43585 () ValueCell!13213)


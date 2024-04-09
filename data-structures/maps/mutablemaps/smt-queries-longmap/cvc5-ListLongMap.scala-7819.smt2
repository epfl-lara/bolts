; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97694 () Bool)

(assert start!97694)

(declare-fun b!1116043 () Bool)

(declare-fun res!745217 () Bool)

(declare-fun e!635948 () Bool)

(assert (=> b!1116043 (=> (not res!745217) (not e!635948))))

(declare-datatypes ((array!72618 0))(
  ( (array!72619 (arr!34958 (Array (_ BitVec 32) (_ BitVec 64))) (size!35495 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72618)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72618 (_ BitVec 32)) Bool)

(assert (=> b!1116043 (= res!745217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116044 () Bool)

(declare-fun res!745220 () Bool)

(declare-fun e!635949 () Bool)

(assert (=> b!1116044 (=> (not res!745220) (not e!635949))))

(declare-fun lt!497055 () array!72618)

(declare-datatypes ((List!24467 0))(
  ( (Nil!24464) (Cons!24463 (h!25672 (_ BitVec 64)) (t!34955 List!24467)) )
))
(declare-fun arrayNoDuplicates!0 (array!72618 (_ BitVec 32) List!24467) Bool)

(assert (=> b!1116044 (= res!745220 (arrayNoDuplicates!0 lt!497055 #b00000000000000000000000000000000 Nil!24464))))

(declare-fun b!1116045 () Bool)

(declare-fun res!745219 () Bool)

(assert (=> b!1116045 (=> (not res!745219) (not e!635948))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1116045 (= res!745219 (= (select (arr!34958 _keys!1208) i!673) k!934))))

(declare-fun b!1116046 () Bool)

(assert (=> b!1116046 (= e!635949 (not true))))

(declare-fun arrayContainsKey!0 (array!72618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116046 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36529 0))(
  ( (Unit!36530) )
))
(declare-fun lt!497054 () Unit!36529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72618 (_ BitVec 64) (_ BitVec 32)) Unit!36529)

(assert (=> b!1116046 (= lt!497054 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116047 () Bool)

(declare-fun res!745218 () Bool)

(assert (=> b!1116047 (=> (not res!745218) (not e!635948))))

(assert (=> b!1116047 (= res!745218 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35495 _keys!1208))))))

(declare-fun b!1116048 () Bool)

(declare-fun res!745221 () Bool)

(assert (=> b!1116048 (=> (not res!745221) (not e!635948))))

(assert (=> b!1116048 (= res!745221 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24464))))

(declare-fun b!1116049 () Bool)

(declare-fun e!635946 () Bool)

(declare-fun e!635951 () Bool)

(declare-fun mapRes!43651 () Bool)

(assert (=> b!1116049 (= e!635946 (and e!635951 mapRes!43651))))

(declare-fun condMapEmpty!43651 () Bool)

(declare-datatypes ((V!42313 0))(
  ( (V!42314 (val!14001 Int)) )
))
(declare-datatypes ((ValueCell!13235 0))(
  ( (ValueCellFull!13235 (v!16635 V!42313)) (EmptyCell!13235) )
))
(declare-datatypes ((array!72620 0))(
  ( (array!72621 (arr!34959 (Array (_ BitVec 32) ValueCell!13235)) (size!35496 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72620)

(declare-fun mapDefault!43651 () ValueCell!13235)


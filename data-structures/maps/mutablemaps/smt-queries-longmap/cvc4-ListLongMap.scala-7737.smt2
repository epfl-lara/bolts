; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97206 () Bool)

(assert start!97206)

(declare-fun b!1105279 () Bool)

(declare-fun res!737577 () Bool)

(declare-fun e!630879 () Bool)

(assert (=> b!1105279 (=> (not res!737577) (not e!630879))))

(declare-datatypes ((array!71676 0))(
  ( (array!71677 (arr!34487 (Array (_ BitVec 32) (_ BitVec 64))) (size!35024 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71676)

(declare-datatypes ((List!24192 0))(
  ( (Nil!24189) (Cons!24188 (h!25397 (_ BitVec 64)) (t!34464 List!24192)) )
))
(declare-fun arrayNoDuplicates!0 (array!71676 (_ BitVec 32) List!24192) Bool)

(assert (=> b!1105279 (= res!737577 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24189))))

(declare-fun b!1105280 () Bool)

(declare-fun res!737574 () Bool)

(assert (=> b!1105280 (=> (not res!737574) (not e!630879))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71676 (_ BitVec 32)) Bool)

(assert (=> b!1105280 (= res!737574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105281 () Bool)

(declare-fun e!630881 () Bool)

(declare-fun tp_is_empty!27401 () Bool)

(assert (=> b!1105281 (= e!630881 tp_is_empty!27401)))

(declare-fun b!1105282 () Bool)

(declare-fun res!737576 () Bool)

(assert (=> b!1105282 (=> (not res!737576) (not e!630879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105282 (= res!737576 (validMask!0 mask!1564))))

(declare-fun b!1105283 () Bool)

(declare-fun e!630877 () Bool)

(assert (=> b!1105283 (= e!630877 tp_is_empty!27401)))

(declare-fun b!1105284 () Bool)

(declare-fun res!737569 () Bool)

(declare-fun e!630876 () Bool)

(assert (=> b!1105284 (=> (not res!737569) (not e!630876))))

(declare-fun lt!495267 () array!71676)

(assert (=> b!1105284 (= res!737569 (arrayNoDuplicates!0 lt!495267 #b00000000000000000000000000000000 Nil!24189))))

(declare-fun b!1105285 () Bool)

(assert (=> b!1105285 (= e!630879 e!630876)))

(declare-fun res!737570 () Bool)

(assert (=> b!1105285 (=> (not res!737570) (not e!630876))))

(assert (=> b!1105285 (= res!737570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495267 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105285 (= lt!495267 (array!71677 (store (arr!34487 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35024 _keys!1208)))))

(declare-fun b!1105286 () Bool)

(assert (=> b!1105286 (= e!630876 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105286 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36205 0))(
  ( (Unit!36206) )
))
(declare-fun lt!495266 () Unit!36205)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71676 (_ BitVec 64) (_ BitVec 32)) Unit!36205)

(assert (=> b!1105286 (= lt!495266 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105287 () Bool)

(declare-fun res!737573 () Bool)

(assert (=> b!1105287 (=> (not res!737573) (not e!630879))))

(assert (=> b!1105287 (= res!737573 (= (select (arr!34487 _keys!1208) i!673) k!934))))

(declare-fun b!1105288 () Bool)

(declare-fun e!630878 () Bool)

(declare-fun mapRes!42919 () Bool)

(assert (=> b!1105288 (= e!630878 (and e!630877 mapRes!42919))))

(declare-fun condMapEmpty!42919 () Bool)

(declare-datatypes ((V!41661 0))(
  ( (V!41662 (val!13757 Int)) )
))
(declare-datatypes ((ValueCell!12991 0))(
  ( (ValueCellFull!12991 (v!16391 V!41661)) (EmptyCell!12991) )
))
(declare-datatypes ((array!71678 0))(
  ( (array!71679 (arr!34488 (Array (_ BitVec 32) ValueCell!12991)) (size!35025 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71678)

(declare-fun mapDefault!42919 () ValueCell!12991)


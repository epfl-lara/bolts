; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100256 () Bool)

(assert start!100256)

(declare-fun b!1195100 () Bool)

(declare-fun e!679183 () Bool)

(declare-fun tp_is_empty!30287 () Bool)

(assert (=> b!1195100 (= e!679183 tp_is_empty!30287)))

(declare-fun b!1195101 () Bool)

(declare-fun res!795297 () Bool)

(declare-fun e!679181 () Bool)

(assert (=> b!1195101 (=> (not res!795297) (not e!679181))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195101 (= res!795297 (validMask!0 mask!1564))))

(declare-fun b!1195102 () Bool)

(declare-fun res!795298 () Bool)

(declare-fun e!679185 () Bool)

(assert (=> b!1195102 (=> (not res!795298) (not e!679185))))

(declare-datatypes ((array!77338 0))(
  ( (array!77339 (arr!37312 (Array (_ BitVec 32) (_ BitVec 64))) (size!37849 (_ BitVec 32))) )
))
(declare-fun lt!542831 () array!77338)

(declare-datatypes ((List!26433 0))(
  ( (Nil!26430) (Cons!26429 (h!27638 (_ BitVec 64)) (t!39111 List!26433)) )
))
(declare-fun arrayNoDuplicates!0 (array!77338 (_ BitVec 32) List!26433) Bool)

(assert (=> b!1195102 (= res!795298 (arrayNoDuplicates!0 lt!542831 #b00000000000000000000000000000000 Nil!26430))))

(declare-fun b!1195103 () Bool)

(assert (=> b!1195103 (= e!679181 e!679185)))

(declare-fun res!795295 () Bool)

(assert (=> b!1195103 (=> (not res!795295) (not e!679185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77338 (_ BitVec 32)) Bool)

(assert (=> b!1195103 (= res!795295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542831 mask!1564))))

(declare-fun _keys!1208 () array!77338)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195103 (= lt!542831 (array!77339 (store (arr!37312 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37849 _keys!1208)))))

(declare-fun b!1195104 () Bool)

(declare-fun res!795294 () Bool)

(assert (=> b!1195104 (=> (not res!795294) (not e!679181))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195104 (= res!795294 (validKeyInArray!0 k!934))))

(declare-fun b!1195105 () Bool)

(declare-fun res!795293 () Bool)

(assert (=> b!1195105 (=> (not res!795293) (not e!679181))))

(assert (=> b!1195105 (= res!795293 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37849 _keys!1208))))))

(declare-fun b!1195106 () Bool)

(assert (=> b!1195106 (= e!679185 (not true))))

(declare-fun arrayContainsKey!0 (array!77338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195106 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39562 0))(
  ( (Unit!39563) )
))
(declare-fun lt!542832 () Unit!39562)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77338 (_ BitVec 64) (_ BitVec 32)) Unit!39562)

(assert (=> b!1195106 (= lt!542832 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!47267 () Bool)

(declare-fun mapRes!47267 () Bool)

(assert (=> mapIsEmpty!47267 mapRes!47267))

(declare-fun b!1195107 () Bool)

(declare-fun e!679186 () Bool)

(declare-fun e!679184 () Bool)

(assert (=> b!1195107 (= e!679186 (and e!679184 mapRes!47267))))

(declare-fun condMapEmpty!47267 () Bool)

(declare-datatypes ((V!45509 0))(
  ( (V!45510 (val!15200 Int)) )
))
(declare-datatypes ((ValueCell!14434 0))(
  ( (ValueCellFull!14434 (v!17839 V!45509)) (EmptyCell!14434) )
))
(declare-datatypes ((array!77340 0))(
  ( (array!77341 (arr!37313 (Array (_ BitVec 32) ValueCell!14434)) (size!37850 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77340)

(declare-fun mapDefault!47267 () ValueCell!14434)


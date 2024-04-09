; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100246 () Bool)

(assert start!100246)

(declare-fun b!1194905 () Bool)

(declare-fun e!679094 () Bool)

(declare-fun tp_is_empty!30277 () Bool)

(assert (=> b!1194905 (= e!679094 tp_is_empty!30277)))

(declare-fun b!1194906 () Bool)

(declare-fun res!795144 () Bool)

(declare-fun e!679095 () Bool)

(assert (=> b!1194906 (=> (not res!795144) (not e!679095))))

(declare-datatypes ((array!77318 0))(
  ( (array!77319 (arr!37302 (Array (_ BitVec 32) (_ BitVec 64))) (size!37839 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77318)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45497 0))(
  ( (V!45498 (val!15195 Int)) )
))
(declare-datatypes ((ValueCell!14429 0))(
  ( (ValueCellFull!14429 (v!17834 V!45497)) (EmptyCell!14429) )
))
(declare-datatypes ((array!77320 0))(
  ( (array!77321 (arr!37303 (Array (_ BitVec 32) ValueCell!14429)) (size!37840 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77320)

(assert (=> b!1194906 (= res!795144 (and (= (size!37840 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37839 _keys!1208) (size!37840 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194907 () Bool)

(declare-fun res!795151 () Bool)

(declare-fun e!679092 () Bool)

(assert (=> b!1194907 (=> (not res!795151) (not e!679092))))

(declare-fun lt!542801 () array!77318)

(declare-datatypes ((List!26429 0))(
  ( (Nil!26426) (Cons!26425 (h!27634 (_ BitVec 64)) (t!39107 List!26429)) )
))
(declare-fun arrayNoDuplicates!0 (array!77318 (_ BitVec 32) List!26429) Bool)

(assert (=> b!1194907 (= res!795151 (arrayNoDuplicates!0 lt!542801 #b00000000000000000000000000000000 Nil!26426))))

(declare-fun b!1194908 () Bool)

(declare-fun e!679091 () Bool)

(assert (=> b!1194908 (= e!679091 tp_is_empty!30277)))

(declare-fun b!1194909 () Bool)

(declare-fun res!795149 () Bool)

(assert (=> b!1194909 (=> (not res!795149) (not e!679095))))

(assert (=> b!1194909 (= res!795149 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26426))))

(declare-fun b!1194911 () Bool)

(declare-fun res!795146 () Bool)

(assert (=> b!1194911 (=> (not res!795146) (not e!679095))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194911 (= res!795146 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37839 _keys!1208))))))

(declare-fun b!1194912 () Bool)

(declare-fun res!795142 () Bool)

(assert (=> b!1194912 (=> (not res!795142) (not e!679095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194912 (= res!795142 (validMask!0 mask!1564))))

(declare-fun b!1194913 () Bool)

(assert (=> b!1194913 (= e!679092 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194913 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39554 0))(
  ( (Unit!39555) )
))
(declare-fun lt!542802 () Unit!39554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77318 (_ BitVec 64) (_ BitVec 32)) Unit!39554)

(assert (=> b!1194913 (= lt!542802 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1194914 () Bool)

(declare-fun res!795150 () Bool)

(assert (=> b!1194914 (=> (not res!795150) (not e!679095))))

(assert (=> b!1194914 (= res!795150 (= (select (arr!37302 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47252 () Bool)

(declare-fun mapRes!47252 () Bool)

(assert (=> mapIsEmpty!47252 mapRes!47252))

(declare-fun mapNonEmpty!47252 () Bool)

(declare-fun tp!89863 () Bool)

(assert (=> mapNonEmpty!47252 (= mapRes!47252 (and tp!89863 e!679091))))

(declare-fun mapRest!47252 () (Array (_ BitVec 32) ValueCell!14429))

(declare-fun mapValue!47252 () ValueCell!14429)

(declare-fun mapKey!47252 () (_ BitVec 32))

(assert (=> mapNonEmpty!47252 (= (arr!37303 _values!996) (store mapRest!47252 mapKey!47252 mapValue!47252))))

(declare-fun b!1194915 () Bool)

(declare-fun res!795148 () Bool)

(assert (=> b!1194915 (=> (not res!795148) (not e!679095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194915 (= res!795148 (validKeyInArray!0 k!934))))

(declare-fun b!1194916 () Bool)

(assert (=> b!1194916 (= e!679095 e!679092)))

(declare-fun res!795145 () Bool)

(assert (=> b!1194916 (=> (not res!795145) (not e!679092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77318 (_ BitVec 32)) Bool)

(assert (=> b!1194916 (= res!795145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542801 mask!1564))))

(assert (=> b!1194916 (= lt!542801 (array!77319 (store (arr!37302 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37839 _keys!1208)))))

(declare-fun b!1194917 () Bool)

(declare-fun e!679093 () Bool)

(assert (=> b!1194917 (= e!679093 (and e!679094 mapRes!47252))))

(declare-fun condMapEmpty!47252 () Bool)

(declare-fun mapDefault!47252 () ValueCell!14429)


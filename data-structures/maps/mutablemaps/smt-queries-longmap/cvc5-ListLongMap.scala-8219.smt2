; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100258 () Bool)

(assert start!100258)

(declare-fun b!1195139 () Bool)

(declare-fun res!795329 () Bool)

(declare-fun e!679200 () Bool)

(assert (=> b!1195139 (=> (not res!795329) (not e!679200))))

(declare-datatypes ((array!77342 0))(
  ( (array!77343 (arr!37314 (Array (_ BitVec 32) (_ BitVec 64))) (size!37851 (_ BitVec 32))) )
))
(declare-fun lt!542838 () array!77342)

(declare-datatypes ((List!26434 0))(
  ( (Nil!26431) (Cons!26430 (h!27639 (_ BitVec 64)) (t!39112 List!26434)) )
))
(declare-fun arrayNoDuplicates!0 (array!77342 (_ BitVec 32) List!26434) Bool)

(assert (=> b!1195139 (= res!795329 (arrayNoDuplicates!0 lt!542838 #b00000000000000000000000000000000 Nil!26431))))

(declare-fun b!1195141 () Bool)

(declare-fun res!795325 () Bool)

(declare-fun e!679199 () Bool)

(assert (=> b!1195141 (=> (not res!795325) (not e!679199))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195141 (= res!795325 (validKeyInArray!0 k!934))))

(declare-fun b!1195142 () Bool)

(declare-fun res!795330 () Bool)

(assert (=> b!1195142 (=> (not res!795330) (not e!679199))))

(declare-fun _keys!1208 () array!77342)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45513 0))(
  ( (V!45514 (val!15201 Int)) )
))
(declare-datatypes ((ValueCell!14435 0))(
  ( (ValueCellFull!14435 (v!17840 V!45513)) (EmptyCell!14435) )
))
(declare-datatypes ((array!77344 0))(
  ( (array!77345 (arr!37315 (Array (_ BitVec 32) ValueCell!14435)) (size!37852 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77344)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1195142 (= res!795330 (and (= (size!37852 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37851 _keys!1208) (size!37852 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195143 () Bool)

(declare-fun e!679201 () Bool)

(declare-fun tp_is_empty!30289 () Bool)

(assert (=> b!1195143 (= e!679201 tp_is_empty!30289)))

(declare-fun b!1195144 () Bool)

(declare-fun res!795331 () Bool)

(assert (=> b!1195144 (=> (not res!795331) (not e!679199))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195144 (= res!795331 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37851 _keys!1208))))))

(declare-fun b!1195145 () Bool)

(assert (=> b!1195145 (= e!679200 (not true))))

(declare-fun arrayContainsKey!0 (array!77342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195145 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39564 0))(
  ( (Unit!39565) )
))
(declare-fun lt!542837 () Unit!39564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77342 (_ BitVec 64) (_ BitVec 32)) Unit!39564)

(assert (=> b!1195145 (= lt!542837 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195146 () Bool)

(declare-fun e!679204 () Bool)

(declare-fun mapRes!47270 () Bool)

(assert (=> b!1195146 (= e!679204 (and e!679201 mapRes!47270))))

(declare-fun condMapEmpty!47270 () Bool)

(declare-fun mapDefault!47270 () ValueCell!14435)


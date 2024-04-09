; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100264 () Bool)

(assert start!100264)

(declare-fun b!1195256 () Bool)

(declare-fun e!679256 () Bool)

(declare-fun tp_is_empty!30295 () Bool)

(assert (=> b!1195256 (= e!679256 tp_is_empty!30295)))

(declare-fun b!1195257 () Bool)

(declare-fun res!795413 () Bool)

(declare-fun e!679254 () Bool)

(assert (=> b!1195257 (=> (not res!795413) (not e!679254))))

(declare-datatypes ((array!77354 0))(
  ( (array!77355 (arr!37320 (Array (_ BitVec 32) (_ BitVec 64))) (size!37857 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77354)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45521 0))(
  ( (V!45522 (val!15204 Int)) )
))
(declare-datatypes ((ValueCell!14438 0))(
  ( (ValueCellFull!14438 (v!17843 V!45521)) (EmptyCell!14438) )
))
(declare-datatypes ((array!77356 0))(
  ( (array!77357 (arr!37321 (Array (_ BitVec 32) ValueCell!14438)) (size!37858 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77356)

(assert (=> b!1195257 (= res!795413 (and (= (size!37858 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37857 _keys!1208) (size!37858 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195258 () Bool)

(declare-fun e!679258 () Bool)

(assert (=> b!1195258 (= e!679258 tp_is_empty!30295)))

(declare-fun mapIsEmpty!47279 () Bool)

(declare-fun mapRes!47279 () Bool)

(assert (=> mapIsEmpty!47279 mapRes!47279))

(declare-fun b!1195259 () Bool)

(declare-fun res!795417 () Bool)

(assert (=> b!1195259 (=> (not res!795417) (not e!679254))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195259 (= res!795417 (validKeyInArray!0 k!934))))

(declare-fun b!1195260 () Bool)

(declare-fun res!795412 () Bool)

(declare-fun e!679253 () Bool)

(assert (=> b!1195260 (=> (not res!795412) (not e!679253))))

(declare-fun lt!542856 () array!77354)

(declare-datatypes ((List!26437 0))(
  ( (Nil!26434) (Cons!26433 (h!27642 (_ BitVec 64)) (t!39115 List!26437)) )
))
(declare-fun arrayNoDuplicates!0 (array!77354 (_ BitVec 32) List!26437) Bool)

(assert (=> b!1195260 (= res!795412 (arrayNoDuplicates!0 lt!542856 #b00000000000000000000000000000000 Nil!26434))))

(declare-fun b!1195261 () Bool)

(declare-fun res!795421 () Bool)

(assert (=> b!1195261 (=> (not res!795421) (not e!679254))))

(assert (=> b!1195261 (= res!795421 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26434))))

(declare-fun b!1195262 () Bool)

(declare-fun res!795420 () Bool)

(assert (=> b!1195262 (=> (not res!795420) (not e!679254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195262 (= res!795420 (validMask!0 mask!1564))))

(declare-fun b!1195263 () Bool)

(assert (=> b!1195263 (= e!679253 (not true))))

(declare-fun arrayContainsKey!0 (array!77354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195263 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39570 0))(
  ( (Unit!39571) )
))
(declare-fun lt!542855 () Unit!39570)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77354 (_ BitVec 64) (_ BitVec 32)) Unit!39570)

(assert (=> b!1195263 (= lt!542855 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195264 () Bool)

(declare-fun res!795419 () Bool)

(assert (=> b!1195264 (=> (not res!795419) (not e!679254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77354 (_ BitVec 32)) Bool)

(assert (=> b!1195264 (= res!795419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195266 () Bool)

(declare-fun res!795418 () Bool)

(assert (=> b!1195266 (=> (not res!795418) (not e!679254))))

(assert (=> b!1195266 (= res!795418 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37857 _keys!1208))))))

(declare-fun mapNonEmpty!47279 () Bool)

(declare-fun tp!89890 () Bool)

(assert (=> mapNonEmpty!47279 (= mapRes!47279 (and tp!89890 e!679256))))

(declare-fun mapKey!47279 () (_ BitVec 32))

(declare-fun mapValue!47279 () ValueCell!14438)

(declare-fun mapRest!47279 () (Array (_ BitVec 32) ValueCell!14438))

(assert (=> mapNonEmpty!47279 (= (arr!37321 _values!996) (store mapRest!47279 mapKey!47279 mapValue!47279))))

(declare-fun b!1195267 () Bool)

(declare-fun res!795414 () Bool)

(assert (=> b!1195267 (=> (not res!795414) (not e!679254))))

(assert (=> b!1195267 (= res!795414 (= (select (arr!37320 _keys!1208) i!673) k!934))))

(declare-fun b!1195268 () Bool)

(assert (=> b!1195268 (= e!679254 e!679253)))

(declare-fun res!795416 () Bool)

(assert (=> b!1195268 (=> (not res!795416) (not e!679253))))

(assert (=> b!1195268 (= res!795416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542856 mask!1564))))

(assert (=> b!1195268 (= lt!542856 (array!77355 (store (arr!37320 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37857 _keys!1208)))))

(declare-fun res!795415 () Bool)

(assert (=> start!100264 (=> (not res!795415) (not e!679254))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100264 (= res!795415 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37857 _keys!1208))))))

(assert (=> start!100264 e!679254))

(declare-fun array_inv!28346 (array!77354) Bool)

(assert (=> start!100264 (array_inv!28346 _keys!1208)))

(assert (=> start!100264 true))

(declare-fun e!679257 () Bool)

(declare-fun array_inv!28347 (array!77356) Bool)

(assert (=> start!100264 (and (array_inv!28347 _values!996) e!679257)))

(declare-fun b!1195265 () Bool)

(assert (=> b!1195265 (= e!679257 (and e!679258 mapRes!47279))))

(declare-fun condMapEmpty!47279 () Bool)

(declare-fun mapDefault!47279 () ValueCell!14438)


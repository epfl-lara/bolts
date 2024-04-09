; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101278 () Bool)

(assert start!101278)

(declare-fun b_free!26165 () Bool)

(declare-fun b_next!26165 () Bool)

(assert (=> start!101278 (= b_free!26165 (not b_next!26165))))

(declare-fun tp!91517 () Bool)

(declare-fun b_and!43457 () Bool)

(assert (=> start!101278 (= tp!91517 b_and!43457)))

(declare-fun b!1215828 () Bool)

(declare-fun res!807394 () Bool)

(declare-fun e!690366 () Bool)

(assert (=> b!1215828 (=> (not res!807394) (not e!690366))))

(declare-datatypes ((array!78488 0))(
  ( (array!78489 (arr!37875 (Array (_ BitVec 32) (_ BitVec 64))) (size!38412 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78488)

(declare-datatypes ((List!26875 0))(
  ( (Nil!26872) (Cons!26871 (h!28080 (_ BitVec 64)) (t!40027 List!26875)) )
))
(declare-fun arrayNoDuplicates!0 (array!78488 (_ BitVec 32) List!26875) Bool)

(assert (=> b!1215828 (= res!807394 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26872))))

(declare-fun b!1215829 () Bool)

(declare-fun res!807398 () Bool)

(assert (=> b!1215829 (=> (not res!807398) (not e!690366))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46285 0))(
  ( (V!46286 (val!15491 Int)) )
))
(declare-datatypes ((ValueCell!14725 0))(
  ( (ValueCellFull!14725 (v!18145 V!46285)) (EmptyCell!14725) )
))
(declare-datatypes ((array!78490 0))(
  ( (array!78491 (arr!37876 (Array (_ BitVec 32) ValueCell!14725)) (size!38413 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78490)

(assert (=> b!1215829 (= res!807398 (and (= (size!38413 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38412 _keys!1208) (size!38413 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215830 () Bool)

(declare-fun res!807403 () Bool)

(declare-fun e!690362 () Bool)

(assert (=> b!1215830 (=> (not res!807403) (not e!690362))))

(declare-fun lt!552680 () array!78488)

(assert (=> b!1215830 (= res!807403 (arrayNoDuplicates!0 lt!552680 #b00000000000000000000000000000000 Nil!26872))))

(declare-fun b!1215831 () Bool)

(declare-fun e!690365 () Bool)

(assert (=> b!1215831 (= e!690362 (not e!690365))))

(declare-fun res!807401 () Bool)

(assert (=> b!1215831 (=> res!807401 e!690365)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215831 (= res!807401 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215831 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40250 0))(
  ( (Unit!40251) )
))
(declare-fun lt!552681 () Unit!40250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78488 (_ BitVec 64) (_ BitVec 32)) Unit!40250)

(assert (=> b!1215831 (= lt!552681 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215832 () Bool)

(declare-fun res!807395 () Bool)

(assert (=> b!1215832 (=> (not res!807395) (not e!690366))))

(assert (=> b!1215832 (= res!807395 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38412 _keys!1208))))))

(declare-fun b!1215833 () Bool)

(declare-fun e!690360 () Bool)

(declare-fun tp_is_empty!30869 () Bool)

(assert (=> b!1215833 (= e!690360 tp_is_empty!30869)))

(declare-fun b!1215834 () Bool)

(declare-fun e!690363 () Bool)

(declare-fun e!690361 () Bool)

(declare-fun mapRes!48178 () Bool)

(assert (=> b!1215834 (= e!690363 (and e!690361 mapRes!48178))))

(declare-fun condMapEmpty!48178 () Bool)

(declare-fun mapDefault!48178 () ValueCell!14725)


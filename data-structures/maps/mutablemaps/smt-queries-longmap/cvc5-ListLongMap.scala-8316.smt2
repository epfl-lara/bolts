; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101280 () Bool)

(assert start!101280)

(declare-fun b_free!26167 () Bool)

(declare-fun b_next!26167 () Bool)

(assert (=> start!101280 (= b_free!26167 (not b_next!26167))))

(declare-fun tp!91523 () Bool)

(declare-fun b_and!43461 () Bool)

(assert (=> start!101280 (= tp!91523 b_and!43461)))

(declare-fun b!1215872 () Bool)

(declare-fun res!807434 () Bool)

(declare-fun e!690386 () Bool)

(assert (=> b!1215872 (=> (not res!807434) (not e!690386))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215872 (= res!807434 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!48181 () Bool)

(declare-fun mapRes!48181 () Bool)

(declare-fun tp!91524 () Bool)

(declare-fun e!690384 () Bool)

(assert (=> mapNonEmpty!48181 (= mapRes!48181 (and tp!91524 e!690384))))

(declare-datatypes ((V!46289 0))(
  ( (V!46290 (val!15492 Int)) )
))
(declare-datatypes ((ValueCell!14726 0))(
  ( (ValueCellFull!14726 (v!18146 V!46289)) (EmptyCell!14726) )
))
(declare-fun mapRest!48181 () (Array (_ BitVec 32) ValueCell!14726))

(declare-fun mapValue!48181 () ValueCell!14726)

(declare-datatypes ((array!78492 0))(
  ( (array!78493 (arr!37877 (Array (_ BitVec 32) ValueCell!14726)) (size!38414 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78492)

(declare-fun mapKey!48181 () (_ BitVec 32))

(assert (=> mapNonEmpty!48181 (= (arr!37877 _values!996) (store mapRest!48181 mapKey!48181 mapValue!48181))))

(declare-fun b!1215873 () Bool)

(declare-fun res!807432 () Bool)

(assert (=> b!1215873 (=> (not res!807432) (not e!690386))))

(declare-datatypes ((array!78494 0))(
  ( (array!78495 (arr!37878 (Array (_ BitVec 32) (_ BitVec 64))) (size!38415 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78494)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1215873 (= res!807432 (and (= (size!38414 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38415 _keys!1208) (size!38414 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215874 () Bool)

(declare-fun e!690381 () Bool)

(declare-fun e!690385 () Bool)

(assert (=> b!1215874 (= e!690381 (not e!690385))))

(declare-fun res!807428 () Bool)

(assert (=> b!1215874 (=> res!807428 e!690385)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215874 (= res!807428 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215874 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40252 0))(
  ( (Unit!40253) )
))
(declare-fun lt!552694 () Unit!40252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78494 (_ BitVec 64) (_ BitVec 32)) Unit!40252)

(assert (=> b!1215874 (= lt!552694 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215875 () Bool)

(declare-fun res!807431 () Bool)

(assert (=> b!1215875 (=> (not res!807431) (not e!690386))))

(declare-datatypes ((List!26876 0))(
  ( (Nil!26873) (Cons!26872 (h!28081 (_ BitVec 64)) (t!40030 List!26876)) )
))
(declare-fun arrayNoDuplicates!0 (array!78494 (_ BitVec 32) List!26876) Bool)

(assert (=> b!1215875 (= res!807431 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26873))))

(declare-fun mapIsEmpty!48181 () Bool)

(assert (=> mapIsEmpty!48181 mapRes!48181))

(declare-fun b!1215876 () Bool)

(declare-fun res!807435 () Bool)

(assert (=> b!1215876 (=> (not res!807435) (not e!690381))))

(declare-fun lt!552695 () array!78494)

(assert (=> b!1215876 (= res!807435 (arrayNoDuplicates!0 lt!552695 #b00000000000000000000000000000000 Nil!26873))))

(declare-fun b!1215877 () Bool)

(assert (=> b!1215877 (= e!690385 true)))

(declare-fun zeroValue!944 () V!46289)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46289)

(declare-datatypes ((tuple2!20056 0))(
  ( (tuple2!20057 (_1!10038 (_ BitVec 64)) (_2!10038 V!46289)) )
))
(declare-datatypes ((List!26877 0))(
  ( (Nil!26874) (Cons!26873 (h!28082 tuple2!20056) (t!40031 List!26877)) )
))
(declare-datatypes ((ListLongMap!18037 0))(
  ( (ListLongMap!18038 (toList!9034 List!26877)) )
))
(declare-fun lt!552693 () ListLongMap!18037)

(declare-fun getCurrentListMapNoExtraKeys!5439 (array!78494 array!78492 (_ BitVec 32) (_ BitVec 32) V!46289 V!46289 (_ BitVec 32) Int) ListLongMap!18037)

(declare-fun dynLambda!3348 (Int (_ BitVec 64)) V!46289)

(assert (=> b!1215877 (= lt!552693 (getCurrentListMapNoExtraKeys!5439 lt!552695 (array!78493 (store (arr!37877 _values!996) i!673 (ValueCellFull!14726 (dynLambda!3348 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38414 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552692 () ListLongMap!18037)

(assert (=> b!1215877 (= lt!552692 (getCurrentListMapNoExtraKeys!5439 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215878 () Bool)

(declare-fun tp_is_empty!30871 () Bool)

(assert (=> b!1215878 (= e!690384 tp_is_empty!30871)))

(declare-fun b!1215879 () Bool)

(declare-fun res!807429 () Bool)

(assert (=> b!1215879 (=> (not res!807429) (not e!690386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78494 (_ BitVec 32)) Bool)

(assert (=> b!1215879 (= res!807429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215880 () Bool)

(declare-fun res!807426 () Bool)

(assert (=> b!1215880 (=> (not res!807426) (not e!690386))))

(assert (=> b!1215880 (= res!807426 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38415 _keys!1208))))))

(declare-fun b!1215881 () Bool)

(declare-fun res!807433 () Bool)

(assert (=> b!1215881 (=> (not res!807433) (not e!690386))))

(assert (=> b!1215881 (= res!807433 (= (select (arr!37878 _keys!1208) i!673) k!934))))

(declare-fun b!1215882 () Bool)

(declare-fun e!690382 () Bool)

(assert (=> b!1215882 (= e!690382 tp_is_empty!30871)))

(declare-fun b!1215883 () Bool)

(declare-fun e!690383 () Bool)

(assert (=> b!1215883 (= e!690383 (and e!690382 mapRes!48181))))

(declare-fun condMapEmpty!48181 () Bool)

(declare-fun mapDefault!48181 () ValueCell!14726)


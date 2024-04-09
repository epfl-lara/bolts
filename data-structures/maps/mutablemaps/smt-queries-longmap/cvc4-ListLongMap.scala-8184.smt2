; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100010 () Bool)

(assert start!100010)

(declare-fun b_free!25553 () Bool)

(declare-fun b_next!25553 () Bool)

(assert (=> start!100010 (= b_free!25553 (not b_next!25553))))

(declare-fun tp!89374 () Bool)

(declare-fun b_and!41987 () Bool)

(assert (=> start!100010 (= tp!89374 b_and!41987)))

(declare-fun b!1190605 () Bool)

(declare-fun res!791936 () Bool)

(declare-fun e!676881 () Bool)

(assert (=> b!1190605 (=> (not res!791936) (not e!676881))))

(declare-datatypes ((array!76932 0))(
  ( (array!76933 (arr!37112 (Array (_ BitVec 32) (_ BitVec 64))) (size!37649 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76932)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45237 0))(
  ( (V!45238 (val!15098 Int)) )
))
(declare-datatypes ((ValueCell!14332 0))(
  ( (ValueCellFull!14332 (v!17737 V!45237)) (EmptyCell!14332) )
))
(declare-datatypes ((array!76934 0))(
  ( (array!76935 (arr!37113 (Array (_ BitVec 32) ValueCell!14332)) (size!37650 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76934)

(assert (=> b!1190605 (= res!791936 (and (= (size!37650 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37649 _keys!1208) (size!37650 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46952 () Bool)

(declare-fun mapRes!46952 () Bool)

(assert (=> mapIsEmpty!46952 mapRes!46952))

(declare-fun mapNonEmpty!46952 () Bool)

(declare-fun tp!89373 () Bool)

(declare-fun e!676883 () Bool)

(assert (=> mapNonEmpty!46952 (= mapRes!46952 (and tp!89373 e!676883))))

(declare-fun mapKey!46952 () (_ BitVec 32))

(declare-fun mapValue!46952 () ValueCell!14332)

(declare-fun mapRest!46952 () (Array (_ BitVec 32) ValueCell!14332))

(assert (=> mapNonEmpty!46952 (= (arr!37113 _values!996) (store mapRest!46952 mapKey!46952 mapValue!46952))))

(declare-fun b!1190606 () Bool)

(declare-fun e!676880 () Bool)

(declare-fun e!676884 () Bool)

(assert (=> b!1190606 (= e!676880 e!676884)))

(declare-fun res!791933 () Bool)

(assert (=> b!1190606 (=> res!791933 e!676884)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190606 (= res!791933 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45237)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541484 () array!76932)

(declare-fun minValue!944 () V!45237)

(declare-datatypes ((tuple2!19538 0))(
  ( (tuple2!19539 (_1!9779 (_ BitVec 64)) (_2!9779 V!45237)) )
))
(declare-datatypes ((List!26298 0))(
  ( (Nil!26295) (Cons!26294 (h!27503 tuple2!19538) (t!38850 List!26298)) )
))
(declare-datatypes ((ListLongMap!17519 0))(
  ( (ListLongMap!17520 (toList!8775 List!26298)) )
))
(declare-fun lt!541483 () ListLongMap!17519)

(declare-fun lt!541486 () array!76934)

(declare-fun getCurrentListMapNoExtraKeys!5189 (array!76932 array!76934 (_ BitVec 32) (_ BitVec 32) V!45237 V!45237 (_ BitVec 32) Int) ListLongMap!17519)

(assert (=> b!1190606 (= lt!541483 (getCurrentListMapNoExtraKeys!5189 lt!541484 lt!541486 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3135 (Int (_ BitVec 64)) V!45237)

(assert (=> b!1190606 (= lt!541486 (array!76935 (store (arr!37113 _values!996) i!673 (ValueCellFull!14332 (dynLambda!3135 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37650 _values!996)))))

(declare-fun lt!541487 () ListLongMap!17519)

(assert (=> b!1190606 (= lt!541487 (getCurrentListMapNoExtraKeys!5189 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190607 () Bool)

(assert (=> b!1190607 (= e!676884 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1757 (ListLongMap!17519 (_ BitVec 64)) ListLongMap!17519)

(assert (=> b!1190607 (= (getCurrentListMapNoExtraKeys!5189 lt!541484 lt!541486 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1757 (getCurrentListMapNoExtraKeys!5189 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39442 0))(
  ( (Unit!39443) )
))
(declare-fun lt!541485 () Unit!39442)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!963 (array!76932 array!76934 (_ BitVec 32) (_ BitVec 32) V!45237 V!45237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39442)

(assert (=> b!1190607 (= lt!541485 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!963 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190608 () Bool)

(declare-fun e!676879 () Bool)

(assert (=> b!1190608 (= e!676881 e!676879)))

(declare-fun res!791939 () Bool)

(assert (=> b!1190608 (=> (not res!791939) (not e!676879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76932 (_ BitVec 32)) Bool)

(assert (=> b!1190608 (= res!791939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541484 mask!1564))))

(assert (=> b!1190608 (= lt!541484 (array!76933 (store (arr!37112 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37649 _keys!1208)))))

(declare-fun b!1190609 () Bool)

(declare-fun res!791944 () Bool)

(assert (=> b!1190609 (=> (not res!791944) (not e!676879))))

(declare-datatypes ((List!26299 0))(
  ( (Nil!26296) (Cons!26295 (h!27504 (_ BitVec 64)) (t!38851 List!26299)) )
))
(declare-fun arrayNoDuplicates!0 (array!76932 (_ BitVec 32) List!26299) Bool)

(assert (=> b!1190609 (= res!791944 (arrayNoDuplicates!0 lt!541484 #b00000000000000000000000000000000 Nil!26296))))

(declare-fun b!1190610 () Bool)

(declare-fun res!791937 () Bool)

(assert (=> b!1190610 (=> (not res!791937) (not e!676881))))

(assert (=> b!1190610 (= res!791937 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26296))))

(declare-fun b!1190611 () Bool)

(declare-fun res!791934 () Bool)

(assert (=> b!1190611 (=> (not res!791934) (not e!676881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190611 (= res!791934 (validKeyInArray!0 k!934))))

(declare-fun b!1190612 () Bool)

(declare-fun res!791940 () Bool)

(assert (=> b!1190612 (=> (not res!791940) (not e!676881))))

(assert (=> b!1190612 (= res!791940 (= (select (arr!37112 _keys!1208) i!673) k!934))))

(declare-fun b!1190613 () Bool)

(declare-fun tp_is_empty!30083 () Bool)

(assert (=> b!1190613 (= e!676883 tp_is_empty!30083)))

(declare-fun b!1190614 () Bool)

(declare-fun res!791941 () Bool)

(assert (=> b!1190614 (=> (not res!791941) (not e!676881))))

(assert (=> b!1190614 (= res!791941 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37649 _keys!1208))))))

(declare-fun b!1190615 () Bool)

(declare-fun e!676885 () Bool)

(declare-fun e!676882 () Bool)

(assert (=> b!1190615 (= e!676885 (and e!676882 mapRes!46952))))

(declare-fun condMapEmpty!46952 () Bool)

(declare-fun mapDefault!46952 () ValueCell!14332)


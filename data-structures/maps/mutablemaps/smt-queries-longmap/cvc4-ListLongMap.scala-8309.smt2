; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101242 () Bool)

(assert start!101242)

(declare-fun b_free!26129 () Bool)

(declare-fun b_next!26129 () Bool)

(assert (=> start!101242 (= b_free!26129 (not b_next!26129))))

(declare-fun tp!91409 () Bool)

(declare-fun b_and!43385 () Bool)

(assert (=> start!101242 (= tp!91409 b_and!43385)))

(declare-fun mapIsEmpty!48124 () Bool)

(declare-fun mapRes!48124 () Bool)

(assert (=> mapIsEmpty!48124 mapRes!48124))

(declare-fun b!1215036 () Bool)

(declare-fun e!689987 () Bool)

(assert (=> b!1215036 (= e!689987 true)))

(declare-datatypes ((V!46237 0))(
  ( (V!46238 (val!15473 Int)) )
))
(declare-fun zeroValue!944 () V!46237)

(declare-datatypes ((array!78420 0))(
  ( (array!78421 (arr!37841 (Array (_ BitVec 32) (_ BitVec 64))) (size!38378 (_ BitVec 32))) )
))
(declare-fun lt!552466 () array!78420)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14707 0))(
  ( (ValueCellFull!14707 (v!18127 V!46237)) (EmptyCell!14707) )
))
(declare-datatypes ((array!78422 0))(
  ( (array!78423 (arr!37842 (Array (_ BitVec 32) ValueCell!14707)) (size!38379 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78422)

(declare-datatypes ((tuple2!20028 0))(
  ( (tuple2!20029 (_1!10024 (_ BitVec 64)) (_2!10024 V!46237)) )
))
(declare-datatypes ((List!26846 0))(
  ( (Nil!26843) (Cons!26842 (h!28051 tuple2!20028) (t!39962 List!26846)) )
))
(declare-datatypes ((ListLongMap!18009 0))(
  ( (ListLongMap!18010 (toList!9020 List!26846)) )
))
(declare-fun lt!552464 () ListLongMap!18009)

(declare-fun minValue!944 () V!46237)

(declare-fun getCurrentListMapNoExtraKeys!5425 (array!78420 array!78422 (_ BitVec 32) (_ BitVec 32) V!46237 V!46237 (_ BitVec 32) Int) ListLongMap!18009)

(declare-fun dynLambda!3334 (Int (_ BitVec 64)) V!46237)

(assert (=> b!1215036 (= lt!552464 (getCurrentListMapNoExtraKeys!5425 lt!552466 (array!78423 (store (arr!37842 _values!996) i!673 (ValueCellFull!14707 (dynLambda!3334 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38379 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78420)

(declare-fun lt!552467 () ListLongMap!18009)

(assert (=> b!1215036 (= lt!552467 (getCurrentListMapNoExtraKeys!5425 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215037 () Bool)

(declare-fun res!806803 () Bool)

(declare-fun e!689983 () Bool)

(assert (=> b!1215037 (=> (not res!806803) (not e!689983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215037 (= res!806803 (validMask!0 mask!1564))))

(declare-fun b!1215038 () Bool)

(declare-fun res!806806 () Bool)

(assert (=> b!1215038 (=> (not res!806806) (not e!689983))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215038 (= res!806806 (= (select (arr!37841 _keys!1208) i!673) k!934))))

(declare-fun b!1215039 () Bool)

(declare-fun e!689988 () Bool)

(declare-fun tp_is_empty!30833 () Bool)

(assert (=> b!1215039 (= e!689988 tp_is_empty!30833)))

(declare-fun b!1215040 () Bool)

(declare-fun e!689984 () Bool)

(assert (=> b!1215040 (= e!689984 (not e!689987))))

(declare-fun res!806805 () Bool)

(assert (=> b!1215040 (=> res!806805 e!689987)))

(assert (=> b!1215040 (= res!806805 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215040 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40222 0))(
  ( (Unit!40223) )
))
(declare-fun lt!552465 () Unit!40222)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78420 (_ BitVec 64) (_ BitVec 32)) Unit!40222)

(assert (=> b!1215040 (= lt!552465 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215041 () Bool)

(assert (=> b!1215041 (= e!689983 e!689984)))

(declare-fun res!806804 () Bool)

(assert (=> b!1215041 (=> (not res!806804) (not e!689984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78420 (_ BitVec 32)) Bool)

(assert (=> b!1215041 (= res!806804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552466 mask!1564))))

(assert (=> b!1215041 (= lt!552466 (array!78421 (store (arr!37841 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38378 _keys!1208)))))

(declare-fun b!1215042 () Bool)

(declare-fun e!689986 () Bool)

(assert (=> b!1215042 (= e!689986 (and e!689988 mapRes!48124))))

(declare-fun condMapEmpty!48124 () Bool)

(declare-fun mapDefault!48124 () ValueCell!14707)


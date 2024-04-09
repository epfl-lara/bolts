; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100472 () Bool)

(assert start!100472)

(declare-fun b_free!25759 () Bool)

(declare-fun b_next!25759 () Bool)

(assert (=> start!100472 (= b_free!25759 (not b_next!25759))))

(declare-fun tp!90267 () Bool)

(declare-fun b_and!42419 () Bool)

(assert (=> start!100472 (= tp!90267 b_and!42419)))

(declare-fun b!1199036 () Bool)

(declare-fun e!681091 () Bool)

(assert (=> b!1199036 (= e!681091 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77684 0))(
  ( (array!77685 (arr!37483 (Array (_ BitVec 32) (_ BitVec 64))) (size!38020 (_ BitVec 32))) )
))
(declare-fun lt!543624 () array!77684)

(declare-datatypes ((V!45745 0))(
  ( (V!45746 (val!15288 Int)) )
))
(declare-datatypes ((tuple2!19710 0))(
  ( (tuple2!19711 (_1!9865 (_ BitVec 64)) (_2!9865 V!45745)) )
))
(declare-datatypes ((List!26539 0))(
  ( (Nil!26536) (Cons!26535 (h!27744 tuple2!19710) (t!39285 List!26539)) )
))
(declare-datatypes ((ListLongMap!17691 0))(
  ( (ListLongMap!17692 (toList!8861 List!26539)) )
))
(declare-fun lt!543625 () ListLongMap!17691)

(declare-datatypes ((ValueCell!14522 0))(
  ( (ValueCellFull!14522 (v!17927 V!45745)) (EmptyCell!14522) )
))
(declare-datatypes ((array!77686 0))(
  ( (array!77687 (arr!37484 (Array (_ BitVec 32) ValueCell!14522)) (size!38021 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77686)

(declare-fun minValue!944 () V!45745)

(declare-fun zeroValue!944 () V!45745)

(declare-fun getCurrentListMapNoExtraKeys!5274 (array!77684 array!77686 (_ BitVec 32) (_ BitVec 32) V!45745 V!45745 (_ BitVec 32) Int) ListLongMap!17691)

(declare-fun dynLambda!3205 (Int (_ BitVec 64)) V!45745)

(assert (=> b!1199036 (= lt!543625 (getCurrentListMapNoExtraKeys!5274 lt!543624 (array!77687 (store (arr!37484 _values!996) i!673 (ValueCellFull!14522 (dynLambda!3205 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38021 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!77684)

(declare-fun lt!543623 () ListLongMap!17691)

(assert (=> b!1199036 (= lt!543623 (getCurrentListMapNoExtraKeys!5274 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199037 () Bool)

(declare-fun res!798152 () Bool)

(declare-fun e!681087 () Bool)

(assert (=> b!1199037 (=> (not res!798152) (not e!681087))))

(assert (=> b!1199037 (= res!798152 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38020 _keys!1208))))))

(declare-fun b!1199038 () Bool)

(declare-fun res!798153 () Bool)

(declare-fun e!681086 () Bool)

(assert (=> b!1199038 (=> (not res!798153) (not e!681086))))

(declare-datatypes ((List!26540 0))(
  ( (Nil!26537) (Cons!26536 (h!27745 (_ BitVec 64)) (t!39286 List!26540)) )
))
(declare-fun arrayNoDuplicates!0 (array!77684 (_ BitVec 32) List!26540) Bool)

(assert (=> b!1199038 (= res!798153 (arrayNoDuplicates!0 lt!543624 #b00000000000000000000000000000000 Nil!26537))))

(declare-fun b!1199039 () Bool)

(declare-fun e!681089 () Bool)

(declare-fun tp_is_empty!30463 () Bool)

(assert (=> b!1199039 (= e!681089 tp_is_empty!30463)))

(declare-fun b!1199040 () Bool)

(declare-fun res!798151 () Bool)

(assert (=> b!1199040 (=> (not res!798151) (not e!681087))))

(assert (=> b!1199040 (= res!798151 (and (= (size!38021 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38020 _keys!1208) (size!38021 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199042 () Bool)

(declare-fun res!798148 () Bool)

(assert (=> b!1199042 (=> (not res!798148) (not e!681087))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1199042 (= res!798148 (= (select (arr!37483 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!47537 () Bool)

(declare-fun mapRes!47537 () Bool)

(declare-fun tp!90268 () Bool)

(assert (=> mapNonEmpty!47537 (= mapRes!47537 (and tp!90268 e!681089))))

(declare-fun mapValue!47537 () ValueCell!14522)

(declare-fun mapRest!47537 () (Array (_ BitVec 32) ValueCell!14522))

(declare-fun mapKey!47537 () (_ BitVec 32))

(assert (=> mapNonEmpty!47537 (= (arr!37484 _values!996) (store mapRest!47537 mapKey!47537 mapValue!47537))))

(declare-fun mapIsEmpty!47537 () Bool)

(assert (=> mapIsEmpty!47537 mapRes!47537))

(declare-fun b!1199043 () Bool)

(declare-fun res!798147 () Bool)

(assert (=> b!1199043 (=> (not res!798147) (not e!681087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199043 (= res!798147 (validKeyInArray!0 k!934))))

(declare-fun b!1199044 () Bool)

(declare-fun res!798150 () Bool)

(assert (=> b!1199044 (=> (not res!798150) (not e!681087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199044 (= res!798150 (validMask!0 mask!1564))))

(declare-fun b!1199045 () Bool)

(assert (=> b!1199045 (= e!681086 (not e!681091))))

(declare-fun res!798149 () Bool)

(assert (=> b!1199045 (=> res!798149 e!681091)))

(assert (=> b!1199045 (= res!798149 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199045 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39692 0))(
  ( (Unit!39693) )
))
(declare-fun lt!543622 () Unit!39692)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77684 (_ BitVec 64) (_ BitVec 32)) Unit!39692)

(assert (=> b!1199045 (= lt!543622 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1199046 () Bool)

(declare-fun e!681090 () Bool)

(declare-fun e!681085 () Bool)

(assert (=> b!1199046 (= e!681090 (and e!681085 mapRes!47537))))

(declare-fun condMapEmpty!47537 () Bool)

(declare-fun mapDefault!47537 () ValueCell!14522)


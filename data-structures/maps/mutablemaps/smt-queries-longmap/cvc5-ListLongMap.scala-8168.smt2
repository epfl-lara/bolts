; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99910 () Bool)

(assert start!99910)

(declare-fun b_free!25453 () Bool)

(declare-fun b_next!25453 () Bool)

(assert (=> start!99910 (= b_free!25453 (not b_next!25453))))

(declare-fun tp!89074 () Bool)

(declare-fun b_and!41787 () Bool)

(assert (=> start!99910 (= tp!89074 b_and!41787)))

(declare-fun b!1188255 () Bool)

(declare-fun res!790135 () Bool)

(declare-fun e!675683 () Bool)

(assert (=> b!1188255 (=> (not res!790135) (not e!675683))))

(declare-datatypes ((array!76734 0))(
  ( (array!76735 (arr!37013 (Array (_ BitVec 32) (_ BitVec 64))) (size!37550 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76734)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45105 0))(
  ( (V!45106 (val!15048 Int)) )
))
(declare-datatypes ((ValueCell!14282 0))(
  ( (ValueCellFull!14282 (v!17687 V!45105)) (EmptyCell!14282) )
))
(declare-datatypes ((array!76736 0))(
  ( (array!76737 (arr!37014 (Array (_ BitVec 32) ValueCell!14282)) (size!37551 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76736)

(assert (=> b!1188255 (= res!790135 (and (= (size!37551 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37550 _keys!1208) (size!37551 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188257 () Bool)

(declare-fun e!675682 () Bool)

(declare-fun tp_is_empty!29983 () Bool)

(assert (=> b!1188257 (= e!675682 tp_is_empty!29983)))

(declare-fun b!1188258 () Bool)

(declare-fun res!790138 () Bool)

(declare-fun e!675678 () Bool)

(assert (=> b!1188258 (=> (not res!790138) (not e!675678))))

(declare-fun lt!540583 () array!76734)

(declare-datatypes ((List!26211 0))(
  ( (Nil!26208) (Cons!26207 (h!27416 (_ BitVec 64)) (t!38663 List!26211)) )
))
(declare-fun arrayNoDuplicates!0 (array!76734 (_ BitVec 32) List!26211) Bool)

(assert (=> b!1188258 (= res!790138 (arrayNoDuplicates!0 lt!540583 #b00000000000000000000000000000000 Nil!26208))))

(declare-fun b!1188259 () Bool)

(declare-fun e!675685 () Bool)

(assert (=> b!1188259 (= e!675678 (not e!675685))))

(declare-fun res!790134 () Bool)

(assert (=> b!1188259 (=> res!790134 e!675685)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188259 (= res!790134 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188259 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39352 0))(
  ( (Unit!39353) )
))
(declare-fun lt!540587 () Unit!39352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76734 (_ BitVec 64) (_ BitVec 32)) Unit!39352)

(assert (=> b!1188259 (= lt!540587 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188260 () Bool)

(declare-fun res!790140 () Bool)

(assert (=> b!1188260 (=> (not res!790140) (not e!675683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76734 (_ BitVec 32)) Bool)

(assert (=> b!1188260 (= res!790140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188261 () Bool)

(declare-fun res!790142 () Bool)

(assert (=> b!1188261 (=> (not res!790142) (not e!675683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188261 (= res!790142 (validMask!0 mask!1564))))

(declare-fun b!1188262 () Bool)

(declare-fun res!790141 () Bool)

(assert (=> b!1188262 (=> (not res!790141) (not e!675683))))

(assert (=> b!1188262 (= res!790141 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26208))))

(declare-fun b!1188256 () Bool)

(declare-fun e!675680 () Bool)

(assert (=> b!1188256 (= e!675680 true)))

(declare-fun zeroValue!944 () V!45105)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!540584 () array!76736)

(declare-fun minValue!944 () V!45105)

(declare-datatypes ((tuple2!19450 0))(
  ( (tuple2!19451 (_1!9735 (_ BitVec 64)) (_2!9735 V!45105)) )
))
(declare-datatypes ((List!26212 0))(
  ( (Nil!26209) (Cons!26208 (h!27417 tuple2!19450) (t!38664 List!26212)) )
))
(declare-datatypes ((ListLongMap!17431 0))(
  ( (ListLongMap!17432 (toList!8731 List!26212)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5145 (array!76734 array!76736 (_ BitVec 32) (_ BitVec 32) V!45105 V!45105 (_ BitVec 32) Int) ListLongMap!17431)

(declare-fun -!1716 (ListLongMap!17431 (_ BitVec 64)) ListLongMap!17431)

(assert (=> b!1188256 (= (getCurrentListMapNoExtraKeys!5145 lt!540583 lt!540584 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1716 (getCurrentListMapNoExtraKeys!5145 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!540585 () Unit!39352)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!922 (array!76734 array!76736 (_ BitVec 32) (_ BitVec 32) V!45105 V!45105 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39352)

(assert (=> b!1188256 (= lt!540585 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!922 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!790133 () Bool)

(assert (=> start!99910 (=> (not res!790133) (not e!675683))))

(assert (=> start!99910 (= res!790133 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37550 _keys!1208))))))

(assert (=> start!99910 e!675683))

(assert (=> start!99910 tp_is_empty!29983))

(declare-fun array_inv!28126 (array!76734) Bool)

(assert (=> start!99910 (array_inv!28126 _keys!1208)))

(assert (=> start!99910 true))

(assert (=> start!99910 tp!89074))

(declare-fun e!675679 () Bool)

(declare-fun array_inv!28127 (array!76736) Bool)

(assert (=> start!99910 (and (array_inv!28127 _values!996) e!675679)))

(declare-fun mapNonEmpty!46802 () Bool)

(declare-fun mapRes!46802 () Bool)

(declare-fun tp!89073 () Bool)

(declare-fun e!675681 () Bool)

(assert (=> mapNonEmpty!46802 (= mapRes!46802 (and tp!89073 e!675681))))

(declare-fun mapKey!46802 () (_ BitVec 32))

(declare-fun mapRest!46802 () (Array (_ BitVec 32) ValueCell!14282))

(declare-fun mapValue!46802 () ValueCell!14282)

(assert (=> mapNonEmpty!46802 (= (arr!37014 _values!996) (store mapRest!46802 mapKey!46802 mapValue!46802))))

(declare-fun b!1188263 () Bool)

(assert (=> b!1188263 (= e!675681 tp_is_empty!29983)))

(declare-fun b!1188264 () Bool)

(assert (=> b!1188264 (= e!675685 e!675680)))

(declare-fun res!790137 () Bool)

(assert (=> b!1188264 (=> res!790137 e!675680)))

(assert (=> b!1188264 (= res!790137 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540588 () ListLongMap!17431)

(assert (=> b!1188264 (= lt!540588 (getCurrentListMapNoExtraKeys!5145 lt!540583 lt!540584 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3102 (Int (_ BitVec 64)) V!45105)

(assert (=> b!1188264 (= lt!540584 (array!76737 (store (arr!37014 _values!996) i!673 (ValueCellFull!14282 (dynLambda!3102 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37551 _values!996)))))

(declare-fun lt!540586 () ListLongMap!17431)

(assert (=> b!1188264 (= lt!540586 (getCurrentListMapNoExtraKeys!5145 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188265 () Bool)

(assert (=> b!1188265 (= e!675679 (and e!675682 mapRes!46802))))

(declare-fun condMapEmpty!46802 () Bool)

(declare-fun mapDefault!46802 () ValueCell!14282)


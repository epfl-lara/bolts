; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101308 () Bool)

(assert start!101308)

(declare-fun b_free!26195 () Bool)

(declare-fun b_next!26195 () Bool)

(assert (=> start!101308 (= b_free!26195 (not b_next!26195))))

(declare-fun tp!91608 () Bool)

(declare-fun b_and!43517 () Bool)

(assert (=> start!101308 (= tp!91608 b_and!43517)))

(declare-fun b!1216505 () Bool)

(declare-fun res!807916 () Bool)

(declare-fun e!690692 () Bool)

(assert (=> b!1216505 (=> (not res!807916) (not e!690692))))

(declare-datatypes ((array!78546 0))(
  ( (array!78547 (arr!37904 (Array (_ BitVec 32) (_ BitVec 64))) (size!38441 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78546)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46325 0))(
  ( (V!46326 (val!15506 Int)) )
))
(declare-datatypes ((ValueCell!14740 0))(
  ( (ValueCellFull!14740 (v!18160 V!46325)) (EmptyCell!14740) )
))
(declare-datatypes ((array!78548 0))(
  ( (array!78549 (arr!37905 (Array (_ BitVec 32) ValueCell!14740)) (size!38442 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78548)

(assert (=> b!1216505 (= res!807916 (and (= (size!38442 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38441 _keys!1208) (size!38442 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48223 () Bool)

(declare-fun mapRes!48223 () Bool)

(declare-fun tp!91607 () Bool)

(declare-fun e!690697 () Bool)

(assert (=> mapNonEmpty!48223 (= mapRes!48223 (and tp!91607 e!690697))))

(declare-fun mapKey!48223 () (_ BitVec 32))

(declare-fun mapRest!48223 () (Array (_ BitVec 32) ValueCell!14740))

(declare-fun mapValue!48223 () ValueCell!14740)

(assert (=> mapNonEmpty!48223 (= (arr!37905 _values!996) (store mapRest!48223 mapKey!48223 mapValue!48223))))

(declare-fun b!1216506 () Bool)

(declare-fun e!690693 () Bool)

(assert (=> b!1216506 (= e!690693 true)))

(declare-fun zeroValue!944 () V!46325)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!552894 () array!78546)

(declare-fun minValue!944 () V!46325)

(declare-fun lt!552896 () array!78548)

(declare-datatypes ((tuple2!20072 0))(
  ( (tuple2!20073 (_1!10046 (_ BitVec 64)) (_2!10046 V!46325)) )
))
(declare-datatypes ((List!26894 0))(
  ( (Nil!26891) (Cons!26890 (h!28099 tuple2!20072) (t!40076 List!26894)) )
))
(declare-datatypes ((ListLongMap!18053 0))(
  ( (ListLongMap!18054 (toList!9042 List!26894)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5447 (array!78546 array!78548 (_ BitVec 32) (_ BitVec 32) V!46325 V!46325 (_ BitVec 32) Int) ListLongMap!18053)

(declare-fun -!1905 (ListLongMap!18053 (_ BitVec 64)) ListLongMap!18053)

(assert (=> b!1216506 (= (getCurrentListMapNoExtraKeys!5447 lt!552894 lt!552896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1905 (getCurrentListMapNoExtraKeys!5447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!40268 0))(
  ( (Unit!40269) )
))
(declare-fun lt!552898 () Unit!40268)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1107 (array!78546 array!78548 (_ BitVec 32) (_ BitVec 32) V!46325 V!46325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40268)

(assert (=> b!1216506 (= lt!552898 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1107 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216507 () Bool)

(declare-fun e!690699 () Bool)

(assert (=> b!1216507 (= e!690692 e!690699)))

(declare-fun res!807906 () Bool)

(assert (=> b!1216507 (=> (not res!807906) (not e!690699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78546 (_ BitVec 32)) Bool)

(assert (=> b!1216507 (= res!807906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552894 mask!1564))))

(assert (=> b!1216507 (= lt!552894 (array!78547 (store (arr!37904 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38441 _keys!1208)))))

(declare-fun res!807914 () Bool)

(assert (=> start!101308 (=> (not res!807914) (not e!690692))))

(assert (=> start!101308 (= res!807914 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38441 _keys!1208))))))

(assert (=> start!101308 e!690692))

(declare-fun tp_is_empty!30899 () Bool)

(assert (=> start!101308 tp_is_empty!30899))

(declare-fun array_inv!28760 (array!78546) Bool)

(assert (=> start!101308 (array_inv!28760 _keys!1208)))

(assert (=> start!101308 true))

(assert (=> start!101308 tp!91608))

(declare-fun e!690694 () Bool)

(declare-fun array_inv!28761 (array!78548) Bool)

(assert (=> start!101308 (and (array_inv!28761 _values!996) e!690694)))

(declare-fun b!1216508 () Bool)

(declare-fun e!690696 () Bool)

(assert (=> b!1216508 (= e!690696 e!690693)))

(declare-fun res!807913 () Bool)

(assert (=> b!1216508 (=> res!807913 e!690693)))

(assert (=> b!1216508 (= res!807913 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!552895 () ListLongMap!18053)

(assert (=> b!1216508 (= lt!552895 (getCurrentListMapNoExtraKeys!5447 lt!552894 lt!552896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3355 (Int (_ BitVec 64)) V!46325)

(assert (=> b!1216508 (= lt!552896 (array!78549 (store (arr!37905 _values!996) i!673 (ValueCellFull!14740 (dynLambda!3355 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38442 _values!996)))))

(declare-fun lt!552897 () ListLongMap!18053)

(assert (=> b!1216508 (= lt!552897 (getCurrentListMapNoExtraKeys!5447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216509 () Bool)

(declare-fun e!690698 () Bool)

(assert (=> b!1216509 (= e!690698 tp_is_empty!30899)))

(declare-fun b!1216510 () Bool)

(assert (=> b!1216510 (= e!690699 (not e!690696))))

(declare-fun res!807907 () Bool)

(assert (=> b!1216510 (=> res!807907 e!690696)))

(assert (=> b!1216510 (= res!807907 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216510 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!552899 () Unit!40268)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78546 (_ BitVec 64) (_ BitVec 32)) Unit!40268)

(assert (=> b!1216510 (= lt!552899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1216511 () Bool)

(declare-fun res!807908 () Bool)

(assert (=> b!1216511 (=> (not res!807908) (not e!690692))))

(declare-datatypes ((List!26895 0))(
  ( (Nil!26892) (Cons!26891 (h!28100 (_ BitVec 64)) (t!40077 List!26895)) )
))
(declare-fun arrayNoDuplicates!0 (array!78546 (_ BitVec 32) List!26895) Bool)

(assert (=> b!1216511 (= res!807908 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26892))))

(declare-fun b!1216512 () Bool)

(declare-fun res!807910 () Bool)

(assert (=> b!1216512 (=> (not res!807910) (not e!690692))))

(assert (=> b!1216512 (= res!807910 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38441 _keys!1208))))))

(declare-fun b!1216513 () Bool)

(declare-fun res!807911 () Bool)

(assert (=> b!1216513 (=> (not res!807911) (not e!690692))))

(assert (=> b!1216513 (= res!807911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216514 () Bool)

(declare-fun res!807905 () Bool)

(assert (=> b!1216514 (=> (not res!807905) (not e!690692))))

(assert (=> b!1216514 (= res!807905 (= (select (arr!37904 _keys!1208) i!673) k!934))))

(declare-fun b!1216515 () Bool)

(assert (=> b!1216515 (= e!690697 tp_is_empty!30899)))

(declare-fun b!1216516 () Bool)

(declare-fun res!807912 () Bool)

(assert (=> b!1216516 (=> (not res!807912) (not e!690692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216516 (= res!807912 (validKeyInArray!0 k!934))))

(declare-fun b!1216517 () Bool)

(declare-fun res!807915 () Bool)

(assert (=> b!1216517 (=> (not res!807915) (not e!690692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216517 (= res!807915 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!48223 () Bool)

(assert (=> mapIsEmpty!48223 mapRes!48223))

(declare-fun b!1216518 () Bool)

(declare-fun res!807909 () Bool)

(assert (=> b!1216518 (=> (not res!807909) (not e!690699))))

(assert (=> b!1216518 (= res!807909 (arrayNoDuplicates!0 lt!552894 #b00000000000000000000000000000000 Nil!26892))))

(declare-fun b!1216519 () Bool)

(assert (=> b!1216519 (= e!690694 (and e!690698 mapRes!48223))))

(declare-fun condMapEmpty!48223 () Bool)

(declare-fun mapDefault!48223 () ValueCell!14740)


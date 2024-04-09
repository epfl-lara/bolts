; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100556 () Bool)

(assert start!100556)

(declare-fun b_free!25843 () Bool)

(declare-fun b_next!25843 () Bool)

(assert (=> start!100556 (= b_free!25843 (not b_next!25843))))

(declare-fun tp!90520 () Bool)

(declare-fun b_and!42587 () Bool)

(assert (=> start!100556 (= tp!90520 b_and!42587)))

(declare-fun mapIsEmpty!47663 () Bool)

(declare-fun mapRes!47663 () Bool)

(assert (=> mapIsEmpty!47663 mapRes!47663))

(declare-fun b!1201045 () Bool)

(declare-fun e!682088 () Bool)

(declare-fun tp_is_empty!30547 () Bool)

(assert (=> b!1201045 (= e!682088 tp_is_empty!30547)))

(declare-datatypes ((V!45857 0))(
  ( (V!45858 (val!15330 Int)) )
))
(declare-fun zeroValue!944 () V!45857)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!57354 () Bool)

(declare-fun minValue!944 () V!45857)

(declare-datatypes ((array!77848 0))(
  ( (array!77849 (arr!37565 (Array (_ BitVec 32) (_ BitVec 64))) (size!38102 (_ BitVec 32))) )
))
(declare-fun lt!544246 () array!77848)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19772 0))(
  ( (tuple2!19773 (_1!9896 (_ BitVec 64)) (_2!9896 V!45857)) )
))
(declare-datatypes ((List!26604 0))(
  ( (Nil!26601) (Cons!26600 (h!27809 tuple2!19772) (t!39434 List!26604)) )
))
(declare-datatypes ((ListLongMap!17753 0))(
  ( (ListLongMap!17754 (toList!8892 List!26604)) )
))
(declare-fun call!57357 () ListLongMap!17753)

(declare-datatypes ((ValueCell!14564 0))(
  ( (ValueCellFull!14564 (v!17969 V!45857)) (EmptyCell!14564) )
))
(declare-datatypes ((array!77850 0))(
  ( (array!77851 (arr!37566 (Array (_ BitVec 32) ValueCell!14564)) (size!38103 (_ BitVec 32))) )
))
(declare-fun lt!544245 () array!77850)

(declare-fun getCurrentListMapNoExtraKeys!5304 (array!77848 array!77850 (_ BitVec 32) (_ BitVec 32) V!45857 V!45857 (_ BitVec 32) Int) ListLongMap!17753)

(assert (=> bm!57354 (= call!57357 (getCurrentListMapNoExtraKeys!5304 lt!544246 lt!544245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201046 () Bool)

(declare-fun res!799626 () Bool)

(declare-fun e!682086 () Bool)

(assert (=> b!1201046 (=> (not res!799626) (not e!682086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201046 (= res!799626 (validMask!0 mask!1564))))

(declare-fun b!1201047 () Bool)

(declare-fun res!799618 () Bool)

(assert (=> b!1201047 (=> (not res!799618) (not e!682086))))

(declare-fun _keys!1208 () array!77848)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1201047 (= res!799618 (= (select (arr!37565 _keys!1208) i!673) k!934))))

(declare-fun b!1201048 () Bool)

(declare-fun e!682085 () Bool)

(assert (=> b!1201048 (= e!682085 true)))

(declare-fun _values!996 () array!77850)

(declare-fun lt!544241 () Bool)

(declare-fun contains!6893 (ListLongMap!17753 (_ BitVec 64)) Bool)

(assert (=> b!1201048 (= lt!544241 (contains!6893 (getCurrentListMapNoExtraKeys!5304 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1201050 () Bool)

(declare-fun e!682084 () Bool)

(declare-fun call!57358 () ListLongMap!17753)

(assert (=> b!1201050 (= e!682084 (= call!57357 call!57358))))

(declare-fun b!1201051 () Bool)

(declare-fun res!799620 () Bool)

(assert (=> b!1201051 (=> (not res!799620) (not e!682086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201051 (= res!799620 (validKeyInArray!0 k!934))))

(declare-fun b!1201052 () Bool)

(declare-fun res!799621 () Bool)

(assert (=> b!1201052 (=> (not res!799621) (not e!682086))))

(assert (=> b!1201052 (= res!799621 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38102 _keys!1208))))))

(declare-fun b!1201053 () Bool)

(declare-fun e!682082 () Bool)

(assert (=> b!1201053 (= e!682086 e!682082)))

(declare-fun res!799624 () Bool)

(assert (=> b!1201053 (=> (not res!799624) (not e!682082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77848 (_ BitVec 32)) Bool)

(assert (=> b!1201053 (= res!799624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544246 mask!1564))))

(assert (=> b!1201053 (= lt!544246 (array!77849 (store (arr!37565 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38102 _keys!1208)))))

(declare-fun mapNonEmpty!47663 () Bool)

(declare-fun tp!90519 () Bool)

(assert (=> mapNonEmpty!47663 (= mapRes!47663 (and tp!90519 e!682088))))

(declare-fun mapKey!47663 () (_ BitVec 32))

(declare-fun mapRest!47663 () (Array (_ BitVec 32) ValueCell!14564))

(declare-fun mapValue!47663 () ValueCell!14564)

(assert (=> mapNonEmpty!47663 (= (arr!37566 _values!996) (store mapRest!47663 mapKey!47663 mapValue!47663))))

(declare-fun b!1201054 () Bool)

(declare-fun e!682081 () Bool)

(declare-fun e!682087 () Bool)

(assert (=> b!1201054 (= e!682081 e!682087)))

(declare-fun res!799627 () Bool)

(assert (=> b!1201054 (=> res!799627 e!682087)))

(assert (=> b!1201054 (= res!799627 (not (= from!1455 i!673)))))

(declare-fun lt!544244 () ListLongMap!17753)

(assert (=> b!1201054 (= lt!544244 (getCurrentListMapNoExtraKeys!5304 lt!544246 lt!544245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3232 (Int (_ BitVec 64)) V!45857)

(assert (=> b!1201054 (= lt!544245 (array!77851 (store (arr!37566 _values!996) i!673 (ValueCellFull!14564 (dynLambda!3232 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38103 _values!996)))))

(declare-fun lt!544243 () ListLongMap!17753)

(assert (=> b!1201054 (= lt!544243 (getCurrentListMapNoExtraKeys!5304 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1201055 () Bool)

(declare-fun res!799628 () Bool)

(assert (=> b!1201055 (=> (not res!799628) (not e!682086))))

(declare-datatypes ((List!26605 0))(
  ( (Nil!26602) (Cons!26601 (h!27810 (_ BitVec 64)) (t!39435 List!26605)) )
))
(declare-fun arrayNoDuplicates!0 (array!77848 (_ BitVec 32) List!26605) Bool)

(assert (=> b!1201055 (= res!799628 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26602))))

(declare-fun b!1201056 () Bool)

(declare-fun res!799617 () Bool)

(assert (=> b!1201056 (=> (not res!799617) (not e!682082))))

(assert (=> b!1201056 (= res!799617 (arrayNoDuplicates!0 lt!544246 #b00000000000000000000000000000000 Nil!26602))))

(declare-fun res!799625 () Bool)

(assert (=> start!100556 (=> (not res!799625) (not e!682086))))

(assert (=> start!100556 (= res!799625 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38102 _keys!1208))))))

(assert (=> start!100556 e!682086))

(assert (=> start!100556 tp_is_empty!30547))

(declare-fun array_inv!28520 (array!77848) Bool)

(assert (=> start!100556 (array_inv!28520 _keys!1208)))

(assert (=> start!100556 true))

(assert (=> start!100556 tp!90520))

(declare-fun e!682083 () Bool)

(declare-fun array_inv!28521 (array!77850) Bool)

(assert (=> start!100556 (and (array_inv!28521 _values!996) e!682083)))

(declare-fun b!1201049 () Bool)

(declare-fun res!799622 () Bool)

(assert (=> b!1201049 (=> (not res!799622) (not e!682086))))

(assert (=> b!1201049 (= res!799622 (and (= (size!38103 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38102 _keys!1208) (size!38103 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201057 () Bool)

(declare-fun res!799619 () Bool)

(assert (=> b!1201057 (=> (not res!799619) (not e!682086))))

(assert (=> b!1201057 (= res!799619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1201058 () Bool)

(assert (=> b!1201058 (= e!682087 e!682085)))

(declare-fun res!799623 () Bool)

(assert (=> b!1201058 (=> res!799623 e!682085)))

(assert (=> b!1201058 (= res!799623 (not (= (select (arr!37565 _keys!1208) from!1455) k!934)))))

(assert (=> b!1201058 e!682084))

(declare-fun c!117424 () Bool)

(assert (=> b!1201058 (= c!117424 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39744 0))(
  ( (Unit!39745) )
))
(declare-fun lt!544240 () Unit!39744)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1019 (array!77848 array!77850 (_ BitVec 32) (_ BitVec 32) V!45857 V!45857 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39744)

(assert (=> b!1201058 (= lt!544240 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1019 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57355 () Bool)

(assert (=> bm!57355 (= call!57358 (getCurrentListMapNoExtraKeys!5304 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201059 () Bool)

(assert (=> b!1201059 (= e!682082 (not e!682081))))

(declare-fun res!799629 () Bool)

(assert (=> b!1201059 (=> res!799629 e!682081)))

(assert (=> b!1201059 (= res!799629 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201059 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!544242 () Unit!39744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77848 (_ BitVec 64) (_ BitVec 32)) Unit!39744)

(assert (=> b!1201059 (= lt!544242 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1201060 () Bool)

(declare-fun e!682089 () Bool)

(assert (=> b!1201060 (= e!682083 (and e!682089 mapRes!47663))))

(declare-fun condMapEmpty!47663 () Bool)

(declare-fun mapDefault!47663 () ValueCell!14564)


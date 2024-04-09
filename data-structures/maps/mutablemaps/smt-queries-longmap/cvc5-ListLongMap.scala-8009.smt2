; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98930 () Bool)

(assert start!98930)

(declare-fun b_free!24499 () Bool)

(declare-fun b_next!24499 () Bool)

(assert (=> start!98930 (= b_free!24499 (not b_next!24499))))

(declare-fun tp!86209 () Bool)

(declare-fun b_and!39861 () Bool)

(assert (=> start!98930 (= tp!86209 b_and!39861)))

(declare-fun b!1157902 () Bool)

(declare-datatypes ((Unit!38040 0))(
  ( (Unit!38041) )
))
(declare-fun e!658513 () Unit!38040)

(declare-fun Unit!38042 () Unit!38040)

(assert (=> b!1157902 (= e!658513 Unit!38042)))

(declare-fun b!1157903 () Bool)

(declare-datatypes ((V!43833 0))(
  ( (V!43834 (val!14571 Int)) )
))
(declare-datatypes ((tuple2!18612 0))(
  ( (tuple2!18613 (_1!9316 (_ BitVec 64)) (_2!9316 V!43833)) )
))
(declare-datatypes ((List!25391 0))(
  ( (Nil!25388) (Cons!25387 (h!26596 tuple2!18612) (t!36889 List!25391)) )
))
(declare-datatypes ((ListLongMap!16593 0))(
  ( (ListLongMap!16594 (toList!8312 List!25391)) )
))
(declare-fun call!55536 () ListLongMap!16593)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6796 (ListLongMap!16593 (_ BitVec 64)) Bool)

(assert (=> b!1157903 (contains!6796 call!55536 k!934)))

(declare-fun lt!520153 () ListLongMap!16593)

(declare-fun lt!520159 () Unit!38040)

(declare-fun minValue!944 () V!43833)

(declare-fun addStillContains!936 (ListLongMap!16593 (_ BitVec 64) V!43833 (_ BitVec 64)) Unit!38040)

(assert (=> b!1157903 (= lt!520159 (addStillContains!936 lt!520153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55534 () Bool)

(assert (=> b!1157903 call!55534))

(declare-fun lt!520155 () ListLongMap!16593)

(declare-fun zeroValue!944 () V!43833)

(declare-fun +!3640 (ListLongMap!16593 tuple2!18612) ListLongMap!16593)

(assert (=> b!1157903 (= lt!520153 (+!3640 lt!520155 (tuple2!18613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520165 () Unit!38040)

(declare-fun call!55532 () Unit!38040)

(assert (=> b!1157903 (= lt!520165 call!55532)))

(declare-fun e!658518 () Unit!38040)

(assert (=> b!1157903 (= e!658518 lt!520159)))

(declare-fun b!1157904 () Bool)

(declare-fun res!768944 () Bool)

(declare-fun e!658526 () Bool)

(assert (=> b!1157904 (=> (not res!768944) (not e!658526))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74848 0))(
  ( (array!74849 (arr!36071 (Array (_ BitVec 32) (_ BitVec 64))) (size!36608 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74848)

(assert (=> b!1157904 (= res!768944 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36608 _keys!1208))))))

(declare-fun b!1157905 () Bool)

(declare-fun e!658512 () Unit!38040)

(declare-fun lt!520151 () Unit!38040)

(assert (=> b!1157905 (= e!658512 lt!520151)))

(declare-fun call!55530 () Unit!38040)

(assert (=> b!1157905 (= lt!520151 call!55530)))

(declare-fun call!55533 () Bool)

(assert (=> b!1157905 call!55533))

(declare-fun b!1157906 () Bool)

(assert (=> b!1157906 (= e!658512 e!658513)))

(declare-fun c!115300 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!520148 () Bool)

(assert (=> b!1157906 (= c!115300 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520148))))

(declare-fun call!55529 () ListLongMap!16593)

(declare-fun bm!55527 () Bool)

(declare-fun c!115297 () Bool)

(assert (=> bm!55527 (= call!55534 (contains!6796 (ite c!115297 lt!520153 call!55529) k!934))))

(declare-fun b!1157907 () Bool)

(declare-fun e!658525 () Unit!38040)

(declare-fun Unit!38043 () Unit!38040)

(assert (=> b!1157907 (= e!658525 Unit!38043)))

(assert (=> b!1157907 (= lt!520148 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1157907 (= c!115297 (and (not lt!520148) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520149 () Unit!38040)

(assert (=> b!1157907 (= lt!520149 e!658518)))

(declare-fun lt!520156 () Unit!38040)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13805 0))(
  ( (ValueCellFull!13805 (v!17209 V!43833)) (EmptyCell!13805) )
))
(declare-datatypes ((array!74850 0))(
  ( (array!74851 (arr!36072 (Array (_ BitVec 32) ValueCell!13805)) (size!36609 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74850)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!512 (array!74848 array!74850 (_ BitVec 32) (_ BitVec 32) V!43833 V!43833 (_ BitVec 64) (_ BitVec 32) Int) Unit!38040)

(assert (=> b!1157907 (= lt!520156 (lemmaListMapContainsThenArrayContainsFrom!512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115301 () Bool)

(assert (=> b!1157907 (= c!115301 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768940 () Bool)

(declare-fun e!658514 () Bool)

(assert (=> b!1157907 (= res!768940 e!658514)))

(declare-fun e!658527 () Bool)

(assert (=> b!1157907 (=> (not res!768940) (not e!658527))))

(assert (=> b!1157907 e!658527))

(declare-fun lt!520161 () Unit!38040)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74848 (_ BitVec 32) (_ BitVec 32)) Unit!38040)

(assert (=> b!1157907 (= lt!520161 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25392 0))(
  ( (Nil!25389) (Cons!25388 (h!26597 (_ BitVec 64)) (t!36890 List!25392)) )
))
(declare-fun arrayNoDuplicates!0 (array!74848 (_ BitVec 32) List!25392) Bool)

(assert (=> b!1157907 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25389)))

(declare-fun lt!520164 () Unit!38040)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74848 (_ BitVec 64) (_ BitVec 32) List!25392) Unit!38040)

(assert (=> b!1157907 (= lt!520164 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25389))))

(assert (=> b!1157907 false))

(declare-fun call!55535 () ListLongMap!16593)

(declare-fun e!658524 () Bool)

(declare-fun b!1157908 () Bool)

(declare-fun call!55531 () ListLongMap!16593)

(declare-fun -!1386 (ListLongMap!16593 (_ BitVec 64)) ListLongMap!16593)

(assert (=> b!1157908 (= e!658524 (= call!55531 (-!1386 call!55535 k!934)))))

(declare-fun bm!55528 () Bool)

(assert (=> bm!55528 (= call!55529 call!55536)))

(declare-fun b!1157909 () Bool)

(declare-fun e!658517 () Bool)

(declare-fun tp_is_empty!29029 () Bool)

(assert (=> b!1157909 (= e!658517 tp_is_empty!29029)))

(declare-fun b!1157910 () Bool)

(declare-fun res!768947 () Bool)

(assert (=> b!1157910 (=> (not res!768947) (not e!658526))))

(assert (=> b!1157910 (= res!768947 (and (= (size!36609 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36608 _keys!1208) (size!36609 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55529 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4749 (array!74848 array!74850 (_ BitVec 32) (_ BitVec 32) V!43833 V!43833 (_ BitVec 32) Int) ListLongMap!16593)

(assert (=> bm!55529 (= call!55535 (getCurrentListMapNoExtraKeys!4749 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55530 () Bool)

(declare-fun c!115299 () Bool)

(assert (=> bm!55530 (= call!55536 (+!3640 (ite c!115297 lt!520153 lt!520155) (ite c!115297 (tuple2!18613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115299 (tuple2!18613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1157911 () Bool)

(assert (=> b!1157911 (= e!658514 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520148) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!658511 () Bool)

(declare-fun lt!520147 () array!74848)

(declare-fun lt!520167 () array!74850)

(declare-fun b!1157912 () Bool)

(declare-fun lt!520166 () ListLongMap!16593)

(assert (=> b!1157912 (= e!658511 (= lt!520166 (getCurrentListMapNoExtraKeys!4749 lt!520147 lt!520167 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157913 () Bool)

(declare-fun e!658523 () Bool)

(declare-fun mapRes!45368 () Bool)

(assert (=> b!1157913 (= e!658523 (and e!658517 mapRes!45368))))

(declare-fun condMapEmpty!45368 () Bool)

(declare-fun mapDefault!45368 () ValueCell!13805)

